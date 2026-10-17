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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A196900: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196900, there is no canonical definition to state claims against.
-/

/-! ## A196900.P15770616623013196199

`A196904(A374004(n+1))`
-/

namespace A196900.P15770616623013196199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374004 (n + 1)).toNat

end

end A196900.P15770616623013196199

/-! ## A196900.P1074584815438251854

`A196904(A141214(n)+7)`
-/

namespace A196900.P1074584815438251854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A141214 n + 7).toNat

end

end A196900.P1074584815438251854

/-! ## A196900.P9011913843483003918

`A196904(A052905(n)+9)`
-/

namespace A196900.P9011913843483003918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A052905 n + 9).toNat

end

end A196900.P9011913843483003918

/-! ## A196900.P3689073394044698006

`A196904(A055999(n)+10)`
-/

namespace A196900.P3689073394044698006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A055999 n + 10).toNat

end

end A196900.P3689073394044698006

/-! ## A196900.P351961085047186419

`A196904(A167614(n+2)+1)`
-/

namespace A196900.P351961085047186419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A167614 (n + 2) + 1).toNat

end

end A196900.P351961085047186419

/-!
# A196901: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196901, there is no canonical definition to state claims against.
-/

/-! ## A196901.P10989957911876798519

`A196904(A374005(n+1))`
-/

namespace A196901.P10989957911876798519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374005 (n + 1)).toNat

end

end A196901.P10989957911876798519

/-! ## A196901.P6633571873860806120

`A196904(A167499(n+3))`
-/

namespace A196901.P6633571873860806120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A167499 (n + 3)).toNat

end

end A196901.P6633571873860806120

/-! ## A196901.P5442781970266874454

`A196904(A056000(n)+15)`
-/

namespace A196901.P5442781970266874454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A056000 n + 15).toNat

end

end A196901.P5442781970266874454

/-! ## A196901.P15372354868894830028

`A196904(eq[7, A066657(n)])`
-/

namespace A196901.P15372354868894830028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196901.P15372354868894830028

/-! ## A196901.P12585620552274016328

`A196904(A000217(n+4)+5)`
-/

namespace A196901.P12585620552274016328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A000217 (n + 4) + 5).toNat

end

end A196901.P12585620552274016328

/-!
# A196902: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196902, there is no canonical definition to state claims against.
-/

/-! ## A196902.P18187557273093988098

`A196904(A374007(n+1))`
-/

namespace A196902.P18187557273093988098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374007 (n + 1)).toNat

end

end A196902.P18187557273093988098

/-! ## A196902.P16315696553443240694

`A196904(eq[6, A130270(n+1)])`
-/

namespace A196902.P16315696553443240694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196902.P16315696553443240694

/-! ## A196902.P18043423219785139236

`A196904(Δ[A023545(n+1)]+10)`
-/

namespace A196902.P18043423219785139236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (f1 (n + 1) - f1 n + 10).toNat

end

end A196902.P18043423219785139236

/-! ## A196902.P17016006852525614025

`A196904(A056000(n+2)+5)`
-/

namespace A196902.P17016006852525614025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A056000 (n + 2) + 5).toNat

end

end A196902.P17016006852525614025

/-! ## A196902.P8864596724749290787

`A196904(eq[6, A200370(n+1)])`
-/

namespace A196902.P8864596724749290787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196902.P8864596724749290787

/-!
# A196903: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196903, there is no canonical definition to state claims against.
-/

/-! ## A196903.P12819375865839588089

`A196904(A374008(n+1))`
-/

namespace A196903.P12819375865839588089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374008 (n + 1)).toNat

end

end A196903.P12819375865839588089

/-! ## A196903.P1543271719387725952

`A196904(eq[11, A066657(n)])`
-/

namespace A196903.P1543271719387725952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196903.P1543271719387725952

/-! ## A196903.P13879792925967924027

`A196904(eq[8, A131818(n+1)])`
-/

namespace A196903.P13879792925967924027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196903.P13879792925967924027

/-! ## A196903.P6939946166669748631

`A196904(A055999(n+4))`
-/

namespace A196903.P6939946166669748631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A055999 (n + 4)).toNat

end

end A196903.P6939946166669748631

/-! ## A196903.P1688510302650576265

`A196904(eq[6, A193592(n)])`
-/

namespace A196903.P1688510302650576265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196903.P1688510302650576265

/-!
# A196905: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196905, there is no canonical definition to state claims against.
-/

/-! ## A196905.P11481724172478398870

`A196912(∑[4*n]+1)`
-/

namespace A196905.P11481724172478398870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196905.P11481724172478398870

/-! ## A196905.P2963625771676338670

`record[A196912(A330613(n+1))]`
-/

namespace A196905.P2963625771676338670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196905.P2963625771676338670

/-! ## A196905.P10154941001341484874

`record[A003982(n)*A196912(n+1)]`
-/

namespace A196905.P10154941001341484874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196905.P10154941001341484874

/-! ## A196905.P1112370911481740389

`record[gcd(A008482(n), A196912(n+1))]`
-/

namespace A196905.P1112370911481740389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A196912 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196905.P1112370911481740389

/-! ## A196905.P10368262252627576152

`A196912(A001844(n))+A066568(n)`
-/

namespace A196905.P10368262252627576152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A001844 n).toNat + A066568 n

end

end A196905.P10368262252627576152

/-!
# A196906: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196906, the canonical program `A196906.P2619089245217451129` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196906 has offset 1).

The definition of A196906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196906.P2619089245217451129

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=6, a(2)=13, a(3)=34, a(4)=81, a(5)=199`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196906

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)-a(n-6)` -/
def P2619089245217451129.Spec : Prop :=
  ∀ n, P2619089245217451129.a n = A196906 (n + 1)

theorem P2619089245217451129.correct : P2619089245217451129.Spec := by
  intro n
  simp only [A196906, Nat.add_sub_cancel]

end A196906

/-! ## A196906.P13246946102338884591

`A196912(∑[n+1]+2)`
-/

namespace A196906.P13246946102338884591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196906.P13246946102338884591

namespace A196906

/-- `A196912(∑[n+1]+2)` -/
def P13246946102338884591.Spec : Prop :=
  ∀ n, P13246946102338884591.a n = A196906 (n + 1)

end A196906

/-! ## A196906.P10268581524006368718

`A197079(∑[n+1]+2)`
-/

namespace A196906.P10268581524006368718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196906.P10268581524006368718

namespace A196906

/-- `A197079(∑[n+1]+2)` -/
def P10268581524006368718.Spec : Prop :=
  ∀ n, P10268581524006368718.a n = A196906 (n + 1)

end A196906

/-! ## A196906.P10564794736445989701

`A196912(C(n+2, 2)+2)%A138411(n+1)`
-/

namespace A196906.P10564794736445989701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196912 (Nat.choose (n + 2) 2 + 2)) (A138411 (n + 1))

end

end A196906.P10564794736445989701

namespace A196906

/-- `A196912(C(n+2, 2)+2)%A138411(n+1)` -/
def P10564794736445989701.Spec : Prop :=
  ∀ n, P10564794736445989701.a n = A196906 (n + 1)

end A196906

/-! ## A196906.P4110889108671714757

`A196912(A000124(n+1)+1)%A055331(n)`
-/

namespace A196906.P4110889108671714757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196912 (A000124 (n + 1) + 1).toNat) (A055331 (n + 12))

end

end A196906.P4110889108671714757

namespace A196906

/-- `A196912(A000124(n+1)+1)%A055331(n)` -/
def P4110889108671714757.Spec : Prop :=
  ∀ n, P4110889108671714757.a n = A196906 (n + 1)

end A196906

/-!
# A196907: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196907, there is no canonical definition to state claims against.
-/

/-! ## A196907.P7077571711825112221

`A196912(∑[n+2]+4)`
-/

namespace A196907.P7077571711825112221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196907.P7077571711825112221

/-! ## A196907.P10967616997926586556

`A196912(A167614(n+1))%A016973(n)`
-/

namespace A196907.P10967616997926586556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196912 (A167614 (n + 1)).toNat) (A016973 n)

end

end A196907.P10967616997926586556

/-! ## A196907.P12157850971528501958

`lcm(A033999(n), A196912(A167614(n+1)))`
-/

namespace A196907.P12157850971528501958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196912 (A167614 (n + 1)).toNat)

end

end A196907.P12157850971528501958

/-! ## A196907.P4294201562961762273

`or(A000007(n), A196912(A167614(n+1)))`
-/

namespace A196907.P4294201562961762273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196912 (A167614 (n + 1)).toNat)

end

end A196907.P4294201562961762273

/-! ## A196907.P12419495569710662499

`or(A000038(n), A196912(A167614(n+1)))`
-/

namespace A196907.P12419495569710662499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A196912 (A167614 (n + 1)).toNat)

end

end A196907.P12419495569710662499

/-!
# A196908: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196908, there is no canonical definition to state claims against.
-/

/-! ## A196908.P15669689277636522085

`A196912(A374004(n+1))`
-/

namespace A196908.P15669689277636522085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374004 (n + 1)).toNat

end

end A196908.P15669689277636522085

/-! ## A196908.P2385654978620954086

`A196912(A141214(n)+7)`
-/

namespace A196908.P2385654978620954086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A141214 n + 7).toNat

end

end A196908.P2385654978620954086

/-! ## A196908.P17175733292333367530

`A196912(A052905(n)+9)`
-/

namespace A196908.P17175733292333367530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A052905 n + 9).toNat

end

end A196908.P17175733292333367530

/-! ## A196908.P8626435207561338743

`A196912(A055999(n)+10)`
-/

namespace A196908.P8626435207561338743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A055999 n + 10).toNat

end

end A196908.P8626435207561338743

/-! ## A196908.P262827463941791474

`A196912(A167614(n+2)+1)`
-/

namespace A196908.P262827463941791474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A167614 (n + 2) + 1).toNat

end

end A196908.P262827463941791474

/-!
# A196909: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196909, there is no canonical definition to state claims against.
-/

/-! ## A196909.P7584702393054699399

`A196912(A374005(n+1))`
-/

namespace A196909.P7584702393054699399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374005 (n + 1)).toNat

end

end A196909.P7584702393054699399

/-! ## A196909.P7825543616912617605

`A196912(A155212(n)+13)`
-/

namespace A196909.P7825543616912617605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A155212 n + 13).toNat

end

end A196909.P7825543616912617605

/-! ## A196909.P8047394154618929009

`A196912(A056000(n)+15)`
-/

namespace A196909.P8047394154618929009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A056000 n + 15).toNat

end

end A196909.P8047394154618929009

/-! ## A196909.P18097763627636000162

`A196912(A000096(n+3)+6)`
-/

namespace A196909.P18097763627636000162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A000096 (n + 3) + 6).toNat

end

end A196909.P18097763627636000162

/-! ## A196909.P11653183387777980094

`A196912(A000217(n+4)+5)`
-/

namespace A196909.P11653183387777980094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A000217 (n + 4) + 5).toNat

end

end A196909.P11653183387777980094

/-!
# A196910: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196910, there is no canonical definition to state claims against.
-/

/-! ## A196910.P8322838070713740398

`A196912(A374007(n+1))`
-/

namespace A196910.P8322838070713740398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374007 (n + 1)).toNat

end

end A196910.P8322838070713740398

/-! ## A196910.P15476855892862033618

`A196912(eq[7, A131818(n+1)])`
-/

namespace A196910.P15476855892862033618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196910.P15476855892862033618

/-! ## A196910.P15191708201428613357

`A196912(A052905(n+3))`
-/

namespace A196910.P15191708201428613357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A052905 (n + 3)).toNat

end

end A196910.P15191708201428613357

/-! ## A196910.P281468802179426203

`A196912(A056119(n)+16)`
-/

namespace A196910.P281468802179426203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A056119 n + 16).toNat

end

end A196910.P281468802179426203

/-! ## A196910.P3350325497933795252

`A196912(eq[3, A219347(n)])`
-/

namespace A196910.P3350325497933795252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196910.P3350325497933795252

/-!
# A196911: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196911, there is no canonical definition to state claims against.
-/

/-! ## A196911.P13325502526663479932

`A196912(A374008(n+1))`
-/

namespace A196911.P13325502526663479932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374008 (n + 1)).toNat

end

end A196911.P13325502526663479932

/-! ## A196911.P8145684794933813887

`A196912(A166136(n+5)+1)`
-/

namespace A196911.P8145684794933813887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A166136 (n + 5) + 1).toNat

end

end A196911.P8145684794933813887

/-! ## A196911.P7972964353249888772

`A196912(A055998(n+4)+10)`
-/

namespace A196911.P7972964353249888772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A055998 (n + 4) + 10).toNat

end

end A196911.P7972964353249888772

/-! ## A196911.P2851580985055926035

`A196912(eq[8, A131818(n+1)])`
-/

