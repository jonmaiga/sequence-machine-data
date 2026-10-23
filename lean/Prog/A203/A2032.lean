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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A203202: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,3,0,1,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A203202, there is no canonical definition to state claims against.
-/

/-! ## A203202.P8511685802189308197

`A130091(A167138(n)+A005563(n))`
-/

namespace A203202.P8511685802189308197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A167138 n + A005563 n).toNat

end

end A203202.P8511685802189308197

/-!
# A203203: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,4,2,0,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A203203, there is no canonical definition to state claims against.
-/

/-! ## A203203.P13867792626259065999

`A005117(A348858(n))-A282819(n)`
-/

namespace A203203.P13867792626259065999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A348858 n).toNat - A282819 n

end

end A203203.P13867792626259065999

/-!
# A203204: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203204, there is no canonical definition to state claims against.
-/

/-! ## A203204.P3860771206601421994

`A188301(C(A293077(n+1)+1, n))`
-/

namespace A203204.P3860771206601421994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (Nat.choose (A293077 (n + 1) + 1).toNat n)

end

end A203204.P3860771206601421994

/-!
# A203205: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,0,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203205, there is no canonical definition to state claims against.
-/

/-! ## A203205.P3394189557952385327

`A101255(a(n-1)-n)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A203205.P3394189557952385327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  A101255 (a (n - 1) - (n : ℤ)).toNat

end

end A203205.P3394189557952385327

/-!
# A203206: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,1,2,1,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A203206, there is no canonical definition to state claims against.
-/

/-! ## A203206.P12650665375903679174

`A038388(or(A119007(n+1), A119008(n+1)))`
-/

namespace A203206.P12650665375903679174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (Int.lor (A119007 (n + 1)) (A119008 (n + 1))).toNat

end

end A203206.P12650665375903679174

/-!
# A203207: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,4,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203207, there is no canonical definition to state claims against.
-/

/-! ## A203207.P17201359368300197131

`a(n-1)!-(n+2)` with `a(0)=1, a(1)=4, a(2)=1, a(3)=5`
-/

namespace A203207.P17201359368300197131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 5] fun n a =>
  (Nat.factorial (a (n - 1)).toNat : ℤ) - (n + 2 : ℤ)

end

end A203207.P17201359368300197131

/-!
# A203208: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,5,2,0,1,1,2 for x=0,1,2,3,4,5,6.

The programs for A203208, there is no canonical definition to state claims against.
-/

/-! ## A203208.P11039457832069914660

`A000027(A203217(n+1))`
-/

namespace A203208.P11039457832069914660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A203217 (n + 1)).toNat

end

end A203208.P11039457832069914660

/-! ## A203208.P15172730431461412263

`A203217(A007092(n)+1)`
-/

namespace A203208.P15172730431461412263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203217 (A007092 n + 1).toNat

end

end A203208.P15172730431461412263

/-!
# A203210: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,4,1,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A203210, there is no canonical definition to state claims against.
-/

/-! ## A203210.P9102969716050821837

`∑{d}[A204245(n+1), #%9]`
-/

namespace A203210.P9102969716050821837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 9

end

end A203210.P9102969716050821837

/-!
# A203214: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,0,2,0,1 for x=0,1,2,3,4,5,6.

The programs for A203214, there is no canonical definition to state claims against.
-/

/-! ## A203214.P2130448476944709548

`A314473(A000975(∑[n]))`
-/

namespace A203214.P2130448476944709548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314473 (A000975 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A203214.P2130448476944709548

/-!
# A203215: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,1,1,0,1,1 for x=0,1,2,3,4,5,6.

The programs for A203215, there is no canonical definition to state claims against.
-/

/-! ## A203215.P15359052591065177021

`A039672((3*n%2)^(n-1)+n*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A203215.P15359052591065177021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A039672 (SequenceMachineLib.roundAway (((3 * (n % 2) : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) + ((n : ℤ) * a (n - 1) : ℚ))).toNat

end

end A203215.P15359052591065177021

/-!
# A203216: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,2,1,0,1,2 for x=0,1,2,3,4,5,6.

The programs for A203216, there is no canonical definition to state claims against.
-/

/-! ## A203216.P358737529477022410

`A038722(A048815(∑[ceil(8^(n/5))]))`
-/

namespace A203216.P358737529477022410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A048815 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 11)).toNat

end

end A203216.P358737529477022410

/-!
# A203218: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,0,1,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A203218, there is no canonical definition to state claims against.
-/

/-! ## A203218.P16371596818672430439

`A078779(A085871(n+1)-A340920(n))`
-/

namespace A203218.P16371596818672430439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (A085871 (n + 1) - A340920 n).toNat

end

end A203218.P16371596818672430439

/-!
# A203219: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,2,1,1,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A203219, there is no canonical definition to state claims against.
-/

/-! ## A203219.P11297818730889069597

`A003726(A067549(n+1)*A157109(n))`
-/

namespace A203219.P11297818730889069597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A067549 (n + 1) * A157109 n).toNat

end

end A203219.P11297818730889069597

/-!
# A203221: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,1,3,1,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A203221, there is no canonical definition to state claims against.
-/

/-! ## A203221.P15345629444299503622

`A237270(A057006(n+1)+2*n)`
-/

namespace A203221.P15345629444299503622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A057006 (n + 1) + (2 * n : ℤ)).toNat

end

end A203221.P15345629444299503622

/-!
# A203222: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,0,2,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203222, there is no canonical definition to state claims against.
-/

/-! ## A203222.P15608816004442070453

`A372130(A379039(n)+A000292(n))`
-/

namespace A203222.P15608816004442070453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372130 (A379039 n + A000292 n).toNat

end

end A203222.P15608816004442070453

/-!
# A203223: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,0,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A203223, there is no canonical definition to state claims against.
-/

/-! ## A203223.P7988306192891994922

`A003602(A002414(n+1)*A051296(n))`
-/

namespace A203223.P7988306192891994922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A002414 (n + 1) * A051296 n).toNat

end

end A203223.P7988306192891994922

/-!
# A203224: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,1,1,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A203224, there is no canonical definition to state claims against.
-/

/-! ## A203224.P8431148636866434077

`A183297(A000930(n)*A183303(n+1))`
-/

namespace A203224.P8431148636866434077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183297 (A000930 n * A183303 (n + 1)).toNat

end

end A203224.P8431148636866434077

/-!
# A203225: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,1,2,1,1 for x=0,1,2,3,4,5,6.

The programs for A203225, there is no canonical definition to state claims against.
-/

/-! ## A203225.P3334436929796400386

`A314482(A010049(∑[n]))`
-/

namespace A203225.P3334436929796400386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314482 (A010049 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A203225.P3334436929796400386

/-!
# A203226: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,1,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A203226, there is no canonical definition to state claims against.
-/

/-! ## A203226.P10888401141273437150

`A074066(A062258(∑[n]))`
-/

namespace A203226.P10888401141273437150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A062258 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A203226.P10888401141273437150

/-!
# A203227: (n-1)-st elementary symmetric function of (0!,...,(n-1)!).

The programs for A203227, there is no canonical definition to state claims against.
-/

/-! ## A203227.P3057403248346395233

`∑[1/n!]*A000178(n)`
-/

namespace A203227.P3057403248346395233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000178 n : ℚ)

end

end A203227.P3057403248346395233

/-! ## A203227.P2448034267234491810

`n!*a(n-1)+A000178(n-1)` with `a(0)=1`
-/

namespace A203227.P2448034267234491810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℤ) * a (n - 1) + A000178 (n - 1)

end

end A203227.P2448034267234491810

/-! ## A203227.P3077350964146410636

`A000178(n-1)+a(n-1)*A028421(∑[n])` with `a(0)=1`
-/

namespace A203227.P3077350964146410636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000178 (n - 1) + a (n - 1) * A028421 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203227.P3077350964146410636

/-! ## A203227.P318887628586923440

`∏[A081123(A004273(n))]*A000522(n)`
-/

namespace A203227.P318887628586923440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000522 n

end

end A203227.P318887628586923440

/-! ## A203227.P12510374274956389288

`∏[A098361(A000124(n))]*A000522(n)`
-/

namespace A203227.P12510374274956389288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000522 n

end

end A203227.P12510374274956389288

/-!
# A203228: (n-1)-st elementary symmetric function of (1!,...,(n-1)!).

The programs for A203228, the canonical program `A203228.P14690127587879056660` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203228 has offset 1).

The definition of A203228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203228.P14690127587879056660

`(n+1)!*a(n-1)+A000178(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203228

/-- `(n+1)!*a(n-1)+A000178(n)` -/
def P14690127587879056660.Spec : Prop :=
  ∀ n, P14690127587879056660.a n = A203228 (n + 1)

theorem P14690127587879056660.correct : P14690127587879056660.Spec := by
  intro n
  simp only [A203228, Nat.add_sub_cancel]

end A203228

/-! ## A203228.P329897681142859971

`record[-A107415(n+2)]`
-/

namespace A203228.P329897681142859971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203228.P329897681142859971

namespace A203228

/-- `record[-A107415(n+2)]` -/
def P329897681142859971.Spec : Prop :=
  ∀ n, P329897681142859971.a n = A203228 (n + 1)

end A203228

/-! ## A203228.P1476745772898500580

`A000178(n)*A002627(n+1)`
-/

namespace A203228.P1476745772898500580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A002627 (n + 1)

end

end A203228.P1476745772898500580

namespace A203228

/-- `A000178(n)*A002627(n+1)` -/
def P1476745772898500580.Spec : Prop :=
  ∀ n, P1476745772898500580.a n = A203228 (n + 1)

end A203228

/-! ## A203228.P17836769974557857857

`A203227(n+2)-A000178(n+1)`
-/

namespace A203228.P17836769974557857857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203227 (n + 2) - A000178 (n + 1)

end

end A203228.P17836769974557857857

namespace A203228

/-- `A203227(n+2)-A000178(n+1)` -/
def P17836769974557857857.Spec : Prop :=
  ∀ n, P17836769974557857857.a n = A203228 (n + 1)

end A203228

/-! ## A203228.P6330759358066676863

`A000178(n+1)-A204247(n+2)`
-/

namespace A203228.P6330759358066676863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (n + 1) - A204247 (n + 2)

end

end A203228.P6330759358066676863

namespace A203228

/-- `A000178(n+1)-A204247(n+2)` -/
def P6330759358066676863.Spec : Prop :=
  ∀ n, P6330759358066676863.a n = A203228 (n + 1)

end A203228

/-!
# A203229: (n-1)-st elementary symmetric function of (1,16,...,n^4).

The programs for A203229, there is no canonical definition to state claims against.
-/

/-! ## A203229.P4118723744223615290

`A395066(∑[n+1]+n)`
-/

namespace A203229.P4118723744223615290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395066 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A203229.P4118723744223615290

/-! ## A203229.P13659908821054049660

`A291556(A052905(n+3))`
-/

namespace A203229.P13659908821054049660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (A052905 (n + 3)).toNat

end

end A203229.P13659908821054049660

/-! ## A203229.P17285256235924080062

`A291556(eq[5, A193592(n)])`
-/

namespace A203229.P17285256235924080062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203229.P17285256235924080062

/-! ## A203229.P2746724186377095523

`A291556(eq[8, A258709(n)])`
-/

namespace A203229.P2746724186377095523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203229.P2746724186377095523

/-! ## A203229.P15414696143802843966

`A291556(A000096(n+5)-4)`
-/

namespace A203229.P15414696143802843966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (A000096 (n + 5) - 4).toNat

end

end A203229.P15414696143802843966

/-!
# A203230: (n-1)-st elementary symmetric function of the first n terms of A010684.

The programs for A203230, the canonical program `A203230.P8905345843891824624` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203230 has offset 1).

The definition of A203230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203230.P11192551254474689312

`3^ceil(n/2)*∑[3^floor(n/2)/3^ceil(n/2)]`
-/

namespace A203230.P11192551254474689312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / (3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203230.P11192551254474689312

namespace A203230

/-- `3^ceil(n/2)*∑[3^floor(n/2)/3^ceil(n/2)]` -/
def P11192551254474689312.Spec : Prop :=
  ∀ n, P11192551254474689312.a n = (A203230 (n + 1) : ℚ)

end A203230

/-! ## A203230.P8905345843891824624

`A038754(n)+n*Δ[A068911(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203230

/-- `A038754(n)+n*Δ[A068911(n)]` -/
def P8905345843891824624.Spec : Prop :=
  ∀ n, P8905345843891824624.a n = A203230 (n + 1)

theorem P8905345843891824624.correct : P8905345843891824624.Spec := by
  intro n
  simp only [A203230, Nat.add_sub_cancel]

end A203230

/-! ## A203230.P5232766066171804529

`∪[A120908(n+1)+A000244(n), A120908(n+2)]`
-/

namespace A203230.P5232766066171804529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 1) + A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A203230.P5232766066171804529

namespace A203230

/-- `∪[A120908(n+1)+A000244(n), A120908(n+2)]` -/
def P5232766066171804529.Spec : Prop :=
  ∀ n, (P5232766066171804529.a n : ℤ) = A203230 (n + 1)

end A203230

/-! ## A203230.P13201046424289045437

`6*a(n-2)-9*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=24`
-/

namespace A203230.P13201046424289045437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7, 24] fun n a =>
  6 * a (n - 2) - 9 * a (n - 4)

end

end A203230.P13201046424289045437

namespace A203230

/-- `6*a(n-2)-9*a(n-4)` -/
def P13201046424289045437.Spec : Prop :=
  ∀ n, P13201046424289045437.a n = A203230 (n + 1)

end A203230

/-! ## A203230.P9625655488507698358

`A182522(n)+A229277(n)/A108411(n)`
-/

namespace A203230.P9625655488507698358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182522 n : ℚ) + (A229277 n : ℚ) / (A108411 n : ℚ)

end

end A203230.P9625655488507698358

namespace A203230

/-- `A182522(n)+A229277(n)/A108411(n)` -/
def P9625655488507698358.Spec : Prop :=
  ∀ n, P9625655488507698358.a n = (A203230 (n + 1) : ℚ)

end A203230

/-!
# A203231: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (3,1,3,1,3,1,3,1,...).

The programs for A203231, the canonical program `A203231.P2100730177118112889` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203231 has offset 1).

The definition of A203231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203231.P13961035115273703498

`3^floor(n/2)*∑[2*and(1, n)+1]`
-/

namespace A203231.P13961035115273703498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A203231.P13961035115273703498

namespace A203231

/-- `3^floor(n/2)*∑[2*and(1, n)+1]` -/
def P13961035115273703498.Spec : Prop :=
  ∀ n, P13961035115273703498.a n = (A203231 (n + 1) : ℚ)

end A203231

/-! ## A203231.P8052818820699371352

`∑[3^and(1, n)]*A108411(n)`
-/

namespace A203231.P8052818820699371352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A108411 n

end

end A203231.P8052818820699371352

namespace A203231

/-- `∑[3^and(1, n)]*A108411(n)` -/
def P8052818820699371352.Spec : Prop :=
  ∀ n, P8052818820699371352.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P9529579394762393559

`3^floor(n/2)*A042948(n+1)`
-/

namespace A203231.P9529579394762393559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A042948 (n + 1) : ℚ)

end

end A203231.P9529579394762393559

namespace A203231

/-- `3^floor(n/2)*A042948(n+1)` -/
def P9529579394762393559.Spec : Prop :=
  ∀ n, P9529579394762393559.a n = (A203231 (n + 1) : ℚ)

end A203231

/-! ## A203231.P2100730177118112889

`(A014601(n)+1)*A108411(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203231

/-- `(A014601(n)+1)*A108411(n)` -/
def P2100730177118112889.Spec : Prop :=
  ∀ n, P2100730177118112889.a n = A203231 (n + 1)

theorem P2100730177118112889.correct : P2100730177118112889.Spec := by
  intro n
  simp only [A203231, Nat.add_sub_cancel]

end A203231

/-! ## A203231.P9195197886284322816

`A042948(n+1)*A108411(n)`
-/

namespace A203231.P9195197886284322816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1) * A108411 n

end

end A203231.P9195197886284322816

namespace A203231

/-- `A042948(n+1)*A108411(n)` -/
def P9195197886284322816.Spec : Prop :=
  ∀ n, P9195197886284322816.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P6034816947295641919

`A038754(n)*A114752(n+1)`
-/

namespace A203231.P6034816947295641919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A114752 (n + 1)

end

end A203231.P6034816947295641919

namespace A203231

/-- `A038754(n)*A114752(n+1)` -/
def P6034816947295641919.Spec : Prop :=
  ∀ n, P6034816947295641919.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P14665528799464267891

`A108411(n)*A338062(n+1)`
-/

namespace A203231.P14665528799464267891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A338062 (n + 1)

end

end A203231.P14665528799464267891

namespace A203231

/-- `A108411(n)*A338062(n+1)` -/
def P14665528799464267891.Spec : Prop :=
  ∀ n, P14665528799464267891.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P5376108993860037267

`A065262(n+1)*A166552(n+1)`
-/

namespace A203231.P5376108993860037267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (n + 1) * A166552 (n + 1)

end

end A203231.P5376108993860037267

namespace A203231

/-- `A065262(n+1)*A166552(n+1)` -/
def P5376108993860037267.Spec : Prop :=
  ∀ n, P5376108993860037267.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P13624101164491318994

`A042948(n+1)*A111575(2*n)`
-/

namespace A203231.P13624101164491318994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1) * A111575 (2 * n)

end

end A203231.P13624101164491318994

namespace A203231

/-- `A042948(n+1)*A111575(2*n)` -/
def P13624101164491318994.Spec : Prop :=
  ∀ n, P13624101164491318994.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P12065853013317464857

`(2*A007494(n)-(n-1))*A108411(n)`
-/

namespace A203231.P12065853013317464857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A007494 n - ((n : ℤ) - 1)) * A108411 n

end

end A203231.P12065853013317464857

namespace A203231

/-- `(2*A007494(n)-(n-1))*A108411(n)` -/
def P12065853013317464857.Spec : Prop :=
  ∀ n, P12065853013317464857.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P5651963508053864707

`(or(1, n+1)+n)*A000244(A004526(n))`
-/

namespace A203231.P5651963508053864707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) + n : ℤ) * A000244 (A004526 n).toNat

