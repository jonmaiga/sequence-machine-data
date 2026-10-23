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
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A283500: Triangle read by rows: T(n,k) = number of n X n (0,1) matrices with at most k 1's in each row or column.

The programs for A283500, there is no canonical definition to state claims against.
-/

/-! ## A283500.P4847981708347428954

`∑[∑[A122621(A001144(n+2))]]`
-/

namespace A283500.P4847981708347428954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122621 (A001144 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283500.P4847981708347428954

/-!
# A283501: Remainder when sum of first n terms of A004001 is divided by 2*n.

The programs for A283501, the canonical program `A283501.P15782849535763562148` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283501 has offset 1).

The definition of A283501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283501.P15782849535763562148

`∑[A004001(n+1)]%A005843(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283501

/-- `∑[A004001(n+1)]%A005843(n+1)` -/
def P15782849535763562148.Spec : Prop :=
  ∀ n, P15782849535763562148.a n = A283501 (n + 1)

theorem P15782849535763562148.correct : P15782849535763562148.Spec := by
  intro n
  simp only [A283501, Nat.add_sub_cancel]

end A283501

/-!
# A283504: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A283504, the canonical program `A283504.P15976353492440917812` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283504 has offset 0).

The definition of A283504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283504.P15976353492440917812

`xor(1, a(n-1)+10^n)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283504

/-- `xor(1, a(n-1)+10^n)` -/
def P15976353492440917812.Spec : Prop :=
  ∀ n, (P15976353492440917812.a n : ℤ) = A283504 n

theorem P15976353492440917812.correct : P15976353492440917812.Spec := by
  intro n
  simp only [A283504]

end A283504

/-! ## A283504.P4261098763314592717

`and(1-A158478(n), A290070(n))`
-/

namespace A283504.P4261098763314592717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A158478 n) (A290070 n)

end

end A283504.P4261098763314592717

namespace A283504

/-- `and(1-A158478(n), A290070(n))` -/
def P4261098763314592717.Spec : Prop :=
  ∀ n, P4261098763314592717.a n = A283504 n

end A283504

/-! ## A283504.P2381711081397740319

`and(1, A163963(n+1))*A290070(n)`
-/

namespace A283504.P2381711081397740319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A163963 (n + 1)) * A290070 n

end

end A283504.P2381711081397740319

namespace A283504

/-- `and(1, A163963(n+1))*A290070(n)` -/
def P2381711081397740319.Spec : Prop :=
  ∀ n, P2381711081397740319.a n = A283504 n

end A283504

/-! ## A283504.P15923747847840217935

`lcm(A134451(A008611(n)), A290070(n))`
-/

namespace A283504.P15923747847840217935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134451 (A008611 n).toNat) (A290070 n)

end

end A283504.P15923747847840217935

namespace A283504

/-- `lcm(A134451(A008611(n)), A290070(n))` -/
def P15923747847840217935.Spec : Prop :=
  ∀ n, (P15923747847840217935.a n : ℤ) = A283504 n

end A283504

/-! ## A283504.P12431853568481254400

`and(A260196(A008733(n)), A290070(n))`
-/

namespace A283504.P12431853568481254400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 (A008733 n).toNat) (A290070 n)

end

end A283504.P12431853568481254400

namespace A283504

/-- `and(A260196(A008733(n)), A290070(n))` -/
def P12431853568481254400.Spec : Prop :=
  ∀ n, P12431853568481254400.a n = A283504 n

end A283504

/-! ## A283504.P6616171030583737533

`and(A260196(A028242(n)), A290070(n))`
-/

namespace A283504.P6616171030583737533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 (A028242 n).toNat) (A290070 n)

end

end A283504.P6616171030583737533

namespace A283504

/-- `and(A260196(A028242(n)), A290070(n))` -/
def P6616171030583737533.Spec : Prop :=
  ∀ n, P6616171030583737533.a n = A283504 n

end A283504

/-! ## A283504.P5993098449132093134

`and(A260196(A123108(n)), A290070(n))`
-/

namespace A283504.P5993098449132093134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 (A123108 n).toNat) (A290070 n)

end

end A283504.P5993098449132093134

namespace A283504

/-- `and(A260196(A123108(n)), A290070(n))` -/
def P5993098449132093134.Spec : Prop :=
  ∀ n, P5993098449132093134.a n = A283504 n

end A283504

/-! ## A283504.P16951545515629863533

`and(A260196(A168232(n+1)), A290070(n))`
-/

namespace A283504.P16951545515629863533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 (A168232 (n + 1)).toNat) (A290070 n)

end

end A283504.P16951545515629863533

namespace A283504

/-- `and(A260196(A168232(n+1)), A290070(n))` -/
def P16951545515629863533.Spec : Prop :=
  ∀ n, P16951545515629863533.a n = A283504 n

end A283504

/-! ## A283504.P16833942833732345016

`and(A290070(A233583(n+1)), A290070(n))`
-/

namespace A283504.P16833942833732345016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290070 (A233583 (n + 1)).toNat) (A290070 n)

end

end A283504.P16833942833732345016

namespace A283504

/-- `and(A290070(A233583(n+1)), A290070(n))` -/
def P16833942833732345016.Spec : Prop :=
  ∀ n, P16833942833732345016.a n = A283504 n

end A283504

/-! ## A283504.P12750333970575795002

`A283505(n)/A290072(n)*A290070(n)`
-/

namespace A283504.P12750333970575795002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283505 n : ℚ) / (A290072 n : ℚ) * (A290070 n : ℚ)

end

end A283504.P12750333970575795002

namespace A283504

/-- `A283505(n)/A290072(n)*A290070(n)` -/
def P12750333970575795002.Spec : Prop :=
  ∀ n, P12750333970575795002.a n = (A283504 n : ℚ)

end A283504

/-! ## A283504.P3065506545989852770

`A283506(n)/A290073(n)*A290070(n)`
-/

namespace A283504.P3065506545989852770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283506 n : ℚ) / (A290073 n : ℚ) * (A290070 n : ℚ)

end

end A283504.P3065506545989852770

namespace A283504

/-- `A283506(n)/A290073(n)*A290070(n)` -/
def P3065506545989852770.Spec : Prop :=
  ∀ n, P3065506545989852770.a n = (A283504 n : ℚ)

end A283504

/-! ## A283504.P5704799590932984299

`A283507(n)/A290074(n)*A290070(n)`
-/

namespace A283504.P5704799590932984299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283507 n : ℚ) / (A290074 n : ℚ) * (A290070 n : ℚ)

end

end A283504.P5704799590932984299

namespace A283504

/-- `A283507(n)/A290074(n)*A290070(n)` -/
def P5704799590932984299.Spec : Prop :=
  ∀ n, P5704799590932984299.a n = (A283504 n : ℚ)

end A283504

/-! ## A283504.P6679415194732826820

`and(A260196(n)²*A260196(n), A290070(n))`
-/

namespace A283504.P6679415194732826820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n ^ 2 * A260196 n) (A290070 n)

end

end A283504.P6679415194732826820

namespace A283504

/-- `and(A260196(n)²*A260196(n), A290070(n))` -/
def P6679415194732826820.Spec : Prop :=
  ∀ n, P6679415194732826820.a n = A283504 n

end A283504

/-! ## A283504.P1144663936468165430

`A283505(A290072(n)-A283505(n))*A290070(n)`
-/

namespace A283504.P1144663936468165430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (A290072 n - A283505 n).toNat * A290070 n

end

end A283504.P1144663936468165430

namespace A283504

/-- `A283505(A290072(n)-A283505(n))*A290070(n)` -/
def P1144663936468165430.Spec : Prop :=
  ∀ n, P1144663936468165430.a n = A283504 n

end A283504

/-! ## A283504.P10654513001075566867

`A283507(A290074(n)-A283507(n))*A290070(n)`
-/

namespace A283504.P10654513001075566867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (A290074 n - A283507 n).toNat * A290070 n

end

end A283504.P10654513001075566867

namespace A283504

/-- `A283507(A290074(n)-A283507(n))*A290070(n)` -/
def P10654513001075566867.Spec : Prop :=
  ∀ n, P10654513001075566867.a n = A283504 n

end A283504

/-!
# A283505: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A283505, the canonical program `A283505.P904028952574811595` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283505 has offset 0).

The definition of A283505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283505.P904028952574811595

`a(n-1)+100*a(n-2)-100*a(n-3)` with `a(0)=1, a(1)=0, a(2)=101, a(3)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283505

/-- `a(n-1)+100*a(n-2)-100*a(n-3)` -/
def P904028952574811595.Spec : Prop :=
  ∀ n, P904028952574811595.a n = A283505 n

theorem P904028952574811595.correct : P904028952574811595.Spec := by
  intro n
  simp only [A283505]

end A283505

/-! ## A283505.P3897546023476372640

`A290072(n)-char[1]`
-/

namespace A283505.P3897546023476372640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290072 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283505.P3897546023476372640

namespace A283505

/-- `A290072(n)-char[1]` -/
def P3897546023476372640.Spec : Prop :=
  ∀ n, P3897546023476372640.a n = A283505 n

end A283505

/-! ## A283505.P15314992450351028547

`A283507(n)+A290072(n)-A290074(n)`
-/

namespace A283505.P15314992450351028547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + (A290072 n - A290074 n)

end

end A283505.P15314992450351028547

namespace A283505

/-- `A283507(n)+A290072(n)-A290074(n)` -/
def P15314992450351028547.Spec : Prop :=
  ∀ n, P15314992450351028547.a n = A283505 n

end A283505

/-! ## A283505.P14382336556161856072

`A283504(n)/A290070(n)*A290072(n)`
-/

namespace A283505.P14382336556161856072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283504 n : ℚ) / (A290070 n : ℚ) * (A290072 n : ℚ)

end

end A283505.P14382336556161856072

namespace A283505

/-- `A283504(n)/A290070(n)*A290072(n)` -/
def P14382336556161856072.Spec : Prop :=
  ∀ n, P14382336556161856072.a n = (A283505 n : ℚ)

end A283505

/-! ## A283505.P13747044342030794596

`A283506(n)/A290073(n)*A290072(n)`
-/

namespace A283505.P13747044342030794596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283506 n : ℚ) / (A290073 n : ℚ) * (A290072 n : ℚ)

end

end A283505.P13747044342030794596

namespace A283505

/-- `A283506(n)/A290073(n)*A290072(n)` -/
def P13747044342030794596.Spec : Prop :=
  ∀ n, P13747044342030794596.a n = (A283505 n : ℚ)

end A283505

/-! ## A283505.P13399362440613724925

`A283507(A290074(n)-A283507(n))*A290072(n)`
-/

namespace A283505.P13399362440613724925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (A290074 n - A283507 n).toNat * A290072 n

end

end A283505.P13399362440613724925

namespace A283505

/-- `A283507(A290074(n)-A283507(n))*A290072(n)` -/
def P13399362440613724925.Spec : Prop :=
  ∀ n, P13399362440613724925.a n = A283505 n

end A283505

/-!
# A283506: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A283506, the canonical program `A283506.P16057061174148550` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283506 has offset 0).

The definition of A283506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283506.P16057061174148550

`ogf((1-2x+4x^2+4x^3)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283506

/-- `ogf((1-2x+4x^2+4x^3)/(1-2x-x^2+2x^3))` -/
def P16057061174148550.Spec : Prop :=
  ∀ n, P16057061174148550.a n = A283506 n

theorem P16057061174148550.correct : P16057061174148550.Spec := by
  intro n
  simp only [A283506]

end A283506

/-! ## A283506.P4727605097503919370

`2^(n+1)-(a(n-1)%2+3)` with `a(0)=1`
-/

namespace A283506.P4727605097503919370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 1) : ℤ) - (Int.tmod (a (n - 1)) 2 + 3)

end

end A283506.P4727605097503919370

namespace A283506

/-- `2^(n+1)-(a(n-1)%2+3)` -/
def P4727605097503919370.Spec : Prop :=
  ∀ n, P4727605097503919370.a n = A283506 n

end A283506

/-! ## A283506.P16442480491400312356

`2^(n+1)+gcd(2, a(n-1))-5` with `a(0)=1`
-/

namespace A283506.P16442480491400312356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 1) : ℤ) + ((Int.gcd 2 (a (n - 1)) : ℤ) - 5)

end

end A283506.P16442480491400312356

namespace A283506

/-- `2^(n+1)+gcd(2, a(n-1))-5` -/
def P16442480491400312356.Spec : Prop :=
  ∀ n, P16442480491400312356.a n = A283506 n

end A283506

/-! ## A283506.P9948289933588871223

`a(n-1)+2*a(n-2)+7` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283506.P9948289933588871223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 7

end

end A283506.P9948289933588871223

namespace A283506

/-- `a(n-1)+2*a(n-2)+7` -/
def P9948289933588871223.Spec : Prop :=
  ∀ n, (P9948289933588871223.a n : ℤ) = A283506 n

end A283506

/-! ## A283506.P6416684541067256350

`abs(2-2^n)+2^n-(char[2*n+1]+1)`
-/

namespace A283506.P6416684541067256350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 ^ n : ℤ)| + ((2 ^ n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ))

end

end A283506.P6416684541067256350

namespace A283506

/-- `abs(2-2^n)+2^n-(char[2*n+1]+1)` -/
def P6416684541067256350.Spec : Prop :=
  ∀ n, P6416684541067256350.a n = A283506 n

end A283506

/-! ## A283506.P18203622414401381222

`abs(1-A101622(n))`
-/

namespace A283506.P18203622414401381222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A101622 n|

end

end A283506.P18203622414401381222

namespace A283506

/-- `abs(1-A101622(n))` -/
def P18203622414401381222.Spec : Prop :=
  ∀ n, P18203622414401381222.a n = A283506 n

end A283506

/-! ## A283506.P5627805292326254675

`and(-3, A289098(n))`
-/

namespace A283506.P5627805292326254675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A289098 n)

end

end A283506.P5627805292326254675

namespace A283506

/-- `and(-3, A289098(n))` -/
def P5627805292326254675.Spec : Prop :=
  ∀ n, P5627805292326254675.a n = A283506 n

end A283506

/-! ## A283506.P18275826576124740567

`abs(3-∑[A014551(n)])`
-/

namespace A283506.P18275826576124740567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A283506.P18275826576124740567

namespace A283506

/-- `abs(3-∑[A014551(n)])` -/
def P18275826576124740567.Spec : Prop :=
  ∀ n, P18275826576124740567.a n = A283506 n

end A283506

/-! ## A283506.P13394426870061252705

`abs(2-A140253(n+1))`
-/

namespace A283506.P13394426870061252705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A140253 (n + 1)|

end

end A283506.P13394426870061252705

namespace A283506

/-- `abs(2-A140253(n+1))` -/
def P13394426870061252705.Spec : Prop :=
  ∀ n, P13394426870061252705.a n = A283506 n

end A283506

/-! ## A283506.P696368178009444081

`abs(4-gcd(2, n)-∑[A000079(n)])`
-/

namespace A283506.P696368178009444081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.gcd 2 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A283506.P696368178009444081

namespace A283506

/-- `abs(4-gcd(2, n)-∑[A000079(n)])` -/
def P696368178009444081.Spec : Prop :=
  ∀ n, P696368178009444081.a n = A283506 n

end A283506

/-! ## A283506.P10773920967554284043

`abs(3-(A000079(n+1)-and(1, n)))`
-/

namespace A283506.P10773920967554284043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A000079 (n + 1) - (Nat.land 1 n : ℤ))|

end

end A283506.P10773920967554284043

namespace A283506

/-- `abs(3-(A000079(n+1)-and(1, n)))` -/
def P10773920967554284043.Spec : Prop :=
  ∀ n, P10773920967554284043.a n = A283506 n

end A283506

/-! ## A283506.P15614761600830303294

`abs(∑[2^n]-A020639(3*(n+2)))`
-/

namespace A283506.P15614761600830303294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A020639 (3 * (n + 2))|

end

end A283506.P15614761600830303294

namespace A283506

/-- `abs(∑[2^n]-A020639(3*(n+2)))` -/
def P15614761600830303294.Spec : Prop :=
  ∀ n, P15614761600830303294.a n = A283506 n

end A283506

/-! ## A283506.P12577687539641014406

`A060576(n)*A290073(n)`
-/

namespace A283506.P12577687539641014406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A290073 n

end

end A283506.P12577687539641014406

namespace A283506

/-- `A060576(n)*A290073(n)` -/
def P12577687539641014406.Spec : Prop :=
  ∀ n, P12577687539641014406.a n = A283506 n

end A283506

/-! ## A283506.P11327760734839589911

`lcm(A105609(n), A290073(n))`
-/

namespace A283506.P11327760734839589911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105609 n) (A290073 n)

end

end A283506.P11327760734839589911

namespace A283506

/-- `lcm(A105609(n), A290073(n))` -/
def P11327760734839589911.Spec : Prop :=
  ∀ n, (P11327760734839589911.a n : ℤ) = A283506 n

end A283506

/-! ## A283506.P13030613683929026769

`and(A260196(n), A290073(n))`
-/

namespace A283506.P13030613683929026769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A290073 n)

end

end A283506.P13030613683929026769

namespace A283506

/-- `and(A260196(n), A290073(n))` -/
def P13030613683929026769.Spec : Prop :=
  ∀ n, P13030613683929026769.a n = A283506 n