namespace A196911.P2851580985055926035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196911.P2851580985055926035

/-! ## A196911.P12908178824249801470

`A196912(eq[4, A219347(n)])`
-/

namespace A196911.P12908178824249801470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196911.P12908178824249801470

/-!
# A196912: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196912, there is no canonical definition to state claims against.
-/

/-! ## A196912.P8990660600817456822

`A197079(n+1)-A321936(A174116(n))`
-/

namespace A196912.P8990660600817456822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) - A321936 (A174116 n).toNat

end

end A196912.P8990660600817456822

/-! ## A196912.P16712803787711097685

`A197079(n+1)+A016389(A022166(n))`
-/

namespace A196912.P16712803787711097685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) + A016389 (A022166 n).toNat

end

end A196912.P16712803787711097685

/-! ## A196912.P14640824908788267196

`A197079(n+1)-A025465(A023105(n))`
-/

namespace A196912.P14640824908788267196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) - A025465 (A023105 n).toNat

end

end A196912.P14640824908788267196

/-! ## A196912.P5433742720429773345

`A197079(n+1)+A178798(A008292(n+1))`
-/

namespace A196912.P5433742720429773345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) + A178798 (A008292 (n + 1)).toNat

end

end A196912.P5433742720429773345

/-! ## A196912.P967307943931599605

`A239088(A197079(n+1))`
-/

namespace A196912.P967307943931599605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (A197079 (n + 1)).toNat

end

end A196912.P967307943931599605

/-!
# A196916: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196916, there is no canonical definition to state claims against.
-/

/-! ## A196916.P13621188857351219714

`A196922(∑[4*n]+1)`
-/

namespace A196916.P13621188857351219714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196916.P13621188857351219714

/-! ## A196916.P5339388363572077422

`A140356(n)*A196922(A001844(n))`
-/

namespace A196916.P5339388363572077422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n * A196922 (A001844 n).toNat

end

end A196916.P5339388363572077422

/-! ## A196916.P636594541630759686

`A152851(n)*A196922(A001844(n))`
-/

namespace A196916.P636594541630759686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A196922 (A001844 n).toNat

end

end A196916.P636594541630759686

/-! ## A196916.P10872719831522931426

`or(A000007(n), A196922(A001844(n)))`
-/

namespace A196916.P10872719831522931426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196922 (A001844 n).toNat)

end

end A196916.P10872719831522931426

/-! ## A196916.P4779799413849080677

`A211391(A248641(n))+A196922(A001844(n))`
-/

namespace A196916.P4779799413849080677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211391 (A248641 n).toNat + A196922 (A001844 n).toNat

end

end A196916.P4779799413849080677

/-!
# A196917: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196917, the canonical program `A196917.P11673929828572863917` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196917 has offset 1).

The definition of A196917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196917.P11673929828572863917

`2*a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=27`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196917

/-- `2*a(n-1)+a(n-3)-a(n-4)` -/
def P11673929828572863917.Spec : Prop :=
  ∀ n, P11673929828572863917.a n = A196917 (n + 1)

theorem P11673929828572863917.correct : P11673929828572863917.Spec := by
  intro n
  simp only [A196917, Nat.add_sub_cancel]

end A196917

/-! ## A196917.P14858772745969794011

`A196922(∑[n+2]+4)`
-/

namespace A196917.P14858772745969794011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196917.P14858772745969794011

namespace A196917

/-- `A196922(∑[n+2]+4)` -/
def P14858772745969794011.Spec : Prop :=
  ∀ n, P14858772745969794011.a n = A196917 (n + 1)

end A196917

/-! ## A196917.P8660319490191166663