end

end A203231.P5651963508053864707

namespace A203231

/-- `(or(1, n+1)+n)*A000244(A004526(n))` -/
def P5651963508053864707.Spec : Prop :=
  ∀ n, P5651963508053864707.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P12699328174261756329

`∪[A120908(n+2)-A000244(n+1), A120908(n+2)]`
-/

namespace A203231.P12699328174261756329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 2) - A000244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A203231.P12699328174261756329

namespace A203231

/-- `∪[A120908(n+2)-A000244(n+1), A120908(n+2)]` -/
def P12699328174261756329.Spec : Prop :=
  ∀ n, (P12699328174261756329.a n : ℤ) = A203231 (n + 1)

end A203231

/-! ## A203231.P2294056831438851122

`6*a(n-2)-9*a(n-4)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=24`
-/

namespace A203231.P2294056831438851122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 15, 24] fun n a =>
  6 * a (n - 2) - 9 * a (n - 4)

end

end A203231.P2294056831438851122

namespace A203231

/-- `6*a(n-2)-9*a(n-4)` -/
def P2294056831438851122.Spec : Prop :=
  ∀ n, P2294056831438851122.a n = A203231 (n + 1)

end A203231

/-! ## A203231.P10396072737781057368

`A152842(∑[n+2]-1)`
-/

namespace A203231.P10396072737781057368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A203231.P10396072737781057368

namespace A203231

/-- `A152842(∑[n+2]-1)` -/
def P10396072737781057368.Spec : Prop :=
  ∀ n, P10396072737781057368.a n = A203231 (n + 1)

end A203231

/-!
# A203232: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (2,3,2,3,2,3,...).

The programs for A203232, the canonical program `A203232.P3598340314214625917` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203232 has offset 1).

The definition of A203232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203232.P3598340314214625917

`12*a(n-2)-36*a(n-4)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203232

/-- `12*a(n-2)-36*a(n-4)` -/
def P3598340314214625917.Spec : Prop :=
  ∀ n, P3598340314214625917.a n = A203232 (n + 1)

theorem P3598340314214625917.correct : P3598340314214625917.Spec := by
  intro n
  simp only [A203232, Nat.add_sub_cancel]

end A203232

/-! ## A203232.P515133904721957326

`A026532(2*n+1)/A026532(n+2)*A047218(n+2)`
-/

namespace A203232.P515133904721957326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026532 (2 * n + 1) : ℚ) / (A026532 (n + 2) : ℚ) * (A047218 (n + 2) : ℚ)

end

end A203232.P515133904721957326

namespace A203232

/-- `A026532(2*n+1)/A026532(n+2)*A047218(n+2)` -/
def P515133904721957326.Spec : Prop :=
  ∀ n, P515133904721957326.a n = (A203232 (n + 1) : ℚ)

end A203232

/-! ## A203232.P7550666619344297734

`record[∑{d}[6*a(n-2), A300251(#)]]` with `a(0)=3, a(1)=5, a(2)=1, a(3)=2`
-/

namespace A203232.P7550666619344297734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 1, 2] fun n f2 =>
  6 * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300251 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203232.P7550666619344297734

namespace A203232

/-- `record[∑{d}[6*a(n-2), A300251(#)]]` -/
def P7550666619344297734.Spec : Prop :=
  ∀ n, P7550666619344297734.a n = A203232 (n + 1)

end A203232

/-! ## A203232.P8200544464911028776

`∑{d}[∏[A000034(n)+1], A300251(#)]`
-/

namespace A203232.P8200544464911028776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A203232.P8200544464911028776

namespace A203232

/-- `∑{d}[∏[A000034(n)+1], A300251(#)]` -/
def P8200544464911028776.Spec : Prop :=
  ∀ n, P8200544464911028776.a n = A203232 (n + 1)

end A203232

/-! ## A203232.P5706163360527546054

`A068719(A026532(n+1))`
-/

namespace A203232.P5706163360527546054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A026532 (n + 1)).toNat

end

end A203232.P5706163360527546054

namespace A203232

/-- `A068719(A026532(n+1))` -/
def P5706163360527546054.Spec : Prop :=
  ∀ n, P5706163360527546054.a n = A203232 (n + 1)

end A203232

/-!
# A203233: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (3,2,3,2,3,2,...).

The programs for A203233, the canonical program `A203233.P15695752515330740822` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203233 has offset 1).

The definition of A203233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203233.P15695752515330740822

`12*a(n-2)-36*a(n-4)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203233

/-- `12*a(n-2)-36*a(n-4)` -/
def P15695752515330740822.Spec : Prop :=
  ∀ n, P15695752515330740822.a n = A203233 (n + 1)

theorem P15695752515330740822.correct : P15695752515330740822.Spec := by
  intro n
  simp only [A203233, Nat.add_sub_cancel]

end A203233

/-! ## A203233.P4477305054525049665

`record[∑{d}[6*a(n-2), A300251(#)]]` with `a(0)=5, a(1)=1, a(2)=-3`
-/

namespace A203233.P4477305054525049665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, -3] fun n f2 =>
  6 * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A300251 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203233.P4477305054525049665

namespace A203233

/-- `record[∑{d}[6*a(n-2), A300251(#)]]` -/
def P4477305054525049665.Spec : Prop :=
  ∀ n, P4477305054525049665.a n = A203233 (n + 1)

end A203233

/-! ## A203233.P11408408547662925956

`A068719(A026565(n))`
-/

namespace A203233.P11408408547662925956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A026565 n).toNat

end

end A203233.P11408408547662925956

namespace A203233

/-- `A068719(A026565(n))` -/
def P11408408547662925956.Spec : Prop :=
  ∀ n, P11408408547662925956.a n = A203233 (n + 1)

end A203233

/-! ## A203233.P10385503650148620649

`A003415(∏[gcd(2, n)+1])`
-/

namespace A203233.P10385503650148620649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A203233.P10385503650148620649

namespace A203233

/-- `A003415(∏[gcd(2, n)+1])` -/
def P10385503650148620649.Spec : Prop :=
  ∀ n, P10385503650148620649.a n = A203233 (n + 1)

end A203233

/-! ## A203233.P8271033484243302175

`A003415(∏[(n+1)%2+2])`
-/

namespace A203233.P8271033484243302175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A203233.P8271033484243302175

namespace A203233

/-- `A003415(∏[(n+1)%2+2])` -/
def P8271033484243302175.Spec : Prop :=
  ∀ n, P8271033484243302175.a n = A203233 (n + 1)

end A203233

/-!
# A203234: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (1,1,1,2,1,1,1,2,...).

The programs for A203234, the canonical program `A203234.P15030356793767432667` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203234 has offset 1).

The definition of A203234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203234.P15030356793767432667

`4*a(n-4)-4*a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=28`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203234

/-- `4*a(n-4)-4*a(n-8)` -/
def P15030356793767432667.Spec : Prop :=
  ∀ n, P15030356793767432667.a n = A203234 (n + 1)

theorem P15030356793767432667.correct : P15030356793767432667.Spec := by
  intro n
  simp only [A203234, Nat.add_sub_cancel]

end A203234

/-! ## A203234.P17091776573464836608

`A053219(A082643(n+1))`
-/

namespace A203234.P17091776573464836608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (A082643 (n + 1)).toNat

end

end A203234.P17091776573464836608

namespace A203234

/-- `A053219(A082643(n+1))` -/
def P17091776573464836608.Spec : Prop :=
  ∀ n, P17091776573464836608.a n = A203234 (n + 1)

end A203234

/-! ## A203234.P15822468808832688917

`A053218(A082644(n+1)+1)`
-/

namespace A203234.P15822468808832688917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A082644 (n + 1) + 1).toNat

end

end A203234.P15822468808832688917

namespace A203234

/-- `A053218(A082644(n+1)+1)` -/
def P15822468808832688917.Spec : Prop :=
  ∀ n, P15822468808832688917.a n = A203234 (n + 1)

end A203234

/-! ## A203234.P11837022963872285673

`∑[A321478(A210875(n+1)²)]`
-/

namespace A203234.P11837022963872285673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321478 (A210875 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203234.P11837022963872285673

namespace A203234

/-- `∑[A321478(A210875(n+1)²)]` -/
def P11837022963872285673.Spec : Prop :=
  ∀ n, P11837022963872285673.a n = A203234 (n + 1)

end A203234

/-! ## A203234.P13091343983175007103

`A073642(∏[p?[A064727(n+1)]])`
-/

namespace A203234.P13091343983175007103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203234.P13091343983175007103

namespace A203234

/-- `A073642(∏[p?[A064727(n+1)]])` -/
def P13091343983175007103.Spec : Prop :=
  ∀ n, P13091343983175007103.a n = A203234 (n + 1)

end A203234

/-!
# A203235: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (1,1,1,3,1,1,1,3,...).

The programs for A203235, the canonical program `A203235.P4893706432612944544` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203235 has offset 1).

The definition of A203235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203235.P4893706432612944544

`6*a(n-4)-9*a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=10, a(4)=13, a(5)=16, a(6)=19, a(7)=60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203235

/-- `6*a(n-4)-9*a(n-8)` -/
def P4893706432612944544.Spec : Prop :=
  ∀ n, P4893706432612944544.a n = A203235 (n + 1)

theorem P4893706432612944544.correct : P4893706432612944544.Spec := by
  intro n
  simp only [A203235, Nat.add_sub_cancel]

end A203235

/-!
# A203236: (n-1)-st elementary symmetric function of the first n terms of the lower Wythoff sequence, A000201.

The programs for A203236, there is no canonical definition to state claims against.
-/

/-! ## A203236.P16913981185743712034

`A064318(∏[Δ[n²]])`
-/

namespace A203236.P16913981185743712034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064318 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203236.P16913981185743712034

/-!
# A203238: a(n)=(n-1)-st elementary symmetric function of the first n terms of (2, -4, 6, -8, 10, ...).

The programs for A203238, there is no canonical definition to state claims against.
-/

/-! ## A203238.P13964698419835166342

`∏[A280560(n)]*A024167(n+1)`
-/

namespace A203238.P13964698419835166342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A024167 (n + 1)

end

end A203238.P13964698419835166342

/-! ## A203238.P587854016159017119

`A024167(n+1)*A332251(2*4^n)`
-/

namespace A203238.P587854016159017119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (n + 1) * A332251 (2 * 4 ^ n)

end

end A203238.P587854016159017119

/-!
# A203239: Odd numbered terms of the sequence whose n-th term is the (n-1)-st elementary symmetric function of (i, 2i, 3i, ..., ni), where i=sqrt(-1).

The programs for A203239, the canonical program `A203239.P1444761472221457279` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203239 has offset 1).

The definition of A203239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203239.P1444761472221457279

`(-1)^(n+2)*A000254(2*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203239

/-- `(-1)^(n+2)*A000254(2*(n+1))` -/
def P1444761472221457279.Spec : Prop :=
  ∀ n, P1444761472221457279.a n = A203239 (n + 1)

theorem P1444761472221457279.correct : P1444761472221457279.Spec := by
  intro n
  simp only [A203239, Nat.add_sub_cancel]

end A203239

/-! ## A203239.P8739543589521454210

`A000254(2*(n+1))*A033999(n)`
-/

namespace A203239.P8739543589521454210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (2 * (n + 1)) * A033999 n

end

end A203239.P8739543589521454210

namespace A203239

/-- `A000254(2*(n+1))*A033999(n)` -/
def P8739543589521454210.Spec : Prop :=
  ∀ n, P8739543589521454210.a n = A203239 (n + 1)

end A203239

/-! ## A203239.P12391650444710984005

`A062157(n+2)*A081048(2*(n+1))`
-/

namespace A203239.P12391650444710984005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) * A081048 (2 * (n + 1))