end A283506

/-! ## A283506.P16565325617004254848

`and(A283523(n), A290073(n))`
-/

namespace A283506.P16565325617004254848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283523 n) (A290073 n)

end

end A283506.P16565325617004254848

namespace A283506

/-- `and(A283523(n), A290073(n))` -/
def P16565325617004254848.Spec : Prop :=
  ∀ n, P16565325617004254848.a n = A283506 n

end A283506

/-! ## A283506.P6374558723644893217

`and(A284353(n), A290073(n))`
-/

namespace A283506.P6374558723644893217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284353 n) (A290073 n)

end

end A283506.P6374558723644893217

namespace A283506

/-- `and(A284353(n), A290073(n))` -/
def P6374558723644893217.Spec : Prop :=
  ∀ n, P6374558723644893217.a n = A283506 n

end A283506

/-! ## A283506.P14392846649141412832

`xor(A134451(n), A284353(n))`
-/

namespace A283506.P14392846649141412832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134451 n) (A284353 n)

end

end A283506.P14392846649141412832

namespace A283506

/-- `xor(A134451(n), A284353(n))` -/
def P14392846649141412832.Spec : Prop :=
  ∀ n, P14392846649141412832.a n = A283506 n

end A283506

/-! ## A283506.P1624969611568399579

`(A101622(n)-1)*A158388(n)`
-/

namespace A283506.P1624969611568399579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101622 n - 1) * A158388 n

end

end A283506.P1624969611568399579

namespace A283506

/-- `(A101622(n)-1)*A158388(n)` -/
def P1624969611568399579.Spec : Prop :=
  ∀ n, P1624969611568399579.a n = A283506 n

end A283506

/-! ## A283506.P10871938890512586681

`xor(A101622(n), A153284(n+1))`
-/

namespace A283506.P10871938890512586681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101622 n) (A153284 (n + 1))

end

end A283506.P10871938890512586681

namespace A283506

/-- `xor(A101622(n), A153284(n+1))` -/
def P10871938890512586681.Spec : Prop :=
  ∀ n, P10871938890512586681.a n = A283506 n

end A283506

/-!
# A283507: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A283507, the canonical program `A283507.P17361725235518012470` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283507 has offset 0).

The definition of A283507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283507.P17361725235518012470

`∑[ogf((1-x+x^2+2x^3)/(1-4x^2))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283507

/-- `∑[ogf((1-x+x^2+2x^3)/(1-4x^2))]` -/
def P17361725235518012470.Spec : Prop :=
  ∀ n, P17361725235518012470.a n = A283507 n

theorem P17361725235518012470.correct : P17361725235518012470.Spec := by
  intro n
  simp only [A283507]

end A283507

/-! ## A283507.P707817015537715069

`ogf((1-x+x^2+2x^3)/(1-x-4x^2+4x^3))`
-/

namespace A283507.P707817015537715069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 2] [1, -1, -4, 4] n

end

end A283507.P707817015537715069

namespace A283507

/-- `ogf((1-x+x^2+2x^3)/(1-x-4x^2+4x^3))` -/
def P707817015537715069.Spec : Prop :=
  ∀ n, P707817015537715069.a n = A283507 n

end A283507

/-! ## A283507.P11282648736010054939

`4*a(n-2)+3` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283507.P11282648736010054939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  4 * a (n - 2) + 3

end

end A283507.P11282648736010054939

namespace A283507

/-- `4*a(n-2)+3` -/
def P11282648736010054939.Spec : Prop :=
  ∀ n, (P11282648736010054939.a n : ℤ) = A283507 n

end A283507

/-! ## A283507.P14268550372136819359

`lcm(4, a(n-2))+3` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283507.P14268550372136819359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  Nat.lcm 4 (a (n - 2)) + 3

end

end A283507.P14268550372136819359

namespace A283507

/-- `lcm(4, a(n-2))+3` -/
def P14268550372136819359.Spec : Prop :=
  ∀ n, (P14268550372136819359.a n : ℤ) = A283507 n

end A283507

/-! ## A283507.P4093093276036140000

`or(3, 4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283507.P4093093276036140000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  Nat.lor 3 (4 * a (n - 2))

end

end A283507.P4093093276036140000

namespace A283507

/-- `or(3, 4*a(n-2))` -/
def P4093093276036140000.Spec : Prop :=
  ∀ n, (P4093093276036140000.a n : ℤ) = A283507 n

end A283507

/-! ## A283507.P15357101269030895008

`xor(3, 4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283507.P15357101269030895008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  Nat.xor 3 (4 * a (n - 2))

end

end A283507.P15357101269030895008

namespace A283507

/-- `xor(3, 4*a(n-2))` -/
def P15357101269030895008.Spec : Prop :=
  ∀ n, (P15357101269030895008.a n : ℤ) = A283507 n

end A283507

/-! ## A283507.P10491636398410433814

`∑[4*a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=5, a(3)=-2`
-/

namespace A283507.P10491636398410433814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 5, -2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283507.P10491636398410433814

namespace A283507

/-- `∑[4*a(n-2)]` -/
def P10491636398410433814.Spec : Prop :=
  ∀ n, P10491636398410433814.a n = A283507 n

end A283507

/-! ## A283507.P14882085159895325265

`2*(2^n-a(n-1))-3` with `a(0)=1, a(1)=0`
-/

namespace A283507.P14882085159895325265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * ((2 ^ n : ℤ) - a (n - 1)) - 3

end

end A283507.P14882085159895325265

namespace A283507

/-- `2*(2^n-a(n-1))-3` -/
def P14882085159895325265.Spec : Prop :=
  ∀ n, P14882085159895325265.a n = A283507 n

end A283507

/-! ## A283507.P3160354569434821307

`3-(a(n-2)-5*a(n-2))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283507.P3160354569434821307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  3 - (a (n - 2) - 5 * a (n - 2))

end

end A283507.P3160354569434821307

namespace A283507

/-- `3-(a(n-2)-5*a(n-2))` -/
def P3160354569434821307.Spec : Prop :=
  ∀ n, P3160354569434821307.a n = A283507 n

end A283507

/-! ## A283507.P10400419748856105171

`∑[A110164(n)+floor(2^(n-1))]`
-/

namespace A283507.P10400419748856105171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283507.P10400419748856105171

namespace A283507

/-- `∑[A110164(n)+floor(2^(n-1))]` -/
def P10400419748856105171.Spec : Prop :=
  ∀ n, P10400419748856105171.a n = A283507 n

end A283507

/-! ## A283507.P15303095344991570930

`A014551(or(1, n))-floor(2^(n-1))`
-/

namespace A283507.P15303095344991570930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (Nat.lor 1 n) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A283507.P15303095344991570930

namespace A283507

/-- `A014551(or(1, n))-floor(2^(n-1))` -/
def P15303095344991570930.Spec : Prop :=
  ∀ n, P15303095344991570930.a n = A283507 n

end A283507

/-! ## A283507.P8695458068986324635

`A290074(n)+A159075(n)`
-/

namespace A283507.P8695458068986324635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 n + A159075 n

end

end A283507.P8695458068986324635

namespace A283507

/-- `A290074(n)+A159075(n)` -/
def P8695458068986324635.Spec : Prop :=
  ∀ n, P8695458068986324635.a n = A283507 n

end A283507

/-! ## A283507.P116591845558942123

`A290074(n)-A063524(n)`
-/

namespace A283507.P116591845558942123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 n - A063524 n

end

end A283507.P116591845558942123

namespace A283507

/-- `A290074(n)-A063524(n)` -/
def P116591845558942123.Spec : Prop :=
  ∀ n, P116591845558942123.a n = A283507 n

end A283507

/-! ## A283507.P34239905636693208

`A269019(n)-A122959(n)`
-/

namespace A283507.P34239905636693208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 n - A122959 n

end

end A283507.P34239905636693208

namespace A283507

/-- `A269019(n)-A122959(n)` -/
def P34239905636693208.Spec : Prop :=
  ∀ n, P34239905636693208.a n = A283507 n

end A283507

/-! ## A283507.P8276525072062219957

`A060576(n)*A290074(n)`
-/

namespace A283507.P8276525072062219957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A290074 n

end

end A283507.P8276525072062219957

namespace A283507

/-- `A060576(n)*A290074(n)` -/
def P8276525072062219957.Spec : Prop :=
  ∀ n, P8276525072062219957.a n = A283507 n

end A283507

/-! ## A283507.P11017650841163201460

`A083329(n)%A094361(n)`
-/

namespace A283507.P11017650841163201460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083329 n) (A094361 n)

end

end A283507.P11017650841163201460

namespace A283507

/-- `A083329(n)%A094361(n)` -/
def P11017650841163201460.Spec : Prop :=
  ∀ n, P11017650841163201460.a n = A283507 n

end A283507

/-! ## A283507.P15257658761655478343

`A290662(n)%A042950(n)`
-/

namespace A283507.P15257658761655478343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290662 n) (A042950 n)

end

end A283507.P15257658761655478343

namespace A283507

/-- `A290662(n)%A042950(n)` -/
def P15257658761655478343.Spec : Prop :=
  ∀ n, P15257658761655478343.a n = A283507 n

end A283507

/-! ## A283507.P3741460928039820317

`A290114(n)%A094361(n)`
-/

namespace A283507.P3741460928039820317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290114 n) (A094361 n)

end

end A283507.P3741460928039820317

namespace A283507

/-- `A290114(n)%A094361(n)` -/
def P3741460928039820317.Spec : Prop :=
  ∀ n, P3741460928039820317.a n = A283507 n

end A283507

/-! ## A283507.P11217950989167463661

`lcm(A105812(n), A290074(n))`
-/

namespace A283507.P11217950989167463661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A290074 n)

end

end A283507.P11217950989167463661

namespace A283507

/-- `lcm(A105812(n), A290074(n))` -/
def P11217950989167463661.Spec : Prop :=
  ∀ n, (P11217950989167463661.a n : ℤ) = A283507 n

end A283507

/-! ## A283507.P13812571150894608208

`and(A083329(n), A289099(n))`
-/

namespace A283507.P13812571150894608208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A289099 n)

end

end A283507.P13812571150894608208

namespace A283507

/-- `and(A083329(n), A289099(n))` -/
def P13812571150894608208.Spec : Prop :=
  ∀ n, P13812571150894608208.a n = A283507 n

end A283507

/-!
# A283509: Remainder when sum of first n terms of the Hofstadter Q-sequence is divided by 2*n.

The programs for A283509, the canonical program `A283509.P10202215359054126072` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283509 has offset 1).

The definition of A283509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283509.P10202215359054126072

`A076268(n+1)%(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283509

/-- `A076268(n+1)%(2*(n+1))` -/
def P10202215359054126072.Spec : Prop :=
  ∀ n, P10202215359054126072.a n = A283509 (n + 1)

theorem P10202215359054126072.correct : P10202215359054126072.Spec := by
  intro n
  simp only [A283509, Nat.add_sub_cancel]

end A283509

/-! ## A283509.P15590333964464918162

`∑[A005185(n+1)]%(2*(n+1))`
-/

namespace A283509.P15590333964464918162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * (n + 1) : ℤ)

end

end A283509.P15590333964464918162

namespace A283509

/-- `∑[A005185(n+1)]%(2*(n+1))` -/
def P15590333964464918162.Spec : Prop :=
  ∀ n, P15590333964464918162.a n = A283509 (n + 1)

end A283509

/-! ## A283509.P7573682603381226076

`∑[A284478(n+1)+A055748(n+1)]%(2*(n+1))`
-/

namespace A283509.P7573682603381226076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (n + 1) + A055748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * (n + 1) : ℤ)

end

end A283509.P7573682603381226076

namespace A283509

/-- `∑[A284478(n+1)+A055748(n+1)]%(2*(n+1))` -/
def P7573682603381226076.Spec : Prop :=
  ∀ n, P7573682603381226076.a n = A283509 (n + 1)

end A283509

/-! ## A283509.P11138806811991461210

`∑[∑[A081827(n+1)]+1-A081827(n+1)]%(2*(n+1))`
-/

namespace A283509.P11138806811991461210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A081827 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * (n + 1) : ℤ)

end

end A283509.P11138806811991461210

namespace A283509

/-- `∑[∑[A081827(n+1)]+1-A081827(n+1)]%(2*(n+1))` -/
def P11138806811991461210.Spec : Prop :=
  ∀ n, P11138806811991461210.a n = A283509 (n + 1)

end A283509

/-! ## A283509.P7229227916033831620

`∑[A028310(A005185(n+1))]%A051755(n+2)`
-/

namespace A283509.P7229227916033831620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A051755 (n + 2))

end

end A283509.P7229227916033831620

namespace A283509

/-- `∑[A028310(A005185(n+1))]%A051755(n+2)` -/
def P7229227916033831620.Spec : Prop :=
  ∀ n, P7229227916033831620.a n = A283509 (n + 1)

end A283509

/-! ## A283509.P3824479721361119799

`A028310(A076268(n+1))%A051755(n+2)`
-/

namespace A283509.P3824479721361119799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A076268 (n + 1)).toNat) (A051755 (n + 2))

end

end A283509.P3824479721361119799

namespace A283509

/-- `A028310(A076268(n+1))%A051755(n+2)` -/
def P3824479721361119799.Spec : Prop :=
  ∀ n, P3824479721361119799.a n = A283509 (n + 1)

end A283509

/-!
# A283510: Expansion of exp( Sum_{n>=1} A283369(n)/n*x^n ) in powers of x.

The programs for A283510, there is no canonical definition to state claims against.
-/

/-! ## A283510.P17422164186360052573

`A283674(A052905(n+2))`
-/

namespace A283510.P17422164186360052573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A052905 (n + 2)).toNat

end

end A283510.P17422164186360052573

/-! ## A283510.P9234622819859360290

`A283674(eq[4, A025581(n)])`
-/

namespace A283510.P9234622819859360290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283510.P9234622819859360290

/-! ## A283510.P11828074421731257440

`A283674(eq[9, A099375(n)])`
-/

namespace A283510.P11828074421731257440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283510.P11828074421731257440

/-! ## A283510.P894157028436962822

`A283674(A034856(n+3)-A001489(n+2))`
-/

namespace A283510.P894157028436962822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A034856 (n + 3) - A001489 (n + 2)).toNat

end

end A283510.P894157028436962822

/-!
# A283512: Last block of length-n to appear for the first time in the Kolakoski sequence K (A000002).

The programs for A283512, there is no canonical definition to state claims against.
-/

/-! ## A283512.P1943343948461345016

`A139337(A039916(n+1))+A020069(n)`
-/

namespace A283512.P1943343948461345016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A039916 (n + 1)).toNat + A020069 n

end

end A283512.P1943343948461345016

/-!
# A283514: Concatenation of the numbers from n down to 3.

The programs for A283514, there is no canonical definition to state claims against.
-/

/-! ## A283514.P10425218390673401555

`A397496(A034856(n+2))`
-/

namespace A283514.P10425218390673401555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397496 (A034856 (n + 2)).toNat

end

end A283514.P10425218390673401555

/-! ## A283514.P787983739296246093

`A397496(lt[A397496(n+3), n+1])`
-/

namespace A283514.P787983739296246093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397496 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397496 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A283514.P787983739296246093

/-! ## A283514.P7096510809413001953

`∑[(n+3)*A007623((n+1)!)]`
-/

namespace A283514.P7096510809413001953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007623 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283514.P7096510809413001953

/-! ## A283514.P16999468941303556768

`∑[(A000007(n!)+n+3)*10^n]`
-/

namespace A283514.P16999468941303556768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 (Nat.factorial n) + (n : ℤ) + 3) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283514.P16999468941303556768

/-!
# A283516: Number of nX2 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283516, there is no canonical definition to state claims against.
-/

/-! ## A283516.P603322191277774661

`A283522(∑[n+1]+2)`
-/

namespace A283516.P603322191277774661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283516.P603322191277774661

/-! ## A283516.P6932933174047118783

`A071625(2*n+1)*A283522(A000096(n+1))`
-/

namespace A283516.P6932933174047118783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (2 * n + 1) * A283522 (A000096 (n + 1)).toNat

end

end A283516.P6932933174047118783

/-! ## A283516.P9368248423170013126

`A106618(A283522(∑[n+2]))`
-/

namespace A283516.P9368248423170013126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A283522 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A283516.P9368248423170013126

/-!
# A283517: Number of nX3 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283517, there is no canonical definition to state claims against.
-/

/-! ## A283517.P5341168802415651369

`A283522(∑[n+2]+4)`
-/

namespace A283517.P5341168802415651369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283517.P5341168802415651369

/-! ## A283517.P4354082469252660884

`A283522(A167614(n+1))+A025469(n)`
-/

namespace A283517.P4354082469252660884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A167614 (n + 1)).toNat + A025469 n

end

end A283517.P4354082469252660884

/-! ## A283517.P7451955295639784494

`A283522(A167614(n+1))+A185284(n)`
-/

namespace A283517.P7451955295639784494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A167614 (n + 1)).toNat + A185284 n

end

end A283517.P7451955295639784494

/-! ## A283517.P8719644714520666897

`A014910(n)*A283522(A167614(n+1))`
-/

namespace A283517.P8719644714520666897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 n * A283522 (A167614 (n + 1)).toNat

end

end A283517.P8719644714520666897

/-! ## A283517.P5808057290164204126

`A283522(A167614(n+1))%A017718(n)`
-/

namespace A283517.P5808057290164204126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283522 (A167614 (n + 1)).toNat) (A017718 (n + 54))

end

end A283517.P5808057290164204126

/-!
# A283518: Number of nX4 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283518, there is no canonical definition to state claims against.
-/

/-! ## A283518.P3561974356204832735

`A283522(A374004(n+1))`
-/

namespace A283518.P3561974356204832735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A374004 (n + 1)).toNat

end

end A283518.P3561974356204832735

/-! ## A283518.P11382449790417186516

`A283522(A167614(n+2)+1)`
-/

namespace A283518.P11382449790417186516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A167614 (n + 2) + 1).toNat

end

end A283518.P11382449790417186516

/-! ## A283518.P9967813489366061396

`A283522(Δ[A023545(n+1)-n²])`
-/

namespace A283518.P9967813489366061396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (f1 (n + 1) - f1 n).toNat

end

end A283518.P9967813489366061396

/-! ## A283518.P5822196711360114863

`A283522(A141214(n+1))`
-/

namespace A283518.P5822196711360114863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A141214 (n + 1)).toNat

end

end A283518.P5822196711360114863

/-! ## A283518.P17637012965429020667

`A283522(A027379(n+2))`
-/

namespace A283518.P17637012965429020667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A027379 (n + 2)).toNat

end

end A283518.P17637012965429020667

/-!
# A283519: Number of nX5 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283519, there is no canonical definition to state claims against.
-/

/-! ## A283519.P1551586102680163894

`A283522(A374005(n+1))`
-/

namespace A283519.P1551586102680163894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A374005 (n + 1)).toNat

end

end A283519.P1551586102680163894

/-! ## A283519.P7293020391976934004

`A283522(eq[7, A066657(n)])`
-/

namespace A283519.P7293020391976934004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283519.P7293020391976934004

/-! ## A283519.P15367128584306209141

`A283522(A167614(n+3)+2)`
-/

namespace A283519.P15367128584306209141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A167614 (n + 3) + 2).toNat

end

end A283519.P15367128584306209141

/-! ## A283519.P6972866563688824116

`A283522(A046691(n+3))`
-/

namespace A283519.P6972866563688824116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A046691 (n + 3)).toNat

end

end A283519.P6972866563688824116

/-! ## A283519.P4946529265001771665

`A283522(eq[4, A193592(n)])`
-/

namespace A283519.P4946529265001771665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283519.P4946529265001771665

/-!
# A283520: Number of nX6 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283520, there is no canonical definition to state claims against.
-/

/-! ## A283520.P2273522790102325564

`A283522(A374007(n+1))`
-/

namespace A283520.P2273522790102325564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A374007 (n + 1)).toNat

end

end A283520.P2273522790102325564

/-! ## A283520.P3548457177617707215

`A283522(eq[7, A131818(n+1)])`
-/

namespace A283520.P3548457177617707215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283520.P3548457177617707215

/-! ## A283520.P10557025602296426389

`A283522(Δ[A023545(n+1)]+10)`
-/

namespace A283520.P10557025602296426389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (f1 (n + 1) - f1 n + 10).toNat

end

end A283520.P10557025602296426389

/-! ## A283520.P12038269442219939943

`A283522(eq[5, A193592(n)])`
-/

namespace A283520.P12038269442219939943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283520.P12038269442219939943

/-! ## A283520.P9195153551260914789

`A283522(A055999(n+3)+1)`
-/

namespace A283520.P9195153551260914789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A055999 (n + 3) + 1).toNat

end

end A283520.P9195153551260914789

/-!
# A283521: Number of nX7 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283521, there is no canonical definition to state claims against.
-/

/-! ## A283521.P13993185430513108669

`A283522(A374008(n+1))`
-/

namespace A283521.P13993185430513108669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A374008 (n + 1)).toNat

end

end A283521.P13993185430513108669

/-! ## A283521.P16754884016634738015

`A283522(eq[8, A131818(n+1)])`
-/

namespace A283521.P16754884016634738015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283521.P16754884016634738015

/-! ## A283521.P6066534475998424429

`A283522(A055999(n+4))`
-/

namespace A283521.P6066534475998424429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (A055999 (n + 4)).toNat

end

end A283521.P6066534475998424429

/-! ## A283521.P11247717438427571724

`A283522(eq[6, A193592(n)])`
-/

namespace A283521.P11247717438427571724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283521.P11247717438427571724

/-! ## A283521.P9360392790064596797

`A283522(eq[7, A200370(n+1)])`
-/

namespace A283521.P9360392790064596797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283521.P9360392790064596797

/-!
# A283523: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A283523, the canonical program `A283523.P4740579699157072917` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283523 has offset 0).

The definition of A283523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283523.P17991853316001326533

`2^(n+1)-floor((n+1)^(3/(n+1))²)`
-/

namespace A283523.P17991853316001326533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ⌊(n + 1 : ℝ) ^ ((3 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋

end

end A283523.P17991853316001326533

namespace A283523

/-- `2^(n+1)-floor((n+1)^(3/(n+1))²)` -/
def P17991853316001326533.Spec : Prop :=
  ∀ n, P17991853316001326533.a n = A283523 n

end A283523

/-! ## A283523.P7350842379104039737

`or(A267870(n), A283591(n))`
-/

namespace A283523.P7350842379104039737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267870 n) (A283591 n)

end

end A283523.P7350842379104039737

namespace A283523

/-- `or(A267870(n), A283591(n))` -/
def P7350842379104039737.Spec : Prop :=
  ∀ n, P7350842379104039737.a n = A283523 n

end A283523

/-! ## A283523.P4740579699157072917

`xor(A126646(n), A267883(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283523

/-- `xor(A126646(n), A267883(n))` -/
def P4740579699157072917.Spec : Prop :=
  ∀ n, P4740579699157072917.a n = A283523 n

theorem P4740579699157072917.correct : P4740579699157072917.Spec := by
  intro n
  simp only [A283523]

end A283523

/-! ## A283523.P8769331662041994691

`xor(A130543(n), A283591(n))`
-/

namespace A283523.P8769331662041994691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 n) (A283591 n)

end

end A283523.P8769331662041994691

namespace A283523

/-- `xor(A130543(n), A283591(n))` -/
def P8769331662041994691.Spec : Prop :=
  ∀ n, P8769331662041994691.a n = A283523 n

end A283523

/-! ## A283523.P11792865174411851906

`xor(∑[A016116(2*n)], A267883(n))`
-/

namespace A283523.P11792865174411851906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A267883 n)

