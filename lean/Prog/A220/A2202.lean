import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220200: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX4 array.

The programs for A220200, there is no canonical definition to state claims against.
-/

/-! ## A220200.P14365925201509978897

`A220204(∑[n+4]+3)`
-/

namespace A220200.P14365925201509978897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220200.P14365925201509978897

/-! ## A220200.P9267276578935926757

`A250002(n)+A220204(A027379(n+2))`
-/

namespace A220200.P9267276578935926757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + A220204 (A027379 (n + 2)).toNat

end

end A220200.P9267276578935926757

/-! ## A220200.P2499106367657754542

`A353687(2*n+5)+A220204(A027379(n+2))`
-/

namespace A220200.P2499106367657754542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353687 (2 * n + 5) + A220204 (A027379 (n + 2)).toNat

end

end A220200.P2499106367657754542

/-!
# A220201: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A220201, there is no canonical definition to state claims against.
-/

/-! ## A220201.P8050804389833292712

`A220204(∏{e}[3^(n+3), C(#+2, 2)]+n+1)`
-/

namespace A220201.P8050804389833292712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 + (n + 1))

end

end A220201.P8050804389833292712

/-! ## A220201.P3948112895296131265

`A220204(Δ[A264443(n)])`
-/

namespace A220201.P3948112895296131265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (f1 (n + 1) - f1 n).toNat

end

end A220201.P3948112895296131265

/-! ## A220201.P12149386333442638125

`A220204(A056115(n)+11)`
-/

namespace A220201.P12149386333442638125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A056115 n + 11).toNat

end

end A220201.P12149386333442638125

/-! ## A220201.P3388488287004772728

`A220204(eq[2, A092921(n)])`
-/

namespace A220201.P3388488287004772728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220201.P3388488287004772728

/-!
# A220202: Number of n X 6 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 6 array.

The programs for A220202, there is no canonical definition to state claims against.
-/

/-! ## A220202.P14164790720168760970

`A220204(A052905(n+3))`
-/

namespace A220202.P14164790720168760970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A052905 (n + 3)).toNat

end

end A220202.P14164790720168760970

/-! ## A220202.P3180529152047016528

`A220204(A302537(n)+15)`
-/

namespace A220202.P3180529152047016528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A302537 n + 15).toNat

end

end A220202.P3180529152047016528

/-! ## A220202.P740398545303131460

`A220204(A056119(n)+16)`
-/

namespace A220202.P740398545303131460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A056119 n + 16).toNat

end

end A220202.P740398545303131460

/-!
# A220203: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A220203, there is no canonical definition to state claims against.
-/

/-! ## A220203.P2713199741463590480

`A220204(A055999(n+4))`
-/

namespace A220203.P2713199741463590480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A055999 (n + 4)).toNat

end

end A220203.P2713199741463590480

/-!
# A220204: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nXk array.

The programs for A220204, there is no canonical definition to state claims against.
-/

/-! ## A220204.P15166428949119724832

`A072088(A219373(n+1))-A221828(n+1)`
-/

namespace A220204.P15166428949119724832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A219373 (n + 1)).toNat - A221828 (n + 1)

end

end A220204.P15166428949119724832

/-! ## A220204.P1444563373830804554

`A072089(A220931(n+1))-A221828(n+1)`
-/

namespace A220204.P1444563373830804554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A220931 (n + 1)).toNat - A221828 (n + 1)

end

end A220204.P1444563373830804554

/-! ## A220204.P12564501651499701729

`A123869(A207637(n+1)%A123843(n+1))`
-/

namespace A220204.P12564501651499701729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123869 (Int.tmod (A207637 (n + 1)) (A123843 (n + 1))).toNat

end

end A220204.P12564501651499701729

/-!
# A220205: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A220205, the canonical program `A220205.P8784558185528918401` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220205 has offset 1).

The definition of A220205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220205.P8784558185528918401

`ogf((4-14x+36x^2-57x^3+48x^4-18x^5+3x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220205

/-- `ogf((4-14x+36x^2-57x^3+48x^4-18x^5+3x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P8784558185528918401.Spec : Prop :=
  ∀ n, P8784558185528918401.a n = A220205 (n + 1)

theorem P8784558185528918401.correct : P8784558185528918401.Spec := by
  intro n
  simp only [A220205, Nat.add_sub_cancel]

end A220205

/-! ## A220205.P953235010054412254

`A220204(∑[n+1]+2)`
-/

namespace A220205.P953235010054412254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220205.P953235010054412254

namespace A220205

/-- `A220204(∑[n+1]+2)` -/
def P953235010054412254.Spec : Prop :=
  ∀ n, P953235010054412254.a n = A220205 (n + 1)

end A220205

/-! ## A220205.P15618890675387143158

`record[A010054(n)*A220204(n+2)]`
-/

namespace A220205.P15618890675387143158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220205.P15618890675387143158

namespace A220205

/-- `record[A010054(n)*A220204(n+2)]` -/
def P15618890675387143158.Spec : Prop :=
  ∀ n, P15618890675387143158.a n = A220205 (n + 1)

end A220205

/-! ## A220205.P10041139952654309114

`record[A220204(n+1)/A036073(n)]`
-/

namespace A220205.P10041139952654309114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220204 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220205.P10041139952654309114

namespace A220205

/-- `record[A220204(n+1)/A036073(n)]` -/
def P10041139952654309114.Spec : Prop :=
  ∀ n, P10041139952654309114.a n = (A220205 (n + 1) : ℚ)

end A220205

/-! ## A220205.P11856771180959258841

`record[A220204(n+1)/A156366(n)]`
-/

namespace A220205.P11856771180959258841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220204 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220205.P11856771180959258841

namespace A220205

/-- `record[A220204(n+1)/A156366(n)]` -/
def P11856771180959258841.Spec : Prop :=
  ∀ n, P11856771180959258841.a n = (A220205 (n + 1) : ℚ)

end A220205

/-!
# A220206: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3 X n array.

The programs for A220206, there is no canonical definition to state claims against.
-/

/-! ## A220206.P13420220795350451284

`A220204(∑[n+2]+4)`
-/

namespace A220206.P13420220795350451284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220206.P13420220795350451284

/-! ## A220206.P11115445101201849768

`and(-1, A220204(A167614(n+1)))`
-/

namespace A220206.P11115445101201849768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220204 (A167614 (n + 1)).toNat)

end

end A220206.P11115445101201849768

/-! ## A220206.P17858493650219654101

`record[A115359(n)*A220204(n+4)]`
-/

namespace A220206.P17858493650219654101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A220204 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220206.P17858493650219654101

/-! ## A220206.P17671589813056695584

`record[A220204(n+4)/A225469(n)]`
-/

namespace A220206.P17671589813056695584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220204 (n + 4) : ℚ) / (A225469 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220206.P17671589813056695584

/-! ## A220206.P13022906297479748812

`record[gcd(A095832(n+1), A220204(n+4))]`
-/

namespace A220206.P13022906297479748812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095832 (n + 1)) (A220204 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220206.P13022906297479748812

/-!
# A220207: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4Xn array.

The programs for A220207, there is no canonical definition to state claims against.
-/

/-! ## A220207.P10307723520285645486

`A220204(C(n+5, 2)-n)`
-/

namespace A220207.P10307723520285645486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (Nat.choose (n + 5) 2 - n)

end

end A220207.P10307723520285645486

/-! ## A220207.P16990822253083618345

`A220204(A141214(n)+7)`
-/

namespace A220207.P16990822253083618345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A141214 n + 7).toNat

end

end A220207.P16990822253083618345

/-! ## A220207.P8785293794772729381

`A220204(A052905(n)+9)`
-/

namespace A220207.P8785293794772729381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A052905 n + 9).toNat

end

end A220207.P8785293794772729381

/-! ## A220207.P5504994887637167872

`A220204(A055999(n)+10)`
-/

namespace A220207.P5504994887637167872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A055999 n + 10).toNat

end

end A220207.P5504994887637167872

/-! ## A220207.P11067170281568973535

`A220204(eq[5, A066657(n)])`
-/

namespace A220207.P11067170281568973535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220207.P11067170281568973535

/-!
# A220208: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal, vertical, or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5Xn array.

The programs for A220208, there is no canonical definition to state claims against.
-/

/-! ## A220208.P13966625713954070541

`A220204(A167499(n+3))`
-/

namespace A220208.P13966625713954070541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A167499 (n + 3)).toNat

end

end A220208.P13966625713954070541

/-! ## A220208.P6571439198023190216

`A220204(A155212(n)+13)`
-/

namespace A220208.P6571439198023190216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A155212 n + 13).toNat

end

end A220208.P6571439198023190216

/-! ## A220208.P11567459751944274988

`A220204(A056000(n)+15)`
-/

namespace A220208.P11567459751944274988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A056000 n + 15).toNat

end

end A220208.P11567459751944274988

/-! ## A220208.P17550150421394761496

`A220204(eq[7, A066657(n)])`
-/

namespace A220208.P17550150421394761496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220208.P17550150421394761496

/-! ## A220208.P1203636085644433365

`A220204(∑[A020705(n)]+11)`
-/

namespace A220208.P1203636085644433365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A220208.P1203636085644433365

/-!
# A220209: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A220209, there is no canonical definition to state claims against.
-/

/-! ## A220209.P15579676106141768159

`A220204(∑[comp[10*n]+4]+16)`
-/

namespace A220209.P15579676106141768159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A220209.P15579676106141768159

/-!
# A220210: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A220210, there is no canonical definition to state claims against.
-/

/-! ## A220210.P8762650028127797029

`A220204(A056119(n)+28)`
-/

namespace A220210.P8762650028127797029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A056119 n + 28).toNat

end

end A220210.P8762650028127797029

/-!
# A220211: The order of the one-dimensional affine group in the finite fields F_q with q >= 3.

The programs for A220211, the canonical program `A220211.P14942763674959834382` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220211 has offset 1).

The definition of A220211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220211.P14942763674959834382

