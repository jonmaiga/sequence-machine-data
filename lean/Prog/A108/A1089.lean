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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A108900: Numbers k such that 2357*k + 11 is prime.

The programs for A108900, there is no canonical definition to state claims against.
-/

/-! ## A108900.P8905869476274809814

`eq[A159314(A241663(n+1)), A232991(n)]`
-/

namespace A108900.P8905869476274809814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (A241663 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108900.P8905869476274809814

/-!
# A108903: Numbers such that the outer 2 digits are 9 and the inner digits are 5.

The programs for A108903, there is no canonical definition to state claims against.
-/

/-! ## A108903.P1509839778665963563

`A178501(n+4)-A173768(n+2)`
-/

namespace A108903.P1509839778665963563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 4) - A173768 (n + 2)

end

end A108903.P1509839778665963563

/-! ## A108903.P16618315243514491465

`A108896(n+1)+∑[A011557(n+1)]`
-/

namespace A108903.P16618315243514491465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108896 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108903.P16618315243514491465

/-! ## A108903.P5930384456038707676

`A108896(n+1)+∑[A178501(n+2)]`
-/

namespace A108903.P5930384456038707676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108896 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108903.P5930384456038707676

/-! ## A108903.P16976907370342852615

`Δ[A173734(n+3)]-A173768(n+2)`
-/

namespace A108903.P16976907370342852615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173734 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173768 (n + 2)

end

end A108903.P16976907370342852615

/-! ## A108903.P11704106591155546457

`Δ[A094620(2*n+3)]-A094622(2*(n+2))`
-/

namespace A108903.P11704106591155546457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094622 (2 * (n + 2))

end

end A108903.P11704106591155546457

/-!
# A108904: a(n) has two outer digits 9 and n inner digits 7.

The programs for A108904, the canonical program `A108904.P2094900981963497512` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108904 has offset 0).

The definition of A108904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108904.P2094900981963497512

`11*A059482(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108904

/-- `11*A059482(n+1)` -/
def P2094900981963497512.Spec : Prop :=
  ∀ n, P2094900981963497512.a n = A108904 n

theorem P2094900981963497512.correct : P2094900981963497512.Spec := by
  intro n
  simp only [A108904]

end A108904

/-! ## A108904.P5443187540203094011

`11*(80*10^n+1)/9`
-/

namespace A108904.P5443187540203094011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (80 * 10 ^ n + 1) : ℚ) / 9

end

end A108904.P5443187540203094011

namespace A108904

/-- `11*(80*10^n+1)/9` -/
def P5443187540203094011.Spec : Prop :=
  ∀ n, P5443187540203094011.a n = (A108904 n : ℚ)

end A108904

/-! ## A108904.P959604723464784791

`2*A328333(2*n+3)+1`
-/

namespace A108904.P959604723464784791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328333 (2 * n + 3) + 1

end

end A108904.P959604723464784791

namespace A108904

/-- `2*A328333(2*n+3)+1` -/
def P959604723464784791.Spec : Prop :=
  ∀ n, P959604723464784791.a n = A108904 n

end A108904

/-! ## A108904.P14553005699885155270

`A173808(n+1)+Δ[A173833(n+1)]`
-/

namespace A108904.P14553005699885155270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173808 (n + 1) + (f1 (n + 1) - f1 n)

end

end A108904.P14553005699885155270

namespace A108904

/-- `A173808(n+1)+Δ[A173833(n+1)]` -/
def P14553005699885155270.Spec : Prop :=
  ∀ n, P14553005699885155270.a n = A108904 n

end A108904

/-! ## A108904.P6884579122925955616

`Δ[A132583(n)]-A132583(n)`
-/

namespace A108904.P6884579122925955616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132583 n

end

end A108904.P6884579122925955616

namespace A108904

/-- `Δ[A132583(n)]-A132583(n)` -/
def P6884579122925955616.Spec : Prop :=
  ∀ n, P6884579122925955616.a n = A108904 n

end A108904

/-! ## A108904.P11741232677653448762

`A002275(n+3)-A073551(n+2)`
-/

namespace A108904.P11741232677653448762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 3) - A073551 (n + 2)

end

end A108904.P11741232677653448762

namespace A108904

/-- `A002275(n+3)-A073551(n+2)` -/
def P11741232677653448762.Spec : Prop :=
  ∀ n, P11741232677653448762.a n = A108904 n

end A108904

/-! ## A108904.P3947684754984243167

`A132583(n+1)-A132583(n)-A132583(n)`
-/

namespace A108904.P3947684754984243167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132583 (n + 1) - A132583 n - A132583 n

end

end A108904.P3947684754984243167

namespace A108904

/-- `A132583(n+1)-A132583(n)-A132583(n)` -/
def P3947684754984243167.Spec : Prop :=
  ∀ n, P3947684754984243167.a n = A108904 n

end A108904

/-!
# A108905: Engel series expansion for Sierpinski's constant.

The programs for A108905, there is no canonical definition to state claims against.
-/

/-! ## A108905.P9864250840896499465

`∏{p}[A102349(n+1)-n, #]`
-/

namespace A108905.P9864250840896499465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102349 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A108905.P9864250840896499465

/-! ## A108905.P2540951659685607153

`A109928(A148305(n))`
-/

namespace A108905.P2540951659685607153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109928 (A148305 n).toNat

end

end A108905.P2540951659685607153

/-!
# A108906: First differences of A006899.

The programs for A108906, the canonical program `A108906.P8516043697297774057` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108906 has offset 1).

The definition of A108906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108906.P8516043697297774057

`Δ[A006899(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108906

/-- `Δ[A006899(n+1)]` -/
def P8516043697297774057.Spec : Prop :=
  ∀ n, P8516043697297774057.a n = A108906 (n + 1)

theorem P8516043697297774057.correct : P8516043697297774057.Spec := by
  intro n
  simp only [A108906, Nat.add_sub_cancel]

end A108906

/-! ## A108906.P1615034190777502862

`Δ[record[A006899(A344180(n))]]`
-/

namespace A108906.P1615034190777502862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P1615034190777502862

namespace A108906

/-- `Δ[record[A006899(A344180(n))]]` -/
def P1615034190777502862.Spec : Prop :=
  ∀ n, P1615034190777502862.a n = A108906 (n + 1)

end A108906

/-! ## A108906.P17937056152293315518

`A006899(n+2)-A006899(n+1)`
-/

namespace A108906.P17937056152293315518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 2) - A006899 (n + 1)

end

end A108906.P17937056152293315518

namespace A108906

/-- `A006899(n+2)-A006899(n+1)` -/
def P17937056152293315518.Spec : Prop :=
  ∀ n, P17937056152293315518.a n = A108906 (n + 1)

theorem P17937056152293315518.correct : P17937056152293315518.Spec := by
  intro n
  simp only [A108906, Nat.add_sub_cancel, A108906.P17937056152293315518.a, A108906.P8516043697297774057.f1, A108906.P8516043697297774057.a, SequenceMachineLib.memo_apply]

end A108906

/-! ## A108906.P10568804218003722496

`Δ[A085239(n+1)^A085238(n+1)]`
-/

namespace A108906.P10568804218003722496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085239 (n + 1) : ℚ) ^ (A085238 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P10568804218003722496

namespace A108906

/-- `Δ[A085239(n+1)^A085238(n+1)]` -/
def P10568804218003722496.Spec : Prop :=
  ∀ n, P10568804218003722496.a n = (A108906 (n + 1) : ℚ)

end A108906

/-! ## A108906.P8511412025658991837

`Δ[∪[2^n, 3^n]]`
-/

namespace A108906.P8511412025658991837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108906.P8511412025658991837

namespace A108906

/-- `Δ[∪[2^n, 3^n]]` -/
def P8511412025658991837.Spec : Prop :=
  ∀ n, P8511412025658991837.a n = A108906 (n + 1)

end A108906

/-! ## A108906.P9613340833732581926

`Δ[Δ[A170804(n+1)]]`
-/

namespace A108906.P9613340833732581926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170804 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P9613340833732581926

namespace A108906

/-- `Δ[Δ[A170804(n+1)]]` -/
def P9613340833732581926.Spec : Prop :=
  ∀ n, P9613340833732581926.a n = A108906 (n + 1)

end A108906

/-! ## A108906.P12399858741535953094

`Δ[Δ[A170805(n+1)]]`
-/

namespace A108906.P12399858741535953094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P12399858741535953094

namespace A108906

/-- `Δ[Δ[A170805(n+1)]]` -/
def P12399858741535953094.Spec : Prop :=
  ∀ n, P12399858741535953094.a n = A108906 (n + 1)

end A108906

/-! ## A108906.P11739347373438216886

`Δ[record[A347288(n)/gcd(2, A347288(n))]]`
-/

namespace A108906.P11739347373438216886
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347288 n : ℚ) / (Int.gcd 2 (A347288 n) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P11739347373438216886

namespace A108906

/-- `Δ[record[A347288(n)/gcd(2, A347288(n))]]` -/
def P11739347373438216886.Spec : Prop :=
  ∀ n, P11739347373438216886.a n = (A108906 (n + 1) : ℚ)

end A108906

/-!
# A108907: Number of times a point sum n is attained in all 6^6 permutations of throwing 6 dice.

The programs for A108907, there is no canonical definition to state claims against.
-/

/-! ## A108907.P8144644513919772792

`C(A247469(∑[n]), 5)`
-/

namespace A108907.P8144644513919772792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A247469 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 5

end

end A108907.P8144644513919772792

/-!
# A108908: Largest n-digit number coprime to n.

The programs for A108908, there is no canonical definition to state claims against.
-/

/-! ## A108908.P6402054005211459332

`A011557(n+1)-A394352(n+1)`
-/

namespace A108908.P6402054005211459332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A394352 (n + 1)

end

end A108908.P6402054005211459332

/-! ## A108908.P5749174184898740047

`A155148(n+3)-A394352(n+1)`
-/

namespace A108908.P5749174184898740047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155148 (n + 3) - A394352 (n + 1)

end

end A108908.P5749174184898740047

/-! ## A108908.P10472341620631857526

`A125858(n+1)-A115573(A348239(n+1))`
-/

namespace A108908.P10472341620631857526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125858 (n + 1) - A115573 (A348239 (n + 1)).toNat

end

end A108908.P10472341620631857526

/-!
# A108909: Sum of k-digit multiples of n where k is the number of digits in n.

The programs for A108909, there is no canonical definition to state claims against.
-/

/-! ## A108909.P9914419397441539101

`(n+1)*C(A097327(n+1), 2)`
-/

namespace A108909.P9914419397441539101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (A097327 (n + 1)).toNat 2

end

end A108909.P9914419397441539101

/-! ## A108909.P305365722659875517

`(n+1)*C(A097326(n+1)+1, 2)`
-/

namespace A108909.P305365722659875517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (A097326 (n + 1) + 1).toNat 2

end

end A108909.P305365722659875517

/-! ## A108909.P2998390359916255758

`(n+1)*A000217(ceil((∏{digits}[n+1, floor(#/10)+10]-(n+1))/(n+1)))`
-/

namespace A108909.P2998390359916255758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 ⌈((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A108909.P2998390359916255758

/-! ## A108909.P1595671357664940574

`A097327(n+1)/2*A109940(n+1)`
-/

namespace A108909.P1595671357664940574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097327 (n + 1) : ℚ) / 2 * (A109940 (n + 1) : ℚ)

end

end A108909.P1595671357664940574

/-! ## A108909.P15049975054867110002

`A004526(A097327(n+1)*A109940(n+1))`
-/

namespace A108909.P15049975054867110002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097327 (n + 1) * A109940 (n + 1)).toNat

end

end A108909.P15049975054867110002

/-!
# A108910: Records in A110234.

The programs for A108910, there is no canonical definition to state claims against.
-/

/-! ## A108910.P6602527198594430833

`ceil(record[A110234(n+4)]/2)`
-/

namespace A108910.P6602527198594430833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110234 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A108910.P6602527198594430833

/-! ## A108910.P3759568079953141799

`A003602(record[A110234(n+1)])`
-/

namespace A108910.P3759568079953141799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108910.P3759568079953141799

/-! ## A108910.P10191857345098528080

`A152271(record[A110234(n+1)])`
-/

namespace A108910.P10191857345098528080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108910.P10191857345098528080

/-! ## A108910.P17224953373929445366

`A008619(record[A110234(n+4)])`
-/

namespace A108910.P17224953373929445366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110234 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108910.P17224953373929445366

/-! ## A108910.P17039464459135269151

`record[A110234(n+4)]/2+A007318(∑[n])/2`
-/

namespace A108910.P17039464459135269151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110234 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2 + (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

end

end A108910.P17039464459135269151

/-!
# A108911: Difference between n and the sum of the factorials of its digits.

The programs for A108911, the canonical program `A108911.P11409882187476094557` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108911 has offset 1).

The definition of A108911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108911.P11409882187476094557

`n+1-A061602(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108911

/-- `n+1-A061602(n+1)` -/
def P11409882187476094557.Spec : Prop :=
  ∀ n, P11409882187476094557.a n = A108911 (n + 1)

theorem P11409882187476094557.correct : P11409882187476094557.Spec := by
  intro n
  simp only [A108911, Nat.add_sub_cancel]

end A108911

/-! ## A108911.P11850158499440723582

`1-∑{digits}[n+1, #!]+n`
-/

namespace A108911.P11850158499440723582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) + (n : ℤ)

end

end A108911.P11850158499440723582

namespace A108911

/-- `1-∑{digits}[n+1, #!]+n` -/
def P11850158499440723582.Spec : Prop :=
  ∀ n, P11850158499440723582.a n = A108911 (n + 1)

theorem P11850158499440723582.correct : P11850158499440723582.Spec := by
  intro n
  simp only [A108911, Nat.add_sub_cancel, A108911.P11850158499440723582.f1, A108911.P11850158499440723582.a, A108911.P11409882187476094557.a, A061602, A061602.P6084715743619966137.f1, A061602.P6084715743619966137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108911

/-! ## A108911.P11565836532642793498

`∑[-Δ[A061602(n)]]+n`
-/

namespace A108911.P11565836532642793498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A108911.P11565836532642793498

namespace A108911

/-- `∑[-Δ[A061602(n)]]+n` -/
def P11565836532642793498.Spec : Prop :=
  ∀ n, P11565836532642793498.a n = A108911 (n + 1)

end A108911

/-! ## A108911.P6168627801799484308

`2*(n+1)-A241404(n+1)`
-/

namespace A108911.P6168627801799484308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A241404 (n + 1)

end

end A108911.P6168627801799484308

namespace A108911

/-- `2*(n+1)-A241404(n+1)` -/
def P6168627801799484308.Spec : Prop :=
  ∀ n, P6168627801799484308.a n = A108911 (n + 1)

theorem P6168627801799484308.correct : P6168627801799484308.Spec := by
  intro n
  simp only [A108911, Nat.add_sub_cancel, A108911.P6168627801799484308.a, A108911.P11409882187476094557.a, A061602, A061602.P6084715743619966137.f1, A061602.P6084715743619966137.a, A241404, A241404.P1829195198016813191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108911

/-! ## A108911.P4382529144998587479

`1-(A241404(n+1)-A004273(n+1))`
-/

namespace A108911.P4382529144998587479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A241404 (n + 1) - A004273 (n + 1))

end

end A108911.P4382529144998587479

namespace A108911

/-- `1-(A241404(n+1)-A004273(n+1))` -/
def P4382529144998587479.Spec : Prop :=
  ∀ n, P4382529144998587479.a n = A108911 (n + 1)

end A108911

/-!
# A108912: Shadow of Euler's constant exp(1).

The programs for A108912, there is no canonical definition to state claims against.
-/

/-! ## A108912.P1572216288839136338

`A319057(n+1)+A227413(A249792(n))`
-/

namespace A108912.P1572216288839136338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319057 (n + 1) + A227413 (A249792 n).toNat

end

end A108912.P1572216288839136338

/-!
# A108913: A083953 read mod 3.

The programs for A108913, there is no canonical definition to state claims against.
-/

/-! ## A108913.P3189484787862799233

`A083953(n)%3`
-/

namespace A108913.P3189484787862799233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083953 n) 3

end

end A108913.P3189484787862799233

/-! ## A108913.P6116326947230866079

`A028242(ceil(ratio[A083953(n)]))`
-/

namespace A108913.P6116326947230866079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108913.P6116326947230866079

/-! ## A108913.P2168805842078916452

`A060575(ceil(ratio[A083953(n)]))`
-/

namespace A108913.P2168805842078916452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060575 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108913.P2168805842078916452

/-! ## A108913.P6512261461802584135

`A222759(ceil(ratio[A083953(n)]))`
-/

namespace A108913.P6512261461802584135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222759 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108913.P6512261461802584135

/-! ## A108913.P14194429700000827678

`A262999(ceil(ratio[A083953(n)]))`
-/

namespace A108913.P14194429700000827678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262999 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108913.P14194429700000827678

/-! ## A108913.P2007973792438580826

`A301631(ceil(ratio[A083953(n)]))`
-/

namespace A108913.P2007973792438580826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301631 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108913.P2007973792438580826

/-! ## A108913.P8215960650153988860

`A060575(round(ratio[A083953(n)]))`
-/

namespace A108913.P8215960650153988860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060575 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A108913.P8215960650153988860

/-! ## A108913.P80675817814943200

`A108921(4-Δ[A083953(n)])`
-/

namespace A108913.P80675817814943200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 (4 - (f1 (n + 1) - f1 n)).toNat

end

end A108913.P80675817814943200

/-! ## A108913.P17532652225445562047

`A108921(Δ[A083953(n)]+6)`
-/

namespace A108913.P17532652225445562047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 (f1 (n + 1) - f1 n + 6).toNat

end

end A108913.P17532652225445562047

/-! ## A108913.P8151072762803723867

`A005131(ceil(ratio[A083953(n)])²)`
-/

namespace A108913.P8151072762803723867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 2).toNat

end

end A108913.P8151072762803723867

/-!
# A108914: Number of regions formed inside square by diagonals and the segments joining the vertices to the points dividing the sides into n equal length segments.

The programs for A108914, there is no canonical definition to state claims against.
-/

/-! ## A108914.P777916488130183156

`A355948(n+1)-A355949(n+1)+1`
-/

namespace A108914.P777916488130183156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355948 (n + 1) - A355949 (n + 1) + 1

end

end A108914.P777916488130183156

/-! ## A108914.P14032578343101863164

`A092486(A355948(n+1)-A355949(n+1))`
-/

namespace A108914.P14032578343101863164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A355948 (n + 1) - A355949 (n + 1)).toNat

end

end A108914.P14032578343101863164

/-! ## A108914.P7445142776661242842

`A014681(A355948(n+1)-A355949(n+1))`
-/

namespace A108914.P7445142776661242842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A355948 (n + 1) - A355949 (n + 1)).toNat

end

end A108914.P7445142776661242842

/-! ## A108914.P17033288098736370121

`A015906(A355948(n+1)-A355949(n+1))`
-/

namespace A108914.P17033288098736370121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A355948 (n + 1) - A355949 (n + 1)).toNat

end

end A108914.P17033288098736370121

/-! ## A108914.P14809296766828321587

`A356044(∑[n+1]+4)`
-/

namespace A108914.P14809296766828321587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356044 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A108914.P14809296766828321587

/-!
# A108915: Dimensions of the invariant subspaces in a sequence of modules of dimension (n+1)^(n-1) over the symmetric groups S_n.

The programs for A108915, there is no canonical definition to state claims against.
-/

/-! ## A108915.P4683996498226311247

`A054846(A221586(n+2))`
-/

namespace A108915.P4683996498226311247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A221586 (n + 2)).toNat

end

end A108915.P4683996498226311247

/-! ## A108915.P16952040857385879468

`∑[A000006(A056273(n)-A304975(n))]`
-/

namespace A108915.P16952040857385879468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A056273 n - A304975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108915.P16952040857385879468

/-! ## A108915.P3419052687727026250

`∑[A000006(A056273(n))]-A251745(n+2)`
-/

namespace A108915.P3419052687727026250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A056273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251745 (n + 2)

end

end A108915.P3419052687727026250

/-! ## A108915.P5861909898348093377

`∑[A000196(A090365(n))]`
-/

namespace A108915.P5861909898348093377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A090365 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108915.P5861909898348093377

/-!
# A108916: Triangle of Schroeder paths counted by number of diagonal steps not preceded by an east step.

The programs for A108916, there is no canonical definition to state claims against.
-/

/-! ## A108916.P16797834562786203312

`A007318(n)*A052709(A004736(n+1))`
-/

namespace A108916.P16797834562786203312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052709 (A004736 (n + 1)).toNat

end

end A108916.P16797834562786203312

/-! ## A108916.P1329008735278702742

`A008459(n)^(1/2)*A052709(A004736(n+1))`
-/

namespace A108916.P1329008735278702742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ) * (A052709 (A004736 (n + 1)).toNat : ℝ)

end

end A108916.P1329008735278702742

/-! ## A108916.P8155170929233333716

`A135665(A039812(n+1)+5)`
-/

namespace A108916.P8155170929233333716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A039812 (n + 1) + 5).toNat

end

end A108916.P8155170929233333716

/-! ## A108916.P9594423118529715757

`A007318(n)*A330998(A119502(n))`
-/

namespace A108916.P9594423118529715757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A330998 (A119502 n).toNat

end

end A108916.P9594423118529715757

/-! ## A108916.P8378427694599669433

`A007318(n)*A122156(A100537(n+1))`
-/

namespace A108916.P8378427694599669433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122156 (A100537 (n + 1)).toNat

end

end A108916.P8378427694599669433

/-!
# A108917: Number of knapsack partitions of n.

The programs for A108917, there is no canonical definition to state claims against.
-/

/-! ## A108917.P8349707204468868897

`A326017(2*(n+1)²)`
-/

namespace A108917.P8349707204468868897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (2 * (n + 1) ^ 2)

end

end A108917.P8349707204468868897

/-! ## A108917.P5227131682980746255

`or(char[1], A326017(A001844(n+1)))`
-/

namespace A108917.P5227131682980746255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A326017 (A001844 (n + 1)).toNat)

end

end A108917.P5227131682980746255

/-! ## A108917.P8935235373939554223

`or(char[1], A326017(A099776(n+1)))`
-/

namespace A108917.P8935235373939554223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A326017 (A099776 (n + 1)).toNat)

end

end A108917.P8935235373939554223

/-! ## A108917.P14143878955349412111

`A326017(A001844(n+1))%A198277(n)`
-/

namespace A108917.P14143878955349412111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326017 (A001844 (n + 1)).toNat) (A198277 n)

end

end A108917.P14143878955349412111

/-! ## A108917.P6693135470237960280

`A326017(A099776(n+1))%A198277(n)`
-/

namespace A108917.P6693135470237960280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326017 (A099776 (n + 1)).toNat) (A198277 n)

end

end A108917.P6693135470237960280

/-! ## A108917.P9060388237193153568

`A007318(C(2, n))*A326017(A001105(n+1))`
-/

namespace A108917.P9060388237193153568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A326017 (A001105 (n + 1)).toNat

end

end A108917.P9060388237193153568

/-! ## A108917.P1636424969228078245

`A007318(C(2, n))*A326017(A001844(n+1))`
-/

namespace A108917.P1636424969228078245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A326017 (A001844 (n + 1)).toNat

end

end A108917.P1636424969228078245

/-! ## A108917.P347729773430538246

`A326017(A001844(n+1))+A000041(n)%-1`
-/

namespace A108917.P347729773430538246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A001844 (n + 1)).toNat + Int.tmod (A000041 n) (-1)

end

end A108917.P347729773430538246

/-!
# A108918: Reversed binary words in reversed lexicographic order.

The programs for A108918, the canonical program `A108918.P4680511258930153550` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108918 has offset 1).

The definition of A108918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108918.P8226263128445088265

`A339451(comp[a(floor(n/2))+n])` with `a(0)=2, a(1)=0`
-/

namespace A108918.P8226263128445088265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A108918.P8226263128445088265

namespace A108918