end

end A283523.P11792865174411851906

namespace A283523

/-- `xor(∑[A016116(2*n)], A267883(n))` -/
def P11792865174411851906.Spec : Prop :=
  ∀ n, P11792865174411851906.a n = A283523 n

end A283523

/-! ## A283523.P16861009773006630840

`or(A283591(n), A283592(A000196(n)))`
-/

namespace A283523.P16861009773006630840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283591 n) (A283592 (A000196 n).toNat)

end

end A283523.P16861009773006630840

namespace A283523

/-- `or(A283591(n), A283592(A000196(n)))` -/
def P16861009773006630840.Spec : Prop :=
  ∀ n, P16861009773006630840.a n = A283523 n

end A283523

/-! ## A283523.P10664892548616550684

`gcd(2, A008578(A020703(n+1)))*A284405(n)`
-/

namespace A283523.P10664892548616550684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A008578 (A020703 (n + 1)).toNat) : ℤ) * A284405 n

end

end A283523.P10664892548616550684

namespace A283523

/-- `gcd(2, A008578(A020703(n+1)))*A284405(n)` -/
def P10664892548616550684.Spec : Prop :=
  ∀ n, P10664892548616550684.a n = A283523 n

end A283523

/-! ## A283523.P13245531343964119728

`floor(A267877(n)/A000079(n))`
-/

namespace A283523.P13245531343964119728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267877 n : ℚ) / (A000079 n : ℚ)⌋

end

end A283523.P13245531343964119728

namespace A283523

/-- `floor(A267877(n)/A000079(n))` -/
def P13245531343964119728.Spec : Prop :=
  ∀ n, P13245531343964119728.a n = A283523 n

end A283523

/-! ## A283523.P14803713904307608119

`A014973(A014973(n+1)²)*A284405(n)`
-/

namespace A283523.P14803713904307608119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A014973 (n + 1) ^ 2).toNat * A284405 n

end

end A283523.P14803713904307608119

namespace A283523

/-- `A014973(A014973(n+1)²)*A284405(n)` -/
def P14803713904307608119.Spec : Prop :=
  ∀ n, P14803713904307608119.a n = A283523 n

end A283523

/-!
# A283525: Remainder when sum of first n terms of A004001 is divided by 3*n.

The programs for A283525, the canonical program `A283525.P1612065617130241968` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283525 has offset 1).

The definition of A283525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283525.P1612065617130241968

`∑[A004001(n+1)]%(3*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283525

/-- `∑[A004001(n+1)]%(3*(n+1))` -/
def P1612065617130241968.Spec : Prop :=
  ∀ n, P1612065617130241968.a n = A283525 (n + 1)

theorem P1612065617130241968.correct : P1612065617130241968.Spec := by
  intro n
  simp only [A283525, Nat.add_sub_cancel]

end A283525

/-! ## A283525.P11715081029038200205

`∑[2-A080677(n+1)+n]%A233583(3*n+4)`
-/

namespace A283525.P11715081029038200205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A233583 (3 * n + 4))

end

end A283525.P11715081029038200205

namespace A283525

/-- `∑[2-A080677(n+1)+n]%A233583(3*n+4)` -/
def P11715081029038200205.Spec : Prop :=
  ∀ n, P11715081029038200205.a n = A283525 (n + 1)

end A283525

/-! ## A283525.P2945472148516827892

`∑[ceil((A004074(n+1)+n)/2)]%A233583(3*n+4)`
-/

namespace A283525.P2945472148516827892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004074 (n + 1) + (n : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A233583 (3 * n + 4))

end

end A283525.P2945472148516827892

namespace A283525

/-- `∑[ceil((A004074(n+1)+n)/2)]%A233583(3*n+4)` -/
def P2945472148516827892.Spec : Prop :=
  ∀ n, P2945472148516827892.a n = A283525 (n + 1)

end A283525

/-! ## A283525.P14146298866351653816

`∑[A038459(A004074(n+1)+n)]%A233583(3*n+4)`
-/

namespace A283525.P14146298866351653816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A004074 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A233583 (3 * n + 4))

end

end A283525.P14146298866351653816

namespace A283525

/-- `∑[A038459(A004074(n+1)+n)]%A233583(3*n+4)` -/
def P14146298866351653816.Spec : Prop :=
  ∀ n, P14146298866351653816.a n = A283525 (n + 1)

end A283525

/-! ## A283525.P16140773414586740345

`∑[A283472(n+1)+A283469(n+1)]%A233583(3*n+4)`
-/

namespace A283525.P16140773414586740345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (n + 1) + A283469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A233583 (3 * n + 4))

end

end A283525.P16140773414586740345

namespace A283525

/-- `∑[A283472(n+1)+A283469(n+1)]%A233583(3*n+4)` -/
def P16140773414586740345.Spec : Prop :=
  ∀ n, P16140773414586740345.a n = A283525 (n + 1)

end A283525

/-!
# A283526: Pierce expansion of the number Sum_{k >= 1} 1/(2^(2^k - 1)).

The programs for A283526, there is no canonical definition to state claims against.
-/

/-! ## A283526.P14191677174398420323

`A106624(A060546(n))+A059841(n)`
-/

namespace A283526.P14191677174398420323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A060546 n).toNat + A059841 n

end

end A283526.P14191677174398420323

/-! ## A283526.P1163111142005420946

`A052552(A060546(n))-A000035(n)`
-/

namespace A283526.P1163111142005420946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A060546 n).toNat - A000035 n

end

end A283526.P1163111142005420946

/-! ## A283526.P7608029595000850988

`A077957(∏[A000034(n)])+A059841(n)`
-/

namespace A283526.P7608029595000850988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + A059841 n

end

end A283526.P7608029595000850988

/-! ## A283526.P1934815738247246553

`A052552(∏[A000034(n)])-A000035(n)`
-/

namespace A283526.P1934815738247246553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 n

end

end A283526.P1934815738247246553

/-! ## A283526.P12284476129156473520

`record[A025581(n)+A016116(A059268(n))]`
-/

namespace A283526.P12284476129156473520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A016116 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283526.P12284476129156473520

/-!
# A283529: The number of partitions of n into simple parts.

The programs for A283529, there is no canonical definition to state claims against.
-/

/-! ## A283529.P16233912505533063468

`∑[A260160(record[A031285(n)])]`
-/

namespace A283529.P16233912505533063468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283529.P16233912505533063468

/-! ## A283529.P7182972079108470450

`∑{d}[2^floor(n/2), A261769(#)]`
-/

namespace A283529.P7182972079108470450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A261769 d

end

end A283529.P7182972079108470450

/-! ## A283529.P14439873345244104308

`A309683(n+3)%A327473(2*(n+1))`
-/

namespace A283529.P14439873345244104308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309683 (n + 3)) (A327473 (2 * (n + 1)))

end

end A283529.P14439873345244104308

/-! ## A283529.P17454358894387125312

`A309683(n+3)+A266147(50*n+20)`
-/

namespace A283529.P17454358894387125312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (n + 3) + A266147 (50 * n + 20)

end

end A283529.P17454358894387125312

/-! ## A283529.P17505275234350363418

`A309683(n+3)+A000007(A032822(n+1))`
-/

namespace A283529.P17505275234350363418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (n + 3) + A000007 (A032822 (n + 1)).toNat

end

end A283529.P17505275234350363418

/-!
# A283530: The number of reduced phi-partitions of n.

The programs for A283530, there is no canonical definition to state claims against.
-/

/-! ## A283530.P14752669217592984554

`∑{p}[or(1, A308367(n+1)²), A001222(#)]`
-/

namespace A283530.P14752669217592984554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A308367 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A283530.P14752669217592984554

/-! ## A283530.P9814829082584218595

`∑{p}[or(1, A308367(n+1)²), A318306(#)]`
-/

namespace A283530.P9814829082584218595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A308367 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318306 p

end

end A283530.P9814829082584218595

/-! ## A283530.P6757578639415262552

`A001222(∏{p}[or(1, A308367(n+1)²), #])`
-/

namespace A283530.P6757578639415262552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A308367 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A283530.P6757578639415262552

/-! ## A283530.P15662103351928185550

`A007918(A057859(n+1))%A256911(A256944(n+1))`
-/

namespace A283530.P15662103351928185550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (A057859 (n + 1)).toNat) (A256911 (A256944 (n + 1)).toNat)

end

end A283530.P15662103351928185550

/-!
# A283531: Number of steps to return to n through a chain-addition sequence mod 10 with window of size equal to the number of digits of n.

The programs for A283531, there is no canonical definition to state claims against.
-/

/-! ## A283531.P2315174393790270132

`A296121(A144361(n+3)^A161060(n+1))`
-/

namespace A283531.P2315174393790270132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296121 (SequenceMachineLib.roundAway ((A144361 (n + 3) : ℚ) ^ (A161060 (n + 1) : ℤ))).toNat

end

end A283531.P2315174393790270132

/-!
# A283532: Primes p such that (q^2 - p^2) / 24 is prime, where q is the next prime after p.

The programs for A283532, the canonical program `A283532.P3287001230975336606` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283532 has offset 1).

The definition of A283532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283532.P3287001230975336606

`p?[A001222(A075888(n+3))*A004139(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A283532

/-- `p?[A001222(A075888(n+3))*A004139(n+1)]` -/
def P3287001230975336606.Spec : Prop :=
  ∀ n, P3287001230975336606.a n = A283532 (n + 1)

theorem P3287001230975336606.correct : P3287001230975336606.Spec := by
  intro n
  simp only [A283532, Nat.add_sub_cancel]

end A283532

/-! ## A283532.P17785145344113733248

`p?[A000040(n+3)*A001222(A075888(n+3))]`
-/

namespace A283532.P17785145344113733248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A001222 (A075888 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283532.P17785145344113733248

namespace A283532

/-- `p?[A000040(n+3)*A001222(A075888(n+3))]` -/
def P17785145344113733248.Spec : Prop :=
  ∀ n, P17785145344113733248.a n = A283532 (n + 1)

end A283532

/-! ## A283532.P10087291289389644978

`p?[eq[A195061(n+2), A196049(n+1)]]`
-/

namespace A283532.P10087291289389644978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195061 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A283532.P10087291289389644978

namespace A283532

/-- `p?[eq[A195061(n+2), A196049(n+1)]]` -/
def P10087291289389644978.Spec : Prop :=
  ∀ n, (P10087291289389644978.a n : ℤ) = A283532 (n + 1)

end A283532

/-! ## A283532.P16776124304377606676

`A180346(A290144(n+2))`
-/

namespace A283532.P16776124304377606676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180346 (A290144 (n + 2)).toNat

end

end A283532.P16776124304377606676

namespace A283532

/-- `A180346(A290144(n+2))` -/
def P16776124304377606676.Spec : Prop :=
  ∀ n, P16776124304377606676.a n = A283532 (n + 1)

end A283532

/-!
# A283533: a(n) = Sum_{d|n} d^(2*d + 1).

The programs for A283533, there is no canonical definition to state claims against.
-/

/-! ## A283533.P10872137283328137649

`∑{d}[n+1, #*(#^#)²]`
-/

namespace A283533.P10872137283328137649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * (d ^ d) ^ 2

end

end A283533.P10872137283328137649

/-! ## A283533.P3854996047174155626

`record[∑{d}[A110659(n), A085526(#)]]`
-/

namespace A283533.P3854996047174155626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A085526 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283533.P3854996047174155626

/-! ## A283533.P17055790467667254312

`A308704(∑[n+3]+1)`
-/

namespace A283533.P17055790467667254312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283533.P17055790467667254312

/-!
# A283534: Expansion of exp( Sum_{n>=1} -A283533(n)/n*x^n ) in powers of x.

The programs for A283534, there is no canonical definition to state claims against.
-/

/-! ## A283534.P14201980142111823524

`A283675(∑[n+3])`
-/

namespace A283534.P14201980142111823524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283534.P14201980142111823524

/-! ## A283534.P13257362423095234293

`or(A000007(n), A283675(A141214(n)))`
-/

namespace A283534.P13257362423095234293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A283675 (A141214 n).toNat)