`A000961(n+3)*(A000961(n+3)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A220211

/-- `A000961(n+3)*(A000961(n+3)-1)` -/
def P14942763674959834382.Spec : Prop :=
  ∀ n, P14942763674959834382.a n = A220211 (n + 1)

theorem P14942763674959834382.correct : P14942763674959834382.Spec := by
  intro n
  simp only [A220211, Nat.add_sub_cancel]

end A220211

/-! ## A220211.P2777267839314292509

`record[A345988(n+3)]`
-/

namespace A220211.P2777267839314292509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345988 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220211.P2777267839314292509

namespace A220211

/-- `record[A345988(n+3)]` -/
def P2777267839314292509.Spec : Prop :=
  ∀ n, P2777267839314292509.a n = A220211 (n + 1)

end A220211

/-! ## A220211.P1985899489865163

`2*C(A246655(n+2), 2)`
-/

namespace A220211.P1985899489865163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A246655 (n + 2)).toNat 2

end

end A220211.P1985899489865163

namespace A220211

/-- `2*C(A246655(n+2), 2)` -/
def P1985899489865163.Spec : Prop :=
  ∀ n, (P1985899489865163.a n : ℤ) = A220211 (n + 1)

end A220211

/-! ## A220211.P8678860965325016875

`2*C(A000961(n+3), 2)`
-/

namespace A220211.P8678860965325016875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000961 (n + 3)).toNat 2

end

end A220211.P8678860965325016875

namespace A220211

/-- `2*C(A000961(n+3), 2)` -/
def P8678860965325016875.Spec : Prop :=
  ∀ n, (P8678860965325016875.a n : ℤ) = A220211 (n + 1)

end A220211

/-! ## A220211.P14293150748332228657

`record[(n+2)*A028233(n+3)]`
-/

namespace A220211.P14293150748332228657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A028233 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220211.P14293150748332228657

namespace A220211

/-- `record[(n+2)*A028233(n+3)]` -/
def P14293150748332228657.Spec : Prop :=
  ∀ n, P14293150748332228657.a n = A220211 (n + 1)

end A220211

/-!
# A220212: Convolution of natural numbers (A000027) with tetradecagonal numbers (A051866).

The programs for A220212, the canonical program `A220212.P2569847439117346917` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220212 has offset 0).

The definition of A220212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220212.P12962839179224411176

`ogf((x+11x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A220212.P12962839179224411176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 11] [1, -5, 10, -10, 5, -1] n

end

end A220212.P12962839179224411176

namespace A220212

/-- `ogf((x+11x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12962839179224411176.Spec : Prop :=
  ∀ n, P12962839179224411176.a n = A220212 n

end A220212

/-! ## A220212.P2569847439117346917

`n*(n+1)*(n+2)*(3*n-2)/6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220212

/-- `n*(n+1)*(n+2)*(3*n-2)/6` -/
def P2569847439117346917.Spec : Prop :=
  ∀ n, P2569847439117346917.a n = (A220212 n : ℚ)

end A220212

/-! ## A220212.P2638367645157008260

`∑[∑[∑[a(n-1)+12]]]` with `a(0)=0, a(1)=1`
-/

namespace A220212.P2638367645157008260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220212.P2638367645157008260

namespace A220212

/-- `∑[∑[∑[a(n-1)+12]]]` -/
def P2638367645157008260.Spec : Prop :=
  ∀ n, (P2638367645157008260.a n : ℤ) = A220212 n

end A220212

/-! ## A220212.P1733514471786142476

`C(∑[2*n], 2)+C(n+1, 3)`
-/

namespace A220212.P1733514471786142476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + Nat.choose (n + 1) 3

end

end A220212.P1733514471786142476

namespace A220212

/-- `C(∑[2*n], 2)+C(n+1, 3)` -/
def P1733514471786142476.Spec : Prop :=
  ∀ n, (P1733514471786142476.a n : ℤ) = A220212 n

end A220212

/-! ## A220212.P320359795304589143

`C(n+3, 4)+11*C(n+2, 4)`
-/

namespace A220212.P320359795304589143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + 11 * Nat.choose (n + 2) 4

end

end A220212.P320359795304589143

namespace A220212

/-- `C(n+3, 4)+11*C(n+2, 4)` -/
def P320359795304589143.Spec : Prop :=
  ∀ n, (P320359795304589143.a n : ℤ) = A220212 n

end A220212

/-! ## A220212.P15740028871320543257

`∑[A172073(n)]`
-/

namespace A220212.P15740028871320543257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220212.P15740028871320543257

namespace A220212

/-- `∑[A172073(n)]` -/
def P15740028871320543257.Spec : Prop :=
  ∀ n, P15740028871320543257.a n = A220212 n

end A220212

/-! ## A220212.P8153129277003874630

`∑[∑[A051866(n)]]`
-/

namespace A220212.P8153129277003874630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220212.P8153129277003874630

namespace A220212

/-- `∑[∑[A051866(n)]]` -/
def P8153129277003874630.Spec : Prop :=
  ∀ n, P8153129277003874630.a n = A220212 n

end A220212

/-! ## A220212.P10557521609232219104

`∑[∑[A033568(n)-1]]`
-/

namespace A220212.P10557521609232219104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220212.P10557521609232219104

namespace A220212

/-- `∑[∑[A033568(n)-1]]` -/
def P10557521609232219104.Spec : Prop :=
  ∀ n, P10557521609232219104.a n = A220212 n

end A220212

/-! ## A220212.P226875230403256887

`∑[∑[A139267(n)-n]]`
-/

namespace A220212.P226875230403256887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220212.P226875230403256887

namespace A220212

/-- `∑[∑[A139267(n)-n]]` -/
def P226875230403256887.Spec : Prop :=
  ∀ n, P226875230403256887.a n = A220212 n

end A220212

/-! ## A220212.P7510531425549571295

`A007584(n)+C(n², 2)`
-/

namespace A220212.P7510531425549571295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A220212.P7510531425549571295

namespace A220212

/-- `A007584(n)+C(n², 2)` -/
def P7510531425549571295.Spec : Prop :=
  ∀ n, P7510531425549571295.a n = A220212 n

end A220212

/-! ## A220212.P12093065816619607852

`A391092(n+1)-∑[n]`
-/

namespace A220212.P12093065816619607852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220212.P12093065816619607852

namespace A220212

/-- `A391092(n+1)-∑[n]` -/
def P12093065816619607852.Spec : Prop :=
  ∀ n, P12093065816619607852.a n = A220212 n

end A220212

/-! ## A220212.P7446029673439128571

`abs(∑[∑[n]]*A112335(n))`
-/

namespace A220212.P7446029673439128571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A112335 n|

end

end A220212.P7446029673439128571

namespace A220212

/-- `abs(∑[∑[n]]*A112335(n))` -/
def P7446029673439128571.Spec : Prop :=
  ∀ n, P7446029673439128571.a n = A220212 n

end A220212

/-! ## A220212.P4216972246999330924

`∑[∑[A139268(n)-n²]]`
-/

namespace A220212.P4216972246999330924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220212.P4216972246999330924

namespace A220212

/-- `∑[∑[A139268(n)-n²]]` -/
def P4216972246999330924.Spec : Prop :=
  ∀ n, P4216972246999330924.a n = A220212 n

end A220212

/-! ## A220212.P11805274338669218256

`A212523(n)+A004188(n)`
-/

namespace A220212.P11805274338669218256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n + A004188 n

end

end A220212.P11805274338669218256

namespace A220212

/-- `A212523(n)+A004188(n)` -/
def P11805274338669218256.Spec : Prop :=
  ∀ n, P11805274338669218256.a n = A220212 n

end A220212

/-! ## A220212.P13561793393190230289

`A135503(n)+A103220(n)`
-/

namespace A220212.P13561793393190230289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A103220 n

end

end A220212.P13561793393190230289

namespace A220212

/-- `A135503(n)+A103220(n)` -/
def P13561793393190230289.Spec : Prop :=
  ∀ n, P13561793393190230289.a n = A220212 n

end A220212

/-! ## A220212.P17922155276155665442

`A255499(n)+A005581(n)`
-/

namespace A220212.P17922155276155665442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + A005581 n

end

end A220212.P17922155276155665442

namespace A220212

/-- `A255499(n)+A005581(n)` -/
def P17922155276155665442.Spec : Prop :=
  ∀ n, P17922155276155665442.a n = A220212 n

end A220212

/-! ## A220212.P10426432922473327250

`A036464(n+1)+A002413(n)`
-/

namespace A220212.P10426432922473327250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + A002413 n

end

end A220212.P10426432922473327250

namespace A220212

/-- `A036464(n+1)+A002413(n)` -/
def P10426432922473327250.Spec : Prop :=
  ∀ n, P10426432922473327250.a n = A220212 n

end A220212

/-! ## A220212.P7170656602942736783

`A172225(n+1)-A002413(n)`
-/

namespace A220212.P7170656602942736783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (n + 1) - A002413 n

end

end A220212.P7170656602942736783

namespace A220212

/-- `A172225(n+1)-A002413(n)` -/
def P7170656602942736783.Spec : Prop :=
  ∀ n, P7170656602942736783.a n = A220212 n

end A220212

/-! ## A220212.P17314899260833668834

`A172123(n+1)-A006503(n)`
-/

namespace A220212.P17314899260833668834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172123 (n + 1) - A006503 n

end

end A220212.P17314899260833668834

namespace A220212

/-- `A172123(n+1)-A006503(n)` -/
def P17314899260833668834.Spec : Prop :=
  ∀ n, P17314899260833668834.a n = A220212 n

end A220212

/-! ## A220212.P5207419432672343755

`A083374(n+1)-A134481(n)`
-/

namespace A220212.P5207419432672343755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) - A134481 n

end

end A220212.P5207419432672343755

namespace A220212

/-- `A083374(n+1)-A134481(n)` -/
def P5207419432672343755.Spec : Prop :=
  ∀ n, P5207419432672343755.a n = A220212 n

end A220212

/-!
# A220213: Majority value maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..1 n X 2 array.

The programs for A220213, the canonical program `A220213.P15178782729986403971` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220213 has offset 1).

The definition of A220213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220213.P15178782729986403971

