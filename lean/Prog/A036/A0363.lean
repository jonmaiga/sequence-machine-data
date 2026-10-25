import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A036301: Numbers whose sum of even digits and sum of odd digits are equal.

The programs for A036301, the canonical program `A036301.P5693948607095979032` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036301 has offset 1).

The definition of A036301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036301.P5693948607095979032

`eq[n, A304439(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036301

/-- `eq[n, A304439(n)]` -/
def P5693948607095979032.Spec : Prop :=
  ∀ n, (P5693948607095979032.a n : ℤ) = A036301 (n + 1)

theorem P5693948607095979032.correct : P5693948607095979032.Spec := by
  intro n
  simp only [A036301, Nat.add_sub_cancel]

end A036301

/-! ## A036301.P1126017425270435325

`eq[n, A304440(n)]`
-/

namespace A036301.P1126017425270435325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036301.P1126017425270435325

namespace A036301

/-- `eq[n, A304440(n)]` -/
def P1126017425270435325.Spec : Prop :=
  ∀ n, (P1126017425270435325.a n : ℤ) = A036301 (n + 1)

end A036301

/-! ## A036301.P9584293798865897562

`eq[A000007(n), A071650(A028310(n))]`
-/

namespace A036301.P9584293798865897562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036301.P9584293798865897562

namespace A036301

/-- `eq[A000007(n), A071650(A028310(n))]` -/
def P9584293798865897562.Spec : Prop :=
  ∀ n, (P9584293798865897562.a n : ℤ) = A036301 (n + 1)

end A036301

/-! ## A036301.P1081611155297735021

`eq[A071650(A028310(n)), A130706(n)]`
-/

namespace A036301.P1081611155297735021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036301.P1081611155297735021

namespace A036301

/-- `eq[A071650(A028310(n)), A130706(n)]` -/
def P1081611155297735021.Spec : Prop :=
  ∀ n, (P1081611155297735021.a n : ℤ) = A036301 (n + 1)

end A036301

/-! ## A036301.P9974873973758983290

`eq[1, A071650(A028310(n))+A057427(n)]`
-/

namespace A036301.P9974873973758983290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036301.P9974873973758983290

namespace A036301

/-- `eq[1, A071650(A028310(n))+A057427(n)]` -/
def P9974873973758983290.Spec : Prop :=
  ∀ n, (P9974873973758983290.a n : ℤ) = A036301 (n + 1)

end A036301

/-! ## A036301.P8727525613688353099

`eq[2*A071650(A028310(n)), A000038(n)]`
-/

namespace A036301.P8727525613688353099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071650 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036301.P8727525613688353099

namespace A036301

/-- `eq[2*A071650(A028310(n)), A000038(n)]` -/
def P8727525613688353099.Spec : Prop :=
  ∀ n, (P8727525613688353099.a n : ℤ) = A036301 (n + 1)

end A036301

/-! ## A036301.P11259354789829680447

`eq[A000007(n), A071650(A000007(n)+n)]`
-/

namespace A036301.P11259354789829680447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036301.P11259354789829680447

namespace A036301

/-- `eq[A000007(n), A071650(A000007(n)+n)]` -/
def P11259354789829680447.Spec : Prop :=
  ∀ n, (P11259354789829680447.a n : ℤ) = A036301 (n + 1)

end A036301

/-! ## A036301.P12119832249955586239

`eq[A071650(A130706(n)+n), A130706(n)]`
-/

namespace A036301.P12119832249955586239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A130706 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036301.P12119832249955586239

namespace A036301

/-- `eq[A071650(A130706(n)+n), A130706(n)]` -/
def P12119832249955586239.Spec : Prop :=
  ∀ n, (P12119832249955586239.a n : ℤ) = A036301 (n + 1)

end A036301

/-!
# A036302: Composite numbers k such that the digits of the prime factors of k are either 1 or 2.

The programs for A036302, there is no canonical definition to state claims against.
-/

/-! ## A036302.P3957434353470362235

`∩[A003596(n+1), A179614(n+1)]`
-/

namespace A036302.P3957434353470362235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036302.P3957434353470362235

/-! ## A036302.P8671483470002216624

`∩[A003596(n+1), A209799(n+1)]`
-/

namespace A036302.P8671483470002216624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036302.P8671483470002216624

/-! ## A036302.P8153675487798222322

`∩[A179614(n+1), A385344(n+1)]`
-/

namespace A036302.P8153675487798222322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036302.P8153675487798222322

/-! ## A036302.P14584541702543898167

`∩[A209799(n+1), A385344(n+1)]`
-/

namespace A036302.P14584541702543898167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036302.P14584541702543898167

/-!
# A036305: Composite numbers whose prime factors contain no digits other than 1 and 5.

The programs for A036305, there is no canonical definition to state claims against.
-/

/-! ## A036305.P2822592531649740517

`A003598(A032555(n+3)+1)`
-/

namespace A036305.P2822592531649740517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003598 (A032555 (n + 3) + 1).toNat

end

end A036305.P2822592531649740517

/-! ## A036305.P14970352558998117279

`A003598(A032559(n+3)+1)`
-/

namespace A036305.P14970352558998117279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003598 (A032559 (n + 3) + 1).toNat

end

end A036305.P14970352558998117279

/-! ## A036305.P2934586257156599742

`A003598(n+4)^A172091(n)²`
-/

namespace A036305.P2934586257156599742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003598 (n + 4) : ℚ) ^ (A172091 n ^ 2 : ℤ)

end

end A036305.P2934586257156599742

/-!
# A036307: Composite numbers whose prime factors contain no digits other than 1 and 7.

The programs for A036307, there is no canonical definition to state claims against.
-/

/-! ## A036307.P6852238641736102646

`A212600(A214679(2*n+3)+A124340(3*n+1))`
-/

namespace A036307.P6852238641736102646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212600 (A214679 (2 * n + 3) + A124340 (3 * n + 1)).toNat

end

end A036307.P6852238641736102646

/-!
# A036310: Composite numbers whose prime factors contain no digits other than 2 and 3.

The programs for A036310, there is no canonical definition to state claims against.
-/

/-! ## A036310.P7679505066024236858

`A003586(n+4)-A046660(A298539(n+1))`
-/

namespace A036310.P7679505066024236858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 4) - A046660 (A298539 (n + 1)).toNat

end

end A036310.P7679505066024236858

/-! ## A036310.P9028256893485473086

`A003586(n+4)-A184945(A227310(2*(n+2)))`
-/

namespace A036310.P9028256893485473086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 4) - A184945 (A227310 (2 * (n + 2))).toNat

end

end A036310.P9028256893485473086

/-! ## A036310.P10209887167446131676

`A003586(n+4)-A010894(A359908(3*n+2))`
-/

namespace A036310.P10209887167446131676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 4) - A010894 ((A359908 (3 * n + 2)).toNat + 21)

end

end A036310.P10209887167446131676

/-! ## A036310.P3182111248185117585

`record[A332294(n+8)]`
-/

namespace A036310.P3182111248185117585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036310.P3182111248185117585

/-! ## A036310.P339000874561451904

`record[gcd(n, A027856(n+1))]`
-/

namespace A036310.P339000874561451904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027856 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036310.P339000874561451904

/-!
# A036311: Composite numbers whose prime factors contain no digits other than 2 and 5.

The programs for A036311, there is no canonical definition to state claims against.
-/

/-! ## A036311.P15947677429664161749

`A003592(A009005(n+1))`
-/

namespace A036311.P15947677429664161749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A009005 (n + 1)).toNat

end

end A036311.P15947677429664161749

/-! ## A036311.P9565853221935789201

`A003592(A242963(n+1)-2)`
-/

namespace A036311.P9565853221935789201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A242963 (n + 1) - 2).toNat

end

end A036311.P9565853221935789201

/-! ## A036311.P17583180226922761599

`A003592(4-A000007(n)+n)`
-/

namespace A036311.P17583180226922761599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (4 - A000007 n + (n : ℤ)).toNat

end

end A036311.P17583180226922761599

/-! ## A036311.P1809745329510591571

`A003592(A157532(n+1)+1+n)`
-/

namespace A036311.P1809745329510591571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A157532 (n + 1) + 1 + (n : ℤ)).toNat

end

end A036311.P1809745329510591571

/-! ## A036311.P17178808953523474973

`A003592(n+4-A019590(n+2))`
-/

namespace A036311.P17178808953523474973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 ((n + 4 : ℤ) - A019590 (n + 2)).toNat

end

end A036311.P17178808953523474973

/-! ## A036311.P15830141164334056541

`A003592(2*n+3-A289207(n+1))`
-/

namespace A036311.P15830141164334056541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 ((2 * n + 3 : ℤ) - A289207 (n + 1)).toNat

end

end A036311.P15830141164334056541

/-! ## A036311.P918051678996397301

`A003592(p?[A020639(n+1)+1]+n+1)`
-/

namespace A036311.P918051678996397301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)).toNat

end

end A036311.P918051678996397301

/-! ## A036311.P7426756751912154312

`A003592(A078832((n+1)²)+n+2)`
-/

namespace A036311.P7426756751912154312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A078832 ((n + 1) ^ 2) + (n + 2 : ℤ)).toNat

end

end A036311.P7426756751912154312

/-! ## A036311.P12893416880826202703

`∩[A003592(n+1), A046349(n+1)]`
-/

namespace A036311.P12893416880826202703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036311.P12893416880826202703

/-!
# A036312: Composite numbers whose prime factors contain no digits other than 2 and 7.

The programs for A036312, there is no canonical definition to state claims against.
-/

/-! ## A036312.P13907087970511002661

`A003591(A061395(A000079(n))+n+3)`
-/

namespace A036312.P13907087970511002661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (A061395 (A000079 n).toNat + (n + 3 : ℤ)).toNat

end

end A036312.P13907087970511002661

/-! ## A036312.P3814686967613877520

`∩[A003591(n+1), A351099(n+1)]`
-/

namespace A036312.P3814686967613877520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036312.P3814686967613877520

/-! ## A036312.P1809262619848508782

`A003591(n+4)-A049283(A000051(n))`
-/

namespace A036312.P1809262619848508782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 4) - A049283 (A000051 n).toNat

end

end A036312.P1809262619848508782

/-! ## A036312.P7731914858021438395

`∩[A003591(n+1), A157695(n+1)]`
-/

namespace A036312.P7731914858021438395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036312.P7731914858021438395

/-! ## A036312.P13115552457240606407

`∩[A108319(n+1), A157695(n+1)]`
-/

namespace A036312.P13115552457240606407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036312.P13115552457240606407

/-!
# A036313: Composite numbers whose prime factors contain no digits other than 2 and 9.

The programs for A036313, there is no canonical definition to state claims against.
-/

/-! ## A036313.P17606312507567971500

`∩[A052054(n+1), A354776(n+1)]`
-/

namespace A036313.P17606312507567971500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036313.P17606312507567971500

/-! ## A036313.P2398374295990033301

`∩[A320630(n+1), A391290(n+1)]`
-/

namespace A036313.P2398374295990033301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036313.P2398374295990033301

/-! ## A036313.P15633084462739492726

`∩[A100657(n+1), A328607(n)]`
-/

namespace A036313.P15633084462739492726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036313.P15633084462739492726

/-! ## A036313.P11609153716830477063

`∩[A052054(n+1), A334267(n+1)]`
-/

namespace A036313.P11609153716830477063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036313.P11609153716830477063

/-! ## A036313.P6048556443719296895

`∩[A100657(n+1), A334267(n+1)]`
-/

namespace A036313.P6048556443719296895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036313.P6048556443719296895

/-!
# A036314: Composite numbers whose prime factors contain no digits other than 3 and 4.

The programs for A036314, there is no canonical definition to state claims against.
-/

/-! ## A036314.P13121151565616007904

`A305733(∑[∑[2*gcd(n, n%2)]+1]+1)`
-/

namespace A036314.P13121151565616007904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036314.P13121151565616007904

/-!
# A036315: Composite numbers whose prime factors contain no digits other than 3 and 5.

The programs for A036315, there is no canonical definition to state claims against.
-/

/-! ## A036315.P11762962234443771842

`A003593(A032555(n+1)+3)`
-/

namespace A036315.P11762962234443771842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (A032555 (n + 1) + 3).toNat

end

end A036315.P11762962234443771842

/-! ## A036315.P15902026740511190534

`A003593(A032559(n+1)+3)`
-/

namespace A036315.P15902026740511190534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (A032559 (n + 1) + 3).toNat

end

end A036315.P15902026740511190534

/-! ## A036315.P16922225679899361849

`A015965(A032555(n+1)+3)`
-/

namespace A036315.P16922225679899361849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (A032555 (n + 1) + 3).toNat

end

end A036315.P16922225679899361849

/-! ## A036315.P12163170737431911847

`filter[A177078(n+3), A086299(#)]`
-/

namespace A036315.P12163170737431911847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177078 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A036315.P12163170737431911847

/-! ## A036315.P7821081170318463337

`∩[A003593(n+1), A096529(n+1)]`
-/

namespace A036315.P7821081170318463337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036315.P7821081170318463337

/-!
# A036316: Composite numbers whose prime factors contain no digits other than 3 and 7.

The programs for A036316, there is no canonical definition to state claims against.
-/

/-! ## A036316.P9443320985234365540

`A057493(n+4)%A133027(n+5)`
-/

namespace A036316.P9443320985234365540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057493 (n + 4)) (A133027 (n + 5))

end

end A036316.P9443320985234365540

/-! ## A036316.P13457944198252404676

`∩[A057493(n+1), A209799(n+1)]`
-/

namespace A036316.P13457944198252404676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036316.P13457944198252404676

/-! ## A036316.P11334486221287509191

`∩[A057493(n+1), A355431(n+1)]`
-/

namespace A036316.P11334486221287509191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036316.P11334486221287509191

/-! ## A036316.P7973966723343077890

`A185012(A001353(n))+A057493(n+4)`
-/

namespace A036316.P7973966723343077890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A001353 n).toNat + A057493 (n + 4)

end

end A036316.P7973966723343077890

/-!
# A036317: Composite numbers whose prime factors contain no digits other than 3 and 8.

The programs for A036317, there is no canonical definition to state claims against.
-/

/-! ## A036317.P15470986608838510606

`filter[A057232(n+2), A257800(#)]`
-/

namespace A036317.P15470986608838510606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257800 (f1 j).toNat = 1) n)

end

end A036317.P15470986608838510606

/-! ## A036317.P7877539429287931766