end

end A283534.P13257362423095234293

/-! ## A283534.P9630560534014606917

`abs(A033999(n))*A283675(A055998(n+1))`
-/

namespace A283534.P9630560534014606917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A283675 (A055998 (n + 1)).toNat

end

end A283534.P9630560534014606917

/-! ## A283534.P13368121609128584589

`A007318(∑[n]-n)*A283675(A141214(n))`
-/

namespace A283534.P13368121609128584589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) * A283675 (A141214 n).toNat

end

end A283534.P13368121609128584589

/-! ## A283534.P11655301769873545018

`A283675(A055998(n+1))+A000007(n+1)`
-/

namespace A283534.P11655301769873545018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A283534.P11655301769873545018

/-!
# A283535: a(n) = Sum_{d|n} d^(3*d + 1).

The programs for A283535, there is no canonical definition to state claims against.
-/

/-! ## A283535.P893883198386968202

`A308704(A141214(n+1))`
-/

namespace A283535.P893883198386968202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (A141214 (n + 1)).toNat

end

end A283535.P893883198386968202

/-! ## A283535.P9132869757426953215

`A308704(A056000(n)+7)`
-/

namespace A283535.P9132869757426953215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (A056000 n + 7).toNat

end

end A283535.P9132869757426953215

/-! ## A283535.P4750693784522191849

`A308704(A167614(n+1)+A005408(n))`
-/

namespace A283535.P4750693784522191849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (A167614 (n + 1) + A005408 n).toNat

end

end A283535.P4750693784522191849

/-!
# A283536: Expansion of exp( Sum_{n>=1} -A283535(n)/n*x^n ) in powers of x.

The programs for A283536, there is no canonical definition to state claims against.
-/

/-! ## A283536.P12226698024812702692

`A283675(∑[n+3]+n+3)`
-/

namespace A283536.P12226698024812702692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A283536.P12226698024812702692

/-!
# A283537: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283537, there is no canonical definition to state claims against.
-/

/-! ## A283537.P15967937623390699311

`A283543(∑[4*n]+1)`
-/

namespace A283537.P15967937623390699311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283537.P15967937623390699311

/-! ## A283537.P12639964409123963148

`record[gcd(A114327(n), A283543(n+1))]`
-/

namespace A283537.P12639964409123963148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A283543 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283537.P12639964409123963148

/-! ## A283537.P258846352344022370

`record[A077606(n+1)*A283543(n+1)]`
-/

namespace A283537.P258846352344022370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A283543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283537.P258846352344022370

/-! ## A283537.P4823424325402982343

`lcm(A033999(n), A283543(A001844(n)))`
-/

namespace A283537.P4823424325402982343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A283543 (A001844 n).toNat)

end

end A283537.P4823424325402982343

/-! ## A283537.P16700000679328323333

`A283543(A001844(n))+A052375(n+1)`
-/

namespace A283537.P16700000679328323333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A001844 n).toNat + A052375 (n + 1)

end

end A283537.P16700000679328323333

/-!
# A283538: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283538, there is no canonical definition to state claims against.
-/

/-! ## A283538.P9142914408022235212

`A283543(∑[n+3]+1)`
-/

namespace A283538.P9142914408022235212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283538.P9142914408022235212

/-! ## A283538.P7888719295911256137

`or(1, A283543(Δ[A008778(n)]))`
-/

namespace A283538.P7888719295911256137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283543 (f1 (n + 1) - f1 n).toNat)

end

end A283538.P7888719295911256137

/-! ## A283538.P10417058916725864646

`A283543(Δ[A008778(n)])+A185284(n)`
-/

namespace A283538.P10417058916725864646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (f1 (n + 1) - f1 n).toNat + A185284 n

end

end A283538.P10417058916725864646

/-!
# A283539: Number of n X 4 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283539, there is no canonical definition to state claims against.
-/

/-! ## A283539.P637850664080382428

`A283543(A141214(n+1))`
-/

namespace A283539.P637850664080382428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A141214 (n + 1)).toNat

end

end A283539.P637850664080382428

/-! ## A283539.P16665050206832988503

`A283543(A155212(n)+5)`
-/

namespace A283539.P16665050206832988503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A155212 n + 5).toNat

end

end A283539.P16665050206832988503

/-! ## A283539.P7106693708232500370

`A283543(A056000(n)+7)`
-/

namespace A283539.P7106693708232500370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A056000 n + 7).toNat

end

end A283539.P7106693708232500370

/-! ## A283539.P10045254805099808754

`A283543(eq[3, A193592(n)])`
-/

namespace A283539.P10045254805099808754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283539.P10045254805099808754

/-! ## A283539.P5816770777133538882

`A283543(eq[4, A140996(n)])`
-/

namespace A283539.P5816770777133538882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283539.P5816770777133538882

/-!
# A283540: Number of n X 5 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283540, there is no canonical definition to state claims against.
-/

/-! ## A283540.P3425948706786518562

`A283543(Δ[A264443(n)])`
-/

namespace A283540.P3425948706786518562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (f1 (n + 1) - f1 n).toNat

end

end A283540.P3425948706786518562

/-! ## A283540.P4551308875740267485

`A283543(A046691(n+3))`
-/

namespace A283540.P4551308875740267485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A046691 (n + 3)).toNat

end

end A283540.P4551308875740267485

/-! ## A283540.P2148636220871864282

`A283543(eq[4, A193592(n)])`
-/

namespace A283540.P2148636220871864282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283540.P2148636220871864282

/-! ## A283540.P12260281999577812114

`A283543(Δ[A023545(n+1)])`
-/

namespace A283540.P12260281999577812114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (f1 (n + 1) - f1 n).toNat

end

end A283540.P12260281999577812114

/-! ## A283540.P167327261885802971

`A283543(eq[8, A057728(n+1)])`
-/

namespace A283540.P167327261885802971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283540.P167327261885802971

/-!
# A283541: Number of n X 6 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283541, there is no canonical definition to state claims against.
-/

/-! ## A283541.P4848648049068332343

`A283543(A052905(n+3))`
-/

namespace A283541.P4848648049068332343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A052905 (n + 3)).toNat

end

end A283541.P4848648049068332343

/-! ## A283541.P10562507218504085100

`A283543(eq[3, A219347(n)])`
-/

namespace A283541.P10562507218504085100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283541.P10562507218504085100

/-! ## A283541.P5844931106621057708

`A283543(eq[5, A193592(n)])`
-/

namespace A283541.P5844931106621057708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283541.P5844931106621057708

/-! ## A283541.P645396726481854134

`A283543(eq[8, A258709(n)])`
-/

namespace A283541.P645396726481854134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283541.P645396726481854134

/-! ## A283541.P11654014783226816827

`A283543(Δ[Δ[A006504(n+1)]])`
-/

namespace A283541.P11654014783226816827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (f1 (n + 1) - f1 n).toNat

end

end A283541.P11654014783226816827

/-!
# A283542: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283542, there is no canonical definition to state claims against.
-/

/-! ## A283542.P12575462241203979308

`A283543(C(n+7, 2)+n+1)`
-/

namespace A283542.P12575462241203979308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (Nat.choose (n + 7) 2 + (n + 1))

end

end A283542.P12575462241203979308

/-! ## A283542.P11237994371776061571

`A283543(A055999(n+4))`
-/

namespace A283542.P11237994371776061571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A055999 (n + 4)).toNat

end

end A283542.P11237994371776061571

/-! ## A283542.P9954354939129664005

`A283543(eq[4, A219347(n)])`
-/

namespace A283542.P9954354939129664005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283542.P9954354939129664005

/-! ## A283542.P4935207625135641391

`A283543(eq[6, A193592(n)])`
-/

namespace A283542.P4935207625135641391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283542.P4935207625135641391

/-! ## A283542.P12761115701229384334

`A283543(A052905(n+4)-1)`
-/

namespace A283542.P12761115701229384334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A052905 (n + 4) - 1).toNat

end

end A283542.P12761115701229384334

/-!
# A283543: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283543, there is no canonical definition to state claims against.
-/

/-! ## A283543.P14683428814848510441

`A269075(n+1)+A107846(A001006(n))`
-/

namespace A283543.P14683428814848510441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) + A107846 (A001006 n).toNat

end

end A283543.P14683428814848510441

/-! ## A283543.P14724085200040119842

`A269075(n+1)+A044940(A102468(n))`
-/

namespace A283543.P14724085200040119842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) + A044940 (A102468 n).toNat

end

end A283543.P14724085200040119842

/-! ## A283543.P14762230325627196971

`A269075(n+1)+A144629(A126120(n))`
-/

namespace A283543.P14762230325627196971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) + A144629 (A126120 n).toNat

end

end A283543.P14762230325627196971

/-!
# A283544: Number of 3 X n 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283544, there is no canonical definition to state claims against.
-/

/-! ## A283544.P13573883124673875342

`A283543(∑[n+2]+4)`
-/

namespace A283544.P13573883124673875342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283544.P13573883124673875342

/-! ## A283544.P15037486512270162786

`lcm((-1)^n, A283543(A167614(n+1)))`
-/

namespace A283544.P15037486512270162786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A283543 (A167614 (n + 1)).toNat)

end

end A283544.P15037486512270162786

/-! ## A283544.P7335194296838642607

`A016266(n)*A283543(A167614(n+1))`
-/

namespace A283544.P7335194296838642607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A283543 (A167614 (n + 1)).toNat

end

end A283544.P7335194296838642607

/-! ## A283544.P13303463498433921838

`or(A063524(n), A283543(A167614(n+1)))`
-/

namespace A283544.P13303463498433921838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A283543 (A167614 (n + 1)).toNat)

end

end A283544.P13303463498433921838

/-! ## A283544.P11485309492415942871

`A283543(A167614(n+1))+A034518(n+1)`
-/

namespace A283544.P11485309492415942871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A167614 (n + 1)).toNat + A034518 (n + 1)

end

end A283544.P11485309492415942871

/-!
# A283545: Number of 4 X n 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283545, there is no canonical definition to state claims against.
-/

/-! ## A283545.P3067359599480917091

`A283543(A145018(n+4))`
-/

namespace A283545.P3067359599480917091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A145018 (n + 4)).toNat

end

end A283545.P3067359599480917091

/-! ## A283545.P10476086142581409459

`A283543(A141214(n)+7)`
-/

namespace A283545.P10476086142581409459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A141214 n + 7).toNat

end

end A283545.P10476086142581409459

/-! ## A283545.P6319051919627698558

`A283543(A052905(n)+9)`
-/

namespace A283545.P6319051919627698558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A052905 n + 9).toNat

end

end A283545.P6319051919627698558

/-! ## A283545.P1741357656374222694

`A283543(A055999(n)+10)`
-/

namespace A283545.P1741357656374222694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A055999 n + 10).toNat

end

end A283545.P1741357656374222694

/-! ## A283545.P9850805988339444353

`A283543(A167614(n+2)+1)`
-/

namespace A283545.P9850805988339444353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A167614 (n + 2) + 1).toNat

end

end A283545.P9850805988339444353

/-!
# A283546: Number of 5Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283546, there is no canonical definition to state claims against.
-/

/-! ## A283546.P3501467683380714778

`A283543(A167499(n+3))`
-/

namespace A283546.P3501467683380714778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A167499 (n + 3)).toNat

end

end A283546.P3501467683380714778

/-! ## A283546.P5701387474605022711

`A283543(A155212(n)+13)`
-/

namespace A283546.P5701387474605022711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A155212 n + 13).toNat

end

end A283546.P5701387474605022711

/-! ## A283546.P6314754237953676487

`A283543(eq[7, A066657(n)])`
-/

namespace A283546.P6314754237953676487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283546.P6314754237953676487

/-! ## A283546.P14842389342069581892

`A283543(A167614(n+3)+2)`
-/

namespace A283546.P14842389342069581892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A167614 (n + 3) + 2).toNat

end

end A283546.P14842389342069581892

/-! ## A283546.P8501778730811267919

`A283543(A000217(n+4)+5)`
-/

namespace A283546.P8501778730811267919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A000217 (n + 4) + 5).toNat

end

end A283546.P8501778730811267919

/-!
# A283547: Number of 6 X n 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283547, there is no canonical definition to state claims against.
-/

/-! ## A283547.P11489387913375826909

`A283543(A056115(n)+21)`
-/

namespace A283547.P11489387913375826909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A056115 n + 21).toNat

end

end A283547.P11489387913375826909

/-! ## A283547.P13251840070817222264

`A283543(Δ[A264443(n)]+10)`
-/

namespace A283547.P13251840070817222264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (f1 (n + 1) - f1 n + 10).toNat

end

end A283547.P13251840070817222264

/-! ## A283547.P14348905138310954333

`A283543(A056000(n+1)+16)`
-/

namespace A283547.P14348905138310954333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A056000 (n + 1) + 16).toNat

end

end A283547.P14348905138310954333

/-! ## A283547.P3531066584197806460

`A283543(eq[7, A131818(n+1)])`
-/

namespace A283547.P3531066584197806460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283547.P3531066584197806460

/-! ## A283547.P3858684901623089718

`A283543(A000124(n+6)-(n+1))`
-/

namespace A283547.P3858684901623089718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A283547.P3858684901623089718

/-!
# A283548: Number of 7Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283548, there is no canonical definition to state claims against.
-/

/-! ## A283548.P6679404259130021964

`A283543(C(n+7, 2)+7)`
-/

namespace A283548.P6679404259130021964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (Nat.choose (n + 7) 2 + 7)

end

end A283548.P6679404259130021964

/-! ## A283548.P16819308013020139486

`A283543(A056119(n)+28)`
-/

namespace A283548.P16819308013020139486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A056119 n + 28).toNat

end

end A283548.P16819308013020139486

/-! ## A283548.P13017643846798208590

`A283543(eq[11, A066657(n)])`
-/

namespace A283548.P13017643846798208590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283548.P13017643846798208590

/-! ## A283548.P7610515847323815028

`A283543(A034856(n+5)+9)`
-/

namespace A283548.P7610515847323815028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (A034856 (n + 5) + 9).toNat

end

end A283548.P7610515847323815028

/-! ## A283548.P294042051225260932

`A283543(eq[8, A131818(n+1)])`
-/

namespace A283548.P294042051225260932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283548.P294042051225260932

/-!
# A283549: Composite numbers k such that tau(k^(k-1)) is a prime.

The programs for A283549, there is no canonical definition to state claims against.
-/

/-! ## A283549.P7584023137365833443

`filter[A280257(n+1), A355453(#)]`
-/

namespace A283549.P7584023137365833443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A283549.P7584023137365833443

/-! ## A283549.P4697152548176466566

`filter[A280257(n+1), A359466(#)]`
-/

namespace A283549.P4697152548176466566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A283549.P4697152548176466566

/-! ## A283549.P4641150181672333509

`filter[A280257(n+1), A359469(#)]`
-/

namespace A283549.P4641150181672333509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A283549.P4641150181672333509

/-! ## A283549.P17844716837107149749

`filter[A280257(n+1), A373481(#)]`
-/

namespace A283549.P17844716837107149749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A283549.P17844716837107149749

/-!
# A283550: Numbers that are not the sum of abundant numbers (not necessarily distinct).

The programs for A283550, there is no canonical definition to state claims against.
-/

/-! ## A283550.P12477657722805012043

`eq[0, A097798(n)]`
-/

namespace A283550.P12477657722805012043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283550.P12477657722805012043

/-! ## A283550.P13912030605666839621

`eq[0, A282568(n)]`
-/

namespace A283550.P13912030605666839621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283550.P13912030605666839621

/-! ## A283550.P11517377914906987080

`lt[A097798(n+1), 1]+1`
-/

namespace A283550.P11517377914906987080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283550.P11517377914906987080

/-! ## A283550.P7055287563374310786

`A014682(2*lt[A097798(n), 1])`
-/

namespace A283550.P7055287563374310786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A283550.P7055287563374310786

/-! ## A283550.P2736440942330409069

`lt[A282568(n), tanh(A001221(n+1))]`
-/