/-- `A339451(comp[a(floor(n/2))+n])` -/
def P8226263128445088265.Spec : Prop :=
  ∀ n, P8226263128445088265.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P4680511258930153550

`A339451(A055938(n+1)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A108918

/-- `A339451(A055938(n+1)-1)` -/
def P4680511258930153550.Spec : Prop :=
  ∀ n, P4680511258930153550.a n = A108918 (n + 1)

theorem P4680511258930153550.correct : P4680511258930153550.Spec := by
  intro n
  simp only [A108918, Nat.add_sub_cancel]

end A108918

/-! ## A108918.P2735473059290229772

`A339451(A045412(n+1)-2)`
-/

namespace A108918.P2735473059290229772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (A045412 (n + 1) - 2).toNat

end

end A108918.P2735473059290229772

namespace A108918

/-- `A339451(A045412(n+1)-2)` -/
def P2735473059290229772.Spec : Prop :=
  ∀ n, P2735473059290229772.a n = A108918 (n + 1)

theorem P2735473059290229772.correct : P2735473059290229772.Spec := by
  intro n
  simp only [A108918, Nat.add_sub_cancel, A108918.P2735473059290229772.a, A108918.P4680511258930153550.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A055938, A055938.P11436454756649086681.a, A339451, A339451.P5257208981662838490.f1, A339451.P5257208981662838490.a, A079559, A079559.P6833565121082423031.a, A182105, A182105.P6910077357457844647.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A082850, A082850.P5931678067167339352.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108918

/-! ## A108918.P5996221058557733648

`A339451(n)+A046699(n+2)`
-/

namespace A108918.P5996221058557733648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n + A046699 (n + 2)

end

end A108918.P5996221058557733648

namespace A108918

/-- `A339451(n)+A046699(n+2)` -/
def P5996221058557733648.Spec : Prop :=
  ∀ n, P5996221058557733648.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P16516907641890832609

`A007843(n+1)-A182105(n+1)`
-/

namespace A108918.P16516907641890832609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) - A182105 (n + 1)

end

end A108918.P16516907641890832609

namespace A108918

/-- `A007843(n+1)-A182105(n+1)` -/
def P16516907641890832609.Spec : Prop :=
  ∀ n, P16516907641890832609.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P8286180572590606654

`2*A339451(n)+A182105(n+1)`
-/

namespace A108918.P8286180572590606654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339451 n + A182105 (n + 1)

end

end A108918.P8286180572590606654

namespace A108918

/-- `2*A339451(n)+A182105(n+1)` -/
def P8286180572590606654.Spec : Prop :=
  ∀ n, P8286180572590606654.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P14947737202964415967

`A339451(2*A339451(n)+n+1)`
-/

namespace A108918.P14947737202964415967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (2 * A339451 n + (n + 1 : ℤ)).toNat

end

end A108918.P14947737202964415967

namespace A108918

/-- `A339451(2*A339451(n)+n+1)` -/
def P14947737202964415967.Spec : Prop :=
  ∀ n, P14947737202964415967.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P5493758351063526191

`∑[2*A079559(n)]-A182105(n+1)`
-/

namespace A108918.P5493758351063526191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A108918.P5493758351063526191

namespace A108918

/-- `∑[2*A079559(n)]-A182105(n+1)` -/
def P5493758351063526191.Spec : Prop :=
  ∀ n, P5493758351063526191.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P1847833066979357424

`A055938(n+1)-(A182105(n+1)+n)`
-/

namespace A108918.P1847833066979357424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) - (A182105 (n + 1) + (n : ℤ))

end

end A108918.P1847833066979357424

namespace A108918

/-- `A055938(n+1)-(A182105(n+1)+n)` -/
def P1847833066979357424.Spec : Prop :=
  ∀ n, P1847833066979357424.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P6684325910614054807

`A339451(A055938(n+1))+A182105(n+1)`
-/

namespace A108918.P6684325910614054807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (A055938 (n + 1)).toNat + A182105 (n + 1)

end

end A108918.P6684325910614054807

namespace A108918

/-- `A339451(A055938(n+1))+A182105(n+1)` -/
def P6684325910614054807.Spec : Prop :=
  ∀ n, P6684325910614054807.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P5668126737409231742

`A339451(A339451(A055938(n+1))+n+1)`
-/

namespace A108918.P5668126737409231742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (A339451 (A055938 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A108918.P5668126737409231742

namespace A108918

/-- `A339451(A339451(A055938(n+1))+n+1)` -/
def P5668126737409231742.Spec : Prop :=
  ∀ n, P5668126737409231742.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P4040155969160929003

`A046699(A045412(n+1))-A182105(n+1)`
-/

namespace A108918.P4040155969160929003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A045412 (n + 1)).toNat - A182105 (n + 1)

end

end A108918.P4040155969160929003

namespace A108918

/-- `A046699(A045412(n+1))-A182105(n+1)` -/
def P4040155969160929003.Spec : Prop :=
  ∀ n, P4040155969160929003.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P434410580553831345

`A004277(A046699(n+2))-A182105(n+1)`
-/

namespace A108918.P434410580553831345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046699 (n + 2)).toNat - A182105 (n + 1)

end

end A108918.P434410580553831345

namespace A108918

/-- `A004277(A046699(n+2))-A182105(n+1)` -/
def P434410580553831345.Spec : Prop :=
  ∀ n, P434410580553831345.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P11043133025102736279

`A356120(A010078(n+2))`
-/

namespace A108918.P11043133025102736279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356120 (A010078 (n + 2)).toNat

end

end A108918.P11043133025102736279

namespace A108918

/-- `A356120(A010078(n+2))` -/
def P11043133025102736279.Spec : Prop :=
  ∀ n, P11043133025102736279.a n = A108918 (n + 1)

end A108918

/-! ## A108918.P12315023655347685023

`A292371(eq[A160381(n), A160385(n+1)])`
-/

namespace A108918.P12315023655347685023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108918.P12315023655347685023

namespace A108918

/-- `A292371(eq[A160381(n), A160385(n+1)])` -/
def P12315023655347685023.Spec : Prop :=
  ∀ n, P12315023655347685023.a n = A108918 (n + 1)

end A108918

/-!
# A108919: Number of series-reduced labeled trees with n nodes.

The programs for A108919, there is no canonical definition to state claims against.
-/

/-! ## A108919.P16678509671472769691

`A060356(n+1)/(n+1)`
-/

namespace A108919.P16678509671472769691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060356 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A108919.P16678509671472769691

/-! ## A108919.P14790966019934642062

`A335945(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A108919.P14790966019934642062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335945 n - (n : ℤ) * a (n - 1)

end

end A108919.P14790966019934642062

/-! ## A108919.P7972731629033882232

`A335945(n)-A060356(n)`
-/

namespace A108919.P7972731629033882232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335945 n - A060356 n

end

end A108919.P7972731629033882232

/-! ## A108919.P9626215519427907668

`A000007(n)+A335945(n)-A231602(A152947(n+1))`
-/

namespace A108919.P9626215519427907668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A335945 n - A231602 (A152947 (n + 1)).toNat)

end

end A108919.P9626215519427907668

/-! ## A108919.P16644246133927697132

`A231602(∑[n]+1)/(n+1)`
-/

namespace A108919.P16644246133927697132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231602 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A108919.P16644246133927697132

/-!
# A108920: Number of positive integers k>n such that n+k divides n^2+k^2.

The programs for A108920, there is no canonical definition to state claims against.
-/

/-! ## A108920.P4364914653152536905

`∑{d}[(n+1)², #%2+1]-A055081(n+1)-1`
-/

namespace A108920.P4364914653152536905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1) : ℕ) : ℤ) - A055081 (n + 1) - 1

end

end A108920.P4364914653152536905

/-! ## A108920.P1939363500449510642

`A078644(n+1)-(A270417(n+1)+1)`
-/

namespace A108920.P1939363500449510642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) - (A270417 (n + 1) + 1)

end

end A108920.P1939363500449510642

/-! ## A108920.P16725280665143457023

`A361689(n+1)-(A055081(n+1)+1)`
-/

namespace A108920.P16725280665143457023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) - (A055081 (n + 1) + 1)

end

end A108920.P16725280665143457023

/-! ## A108920.P1948271557748127020

`A066761(and(1, A107392(a(n-1)))+n)` with `a(0)=0`
-/

namespace A108920.P1948271557748127020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A066761 (Int.land 1 (A107392 (a (n - 1)).toNat) + (n : ℤ)).toNat

end

end A108920.P1948271557748127020

/-! ## A108920.P8968204869785305750

`2*A078644(n+1)-A055081(n+1)-1`
-/

namespace A108920.P8968204869785305750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078644 (n + 1) - A055081 (n + 1) - 1

end

end A108920.P8968204869785305750

/-! ## A108920.P17804674899705821422

`A004273(A078644(n+1))-A055081(n+1)`
-/

namespace A108920.P17804674899705821422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A078644 (n + 1)).toNat - A055081 (n + 1)

end

end A108920.P17804674899705821422

/-! ## A108920.P1999795101631111984

`A055081(n+1)-A005408(A270417(n+1))`
-/

namespace A108920.P1999795101631111984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1) - A005408 (A270417 (n + 1)).toNat

end

end A108920.P1999795101631111984

/-! ## A108920.P5922284151518170796

`A002837(A078644(n+1)-A270417(n+1))`
-/

namespace A108920.P5922284151518170796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A078644 (n + 1) - A270417 (n + 1)).toNat

end

end A108920.P5922284151518170796

/-! ## A108920.P13458875341149796391

`A033619(A078644(n+1)-A270417(n+1))`
-/

namespace A108920.P13458875341149796391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A078644 (n + 1) - A270417 (n + 1)).toNat

end

end A108920.P13458875341149796391

/-!
# A108921: A083350 read mod 3.

The programs for A108921, there is no canonical definition to state claims against.
-/

/-! ## A108921.P3636913612568156034

`(A083350(n)+A083337(n))%3`
-/

namespace A108921.P3636913612568156034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083350 n + A083337 n) 3

end

end A108921.P3636913612568156034

/-! ## A108921.P14601425045589515347

`A083349(3*n)%3`
-/

namespace A108921.P14601425045589515347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083349 (3 * n)) 3

end

end A108921.P14601425045589515347

/-! ## A108921.P15896761032908846433

`A271223(A366369(n)-A371459(n+4))`
-/

namespace A108921.P15896761032908846433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271223 (A366369 n - A371459 (n + 4)).toNat

end

end A108921.P15896761032908846433

/-! ## A108921.P15746912551120826102

`A316826(A027748(3*n+4)*A057976(2*n))`
-/

namespace A108921.P15746912551120826102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A027748 (3 * n + 4) * A057976 (2 * n)).toNat

end

end A108921.P15746912551120826102

/-!
# A108922: Expansion of 1/((x^8+1)*(x-1)^2).

The programs for A108922, the canonical program `A108922.P2615754860947641126` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108922 has offset 0).

The definition of A108922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+x^8-2x^9+x^10))` (program `A108922.P2615754860947641126`, by `A108922.P2615754860947641126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108922.P2615754860947641126

`ogf(1/(1-2x+x^2+x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108922

/-- `ogf(1/(1-2x+x^2+x^8-2x^9+x^10))` -/
def P2615754860947641126.Spec : Prop :=
  ∀ n, P2615754860947641126.a n = A108922 n

theorem P2615754860947641126.correct : P2615754860947641126.Spec := by
  intro n
  simp only [A108922]

end A108922

/-! ## A108922.P15205505556649142741

`∑[C(2, and(8, n))]`
-/

namespace A108922.P15205505556649142741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 8 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P15205505556649142741

namespace A108922

/-- `∑[C(2, and(8, n))]` -/
def P15205505556649142741.Spec : Prop :=
  ∀ n, (P15205505556649142741.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P1032088941696181150

`∑[char[and(n, -9)]]`
-/

namespace A108922.P1032088941696181150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-9)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P1032088941696181150

namespace A108922

/-- `∑[char[and(n, -9)]]` -/
def P1032088941696181150.Spec : Prop :=
  ∀ n, (P1032088941696181150.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P3617627590161567889

`∑[ceil(cos(and(8, n)))]`
-/

namespace A108922.P3617627590161567889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Nat.land 8 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P3617627590161567889

namespace A108922

/-- `∑[ceil(cos(and(8, n)))]` -/
def P3617627590161567889.Spec : Prop :=
  ∀ n, P3617627590161567889.a n = A108922 n

end A108922

/-! ## A108922.P17231931567803693763

`∑[round(cos(and(8, n)))]`
-/

namespace A108922.P17231931567803693763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Nat.land 8 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P17231931567803693763

namespace A108922

/-- `∑[round(cos(and(8, n)))]` -/
def P17231931567803693763.Spec : Prop :=
  ∀ n, P17231931567803693763.a n = A108922 n

end A108922

/-! ## A108922.P4952918381615340782

`∑[char[comp[or(8, n)]]]`
-/

namespace A108922.P4952918381615340782
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P4952918381615340782

namespace A108922

/-- `∑[char[comp[or(8, n)]]]` -/
def P4952918381615340782.Spec : Prop :=
  ∀ n, (P4952918381615340782.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P9413543326761739247

`∑[floor(acot(and(8, n)))]`
-/

namespace A108922.P9413543326761739247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Nat.land 8 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P9413543326761739247

namespace A108922

/-- `∑[floor(acot(and(8, n)))]` -/
def P9413543326761739247.Spec : Prop :=
  ∀ n, P9413543326761739247.a n = A108922 n

end A108922

/-! ## A108922.P5425394922823145209

`∑[10%or(n, -9)]`
-/

namespace A108922.P5425394922823145209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (Int.lor (n : ℤ) (-9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P5425394922823145209

namespace A108922

/-- `∑[10%or(n, -9)]` -/
def P5425394922823145209.Spec : Prop :=
  ∀ n, P5425394922823145209.a n = A108922 n

end A108922

/-! ## A108922.P4736183036623938340

`∑[and(8, n)!%2]`
-/

namespace A108922.P4736183036623938340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 8 n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P4736183036623938340

namespace A108922

/-- `∑[and(8, n)!%2]` -/
def P4736183036623938340.Spec : Prop :=
  ∀ n, (P4736183036623938340.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P13410806626160387775

`∑[1-and(8, n)/8]`
-/

namespace A108922.P13410806626160387775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 8 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P13410806626160387775

namespace A108922

/-- `∑[1-and(8, n)/8]` -/
def P13410806626160387775.Spec : Prop :=
  ∀ n, P13410806626160387775.a n = (A108922 n : ℚ)

end A108922

/-! ## A108922.P14305826066190566542

`∑[and(8, n+8)/8]`
-/

namespace A108922.P14305826066190566542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 8 (n + 8) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P14305826066190566542

namespace A108922

/-- `∑[and(8, n+8)/8]` -/
def P14305826066190566542.Spec : Prop :=
  ∀ n, P14305826066190566542.a n = (A108922 n : ℚ)

end A108922

/-! ## A108922.P15610572722035047545

`∑[C(n+8, 8)%2]`
-/

namespace A108922.P15610572722035047545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P15610572722035047545

namespace A108922

/-- `∑[C(n+8, 8)%2]` -/
def P15610572722035047545.Spec : Prop :=
  ∀ n, (P15610572722035047545.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P2020006980192589530

`∑[and(8, n+8)%7]`
-/

namespace A108922.P2020006980192589530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 8 (n + 8) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P2020006980192589530

namespace A108922

/-- `∑[and(8, n+8)%7]` -/
def P2020006980192589530.Spec : Prop :=
  ∀ n, (P2020006980192589530.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P6696015363395152026

`∑[ceil((n+1)/8)%2]`
-/

namespace A108922.P6696015363395152026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / 8⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P6696015363395152026

namespace A108922

/-- `∑[ceil((n+1)/8)%2]` -/
def P6696015363395152026.Spec : Prop :=
  ∀ n, P6696015363395152026.a n = A108922 n

end A108922

/-! ## A108922.P12370421790232354349

`n+1-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8`
-/

namespace A108922.P12370421790232354349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7, 8] fun n a =>
  (n + 1 : ℤ) - a (n - 8)

end

end A108922.P12370421790232354349

namespace A108922

/-- `n+1-a(n-8)` -/
def P12370421790232354349.Spec : Prop :=
  ∀ n, P12370421790232354349.a n = A108922 n

end A108922

/-! ## A108922.P4515548477456834604

`∑[∑[A014025(n)]]`
-/

namespace A108922.P4515548477456834604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P4515548477456834604

namespace A108922

/-- `∑[∑[A014025(n)]]` -/
def P4515548477456834604.Spec : Prop :=
  ∀ n, P4515548477456834604.a n = A108922 n

end A108922

/-! ## A108922.P13318635562938644815

`∑[A320006(4*n)]`
-/

namespace A108922.P13318635562938644815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P13318635562938644815

namespace A108922

/-- `∑[A320006(4*n)]` -/
def P13318635562938644815.Spec : Prop :=
  ∀ n, P13318635562938644815.a n = A108922 n

end A108922

/-! ## A108922.P7118618382965766507

`∑[2-gcd(2, A055798(n))]`
-/

namespace A108922.P7118618382965766507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A055798 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P7118618382965766507

namespace A108922

/-- `∑[2-gcd(2, A055798(n))]` -/
def P7118618382965766507.Spec : Prop :=
  ∀ n, P7118618382965766507.a n = A108922 n

end A108922

/-! ## A108922.P18329588897952186270

`∑[C(3, A053388(n+1))]`
-/

namespace A108922.P18329588897952186270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A053388 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P18329588897952186270

namespace A108922

/-- `∑[C(3, A053388(n+1))]` -/
def P18329588897952186270.Spec : Prop :=
  ∀ n, (P18329588897952186270.a n : ℤ) = A108922 n

end A108922

/-! ## A108922.P3682472199367074664

`∑[A133872(A002265(n))]`
-/

namespace A108922.P3682472199367074664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108922.P3682472199367074664

namespace A108922

/-- `∑[A133872(A002265(n))]` -/
def P3682472199367074664.Spec : Prop :=
  ∀ n, P3682472199367074664.a n = A108922 n

end A108922

/-!
# A108923: Expansion of 1/((x^8+1)*(1-x)^3).

The programs for A108923, the canonical program `A108923.P11909225569012086862` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108923 has offset 0).

The definition of A108923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3+x^8-3x^9+3x^10-x^11))` (program `A108923.P11909225569012086862`, by `A108923.P11909225569012086862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108923.P11909225569012086862

`ogf(1/(1-3x+3x^2-x^3+x^8-3x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108923

/-- `ogf(1/(1-3x+3x^2-x^3+x^8-3x^9+3x^10-x^11))` -/
def P11909225569012086862.Spec : Prop :=
  ∀ n, P11909225569012086862.a n = A108923 n

theorem P11909225569012086862.correct : P11909225569012086862.Spec := by
  intro n
  simp only [A108923]

end A108923

/-! ## A108923.P1564183049821104366

`∑[∑[C(2, and(8, n))]]`
-/

namespace A108923.P1564183049821104366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 8 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P1564183049821104366

namespace A108923

/-- `∑[∑[C(2, and(8, n))]]` -/
def P1564183049821104366.Spec : Prop :=
  ∀ n, (P1564183049821104366.a n : ℤ) = A108923 n

end A108923

/-! ## A108923.P16471927841252185420

`∑[∑[char[and(n, -9)]]]`
-/

namespace A108923.P16471927841252185420
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-9)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P16471927841252185420

namespace A108923

/-- `∑[∑[char[and(n, -9)]]]` -/
def P16471927841252185420.Spec : Prop :=
  ∀ n, (P16471927841252185420.a n : ℤ) = A108923 n

end A108923

/-! ## A108923.P16384712685298361191

`∑[∑[and(8, n)!%2]]`
-/

namespace A108923.P16384712685298361191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 8 n) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P16384712685298361191

namespace A108923

/-- `∑[∑[and(8, n)!%2]]` -/
def P16384712685298361191.Spec : Prop :=
  ∀ n, (P16384712685298361191.a n : ℤ) = A108923 n

end A108923

/-! ## A108923.P9267328490662627879

`∑[∑[and(1, and(8, n)!)]]`
-/

namespace A108923.P9267328490662627879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (Nat.land 8 n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P9267328490662627879

namespace A108923

/-- `∑[∑[and(1, and(8, n)!)]]` -/
def P9267328490662627879.Spec : Prop :=
  ∀ n, (P9267328490662627879.a n : ℤ) = A108923 n

end A108923

/-! ## A108923.P10886985124036121582

`∑[∑[1-and(8, n)/8]]`
-/

namespace A108923.P10886985124036121582
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 8 n : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P10886985124036121582

namespace A108923

/-- `∑[∑[1-and(8, n)/8]]` -/
def P10886985124036121582.Spec : Prop :=
  ∀ n, P10886985124036121582.a n = (A108923 n : ℚ)

end A108923

/-! ## A108923.P8391796152709937155

`∑[∑[and(8, n+8)/8]]`
-/

namespace A108923.P8391796152709937155
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 8 (n + 8) : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P8391796152709937155

namespace A108923

/-- `∑[∑[and(8, n+8)/8]]` -/
def P8391796152709937155.Spec : Prop :=
  ∀ n, P8391796152709937155.a n = (A108923 n : ℚ)

end A108923

/-! ## A108923.P1061096153999595200

`∑[∑[C(n+8, 8)%2]]`
-/

namespace A108923.P1061096153999595200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P1061096153999595200

namespace A108923

/-- `∑[∑[C(n+8, 8)%2]]` -/
def P1061096153999595200.Spec : Prop :=
  ∀ n, (P1061096153999595200.a n : ℤ) = A108923 n

end A108923

/-! ## A108923.P11813506454838423925

`∑[∑[(∑[char[8*(n+1)]]+1)%2]]`
-/

namespace A108923.P11813506454838423925
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P11813506454838423925

namespace A108923

/-- `∑[∑[(∑[char[8*(n+1)]]+1)%2]]` -/
def P11813506454838423925.Spec : Prop :=
  ∀ n, (P11813506454838423925.a n : ℤ) = A108923 n

end A108923

/-! ## A108923.P3381665399456315184

`∑[A108922(n)]`
-/

namespace A108923.P3381665399456315184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P3381665399456315184

namespace A108923

/-- `∑[A108922(n)]` -/
def P3381665399456315184.Spec : Prop :=
  ∀ n, P3381665399456315184.a n = A108923 n

end A108923

/-! ## A108923.P13717199603397024257

`∑[∑[∑[A014025(n)]]]`
-/

namespace A108923.P13717199603397024257
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P13717199603397024257

namespace A108923

/-- `∑[∑[∑[A014025(n)]]]` -/
def P13717199603397024257.Spec : Prop :=
  ∀ n, P13717199603397024257.a n = A108923 n

end A108923

/-! ## A108923.P5980024000661523016

`∑[∑[A320006(4*n)]]`
-/

namespace A108923.P5980024000661523016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P5980024000661523016

namespace A108923

/-- `∑[∑[A320006(4*n)]]` -/
def P5980024000661523016.Spec : Prop :=
  ∀ n, P5980024000661523016.a n = A108923 n

end A108923

/-! ## A108923.P11000318306607598449

`∑[∑[A254870(n+1)%2+1]]-∑[n+1]`
-/

namespace A108923.P11000318306607598449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254870 (n + 1)) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A108923.P11000318306607598449

namespace A108923

/-- `∑[∑[A254870(n+1)%2+1]]-∑[n+1]` -/
def P11000318306607598449.Spec : Prop :=
  ∀ n, P11000318306607598449.a n = A108923 n

end A108923

/-! ## A108923.P17852082008945285592

`∑[∑[A133872(A002265(n))]]`
-/

namespace A108923.P17852082008945285592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A002265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P17852082008945285592

namespace A108923

/-- `∑[∑[A133872(A002265(n))]]` -/
def P17852082008945285592.Spec : Prop :=
  ∀ n, P17852082008945285592.a n = A108923 n

end A108923

/-! ## A108923.P10686774374286882355

`∑[∑[A133872(A059906(n))]]`
-/

namespace A108923.P10686774374286882355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A059906 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P10686774374286882355

namespace A108923

/-- `∑[∑[A133872(A059906(n))]]` -/
def P10686774374286882355.Spec : Prop :=
  ∀ n, P10686774374286882355.a n = A108923 n

end A108923

/-! ## A108923.P6881121421998669503

`∑[∑[A133872(2*A132292(n+1))]]`
-/

namespace A108923.P6881121421998669503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * A132292 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P6881121421998669503

namespace A108923

/-- `∑[∑[A133872(2*A132292(n+1))]]` -/
def P6881121421998669503.Spec : Prop :=
  ∀ n, P6881121421998669503.a n = A108923 n

end A108923

/-! ## A108923.P4136261714196351700

`∑[∑[A000035(A110656(n+1))]]`
-/

namespace A108923.P4136261714196351700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110656 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P4136261714196351700

namespace A108923

/-- `∑[∑[A000035(A110656(n+1))]]` -/
def P4136261714196351700.Spec : Prop :=
  ∀ n, P4136261714196351700.a n = A108923 n

end A108923

/-! ## A108923.P8792466258858898977

`∑[∑[∑[A014041(2*n)]]]`
-/

namespace A108923.P8792466258858898977
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P8792466258858898977

namespace A108923

/-- `∑[∑[∑[A014041(2*n)]]]` -/
def P8792466258858898977.Spec : Prop :=
  ∀ n, P8792466258858898977.a n = A108923 n

end A108923

/-! ## A108923.P16262045321322298142

`∑[∑[A165211(A059905(2*n+1))]]`
-/

namespace A108923.P16262045321322298142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A059905 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P16262045321322298142

namespace A108923

/-- `∑[∑[A165211(A059905(2*n+1))]]` -/
def P16262045321322298142.Spec : Prop :=
  ∀ n, P16262045321322298142.a n = A108923 n

end A108923

/-! ## A108923.P9535144748136004841

`∑[∑[A165211(A064706(2*n+1))]]`
-/

namespace A108923.P9535144748136004841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A064706 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108923.P9535144748136004841

namespace A108923

/-- `∑[∑[A165211(A064706(2*n+1))]]` -/
def P9535144748136004841.Spec : Prop :=
  ∀ n, P9535144748136004841.a n = A108923 n

end A108923

/-!
# A108924: a(n) = J(n)^2 + J(n+1)^2, with J(n) the Jacobsthal number A001045(n).

The programs for A108924, the canonical program `A108924.P14512463077918171331` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108924 has offset 0).