`A057232(C(A300273(n+2), A239957(n+1)))`
-/

namespace A036317.P7877539429287931766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057232 (Nat.choose (A300273 (n + 2)).toNat (A239957 (n + 1)).toNat)

end

end A036317.P7877539429287931766

/-!
# A036320: Composite numbers whose prime factors contain no digits other than 5 and 7.

The programs for A036320, there is no canonical definition to state claims against.
-/

/-! ## A036320.P17922471205354349226

`A057253(A382083(n+2))`
-/

namespace A036320.P17922471205354349226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057253 (A382083 (n + 2)).toNat

end

end A036320.P17922471205354349226

/-! ## A036320.P15271346333541840283

`A057253(A062003(n)+4)`
-/

namespace A036320.P15271346333541840283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057253 (A062003 n + 4).toNat

end

end A036320.P15271346333541840283

/-! ## A036320.P4920853670202551118

`A057253(A004917(n+1)+4)`
-/

namespace A036320.P4920853670202551118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057253 (A004917 (n + 1) + 4).toNat

end

end A036320.P4920853670202551118

/-! ## A036320.P2878252178327839906

`A065330(4*A003595(n+4))`
-/

namespace A036320.P2878252178327839906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (4 * A003595 (n + 4)).toNat

end

end A036320.P2878252178327839906

/-! ## A036320.P16033008398844565909

`A065330(lcm(4, A003595(n+4)))`
-/

namespace A036320.P16033008398844565909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (Int.lcm 4 (A003595 (n + 4)))

end

end A036320.P16033008398844565909

/-!
# A036321: Composite numbers whose prime factors contain no digits other than 5 and 9.

The programs for A036321, there is no canonical definition to state claims against.
-/

/-! ## A036321.P16123640047464145256

`A062672(∑[A084938(3*n+1)!])`
-/

namespace A036321.P16123640047464145256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084938 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062672 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036321.P16123640047464145256

/-!
# A036326: Composite numbers n such that juxtaposition of prime factors of n has length 2.

The programs for A036326, there is no canonical definition to state claims against.
-/

/-! ## A036326.P4789858282132668894

`A078972(comp[11*n])`
-/

namespace A036326.P4789858282132668894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A036326.P4789858282132668894

/-! ## A036326.P8663069309854965377

`A078972(n+1)%50`
-/

namespace A036326.P8663069309854965377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078972 (n + 1)) 50

end

end A036326.P8663069309854965377

/-! ## A036326.P2666920198952119492

`record[∏{digits}[A106555(n+1), #]]`
-/

namespace A036326.P2666920198952119492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106555 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036326.P2666920198952119492

/-! ## A036326.P3127068071305248904

`record[∏{digits}[A106556(n+1), #]]`
-/

namespace A036326.P3127068071305248904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036326.P3127068071305248904

/-! ## A036326.P2765354708628114694

`record[A078972(∏{digits}[n, gcd(#, #!²)])]`
-/

namespace A036326.P2765354708628114694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036326.P2765354708628114694

/-!
# A036327: Composite numbers n such that juxtaposition of prime factors of n has length 3.

The programs for A036327, there is no canonical definition to state claims against.
-/

/-! ## A036327.P3514326467331344334

`eq[3, A076649(A000196(n²+3))]`
-/

namespace A036327.P3514326467331344334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A000196 (n ^ 2 + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036327.P3514326467331344334

/-! ## A036327.P17335995432013147283

`eq[A060445(n²+6+n), A076649(n+1)]+1`
-/

namespace A036327.P17335995432013147283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (n ^ 2 + 6 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036327.P17335995432013147283

/-! ## A036327.P1819275921854150389

`A204160(A322620(n))+eq[3, A076649(n+1)]`
-/

namespace A036327.P1819275921854150389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204160 (A322620 n).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A036327.P1819275921854150389

/-! ## A036327.P6542779922522977909

`A204162(A017005(n)²)+eq[3, A076649(n+1)]`
-/

namespace A036327.P6542779922522977909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (A017005 n ^ 2).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A036327.P6542779922522977909

/-! ## A036327.P17602195672174043959

`eq[A000120(A095077(n+1)-1), A076649(n+1)]+1`
-/

namespace A036327.P17602195672174043959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A095077 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036327.P17602195672174043959

/-!
# A036328: Composite numbers n such that juxtaposition of prime factors of n has length 4.

The programs for A036328, the canonical program `A036328.P17136964212029901258` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036328 has offset 1).

The definition of A036328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036328.P3939615109137372759

`A113484(eq[4, A076649(n+1)])`
-/

namespace A036328.P3939615109137372759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036328.P3939615109137372759

namespace A036328

/-- `A113484(eq[4, A076649(n+1)])` -/
def P3939615109137372759.Spec : Prop :=
  ∀ n, P3939615109137372759.a n = A036328 (n + 1)

end A036328

/-! ## A036328.P17136964212029901258

`eq[4, A076649(A233583(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A036328

/-- `eq[4, A076649(A233583(n+1))]` -/
def P17136964212029901258.Spec : Prop :=
  ∀ n, (P17136964212029901258.a n : ℤ) = A036328 (n + 1)

theorem P17136964212029901258.correct : P17136964212029901258.Spec := by
  intro n
  simp only [A036328, Nat.add_sub_cancel]

end A036328

/-! ## A036328.P14255525067259523725

`record[A054576(A054576(A036332(n+1)))]`
-/

namespace A036328.P14255525067259523725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A054576 (A036332 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036328.P14255525067259523725

namespace A036328

/-- `record[A054576(A054576(A036332(n+1)))]` -/
def P14255525067259523725.Spec : Prop :=
  ∀ n, P14255525067259523725.a n = A036328 (n + 1)

end A036328

/-! ## A036328.P17901692950986745117

`A036329(n+1)/A000005(A280080(n+1))`
-/

namespace A036328.P17901692950986745117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036329 (n + 1) : ℚ) / (A000005 (A280080 (n + 1)).toNat : ℚ)

end

end A036328.P17901692950986745117

namespace A036328

/-- `A036329(n+1)/A000005(A280080(n+1))` -/
def P17901692950986745117.Spec : Prop :=
  ∀ n, P17901692950986745117.a n = (A036328 (n + 1) : ℚ)

end A036328

/-! ## A036328.P7498876484910316070

`A036330(A077168(n))/4`
-/

namespace A036328.P7498876484910316070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036330 (A077168 n).toNat : ℚ) / 4

end

end A036328.P7498876484910316070

namespace A036328

/-- `A036330(A077168(n))/4` -/
def P7498876484910316070.Spec : Prop :=
  ∀ n, P7498876484910316070.a n = (A036328 (n + 1) : ℚ)

end A036328

/-!
# A036329: Composite numbers n such that juxtaposition of prime factors of n has length 5.

The programs for A036329, the canonical program `A036329.P810516650349333775` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036329 has offset 1).

The definition of A036329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036329.P810516650349333775

`eq[5, A076649(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A036329

/-- `eq[5, A076649(n+1)]+1` -/
def P810516650349333775.Spec : Prop :=
  ∀ n, (P810516650349333775.a n : ℤ) = A036329 (n + 1)

theorem P810516650349333775.correct : P810516650349333775.Spec := by
  intro n
  simp only [A036329, Nat.add_sub_cancel]

end A036329

/-! ## A036329.P6967234174084316851

`record[A117358(2*A036331(n+1))]`
-/

namespace A036329.P6967234174084316851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A036331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036329.P6967234174084316851

namespace A036329

/-- `record[A117358(2*A036331(n+1))]` -/
def P6967234174084316851.Spec : Prop :=
  ∀ n, P6967234174084316851.a n = A036329 (n + 1)

end A036329

/-! ## A036329.P16320597406334094646

`record[A032742(A036330(n+1))]`
-/

namespace A036329.P16320597406334094646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A036330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036329.P16320597406334094646

namespace A036329

/-- `record[A032742(A036330(n+1))]` -/
def P16320597406334094646.Spec : Prop :=
  ∀ n, P16320597406334094646.a n = A036329 (n + 1)

end A036329

/-! ## A036329.P11499174095443402593

`record[A057979(A036330(n+1)+1)]`
-/

namespace A036329.P11499174095443402593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A036330 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036329.P11499174095443402593

namespace A036329

/-- `record[A057979(A036330(n+1)+1)]` -/
def P11499174095443402593.Spec : Prop :=
  ∀ n, P11499174095443402593.a n = A036329 (n + 1)

end A036329

/-! ## A036329.P9862580706445741477

`record[A054576(A036331(n+1))]`
-/

namespace A036329.P9862580706445741477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A036331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036329.P9862580706445741477

namespace A036329

/-- `record[A054576(A036331(n+1))]` -/
def P9862580706445741477.Spec : Prop :=
  ∀ n, P9862580706445741477.a n = A036329 (n + 1)

end A036329

/-!
# A036330: Composite numbers n such that juxtaposition of prime factors of n has length 6.

The programs for A036330, there is no canonical definition to state claims against.
-/

/-! ## A036330.P1280946324713453394

`record[A025480(A036331(n+1))]`
-/

namespace A036330.P1280946324713453394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A036331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036330.P1280946324713453394

/-! ## A036330.P16343352204766004428

`record[A032742(A036331(A032742(n+1)))]`
-/

namespace A036330.P16343352204766004428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A036331 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036330.P16343352204766004428

/-! ## A036330.P10773136492321100399

`A000720(record[A219606(A036331(n+1))])`
-/

namespace A036330.P10773136492321100399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A036331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036330.P10773136492321100399

/-! ## A036330.P12261341530778212289

`record[A054576(A036332(n+1))]`
-/

namespace A036330.P12261341530778212289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A036332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036330.P12261341530778212289

/-! ## A036330.P12154826072199035325

`record[A054576(2*A036331(n+1))]`
-/

namespace A036330.P12154826072199035325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A036331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036330.P12154826072199035325

/-!
# A036331: Composite numbers n such that juxtaposition of prime factors of n has length 7.

The programs for A036331, there is no canonical definition to state claims against.
-/

/-! ## A036331.P13555366437348724324

`record[A036332(n+1)/A020639(A036332(n+1))]`
-/

namespace A036331.P13555366437348724324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A020639 (A036332 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036331.P13555366437348724324

/-! ## A036331.P9431355169217103866

`record[A025480(A036332(n+1))]`
-/

namespace A036331.P9431355169217103866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A036332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036331.P9431355169217103866

/-! ## A036331.P4980822754874468675

`A004525(record[A249818(A036332(n+1))])`
-/

namespace A036331.P4980822754874468675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A036332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036331.P4980822754874468675

/-! ## A036331.P3726110903182864687

`A066328(record[A207790(A036332(n+1))])`
-/

namespace A036331.P3726110903182864687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A036332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036331.P3726110903182864687

/-! ## A036331.P18132778077534867861

`A004525(lcm(2, A036332(n+1)))`
-/

namespace A036331.P18132778077534867861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A036332 (n + 1)))

end

end A036331.P18132778077534867861

/-! ## A036331.P1929988324767820391

`A004525(2*A026741(A036332(n+1)))`
-/

namespace A036331.P1929988324767820391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A026741 (A036332 (n + 1)).toNat).toNat

end

end A036331.P1929988324767820391

/-! ## A036331.P9444704252125773245

`A026741(2*A026741(A036332(n+1)))`
-/

namespace A036331.P9444704252125773245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A026741 (A036332 (n + 1)).toNat).toNat

end

end A036331.P9444704252125773245

/-! ## A036331.P16299722406379391253

`A036332(n+1)/A167447(A073648(n+1))`
-/

namespace A036331.P16299722406379391253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A167447 (A073648 (n + 1)).toNat : ℚ)

end

end A036331.P16299722406379391253

/-! ## A036331.P3952748457374827010

`A036332(n+1)/A089080(A054735(n+1))`
-/

namespace A036331.P3952748457374827010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A089080 (A054735 (n + 1)).toNat : ℚ)

end

end A036331.P3952748457374827010

/-! ## A036331.P6222485938772296261

`A036332(n+1)/A073184(A028388(n+1))`
-/

namespace A036331.P6222485938772296261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A073184 (A028388 (n + 1)).toNat : ℚ)

end

end A036331.P6222485938772296261

/-! ## A036331.P17977755237626276891

`A036332(n+1)/A347086(A018800(n+1))`
-/

namespace A036331.P17977755237626276891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A347086 (A018800 (n + 1)).toNat : ℚ)

end

end A036331.P17977755237626276891

/-! ## A036331.P8372030878422516690

`A036332(n+1)/A000005(A079780(n+1))`
-/

namespace A036331.P8372030878422516690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A000005 (A079780 (n + 1)).toNat : ℚ)

end

end A036331.P8372030878422516690

/-! ## A036331.P3139122453145644804

`A002265(A036333(n+1))`
-/

namespace A036331.P3139122453145644804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036333 (n + 1)).toNat

end

end A036331.P3139122453145644804

/-! ## A036331.P6746402585633957070

`A002265(2*A036332(n+1))`
-/

namespace A036331.P6746402585633957070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A036332 (n + 1)).toNat

end

end A036331.P6746402585633957070

/-! ## A036331.P15380174475144832627

`A054576(2*A036332(n+1))`
-/

namespace A036331.P15380174475144832627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A036332 (n + 1)).toNat

end

end A036331.P15380174475144832627

/-! ## A036331.P12924043649385791461

`A036332(n+1)/A000005(A036570(n+1))`
-/

namespace A036331.P12924043649385791461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036332 (n + 1) : ℚ) / (A000005 (A036570 (n + 1)).toNat : ℚ)

end

end A036331.P12924043649385791461

/-!
# A036332: Composite numbers n such that juxtaposition of prime factors of n has length 8.

The programs for A036332, there is no canonical definition to state claims against.
-/

/-! ## A036332.P12522443901960858980

`A038572(lcm(2, A036333(n+1)))`
-/

namespace A036332.P12522443901960858980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A036333 (n + 1)))

end

end A036332.P12522443901960858980

/-! ## A036332.P18275695985505976681

`A117358(4*A036333(n+1))`
-/

namespace A036332.P18275695985505976681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A036333 (n + 1)).toNat

end

end A036332.P18275695985505976681

/-! ## A036332.P6759144968082641596

`A036333(n+1)/A020639(A090288(n))`
-/

namespace A036332.P6759144968082641596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036333 (n + 1) : ℚ) / (A020639 (A090288 n).toNat : ℚ)

end

end A036332.P6759144968082641596

/-! ## A036332.P706121292609071587