namespace A283550.P2736440942330409069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A001221 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A283550.P2736440942330409069

/-! ## A283550.P10036223585182191338

`lt[A000203(A097798(n)+1), 3]`
-/

namespace A283550.P10036223585182191338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A097798 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283550.P10036223585182191338

/-! ## A283550.P17253363408090224918

`lt[A097798(n), 1/A245931(n)]`
-/

namespace A283550.P17253363408090224918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A245931 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A283550.P17253363408090224918

/-! ## A283550.P2049360985143861551

`comp[A270660(n+1)-1]+1`
-/

namespace A283550.P2049360985143861551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270660 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A283550.P2049360985143861551

/-! ## A283550.P5042476688392151158

`lt[A000005(A282568(n)+1), 2]`
-/

namespace A283550.P5042476688392151158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A282568 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283550.P5042476688392151158

/-! ## A283550.P7708725266226261192

`lt[A158780(A097798(n)²), 1]`
-/

namespace A283550.P7708725266226261192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A097798 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283550.P7708725266226261192

/-!
# A283551: a(n) = -1 + 5*n/6 + n^3/6.

The programs for A283551, the canonical program `A283551.P5575617590734609024` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283551 has offset 0).

The definition of A283551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283551.P5575617590734609024

`-1+5*n/6+n^3/6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283551

/-- `-1+5*n/6+n^3/6` -/
def P5575617590734609024.Spec : Prop :=
  ∀ n, P5575617590734609024.a n = (A283551 n : ℚ)

end A283551

/-! ## A283551.P8761232293754792761

`ceil(C(n+1, 3)-ϕ+n)`
-/

namespace A283551.P8761232293754792761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) 3 : ℝ) - Real.goldenRatio + (n : ℝ)⌉

end

end A283551.P8761232293754792761

namespace A283551

/-- `ceil(C(n+1, 3)-ϕ+n)` -/
def P8761232293754792761.Spec : Prop :=
  ∀ n, P8761232293754792761.a n = A283551 n

end A283551

/-! ## A283551.P3741358242906677710

`∑[∑[n]-gcd(1-n, n-1)]`
-/

namespace A283551.P3741358242906677710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P3741358242906677710

namespace A283551

/-- `∑[∑[n]-gcd(1-n, n-1)]` -/
def P3741358242906677710.Spec : Prop :=
  ∀ n, P3741358242906677710.a n = A283551 n

end A283551

/-! ## A283551.P15882278896648342873

`∑[∑[n]-lcm(1-n, n-1)]`
-/

namespace A283551.P15882278896648342873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P15882278896648342873

namespace A283551

/-- `∑[∑[n]-lcm(1-n, n-1)]` -/
def P15882278896648342873.Spec : Prop :=
  ∀ n, P15882278896648342873.a n = A283551 n

end A283551

/-! ## A283551.P17771358333929107036

`∑[n-(1-a(n-1))]` with `a(0)=-1, a(1)=1`
-/

namespace A283551.P17771358333929107036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P17771358333929107036

namespace A283551

/-- `∑[n-(1-a(n-1))]` -/
def P17771358333929107036.Spec : Prop :=
  ∀ n, P17771358333929107036.a n = A283551 n

end A283551

/-! ## A283551.P290715472404166900

`floor(C(n+1, 3)-ϕ+n+1)`
-/

namespace A283551.P290715472404166900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 3 : ℝ) - Real.goldenRatio + (n + 1 : ℝ)⌋

end

end A283551.P290715472404166900

namespace A283551

/-- `floor(C(n+1, 3)-ϕ+n+1)` -/
def P290715472404166900.Spec : Prop :=
  ∀ n, P290715472404166900.a n = A283551 n

end A283551

/-! ## A283551.P13136059919899160807

`round(C(n+1, 3)-ϕ+n+1)`
-/

namespace A283551.P13136059919899160807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 3 : ℝ) - Real.goldenRatio + (n + 1 : ℝ))

end

end A283551.P13136059919899160807

namespace A283551

/-- `round(C(n+1, 3)-ϕ+n+1)` -/
def P13136059919899160807.Spec : Prop :=
  ∀ n, P13136059919899160807.a n = A283551 n

end A283551

/-! ## A283551.P8956985997299966975

`∑[∑[n-1]+2%(n+1)²]`
-/

namespace A283551.P8956985997299966975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((2 % (n + 1) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P8956985997299966975

namespace A283551

/-- `∑[∑[n-1]+2%(n+1)²]` -/
def P8956985997299966975.Spec : Prop :=
  ∀ n, P8956985997299966975.a n = A283551 n

end A283551

/-! ## A283551.P8340151921888915340

`∑[∑[(4*n+1)%(n+1)]+n-1]`
-/

namespace A283551.P8340151921888915340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) % (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P8340151921888915340

namespace A283551

/-- `∑[∑[(4*n+1)%(n+1)]+n-1]` -/
def P8340151921888915340.Spec : Prop :=
  ∀ n, P8340151921888915340.a n = A283551 n

end A283551

/-! ## A283551.P8773944394772251401

`(∑[∑[n-1]]+2*n)*and(1, 2*n+1)`
-/

namespace A283551.P8773944394772251401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A283551.P8773944394772251401

namespace A283551

/-- `(∑[∑[n-1]]+2*n)*and(1, 2*n+1)` -/
def P8773944394772251401.Spec : Prop :=
  ∀ n, P8773944394772251401.a n = A283551 n

end A283551

/-! ## A283551.P8489585095295549576

`(A006001(n)-4)/3`
-/

namespace A283551.P8489585095295549576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006001 n - 4 : ℚ) / 3

end

end A283551.P8489585095295549576

namespace A283551

/-- `(A006001(n)-4)/3` -/
def P8489585095295549576.Spec : Prop :=
  ∀ n, P8489585095295549576.a n = (A283551 n : ℚ)

end A283551

/-! ## A283551.P14590482847553192064

`(A006527(n)-2+n)/2`
-/

namespace A283551.P14590482847553192064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006527 n - 2 + (n : ℤ) : ℚ) / 2

end

end A283551.P14590482847553192064

namespace A283551

/-- `(A006527(n)-2+n)/2` -/
def P14590482847553192064.Spec : Prop :=
  ∀ n, P14590482847553192064.a n = (A283551 n : ℚ)

end A283551

/-! ## A283551.P14621655936784047336

`(A000217(n)/3+1)*(n-1)`
-/

namespace A283551.P14621655936784047336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 n : ℚ) / 3 + 1) * ((n : ℤ) - 1 : ℚ)

end

end A283551.P14621655936784047336

namespace A283551

/-- `(A000217(n)/3+1)*(n-1)` -/
def P14621655936784047336.Spec : Prop :=
  ∀ n, P14621655936784047336.a n = (A283551 n : ℚ)

end A283551

/-! ## A283551.P17071697262733945928

`-(∑[A004277(n)-∑[n+1]]+1)`
-/

namespace A283551.P17071697262733945928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283551.P17071697262733945928

namespace A283551

/-- `-(∑[A004277(n)-∑[n+1]]+1)` -/
def P17071697262733945928.Spec : Prop :=
  ∀ n, P17071697262733945928.a n = A283551 n

end A283551

/-! ## A283551.P142122890899917782

`Δ[A055417(n)-(3*n+2)]`
-/

namespace A283551.P142122890899917782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n - (3 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283551.P142122890899917782

namespace A283551

/-- `Δ[A055417(n)-(3*n+2)]` -/
def P142122890899917782.Spec : Prop :=
  ∀ n, P142122890899917782.a n = A283551 n

end A283551

/-! ## A283551.P5696809873451506307

`Δ[A000127(n+1)-Δ[n²]]`
-/

namespace A283551.P5696809873451506307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283551.P5696809873451506307

namespace A283551

/-- `Δ[A000127(n+1)-Δ[n²]]` -/
def P5696809873451506307.Spec : Prop :=
  ∀ n, P5696809873451506307.a n = A283551 n

end A283551

/-! ## A283551.P4676589869167605218

`Δ[A055795(n+1)-Δ[n²]]`
-/

namespace A283551.P4676589869167605218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283551.P4676589869167605218

namespace A283551

/-- `Δ[A055795(n+1)-Δ[n²]]` -/
def P4676589869167605218.Spec : Prop :=
  ∀ n, P4676589869167605218.a n = A283551 n

end A283551

/-! ## A283551.P13418016139355752246

`A108561(A167614(n+2))`
-/

namespace A283551.P13418016139355752246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A167614 (n + 2)).toNat

end

end A283551.P13418016139355752246

namespace A283551

/-- `A108561(A167614(n+2))` -/
def P13418016139355752246.Spec : Prop :=
  ∀ n, P13418016139355752246.a n = A283551 n

end A283551

/-! ## A283551.P16847629960566187943

`∑[A285733(∑[n+1])]`
-/

namespace A283551.P16847629960566187943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P16847629960566187943

namespace A283551

/-- `∑[A285733(∑[n+1])]` -/
def P16847629960566187943.Spec : Prop :=
  ∀ n, P16847629960566187943.a n = A283551 n

end A283551

/-! ## A283551.P18224768401948862415

`∑[record[A255878(n+2)]]`
-/

namespace A283551.P18224768401948862415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283551.P18224768401948862415

namespace A283551

/-- `∑[record[A255878(n+2)]]` -/
def P18224768401948862415.Spec : Prop :=
  ∀ n, P18224768401948862415.a n = A283551 n

end A283551

/-!
# A283553: Numbers k such that k![4] + 2 is prime, where k![4] = A007662(k) = quadruple factorial.

The programs for A283553, there is no canonical definition to state claims against.
-/

/-! ## A283553.P16047395806222528855

`lt[A307544(n), exp(3^(n%2))]`
-/

namespace A283553.P16047395806222528855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307544 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (3 ^ (n % 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A283553.P16047395806222528855

/-! ## A283553.P7619482804211002443

`A004273(lt[A131070(n), 7])`
-/

namespace A283553.P7619482804211002443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131070 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A283553.P7619482804211002443

/-! ## A283553.P922647000782843822

`lt[A065265(n+1), A273494(n+5)]`
-/

namespace A283553.P922647000782843822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283553.P922647000782843822

/-! ## A283553.P4780692171130050847

`lt[A054760(n), A317358(2*(n+2))²]`
-/

namespace A283553.P4780692171130050847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317358 (2 * (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283553.P4780692171130050847

/-! ## A283553.P872707583395845859

`or(comp[2*(n+1)], A243148(A145550(n+1)))`
-/

namespace A283553.P872707583395845859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A243148 (A145550 (n + 1)).toNat)

end

end A283553.P872707583395845859

/-!
# A283555: Even numbers that cannot be expressed as p+3, p+5, or p+7, with p prime.

The programs for A283555, there is no canonical definition to state claims against.
-/

/-! ## A283555.P813201031076808474

`A099019(n+1)+5`
-/

namespace A283555.P813201031076808474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1) + 5

end

end A283555.P813201031076808474

/-! ## A283555.P10641956290305637021

`A161945(n+1)+7`
-/

namespace A283555.P10641956290305637021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161945 (n + 1) + 7

end

end A283555.P10641956290305637021

/-! ## A283555.P10184426130756794494

`A129822(3*(n+1))+3`
-/

namespace A283555.P10184426130756794494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129822 (3 * (n + 1)) + 3

end

end A283555.P10184426130756794494

/-! ## A283555.P482201953902984699

`record[A129822(n+1)/dr((n²+8)²)]+7`
-/

namespace A283555.P482201953902984699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129822 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot ((n ^ 2 + 8) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7

end

end A283555.P482201953902984699

/-! ## A283555.P4164318557992488228

`A020710(A099019(n+1))`
-/

namespace A283555.P4164318557992488228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A099019 (n + 1)).toNat

end

end A283555.P4164318557992488228

/-! ## A283555.P861892739330754216

`A020719(A161945(n+1))`
-/

namespace A283555.P861892739330754216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A161945 (n + 1)).toNat

end

end A283555.P861892739330754216

/-! ## A283555.P16883095046584911085

`∩[A298366(n+1)+2, A298366(n+1)]`
-/

namespace A283555.P16883095046584911085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283555.P16883095046584911085

/-!
# A283556: Digital root of the sum of the first n primes.

The programs for A283556, the canonical program `A283556.P4279643971322405347` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283556 has offset 0).

The definition of A283556 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283556.P4279643971322405347

`A010888(A007504(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A283556

/-- `A010888(A007504(n))` -/
def P4279643971322405347.Spec : Prop :=
  ∀ n, P4279643971322405347.a n = A283556 n

theorem P4279643971322405347.correct : P4279643971322405347.Spec := by
  intro n
  simp only [A283556]

end A283556

/-! ## A283556.P14987628246562365470

`dr(A051351(n))`
-/

namespace A283556.P14987628246562365470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051351 n)

end

end A283556.P14987628246562365470

namespace A283556

/-- `dr(A051351(n))` -/
def P14987628246562365470.Spec : Prop :=
  ∀ n, (P14987628246562365470.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P15802299686217563886

`dr(∑[A182986(n+1)])`
-/

namespace A283556.P15802299686217563886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P15802299686217563886

namespace A283556

/-- `dr(∑[A182986(n+1)])` -/
def P15802299686217563886.Spec : Prop :=
  ∀ n, (P15802299686217563886.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P14794224464822344513

`dr(1-A014284(n+1))`
-/

namespace A283556.P14794224464822344513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A014284 (n + 1))

end

end A283556.P14794224464822344513

namespace A283556

/-- `dr(1-A014284(n+1))` -/
def P14794224464822344513.Spec : Prop :=
  ∀ n, (P14794224464822344513.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P12101858820243165883

`dr(2-A036439(n+1))`
-/

namespace A283556.P12101858820243165883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A036439 (n + 1))

end

end A283556.P12101858820243165883

namespace A283556

/-- `dr(2-A036439(n+1))` -/
def P12101858820243165883.Spec : Prop :=
  ∀ n, (P12101858820243165883.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P8918355275067258079

`dr(1-∑[A008578(n+1)])`
-/

namespace A283556.P8918355275067258079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P8918355275067258079

namespace A283556

/-- `dr(1-∑[A008578(n+1)])` -/
def P8918355275067258079.Spec : Prop :=
  ∀ n, (P8918355275067258079.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P9933450041579602285

`dr(A000040(n)+a(n-1))` with `a(0)=0`
-/

namespace A283556.P9933450041579602285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.digitalRoot (A000040 n + (a (n - 1) : ℤ))

end

end A283556.P9933450041579602285

namespace A283556

/-- `dr(A000040(n)+a(n-1))` -/
def P9933450041579602285.Spec : Prop :=
  ∀ n, (P9933450041579602285.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P1778713392766163760

`dr(∑[A000040(gcd(n, (n*a(n-1))²²))])` with `a(0)=0`
-/

namespace A283556.P1778713392766163760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 (Int.gcd (n : ℤ) ((((n : ℤ) * f1 (n - 1)) ^ 2) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P1778713392766163760

namespace A283556

/-- `dr(∑[A000040(gcd(n, (n*a(n-1))²²))])` -/
def P1778713392766163760.Spec : Prop :=
  ∀ n, (P1778713392766163760.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P2173667578922046862

`dr(A166448(n+1)+A001223(n+1))`
-/

namespace A283556.P2173667578922046862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A166448 (n + 1) + A001223 (n + 1))

end

end A283556.P2173667578922046862

namespace A283556

/-- `dr(A166448(n+1)+A001223(n+1))` -/
def P2173667578922046862.Spec : Prop :=
  ∀ n, (P2173667578922046862.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P3389160451025600742

`dr(A000040(n+1)-∑[A000040(n+1)])`
-/

namespace A283556.P3389160451025600742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P3389160451025600742

namespace A283556

/-- `dr(A000040(n+1)-∑[A000040(n+1)])` -/
def P3389160451025600742.Spec : Prop :=
  ∀ n, (P3389160451025600742.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P16104316214486514131

`dr(A007605(n+1)-∑[A007605(n+1)])`
-/

namespace A283556.P16104316214486514131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007605 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P16104316214486514131

namespace A283556

/-- `dr(A007605(n+1)-∑[A007605(n+1)])` -/
def P16104316214486514131.Spec : Prop :=
  ∀ n, (P16104316214486514131.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P11543001803117360396

`dr(A028906(n+1)-∑[A028906(n+1)])`
-/

namespace A283556.P11543001803117360396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P11543001803117360396

namespace A283556

/-- `dr(A028906(n+1)-∑[A028906(n+1)])` -/
def P11543001803117360396.Spec : Prop :=
  ∀ n, (P11543001803117360396.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P15211477762524514568

`dr(2-A175965(n+2))`
-/

namespace A283556.P15211477762524514568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A175965 (n + 2))

end

end A283556.P15211477762524514568

namespace A283556

/-- `dr(2-A175965(n+2))` -/
def P15211477762524514568.Spec : Prop :=
  ∀ n, (P15211477762524514568.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P10794493064820258013

`dr(∑[record[A008472(n+1)]])`
-/

namespace A283556.P10794493064820258013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P10794493064820258013

namespace A283556

/-- `dr(∑[record[A008472(n+1)]])` -/
def P10794493064820258013.Spec : Prop :=
  ∀ n, (P10794493064820258013.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P6390680842220466603

`dr(1-∑[record[A006530(n+1)]])`
-/

namespace A283556.P6390680842220466603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P6390680842220466603

namespace A283556

/-- `dr(1-∑[record[A006530(n+1)]])` -/
def P6390680842220466603.Spec : Prop :=
  ∀ n, (P6390680842220466603.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P2401169977517289455

`dr(1-∑[record[A020639(n+1)]])`
-/

namespace A283556.P2401169977517289455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P2401169977517289455

namespace A283556

/-- `dr(1-∑[record[A020639(n+1)]])` -/
def P2401169977517289455.Spec : Prop :=
  ∀ n, (P2401169977517289455.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P11903800869223427411

`dr(A082500(2*(n+1))-∑[A082500(2*(n+1))])`
-/

namespace A283556.P11903800869223427411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A082500 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P11903800869223427411

namespace A283556

/-- `dr(A082500(2*(n+1))-∑[A082500(2*(n+1))])` -/
def P11903800869223427411.Spec : Prop :=
  ∀ n, (P11903800869223427411.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P9443307173840342284

`dr(A067112(A068670(n)))`
-/

namespace A283556.P9443307173840342284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067112 (A068670 n).toNat)

end

end A283556.P9443307173840342284

namespace A283556

/-- `dr(A067112(A068670(n)))` -/
def P9443307173840342284.Spec : Prop :=
  ∀ n, (P9443307173840342284.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P3807993424942084030

`dr(∑[record[∑{p}[n, #]]])`
-/

namespace A283556.P3807993424942084030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A283556.P3807993424942084030

namespace A283556

/-- `dr(∑[record[∑{p}[n, #]]])` -/
def P3807993424942084030.Spec : Prop :=
  ∀ n, (P3807993424942084030.a n : ℤ) = A283556 n

end A283556

/-! ## A283556.P10672726045365553854

`dr(∑[A154279(2*n)])`
-/

namespace A283556.P10672726045365553854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283556.P10672726045365553854

namespace A283556

/-- `dr(∑[A154279(2*n)])` -/
def P10672726045365553854.Spec : Prop :=
  ∀ n, (P10672726045365553854.a n : ℤ) = A283556 n

end A283556

/-!
# A283557: The number of positive integer sequences of length n with no duplicate substrings of length greater than 1 and a minimal product (= A282164(n)).

The programs for A283557, there is no canonical definition to state claims against.
-/

/-! ## A283557.P16864083846583979468

`filter[A206703(n+1), A336477(#)]`
-/

namespace A283557.P16864083846583979468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A283557.P16864083846583979468

/-! ## A283557.P13646191871755746505

`filter[A206703(n+1), A340375(#)]`
-/

namespace A283557.P13646191871755746505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A283557.P13646191871755746505

/-! ## A283557.P15741183416323952580

`A206703(lt[A245348(n), A084964(3*(n+1))])`
-/

namespace A283557.P15741183416323952580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283557.P15741183416323952580

/-!
# A283559: Numbers k such that k![10]-2 is prime, where k![10] is the ten-fold multifactorial.

The programs for A283559, there is no canonical definition to state claims against.
-/

/-! ## A283559.P14297536229684522577

`A190911(A005773(n))+A006093(n+1)`
-/

namespace A283559.P14297536229684522577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190911 (A005773 n).toNat + A006093 (n + 1)

end

end A283559.P14297536229684522577

/-! ## A283559.P9987159858679471394

`A367586(n+3)-A001221(A000244(n))`
-/

namespace A283559.P9987159858679471394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (n + 3) - A001221 (A000244 n).toNat

end

end A283559.P9987159858679471394

/-! ## A283559.P8060999277379867136

`A367586(n+3)-A057427(A001787(n))`
-/

namespace A283559.P8060999277379867136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (n + 3) - A057427 (A001787 n).toNat

end

end A283559.P8060999277379867136

/-!
# A283560: Concatenation of the first n nonsquares (A000037).

The programs for A283560, there is no canonical definition to state claims against.
-/

/-! ## A283560.P3038647527301401629

`A048794(∑[A011782(comp[n²])])`
-/

namespace A283560.P3038647527301401629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283560.P3038647527301401629

/-!
# A283562: Primes of the form (p^2 - q^2) / 24 with primes p > q > 3.

The programs for A283562, there is no canonical definition to state claims against.
-/

/-! ## A283562.P7658180087622095239

`record[A006530(A124866(n+1))]`
-/

namespace A283562.P7658180087622095239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283562.P7658180087622095239

/-! ## A283562.P4762733422895823043

`A089870(∩[A040988(n+1), A007095(n)])`
-/

namespace A283562.P4762733422895823043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A283562.P4762733422895823043

/-! ## A283562.P16765020486170817978

`eq[A003415(n), A008292(A365067(n))]`
-/

namespace A283562.P16765020486170817978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A365067 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283562.P16765020486170817978

/-! ## A283562.P645614062597431774

`eq[A001263(A365067(n)), A032741(n)]`
-/

namespace A283562.P645614062597431774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A365067 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283562.P645614062597431774

/-!
# A283563: Numbers n such that A112368(n) = Sum_{i=0..n} 2^i*i! is prime.

The programs for A283563, there is no canonical definition to state claims against.
-/

/-! ## A283563.P1958327008479926817

`A103011(A322798(n))+n`
-/

namespace A283563.P1958327008479926817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103011 (A322798 n).toNat + (n : ℤ)

end

end A283563.P1958327008479926817

/-! ## A283563.P11468191887747144939

`eq[1, A297031(A028261(n+1))]`
-/

namespace A283563.P11468191887747144939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297031 (A028261 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283563.P11468191887747144939

/-! ## A283563.P3275053684934770159

`A103011(A005709(n+1))+n`
-/

namespace A283563.P3275053684934770159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103011 (A005709 (n + 1)).toNat + (n : ℤ)

end

end A283563.P3275053684934770159

/-! ## A283563.P17291026531680536031

`A101576(A173925(n+2))+n+1`
-/

namespace A283563.P17291026531680536031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101576 (A173925 (n + 2)).toNat + (n + 1 : ℤ)

end

end A283563.P17291026531680536031

/-! ## A283563.P5190197356123293112

`∑[p?[A333432(n+1)]^A173711(n)]`
-/

namespace A283563.P5190197356123293112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) ^ (A173711 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283563.P5190197356123293112

/-!
# A283564: Positive integers k such that k = a/(b+c) + b/(a+c) + c/(a+b) for some positive integers a, b and c where the corresponding elliptic curve has rank=1.

The programs for A283564, there is no canonical definition to state claims against.
-/

/-! ## A283564.P2757964243282430670

`∩[A192452(n+1), A369896(n+1)]`
-/

namespace A283564.P2757964243282430670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283564.P2757964243282430670

/-! ## A283564.P6024172767033713491

`A369896(A029970(n+1)+1)`
-/

namespace A283564.P6024172767033713491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369896 (A029970 (n + 1) + 1).toNat

end

end A283564.P6024172767033713491

/-! ## A283564.P7432821992653442403

`∩[A182049(n+1), A369896(n+1)]`
-/

namespace A283564.P7432821992653442403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283564.P7432821992653442403

/-! ## A283564.P11115451365991839767

`A369896(A062399(n+1))`
-/

namespace A283564.P11115451365991839767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369896 (A062399 (n + 1)).toNat

end

end A283564.P11115451365991839767

/-! ## A283564.P12480521519740617607

`A369896(A120126(n+1))`
-/

namespace A283564.P12480521519740617607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369896 (A120126 (n + 1)).toNat

end

end A283564.P12480521519740617607

/-!
# A283566: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283566, there is no canonical definition to state claims against.
-/

/-! ## A283566.P4435293579346312769

`A283572(∑[4*n]+1)`
-/

namespace A283566.P4435293579346312769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283566.P4435293579346312769

/-! ## A283566.P4077864404579990412

`record[A003982(n)*A283572(n+1)]`
-/

namespace A283566.P4077864404579990412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A283572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283566.P4077864404579990412

/-! ## A283566.P13849123893906326100

`record[A214505(n)*A283572(n+1)]`
-/

namespace A283566.P13849123893906326100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A283572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283566.P13849123893906326100

/-! ## A283566.P140655299618088526

`A283572(A001844(n))+A185036(n)`
-/

namespace A283566.P140655299618088526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A001844 n).toNat + A185036 n

end

end A283566.P140655299618088526

/-! ## A283566.P9095386489789765543

`lcm(A033999(n), A283572(A001844(n)))`
-/

namespace A283566.P9095386489789765543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A283572 (A001844 n).toNat)

end

end A283566.P9095386489789765543

/-!
# A283567: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283567, there is no canonical definition to state claims against.
-/

/-! ## A283567.P5463967160615811675

`A283572(∑[n+3]+1)`
-/

namespace A283567.P5463967160615811675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283567.P5463967160615811675

/-! ## A283567.P4711646745267795876

`record[A283572(A198464(n+1))]`
-/

namespace A283567.P4711646745267795876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283567.P4711646745267795876

/-! ## A283567.P15145350209844625076

`record[Δ[A283572(A130297(n+1))]]`
-/

namespace A283567.P15145350209844625076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283567.P15145350209844625076

/-!
# A283568: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283568, there is no canonical definition to state claims against.
-/

/-! ## A283568.P17368607103419004403

`A283572(A141214(n+1))`
-/

namespace A283568.P17368607103419004403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A141214 (n + 1)).toNat

end

end A283568.P17368607103419004403

/-! ## A283568.P3448966247876470309

`A283572(A055998(n+2))`
-/

namespace A283568.P3448966247876470309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A055998 (n + 2)).toNat

end

end A283568.P3448966247876470309

/-! ## A283568.P16056109449903739104

`A283572(A155212(n)+5)`
-/

namespace A283568.P16056109449903739104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A155212 n + 5).toNat

end

end A283568.P16056109449903739104

/-! ## A283568.P17357903627116172094

`A283572(eq[4, A209434(n)])`
-/

namespace A283568.P17357903627116172094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283568.P17357903627116172094

/-! ## A283568.P12455031620827859642

`A283572(Δ[A034857(n+1)])`
-/

namespace A283568.P12455031620827859642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (f1 (n + 1) - f1 n).toNat

end

end A283568.P12455031620827859642

/-!
# A283569: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283569, there is no canonical definition to state claims against.
-/

/-! ## A283569.P1041209180854586284

`A283572(Δ[A264443(n)])`
-/

namespace A283569.P1041209180854586284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (f1 (n + 1) - f1 n).toNat

end

end A283569.P1041209180854586284

/-! ## A283569.P5708616653739059488

`A283572(A046691(n+3))`
-/

namespace A283569.P5708616653739059488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A046691 (n + 3)).toNat

end

end A283569.P5708616653739059488

/-! ## A283569.P4498900599028575121

`A283572(eq[4, A193592(n)])`
-/

namespace A283569.P4498900599028575121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283569.P4498900599028575121

/-! ## A283569.P1539531642086761847

`A283572(Δ[A023545(n+1)])`
-/

namespace A283569.P1539531642086761847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (f1 (n + 1) - f1 n).toNat

end

end A283569.P1539531642086761847

/-! ## A283569.P11373415990235727519

`A283572(eq[5, A200370(n+1)])`
-/

namespace A283569.P11373415990235727519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283569.P11373415990235727519

/-!
# A283570: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283570, there is no canonical definition to state claims against.
-/

/-! ## A283570.P1808509762296096333

`A283572(A052905(n+3))`
-/

namespace A283570.P1808509762296096333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A052905 (n + 3)).toNat

end

end A283570.P1808509762296096333

/-! ## A283570.P17100219102573177068

`A283572(eq[3, A219347(n)])`
-/

namespace A283570.P17100219102573177068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283570.P17100219102573177068

/-! ## A283570.P8661305842065622477

`A283572(eq[5, A193592(n)])`
-/

namespace A283570.P8661305842065622477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283570.P8661305842065622477

/-! ## A283570.P13084205869716852086

`A283572(eq[8, A258709(n)])`
-/

namespace A283570.P13084205869716852086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283570.P13084205869716852086

/-! ## A283570.P5556859269354633309

`A283572(A000124(n+6)-6)`
-/

namespace A283570.P5556859269354633309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A000124 (n + 6) - 6).toNat

end

end A283570.P5556859269354633309

/-!
# A283571: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283571, there is no canonical definition to state claims against.
-/

/-! ## A283571.P8285260063023238963

`A283572(A055999(n+4))`
-/

namespace A283571.P8285260063023238963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A055999 (n + 4)).toNat

end

end A283571.P8285260063023238963

/-! ## A283571.P13821202956926817478

`A283572(eq[4, A219347(n)])`
-/

namespace A283571.P13821202956926817478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283571.P13821202956926817478

/-! ## A283571.P11060187119742875958

`A283572(eq[6, A193592(n)])`
-/

namespace A283571.P11060187119742875958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283571.P11060187119742875958

/-! ## A283571.P13716362267151305101

`A283572(eq[7, A200370(n+1)])`
-/

namespace A283571.P13716362267151305101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283571.P13716362267151305101

/-! ## A283571.P11954570170594033256

`A283572(eq[10, A185782(n+1)])`
-/

namespace A283571.P11954570170594033256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283571.P11954570170594033256

/-!
# A283573: Number of 2Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283573, there is no canonical definition to state claims against.
-/

/-! ## A283573.P16656150801134134577

`A283572(∑[n+1]+2)`
-/

namespace A283573.P16656150801134134577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283573.P16656150801134134577

/-! ## A283573.P1810226943523151797

`lcm(2, A283572(A000096(n)+3))`
-/

namespace A283573.P1810226943523151797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283572 (A000096 n + 3).toNat)

end

end A283573.P1810226943523151797

/-! ## A283573.P7639547995088510444

`record[A283572(A114091(n+1)+1)]`
-/

namespace A283573.P7639547995088510444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283573.P7639547995088510444

/-! ## A283573.P6205142397305667608

`record[A283572(A130270(n+1)+2)]`
-/

namespace A283573.P6205142397305667608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283573.P6205142397305667608

/-! ## A283573.P16873708857954295472

`A283572(A000096(n)+3)%A283538(n+1)`
-/

namespace A283573.P16873708857954295472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283572 (A000096 n + 3).toNat) (A283538 (n + 1))

end

end A283573.P16873708857954295472

/-!
# A283574: Number of 3Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283574, there is no canonical definition to state claims against.
-/

/-! ## A283574.P5547099790462476932

`A283572(∑[n+2]+4)`
-/

namespace A283574.P5547099790462476932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283574.P5547099790462476932

/-! ## A283574.P6965560568718591369

`A283572(A167614(n+1))+A025439(n)`
-/

namespace A283574.P6965560568718591369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A167614 (n + 1)).toNat + A025439 n

end

end A283574.P6965560568718591369

/-! ## A283574.P14946330634498610220

`A283572(A167614(n+1))+A185246(n)`
-/

namespace A283574.P14946330634498610220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A167614 (n + 1)).toNat + A185246 n

end

end A283574.P14946330634498610220

/-! ## A283574.P14704947081299979537

`A283572(A167614(n+1))+A185284(n)`
-/

namespace A283574.P14704947081299979537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A167614 (n + 1)).toNat + A185284 n

end

end A283574.P14704947081299979537

/-! ## A283574.P4749466612750942042

`A054977(n)*A283572(A167614(n+1))`
-/

namespace A283574.P4749466612750942042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A283572 (A167614 (n + 1)).toNat

end

end A283574.P4749466612750942042

/-!
# A283575: Number of 4Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283575, there is no canonical definition to state claims against.
-/

/-! ## A283575.P9418003164925638688

`A283572(A141214(n)+7)`
-/

namespace A283575.P9418003164925638688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A141214 n + 7).toNat

end

end A283575.P9418003164925638688

/-! ## A283575.P17321576173486765427

`A283572(A052905(n)+9)`
-/

namespace A283575.P17321576173486765427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A052905 n + 9).toNat

