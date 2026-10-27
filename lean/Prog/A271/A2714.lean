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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A271400: Number of nXnXn triangular 0..1 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all equal.

The programs for A271400, there is no canonical definition to state claims against.
-/

/-! ## A271400.P4643634236611737969

`A271407(∑[n+1])`
-/

namespace A271400.P4643634236611737969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271400.P4643634236611737969

/-! ## A271400.P3592406910601238316

`lcm(2, A271407(Δ[A000292(n)]))`
-/

namespace A271400.P3592406910601238316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271407 (f1 (n + 1) - f1 n).toNat)

end

end A271400.P3592406910601238316

/-! ## A271400.P4004421913241139080

`A271407(A000217(n+1))*A284620(2*(n+2))`
-/

namespace A271400.P4004421913241139080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (A000217 (n + 1)).toNat * A284620 (2 * (n + 2))

end

end A271400.P4004421913241139080

/-! ## A271400.P6111020041714289814

`A271407(A000217(n+1))+A186683(2*n+5)`
-/

namespace A271400.P6111020041714289814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (A000217 (n + 1)).toNat + A186683 (2 * n + 5)

end

end A271400.P6111020041714289814

/-! ## A271400.P14009483912365918249

`A271407(A000217(n+1))%A258830(2*(n+1))`
-/

namespace A271400.P14009483912365918249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271407 (A000217 (n + 1)).toNat) (A258830 (2 * (n + 1)))

end

end A271400.P14009483912365918249

/-!
# A271401: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all equal.

The programs for A271401, there is no canonical definition to state claims against.
-/

/-! ## A271401.P6484974942474014067

`A271407(∑[n+2])`
-/

namespace A271401.P6484974942474014067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271401.P6484974942474014067

/-! ## A271401.P17330092129193261934

`A271407(A000096(n+1))%A349067(n)`
-/

namespace A271401.P17330092129193261934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271407 (A000096 (n + 1)).toNat) (A349067 n)

end

end A271401.P17330092129193261934

/-!
# A271402: Number of nXnXn triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all equal.

The programs for A271402, there is no canonical definition to state claims against.
-/

/-! ## A271402.P8716132999745415201

`A271407(∑[n+3]+1)`
-/

namespace A271402.P8716132999745415201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271402.P8716132999745415201

/-!
# A271403: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all equal.

The programs for A271403, there is no canonical definition to state claims against.
-/

/-! ## A271403.P8092462993604217770

`A271407(A141214(n+1))`
-/

namespace A271403.P8092462993604217770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (A141214 (n + 1)).toNat

end

end A271403.P8092462993604217770

/-!
# A271404: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all equal.

The programs for A271404, there is no canonical definition to state claims against.
-/

/-! ## A271404.P11121999518205251139

`A271407(Δ[A023545(n+1)])`
-/

namespace A271404.P11121999518205251139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (f1 (n + 1) - f1 n).toNat

end

end A271404.P11121999518205251139

/-!
# A271405: Number of nXnXn triangular 0..6 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all equal.

The programs for A271405, there is no canonical definition to state claims against.
-/

/-! ## A271405.P8940622859732207395

`A271407(Δ[Δ[A006504(n+1)]])`
-/

namespace A271405.P8940622859732207395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (f1 (n + 1) - f1 n).toNat

end

end A271405.P8940622859732207395

/-! ## A271405.P17824282341222916424

`A271407(Δ[A023545(n+2)]-1)`
-/

namespace A271405.P17824282341222916424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271407 (f1 (n + 1) - f1 n - 1).toNat

end

end A271405.P17824282341222916424

/-!
# A271408: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A271408, there is no canonical definition to state claims against.
-/

/-! ## A271408.P10211523213901641848

`Δ[A271397(n)]`
-/

namespace A271408.P10211523213901641848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271408.P10211523213901641848

/-! ## A271408.P623200052889713519

`A271397(n+1)-A271397(n)`
-/

namespace A271408.P623200052889713519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 (n + 1) - A271397 n

end

end A271408.P623200052889713519

/-!
# A271409: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A271409, there is no canonical definition to state claims against.
-/

/-! ## A271409.P6633436525196322441

`A271413(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271409.P6633436525196322441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271413 (n - 1) + a (n - 1)

end

end A271409.P6633436525196322441

/-! ## A271409.P4538309218380867717

`Δ[A271412(n)]-A271413(n)`
-/

namespace A271409.P4538309218380867717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271413 n

end

end A271409.P4538309218380867717

/-! ## A271409.P4388100386295062517

`A271412(n+1)-(A271413(n)+A271412(n))`
-/

namespace A271409.P4388100386295062517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271412 (n + 1) - (A271413 n + A271412 n)

end

end A271409.P4388100386295062517

/-! ## A271409.P9413764206128543208

`A016754(n+1)-A273241(n+1)`
-/

namespace A271409.P9413764206128543208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A273241 (n + 1)

end

end A271409.P9413764206128543208

/-! ## A271409.P12681194180229926532

`A005408(n+1)²-A273241(n+1)`
-/

namespace A271409.P12681194180229926532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) ^ 2 - A273241 (n + 1)

end

end A271409.P12681194180229926532

/-! ## A271409.P2914449426582606802

`A016754(n+1)-Δ[A273243(n)]`
-/

namespace A271409.P2914449426582606802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f1 (n + 1) - f1 n)

end

end A271409.P2914449426582606802

/-! ## A271409.P524261844630323921

`A004273(n+2)²-Δ[A273243(n)]`
-/

namespace A271409.P524261844630323921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2) ^ 2 - (f1 (n + 1) - f1 n)

end

end A271409.P524261844630323921

/-! ## A271409.P13476016851855485645

`Δ[A000292(2*n+1)-A273243(n)]`
-/

namespace A271409.P13476016851855485645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) - A273243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271409.P13476016851855485645

/-! ## A271409.P10748418948651842392

`∑[A004771(n)+1-A273244(n)]`
-/

namespace A271409.P10748418948651842392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A273244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271409.P10748418948651842392

/-! ## A271409.P8733168289708592484

`∑[A008590(n+1)-A273244(n)]`
-/

namespace A271409.P8733168289708592484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) - A273244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271409.P8733168289708592484

/-! ## A271409.P10512472251952105463

`A004768(A000096(n))-Δ[A273243(n)]`
-/

namespace A271409.P10512472251952105463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (A000096 n).toNat - (f1 (n + 1) - f1 n)

end

end A271409.P10512472251952105463

/-!
# A271410: LCM of exponents in binary expansion of 2n.

The programs for A271410, the canonical program `A271410.P2034698396170665635` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271410 has offset 0).

The definition of A271410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271410.P2034698396170665635

`lcm(a(and(n, n-1)), A001511(n))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A271410

/-- `lcm(a(and(n, n-1)), A001511(n))` -/
def P2034698396170665635.Spec : Prop :=
  ∀ n, (P2034698396170665635.a n : ℤ) = A271410 n

theorem P2034698396170665635.correct : P2034698396170665635.Spec := by
  intro n
  simp only [A271410]

end A271410

/-! ## A271410.P284453802707241353

`lcm(-a(and(n, n-1)), A116417(n))` with `a(0)=1, a(1)=1`
-/

namespace A271410.P284453802707241353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (-(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)) (A116417 n)

end

end A271410.P284453802707241353

namespace A271410

/-- `lcm(-a(and(n, n-1)), A116417(n))` -/
def P284453802707241353.Spec : Prop :=
  ∀ n, (P284453802707241353.a n : ℤ) = A271410 n

end A271410

/-! ## A271410.P5940386831478937762

`lcm(a(A053645(n)), A029837(n+1))` with `a(0)=1`
-/

namespace A271410.P5940386831478937762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A053645 n).toNat : ℤ) (A029837 (n + 1))

end

end A271410.P5940386831478937762

namespace A271410

/-- `lcm(a(A053645(n)), A029837(n+1))` -/
def P5940386831478937762.Spec : Prop :=
  ∀ n, (P5940386831478937762.a n : ℤ) = A271410 n

end A271410

/-! ## A271410.P1848518025116886776

`lcm(a(A266539(n+1)), A070939(n))` with `a(0)=1`
-/

namespace A271410.P1848518025116886776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A266539 (n + 1)).toNat : ℤ) (A070939 n)

end

end A271410.P1848518025116886776

namespace A271410

/-- `lcm(a(A266539(n+1)), A070939(n))` -/
def P1848518025116886776.Spec : Prop :=
  ∀ n, (P1848518025116886776.a n : ℤ) = A271410 n

end A271410

/-! ## A271410.P3001992846830119577

`A316431(lcm(2, A019565(n)))`
-/

namespace A271410.P3001992846830119577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Int.lcm 2 (A019565 n))

end

end A271410.P3001992846830119577

namespace A271410

/-- `A316431(lcm(2, A019565(n)))` -/
def P3001992846830119577.Spec : Prop :=
  ∀ n, P3001992846830119577.a n = A271410 n

end A271410

/-! ## A271410.P12840054088314773240

`A316431(A019565(or(1, n)))`
-/

namespace A271410.P12840054088314773240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A019565 (Nat.lor 1 n)).toNat

end

end A271410.P12840054088314773240

namespace A271410

/-- `A316431(A019565(or(1, n)))` -/
def P12840054088314773240.Spec : Prop :=
  ∀ n, P12840054088314773240.a n = A271410 n

end A271410

/-! ## A271410.P7473438399113098982

`A329378(A057335(n))`
-/

namespace A271410.P7473438399113098982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A057335 n).toNat

end

end A271410.P7473438399113098982

namespace A271410

/-- `A329378(A057335(n))` -/
def P7473438399113098982.Spec : Prop :=
  ∀ n, P7473438399113098982.a n = A271410 n

end A271410

/-! ## A271410.P10242721433821141183

`A316431(2*A019565(n))`
-/

namespace A271410.P10242721433821141183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A019565 n).toNat

end

end A271410.P10242721433821141183

namespace A271410

/-- `A316431(2*A019565(n))` -/
def P10242721433821141183.Spec : Prop :=
  ∀ n, P10242721433821141183.a n = A271410 n

end A271410

/-! ## A271410.P7479086007955726685

`A343504(A276091(n))`
-/

namespace A271410.P7479086007955726685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343504 (A276091 n).toNat

end

end A271410.P7479086007955726685

namespace A271410

/-- `A343504(A276091(n))` -/
def P7479086007955726685.Spec : Prop :=
  ∀ n, P7479086007955726685.a n = A271410 n

end A271410

/-! ## A271410.P14241215928206407785

`A343504(A059590(2*n)-A059590(n))`
-/

namespace A271410.P14241215928206407785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343504 (A059590 (2 * n) - A059590 n).toNat

end

end A271410.P14241215928206407785

namespace A271410

/-- `A343504(A059590(2*n)-A059590(n))` -/
def P14241215928206407785.Spec : Prop :=
  ∀ n, P14241215928206407785.a n = A271410 n

end A271410

/-!
# A271411: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A271411, there is no canonical definition to state claims against.
-/

/-! ## A271411.P14842389604835767815

`A271409(2^n-1)`
-/

namespace A271411.P14842389604835767815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271409 (2 ^ n - 1)

end

end A271411.P14842389604835767815

/-! ## A271411.P8823986379394903439

`record[A271409(A322994(n+1))]`
-/