The definition of A108924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108924.P14512463077918171331

`5/9*4^n+2/9*(-2)^n+2/9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108924

/-- `5/9*4^n+2/9*(-2)^n+2/9` -/
def P14512463077918171331.Spec : Prop :=
  ∀ n, P14512463077918171331.a n = (A108924 n : ℚ)

end A108924

/-! ## A108924.P17341683506641630066

`∑[ogf((-1+x+2x^2)/(-1+2x+8x^2))]`
-/

namespace A108924.P17341683506641630066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108924.P17341683506641630066

namespace A108924

/-- `∑[ogf((-1+x+2x^2)/(-1+2x+8x^2))]` -/
def P17341683506641630066.Spec : Prop :=
  ∀ n, P17341683506641630066.a n = A108924 n

end A108924

/-! ## A108924.P10932836803048067231

`ogf((-1+x+2x^2)/(-1+3x+6x^2-8x^3))`
-/

namespace A108924.P10932836803048067231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -3, -6, 8] n

end

end A108924.P10932836803048067231

namespace A108924

/-- `ogf((-1+x+2x^2)/(-1+3x+6x^2-8x^3))` -/
def P10932836803048067231.Spec : Prop :=
  ∀ n, P10932836803048067231.a n = A108924 n

end A108924

/-! ## A108924.P15816199006851643794

`2*(4*a(n-2)+a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A108924.P15816199006851643794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (4 * a (n - 2) + (a (n - 1) - 1))

end

end A108924.P15816199006851643794

namespace A108924

/-- `2*(4*a(n-2)+a(n-1)-1)` -/
def P15816199006851643794.Spec : Prop :=
  ∀ n, P15816199006851643794.a n = A108924 n

end A108924

/-! ## A108924.P16477000655615909328

`2*(4*a(n-2)-(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A108924.P16477000655615909328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (4 * a (n - 2) - (1 - a (n - 1)))

end

end A108924.P16477000655615909328

namespace A108924

/-- `2*(4*a(n-2)-(1-a(n-1)))` -/
def P16477000655615909328.Spec : Prop :=
  ∀ n, P16477000655615909328.a n = A108924 n

end A108924

/-! ## A108924.P4829052458761044097

`∑[ceil(2^(n-1))*A084214(n)]`
-/

namespace A108924.P4829052458761044097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A084214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108924.P4829052458761044097

namespace A108924

/-- `∑[ceil(2^(n-1))*A084214(n)]` -/
def P4829052458761044097.Spec : Prop :=
  ∀ n, P4829052458761044097.a n = A108924 n

end A108924

/-! ## A108924.P8746521303077037540

`(A000302(n)+A078008(n)²)/2`
-/

namespace A108924.P8746521303077037540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n + A078008 n ^ 2 : ℚ) / 2

end

end A108924.P8746521303077037540

namespace A108924

/-- `(A000302(n)+A078008(n)²)/2` -/
def P8746521303077037540.Spec : Prop :=
  ∀ n, P8746521303077037540.a n = (A108924 n : ℚ)

end A108924

/-!
# A108925: Nearest integer to the n-th root of e leading to a generalized closed form for Zeta(s).

The programs for A108925, there is no canonical definition to state claims against.
-/

/-! ## A108925.P12669412372557152860

`A002379(A187829(n+1))-A000009(A004526(n))`
-/

namespace A108925.P12669412372557152860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A187829 (n + 1)).toNat - A000009 (A004526 n).toNat

end

end A108925.P12669412372557152860

/-! ## A108925.P5425337314127624632

`A002024(A079118(n))-1`
-/

namespace A108925.P5425337314127624632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A079118 n).toNat - 1

end

end A108925.P5425337314127624632

/-! ## A108925.P4844754071446833237

`A003056(A079118(n)-1)`
-/

namespace A108925.P4844754071446833237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A079118 n - 1).toNat

end

end A108925.P4844754071446833237

/-! ## A108925.P8674808172050174685

`A277194(A042942(n+3)-4)`
-/

namespace A108925.P8674808172050174685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A042942 (n + 3) - 4).toNat

end

end A108925.P8674808172050174685

/-! ## A108925.P1695688961909019436

`A003056(xor(2, A079118(n)+1))`
-/

namespace A108925.P1695688961909019436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor 2 (A079118 n + 1)).toNat

end

end A108925.P1695688961909019436

/-!
# A108926: Initial members of abundant quintuplets, i.e., values of k such that (k, k+2, k+4, k+6, k+8) are all abundant numbers.

The programs for A108926, the canonical program `A108926.P13113658268164556802` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108926 has offset 1).

The definition of A108926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108926.P13113658268164556802

`∩[A231089(n+1)-2, A231089(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A108926

/-- `∩[A231089(n+1)-2, A231089(n+1)]` -/
def P13113658268164556802.Spec : Prop :=
  ∀ n, (P13113658268164556802.a n : ℤ) = A108926 (n + 1)

theorem P13113658268164556802.correct : P13113658268164556802.Spec := by
  intro n
  simp only [A108926, Nat.add_sub_cancel]

end A108926

/-! ## A108926.P4615894197397029592

`∩[A228962(n+1), A231089(n+1)]`
-/

namespace A108926.P4615894197397029592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108926.P4615894197397029592

namespace A108926

/-- `∩[A228962(n+1), A231089(n+1)]` -/
def P4615894197397029592.Spec : Prop :=
  ∀ n, (P4615894197397029592.a n : ℤ) = A108926 (n + 1)

end A108926

/-! ## A108926.P3137771570696900518

`∑{e}[A231588(n+1), A231628(n+1)+#]`
-/

namespace A108926.P3137771570696900518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A231628 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A108926.P3137771570696900518

namespace A108926

/-- `∑{e}[A231588(n+1), A231628(n+1)+#]` -/
def P3137771570696900518.Spec : Prop :=
  ∀ n, P3137771570696900518.a n = A108926 (n + 1)

end A108926

/-! ## A108926.P1734217543502753195

`A231628(n+1)+A000688(A019565(n))`
-/

namespace A108926.P1734217543502753195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231628 (n + 1) + A000688 (A019565 n).toNat

end

end A108926.P1734217543502753195

namespace A108926

/-- `A231628(n+1)+A000688(A019565(n))` -/
def P1734217543502753195.Spec : Prop :=
  ∀ n, P1734217543502753195.a n = A108926 (n + 1)

end A108926

/-! ## A108926.P14324253469847527785

`A231628(n+1)+A000688(A118751(n))`
-/

namespace A108926.P14324253469847527785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231628 (n + 1) + A000688 (A118751 n).toNat

end

end A108926.P14324253469847527785

namespace A108926

/-- `A231628(n+1)+A000688(A118751(n))` -/
def P14324253469847527785.Spec : Prop :=
  ∀ n, P14324253469847527785.a n = A108926 (n + 1)

end A108926

/-! ## A108926.P14839171832488848440

`A231628(n+1)+A079979(A195321(n))`
-/

namespace A108926.P14839171832488848440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231628 (n + 1) + A079979 (A195321 n).toNat

end

end A108926.P14839171832488848440

namespace A108926

/-- `A231628(n+1)+A079979(A195321(n))` -/
def P14839171832488848440.Spec : Prop :=
  ∀ n, P14839171832488848440.a n = A108926 (n + 1)

end A108926

/-! ## A108926.P5561652364121801256

`A231628(n+1)+A001222(A142349(n+1))`
-/

namespace A108926.P5561652364121801256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231628 (n + 1) + A001222 (A142349 (n + 1)).toNat

end

end A108926.P5561652364121801256

namespace A108926

/-- `A231628(n+1)+A001222(A142349(n+1))` -/
def P5561652364121801256.Spec : Prop :=
  ∀ n, P5561652364121801256.a n = A108926 (n + 1)

end A108926

/-!
# A108928: a(n) = 8*n^2 - 3.

The programs for A108928, the canonical program `A108928.P15662389116913581176` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108928 has offset 1).

The definition of A108928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+1)²-3` (program `A108928.P15662389116913581176`, by `A108928.P15662389116913581176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108928.P15662389116913581176

`8*(n+1)²-3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108928

/-- `8*(n+1)²-3` -/
def P15662389116913581176.Spec : Prop :=
  ∀ n, P15662389116913581176.a n = A108928 (n + 1)

theorem P15662389116913581176.correct : P15662389116913581176.Spec := by
  intro n
  simp only [A108928, Nat.add_sub_cancel]

end A108928

/-! ## A108928.P1774644787803781573

`∑[a(n-1)+16]` with `a(0)=5, a(1)=24`
-/

namespace A108928.P1774644787803781573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 24] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108928.P1774644787803781573

namespace A108928

/-- `∑[a(n-1)+16]` -/
def P1774644787803781573.Spec : Prop :=
  ∀ n, (P1774644787803781573.a n : ℤ) = A108928 (n + 1)

end A108928

/-! ## A108928.P16010362422895965171

`or(5, 8*n*(n+2))`
-/

namespace A108928.P16010362422895965171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (8 * (n * (n + 2)))

end

end A108928.P16010362422895965171

namespace A108928

/-- `or(5, 8*n*(n+2))` -/
def P16010362422895965171.Spec : Prop :=
  ∀ n, (P16010362422895965171.a n : ℤ) = A108928 (n + 1)

end A108928

/-! ## A108928.P6556102073734412632

`xor(5, 8*n*(n+2))`
-/

namespace A108928.P6556102073734412632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (8 * (n * (n + 2)))

end

end A108928.P6556102073734412632

namespace A108928

/-- `xor(5, 8*n*(n+2))` -/
def P6556102073734412632.Spec : Prop :=
  ∀ n, (P6556102073734412632.a n : ℤ) = A108928 (n + 1)

end A108928

/-! ## A108928.P11426953194964842648

`record[8*(1-n)²-3]`
-/

namespace A108928.P11426953194964842648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (1 - (n : ℤ)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108928.P11426953194964842648

namespace A108928

/-- `record[8*(1-n)²-3]` -/
def P11426953194964842648.Spec : Prop :=
  ∀ n, P11426953194964842648.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P5157404713983300799

`abs(a(n-1)+8*(2*n+1))` with `a(0)=5`
-/

namespace A108928.P5157404713983300799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A108928.P5157404713983300799

namespace A108928

/-- `abs(a(n-1)+8*(2*n+1))` -/
def P5157404713983300799.Spec : Prop :=
  ∀ n, (P5157404713983300799.a n : ℤ) = A108928 (n + 1)

theorem P5157404713983300799.correct : P5157404713983300799.Spec := by
  intro n
  induction n with
  | zero => simp [A108928, A108928.P5157404713983300799.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A108928, Nat.add_sub_cancel, A108928.P5157404713983300799.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A108928

/-! ## A108928.P16145152201206193138

`floor(a(n-1)+8*(2*n+1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A108928.P16145152201206193138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A108928.P16145152201206193138

namespace A108928

/-- `floor(a(n-1)+8*(2*n+1))` -/
def P16145152201206193138.Spec : Prop :=
  ∀ n, (P16145152201206193138.a n : ℤ) = A108928 (n + 1)

theorem P16145152201206193138.correct : P16145152201206193138.Spec := by
  intro n
  induction n with
  | zero => simp [A108928, A108928.P16145152201206193138.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A108928, Nat.add_sub_cancel, A108928.P16145152201206193138.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A108928

/-! ## A108928.P13410403401897160388

`ceil(a(n-1)+8*(2*n+1))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A108928.P13410403401897160388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A108928.P13410403401897160388

namespace A108928

/-- `ceil(a(n-1)+8*(2*n+1))` -/
def P13410403401897160388.Spec : Prop :=
  ∀ n, (P13410403401897160388.a n : ℤ) = A108928 (n + 1)

theorem P13410403401897160388.correct : P13410403401897160388.Spec := by
  intro n
  induction n with
  | zero => simp [A108928, A108928.P13410403401897160388.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A108928, Nat.add_sub_cancel, A108928.P13410403401897160388.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A108928

/-! ## A108928.P14763857746862266268

`round(a(n-1)+8*(2*n+1))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A108928.P14763857746862266268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A108928.P14763857746862266268

namespace A108928

/-- `round(a(n-1)+8*(2*n+1))` -/
def P14763857746862266268.Spec : Prop :=
  ∀ n, (P14763857746862266268.a n : ℤ) = A108928 (n + 1)

theorem P14763857746862266268.correct : P14763857746862266268.Spec := by
  intro n
  induction n with
  | zero => simp [A108928, A108928.P14763857746862266268.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A108928, Nat.add_sub_cancel, A108928.P14763857746862266268.a, A108928.P15662389116913581176.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A108928

/-! ## A108928.P13656967785633148742

`(A141759(n)-5)/2`
-/

namespace A108928.P13656967785633148742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141759 n - 5 : ℚ) / 2

end

end A108928.P13656967785633148742

namespace A108928

/-- `(A141759(n)-5)/2` -/
def P13656967785633148742.Spec : Prop :=
  ∀ n, P13656967785633148742.a n = (A108928 (n + 1) : ℚ)

theorem P13656967785633148742.correct : P13656967785633148742.Spec := by
  intro n
  simp only [A108928, Nat.add_sub_cancel, A108928.P13656967785633148742.a, A108928.P15662389116913581176.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108928

/-! ## A108928.P16127116413167594978

`A258721(n)%A325958(n+1)`
-/

namespace A108928.P16127116413167594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258721 n) (A325958 (n + 1))

end

end A108928.P16127116413167594978

namespace A108928

/-- `A258721(n)%A325958(n+1)` -/
def P16127116413167594978.Spec : Prop :=
  ∀ n, P16127116413167594978.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P5261851445147656637

`A158598(n+1)%A108211(n+1)`
-/

namespace A108928.P5261851445147656637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158598 (n + 1)) (A108211 (n + 1))

end

end A108928.P5261851445147656637

namespace A108928

/-- `A158598(n+1)%A108211(n+1)` -/
def P5261851445147656637.Spec : Prop :=
  ∀ n, P5261851445147656637.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P203981436758506067

`A136017(n+1)%A158482(n+1)`
-/

namespace A108928.P203981436758506067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136017 (n + 1)) (A158482 (n + 1))

end

end A108928.P203981436758506067

namespace A108928

/-- `A136017(n+1)%A158482(n+1)` -/
def P203981436758506067.Spec : Prop :=
  ∀ n, P203981436758506067.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P11221949761526622209

`A158443(n+1)%A157914(n+1)`
-/

namespace A108928.P11221949761526622209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158443 (n + 1)) (A157914 (n + 1))

end

end A108928.P11221949761526622209

namespace A108928

/-- `A158443(n+1)%A157914(n+1)` -/
def P11221949761526622209.Spec : Prop :=
  ∀ n, P11221949761526622209.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P18036914463390245276

`A158628(n+1)%A157889(n+1)`
-/

namespace A108928.P18036914463390245276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158628 (n + 1)) (A157889 (n + 1))

end

end A108928.P18036914463390245276

namespace A108928

/-- `A158628(n+1)%A157889(n+1)` -/
def P18036914463390245276.Spec : Prop :=
  ∀ n, P18036914463390245276.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P8549563631173285066

`A173202(n+2)/(n+1)`
-/

namespace A108928.P8549563631173285066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173202 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A108928.P8549563631173285066

namespace A108928

/-- `A173202(n+2)/(n+1)` -/
def P8549563631173285066.Spec : Prop :=
  ∀ n, P8549563631173285066.a n = (A108928 (n + 1) : ℚ)

theorem P8549563631173285066.correct : P8549563631173285066.Spec := by
  intro n
  simp only [A108928, Nat.add_sub_cancel, A108928.P8549563631173285066.a, A108928.P15662389116913581176.a, A173202, A173202.P2385789338714039204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108928

/-! ## A108928.P14979827294006852870

`A268581(2*n)`
-/

namespace A108928.P14979827294006852870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 (2 * n)

end

end A108928.P14979827294006852870

namespace A108928

/-- `A268581(2*n)` -/
def P14979827294006852870.Spec : Prop :=
  ∀ n, P14979827294006852870.a n = A108928 (n + 1)

theorem P14979827294006852870.correct : P14979827294006852870.Spec := by
  intro n
  simp only [A108928, Nat.add_sub_cancel, A108928.P14979827294006852870.a, A108928.P15662389116913581176.a, A268581, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108928

/-! ## A108928.P11280511988547700570

`abs(2*A005563(2*n+1)-1)`
-/

namespace A108928.P11280511988547700570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A005563 (2 * n + 1) - 1|

end

end A108928.P11280511988547700570

namespace A108928

/-- `abs(2*A005563(2*n+1)-1)` -/
def P11280511988547700570.Spec : Prop :=
  ∀ n, P11280511988547700570.a n = A108928 (n + 1)

end A108928

/-! ## A108928.P3324484058998404960

`∑[A140811(2*n+1)]/(n+1)`
-/

namespace A108928.P3324484058998404960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A108928.P3324484058998404960

namespace A108928

/-- `∑[A140811(2*n+1)]/(n+1)` -/
def P3324484058998404960.Spec : Prop :=
  ∀ n, P3324484058998404960.a n = (A108928 (n + 1) : ℚ)

end A108928

/-! ## A108928.P5547038446286362186

`A179207(3*(n+1)+n)`
-/

namespace A108928.P5547038446286362186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179207 (3 * (n + 1) + n)

end

end A108928.P5547038446286362186

namespace A108928

/-- `A179207(3*(n+1)+n)` -/
def P5547038446286362186.Spec : Prop :=
  ∀ n, P5547038446286362186.a n = A108928 (n + 1)

end A108928

/-!
# A108929: Expansion of (1-x^4-2*x^3)/((x-1)*(x^2+x+1)*(x^2+4*x-1)).

The programs for A108929, the canonical program `A108929.P10228048033383548152` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108929 has offset 0).

The definition of A108929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^3-x^4)/(1-4x-x^2-x^3+4x^4+x^5))` (program `A108929.P10228048033383548152`, by `A108929.P10228048033383548152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108929.P10228048033383548152

`ogf((1-2x^3-x^4)/(1-4x-x^2-x^3+4x^4+x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108929

/-- `ogf((1-2x^3-x^4)/(1-4x-x^2-x^3+4x^4+x^5))` -/
def P10228048033383548152.Spec : Prop :=
  ∀ n, P10228048033383548152.a n = A108929 n

theorem P10228048033383548152.correct : P10228048033383548152.Spec := by
  intro n
  simp only [A108929]

end A108929

/-! ## A108929.P6340691074441343918

`4*a(n-1)+a(n-2)-a(n-1)%2` with `a(0)=1, a(1)=4`
-/

namespace A108929.P6340691074441343918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) + (a (n - 2) - Int.tmod (a (n - 1)) 2)

end

end A108929.P6340691074441343918

namespace A108929

/-- `4*a(n-1)+a(n-2)-a(n-1)%2` -/
def P6340691074441343918.Spec : Prop :=
  ∀ n, P6340691074441343918.a n = A108929 n

end A108929

/-! ## A108929.P5108967517995155837

`4*a(n-1)+a(n-2)-and(1, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A108929.P5108967517995155837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) + (a (n - 2) - Int.land 1 (a (n - 1)))

end

end A108929.P5108967517995155837

namespace A108929

/-- `4*a(n-1)+a(n-2)-and(1, a(n-1))` -/
def P5108967517995155837.Spec : Prop :=
  ∀ n, P5108967517995155837.a n = A108929 n

end A108929

/-! ## A108929.P12489551244683491626

`4*a(n-1)-(and(1, a(n-1))-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A108929.P12489551244683491626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - (Int.land 1 (a (n - 1)) - a (n - 2))

end

end A108929.P12489551244683491626

namespace A108929

/-- `4*a(n-1)-(and(1, a(n-1))-a(n-2))` -/
def P12489551244683491626.Spec : Prop :=
  ∀ n, P12489551244683491626.a n = A108929 n

end A108929

/-!
# A108930: A floretion-generated sequence calculated using the rules given for A108618 with initial seed x = + .25'i + .25'k + .25i' - .5j' + .75k' - .25'ij' - .25'ji' - .25'jk' + .25'kj' - .5e; version: basek.

The programs for A108930, there is no canonical definition to state claims against.
-/

/-! ## A108930.P16270941699576141072

`A077267(A324660(n+4)+A187812(2*(n+3)))`
-/

namespace A108930.P16270941699576141072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A324660 (n + 4) + A187812 (2 * (n + 3))).toNat

end

end A108930.P16270941699576141072

/-! ## A108930.P8082103511901338682

`A356679(A262380(n)-n)`
-/

namespace A108930.P8082103511901338682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356679 (A262380 n - (n : ℤ)).toNat

end

end A108930.P8082103511901338682

/-! ## A108930.P1508627019967640874

`A104608(A135530(n))-ceil(sin(n)²)`
-/

namespace A108930.P1508627019967640874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104608 (A135530 n).toNat - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A108930.P1508627019967640874

/-! ## A108930.P15289402890686185951

`A067017(A289360(2*(n+2))-3)`
-/

namespace A108930.P15289402890686185951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067017 (A289360 (2 * (n + 2)) - 3).toNat

end

end A108930.P15289402890686185951

/-! ## A108930.P7801829834065896020

`A241833(xor(A156766(n), A157726(n)))`
-/

namespace A108930.P7801829834065896020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (Int.xor (A156766 n) (A157726 n)).toNat

end

end A108930.P7801829834065896020

/-!
# A108931: a(2n) = -A106328(n), a(2n+1) = A054488(n).

The programs for A108931, the canonical program `A108931.P7201250980001433359` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108931 has offset 0).

The definition of A108931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108931.P7201250980001433359

`6*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=-3, a(3)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108931

/-- `6*a(n-2)-a(n-4)` -/
def P7201250980001433359.Spec : Prop :=
  ∀ n, P7201250980001433359.a n = A108931 n