`ogf((2+2x+7x^2+11x^3+13x^4+16x^5+12x^6+5x^7+4x^8)/(1-2x-2x^2-3x^3-7x^4-9x^5-12x^6-11x^7-4x^8-4x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220213

/-- `ogf((2+2x+7x^2+11x^3+13x^4+16x^5+12x^6+5x^7+4x^8)/(1-2x-2x^2-3x^3-7x^4-9x^5-12x^6-11x^7-4x^8-4x^9))` -/
def P15178782729986403971.Spec : Prop :=
  ∀ n, P15178782729986403971.a n = A220213 (n + 1)

theorem P15178782729986403971.correct : P15178782729986403971.Spec := by
  intro n
  simp only [A220213, Nat.add_sub_cancel]

end A220213

/-! ## A220213.P15073211172822214939

`A220217(∑[n+1]+2)`
-/

namespace A220213.P15073211172822214939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220213.P15073211172822214939

namespace A220213

/-- `A220217(∑[n+1]+2)` -/
def P15073211172822214939.Spec : Prop :=
  ∀ n, P15073211172822214939.a n = A220213 (n + 1)

end A220213

/-! ## A220213.P6610965414400387354

`record[A010054(n)*A220217(n+2)]`
-/

namespace A220213.P6610965414400387354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220213.P6610965414400387354

namespace A220213

/-- `record[A010054(n)*A220217(n+2)]` -/
def P6610965414400387354.Spec : Prop :=
  ∀ n, P6610965414400387354.a n = A220213 (n + 1)

end A220213

/-! ## A220213.P11561014309904376677

`record[gcd(A143844(n), A220217(n+2))]`
-/

namespace A220213.P11561014309904376677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A220217 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220213.P11561014309904376677

namespace A220213

/-- `record[gcd(A143844(n), A220217(n+2))]` -/
def P11561014309904376677.Spec : Prop :=
  ∀ n, (P11561014309904376677.a n : ℤ) = A220213 (n + 1)

end A220213

/-! ## A220213.P6735926943399618244

`(1-char[15])*A220217(A133263(n+1))`
-/

namespace A220213.P6735926943399618244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A220217 (A133263 (n + 1)).toNat

end

end A220213.P6735926943399618244

namespace A220213

/-- `(1-char[15])*A220217(A133263(n+1))` -/
def P6735926943399618244.Spec : Prop :=
  ∀ n, P6735926943399618244.a n = A220213 (n + 1)

end A220213

/-!
# A220214: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..1 nX3 array.

The programs for A220214, there is no canonical definition to state claims against.
-/

/-! ## A220214.P2752731017895469939

`A220217(∑[n+2]+4)`
-/

namespace A220214.P2752731017895469939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220214.P2752731017895469939

/-! ## A220214.P15225371724223617964

`lcm((-1)^n, A220217(A167614(n+1)))`
-/

namespace A220214.P15225371724223617964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A220217 (A167614 (n + 1)).toNat)

end

end A220214.P15225371724223617964

/-! ## A220214.P3475463816773458326

`record[A220217(n+4)/A220226(n+1)]`
-/

namespace A220214.P3475463816773458326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220217 (n + 4) : ℚ) / (A220226 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220214.P3475463816773458326

/-! ## A220214.P572758077958571585

`A220217(A167614(n+1))+A026815(n)`
-/

namespace A220214.P572758077958571585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (A167614 (n + 1)).toNat + A026815 n

end

end A220214.P572758077958571585

/-! ## A220214.P9081518154208472423

`A220217(A167614(n+1))+A185238(n)`
-/

namespace A220214.P9081518154208472423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (A167614 (n + 1)).toNat + A185238 n

end

end A220214.P9081518154208472423

/-!
# A220215: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..1 nX4 array.

The programs for A220215, there is no canonical definition to state claims against.
-/

/-! ## A220215.P7643376770782634737

`A220217(∑[n+3]+7)`
-/

namespace A220215.P7643376770782634737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220215.P7643376770782634737

/-!
# A220216: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..1 nX5 array.

The programs for A220216, there is no canonical definition to state claims against.
-/

/-! ## A220216.P15371991598625066619

`A220217(A374005(n+1))`
-/

namespace A220216.P15371991598625066619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (A374005 (n + 1)).toNat

end

end A220216.P15371991598625066619

/-! ## A220216.P14794318807937469295

`A220217(A167499(n+3))`
-/

namespace A220216.P14794318807937469295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (A167499 (n + 3)).toNat

end

end A220216.P14794318807937469295

/-! ## A220216.P892646944356870371

`A220217(A155212(n)+13)`
-/

namespace A220216.P892646944356870371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220217 (A155212 n + 13).toNat

end

end A220216.P892646944356870371

/-!
# A220217: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..1 nXk array.

The programs for A220217, there is no canonical definition to state claims against.
-/

/-! ## A220217.P7480183178863788367

`A220358(n+1)-A004198(A221001(n+1))`
-/

namespace A220217.P7480183178863788367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (n + 1) - A004198 (A221001 (n + 1)).toNat

end

end A220217.P7480183178863788367

/-! ## A220217.P1510677187554560360

`or(A220070(n+1), A347457(A220070(n+1)))`
-/

namespace A220217.P1510677187554560360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220070 (n + 1)) (A347457 (A220070 (n + 1)).toNat)

end

end A220217.P1510677187554560360

/-!
# A220218: Numbers where all exponents in its prime factorization are one less than a prime.

The programs for A220218, the canonical program `A220218.P17141423938851254412` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220218 has offset 1).

The definition of A220218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220218.P2225390029875666332

`eq[A001221(n+1), A001222(A000005(n+1))]+1`
-/

namespace A220218.P2225390029875666332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220218.P2225390029875666332

namespace A220218

/-- `eq[A001221(n+1), A001222(A000005(n+1))]+1` -/
def P2225390029875666332.Spec : Prop :=
  ∀ n, (P2225390029875666332.a n : ℤ) = A220218 (n + 1)

end A220218

/-! ## A220218.P7810134077729614433

`eq[A003958(A000005(n+1)), A005361(n+1)]+1`
-/

namespace A220218.P7810134077729614433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220218.P7810134077729614433

namespace A220218

/-- `eq[A003958(A000005(n+1)), A005361(n+1)]+1` -/
def P7810134077729614433.Spec : Prop :=
  ∀ n, (P7810134077729614433.a n : ℤ) = A220218 (n + 1)

end A220218

/-! ## A220218.P17141423938851254412

`eq[A001221(n+1), A058061(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A220218

/-- `eq[A001221(n+1), A058061(n+1)]+1` -/
def P17141423938851254412.Spec : Prop :=
  ∀ n, (P17141423938851254412.a n : ℤ) = A220218 (n + 1)

theorem P17141423938851254412.correct : P17141423938851254412.Spec := by
  intro n
  simp only [A220218, Nat.add_sub_cancel]

end A220218

/-!
# A220219: Products of primorials where all exponents in its prime factorization are one less than a prime.

The programs for A220219, there is no canonical definition to state claims against.
-/

/-! ## A220219.P9767341030879709384

`filter[A090958(n), A323509(#)]`
-/

namespace A220219.P9767341030879709384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P9767341030879709384

/-! ## A220219.P2377977249180575302

`filter[A025487(n+1), A323509(#)]`
-/

namespace A220219.P2377977249180575302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P2377977249180575302

/-! ## A220219.P8341224882072023261

`filter[A055932(n+1), A323509(#)]`
-/

namespace A220219.P8341224882072023261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P8341224882072023261

/-! ## A220219.P11449063388850599980

`filter[A065108(n+1), A323509(#)]`
-/

namespace A220219.P11449063388850599980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P11449063388850599980

/-! ## A220219.P7828650663322046552

`filter[A072378(n+1), A323509(#)]`
-/

namespace A220219.P7828650663322046552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P7828650663322046552

/-! ## A220219.P14713252612547245660

`filter[A074402(n+1), A323509(#)]`
-/

namespace A220219.P14713252612547245660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P14713252612547245660

/-! ## A220219.P17976821471957060668

`filter[A080197(n+1), A323509(#)]`
-/

namespace A220219.P17976821471957060668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P17976821471957060668

/-! ## A220219.P4516197342574689591

`filter[A080681(n+1), A323509(#)]`
-/

namespace A220219.P4516197342574689591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P4516197342574689591

/-! ## A220219.P17937779651046736044

`filter[A080682(n+1), A323509(#)]`
-/

namespace A220219.P17937779651046736044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P17937779651046736044

/-! ## A220219.P10218423279770982177

`filter[A080683(n+1), A323509(#)]`
-/

namespace A220219.P10218423279770982177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A220219.P10218423279770982177

/-!
# A220220: Primes p of the form p = A161671(k) = A161671(k+1).

The programs for A220220, the canonical program `A220220.P36485528534191165` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220220 has offset 1).

The definition of A220220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220220.P36485528534191165

`record[gcd(A141559(n+1), A141559(n+2))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A220220

/-- `record[gcd(A141559(n+1), A141559(n+2))]` -/
def P36485528534191165.Spec : Prop :=
  ∀ n, (P36485528534191165.a n : ℤ) = A220220 (n + 1)

theorem P36485528534191165.correct : P36485528534191165.Spec := by
  intro n
  simp only [A220220, Nat.add_sub_cancel]

end A220220

/-! ## A220220.P7317146326421575198

`p?[A161671(A173400(n+1))]`
-/

namespace A220220.P7317146326421575198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (A173400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220220.P7317146326421575198

namespace A220220

/-- `p?[A161671(A173400(n+1))]` -/
def P7317146326421575198.Spec : Prop :=
  ∀ n, P7317146326421575198.a n = A220220 (n + 1)

end A220220

/-!
# A220221: Odd positive integers k such that k^2 has at most three nonzero binary digits.

The programs for A220221, the canonical program `A220221.P9340865356054372420` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220221 has offset 1).

The definition of A220221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220221.P2991456710752293779

`ogf((1-2x^2-2x^3-2x^4+4x^5-10x^6-2x^7+12x^8)/(1-3x+2x^2))`
-/

namespace A220221.P2991456710752293779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -2, -2, 4, -10, -2, 12] [1, -3, 2] n

end

end A220221.P2991456710752293779

namespace A220221

/-- `ogf((1-2x^2-2x^3-2x^4+4x^5-10x^6-2x^7+12x^8)/(1-3x+2x^2))` -/
def P2991456710752293779.Spec : Prop :=
  ∀ n, P2991456710752293779.a n = A220221 (n + 1)

end A220221

/-! ## A220221.P9340865356054372420

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=17, a(6)=23, a(7)=33, a(8)=65`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220221

/-- `3*a(n-1)-2*a(n-2)` -/
def P9340865356054372420.Spec : Prop :=
  ∀ n, P9340865356054372420.a n = A220221 (n + 1)

theorem P9340865356054372420.correct : P9340865356054372420.Spec := by
  intro n
  simp only [A220221, Nat.add_sub_cancel]

end A220221

/-! ## A220221.P16824103087057653214

`record[or(A069626(n+1), A087207(n+1))]`
-/

namespace A220221.P16824103087057653214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069626 (n + 1)) (A087207 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220221.P16824103087057653214

namespace A220221

/-- `record[or(A069626(n+1), A087207(n+1))]` -/
def P16824103087057653214.Spec : Prop :=
  ∀ n, P16824103087057653214.a n = A220221 (n + 1)

end A220221

/-! ## A220221.P13097420458303577710

`record[or(A069626(n+1), A324195(n+1))]`
-/

namespace A220221.P13097420458303577710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069626 (n + 1)) (A324195 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220221.P13097420458303577710

namespace A220221

/-- `record[or(A069626(n+1), A324195(n+1))]` -/
def P13097420458303577710.Spec : Prop :=
  ∀ n, P13097420458303577710.a n = A220221 (n + 1)

end A220221

/-! ## A220221.P7870741889858369201

`record[or(1, A156552(A249811(n+1)))]`
-/

namespace A220221.P7870741889858369201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A156552 (A249811 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220221.P7870741889858369201

namespace A220221

/-- `record[or(1, A156552(A249811(n+1)))]` -/
def P7870741889858369201.Spec : Prop :=
  ∀ n, P7870741889858369201.a n = A220221 (n + 1)

end A220221

/-! ## A220221.P7048015456640505254

`record[or(A131060(n), A131816(n))]`
-/

namespace A220221.P7048015456640505254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131060 n) (A131816 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220221.P7048015456640505254

namespace A220221

/-- `record[or(A131060(n), A131816(n))]` -/
def P7048015456640505254.Spec : Prop :=
  ∀ n, P7048015456640505254.a n = A220221 (n + 1)

end A220221

/-! ## A220221.P15614825330602010906

`record[or(A238392(n)², A131816(n))]`
-/

namespace A220221.P15614825330602010906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238392 n ^ 2) (A131816 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220221.P15614825330602010906

namespace A220221

/-- `record[or(A238392(n)², A131816(n))]` -/
def P15614825330602010906.Spec : Prop :=
  ∀ n, P15614825330602010906.a n = A220221 (n + 1)

end A220221

/-!
# A220223: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX3 array.

The programs for A220223, there is no canonical definition to state claims against.
-/

/-! ## A220223.P17223127077294374425

`A220226(∑[n+3]+1)`
-/

namespace A220223.P17223127077294374425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220223.P17223127077294374425

/-! ## A220223.P2641839039593501240

`record[A220226(A198464(n+1))]`
-/

namespace A220223.P2641839039593501240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220223.P2641839039593501240

/-! ## A220223.P9432983631947009857

`A047060(n)*A220226(A101881(2*(n+1)))`
-/

namespace A220223.P9432983631947009857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 n * A220226 (A101881 (2 * (n + 1))).toNat

end

end A220223.P9432983631947009857

/-! ## A220223.P8473378095022668684

`A220226(A101881(2*(n+1)))*A322473(n)`
-/

namespace A220223.P8473378095022668684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A101881 (2 * (n + 1))).toNat * A322473 n

end

end A220223.P8473378095022668684

/-!
# A220224: Majority value maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 n X 4 array.

The programs for A220224, there is no canonical definition to state claims against.
-/

/-! ## A220224.P2652118473455106881

`A220226(∑[n+4]+3)`
-/

namespace A220224.P2652118473455106881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220224.P2652118473455106881

/-!
# A220225: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220225, there is no canonical definition to state claims against.
-/

/-! ## A220225.P5645622752696654222

`A220226(Δ[A264443(n)])`
-/

namespace A220225.P5645622752696654222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (f1 (n + 1) - f1 n).toNat

end

end A220225.P5645622752696654222

/-! ## A220225.P2385525563705291366

`A220226(A046691(n+3))`
-/

namespace A220225.P2385525563705291366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A046691 (n + 3)).toNat

end

end A220225.P2385525563705291366

/-!
# A220226: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nXk array.

The programs for A220226, there is no canonical definition to state claims against.
-/

/-! ## A220226.P12576003337319978707

`A281154(n)+A072089(A219441(n+1))`
-/

namespace A220226.P12576003337319978707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n + A072089 (A219441 (n + 1)).toNat

end

end A220226.P12576003337319978707

/-! ## A220226.P3916615689818772131

`A083662(A218242(n+1)^A305161(n)²)-A193592(n)`
-/

namespace A220226.P3916615689818772131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (SequenceMachineLib.roundAway ((A218242 (n + 1) : ℚ) ^ (A305161 n ^ 2 : ℤ))).toNat - A193592 n

end

end A220226.P3916615689818772131

/-!
# A220227: Majority value maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 2 X n array.

The programs for A220227, the canonical program `A220227.P5958358763204571221` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220227 has offset 1).

The definition of A220227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220227.P5958358763204571221

