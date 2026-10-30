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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A162200: Number on the positive y axis of the n-th horizontal component in the graph of the "mountain path" function for prime numbers.

The programs for A162200, there is no canonical definition to state claims against.
-/

/-! ## A162200.P11663281138266447950

`∑[A162201(floor(acot(n)+n))]`
-/

namespace A162200.P11663281138266447950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162200.P11663281138266447950

/-! ## A162200.P10345304612023195066

`A162201(n)+a(n-1)` with `a(0)=0`
-/

namespace A162200.P10345304612023195066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A162201 n + a (n - 1)

end

end A162200.P10345304612023195066

/-! ## A162200.P5363767159785049426

`∑[A162201(floor(sqrt(n²+1)))]`
-/

namespace A162200.P5363767159785049426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162200.P5363767159785049426

/-! ## A162200.P16849316256833994387

`∑[A162201(abs(1-n)+1)]-2`
-/

namespace A162200.P16849316256833994387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A162200.P16849316256833994387

/-! ## A162200.P7906658162033947990

`∑[(A162341(n)-1)*(-1)^n]`
-/

namespace A162200.P7906658162033947990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162341 n - 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162200.P7906658162033947990

/-! ## A162200.P8086477409518379313

`abs(∑[A162201(A028310(n))])`
-/

namespace A162200.P8086477409518379313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A162200.P8086477409518379313

/-! ## A162200.P1317212788252970404

`abs(∑[A162201(A193739(∑[n]))])`
-/

namespace A162200.P1317212788252970404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A193739 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A162200.P1317212788252970404

/-! ## A162200.P6596812387781590054

`abs(∑[A162201(A000007(n)+n)])`
-/

namespace A162200.P6596812387781590054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A162200.P6596812387781590054

/-! ## A162200.P4174688398147908753

`abs(∑[A162201(A004277(n)-n)])`
-/

namespace A162200.P4174688398147908753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A162200.P4174688398147908753

/-! ## A162200.P15714590295467166010

`∑[A162201(A028310(n))]%A000032(n)`
-/

namespace A162200.P15714590295467166010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000032 n)

end

end A162200.P15714590295467166010

/-!
# A162201: First differences of A162200.

The programs for A162201, there is no canonical definition to state claims against.
-/

/-! ## A162201.P9364558110688056599

`(1-A162341(n+1))*(-1)^n`
-/

namespace A162201.P9364558110688056599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A162341 (n + 1)) * (-1) ^ n

end

end A162201.P9364558110688056599

/-! ## A162201.P8222296589043594141

`(A162341(n+1)-1)*A062157(n)`
-/

namespace A162201.P8222296589043594141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162341 (n + 1) - 1) * A062157 n

end

end A162201.P8222296589043594141

/-! ## A162201.P6446195464301332449

`(1-A162341(n+1))/A033999(n)`
-/

namespace A162201.P6446195464301332449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A162341 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A162201.P6446195464301332449

/-! ## A162201.P6684239362092228644

`(A162341(n+1)-1)*A033999(n+1)`
-/

namespace A162201.P6684239362092228644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162341 (n + 1) - 1) * A033999 (n + 1)

end

end A162201.P6684239362092228644

/-! ## A162201.P11935672233429150541

`Δ[A162200(n+1)]`
-/

namespace A162201.P11935672233429150541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162201.P11935672233429150541

/-! ## A162201.P2528116201168282093

`A162200(n+2)-A162200(n+1)`
-/

namespace A162201.P2528116201168282093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162200 (n + 2) - A162200 (n + 1)

end

end A162201.P2528116201168282093

/-!
# A162206: Triangle read by rows in which row n (n >= 1) gives coefficients in expansion of the polynomial f(n) * Product_{i=1..n-1} f(2i), where f(k) = (1 - x^k)/(1-x).

The programs for A162206, there is no canonical definition to state claims against.
-/

/-! ## A162206.P14899176721421801596

`A260999(A340882(n+1)+1)`
-/

namespace A162206.P14899176721421801596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A340882 (n + 1) + 1).toNat

end

end A162206.P14899176721421801596

/-! ## A162206.P11011323343456620379

`A008302(n+4)-A010054(A000051(n))`
-/

namespace A162206.P11011323343456620379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (n + 4) - A010054 (A000051 n).toNat

end

end A162206.P11011323343456620379

/-! ## A162206.P13259852060348715256

`A008302(n+4)-A156660(A000079(n))`
-/

namespace A162206.P13259852060348715256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (n + 4) - A156660 (A000079 n).toNat

end

end A162206.P13259852060348715256

/-! ## A162206.P16331374424807089677

`A008302(n+4)-A205745(A290301(n))`
-/

namespace A162206.P16331374424807089677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (n + 4) - A205745 (A290301 n).toNat

end

end A162206.P16331374424807089677

/-! ## A162206.P8444065284624231901

`C(A008302(n+4), A156194(A000225(n)))`
-/

namespace A162206.P8444065284624231901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008302 (n + 4)).toNat (A156194 (A000225 n).toNat).toNat

end

end A162206.P8444065284624231901

/-!
# A162208: Number of reduced words of length n in the Weyl group D_5.

The programs for A162208, there is no canonical definition to state claims against.
-/

/-! ## A162208.P7076715142833887384

`A162206(A187829(n+1)+24)`
-/

namespace A162208.P7076715142833887384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162206 (A187829 (n + 1) + 24).toNat

end

end A162208.P7076715142833887384

/-!
# A162209: Number of reduced words of length n in the Weyl group D_6.

The programs for A162209, there is no canonical definition to state claims against.
-/

/-! ## A162209.P1331829132883048235

`∑[∑[A025581(A053493(n))]]`
-/

namespace A162209.P1331829132883048235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A053493 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162209.P1331829132883048235

/-!
# A162210: Number of reduced words of length n in the Weyl group D_7.

The programs for A162210, there is no canonical definition to state claims against.
-/

/-! ## A162210.P5114865176752504151

`A161716(n)-A184944(3*n)%2`
-/

namespace A162210.P5114865176752504151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161716 n - Int.tmod (A184944 (3 * n)) 2

end

end A162210.P5114865176752504151

/-!
# A162211: Number of reduced words of length n in the Weyl group D_8.

The programs for A162211, there is no canonical definition to state claims against.
-/

/-! ## A162211.P5399524562391935435

`A161717(n)-A007031(A000930(n))`
-/

namespace A162211.P5399524562391935435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161717 n - A007031 (A000930 n).toNat

end

end A162211.P5399524562391935435

/-!
# A162212: Number of reduced words of length n in the Weyl group D_9.

The programs for A162212, there is no canonical definition to state claims against.
-/

/-! ## A162212.P11864830233249199431

`A161733(n)-A198315(A198315(2*n+1))`
-/

namespace A162212.P11864830233249199431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161733 n - A198315 (A198315 (2 * n + 1)).toNat

end

end A162212.P11864830233249199431

/-!
# A162213: a(n) = the smallest positive multiple of n with exactly n digits when written in binary.

The programs for A162213, the canonical program `A162213.P5288773672748712449` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162213 has offset 1).

The definition of A162213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162213.P5288773672748712449

`(n+1)*ceil(2^n/(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162213

/-- `(n+1)*ceil(2^n/(n+1))` -/
def P5288773672748712449.Spec : Prop :=
  ∀ n, P5288773672748712449.a n = A162213 (n + 1)

theorem P5288773672748712449.correct : P5288773672748712449.Spec := by
  intro n
  simp only [A162213, Nat.add_sub_cancel]

end A162213

/-! ## A162213.P10043612925245875332

`2^n+n-(2^n+n)%(n+1)`
-/

namespace A162213.P10043612925245875332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + n : ℤ) - (((2 ^ n + n) % (n + 1) : ℕ) : ℤ)

end

end A162213.P10043612925245875332

namespace A162213

/-- `2^n+n-(2^n+n)%(n+1)` -/
def P10043612925245875332.Spec : Prop :=
  ∀ n, P10043612925245875332.a n = A162213 (n + 1)

end A162213

/-! ## A162213.P13646959546840024572

`-(xor(n, -1)*A053637(n+1))`
-/

namespace A162213.P13646959546840024572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A053637 (n + 1))

end

end A162213.P13646959546840024572

namespace A162213

/-- `-(xor(n, -1)*A053637(n+1))` -/
def P13646959546840024572.Spec : Prop :=
  ∀ n, P13646959546840024572.a n = A162213 (n + 1)

end A162213

/-! ## A162213.P4342624858871024189

`2^n-(A000225(n)%(n+1)-n)`
-/

namespace A162213.P4342624858871024189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Int.tmod (A000225 n) (n + 1 : ℤ) - (n : ℤ))

end

end A162213.P4342624858871024189

namespace A162213

/-- `2^n-(A000225(n)%(n+1)-n)` -/
def P4342624858871024189.Spec : Prop :=
  ∀ n, P4342624858871024189.a n = A162213 (n + 1)

end A162213

/-! ## A162213.P16424839245274614733

`A006127(n)-A128311(n+1)`
-/

namespace A162213.P16424839245274614733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A128311 (n + 1)

end

end A162213.P16424839245274614733

namespace A162213

/-- `A006127(n)-A128311(n+1)` -/
def P16424839245274614733.Spec : Prop :=
  ∀ n, P16424839245274614733.a n = A162213 (n + 1)

end A162213

/-! ## A162213.P9630045374705631224

`A000079(n)-A128311(n+1)+n`
-/

namespace A162213.P9630045374705631224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A128311 (n + 1) + (n : ℤ)

end

end A162213.P9630045374705631224

namespace A162213

/-- `A000079(n)-A128311(n+1)+n` -/
def P9630045374705631224.Spec : Prop :=
  ∀ n, P9630045374705631224.a n = A162213 (n + 1)

end A162213

/-! ## A162213.P8909226203097619387

`abs(A001478(n+1)*A053637(n+1))`
-/

namespace A162213.P8909226203097619387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (n + 1) * A053637 (n + 1)|

end

end A162213.P8909226203097619387

namespace A162213

/-- `abs(A001478(n+1)*A053637(n+1))` -/
def P8909226203097619387.Spec : Prop :=
  ∀ n, P8909226203097619387.a n = A162213 (n + 1)

end A162213

/-! ## A162213.P12281064235553551490

`(n*2^n)%(n+1)+2^n`
-/

namespace A162213.P12281064235553551490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n % (n + 1) + 2 ^ n

end

end A162213.P12281064235553551490

namespace A162213

/-- `(n*2^n)%(n+1)+2^n` -/
def P12281064235553551490.Spec : Prop :=
  ∀ n, (P12281064235553551490.a n : ℤ) = A162213 (n + 1)

end A162213

/-!
# A162214: a(n) = the largest positive multiple of n with exactly n digits when written in binary.

The programs for A162214, the canonical program `A162214.P10575585893161019573` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162214 has offset 1).

The definition of A162214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162214.P10575585893161019573

`(n+1)*floor((2^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162214

/-- `(n+1)*floor((2^(n+1)-1)/(n+1))` -/
def P10575585893161019573.Spec : Prop :=
  ∀ n, P10575585893161019573.a n = A162214 (n + 1)

theorem P10575585893161019573.correct : P10575585893161019573.Spec := by
  intro n
  simp only [A162214, Nat.add_sub_cancel]

end A162214

/-! ## A162214.P4217467710929778118

`A128093(n+1)-(n+1)`
-/

namespace A162214.P4217467710929778118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128093 (n + 1) - (n + 1 : ℤ)

end

end A162214.P4217467710929778118

namespace A162214

/-- `A128093(n+1)-(n+1)` -/
def P4217467710929778118.Spec : Prop :=
  ∀ n, P4217467710929778118.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P1387883946320319716

`2^(n+1)-A357531(n+1)`
-/

namespace A162214.P1387883946320319716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A357531 (n + 1)

end

end A162214.P1387883946320319716

namespace A162214

/-- `2^(n+1)-A357531(n+1)` -/
def P1387883946320319716.Spec : Prop :=
  ∀ n, P1387883946320319716.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P11327951272071815070

`2^(n+1)-1-A082495(n+1)`
-/

namespace A162214.P11327951272071815070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - 1 - A082495 (n + 1)

end

end A162214.P11327951272071815070

namespace A162214

/-- `2^(n+1)-1-A082495(n+1)` -/
def P11327951272071815070.Spec : Prop :=
  ∀ n, P11327951272071815070.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P8722419894258870198

`A128092(n+1)-A099894(n)`
-/

namespace A162214.P8722419894258870198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128092 (n + 1) - A099894 n

end

end A162214.P8722419894258870198

namespace A162214

/-- `A128092(n+1)-A099894(n)` -/
def P8722419894258870198.Spec : Prop :=
  ∀ n, P8722419894258870198.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P5809191996983289859

`xor(A082495(n+1), A126646(n))`
-/

namespace A162214.P5809191996983289859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082495 (n + 1)) (A126646 n)

end

end A162214.P5809191996983289859

namespace A162214

/-- `xor(A082495(n+1), A126646(n))` -/
def P5809191996983289859.Spec : Prop :=
  ∀ n, P5809191996983289859.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P7004792870325421697

`∑[A000079(n)]-∑[A000079(n)]%(n+1)`
-/

namespace A162214.P7004792870325421697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)

end

end A162214.P7004792870325421697

namespace A162214

/-- `∑[A000079(n)]-∑[A000079(n)]%(n+1)` -/
def P7004792870325421697.Spec : Prop :=
  ∀ n, P7004792870325421697.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P12221640680368856924

`A000225(n+1)-∑[A000225(n)]%(n+1)`
-/

namespace A162214.P12221640680368856924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A162214.P12221640680368856924

namespace A162214

/-- `A000225(n+1)-∑[A000225(n)]%(n+1)` -/
def P12221640680368856924.Spec : Prop :=
  ∀ n, P12221640680368856924.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P14797453849077803320

`xor(A000225(n+1)%(n+1), ∑[A000079(n)])`
-/

namespace A162214.P14797453849077803320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A000225 (n + 1)) (n + 1 : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162214.P14797453849077803320

namespace A162214

/-- `xor(A000225(n+1)%(n+1), ∑[A000079(n)])` -/
def P14797453849077803320.Spec : Prop :=
  ∀ n, P14797453849077803320.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P2133808221941567330

`A000079(n+1)-(A048298(n+1)+A015910(n+1))`
-/

namespace A162214.P2133808221941567330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A048298 (n + 1) + A015910 (n + 1))

end

end A162214.P2133808221941567330

namespace A162214

/-- `A000079(n+1)-(A048298(n+1)+A015910(n+1))` -/
def P2133808221941567330.Spec : Prop :=
  ∀ n, P2133808221941567330.a n = A162214 (n + 1)

end A162214

/-! ## A162214.P10354254430204744016

`A082482(n+1)*A128092(n+1)/A000799(n+1)`
-/

namespace A162214.P10354254430204744016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082482 (n + 1) * A128092 (n + 1) : ℚ) / (A000799 (n + 1) : ℚ)

end

end A162214.P10354254430204744016

namespace A162214

/-- `A082482(n+1)*A128092(n+1)/A000799(n+1)` -/
def P10354254430204744016.Spec : Prop :=
  ∀ n, P10354254430204744016.a n = (A162214 (n + 1) : ℚ)

end A162214

/-! ## A162214.P17222020475402390291

`A082482(n+1)*A128093(n+1)/A053638(n+1)`
-/

namespace A162214.P17222020475402390291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082482 (n + 1) * A128093 (n + 1) : ℚ) / (A053638 (n + 1) : ℚ)

end

end A162214.P17222020475402390291

namespace A162214

/-- `A082482(n+1)*A128093(n+1)/A053638(n+1)` -/
def P17222020475402390291.Spec : Prop :=
  ∀ n, P17222020475402390291.a n = (A162214 (n + 1) : ℚ)

end A162214

/-!
# A162215: a(n) is the smallest multiple of n that is greater than 2n and contains the same number of 1's in its binary representation as n contains.

The programs for A162215, there is no canonical definition to state claims against.
-/

/-! ## A162215.P1964059840920652519

`(n+1)*A183993(A309057(n))`
-/

namespace A162215.P1964059840920652519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A183993 (A309057 n).toNat

end

end A162215.P1964059840920652519

/-! ## A162215.P4203514459616164856

`A183993(A309057(n))*A291769(n)`
-/

namespace A162215.P4203514459616164856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183993 (A309057 n).toNat * A291769 n

end

end A162215.P4203514459616164856

/-! ## A162215.P15697024563504089475

`(A270643(A332647(n))+2)*(n+1)`
-/

namespace A162215.P15697024563504089475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A270643 (A332647 n).toNat + 2) * (n + 1 : ℤ)

end

end A162215.P15697024563504089475

/-! ## A162215.P1897181438641349807

`(A095901(A079496(n))+3)*(n+1)`
-/

namespace A162215.P1897181438641349807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095901 (A079496 n).toNat + 3) * (n + 1 : ℤ)

end

end A162215.P1897181438641349807

/-! ## A162215.P12957136841108185477

`(A010060(A007598(n+2))+3)*(n+1)`
-/

namespace A162215.P12957136841108185477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 (A007598 (n + 2)).toNat + 3) * (n + 1 : ℤ)

end

end A162215.P12957136841108185477

/-!
# A162216: Base-3 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-3 digits, for some k.

The programs for A162216, there is no canonical definition to state claims against.
-/

/-! ## A162216.P1777745368046557771

`A097448(eq[A007305(n), A124010(n+1)])`
-/

namespace A162216.P1777745368046557771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A162216.P1777745368046557771

/-! ## A162216.P12872045493034277958

`record[and(A005963(n+1), A229194(n))]`
-/

namespace A162216.P12872045493034277958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005963 (n + 1)) (A229194 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162216.P12872045493034277958

/-! ## A162216.P7602319018488090088

`lt[A194445(n), dr(A194420(n+1))]`
-/

namespace A162216.P7602319018488090088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194445 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A194420 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162216.P7602319018488090088

/-!
# A162219: Base 4 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-4 digits, for some k.

The programs for A162219, there is no canonical definition to state claims against.
-/

/-! ## A162219.P7244550867381048019

`eq[A132272(A059389(n+1)), A187188(2*n+3)]`
-/

namespace A162219.P7244550867381048019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 (A059389 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162219.P7244550867381048019

/-! ## A162219.P5439348361131687357

`eq[0, A218850(C(floor(n/2)+3, 3))]`
-/

namespace A162219.P5439348361131687357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162219.P5439348361131687357

/-! ## A162219.P2832945186053625399

`A124196(A376656(n+1))`
-/

namespace A162219.P2832945186053625399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124196 (A376656 (n + 1)).toNat

end

end A162219.P2832945186053625399

/-! ## A162219.P3698714872791249128

`eq[1, A279226(A052928(n))]`
-/

namespace A162219.P3698714872791249128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279226 (A052928 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162219.P3698714872791249128

/-! ## A162219.P7130387810517530546

`lt[A062038(A048273(n)), 5]`
-/

namespace A162219.P7130387810517530546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 (A048273 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162219.P7130387810517530546

/-!
# A162221: Greatest integer equal to the sum of the n-th powers of its base-4 digits (written in base 10).

The programs for A162221, there is no canonical definition to state claims against.
-/

/-! ## A162221.P8501455771209080327

`A125291(A057136(n+2)+1)`
-/

namespace A162221.P8501455771209080327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125291 (A057136 (n + 2) + 1).toNat

end

end A162221.P8501455771209080327

/-!
# A162222: Base 5 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-5 digits, for some k.

The programs for A162222, there is no canonical definition to state claims against.
-/

/-! ## A162222.P15316271077436016773

`∑{e}[A000351(n), A010346(#)]`
-/

namespace A162222.P15316271077436016773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010346 (Nat.factorization (f1 n).natAbs p)

end

end A162222.P15316271077436016773

/-! ## A162222.P9805871877015019827

`A010346(A114799(n))*A316079(n)`
-/

namespace A162222.P9805871877015019827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010346 (A114799 n).toNat * A316079 n

end

end A162222.P9805871877015019827

/-! ## A162222.P3893822722669201898

`A010346(A114799(n))%A000351(n)`
-/

namespace A162222.P3893822722669201898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010346 (A114799 n).toNat) (A000351 n)

end

end A162222.P3893822722669201898

/-! ## A162222.P10429665937479528703

`A010346(A028310(n))%A212201(n+1)`
-/

namespace A162222.P10429665937479528703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010346 (A028310 n).toNat) (A212201 (n + 1))

end

end A162222.P10429665937479528703

/-! ## A162222.P3118004071892391177

`A010346(A130024(n+1))%A212201(n+1)`
-/

namespace A162222.P3118004071892391177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010346 (A130024 (n + 1)).toNat) (A212201 (n + 1))

end

end A162222.P3118004071892391177

/-!
# A162224: Greatest integer equal to the sum of the n-th powers of its base-5 digits (written in base 10).

The programs for A162224, there is no canonical definition to state claims against.
-/

/-! ## A162224.P14323564799706865496

`A010346(A139404(n+2))`
-/

namespace A162224.P14323564799706865496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010346 (A139404 (n + 2)).toNat

end

end A162224.P14323564799706865496

/-!
# A162225: Base-6 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-6 digits, for some k.

The programs for A162225, there is no canonical definition to state claims against.
-/

/-! ## A162225.P12420203872387365159

`A010348(a(n-2)+2)` with `a(0)=0, a(1)=1`
-/

namespace A162225.P12420203872387365159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010348 (a (n - 2) + 2).toNat

end

end A162225.P12420203872387365159

/-! ## A162225.P8546835268128159422

`∑{e}[A000420(n), A010348(#)]`
-/

namespace A162225.P8546835268128159422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010348 (Nat.factorization (f1 n).natAbs p)

end

end A162225.P8546835268128159422

/-! ## A162225.P8061408039554355413

`A010348(n-A339171(3*a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A162225.P8061408039554355413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010348 ((n : ℤ) - A339171 (3 * a (n - 2)).toNat).toNat

end

end A162225.P8061408039554355413

/-! ## A162225.P14984817089344099516

`A010348(A028310(n))%A323132(n+1)`
-/

namespace A162225.P14984817089344099516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010348 (A028310 n).toNat) (A323132 (n + 1))

end

end A162225.P14984817089344099516

/-!
# A162228: Base 7 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-7 digits, for some k.

The programs for A162228, there is no canonical definition to state claims against.
-/

/-! ## A162228.P14385993600283729323

`eq[A214281(n), A239700(A211435(n))]`
-/

namespace A162228.P14385993600283729323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A211435 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162228.P14385993600283729323

/-! ## A162228.P3389295626009070954

`record[A350112(n)%A106466(n)]`
-/

namespace A162228.P3389295626009070954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350112 n) (A106466 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162228.P3389295626009070954

/-! ## A162228.P12564784945650792874

`lt[A053186(n*A161247(n+1)), 2]`
-/

namespace A162228.P12564784945650792874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((n : ℤ) * A161247 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162228.P12564784945650792874

/-! ## A162228.P10144239121960268636

`lt[A309683(A238758(n+1)), A007947(n+1)]`
-/

namespace A162228.P10144239121960268636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (A238758 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162228.P10144239121960268636

/-! ## A162228.P14215826317740372814

`lt[A000010(A001463(2*(n+1))), A250120(n+2)]`
-/

namespace A162228.P14215826317740372814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001463 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162228.P14215826317740372814

/-!
# A162231: Base 8 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-8 digits, for some k.

The programs for A162231, there is no canonical definition to state claims against.
-/

/-! ## A162231.P6593092278123881945

`eq[A003108(n), A233202(A038566(n+1))]`
-/

namespace A162231.P6593092278123881945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A038566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162231.P6593092278123881945

/-! ## A162231.P4878365318951822034

`eq[A214018(A214062(n+1)), A214081(n)]`
-/

namespace A162231.P4878365318951822034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214018 (A214062 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162231.P4878365318951822034

/-!
# A162233: Greatest integer equal to the sum of the n-th powers of its base-8 digits (written in base 10).

The programs for A162233, there is no canonical definition to state claims against.
-/

/-! ## A162233.P3096282299101076099

`A186328(A229649(n))%A216995(n+1)`
-/

namespace A162233.P3096282299101076099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186328 (A229649 n).toNat) (A216995 (n + 1))

end

end A162233.P3096282299101076099

/-!
# A162234: Base 9 perfect digital invariants (written in base 10): numbers equal to the sum of the k-th powers of their base-9 digits, for some k.

The programs for A162234, there is no canonical definition to state claims against.
-/

/-! ## A162234.P3926704326492883081

`lt[A130517(A124366(n+4)), 6]`
-/

namespace A162234.P3926704326492883081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A124366 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162234.P3926704326492883081

/-! ## A162234.P11155686637618755201

`∑[A004016(A376618(2*n+5))]+n`
-/

namespace A162234.P11155686637618755201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A376618 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A162234.P11155686637618755201

/-! ## A162234.P17101806898414148875

`lt[A185329(n), A009195(A135274(n+1))]`
-/

namespace A162234.P17101806898414148875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A135274 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162234.P17101806898414148875

/-! ## A162234.P6844537023000015747

`eq[A043268(A252493(n+1)), A043269(n+1)]`
-/

namespace A162234.P6844537023000015747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043268 (A252493 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162234.P6844537023000015747

/-!
# A162237: Primes p such that p^2+3*p+1 is not prime.

The programs for A162237, the canonical program `A162237.P16848246924117746447` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162237 has offset 1).

The definition of A162237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162237.P10196278354246302983

`p?[comp[A094210(n+1)]]`
-/

namespace A162237.P10196278354246302983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A162237.P10196278354246302983

namespace A162237

/-- `p?[comp[A094210(n+1)]]` -/
def P10196278354246302983.Spec : Prop :=
  ∀ n, (P10196278354246302983.a n : ℤ) = A162237 (n + 1)

end A162237

/-! ## A162237.P5111443079229591864

`p?[comp[A045546(n+1)-1]]`
-/

namespace A162237.P5111443079229591864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A162237.P5111443079229591864

namespace A162237

/-- `p?[comp[A045546(n+1)-1]]` -/
def P5111443079229591864.Spec : Prop :=
  ∀ n, (P5111443079229591864.a n : ℤ) = A162237 (n + 1)

end A162237

/-! ## A162237.P3566257295146221189

`p?[comp[A002328(n+1)-2]]`
-/

namespace A162237.P3566257295146221189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A162237.P3566257295146221189

namespace A162237

/-- `p?[comp[A002328(n+1)-2]]` -/
def P3566257295146221189.Spec : Prop :=
  ∀ n, (P3566257295146221189.a n : ℤ) = A162237 (n + 1)

end A162237

/-! ## A162237.P16848246924117746447

`p?[2*A241266(n+1)-1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162237

/-- `p?[2*A241266(n+1)-1]` -/
def P16848246924117746447.Spec : Prop :=
  ∀ n, P16848246924117746447.a n = A162237 (n + 1)

theorem P16848246924117746447.correct : P16848246924117746447.Spec := by
  intro n
  simp only [A162237, Nat.add_sub_cancel]

end A162237

/-! ## A162237.P17716750969203179075

`p?[A004273(A241266(n+1))]`
-/

namespace A162237.P17716750969203179075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A241266 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P17716750969203179075

namespace A162237

/-- `p?[A004273(A241266(n+1))]` -/
def P17716750969203179075.Spec : Prop :=
  ∀ n, P17716750969203179075.a n = A162237 (n + 1)

end A162237

/-! ## A162237.P11549674000262925794

`p?[lt[1, A289357(n+1)]]`
-/

namespace A162237.P11549674000262925794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A162237.P11549674000262925794

namespace A162237

/-- `p?[lt[1, A289357(n+1)]]` -/
def P11549674000262925794.Spec : Prop :=
  ∀ n, (P11549674000262925794.a n : ℤ) = A162237 (n + 1)

end A162237

/-! ## A162237.P16385171415634375942

`p?[1-A108151(n+1)+n]`
-/

namespace A162237.P16385171415634375942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108151 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P16385171415634375942

namespace A162237

/-- `p?[1-A108151(n+1)+n]` -/
def P16385171415634375942.Spec : Prop :=
  ∀ n, P16385171415634375942.a n = A162237 (n + 1)

end A162237

/-! ## A162237.P16747333700866184205

`p?[n*A157928(A272903(n+2))]`
-/

namespace A162237.P16747333700866184205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157928 (A272903 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P16747333700866184205

namespace A162237

/-- `p?[n*A157928(A272903(n+2))]` -/
def P16747333700866184205.Spec : Prop :=
  ∀ n, P16747333700866184205.a n = A162237 (n + 1)

end A162237

/-! ## A162237.P14102463252013571871

`p?[(n+1)%(A121930(A278247(n+1))+n)]`
-/

namespace A162237.P14102463252013571871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A121930 (A278247 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P14102463252013571871

namespace A162237

/-- `p?[(n+1)%(A121930(A278247(n+1))+n)]` -/
def P14102463252013571871.Spec : Prop :=
  ∀ n, P14102463252013571871.a n = A162237 (n + 1)

end A162237

/-! ## A162237.P9391343272505439213

`p?[n%(A272903(A272903(n+2)+2)+n)]`
-/

namespace A162237.P9391343272505439213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A272903 (A272903 (n + 2) + 2).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P9391343272505439213

namespace A162237

/-- `p?[n%(A272903(A272903(n+2)+2)+n)]` -/
def P9391343272505439213.Spec : Prop :=
  ∀ n, P9391343272505439213.a n = A162237 (n + 1)

end A162237

/-! ## A162237.P13375128288337117440

`p?[n%A130421(A278247(n))]`
-/

namespace A162237.P13375128288337117440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A130421 (A278247 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P13375128288337117440

namespace A162237

/-- `p?[n%A130421(A278247(n))]` -/
def P13375128288337117440.Spec : Prop :=
  ∀ n, P13375128288337117440.a n = A162237 (n + 1)

end A162237

/-!
# A162238: Years in which January first falls on a Monday (since 2001).

The programs for A162238, there is no canonical definition to state claims against.
-/

/-! ## A162238.P7751330775840973594

`A162243(A077168(n))-4`
-/

namespace A162238.P7751330775840973594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162243 (A077168 n).toNat - 4

end

end A162238.P7751330775840973594

/-! ## A162238.P15003867144915943805

`A162243(n+1)-A010685(A029948(n))`
-/

namespace A162238.P15003867144915943805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162243 (n + 1) - A010685 (A029948 n).toNat

end

end A162238.P15003867144915943805

/-! ## A162238.P777379133581853218

`A162243(n+1)-A123932(A000079(n))`
-/

namespace A162238.P777379133581853218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162243 (n + 1) - A123932 (A000079 n).toNat

end

end A162238.P777379133581853218

/-! ## A162238.P15525527210632455942

`A162243(n+1)-A010685(A214829(n))`
-/

namespace A162238.P15525527210632455942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162243 (n + 1) - A010685 (A214829 n).toNat

end

end A162238.P15525527210632455942

/-! ## A162238.P12161202146580497041

`A162243(n+1)-A123932(A282802(n))`
-/

namespace A162238.P12161202146580497041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162243 (n + 1) - A123932 (A282802 n).toNat

end

end A162238.P12161202146580497041

/-!
# A162239: Years in which January first falls on a Tuesday (since 2001).

The programs for A162239, there is no canonical definition to state claims against.
-/

/-! ## A162239.P6740850693338091709

`A162244(A077168(n))-4`
-/

namespace A162239.P6740850693338091709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (A077168 n).toNat - 4

end

end A162239.P6740850693338091709

/-! ## A162239.P4334686941136914269

`A162244(n+1)-A010685(A029948(n))`
-/

namespace A162239.P4334686941136914269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) - A010685 (A029948 n).toNat

end

end A162239.P4334686941136914269

/-! ## A162239.P6174005285329669651

`A162244(n+1)-A123932(A000079(n))`
-/

namespace A162239.P6174005285329669651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) - A123932 (A000079 n).toNat

end

end A162239.P6174005285329669651

/-! ## A162239.P307269198614407642

`A162244(n+1)-A010685(A115335(n))`
-/

namespace A162239.P307269198614407642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) - A010685 (A115335 n).toNat

end

end A162239.P307269198614407642

/-! ## A162239.P6965028574049132245

`A162244(n+1)-A010685(A214829(n))`
-/

namespace A162239.P6965028574049132245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) - A010685 (A214829 n).toNat

end

end A162239.P6965028574049132245

/-!
# A162240: Years in which January first falls on a Wednesday (since 2001).

The programs for A162240, there is no canonical definition to state claims against.
-/

/-! ## A162240.P13125560863542107493

`A162238(n+2)-A010685(A029948(n+1))`
-/

namespace A162240.P13125560863542107493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 2) - A010685 (A029948 (n + 1)).toNat