theorem P7201250980001433359.correct : P7201250980001433359.Spec := by
  intro n
  simp only [A108931]

end A108931

/-! ## A108931.P2663246229419999536

`Δ[A204512(n+2)*A209615(2*n+1)]`
-/

namespace A108931.P2663246229419999536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 2) * A209615 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108931.P2663246229419999536

namespace A108931

/-- `Δ[A204512(n+2)*A209615(2*n+1)]` -/
def P2663246229419999536.Spec : Prop :=
  ∀ n, P2663246229419999536.a n = A108931 n

end A108931

/-! ## A108931.P12060005315577035396

`Δ[A041011(A004442(n))-A104683(n)]`
-/

namespace A108931.P12060005315577035396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 (A004442 n).toNat - A104683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108931.P12060005315577035396

namespace A108931

/-- `Δ[A041011(A004442(n))-A104683(n)]` -/
def P12060005315577035396.Spec : Prop :=
  ∀ n, P12060005315577035396.a n = A108931 n

end A108931

/-! ## A108931.P18023934716897523216

`A006452(n+1)-A001333(A004442(n))`
-/

namespace A108931.P18023934716897523216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) - A001333 (A004442 n).toNat

end

end A108931.P18023934716897523216

namespace A108931

/-- `A006452(n+1)-A001333(A004442(n))` -/
def P18023934716897523216.Spec : Prop :=
  ∀ n, P18023934716897523216.a n = A108931 n

end A108931

/-! ## A108931.P4052574769022777674

`A077241(n+1)-(A048655(n)+A000129(n+1))`
-/

namespace A108931.P4052574769022777674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 (n + 1) - (A048655 n + A000129 (n + 1))

end

end A108931.P4052574769022777674

namespace A108931

/-- `A077241(n+1)-(A048655(n)+A000129(n+1))` -/
def P4052574769022777674.Spec : Prop :=
  ∀ n, P4052574769022777674.a n = A108931 n

end A108931

/-!
# A108934: Triangle obtained by considering certain successive approximations to the Bell numbers.

The programs for A108934, there is no canonical definition to state claims against.
-/

/-! ## A108934.P5558218723333587221

`A320955(∑[2*n]%comp[∑[n]])`
-/

namespace A108934.P5558218723333587221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108934.P5558218723333587221

/-! ## A108934.P13339741574706763178

`A320955(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108934.P13339741574706763178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108934.P13339741574706763178

/-! ## A108934.P13622225164328887216

`and(-1, A320955(A061579(n)))`
-/

namespace A108934.P13622225164328887216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A320955 (A061579 n).toNat)

end

end A108934.P13622225164328887216

/-! ## A108934.P989683031136038956

`A320955(A114327(n)+n)%∑[n+4]`
-/

namespace A108934.P989683031136038956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320955 (A114327 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A108934.P989683031136038956

/-! ## A108934.P10961428653815642940

`A320955(A061579(n))%A157727(n)`
-/

namespace A108934.P10961428653815642940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320955 (A061579 n).toNat) (A157727 n)

end

end A108934.P10961428653815642940

/-! ## A108934.P3680945458958889632

`A059841(8*n)*A320955(A061579(n))`
-/

namespace A108934.P3680945458958889632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (8 * n) * A320955 (A061579 n).toNat

end

end A108934.P3680945458958889632

/-! ## A108934.P5650882226836339254

`A000041(C(2, n))*A320955(A061579(n))`
-/

namespace A108934.P5650882226836339254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A320955 (A061579 n).toNat

end

end A108934.P5650882226836339254

/-! ## A108934.P16946537710565896402

`A014963(∑[n+1])*A320955(A061579(n))`
-/

namespace A108934.P16946537710565896402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A320955 (A061579 n).toNat

end

end A108934.P16946537710565896402

/-!
# A108936: Numbers n such that 11*n + 911 is prime.

The programs for A108936, the canonical program `A108936.P10845759939433094965` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108936 has offset 1).

The definition of A108936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108936.P10845759939433094965

`A105773(n+12)-74`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A108936

/-- `A105773(n+12)-74` -/
def P10845759939433094965.Spec : Prop :=
  ∀ n, P10845759939433094965.a n = A108936 (n + 1)

theorem P10845759939433094965.correct : P10845759939433094965.Spec := by
  intro n
  simp only [A108936, Nat.add_sub_cancel]

end A108936

/-! ## A108936.P15146421439227478791

`eq[A348717(n+1), A348717(A090911(n+3))]`
-/

namespace A108936.P15146421439227478791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A090911 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108936.P15146421439227478791

namespace A108936

/-- `eq[A348717(n+1), A348717(A090911(n+3))]` -/
def P15146421439227478791.Spec : Prop :=
  ∀ n, (P15146421439227478791.a n : ℤ) = A108936 (n + 1)

end A108936

/-! ## A108936.P9121986462211684949

`lt[A162296(A162309(n+5)), A162289(n+1)]`
-/

namespace A108936.P9121986462211684949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A162309 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108936.P9121986462211684949

namespace A108936

/-- `lt[A162296(A162309(n+5)), A162289(n+1)]` -/
def P9121986462211684949.Spec : Prop :=
  ∀ n, (P9121986462211684949.a n : ℤ) = A108936 (n + 1)

end A108936

/-! ## A108936.P4913580705112196610

`record[A056239(A315396(n)²)]`
-/

namespace A108936.P4913580705112196610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A315396 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108936.P4913580705112196610

namespace A108936

/-- `record[A056239(A315396(n)²)]` -/
def P4913580705112196610.Spec : Prop :=
  ∀ n, P4913580705112196610.a n = A108936 (n + 1)

end A108936

/-! ## A108936.P16028808561565195738

`eq[A046523(n+1), A122861(A331262(n+1))]`
-/

namespace A108936.P16028808561565195738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 (A331262 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108936.P16028808561565195738

namespace A108936

/-- `eq[A046523(n+1), A122861(A331262(n+1))]` -/
def P16028808561565195738.Spec : Prop :=
  ∀ n, (P16028808561565195738.a n : ℤ) = A108936 (n + 1)

end A108936

/-!
# A108939: Triangle read by rows in which row n lists all primes p such that p-1|n.

The programs for A108939, there is no canonical definition to state claims against.
-/

/-! ## A108939.P6127253537724871816

`p?[A027750(n+1)+1]`
-/

namespace A108939.P6127253537724871816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P6127253537724871816

/-! ## A108939.P16267342247936078363

`p?[A263730(n+2)+2]`
-/

namespace A108939.P16267342247936078363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P16267342247936078363

/-! ## A108939.P3305399763721792310

`p?[A020725(A027750(n+1))]`
-/

namespace A108939.P3305399763721792310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P3305399763721792310

/-! ## A108939.P2529312163967003303

`p?[A378638(n+1)]`
-/

namespace A108939.P2529312163967003303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P2529312163967003303

/-! ## A108939.P17520663189545339170

`filter[A378638(n+1), A010051(#)]`
-/

namespace A108939.P17520663189545339170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108939.P17520663189545339170

/-! ## A108939.P11619649971274383299

`p?[A127093(n+1)+1]`
-/

namespace A108939.P11619649971274383299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P11619649971274383299

/-! ## A108939.P11047912268498056456

`p?[A139693(A127093(n+1))]`
-/

namespace A108939.P11047912268498056456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (A127093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P11047912268498056456

/-! ## A108939.P4267278551872068151

`p?[A127013(n+1)+1]`
-/

namespace A108939.P4267278551872068151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108939.P4267278551872068151

/-!
# A108943: Square root of A108945(n).

The programs for A108943, there is no canonical definition to state claims against.
-/

/-! ## A108943.P8248866440993845338

`A063655(A040040(n+1))`
-/

namespace A108943.P8248866440993845338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A040040 (n + 1)).toNat

end

end A108943.P8248866440993845338

/-! ## A108943.P11870717181568507384

`A306284(A054735(n+1))`
-/

namespace A108943.P11870717181568507384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306284 (A054735 (n + 1)).toNat

end

end A108943.P11870717181568507384

/-! ## A108943.P3225484020015575364

`A063655(A168497(n+2))`
-/

namespace A108943.P3225484020015575364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A168497 (n + 2)).toNat

end

end A108943.P3225484020015575364

/-! ## A108943.P3614029949248346522

`A063655(A243811(n+1)+2)`
-/

namespace A108943.P3614029949248346522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A243811 (n + 1) + 2).toNat

end

end A108943.P3614029949248346522

/-! ## A108943.P15703171090512515126

`A306284(2*A014574(n+1))`
-/

namespace A108943.P15703171090512515126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306284 (2 * A014574 (n + 1)).toNat

end

end A108943.P15703171090512515126

/-! ## A108943.P9544567557305629456

`A063655(A014574(n+1)/2)`
-/

namespace A108943.P9544567557305629456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A108943.P9544567557305629456

/-! ## A108943.P5940037626541551743

`A063655(A054735(n+1)/4)`
-/

namespace A108943.P5940037626541551743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 4)).toNat

end

end A108943.P5940037626541551743

/-! ## A108943.P10652406074505940799

`A063655((A001359(n+1)+1)/2)`
-/

namespace A108943.P10652406074505940799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (SequenceMachineLib.roundAway ((A001359 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A108943.P10652406074505940799

/-! ## A108943.P2040075566238622908

`A063655(A000463(A001359(n+1)))`
-/

namespace A108943.P2040075566238622908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A000463 (A001359 (n + 1)).toNat).toNat

end

end A108943.P2040075566238622908

/-!
# A108944: Minimal square k^2 such that sum of the n-th twin prime pair plus k^2 is a square.

The programs for A108944, there is no canonical definition to state claims against.
-/

/-! ## A108944.P2204833709936885678

`(A033677(A040040(n+1))-A040040(n+1)/A033677(A040040(n+1)))²`
-/

namespace A108944.P2204833709936885678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A033677 (A040040 (n + 1)).toNat : ℚ) - (A040040 (n + 1) : ℚ) / (A033677 (A040040 (n + 1)).toNat : ℚ)) ^ 2

end

end A108944.P2204833709936885678

/-! ## A108944.P15352487788543042450

`A108945(n+1)-A001359(n+1)-A006512(n+1)`
-/

namespace A108944.P15352487788543042450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108945 (n + 1) - A001359 (n + 1) - A006512 (n + 1)

end

end A108944.P15352487788543042450

/-! ## A108944.P13168947255110791720

`A056737(A040040(n+1))²`
-/

namespace A108944.P13168947255110791720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A040040 (n + 1)).toNat ^ 2

end

end A108944.P13168947255110791720

/-! ## A108944.P5699348084935458084

`A056737(A168497(n+2))²`
-/

namespace A108944.P5699348084935458084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A168497 (n + 2)).toNat ^ 2

end

end A108944.P5699348084935458084

/-! ## A108944.P7122473979132923049

`A056737(A014574(n+1)/2)²`
-/

namespace A108944.P7122473979132923049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat ^ 2

end

end A108944.P7122473979132923049

/-! ## A108944.P17653811183874160592

`A056737(ceil(A001359(n+1)/2))²`
-/

namespace A108944.P17653811183874160592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 ⌈(A001359 (n + 1) : ℚ) / 2⌉.toNat ^ 2

end

end A108944.P17653811183874160592

/-! ## A108944.P4040094314696708560

`A056737(A040040(n+1))^A020639(2*(n+1))`
-/

namespace A108944.P4040094314696708560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (A040040 (n + 1)).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A108944.P4040094314696708560

/-! ## A108944.P7865370334139304528

`A056737(A168497(n+2))^A020639(4*(n+5))`
-/

namespace A108944.P7865370334139304528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (A168497 (n + 2)).toNat : ℚ) ^ (A020639 (4 * (n + 5)) : ℤ)

end

end A108944.P7865370334139304528

/-! ## A108944.P6971892665254232055

`A056737(A014574(n+1)/2)^A001222(2*A000040(n+1))`
-/

namespace A108944.P6971892665254232055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A108944.P6971892665254232055

/-! ## A108944.P6788210090448531112

`A056737(A014574(n+1)/2)^A001222(3*A006530(n+1))`
-/

namespace A108944.P6788210090448531112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat : ℚ) ^ (A001222 (3 * A006530 (n + 1)).toNat : ℤ)

end

end A108944.P6788210090448531112

/-! ## A108944.P17602192941516599913

`A056737(A014574(n+1)/2)^A000040(A014963(4*n+2))`
-/

namespace A108944.P17602192941516599913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat : ℚ) ^ (A000040 (A014963 (4 * n + 2)).toNat : ℤ)

end

end A108944.P17602192941516599913

/-!
# A108945: Squares equal to the sum of the n-th twin prime pair and minimal square k^2.

The programs for A108945, there is no canonical definition to state claims against.
-/

/-! ## A108945.P4539475381910429718

`A001359(n+1)+A006512(n+1)+A108944(n+1)`
-/

namespace A108945.P4539475381910429718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A006512 (n + 1) + A108944 (n + 1)

end

end A108945.P4539475381910429718

/-! ## A108945.P5144005119747600327

`A108943(n+1)²`
-/

namespace A108945.P5144005119747600327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108943 (n + 1) ^ 2

end

end A108945.P5144005119747600327

/-! ## A108945.P10522378767030499103

`A108943(Δ[n²]-n)^2`
-/

namespace A108945.P10522378767030499103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108943 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A108945.P10522378767030499103

/-! ## A108945.P15920854432364420697

`A063655(A040040(n+1))²`
-/

namespace A108945.P15920854432364420697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A040040 (n + 1)).toNat ^ 2

end

end A108945.P15920854432364420697

/-! ## A108945.P548048315250714221

`A306284(A054735(n+1))²`
-/

namespace A108945.P548048315250714221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306284 (A054735 (n + 1)).toNat ^ 2

end

end A108945.P548048315250714221

/-!
# A108946: a(2n) = A001570(n), a(2n+1) = -A007654(n+1).

The programs for A108946, the canonical program `A108946.P7071863590462326529` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108946 has offset 0).

The definition of A108946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108946.P2058669698817599232

`∑[ogf((1+x+x^2)/(1+5x+5x^2+x^3))]`
-/

namespace A108946.P2058669698817599232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 5, 5, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108946.P2058669698817599232

namespace A108946

/-- `∑[ogf((1+x+x^2)/(1+5x+5x^2+x^3))]` -/
def P2058669698817599232.Spec : Prop :=
  ∀ n, P2058669698817599232.a n = A108946 n

end A108946

/-! ## A108946.P9174582173644222503

`ogf((1+x+x^2)/(1+4x-4x^3-x^4))`
-/

namespace A108946.P9174582173644222503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 4, 0, -4, -1] n

end

end A108946.P9174582173644222503

namespace A108946

/-- `ogf((1+x+x^2)/(1+4x-4x^3-x^4))` -/
def P9174582173644222503.Spec : Prop :=
  ∀ n, P9174582173644222503.a n = A108946 n

end A108946

/-! ## A108946.P16268893877618324275

`1-(floor((sqrt(3)+2)*a(n-1))+n%2)` with `a(0)=1`
-/

namespace A108946.P16268893877618324275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + ((n % 2 : ℕ) : ℤ))

end

end A108946.P16268893877618324275

namespace A108946

/-- `1-(floor((sqrt(3)+2)*a(n-1))+n%2)` -/
def P16268893877618324275.Spec : Prop :=
  ∀ n, P16268893877618324275.a n = A108946 n

end A108946

/-! ## A108946.P7071863590462326529

`n%2-A097948(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108946

/-- `n%2-A097948(n)` -/
def P7071863590462326529.Spec : Prop :=
  ∀ n, P7071863590462326529.a n = A108946 n

theorem P7071863590462326529.correct : P7071863590462326529.Spec := by
  intro n
  simp only [A108946]

end A108946

/-! ## A108946.P17298628022720526811

`∑[(-1)^n*A133161(n+1)]`
-/

namespace A108946.P17298628022720526811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A133161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108946.P17298628022720526811

namespace A108946

/-- `∑[(-1)^n*A133161(n+1)]` -/
def P17298628022720526811.Spec : Prop :=
  ∀ n, P17298628022720526811.a n = A108946 n

end A108946

/-! ## A108946.P7655438016422007886

`A000035(n)-A097948(n)`
-/

namespace A108946.P7655438016422007886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A097948 n

end

end A108946.P7655438016422007886

namespace A108946

/-- `A000035(n)-A097948(n)` -/
def P7655438016422007886.Spec : Prop :=
  ∀ n, P7655438016422007886.a n = A108946 n

end A108946

/-! ## A108946.P10351625469782857151

`log2(A000034(n))-A097948(n)`
-/

namespace A108946.P10351625469782857151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ) - (A097948 n : ℝ)

end

end A108946.P10351625469782857151

namespace A108946

/-- `log2(A000034(n))-A097948(n)` -/
def P10351625469782857151.Spec : Prop :=
  ∀ n, P10351625469782857151.a n = (A108946 n : ℝ)

end A108946

/-! ## A108946.P12705810317528737148

`Δ[A004526(n)]-A097948(n)`
-/

namespace A108946.P12705810317528737148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097948 n

end

end A108946.P12705810317528737148

namespace A108946

/-- `Δ[A004526(n)]-A097948(n)` -/
def P12705810317528737148.Spec : Prop :=
  ∀ n, P12705810317528737148.a n = A108946 n

end A108946

/-! ## A108946.P6903765838792943047

`char[A005408(n)]-A097948(n)`
-/

namespace A108946.P6903765838792943047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A097948 n

end

end A108946.P6903765838792943047

namespace A108946

/-- `char[A005408(n)]-A097948(n)` -/
def P6903765838792943047.Spec : Prop :=
  ∀ n, P6903765838792943047.a n = A108946 n

end A108946

/-! ## A108946.P8746991865090933147

`A168184(5*n)-A097948(n)`
-/

namespace A108946.P8746991865090933147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (5 * n) - A097948 n

end

end A108946.P8746991865090933147

namespace A108946

/-- `A168184(5*n)-A097948(n)` -/
def P8746991865090933147.Spec : Prop :=
  ∀ n, P8746991865090933147.a n = A108946 n

end A108946

/-! ## A108946.P18065415449749079650

`char[A000265(n+1)]-A097948(n)`
-/

namespace A108946.P18065415449749079650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A097948 n

end

end A108946.P18065415449749079650

namespace A108946

/-- `char[A000265(n+1)]-A097948(n)` -/
def P18065415449749079650.Spec : Prop :=
  ∀ n, P18065415449749079650.a n = A108946 n

end A108946

/-!
# A108947: Triangle: T(n,k) is the partition function G(n-k,k).

The programs for A108947, there is no canonical definition to state claims against.
-/

/-! ## A108947.P948883404899381247

`A004272(A108934(n)%A320635(n+1))`
-/

namespace A108947.P948883404899381247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (Int.tmod (A108934 n) (A320635 (n + 1))).toNat

end

end A108947.P948883404899381247

/-! ## A108947.P2480465084518816438

`A104484(A072233(n)*A135302(n))`
-/

namespace A108947.P2480465084518816438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A072233 n * A135302 n).toNat

end

end A108947.P2480465084518816438

/-! ## A108947.P18210873212035344352

`A053735(A108934(n)^A101566(n))`
-/

namespace A108947.P18210873212035344352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((A108934 n : ℚ) ^ (A101566 n : ℤ))).toNat

end

end A108947.P18210873212035344352

/-! ## A108947.P1814914358278903244

`or(A055641(A157272(n)), A108934(n))`
-/

namespace A108947.P1814914358278903244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A157272 n).toNat) (A108934 n)

end

end A108947.P1814914358278903244

/-! ## A108947.P2401230960524745689

`A151755(A289978(n))+A108934(n)`
-/

namespace A108947.P2401230960524745689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A289978 n).toNat + A108934 n

end

end A108947.P2401230960524745689

/-!
# A108948: Numbers n such that (n!/n#)^2 + 1 is prime, where n# = primorial numbers (A034386).

The programs for A108948, there is no canonical definition to state claims against.
-/

/-! ## A108948.P2111453227678641792

`∑[abs(A344685(A225476(n)))]`
-/

namespace A108948.P2111453227678641792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344685 (A225476 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108948.P2111453227678641792

/-! ## A108948.P8159634644092837376

`lt[A212598(A241826(n)), A000120(n)]`
-/

namespace A108948.P8159634644092837376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A241826 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108948.P8159634644092837376

/-! ## A108948.P11672438281838068567

`eq[A127322(A117804(n+1)), A249351(n+3)]`
-/

namespace A108948.P11672438281838068567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A117804 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108948.P11672438281838068567

/-!
# A108949: Number of partitions of n with more even parts than odd parts.

The programs for A108949, there is no canonical definition to state claims against.
-/

/-! ## A108949.P13498280161710091768

`A171966(n)-A045931(n)`
-/

namespace A108949.P13498280161710091768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171966 n - A045931 n

end

end A108949.P13498280161710091768

/-! ## A108949.P4530542825562495709

`A000041(n)-A130780(n)`
-/

namespace A108949.P4530542825562495709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A130780 n

end

end A108949.P4530542825562495709

/-! ## A108949.P9253993612899928699

`A171966(n)+A171967(n)-A000041(n)`
-/

namespace A108949.P9253993612899928699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171966 n + (A171967 n - A000041 n)

end

end A108949.P9253993612899928699

/-! ## A108949.P14117535898726120147

`A045931(n)+A171967(n)-A130780(n)`
-/

namespace A108949.P14117535898726120147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n + (A171967 n - A130780 n)

end

end A108949.P14117535898726120147

/-! ## A108949.P10168232891179368023

`A119620(2*n)-A130780(n)`
-/

namespace A108949.P10168232891179368023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A130780 n

end

end A108949.P10168232891179368023

/-! ## A108949.P9384186258752030139

`(A171967(n)-A338860(n))/2`
-/

namespace A108949.P9384186258752030139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171967 n - A338860 n : ℚ) / 2

end

end A108949.P9384186258752030139

/-! ## A108949.P13239975585656697193

`A000041(n)-(A338860(n)+A171966(n))`
-/

namespace A108949.P13239975585656697193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A338860 n + A171966 n)

end

end A108949.P13239975585656697193

/-! ## A108949.P16225224424036778795

`A130780(n)-(A338860(n)+A045931(n))`
-/

namespace A108949.P16225224424036778795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - (A338860 n + A045931 n)

end

end A108949.P16225224424036778795

/-!
# A108950: Number of partitions of n with more odd parts than even parts.

The programs for A108950, there is no canonical definition to state claims against.
-/

/-! ## A108950.P17952853144852441193

`A130780(n+1)-A045931(n+1)`
-/

namespace A108950.P17952853144852441193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 (n + 1) - A045931 (n + 1)

end

end A108950.P17952853144852441193

/-! ## A108950.P2422580007578990421

`A171967(n+1)-A108949(n+1)`
-/

namespace A108950.P2422580007578990421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171967 (n + 1) - A108949 (n + 1)

end

end A108950.P2422580007578990421

/-! ## A108950.P9541915705214975353

`A000041(n+1)-A171966(n+1)`
-/

namespace A108950.P9541915705214975353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A171966 (n + 1)

end

end A108950.P9541915705214975353

/-! ## A108950.P10995834519169999267

`A000070(n+1)-(A171966(n+1)+A000070(n))`
-/

namespace A108950.P10995834519169999267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A171966 (n + 1) + A000070 n)

end

end A108950.P10995834519169999267

/-! ## A108950.P12994811479982790729

`A000041(n+1)-(A108949(n+1)+A045931(n+1))`
-/

namespace A108950.P12994811479982790729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A108949 (n + 1) + A045931 (n + 1))

end

end A108950.P12994811479982790729

/-! ## A108950.P2166929199673257899

`A130780(n+1)+A171967(n+1)-A000041(n+1)`
-/

namespace A108950.P2166929199673257899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 (n + 1) + (A171967 (n + 1) - A000041 (n + 1))

end

end A108950.P2166929199673257899

/-! ## A108950.P11986853165040919507

`A045931(n+1)+A171967(n+1)-A171966(n+1)`
-/

namespace A108950.P11986853165040919507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 (n + 1) + (A171967 (n + 1) - A171966 (n + 1))

end

end A108950.P11986853165040919507

/-! ## A108950.P12105814679664051540

`A108949(n+1)+A130780(n+1)-A171966(n+1)`
-/

namespace A108950.P12105814679664051540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 (n + 1) + (A130780 (n + 1) - A171966 (n + 1))

end

end A108950.P12105814679664051540

/-! ## A108950.P7834746559417049756

`A338860(n+1)+A108949(n+1)`
-/

namespace A108950.P7834746559417049756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338860 (n + 1) + A108949 (n + 1)

end

end A108950.P7834746559417049756

/-! ## A108950.P12140714068682249630

`(A338860(n+1)+A171967(n+1))/2`
-/

namespace A108950.P12140714068682249630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338860 (n + 1) + A171967 (n + 1) : ℚ) / 2

end

end A108950.P12140714068682249630

/-! ## A108950.P16938622845327064498

`A000041(n+1)+A338860(n+1)-A130780(n+1)`
-/

namespace A108950.P16938622845327064498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A338860 (n + 1) - A130780 (n + 1))

end

end A108950.P16938622845327064498

/-! ## A108950.P10596675534880143248

`A171966(n+1)+A338860(n+1)-A045931(n+1)`
-/

namespace A108950.P10596675534880143248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171966 (n + 1) + (A338860 (n + 1) - A045931 (n + 1))

end

end A108950.P10596675534880143248

/-!
# A108951: Primorial inflation of n: Fully multiplicative with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A108951, the canonical program `A108951.P1294613322156543690` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108951 has offset 1).

The definition of A108951 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108951.P17571403545186257132

`(n+1)*A181811(n+1)`
-/

namespace A108951.P17571403545186257132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181811 (n + 1)

end

end A108951.P17571403545186257132

namespace A108951

/-- `(n+1)*A181811(n+1)` -/
def P17571403545186257132.Spec : Prop :=
  ∀ n, P17571403545186257132.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P1294613322156543690

`(n+1)*a(A064989(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A108951

/-- `(n+1)*a(A064989(n+1)-1)` -/
def P1294613322156543690.Spec : Prop :=
  ∀ n, (P1294613322156543690.a n : ℤ) = A108951 (n + 1)

theorem P1294613322156543690.correct : P1294613322156543690.Spec := by
  intro n
  simp only [A108951, Nat.add_sub_cancel]

end A108951

/-! ## A108951.P7381037782828180937

`A346092(n+1)+A346093(n+1)`
-/

namespace A108951.P7381037782828180937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346092 (n + 1) + A346093 (n + 1)

end

end A108951.P7381037782828180937

namespace A108951

/-- `A346092(n+1)+A346093(n+1)` -/
def P7381037782828180937.Spec : Prop :=
  ∀ n, P7381037782828180937.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P1527683547959086824

`A002110(A061395(n+1))*A331188(n+1)`
-/

namespace A108951.P1527683547959086824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A061395 (n + 1)).toNat * A331188 (n + 1)

end

end A108951.P1527683547959086824

namespace A108951

/-- `A002110(A061395(n+1))*A331188(n+1)` -/
def P1527683547959086824.Spec : Prop :=
  ∀ n, P1527683547959086824.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P2202311251417910471

`A346108(n+1)-A346109(n+1)`
-/

namespace A108951.P2202311251417910471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346108 (n + 1) - A346109 (n + 1)

end

end A108951.P2202311251417910471

namespace A108951

/-- `A346108(n+1)-A346109(n+1)` -/
def P2202311251417910471.Spec : Prop :=
  ∀ n, P2202311251417910471.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P11953160248181590282

`∑{d}[n+1, A347379(#)]`
-/

namespace A108951.P11953160248181590282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347379 d

end

end A108951.P11953160248181590282

namespace A108951

/-- `∑{d}[n+1, A347379(#)]` -/
def P11953160248181590282.Spec : Prop :=
  ∀ n, P11953160248181590282.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P3897991781760265328

`A373984(n+1)+A373158(n+1)`
-/

namespace A108951.P3897991781760265328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373984 (n + 1) + A373158 (n + 1)

end

end A108951.P3897991781760265328

namespace A108951

/-- `A373984(n+1)+A373158(n+1)` -/
def P3897991781760265328.Spec : Prop :=
  ∀ n, P3897991781760265328.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P4220720644481905588

`A354352(n+1)-A354351(n+1)`
-/

namespace A108951.P4220720644481905588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354352 (n + 1) - A354351 (n + 1)

end

end A108951.P4220720644481905588

namespace A108951

/-- `A354352(n+1)-A354351(n+1)` -/
def P4220720644481905588.Spec : Prop :=
  ∀ n, P4220720644481905588.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P11758766588213165475

`A373985(n+1)*A373987(n+1)`
-/

namespace A108951.P11758766588213165475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373985 (n + 1) * A373987 (n + 1)

end

end A108951.P11758766588213165475

namespace A108951

/-- `A373985(n+1)*A373987(n+1)` -/
def P11758766588213165475.Spec : Prop :=
  ∀ n, P11758766588213165475.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P728587673630823154

`A373984(n+1)+A373985(n+1)*A373986(n+1)`
-/

namespace A108951.P728587673630823154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373984 (n + 1) + A373985 (n + 1) * A373986 (n + 1)

end

end A108951.P728587673630823154

namespace A108951

/-- `A373984(n+1)+A373985(n+1)*A373986(n+1)` -/
def P728587673630823154.Spec : Prop :=
  ∀ n, P728587673630823154.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P6509068892820821708

`A324887(n+1)/A324886(n+1)`
-/

namespace A108951.P6509068892820821708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324887 (n + 1) : ℚ) / (A324886 (n + 1) : ℚ)

