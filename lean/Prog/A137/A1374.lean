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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A137400: a(n) = A128941(n) + 2.

The programs for A137400, there is no canonical definition to state claims against.
-/

/-! ## A137400.P18402070015021120800

`A128941(n)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137400.P18402070015021120800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128941 n + 2

end

end A137400.P18402070015021120800

/-! ## A137400.P9609305029545789878

`A106513(A005408((n+3)²))`
-/

namespace A137400.P9609305029545789878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A005408 ((n + 3) ^ 2)).toNat

end

end A137400.P9609305029545789878

/-! ## A137400.P4430414617316098689

`A106513(A267872((n+3)²))`
-/

namespace A137400.P4430414617316098689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A267872 ((n + 3) ^ 2)).toNat

end

end A137400.P4430414617316098689

/-! ## A137400.P1797285908639880545

`A106513(A268581(n+1)+4)`
-/

namespace A137400.P1797285908639880545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A268581 (n + 1) + 4).toNat

end

end A137400.P1797285908639880545

/-! ## A137400.P14884174666056062584

`3-(A152847(n)-A128941(n))`
-/

namespace A137400.P14884174666056062584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A152847 n - A128941 n)

end

end A137400.P14884174666056062584

/-!
# A137401: a(n) is the number of ordered solutions (x,y,z) to x^3 + y^3 == z^3 mod n with 1 <= x,y,z <= n-1.

The programs for A137401, there is no canonical definition to state claims against.
-/

/-! ## A137401.P17361517799670056550

`A063454(n+1)-3*A087786(n+1)+3*A000189(n+1)-1`
-/

namespace A137401.P17361517799670056550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063454 (n + 1) - 3 * A087786 (n + 1) + 3 * A000189 (n + 1) - 1

end

end A137401.P17361517799670056550

/-!
# A137402: a(n) = Sum_{k=0..n} binomial(floor(n-2k/3), k).

The programs for A137402, the canonical program `A137402.P15989300082301088798` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137402 has offset 0).

The definition of A137402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137402.P15989300082301088798

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137402

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-5)` -/
def P15989300082301088798.Spec : Prop :=
  ∀ n, P15989300082301088798.a n = A137402 n

theorem P15989300082301088798.correct : P15989300082301088798.Spec := by
  intro n
  simp only [A137402]

end A137402

/-! ## A137402.P11017251422017942582

`A226503(3*n+1)`
-/

namespace A137402.P11017251422017942582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (3 * n + 1)

end

end A137402.P11017251422017942582

namespace A137402

/-- `A226503(3*n+1)` -/
def P11017251422017942582.Spec : Prop :=
  ∀ n, P11017251422017942582.a n = A137402 n

end A137402

/-! ## A137402.P15030596180424888176

`Δ[A226503(A008585(n+1))]`
-/

namespace A137402.P15030596180424888176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A008585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137402.P15030596180424888176

namespace A137402

/-- `Δ[A226503(A008585(n+1))]` -/
def P15030596180424888176.Spec : Prop :=
  ∀ n, P15030596180424888176.a n = A137402 n

end A137402

/-! ## A137402.P5035668117364679258

`Δ[A226503(A005408(n+1)+n)]`
-/

namespace A137402.P5035668117364679258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A005408 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137402.P5035668117364679258

namespace A137402

/-- `Δ[A226503(A005408(n+1)+n)]` -/
def P5035668117364679258.Spec : Prop :=
  ∀ n, P5035668117364679258.a n = A137402 n

end A137402

/-! ## A137402.P13800089554015422473

`A137356(n+1)+Δ[Δ[A137356(n+1)]]`
-/

namespace A137402.P13800089554015422473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137356 (n + 1) + (f1 (n + 1) - f1 n)

end

end A137402.P13800089554015422473

namespace A137402

/-- `A137356(n+1)+Δ[Δ[A137356(n+1)]]` -/
def P13800089554015422473.Spec : Prop :=
  ∀ n, P13800089554015422473.a n = A137402 n

end A137402

/-! ## A137402.P16066926805077772371

`A226503(A016777(n))%A056469(n)`
-/

namespace A137402.P16066926805077772371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226503 (A016777 n).toNat) (A056469 n)

end

end A137402.P16066926805077772371

namespace A137402

/-- `A226503(A016777(n))%A056469(n)` -/
def P16066926805077772371.Spec : Prop :=
  ∀ n, P16066926805077772371.a n = A137402 n

end A137402

/-!
# A137407: Numbers that cannot be the length of the long leg in any primitive Pythagorean triple.

The programs for A137407, there is no canonical definition to state claims against.
-/

/-! ## A137407.P9294810395827600782

`comp[A081872(n+1)-1]+1`
-/

namespace A137407.P9294810395827600782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137407.P9294810395827600782

/-! ## A137407.P8883424274684074021

`eq[0, A024360(n+1)]+1`
-/

namespace A137407.P8883424274684074021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137407.P8883424274684074021

/-! ## A137407.P3508972630012449230

`lt[n*A024360(A028310(n)), n]`
-/

namespace A137407.P3508972630012449230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024360 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A137407.P3508972630012449230

/-! ## A137407.P6479993942172046643

`eq[1, A007936(Δ[A156684(n+1)]+1)]+1`
-/

namespace A137407.P6479993942172046643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137407.P6479993942172046643

/-! ## A137407.P14092161175860098770

`eq[1, A047533(Δ[A156684(n+1)]+1)]+1`
-/

namespace A137407.P14092161175860098770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047533 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137407.P14092161175860098770

/-! ## A137407.P13576103943059685265

`eq[1, A249571(Δ[A156684(n+1)]+1)]+1`
-/

namespace A137407.P13576103943059685265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137407.P13576103943059685265

/-! ## A137407.P8254171436566993163

`eq[4, A001358(Δ[A156684(n+1)]+1)]+1`
-/

namespace A137407.P8254171436566993163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137407.P8254171436566993163

/-!
# A137409: Numbers that cannot be the value of 'C' in a primitive Pythagorean triple (A < B; A^2 + B^2 = C^2).

The programs for A137409, the canonical program `A137409.P1497138613230208861` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137409 has offset 1).

The definition of A137409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137409.P6737683723496984093

`comp[A008846(n+1)-1]+1`
-/

namespace A137409.P6737683723496984093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137409.P6737683723496984093

namespace A137409

/-- `comp[A008846(n+1)-1]+1` -/
def P6737683723496984093.Spec : Prop :=
  ∀ n, (P6737683723496984093.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P2168701138914190912

`comp[A020882(n+1)-1]+1`
-/

namespace A137409.P2168701138914190912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137409.P2168701138914190912

namespace A137409

/-- `comp[A020882(n+1)-1]+1` -/
def P2168701138914190912.Spec : Prop :=
  ∀ n, (P2168701138914190912.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P8221899999548334019

`comp[A094194(n+1)-1]+1`
-/

namespace A137409.P8221899999548334019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094194 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137409.P8221899999548334019

namespace A137409

/-- `comp[A094194(n+1)-1]+1` -/
def P8221899999548334019.Spec : Prop :=
  ∀ n, (P8221899999548334019.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P4767853069802041614

`∑[char[A004613(n+2)-(n+1)]]+n+1`
-/

namespace A137409.P4767853069802041614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A137409.P4767853069802041614

namespace A137409

/-- `∑[char[A004613(n+2)-(n+1)]]+n+1` -/
def P4767853069802041614.Spec : Prop :=
  ∀ n, (P4767853069802041614.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P551776833692286056

`xor(xor(a(n-1), comp[A004613(n+1)]), a(n-1))` with `a(0)=1`
-/

namespace A137409.P551776833692286056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.xor (a (n - 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (a (n - 1))

end

end A137409.P551776833692286056

namespace A137409

/-- `xor(xor(a(n-1), comp[A004613(n+1)]), a(n-1))` -/
def P551776833692286056.Spec : Prop :=
  ∀ n, (P551776833692286056.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P10587822281371186820

`∪[A187811(n+1), A004277(n)]`
-/

namespace A137409.P10587822281371186820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137409.P10587822281371186820

namespace A137409

/-- `∪[A187811(n+1), A004277(n)]` -/
def P10587822281371186820.Spec : Prop :=
  ∀ n, (P10587822281371186820.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P2987605351066786790

`∪[A192450(n+1), A004277(n)]`
-/

namespace A137409.P2987605351066786790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137409.P2987605351066786790

namespace A137409

/-- `∪[A192450(n+1), A004277(n)]` -/
def P2987605351066786790.Spec : Prop :=
  ∀ n, (P2987605351066786790.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P1584943498773419079

`∪[A192450(n+1), A053438(n)]`
-/

namespace A137409.P1584943498773419079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137409.P1584943498773419079

namespace A137409

/-- `∪[A192450(n+1), A053438(n)]` -/
def P1584943498773419079.Spec : Prop :=
  ∀ n, (P1584943498773419079.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P4100933654348387683

`comp[A020882(n+1)%A020882(n+2)]`
-/

namespace A137409.P4100933654348387683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020882 (n + 1)) (A020882 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A137409.P4100933654348387683

namespace A137409

/-- `comp[A020882(n+1)%A020882(n+2)]` -/
def P4100933654348387683.Spec : Prop :=
  ∀ n, (P4100933654348387683.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P3370279716457207957

`eq[0, A024362(n+1)]+1`
-/

namespace A137409.P3370279716457207957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137409.P3370279716457207957

namespace A137409

/-- `eq[0, A024362(n+1)]+1` -/
def P3370279716457207957.Spec : Prop :=
  ∀ n, (P3370279716457207957.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P6130814039661074889

`lt[A350872(n+1), 2]+1`
-/

namespace A137409.P6130814039661074889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A137409.P6130814039661074889

namespace A137409

/-- `lt[A350872(n+1), 2]+1` -/
def P6130814039661074889.Spec : Prop :=
  ∀ n, (P6130814039661074889.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P8742781811818094273

`eq[A046080(n+1), A328712(n+1)]+1`
-/

namespace A137409.P8742781811818094273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137409.P8742781811818094273

namespace A137409

/-- `eq[A046080(n+1), A328712(n+1)]+1` -/
def P8742781811818094273.Spec : Prop :=
  ∀ n, (P8742781811818094273.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P12261843068080177913

`lt[A024362(n-A255131(a(n-1))), 1]` with `a(0)=1`
-/

namespace A137409.P12261843068080177913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A024362 ((n : ℤ) - A255131 (f1 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A137409.P12261843068080177913

namespace A137409

/-- `lt[A024362(n-A255131(a(n-1))), 1]` -/
def P12261843068080177913.Spec : Prop :=
  ∀ n, (P12261843068080177913.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P13463666993965972449

`lt[n*char[A198440(n+1)], n]`
-/

namespace A137409.P13463666993965972449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A137409.P13463666993965972449

namespace A137409

/-- `lt[n*char[A198440(n+1)], n]` -/
def P13463666993965972449.Spec : Prop :=
  ∀ n, (P13463666993965972449.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P14488005230090328546

`lt[char[A269360(n+1)], A170819(n+1)]+1`
-/

namespace A137409.P14488005230090328546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A137409.P14488005230090328546

namespace A137409

/-- `lt[char[A269360(n+1)], A170819(n+1)]+1` -/
def P14488005230090328546.Spec : Prop :=
  ∀ n, (P14488005230090328546.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P1194497408702954508

`record[(n+1)/A088696(C(A170818(n+1), n)+1)]`
-/

namespace A137409.P1194497408702954508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A088696 (Nat.choose (A170818 (n + 1)).toNat n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137409.P1194497408702954508

namespace A137409

/-- `record[(n+1)/A088696(C(A170818(n+1), n)+1)]` -/
def P1194497408702954508.Spec : Prop :=
  ∀ n, P1194497408702954508.a n = (A137409 (n + 1) : ℚ)

end A137409

/-! ## A137409.P1497138613230208861

`comp[A222946(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A137409

/-- `comp[A222946(n+2)]` -/
def P1497138613230208861.Spec : Prop :=
  ∀ n, (P1497138613230208861.a n : ℤ) = A137409 (n + 1)

theorem P1497138613230208861.correct : P1497138613230208861.Spec := by
  intro n
  simp only [A137409, Nat.add_sub_cancel]

end A137409

/-! ## A137409.P9740971833350661108

`eq[0, A157228(2*(n+1))]+1`
-/

namespace A137409.P9740971833350661108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137409.P9740971833350661108

namespace A137409

/-- `eq[0, A157228(2*(n+1))]+1` -/
def P9740971833350661108.Spec : Prop :=
  ∀ n, (P9740971833350661108.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P11590101555965030303

`lt[A000089(2*(n+1)), 2]+1`
-/

namespace A137409.P11590101555965030303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A137409.P11590101555965030303

namespace A137409

/-- `lt[A000089(2*(n+1)), 2]+1` -/
def P11590101555965030303.Spec : Prop :=
  ∀ n, (P11590101555965030303.a n : ℤ) = A137409 (n + 1)

end A137409

/-! ## A137409.P16028645943578388734

`eq[A000089(2*(n+1)), A048298(2*n+1)]+1`
-/

namespace A137409.P16028645943578388734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137409.P16028645943578388734

namespace A137409

/-- `eq[A000089(2*(n+1)), A048298(2*n+1)]+1` -/
def P16028645943578388734.Spec : Prop :=
  ∀ n, (P16028645943578388734.a n : ℤ) = A137409 (n + 1)

end A137409

/-!
# A137410: a(n) = (5^n - 3)/2.

The programs for A137410, the canonical program `A137410.P13624639356729944103` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137410 has offset 0).

The definition of A137410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n-3)/2` (program `A137410.P3303531281914361031`, by `A137410.P3303531281914361031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137410.P3303531281914361031

`(5^n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137410.P3303531281914361031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - 3 : ℚ) / 2

end

end A137410.P3303531281914361031

namespace A137410

/-- `(5^n-3)/2` -/
def P3303531281914361031.Spec : Prop :=
  ∀ n, P3303531281914361031.a n = (A137410 n : ℚ)

theorem P3303531281914361031.correct : P3303531281914361031.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137410, Nat.add_sub_cancel, A137410.P3303531281914361031.a, A137410.P13624639356729944103.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137410, Nat.add_sub_cancel, A137410.P3303531281914361031.a, A137410.P13624639356729944103.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A137410

/-! ## A137410.P13624639356729944103

`5*a(n-1)+6` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137410

/-- `5*a(n-1)+6` -/
def P13624639356729944103.Spec : Prop :=
  ∀ n, P13624639356729944103.a n = A137410 n

theorem P13624639356729944103.correct : P13624639356729944103.Spec := by
  intro n
  simp only [A137410]

end A137410

/-! ## A137410.P11079930279344833774

`A024049(n)/2-1`
-/

namespace A137410.P11079930279344833774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024049 n : ℚ) / 2 - 1

end

end A137410.P11079930279344833774

namespace A137410

/-- `A024049(n)/2-1` -/
def P11079930279344833774.Spec : Prop :=
  ∀ n, P11079930279344833774.a n = (A137410 n : ℚ)

theorem P11079930279344833774.correct : P11079930279344833774.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137410, Nat.add_sub_cancel, A137410.P11079930279344833774.a, A137410.P13624639356729944103.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137410, Nat.add_sub_cancel, A137410.P11079930279344833774.a, A137410.P13624639356729944103.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A137410

/-! ## A137410.P5473412463842388044

`ogf((-1+7x)/(1-6x+5x^2))`
-/

namespace A137410.P5473412463842388044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7] [1, -6, 5] n

end

end A137410.P5473412463842388044

namespace A137410

/-- `ogf((-1+7x)/(1-6x+5x^2))` -/
def P5473412463842388044.Spec : Prop :=
  ∀ n, P5473412463842388044.a n = A137410 n

end A137410

/-! ## A137410.P5922894875556807231

`∑[5*a(n-1)]` with `a(0)=-1, a(1)=2`
-/

namespace A137410.P5922894875556807231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137410.P5922894875556807231

namespace A137410

/-- `∑[5*a(n-1)]` -/
def P5922894875556807231.Spec : Prop :=
  ∀ n, P5922894875556807231.a n = A137410 n

end A137410

/-! ## A137410.P7297575039904351755

`lcm(5, a(n-1))+6` with `a(0)=-1, a(1)=1`
-/

namespace A137410.P7297575039904351755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  (Int.lcm 5 (a (n - 1)) + 6 : ℤ)

end

end A137410.P7297575039904351755

namespace A137410

/-- `lcm(5, a(n-1))+6` -/
def P7297575039904351755.Spec : Prop :=
  ∀ n, P7297575039904351755.a n = A137410 n

end A137410

/-! ## A137410.P11518570707422190335

`A034478(n)-2`
-/

namespace A137410.P11518570707422190335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - 2

end

end A137410.P11518570707422190335

namespace A137410

/-- `A034478(n)-2` -/
def P11518570707422190335.Spec : Prop :=
  ∀ n, P11518570707422190335.a n = A137410 n

end A137410

/-! ## A137410.P14022937984990713982

`A132079(n)-3`
-/

namespace A137410.P14022937984990713982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - 3

end

end A137410.P14022937984990713982

namespace A137410

/-- `A132079(n)-3` -/
def P14022937984990713982.Spec : Prop :=
  ∀ n, P14022937984990713982.a n = A137410 n

end A137410

/-! ## A137410.P15071020468409682565

`∑[A020699(n)]-2`
-/

namespace A137410.P15071020468409682565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A137410.P15071020468409682565

namespace A137410

/-- `∑[A020699(n)]-2` -/
def P15071020468409682565.Spec : Prop :=
  ∀ n, P15071020468409682565.a n = A137410 n

end A137410

/-! ## A137410.P9936389067352851043

`Δ[A185055(n)]-1`
-/

namespace A137410.P9936389067352851043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A137410.P9936389067352851043

namespace A137410

/-- `Δ[A185055(n)]-1` -/
def P9936389067352851043.Spec : Prop :=
  ∀ n, P9936389067352851043.a n = A137410 n

end A137410

/-! ## A137410.P2709361769393821975

`A121177(n+1)-1`
-/

namespace A137410.P2709361769393821975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) - 1

end

end A137410.P2709361769393821975

namespace A137410

/-- `A121177(n+1)-1` -/
def P2709361769393821975.Spec : Prop :=
  ∀ n, P2709361769393821975.a n = A137410 n

end A137410

/-! ## A137410.P8134200981410598141

`2*A003463(n)-1`
-/

namespace A137410.P8134200981410598141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - 1

end

end A137410.P8134200981410598141

namespace A137410

/-- `2*A003463(n)-1` -/
def P8134200981410598141.Spec : Prop :=
  ∀ n, P8134200981410598141.a n = A137410 n

end A137410

/-! ## A137410.P2504638355989015339

`A178671(n)/2+1`
-/

namespace A137410.P2504638355989015339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178671 n : ℚ) / 2 + 1

end

end A137410.P2504638355989015339

namespace A137410

/-- `A178671(n)/2+1` -/
def P2504638355989015339.Spec : Prop :=
  ∀ n, P2504638355989015339.a n = (A137410 n : ℚ)

theorem P2504638355989015339.correct : P2504638355989015339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137410, Nat.add_sub_cancel, A137410.P2504638355989015339.a, A137410.P13624639356729944103.a, A178671, A178671.P13912322305136915604.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137410, Nat.add_sub_cancel, A137410.P2504638355989015339.a, A137410.P13624639356729944103.a, A178671, A178671.P13912322305136915604.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A137410

/-! ## A137410.P7538111379674926925

`A034474(n)/2-2`
-/

namespace A137410.P7538111379674926925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / 2 - 2

end

end A137410.P7538111379674926925

namespace A137410

/-- `A034474(n)/2-2` -/
def P7538111379674926925.Spec : Prop :=
  ∀ n, P7538111379674926925.a n = (A137410 n : ℚ)

theorem P7538111379674926925.correct : P7538111379674926925.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137410, Nat.add_sub_cancel, A137410.P7538111379674926925.a, A137410.P13624639356729944103.a, A034474, A034474.P1568972853745923564.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137410, Nat.add_sub_cancel, A137410.P7538111379674926925.a, A137410.P13624639356729944103.a, A034474, A034474.P1568972853745923564.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A137410

/-! ## A137410.P6623994959380590141

`2*A047850(n)-3`
-/

namespace A137410.P6623994959380590141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047850 n - 3

end

end A137410.P6623994959380590141

namespace A137410

/-- `2*A047850(n)-3` -/
def P6623994959380590141.Spec : Prop :=
  ∀ n, P6623994959380590141.a n = A137410 n

end A137410

/-! ## A137410.P9109327521482408692

`A178676(n)/2-4`
-/

namespace A137410.P9109327521482408692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178676 n : ℚ) / 2 - 4

end

end A137410.P9109327521482408692

namespace A137410

/-- `A178676(n)/2-4` -/
def P9109327521482408692.Spec : Prop :=
  ∀ n, P9109327521482408692.a n = (A137410 n : ℚ)

theorem P9109327521482408692.correct : P9109327521482408692.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137410, Nat.add_sub_cancel, A137410.P9109327521482408692.a, A137410.P13624639356729944103.a, A178676, A178676.P7184030861696971418.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137410, Nat.add_sub_cancel, A137410.P9109327521482408692.a, A137410.P13624639356729944103.a, A178676, A178676.P7184030861696971418.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A137410

/-! ## A137410.P4294088853350188129

`or(1, A081340(n)-2)`
-/

namespace A137410.P4294088853350188129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081340 n - 2)

end

end A137410.P4294088853350188129

namespace A137410

/-- `or(1, A081340(n)-2)` -/
def P4294088853350188129.Spec : Prop :=
  ∀ n, P4294088853350188129.a n = A137410 n

end A137410

/-! ## A137410.P10791398649850469197

`A294566(Δ[n²])-2`
-/

namespace A137410.P10791398649850469197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A137410.P10791398649850469197

namespace A137410

/-- `A294566(Δ[n²])-2` -/
def P10791398649850469197.Spec : Prop :=
  ∀ n, P10791398649850469197.a n = A137410 n

end A137410

/-! ## A137410.P2745382811159342663

`floor(A000351(n)/2)-1`
-/

namespace A137410.P2745382811159342663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000351 n : ℚ) / 2⌋ - 1

end

end A137410.P2745382811159342663

namespace A137410

/-- `floor(A000351(n)/2)-1` -/
def P2745382811159342663.Spec : Prop :=
  ∀ n, P2745382811159342663.a n = A137410 n

end A137410

/-! ## A137410.P9192998468573262045

`floor(A103455(n)/2)-1`
-/

namespace A137410.P9192998468573262045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103455 n : ℚ) / 2⌋ - 1

end

end A137410.P9192998468573262045

namespace A137410

/-- `floor(A103455(n)/2)-1` -/
def P9192998468573262045.Spec : Prop :=
  ∀ n, P9192998468573262045.a n = A137410 n

end A137410

/-!
# A137411: Weak Goodstein sequence starting at 11.

The programs for A137411, there is no canonical definition to state claims against.
-/

/-! ## A137411.P1487541725577842278

`A084378(n+2)-A087436(A048143(n))`
-/

namespace A137411.P1487541725577842278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 (n + 2) - A087436 (A048143 n).toNat

end

end A137411.P1487541725577842278

/-!
# A137412: a(1)=0. If a(m) is odd, then a(2^(m-1)+k) = a(k)-1, for all k where 1<=k<=2^(m-1). If a(m) is even, then a(2^(m-1)+k) = a(k)+1, for all k where 1<=k<=2^(m-1).

The programs for A137412, the canonical program `A137412.P15505446152071389337` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137412 has offset 1).

The definition of A137412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137412.P18305430074195551161

`1-A104145(n+1)`
-/

namespace A137412.P18305430074195551161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104145 (n + 1)

end

end A137412.P18305430074195551161

namespace A137412

/-- `1-A104145(n+1)` -/
def P18305430074195551161.Spec : Prop :=
  ∀ n, P18305430074195551161.a n = A137412 (n + 1)

theorem P18305430074195551161.correct : P18305430074195551161.Spec := by
  intro n
  simp only [A137412, Nat.add_sub_cancel, A137412.P18305430074195551161.a, A137412.P15505446152071389337.a, A065359, A065359.P2716114422933254065.a, A104145, A104145.P5989850272366258385.a, A139351, A139351.P2266554670828086265.a, A139352, A139352.P2034447244462371406.a, A000120, A000120.P2816527436160941581.a, A053737, A053737.P2884229603739038868.a, A005187, A005187.P3874015513960485494.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137412

/-! ## A137412.P15505446152071389337

`A065359(xor(60, n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137412

/-- `A065359(xor(60, n))` -/
def P15505446152071389337.Spec : Prop :=
  ∀ n, P15505446152071389337.a n = A137412 (n + 1)

theorem P15505446152071389337.correct : P15505446152071389337.Spec := by
  intro n
  simp only [A137412, Nat.add_sub_cancel]

end A137412

/-! ## A137412.P7726876013258148798

`A000120(xor(22, n))-3`
-/

namespace A137412.P7726876013258148798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor 22 n) - 3

end

end A137412.P7726876013258148798

namespace A137412

/-- `A000120(xor(22, n))-3` -/
def P7726876013258148798.Spec : Prop :=
  ∀ n, P7726876013258148798.a n = A137412 (n + 1)

end A137412

/-! ## A137412.P13734017650308445631

`A000120(A004463(n))-3`
-/

namespace A137412.P13734017650308445631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004463 n).toNat - 3

end

end A137412.P13734017650308445631

namespace A137412

/-- `A000120(A004463(n))-3` -/
def P13734017650308445631.Spec : Prop :=
  ∀ n, P13734017650308445631.a n = A137412 (n + 1)

end A137412

/-! ## A137412.P8326036298798309674

`A131851(A000695(xor(60, n)))`
-/

namespace A137412.P8326036298798309674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A000695 (Nat.xor 60 n)).toNat

end

end A137412.P8326036298798309674

namespace A137412

/-- `A131851(A000695(xor(60, n)))` -/
def P8326036298798309674.Spec : Prop :=
  ∀ n, P8326036298798309674.a n = A137412 (n + 1)

end A137412

/-! ## A137412.P10571307568194151993

`1-∑[A162512(A061393(n))]`
-/

namespace A137412.P10571307568194151993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A061393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137412.P10571307568194151993

namespace A137412

/-- `1-∑[A162512(A061393(n))]` -/
def P10571307568194151993.Spec : Prop :=
  ∀ n, P10571307568194151993.a n = A137412 (n + 1)

end A137412

/-! ## A137412.P8023342850527586420

`A065359(A380009(n))`
-/

namespace A137412.P8023342850527586420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A380009 n).toNat

end

end A137412.P8023342850527586420

namespace A137412

/-- `A065359(A380009(n))` -/
def P8023342850527586420.Spec : Prop :=
  ∀ n, P8023342850527586420.a n = A137412 (n + 1)

end A137412

/-!
# A137413: a(n) = the number of positive integers that are <= n and are coprime to (the sum of the distinct prime divisors of n).

The programs for A137413, there is no canonical definition to state claims against.
-/

/-! ## A137413.P9142005059794949017

`∏{e}[3^(n-floor(n/∏{p}[n+1, #])), #]`
-/

namespace A137413.P9142005059794949017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋ : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A137413.P9142005059794949017

/-! ## A137413.P4375486835213127788

`∏{e}[3^A010848(n+1), #]`
-/

namespace A137413.P4375486835213127788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A010848 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A137413.P4375486835213127788

/-! ## A137413.P3405299943797116780

`A177878(C(n-floor(n/∏{p}[n+1, #]), 2))`
-/

namespace A137413.P3405299943797116780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177878 (Nat.choose ((n : ℤ) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋).toNat 2)

end

end A137413.P3405299943797116780

/-! ## A137413.P3799550642641653289

`∏{e}[A000244(n-floor(n/∏{p}[n+1, #])), #]`
-/

namespace A137413.P3799550642641653289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A137413.P3799550642641653289

/-! ## A137413.P2581885812268983003

`A204987(2^n)-(n+1)/∏{p}[n+1, #]`
-/

namespace A137413.P2581885812268983003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204987 (2 ^ n) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A137413.P2581885812268983003

/-!
# A137414: Number of possible outcomes after n steps of the Zeno gambling process.

The programs for A137414, there is no canonical definition to state claims against.
-/

/-! ## A137414.P5122904454038028293

`A229219(A065979(n+1))`
-/

namespace A137414.P5122904454038028293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A065979 (n + 1)).toNat

end

end A137414.P5122904454038028293

/-! ## A137414.P4743893091358596932

`A161205(A239305(n+1))`
-/

namespace A137414.P4743893091358596932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A239305 (n + 1)).toNat

end

end A137414.P4743893091358596932

/-! ## A137414.P3016529756638945633

`A229219(A238441(n+1))`
-/

namespace A137414.P3016529756638945633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A238441 (n + 1)).toNat

end

end A137414.P3016529756638945633

/-! ## A137414.P11915556996910784560

`(2-C(2, n+2))*A000194(A000293(n))`
-/

namespace A137414.P11915556996910784560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n + 2) : ℤ)) * A000194 (A000293 n).toNat

end

end A137414.P11915556996910784560

/-! ## A137414.P7704967278814137814

`A284359(A000293(n)-A000007(n))`
-/

namespace A137414.P7704967278814137814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A000293 n - A000007 n).toNat

end

end A137414.P7704967278814137814

/-!
# A137415: a(n) is the smallest m such that A000720(m) - A000006(m) = n.

The programs for A137415, there is no canonical definition to state claims against.
-/

/-! ## A137415.P7463755467335346172

`A323578(2*(n+2))%A030153(A343676(n+1))`
-/

namespace A137415.P7463755467335346172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323578 (2 * (n + 2))) (A030153 (A343676 (n + 1)).toNat)

end

end A137415.P7463755467335346172

/-! ## A137415.P8989101969000686565

`A137977(2*(n+2))%A034442(A337462(3*n))`
-/

namespace A137415.P8989101969000686565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137977 (2 * (n + 2))) (A034442 (A337462 (3 * n)).toNat)

end

end A137415.P8989101969000686565

/-!
# A137416: a(n) = smallest nontrivial square (i.e., not a multiple of 10) with exactly n identical adjacent digits.

The programs for A137416, there is no canonical definition to state claims against.
-/

/-! ## A137416.P12640220102346512134

`A167712(n+1)^A000005(A052089(n+1))`
-/

namespace A137416.P12640220102346512134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167712 (n + 1) : ℚ) ^ (A000005 (A052089 (n + 1)).toNat : ℤ)

end

end A137416.P12640220102346512134

/-! ## A137416.P11828659113623155877

`A167712(n+1)^A365348(A002386(n+1))`
-/

namespace A137416.P11828659113623155877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167712 (n + 1) : ℚ) ^ (A365348 (A002386 (n + 1)).toNat : ℤ)

end

end A137416.P11828659113623155877

/-! ## A137416.P7778555886166964695

`A167712(A001104(n+1))*A167712(n+1)`
-/

namespace A137416.P7778555886166964695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167712 (A001104 (n + 1)).toNat * A167712 (n + 1)

end

end A137416.P7778555886166964695

/-! ## A137416.P9552261848964779996

`A167712(n+1)*A167712(A249517(n+2))`
-/

namespace A137416.P9552261848964779996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167712 (n + 1) * A167712 (A249517 (n + 2)).toNat

end

end A137416.P9552261848964779996

/-!
# A137418: Limiting sequence when we start with positive integers (A000027) and at step n >= 1 add to the term at position n + digitsum(a(n)) the value digitsum(a(n)).

The programs for A137418, there is no canonical definition to state claims against.
-/

/-! ## A137418.P1314223718420116175

`or(A084558(A063699(n)), A137417(n+1))`
-/

namespace A137418.P1314223718420116175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084558 (A063699 n).toNat) (A137417 (n + 1))

end

end A137418.P1314223718420116175

/-! ## A137418.P3883124351433737207

`A137417(n+1)+A101606(A086893(n+1))`
-/

namespace A137418.P3883124351433737207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137417 (n + 1) + A101606 (A086893 (n + 1)).toNat

end

end A137418.P3883124351433737207

/-!
# A137419: a(n) = (a(n - 4) + 1 - ((-1)^a(a(n - 1)) + 1)*(a(a(n - 1)) - a(a(n - 2)))/2).

The programs for A137419, there is no canonical definition to state claims against.
-/

/-! ## A137419.P15387151847519642188

`A183944(A133263(n))+A060025(A028242(n))`
-/

namespace A137419.P15387151847519642188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A133263 n).toNat + A060025 (A028242 n).toNat

end

end A137419.P15387151847519642188

/-! ## A137419.P2234935805242905435

`A060025(A028242(n))-A057428(A176254(n+1))`
-/

namespace A137419.P2234935805242905435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 (A028242 n).toNat - A057428 (A176254 (n + 1)).toNat

end

end A137419.P2234935805242905435

/-! ## A137419.P14603240202550951424

`A060025(A028242(n))+A010121(A049853(n))`
-/

namespace A137419.P14603240202550951424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 (A028242 n).toNat + A010121 (A049853 n).toNat

end

end A137419.P14603240202550951424

/-! ## A137419.P17896248152931418971

`A060025(A028242(n))+A014709(A280058(n))`
-/

namespace A137419.P17896248152931418971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 (A028242 n).toNat + A014709 (A280058 n).toNat

end

end A137419.P17896248152931418971

/-! ## A137419.P16191755910775454228

`A257511(A115034(n+1)-1)+1`
-/

namespace A137419.P16191755910775454228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A115034 (n + 1) - 1).toNat + 1

end

end A137419.P16191755910775454228

/-!
# A137421: Decimal expansion of growth constant in random Fibonacci sequence.

The programs for A137421, there is no canonical definition to state claims against.
-/

/-! ## A137421.P3049169355501209281

`gcd(floor(acot(n)), A246773(n))`
-/

namespace A137421.P3049169355501209281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A246773 (n + 1))

end

end A137421.P3049169355501209281

/-! ## A137421.P2025516548044820509

`A246773(n)-A000038(n)`
-/

namespace A137421.P2025516548044820509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - A000038 n

end

end A137421.P2025516548044820509

/-! ## A137421.P11455156351486603700

`A246773(n)-C(2, A008486(n))`
-/

namespace A137421.P11455156351486603700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - (Nat.choose 2 (A008486 n).toNat : ℤ)

end

end A137421.P11455156351486603700

/-! ## A137421.P718027514763122845

`A246773(n)/A135896(C(2, n))`
-/

namespace A137421.P718027514763122845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246773 (n + 1) : ℚ) / (A135896 (Nat.choose 2 n) : ℚ)

end

end A137421.P718027514763122845

/-! ## A137421.P16259809896300616298

`A246773(n)-A061579(C(2, n+2))`
-/

namespace A137421.P16259809896300616298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - A061579 (Nat.choose 2 (n + 2))

end

end A137421.P16259809896300616298

/-! ## A137421.P1028391505308410306

`A246773(n)-A135997(C(2, n+2))`
-/

namespace A137421.P1028391505308410306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - A135997 (Nat.choose 2 (n + 2))

end

end A137421.P1028391505308410306

/-! ## A137421.P12318937641475088089

`A246773(n)/A008486(C(2, n+2))`
-/

namespace A137421.P12318937641475088089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246773 (n + 1) : ℚ) / (A008486 (Nat.choose 2 (n + 2)) : ℚ)