`ogf((1+4x+5x^2+3x^3-5x^5-4x^6-4x^7)/(1-2x-x^2-6x^3-x^4-3x^5+4x^6+2x^7+4x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220227

/-- `ogf((1+4x+5x^2+3x^3-5x^5-4x^6-4x^7)/(1-2x-x^2-6x^3-x^4-3x^5+4x^6+2x^7+4x^8))` -/
def P5958358763204571221.Spec : Prop :=
  ∀ n, P5958358763204571221.a n = A220227 (n + 1)

theorem P5958358763204571221.correct : P5958358763204571221.Spec := by
  intro n
  simp only [A220227, Nat.add_sub_cancel]

end A220227

/-! ## A220227.P5077529636014106346

`A220226(∑[n+1]+2)`
-/

namespace A220227.P5077529636014106346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220227.P5077529636014106346

namespace A220227

/-- `A220226(∑[n+1]+2)` -/
def P5077529636014106346.Spec : Prop :=
  ∀ n, P5077529636014106346.a n = A220227 (n + 1)

end A220227

/-! ## A220227.P396221247874033866

`record[ratio[A220226(A080036(n))]]`
-/

namespace A220227.P396221247874033866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220227.P396221247874033866

namespace A220227

/-- `record[ratio[A220226(A080036(n))]]` -/
def P396221247874033866.Spec : Prop :=
  ∀ n, P396221247874033866.a n = (A220227 (n + 1) : ℚ)

end A220227

/-! ## A220227.P11657994814393327679

`record[A220226(n+1)/A036073(n)]`
-/

namespace A220227.P11657994814393327679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220226 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220227.P11657994814393327679

namespace A220227

/-- `record[A220226(n+1)/A036073(n)]` -/
def P11657994814393327679.Spec : Prop :=
  ∀ n, P11657994814393327679.a n = (A220227 (n + 1) : ℚ)

end A220227

/-! ## A220227.P14893921424367305636

`record[gcd(A097230(n), A220226(n+1))]`
-/

namespace A220227.P14893921424367305636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220226 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220227.P14893921424367305636

namespace A220227

/-- `record[gcd(A097230(n), A220226(n+1))]` -/
def P14893921424367305636.Spec : Prop :=
  ∀ n, (P14893921424367305636.a n : ℤ) = A220227 (n + 1)

end A220227

/-!
# A220228: Majority value maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A220228, there is no canonical definition to state claims against.
-/

/-! ## A220228.P13348731695720145010

`A220226(∑[n+2]+4)`
-/

namespace A220228.P13348731695720145010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220228.P13348731695720145010

/-! ## A220228.P8325897571215999267

`and(-1, A220226(A167614(n+1)))`
-/

namespace A220228.P8325897571215999267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220226 (A167614 (n + 1)).toNat)

end

end A220228.P8325897571215999267

/-! ## A220228.P696019231950493277

`record[gcd(A220226(n+2), A290317(n))]`
-/

namespace A220228.P696019231950493277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220226 (n + 2)) (A290317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220228.P696019231950493277

/-! ## A220228.P6995063684647647113

`A220226(A167614(n+1))+A011731(n)`
-/

namespace A220228.P6995063684647647113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A167614 (n + 1)).toNat + A011731 n

end

end A220228.P6995063684647647113

/-! ## A220228.P17549168335062631999

`A220226(A167614(n+1))+A025443(n)`
-/

namespace A220228.P17549168335062631999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A167614 (n + 1)).toNat + A025443 n

end

end A220228.P17549168335062631999

/-!
# A220229: Majority value maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 4Xn array.

The programs for A220229, there is no canonical definition to state claims against.
-/

/-! ## A220229.P2939837145613398559

`A220226(∑[n+3]+7)`
-/

namespace A220229.P2939837145613398559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220229.P2939837145613398559

/-!
# A220230: Majority value maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A220230, there is no canonical definition to state claims against.
-/

/-! ## A220230.P10355224216980198864

`A220226(A167499(n+3))`
-/

namespace A220230.P10355224216980198864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A167499 (n + 3)).toNat

end

end A220230.P10355224216980198864

/-! ## A220230.P6565493651930416221

`A220226(A155212(n)+13)`
-/

namespace A220230.P6565493651930416221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A155212 n + 13).toNat

end

end A220230.P6565493651930416221

/-! ## A220230.P5561042440092591594

`A220226(A056000(n)+15)`
-/

namespace A220230.P5561042440092591594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (A056000 n + 15).toNat

end

end A220230.P5561042440092591594

/-!
# A220231: G.f.: Sum_{n>=1} (2 - (1-x)^n) * (1 - (1-x)^n)^(n-1) / (1-x)^(n^2).

The programs for A220231, there is no canonical definition to state claims against.
-/

/-! ## A220231.P2546930814647615525

`A288674(2*n*a(n-1)+1)` with `a(0)=1`
-/

namespace A220231.P2546930814647615525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288674 ((2 * n : ℤ) * a (n - 1) + 1).toNat

end

end A220231.P2546930814647615525

/-!
# A220232: Number of rooted labeled trees of height 2 such that every leaf is at a distance 2 from the root.

The programs for A220232, there is no canonical definition to state claims against.
-/

/-! ## A220232.P3628470020184261180

`n*A052506(A289207(n)+1)`
-/

namespace A220232.P3628470020184261180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052506 (A289207 n + 1).toNat

end

end A220232.P3628470020184261180

/-! ## A220232.P16212894344993273424

`A220233(C(n, 2)+1)`
-/

namespace A220232.P16212894344993273424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220233 (Nat.choose n 2 + 1)

end

end A220232.P16212894344993273424

/-! ## A220232.P15215821211178895650

`A220233(∑[abs(1-n)])`
-/

namespace A220232.P15215821211178895650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220232.P15215821211178895650

/-! ## A220232.P2055986612362945682

`A338868(n+1)+A220233(A152947(n+1))`
-/

namespace A220232.P2055986612362945682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338868 (n + 1) + A220233 (A152947 (n + 1)).toNat

end

end A220232.P2055986612362945682

/-!
# A220235: a(n) = (2^n + 3^n) modulo n.

The programs for A220235, the canonical program `A220235.P1590682872630634901` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220235 has offset 1).

The definition of A220235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220235.P1590682872630634901

`(2^(n+1)+3^(n+1))%(n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220235

/-- `(2^(n+1)+3^(n+1))%(n+1)` -/
def P1590682872630634901.Spec : Prop :=
  ∀ n, (P1590682872630634901.a n : ℤ) = A220235 (n + 1)

theorem P1590682872630634901.correct : P1590682872630634901.Spec := by
  intro n
  simp only [A220235, Nat.add_sub_cancel]

end A220235

/-!
# A220236: Binary palindromic numbers with only two 0 bits, both in the middle.

The programs for A220236, the canonical program `A220236.P293150788813200794` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220236 has offset 1).

The definition of A220236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220236.P14619321987679892020

`ogf((9-12x)/(1-7x+14x^2-8x^3))`
-/

namespace A220236.P14619321987679892020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -12] [1, -7, 14, -8] n

end

end A220236.P14619321987679892020

namespace A220236

/-- `ogf((9-12x)/(1-7x+14x^2-8x^3))` -/
def P14619321987679892020.Spec : Prop :=
  ∀ n, P14619321987679892020.a n = A220236 (n + 1)

end A220236

/-! ## A220236.P293150788813200794