end

end A283575.P17321576173486765427

/-! ## A283575.P4130462956564786251

`A283572(A055999(n)+10)`
-/

namespace A283575.P4130462956564786251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A055999 n + 10).toNat

end

end A283575.P4130462956564786251

/-! ## A283575.P13067515197859049730

`A283572(A167614(n+2)+1)`
-/

namespace A283575.P13067515197859049730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A167614 (n + 2) + 1).toNat

end

end A283575.P13067515197859049730

/-! ## A283575.P9054049632867147538

`A283572(A166136(n+2)-2)`
-/

namespace A283575.P9054049632867147538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A166136 (n + 2) - 2).toNat

end

end A283575.P9054049632867147538

/-!
# A283576: Number of 5Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283576, there is no canonical definition to state claims against.
-/

/-! ## A283576.P6661984176382087999

`A283572(A167499(n+3))`
-/

namespace A283576.P6661984176382087999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A167499 (n + 3)).toNat

end

end A283576.P6661984176382087999

/-! ## A283576.P17160061318999530188

`A283572(A155212(n)+13)`
-/

namespace A283576.P17160061318999530188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A155212 n + 13).toNat

end

end A283576.P17160061318999530188

/-! ## A283576.P5111770908104410688

`A283572(A056000(n)+15)`
-/

namespace A283576.P5111770908104410688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A056000 n + 15).toNat

end

end A283576.P5111770908104410688

/-! ## A283576.P17211610368556340675