end

end A137421.P12318937641475088089

/-! ## A137421.P3474442979492870696

`A246773(n)/A187493(C(2, n+2))`
-/

namespace A137421.P3474442979492870696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246773 (n + 1) : ℚ) / (A187493 (Nat.choose 2 (n + 2) + 31) : ℚ)

end

end A137421.P3474442979492870696

/-! ## A137421.P12746080590518782642

`A246773(n)/A192871(C(2, n+2))`
-/

namespace A137421.P12746080590518782642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246773 (n + 1) : ℚ) / (A192871 (Nat.choose 2 (n + 2)) : ℚ)

end

end A137421.P12746080590518782642

/-! ## A137421.P4835933405080550797

`A246773(n)-C(2, A192871(n))`
-/

namespace A137421.P4835933405080550797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - (Nat.choose 2 (A192871 n).toNat : ℤ)

end

end A137421.P4835933405080550797

/-!
# A137422: Triangle T(n,k) = A053120(n-1,k) + A053120(n-1,k-1), read by rows.

The programs for A137422, there is no canonical definition to state claims against.
-/

/-! ## A137422.P10956862115082053131

`A136523(n)-A201863(A061579(n))`
-/

namespace A137422.P10956862115082053131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 n - A201863 (A061579 n).toNat

end

end A137422.P10956862115082053131

/-!
# A137423: Triangle T(n,k) = A053120(n,k)+binomial(n,k) read by rows, 0<=k<=n.

The programs for A137423, the canonical program `A137423.P11527174726418758611` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137423 has offset 0).

The definition of A137423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137423.P11527174726418758611

`A053120(n)+A007318(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A137423

/-- `A053120(n)+A007318(n)` -/
def P11527174726418758611.Spec : Prop :=
  ∀ n, P11527174726418758611.a n = A137423 n

theorem P11527174726418758611.correct : P11527174726418758611.Spec := by
  intro n
  simp only [A137423]

end A137423

/-! ## A137423.P17705746979453359090

`A053120(n)+abs(A108086(n))`
-/

namespace A137423.P17705746979453359090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + |A108086 n|

end

end A137423.P17705746979453359090

namespace A137423

/-- `A053120(n)+abs(A108086(n))` -/
def P17705746979453359090.Spec : Prop :=
  ∀ n, P17705746979453359090.a n = A137423 n

end A137423

/-! ## A137423.P5350813134746844128

`A053120(n)+abs(A117440(n))`
-/

namespace A137423.P5350813134746844128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + |A117440 n|

end

end A137423.P5350813134746844128

namespace A137423

/-- `A053120(n)+abs(A117440(n))` -/
def P5350813134746844128.Spec : Prop :=
  ∀ n, P5350813134746844128.a n = A137423 n

end A137423

/-! ## A137423.P8939588867004177477

`A053120(n)+abs(A130595(n))`
-/

namespace A137423.P8939588867004177477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + |A130595 n|

end

end A137423.P8939588867004177477

namespace A137423

/-- `A053120(n)+abs(A130595(n))` -/
def P8939588867004177477.Spec : Prop :=
  ∀ n, P8939588867004177477.a n = A137423 n

end A137423

/-! ## A137423.P14024670268037444336

`A053120(n)+sqrt(A008459(n))`
-/

namespace A137423.P14024670268037444336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053120 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A137423.P14024670268037444336

namespace A137423

/-- `A053120(n)+sqrt(A008459(n))` -/
def P14024670268037444336.Spec : Prop :=
  ∀ n, P14024670268037444336.a n = (A137423 n : ℝ)

end A137423

/-! ## A137423.P17113972916615044579

`A053120(n)+Δ[A102363(n)]`
-/

namespace A137423.P17113972916615044579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + (f1 (n + 1) - f1 n)

end

end A137423.P17113972916615044579

namespace A137423

/-- `A053120(n)+Δ[A102363(n)]` -/
def P17113972916615044579.Spec : Prop :=
  ∀ n, P17113972916615044579.a n = A137423 n

end A137423

/-! ## A137423.P16536232920027435989

`A039991(∑[2*n]%comp[∑[n]])+A007318(n)`
-/

namespace A137423.P16536232920027435989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + A007318 n

end

end A137423.P16536232920027435989

namespace A137423

/-- `A039991(∑[2*n]%comp[∑[n]])+A007318(n)` -/
def P16536232920027435989.Spec : Prop :=
  ∀ n, P16536232920027435989.a n = A137423 n

end A137423

/-! ## A137423.P9868216785250038386

`A039991(∑[char[∑[n]]]²-n-1)+A007318(n)`
-/

namespace A137423.P9868216785250038386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat + A007318 n

end

end A137423.P9868216785250038386

namespace A137423

/-- `A039991(∑[char[∑[n]]]²-n-1)+A007318(n)` -/
def P9868216785250038386.Spec : Prop :=
  ∀ n, P9868216785250038386.a n = A137423 n

end A137423

/-! ## A137423.P14457770016269523959

`A053120(n)+abs(A118433(n))`
-/

namespace A137423.P14457770016269523959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + |A118433 n|

end

end A137423.P14457770016269523959

namespace A137423

/-- `A053120(n)+abs(A118433(n))` -/
def P14457770016269523959.Spec : Prop :=
  ∀ n, P14457770016269523959.a n = A137423 n

end A137423

/-! ## A137423.P6513223224034943224

`floor(A139569(n+1)/2)+A007318(n)`
-/

namespace A137423.P6513223224034943224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139569 (n + 1) : ℚ) / 2⌋ + A007318 n

end

end A137423.P6513223224034943224

namespace A137423

/-- `floor(A139569(n+1)/2)+A007318(n)` -/
def P6513223224034943224.Spec : Prop :=
  ∀ n, P6513223224034943224.a n = A137423 n

end A137423

/-!
# A137424: a(n) = binomial(digsum(n), n mod digsum(n)).

The programs for A137424, the canonical program `A137424.P13893967941999792407` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137424 has offset 1).

The definition of A137424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137424.P13893967941999792407

`C(Δ[A037123(n)], (n+1)%∑{digits}[n+1, #])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137424

/-- `C(Δ[A037123(n)], (n+1)%∑{digits}[n+1, #])` -/
def P13893967941999792407.Spec : Prop :=
  ∀ n, (P13893967941999792407.a n : ℤ) = A137424 (n + 1)

theorem P13893967941999792407.correct : P13893967941999792407.Spec := by
  intro n
  simp only [A137424, Nat.add_sub_cancel]

end A137424

/-! ## A137424.P7670733233272757033

`C(Δ[A037123(n)], A070635(n+1))`
-/

namespace A137424.P7670733233272757033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A070635 (n + 1)).toNat

end

end A137424.P7670733233272757033

namespace A137424

/-- `C(Δ[A037123(n)], A070635(n+1))` -/
def P7670733233272757033.Spec : Prop :=
  ∀ n, (P7670733233272757033.a n : ℤ) = A137424 (n + 1)

end A137424

/-! ## A137424.P11040481335472211441

`C(A007953(n+1), A070635(n+1))`
-/

namespace A137424.P11040481335472211441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007953 (n + 1)).toNat (A070635 (n + 1)).toNat

end

end A137424.P11040481335472211441

namespace A137424

/-- `C(A007953(n+1), A070635(n+1))` -/
def P11040481335472211441.Spec : Prop :=
  ∀ n, (P11040481335472211441.a n : ℤ) = A137424 (n + 1)

end A137424

/-! ## A137424.P2713163521409991945

`C(A000005(A329562(n)), A070635(n+1))`
-/

namespace A137424.P2713163521409991945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A329562 n).toNat).toNat (A070635 (n + 1)).toNat

end

end A137424.P2713163521409991945

namespace A137424

/-- `C(A000005(A329562(n)), A070635(n+1))` -/
def P2713163521409991945.Spec : Prop :=
  ∀ n, (P2713163521409991945.a n : ℤ) = A137424 (n + 1)

end A137424

/-! ## A137424.P16282468276996277804

`C(A001222(A329562(n+1)), A070635(n+1))`
-/

namespace A137424.P16282468276996277804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A329562 (n + 1)).toNat).toNat (A070635 (n + 1)).toNat

end

end A137424.P16282468276996277804

namespace A137424

/-- `C(A001222(A329562(n+1)), A070635(n+1))` -/
def P16282468276996277804.Spec : Prop :=
  ∀ n, (P16282468276996277804.a n : ℤ) = A137424 (n + 1)

end A137424

/-!
# A137425: a(1) = 1;l for n>1, a(n) = smallest number such that: 1. the number of divisors is strictly increasing, 2. the differences between the terms are nondecreasing.

The programs for A137425, there is no canonical definition to state claims against.
-/

/-! ## A137425.P12832975574071296251

`record[A002182(n+1)/A248909(A262501(n+1))]`
-/

namespace A137425.P12832975574071296251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A248909 (A262501 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137425.P12832975574071296251

/-! ## A137425.P3506150856978048456

`record[A092991(A221474(n))]`
-/

namespace A137425.P3506150856978048456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092991 (A221474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137425.P3506150856978048456

/-! ## A137425.P12740548617493341060

`record[A092991(A285891(n+1))]`
-/

namespace A137425.P12740548617493341060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092991 (A285891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137425.P12740548617493341060

/-! ## A137425.P5837731830597102832

`record[gcd(A092991(n), A105517(n))]`
-/

namespace A137425.P5837731830597102832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092991 n) (A105517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137425.P5837731830597102832

/-! ## A137425.P4383445533316782663

`A004524(record[2*A092991(n)]+1)`
-/

namespace A137425.P4383445533316782663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A137425.P4383445533316782663

/-!
# A137426: a(n)=-a(n-1)+2a(n-3).

The programs for A137426, the canonical program `A137426.P13244163208833681710` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137426 has offset 0).

The definition of A137426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+2*a(n-3)` (program `A137426.P13244163208833681710`, by `A137426.P13244163208833681710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137426.P13244163208833681710

`-a(n-1)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=-3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137426

/-- `-a(n-1)+2*a(n-3)` -/
def P13244163208833681710.Spec : Prop :=
  ∀ n, P13244163208833681710.a n = A137426 n

theorem P13244163208833681710.correct : P13244163208833681710.Spec := by
  intro n
  simp only [A137426]

end A137426

/-! ## A137426.P11462736830351183247

`∑[ogf((x-2x^2)/(1+2x+2x^2))]`
-/

namespace A137426.P11462736830351183247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137426.P11462736830351183247

namespace A137426

/-- `∑[ogf((x-2x^2)/(1+2x+2x^2))]` -/
def P11462736830351183247.Spec : Prop :=
  ∀ n, P11462736830351183247.a n = A137426 n

end A137426

/-! ## A137426.P8196398665581251157

`ogf((x-2x^2)/(1+x-2x^3))`
-/

namespace A137426.P8196398665581251157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, 1, 0, -2] n

end

end A137426.P8196398665581251157

namespace A137426

/-- `ogf((x-2x^2)/(1+x-2x^3))` -/
def P8196398665581251157.Spec : Prop :=
  ∀ n, P8196398665581251157.a n = A137426 n

end A137426

/-! ## A137426.P15354760509599691601

`2*a(n-3)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=-3`
-/

namespace A137426.P15354760509599691601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -3] fun n a =>
  2 * a (n - 3) - a (n - 1)

end

end A137426.P15354760509599691601

namespace A137426

/-- `2*a(n-3)-a(n-1)` -/
def P15354760509599691601.Spec : Prop :=
  ∀ n, P15354760509599691601.a n = A137426 n

end A137426

/-! ## A137426.P1572348769454659242

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=-3`
-/

namespace A137426.P1572348769454659242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -3] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A137426.P1572348769454659242

namespace A137426

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P1572348769454659242.Spec : Prop :=
  ∀ n, P1572348769454659242.a n = A137426 n

end A137426

/-! ## A137426.P13516455626127116438

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A137426.P13516455626127116438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -3] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A137426.P13516455626127116438

namespace A137426

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P13516455626127116438.Spec : Prop :=
  ∀ n, P13516455626127116438.a n = A137426 n

end A137426

/-! ## A137426.P4329638959640243306

`A090132(n)-A077973(n)`
-/

namespace A137426.P4329638959640243306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n - A077973 n

end

end A137426.P4329638959640243306

namespace A137426

/-- `A090132(n)-A077973(n)` -/
def P4329638959640243306.Spec : Prop :=
  ∀ n, P4329638959640243306.a n = A137426 n

end A137426

/-! ## A137426.P4906738434201043934

`A137470(n)-A137505(n+1)`
-/

namespace A137426.P4906738434201043934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137470 n - A137505 (n + 1)

end

end A137426.P4906738434201043934

namespace A137426

/-- `A137470(n)-A137505(n+1)` -/
def P4906738434201043934.Spec : Prop :=
  ∀ n, P4906738434201043934.a n = A137426 n

end A137426

/-! ## A137426.P9052899733336221492

`A108520(n)-A077973(n+3)`
-/

namespace A137426.P9052899733336221492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A077973 (n + 3)

end

end A137426.P9052899733336221492

namespace A137426

/-- `A108520(n)-A077973(n+3)` -/
def P9052899733336221492.Spec : Prop :=
  ∀ n, P9052899733336221492.a n = A137426 n

end A137426

/-! ## A137426.P4860445298575394129

`A137505(n)-(Δ[A137505(n)]+1)`
-/

namespace A137426.P4860445298575394129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 n - (f1 (n + 1) - f1 n + 1)

end

end A137426.P4860445298575394129

namespace A137426

/-- `A137505(n)-(Δ[A137505(n)]+1)` -/
def P4860445298575394129.Spec : Prop :=
  ∀ n, P4860445298575394129.a n = A137426 n

end A137426

/-! ## A137426.P5551973929691050726

`∑[A137429(n)]-A137429(n)`
-/

namespace A137426.P5551973929691050726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137429 n

end

end A137426.P5551973929691050726

namespace A137426

/-- `∑[A137429(n)]-A137429(n)` -/
def P5551973929691050726.Spec : Prop :=
  ∀ n, P5551973929691050726.a n = A137426 n

end A137426

/-!
# A137427: Squarefree part of partial sum of squarefree part of n.

The programs for A137427, the canonical program `A137427.P7977322006733834359` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137427 has offset 1).

The definition of A137427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A069891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137427.P7977322006733834359