`2^(2*(n+1)+2)-2^(n+2)-2^(n+1)-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220236

/-- `2^(2*(n+1)+2)-2^(n+2)-2^(n+1)-1` -/
def P293150788813200794.Spec : Prop :=
  ∀ n, P293150788813200794.a n = A220236 (n + 1)

theorem P293150788813200794.correct : P293150788813200794.Spec := by
  intro n
  simp only [A220236, Nat.add_sub_cancel]

end A220236

/-! ## A220236.P1602099521976563893

`∑[ogf((9-12x)/(1-6x+8x^2))]`
-/

namespace A220236.P1602099521976563893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -12] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220236.P1602099521976563893

namespace A220236

/-- `∑[ogf((9-12x)/(1-6x+8x^2))]` -/
def P1602099521976563893.Spec : Prop :=
  ∀ n, P1602099521976563893.a n = A220236 (n + 1)

end A220236

/-! ## A220236.P9700240359614235245

`∑[3*A171499(n)]`
-/

namespace A220236.P9700240359614235245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A171499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220236.P9700240359614235245

namespace A220236

/-- `∑[3*A171499(n)]` -/
def P9700240359614235245.Spec : Prop :=
  ∀ n, P9700240359614235245.a n = A220236 (n + 1)

end A220236

/-! ## A220236.P1988647007374338269

`∑[A171499(n)+A171496(n)]`
-/

namespace A220236.P1988647007374338269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171499 n + A171496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220236.P1988647007374338269

namespace A220236

/-- `∑[A171499(n)+A171496(n)]` -/
def P1988647007374338269.Spec : Prop :=
  ∀ n, P1988647007374338269.a n = A220236 (n + 1)

end A220236

/-! ## A220236.P6592227520780118982

`xor(A086221(n+1), A153894(n))`
-/

namespace A220236.P6592227520780118982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086221 (n + 1)) (A153894 n)

end

end A220236.P6592227520780118982

namespace A220236

/-- `xor(A086221(n+1), A153894(n))` -/
def P6592227520780118982.Spec : Prop :=
  ∀ n, P6592227520780118982.a n = A220236 (n + 1)

end A220236

/-! ## A220236.P17168966385004516330

`(A007283(n+1)+A000051(n+1))*A000225(n+1)`
-/

namespace A220236.P17168966385004516330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007283 (n + 1) + A000051 (n + 1)) * A000225 (n + 1)

end

end A220236.P17168966385004516330

namespace A220236

/-- `(A007283(n+1)+A000051(n+1))*A000225(n+1)` -/
def P17168966385004516330.Spec : Prop :=
  ∀ n, P17168966385004516330.a n = A220236 (n + 1)

theorem P17168966385004516330.correct : P17168966385004516330.Spec := by
  intro n
  simp only [A220236, Nat.add_sub_cancel, A220236.P17168966385004516330.a, A220236.P293150788813200794.a, A000051, A000051.P14067217022188782580.a, A000225, A000225.P6535533121115206393.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220236

/-! ## A220236.P801625272944299639

`(A020714(n+1)-A000225(n+1))*A000225(n+1)`
-/

namespace A220236.P801625272944299639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020714 (n + 1) - A000225 (n + 1)) * A000225 (n + 1)

end

end A220236.P801625272944299639

namespace A220236

/-- `(A020714(n+1)-A000225(n+1))*A000225(n+1)` -/
def P801625272944299639.Spec : Prop :=
  ∀ n, P801625272944299639.a n = A220236 (n + 1)

theorem P801625272944299639.correct : P801625272944299639.Spec := by
  intro n
  simp only [A220236, Nat.add_sub_cancel, A220236.P801625272944299639.a, A220236.P293150788813200794.a, A000225, A000225.P6535533121115206393.a, A020714, A020714.P4672987561035728998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220236

/-! ## A220236.P5676664086856732250

`(A086225(n+1)-A176448(n+1))*A000225(n+1)`
-/

namespace A220236.P5676664086856732250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086225 (n + 1) - A176448 (n + 1)) * A000225 (n + 1)

end

end A220236.P5676664086856732250

namespace A220236

/-- `(A086225(n+1)-A176448(n+1))*A000225(n+1)` -/
def P5676664086856732250.Spec : Prop :=
  ∀ n, P5676664086856732250.a n = A220236 (n + 1)

theorem P5676664086856732250.correct : P5676664086856732250.Spec := by
  intro n
  simp only [A220236, Nat.add_sub_cancel, A220236.P5676664086856732250.a, A220236.P293150788813200794.a, A000225, A000225.P6535533121115206393.a, A086225, A086225.P10155150668756747458.a, A176448, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220236

/-! ## A220236.P923655892184989110

`(A159741(n+1)-A172252(n+1))*A000225(n+1)`
-/

namespace A220236.P923655892184989110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159741 (n + 1) - A172252 (n + 1)) * A000225 (n + 1)

end

end A220236.P923655892184989110

namespace A220236

/-- `(A159741(n+1)-A172252(n+1))*A000225(n+1)` -/
def P923655892184989110.Spec : Prop :=
  ∀ n, P923655892184989110.a n = A220236 (n + 1)

theorem P923655892184989110.correct : P923655892184989110.Spec := by
  intro n
  simp only [A220236, Nat.add_sub_cancel, A220236.P923655892184989110.a, A220236.P293150788813200794.a, A000225, A000225.P6535533121115206393.a, A159741, A159741.P12178551765370653186.a, A172252, A172252.P507886656103785375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220236

/-!
# A220238: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..1 nX2 array.

The programs for A220238, there is no canonical definition to state claims against.
-/

/-! ## A220238.P16085920086311256570

`A220242(∑[n+1]+2)`
-/

namespace A220238.P16085920086311256570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220238.P16085920086311256570

/-! ## A220238.P16655802943918262358

`record[A220242(n+1)/A036073(n)]`
-/

namespace A220238.P16655802943918262358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220242 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220238.P16655802943918262358

/-! ## A220238.P3914367441980971009

`record[A220242(n+1)/A097607(n)]`
-/

namespace A220238.P3914367441980971009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220242 (n + 1) : ℚ) / (A097607 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220238.P3914367441980971009

/-! ## A220238.P15057348643115302099

`record[A220242(n+1)/A156366(n)]`
-/

namespace A220238.P15057348643115302099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220242 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220238.P15057348643115302099

/-! ## A220238.P17441257371489128154

`record[gcd(A097230(n), A220242(n+1))]`
-/

namespace A220238.P17441257371489128154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220238.P17441257371489128154

/-!
# A220239: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..1 nX3 array.

The programs for A220239, there is no canonical definition to state claims against.
-/

/-! ## A220239.P11247490973873490376

`A220242(∑[n+2]+4)`
-/

namespace A220239.P11247490973873490376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220239.P11247490973873490376

/-! ## A220239.P5989863726115140795

`record[A167374(n)*A220242(n+4)]`
-/

namespace A220239.P5989863726115140795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A220242 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220239.P5989863726115140795

/-! ## A220239.P361308795552975663

`A220242(A167614(n+1))+A011731(n)`
-/

namespace A220239.P361308795552975663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (A167614 (n + 1)).toNat + A011731 n

end

end A220239.P361308795552975663

/-! ## A220239.P977327393122441311

`A220242(A167614(n+1))+A025469(n)`
-/

namespace A220239.P977327393122441311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (A167614 (n + 1)).toNat + A025469 n

end

end A220239.P977327393122441311

/-! ## A220239.P11094861225156127585

`A220242(A167614(n+1))+A031346(n)`
-/

namespace A220239.P11094861225156127585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (A167614 (n + 1)).toNat + A031346 n

end

end A220239.P11094861225156127585

/-!
# A220240: Equals two maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..1 n X 4 array.

The programs for A220240, there is no canonical definition to state claims against.
-/

/-! ## A220240.P14852095221388637771

`A220242(∑[n+3]+7)`
-/

namespace A220240.P14852095221388637771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220240.P14852095221388637771

/-! ## A220240.P5823342816464438309

`and(-1, A220242(A055998(n+2)))`
-/

namespace A220240.P5823342816464438309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220242 (A055998 (n + 2)).toNat)

end

end A220240.P5823342816464438309

/-! ## A220240.P1397133340312468482

`A220242(A055998(n+2))+A054439(n)`
-/

namespace A220240.P1397133340312468482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (A055998 (n + 2)).toNat + A054439 n

end

end A220240.P1397133340312468482

/-!
# A220241: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..1 nX5 array.

The programs for A220241, there is no canonical definition to state claims against.
-/

/-! ## A220241.P1750250507523806734

`A220242(Δ[A264443(n)])`
-/

namespace A220241.P1750250507523806734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220242 (f1 (n + 1) - f1 n).toNat

end

end A220241.P1750250507523806734

/-!
# A220242: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..1 nXk array.

The programs for A220242, there is no canonical definition to state claims against.
-/

/-! ## A220242.P17919066932738071260

`and(A004396(A111671(n+1)), A220430(n+1))`
-/

namespace A220242.P17919066932738071260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004396 (A111671 (n + 1)).toNat) (A220430 (n + 1))

end

end A220242.P17919066932738071260

/-!
# A220243: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..1 nX2 array.

The programs for A220243, there is no canonical definition to state claims against.
-/

/-! ## A220243.P5966239238377290938

`A220247(∑[n+1]+2)`
-/

namespace A220243.P5966239238377290938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220243.P5966239238377290938

/-! ## A220243.P4490719870924330828

`record[A010054(n)*A220247(n+2)]`
-/

namespace A220243.P4490719870924330828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220243.P4490719870924330828

/-! ## A220243.P13002184826971149770

`record[gcd(A097230(n), A220247(n+1))]`
-/

namespace A220243.P13002184826971149770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220247 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220243.P13002184826971149770

/-! ## A220243.P11408335631680131605

`record[A220247(n+2)/A235595(n+2)]`
-/

namespace A220243.P11408335631680131605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220247 (n + 2) : ℚ) / (A235595 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220243.P11408335631680131605

/-! ## A220243.P6542010709907415451

`record[A220247(∑[A152271(n)])]`
-/

namespace A220243.P6542010709907415451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220243.P6542010709907415451

/-!
# A220244: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..1 nX3 array.

The programs for A220244, there is no canonical definition to state claims against.
-/

/-! ## A220244.P4846044970692793926

`A220247(∑[n+2]+4)`
-/

namespace A220244.P4846044970692793926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220244.P4846044970692793926

/-! ## A220244.P14839929354044875412

`A220247(A167614(n+1))+A056965(n)`
-/

namespace A220244.P14839929354044875412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (A167614 (n + 1)).toNat + A056965 n

end

end A220244.P14839929354044875412

/-! ## A220244.P17730264766035278537

`A220247(A167614(n+1))+A184946(n)`
-/

namespace A220244.P17730264766035278537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (A167614 (n + 1)).toNat + A184946 n

end

end A220244.P17730264766035278537

/-! ## A220244.P8483998313728806180

`A220247(A167614(n+1))+A184955(n)`
-/

namespace A220244.P8483998313728806180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (A167614 (n + 1)).toNat + A184955 n

end

end A220244.P8483998313728806180

/-! ## A220244.P12017756173921794497

`A015970(n)*A220247(A167614(n+1))`
-/

namespace A220244.P12017756173921794497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A220247 (A167614 (n + 1)).toNat

end

end A220244.P12017756173921794497

/-!
# A220245: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..1 nX4 array.

The programs for A220245, there is no canonical definition to state claims against.
-/

/-! ## A220245.P12489249503691871700

`A220247(∑[n+3]+7)`
-/

namespace A220245.P12489249503691871700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220245.P12489249503691871700

/-! ## A220245.P5216025832251661840

`A057427(n+1)*A220247(A155212(n)+5)`
-/

namespace A220245.P5216025832251661840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A220247 (A155212 n + 5).toNat

end

end A220245.P5216025832251661840

/-! ## A220245.P3676135225235268119

`A001511(A281533(n+2))*A220247(A155212(n)+5)`
-/

namespace A220245.P3676135225235268119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A281533 (n + 2)).toNat * A220247 (A155212 n + 5).toNat

end

end A220245.P3676135225235268119

/-!
# A220246: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..1 nX5 array.

The programs for A220246, there is no canonical definition to state claims against.
-/

/-! ## A220246.P2744401999828450110

`A220247(Δ[A264443(n)])`
-/

namespace A220246.P2744401999828450110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (f1 (n + 1) - f1 n).toNat

end

end A220246.P2744401999828450110

/-! ## A220246.P7064046840406154403

`A220247(A374005(n+1))`
-/

namespace A220246.P7064046840406154403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (A374005 (n + 1)).toNat

end

end A220246.P7064046840406154403

/-! ## A220246.P15333545682297387173

`A220247(A046691(n+3))`
-/

namespace A220246.P15333545682297387173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220247 (A046691 (n + 3)).toNat

end

end A220246.P15333545682297387173

/-!
# A220249: Numbers of rows R of the Wythoff array such that R is the n-th multiple of a tail of the Lucas sequence.

The programs for A220249, there is no canonical definition to state claims against.
-/

/-! ## A220249.P13479528997330736014

`A003603(A004947(n+1))`
-/

namespace A220249.P13479528997330736014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A004947 (n + 1)).toNat

end

end A220249.P13479528997330736014

/-! ## A220249.P13859438327545375856

`A003603(A004927(n+1)+1)`
-/

namespace A220249.P13859438327545375856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A004927 (n + 1) + 1).toNat

end

end A220249.P13859438327545375856

/-!
# A220250: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their king-move neighbors in a random 0..2 nX2 array.

The programs for A220250, the canonical program `A220250.P17970218079389877115` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220250 has offset 1).

The definition of A220250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220250.P17970218079389877115

`4^(n+1)-2^(n-1)*(n+2)*(1-(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220250

/-- `4^(n+1)-2^(n-1)*(n+2)*(1-(-1)^(n+1))` -/
def P17970218079389877115.Spec : Prop :=
  ∀ n, P17970218079389877115.a n = (A220250 (n + 1) : ℚ)

end A220250

/-! ## A220250.P11208674549785148098

`(A000079(n+1)-A027656(n))*A000079(n+1)`
-/

namespace A220250.P11208674549785148098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A027656 n) * A000079 (n + 1)

end

end A220250.P11208674549785148098

namespace A220250

/-- `(A000079(n+1)-A027656(n))*A000079(n+1)` -/
def P11208674549785148098.Spec : Prop :=
  ∀ n, P11208674549785148098.a n = A220250 (n + 1)

end A220250

/-! ## A220250.P16154094316891669475

`(A026741(n+2)+A000295(n+1))*A000079(n+1)`
-/

namespace A220250.P16154094316891669475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 2) + A000295 (n + 1)) * A000079 (n + 1)

end

end A220250.P16154094316891669475

namespace A220250

/-- `(A026741(n+2)+A000295(n+1))*A000079(n+1)` -/
def P16154094316891669475.Spec : Prop :=
  ∀ n, P16154094316891669475.a n = A220250 (n + 1)

end A220250

/-! ## A220250.P14744427707410229322

`(A026741(n+2)+A000295(n+1))*A011782(n+2)`
-/

namespace A220250.P14744427707410229322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 2) + A000295 (n + 1)) * A011782 (n + 2)

end

end A220250.P14744427707410229322

namespace A220250

/-- `(A026741(n+2)+A000295(n+1))*A011782(n+2)` -/
def P14744427707410229322.Spec : Prop :=
  ∀ n, P14744427707410229322.a n = A220250 (n + 1)

end A220250

/-! ## A220250.P4444374954227653704

`(A000079(n+1)-A142150(n+2))*A000079(n+1)`
-/

namespace A220250.P4444374954227653704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A142150 (n + 2)) * A000079 (n + 1)

end

end A220250.P4444374954227653704

namespace A220250

/-- `(A000079(n+1)-A142150(n+2))*A000079(n+1)` -/
def P4444374954227653704.Spec : Prop :=
  ∀ n, P4444374954227653704.a n = A220250 (n + 1)

end A220250

/-! ## A220250.P17182067879030532608

`(A026741(n+2)+A000295(n+1))*A131577(n+2)`
-/

namespace A220250.P17182067879030532608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 2) + A000295 (n + 1)) * A131577 (n + 2)

end

end A220250.P17182067879030532608

namespace A220250

/-- `(A026741(n+2)+A000295(n+1))*A131577(n+2)` -/
def P17182067879030532608.Spec : Prop :=
  ∀ n, P17182067879030532608.a n = A220250 (n + 1)

end A220250

/-! ## A220250.P986136550908019732

`(A138219(2*n+1)-A027656(n))*A138219(2*n+1)`
-/

namespace A220250.P986136550908019732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138219 (2 * n + 1) - A027656 n) * A138219 (2 * n + 1)

end

end A220250.P986136550908019732

namespace A220250

/-- `(A138219(2*n+1)-A027656(n))*A138219(2*n+1)` -/
def P986136550908019732.Spec : Prop :=
  ∀ n, P986136550908019732.a n = A220250 (n + 1)

end A220250

/-!
# A220251: Sum of neighbor maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their king-move neighbors in a random 0..2 nX3 array.

The programs for A220251, there is no canonical definition to state claims against.
-/

/-! ## A220251.P5013750901709936651

`A220254(∑[n+2]+4)`
-/

namespace A220251.P5013750901709936651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220251.P5013750901709936651

/-! ## A220251.P6954186505600867667

`lcm(2, A220254(A167614(n+1)))`
-/

namespace A220251.P6954186505600867667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220254 (A167614 (n + 1)).toNat)

end

end A220251.P6954186505600867667

/-! ## A220251.P12278133605984398062

`record[gcd(A220254(n+4), A221087(n+1))]`
-/

namespace A220251.P12278133605984398062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220254 (n + 4)) (A221087 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220251.P12278133605984398062

/-! ## A220251.P5174144446683991300

`A220254(A167614(n+1))+A011731(n)`
-/

namespace A220251.P5174144446683991300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A167614 (n + 1)).toNat + A011731 n

end

end A220251.P5174144446683991300

/-! ## A220251.P2518928532177241871

`A220254(A167614(n+1))+A025469(n)`
-/

namespace A220251.P2518928532177241871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A167614 (n + 1)).toNat + A025469 n

end

end A220251.P2518928532177241871

/-!
# A220252: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their king-move neighbors in a random 0..2 nX4 array.

The programs for A220252, there is no canonical definition to state claims against.
-/

/-! ## A220252.P10870477632499872509