namespace A271411.P8823986379394903439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271409 (A322994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271411.P8823986379394903439

/-! ## A271411.P7600525734784527424

`record[A271409(A336551(n+1))]`
-/

namespace A271411.P7600525734784527424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271409 (A336551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271411.P7600525734784527424

/-! ## A271411.P1487715942352834754

`record[A036987(n)*A271409(n)]`
-/

namespace A271411.P1487715942352834754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A271409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271411.P1487715942352834754

/-! ## A271411.P15592213383115699259

`record[gcd(A023416(n), A271409(n))]`
-/

namespace A271411.P15592213383115699259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023416 n) (A271409 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271411.P15592213383115699259

/-!
# A271412: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A271412, there is no canonical definition to state claims against.
-/

/-! ## A271412.P7667545407790087938

`∑[A271409(n)]`
-/

namespace A271412.P7667545407790087938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271412.P7667545407790087938

/-! ## A271412.P6177967108619417576

`A271409(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A271412.P6177967108619417576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271409 (A004526 (2 * n)).toNat + a (n - 1)

end

end A271412.P6177967108619417576

/-! ## A271412.P5275932194719883774

`∑[(2*n+3)²-A273241(n+1)]`
-/

namespace A271412.P5275932194719883774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271412.P5275932194719883774

/-! ## A271412.P4722483596431397237

`A000292(A005408(n+1))-A273243(n+1)`
-/

namespace A271412.P4722483596431397237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A005408 (n + 1)).toNat - A273243 (n + 1)

end

end A271412.P4722483596431397237

/-! ## A271412.P17226363497422258510

`∑[∑[A004771(n)+1-A273244(n)]]`
-/

namespace A271412.P17226363497422258510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A273244 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271412.P17226363497422258510

/-! ## A271412.P4505376729468664338

`∑[∑[A008590(n+1)-A273244(n)]]`
-/

namespace A271412.P4505376729468664338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) - A273244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271412.P4505376729468664338

/-! ## A271412.P8802066239387158954

`A271409(gcd(n, A053635(n)))+a(n-1)` with `a(0)=1`
-/

namespace A271412.P8802066239387158954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271409 (Int.gcd (n : ℤ) (A053635 n)) + a (n - 1)

end

end A271412.P8802066239387158954

/-!
# A271413: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A271413, there is no canonical definition to state claims against.
-/

/-! ## A271413.P10198155209258093716

`Δ[A271409(n)]`
-/

namespace A271413.P10198155209258093716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271413.P10198155209258093716

/-! ## A271413.P6780022520518664247

`A271409(n+1)-A271409(n)`
-/

namespace A271413.P6780022520518664247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271409 (n + 1) - A271409 n

end

end A271413.P6780022520518664247

/-! ## A271413.P17724256491230853525

`Δ[(2*n+3)²-A273241(n+1)]`
-/

namespace A271413.P17724256491230853525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271413.P17724256491230853525

/-! ## A271413.P2141970156411011289

`8*(n+2)-A273244(n+1)`
-/

namespace A271413.P2141970156411011289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273244 (n + 1)

end

end A271413.P2141970156411011289

/-! ## A271413.P14888478849453110348

`A004771(n+1)+1-A273244(n+1)`
-/

namespace A271413.P14888478849453110348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A273244 (n + 1))

end

end A271413.P14888478849453110348

/-! ## A271413.P6657484495582572574

`Δ[a(n-1)+A008590(n+1)-A273244(n)]` with `a(0)=1`
-/

namespace A271413.P6657484495582572574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A008590 (n + 1) - A273244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271413.P6657484495582572574

/-!
# A271414: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A271414, there is no canonical definition to state claims against.
-/

/-! ## A271414.P14882201846520518057

`A271417(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271414.P14882201846520518057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271417 (n - 1) + a (n - 1)

end

end A271414.P14882201846520518057

/-! ## A271414.P2795924173192462887

`Δ[A271416(n)]-A271417(n)`
-/

namespace A271414.P2795924173192462887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271417 n

end

end A271414.P2795924173192462887

/-! ## A271414.P10707343315018392038

`A173294(n)-A272049(n+1)+2`
-/

namespace A271414.P10707343315018392038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173294 n - A272049 (n + 1) + 2

end

end A271414.P10707343315018392038

/-! ## A271414.P15032143832161310513

`A168269(n+1)²-A272049(n+1)`
-/

namespace A271414.P15032143832161310513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A272049 (n + 1)

end

end A271414.P15032143832161310513

/-! ## A271414.P15696036420370340322

`A271416(n+1)-(A271417(n)+A271416(n))`
-/

namespace A271414.P15696036420370340322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271416 (n + 1) - (A271417 n + A271416 n)

end

end A271414.P15696036420370340322

/-!
# A271415: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A271415, there is no canonical definition to state claims against.
-/

/-! ## A271415.P3763773244169909826

`A271414(2^n-1)`
-/

namespace A271415.P3763773244169909826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 (2 ^ n - 1)

end

end A271415.P3763773244169909826

/-! ## A271415.P8298373436149489997

`record[A271414(A173787(n))]`
-/

namespace A271415.P8298373436149489997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271415.P8298373436149489997

/-! ## A271415.P15033288536960455447

`record[A271414(A255067(n))]`
-/

namespace A271415.P15033288536960455447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271415.P15033288536960455447

/-! ## A271415.P3771908296529119512

`record[A271414(A286556(n+1))]`
-/

namespace A271415.P3771908296529119512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 (A286556 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271415.P3771908296529119512

/-! ## A271415.P1315408444610916345

`record[gcd(A035327(n), A271414(n))]`
-/

namespace A271415.P1315408444610916345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A271414 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271415.P1315408444610916345

/-!
# A271416: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A271416, there is no canonical definition to state claims against.
-/

/-! ## A271416.P14830318968119287220

`∑[A173294(n)-A272049(n+1)+2]`
-/

namespace A271416.P14830318968119287220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173294 n - A272049 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271416.P14830318968119287220

/-! ## A271416.P3502391724163148158

`∑[A168269(n+1)²-A272049(n+1)]`
-/

namespace A271416.P3502391724163148158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A272049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271416.P3502391724163148158

/-! ## A271416.P15254912253054088345

`∑[A271417(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271416.P15254912253054088345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271417 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271416.P15254912253054088345

/-! ## A271416.P12544684961874027593

`∑[A271414(n)]`
-/

namespace A271416.P12544684961874027593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271416.P12544684961874027593

/-! ## A271416.P8449398647728395828

`a(n-1)+A271414(n)+A000038(n)` with `a(0)=1`
-/

namespace A271416.P8449398647728395828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271414 n + A000038 n)

end

end A271416.P8449398647728395828

/-! ## A271416.P5934698181140057221

`A271414(n%A005384(n))+a(n-1)` with `a(0)=1`
-/

namespace A271416.P5934698181140057221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271414 (Int.tmod (n : ℤ) (A005384 n)).toNat + a (n - 1)

end

end A271416.P5934698181140057221

/-! ## A271416.P8239424390319421264

`a(n-1)+lcm(A000034(n)², A271414(n))` with `a(0)=1`
-/

namespace A271416.P8239424390319421264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A000034 n ^ 2) (A271414 n)

end

end A271416.P8239424390319421264

/-! ## A271416.P5914629020156898383

`A271414(n)+a(n-1)%A103529(n+2)` with `a(0)=1`
-/

namespace A271416.P5914629020156898383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271414 n + Int.tmod (a (n - 1)) (A103529 (n + 2))

end

end A271416.P5914629020156898383

/-!
# A271417: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A271417, there is no canonical definition to state claims against.
-/

/-! ## A271417.P8886369060546085282

`Δ[A173294(n)-A272049(n+1)]`
-/

namespace A271417.P8886369060546085282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173294 n - A272049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271417.P8886369060546085282

/-! ## A271417.P1154503510871625340

`Δ[A168269(n+1)²-A272049(n+1)]`
-/

namespace A271417.P1154503510871625340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A272049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271417.P1154503510871625340

/-! ## A271417.P11809102589154526849

`A168269(n+2)²-(A272049(n+2)+A173294(n)-A272049(n+1)+2)`
-/

namespace A271417.P11809102589154526849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 2) ^ 2 - (A272049 (n + 2) + (A173294 n - A272049 (n + 1) + 2))

end

end A271417.P11809102589154526849

/-! ## A271417.P9565723562671655028

`Δ[A271414(n)]`
-/

namespace A271417.P9565723562671655028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271417.P9565723562671655028

/-! ## A271417.P13644412413121790033

`A271414(n+1)-A271414(n)`
-/

namespace A271417.P13644412413121790033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 (n + 1) - A271414 n

end

end A271417.P13644412413121790033

/-!
# A271418: Define a sequence by b(1) = n, b(m) = b(m-1) + b(m-1)/A052126(m) + 1; then a(n) is the least m such that b(m) belongs to A270807.

The programs for A271418, there is no canonical definition to state claims against.
-/

/-! ## A271418.P10396088931344098817

`A051064(A213970(n+1))+A000035(n)`
-/

namespace A271418.P10396088931344098817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A213970 (n + 1)).toNat + A000035 n

end

end A271418.P10396088931344098817

/-! ## A271418.P9709267682551989771

`or(A010052(n+3), A090822(A297174(n+5)))`
-/

namespace A271418.P9709267682551989771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (n + 3)) (A090822 (A297174 (n + 5)).toNat)

end

end A271418.P9709267682551989771

/-! ## A271418.P17049148439782834540

`A001221(A079612(n+5)+A007740(3*n+2))`
-/

namespace A271418.P17049148439782834540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079612 (n + 5) + A007740 (3 * n + 2)).toNat

end

end A271418.P17049148439782834540

/-! ## A271418.P7744879718590024232

`A001511(A007947(n+1)*A256825(n+1))`
-/

namespace A271418.P7744879718590024232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A007947 (n + 1) * A256825 (n + 1)).toNat

end

end A271418.P7744879718590024232

/-! ## A271418.P12683310008768912125

`A244992(A113581(n))+A000002(A046890(n))`
-/

namespace A271418.P12683310008768912125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (A113581 n).toNat + A000002 (A046890 n).toNat

end

end A271418.P12683310008768912125

/-!
# A271419: If n is a ludic number, a(n)=0; if n is not a ludic number, a(n) is the ludic number that rejects n from the ludic number sieve.

The programs for A271419, there is no canonical definition to state claims against.
-/

/-! ## A271419.P9429933350460762410

`(1-A192490(n+1))*A272565(n+1)`
-/

namespace A271419.P9429933350460762410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A192490 (n + 1)) * A272565 (n + 1)

end

end A271419.P9429933350460762410

/-! ## A271419.P4873280218006376235

`A272565(n+1)%(n+1)`
-/

namespace A271419.P4873280218006376235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272565 (n + 1)) (n + 1 : ℤ)

end

end A271419.P4873280218006376235

/-! ## A271419.P16683923858149630279

`Δ[A236863(n)]*A272565(n+1)`
-/

namespace A271419.P16683923858149630279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A272565 (n + 1)

end

end A271419.P16683923858149630279

/-! ## A271419.P3152749734781287870

`A003309(A260738(n+1)+1)%(n+1)`
-/

namespace A271419.P3152749734781287870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003309 (A260738 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A271419.P3152749734781287870

/-! ## A271419.P340066391590683423

`A060576(A260739(n+1))*A272565(n+1)`
-/

namespace A271419.P340066391590683423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A260739 (n + 1)).toNat * A272565 (n + 1)

end

end A271419.P340066391590683423

/-! ## A271419.P17068505218486212763

`A003309(A271420(n+1)+1)-A192490(n+1)`
-/

namespace A271419.P17068505218486212763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (A271420 (n + 1) + 1).toNat - A192490 (n + 1)

end

end A271419.P17068505218486212763

/-! ## A271419.P1384289434904147198

`A059841(A237058(n+1))*A272565(n+1)`
-/

namespace A271419.P1384289434904147198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A237058 (n + 1)).toNat * A272565 (n + 1)

end

end A271419.P1384289434904147198

/-! ## A271419.P212917968690674339

`A002262(A272565(n+1)+∑[n])`
-/

namespace A271419.P212917968690674339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A272565 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A271419.P212917968690674339

/-! ## A271419.P13967440086473702528

`A004197(A272565(n+1)+∑[n+1])`
-/

namespace A271419.P13967440086473702528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A272565 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A271419.P13967440086473702528

/-!
# A271420: Nonludicity of n.

The programs for A271420, there is no canonical definition to state claims against.
-/

/-! ## A271420.P8215401904568920417

`(1-A192490(n+1))*A260738(n+1)`
-/

namespace A271420.P8215401904568920417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A192490 (n + 1)) * A260738 (n + 1)

end

end A271420.P8215401904568920417

/-! ## A271420.P3977715649631934528

`A260738(n+1)%A302032(n+1)`
-/

namespace A271420.P3977715649631934528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260738 (n + 1)) (A302032 (n + 1))

end

end A271420.P3977715649631934528

/-! ## A271420.P16584383405587474411

`A260738(A271419(n+1)+A192490(n+1))`
-/

namespace A271420.P16584383405587474411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A271419 (n + 1) + A192490 (n + 1)).toNat

end

end A271420.P16584383405587474411

/-! ## A271420.P17749488539598969886

`A260738(n+1)*A271419(n+1)/A272565(n+1)`
-/

namespace A271420.P17749488539598969886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260738 (n + 1) * A271419 (n + 1) : ℚ) / (A272565 (n + 1) : ℚ)

end

end A271420.P17749488539598969886

/-! ## A271420.P9194129077111618799

`A055396(A269172(n+1))%A302032(n+1)`
-/

namespace A271420.P9194129077111618799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A269172 (n + 1)).toNat) (A302032 (n + 1))

end

end A271420.P9194129077111618799

/-! ## A271420.P3181402244128228418

`A055396(A302026(n+1))%A302032(n+1)`
-/

namespace A271420.P3181402244128228418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A302026 (n + 1)).toNat) (A302032 (n + 1))

end

end A271420.P3181402244128228418

/-! ## A271420.P13558924547329467606

`A055396(∏{p}[A269172(n+1), A269172(n+1)/#])`
-/

namespace A271420.P13558924547329467606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A269172 (n + 1) : ℚ) / (p : ℚ))).toNat

end

end A271420.P13558924547329467606

/-! ## A271420.P2155704376510153010

`A002262(A255128(n+1)-1)`
-/

namespace A271420.P2155704376510153010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A255128 (n + 1) - 1).toNat

end

end A271420.P2155704376510153010

/-! ## A271420.P6653496659131353331

`A055396(∏{p}[A302026(n+1), A302026(n+1)/#])`
-/

namespace A271420.P6653496659131353331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A302026 (n + 1) : ℚ) / (p : ℚ))).toNat

end

end A271420.P6653496659131353331

/-! ## A271420.P1828911429159997539

`A001221(A271419(n+1)!)`
-/

namespace A271420.P1828911429159997539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A271419 (n + 1)).toNat)

end

end A271420.P1828911429159997539

/-!
# A271422: Concatenation of prime(n) and its square.

The programs for A271422, the canonical program `A271422.P17494143731461512201` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271422 has offset 1).

The definition of A271422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271422.P17494143731461512201

`A053061(eq[1, ∑{d}[n+1, #]-(n+1)]+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271422

/-- `A053061(eq[1, ∑{d}[n+1, #]-(n+1)]+1)` -/
def P17494143731461512201.Spec : Prop :=
  ∀ n, P17494143731461512201.a n = A271422 (n + 1)

theorem P17494143731461512201.correct : P17494143731461512201.Spec := by
  intro n
  simp only [A271422, Nat.add_sub_cancel]

end A271422

/-! ## A271422.P10716694642005500404

`A053061(Δ[A007504(n)])`
-/

namespace A271422.P10716694642005500404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (f1 (n + 1) - f1 n).toNat

end

end A271422.P10716694642005500404

namespace A271422

/-- `A053061(Δ[A007504(n)])` -/
def P10716694642005500404.Spec : Prop :=
  ∀ n, P10716694642005500404.a n = A271422 (n + 1)

end A271422

/-! ## A271422.P2700029384622841635

`A053061(A000040(n+1))`
-/

namespace A271422.P2700029384622841635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (A000040 (n + 1)).toNat

end

end A271422.P2700029384622841635

namespace A271422

/-- `A053061(A000040(n+1))` -/
def P2700029384622841635.Spec : Prop :=
  ∀ n, P2700029384622841635.a n = A271422 (n + 1)

end A271422

/-! ## A271422.P752155069519165029

`A053061(A008578(n+2))`
-/

namespace A271422.P752155069519165029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (A008578 (n + 2)).toNat

end

end A271422.P752155069519165029

namespace A271422

/-- `A053061(A008578(n+2))` -/
def P752155069519165029.Spec : Prop :=
  ∀ n, P752155069519165029.a n = A271422 (n + 1)

end A271422

/-! ## A271422.P5288579592659691870

`A053061(A182986(n+2))`
-/

namespace A271422.P5288579592659691870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (A182986 (n + 2)).toNat

end

end A271422.P5288579592659691870

namespace A271422

/-- `A053061(A182986(n+2))` -/
def P5288579592659691870.Spec : Prop :=
  ∀ n, P5288579592659691870.a n = A271422 (n + 1)

end A271422

/-! ## A271422.P6891790511865321817

`A053061(A030078(n+1)/A001248(n+1))`
-/

namespace A271422.P6891790511865321817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat

end

end A271422.P6891790511865321817

namespace A271422

/-- `A053061(A030078(n+1)/A001248(n+1))` -/
def P6891790511865321817.Spec : Prop :=
  ∀ n, P6891790511865321817.a n = A271422 (n + 1)

end A271422

/-!
# A271423: Number T(n,k) of set partitions of [n] with maximal block length multiplicity equal to k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A271423, there is no canonical definition to state claims against.
-/

/-! ## A271423.P16984450276149341461

`∑{e}[2^A372762(n), #]`
-/

namespace A271423.P16984450276149341461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A372762 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A271423.P16984450276149341461

/-! ## A271423.P8288759163947736819

`A055570(A372762(n))`
-/

namespace A271423.P8288759163947736819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A372762 n).toNat

end

end A271423.P8288759163947736819

/-! ## A271423.P18096102676347341430

`A001222(2^A372762(n))`
-/

namespace A271423.P18096102676347341430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A372762 n : ℤ))).toNat

end

end A271423.P18096102676347341430

/-! ## A271423.P11435425711539699781

`A007814(2^A372762(n))`
-/

namespace A271423.P11435425711539699781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A372762 n : ℤ))).toNat

end

end A271423.P11435425711539699781

/-! ## A271423.P14458632603000732124

`A065770(2^A372762(n))`
-/

namespace A271423.P14458632603000732124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A372762 n : ℤ))).toNat

end

end A271423.P14458632603000732124

/-!
# A271424: Number T(n,k) of set partitions of [n] with minimal block length multiplicity equal to k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A271424, there is no canonical definition to state claims against.
-/

/-! ## A271424.P15858886673540136427

`A244530(n+1)+A122365(A283666(n+1))`
-/

namespace A271424.P15858886673540136427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (n + 1) + A122365 (A283666 (n + 1)).toNat

end

end A271424.P15858886673540136427

/-! ## A271424.P5812763723931757951

`A353590(A277031(n))`
-/

namespace A271424.P5812763723931757951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353590 (A277031 n).toNat

end

end A271424.P5812763723931757951

/-! ## A271424.P12778039734055846482

`A103298(A238123(n)²)`
-/

namespace A271424.P12778039734055846482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A238123 n ^ 2).toNat

end

end A271424.P12778039734055846482

/-! ## A271424.P6288617918204302443

`A131613(A238123(n)+1)`
-/

namespace A271424.P6288617918204302443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131613 (A238123 n + 1).toNat

end

end A271424.P6288617918204302443

/-! ## A271424.P11139869685041282413

`A001222(2^A372722(n))`
-/

namespace A271424.P11139869685041282413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A372722 n : ℤ))).toNat

end

end A271424.P11139869685041282413

/-!
# A271425: Number of set partitions of [2n] with maximal block length multiplicity equal to n.

The programs for A271425, there is no canonical definition to state claims against.
-/

/-! ## A271425.P4990877056193860235

`A271423(∑[4*n])`
-/

namespace A271425.P4990877056193860235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271425.P4990877056193860235

/-! ## A271425.P4876246508678422320

`A372762(∑[4*n])`
-/

namespace A271425.P4876246508678422320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271425.P4876246508678422320

/-! ## A271425.P18236015494102418779

`or(1, A271423(A046092(n)))`
-/

namespace A271425.P18236015494102418779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271423 (A046092 n).toNat)

end

end A271425.P18236015494102418779

/-! ## A271425.P2035450150498232267

`gcd(A169585(n), A271423(A046092(n)))`
-/

namespace A271425.P2035450150498232267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A271423 (A046092 n).toNat)

end

end A271425.P2035450150498232267

/-! ## A271425.P13009520891696203528

`A271423(A046092(n))%A066318(n+1)`
-/

namespace A271425.P13009520891696203528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271423 (A046092 n).toNat) (A066318 (n + 1))

end

end A271425.P13009520891696203528

/-!
# A271426: Number of set partitions of [n] with minimal block length multiplicity equal to one.

The programs for A271426, there is no canonical definition to state claims against.
-/

/-! ## A271426.P16886862200401977213

`A271424(∑[n]+1)`
-/

namespace A271426.P16886862200401977213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271426.P16886862200401977213

/-! ## A271426.P1453278540617745731

`and(A057428(n), A271424(A000124(n)))`
-/

namespace A271426.P1453278540617745731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A271424 (A000124 n).toNat)

end

end A271426.P1453278540617745731

/-! ## A271426.P4389049130921215439

`A007318(∑[n])*A271424(A000124(n))`
-/

namespace A271426.P4389049130921215439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A271424 (A000124 n).toNat

end

end A271426.P4389049130921215439

/-! ## A271426.P7098784620538586518

`A000040(n+1)%2*A271424(A000124(n))`
-/

namespace A271426.P7098784620538586518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A271424 (A000124 n).toNat

end

end A271426.P7098784620538586518

/-! ## A271426.P11406030185048572478

`A271424(A000124(n))+A008683(A008591(n+1))`
-/

namespace A271426.P11406030185048572478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 (A000124 n).toNat + A008683 (A008591 (n + 1)).toNat

end

end A271426.P11406030185048572478

/-! ## A271426.P14459058605012724358

`A001222(A002144(n+1))*A271424(A000124(n))`
-/

namespace A271426.P14459058605012724358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat * A271424 (A000124 n).toNat

end

end A271426.P14459058605012724358

/-! ## A271426.P1120911950125924157

`A151933(n)!*A271424(A000124(n))`
-/

namespace A271426.P1120911950125924157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151933 n).toNat : ℤ) * A271424 (A000124 n).toNat

end

end A271426.P1120911950125924157

/-! ## A271426.P5768029761849796909

`A271424(Δ[A004006(n)])%A073591(n)`
-/

namespace A271426.P5768029761849796909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271424 (f1 (n + 1) - f1 n).toNat) (A073591 n)

end

end A271426.P5768029761849796909

/-!
# A271427: a(n) = 7^n - a(n-1) for n>0, a(0)=0.

The programs for A271427, the canonical program `A271427.P3156189943323001904` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271427 has offset 0).

The definition of A271427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-a(n-1)` (program `A271427.P3156189943323001904`, by `A271427.P3156189943323001904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271427.P3156189943323001904