end

end A203239.P12391650444710984005

namespace A203239

/-- `A062157(n+2)*A081048(2*(n+1))` -/
def P12391650444710984005.Spec : Prop :=
  ∀ n, P12391650444710984005.a n = A203239 (n + 1)

end A203239

/-! ## A203239.P17762544574159183376

`abs(A081048(A005843(n+1)))/(-1)^n`
-/

namespace A203239.P17762544574159183376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A081048 (A005843 (n + 1)).toNat| : ℚ) / ((-1) ^ n : ℚ)

end

end A203239.P17762544574159183376

namespace A203239

/-- `abs(A081048(A005843(n+1)))/(-1)^n` -/
def P17762544574159183376.Spec : Prop :=
  ∀ n, P17762544574159183376.a n = (A203239 (n + 1) : ℚ)

end A203239

/-!
# A203240: Real part of even numbered terms of the sequence s(n)=(n-1)-st elementary symmetric function of (i, 2i, 3i,...,ni).

The programs for A203240, the canonical program `A203240.P13345833760926676991` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203240 has offset 1).

The definition of A203240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203240.P13345833760926676991

`(-1)^(n+2)*A000254(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203240

/-- `(-1)^(n+2)*A000254(2*(n+1)-1)` -/
def P13345833760926676991.Spec : Prop :=
  ∀ n, P13345833760926676991.a n = A203240 (n + 1)

theorem P13345833760926676991.correct : P13345833760926676991.Spec := by
  intro n
  simp only [A203240, Nat.add_sub_cancel]

end A203240

/-! ## A203240.P6728667891194623101

`(-1)^n*A081048(Δ[n²])`
-/

namespace A203240.P6728667891194623101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A081048 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A203240.P6728667891194623101

namespace A203240

/-- `(-1)^n*A081048(Δ[n²])` -/
def P6728667891194623101.Spec : Prop :=
  ∀ n, P6728667891194623101.a n = A203240 (n + 1)

end A203240

/-! ## A203240.P6085053978600157403

`(-1)^n*record[A081048(n+1)]`
-/

namespace A203240.P6085053978600157403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203240.P6085053978600157403

namespace A203240

/-- `(-1)^n*record[A081048(n+1)]` -/
def P6085053978600157403.Spec : Prop :=
  ∀ n, P6085053978600157403.a n = A203240 (n + 1)

end A203240

/-! ## A203240.P7004628697361056493

`record[A081048(n+1)]*A033999(n)`
-/

namespace A203240.P7004628697361056493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 n

end

end A203240.P7004628697361056493

namespace A203240

/-- `record[A081048(n+1)]*A033999(n)` -/
def P7004628697361056493.Spec : Prop :=
  ∀ n, P7004628697361056493.a n = A203240 (n + 1)

end A203240

/-! ## A203240.P16419774889434773867

`A000254(2*n+1)*A033999(n)`
-/

namespace A203240.P16419774889434773867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (2 * n + 1) * A033999 n

end

end A203240.P16419774889434773867

namespace A203240

/-- `A000254(2*n+1)*A033999(n)` -/
def P16419774889434773867.Spec : Prop :=
  ∀ n, P16419774889434773867.a n = A203240 (n + 1)

end A203240

/-!
# A203241: Second elementary symmetric function of the first n terms of (1,2,4,8,...).

The programs for A203241, the canonical program `A203241.P5263134073335950004` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203241 has offset 2).

The definition of A203241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203241.P12207631318187595847

`(2-3*2^(n+2)+4^(n+2))/3`
-/

namespace A203241.P12207631318187595847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (3 * 2 ^ (n + 2) : ℤ) + (4 ^ (n + 2) : ℤ) : ℚ) / 3

end

end A203241.P12207631318187595847

namespace A203241

/-- `(2-3*2^(n+2)+4^(n+2))/3` -/
def P12207631318187595847.Spec : Prop :=
  ∀ n, P12207631318187595847.a n = (A203241 (n + 2) : ℚ)

theorem P12207631318187595847.correct : P12207631318187595847.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A203241, Nat.add_sub_cancel, A203241.P12207631318187595847.a, A203241.P5263134073335950004.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A203241, Nat.add_sub_cancel, A203241.P12207631318187595847.a, A203241.P5263134073335950004.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A203241

/-! ## A203241.P5263134073335950004

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=2, a(1)=14, a(2)=70`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203241

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P5263134073335950004.Spec : Prop :=
  ∀ n, P5263134073335950004.a n = A203241 (n + 2)

theorem P5263134073335950004.correct : P5263134073335950004.Spec := by
  intro n
  simp only [A203241, Nat.add_sub_cancel]

end A203241

/-! ## A203241.P611704027901008532

`2*A006095(n+2)`
-/

namespace A203241.P611704027901008532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006095 (n + 2)

end

end A203241.P611704027901008532

namespace A203241

/-- `2*A006095(n+2)` -/
def P611704027901008532.Spec : Prop :=
  ∀ n, P611704027901008532.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P7441652063001114416

`∑[ogf(2/(1-6x+8x^2))]`
-/

namespace A203241.P7441652063001114416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P7441652063001114416

namespace A203241

/-- `∑[ogf(2/(1-6x+8x^2))]` -/
def P7441652063001114416.Spec : Prop :=
  ∀ n, P7441652063001114416.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P14560470816021029461

`ogf(2/(1-7x+14x^2-8x^3))`
-/

namespace A203241.P14560470816021029461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -7, 14, -8] n

end

end A203241.P14560470816021029461

namespace A203241

/-- `ogf(2/(1-7x+14x^2-8x^3))` -/
def P14560470816021029461.Spec : Prop :=
  ∀ n, P14560470816021029461.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P15630288000199709130

`∑[2*C(2^(n+1), 2)]`
-/

namespace A203241.P15630288000199709130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 ^ (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P15630288000199709130

namespace A203241

/-- `∑[2*C(2^(n+1), 2)]` -/
def P15630288000199709130.Spec : Prop :=
  ∀ n, (P15630288000199709130.a n : ℤ) = A203241 (n + 2)

end A203241

/-! ## A203241.P10144253786970929795

`lcm(2, ∑[C(2^(n+1), 2)])`
-/

namespace A203241.P10144253786970929795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203241.P10144253786970929795

namespace A203241

/-- `lcm(2, ∑[C(2^(n+1), 2)])` -/
def P10144253786970929795.Spec : Prop :=
  ∀ n, (P10144253786970929795.a n : ℤ) = A203241 (n + 2)

end A203241

/-! ## A203241.P1320700538529452343

`∑[lcm(2^(n+1), ∑[2^n])]`
-/

namespace A203241.P1320700538529452343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P1320700538529452343

namespace A203241

/-- `∑[lcm(2^(n+1), ∑[2^n])]` -/
def P1320700538529452343.Spec : Prop :=
  ∀ n, (P1320700538529452343.a n : ℤ) = A203241 (n + 2)

end A203241

/-! ## A203241.P10127197328657383000

`2*(∑[4^n]+a(n-1))` with `a(0)=2`
-/

namespace A203241.P10127197328657383000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A203241.P10127197328657383000

namespace A203241

/-- `2*(∑[4^n]+a(n-1))` -/
def P10127197328657383000.Spec : Prop :=
  ∀ n, (P10127197328657383000.a n : ℤ) = A203241 (n + 2)

end A203241

/-! ## A203241.P617885950780923370

`∑[2^n*∑[2*a(n-1)]]` with `a(0)=2`
-/

namespace A203241.P617885950780923370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P617885950780923370

namespace A203241

/-- `∑[2^n*∑[2*a(n-1)]]` -/
def P617885950780923370.Spec : Prop :=
  ∀ n, (P617885950780923370.a n : ℤ) = A203241 (n + 2)

end A203241

/-! ## A203241.P13082666004336061488

`2*A171477(n)`
-/

namespace A203241.P13082666004336061488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171477 n

end

end A203241.P13082666004336061488

namespace A203241

/-- `2*A171477(n)` -/
def P13082666004336061488.Spec : Prop :=
  ∀ n, P13082666004336061488.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P17141598190531781632

`∑[A020522(n+1)]`
-/

namespace A203241.P17141598190531781632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P17141598190531781632

namespace A203241

/-- `∑[A020522(n+1)]` -/
def P17141598190531781632.Spec : Prop :=
  ∀ n, P17141598190531781632.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P2011878998684174911

`∑[2*A171476(n)]`
-/

namespace A203241.P2011878998684174911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P2011878998684174911

namespace A203241

/-- `∑[2*A171476(n)]` -/
def P2011878998684174911.Spec : Prop :=
  ∀ n, P2011878998684174911.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P16214262250896826759

`∑[A059153(n)/2]`
-/

namespace A203241.P16214262250896826759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059153 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P16214262250896826759

namespace A203241

/-- `∑[A059153(n)/2]` -/
def P16214262250896826759.Spec : Prop :=
  ∀ n, P16214262250896826759.a n = (A203241 (n + 2) : ℚ)

end A203241

/-! ## A203241.P8376148108857621405

`A274868(2*n+5)`
-/

namespace A203241.P8376148108857621405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274868 (2 * n + 5)

end

end A203241.P8376148108857621405

namespace A203241

/-- `A274868(2*n+5)` -/
def P8376148108857621405.Spec : Prop :=
  ∀ n, P8376148108857621405.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P1307654108398962685

`∑[∑[2*A010036(n)]]`
-/

namespace A203241.P1307654108398962685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P1307654108398962685

namespace A203241

/-- `∑[∑[2*A010036(n)]]` -/
def P1307654108398962685.Spec : Prop :=
  ∀ n, P1307654108398962685.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P7782612341227472834

`∑[record[A279879(n+1)]]`
-/

namespace A203241.P7782612341227472834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P7782612341227472834

namespace A203241

/-- `∑[record[A279879(n+1)]]` -/
def P7782612341227472834.Spec : Prop :=
  ∀ n, P7782612341227472834.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P9558513665028140658

`∑[record[A288663(n+1)]]`
-/

namespace A203241.P9558513665028140658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P9558513665028140658

namespace A203241

/-- `∑[record[A288663(n+1)]]` -/
def P9558513665028140658.Spec : Prop :=
  ∀ n, P9558513665028140658.a n = A203241 (n + 2)

end A203241

/-! ## A203241.P12259069221779103931

`∑[A156589(n+1)+1]`
-/

namespace A203241.P12259069221779103931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156589 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203241.P12259069221779103931

namespace A203241

/-- `∑[A156589(n+1)+1]` -/
def P12259069221779103931.Spec : Prop :=
  ∀ n, P12259069221779103931.a n = A203241 (n + 2)

end A203241

/-!
# A203242: Second elementary symmetric function of the first n terms of (1, 3, 7, 15, 31, ...).

The programs for A203242, the canonical program `A203242.P3066100168192442728` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203242 has offset 2).

The definition of A203242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203242.P3066100168192442728