`A220254(C(n+4, 2)+4)`
-/

namespace A220252.P10870477632499872509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (Nat.choose (n + 4) 2 + 4)

end

end A220252.P10870477632499872509

/-! ## A220252.P1174846029920364502

`A220254(A374004(n+1))`
-/

namespace A220252.P1174846029920364502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A374004 (n + 1)).toNat

end

end A220252.P1174846029920364502

/-! ## A220252.P3333367771921815797

`A220254(A141214(n)+7)`
-/

namespace A220252.P3333367771921815797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A141214 n + 7).toNat

end

end A220252.P3333367771921815797

/-! ## A220252.P7626779470402406491

`A220254(A052905(n)+9)`
-/

namespace A220252.P7626779470402406491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A052905 n + 9).toNat

end

end A220252.P7626779470402406491

/-!
# A220253: Sum of neighbor maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their king-move neighbors in a random 0..2 nX5 array.

The programs for A220253, there is no canonical definition to state claims against.
-/

/-! ## A220253.P1148139083484266956

`A220254(Δ[A264443(n)])`
-/

namespace A220253.P1148139083484266956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (f1 (n + 1) - f1 n).toNat

end

end A220253.P1148139083484266956

/-!
# A220255: Majority value maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..2 n X 2 array.

The programs for A220255, the canonical program `A220255.P15004391993995504047` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220255 has offset 1).

The definition of A220255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220255.P15004391993995504047

`ogf((2+4x-3x^2-5x^3+x^4+2x^5+5x^6+4x^7-3x^8-2x^9+x^10+x^11)/(1-3x-4x^2+4x^3+3x^6+2x^7-2x^8-2x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220255

/-- `ogf((2+4x-3x^2-5x^3+x^4+2x^5+5x^6+4x^7-3x^8-2x^9+x^10+x^11)/(1-3x-4x^2+4x^3+3x^6+2x^7-2x^8-2x^9))` -/
def P15004391993995504047.Spec : Prop :=
  ∀ n, P15004391993995504047.a n = A220255 (n + 1)

theorem P15004391993995504047.correct : P15004391993995504047.Spec := by
  intro n
  simp only [A220255, Nat.add_sub_cancel]

end A220255

/-! ## A220255.P1287225282094700227

`A220259(∑[n+1]+2)`
-/

namespace A220255.P1287225282094700227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220255.P1287225282094700227

namespace A220255

/-- `A220259(∑[n+1]+2)` -/
def P1287225282094700227.Spec : Prop :=
  ∀ n, P1287225282094700227.a n = A220255 (n + 1)

end A220255

/-! ## A220255.P1094454045307138456

`A220323(∑[n+1]+2)`
-/

namespace A220255.P1094454045307138456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220255.P1094454045307138456

namespace A220255

/-- `A220323(∑[n+1]+2)` -/
def P1094454045307138456.Spec : Prop :=
  ∀ n, P1094454045307138456.a n = A220255 (n + 1)

end A220255

/-! ## A220255.P14681714251325032214

`record[gcd(A034261(n), A220323(n+2))]`
-/

namespace A220255.P14681714251325032214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034261 n) (A220323 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220255.P14681714251325032214

namespace A220255

/-- `record[gcd(A034261(n), A220323(n+2))]` -/
def P14681714251325032214.Spec : Prop :=
  ∀ n, (P14681714251325032214.a n : ℤ) = A220255 (n + 1)

end A220255

/-! ## A220255.P948521855658118534

`record[A220259(n+2)/A303084(n+1)]`
-/

namespace A220255.P948521855658118534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220259 (n + 2) : ℚ) / (A303084 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220255.P948521855658118534

namespace A220255

/-- `record[A220259(n+2)/A303084(n+1)]` -/
def P948521855658118534.Spec : Prop :=
  ∀ n, P948521855658118534.a n = (A220255 (n + 1) : ℚ)

end A220255

/-!
# A220256: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..2 nX3 array.

The programs for A220256, there is no canonical definition to state claims against.
-/

/-! ## A220256.P5475006075543509316

`A220259(∑[n+2]+4)`
-/

namespace A220256.P5475006075543509316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220256.P5475006075543509316

/-! ## A220256.P2460804650627731720

`A220259(A034856(n+1)+5)+char[9]`
-/

namespace A220256.P2460804650627731720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220256.P2460804650627731720

/-! ## A220256.P8860572702599156370

`record[A220259(n+4)/A000369(n+1)]`
-/

namespace A220256.P8860572702599156370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220259 (n + 4) : ℚ) / (A000369 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220256.P8860572702599156370

/-! ## A220256.P6413015305463341909

`A220259(A167614(n+1))+A011731(n)`
-/

namespace A220256.P6413015305463341909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (A167614 (n + 1)).toNat + A011731 n

end

end A220256.P6413015305463341909

/-! ## A220256.P14187668601274847911

`A220259(A167614(n+1))+A025437(n)`
-/

namespace A220256.P14187668601274847911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (A167614 (n + 1)).toNat + A025437 n

end

end A220256.P14187668601274847911

/-!
# A220257: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..2 nX4 array.

The programs for A220257, there is no canonical definition to state claims against.
-/

/-! ## A220257.P13815738910633065646

`A220259(∑[n+3]+7)`
-/

namespace A220257.P13815738910633065646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220257.P13815738910633065646

/-! ## A220257.P10879305429276285967

`A055642(n)*A220259(A052905(n)+9)`
-/

namespace A220257.P10879305429276285967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A220259 (A052905 n + 9).toNat

end

end A220257.P10879305429276285967

/-! ## A220257.P272984303482415398

`A087960(n)²*A220259(A052905(n)+9)`
-/

namespace A220257.P272984303482415398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A220259 (A052905 n + 9).toNat

end

end A220257.P272984303482415398

/-! ## A220257.P5101726619217812343

`A055640(n+1)*A220259(A052905(n)+9)`
-/

namespace A220257.P5101726619217812343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (n + 1) * A220259 (A052905 n + 9).toNat

end

end A220257.P5101726619217812343

/-!
# A220258: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..2 nX5 array.

The programs for A220258, there is no canonical definition to state claims against.
-/

/-! ## A220258.P15883183611466850420

`A220259(Δ[A264443(n)])`
-/

namespace A220258.P15883183611466850420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220259 (f1 (n + 1) - f1 n).toNat

end

end A220258.P15883183611466850420

/-!
# A220259: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..2 nXk array.

The programs for A220259, there is no canonical definition to state claims against.
-/

/-! ## A220259.P7149614071253507716

`A220323(A000005(2^n))`
-/

namespace A220259.P7149614071253507716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A000005 (2 ^ n)).toNat

end

end A220259.P7149614071253507716

/-! ## A220259.P2065279765918633352

`A220323(∑[A278657(n)²])`
-/

namespace A220259.P2065279765918633352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220259.P2065279765918633352

/-! ## A220259.P5336345678458715027

`A220323(∑[A278657(n)!])`
-/

namespace A220259.P5336345678458715027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220259.P5336345678458715027

/-! ## A220259.P2558728638109750838

`A220323(∑[∑[A015161(n)]])`
-/

namespace A220259.P2558728638109750838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220259.P2558728638109750838

/-! ## A220259.P1654704287545109106

`A220323(A278657(n)²+n)`
-/

namespace A220259.P1654704287545109106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A278657 n ^ 2 + (n : ℤ)).toNat

end

end A220259.P1654704287545109106

/-!
# A220262: Number of even semiprimes < 10^n. Number of terms of A100484 < 10^n.

The programs for A220262, there is no canonical definition to state claims against.
-/

/-! ## A220262.P16224419263666771324

`char[1]+A066265(n)-A085770(n)`
-/

namespace A220262.P16224419263666771324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A066265 n - A085770 n)

end

end A220262.P16224419263666771324

/-! ## A220262.P3063007326848745408

`A066265(n)-A085770(n-char[1])`
-/

namespace A220262.P3063007326848745408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 n - A085770 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A220262.P3063007326848745408

/-! ## A220262.P1805082781387405688

`A066265(n)%A085770(round(acot(n)+n))`
-/

namespace A220262.P1805082781387405688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066265 n) (A085770 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A220262.P1805082781387405688

/-! ## A220262.P10550459106599216310

`A036352(C(n, a(n-1))/2+n)-A085770(n)` with `a(0)=0, a(1)=3`
-/

namespace A220262.P10550459106599216310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A036352 (SequenceMachineLib.roundAway ((Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat - A085770 n

end

end A220262.P10550459106599216310

/-!
# A220263: Lengths of Collatz trajectories starting with terms of A177729.

The programs for A220263, there is no canonical definition to state claims against.
-/

/-! ## A220263.P12747883462220050445

`char[1]+A127933(n+1)+1`
-/

namespace A220263.P12747883462220050445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A127933 (n + 1) + 1)

end

end A220263.P12747883462220050445

/-! ## A220263.P9599170489788693805

`A373565(n)+A127933(n+1)`
-/

namespace A220263.P9599170489788693805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + A127933 (n + 1)

end

end A220263.P9599170489788693805

/-! ## A220263.P3926016175846223404

`A127933(n+1)+A063524(n)+1`
-/

namespace A220263.P3926016175846223404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127933 (n + 1) + (A063524 n + 1)

end

end A220263.P3926016175846223404

/-! ## A220263.P14964291520023832926

`A127933(n+1)+1-A159075(n)`
-/

namespace A220263.P14964291520023832926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127933 (n + 1) + (1 - A159075 n)

end

end A220263.P14964291520023832926

/-! ## A220263.P4004673689539953249

`A008908(A177729(n+1))`
-/

namespace A220263.P4004673689539953249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A177729 (n + 1)).toNat

end

end A220263.P4004673689539953249

/-! ## A220263.P2761429156573190676

`A008908(record[A070167(n+1)])`
-/

namespace A220263.P2761429156573190676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220263.P2761429156573190676

/-! ## A220263.P5311700586786084510

`A006577(record[A070167(n+1)])+1`
-/

namespace A220263.P5311700586786084510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A220263.P5311700586786084510

/-! ## A220263.P15265779689591523542

`A008908(eq[n+1, A070167(n+1)]+1)`
-/

namespace A220263.P15265779689591523542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A220263.P15265779689591523542

/-! ## A220263.P13229315205460900210

`A006577(2*A177729(n+1))`
-/

namespace A220263.P13229315205460900210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * A177729 (n + 1)).toNat

end

end A220263.P13229315205460900210

/-! ## A220263.P5459438903069124603

`A006577(A177729(n+1)+A177729(n+1))`
-/

namespace A220263.P5459438903069124603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A177729 (n + 1) + A177729 (n + 1)).toNat

end

end A220263.P5459438903069124603

/-!
# A220264: Smallest integer with exactly n semiprime divisors.

The programs for A220264, there is no canonical definition to state claims against.
-/

/-! ## A220264.P7319084907509992520

`A350424(n*A302776(a(n-1)+1))` with `a(0)=1`
-/

namespace A220264.P7319084907509992520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A350424 ((n : ℤ) * A302776 (a (n - 1) + 1).toNat).toNat

end

end A220264.P7319084907509992520

/-! ## A220264.P3425597100719873533

`record[A168264(n+1)%A168242(2*(n+2))]`
-/

namespace A220264.P3425597100719873533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168264 (n + 1)) (A168242 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220264.P3425597100719873533

/-!
# A220266: G.f.: Sum_{n>=1} (2*(1+x)^n - 1) * ((1+x)^n - 1)^(n-1).

The programs for A220266, there is no canonical definition to state claims against.
-/

/-! ## A220266.P3737367287178191627

`A240829((n+3)^n+2)`
-/

namespace A220266.P3737367287178191627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240829 ((n + 3) ^ n + 2)

end

end A220266.P3737367287178191627

/-!
# A220271: Product of the radicals of the integers less than n and relatively prime to n.

The programs for A220271, there is no canonical definition to state claims against.
-/

/-! ## A220271.P7026357677527617640

`A124442(n+1)*A124458(A033842(n))`
-/

namespace A220271.P7026357677527617640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124442 (n + 1) * A124458 (A033842 n).toNat

end

end A220271.P7026357677527617640

/-! ## A220271.P7006774445724148417

`A124444(n+1)*A136213(A136212(n))`
-/

namespace A220271.P7006774445724148417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124444 (n + 1) * A136213 (A136212 n).toNat

end

end A220271.P7006774445724148417

/-! ## A220271.P10643508222514078008

`gcd(A001783(n+1), A026741(A100517(n)))`
-/

namespace A220271.P10643508222514078008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (n + 1)) (A026741 (A100517 n).toNat)

end

end A220271.P10643508222514078008

/-! ## A220271.P15641940465544620793

`gcd(A032742(A100517(n)), A095996(n+1))`
-/

namespace A220271.P15641940465544620793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (A100517 n).toNat) (A095996 (n + 1))

end

end A220271.P15641940465544620793

/-! ## A220271.P3110481743317845915

`lcm(A124442(n+1), A124460(A156628(n)))`
-/

namespace A220271.P3110481743317845915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124442 (n + 1)) (A124460 (A156628 n).toNat)

end

end A220271.P3110481743317845915

/-!
# A220272: Number of ways to write n=x^2+y (x>0, y>0) with 2*x*y-1 prime.

The programs for A220272, there is no canonical definition to state claims against.
-/

/-! ## A220272.P8241336944690102824

`A052291(A304792(n))%A052288(n+1)`
-/

namespace A220272.P8241336944690102824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052291 (A304792 n).toNat) (A052288 (n + 1))

end

end A220272.P8241336944690102824

/-! ## A220272.P17632840691826531305

`A100380(A060501(n)*A208355(n))`
-/

namespace A220272.P17632840691826531305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100380 (A060501 n * A208355 n).toNat

end

end A220272.P17632840691826531305

/-! ## A220272.P2387368967263425193

`A089309(A001045(A060143(n))*A339541(n+1))`
-/

namespace A220272.P2387368967263425193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A001045 (A060143 n).toNat * A339541 (n + 1)).toNat

end

end A220272.P2387368967263425193

/-! ## A220272.P2180268841083531578

`∑{e}[A000523(A132974(n)), #]`
-/

namespace A220272.P2180268841083531578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A132974 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A220272.P2180268841083531578

/-! ## A220272.P16382419703678615449

`∑{e}[A000523(A104502(2*n)), #]`
-/

namespace A220272.P16382419703678615449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A104502 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A220272.P16382419703678615449

/-!
# A220275: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX2 array.

The programs for A220275, there is no canonical definition to state claims against.
-/

/-! ## A220275.P8545869705604704649

`A220279(∑[n+1]+2)`
-/

namespace A220275.P8545869705604704649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220275.P8545869705604704649

/-! ## A220275.P15084260662464649777

`record[A167374(n)*A220279(n+3)]`
-/

namespace A220275.P15084260662464649777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A220279 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220275.P15084260662464649777

/-! ## A220275.P18164199293331903491

`record[gcd(A097230(n), A220279(n+1))]`
-/

namespace A220275.P18164199293331903491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220279 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220275.P18164199293331903491

/-! ## A220275.P15222446953218847305

`record[A220279(n+3)/A079638(n+1)]`
-/

namespace A220275.P15222446953218847305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220279 (n + 3) : ℚ) / (A079638 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220275.P15222446953218847305

/-! ## A220275.P224823772771835210

`record[A220279(n+3)/A218842(n+1)]`
-/

namespace A220275.P224823772771835210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220279 (n + 3) : ℚ) / (A218842 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220275.P224823772771835210

/-!
# A220276: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX3 array.

The programs for A220276, there is no canonical definition to state claims against.
-/

/-! ## A220276.P16312726637948843689

`A220279(∑[n+2]+4)`
-/

namespace A220276.P16312726637948843689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220276.P16312726637948843689

/-! ## A220276.P145340175588412166

`A220279(A167614(n+1))+A011731(n)`
-/

namespace A220276.P145340175588412166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (A167614 (n + 1)).toNat + A011731 n

end

end A220276.P145340175588412166

/-! ## A220276.P8262362341856036372

`A220279(A167614(n+1))+A025469(n)`
-/

namespace A220276.P8262362341856036372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (A167614 (n + 1)).toNat + A025469 n

end

end A220276.P8262362341856036372

/-! ## A220276.P17025530829344667103

`A220279(A167614(n+1))+A031346(n)`
-/

namespace A220276.P17025530829344667103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (A167614 (n + 1)).toNat + A031346 n

end

end A220276.P17025530829344667103

/-! ## A220276.P14781618189377646008

`A220279(A167614(n+1))+A059995(n)`
-/

namespace A220276.P14781618189377646008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (A167614 (n + 1)).toNat + A059995 n

end

end A220276.P14781618189377646008

/-!
# A220277: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220277, there is no canonical definition to state claims against.
-/

/-! ## A220277.P15467557900045968482

`A220279(∑[n+3]+7)`
-/

namespace A220277.P15467557900045968482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220277.P15467557900045968482

/-! ## A220277.P5747684034645462741

`A220279(A141214(n+1))+A206560(n+1)`
-/

namespace A220277.P5747684034645462741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (A141214 (n + 1)).toNat + A206560 (n + 1)

end

end A220277.P5747684034645462741

/-!
# A220278: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220278, there is no canonical definition to state claims against.
-/

/-! ## A220278.P1346117154530772505

`A220279(Δ[A264443(n)])`
-/

namespace A220278.P1346117154530772505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (f1 (n + 1) - f1 n).toNat

end

end A220278.P1346117154530772505

/-!
# A220279: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nXk array.

The programs for A220279, there is no canonical definition to state claims against.
-/

/-! ## A220279.P3762083735487859304

`A248375(A220242(n+1)^A047996(n))`
-/

namespace A220279.P3762083735487859304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (SequenceMachineLib.roundAway ((A220242 (n + 1) : ℚ) ^ (A047996 n : ℤ))).toNat

end

end A220279.P3762083735487859304

/-! ## A220279.P15302270828388463693

`A248375(C(A220242(n+1), A047996(n)))`
-/

namespace A220279.P15302270828388463693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (Nat.choose (A220242 (n + 1)).toNat (A047996 n).toNat)

end

end A220279.P15302270828388463693

/-!
# A220280: The reluctant sequence for A002260.

The programs for A220280, the canonical program `A220280.P8469677914056541657` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220280 has offset 1).