`7^n-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271427

/-- `7^n-a(n-1)` -/
def P3156189943323001904.Spec : Prop :=
  ∀ n, P3156189943323001904.a n = A271427 n

theorem P3156189943323001904.correct : P3156189943323001904.Spec := by
  intro n
  simp only [A271427]

end A271427

/-! ## A271427.P6307431022946169358

`6*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=7`
-/

namespace A271427.P6307431022946169358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  6 * a (n - 1) + 7 * a (n - 2)

end

end A271427.P6307431022946169358

namespace A271427

/-- `6*a(n-1)+7*a(n-2)` -/
def P6307431022946169358.Spec : Prop :=
  ∀ n, (P6307431022946169358.a n : ℤ) = A271427 n

end A271427

/-! ## A271427.P15398337382386696980

`7*A015552(n)`
-/

namespace A271427.P15398337382386696980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A015552 n

end

end A271427.P15398337382386696980

namespace A271427

/-- `7*A015552(n)` -/
def P15398337382386696980.Spec : Prop :=
  ∀ n, P15398337382386696980.a n = A271427 n

end A271427

/-! ## A271427.P250904677575048293

`7*(7^n-(-1)^n)/8`
-/

namespace A271427.P250904677575048293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * ((7 ^ n : ℤ) - (-1) ^ n) : ℚ) / 8

end

end A271427.P250904677575048293

namespace A271427

/-- `7*(7^n-(-1)^n)/8` -/
def P250904677575048293.Spec : Prop :=
  ∀ n, P250904677575048293.a n = (A271427 n : ℚ)

theorem P250904677575048293.correct : P250904677575048293.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A271427, Nat.add_sub_cancel, A271427.P250904677575048293.a, A271427.P3156189943323001904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A271427, Nat.add_sub_cancel, A271427.P250904677575048293.a, A271427.P3156189943323001904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271427

/-! ## A271427.P6533134661321222779

`ogf(7x/(1-6x-7x^2))`
-/

namespace A271427.P6533134661321222779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -6, -7] n

end

end A271427.P6533134661321222779

namespace A271427

/-- `ogf(7x/(1-6x-7x^2))` -/
def P6533134661321222779.Spec : Prop :=
  ∀ n, P6533134661321222779.a n = A271427 n

end A271427

/-! ## A271427.P9561243333980484034

`xor(1, abs(∑[(-7)^n]))`
-/

namespace A271427.P9561243333980484034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-7) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A271427.P9561243333980484034

namespace A271427

/-- `xor(1, abs(∑[(-7)^n]))` -/
def P9561243333980484034.Spec : Prop :=
  ∀ n, P9561243333980484034.a n = A271427 n

end A271427

/-! ## A271427.P13812459881715331147

`7*xor(1, a(n-1))` with `a(0)=0`
-/

namespace A271427.P13812459881715331147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 * Nat.xor 1 (a (n - 1))

end

end A271427.P13812459881715331147

namespace A271427

/-- `7*xor(1, a(n-1))` -/
def P13812459881715331147.Spec : Prop :=
  ∀ n, (P13812459881715331147.a n : ℤ) = A271427 n

end A271427

/-! ## A271427.P4507656271272972602

`lcm(7, xor(1, a(n-1)))` with `a(0)=0`
-/

namespace A271427.P4507656271272972602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 7 (Nat.xor 1 (a (n - 1)))

end

end A271427.P4507656271272972602

namespace A271427

/-- `lcm(7, xor(1, a(n-1)))` -/
def P4507656271272972602.Spec : Prop :=
  ∀ n, (P4507656271272972602.a n : ℤ) = A271427 n

end A271427

/-! ## A271427.P14336589020845736626

`abs(1-A014989(n+1))`
-/

namespace A271427.P14336589020845736626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A014989 (n + 1)|

end

end A271427.P14336589020845736626

namespace A271427

/-- `abs(1-A014989(n+1))` -/
def P14336589020845736626.Spec : Prop :=
  ∀ n, P14336589020845736626.a n = A271427 n

end A271427

/-! ## A271427.P14518136188003226472

`∑[A083232(n)]-(-1)^n`
-/

namespace A271427.P14518136188003226472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A271427.P14518136188003226472

namespace A271427

/-- `∑[A083232(n)]-(-1)^n` -/
def P14518136188003226472.Spec : Prop :=
  ∀ n, P14518136188003226472.a n = A271427 n

end A271427

/-! ## A271427.P8703227168547686018

`A024075(n)-a(n-1)+1` with `a(0)=0`
-/

namespace A271427.P8703227168547686018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A024075 n - a (n - 1) + 1

end

end A271427.P8703227168547686018

namespace A271427

/-- `A024075(n)-a(n-1)+1` -/
def P8703227168547686018.Spec : Prop :=
  ∀ n, P8703227168547686018.a n = A271427 n

theorem P8703227168547686018.correct : P8703227168547686018.Spec := by
  intro n
  simp only [A271427, Nat.add_sub_cancel, A271427.P8703227168547686018.a, A271427.P3156189943323001904.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271427

/-! ## A271427.P1626725420091889641

`A015552(n)-Δ[A000035(n)-A015552(n)]`
-/

namespace A271427.P1626725420091889641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A015552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 n - (f1 (n + 1) - f1 n)

end

end A271427.P1626725420091889641

namespace A271427

/-- `A015552(n)-Δ[A000035(n)-A015552(n)]` -/
def P1626725420091889641.Spec : Prop :=
  ∀ n, P1626725420091889641.a n = A271427 n

end A271427

/-! ## A271427.P1184112012498578026

`A056594(A005843(n+1))+A015552(n+1)`
-/

namespace A271427.P1184112012498578026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005843 (n + 1)).toNat + A015552 (n + 1)

end

end A271427.P1184112012498578026

namespace A271427

/-- `A056594(A005843(n+1))+A015552(n+1)` -/
def P1184112012498578026.Spec : Prop :=
  ∀ n, P1184112012498578026.a n = A271427 n

end A271427

/-! ## A271427.P1518943107778054527

`A015552(n+1)+A015521(n)-A109499(n)`
-/

namespace A271427.P1518943107778054527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) + (A015521 n - A109499 n)

end

end A271427.P1518943107778054527

namespace A271427

/-- `A015552(n+1)+A015521(n)-A109499(n)` -/
def P1518943107778054527.Spec : Prop :=
  ∀ n, P1518943107778054527.a n = A271427 n

end A271427

/-! ## A271427.P1127512476243988305

`A015552(n+1)+A054878(n+1)-A015518(n+1)`
-/

namespace A271427.P1127512476243988305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) + (A054878 (n + 1) - A015518 (n + 1))

end

end A271427.P1127512476243988305

namespace A271427

/-- `A015552(n+1)+A054878(n+1)-A015518(n+1)` -/
def P1127512476243988305.Spec : Prop :=
  ∀ n, P1127512476243988305.a n = A271427 n

end A271427

/-! ## A271427.P9310020338285517944

`A015552(n+1)+A078008(n+1)-A001045(n+1)`
-/

namespace A271427.P9310020338285517944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) + (A078008 (n + 1) - A001045 (n + 1))

end

end A271427.P9310020338285517944

namespace A271427

/-- `A015552(n+1)+A078008(n+1)-A001045(n+1)` -/
def P9310020338285517944.Spec : Prop :=
  ∀ n, P9310020338285517944.a n = A271427 n

end A271427

/-! ## A271427.P2827598674558205498

`A015552(n+1)+A093134(n+1)-A015565(n+1)`
-/

namespace A271427.P2827598674558205498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) + (A093134 (n + 1) - A015565 (n + 1))

end

end A271427.P2827598674558205498

namespace A271427

/-- `A015552(n+1)+A093134(n+1)-A015565(n+1)` -/
def P2827598674558205498.Spec : Prop :=
  ∀ n, P2827598674558205498.a n = A271427 n

end A271427

/-!
# A271429: Primes of the form L(k)*L(k+1)-1, where L(k) is the k-th Lucas number (A000032).

The programs for A271429, there is no canonical definition to state claims against.
-/

/-! ## A271429.P6692359149918563324

`A005970(A271430(n+1))+1`
-/

namespace A271429.P6692359149918563324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005970 (A271430 (n + 1)).toNat + 1

end

end A271429.P6692359149918563324

/-! ## A271429.P18040353114568397923

`A215602(A271430(n+1))-A033999(2*n)`
-/

namespace A271429.P18040353114568397923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (A271430 (n + 1)).toNat - A033999 (2 * n)

end

end A271429.P18040353114568397923

/-!
# A271431: Primes with at least four digits that remain prime when any two adjacent groups of two digits switch places.

The programs for A271431, there is no canonical definition to state claims against.
-/

/-! ## A271431.P8780281236454192669

`A166572(A213363(n+4))+A000007(A255236(n))`
-/

namespace A271431.P8780281236454192669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166572 (A213363 (n + 4)).toNat + A000007 (A255236 n).toNat

end

end A271431.P8780281236454192669

/-!
# A271432: Number of n-step excursions on the 4-dimensional f.c.c. lattice.

The programs for A271432, there is no canonical definition to state claims against.
-/

/-! ## A271432.P4819333835221046033

`∑{d}[A277773(A170896(n)), #]`
-/

namespace A271432.P4819333835221046033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277773 (A170896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A271432.P4819333835221046033

/-!
# A271433: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal and exactly one 2x2x2 triangle having values all different.

The programs for A271433, there is no canonical definition to state claims against.
-/

/-! ## A271433.P15929999380380615168

`A271437(∑[n+2])`
-/

namespace A271433.P15929999380380615168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271433.P15929999380380615168

/-!
# A271434: Number of nXnXn triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal and exactly one 2x2x2 triangle having values all different.

The programs for A271434, there is no canonical definition to state claims against.
-/

/-! ## A271434.P11882780826322304553

`A271437(∑[n+3]+1)`
-/

namespace A271434.P11882780826322304553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271434.P11882780826322304553

/-! ## A271434.P16648012244278581353

`A271437(A034856(n+2))+A112315(A112325(n+1))`
-/

namespace A271434.P16648012244278581353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (A034856 (n + 2)).toNat + A112315 (A112325 (n + 1)).toNat

end

end A271434.P16648012244278581353

/-! ## A271434.P4001694007909464436

`A001222(A138755(n+1))*A271437(A034856(n+2))`
-/

namespace A271434.P4001694007909464436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138755 (n + 1)).toNat * A271437 (A034856 (n + 2)).toNat

end

end A271434.P4001694007909464436

/-! ## A271434.P8330140746690780735

`A271437(A034856(n+2))%A271443(n+1)`
-/

namespace A271434.P8330140746690780735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271437 (A034856 (n + 2)).toNat) (A271443 (n + 1))

end

end A271434.P8330140746690780735

/-!
# A271435: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal and exactly one 2x2x2 triangle having values all different.

The programs for A271435, there is no canonical definition to state claims against.
-/

/-! ## A271435.P5594710395890580469

`A271437(A141214(n+1))`
-/

namespace A271435.P5594710395890580469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (A141214 (n + 1)).toNat

end

end A271435.P5594710395890580469

/-! ## A271435.P10507000351741258361

`A271437(A155212(n)+5)`
-/

namespace A271435.P10507000351741258361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (A155212 n + 5).toNat

end

end A271435.P10507000351741258361

/-! ## A271435.P15007741171982567803

`A271437(eq[2, A152157(n)])`
-/

namespace A271435.P15007741171982567803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271435.P15007741171982567803

/-! ## A271435.P17498431124300862723

`A271437(eq[2, A319453(n)])`
-/

namespace A271435.P17498431124300862723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271435.P17498431124300862723

/-! ## A271435.P7468861544008734167

`A271437(eq[3, A215977(n)])`
-/

namespace A271435.P7468861544008734167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271435.P7468861544008734167

/-!
# A271436: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal and exactly one 2x2x2 triangle having values all different.

The programs for A271436, there is no canonical definition to state claims against.
-/

/-! ## A271436.P18045725162845378766

`A271437(eq[3, A152157(n)])`
-/

namespace A271436.P18045725162845378766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271436.P18045725162845378766

/-! ## A271436.P17771119060290100400

`A271437(eq[4, A193592(n)])`
-/

namespace A271436.P17771119060290100400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271436.P17771119060290100400

/-! ## A271436.P2621556441821817878

`A271437(Δ[A023545(n+1)])`
-/

namespace A271436.P2621556441821817878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (f1 (n + 1) - f1 n).toNat

end

end A271436.P2621556441821817878

/-! ## A271436.P8151697505686012653

`A271437(eq[6, A088326(n+1)])`
-/

namespace A271436.P8151697505686012653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271436.P8151697505686012653

/-! ## A271436.P7057338547799641578

`A271437(eq[8, A057728(n+1)])`
-/

namespace A271436.P7057338547799641578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271436.P7057338547799641578

/-!
# A271437: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal and exactly one 2x2x2 triangle having values all different.

The programs for A271437, there is no canonical definition to state claims against.
-/

/-! ## A271437.P6275115499534984953

`A091202(A271517(n+1)%A050279(n+1))`
-/

namespace A271437.P6275115499534984953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (Int.tmod (A271517 (n + 1)) (A050279 (n + 1))).toNat

end

end A271437.P6275115499534984953

/-! ## A271437.P14189766527066769473

`A091202(A271517(n+1))%A265791(n+1)`
-/

namespace A271437.P14189766527066769473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091202 (A271517 (n + 1)).toNat) (A265791 (n + 1))

end

end A271437.P14189766527066769473

/-!
# A271439: If n is a triangular number, a(n) = 0, otherwise a(n) = n - A002024(n) + 1.

The programs for A271439, the canonical program `A271439.P9966869928347178630` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271439 has offset 0).

The definition of A271439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271439.P6801991369898522452

`ceil(Δ[(n-round(sqrt(2*n)))²]/2)`
-/

namespace A271439.P6801991369898522452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A271439.P6801991369898522452

namespace A271439

/-- `ceil(Δ[(n-round(sqrt(2*n)))²]/2)` -/
def P6801991369898522452.Spec : Prop :=
  ∀ n, P6801991369898522452.a n = A271439 n

end A271439

/-! ## A271439.P2956726025168827876

`A083920(n*(1-char[∑[n]]))`
-/