`A283572(eq[7, A066657(n)])`
-/

namespace A283576.P17211610368556340675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283576.P17211610368556340675

/-! ## A283576.P11809273516590347671

`A283572(A052905(n+1)+10)`
-/

namespace A283576.P11809273516590347671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A052905 (n + 1) + 10).toNat

end

end A283576.P11809273516590347671

/-!
# A283577: Number of 6Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283577, there is no canonical definition to state claims against.
-/

/-! ## A283577.P3229138240594708741

`A283572(A166136(n+4))`
-/

namespace A283577.P3229138240594708741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A166136 (n + 4)).toNat

end

end A283577.P3229138240594708741

/-! ## A283577.P8256289837424662973

`A283572(Δ[A264443(n)]+10)`
-/

namespace A283577.P8256289837424662973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (f1 (n + 1) - f1 n + 10).toNat

end

end A283577.P8256289837424662973

/-! ## A283577.P9702128391652731243

`A283572(A000124(n+5)+5)`
-/

namespace A283577.P9702128391652731243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A000124 (n + 5) + 5).toNat

end

end A283577.P9702128391652731243

/-! ## A283577.P169228810898287779

`A283572(A034856(n+4)+8)`
-/

namespace A283577.P169228810898287779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A034856 (n + 4) + 8).toNat

end

end A283577.P169228810898287779

/-! ## A283577.P15461641742505483715

`A283572(A052905(n+2)+11)`
-/

namespace A283577.P15461641742505483715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A052905 (n + 2) + 11).toNat

end

end A283577.P15461641742505483715

/-!
# A283578: Number of 7Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283578, there is no canonical definition to state claims against.
-/

/-! ## A283578.P2644202304819691736

`A283572(A056119(n)+28)`
-/

namespace A283578.P2644202304819691736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A056119 n + 28).toNat

end

end A283578.P2644202304819691736

/-! ## A283578.P6079148166076612768

`A283572(eq[11, A066657(n)])`
-/

namespace A283578.P6079148166076612768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283578.P6079148166076612768

/-! ## A283578.P14908614847557584811

`A283572(A167499(n+5)+2)`
-/

namespace A283578.P14908614847557584811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A167499 (n + 5) + 2).toNat

end

end A283578.P14908614847557584811

/-! ## A283578.P1686340617800718421

`A283572(A000124(n+6)+6)`
-/

namespace A283578.P1686340617800718421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (A000124 (n + 6) + 6).toNat

end

end A283578.P1686340617800718421

/-! ## A283578.P8974046012918601907

`A283572(eq[8, A131818(n+1)])`
-/

namespace A283578.P8974046012918601907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283578.P8974046012918601907

/-!
# A283579: Expansion of exp( Sum_{n>=1} A283533(n)/n*x^n ) in powers of x.

The programs for A283579, there is no canonical definition to state claims against.
-/

/-! ## A283579.P4292834625821271579

`A283674(∑[n+3])`
-/

namespace A283579.P4292834625821271579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283579.P4292834625821271579

/-! ## A283579.P6821823854217306278

`A283674(A141214(n))+A178798(n)`
-/

namespace A283579.P6821823854217306278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A141214 n).toNat + A178798 n

end

end A283579.P6821823854217306278

/-! ## A283579.P4995892578442332307

`A283674(A141214(n))+A185245(n)`
-/

namespace A283579.P4995892578442332307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A141214 n).toNat + A185245 n

end

end A283579.P4995892578442332307

/-! ## A283579.P9827756842006689734

`gcd(A000038(n), A283674(A141214(n)))`
-/

namespace A283579.P9827756842006689734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A283674 (A141214 n).toNat)

end

end A283579.P9827756842006689734

/-! ## A283579.P10446547100728206856

`lcm(A020985(n), A283674(A141214(n)))`
-/

namespace A283579.P10446547100728206856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A283674 (A141214 n).toNat)

end

end A283579.P10446547100728206856

/-!
# A283580: Expansion of exp( Sum_{n>=1} A283535(n)/n*x^n ) in powers of x.

The programs for A283580, there is no canonical definition to state claims against.
-/

/-! ## A283580.P5216103006815848795

`A283674(∑[n+3]+n+3)`
-/

namespace A283580.P5216103006815848795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A283580.P5216103006815848795

/-!
# A283581: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A283581, there is no canonical definition to state claims against.
-/

/-! ## A283581.P1331218045258489160

`A007088(A283583(n))`
-/

namespace A283581.P1331218045258489160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283583 n).toNat

end

end A283581.P1331218045258489160

/-! ## A283581.P9461477283335728911

`A305989(A283584(n))`
-/

namespace A283581.P9461477283335728911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283584 n).toNat

end

end A283581.P9461477283335728911

/-! ## A283581.P7349437557092154530

`A185544(2*A283583(n))`
-/

namespace A283581.P7349437557092154530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283583 n).toNat

end

end A283581.P7349437557092154530

/-! ## A283581.P9368643163615854589

`A185544(lcm(2, A283583(n)))`
-/

namespace A283581.P9368643163615854589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283583 n))

end

end A283581.P9368643163615854589

/-! ## A283581.P14993340370979855024

`A284355(A062399(n))`
-/

namespace A283581.P14993340370979855024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284355 (A062399 n).toNat

end

end A283581.P14993340370979855024

/-!
# A283582: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A283582, there is no canonical definition to state claims against.
-/

/-! ## A283582.P9335309219336795077

`A007088(A283584(n))`
-/

namespace A283582.P9335309219336795077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283584 n).toNat

end

end A283582.P9335309219336795077

/-! ## A283582.P2492237401339471508

`A305989(A283583(n))`
-/

namespace A283582.P2492237401339471508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283583 n).toNat

end

end A283582.P2492237401339471508

/-! ## A283582.P4818364859268061351

`A185544(2*A283584(n))`
-/

namespace A283582.P4818364859268061351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283584 n).toNat

end

end A283582.P4818364859268061351

/-! ## A283582.P15920256399723187939

`A185544(lcm(2, A283584(n)))`
-/

namespace A283582.P15920256399723187939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283584 n))

end

end A283582.P15920256399723187939

/-! ## A283582.P14138331497538580229

`A284356(A062399(n))`
-/

namespace A283582.P14138331497538580229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284356 (A062399 n).toNat

end

end A283582.P14138331497538580229

/-!
# A283583: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A283583, there is no canonical definition to state claims against.
-/

/-! ## A283583.P7996969312072195868

`and(A126646(n), A264618(A283584(n)))`
-/

namespace A283583.P7996969312072195868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283584 n).toNat)

end

end A283583.P7996969312072195868

/-! ## A283583.P2557037058147269370

`A057889(A283584(n))`
-/

namespace A283583.P2557037058147269370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283584 n).toNat

end

end A283583.P2557037058147269370

/-! ## A283583.P4565654924322588770

`A281589(2*A283584(n))`
-/

namespace A283583.P4565654924322588770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283584 n).toNat

end

end A283583.P4565654924322588770

/-! ## A283583.P2999867469855675713

`A325401(2*A283584(n))`
-/

namespace A283583.P2999867469855675713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283584 n).toNat

end

end A283583.P2999867469855675713

/-! ## A283583.P9131895050406210260

`A281589(lcm(2, A283584(n)))`
-/

namespace A283583.P9131895050406210260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283584 n))

end

end A283583.P9131895050406210260

/-!
# A283584: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A283584, there is no canonical definition to state claims against.
-/

/-! ## A283584.P7866181000564740999

`and(A126646(n), A264618(A283583(n)))`
-/

namespace A283584.P7866181000564740999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283583 n).toNat)

end

end A283584.P7866181000564740999

/-! ## A283584.P1949686881733373167

`A057889(A283583(n))`
-/

namespace A283584.P1949686881733373167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283583 n).toNat

end

end A283584.P1949686881733373167

/-! ## A283584.P15447520541961482815

`A325401(or(1, A283583(n)))`
-/

namespace A283584.P15447520541961482815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A283583 n)).toNat

end

end A283584.P15447520541961482815

/-! ## A283584.P6238244711671969474

`A325401(A283583(n)+A010893(n))`
-/

namespace A283584.P6238244711671969474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A283583 n + A010893 (n + 13)).toNat

end

end A283584.P6238244711671969474

/-! ## A283584.P16361520809906447962

`A325401(A283583(n)+A185255(n))`
-/

namespace A283584.P16361520809906447962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A283583 n + A185255 n).toNat

end

end A283584.P16361520809906447962

/-!
# A283585: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A283585, there is no canonical definition to state claims against.
-/

/-! ## A283585.P5858422259441323657

`A007088(A283587(n))`
-/

namespace A283585.P5858422259441323657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283587 n).toNat

end

end A283585.P5858422259441323657

/-! ## A283585.P8827056868333549239

`A305989(A283588(n))`
-/

namespace A283585.P8827056868333549239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283588 n).toNat

end

end A283585.P8827056868333549239

/-! ## A283585.P14990016355787254477

`A305989(record[A279829(gcd(n, A326463(n)))])`
-/

namespace A283585.P14990016355787254477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279829 (Int.gcd (n : ℤ) (A326463 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283585.P14990016355787254477

/-! ## A283585.P11404909959160405825

`A305989(A126646(n+1)-A283047(n+1))`
-/

namespace A283585.P11404909959160405825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A126646 (n + 1) - A283047 (n + 1)).toNat

end

end A283585.P11404909959160405825

/-! ## A283585.P9657828219603017531

`A305989(2*A283706(n))`
-/

namespace A283585.P9657828219603017531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A283706 n).toNat

end

end A283585.P9657828219603017531

/-!
# A283586: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A283586, there is no canonical definition to state claims against.
-/

/-! ## A283586.P1587634048275682968

`A007088(A283588(n))`
-/

namespace A283586.P1587634048275682968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283588 n).toNat

end

end A283586.P1587634048275682968

/-! ## A283586.P4177178404583157852

`record[A279827(A160700(n))]`
-/

namespace A283586.P4177178404583157852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279827 (A160700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283586.P4177178404583157852

/-! ## A283586.P12422438408873677396

`record[A279827(A346511(n))]`
-/

namespace A283586.P12422438408873677396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279827 (A346511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283586.P12422438408873677396

/-! ## A283586.P7482605589616336201

`record[gcd(A210718(n), A279827(n))]`
-/

namespace A283586.P7482605589616336201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210718 n) (A279827 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283586.P7482605589616336201

/-! ## A283586.P16131455643941226489

`A007088(A126646(n+1)-A283047(n+1))`
-/

namespace A283586.P16131455643941226489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A283047 (n + 1)).toNat

end

end A283586.P16131455643941226489

/-!
# A283587: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A283587, there is no canonical definition to state claims against.
-/

/-! ## A283587.P10642812179632049501

`A052125(A279828(n+1))`
-/

namespace A283587.P10642812179632049501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A279828 (n + 1)).toNat

end

end A283587.P10642812179632049501

/-! ## A283587.P4706364487302037524

`A302792(or(2, A279828(n+1)))`
-/

namespace A283587.P4706364487302037524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (Int.lor 2 (A279828 (n + 1))).toNat

end

end A283587.P4706364487302037524

/-! ## A283587.P7651711341765868418

`record[A000265(A279828(A007953(n)))]`
-/

namespace A283587.P7651711341765868418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A279828 (A007953 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283587.P7651711341765868418

/-! ## A283587.P8001044319021846481

`record[A000265(A279828(A025581(n)))]`
-/

namespace A283587.P8001044319021846481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A279828 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283587.P8001044319021846481

/-! ## A283587.P7628354550291178085

`record[A000265(A279828(A059253(n)))]`
-/

namespace A283587.P7628354550291178085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A279828 (A059253 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283587.P7628354550291178085

/-!
# A283588: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A283588, there is no canonical definition to state claims against.
-/

/-! ## A283588.P12635554833281924730

`record[A279829(A160700(n))]`
-/

namespace A283588.P12635554833281924730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279829 (A160700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283588.P12635554833281924730

/-! ## A283588.P7156565262564059825

`record[A279829(A346511(n))]`
-/

namespace A283588.P7156565262564059825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279829 (A346511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283588.P7156565262564059825

/-! ## A283588.P18238581513629290426

`record[gcd(A279829(n), A326463(n))]`
-/

namespace A283588.P18238581513629290426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A279829 n) (A326463 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283588.P18238581513629290426

/-! ## A283588.P8437087529341259234

`A279829(n+1)%A014486(A279811(n))`
-/

namespace A283588.P8437087529341259234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279829 (n + 1)) (A014486 (A279811 n).toNat)

end

end A283588.P8437087529341259234

/-! ## A283588.P16955571662323580636

`record[A279829(n)/A279829(A326463(n)²)]`
-/

namespace A283588.P16955571662323580636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279829 n : ℚ) / (A279829 (A326463 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283588.P16955571662323580636

/-!
# A283589: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A283589, there is no canonical definition to state claims against.
-/

/-! ## A283589.P14596580973112938060

`A284403(n)-floor(atan(n/2))`
-/

namespace A283589.P14596580973112938060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284403 n - ⌊Real.arctan ((n : ℚ) / 2 : ℝ)⌋

end

end A283589.P14596580973112938060

/-! ## A283589.P12638014555058596116

`A284403(n)-A130543(n)`
-/

namespace A283589.P12638014555058596116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284403 n - A130543 n

end

end A283589.P12638014555058596116

/-! ## A283589.P11333152706759410253

`and(-A329683(n), A284403(n))`
-/

namespace A283589.P11333152706759410253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A329683 n) (A284403 n)

end

end A283589.P11333152706759410253

/-! ## A283589.P12867936093732381849

`A284403(n)-char[A098550(n+4)]`
-/

namespace A283589.P12867936093732381849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284403 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283589.P12867936093732381849

/-! ## A283589.P410692966217169147

`xor(A130543(A007918(n)), A284403(n))`
-/

namespace A283589.P410692966217169147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 (A007918 n).toNat) (A284403 n)

end

end A283589.P410692966217169147

/-! ## A283589.P3334473603983450746

`xor(A130543(A028310(n)), A284403(n))`
-/

namespace A283589.P3334473603983450746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 (A028310 n).toNat) (A284403 n)

end

end A283589.P3334473603983450746

/-! ## A283589.P8687874326013148756

`A283591(n)+A284403(n)-A283523(n)`
-/

namespace A283589.P8687874326013148756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283591 n + (A284403 n - A283523 n)

end

end A283589.P8687874326013148756

/-! ## A283589.P9770217748597184805

`A284403(n)+A130543(n)*A260196(n)`
-/

namespace A283589.P9770217748597184805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284403 n + A130543 n * A260196 n

end

end A283589.P9770217748597184805

/-! ## A283589.P5461771869810259015

`xor(A130543(A131209(n)), A284403(n))`
-/

namespace A283589.P5461771869810259015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 (A131209 n).toNat) (A284403 n)

end

end A283589.P5461771869810259015

/-!
# A283590: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A283590, there is no canonical definition to state claims against.
-/

/-! ## A283590.P11746430959741995187

`lcm(10, A283589(n))/10`
-/

namespace A283590.P11746430959741995187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 10 (A283589 n) : ℚ) / 10

end

end A283590.P11746430959741995187

/-! ## A283590.P5273269884418932385

`A007088(A283592(n))`
-/

namespace A283590.P5273269884418932385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283592 n).toNat

end

end A283590.P5273269884418932385

/-! ## A283590.P7397381201875451991

`A007088(xor(2^n-1, A034188(n²)))`
-/

namespace A283590.P7397381201875451991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor ((2 ^ n : ℤ) - 1) (A034188 (n ^ 2))).toNat

end

end A283590.P7397381201875451991

/-! ## A283590.P4072560989225502045

`A007088(A283591(n)/A329683(n))`
-/

namespace A283590.P4072560989225502045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A283591 n : ℚ) / (A329683 n : ℚ))).toNat

end

end A283590.P4072560989225502045

/-! ## A283590.P1496009183658708617

`A007088(A336819(n+1)%A042950(n))`
-/

namespace A283590.P1496009183658708617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A336819 (n + 1)) (A042950 n)).toNat

end

end A283590.P1496009183658708617

/-!
# A283591: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A283591, the canonical program `A283591.P9981049179779450697` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283591 has offset 0).

The definition of A283591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283591.P11379961674301328229

`∑[ogf((1-3x+7x^2-x^3-2x^4)/(1-2x))]`
-/

namespace A283591.P11379961674301328229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 7, -1, -2] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283591.P11379961674301328229

namespace A283591

/-- `∑[ogf((1-3x+7x^2-x^3-2x^4)/(1-2x))]` -/
def P11379961674301328229.Spec : Prop :=
  ∀ n, P11379961674301328229.a n = A283591 n

end A283591

/-! ## A283591.P7625063285329479440