`4^(n+3)/3-(2*(n+2)+2)*2^(n+2)+((n+2)²+3*(n+2))/2+2/3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203242

/-- `4^(n+3)/3-(2*(n+2)+2)*2^(n+2)+((n+2)²+3*(n+2))/2+2/3` -/
def P3066100168192442728.Spec : Prop :=
  ∀ n, P3066100168192442728.a n = (A203242 (n + 2) : ℚ)

end A203242

/-! ## A203242.P17057204554275008722

`∑[∑[A126646(n)]*A126646(n+1)]`
-/

namespace A203242.P17057204554275008722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A126646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203242.P17057204554275008722

namespace A203242

/-- `∑[∑[A126646(n)]*A126646(n+1)]` -/
def P17057204554275008722.Spec : Prop :=
  ∀ n, P17057204554275008722.a n = A203242 (n + 2)

end A203242

/-! ## A203242.P10429429088283380248

`∑[A000225(n+2)*A125128(n+1)]`
-/

namespace A203242.P10429429088283380248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) * A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203242.P10429429088283380248

namespace A203242

/-- `∑[A000225(n+2)*A125128(n+1)]` -/
def P10429429088283380248.Spec : Prop :=
  ∀ n, P10429429088283380248.a n = A203242 (n + 2)

end A203242

/-! ## A203242.P1813644528157487565

`∑[A000225(n+2)*A000295(n+2)]`
-/

namespace A203242.P1813644528157487565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) * A000295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203242.P1813644528157487565

namespace A203242

/-- `∑[A000225(n+2)*A000295(n+2)]` -/
def P1813644528157487565.Spec : Prop :=
  ∀ n, P1813644528157487565.a n = A203242 (n + 2)

end A203242

/-! ## A203242.P3236038716593239423

`∑[∑[A000225(n+1)]*A000225(n+2)]`
-/

namespace A203242.P3236038716593239423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000225 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203242.P3236038716593239423

namespace A203242

/-- `∑[∑[A000225(n+1)]*A000225(n+2)]` -/
def P3236038716593239423.Spec : Prop :=
  ∀ n, P3236038716593239423.a n = A203242 (n + 2)

end A203242

/-! ## A203242.P7847217965995529437

`∑[Δ[A000247(n+2)]*A125128(n+1)]`
-/

namespace A203242.P7847217965995529437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000247 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203242.P7847217965995529437

namespace A203242

/-- `∑[Δ[A000247(n+2)]*A125128(n+1)]` -/
def P7847217965995529437.Spec : Prop :=
  ∀ n, P7847217965995529437.a n = A203242 (n + 2)

end A203242

/-!
# A203243: Second elementary symmetric function of the first n terms of (1,3,9,27,81,...).

The programs for A203243, the canonical program `A203243.P12770153209051435861` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203243 has offset 2).

The definition of A203243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203243.P12770153209051435861

`3*A006100(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203243

/-- `3*A006100(n+2)` -/
def P12770153209051435861.Spec : Prop :=
  ∀ n, P12770153209051435861.a n = A203243 (n + 2)

theorem P12770153209051435861.correct : P12770153209051435861.Spec := by
  intro n
  simp only [A203243, Nat.add_sub_cancel]

end A203243

/-! ## A203243.P2740519960287400315

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=3, a(1)=39, a(2)=390`
-/

namespace A203243.P2740519960287400315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 39, 390] fun n a =>
  13 * a (n - 1) - 39 * a (n - 2) + 27 * a (n - 3)

end

end A203243.P2740519960287400315

namespace A203243

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P2740519960287400315.Spec : Prop :=
  ∀ n, P2740519960287400315.a n = A203243 (n + 2)

end A203243

/-! ## A203243.P11195139830075483589

`(3-4*3^(n+2)+9^(n+2))/16`
-/

namespace A203243.P11195139830075483589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (4 * 3 ^ (n + 2) : ℤ) + (9 ^ (n + 2) : ℤ) : ℚ) / 16

end

end A203243.P11195139830075483589

namespace A203243

/-- `(3-4*3^(n+2)+9^(n+2))/16` -/
def P11195139830075483589.Spec : Prop :=
  ∀ n, P11195139830075483589.a n = (A203243 (n + 2) : ℚ)

end A203243

/-! ## A203243.P11632812861011031814

`3*(∑[3^n]²-a(n-1))` with `a(0)=3`
-/

namespace A203243.P11632812861011031814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - a (n - 1))

end

end A203243.P11632812861011031814

namespace A203243

/-- `3*(∑[3^n]²-a(n-1))` -/
def P11632812861011031814.Spec : Prop :=
  ∀ n, P11632812861011031814.a n = A203243 (n + 2)

end A203243

/-! ## A203243.P12339836645804911080

`3*∑[A016142(n)]`
-/

namespace A203243.P12339836645804911080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203243.P12339836645804911080

namespace A203243

/-- `3*∑[A016142(n)]` -/
def P12339836645804911080.Spec : Prop :=
  ∀ n, P12339836645804911080.a n = A203243 (n + 2)

end A203243

/-! ## A203243.P9648952107255409514

`3*∑[A167993(2*(n+1))]`
-/

namespace A203243.P9648952107255409514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203243.P9648952107255409514

namespace A203243

/-- `3*∑[A167993(2*(n+1))]` -/
def P9648952107255409514.Spec : Prop :=
  ∀ n, P9648952107255409514.a n = A203243 (n + 2)

end A203243

/-! ## A203243.P8654285407604223410

`3*A099583(2*n+3)/2`
-/

namespace A203243.P8654285407604223410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A099583 (2 * n + 3) : ℚ) / 2)

end

end A203243.P8654285407604223410

namespace A203243

/-- `3*A099583(2*n+3)/2` -/
def P8654285407604223410.Spec : Prop :=
  ∀ n, P8654285407604223410.a n = (A203243 (n + 2) : ℚ)

end A203243

/-! ## A203243.P3554365329383438015

`A026121(n+1)+a(n-1)` with `a(0)=3`
-/

namespace A203243.P3554365329383438015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A026121 (n + 1) + a (n - 1)

end

end A203243.P3554365329383438015

namespace A203243

/-- `A026121(n+1)+a(n-1)` -/
def P3554365329383438015.Spec : Prop :=
  ∀ n, P3554365329383438015.a n = A203243 (n + 2)

end A203243

/-! ## A203243.P4780835530890246107

`a(n-1)+C(3^(n+1), 2)` with `a(0)=3`
-/

namespace A203243.P4780835530890246107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Nat.choose (3 ^ (n + 1)) 2

end

end A203243.P4780835530890246107

namespace A203243

/-- `a(n-1)+C(3^(n+1), 2)` -/
def P4780835530890246107.Spec : Prop :=
  ∀ n, (P4780835530890246107.a n : ℤ) = A203243 (n + 2)

end A203243

/-! ## A203243.P6164283680478612538

`A006100(n+3)-A002452(n+2)`
-/

namespace A203243.P6164283680478612538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006100 (n + 3) - A002452 (n + 2)

end

end A203243.P6164283680478612538

namespace A203243

/-- `A006100(n+3)-A002452(n+2)` -/
def P6164283680478612538.Spec : Prop :=
  ∀ n, P6164283680478612538.a n = A203243 (n + 2)

end A203243

/-!
# A203244: Second elementary symmetric function of the first n terms of (1,4,16,64,256,...).

The programs for A203244, the canonical program `A203244.P16822674462860900209` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203244 has offset 2).

The definition of A203244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203244.P16822674462860900209

`4*A006105(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203244

/-- `4*A006105(n+2)` -/
def P16822674462860900209.Spec : Prop :=
  ∀ n, P16822674462860900209.a n = A203244 (n + 2)

theorem P16822674462860900209.correct : P16822674462860900209.Spec := by
  intro n
  simp only [A203244, Nat.add_sub_cancel]

end A203244

/-! ## A203244.P1855876825028213933

`(4-5*4^(n+2)+16^(n+2))/45`
-/

namespace A203244.P1855876825028213933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - (5 * 4 ^ (n + 2) : ℤ) + (16 ^ (n + 2) : ℤ) : ℚ) / 45

end

end A203244.P1855876825028213933

namespace A203244

/-- `(4-5*4^(n+2)+16^(n+2))/45` -/
def P1855876825028213933.Spec : Prop :=
  ∀ n, P1855876825028213933.a n = (A203244 (n + 2) : ℚ)

end A203244

/-! ## A203244.P17137141967328663842

`4*(∑[4^n]²-a(n-1))` with `a(0)=4`
-/

namespace A203244.P17137141967328663842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - a (n - 1))

end

end A203244.P17137141967328663842

namespace A203244

/-- `4*(∑[4^n]²-a(n-1))` -/
def P17137141967328663842.Spec : Prop :=
  ∀ n, P17137141967328663842.a n = A203244 (n + 2)

end A203244

/-! ## A203244.P16340306121723347712

`8*a(n-1)+∑[4*a(n-1)]+8*a(n-1)` with `a(0)=4`
-/

namespace A203244.P16340306121723347712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  8 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1))

end

end A203244.P16340306121723347712

namespace A203244

/-- `8*a(n-1)+∑[4*a(n-1)]+8*a(n-1)` -/
def P16340306121723347712.Spec : Prop :=
  ∀ n, (P16340306121723347712.a n : ℤ) = A203244 (n + 2)

end A203244

/-! ## A203244.P6407885197118621208

`4*∑[A166984(n)]`
-/

namespace A203244.P6407885197118621208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203244.P6407885197118621208

namespace A203244

/-- `4*∑[A166984(n)]` -/
def P6407885197118621208.Spec : Prop :=
  ∀ n, P6407885197118621208.a n = A203244 (n + 2)

end A203244

/-! ## A203244.P4642907037595219877

`4*∑[A246036(2*n)]`
-/

namespace A203244.P4642907037595219877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203244.P4642907037595219877

namespace A203244

/-- `4*∑[A246036(2*n)]` -/
def P4642907037595219877.Spec : Prop :=
  ∀ n, P4642907037595219877.a n = A203244 (n + 2)

end A203244

/-! ## A203244.P5978240481996373419

`4*∑[A266846(2*n)]`
-/

namespace A203244.P5978240481996373419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203244.P5978240481996373419

namespace A203244

/-- `4*∑[A266846(2*n)]` -/
def P5978240481996373419.Spec : Prop :=
  ∀ n, P5978240481996373419.a n = A203244 (n + 2)

end A203244

/-! ## A203244.P5613889570424654382

`A299960(n+1)-A007583(n+1)²`
-/

namespace A203244.P5613889570424654382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299960 (n + 1) - A007583 (n + 1) ^ 2

end

end A203244.P5613889570424654382

namespace A203244

/-- `A299960(n+1)-A007583(n+1)²` -/
def P5613889570424654382.Spec : Prop :=
  ∀ n, P5613889570424654382.a n = A203244 (n + 2)

end A203244

/-!
# A203245: Second elementary symmetric function of the first n terms of (1,2,3,5,8,...).

The programs for A203245, the canonical program `A203245.P2063800879592085872` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203245 has offset 1).

The definition of A203245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203245.P13586795806620250012

`floor(a(n-1)+ϕ*(sqrt(a(n-1))+1)²)` with `a(0)=2`
-/

namespace A203245.P13586795806620250012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.goldenRatio * (Real.sqrt (a (n - 1) : ℝ) + 1) ^ 2⌋

end

end A203245.P13586795806620250012

namespace A203245

/-- `floor(a(n-1)+ϕ*(sqrt(a(n-1))+1)²)` -/
def P13586795806620250012.Spec : Prop :=
  ∀ n, P13586795806620250012.a n = A203245 (n + 1)

end A203245

/-! ## A203245.P2063800879592085872