end

end A162240.P13125560863542107493

/-! ## A162240.P5667553714688718597

`A162238(n+2)-A123932(A000079(n+1))`
-/

namespace A162240.P5667553714688718597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 2) - A123932 (A000079 (n + 1)).toNat

end

end A162240.P5667553714688718597

/-! ## A162240.P3417121366566589372

`A162238(n+2)-A010685(A214829(n+1))`
-/

namespace A162240.P3417121366566589372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 2) - A010685 (A214829 (n + 1)).toNat

end

end A162240.P3417121366566589372

/-! ## A162240.P2191704016594135736

`A162238(n+2)-A123932(A282802(n+1))`
-/

namespace A162240.P2191704016594135736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 2) - A123932 (A282802 (n + 1)).toNat

end

end A162240.P2191704016594135736

/-! ## A162240.P16169794697702378413

`A162238(n+2)-A010694(A336617(2*n))`
-/

namespace A162240.P16169794697702378413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 2) - A010694 (A336617 (2 * n)).toNat

end

end A162240.P16169794697702378413

/-!
# A162241: Years in which January first falls on a Thursday (since 2001).

The programs for A162241, there is no canonical definition to state claims against.
-/

/-! ## A162241.P14256918106891644096

`A162244(n+2)-A273779(A000079(n))`
-/

namespace A162241.P14256918106891644096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 2) - A273779 (A000079 n).toNat

end

end A162241.P14256918106891644096

/-! ## A162241.P17285515019090764282

`A162239(n+2)-A162281(A162281(2*(n+1))²)`
-/

namespace A162241.P17285515019090764282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162239 (n + 2) - A162281 (A162281 (2 * (n + 1)) ^ 2).toNat

end

end A162241.P17285515019090764282

/-! ## A162241.P14035353519775431634

`A162244(n+2)-A273779(A273779(n+1)²)`
-/

namespace A162241.P14035353519775431634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 2) - A273779 (A273779 (n + 1) ^ 2).toNat

end

end A162241.P14035353519775431634

/-!
# A162242: Years in which January first falls on a Friday (since 2001).

The programs for A162242, there is no canonical definition to state claims against.
-/

/-! ## A162242.P5898468819730003274

`A162244(n+1)+A123932(A268448(n+1))`
-/

namespace A162242.P5898468819730003274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) + A123932 (A268448 (n + 1)).toNat

end

end A162242.P5898468819730003274

/-! ## A162242.P698748654025795353

`A162244(n+1)+A123932(A226340(2*(n+2)))`
-/

namespace A162242.P698748654025795353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) + A123932 (A226340 (2 * (n + 2))).toNat

end

end A162242.P698748654025795353

/-! ## A162242.P16139795688653589093

`record[A162244(A319848(n+1))+4]`
-/

namespace A162242.P16139795688653589093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (A319848 (n + 1)).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162242.P16139795688653589093

/-! ## A162242.P12416448290022252518

`A162244(n+1)+A062011(A162252(n+1))`
-/

namespace A162242.P12416448290022252518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) + A062011 (A162252 (n + 1)).toNat

end

end A162242.P12416448290022252518

/-! ## A162242.P8674365262820960626

`A162244(n+1)+A123932(A226340(n+1)²)`
-/

namespace A162242.P8674365262820960626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162244 (n + 1) + A123932 (A226340 (n + 1) ^ 2).toNat

end

end A162242.P8674365262820960626

/-!
# A162243: Years in which January first falls on a Saturday (since 2001).

The programs for A162243, there is no canonical definition to state claims against.
-/

/-! ## A162243.P4230386743592891109

`A162241(n+2)-4%A162241(2*n+1)`
-/

namespace A162243.P4230386743592891109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162241 (n + 2) - Int.tmod 4 (A162241 (2 * n + 1))

end

end A162243.P4230386743592891109

/-! ## A162243.P7294514105698405231

`A162241(n+2)-A010685(A029948(2*n+1))`
-/

namespace A162243.P7294514105698405231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162241 (n + 2) - A010685 (A029948 (2 * n + 1)).toNat

end

end A162243.P7294514105698405231

/-! ## A162243.P15767267405693442531

`A162238(A077168(n))+4`
-/

namespace A162243.P15767267405693442531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (A077168 n).toNat + 4

end

end A162243.P15767267405693442531

/-! ## A162243.P3762430940424411328

`A162238(n+1)+A010685(A029948(n))`
-/

namespace A162243.P3762430940424411328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 1) + A010685 (A029948 n).toNat

end

end A162243.P3762430940424411328

/-! ## A162243.P8457379884152321601

`A162238(n+1)+A123932(A000079(n))`
-/

namespace A162243.P8457379884152321601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162238 (n + 1) + A123932 (A000079 n).toNat

end

end A162243.P8457379884152321601

/-!
# A162244: Years in which January first falls on a Sunday (since 2001).

The programs for A162244, there is no canonical definition to state claims against.
-/

/-! ## A162244.P5518372736740955100

`A162242(n+1)-A123932(A268448(n+1))`
-/

namespace A162244.P5518372736740955100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162242 (n + 1) - A123932 (A268448 (n + 1)).toNat

end

end A162244.P5518372736740955100

/-! ## A162244.P9981801004534610849

`A162242(n+1)-A123932(A226340(2*(n+2)))`
-/

namespace A162244.P9981801004534610849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162242 (n + 1) - A123932 (A226340 (2 * (n + 2))).toNat

end

end A162244.P9981801004534610849

/-! ## A162244.P14095965706059667166

`A162242(n+1)-A010685(A032020(n))`
-/

namespace A162244.P14095965706059667166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162242 (n + 1) - A010685 (A032020 n).toNat

end

end A162244.P14095965706059667166

/-! ## A162244.P3501050641515172671

`A162242(n+1)-A062011(A162252(n+1))`
-/

namespace A162244.P3501050641515172671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162242 (n + 1) - A062011 (A162252 (n + 1)).toNat

end

end A162244.P3501050641515172671

/-! ## A162244.P5812286325320431239

`A162242(n+1)-A123932(A226340(n+1)²)`
-/

namespace A162244.P5812286325320431239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162242 (n + 1) - A123932 (A226340 (n + 1) ^ 2).toNat

end

end A162244.P5812286325320431239

/-!
# A162245: Triangle T(n,m) = 6*m*n + 3*m + 3*n + 1 read by rows.

The programs for A162245, the canonical program `A162245.P9130554496561058952` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162245 has offset 1).

The definition of A162245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(col(n)+1)*(row(n)+1)+3*(col(n)+1)+3*(row(n)+1)+1` (program `A162245.P9130554496561058952`, by `A162245.P9130554496561058952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162245.P9130554496561058952