`2*or(3, a(n-1))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283591.P7625063285329479440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  2 * Nat.lor 3 (a (n - 1))

end

end A283591.P7625063285329479440

namespace A283591

/-- `2*or(3, a(n-1))` -/
def P7625063285329479440.Spec : Prop :=
  ∀ n, (P7625063285329479440.a n : ℤ) = A283591 n

end A283591

/-! ## A283591.P12054199116463495128

`2^(n+1)-2%a(n-1)` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283591.P12054199116463495128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  (2 ^ (n + 1) : ℤ) - Int.tmod 2 (a (n - 1))

end

end A283591.P12054199116463495128

namespace A283591

/-- `2^(n+1)-2%a(n-1)` -/
def P12054199116463495128.Spec : Prop :=
  ∀ n, P12054199116463495128.a n = A283591 n

end A283591

/-! ## A283591.P8442026438505148070

`2*A255047(n)-C(2, n)`
-/

namespace A283591.P8442026438505148070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255047 n - (Nat.choose 2 n : ℤ)

end

end A283591.P8442026438505148070

namespace A283591

/-- `2*A255047(n)-C(2, n)` -/
def P8442026438505148070.Spec : Prop :=
  ∀ n, P8442026438505148070.a n = A283591 n

end A283591

/-! ## A283591.P8553498753405372500

`(2-C(2, n))*A283592(n)`
-/

namespace A283591.P8553498753405372500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 n : ℤ)) * A283592 n

end

end A283591.P8553498753405372500

namespace A283591

/-- `(2-C(2, n))*A283592(n)` -/
def P8553498753405372500.Spec : Prop :=
  ∀ n, P8553498753405372500.a n = A283591 n

end A283591

/-! ## A283591.P4669410679411396285

`A283523(n)-A130543(n)`
-/

namespace A283591.P4669410679411396285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283523 n - A130543 n

end

end A283591.P4669410679411396285

namespace A283591

/-- `A283523(n)-A130543(n)` -/
def P4669410679411396285.Spec : Prop :=
  ∀ n, P4669410679411396285.a n = A283591 n

end A283591

/-! ## A283591.P1942164737549034049

`A283592(n)*A329683(n)`
-/

namespace A283591.P1942164737549034049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283592 n * A329683 n

end

end A283591.P1942164737549034049

namespace A283591

/-- `A283592(n)*A329683(n)` -/
def P1942164737549034049.Spec : Prop :=
  ∀ n, P1942164737549034049.a n = A283591 n

end A283591

/-! ## A283591.P1856291568778871495

`and(A290194(n)+A134451(n), A283523(n))`
-/

namespace A283591.P1856291568778871495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290194 n + A134451 n) (A283523 n)

end

end A283591.P1856291568778871495

namespace A283591

/-- `and(A290194(n)+A134451(n), A283523(n))` -/
def P1856291568778871495.Spec : Prop :=
  ∀ n, P1856291568778871495.a n = A283591 n

end A283591

/-! ## A283591.P9981049179779450697

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=14, a(4)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283591

/-- `3*a(n-1)-2*a(n-2)` -/
def P9981049179779450697.Spec : Prop :=
  ∀ n, P9981049179779450697.a n = A283591 n

theorem P9981049179779450697.correct : P9981049179779450697.Spec := by
  intro n
  simp only [A283591]

end A283591

/-! ## A283591.P9019125242931074413

`A336819(n+1)%A048578(n)`
-/

namespace A283591.P9019125242931074413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336819 (n + 1)) (A048578 n)

end

end A283591.P9019125242931074413

namespace A283591

/-- `A336819(n+1)%A048578(n)` -/
def P9019125242931074413.Spec : Prop :=
  ∀ n, P9019125242931074413.a n = A283591 n

end A283591

/-! ## A283591.P17188093302303263963

`record[A283523(n)]%Δ[A083706(n)]`
-/

namespace A283591.P17188093302303263963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A283591.P17188093302303263963

namespace A283591

/-- `record[A283523(n)]%Δ[A083706(n)]` -/
def P17188093302303263963.Spec : Prop :=
  ∀ n, P17188093302303263963.a n = A283591 n

end A283591

/-! ## A283591.P11673258487421816572

`and(A283523(n+1)-1, A283523(n))`
-/

namespace A283591.P11673258487421816572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283523 (n + 1) - 1) (A283523 n)

end

end A283591.P11673258487421816572

namespace A283591

/-- `and(A283523(n+1)-1, A283523(n))` -/
def P11673258487421816572.Spec : Prop :=
  ∀ n, P11673258487421816572.a n = A283591 n

end A283591

/-! ## A283591.P5236684595199011955

`A151821(n+1)-A091453((n+1)²+n)`
-/

namespace A283591.P5236684595199011955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) - A091453 ((n + 1) ^ 2 + n)

end

end A283591.P5236684595199011955

namespace A283591

/-- `A151821(n+1)-A091453((n+1)²+n)` -/
def P5236684595199011955.Spec : Prop :=
  ∀ n, P5236684595199011955.a n = A283591 n

end A283591

/-!
# A283592: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A283592, the canonical program `A283592.P5459816803929527029` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283592 has offset 0).

The definition of A283592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283592.P5459816803929527029

`2*a(n-1)+1` with `a(0)=1, a(1)=0, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A283592

/-- `2*a(n-1)+1` -/
def P5459816803929527029.Spec : Prop :=
  ∀ n, (P5459816803929527029.a n : ℤ) = A283592 n

theorem P5459816803929527029.correct : P5459816803929527029.Spec := by
  intro n
  simp only [A283592]

end A283592

/-! ## A283592.P13000370323848548188

`ogf((1-2x+4x^2-x^3-4x^4+4x^5)/(1-2x-x^2+2x^3))`
-/

namespace A283592.P13000370323848548188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -1, -4, 4] [1, -2, -1, 2] n

end

end A283592.P13000370323848548188

namespace A283592

/-- `ogf((1-2x+4x^2-x^3-4x^4+4x^5)/(1-2x-x^2+2x^3))` -/
def P13000370323848548188.Spec : Prop :=
  ∀ n, P13000370323848548188.a n = A283592 n

end A283592

/-! ## A283592.P14586775829721946162

`2^n-a(n-1)%2` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283592.P14586775829721946162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  (2 ^ n : ℤ) - Int.tmod (a (n - 1)) 2

end

end A283592.P14586775829721946162

namespace A283592

/-- `2^n-a(n-1)%2` -/
def P14586775829721946162.Spec : Prop :=
  ∀ n, P14586775829721946162.a n = A283592 n

end A283592

/-! ## A283592.P11139032622086296001

`2^n-gcd(2, a(n-1))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283592.P11139032622086296001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  (2 ^ n : ℤ) - (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A283592.P11139032622086296001

namespace A283592

/-- `2^n-gcd(2, a(n-1))` -/
def P11139032622086296001.Spec : Prop :=
  ∀ n, P11139032622086296001.a n = A283592 n

end A283592

/-! ## A283592.P9793862921060168637

`or(a(n-1)+1, a(n-1))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283592.P9793862921060168637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  Nat.lor (a (n - 1) + 1) (a (n - 1))

end

end A283592.P9793862921060168637

namespace A283592

/-- `or(a(n-1)+1, a(n-1))` -/
def P9793862921060168637.Spec : Prop :=
  ∀ n, (P9793862921060168637.a n : ℤ) = A283592 n

end A283592

/-! ## A283592.P4530034366208026316

`a(n-1)+a(n-1)+1` with `a(0)=1, a(1)=0, a(2)=5, a(3)=7`
-/

namespace A283592.P4530034366208026316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5, 7] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A283592.P4530034366208026316

namespace A283592

/-- `a(n-1)+a(n-1)+1` -/
def P4530034366208026316.Spec : Prop :=
  ∀ n, (P4530034366208026316.a n : ℤ) = A283592 n

theorem P4530034366208026316.correct : P4530034366208026316.Spec := by
  intro n
  simp only [A283592, Nat.add_sub_cancel, A283592.P4530034366208026316.a, A283592.P5459816803929527029.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A283592

/-! ## A283592.P4651049642183511596

`or(or(n, a(n-1)), 2^(n-1))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283592.P4651049642183511596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  Int.lor (Int.lor (n : ℤ) (a (n - 1))) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A283592.P4651049642183511596

namespace A283592

/-- `or(or(n, a(n-1)), 2^(n-1))` -/
def P4651049642183511596.Spec : Prop :=
  ∀ n, P4651049642183511596.a n = A283592 n

end A283592

/-! ## A283592.P1744150647367208655

`or(a(n-1), A000225(n))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A283592.P1744150647367208655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  Int.lor (a (n - 1)) (A000225 n)

end

end A283592.P1744150647367208655

namespace A283592

/-- `or(a(n-1), A000225(n))` -/
def P1744150647367208655.Spec : Prop :=
  ∀ n, P1744150647367208655.a n = A283592 n

end A283592

/-! ## A283592.P16656088045805687960

`xor(A186685(n+1), A255047(n))`
-/

namespace A283592.P16656088045805687960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186685 (n + 1)) (A255047 n)

end

end A283592.P16656088045805687960

namespace A283592

/-- `xor(A186685(n+1), A255047(n))` -/
def P16656088045805687960.Spec : Prop :=
  ∀ n, P16656088045805687960.a n = A283592 n

end A283592

/-! ## A283592.P9319412430516716307

`A283591(n)/A329683(n)`
-/

namespace A283592.P9319412430516716307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283591 n : ℚ) / (A329683 n : ℚ)

end

end A283592.P9319412430516716307

namespace A283592

/-- `A283591(n)/A329683(n)` -/
def P9319412430516716307.Spec : Prop :=
  ∀ n, P9319412430516716307.a n = (A283592 n : ℚ)

end A283592

/-! ## A283592.P2301212405189787877

`A336819(n+1)%A042950(n)`
-/

namespace A283592.P2301212405189787877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336819 (n + 1)) (A042950 n)

end

end A283592.P2301212405189787877

namespace A283592

/-- `A336819(n+1)%A042950(n)` -/
def P2301212405189787877.Spec : Prop :=
  ∀ n, P2301212405189787877.a n = A283592 n

end A283592

/-! ## A283592.P4639619490983032389

`and(A290074(n)²-2, A284405(n))`
-/

namespace A283592.P4639619490983032389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290074 n ^ 2 - 2) (A284405 n)

end

end A283592.P4639619490983032389

namespace A283592

/-- `and(A290074(n)²-2, A284405(n))` -/
def P4639619490983032389.Spec : Prop :=
  ∀ n, P4639619490983032389.a n = A283592 n

end A283592

/-!
# A283594: Numbers k such that k![12]+2 is prime, where k![12] is the twelve-fold multifactorial.

The programs for A283594, there is no canonical definition to state claims against.
-/

/-! ## A283594.P451622733865705561

`p?[A327401(2*(n+1))+n+1]-2`
-/

namespace A283594.P451622733865705561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327401 (2 * (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A283594.P451622733865705561

/-! ## A283594.P6570165624587806955

`record[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)/A340102(2*n+1)]`
-/

namespace A283594.P6570165624587806955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1) / (A340102 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283594.P6570165624587806955

/-! ## A283594.P1535986246206498815

`A299956(A044913(n+1))-2`
-/

namespace A283594.P1535986246206498815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (A044913 (n + 1)).toNat - 2

end

end A283594.P1535986246206498815

/-! ## A283594.P18035023023625182398

`record[A000010(n+1)-A326029(2*n+3)]`
-/

namespace A283594.P18035023023625182398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A326029 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283594.P18035023023625182398

/-! ## A283594.P13726657282150466725

`A040976(lt[A323092(n), A377990(n+1)])`
-/

namespace A283594.P13726657282150466725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283594.P13726657282150466725

/-!
# A283595: Triangle read by rows: T(n,k) is the number of Motzkin prefixes (i.e., left factors of Motzkin paths) of length n and height k.

The programs for A283595, there is no canonical definition to state claims against.
-/

/-! ## A283595.P11247810370619567269

`∑{d}[A145905(n), A003963(A000196(#²))]`
-/

namespace A283595.P11247810370619567269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 (A000196 (d ^ 2)).toNat

end

end A283595.P11247810370619567269

/-! ## A283595.P10349554425411482807

`A121300(n+1)+A016389(A086645(n))`
-/

namespace A283595.P10349554425411482807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121300 (n + 1) + A016389 (A086645 n).toNat

end

end A283595.P10349554425411482807

/-! ## A283595.P353266298429523919

`A179745(n+1)+A016389(A086645(n))`
-/

namespace A283595.P353266298429523919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (n + 1) + A016389 (A086645 n).toNat

end

end A283595.P353266298429523919

/-! ## A283595.P2450524484055832906

`A185254(A229243(n))+A179745(n+1)`
-/

namespace A283595.P2450524484055832906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A229243 n).toNat + A179745 (n + 1)

end

end A283595.P2450524484055832906

/-! ## A283595.P11178809150104286488

`A003056(A075497(n+1)^A051168(n))`
-/

namespace A283595.P11178809150104286488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A075497 (n + 1) : ℚ) ^ (A051168 n : ℤ))).toNat

end

end A283595.P11178809150104286488

/-!
# A283597: Numbers n such that both 6n+1 and 6n+7 are semiprimes.

The programs for A283597, the canonical program `A283597.P3510269681161299012` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283597 has offset 1).

The definition of A283597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283597.P3510269681161299012

`∩[A112775(n+1)-1, A112775(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A283597

/-- `∩[A112775(n+1)-1, A112775(n+1)]` -/
def P3510269681161299012.Spec : Prop :=
  ∀ n, (P3510269681161299012.a n : ℤ) = A283597 (n + 1)

theorem P3510269681161299012.correct : P3510269681161299012.Spec := by
  intro n
  simp only [A283597, Nat.add_sub_cancel]

end A283597

/-!
# A283598: Numbers k such that all three of 6*k+1, 6*(k+1)+1, and 6*(k+2)+1 are semiprimes.

The programs for A283598, the canonical program `A283598.P301866308681776955` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283598 has offset 1).

The definition of A283598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283598.P6334824727403872136

`∩[A283597(n+1)-1, A283597(n+1)]`
-/

namespace A283598.P6334824727403872136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283597 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283598.P6334824727403872136

namespace A283598

/-- `∩[A283597(n+1)-1, A283597(n+1)]` -/
def P6334824727403872136.Spec : Prop :=
  ∀ n, (P6334824727403872136.a n : ℤ) = A283598 (n + 1)

end A283598

/-! ## A283598.P301866308681776955

`A283597(eq[1, A283597(n+2)-A283597(n+1)]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A283598

/-- `A283597(eq[1, A283597(n+2)-A283597(n+1)]+1)` -/
def P301866308681776955.Spec : Prop :=
  ∀ n, P301866308681776955.a n = A283598 (n + 1)

theorem P301866308681776955.correct : P301866308681776955.Spec := by
  intro n
  simp only [A283598, Nat.add_sub_cancel]

end A283598

/-! ## A283598.P1911684986374968663

`∩[A283597(n+1), A023443(A283597(n+1))]`
-/

namespace A283598.P1911684986374968663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A283597 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283598.P1911684986374968663

namespace A283598

/-- `∩[A283597(n+1), A023443(A283597(n+1))]` -/
def P1911684986374968663.Spec : Prop :=
  ∀ n, (P1911684986374968663.a n : ℤ) = A283598 (n + 1)

end A283598

/-!
# A283599: Numbers k that divide sigma(k^2) - 1.

The programs for A283599, the canonical program `A283599.P7289157399895568468` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283599 has offset 1).

The definition of A283599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283599.P7289157399895568468

`record[gcd(n+1, 1-A065764(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A283599

/-- `record[gcd(n+1, 1-A065764(n+1))]` -/
def P7289157399895568468.Spec : Prop :=
  ∀ n, (P7289157399895568468.a n : ℤ) = A283599 (n + 1)

theorem P7289157399895568468.correct : P7289157399895568468.Spec := by
  intro n
  simp only [A283599, Nat.add_sub_cancel]

end A283599

/-! ## A283599.P4381077633919655307

`record[gcd(n+1, A326126((n+1)²))]`
-/

namespace A283599.P4381077633919655307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326126 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283599.P4381077633919655307

namespace A283599

/-- `record[gcd(n+1, A326126((n+1)²))]` -/
def P4381077633919655307.Spec : Prop :=
  ∀ n, (P4381077633919655307.a n : ℤ) = A283599 (n + 1)

end A283599

/-! ## A283599.P13447986432592324156

`record[A028310(gcd(n, A039653(n²)))]`
-/

namespace A283599.P13447986432592324156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A039653 (n ^ 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283599.P13447986432592324156

namespace A283599

/-- `record[A028310(gcd(n, A039653(n²)))]` -/
def P13447986432592324156.Spec : Prop :=
  ∀ n, P13447986432592324156.a n = A283599 (n + 1)

end A283599

/-! ## A283599.P11330908798294051233

`record[gcd(A000027(n+1), A039653((n+1)²))]`
-/

namespace A283599.P11330908798294051233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A039653 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283599.P11330908798294051233

namespace A283599

/-- `record[gcd(A000027(n+1), A039653((n+1)²))]` -/
def P11330908798294051233.Spec : Prop :=
  ∀ n, (P11330908798294051233.a n : ℤ) = A283599 (n + 1)

end A283599

/-! ## A283599.P2370342437445651394

`record[gcd(A048050((n+1)²), A175781(n+1))]`
-/

namespace A283599.P2370342437445651394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048050 ((n + 1) ^ 2)) (A175781 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283599.P2370342437445651394

namespace A283599

/-- `record[gcd(A048050((n+1)²), A175781(n+1))]` -/
def P2370342437445651394.Spec : Prop :=
  ∀ n, (P2370342437445651394.a n : ℤ) = A283599 (n + 1)

end A283599