`∑[A001911(n+1)*A020695(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203245

/-- `∑[A001911(n+1)*A020695(n)]` -/
def P2063800879592085872.Spec : Prop :=
  ∀ n, P2063800879592085872.a n = A203245 (n + 1)

theorem P2063800879592085872.correct : P2063800879592085872.Spec := by
  intro n
  simp only [A203245, Nat.add_sub_cancel]

end A203245

/-! ## A203245.P2219901453742408190

`∑[∑[A000045(n+2)]*A020695(n)]`
-/

namespace A203245.P2219901453742408190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203245.P2219901453742408190

namespace A203245

/-- `∑[∑[A000045(n+2)]*A020695(n)]` -/
def P2219901453742408190.Spec : Prop :=
  ∀ n, P2219901453742408190.a n = A203245 (n + 1)

end A203245

/-! ## A203245.P16339356947265599296

`A202462(n+1)+∑[A119996(n+1)]`
-/

namespace A203245.P16339356947265599296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202462 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203245.P16339356947265599296

namespace A203245

/-- `A202462(n+1)+∑[A119996(n+1)]` -/
def P16339356947265599296.Spec : Prop :=
  ∀ n, P16339356947265599296.a n = A203245 (n + 1)

end A203245

/-! ## A203245.P9847422704316945049

`A001911(n+1)+∑[A059769(n+3)]`
-/

namespace A203245.P9847422704316945049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059769 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203245.P9847422704316945049

namespace A203245

/-- `A001911(n+1)+∑[A059769(n+3)]` -/
def P9847422704316945049.Spec : Prop :=
  ∀ n, P9847422704316945049.a n = A203245 (n + 1)

end A203245

/-! ## A203245.P13261032195686787029

`A180664(n+1)+A001911(n+1)*A001911(n)`
-/

namespace A203245.P13261032195686787029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180664 (n + 1) + A001911 (n + 1) * A001911 n

end

end A203245.P13261032195686787029

namespace A203245

/-- `A180664(n+1)+A001911(n+1)*A001911(n)` -/
def P13261032195686787029.Spec : Prop :=
  ∀ n, P13261032195686787029.a n = A203245 (n + 1)

end A203245

/-!
# A203246: Second elementary symmetric function of the first n terms of (1,1,2,2,3,3,4,4,...).

The programs for A203246, the canonical program `A203246.P15187326274312400021` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203246 has offset 2).

The definition of A203246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203246.P10428609718957287920

`∑[∑[(lcm(n, n+2)+n+2)/2]]`
-/

namespace A203246.P10428609718957287920
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 2) + (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203246.P10428609718957287920

namespace A203246

/-- `∑[∑[(lcm(n, n+2)+n+2)/2]]` -/
def P10428609718957287920.Spec : Prop :=
  ∀ n, P10428609718957287920.a n = (A203246 (n + 2) : ℚ)

end A203246

/-! ## A203246.P3478301405176840850

`∑[∑[(n/2+1)*(gcd(n, ∑[n])+1)]]`
-/

namespace A203246.P3478301405176840850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203246.P3478301405176840850

namespace A203246

/-- `∑[∑[(n/2+1)*(gcd(n, ∑[n])+1)]]` -/
def P3478301405176840850.Spec : Prop :=
  ∀ n, P3478301405176840850.a n = (A203246 (n + 2) : ℚ)

end A203246

/-! ## A203246.P14130195090035203537

`∑[(ceil(n/2)+1)²*∑[char[2*n]]]`
-/

namespace A203246.P14130195090035203537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203246.P14130195090035203537

namespace A203246

/-- `∑[(ceil(n/2)+1)²*∑[char[2*n]]]` -/
def P14130195090035203537.Spec : Prop :=
  ∀ n, P14130195090035203537.a n = A203246 (n + 2)

end A203246

/-! ## A203246.P15187326274312400021

`abs(a(n-1)-∑[A199771(n+1)])` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203246

/-- `abs(a(n-1)-∑[A199771(n+1)])` -/
def P15187326274312400021.Spec : Prop :=
  ∀ n, P15187326274312400021.a n = A203246 (n + 2)

theorem P15187326274312400021.correct : P15187326274312400021.Spec := by
  intro n
  simp only [A203246, Nat.add_sub_cancel]

end A203246

/-! ## A203246.P3724895163655286486

`A005994(n)+2*A096338(n)`
-/

namespace A203246.P3724895163655286486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n + 2 * A096338 n

end

end A203246.P3724895163655286486

namespace A203246

/-- `A005994(n)+2*A096338(n)` -/
def P3724895163655286486.Spec : Prop :=
  ∀ n, P3724895163655286486.a n = A203246 (n + 2)

end A203246

/-! ## A203246.P6912394103050760034

`A203299(n+2)-A295622(n+5)`
-/

namespace A203246.P6912394103050760034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203299 (n + 2) - A295622 (n + 5)

end

end A203246.P6912394103050760034

namespace A203246

/-- `A203299(n+2)-A295622(n+5)` -/
def P6912394103050760034.Spec : Prop :=
  ∀ n, P6912394103050760034.a n = A203246 (n + 2)

end A203246

/-! ## A203246.P12423762254856687835

`and(∑[A210433(n+2)], -1)`
-/

namespace A203246.P12423762254856687835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210433 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A203246.P12423762254856687835

namespace A203246

/-- `and(∑[A210433(n+2)], -1)` -/
def P12423762254856687835.Spec : Prop :=
  ∀ n, P12423762254856687835.a n = A203246 (n + 2)

end A203246

/-!
# A203247: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,2,1,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A203247, there is no canonical definition to state claims against.
-/

/-! ## A203247.P14002196206169671343

`A006579(A112940(n)+A112839(n))`
-/

namespace A203247.P14002196206169671343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (A112940 n + A112839 n).toNat

end

end A203247.P14002196206169671343

/-!
# A203248: Number of nX1 0..3 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203248, there is no canonical definition to state claims against.
-/

/-! ## A203248.P62492325075177890

`A203252(∑[n]+1)`
-/

namespace A203248.P62492325075177890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203248.P62492325075177890

/-! ## A203248.P15210828454703360954

`lcm(2, A203252(A000124(n)))`
-/

namespace A203248.P15210828454703360954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203252 (A000124 n).toNat)

end

end A203248.P15210828454703360954

/-! ## A203248.P4688585381421506361

`∑{d}[A203252(A000124(n)), A000010(#)]`
-/

namespace A203248.P4688585381421506361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203252 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A203248.P4688585381421506361

/-! ## A203248.P8465180036104636718

`A203252(A000124(n))/A007318(∑[n])`
-/

namespace A203248.P8465180036104636718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203252 (A000124 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A203248.P8465180036104636718

/-! ## A203248.P12472286562533922450

`A097305(n+1)*A203252(A000124(n))`
-/

namespace A203248.P12472286562533922450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097305 (n + 1) * A203252 (A000124 n).toNat

end

end A203248.P12472286562533922450

/-!
# A203249: Number of nX2 0..3 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203249, there is no canonical definition to state claims against.
-/

/-! ## A203249.P2633004252106658407

`A203252(∑[n+1]+2)`
-/

namespace A203249.P2633004252106658407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203252 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203249.P2633004252106658407

/-! ## A203249.P10831779147737642444

`A203252(A000096(n)+3)%A028083(n+1)`
-/

namespace A203249.P10831779147737642444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203252 (A000096 n + 3).toNat) (A028083 (n + 1))

end

end A203249.P10831779147737642444

/-! ## A203249.P7072945134958961105

`A000034(2*n)*A203252(A000096(n+1))`
-/

namespace A203249.P7072945134958961105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A203252 (A000096 (n + 1)).toNat

end

end A203249.P7072945134958961105

/-!
# A203250: Number of nX3 0..3 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203250, there is no canonical definition to state claims against.
-/

/-! ## A203250.P11463214962075303815

`A203252(∑[n+2]+4)`
-/

namespace A203250.P11463214962075303815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203252 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203250.P11463214962075303815

/-! ## A203250.P3456547609174043883

`lcm(2, A203252(A167614(n+1)))`
-/

namespace A203250.P3456547609174043883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203252 (A167614 (n + 1)).toNat)

end

end A203250.P3456547609174043883

/-! ## A203250.P7954969987354831259

`A203252(A167614(n+1))+A027870(n)`
-/

namespace A203250.P7954969987354831259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203252 (A167614 (n + 1)).toNat + A027870 n

end

end A203250.P7954969987354831259

/-!
# A203251: Number of n X 4 0..3 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203251, there is no canonical definition to state claims against.
-/

/-! ## A203251.P11638353747417248698

`A203252(A020752(n+1))`
-/

namespace A203251.P11638353747417248698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203252 (A020752 (n + 1)).toNat

end

end A203251.P11638353747417248698

/-!
# A203252: T(n,k)=Number of nXk 0..3 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203252, there is no canonical definition to state claims against.
-/

/-! ## A203252.P12438820664086353268

`A244209(A240260(n+1))`
-/

namespace A203252.P12438820664086353268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244209 (A240260 (n + 1)).toNat

end

end A203252.P12438820664086353268

/-! ## A203252.P11665962941486135821

`A341199(A244225(n)+A208872(n+1))`
-/

namespace A203252.P11665962941486135821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341199 (A244225 n + A208872 (n + 1)).toNat

end

end A203252.P11665962941486135821

/-!
# A203253: L.g.f.: Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} x^n/n * exp( Sum_{k>=1} a(n*k)*x^(n*k)/k ).

The programs for A203253, there is no canonical definition to state claims against.
-/

/-! ## A203253.P14388792371553043565

`∑[A015128(n)*A048669(A240996(n))]`
-/

namespace A203253.P14388792371553043565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A048669 (A240996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203253.P14388792371553043565

/-! ## A203253.P871682772039003755

`A123494(∑[∑[n+2]]-dr((n+1)²))`
-/

namespace A203253.P871682772039003755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123494 (∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.digitalRoot ((n + 1) ^ 2 : ℤ))

end

end A203253.P871682772039003755

/-!
# A203254: G.f.: A(x) = exp( Sum_{n>=1} G_n(x^n)*x^n/n ) such that G_n(x^n) = Product_{k=0..n-1} A(u^k*x) where u is an n-th root of unity.

The programs for A203254, there is no canonical definition to state claims against.
-/

/-! ## A203254.P11571807041214767833

`A208062(n)+A001222(A214820(n+1)+1)`
-/

namespace A203254.P11571807041214767833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 n + A001222 (A214820 (n + 1) + 1).toNat

end

end A203254.P11571807041214767833

/-! ## A203254.P3560903543314890328

`A342192(a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A203254.P3560903543314890328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A342192 (a (n - 2)).toNat

end

end A203254.P3560903543314890328

/-! ## A203254.P10473514496317540344

`A179468(A024645(n))`
-/

namespace A203254.P10473514496317540344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179468 (A024645 n).toNat

end

end A203254.P10473514496317540344

/-! ## A203254.P6981687107732932218

`A179468(A024646(n))`
-/

namespace A203254.P6981687107732932218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179468 (A024646 n).toNat

end

end A203254.P6981687107732932218

/-!
# A203255: 

The programs for A203255, there is no canonical definition to state claims against.
-/

/-! ## A203255.P436835182515480467

`A203262((n+1)²+n²)`
-/

namespace A203255.P436835182515480467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 ((n + 1) ^ 2 + n ^ 2)

end

end A203255.P436835182515480467

/-!
# A203256: Number of nX2 0..7 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203256, there is no canonical definition to state claims against.
-/

/-! ## A203256.P3299440983277391362

`record[ratio[A203262(n+1)]]`
-/

namespace A203256.P3299440983277391362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203256.P3299440983277391362

/-! ## A203256.P10833319635329177306

`A203262(∑[n+1]+2)`
-/

namespace A203256.P10833319635329177306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203256.P10833319635329177306

/-! ## A203256.P17921233163404592915

`record[A203262(record[A091995(n+1)])]`
-/

namespace A203256.P17921233163404592915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203256.P17921233163404592915

/-! ## A203256.P2143242067096301156

`record[root(A203262(n+2), A274741(n))]`
-/

namespace A203256.P2143242067096301156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203262 (n + 2) : ℝ) ^ (1 / (A274741 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203256.P2143242067096301156

/-! ## A203256.P2123763629704514320

`record[gcd(A014473(n), A203262(n+2))]`
-/

namespace A203256.P2123763629704514320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A203262 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203256.P2123763629704514320

/-!
# A203257: Number of nX3 0..7 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203257, there is no canonical definition to state claims against.
-/

/-! ## A203257.P975192762819308313

`A203262(∑[n+2]+4)`
-/

namespace A203257.P975192762819308313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203257.P975192762819308313

/-! ## A203257.P7016337174051966214

`A203262(A167614(n+1))+A107846(n)`
-/

namespace A203257.P7016337174051966214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (A167614 (n + 1)).toNat + A107846 n

end

end A203257.P7016337174051966214

/-! ## A203257.P1277515249791461292

`A063435(n)*A203262(A167614(n+1))`
-/

namespace A203257.P1277515249791461292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A203262 (A167614 (n + 1)).toNat

end

end A203257.P1277515249791461292

/-! ## A203257.P10087065736883640027

`A203262(A167614(n+1))^A178489(n)`
-/

namespace A203257.P10087065736883640027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203262 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A203257.P10087065736883640027

/-! ## A203257.P9271327854307980460

`lcm(A015751(n), A203262(A167614(n+1)))`
-/

namespace A203257.P9271327854307980460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015751 n) (A203262 (A167614 (n + 1)).toNat)

end

end A203257.P9271327854307980460

/-!
# A203258: Number of nX4 0..7 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203258, there is no canonical definition to state claims against.
-/

/-! ## A203258.P8365808309853987237

`A203262(∑[n+3]+7)`
-/

namespace A203258.P8365808309853987237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203258.P8365808309853987237

/-!
# A203259: 

The programs for A203259, there is no canonical definition to state claims against.
-/

/-! ## A203259.P11131695683600054088

`A203262(A167499(n+3))`
-/

namespace A203259.P11131695683600054088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (A167499 (n + 3)).toNat

end

end A203259.P11131695683600054088

/-!
# A203261: 

The programs for A203261, there is no canonical definition to state claims against.
-/

/-! ## A203261.P18168704661751834927

`A203262(Δ[A000292(n+5)]+7)`
-/

namespace A203261.P18168704661751834927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203262 (f1 (n + 1) - f1 n + 7).toNat

end

end A203261.P18168704661751834927

/-!
# A203262: T(n,k)=Number of nXk 0..7 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203262, there is no canonical definition to state claims against.
-/

/-! ## A203262.P480226971839833472

`A203256(A306697(n+1)^A325825(n+1))`
-/

namespace A203262.P480226971839833472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203256 (SequenceMachineLib.roundAway ((A306697 (n + 1) : ℚ) ^ (A325825 (n + 1) : ℤ))).toNat

end

end A203262.P480226971839833472

/-! ## A203262.P422495090784817733

`A203256((A014473(n)+1)%A203250(n+1))`
-/

namespace A203262.P422495090784817733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203256 (Int.tmod (A014473 n + 1) (A203250 (n + 1))).toNat

end

end A203262.P422495090784817733

/-! ## A203262.P10991320658539246270

`A203256(A306697(n+1)%A203250(n+1))`
-/

namespace A203262.P10991320658539246270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203256 (Int.tmod (A306697 (n + 1)) (A203250 (n + 1))).toNat

end

end A203262.P10991320658539246270

/-! ## A203262.P3133412237134024870

`A203256(gcd(A062499(n), A245733(n)))`
-/

namespace A203262.P3133412237134024870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203256 (Int.gcd (A062499 n) (A245733 n))

end

end A203262.P3133412237134024870

/-!
# A203264: Permanent of the n-th principal submatrix of (A134446 in square format).

The programs for A203264, there is no canonical definition to state claims against.
-/

/-! ## A203264.P1541909195019970627

`∏[(n+1)²*∑[log2(gcd(2, n))]]`
-/

namespace A203264.P1541909195019970627
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203264.P1541909195019970627

/-! ## A203264.P17727084032481126818

`∏[(n+1)²*∑[char[2*n]]]`
-/

namespace A203264.P17727084032481126818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203264.P17727084032481126818

/-! ## A203264.P13342202059286183702

`(n+1)²*∑[char[2*n]]*a(n-1)` with `a(0)=1`
-/

namespace A203264.P13342202059286183702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A203264.P13342202059286183702

/-! ## A203264.P14523516394382628753

`a(n-1)*A130656(n+1)` with `a(0)=1`
-/

namespace A203264.P14523516394382628753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A130656 (n + 1)

end

end A203264.P14523516394382628753

/-! ## A203264.P4639427172609702381

`∏[(n+1)²]*A010551(n+1)`
-/

namespace A203264.P4639427172609702381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010551 (n + 1)

end

end A203264.P4639427172609702381

/-!
# A203265: L.g.f.: Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} x^n/n * exp( Sum_{k>=1} 2*a(n*k)*x^(n*k)/k ).

The programs for A203265, there is no canonical definition to state claims against.
-/

/-! ## A203265.P15910992198238374132

`A291636(A152011(n))+A000578(n)`
-/

namespace A203265.P15910992198238374132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (A152011 n).toNat + A000578 n

end

end A203265.P15910992198238374132

/-!
# A203266: G.f.: A(x) = exp( Sum_{n>=1} G_n(x^n)^2 * x^n/n ) such that G_n(x^n) = Product_{k=0..n-1} A(u^k*x) where u is an n-th root of unity.

The programs for A203266, there is no canonical definition to state claims against.
-/

/-! ## A203266.P1467943558410365527

`A248231(A333895(n))+A135925(n)`
-/

namespace A203266.P1467943558410365527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A333895 n).toNat + A135925 n

end

end A203266.P1467943558410365527

/-! ## A203266.P10304852642667446788

`A000005(∏[n!])+floor(2^n/3)²`
-/

namespace A203266.P10304852642667446788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j) + ⌊(2 ^ n : ℚ) / 3⌋ ^ 2

end

end A203266.P10304852642667446788

/-!
# A203268: G.f.: A(x) = exp( Sum_{n>=1} G_n(x^n)^3 * x^n/n ) such that G_n(x^n) = Product_{k=0..n-1} A(u^k*x) where u is an n-th root of unity.

The programs for A203268, there is no canonical definition to state claims against.
-/

/-! ## A203268.P1838725616110850741

`A194383(A379160(n))-1`
-/

namespace A203268.P1838725616110850741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194383 (A379160 n).toNat - 1

end

end A203268.P1838725616110850741

/-! ## A203268.P6754300652418850533

`A322567(or(n, A239841(n)))`
-/

namespace A203268.P6754300652418850533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322567 (Int.lor (n : ℤ) (A239841 n)).toNat

end

end A203268.P6754300652418850533

/-!
# A203269: Row sums of triangle A202917.

The programs for A203269, there is no canonical definition to state claims against.
-/

/-! ## A203269.P18254807441097443126

`A347958((2*n)^n+n)`
-/

namespace A203269.P18254807441097443126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347958 ((2 * n) ^ n + n)

end

end A203269.P18254807441097443126

/-!
# A203270: Number of n X n 0..5 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203270, there is no canonical definition to state claims against.
-/

/-! ## A203270.P7260248875860763233

`A203277(∑[4*n]+1)`
-/

namespace A203270.P7260248875860763233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203270.P7260248875860763233

/-!
# A203271: Number of nX2 0..5 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203271, there is no canonical definition to state claims against.
-/

/-! ## A203271.P17414374088101359109

`record[ratio[A203277(n+1)]]`
-/

namespace A203271.P17414374088101359109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203271.P17414374088101359109

/-! ## A203271.P11434615529985407068

`A203277(∑[n+1]+2)`
-/

namespace A203271.P11434615529985407068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203271.P11434615529985407068

/-! ## A203271.P11076471566023883120

`record[gcd(A203277(n+1), A259776(n))]`
-/

namespace A203271.P11076471566023883120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203277 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203271.P11076471566023883120

/-! ## A203271.P5275739943889198575

`record[gcd(A048993(n), A203277(n+2))]`
-/

namespace A203271.P5275739943889198575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A203277 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203271.P5275739943889198575

/-! ## A203271.P17591353722838018258

`record[A203277(n+2)/A203277(n+1)]`
-/

namespace A203271.P17591353722838018258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203277 (n + 2) : ℚ) / (A203277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203271.P17591353722838018258

/-!
# A203272: Number of nX3 0..5 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203272, there is no canonical definition to state claims against.
-/

/-! ## A203272.P16087706759007676340

`A203277(∑[n+2]+4)`
-/

namespace A203272.P16087706759007676340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203272.P16087706759007676340

/-! ## A203272.P14644997077837691317

`record[gcd(A203277(n+2), A259776(n))]`
-/

namespace A203272.P14644997077837691317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203277 (n + 2)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203272.P14644997077837691317

/-! ## A203272.P10867819182903744876

`lcm((-1)^n, A203277(A167614(n+1)))`
-/

namespace A203272.P10867819182903744876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A203277 (A167614 (n + 1)).toNat)

end

end A203272.P10867819182903744876

/-! ## A203272.P16933645492590697770

`A347323(n)+A203277(A167614(n+1))`
-/

namespace A203272.P16933645492590697770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A203277 (A167614 (n + 1)).toNat

end

end A203272.P16933645492590697770

/-! ## A203272.P2310621558147111623

`or(A000007(n), A203277(A167614(n+1)))`
-/

namespace A203272.P2310621558147111623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203277 (A167614 (n + 1)).toNat)

end

end A203272.P2310621558147111623

/-!
# A203273: Number of nX4 0..5 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203273, there is no canonical definition to state claims against.
-/

/-! ## A203273.P3370699438385978056

`A203277(A055999(n)+10)`
-/

namespace A203273.P3370699438385978056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (A055999 n + 10).toNat

end

end A203273.P3370699438385978056

/-! ## A203273.P9856432386624288905

`A203277(A167614(n+2)+1)`
-/

namespace A203273.P9856432386624288905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (A167614 (n + 2) + 1).toNat

end

end A203273.P9856432386624288905

/-!
# A203274: Number of n X 5 0..5 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203274, there is no canonical definition to state claims against.
-/

/-! ## A203274.P11935460817017879452

`A203277(A374005(n+1))`
-/

namespace A203274.P11935460817017879452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (A374005 (n + 1)).toNat

end

end A203274.P11935460817017879452

/-! ## A203274.P6573074300097423715

`A203277(Δ[A023545(n+1)])`
-/

namespace A203274.P6573074300097423715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (f1 (n + 1) - f1 n).toNat

end

end A203274.P6573074300097423715

/-!
# A203275: 

The programs for A203275, there is no canonical definition to state claims against.
-/

/-! ## A203275.P3409090938370227639

`A203277(Δ[A023545(n+2)]-1)`
-/

namespace A203275.P3409090938370227639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203277 (f1 (n + 1) - f1 n - 1).toNat

end

end A203275.P3409090938370227639

/-!
# A203277: T(n,k)=Number of nXk 0..5 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203277, there is no canonical definition to state claims against.
-/

/-! ## A203277.P1930373122217144525

`A203271(A007318(n)%A304124(n+2))`
-/

namespace A203277.P1930373122217144525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203271 (Int.tmod (A007318 n) (A304124 (n + 2))).toNat

end

end A203277.P1930373122217144525

/-! ## A203277.P966181470944887072

`A203271(A007318(n))%A203250(n+1)`
-/

namespace A203277.P966181470944887072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203271 (A007318 n).toNat) (A203250 (n + 1))

end

end A203277.P966181470944887072

/-! ## A203277.P3198602215882631180

`A203271((A014473(n)+1)%A203250(n+1))`
-/

namespace A203277.P3198602215882631180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203271 (Int.tmod (A014473 n + 1) (A203250 (n + 1))).toNat

end

end A203277.P3198602215882631180

/-! ## A203277.P15738382457759468215

`A093414(A201461(n))`
-/

namespace A203277.P15738382457759468215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093414 (A201461 n).toNat

end

end A203277.P15738382457759468215

/-!
# A203278: Row sums of triangle A202941.

The programs for A203278, there is no canonical definition to state claims against.
-/

/-! ## A203278.P12243123271117170258

`A203269(Δ[n²])/2`
-/

namespace A203278.P12243123271117170258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A203278.P12243123271117170258

/-! ## A203278.P7796502891241638899

`floor(A203269(2*n+1)/2)`
-/

namespace A203278.P7796502891241638899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A203269 (2 * n + 1) : ℚ) / 2⌋

end

end A203278.P7796502891241638899

/-! ## A203278.P10558141759699141107

`ceil(A203269(2*n+1)/A000034(2*n+1))`
-/

namespace A203278.P10558141759699141107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203269 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)⌉

end

end A203278.P10558141759699141107

/-! ## A203278.P7441484768749605184

`A014682(A203269(comp[2*n]))`
-/

namespace A203278.P7441484768749605184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A203269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A203278.P7441484768749605184

/-!
# A203279: Number of n X n binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203279, there is no canonical definition to state claims against.
-/

/-! ## A203279.P1615101038139717561

`A203285(∑[4*n]+1)`
-/

namespace A203279.P1615101038139717561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203279.P1615101038139717561

/-! ## A203279.P16546421605332588360

`lcm(2, A203285(A001844(n)))`
-/

namespace A203279.P16546421605332588360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203285 (A001844 n).toNat)

end

end A203279.P16546421605332588360

/-! ## A203279.P12648387440708994230

`record[A203285(∑[A266981(n)])]`
-/

namespace A203279.P12648387440708994230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203279.P12648387440708994230

/-! ## A203279.P12449051948192556549

`char[A014430(n)]*A203285(A001844(n))`
-/

namespace A203279.P12449051948192556549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A203285 (A001844 n).toNat

end

end A203279.P12449051948192556549

/-! ## A203279.P4810233432365666435

`A000045(2-C(2, n+2))*A203285(A001844(n))`
-/

namespace A203279.P4810233432365666435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - Nat.choose 2 (n + 2)) * A203285 (A001844 n).toNat

end

end A203279.P4810233432365666435

/-!
# A203280: Number of n X 3 binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203280, there is no canonical definition to state claims against.
-/

/-! ## A203280.P10924456586168108144

`2*(A392416(n+1)-1)`
-/

namespace A203280.P10924456586168108144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A392416 (n + 1) - 1)

end

end A203280.P10924456586168108144

/-! ## A203280.P17023499813972938654

`A203285(∑[n+2]+4)`
-/

namespace A203280.P17023499813972938654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203280.P17023499813972938654

/-! ## A203280.P17897333311178646618

`lcm(2, A203285(A167614(n+1)))`
-/

namespace A203280.P17897333311178646618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203285 (A167614 (n + 1)).toNat)

end

end A203280.P17897333311178646618

/-! ## A203280.P9241484900137909687

`A203285(A167614(n+1))+A184946(n)`
-/

namespace A203280.P9241484900137909687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A167614 (n + 1)).toNat + A184946 n

end

end A203280.P9241484900137909687

/-! ## A203280.P12860864112857958739

`A057427(n)*A203285(A167614(n+1))`
-/

namespace A203280.P12860864112857958739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A203285 (A167614 (n + 1)).toNat

end

end A203280.P12860864112857958739

/-!
# A203281: Number of nX4 binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203281, there is no canonical definition to state claims against.
-/

/-! ## A203281.P14127384132152909431

`A203285(A374004(n+1))`
-/

namespace A203281.P14127384132152909431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A374004 (n + 1)).toNat

end

end A203281.P14127384132152909431

/-! ## A203281.P11449653272765439078

`A203285(A141214(n)+7)`
-/

namespace A203281.P11449653272765439078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A141214 n + 7).toNat

end

end A203281.P11449653272765439078

/-! ## A203281.P9446457547335788877

`A203285(A055999(n)+10)`
-/

namespace A203281.P9446457547335788877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A055999 n + 10).toNat

end

end A203281.P9446457547335788877

/-! ## A203281.P869134398542827953

`A203285(A167614(n+2)+1)`
-/

namespace A203281.P869134398542827953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A167614 (n + 2) + 1).toNat

end

end A203281.P869134398542827953

/-! ## A203281.P16041722355624060086

`A203285(A000096(n+3)-(n-1))`
-/

namespace A203281.P16041722355624060086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A000096 (n + 3) - ((n : ℤ) - 1)).toNat

end

end A203281.P16041722355624060086

/-!
# A203282: Number of nX5 binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203282, there is no canonical definition to state claims against.
-/

/-! ## A203282.P15334957467253742039

`A203285(A374005(n+1))`
-/

namespace A203282.P15334957467253742039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A374005 (n + 1)).toNat

end

end A203282.P15334957467253742039

/-! ## A203282.P7788057000508377618

`A203285(A167499(n+3))`
-/

namespace A203282.P7788057000508377618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A167499 (n + 3)).toNat

end

end A203282.P7788057000508377618

/-! ## A203282.P10944482903629206634

`A203285(A046691(n+3))`
-/

namespace A203282.P10944482903629206634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A046691 (n + 3)).toNat

end

end A203282.P10944482903629206634

/-! ## A203282.P3522851620320916610

`A203285(eq[2, A092921(n)])`
-/

namespace A203282.P3522851620320916610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203282.P3522851620320916610

/-! ## A203282.P9636525037976540224

`A203285(eq[4, A193592(n)])`
-/

namespace A203282.P9636525037976540224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203282.P9636525037976540224

/-!
# A203283: Number of nX6 binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203283, there is no canonical definition to state claims against.
-/

/-! ## A203283.P2640659353373544570

`A203285(A374007(n+1))`
-/

namespace A203283.P2640659353373544570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A374007 (n + 1)).toNat

end

end A203283.P2640659353373544570

/-! ## A203283.P9865867050756575053

`A203285(eq[7, A131818(n+1)])`
-/

namespace A203283.P9865867050756575053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203283.P9865867050756575053

/-! ## A203283.P774345803737995257

`A203285(A141214(n+3)-(n-3))`
-/

namespace A203283.P774345803737995257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A141214 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A203283.P774345803737995257

/-! ## A203283.P12129711372219719332

`A203285(A052905(n+3))`
-/

namespace A203283.P12129711372219719332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A052905 (n + 3)).toNat

end

end A203283.P12129711372219719332

/-! ## A203283.P11759811321414896358

`A203285(eq[5, A193592(n)])`
-/

namespace A203283.P11759811321414896358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203283.P11759811321414896358

/-!
# A203284: Number of nX7 binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203284, there is no canonical definition to state claims against.
-/

/-! ## A203284.P7496062427442452158

`A203285(A374008(n+1))`
-/

namespace A203284.P7496062427442452158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A374008 (n + 1)).toNat

end

end A203284.P7496062427442452158

/-! ## A203284.P10785219003132724413

`A203285(eq[8, A131818(n+1)])`
-/

namespace A203284.P10785219003132724413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203284.P10785219003132724413

/-! ## A203284.P15036742475528530305

`A203285(A055999(n+4))`
-/

namespace A203284.P15036742475528530305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A055999 (n + 4)).toNat

end

end A203284.P15036742475528530305

/-! ## A203284.P15083143214736453664

`A203285(eq[6, A193592(n)])`
-/

namespace A203284.P15083143214736453664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203284.P15083143214736453664

/-! ## A203284.P17172122032820962545

`A203285(A000124(n+7)-7)`
-/

namespace A203284.P17172122032820962545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203285 (A000124 (n + 7) - 7).toNat

end

end A203284.P17172122032820962545

/-!
# A203285: T(n,k)=Number of nXk binary arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203285, there is no canonical definition to state claims against.
-/

/-! ## A203285.P8006317538062964643

`4*A341975(A008518(n))`
-/

namespace A203285.P8006317538062964643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A341975 ((A008518 n).toNat + 11)

end

end A203285.P8006317538062964643

/-!
# A203286: Number of arrays of 2n nondecreasing integers in -3..3 with sum zero and equal numbers greater than zero and less than zero.

The programs for A203286, the canonical program `A203286.P15025271331320719672` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203286 has offset 1).

The definition of A203286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203286.P15025271331320719672

`∑[∑[ceil((n+2)²/2)]+1]+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203286

/-- `∑[∑[ceil((n+2)²/2)]+1]+1` -/
def P15025271331320719672.Spec : Prop :=
  ∀ n, P15025271331320719672.a n = A203286 (n + 1)

theorem P15025271331320719672.correct : P15025271331320719672.Spec := by
  intro n
  simp only [A203286, Nat.add_sub_cancel]

end A203286

/-! ## A203286.P16520635560235136944

`floor(A014820(n+2)/8)`
-/

namespace A203286.P16520635560235136944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014820 (n + 2) : ℚ) / 8⌋

end

end A203286.P16520635560235136944

namespace A203286

/-- `floor(A014820(n+2)/8)` -/
def P16520635560235136944.Spec : Prop :=
  ∀ n, P16520635560235136944.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P3809404080029751178

`∑[A005232(A051755(n+2))]`
-/

namespace A203286.P3809404080029751178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203286.P3809404080029751178

namespace A203286

/-- `∑[A005232(A051755(n+2))]` -/
def P3809404080029751178.Spec : Prop :=
  ∀ n, P3809404080029751178.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P4804865513574206550

`∑[A005232(A004273(n)+3)]`
-/

namespace A203286.P4804865513574206550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A004273 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203286.P4804865513574206550

namespace A203286

/-- `∑[A005232(A004273(n)+3)]` -/
def P4804865513574206550.Spec : Prop :=
  ∀ n, P4804865513574206550.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P6488749876167059777

`∑[A005232(Δ[A003682(n+1)])]`
-/

namespace A203286.P6488749876167059777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203286.P6488749876167059777

namespace A203286

/-- `∑[A005232(Δ[A003682(n+1)])]` -/
def P6488749876167059777.Spec : Prop :=
  ∀ n, P6488749876167059777.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P6566807956140805615

`∑[A005232(A059029(A103517(n)))]`
-/

namespace A203286.P6566807956140805615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A059029 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203286.P6566807956140805615

namespace A203286

/-- `∑[A005232(A059029(A103517(n)))]` -/
def P6566807956140805615.Spec : Prop :=
  ∀ n, P6566807956140805615.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P7680173880491666589

`A025767((n+3)²-3)`
-/

namespace A203286.P7680173880491666589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 ((n + 3) ^ 2 - 3)

end

end A203286.P7680173880491666589

namespace A203286

/-- `A025767((n+3)²-3)` -/
def P7680173880491666589.Spec : Prop :=
  ∀ n, P7680173880491666589.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P8467182022210556500

`A309687((n+3)²+1)`
-/

namespace A203286.P8467182022210556500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 ((n + 3) ^ 2 + 1)

end

end A203286.P8467182022210556500

namespace A203286

/-- `A309687((n+3)²+1)` -/
def P8467182022210556500.Spec : Prop :=
  ∀ n, P8467182022210556500.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P7081428918853916116

`A309689((n+3)²+1)`
-/

namespace A203286.P7081428918853916116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 ((n + 3) ^ 2 + 1)

end

end A203286.P7081428918853916116

namespace A203286

/-- `A309689((n+3)²+1)` -/
def P7081428918853916116.Spec : Prop :=
  ∀ n, P7081428918853916116.a n = A203286 (n + 1)

end A203286

/-! ## A203286.P8574118361242846042

`A025797(A268581(n+1))`
-/

namespace A203286.P8574118361242846042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025797 (A268581 (n + 1)).toNat

end

end A203286.P8574118361242846042

namespace A203286

/-- `A025797(A268581(n+1))` -/
def P8574118361242846042.Spec : Prop :=
  ∀ n, P8574118361242846042.a n = A203286 (n + 1)

end A203286

/-!
# A203287: Number of arrays of 2n nondecreasing integers in -4..4 with sum zero and equal numbers greater than zero and less than zero.

The programs for A203287, there is no canonical definition to state claims against.
-/

/-! ## A203287.P12310913977092227082

`∑[A071009(n+2)]+1`
-/

namespace A203287.P12310913977092227082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071009 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A203287.P12310913977092227082

/-! ## A203287.P4223119748365539083

`A203291(∑[n+4]+3)`
-/

namespace A203287.P4223119748365539083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A203287.P4223119748365539083

/-! ## A203287.P4260678400242131407

`or(A000007(n), A203291(A027379(n+2)))`
-/

namespace A203287.P4260678400242131407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203291 (A027379 (n + 2)).toNat)