`A007913(A069891(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137427

/-- `A007913(A069891(n+1))` -/
def P7977322006733834359.Spec : Prop :=
  ∀ n, P7977322006733834359.a n = A137427 (n + 1)

theorem P7977322006733834359.correct : P7977322006733834359.Spec := by
  intro n
  simp only [A137427, Nat.add_sub_cancel]

end A137427

/-! ## A137427.P4199956984858369594

`A007913(∑[A007913(n+1)])`
-/

namespace A137427.P4199956984858369594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137427.P4199956984858369594

namespace A137427

/-- `A007913(∑[A007913(n+1)])` -/
def P4199956984858369594.Spec : Prop :=
  ∀ n, P4199956984858369594.a n = A137427 (n + 1)

end A137427

/-! ## A137427.P13152732156001478066

`A007913(∑[abs(Δ[A069891(n)])])`
-/

namespace A137427.P13152732156001478066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137427.P13152732156001478066

namespace A137427

/-- `A007913(∑[abs(Δ[A069891(n)])])` -/
def P13152732156001478066.Spec : Prop :=
  ∀ n, P13152732156001478066.a n = A137427 (n + 1)

end A137427

/-! ## A137427.P9928316409484841102

`A007913(record[A069891(n-a(2%n))])` with `a(0)=1`
-/

namespace A137427.P9928316409484841102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A069891 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137427.P9928316409484841102

namespace A137427

/-- `A007913(record[A069891(n-a(2%n))])` -/
def P9928316409484841102.Spec : Prop :=
  ∀ n, P9928316409484841102.a n = A137427 (n + 1)

end A137427

/-! ## A137427.P7592832029835437091

`A007913(A070236(n+1)+A002088(n+1))`
-/

namespace A137427.P7592832029835437091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A070236 (n + 1) + A002088 (n + 1)).toNat

end

end A137427.P7592832029835437091

namespace A137427

/-- `A007913(A070236(n+1)+A002088(n+1))` -/
def P7592832029835437091.Spec : Prop :=
  ∀ n, P7592832029835437091.a n = A137427 (n + 1)

theorem P7592832029835437091.correct : P7592832029835437091.Spec := by
  intro n
  simp only [A137427, Nat.add_sub_cancel, A137427.P7592832029835437091.a, A137427.P7977322006733834359.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A007913, A007913.P11359412940648999332.a, A069891, A069891.P9601038511984379204.a, A070236, A070236.P13553058838220906984.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A059479, A059479.P17464652159649958448.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137427

/-! ## A137427.P846510521947454004

`sqrt(A055491(∑[sqrt(A055491(n+1))]))`
-/

namespace A137427.P846510521947454004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℝ)

end

end A137427.P846510521947454004

namespace A137427

/-- `sqrt(A055491(∑[sqrt(A055491(n+1))]))` -/
def P846510521947454004.Spec : Prop :=
  ∀ n, P846510521947454004.a n = (A137427 (n + 1) : ℝ)

end A137427

/-! ## A137427.P17749938467905912804

`A038387(∑[A038387(2*(n+1))])/2`
-/

namespace A137427.P17749938467905912804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A137427.P17749938467905912804

namespace A137427

/-- `A038387(∑[A038387(2*(n+1))])/2` -/
def P17749938467905912804.Spec : Prop :=
  ∀ n, P17749938467905912804.a n = (A137427 (n + 1) : ℚ)

end A137427

/-! ## A137427.P1386992783791504563

`A007913(∑[A056554(xor(n, -1)²)])`
-/

namespace A137427.P1386992783791504563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (Int.xor (n : ℤ) (-1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137427.P1386992783791504563

namespace A137427

/-- `A007913(∑[A056554(xor(n, -1)²)])` -/
def P1386992783791504563.Spec : Prop :=
  ∀ n, P1386992783791504563.a n = A137427 (n + 1)

end A137427

/-! ## A137427.P14879247884080907261

`A056135(4*A069891(n+1))`
-/

namespace A137427.P14879247884080907261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A069891 (n + 1)).toNat

end

end A137427.P14879247884080907261

namespace A137427

/-- `A056135(4*A069891(n+1))` -/
def P14879247884080907261.Spec : Prop :=
  ∀ n, P14879247884080907261.a n = A137427 (n + 1)

end A137427

/-! ## A137427.P1662971137790323775

`A056135(∑[4*Δ[A069891(n)]])`
-/

namespace A137427.P1662971137790323775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137427.P1662971137790323775

namespace A137427

/-- `A056135(∑[4*Δ[A069891(n)]])` -/
def P1662971137790323775.Spec : Prop :=
  ∀ n, P1662971137790323775.a n = A137427 (n + 1)

end A137427

/-!
# A137428: Positive integers n which have a composite divisor smaller than their largest prime factor.

The programs for A137428, there is no canonical definition to state claims against.
-/

/-! ## A137428.P511607696642148789

`lt[A052126(n+1), A054576(n+1)]+1`
-/

namespace A137428.P511607696642148789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137428.P511607696642148789

/-! ## A137428.P7662461545272319566

`lt[A014673(n+1), A120454(n+1)]+1`
-/

namespace A137428.P7662461545272319566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137428.P7662461545272319566

/-! ## A137428.P5685626668781480146

`A020725(lt[A052126(n+1), A054576(n+1)])`
-/

namespace A137428.P5685626668781480146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137428.P5685626668781480146

/-! ## A137428.P17772831803681003484

`A020725(lt[A014673(n+1), A120454(n+1)])`
-/

namespace A137428.P17772831803681003484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137428.P17772831803681003484

/-! ## A137428.P157532633739399764

`A065475(lt[A052126(n+1), A054576(n+1)])`
-/

namespace A137428.P157532633739399764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137428.P157532633739399764

/-! ## A137428.P12684225461946003149

`A153152(lt[A052126(n+1), A054576(n+1)])`
-/

namespace A137428.P12684225461946003149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137428.P12684225461946003149

/-! ## A137428.P12352342267633571912

`A153152(lt[A014673(n+1), A120454(n+1)])`
-/

namespace A137428.P12352342267633571912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137428.P12352342267633571912

/-! ## A137428.P6698579605547668893

`lt[A052126(n+1), A032742(A032742(n+1))]+1`
-/

namespace A137428.P6698579605547668893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137428.P6698579605547668893

/-! ## A137428.P16879077883674013235

`∩[A059485(n+1), A367632(n+1)]`
-/

namespace A137428.P16879077883674013235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137428.P16879077883674013235

/-! ## A137428.P3083726016326894624

`∩[A068938(n+1), A367632(n+1)]`
-/

namespace A137428.P3083726016326894624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137428.P3083726016326894624

/-!
# A137429: a(n) = -2*a(n-1) - 2*a(n-2), with a(0)=1 and a(1)=-4.

The programs for A137429, the canonical program `A137429.P418313018011150106` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137429 has offset 0).

The definition of A137429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)-2*a(n-2)` (program `A137429.P418313018011150106`, by `A137429.P418313018011150106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137429.P418313018011150106

`-2*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=-4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137429

/-- `-2*a(n-1)-2*a(n-2)` -/
def P418313018011150106.Spec : Prop :=
  ∀ n, P418313018011150106.a n = A137429 n

theorem P418313018011150106.correct : P418313018011150106.Spec := by
  intro n
  simp only [A137429]

end A137429

/-! ## A137429.P665720432497095065

`(-1)^n*A137444(n)`
-/

namespace A137429.P665720432497095065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A137444 n

end

end A137429.P665720432497095065

namespace A137429

/-- `(-1)^n*A137444(n)` -/
def P665720432497095065.Spec : Prop :=
  ∀ n, P665720432497095065.a n = A137429 n

end A137429

/-! ## A137429.P16051799953845817484

`ogf((1-2x)/(1+2x+2x^2))`
-/

namespace A137429.P16051799953845817484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 2, 2] n

end

end A137429.P16051799953845817484

namespace A137429

/-- `ogf((1-2x)/(1+2x+2x^2))` -/
def P16051799953845817484.Spec : Prop :=
  ∀ n, P16051799953845817484.a n = A137429 n

end A137429

/-! ## A137429.P10450202988956522558

`∏[-(2/a(n-1)+2)]` with `a(0)=1`
-/

namespace A137429.P10450202988956522558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(2 / f1 (n - 1) + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137429.P10450202988956522558

namespace A137429

/-- `∏[-(2/a(n-1)+2)]` -/
def P10450202988956522558.Spec : Prop :=
  ∀ n, P10450202988956522558.a n = (A137429 n : ℚ)

end A137429

/-! ## A137429.P11352644561677907188

`-(2*(a(n-1)+a((n-2)%n)))` with `a(0)=1`
-/

namespace A137429.P11352644561677907188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(2 * (a (n - 1) + a (Int.tmod ((n : ℤ) - 2) (n : ℤ)).toNat))

end

end A137429.P11352644561677907188

namespace A137429

/-- `-(2*(a(n-1)+a((n-2)%n)))` -/
def P11352644561677907188.Spec : Prop :=
  ∀ n, P11352644561677907188.a n = A137429 n

end A137429

/-! ## A137429.P1135953571918625318

`Δ[2*(2-(a(n-1)+a(n-2)))]` with `a(0)=1, a(1)=2`
-/

namespace A137429.P1135953571918625318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (2 - (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137429.P1135953571918625318

namespace A137429

/-- `Δ[2*(2-(a(n-1)+a(n-2)))]` -/
def P1135953571918625318.Spec : Prop :=
  ∀ n, P1135953571918625318.a n = A137429 n

end A137429

/-! ## A137429.P7216400507471209928

`Δ[2*(2-a(n-1)-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A137429.P7216400507471209928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137429.P7216400507471209928

namespace A137429

/-- `Δ[2*(2-a(n-1)-a(n-2))]` -/
def P7216400507471209928.Spec : Prop :=
  ∀ n, P7216400507471209928.a n = A137429 n

end A137429

/-! ## A137429.P14855083015191797086

`Δ[A137426(n)]`
-/

namespace A137429.P14855083015191797086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137429.P14855083015191797086

namespace A137429

/-- `Δ[A137426(n)]` -/
def P14855083015191797086.Spec : Prop :=
  ∀ n, P14855083015191797086.a n = A137429 n

end A137429

/-! ## A137429.P15599641980991539639

`A134142(n)-a(n-1)` with `a(0)=1`
-/

namespace A137429.P15599641980991539639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134142 n - a (n - 1)

end

end A137429.P15599641980991539639

namespace A137429

/-- `A134142(n)-a(n-1)` -/
def P15599641980991539639.Spec : Prop :=
  ∀ n, P15599641980991539639.a n = A137429 n

end A137429

/-! ## A137429.P5348414273297026604

`A108520(n)+A090132(n+1)`
-/

namespace A137429.P5348414273297026604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + A090132 (n + 1)

end

end A137429.P5348414273297026604

namespace A137429

/-- `A108520(n)+A090132(n+1)` -/
def P5348414273297026604.Spec : Prop :=
  ∀ n, P5348414273297026604.a n = A137429 n

end A137429

/-! ## A137429.P6661322416449741694

`A137426(n+1)-A137426(n)`
-/

namespace A137429.P6661322416449741694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137426 (n + 1) - A137426 n

end

end A137429.P6661322416449741694

namespace A137429

/-- `A137426(n+1)-A137426(n)` -/
def P6661322416449741694.Spec : Prop :=
  ∀ n, P6661322416449741694.a n = A137429 n

end A137429

/-! ## A137429.P16831263689525317915

`A108520(n)-A009116(n+2)`
-/

namespace A137429.P16831263689525317915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A009116 (n + 2)

end

end A137429.P16831263689525317915

namespace A137429

/-- `A108520(n)-A009116(n+2)` -/
def P16831263689525317915.Spec : Prop :=
  ∀ n, P16831263689525317915.a n = A137429 n

end A137429

/-! ## A137429.P8613260639100971283

`A009116(n+3)-A090132(n)`
-/

namespace A137429.P8613260639100971283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 3) - A090132 n

end

end A137429.P8613260639100971283

namespace A137429

/-- `A009116(n+3)-A090132(n)` -/
def P8613260639100971283.Spec : Prop :=
  ∀ n, P8613260639100971283.a n = A137429 n

end A137429

/-! ## A137429.P1036821880741800841

`2*A078069(n)-A108520(n)`
-/

namespace A137429.P1036821880741800841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078069 n - A108520 n

end

end A137429.P1036821880741800841

namespace A137429

/-- `2*A078069(n)-A108520(n)` -/
def P1036821880741800841.Spec : Prop :=
  ∀ n, P1036821880741800841.a n = A137429 n

end A137429

/-! ## A137429.P16232892940628946369

`2*A108520(n)-A090132(n)`
-/

namespace A137429.P16232892940628946369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108520 n - A090132 n

end

end A137429.P16232892940628946369

namespace A137429

/-- `2*A108520(n)-A090132(n)` -/
def P16232892940628946369.Spec : Prop :=
  ∀ n, P16232892940628946369.a n = A137429 n

end A137429

/-! ## A137429.P13956730154132912630

`Δ[A137505(n)-Δ[A137505(n)]]`
-/

namespace A137429.P13956730154132912630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137429.P13956730154132912630

namespace A137429

/-- `Δ[A137505(n)-Δ[A137505(n)]]` -/
def P13956730154132912630.Spec : Prop :=
  ∀ n, P13956730154132912630.a n = A137429 n

end A137429

/-! ## A137429.P16599689688626363570

`A009116(n+1)+A009116(n+3)`
-/

namespace A137429.P16599689688626363570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 1) + A009116 (n + 3)

end

end A137429.P16599689688626363570

namespace A137429

/-- `A009116(n+1)+A009116(n+3)` -/
def P16599689688626363570.Spec : Prop :=
  ∀ n, P16599689688626363570.a n = A137429 n

end A137429

/-! ## A137429.P18400672041494378606

`A084102(n+2)-A078069(n+1)`
-/

namespace A137429.P18400672041494378606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (n + 2) - A078069 (n + 1)

end

end A137429.P18400672041494378606

namespace A137429

/-- `A084102(n+2)-A078069(n+1)` -/
def P18400672041494378606.Spec : Prop :=
  ∀ n, P18400672041494378606.a n = A137429 n

end A137429

/-! ## A137429.P12737540642688999692

`A078069(n)-A016116(n)*A075553(n)`
-/

namespace A137429.P12737540642688999692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n - A016116 n * A075553 n

end

end A137429.P12737540642688999692

namespace A137429

/-- `A078069(n)-A016116(n)*A075553(n)` -/
def P12737540642688999692.Spec : Prop :=
  ∀ n, P12737540642688999692.a n = A137429 n

end A137429

/-! ## A137429.P12023921178202737487

`A108520(n+1)+A134142(n)+A078069(n)`
-/

namespace A137429.P12023921178202737487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (n + 1) + (A134142 n + A078069 n)

end

end A137429.P12023921178202737487

namespace A137429

/-- `A108520(n+1)+A134142(n)+A078069(n)` -/
def P12023921178202737487.Spec : Prop :=
  ∀ n, P12023921178202737487.a n = A137429 n

end A137429

/-!
# A137430: Triangular sequence from coefficients of a cumulative sum of Chebyshev T(x,n) polynomials (A053120): p(x,n)=p(x,n-1)+T(x,n).

The programs for A137430, there is no canonical definition to state claims against.
-/

/-! ## A137430.P18212668791809763880

`ceil(A244419(n)/2)`
-/

namespace A137430.P18212668791809763880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244419 n : ℚ) / 2⌉

end

end A137430.P18212668791809763880

/-! ## A137430.P8110370122250600789

`(A244419(n)+A010054(n))/2`
-/

namespace A137430.P8110370122250600789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244419 n + A010054 n : ℚ) / 2

end

end A137430.P8110370122250600789

/-! ## A137430.P4155534274158458288

`ceil(A008312(A246694(n)-1)/2)`
-/

namespace A137430.P4155534274158458288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008312 (A246694 n - 1).toNat : ℚ) / 2⌉

end

end A137430.P4155534274158458288

/-! ## A137430.P16765630326591729634

`ceil(A059268(n)/2*A267482(n))`
-/

namespace A137430.P16765630326591729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059268 n : ℚ) / 2 * (A267482 n : ℚ)⌉

end

end A137430.P16765630326591729634

/-! ## A137430.P17523028783833465898

`ceil(2^A002262(n)*A267482(n)/2)`
-/

namespace A137430.P17523028783833465898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A002262 n : ℤ) * (A267482 n : ℚ) / 2⌉

end

end A137430.P17523028783833465898

/-! ## A137430.P5276398107565731606

`floor((A244419(n)+A000010(gcd(n, n+1)))/2)`
-/

namespace A137430.P5276398107565731606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244419 n + A000010 (Nat.gcd n (n + 1)) : ℚ) / 2⌋

end

end A137430.P5276398107565731606

/-! ## A137430.P5882975148973397557

`ceil(A057077(A025581(n))*A157751(n)/2)`
-/

namespace A137430.P5882975148973397557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057077 (A025581 n).toNat * A157751 n : ℚ) / 2⌉

end

end A137430.P5882975148973397557

/-! ## A137430.P9570511041199383887

`ceil(A036561(A112367(n))*A267482(n)/2)`
-/

namespace A137430.P9570511041199383887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036561 (A112367 n).toNat * A267482 n : ℚ) / 2⌉

end

end A137430.P9570511041199383887

/-! ## A137430.P9206675786923701476

`ceil(A130321(A061579(n))*A267482(n)/2)`
-/

namespace A137430.P9206675786923701476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130321 (A061579 n).toNat * A267482 n : ℚ) / 2⌉

end

end A137430.P9206675786923701476

/-! ## A137430.P10221780602438937711

`ceil((A053117(n+1)+A053117(n)-A053120(n+1))/2)`
-/

namespace A137430.P10221780602438937711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053117 (n + 1) + (A053117 n - A053120 (n + 1)) : ℚ) / 2⌉

end

end A137430.P10221780602438937711

/-!
# A137431: Coefficients of tribonacci numbers expansion : similar to the Fibonacci number expansion given in Steve Roman's Umbral Calculus.

The programs for A137431, there is no canonical definition to state claims against.
-/

/-! ## A137431.P14918058962901610317

`and(A131222(n), A163617(A154691(n+1)))`
-/

namespace A137431.P14918058962901610317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131222 n) (A163617 (A154691 (n + 1)).toNat)

end

end A137431.P14918058962901610317

/-! ## A137431.P10380854000389736559

`and(A131222(n), A240624(A131205(n+1)))`
-/

namespace A137431.P10380854000389736559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131222 n) (A240624 (A131205 (n + 1)).toNat)

end

end A137431.P10380854000389736559

/-! ## A137431.P5910092816963505186

`A130574(A383149(n))`
-/

namespace A137431.P5910092816963505186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A383149 n).toNat

end

end A137431.P5910092816963505186

/-! ## A137431.P7583134338891202187

`and(A061931(n+1), A131222(n))`
-/

namespace A137431.P7583134338891202187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061931 (n + 1)) (A131222 n)

end

end A137431.P7583134338891202187

/-! ## A137431.P9565945843546549539

`and(p?[A224787(n+1)], A131222(n))`
-/

namespace A137431.P9565945843546549539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A131222 n)

end

end A137431.P9565945843546549539

/-!
# A137432: Number of ways to place n^2 nonattacking kings on a 2n X 2n cylindrical chessboard.

The programs for A137432, there is no canonical definition to state claims against.
-/

/-! ## A137432.P5550462443928910524

`A046109(n)*A293215(A163950(n+1))`
-/

namespace A137432.P5550462443928910524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n * A293215 (A163950 (n + 1)).toNat

end

end A137432.P5550462443928910524

/-!
# A137433: Coefficients of A000930 expansion similar to that given for Fibonacci numbers in Roman's Umbral Calculus.

The programs for A137433, there is no canonical definition to state claims against.
-/

/-! ## A137433.P17879611912119967462

`A049581(A215861(n)^A278493(n))`
-/

namespace A137433.P17879611912119967462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.roundAway ((A215861 n : ℚ) ^ (A278493 n : ℤ))).toNat

end

end A137433.P17879611912119967462

/-! ## A137433.P11224065130738451632

`A262689(A350227(n)^A136868(n))`
-/

namespace A137433.P11224065130738451632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((A350227 n : ℚ) ^ (A136868 n : ℤ))).toNat

end

end A137433.P11224065130738451632

/-! ## A137433.P2987054531432371818

`A049581(A215861(n)^A037126(n+1))`
-/

namespace A137433.P2987054531432371818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.roundAway ((A215861 n : ℚ) ^ (A037126 (n + 1) : ℤ))).toNat

end

end A137433.P2987054531432371818

/-! ## A137433.P6463372518253269367

`A165125(A194987(n+1)^A104878(n))`
-/

namespace A137433.P6463372518253269367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165125 (SequenceMachineLib.roundAway ((A194987 (n + 1) : ℚ) ^ (A104878 n : ℤ))).toNat

end

end A137433.P6463372518253269367

/-! ## A137433.P7894700396357871204

`A007954(A264428(n)^A336844(n+1))`
-/

namespace A137433.P7894700396357871204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A264428 n : ℚ) ^ (A336844 (n + 1) : ℤ))).toNat

end

end A137433.P7894700396357871204

/-!
# A137434: a(n) = smallest square containing n copies of the same nonzero digit.

The programs for A137434, there is no canonical definition to state claims against.
-/

/-! ## A137434.P12412915422859311996

`A000290(A048349(n+1)-A014067(n))`
-/

namespace A137434.P12412915422859311996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A048349 (n + 1) - A014067 n).toNat

end

end A137434.P12412915422859311996

/-! ## A137434.P15014020361887115534

`A000290(A048349(n+1)-A266253(n))`
-/

namespace A137434.P15014020361887115534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A048349 (n + 1) - A266253 n).toNat

end

end A137434.P15014020361887115534

/-!
# A137435: Acyclic 3-multidigraphs on n nodes.

The programs for A137435, there is no canonical definition to state claims against.
-/

/-! ## A137435.P505896665572873051

`A339768(∑[n+3]+n+3)`
-/

namespace A137435.P505896665572873051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339768 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A137435.P505896665572873051

/-!
# A137437: Triangular sequence from expansion coefficients of asymptotic Hermite Polynomial from Roman: p(x,t)= (1 + t)^(-x)*Exp[x*(t - t^2/2)].

The programs for A137437, there is no canonical definition to state claims against.
-/

/-! ## A137437.P266546385680842485

`A180193(A000217(n))*A286354(n)`
-/

namespace A137437.P266546385680842485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180193 (A000217 n).toNat * A286354 n

end

end A137437.P266546385680842485

/-!
# A137439: Sequence is concatenation of S_1, S_2, S_3, ..., where S_k = [45k, 45k-1, 45k-2, ..., 45k-9k].

The programs for A137439, there is no canonical definition to state claims against.
-/

/-! ## A137439.P1043373217275854328

`(200/2-n)%A352268(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A137439.P1043373217275854328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((200 : ℚ) / 2 - (n : ℚ))) (A352268 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum))

end

end A137439.P1043373217275854328

/-!
# A137440: Triangle T(n,m) read by rows: T(m,n) = (1+n*3^m)-th prime.

The programs for A137440, there is no canonical definition to state claims against.
-/

/-! ## A137440.P4329766270727314405

`A000040(3^A002262(n)*A003056(n)+1)`
-/

namespace A137440.P4329766270727314405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A002262 n : ℤ) * (A003056 n : ℚ) + 1)).toNat

end

end A137440.P4329766270727314405

/-! ## A137440.P7708420124822997358

`A008578(3^A002262(n)*A003056(n)+2)`
-/

namespace A137440.P7708420124822997358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A002262 n : ℤ) * (A003056 n : ℚ) + 2)).toNat

end

end A137440.P7708420124822997358

/-! ## A137440.P9414472878374502114

`A100725(A360145(n+1))`
-/

namespace A137440.P9414472878374502114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (A360145 (n + 1)).toNat

end

end A137440.P9414472878374502114

/-! ## A137440.P17512882248368645539

`A000040(A360145(n+1)^A117358(3*n+5))`
-/

namespace A137440.P17512882248368645539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A360145 (n + 1) : ℚ) ^ (A117358 (3 * n + 5) : ℤ))).toNat

end

end A137440.P17512882248368645539

/-!
# A137441: Partial sums of partial sums of PrimePi(k).

The programs for A137441, the canonical program `A137441.P13809753394245264539` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137441 has offset 1).

The definition of A137441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137441.P13809753394245264539

`∑[∑[∑[∑{p}[n+1, val(#, n+1)]]]]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137441

/-- `∑[∑[∑[∑{p}[n+1, val(#, n+1)]]]]` -/
def P13809753394245264539.Spec : Prop :=
  ∀ n, (P13809753394245264539.a n : ℤ) = A137441 (n + 1)

theorem P13809753394245264539.correct : P13809753394245264539.Spec := by
  intro n
  simp only [A137441, Nat.add_sub_cancel]

end A137441

/-! ## A137441.P6750934323198118818

`∑[∑[∑[∑{p}[n+1, C(#, n+1)]]]]`
-/

namespace A137441.P6750934323198118818
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.choose p (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P6750934323198118818

namespace A137441

/-- `∑[∑[∑[∑{p}[n+1, C(#, n+1)]]]]` -/
def P6750934323198118818.Spec : Prop :=
  ∀ n, (P6750934323198118818.a n : ℤ) = A137441 (n + 1)

end A137441

/-! ## A137441.P9272170951649595956

`∑[A046992(n+1)]`
-/

namespace A137441.P9272170951649595956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P9272170951649595956

namespace A137441

/-- `∑[A046992(n+1)]` -/
def P9272170951649595956.Spec : Prop :=
  ∀ n, P9272170951649595956.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P1808720653930004213

`∑[∑[A000720(n+1)]]`
-/

namespace A137441.P1808720653930004213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P1808720653930004213

namespace A137441

/-- `∑[∑[A000720(n+1)]]` -/
def P1808720653930004213.Spec : Prop :=
  ∀ n, P1808720653930004213.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P3683973036717405802

`∑[A061536(n+1)-1]`
-/

namespace A137441.P3683973036717405802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P3683973036717405802

namespace A137441

/-- `∑[A061536(n+1)-1]` -/
def P3683973036717405802.Spec : Prop :=
  ∀ n, P3683973036717405802.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P14009694930779129406

`∑[∑[∑[A010051(n+1)]]]`
-/

namespace A137441.P14009694930779129406
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P14009694930779129406

namespace A137441

/-- `∑[∑[∑[A010051(n+1)]]]` -/
def P14009694930779129406.Spec : Prop :=
  ∀ n, P14009694930779129406.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P5757898213877526288

`∑[∑[A036234(n+1)-1]]`
-/

namespace A137441.P5757898213877526288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P5757898213877526288

namespace A137441

/-- `∑[∑[A036234(n+1)-1]]` -/
def P5757898213877526288.Spec : Prop :=
  ∀ n, P5757898213877526288.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P7409604674888345328

`∑[∑[A033270(n+1)]+n]`
-/

namespace A137441.P7409604674888345328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P7409604674888345328

namespace A137441

/-- `∑[∑[A033270(n+1)]+n]` -/
def P7409604674888345328.Spec : Prop :=
  ∀ n, P7409604674888345328.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P8752491809714564938

`∑[∑[n-A065855(n+1)]]`
-/

namespace A137441.P8752491809714564938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P8752491809714564938

namespace A137441

/-- `∑[∑[n-A065855(n+1)]]` -/
def P8752491809714564938.Spec : Prop :=
  ∀ n, P8752491809714564938.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P3126360789840774217

`∑[A002815(n+1)-(n+1)]`
-/

namespace A137441.P3126360789840774217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P3126360789840774217

namespace A137441

/-- `∑[A002815(n+1)-(n+1)]` -/
def P3126360789840774217.Spec : Prop :=
  ∀ n, P3126360789840774217.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P1850609337018038880

`∑[∑[∑[char[record[A000010(n+1)]]]]]`
-/

namespace A137441.P1850609337018038880
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => ∀ l < j, f5 l < f5 j) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P1850609337018038880

namespace A137441

/-- `∑[∑[∑[char[record[A000010(n+1)]]]]]` -/
def P1850609337018038880.Spec : Prop :=
  ∀ n, (P1850609337018038880.a n : ℤ) = A137441 (n + 1)

end A137441

/-! ## A137441.P12535702614177850143

`∑[∑[n+1-A062298(n+1)]]`
-/

namespace A137441.P12535702614177850143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062298 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P12535702614177850143

namespace A137441

/-- `∑[∑[n+1-A062298(n+1)]]` -/
def P12535702614177850143.Spec : Prop :=
  ∀ n, P12535702614177850143.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P5980662109233407215

`∑[∑[∑[char[A000040(n+1)-1]]]]`
-/

namespace A137441.P5980662109233407215
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P5980662109233407215

namespace A137441

/-- `∑[∑[∑[char[A000040(n+1)-1]]]]` -/
def P5980662109233407215.Spec : Prop :=
  ∀ n, (P5980662109233407215.a n : ℤ) = A137441 (n + 1)

end A137441

/-! ## A137441.P2343802247992049025

`∑[∑[∑[C(2, A000005(n+1))]-2]]`
-/

namespace A137441.P2343802247992049025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P2343802247992049025

namespace A137441

/-- `∑[∑[∑[C(2, A000005(n+1))]-2]]` -/
def P2343802247992049025.Spec : Prop :=
  ∀ n, P2343802247992049025.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P4173583448990070086

`∑[∑[A079067(A151800(n+1))]]`
-/

namespace A137441.P4173583448990070086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A151800 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P4173583448990070086

namespace A137441

/-- `∑[∑[A079067(A151800(n+1))]]` -/
def P4173583448990070086.Spec : Prop :=
  ∀ n, P4173583448990070086.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P5544871991453106851

`∑[∑[A048865(n+1)+A001221(n+1)]]`
-/

namespace A137441.P5544871991453106851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P5544871991453106851

namespace A137441

/-- `∑[∑[A048865(n+1)+A001221(n+1)]]` -/
def P5544871991453106851.Spec : Prop :=
  ∀ n, P5544871991453106851.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P1510123956564666078

`∑[∑[A056812(n+1)+A056811(n+1)]]`
-/

namespace A137441.P1510123956564666078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (n + 1) + A056811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P1510123956564666078

namespace A137441

/-- `∑[∑[A056812(n+1)+A056811(n+1)]]` -/
def P1510123956564666078.Spec : Prop :=
  ∀ n, P1510123956564666078.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P15606346347578503949

`∑[∑[A230980(n+1)]]`
-/

namespace A137441.P15606346347578503949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P15606346347578503949

namespace A137441

/-- `∑[∑[A230980(n+1)]]` -/
def P15606346347578503949.Spec : Prop :=
  ∀ n, P15606346347578503949.a n = A137441 (n + 1)

end A137441

/-! ## A137441.P16229857009958406904

`∑[A294013(n+2)/2]`
-/

namespace A137441.P16229857009958406904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294013 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P16229857009958406904

namespace A137441

/-- `∑[A294013(n+2)/2]` -/
def P16229857009958406904.Spec : Prop :=
  ∀ n, P16229857009958406904.a n = (A137441 (n + 1) : ℚ)

end A137441

/-! ## A137441.P10023895802178497964

`∑[∑[∑[char[A000010(A014963(n+1))]]]]`
-/

namespace A137441.P10023895802178497964
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137441.P10023895802178497964

namespace A137441

/-- `∑[∑[∑[char[A000010(A014963(n+1))]]]]` -/
def P10023895802178497964.Spec : Prop :=
  ∀ n, (P10023895802178497964.a n : ℤ) = A137441 (n + 1)

end A137441

/-!
# A137442: n^2 followed by smallest integer not yet listed.

The programs for A137442, there is no canonical definition to state claims against.
-/

/-! ## A137442.P10331267044435556818

`A350150(n+1)%A160133(2*A184115(n+1))`
-/

namespace A137442.P10331267044435556818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350150 (n + 1)) (A160133 (2 * A184115 (n + 1)).toNat)

end

end A137442.P10331267044435556818

/-! ## A137442.P3129062302560902065

`A118759(A350150(n+1))`
-/

namespace A137442.P3129062302560902065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A350150 (n + 1)).toNat

end

end A137442.P3129062302560902065

/-! ## A137442.P7054601050477866136

`A000188(A350150(n+1)²)`
-/

namespace A137442.P7054601050477866136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A350150 (n + 1) ^ 2).toNat

end

end A137442.P7054601050477866136

/-! ## A137442.P2177785709564131005

`A000196(A350150(n+1)²)`
-/

namespace A137442.P2177785709564131005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A350150 (n + 1) ^ 2).toNat

end

end A137442.P2177785709564131005

/-! ## A137442.P13458643576886220143

`A018851(A350150(n+1)²)`
-/

namespace A137442.P13458643576886220143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A350150 (n + 1) ^ 2).toNat