`6*(col(n)+1)*(row(n)+1)+3*(col(n)+1)+3*(row(n)+1)+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162245

/-- `6*(col(n)+1)*(row(n)+1)+3*(col(n)+1)+3*(row(n)+1)+1` -/
def P9130554496561058952.Spec : Prop :=
  ∀ n, (P9130554496561058952.a n : ℤ) = A162245 (n + 1)

theorem P9130554496561058952.correct : P9130554496561058952.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel]

end A162245

/-! ## A162245.P17984845670330122216

`3*A083487(C(row(n)+1, 2)+col(n)+1)+1`
-/

namespace A162245.P17984845670330122216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083487 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) + 1

end

end A162245.P17984845670330122216

namespace A162245

/-- `3*A083487(C(row(n)+1, 2)+col(n)+1)+1` -/
def P17984845670330122216.Spec : Prop :=
  ∀ n, P17984845670330122216.a n = A162245 (n + 1)

end A162245

/-! ## A162245.P11817739045317314157

`3*A083487(n+1)+1`
-/

namespace A162245.P11817739045317314157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083487 (n + 1) + 1

end

end A162245.P11817739045317314157

namespace A162245

/-- `3*A083487(n+1)+1` -/
def P11817739045317314157.Spec : Prop :=
  ∀ n, P11817739045317314157.a n = A162245 (n + 1)

theorem P11817739045317314157.correct : P11817739045317314157.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P11817739045317314157.a, A162245.P9130554496561058952.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P5050757474236598857

`3*A144650(n+1)-2`
-/

namespace A162245.P5050757474236598857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144650 (n + 1) - 2

end

end A162245.P5050757474236598857

namespace A162245

/-- `3*A144650(n+1)-2` -/
def P5050757474236598857.Spec : Prop :=
  ∀ n, P5050757474236598857.a n = A162245 (n + 1)

theorem P5050757474236598857.correct : P5050757474236598857.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P5050757474236598857.a, A162245.P9130554496561058952.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P13716710177911965215

`3*A144562(n+1)+4`
-/

namespace A162245.P13716710177911965215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144562 (n + 1) + 4

end

end A162245.P13716710177911965215

namespace A162245

/-- `3*A144562(n+1)+4` -/
def P13716710177911965215.Spec : Prop :=
  ∀ n, P13716710177911965215.a n = A162245 (n + 1)

theorem P13716710177911965215.correct : P13716710177911965215.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P13716710177911965215.a, A162245.P9130554496561058952.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P15522191768179687631

`3*A155705(n+1)-5`
-/

namespace A162245.P15522191768179687631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155705 (n + 1) - 5

end

end A162245.P15522191768179687631

namespace A162245

/-- `3*A155705(n+1)-5` -/
def P15522191768179687631.Spec : Prop :=
  ∀ n, P15522191768179687631.a n = A162245 (n + 1)

theorem P15522191768179687631.correct : P15522191768179687631.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P15522191768179687631.a, A162245.P9130554496561058952.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P12806403799145359758

`3*A155550(n+1)+19`
-/

namespace A162245.P12806403799145359758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155550 (n + 1) + 19

end

end A162245.P12806403799145359758

namespace A162245

/-- `3*A155550(n+1)+19` -/
def P12806403799145359758.Spec : Prop :=
  ∀ n, P12806403799145359758.a n = A162245 (n + 1)

theorem P12806403799145359758.correct : P12806403799145359758.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P12806403799145359758.a, A162245.P9130554496561058952.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P15538336808961090620

`3*(A154680(n+1)+1)+4`
-/

namespace A162245.P15538336808961090620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A154680 (n + 1) + 1) + 4

end

end A162245.P15538336808961090620

namespace A162245

/-- `3*(A154680(n+1)+1)+4` -/
def P15538336808961090620.Spec : Prop :=
  ∀ n, P15538336808961090620.a n = A162245 (n + 1)

theorem P15538336808961090620.correct : P15538336808961090620.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P15538336808961090620.a, A162245.P9130554496561058952.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P7254474209163809199

`3*(A155546(n+1)+5)+1`
-/

namespace A162245.P7254474209163809199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A155546 (n + 1) + 5) + 1

end

end A162245.P7254474209163809199

namespace A162245

/-- `3*(A155546(n+1)+5)+1` -/
def P7254474209163809199.Spec : Prop :=
  ∀ n, P7254474209163809199.a n = A162245 (n + 1)

theorem P7254474209163809199.correct : P7254474209163809199.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P7254474209163809199.a, A162245.P9130554496561058952.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P1776549114668925392

`A172292(n+1)+A083487(n+1)`
-/

namespace A162245.P1776549114668925392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + A083487 (n + 1)

end

end A162245.P1776549114668925392

namespace A162245

/-- `A172292(n+1)+A083487(n+1)` -/
def P1776549114668925392.Spec : Prop :=
  ∀ n, P1776549114668925392.a n = A162245 (n + 1)

theorem P1776549114668925392.correct : P1776549114668925392.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P1776549114668925392.a, A162245.P9130554496561058952.a, A083487, A083487.P8449240486603242499.a, A172292, A172292.P15210621315686720524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P3034594570225382138

`A155151(n+1)+A144562(n+1)`
-/

namespace A162245.P3034594570225382138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + A144562 (n + 1)

end

end A162245.P3034594570225382138

namespace A162245

/-- `A155151(n+1)+A144562(n+1)` -/
def P3034594570225382138.Spec : Prop :=
  ∀ n, P3034594570225382138.a n = A162245 (n + 1)

theorem P3034594570225382138.correct : P3034594570225382138.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P3034594570225382138.a, A162245.P9130554496561058952.a, A144562, A144562.P16025350127225318845.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P15549018298298213283

`A155156(n+1)+A144650(n+1)`
-/

namespace A162245.P15549018298298213283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + A144650 (n + 1)

end

end A162245.P15549018298298213283

namespace A162245

/-- `A155156(n+1)+A144650(n+1)` -/
def P15549018298298213283.Spec : Prop :=
  ∀ n, P15549018298298213283.a n = A162245 (n + 1)

theorem P15549018298298213283.correct : P15549018298298213283.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P15549018298298213283.a, A162245.P9130554496561058952.a, A144650, A144650.P1368958266719371934.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P14679321958455095460

`A163676(n+1)+A155705(n+1)`
-/

namespace A162245.P14679321958455095460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + A155705 (n + 1)

end

end A162245.P14679321958455095460

namespace A162245

/-- `A163676(n+1)+A155705(n+1)` -/
def P14679321958455095460.Spec : Prop :=
  ∀ n, P14679321958455095460.a n = A162245 (n + 1)

end A162245

/-! ## A162245.P5912748024564965748

`A154681(n+1)+A163676(n+1)-1`
-/

namespace A162245.P5912748024564965748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + (A163676 (n + 1) - 1)

end

end A162245.P5912748024564965748

namespace A162245

/-- `A154681(n+1)+A163676(n+1)-1` -/
def P5912748024564965748.Spec : Prop :=
  ∀ n, P5912748024564965748.a n = A162245 (n + 1)

end A162245

/-! ## A162245.P15309830113089384596

`A154680(n+1)+A172292(n+1)+2`
-/

namespace A162245.P15309830113089384596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + (A172292 (n + 1) + 2)

end

end A162245.P15309830113089384596

namespace A162245

/-- `A154680(n+1)+A172292(n+1)+2` -/
def P15309830113089384596.Spec : Prop :=
  ∀ n, P15309830113089384596.a n = A162245 (n + 1)

theorem P15309830113089384596.correct : P15309830113089384596.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P15309830113089384596.a, A162245.P9130554496561058952.a, A154680, A154680.P11179278242672813373.a, A172292, A172292.P15210621315686720524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P13605014369431244146

`A154681(n+1)+A155156(n+1)-2`
-/

namespace A162245.P13605014369431244146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + (A155156 (n + 1) - 2)

end

end A162245.P13605014369431244146

namespace A162245

/-- `A154681(n+1)+A155156(n+1)-2` -/
def P13605014369431244146.Spec : Prop :=
  ∀ n, P13605014369431244146.a n = A162245 (n + 1)

theorem P13605014369431244146.correct : P13605014369431244146.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P13605014369431244146.a, A162245.P9130554496561058952.a, A154681, A154681.P7152750088420565166.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P4273922943288624091

`A154684(n+1)+2*A155705(n+1)`
-/

namespace A162245.P4273922943288624091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 2 * A155705 (n + 1)

end

end A162245.P4273922943288624091

namespace A162245

/-- `A154684(n+1)+2*A155705(n+1)` -/
def P4273922943288624091.Spec : Prop :=
  ∀ n, P4273922943288624091.a n = A162245 (n + 1)

theorem P4273922943288624091.correct : P4273922943288624091.Spec := by
  intro n
  simp only [A162245, Nat.add_sub_cancel, A162245.P4273922943288624091.a, A162245.P9130554496561058952.a, A154684, A154684.P4294763165931368592.a, A155705, A155705.P4288212106648644331.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162245

/-! ## A162245.P15657116761892703999

`A172292(n+1)+A055096(n+2)-A014206(A025581(n))+1`
-/

namespace A162245.P15657116761892703999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + (A055096 (n + 2) - A014206 (A025581 n).toNat + 1)

end

end A162245.P15657116761892703999

namespace A162245

/-- `A172292(n+1)+A055096(n+2)-A014206(A025581(n))+1` -/
def P15657116761892703999.Spec : Prop :=
  ∀ n, P15657116761892703999.a n = A162245 (n + 1)

end A162245

/-! ## A162245.P5945342543615183384

`A016777(A083487(n+1))`
-/

namespace A162245.P5945342543615183384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A083487 (n + 1)).toNat

end

end A162245.P5945342543615183384

namespace A162245

/-- `A016777(A083487(n+1))` -/
def P5945342543615183384.Spec : Prop :=
  ∀ n, P5945342543615183384.a n = A162245 (n + 1)

end A162245

/-! ## A162245.P3288664348784101733

`A033627(A155705(n+1))`
-/

namespace A162245.P3288664348784101733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A155705 (n + 1)).toNat

end

end A162245.P3288664348784101733

namespace A162245

/-- `A033627(A155705(n+1))` -/
def P3288664348784101733.Spec : Prop :=
  ∀ n, P3288664348784101733.a n = A162245 (n + 1)

end A162245

/-!
# A162246: Swinging polynomials, coefficients read by rows.

The programs for A162246, there is no canonical definition to state claims against.
-/

/-! ## A162246.P6399922558783699055

`A211226(A161983(n))`
-/

namespace A162246.P6399922558783699055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (A161983 n).toNat

end

end A162246.P6399922558783699055

/-! ## A162246.P8245101865241781076

`A211226(A316670(n+1))`
-/

namespace A162246.P8245101865241781076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (A316670 (n + 1)).toNat

end

end A162246.P8245101865241781076

/-! ## A162246.P10234898699088211396

`A211226(A116942(2*n))`
-/

namespace A162246.P10234898699088211396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (A116942 (2 * n)).toNat

end

end A162246.P10234898699088211396

/-! ## A162246.P17101985085152593394

`A211226(comp[A007607(n+1)])`
-/

namespace A162246.P17101985085152593394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162246.P17101985085152593394

/-! ## A162246.P8905791423863897170

`A211226(A007606(n+1)-1)`
-/

namespace A162246.P8905791423863897170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (A007606 (n + 1) - 1).toNat

end

end A162246.P8905791423863897170

/-! ## A162246.P10871556994637707925

`A211226(lt[0, A057211(n+1)])`
-/

namespace A162246.P10871556994637707925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A162246.P10871556994637707925

/-! ## A162246.P3312914413100364365

`A211226(eq[1, A057211(n+1)])`
-/

namespace A162246.P3312914413100364365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162246.P3312914413100364365

/-! ## A162246.P7823685292066013106

`(A260492(n)+A177276(n))/2`
-/

namespace A162246.P7823685292066013106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260492 n + A177276 n : ℚ) / 2

end

end A162246.P7823685292066013106

/-! ## A162246.P13077791388041738265

`A177276(n)/(2-A071028(n))`
-/

namespace A162246.P13077791388041738265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177276 n : ℚ) / (2 - A071028 n : ℚ)

end

end A162246.P13077791388041738265

/-! ## A162246.P1611825839806146087

`A001281(A260492(n)+A177276(n))`
-/

namespace A162246.P1611825839806146087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A260492 n + A177276 n).toNat

end

end A162246.P1611825839806146087

/-!
# A162247: Irregular triangle in which row n lists all factorizations of n, sorted by the number of factors in each factorization.

The programs for A162247, there is no canonical definition to state claims against.
-/

/-! ## A162247.P3224386026007768275

`A056472(n+1)%A293697(n)`
-/

namespace A162247.P3224386026007768275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056472 (n + 1)) (A293697 n)

end

end A162247.P3224386026007768275

/-! ## A162247.P10563017795825220326

`A056472(n+1)+A000007(A134154(n))`
-/

namespace A162247.P10563017795825220326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056472 (n + 1) + A000007 (A134154 n).toNat

end

end A162247.P10563017795825220326

/-! ## A162247.P13204928069388793774

`A014578(A152192(n))*A056472(n+1)`
-/

namespace A162247.P13204928069388793774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (A152192 n).toNat * A056472 (n + 1)

end

end A162247.P13204928069388793774

/-! ## A162247.P243864547007099421

`A056472(n+1)+A000007(A003594(n+1))`
-/

namespace A162247.P243864547007099421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056472 (n + 1) + A000007 (A003594 (n + 1)).toNat

end

end A162247.P243864547007099421

/-! ## A162247.P6609613676366169368

`A056472(n+1)*A328308(A000043(n+1))`
-/

namespace A162247.P6609613676366169368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056472 (n + 1) * A328308 (A000043 (n + 1)).toNat

end

end A162247.P6609613676366169368

/-!
# A162248: Number of reduced words of length n in the Weyl group D_10.

The programs for A162248, there is no canonical definition to state claims against.
-/

/-! ## A162248.P8996295229901949141

`A161755(n)-A185284(A000837(n))`
-/

namespace A162248.P8996295229901949141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161755 n - A185284 (A000837 n).toNat

end

end A162248.P8996295229901949141

/-!
# A162249: a(n) = sum of the squares of the coefficients of x^(2k) in A(x^2)^{2*(n-2k)+1}, as k varies from 0 to floor(n/2), with a(0)=1.

The programs for A162249, there is no canonical definition to state claims against.
-/

/-! ## A162249.P7369644521759080108

`A187188(A113465(n+1)+A113442(n))`
-/

namespace A162249.P7369644521759080108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A113465 (n + 1) + A113442 n).toNat

end

end A162249.P7369644521759080108

/-! ## A162249.P7466240138022183769

`A343044(C(n, 2)²²)+1`
-/

namespace A162249.P7466240138022183769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343044 ((Nat.choose n 2 ^ 2) ^ 2) + 1

end

end A162249.P7466240138022183769

/-!
# A162250: Values of the form prime(prime(i)) with a prime digital sum.

The programs for A162250, the canonical program `A162250.P8437384254444543652` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162250 has offset 1).

The definition of A162250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162250.P8437384254444543652

`∩[A006450(n+1), A046704(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A162250

/-- `∩[A006450(n+1), A046704(n+1)]` -/
def P8437384254444543652.Spec : Prop :=
  ∀ n, (P8437384254444543652.a n : ℤ) = A162250 (n + 1)

theorem P8437384254444543652.correct : P8437384254444543652.Spec := by
  intro n
  simp only [A162250, Nat.add_sub_cancel]

end A162250

/-! ## A162250.P1132077911408921494

`∩[A046704(n+1), A302590(n+1)]`
-/

namespace A162250.P1132077911408921494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P1132077911408921494

namespace A162250

/-- `∩[A046704(n+1), A302590(n+1)]` -/
def P1132077911408921494.Spec : Prop :=
  ∀ n, (P1132077911408921494.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P11086383562155471479

`∩[A046704(n+1), A302596(n+1)]`
-/

namespace A162250.P11086383562155471479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P11086383562155471479

namespace A162250

/-- `∩[A046704(n+1), A302596(n+1)]` -/
def P11086383562155471479.Spec : Prop :=
  ∀ n, (P11086383562155471479.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P16516885946295940873

`∩[A046704(n+1), A076610(n+1)]`
-/

namespace A162250.P16516885946295940873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P16516885946295940873

namespace A162250

/-- `∩[A046704(n+1), A076610(n+1)]` -/
def P16516885946295940873.Spec : Prop :=
  ∀ n, (P16516885946295940873.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P15754523608502706338

`A000040(p?[A075177(n+1)])`
-/

namespace A162250.P15754523608502706338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162250.P15754523608502706338

namespace A162250

/-- `A000040(p?[A075177(n+1)])` -/
def P15754523608502706338.Spec : Prop :=
  ∀ n, P15754523608502706338.a n = A162250 (n + 1)

end A162250

/-! ## A162250.P13885255340151365939

`∩[A046704(n+1), A359486(n+1)]`
-/

namespace A162250.P13885255340151365939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P13885255340151365939

namespace A162250

/-- `∩[A046704(n+1), A359486(n+1)]` -/
def P13885255340151365939.Spec : Prop :=
  ∀ n, (P13885255340151365939.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P11011115949196408447

`∩[A006450(n+1), A028834(n+1)]`
-/

namespace A162250.P11011115949196408447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P11011115949196408447

namespace A162250

/-- `∩[A006450(n+1), A028834(n+1)]` -/
def P11011115949196408447.Spec : Prop :=
  ∀ n, (P11011115949196408447.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P7469126375096406103

`∩[A046704(n+1), A048989(n+1)]`
-/

namespace A162250.P7469126375096406103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P7469126375096406103

namespace A162250

/-- `∩[A046704(n+1), A048989(n+1)]` -/
def P7469126375096406103.Spec : Prop :=
  ∀ n, (P7469126375096406103.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P3023167503780840188

`∩[A006450(n+1), A186773(n+1)]`
-/

namespace A162250.P3023167503780840188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P3023167503780840188

namespace A162250

/-- `∩[A006450(n+1), A186773(n+1)]` -/
def P3023167503780840188.Spec : Prop :=
  ∀ n, (P3023167503780840188.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P4237633825440387834

`∩[A175247(n+1), A186773(n+1)]`
-/

namespace A162250.P4237633825440387834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P4237633825440387834

namespace A162250

/-- `∩[A175247(n+1), A186773(n+1)]` -/
def P4237633825440387834.Spec : Prop :=
  ∀ n, (P4237633825440387834.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P2644120234805577889

`∩[A186773(n+1), A302592(n+1)]`
-/

namespace A162250.P2644120234805577889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P2644120234805577889

namespace A162250

/-- `∩[A186773(n+1), A302592(n+1)]` -/
def P2644120234805577889.Spec : Prop :=
  ∀ n, (P2644120234805577889.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P3460055391336518482

`∩[A046704(n+1), A141436(n+1)]`
-/

namespace A162250.P3460055391336518482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P3460055391336518482

namespace A162250

/-- `∩[A046704(n+1), A141436(n+1)]` -/
def P3460055391336518482.Spec : Prop :=
  ∀ n, (P3460055391336518482.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P15907988870042798771

`∩[A046704(n+1), A331386(n+1)]`
-/

namespace A162250.P15907988870042798771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P15907988870042798771

namespace A162250

/-- `∩[A046704(n+1), A331386(n+1)]` -/
def P15907988870042798771.Spec : Prop :=
  ∀ n, (P15907988870042798771.a n : ℤ) = A162250 (n + 1)

end A162250

/-! ## A162250.P11382698650567618143

`∩[A046704(n+1), A080759(n+1)]`
-/

namespace A162250.P11382698650567618143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P11382698650567618143

namespace A162250

/-- `∩[A046704(n+1), A080759(n+1)]` -/
def P11382698650567618143.Spec : Prop :=
  ∀ n, (P11382698650567618143.a n : ℤ) = A162250 (n + 1)

end A162250

/-!
# A162251: Sum of digits of product of previous terms, with a(1) = 2.

The programs for A162251, there is no canonical definition to state claims against.
-/

/-! ## A162251.P17193094697269708567

`∑{digits}[A047892(round(sqrt(n²+1))), #]`
-/

namespace A162251.P17193094697269708567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047892 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162251.P17193094697269708567

/-!
# A162252: Numbers of the form prime(prime(prime(k))) with a digit sum which is prime.

The programs for A162252, there is no canonical definition to state claims against.
-/

/-! ## A162252.P2126076371884052518

`∩[A028834(n+1), A038580(n+1)]`
-/

namespace A162252.P2126076371884052518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162252.P2126076371884052518

/-! ## A162252.P17001083394358408571

`∩[A038580(n+1), A046704(n+1)]`
-/

namespace A162252.P17001083394358408571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162252.P17001083394358408571

/-! ## A162252.P2694853632671718280

`∩[A038580(n+1), A162250(n+1)]`
-/

namespace A162252.P2694853632671718280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162252.P2694853632671718280

/-! ## A162252.P9217680995980335256

`∩[A038580(n+1), A186773(n+1)]`
-/

namespace A162252.P9217680995980335256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162252.P9217680995980335256

/-! ## A162252.P11310440263561148613

`∩[A006450(A000040(n+1)), A046704(n+1)]`
-/

namespace A162252.P11310440263561148613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162252.P11310440263561148613

/-!
# A162253: Smallest value of the n-fold nesting prime(prime(...(k)...)) with a prime digital sum.

The programs for A162253, there is no canonical definition to state claims against.
-/

/-! ## A162253.P14346392460570517841

`A236542(A018171(n+1))`
-/

namespace A162253.P14346392460570517841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236542 (A018171 (n + 1)).toNat

end

end A162253.P14346392460570517841

/-! ## A162253.P3413812176298650529

`A236542(or(2^n, A344607(n)))`
-/

namespace A162253.P3413812176298650529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236542 (Int.lor (2 ^ n : ℤ) (A344607 n)).toNat

end

end A162253.P3413812176298650529

/-!
# A162254: a(n) = n*(2*n^2 + 5*n + 1)/2.

The programs for A162254, the canonical program `A162254.P9235185526857118336` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162254 has offset 1).

The definition of A162254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162254.P9235185526857118336

`ogf((4+3x-x^2)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162254

/-- `ogf((4+3x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P9235185526857118336.Spec : Prop :=
  ∀ n, P9235185526857118336.a n = A162254 (n + 1)

theorem P9235185526857118336.correct : P9235185526857118336.Spec := by
  intro n
  simp only [A162254, Nat.add_sub_cancel]

end A162254

/-! ## A162254.P2417830481693423148

`(n+1)*(5*(n+1)+1)/2+(n+1)^3`
-/

namespace A162254.P2417830481693423148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (5 * (n + 1) + 1) : ℚ) / 2 + ((n + 1) ^ 3 : ℚ)

end

end A162254.P2417830481693423148

namespace A162254

/-- `(n+1)*(5*(n+1)+1)/2+(n+1)^3` -/
def P2417830481693423148.Spec : Prop :=
  ∀ n, P2417830481693423148.a n = (A162254 (n + 1) : ℚ)

end A162254

/-! ## A162254.P17907066322433732486

`(n+1)*(2*(n+1)²+5*(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162254.P17907066322433732486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * (n + 1) ^ 2 + 5 * (n + 1) + 1) : ℚ) / 2

end

end A162254.P17907066322433732486

namespace A162254

/-- `(n+1)*(2*(n+1)²+5*(n+1)+1)/2` -/
def P17907066322433732486.Spec : Prop :=
  ∀ n, P17907066322433732486.a n = (A162254 (n + 1) : ℚ)

end A162254

/-! ## A162254.P15703529624385929566

`∑[∑[ogf((4+3x-x^2)/(1-2x+x^2))]]`
-/

namespace A162254.P15703529624385929566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P15703529624385929566

namespace A162254

/-- `∑[∑[ogf((4+3x-x^2)/(1-2x+x^2))]]` -/
def P15703529624385929566.Spec : Prop :=
  ∀ n, P15703529624385929566.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P9228072134235233959

`C(n+3, 2)*Δ[n²]+1`
-/

namespace A162254.P9228072134235233959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A162254.P9228072134235233959

namespace A162254

/-- `C(n+3, 2)*Δ[n²]+1` -/
def P9228072134235233959.Spec : Prop :=
  ∀ n, P9228072134235233959.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P1249725861828813798

`∑[n]+lcm(n+1, (n+2)²)`
-/

namespace A162254.P1249725861828813798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) ((n + 2) ^ 2)

end

end A162254.P1249725861828813798

namespace A162254

/-- `∑[n]+lcm(n+1, (n+2)²)` -/
def P1249725861828813798.Spec : Prop :=
  ∀ n, (P1249725861828813798.a n : ℤ) = A162254 (n + 1)

end A162254

/-! ## A162254.P7487575733403593655

`(2*n+1)*C(n+3, 2)+1`
-/

namespace A162254.P7487575733403593655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 3) 2 + 1

end

end A162254.P7487575733403593655

namespace A162254

/-- `(2*n+1)*C(n+3, 2)+1` -/
def P7487575733403593655.Spec : Prop :=
  ∀ n, (P7487575733403593655.a n : ℤ) = A162254 (n + 1)

end A162254

/-! ## A162254.P12968186769530290860

`∑[a(n-1)+5]+(n+1)^3` with `a(0)=3`
-/

namespace A162254.P12968186769530290860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A162254.P12968186769530290860

namespace A162254

/-- `∑[a(n-1)+5]+(n+1)^3` -/
def P12968186769530290860.Spec : Prop :=
  ∀ n, (P12968186769530290860.a n : ℤ) = A162254 (n + 1)

end A162254

/-! ## A162254.P12297743899725772035

`a(n-1)+(2*(n+1))²-n²` with `a(0)=4`
-/

namespace A162254.P12297743899725772035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + ((2 * (n + 1)) ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A162254.P12297743899725772035

namespace A162254

/-- `a(n-1)+(2*(n+1))²-n²` -/
def P12297743899725772035.Spec : Prop :=
  ∀ n, P12297743899725772035.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P16007791807499732840

`lcm(n+2, ∑[2*n+3])-∑[n+2]`
-/

namespace A162254.P16007791807499732840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A162254.P16007791807499732840

namespace A162254

/-- `lcm(n+2, ∑[2*n+3])-∑[n+2]` -/
def P16007791807499732840.Spec : Prop :=
  ∀ n, P16007791807499732840.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P16449748898505395321

`a(n-1)+(n+2)*(2*n+n+2)` with `a(0)=4`
-/

namespace A162254.P16449748898505395321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (n + 2) * (2 * n + (n + 2))

end

end A162254.P16449748898505395321

namespace A162254

/-- `a(n-1)+(n+2)*(2*n+n+2)` -/
def P16449748898505395321.Spec : Prop :=
  ∀ n, (P16449748898505395321.a n : ℤ) = A162254 (n + 1)

end A162254

/-! ## A162254.P3316928550351192706

`∑[A140677(n)+4]`
-/

namespace A162254.P3316928550351192706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P3316928550351192706

namespace A162254

/-- `∑[A140677(n)+4]` -/
def P3316928550351192706.Spec : Prop :=
  ∀ n, P3316928550351192706.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P3862297301817899259

`∑[A270710(n+1)]`
-/

namespace A162254.P3862297301817899259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P3862297301817899259

namespace A162254

/-- `∑[A270710(n+1)]` -/
def P3862297301817899259.Spec : Prop :=
  ∀ n, P3862297301817899259.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P17851235091114248374

`∑[A045944(n+1)-1]`
-/

namespace A162254.P17851235091114248374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P17851235091114248374

namespace A162254

/-- `∑[A045944(n+1)-1]` -/
def P17851235091114248374.Spec : Prop :=
  ∀ n, P17851235091114248374.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P14786230708692678640

`∑[A056109(n+1)-2]`
-/

namespace A162254.P14786230708692678640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P14786230708692678640

namespace A162254

/-- `∑[A056109(n+1)-2]` -/
def P14786230708692678640.Spec : Prop :=
  ∀ n, P14786230708692678640.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P18437949573842741692

`∑[A049451(n+1)+n]`
-/

namespace A162254.P18437949573842741692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P18437949573842741692

namespace A162254

/-- `∑[A049451(n+1)+n]` -/
def P18437949573842741692.Spec : Prop :=
  ∀ n, P18437949573842741692.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P5220547904706226260

`∑[A016742(n+1)-n²]`
-/

namespace A162254.P5220547904706226260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P5220547904706226260

namespace A162254

/-- `∑[A016742(n+1)-n²]` -/
def P5220547904706226260.Spec : Prop :=
  ∀ n, P5220547904706226260.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P3889398174085645454

`∑[A184005(2*(n+1))]`
-/

namespace A162254.P3889398174085645454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P3889398174085645454

namespace A162254

/-- `∑[A184005(2*(n+1))]` -/
def P3889398174085645454.Spec : Prop :=
  ∀ n, P3889398174085645454.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P3066815106910274503

`∑[A271675(2*(n+1))]`
-/

namespace A162254.P3066815106910274503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P3066815106910274503

namespace A162254

/-- `∑[A271675(2*(n+1))]` -/
def P3066815106910274503.Spec : Prop :=
  ∀ n, P3066815106910274503.a n = A162254 (n + 1)

end A162254

/-! ## A162254.P353343966120072940

`∑[A071408(3*(n+1))]`
-/

namespace A162254.P353343966120072940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071408 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162254.P353343966120072940

namespace A162254

/-- `∑[A071408(3*(n+1))]` -/
def P353343966120072940.Spec : Prop :=
  ∀ n, P353343966120072940.a n = A162254 (n + 1)

end A162254

/-!
# A162255: a(n) = 2*a(n-2) for n > 2; a(1) = 3, a(2) = 2.

The programs for A162255, the canonical program `A162255.P10664033946323154235` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162255 has offset 1).

The definition of A162255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A162255.P10664033946323154235`, by `A162255.P10664033946323154235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162255.P4102767597287515694

`ogf((3+2x)/(1-2x^2))`
-/

namespace A162255.P4102767597287515694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, 0, -2] n

end

end A162255.P4102767597287515694

namespace A162255

/-- `ogf((3+2x)/(1-2x^2))` -/
def P4102767597287515694.Spec : Prop :=
  ∀ n, P4102767597287515694.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P10664033946323154235

`2*a(n-2)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162255

/-- `2*a(n-2)` -/
def P10664033946323154235.Spec : Prop :=
  ∀ n, (P10664033946323154235.a n : ℤ) = A162255 (n + 1)

theorem P10664033946323154235.correct : P10664033946323154235.Spec := by
  intro n
  simp only [A162255, Nat.add_sub_cancel]

end A162255

/-! ## A162255.P547558888135832011

`∏[2/a(n-1)]` with `a(0)=3`
-/

namespace A162255.P547558888135832011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162255.P547558888135832011

namespace A162255

/-- `∏[2/a(n-1)]` -/
def P547558888135832011.Spec : Prop :=
  ∀ n, P547558888135832011.a n = (A162255 (n + 1) : ℚ)

end A162255

/-! ## A162255.P10929522621302515255

`∏[log2(root(4, a(n-1)))]` with `a(0)=3`
-/

namespace A162255.P10929522621302515255
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  Real.logb 2 ((4 : ℝ) ^ (1 / f1 (n - 1)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162255.P10929522621302515255

namespace A162255

/-- `∏[log2(root(4, a(n-1)))]` -/
def P10929522621302515255.Spec : Prop :=
  ∀ n, P10929522621302515255.a n = (A162255 (n + 1) : ℝ)

end A162255

/-! ## A162255.P13213912166791292552

`a(n-2)/sqrt(1/4)` with `a(0)=3, a(1)=2`
-/

namespace A162255.P13213912166791292552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A162255.P13213912166791292552

namespace A162255

/-- `a(n-2)/sqrt(1/4)` -/
def P13213912166791292552.Spec : Prop :=
  ∀ n, P13213912166791292552.a n = (A162255 (n + 1) : ℝ)

end A162255

/-! ## A162255.P6784690117940016551

`2^(log2(a(n-2))+1)` with `a(0)=3, a(1)=2`
-/

namespace A162255.P6784690117940016551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 2] fun n a =>
  (2 : ℝ) ^ (Real.logb 2 (a (n - 2)) + 1)

end

end A162255.P6784690117940016551

namespace A162255

/-- `2^(log2(a(n-2))+1)` -/
def P6784690117940016551.Spec : Prop :=
  ∀ n, P6784690117940016551.a n = (A162255 (n + 1) : ℝ)

end A162255

/-! ## A162255.P5258947822198821434

`a(n-2)+a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A162255.P5258947822198821434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) + a (n - 2)

end

end A162255.P5258947822198821434

namespace A162255

/-- `a(n-2)+a(n-2)` -/
def P5258947822198821434.Spec : Prop :=
  ∀ n, (P5258947822198821434.a n : ℤ) = A162255 (n + 1)

theorem P5258947822198821434.correct : P5258947822198821434.Spec := by
  intro n
  simp only [A162255, Nat.add_sub_cancel, A162255.P5258947822198821434.a, A162255.P10664033946323154235.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162255

/-! ## A162255.P1577007907247997133

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A162255.P1577007907247997133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A162255.P1577007907247997133

namespace A162255

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P1577007907247997133.Spec : Prop :=
  ∀ n, P1577007907247997133.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P3082679549714996513

`∑[a(n-2)-(1-a(n-2))]-n` with `a(0)=3, a(1)=0`
-/

namespace A162255.P3082679549714996513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A162255.P3082679549714996513

namespace A162255

/-- `∑[a(n-2)-(1-a(n-2))]-n` -/
def P3082679549714996513.Spec : Prop :=
  ∀ n, P3082679549714996513.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P15199949374934168553

`1-((1-a(n-2))%a(n-2)-a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A162255.P15199949374934168553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  1 - (Int.tmod (1 - a (n - 2)) (a (n - 2)) - a (n - 2))

end

end A162255.P15199949374934168553

namespace A162255

/-- `1-((1-a(n-2))%a(n-2)-a(n-2))` -/
def P15199949374934168553.Spec : Prop :=
  ∀ n, P15199949374934168553.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P4945643421805678292

`A074323(n+2)`
-/

namespace A162255.P4945643421805678292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 2)

end

end A162255.P4945643421805678292

namespace A162255

/-- `A074323(n+2)` -/
def P4945643421805678292.Spec : Prop :=
  ∀ n, P4945643421805678292.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P15860605887179089955

`A164073(n+2)`
-/

namespace A162255.P15860605887179089955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 2)

end

end A162255.P15860605887179089955

namespace A162255

/-- `A164073(n+2)` -/
def P15860605887179089955.Spec : Prop :=
  ∀ n, P15860605887179089955.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P17871124878216293322

`abs(Δ[A143095(n)])`
-/

namespace A162255.P17871124878216293322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162255.P17871124878216293322

namespace A162255

/-- `abs(Δ[A143095(n)])` -/
def P17871124878216293322.Spec : Prop :=
  ∀ n, P17871124878216293322.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P10587445733772159123

`A052955(xor(1, n))+1`
-/

namespace A162255.P10587445733772159123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (Nat.xor 1 n) + 1

end

end A162255.P10587445733772159123

namespace A162255

/-- `A052955(xor(1, n))+1` -/
def P10587445733772159123.Spec : Prop :=
  ∀ n, P10587445733772159123.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P298885030962469488

`A164090(xor(1, n)+1)`
-/

namespace A162255.P298885030962469488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (Nat.xor 1 n + 1)

end

end A162255.P298885030962469488

namespace A162255

/-- `A164090(xor(1, n)+1)` -/
def P298885030962469488.Spec : Prop :=
  ∀ n, P298885030962469488.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P16990967013795975088

`A029744(xor(1, n+2))`
-/

namespace A162255.P16990967013795975088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (Nat.xor 1 (n + 2))

end

end A162255.P16990967013795975088

namespace A162255

/-- `A029744(xor(1, n+2))` -/
def P16990967013795975088.Spec : Prop :=
  ∀ n, P16990967013795975088.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P7005472883445561369

`abs(Δ[A135530(n+1)])`
-/

namespace A162255.P7005472883445561369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162255.P7005472883445561369

namespace A162255

/-- `abs(Δ[A135530(n+1)])` -/
def P7005472883445561369.Spec : Prop :=
  ∀ n, P7005472883445561369.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P7896237245385273157

`abs(Δ[A316742(n+1)])`
-/

namespace A162255.P7896237245385273157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162255.P7896237245385273157

namespace A162255

/-- `abs(Δ[A316742(n+1)])` -/
def P7896237245385273157.Spec : Prop :=
  ∀ n, P7896237245385273157.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P4327294160819401078

`∑[A137206(n+1)]+1`
-/

namespace A162255.P4327294160819401078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A162255.P4327294160819401078

namespace A162255

/-- `∑[A137206(n+1)]+1` -/
def P4327294160819401078.Spec : Prop :=
  ∀ n, P4327294160819401078.a n = A162255 (n + 1)

end A162255

/-! ## A162255.P15227736805217190589

`A052955(A004442(n))+1`
-/

namespace A162255.P15227736805217190589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004442 n).toNat + 1

end

end A162255.P15227736805217190589

namespace A162255

/-- `A052955(A004442(n))+1` -/
def P15227736805217190589.Spec : Prop :=
  ∀ n, P15227736805217190589.a n = A162255 (n + 1)

end A162255

/-!
# A162256: a(n) = (2*n^3 + 5*n^2 - 3*n)/2.

The programs for A162256, the canonical program `A162256.P11135924603036935486` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162256 has offset 1).

The definition of A162256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-3*(n+1))/2` (program `A162256.P13961261195764796028`, by `A162256.P13961261195764796028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162256.P811830862068031998

`ogf((2+7x-3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162256.P811830862068031998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, -3] [1, -4, 6, -4, 1] n

end

end A162256.P811830862068031998

namespace A162256

/-- `ogf((2+7x-3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P811830862068031998.Spec : Prop :=
  ∀ n, P811830862068031998.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P17093857897272635472

`(n+1)*(5*(n+1)-3)/2+(n+1)^3`
-/

namespace A162256.P17093857897272635472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((5 * (n + 1) : ℤ) - 3) : ℚ) / 2 + ((n + 1) ^ 3 : ℚ)

end

end A162256.P17093857897272635472

namespace A162256

/-- `(n+1)*(5*(n+1)-3)/2+(n+1)^3` -/
def P17093857897272635472.Spec : Prop :=
  ∀ n, P17093857897272635472.a n = (A162256 (n + 1) : ℚ)

theorem P17093857897272635472.correct : P17093857897272635472.Spec := by
  intro n
  simp only [A162256, Nat.add_sub_cancel, A162256.P17093857897272635472.a, A162256.P11135924603036935486.f1, A162256.P11135924603036935486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162256

/-! ## A162256.P13961261195764796028

`(2*(n+1)^3+5*(n+1)²-3*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162256.P13961261195764796028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) : ℚ) / 2

end

end A162256.P13961261195764796028

namespace A162256

/-- `(2*(n+1)^3+5*(n+1)²-3*(n+1))/2` -/
def P13961261195764796028.Spec : Prop :=
  ∀ n, P13961261195764796028.a n = (A162256 (n + 1) : ℚ)

theorem P13961261195764796028.correct : P13961261195764796028.Spec := by
  intro n
  simp only [A162256, Nat.add_sub_cancel, A162256.P13961261195764796028.a, A162256.P11135924603036935486.f1, A162256.P11135924603036935486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162256

/-! ## A162256.P18150044221649407742

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=11`
-/

namespace A162256.P18150044221649407742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162256.P18150044221649407742

namespace A162256

/-- `∑[∑[a(n-1)+6]]` -/
def P18150044221649407742.Spec : Prop :=
  ∀ n, (P18150044221649407742.a n : ℤ) = A162256 (n + 1)

end A162256

/-! ## A162256.P2891611666201580490

`-(xor(2*n, -1)*∑[n+2])`
-/

namespace A162256.P2891611666201580490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (2 * n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A162256.P2891611666201580490

namespace A162256

/-- `-(xor(2*n, -1)*∑[n+2])` -/
def P2891611666201580490.Spec : Prop :=
  ∀ n, P2891611666201580490.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P15959540272337536177

`floor((2*n+1)/acot(∑[n+2]))`
-/

namespace A162256.P15959540272337536177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A162256.P15959540272337536177

namespace A162256

/-- `floor((2*n+1)/acot(∑[n+2]))` -/
def P15959540272337536177.Spec : Prop :=
  ∀ n, P15959540272337536177.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P11691150573764142157

`round((2*n+1)/acot(∑[n+2]))`
-/

namespace A162256.P11691150573764142157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A162256.P11691150573764142157

namespace A162256

/-- `round((2*n+1)/acot(∑[n+2]))` -/
def P11691150573764142157.Spec : Prop :=
  ∀ n, P11691150573764142157.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P4780779034977871190

`∑[Δ[(n+3)*C(2*n, 2)]/2]`
-/

namespace A162256.P4780779034977871190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose (2 * n) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162256.P4780779034977871190

namespace A162256

/-- `∑[Δ[(n+3)*C(2*n, 2)]/2]` -/
def P4780779034977871190.Spec : Prop :=
  ∀ n, P4780779034977871190.a n = (A162256 (n + 1) : ℚ)

end A162256

/-! ## A162256.P3408845418794493634

`∑[n-2]+lcm(n+1, (n+2)²)`
-/

namespace A162256.P3408845418794493634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm (n + 1) ((n + 2) ^ 2) : ℤ)

end

end A162256.P3408845418794493634

namespace A162256

/-- `∑[n-2]+lcm(n+1, (n+2)²)` -/
def P3408845418794493634.Spec : Prop :=
  ∀ n, P3408845418794493634.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P11550147801567010548

`abs((2*n+1)*(1-C(n+3, 2)))`
-/

namespace A162256.P11550147801567010548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) * (1 - (Nat.choose (n + 3) 2 : ℤ))|

end

end A162256.P11550147801567010548

namespace A162256

/-- `abs((2*n+1)*(1-C(n+3, 2)))` -/
def P11550147801567010548.Spec : Prop :=
  ∀ n, P11550147801567010548.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P7272895794012957239

`-((2*n+1)*(1-C(n+3, 2)))`
-/

namespace A162256.P7272895794012957239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * (1 - (Nat.choose (n + 3) 2 : ℤ)))

end

end A162256.P7272895794012957239

namespace A162256

/-- `-((2*n+1)*(1-C(n+3, 2)))` -/
def P7272895794012957239.Spec : Prop :=
  ∀ n, P7272895794012957239.a n = A162256 (n + 1)

theorem P7272895794012957239.correct : P7272895794012957239.Spec := by
  intro n
  simp only [A162256, Nat.add_sub_cancel, A162256.P7272895794012957239.a, A162256.P11135924603036935486.f1, A162256.P11135924603036935486.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162256

/-! ## A162256.P16796735449328610313

`lcm(2, 2*n+1)*∑[n+2]/2`
-/

namespace A162256.P16796735449328610313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A162256.P16796735449328610313

namespace A162256

/-- `lcm(2, 2*n+1)*∑[n+2]/2` -/
def P16796735449328610313.Spec : Prop :=
  ∀ n, P16796735449328610313.a n = (A162256 (n + 1) : ℚ)

end A162256

/-! ## A162256.P15654597426543778074

`-(or(1, -(2*n+1))*∑[n+2])`
-/

namespace A162256.P15654597426543778074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (-(2 * n + 1 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A162256.P15654597426543778074

namespace A162256

/-- `-(or(1, -(2*n+1))*∑[n+2])` -/
def P15654597426543778074.Spec : Prop :=
  ∀ n, P15654597426543778074.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P15581063333148506595

`∑[n-1]+(n+3)*record[(n-1)²]`
-/

namespace A162256.P15581063333148506595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A162256.P15581063333148506595

namespace A162256

/-- `∑[n-1]+(n+3)*record[(n-1)²]` -/
def P15581063333148506595.Spec : Prop :=
  ∀ n, P15581063333148506595.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P16849958733054201744

`and(2, n²)+(2*n+1)*∑[n+2]`
-/

namespace A162256.P16849958733054201744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n ^ 2) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162256.P16849958733054201744

namespace A162256

/-- `and(2, n²)+(2*n+1)*∑[n+2]` -/
def P16849958733054201744.Spec : Prop :=
  ∀ n, (P16849958733054201744.a n : ℤ) = A162256 (n + 1)

end A162256

/-! ## A162256.P11135924603036935486

`(2*n+1)*C(n+3, 2)-Δ[n²]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162256

/-- `(2*n+1)*C(n+3, 2)-Δ[n²]` -/
def P11135924603036935486.Spec : Prop :=
  ∀ n, P11135924603036935486.a n = A162256 (n + 1)

theorem P11135924603036935486.correct : P11135924603036935486.Spec := by
  intro n
  simp only [A162256, Nat.add_sub_cancel]

end A162256

/-! ## A162256.P12627362854383628324

`lcm((2*n+1)*∑[n+2], ∑[n+2])`
-/

namespace A162256.P12627362854383628324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162256.P12627362854383628324

namespace A162256

/-- `lcm((2*n+1)*∑[n+2], ∑[n+2])` -/
def P12627362854383628324.Spec : Prop :=
  ∀ n, (P12627362854383628324.a n : ℤ) = A162256 (n + 1)

end A162256

/-! ## A162256.P11571263598518645335

`C((2*n+1)*∑[n+2], ϕ²-ϕ)`
-/

namespace A162256.P11571263598518645335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A162256.P11571263598518645335

namespace A162256

/-- `C((2*n+1)*∑[n+2], ϕ²-ϕ)` -/
def P11571263598518645335.Spec : Prop :=
  ∀ n, (P11571263598518645335.a n : ℤ) = A162256 (n + 1)

end A162256

/-! ## A162256.P17462272105000717272

`∑[n-1]+(n+3)*C(n+1, n)²`
-/

namespace A162256.P17462272105000717272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 3) * Nat.choose (n + 1) n ^ 2 : ℤ)

end

end A162256.P17462272105000717272

namespace A162256

/-- `∑[n-1]+(n+3)*C(n+1, n)²` -/
def P17462272105000717272.Spec : Prop :=
  ∀ n, P17462272105000717272.a n = A162256 (n + 1)

end A162256

/-! ## A162256.P735982317770162613

`C(2, n+3)+(2*n+1)*∑[n+2]`
-/

namespace A162256.P735982317770162613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162256.P735982317770162613

namespace A162256

/-- `C(2, n+3)+(2*n+1)*∑[n+2]` -/
def P735982317770162613.Spec : Prop :=
  ∀ n, (P735982317770162613.a n : ℤ) = A162256 (n + 1)

end A162256

/-!
# A162257: a(n) = (2*n^3 + 5*n^2 - 11*n)/2.

The programs for A162257, the canonical program `A162257.P2794998858933653466` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162257 has offset 1).

The definition of A162257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-11*(n+1))/2` (program `A162257.P1893033787889540123`, by `A162257.P1893033787889540123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162257.P17165919342752303083

`ogf((-2+15x-7x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162257.P17165919342752303083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 15, -7] [1, -4, 6, -4, 1] n

end

end A162257.P17165919342752303083

namespace A162257

/-- `ogf((-2+15x-7x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17165919342752303083.Spec : Prop :=
  ∀ n, P17165919342752303083.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P1893033787889540123

`(2*(n+1)^3+5*(n+1)²-11*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162257.P1893033787889540123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (11 * (n + 1) : ℤ) : ℚ) / 2

end

end A162257.P1893033787889540123

namespace A162257

/-- `(2*(n+1)^3+5*(n+1)²-11*(n+1))/2` -/
def P1893033787889540123.Spec : Prop :=
  ∀ n, P1893033787889540123.a n = (A162257 (n + 1) : ℚ)

theorem P1893033787889540123.correct : P1893033787889540123.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162257, Nat.add_sub_cancel, A162257.P1893033787889540123.a, A162257.P2794998858933653466.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162257, Nat.add_sub_cancel, A162257.P1893033787889540123.a, A162257.P2794998858933653466.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162257

/-! ## A162257.P2794998858933653466

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-2, a(1)=7, a(2)=33, a(3)=82`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162257

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2794998858933653466.Spec : Prop :=
  ∀ n, P2794998858933653466.a n = A162257 (n + 1)

theorem P2794998858933653466.correct : P2794998858933653466.Spec := by
  intro n
  simp only [A162257, Nat.add_sub_cancel]

end A162257

/-! ## A162257.P4151695620579938932

`(n+1)^3-∑[a(n-1)-5]` with `a(0)=3`
-/

namespace A162257.P4151695620579938932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162257.P4151695620579938932

namespace A162257

/-- `(n+1)^3-∑[a(n-1)-5]` -/
def P4151695620579938932.Spec : Prop :=
  ∀ n, P4151695620579938932.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P523730011810027133

`(2*n+1)*(C(n+2, 2)+n-1)-2`
-/

namespace A162257.P523730011810027133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose (n + 2) 2 : ℤ) + ((n : ℤ) - 1)) - 2

end

end A162257.P523730011810027133

namespace A162257

/-- `(2*n+1)*(C(n+2, 2)+n-1)-2` -/
def P523730011810027133.Spec : Prop :=
  ∀ n, P523730011810027133.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P13914867491983938466

`∑[A140677(n)-2]`
-/

namespace A162257.P13914867491983938466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162257.P13914867491983938466

namespace A162257

/-- `∑[A140677(n)-2]` -/
def P13914867491983938466.Spec : Prop :=
  ∀ n, P13914867491983938466.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P9874425136205460480

`A090197(n)-∑[n+3]`
-/

namespace A162257.P9874425136205460480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162257.P9874425136205460480

namespace A162257

/-- `A090197(n)-∑[n+3]` -/
def P9874425136205460480.Spec : Prop :=
  ∀ n, P9874425136205460480.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P9834222842632677765

`A162262(n+1)+1+n`
-/

namespace A162257.P9834222842632677765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162262 (n + 1) + 1 + (n : ℤ)

end

end A162257.P9834222842632677765

namespace A162257

/-- `A162262(n+1)+1+n` -/
def P9834222842632677765.Spec : Prop :=
  ∀ n, P9834222842632677765.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P15326925894668683699

`A162258(n+1)-(n+1)`
-/

namespace A162257.P15326925894668683699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162258 (n + 1) - (n + 1 : ℤ)

end

end A162257.P15326925894668683699

namespace A162257

/-- `A162258(n+1)-(n+1)` -/
def P15326925894668683699.Spec : Prop :=
  ∀ n, P15326925894668683699.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P1010154080959282673

`A162259(n+1)+3*(n+1)`
-/

namespace A162257.P1010154080959282673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162259 (n + 1) + (3 * (n + 1) : ℤ)

end

end A162257.P1010154080959282673

namespace A162257

/-- `A162259(n+1)+3*(n+1)` -/
def P1010154080959282673.Spec : Prop :=
  ∀ n, P1010154080959282673.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P13939135593568144946

`A162261(n+1)-2*(n+1)`
-/

namespace A162257.P13939135593568144946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162257.P13939135593568144946

namespace A162257

/-- `A162261(n+1)-2*(n+1)` -/
def P13939135593568144946.Spec : Prop :=
  ∀ n, P13939135593568144946.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P6154056872619405026

`A162265(n+1)-3*(n+1)`
-/

namespace A162257.P6154056872619405026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162265 (n + 1) - (3 * (n + 1) : ℤ)

end

end A162257.P6154056872619405026

namespace A162257

/-- `A162265(n+1)-3*(n+1)` -/
def P6154056872619405026.Spec : Prop :=
  ∀ n, P6154056872619405026.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P870980877152224164

`A162256(n+1)-4*(n+1)`
-/

namespace A162257.P870980877152224164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) - (4 * (n + 1) : ℤ)

end

end A162257.P870980877152224164

namespace A162257

/-- `A162256(n+1)-4*(n+1)` -/
def P870980877152224164.Spec : Prop :=
  ∀ n, P870980877152224164.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P14993084062497731376

`(2*n+1)*A055998(n)-2`
-/

namespace A162257.P14993084062497731376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A055998 n - 2

end

end A162257.P14993084062497731376

namespace A162257

/-- `(2*n+1)*A055998(n)-2` -/
def P14993084062497731376.Spec : Prop :=
  ∀ n, P14993084062497731376.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P4895390887916555386

`A144640(n+1)-5*(n+1)`
-/

namespace A162257.P4895390887916555386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144640 (n + 1) - (5 * (n + 1) : ℤ)

end

end A162257.P4895390887916555386

namespace A162257

/-- `A144640(n+1)-5*(n+1)` -/
def P4895390887916555386.Spec : Prop :=
  ∀ n, P4895390887916555386.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P8268403736584597387

`A035597(n+1)-∑[(2-n)²]`
-/

namespace A162257.P8268403736584597387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162257.P8268403736584597387

namespace A162257

/-- `A035597(n+1)-∑[(2-n)²]` -/
def P8268403736584597387.Spec : Prop :=
  ∀ n, P8268403736584597387.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P12295245118527311379

`A059270(n)+n*(4*n+2)-2`
-/

namespace A162257.P12295245118527311379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + (n * (4 * n + 2) : ℤ) - 2

end

end A162257.P12295245118527311379

namespace A162257

/-- `A059270(n)+n*(4*n+2)-2` -/
def P12295245118527311379.Spec : Prop :=
  ∀ n, P12295245118527311379.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P15303889615783931725

`A318765(n)+A147875(n)`
-/

namespace A162257.P15303889615783931725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318765 n + A147875 n

end

end A162257.P15303889615783931725

namespace A162257

/-- `A318765(n)+A147875(n)` -/
def P15303889615783931725.Spec : Prop :=
  ∀ n, P15303889615783931725.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P8652583642132593082

`A268484(n)-A080957(n)`
-/

namespace A162257.P8652583642132593082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268484 n - A080957 n

end

end A162257.P8652583642132593082

namespace A162257

/-- `A268484(n)-A080957(n)` -/
def P8652583642132593082.Spec : Prop :=
  ∀ n, P8652583642132593082.a n = A162257 (n + 1)

end A162257

/-! ## A162257.P2632492262306772724

`A270710(n)+∑[A270710(n)]`
-/

namespace A162257.P2632492262306772724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162257.P2632492262306772724

namespace A162257

/-- `A270710(n)+∑[A270710(n)]` -/
def P2632492262306772724.Spec : Prop :=
  ∀ n, P2632492262306772724.a n = A162257 (n + 1)

end A162257

/-!
# A162258: a(n) = (2*n^3 + 5*n^2 - 9*n)/2.

The programs for A162258, the canonical program `A162258.P14212006813669111974` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162258 has offset 1).

The definition of A162258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-9*(n+1))/2` (program `A162258.P5171268559263164879`, by `A162258.P5171268559263164879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162258.P362245894348015753

`ogf((-1+13x-6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162258.P362245894348015753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 13, -6] [1, -4, 6, -4, 1] n

end

end A162258.P362245894348015753

namespace A162258

/-- `ogf((-1+13x-6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P362245894348015753.Spec : Prop :=
  ∀ n, P362245894348015753.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P5171268559263164879

`(2*(n+1)^3+5*(n+1)²-9*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162258.P5171268559263164879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (9 * (n + 1) : ℤ) : ℚ) / 2

end

end A162258.P5171268559263164879

namespace A162258

/-- `(2*(n+1)^3+5*(n+1)²-9*(n+1))/2` -/
def P5171268559263164879.Spec : Prop :=
  ∀ n, P5171268559263164879.a n = (A162258 (n + 1) : ℚ)

theorem P5171268559263164879.correct : P5171268559263164879.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162258, Nat.add_sub_cancel, A162258.P5171268559263164879.a, A162258.P14212006813669111974.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162258, Nat.add_sub_cancel, A162258.P5171268559263164879.a, A162258.P14212006813669111974.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162258

/-! ## A162258.P14212006813669111974

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=9, a(2)=36, a(3)=86`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162258

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14212006813669111974.Spec : Prop :=
  ∀ n, P14212006813669111974.a n = A162258 (n + 1)

theorem P14212006813669111974.correct : P14212006813669111974.Spec := by
  intro n
  simp only [A162258, Nat.add_sub_cancel]

end A162258

/-! ## A162258.P12353735804161508191

`(n+1)^3-∑[a(n-1)-5]` with `a(0)=2`
-/

namespace A162258.P12353735804161508191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162258.P12353735804161508191

namespace A162258

/-- `(n+1)^3-∑[a(n-1)-5]` -/
def P12353735804161508191.Spec : Prop :=
  ∀ n, P12353735804161508191.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P2308342017469423697

`(2*n+1)*(C(n+3, 2)-2)-(n+2)`
-/

namespace A162258.P2308342017469423697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose (n + 3) 2 : ℤ) - 2) - (n + 2 : ℤ)

end

end A162258.P2308342017469423697

namespace A162258

/-- `(2*n+1)*(C(n+3, 2)-2)-(n+2)` -/
def P2308342017469423697.Spec : Prop :=
  ∀ n, P2308342017469423697.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P13181400013457270274

`∑[A140677(n)-1]`
-/

namespace A162258.P13181400013457270274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162258.P13181400013457270274

namespace A162258

/-- `∑[A140677(n)-1]` -/
def P13181400013457270274.Spec : Prop :=
  ∀ n, P13181400013457270274.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P2609789408003778730

`∑[A277978(n)-(n+1)]`
-/

namespace A162258.P2609789408003778730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162258.P2609789408003778730

namespace A162258

/-- `∑[A277978(n)-(n+1)]` -/
def P2609789408003778730.Spec : Prop :=
  ∀ n, P2609789408003778730.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P240275248266876623

`A090197(n)-∑[n+2]`
-/

namespace A162258.P240275248266876623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162258.P240275248266876623

namespace A162258

/-- `A090197(n)-∑[n+2]` -/
def P240275248266876623.Spec : Prop :=
  ∀ n, P240275248266876623.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P8442606232590831617

`A162257(n+1)+1+n`
-/

namespace A162258.P8442606232590831617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162257 (n + 1) + 1 + (n : ℤ)

end

end A162258.P8442606232590831617

namespace A162258

/-- `A162257(n+1)+1+n` -/
def P8442606232590831617.Spec : Prop :=
  ∀ n, P8442606232590831617.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P8674000314363755765

`A162261(n+1)-(n+1)`
-/

namespace A162258.P8674000314363755765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) - (n + 1 : ℤ)

end

end A162258.P8674000314363755765

namespace A162258

/-- `A162261(n+1)-(n+1)` -/
def P8674000314363755765.Spec : Prop :=
  ∀ n, P8674000314363755765.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P16179653149327270180

`A022275(n)+(n-1)^3`
-/

namespace A162258.P16179653149327270180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + ((n : ℤ) - 1) ^ 3

end

end A162258.P16179653149327270180

namespace A162258

/-- `A022275(n)+(n-1)^3` -/
def P16179653149327270180.Spec : Prop :=
  ∀ n, P16179653149327270180.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P12776873908254381728

`∑[A140678(n)]-(n+1)²`
-/

namespace A162258.P12776873908254381728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A162258.P12776873908254381728

namespace A162258

/-- `∑[A140678(n)]-(n+1)²` -/
def P12776873908254381728.Spec : Prop :=
  ∀ n, P12776873908254381728.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P14354352068943497300

`A162262(n+1)+2*(n+1)`
-/

namespace A162258.P14354352068943497300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162262 (n + 1) + (2 * (n + 1) : ℤ)

end

end A162258.P14354352068943497300

namespace A162258

/-- `A162262(n+1)+2*(n+1)` -/
def P14354352068943497300.Spec : Prop :=
  ∀ n, P14354352068943497300.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P12313283395060751828

`A162265(n+1)-2*(n+1)`
-/

namespace A162258.P12313283395060751828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162265 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162258.P12313283395060751828

namespace A162258

/-- `A162265(n+1)-2*(n+1)` -/
def P12313283395060751828.Spec : Prop :=
  ∀ n, P12313283395060751828.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P10799651059829785576

`A162256(n+1)-3*(n+1)`
-/

namespace A162258.P10799651059829785576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) - (3 * (n + 1) : ℤ)

end

end A162258.P10799651059829785576

namespace A162258

/-- `A162256(n+1)-3*(n+1)` -/
def P10799651059829785576.Spec : Prop :=
  ∀ n, P10799651059829785576.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P12593278791386850686

`A162259(n+1)+4*(n+1)`
-/

namespace A162258.P12593278791386850686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162259 (n + 1) + (4 * (n + 1) : ℤ)

end

end A162258.P12593278791386850686

namespace A162258

/-- `A162259(n+1)+4*(n+1)` -/
def P12593278791386850686.Spec : Prop :=
  ∀ n, P12593278791386850686.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P6122270401825636193

`A144640(n+1)-4*(n+1)`
-/

namespace A162258.P6122270401825636193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144640 (n + 1) - (4 * (n + 1) : ℤ)

end

end A162258.P6122270401825636193

namespace A162258

/-- `A144640(n+1)-4*(n+1)` -/
def P6122270401825636193.Spec : Prop :=
  ∀ n, P6122270401825636193.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P4743998318513623177

`A162254(n+1)-5*(n+1)`
-/

namespace A162258.P4743998318513623177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) - (5 * (n + 1) : ℤ)

end

end A162258.P4743998318513623177

namespace A162258

/-- `A162254(n+1)-5*(n+1)` -/
def P4743998318513623177.Spec : Prop :=
  ∀ n, P4743998318513623177.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P13053618004196543551

`A081438(n)+(n+1)*(n-2)`
-/

namespace A162258.P13053618004196543551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + (n + 1 : ℤ) * ((n : ℤ) - 2)

end

end A162258.P13053618004196543551

namespace A162258

/-- `A081438(n)+(n+1)*(n-2)` -/
def P13053618004196543551.Spec : Prop :=
  ∀ n, P13053618004196543551.a n = A162258 (n + 1)

end A162258

/-! ## A162258.P5215221014607715013

`(2*(n+5)+1)*A000217(n)-(n+1)²`
-/

namespace A162258.P5215221014607715013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 5) + 1 : ℤ) * A000217 n - ((n + 1) ^ 2 : ℤ)

end

end A162258.P5215221014607715013

namespace A162258

/-- `(2*(n+5)+1)*A000217(n)-(n+1)²` -/
def P5215221014607715013.Spec : Prop :=
  ∀ n, P5215221014607715013.a n = A162258 (n + 1)

end A162258

/-!
# A162259: a(n) = (2*n^3 + 5*n^2 - 17*n)/2.

The programs for A162259, the canonical program `A162259.P8480081854789178794` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162259 has offset 1).

The definition of A162259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-17*(n+1))/2` (program `A162259.P1825221243977001470`, by `A162259.P1825221243977001470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162259.P12635165609425203708

`ogf((-5+21x-10x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162259.P12635165609425203708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-5, 21, -10] [1, -4, 6, -4, 1] n

end

end A162259.P12635165609425203708

namespace A162259

/-- `ogf((-5+21x-10x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12635165609425203708.Spec : Prop :=
  ∀ n, P12635165609425203708.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P1825221243977001470

`(2*(n+1)^3+5*(n+1)²-17*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162259.P1825221243977001470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (17 * (n + 1) : ℤ) : ℚ) / 2

end

end A162259.P1825221243977001470

namespace A162259

/-- `(2*(n+1)^3+5*(n+1)²-17*(n+1))/2` -/
def P1825221243977001470.Spec : Prop :=
  ∀ n, P1825221243977001470.a n = (A162259 (n + 1) : ℚ)

theorem P1825221243977001470.correct : P1825221243977001470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162259, Nat.add_sub_cancel, A162259.P1825221243977001470.a, A162259.P8480081854789178794.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162259, Nat.add_sub_cancel, A162259.P1825221243977001470.a, A162259.P8480081854789178794.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162259

/-! ## A162259.P8480081854789178794

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-5, a(1)=1, a(2)=24, a(3)=70`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162259

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8480081854789178794.Spec : Prop :=
  ∀ n, P8480081854789178794.a n = A162259 (n + 1)

theorem P8480081854789178794.correct : P8480081854789178794.Spec := by
  intro n
  simp only [A162259, Nat.add_sub_cancel]

end A162259

/-! ## A162259.P6482602025249830786

`∑[∑[a(n-1)+6]-10]` with `a(0)=5`
-/

namespace A162259.P6482602025249830786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162259.P6482602025249830786

namespace A162259

/-- `∑[∑[a(n-1)+6]-10]` -/
def P6482602025249830786.Spec : Prop :=
  ∀ n, P6482602025249830786.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P18348483543663646724

`(2*n+1)*(C(n+2, 2)+n-3)+n-3`
-/

namespace A162259.P18348483543663646724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose (n + 2) 2 : ℤ) + ((n : ℤ) - 3)) + ((n : ℤ) - 3)

end

end A162259.P18348483543663646724

namespace A162259

/-- `(2*n+1)*(C(n+2, 2)+n-3)+n-3` -/
def P18348483543663646724.Spec : Prop :=
  ∀ n, P18348483543663646724.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P3856260092822440519

`∑[A140677(n)-5]`
-/

namespace A162259.P3856260092822440519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162259.P3856260092822440519

namespace A162259

/-- `∑[A140677(n)-5]` -/
def P3856260092822440519.Spec : Prop :=
  ∀ n, P3856260092822440519.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P12913617054612467676

`A162262(n+1)-2*(n+1)`
-/

namespace A162259.P12913617054612467676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162262 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162259.P12913617054612467676

namespace A162259

/-- `A162262(n+1)-2*(n+1)` -/
def P12913617054612467676.Spec : Prop :=
  ∀ n, P12913617054612467676.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P5464928331812870704

`A162257(n+1)-3*(n+1)`
-/

namespace A162259.P5464928331812870704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162257 (n + 1) - (3 * (n + 1) : ℤ)

end

end A162259.P5464928331812870704

namespace A162259

/-- `A162257(n+1)-3*(n+1)` -/
def P5464928331812870704.Spec : Prop :=
  ∀ n, P5464928331812870704.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P723323867225386709

`A162258(n+1)-4*(n+1)`
-/

namespace A162259.P723323867225386709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162258 (n + 1) - (4 * (n + 1) : ℤ)

end

end A162259.P723323867225386709

namespace A162259

/-- `A162258(n+1)-4*(n+1)` -/
def P723323867225386709.Spec : Prop :=
  ∀ n, P723323867225386709.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P17541818477242359303

`A162261(n+1)-5*(n+1)`
-/

namespace A162259.P17541818477242359303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) - (5 * (n + 1) : ℤ)

end

end A162259.P17541818477242359303

namespace A162259

/-- `A162261(n+1)-5*(n+1)` -/
def P17541818477242359303.Spec : Prop :=
  ∀ n, P17541818477242359303.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P13491058442013612176

`A162265(n+1)-6*(n+1)`
-/

namespace A162259.P13491058442013612176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162265 (n + 1) - (6 * (n + 1) : ℤ)

end

end A162259.P13491058442013612176

namespace A162259

/-- `A162265(n+1)-6*(n+1)` -/
def P13491058442013612176.Spec : Prop :=
  ∀ n, P13491058442013612176.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P5214397510753694676

`A016777(n+1)+A162265(n+1)-A017173(n+1)`
-/

namespace A162259.P5214397510753694676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + (A162265 (n + 1) - A017173 (n + 1))

end

end A162259.P5214397510753694676

namespace A162259

/-- `A016777(n+1)+A162265(n+1)-A017173(n+1)` -/
def P5214397510753694676.Spec : Prop :=
  ∀ n, P5214397510753694676.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P12661650717912593504

`A163673(n+1)-(A017209(n)+A017041(n+1))`
-/

namespace A162259.P12661650717912593504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 (n + 1) - (A017209 n + A017041 (n + 1))

end

end A162259.P12661650717912593504

namespace A162259

/-- `A163673(n+1)-(A017209(n)+A017041(n+1))` -/
def P12661650717912593504.Spec : Prop :=
  ∀ n, P12661650717912593504.a n = A162259 (n + 1)

end A162259

/-! ## A162259.P2106874613587254903

`A005843(n)*A055998(n+1)-A140090(n+1)`
-/

namespace A162259.P2106874613587254903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A055998 (n + 1) - A140090 (n + 1)

end

end A162259.P2106874613587254903

namespace A162259

/-- `A005843(n)*A055998(n+1)-A140090(n+1)` -/
def P2106874613587254903.Spec : Prop :=
  ∀ n, P2106874613587254903.a n = A162259 (n + 1)

end A162259

/-!
# A162260: a(n) = (n^3 + 4*n^2 - n)/2.

The programs for A162260, the canonical program `A162260.P728240139045869496` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162260 has offset 1).

The definition of A162260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+4*(n+1)²-(n+1))/2` (program `A162260.P7770152261189405719`, by `A162260.P7770152261189405719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162260.P6089035439676868357

`ogf((2+3x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162260.P6089035439676868357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -2] [1, -4, 6, -4, 1] n

end

end A162260.P6089035439676868357

namespace A162260

/-- `ogf((2+3x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6089035439676868357.Spec : Prop :=
  ∀ n, P6089035439676868357.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P7770152261189405719

`((n+1)^3+4*(n+1)²-(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162260.P7770152261189405719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 + 4 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) : ℚ) / 2

end

end A162260.P7770152261189405719

namespace A162260

/-- `((n+1)^3+4*(n+1)²-(n+1))/2` -/
def P7770152261189405719.Spec : Prop :=
  ∀ n, P7770152261189405719.a n = (A162260 (n + 1) : ℚ)

theorem P7770152261189405719.correct : P7770152261189405719.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162260, Nat.add_sub_cancel, A162260.P7770152261189405719.a, A162260.P728240139045869496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162260, Nat.add_sub_cancel, A162260.P7770152261189405719.a, A162260.P728240139045869496.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162260

/-! ## A162260.P728240139045869496

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=11, a(2)=30, a(3)=62`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162260

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P728240139045869496.Spec : Prop :=
  ∀ n, P728240139045869496.a n = A162260 (n + 1)

theorem P728240139045869496.correct : P728240139045869496.Spec := by
  intro n
  simp only [A162260, Nat.add_sub_cancel]

end A162260

/-! ## A162260.P5729625478382309434

`∑[∑[a(n-1)+3]]` with `a(0)=2, a(1)=7`
-/

namespace A162260.P5729625478382309434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162260.P5729625478382309434

namespace A162260

/-- `∑[∑[a(n-1)+3]]` -/
def P5729625478382309434.Spec : Prop :=
  ∀ n, (P5729625478382309434.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P14983568070625149014

`∑[∑[ogf((2+3x-2x^2)/(1-2x+x^2))]]`
-/

namespace A162260.P14983568070625149014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162260.P14983568070625149014

namespace A162260

/-- `∑[∑[ogf((2+3x-2x^2)/(1-2x+x^2))]]` -/
def P14983568070625149014.Spec : Prop :=
  ∀ n, P14983568070625149014.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P880441342879296385

`lcm(n+1, (n+3)²-5)/2`
-/

namespace A162260.P880441342879296385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (((n + 3) ^ 2 : ℤ) - 5) : ℚ) / 2

end

end A162260.P880441342879296385

namespace A162260

/-- `lcm(n+1, (n+3)²-5)/2` -/
def P880441342879296385.Spec : Prop :=
  ∀ n, P880441342879296385.a n = (A162260 (n + 1) : ℚ)

end A162260

/-! ## A162260.P14872375502983953121

`(sinh(log(n+1))+2)*(n+1)²`
-/

namespace A162260.P14872375502983953121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sinh (Real.log (n + 1 : ℝ)) + 2) * ((n + 1) ^ 2 : ℝ)

end

end A162260.P14872375502983953121

namespace A162260

/-- `(sinh(log(n+1))+2)*(n+1)²` -/
def P14872375502983953121.Spec : Prop :=
  ∀ n, P14872375502983953121.a n = (A162260 (n + 1) : ℝ)

end A162260

/-! ## A162260.P16421475676150121857

`(C(n+3, 2)-2)*(n+2)-n`
-/

namespace A162260.P16421475676150121857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 2 : ℤ) - 2) * (n + 2 : ℤ) - (n : ℤ)

end

end A162260.P16421475676150121857

namespace A162260

/-- `(C(n+3, 2)-2)*(n+2)-n` -/
def P16421475676150121857.Spec : Prop :=
  ∀ n, P16421475676150121857.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P3378112103691529870

`C(n+1, 2)+(n+1)*∑[n+2]`
-/

namespace A162260.P3378112103691529870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162260.P3378112103691529870

namespace A162260

/-- `C(n+1, 2)+(n+1)*∑[n+2]` -/
def P3378112103691529870.Spec : Prop :=
  ∀ n, (P3378112103691529870.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P7007167166321937800

`∑[lcm(2, 2*n+1)]+∑[∑[3*n]]`
-/

namespace A162260.P7007167166321937800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A162260.P7007167166321937800

namespace A162260

/-- `∑[lcm(2, 2*n+1)]+∑[∑[3*n]]` -/
def P7007167166321937800.Spec : Prop :=
  ∀ n, (P7007167166321937800.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P2386121800725106380

`(n+2)*C(n+2, 2)+n²+n`
-/

namespace A162260.P2386121800725106380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (n + 2) 2 + (n ^ 2 + n)

end

end A162260.P2386121800725106380

namespace A162260

/-- `(n+2)*C(n+2, 2)+n²+n` -/
def P2386121800725106380.Spec : Prop :=
  ∀ n, (P2386121800725106380.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P13137157607363522391

`(n+2)*(C(n+1, 2)+2*n)+2`
-/

namespace A162260.P13137157607363522391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (Nat.choose (n + 1) 2 + 2 * n) + 2

end

end A162260.P13137157607363522391

namespace A162260

/-- `(n+2)*(C(n+1, 2)+2*n)+2` -/
def P13137157607363522391.Spec : Prop :=
  ∀ n, (P13137157607363522391.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P7154802383661175966

`∑[gcd(n, 2*n)]+(n+1)*∑[n+2]`
-/

namespace A162260.P7154802383661175966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162260.P7154802383661175966

namespace A162260

/-- `∑[gcd(n, 2*n)]+(n+1)*∑[n+2]` -/
def P7154802383661175966.Spec : Prop :=
  ∀ n, (P7154802383661175966.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P17999407169773121812

`(lcm(n+2, n+3)+n-2)*(n+1)/2`
-/

namespace A162260.P17999407169773121812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 2) (n + 3) : ℤ) + ((n : ℤ) - 2) : ℚ) * ((n + 1 : ℚ) / 2)

end

end A162260.P17999407169773121812

namespace A162260

/-- `(lcm(n+2, n+3)+n-2)*(n+1)/2` -/
def P17999407169773121812.Spec : Prop :=
  ∀ n, P17999407169773121812.a n = (A162260 (n + 1) : ℚ)

end A162260

/-! ## A162260.P7110250916698467793

`∑[and(2*n+1, 2*n)]+(n+2)*∑[n+1]`
-/

namespace A162260.P7110250916698467793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162260.P7110250916698467793

namespace A162260

/-- `∑[and(2*n+1, 2*n)]+(n+2)*∑[n+1]` -/
def P7110250916698467793.Spec : Prop :=
  ∀ n, (P7110250916698467793.a n : ℤ) = A162260 (n + 1)

end A162260

/-! ## A162260.P11593966042472793467

`∑[A059845(n)+2]`
-/

namespace A162260.P11593966042472793467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162260.P11593966042472793467

namespace A162260

/-- `∑[A059845(n)+2]` -/
def P11593966042472793467.Spec : Prop :=
  ∀ n, P11593966042472793467.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P8211309139068146682

`A393327(n)+2-n`
-/

namespace A162260.P8211309139068146682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393327 n + (2 - (n : ℤ))

end

end A162260.P8211309139068146682

namespace A162260

/-- `A393327(n)+2-n` -/
def P8211309139068146682.Spec : Prop :=
  ∀ n, P8211309139068146682.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P1198838214397242428

`n²+A164845(n)-1`
-/

namespace A162260.P1198838214397242428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A164845 n - 1)

end

end A162260.P1198838214397242428

namespace A162260

/-- `n²+A164845(n)-1` -/
def P1198838214397242428.Spec : Prop :=
  ∀ n, P1198838214397242428.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P10709565228625668081

`A111694(n+1)+n+2`
-/

namespace A162260.P10709565228625668081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111694 (n + 1) + (n + 2 : ℤ)

end

end A162260.P10709565228625668081

namespace A162260

/-- `A111694(n+1)+n+2` -/
def P10709565228625668081.Spec : Prop :=
  ∀ n, P10709565228625668081.a n = A162260 (n + 1)

end A162260

/-! ## A162260.P14391111004484654256

`∑[A052905(n)+(n+1)²]`
-/

namespace A162260.P14391111004484654256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162260.P14391111004484654256

namespace A162260

/-- `∑[A052905(n)+(n+1)²]` -/
def P14391111004484654256.Spec : Prop :=
  ∀ n, P14391111004484654256.a n = A162260 (n + 1)

end A162260

/-!
# A162261: a(n) = (2*n^3 + 5*n^2 - 7*n)/2.

The programs for A162261, the canonical program `A162261.P17485865614299167158` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162261 has offset 1).

The definition of A162261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-7*(n+1))/2` (program `A162261.P7887231984152600824`, by `A162261.P7887231984152600824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162261.P15346223104223193415

`ogf((11x-5x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162261.P15346223104223193415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, -5] [1, -4, 6, -4, 1] n

end

end A162261.P15346223104223193415

namespace A162261

/-- `ogf((11x-5x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15346223104223193415.Spec : Prop :=
  ∀ n, P15346223104223193415.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P7887231984152600824

`(2*(n+1)^3+5*(n+1)²-7*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162261.P7887231984152600824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) : ℚ) / 2

end

end A162261.P7887231984152600824

namespace A162261

/-- `(2*(n+1)^3+5*(n+1)²-7*(n+1))/2` -/
def P7887231984152600824.Spec : Prop :=
  ∀ n, P7887231984152600824.a n = (A162261 (n + 1) : ℚ)

theorem P7887231984152600824.correct : P7887231984152600824.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162261, Nat.add_sub_cancel, A162261.P7887231984152600824.a, A162261.P17485865614299167158.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162261, Nat.add_sub_cancel, A162261.P7887231984152600824.a, A162261.P17485865614299167158.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162261

/-! ## A162261.P17485865614299167158

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=11, a(2)=39, a(3)=90`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162261

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17485865614299167158.Spec : Prop :=
  ∀ n, P17485865614299167158.a n = A162261 (n + 1)

theorem P17485865614299167158.correct : P17485865614299167158.Spec := by
  intro n
  simp only [A162261, Nat.add_sub_cancel]

end A162261

/-! ## A162261.P6087209143869093082

`A151675(n+1)-8*(n+1)`
-/

namespace A162261.P6087209143869093082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151675 (n + 1) - (8 * (n + 1) : ℤ)

end

end A162261.P6087209143869093082

namespace A162261

/-- `A151675(n+1)-8*(n+1)` -/
def P6087209143869093082.Spec : Prop :=
  ∀ n, P6087209143869093082.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P9440695819186469073

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=11`
-/

namespace A162261.P9440695819186469073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P9440695819186469073

namespace A162261

/-- `∑[∑[a(n-1)+6]]` -/
def P9440695819186469073.Spec : Prop :=
  ∀ n, (P9440695819186469073.a n : ℤ) = A162261 (n + 1)

end A162261

/-! ## A162261.P8858265753976439264

`a(n-1)+n*(3*n+8)` with `a(0)=0`
-/

namespace A162261.P8858265753976439264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (3 * n + 8)

end

end A162261.P8858265753976439264

namespace A162261

/-- `a(n-1)+n*(3*n+8)` -/
def P8858265753976439264.Spec : Prop :=
  ∀ n, (P8858265753976439264.a n : ℤ) = A162261 (n + 1)

end A162261

/-! ## A162261.P14152966931217397326

`(2*n+1)*(C(n+3, 2)-2)-1`
-/

namespace A162261.P14152966931217397326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose (n + 3) 2 : ℤ) - 2) - 1

end

end A162261.P14152966931217397326

namespace A162261

/-- `(2*n+1)*(C(n+3, 2)-2)-1` -/
def P14152966931217397326.Spec : Prop :=
  ∀ n, P14152966931217397326.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P15948581563835514297

`∑[n-2]+lcm(n+1, 2-(n+2)²)`
-/

namespace A162261.P15948581563835514297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.lcm (n + 1 : ℤ) (2 - ((n + 2) ^ 2 : ℤ)) : ℤ)

end

end A162261.P15948581563835514297

namespace A162261

/-- `∑[n-2]+lcm(n+1, 2-(n+2)²)` -/
def P15948581563835514297.Spec : Prop :=
  ∀ n, P15948581563835514297.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P17896859402198276836

`2*n+(2*n+1)*(C(n+1, 2)+2*n)`
-/

namespace A162261.P17896859402198276836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1) * (Nat.choose (n + 1) 2 + 2 * n)

end

end A162261.P17896859402198276836

namespace A162261

/-- `2*n+(2*n+1)*(C(n+1, 2)+2*n)` -/
def P17896859402198276836.Spec : Prop :=
  ∀ n, (P17896859402198276836.a n : ℤ) = A162261 (n + 1)

end A162261

/-! ## A162261.P13457190539114063164

`∑[A140677(n)]`
-/

namespace A162261.P13457190539114063164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P13457190539114063164

namespace A162261

/-- `∑[A140677(n)]` -/
def P13457190539114063164.Spec : Prop :=
  ∀ n, P13457190539114063164.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P10884499595449412522

`∑[A277978(n)-n]`
-/

namespace A162261.P10884499595449412522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P10884499595449412522

namespace A162261

/-- `∑[A277978(n)-n]` -/
def P10884499595449412522.Spec : Prop :=
  ∀ n, P10884499595449412522.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P9435524188216396901

`A211013(n)+n^3`
-/

namespace A162261.P9435524188216396901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n + (n ^ 3 : ℤ)

end

end A162261.P9435524188216396901

namespace A162261

/-- `A211013(n)+n^3` -/
def P9435524188216396901.Spec : Prop :=
  ∀ n, P9435524188216396901.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P4183034971572695659

`n²+A081438(n)-1`
-/

namespace A162261.P4183034971572695659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A081438 n - 1)

end

end A162261.P4183034971572695659

namespace A162261

/-- `n²+A081438(n)-1` -/
def P4183034971572695659.Spec : Prop :=
  ∀ n, P4183034971572695659.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P2782167543398314065

`n²+A303609(n)/2`
-/

namespace A162261.P2782167543398314065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A303609 n : ℚ) / 2

end

end A162261.P2782167543398314065

namespace A162261

/-- `n²+A303609(n)/2` -/
def P2782167543398314065.Spec : Prop :=
  ∀ n, P2782167543398314065.a n = (A162261 (n + 1) : ℚ)

theorem P2782167543398314065.correct : P2782167543398314065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162261, Nat.add_sub_cancel, A162261.P2782167543398314065.a, A162261.P17485865614299167158.a, A303609, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162261, Nat.add_sub_cancel, A162261.P2782167543398314065.a, A162261.P17485865614299167158.a, A303609, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A162261

/-! ## A162261.P15075361596972693101

`A090197(n)-∑[n+1]`
-/

namespace A162261.P15075361596972693101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162261.P15075361596972693101

namespace A162261

/-- `A090197(n)-∑[n+1]` -/
def P15075361596972693101.Spec : Prop :=
  ∀ n, P15075361596972693101.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P798142014232213540

`∑[n*(A112414(n)+1)]`
-/

namespace A162261.P798142014232213540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A112414 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P798142014232213540

namespace A162261

/-- `∑[n*(A112414(n)+1)]` -/
def P798142014232213540.Spec : Prop :=
  ∀ n, P798142014232213540.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P18176430804486093789

`∑[A067725(n)+2*n]`
-/

namespace A162261.P18176430804486093789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P18176430804486093789

namespace A162261

/-- `∑[A067725(n)+2*n]` -/
def P18176430804486093789.Spec : Prop :=
  ∀ n, P18176430804486093789.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P12902656096283073749

`∑[2*A140090(n)+n]`
-/

namespace A162261.P12902656096283073749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140090 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P12902656096283073749

namespace A162261

/-- `∑[2*A140090(n)+n]` -/
def P12902656096283073749.Spec : Prop :=
  ∀ n, P12902656096283073749.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P8459080601368850830

`∑[2*A140091(n)-n]`
-/

namespace A162261.P8459080601368850830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140091 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P8459080601368850830

namespace A162261

/-- `∑[2*A140091(n)-n]` -/
def P8459080601368850830.Spec : Prop :=
  ∀ n, P8459080601368850830.a n = A162261 (n + 1)

end A162261

/-! ## A162261.P9522117423465151443

`∑[A140678(n)-2*n]`
-/

namespace A162261.P9522117423465151443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162261.P9522117423465151443

namespace A162261

/-- `∑[A140678(n)-2*n]` -/
def P9522117423465151443.Spec : Prop :=
  ∀ n, P9522117423465151443.a n = A162261 (n + 1)

end A162261

/-!
# A162262: a(n) = (2*n^3 + 5*n^2 - 13*n)/2.

The programs for A162262, the canonical program `A162262.P18207140525392905709` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162262 has offset 1).

The definition of A162262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-13*(n+1))/2` (program `A162262.P11436251328027545400`, by `A162262.P11436251328027545400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162262.P11087293818553386860

`ogf((-3+17x-8x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162262.P11087293818553386860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 17, -8] [1, -4, 6, -4, 1] n

end

end A162262.P11087293818553386860

namespace A162262

/-- `ogf((-3+17x-8x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P11087293818553386860.Spec : Prop :=
  ∀ n, P11087293818553386860.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P11436251328027545400

`(2*(n+1)^3+5*(n+1)²-13*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162262.P11436251328027545400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (13 * (n + 1) : ℤ) : ℚ) / 2

end

end A162262.P11436251328027545400

namespace A162262

/-- `(2*(n+1)^3+5*(n+1)²-13*(n+1))/2` -/
def P11436251328027545400.Spec : Prop :=
  ∀ n, P11436251328027545400.a n = (A162262 (n + 1) : ℚ)

theorem P11436251328027545400.correct : P11436251328027545400.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162262, Nat.add_sub_cancel, A162262.P11436251328027545400.a, A162262.P18207140525392905709.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162262, Nat.add_sub_cancel, A162262.P11436251328027545400.a, A162262.P18207140525392905709.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162262

/-! ## A162262.P18207140525392905709

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-3, a(1)=5, a(2)=30, a(3)=78`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162262

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18207140525392905709.Spec : Prop :=
  ∀ n, P18207140525392905709.a n = A162262 (n + 1)

theorem P18207140525392905709.correct : P18207140525392905709.Spec := by
  intro n
  simp only [A162262, Nat.add_sub_cancel]

end A162262

/-! ## A162262.P13734439818996359086

`∑[∑[a(n-1)+4]+n²]` with `a(0)=-3, a(1)=10`
-/

namespace A162262.P13734439818996359086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3, 10] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162262.P13734439818996359086

namespace A162262

/-- `∑[∑[a(n-1)+4]+n²]` -/
def P13734439818996359086.Spec : Prop :=
  ∀ n, P13734439818996359086.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P14955266768619334760

`(n+1)^3-∑[a(n-1)-5]` with `a(0)=4`
-/

namespace A162262.P14955266768619334760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162262.P14955266768619334760

namespace A162262

/-- `(n+1)^3-∑[a(n-1)-5]` -/
def P14955266768619334760.Spec : Prop :=
  ∀ n, P14955266768619334760.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P7211024455289916785

`(2*n+1)*(C(n+2, 2)+n-1)-(n+3)`
-/

namespace A162262.P7211024455289916785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose (n + 2) 2 : ℤ) + ((n : ℤ) - 1)) - (n + 3 : ℤ)

end

end A162262.P7211024455289916785

namespace A162262

/-- `(2*n+1)*(C(n+2, 2)+n-1)-(n+3)` -/
def P7211024455289916785.Spec : Prop :=
  ∀ n, P7211024455289916785.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P17667693736968419025

`∑[A140677(n)-3]`
-/

namespace A162262.P17667693736968419025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162262.P17667693736968419025

namespace A162262

/-- `∑[A140677(n)-3]` -/
def P17667693736968419025.Spec : Prop :=
  ∀ n, P17667693736968419025.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P862363031513039670

`A162257(n+1)-(n+1)`
-/

namespace A162262.P862363031513039670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162257 (n + 1) - (n + 1 : ℤ)

end

end A162262.P862363031513039670

namespace A162262

/-- `A162257(n+1)-(n+1)` -/
def P862363031513039670.Spec : Prop :=
  ∀ n, P862363031513039670.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P7122310832080781030

`A162259(n+1)+2*(n+1)`
-/

namespace A162262.P7122310832080781030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162259 (n + 1) + (2 * (n + 1) : ℤ)

end

end A162262.P7122310832080781030

namespace A162262

/-- `A162259(n+1)+2*(n+1)` -/
def P7122310832080781030.Spec : Prop :=
  ∀ n, P7122310832080781030.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P16893535587333829584

`A162258(n+1)-2*(n+1)`
-/

namespace A162262.P16893535587333829584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162258 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162262.P16893535587333829584

namespace A162262

/-- `A162258(n+1)-2*(n+1)` -/
def P16893535587333829584.Spec : Prop :=
  ∀ n, P16893535587333829584.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P17935255653869943744

`A162261(n+1)-3*(n+1)`
-/

namespace A162262.P17935255653869943744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) - (3 * (n + 1) : ℤ)

end

end A162262.P17935255653869943744

namespace A162262

/-- `A162261(n+1)-3*(n+1)` -/
def P17935255653869943744.Spec : Prop :=
  ∀ n, P17935255653869943744.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P16493825927466783634

`A162265(n+1)-4*(n+1)`
-/

namespace A162262.P16493825927466783634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162265 (n + 1) - (4 * (n + 1) : ℤ)

end

end A162262.P16493825927466783634

namespace A162262

/-- `A162265(n+1)-4*(n+1)` -/
def P16493825927466783634.Spec : Prop :=
  ∀ n, P16493825927466783634.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P8160398118317546372

`A162256(n+1)-5*(n+1)`
-/

namespace A162262.P8160398118317546372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) - (5 * (n + 1) : ℤ)

end

end A162262.P8160398118317546372

namespace A162262

/-- `A162256(n+1)-5*(n+1)` -/
def P8160398118317546372.Spec : Prop :=
  ∀ n, P8160398118317546372.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P16241717143698542485

`A162267(n+1)-9*(n+1)`
-/

namespace A162262.P16241717143698542485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) - (9 * (n + 1) : ℤ)

end

end A162262.P16241717143698542485

namespace A162262

/-- `A162267(n+1)-9*(n+1)` -/
def P16241717143698542485.Spec : Prop :=
  ∀ n, P16241717143698542485.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P970704253799882321

`(2*(n+5)+1)*A000217(n)-((n+2)²-1)`
-/

namespace A162262.P970704253799882321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 5) + 1 : ℤ) * A000217 n - (((n + 2) ^ 2 : ℤ) - 1)

end

end A162262.P970704253799882321

namespace A162262

/-- `(2*(n+5)+1)*A000217(n)-((n+2)²-1)` -/
def P970704253799882321.Spec : Prop :=
  ∀ n, P970704253799882321.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P1664752577505992440

`A152390(n)-A269410(n+1)`
-/

namespace A162262.P1664752577505992440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152390 n - A269410 (n + 1)

end

end A162262.P1664752577505992440

namespace A162262

/-- `A152390(n)-A269410(n+1)` -/
def P1664752577505992440.Spec : Prop :=
  ∀ n, P1664752577505992440.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P18246203520158121211

`A370912(n)-A051938(n+6)`
-/

namespace A162262.P18246203520158121211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - A051938 (n + 6)

end

end A162262.P18246203520158121211

namespace A162262

/-- `A370912(n)-A051938(n+6)` -/
def P18246203520158121211.Spec : Prop :=
  ∀ n, P18246203520158121211.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P6401229386672877883

`A270710(n)+∑[A270710(n)-1]`
-/

namespace A162262.P6401229386672877883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162262.P6401229386672877883

namespace A162262

/-- `A270710(n)+∑[A270710(n)-1]` -/
def P6401229386672877883.Spec : Prop :=
  ∀ n, P6401229386672877883.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P15236895591902087407

`A317440(n+1)+A162259(n+1)`
-/

namespace A162262.P15236895591902087407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A162259 (n + 1)

end

end A162262.P15236895591902087407

namespace A162262

/-- `A317440(n+1)+A162259(n+1)` -/
def P15236895591902087407.Spec : Prop :=
  ∀ n, P15236895591902087407.a n = A162262 (n + 1)

end A162262

/-! ## A162262.P11516507312587487339

`A162264(n+1)-(A008706(n+1)+A008706(n+1))`
-/

namespace A162262.P11516507312587487339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162264 (n + 1) - (A008706 (n + 1) + A008706 (n + 1))

end

end A162262.P11516507312587487339

namespace A162262

/-- `A162264(n+1)-(A008706(n+1)+A008706(n+1))` -/
def P11516507312587487339.Spec : Prop :=
  ∀ n, P11516507312587487339.a n = A162262 (n + 1)

end A162262

/-!
# A162263: a(n) = (2*n^3 + 5*n^2 + 11*n)/2.

The programs for A162263, the canonical program `A162263.P9276387920888823342` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162263 has offset 1).

The definition of A162263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²+11*(n+1))/2` (program `A162263.P15192841624924783770`, by `A162263.P15192841624924783770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162263.P4110238692031763096

`ogf((9-7x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162263.P4110238692031763096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -7, 4] [1, -4, 6, -4, 1] n

end

end A162263.P4110238692031763096

namespace A162263

/-- `ogf((9-7x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4110238692031763096.Spec : Prop :=
  ∀ n, P4110238692031763096.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P15192841624924783770

`(2*(n+1)^3+5*(n+1)²+11*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162263.P15192841624924783770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 + 11 * (n + 1) : ℚ) / 2

end

end A162263.P15192841624924783770

namespace A162263

/-- `(2*(n+1)^3+5*(n+1)²+11*(n+1))/2` -/
def P15192841624924783770.Spec : Prop :=
  ∀ n, P15192841624924783770.a n = (A162263 (n + 1) : ℚ)

theorem P15192841624924783770.correct : P15192841624924783770.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162263, Nat.add_sub_cancel, A162263.P15192841624924783770.a, A162263.P9276387920888823342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162263, Nat.add_sub_cancel, A162263.P15192841624924783770.a, A162263.P9276387920888823342.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162263

/-! ## A162263.P9276387920888823342

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=9, a(1)=29, a(2)=66, a(3)=126`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162263

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9276387920888823342.Spec : Prop :=
  ∀ n, P9276387920888823342.a n = A162263 (n + 1)

theorem P9276387920888823342.correct : P9276387920888823342.Spec := by
  intro n
  simp only [A162263, Nat.add_sub_cancel]

end A162263

/-! ## A162263.P15781179368169820299

`(n+2)^3-C(n, 2)+1+n`
-/

namespace A162263.P15781179368169820299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - (Nat.choose n 2 : ℤ) + 1 + (n : ℤ)

end

end A162263.P15781179368169820299

namespace A162263

/-- `(n+2)^3-C(n, 2)+1+n` -/
def P15781179368169820299.Spec : Prop :=
  ∀ n, P15781179368169820299.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P8034629453397523903

`∑[a(n-1)+5]+(n+1)^3` with `a(0)=8`
-/

namespace A162263.P8034629453397523903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A162263.P8034629453397523903

namespace A162263

/-- `∑[a(n-1)+5]+(n+1)^3` -/
def P8034629453397523903.Spec : Prop :=
  ∀ n, (P8034629453397523903.a n : ℤ) = A162263 (n + 1)

end A162263

/-! ## A162263.P16785097786135616582

`lcm(n+2, 1-(n+2)²)-∑[n-3]`
-/

namespace A162263.P16785097786135616582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (1 - ((n + 2) ^ 2 : ℤ)) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162263.P16785097786135616582

namespace A162263

/-- `lcm(n+2, 1-(n+2)²)-∑[n-3]` -/
def P16785097786135616582.Spec : Prop :=
  ∀ n, P16785097786135616582.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P15390432972700549035

`A151675(n+1)+1+n`
-/

namespace A162263.P15390432972700549035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151675 (n + 1) + 1 + (n : ℤ)

end

end A162263.P15390432972700549035

namespace A162263

/-- `A151675(n+1)+1+n` -/
def P15390432972700549035.Spec : Prop :=
  ∀ n, P15390432972700549035.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P8227008932211476027

`∑[A106648(n)]+(n+1)²`
-/

namespace A162263.P8227008932211476027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A162263.P8227008932211476027

namespace A162263

/-- `∑[A106648(n)]+(n+1)²` -/
def P8227008932211476027.Spec : Prop :=
  ∀ n, P8227008932211476027.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P7349965586232020822

`A210440(n)+∑[(n+3)²]`
-/

namespace A162263.P7349965586232020822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162263.P7349965586232020822

namespace A162263

/-- `A210440(n)+∑[(n+3)²]` -/
def P7349965586232020822.Spec : Prop :=
  ∀ n, P7349965586232020822.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P8950954611082448380

`A162264(n+1)+2*(n+1)`
-/

namespace A162263.P8950954611082448380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162264 (n + 1) + (2 * (n + 1) : ℤ)

end

end A162263.P8950954611082448380

namespace A162263

/-- `A162264(n+1)+2*(n+1)` -/
def P8950954611082448380.Spec : Prop :=
  ∀ n, P8950954611082448380.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P15485627944258590564

`A162267(n+1)+3*(n+1)`
-/

namespace A162263.P15485627944258590564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) + (3 * (n + 1) : ℤ)

end

end A162263.P15485627944258590564

namespace A162263

/-- `A162267(n+1)+3*(n+1)` -/
def P15485627944258590564.Spec : Prop :=
  ∀ n, P15485627944258590564.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P8518030507865744127

`A162254(n+1)+5*(n+1)`
-/

namespace A162263.P8518030507865744127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + (5 * (n + 1) : ℤ)

end

end A162263.P8518030507865744127

namespace A162263

/-- `A162254(n+1)+5*(n+1)` -/
def P8518030507865744127.Spec : Prop :=
  ∀ n, P8518030507865744127.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P11530831417454054894

`A162266(n+1)-5*(n+1)`
-/

namespace A162263.P11530831417454054894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162266 (n + 1) - (5 * (n + 1) : ℤ)

end

end A162263.P11530831417454054894

namespace A162263

/-- `A162266(n+1)-5*(n+1)` -/
def P11530831417454054894.Spec : Prop :=
  ∀ n, P11530831417454054894.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P5294325060339591357

`∑[∑[A016969(n)]+3]+1+n`
-/

namespace A162263.P5294325060339591357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A162263.P5294325060339591357

namespace A162263

/-- `∑[∑[A016969(n)]+3]+1+n` -/
def P5294325060339591357.Spec : Prop :=
  ∀ n, P5294325060339591357.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P7920682396068791108

`A069778(n)+∑[a(n-1)+7]` with `a(0)=8`
-/

namespace A162263.P7920682396068791108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162263.P7920682396068791108

namespace A162263

/-- `A069778(n)+∑[a(n-1)+7]` -/
def P7920682396068791108.Spec : Prop :=
  ∀ n, P7920682396068791108.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P17194712233616545182

`A059270(n)+(2*n+3)²+n`
-/

namespace A162263.P17194712233616545182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + ((2 * n + 3) ^ 2 + n : ℤ)

end

end A162263.P17194712233616545182

namespace A162263

/-- `A059270(n)+(2*n+3)²+n` -/
def P17194712233616545182.Spec : Prop :=
  ∀ n, P17194712233616545182.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P7743360408205280591

`A027620(n)-A045943(n)`
-/

namespace A162263.P7743360408205280591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n - A045943 n

end

end A162263.P7743360408205280591

namespace A162263

/-- `A027620(n)-A045943(n)` -/
def P7743360408205280591.Spec : Prop :=
  ∀ n, P7743360408205280591.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P6029760339902033437

`A027602(n)-A051895(n)`
-/

namespace A162263.P6029760339902033437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027602 n - A051895 n

end

end A162263.P6029760339902033437

namespace A162263

/-- `A027602(n)-A051895(n)` -/
def P6029760339902033437.Spec : Prop :=
  ∀ n, P6029760339902033437.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P9993904198643829736

`A037236(n)+A023545(n+1)`
-/

namespace A162263.P9993904198643829736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037236 n + A023545 (n + 1)

end

end A162263.P9993904198643829736

namespace A162263

/-- `A037236(n)+A023545(n+1)` -/
def P9993904198643829736.Spec : Prop :=
  ∀ n, P9993904198643829736.a n = A162263 (n + 1)

end A162263

/-! ## A162263.P2643247019357593127

`A134481(n)+A023551(n+1)`
-/

namespace A162263.P2643247019357593127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A023551 (n + 1)

end

end A162263.P2643247019357593127

namespace A162263

/-- `A134481(n)+A023551(n+1)` -/
def P2643247019357593127.Spec : Prop :=
  ∀ n, P2643247019357593127.a n = A162263 (n + 1)

end A162263

/-!
# A162264: a(n) = (2*n^3 + 5*n^2 + 7*n)/2.

The programs for A162264, the canonical program `A162264.P4162131310550707885` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162264 has offset 1).

The definition of A162264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²+7*(n+1))/2` (program `A162264.P4185127220845671344`, by `A162264.P4185127220845671344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162264.P12344834963673098590

`ogf((7-3x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162264.P12344834963673098590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -3, 2] [1, -4, 6, -4, 1] n

end

end A162264.P12344834963673098590

namespace A162264

/-- `ogf((7-3x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12344834963673098590.Spec : Prop :=
  ∀ n, P12344834963673098590.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P4185127220845671344

`(2*(n+1)^3+5*(n+1)²+7*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162264.P4185127220845671344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 + 7 * (n + 1) : ℚ) / 2

end

end A162264.P4185127220845671344

namespace A162264

/-- `(2*(n+1)^3+5*(n+1)²+7*(n+1))/2` -/
def P4185127220845671344.Spec : Prop :=
  ∀ n, P4185127220845671344.a n = (A162264 (n + 1) : ℚ)

theorem P4185127220845671344.correct : P4185127220845671344.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162264, Nat.add_sub_cancel, A162264.P4185127220845671344.a, A162264.P4162131310550707885.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162264, Nat.add_sub_cancel, A162264.P4185127220845671344.a, A162264.P4162131310550707885.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162264

/-! ## A162264.P4162131310550707885

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=7, a(1)=25, a(2)=60, a(3)=118`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162264

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4162131310550707885.Spec : Prop :=
  ∀ n, P4162131310550707885.a n = A162264 (n + 1)

theorem P4162131310550707885.correct : P4162131310550707885.Spec := by
  intro n
  simp only [A162264, Nat.add_sub_cancel]

end A162264

/-! ## A162264.P12282842808203904267

`(n+2)^3-(C(n+1, 2)+1)`
-/

namespace A162264.P12282842808203904267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - (Nat.choose (n + 1) 2 + 1 : ℤ)

end

end A162264.P12282842808203904267

namespace A162264

/-- `(n+2)^3-(C(n+1, 2)+1)` -/
def P12282842808203904267.Spec : Prop :=
  ∀ n, P12282842808203904267.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P10643904176962757213

`∑[n+3]+lcm(n+1, (n+2)²)`
-/

namespace A162264.P10643904176962757213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) ((n + 2) ^ 2)

end

end A162264.P10643904176962757213

namespace A162264

/-- `∑[n+3]+lcm(n+1, (n+2)²)` -/
def P10643904176962757213.Spec : Prop :=
  ∀ n, (P10643904176962757213.a n : ℤ) = A162264 (n + 1)

end A162264

/-! ## A162264.P15312065188345364182

`∑[a(n-1)+5]+(n+1)^3` with `a(0)=6`
-/

namespace A162264.P15312065188345364182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A162264.P15312065188345364182

namespace A162264

/-- `∑[a(n-1)+5]+(n+1)^3` -/
def P15312065188345364182.Spec : Prop :=
  ∀ n, (P15312065188345364182.a n : ℤ) = A162264 (n + 1)

end A162264

/-! ## A162264.P2524094002232981418

`lcm(n+2, ∑[2*n+3])-∑[n-1]`
-/

namespace A162264.P2524094002232981418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A162264.P2524094002232981418

namespace A162264

/-- `lcm(n+2, ∑[2*n+3])-∑[n-1]` -/
def P2524094002232981418.Spec : Prop :=
  ∀ n, P2524094002232981418.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P12638665954555378883

`∑[n+3]+(n+2)²*C(n+1, n)`
-/

namespace A162264.P12638665954555378883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2 * Nat.choose (n + 1) n

end

end A162264.P12638665954555378883

namespace A162264

/-- `∑[n+3]+(n+2)²*C(n+1, n)` -/
def P12638665954555378883.Spec : Prop :=
  ∀ n, (P12638665954555378883.a n : ℤ) = A162264 (n + 1)

end A162264

/-! ## A162264.P308727634614283803

`(2*n+1)*(C(n+3, 2)+1)+n+3`
-/

namespace A162264.P308727634614283803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 3) 2 + 1) + (n + 3)

end

end A162264.P308727634614283803

namespace A162264

/-- `(2*n+1)*(C(n+3, 2)+1)+n+3` -/
def P308727634614283803.Spec : Prop :=
  ∀ n, (P308727634614283803.a n : ℤ) = A162264 (n + 1)

end A162264

/-! ## A162264.P2433514326132155924

`A162267(n+1)+1+n`
-/

namespace A162264.P2433514326132155924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) + 1 + (n : ℤ)

end

end A162264.P2433514326132155924

namespace A162264

/-- `A162267(n+1)+1+n` -/
def P2433514326132155924.Spec : Prop :=
  ∀ n, P2433514326132155924.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P17836629934039384717

`A151675(n+1)-(n+1)`
-/

namespace A162264.P17836629934039384717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151675 (n + 1) - (n + 1 : ℤ)

end

end A162264.P17836629934039384717

namespace A162264

/-- `A151675(n+1)-(n+1)` -/
def P17836629934039384717.Spec : Prop :=
  ∀ n, P17836629934039384717.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P14435849791940782215

`A114364(n+1)+∑[n+3]`
-/

namespace A162264.P14435849791940782215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114364 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162264.P14435849791940782215

namespace A162264

/-- `A114364(n+1)+∑[n+3]` -/
def P14435849791940782215.Spec : Prop :=
  ∀ n, P14435849791940782215.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P5493510103382656766

`A162254(n+1)+3*(n+1)`
-/

namespace A162264.P5493510103382656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + (3 * (n + 1) : ℤ)

end

end A162264.P5493510103382656766

namespace A162264

/-- `A162254(n+1)+3*(n+1)` -/
def P5493510103382656766.Spec : Prop :=
  ∀ n, P5493510103382656766.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P10803202763834202800

`A162263(n+1)-2*(n+1)`
-/

namespace A162264.P10803202763834202800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162263 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162264.P10803202763834202800

namespace A162264

/-- `A162263(n+1)-2*(n+1)` -/
def P10803202763834202800.Spec : Prop :=
  ∀ n, P10803202763834202800.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P4583291943132541659

`A144640(n+1)+4*(n+1)`
-/

namespace A162264.P4583291943132541659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144640 (n + 1) + (4 * (n + 1) : ℤ)

end

end A162264.P4583291943132541659

namespace A162264

/-- `A144640(n+1)+4*(n+1)` -/
def P4583291943132541659.Spec : Prop :=
  ∀ n, P4583291943132541659.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P927073785330405912

`A162256(n+1)+5*(n+1)`
-/

namespace A162264.P927073785330405912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) + (5 * (n + 1) : ℤ)