end

end A108951.P6509068892820821708

namespace A108951

/-- `A324887(n+1)/A324886(n+1)` -/
def P6509068892820821708.Spec : Prop :=
  ∀ n, P6509068892820821708.a n = (A108951 (n + 1) : ℚ)

end A108951

/-! ## A108951.P17938537806958412202

`A181822(A361808(n+1))`
-/

namespace A108951.P17938537806958412202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (A361808 (n + 1)).toNat

end

end A108951.P17938537806958412202

namespace A108951

/-- `A181822(A361808(n+1))` -/
def P17938537806958412202.Spec : Prop :=
  ∀ n, P17938537806958412202.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P2721868640787923063

`A331188(A129598(n+1))`
-/

namespace A108951.P2721868640787923063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A129598 (n + 1)).toNat

end

end A108951.P2721868640787923063

namespace A108951

/-- `A331188(A129598(n+1))` -/
def P2721868640787923063.Spec : Prop :=
  ∀ n, P2721868640787923063.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P10917781345322575881

`A331188(A253560(n+1))`
-/

namespace A108951.P10917781345322575881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A253560 (n + 1)).toNat

end

end A108951.P10917781345322575881

namespace A108951

/-- `A331188(A253560(n+1))` -/
def P10917781345322575881.Spec : Prop :=
  ∀ n, P10917781345322575881.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P3654715939886845999

`A331188(A256017(n+1))`
-/

namespace A108951.P3654715939886845999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A256017 (n + 1)).toNat

end

end A108951.P3654715939886845999

namespace A108951

/-- `A331188(A256017(n+1))` -/
def P3654715939886845999.Spec : Prop :=
  ∀ n, P3654715939886845999.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P16778072043138853525

`A331188(A138127(n+1))`
-/

namespace A108951.P16778072043138853525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A138127 (n + 1)).toNat

end

end A108951.P16778072043138853525

namespace A108951

/-- `A331188(A138127(n+1))` -/
def P16778072043138853525.Spec : Prop :=
  ∀ n, P16778072043138853525.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P6090009171070651209

`A331188((n+1)²)/A331188(n+1)`
-/

namespace A108951.P6090009171070651209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 ((n + 1) ^ 2) : ℚ) / (A331188 (n + 1) : ℚ)

end

end A108951.P6090009171070651209

namespace A108951

/-- `A331188((n+1)²)/A331188(n+1)` -/
def P6090009171070651209.Spec : Prop :=
  ∀ n, P6090009171070651209.a n = (A108951 (n + 1) : ℚ)

end A108951

/-! ## A108951.P5810392298287705447

`A331188(A053024(n+1))`
-/

namespace A108951.P5810392298287705447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A053024 (n + 1)).toNat

end

end A108951.P5810392298287705447

namespace A108951

/-- `A331188(A053024(n+1))` -/
def P5810392298287705447.Spec : Prop :=
  ∀ n, P5810392298287705447.a n = A108951 (n + 1)

end A108951

/-! ## A108951.P6679451855179394850

`A331188((n+1)*A151800(n))`
-/

namespace A108951.P6679451855179394850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 ((n + 1 : ℤ) * A151800 n).toNat

end

end A108951.P6679451855179394850

namespace A108951

/-- `A331188((n+1)*A151800(n))` -/
def P6679451855179394850.Spec : Prop :=
  ∀ n, P6679451855179394850.a n = A108951 (n + 1)

end A108951

/-!
# A108953: Convolution of 3^n*n! and n!.

The programs for A108953, there is no canonical definition to state claims against.
-/

/-! ## A108953.P16330114154340224752

`A327139(A161566(n))`
-/

namespace A108953.P16330114154340224752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (A161566 n).toNat

end

end A108953.P16330114154340224752

/-!
# A108954: a(n) = pi(2*n) - pi(n). Number of primes in the interval (n,2n].

The programs for A108954, the canonical program `A108954.P13763132661793771575` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108954 has offset 1).

The definition of A108954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(2*(n+1))-A000720(n+1)` (program `A108954.P13763132661793771575`, by `A108954.P13763132661793771575.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108954.P13763132661793771575

`A000720(2*(n+1))-A000720(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108954

/-- `A000720(2*(n+1))-A000720(n+1)` -/
def P13763132661793771575.Spec : Prop :=
  ∀ n, P13763132661793771575.a n = A108954 (n + 1)

theorem P13763132661793771575.correct : P13763132661793771575.Spec := by
  intro n
  simp only [A108954, Nat.add_sub_cancel]

end A108954

/-! ## A108954.P5617579406020009754

`A056171(2*(n+1))`
-/

namespace A108954.P5617579406020009754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

end

end A108954.P5617579406020009754

namespace A108954

/-- `A056171(2*(n+1))` -/
def P5617579406020009754.Spec : Prop :=
  ∀ n, P5617579406020009754.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P9291632496851182646

`1-A376759(n+1)+n`
-/

namespace A108954.P9291632496851182646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376759 (n + 1) + (n : ℤ)

end

end A108954.P9291632496851182646

namespace A108954

/-- `1-A376759(n+1)+n` -/
def P9291632496851182646.Spec : Prop :=
  ∀ n, P9291632496851182646.a n = A108954 (n + 1)

theorem P9291632496851182646.correct : P9291632496851182646.Spec := by
  intro n
  simp only [A108954, Nat.add_sub_cancel, A108954.P9291632496851182646.a, A108954.P13763132661793771575.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A376759, A376759.P6507737170924248319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108954

/-! ## A108954.P10826440565083455051

`floor(A060715(n+1)+acot(n))`
-/

namespace A108954.P10826440565083455051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060715 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A108954.P10826440565083455051

namespace A108954

/-- `floor(A060715(n+1)+acot(n))` -/
def P10826440565083455051.Spec : Prop :=
  ∀ n, P10826440565083455051.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P12356562689144553537

`A028310(A060715(n+1))`
-/

namespace A108954.P12356562689144553537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060715 (n + 1)).toNat

end

end A108954.P12356562689144553537

namespace A108954

/-- `A028310(A060715(n+1))` -/
def P12356562689144553537.Spec : Prop :=
  ∀ n, P12356562689144553537.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P36537258106477474

`A060715(A348776(n+1))`
-/

namespace A108954.P36537258106477474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A348776 (n + 1)).toNat

end

end A108954.P36537258106477474

namespace A108954

/-- `A060715(A348776(n+1))` -/
def P36537258106477474.Spec : Prop :=
  ∀ n, P36537258106477474.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P16443004771853169180

`A065033(2*A060715(n+1))`
-/

namespace A108954.P16443004771853169180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A060715 (n + 1)).toNat

end

end A108954.P16443004771853169180

namespace A108954

/-- `A065033(2*A060715(n+1))` -/
def P16443004771853169180.Spec : Prop :=
  ∀ n, P16443004771853169180.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P16511491979564273244

`A060715(n+1)+A000007(n)`
-/

namespace A108954.P16511491979564273244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) + A000007 n

end

end A108954.P16511491979564273244

namespace A108954

/-- `A060715(n+1)+A000007(n)` -/
def P16511491979564273244.Spec : Prop :=
  ∀ n, P16511491979564273244.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P10817422602103350025

`A060715(A057428(n)+2+n)`
-/

namespace A108954.P10817422602103350025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A057428 n + 2 + (n : ℤ)).toNat

end

end A108954.P10817422602103350025

namespace A108954

/-- `A060715(A057428(n)+2+n)` -/
def P10817422602103350025.Spec : Prop :=
  ∀ n, P10817422602103350025.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P2627623205564878100

`A028310(n-A307912(n+1))`
-/

namespace A108954.P2627623205564878100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A307912 (n + 1)).toNat

end

end A108954.P2627623205564878100

namespace A108954

/-- `A028310(n-A307912(n+1))` -/
def P2627623205564878100.Spec : Prop :=
  ∀ n, P2627623205564878100.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P9562049174159462766

`A060715(2-A057427(n)+n)`
-/

namespace A108954.P9562049174159462766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 - A057427 n + (n : ℤ)).toNat

end

end A108954.P9562049174159462766

namespace A108954

/-- `A060715(2-A057427(n)+n)` -/
def P9562049174159462766.Spec : Prop :=
  ∀ n, P9562049174159462766.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P5060275200582845401

`A060715(2-(A057427(n)-n))`
-/

namespace A108954.P5060275200582845401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 - (A057427 n - (n : ℤ))).toNat

end

end A108954.P5060275200582845401

namespace A108954

/-- `A060715(2-(A057427(n)-n))` -/
def P5060275200582845401.Spec : Prop :=
  ∀ n, P5060275200582845401.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P11400343334653790549

`A035250(n+1)-A010051(n+1)`
-/

namespace A108954.P11400343334653790549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) - A010051 (n + 1)

end

end A108954.P11400343334653790549

namespace A108954

/-- `A035250(n+1)-A010051(n+1)` -/
def P11400343334653790549.Spec : Prop :=
  ∀ n, P11400343334653790549.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P3598073255609037868

`A000720(n+1)-A060208(n+1)`
-/

namespace A108954.P3598073255609037868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A060208 (n + 1)

end

end A108954.P3598073255609037868

namespace A108954

/-- `A000720(n+1)-A060208(n+1)` -/
def P3598073255609037868.Spec : Prop :=
  ∀ n, P3598073255609037868.a n = A108954 (n + 1)

theorem P3598073255609037868.correct : P3598073255609037868.Spec := by
  intro n
  simp only [A108954, Nat.add_sub_cancel, A108954.P3598073255609037868.a, A108954.P13763132661793771575.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A060208, A060208.P7183975736576041079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108954

/-! ## A108954.P17732511418280065218

`A000010(n+1)-A077150(n+1)`
-/

namespace A108954.P17732511418280065218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A077150 (n + 1)

end

end A108954.P17732511418280065218

namespace A108954

/-- `A000010(n+1)-A077150(n+1)` -/
def P17732511418280065218.Spec : Prop :=
  ∀ n, P17732511418280065218.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P11942924070078632653

`A099802(n+1)-A000720(n+1)`
-/

namespace A108954.P11942924070078632653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A000720 (n + 1)

end

end A108954.P11942924070078632653

namespace A108954

/-- `A099802(n+1)-A000720(n+1)` -/
def P11942924070078632653.Spec : Prop :=
  ∀ n, P11942924070078632653.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P11117153277976073943

`A075699(n+1)-A101909(n+1)`
-/

namespace A108954.P11117153277976073943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075699 (n + 1) - A101909 (n + 1)

end

end A108954.P11117153277976073943

namespace A108954

/-- `A075699(n+1)-A101909(n+1)` -/
def P11117153277976073943.Spec : Prop :=
  ∀ n, P11117153277976073943.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P4363773901254433961

`A067434(n+1)-A193990(n+1)`
-/

namespace A108954.P4363773901254433961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A193990 (n + 1)

end

end A108954.P4363773901254433961

namespace A108954

/-- `A067434(n+1)-A193990(n+1)` -/
def P4363773901254433961.Spec : Prop :=
  ∀ n, P4363773901254433961.a n = A108954 (n + 1)

end A108954

/-! ## A108954.P1269217284105958133

`A062298(n+1)-A210469(n+1)`
-/

namespace A108954.P1269217284105958133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A210469 (n + 1)

end

end A108954.P1269217284105958133

namespace A108954

/-- `A062298(n+1)-A210469(n+1)` -/
def P1269217284105958133.Spec : Prop :=
  ∀ n, P1269217284105958133.a n = A108954 (n + 1)

theorem P1269217284105958133.correct : P1269217284105958133.Spec := by
  intro n
  simp only [A108954, Nat.add_sub_cancel, A108954.P1269217284105958133.a, A108954.P13763132661793771575.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A210469, A210469.P5188979352257746080.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108954

/-! ## A108954.P15986646123304635390

`A263995(n+1)-A027424(n+1)`
-/

namespace A108954.P15986646123304635390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) - A027424 (n + 1)

end

end A108954.P15986646123304635390

namespace A108954

/-- `A263995(n+1)-A027424(n+1)` -/
def P15986646123304635390.Spec : Prop :=
  ∀ n, P15986646123304635390.a n = A108954 (n + 1)

end A108954

/-!
# A108955: a(n) = floor(Li(2n) - Li(n)).

The programs for A108955, there is no canonical definition to state claims against.
-/

/-! ## A108955.P5480705868343867376

`A152467(lt[A107802(n+1), A086645(2*n)])+1`
-/

namespace A108955.P5480705868343867376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A108955.P5480705868343867376

/-! ## A108955.P7511535081552406248

`A004233(A238479(n+2)+A056239(n+4))`
-/

namespace A108955.P7511535081552406248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A238479 (n + 2) + A056239 (n + 4)).toNat

end

end A108955.P7511535081552406248

/-! ## A108955.P11150056442774359588

`ceil(lt[A065167(n), A255253(n+1)]/5)`
-/

namespace A108955.P11150056442774359588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 5⌉

end

end A108955.P11150056442774359588

/-! ## A108955.P8338592339620523385

`A055980(A318684(n)+A121854(n))`
-/

namespace A108955.P8338592339620523385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A318684 n + A121854 n).toNat

end

end A108955.P8338592339620523385

/-! ## A108955.P5517430664111709940

`A127734(lt[A000040(n+1), A222509(3*n+2)])`
-/

namespace A108955.P5517430664111709940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127734 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A108955.P5517430664111709940

/-!
# A108956: a(n) = floor(R(2n) - R(n)).

The programs for A108956, there is no canonical definition to state claims against.
-/

/-! ## A108956.P18160151111281473161

`A108955(n+2)%18`
-/

namespace A108956.P18160151111281473161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108955 (n + 2)) 18

end

end A108956.P18160151111281473161

/-! ## A108956.P11392088883876340167

`round(root(A223672(n+1), 13))`
-/

namespace A108956.P11392088883876340167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A223672 (n + 1) : ℝ) ^ (1 / (13 : ℝ)))

end

end A108956.P11392088883876340167

/-! ## A108956.P8680631949501597442

`round(root(A223737(n+1), 15))`
-/

namespace A108956.P8680631949501597442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A223737 (n + 1) : ℝ) ^ (1 / (15 : ℝ)))

end

end A108956.P8680631949501597442

/-! ## A108956.P12789171776261168226

`A032513(A108955(n+2))`
-/

namespace A108956.P12789171776261168226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 (A108955 (n + 2)).toNat

end

end A108956.P12789171776261168226

/-! ## A108956.P17088388649890841250

`A008554(A108955(n+2)+1)`
-/

namespace A108956.P17088388649890841250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A108955 (n + 2) + 1).toNat

end

end A108956.P17088388649890841250

/-! ## A108956.P15786387164956782736

`A280495(2*A108955(n+2))`
-/

namespace A108956.P15786387164956782736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (2 * A108955 (n + 2)).toNat

end

end A108956.P15786387164956782736

/-! ## A108956.P11112904109488265854

`or(char[A008606(n)], A108955(n+2))`
-/

namespace A108956.P11112904109488265854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A108955 (n + 2))

end

end A108956.P11112904109488265854

/-! ## A108956.P7480989073553243605

`A007318(∑{p}[n+1, gcd(n, #)])*A108955(n+2)`
-/

namespace A108956.P7480989073553243605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) * A108955 (n + 2)

end

end A108956.P7480989073553243605

/-! ## A108956.P17739523918184533063

`A007318(∑{e}[n+1, #-val(#!, 2)])*A108955(n+2)`
-/

namespace A108956.P17739523918184533063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat * A108955 (n + 2)

end

end A108956.P17739523918184533063

/-! ## A108956.P5778243915808757866

`A008835(A007318(n))*A108955(n+2)`
-/

namespace A108956.P5778243915808757866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A007318 n).toNat * A108955 (n + 2)

end

end A108956.P5778243915808757866

/-!
# A108958: Number of unordered pairs of distinct length-n binary words having the same number of 1's.

The programs for A108958, the canonical program `A108958.P4019298651770441770` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108958 has offset 1).

The definition of A108958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108958.P4019298651770441770