end

end A137442.P13458643576886220143

/-!
# A137444: a(n) = 2*a(n-1) - 2*a(n-2) with a(0)=1, a(1)=4.

The programs for A137444, the canonical program `A137444.P15274822118354202086` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137444 has offset 0).

The definition of A137444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-2)` (program `A137444.P15274822118354202086`, by `A137444.P15274822118354202086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137444.P15274822118354202086

`2*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137444

/-- `2*a(n-1)-2*a(n-2)` -/
def P15274822118354202086.Spec : Prop :=
  ∀ n, P15274822118354202086.a n = A137444 n

theorem P15274822118354202086.correct : P15274822118354202086.Spec := by
  intro n
  simp only [A137444]

end A137444

/-! ## A137444.P3072627311105856503

`ogf((1+2x)/(1-2x+2x^2))`
-/

namespace A137444.P3072627311105856503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, 2] n

end

end A137444.P3072627311105856503

namespace A137444

/-- `ogf((1+2x)/(1-2x+2x^2))` -/
def P3072627311105856503.Spec : Prop :=
  ∀ n, P3072627311105856503.a n = A137444 n

end A137444

/-! ## A137444.P5767557339393340295

`-(4*a(n-4))` with `a(0)=1, a(1)=4, a(2)=6, a(3)=4`
-/

namespace A137444.P5767557339393340295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 4] fun n a =>
  -(4 * a (n - 4))

end

end A137444.P5767557339393340295

namespace A137444

/-- `-(4*a(n-4))` -/
def P5767557339393340295.Spec : Prop :=
  ∀ n, P5767557339393340295.a n = A137444 n

end A137444

/-! ## A137444.P11600903411023222188

`∏[2-2/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A137444.P11600903411023222188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 - 2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137444.P11600903411023222188

namespace A137444

/-- `∏[2-2/a(n-1)]` -/
def P11600903411023222188.Spec : Prop :=
  ∀ n, P11600903411023222188.a n = (A137444 n : ℚ)

end A137444

/-! ## A137444.P12870625207477945155

`2*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A137444.P12870625207477945155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A137444.P12870625207477945155

namespace A137444

/-- `2*(a(n-1)-a(n-2))` -/
def P12870625207477945155.Spec : Prop :=
  ∀ n, P12870625207477945155.a n = A137444 n

theorem P12870625207477945155.correct : P12870625207477945155.Spec := by
  intro n
  simp only [A137444, Nat.add_sub_cancel, A137444.P12870625207477945155.a, A137444.P15274822118354202086.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A137444

/-! ## A137444.P14214837498617059859

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=1, a(1)=4`
-/

namespace A137444.P14214837498617059859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A137444.P14214837498617059859

namespace A137444

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P14214837498617059859.Spec : Prop :=
  ∀ n, P14214837498617059859.a n = (A137444 n : ℚ)

end A137444

/-! ## A137444.P2589115654104517694

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A137444.P2589115654104517694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A137444.P2589115654104517694

namespace A137444

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P2589115654104517694.Spec : Prop :=
  ∀ n, P2589115654104517694.a n = A137444 n

end A137444

/-! ## A137444.P4052022374189501776

`A090131(n)+A009545(n)`
-/

namespace A137444.P4052022374189501776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 n + A009545 n

end

end A137444.P4052022374189501776

namespace A137444

/-- `A090131(n)+A009545(n)` -/
def P4052022374189501776.Spec : Prop :=
  ∀ n, P4052022374189501776.a n = A137444 n

end A137444

/-! ## A137444.P7924460244808519845

`A136258(n)-A009545(n)`
-/

namespace A137444.P7924460244808519845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136258 n - A009545 n

end

end A137444.P7924460244808519845

namespace A137444

/-- `A136258(n)-A009545(n)` -/
def P7924460244808519845.Spec : Prop :=
  ∀ n, P7924460244808519845.a n = A137444 n

end A137444

/-! ## A137444.P4591231035390687520

`A099087(n)-A146559(n+2)`
-/

namespace A137444.P4591231035390687520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - A146559 (n + 2)

end

end A137444.P4591231035390687520

namespace A137444

/-- `A099087(n)-A146559(n+2)` -/
def P4591231035390687520.Spec : Prop :=
  ∀ n, P4591231035390687520.a n = A137444 n

end A137444

/-! ## A137444.P990087761011746166

`A099087(n)+2*A009545(n)`
-/

namespace A137444.P990087761011746166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n + 2 * A009545 n

end

end A137444.P990087761011746166

namespace A137444

/-- `A099087(n)+2*A009545(n)` -/
def P990087761011746166.Spec : Prop :=
  ∀ n, P990087761011746166.a n = A137444 n

end A137444

/-! ## A137444.P7157837365904887464

`2*A090131(n)-A099087(n)`
-/

namespace A137444.P7157837365904887464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090131 n - A099087 n

end

end A137444.P7157837365904887464

namespace A137444

/-- `2*A090131(n)-A099087(n)` -/
def P7157837365904887464.Spec : Prop :=
  ∀ n, P7157837365904887464.a n = A137444 n

end A137444

/-! ## A137444.P8914058835354284424

`A099087(n)-Δ[A099087(n+1)]`
-/

namespace A137444.P8914058835354284424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - (f1 (n + 1) - f1 n)

end

end A137444.P8914058835354284424

namespace A137444

/-- `A099087(n)-Δ[A099087(n+1)]` -/
def P8914058835354284424.Spec : Prop :=
  ∀ n, P8914058835354284424.a n = A137444 n

end A137444

/-! ## A137444.P3877780449441524072

`A099087(n)-Δ[2*A146559(n)]`
-/

namespace A137444.P3877780449441524072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - (f1 (n + 1) - f1 n)

end

end A137444.P3877780449441524072

namespace A137444

/-- `A099087(n)-Δ[2*A146559(n)]` -/
def P3877780449441524072.Spec : Prop :=
  ∀ n, P3877780449441524072.a n = A137444 n

end A137444

/-! ## A137444.P6469124209010464041

`A009545(n+1)-A146559(n+2)`
-/

namespace A137444.P6469124209010464041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) - A146559 (n + 2)

end

end A137444.P6469124209010464041

namespace A137444

/-- `A009545(n+1)-A146559(n+2)` -/
def P6469124209010464041.Spec : Prop :=
  ∀ n, P6469124209010464041.a n = A137444 n

end A137444

/-! ## A137444.P5571112364635170116

`A009545(n+1)+2*A009545(n)`
-/

namespace A137444.P5571112364635170116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + 2 * A009545 n

end

end A137444.P5571112364635170116

namespace A137444

/-- `A009545(n+1)+2*A009545(n)` -/
def P5571112364635170116.Spec : Prop :=
  ∀ n, P5571112364635170116.a n = A137444 n

end A137444

/-! ## A137444.P6467693193648681751

`A077860(n+1)-(A146559(n+1)+1)`
-/

namespace A137444.P6467693193648681751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 (n + 1) - (A146559 (n + 1) + 1)

end

end A137444.P6467693193648681751

namespace A137444

/-- `A077860(n+1)-(A146559(n+1)+1)` -/
def P6467693193648681751.Spec : Prop :=
  ∀ n, P6467693193648681751.a n = A137444 n

end A137444

/-! ## A137444.P7553413210082399552

`A099087(n)+2*A099087(A263313(n))`
-/

namespace A137444.P7553413210082399552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n + 2 * A099087 (A263313 n).toNat

end

end A137444.P7553413210082399552

namespace A137444

/-- `A099087(n)+2*A099087(A263313(n))` -/
def P7553413210082399552.Spec : Prop :=
  ∀ n, P7553413210082399552.a n = A137444 n

end A137444

/-! ## A137444.P7468892819053470691

`A090131(n)-(A146559(n)-A099087(n))`
-/

namespace A137444.P7468892819053470691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 n - (A146559 n - A099087 n)

end

end A137444.P7468892819053470691

namespace A137444

/-- `A090131(n)-(A146559(n)-A099087(n))` -/
def P7468892819053470691.Spec : Prop :=
  ∀ n, P7468892819053470691.a n = A137444 n

end A137444

/-! ## A137444.P12249871765168968875

`A090131(n)+A146559(n)-A146559(n+1)`
-/

namespace A137444.P12249871765168968875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 n + (A146559 n - A146559 (n + 1))

end

end A137444.P12249871765168968875

namespace A137444

/-- `A090131(n)+A146559(n)-A146559(n+1)` -/
def P12249871765168968875.Spec : Prop :=
  ∀ n, P12249871765168968875.a n = A137444 n

end A137444

/-!
# A137445: a(n) = 2a(n-1)-2a(n-2), with a(0)=3 and a(1)=2.

The programs for A137445, the canonical program `A137445.P17191714864367264060` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137445 has offset 0).

The definition of A137445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-2)` (program `A137445.P17191714864367264060`, by `A137445.P17191714864367264060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137445.P17191714864367264060

`2*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137445

/-- `2*a(n-1)-2*a(n-2)` -/
def P17191714864367264060.Spec : Prop :=
  ∀ n, P17191714864367264060.a n = A137445 n

theorem P17191714864367264060.correct : P17191714864367264060.Spec := by
  intro n
  simp only [A137445]

end A137445

/-! ## A137445.P13435910480877547800

`(-1)^(n+1)*A134142(n+1)`
-/

namespace A137445.P13435910480877547800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A134142 (n + 1)

end

end A137445.P13435910480877547800

namespace A137445

/-- `(-1)^(n+1)*A134142(n+1)` -/
def P13435910480877547800.Spec : Prop :=
  ∀ n, P13435910480877547800.a n = A137445 n

end A137445

/-! ## A137445.P12913660716885529711

`ogf((3-4x)/(1-2x+2x^2))`
-/

namespace A137445.P12913660716885529711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -2, 2] n

end

end A137445.P12913660716885529711

namespace A137445

/-- `ogf((3-4x)/(1-2x+2x^2))` -/
def P12913660716885529711.Spec : Prop :=
  ∀ n, P12913660716885529711.a n = A137445 n

end A137445

/-! ## A137445.P16488876352390935888

`Δ[-(4*a(n-4))]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=4`
-/

namespace A137445.P16488876352390935888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 4] fun n f1 =>
  -(4 * f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137445.P16488876352390935888

namespace A137445

/-- `Δ[-(4*a(n-4))]` -/
def P16488876352390935888.Spec : Prop :=
  ∀ n, P16488876352390935888.a n = A137445 n

end A137445

/-! ## A137445.P15629975906284525902

`2*(a(n-1)-a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A137445.P15629975906284525902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A137445.P15629975906284525902

namespace A137445

/-- `2*(a(n-1)-a(n-2))` -/
def P15629975906284525902.Spec : Prop :=
  ∀ n, P15629975906284525902.a n = A137445 n

theorem P15629975906284525902.correct : P15629975906284525902.Spec := by
  intro n
  simp only [A137445, Nat.add_sub_cancel, A137445.P15629975906284525902.a, A137445.P17191714864367264060.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A137445

/-! ## A137445.P16185754743867846999

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=3, a(1)=2`
-/

namespace A137445.P16185754743867846999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A137445.P16185754743867846999

namespace A137445

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P16185754743867846999.Spec : Prop :=
  ∀ n, P16185754743867846999.a n = (A137445 n : ℚ)

end A137445

/-! ## A137445.P12886345127212916928

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=3, a(1)=2, a(2)=-2`
-/

namespace A137445.P12886345127212916928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, -2] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A137445.P12886345127212916928

namespace A137445

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P12886345127212916928.Spec : Prop :=
  ∀ n, P12886345127212916928.a n = A137445 n

end A137445

/-! ## A137445.P5853832505302292365

`Δ[A137444(n)]`
-/

namespace A137445.P5853832505302292365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137445.P5853832505302292365

namespace A137445

/-- `Δ[A137444(n)]` -/
def P5853832505302292365.Spec : Prop :=
  ∀ n, P5853832505302292365.a n = A137445 n

end A137445

/-! ## A137445.P9662329414876163523

`A137444(n+2)/2`
-/

namespace A137445.P9662329414876163523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137444 (n + 2) : ℚ) / 2

end

end A137445.P9662329414876163523

namespace A137445

/-- `A137444(n+2)/2` -/
def P9662329414876163523.Spec : Prop :=
  ∀ n, P9662329414876163523.a n = (A137445 n : ℚ)

end A137445

/-! ## A137445.P15509969142292162797

`∑[A138614(2*n)]+2`
-/

namespace A137445.P15509969142292162797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138614 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A137445.P15509969142292162797

namespace A137445

/-- `∑[A138614(2*n)]+2` -/
def P15509969142292162797.Spec : Prop :=
  ∀ n, P15509969142292162797.a n = A137445 n

end A137445

/-! ## A137445.P6052941794596685928

`a(n-1)-A137444(n-1)` with `a(0)=3`
-/

namespace A137445.P6052941794596685928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - A137444 (n - 1)

end

end A137445.P6052941794596685928

namespace A137445

/-- `a(n-1)-A137444(n-1)` -/
def P6052941794596685928.Spec : Prop :=
  ∀ n, P6052941794596685928.a n = A137445 n

end A137445

/-! ## A137445.P15531042504768417202

`A099087(n+2)+A099087(n)`
-/

namespace A137445.P15531042504768417202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 2) + A099087 n

end

end A137445.P15531042504768417202

namespace A137445

/-- `A099087(n+2)+A099087(n)` -/
def P15531042504768417202.Spec : Prop :=
  ∀ n, P15531042504768417202.a n = A137445 n

end A137445

/-! ## A137445.P15479721382812834844

`A137444(n+1)-A137444(n)`
-/

namespace A137445.P15479721382812834844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137444 (n + 1) - A137444 n

end

end A137445.P15479721382812834844

namespace A137445

/-- `A137444(n+1)-A137444(n)` -/
def P15479721382812834844.Spec : Prop :=
  ∀ n, P15479721382812834844.a n = A137445 n

end A137445

/-! ## A137445.P16382140959878287212

`A146559(n+1)+A009545(n+2)`
-/

namespace A137445.P16382140959878287212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 1) + A009545 (n + 2)

end

end A137445.P16382140959878287212

namespace A137445

/-- `A146559(n+1)+A009545(n+2)` -/
def P16382140959878287212.Spec : Prop :=
  ∀ n, P16382140959878287212.a n = A137445 n

end A137445

/-! ## A137445.P10028370939450952546

`A146559(n+2)+A090131(n+1)`
-/

namespace A137445.P10028370939450952546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 2) + A090131 (n + 1)

end

end A137445.P10028370939450952546

namespace A137445

/-- `A146559(n+2)+A090131(n+1)` -/
def P10028370939450952546.Spec : Prop :=
  ∀ n, P10028370939450952546.a n = A137445 n

end A137445

/-! ## A137445.P5634208473677178403

`A009545(n+1)+A009545(n+3)`
-/

namespace A137445.P5634208473677178403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + A009545 (n + 3)

end

end A137445.P5634208473677178403

namespace A137445

/-- `A009545(n+1)+A009545(n+3)` -/
def P5634208473677178403.Spec : Prop :=
  ∀ n, P5634208473677178403.a n = A137445 n

end A137445

/-! ## A137445.P9980015012249090794

`A146559(n+1)+2*A146559(n)`
-/

namespace A137445.P9980015012249090794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 1) + 2 * A146559 n

end

end A137445.P9980015012249090794

namespace A137445

/-- `A146559(n+1)+2*A146559(n)` -/
def P9980015012249090794.Spec : Prop :=
  ∀ n, P9980015012249090794.a n = A137445 n

end A137445

/-! ## A137445.P5132273976220273891

`A138232(2*n)+2*A138231(2*n+1)`
-/

namespace A137445.P5132273976220273891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (2 * n) + 2 * A138231 (2 * n + 1)

end

end A137445.P5132273976220273891

namespace A137445

/-- `A138232(2*n)+2*A138231(2*n+1)` -/
def P5132273976220273891.Spec : Prop :=
  ∀ n, P5132273976220273891.a n = A137445 n

end A137445

/-! ## A137445.P16505127918910650856

`A077950(n+1)+A078014(n)+A077950(n+1)`
-/

namespace A137445.P16505127918910650856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077950 (n + 1) + (A078014 n + A077950 (n + 1))

end

end A137445.P16505127918910650856

namespace A137445

/-- `A077950(n+1)+A078014(n)+A077950(n+1)` -/
def P16505127918910650856.Spec : Prop :=
  ∀ n, P16505127918910650856.a n = A137445 n

end A137445

/-! ## A137445.P3413134662415890719

`A077860(n+1)+A146559(n+1)-A077860(n)`
-/

namespace A137445.P3413134662415890719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 (n + 1) + (A146559 (n + 1) - A077860 n)

end

end A137445.P3413134662415890719

namespace A137445

/-- `A077860(n+1)+A146559(n+1)-A077860(n)` -/
def P3413134662415890719.Spec : Prop :=
  ∀ n, P3413134662415890719.a n = A137445 n

end A137445

/-!
# A137446: Positive numbers k such that k^2 +- (k-1) are primes.

The programs for A137446, there is no canonical definition to state claims against.
-/

/-! ## A137446.P7965909704955686668

`A211181(n+1)+1`
-/

namespace A137446.P7965909704955686668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211181 (n + 1) + 1

end

end A137446.P7965909704955686668

/-! ## A137446.P4964036471952512076

`∩[A002328(n+1)-1, A055494(n+1)]`
-/

namespace A137446.P4964036471952512076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137446.P4964036471952512076

/-! ## A137446.P9854278821582851140

`∩[A045546(n+1), A055494(n+1)]`
-/

namespace A137446.P9854278821582851140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137446.P9854278821582851140

/-! ## A137446.P3281677075007241299

`∩[A002384(n+1)+1, A045546(n+1)]`
-/

namespace A137446.P3281677075007241299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137446.P3281677075007241299

/-! ## A137446.P14704379981704010410

`∩[A002384(n+1), A094210(n+1)]+1`
-/

namespace A137446.P14704379981704010410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A137446.P14704379981704010410

/-! ## A137446.P5918838340569135552

`∩[A055494(n+1), A094210(n+1)+1]`
-/

namespace A137446.P5918838340569135552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137446.P5918838340569135552

/-! ## A137446.P8078761777551416955

`A020725(A211181(n+1))`
-/

namespace A137446.P8078761777551416955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A211181 (n + 1)).toNat

end

end A137446.P8078761777551416955

/-! ## A137446.P17607209132605593724

`eq[4, A278251(n+1)+A278247(n)]+1`
-/

namespace A137446.P17607209132605593724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (n + 1) + A278247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137446.P17607209132605593724

/-! ## A137446.P18239678874409992539

`∩[A020725(A002384(n+1)), A045546(n+1)]`
-/

namespace A137446.P18239678874409992539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137446.P18239678874409992539

/-! ## A137446.P11238295380305876952

`∩[A023443(A002328(n+1)), A055494(n+1)]`
-/

namespace A137446.P11238295380305876952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002328 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137446.P11238295380305876952

/-!
# A137447: a(n) = 4*a(n-4) for n>3, a(0)=-1, a(1)=-4, a(2)=2, a(3)=12.

The programs for A137447, the canonical program `A137447.P1508588796444540188` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137447 has offset 0).

The definition of A137447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-4)` (program `A137447.P1508588796444540188`, by `A137447.P1508588796444540188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137447.P1508588796444540188

`4*a(n-4)` with `a(0)=-1, a(1)=-4, a(2)=2, a(3)=12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137447

/-- `4*a(n-4)` -/
def P1508588796444540188.Spec : Prop :=
  ∀ n, P1508588796444540188.a n = A137447 n

theorem P1508588796444540188.correct : P1508588796444540188.Spec := by
  intro n
  simp only [A137447]

end A137447

/-! ## A137447.P2713326008902071534

`Δ[abs(A099087(n))*A132429(n)]`
-/

namespace A137447.P2713326008902071534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099087 n| * A132429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137447.P2713326008902071534

namespace A137447

/-- `Δ[abs(A099087(n))*A132429(n)]` -/
def P2713326008902071534.Spec : Prop :=
  ∀ n, P2713326008902071534.a n = A137447 n

end A137447

/-! ## A137447.P3420319197148572472

`Δ[abs(A108520(n))*A132429(n)]`
-/

namespace A137447.P3420319197148572472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108520 n| * A132429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137447.P3420319197148572472

namespace A137447

/-- `Δ[abs(A108520(n))*A132429(n)]` -/
def P3420319197148572472.Spec : Prop :=
  ∀ n, P3420319197148572472.a n = A137447 n

end A137447

/-! ## A137447.P4780034223852456131

`Δ[Δ[abs(A137444(n))]]`
-/

namespace A137447.P4780034223852456131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137444 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137447.P4780034223852456131

namespace A137447

/-- `Δ[Δ[abs(A137444(n))]]` -/
def P4780034223852456131.Spec : Prop :=
  ∀ n, P4780034223852456131.a n = A137447 n

end A137447

/-! ## A137447.P8231246030660234513

`Δ[Δ[abs(A137429(n))]]`
-/

namespace A137447.P8231246030660234513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137429 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137447.P8231246030660234513

namespace A137447

/-- `Δ[Δ[abs(A137429(n))]]` -/
def P8231246030660234513.Spec : Prop :=
  ∀ n, P8231246030660234513.a n = A137447 n

end A137447

/-! ## A137447.P4814163949949222523

`Δ[A075553(n+5)*A134142(n+1)]`
-/

namespace A137447.P4814163949949222523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (n + 5) * A134142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137447.P4814163949949222523

namespace A137447

/-- `Δ[A075553(n+5)*A134142(n+1)]` -/
def P4814163949949222523.Spec : Prop :=
  ∀ n, P4814163949949222523.a n = A137447 n

end A137447

/-!
# A137448: Triangle T(n,k) = (1-k*(k-1))*A053120(n,k), read by rows, 0<=k<=n.

The programs for A137448, the canonical program `A137448.P2563997744992654951` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137448 has offset 0).

The definition of A137448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137448.P2563997744992654951

`(A002260(n+1)-A143844(n))*A053120(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A137448

/-- `(A002260(n+1)-A143844(n))*A053120(n)` -/
def P2563997744992654951.Spec : Prop :=
  ∀ n, P2563997744992654951.a n = A137448 n

theorem P2563997744992654951.correct : P2563997744992654951.Spec := by
  intro n
  simp only [A137448]

end A137448

/-!
# A137450: A038610(n) (the LCM of the positive integers that are <= n and are coprime to n) is the a(n)-th positive integer that is coprime to n.

The programs for A137450, there is no canonical definition to state claims against.
-/

/-! ## A137450.P10912603704928100058

`ceil(A000010(n+1)/(n+1)*A038610(n+1))`
-/

namespace A137450.P10912603704928100058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / (n + 1 : ℚ) * (A038610 (n + 1) : ℚ)⌉

end

end A137450.P10912603704928100058

/-!
# A137451: a(1)=1. a(n) = the smallest integer > a(n-1) such that a(n)+a(k), for some k where 1<=k<=n, is the n-th prime.

The programs for A137451, there is no canonical definition to state claims against.
-/

/-! ## A137451.P2585278470700148794

`lt[Δ[A058091(n)], A072651(n+3)]`
-/

namespace A137451.P2585278470700148794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072651 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A137451.P2585278470700148794

/-! ## A137451.P17565160571072334446

`lt[A339270(A233546(n+2)), A016001(n+2)]`
-/

namespace A137451.P17565160571072334446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (A233546 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016001 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137451.P17565160571072334446

/-!
# A137452: Triangular array of the coefficients of the sequence of Abel polynomials A(n,x) := x*(x-n)^(n-1).

The programs for A137452, there is no canonical definition to state claims against.
-/

/-! ## A137452.P13588282923883470008

`A091917(n)*A232006(n)`
-/

namespace A137452.P13588282923883470008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n * A232006 n

end

end A137452.P13588282923883470008

/-! ## A137452.P205412070866222477

`A130595(n)*A232006(n)`
-/

namespace A137452.P205412070866222477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A232006 n

end

end A137452.P205412070866222477

/-! ## A137452.P16083468745332901091

`A243203(abs(1-n)+1)/A008279(n)*A130595(n)`
-/

namespace A137452.P16083468745332901091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (A008279 n : ℚ) * (A130595 n : ℚ)

end

end A137452.P16083468745332901091

/-! ## A137452.P148220013606835399

`(A000007(n)+A243203(n)/A008279(n))*A130595(n)`
-/

namespace A137452.P148220013606835399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000007 n : ℚ) + (A243203 n : ℚ) / (A008279 n : ℚ)) * (A130595 n : ℚ)