end

end A162264.P927073785330405912

namespace A162264

/-- `A162256(n+1)+5*(n+1)` -/
def P927073785330405912.Spec : Prop :=
  ∀ n, P927073785330405912.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P951838856959846732

`∑[∑[A016969(n)]+1]+n+1`
-/

namespace A162264.P951838856959846732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A162264.P951838856959846732

namespace A162264

/-- `∑[∑[A016969(n)]+1]+n+1` -/
def P951838856959846732.Spec : Prop :=
  ∀ n, P951838856959846732.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P3482825514174246259

`A104675(n)+A081438(n)`
-/

namespace A162264.P3482825514174246259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 n + A081438 n

end

end A162264.P3482825514174246259

namespace A162264

/-- `A104675(n)+A081438(n)` -/
def P3482825514174246259.Spec : Prop :=
  ∀ n, P3482825514174246259.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P8259863772404746717

`A378569(n)+A163661(n)`
-/

namespace A162264.P8259863772404746717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378569 n + A163661 n

end

end A162264.P8259863772404746717

namespace A162264

/-- `A378569(n)+A163661(n)` -/
def P8259863772404746717.Spec : Prop :=
  ∀ n, P8259863772404746717.a n = A162264 (n + 1)

end A162264

/-! ## A162264.P14113426315908151505