`A196922(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A196917.P8660319490191166663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196922 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A196917.P8660319490191166663

namespace A196917

/-- `A196922(A167614(n+1))^ceil(sin(n)²)` -/
def P8660319490191166663.Spec : Prop :=
  ∀ n, P8660319490191166663.a n = (A196917 (n + 1) : ℚ)

end A196917

/-! ## A196917.P4944437871135208721

`gcd(C(2, n+2), A196922(A000096(n+1)+4))`
-/

namespace A196917.P4944437871135208721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A196922 (A000096 (n + 1) + 4).toNat)

end

end A196917.P4944437871135208721

namespace A196917

/-- `gcd(C(2, n+2), A196922(A000096(n+1)+4))` -/
def P4944437871135208721.Spec : Prop :=
  ∀ n, (P4944437871135208721.a n : ℤ) = A196917 (n + 1)

end A196917

/-! ## A196917.P5539750342517398558

`A196922(A167614(n+1))^A178334(n)`
-/

namespace A196917.P5539750342517398558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196922 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A196917.P5539750342517398558

namespace A196917

/-- `A196922(A167614(n+1))^A178334(n)` -/
def P5539750342517398558.Spec : Prop :=
  ∀ n, P5539750342517398558.a n = (A196917 (n + 1) : ℚ)

end A196917

/-!
# A196918: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196918, there is no canonical definition to state claims against.
-/

/-! ## A196918.P5576719859106603396

`A196922(A374004(n+1))`
-/

namespace A196918.P5576719859106603396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374004 (n + 1)).toNat

end

end A196918.P5576719859106603396

/-! ## A196918.P6523288138078892936

`A196922(A052905(n)+9)`
-/

namespace A196918.P6523288138078892936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A052905 n + 9).toNat

end

end A196918.P6523288138078892936

/-! ## A196918.P16668236140806578815

`A196922(A167614(n+2)+1)`
-/

namespace A196918.P16668236140806578815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A167614 (n + 2) + 1).toNat

end

end A196918.P16668236140806578815

/-! ## A196918.P9302702865471165150

`A196922(A166136(n+2)-2)`
-/

namespace A196918.P9302702865471165150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A166136 (n + 2) - 2).toNat

end

end A196918.P9302702865471165150

/-! ## A196918.P1500138214928266743

`A196922(A166136(n+1)+1+n)`
-/

namespace A196918.P1500138214928266743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A196918.P1500138214928266743

/-!
# A196919: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196919, there is no canonical definition to state claims against.
-/

/-! ## A196919.P16441026580450147548

`A196922(A374005(n+1))`
-/

namespace A196919.P16441026580450147548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374005 (n + 1)).toNat

end

end A196919.P16441026580450147548

/-! ## A196919.P18063609802265556787

`A196922(A167499(n+3))`
-/

namespace A196919.P18063609802265556787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A167499 (n + 3)).toNat

end

end A196919.P18063609802265556787

/-! ## A196919.P16247336472244386676

`A196922(A155212(n)+13)`
-/

namespace A196919.P16247336472244386676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A155212 n + 13).toNat

end

end A196919.P16247336472244386676

/-! ## A196919.P6558587904425246972

`A196922(A000217(n+4)+5)`
-/

namespace A196919.P6558587904425246972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A000217 (n + 4) + 5).toNat

end

end A196919.P6558587904425246972

/-! ## A196919.P11331971839367433408

`A196922(A000124(n+5)-(n+1))`
-/

namespace A196919.P11331971839367433408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A196919.P11331971839367433408

/-!
# A196920: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196920, there is no canonical definition to state claims against.
-/

/-! ## A196920.P4113824688954143310

`A196922(A374007(n+1))`
-/

namespace A196920.P4113824688954143310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374007 (n + 1)).toNat

end

end A196920.P4113824688954143310

/-! ## A196920.P2247293326727150762

`A196922(A000217(n+5)+6)`
-/

namespace A196920.P2247293326727150762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A000217 (n + 5) + 6).toNat

end

end A196920.P2247293326727150762

/-! ## A196920.P15414523966724261177

`A196922(A300576(n+9)+A134869(n+3))`
-/

namespace A196920.P15414523966724261177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A300576 (n + 9) + A134869 (n + 3)).toNat

end

end A196920.P15414523966724261177

/-! ## A196920.P6423638227873649472

`A196922(A052905(n+3))`
-/

namespace A196920.P6423638227873649472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A052905 (n + 3)).toNat

end

end A196920.P6423638227873649472

/-! ## A196920.P15658669361872585830

`A196922(A000096(n+5)-4)`
-/

namespace A196920.P15658669361872585830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A000096 (n + 5) - 4).toNat

end

end A196920.P15658669361872585830

/-!
# A196921: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196921, there is no canonical definition to state claims against.
-/

/-! ## A196921.P1106820458240295943

`A196922(A374008(n+1))`
-/

namespace A196921.P1106820458240295943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374008 (n + 1)).toNat

end

end A196921.P1106820458240295943

/-! ## A196921.P10572333706058188786

`A196922(A166136(n+5)+1)`
-/

namespace A196921.P10572333706058188786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A166136 (n + 5) + 1).toNat

end

end A196921.P10572333706058188786

/-! ## A196921.P12683245204005325711

`A196922(A167499(n+5)+2)`
-/

namespace A196921.P12683245204005325711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A167499 (n + 5) + 2).toNat

end

end A196921.P12683245204005325711

/-! ## A196921.P1355086681148073972

`A196922(A167614(n+5)+4)`
-/

namespace A196921.P1355086681148073972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A167614 (n + 5) + 4).toNat

end

end A196921.P1355086681148073972

/-! ## A196921.P6264540651224367685

`A196922(A000217(n+6)+7)`
-/

namespace A196921.P6264540651224367685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A000217 (n + 6) + 7).toNat

end

end A196921.P6264540651224367685

/-!
# A196922: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196922, there is no canonical definition to state claims against.
-/

/-! ## A196922.P10239724682728373087

`A341024(A196863(n+1))+A196863(n+1)`
-/

namespace A196922.P10239724682728373087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A196863 (n + 1)).toNat + 84) + A196863 (n + 1)

end

end A196922.P10239724682728373087

/-! ## A196922.P17164530248952564585

`A347520(A196863(n+1))`
-/

namespace A196922.P17164530248952564585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A196863 (n + 1)).toNat

end

end A196922.P17164530248952564585

/-! ## A196922.P6113821682193603407

`A247160(A196863(n+1)%A167266(n+1))`
-/

namespace A196922.P6113821682193603407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (Int.tmod (A196863 (n + 1)) (A167266 (n + 1))).toNat

end

end A196922.P6113821682193603407

/-! ## A196922.P291006374622260579

`A247160(A196863(n+1))%A364009(n+1)`
-/

namespace A196922.P291006374622260579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247160 (A196863 (n + 1)).toNat) (A364009 (n + 1))

end

end A196922.P291006374622260579

/-!
# A196923: Values of fundamental discriminant -d where number of ideal classes Q(sqrt(-d)) is at most two.

The programs for A196923, there is no canonical definition to state claims against.
-/

/-! ## A196923.P11003498033982273398

`A003644(comp[A060096(n+1)-A221780(n+1)])`
-/

namespace A196923.P11003498033982273398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (n + 1) - A221780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A196923.P11003498033982273398

/-! ## A196923.P5339058725065755913

`A003644(comp[A093557(2*n+3)-A328369(n+1)])`
-/

namespace A196923.P5339058725065755913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093557 (2 * n + 3) - A328369 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A196923.P5339058725065755913

/-! ## A196923.P1132745826794872522

`∩[A003644(n+1), A194378(n+1)]`
-/

namespace A196923.P1132745826794872522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196923.P1132745826794872522

/-! ## A196923.P18187822222618039641

`record[A003644(n+1)%A299791(n+4)]`
-/

namespace A196923.P18187822222618039641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003644 (n + 1)) (A299791 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196923.P18187822222618039641

/-! ## A196923.P6826743106386950824

`∩[A003644(n+1), A331682(n+1)]`
-/

namespace A196923.P6826743106386950824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196923.P6826743106386950824

/-!
# A196925: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196925, there is no canonical definition to state claims against.
-/

/-! ## A196925.P17566998022115754525

`A196929(∑[4*n]+1)`
-/

namespace A196925.P17566998022115754525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196925.P17566998022115754525

/-! ## A196925.P8265800978073679573

`gcd(A000038(n), A196929(A001844(n)))`
-/

namespace A196925.P8265800978073679573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196929 (A001844 n).toNat)

end

end A196925.P8265800978073679573

/-! ## A196925.P7433966043569953736

`lcm(A020985(n), A196929(A001844(n)))`
-/

namespace A196925.P7433966043569953736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A196929 (A001844 n).toNat)

end

end A196925.P7433966043569953736

/-! ## A196925.P17376754908350333338

`A196929(n+1)*A196929(A001844(n))`
-/

namespace A196925.P17376754908350333338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (n + 1) * A196929 (A001844 n).toNat

end

end A196925.P17376754908350333338

/-! ## A196925.P162025324710637237

`or(A180823(n+1), A196929(A001844(n)))`
-/

namespace A196925.P162025324710637237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180823 (n + 1)) (A196929 (A001844 n).toNat)

end

end A196925.P162025324710637237

/-!
# A196926: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196926, there is no canonical definition to state claims against.
-/

/-! ## A196926.P16904916968200249395

`A196929(A374005(n+1))`
-/

namespace A196926.P16904916968200249395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A374005 (n + 1)).toNat

end

end A196926.P16904916968200249395

/-! ## A196926.P917740983731427412

`A196929(A167499(n+3))`
-/

namespace A196926.P917740983731427412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A167499 (n + 3)).toNat

end

end A196926.P917740983731427412

/-! ## A196926.P10817257849921667466

`A196929(A167614(n+3)+2)`
-/

namespace A196926.P10817257849921667466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A167614 (n + 3) + 2).toNat

end

end A196926.P10817257849921667466

/-! ## A196926.P15689604791567302832

`A196929(A000124(n+5)-(n+1))`
-/

namespace A196926.P15689604791567302832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A196926.P15689604791567302832

/-! ## A196926.P8061991664258141329

`A196929(A008619(Δ[A026046(n+6)]))`
-/

namespace A196926.P8061991664258141329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A196926.P8061991664258141329

/-!
# A196927: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196927, there is no canonical definition to state claims against.
-/

/-! ## A196927.P17472005470744920365

`A196929(A374007(n+1))`
-/

namespace A196927.P17472005470744920365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A374007 (n + 1)).toNat

end

end A196927.P17472005470744920365

/-! ## A196927.P15453874630694413321

`A196929(A167499(n+4)+1)`
-/

namespace A196927.P15453874630694413321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A167499 (n + 4) + 1).toNat

end

end A196927.P15453874630694413321

/-! ## A196927.P5810722268672266333

`A196929(A000217(n+5)+6)`
-/

namespace A196927.P5810722268672266333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A000217 (n + 5) + 6).toNat

end

end A196927.P5810722268672266333

/-! ## A196927.P5435740748812802384

`A196929(A046691(n+3)+10)`
-/

namespace A196927.P5435740748812802384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A046691 (n + 3) + 10).toNat

end

end A196927.P5435740748812802384

/-! ## A196927.P8375606109851767798

`A196929(eq[5, A002262(n)]+1)`
-/

namespace A196927.P8375606109851767798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A196927.P8375606109851767798

/-!
# A196928: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196928, there is no canonical definition to state claims against.
-/

/-! ## A196928.P15256335018440920725

`A196929(A374008(n+1))`
-/

namespace A196928.P15256335018440920725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A374008 (n + 1)).toNat

end

end A196928.P15256335018440920725

/-! ## A196928.P16370102072765399748

`A196929(A166136(n+5)+1)`
-/

namespace A196928.P16370102072765399748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A166136 (n + 5) + 1).toNat

end

end A196928.P16370102072765399748

/-! ## A196928.P10646023684028057706

`A196929(A167499(n+5)+2)`
-/

namespace A196928.P10646023684028057706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A167499 (n + 5) + 2).toNat

end

end A196928.P10646023684028057706

/-! ## A196928.P17330656351454116885

`A196929(A000124(n+6)+6)`
-/

namespace A196928.P17330656351454116885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A000124 (n + 6) + 6).toNat

end

end A196928.P17330656351454116885

/-! ## A196928.P12310878745462480676

`A196929(A000217(n+6)+7)`
-/

namespace A196928.P12310878745462480676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A000217 (n + 6) + 7).toNat

end

end A196928.P12310878745462480676

/-!
# A196929: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196929, there is no canonical definition to state claims against.
-/

/-! ## A196929.P5467222108002729485

`A108582(A260340(n))`
-/

namespace A196929.P5467222108002729485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A260340 n).toNat

end

end A196929.P5467222108002729485

/-! ## A196929.P7067079778158954044

`A161358(A334549(n))`
-/

namespace A196929.P7067079778158954044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A334549 n).toNat

end

end A196929.P7067079778158954044

/-! ## A196929.P6869732049831540881

`A174981(A333901(n))`
-/

namespace A196929.P6869732049831540881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174981 (A333901 n).toNat

end

end A196929.P6869732049831540881

/-! ## A196929.P12659441104168259748

`A185679(A347618(n))`
-/

namespace A196929.P12659441104168259748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A347618 n).toNat

end

end A196929.P12659441104168259748

/-! ## A196929.P11826203988692753252

`A226029(A347618(n)+1)`
-/

namespace A196929.P11826203988692753252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A347618 n + 1).toNat

end

end A196929.P11826203988692753252

/-!
# A196930: Triangle read by rows in which row n lists in nondecreasing order the smallest part of every partition of n that do not contain 1 as a part, with a(1) = 1.

The programs for A196930, there is no canonical definition to state claims against.
-/

/-! ## A196930.P12697777803760199667

`A196931(lt[A157928(n), A196931(n)])`
-/

namespace A196930.P12697777803760199667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196930.P12697777803760199667

/-! ## A196930.P2450354445136680942

`A090996(A194602(n))+1`
-/

namespace A196930.P2450354445136680942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A194602 n).toNat + 1

end

end A196930.P2450354445136680942

/-! ## A196930.P6389862196915445532

`A342241(2*A194602(n))`
-/

namespace A196930.P6389862196915445532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (2 * A194602 n).toNat

end

end A196930.P6389862196915445532

/-! ## A196930.P10009605959821373745

`A210941(∑[A194548(n+1)]+1)`
-/

namespace A196930.P10009605959821373745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210941 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A196930.P10009605959821373745

/-! ## A196930.P18330807468999203839

`A001511(A143035(n+1)-A006995(n+1))`
-/

namespace A196930.P18330807468999203839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A143035 (n + 1) - A006995 (n + 1)).toNat

end

end A196930.P18330807468999203839

/-!
# A196931: Triangle read by rows in which row n lists in nondecreasing order the smallest part of every partition of n.

The programs for A196931, there is no canonical definition to state claims against.
-/

/-! ## A196931.P8566180730193407927

`A055396(A334437(n))`
-/

namespace A196931.P8566180730193407927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A334437 n).toNat

end

end A196931.P8566180730193407927

/-! ## A196931.P162850181353395985

`A090996(A037014(n+1))`
-/

namespace A196931.P162850181353395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A037014 (n + 1)).toNat

end

end A196931.P162850181353395985

/-! ## A196931.P13803659449372537672

`A061395(A020639(A334437(n))²)`
-/

namespace A196931.P13803659449372537672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A334437 n).toNat ^ 2).toNat

end

end A196931.P13803659449372537672

/-! ## A196931.P7197551951493588170

`A090996(record[A361479(n)])`
-/

namespace A196931.P7197551951493588170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196931.P7197551951493588170

/-! ## A196931.P6703859487755147185

`A090996(eq[n, A361479(n)])`
-/

namespace A196931.P6703859487755147185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196931.P6703859487755147185

/-! ## A196931.P15410159001130269483

`A090996(eq[n, A335834(n)])`
-/

namespace A196931.P15410159001130269483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196931.P15410159001130269483

/-! ## A196931.P15126671180380720216

`A090996(record[gcd(n, A335834(n))])`
-/

namespace A196931.P15126671180380720216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A335834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A196931.P15126671180380720216

/-! ## A196931.P3778035620238525997

`A090996(record[A335834(n)%(n+1)])`
-/

namespace A196931.P3778035620238525997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335834 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196931.P3778035620238525997

/-! ## A196931.P13378620036762490356

`A090996(eq[n, A056539(A335835(n))])`
-/

namespace A196931.P13378620036762490356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335835 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196931.P13378620036762490356

/-! ## A196931.P2757578164151900783

`A286471(2*A334437(n))`
-/

namespace A196931.P2757578164151900783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A334437 n).toNat

end

end A196931.P2757578164151900783

/-!
# A196933: Column 9 of array A195825. Also column 1 of triangle A195843. Also 1 together with the row sums of triangle A195843.

The programs for A196933, there is no canonical definition to state claims against.
-/

/-! ## A196933.P11729516435114459242

`A210964(comp[98-11*n])%A371165(n+1)`
-/

namespace A196933.P11729516435114459242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210964 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A371165 (n + 1))

end

end A196933.P11729516435114459242

/-! ## A196933.P3065178941086077404

`A210964(lt[A039991(3*n+2), A327997(n+1)])`
-/

namespace A196933.P3065178941086077404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196933.P3065178941086077404

/-! ## A196933.P6584003558149956449

`A210964(comp[A038822(n)+18+n-11*n])`
-/

namespace A196933.P6584003558149956449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n + 18 + (n : ℤ) - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A196933.P6584003558149956449

/-! ## A196933.P17355879213699144315

`A210964(comp[A376995(3*n+4)-A259384(2*(n+1))])`
-/

namespace A196933.P17355879213699144315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376995 (3 * n + 4) - A259384 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A196933.P17355879213699144315

/-! ## A196933.P17412998517134755247

`A210964(A007095(n)%A164288(n+1))`
-/

namespace A196933.P17412998517134755247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (Int.tmod (A007095 n) (A164288 (n + 1))).toNat

end

end A196933.P17412998517134755247

/-!
# A196934: a(n) is the first occurrence of n in sequence A078498.

The programs for A196934, there is no canonical definition to state claims against.
-/

/-! ## A196934.P15223839860392215513

`A000720(A139602(n+1))`
-/

namespace A196934.P15223839860392215513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A139602 (n + 1)).toNat

end

end A196934.P15223839860392215513

/-! ## A196934.P9530811784992881929

`A061395(p?[A139602(n+1)])`
-/

namespace A196934.P9530811784992881929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196934.P9530811784992881929

/-! ## A196934.P11726269778598599675

`A297109(p?[A139602(n+1)])`
-/

namespace A196934.P11726269778598599675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196934.P11726269778598599675

/-! ## A196934.P963750755296366188

`A326846(p?[A139602(n+1)])`
-/

namespace A196934.P963750755296366188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196934.P963750755296366188

/-! ## A196934.P10380586936896466305

`A061395(2*A139602(n+1))`
-/

namespace A196934.P10380586936896466305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A139602 (n + 1)).toNat

end

end A196934.P10380586936896466305

/-! ## A196934.P11972822664206129313

`A061395(lcm(2, A139602(n+1)))`
-/

namespace A196934.P11972822664206129313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A139602 (n + 1)))

end

end A196934.P11972822664206129313

/-! ## A196934.P8772613151012183479

`A061395(or(1, A139602(n+1)))`
-/

namespace A196934.P8772613151012183479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A139602 (n + 1))).toNat

end

end A196934.P8772613151012183479

/-! ## A196934.P9495362228958986974

`A326846(or(1, A139602(n+1)))`
-/

namespace A196934.P9495362228958986974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (Int.lor 1 (A139602 (n + 1))).toNat

end

end A196934.P9495362228958986974

/-! ## A196934.P6143957257094521358

`∑{d}[A139602(n+1), A061395(#)]`
-/

namespace A196934.P6143957257094521358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A196934.P6143957257094521358

/-! ## A196934.P16644763812353795909

`A326846(2*A139602(n+1))/2`
-/

namespace A196934.P16644763812353795909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326846 (2 * A139602 (n + 1)).toNat : ℚ) / 2

end

end A196934.P16644763812353795909

/-!
# A196935: a(n) is the number of arithmetic progressions prime chains in the form of p(n)-6k, p(n), p(n)+6k, while k > 0 and p(n) > 6k.

The programs for A196935, there is no canonical definition to state claims against.
-/

/-! ## A196935.P13468714568784802608

`A171611(A240710(n+3))-1`
-/

namespace A196935.P13468714568784802608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A240710 (n + 3)).toNat - 1

end

end A196935.P13468714568784802608

/-! ## A196935.P7818746264892010945

`A171611(A065091(n+4))-1`
-/

namespace A196935.P7818746264892010945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A065091 (n + 4)).toNat - 1

end

end A196935.P7818746264892010945

/-! ## A196935.P8969219276517213552

`A171611(A000040(n+5))-1`
-/

namespace A196935.P8969219276517213552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A000040 (n + 5)).toNat - 1

end

end A196935.P8969219276517213552

/-! ## A196935.P9869583013648875322

`A171611(A006005(n+5))-1`
-/

namespace A196935.P9869583013648875322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A006005 (n + 5)).toNat - 1

end

end A196935.P9869583013648875322

/-! ## A196935.P16735668494810523763

`A326146(gcd(n, n+1))+A171611(A006005(n+5))`
-/

namespace A196935.P16735668494810523763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (Nat.gcd n (n + 1)) + A171611 (A006005 (n + 5)).toNat

end

end A196935.P16735668494810523763

/-! ## A196935.P16257278894625742120

`A280193(A246039(n))+A171611(A000040(n+5))`
-/

namespace A196935.P16257278894625742120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A246039 n).toNat + A171611 (A000040 (n + 5)).toNat

end

end A196935.P16257278894625742120

/-! ## A196935.P15636087504714130040

`A321804(A001222(n+1))+A171611(A240710(n+3))`
-/