namespace A271439.P2956726025168827876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 ((n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A271439.P2956726025168827876

namespace A271439

/-- `A083920(n*(1-char[∑[n]]))` -/
def P2956726025168827876.Spec : Prop :=
  ∀ n, P2956726025168827876.a n = A271439 n

end A271439

/-! ## A271439.P17814784494483860207

`A083920(n)*A123110(n)`
-/

namespace A271439.P17814784494483860207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n * A123110 n

end

end A271439.P17814784494483860207

namespace A271439

/-- `A083920(n)*A123110(n)` -/
def P17814784494483860207.Spec : Prop :=
  ∀ n, P17814784494483860207.a n = A271439 n

end A271439

/-! ## A271439.P9966869928347178630

`(1-A010054(n))*A083920(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A271439

/-- `(1-A010054(n))*A083920(n)` -/
def P9966869928347178630.Spec : Prop :=
  ∀ n, P9966869928347178630.a n = A271439 n

theorem P9966869928347178630.correct : P9966869928347178630.Spec := by
  intro n
  simp only [A271439]

end A271439

/-! ## A271439.P16106773249423185549

`(1-A073424(n))*A083920(n)`
-/

namespace A271439.P16106773249423185549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A073424 n) * A083920 n

end

end A271439.P16106773249423185549

namespace A271439

/-- `(1-A073424(n))*A083920(n)` -/
def P16106773249423185549.Spec : Prop :=
  ∀ n, P16106773249423185549.a n = A271439 n

end A271439

/-! ## A271439.P8987133946449338050

`(2-A035214(n))*A083920(n)`
-/

namespace A271439.P8987133946449338050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A035214 n) * A083920 n

end

end A271439.P8987133946449338050

namespace A271439

/-- `(2-A035214(n))*A083920(n)` -/
def P8987133946449338050.Spec : Prop :=
  ∀ n, P8987133946449338050.a n = A271439 n

theorem P8987133946449338050.correct : P8987133946449338050.Spec := by
  intro n
  simp only [A271439, Nat.add_sub_cancel, A271439.P8987133946449338050.a, A271439.P9966869928347178630.a, A010054, A010054.P18347828677204923252.a, A035214, A035214.P16301326444238280714.a, A083920, A083920.P13248752610546876947.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A271439

/-! ## A271439.P5852032051851360005

`(A122797(n+1)-1)*A123110(n)`
-/

namespace A271439.P5852032051851360005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122797 (n + 1) - 1) * A123110 n

end

end A271439.P5852032051851360005

namespace A271439

/-- `(A122797(n+1)-1)*A123110(n)` -/
def P5852032051851360005.Spec : Prop :=
  ∀ n, P5852032051851360005.a n = A271439 n

end A271439

/-! ## A271439.P198534219817833868

`char[A007401(n+1)+1]*A083920(n)`
-/

namespace A271439.P198534219817833868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A083920 n

end

end A271439.P198534219817833868

namespace A271439

/-- `char[A007401(n+1)+1]*A083920(n)` -/
def P198534219817833868.Spec : Prop :=
  ∀ n, P198534219817833868.a n = A271439 n

end A271439

/-! ## A271439.P11673370950639829354

`Δ[A000124(n-A123578(n))]`
-/

namespace A271439.P11673370950639829354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n : ℤ) - A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271439.P11673370950639829354

namespace A271439

/-- `Δ[A000124(n-A123578(n))]` -/
def P11673370950639829354.Spec : Prop :=
  ∀ n, P11673370950639829354.a n = A271439 n

end A271439

/-! ## A271439.P12379914493028470093

`Δ[A000217(n-A123578(n))]`
-/

namespace A271439.P12379914493028470093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271439.P12379914493028470093

namespace A271439

/-- `Δ[A000217(n-A123578(n))]` -/
def P12379914493028470093.Spec : Prop :=
  ∀ n, P12379914493028470093.a n = A271439 n

end A271439

/-! ## A271439.P13060767159556881366

`(1-Δ[A123578(n)])*A083920(n)`
-/

namespace A271439.P13060767159556881366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A083920 n

end

end A271439.P13060767159556881366

namespace A271439

/-- `(1-Δ[A123578(n)])*A083920(n)` -/
def P13060767159556881366.Spec : Prop :=
  ∀ n, P13060767159556881366.a n = A271439 n

end A271439

/-! ## A271439.P14252969003050682722

`A173517(A056847(2*n+1))/2`
-/

namespace A271439.P14252969003050682722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173517 (A056847 (2 * n + 1)).toNat : ℚ) / 2

end

end A271439.P14252969003050682722

namespace A271439

/-- `A173517(A056847(2*n+1))/2` -/
def P14252969003050682722.Spec : Prop :=
  ∀ n, P14252969003050682722.a n = (A271439 n : ℚ)

end A271439

/-! ## A271439.P2541348407900794938

`Δ[A000124(n-A000194(2*n))]`
-/

namespace A271439.P2541348407900794938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n : ℤ) - A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271439.P2541348407900794938

namespace A271439

/-- `Δ[A000124(n-A000194(2*n))]` -/
def P2541348407900794938.Spec : Prop :=
  ∀ n, P2541348407900794938.a n = A271439 n

end A271439

/-! ## A271439.P5145745600722077124

`Δ[A000217(n-A000194(2*n))]`
-/

namespace A271439.P5145745600722077124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271439.P5145745600722077124

namespace A271439

/-- `Δ[A000217(n-A000194(2*n))]` -/
def P5145745600722077124.Spec : Prop :=
  ∀ n, P5145745600722077124.a n = A271439 n

end A271439

/-! ## A271439.P17330087384230838066

`A083920(n)%A008517(n+1)`
-/

namespace A271439.P17330087384230838066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083920 n) (A008517 (n + 1))

end

end A271439.P17330087384230838066

namespace A271439

/-- `A083920(n)%A008517(n+1)` -/
def P17330087384230838066.Spec : Prop :=
  ∀ n, P17330087384230838066.a n = A271439 n

end A271439

/-! ## A271439.P11701622412538244958

`A083920(n)%A334394(n)`
-/

namespace A271439.P11701622412538244958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083920 n) (A334394 n)

end

end A271439.P11701622412538244958

namespace A271439

/-- `A083920(n)%A334394(n)` -/
def P11701622412538244958.Spec : Prop :=
  ∀ n, P11701622412538244958.a n = A271439 n

end A271439

/-! ## A271439.P18240346192006311366

`(n-A003056(n))*A001221(A059268(n))`
-/

namespace A271439.P18240346192006311366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A003056 n) * A001221 (A059268 n).toNat

end

end A271439.P18240346192006311366

namespace A271439

/-- `(n-A003056(n))*A001221(A059268(n))` -/
def P18240346192006311366.Spec : Prop :=
  ∀ n, P18240346192006311366.a n = A271439 n

end A271439

/-! ## A271439.P7551394542856762363

`A083920(n)*A114607(n+1)`
-/

namespace A271439.P7551394542856762363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n * A114607 (n + 1)

end

end A271439.P7551394542856762363

namespace A271439

/-- `A083920(n)*A114607(n+1)` -/
def P7551394542856762363.Spec : Prop :=
  ∀ n, P7551394542856762363.a n = A271439 n

end A271439

/-! ## A271439.P9752313631235949806

`(n-A003056(n))*A114607(n+1)`
-/

namespace A271439.P9752313631235949806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A003056 n) * A114607 (n + 1)

end

end A271439.P9752313631235949806

namespace A271439

/-- `(n-A003056(n))*A114607(n+1)` -/
def P9752313631235949806.Spec : Prop :=
  ∀ n, P9752313631235949806.a n = A271439 n

end A271439

/-! ## A271439.P6407566243554546643

`A010054(A054582(n*A010054(n)))*A083920(n)`
-/

namespace A271439.P6407566243554546643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054582 ((n : ℤ) * A010054 n).toNat).toNat * A083920 n

end

end A271439.P6407566243554546643

namespace A271439

/-- `A010054(A054582(n*A010054(n)))*A083920(n)` -/
def P6407566243554546643.Spec : Prop :=
  ∀ n, P6407566243554546643.a n = A271439 n

end A271439

/-!
# A271440: a(n) = sigma(prime(n)^n) - phi(prime(n)^n).

The programs for A271440, the canonical program `A271440.P13772394931453661879` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271440 has offset 1).

The definition of A271440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271440.P13772394931453661879

`(2*A000040(n+1)^(n+1)-A000040(n+1)^n-1)/(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271440

/-- `(2*A000040(n+1)^(n+1)-A000040(n+1)^n-1)/(A000040(n+1)-1)` -/
def P13772394931453661879.Spec : Prop :=
  ∀ n, P13772394931453661879.a n = (A271440 (n + 1) : ℚ)

end A271440

/-! ## A271440.P3776823388778444409

`A319074(n+1)+A093360(n+1)`
-/

namespace A271440.P3776823388778444409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319074 (n + 1) + A093360 (n + 1)

end

end A271440.P3776823388778444409

namespace A271440

/-- `A319074(n+1)+A093360(n+1)` -/
def P3776823388778444409.Spec : Prop :=
  ∀ n, P3776823388778444409.a n = A271440 (n + 1)

end A271440

/-! ## A271440.P4663751980798975196

`A319074(n+1)+record[A036262(n)]^n`
-/

namespace A271440.P4663751980798975196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A271440.P4663751980798975196

namespace A271440

/-- `A319074(n+1)+record[A036262(n)]^n` -/
def P4663751980798975196.Spec : Prop :=
  ∀ n, P4663751980798975196.a n = A271440 (n + 1)

end A271440

/-! ## A271440.P1814140778797680029

`A319074(n+1)+record[A006530(n+2)]^n`
-/

namespace A271440.P1814140778797680029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A271440.P1814140778797680029

namespace A271440

/-- `A319074(n+1)+record[A006530(n+2)]^n` -/
def P1814140778797680029.Spec : Prop :=
  ∀ n, P1814140778797680029.a n = A271440 (n + 1)

end A271440

/-! ## A271440.P16344595830649097213

`A319074(n+1)+record[A014963(n+2)]^n`
-/

namespace A271440.P16344595830649097213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A271440.P16344595830649097213

namespace A271440

/-- `A319074(n+1)+record[A014963(n+2)]^n` -/
def P16344595830649097213.Spec : Prop :=
  ∀ n, P16344595830649097213.a n = A271440 (n + 1)

end A271440

/-!
# A271454: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A271454, there is no canonical definition to state claims against.
-/

/-! ## A271454.P14569008838878273537

`A271457(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271454.P14569008838878273537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271457 (n - 1) + a (n - 1)

end

end A271454.P14569008838878273537

/-! ## A271454.P7208947847547565786

`Δ[A271456(n)]-A271457(n)`
-/

namespace A271454.P7208947847547565786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271457 n

end

end A271454.P7208947847547565786

/-! ## A271454.P9108412890916570834

`A271456(n+1)-(A271457(n)+A271456(n))`
-/

namespace A271454.P9108412890916570834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271456 (n + 1) - (A271457 n + A271456 n)

end

end A271454.P9108412890916570834

/-! ## A271454.P13260078820777881700

`A271456(C(n+1, n))%(A271457(n)+A271456(n))`
-/

namespace A271454.P13260078820777881700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271456 (Nat.choose (n + 1) n)) (A271457 n + A271456 n)

end

end A271454.P13260078820777881700

/-!
# A271455: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A271455, there is no canonical definition to state claims against.
-/

/-! ## A271455.P7788084381579135263

`A271454(2^n-1)`
-/

namespace A271455.P7788084381579135263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 (2 ^ n - 1)

end

end A271455.P7788084381579135263

/-! ## A271455.P8562775453238049739

`record[A271454(A303763(n))]`
-/

namespace A271455.P8562775453238049739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271455.P8562775453238049739

/-! ## A271455.P14270202369173960967

`record[A271454(A324865(n+1))]`
-/

namespace A271455.P14270202369173960967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271455.P14270202369173960967

/-! ## A271455.P16616021324160056809

`record[A271454(A324876(n+1))]`
-/

namespace A271455.P16616021324160056809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 (A324876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271455.P16616021324160056809

/-! ## A271455.P14269649361856630168

`record[A271454(n)/A000265(n+1)]`
-/

namespace A271455.P14269649361856630168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271454 n : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271455.P14269649361856630168

/-!
# A271456: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A271456, there is no canonical definition to state claims against.
-/

/-! ## A271456.P8138532156587971614

`∑[A271457(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271456.P8138532156587971614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271457 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271456.P8138532156587971614

/-! ## A271456.P8318795300257979377

`∑[A271454(n)]`
-/

namespace A271456.P8318795300257979377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271456.P8318795300257979377

/-! ## A271456.P7373285352002298104

`a(n-1)+A271454(n)+A000007(n)` with `a(0)=1`
-/

namespace A271456.P7373285352002298104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271454 n + A000007 n)

end

end A271456.P7373285352002298104

/-! ## A271456.P4574846724591987417

`a(n-1)+A057427(n)*A271454(n)` with `a(0)=1`
-/

namespace A271456.P4574846724591987417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A271454 n

end

end A271456.P4574846724591987417

/-! ## A271456.P4734148505067413240

`A271454(n%A271454(n))+a(n-1)` with `a(0)=1`
-/

namespace A271456.P4734148505067413240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271454 (Int.tmod (n : ℤ) (A271454 n)).toNat + a (n - 1)

end

end A271456.P4734148505067413240

/-!
# A271457: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A271457, there is no canonical definition to state claims against.
-/

/-! ## A271457.P11230263619042456267

`Δ[A271454(n)]`
-/

namespace A271457.P11230263619042456267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271457.P11230263619042456267

/-! ## A271457.P9107203955217525377

`A271454(n+1)-A271454(n)`
-/

namespace A271457.P9107203955217525377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 (n + 1) - A271454 n

end

end A271457.P9107203955217525377

/-! ## A271457.P11654733246608603857

`A271538(n)-A325801(A149173(n))`
-/

namespace A271457.P11654733246608603857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271538 n - A325801 (A149173 n).toNat

end

end A271457.P11654733246608603857

/-! ## A271457.P2313449115490828693

`A271538(n)-A184955(A303763(n))`
-/

namespace A271457.P2313449115490828693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271538 n - A184955 (A303763 n).toNat

end

end A271457.P2313449115490828693

/-! ## A271457.P2709938888634629683

`Δ[A265916(n)]-A325801(A149173(n))`
-/

namespace A271457.P2709938888634629683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325801 (A149173 n).toNat

end

end A271457.P2709938888634629683

/-!
# A271458: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A271458, there is no canonical definition to state claims against.
-/

/-! ## A271458.P12289707443371782956

`A169701(2^n-1)`
-/

namespace A271458.P12289707443371782956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 (2 ^ n - 1)

end

end A271458.P12289707443371782956

/-! ## A271458.P13126659070019345742

`record[A169701(A006068(n))]`
-/

namespace A271458.P13126659070019345742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271458.P13126659070019345742

/-! ## A271458.P2882494339026225317

`record[A169701(A153151(n))]`
-/

namespace A271458.P2882494339026225317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 (A153151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271458.P2882494339026225317

/-! ## A271458.P7936200045603427291

`record[A169701(A173787(n))]`
-/

namespace A271458.P7936200045603427291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271458.P7936200045603427291

/-! ## A271458.P13580623720238596875

`record[A169701(A303765(n))]`
-/

namespace A271458.P13580623720238596875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271458.P13580623720238596875

/-!
# A271459: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A271459, there is no canonical definition to state claims against.
-/

/-! ## A271459.P10585626405502088995

`∑[A169701(n)]`
-/

namespace A271459.P10585626405502088995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271459.P10585626405502088995

/-! ## A271459.P1972473887586047151

`a(n-1)+A169701(n)+A000038(n)` with `a(0)=1`
-/

namespace A271459.P1972473887586047151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169701 n + A000038 n)

end

end A271459.P1972473887586047151

/-! ## A271459.P13508860360125035547

`a(n-1)+A169701(n)%A090288(n)` with `a(0)=1`
-/

namespace A271459.P13508860360125035547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A169701 n) (A090288 n)

end

end A271459.P13508860360125035547

/-! ## A271459.P3185761390993722941

`A169701(n%A097050(n))+a(n-1)` with `a(0)=1`
-/

namespace A271459.P3185761390993722941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169701 (Int.tmod (n : ℤ) (A097050 n)).toNat + a (n - 1)

end

end A271459.P3185761390993722941

/-! ## A271459.P14118256444088988624

`∑[A144396(n+1)²-A273069(n+1)]`
-/

namespace A271459.P14118256444088988624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) ^ 2 - A273069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271459.P14118256444088988624

/-! ## A271459.P15637760488957559336

`∑[∑[A169702(n)]+1-A169702(n)]`
-/

namespace A271459.P15637760488957559336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A169702 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271459.P15637760488957559336

/-!
# A271461: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A271461, there is no canonical definition to state claims against.
-/

/-! ## A271461.P16321261159994454827

`∑[A271464(abs(1-n))]-4`
-/

namespace A271461.P16321261159994454827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271464 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A271461.P16321261159994454827

/-! ## A271461.P4128844530390556735

`A271464(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271461.P4128844530390556735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271464 (n - 1) + a (n - 1)

end

end A271461.P4128844530390556735

/-! ## A271461.P12579325347687592805

`∑[A271464((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A271461.P12579325347687592805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271464 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271461.P12579325347687592805

/-! ## A271461.P16368715777327075384

`Δ[A271463(n)]-A271464(n)`
-/

namespace A271461.P16368715777327075384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271464 n

end

end A271461.P16368715777327075384

/-! ## A271461.P539930730659833130

`A271463(n+1)-(A271464(n)+A271463(n))`
-/

namespace A271461.P539930730659833130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271463 (n + 1) - (A271464 n + A271463 n)

end

end A271461.P539930730659833130

/-!
# A271462: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A271462, there is no canonical definition to state claims against.
-/

/-! ## A271462.P11382734690620979619

`A271461(2^n-1)`
-/

namespace A271462.P11382734690620979619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 (2 ^ n - 1)

end

end A271462.P11382734690620979619

/-! ## A271462.P8580634751178012590

`record[A271461(A173787(n))]`
-/

namespace A271462.P8580634751178012590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271462.P8580634751178012590

/-! ## A271462.P15101430552343568095

`record[A271461(A227351(n))]`
-/

namespace A271462.P15101430552343568095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271462.P15101430552343568095

/-! ## A271462.P10399670317825614241

`record[A271461(A303763(n))]`
-/

namespace A271462.P10399670317825614241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271462.P10399670317825614241

/-! ## A271462.P964533372133814894

`record[A271461(A243071(n+1))]`
-/

namespace A271462.P964533372133814894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271462.P964533372133814894

/-!
# A271463: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A271463, there is no canonical definition to state claims against.
-/

/-! ## A271463.P13845283594891292038

`∑[∑[A271464(abs(1-n))]-4]`
-/

namespace A271463.P13845283594891292038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271464 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271463.P13845283594891292038

/-! ## A271463.P14568705375143722494

`∑[A271464(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271463.P14568705375143722494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271464 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271463.P14568705375143722494

/-! ## A271463.P6217744738179315791

`∑[∑[A271464((n-1)%a(n-1))]]` with `a(0)=1`
-/

namespace A271463.P6217744738179315791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A271464 (Int.tmod ((n : ℤ) - 1) (f2 (n - 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271463.P6217744738179315791

/-! ## A271463.P2186016248971669871

`∑[A271461(n)]`
-/

namespace A271463.P2186016248971669871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271463.P2186016248971669871

/-! ## A271463.P13806836769464661462

`A271461(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271463.P13806836769464661462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271461 n + a (A023443 n).toNat

end

end A271463.P13806836769464661462

/-! ## A271463.P743335148332368199

`a(n-1)+A271461(n)%A079704(n+1)` with `a(0)=1`
-/

namespace A271463.P743335148332368199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271461 n) (A079704 (n + 1))

end

end A271463.P743335148332368199

/-!
# A271464: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A271464, there is no canonical definition to state claims against.
-/

/-! ## A271464.P16784221454900182849

`Δ[A271461(n)]`
-/

namespace A271464.P16784221454900182849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271464.P16784221454900182849

/-! ## A271464.P2510724548608824637

`A271461(n+1)-A271461(n)`
-/

namespace A271464.P2510724548608824637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271461 (n + 1) - A271461 n

end

end A271464.P2510724548608824637

/-!
# A271465: Array read by antidiagonals: T(n,m) = number of self-avoiding walks of any length from NW to SW corners on a grid with n rows and m columns.

The programs for A271465, there is no canonical definition to state claims against.
-/

/-! ## A271465.P14835336579139703800

`A342591(A124834(n))`
-/

namespace A271465.P14835336579139703800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A124834 n).toNat

end

end A271465.P14835336579139703800

/-! ## A271465.P14475023382168024663

`A108864(A076641(A073165(n)))`
-/

namespace A271465.P14475023382168024663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108864 (A076641 (A073165 n).toNat).toNat

end

end A271465.P14475023382168024663

/-! ## A271465.P1380392871284739448

`A279385(A023799(A137153(n))+1)`
-/

namespace A271465.P1380392871284739448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A023799 (A137153 n).toNat + 1).toNat

end

end A271465.P1380392871284739448

/-! ## A271465.P6781083166793286020

`xor(A034432(A213998(n)), A124834(n))`
-/

namespace A271465.P6781083166793286020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034432 (A213998 n).toNat) (A124834 n)

end

end A271465.P6781083166793286020

/-! ## A271465.P14841348621174803723

`A351058(A123162(n))`
-/

namespace A271465.P14841348621174803723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351058 (A123162 n).toNat

end

end A271465.P14841348621174803723

/-!
# A271466: Number T(n,k) of set partitions of [n] such that k is the largest element of the last block; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A271466, there is no canonical definition to state claims against.
-/

/-! ## A271466.P3937975071358465808

`A218581(A077342(n+1))-char[14]`
-/

namespace A271466.P3937975071358465808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218581 (A077342 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271466.P3937975071358465808

/-! ## A271466.P3868220482748692466

`A218581(A242474(n+1))-char[14]`
-/

namespace A271466.P3868220482748692466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218581 (A242474 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271466.P3868220482748692466

/-! ## A271466.P13264715625566742722

`A218581(n+1)-A185236(A122890(n))`
-/

namespace A271466.P13264715625566742722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218581 (n + 1) - A185236 (A122890 n).toNat

end

end A271466.P13264715625566742722

/-! ## A271466.P8748235616368308455

`A218581(n+1)-A010894(A334437(n))`
-/

namespace A271466.P8748235616368308455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218581 (n + 1) - A010894 ((A334437 n).toNat + 21)

end

end A271466.P8748235616368308455

/-! ## A271466.P17353260474346611468

`xor(A025437(n), A218581(A077342(n+1)))`
-/

namespace A271466.P17353260474346611468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025437 n) (A218581 (A077342 (n + 1)).toNat)

end

end A271466.P17353260474346611468

/-!
# A271467: Number of set partitions of [2n] such that n is the largest element of the last block.

The programs for A271467, there is no canonical definition to state claims against.
-/

/-! ## A271467.P13433900770172387368

`A271466(2*(n+1)²)`
-/

namespace A271467.P13433900770172387368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (2 * (n + 1) ^ 2)

end

end A271467.P13433900770172387368

/-! ## A271467.P3646264619105759538

`record[A271466(A168281(n+1))]`
-/

namespace A271467.P3646264619105759538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A168281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271467.P3646264619105759538

/-! ## A271467.P6313121304464668506

`record[A010052(2*(n+1))*A271466(n+1)]`
-/

namespace A271467.P6313121304464668506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * (n + 1)) * A271466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271467.P6313121304464668506

/-! ## A271467.P1090795597679188496

`record[A271466(A278111(n+1))]`
-/

namespace A271467.P1090795597679188496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (A278111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271467.P1090795597679188496

/-!
# A271468: List of indices i such that A269347(3*i) != 3*(i^2 + 1).

The programs for A271468, there is no canonical definition to state claims against.
-/

/-! ## A271468.P2160377339595095867

`lt[A258450(A133995(3*n+2)), A219040(n+1)]`
-/

namespace A271468.P2160377339595095867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258450 (A133995 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271468.P2160377339595095867

/-! ## A271468.P11121438963155903155

`eq[A356679(n+1), A394303(n)]`
-/

namespace A271468.P11121438963155903155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271468.P11121438963155903155

/-!
# A271469: G.f. A(x) satisfies A(x) = 1 + x*(A(x)^3 - A(x)^4 + A(x)^5).

The programs for A271469, there is no canonical definition to state claims against.
-/

/-! ## A271469.P11825604948258500122

`A172264(A118347(n))+1`
-/

namespace A271469.P11825604948258500122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A118347 n).toNat + 1

end

end A271469.P11825604948258500122

/-! ## A271469.P7352558504304959595

`A378370(A225029(n))+A364478(n)`
-/

namespace A271469.P7352558504304959595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (A225029 n).toNat + A364478 n

end

end A271469.P7352558504304959595

/-!
# A271471: Values k > 1 in A271328 such that k does not have any nontrivial divisors in A271328.

The programs for A271471, there is no canonical definition to state claims against.
-/

/-! ## A271471.P7291950237268213124

`∩[A102183(n+1), A271328(n+1)]`
-/

namespace A271471.P7291950237268213124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271471.P7291950237268213124

/-!
# A271472: Binary representation of n in base i-1.

The programs for A271472, there is no canonical definition to state claims against.
-/

/-! ## A271472.P4767510968144004026

`A007088(A066321(n))`
-/

namespace A271472.P4767510968144004026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A066321 n).toNat

end

end A271472.P4767510968144004026

/-! ## A271472.P15223336736269251855

`A185544(2*A066321(n))`
-/

namespace A271472.P15223336736269251855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A066321 n).toNat

end

end A271472.P15223336736269251855

/-! ## A271472.P15446480565268999797

`A007088(A256441(4*n)/16)`
-/

namespace A271472.P15446480565268999797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A256441 (4 * n) : ℚ) / 16)).toNat