end

end A137452.P148220013606835399

/-! ## A137452.P3133348647685299638

`(A014574(n+1)%3+A243203(n)/A008279(n))*A130595(n)`
-/

namespace A137452.P3133348647685299638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.tmod (A014574 (n + 1)) 3 : ℚ) + (A243203 n : ℚ) / (A008279 n : ℚ)) * (A130595 n : ℚ)

end

end A137452.P3133348647685299638

/-! ## A137452.P4860664923065471281

`(A002457(n)%2+A243203(n)/A008279(n))*A130595(n)`
-/

namespace A137452.P4860664923065471281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.tmod (A002457 n) 2 : ℚ) + (A243203 n : ℚ) / (A008279 n : ℚ)) * (A130595 n : ℚ)

end

end A137452.P4860664923065471281

/-!
# A137457: Consider a row of standard dice as a counter. This sequence enumerates the number of changes (one face rotated over an edge to an adjacent face) from n-1 to n.

The programs for A137457, the canonical program `A137457.P14249740043583660257` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137457 has offset 0).

The definition of A137457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137457.P338557461433388375

`val(3*floor(2/acot(n))², 6)`
-/

namespace A137457.P338557461433388375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2).toNat 6

end

end A137457.P338557461433388375

namespace A137457

/-- `val(3*floor(2/acot(n))², 6)` -/
def P338557461433388375.Spec : Prop :=
  ∀ n, (P338557461433388375.a n : ℤ) = A137457 n

end A137457

/-! ## A137457.P14249740043583660257

`val(A289443(2*n), 6)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137457

/-- `val(A289443(2*n), 6)` -/
def P14249740043583660257.Spec : Prop :=
  ∀ n, (P14249740043583660257.a n : ℤ) = A137457 n

theorem P14249740043583660257.correct : P14249740043583660257.Spec := by
  intro n
  simp only [A137457]

end A137457

/-! ## A137457.P12028003387979577167

`val(A008810(A008458(n)), 6)`
-/

namespace A137457.P12028003387979577167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008810 (A008458 n).toNat).toNat 6

end

end A137457.P12028003387979577167

namespace A137457

/-- `val(A008810(A008458(n)), 6)` -/
def P12028003387979577167.Spec : Prop :=
  ∀ n, (P12028003387979577167.a n : ℤ) = A137457 n

end A137457

/-! ## A137457.P15306726342033909065

`val(A008574(3*n²), 6)`
-/

namespace A137457.P15306726342033909065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008574 (3 * n ^ 2)).toNat 6

end

end A137457.P15306726342033909065

namespace A137457

/-- `val(A008574(3*n²), 6)` -/
def P15306726342033909065.Spec : Prop :=
  ∀ n, (P15306726342033909065.a n : ℤ) = A137457 n

end A137457

/-! ## A137457.P5680351987100069277

`val(A000217(A009943(2*n)), 6)`
-/

namespace A137457.P5680351987100069277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (A009943 (2 * n)).toNat).toNat 6

end

end A137457.P5680351987100069277

namespace A137457

/-- `val(A000217(A009943(2*n)), 6)` -/
def P5680351987100069277.Spec : Prop :=
  ∀ n, (P5680351987100069277.a n : ℤ) = A137457 n

end A137457

/-!
# A137458: Prime(core(n)).

The programs for A137458, the canonical program `A137458.P10395638896452164860` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137458 has offset 1).

The definition of A137458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137458.P10395638896452164860

`A000040(A007913(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137458

/-- `A000040(A007913(n+1))` -/
def P10395638896452164860.Spec : Prop :=
  ∀ n, P10395638896452164860.a n = A137458 (n + 1)

theorem P10395638896452164860.correct : P10395638896452164860.Spec := by
  intro n
  simp only [A137458, Nat.add_sub_cancel]

end A137458

/-! ## A137458.P6215498444926118840

`A000040(Δ[A069891(n)])`
-/

namespace A137458.P6215498444926118840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A137458.P6215498444926118840

namespace A137458

/-- `A000040(Δ[A069891(n)])` -/
def P6215498444926118840.Spec : Prop :=
  ∀ n, P6215498444926118840.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P5584268155612819912

`A000040(sqrt(A055491(n+1)))`
-/

namespace A137458.P5584268155612819912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A137458.P5584268155612819912

namespace A137458

/-- `A000040(sqrt(A055491(n+1)))` -/
def P5584268155612819912.Spec : Prop :=
  ∀ n, P5584268155612819912.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P2710626003829140592

`A008578(A007913(n+1)+1)`
-/

namespace A137458.P2710626003829140592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007913 (n + 1) + 1).toNat

end

end A137458.P2710626003829140592

namespace A137458

/-- `A008578(A007913(n+1)+1)` -/
def P2710626003829140592.Spec : Prop :=
  ∀ n, P2710626003829140592.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P14505876219958113420

`A182986(A007913(n+1)+1)`
-/

namespace A137458.P14505876219958113420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A007913 (n + 1) + 1).toNat

end

end A137458.P14505876219958113420

namespace A137458

/-- `A182986(A007913(n+1)+1)` -/
def P14505876219958113420.Spec : Prop :=
  ∀ n, P14505876219958113420.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P13996607646145295846

`A158611(A007913(n+1)+2)`
-/

namespace A137458.P13996607646145295846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A007913 (n + 1) + 2).toNat

end

end A137458.P13996607646145295846

namespace A137458

/-- `A158611(A007913(n+1)+2)` -/
def P13996607646145295846.Spec : Prop :=
  ∀ n, P13996607646145295846.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P12549239433844735618

`A001747(A007913(n+1)+1)/2`
-/

namespace A137458.P12549239433844735618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A007913 (n + 1) + 1).toNat : ℚ) / 2

end

end A137458.P12549239433844735618

namespace A137458

/-- `A001747(A007913(n+1)+1)/2` -/
def P12549239433844735618.Spec : Prop :=
  ∀ n, P12549239433844735618.a n = (A137458 (n + 1) : ℚ)

end A137458

/-! ## A137458.P16953458532060616716

`A000040(1-A326128(n+1)+n)`
-/

namespace A137458.P16953458532060616716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - A326128 (n + 1) + (n : ℤ)).toNat

end

end A137458.P16953458532060616716

namespace A137458

/-- `A000040(1-A326128(n+1)+n)` -/
def P16953458532060616716.Spec : Prop :=
  ∀ n, P16953458532060616716.a n = A137458 (n + 1)

theorem P16953458532060616716.correct : P16953458532060616716.Spec := by
  intro n
  simp only [A137458, Nat.add_sub_cancel, A137458.P16953458532060616716.a, A137458.P10395638896452164860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007913, A007913.P11359412940648999332.a, A326128, A326128.P4962900157914824511.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137458

/-! ## A137458.P1801629466226797614

`A000040((n+1)/A008833(n+1))`
-/

namespace A137458.P1801629466226797614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A137458.P1801629466226797614

namespace A137458

/-- `A000040((n+1)/A008833(n+1))` -/
def P1801629466226797614.Spec : Prop :=
  ∀ n, P1801629466226797614.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P13818480426912201964

`A000040(A053143(n+1)/(n+1))`
-/

namespace A137458.P13818480426912201964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A137458.P13818480426912201964

namespace A137458

/-- `A000040(A053143(n+1)/(n+1))` -/
def P13818480426912201964.Spec : Prop :=
  ∀ n, P13818480426912201964.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P6348350079191837344

`A000040(gcd(n+1, A326128(n+1)))`
-/

namespace A137458.P6348350079191837344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (n + 1 : ℤ) (A326128 (n + 1)))

end

end A137458.P6348350079191837344

namespace A137458

/-- `A000040(gcd(n+1, A326128(n+1)))` -/
def P6348350079191837344.Spec : Prop :=
  ∀ n, P6348350079191837344.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P6027716203632923843

`A000040((n+1)/A000188(n+1)²)`
-/

namespace A137458.P6027716203632923843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ))).toNat

end

end A137458.P6027716203632923843

namespace A137458

/-- `A000040((n+1)/A000188(n+1)²)` -/
def P6027716203632923843.Spec : Prop :=
  ∀ n, P6027716203632923843.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P13298904601399302428

`A000040(A019554(n+1)²/(n+1))`
-/

namespace A137458.P13298904601399302428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A019554 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat

end

end A137458.P13298904601399302428

namespace A137458

/-- `A000040(A019554(n+1)²/(n+1))` -/
def P13298904601399302428.Spec : Prop :=
  ∀ n, P13298904601399302428.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P5398674219356361174

`A000040(∑{d}[n+1, #]-A326126(n+1))`
-/

namespace A137458.P5398674219356361174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A326126 (n + 1)).toNat

end

end A137458.P5398674219356361174

namespace A137458

/-- `A000040(∑{d}[n+1, #]-A326126(n+1))` -/
def P5398674219356361174.Spec : Prop :=
  ∀ n, P5398674219356361174.a n = A137458 (n + 1)

theorem P5398674219356361174.correct : P5398674219356361174.Spec := by
  intro n
  simp only [A137458, Nat.add_sub_cancel, A137458.P5398674219356361174.f1, A137458.P5398674219356361174.a, A137458.P10395638896452164860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007913, A007913.P11359412940648999332.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137458

/-! ## A137458.P422727674032530368

`A040976(abs(1-A007913(n+1))+1)+2`
-/

namespace A137458.P422727674032530368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (|1 - A007913 (n + 1)| + 1).toNat + 2

end

end A137458.P422727674032530368

namespace A137458

/-- `A040976(abs(1-A007913(n+1))+1)+2` -/
def P422727674032530368.Spec : Prop :=
  ∀ n, P422727674032530368.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P7911486640757669139

`A000040(A069891(n+1)-A069891(n))`
-/

namespace A137458.P7911486640757669139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A069891 (n + 1) - A069891 n).toNat

end

end A137458.P7911486640757669139

namespace A137458

/-- `A000040(A069891(n+1)-A069891(n))` -/
def P7911486640757669139.Spec : Prop :=
  ∀ n, P7911486640757669139.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P18244585733360614764

`A000040(A000203(n+1)-A326126(n+1))`
-/

namespace A137458.P18244585733360614764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000203 (n + 1) - A326126 (n + 1)).toNat

end

end A137458.P18244585733360614764

namespace A137458

/-- `A000040(A000203(n+1)-A326126(n+1))` -/
def P18244585733360614764.Spec : Prop :=
  ∀ n, P18244585733360614764.a n = A137458 (n + 1)

theorem P18244585733360614764.correct : P18244585733360614764.Spec := by
  intro n
  simp only [A137458, Nat.add_sub_cancel, A137458.P18244585733360614764.a, A137458.P10395638896452164860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A326126, A326126.P126110095243043684.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137458

/-! ## A137458.P11293792382227416285

`A000040((n+1)/A000290(A000188(n+1)))`
-/

namespace A137458.P11293792382227416285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000290 (A000188 (n + 1)).toNat : ℚ))).toNat

end

end A137458.P11293792382227416285

namespace A137458

/-- `A000040((n+1)/A000290(A000188(n+1)))` -/
def P11293792382227416285.Spec : Prop :=
  ∀ n, P11293792382227416285.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P8742012291261656623

`A000040(A039653(n+1)+1-A326126(n+1))`
-/

namespace A137458.P8742012291261656623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A039653 (n + 1) + 1 - A326126 (n + 1)).toNat

end

end A137458.P8742012291261656623

namespace A137458

/-- `A000040(A039653(n+1)+1-A326126(n+1))` -/
def P8742012291261656623.Spec : Prop :=
  ∀ n, P8742012291261656623.a n = A137458 (n + 1)

end A137458

/-! ## A137458.P16110991497967451957

`A000040(A088580(n+1)-(A326126(n+1)+1))`
-/

namespace A137458.P16110991497967451957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088580 (n + 1) - (A326126 (n + 1) + 1)).toNat

end

end A137458.P16110991497967451957

namespace A137458

/-- `A000040(A088580(n+1)-(A326126(n+1)+1))` -/
def P16110991497967451957.Spec : Prop :=
  ∀ n, P16110991497967451957.a n = A137458 (n + 1)

theorem P16110991497967451957.correct : P16110991497967451957.Spec := by
  intro n
  simp only [A137458, Nat.add_sub_cancel, A137458.P16110991497967451957.a, A137458.P10395638896452164860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007913, A007913.P11359412940648999332.a, A088580, A088580.P3089093194242277422.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137458

/-!
# A137459: Prime numbers n such that n^2 +- (n-1) are primes.

The programs for A137459, there is no canonical definition to state claims against.
-/

/-! ## A137459.P9684933019722693806

`∩[A053184(n+1), A065508(n+1)]`
-/

namespace A137459.P9684933019722693806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P9684933019722693806

/-! ## A137459.P13674658356280926512

`p?[A137446(n+1)]`
-/

namespace A137459.P13674658356280926512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137459.P13674658356280926512

/-! ## A137459.P5522539832356459318

`p?[A211181(n+1)+1]`
-/

namespace A137459.P5522539832356459318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211181 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137459.P5522539832356459318

/-! ## A137459.P15744467028231928623

`∩[A053184(n+1), A137446(n+1)]`
-/

namespace A137459.P15744467028231928623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P15744467028231928623

/-! ## A137459.P15435742064771074369

`∩[A065508(n+1), A137446(n+1)]`
-/

namespace A137459.P15435742064771074369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P15435742064771074369

/-! ## A137459.P12735010975462909620

`∩[A053184(n+1), A259145(n+1)]`
-/

namespace A137459.P12735010975462909620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P12735010975462909620

/-! ## A137459.P9446008272196352316

`∩[A045331(n+1), A137446(n+1)]`
-/

namespace A137459.P9446008272196352316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P9446008272196352316

/-! ## A137459.P974073182638090765

`∩[A065508(n+1), A275059(n+1)]`
-/

namespace A137459.P974073182638090765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P974073182638090765

/-! ## A137459.P14596037361975819462

`p?[∩[A259145(n+1), A275059(n+1)]]`
-/

namespace A137459.P14596037361975819462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137459.P14596037361975819462

/-! ## A137459.P3078055094236788909

`∩[A040116(n+1), A137446(n+1)]`
-/

namespace A137459.P3078055094236788909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P3078055094236788909

/-! ## A137459.P13966580248172924323

`∩[A045320(n+1), A137446(n+1)]`
-/

namespace A137459.P13966580248172924323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P13966580248172924323

/-! ## A137459.P14450924425324944684

`∩[A045334(n+1), A137446(n+1)]`
-/

namespace A137459.P14450924425324944684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P14450924425324944684

/-! ## A137459.P15171338413934435103

`∩[A059456(n+1), A137446(n+1)]`
-/

namespace A137459.P15171338413934435103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P15171338413934435103

/-! ## A137459.P8430791096037121326

`∩[A000040(n+1), A137446(n+1)]`
-/

namespace A137459.P8430791096037121326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P8430791096037121326

/-! ## A137459.P5624141540963393248

`∩[A008578(n+1), A137446(n+1)]`
-/

namespace A137459.P5624141540963393248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P5624141540963393248

/-! ## A137459.P18194315097966839942

`∩[A045319(n+1), A137446(n+1)]`
-/

namespace A137459.P18194315097966839942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P18194315097966839942

/-! ## A137459.P635205980335611445

`∩[A106118(n+1), A137446(n+1)]`
-/

namespace A137459.P635205980335611445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P635205980335611445

/-! ## A137459.P8659327089972914082

`∩[A137446(n+1), A158611(n+1)]`
-/

namespace A137459.P8659327089972914082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P8659327089972914082

/-! ## A137459.P8747061364757594646

`∩[A137446(n+1), A182986(n+1)]`
-/

namespace A137459.P8747061364757594646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P8747061364757594646

/-! ## A137459.P7778595204799938054

`∩[A137446(n+1), A326715(n+1)]`
-/

namespace A137459.P7778595204799938054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137459.P7778595204799938054

/-!
# A137460: Prime numbers k such that k^2 +- (k+1) are primes.

The programs for A137460, there is no canonical definition to state claims against.
-/

/-! ## A137460.P9888142337852410364

`p?[A100712(n+1)]`
-/

namespace A137460.P9888142337852410364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137460.P9888142337852410364

/-! ## A137460.P16545843228285429492

`p?[record[A100712(A324347(n))]]`
-/

namespace A137460.P16545843228285429492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137460.P16545843228285429492

/-! ## A137460.P9582507239990696280

`∩[A053182(n+1), A100712(n+1)]`
-/

namespace A137460.P9582507239990696280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P9582507239990696280

/-! ## A137460.P10010958446682022994

`∩[A002328(n+1), A053182(n+1)]`
-/

namespace A137460.P10010958446682022994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P10010958446682022994

/-! ## A137460.P4982483240309054039

`∩[A045309(n+1), A100712(n+1)]`
-/

namespace A137460.P4982483240309054039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P4982483240309054039

/-! ## A137460.P12886137745026347243

`∩[A045410(n+1), A100712(n+1)]`
-/

namespace A137460.P12886137745026347243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P12886137745026347243

/-! ## A137460.P6839165070844122178

`∩[A040028(n+1), A100712(n+1)]`
-/

namespace A137460.P6839165070844122178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P6839165070844122178

/-! ## A137460.P6152000980980011363

`∩[A040036(n+1), A100712(n+1)]`
-/

namespace A137460.P6152000980980011363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P6152000980980011363

/-! ## A137460.P10342977840524280736

`∩[A040044(n+1), A100712(n+1)]`
-/

namespace A137460.P10342977840524280736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P10342977840524280736

/-! ## A137460.P10713779504502170309

`∩[A040046(n+1), A100712(n+1)]`
-/

namespace A137460.P10713779504502170309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P10713779504502170309

/-! ## A137460.P6589453352015839862

`∩[A040049(n+1), A100712(n+1)]`
-/

namespace A137460.P6589453352015839862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P6589453352015839862

/-! ## A137460.P10375691867541203577

`∩[A040054(n+1), A100712(n+1)]`
-/

namespace A137460.P10375691867541203577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P10375691867541203577

/-! ## A137460.P4561895021504588568

`∩[A040060(n+1), A100712(n+1)]`
-/

namespace A137460.P4561895021504588568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P4561895021504588568

/-! ## A137460.P1985764870443101566

`∩[A040062(n+1), A100712(n+1)]`
-/

namespace A137460.P1985764870443101566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P1985764870443101566

/-! ## A137460.P12743136547507158955

`∩[A040078(n+1), A100712(n+1)]`
-/

namespace A137460.P12743136547507158955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P12743136547507158955

/-! ## A137460.P1848115741362974918

`∩[A040083(n+1), A100712(n+1)]`
-/

namespace A137460.P1848115741362974918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P1848115741362974918

/-! ## A137460.P423540090461064336

`∩[A040085(n+1), A100712(n+1)]`
-/

namespace A137460.P423540090461064336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P423540090461064336

/-! ## A137460.P17786214279548404818

`∩[A040087(n+1), A100712(n+1)]`
-/

namespace A137460.P17786214279548404818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P17786214279548404818

/-! ## A137460.P12372299793470757902

`∩[A040095(n+1), A100712(n+1)]`
-/

namespace A137460.P12372299793470757902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P12372299793470757902

/-! ## A137460.P16336154502713889889

`∩[A045398(n+1), A100712(n+1)]`
-/

namespace A137460.P16336154502713889889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137460.P16336154502713889889

/-!
# A137461: Positive numbers k such that k^3 + k - 1 and k^3 - k + 1 are both primes.

The programs for A137461, there is no canonical definition to state claims against.
-/

/-! ## A137461.P14925051885721049049

`∩[A236475(n+1), A236477(n+1)]`
-/

namespace A137461.P14925051885721049049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137461.P14925051885721049049

/-!
# A137462: a(n) + a(n-1) = n-th semiprime.

The programs for A137462, the canonical program `A137462.P13175994187480272432` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137462 has offset 0).

The definition of A137462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137462.P14414273504173132852

`A001358(n)-a(n-1)` with `a(0)=1`
-/

namespace A137462.P14414273504173132852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001358 n - a (n - 1)

end

end A137462.P14414273504173132852

namespace A137462

/-- `A001358(n)-a(n-1)` -/
def P14414273504173132852.Spec : Prop :=
  ∀ n, P14414273504173132852.a n = A137462 n

end A137462

/-! ## A137462.P16511978417903470379

`A176540(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A137462.P16511978417903470379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176540 (n + 1) - a (n - 1)

end

end A137462.P16511978417903470379

namespace A137462

/-- `A176540(n+1)-a(n-1)` -/
def P16511978417903470379.Spec : Prop :=
  ∀ n, P16511978417903470379.a n = A137462 n

end A137462

/-! ## A137462.P13175994187480272432

`A088707(n)-1-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A137462

/-- `A088707(n)-1-a(n-1)` -/
def P13175994187480272432.Spec : Prop :=
  ∀ n, P13175994187480272432.a n = A137462 n

theorem P13175994187480272432.correct : P13175994187480272432.Spec := by
  intro n
  simp only [A137462]

end A137462

/-! ## A137462.P8593085584954473938

`A075818(n)/2-a(n-1)` with `a(0)=1`
-/

namespace A137462.P8593085584954473938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A075818 n : ℚ) / 2 - a (n - 1)

end

end A137462.P8593085584954473938

namespace A137462

/-- `A075818(n)/2-a(n-1)` -/
def P8593085584954473938.Spec : Prop :=
  ∀ n, P8593085584954473938.a n = (A137462 n : ℚ)

end A137462

/-! ## A137462.P17969411673280749879

`1-(a(n-1)-eq[1, A070821(n+1)])` with `a(0)=1`
-/

namespace A137462.P17969411673280749879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ))

end

end A137462.P17969411673280749879

namespace A137462

/-- `1-(a(n-1)-eq[1, A070821(n+1)])` -/
def P17969411673280749879.Spec : Prop :=
  ∀ n, P17969411673280749879.a n = A137462 n

end A137462

/-! ## A137462.P1549725112138727466