`A153976(n)-A081423(n)`
-/

namespace A162264.P14113426315908151505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153976 n - A081423 n

end

end A162264.P14113426315908151505

namespace A162264

/-- `A153976(n)-A081423(n)` -/
def P14113426315908151505.Spec : Prop :=
  ∀ n, P14113426315908151505.a n = A162264 (n + 1)

end A162264

/-!
# A162265: a(n) = (2*n^3 + 5*n^2 - 5*n)/2.

The programs for A162265, the canonical program `A162265.P15420871391200133763` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162265 has offset 1).

The definition of A162265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²-5*(n+1))/2` (program `A162265.P122437207491503781`, by `A162265.P122437207491503781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162265.P2160759001809034285

`ogf((1+9x-4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162265.P2160759001809034285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -4] [1, -4, 6, -4, 1] n

end

end A162265.P2160759001809034285

namespace A162265

/-- `ogf((1+9x-4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2160759001809034285.Spec : Prop :=
  ∀ n, P2160759001809034285.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P3995029404428685162

`5*C(n+1, 2)+(n+1)^3`
-/

namespace A162265.P3995029404428685162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 1) 2 + (n + 1) ^ 3

end

end A162265.P3995029404428685162

namespace A162265

/-- `5*C(n+1, 2)+(n+1)^3` -/
def P3995029404428685162.Spec : Prop :=
  ∀ n, (P3995029404428685162.a n : ℤ) = A162265 (n + 1)

end A162265

/-! ## A162265.P122437207491503781

`(2*(n+1)^3+5*(n+1)²-5*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162265.P122437207491503781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) : ℚ) / 2

end

end A162265.P122437207491503781

namespace A162265

/-- `(2*(n+1)^3+5*(n+1)²-5*(n+1))/2` -/
def P122437207491503781.Spec : Prop :=
  ∀ n, P122437207491503781.a n = (A162265 (n + 1) : ℚ)

theorem P122437207491503781.correct : P122437207491503781.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162265, Nat.add_sub_cancel, A162265.P122437207491503781.a, A162265.P15420871391200133763.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162265, Nat.add_sub_cancel, A162265.P122437207491503781.a, A162265.P15420871391200133763.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162265

/-! ## A162265.P15420871391200133763

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=42, a(3)=94`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162265

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15420871391200133763.Spec : Prop :=
  ∀ n, P15420871391200133763.a n = A162265 (n + 1)

theorem P15420871391200133763.correct : P15420871391200133763.Spec := by
  intro n
  simp only [A162265, Nat.add_sub_cancel]

end A162265

/-! ## A162265.P4112553851208386801

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=11`
-/

namespace A162265.P4112553851208386801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P4112553851208386801

namespace A162265

/-- `∑[∑[a(n-1)+6]]` -/
def P4112553851208386801.Spec : Prop :=
  ∀ n, (P4112553851208386801.a n : ℤ) = A162265 (n + 1)

end A162265

/-! ## A162265.P2309064635047584317

`lcm(2*n+1, ∑[n+1]+n)+n`
-/

namespace A162265.P2309064635047584317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j + n) + n

end

end A162265.P2309064635047584317

namespace A162265

/-- `lcm(2*n+1, ∑[n+1]+n)+n` -/
def P2309064635047584317.Spec : Prop :=
  ∀ n, (P2309064635047584317.a n : ℤ) = A162265 (n + 1)

end A162265

/-! ## A162265.P5145893581055908327

`∑[record[(n-1)²]+(n+3)*2*n]`
-/

namespace A162265.P5145893581055908327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ((n + 3) * (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P5145893581055908327

namespace A162265

/-- `∑[record[(n-1)²]+(n+3)*2*n]` -/
def P5145893581055908327.Spec : Prop :=
  ∀ n, P5145893581055908327.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P13848063256945834161

`∑[C(n+1, n)²+(n+3)*2*n]`
-/

namespace A162265.P13848063256945834161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2 + (n + 3) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P13848063256945834161

namespace A162265

/-- `∑[C(n+1, n)²+(n+3)*2*n]` -/
def P13848063256945834161.Spec : Prop :=
  ∀ n, (P13848063256945834161.a n : ℤ) = A162265 (n + 1)

end A162265

/-! ## A162265.P1992419839015923449

`(C(n+2, 2)+n+1)*(2*n+1)-(n+1)`
-/

namespace A162265.P1992419839015923449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 + (n + 1)) * (2 * n + 1) : ℤ) - (n + 1 : ℤ)

end

end A162265.P1992419839015923449

namespace A162265

/-- `(C(n+2, 2)+n+1)*(2*n+1)-(n+1)` -/
def P1992419839015923449.Spec : Prop :=
  ∀ n, P1992419839015923449.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P8957051480667461057

`∑[(n+1)²+(n+3)*and(2*n+1, 2*n)]`
-/

namespace A162265.P8957051480667461057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 3) * Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P8957051480667461057

namespace A162265

/-- `∑[(n+1)²+(n+3)*and(2*n+1, 2*n)]` -/
def P8957051480667461057.Spec : Prop :=
  ∀ n, (P8957051480667461057.a n : ℤ) = A162265 (n + 1)

end A162265

/-! ## A162265.P1523926442370531981

`∑[∑[2*n+1]+2*n*C(n+3, n+2)]`
-/

namespace A162265.P1523926442370531981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n * Nat.choose (n + 3) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P1523926442370531981

namespace A162265

/-- `∑[∑[2*n+1]+2*n*C(n+3, n+2)]` -/
def P1523926442370531981.Spec : Prop :=
  ∀ n, (P1523926442370531981.a n : ℤ) = A162265 (n + 1)

end A162265

/-! ## A162265.P10351023021902701469

`∑[A140677(n)+1]`
-/

namespace A162265.P10351023021902701469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P10351023021902701469

namespace A162265

/-- `∑[A140677(n)+1]` -/
def P10351023021902701469.Spec : Prop :=
  ∀ n, P10351023021902701469.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P6788195543937018958

`A090197(n)-∑[n]`
-/

namespace A162265.P6788195543937018958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162265.P6788195543937018958

namespace A162265

/-- `A090197(n)-∑[n]` -/
def P6788195543937018958.Spec : Prop :=
  ∀ n, P6788195543937018958.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P17602555983147299003

`∑[A161532(n)+n²]`
-/

namespace A162265.P17602555983147299003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P17602555983147299003

namespace A162265

/-- `∑[A161532(n)+n²]` -/
def P17602555983147299003.Spec : Prop :=
  ∀ n, P17602555983147299003.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P7833403941944272791

`∑[A082109(n)-n²]`
-/

namespace A162265.P7833403941944272791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P7833403941944272791

namespace A162265

/-- `∑[A082109(n)-n²]` -/
def P7833403941944272791.Spec : Prop :=
  ∀ n, P7833403941944272791.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P13366011836311072247

`∑[A166143(n+1)-n]`
-/

namespace A162265.P13366011836311072247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162265.P13366011836311072247

namespace A162265

/-- `∑[A166143(n+1)-n]` -/
def P13366011836311072247.Spec : Prop :=
  ∀ n, P13366011836311072247.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P16781914219568060955

`A081438(n)+∑[2*n]`
-/

namespace A162265.P16781914219568060955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162265.P16781914219568060955

namespace A162265

/-- `A081438(n)+∑[2*n]` -/
def P16781914219568060955.Spec : Prop :=
  ∀ n, P16781914219568060955.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P5941142196390128209

`A147656(n)+Δ[n²]²`
-/

namespace A162265.P5941142196390128209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A162265.P5941142196390128209

namespace A162265

/-- `A147656(n)+Δ[n²]²` -/
def P5941142196390128209.Spec : Prop :=
  ∀ n, P5941142196390128209.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P3640251508401796655

`A162261(n+1)+1+n`
-/

namespace A162265.P3640251508401796655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) + 1 + (n : ℤ)

end

end A162265.P3640251508401796655

namespace A162265

/-- `A162261(n+1)+1+n` -/
def P3640251508401796655.Spec : Prop :=
  ∀ n, P3640251508401796655.a n = A162265 (n + 1)

end A162265

/-! ## A162265.P1760458865462374119

`A162256(n+1)-(n+1)`
-/

namespace A162265.P1760458865462374119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) - (n + 1 : ℤ)

end

end A162265.P1760458865462374119

namespace A162265

/-- `A162256(n+1)-(n+1)` -/
def P1760458865462374119.Spec : Prop :=
  ∀ n, P1760458865462374119.a n = A162265 (n + 1)

end A162265

/-!
# A162266: a(n) = (2*n^3 + 5*n^2 + 21*n)/2.

The programs for A162266, the canonical program `A162266.P4813839714150766536` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162266 has offset 1).

The definition of A162266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²+21*(n+1))/2` (program `A162266.P29401535619665420`, by `A162266.P29401535619665420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162266.P11729773578656666837

`ogf((14-17x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162266.P11729773578656666837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -17, 9] [1, -4, 6, -4, 1] n

end

end A162266.P11729773578656666837

namespace A162266

/-- `ogf((14-17x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P11729773578656666837.Spec : Prop :=
  ∀ n, P11729773578656666837.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P29401535619665420

`(2*(n+1)^3+5*(n+1)²+21*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162266.P29401535619665420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 + 21 * (n + 1) : ℚ) / 2

end

end A162266.P29401535619665420

namespace A162266

/-- `(2*(n+1)^3+5*(n+1)²+21*(n+1))/2` -/
def P29401535619665420.Spec : Prop :=
  ∀ n, P29401535619665420.a n = (A162266 (n + 1) : ℚ)

theorem P29401535619665420.correct : P29401535619665420.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162266, Nat.add_sub_cancel, A162266.P29401535619665420.a, A162266.P4813839714150766536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162266, Nat.add_sub_cancel, A162266.P29401535619665420.a, A162266.P4813839714150766536.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162266

/-! ## A162266.P4813839714150766536

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=14, a(1)=39, a(2)=81, a(3)=146`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162266

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4813839714150766536.Spec : Prop :=
  ∀ n, P4813839714150766536.a n = A162266 (n + 1)

theorem P4813839714150766536.correct : P4813839714150766536.Spec := by
  intro n
  simp only [A162266, Nat.add_sub_cancel]

end A162266

/-! ## A162266.P3183934765996958488

`∑[∑[a(n-1)+6]]` with `a(0)=14, a(1)=11`
-/

namespace A162266.P3183934765996958488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [14, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162266.P3183934765996958488

namespace A162266

/-- `∑[∑[a(n-1)+6]]` -/
def P3183934765996958488.Spec : Prop :=
  ∀ n, (P3183934765996958488.a n : ℤ) = A162266 (n + 1)

end A162266

/-! ## A162266.P562337734473745655

`∑[∑[A016969(n)]+9]`
-/

namespace A162266.P562337734473745655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162266.P562337734473745655

namespace A162266

/-- `∑[∑[A016969(n)]+9]` -/
def P562337734473745655.Spec : Prop :=
  ∀ n, P562337734473745655.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P17023932364310940429

`A162263(n+1)+5*(n+1)`
-/

namespace A162266.P17023932364310940429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162263 (n + 1) + (5 * (n + 1) : ℤ)

end

end A162266.P17023932364310940429

namespace A162266

/-- `A162263(n+1)+5*(n+1)` -/
def P17023932364310940429.Spec : Prop :=
  ∀ n, P17023932364310940429.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P13333702240069234980

`A162267(n+1)+8*(n+1)`
-/

namespace A162266.P13333702240069234980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) + (8 * (n + 1) : ℤ)

end

end A162266.P13333702240069234980

namespace A162266

/-- `A162267(n+1)+8*(n+1)` -/
def P13333702240069234980.Spec : Prop :=
  ∀ n, P13333702240069234980.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P18165764336320798965

`∑[A141631(n+2)+7]`
-/

namespace A162266.P18165764336320798965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141631 (n + 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162266.P18165764336320798965

namespace A162266

/-- `∑[A141631(n+2)+7]` -/
def P18165764336320798965.Spec : Prop :=
  ∀ n, P18165764336320798965.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P12926295752696059575

`A163675(n+1)+1+n`
-/

namespace A162266.P12926295752696059575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163675 (n + 1) + 1 + (n : ℤ)

end

end A162266.P12926295752696059575

namespace A162266

/-- `A163675(n+1)+1+n` -/
def P12926295752696059575.Spec : Prop :=
  ∀ n, P12926295752696059575.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P6659174237273346465

`A163661(n+1)+2*(n+1)`
-/

namespace A162266.P6659174237273346465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 (n + 1) + (2 * (n + 1) : ℤ)

end

end A162266.P6659174237273346465

namespace A162266

/-- `A163661(n+1)+2*(n+1)` -/
def P6659174237273346465.Spec : Prop :=
  ∀ n, P6659174237273346465.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P6996193510403452460

`A163673(n+1)+3*(n+1)`
-/

namespace A162266.P6996193510403452460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 (n + 1) + (3 * (n + 1) : ℤ)

end

end A162266.P6996193510403452460

namespace A162266

/-- `A163673(n+1)+3*(n+1)` -/
def P6996193510403452460.Spec : Prop :=
  ∀ n, P6996193510403452460.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P5827982605373591483

`A163655(n+1)+4*(n+1)`
-/

namespace A162266.P5827982605373591483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163655 (n + 1) + (4 * (n + 1) : ℤ)

end

end A162266.P5827982605373591483

namespace A162266

/-- `A163655(n+1)+4*(n+1)` -/
def P5827982605373591483.Spec : Prop :=
  ∀ n, P5827982605373591483.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P16179106561162809810

`∑[A201722(n+2)]+(n+2)²`
-/

namespace A162266.P16179106561162809810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 2) ^ 2 : ℤ)

end

end A162266.P16179106561162809810

namespace A162266

/-- `∑[A201722(n+2)]+(n+2)²` -/
def P16179106561162809810.Spec : Prop :=
  ∀ n, P16179106561162809810.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P11458469855249942259

`A152741(n+1)+A152618(n)`
-/

namespace A162266.P11458469855249942259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 (n + 1) + A152618 n

end

end A162266.P11458469855249942259

namespace A162266

/-- `A152741(n+1)+A152618(n)` -/
def P11458469855249942259.Spec : Prop :=
  ∀ n, P11458469855249942259.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P18385088391126203486

`A062728(n+1)+A003777(n+2)-A201279(n)`
-/

namespace A162266.P18385088391126203486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 (n + 1) + (A003777 (n + 2) - A201279 n)

end

end A162266.P18385088391126203486

namespace A162266

/-- `A062728(n+1)+A003777(n+2)-A201279(n)` -/
def P18385088391126203486.Spec : Prop :=
  ∀ n, P18385088391126203486.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P3360795545348272077

`A127736(n+2)+A127736(n+2)-A005475(n)`
-/

namespace A162266.P3360795545348272077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 2) + (A127736 (n + 2) - A005475 n)

end

end A162266.P3360795545348272077

namespace A162266

/-- `A127736(n+2)+A127736(n+2)-A005475(n)` -/
def P3360795545348272077.Spec : Prop :=
  ∀ n, P3360795545348272077.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P15314027791195450393

`A008585(n+1)+A151675(n+1)+A008585(n+1)`
-/

namespace A162266.P15314027791195450393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + (A151675 (n + 1) + A008585 (n + 1))

end

end A162266.P15314027791195450393

namespace A162266

/-- `A008585(n+1)+A151675(n+1)+A008585(n+1)` -/
def P15314027791195450393.Spec : Prop :=
  ∀ n, P15314027791195450393.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P2360126682090851422

`A163661(n+1)+A163661(n+1)-A163655(n+1)`
-/

namespace A162266.P2360126682090851422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 (n + 1) + A163661 (n + 1) - A163655 (n + 1)

end

end A162266.P2360126682090851422

namespace A162266

/-- `A163661(n+1)+A163661(n+1)-A163655(n+1)` -/
def P2360126682090851422.Spec : Prop :=
  ∀ n, P2360126682090851422.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P233113149076612798

`∑[A191413(n+2)]-(n+1)²`
-/

namespace A162266.P233113149076612798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191413 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A162266.P233113149076612798

namespace A162266

/-- `∑[A191413(n+2)]-(n+1)²` -/
def P233113149076612798.Spec : Prop :=
  ∀ n, P233113149076612798.a n = A162266 (n + 1)

end A162266

/-! ## A162266.P2100927851392036934

`A167499(A005408(n))+A005408(n)*A167499(n)`
-/

namespace A162266.P2100927851392036934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A005408 n).toNat + A005408 n * A167499 n

end

end A162266.P2100927851392036934

namespace A162266

/-- `A167499(A005408(n))+A005408(n)*A167499(n)` -/
def P2100927851392036934.Spec : Prop :=
  ∀ n, P2100927851392036934.a n = A162266 (n + 1)

end A162266

/-!
# A162267: a(n) = (2*n^3 + 5*n^2 + 5*n)/2.

The programs for A162267, the canonical program `A162267.P8031098555059950780` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162267 has offset 1).

The definition of A162267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3+5*(n+1)²+5*(n+1))/2` (program `A162267.P437655021746739226`, by `A162267.P437655021746739226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162267.P11528936945840159659

`ogf((6-x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162267.P11528936945840159659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -1, 1] [1, -4, 6, -4, 1] n

end

end A162267.P11528936945840159659

namespace A162267

/-- `ogf((6-x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P11528936945840159659.Spec : Prop :=
  ∀ n, P11528936945840159659.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P437655021746739226

`(2*(n+1)^3+5*(n+1)²+5*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162267.P437655021746739226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 + 5 * (n + 1) : ℚ) / 2

end

end A162267.P437655021746739226

namespace A162267

/-- `(2*(n+1)^3+5*(n+1)²+5*(n+1))/2` -/
def P437655021746739226.Spec : Prop :=
  ∀ n, P437655021746739226.a n = (A162267 (n + 1) : ℚ)

theorem P437655021746739226.correct : P437655021746739226.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162267, Nat.add_sub_cancel, A162267.P437655021746739226.a, A162267.P8031098555059950780.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162267, Nat.add_sub_cancel, A162267.P437655021746739226.a, A162267.P8031098555059950780.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A162267

/-! ## A162267.P8031098555059950780

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=23, a(2)=57, a(3)=114`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162267

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8031098555059950780.Spec : Prop :=
  ∀ n, P8031098555059950780.a n = A162267 (n + 1)

theorem P8031098555059950780.correct : P8031098555059950780.Spec := by
  intro n
  simp only [A162267, Nat.add_sub_cancel]

end A162267

/-! ## A162267.P16050476140062137726

`∑[∑[ogf((6-x+x^2)/(1-2x+x^2))]]`
-/

namespace A162267.P16050476140062137726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -1, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162267.P16050476140062137726

namespace A162267

/-- `∑[∑[ogf((6-x+x^2)/(1-2x+x^2))]]` -/
def P16050476140062137726.Spec : Prop :=
  ∀ n, P16050476140062137726.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P717083188609707982

`∑[∑[a(n-1)+6]+1]` with `a(0)=5`
-/

namespace A162267.P717083188609707982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162267.P717083188609707982

namespace A162267

/-- `∑[∑[a(n-1)+6]+1]` -/
def P717083188609707982.Spec : Prop :=
  ∀ n, (P717083188609707982.a n : ℤ) = A162267 (n + 1)

end A162267

/-! ## A162267.P5294750379301883608

`∑[n+2]+lcm(n+1, (n+2)²)`
-/

namespace A162267.P5294750379301883608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) ((n + 2) ^ 2)

end

end A162267.P5294750379301883608

namespace A162267

/-- `∑[n+2]+lcm(n+1, (n+2)²)` -/
def P5294750379301883608.Spec : Prop :=
  ∀ n, (P5294750379301883608.a n : ℤ) = A162267 (n + 1)

end A162267

/-! ## A162267.P18306442567371746900

`lcm(n+2, ∑[2*n+3])-∑[n]`
-/

namespace A162267.P18306442567371746900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A162267.P18306442567371746900

namespace A162267

/-- `lcm(n+2, ∑[2*n+3])-∑[n]` -/
def P18306442567371746900.Spec : Prop :=
  ∀ n, P18306442567371746900.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P12273698275254994045

`∑[n+3]+(n+3)*record[(n-1)²]`
-/

namespace A162267.P12273698275254994045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 3 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A162267.P12273698275254994045

namespace A162267

/-- `∑[n+3]+(n+3)*record[(n-1)²]` -/
def P12273698275254994045.Spec : Prop :=
  ∀ n, P12273698275254994045.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P12332408809852386350

`(2*n+1)*(C(n+3, 2)+1)+2`
-/

namespace A162267.P12332408809852386350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 3) 2 + 1) + 2

end

end A162267.P12332408809852386350

namespace A162267

/-- `(2*n+1)*(C(n+3, 2)+1)+2` -/
def P12332408809852386350.Spec : Prop :=
  ∀ n, (P12332408809852386350.a n : ℤ) = A162267 (n + 1)

end A162267

/-! ## A162267.P12861979296731629721

`∑[n]+2*A164845(n)`
-/

namespace A162267.P12861979296731629721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A164845 n

end

end A162267.P12861979296731629721

namespace A162267

/-- `∑[n]+2*A164845(n)` -/
def P12861979296731629721.Spec : Prop :=
  ∀ n, P12861979296731629721.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P2705359965757743291

`A162264(n+1)-(n+1)`
-/

namespace A162267.P2705359965757743291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162264 (n + 1) - (n + 1 : ℤ)

end

end A162267.P2705359965757743291

namespace A162267

/-- `A162264(n+1)-(n+1)` -/
def P2705359965757743291.Spec : Prop :=
  ∀ n, P2705359965757743291.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P12528187248353524666

`∑[∑[A016969(n)]]+1+n`
-/

namespace A162267.P12528187248353524666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A162267.P12528187248353524666

namespace A162267

/-- `∑[∑[A016969(n)]]+1+n` -/
def P12528187248353524666.Spec : Prop :=
  ∀ n, P12528187248353524666.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P1969002008206320184

`A114364(n+1)+∑[n+2]`
-/

namespace A162267.P1969002008206320184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114364 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162267.P1969002008206320184

namespace A162267

/-- `A114364(n+1)+∑[n+2]` -/
def P1969002008206320184.Spec : Prop :=
  ∀ n, P1969002008206320184.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P7839670738807131527

`∑[∑[A016945(n)+3]]-∑[n]`
-/

namespace A162267.P7839670738807131527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A162267.P7839670738807131527

namespace A162267

/-- `∑[∑[A016945(n)+3]]-∑[n]` -/
def P7839670738807131527.Spec : Prop :=
  ∀ n, P7839670738807131527.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P9318304949073037400

`A162254(n+1)+2*(n+1)`
-/

namespace A162267.P9318304949073037400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + (2 * (n + 1) : ℤ)

end

end A162267.P9318304949073037400

namespace A162267

/-- `A162254(n+1)+2*(n+1)` -/
def P9318304949073037400.Spec : Prop :=
  ∀ n, P9318304949073037400.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P2453125710345313238

`A144640(n+1)+3*(n+1)`
-/

namespace A162267.P2453125710345313238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144640 (n + 1) + (3 * (n + 1) : ℤ)

end

end A162267.P2453125710345313238

namespace A162267

/-- `A144640(n+1)+3*(n+1)` -/
def P2453125710345313238.Spec : Prop :=
  ∀ n, P2453125710345313238.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P13467704342768596680

`A151675(n+1)-2*(n+1)`
-/

namespace A162267.P13467704342768596680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151675 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162267.P13467704342768596680

namespace A162267

/-- `A151675(n+1)-2*(n+1)` -/
def P13467704342768596680.Spec : Prop :=
  ∀ n, P13467704342768596680.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P14804992148676542041

`A162256(n+1)+4*(n+1)`
-/

namespace A162267.P14804992148676542041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) + (4 * (n + 1) : ℤ)

end

end A162267.P14804992148676542041

namespace A162267

/-- `A162256(n+1)+4*(n+1)` -/
def P14804992148676542041.Spec : Prop :=
  ∀ n, P14804992148676542041.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P12487590280285811403

`A162263(n+1)-3*(n+1)`
-/

namespace A162267.P12487590280285811403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162263 (n + 1) - (3 * (n + 1) : ℤ)

end

end A162267.P12487590280285811403

namespace A162267

/-- `A162263(n+1)-3*(n+1)` -/
def P12487590280285811403.Spec : Prop :=
  ∀ n, P12487590280285811403.a n = A162267 (n + 1)

end A162267

/-! ## A162267.P5051005561518928125

`A162265(n+1)+5*(n+1)`
-/

namespace A162267.P5051005561518928125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162265 (n + 1) + (5 * (n + 1) : ℤ)

end

end A162267.P5051005561518928125

namespace A162267

/-- `A162265(n+1)+5*(n+1)` -/
def P5051005561518928125.Spec : Prop :=
  ∀ n, P5051005561518928125.a n = A162267 (n + 1)

end A162267

/-!
# A162268: a(n) = ((5+sqrt(2))*(1+sqrt(2))^n + (5-sqrt(2))*(1-sqrt(2))^n)/2.

The programs for A162268, the canonical program `A162268.P1063532603326040866` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162268 has offset 0).

The definition of A162268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162268.P13895463545513795493

`ogf((5-3x)/(1-2x-x^2))`
-/

namespace A162268.P13895463545513795493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3] [1, -2, -1] n

end

end A162268.P13895463545513795493

namespace A162268

/-- `ogf((5-3x)/(1-2x-x^2))` -/
def P13895463545513795493.Spec : Prop :=
  ∀ n, P13895463545513795493.a n = A162268 n

end A162268

/-! ## A162268.P1063532603326040866

`2*a(n-1)+a(n-2)` with `a(0)=5, a(1)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162268

/-- `2*a(n-1)+a(n-2)` -/
def P1063532603326040866.Spec : Prop :=
  ∀ n, (P1063532603326040866.a n : ℤ) = A162268 n

theorem P1063532603326040866.correct : P1063532603326040866.Spec := by
  intro n
  simp only [A162268]

end A162268

/-! ## A162268.P12670772932150715253

`4*A001333(n)+A001333(n+1)`
-/

namespace A162268.P12670772932150715253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001333 n + A001333 (n + 1)

end

end A162268.P12670772932150715253

namespace A162268

/-- `4*A001333(n)+A001333(n+1)` -/
def P12670772932150715253.Spec : Prop :=
  ∀ n, P12670772932150715253.a n = A162268 n

end A162268

/-! ## A162268.P1800898888014165283

`5*A000129(n+1)-3*A000129(n)`
-/

namespace A162268.P1800898888014165283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000129 (n + 1) - 3 * A000129 n

end

end A162268.P1800898888014165283

namespace A162268

/-- `5*A000129(n+1)-3*A000129(n)` -/
def P1800898888014165283.Spec : Prop :=
  ∀ n, P1800898888014165283.a n = A162268 n

end A162268

/-! ## A162268.P15893013891199306918

`a(n-2)+lcm(2, a(n-1))` with `a(0)=5, a(1)=7`
-/

namespace A162268.P15893013891199306918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A162268.P15893013891199306918

namespace A162268

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P15893013891199306918.Spec : Prop :=
  ∀ n, (P15893013891199306918.a n : ℤ) = A162268 n

end A162268

/-! ## A162268.P13211224149222428507

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=5, a(1)=7`
-/

namespace A162268.P13211224149222428507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A162268.P13211224149222428507

namespace A162268

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P13211224149222428507.Spec : Prop :=
  ∀ n, (P13211224149222428507.a n : ℤ) = A162268 n

theorem P13211224149222428507.correct : P13211224149222428507.Spec := by
  intro n
  simp only [A162268, Nat.add_sub_cancel, A162268.P13211224149222428507.a, A162268.P1063532603326040866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162268

/-! ## A162268.P12632277030551467016

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=5, a(1)=7`
-/

namespace A162268.P12632277030551467016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A162268.P12632277030551467016

namespace A162268

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P12632277030551467016.Spec : Prop :=
  ∀ n, P12632277030551467016.a n = A162268 n

end A162268

/-! ## A162268.P16750112755629813987

`Δ[A048693(n)]`
-/

namespace A162268.P16750112755629813987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162268.P16750112755629813987

namespace A162268

/-- `Δ[A048693(n)]` -/
def P16750112755629813987.Spec : Prop :=
  ∀ n, P16750112755629813987.a n = A162268 n

end A162268

/-! ## A162268.P12637697979326357484

`∑{#}[n, C(n, #)*A162396(#+1)]`
-/

namespace A162268.P12637697979326357484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A162396 (k + 1)

end

end A162268.P12637697979326357484

namespace A162268

/-- `∑{#}[n, C(n, #)*A162396(#+1)]` -/
def P12637697979326357484.Spec : Prop :=
  ∀ n, P12637697979326357484.a n = A162268 n

end A162268

/-! ## A162268.P4538013040675964557

`A277369(n)-A000129(n)`
-/

namespace A162268.P4538013040675964557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277369 n - A000129 n

end

end A162268.P4538013040675964557

namespace A162268

/-- `A277369(n)-A000129(n)` -/
def P4538013040675964557.Spec : Prop :=
  ∀ n, P4538013040675964557.a n = A162268 n

end A162268

/-! ## A162268.P4421905150030650354

`Δ[A048655(n)+A000129(n)]`
-/

namespace A162268.P4421905150030650354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162268.P4421905150030650354

namespace A162268

/-- `Δ[A048655(n)+A000129(n)]` -/
def P4421905150030650354.Spec : Prop :=
  ∀ n, P4421905150030650354.a n = A162268 n

end A162268

/-! ## A162268.P2924997037054099979

`A002203(n)+Δ[A048654(n)]`
-/

namespace A162268.P2924997037054099979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (f1 (n + 1) - f1 n)

end

end A162268.P2924997037054099979

namespace A162268

/-- `A002203(n)+Δ[A048654(n)]` -/
def P2924997037054099979.Spec : Prop :=
  ∀ n, P2924997037054099979.a n = A162268 n

end A162268

/-! ## A162268.P17142307124581377412

`A135532(n+1)+A002203(n)`
-/

namespace A162268.P17142307124581377412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (n + 1) + A002203 n

end

end A162268.P17142307124581377412

namespace A162268

/-- `A135532(n+1)+A002203(n)` -/
def P17142307124581377412.Spec : Prop :=
  ∀ n, P17142307124581377412.a n = A162268 n

end A162268

/-! ## A162268.P12139919161722239688

`A221174(n+1)+A000129(n)`
-/

namespace A162268.P12139919161722239688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (n + 1) + A000129 n

end

end A162268.P12139919161722239688

namespace A162268

/-- `A221174(n+1)+A000129(n)` -/
def P12139919161722239688.Spec : Prop :=
  ∀ n, P12139919161722239688.a n = A162268 n

end A162268

/-! ## A162268.P10240254949191724025

`A048693(n+1)-A048693(n)`
-/

namespace A162268.P10240254949191724025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 (n + 1) - A048693 n

end

end A162268.P10240254949191724025

namespace A162268

/-- `A048693(n+1)-A048693(n)` -/
def P10240254949191724025.Spec : Prop :=
  ∀ n, P10240254949191724025.a n = A162268 n

end A162268

/-! ## A162268.P12344296247656864861

`A048654(n+1)-A078343(n)`
-/

namespace A162268.P12344296247656864861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 1) - A078343 n

end

end A162268.P12344296247656864861

namespace A162268

/-- `A048654(n+1)-A078343(n)` -/
def P12344296247656864861.Spec : Prop :=
  ∀ n, P12344296247656864861.a n = A162268 n

end A162268

/-! ## A162268.P2439244292604863803

`A163607(n)-A163271(n+1)`
-/

namespace A162268.P2439244292604863803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163607 n - A163271 (n + 1)

end

end A162268.P2439244292604863803

namespace A162268

/-- `A163607(n)-A163271(n+1)` -/
def P2439244292604863803.Spec : Prop :=
  ∀ n, P2439244292604863803.a n = A162268 n

end A162268

/-! ## A162268.P5100825858279503401

`A002203(n+2)-A048694(n)`
-/

namespace A162268.P5100825858279503401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 2) - A048694 n

end

end A162268.P5100825858279503401

namespace A162268

/-- `A002203(n+2)-A048694(n)` -/
def P5100825858279503401.Spec : Prop :=
  ∀ n, P5100825858279503401.a n = A162268 n

end A162268

/-! ## A162268.P10280298926487415978

`A052542(n+2)-A135532(n)`
-/

namespace A162268.P10280298926487415978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 2) - A135532 n

end

end A162268.P10280298926487415978

namespace A162268

/-- `A052542(n+2)-A135532(n)` -/
def P10280298926487415978.Spec : Prop :=
  ∀ n, P10280298926487415978.a n = A162268 n

end A162268

/-! ## A162268.P8808495255608872104

`A221174(n+2)-A048697(n)`
-/

namespace A162268.P8808495255608872104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (n + 2) - A048697 n

end

end A162268.P8808495255608872104

namespace A162268

/-- `A221174(n+2)-A048697(n)` -/
def P8808495255608872104.Spec : Prop :=
  ∀ n, P8808495255608872104.a n = A162268 n

end A162268

/-!
# A162269: a(n) = ((5+sqrt(2))*(2+sqrt(2))^n + (5-sqrt(2))*(2-sqrt(2))^n)/2.

The programs for A162269, the canonical program `A162269.P14473438648630511739` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162269 has offset 0).

The definition of A162269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162269.P10797365910337145353

`ogf((5-8x)/(1-4x+2x^2))`
-/

namespace A162269.P10797365910337145353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8] [1, -4, 2] n