The definition of A220280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220280.P8469677914056541657

`A002260(A002260(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A220280

/-- `A002260(A002260(n+1))` -/
def P8469677914056541657.Spec : Prop :=
  ∀ n, P8469677914056541657.a n = A220280 (n + 1)

theorem P8469677914056541657.correct : P8469677914056541657.Spec := by
  intro n
  simp only [A220280, Nat.add_sub_cancel]

end A220280

/-! ## A220280.P11561028525334124632

`col(col(n))+1`
-/

namespace A220280.P11561028525334124632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.triCol n) + 1

end

end A220280.P11561028525334124632

namespace A220280

/-- `col(col(n))+1` -/
def P11561028525334124632.Spec : Prop :=
  ∀ n, (P11561028525334124632.a n : ℤ) = A220280 (n + 1)

end A220280

/-! ## A220280.P18084822637767736009

`A002262(A002262(n))+1`
-/

namespace A220280.P18084822637767736009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A002262 n).toNat + 1

end

end A220280.P18084822637767736009

namespace A220280

/-- `A002262(A002262(n))+1` -/
def P18084822637767736009.Spec : Prop :=
  ∀ n, P18084822637767736009.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P16425983909526370625

`A057555(A158405(n+1))`
-/

namespace A220280.P16425983909526370625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A158405 (n + 1)).toNat

end

end A220280.P16425983909526370625

namespace A220280

/-- `A057555(A158405(n+1))` -/
def P16425983909526370625.Spec : Prop :=
  ∀ n, P16425983909526370625.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P18360397104360656547

`A002260(log2(2*A059268(n)))`
-/

namespace A220280.P18360397104360656547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat

end

end A220280.P18360397104360656547

namespace A220280

/-- `A002260(log2(2*A059268(n)))` -/
def P18360397104360656547.Spec : Prop :=
  ∀ n, P18360397104360656547.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P1990610049084364094

`abs(A140756(abs(A140756(n+1))))`
-/

namespace A220280.P1990610049084364094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A140756 |A140756 (n + 1)|.toNat)|

end

end A220280.P1990610049084364094

namespace A220280

/-- `abs(A140756(abs(A140756(n+1))))` -/
def P1990610049084364094.Spec : Prop :=
  ∀ n, P1990610049084364094.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P14889695562100424864

`sqrt(A133819(sqrt(A133819(n+1))))`
-/

namespace A220280.P14889695562100424864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat : ℝ)

end

end A220280.P14889695562100424864

namespace A220280

/-- `sqrt(A133819(sqrt(A133819(n+1))))` -/
def P14889695562100424864.Spec : Prop :=
  ∀ n, P14889695562100424864.a n = (A220280 (n + 1) : ℝ)

end A220280

/-! ## A220280.P12225367721359082021

`log2(A059268(log2(A059268(n))))+1`
-/

namespace A220280.P12225367721359082021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℝ) + 1

end

end A220280.P12225367721359082021

namespace A220280

/-- `log2(A059268(log2(A059268(n))))+1` -/
def P12225367721359082021.Spec : Prop :=
  ∀ n, P12225367721359082021.a n = (A220280 (n + 1) : ℝ)

end A220280

/-! ## A220280.P12594786469647147291

`A057555(2*A057554(2*(n-1)+3)+1)`
-/

namespace A220280.P12594786469647147291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A057554 (2 * ((n : ℤ) - 1) + 3).toNat + 1).toNat

end

end A220280.P12594786469647147291

namespace A220280

/-- `A057555(2*A057554(2*(n-1)+3)+1)` -/
def P12594786469647147291.Spec : Prop :=
  ∀ n, P12594786469647147291.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P7849434092978747158

`A000005(A059268(A002262(n)))`
-/

namespace A220280.P7849434092978747158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 (A002262 n).toNat).toNat

end

end A220280.P7849434092978747158

namespace A220280

/-- `A000005(A059268(A002262(n)))` -/
def P7849434092978747158.Spec : Prop :=
  ∀ n, P7849434092978747158.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P2642697006009308562

`A000005(2^A002262(A002262(n)))`
-/

namespace A220280.P2642697006009308562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 (A002262 n).toNat : ℤ))).toNat

end

end A220280.P2642697006009308562

namespace A220280

/-- `A000005(2^A002262(A002262(n)))` -/
def P2642697006009308562.Spec : Prop :=
  ∀ n, P2642697006009308562.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P13576845154191640486

`A000720(A037126(A000720(A037126(n+1))))`
-/

namespace A220280.P13576845154191640486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (A000720 (A037126 (n + 1)).toNat).toNat).toNat

end

end A220280.P13576845154191640486

namespace A220280

/-- `A000720(A037126(A000720(A037126(n+1))))` -/
def P13576845154191640486.Spec : Prop :=
  ∀ n, P13576845154191640486.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P2661060692796821410

`A131818(A131818(n+2))-1`
-/

namespace A220280.P2661060692796821410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A131818 (n + 2)).toNat - 1

end

end A220280.P2661060692796821410

namespace A220280

/-- `A131818(A131818(n+2))-1` -/
def P2661060692796821410.Spec : Prop :=
  ∀ n, P2661060692796821410.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P6157210316449736110

`A220464(A038722(n+1))`
-/

namespace A220280.P6157210316449736110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220464 (A038722 (n + 1)).toNat

end

end A220280.P6157210316449736110

namespace A220280

/-- `A220464(A038722(n+1))` -/
def P6157210316449736110.Spec : Prop :=
  ∀ n, P6157210316449736110.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P5585795686537961221

`A220464(n+2-A127948(n))`
-/

namespace A220280.P5585795686537961221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220464 ((n + 2 : ℤ) - A127948 n).toNat

end

end A220280.P5585795686537961221

namespace A220280

/-- `A220464(n+2-A127948(n))` -/
def P5585795686537961221.Spec : Prop :=
  ∀ n, P5585795686537961221.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P14157652070509479665

`A208233(A188568(A208233(A188568(n+1))))`
-/

namespace A220280.P14157652070509479665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A188568 (A208233 (A188568 (n + 1)).toNat).toNat).toNat

end

end A220280.P14157652070509479665

namespace A220280

/-- `A208233(A188568(A208233(A188568(n+1))))` -/
def P14157652070509479665.Spec : Prop :=
  ∀ n, P14157652070509479665.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P13376394167837129068

`A002260(A048151(comp[∑[n]]))`
-/

namespace A220280.P13376394167837129068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A220280.P13376394167837129068

namespace A220280

/-- `A002260(A048151(comp[∑[n]]))` -/
def P13376394167837129068.Spec : Prop :=
  ∀ n, P13376394167837129068.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P17929747131819306553

`A002260(A002262(comp[∑[n]]))`
-/

namespace A220280.P17929747131819306553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A220280.P17929747131819306553

namespace A220280

/-- `A002260(A002262(comp[∑[n]]))` -/
def P17929747131819306553.Spec : Prop :=
  ∀ n, P17929747131819306553.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P854948772064829506

`A002260(A057555(Δ[n²]))`
-/

namespace A220280.P854948772064829506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A220280.P854948772064829506

namespace A220280

/-- `A002260(A057555(Δ[n²]))` -/
def P854948772064829506.Spec : Prop :=
  ∀ n, P854948772064829506.a n = A220280 (n + 1)

end A220280

/-! ## A220280.P8010379959292516409

`A074294(A074294(2*(n+1)))/2`
-/

namespace A220280.P8010379959292516409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074294 (A074294 (2 * (n + 1))).toNat : ℚ) / 2

end

end A220280.P8010379959292516409

namespace A220280

/-- `A074294(A074294(2*(n+1)))/2` -/
def P8010379959292516409.Spec : Prop :=
  ∀ n, P8010379959292516409.a n = (A220280 (n + 1) : ℚ)

end A220280

/-!
# A220282: E.g.f.: 1/(1-x) = Sum_{n>=0} a(n) * exp(-n^2*x) * x^n/n!.

The programs for A220282, there is no canonical definition to state claims against.
-/

/-! ## A220282.P7495534518740612368

`A123108(A022086(n²))`
-/

namespace A220282.P7495534518740612368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022086 (n ^ 2)).toNat

end

end A220282.P7495534518740612368

/-!
# A220283: Equals one maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..1 nX2 array.

The programs for A220283, there is no canonical definition to state claims against.
-/

/-! ## A220283.P9459725748080874507

`A220537(∑[n+2])`
-/

namespace A220283.P9459725748080874507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220283.P9459725748080874507

/-! ## A220283.P5537920550884315354

`A220287(∑[n+1]+2)`
-/

namespace A220283.P5537920550884315354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220283.P5537920550884315354

/-! ## A220283.P15101574016039924106

`record[A220537(A198455(n+1))]`
-/

namespace A220283.P15101574016039924106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220283.P15101574016039924106

/-! ## A220283.P16599485015177848940

`record[A220537(A117142(n+2))]`
-/

namespace A220283.P16599485015177848940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220283.P16599485015177848940

/-! ## A220283.P5362821792827726883

`record[A010054(n)*A220287(n+2)]`
-/

namespace A220283.P5362821792827726883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220287 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220283.P5362821792827726883

/-!
# A220284: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..1 nX3 array.

The programs for A220284, there is no canonical definition to state claims against.
-/

/-! ## A220284.P7526112363901352770

`A220287(∑[n+2]+4)`
-/

namespace A220284.P7526112363901352770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220284.P7526112363901352770

/-! ## A220284.P1198885980463991796

`lcm((-1)^n, A220287(A167614(n+1)))`
-/

namespace A220284.P1198885980463991796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A220287 (A167614 (n + 1)).toNat)

end

end A220284.P1198885980463991796

/-! ## A220284.P13840533319096573338

`A220287(A167614(n+1))+A014083(n)`
-/

namespace A220284.P13840533319096573338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (A167614 (n + 1)).toNat + A014083 n

end

end A220284.P13840533319096573338

/-! ## A220284.P7652923142933935504

`A220287(A167614(n+1))+A025439(n)`
-/

namespace A220284.P7652923142933935504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (A167614 (n + 1)).toNat + A025439 n

end

end A220284.P7652923142933935504

/-! ## A220284.P11612464690445264109

`A220287(A167614(n+1))+A054899(n)`
-/

namespace A220284.P11612464690445264109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (A167614 (n + 1)).toNat + A054899 n

end

end A220284.P11612464690445264109

/-!
# A220285: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..1 nX4 array.

The programs for A220285, there is no canonical definition to state claims against.
-/

/-! ## A220285.P10483333071821171639

`A220287(∑[n+2]+n+8)`
-/

namespace A220285.P10483333071821171639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A220285.P10483333071821171639

/-! ## A220285.P12179234310113696620

`A220287(A141214(n+1))+A014083(n)`
-/

namespace A220285.P12179234310113696620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (A141214 (n + 1)).toNat + A014083 n

end

end A220285.P12179234310113696620

/-! ## A220285.P5559841844165765827

`A220287(A141214(n+1))+A025439(n)`
-/

namespace A220285.P5559841844165765827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (A141214 (n + 1)).toNat + A025439 n

end

end A220285.P5559841844165765827

/-!
# A220286: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..1 nX5 array.

The programs for A220286, there is no canonical definition to state claims against.
-/

/-! ## A220286.P3754540269985437889

`A220287(∑[n+4]+11)`
-/

namespace A220286.P3754540269985437889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220287 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A220286.P3754540269985437889

/-!
# A220287: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..1 nXk array.

The programs for A220287, there is no canonical definition to state claims against.
-/

/-! ## A220287.P12888597597347311915

`A069784(∏[∑[A293019(n)]])`
-/

namespace A220287.P12888597597347311915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069784 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220287.P12888597597347311915

/-! ## A220287.P10308611620423137213

`A298424(A161831(2*n+1))`
-/

namespace A220287.P10308611620423137213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298424 (A161831 (2 * n + 1)).toNat

end

end A220287.P10308611620423137213

/-! ## A220287.P15215565596826713959

`A000127(∑{e}[A128933(n+1), #])`
-/

namespace A220287.P15215565596826713959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A220287.P15215565596826713959

/-! ## A220287.P4814200983436308001

`A281837(A032555(n+1)-char[4])`
-/

namespace A220287.P4814200983436308001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A032555 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A220287.P4814200983436308001

/-! ## A220287.P1436407599271997844

`A300259(n+1)/A244051(A352208(n+1))`
-/

namespace A220287.P1436407599271997844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300259 (n + 1) : ℚ) / (A244051 (A352208 (n + 1)).toNat : ℚ)

end

end A220287.P1436407599271997844

/-!
# A220293: Chebyshev numbers C_2(n): a(n) is the smallest number such that if x >= a(n), then theta(x) - theta(x/2) >= n*log(x), where theta(x) = sum_{prime p <= x} log p.

The programs for A220293, there is no canonical definition to state claims against.
-/

/-! ## A220293.P4931145041186767887

`A104272(A000005(2^(n+1)))`
-/

namespace A220293.P4931145041186767887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A000005 (2 ^ (n + 1))).toNat