end

end A271472.P15446480565268999797

/-! ## A271472.P15968166930136249853

`A185544(2*A256441(4*n)/16)`
-/

namespace A271472.P15968166930136249853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.roundAway (2 * ((A256441 (4 * n) : ℚ) / 16))).toNat

end

end A271472.P15968166930136249853

/-! ## A271472.P5171143578809108049

`A185544(A066321(n)+A066321(n))`
-/

namespace A271472.P5171143578809108049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A066321 n + A066321 n).toNat

end

end A271472.P5171143578809108049

/-!
# A271473: a(1)=0; thereafter a(2k)=k+a(k), a(2k+1)=k+a(6k+4).

The programs for A271473, there is no canonical definition to state claims against.
-/

/-! ## A271473.P6306072884630360648

`(A033493(n+1)-A078719(n+1))/2`
-/

namespace A271473.P6306072884630360648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033493 (n + 1) - A078719 (n + 1) : ℚ) / 2

end

end A271473.P6306072884630360648

/-! ## A271473.P4123418452543475928

`A004524(A033493(n+1)-A006667(n+1))`
-/

namespace A271473.P4123418452543475928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A033493 (n + 1) - A006667 (n + 1)).toNat

end

end A271473.P4123418452543475928

/-! ## A271473.P5747963155403416710

`A004526(A033493(n+1)-A006667(n+1))`
-/

namespace A271473.P5747963155403416710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033493 (n + 1) - A006667 (n + 1)).toNat

end

end A271473.P5747963155403416710

/-! ## A271473.P10627975315015781720

`A028242(A033493(n+1)-A006667(n+1))`
-/

namespace A271473.P10627975315015781720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A033493 (n + 1) - A006667 (n + 1)).toNat

end

end A271473.P10627975315015781720

/-! ## A271473.P13386400622617517806

`A057979(A033493(n+1)-A006667(n+1))`
-/

namespace A271473.P13386400622617517806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A033493 (n + 1) - A006667 (n + 1)).toNat

end

end A271473.P13386400622617517806

/-!
# A271474: Maximal number of flips required to sort a stack of n unburnt pancakes using the big-3 flips.

The programs for A271474, there is no canonical definition to state claims against.
-/

/-! ## A271474.P17306659240567461029

`A228172(n+1)-A371188(n+1)`
-/

namespace A271474.P17306659240567461029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228172 (n + 1) - A371188 (n + 1)

end

end A271474.P17306659240567461029

/-! ## A271474.P13639447528890785163

`∑[∑[2*A257800(n)]]-A003056(n)`
-/

namespace A271474.P13639447528890785163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 n

end

end A271474.P13639447528890785163

/-! ## A271474.P7419205739334203291

`A237118(2*n)+A238598(n+1)-A238598(2*n)`
-/

namespace A271474.P7419205739334203291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237118 (2 * n) + (A238598 (n + 1) - A238598 (2 * n))

end

end A271474.P7419205739334203291

/-! ## A271474.P16073450850229575490

`∑[A137325(3*n+4)]-(comp[∑[n]]-n)`
-/

namespace A271474.P16073450850229575490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137325 (3 * n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ))

end

end A271474.P16073450850229575490

/-! ## A271474.P6978254070407024112

`eq[Δ[A055034(n+1)], A026829(n)]`
-/

namespace A271474.P6978254070407024112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A271474.P6978254070407024112

/-!
# A271475: Total number of burnt pancakes flipped using the Max(n) greedy algorithm.

The programs for A271475, there is no canonical definition to state claims against.
-/

/-! ## A271475.P12125704530276779271

`∑[n!*∑[n]]+n!*∑[n]`
-/

namespace A271475.P12125704530276779271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A271475.P12125704530276779271

/-! ## A271475.P4634513675611716748

`∑[n/2*∏[n+1]]+n/2*∏[n+1]`
-/

namespace A271475.P4634513675611716748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A271475.P4634513675611716748

/-! ## A271475.P8280824808752682912

`(A062119(n+1)+∑[A062119(n+1)])/2`
-/

namespace A271475.P8280824808752682912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062119 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A271475.P8280824808752682912

/-!
# A271476: Total number of burnt pancakes flipped using the Min-bar(n) greedy algorithm.

The programs for A271476, the canonical program `A271476.P9140631115465867091` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271476 has offset 1).

The definition of A271476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271476.P12207906405432841010

`floor(e^(1/2)*(n+1)!*2^(n+1))-(n+1)-1`
-/

namespace A271476.P12207906405432841010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial (n + 1) : ℝ) * (2 ^ (n + 1) : ℝ)⌋ - (n + 1 : ℤ) - 1

end

end A271476.P12207906405432841010

namespace A271476

/-- `floor(e^(1/2)*(n+1)!*2^(n+1))-(n+1)-1` -/
def P12207906405432841010.Spec : Prop :=
  ∀ n, P12207906405432841010.a n = A271476 (n + 1)

end A271476

/-! ## A271476.P9140631115465867091

`A093302(n+1)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271476

/-- `A093302(n+1)/2` -/
def P9140631115465867091.Spec : Prop :=
  ∀ n, P9140631115465867091.a n = (A271476 (n + 1) : ℚ)

end A271476

/-! ## A271476.P13384232201270088067

`(2*(a(n-1)+n)+1)*(n+1)` with `a(0)=1`
-/

namespace A271476.P13384232201270088067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (a (n - 1) + n) + 1) * (n + 1)

end

end A271476.P13384232201270088067

namespace A271476

/-- `(2*(a(n-1)+n)+1)*(n+1)` -/
def P13384232201270088067.Spec : Prop :=
  ∀ n, (P13384232201270088067.a n : ℤ) = A271476 (n + 1)

end A271476

/-! ## A271476.P7592888979229821618

`∑[Δ[A010844(n)]-1]`
-/

namespace A271476.P7592888979229821618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271476.P7592888979229821618

namespace A271476

/-- `∑[Δ[A010844(n)]-1]` -/
def P7592888979229821618.Spec : Prop :=
  ∀ n, P7592888979229821618.a n = A271476 (n + 1)

end A271476

/-! ## A271476.P17495734301845561226

`Δ[∑[A093302(n)]/2]`
-/

namespace A271476.P17495734301845561226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093302 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271476.P17495734301845561226

namespace A271476

/-- `Δ[∑[A093302(n)]/2]` -/
def P17495734301845561226.Spec : Prop :=
  ∀ n, P17495734301845561226.a n = (A271476 (n + 1) : ℚ)

end A271476

/-! ## A271476.P3496278516209213855

`(A007566(n+1)-1)/2`
-/

namespace A271476.P3496278516209213855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007566 (n + 1) - 1 : ℚ) / 2

end

end A271476.P3496278516209213855

namespace A271476

/-- `(A007566(n+1)-1)/2` -/
def P3496278516209213855.Spec : Prop :=
  ∀ n, P3496278516209213855.a n = (A271476 (n + 1) : ℚ)

end A271476

/-! ## A271476.P8502181309174721440

`A077138(2*(n+1))/2`
-/

namespace A271476.P8502181309174721440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077138 (2 * (n + 1)) : ℚ) / 2

end

end A271476.P8502181309174721440

namespace A271476

/-- `A077138(2*(n+1))/2` -/
def P8502181309174721440.Spec : Prop :=
  ∀ n, P8502181309174721440.a n = (A271476 (n + 1) : ℚ)

end A271476

/-! ## A271476.P12545634490797824922

`A010844(n+1)-(n+2)`
-/

namespace A271476.P12545634490797824922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 (n + 1) - (n + 2 : ℤ)

end

end A271476.P12545634490797824922

namespace A271476

/-- `A010844(n+1)-(n+2)` -/
def P12545634490797824922.Spec : Prop :=
  ∀ n, P12545634490797824922.a n = A271476 (n + 1)

end A271476

/-! ## A271476.P16423886827187052556

`(n+1)*A085644(n+1)`
-/

namespace A271476.P16423886827187052556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085644 (n + 1)

end

end A271476.P16423886827187052556

namespace A271476

/-- `(n+1)*A085644(n+1)` -/
def P16423886827187052556.Spec : Prop :=
  ∀ n, P16423886827187052556.a n = A271476 (n + 1)

end A271476

/-! ## A271476.P8652124976830830060

`(n+1)*A077138(Δ[n²])`
-/

namespace A271476.P8652124976830830060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A271476.P8652124976830830060

namespace A271476

/-- `(n+1)*A077138(Δ[n²])` -/
def P8652124976830830060.Spec : Prop :=
  ∀ n, P8652124976830830060.a n = A271476 (n + 1)

end A271476

/-!
# A271477: Total number of burnt pancakes flipped using the Max-bar(n) greedy algorithm.

The programs for A271477, there is no canonical definition to state claims against.
-/

/-! ## A271477.P17844404255137189690

`∑[2^n*n!*A001844(n)]`
-/

namespace A271477.P17844404255137189690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271477.P17844404255137189690

/-! ## A271477.P12421496514914631547

`∑[A000165(n)*A001844(n)]`
-/

namespace A271477.P12421496514914631547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271477.P12421496514914631547

/-! ## A271477.P5184116470115484304

`∑[A000165(n)*A016813(∑[n])]`
-/

namespace A271477.P5184116470115484304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A016813 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271477.P5184116470115484304

/-! ## A271477.P17758187517309790426

`∑[Δ[A005900(n)]*A000165(n)]`
-/

namespace A271477.P17758187517309790426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271477.P17758187517309790426

/-! ## A271477.P5394854458614356846

`∑[A000165(n)*A228564(2*n+1)]`
-/

namespace A271477.P5394854458614356846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A228564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271477.P5394854458614356846

/-! ## A271477.P14563145948380704204

`∑[A000165(n)+n*A000165(n+1)]`
-/

namespace A271477.P14563145948380704204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n + (n : ℤ) * A000165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271477.P14563145948380704204

/-!
# A271478: If n is even, a(n)=n/2, otherwise 2*n+2.

The programs for A271478, the canonical program `A271478.P8847257924002751223` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271478 has offset 0).

The definition of A271478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271478.P8847257924002751223

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271478

/-- `2*a(n-2)-a(n-4)` -/
def P8847257924002751223.Spec : Prop :=
  ∀ n, P8847257924002751223.a n = A271478 n

theorem P8847257924002751223.correct : P8847257924002751223.Spec := by
  intro n
  simp only [A271478]

end A271478

/-! ## A271478.P9558473345548194845

`(5*n-(-1)^n*(3*n+4)+4)/4`
-/

namespace A271478.P9558473345548194845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - (-1) ^ n * (3 * n + 4 : ℤ) + 4 : ℚ) / 4

end

end A271478.P9558473345548194845

namespace A271478

/-- `(5*n-(-1)^n*(3*n+4)+4)/4` -/
def P9558473345548194845.Spec : Prop :=
  ∀ n, P9558473345548194845.a n = (A271478 n : ℚ)

theorem P9558473345548194845.correct : P9558473345548194845.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A271478, Nat.add_sub_cancel, A271478.P9558473345548194845.a, A271478.P8847257924002751223.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A271478, Nat.add_sub_cancel, A271478.P9558473345548194845.a, A271478.P8847257924002751223.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271478

/-! ## A271478.P5796879693314360198

`4^(n%2)*∑[n%2]`
-/

namespace A271478.P5796879693314360198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271478.P5796879693314360198

namespace A271478

/-- `4^(n%2)*∑[n%2]` -/
def P5796879693314360198.Spec : Prop :=
  ∀ n, (P5796879693314360198.a n : ℤ) = A271478 n

end A271478

/-! ## A271478.P4898143712936314169

`∑[∑[ogf((4x+x^2)/(1+2x+x^2))]]`
-/

namespace A271478.P4898143712936314169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271478.P4898143712936314169

namespace A271478

/-- `∑[∑[ogf((4x+x^2)/(1+2x+x^2))]]` -/
def P4898143712936314169.Spec : Prop :=
  ∀ n, P4898143712936314169.a n = A271478 n

end A271478

/-! ## A271478.P2105059378562304529

`ogf((4x+x^2)/(1-2x^2+x^4))`
-/

namespace A271478.P2105059378562304529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, 0, -2, 0, 1] n

end

end A271478.P2105059378562304529

namespace A271478

/-- `ogf((4x+x^2)/(1-2x^2+x^4))` -/
def P2105059378562304529.Spec : Prop :=
  ∀ n, P2105059378562304529.a n = A271478 n

end A271478

/-! ## A271478.P10403800451635912950

`a(gcd(2, n))+a(n-2)` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A271478.P10403800451635912950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1] fun n a =>
  a (Nat.gcd 2 n) + a (n - 2)

end

end A271478.P10403800451635912950

namespace A271478

/-- `a(gcd(2, n))+a(n-2)` -/
def P10403800451635912950.Spec : Prop :=
  ∀ n, (P10403800451635912950.a n : ℤ) = A271478 n

end A271478

/-! ## A271478.P14332983828267643401

`∑[3*n+4]%(3*n+4)`
-/

namespace A271478.P14332983828267643401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (3 * n + 4)

end

end A271478.P14332983828267643401

namespace A271478

/-- `∑[3*n+4]%(3*n+4)` -/
def P14332983828267643401.Spec : Prop :=
  ∀ n, (P14332983828267643401.a n : ℤ) = A271478 n

end A271478

/-! ## A271478.P2394513323119794481

`a(n-2)-(gcd(4, n²)-5)` with `a(0)=0, a(1)=4`
-/

namespace A271478.P2394513323119794481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) - ((Nat.gcd 4 (n ^ 2) : ℤ) - 5)

end

end A271478.P2394513323119794481

namespace A271478

/-- `a(n-2)-(gcd(4, n²)-5)` -/
def P2394513323119794481.Spec : Prop :=
  ∀ n, P2394513323119794481.a n = A271478 n

end A271478

/-! ## A271478.P800845143085732165

`floor((n+1)²/(a(n-1)+1))` with `a(0)=0`
-/

namespace A271478.P800845143085732165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) / (a (n - 1) + 1 : ℚ)⌋

end

end A271478.P800845143085732165

namespace A271478

/-- `floor((n+1)²/(a(n-1)+1))` -/
def P800845143085732165.Spec : Prop :=
  ∀ n, P800845143085732165.a n = A271478 n

end A271478

/-! ## A271478.P1980533892408297642

`gcd(n+1, n-1)²*∑[and(1, n)]`
-/

namespace A271478.P1980533892408297642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271478.P1980533892408297642

namespace A271478

/-- `gcd(n+1, n-1)²*∑[and(1, n)]` -/
def P1980533892408297642.Spec : Prop :=
  ∀ n, (P1980533892408297642.a n : ℤ) = A271478 n

end A271478

/-! ## A271478.P3689862928187691098

`∑[5-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A271478.P3689862928187691098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A271478.P3689862928187691098

namespace A271478

/-- `∑[5-a(n-1)]-a(n-1)` -/
def P3689862928187691098.Spec : Prop :=
  ∀ n, P3689862928187691098.a n = A271478 n

end A271478

/-! ## A271478.P15193899644815973721

`floor(lcm(4, n*(n+2))/(2*n+1))`
-/

namespace A271478.P15193899644815973721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 4 (n * (n + 2)) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A271478.P15193899644815973721

namespace A271478

/-- `floor(lcm(4, n*(n+2))/(2*n+1))` -/
def P15193899644815973721.Spec : Prop :=
  ∀ n, P15193899644815973721.a n = A271478 n

end A271478

/-! ## A271478.P10612294640263529976

`a(n-2)+(2-(n+1)%2)²` with `a(0)=0, a(1)=4`
-/

namespace A271478.P10612294640263529976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + (2 - (((n + 1) % 2 : ℕ) : ℤ)) ^ 2

end

end A271478.P10612294640263529976

namespace A271478

/-- `a(n-2)+(2-(n+1)%2)²` -/
def P10612294640263529976.Spec : Prop :=
  ∀ n, P10612294640263529976.a n = A271478 n

end A271478

/-! ## A271478.P4765537554660816114

`floor(2*(n+1)/gcd(2*n, (n+2)²))`
-/

namespace A271478.P4765537554660816114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℚ) / (Nat.gcd (2 * n) ((n + 2) ^ 2) : ℚ))⌋