`ceil((A036333(n+1)-A354920(A090288(n)+1))/2)`
-/

namespace A036332.P706121292609071587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036333 (n + 1) - A354920 (A090288 n + 1).toNat : ℚ) / 2⌉

end

end A036332.P706121292609071587

/-! ## A036332.P8964061620261286918

`A163333(A163333(2*A036331(n+1)))`
-/

namespace A036332.P8964061620261286918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163333 (2 * A036331 (n + 1)).toNat).toNat

end

end A036332.P8964061620261286918

/-! ## A036332.P14229915940374061574

`A285916(A285916(2*A036331(n+1)))`
-/

namespace A036332.P14229915940374061574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285916 (A285916 (2 * A036331 (n + 1)).toNat).toNat

end

end A036332.P14229915940374061574

/-! ## A036332.P1940280301192510956

`A000070(A226378(A308711(n+1)))*A036331(n+1)`
-/

namespace A036332.P1940280301192510956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A226378 (A308711 (n + 1)).toNat).toNat * A036331 (n + 1)

end

end A036332.P1940280301192510956

/-! ## A036332.P348115791572528504

`A000034(A152714(n))*A036331(n+1)`
-/

namespace A036332.P348115791572528504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A152714 n).toNat * A036331 (n + 1)

end

end A036332.P348115791572528504

/-! ## A036332.P11843270032348224820

`A036331(n+1)*A322026(A090288(n))`
-/

namespace A036332.P11843270032348224820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036331 (n + 1) * A322026 (A090288 n).toNat

end

end A036332.P11843270032348224820

/-! ## A036332.P7084606369624172187

`A020639(A000079(A000005(n+1)))*A036331(n+1)`
-/

namespace A036332.P7084606369624172187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 (A000005 (n + 1)).toNat).toNat * A036331 (n + 1)

end

end A036332.P7084606369624172187

/-! ## A036332.P4302125952868565036

`A034444(A031388(n+1))*A036331(n+1)`
-/

namespace A036332.P4302125952868565036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A031388 (n + 1)).toNat * A036331 (n + 1)

end

end A036332.P4302125952868565036

/-! ## A036332.P5760184371339250256

`A020639(A294315(A108461(n+1)))*A036331(n+1)`
-/

namespace A036332.P5760184371339250256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A294315 (A108461 (n + 1)).toNat).toNat * A036331 (n + 1)

end

end A036332.P5760184371339250256

/-! ## A036332.P8051051664568861313

`A001222(A000040(A056609(n+1))²)*A036331(n+1)`
-/

namespace A036332.P8051051664568861313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (A056609 (n + 1)).toNat ^ 2).toNat * A036331 (n + 1)

end

end A036332.P8051051664568861313

/-! ## A036332.P1886950803232050928

`A001281(A036333(n+1))`
-/

namespace A036332.P1886950803232050928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A036333 (n + 1)).toNat

end

end A036332.P1886950803232050928

/-! ## A036332.P15633875653441806970

`2*A002265(A036333(n+1)+1)`
-/

namespace A036332.P15633875653441806970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002265 (A036333 (n + 1) + 1).toNat

end

end A036332.P15633875653441806970

/-! ## A036332.P7344099272488653532

`A001281(2*2*A036331(n+1))`
-/

namespace A036332.P7344099272488653532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * (2 * A036331 (n + 1))).toNat

end

end A036332.P7344099272488653532

/-! ## A036332.P687108356873781722

`A025480(2*2*A036331(n+1))`
-/

namespace A036332.P687108356873781722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * (2 * A036331 (n + 1))).toNat

end

end A036332.P687108356873781722

/-!
# A036333: Composite numbers n such that juxtaposition of prime factors of n has length 9.

The programs for A036333, there is no canonical definition to state claims against.
-/

/-! ## A036333.P13731058073614628403

`(1-A057428(A350322(n+1)))*A036332(n+1)`
-/

namespace A036333.P13731058073614628403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 (A350322 (n + 1)).toNat) * A036332 (n + 1)

end

end A036333.P13731058073614628403

/-! ## A036333.P13586758283477569966

`A036332(n+1)*A347086(A001359(n+1))`
-/

namespace A036333.P13586758283477569966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036332 (n + 1) * A347086 (A001359 (n + 1)).toNat

end

end A036333.P13586758283477569966

/-! ## A036333.P15830751376667139090

`A036332(n+1)*A141310(A131270(n))`
-/

namespace A036333.P15830751376667139090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036332 (n + 1) * A141310 (A131270 n).toNat

end

end A036333.P15830751376667139090

/-! ## A036333.P6028102243168501648

`(1-A057428(A082131(n+1)))*A036332(n+1)`
-/

namespace A036333.P6028102243168501648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 (A082131 (n + 1)).toNat) * A036332 (n + 1)

end

end A036333.P6028102243168501648

/-! ## A036333.P17848488198162379342

`(A327858(A136091(3*n+1))+1)*A036332(n+1)`
-/

namespace A036333.P17848488198162379342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327858 (A136091 (3 * n + 1)).toNat + 1) * A036332 (n + 1)

end

end A036333.P17848488198162379342

/-! ## A036333.P8425650195453200948

`A141310(2*A036332(n+1))-1`
-/

namespace A036333.P8425650195453200948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A036332 (n + 1)).toNat - 1

end

end A036333.P8425650195453200948

/-! ## A036333.P12427539385609132581

`(A001222(A030291(n+1))+1)*A036332(n+1)`
-/

namespace A036333.P12427539385609132581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A030291 (n + 1)).toNat + 1) * A036332 (n + 1)

end

end A036333.P12427539385609132581

/-! ## A036333.P2225231685447984616

`A004277(lcm(2, A036332(n+1)))`
-/

namespace A036333.P2225231685447984616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm 2 (A036332 (n + 1)))

end

end A036333.P2225231685447984616

/-! ## A036333.P17649291791400548615

`2*A000034(A152714(n))*A036331(n+1)`
-/

namespace A036333.P17649291791400548615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000034 (A152714 n).toNat * A036331 (n + 1))

end

end A036333.P17649291791400548615

/-! ## A036333.P15512033851741461051

`A008574(A036331(n+1)%A234658(n+1))`
-/

namespace A036333.P15512033851741461051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.tmod (A036331 (n + 1)) (A234658 (n + 1))).toNat

end

end A036333.P15512033851741461051

/-! ## A036333.P10512737868252744056

`A036331(n+1)*A048785(A145990(n+1))`
-/

namespace A036333.P10512737868252744056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036331 (n + 1) * A048785 (A145990 (n + 1)).toNat

end

end A036333.P10512737868252744056

/-! ## A036333.P9047915980464299409

`A036331(n+1)*A048785(A162876(n+1))`
-/

namespace A036333.P9047915980464299409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036331 (n + 1) * A048785 (A162876 (n + 1)).toNat

end

end A036333.P9047915980464299409

/-! ## A036333.P17371781991681307744

`A000005(A136162(n+1))*A036332(n+1)`
-/

namespace A036333.P17371781991681307744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A136162 (n + 1)).toNat * A036332 (n + 1)

end

end A036333.P17371781991681307744

/-! ## A036333.P8334495827321770144

`(A007318(∑[n])+3)*A036331(n+1)`
-/

namespace A036333.P8334495827321770144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + 3) * A036331 (n + 1)

end

end A036333.P8334495827321770144

/-! ## A036333.P15770090843151615536

`4*A036331(A103128(∑[n+1]))`
-/

namespace A036333.P15770090843151615536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036331 (A103128 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A036333.P15770090843151615536

/-! ## A036333.P12926208674103966449

`A000005(A079780(n+1))*A036332(n+1)`
-/

namespace A036333.P12926208674103966449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079780 (n + 1)).toNat * A036332 (n + 1)

end

end A036333.P12926208674103966449

/-! ## A036333.P16696380563282779121

`A249818(2*A036332(n+1))`
-/

namespace A036333.P16696380563282779121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (2 * A036332 (n + 1)).toNat

end

end A036333.P16696380563282779121

/-! ## A036333.P10230274834040661250

`2*A001281(2*A036332(n+1))`
-/

namespace A036333.P10230274834040661250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001281 (2 * A036332 (n + 1)).toNat

end

end A036333.P10230274834040661250

/-!
# A036335: Total number of composite numbers with n digits and n prime factors (counted with multiplicity).

The programs for A036335, there is no canonical definition to state claims against.
-/

/-! ## A036335.P4268387542805281946

`ceil(abs(sin(n)))*A124033(n+1)`
-/

namespace A036335.P4268387542805281946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ * A124033 (n + 1)

end

end A036335.P4268387542805281946

/-! ## A036335.P5408452069484073238

`A124033(a(floor(acot(n)))+1+n)` with `a(0)=0`
-/

namespace A036335.P5408452069484073238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A124033 (a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat + 1 + (n : ℤ)).toNat

end

end A036335.P5408452069484073238

/-! ## A036335.P13564598593914406923

`A057427(n)*A124033(n+1)`
-/

namespace A036335.P13564598593914406923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A124033 (n + 1)

end

end A036335.P13564598593914406923

/-! ## A036335.P15087250609225086204

`A124033(n+1)%A017725(n)`
-/

namespace A036335.P15087250609225086204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124033 (n + 1)) (A017725 (n + 61))

end

end A036335.P15087250609225086204

/-! ## A036335.P8619715543288278972

`char[A000174(n)]*A124033(n+1)`
-/

namespace A036335.P8619715543288278972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124033 (n + 1)

end

end A036335.P8619715543288278972

/-!
# A036336: Smallest positive integer with n digits and exactly n prime factors (counted with multiplicity).

The programs for A036336, there is no canonical definition to state claims against.
-/

/-! ## A036336.P6813943472051860591

`filter[A007961(n+2), A383302(#)]`
-/

namespace A036336.P6813943472051860591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383302 (f1 j).toNat = 1) n)

end

end A036336.P6813943472051860591

/-!
# A036337: Largest integer with n digits and exactly n prime factors (counted with multiplicity).

The programs for A036337, there is no canonical definition to state claims against.
-/

/-! ## A036337.P17692228421347047684

`10^(n+1)-A060117(A116114(n+1))`
-/

namespace A036337.P17692228421347047684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A060117 (A116114 (n + 1)).toNat

end

end A036337.P17692228421347047684

/-!
# A036338: Composites whose digit length is equal to their number of prime factors (counted with multiplicity).

The programs for A036338, there is no canonical definition to state claims against.
-/

/-! ## A036338.P8345189719587195808

`A115024(n+5)`
-/

namespace A036338.P8345189719587195808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 5)

end

end A036338.P8345189719587195808

/-! ## A036338.P5983768148999421376

`record[A115024(A020705(A007599(n)))]`
-/