end

end A203287.P4260678400242131407

/-! ## A203287.P14403257385534725272

`A203291(A055998(n+2))%A203288(n+1)`
-/

namespace A203287.P14403257385534725272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A055998 (n + 2)).toNat) (A203288 (n + 1))

end

end A203287.P14403257385534725272

/-! ## A203287.P18292066079195411710

`A203291(Δ[A008778(n+1)]-1)%A251373(n+1)`
-/

namespace A203287.P18292066079195411710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (f1 (n + 1) - f1 n - 1).toNat) (A251373 (n + 1))

end

end A203287.P18292066079195411710

/-! ## A203287.P2219624709008549088

`A203291(A167499(n)+A016777(n))%A166812(n+1)`
-/

namespace A203287.P2219624709008549088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A167499 n + A016777 n).toNat) (A166812 (n + 1))

end

end A203287.P2219624709008549088

/-!
# A203288: Number of arrays of 2n nondecreasing integers in -5..5 with sum zero and equal numbers greater than zero and less than zero.

The programs for A203288, there is no canonical definition to state claims against.
-/

/-! ## A203288.P16582702568863073523

`A203291(∑[n+5]+6)`
-/

namespace A203288.P16582702568863073523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A203288.P16582702568863073523

/-! ## A203288.P11225083703573219652