end

end A271478.P4765537554660816114

namespace A271478

/-- `floor(2*(n+1)/gcd(2*n, (n+2)²))` -/
def P4765537554660816114.Spec : Prop :=
  ∀ n, P4765537554660816114.a n = A271478 n

end A271478

/-! ## A271478.P10523832029024604886

`a(n-2)+a((a(n-2)+n)%3)` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A271478.P10523832029024604886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1] fun n a =>
  a (n - 2) + a ((a (n - 2) + n) % 3)

end

end A271478.P10523832029024604886

namespace A271478

/-- `a(n-2)+a((a(n-2)+n)%3)` -/
def P10523832029024604886.Spec : Prop :=
  ∀ n, (P10523832029024604886.a n : ℤ) = A271478 n

end A271478

/-! ## A271478.P5178994983029043257

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=8`
-/

namespace A271478.P5178994983029043257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1, 8] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A271478.P5178994983029043257

namespace A271478

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P5178994983029043257.Spec : Prop :=
  ∀ n, P5178994983029043257.a n = A271478 n

theorem P5178994983029043257.correct : P5178994983029043257.Spec := by
  intro n
  simp only [A271478, Nat.add_sub_cancel, A271478.P5178994983029043257.a, A271478.P8847257924002751223.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271478

/-! ## A271478.P9342017065786030989

`5-(a(n-1)-a(n-2)-a(n-3))` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A271478.P9342017065786030989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1] fun n a =>
  5 - (a (n - 1) - a (n - 2) - a (n - 3))

end

end A271478.P9342017065786030989

namespace A271478

/-- `5-(a(n-1)-a(n-2)-a(n-3))` -/
def P9342017065786030989.Spec : Prop :=
  ∀ n, P9342017065786030989.a n = A271478 n

end A271478

/-! ## A271478.P13412743931029059043

`A165367(n)-or(1, n)`
-/

namespace A271478.P13412743931029059043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n - (Nat.lor 1 n : ℤ)

end

end A271478.P13412743931029059043

namespace A271478

/-- `A165367(n)-or(1, n)` -/
def P13412743931029059043.Spec : Prop :=
  ∀ n, P13412743931029059043.a n = A271478 n

end A271478

/-! ## A271478.P1770655076867433584

`∑[n%2]*A010685(n)`
-/

namespace A271478.P1770655076867433584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010685 n

end

end A271478.P1770655076867433584

namespace A271478

/-- `∑[n%2]*A010685(n)` -/
def P1770655076867433584.Spec : Prop :=
  ∀ n, P1770655076867433584.a n = A271478 n

end A271478

/-! ## A271478.P2146075469000832816

`A064680(n)+(2*n)%4`
-/

namespace A271478.P2146075469000832816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + ((2 * n % 4 : ℕ) : ℤ)

end

end A271478.P2146075469000832816

namespace A271478

/-- `A064680(n)+(2*n)%4` -/
def P2146075469000832816.Spec : Prop :=
  ∀ n, P2146075469000832816.a n = A271478 n

end A271478

/-!
# A271479: Number of steps for the trajectory of n under the map k -> A271478(k) to reach 1.

The programs for A271479, the canonical program `A271479.P9317377697815150102` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271479 has offset 1).

The definition of A271479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271479.P9317377697815150102

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271479

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P9317377697815150102.Spec : Prop :=
  ∀ n, P9317377697815150102.a n = A271479 (n + 1)

theorem P9317377697815150102.correct : P9317377697815150102.Spec := by
  intro n
  simp only [A271479, Nat.add_sub_cancel]

end A271479

/-! ## A271479.P8644271104946459846

`A249919(2*n+1)/2-1`
-/

namespace A271479.P8644271104946459846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249919 (2 * n + 1) : ℚ) / 2 - 1

end

end A271479.P8644271104946459846

namespace A271479

/-- `A249919(2*n+1)/2-1` -/
def P8644271104946459846.Spec : Prop :=
  ∀ n, P8644271104946459846.a n = (A271479 (n + 1) : ℚ)

end A271479

/-! ## A271479.P13703142887035462508

`A080791(n)+A061313(n+1)`
-/

namespace A271479.P13703142887035462508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A061313 (n + 1)

end

end A271479.P13703142887035462508

namespace A271479

/-- `A080791(n)+A061313(n+1)` -/
def P13703142887035462508.Spec : Prop :=
  ∀ n, P13703142887035462508.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P9338861103951500817

`A014682(A249919(2*n+1))-1`
-/

namespace A271479.P9338861103951500817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A249919 (2 * n + 1)).toNat - 1

end

end A271479.P9338861103951500817

namespace A271479

/-- `A014682(A249919(2*n+1))-1` -/
def P9338861103951500817.Spec : Prop :=
  ∀ n, P9338861103951500817.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P1176700321147897824

`A029837(n+1)+2*A080791(n)`
-/

namespace A271479.P1176700321147897824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + 2 * A080791 n

end

end A271479.P1176700321147897824

namespace A271479

/-- `A029837(n+1)+2*A080791(n)` -/
def P1176700321147897824.Spec : Prop :=
  ∀ n, P1176700321147897824.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P14864445511061408478

`2*A029837(n+1)-A145037(n)`
-/

namespace A271479.P14864445511061408478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029837 (n + 1) - A145037 n

end

end A271479.P14864445511061408478

namespace A271479

/-- `2*A029837(n+1)-A145037(n)` -/
def P14864445511061408478.Spec : Prop :=
  ∀ n, P14864445511061408478.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P17195969104730410654

`2*A061313(n+1)-A029837(n+1)`
-/

namespace A271479.P17195969104730410654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061313 (n + 1) - A029837 (n + 1)

end

end A271479.P17195969104730410654

namespace A271479

/-- `2*A061313(n+1)-A029837(n+1)` -/
def P17195969104730410654.Spec : Prop :=
  ∀ n, P17195969104730410654.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P18329204005797765484

`A014682(A249919(n)%A155753(n+1))`
-/

namespace A271479.P18329204005797765484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A249919 n) (A155753 (n + 1))).toNat

end

end A271479.P18329204005797765484

namespace A271479

/-- `A014682(A249919(n)%A155753(n+1))` -/
def P18329204005797765484.Spec : Prop :=
  ∀ n, P18329204005797765484.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P13519010973633206057

`A324467(n-A006257(n))+A000120(n)`
-/

namespace A271479.P13519010973633206057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 ((n : ℤ) - A006257 n).toNat + A000120 n

end

end A271479.P13519010973633206057

namespace A271479

/-- `A324467(n-A006257(n))+A000120(n)` -/
def P13519010973633206057.Spec : Prop :=
  ∀ n, P13519010973633206057.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P6410410081807713859

`A029837(n+1)+A061313(n+1)-A000120(n)`
-/

namespace A271479.P6410410081807713859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A061313 (n + 1) - A000120 n)

end

end A271479.P6410410081807713859

namespace A271479

/-- `A029837(n+1)+A061313(n+1)-A000120(n)` -/
def P6410410081807713859.Spec : Prop :=
  ∀ n, P6410410081807713859.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P12852359744806711528

`A080791(A062383(n))+2*A080791(n)`
-/

namespace A271479.P12852359744806711528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A062383 n).toNat + 2 * A080791 n

end

end A271479.P12852359744806711528

namespace A271479

/-- `A080791(A062383(n))+2*A080791(n)` -/
def P12852359744806711528.Spec : Prop :=
  ∀ n, P12852359744806711528.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P4838197006808505253

`A265340(A263273(n))+2*A080791(n)`
-/

namespace A271479.P4838197006808505253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 (A263273 n).toNat + 2 * A080791 n

end

end A271479.P4838197006808505253

namespace A271479

/-- `A265340(A263273(n))+2*A080791(n)` -/
def P4838197006808505253.Spec : Prop :=
  ∀ n, P4838197006808505253.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P9117602453230901791

`floor(log2(A080303(2*n+1)))`
-/

namespace A271479.P9117602453230901791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A080303 (2 * n + 1)).toNat

end

end A271479.P9117602453230901791

namespace A271479

/-- `floor(log2(A080303(2*n+1)))` -/
def P9117602453230901791.Spec : Prop :=
  ∀ n, (P9117602453230901791.a n : ℤ) = A271479 (n + 1)

end A271479

/-! ## A271479.P3235934277068250214

`floor(log2(A080303(2*n)))-2`
-/

namespace A271479.P3235934277068250214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A080303 (2 * n)).toNat : ℤ) - 2

end

end A271479.P3235934277068250214

namespace A271479

/-- `floor(log2(A080303(2*n)))-2` -/
def P3235934277068250214.Spec : Prop :=
  ∀ n, P3235934277068250214.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P8463047010358092528

`A061313(n+1)+A023416(2*n+1)`
-/

namespace A271479.P8463047010358092528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1) + A023416 (2 * n + 1)

end

end A271479.P8463047010358092528

namespace A271479

/-- `A061313(n+1)+A023416(2*n+1)` -/
def P8463047010358092528.Spec : Prop :=
  ∀ n, P8463047010358092528.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P5727567561149330083

`A000523(2*n+1)+2*A080791(n)`
-/

namespace A271479.P5727567561149330083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) + 2 * A080791 n

end

end A271479.P5727567561149330083

namespace A271479

/-- `A000523(2*n+1)+2*A080791(n)` -/
def P5727567561149330083.Spec : Prop :=
  ∀ n, P5727567561149330083.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P12143692590498169869

`A061313(2*(n+1))+A008687(n+1)-2`
-/

namespace A271479.P12143692590498169869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (2 * (n + 1)) + (A008687 (n + 1) - 2)

end

end A271479.P12143692590498169869

namespace A271479

/-- `A061313(2*(n+1))+A008687(n+1)-2` -/
def P12143692590498169869.Spec : Prop :=
  ∀ n, P12143692590498169869.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P4432473761673466169

`A000523(2*n+1)+2*A023416(2*n+1)`
-/

namespace A271479.P4432473761673466169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) + 2 * A023416 (2 * n + 1)

end

end A271479.P4432473761673466169

namespace A271479

/-- `A000523(2*n+1)+2*A023416(2*n+1)` -/
def P4432473761673466169.Spec : Prop :=
  ∀ n, P4432473761673466169.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P11691458588878808043

`A008585(A023416(2*n+1))+A000120(n)`
-/

namespace A271479.P11691458588878808043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A023416 (2 * n + 1)).toNat + A000120 n

end

end A271479.P11691458588878808043

namespace A271479

/-- `A008585(A023416(2*n+1))+A000120(n)` -/
def P11691458588878808043.Spec : Prop :=
  ∀ n, P11691458588878808043.a n = A271479 (n + 1)

end A271479

/-! ## A271479.P976880278978541876

`A014682(A249919(n)%A078410(n))`
-/

namespace A271479.P976880278978541876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A249919 n) (A078410 n)).toNat

end

end A271479.P976880278978541876

namespace A271479

/-- `A014682(A249919(n)%A078410(n))` -/
def P976880278978541876.Spec : Prop :=
  ∀ n, P976880278978541876.a n = A271479 (n + 1)

end A271479

/-!
# A271480: Dimension of n-qubit subspace H^{MPS}_{2,n} for bond dimension 2.

The programs for A271480, the canonical program `A271480.P2043002630880362117` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271480 has offset 0).

The definition of A271480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271480.P13073974793345318135

`∑[∑[floor((n/2)²)]+1]`
-/

namespace A271480.P13073974793345318135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271480.P13073974793345318135

namespace A271480

/-- `∑[∑[floor((n/2)²)]+1]` -/
def P13073974793345318135.Spec : Prop :=
  ∀ n, P13073974793345318135.a n = A271480 n

end A271480

/-! ## A271480.P1726268742977874035

`floor(∑[a(n-2)+∑[n]-n])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A271480.P1726268742977874035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271480.P1726268742977874035

namespace A271480

/-- `floor(∑[a(n-2)+∑[n]-n])` -/
def P1726268742977874035.Spec : Prop :=
  ∀ n, P1726268742977874035.a n = A271480 n

end A271480

/-! ## A271480.P8235139537755584395

`floor(∑[∑[n]-(n-a(n-2))])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A271480.P8235139537755584395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271480.P8235139537755584395

namespace A271480

/-- `floor(∑[∑[n]-(n-a(n-2))])` -/
def P8235139537755584395.Spec : Prop :=
  ∀ n, P8235139537755584395.a n = A271480 n

end A271480

/-! ## A271480.P17126838673097113077

`a(n-2)+C(n+1, 3)+2` with `a(0)=1, a(1)=2`
-/

namespace A271480.P17126838673097113077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (Nat.choose (n + 1) 3 + 2)

end

end A271480.P17126838673097113077

namespace A271480

/-- `a(n-2)+C(n+1, 3)+2` -/
def P17126838673097113077.Spec : Prop :=
  ∀ n, (P17126838673097113077.a n : ℤ) = A271480 n

end A271480

/-! ## A271480.P14316821645837516927

`∑[∑[∑[a(n-2)+1]]]+n+1` with `a(0)=0, a(1)=0`
-/

namespace A271480.P14316821645837516927
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f3 =>
  f3 (n - 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A271480.P14316821645837516927

namespace A271480

/-- `∑[∑[∑[a(n-2)+1]]]+n+1` -/
def P14316821645837516927.Spec : Prop :=
  ∀ n, (P14316821645837516927.a n : ℤ) = A271480 n

end A271480

/-! ## A271480.P2043002630880362117

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271480

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P2043002630880362117.Spec : Prop :=
  ∀ n, P2043002630880362117.a n = A271480 n

theorem P2043002630880362117.correct : P2043002630880362117.Spec := by
  intro n
  simp only [A271480]

end A271480

/-! ## A271480.P7571822886748803322

`∑[∑[A002620(n)]]+1+n`
-/

namespace A271480.P7571822886748803322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A271480.P7571822886748803322

namespace A271480

/-- `∑[∑[A002620(n)]]+1+n` -/
def P7571822886748803322.Spec : Prop :=
  ∀ n, P7571822886748803322.a n = A271480 n

end A271480

/-! ## A271480.P14574199752447896178

`A001752(n)-∑[∑[n]+n]`
-/

namespace A271480.P14574199752447896178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271480.P14574199752447896178

namespace A271480

/-- `A001752(n)-∑[∑[n]+n]` -/
def P14574199752447896178.Spec : Prop :=
  ∀ n, P14574199752447896178.a n = A271480 n

end A271480

/-! ## A271480.P12823217215281404761

`A101338(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A271480.P12823217215281404761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101338 n - a (n - 1) + (n : ℤ)

end

end A271480.P12823217215281404761

namespace A271480

/-- `A101338(n)-a(n-1)+n` -/
def P12823217215281404761.Spec : Prop :=
  ∀ n, P12823217215281404761.a n = A271480 n

end A271480

/-! ## A271480.P3457790385339844436

`∑[∑[∑[A014682(n)%(n+1)]]]+n+1`
-/

namespace A271480.P3457790385339844436
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 n) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A271480.P3457790385339844436

namespace A271480

/-- `∑[∑[∑[A014682(n)%(n+1)]]]+n+1` -/
def P3457790385339844436.Spec : Prop :=
  ∀ n, P3457790385339844436.a n = A271480 n

end A271480

/-! ## A271480.P9843243568171019204

`∑[∑[∑[A002265(2*n)]]]+1+n`
-/

namespace A271480.P9843243568171019204
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A271480.P9843243568171019204

namespace A271480

/-- `∑[∑[∑[A002265(2*n)]]]+1+n` -/
def P9843243568171019204.Spec : Prop :=
  ∀ n, P9843243568171019204.a n = A271480 n

end A271480

/-! ## A271480.P3757975218999962444

`∑[∑[A002265(n²)]]+1+n`
-/

namespace A271480.P3757975218999962444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A271480.P3757975218999962444

namespace A271480

/-- `∑[∑[A002265(n²)]]+1+n` -/
def P3757975218999962444.Spec : Prop :=
  ∀ n, P3757975218999962444.a n = A271480 n

end A271480

/-!
# A271481: Dimension of n-qubit subspace H^{MPS}_{3,n} for bond dimension 3.

The programs for A271481, there is no canonical definition to state claims against.
-/

/-! ## A271481.P3611623722204635783

`A000051(n)-A085731(A131893(n))`
-/

namespace A271481.P3611623722204635783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A085731 (A131893 n).toNat

end

end A271481.P3611623722204635783

/-! ## A271481.P18296629365812159472

`record[(2^floor(n/2))%A338910(2*n+1)]`
-/

namespace A271481.P18296629365812159472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A338910 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271481.P18296629365812159472

/-! ## A271481.P6759954632782100407

`2^n-A127324(A000111(n))`
-/

namespace A271481.P6759954632782100407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A127324 (A000111 n).toNat

end

end A271481.P6759954632782100407

/-! ## A271481.P12511658946757177769

`2^n-A185236(A275072(n))`
-/

namespace A271481.P12511658946757177769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A185236 (A275072 n).toNat

end

end A271481.P12511658946757177769

/-!
# A271482: Dimension of n-qubit subspace H^{MPS}_{4,n} for bond dimension 4.

The programs for A271482, there is no canonical definition to state claims against.
-/

/-! ## A271482.P11605245962919558161

`A000051(n)-A000330(A280704(2*n+3))`
-/

namespace A271482.P11605245962919558161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A000330 (A280704 (2 * n + 3)).toNat