namespace A036338.P5983768148999421376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (A020705 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036338.P5983768148999421376

/-! ## A036338.P10756513596046268638

`record[A115024(A020705(A028242(n)))]`
-/

namespace A036338.P10756513596046268638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (A020705 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036338.P10756513596046268638

/-! ## A036338.P9261273518845342456

`eq[A055642(n), A144494(A028310(n))]`
-/

namespace A036338.P9261273518845342456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036338.P9261273518845342456

/-! ## A036338.P18039345242654048644

`eq[A055642(n), A144494(1-A057427(n)+n)]`
-/

namespace A036338.P18039345242654048644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (1 - A057427 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036338.P18039345242654048644

/-!
# A036339: Concatenation of prime p and nextprime(p) is prime -> cycles of 2 steps possible.

The programs for A036339, there is no canonical definition to state claims against.
-/

/-! ## A036339.P9693348681943279351

`∩[A030459(n+1), A034592(n)]`
-/

namespace A036339.P9693348681943279351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036339.P9693348681943279351

/-! ## A036339.P12846246920524218406

`p?[A034592(n)]`
-/

namespace A036339.P12846246920524218406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036339.P12846246920524218406

/-! ## A036339.P15396411428144519218

`record[A020639(A034592(n+5))]`
-/

namespace A036339.P15396411428144519218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034592 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036339.P15396411428144519218

/-!
# A036342: Prime concatenated analog clock numbers read clockwise.

The programs for A036342, there is no canonical definition to state claims against.
-/

/-! ## A036342.P4390998933884526777

`∩[A036344(n+1), A373044(n+1)]`
-/

namespace A036342.P4390998933884526777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036342.P4390998933884526777

/-! ## A036342.P10209656332047810601

`∩[A231588(n+1), A378774(n+1)]`
-/

namespace A036342.P10209656332047810601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036342.P10209656332047810601

/-! ## A036342.P12494419288671424561

`∩[A231588(n+1), A378949(n+1)]`
-/

namespace A036342.P12494419288671424561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036342.P12494419288671424561

/-! ## A036342.P11049572253792197319

`A036344(lt[A141618(3*n+4), A162301(n)])`
-/

namespace A036342.P11049572253792197319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141618 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036342.P11049572253792197319

/-! ## A036342.P11857190085919320816

`filter[A373044(n+1), A105565(#)]`
-/

namespace A036342.P11857190085919320816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105565 (f1 j).toNat = 1) n)

end

end A036342.P11857190085919320816

/-!
# A036343: Prime concatenated analog clock numbers read counterclockwise.

The programs for A036343, there is no canonical definition to state claims against.
-/

/-! ## A036343.P13758229104819238659

`p?[A158699(n)+char[10]]`
-/

namespace A036343.P13758229104819238659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036343.P13758229104819238659

/-! ## A036343.P17571883155928415538

`p?[A036344(∑[A027907(n)])]`
-/

namespace A036343.P17571883155928415538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036344 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036343.P17571883155928415538

/-! ## A036343.P3056824304137112261

`p?[or(A037213(n), A158699(n))]`
-/

namespace A036343.P3056824304137112261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037213 n) (A158699 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036343.P3056824304137112261

/-! ## A036343.P1498346767595200811

`p?[∪[A007585(n), A158699(n)]]`
-/

namespace A036343.P1498346767595200811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A036343.P1498346767595200811

/-! ## A036343.P1324648544379123587

`p?[A276404(n+1)+A158699(n)]`
-/

namespace A036343.P1324648544379123587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (n + 1) + A158699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036343.P1324648544379123587

/-!
# A036344: Prime concatenated analog clock numbers (clockwise and counterclockwise).

The programs for A036344, there is no canonical definition to state claims against.
-/

/-! ## A036344.P366295728848923953

`∪[A036343(n+1), A036342(n+2)]`
-/

namespace A036344.P366295728848923953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036342 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036344.P366295728848923953

/-! ## A036344.P8417395756687981316

`∪[A052017(n+1), A036343(n+3)]`
-/

namespace A036344.P8417395756687981316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036343 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036344.P8417395756687981316

/-! ## A036344.P8238949743862343314

`∪[A036343(n+3), A052017(A005496(n))]`
-/

namespace A036344.P8238949743862343314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036343 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052017 (A005496 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036344.P8238949743862343314

/-! ## A036344.P3728448020391554133

`∪[A036342(n+2), p?[A158699(n)]]`
-/

namespace A036344.P3728448020391554133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036342 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036344.P3728448020391554133

/-! ## A036344.P14696255803399657795

`∩[A068148(n+1), A266279(n+1)]`
-/

namespace A036344.P14696255803399657795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036344.P14696255803399657795

/-!
# A036345: Divisible by its 'even' sum of prime factors (counted with multiplicity).

The programs for A036345, the canonical program `A036345.P12048830508452336379` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036345 has offset 1).

The definition of A036345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036345.P12048830508452336379

`∩[2*A036349(n+1), A036844(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036345

/-- `∩[2*A036349(n+1), A036844(n+1)]` -/
def P12048830508452336379.Spec : Prop :=
  ∀ n, (P12048830508452336379.a n : ℤ) = A036345 (n + 1)

theorem P12048830508452336379.correct : P12048830508452336379.Spec := by
  intro n
  simp only [A036345, Nat.add_sub_cancel]

end A036345

/-! ## A036345.P16565512046275361285

`∩[A036349(n+1), A036844(n+1)]`
-/

namespace A036345.P16565512046275361285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036345.P16565512046275361285

namespace A036345

/-- `∩[A036349(n+1), A036844(n+1)]` -/
def P16565512046275361285.Spec : Prop :=
  ∀ n, (P16565512046275361285.a n : ℤ) = A036345 (n + 1)

end A036345

/-!
# A036346: Composites n such that A001414(n) is odd and divides n.

The programs for A036346, the canonical program `A036346.P7620792175461304631` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036346 has offset 1).

The definition of A036346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036346.P14192083763043603254

`filter[A144585(n+1), A342460(#)]`
-/

namespace A036346.P14192083763043603254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A036346.P14192083763043603254

namespace A036346

/-- `filter[A144585(n+1), A342460(#)]` -/
def P14192083763043603254.Spec : Prop :=
  ∀ n, P14192083763043603254.a n = A036346 (n + 1)

end A036346

/-! ## A036346.P14655313733699529295

`∩[A036844(n+1), A144585(n+1)]`
-/

namespace A036346.P14655313733699529295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036346.P14655313733699529295

namespace A036346

/-- `∩[A036844(n+1), A144585(n+1)]` -/
def P14655313733699529295.Spec : Prop :=
  ∀ n, (P14655313733699529295.a n : ℤ) = A036346 (n + 1)

end A036346

/-! ## A036346.P4635693161639959080

`∩[A046346(n+1), A144585(n+1)]`
-/

namespace A036346.P4635693161639959080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036346.P4635693161639959080

namespace A036346

/-- `∩[A046346(n+1), A144585(n+1)]` -/
def P4635693161639959080.Spec : Prop :=
  ∀ n, (P4635693161639959080.a n : ℤ) = A036346 (n + 1)

end A036346

/-! ## A036346.P7620792175461304631

`∩[A036350(n+1), A036844(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036346

/-- `∩[A036350(n+1), A036844(n+1)]` -/
def P7620792175461304631.Spec : Prop :=
  ∀ n, (P7620792175461304631.a n : ℤ) = A036346 (n + 1)

theorem P7620792175461304631.correct : P7620792175461304631.Spec := by
  intro n
  simp only [A036346, Nat.add_sub_cancel]

end A036346

/-! ## A036346.P283269759503287146

`∩[A036350(n+1), A046346(n+1)]`
-/

namespace A036346.P283269759503287146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036346.P283269759503287146

namespace A036346

/-- `∩[A036350(n+1), A046346(n+1)]` -/
def P283269759503287146.Spec : Prop :=
  ∀ n, (P283269759503287146.a n : ℤ) = A036346 (n + 1)

end A036346

/-! ## A036346.P919098959043743801

`∩[A046346(n+1), A335657(n+1)]`
-/

namespace A036346.P919098959043743801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036346.P919098959043743801

namespace A036346

/-- `∩[A046346(n+1), A335657(n+1)]` -/
def P919098959043743801.Spec : Prop :=
  ∀ n, (P919098959043743801.a n : ℤ) = A036346 (n + 1)

end A036346

/-!
# A036347: Numbers k for which the parity of k and the parity of sopfr(k) differ, where sopfr is the sum of prime factors with repetition.

The programs for A036347, the canonical program `A036347.P5999781186834882949` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036347 has offset 1).

The definition of A036347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036347.P10705867239494428434

`∪[A036348(n+1), A046337(n+1)]`
-/

namespace A036347.P10705867239494428434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036347.P10705867239494428434

namespace A036347

/-- `∪[A036348(n+1), A046337(n+1)]` -/
def P10705867239494428434.Spec : Prop :=
  ∀ n, (P10705867239494428434.a n : ℤ) = A036347 (n + 1)

end A036347

/-! ## A036347.P5644641823346888589

`∪[A036348(n+1), A359371(n+1)]`
-/

namespace A036347.P5644641823346888589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036347.P5644641823346888589

namespace A036347

/-- `∪[A036348(n+1), A359371(n+1)]` -/
def P5644641823346888589.Spec : Prop :=
  ∀ n, (P5644641823346888589.a n : ℤ) = A036347 (n + 1)

end A036347

/-! ## A036347.P5999781186834882949

`eq[1, A359768(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036347

/-- `eq[1, A359768(n+1)]+1` -/
def P5999781186834882949.Spec : Prop :=
  ∀ n, (P5999781186834882949.a n : ℤ) = A036347 (n + 1)

theorem P5999781186834882949.correct : P5999781186834882949.Spec := by
  intro n
  simp only [A036347, Nat.add_sub_cancel]

end A036347

/-! ## A036347.P4198408283526574653

`filter[A174891(n+1), A359768(#)]`
-/

namespace A036347.P4198408283526574653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P4198408283526574653

namespace A036347

/-- `filter[A174891(n+1), A359768(#)]` -/
def P4198408283526574653.Spec : Prop :=
  ∀ n, P4198408283526574653.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P8316242553817150843

`filter[A056653(n+1), A359768(#)]`
-/

namespace A036347.P8316242553817150843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P8316242553817150843

namespace A036347

/-- `filter[A056653(n+1), A359768(#)]` -/
def P8316242553817150843.Spec : Prop :=
  ∀ n, P8316242553817150843.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P9358788553235243543

`filter[A018252(n+1), A359768(#)]`
-/

namespace A036347.P9358788553235243543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P9358788553235243543

namespace A036347

/-- `filter[A018252(n+1), A359768(#)]` -/
def P9358788553235243543.Spec : Prop :=
  ∀ n, P9358788553235243543.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P2460657434258006320

`filter[A065090(n+1), A359768(#)]`
-/

namespace A036347.P2460657434258006320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P2460657434258006320

namespace A036347

/-- `filter[A065090(n+1), A359768(#)]` -/
def P2460657434258006320.Spec : Prop :=
  ∀ n, P2460657434258006320.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P9031404537312155096

`filter[A141468(n+2), A359768(#)]`
-/

namespace A036347.P9031404537312155096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P9031404537312155096

namespace A036347

/-- `filter[A141468(n+2), A359768(#)]` -/
def P9031404537312155096.Spec : Prop :=
  ∀ n, P9031404537312155096.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P17982481504137870138

`filter[A222307(2*n+1), A359768(#)]`
-/

namespace A036347.P17982481504137870138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P17982481504137870138

namespace A036347

/-- `filter[A222307(2*n+1), A359768(#)]` -/
def P17982481504137870138.Spec : Prop :=
  ∀ n, P17982481504137870138.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P15931164660712463575

`filter[A171581(n+1), A359768(#)]`
-/

namespace A036347.P15931164660712463575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P15931164660712463575

namespace A036347

/-- `filter[A171581(n+1), A359768(#)]` -/
def P15931164660712463575.Spec : Prop :=
  ∀ n, P15931164660712463575.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P17124955486786623028

`filter[A173905(n+2), A359768(#)]`
-/

namespace A036347.P17124955486786623028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P17124955486786623028

namespace A036347

/-- `filter[A173905(n+2), A359768(#)]` -/
def P17124955486786623028.Spec : Prop :=
  ∀ n, P17124955486786623028.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P14218317745887740920

`filter[A338924(n+1), A359768(#)]`
-/

namespace A036347.P14218317745887740920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P14218317745887740920

namespace A036347

/-- `filter[A338924(n+1), A359768(#)]` -/
def P14218317745887740920.Spec : Prop :=
  ∀ n, P14218317745887740920.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P12555207652412176726

`filter[A073900(n+1), A359768(#)]`
-/

namespace A036347.P12555207652412176726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P12555207652412176726

namespace A036347

/-- `filter[A073900(n+1), A359768(#)]` -/
def P12555207652412176726.Spec : Prop :=
  ∀ n, P12555207652412176726.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P13360235183186775002

`filter[A073899(n+1), A359768(#)]`
-/

namespace A036347.P13360235183186775002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P13360235183186775002

namespace A036347

/-- `filter[A073899(n+1), A359768(#)]` -/
def P13360235183186775002.Spec : Prop :=
  ∀ n, P13360235183186775002.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P708010847216216993

`filter[A171085(n+1), A359768(#)]`
-/

namespace A036347.P708010847216216993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P708010847216216993

namespace A036347

/-- `filter[A171085(n+1), A359768(#)]` -/
def P708010847216216993.Spec : Prop :=
  ∀ n, P708010847216216993.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P13048080224443881198

`filter[A121543(n+1), A359768(#)]`
-/

namespace A036347.P13048080224443881198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P13048080224443881198

namespace A036347

/-- `filter[A121543(n+1), A359768(#)]` -/
def P13048080224443881198.Spec : Prop :=
  ∀ n, P13048080224443881198.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P11221679109180867864

`filter[A379053(n+1), A359768(#)]`
-/

namespace A036347.P11221679109180867864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P11221679109180867864

namespace A036347

/-- `filter[A379053(n+1), A359768(#)]` -/
def P11221679109180867864.Spec : Prop :=
  ∀ n, P11221679109180867864.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P8545792581642021950

`filter[A101513(n+1), A359768(#)]`
-/

namespace A036347.P8545792581642021950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P8545792581642021950

namespace A036347

/-- `filter[A101513(n+1), A359768(#)]` -/
def P8545792581642021950.Spec : Prop :=
  ∀ n, P8545792581642021950.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P12643899155234279951

`filter[A089088(n), A359768(#)]`
-/

namespace A036347.P12643899155234279951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P12643899155234279951

namespace A036347

/-- `filter[A089088(n), A359768(#)]` -/
def P12643899155234279951.Spec : Prop :=
  ∀ n, P12643899155234279951.a n = A036347 (n + 1)

end A036347

/-! ## A036347.P15847445767114560858

`filter[A137621(n+1), A359768(#)]`
-/

namespace A036347.P15847445767114560858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A036347.P15847445767114560858

namespace A036347

/-- `filter[A137621(n+1), A359768(#)]` -/
def P15847445767114560858.Spec : Prop :=
  ∀ n, P15847445767114560858.a n = A036347 (n + 1)

end A036347

/-!
# A036348: Even numbers whose number of odd prime factors is odd (when counted with multiplicity).

The programs for A036348, the canonical program `A036348.P10794029547459417967` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036348 has offset 1).

The definition of A036348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036348.P10521385202846682385

`2*A335657(n+1)`
-/

namespace A036348.P10521385202846682385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335657 (n + 1)

end

end A036348.P10521385202846682385

namespace A036348

/-- `2*A335657(n+1)` -/
def P10521385202846682385.Spec : Prop :=
  ∀ n, P10521385202846682385.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P18037533796591180701

`2*∪[A036350(n+1), A038550(n+1)]`
-/

namespace A036348.P18037533796591180701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P18037533796591180701

namespace A036348

/-- `2*∪[A036350(n+1), A038550(n+1)]` -/
def P18037533796591180701.Spec : Prop :=
  ∀ n, (P18037533796591180701.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P15689051204079902905

`2*∪[A036350(n+1), A056912(n+1)]`
-/

namespace A036348.P15689051204079902905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P15689051204079902905

namespace A036348

/-- `2*∪[A036350(n+1), A056912(n+1)]` -/
def P15689051204079902905.Spec : Prop :=
  ∀ n, (P15689051204079902905.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P3439156331717656860

`A335657(A000027(n+1))+A335657(n+1)`
-/

namespace A036348.P3439156331717656860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (A000027 (n + 1)).toNat + A335657 (n + 1)

end

end A036348.P3439156331717656860

namespace A036348

/-- `A335657(A000027(n+1))+A335657(n+1)` -/
def P3439156331717656860.Spec : Prop :=
  ∀ n, P3439156331717656860.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P11413812131190724155

`∩[2*n, A036350(n+1)]`
-/

namespace A036348.P11413812131190724155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P11413812131190724155

namespace A036348

/-- `∩[2*n, A036350(n+1)]` -/
def P11413812131190724155.Spec : Prop :=
  ∀ n, (P11413812131190724155.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P10057688573671190664

`filter[A036350(n+1), A354034(#)]`
-/

namespace A036348.P10057688573671190664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A036348.P10057688573671190664

namespace A036348

/-- `filter[A036350(n+1), A354034(#)]` -/
def P10057688573671190664.Spec : Prop :=
  ∀ n, P10057688573671190664.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P16105649666153970161

`A004277(A335657(n+1))`
-/

namespace A036348.P16105649666153970161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A335657 (n + 1)).toNat

end

end A036348.P16105649666153970161

namespace A036348

/-- `A004277(A335657(n+1))` -/
def P16105649666153970161.Spec : Prop :=
  ∀ n, P16105649666153970161.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P12229808959292668130

`A004275(A335657(n+1)+1)`
-/

namespace A036348.P12229808959292668130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A335657 (n + 1) + 1).toNat

end

end A036348.P12229808959292668130

namespace A036348

/-- `A004275(A335657(n+1)+1)` -/
def P12229808959292668130.Spec : Prop :=
  ∀ n, P12229808959292668130.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P16512143062647137777

`A103517(A335657(n+1)-1)`
-/

namespace A036348.P16512143062647137777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A335657 (n + 1) - 1).toNat

end

end A036348.P16512143062647137777

namespace A036348

/-- `A103517(A335657(n+1)-1)` -/
def P16512143062647137777.Spec : Prop :=
  ∀ n, P16512143062647137777.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P4289361540276373839

`∩[A036350(n+1), A004275(n)]`
-/

namespace A036348.P4289361540276373839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P4289361540276373839

namespace A036348

/-- `∩[A036350(n+1), A004275(n)]` -/
def P4289361540276373839.Spec : Prop :=
  ∀ n, (P4289361540276373839.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P13983839889627738846

`∩[A036350(n+1), A004277(n)]`
-/

namespace A036348.P13983839889627738846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P13983839889627738846

namespace A036348

/-- `∩[A036350(n+1), A004277(n)]` -/
def P13983839889627738846.Spec : Prop :=
  ∀ n, (P13983839889627738846.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P8197854766950916612

`∩[A036350(n+1), A005843(n)]`
-/

namespace A036348.P8197854766950916612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P8197854766950916612

namespace A036348

/-- `∩[A036350(n+1), A005843(n)]` -/
def P8197854766950916612.Spec : Prop :=
  ∀ n, (P8197854766950916612.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P12214209475656133301

`∩[A036350(n+1), A020739(n)]`
-/

namespace A036348.P12214209475656133301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P12214209475656133301

namespace A036348

/-- `∩[A036350(n+1), A020739(n)]` -/
def P12214209475656133301.Spec : Prop :=
  ∀ n, (P12214209475656133301.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P4173036454196520947

`∩[A036350(n+1), A103517(n)]`
-/

namespace A036348.P4173036454196520947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P4173036454196520947

namespace A036348

/-- `∩[A036350(n+1), A103517(n)]` -/
def P4173036454196520947.Spec : Prop :=
  ∀ n, (P4173036454196520947.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P17281082291063569663

`∩[A036350(n+1), A004271(n)]`
-/

namespace A036348.P17281082291063569663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P17281082291063569663

namespace A036348

/-- `∩[A036350(n+1), A004271(n)]` -/
def P17281082291063569663.Spec : Prop :=
  ∀ n, (P17281082291063569663.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P15758155072189331474

`∩[A036350(n+1), A004272(n)]`
-/

namespace A036348.P15758155072189331474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P15758155072189331474

namespace A036348

/-- `∩[A036350(n+1), A004272(n)]` -/
def P15758155072189331474.Spec : Prop :=
  ∀ n, (P15758155072189331474.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P11794645642820449366

`∩[A036350(n+1), A004279(n)]`
-/

namespace A036348.P11794645642820449366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P11794645642820449366

namespace A036348

/-- `∩[A036350(n+1), A004279(n)]` -/
def P11794645642820449366.Spec : Prop :=
  ∀ n, (P11794645642820449366.a n : ℤ) = A036348 (n + 1)

end A036348

/-! ## A036348.P10794029547459417967

`∩[2*n, A036347(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036348

/-- `∩[2*n, A036347(n+1)]` -/
def P10794029547459417967.Spec : Prop :=
  ∀ n, (P10794029547459417967.a n : ℤ) = A036348 (n + 1)

theorem P10794029547459417967.correct : P10794029547459417967.Spec := by
  intro n
  simp only [A036348, Nat.add_sub_cancel]

end A036348

/-! ## A036348.P8339388637901878441

`filter[A335657(n+1), A354034(#)]`
-/

namespace A036348.P8339388637901878441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A036348.P8339388637901878441

namespace A036348

/-- `filter[A335657(n+1), A354034(#)]` -/
def P8339388637901878441.Spec : Prop :=
  ∀ n, P8339388637901878441.a n = A036348 (n + 1)

end A036348

/-! ## A036348.P8219090375789471784

`∩[A005843(n), A335657(n+1)]`
-/

namespace A036348.P8219090375789471784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P8219090375789471784

namespace A036348

/-- `∩[A005843(n), A335657(n+1)]` -/
def P8219090375789471784.Spec : Prop :=
  ∀ n, (P8219090375789471784.a n : ℤ) = A036348 (n + 1)

end A036348

/-!
# A036349: Numbers whose sum of prime factors (taken with multiplicity) is even.

The programs for A036349, the canonical program `A036349.P15151695145385248365` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036349 has offset 1).

The definition of A036349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036349.P15737465165691602665

`eq[1, A356163(n+1)]+1`
-/

namespace A036349.P15737465165691602665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036349.P15737465165691602665

namespace A036349

/-- `eq[1, A356163(n+1)]+1` -/
def P15737465165691602665.Spec : Prop :=
  ∀ n, (P15737465165691602665.a n : ℤ) = A036349 (n + 1)

end A036349

/-! ## A036349.P3019490402172346137

`eq[1, A359154(n+1)]+1`
-/

namespace A036349.P3019490402172346137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036349.P3019490402172346137

namespace A036349

/-- `eq[1, A359154(n+1)]+1` -/
def P3019490402172346137.Spec : Prop :=
  ∀ n, (P3019490402172346137.a n : ℤ) = A036349 (n + 1)

end A036349

/-! ## A036349.P3315362004457026737

`A395520(n)+a(n-1)` with `a(0)=1`
-/

namespace A036349.P3315362004457026737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A395520 n + a (n - 1)

end

end A036349.P3315362004457026737

namespace A036349

/-- `A395520(n)+a(n-1)` -/
def P3315362004457026737.Spec : Prop :=
  ∀ n, P3315362004457026737.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P15151695145385248365

`lt[A001414(n+1)%2, 1]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036349

/-- `lt[A001414(n+1)%2, 1]+1` -/
def P15151695145385248365.Spec : Prop :=
  ∀ n, (P15151695145385248365.a n : ℤ) = A036349 (n + 1)

theorem P15151695145385248365.correct : P15151695145385248365.Spec := by
  intro n
  simp only [A036349, Nat.add_sub_cancel]

end A036349

/-! ## A036349.P6534869812245704412

`∪[A359775(n+1), A359777(n+1)]`
-/

namespace A036349.P6534869812245704412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036349.P6534869812245704412

namespace A036349

/-- `∪[A359775(n+1), A359777(n+1)]` -/
def P6534869812245704412.Spec : Prop :=
  ∀ n, (P6534869812245704412.a n : ℤ) = A036349 (n + 1)

end A036349

/-! ## A036349.P12496595202669060521

`∪[2*A345452(n+1), A345452(n+1)]`
-/

namespace A036349.P12496595202669060521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036349.P12496595202669060521

namespace A036349

/-- `∪[2*A345452(n+1), A345452(n+1)]` -/
def P12496595202669060521.Spec : Prop :=
  ∀ n, (P12496595202669060521.a n : ℤ) = A036349 (n + 1)

end A036349

/-! ## A036349.P10314522398919088328

`filter[A347202(n+1), A356163(#)]`
-/

namespace A036349.P10314522398919088328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P10314522398919088328

namespace A036349

/-- `filter[A347202(n+1), A356163(#)]` -/
def P10314522398919088328.Spec : Prop :=
  ∀ n, P10314522398919088328.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P83175390703164528

`filter[A065090(n+1), A356163(#)]`
-/

namespace A036349.P83175390703164528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P83175390703164528

namespace A036349

/-- `filter[A065090(n+1), A356163(#)]` -/
def P83175390703164528.Spec : Prop :=
  ∀ n, P83175390703164528.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P15291714878543754535

`filter[A171581(n+1), A356163(#)]`
-/

namespace A036349.P15291714878543754535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P15291714878543754535

namespace A036349

/-- `filter[A171581(n+1), A356163(#)]` -/
def P15291714878543754535.Spec : Prop :=
  ∀ n, P15291714878543754535.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P5072176111405412818

`filter[A338924(n+1), A356163(#)]`
-/

namespace A036349.P5072176111405412818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P5072176111405412818

namespace A036349

/-- `filter[A338924(n+1), A356163(#)]` -/
def P5072176111405412818.Spec : Prop :=
  ∀ n, P5072176111405412818.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P16590238617306117995

`filter[A173905(n+2), A356163(#)]`
-/

namespace A036349.P16590238617306117995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P16590238617306117995

namespace A036349

/-- `filter[A173905(n+2), A356163(#)]` -/
def P16590238617306117995.Spec : Prop :=
  ∀ n, P16590238617306117995.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P13294948452724881108

`filter[A073900(n+1), A356163(#)]`
-/

namespace A036349.P13294948452724881108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P13294948452724881108

namespace A036349

/-- `filter[A073900(n+1), A356163(#)]` -/
def P13294948452724881108.Spec : Prop :=
  ∀ n, P13294948452724881108.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P15108493283196979841

`filter[A073899(n+1), A356163(#)]`
-/

namespace A036349.P15108493283196979841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P15108493283196979841

namespace A036349

/-- `filter[A073899(n+1), A356163(#)]` -/
def P15108493283196979841.Spec : Prop :=
  ∀ n, P15108493283196979841.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P16179873278847226742

`filter[A101513(n+1), A356163(#)]`
-/

namespace A036349.P16179873278847226742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P16179873278847226742

namespace A036349

/-- `filter[A101513(n+1), A356163(#)]` -/
def P16179873278847226742.Spec : Prop :=
  ∀ n, P16179873278847226742.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P5677093634321158009

`filter[A089088(n), A356163(#)]`
-/

namespace A036349.P5677093634321158009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P5677093634321158009

namespace A036349

/-- `filter[A089088(n), A356163(#)]` -/
def P5677093634321158009.Spec : Prop :=
  ∀ n, P5677093634321158009.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P7431310106631117060

`filter[A137621(n+1), A356163(#)]`
-/

namespace A036349.P7431310106631117060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P7431310106631117060

namespace A036349

/-- `filter[A137621(n+1), A356163(#)]` -/
def P7431310106631117060.Spec : Prop :=
  ∀ n, P7431310106631117060.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P16437697761584829381

`filter[A376198(n+1), A356163(#)]`
-/

namespace A036349.P16437697761584829381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P16437697761584829381

namespace A036349

/-- `filter[A376198(n+1), A356163(#)]` -/
def P16437697761584829381.Spec : Prop :=
  ∀ n, P16437697761584829381.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P6436235665639009302

`filter[A156657(n+2), A356163(#)]`
-/

namespace A036349.P6436235665639009302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P6436235665639009302

namespace A036349

/-- `filter[A156657(n+2), A356163(#)]` -/
def P6436235665639009302.Spec : Prop :=
  ∀ n, P6436235665639009302.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P10979963343489911987

`filter[A133398(n+1), A356163(#)]`
-/

namespace A036349.P10979963343489911987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A036349.P10979963343489911987

namespace A036349

/-- `filter[A133398(n+1), A356163(#)]` -/
def P10979963343489911987.Spec : Prop :=
  ∀ n, P10979963343489911987.a n = A036349 (n + 1)

end A036349

/-! ## A036349.P5418744642851246489

`lt[A001414(n+1), A212831(A001414(n+1)+1)]+1`
-/

namespace A036349.P5418744642851246489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A001414 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A036349.P5418744642851246489

namespace A036349

/-- `lt[A001414(n+1), A212831(A001414(n+1)+1)]+1` -/
def P5418744642851246489.Spec : Prop :=
  ∀ n, (P5418744642851246489.a n : ℤ) = A036349 (n + 1)

end A036349

/-!
# A036350: Composite numbers such that the sum of the prime factors is odd (counted with multiplicity).

The programs for A036350, the canonical program `A036350.P4117456355186403580` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036350 has offset 1).

The definition of A036350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036350.P4117456355186403580

`∪[A036348(n+1), A046340(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036350

/-- `∪[A036348(n+1), A046340(n+1)]` -/
def P4117456355186403580.Spec : Prop :=
  ∀ n, (P4117456355186403580.a n : ℤ) = A036350 (n + 1)

theorem P4117456355186403580.correct : P4117456355186403580.Spec := by
  intro n
  simp only [A036350, Nat.add_sub_cancel]

end A036350

/-! ## A036350.P14429507239406477238

`∪[A144585(n+1), A046363(n+1)]`
-/

namespace A036350.P14429507239406477238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P14429507239406477238

namespace A036350

/-- `∪[A144585(n+1), A046363(n+1)]` -/
def P14429507239406477238.Spec : Prop :=
  ∀ n, (P14429507239406477238.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P1929006698347390556

`eq[0, A106458(A107463(n))]`
-/

namespace A036350.P1929006698347390556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036350.P1929006698347390556

namespace A036350

/-- `eq[0, A106458(A107463(n))]` -/
def P1929006698347390556.Spec : Prop :=
  ∀ n, (P1929006698347390556.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P3970950493310608623

`eq[2, A107286(A107463(n)+1)]`
-/

namespace A036350.P3970950493310608623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107463 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036350.P3970950493310608623

namespace A036350

/-- `eq[2, A107286(A107463(n)+1)]` -/
def P3970950493310608623.Spec : Prop :=
  ∀ n, (P3970950493310608623.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P16895517654449458646

`eq[2, A107393(A107463(n)+1)]`
-/

namespace A036350.P16895517654449458646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A107463 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036350.P16895517654449458646

namespace A036350

/-- `eq[2, A107393(A107463(n)+1)]` -/
def P16895517654449458646.Spec : Prop :=
  ∀ n, (P16895517654449458646.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P12560023337618572980

`eq[A142150(A107463(n)), A339579(n+1)]`
-/

namespace A036350.P12560023337618572980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036350.P12560023337618572980

namespace A036350

/-- `eq[A142150(A107463(n)), A339579(n+1)]` -/
def P12560023337618572980.Spec : Prop :=
  ∀ n, (P12560023337618572980.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P14278348984092509461

`filter[A335657(n+1), A005171(#)]`
-/

namespace A036350.P14278348984092509461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A036350.P14278348984092509461

namespace A036350

/-- `filter[A335657(n+1), A005171(#)]` -/
def P14278348984092509461.Spec : Prop :=
  ∀ n, P14278348984092509461.a n = A036350 (n + 1)

end A036350

/-! ## A036350.P12179658107098969820

`filter[A335657(n+1), A066247(#)]`
-/

namespace A036350.P12179658107098969820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A036350.P12179658107098969820

namespace A036350

/-- `filter[A335657(n+1), A066247(#)]` -/
def P12179658107098969820.Spec : Prop :=
  ∀ n, P12179658107098969820.a n = A036350 (n + 1)

end A036350

/-! ## A036350.P3559478213868636631

`filter[A335657(n+1), A202238(#)]`
-/

namespace A036350.P3559478213868636631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A036350.P3559478213868636631

namespace A036350

/-- `filter[A335657(n+1), A202238(#)]` -/
def P3559478213868636631.Spec : Prop :=
  ∀ n, P3559478213868636631.a n = A036350 (n + 1)

end A036350

/-! ## A036350.P6974428734123633810

`∩[A002808(n+1), A335657(n+1)]`
-/

namespace A036350.P6974428734123633810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P6974428734123633810

namespace A036350

/-- `∩[A002808(n+1), A335657(n+1)]` -/
def P6974428734123633810.Spec : Prop :=
  ∀ n, (P6974428734123633810.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P16522825399469395621

`∩[A018252(n+1), A335657(n+1)]`
-/

namespace A036350.P16522825399469395621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P16522825399469395621

namespace A036350

/-- `∩[A018252(n+1), A335657(n+1)]` -/
def P16522825399469395621.Spec : Prop :=
  ∀ n, (P16522825399469395621.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P16527422529898252203

`∩[A141468(n+1), A335657(n+1)]`
-/

namespace A036350.P16527422529898252203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P16527422529898252203

namespace A036350

/-- `∩[A141468(n+1), A335657(n+1)]` -/
def P16527422529898252203.Spec : Prop :=
  ∀ n, (P16527422529898252203.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P7533933059649631825

`∩[A089229(n+1), A335657(n+1)]`
-/

namespace A036350.P7533933059649631825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P7533933059649631825

namespace A036350

/-- `∩[A089229(n+1), A335657(n+1)]` -/
def P7533933059649631825.Spec : Prop :=
  ∀ n, (P7533933059649631825.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P10634146447698762183

`∩[A139118(n+1), A335657(n+1)]`
-/

namespace A036350.P10634146447698762183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P10634146447698762183

namespace A036350

/-- `∩[A139118(n+1), A335657(n+1)]` -/
def P10634146447698762183.Spec : Prop :=
  ∀ n, (P10634146447698762183.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P16240086150616699761

`∩[A268388(n+1), A335657(n+1)]`
-/

namespace A036350.P16240086150616699761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P16240086150616699761

namespace A036350

/-- `∩[A268388(n+1), A335657(n+1)]` -/
def P16240086150616699761.Spec : Prop :=
  ∀ n, (P16240086150616699761.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P18135043495255694869

`∩[A080257(n+1), A335657(n+1)]`
-/

namespace A036350.P18135043495255694869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P18135043495255694869

namespace A036350

/-- `∩[A080257(n+1), A335657(n+1)]` -/
def P18135043495255694869.Spec : Prop :=
  ∀ n, (P18135043495255694869.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P16982728126961446920

`∩[A335657(n+1), A343311(n+1)]`
-/

namespace A036350.P16982728126961446920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P16982728126961446920

namespace A036350

/-- `∩[A335657(n+1), A343311(n+1)]` -/
def P16982728126961446920.Spec : Prop :=
  ∀ n, (P16982728126961446920.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P17250151001157380956

`∩[A056653(n+1), A335657(n+1)]`
-/

namespace A036350.P17250151001157380956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P17250151001157380956

namespace A036350

/-- `∩[A056653(n+1), A335657(n+1)]` -/
def P17250151001157380956.Spec : Prop :=
  ∀ n, (P17250151001157380956.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P3365213204171079120

`∩[A065090(n+1), A335657(n+1)]`
-/

namespace A036350.P3365213204171079120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P3365213204171079120

namespace A036350

/-- `∩[A065090(n+1), A335657(n+1)]` -/
def P3365213204171079120.Spec : Prop :=
  ∀ n, (P3365213204171079120.a n : ℤ) = A036350 (n + 1)

end A036350

/-! ## A036350.P195996605404818157

`eq[A027642(A107463(n)), A057427(n)]`
-/

namespace A036350.P195996605404818157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036350.P195996605404818157

namespace A036350

/-- `eq[A027642(A107463(n)), A057427(n)]` -/
def P195996605404818157.Spec : Prop :=
  ∀ n, (P195996605404818157.a n : ℤ) = A036350 (n + 1)

end A036350

/-!
# A036351: Number of numbers <= 10^n that are products of two distinct primes.

The programs for A036351, there is no canonical definition to state claims against.
-/

/-! ## A036351.P11050330800580049904

`A036352(n+1)-A122121(n+1)`
-/

namespace A036351.P11050330800580049904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036352 (n + 1) - A122121 (n + 1)

end

end A036351.P11050330800580049904

/-! ## A036351.P11029969055579400669

`A066265(n+1)+A000007(n)-A122121(n+1)`
-/

namespace A036351.P11029969055579400669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (n + 1) + A000007 n - A122121 (n + 1)

end

end A036351.P11029969055579400669

/-! ## A036351.P4372217020087532859

`A066265(n+1)+char[A066265(2*n)]-A122121(n+1)`
-/

namespace A036351.P4372217020087532859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A122121 (n + 1)

end

end A036351.P4372217020087532859

/-! ## A036351.P11103973097143539057

`∑[A242134(n+1)]+C(2, n+2)-A122121(n+1)`
-/

namespace A036351.P11103973097143539057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (n + 2) : ℤ) - A122121 (n + 1)

end

end A036351.P11103973097143539057

/-!
# A036352: Number of numbers up to 10^n that are products of two primes.

The programs for A036352, there is no canonical definition to state claims against.
-/

/-! ## A036352.P8189848732856042480

`A066265(n+1)+A000007(n)`
-/

namespace A036352.P8189848732856042480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (n + 1) + A000007 n

end

end A036352.P8189848732856042480

/-! ## A036352.P12623591431619194698

`A122121(n+1)+A036351(n+1)`
-/

namespace A036352.P12623591431619194698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (n + 1) + A036351 (n + 1)

end

end A036352.P12623591431619194698

/-! ## A036352.P2318842044112938015

`A066265(n+1)+char[A066265(2*n)]`
-/

namespace A036352.P2318842044112938015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036352.P2318842044112938015

/-! ## A036352.P8179192603014357194

`∑[A242134(n+1)]+C(2, n+2)`
-/

namespace A036352.P8179192603014357194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (n + 2) : ℤ)

end

end A036352.P8179192603014357194

/-! ## A036352.P11109907418113567635

`A000007(n)+∑[A242134(n+1)]`
-/

namespace A036352.P11109907418113567635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036352.P11109907418113567635

/-!
# A036353: Square pentagonal numbers.

The programs for A036353, the canonical program `A036353.P2755215987696856330` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036353 has offset 0).

The definition of A036353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036353.P2755215987696856330

`floor(1/96*(sqrt(2)+sqrt(3))^(8*n-4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036353

/-- `floor(1/96*(sqrt(2)+sqrt(3))^(8*n-4))` -/
def P2755215987696856330.Spec : Prop :=
  ∀ n, P2755215987696856330.a n = A036353 n

theorem P2755215987696856330.correct : P2755215987696856330.Spec := by
  intro n
  simp only [A036353]

end A036353

/-! ## A036353.P9885063473979273026

`A004189(comp[2*(n+1)])²`
-/

namespace A036353.P9885063473979273026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A036353.P9885063473979273026

namespace A036353

/-- `A004189(comp[2*(n+1)])²` -/
def P9885063473979273026.Spec : Prop :=
  ∀ n, P9885063473979273026.a n = A036353 n

end A036353

/-! ## A036353.P1704107393557843007

`A108741(comp[∑[(-1)^∑[n]+1]])`
-/

namespace A036353.P1704107393557843007
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108741 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A036353.P1704107393557843007

namespace A036353

/-- `A108741(comp[∑[(-1)^∑[n]+1]])` -/
def P1704107393557843007.Spec : Prop :=
  ∀ n, P1704107393557843007.a n = A036353 n

end A036353

/-! ## A036353.P5167246461788187392

`A004189(2*n)²-A004189(A004273(2*n))`
-/

namespace A036353.P5167246461788187392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n) ^ 2 - A004189 (A004273 (2 * n)).toNat

end

end A036353.P5167246461788187392

namespace A036353

/-- `A004189(2*n)²-A004189(A004273(2*n))` -/
def P5167246461788187392.Spec : Prop :=
  ∀ n, P5167246461788187392.a n = A036353 n

end A036353

/-!
# A036354: Heptagonal square numbers.

The programs for A036354, there is no canonical definition to state claims against.
-/

/-! ## A036354.P1345529234097001226

`A046196(n+1)²`
-/

namespace A036354.P1345529234097001226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046196 (n + 1) ^ 2

end

end A036354.P1345529234097001226

/-! ## A036354.P8129189715690175659

`(A251927(n+1)+1)²`
-/

namespace A036354.P8129189715690175659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251927 (n + 1) + 1) ^ 2

end

end A036354.P8129189715690175659

/-! ## A036354.P12134428992413097645

`A075873(2*(n+1))²`
-/

namespace A036354.P12134428992413097645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (2 * (n + 1)) ^ 2

end

end A036354.P12134428992413097645

/-! ## A036354.P11869633500845843409

`(1-2*A253920(n+1))²`
-/

namespace A036354.P11869633500845843409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A253920 (n + 1)) ^ 2

end

end A036354.P11869633500845843409

/-! ## A036354.P14225598124392871132

`(A075836(2*(n+1))/2)²`
-/

namespace A036354.P14225598124392871132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075836 (2 * (n + 1)) : ℚ) / 2) ^ 2

end

end A036354.P14225598124392871132

/-!
# A036355: Fibonacci-Pascal triangle read by rows.

The programs for A036355, there is no canonical definition to state claims against.
-/

/-! ## A036355.P13923697219592026693

`A152595(A296834(n+1)+1)`
-/

namespace A036355.P13923697219592026693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152595 (A296834 (n + 1) + 1).toNat

end

end A036355.P13923697219592026693

/-! ## A036355.P1536350297237339524

`A228482(n+1)+A011736(A157149(n))`
-/

namespace A036355.P1536350297237339524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (n + 1) + A011736 (A157149 n).toNat

end

end A036355.P1536350297237339524

/-! ## A036355.P99841356413742584

`A228482(n+1)+A118135(A157523(n))`
-/

namespace A036355.P99841356413742584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (n + 1) + A118135 (A157523 n).toNat

end

end A036355.P99841356413742584

/-! ## A036355.P10172433421971534544

`A304718(n)-A057428(A051767(n+1))`
-/

namespace A036355.P10172433421971534544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304718 n - A057428 (A051767 (n + 1)).toNat

end

end A036355.P10172433421971534544

/-!
# A036359: Number of branched catafusenes with n condensed hexagons.

The programs for A036359, there is no canonical definition to state claims against.
-/

/-! ## A036359.P13155180779539356698

`A008616(A114710(n))-A010060(n)`
-/

namespace A036359.P13155180779539356698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A114710 n).toNat - A010060 n

end

end A036359.P13155180779539356698

/-! ## A036359.P8295184634261436548

`A058122(n)-A341141(A036378(n))`
-/

namespace A036359.P8295184634261436548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058122 n - A341141 ((A036378 n).toNat + 10)

end

end A036359.P8295184634261436548

/-! ## A036359.P6648295616558930048

`A000111(n)-A321729(A323092(n))`
-/

namespace A036359.P6648295616558930048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A321729 (A323092 n).toNat

end

end A036359.P6648295616558930048

/-! ## A036359.P362716753406516305

`A059995(A238112(n)+A224678(n+1))`
-/

namespace A036359.P362716753406516305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A238112 n + A224678 (n + 1)).toNat

end

end A036359.P362716753406516305

/-!
# A036360: a(n) = Sum_{k=1..n} n! * n^(n-k+1) / (n-k)!.

The programs for A036360, there is no canonical definition to state claims against.
-/

/-! ## A036360.P16547353749000405105

`n*A063169(A028310(n))`
-/

namespace A036360.P16547353749000405105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063169 (A028310 n).toNat

end

end A036360.P16547353749000405105

/-! ## A036360.P6337342553318876362

`n*(A063170(n)-A000312(n))`
-/

namespace A036360.P6337342553318876362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A063170 n - A000312 n)

end

end A036360.P6337342553318876362

/-! ## A036360.P17821519102994319180

`n*(A007778(n)-A219706(n))`
-/

namespace A036360.P17821519102994319180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007778 n - A219706 n)

end

end A036360.P17821519102994319180

/-! ## A036360.P17600349097745717836

`n²*A350078(A002620(n+1))`
-/

namespace A036360.P17600349097745717836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A350078 (A002620 (n + 1)).toNat

end

end A036360.P17600349097745717836

/-! ## A036360.P13981169551800344681

`A000290(n)*A001865(A028310(n))`
-/

namespace A036360.P13981169551800344681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A001865 (A028310 n).toNat

end

end A036360.P13981169551800344681

/-!
# A036361: Number of labeled 2-trees with n nodes.

The programs for A036361, the canonical program `A036361.P98476046127313512` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036361 has offset 1).

The definition of A036361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036361.P98476046127313512

`C(n+1, 2)*(2*(n+1)-3)^(n-3)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036361

/-- `C(n+1, 2)*(2*(n+1)-3)^(n-3)` -/
def P98476046127313512.Spec : Prop :=
  ∀ n, P98476046127313512.a n = (A036361 (n + 1) : ℚ)

end A036361

/-! ## A036361.P13852528563015243455

`(2*n-1)^(n-3)*∑[n]`
-/

namespace A036361.P13852528563015243455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A036361.P13852528563015243455

namespace A036361

/-- `(2*n-1)^(n-3)*∑[n]` -/
def P13852528563015243455.Spec : Prop :=
  ∀ n, P13852528563015243455.a n = (A036361 (n + 1) : ℚ)

end A036361

/-!
# A036362: Number of labeled 3-trees with n nodes.

The programs for A036362, the canonical program `A036362.P18168751931856109598` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036362 has offset 1).

The definition of A036362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036362.P18168751931856109598

`C(n+1, 3)*(3*(n+1)-8)^(n-4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036362

/-- `C(n+1, 3)*(3*(n+1)-8)^(n-4)` -/
def P18168751931856109598.Spec : Prop :=
  ∀ n, P18168751931856109598.a n = (A036362 (n + 1) : ℚ)

end A036362

/-! ## A036362.P1070749661187022095

`A125241(xor(n, a(n-1)))` with `a(0)=0`
-/

namespace A036362.P1070749661187022095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A125241 (Int.xor (n : ℤ) (a (n - 1))).toNat

end

end A036362.P1070749661187022095

namespace A036362

/-- `A125241(xor(n, a(n-1)))` -/
def P1070749661187022095.Spec : Prop :=
  ∀ n, P1070749661187022095.a n = A036362 (n + 1)

end A036362

/-!
# A036363: Line-labeled 2-trees with n nodes.

The programs for A036363, the canonical program `A036363.P14871156831638461551` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036363 has offset 3).

The definition of A036363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036363.P14871156831638461551

`(2*(n+3)-3)!*(2*(n+3)-3)^(n-1)/(2*(n+1)!)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036363

/-- `(2*(n+3)-3)!*(2*(n+3)-3)^(n-1)/(2*(n+1)!)` -/
def P14871156831638461551.Spec : Prop :=
  ∀ n, P14871156831638461551.a n = (A036363 (n + 3) : ℚ)

end A036363

/-! ## A036363.P15076049727365425057

`(4*n+6)^n*∏[Δ[n²]]`
-/

namespace A036363.P15076049727365425057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 6) ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A036363.P15076049727365425057

namespace A036363

/-- `(4*n+6)^n*∏[Δ[n²]]` -/
def P15076049727365425057.Spec : Prop :=
  ∀ n, P15076049727365425057.a n = A036363 (n + 3)

end A036363

/-! ## A036363.P8679346998938592710

`lcm(2^n, A034941(n+1))`
-/

namespace A036363.P8679346998938592710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A034941 (n + 1))

end

end A036363.P8679346998938592710

namespace A036363

/-- `lcm(2^n, A034941(n+1))` -/
def P8679346998938592710.Spec : Prop :=
  ∀ n, (P8679346998938592710.a n : ℤ) = A036363 (n + 3)

end A036363

/-! ## A036363.P16025010500622183386

`A277168(n+2)/A016825(n+1)`
-/

namespace A036363.P16025010500622183386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277168 (n + 2) : ℚ) / (A016825 (n + 1) : ℚ)

end

end A036363.P16025010500622183386

namespace A036363

/-- `A277168(n+2)/A016825(n+1)` -/
def P16025010500622183386.Spec : Prop :=
  ∀ n, P16025010500622183386.a n = (A036363 (n + 3) : ℚ)

end A036363

/-!
# A036364: Number of free n-ominoes with cell centers determining n-2 space (proper dimension n-2).

The programs for A036364, there is no canonical definition to state claims against.
-/

/-! ## A036364.P11795585163536076322

`A049429(C(n+3, 2))`
-/

namespace A036364.P11795585163536076322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049429 (Nat.choose (n + 3) 2)

end

end A036364.P11795585163536076322

/-! ## A036364.P12857831161461856940

`A049429(∑[n+2]+1)`
-/

namespace A036364.P12857831161461856940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049429 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036364.P12857831161461856940

/-! ## A036364.P10084716406970157601

`A049430(∑[n+3]+2)`
-/

namespace A036364.P10084716406970157601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A036364.P10084716406970157601

/-! ## A036364.P9188692689311179425

`record[A049430(∑[ceil((n/2)^(n%2))])]`
-/

namespace A036364.P9188692689311179425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ (n % 2)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036364.P9188692689311179425

/-! ## A036364.P11964587572895809741

`record[A049430(A212342(n))]`
-/

namespace A036364.P11964587572895809741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (A212342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036364.P11964587572895809741

/-!
# A036365: Number of chiral n-ominoes in n-2 space.

The programs for A036365, there is no canonical definition to state claims against.
-/

/-! ## A036365.P14743020155750053098

`A105516(A268996(n+2))`
-/

namespace A036365.P14743020155750053098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A268996 (n + 2)).toNat

end

end A036365.P14743020155750053098

/-! ## A036365.P2685849513487662626

`A018031(n)-A002324(A004212(n))`
-/

namespace A036365.P2685849513487662626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018031 n - A002324 (A004212 n).toNat

end

end A036365.P2685849513487662626

/-! ## A036365.P15074777992093277888

`A018031(n)-A035170(A286073(n+1))`
-/

namespace A036365.P15074777992093277888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018031 n - A035170 (A286073 (n + 1)).toNat

end

end A036365.P15074777992093277888

/-!
# A036366: Number of asymmetric n-ominoes in n-2 space.

The programs for A036366, there is no canonical definition to state claims against.
-/

/-! ## A036366.P7574644820318585638

`A070106(A006131(n+4))-A324850(n+1)`
-/

namespace A036366.P7574644820318585638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A006131 (n + 4)).toNat - A324850 (n + 1)

end

end A036366.P7574644820318585638

/-! ## A036366.P5231112013431281169

`A006855(A309267(n))`
-/

namespace A036366.P5231112013431281169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006855 (A309267 n).toNat

end

end A036366.P5231112013431281169

/-!
# A036367: Number of free orthoplex n-ominoes with cell centers determining n-2 space.

The programs for A036367, there is no canonical definition to state claims against.
-/

/-! ## A036367.P5368501514828310784

`A331266((n+1)*A007808(n))`
-/

namespace A036367.P5368501514828310784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331266 ((n + 1 : ℤ) * A007808 n).toNat

end

end A036367.P5368501514828310784

/-! ## A036367.P9016879482352092069

`A304038(A126445(n))+A133443(n)`
-/

namespace A036367.P9016879482352092069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304038 (A126445 n).toNat + A133443 n

end

end A036367.P9016879482352092069

/-!
# A036368: Number of chiral orthoplex n-ominoes in n-2 space.

The programs for A036368, there is no canonical definition to state claims against.
-/

/-! ## A036368.P16221537218617369542

`A362781(A097116(n+1))`
-/

namespace A036368.P16221537218617369542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362781 (A097116 (n + 1)).toNat

end

end A036368.P16221537218617369542

/-! ## A036368.P2710808959993422542

`∑[A151847(A201237(n+1)+1)]`
-/

namespace A036368.P2710808959993422542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (A201237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036368.P2710808959993422542

/-!
# A036369: Number of asymmetric orthoplex n-ominoes in n-2 space.

The programs for A036369, there is no canonical definition to state claims against.
-/

/-! ## A036369.P12897072739436935027

`A323481(2*n+1)-A306211(A127817(n+1))`
-/

namespace A036369.P12897072739436935027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323481 (2 * n + 1) - A306211 (A127817 (n + 1)).toNat

end

end A036369.P12897072739436935027

/-! ## A036369.P16272923911104412060

`A276981(A295619(3*n+4))%A000045(2*(n+1))`
-/

namespace A036369.P16272923911104412060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276981 (A295619 (3 * n + 4)).toNat) (A000045 (2 * (n + 1)))

end

end A036369.P16272923911104412060

/-!
# A036372: Number of ternary rooted trees with n nodes and height at most 4.

The programs for A036372, there is no canonical definition to state claims against.
-/

/-! ## A036372.P5734090212525680188

`A036370(n+22)`
-/

namespace A036372.P5734090212525680188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 (n + 22)

end

end A036372.P5734090212525680188

/-! ## A036372.P4329180287764721872

`A036373(n)-A036420(n)`
-/

namespace A036372.P4329180287764721872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036373 n - A036420 n

end

end A036372.P4329180287764721872

/-! ## A036372.P2856239965743225202

`A036374(n)-(A036421(n)+A036420(n))`
-/

namespace A036372.P2856239965743225202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n - (A036421 n + A036420 n)

end

end A036372.P2856239965743225202

/-! ## A036372.P11346592079233663890

`A028310(A036374(n)-A036420(n)-A036421(n))`
-/

namespace A036372.P11346592079233663890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036374 n - A036420 n - A036421 n).toNat

end

end A036372.P11346592079233663890

/-! ## A036372.P2121332819023194480

`A036375(n)-(A036422(n)+A036421(n))-A036420(n)`
-/

namespace A036372.P2121332819023194480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - (A036422 n + A036421 n) - A036420 n

end

end A036372.P2121332819023194480

/-!
# A036373: Number of ternary rooted trees with n nodes and height at most 5.

The programs for A036373, there is no canonical definition to state claims against.
-/

/-! ## A036373.P1503437174316297088

`A036374(n)-A036421(n)`
-/

namespace A036373.P1503437174316297088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n - A036421 n

end

end A036373.P1503437174316297088

/-! ## A036373.P18014212799400056304

`A036375(n)-(A036422(n)+A036421(n))`
-/

namespace A036373.P18014212799400056304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - (A036422 n + A036421 n)

end

end A036373.P18014212799400056304

/-! ## A036373.P2521176700953213784

`A036375(n)-A036422(n)-A036421(A028310(n))`
-/

namespace A036373.P2521176700953213784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - A036422 n - A036421 (A028310 n).toNat

end

end A036373.P2521176700953213784

/-! ## A036373.P11702773964418653945

`A036376(n)-(A036423(n)+A036422(n))-A036421(n)`
-/

namespace A036373.P11702773964418653945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036423 n + A036422 n) - A036421 n

end

end A036373.P11702773964418653945

/-! ## A036373.P4774352770529125962

`A036370(A327374(n+5)+3)`
-/

namespace A036373.P4774352770529125962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 (A327374 (n + 5) + 3).toNat

end

end A036373.P4774352770529125962

/-! ## A036373.P14463083425649089200

`A036370(A327374(n+8))`
-/

namespace A036373.P14463083425649089200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 (A327374 (n + 8)).toNat

end

end A036373.P14463083425649089200

/-!
# A036374: Number of ternary rooted trees with n nodes and height at most 6.

The programs for A036374, there is no canonical definition to state claims against.
-/

/-! ## A036374.P561514954992416836

`A036375(n)-A036422(n)`
-/

namespace A036374.P561514954992416836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - A036422 n

end

end A036374.P561514954992416836

/-! ## A036374.P15753936727685110162

`A036375(n)+A036422(n)*A057428(n)`
-/

namespace A036374.P15753936727685110162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n + A036422 n * A057428 n

end

end A036374.P15753936727685110162

/-! ## A036374.P16499939507142463338

`A036375(n)+A036422(n)*A260196(n)`
-/

namespace A036374.P16499939507142463338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n + A036422 n * A260196 n

end

end A036374.P16499939507142463338

/-! ## A036374.P16287935354135186081

`A036376(n)-(A036423(n)+A036422(n))`
-/

namespace A036374.P16287935354135186081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036423 n + A036422 n)

end

end A036374.P16287935354135186081

/-! ## A036374.P2856032060827016392

`A036421(n)+A036373(n)`
-/

namespace A036374.P2856032060827016392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036421 n + A036373 n

end

end A036374.P2856032060827016392

/-!
# A036375: Number of ternary rooted trees with n nodes and height at most 7.

The programs for A036375, there is no canonical definition to state claims against.
-/

/-! ## A036375.P16012182627266059674

`A036422(n)+A036374(n)`
-/

namespace A036375.P16012182627266059674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036422 n + A036374 n

end

end A036375.P16012182627266059674

/-! ## A036375.P15331229065468498137

`A036376(n)-A036423(n)`
-/

namespace A036375.P15331229065468498137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - A036423 n

end

end A036375.P15331229065468498137

/-! ## A036375.P11891568418052450323

`A036373(n)+A036422(n)+A036421(n)`
-/

namespace A036375.P11891568418052450323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036373 n + (A036422 n + A036421 n)

end

end A036375.P11891568418052450323

/-! ## A036375.P7636460832950596962

`A036422(n)+A036372(n)+A036421(n)+A036420(n)`
-/

namespace A036375.P7636460832950596962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036422 n + (A036372 n + (A036421 n + A036420 n))

end

end A036375.P7636460832950596962

/-! ## A036375.P18429731752572992512

`A036376(n)+A036632(A036425(n))-A036632(n)`
-/

namespace A036375.P18429731752572992512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n + (A036632 (A036425 n).toNat - A036632 n)

end

end A036375.P18429731752572992512

/-!
# A036376: Number of ternary rooted trees with n nodes and height at most 8.

The programs for A036376, there is no canonical definition to state claims against.
-/

/-! ## A036376.P11233569631612423981

`A036423(n)+A036375(n)`
-/

namespace A036376.P11233569631612423981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036423 n + A036375 n

end

end A036376.P11233569631612423981

/-! ## A036376.P12828749430533344458

`A036374(n)+A036423(n)+A036422(n)`
-/

namespace A036376.P12828749430533344458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n + (A036423 n + A036422 n)

end

end A036376.P12828749430533344458

/-! ## A036376.P11660982893633397933

`A036375(n)-(A002262(∑[n])-A036423(n))`
-/

namespace A036376.P11660982893633397933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - (A002262 (∑ j ∈ Finset.range (n + 1), f1 j) - A036423 n)

end

end A036376.P11660982893633397933

/-! ## A036376.P4312855779469895030

`A036423(n)+A036373(n)+A036422(n)+A036421(n)`
-/

namespace A036376.P4312855779469895030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036423 n + (A036373 n + (A036422 n + A036421 n))

end

end A036376.P4312855779469895030

/-! ## A036376.P8602921016208376047

`A071842(A111695(n+2))+A036375(n)`
-/

namespace A036376.P8602921016208376047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (A111695 (n + 2)).toNat + A036375 n

end

end A036376.P8602921016208376047

/-!
# A036378: Number of primes p between powers of 2, 2^n < p <= 2^(n+1).

The programs for A036378, there is no canonical definition to state claims against.
-/

/-! ## A036378.P15747317736957550361

`Δ[A007053(n)]`
-/

namespace A036378.P15747317736957550361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036378.P15747317736957550361

/-! ## A036378.P13860218546446361948

`A255047(n)-A182095(n)`
-/

namespace A036378.P13860218546446361948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A182095 n

end

end A036378.P13860218546446361948

/-! ## A036378.P925752844119592077

`A007053(n+1)-A007053(n)`
-/

namespace A036378.P925752844119592077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1) - A007053 n

end

end A036378.P925752844119592077

/-! ## A036378.P2612204422317653867

`Δ[A024622(n)]-A036380(n+1)`
-/

namespace A036378.P2612204422317653867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A036380 (n + 1)

end

end A036378.P2612204422317653867

/-! ## A036378.P1110801537425695924

`A304521(n+1)-A036380(n+1)`
-/

namespace A036378.P1110801537425695924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304521 (n + 1) - A036380 (n + 1)

end

end A036378.P1110801537425695924

/-! ## A036378.P1986789299717212099

`Δ[A060967(2*n)]`
-/

namespace A036378.P1986789299717212099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036378.P1986789299717212099

/-! ## A036378.P12904433656611951591

`Δ[A060971(5*n)]`
-/

namespace A036378.P12904433656611951591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060971 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036378.P12904433656611951591

/-! ## A036378.P7064322482416521824

`abs(Δ[A060967(A004277(n))])`
-/

namespace A036378.P7064322482416521824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036378.P7064322482416521824

/-! ## A036378.P1140547116830187661

`abs(Δ[A060967(A005843(n))])`
-/

namespace A036378.P1140547116830187661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036378.P1140547116830187661

/-! ## A036378.P14869396374031015639

`A060967(2*(n+1))-A060967(2*n)`
-/

namespace A036378.P14869396374031015639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1)) - A060967 (2 * n)

end

end A036378.P14869396374031015639

/-!
# A036380: Number of true prime powers whose binary order, ceiling(log_2(p^x)), is n.

The programs for A036380, there is no canonical definition to state claims against.
-/

/-! ## A036380.P9124293853673225140

`Δ[A036386(ceil(abs(γ-n)))]`
-/

namespace A036380.P9124293853673225140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036386 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036380.P9124293853673225140

/-! ## A036380.P8560369169175390667

`abs(Δ[A036386(A028310(n))])`
-/

namespace A036380.P8560369169175390667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036386 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036380.P8560369169175390667

/-! ## A036380.P12732653018563832777

`A036386(n+1)-A036386(A028310(n))`
-/

namespace A036380.P12732653018563832777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036386 (n + 1) - A036386 (A028310 n).toNat

end

end A036380.P12732653018563832777

/-! ## A036380.P646229406327617060

`Δ[A024622(n)-A007053(n)]`
-/

namespace A036380.P646229406327617060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n - A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036380.P646229406327617060

/-! ## A036380.P7948918702261974227

`Δ[A024622(n)]-A036378(n)`
-/

namespace A036380.P7948918702261974227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A036378 n

end

end A036380.P7948918702261974227

/-! ## A036380.P885260987052639755

`A244508(n)+1-A036378(n)`
-/

namespace A036380.P885260987052639755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244508 n + (1 - A036378 n)

end

end A036380.P885260987052639755

/-! ## A036380.P12021680803502225147

`A304521(n+1)-A036378(n)`
-/

namespace A036380.P12021680803502225147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304521 (n + 1) - A036378 n

end

end A036380.P12021680803502225147

/-! ## A036380.P16694798125983821111

`A062761(n+1)+A380431(n)-A380431(n+1)`
-/

namespace A036380.P16694798125983821111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062761 (n + 1) + (A380431 n - A380431 (n + 1))

end

end A036380.P16694798125983821111

/-! ## A036380.P15822929662898373637

`Δ[A024622(n)-A060967(2*n)]`
-/

namespace A036380.P15822929662898373637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n - A060967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036380.P15822929662898373637

/-!
# A036381: Number of connected numbers (A029827) in the interval [2^(n-1)+1, 2^n].

The programs for A036381, there is no canonical definition to state claims against.
-/

/-! ## A036381.P14690517987063104256

`Δ[A036387(round(acot(n)+n))]`
-/

namespace A036381.P14690517987063104256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036387 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036381.P14690517987063104256

/-! ## A036381.P6785972881153385835

`Δ[A036387(round(sqrt(n²+1)))]`
-/

namespace A036381.P6785972881153385835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036387 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036381.P6785972881153385835

/-! ## A036381.P10466779947271380247

`abs(Δ[A036387(A028310(n))])`
-/

namespace A036381.P10466779947271380247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036387 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036381.P10466779947271380247

/-! ## A036381.P14799693549228247421

`abs(Δ[A036387(A233583(n+1))])`
-/

namespace A036381.P14799693549228247421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036387 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036381.P14799693549228247421

/-! ## A036381.P628268113794887772

`abs(Δ[A036387(A123108(2*n))])`
-/

namespace A036381.P628268113794887772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036387 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036381.P628268113794887772

/-!
# A036383: First differences of odd split numbers (A036382).

The programs for A036383, there is no canonical definition to state claims against.
-/

/-! ## A036383.P7927751939811118116

`Δ[A036382(n+1)]`
-/

namespace A036383.P7927751939811118116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036383.P7927751939811118116

/-! ## A036383.P8800718032187992324

`A036382(n+2)-A036382(n+1)`
-/

namespace A036383.P8800718032187992324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036382 (n + 2) - A036382 (n + 1)

end

end A036383.P8800718032187992324

/-! ## A036383.P14557157900700940032

`A052928(A036382(n+2)%A036382(n+1))`
-/

namespace A036383.P14557157900700940032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.tmod (A036382 (n + 2)) (A036382 (n + 1))).toNat

end

end A036383.P14557157900700940032

/-! ## A036383.P13711810275415074413

`A036382(A001057(2*n+3))%A036382(n+1)`
-/

namespace A036383.P13711810275415074413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036382 (A001057 (2 * n + 3)).toNat) (A036382 (n + 1))

end

end A036383.P13711810275415074413

/-! ## A036383.P11314644193051770627

`Δ[record[A036382(A351085(n))]]`
-/

namespace A036383.P11314644193051770627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036382 (A351085 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036383.P11314644193051770627

/-! ## A036383.P6029117896318677289

`Δ[record[A036382(A351080(n))]]`
-/

namespace A036383.P6029117896318677289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036382 (A351080 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036383.P6029117896318677289

/-! ## A036383.P15370512933317836689

`A036382(A077958(3*n+2)+2+n)%A036382(n+1)`
-/

namespace A036383.P15370512933317836689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036382 (A077958 (3 * n + 2) + 2 + (n : ℤ)).toNat) (A036382 (n + 1))

end

end A036383.P15370512933317836689

/-!
# A036384: Number of odd split numbers (A036382) in the interval [2^(n-1), 2^n].

The programs for A036384, there is no canonical definition to state claims against.
-/

/-! ## A036384.P2585886603333967757

`Δ[A036388(round(acot(n)+n))]`
-/

namespace A036384.P2585886603333967757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036384.P2585886603333967757

/-! ## A036384.P14721496121791461185

`Δ[A036388(abs(1-n)+1)]`
-/

namespace A036384.P14721496121791461185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036384.P14721496121791461185

/-! ## A036384.P9836766387190691175

`abs(Δ[A036388(A028310(n))])`
-/

namespace A036384.P9836766387190691175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036384.P9836766387190691175

/-! ## A036384.P7693690795486723740

`abs(Δ[A036388(A233583(n+1))])`
-/

namespace A036384.P7693690795486723740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036384.P7693690795486723740

/-! ## A036384.P11564717971323952825

`A036388(n+1)-A036388(round(acot(n)+n))`
-/

namespace A036384.P11564717971323952825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (n + 1) - A036388 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A036384.P11564717971323952825

/-!
# A036385: Number of split numbers (A036382) with binary order (A029837) n, i.e., those in interval [ 2^(n-1), 2^n ].

The programs for A036385, there is no canonical definition to state claims against.
-/

/-! ## A036385.P28104390609061629

`Δ[A036389(n^floor(atan(n)))]`
-/

namespace A036385.P28104390609061629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036385.P28104390609061629

/-! ## A036385.P11415817340283518898

`Δ[A036389(abs(1-n)+1)]`
-/

namespace A036385.P11415817340283518898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036385.P11415817340283518898

/-! ## A036385.P16481400930462788137

`abs(Δ[A036389(A028310(n))])`
-/

namespace A036385.P16481400930462788137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036385.P16481400930462788137

/-! ## A036385.P2885361731294821666

`abs(Δ[A036389(A233583(n+1))])`
-/

namespace A036385.P2885361731294821666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036385.P2885361731294821666

/-! ## A036385.P3207682567661828537

`abs(Δ[A036389(A123108(2*n))])`
-/

namespace A036385.P3207682567661828537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036385.P3207682567661828537

/-!
# A036386: Number of prime powers (p^2, p^3, ...) <= 2^n.

The programs for A036386, there is no canonical definition to state claims against.
-/

/-! ## A036386.P5198621621759585652

`∑[A036380(n+1)]`
-/

namespace A036386.P5198621621759585652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036386.P5198621621759585652

/-! ## A036386.P4797216873769240463

`∑[Δ[A024622(n)]-A036378(n)]`
-/

namespace A036386.P4797216873769240463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036386.P4797216873769240463

/-! ## A036386.P4826916343364468400

`A182908(n+1)-∑[A036378(n)]`
-/

namespace A036386.P4826916343364468400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036386.P4826916343364468400

/-! ## A036386.P2509585759349812780

`A182908(n+1)-A007053(n+1)`
-/

namespace A036386.P2509585759349812780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - A007053 (n + 1)

end

end A036386.P2509585759349812780

/-! ## A036386.P3795522178557418198

`A024622(n+1)-(A007053(n+1)+1)`
-/

namespace A036386.P3795522178557418198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 (n + 1) - (A007053 (n + 1) + 1)

end

end A036386.P3795522178557418198

/-! ## A036386.P13256975134245998376

`A024622(n)+A244508(n)-A007053(n+1)`
-/

namespace A036386.P13256975134245998376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n + (A244508 n - A007053 (n + 1))

end

end A036386.P13256975134245998376

/-! ## A036386.P10870488981078935486

`A182908(n+1)-A060967(2*(n+1))`
-/

namespace A036386.P10870488981078935486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - A060967 (2 * (n + 1))

end

end A036386.P10870488981078935486

/-!
# A036387: Number of connected numbers (A029827) with binary order (A029837) <= n.

The programs for A036387, there is no canonical definition to state claims against.
-/

/-! ## A036387.P3669176525579711936

`∑[A036381(n+1)]`
-/

namespace A036387.P3669176525579711936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036387.P3669176525579711936

/-! ## A036387.P15611908711466749996

`A325106(A351190(2*n+1))`
-/

namespace A036387.P15611908711466749996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A351190 (2 * n + 1)).toNat

end

end A036387.P15611908711466749996

/-! ## A036387.P12765322042237851754

`∑{d}[A090597(n+3), A348960(#)]`
-/

namespace A036387.P12765322042237851754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090597 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348960 d

end

end A036387.P12765322042237851754

/-! ## A036387.P13125628751391774092

`A000194(A002212(n))-A118807(n)`
-/

namespace A036387.P13125628751391774092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A002212 n).toNat - A118807 n

end

end A036387.P13125628751391774092

/-! ## A036387.P2309655550633283293

`A002024(A340334(n))-A004101(n)`
-/

namespace A036387.P2309655550633283293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A340334 n).toNat - A004101 n

end

end A036387.P2309655550633283293

/-!
# A036388: Number of odd split numbers (A036382) of which the binary order (A029837) is <= n, i.e., those which occur below 2^n.

The programs for A036388, there is no canonical definition to state claims against.
-/

/-! ## A036388.P744594881786270431

`∑[A036384(n+1)]`
-/

namespace A036388.P744594881786270431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036388.P744594881786270431

/-! ## A036388.P7264146167727525334

`A036389(n+1)-2^n+n+1`
-/

namespace A036388.P7264146167727525334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (n + 1) - (2 ^ n : ℤ) + (n + 1 : ℤ)

end

end A036388.P7264146167727525334

/-! ## A036388.P6916976419479117021

`A036389(n+1)-A000295(n)`
-/

namespace A036388.P6916976419479117021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (n + 1) - A000295 n

end

end A036388.P6916976419479117021

/-! ## A036388.P14547682348130733176

`∑[A036385(n+1)]-A000295(n)`
-/

namespace A036388.P14547682348130733176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000295 n

end

end A036388.P14547682348130733176

/-! ## A036388.P7221495217980515373

`A036389(n+1)+n-A000225(n)`
-/

namespace A036388.P7221495217980515373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036389 (n + 1) + ((n : ℤ) - A000225 n)

end

end A036388.P7221495217980515373

/-!
# A036389: Number of (odd and even) split numbers (A036382) below 2^n.

The programs for A036389, there is no canonical definition to state claims against.
-/

/-! ## A036389.P13878046247396375979

`∑[A036385(n+1)]`
-/

namespace A036389.P13878046247396375979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036389.P13878046247396375979

/-! ## A036389.P12861405528882778881

`2^n+A036388(n+1)-(n+1)`
-/

namespace A036389.P12861405528882778881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A036388 (n + 1) - (n + 1 : ℤ))

end

end A036389.P12861405528882778881

/-! ## A036389.P17788622362106627359

`∑[A036384(n+1)]+xor(n, 2^n-1)`
-/

namespace A036389.P17788622362106627359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.xor (n : ℤ) ((2 ^ n : ℤ) - 1)

end

end A036389.P17788622362106627359

/-! ## A036389.P14562163241352241134

`A036388(n+1)+A000295(n)`
-/

namespace A036389.P14562163241352241134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (n + 1) + A000295 n

end

end A036389.P14562163241352241134

/-! ## A036389.P4764544237049297134

`A000295(n)+∑[A036384(n+1)]`
-/

namespace A036389.P4764544237049297134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036389.P4764544237049297134

/-!
# A036390: First differences of composite connected numbers (A029827).

The programs for A036390, there is no canonical definition to state claims against.
-/

/-! ## A036390.P12698723713277190318

`Δ[A029827(n+1)]`
-/

namespace A036390.P12698723713277190318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036390.P12698723713277190318

/-! ## A036390.P12326295650859430378

`Δ[record[A029827(A328399(n))]]`
-/

namespace A036390.P12326295650859430378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036390.P12326295650859430378

/-! ## A036390.P1077253052274160020

`A029827(n+2)-A029827(n+1)`
-/

namespace A036390.P1077253052274160020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (n + 2) - A029827 (n + 1)

end

end A036390.P1077253052274160020

/-! ## A036390.P16806190022947161546

`Δ[record[A029827(A133310(n))]]`
-/

namespace A036390.P16806190022947161546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036390.P16806190022947161546

/-! ## A036390.P6901709959760676987

`abs(Δ[A029827(A008619(2*n))])`
-/

namespace A036390.P6901709959760676987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036390.P6901709959760676987

/-! ## A036390.P3409977189707362101

`abs(Δ[A029827(A029579(2*n))])`
-/

namespace A036390.P3409977189707362101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036390.P3409977189707362101

/-! ## A036390.P11863663898172374471

`Δ[record[A029827(A274640(n))]]`
-/

namespace A036390.P11863663898172374471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036390.P11863663898172374471

/-! ## A036390.P2240593573685133863

`Δ[record[A029827(A143182(n))]]`
-/

namespace A036390.P2240593573685133863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029827 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036390.P2240593573685133863