namespace A196935.P15636087504714130040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001222 (n + 1)).toNat + A171611 (A240710 (n + 3)).toNat

end

end A196935.P15636087504714130040

/-!
# A196936: a(n) is the first occurrence of n in sequence A196935.

The programs for A196936, there is no canonical definition to state claims against.
-/

/-! ## A196936.P14645136540959082878

`A065091(n+1)+A049837(A001680(n))`
-/

namespace A196936.P14645136540959082878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A049837 (A001680 n).toNat

end

end A196936.P14645136540959082878

/-! ## A196936.P13212228782158202705

`A049837(A001680(n))+A000040(n+2)`
-/

namespace A196936.P13212228782158202705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049837 (A001680 n).toNat + A000040 (n + 2)

end

end A196936.P13212228782158202705

/-!
# A196938: a(n) is the prime number that is the center element (3rd) of a 5-terms arithmetic progression prime chain.

The programs for A196938, there is no canonical definition to state claims against.
-/

/-! ## A196938.P8747204245332831615

`A000040(A196939(n+1))`
-/

namespace A196938.P8747204245332831615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A196939 (n + 1)).toNat

end

end A196938.P8747204245332831615

/-! ## A196938.P12855755135619564507

`A008578(A196939(n+1)+1)`
-/

namespace A196938.P12855755135619564507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A196939 (n + 1) + 1).toNat

end

end A196938.P12855755135619564507

/-! ## A196938.P11525115329750921422

`A045344(A196939(n+1)-1)`
-/

namespace A196938.P11525115329750921422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A196939 (n + 1) - 1).toNat

end

end A196938.P11525115329750921422

/-! ## A196938.P5750913711336265931

`A065091(A196939(n+1)-1)`
-/

namespace A196938.P5750913711336265931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A196939 (n + 1) - 1).toNat

end

end A196938.P5750913711336265931

/-! ## A196938.P9325256115124796484

`A004139(A196939(n+1)-2)`
-/

namespace A196938.P9325256115124796484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A196939 (n + 1) - 2).toNat

end

end A196938.P9325256115124796484

/-! ## A196938.P1749521186786599228

`A082500(2*A196939(n+1))`
-/

namespace A196938.P1749521186786599228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A196939 (n + 1)).toNat

end

end A196938.P1749521186786599228

/-! ## A196938.P15133992626704861596

`A006005(∑{d}[A196939(n+1), A000010(#)])`
-/

namespace A196938.P15133992626704861596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A196938.P15133992626704861596

/-! ## A196938.P1889857131643666835

`∏{p}[A006005(A196939(n+1)), A006530(#)]`
-/

namespace A196938.P1889857131643666835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A196939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A196938.P1889857131643666835

/-! ## A196938.P16837302727415890230

`∏{p}[A006005(A196939(n+1)), A014963(#)]`
-/

namespace A196938.P16837302727415890230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A196939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A196938.P16837302727415890230

/-! ## A196938.P14205518000318422562

`∏{p}[A006005(A196939(n+1)), A020639(#)]`
-/

namespace A196938.P14205518000318422562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A196939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A196938.P14205518000318422562

/-!
# A196939: a(n) is the prime order number of A196938.

The programs for A196939, there is no canonical definition to state claims against.
-/

/-! ## A196939.P5234831190554591154

`A000720(A196938(n+1))`
-/

namespace A196939.P5234831190554591154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A196938 (n + 1)).toNat

end

end A196939.P5234831190554591154

/-! ## A196939.P11817822625717555284

`A003963(p?[A196938(n+1)])`
-/

namespace A196939.P11817822625717555284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P11817822625717555284

/-! ## A196939.P7123947947492997398

`A026233(p?[A196938(n+1)])`
-/

namespace A196939.P7123947947492997398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P7123947947492997398

/-! ## A196939.P3426787596407032374

`A026238(p?[A196938(n+1)])`
-/

namespace A196939.P3426787596407032374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P3426787596407032374

/-! ## A196939.P13489598775064844023

`A049084(p?[A196938(n+1)])`
-/

namespace A196939.P13489598775064844023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P13489598775064844023

/-! ## A196939.P9306318438584100488

`A055396(p?[A196938(n+1)])`
-/

namespace A196939.P9306318438584100488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P9306318438584100488

/-! ## A196939.P6503905765554824727

`A061395(p?[A196938(n+1)])`
-/

namespace A196939.P6503905765554824727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P6503905765554824727

/-! ## A196939.P18005137879495315806

`A139169(p?[A196938(n+1)])`
-/

namespace A196939.P18005137879495315806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P18005137879495315806

/-! ## A196939.P13049801603635436419

`A156061(p?[A196938(n+1)])`
-/

namespace A196939.P13049801603635436419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196939.P13049801603635436419

/-! ## A196939.P4594512933107091054

`A003963(2*A196938(n+1))`
-/

namespace A196939.P4594512933107091054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A196938 (n + 1)).toNat

end

end A196939.P4594512933107091054

/-!
# A196940: Primes of the form 15*2^k - 1.

The programs for A196940, there is no canonical definition to state claims against.
-/

/-! ## A196940.P11854506163602325031

`A196305(A002237(n+1))`
-/

namespace A196940.P11854506163602325031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 (A002237 (n + 1)).toNat

end

end A196940.P11854506163602325031

/-! ## A196940.P13405410855258946184

`A110286(A002237(n+1))-A254730(n)`
-/

namespace A196940.P13405410855258946184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 (A002237 (n + 1)).toNat - A254730 n

end

end A196940.P13405410855258946184

/-! ## A196940.P8925467511002252854

`∩[A293425(n+1), A089633(n)]`
-/

namespace A196940.P8925467511002252854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P8925467511002252854

/-! ## A196940.P13614726559233737771

`∩[A030130(n+1), A293425(n+1)]`
-/

namespace A196940.P13614726559233737771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P13614726559233737771

/-! ## A196940.P4444666422865986432

`∩[A081118(n+1), A293425(n+1)]`
-/

namespace A196940.P4444666422865986432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P4444666422865986432

/-!
# A196941: a(n) is the minimum prime (or 1) needed to write integer n into the form n = a + b such that all prime factors of a and b are smaller or equal to a(n).

The programs for A196941, there is no canonical definition to state claims against.
-/

/-! ## A196941.P11860431291763373249

`ceil(ϕ^A196942(n+2))`
-/

namespace A196941.P11860431291763373249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (A196942 (n + 2) : ℤ)⌉

end

end A196941.P11860431291763373249

/-! ## A196941.P3044678174112623516

`floor(A057427(n)+ϕ^A196942(n+2))`
-/

namespace A196941.P3044678174112623516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.goldenRatio ^ (A196942 (n + 2) : ℤ)⌋

end

end A196941.P3044678174112623516

/-! ## A196941.P6752338926824579479

`A008578(A196942(n+2)+gcd(n, n+1))`
-/

namespace A196941.P6752338926824579479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A196942 (n + 2) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A196941.P6752338926824579479

/-! ## A196941.P7335989493291590289

`A000041(A196942(n+2)+ceil(1/(n+1)))`
-/

namespace A196941.P7335989493291590289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A196942 (n + 2) + ⌈1 / (n + 1 : ℚ)⌉).toNat

end

end A196941.P7335989493291590289

/-! ## A196941.P939811696659169752

`A005728(A178334(n)*A196942(n+2))`
-/

namespace A196941.P939811696659169752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A178334 n * A196942 (n + 2)).toNat

end

end A196941.P939811696659169752

/-! ## A196941.P9474076176579662927

`A052955(A178334(n)*A196942(n+2))`
-/

namespace A196941.P9474076176579662927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A178334 n * A196942 (n + 2)).toNat

end

end A196941.P9474076176579662927

/-! ## A196941.P13860139639058782861

`A005728(A019428(2*n)*A196942(n+2))`
-/

namespace A196941.P13860139639058782861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A019428 (2 * n) * A196942 (n + 2)).toNat

end

end A196941.P13860139639058782861

/-! ## A196941.P2805075971862958693

`A005728(A196942(n+2)/(2-A178334(n)))`
-/

namespace A196941.P2805075971862958693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (SequenceMachineLib.roundAway ((A196942 (n + 2) : ℚ) / (2 - A178334 n : ℚ))).toNat

end

end A196941.P2805075971862958693

/-! ## A196941.P5797162620460349975

`A052955(A196942(n+2)/(2-A178334(n)))`
-/

namespace A196941.P5797162620460349975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (SequenceMachineLib.roundAway ((A196942 (n + 2) : ℚ) / (2 - A178334 n : ℚ))).toNat

end

end A196941.P5797162620460349975

/-!
# A196942: a(n) is the prime order of sequence A196941.

The programs for A196942, there is no canonical definition to state claims against.
-/

/-! ## A196942.P3005590004477983735

`53%A196941(n+2)`
-/

namespace A196942.P3005590004477983735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 53 (A196941 (n + 2))

end

end A196942.P3005590004477983735

/-! ## A196942.P13087993722869548158

`A000720(A196941(n+2))`
-/

namespace A196942.P13087993722869548158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A196941 (n + 2)).toNat

end

end A196942.P13087993722869548158

/-! ## A196942.P6883697960176201373

`A000193(A196941(n+2)²)`
-/

namespace A196942.P6883697960176201373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P6883697960176201373

/-! ## A196942.P4932058355519577928

`A055396(A196941(n+2)²)`
-/

namespace A196942.P4932058355519577928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P4932058355519577928

/-! ## A196942.P16805841442874751960

`A056811(A196941(n+2)²)`
-/

namespace A196942.P16805841442874751960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P16805841442874751960

/-! ## A196942.P5122907858338974607

`A061395(A196941(n+2)²)`
-/

namespace A196942.P5122907858338974607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P5122907858338974607

/-! ## A196942.P18320486310786722180

`A334107(A196941(n+2)²)`
-/

namespace A196942.P18320486310786722180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P18320486310786722180

/-! ## A196942.P13840640417681415001

`A001221(A196941(n+2)!)`
-/

namespace A196942.P13840640417681415001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A196941 (n + 2)).toNat)

end

end A196942.P13840640417681415001

/-! ## A196942.P11974488127943857828

`A061395(A196941(n+2)!)`
-/

namespace A196942.P11974488127943857828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.factorial (A196941 (n + 2)).toNat)

end

end A196942.P11974488127943857828

/-! ## A196942.P5456643039914123093

`A056943(A196941(n+2)+1)`
-/

namespace A196942.P5456643039914123093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A196941 (n + 2) + 1).toNat

end

end A196942.P5456643039914123093

/-!
# A196944: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196944, there is no canonical definition to state claims against.
-/

/-! ## A196944.P15878383341954265783

`A196950(∑[4*n]+1)`
-/

namespace A196944.P15878383341954265783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196944.P15878383341954265783

/-! ## A196944.P2736919978836259723

`∑{digits}[n, A196950(A001844(#))]`
-/

namespace A196944.P2736919978836259723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196950 (A001844 x).toNat).sum

end

end A196944.P2736919978836259723

/-! ## A196944.P4334847585411985307

`record[A196950(A272267(n+1))]`
-/

namespace A196944.P4334847585411985307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196944.P4334847585411985307

/-! ## A196944.P17532805438600298647

`record[A196950(A330613(n+1))]`
-/

namespace A196944.P17532805438600298647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196944.P17532805438600298647

/-!
# A196945: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196945, there is no canonical definition to state claims against.
-/

/-! ## A196945.P13619583136917552848

`A196950(∑[n+2]+4)`
-/

namespace A196945.P13619583136917552848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196945.P13619583136917552848

/-! ## A196945.P3455709722039037419

`lcm((-1)^n, A196950(A167614(n+1)))`
-/

namespace A196945.P3455709722039037419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A196950 (A167614 (n + 1)).toNat)

end

end A196945.P3455709722039037419

/-! ## A196945.P11095934716960559675

`A196950(A167614(n+1))%A332176(n)`
-/

namespace A196945.P11095934716960559675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196950 (A167614 (n + 1)).toNat) (A332176 n)

end

end A196945.P11095934716960559675

/-! ## A196945.P8946554508203872285

`A196950(A167614(n+1))+A006983(n+1)`
-/

namespace A196945.P8946554508203872285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A167614 (n + 1)).toNat + A006983 (n + 1)

end

end A196945.P8946554508203872285

/-! ## A196945.P2371369762171544654

`or(A044941(n+1), A196950(A167614(n+1)))`
-/

namespace A196945.P2371369762171544654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044941 (n + 1)) (A196950 (A167614 (n + 1)).toNat)

end

end A196945.P2371369762171544654

/-!
# A196946: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196946, there is no canonical definition to state claims against.
-/

/-! ## A196946.P2957465191618656550

`A196950(A374004(n+1))`
-/

namespace A196946.P2957465191618656550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374004 (n + 1)).toNat

end

end A196946.P2957465191618656550