`A088218(n+1)-A011782(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108958

/-- `A088218(n+1)-A011782(n+1)` -/
def P4019298651770441770.Spec : Prop :=
  ∀ n, P4019298651770441770.a n = A108958 (n + 1)

theorem P4019298651770441770.correct : P4019298651770441770.Spec := by
  intro n
  simp only [A108958, Nat.add_sub_cancel]

end A108958

/-! ## A108958.P677765364539570217

`C(2*(n+1)-1, n)-2^n`
-/

namespace A108958.P677765364539570217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat n : ℤ) - (2 ^ n : ℤ)

end

end A108958.P677765364539570217

namespace A108958

/-- `C(2*(n+1)-1, n)-2^n` -/
def P677765364539570217.Spec : Prop :=
  ∀ n, P677765364539570217.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P3267230878069321348

`∏[4-2/(n+1)]/2-2^n`
-/

namespace A108958.P3267230878069321348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (2 ^ n : ℚ)

end

end A108958.P3267230878069321348

namespace A108958

/-- `∏[4-2/(n+1)]/2-2^n` -/
def P3267230878069321348.Spec : Prop :=
  ∀ n, P3267230878069321348.a n = (A108958 (n + 1) : ℚ)

end A108958

/-! ## A108958.P7003308459862728204

`Δ[A306376(n)]`
-/

namespace A108958.P7003308459862728204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108958.P7003308459862728204

namespace A108958

/-- `Δ[A306376(n)]` -/
def P7003308459862728204.Spec : Prop :=
  ∀ n, P7003308459862728204.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P12750011732414327214

`abs(2^n-A001700(n))`
-/

namespace A108958.P12750011732414327214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A001700 n|

end

end A108958.P12750011732414327214

namespace A108958

/-- `abs(2^n-A001700(n))` -/
def P12750011732414327214.Spec : Prop :=
  ∀ n, P12750011732414327214.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P18208486629854114493

`Δ[A024718(n)-2^n]`
-/

namespace A108958.P18208486629854114493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108958.P18208486629854114493

namespace A108958

/-- `Δ[A024718(n)-2^n]` -/
def P18208486629854114493.Spec : Prop :=
  ∀ n, P18208486629854114493.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P1735979381614653247

`A045676(2*n+3)/2`
-/

namespace A108958.P1735979381614653247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045676 (2 * n + 3) : ℚ) / 2

end

end A108958.P1735979381614653247

namespace A108958

/-- `A045676(2*n+3)/2` -/
def P1735979381614653247.Spec : Prop :=
  ∀ n, P1735979381614653247.a n = (A108958 (n + 1) : ℚ)

end A108958

/-! ## A108958.P7602725528147475118

`abs(2^n-A138364(Δ[n²]))`
-/

namespace A108958.P7602725528147475118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A138364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A108958.P7602725528147475118

namespace A108958

/-- `abs(2^n-A138364(Δ[n²]))` -/
def P7602725528147475118.Spec : Prop :=
  ∀ n, P7602725528147475118.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P343476496454400722

`A085781(n)%A001700(n)`
-/

namespace A108958.P343476496454400722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085781 n) (A001700 n)

end

end A108958.P343476496454400722

namespace A108958

/-- `A085781(n)%A001700(n)` -/
def P343476496454400722.Spec : Prop :=
  ∀ n, P343476496454400722.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P13770707103197881220

`Δ[(A006134(n)-A126646(n))/2]`
-/

namespace A108958.P13770707103197881220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n - A126646 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108958.P13770707103197881220

namespace A108958

/-- `Δ[(A006134(n)-A126646(n))/2]` -/
def P13770707103197881220.Spec : Prop :=
  ∀ n, P13770707103197881220.a n = (A108958 (n + 1) : ℚ)

end A108958

/-! ## A108958.P10625268477369731971

`record[A138364(n+1)-A016116(n)]`
-/

namespace A108958.P10625268477369731971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (n + 1) - A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108958.P10625268477369731971

namespace A108958

/-- `record[A138364(n+1)-A016116(n)]` -/
def P10625268477369731971.Spec : Prop :=
  ∀ n, P10625268477369731971.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P4254760197079498346

`record[(A126930(n)-A016116(n))/2]`
-/

namespace A108958.P4254760197079498346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126930 n - A016116 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108958.P4254760197079498346

namespace A108958

/-- `record[(A126930(n)-A016116(n))/2]` -/
def P4254760197079498346.Spec : Prop :=
  ∀ n, P4254760197079498346.a n = (A108958 (n + 1) : ℚ)

end A108958

/-! ## A108958.P10753312379901070976

`record[n*A097331(n)-A131572(n)]`
-/

namespace A108958.P10753312379901070976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097331 n - A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108958.P10753312379901070976

namespace A108958

/-- `record[n*A097331(n)-A131572(n)]` -/
def P10753312379901070976.Spec : Prop :=
  ∀ n, P10753312379901070976.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P5457255193859887102

`abs(2^n-(A162551(n)+A000108(n)))`
-/

namespace A108958.P5457255193859887102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (A162551 n + A000108 n)|

end

end A108958.P5457255193859887102

namespace A108958

/-- `abs(2^n-(A162551(n)+A000108(n)))` -/
def P5457255193859887102.Spec : Prop :=
  ∀ n, P5457255193859887102.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P5104376433911650671

`abs(A000079(n)-Δ[n²]*A000108(n))`
-/

namespace A108958.P5104376433911650671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n|

end

end A108958.P5104376433911650671

namespace A108958

/-- `abs(A000079(n)-Δ[n²]*A000108(n))` -/
def P5104376433911650671.Spec : Prop :=
  ∀ n, P5104376433911650671.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P15922794610213342080

`(A000984(n+1)-A000079(n+1))/2`
-/

namespace A108958.P15922794610213342080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) - A000079 (n + 1) : ℚ) / 2

end

end A108958.P15922794610213342080

namespace A108958

/-- `(A000984(n+1)-A000079(n+1))/2` -/
def P15922794610213342080.Spec : Prop :=
  ∀ n, P15922794610213342080.a n = (A108958 (n + 1) : ℚ)

end A108958

/-! ## A108958.P6933179542013097020

`(A000984(n+1)-A155559(n+1))/2`
-/

namespace A108958.P6933179542013097020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) - A155559 (n + 1) : ℚ) / 2

end

end A108958.P6933179542013097020

namespace A108958

/-- `(A000984(n+1)-A155559(n+1))/2` -/
def P6933179542013097020.Spec : Prop :=
  ∀ n, P6933179542013097020.a n = (A108958 (n + 1) : ℚ)

end A108958

/-! ## A108958.P6805710309232259294

`A085812(n)%A000302(n)`
-/

namespace A108958.P6805710309232259294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085812 n) (A000302 n)

end

end A108958.P6805710309232259294

namespace A108958

/-- `A085812(n)%A000302(n)` -/
def P6805710309232259294.Spec : Prop :=
  ∀ n, P6805710309232259294.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P4410448685217021783

`and(A024036(n), A085812(n))`
-/

namespace A108958.P4410448685217021783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A085812 n)

end

end A108958.P4410448685217021783

namespace A108958

/-- `and(A024036(n), A085812(n))` -/
def P4410448685217021783.Spec : Prop :=
  ∀ n, P4410448685217021783.a n = A108958 (n + 1)

end A108958

/-! ## A108958.P16870071909297176013

`A171476(n)%A000346(n)`
-/

namespace A108958.P16870071909297176013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171476 n) (A000346 n)

end

end A108958.P16870071909297176013

namespace A108958

/-- `A171476(n)%A000346(n)` -/
def P16870071909297176013.Spec : Prop :=
  ∀ n, P16870071909297176013.a n = A108958 (n + 1)

end A108958

/-!
# A108960: n expressed in Fibonacci binary-like number system using only 1's and 2's.

The programs for A108960, there is no canonical definition to state claims against.
-/

/-! ## A108960.P16489682216899981435

`A064657(∑[A006134(n)])`
-/

namespace A108960.P16489682216899981435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108960.P16489682216899981435

/-! ## A108960.P18397420942577958657

`A064657(∑[∑[A000984(n)]])`
-/

namespace A108960.P18397420942577958657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108960.P18397420942577958657

/-!
# A108961: Number of partitions that are "2-close" to being self-conjugate.

The programs for A108961, there is no canonical definition to state claims against.
-/

/-! ## A108961.P4356970973513993239

`A000194(A318767(n)-A294885(n+1))`
-/

namespace A108961.P4356970973513993239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A318767 n - A294885 (n + 1)).toNat

end

end A108961.P4356970973513993239

/-! ## A108961.P10402579823514397550

`A000194(A000009(n)*A027338(n+1))`
-/

namespace A108961.P10402579823514397550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000009 n * A027338 (n + 1)).toNat

end

end A108961.P10402579823514397550

/-! ## A108961.P16865030860749127588

`A000194(A000009(n)*A035982(n+1))`
-/

namespace A108961.P16865030860749127588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000009 n * A035982 (n + 1)).toNat

end

end A108961.P16865030860749127588

/-! ## A108961.P14093015374835461700

`A000196(Δ[A000009(2*(n+2))]*A000009(n))`
-/

namespace A108961.P14093015374835461700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) * A000009 n).toNat

end

end A108961.P14093015374835461700

/-! ## A108961.P18131394865548427848

`A366066(A265947(n))`
-/

namespace A108961.P18131394865548427848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366066 (A265947 n).toNat

end

end A108961.P18131394865548427848

/-!
# A108962: Number of partitions that are "3-close" to being self-conjugate.

The programs for A108962, there is no canonical definition to state claims against.
-/

/-! ## A108962.P2831379894450528172

`A056556(A026722(n))+A002264(n)`
-/

namespace A108962.P2831379894450528172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A026722 n).toNat + A002264 n

end

end A108962.P2831379894450528172

/-!
# A108964: Write n in balanced ternary notation, omit any zeros and form the left-to-right alternating sum mod 3.

The programs for A108964, there is no canonical definition to state claims against.
-/

/-! ## A108964.P5537720277784272693

`A307672(n)%3`
-/

namespace A108964.P5537720277784272693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307672 n) 3

end

end A108964.P5537720277784272693

/-! ## A108964.P11389045249963722107

`A010872(A307672(n)+A108782(n))`
-/

namespace A108964.P11389045249963722107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A307672 n + A108782 n).toNat

end

end A108964.P11389045249963722107

/-! ## A108964.P10304235994830472967

`A010872(A307672(n)+n-A010872(n))`
-/

namespace A108964.P10304235994830472967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A307672 n + ((n : ℤ) - A010872 n)).toNat

end

end A108964.P10304235994830472967

/-! ## A108964.P6750916971289344641

`A010872(n-(A010872(n)-A307672(n)))`
-/

namespace A108964.P6750916971289344641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((n : ℤ) - (A010872 n - A307672 n)).toNat

end

end A108964.P6750916971289344641

/-! ## A108964.P4095100957445482705

`A059835(and(A140253(n), A307672(n)))`
-/

namespace A108964.P4095100957445482705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 (Int.land (A140253 n) (A307672 n)).toNat

end

end A108964.P4095100957445482705

/-!
# A108965: Numbers n with property that for each digit in n there is another digit in n differing from it by 1.

The programs for A108965, there is no canonical definition to state claims against.
-/

/-! ## A108965.P16196902557665743761

`eq[1, A331410(A086066(n))]`
-/

namespace A108965.P16196902557665743761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108965.P16196902557665743761

/-! ## A108965.P10648593152174226409

`eq[1, A000030(A347688(n)+2)]`
-/

namespace A108965.P10648593152174226409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347688 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108965.P10648593152174226409

/-! ## A108965.P9971306230633178774

`∩[A082927(n+1), A134336(n+1)]`
-/

namespace A108965.P9971306230633178774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108965.P9971306230633178774

/-! ## A108965.P207619316069322335

`∩[A134336(n+1), A139819(n+1)]`
-/

namespace A108965.P207619316069322335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108965.P207619316069322335

/-! ## A108965.P10594859791426179643

`lt[A000030(A347688(n)+2), A000005(A014754(n+1))]`
-/

namespace A108965.P10594859791426179643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347688 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108965.P10594859791426179643

/-! ## A108965.P12475181355815214938

`lt[A000030(A347688(n)+2), A000005(A330883(n+1))]`
-/

namespace A108965.P12475181355815214938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347688 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A330883 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108965.P12475181355815214938

/-! ## A108965.P9032220501979238454

`lt[A000030(A347688(n)+2), A000005(A007522(n+2))]`
-/

namespace A108965.P9032220501979238454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347688 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007522 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108965.P9032220501979238454

/-! ## A108965.P1015738884016166940

`lt[A000030(A347688(n)+2), A000005(A040098(n+2))]`
-/

namespace A108965.P1015738884016166940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347688 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040098 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108965.P1015738884016166940

/-! ## A108965.P13688290257255591191

`lt[A000030(A347688(n)+2), A000005(A107132(n+2))]`
-/

namespace A108965.P13688290257255591191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347688 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A107132 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108965.P13688290257255591191

/-!
# A108966: Numbers n such that repunit(n) concatenated with its 10's complement is prime; or numbers n such that (1+7*10^n+100^n)/9 is prime.

The programs for A108966, there is no canonical definition to state claims against.
-/

/-! ## A108966.P294708603943818581

`A298981(A029519(n+1))+n²`
-/

namespace A108966.P294708603943818581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298981 (A029519 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A108966.P294708603943818581

/-!
# A108969: Numbers n such that 43*n + 41 is prime.

The programs for A108969, the canonical program `A108969.P15391048143242835784` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108969 has offset 1).

The definition of A108969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108969.P15391048143242835784

`floor(A142290(n+1)/43)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108969

/-- `floor(A142290(n+1)/43)` -/
def P15391048143242835784.Spec : Prop :=
  ∀ n, P15391048143242835784.a n = A108969 (n + 1)

theorem P15391048143242835784.correct : P15391048143242835784.Spec := by
  intro n
  simp only [A108969, Nat.add_sub_cancel]

end A108969

/-! ## A108969.P16974527081497904535

`ceil(A008683(A007918(n))+A142290(n+1)/43)`
-/

namespace A108969.P16974527081497904535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A007918 n).toNat : ℚ) + (A142290 (n + 1) : ℚ) / 43⌉

end

end A108969.P16974527081497904535

namespace A108969

/-- `ceil(A008683(A007918(n))+A142290(n+1)/43)` -/
def P16974527081497904535.Spec : Prop :=
  ∀ n, P16974527081497904535.a n = A108969 (n + 1)

end A108969

/-! ## A108969.P16328357792504545344

`eq[1, A001222(43*(n+1)-2)]`
-/

namespace A108969.P16328357792504545344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (43 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108969.P16328357792504545344

namespace A108969

/-- `eq[1, A001222(43*(n+1)-2)]` -/
def P16328357792504545344.Spec : Prop :=
  ∀ n, (P16328357792504545344.a n : ℤ) = A108969 (n + 1)

end A108969

/-! ## A108969.P17342858658367211865

`eq[2, A000005(43*(n+1)-2)]`
-/

namespace A108969.P17342858658367211865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (43 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108969.P17342858658367211865

namespace A108969

/-- `eq[2, A000005(43*(n+1)-2)]` -/
def P17342858658367211865.Spec : Prop :=
  ∀ n, (P17342858658367211865.a n : ℤ) = A108969 (n + 1)

end A108969

/-! ## A108969.P5712882713201930729

`eq[43*(n+1)-2, A006530(43*(n+1)-2)]`
-/

namespace A108969.P5712882713201930729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * (n + 1) : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (43 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108969.P5712882713201930729

namespace A108969

/-- `eq[43*(n+1)-2, A006530(43*(n+1)-2)]` -/
def P5712882713201930729.Spec : Prop :=
  ∀ n, (P5712882713201930729.a n : ℤ) = A108969 (n + 1)

end A108969

/-! ## A108969.P12126192180704978843

`eq[43*(n+1)-2, A020639(43*(n+1)-2)]`
-/

namespace A108969.P12126192180704978843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * (n + 1) : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108969.P12126192180704978843

namespace A108969

/-- `eq[43*(n+1)-2, A020639(43*(n+1)-2)]` -/
def P12126192180704978843.Spec : Prop :=
  ∀ n, (P12126192180704978843.a n : ℤ) = A108969 (n + 1)

end A108969

/-!
# A108971: Lexicographically earliest sequence such that in decimal representation sums of digits of consecutive terms differ exactly by 1 or -1.

The programs for A108971, there is no canonical definition to state claims against.
-/

/-! ## A108971.P11671527269421901987

`A179977(A179978(n+1))`
-/

namespace A108971.P11671527269421901987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A179978 (n + 1)).toNat

end

end A108971.P11671527269421901987

/-! ## A108971.P3258997366262555175

`A179978(A179977(-xor(n, -1)))`
-/

namespace A108971.P3258997366262555175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179978 (A179977 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A108971.P3258997366262555175

/-!
# A108972: a(1) = 1; for n > 1, a(n) is the least k > a(n-1) such that a(n) + a(n-1) is square and a(n) - a(n-1) is prime.

The programs for A108972, there is no canonical definition to state claims against.
-/

/-! ## A108972.P8418879703586257041

`A106501(a(n-2))²-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A108972.P8418879703586257041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A106501 (a (n - 2)).toNat ^ 2 - a (n - 1)

end

end A108972.P8418879703586257041

/-! ## A108972.P12761126915908471185

`A257639(A001223(n+1)*A084636(2*(n+1)))`
-/

namespace A108972.P12761126915908471185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A001223 (n + 1) * A084636 (2 * (n + 1))).toNat

end

end A108972.P12761126915908471185

/-!
# A108973: 

The programs for A108973, there is no canonical definition to state claims against.
-/

/-! ## A108973.P15944511704865758200

`record[lcm(2, A124505(n))]`
-/

namespace A108973.P15944511704865758200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A124505 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108973.P15944511704865758200

/-! ## A108973.P4742203121925212420

`record[Δ[A124505(n+2)]]`
-/

namespace A108973.P4742203121925212420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124505 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108973.P4742203121925212420

/-! ## A108973.P7247244483274078992

`A124505(record[A004444(n)])`
-/

namespace A108973.P7247244483274078992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108973.P7247244483274078992

/-!
# A108974: Table read by rows, where n-th row composed of odd primes p with the multiplicative order of 2 modulo p equal n.

The programs for A108974, there is no canonical definition to state claims against.
-/

/-! ## A108974.P7592143341102355638

`p?[A059912(n+1)%A094394(n+1)]`
-/

namespace A108974.P7592143341102355638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059912 (n + 1)) (A094394 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108974.P7592143341102355638

/-! ## A108974.P13243326403051607065

`p?[A059912(n+1)%A029591(n)]`
-/

namespace A108974.P13243326403051607065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059912 (n + 1)) (A029591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108974.P13243326403051607065

/-! ## A108974.P5980092497019536726

`p?[A212737(A000217(n+1))%A094394(n+1)]`
-/

namespace A108974.P5980092497019536726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A000217 (n + 1)).toNat) (A094394 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108974.P5980092497019536726

/-! ## A108974.P5115707745289651204

`p?[A059912(n+1)]`
-/

namespace A108974.P5115707745289651204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108974.P5115707745289651204

/-! ## A108974.P3412521222911638748

`p?[A212737(∑[n+1])]`
-/

namespace A108974.P3412521222911638748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108974.P3412521222911638748

/-!
# A108975: Partial products of primes with primitive root 2.

The programs for A108975, there is no canonical definition to state claims against.
-/

/-! ## A108975.P6718959817118261571

`∏[A001122(n+1)]`
-/

namespace A108975.P6718959817118261571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108975.P6718959817118261571

/-! ## A108975.P4123884091557888928

`∏[A050229(n+3)]`
-/

namespace A108975.P4123884091557888928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108975.P4123884091557888928

/-! ## A108975.P9745486886354019504

`∏[p?[A139099(n+1)]]`
-/

namespace A108975.P9745486886354019504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108975.P9745486886354019504

/-! ## A108975.P14895653427869122278

`∏[p?[A141231(n+1)]]`
-/

namespace A108975.P14895653427869122278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108975.P14895653427869122278

/-! ## A108975.P12408262684103443876

`∏[p?[A167791(n+1)]]`
-/

namespace A108975.P12408262684103443876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108975.P12408262684103443876

/-!
# A108976: Numbers k such that 17*k + 19 is prime.

The programs for A108976, the canonical program `A108976.P11036911029861267488` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108976 has offset 1).

The definition of A108976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108976.P11036911029861267488

`A113487(n+2)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108976

/-- `A113487(n+2)-1` -/
def P11036911029861267488.Spec : Prop :=
  ∀ n, P11036911029861267488.a n = A108976 (n + 1)

theorem P11036911029861267488.correct : P11036911029861267488.Spec := by
  intro n
  simp only [A108976, Nat.add_sub_cancel]

end A108976

/-! ## A108976.P14343919410755798441

`∑[A052928(Δ[A113487(n+1)])]`
-/

namespace A108976.P14343919410755798441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108976.P14343919410755798441

namespace A108976

/-- `∑[A052928(Δ[A113487(n+1)])]` -/
def P14343919410755798441.Spec : Prop :=
  ∀ n, P14343919410755798441.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P835376841560842887

`∑[A153733(Δ[A113487(n+1)])]`
-/

namespace A108976.P835376841560842887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108976.P835376841560842887

namespace A108976

/-- `∑[A153733(Δ[A113487(n+1)])]` -/
def P835376841560842887.Spec : Prop :=
  ∀ n, P835376841560842887.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P8468889122856070600

`∑[Δ[A113487(n+1)]%A000466(n)]`
-/

namespace A108976.P8468889122856070600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000466 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108976.P8468889122856070600

namespace A108976

/-- `∑[Δ[A113487(n+1)]%A000466(n)]` -/
def P8468889122856070600.Spec : Prop :=
  ∀ n, P8468889122856070600.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P1450472959799939467

`∑[A038573(n)%2*Δ[A113487(n+1)]]`
-/

namespace A108976.P1450472959799939467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038573 n) 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108976.P1450472959799939467

namespace A108976

/-- `∑[A038573(n)%2*Δ[A113487(n+1)]]` -/
def P1450472959799939467.Spec : Prop :=
  ∀ n, P1450472959799939467.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P17667713084324878517

`xor(A000034(2*n), A113487(n+2))`
-/

namespace A108976.P17667713084324878517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A113487 (n + 2))

end

end A108976.P17667713084324878517

namespace A108976

/-- `xor(A000034(2*n), A113487(n+2))` -/
def P17667713084324878517.Spec : Prop :=
  ∀ n, P17667713084324878517.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P4216323576346833573

`xor(A000035(Δ[n²]), A113487(n+2))`
-/

namespace A108976.P4216323576346833573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A113487 (n + 2))

end

end A108976.P4216323576346833573

namespace A108976

/-- `xor(A000035(Δ[n²]), A113487(n+2))` -/
def P4216323576346833573.Spec : Prop :=
  ∀ n, P4216323576346833573.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P15190182604661187937

`A004442(A113487(n+2))`
-/

namespace A108976.P15190182604661187937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A113487 (n + 2)).toNat

end

end A108976.P15190182604661187937

namespace A108976

/-- `A004442(A113487(n+2))` -/
def P15190182604661187937.Spec : Prop :=
  ∀ n, P15190182604661187937.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P1395907552396151663

`record[A052928(A113487(A126759(n)))]`
-/

namespace A108976.P1395907552396151663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A113487 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108976.P1395907552396151663

namespace A108976

/-- `record[A052928(A113487(A126759(n)))]` -/
def P1395907552396151663.Spec : Prop :=
  ∀ n, P1395907552396151663.a n = A108976 (n + 1)

end A108976

/-! ## A108976.P7402441642280027191

`eq[1, A001222(17*(n+1)+2)]`
-/