`lcm(A033999(n), A203291(A000124(n+5)-5))`
-/

namespace A203288.P11225083703573219652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203291 (A000124 (n + 5) - 5).toNat)

end

end A203288.P11225083703573219652

/-! ## A203288.P3670532368493793977

`or(A000038(n), A203291(A000124(n+5)-5))`
-/

namespace A203288.P3670532368493793977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A203291 (A000124 (n + 5) - 5).toNat)

end

end A203288.P3670532368493793977

/-! ## A203288.P15742505127653762904

`A203291(A000124(n+4)+n)+A000007(n+1)`
-/

namespace A203288.P15742505127653762904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 4) + (n : ℤ)).toNat + A000007 (n + 1)

end

end A203288.P15742505127653762904

/-! ## A203288.P1545664287872791514

`char[A112968(n+1)]*A203291(A000124(n+5)-5)`
-/

namespace A203288.P1545664287872791514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A203291 (A000124 (n + 5) - 5).toNat

end

end A203288.P1545664287872791514

/-! ## A203288.P3131530878797799475

`A203291(Δ[A000125(n+4)]+n)%A001232(n+1)`
-/

namespace A203288.P3131530878797799475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (f1 (n + 1) - f1 n + (n : ℤ)).toNat) (A001232 (n + 1))

end

end A203288.P3131530878797799475

/-! ## A203288.P9079105621013678225

`A203291(A000124(n+4)+n)+A000035(2*(n+1))`
-/

namespace A203288.P9079105621013678225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 4) + (n : ℤ)).toNat + A000035 (2 * (n + 1))

end

end A203288.P9079105621013678225

/-! ## A203288.P7944738239155248251

`A203291(A000124(n+4)+n)+A008683(9*(n+1))`
-/

namespace A203288.P7944738239155248251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 4) + (n : ℤ)).toNat + A008683 (9 * (n + 1))

end

end A203288.P7944738239155248251

/-! ## A203288.P11514217320450340086

`A007318(A069859(n+1))*A203291(A000124(n+4)+n)`
-/

namespace A203288.P11514217320450340086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A069859 (n + 1)).toNat * A203291 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A203288.P11514217320450340086

/-! ## A203288.P2750514664958307683

`A001222(A266163(n+1))*A203291(A000124(n+4)+n)`
-/

namespace A203288.P2750514664958307683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A266163 (n + 1)).toNat * A203291 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A203288.P2750514664958307683

/-!
# A203289: Number of arrays of 2n nondecreasing integers in -6..6 with sum zero and equal numbers greater than zero and less than zero.

The programs for A203289, there is no canonical definition to state claims against.
-/

/-! ## A203289.P15693879542406346717

`A203291((n+4)²-∑[n+1]+1)`
-/

namespace A203289.P15693879542406346717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A203289.P15693879542406346717

/-! ## A203289.P2787483160977901521

`or(char[7], A203291(A000124(n+6)-6))`
-/

namespace A203289.P2787483160977901521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A203291 (A000124 (n + 6) - 6).toNat)

end

end A203289.P2787483160977901521

/-! ## A203289.P3966443994296559375

`A203291(A052905(n+3))%A017343(n)²`
-/

namespace A203289.P3966443994296559375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A052905 (n + 3)).toNat) (A017343 n ^ 2)

end

end A203289.P3966443994296559375

/-! ## A203289.P16465845487474819603

`A203291(A052905(n+3))+A000007(n+1)`
-/

namespace A203289.P16465845487474819603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A052905 (n + 3)).toNat + A000007 (n + 1)

end

end A203289.P16465845487474819603

/-! ## A203289.P10508869641269490509

`abs(A033999(n)*A203291(A000124(n+6)-6))`
-/

namespace A203289.P10508869641269490509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A203291 (A000124 (n + 6) - 6).toNat|

end

end A203289.P10508869641269490509

/-! ## A203289.P706970510531480037

`A033999(2*n)*A203291(A000124(n+6)-6)`
-/

namespace A203289.P706970510531480037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A203291 (A000124 (n + 6) - 6).toNat

end

end A203289.P706970510531480037

/-! ## A203289.P7612622423461730821

`A203291(A000124(n+6)-6)%A030697(n+1)`
-/

namespace A203289.P7612622423461730821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A000124 (n + 6) - 6).toNat) (A030697 (n + 1))

end

end A203289.P7612622423461730821

/-! ## A203289.P13614172656012269719

`lcm(A134429(n)%2, A203291(A000124(n+6)-6))`
-/

namespace A203289.P13614172656012269719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A134429 n) 2) (A203291 (A000124 (n + 6) - 6).toNat)

end

end A203289.P13614172656012269719

/-!
# A203290: Number of arrays of 2n nondecreasing integers in -7..7 with sum zero and equal numbers greater than zero and less than zero.

The programs for A203290, there is no canonical definition to state claims against.
-/

/-! ## A203290.P4285137866712898850

`A203291(A055999(n+4))`
-/

namespace A203290.P4285137866712898850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A055999 (n + 4)).toNat

end

end A203290.P4285137866712898850

/-! ## A203290.P9314717177978225129

`A203291(eq[4, A219347(n)])`
-/

namespace A203290.P9314717177978225129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203290.P9314717177978225129

/-! ## A203290.P13366654245540364857

`A203291(A052905(n+4)-1)`
-/

namespace A203290.P13366654245540364857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A052905 (n + 4) - 1).toNat

end

end A203290.P13366654245540364857

/-! ## A203290.P3425612661791131674

`A203291(A046691(n+5)-2)`
-/

namespace A203290.P3425612661791131674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A046691 (n + 5) - 2).toNat

end

end A203290.P3425612661791131674

/-! ## A203290.P13466054294364910176

`A203291(A034856(n+6)-4)`
-/

namespace A203290.P13466054294364910176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A034856 (n + 6) - 4).toNat

end

end A203290.P13466054294364910176

/-! ## A203290.P9216871362181964717

`A203291(A000217(n+7)-6)`
-/

namespace A203290.P9216871362181964717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000217 (n + 7) - 6).toNat

end

end A203290.P9216871362181964717

/-! ## A203290.P18172351575987191397

`A203291(A000124(n+7)-7)`
-/

namespace A203290.P18172351575987191397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 7) - 7).toNat

end

end A203290.P18172351575987191397

/-! ## A203290.P2960935699899100405

`A203291(A000096(n+5)+n+2)`
-/

namespace A203290.P2960935699899100405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A203290.P2960935699899100405

/-! ## A203290.P14747961054588762567

`A203291(A161680(n+7)+n+1)`
-/

namespace A203290.P14747961054588762567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A203290.P14747961054588762567

/-!
# A203291: T(n,k)=Number of arrays of 2n nondecreasing integers in -k..k with sum zero and equal numbers greater than zero and less than zero.

The programs for A203291, there is no canonical definition to state claims against.
-/

/-! ## A203291.P1378409080282462473

`A195872(A317449(n+1)+1)`
-/

namespace A203291.P1378409080282462473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195872 (A317449 (n + 1) + 1).toNat

end

end A203291.P1378409080282462473

/-! ## A203291.P1263045185953798079

`A167269(A000045(n))+A014430(n)`
-/

namespace A203291.P1263045185953798079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167269 (A000045 n).toNat + A014430 n

end

end A203291.P1263045185953798079

/-! ## A203291.P1929062638165657362

`A336725(n+1)+A046951(A209330(n))`
-/

namespace A203291.P1929062638165657362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (n + 1) + A046951 (A209330 n).toNat

end

end A203291.P1929062638165657362

/-!
# A203292: Number of arrays of 4 nondecreasing integers in -n..n with sum zero and equal numbers greater than zero and less than zero.

The programs for A203292, the canonical program `A203292.P11694784467266478212` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203292 has offset 1).

The definition of A203292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203292.P11694784467266478212

`∑[∑[or(1, n)]+1]+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203292

/-- `∑[∑[or(1, n)]+1]+1` -/
def P11694784467266478212.Spec : Prop :=
  ∀ n, (P11694784467266478212.a n : ℤ) = A203292 (n + 1)

theorem P11694784467266478212.correct : P11694784467266478212.Spec := by
  intro n
  simp only [A203292, Nat.add_sub_cancel]

end A203292

/-! ## A203292.P10819101237912103854

`∑[2-∑[char[1]-or(1, n)]]`
-/

namespace A203292.P10819101237912103854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P10819101237912103854

namespace A203292

/-- `∑[2-∑[char[1]-or(1, n)]]` -/
def P10819101237912103854.Spec : Prop :=
  ∀ n, P10819101237912103854.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P4039020184748028225

`∑[∑[a(n-2)+2]]` with `a(0)=3, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A203292.P4039020184748028225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P4039020184748028225

namespace A203292

/-- `∑[∑[a(n-2)+2]]` -/
def P4039020184748028225.Spec : Prop :=
  ∀ n, (P4039020184748028225.a n : ℤ) = A203292 (n + 1)

end A203292

/-! ## A203292.P16481592937863692539

`∑[ceil((n+1)²/2)+1]+1`
-/

namespace A203292.P16481592937863692539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 2⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A203292.P16481592937863692539

namespace A203292

/-- `∑[ceil((n+1)²/2)+1]+1` -/
def P16481592937863692539.Spec : Prop :=
  ∀ n, P16481592937863692539.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P6505471286777673964

`∑[∑[2*n-a(n-1)]]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A203292.P6505471286777673964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P6505471286777673964

namespace A203292

/-- `∑[∑[2*n-a(n-1)]]` -/
def P6505471286777673964.Spec : Prop :=
  ∀ n, P6505471286777673964.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P5881753841009474255

`∑[∑[n-(a(n-1)-n)]]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A203292.P5881753841009474255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3] fun n f2 =>
  (n : ℤ) - (f2 (n - 1) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P5881753841009474255

namespace A203292

/-- `∑[∑[n-(a(n-1)-n)]]` -/
def P5881753841009474255.Spec : Prop :=
  ∀ n, P5881753841009474255.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P18169535433647697580

`floor(a(n-1)+((n+1)²+3)/2)` with `a(0)=3`
-/

namespace A203292.P18169535433647697580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n + 1) ^ 2 + 3 : ℚ) / 2⌋

end

end A203292.P18169535433647697580

namespace A203292

/-- `floor(a(n-1)+((n+1)²+3)/2)` -/
def P18169535433647697580.Spec : Prop :=
  ∀ n, P18169535433647697580.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P13464371687585769822

`abs(∑[∑[A109613(n)]+2]-n)`
-/

namespace A203292.P13464371687585769822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A203292.P13464371687585769822

namespace A203292

/-- `abs(∑[∑[A109613(n)]+2]-n)` -/
def P13464371687585769822.Spec : Prop :=
  ∀ n, P13464371687585769822.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P2413724234662448976

`∑[A000124(n)+A123108(n)+1]`
-/

namespace A203292.P2413724234662448976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A123108 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P2413724234662448976

namespace A203292

/-- `∑[A000124(n)+A123108(n)+1]` -/
def P2413724234662448976.Spec : Prop :=
  ∀ n, P2413724234662448976.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P2575813739834515451

`abs(∑[A000982(n+1)+2]-n)`
-/

namespace A203292.P2575813739834515451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A203292.P2575813739834515451

namespace A203292

/-- `abs(∑[A000982(n+1)+2]-n)` -/
def P2575813739834515451.Spec : Prop :=
  ∀ n, P2575813739834515451.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P8550690476741500672