`record[(n+1)*A064911(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A137462.P1549725112138727466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A137462.P1549725112138727466

namespace A137462

/-- `record[(n+1)*A064911(n+1)]-a(n-1)` -/
def P1549725112138727466.Spec : Prop :=
  ∀ n, P1549725112138727466.a n = A137462 n

end A137462

/-! ## A137462.P8342795836661788128

`eq[1, C(2, A001222(n+1))]+1-a(n-1)` with `a(0)=1`
-/

namespace A137462.P8342795836661788128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℤ) - a (n - 1)

end

end A137462.P8342795836661788128

namespace A137462

/-- `eq[1, C(2, A001222(n+1))]+1-a(n-1)` -/
def P8342795836661788128.Spec : Prop :=
  ∀ n, P8342795836661788128.a n = A137462 n

end A137462

/-! ## A137462.P13615818440799921168

`record[A210615(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A137462.P13615818440799921168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A137462.P13615818440799921168

namespace A137462

/-- `record[A210615(n+1)]-a(n-1)` -/
def P13615818440799921168.Spec : Prop :=
  ∀ n, P13615818440799921168.a n = A137462 n

end A137462

/-! ## A137462.P622768076599779485

`A037143(A176539(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A137462.P622768076599779485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037143 (A176539 (n + 1)).toNat - a (n - 1)

end

end A137462.P622768076599779485

namespace A137462

/-- `A037143(A176539(n+1))-a(n-1)` -/
def P622768076599779485.Spec : Prop :=
  ∀ n, P622768076599779485.a n = A137462 n

end A137462

/-! ## A137462.P11745837998157051724

`A175515(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A137462.P11745837998157051724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175515 (n + 3) - a (n - 1)

end

end A137462.P11745837998157051724

namespace A137462

/-- `A175515(n+3)-a(n-1)` -/
def P11745837998157051724.Spec : Prop :=
  ∀ n, P11745837998157051724.a n = A137462 n

end A137462

/-!
# A137463: Prime numbers p such that p^3 - p + 1 and p^3 + p - 1 are both primes.

The programs for A137463, there is no canonical definition to state claims against.
-/

/-! ## A137463.P1674682383989679764

`∩[A236476(n+1), A236478(n+1)]`
-/

namespace A137463.P1674682383989679764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P1674682383989679764

/-! ## A137463.P1485038695865039228

`∩[A137461(n+1), A236476(n+1)]`
-/

namespace A137463.P1485038695865039228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P1485038695865039228

/-! ## A137463.P12358326796098636009

`∩[A137461(n+1), A236478(n+1)]`
-/

namespace A137463.P12358326796098636009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P12358326796098636009

/-! ## A137463.P10896320298290963396

`p?[A137461(n+1)]`
-/

namespace A137463.P10896320298290963396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137463.P10896320298290963396

/-! ## A137463.P15098352379927566265

`∩[A002476(n+1), A137461(n+1)]`
-/

namespace A137463.P15098352379927566265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P15098352379927566265

/-! ## A137463.P17658257027800308183

`∩[A007645(n+1), A137461(n+1)]`
-/

namespace A137463.P17658257027800308183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P17658257027800308183

/-! ## A137463.P1820629053591651263

`∩[A045331(n+1), A137461(n+1)]`
-/

namespace A137463.P1820629053591651263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P1820629053591651263

/-! ## A137463.P2644978639166143267

`∩[A045375(n+1), A137461(n+1)]`
-/

namespace A137463.P2644978639166143267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P2644978639166143267

/-! ## A137463.P17643840882181234009

`∩[A123365(n+1), A137461(n+1)]`
-/

namespace A137463.P17643840882181234009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P17643840882181234009

/-! ## A137463.P9467582032907815794

`∩[A040116(n+1), A137461(n+1)]`
-/

namespace A137463.P9467582032907815794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P9467582032907815794

/-! ## A137463.P13687288940612143479

`∩[A045348(n+1), A137461(n+1)]`
-/

namespace A137463.P13687288940612143479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137463.P13687288940612143479

/-!
# A137465: 1 concatenated with n n's concatenated with 1.

The programs for A137465, there is no canonical definition to state claims against.
-/

/-! ## A137465.P11811698617594294018

`record[A048377(n+2)-A075859(n+1)]`
-/

namespace A137465.P11811698617594294018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (n + 2) - A075859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137465.P11811698617594294018

/-! ## A137465.P7188288658245240391

`A048377(n+2)-(Δ[A267327(A032559(n+1))]+n)`
-/

namespace A137465.P7188288658245240391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267327 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (n + 2) - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A137465.P7188288658245240391

/-! ## A137465.P1728352060634634360

`A048377(n+2)-(A000005(5^n)+10*Δ[n*A000042(n+1)])`
-/

namespace A137465.P1728352060634634360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (n + 2) - (A000005 (5 ^ n) + 10 * (f1 (n + 1) - f1 n))

end

end A137465.P1728352060634634360

/-!
# A137466: 1 concatenated with n 21's.

The programs for A137466, the canonical program `A137466.P16974129204269509594` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137466 has offset 0).

The definition of A137466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137466.P10207007946751048760

`100*a(n-1)+21` with `a(0)=1`
-/

namespace A137466.P10207007946751048760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  100 * a (n - 1) + 21

end

end A137466.P10207007946751048760

namespace A137466

/-- `100*a(n-1)+21` -/
def P10207007946751048760.Spec : Prop :=
  ∀ n, (P10207007946751048760.a n : ℤ) = A137466 n

end A137466

/-! ## A137466.P16974129204269509594

`(2^(3+2*n)*5^(1+2*n)-7)/33`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137466

/-- `(2^(3+2*n)*5^(1+2*n)-7)/33` -/
def P16974129204269509594.Spec : Prop :=
  ∀ n, P16974129204269509594.a n = (A137466 n : ℚ)

end A137466

/-! ## A137466.P7548916372296311386

`A037487(2*n)`
-/

namespace A137466.P7548916372296311386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037487 (2 * n + 1)

end

end A137466.P7548916372296311386

namespace A137466

/-- `A037487(2*n)` -/
def P7548916372296311386.Spec : Prop :=
  ∀ n, P7548916372296311386.a n = A137466 n

end A137466

/-! ## A137466.P15283243994159743019

`A028359(3*n+1)`
-/

namespace A137466.P15283243994159743019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028359 (3 * n + 1)

end

end A137466.P15283243994159743019

namespace A137466

/-- `A028359(3*n+1)` -/
def P15283243994159743019.Spec : Prop :=
  ∀ n, P15283243994159743019.a n = A137466 n

end A137466

/-! ## A137466.P41661823696712526

`floor(A099913(2*n+1)/2)`
-/

namespace A137466.P41661823696712526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099913 (2 * n + 1) : ℚ) / 2⌋

end

end A137466.P41661823696712526

namespace A137466

/-- `floor(A099913(2*n+1)/2)` -/
def P41661823696712526.Spec : Prop :=
  ∀ n, P41661823696712526.a n = A137466 n

end A137466

/-! ## A137466.P6129250522458766895

`A100706(n)+A056830(2*n)`
-/

namespace A137466.P6129250522458766895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100706 n + A056830 (2 * n)

end

end A137466.P6129250522458766895

namespace A137466

/-- `A100706(n)+A056830(2*n)` -/
def P6129250522458766895.Spec : Prop :=
  ∀ n, P6129250522458766895.a n = A137466 n

end A137466

/-! ## A137466.P6050775374429785816

`A002276(2*n+1)-A094028(n)`
-/

namespace A137466.P6050775374429785816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (2 * n + 1) - A094028 n

end

end A137466.P6050775374429785816

namespace A137466

/-- `A002276(2*n+1)-A094028(n)` -/
def P6050775374429785816.Spec : Prop :=
  ∀ n, P6050775374429785816.a n = A137466 n

end A137466

/-! ## A137466.P1517132454888450431

`A282797(2*n+1)+record[A282797(n)]`
-/

namespace A137466.P1517132454888450431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137466.P1517132454888450431

namespace A137466

/-- `A282797(2*n+1)+record[A282797(n)]` -/
def P1517132454888450431.Spec : Prop :=
  ∀ n, P1517132454888450431.a n = A137466 n

end A137466

/-! ## A137466.P17607772433438789041

`A056830(2*n)+A000042(2*n+1)`
-/

namespace A137466.P17607772433438789041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (2 * n) + A000042 (2 * n + 1)

end

end A137466.P17607772433438789041

namespace A137466

/-- `A056830(2*n)+A000042(2*n+1)` -/
def P17607772433438789041.Spec : Prop :=
  ∀ n, P17607772433438789041.a n = A137466 n

end A137466

/-!
# A137469: Numbers with an odd number of 1's in base 5 expansion.

The programs for A137469, there is no canonical definition to state claims against.
-/

/-! ## A137469.P18380142715797964158

`eq[1, val(A194459(n), 2)%2]`
-/

namespace A137469.P18380142715797964158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137469.P18380142715797964158

/-! ## A137469.P16825353637301648393

`eq[0, A028609(A194459(n))]`
-/

namespace A137469.P16825353637301648393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137469.P16825353637301648393

/-! ## A137469.P3922293461706184198

`lt[0, A268643(A007091(n))%2]`
-/

namespace A137469.P3922293461706184198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268643 (A007091 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A137469.P3922293461706184198

/-! ## A137469.P13477126333455474965

`lt[0, A316863(A256305(n))%2]`
-/

namespace A137469.P13477126333455474965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316863 (A256305 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A137469.P13477126333455474965

/-! ## A137469.P12691747693028174493

`eq[1, gcd(2, A268643(A054047(n)))]`
-/

namespace A137469.P12691747693028174493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A268643 (A054047 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137469.P12691747693028174493

/-! ## A137469.P13404677719849443364

`eq[0, A061393(A194459(n)²)%5]`
-/

namespace A137469.P13404677719849443364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061393 (A194459 n ^ 2).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137469.P13404677719849443364

/-! ## A137469.P2681777219230289290

`eq[1, Δ[A340321(n)-A340320(n)]]`
-/

namespace A137469.P2681777219230289290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340321 n - A340320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137469.P2681777219230289290

/-! ## A137469.P7036055493508673829

`eq[1, A193238(A014263(n+1))%2]`
-/

namespace A137469.P7036055493508673829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193238 (A014263 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137469.P7036055493508673829

/-! ## A137469.P16724316648318617256

`eq[1, A193238(A072960(n+1))%2]`
-/

namespace A137469.P16724316648318617256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193238 (A072960 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137469.P16724316648318617256

/-! ## A137469.P9743110643127412545

`∪[A023726(n+1), A023728(n+1)]`
-/

namespace A137469.P9743110643127412545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137469.P9743110643127412545

/-!
# A137470: Inverse binomial transform of 1, 2, 2, 4, 10, 20, ... = A100088.

The programs for A137470, the canonical program `A137470.P15216804582425679150` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137470 has offset 0).

The definition of A137470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137470.P4657125102653545618

`∑[ogf((1+2x)/(1+2x+2x^2))]`
-/

namespace A137470.P4657125102653545618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P4657125102653545618

namespace A137470

/-- `∑[ogf((1+2x)/(1+2x+2x^2))]` -/
def P4657125102653545618.Spec : Prop :=
  ∀ n, P4657125102653545618.a n = A137470 n

end A137470

/-! ## A137470.P1967813595513653783

`ogf((1+2x)/(1+x-2x^3))`
-/

namespace A137470.P1967813595513653783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1, 0, -2] n

end

end A137470.P1967813595513653783

namespace A137470

/-- `ogf((1+2x)/(1+x-2x^3))` -/
def P1967813595513653783.Spec : Prop :=
  ∀ n, P1967813595513653783.a n = A137470 n

end A137470

/-! ## A137470.P15216804582425679150

`3-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137470

/-- `3-4*a(n-4)` -/
def P15216804582425679150.Spec : Prop :=
  ∀ n, P15216804582425679150.a n = A137470 n

theorem P15216804582425679150.correct : P15216804582425679150.Spec := by
  intro n
  simp only [A137470]

end A137470

/-! ## A137470.P3283697265339437939

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A137470.P3283697265339437939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A137470.P3283697265339437939

namespace A137470

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P3283697265339437939.Spec : Prop :=
  ∀ n, P3283697265339437939.a n = A137470 n

end A137470

/-! ## A137470.P2670538585823050509

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A137470.P2670538585823050509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A137470.P2670538585823050509

namespace A137470

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P2670538585823050509.Spec : Prop :=
  ∀ n, P2670538585823050509.a n = A137470 n

end A137470

/-! ## A137470.P10974253427801423916

`∑[a(n-3)-(a(n-1)-a(n-3))]` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A137470.P10974253427801423916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n f1 =>
  f1 (n - 3) - (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P10974253427801423916

namespace A137470

/-- `∑[a(n-3)-(a(n-1)-a(n-3))]` -/
def P10974253427801423916.Spec : Prop :=
  ∀ n, P10974253427801423916.a n = A137470 n

end A137470

/-! ## A137470.P11313370536979120719

`3-a(n-1)-a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A137470.P11313370536979120719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - a (n - 1) - a (n - 1) - a (n - 2) - a (n - 2)

end

end A137470.P11313370536979120719

namespace A137470

/-- `3-a(n-1)-a(n-1)-a(n-2)-a(n-2)` -/
def P11313370536979120719.Spec : Prop :=
  ∀ n, P11313370536979120719.a n = A137470 n

end A137470

/-! ## A137470.P9516652838147172516

`2*A137505(n)-1`
-/

namespace A137470.P9516652838147172516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137505 n - 1

end

end A137470.P9516652838147172516

namespace A137470

/-- `2*A137505(n)-1` -/
def P9516652838147172516.Spec : Prop :=
  ∀ n, P9516652838147172516.a n = A137470 n

end A137470

/-! ## A137470.P13364347529346646828

`∑[-A009116(n+1)]`
-/

namespace A137470.P13364347529346646828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P13364347529346646828

namespace A137470

/-- `∑[-A009116(n+1)]` -/
def P13364347529346646828.Spec : Prop :=
  ∀ n, P13364347529346646828.a n = A137470 n

end A137470

/-! ## A137470.P631276874041025955

`A137505(n+3)-A077973(n)`
-/

namespace A137470.P631276874041025955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (n + 3) - A077973 n

end

end A137470.P631276874041025955

namespace A137470

/-- `A137505(n+3)-A077973(n)` -/
def P631276874041025955.Spec : Prop :=
  ∀ n, P631276874041025955.a n = A137470 n

end A137470

/-! ## A137470.P1326325584957276380

`∑[2*A009116(n)-A108520(n)]`
-/

namespace A137470.P1326325584957276380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009116 n - A108520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P1326325584957276380

namespace A137470

/-- `∑[2*A009116(n)-A108520(n)]` -/
def P1326325584957276380.Spec : Prop :=
  ∀ n, P1326325584957276380.a n = A137470 n

end A137470

/-! ## A137470.P4998233989922075366

`∑[A000007(n+1)-A009116(n+1)]`
-/

namespace A137470.P4998233989922075366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A009116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P4998233989922075366

namespace A137470

/-- `∑[A000007(n+1)-A009116(n+1)]` -/
def P4998233989922075366.Spec : Prop :=
  ∀ n, P4998233989922075366.a n = A137470 n

end A137470

/-! ## A137470.P4671264760720179487

`∑[A108520(n+2)/2]`
-/

namespace A137470.P4671264760720179487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108520 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P4671264760720179487

namespace A137470

/-- `∑[A108520(n+2)/2]` -/
def P4671264760720179487.Spec : Prop :=
  ∀ n, P4671264760720179487.a n = (A137470 n : ℚ)

end A137470

/-! ## A137470.P15544328571010317078

`(A077973(n+2)+1)/2`
-/

namespace A137470.P15544328571010317078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077973 (n + 2) + 1 : ℚ) / 2

end

end A137470.P15544328571010317078

namespace A137470

/-- `(A077973(n+2)+1)/2` -/
def P15544328571010317078.Spec : Prop :=
  ∀ n, P15544328571010317078.a n = (A137470 n : ℚ)

end A137470

/-! ## A137470.P7468812186274237988

`∑[A009116(n+5)/4]`
-/

namespace A137470.P7468812186274237988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 (n + 5) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P7468812186274237988

namespace A137470

/-- `∑[A009116(n+5)/4]` -/
def P7468812186274237988.Spec : Prop :=
  ∀ n, P7468812186274237988.a n = (A137470 n : ℚ)

end A137470

/-! ## A137470.P842990172819810978

`∑[A090132(n)]`
-/

namespace A137470.P842990172819810978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P842990172819810978

namespace A137470

/-- `∑[A090132(n)]` -/
def P842990172819810978.Spec : Prop :=
  ∀ n, P842990172819810978.a n = A137470 n

end A137470

/-! ## A137470.P404694283754951668

`A137505(n+1)+A137426(n)`
-/

namespace A137470.P404694283754951668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (n + 1) + A137426 n

end

end A137470.P404694283754951668

namespace A137470

/-- `A137505(n+1)+A137426(n)` -/
def P404694283754951668.Spec : Prop :=
  ∀ n, P404694283754951668.a n = A137470 n

end A137470

/-! ## A137470.P18435079633377713885

`∑[A134813(n+2)/3]`
-/

namespace A137470.P18435079633377713885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134813 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137470.P18435079633377713885

namespace A137470

/-- `∑[A134813(n+2)/3]` -/
def P18435079633377713885.Spec : Prop :=
  ∀ n, P18435079633377713885.a n = (A137470 n : ℚ)

end A137470

/-!
# A137471: Positive numbers n such that n^3 +- (n+1) are primes.

The programs for A137471, there is no canonical definition to state claims against.
-/

/-! ## A137471.P306677833756270865

`∩[A049407(n+1), A126421(n+1)]`
-/

namespace A137471.P306677833756270865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137471.P306677833756270865

/-! ## A137471.P1295364592704833686

`∩[eq[1, A001222(n^3+n+1)], A126421(n+1)]`
-/

namespace A137471.P1295364592704833686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 3 + (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A137471.P1295364592704833686

/-! ## A137471.P6985261398682216346

`∩[eq[1, A001221(n^3+n+1)], A126421(n+1)]`
-/

namespace A137471.P6985261398682216346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 3 + n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A137471.P6985261398682216346

/-! ## A137471.P15895834926233292297

`∩[eq[2, A000005(n^3+1+n)], A126421(n+1)]`
-/

namespace A137471.P15895834926233292297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 3 + 1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A137471.P15895834926233292297

/-!
# A137472: Primes p such that p^3 +- (p+1) are primes.

The programs for A137472, there is no canonical definition to state claims against.
-/

/-! ## A137472.P12688582135624036347

`∩[A137471(n+1), A236168(n+1)]`
-/

namespace A137472.P12688582135624036347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P12688582135624036347

/-! ## A137472.P5493281082422147071

`p?[A137471(n+1)]`
-/

namespace A137472.P5493281082422147071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137472.P5493281082422147071

/-! ## A137472.P313934051427862679

`p?[record[A137471(A328396(n))]]`
-/

namespace A137472.P313934051427862679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137472.P313934051427862679

/-! ## A137472.P12790352094245373637

`record[p?[A137471(A052938(n))]]`
-/

namespace A137472.P12790352094245373637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137472.P12790352094245373637

/-! ## A137472.P1000009649163249752

`∩[A045309(n+1), A137471(n+1)]`
-/

namespace A137472.P1000009649163249752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P1000009649163249752

/-! ## A137472.P14439147183080529401

`∩[A049596(n+1), A137471(n+1)]`
-/

namespace A137472.P14439147183080529401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P14439147183080529401

/-! ## A137472.P8395017085972555203

`∩[A040028(n+1), A137471(n+1)]`
-/

namespace A137472.P8395017085972555203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P8395017085972555203

/-! ## A137472.P6006413831679589098

`∩[A040036(n+1), A137471(n+1)]`
-/

namespace A137472.P6006413831679589098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P6006413831679589098

/-! ## A137472.P3595510165993023832

`∩[A040044(n+1), A137471(n+1)]`
-/

namespace A137472.P3595510165993023832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P3595510165993023832

/-! ## A137472.P17803420485792571518

`∩[A040046(n+1), A137471(n+1)]`
-/

namespace A137472.P17803420485792571518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P17803420485792571518

/-! ## A137472.P5815051215775517636

`∩[A040049(n+1), A137471(n+1)]`
-/

namespace A137472.P5815051215775517636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P5815051215775517636

/-! ## A137472.P3694984876170423720

`∩[A040054(n+1), A137471(n+1)]`
-/

namespace A137472.P3694984876170423720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P3694984876170423720

/-! ## A137472.P702400146565906904

`∩[A040060(n+1), A137471(n+1)]`
-/

namespace A137472.P702400146565906904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P702400146565906904

/-! ## A137472.P2643796391100615600

`∩[A040062(n+1), A137471(n+1)]`
-/

namespace A137472.P2643796391100615600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P2643796391100615600

/-! ## A137472.P5434290397866691067

`∩[A040065(n+1), A137471(n+1)]`
-/

namespace A137472.P5434290397866691067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P5434290397866691067

/-! ## A137472.P999385758808271629

`∩[A040078(n+1), A137471(n+1)]`
-/

namespace A137472.P999385758808271629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P999385758808271629

/-! ## A137472.P18020970971144792511

`∩[A040083(n+1), A137471(n+1)]`
-/

namespace A137472.P18020970971144792511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P18020970971144792511

/-! ## A137472.P7269224172326715759

`∩[A040085(n+1), A137471(n+1)]`
-/

namespace A137472.P7269224172326715759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P7269224172326715759

/-! ## A137472.P10883155021369452975

`∩[A040087(n+1), A137471(n+1)]`
-/

namespace A137472.P10883155021369452975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P10883155021369452975

/-! ## A137472.P13859395773166847085

`∩[A040089(n+1), A137471(n+1)]`
-/

namespace A137472.P13859395773166847085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137472.P13859395773166847085

/-!
# A137473: Positive numbers k such that k^3 +- (k-1)^2 are primes.

The programs for A137473, there is no canonical definition to state claims against.
-/

/-! ## A137473.P8898413694482603043

`∩[A093480(n+1), A093707(n+1)]`
-/

namespace A137473.P8898413694482603043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137473.P8898413694482603043

/-!
# A137474: Prime numbers p such that p^3 - (p-1)^2 and p^3 + (p-1)^2 are also primes.

The programs for A137474, there is no canonical definition to state claims against.
-/

/-! ## A137474.P8376507990341555140

`p?[A137473(n+1)]`
-/

namespace A137474.P8376507990341555140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137474.P8376507990341555140

/-! ## A137474.P3810363891492246184

`p?[record[A137473(A052938(n))]]`
-/

namespace A137474.P3810363891492246184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137474.P3810363891492246184

/-! ## A137474.P10846346379297378074

`∩[A007645(n+1), A137473(n+1)]`
-/

namespace A137474.P10846346379297378074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P10846346379297378074

/-! ## A137474.P17986565713469475894

`∩[A045331(n+1), A137473(n+1)]`
-/

namespace A137474.P17986565713469475894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P17986565713469475894

/-! ## A137474.P5096884216223233783

`∩[A055664(n+1), A137473(n+1)]`
-/

namespace A137474.P5096884216223233783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P5096884216223233783

/-! ## A137474.P4271816977725435355

`∩[A137473(n+1), A279815(n+1)]`
-/

namespace A137474.P4271816977725435355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P4271816977725435355

/-! ## A137474.P7449607208019975640

`∩[A040116(n+1), A137473(n+1)]`
-/

namespace A137474.P7449607208019975640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P7449607208019975640

/-! ## A137474.P14321456550279767945

`∩[A009087(n+1), A137473(n+1)]`
-/

namespace A137474.P14321456550279767945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P14321456550279767945

/-! ## A137474.P1983250615617523896

`∩[A045393(n+1), A137473(n+1)]`
-/

namespace A137474.P1983250615617523896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P1983250615617523896

/-! ## A137474.P11620335658947851296

`∩[A049573(n+1), A137473(n+1)]`
-/

namespace A137474.P11620335658947851296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137474.P11620335658947851296

/-!
# A137476: Prime numbers p such that p^3 - (p+1)^2 and p^3 + (p+1)^2 are both primes.

The programs for A137476, there is no canonical definition to state claims against.
-/

/-! ## A137476.P9417401304409018350

`p?[A137475(n+1)]`
-/

namespace A137476.P9417401304409018350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137476.P9417401304409018350

/-! ## A137476.P5712127515555609703

`record[p?[A137475(A291769(n))]]`
-/

namespace A137476.P5712127515555609703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137476.P5712127515555609703

/-! ## A137476.P6052660421971831022

`record[p?[A137475(A344180(n))]]`
-/

namespace A137476.P6052660421971831022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137476.P6052660421971831022

/-! ## A137476.P6734327144674045320

`∩[A045309(n+1), A137475(n+1)]`
-/

namespace A137476.P6734327144674045320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137476.P6734327144674045320

/-! ## A137476.P7232012693363036624

`∩[A045410(n+1), A137475(n+1)]`
-/

namespace A137476.P7232012693363036624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137476.P7232012693363036624

/-! ## A137476.P2390406361128810964

`∩[A049547(n+1), A137475(n+1)]`
-/

namespace A137476.P2390406361128810964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137476.P2390406361128810964

/-! ## A137476.P1413432106466939040

`∩[A049577(n+1), A137475(n+1)]`
-/

namespace A137476.P1413432106466939040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137476.P1413432106466939040

/-! ## A137476.P14143323886441162265

`record[A020639(A137475(n+10))]`
-/

namespace A137476.P14143323886441162265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A137475 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137476.P14143323886441162265

/-!
# A137478: A triangle of recursive Fibonacci Lah numbers: f(n) = Fibonacci(n)*f(n - 1), L(n, k) = binomial(n-1, k-1)*(f(n)/f(k)).

The programs for A137478, there is no canonical definition to state claims against.
-/

/-! ## A137478.P2966138509596600460

`A007318(n)*A318954(A094587(n))`
-/

namespace A137478.P2966138509596600460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A318954 (A094587 n).toNat

end

end A137478.P2966138509596600460

/-! ## A137478.P12627099355486669512

`dr(A130595(n))*A318954(A094587(n))`
-/

namespace A137478.P12627099355486669512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A130595 n) : ℤ) * A318954 (A094587 n).toNat

end

end A137478.P12627099355486669512

/-! ## A137478.P4614463872094933246

`A128629(n+1)*A318954(A094587(n))`
-/

namespace A137478.P4614463872094933246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128629 (n + 1) * A318954 (A094587 n).toNat

end

end A137478.P4614463872094933246

/-!
# A137479: Greatest common divisor of (the average of the n-th twin prime pair) and (the average of the (n+1)st twin prime pair).

The programs for A137479, the canonical program `A137479.P11681664387761326516` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137479 has offset 1).

The definition of A137479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137479.P11681664387761326516

`gcd(A014574(n+1), A014574(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A137479

/-- `gcd(A014574(n+1), A014574(n+2))` -/
def P11681664387761326516.Spec : Prop :=
  ∀ n, (P11681664387761326516.a n : ℤ) = A137479 (n + 1)

theorem P11681664387761326516.correct : P11681664387761326516.Spec := by
  intro n
  simp only [A137479, Nat.add_sub_cancel]

end A137479

/-! ## A137479.P1790284364605299924

`gcd(Δ[A001359(n+1)], A126248(n+1))`
-/

namespace A137479.P1790284364605299924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A126248 (n + 1))

end

end A137479.P1790284364605299924

namespace A137479

/-- `gcd(Δ[A001359(n+1)], A126248(n+1))` -/
def P1790284364605299924.Spec : Prop :=
  ∀ n, (P1790284364605299924.a n : ℤ) = A137479 (n + 1)

end A137479

/-! ## A137479.P3063272948656967760

`2*gcd(A040040(n+1), A074953(n+1))`
-/

namespace A137479.P3063272948656967760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A040040 (n + 1)) (A074953 (n + 1))

end

end A137479.P3063272948656967760

namespace A137479

/-- `2*gcd(A040040(n+1), A074953(n+1))` -/
def P3063272948656967760.Spec : Prop :=
  ∀ n, (P3063272948656967760.a n : ℤ) = A137479 (n + 1)

end A137479

/-! ## A137479.P1013985266091141552

`sqrt(gcd(A075369(n+1), A075369(n+2)))`
-/

namespace A137479.P1013985266091141552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A075369 (n + 1)) (A075369 (n + 2)) : ℝ)

end

end A137479.P1013985266091141552

namespace A137479

/-- `sqrt(gcd(A075369(n+1), A075369(n+2)))` -/
def P1013985266091141552.Spec : Prop :=
  ∀ n, P1013985266091141552.a n = (A137479 (n + 1) : ℝ)

end A137479

/-! ## A137479.P11619505000728936955

`gcd(1-A006512(n+1), Δ[A006512(n+1)])`
-/

namespace A137479.P11619505000728936955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A006512 (n + 1)) (f1 (n + 1) - f1 n)

end

end A137479.P11619505000728936955

namespace A137479

/-- `gcd(1-A006512(n+1), Δ[A006512(n+1)])` -/
def P11619505000728936955.Spec : Prop :=
  ∀ n, (P11619505000728936955.a n : ℤ) = A137479 (n + 1)

end A137479

/-! ## A137479.P11138676430772156924

`gcd(Δ[A054735(n+1)], A054735(n+1))/2`
-/

namespace A137479.P11138676430772156924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (f1 (n + 1) - f1 n) (A054735 (n + 1)) : ℚ) / 2

end

end A137479.P11138676430772156924

namespace A137479

/-- `gcd(Δ[A054735(n+1)], A054735(n+1))/2` -/
def P11138676430772156924.Spec : Prop :=
  ∀ n, P11138676430772156924.a n = (A137479 (n + 1) : ℚ)

end A137479

/-! ## A137479.P6252815063353265375

`gcd(A096281(2*n+1)/2, A096281(2*(n+1)))`
-/

namespace A137479.P6252815063353265375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A096281 (2 * n + 1) : ℚ) / 2)) (A096281 (2 * (n + 1)))

end

end A137479.P6252815063353265375

namespace A137479

/-- `gcd(A096281(2*n+1)/2, A096281(2*(n+1)))` -/
def P6252815063353265375.Spec : Prop :=
  ∀ n, (P6252815063353265375.a n : ℤ) = A137479 (n + 1)

end A137479

/-! ## A137479.P7835527673001783917

`gcd(A129297(n+5), A135285(n+1))`
-/

namespace A137479.P7835527673001783917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129297 (n + 5)) (A135285 (n + 1))

end

end A137479.P7835527673001783917

namespace A137479

/-- `gcd(A129297(n+5), A135285(n+1))` -/
def P7835527673001783917.Spec : Prop :=
  ∀ n, (P7835527673001783917.a n : ℤ) = A137479 (n + 1)

end A137479

/-!
# A137480: a(n)=4a(n-2).

The programs for A137480, the canonical program `A137480.P9312807707310253972` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137480 has offset 0).

The definition of A137480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)` (program `A137480.P9312807707310253972`, by `A137480.P9312807707310253972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137480.P9312807707310253972

`4*a(n-2)` with `a(0)=12, a(1)=21`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137480

/-- `4*a(n-2)` -/
def P9312807707310253972.Spec : Prop :=
  ∀ n, (P9312807707310253972.a n : ℤ) = A137480 n

theorem P9312807707310253972.correct : P9312807707310253972.Spec := by
  intro n
  simp only [A137480]

end A137480

/-! ## A137480.P15617189249480747756

`3*A133600(n+2)`
-/

namespace A137480.P15617189249480747756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133600 (n + 2)

end

end A137480.P15617189249480747756

namespace A137480

/-- `3*A133600(n+2)` -/
def P15617189249480747756.Spec : Prop :=
  ∀ n, P15617189249480747756.a n = A137480 n

end A137480

/-! ## A137480.P18003390731195713174

`ogf((12+21x)/(1-4x^2))`
-/

namespace A137480.P18003390731195713174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 21] [1, 0, -4] n

end

end A137480.P18003390731195713174

namespace A137480

/-- `ogf((12+21x)/(1-4x^2))` -/
def P18003390731195713174.Spec : Prop :=
  ∀ n, P18003390731195713174.a n = A137480 n

end A137480

/-! ## A137480.P17321727160528593394

`3*(3*A137208(n)-2)`
-/

namespace A137480.P17321727160528593394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A137208 n - 2)

end

end A137480.P17321727160528593394

namespace A137480

/-- `3*(3*A137208(n)-2)` -/
def P17321727160528593394.Spec : Prop :=
  ∀ n, P17321727160528593394.a n = A137480 n

end A137480

/-! ## A137480.P5778384190900534180

`A110286(n)-A137344(n)`
-/

namespace A137480.P5778384190900534180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 n - A137344 n

end

end A137480.P5778384190900534180

namespace A137480

/-- `A110286(n)-A137344(n)` -/
def P5778384190900534180.Spec : Prop :=
  ∀ n, P5778384190900534180.a n = A137480 n

end A137480

/-! ## A137480.P11215849853646180519

`A117856(n+1)+A005010(n)`
-/

namespace A137480.P11215849853646180519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117856 (n + 1) + A005010 n

end

end A137480.P11215849853646180519

namespace A137480

/-- `A117856(n+1)+A005010(n)` -/
def P11215849853646180519.Spec : Prop :=
  ∀ n, P11215849853646180519.a n = A137480 n

end A137480

/-! ## A137480.P2283603812165524469

`A135520(n)+A020714(n+1)`
-/

namespace A137480.P2283603812165524469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 n + A020714 (n + 1)

end

end A137480.P2283603812165524469

namespace A137480

/-- `A135520(n)+A020714(n+1)` -/
def P2283603812165524469.Spec : Prop :=
  ∀ n, P2283603812165524469.a n = A137480 n

end A137480

/-! ## A137480.P6907640195906838788

`A137344(n+1)+A137344(n)`
-/

namespace A137480.P6907640195906838788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137344 (n + 1) + A137344 n

end

end A137480.P6907640195906838788

namespace A137480

/-- `A137344(n+1)+A137344(n)` -/
def P6907640195906838788.Spec : Prop :=
  ∀ n, P6907640195906838788.a n = A137480 n

end A137480

/-! ## A137480.P9650285934613135107

`A321643(n+1)+A094360(n)`
-/

namespace A137480.P9650285934613135107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321643 (n + 1) + A094360 n

end

end A137480.P9650285934613135107

namespace A137480

/-- `A321643(n+1)+A094360(n)` -/
def P9650285934613135107.Spec : Prop :=
  ∀ n, P9650285934613135107.a n = A137480 n

end A137480

/-! ## A137480.P15546718738234085057

`A010712(n)*A117856(n+1)`
-/

namespace A137480.P15546718738234085057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n * A117856 (n + 1)

end

end A137480.P15546718738234085057

namespace A137480

/-- `A010712(n)*A117856(n+1)` -/
def P15546718738234085057.Spec : Prop :=
  ∀ n, P15546718738234085057.a n = A137480 n

end A137480

/-! ## A137480.P5034075745073637536

`A135520(n)+A084215(n+3)`
-/

namespace A137480.P5034075745073637536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 n + A084215 (n + 3)

end

end A137480.P5034075745073637536

namespace A137480

/-- `A135520(n)+A084215(n+3)` -/
def P5034075745073637536.Spec : Prop :=
  ∀ n, P5034075745073637536.a n = A137480 n

end A137480

/-! ## A137480.P6331180241563020069

`3*(A084221(n+1)+A084221(n))`
-/

namespace A137480.P6331180241563020069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A084221 (n + 1) + A084221 n)

end

end A137480.P6331180241563020069

namespace A137480

/-- `3*(A084221(n+1)+A084221(n))` -/
def P6331180241563020069.Spec : Prop :=
  ∀ n, P6331180241563020069.a n = A137480 n

end A137480

/-! ## A137480.P15926670261176293669

`A133600(n+4)-A133600(n+2)`
-/

namespace A137480.P15926670261176293669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133600 (n + 4) - A133600 (n + 2)

end

end A137480.P15926670261176293669

namespace A137480

/-- `A133600(n+4)-A133600(n+2)` -/
def P15926670261176293669.Spec : Prop :=
  ∀ n, P15926670261176293669.a n = A137480 n

end A137480

/-! ## A137480.P983818815200880965

`A104721(n+1)+2*A084568(n+1)`
-/

namespace A137480.P983818815200880965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 (n + 1) + 2 * A084568 (n + 1)

end

end A137480.P983818815200880965

namespace A137480

/-- `A104721(n+1)+2*A084568(n+1)` -/
def P983818815200880965.Spec : Prop :=
  ∀ n, P983818815200880965.a n = A137480 n

end A137480

/-! ## A137480.P8847858314800290838

`A056486(n+2)+A056486(n+1)/2`
-/

namespace A137480.P8847858314800290838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056486 (n + 2) : ℚ) + (A056486 (n + 1) : ℚ) / 2

end

end A137480.P8847858314800290838

namespace A137480

/-- `A056486(n+2)+A056486(n+1)/2` -/
def P8847858314800290838.Spec : Prop :=
  ∀ n, P8847858314800290838.a n = (A137480 n : ℚ)

end A137480

/-! ## A137480.P6534948058808835681

`A070875(2*n+1)+Δ[A029744(n+2)²]`
-/

namespace A137480.P6534948058808835681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A137480.P6534948058808835681

namespace A137480

/-- `A070875(2*n+1)+Δ[A029744(n+2)²]` -/
def P6534948058808835681.Spec : Prop :=
  ∀ n, P6534948058808835681.a n = A137480 n

end A137480

/-! ## A137480.P14351237284087090884

`A005010(n)+A005010(n)/A010704(n)`
-/

namespace A137480.P14351237284087090884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005010 n : ℚ) + (A005010 n : ℚ) / (A010704 n : ℚ)

end

end A137480.P14351237284087090884

namespace A137480

/-- `A005010(n)+A005010(n)/A010704(n)` -/
def P14351237284087090884.Spec : Prop :=
  ∀ n, P14351237284087090884.a n = (A137480 n : ℚ)

end A137480

/-! ## A137480.P1505035169355073798

`(A147675(n+2)+A016116(n))*A135530(n)`
-/

namespace A137480.P1505035169355073798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147675 (n + 2) + A016116 n) * A135530 n

end

end A137480.P1505035169355073798

namespace A137480

/-- `(A147675(n+2)+A016116(n))*A135530(n)` -/
def P1505035169355073798.Spec : Prop :=
  ∀ n, P1505035169355073798.a n = A137480 n

end A137480

/-! ## A137480.P3767475473967450655

`A005010(n)+A007283(n)/A176895(2*n)`
-/

namespace A137480.P3767475473967450655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005010 n : ℚ) + (A007283 n : ℚ) / (A176895 (2 * n) : ℚ)

end

end A137480.P3767475473967450655

namespace A137480

/-- `A005010(n)+A007283(n)/A176895(2*n)` -/
def P3767475473967450655.Spec : Prop :=
  ∀ n, P3767475473967450655.a n = (A137480 n : ℚ)

end A137480

/-! ## A137480.P1618909558752307725

`A056486(n+1)+A094361(n)+A056486(n+1)`
-/

namespace A137480.P1618909558752307725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056486 (n + 1) + (A094361 n + A056486 (n + 1))

end

end A137480.P1618909558752307725

namespace A137480

/-- `A056486(n+1)+A094361(n)+A056486(n+1)` -/
def P1618909558752307725.Spec : Prop :=
  ∀ n, P1618909558752307725.a n = A137480 n

end A137480

/-!
# A137482: Number of permutations of n objects such that no two-element subset is preserved.

The programs for A137482, the canonical program `A137482.P14108024191409046196` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137482 has offset 0).

The definition of A137482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137482.P14108024191409046196

`(n-1)*a(n-1)-a(n-2)+(n-2)*n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137482

/-- `(n-1)*a(n-1)-a(n-2)+(n-2)*n*a(n-3)` -/
def P14108024191409046196.Spec : Prop :=
  ∀ n, P14108024191409046196.a n = A137482 n

theorem P14108024191409046196.correct : P14108024191409046196.Spec := by
  intro n
  simp only [A137482]

end A137482

/-! ## A137482.P17406135204577577478

`n*a(n-1)-A001464(n+1)` with `a(0)=1`
-/

namespace A137482.P17406135204577577478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A001464 (n + 1)

end

end A137482.P17406135204577577478

namespace A137482

/-- `n*a(n-1)-A001464(n+1)` -/
def P17406135204577577478.Spec : Prop :=
  ∀ n, P17406135204577577478.a n = A137482 n

end A137482

/-! ## A137482.P11886685975441742966

`2*A038205(n)-A001464(n)`
-/

namespace A137482.P11886685975441742966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038205 n - A001464 n

end

end A137482.P11886685975441742966

namespace A137482

/-- `2*A038205(n)-A001464(n)` -/
def P11886685975441742966.Spec : Prop :=
  ∀ n, P11886685975441742966.a n = A137482 n

end A137482

/-! ## A137482.P5411030906711909616

`2*A162974(A002620(n+1))-A001464(n)`
-/

namespace A137482.P5411030906711909616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162974 (A002620 (n + 1)).toNat - A001464 n

end

end A137482.P5411030906711909616

namespace A137482

/-- `2*A162974(A002620(n+1))-A001464(n)` -/
def P5411030906711909616.Spec : Prop :=
  ∀ n, P5411030906711909616.a n = A137482 n

end A137482

/-! ## A137482.P1686123435734754363

`2*(A000166(n)-A158243(n))-A001464(n)`
-/

namespace A137482.P1686123435734754363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000166 n - A158243 n) - A001464 n

end

end A137482.P1686123435734754363

namespace A137482

/-- `2*(A000166(n)-A158243(n))-A001464(n)` -/
def P1686123435734754363.Spec : Prop :=
  ∀ n, P1686123435734754363.a n = A137482 n

end A137482

/-! ## A137482.P6794478181734651228

`2*(abs(A182386(n))-A158243(n))-A001464(n)`
-/

namespace A137482.P6794478181734651228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|A182386 n| - A158243 n) - A001464 n