namespace A108976.P7402441642280027191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (17 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108976.P7402441642280027191

namespace A108976

/-- `eq[1, A001222(17*(n+1)+2)]` -/
def P7402441642280027191.Spec : Prop :=
  ∀ n, (P7402441642280027191.a n : ℤ) = A108976 (n + 1)

end A108976

/-! ## A108976.P8111819838002581360

`eq[2, A000005(17*(n+1)+2)]`
-/

namespace A108976.P8111819838002581360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (17 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108976.P8111819838002581360

namespace A108976

/-- `eq[2, A000005(17*(n+1)+2)]` -/
def P8111819838002581360.Spec : Prop :=
  ∀ n, (P8111819838002581360.a n : ℤ) = A108976 (n + 1)

end A108976

/-! ## A108976.P2885686607930568117

`lt[A000005(A016969(2*(n+1))+A016873(n)), 3]`
-/

namespace A108976.P2885686607930568117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016969 (2 * (n + 1)) + A016873 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108976.P2885686607930568117

namespace A108976

/-- `lt[A000005(A016969(2*(n+1))+A016873(n)), 3]` -/
def P2885686607930568117.Spec : Prop :=
  ∀ n, (P2885686607930568117.a n : ℤ) = A108976 (n + 1)

end A108976

/-!
# A108977: Numbers n such that 19*n + 17 is prime.

The programs for A108977, the canonical program `A108977.P10759412925620859983` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108977 has offset 1).

The definition of A108977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108977.P10759412925620859983

`A138641(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A108977

/-- `A138641(n+1)-1` -/
def P10759412925620859983.Spec : Prop :=
  ∀ n, P10759412925620859983.a n = A108977 (n + 1)

theorem P10759412925620859983.correct : P10759412925620859983.Spec := by
  intro n
  simp only [A108977, Nat.add_sub_cancel]

end A108977

/-! ## A108977.P15306560995634829639

`floor(A138640(n+1)/19)`
-/

namespace A108977.P15306560995634829639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138640 (n + 1) : ℚ) / 19⌋

end

end A108977.P15306560995634829639

namespace A108977

/-- `floor(A138640(n+1)/19)` -/
def P15306560995634829639.Spec : Prop :=
  ∀ n, P15306560995634829639.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P9063444674768638182

`A000027(ceil(A138640(n+1)/19))-1`
-/

namespace A108977.P9063444674768638182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈(A138640 (n + 1) : ℚ) / 19⌉.toNat - 1

end

end A108977.P9063444674768638182

namespace A108977

/-- `A000027(ceil(A138640(n+1)/19))-1` -/
def P9063444674768638182.Spec : Prop :=
  ∀ n, P9063444674768638182.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P14339096560047297369

`ceil(A138640(n+1)/19)-A007318(C(2, n))`
-/

namespace A108977.P14339096560047297369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138640 (n + 1) : ℚ) / 19⌉ - A007318 (Nat.choose 2 n)

end

end A108977.P14339096560047297369

namespace A108977

/-- `ceil(A138640(n+1)/19)-A007318(C(2, n))` -/
def P14339096560047297369.Spec : Prop :=
  ∀ n, P14339096560047297369.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P2093264367838747587

`ceil(A138640(n+1)/19)-A001222(A000928(n+1))`
-/

namespace A108977.P2093264367838747587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138640 (n + 1) : ℚ) / 19⌉ - A001222 (A000928 (n + 1)).toNat

end

end A108977.P2093264367838747587

namespace A108977

/-- `ceil(A138640(n+1)/19)-A001222(A000928(n+1))` -/
def P2093264367838747587.Spec : Prop :=
  ∀ n, P2093264367838747587.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P10525123350985087392

`A004442(A138641(n+1))`
-/

namespace A108977.P10525123350985087392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A138641 (n + 1)).toNat

end

end A108977.P10525123350985087392

namespace A108977

/-- `A004442(A138641(n+1))` -/
def P10525123350985087392.Spec : Prop :=
  ∀ n, P10525123350985087392.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P926164117867290815

`A004442(ceil(A138640(n+1)/19))`
-/

namespace A108977.P926164117867290815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈(A138640 (n + 1) : ℚ) / 19⌉.toNat

end

end A108977.P926164117867290815

namespace A108977

/-- `A004442(ceil(A138640(n+1)/19))` -/
def P926164117867290815.Spec : Prop :=
  ∀ n, P926164117867290815.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P1407954063828751602

`A004442(round(A138640(n+1)/19))`
-/

namespace A108977.P1407954063828751602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A138640 (n + 1) : ℚ) / 19)).toNat

end

end A108977.P1407954063828751602

namespace A108977

/-- `A004442(round(A138640(n+1)/19))` -/
def P1407954063828751602.Spec : Prop :=
  ∀ n, P1407954063828751602.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P11462179411025775398

`eq[1, A001222(19*(n+1)-2)]`
-/

namespace A108977.P11462179411025775398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (19 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108977.P11462179411025775398

namespace A108977

/-- `eq[1, A001222(19*(n+1)-2)]` -/
def P11462179411025775398.Spec : Prop :=
  ∀ n, (P11462179411025775398.a n : ℤ) = A108977 (n + 1)

end A108977

/-! ## A108977.P16674035235024324800

`eq[2, A000005(19*(n+1)-2)]`
-/

namespace A108977.P16674035235024324800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (19 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108977.P16674035235024324800

namespace A108977

/-- `eq[2, A000005(19*(n+1)-2)]` -/
def P16674035235024324800.Spec : Prop :=
  ∀ n, (P16674035235024324800.a n : ℤ) = A108977 (n + 1)

end A108977

/-! ## A108977.P5128660156836379845

`record[n*A010051(A259614(n+1)+n)]`
-/

namespace A108977.P5128660156836379845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A259614 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108977.P5128660156836379845

namespace A108977

/-- `record[n*A010051(A259614(n+1)+n)]` -/
def P5128660156836379845.Spec : Prop :=
  ∀ n, P5128660156836379845.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P13861105720510441992

`lt[A000217(A001222(19*n+17)+2)/3, 3]`
-/

namespace A108977.P13861105720510441992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A001222 (19 * n + 17) + 2).toNat : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A108977.P13861105720510441992

namespace A108977

/-- `lt[A000217(A001222(19*n+17)+2)/3, 3]` -/
def P13861105720510441992.Spec : Prop :=
  ∀ n, (P13861105720510441992.a n : ℤ) = A108977 (n + 1)

end A108977

/-! ## A108977.P13838301058990531067

`lt[(A085127(A001222(19*n+17)+2)-1)/4, 3]`
-/

namespace A108977.P13838301058990531067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (A001222 (19 * n + 17) + 2).toNat - 1 : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A108977.P13838301058990531067

namespace A108977

/-- `lt[(A085127(A001222(19*n+17)+2)-1)/4, 3]` -/
def P13838301058990531067.Spec : Prop :=
  ∀ n, (P13838301058990531067.a n : ℤ) = A108977 (n + 1)

end A108977

/-! ## A108977.P3669006400234379169

`ceil(A138640(n+1)/19)-A014963(A004011(n))`
-/

namespace A108977.P3669006400234379169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138640 (n + 1) : ℚ) / 19⌉ - A014963 (A004011 n).toNat

end

end A108977.P3669006400234379169

namespace A108977

/-- `ceil(A138640(n+1)/19)-A014963(A004011(n))` -/
def P3669006400234379169.Spec : Prop :=
  ∀ n, P3669006400234379169.a n = A108977 (n + 1)

end A108977

/-! ## A108977.P12827871196135196714

`and(A002446(n), A138641(n+1))`
-/

namespace A108977.P12827871196135196714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A138641 (n + 1))

end

end A108977.P12827871196135196714

namespace A108977

/-- `and(A002446(n), A138641(n+1))` -/
def P12827871196135196714.Spec : Prop :=
  ∀ n, P12827871196135196714.a n = A108977 (n + 1)

end A108977

/-!
# A108978: Numbers k such that 29*k + 31 is prime.

The programs for A108978, there is no canonical definition to state claims against.
-/

/-! ## A108978.P6460239923942829841

`A113510(n+2)-1`
-/

namespace A108978.P6460239923942829841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113510 (n + 2) - 1

end

end A108978.P6460239923942829841

/-! ## A108978.P8031866136259558899

`A004442(A113510(n+2))`
-/

namespace A108978.P8031866136259558899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A113510 (n + 2)).toNat

end

end A108978.P8031866136259558899

/-! ## A108978.P9349620441718593301

`eq[1, A001221(29*(n+1)+2)]`
-/

namespace A108978.P9349620441718593301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (29 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108978.P9349620441718593301

/-! ## A108978.P129598088762115240

`eq[1, A001222(29*(n+1)+2)]`
-/

namespace A108978.P129598088762115240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (29 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108978.P129598088762115240

/-! ## A108978.P8216369384456152997

`eq[2, A000005(29*(n+1)+2)]`
-/

namespace A108978.P8216369384456152997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (29 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108978.P8216369384456152997

/-! ## A108978.P5680945661552810198

`lt[A000005(26*n+abs(3*(2-n))+8), 3]-1`
-/

namespace A108978.P5680945661552810198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((26 * n : ℤ) + (|3 * (2 - (n : ℤ))| + 8)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108978.P5680945661552810198

/-! ## A108978.P870297176107693197

`lt[A001222(A168329(abs(11*n+7-n)+4)-2-n), 2]`
-/

namespace A108978.P870297176107693197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168329 (|(11 * n + 7 : ℤ) - (n : ℤ)| + 4).toNat - 2 - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108978.P870297176107693197

/-!
# A108979: Numbers k such that 31*k + 29 is prime.

The programs for A108979, the canonical program `A108979.P16884793668270795336` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108979 has offset 1).

The definition of A108979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108979.P16884793668270795336

`floor(A142033(n+1)/31)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108979

/-- `floor(A142033(n+1)/31)` -/
def P16884793668270795336.Spec : Prop :=
  ∀ n, P16884793668270795336.a n = A108979 (n + 1)

theorem P16884793668270795336.correct : P16884793668270795336.Spec := by
  intro n
  simp only [A108979, Nat.add_sub_cancel]

end A108979

/-! ## A108979.P17418175112258556794

`A005843(round(A142033(n+1)/62))`
-/

namespace A108979.P17418175112258556794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A142033 (n + 1) : ℚ) / 62)).toNat

end

end A108979.P17418175112258556794

namespace A108979

/-- `A005843(round(A142033(n+1)/62))` -/
def P17418175112258556794.Spec : Prop :=
  ∀ n, P17418175112258556794.a n = A108979 (n + 1)

end A108979

/-! ## A108979.P10555924891843139514

`eq[1, A001222(31*(n+1)-2)]`
-/

namespace A108979.P10555924891843139514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (31 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108979.P10555924891843139514

namespace A108979

/-- `eq[1, A001222(31*(n+1)-2)]` -/
def P10555924891843139514.Spec : Prop :=
  ∀ n, (P10555924891843139514.a n : ℤ) = A108979 (n + 1)

end A108979

/-! ## A108979.P377707500086282996

`eq[2, A000005(31*(n+1)-2)]`
-/

namespace A108979.P377707500086282996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (31 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108979.P377707500086282996

namespace A108979

/-- `eq[2, A000005(31*(n+1)-2)]` -/
def P377707500086282996.Spec : Prop :=
  ∀ n, (P377707500086282996.a n : ℤ) = A108979 (n + 1)

end A108979

/-! ## A108979.P12123625420527493653

`lt[A001222(60*(n+1)/2-1+n), 2]`
-/

namespace A108979.P12123625420527493653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((60 * (n + 1) : ℚ) / 2 - 1 + (n : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108979.P12123625420527493653

namespace A108979

/-- `lt[A001222(60*(n+1)/2-1+n), 2]` -/
def P12123625420527493653.Spec : Prop :=
  ∀ n, (P12123625420527493653.a n : ℤ) = A108979 (n + 1)

end A108979

/-! ## A108979.P1259061243582175668

`lt[A000005(62*(n+1)-4), 5]`
-/

namespace A108979.P1259061243582175668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (62 * (n + 1) - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108979.P1259061243582175668

namespace A108979

/-- `lt[A000005(62*(n+1)-4), 5]` -/
def P1259061243582175668.Spec : Prop :=
  ∀ n, (P1259061243582175668.a n : ℤ) = A108979 (n + 1)

end A108979

/-!
# A108981: a(n) = 3*a(n-1) + 4*a(n-2), a(0)=1, a(1)=5.

The programs for A108981, the canonical program `A108981.P1059658539458496249` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108981 has offset 0).

The definition of A108981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A108981.P1059658539458496249`, by `A108981.P1059658539458496249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108981.P1059658539458496249

`3*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108981

/-- `3*a(n-1)+4*a(n-2)` -/
def P1059658539458496249.Spec : Prop :=
  ∀ n, (P1059658539458496249.a n : ℤ) = A108981 n

theorem P1059658539458496249.correct : P1059658539458496249.Spec := by
  intro n
  simp only [A108981]

end A108981

/-! ## A108981.P17701096033379724747

`(6*4^n-(-1)^n)/5`
-/

namespace A108981.P17701096033379724747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 4 ^ n : ℤ) - (-1) ^ n : ℚ) / 5

end

end A108981.P17701096033379724747

namespace A108981

/-- `(6*4^n-(-1)^n)/5` -/
def P17701096033379724747.Spec : Prop :=
  ∀ n, P17701096033379724747.a n = (A108981 n : ℚ)

theorem P17701096033379724747.correct : P17701096033379724747.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A108981, Nat.add_sub_cancel, A108981.P17701096033379724747.a, A108981.P1059658539458496249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A108981, Nat.add_sub_cancel, A108981.P17701096033379724747.a, A108981.P1059658539458496249.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A108981

/-! ## A108981.P16595191121322827515

`ogf((1+2x)/(1-3x-4x^2))`
-/

namespace A108981.P16595191121322827515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -4] n

end

end A108981.P16595191121322827515

namespace A108981

/-- `ogf((1+2x)/(1-3x-4x^2))` -/
def P16595191121322827515.Spec : Prop :=
  ∀ n, P16595191121322827515.a n = A108981 n

end A108981

/-! ## A108981.P17885674439710080239

`or(4^n, round(4^n/5))`
-/

namespace A108981.P17885674439710080239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5))

end

end A108981.P17885674439710080239

namespace A108981

/-- `or(4^n, round(4^n/5))` -/
def P17885674439710080239.Spec : Prop :=
  ∀ n, P17885674439710080239.a n = A108981 n

end A108981

/-! ## A108981.P5768068414763775014

`xor(4^n, round(4^n/5))`
-/

namespace A108981.P5768068414763775014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 ^ n : ℤ) (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5))

end

end A108981.P5768068414763775014

namespace A108981

/-- `xor(4^n, round(4^n/5))` -/
def P5768068414763775014.Spec : Prop :=
  ∀ n, P5768068414763775014.a n = A108981 n

end A108981

/-! ## A108981.P7165256454784256764

`4*a(n-1)-(-1)^n` with `a(0)=1`
-/

namespace A108981.P7165256454784256764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (-1) ^ n

end

end A108981.P7165256454784256764

namespace A108981

/-- `4*a(n-1)-(-1)^n` -/
def P7165256454784256764.Spec : Prop :=
  ∀ n, P7165256454784256764.a n = A108981 n

end A108981

/-! ## A108981.P13326411349919011821

`lcm(4, a(n-1))-(-1)^n` with `a(0)=1`
-/

namespace A108981.P13326411349919011821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - (-1) ^ n

end

end A108981.P13326411349919011821

namespace A108981

/-- `lcm(4, a(n-1))-(-1)^n` -/
def P13326411349919011821.Spec : Prop :=
  ∀ n, P13326411349919011821.a n = A108981 n

end A108981

/-! ## A108981.P227041773848348146

`Δ[4^n/2]-a(n-1)` with `a(0)=1`
-/

namespace A108981.P227041773848348146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A108981.P227041773848348146

namespace A108981

/-- `Δ[4^n/2]-a(n-1)` -/
def P227041773848348146.Spec : Prop :=
  ∀ n, P227041773848348146.a n = (A108981 n : ℚ)

end A108981

/-! ## A108981.P13286276013858033654

`Δ[A037481(n)]`
-/

namespace A108981.P13286276013858033654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P13286276013858033654

namespace A108981

/-- `Δ[A037481(n)]` -/
def P13286276013858033654.Spec : Prop :=
  ∀ n, P13286276013858033654.a n = A108981 n

end A108981

/-! ## A108981.P6017347633537972353

`Δ[A363773(n)]`
-/

namespace A108981.P6017347633537972353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P6017347633537972353

namespace A108981

/-- `Δ[A363773(n)]` -/
def P6017347633537972353.Spec : Prop :=
  ∀ n, P6017347633537972353.a n = A108981 n

end A108981

/-! ## A108981.P16702837889776849916

`Δ[A115243(n)/2]`
-/

namespace A108981.P16702837889776849916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115243 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P16702837889776849916

namespace A108981

/-- `Δ[A115243(n)/2]` -/
def P16702837889776849916.Spec : Prop :=
  ∀ n, P16702837889776849916.a n = (A108981 n : ℚ)

end A108981

/-! ## A108981.P11695962620442152887

`A016029(2*(n+1))`
-/

namespace A108981.P11695962620442152887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 (2 * (n + 1))

end

end A108981.P11695962620442152887

namespace A108981

/-- `A016029(2*(n+1))` -/
def P11695962620442152887.Spec : Prop :=
  ∀ n, P11695962620442152887.a n = A108981 n

end A108981

/-! ## A108981.P6230832399082592512

`Δ[Δ[A368346(2*n)]]`
-/

namespace A108981.P6230832399082592512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368346 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P6230832399082592512

namespace A108981

/-- `Δ[Δ[A368346(2*n)]]` -/
def P6230832399082592512.Spec : Prop :=
  ∀ n, P6230832399082592512.a n = A108981 n

end A108981

/-! ## A108981.P11576242882417809804

`Δ[A256494(2*(n+1))]`
-/

namespace A108981.P11576242882417809804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P11576242882417809804

namespace A108981

/-- `Δ[A256494(2*(n+1))]` -/
def P11576242882417809804.Spec : Prop :=
  ∀ n, P11576242882417809804.a n = A108981 n

end A108981

/-! ## A108981.P10875342783090261562

`Δ[A015521(n+1)/2]`
-/

namespace A108981.P10875342783090261562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015521 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P10875342783090261562

namespace A108981

/-- `Δ[A015521(n+1)/2]` -/
def P10875342783090261562.Spec : Prop :=
  ∀ n, P10875342783090261562.a n = (A108981 n : ℚ)

end A108981

/-! ## A108981.P7039853743250976930

`Δ[A007910(2*n)/2]`
-/

namespace A108981.P7039853743250976930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007910 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P7039853743250976930

namespace A108981

/-- `Δ[A007910(2*n)/2]` -/
def P7039853743250976930.Spec : Prop :=
  ∀ n, P7039853743250976930.a n = (A108981 n : ℚ)

end A108981

/-! ## A108981.P4887992034562737566

`Δ[A190569(2*n)/2]`
-/

namespace A108981.P4887992034562737566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190569 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108981.P4887992034562737566

namespace A108981

/-- `Δ[A190569(2*n)/2]` -/
def P4887992034562737566.Spec : Prop :=
  ∀ n, P4887992034562737566.a n = (A108981 n : ℚ)

end A108981

/-! ## A108981.P3081755045489868723

`record[abs(A077950(2*n+1))]`
-/

namespace A108981.P3081755045489868723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077950 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108981.P3081755045489868723

namespace A108981

/-- `record[abs(A077950(2*n+1))]` -/
def P3081755045489868723.Spec : Prop :=
  ∀ n, P3081755045489868723.a n = A108981 n

end A108981

/-! ## A108981.P2778277001133039633

`record[abs(A077973(2*n+1))]`
-/

namespace A108981.P2778277001133039633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077973 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108981.P2778277001133039633

namespace A108981

/-- `record[abs(A077973(2*n+1))]` -/
def P2778277001133039633.Spec : Prop :=
  ∀ n, P2778277001133039633.a n = A108981 n

end A108981

/-! ## A108981.P11034353754928524828

`A255490(A004273(n))`
-/

namespace A108981.P11034353754928524828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255490 (A004273 n).toNat

end

end A108981.P11034353754928524828

namespace A108981

/-- `A255490(A004273(n))` -/
def P11034353754928524828.Spec : Prop :=
  ∀ n, P11034353754928524828.a n = A108981 n

end A108981

/-!
# A108982: Inverse binomial of A003949.

The programs for A108982, the canonical program `A108982.P14149265580364815198` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108982 has offset 0).

The definition of A108982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108982.P14149265580364815198

`4*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108982

/-- `4*a(n-1)+5*a(n-2)` -/
def P14149265580364815198.Spec : Prop :=
  ∀ n, (P14149265580364815198.a n : ℤ) = A108982 n

theorem P14149265580364815198.correct : P14149265580364815198.Spec := by
  intro n
  simp only [A108982]

end A108982

/-! ## A108982.P15527004827299381671

`(7*5^n-(-1)^n)/6`
-/

namespace A108982.P15527004827299381671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 5 ^ n : ℤ) - (-1) ^ n : ℚ) / 6

end

end A108982.P15527004827299381671

namespace A108982

/-- `(7*5^n-(-1)^n)/6` -/
def P15527004827299381671.Spec : Prop :=
  ∀ n, P15527004827299381671.a n = (A108982 n : ℚ)

theorem P15527004827299381671.correct : P15527004827299381671.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A108982, Nat.add_sub_cancel, A108982.P15527004827299381671.a, A108982.P14149265580364815198.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A108982, Nat.add_sub_cancel, A108982.P15527004827299381671.a, A108982.P14149265580364815198.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A108982

/-! ## A108982.P12806374417402646910

`ogf((1+2x)/(1-4x-5x^2))`
-/

namespace A108982.P12806374417402646910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, -5] n

end

end A108982.P12806374417402646910

namespace A108982

/-- `ogf((1+2x)/(1-4x-5x^2))` -/
def P12806374417402646910.Spec : Prop :=
  ∀ n, P12806374417402646910.a n = A108982 n

end A108982

/-! ## A108982.P2761594868849932210

`xor(3, 5*a(n-1))` with `a(0)=1`
-/

namespace A108982.P2761594868849932210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 (5 * a (n - 1))

end

end A108982.P2761594868849932210

namespace A108982

/-- `xor(3, 5*a(n-1))` -/
def P2761594868849932210.Spec : Prop :=
  ∀ n, (P2761594868849932210.a n : ℤ) = A108982 n

end A108982

/-! ## A108982.P1631544757350469241

`xor(3, lcm(5, a(n-1)))` with `a(0)=1`
-/

namespace A108982.P1631544757350469241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 (Nat.lcm 5 (a (n - 1)))

end

end A108982.P1631544757350469241

namespace A108982

/-- `xor(3, lcm(5, a(n-1)))` -/
def P1631544757350469241.Spec : Prop :=
  ∀ n, (P1631544757350469241.a n : ℤ) = A108982 n

end A108982

/-! ## A108982.P6526999511663614022

`or(2, 5*a(n-1))-1` with `a(0)=1`
-/

namespace A108982.P6526999511663614022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (5 * a (n - 1)) - 1

end

end A108982.P6526999511663614022

namespace A108982

/-- `or(2, 5*a(n-1))-1` -/
def P6526999511663614022.Spec : Prop :=
  ∀ n, P6526999511663614022.a n = A108982 n

end A108982

/-! ## A108982.P12411321617916047172

`5*a(n-1)-(-1)^n` with `a(0)=1`
-/

namespace A108982.P12411321617916047172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (-1) ^ n

end

end A108982.P12411321617916047172

namespace A108982

/-- `5*a(n-1)-(-1)^n` -/
def P12411321617916047172.Spec : Prop :=
  ∀ n, P12411321617916047172.a n = A108982 n

end A108982

/-! ## A108982.P1568417897414507647

`xor(3, a(n-1)/(1-4/5))` with `a(0)=1`
-/

namespace A108982.P1568417897414507647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (4 : ℚ) / 5)))

end

end A108982.P1568417897414507647

namespace A108982

/-- `xor(3, a(n-1)/(1-4/5))` -/
def P1568417897414507647.Spec : Prop :=
  ∀ n, P1568417897414507647.a n = A108982 n

end A108982

/-! ## A108982.P5813251535448640266

`floor(A199309(n)/3)`
-/

namespace A108982.P5813251535448640266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199309 n : ℚ) / 3⌋

end

end A108982.P5813251535448640266

namespace A108982

/-- `floor(A199309(n)/3)` -/
def P5813251535448640266.Spec : Prop :=
  ∀ n, P5813251535448640266.a n = A108982 n

end A108982

/-! ## A108982.P6330803450064891714

`ceil(A198766(n)/3)`
-/

namespace A108982.P6330803450064891714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198766 n : ℚ) / 3⌉

end

end A108982.P6330803450064891714

namespace A108982

/-- `ceil(A198766(n)/3)` -/
def P6330803450064891714.Spec : Prop :=
  ∀ n, P6330803450064891714.a n = A108982 n

end A108982

/-! ## A108982.P15491836894405077497

`ceil(A026396(2*n)/3)`
-/

namespace A108982.P15491836894405077497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026396 (2 * n) : ℚ) / 3⌉

end

end A108982.P15491836894405077497

namespace A108982

/-- `ceil(A026396(2*n)/3)` -/
def P15491836894405077497.Spec : Prop :=
  ∀ n, P15491836894405077497.a n = A108982 n

end A108982

/-! ## A108982.P10388360407743706295

`A015531(n+1)+2*A015531(n)`
-/

namespace A108982.P10388360407743706295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) + 2 * A015531 n

end

end A108982.P10388360407743706295

namespace A108982

/-- `A015531(n+1)+2*A015531(n)` -/
def P10388360407743706295.Spec : Prop :=
  ∀ n, P10388360407743706295.a n = A108982 n

end A108982

/-!
# A108983: Inverse binomial transform of A003950.

The programs for A108983, the canonical program `A108983.P17650008662528661778` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108983 has offset 0).

The definition of A108983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108983.P17650008662528661778