end

end A162269.P10797365910337145353

namespace A162269

/-- `ogf((5-8x)/(1-4x+2x^2))` -/
def P10797365910337145353.Spec : Prop :=
  ∀ n, P10797365910337145353.a n = A162269 n

end A162269

/-! ## A162269.P14473438648630511739

`4*a(n-1)-2*a(n-2)` with `a(0)=5, a(1)=12`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162269

/-- `4*a(n-1)-2*a(n-2)` -/
def P14473438648630511739.Spec : Prop :=
  ∀ n, P14473438648630511739.a n = A162269 n

theorem P14473438648630511739.correct : P14473438648630511739.Spec := by
  intro n
  simp only [A162269]

end A162269

/-! ## A162269.P8278292411090877172

`((5+sqrt(2))*(2+sqrt(2))^n+(5-sqrt(2))*(2-sqrt(2))^n)/2`
-/

namespace A162269.P8278292411090877172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (2 : ℝ)) * (2 + Real.sqrt (2 : ℝ)) ^ n + (5 - Real.sqrt (2 : ℝ)) * (2 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A162269.P8278292411090877172

namespace A162269

/-- `((5+sqrt(2))*(2+sqrt(2))^n+(5-sqrt(2))*(2-sqrt(2))^n)/2` -/
def P8278292411090877172.Spec : Prop :=
  ∀ n, P8278292411090877172.a n = (A162269 n : ℝ)

theorem P8278292411090877172.correct : P8278292411090877172.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162269, Nat.add_sub_cancel, A162269.P8278292411090877172.a, A162269.P14473438648630511739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162269, Nat.add_sub_cancel, A162269.P8278292411090877172.a, A162269.P14473438648630511739.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162269

/-! ## A162269.P15879571714623568324

`∑{#}[n, C(n, #)*A162268(#)]`
-/

namespace A162269.P15879571714623568324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A162268 k

end

end A162269.P15879571714623568324

namespace A162269

/-- `∑{#}[n, C(n, #)*A162268(#)]` -/
def P15879571714623568324.Spec : Prop :=
  ∀ n, P15879571714623568324.a n = A162269 n

end A162269

/-! ## A162269.P9223736741266835447

`A161938(n)+A056236(n)`
-/

namespace A162269.P9223736741266835447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161938 n + A056236 n

end

end A162269.P9223736741266835447

namespace A162269

/-- `A161938(n)+A056236(n)` -/
def P9223736741266835447.Spec : Prop :=
  ∀ n, P9223736741266835447.a n = A162269 n

end A162269

/-! ## A162269.P14558292275116807580

`A163608(n)+A106731(n)`
-/

namespace A162269.P14558292275116807580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163608 n + A106731 n

end

end A162269.P14558292275116807580

namespace A162269

/-- `A163608(n)+A106731(n)` -/
def P14558292275116807580.Spec : Prop :=
  ∀ n, P14558292275116807580.a n = A162269 n

end A162269

/-! ## A162269.P5280460351631743820

`A265185(n)+A007070(n)`
-/

namespace A162269.P5280460351631743820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 n + A007070 n

end

end A162269.P5280460351631743820

namespace A162269

/-- `A265185(n)+A007070(n)` -/
def P5280460351631743820.Spec : Prop :=
  ∀ n, P5280460351631743820.a n = A162269 n

end A162269

/-! ## A162269.P5836040342399440823

`A265185(n)+∑[A007052(n)]`
-/

namespace A162269.P5836040342399440823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162269.P5836040342399440823

namespace A162269

/-- `A265185(n)+∑[A007052(n)]` -/
def P5836040342399440823.Spec : Prop :=
  ∀ n, P5836040342399440823.a n = A162269 n

end A162269

/-! ## A162269.P3809869534003620706

`A163608(n)-A060995(n+1)`
-/

namespace A162269.P3809869534003620706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163608 n - A060995 (n + 1)

end

end A162269.P3809869534003620706

namespace A162269

/-- `A163608(n)-A060995(n+1)` -/
def P3809869534003620706.Spec : Prop :=
  ∀ n, P3809869534003620706.a n = A162269 n

end A162269

/-! ## A162269.P490075105808740001

`A007070(n)+2*A056236(n)`
-/

namespace A162269.P490075105808740001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + 2 * A056236 n

end

end A162269.P490075105808740001

namespace A162269

/-- `A007070(n)+2*A056236(n)` -/
def P490075105808740001.Spec : Prop :=
  ∀ n, P490075105808740001.a n = A162269 n

end A162269

/-! ## A162269.P3000599143453205203

`A161938(n)+2*A006012(n)`
-/

namespace A162269.P3000599143453205203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161938 n + 2 * A006012 n

end

end A162269.P3000599143453205203

namespace A162269

/-- `A161938(n)+2*A006012(n)` -/
def P3000599143453205203.Spec : Prop :=
  ∀ n, P3000599143453205203.a n = A162269 n

end A162269

/-! ## A162269.P3243483679905722944

`A265185(n)+A068912(2*n)`
-/

namespace A162269.P3243483679905722944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 n + A068912 (2 * n)

end

end A162269.P3243483679905722944

namespace A162269

/-- `A265185(n)+A068912(2*n)` -/
def P3243483679905722944.Spec : Prop :=
  ∀ n, P3243483679905722944.a n = A162269 n

end A162269

/-! ## A162269.P18276370550445249726

`2*A161938(n)-A007070(n)`
-/

namespace A162269.P18276370550445249726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161938 n - A007070 n

end

end A162269.P18276370550445249726

namespace A162269

/-- `2*A161938(n)-A007070(n)` -/
def P18276370550445249726.Spec : Prop :=
  ∀ n, P18276370550445249726.a n = A162269 n

end A162269

/-! ## A162269.P16325794239095545520

`∑[A007052(n)]+2*A056236(n)`
-/

namespace A162269.P16325794239095545520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A056236 n

end

end A162269.P16325794239095545520

namespace A162269

/-- `∑[A007052(n)]+2*A056236(n)` -/
def P16325794239095545520.Spec : Prop :=
  ∀ n, P16325794239095545520.a n = A162269 n

end A162269

/-! ## A162269.P3096317296539446199

`A265185(n)+A007068(2*n+1)`
-/

namespace A162269.P3096317296539446199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 n + A007068 (2 * n + 1)

end

end A162269.P3096317296539446199

namespace A162269

/-- `A265185(n)+A007068(2*n+1)` -/
def P3096317296539446199.Spec : Prop :=
  ∀ n, P3096317296539446199.a n = A162269 n

end A162269

/-! ## A162269.P7447613325680105876

`A265185(n)+A062112(2*(n+1))`
-/

namespace A162269.P7447613325680105876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 n + A062112 (2 * (n + 1))

end

end A162269.P7447613325680105876

namespace A162269

/-- `A265185(n)+A062112(2*(n+1))` -/
def P7447613325680105876.Spec : Prop :=
  ∀ n, P7447613325680105876.a n = A162269 n

end A162269

/-! ## A162269.P5945878282672974080

`A006012(n+1)+3*A006012(n)`
-/

namespace A162269.P5945878282672974080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + 3 * A006012 n

end

end A162269.P5945878282672974080

namespace A162269

/-- `A006012(n+1)+3*A006012(n)` -/
def P5945878282672974080.Spec : Prop :=
  ∀ n, P5945878282672974080.a n = A162269 n

end A162269

/-! ## A162269.P9956455171777218239

`A062112(2*n+1)+2*A001882(2*n+1)`
-/

namespace A162269.P9956455171777218239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n + 1) + 2 * A001882 (2 * n + 1)

end

end A162269.P9956455171777218239

namespace A162269

/-- `A062112(2*n+1)+2*A001882(2*n+1)` -/
def P9956455171777218239.Spec : Prop :=
  ∀ n, P9956455171777218239.a n = A162269 n

end A162269

/-! ## A162269.P5904900199471856296

`A020727(n)+A265185(n)-A007052(n)`
-/

namespace A162269.P5904900199471856296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n + (A265185 n - A007052 n)

end

end A162269.P5904900199471856296

namespace A162269

/-- `A020727(n)+A265185(n)-A007052(n)` -/
def P5904900199471856296.Spec : Prop :=
  ∀ n, P5904900199471856296.a n = A162269 n

end A162269

/-! ## A162269.P11696838644898428946

`A006012(n+1)+A056236(n)+A006012(n)`
-/

namespace A162269.P11696838644898428946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + (A056236 n + A006012 n)

end

end A162269.P11696838644898428946

namespace A162269

/-- `A006012(n+1)+A056236(n)+A006012(n)` -/
def P11696838644898428946.Spec : Prop :=
  ∀ n, P11696838644898428946.a n = A162269 n