end

end A137482.P6794478181734651228

namespace A137482

/-- `2*(abs(A182386(n))-A158243(n))-A001464(n)` -/
def P6794478181734651228.Spec : Prop :=
  ∀ n, P6794478181734651228.a n = A137482 n

end A137482

/-! ## A137482.P14131105629973573847

`2*(A060475(A000096(n))-A158243(n))-A001464(n)`
-/

namespace A137482.P14131105629973573847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060475 (A000096 n).toNat - A158243 n) - A001464 n

end

end A137482.P14131105629973573847

namespace A137482

/-- `2*(A060475(A000096(n))-A158243(n))-A001464(n)` -/
def P14131105629973573847.Spec : Prop :=
  ∀ n, P14131105629973573847.a n = A137482 n

end A137482

/-!
# A137483: a(n+1) = 9*a(n) - 6, a(0) = 2.

The programs for A137483, the canonical program `A137483.P6023697983420442449` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137483 has offset 0).

The definition of A137483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137483.P14409100139898575175

`(3+5*9^n)/4`
-/

namespace A137483.P14409100139898575175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + 5 * 9 ^ n : ℚ) / 4

end

end A137483.P14409100139898575175

namespace A137483

/-- `(3+5*9^n)/4` -/
def P14409100139898575175.Spec : Prop :=
  ∀ n, P14409100139898575175.a n = (A137483 n : ℚ)

theorem P14409100139898575175.correct : P14409100139898575175.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137483, Nat.add_sub_cancel, A137483.P14409100139898575175.a, A137483.P6023697983420442449.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137483, Nat.add_sub_cancel, A137483.P14409100139898575175.a, A137483.P6023697983420442449.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A137483

/-! ## A137483.P6023697983420442449

`9*a(n-1)-6` with `a(0)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137483

/-- `9*a(n-1)-6` -/
def P6023697983420442449.Spec : Prop :=
  ∀ n, P6023697983420442449.a n = A137483 n

theorem P6023697983420442449.correct : P6023697983420442449.Spec := by
  intro n
  simp only [A137483]

end A137483

/-! ## A137483.P13392460852476358924

`A135522(2*n)`
-/

namespace A137483.P13392460852476358924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135522 (2 * n)

end

end A137483.P13392460852476358924

namespace A137483

/-- `A135522(2*n)` -/
def P13392460852476358924.Spec : Prop :=
  ∀ n, P13392460852476358924.a n = A137483 n

end A137483

/-! ## A137483.P651045289305071978

`ogf((2-8x)/(1-10x+9x^2))`
-/

namespace A137483.P651045289305071978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -10, 9] n

end

end A137483.P651045289305071978

namespace A137483

/-- `ogf((2-8x)/(1-10x+9x^2))` -/
def P651045289305071978.Spec : Prop :=
  ∀ n, P651045289305071978.a n = A137483 n

end A137483

/-! ## A137483.P8010407006737333389

`a(n-1)/(1/3)²-6` with `a(0)=2`
-/

namespace A137483.P8010407006737333389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 6

end

end A137483.P8010407006737333389

namespace A137483

/-- `a(n-1)/(1/3)²-6` -/
def P8010407006737333389.Spec : Prop :=
  ∀ n, P8010407006737333389.a n = (A137483 n : ℚ)

end A137483

/-! ## A137483.P272047915131483515

`A138894(n)+1`
-/

namespace A137483.P272047915131483515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138894 n + 1

end

end A137483.P272047915131483515

namespace A137483

/-- `A138894(n)+1` -/
def P272047915131483515.Spec : Prop :=
  ∀ n, P272047915131483515.a n = A137483 n

end A137483

/-! ## A137483.P14370069411820820050

`∑[A003952(n)]+1`
-/

namespace A137483.P14370069411820820050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A137483.P14370069411820820050

namespace A137483

/-- `∑[A003952(n)]+1` -/
def P14370069411820820050.Spec : Prop :=
  ∀ n, P14370069411820820050.a n = A137483 n

end A137483

/-! ## A137483.P6062895876784377562

`∑[2*A067403(n)]`
-/

namespace A137483.P6062895876784377562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137483.P6062895876784377562

namespace A137483

/-- `∑[2*A067403(n)]` -/
def P6062895876784377562.Spec : Prop :=
  ∀ n, P6062895876784377562.a n = A137483 n

end A137483

/-! ## A137483.P15646329701935048697

`A060925(2*n)+1`
-/

namespace A137483.P15646329701935048697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 (2 * n) + 1

end

end A137483.P15646329701935048697

namespace A137483

/-- `A060925(2*n)+1` -/
def P15646329701935048697.Spec : Prop :=
  ∀ n, P15646329701935048697.a n = A137483 n

end A137483

/-! ## A137483.P1269862492284556375

`A081250(2*n)+1`
-/

namespace A137483.P1269862492284556375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 (2 * n) + 1

end

end A137483.P1269862492284556375

namespace A137483

/-- `A081250(2*n)+1` -/
def P1269862492284556375.Spec : Prop :=
  ∀ n, P1269862492284556375.a n = A137483 n

end A137483

/-! ## A137483.P7975385632198093793

`2*(A125962(n)+1)`
-/

namespace A137483.P7975385632198093793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125962 n + 1)

end

end A137483.P7975385632198093793

namespace A137483

/-- `2*(A125962(n)+1)` -/
def P7975385632198093793.Spec : Prop :=
  ∀ n, P7975385632198093793.a n = A137483 n

end A137483

/-! ## A137483.P6550898766908460110

`A297445(2*n)+1`
-/

namespace A137483.P6550898766908460110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297445 (2 * n) + 1

end

end A137483.P6550898766908460110

namespace A137483

/-- `A297445(2*n)+1` -/
def P6550898766908460110.Spec : Prop :=
  ∀ n, P6550898766908460110.a n = A137483 n

end A137483

/-! ## A137483.P8855032830000985625

`A255043(n)/2+1`
-/

namespace A137483.P8855032830000985625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255043 n : ℚ) / 2 + 1

end

end A137483.P8855032830000985625

namespace A137483

/-- `A255043(n)/2+1` -/
def P8855032830000985625.Spec : Prop :=
  ∀ n, P8855032830000985625.a n = (A137483 n : ℚ)

end A137483

/-! ## A137483.P13156945095401555549

`A198962(n)/4+1`
-/

namespace A137483.P13156945095401555549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198962 n : ℚ) / 4 + 1

end

end A137483.P13156945095401555549

namespace A137483

/-- `A198962(n)/4+1` -/
def P13156945095401555549.Spec : Prop :=
  ∀ n, P13156945095401555549.a n = (A137483 n : ℚ)

theorem P13156945095401555549.correct : P13156945095401555549.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137483, Nat.add_sub_cancel, A137483.P13156945095401555549.a, A137483.P6023697983420442449.a, A198962, A198962.P14201390840231293366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137483, Nat.add_sub_cancel, A137483.P13156945095401555549.a, A137483.P6023697983420442449.a, A198962, A198962.P14201390840231293366.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A137483

/-! ## A137483.P13012516289908126214

`5*A054879(n)-3`
-/

namespace A137483.P13012516289908126214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A054879 n - 3

end

end A137483.P13012516289908126214

namespace A137483

/-- `5*A054879(n)-3` -/
def P13012516289908126214.Spec : Prop :=
  ∀ n, P13012516289908126214.a n = A137483 n

end A137483

/-! ## A137483.P14095975241592303022

`2*A153773(Δ[n²])`
-/

namespace A137483.P14095975241592303022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A137483.P14095975241592303022

namespace A137483

/-- `2*A153773(Δ[n²])` -/
def P14095975241592303022.Spec : Prop :=
  ∀ n, P14095975241592303022.a n = A137483 n

end A137483

/-! ## A137483.P1417083144055436670

`5*A125857(n+1)+2`
-/

namespace A137483.P1417083144055436670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A125857 (n + 1) + 2

end

end A137483.P1417083144055436670

namespace A137483

/-- `5*A125857(n+1)+2` -/
def P1417083144055436670.Spec : Prop :=
  ∀ n, P1417083144055436670.a n = A137483 n

end A137483

/-! ## A137483.P13075883449870863195

`A244762(2*n)+n+1`
-/

namespace A137483.P13075883449870863195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 (2 * n) + (n + 1 : ℤ)

end

end A137483.P13075883449870863195

namespace A137483

/-- `A244762(2*n)+n+1` -/
def P13075883449870863195.Spec : Prop :=
  ∀ n, P13075883449870863195.a n = A137483 n

end A137483

/-! ## A137483.P18041980793792207061

`A090328(2*n+1)-(n-1)`
-/

namespace A137483.P18041980793792207061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 (2 * n + 1) - ((n : ℤ) - 1)

end

end A137483.P18041980793792207061

namespace A137483

/-- `A090328(2*n+1)-(n-1)` -/
def P18041980793792207061.Spec : Prop :=
  ∀ n, P18041980793792207061.a n = A137483 n

end A137483

/-! ## A137483.P16244590300529587136

`A054879(n)+A001019(n)`
-/

namespace A137483.P16244590300529587136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054879 n + A001019 n

end

end A137483.P16244590300529587136

namespace A137483

/-- `A054879(n)+A001019(n)` -/
def P16244590300529587136.Spec : Prop :=
  ∀ n, P16244590300529587136.a n = A137483 n

end A137483

/-!
# A137485: Numbers with 22 divisors.

The programs for A137485, there is no canonical definition to state claims against.
-/

/-! ## A137485.P6317479642894373780

`A000027(A137489(n+1))/4`
-/

namespace A137485.P6317479642894373780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A137489 (n + 1)).toNat : ℚ) / 4

end

end A137485.P6317479642894373780

/-! ## A137485.P7066604186711595595

`A137489(n+1)/A040005(A137508(n+1))`
-/

namespace A137485.P7066604186711595595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137489 (n + 1) : ℚ) / (A040005 (A137508 (n + 1)).toNat : ℚ)

end

end A137485.P7066604186711595595

/-! ## A137485.P10118394752009864604

`A016781(A328167(3*(n+1)))*A065091(n+1)`
-/

namespace A137485.P10118394752009864604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (A328167 (3 * (n + 1))).toNat * A065091 (n + 1)

end

end A137485.P10118394752009864604

/-! ## A137485.P2065796122594629343

`A000040(n+2)*A082158(A075020(3*n+5))`
-/

namespace A137485.P2065796122594629343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A082158 (A075020 (3 * n + 5)).toNat

end

end A137485.P2065796122594629343

/-! ## A137485.P10864046590137589902

`filter[A195093(n+1), A359158(#)]`
-/

namespace A137485.P10864046590137589902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A137485.P10864046590137589902

/-!
# A137486: 

The programs for A137486, there is no canonical definition to state claims against.
-/

/-! ## A137486.P15783461921404906948

`A079395(n+1)²`
-/

namespace A137486.P15783461921404906948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079395 (n + 1) ^ 2

end

end A137486.P15783461921404906948

/-! ## A137486.P15578657998387592922

`A001248(n+1)^11`
-/

namespace A137486.P15578657998387592922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 11

end

end A137486.P15578657998387592922

/-! ## A137486.P6414664745464862429

`A000040(n+1)^22`
-/

namespace A137486.P6414664745464862429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 22

end

end A137486.P6414664745464862429

/-! ## A137486.P5143215547885353599

`p?[A000961(n+1)]^22`
-/

namespace A137486.P5143215547885353599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 22

end

end A137486.P5143215547885353599

/-! ## A137486.P14929019318628420490

`record[A006530(n+2)^22]`
-/

namespace A137486.P14929019318628420490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137486.P14929019318628420490

/-! ## A137486.P10811593115893580241

`record[A020639(n+2)^22]`
-/

namespace A137486.P10811593115893580241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137486.P10811593115893580241

/-! ## A137486.P8315274723815765973

`A030629(n+1)*A030631(n+1)`
-/

namespace A137486.P8315274723815765973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030629 (n + 1) * A030631 (n + 1)

end

end A137486.P8315274723815765973

/-! ## A137486.P10719773278362098861

`(A000040(n+1)*A030629(n+1))²`
-/

namespace A137486.P10719773278362098861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A030629 (n + 1)) ^ 2

end

end A137486.P10719773278362098861

/-! ## A137486.P9773882639313462764

`A030629(n+1)²*A001248(n+1)`
-/

namespace A137486.P9773882639313462764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030629 (n + 1) ^ 2 * A001248 (n + 1)

end

end A137486.P9773882639313462764

/-! ## A137486.P2881469124826032625

`(A030631(n+1)/A000040(n+1))²`
-/

namespace A137486.P2881469124826032625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A030631 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)) ^ 2

end

end A137486.P2881469124826032625

/-! ## A137486.P3953224788938008420

`p?[A174905(n+1)]^22`
-/

namespace A137486.P3953224788938008420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 22

end

end A137486.P3953224788938008420

/-! ## A137486.P12964986413345766968

`p?[A000037(n+1)]^22`
-/

namespace A137486.P12964986413345766968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 22

end

end A137486.P12964986413345766968