/-! ## A196946.P10488293046420787989

`A196950(A141214(n)+7)`
-/

namespace A196946.P10488293046420787989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A141214 n + 7).toNat

end

end A196946.P10488293046420787989

/-! ## A196946.P2411905157172545653

`A196950(A052905(n)+9)`
-/

namespace A196946.P2411905157172545653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A052905 n + 9).toNat

end

end A196946.P2411905157172545653

/-! ## A196946.P16144115030519446976

`A196950(A055999(n)+10)`
-/

namespace A196946.P16144115030519446976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A055999 n + 10).toNat

end

end A196946.P16144115030519446976

/-! ## A196946.P13234478830364751783

`A196950(A167614(n+2)+1)`
-/

namespace A196946.P13234478830364751783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A167614 (n + 2) + 1).toNat

end

end A196946.P13234478830364751783

/-!
# A196947: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196947, there is no canonical definition to state claims against.
-/

/-! ## A196947.P9711489523027634792

`A196950(A374005(n+1))`
-/

namespace A196947.P9711489523027634792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374005 (n + 1)).toNat

end

end A196947.P9711489523027634792

/-! ## A196947.P15355951485588458175

`A196950(A155212(n)+13)`
-/

namespace A196947.P15355951485588458175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A155212 n + 13).toNat

end

end A196947.P15355951485588458175

/-! ## A196947.P13762141194438454418

`A196950(eq[7, A066657(n)])`
-/

namespace A196947.P13762141194438454418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196947.P13762141194438454418

/-! ## A196947.P4170816198216540714

`A196950(A000217(n+4)+5)`
-/

namespace A196947.P4170816198216540714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A000217 (n + 4) + 5).toNat

end

end A196947.P4170816198216540714

/-! ## A196947.P17637143032594454138

`A196950(A046691(n+2)+9)`
-/

namespace A196947.P17637143032594454138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A046691 (n + 2) + 9).toNat

end

end A196947.P17637143032594454138

/-!
# A196948: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196948, there is no canonical definition to state claims against.
-/

/-! ## A196948.P3809503085376881206

`A196950(A374007(n+1))`
-/

namespace A196948.P3809503085376881206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374007 (n + 1)).toNat

end

end A196948.P3809503085376881206

/-! ## A196948.P2650705097025440990

`A196950(eq[7, A131818(n+1)])`
-/

namespace A196948.P2650705097025440990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196948.P2650705097025440990

/-! ## A196948.P15498164977520816939

`A196950(A052905(n+3))`
-/

namespace A196948.P15498164977520816939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A052905 (n + 3)).toNat

end

end A196948.P15498164977520816939

/-! ## A196948.P412923546264389032

`A196950(eq[3, A219347(n)])`
-/

namespace A196948.P412923546264389032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196948.P412923546264389032

/-! ## A196948.P2558244450850713870

`A196950(eq[5, A193592(n)])`
-/

namespace A196948.P2558244450850713870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196948.P2558244450850713870

/-!
# A196949: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196949, there is no canonical definition to state claims against.
-/

/-! ## A196949.P2206394634864127510

`A196950(A374008(n+1))`
-/

namespace A196949.P2206394634864127510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374008 (n + 1)).toNat

end

end A196949.P2206394634864127510

/-! ## A196949.P3065491391816804840

`A196950(A166136(n+5)+1)`
-/

namespace A196949.P3065491391816804840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A166136 (n + 5) + 1).toNat

end

end A196949.P3065491391816804840

/-! ## A196949.P6754621638072069487

`A196950(A000096(n+5)+8)`
-/

namespace A196949.P6754621638072069487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A000096 (n + 5) + 8).toNat

end

end A196949.P6754621638072069487

/-! ## A196949.P119256070900016341

`A196950(eq[8, A131818(n+1)])`
-/

namespace A196949.P119256070900016341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196949.P119256070900016341

/-! ## A196949.P8497363651162230016

`A196950(A046691(n+6)-4-2*n)`
-/

namespace A196949.P8497363651162230016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A046691 (n + 6) - 4 - (2 * n : ℤ)).toNat

end

end A196949.P8497363651162230016

/-!
# A196950: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196950, there is no canonical definition to state claims against.
-/

/-! ## A196950.P17331528239374973623

`xor(A196856(n+1), A334045(A022166(n)))`
-/

namespace A196950.P17331528239374973623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A196856 (n + 1)) (A334045 (A022166 n).toNat)

end

end A196950.P17331528239374973623

/-! ## A196950.P9356580629006697958

`A334045(A304894(n+1))+A196856(n+1)`
-/

namespace A196950.P9356580629006697958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334045 (A304894 (n + 1)).toNat + A196856 (n + 1)

end

end A196950.P9356580629006697958

/-! ## A196950.P4035497974702883574

`A196707(n+1)+A090037(n+1)%A249026(n)`
-/

namespace A196950.P4035497974702883574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) + Int.tmod (A090037 (n + 1)) (A249026 n)

end

end A196950.P4035497974702883574

/-! ## A196950.P11047491313017705577

`A196856(A043320(n+1))+A105570(A081134(n+1))`
-/

namespace A196950.P11047491313017705577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A043320 (n + 1)).toNat + A105570 (A081134 (n + 1)).toNat

end

end A196950.P11047491313017705577

/-!
# A196951: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196951, there is no canonical definition to state claims against.
-/

/-! ## A196951.P15658910455702087290

`A196957(∑[4*n]+1)`
-/

namespace A196951.P15658910455702087290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196951.P15658910455702087290

/-! ## A196951.P2096310523784493059

`record[gcd(A003987(n), A196957(n+1))]`
-/

namespace A196951.P2096310523784493059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A196957 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196951.P2096310523784493059

/-! ## A196951.P9857487397377711045

`gcd(A000038(n), A196957(A001844(n)))`
-/

namespace A196951.P9857487397377711045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196957 (A001844 n).toNat)

end

end A196951.P9857487397377711045

/-! ## A196951.P8933602637591973729

`lcm(A033999(n), A196957(A001844(n)))`
-/

namespace A196951.P8933602637591973729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196957 (A001844 n).toNat)

end

end A196951.P8933602637591973729

/-! ## A196951.P13590000047839999538

`A196957(A001844(n))+A008683(9*(n+1))`
-/

namespace A196951.P13590000047839999538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A001844 n).toNat + A008683 (9 * (n + 1))

end

end A196951.P13590000047839999538

/-!
# A196952: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196952, there is no canonical definition to state claims against.
-/

/-! ## A196952.P10441426543600693578

`A196957(∑[n+2]+4)`
-/

namespace A196952.P10441426543600693578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196952.P10441426543600693578

/-! ## A196952.P3553886221798418311

`or(char[1], A196957(A167614(n+1)))`
-/

namespace A196952.P3553886221798418311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196957 (A167614 (n + 1)).toNat)

end

end A196952.P3553886221798418311

/-! ## A196952.P5507873826252284631

`A196957(A046691(n)+7)%A036222(n+1)`
-/

namespace A196952.P5507873826252284631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196957 (A046691 n + 7).toNat) (A036222 (n + 1))

end

end A196952.P5507873826252284631

/-! ## A196952.P5366567776863722531

`A196957(A167614(n+1))%A001248(n+1)²²`
-/

namespace A196952.P5366567776863722531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196957 (A167614 (n + 1)).toNat) ((A001248 (n + 1) ^ 2) ^ 2)

end

end A196952.P5366567776863722531

/-!
# A196953: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196953, there is no canonical definition to state claims against.
-/

/-! ## A196953.P14956033761582185318

`A196957(A374004(n+1))`
-/

namespace A196953.P14956033761582185318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374004 (n + 1)).toNat

end

end A196953.P14956033761582185318

/-! ## A196953.P16741745915143122046

`A196957(A141214(n)+7)`
-/

namespace A196953.P16741745915143122046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A141214 n + 7).toNat

end

end A196953.P16741745915143122046

/-! ## A196953.P2754202789898345930

`A196957(A052905(n)+9)`
-/

namespace A196953.P2754202789898345930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A052905 n + 9).toNat

end

end A196953.P2754202789898345930

/-! ## A196953.P10137606286201962374

`A196957(A055999(n)+10)`
-/

namespace A196953.P10137606286201962374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A055999 n + 10).toNat

end

end A196953.P10137606286201962374

/-! ## A196953.P9025440154595790753

`A196957(A167614(n+2)+1)`
-/

namespace A196953.P9025440154595790753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A167614 (n + 2) + 1).toNat

end

end A196953.P9025440154595790753

/-!
# A196954: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196954, there is no canonical definition to state claims against.
-/

/-! ## A196954.P5120792954016319995

`A196957(A374005(n+1))`
-/

namespace A196954.P5120792954016319995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374005 (n + 1)).toNat

end

end A196954.P5120792954016319995

/-! ## A196954.P17387494497807185482

`A196957(A167499(n+3))`
-/

namespace A196954.P17387494497807185482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A167499 (n + 3)).toNat

end

end A196954.P17387494497807185482

/-! ## A196954.P9055215099168152285

`A196957(A056000(n)+15)`
-/

namespace A196954.P9055215099168152285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A056000 n + 15).toNat

end

end A196954.P9055215099168152285

/-! ## A196954.P7486417519385995581

`A196957(A000217(n+4)+5)`
-/

namespace A196954.P7486417519385995581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A000217 (n + 4) + 5).toNat

end

end A196954.P7486417519385995581

/-! ## A196954.P10572413123487215219

`A196957(Δ[A264443(n)])`
-/

namespace A196954.P10572413123487215219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (f1 (n + 1) - f1 n).toNat

end

end A196954.P10572413123487215219

/-!
# A196955: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196955, there is no canonical definition to state claims against.
-/

/-! ## A196955.P3332967379738847888

`A196957(A374007(n+1))`
-/

namespace A196955.P3332967379738847888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374007 (n + 1)).toNat

end

end A196955.P3332967379738847888

/-! ## A196955.P13968155920119016202

`A196957(eq[7, A131818(n+1)])`
-/

namespace A196955.P13968155920119016202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196955.P13968155920119016202

/-! ## A196955.P7396968920156009346

`A196957(eq[3, A219347(n)])`
-/

namespace A196955.P7396968920156009346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196955.P7396968920156009346

/-! ## A196955.P8313020625343495949

`A196957(eq[5, A193592(n)])`
-/

namespace A196955.P8313020625343495949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196955.P8313020625343495949

/-! ## A196955.P14257571612306155600

`A196957(Δ[Δ[A006504(n+1)]])`
-/

namespace A196955.P14257571612306155600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (f1 (n + 1) - f1 n).toNat

end

end A196955.P14257571612306155600

/-!
# A196956: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196956, there is no canonical definition to state claims against.
-/

/-! ## A196956.P4275663091931557962

`A196957(A374008(n+1))`
-/

namespace A196956.P4275663091931557962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374008 (n + 1)).toNat

end

end A196956.P4275663091931557962

/-! ## A196956.P15782561110090167577

`A196957(A056119(n)+28)`
-/

namespace A196956.P15782561110090167577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A056119 n + 28).toNat

end

end A196956.P15782561110090167577

/-! ## A196956.P11764605893654445221

`A196957(A167499(n+5)+2)`
-/

namespace A196956.P11764605893654445221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A167499 (n + 5) + 2).toNat

end

end A196956.P11764605893654445221

/-! ## A196956.P11128066580126062622

`A196957(eq[8, A131818(n+1)])`
-/

namespace A196956.P11128066580126062622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196956.P11128066580126062622

/-! ## A196956.P13935517403449931647

`A196957(A055999(n+4))`
-/

namespace A196956.P13935517403449931647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A055999 (n + 4)).toNat

end

end A196956.P13935517403449931647

/-!
# A196957: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196957, there is no canonical definition to state claims against.
-/

/-! ## A196957.P13637934522750239615

`A295120(n+1)+A051765(A098446(n))`
-/

namespace A196957.P13637934522750239615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (n + 1) + A051765 (A098446 n).toNat

end

end A196957.P13637934522750239615

/-! ## A196957.P10919406953254055773

`A072621(A295120(n+1))`
-/

namespace A196957.P10919406953254055773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A295120 (n + 1)).toNat

end

end A196957.P10919406953254055773

/-! ## A196957.P4450221030286310532

`A295120(∑[A278657(n)!])`
-/

namespace A196957.P4450221030286310532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196957.P4450221030286310532

/-! ## A196957.P10907676904290535987

`A295120(A015161(n)!+n)`
-/

namespace A196957.P10907676904290535987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (Nat.factorial (A015161 n).toNat + n)

end

end A196957.P10907676904290535987

/-! ## A196957.P13647567143904080427

`A295120(∑[A278657(n)²²])`
-/

namespace A196957.P13647567143904080427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278657 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196957.P13647567143904080427