end A162269

/-!
# A162270: a(n) = ((5+sqrt(2))*(3+sqrt(2))^n + (5-sqrt(2))*(3-sqrt(2))^n)/2.

The programs for A162270, the canonical program `A162270.P299828216089557535` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162270 has offset 0).

The definition of A162270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162270.P7629168722106209238

`ogf((5-13x)/(1-6x+7x^2))`
-/

namespace A162270.P7629168722106209238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13] [1, -6, 7] n

end

end A162270.P7629168722106209238

namespace A162270

/-- `ogf((5-13x)/(1-6x+7x^2))` -/
def P7629168722106209238.Spec : Prop :=
  ∀ n, P7629168722106209238.a n = A162270 n

end A162270

/-! ## A162270.P299828216089557535

`6*a(n-1)-7*a(n-2)` with `a(0)=5, a(1)=17`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162270

/-- `6*a(n-1)-7*a(n-2)` -/
def P299828216089557535.Spec : Prop :=
  ∀ n, P299828216089557535.a n = A162270 n

theorem P299828216089557535.correct : P299828216089557535.Spec := by
  intro n
  simp only [A162270]

end A162270

/-! ## A162270.P8997958130147636328

`5*A081179(n+1)-13*A081179(n)`
-/

namespace A162270.P8997958130147636328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081179 (n + 1) - 13 * A081179 n

end

end A162270.P8997958130147636328

namespace A162270

/-- `5*A081179(n+1)-13*A081179(n)` -/
def P8997958130147636328.Spec : Prop :=
  ∀ n, P8997958130147636328.a n = A162270 n

end A162270

/-! ## A162270.P17528571116886967847

`∑{#}[n, C(n, #)*A162269(#)]`
-/

namespace A162270.P17528571116886967847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A162269 k

end

end A162270.P17528571116886967847

namespace A162270

/-- `∑{#}[n, C(n, #)*A162269(#)]` -/
def P17528571116886967847.Spec : Prop :=
  ∀ n, P17528571116886967847.a n = A162270 n

end A162270

/-! ## A162270.P8001052358784513061

`A083878(n)+2*A161944(n)`
-/

namespace A162270.P8001052358784513061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + 2 * A161944 n

end

end A162270.P8001052358784513061

namespace A162270

/-- `A083878(n)+2*A161944(n)` -/
def P8001052358784513061.Spec : Prop :=
  ∀ n, P8001052358784513061.a n = A162270 n

end A162270

/-! ## A162270.P9168147844659168952

`A163609(n)-2*A081179(n)`
-/

namespace A162270.P9168147844659168952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163609 n - 2 * A081179 n

end

end A162270.P9168147844659168952

namespace A162270

/-- `A163609(n)-2*A081179(n)` -/
def P9168147844659168952.Spec : Prop :=
  ∀ n, P9168147844659168952.a n = A162270 n

end A162270

/-! ## A162270.P7564742556451710089

`A083878(n+1)+2*A083878(n)`
-/

namespace A162270.P7564742556451710089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 (n + 1) + 2 * A083878 n

end

end A162270.P7564742556451710089

namespace A162270

/-- `A083878(n+1)+2*A083878(n)` -/
def P7564742556451710089.Spec : Prop :=
  ∀ n, P7564742556451710089.a n = A162270 n

end A162270

/-! ## A162270.P10430750747530024227

`((5+sqrt(2))*(sqrt(2)+3)^n+(5-sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A162270.P10430750747530024227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (5 - Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A162270.P10430750747530024227

namespace A162270

/-- `((5+sqrt(2))*(sqrt(2)+3)^n+(5-sqrt(2))*(3-sqrt(2))^n)/2` -/
def P10430750747530024227.Spec : Prop :=
  ∀ n, P10430750747530024227.a n = (A162270 n : ℝ)

theorem P10430750747530024227.correct : P10430750747530024227.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162270, Nat.add_sub_cancel, A162270.P10430750747530024227.a, A162270.P299828216089557535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162270, Nat.add_sub_cancel, A162270.P10430750747530024227.a, A162270.P299828216089557535.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162270

/-! ## A162270.P11650254826216375339

`(A081179(n+3)+A081179(n))%A081179(n+2)`
-/

namespace A162270.P11650254826216375339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081179 (n + 3) + A081179 n) (A081179 (n + 2))

end

end A162270.P11650254826216375339

namespace A162270

/-- `(A081179(n+3)+A081179(n))%A081179(n+2)` -/
def P11650254826216375339.Spec : Prop :=
  ∀ n, P11650254826216375339.a n = A162270 n

end A162270

/-! ## A162270.P4098711921031166660

`∑{#}[n, (-1)^(n-#)*C(n, #)*A162271(#)]`
-/

namespace A162270.P4098711921031166660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A162271 k : ℚ)

end

end A162270.P4098711921031166660

namespace A162270

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A162271(#)]` -/
def P4098711921031166660.Spec : Prop :=
  ∀ n, P4098711921031166660.a n = (A162270 n : ℚ)

end A162270

/-!
# A162271: a(n) = ((5+sqrt(2))*(4+sqrt(2))^n + (5-sqrt(2))*(4-sqrt(2))^n)/2.

The programs for A162271, the canonical program `A162271.P4114688802599444862` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162271 has offset 0).

The definition of A162271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((5+sqrt(2))*(4+sqrt(2))^n+(5-sqrt(2))*(4-sqrt(2))^n)/2` (program `A162271.P11808115078233491470`, by `A162271.P11808115078233491470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162271.P9565359626445653232

`ogf((5-18x)/(1-8x+14x^2))`
-/

namespace A162271.P9565359626445653232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -18] [1, -8, 14] n

end

end A162271.P9565359626445653232

namespace A162271

/-- `ogf((5-18x)/(1-8x+14x^2))` -/
def P9565359626445653232.Spec : Prop :=
  ∀ n, P9565359626445653232.a n = A162271 n

end A162271

/-! ## A162271.P4114688802599444862

`8*a(n-1)-14*a(n-2)` with `a(0)=5, a(1)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162271

/-- `8*a(n-1)-14*a(n-2)` -/
def P4114688802599444862.Spec : Prop :=
  ∀ n, P4114688802599444862.a n = A162271 n

theorem P4114688802599444862.correct : P4114688802599444862.Spec := by
  intro n
  simp only [A162271]

end A162271

/-! ## A162271.P11808115078233491470

`((5+sqrt(2))*(4+sqrt(2))^n+(5-sqrt(2))*(4-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162271.P11808115078233491470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (5 - Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A162271.P11808115078233491470

namespace A162271

/-- `((5+sqrt(2))*(4+sqrt(2))^n+(5-sqrt(2))*(4-sqrt(2))^n)/2` -/
def P11808115078233491470.Spec : Prop :=
  ∀ n, P11808115078233491470.a n = (A162271 n : ℝ)

theorem P11808115078233491470.correct : P11808115078233491470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162271, Nat.add_sub_cancel, A162271.P11808115078233491470.a, A162271.P4114688802599444862.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162271, Nat.add_sub_cancel, A162271.P11808115078233491470.a, A162271.P4114688802599444862.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162271

/-! ## A162271.P1681266624782525320

`∑{#}[n, C(n, #)*A162270(#)]`
-/

namespace A162271.P1681266624782525320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A162270 k

end

end A162271.P1681266624782525320

namespace A162271

/-- `∑{#}[n, C(n, #)*A162270(#)]` -/
def P1681266624782525320.Spec : Prop :=
  ∀ n, P1681266624782525320.a n = A162271 n

end A162271

/-! ## A162271.P3844638420270677719

`A083879(n+1)+A083879(n)`
-/

namespace A162271.P3844638420270677719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 (n + 1) + A083879 n

end

end A162271.P3844638420270677719

namespace A162271

/-- `A083879(n+1)+A083879(n)` -/
def P3844638420270677719.Spec : Prop :=
  ∀ n, P3844638420270677719.a n = A162271 n

end A162271

/-! ## A162271.P6360377344880044097

`A163350(n+1)-A164300(n)`
-/

namespace A162271.P6360377344880044097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 (n + 1) - A164300 n

end

end A162271.P6360377344880044097

namespace A162271

/-- `A163350(n+1)-A164300(n)` -/
def P6360377344880044097.Spec : Prop :=
  ∀ n, P6360377344880044097.a n = A162271 n

end A162271

/-! ## A162271.P16960850632245153290

`2*A163604(n)-A163615(n)`
-/

namespace A162271.P16960850632245153290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163604 n - A163615 n

end

end A162271.P16960850632245153290

namespace A162271

/-- `2*A163604(n)-A163615(n)` -/
def P16960850632245153290.Spec : Prop :=
  ∀ n, P16960850632245153290.a n = A162271 n

end A162271

/-!
# A162272: a(n) = ((1+sqrt(3))*(5+sqrt(3))^n + (1-sqrt(3))*(5-sqrt(3))^n)/2.

The programs for A162272, the canonical program `A162272.P8909762715163668265` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162272 has offset 0).

The definition of A162272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162272.P9840543020311307576

`ogf((1-2x)/(1-10x+22x^2))`
-/

namespace A162272.P9840543020311307576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -10, 22] n

end

end A162272.P9840543020311307576

namespace A162272

/-- `ogf((1-2x)/(1-10x+22x^2))` -/
def P9840543020311307576.Spec : Prop :=
  ∀ n, P9840543020311307576.a n = A162272 n

end A162272

/-! ## A162272.P8909762715163668265

`10*a(n-1)-22*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162272

/-- `10*a(n-1)-22*a(n-2)` -/
def P8909762715163668265.Spec : Prop :=
  ∀ n, P8909762715163668265.a n = A162272 n

theorem P8909762715163668265.correct : P8909762715163668265.Spec := by
  intro n
  simp only [A162272]

end A162272

/-! ## A162272.P145937988183074780

`((1+sqrt(3))*(sqrt(3)+5)^n+(1-sqrt(3))*(5-sqrt(3))^n)/2`
-/

namespace A162272.P145937988183074780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 5) ^ n + (1 - Real.sqrt (3 : ℝ)) * (5 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162272.P145937988183074780

namespace A162272

/-- `((1+sqrt(3))*(sqrt(3)+5)^n+(1-sqrt(3))*(5-sqrt(3))^n)/2` -/
def P145937988183074780.Spec : Prop :=
  ∀ n, P145937988183074780.a n = (A162272 n : ℝ)

theorem P145937988183074780.correct : P145937988183074780.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162272, Nat.add_sub_cancel, A162272.P145937988183074780.a, A162272.P8909762715163668265.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162272, Nat.add_sub_cancel, A162272.P145937988183074780.a, A162272.P8909762715163668265.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162272

/-! ## A162272.P3373735796052227480

`∑{#}[n, C(n, #)*A161728(#)]`
-/

namespace A162272.P3373735796052227480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A161728 k

end

end A162272.P3373735796052227480

namespace A162272

/-- `∑{#}[n, C(n, #)*A161728(#)]` -/
def P3373735796052227480.Spec : Prop :=
  ∀ n, P3373735796052227480.a n = A162272 n

end A162272

/-! ## A162272.P8080361721287418195

`A162275(n)-A143647(n)`
-/

namespace A162272.P8080361721287418195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162275 n - A143647 n

end

end A162272.P8080361721287418195

namespace A162272

/-- `A162275(n)-A143647(n)` -/
def P8080361721287418195.Spec : Prop :=
  ∀ n, P8080361721287418195.a n = A162272 n

end A162272

/-! ## A162272.P11300277349881857045

`A163471(n)-2*A143647(n)`
-/

namespace A162272.P11300277349881857045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163471 n - 2 * A143647 n

end

end A162272.P11300277349881857045

namespace A162272

/-- `A163471(n)-2*A143647(n)` -/
def P11300277349881857045.Spec : Prop :=
  ∀ n, P11300277349881857045.a n = A162272 n

end A162272

/-! ## A162272.P9068052093594281443

`2*A162275(n)-A163471(n)`
-/

namespace A162272.P9068052093594281443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162275 n - A163471 n

end

end A162272.P9068052093594281443

namespace A162272

/-- `2*A162275(n)-A163471(n)` -/
def P9068052093594281443.Spec : Prop :=
  ∀ n, P9068052093594281443.a n = A162272 n

end A162272

/-! ## A162272.P17576086270473838818

`A162275(n+1)%A162275(n)`
-/

namespace A162272.P17576086270473838818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162275 (n + 1)) (A162275 n)

end

end A162272.P17576086270473838818

namespace A162272

/-- `A162275(n+1)%A162275(n)` -/
def P17576086270473838818.Spec : Prop :=
  ∀ n, P17576086270473838818.a n = A162272 n

end A162272

/-!
# A162273: a(n) = ((2+sqrt(3))*(3+sqrt(3))^n + (2-sqrt(3))*(3-sqrt(3))^n)/2.

The programs for A162273, the canonical program `A162273.P8021068279656721110` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162273 has offset 0).

The definition of A162273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162273.P15065167480017104332

`ogf((2-3x)/(1-6x+6x^2))`
-/

namespace A162273.P15065167480017104332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -6, 6] n

end

end A162273.P15065167480017104332

namespace A162273

/-- `ogf((2-3x)/(1-6x+6x^2))` -/
def P15065167480017104332.Spec : Prop :=
  ∀ n, P15065167480017104332.a n = A162273 n

end A162273

/-! ## A162273.P8021068279656721110

`6*a(n-1)-6*a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162273

/-- `6*a(n-1)-6*a(n-2)` -/
def P8021068279656721110.Spec : Prop :=
  ∀ n, P8021068279656721110.a n = A162273 n

theorem P8021068279656721110.correct : P8021068279656721110.Spec := by
  intro n
  simp only [A162273]

end A162273

/-! ## A162273.P3205878891849368033

`6*(a(n-1)-a(n-2))` with `a(0)=2, a(1)=9`
-/

namespace A162273.P3205878891849368033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A162273.P3205878891849368033

namespace A162273

/-- `6*(a(n-1)-a(n-2))` -/
def P3205878891849368033.Spec : Prop :=
  ∀ n, P3205878891849368033.a n = A162273 n

theorem P3205878891849368033.correct : P3205878891849368033.Spec := by
  intro n
  simp only [A162273, Nat.add_sub_cancel, A162273.P3205878891849368033.a, A162273.P8021068279656721110.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162273

/-! ## A162273.P4706197414061820070

`((2+sqrt(3))*(3+sqrt(3))^n+(2-sqrt(3))*(3-sqrt(3))^n)/2`
-/

namespace A162273.P4706197414061820070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) * (3 + Real.sqrt (3 : ℝ)) ^ n + (2 - Real.sqrt (3 : ℝ)) * (3 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162273.P4706197414061820070

namespace A162273

/-- `((2+sqrt(3))*(3+sqrt(3))^n+(2-sqrt(3))*(3-sqrt(3))^n)/2` -/
def P4706197414061820070.Spec : Prop :=
  ∀ n, P4706197414061820070.a n = (A162273 n : ℝ)

theorem P4706197414061820070.correct : P4706197414061820070.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162273, Nat.add_sub_cancel, A162273.P4706197414061820070.a, A162273.P8021068279656721110.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162273, Nat.add_sub_cancel, A162273.P4706197414061820070.a, A162273.P8021068279656721110.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162273

/-! ## A162273.P3490277689534040899

`Δ[A083881(n)]`
-/

namespace A162273.P3490277689534040899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162273.P3490277689534040899

namespace A162273

/-- `Δ[A083881(n)]` -/
def P3490277689534040899.Spec : Prop :=
  ∀ n, P3490277689534040899.a n = A162273 n

end A162273

/-! ## A162273.P10470976791643826640

`abs(Δ[A110211(n)/2])`
-/

namespace A162273.P10470976791643826640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110211 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162273.P10470976791643826640

namespace A162273

/-- `abs(Δ[A110211(n)/2])` -/
def P10470976791643826640.Spec : Prop :=
  ∀ n, P10470976791643826640.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P11376859974140634345

`Δ[∑[A086405(n)]/2]`
-/

namespace A162273.P11376859974140634345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162273.P11376859974140634345

namespace A162273

/-- `Δ[∑[A086405(n)]/2]` -/
def P11376859974140634345.Spec : Prop :=
  ∀ n, P11376859974140634345.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P14919472049499854470

`floor(A086405(n+1)/2)`
-/

namespace A162273.P14919472049499854470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086405 (n + 1) : ℚ) / 2⌋

end

end A162273.P14919472049499854470

namespace A162273

/-- `floor(A086405(n+1)/2)` -/
def P14919472049499854470.Spec : Prop :=
  ∀ n, P14919472049499854470.a n = A162273 n

end A162273

/-! ## A162273.P11721935484608585454

`Δ[A094433(n+2)/2]`
-/

namespace A162273.P11721935484608585454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094433 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162273.P11721935484608585454

namespace A162273

/-- `Δ[A094433(n+2)/2]` -/
def P11721935484608585454.Spec : Prop :=
  ∀ n, P11721935484608585454.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P8585794294053127883

`A083881(n)+A030192(n)`
-/

namespace A162273.P8585794294053127883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n + A030192 n

end

end A162273.P8585794294053127883

namespace A162273

/-- `A083881(n)+A030192(n)` -/
def P8585794294053127883.Spec : Prop :=
  ∀ n, P8585794294053127883.a n = A162273 n

end A162273

/-! ## A162273.P306760265398606033

`A083881(n+1)-A083881(n)`
-/

namespace A162273.P306760265398606033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 (n + 1) - A083881 n

end

end A162273.P306760265398606033

namespace A162273

/-- `A083881(n+1)-A083881(n)` -/
def P306760265398606033.Spec : Prop :=
  ∀ n, P306760265398606033.a n = A162273 n

end A162273

/-! ## A162273.P8719732984386670292

`A164310(n)-2*A083881(n)`
-/

namespace A162273.P8719732984386670292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164310 n - 2 * A083881 n

end

end A162273.P8719732984386670292

namespace A162273

/-- `A164310(n)-2*A083881(n)` -/
def P8719732984386670292.Spec : Prop :=
  ∀ n, P8719732984386670292.a n = A162273 n

end A162273

/-! ## A162273.P2531134190650995200

`A287807(n)+Δ[Δ[A094433(n)]]`
-/

namespace A162273.P2531134190650995200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287807 n + (f1 (n + 1) - f1 n)

end

end A162273.P2531134190650995200

namespace A162273

/-- `A287807(n)+Δ[Δ[A094433(n)]]` -/
def P2531134190650995200.Spec : Prop :=
  ∀ n, P2531134190650995200.a n = A162273 n

end A162273

/-! ## A162273.P5166512969758863956

`A080879(n+1)/2*A166552(n+2)`
-/

namespace A162273.P5166512969758863956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080879 (n + 1) : ℚ) / 2 * (A166552 (n + 2) : ℚ)

end

end A162273.P5166512969758863956

namespace A162273

/-- `A080879(n+1)/2*A166552(n+2)` -/
def P5166512969758863956.Spec : Prop :=
  ∀ n, P5166512969758863956.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P14854963117728120956

`Δ[A140766(n+1)]-2*A140766(n+1)`
-/

namespace A162273.P14854963117728120956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A140766 (n + 1)

end

end A162273.P14854963117728120956

namespace A162273

/-- `Δ[A140766(n+1)]-2*A140766(n+1)` -/
def P14854963117728120956.Spec : Prop :=
  ∀ n, P14854963117728120956.a n = A162273 n

end A162273

/-! ## A162273.P9204643928847165034

`Δ[A094434(n+1)]-A094434(n+1)/2`
-/

namespace A162273.P9204643928847165034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A094434 (n + 1) : ℚ) / 2

end

end A162273.P9204643928847165034

namespace A162273

/-- `Δ[A094434(n+1)]-A094434(n+1)/2` -/
def P9204643928847165034.Spec : Prop :=
  ∀ n, P9204643928847165034.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P4872953710837897187

`A287807(n)+A287807(n)/A040000(n)`
-/

namespace A162273.P4872953710837897187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287807 n : ℚ) + (A287807 n : ℚ) / (A040000 n : ℚ)

end

end A162273.P4872953710837897187

namespace A162273

/-- `A287807(n)+A287807(n)/A040000(n)` -/
def P4872953710837897187.Spec : Prop :=
  ∀ n, P4872953710837897187.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P12746814298065825603

`A083881(n)+∑[A094434(n+1)+A083881(n)]`
-/

namespace A162273.P12746814298065825603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162273.P12746814298065825603

namespace A162273

/-- `A083881(n)+∑[A094434(n+1)+A083881(n)]` -/
def P12746814298065825603.Spec : Prop :=
  ∀ n, P12746814298065825603.a n = A162273 n

end A162273

/-! ## A162273.P10677302379616937667

`A086405(n+1)/A000079(n+1)*A000079(n)`
-/

namespace A162273.P10677302379616937667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ) * (A000079 n : ℚ)

end

end A162273.P10677302379616937667

namespace A162273

/-- `A086405(n+1)/A000079(n+1)*A000079(n)` -/
def P10677302379616937667.Spec : Prop :=
  ∀ n, P10677302379616937667.a n = (A162273 n : ℚ)

end A162273

/-! ## A162273.P16679090328928102187

`∑{#}[n, (-1)^(n-#)*C(n, #)*A162274(#)]`
-/

namespace A162273.P16679090328928102187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A162274 k : ℚ)

end

end A162273.P16679090328928102187

namespace A162273

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A162274(#)]` -/
def P16679090328928102187.Spec : Prop :=
  ∀ n, P16679090328928102187.a n = (A162273 n : ℚ)

end A162273

/-!
# A162274: a(n) = ((2+sqrt(3))*(4+sqrt(3))^n + (2-sqrt(3))*(4-sqrt(3))^n)/2.

The programs for A162274, the canonical program `A162274.P55668973502387029` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162274 has offset 0).

The definition of A162274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162274.P17214002287017789531

`ogf((2-5x)/(1-8x+13x^2))`
-/

namespace A162274.P17214002287017789531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -8, 13] n

end

end A162274.P17214002287017789531

namespace A162274

/-- `ogf((2-5x)/(1-8x+13x^2))` -/
def P17214002287017789531.Spec : Prop :=
  ∀ n, P17214002287017789531.a n = A162274 n

end A162274

/-! ## A162274.P55668973502387029

`8*a(n-1)-13*a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162274

/-- `8*a(n-1)-13*a(n-2)` -/
def P55668973502387029.Spec : Prop :=
  ∀ n, P55668973502387029.a n = A162274 n

theorem P55668973502387029.correct : P55668973502387029.Spec := by
  intro n
  simp only [A162274]

end A162274

/-! ## A162274.P4908643241825066804

`((2+sqrt(3))*(sqrt(3)+4)^n+(2-sqrt(3))*(4-sqrt(3))^n)/2`
-/

namespace A162274.P4908643241825066804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 4) ^ n + (2 - Real.sqrt (3 : ℝ)) * (4 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162274.P4908643241825066804

namespace A162274

/-- `((2+sqrt(3))*(sqrt(3)+4)^n+(2-sqrt(3))*(4-sqrt(3))^n)/2` -/
def P4908643241825066804.Spec : Prop :=
  ∀ n, P4908643241825066804.a n = (A162274 n : ℝ)

theorem P4908643241825066804.correct : P4908643241825066804.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162274, Nat.add_sub_cancel, A162274.P4908643241825066804.a, A162274.P55668973502387029.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162274, Nat.add_sub_cancel, A162274.P4908643241825066804.a, A162274.P55668973502387029.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162274

/-! ## A162274.P3541727718637161121

`Δ[A162557(n)/2]`
-/

namespace A162274.P3541727718637161121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162557 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162274.P3541727718637161121

namespace A162274

/-- `Δ[A162557(n)/2]` -/
def P3541727718637161121.Spec : Prop :=
  ∀ n, P3541727718637161121.a n = (A162274 n : ℚ)

end A162274

/-! ## A162274.P545084192628371618

`∑{#}[n, C(n, #)*A162273(#)]`
-/

namespace A162274.P545084192628371618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A162273 k

end

end A162274.P545084192628371618

namespace A162274

/-- `∑{#}[n, C(n, #)*A162273(#)]` -/
def P545084192628371618.Spec : Prop :=
  ∀ n, P545084192628371618.a n = A162274 n

end A162274

/-! ## A162274.P10872732240982985323

`A161728(n)+A083882(n)`
-/

namespace A162274.P10872732240982985323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n + A083882 n

end

end A162274.P10872732240982985323

namespace A162274

/-- `A161728(n)+A083882(n)` -/
def P10872732240982985323.Spec : Prop :=
  ∀ n, P10872732240982985323.a n = A162274 n

end A162274

/-! ## A162274.P17169423705810546760

`A163470(n)-A083882(n)`
-/

namespace A162274.P17169423705810546760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163470 n - A083882 n

end

end A162274.P17169423705810546760

namespace A162274

/-- `A163470(n)-A083882(n)` -/
def P17169423705810546760.Spec : Prop :=
  ∀ n, P17169423705810546760.a n = A162274 n

end A162274

/-! ## A162274.P12449741723172104053

`A083882(n+1)-2*A083882(n)`
-/

namespace A162274.P12449741723172104053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083882 (n + 1) - 2 * A083882 n

end

end A162274.P12449741723172104053

namespace A162274

/-- `A083882(n+1)-2*A083882(n)` -/
def P12449741723172104053.Spec : Prop :=
  ∀ n, P12449741723172104053.a n = A162274 n

end A162274

/-!
# A162275: a(n) = 10*a(n-1) - 22*a(n-2) for n > 1; a(0) = 2, a(1) = 13.

The programs for A162275, the canonical program `A162275.P11378674586530654501` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162275 has offset 0).

The definition of A162275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-22*a(n-2)` (program `A162275.P11378674586530654501`, by `A162275.P11378674586530654501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162275.P2646401639555984419

`ogf((2-7x)/(1-10x+22x^2))`
-/

namespace A162275.P2646401639555984419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -10, 22] n

end

end A162275.P2646401639555984419

namespace A162275

/-- `ogf((2-7x)/(1-10x+22x^2))` -/
def P2646401639555984419.Spec : Prop :=
  ∀ n, P2646401639555984419.a n = A162275 n

end A162275

/-! ## A162275.P11378674586530654501

`10*a(n-1)-22*a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162275

/-- `10*a(n-1)-22*a(n-2)` -/
def P11378674586530654501.Spec : Prop :=
  ∀ n, P11378674586530654501.a n = A162275 n

theorem P11378674586530654501.correct : P11378674586530654501.Spec := by
  intro n
  simp only [A162275]

end A162275

/-! ## A162275.P14167961440548993915

`((2+sqrt(3))*(sqrt(3)+5)^n+(2-sqrt(3))*(5-sqrt(3))^n)/2`
-/

namespace A162275.P14167961440548993915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 5) ^ n + (2 - Real.sqrt (3 : ℝ)) * (5 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162275.P14167961440548993915

namespace A162275

/-- `((2+sqrt(3))*(sqrt(3)+5)^n+(2-sqrt(3))*(5-sqrt(3))^n)/2` -/
def P14167961440548993915.Spec : Prop :=
  ∀ n, P14167961440548993915.a n = (A162275 n : ℝ)

theorem P14167961440548993915.correct : P14167961440548993915.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162275, Nat.add_sub_cancel, A162275.P14167961440548993915.a, A162275.P11378674586530654501.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162275, Nat.add_sub_cancel, A162275.P14167961440548993915.a, A162275.P11378674586530654501.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162275

/-! ## A162275.P16891592041364857489

`∑{#}[n, C(n, #)*A162274(#)]`
-/

namespace A162275.P16891592041364857489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A162274 k

end

end A162275.P16891592041364857489

namespace A162275

/-- `∑{#}[n, C(n, #)*A162274(#)]` -/
def P16891592041364857489.Spec : Prop :=
  ∀ n, P16891592041364857489.a n = A162275 n

end A162275

/-! ## A162275.P9758236161463618660

`A162272(n)+A143647(n)`
-/

namespace A162275.P9758236161463618660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162272 n + A143647 n

end

end A162275.P9758236161463618660

namespace A162275

/-- `A162272(n)+A143647(n)` -/
def P9758236161463618660.Spec : Prop :=
  ∀ n, P9758236161463618660.a n = A162275 n

end A162275

/-! ## A162275.P9909018418352802090

`A163471(n)-A143647(n)`
-/

namespace A162275.P9909018418352802090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163471 n - A143647 n

end

end A162275.P9909018418352802090

namespace A162275

/-- `A163471(n)-A143647(n)` -/
def P9909018418352802090.Spec : Prop :=
  ∀ n, P9909018418352802090.a n = A162275 n

end A162275

/-! ## A162275.P2672336480189640358

`A162561(n)-2*A143647(n)`
-/

namespace A162275.P2672336480189640358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162561 n - 2 * A143647 n

end

end A162275.P2672336480189640358

namespace A162275

/-- `A162561(n)-2*A143647(n)` -/
def P2672336480189640358.Spec : Prop :=
  ∀ n, P2672336480189640358.a n = A162275 n

end A162275

/-! ## A162275.P3644831492266860019

`A163471(n)+A163471(n)-A162561(n)`
-/

namespace A162275.P3644831492266860019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163471 n + (A163471 n - A162561 n)

end

end A162275.P3644831492266860019

namespace A162275

/-- `A163471(n)+A163471(n)-A162561(n)` -/
def P3644831492266860019.Spec : Prop :=
  ∀ n, P3644831492266860019.a n = A162275 n

end A162275

/-! ## A162275.P15188506461806148537

`2*A163471(n)-A162561(n)`
-/

namespace A162275.P15188506461806148537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163471 n - A162561 n

end

end A162275.P15188506461806148537

namespace A162275

/-- `2*A163471(n)-A162561(n)` -/
def P15188506461806148537.Spec : Prop :=
  ∀ n, P15188506461806148537.a n = A162275 n

end A162275

/-! ## A162275.P3468661135603161841

`6*A162558(n)-A162561(n)`
-/

namespace A162275.P3468661135603161841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A162558 n - A162561 n

end

end A162275.P3468661135603161841

namespace A162275

/-- `6*A162558(n)-A162561(n)` -/
def P3468661135603161841.Spec : Prop :=
  ∀ n, P3468661135603161841.a n = A162275 n

end A162275

/-!
# A162276: a(n) = the smallest positive multiple of n such that, when n and a(n) are written in binary, each has a different number of 1's.

The programs for A162276, there is no canonical definition to state claims against.
-/

/-! ## A162276.P3086826714823841621

`(n+1)*A162277(n+1)`
-/

namespace A162276.P3086826714823841621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A162277 (n + 1)

end

end A162276.P3086826714823841621

/-! ## A162276.P8059865282606153678

`(gcd(A056803(n+1), A067080(n+1))+2)*(n+1)`
-/

namespace A162276.P8059865282606153678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A056803 (n + 1)) (A067080 (n + 1)) + 2) * (n + 1)

end

end A162276.P8059865282606153678

/-!
# A162277: a(n) = A162276(n)/n.

The programs for A162277, there is no canonical definition to state claims against.
-/

/-! ## A162277.P4048949932818391171