`∑[A061925(A028310(n)+1)]`
-/

namespace A203292.P8550690476741500672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P8550690476741500672

namespace A203292

/-- `∑[A061925(A028310(n)+1)]` -/
def P8550690476741500672.Spec : Prop :=
  ∀ n, P8550690476741500672.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P12043200014742771464

`∑[A000982(A028310(n)+1)+1]`
-/

namespace A203292.P12043200014742771464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A028310 n + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P12043200014742771464

namespace A203292

/-- `∑[A000982(A028310(n)+1)+1]` -/
def P12043200014742771464.Spec : Prop :=
  ∀ n, P12043200014742771464.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P2792313291820440028

`∑[A065033(n+1)+A000124(A065033(2*n))]`
-/

namespace A203292.P2792313291820440028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + A000124 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P2792313291820440028

namespace A203292

/-- `∑[A065033(n+1)+A000124(A065033(2*n))]` -/
def P2792313291820440028.Spec : Prop :=
  ∀ n, P2792313291820440028.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P3929438076549446248

`A000027(A173154(n)+2)`
-/

namespace A203292.P3929438076549446248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A173154 n + 2).toNat

end

end A203292.P3929438076549446248

namespace A203292

/-- `A000027(A173154(n)+2)` -/
def P3929438076549446248.Spec : Prop :=
  ∀ n, P3929438076549446248.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P659243074009826664

`∑[A080036(A008619(n²))]`
-/

namespace A203292.P659243074009826664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P659243074009826664

namespace A203292

/-- `∑[A080036(A008619(n²))]` -/
def P659243074009826664.Spec : Prop :=
  ∀ n, P659243074009826664.a n = A203292 (n + 1)

end A203292

/-! ## A203292.P14157694959713819176

`∑[A123108(n²)+n+2]`
-/

namespace A203292.P14157694959713819176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n ^ 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203292.P14157694959713819176

namespace A203292

/-- `∑[A123108(n²)+n+2]` -/
def P14157694959713819176.Spec : Prop :=
  ∀ n, P14157694959713819176.a n = A203292 (n + 1)

end A203292

/-!
# A203293: Number of arrays of 6 nondecreasing integers in -n..n with sum zero and equal numbers greater than zero and less than zero.

The programs for A203293, there is no canonical definition to state claims against.
-/

/-! ## A203293.P13813736094169635283

`A203292(n+1)+A071009(n+1)`
-/

namespace A203293.P13813736094169635283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203292 (n + 1) + A071009 (n + 1)

end

end A203293.P13813736094169635283

/-! ## A203293.P3390034483392842261

`A071009(n+1)+∑[A000982(A028310(n)+1)+1]`
-/

namespace A203293.P3390034483392842261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A028310 n + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071009 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203293.P3390034483392842261

/-! ## A203293.P6241585356335046930

`A071009(n+1)+∑[A123108(n²)+n+2]`
-/

namespace A203293.P6241585356335046930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n ^ 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071009 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203293.P6241585356335046930

/-! ## A203293.P5285917674987723171

`A203291(∑[n+1]+2)+A071009(n+1)`
-/

namespace A203293.P5285917674987723171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A071009 (n + 1)

end

end A203293.P5285917674987723171

/-! ## A203293.P8096453000867728971

`A203291(∑[n+2]+4)`
-/

namespace A203293.P8096453000867728971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203293.P8096453000867728971

/-! ## A203293.P16444973839708750164

`lcm(log2(1/2), A203291(A167614(n+1)))`
-/

namespace A203293.P16444973839708750164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A203291 (A167614 (n + 1)).toNat)

end

end A203293.P16444973839708750164

/-! ## A203293.P11144218253389560678

`A203291(A055998(n)+6)%A017343(n)²`
-/

namespace A203293.P11144218253389560678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A055998 n + 6).toNat) (A017343 n ^ 2)

end

end A203293.P11144218253389560678

/-! ## A203293.P13099744579618947724

`A203291(A167614(n+1))%A001232(n+1)`
-/

namespace A203293.P13099744579618947724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A167614 (n + 1)).toNat) (A001232 (n + 1))

end

end A203293.P13099744579618947724

/-! ## A203293.P15454967085899877528

`A014963(A131114(n))*A203291(A167499(n)+n)`
-/

namespace A203293.P15454967085899877528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A131114 n).toNat * A203291 (A167499 n + (n : ℤ)).toNat

end

end A203293.P15454967085899877528

/-!
# A203294: Number of arrays of 8 nondecreasing integers in -n..n with sum zero and equal numbers greater than zero and less than zero.

The programs for A203294, there is no canonical definition to state claims against.
-/

/-! ## A203294.P7175115879412900729

`A203291(∑[n+3]+7)`
-/

namespace A203294.P7175115879412900729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203294.P7175115879412900729

/-! ## A203294.P9715268210120016096

`or(char[1], A203291(A055999(n)+10))`
-/

namespace A203294.P9715268210120016096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A203291 (A055999 n + 10).toNat)

end

end A203294.P9715268210120016096

/-! ## A203294.P3026338314987144420

`A203291(A055999(n)+10)%A017343(n)²`
-/

namespace A203294.P3026338314987144420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (A055999 n + 10).toNat) (A017343 n ^ 2)

end

end A203294.P3026338314987144420

/-! ## A203294.P10378950982544025898

`A203291(Δ[A008778(n)]+6)%A251373(n+1)`
-/

namespace A203294.P10378950982544025898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203291 (f1 (n + 1) - f1 n + 6).toNat) (A251373 (n + 1))

end

end A203294.P10378950982544025898

/-!
# A203295: Number of arrays of 10 nondecreasing integers in -n..n with sum zero and equal numbers greater than zero and less than zero.

The programs for A203295, there is no canonical definition to state claims against.
-/

/-! ## A203295.P7951487448204662506

`A203291(A167499(n+3))`
-/

namespace A203295.P7951487448204662506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A167499 (n + 3)).toNat

end

end A203295.P7951487448204662506

/-! ## A203295.P5519396619927606434

`A203291(A167614(n+3)+2)`
-/

namespace A203295.P5519396619927606434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A167614 (n + 3) + 2).toNat

end

end A203295.P5519396619927606434

/-! ## A203295.P10632415397480088009

`A203291(A000124(n+4)+4)`
-/

namespace A203295.P10632415397480088009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 4) + 4).toNat

end

end A203295.P10632415397480088009

/-! ## A203295.P2286474593635636155

`A203291(A000096(n+3)+6)`
-/

namespace A203295.P2286474593635636155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000096 (n + 3) + 6).toNat

end

end A203295.P2286474593635636155

/-! ## A203295.P17323313075058712191

`A203291(A000217(n+4)+5)`
-/

namespace A203295.P17323313075058712191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000217 (n + 4) + 5).toNat

end

end A203295.P17323313075058712191

/-!
# A203296: Number of arrays of 12 nondecreasing integers in -n..n with sum zero and equal numbers greater than zero and less than zero.

The programs for A203296, there is no canonical definition to state claims against.
-/

/-! ## A203296.P11607159964292376859

`A203291(A167614(n+4)+3)`
-/

namespace A203296.P11607159964292376859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A167614 (n + 4) + 3).toNat

end

end A203296.P11607159964292376859

/-! ## A203296.P10026146146703318641

`A203291(A000124(n+5)+5)`
-/

namespace A203296.P10026146146703318641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 5) + 5).toNat

end

end A203296.P10026146146703318641

/-! ## A203296.P12680283873265808977

`A203291(A000096(n+4)+7)`
-/

namespace A203296.P12680283873265808977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000096 (n + 4) + 7).toNat

end

end A203296.P12680283873265808977

/-! ## A203296.P7529606036380677135

`A203291(A000217(n+5)+6)`
-/

namespace A203296.P7529606036380677135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000217 (n + 5) + 6).toNat

end

end A203296.P7529606036380677135

/-! ## A203296.P16320455798535812237

`A203291(A008574(n+5)+∑[n+1])`
-/

namespace A203296.P16320455798535812237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A008574 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A203296.P16320455798535812237

/-!
# A203297: Number of arrays of 14 nondecreasing integers in -n..n with sum zero and equal numbers greater than zero and less than zero.

The programs for A203297, there is no canonical definition to state claims against.
-/

/-! ## A203297.P16083306581012946786

`A203291(A167614(n+5)+4)`
-/

namespace A203297.P16083306581012946786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A167614 (n + 5) + 4).toNat

end

end A203297.P16083306581012946786

/-! ## A203297.P11237602360689183542

`A203291(A000124(n+6)+6)`
-/

namespace A203297.P11237602360689183542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000124 (n + 6) + 6).toNat

end

end A203297.P11237602360689183542

/-! ## A203297.P12557285283819078430

`A203291(A000096(n+5)+8)`
-/

namespace A203297.P12557285283819078430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000096 (n + 5) + 8).toNat

end

end A203297.P12557285283819078430

/-! ## A203297.P8273944079045107115

`A203291(A000217(n+6)+7)`
-/

namespace A203297.P8273944079045107115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A000217 (n + 6) + 7).toNat

end

end A203297.P8273944079045107115

/-! ## A203297.P5429169194511607346

`A203291(A055998(n+1)+A016777(n+8))`
-/

namespace A203297.P5429169194511607346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A055998 (n + 1) + A016777 (n + 8)).toNat

end

end A203297.P5429169194511607346

/-!
# A203298: Second elementary symmetric function of the first n terms of (1,2,2,3,3,4,4,5,5...).

The programs for A203298, the canonical program `A203298.P17869188344315097601` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203298 has offset 2).

The definition of A203298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203298.P17869188344315097601

`∑[(A008619(n)+1)*∑[A080513(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203298

/-- `∑[(A008619(n)+1)*∑[A080513(n)]]` -/
def P17869188344315097601.Spec : Prop :=
  ∀ n, P17869188344315097601.a n = A203298 (n + 2)

theorem P17869188344315097601.correct : P17869188344315097601.Spec := by
  intro n
  simp only [A203298, Nat.add_sub_cancel]

end A203298

/-! ## A203298.P7724718086464675280

`∑[∑[A080513(n)]*(A004526(n)+2)]`
-/

namespace A203298.P7724718086464675280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (A004526 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203298.P7724718086464675280

namespace A203298

/-- `∑[∑[A080513(n)]*(A004526(n)+2)]` -/
def P7724718086464675280.Spec : Prop :=
  ∀ n, P7724718086464675280.a n = A203298 (n + 2)

end A203298

/-! ## A203298.P11975836479178284293

`∑[∑[A080513(n)]*A080513(n+1)]`
-/

namespace A203298.P11975836479178284293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A080513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203298.P11975836479178284293

namespace A203298

/-- `∑[∑[A080513(n)]*A080513(n+1)]` -/
def P11975836479178284293.Spec : Prop :=
  ∀ n, P11975836479178284293.a n = A203298 (n + 2)

end A203298

/-! ## A203298.P9170209479765446047

`∑[(A008619(n)+1)*A024206(n+2)]`
-/

namespace A203298.P9170209479765446047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n + 1) * A024206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203298.P9170209479765446047

namespace A203298

/-- `∑[(A008619(n)+1)*A024206(n+2)]` -/
def P9170209479765446047.Spec : Prop :=
  ∀ n, P9170209479765446047.a n = A203298 (n + 2)

end A203298

/-! ## A203298.P3639072833635064003

`∑[(A004526(n)+2)*A024206(n+2)]`
-/

namespace A203298.P3639072833635064003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 2) * A024206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203298.P3639072833635064003

namespace A203298

/-- `∑[(A004526(n)+2)*A024206(n+2)]` -/
def P3639072833635064003.Spec : Prop :=
  ∀ n, P3639072833635064003.a n = A203298 (n + 2)

end A203298

/-! ## A203298.P17460315081787419891

`∑[A080513(A265284(n))*A266977(n)]`
-/

namespace A203298.P17460315081787419891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A265284 n).toNat * A266977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203298.P17460315081787419891

namespace A203298

/-- `∑[A080513(A265284(n))*A266977(n)]` -/
def P17460315081787419891.Spec : Prop :=
  ∀ n, P17460315081787419891.a n = A203298 (n + 2)

end A203298

/-!
# A203299: Second elementary symmetric function of the first n terms of (2,2,3,3,4,4,5,5...).

The programs for A203299, the canonical program `A203299.P16754718405884152906` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203299 has offset 2).

The definition of A203299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203299.P16754718405884152906

`A203246(n+2)+∑[∑[lcm(2, n)+3]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203299

/-- `A203246(n+2)+∑[∑[lcm(2, n)+3]]` -/
def P16754718405884152906.Spec : Prop :=
  ∀ n, P16754718405884152906.a n = A203299 (n + 2)

theorem P16754718405884152906.correct : P16754718405884152906.Spec := by
  intro n
  simp only [A203299, Nat.add_sub_cancel]

end A203299

/-! ## A203299.P10095219011873267727

`A295622(n+5)+A203246(n+2)`
-/

namespace A203299.P10095219011873267727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295622 (n + 5) + A203246 (n + 2)

end

end A203299.P10095219011873267727

namespace A203299

/-- `A295622(n+5)+A203246(n+2)` -/
def P10095219011873267727.Spec : Prop :=
  ∀ n, P10095219011873267727.a n = A203299 (n + 2)

end A203299

/-! ## A203299.P14351968362021043377

`∑[A014616(n+1)*(A080513(n)+1)]`
-/

namespace A203299.P14351968362021043377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1) * (A080513 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203299.P14351968362021043377

namespace A203299

/-- `∑[A014616(n+1)*(A080513(n)+1)]` -/
def P14351968362021043377.Spec : Prop :=
  ∀ n, P14351968362021043377.a n = A203299 (n + 2)

end A203299

/-! ## A203299.P1056663716547153282

`∑[(A110654(n)+2)*A014616(n+1)]`
-/

namespace A203299.P1056663716547153282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + 2) * A014616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203299.P1056663716547153282

namespace A203299

/-- `∑[(A110654(n)+2)*A014616(n+1)]` -/
def P1056663716547153282.Spec : Prop :=
  ∀ n, P1056663716547153282.a n = A203299 (n + 2)

end A203299

/-! ## A203299.P15676769680540613137

`∑[A014616(n+1)*A266977(n+1)]`
-/

namespace A203299.P15676769680540613137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1) * A266977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203299.P15676769680540613137

namespace A203299

/-- `∑[A014616(n+1)*A266977(n+1)]` -/
def P15676769680540613137.Spec : Prop :=
  ∀ n, P15676769680540613137.a n = A203299 (n + 2)

end A203299