end

end A220293.P4931145041186767887

/-! ## A220293.P6605008003804527348

`record[A104272(sqrt(A106410(n+1)))]`
-/

namespace A220293.P6605008003804527348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.roundAway (Real.sqrt (A106410 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220293.P6605008003804527348

/-! ## A220293.P11026511522277952214

`A104272(A324019(∑[n+1]+2))`
-/

namespace A220293.P11026511522277952214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A324019 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A220293.P11026511522277952214

/-! ## A220293.P1155603987150696493

`record[A104272(A375128(n+1)+1)]`
-/

namespace A220293.P1155603987150696493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A375128 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220293.P1155603987150696493

/-! ## A220293.P12841917500225941500

`record[A104272(A242681(n+2)+1)]`
-/

namespace A220293.P12841917500225941500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A242681 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220293.P12841917500225941500

/-!
# A220294: a(n) = 1 - 2^(2^n) + 2^(2^(n+1)).

The programs for A220294, the canonical program `A220294.P16749613021749198870` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220294 has offset 0).

The definition of A220294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2^2^n+2^2^(n+1)` (program `A220294.P16749613021749198870`, by `A220294.P16749613021749198870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220294.P16749613021749198870

`1-2^2^n+2^2^(n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220294

/-- `1-2^2^n+2^2^(n+1)` -/
def P16749613021749198870.Spec : Prop :=
  ∀ n, P16749613021749198870.a n = A220294 n

theorem P16749613021749198870.correct : P16749613021749198870.Spec := by
  intro n
  simp only [A220294]

end A220294

/-! ## A220294.P16524349760376382968

`or(1, Δ[2^2^n])`
-/

namespace A220294.P16524349760376382968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A220294.P16524349760376382968

namespace A220294

/-- `or(1, Δ[2^2^n])` -/
def P16524349760376382968.Spec : Prop :=
  ∀ n, P16524349760376382968.a n = A220294 n

end A220294

/-! ## A220294.P16225633083440897706

`xor(1, Δ[2^2^n])`
-/

namespace A220294.P16225633083440897706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A220294.P16225633083440897706

namespace A220294

/-- `xor(1, Δ[2^2^n])` -/
def P16225633083440897706.Spec : Prop :=
  ∀ n, P16225633083440897706.a n = A220294 n

end A220294

/-! ## A220294.P8166340680297581317

`Δ[a(n-1)²]+1` with `a(0)=2`
-/

namespace A220294.P8166340680297581317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A220294.P8166340680297581317

namespace A220294

/-- `Δ[a(n-1)²]+1` -/
def P8166340680297581317.Spec : Prop :=
  ∀ n, P8166340680297581317.a n = A220294 n

end A220294

/-!
# A220296: Number of n-digit composites with n-digit home primes.

The programs for A220296, there is no canonical definition to state claims against.
-/

/-! ## A220296.P1552040339434709450

`A144728(A006809(n))-2^val(n+1, 2)`
-/

namespace A220296.P1552040339434709450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144728 (A006809 n).toNat - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A220296.P1552040339434709450

/-!
# A220297: Number of ways to cut a 4 X n rectangle into rectangles with integer sides.

The programs for A220297, there is no canonical definition to state claims against.
-/

/-! ## A220297.P12289683872571978291

`A116694(A141214(n))-A000007(n)`
-/

namespace A220297.P12289683872571978291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (A141214 n).toNat - A000007 n

end

end A220297.P12289683872571978291

/-! ## A220297.P3171635198935773471

`A116694(A141214(n)-A000038(n))`
-/

namespace A220297.P3171635198935773471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (A141214 n - A000038 n).toNat

end

end A220297.P3171635198935773471

/-! ## A220297.P8484326637302798879

`A116694(A141214(n)^A178334(n))`
-/

namespace A220297.P8484326637302798879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (SequenceMachineLib.roundAway ((A141214 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A220297.P8484326637302798879

/-! ## A220297.P4465754911885929881

`A116694(A141214(n)%A090288(n))`
-/

namespace A220297.P4465754911885929881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (Int.tmod (A141214 n) (A090288 n)).toNat

end

end A220297.P4465754911885929881

/-! ## A220297.P6928803081269126978

`A116694(xor(A000038(n), A141214(n)))`
-/

namespace A220297.P6928803081269126978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (Int.xor (A000038 n) (A141214 n)).toNat

end

end A220297.P6928803081269126978

/-!
# A220298: Number of ways to cut a 5 X n rectangle into rectangles with integer sides.

The programs for A220298, there is no canonical definition to state claims against.
-/

/-! ## A220298.P1329689909890385743

`A116694(A046691(n+2)%A166943(n))`
-/

namespace A220298.P1329689909890385743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (Int.tmod (A046691 (n + 2)) (A166943 n)).toNat

end

end A220298.P1329689909890385743

/-! ## A220298.P11820580906449477295

`A116694(eq[A061397(n+1), A140944(n+3)])`
-/

namespace A220298.P11820580906449477295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A220298.P11820580906449477295

/-!
# A220299: Number of ways to cut a 6 X n rectangle into rectangles with integer sides.

The programs for A220299, there is no canonical definition to state claims against.
-/

/-! ## A220299.P10828864318394356622

`A116694(A052905(n+2)%A183111(2*(n+1)))`
-/

namespace A220299.P10828864318394356622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (Int.tmod (A052905 (n + 2)) (A183111 (2 * (n + 1)))).toNat

end

end A220299.P10828864318394356622

/-! ## A220299.P14974281064678618966

`A116694(record[A052905(n)%A053709(n+1)])`
-/

namespace A220299.P14974281064678618966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052905 n) (A053709 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220299.P14974281064678618966