end

end A271482.P11605245962919558161

/-! ## A271482.P14534369590968609654

`record[A011782(n)%A127027(2*n+3)]`
-/

namespace A271482.P14534369590968609654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A127027 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271482.P14534369590968609654

/-! ## A271482.P317512505142597705

`record[A000079(n)%A127027(2*n+5)]`
-/

namespace A271482.P317512505142597705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A127027 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271482.P317512505142597705

/-!
# A271483: Dimension of n-qubit quotient space Q_{3,n} for bond dimension 3.

The programs for A271483, there is no canonical definition to state claims against.
-/

/-! ## A271483.P12072863400645966148

`A289814(A261589(n)-A098642(n))`
-/

namespace A271483.P12072863400645966148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A261589 n - A098642 n).toNat

end

end A271483.P12072863400645966148

/-! ## A271483.P4958605936198153052

`A002775(n)%A204006(A148279(n))`
-/

namespace A271483.P4958605936198153052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002775 n) (A204006 (A148279 n).toNat)

end

end A271483.P4958605936198153052

/-! ## A271483.P3077902465332936306

`A000196(C((1-round(sqrt(2*(n+1))))²+2*n+1, n+15))`
-/

namespace A271483.P3077902465332936306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat (n + 15))

end

end A271483.P3077902465332936306

/-! ## A271483.P12304641591496142940

`A191878(A229885(n))`
-/

namespace A271483.P12304641591496142940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191878 (A229885 n).toNat

end

end A271483.P12304641591496142940

/-! ## A271483.P6883078380154253621

`A161995(A349053(n))`
-/

namespace A271483.P6883078380154253621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161995 (A349053 n).toNat

end

end A271483.P6883078380154253621

/-!
# A271484: Expansion of x^5/((1-x^2)*(1-x^4))+x^10/((1-x^4)*(1-x^6)).

The programs for A271484, the canonical program `A271484.P10642354924052871060` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271484 has offset 0).

The definition of A271484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271484.P10642354924052871060

`A059169(n+1)%A008620(A026741(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A271484

/-- `A059169(n+1)%A008620(A026741(n))` -/
def P10642354924052871060.Spec : Prop :=
  ∀ n, P10642354924052871060.a n = A271484 n

theorem P10642354924052871060.correct : P10642354924052871060.Spec := by
  intro n
  simp only [A271484]

end A271484

/-! ## A271484.P1222856792433378133

`A065033(A065033(n))-A008620(A142150(n))`
-/

namespace A271484.P1222856792433378133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n).toNat - A008620 (A142150 n).toNat

end

end A271484.P1222856792433378133

namespace A271484

/-- `A065033(A065033(n))-A008620(A142150(n))` -/
def P1222856792433378133.Spec : Prop :=
  ∀ n, P1222856792433378133.a n = A271484 n

end A271484

/-! ## A271484.P1271352144647562838

`A065033(A065033(n))-A152271(A008611(n))`
-/

namespace A271484.P1271352144647562838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n).toNat - A152271 (A008611 n).toNat

end

end A271484.P1271352144647562838

namespace A271484

/-- `A065033(A065033(n))-A152271(A008611(n))` -/
def P1271352144647562838.Spec : Prop :=
  ∀ n, P1271352144647562838.a n = A271484 n

end A271484

/-! ## A271484.P2854882783854937087

`A002264(A151972(n+3)%A026741(n+2))`
-/

namespace A271484.P2854882783854937087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A151972 (n + 3)) (A026741 (n + 2))).toNat

end

end A271484.P2854882783854937087

namespace A271484

/-- `A002264(A151972(n+3)%A026741(n+2))` -/
def P2854882783854937087.Spec : Prop :=
  ∀ n, P2854882783854937087.a n = A271484 n

end A271484

/-! ## A271484.P12227475749602666738

`A037813(A330078(n+1))`
-/

namespace A271484.P12227475749602666738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A330078 (n + 1)).toNat

end

end A271484.P12227475749602666738

namespace A271484

/-- `A037813(A330078(n+1))` -/
def P12227475749602666738.Spec : Prop :=
  ∀ n, P12227475749602666738.a n = A271484 n

end A271484

/-!
# A271485: Maximal term of TRIP-Stern sequence of level n corresponding to permutation triple (e,13,e).

The programs for A271485, the canonical program `A271485.P8147869538673840856` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271485 has offset 0).

The definition of A271485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271485.P8147869538673840856

`2*a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271485

/-- `2*a(n-2)+a(n-4)-a(n-6)` -/
def P8147869538673840856.Spec : Prop :=
  ∀ n, P8147869538673840856.a n = A271485 n

theorem P8147869538673840856.correct : P8147869538673840856.Spec := by
  intro n
  simp only [A271485]

end A271485

/-! ## A271485.P5056391919872395289

`∑[A187069(n+2)]+1`
-/

namespace A271485.P5056391919872395289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271485.P5056391919872395289

namespace A271485

/-- `∑[A187069(n+2)]+1` -/
def P5056391919872395289.Spec : Prop :=
  ∀ n, P5056391919872395289.a n = A271485 n

end A271485

/-! ## A271485.P166737147555749653

`∑[A187069(A028310(n)+2)]`
-/

namespace A271485.P166737147555749653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (A028310 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271485.P166737147555749653

namespace A271485

/-- `∑[A187069(A028310(n)+2)]` -/
def P166737147555749653.Spec : Prop :=
  ∀ n, P166737147555749653.a n = A271485 n

end A271485

/-! ## A271485.P7144826907118567962

`∑[A187069(A266977(2*n))]`
-/

namespace A271485.P7144826907118567962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (A266977 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271485.P7144826907118567962

namespace A271485

/-- `∑[A187069(A266977(2*n))]` -/
def P7144826907118567962.Spec : Prop :=
  ∀ n, P7144826907118567962.a n = A271485 n

end A271485

/-! ## A271485.P2127003443378486082

`A038196(n+1)+A006054(A008619(n+1))`
-/

namespace A271485.P2127003443378486082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (n + 1) + A006054 (A008619 (n + 1)).toNat

end

end A271485.P2127003443378486082

namespace A271485

/-- `A038196(n+1)+A006054(A008619(n+1))` -/
def P2127003443378486082.Spec : Prop :=
  ∀ n, P2127003443378486082.a n = A271485 n

end A271485

/-! ## A271485.P2619914726057688918

`∪[A033303(n), A106805(n)]`
-/

namespace A271485.P2619914726057688918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271485.P2619914726057688918

namespace A271485

/-- `∪[A033303(n), A106805(n)]` -/
def P2619914726057688918.Spec : Prop :=
  ∀ n, (P2619914726057688918.a n : ℤ) = A271485 n

end A271485

/-!
# A271486: Maximal term of TRIP-Stern sequence of level n corresponding to permutation triple (e,13,23).

The programs for A271486, there is no canonical definition to state claims against.
-/

/-! ## A271486.P13403265834706736353

`A325044(A003106(2*(n+2)))-1`
-/

namespace A271486.P13403265834706736353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (A003106 (2 * (n + 2))).toNat - 1

end

end A271486.P13403265834706736353

/-! ## A271486.P8641723453973154978

`A003059(or(A180272(n), A293313(n)))`
-/

namespace A271486.P8641723453973154978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.lor (A180272 n) (A293313 n)).toNat

end

end A271486.P8641723453973154978

/-! ## A271486.P9844687112671730448

`ceil(sqrt(sqrt(A273602(2^n-1))))`
-/

namespace A271486.P9844687112671730448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A273602 (2 ^ n - 1) : ℝ))⌉

end

end A271486.P9844687112671730448

/-! ## A271486.P14209204235145616859

`round(sqrt(A067747(3*2^n-2)))`
-/

namespace A271486.P14209204235145616859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A067747 (3 * 2 ^ n - 2) : ℝ))

end

end A271486.P14209204235145616859

/-! ## A271486.P16389520901268322950

`A180447(A081661(n+1))`
-/

namespace A271486.P16389520901268322950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A081661 (n + 1)).toNat

end

end A271486.P16389520901268322950

/-!
# A271487: Maximal term of TRIP-Stern sequence of level n corresponding to permutation triple (e,13,132).

The programs for A271487, the canonical program `A271487.P10705224903021930088` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271487 has offset 0).

The definition of A271487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271487.P10705224903021930088

`2*a(n-3)+2*a(n-6)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8, a(6)=11, a(7)=17, a(8)=23, a(9)=32`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271487

/-- `2*a(n-3)+2*a(n-6)+a(n-9)` -/
def P10705224903021930088.Spec : Prop :=
  ∀ n, (P10705224903021930088.a n : ℤ) = A271487 n

theorem P10705224903021930088.correct : P10705224903021930088.Spec := by
  intro n
  simp only [A271487]

end A271487

/-! ## A271487.P14960134000741825016

`∑[A050142(∑[A263284(n+1)])]`
-/

namespace A271487.P14960134000741825016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050142 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271487.P14960134000741825016

namespace A271487

/-- `∑[A050142(∑[A263284(n+1)])]` -/
def P14960134000741825016.Spec : Prop :=
  ∀ n, P14960134000741825016.a n = A271487 n

end A271487

/-! ## A271487.P11515465173799779315

`A029744(n+1)-A016422(A045968(n+1))`
-/

namespace A271487.P11515465173799779315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) - A016422 (A045968 (n + 1)).toNat

end

end A271487.P11515465173799779315

namespace A271487

/-- `A029744(n+1)-A016422(A045968(n+1))` -/
def P11515465173799779315.Spec : Prop :=
  ∀ n, P11515465173799779315.a n = A271487 n

end A271487

/-! ## A271487.P16210404282801891517

`A117173(A117143(n+5)+A117123(n+3))`
-/

namespace A271487.P16210404282801891517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (A117143 (n + 5) + A117123 (n + 3)).toNat

end

end A271487.P16210404282801891517

namespace A271487

/-- `A117173(A117143(n+5)+A117123(n+3))` -/
def P16210404282801891517.Spec : Prop :=
  ∀ n, P16210404282801891517.a n = A271487 n

end A271487

/-! ## A271487.P6405015022618835134

`A082527(A005665(n))`
-/

namespace A271487.P6405015022618835134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082527 (A005665 n).toNat

end

end A271487.P6405015022618835134

namespace A271487

/-- `A082527(A005665(n))` -/
def P6405015022618835134.Spec : Prop :=
  ∀ n, P6405015022618835134.a n = A271487 n

end A271487

/-!
# A271488: Maximal term of TRIP-Stern sequence of level n corresponding to permutation triple (e,23,e).

The programs for A271488, there is no canonical definition to state claims against.
-/

/-! ## A271488.P16523457433906592678

`record[A333347(A122200(n))]`
-/

namespace A271488.P16523457433906592678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (A122200 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271488.P16523457433906592678

/-! ## A271488.P5985061497003178213

`A204166(A036884(n+1))`
-/

namespace A271488.P5985061497003178213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A036884 (n + 1)).toNat

end

end A271488.P5985061497003178213

/-! ## A271488.P12860280280589361515

`A333347(A335680(∑[n+1]))`
-/

namespace A271488.P12860280280589361515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (A335680 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A271488.P12860280280589361515

/-! ## A271488.P14082935960745710959

`record[A333347(A195097(n+1))]`
-/

namespace A271488.P14082935960745710959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (A195097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271488.P14082935960745710959

/-! ## A271488.P14119249569532212351

`record[A333347(A339492(n+1))]`
-/

namespace A271488.P14119249569532212351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (A339492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271488.P14119249569532212351

/-!
# A271489: Maximal term of TRIP-Stern sequence of level n corresponding to permutation triple (e,132,e).

The programs for A271489, there is no canonical definition to state claims against.
-/

/-! ## A271489.P2084197860044994139

`A052810(n)-A319951(A000094(n+1))`
-/

namespace A271489.P2084197860044994139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - A319951 (A000094 (n + 1)).toNat

end

end A271489.P2084197860044994139

/-! ## A271489.P10778675459615989714

`A204166(A265052(n)-n)`
-/

namespace A271489.P10778675459615989714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A265052 n - (n : ℤ)).toNat

end

end A271489.P10778675459615989714

/-! ## A271489.P15854657777659207536

`A085736(ceil(sqrt(A336726(n))))`
-/

namespace A271489.P15854657777659207536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 ⌈Real.sqrt (A336726 n : ℝ)⌉.toNat

end

end A271489.P15854657777659207536

/-! ## A271489.P616472427304252362

`A111651(∑[∑[A050168(n)]])`
-/

namespace A271489.P616472427304252362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271489.P616472427304252362

/-! ## A271489.P14209755037554605316

`A111651(∑[A278025(n+1)+n])`
-/

namespace A271489.P14209755037554605316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278025 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271489.P14209755037554605316

/-!
# A271491: Arises in enumeration of locally convex functions.

The programs for A271491, the canonical program `A271491.P2899103092993331390` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271491 has offset 0).

The definition of A271491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271491.P2899103092993331390

`ogf((1+2x+6x^2+7x^3+4x^4+x^5)/(1-x))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271491

/-- `ogf((1+2x+6x^2+7x^3+4x^4+x^5)/(1-x))` -/
def P2899103092993331390.Spec : Prop :=
  ∀ n, P2899103092993331390.a n = A271491 n

theorem P2899103092993331390.correct : P2899103092993331390.Spec := by
  intro n
  simp only [A271491]

end A271491

/-!
# A271492: Arises in enumeration of locally convex functions.

The programs for A271492, there is no canonical definition to state claims against.
-/

/-! ## A271492.P5421701021107490952

`∑[A000070(n)²]`
-/

namespace A271492.P5421701021107490952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P5421701021107490952

/-! ## A271492.P1152039571601882450

`∑[∑[A000041(n)]²]`
-/

namespace A271492.P1152039571601882450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P1152039571601882450

/-! ## A271492.P13087337575662633699

`∑[A025065(2*n)²]`
-/

namespace A271492.P13087337575662633699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P13087337575662633699

/-! ## A271492.P9911559601570408984

`∑[∑[sqrt(A001255(n))]²]`
-/

namespace A271492.P9911559601570408984
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P9911559601570408984

/-! ## A271492.P10006073773148467941

`∑[∑[∑[A002865(n)]]²]`
-/

namespace A271492.P10006073773148467941
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P10006073773148467941

/-! ## A271492.P14444624313253474813

`∑[∑[A000065(n)+1]²]`
-/

namespace A271492.P14444624313253474813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P14444624313253474813

/-! ## A271492.P2240460894596514424

`∑[∑[A035363(2*n)]²]`
-/

namespace A271492.P2240460894596514424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P2240460894596514424

/-! ## A271492.P4527082720588603988

`∑[∑[A119620(2*n)]²]`
-/

namespace A271492.P4527082720588603988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P4527082720588603988

/-! ## A271492.P5009372914790811815

`∑[∑[A035377(3*n)]²]`
-/

namespace A271492.P5009372914790811815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P5009372914790811815

/-! ## A271492.P15727228324506716933

`∑[∑[A139582(n)/2]²]`
-/

namespace A271492.P15727228324506716933
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P15727228324506716933

/-! ## A271492.P18101855343730642225

`∑[∑[A035444(4*n)]²]`
-/

namespace A271492.P18101855343730642225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P18101855343730642225

/-! ## A271492.P1376372503557358438

`∑[(n-∑[A052810(n)])²]`
-/

namespace A271492.P1376372503557358438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P1376372503557358438

/-! ## A271492.P16726429416515774566

`∑[∑[n-A133041(n)]²]`
-/

namespace A271492.P16726429416515774566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A133041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P16726429416515774566

/-! ## A271492.P8269949141047966414

`∑[(1-A216053(n+1))²]`
-/

namespace A271492.P8269949141047966414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A216053 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P8269949141047966414

/-! ## A271492.P11162933394997025416

`∑[(A058682(n)+1+n)²]`
-/

namespace A271492.P11162933394997025416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058682 n + 1 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P11162933394997025416

/-! ## A271492.P6493685227568741107

`∑[(A182705(n+1)/(n+1))²]`
-/

namespace A271492.P6493685227568741107
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A182705 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P6493685227568741107

/-! ## A271492.P13871333891617000578

`∑[(A000097(n)-A000291(n))²]`
-/

namespace A271492.P13871333891617000578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000097 n - A000291 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P13871333891617000578

/-! ## A271492.P16690440006336782216

`∑[∑[A000041(n)]*A000070(n)]`
-/

namespace A271492.P16690440006336782216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P16690440006336782216

/-! ## A271492.P6758825873734905193

`∑[∑[A018783(n)+A000837(n)]²]`
-/

namespace A271492.P6758825873734905193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P6758825873734905193

/-! ## A271492.P13885904200571211216

`∑[∑[A039900(n)+A003106(n)]²]`
-/

namespace A271492.P13885904200571211216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271492.P13885904200571211216

/-!
# A271493: Arises in enumeration of locally convex functions.

The programs for A271493, there is no canonical definition to state claims against.
-/

/-! ## A271493.P12970817257203879989

`∑[A100795(A052528(n))]`
-/

namespace A271493.P12970817257203879989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A052528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271493.P12970817257203879989

/-! ## A271493.P17162029191692287368

`∑[A182210(A292507(n)+A067687(n))]`
-/

namespace A271493.P17162029191692287368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A292507 n + A067687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271493.P17162029191692287368

/-! ## A271493.P6404236836290210580

`A026819(A289846(n+2)-A029902(n))`
-/

namespace A271493.P6404236836290210580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A289846 (n + 2) - A029902 n).toNat

end

end A271493.P6404236836290210580

/-! ## A271493.P2064913163046035470

`A026819(A289846(n+2)-A226190(3*n+4))`
-/

namespace A271493.P2064913163046035470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A289846 (n + 2) - A226190 (3 * n + 4)).toNat

end

end A271493.P2064913163046035470

/-! ## A271493.P9637646596801679217

`A055086(A034182(n+1))-n`
-/

namespace A271493.P9637646596801679217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A034182 (n + 1)).toNat - (n : ℤ)

end

end A271493.P9637646596801679217

/-!
# A271494: Expansion of (1+16*x)/((1+4*x)*(1-8*x)).

The programs for A271494, the canonical program `A271494.P16146821468493458528` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271494 has offset 0).

The definition of A271494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+16x)/(1-4x-32x^2))` (program `A271494.P16146821468493458528`, by `A271494.P16146821468493458528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271494.P16146821468493458528

`ogf((1+16x)/(1-4x-32x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271494

/-- `ogf((1+16x)/(1-4x-32x^2))` -/
def P16146821468493458528.Spec : Prop :=
  ∀ n, P16146821468493458528.a n = A271494 n

theorem P16146821468493458528.correct : P16146821468493458528.Spec := by
  intro n
  simp only [A271494]

end A271494

/-! ## A271494.P10853404335696021086

`2^(1+3*n)-(-4)^n`
-/

namespace A271494.P10853404335696021086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (1 + 3 * n) : ℤ) - (-4) ^ n

end

end A271494.P10853404335696021086

namespace A271494

/-- `2^(1+3*n)-(-4)^n` -/
def P10853404335696021086.Spec : Prop :=
  ∀ n, P10853404335696021086.a n = A271494 n

end A271494

/-! ## A271494.P9999602502737745342

`4^n*A014551(n+1)`
-/

namespace A271494.P9999602502737745342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A014551 (n + 1)

end

end A271494.P9999602502737745342

namespace A271494

/-- `4^n*A014551(n+1)` -/
def P9999602502737745342.Spec : Prop :=
  ∀ n, P9999602502737745342.a n = A271494 n

end A271494

/-! ## A271494.P14565454044916301711

`4^n*Δ[A101622(n)]`
-/

namespace A271494.P14565454044916301711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A271494.P14565454044916301711

namespace A271494

/-- `4^n*Δ[A101622(n)]` -/
def P14565454044916301711.Spec : Prop :=
  ∀ n, P14565454044916301711.a n = A271494 n

end A271494

/-! ## A271494.P10356197237360207722

`2^n*A003665(n+1)`
-/

namespace A271494.P10356197237360207722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A003665 (n + 1)

end

end A271494.P10356197237360207722

namespace A271494

/-- `2^n*A003665(n+1)` -/
def P10356197237360207722.Spec : Prop :=
  ∀ n, P10356197237360207722.a n = A271494 n

end A271494

/-! ## A271494.P5245188953819582742

`A083332(n)*A094015(n)`
-/

namespace A271494.P5245188953819582742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083332 n * A094015 n

end

end A271494.P5245188953819582742

namespace A271494

/-- `A083332(n)*A094015(n)` -/
def P5245188953819582742.Spec : Prop :=
  ∀ n, P5245188953819582742.a n = A271494 n

end A271494

/-! ## A271494.P1489794978485859385

`lcm(A000302(n), A083332(n))`
-/

namespace A271494.P1489794978485859385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A083332 n)

end

end A271494.P1489794978485859385

namespace A271494

/-- `lcm(A000302(n), A083332(n))` -/
def P1489794978485859385.Spec : Prop :=
  ∀ n, (P1489794978485859385.a n : ℤ) = A271494 n

end A271494

/-! ## A271494.P2814984058026612381

`Δ[A101622(n)]*A000079(n)²`
-/

namespace A271494.P2814984058026612381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n ^ 2

end

end A271494.P2814984058026612381

namespace A271494

/-- `Δ[A101622(n)]*A000079(n)²` -/
def P2814984058026612381.Spec : Prop :=
  ∀ n, P2814984058026612381.a n = A271494 n

end A271494

/-! ## A271494.P18238645109792325353

`Δ[A101622(n)]*record[A123344(n)]`
-/

namespace A271494.P18238645109792325353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A271494.P18238645109792325353

namespace A271494

/-- `Δ[A101622(n)]*record[A123344(n)]` -/
def P18238645109792325353.Spec : Prop :=
  ∀ n, P18238645109792325353.a n = A271494 n

end A271494

/-! ## A271494.P12876410704551717638

`A014551(n+1)*A000079(n)²`
-/

namespace A271494.P12876410704551717638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) * A000079 n ^ 2

end

end A271494.P12876410704551717638

namespace A271494

/-- `A014551(n+1)*A000079(n)²` -/
def P12876410704551717638.Spec : Prop :=
  ∀ n, P12876410704551717638.a n = A271494 n

end A271494

/-! ## A271494.P14296605909614205102

`A000079(n)²*A166977(n+1)`
-/

namespace A271494.P14296605909614205102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A166977 (n + 1)

end

end A271494.P14296605909614205102

namespace A271494

/-- `A000079(n)²*A166977(n+1)` -/
def P14296605909614205102.Spec : Prop :=
  ∀ n, P14296605909614205102.a n = A271494 n

end A271494

/-! ## A271494.P8587245989231549884

`Δ[A101622(n)]*A000079(2*n)`
-/

namespace A271494.P8587245989231549884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 (2 * n)

end

end A271494.P8587245989231549884

namespace A271494

/-- `Δ[A101622(n)]*A000079(2*n)` -/
def P8587245989231549884.Spec : Prop :=
  ∀ n, P8587245989231549884.a n = A271494 n

end A271494

/-! ## A271494.P16293844722114492080

`A003665(n+1)*A011782(n+1)`
-/

namespace A271494.P16293844722114492080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 (n + 1) * A011782 (n + 1)

end

end A271494.P16293844722114492080

namespace A271494

/-- `A003665(n+1)*A011782(n+1)` -/
def P16293844722114492080.Spec : Prop :=
  ∀ n, P16293844722114492080.a n = A271494 n

end A271494

/-! ## A271494.P16371512001420012981

`A014551(n+1)*A051049(2*n)`
-/

namespace A271494.P16371512001420012981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) * A051049 (2 * n)