`A162276(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162277.P4048949932818391171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162276 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A162277.P4048949932818391171

/-!
# A162278: a(0)=1. For n >= 1, a(n) = the smallest prime either of the form a(n-1)*k - 1 or of the form a(n-1)*k + 1, for some k >= 2.

The programs for A162278, there is no canonical definition to state claims against.
-/

/-! ## A162278.P11327602106594418214

`A078331(2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A162278.P11327602106594418214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A078331 (2 * a (n - 1)).toNat

end

end A162278.P11327602106594418214

/-! ## A162278.P16283473686742570910

`A093868(2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A162278.P16283473686742570910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A093868 (2 * a (n - 1)).toNat

end

end A162278.P16283473686742570910

/-! ## A162278.P5632629313828293691

`A093868(A000010(a(n-1))+a(n-1)+1)` with `a(0)=1`
-/

namespace A162278.P5632629313828293691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093868 (A000010 (a (n - 1)).toNat + a (n - 1) + 1).toNat

end

end A162278.P5632629313828293691

/-! ## A162278.P12001347191325036387

`A096385(2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A162278.P12001347191325036387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A096385 (2 * a (n - 1)).toNat

end

end A162278.P12001347191325036387

/-! ## A162278.P17789110293161397549

`A194603(A329313(n)*a(n-1))` with `a(0)=1`
-/

namespace A162278.P17789110293161397549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194603 (A329313 n * a (n - 1)).toNat

end

end A162278.P17789110293161397549

/-!
# A162281: Values of sigma_0(n) for n in A162279.

The programs for A162281, there is no canonical definition to state claims against.
-/

/-! ## A162281.P6766347898146106435

`A000005(A162279(n+1))`
-/

namespace A162281.P6766347898146106435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162279 (n + 1)).toNat

end

end A162281.P6766347898146106435

/-! ## A162281.P17478332118841870280

`A000005(A162280(n+1))`
-/

namespace A162281.P17478332118841870280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162280 (n + 1)).toNat

end

end A162281.P17478332118841870280

/-! ## A162281.P770183576901907628

`A112329(4*A162279(n+1))`
-/

namespace A162281.P770183576901907628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A162279 (n + 1)).toNat

end

end A162281.P770183576901907628

/-! ## A162281.P17060250894800965552

`A112329(4*A162280(n+1))`
-/

namespace A162281.P17060250894800965552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A162280 (n + 1)).toNat

end

end A162281.P17060250894800965552

/-! ## A162281.P3437043601398299500

`∑{d}[A162279(n+1), A007423(#)]`
-/

namespace A162281.P3437043601398299500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007423 d

end

end A162281.P3437043601398299500

/-! ## A162281.P7110824338523619745

`∑{d}[A162280(n+1), A007423(#)]`
-/

namespace A162281.P7110824338523619745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007423 d

end

end A162281.P7110824338523619745

/-! ## A162281.P2882579141265402581

`∑{d}[A162279(n+1), A008835(#)]`
-/

namespace A162281.P2882579141265402581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008835 d

end

end A162281.P2882579141265402581

/-! ## A162281.P4720020648328208658

`A184395(A162280(2*n+1-n))`
-/

namespace A162281.P4720020648328208658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A162280 (2 * n + 1 - n)).toNat

end

end A162281.P4720020648328208658

/-! ## A162281.P16345954686264921192

`lcm(2, A000005(A162280(-xor(n, -1))))`
-/

namespace A162281.P16345954686264921192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000005 (A162280 (-Int.xor (n : ℤ) (-1)).toNat).toNat)

end

end A162281.P16345954686264921192

/-! ## A162281.P4234792596951535557

`∑{d}[A162279(n+1), val(A005117(#), 2)!]`
-/

namespace A162281.P4234792596951535557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (SequenceMachineLib.valuation (A005117 d).toNat 2)

end

end A162281.P4234792596951535557

/-!
# A162282: Values of sigma(n) for n in A162279.

The programs for A162282, there is no canonical definition to state claims against.
-/

/-! ## A162282.P16721303586673382404

`A000203(A162279(n+1))`
-/

namespace A162282.P16721303586673382404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A162279 (n + 1)).toNat

end

end A162282.P16721303586673382404

/-! ## A162282.P17683965820292249434

`A000203(A162280(n+1))`
-/

namespace A162282.P17683965820292249434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A162280 (n + 1)).toNat

end

end A162282.P17683965820292249434

/-! ## A162282.P929037699826305073

`∑{d}[A162279(n+1), #]`
-/

namespace A162282.P929037699826305073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162282.P929037699826305073

/-! ## A162282.P834570594868452101

`∑{d}[A162280(n+1), #]`
-/

namespace A162282.P834570594868452101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162282.P834570594868452101

/-! ## A162282.P9487393082869639207

`A074400(A162279(n+1))/A168361(2*n+5)`
-/

namespace A162282.P9487393082869639207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A162279 (n + 1)).toNat : ℚ) / (A168361 (2 * n + 5) : ℚ)

end

end A162282.P9487393082869639207

/-!
# A162283: Numbers n with the same value for sigma_0(n) and sigma(n) as some other number.

The programs for A162283, there is no canonical definition to state claims against.
-/

/-! ## A162283.P16321890600864403374

`∩[A207036(n+1), A388999(n+1)]`
-/

namespace A162283.P16321890600864403374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162283.P16321890600864403374

/-! ## A162283.P10409740915646609903

`A392774(A215366(n)%A040104(n+1))`
-/

namespace A162283.P10409740915646609903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392774 (Int.tmod (A215366 n) (A040104 (n + 1))).toNat

end

end A162283.P10409740915646609903

/-!
# A162285: Period 8, repeat: [1, -1, -1, 1, -1, 1, 1, -1].

The programs for A162285, the canonical program `A162285.P9511189611893514340` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162285 has offset 0).

The definition of A162285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162285.P9511189611893514340

`(-1)^(n+floor((n+2)/4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162285

/-- `(-1)^(n+floor((n+2)/4))` -/
def P9511189611893514340.Spec : Prop :=
  ∀ n, P9511189611893514340.a n = (A162285 n : ℚ)

end A162285

/-!
# A162286: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{d|n} A(n*x/d)^d/d]*x^n ).

The programs for A162286, there is no canonical definition to state claims against.
-/

/-! ## A162286.P10343922461776716866

`A181046(A148866(n))`
-/

namespace A162286.P10343922461776716866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A148866 n).toNat

end

end A162286.P10343922461776716866

/-! ## A162286.P2954928883288315662

`A275883(A351813(n))`
-/

namespace A162286.P2954928883288315662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275883 (A351813 n).toNat

end

end A162286.P2954928883288315662

/-!
# A162287: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum{d|n} A(2^d*n*x/d)^d/d]*x^n ).

The programs for A162287, there is no canonical definition to state claims against.
-/

/-! ## A162287.P16669475668319590224

`A050347(2^∑[n])`
-/

namespace A162287.P16669475668319590224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A162287.P16669475668319590224

/-!
# A162288: Number of reduced words of length n in the Weyl group D_11.

The programs for A162288, there is no canonical definition to state claims against.
-/

/-! ## A162288.P632792112657735808

`A161776(n)-A238530(n+1)%2`
-/

namespace A162288.P632792112657735808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161776 n - Int.tmod (A238530 (n + 1)) 2

end

end A162288.P632792112657735808

/-!
# A162289: a(n) = 1 if n is relatively prime to 30 else 0.

The programs for A162289, the canonical program `A162289.P10052786377731373576` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162289 has offset 1).

The definition of A162289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162289.P10052786377731373576

`round(acot(gcd(30, n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162289

/-- `round(acot(gcd(30, n+1)))` -/
def P10052786377731373576.Spec : Prop :=
  ∀ n, P10052786377731373576.a n = A162289 (n + 1)

theorem P10052786377731373576.correct : P10052786377731373576.Spec := by
  intro n
  simp only [A162289, Nat.add_sub_cancel]

end A162289

/-!
# A162290: Let A087788(n) = p*q*r, where p<q<r, be the n-th 3-Carmichael number. Then a(n) = (p-1)*(p*q*r-1)/((q-1)*(r-1)).

The programs for A162290, there is no canonical definition to state claims against.
-/

/-! ## A162290.P17306313724959170115

`A180044(A234474(n+1)%A048254(n+1))`
-/

namespace A162290.P17306313724959170115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180044 (Int.tmod (A234474 (n + 1)) (A048254 (n + 1))).toNat

end

end A162290.P17306313724959170115

/-! ## A162290.P4688708480801554635

`A180044(n+1)%A253056(A071600(n+1))`
-/

namespace A162290.P4688708480801554635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180044 (n + 1)) (A253056 (A071600 (n + 1)).toNat)

end

end A162290.P4688708480801554635

/-! ## A162290.P7082516910292052135

`A180044(A234474(n+1)^A354987(2*(n+1)))`
-/

namespace A162290.P7082516910292052135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180044 (SequenceMachineLib.roundAway ((A234474 (n + 1) : ℚ) ^ (A354987 (2 * (n + 1)) : ℤ))).toNat

end

end A162290.P7082516910292052135

/-! ## A162290.P7189793738004030441

`A180044(A234474(n+1))+A000007(A087442(3*n+1))`
-/

namespace A162290.P7189793738004030441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180044 (A234474 (n + 1)).toNat + A000007 (A087442 (3 * n + 1)).toNat

end

end A162290.P7189793738004030441

/-! ## A162290.P12211210075271398782

`A000027(A180044(n+1))`
-/

namespace A162290.P12211210075271398782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A180044 (n + 1)).toNat

end

end A162290.P12211210075271398782

/-!
# A162291: Primes of the form n^3-n^2-1.

The programs for A162291, there is no canonical definition to state claims against.
-/

/-! ## A162291.P11690011926511782640

`A087908(A162293(n+1))`
-/

namespace A162291.P11690011926511782640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (A162293 (n + 1)).toNat

end

end A162291.P11690011926511782640

/-! ## A162291.P13811021320635586695

`A045991(A162293(-xor(n, -1)))-1`
-/

namespace A162291.P13811021320635586695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A162293 (-Int.xor (n : ℤ) (-1)).toNat).toNat - 1

end

end A162291.P13811021320635586695

/-! ## A162291.P3884188699710979395

`A057428(n+1)+A045991(A162293(n+1))`
-/

namespace A162291.P3884188699710979395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A045991 (A162293 (n + 1)).toNat

end

end A162291.P3884188699710979395

/-! ## A162291.P13327465961773405660

`A045991(A162293(n+1))-A057427(n+2)`
-/

namespace A162291.P13327465961773405660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A162293 (n + 1)).toNat - A057427 (n + 2)

end

end A162291.P13327465961773405660

/-! ## A162291.P1627613121873152915

`A045991(A162293(n+1))-A054977(3*n+4)`
-/

namespace A162291.P1627613121873152915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A162293 (n + 1)).toNat - A054977 (3 * n + 4)

end

end A162291.P1627613121873152915

/-!
# A162292: Primes of the form k^3-k^2+1, k>0.

The programs for A162292, there is no canonical definition to state claims against.
-/

/-! ## A162292.P16912280479164001911

`A111501(n+1)^3-A111501(n+1)²+1`
-/

namespace A162292.P16912280479164001911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1) ^ 3 - A111501 (n + 1) ^ 2 + 1

end

end A162292.P16912280479164001911

/-! ## A162292.P7350888021240360201

`A111501(n+1)²*A154686(n+1)+1`
-/

namespace A162292.P7350888021240360201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1) ^ 2 * A154686 (n + 1) + 1

end

end A162292.P7350888021240360201

/-! ## A162292.P4668292577108098055

`A100104(A111501(n+1))`
-/

namespace A162292.P4668292577108098055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (A111501 (n + 1)).toNat

end

end A162292.P4668292577108098055

/-! ## A162292.P17108222647362750609

`A087908(A154686(n+1)+1)+2`
-/

namespace A162292.P17108222647362750609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (A154686 (n + 1) + 1).toNat + 2

end

end A162292.P17108222647362750609

/-! ## A162292.P12880749232623655284

`A045991(A111501(n+1))+A007318(C(2, n))`
-/

namespace A162292.P12880749232623655284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A111501 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A162292.P12880749232623655284

/-! ## A162292.P11207112869636281685

`A087908(A111501(n+1))+A000040(ceil(1/(n+1)))`
-/

namespace A162292.P11207112869636281685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (A111501 (n + 1)).toNat + A000040 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A162292.P11207112869636281685

/-! ## A162292.P13069027225315366887

`A087908(A111501(n+1))+A020639(A138929(n+1))`
-/

namespace A162292.P13069027225315366887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (A111501 (n + 1)).toNat + A020639 (A138929 (n + 1)).toNat

end

end A162292.P13069027225315366887

/-!
# A162293: Numbers k such that k^2*(k-1)-1 is prime.

The programs for A162293, there is no canonical definition to state claims against.
-/

/-! ## A162293.P3046605156348791181

`ceil(root(A162291(n+1), 3))`
-/

namespace A162293.P3046605156348791181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A162293.P3046605156348791181

/-! ## A162293.P2637305693120489448

`A000027(floor(root(A162291(n+1), 3))+1)`
-/

namespace A162293.P2637305693120489448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + 1).toNat

end

end A162293.P2637305693120489448

/-! ## A162293.P12779753020213186950

`round(root(A162291(n+1), 3))*A054977(n)`
-/

namespace A162293.P12779753020213186950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A054977 n

end

end A162293.P12779753020213186950

/-! ## A162293.P9764615989397868831

`floor(root(A162291(n+1), 3))+A033999(n)²`
-/

namespace A162293.P9764615989397868831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + A033999 n ^ 2

end

end A162293.P9764615989397868831

/-! ## A162293.P3192504684290362120

`A014963(10*(n+1))+floor(root(A162291(n+1), 3))`
-/

namespace A162293.P3192504684290362120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) + ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A162293.P3192504684290362120

/-! ## A162293.P921956561427997157

`A008619(2*floor(root(A162291(n+1), 3)))`
-/

namespace A162293.P921956561427997157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋).toNat

end

end A162293.P921956561427997157

/-! ## A162293.P8384843202947442465

`A028242(2*floor(root(A162291(n+1), 3)))`
-/

namespace A162293.P8384843202947442465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋).toNat

end

end A162293.P8384843202947442465

/-! ## A162293.P15825465213932703750

`A029579(2*floor(root(A162291(n+1), 3)))`
-/

namespace A162293.P15825465213932703750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋).toNat

end

end A162293.P15825465213932703750

/-! ## A162293.P459967717085725849

`A008611(3*floor(root(A162291(n+1), 3)))`
-/

namespace A162293.P459967717085725849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋).toNat

end

end A162293.P459967717085725849

/-! ## A162293.P13499263461745088865

`floor(root(A162291(n+1), 3))+A000265(n²+1)%4`
-/

namespace A162293.P13499263461745088865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162291 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + Int.tmod (A000265 (n ^ 2 + 1)) 4

end

end A162293.P13499263461745088865

/-!
# A162294: Numbers k such that k^3-k^2-k-1 is prime.

The programs for A162294, there is no canonical definition to state claims against.
-/

/-! ## A162294.P10527016790600393400

`ceil(root(A162295(n+1), 3))`
-/

namespace A162294.P10527016790600393400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A162294.P10527016790600393400

/-! ## A162294.P2735068561238222722

`A000027(round(root(A162295(n+1), 3)))`
-/

namespace A162294.P2735068561238222722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A162294.P2735068561238222722

/-! ## A162294.P16305579091752796088

`round(root(A162295(n+1), 3))%A002144(n+1)`
-/

namespace A162294.P16305579091752796088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A002144 (n + 1))

end

end A162294.P16305579091752796088

/-! ## A162294.P16669971780093910100

`A245092(round(root(A162295(n+1), 3)))`
-/

namespace A162294.P16669971780093910100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A162294.P16669971780093910100

/-! ## A162294.P10679879429720983811

`A004442(round(root(A162295(n+1), 3))+1)`
-/

namespace A162294.P10679879429720983811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) + 1).toNat

end

end A162294.P10679879429720983811

/-! ## A162294.P16370757668501902820

`A126120(2*n+1)+round(root(A162295(n+1), 3))`
-/

namespace A162294.P16370757668501902820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n + 1) + SequenceMachineLib.roundAway ((A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A162294.P16370757668501902820

/-! ## A162294.P3868503076702073049

`round(root(A162295(n+1), 3))*A133872((n+1)²)`
-/

namespace A162294.P3868503076702073049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162295 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A133872 ((n + 1) ^ 2)

end

end A162294.P3868503076702073049

/-!
# A162295: Primes of the form k^3-k^2-k-1.

The programs for A162295, there is no canonical definition to state claims against.
-/

/-! ## A162295.P17673771287303114461

`A083074(A162294(n+1))`
-/

namespace A162295.P17673771287303114461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 (A162294 (n + 1)).toNat

end

end A162295.P17673771287303114461

/-! ## A162295.P17309281519231925243

`A152015(A162294(n+1))+A008683(A020483(n))`
-/

namespace A162295.P17309281519231925243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A008683 (A020483 n).toNat

end

end A162295.P17309281519231925243

/-! ## A162295.P15937308710717109059

`A152015(A162294(n+1))+A008683(A056206(n))`
-/

namespace A162295.P15937308710717109059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A008683 (A056206 n).toNat

end

end A162295.P15937308710717109059

/-! ## A162295.P5667474275696665589

`A152015(A162294(n+1))+A057428(A291769(n))`
-/

namespace A162295.P5667474275696665589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A057428 (A291769 n).toNat

end

end A162295.P5667474275696665589

/-! ## A162295.P11569984997046106051

`A152015(A162294(n+1))+A008683(A005382(n+1))`
-/

namespace A162295.P11569984997046106051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A008683 (A005382 (n + 1)).toNat

end

end A162295.P11569984997046106051

/-! ## A162295.P6414497557060259353

`A152015(A162294(n+1))+A008683(A006512(n+1))`
-/

namespace A162295.P6414497557060259353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A008683 (A006512 (n + 1)).toNat

end

end A162295.P6414497557060259353

/-! ## A162295.P4654789321903411722

`2*A008683(A268614(n+1))+A152015(A162294(n+1))+1`
-/

namespace A162295.P4654789321903411722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (A268614 (n + 1)).toNat + (A152015 (A162294 (n + 1)).toNat + 1)

end

end A162295.P4654789321903411722

/-! ## A162295.P2728249855560742168

`A152015(A162294(n+1))+A008683(A139657(n+2))`
-/

namespace A162295.P2728249855560742168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A008683 (A139657 (n + 2)).toNat

end

end A162295.P2728249855560742168

/-! ## A162295.P9446703490029954988

`A152015(A162294(n+1))+A008683(A138755(n+1))`
-/

namespace A162295.P9446703490029954988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A162294 (n + 1)).toNat + A008683 (A138755 (n + 1)).toNat

end

end A162295.P9446703490029954988

/-!
# A162296: Sum of divisors of n that have a square factor.

The programs for A162296, the canonical program `A162296.P3792343839344082597` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162296 has offset 1).

The definition of A162296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162296.P3792343839344082597

`∑{d}[n+1, #]-∏{p}[1+n, #+1]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162296

/-- `∑{d}[n+1, #]-∏{p}[1+n, #+1]` -/
def P3792343839344082597.Spec : Prop :=
  ∀ n, P3792343839344082597.a n = A162296 (n + 1)

theorem P3792343839344082597.correct : P3792343839344082597.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel]

end A162296

/-! ## A162296.P5909415713200709273

`∑{d}[n+1, A105570(#)]`
-/

namespace A162296.P5909415713200709273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A105570 d

end

end A162296.P5909415713200709273

namespace A162296

/-- `∑{d}[n+1, A105570(#)]` -/
def P5909415713200709273.Spec : Prop :=
  ∀ n, P5909415713200709273.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P2047818323720585244

`1-A325314(n+1)+n`
-/

namespace A162296.P2047818323720585244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325314 (n + 1) + (n : ℤ)

end

end A162296.P2047818323720585244

namespace A162296

/-- `1-A325314(n+1)+n` -/
def P2047818323720585244.Spec : Prop :=
  ∀ n, P2047818323720585244.a n = A162296 (n + 1)

theorem P2047818323720585244.correct : P2047818323720585244.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P2047818323720585244.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A325314, A325314.P1683321656325189174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P8354703229771862975

`∑{d}[n+1, #*A107078(#)]`
-/

namespace A162296.P8354703229771862975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A107078 d

end

end A162296.P8354703229771862975

namespace A162296

/-- `∑{d}[n+1, #*A107078(#)]` -/
def P8354703229771862975.Spec : Prop :=
  ∀ n, P8354703229771862975.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P5898279103957908175

`∑{d}[n+1, #]-A048250(n+1)`
-/

namespace A162296.P5898279103957908175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A048250 (n + 1)

end

end A162296.P5898279103957908175

namespace A162296

/-- `∑{d}[n+1, #]-A048250(n+1)` -/
def P5898279103957908175.Spec : Prop :=
  ∀ n, P5898279103957908175.a n = A162296 (n + 1)

theorem P5898279103957908175.correct : P5898279103957908175.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P5898279103957908175.f1, A162296.P5898279103957908175.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P16298576737760688935

`∑{d}[n+1, #]-A001615(∏{p}[n+1, #])`
-/

namespace A162296.P16298576737760688935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A001615 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A162296.P16298576737760688935

namespace A162296

/-- `∑{d}[n+1, #]-A001615(∏{p}[n+1, #])` -/
def P16298576737760688935.Spec : Prop :=
  ∀ n, P16298576737760688935.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P13486457170150004489

`∑{d}[n+1, #]-A092261(∏{p}[n+1, #])`
-/

namespace A162296.P13486457170150004489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A092261 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A162296.P13486457170150004489

namespace A162296

/-- `∑{d}[n+1, #]-A092261(∏{p}[n+1, #])` -/
def P13486457170150004489.Spec : Prop :=
  ∀ n, P13486457170150004489.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P12884950813990035984

`∑{d}[n+1, #]-A344695(∏{p}[n+1, #])`
-/

namespace A162296.P12884950813990035984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A344695 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A162296.P12884950813990035984

namespace A162296

/-- `∑{d}[n+1, #]-A344695(∏{p}[n+1, #])` -/
def P12884950813990035984.Spec : Prop :=
  ∀ n, P12884950813990035984.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P3022727218456987783

`A389162(n+1)+A048146(n+1)`
-/

namespace A162296.P3022727218456987783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389162 (n + 1) + A048146 (n + 1)

end

end A162296.P3022727218456987783

namespace A162296

/-- `A389162(n+1)+A048146(n+1)` -/
def P3022727218456987783.Spec : Prop :=
  ∀ n, P3022727218456987783.a n = A162296 (n + 1)

theorem P3022727218456987783.correct : P3022727218456987783.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P3022727218456987783.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A048146, A048146.P9985884013456677192.a, A389162, A389162.P5482749429256733056.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P11084755280646361562

`A000203(n+1)-A048250(n+1)`
-/

namespace A162296.P11084755280646361562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048250 (n + 1)

end

end A162296.P11084755280646361562

namespace A162296

/-- `A000203(n+1)-A048250(n+1)` -/
def P11084755280646361562.Spec : Prop :=
  ∀ n, P11084755280646361562.a n = A162296 (n + 1)

theorem P11084755280646361562.correct : P11084755280646361562.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P11084755280646361562.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P15888354208995458981

`A023890(n+1)-A284118(n+1)`
-/

namespace A162296.P15888354208995458981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A284118 (n + 1)

end

end A162296.P15888354208995458981

namespace A162296

/-- `A023890(n+1)-A284118(n+1)` -/
def P15888354208995458981.Spec : Prop :=
  ∀ n, P15888354208995458981.a n = A162296 (n + 1)

theorem P15888354208995458981.correct : P15888354208995458981.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P15888354208995458981.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A023890, A023890.P4514850295399263827.a, A284118, A284118.P3814757859129945566.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P865907131647231544

`A001065(n+1)-A325313(n+1)`
-/

namespace A162296.P865907131647231544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325313 (n + 1)

end

end A162296.P865907131647231544

namespace A162296

/-- `A001065(n+1)-A325313(n+1)` -/
def P865907131647231544.Spec : Prop :=
  ∀ n, P865907131647231544.a n = A162296 (n + 1)

theorem P865907131647231544.correct : P865907131647231544.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P865907131647231544.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A001065, A001065.P4097147489331274860.a, A325313, A325313.P16190563631669618661.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P16728352044332150173

`A034448(n+1)-A389204(n+1)`
-/

namespace A162296.P16728352044332150173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A389204 (n + 1)

end

end A162296.P16728352044332150173

namespace A162296

/-- `A034448(n+1)-A389204(n+1)` -/
def P16728352044332150173.Spec : Prop :=
  ∀ n, P16728352044332150173.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P2327949355231452001

`A048250(n+1)-A388994(n+1)`
-/

namespace A162296.P2327949355231452001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A388994 (n + 1)

end

end A162296.P2327949355231452001

namespace A162296

/-- `A048250(n+1)-A388994(n+1)` -/
def P2327949355231452001.Spec : Prop :=
  ∀ n, P2327949355231452001.a n = A162296 (n + 1)

theorem P2327949355231452001.correct : P2327949355231452001.Spec := by
  intro n
  simp only [A162296, Nat.add_sub_cancel, A162296.P2327949355231452001.a, A162296.P3792343839344082597.f1, A162296.P3792343839344082597.f2, A162296.P3792343839344082597.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A388994, A388994.P3930905186296382464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162296

/-! ## A162296.P10842985867148485011

`xor(A048250(n+1), A325317(n+1))`
-/

namespace A162296.P10842985867148485011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048250 (n + 1)) (A325317 (n + 1))

end

end A162296.P10842985867148485011

namespace A162296

/-- `xor(A048250(n+1), A325317(n+1))` -/
def P10842985867148485011.Spec : Prop :=
  ∀ n, P10842985867148485011.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P10744358039272058841

`2*A325974(n+1)-A048146(n+1)`
-/

namespace A162296.P10744358039272058841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325974 (n + 1) - A048146 (n + 1)

end

end A162296.P10744358039272058841

namespace A162296

/-- `2*A325974(n+1)-A048146(n+1)` -/
def P10744358039272058841.Spec : Prop :=
  ∀ n, P10744358039272058841.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P10358909433194351256

`A000203(n+1)-∑{d}[A007947(n+1), #]`
-/

namespace A162296.P10358909433194351256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A162296.P10358909433194351256

namespace A162296

/-- `A000203(n+1)-∑{d}[A007947(n+1), #]` -/
def P10358909433194351256.Spec : Prop :=
  ∀ n, P10358909433194351256.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P3506029944769852473

`A000203(n+1)-A000203(∏{p}[n+1, #])`
-/

namespace A162296.P3506029944769852473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A162296.P3506029944769852473

namespace A162296

/-- `A000203(n+1)-A000203(∏{p}[n+1, #])` -/
def P3506029944769852473.Spec : Prop :=
  ∀ n, P3506029944769852473.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P17981756911289108133

`A088580(n+1)-A088580(∏{p}[n+1, #])`
-/

namespace A162296.P17981756911289108133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A088580 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A162296.P17981756911289108133

namespace A162296

/-- `A088580(n+1)-A088580(∏{p}[n+1, #])` -/
def P17981756911289108133.Spec : Prop :=
  ∀ n, P17981756911289108133.a n = A162296 (n + 1)

end A162296

/-! ## A162296.P17974469256296018274

`A000203(n+1)-A000203(A007947(n+1))`
-/

namespace A162296.P17974469256296018274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A007947 (n + 1)).toNat

end

end A162296.P17974469256296018274

namespace A162296

/-- `A000203(n+1)-A000203(A007947(n+1))` -/
def P17974469256296018274.Spec : Prop :=
  ∀ n, P17974469256296018274.a n = A162296 (n + 1)

end A162296

/-!
# A162297: Number of reduced words of length n in the Weyl group D_12.

The programs for A162297, there is no canonical definition to state claims against.
-/

/-! ## A162297.P7139353310425712299

`Δ[A161859(n)-Δ[A185284(A165249(n+1))]-A161858(n)]`
-/

namespace A162297.P7139353310425712299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A165249 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161859 n - (f2 (n + 1) - f2 n) - A161858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162297.P7139353310425712299

/-!
# A162298: Faulhaber's triangle: triangle T(k,y) read by rows, giving numerator of the coefficient [m^y] of the polynomial Sum_{x=1..m} x^(k-1).

The programs for A162298, there is no canonical definition to state claims against.
-/

/-! ## A162298.P367763799582011421

`A220962(comp[∑[n-1]])`
-/

namespace A162298.P367763799582011421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220962 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162298.P367763799582011421

/-! ## A162298.P13764856910366515907

`A220962(A007401(n+1))%8`
-/

namespace A162298.P13764856910366515907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220962 (A007401 (n + 1)).toNat) 8

end

end A162298.P13764856910366515907

/-! ## A162298.P3641217274431360991

`A220962(A007401(n+1))+A000007(n+3)`
-/

namespace A162298.P3641217274431360991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220962 (A007401 (n + 1)).toNat + A000007 (n + 3)

end

end A162298.P3641217274431360991

/-! ## A162298.P8469481810215677157

`A220962(A007401(n+1))^A014963(n+2)`
-/

namespace A162298.P8469481810215677157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220962 (A007401 (n + 1)).toNat : ℚ) ^ (A014963 (n + 2) : ℤ)

end

end A162298.P8469481810215677157

/-! ## A162298.P11160660926566830452

`A007318(C(2, n))*A220962(A007401(n+1))`
-/

namespace A162298.P11160660926566830452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A220962 (A007401 (n + 1)).toNat

end

end A162298.P11160660926566830452

/-! ## A162298.P15612711444408786253

`A220962(A007401(n+1))+A008683(4*(n+1))`
-/

namespace A162298.P15612711444408786253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220962 (A007401 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A162298.P15612711444408786253

/-! ## A162298.P3204204649569430700

`A014963(6*(n+1))*A220962(A007401(n+1))`
-/

namespace A162298.P3204204649569430700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A220962 (A007401 (n + 1)).toNat

end

end A162298.P3204204649569430700

/-! ## A162298.P4201140448218226514

`A007318(val(n+1, 2))*A220962(A007401(n+1))`
-/

namespace A162298.P4201140448218226514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 2) * A220962 (A007401 (n + 1)).toNat

end

end A162298.P4201140448218226514

/-! ## A162298.P16143902487782556610

`A220962(A007401(n+1))^and(1, A000040(n+1))`
-/

namespace A162298.P16143902487782556610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220962 (A007401 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A162298.P16143902487782556610

/-!
# A162299: Faulhaber's triangle: triangle T(k,y) read by rows, giving denominator of the coefficient [m^y] of the polynomial Sum_{x=1..m} x^(k-1).

The programs for A162299, there is no canonical definition to state claims against.
-/

/-! ## A162299.P6900011321298760394

`A220963(comp[∑[n-1]])`
-/

namespace A162299.P6900011321298760394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220963 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162299.P6900011321298760394

/-! ## A162299.P13536515856418586651

`A220963(A007401(n+1))%90`
-/

namespace A162299.P13536515856418586651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220963 (A007401 (n + 1)).toNat) 90

end

end A162299.P13536515856418586651

/-! ## A162299.P16802560542926600189

`A220963(A007401(n+1))+A000007(n+1)`
-/

namespace A162299.P16802560542926600189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220963 (A007401 (n + 1)).toNat + A000007 (n + 1)

end

end A162299.P16802560542926600189

/-! ## A162299.P9008740969074814056

`A220963(A007401(n+1))+A008683(4*(n+1))`
-/

namespace A162299.P9008740969074814056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220963 (A007401 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A162299.P9008740969074814056

/-! ## A162299.P13820950482277965269

`A014963(6*(n+2))*A220963(A007401(n+1))`
-/

namespace A162299.P13820950482277965269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A220963 (A007401 (n + 1)).toNat

end

end A162299.P13820950482277965269

/-! ## A162299.P7590201502101958511

`A007318(C(2, n+1))*A220963(A007401(n+1))`
-/

namespace A162299.P7590201502101958511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A220963 (A007401 (n + 1)).toNat

end

end A162299.P7590201502101958511

/-! ## A162299.P10314944559921465771

`A020639(gcd(n, n+1))*A220963(A007401(n+1))`
-/

namespace A162299.P10314944559921465771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A220963 (A007401 (n + 1)).toNat

end

end A162299.P10314944559921465771