/-! ## A137486.P15921177211168184705

`p?[A014681(n)]^22`
-/

namespace A137486.P15921177211168184705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 22

end

end A137486.P15921177211168184705

/-! ## A137486.P536601420268523147

`record[A014963(n+2)^22]`
-/

namespace A137486.P536601420268523147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137486.P536601420268523147

/-! ## A137486.P6771358604241380033

`A017708(record[A006530(n+2)])`
-/

namespace A137486.P6771358604241380033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137486.P6771358604241380033

/-! ## A137486.P5415673200951857061

`A017708(record[A014963(n+2)])`
-/

namespace A137486.P5415673200951857061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137486.P5415673200951857061

/-! ## A137486.P8507822442773980663

`A017708(record[A020639(n+2)])`
-/

namespace A137486.P8507822442773980663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137486.P8507822442773980663

/-!
# A137487: Numbers with 24 divisors.

The programs for A137487, the canonical program `A137487.P5545813627763981507` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137487 has offset 1).

The definition of A137487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137487.P8522245055832291314

`∩[A111399(n+1), A336418(n+1)]`
-/

namespace A137487.P8522245055832291314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P8522245055832291314

namespace A137487

/-- `∩[A111399(n+1), A336418(n+1)]` -/
def P8522245055832291314.Spec : Prop :=
  ∀ n, (P8522245055832291314.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P5545813627763981507

`∩[A036457(n+1), A336418(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137487

/-- `∩[A036457(n+1), A336418(n+1)]` -/
def P5545813627763981507.Spec : Prop :=
  ∀ n, (P5545813627763981507.a n : ℤ) = A137487 (n + 1)

theorem P5545813627763981507.correct : P5545813627763981507.Spec := by
  intro n
  simp only [A137487, Nat.add_sub_cancel]

end A137487

/-! ## A137487.P13159720391470013479

`∩[A068544(n+1), A336418(n+1)]`
-/

namespace A137487.P13159720391470013479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P13159720391470013479

namespace A137487

/-- `∩[A068544(n+1), A336418(n+1)]` -/
def P13159720391470013479.Spec : Prop :=
  ∀ n, (P13159720391470013479.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P4007821397453106946

`∩[A068350(n+1), A336418(n+1)]`
-/

namespace A137487.P4007821397453106946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P4007821397453106946

namespace A137487

/-- `∩[A068350(n+1), A336418(n+1)]` -/
def P4007821397453106946.Spec : Prop :=
  ∀ n, (P4007821397453106946.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P18055943628940108052

`∩[A122181(n+1), A336418(n+1)]`
-/

namespace A137487.P18055943628940108052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P18055943628940108052

namespace A137487

/-- `∩[A122181(n+1), A336418(n+1)]` -/
def P18055943628940108052.Spec : Prop :=
  ∀ n, (P18055943628940108052.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P488290829395884985

`A002808(eq[24, A035004(n+1)])`
-/

namespace A137487.P488290829395884985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137487.P488290829395884985

namespace A137487

/-- `A002808(eq[24, A035004(n+1)])` -/
def P488290829395884985.Spec : Prop :=
  ∀ n, P488290829395884985.a n = A137487 (n + 1)

end A137487

/-! ## A137487.P7066911788796057745

`eq[23, A032741(n)]`
-/

namespace A137487.P7066911788796057745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P7066911788796057745

namespace A137487

/-- `eq[23, A032741(n)]` -/
def P7066911788796057745.Spec : Prop :=
  ∀ n, (P7066911788796057745.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P2591732199998311639

`eq[46, A319410(n)]`
-/

namespace A137487.P2591732199998311639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P2591732199998311639

namespace A137487

/-- `eq[46, A319410(n)]` -/
def P2591732199998311639.Spec : Prop :=
  ∀ n, (P2591732199998311639.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P9856859353123051239

`eq[14, A333867(A145154(n))]`
-/

namespace A137487.P9856859353123051239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P9856859353123051239

namespace A137487

/-- `eq[14, A333867(A145154(n))]` -/
def P9856859353123051239.Spec : Prop :=
  ∀ n, (P9856859353123051239.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P11597860019309117314

`eq[24, A000005(A028310(n))]`
-/

namespace A137487.P11597860019309117314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P11597860019309117314

namespace A137487

/-- `eq[24, A000005(A028310(n))]` -/
def P11597860019309117314.Spec : Prop :=
  ∀ n, (P11597860019309117314.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P14811407153372192654

`A020725(eq[12, A038548(n+1)])`
-/

namespace A137487.P14811407153372192654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137487.P14811407153372192654

namespace A137487

/-- `A020725(eq[12, A038548(n+1)])` -/
def P14811407153372192654.Spec : Prop :=
  ∀ n, P14811407153372192654.a n = A137487 (n + 1)

end A137487

/-! ## A137487.P6363863286233907774

`eq[24, A000005(A055456(n+1))]`
-/

namespace A137487.P6363863286233907774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P6363863286233907774

namespace A137487

/-- `eq[24, A000005(A055456(n+1))]` -/
def P6363863286233907774.Spec : Prop :=
  ∀ n, (P6363863286233907774.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P9694334070935525059

`eq[24, A000005(A060000(n+1))]`
-/

namespace A137487.P9694334070935525059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P9694334070935525059

namespace A137487

/-- `eq[24, A000005(A060000(n+1))]` -/
def P9694334070935525059.Spec : Prop :=
  ∀ n, (P9694334070935525059.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P3218475950515725882

`eq[24, A000005(A138153(n+1))]`
-/

namespace A137487.P3218475950515725882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137487.P3218475950515725882

namespace A137487

/-- `eq[24, A000005(A138153(n+1))]` -/
def P3218475950515725882.Spec : Prop :=
  ∀ n, (P3218475950515725882.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P11257747140500182468

`A020725(eq[24, A334954(n+1)-1])`
-/

namespace A137487.P11257747140500182468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137487.P11257747140500182468

namespace A137487

/-- `A020725(eq[24, A334954(n+1)-1])` -/
def P11257747140500182468.Spec : Prop :=
  ∀ n, P11257747140500182468.a n = A137487 (n + 1)

end A137487

/-! ## A137487.P14450966066704547840

`A065475(eq[24, A334954(n+1)-1])`
-/

namespace A137487.P14450966066704547840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137487.P14450966066704547840

namespace A137487

/-- `A065475(eq[24, A334954(n+1)-1])` -/
def P14450966066704547840.Spec : Prop :=
  ∀ n, P14450966066704547840.a n = A137487 (n + 1)

end A137487

/-! ## A137487.P6761765710531752599

`∩[A248693(n+1), A336418(n+1)]`
-/

namespace A137487.P6761765710531752599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P6761765710531752599

namespace A137487

/-- `∩[A248693(n+1), A336418(n+1)]` -/
def P6761765710531752599.Spec : Prop :=
  ∀ n, (P6761765710531752599.a n : ℤ) = A137487 (n + 1)

end A137487

/-! ## A137487.P11351984129238198705

`∩[A176238(n+1), A336418(n+1)]`
-/

namespace A137487.P11351984129238198705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P11351984129238198705

namespace A137487

/-- `∩[A176238(n+1), A336418(n+1)]` -/
def P11351984129238198705.Spec : Prop :=
  ∀ n, (P11351984129238198705.a n : ℤ) = A137487 (n + 1)

end A137487

/-!
# A137488: Numbers with 25 divisors.

The programs for A137488, there is no canonical definition to state claims against.
-/

/-! ## A137488.P16135210156505827330

`A201464(A076084(n+1))^4`
-/

namespace A137488.P16135210156505827330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201464 (A076084 (n + 1)).toNat ^ 4

end

end A137488.P16135210156505827330

/-! ## A137488.P4945629407419188867

`A287621(A006881(n+1))²²`
-/

namespace A137488.P4945629407419188867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A287621 (A006881 (n + 1)).toNat ^ 2) ^ 2

end

end A137488.P4945629407419188867

/-! ## A137488.P1798800598961520429

`record[A085986(A326921(n+1))²]`
-/

namespace A137488.P1798800598961520429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (A326921 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137488.P1798800598961520429

/-! ## A137488.P3018448340187602449

`A189991(n+1)%A103576(n+1)`
-/

namespace A137488.P3018448340187602449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189991 (n + 1)) (A103576 (n + 1))

end

end A137488.P3018448340187602449

/-! ## A137488.P1448791122424292696

`A085986(n+1)^A246052(A171565(n))`
-/

namespace A137488.P1448791122424292696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085986 (n + 1) : ℚ) ^ (A246052 (A171565 n).toNat : ℤ)

end

end A137488.P1448791122424292696

/-!
# A137489: Numbers with 26 divisors.

The programs for A137489, there is no canonical definition to state claims against.
-/

/-! ## A137489.P2917321050973482185

`A175744(n+1)/A040056(A328961(n+1))`
-/

namespace A137489.P2917321050973482185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175744 (n + 1) : ℚ) / (A040056 (A328961 (n + 1)).toNat : ℚ)

end

end A137489.P2917321050973482185

/-! ## A137489.P9277164945578038283

`A175744(n+1)/A040056(A077317(n+1))`
-/

namespace A137489.P9277164945578038283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175744 (n + 1) : ℚ) / (A040056 (A077317 (n + 1)).toNat : ℚ)

end

end A137489.P9277164945578038283

/-! ## A137489.P6129898007624892449

`A152691(A152691(p?[2*n+1]))`
-/

namespace A137489.P6129898007624892449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (A152691 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A137489.P6129898007624892449

/-! ## A137489.P15586515749129351448

`A065091(n+1)*A165829(A085986(n+1))`
-/

namespace A137489.P15586515749129351448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A165829 (A085986 (n + 1)).toNat

end

end A137489.P15586515749129351448

/-! ## A137489.P2178750108218773597

`A000005(A068443(n+1))*A137485(n+1)`
-/

namespace A137489.P2178750108218773597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068443 (n + 1)).toNat * A137485 (n + 1)

end

end A137489.P2178750108218773597

/-!
# A137490: Numbers with 27 divisors.

The programs for A137490, the canonical program `A137490.P3679708091584043787` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137490 has offset 1).

The definition of A137490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137490.P3679708091584043787

`(eq[7, A056595(n+1)]+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137490

/-- `(eq[7, A056595(n+1)]+1)²` -/
def P3679708091584043787.Spec : Prop :=
  ∀ n, (P3679708091584043787.a n : ℤ) = A137490 (n + 1)

theorem P3679708091584043787.correct : P3679708091584043787.Spec := by
  intro n
  simp only [A137490, Nat.add_sub_cancel]

end A137490

/-! ## A137490.P2730410569238943162

`(eq[13, A063647(n+1)]+1)²`
-/

namespace A137490.P2730410569238943162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A137490.P2730410569238943162

namespace A137490

/-- `(eq[13, A063647(n+1)]+1)²` -/
def P2730410569238943162.Spec : Prop :=
  ∀ n, (P2730410569238943162.a n : ℤ) = A137490 (n + 1)

end A137490

/-! ## A137490.P9536938842527225649

`eq[5, A305149(A028310(n))]²`
-/

namespace A137490.P9536938842527225649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A137490.P9536938842527225649

namespace A137490

/-- `eq[5, A305149(A028310(n))]²` -/
def P9536938842527225649.Spec : Prop :=
  ∀ n, (P9536938842527225649.a n : ℤ) = A137490 (n + 1)

end A137490

/-! ## A137490.P701983853369779733

`A000290(eq[13, A063647(n+1)]+1)`
-/

namespace A137490.P701983853369779733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137490.P701983853369779733

namespace A137490

/-- `A000290(eq[13, A063647(n+1)]+1)` -/
def P701983853369779733.Spec : Prop :=
  ∀ n, P701983853369779733.a n = A137490 (n + 1)

end A137490

/-! ## A137490.P9864386434475900333

`∪[A162143(n+1), A179699(n+1)]`
-/

namespace A137490.P9864386434475900333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137490.P9864386434475900333

namespace A137490

/-- `∪[A162143(n+1), A179699(n+1)]` -/
def P9864386434475900333.Spec : Prop :=
  ∀ n, (P9864386434475900333.a n : ℤ) = A137490 (n + 1)

end A137490

/-!
# A137491: Numbers with 28 divisors.

The programs for A137491, there is no canonical definition to state claims against.
-/

/-! ## A137491.P17254703573473418546

`A175751(A187829(n+1))/16`
-/

namespace A137491.P17254703573473418546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175751 (A187829 (n + 1)).toNat : ℚ) / 16

end

end A137491.P17254703573473418546

/-! ## A137491.P16631700170742415215

`A175751(n+1)/A040056(2^n)`
-/

namespace A137491.P16631700170742415215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175751 (n + 1) : ℚ) / (A040056 (2 ^ n) : ℚ)

end

end A137491.P16631700170742415215

/-! ## A137491.P17417922896182883714

`A175751(n+1)/A010149(A008888(n))`
-/

namespace A137491.P17417922896182883714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175751 (n + 1) : ℚ) / (A010149 (A008888 n).toNat : ℚ)

end

end A137491.P17417922896182883714

/-! ## A137491.P297484692974556062

`A175751(n+1)/A010149(A059154(n))`
-/

namespace A137491.P297484692974556062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175751 (n + 1) : ℚ) / (A010149 (A059154 n).toNat : ℚ)

end

end A137491.P297484692974556062

/-! ## A137491.P6120285211496338914

`A175751(n+1)/A040071(A175738(n+1))`
-/

namespace A137491.P6120285211496338914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175751 (n + 1) : ℚ) / (A040071 (A175738 (n + 1)).toNat : ℚ)

end

end A137491.P6120285211496338914

/-!
# A137492: 

The programs for A137492, there is no canonical definition to state claims against.
-/

/-! ## A137492.P17139100469263057431

`Δ[A007504(n)]^28`
-/

namespace A137492.P17139100469263057431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 28

end

end A137492.P17139100469263057431

/-! ## A137492.P12173433717761078065

`p?[A014681(n)]^28`
-/

namespace A137492.P12173433717761078065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 28

end

end A137492.P12173433717761078065

/-! ## A137492.P454903988399975820

`A092759(n+1)^4`
-/

namespace A137492.P454903988399975820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) ^ 4

end

end A137492.P454903988399975820

/-! ## A137492.P10424594326873036243

`A030514(n+1)^7`
-/

namespace A137492.P10424594326873036243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 7

end

end A137492.P10424594326873036243

/-! ## A137492.P13823977147719934710

`A001248(n+1)^14`
-/

namespace A137492.P13823977147719934710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 14

end

end A137492.P13823977147719934710

/-! ## A137492.P2045520015480514012

`A000040(n+1)^28`
-/

namespace A137492.P2045520015480514012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 28

end

end A137492.P2045520015480514012

/-! ## A137492.P8812563847876582961

`record[A006530(n+2)^28]`
-/

namespace A137492.P8812563847876582961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137492.P8812563847876582961

/-! ## A137492.P7831507128317175595

`record[A014963(n+2)^28]`
-/

namespace A137492.P7831507128317175595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137492.P7831507128317175595

/-! ## A137492.P14841911251516488271

`record[A020639(n+2)^28]`
-/

namespace A137492.P14841911251516488271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137492.P14841911251516488271

/-! ## A137492.P4433059132112377244

`(A001248(n+1)*A030631(n+1))²`
-/

namespace A137492.P4433059132112377244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) * A030631 (n + 1)) ^ 2

end

end A137492.P4433059132112377244

/-! ## A137492.P5073333839724926417

`(A030514(n+1)*A030629(n+1))²`
-/

namespace A137492.P5073333839724926417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) * A030629 (n + 1)) ^ 2

end

end A137492.P5073333839724926417

/-! ## A137492.P15417397668930985902

`(A000040(n+1)*A138031(n+1))²`
-/

namespace A137492.P15417397668930985902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A138031 (n + 1)) ^ 2

end

end A137492.P15417397668930985902

/-!
# A137493: Numbers with 30 divisors.

The programs for A137493, there is no canonical definition to state claims against.
-/

/-! ## A137493.P13999074126711519548

`eq[30, A000005(A028310(n))]`
-/

namespace A137493.P13999074126711519548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137493.P13999074126711519548

/-!
# A137494: Fibonacci numbers where no digit is a prime.

The programs for A137494, there is no canonical definition to state claims against.
-/

/-! ## A137494.P5017791332579048180

`A000045(eq[A051903(n+1), A231201(n+1)])`
-/

namespace A137494.P5017791332579048180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137494.P5017791332579048180

/-! ## A137494.P2724006422853746107

`A000045(eq[A139355(2*(n+2)), A365661(2*n+1)])`
-/

namespace A137494.P2724006422853746107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137494.P2724006422853746107

/-! ## A137494.P13762532272751884115

`A000045(eq[A070094(n+1), A317805(n+1)])`
-/

namespace A137494.P13762532272751884115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137494.P13762532272751884115

/-!
# A137495: a(n) = A098601(2n) + A098601(2n+1).

The programs for A137495, the canonical program `A137495.P4252123000928079223` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137495 has offset 0).

The definition of A137495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A098601(2*n)+A098601(2*n+1)` (program `A137495.P4252123000928079223`, by `A137495.P4252123000928079223.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137495.P3155090716779164920

`2*A005314(n+1)-A005314(n)`
-/

namespace A137495.P3155090716779164920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005314 (n + 1) - A005314 n

end

end A137495.P3155090716779164920

namespace A137495

/-- `2*A005314(n+1)-A005314(n)` -/
def P3155090716779164920.Spec : Prop :=
  ∀ n, P3155090716779164920.a n = A137495 n

end A137495

/-! ## A137495.P4252123000928079223

`A098601(2*n)+A098601(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137495

/-- `A098601(2*n)+A098601(2*n+1)` -/
def P4252123000928079223.Spec : Prop :=
  ∀ n, P4252123000928079223.a n = A137495 n

theorem P4252123000928079223.correct : P4252123000928079223.Spec := by
  intro n
  simp only [A137495]

end A137495

/-! ## A137495.P15088134358855820346

`ogf((2-x)/(1-2x+x^2-x^3))`
-/

namespace A137495.P15088134358855820346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, 1, -1] n

end

end A137495.P15088134358855820346

namespace A137495

/-- `ogf((2-x)/(1-2x+x^2-x^3))` -/
def P15088134358855820346.Spec : Prop :=
  ∀ n, P15088134358855820346.a n = A137495 n

end A137495

/-! ## A137495.P9618494721431270136

`record[a(n-2)-a(n-3)]` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A137495.P9618494721431270136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137495.P9618494721431270136

namespace A137495

/-- `record[a(n-2)-a(n-3)]` -/
def P9618494721431270136.Spec : Prop :=
  ∀ n, P9618494721431270136.a n = A137495 n

end A137495

/-! ## A137495.P13208975604338564984

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A137495.P13208975604338564984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 4))

end

end A137495.P13208975604338564984

namespace A137495

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P13208975604338564984.Spec : Prop :=
  ∀ n, (P13208975604338564984.a n : ℤ) = A137495 n

end A137495

/-! ## A137495.P9218940022433991785

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A137495.P9218940022433991785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A137495.P9218940022433991785

namespace A137495

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P9218940022433991785.Spec : Prop :=
  ∀ n, P9218940022433991785.a n = A137495 n

end A137495

/-! ## A137495.P1608307188277757782

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A137495.P1608307188277757782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A137495.P1608307188277757782

namespace A137495

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P1608307188277757782.Spec : Prop :=
  ∀ n, P1608307188277757782.a n = A137495 n

end A137495

/-! ## A137495.P3529607252344057395

`record[A109248(n+6)]`
-/

namespace A137495.P3529607252344057395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137495.P3529607252344057395

namespace A137495

/-- `record[A109248(n+6)]` -/
def P3529607252344057395.Spec : Prop :=
  ∀ n, P3529607252344057395.a n = A137495 n

end A137495

/-! ## A137495.P12255317220567554346

`A007307(2*(n+1))`
-/

namespace A137495.P12255317220567554346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (2 * (n + 1))

end

end A137495.P12255317220567554346

namespace A137495

/-- `A007307(2*(n+1))` -/
def P12255317220567554346.Spec : Prop :=
  ∀ n, P12255317220567554346.a n = A137495 n

end A137495

/-! ## A137495.P4068875448154175283

`A109248(2*(n+3))`
-/

namespace A137495.P4068875448154175283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (2 * (n + 3))

end

end A137495.P4068875448154175283

namespace A137495

/-- `A109248(2*(n+3))` -/
def P4068875448154175283.Spec : Prop :=
  ∀ n, P4068875448154175283.a n = A137495 n

end A137495

/-! ## A137495.P14425039230894080066

`∑[A098601(2*n)+1]`
-/

namespace A137495.P14425039230894080066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098601 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137495.P14425039230894080066

namespace A137495

/-- `∑[A098601(2*n)+1]` -/
def P14425039230894080066.Spec : Prop :=
  ∀ n, P14425039230894080066.a n = A137495 n

end A137495

/-! ## A137495.P6456856849565688455

`A098601(2*n+3)-1`
-/

namespace A137495.P6456856849565688455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098601 (2 * n + 3) - 1

end

end A137495.P6456856849565688455

namespace A137495

/-- `A098601(2*n+3)-1` -/
def P6456856849565688455.Spec : Prop :=
  ∀ n, P6456856849565688455.a n = A137495 n

end A137495

/-! ## A137495.P16031408550087185231

`A259968(n)+a(n-1)` with `a(0)=2`
-/

namespace A137495.P16031408550087185231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259968 n + a (n - 1)

end

end A137495.P16031408550087185231

namespace A137495

/-- `A259968(n)+a(n-1)` -/
def P16031408550087185231.Spec : Prop :=
  ∀ n, P16031408550087185231.a n = A137495 n

end A137495

/-! ## A137495.P6237701136576464900

`A049853(n+1)+A005251(n)`
-/

namespace A137495.P6237701136576464900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 1) + A005251 n

end

end A137495.P6237701136576464900

namespace A137495

/-- `A049853(n+1)+A005251(n)` -/
def P6237701136576464900.Spec : Prop :=
  ∀ n, P6237701136576464900.a n = A137495 n

end A137495

/-! ## A137495.P7122000941660319367

`A307677(n)+A060945(n+1)`
-/

namespace A137495.P7122000941660319367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307677 n + A060945 (n + 1)

end

end A137495.P7122000941660319367

namespace A137495

/-- `A307677(n)+A060945(n+1)` -/
def P7122000941660319367.Spec : Prop :=
  ∀ n, P7122000941660319367.a n = A137495 n

end A137495

/-! ## A137495.P3019117998198706531

`A307677(n)+A181532(n+2)`
-/

namespace A137495.P3019117998198706531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307677 n + A181532 (n + 2)

end

end A137495.P3019117998198706531

namespace A137495

/-- `A307677(n)+A181532(n+2)` -/
def P3019117998198706531.Spec : Prop :=
  ∀ n, P3019117998198706531.a n = A137495 n

end A137495

/-! ## A137495.P5033506063953107565

`A232582(n+2)-A005314(n)`
-/

namespace A137495.P5033506063953107565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232582 (n + 2) - A005314 n

end

end A137495.P5033506063953107565

namespace A137495

/-- `A232582(n+2)-A005314(n)` -/
def P5033506063953107565.Spec : Prop :=
  ∀ n, P5033506063953107565.a n = A137495 n

end A137495

/-! ## A137495.P2111494747169089831

`A005314(n+1)+Δ[A005314(n)]`
-/

namespace A137495.P2111494747169089831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) + (f1 (n + 1) - f1 n)

end

end A137495.P2111494747169089831

namespace A137495

/-- `A005314(n+1)+Δ[A005314(n)]` -/
def P2111494747169089831.Spec : Prop :=
  ∀ n, P2111494747169089831.a n = A137495 n

end A137495

/-! ## A137495.P5083901929678684829

`A049853(n)+Δ[A289692(n+1)]`
-/

namespace A137495.P5083901929678684829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + (f1 (n + 1) - f1 n)

end

end A137495.P5083901929678684829

namespace A137495

/-- `A049853(n)+Δ[A289692(n+1)]` -/
def P5083901929678684829.Spec : Prop :=
  ∀ n, P5083901929678684829.a n = A137495 n

end A137495

/-! ## A137495.P4030059718896568338

`A005314(n+1)+A005251(n+1)`
-/

namespace A137495.P4030059718896568338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) + A005251 (n + 1)

end

end A137495.P4030059718896568338

namespace A137495

/-- `A005314(n+1)+A005251(n+1)` -/
def P4030059718896568338.Spec : Prop :=
  ∀ n, P4030059718896568338.a n = A137495 n

end A137495

/-!
# A137498: A triangular sequence of coefficients from a Laplace Transform of a Bernoulli expansion function: LaplaceTransform[t*Exp[x*t]/(Exp[t] - 1), t, 1/t] = Zeta[2,1+1/t-x]->shifted to Zeta[5,1+1/t-x].

The programs for A137498, there is no canonical definition to state claims against.
-/

/-! ## A137498.P16074608943973787725

`∑[A002915(3*n+1)%A007239(n+1)]`
-/

namespace A137498.P16074608943973787725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002915 (3 * n + 1)) (A007239 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137498.P16074608943973787725

/-! ## A137498.P11113034482513193370

`A126930(n)*A220692(A127385(n))`
-/

namespace A137498.P11113034482513193370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n * A220692 (A127385 n).toNat

end

end A137498.P11113034482513193370

/-!
# A137499: A triangular sequence of coefficients from a Laplace Transform of a Bernoulli expansion function: LaplaceTransform[t*Exp[x*t]/(Exp[t] - 1), t, 1/t] = Zeta[2,1+1/t-x]->shifted to Zeta[6,1+1/t-x].

The programs for A137499, there is no canonical definition to state claims against.
-/

/-! ## A137499.P16773483741037807377

`A113290(A290265(n))`
-/

namespace A137499.P16773483741037807377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113290 (A290265 n).toNat

end

end A137499.P16773483741037807377

/-! ## A137499.P2586011852107944444

`4*A173451(A159929(n))`
-/

namespace A137499.P2586011852107944444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173451 (A159929 n).toNat

end

end A137499.P2586011852107944444

/-! ## A137499.P3482252990726845860

`12*A213369(A053528(n))`
-/

namespace A137499.P3482252990726845860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A213369 (A053528 n).toNat

end

end A137499.P3482252990726845860