end

end A271494.P16371512001420012981

namespace A271494

/-- `A014551(n+1)*A051049(2*n)` -/
def P16371512001420012981.Spec : Prop :=
  ∀ n, P16371512001420012981.a n = A271494 n

end A271494

/-! ## A271494.P10951890871624339345

`A014551(n+1)*A056450(2*n)`
-/

namespace A271494.P10951890871624339345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) * A056450 (2 * n)

end

end A271494.P10951890871624339345

namespace A271494

/-- `A014551(n+1)*A056450(2*n)` -/
def P10951890871624339345.Spec : Prop :=
  ∀ n, P10951890871624339345.a n = A271494 n

end A271494

/-! ## A271494.P6182172146343646227

`A014551(n+1)*A099430(2*n)`
-/

namespace A271494.P6182172146343646227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) * A099430 (2 * n)

end

end A271494.P6182172146343646227

namespace A271494

/-- `A014551(n+1)*A099430(2*n)` -/
def P6182172146343646227.Spec : Prop :=
  ∀ n, P6182172146343646227.a n = A271494 n

end A271494

/-! ## A271494.P2884922448151159400

`A000079(2*n)*A166977(n+1)`
-/

namespace A271494.P2884922448151159400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A166977 (n + 1)

end

end A271494.P2884922448151159400

namespace A271494

/-- `A000079(2*n)*A166977(n+1)` -/
def P2884922448151159400.Spec : Prop :=
  ∀ n, P2884922448151159400.a n = A271494 n

end A271494

/-! ## A271494.P3998477868476571526

`A014551(n+1)*A154383(2*n)`
-/

namespace A271494.P3998477868476571526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) * A154383 (2 * n)

end

end A271494.P3998477868476571526

namespace A271494

/-- `A014551(n+1)*A154383(2*n)` -/
def P3998477868476571526.Spec : Prop :=
  ∀ n, P3998477868476571526.a n = A271494 n

end A271494

/-! ## A271494.P1467981423701094562

`A154383(2*n)*A166977(n+1)`
-/

namespace A271494.P1467981423701094562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 (2 * n) * A166977 (n + 1)

end

end A271494.P1467981423701094562

namespace A271494

/-- `A154383(2*n)*A166977(n+1)` -/
def P1467981423701094562.Spec : Prop :=
  ∀ n, P1467981423701094562.a n = A271494 n

end A271494

/-! ## A271494.P10265151670868131588

`A016116(4*n)*A166977(n+1)`
-/

namespace A271494.P10265151670868131588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (4 * n) * A166977 (n + 1)

end

end A271494.P10265151670868131588

namespace A271494

/-- `A016116(4*n)*A166977(n+1)` -/
def P10265151670868131588.Spec : Prop :=
  ∀ n, P10265151670868131588.a n = A271494 n

end A271494

/-!
# A271498: Smallest number in the trajectory of n under repeated application of the map k -> A271497(k).

The programs for A271498, there is no canonical definition to state claims against.
-/

/-! ## A271498.P3672048361949611285

`A136228((n-∑[val(n+1, 2)])^3)`
-/

namespace A271498.P3672048361949611285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136228 (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 3).toNat

end

end A271498.P3672048361949611285

/-! ## A271498.P12619156591714753014

`A181336((n-∑[val(n+1, 2)])^3)`
-/

namespace A271498.P12619156591714753014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181336 (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 3).toNat

end

end A271498.P12619156591714753014

/-! ## A271498.P10142018780097952069

`A360189(21^(n-∑[val(n+1, 2)]))`
-/

namespace A271498.P10142018780097952069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (SequenceMachineLib.roundAway ((21 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A271498.P10142018780097952069

/-! ## A271498.P4397498115315675376

`A373951(4^(n-∑[val(n+1, 2)])-1)`
-/

namespace A271498.P4397498115315675376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) - 1)).toNat

end

end A271498.P4397498115315675376

/-! ## A271498.P8142568586504830241

`gcd(7, A049500(2^(n-∑[val(n+1, 2)])))`
-/

namespace A271498.P8142568586504830241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A049500 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat)

end

end A271498.P8142568586504830241

/-!
# A271499: Positive numbers n such that the number of 1's in the binary expansion of n is not a power of 2.

The programs for A271499, the canonical program `A271499.P15216955592391079473` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271499 has offset 1).

The definition of A271499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271499.P3040630771918556484

`comp[A143071(n+1)-1]+1`
-/

namespace A271499.P3040630771918556484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143071 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A271499.P3040630771918556484

namespace A271499

/-- `comp[A143071(n+1)-1]+1` -/
def P3040630771918556484.Spec : Prop :=
  ∀ n, (P3040630771918556484.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P13962318118020432411

`lt[1, A002033(A001316(n))]`
-/

namespace A271499.P13962318118020432411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P13962318118020432411

namespace A271499

/-- `lt[1, A002033(A001316(n))]` -/
def P13962318118020432411.Spec : Prop :=
  ∀ n, (P13962318118020432411.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P5073945314419458043

`lt[1, A159918(log2(A001316(n)))]`
-/

namespace A271499.P5073945314419458043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P5073945314419458043

namespace A271499

/-- `lt[1, A159918(log2(A001316(n)))]` -/
def P5073945314419458043.Spec : Prop :=
  ∀ n, (P5073945314419458043.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P1176591777855930892

`lt[2, A001316(log2(A001316(n)))]`
-/

namespace A271499.P1176591777855930892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P1176591777855930892

namespace A271499

/-- `lt[2, A001316(log2(A001316(n)))]` -/
def P1176591777855930892.Spec : Prop :=
  ∀ n, (P1176591777855930892.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P14765619560355302821

`eq[1, A292438(A001316(n)+1)]`
-/

namespace A271499.P14765619560355302821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A001316 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271499.P14765619560355302821

namespace A271499

/-- `eq[1, A292438(A001316(n)+1)]` -/
def P14765619560355302821.Spec : Prop :=
  ∀ n, (P14765619560355302821.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P11570995672450197936

`lt[1, A001222(A001316(n)+1)]`
-/

namespace A271499.P11570995672450197936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P11570995672450197936

namespace A271499

/-- `lt[1, A001222(A001316(n)+1)]` -/
def P11570995672450197936.Spec : Prop :=
  ∀ n, (P11570995672450197936.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P11745108288147857792

`lt[2, A000005(A001316(n)+1)]`
-/

namespace A271499.P11745108288147857792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P11745108288147857792

namespace A271499

/-- `lt[2, A000005(A001316(n)+1)]` -/
def P11745108288147857792.Spec : Prop :=
  ∀ n, (P11745108288147857792.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P15216955592391079473

`lt[1, A000120(2*n-A005187(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A271499

/-- `lt[1, A000120(2*n-A005187(n))]` -/
def P15216955592391079473.Spec : Prop :=
  ∀ n, (P15216955592391079473.a n : ℤ) = A271499 (n + 1)

theorem P15216955592391079473.correct : P15216955592391079473.Spec := by
  intro n
  simp only [A271499, Nat.add_sub_cancel]

end A271499

/-! ## A271499.P15012183805290974515

`lt[1, A002487(2*n-A005187(n))]`
-/

namespace A271499.P15012183805290974515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P15012183805290974515

namespace A271499

/-- `lt[1, A002487(2*n-A005187(n))]` -/
def P15012183805290974515.Spec : Prop :=
  ∀ n, (P15012183805290974515.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P482952499102529519

`lt[2, A278222(2*n-A005187(n))]`
-/

namespace A271499.P482952499102529519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P482952499102529519

namespace A271499

/-- `lt[2, A278222(2*n-A005187(n))]` -/
def P482952499102529519.Spec : Prop :=
  ∀ n, (P482952499102529519.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P11735215196987486958

`lt[1, A000120(n-A005187(n)+n)]`
-/

namespace A271499.P11735215196987486958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P11735215196987486958

namespace A271499

/-- `lt[1, A000120(n-A005187(n)+n)]` -/
def P11735215196987486958.Spec : Prop :=
  ∀ n, (P11735215196987486958.a n : ℤ) = A271499 (n + 1)

theorem P11735215196987486958.correct : P11735215196987486958.Spec := by
  intro n
  simp only [A271499, Nat.add_sub_cancel, A271499.P11735215196987486958.f1, A271499.P11735215196987486958.f2, A271499.P11735215196987486958.a, A271499.P15216955592391079473.f1, A271499.P15216955592391079473.f2, A271499.P15216955592391079473.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271499

/-! ## A271499.P5104660515977093834

`lt[1, A002487(n-A005187(n)+n)]`
-/

namespace A271499.P5104660515977093834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P5104660515977093834

namespace A271499

/-- `lt[1, A002487(n-A005187(n)+n)]` -/
def P5104660515977093834.Spec : Prop :=
  ∀ n, (P5104660515977093834.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P8737655527992260278

`lt[2, A278222(n-A005187(n)+n)]`
-/

namespace A271499.P8737655527992260278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P8737655527992260278

namespace A271499

/-- `lt[2, A278222(n-A005187(n)+n)]` -/
def P8737655527992260278.Spec : Prop :=
  ∀ n, (P8737655527992260278.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P829141222835259049

`lt[A014963(A001316(n)+1), A001316(n)]`
-/

namespace A271499.P829141222835259049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271499.P829141222835259049

namespace A271499

/-- `lt[A014963(A001316(n)+1), A001316(n)]` -/
def P829141222835259049.Spec : Prop :=
  ∀ n, (P829141222835259049.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P4775437319511792367

`lt[1, A054868(n)]`
-/

namespace A271499.P4775437319511792367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P4775437319511792367

namespace A271499

/-- `lt[1, A054868(n)]` -/
def P4775437319511792367.Spec : Prop :=
  ∀ n, (P4775437319511792367.a n : ℤ) = A271499 (n + 1)

theorem P4775437319511792367.correct : P4775437319511792367.Spec := by
  intro n
  simp only [A271499, Nat.add_sub_cancel, A271499.P4775437319511792367.f1, A271499.P4775437319511792367.f2, A271499.P4775437319511792367.a, A271499.P15216955592391079473.f1, A271499.P15216955592391079473.f2, A271499.P15216955592391079473.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A054868, A054868.P12564420483956128132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271499

/-! ## A271499.P16298535926671046817

`lt[2, A180094(n)]`
-/

namespace A271499.P16298535926671046817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P16298535926671046817

namespace A271499

/-- `lt[2, A180094(n)]` -/
def P16298535926671046817.Spec : Prop :=
  ∀ n, (P16298535926671046817.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P14312179587799531872

`lt[1, A000120(A000120(n))]`
-/

namespace A271499.P14312179587799531872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P14312179587799531872

namespace A271499

/-- `lt[1, A000120(A000120(n))]` -/
def P14312179587799531872.Spec : Prop :=
  ∀ n, (P14312179587799531872.a n : ℤ) = A271499 (n + 1)

theorem P14312179587799531872.correct : P14312179587799531872.Spec := by
  intro n
  simp only [A271499, Nat.add_sub_cancel, A271499.P14312179587799531872.f1, A271499.P14312179587799531872.f2, A271499.P14312179587799531872.a, A271499.P15216955592391079473.f1, A271499.P15216955592391079473.f2, A271499.P15216955592391079473.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271499

/-! ## A271499.P2927569477870763390

`lt[2, A232245(log2(A102376(n)))]`
-/

namespace A271499.P2927569477870763390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232245 (SequenceMachineLib.roundAway (Real.logb 2 (A102376 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P2927569477870763390

namespace A271499

/-- `lt[2, A232245(log2(A102376(n)))]` -/
def P2927569477870763390.Spec : Prop :=
  ∀ n, (P2927569477870763390.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P7316459727877532249

`eq[1, A000010(a(A000120(n)))]` with `a(0)=2, a(1)=5`
-/

namespace A271499.P7316459727877532249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f2 =>
  A000010 (f2 (A000120 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271499.P7316459727877532249

namespace A271499

/-- `eq[1, A000010(a(A000120(n)))]` -/
def P7316459727877532249.Spec : Prop :=
  ∀ n, (P7316459727877532249.a n : ℤ) = A271499 (n + 1)

end A271499

/-! ## A271499.P1135148004439770452

`eq[2, A000010(A000120(A000120(n))+1)]`
-/

namespace A271499.P1135148004439770452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000120 (A000120 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271499.P1135148004439770452

namespace A271499

/-- `eq[2, A000010(A000120(A000120(n))+1)]` -/
def P1135148004439770452.Spec : Prop :=
  ∀ n, (P1135148004439770452.a n : ℤ) = A271499 (n + 1)

end A271499