/-!
# A196958: E.g.f. satisfies: A(x) = Sum_{n>=0} 1/n! * Sum_{k=0..n} (-1)^(n-k) * C(n,k) * (1 + x/A(x)^k)^k.

The programs for A196958, there is no canonical definition to state claims against.
-/

/-! ## A196958.P14104062229725585004

`or(A046817(A131293(n)), A361097(n))`
-/

namespace A196958.P14104062229725585004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046817 (A131293 n).toNat) (A361097 n)

end

end A196958.P14104062229725585004

/-!
# A196959: E.g.f. satisfies: A(x) = Sum_{n>=0} 1/n! * Sum_{k=0..n} (-1)^(n-k) * C(n,k) * (1 + x*A(x)^(2*k))^k.

The programs for A196959, there is no canonical definition to state claims against.
-/

/-! ## A196959.P2560966990766479049

`A189887(A001333(∑[n]))`
-/

namespace A196959.P2560966990766479049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189887 (A001333 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196959.P2560966990766479049

/-!
# A196960: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196960, there is no canonical definition to state claims against.
-/

/-! ## A196960.P11888508252701247028

`A196967(∑[4*n]+1)`
-/

namespace A196960.P11888508252701247028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196960.P11888508252701247028

/-! ## A196960.P324932528483968257

`record[A196967(A330613(n+1))]`
-/

namespace A196960.P324932528483968257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196960.P324932528483968257

/-! ## A196960.P5180423166166626159

`and(-1, A196967(A016813(∑[n])))`
-/

namespace A196960.P5180423166166626159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196967 (A016813 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A196960.P5180423166166626159

/-! ## A196960.P11811424567771827901

`record[A196967(or(1, A227041(n+1)))]`
-/

namespace A196960.P11811424567771827901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (Int.lor 1 (A227041 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196960.P11811424567771827901

/-!
# A196961: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196961, there is no canonical definition to state claims against.
-/

/-! ## A196961.P7742864533751117667

`A196967(∑[n+1]+2)`
-/

namespace A196961.P7742864533751117667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196961.P7742864533751117667

/-! ## A196961.P5811898179563724967

`record[A196967(A114091(n+1)+1)]`
-/

namespace A196961.P5811898179563724967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196961.P5811898179563724967

/-! ## A196961.P16554951359403399360

`record[A010054(n)*A196967(n+2)]`
-/

namespace A196961.P16554951359403399360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A196967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196961.P16554951359403399360

/-! ## A196961.P2605009824509968702

`A196967(A000096(n)+3)%A197669(n+1)`
-/

namespace A196961.P2605009824509968702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196967 (A000096 n + 3).toNat) (A197669 (n + 1))

end

end A196961.P2605009824509968702

/-! ## A196961.P15650988270057636286

`record[A196967(Δ[A003453(n+5)])]`
-/

namespace A196961.P15650988270057636286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196961.P15650988270057636286

/-!
# A196962: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196962, there is no canonical definition to state claims against.
-/

/-! ## A196962.P3222633895421770717

`A196967(∑[n+2]+4)`
-/

namespace A196962.P3222633895421770717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196962.P3222633895421770717

/-! ## A196962.P13137843358243986342

`A196967(A167614(n+1))+A185246(n)`
-/

namespace A196962.P13137843358243986342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A167614 (n + 1)).toNat + A185246 n

end

end A196962.P13137843358243986342

/-! ## A196962.P6153168208496706296

`A196967(A167614(n+1))*A269626(n)`
-/

namespace A196962.P6153168208496706296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A167614 (n + 1)).toNat * A269626 n

end

end A196962.P6153168208496706296

/-! ## A196962.P10276930159269234766

`lcm(A033999(n), A196967(A167614(n+1)))`
-/

namespace A196962.P10276930159269234766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196967 (A167614 (n + 1)).toNat)

end

end A196962.P10276930159269234766

/-! ## A196962.P15431271618504001741

`or(A000007(n), A196967(A167614(n+1)))`
-/

namespace A196962.P15431271618504001741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196967 (A167614 (n + 1)).toNat)

end

end A196962.P15431271618504001741

/-!
# A196963: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196963, there is no canonical definition to state claims against.
-/

/-! ## A196963.P3422332589736863727

`A196967(A374004(n+1))`
-/

namespace A196963.P3422332589736863727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374004 (n + 1)).toNat

end

end A196963.P3422332589736863727

/-! ## A196963.P6504921441197795134

`A196967(A141214(n)+7)`
-/

namespace A196963.P6504921441197795134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A141214 n + 7).toNat

end

end A196963.P6504921441197795134

/-! ## A196963.P941809255332301000

`A196967(A052905(n)+9)`
-/

namespace A196963.P941809255332301000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A052905 n + 9).toNat

end

end A196963.P941809255332301000

/-! ## A196963.P1277676987959470139

`A196967(A055999(n)+10)`
-/

namespace A196963.P1277676987959470139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A055999 n + 10).toNat

end

end A196963.P1277676987959470139

/-! ## A196963.P5202598979371667165

`A196967(A167614(n+2)+1)`
-/

namespace A196963.P5202598979371667165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A167614 (n + 2) + 1).toNat

end

end A196963.P5202598979371667165

/-!
# A196964: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196964, there is no canonical definition to state claims against.
-/

/-! ## A196964.P12565217725267191896

`A196967(A374005(n+1))`
-/

namespace A196964.P12565217725267191896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374005 (n + 1)).toNat

end

end A196964.P12565217725267191896

/-! ## A196964.P10111437721308174491

`A196967(A155212(n)+13)`
-/

namespace A196964.P10111437721308174491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A155212 n + 13).toNat

end

end A196964.P10111437721308174491

/-! ## A196964.P1021476137304607166

`A196967(eq[7, A066657(n)])`
-/

namespace A196964.P1021476137304607166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196964.P1021476137304607166

/-! ## A196964.P4792055166765988562

`A196967(eq[6, A131818(n+1)])`
-/

namespace A196964.P4792055166765988562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196964.P4792055166765988562

/-! ## A196964.P14722000763311683449

`A196967(Δ[A264443(n)])`
-/

namespace A196964.P14722000763311683449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (f1 (n + 1) - f1 n).toNat

end

end A196964.P14722000763311683449

/-!
# A196965: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196965, there is no canonical definition to state claims against.
-/

/-! ## A196965.P16505920566759654852

`A196967(A374007(n+1))`
-/

namespace A196965.P16505920566759654852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374007 (n + 1)).toNat

end

end A196965.P16505920566759654852

/-! ## A196965.P8042611636642161440

`A196967(eq[7, A131818(n+1)])`
-/

namespace A196965.P8042611636642161440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196965.P8042611636642161440

/-! ## A196965.P14700096856474828891

`A196967(A056119(n)+16)`
-/

namespace A196965.P14700096856474828891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A056119 n + 16).toNat

end

end A196965.P14700096856474828891

/-! ## A196965.P11281021741997468475

`A196967(eq[3, A219347(n)])`
-/

namespace A196965.P11281021741997468475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196965.P11281021741997468475

/-! ## A196965.P16642239475590159897

`A196967(eq[5, A193592(n)])`
-/

namespace A196965.P16642239475590159897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196965.P16642239475590159897

/-!
# A196966: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196966, there is no canonical definition to state claims against.
-/

/-! ## A196966.P56747621800412613

`A196967(A374008(n+1))`
-/

namespace A196966.P56747621800412613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374008 (n + 1)).toNat

end

end A196966.P56747621800412613

/-! ## A196966.P14297505652503613337

`A196967(A056119(n)+28)`
-/

namespace A196966.P14297505652503613337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A056119 n + 28).toNat

end

end A196966.P14297505652503613337

/-! ## A196966.P8716247293610549589

`A196967(eq[11, A066657(n)])`
-/

namespace A196966.P8716247293610549589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196966.P8716247293610549589

/-! ## A196966.P2809662018096268583

`A196967(A167499(n+5)+2)`
-/

namespace A196966.P2809662018096268583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A167499 (n + 5) + 2).toNat

end

end A196966.P2809662018096268583

/-! ## A196966.P10430793265149495354

`A196967(eq[8, A131818(n+1)])`
-/

namespace A196966.P10430793265149495354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196966.P10430793265149495354

/-!
# A196967: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196967, there is no canonical definition to state claims against.
-/

/-! ## A196967.P7449293207661487818

`A168134(A183474(n+1))`
-/

namespace A196967.P7449293207661487818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A183474 (n + 1)).toNat

end

end A196967.P7449293207661487818

/-! ## A196967.P16110413357009787293

`A283738(A220602(n+1))+A055376(n)`
-/

namespace A196967.P16110413357009787293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283738 (A220602 (n + 1)).toNat + A055376 n

end

end A196967.P16110413357009787293

/-!
# A196968: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196968, there is no canonical definition to state claims against.
-/

/-! ## A196968.P11248205535244758548

`A196974(∑[4*n]+1)`
-/

namespace A196968.P11248205535244758548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196968.P11248205535244758548

/-! ## A196968.P13265159119595445421

`record[A196974(Δ[A235355(n)])]`
-/

namespace A196968.P13265159119595445421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196968.P13265159119595445421

/-! ## A196968.P6432564104325348594

`record[A196974(A330613(n+1))]`
-/

namespace A196968.P6432564104325348594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196968.P6432564104325348594

/-! ## A196968.P7571966152372806204

`A196974(A001844(n))+char[9]`
-/

namespace A196968.P7571966152372806204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196968.P7571966152372806204

/-! ## A196968.P14412487754099273232

`record[A196974(abs(A069480(n+1)))]`
-/

namespace A196968.P14412487754099273232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 |A069480 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196968.P14412487754099273232

/-!
# A196969: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196969, there is no canonical definition to state claims against.
-/

/-! ## A196969.P13883080834872490997

`A196974(∑[n+2]+4)`
-/

namespace A196969.P13883080834872490997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196969.P13883080834872490997

/-! ## A196969.P1932668588810143273

`A014910(n)*A196974(A167614(n+1))`
-/

namespace A196969.P1932668588810143273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 n * A196974 (A167614 (n + 1)).toNat

end

end A196969.P1932668588810143273

/-! ## A196969.P6929579310830867283

`A196974(A167614(n+1))%A041154(n)`
-/

namespace A196969.P6929579310830867283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196974 (A167614 (n + 1)).toNat) (A041154 n)

end

end A196969.P6929579310830867283

/-! ## A196969.P5807225300084305026

`gcd(A000038(n), A196974(A167614(n+1)))`
-/

namespace A196969.P5807225300084305026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196974 (A167614 (n + 1)).toNat)

end

end A196969.P5807225300084305026

/-! ## A196969.P862423199158110190

`A335446(2*n+3)+A196974(A167614(n+1))`
-/

namespace A196969.P862423199158110190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (2 * n + 3) + A196974 (A167614 (n + 1)).toNat

end

end A196969.P862423199158110190

/-!
# A196970: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196970, there is no canonical definition to state claims against.
-/

/-! ## A196970.P2429303422842715772

`A196974(A374004(n+1))`
-/

namespace A196970.P2429303422842715772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A374004 (n + 1)).toNat

end

end A196970.P2429303422842715772

/-! ## A196970.P11823498984990937219

`A196974(A141214(n)+7)`
-/

namespace A196970.P11823498984990937219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A141214 n + 7).toNat

end

end A196970.P11823498984990937219

/-! ## A196970.P6003248559880087082

`A196974(A052905(n)+9)`
-/

namespace A196970.P6003248559880087082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A052905 n + 9).toNat

end

end A196970.P6003248559880087082

/-! ## A196970.P16502322505906496055

`A196974(A055999(n)+10)`
-/

namespace A196970.P16502322505906496055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A055999 n + 10).toNat

end

end A196970.P16502322505906496055

/-! ## A196970.P18048486839641627153

`A196974(A167614(n+2)+1)`
-/

namespace A196970.P18048486839641627153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A167614 (n + 2) + 1).toNat

end

end A196970.P18048486839641627153

/-!
# A196971: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196971, there is no canonical definition to state claims against.
-/

/-! ## A196971.P5048372377582031317

`A196974(A374005(n+1))`
-/

namespace A196971.P5048372377582031317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A374005 (n + 1)).toNat

end

end A196971.P5048372377582031317

/-! ## A196971.P2911736106305703135

`A196974(A167499(n+3))`
-/

namespace A196971.P2911736106305703135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A167499 (n + 3)).toNat

end

end A196971.P2911736106305703135

/-! ## A196971.P9575413368568315993

`A196974(A155212(n)+13)`
-/

namespace A196971.P9575413368568315993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A155212 n + 13).toNat

end

end A196971.P9575413368568315993

/-! ## A196971.P8348467097839023955

`A196974(A056000(n)+15)`
-/

namespace A196971.P8348467097839023955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A056000 n + 15).toNat

end

end A196971.P8348467097839023955