`5*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108983

/-- `5*a(n-1)+6*a(n-2)` -/
def P17650008662528661778.Spec : Prop :=
  ∀ n, (P17650008662528661778.a n : ℤ) = A108983 n

theorem P17650008662528661778.correct : P17650008662528661778.Spec := by
  intro n
  simp only [A108983]

end A108983

/-! ## A108983.P8497631605508734374

`(8*6^n-(-1)^n)/7`
-/

namespace A108983.P8497631605508734374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 6 ^ n : ℤ) - (-1) ^ n : ℚ) / 7

end

end A108983.P8497631605508734374

namespace A108983

/-- `(8*6^n-(-1)^n)/7` -/
def P8497631605508734374.Spec : Prop :=
  ∀ n, P8497631605508734374.a n = (A108983 n : ℚ)

theorem P8497631605508734374.correct : P8497631605508734374.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A108983, Nat.add_sub_cancel, A108983.P8497631605508734374.a, A108983.P17650008662528661778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A108983, Nat.add_sub_cancel, A108983.P8497631605508734374.a, A108983.P17650008662528661778.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A108983

/-! ## A108983.P16260036808655092003

`ogf((1+2x)/(1-5x-6x^2))`
-/

namespace A108983.P16260036808655092003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, -6] n

end

end A108983.P16260036808655092003

namespace A108983

/-- `ogf((1+2x)/(1-5x-6x^2))` -/
def P16260036808655092003.Spec : Prop :=
  ∀ n, P16260036808655092003.a n = A108983 n

end A108983

/-! ## A108983.P18085449149326772114

`6*a(n-1)-(-1)^n` with `a(0)=1`
-/

namespace A108983.P18085449149326772114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (-1) ^ n

end

end A108983.P18085449149326772114

namespace A108983

/-- `6*a(n-1)-(-1)^n` -/
def P18085449149326772114.Spec : Prop :=
  ∀ n, P18085449149326772114.a n = A108983 n

end A108983

/-! ## A108983.P2356914926475229344

`lcm(6, a(n-1))-(-1)^n` with `a(0)=1`
-/

namespace A108983.P2356914926475229344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 6 (a (n - 1)) : ℤ) - (-1) ^ n

end

end A108983.P2356914926475229344

namespace A108983

/-- `lcm(6, a(n-1))-(-1)^n` -/
def P2356914926475229344.Spec : Prop :=
  ∀ n, P2356914926475229344.a n = A108983 n

end A108983

/-! ## A108983.P2328479575738428404

`ceil(6*a(n-1)-cos(π*n))` with `a(0)=1`
-/

namespace A108983.P2328479575738428404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(6 * a (n - 1) : ℝ) - Real.cos (Real.pi * (n : ℝ))⌉

end

end A108983.P2328479575738428404

namespace A108983

/-- `ceil(6*a(n-1)-cos(π*n))` -/
def P2328479575738428404.Spec : Prop :=
  ∀ n, P2328479575738428404.a n = A108983 n

end A108983

/-! ## A108983.P8009998526188402392

`xor(6*a(n-1), and(3, a(n-1)))` with `a(0)=1`
-/

namespace A108983.P8009998526188402392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (6 * a (n - 1)) (Nat.land 3 (a (n - 1)))

end

end A108983.P8009998526188402392

namespace A108983

/-- `xor(6*a(n-1), and(3, a(n-1)))` -/
def P8009998526188402392.Spec : Prop :=
  ∀ n, (P8009998526188402392.a n : ℤ) = A108983 n

end A108983

/-! ## A108983.P17162079016085367107

`A015540(n)+6^n`
-/

namespace A108983.P17162079016085367107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n + (6 ^ n : ℤ)

end

end A108983.P17162079016085367107

namespace A108983

/-- `A015540(n)+6^n` -/
def P17162079016085367107.Spec : Prop :=
  ∀ n, P17162079016085367107.a n = A108983 n

end A108983

/-! ## A108983.P7191334996075103048

`A270576(n)-a(n-1)` with `a(0)=1`
-/

namespace A108983.P7191334996075103048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270576 n - a (n - 1)

end

end A108983.P7191334996075103048

namespace A108983

/-- `A270576(n)-a(n-1)` -/
def P7191334996075103048.Spec : Prop :=
  ∀ n, P7191334996075103048.a n = A108983 n

end A108983

/-! ## A108983.P2348705165379345926

`A274073(n)+A109501(n)`
-/

namespace A108983.P2348705165379345926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274073 n + A109501 n

end

end A108983.P2348705165379345926

namespace A108983

/-- `A274073(n)+A109501(n)` -/
def P2348705165379345926.Spec : Prop :=
  ∀ n, P2348705165379345926.a n = A108983 n

end A108983

/-! ## A108983.P13245840616066348245

`abs(6*A057077(A016969(n))*a(n-1)-1)` with `a(0)=1`
-/

namespace A108983.P13245840616066348245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |6 * A057077 (A016969 n).toNat * a (n - 1) - 1|

end

end A108983.P13245840616066348245

namespace A108983

/-- `abs(6*A057077(A016969(n))*a(n-1)-1)` -/
def P13245840616066348245.Spec : Prop :=
  ∀ n, P13245840616066348245.a n = A108983 n

end A108983

/-! ## A108983.P6121687027106370640

`Δ[floor(∑[6*a(n-1)]/7)]` with `a(0)=9, a(1)=8`
-/

namespace A108983.P6121687027106370640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9, 8] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108983.P6121687027106370640

namespace A108983

/-- `Δ[floor(∑[6*a(n-1)]/7)]` -/
def P6121687027106370640.Spec : Prop :=
  ∀ n, P6121687027106370640.a n = A108983 n

end A108983

/-! ## A108983.P13366988848484056290

`round(A164559(n+3)/63)`
-/

namespace A108983.P13366988848484056290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A164559 (n + 3) : ℚ) / 63)

end

end A108983.P13366988848484056290

namespace A108983

/-- `round(A164559(n+3)/63)` -/
def P13366988848484056290.Spec : Prop :=
  ∀ n, P13366988848484056290.a n = A108983 n

end A108983

/-!
# A108984: Inverse binomial transform of A003951.

The programs for A108984, the canonical program `A108984.P16292981819845114760` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108984 has offset 0).

The definition of A108984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108984.P16292981819845114760

`6*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108984

/-- `6*a(n-1)+7*a(n-2)` -/
def P16292981819845114760.Spec : Prop :=
  ∀ n, (P16292981819845114760.a n : ℤ) = A108984 n

theorem P16292981819845114760.correct : P16292981819845114760.Spec := by
  intro n
  simp only [A108984]

end A108984

/-! ## A108984.P17291318049545158165

`ogf((1+2x)/(1-6x-7x^2))`
-/

namespace A108984.P17291318049545158165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, -7] n

end

end A108984.P17291318049545158165

namespace A108984

/-- `ogf((1+2x)/(1-6x-7x^2))` -/
def P17291318049545158165.Spec : Prop :=
  ∀ n, P17291318049545158165.a n = A108984 n

end A108984

/-! ## A108984.P8382836246747347276

`round(9*7^n/8)`
-/

namespace A108984.P8382836246747347276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 * ((7 ^ n : ℚ) / 8))

end

end A108984.P8382836246747347276

namespace A108984

/-- `round(9*7^n/8)` -/
def P8382836246747347276.Spec : Prop :=
  ∀ n, P8382836246747347276.a n = A108984 n

end A108984

/-! ## A108984.P3607951561626940533

`-xor(1, -(7*a(n-1)))` with `a(0)=1`
-/

namespace A108984.P3607951561626940533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (-(7 * a (n - 1)))

end

end A108984.P3607951561626940533

namespace A108984

/-- `-xor(1, -(7*a(n-1)))` -/
def P3607951561626940533.Spec : Prop :=
  ∀ n, P3607951561626940533.a n = A108984 n

end A108984

/-! ## A108984.P15546470000737771878

`7*a(n-1)-(-1)^n` with `a(0)=1`
-/

namespace A108984.P15546470000737771878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - (-1) ^ n

end

end A108984.P15546470000737771878

namespace A108984

/-- `7*a(n-1)-(-1)^n` -/
def P15546470000737771878.Spec : Prop :=
  ∀ n, P15546470000737771878.a n = A108984 n

end A108984

/-! ## A108984.P10394323892355376454

`lcm(7, a(n-1))-(-1)^n` with `a(0)=1`
-/

namespace A108984.P10394323892355376454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - (-1) ^ n

end

end A108984.P10394323892355376454

namespace A108984

/-- `lcm(7, a(n-1))-(-1)^n` -/
def P10394323892355376454.Spec : Prop :=
  ∀ n, P10394323892355376454.a n = A108984 n

end A108984

/-! ## A108984.P13908953552961958566

`xor(1, 7*a(n-1)+1)-1` with `a(0)=1`
-/

namespace A108984.P13908953552961958566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (7 * a (n - 1) + 1) - 1

end

end A108984.P13908953552961958566

namespace A108984

/-- `xor(1, 7*a(n-1)+1)-1` -/
def P13908953552961958566.Spec : Prop :=
  ∀ n, P13908953552961958566.a n = A108984 n

end A108984

/-! ## A108984.P2969017998138193674

`A015552(n+1)+2*A015552(n)`
-/

namespace A108984.P2969017998138193674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) + 2 * A015552 n

end

end A108984.P2969017998138193674

namespace A108984

/-- `A015552(n+1)+2*A015552(n)` -/
def P2969017998138193674.Spec : Prop :=
  ∀ n, P2969017998138193674.a n = A108984 n

end A108984

/-! ## A108984.P4871171850802291213

`floor(A199486(n)/4)`
-/

namespace A108984.P4871171850802291213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199486 n : ℚ) / 4⌋

end

end A108984.P4871171850802291213

namespace A108984

/-- `floor(A199486(n)/4)` -/
def P4871171850802291213.Spec : Prop :=
  ∀ n, P4871171850802291213.a n = A108984 n

end A108984

/-! ## A108984.P16657937648142175287

`ceil((3*3/4*A000420(n)-1)/2)`
-/

namespace A108984.P16657937648142175287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * ((3 : ℚ) / 4 * (A000420 n : ℚ)) - 1) / 2⌉

end

end A108984.P16657937648142175287

namespace A108984

/-- `ceil((3*3/4*A000420(n)-1)/2)` -/
def P16657937648142175287.Spec : Prop :=
  ∀ n, P16657937648142175287.a n = A108984 n

end A108984

/-! ## A108984.P6429207349370924138

`A109808(n+1)-∑[A083232(n)]`
-/

namespace A108984.P6429207349370924138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108984.P6429207349370924138

namespace A108984

/-- `A109808(n+1)-∑[A083232(n)]` -/
def P6429207349370924138.Spec : Prop :=
  ∀ n, P6429207349370924138.a n = A108984 n

end A108984

/-!
# A108985: Expansion of (x+1)*(x^3-x^2-x-1)/((1-x)*(x^2+2*x-1)*(x^2+x+1)).

The programs for A108985, the canonical program `A108985.P4683522733080283179` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108985 has offset 0).

The definition of A108985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2-x^4)/(1-2x-x^2-x^3+2x^4+x^5))` (program `A108985.P4683522733080283179`, by `A108985.P4683522733080283179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108985.P4683522733080283179

`ogf((1+2x+2x^2-x^4)/(1-2x-x^2-x^3+2x^4+x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108985

/-- `ogf((1+2x+2x^2-x^4)/(1-2x-x^2-x^3+2x^4+x^5))` -/
def P4683522733080283179.Spec : Prop :=
  ∀ n, P4683522733080283179.a n = A108985 n

theorem P4683522733080283179.correct : P4683522733080283179.Spec := by
  intro n
  simp only [A108985]

end A108985

/-! ## A108985.P3895974007844171309

`2*a(n-1)+a(n-2)+a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=27, a(4)=66`
-/

namespace A108985.P3895974007844171309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11, 27, 66] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3) - 2 * a (n - 4) - a (n - 5)

end

end A108985.P3895974007844171309

namespace A108985

/-- `2*a(n-1)+a(n-2)+a(n-3)-2*a(n-4)-a(n-5)` -/
def P3895974007844171309.Spec : Prop :=
  ∀ n, P3895974007844171309.a n = A108985 n

end A108985

/-! ## A108985.P15675713255706419311

`2*a(n-1)+a(n-2)+gcd(2, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A108985.P15675713255706419311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) + (a (n - 2) + Nat.gcd 2 (a (n - 1)))

end

end A108985.P15675713255706419311

namespace A108985

/-- `2*a(n-1)+a(n-2)+gcd(2, a(n-1))` -/
def P15675713255706419311.Spec : Prop :=
  ∀ n, (P15675713255706419311.a n : ℤ) = A108985 n

end A108985

/-! ## A108985.P16394960567330640622

`or(1, a(n-1))+1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A108985.P16394960567330640622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor 1 (a (n - 1)) + 1 + (a (n - 1) + a (n - 2))

end

end A108985.P16394960567330640622

namespace A108985

/-- `or(1, a(n-1))+1+a(n-1)+a(n-2)` -/
def P16394960567330640622.Spec : Prop :=
  ∀ n, (P16394960567330640622.a n : ℤ) = A108985 n

end A108985

/-! ## A108985.P13368704114072299189

`floor(A048654(2*(n+1))/A048655(n+1))`
-/

namespace A108985.P13368704114072299189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048654 (2 * (n + 1)) : ℚ) / (A048655 (n + 1) : ℚ)⌋

end

end A108985.P13368704114072299189

namespace A108985

/-- `floor(A048654(2*(n+1))/A048655(n+1))` -/
def P13368704114072299189.Spec : Prop :=
  ∀ n, P13368704114072299189.a n = A108985 n

end A108985

/-! ## A108985.P2024501738389407655

`floor(A006451(2*n+3)/A078343(n+3))`
-/

namespace A108985.P2024501738389407655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006451 (2 * n + 3) : ℚ) / (A078343 (n + 3) : ℚ)⌋

end

end A108985.P2024501738389407655

namespace A108985

/-- `floor(A006451(2*n+3)/A078343(n+3))` -/
def P2024501738389407655.Spec : Prop :=
  ∀ n, P2024501738389407655.a n = A108985 n

end A108985

/-!
# A108989: Composite numbers k with primitive root 2; i.e., the order of 2 modulo k is phi(k).

The programs for A108989, there is no canonical definition to state claims against.
-/

/-! ## A108989.P15544692676320204554

`∩[A001597(n+1), A167791(n+1)]`
-/

namespace A108989.P15544692676320204554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P15544692676320204554

/-! ## A108989.P3328486307059420134

`∩[A001694(n+1), A167791(n+1)]`
-/

namespace A108989.P3328486307059420134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P3328486307059420134

/-! ## A108989.P10476636729619233066

`∩[A025475(n+1), A167791(n+1)]`
-/

namespace A108989.P10476636729619233066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P10476636729619233066

/-! ## A108989.P12924879191631223557

`∩[A057109(n+1), A167791(n+1)]`
-/

namespace A108989.P12924879191631223557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P12924879191631223557

/-! ## A108989.P3694367705906844160

`∩[A062739(n+1), A167791(n+1)]`
-/

namespace A108989.P3694367705906844160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P3694367705906844160

/-! ## A108989.P5420922476412951457

`∩[A070003(n+1), A167791(n+1)]`
-/

namespace A108989.P5420922476412951457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P5420922476412951457

/-! ## A108989.P972883830776075556

`∩[A072777(n+1), A167791(n+1)]`
-/

namespace A108989.P972883830776075556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P972883830776075556

/-! ## A108989.P9806180916373597303

`∩[A073540(n+1), A167791(n+1)]`
-/

namespace A108989.P9806180916373597303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P9806180916373597303

/-! ## A108989.P6470798777554554743

`∩[A075109(n+1), A167791(n+1)]`
-/

namespace A108989.P6470798777554554743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P6470798777554554743

/-! ## A108989.P17790954456701182814

`∩[A076292(n+1), A167791(n+1)]`
-/

namespace A108989.P17790954456701182814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108989.P17790954456701182814

/-!
# A108991: Main diagonal of triangle A108990, in which the g.f. of row n, R_n(x), satisfies: [x^k] R_{n+1}(x) = [x^k] (1 + x*R_n(x))^(n+1) for k=0..n+1.

The programs for A108991, there is no canonical definition to state claims against.
-/

/-! ## A108991.P5653832238483853779

`A108990(∑[n]+n)`
-/

namespace A108991.P5653832238483853779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108990 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A108991.P5653832238483853779

/-! ## A108991.P10941113536661778416

`A108990(A000096(n))+char[10]`
-/

namespace A108991.P10941113536661778416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108990 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108991.P10941113536661778416

/-! ## A108991.P10992408457717719693

`A047996(n)*A108990(A000096(n))`
-/

namespace A108991.P10992408457717719693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A108990 (A000096 n).toNat

end

end A108991.P10992408457717719693

/-! ## A108991.P7402045511947721364

`A108990(A000096(n))*A194673(n)`
-/

namespace A108991.P7402045511947721364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108990 (A000096 n).toNat * A194673 n

end

end A108991.P7402045511947721364

/-! ## A108991.P15652137301509157173

`A007318(∑[n])*A108990(A000096(n))`
-/

namespace A108991.P15652137301509157173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A108990 (A000096 n).toNat

end

end A108991.P15652137301509157173

/-!
# A108992: Second diagonal of triangle A108990, in which the g.f. of row n, R_n(x), satisfies: [x^k] R_{n+1}(x) = [x^k] (1 + x*R_n(x))^(n+1) for k=0..n+1.

The programs for A108992, there is no canonical definition to state claims against.
-/

/-! ## A108992.P15653315228554097100

`(n+1)*A108993(n)`
-/

namespace A108992.P15653315228554097100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108993 n

end

end A108992.P15653315228554097100

/-! ## A108992.P10052359856305278843

`A108993(n)*A291769(n)`
-/

namespace A108992.P10052359856305278843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108993 n * A291769 n

end

end A108992.P10052359856305278843

/-! ## A108992.P3488210080453027783

`A108993(n)*A158416(2*n)`
-/

namespace A108992.P3488210080453027783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108993 n * A158416 (2 * n)

end

end A108992.P3488210080453027783

/-! ## A108992.P3984465701220852297

`A108993(n)*A110303(comp[19*n])`
-/

namespace A108992.P3984465701220852297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108993 n * A110303 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A108992.P3984465701220852297

/-! ## A108992.P2705040091495334114

`A108993(n)*A210795(A000124(n))`
-/

namespace A108992.P2705040091495334114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108993 n * A210795 (A000124 n).toNat

end

end A108992.P2705040091495334114

/-!
# A108993: a(n) = A108992(n)/(n+1). A(x) = 1/x*series_reversion(x/G108996(x)) where G108996(x) is g.f. of A108996.

The programs for A108993, there is no canonical definition to state claims against.
-/

/-! ## A108993.P11174473376629063404

`A108992(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108993.P11174473376629063404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108992 n : ℚ) / (n + 1 : ℚ)

end

end A108993.P11174473376629063404

/-! ## A108993.P7295575637503301331

`floor(A108992(n)/A291769(n))`
-/

namespace A108993.P7295575637503301331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108992 n : ℚ) / (A291769 n : ℚ)⌋

end

end A108993.P7295575637503301331

/-! ## A108993.P1145214301215114042

`A108992(n)/A291769(n)*A057427(A000285(n))`
-/

namespace A108993.P1145214301215114042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108992 n : ℚ) / (A291769 n : ℚ) * (A057427 (A000285 n).toNat : ℚ)

end

end A108993.P1145214301215114042

/-! ## A108993.P16008561548201257073

`A108992(n)/A291769(n)*A000188(A194673(n))`
-/

namespace A108993.P16008561548201257073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108992 n : ℚ) / (A291769 n : ℚ) * (A000188 (A194673 n).toNat : ℚ)

end

end A108993.P16008561548201257073

/-! ## A108993.P3966412354384370371

`A108992(n)/A291769(n)*A014963(A315796(n))`
-/

namespace A108993.P3966412354384370371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108992 n : ℚ) / (A291769 n : ℚ) * (A014963 (A315796 n).toNat : ℚ)

end

end A108993.P3966412354384370371

/-!
# A108994: Third diagonal of triangle A108990, in which the g.f. of row n, R_n(x), satisfies: [x^k] R_{n+1}(x) = [x^k] (1 + x*R_n(x))^(n+1) for k=0..n+1.

The programs for A108994, there is no canonical definition to state claims against.
-/

/-! ## A108994.P10847448123751056952

`(n+2)/2*A108995(n)`
-/

namespace A108994.P10847448123751056952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A108995 n : ℚ)

end

end A108994.P10847448123751056952

/-! ## A108994.P14502643419792635749

`A108995(n)/2*A291769(A291769(n))`
-/

namespace A108994.P14502643419792635749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108995 n : ℚ) / 2 * (A291769 (A291769 n).toNat : ℚ)

end

end A108994.P14502643419792635749

/-! ## A108994.P2233934777343393650

`A108990(∑[n+3])`
-/

namespace A108994.P2233934777343393650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108994.P2233934777343393650

/-!
# A108995: a(n) = A108994(n)*2/(n+2) for n>=0.

The programs for A108995, there is no canonical definition to state claims against.
-/

/-! ## A108995.P18434181541503579889

`A108994(n)*2/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108995.P18434181541503579889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108994 n * 2 : ℚ) / (n + 2 : ℚ)

end

end A108995.P18434181541503579889

/-! ## A108995.P15863413083491543005

`A108994(n)/(A323022(n+2)+n/2)`
-/

namespace A108995.P15863413083491543005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108994 n : ℚ) / ((A323022 (n + 2) : ℚ) + (n : ℚ) / 2)

end

end A108995.P15863413083491543005

/-!
# A108996: G.f.: A(x) = x/series_reversion(x*G108993(x)) where G108993(x) is g.f. of A108993.

The programs for A108996, there is no canonical definition to state claims against.
-/

/-! ## A108996.P9832549781407022154

`A100993(A261005(n))-A000009(n)`
-/

namespace A108996.P9832549781407022154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100993 (A261005 n).toNat - A000009 n

end

end A108996.P9832549781407022154

/-! ## A108996.P9527303374064022270

`A002264(A335867(n)+A283543(n+1))`
-/

namespace A108996.P9527303374064022270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A335867 n + A283543 (n + 1)).toNat

end

end A108996.P9527303374064022270

/-!
# A108998: Square array, read by antidiagonals, where row n equals the coordination sequence of B_n lattice, for n >= 0.

The programs for A108998, there is no canonical definition to state claims against.
-/

/-! ## A108998.P11522825301108336906

`A089869(A054123(n)*A266213(n))`
-/

namespace A108998.P11522825301108336906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A054123 n * A266213 n).toNat

end

end A108998.P11522825301108336906

/-! ## A108998.P17936364333104714819

`A089869(A119269(n+1)*A266213(n))`
-/

namespace A108998.P17936364333104714819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A119269 (n + 1) * A266213 n).toNat

end

end A108998.P17936364333104714819

/-! ## A108998.P10092368891278621871

`A054123(n)*A266213(n)*A278657(n)!!`
-/

namespace A108998.P10092368891278621871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n * A266213 n * (Nat.factorial (Nat.factorial (A278657 n).toNat) : ℤ)

end

end A108998.P10092368891278621871

/-! ## A108998.P9757947915660989410

`A341935(A119269(n+1)*A266213(n))`
-/

namespace A108998.P9757947915660989410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A119269 (n + 1) * A266213 n).toNat

end

end A108998.P9757947915660989410

/-!
# A108999: Main diagonal of square array A108998, in which row n equals the coordination sequence of B_n lattice.

The programs for A108999, there is no canonical definition to state claims against.
-/

/-! ## A108999.P12363828525302555774

`A108998(∑[4*n])`
-/

namespace A108999.P12363828525302555774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108999.P12363828525302555774

/-! ## A108999.P14685691713754268589

`record[A108998(n*A008619(n))]`
-/

namespace A108999.P14685691713754268589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108999.P14685691713754268589

/-! ## A108999.P4672592282707897243

`record[A108998(A266287(n)+1+n)]`
-/

namespace A108999.P4672592282707897243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A266287 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108999.P4672592282707897243

/-! ## A108999.P8591977718203653485

`record[A108998(n*A032742(n+2))]`
-/

namespace A108999.P8591977718203653485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 ((n : ℤ) * A032742 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108999.P8591977718203653485

/-! ## A108999.P16049382174139864416

`lcm(A033999(n), A108998(A046092(n)))`
-/

namespace A108999.P16049382174139864416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A108998 (A046092 n).toNat)

end

end A108999.P16049382174139864416