/-! ## A196971.P2751597934092490059

`A196974(eq[7, A066657(n)])`
-/

namespace A196971.P2751597934092490059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196971.P2751597934092490059

/-!
# A196972: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196972, there is no canonical definition to state claims against.
-/

/-! ## A196972.P6568352143371176018

`A196974(∑[n+5]+16)`
-/

namespace A196972.P6568352143371176018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A196972.P6568352143371176018

/-! ## A196972.P15346415058246158475

`A196974(A056115(n)+21)%A196321(n+1)`
-/

namespace A196972.P15346415058246158475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196974 (A056115 n + 21).toNat) (A196321 (n + 1))

end

end A196972.P15346415058246158475

/-! ## A196972.P16040169165165657783

`A196974(eq[7, A131818(n+1)])*A278657(n)`
-/

namespace A196972.P16040169165165657783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A278657 n

end

end A196972.P16040169165165657783

/-! ## A196972.P8888753709124928253

`A196974(A052905(n+3))%A000244(3*n+4)`
-/

namespace A196972.P8888753709124928253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196974 (A052905 (n + 3)).toNat) (A000244 (3 * n + 4))

end

end A196972.P8888753709124928253

/-!
# A196973: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196973, there is no canonical definition to state claims against.
-/

/-! ## A196973.P4712660272600181768

`A196974(A374008(n+1))`
-/

namespace A196973.P4712660272600181768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A374008 (n + 1)).toNat

end

end A196973.P4712660272600181768

/-! ## A196973.P4975028690038846015

`A196974(A056119(n)+28)`
-/

namespace A196973.P4975028690038846015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A056119 n + 28).toNat

end

end A196973.P4975028690038846015

/-! ## A196973.P8276692039403748595

`A196974(eq[11, A066657(n)])`
-/

namespace A196973.P8276692039403748595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196973.P8276692039403748595

/-! ## A196973.P2389625932991288840

`A196974(eq[8, A131818(n+1)])`
-/

namespace A196973.P2389625932991288840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196973.P2389625932991288840

/-! ## A196973.P13984363801495406759

`A196974(eq[4, A219347(n)])`
-/

namespace A196973.P13984363801495406759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196973.P13984363801495406759

/-!
# A196974: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196974, there is no canonical definition to state claims against.
-/

/-! ## A196974.P6894414844272330801

`A197561(n+1)-A184159(A099594(n))`
-/

namespace A196974.P6894414844272330801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A184159 (A099594 n).toNat

end

end A196974.P6894414844272330801

/-! ## A196974.P12639045432349348377

`A197561(n+1)-A163510(A157273(n))`
-/

namespace A196974.P12639045432349348377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A163510 (A157273 n).toNat

end

end A196974.P12639045432349348377

/-! ## A196974.P15775809760080076368

`A197561(n+1)-A178498(A255256(n))`
-/

namespace A196974.P15775809760080076368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A178498 (A255256 n).toNat

end

end A196974.P15775809760080076368

/-! ## A196974.P7934870882121236939

`A195098(A197561(n+1))`
-/

namespace A196974.P7934870882121236939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A197561 (n + 1)).toNat

end

end A196974.P7934870882121236939

/-! ## A196974.P9939514892979638006

`A197561(n+1)-A355451(A022175(n))`
-/

namespace A196974.P9939514892979638006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A355451 (A022175 n).toNat

end

end A196974.P9939514892979638006

/-!
# A196975: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196975, there is no canonical definition to state claims against.
-/

/-! ## A196975.P16275496036704846083

`A196982(∑[4*n]+1)`
-/

namespace A196975.P16275496036704846083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196975.P16275496036704846083

/-! ## A196975.P2928151514603479012

`A196982(A001844(n))+A193581(n)`
-/

namespace A196975.P2928151514603479012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A001844 n).toNat + A193581 n

end

end A196975.P2928151514603479012

/-! ## A196975.P17326078408581442886

`A196982(A001844(n))^A178489(n)`
-/

namespace A196975.P17326078408581442886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196982 (A001844 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A196975.P17326078408581442886

/-! ## A196975.P8641077493567336227

`gcd(A063667(n), A196982(A001844(n)))`
-/

namespace A196975.P8641077493567336227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063667 n) (A196982 (A001844 n).toNat)

end

end A196975.P8641077493567336227

/-! ## A196975.P6348191274076887460

`lcm(A168228(n), A196982(A001844(n)))`
-/

namespace A196975.P6348191274076887460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168228 n) (A196982 (A001844 n).toNat)

end

end A196975.P6348191274076887460

/-!
# A196976: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196976, the canonical program `A196976.P16543112779948657909` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196976 has offset 1).

The definition of A196976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196976.P16543112779948657909

`2*a(n-1)+a(n-2)+4*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=37, a(4)=104, a(5)=290`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196976

/-- `2*a(n-1)+a(n-2)+4*a(n-3)-2*a(n-4)-a(n-6)` -/
def P16543112779948657909.Spec : Prop :=
  ∀ n, P16543112779948657909.a n = A196976 (n + 1)

theorem P16543112779948657909.correct : P16543112779948657909.Spec := by
  intro n
  simp only [A196976, Nat.add_sub_cancel]

end A196976

/-! ## A196976.P13973191163677940591

`A196982(∑[n+1]+2)`
-/

namespace A196976.P13973191163677940591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196976.P13973191163677940591

namespace A196976

/-- `A196982(∑[n+1]+2)` -/
def P13973191163677940591.Spec : Prop :=
  ∀ n, P13973191163677940591.a n = A196976 (n + 1)

end A196976

/-! ## A196976.P13073910656395765501

`A197167(∑[n+1]+2)`
-/

namespace A196976.P13073910656395765501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196976.P13073910656395765501

namespace A196976

/-- `A197167(∑[n+1]+2)` -/
def P13073910656395765501.Spec : Prop :=
  ∀ n, P13073910656395765501.a n = A196976 (n + 1)

end A196976

/-! ## A196976.P10353546877445092194

`record[A010054(n)*A197167(n+2)]`
-/

namespace A196976.P10353546877445092194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A197167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196976.P10353546877445092194

namespace A196976

/-- `record[A010054(n)*A197167(n+2)]` -/
def P10353546877445092194.Spec : Prop :=
  ∀ n, P10353546877445092194.a n = A196976 (n + 1)

end A196976

/-! ## A196976.P15658043583346551642

`record[gcd(A196982(n+1), A259776(n))]`
-/

namespace A196976.P15658043583346551642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196982 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196976.P15658043583346551642

namespace A196976

/-- `record[gcd(A196982(n+1), A259776(n))]` -/
def P15658043583346551642.Spec : Prop :=
  ∀ n, (P15658043583346551642.a n : ℤ) = A196976 (n + 1)

end A196976

/-!
# A196977: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196977, there is no canonical definition to state claims against.
-/

/-! ## A196977.P565901275814795340

`A196982(∑[n+2]+4)`
-/

namespace A196977.P565901275814795340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196977.P565901275814795340

/-! ## A196977.P10477806836263552301

`or(char[2], A196982(A167614(n+1)))`
-/

namespace A196977.P10477806836263552301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196982 (A167614 (n + 1)).toNat)

end

end A196977.P10477806836263552301

/-! ## A196977.P8976992427366306475

`A196982(A167614(n+1))+A178798(n)`
-/

namespace A196977.P8976992427366306475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A167614 (n + 1)).toNat + A178798 n

end

end A196977.P8976992427366306475

/-! ## A196977.P15981370018185370632

`A196982(A167614(n+1))%A016964(n)`
-/

namespace A196977.P15981370018185370632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196982 (A167614 (n + 1)).toNat) (A016964 n)

end

end A196977.P15981370018185370632

/-! ## A196977.P9213109347146720213

`gcd(A000038(n), A196982(A167614(n+1)))`
-/

namespace A196977.P9213109347146720213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196982 (A167614 (n + 1)).toNat)

end

end A196977.P9213109347146720213

/-!
# A196978: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196978, there is no canonical definition to state claims against.
-/

/-! ## A196978.P13813387328291975736

`A196982(A374004(n+1))`
-/

namespace A196978.P13813387328291975736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374004 (n + 1)).toNat

end

end A196978.P13813387328291975736

/-! ## A196978.P11586934192543646158

`A196982(A141214(n)+7)`
-/

namespace A196978.P11586934192543646158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A141214 n + 7).toNat

end

end A196978.P11586934192543646158

/-! ## A196978.P17458408390534421322

`A196982(A052905(n)+9)`
-/

namespace A196978.P17458408390534421322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A052905 n + 9).toNat

end

end A196978.P17458408390534421322

/-! ## A196978.P7493436555032010517

`A196982(A055999(n)+10)`
-/

namespace A196978.P7493436555032010517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A055999 n + 10).toNat

end

end A196978.P7493436555032010517

/-! ## A196978.P13861012127805248542

`A196982(A167614(n+2)+1)`
-/

namespace A196978.P13861012127805248542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A167614 (n + 2) + 1).toNat

end

end A196978.P13861012127805248542

/-!
# A196979: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196979, there is no canonical definition to state claims against.
-/

/-! ## A196979.P15269973382742210710

`A196982(A374005(n+1))`
-/

namespace A196979.P15269973382742210710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374005 (n + 1)).toNat

end

end A196979.P15269973382742210710

/-! ## A196979.P17938491383728311548

`A196982(A167499(n+3))`
-/

namespace A196979.P17938491383728311548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A167499 (n + 3)).toNat

end

end A196979.P17938491383728311548

/-! ## A196979.P3568187834414399809

`A196982(A056000(n)+15)`
-/

namespace A196979.P3568187834414399809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A056000 n + 15).toNat

end

end A196979.P3568187834414399809

/-! ## A196979.P1234045581264343377

`A196982(eq[7, A066657(n)])`
-/

namespace A196979.P1234045581264343377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196979.P1234045581264343377

/-! ## A196979.P1947961485283406114

`A196982(A051936(n+4)+14)`
-/

namespace A196979.P1947961485283406114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A051936 (n + 4) + 14).toNat

end

end A196979.P1947961485283406114

/-!
# A196980: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196980, there is no canonical definition to state claims against.
-/

/-! ## A196980.P7806872212859844647

`A196982(A374007(n+1))`
-/

namespace A196980.P7806872212859844647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374007 (n + 1)).toNat

end

end A196980.P7806872212859844647

/-! ## A196980.P5318651121994086618

`A196982(eq[7, A131818(n+1)])`
-/

namespace A196980.P5318651121994086618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196980.P5318651121994086618

/-! ## A196980.P690370687130604733

`A196982(A056119(n)+16)`
-/

namespace A196980.P690370687130604733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A056119 n + 16).toNat

end

end A196980.P690370687130604733

/-! ## A196980.P18374157393852653377

`A196982(eq[3, A219347(n)])`
-/

namespace A196980.P18374157393852653377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196980.P18374157393852653377

/-! ## A196980.P5005845913911007562

`A196982(eq[5, A193592(n)])`
-/

namespace A196980.P5005845913911007562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196980.P5005845913911007562

/-!
# A196981: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196981, there is no canonical definition to state claims against.
-/

/-! ## A196981.P16391870847500866306

`A196982(A374008(n+1))`
-/

namespace A196981.P16391870847500866306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374008 (n + 1)).toNat

end

end A196981.P16391870847500866306

/-! ## A196981.P15224695237592727511

`A196982(A056119(n)+28)`
-/

namespace A196981.P15224695237592727511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A056119 n + 28).toNat

end

end A196981.P15224695237592727511

/-! ## A196981.P5670539058401281075

`A196982(eq[11, A066657(n)])`
-/

namespace A196981.P5670539058401281075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196981.P5670539058401281075

/-! ## A196981.P17664194559542099008

`A196982(A167499(n+5)+2)`
-/

namespace A196981.P17664194559542099008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A167499 (n + 5) + 2).toNat

end

end A196981.P17664194559542099008

/-! ## A196981.P11097588833318676553

`A196982(eq[8, A131818(n+1)])`
-/

namespace A196981.P11097588833318676553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196981.P11097588833318676553

/-!
# A196982: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196982, there is no canonical definition to state claims against.
-/

/-! ## A196982.P9628180874410088774

`A197167(n+1)+A016389(A022166(n))`
-/

namespace A196982.P9628180874410088774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) + A016389 (A022166 n).toNat

end

end A196982.P9628180874410088774

/-! ## A196982.P10027165484930986170

`A197167(n+1)+A016389(A176561(n))`
-/

namespace A196982.P10027165484930986170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) + A016389 (A176561 n).toNat

end

end A196982.P10027165484930986170

/-! ## A196982.P4136104050889832821

`A197167(n+1)-A007814(A157156(n))`
-/

namespace A196982.P4136104050889832821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) - A007814 (A157156 n).toNat

end

end A196982.P4136104050889832821

/-! ## A196982.P6103433266270432162

`A197167(n+1)-A178798(A039756(n))`
-/

namespace A196982.P6103433266270432162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) - A178798 (A039756 n).toNat

end

end A196982.P6103433266270432162

/-! ## A196982.P12807539546103107581

`A197167(n+1)-A212619(A046937(n))`
-/

namespace A196982.P12807539546103107581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) - A212619 (A046937 n).toNat

end

end A196982.P12807539546103107581

/-!
# A196983: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196983, there is no canonical definition to state claims against.
-/

/-! ## A196983.P9594837196987722724

`A196989(∑[4*n]+1)`
-/

namespace A196983.P9594837196987722724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196983.P9594837196987722724

/-! ## A196983.P2267930102666501779

`A196989(A001844(n))+A184964(n)`
-/

namespace A196983.P2267930102666501779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A001844 n).toNat + A184964 n

end

end A196983.P2267930102666501779

/-! ## A196983.P775263782330445947

`gcd(A000038(n), A196989(A001844(n)))`
-/

namespace A196983.P775263782330445947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196989 (A001844 n).toNat)

end

end A196983.P775263782330445947

/-! ## A196983.P3781733559314554487

`or(A010057(n), A196989(A001844(n)))`
-/

namespace A196983.P3781733559314554487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 n) (A196989 (A001844 n).toNat)

end

end A196983.P3781733559314554487

/-! ## A196983.P15950243311861653806

`A196989(A001844(n))+A089456(n+1)`
-/

namespace A196983.P15950243311861653806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A001844 n).toNat + A089456 (n + 1)

end

end A196983.P15950243311861653806

/-!
# A196984: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196984, there is no canonical definition to state claims against.
-/

/-! ## A196984.P5137924267297415708

`A196989(∑[n+2]+4)`
-/

namespace A196984.P5137924267297415708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196984.P5137924267297415708

/-! ## A196984.P4839801896941276625

`A196989(A167614(n+1))+A011739(n)`
-/

namespace A196984.P4839801896941276625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A167614 (n + 1)).toNat + A011739 n

end

end A196984.P4839801896941276625

/-! ## A196984.P3924170752395067125

`A196989(A167614(n+1))%A000747(n)`
-/

namespace A196984.P3924170752395067125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196989 (A167614 (n + 1)).toNat) (A000747 n)

end

end A196984.P3924170752395067125

/-! ## A196984.P5680296838730047704

`or(A000007(n), A196989(A167614(n+1)))`
-/

namespace A196984.P5680296838730047704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196989 (A167614 (n + 1)).toNat)

end

end A196984.P5680296838730047704

/-! ## A196984.P8430798965456402134

`or(A010054(n), A196989(A167614(n+1)))`
-/

namespace A196984.P8430798965456402134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A196989 (A167614 (n + 1)).toNat)

end

end A196984.P8430798965456402134

/-!
# A196985: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196985, there is no canonical definition to state claims against.
-/

/-! ## A196985.P784613038068496791

`A196989(A374004(n+1))`
-/

namespace A196985.P784613038068496791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374004 (n + 1)).toNat

end

end A196985.P784613038068496791

/-! ## A196985.P9548131130240171537

`A196989(A167614(n+2)+1)`
-/

namespace A196985.P9548131130240171537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A167614 (n + 2) + 1).toNat

end

end A196985.P9548131130240171537

/-! ## A196985.P6779663697811931356

`A196989(A000217(n+4)-n)`
-/

namespace A196985.P6779663697811931356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A196985.P6779663697811931356

/-! ## A196985.P7091384810180782993

`A196989(A249725(Δ[A081585(n)]))`
-/

namespace A196985.P7091384810180782993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A249725 (f1 (n + 1) - f1 n).toNat).toNat

end

end A196985.P7091384810180782993

/-! ## A196985.P7307101793309170499

`A196989(A141214(n+1))`
-/

namespace A196985.P7307101793309170499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A141214 (n + 1)).toNat

end

end A196985.P7307101793309170499

/-!
# A196986: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196986, there is no canonical definition to state claims against.
-/

/-! ## A196986.P1148317590383672528

`A196989(A374005(n+1))`
-/

namespace A196986.P1148317590383672528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374005 (n + 1)).toNat

end

end A196986.P1148317590383672528

/-! ## A196986.P17611826883401949723

`A196989(A167499(n+3))`
-/

namespace A196986.P17611826883401949723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A167499 (n + 3)).toNat

end

end A196986.P17611826883401949723

/-! ## A196986.P18074058757277584163

`A196989(A077169(n+5))`
-/

namespace A196986.P18074058757277584163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A077169 (n + 5)).toNat

end

end A196986.P18074058757277584163

/-! ## A196986.P14650110973776303407

`record[A196989(A077169(A028242(n)))]`
-/

namespace A196986.P14650110973776303407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A077169 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196986.P14650110973776303407

/-! ## A196986.P5008303833893572274

`record[A196989(A077169(A028920(n)))]`
-/

namespace A196986.P5008303833893572274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A077169 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196986.P5008303833893572274

/-!
# A196987: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196987, there is no canonical definition to state claims against.
-/

/-! ## A196987.P14876624078597501829

`A196989(A374007(n+1))`
-/

namespace A196987.P14876624078597501829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374007 (n + 1)).toNat

end

end A196987.P14876624078597501829

/-! ## A196987.P16275893953308453618

`A196989(eq[7, A131818(n+1)])`
-/

namespace A196987.P16275893953308453618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196987.P16275893953308453618

/-! ## A196987.P13261245395116526155

`A196989(eq[3, A219347(n)])`
-/

namespace A196987.P13261245395116526155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196987.P13261245395116526155

/-! ## A196987.P1897135846928963086

`A196989(eq[5, A193592(n)])`
-/

namespace A196987.P1897135846928963086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196987.P1897135846928963086

/-! ## A196987.P14283586109354985571

`A196989(eq[16, A166065(n)])`
-/

namespace A196987.P14283586109354985571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196987.P14283586109354985571

/-!
# A196988: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196988, there is no canonical definition to state claims against.
-/

/-! ## A196988.P8087780233204058838

`A196989(A374008(n+1))`
-/

namespace A196988.P8087780233204058838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374008 (n + 1)).toNat

end

end A196988.P8087780233204058838

/-! ## A196988.P17349975456761168816

`A196989(A056119(n)+28)`
-/

namespace A196988.P17349975456761168816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A056119 n + 28).toNat

end

end A196988.P17349975456761168816

/-! ## A196988.P3804309547154401422

`A196989(eq[11, A066657(n)])`
-/

namespace A196988.P3804309547154401422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196988.P3804309547154401422

/-! ## A196988.P548865719148874080

`A196989(A167499(n+5)+2)`
-/

namespace A196988.P548865719148874080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A167499 (n + 5) + 2).toNat

end

end A196988.P548865719148874080

/-! ## A196988.P482146810634726901

`A196989(A000124(n+6)+6)`
-/

namespace A196988.P482146810634726901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A000124 (n + 6) + 6).toNat

end

end A196988.P482146810634726901

/-!
# A196989: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196989, there is no canonical definition to state claims against.
-/

/-! ## A196989.P9767904539615569296

`A112649(A010048(n))`
-/

namespace A196989.P9767904539615569296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112649 (A010048 n).toNat

end

end A196989.P9767904539615569296

/-! ## A196989.P14905611623340796810

`A341866(A001263(n+1)*A134743(2*n+5))`
-/

namespace A196989.P14905611623340796810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A001263 (n + 1) * A134743 (2 * n + 5)).toNat

end

end A196989.P14905611623340796810

/-! ## A196989.P16935776324482457464

`A341866(A001263(n+1)%A276686(2*n+3))`
-/

namespace A196989.P16935776324482457464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (Int.tmod (A001263 (n + 1)) (A276686 (2 * n + 3))).toNat

end

end A196989.P16935776324482457464

/-!
# A196990: Numbers that are not the sum of two powers of 3.

The programs for A196990, the canonical program `A196990.P18258906891497550304` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196990 has offset 1).

The definition of A196990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196990.P18258906891497550304

`lt[(-1)^n, a(floor(n/3))+n%3]` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196990

/-- `lt[(-1)^n, a(floor(n/3))+n%3]` -/
def P18258906891497550304.Spec : Prop :=
  ∀ n, (P18258906891497550304.a n : ℤ) = A196990 (n + 1)

theorem P18258906891497550304.correct : P18258906891497550304.Spec := by
  intro n
  simp only [A196990, Nat.add_sub_cancel]

end A196990

/-! ## A196990.P3093722835363041716

`comp[eq[1, a(n-1)+1-val(n², 3)]]` with `a(0)=1, a(1)=0`
-/

namespace A196990.P3093722835363041716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + (1 - (SequenceMachineLib.valuation (n ^ 2) 3 : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196990.P3093722835363041716

namespace A196990

/-- `comp[eq[1, a(n-1)+1-val(n², 3)]]` -/
def P3093722835363041716.Spec : Prop :=
  ∀ n, (P3093722835363041716.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P16335872580056276976

`lt[a(n-1)+val(n, 3), lcm(2, n+2)/2]` with `a(0)=2`
-/

namespace A196990.P16335872580056276976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A196990.P16335872580056276976

namespace A196990

/-- `lt[a(n-1)+val(n, 3), lcm(2, n+2)/2]` -/
def P16335872580056276976.Spec : Prop :=
  ∀ n, (P16335872580056276976.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P9399115035641874437

`lt[a(n-1)+val(n, 3), (n+2)*(xor(n, n+1)+1)/4]` with `a(0)=2`
-/

namespace A196990.P9399115035641874437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.xor n (n + 1) + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A196990.P9399115035641874437

namespace A196990

/-- `lt[a(n-1)+val(n, 3), (n+2)*(xor(n, n+1)+1)/4]` -/
def P9399115035641874437.Spec : Prop :=
  ∀ n, (P9399115035641874437.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P6145789392397840175

`lt[(n+2)*(1-gcd(n+3, n-1)/2), a(n-1)+1-val(n, 3)]` with `a(0)=0`
-/

namespace A196990.P6145789392397840175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (1 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 3 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A196990.P6145789392397840175

namespace A196990

/-- `lt[(n+2)*(1-gcd(n+3, n-1)/2), a(n-1)+1-val(n, 3)]` -/
def P6145789392397840175.Spec : Prop :=
  ∀ n, (P6145789392397840175.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P15926398963837528777

`lt[2, or(2, A053735(n))]`
-/

namespace A196990.P15926398963837528777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A053735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196990.P15926398963837528777

namespace A196990

/-- `lt[2, or(2, A053735(n))]` -/
def P15926398963837528777.Spec : Prop :=
  ∀ n, (P15926398963837528777.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P4881776422528374506

`lt[2, or(2, A119994(n))]`
-/

namespace A196990.P4881776422528374506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A119994 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196990.P4881776422528374506

namespace A196990

/-- `lt[2, or(2, A119994(n))]` -/
def P4881776422528374506.Spec : Prop :=
  ∀ n, (P4881776422528374506.a n : ℤ) = A196990 (n + 1)

end A196990

/-!
# A196991: Number of fixed polycairos with n cells.

The programs for A196991, there is no canonical definition to state claims against.
-/

/-! ## A196991.P10780595427116644884

`A303492(A334198(n+1))`
-/

namespace A196991.P10780595427116644884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303492 (A334198 (n + 1)).toNat

end

end A196991.P10780595427116644884

/-!
# A196992: Number of fixed polykites with n cells.

The programs for A196992, there is no canonical definition to state claims against.
-/

/-! ## A196992.P7195083163596726900

`A113318(A097538(n+1))+4`
-/

namespace A196992.P7195083163596726900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113318 (A097538 (n + 1)).toNat + 4

end

end A196992.P7195083163596726900

/-!
# A196993: Number of fixed polypons with n cells (division into triangles is significant).

The programs for A196993, there is no canonical definition to state claims against.
-/

/-! ## A196993.P9966513649851298465

`A000006(∑[(4-6/(n+1))*a(n-1)])` with `a(0)=12`
-/

namespace A196993.P9966513649851298465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [12] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196993.P9966513649851298465

/-! ## A196993.P6333513460619193179

`A000006(12*A014137(n))`
-/

namespace A196993.P6333513460619193179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (12 * A014137 n).toNat

end

end A196993.P6333513460619193179

/-! ## A196993.P2269824231296345426

`A191838(A123916(n+1))+A123916(n+4)`
-/

namespace A196993.P2269824231296345426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191838 (A123916 (n + 1)).toNat + A123916 (n + 4)

end

end A196993.P2269824231296345426

/-! ## A196993.P1876464943088788655

`A046693(A295691(n+4))+A016116(2*(n+1))`
-/

namespace A196993.P1876464943088788655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A295691 (n + 4)).toNat + A016116 (2 * (n + 1))

end

end A196993.P1876464943088788655

