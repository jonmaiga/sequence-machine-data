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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A003300: Denominators of coefficients of Green function for cubic lattice.

The programs for A003300, there is no canonical definition to state claims against.
-/

/-! ## A003300.P621174124387221505

`A349381(A217899(n+1)*A324124(n))`
-/

namespace A003300.P621174124387221505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (A217899 (n + 1) * A324124 n).toNat

end

end A003300.P621174124387221505

/-!
# A003301: Numerators of coefficients of Green function for cubic lattice.

The programs for A003301, there is no canonical definition to state claims against.
-/

/-! ## A003301.P14566167877225951332

`A396043(A018016(n))`
-/

namespace A003301.P14566167877225951332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396043 (A018016 n).toNat

end

end A003301.P14566167877225951332

/-!
# A003302: Denominators of coefficients of Green function for cubic lattice.

The programs for A003302, there is no canonical definition to state claims against.
-/

/-! ## A003302.P4109989878523969714

`∏[A048691(∑[A048693(2*n)])]`
-/

namespace A003302.P4109989878523969714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003302.P4109989878523969714

/-!
# A003304: Number of figure 8's with 2n edges on the square lattice.

The programs for A003304, there is no canonical definition to state claims against.
-/

/-! ## A003304.P12644975502038395244

`A005843(∑[A350482(n+2)])`
-/

namespace A003304.P12644975502038395244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003304.P12644975502038395244

/-!
# A003305: Figure 8's with 2n edges on the square lattice.

The programs for A003305, there is no canonical definition to state claims against.
-/

/-! ## A003305.P18426088008986197213

`A172471(A355501(n))*A355520(n+1)`
-/

namespace A003305.P18426088008986197213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A355501 n).toNat * A355520 (n + 1)

end

end A003305.P18426088008986197213

/-! ## A003305.P16862620064326261022

`A089846(n+1)*A089867(A089889(n+2))`
-/

namespace A003305.P16862620064326261022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089846 (n + 1) * A089867 (A089889 (n + 2)).toNat

end

end A003305.P16862620064326261022

/-!
# A003306: Numbers k such that 2*3^k + 1 is prime.

The programs for A003306, there is no canonical definition to state claims against.
-/

/-! ## A003306.P1301818273580744111

`A216888(A028310(n))-(floor(acot(n))-1)`
-/

namespace A003306.P1301818273580744111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216888 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A003306.P1301818273580744111

/-! ## A003306.P7723832785047467817

`A216888(round(sqrt(n²+1)))+A178334(n)`
-/

namespace A003306.P7723832785047467817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216888 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A178334 n

end

end A003306.P7723832785047467817

/-! ## A003306.P16766714394318370398

`A216888(A000007(n)+n)+n²%(n+1)`
-/

namespace A003306.P16766714394318370398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216888 (A000007 n + (n : ℤ)).toNat + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A003306.P16766714394318370398

/-! ## A003306.P11944344099525882

`A216888(A028310(n))-A057428(n)`
-/

namespace A003306.P11944344099525882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216888 (A028310 n).toNat - A057428 n

end

end A003306.P11944344099525882

/-! ## A003306.P6860531448004711059

`A323022(n+1)+A216888(A028310(n))`
-/

namespace A003306.P6860531448004711059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 1) + A216888 (A028310 n).toNat

end

end A003306.P6860531448004711059

/-!
# A003307: Numbers k such that 2*3^k - 1 is prime.

The programs for A003307, there is no canonical definition to state claims against.
-/

/-! ## A003307.P5605017536304351751

`eq[n, A028310(A181515(n+1))]`
-/

namespace A003307.P5605017536304351751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A181515 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003307.P5605017536304351751

/-! ## A003307.P14837110158334835135

`eq[A181515(n+1)+A040000(n), n+2]`
-/

namespace A003307.P14837110158334835135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181515 (n + 1) + A040000 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A003307.P14837110158334835135

/-! ## A003307.P13370317329336947708

`record[(A181530(n+1)-n)*A181530(n+1)]`
-/

namespace A003307.P13370317329336947708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181530 (n + 1) - (n : ℤ)) * A181530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003307.P13370317329336947708

/-! ## A003307.P11820328502172870872

`record[A000124(A181530(n+1))-A000124(n)]`
-/

namespace A003307.P11820328502172870872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A181530 (n + 1)).toNat - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003307.P11820328502172870872

/-! ## A003307.P9059490811577424124

`record[A000217(A181530(n+1))-A000217(n)]`
-/

namespace A003307.P9059490811577424124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A181530 (n + 1)).toNat - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003307.P9059490811577424124

/-!
# A003308: a(n) = 2*n^(n-2).

The programs for A003308, the canonical program `A003308.P15238131271462129077` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003308 has offset 1).

The definition of A003308 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A003308.anchor (n : ℕ) : (A003308 (n + 1) : ℚ) = 2 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A003.A003308`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003308.P15238131271462129077

`2*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003308

/-- `2*(n+1)^(n-1)` -/
def P15238131271462129077.Spec : Prop :=
  ∀ n, P15238131271462129077.a n = (A003308 (n + 1) : ℚ)

end A003308

/-! ## A003308.P9392151655397128969

`(n+1)^(n-1)/tan(acot(2))`
-/

namespace A003308.P9392151655397128969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A003308.P9392151655397128969

namespace A003308

/-- `(n+1)^(n-1)/tan(acot(2))` -/
def P9392151655397128969.Spec : Prop :=
  ∀ n, P9392151655397128969.a n = (A003308 (n + 1) : ℝ)

end A003308

/-! ## A003308.P1363206159221692530

`floor(2*xor(n, (-1)^n)^(n-1))`
-/

namespace A003308.P1363206159221692530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Int.xor (n : ℤ) ((-1) ^ n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003308.P1363206159221692530

namespace A003308

/-- `floor(2*xor(n, (-1)^n)^(n-1))` -/
def P1363206159221692530.Spec : Prop :=
  ∀ n, P1363206159221692530.a n = A003308 (n + 1)

end A003308

/-! ## A003308.P14902233742448911926

`Δ[2*A173249(n)]`
-/

namespace A003308.P14902233742448911926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003308.P14902233742448911926

namespace A003308

/-- `Δ[2*A173249(n)]` -/
def P14902233742448911926.Spec : Prop :=
  ∀ n, P14902233742448911926.a n = A003308 (n + 1)

end A003308

/-! ## A003308.P1125642781224726987

`Δ[2*∑[A000272(n)]]`
-/

namespace A003308.P1125642781224726987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003308.P1125642781224726987

namespace A003308

/-- `Δ[2*∑[A000272(n)]]` -/
def P1125642781224726987.Spec : Prop :=
  ∀ n, P1125642781224726987.a n = A003308 (n + 1)

end A003308

/-! ## A003308.P15739314578671390192

`2*(A000272(n+1)+1)-2`
-/

namespace A003308.P15739314578671390192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000272 (n + 1) + 1) - 2

end

end A003308.P15739314578671390192

namespace A003308

/-- `2*(A000272(n+1)+1)-2` -/
def P15739314578671390192.Spec : Prop :=
  ∀ n, P15739314578671390192.a n = A003308 (n + 1)

end A003308

/-! ## A003308.P15012906040531860598

`A000272(n+1)+A000272(n+1)`
-/

namespace A003308.P15012906040531860598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) + A000272 (n + 1)

end

end A003308.P15012906040531860598

namespace A003308

/-- `A000272(n+1)+A000272(n+1)` -/
def P15012906040531860598.Spec : Prop :=
  ∀ n, P15012906040531860598.a n = A003308 (n + 1)

end A003308

/-! ## A003308.P5680191094011415970

`A033842(A000217(n))+A000272(n+1)`
-/

namespace A003308.P5680191094011415970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 (A000217 n).toNat + A000272 (n + 1)

end

end A003308.P5680191094011415970

namespace A003308

/-- `A033842(A000217(n))+A000272(n+1)` -/
def P5680191094011415970.Spec : Prop :=
  ∀ n, P5680191094011415970.a n = A003308 (n + 1)

end A003308

/-! ## A003308.P3999140770204091056

`(A093460(n+1)+1)/(n+1)`
-/

namespace A003308.P3999140770204091056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093460 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A003308.P3999140770204091056

namespace A003308

/-- `(A093460(n+1)+1)/(n+1)` -/
def P3999140770204091056.Spec : Prop :=
  ∀ n, P3999140770204091056.a n = (A003308 (n + 1) : ℚ)

end A003308

/-! ## A003308.P6110744256983322734

`2*A000169(n+1)/(n+1)`
-/

namespace A003308.P6110744256983322734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000169 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003308.P6110744256983322734

namespace A003308

/-- `2*A000169(n+1)/(n+1)` -/
def P6110744256983322734.Spec : Prop :=
  ∀ n, P6110744256983322734.a n = (A003308 (n + 1) : ℚ)

end A003308

/-!
# A003309: Ludic numbers: apply the same sieve as Eratosthenes, but cross off every k-th remaining number.

The programs for A003309, there is no canonical definition to state claims against.
-/

/-! ## A003309.P6103689688659300487

`A008578(n+1)+A255324(n+1)`
-/

namespace A003309.P6103689688659300487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A255324 (n + 1)

end

end A003309.P6103689688659300487

/-! ## A003309.P10189198921492807566

`A255407(A008578(n+1))`
-/

namespace A003309.P10189198921492807566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A008578 (n + 1)).toNat

end

end A003309.P10189198921492807566

/-! ## A003309.P236789230635871063

`A260723(n)+a(n-1)` with `a(0)=1`
-/

namespace A003309.P236789230635871063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260723 n + a (n - 1)

end

end A003309.P236789230635871063

/-! ## A003309.P6297755156472918320

`A255324(n+1)+record[A259153(n+1)]`
-/

namespace A003309.P6297755156472918320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255324 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003309.P6297755156472918320

/-! ## A003309.P3260350226766647503

`A008578(n+1)+2*A255325(n+1)`
-/

namespace A003309.P3260350226766647503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 2 * A255325 (n + 1)

end

end A003309.P3260350226766647503

/-! ## A003309.P17934927746864021855

`A255324(n+1)+A000040(A028310(n))-A000007(n)`
-/

namespace A003309.P17934927746864021855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255324 (n + 1) + (A000040 (A028310 n).toNat - A000007 n)

end

end A003309.P17934927746864021855

/-! ## A003309.P1301308342159666209

`A237056(Δ[n²])`
-/

namespace A003309.P1301308342159666209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003309.P1301308342159666209

/-! ## A003309.P5218769937100106632

`A237056(2*n+1)%A001043(n+1)`
-/

namespace A003309.P5218769937100106632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237056 (2 * n + 1)) (A001043 (n + 1))

end

end A003309.P5218769937100106632

/-! ## A003309.P2203675347417862319

`A269379(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A003309.P2203675347417862319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A269379 (a (n - 1)).toNat

end

end A003309.P2203675347417862319

/-! ## A003309.P7423992553841793862

`record[A269380(n+1)]`
-/

namespace A003309.P7423992553841793862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003309.P7423992553841793862

/-! ## A003309.P13913042773659359345

`eq[1, A302032(n+1)]+1`
-/

namespace A003309.P13913042773659359345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003309.P13913042773659359345

/-! ## A003309.P12482467621571733194

`lt[A302037(n+1), 2]+1`
-/

namespace A003309.P12482467621571733194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A003309.P12482467621571733194

/-! ## A003309.P16640300082840490777

`A256486(n+1)+A000959(n+1)`
-/

namespace A003309.P16640300082840490777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256486 (n + 1) + A000959 (n + 1)

end

end A003309.P16640300082840490777

/-! ## A003309.P14212307102996433873

`∪[A192503(n+1), A192504(n+1)]`
-/

namespace A003309.P14212307102996433873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003309.P14212307102996433873

/-! ## A003309.P1289306720350131040

`A302025(A064989(A302024(A050376(n+1))))`
-/

namespace A003309.P1289306720350131040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A064989 (A302024 (A050376 (n + 1)).toNat).toNat).toNat

end

end A003309.P1289306720350131040

/-! ## A003309.P6574767403828502224

`∩[A257689(n+1), A276568(n+1)]`
-/

namespace A003309.P6574767403828502224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003309.P6574767403828502224

/-! ## A003309.P8595348839890421643

`A255407(A158611(n+2))`
-/

namespace A003309.P8595348839890421643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A158611 (n + 2)).toNat

end

end A003309.P8595348839890421643

/-! ## A003309.P12833603991606845664

`A269171(A008578(2*n+1-n))`
-/

namespace A003309.P12833603991606845664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A008578 (2 * n + 1 - n)).toNat

end

end A003309.P12833603991606845664

/-! ## A003309.P6726385495981892781

`A269380(A269171(A008578(n+2)))`
-/

namespace A003309.P6726385495981892781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269171 (A008578 (n + 2)).toNat).toNat

end

end A003309.P6726385495981892781

/-! ## A003309.P9346619858554958804

`record[A272565(n+1)]`
-/

namespace A003309.P9346619858554958804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003309.P9346619858554958804

/-!
# A003311: Write down the numbers from 3 to infinity. Take next number, M say, that has not been crossed off. Counting through the numbers that have not yet been crossed off after that M, cross off the first, (M+1)st, (2M+1)st, (3M+1)st, etc. Repeat. The numbers that are left form the sequence.

The programs for A003311, there is no canonical definition to state claims against.
-/

/-! ## A003311.P13852540805859858771

`ceil((A050504(A187829(n+1))+2)*3/2)`
-/

namespace A003311.P13852540805859858771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050504 (A187829 (n + 1)).toNat + 2 : ℚ) * ((3 : ℚ) / 2)⌉

end

end A003311.P13852540805859858771

/-! ## A003311.P9178887676993369806

`A007494(A050504(A187829(n+1))+2)`
-/

namespace A003311.P9178887676993369806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A050504 (A187829 (n + 1)).toNat + 2).toNat

end

end A003311.P9178887676993369806

/-! ## A003311.P8503653502417023241

`A111858(A333242(2*(n+2)))+A004684(n+1)`
-/

namespace A003311.P8503653502417023241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 (A333242 (2 * (n + 2))).toNat + A004684 (n + 1)

end

end A003311.P8503653502417023241

/-! ## A003311.P5670398011790587896

`A006093(n+1)+A003434(A320160(n+4))`
-/

namespace A003311.P5670398011790587896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A003434 (A320160 (n + 4)).toNat

end

end A003311.P5670398011790587896

/-! ## A003311.P5498607892479676702

`∑[A227147(A082721(n+1))]`
-/

namespace A003311.P5498607892479676702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227147 (A082721 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003311.P5498607892479676702

/-!
# A003312: a(1) = 3; for n>0, a(n+1) = a(n) + floor((a(n)-1)/2).

The programs for A003312, the canonical program `A003312.P15694996587841724422` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003312 has offset 1).

The definition of A003312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003312.P6980189305794795959

`ceil(3/2*a(n-1))-1` with `a(0)=3`
-/

namespace A003312.P6980189305794795959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ - 1

end

end A003312.P6980189305794795959

namespace A003312

/-- `ceil(3/2*a(n-1))-1` -/
def P6980189305794795959.Spec : Prop :=
  ∀ n, P6980189305794795959.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P15293930070581734184

`floor(a(n-1)+(a(n-1)-1)/2)` with `a(0)=3`
-/

namespace A003312.P15293930070581734184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) - 1 : ℚ) / 2⌋

end

end A003312.P15293930070581734184

namespace A003312

/-- `floor(a(n-1)+(a(n-1)-1)/2)` -/
def P15293930070581734184.Spec : Prop :=
  ∀ n, P15293930070581734184.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P8287210773664190902

`floor(a(n-1)-(1-a(n-1))/2)` with `a(0)=3`
-/

namespace A003312.P8287210773664190902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) - (1 - a (n - 1) : ℚ) / 2⌋

end

end A003312.P8287210773664190902

namespace A003312

/-- `floor(a(n-1)-(1-a(n-1))/2)` -/
def P8287210773664190902.Spec : Prop :=
  ∀ n, P8287210773664190902.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P15694996587841724422

`A006999(n)+3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003312

/-- `A006999(n)+3` -/
def P15694996587841724422.Spec : Prop :=
  ∀ n, P15694996587841724422.a n = A003312 (n + 1)

theorem P15694996587841724422.correct : P15694996587841724422.Spec := by
  intro n
  simp only [A003312, Nat.add_sub_cancel]

end A003312

/-! ## A003312.P1019389853202540338

`A061418(n+1)+1`
-/

namespace A003312.P1019389853202540338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + 1

end

end A003312.P1019389853202540338

namespace A003312

/-- `A061418(n+1)+1` -/
def P1019389853202540338.Spec : Prop :=
  ∀ n, P1019389853202540338.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P229948286950434626

`A061419(n+1)+2`
-/

namespace A003312.P229948286950434626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + 2

end

end A003312.P229948286950434626

namespace A003312

/-- `A061419(n+1)+2` -/
def P229948286950434626.Spec : Prop :=
  ∀ n, P229948286950434626.a n = A003312 (n + 1)

theorem P229948286950434626.correct : P229948286950434626.Spec := by
  intro n
  simp only [A003312, Nat.add_sub_cancel, A003312.P229948286950434626.a, A003312.P15694996587841724422.a, A006999, A006999.P3401224636589051846.a, A061419, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003312

/-! ## A003312.P11550256785343220934

`∑[A073941(n+1)]+2`
-/

namespace A003312.P11550256785343220934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A003312.P11550256785343220934

namespace A003312

/-- `∑[A073941(n+1)]+2` -/
def P11550256785343220934.Spec : Prop :=
  ∀ n, P11550256785343220934.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P1053543196754159083

`∑[A005428(abs(1-n))]+2`
-/

namespace A003312.P1053543196754159083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A003312.P1053543196754159083

namespace A003312

/-- `∑[A005428(abs(1-n))]+2` -/
def P1053543196754159083.Spec : Prop :=
  ∀ n, P1053543196754159083.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P9705389701401586570

`∑[A081848(n+1)/3]+2`
-/

namespace A003312.P9705389701401586570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A003312.P9705389701401586570

namespace A003312

/-- `∑[A081848(n+1)/3]+2` -/
def P9705389701401586570.Spec : Prop :=
  ∀ n, P9705389701401586570.a n = (A003312 (n + 1) : ℚ)

end A003312

/-! ## A003312.P10672521999764383727

`A005428(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A003312.P10672521999764383727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A005428 (n - 1) + a (n - 1)

end

end A003312.P10672521999764383727

namespace A003312

/-- `A005428(n-1)+a(n-1)` -/
def P10672521999764383727.Spec : Prop :=
  ∀ n, P10672521999764383727.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P5419599988245631310

`A081848(n+1)+2-A304273(n+1)`
-/

namespace A003312.P5419599988245631310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1) + (2 - A304273 (n + 1))

end

end A003312.P5419599988245631310

namespace A003312

/-- `A081848(n+1)+2-A304273(n+1)` -/
def P5419599988245631310.Spec : Prop :=
  ∀ n, P5419599988245631310.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P9813849148696748731

`floor((3*a(n-1)-1)/2)` with `a(0)=3`
-/

namespace A003312.P9813849148696748731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(3 * a (n - 1) - 1 : ℚ) / 2⌋

end

end A003312.P9813849148696748731

namespace A003312

/-- `floor((3*a(n-1)-1)/2)` -/
def P9813849148696748731.Spec : Prop :=
  ∀ n, P9813849148696748731.a n = A003312 (n + 1)

end A003312

/-! ## A003312.P10949389085401391688

`(3*a(n-1)-gcd(2, a(n-1)))/2` with `a(0)=3`
-/

namespace A003312.P10949389085401391688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 * a (n - 1) - (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) / 2

end

end A003312.P10949389085401391688

namespace A003312

/-- `(3*a(n-1)-gcd(2, a(n-1)))/2` -/
def P10949389085401391688.Spec : Prop :=
  ∀ n, P10949389085401391688.a n = (A003312 (n + 1) : ℚ)

end A003312

/-! ## A003312.P1889836703390475158

`A305498(n+1)/2+2`
-/

namespace A003312.P1889836703390475158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305498 (n + 1) : ℚ) / 2 + 2

end

end A003312.P1889836703390475158

namespace A003312

/-- `A305498(n+1)/2+2` -/
def P1889836703390475158.Spec : Prop :=
  ∀ n, P1889836703390475158.a n = (A003312 (n + 1) : ℚ)

theorem P1889836703390475158.correct : P1889836703390475158.Spec := by
  intro n
  simp only [A003312, Nat.add_sub_cancel, A003312.P1889836703390475158.a, A003312.P15694996587841724422.a, A006999, A006999.P3401224636589051846.a, A305498, A305498.P10132958174563949694.a, A061419, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003312

/-! ## A003312.P3505559749291412518

`A070885(n+2)/3+2`
-/

namespace A003312.P3505559749291412518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070885 (n + 2) : ℚ) / 3 + 2

end

end A003312.P3505559749291412518

namespace A003312

/-- `A070885(n+2)/3+2` -/
def P3505559749291412518.Spec : Prop :=
  ∀ n, P3505559749291412518.a n = (A003312 (n + 1) : ℚ)

end A003312

/-! ## A003312.P14317793503637553344

`A367856(∑[n])+3`
-/

namespace A003312.P14317793503637553344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367856 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A003312.P14317793503637553344

namespace A003312

/-- `A367856(∑[n])+3` -/
def P14317793503637553344.Spec : Prop :=
  ∀ n, P14317793503637553344.a n = A003312 (n + 1)

end A003312

/-!
# A003313: Length of shortest addition chain for n.

The programs for A003313, there is no canonical definition to state claims against.
-/

/-! ## A003313.P11495108133350132768

`A064097(n+1)-A076142(n+1)`
-/

namespace A003313.P11495108133350132768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A076142 (n + 1)

end

end A003313.P11495108133350132768

/-! ## A003313.P13964180620467584822

`∑[A334090(n+1)]-A076142(n+1)`
-/

namespace A003313.P13964180620467584822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076142 (n + 1)

end

end A003313.P13964180620467584822

/-! ## A003313.P8871650821230866020

`A073933(n+1)-(A076142(n+1)+1)`
-/

namespace A003313.P8871650821230866020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - (A076142 (n + 1) + 1)

end

end A003313.P8871650821230866020

/-! ## A003313.P16471028202985538422

`A334203(A103517(n))-A076142(n+1)`
-/

namespace A003313.P16471028202985538422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A103517 n).toNat - A076142 (n + 1)

end

end A003313.P16471028202985538422

/-! ## A003313.P8486737079911501962

`A008554(A073933(n+1)-A076142(n+1))`
-/

namespace A003313.P8486737079911501962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A073933 (n + 1) - A076142 (n + 1)).toNat

end

end A003313.P8486737079911501962

/-! ## A003313.P6995329469311779885

`A033619(A073933(n+1)-A076142(n+1))`
-/

namespace A003313.P6995329469311779885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A073933 (n + 1) - A076142 (n + 1)).toNat

end

end A003313.P6995329469311779885

/-! ## A003313.P3237602522848664387

`A135382(A073933(n+1)-A076142(n+1))`
-/

namespace A003313.P3237602522848664387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (A073933 (n + 1) - A076142 (n + 1)).toNat

end

end A003313.P3237602522848664387

/-! ## A003313.P5897259342812047031

`A334203(A005843(n+1))-A076142(n+1)`
-/

namespace A003313.P5897259342812047031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A005843 (n + 1)).toNat - A076142 (n + 1)

end

end A003313.P5897259342812047031

/-! ## A003313.P16531732945753715288

`A334203(A317440(n+1))-A076142(n+1)`
-/

namespace A003313.P16531732945753715288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A317440 (n + 1)).toNat - A076142 (n + 1)

end

end A003313.P16531732945753715288

/-! ## A003313.P3128347803652070898

`A334203(A051755(n+2))-A076142(n+1)`
-/

namespace A003313.P3128347803652070898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A051755 (n + 2)).toNat - A076142 (n + 1)

end

end A003313.P3128347803652070898

/-! ## A003313.P11366697619579832547

`A265690(n+1)-1`
-/

namespace A003313.P11366697619579832547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265690 (n + 1) - 1

end

end A003313.P11366697619579832547

/-! ## A003313.P3467809471792226400

`A000401(A265690(n+1))`
-/

namespace A003313.P3467809471792226400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A265690 (n + 1)).toNat

end

end A003313.P3467809471792226400

/-! ## A003313.P16187289617079537084

`A070198(n)%A265690(n+1)`
-/

namespace A003313.P16187289617079537084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A265690 (n + 1))

end

end A003313.P16187289617079537084

/-! ## A003313.P9858676714348198739

`A030494(n+1)%A265690(n+1)`
-/

namespace A003313.P9858676714348198739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A265690 (n + 1))

end

end A003313.P9858676714348198739

/-! ## A003313.P3910335995947811587

`A079782(n+1)%A265690(n+1)`
-/

namespace A003313.P3910335995947811587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A265690 (n + 1))

end

end A003313.P3910335995947811587

/-! ## A003313.P17199212956626694920

`A083685(n+1)%A265690(n+1)`
-/

namespace A003313.P17199212956626694920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A265690 (n + 1))

end

end A003313.P17199212956626694920

/-! ## A003313.P1458354621063117858

`A121934(n+1)%A265690(n+1)`
-/

namespace A003313.P1458354621063117858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A265690 (n + 1))

end

end A003313.P1458354621063117858

/-! ## A003313.P17867158048459563793

`A127228(n+4)%A265690(n+1)`
-/

namespace A003313.P17867158048459563793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A265690 (n + 1))

end

end A003313.P17867158048459563793

/-! ## A003313.P16918328711801635456

`A127229(n+5)%A265690(n+1)`
-/

namespace A003313.P16918328711801635456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A265690 (n + 1))

end

end A003313.P16918328711801635456

/-! ## A003313.P7183432992248965758

`A072828(n+1)%A265690(n+1)`
-/

namespace A003313.P7183432992248965758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A265690 (n + 1))

end

end A003313.P7183432992248965758

/-!
# A003314: Binary entropy function: a(1)=0; for n > 1, a(n) = n + min { a(k)+a(n-k) : 1 <= k <= n-1 }.

The programs for A003314, the canonical program `A003314.P7289667830618378766` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003314 has offset 1).

The definition of A003314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003314.P7289667830618378766

`(n+1)*floor(log2(4*(n+1)))-2^floor(log2(2*(n+1)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003314

/-- `(n+1)*floor(log2(4*(n+1)))-2^floor(log2(2*(n+1)))` -/
def P7289667830618378766.Spec : Prop :=
  ∀ n, P7289667830618378766.a n = A003314 (n + 1)

theorem P7289667830618378766.correct : P7289667830618378766.Spec := by
  intro n
  simp only [A003314, Nat.add_sub_cancel]

end A003314

/-! ## A003314.P5484875901704569125

`∑[ceil(log2(xor(1, 2*n)))]`
-/

namespace A003314.P5484875901704569125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor 1 (2 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003314.P5484875901704569125

namespace A003314

/-- `∑[ceil(log2(xor(1, 2*n)))]` -/
def P5484875901704569125.Spec : Prop :=
  ∀ n, P5484875901704569125.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P12047529779229208513

`abs(∑[floor(log2(acot(2*n)))])`
-/

namespace A003314.P12047529779229208513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (2 * n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A003314.P12047529779229208513

namespace A003314

/-- `abs(∑[floor(log2(acot(2*n)))])` -/
def P12047529779229208513.Spec : Prop :=
  ∀ n, P12047529779229208513.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P9650337028212047748

`-∑[floor(log2(acot(2*n)))]`
-/

namespace A003314.P9650337028212047748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (2 * n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003314.P9650337028212047748

namespace A003314

/-- `-∑[floor(log2(acot(2*n)))]` -/
def P9650337028212047748.Spec : Prop :=
  ∀ n, P9650337028212047748.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P16918743560276517437

`∑[1+a(floor(n/2))]` with `a(0)=0, a(1)=2`
-/

namespace A003314.P16918743560276517437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003314.P16918743560276517437

namespace A003314

/-- `∑[1+a(floor(n/2))]` -/
def P16918743560276517437.Spec : Prop :=
  ∀ n, (P16918743560276517437.a n : ℤ) = A003314 (n + 1)

end A003314

/-! ## A003314.P16168775627730101261

`∑[∑[char[2^xor(1, n)]]]+n`
-/

namespace A003314.P16168775627730101261
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A003314.P16168775627730101261

namespace A003314

/-- `∑[∑[char[2^xor(1, n)]]]+n` -/
def P16168775627730101261.Spec : Prop :=
  ∀ n, (P16168775627730101261.a n : ℤ) = A003314 (n + 1)

end A003314

/-! ## A003314.P17143629993126447427

`ceil(log2(n+1))+1+a(n-1)` with `a(0)=0`
-/

namespace A003314.P17143629993126447427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + (1 + a (n - 1))

end

end A003314.P17143629993126447427

namespace A003314

/-- `ceil(log2(n+1))+1+a(n-1)` -/
def P17143629993126447427.Spec : Prop :=
  ∀ n, P17143629993126447427.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P7928767044170513183

`floor((1/n+1)*a(n-1))+2` with `a(0)=0`
-/

namespace A003314.P7928767044170513183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(1 / (n : ℚ) + 1) * (a (n - 1) : ℚ)⌋ + 2

end

end A003314.P7928767044170513183

namespace A003314

/-- `floor((1/n+1)*a(n-1))+2` -/
def P7928767044170513183.Spec : Prop :=
  ∀ n, P7928767044170513183.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P13020499980589342870

`floor(a(n-1)+a(n-1)/n+2)` with `a(0)=0`
-/

namespace A003314.P13020499980589342870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) / (n : ℚ) + 2)⌋

end

end A003314.P13020499980589342870

namespace A003314

/-- `floor(a(n-1)+a(n-1)/n+2)` -/
def P13020499980589342870.Spec : Prop :=
  ∀ n, P13020499980589342870.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P15596688821245145012

`floor(a(n-1)-((n-a(n-1))/n-3))` with `a(0)=0`
-/

namespace A003314.P15596688821245145012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (((n : ℤ) - a (n - 1) : ℚ) / (n : ℚ) - 3)⌋

end

end A003314.P15596688821245145012

namespace A003314

/-- `floor(a(n-1)-((n-a(n-1))/n-3))` -/
def P15596688821245145012.Spec : Prop :=
  ∀ n, P15596688821245145012.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P13096040339951443542

`A392221(Δ[n²])`
-/

namespace A003314.P13096040339951443542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003314.P13096040339951443542

namespace A003314

/-- `A392221(Δ[n²])` -/
def P13096040339951443542.Spec : Prop :=
  ∀ n, P13096040339951443542.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P16258036173667778199

`∑[A029837(2*n+1)]`
-/

namespace A003314.P16258036173667778199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003314.P16258036173667778199

namespace A003314

/-- `∑[A029837(2*n+1)]` -/
def P16258036173667778199.Spec : Prop :=
  ∀ n, P16258036173667778199.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P12094132610158252005

`A295513(2*(n+1))/2`
-/

namespace A003314.P12094132610158252005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295513 (2 * (n + 1)) : ℚ) / 2

end

end A003314.P12094132610158252005

namespace A003314

/-- `A295513(2*(n+1))/2` -/
def P12094132610158252005.Spec : Prop :=
  ∀ n, P12094132610158252005.a n = (A003314 (n + 1) : ℚ)

end A003314

/-! ## A003314.P10496447917477948691

`A014682(A083652(2*n+1)-2)`
-/

namespace A003314.P10496447917477948691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A083652 (2 * n + 1) - 2).toNat

end

end A003314.P10496447917477948691

namespace A003314

/-- `A014682(A083652(2*n+1)-2)` -/
def P10496447917477948691.Spec : Prop :=
  ∀ n, P10496447917477948691.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P4382180724637895089

`∑[A119387(4*n)]`
-/

namespace A003314.P4382180724637895089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003314.P4382180724637895089

namespace A003314

/-- `∑[A119387(4*n)]` -/
def P4382180724637895089.Spec : Prop :=
  ∀ n, P4382180724637895089.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P4956970416206219739

`∑[A238845(4*n)]`
-/

namespace A003314.P4956970416206219739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003314.P4956970416206219739

namespace A003314

/-- `∑[A238845(4*n)]` -/
def P4956970416206219739.Spec : Prop :=
  ∀ n, P4956970416206219739.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P14398374614283431914

`A023443(A123753(n))`
-/

namespace A003314.P14398374614283431914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A123753 n).toNat

end

end A003314.P14398374614283431914

namespace A003314

/-- `A023443(A123753(n))` -/
def P14398374614283431914.Spec : Prop :=
  ∀ n, P14398374614283431914.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P5263583311230429694

`A004526(A083652(2*n+1)-1)`
-/

namespace A003314.P5263583311230429694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A083652 (2 * n + 1) - 1).toNat

end

end A003314.P5263583311230429694

namespace A003314

/-- `A004526(A083652(2*n+1)-1)` -/
def P5263583311230429694.Spec : Prop :=
  ∀ n, P5263583311230429694.a n = A003314 (n + 1)

end A003314

/-! ## A003314.P10103332037561281894

`eq[A270885(n+1), A306297(n)]`
-/

namespace A003314.P10103332037561281894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003314.P10103332037561281894

namespace A003314

/-- `eq[A270885(n+1), A306297(n)]` -/
def P10103332037561281894.Spec : Prop :=
  ∀ n, (P10103332037561281894.a n : ℤ) = A003314 (n + 1)

end A003314

/-! ## A003314.P7356436497654645349

`A030530(A001855(A001855(n+1)+n+1))`
-/

namespace A003314.P7356436497654645349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A001855 (A001855 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A003314.P7356436497654645349

namespace A003314

/-- `A030530(A001855(A001855(n+1)+n+1))` -/
def P7356436497654645349.Spec : Prop :=
  ∀ n, P7356436497654645349.a n = A003314 (n + 1)

end A003314

/-!
# A003316: Sum of lengths of longest increasing subsequences of all permutations of n elements.

The programs for A003316, there is no canonical definition to state claims against.
-/

/-! ## A003316.P8535316007079280211

`∑{#}[n, (#+1)*A047874(C(n+1, 2)+#+1)]`
-/

namespace A003316.P8535316007079280211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A047874 (Nat.choose (n + 1) 2 + (k + 1))

end

end A003316.P8535316007079280211

/-! ## A003316.P5899813977893774762

`A321277(n+1)+A321274(n+1)`
-/

namespace A003316.P5899813977893774762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321277 (n + 1) + A321274 (n + 1)

end

end A003316.P5899813977893774762

/-! ## A003316.P4394429281886604331

`A000142(n+1)/A054677(n+1)*A054676(n+1)`
-/

namespace A003316.P4394429281886604331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A054677 (n + 1) : ℚ) * (A054676 (n + 1) : ℚ)

end

end A003316.P4394429281886604331

/-! ## A003316.P9673602962653139109

`A321273(n+1)-A321277(n+1)`
-/

namespace A003316.P9673602962653139109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321273 (n + 1) - A321277 (n + 1)

end

end A003316.P9673602962653139109

/-! ## A003316.P16326548873876603860

`(A321274(n+1)+A321273(n+1))/2`
-/

namespace A003316.P16326548873876603860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321274 (n + 1) + A321273 (n + 1) : ℚ) / 2

end

end A003316.P16326548873876603860

/-! ## A003316.P11781549258165706736

`A321273(n+1)+A057428(n)*A321277(n+1)`
-/

namespace A003316.P11781549258165706736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321273 (n + 1) + A057428 n * A321277 (n + 1)

end

end A003316.P11781549258165706736

/-!
# A003317: Number of unlabeled minimally 2-connected graphs with n nodes (also called "blocks").

The programs for A003317, there is no canonical definition to state claims against.
-/

/-! ## A003317.P1499060839807434384

`A000006(2*A328430(n))`
-/

namespace A003317.P1499060839807434384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (2 * A328430 n).toNat

end

end A003317.P1499060839807434384

/-! ## A003317.P10108513868138240012

`A172471(or(1, A174085(n)))`
-/

namespace A003317.P10108513868138240012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor 1 (A174085 n)).toNat

end

end A003317.P10108513868138240012

/-! ## A003317.P2228150546960054216

`A132090(2*(A124292(n+1)+1))`
-/

namespace A003317.P2228150546960054216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (2 * (A124292 (n + 1) + 1)).toNat

end

end A003317.P2228150546960054216

/-! ## A003317.P11002258799943964965

`ceil(A094189(A045918(n)+3^n)/2)`
-/

namespace A003317.P11002258799943964965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094189 (A045918 n + (3 ^ n : ℤ)).toNat : ℚ) / 2⌉

end

end A003317.P11002258799943964965

/-! ## A003317.P15003275941511172247

`A172471(A174085(n)+A055087(n))`
-/

namespace A003317.P15003275941511172247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A174085 n + A055087 n).toNat

end

end A003317.P15003275941511172247

/-!
# A003318: a(n+1) = 1 + a( floor(n/1) ) + a( floor(n/2) ) + ... + a( floor(n/n) ).

The programs for A003318, there is no canonical definition to state claims against.
-/

/-! ## A003318.P2094948798236675284

`∑[A003238(1+n)]`
-/

namespace A003318.P2094948798236675284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P2094948798236675284

/-! ## A003318.P858530270781028803

`∑[ceil(A068336(n+1)/2)]`
-/

namespace A003318.P858530270781028803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068336 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P858530270781028803

/-! ## A003318.P13982849065291667092

`∑[A214579(n)+a(n-1)]` with `a(0)=1`
-/

namespace A003318.P13982849065291667092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A214579 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P13982849065291667092

/-! ## A003318.P8722084655258419341

`A003238(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A003318.P8722084655258419341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003238 (n + 1) + a (n - 1)

end

end A003318.P8722084655258419341

/-! ## A003318.P7283305846030098305

`∑[∑[A214579(A028310(n))]+1]`
-/

namespace A003318.P7283305846030098305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214579 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P7283305846030098305

/-! ## A003318.P10681715558868670561

`∑[A068336(n+1)/A040000(n)]`
-/

namespace A003318.P10681715558868670561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A040000 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P10681715558868670561

/-! ## A003318.P1450906946582502911

`(A290845(n+1)+A068336(n+1))/2`
-/

namespace A003318.P1450906946582502911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290845 (n + 1) + A068336 (n + 1) : ℚ) / 2

end

end A003318.P1450906946582502911

/-! ## A003318.P1206686724287724336

`A290845(n+2)/2`
-/

namespace A003318.P1206686724287724336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290845 (n + 2) : ℚ) / 2

end

end A003318.P1206686724287724336

/-! ## A003318.P10581840022718334336

`∑[A143810(∑[n+1])]`
-/

namespace A003318.P10581840022718334336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P10581840022718334336

/-! ## A003318.P2232900057189990039

`∑[A214576(∑[n]+1)]`
-/

namespace A003318.P2232900057189990039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214576 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003318.P2232900057189990039

/-!
# A003319: Number of connected permutations of [1..n] (those not fixing [1..j] for 0 < j < n). Also called indecomposable permutations, or irreducible permutations.

The programs for A003319, there is no canonical definition to state claims against.
-/

/-! ## A003319.P2234055408852111215

`abs(A158882(n))`
-/

namespace A003319.P2234055408852111215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158882 n|

end

end A003319.P2234055408852111215

/-! ## A003319.P12507465806155109728

`abs(A167894(n))`
-/

namespace A003319.P12507465806155109728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167894 n|

end

end A003319.P12507465806155109728

/-! ## A003319.P3686036403044213765

`A200659(C(n, 2))`
-/

namespace A003319.P3686036403044213765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200659 (Nat.choose n 2)

end

end A003319.P3686036403044213765

/-! ## A003319.P5918784274127047071

`A200659(∑[n]-n)`
-/

namespace A003319.P5918784274127047071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200659 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A003319.P5918784274127047071

/-! ## A003319.P5230834067295702484

`A059438(∑[abs(1-n)])`
-/

namespace A003319.P5230834067295702484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003319.P5230834067295702484

/-! ## A003319.P15545266372846720412

`lcm((-1)^n, A158882(round(acot(n)+n)))`
-/

namespace A003319.P15545266372846720412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A158882 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A003319.P15545266372846720412

/-! ## A003319.P8292541748014952390

`A263484(A179865(n+1))`
-/

namespace A003319.P8292541748014952390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A179865 (n + 1)).toNat

end

end A003319.P8292541748014952390

/-! ## A003319.P9248378187743770231

`A085771(A133263(n)-1)`
-/

namespace A003319.P9248378187743770231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A133263 n - 1).toNat

end

end A003319.P9248378187743770231

/-! ## A003319.P2774315995116758091

`A111528(A186752(n+2))`
-/

namespace A003319.P2774315995116758091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (A186752 (n + 2)).toNat

end

end A003319.P2774315995116758091

/-! ## A003319.P14399524362262673579

`A000142(n)-A356291(n)`
-/

namespace A003319.P14399524362262673579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A356291 n

end

end A003319.P14399524362262673579

/-!
# A003320: a(n) = max_{k=0..n} k^(n-k).

The programs for A003320, there is no canonical definition to state claims against.
-/

/-! ## A003320.P1835514391126783166

`A247358(abs(∑[1-n])+1)`
-/

namespace A003320.P1835514391126783166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247358 (|∑ j ∈ Finset.range (n + 1), f1 j| + 1).toNat

end

end A003320.P1835514391126783166

/-! ## A003320.P54059507051213051

`A003992(A125229(n)+∑[n])`
-/

namespace A003320.P54059507051213051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A125229 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A003320.P54059507051213051

/-! ## A003320.P590382001696271086

`A009999(A161680(n)+A125229(n))`
-/

namespace A003320.P590382001696271086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A161680 n + A125229 n).toNat

end

end A003320.P590382001696271086

/-! ## A003320.P13857778940932535947

`A051129(A152947(n+1)-A125229(n))`
-/

namespace A003320.P13857778940932535947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A152947 (n + 1) - A125229 n).toNat

end

end A003320.P13857778940932535947

/-! ## A003320.P1329442865633149220

`A255270(A269755(n))^A125229(n)`
-/

namespace A003320.P1329442865633149220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255270 (A269755 n).toNat : ℚ) ^ (A125229 n : ℤ)

end

end A003320.P1329442865633149220

/-!
# A003321: Smallest n-th order perfect digital invariant or PDI: smallest number > 1 equal to sum of n-th powers of its digits, or 0 if no such number exists.

The programs for A003321, there is no canonical definition to state claims against.
-/

/-! ## A003321.P4597345829245143463

`A252648(∑[A255668(n)]+2)`
-/

namespace A003321.P4597345829245143463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A003321.P4597345829245143463

/-! ## A003321.P11478323415831358483

`A252648(lt[A252648(n), 1]+2)`
-/

namespace A003321.P11478323415831358483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A003321.P11478323415831358483

/-!
# A003322: Necklace permutations.

The programs for A003322, there is no canonical definition to state claims against.
-/

/-! ## A003322.P12884545427364806724

`A008615(4*A006228(n))`
-/

namespace A003322.P12884545427364806724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * A006228 n).toNat

end

end A003322.P12884545427364806724

/-! ## A003322.P11814162151109058807

`A103221(4*A006228(n))`
-/

namespace A003322.P11814162151109058807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (4 * A006228 n).toNat

end

end A003322.P11814162151109058807

/-! ## A003322.P1067402578989029160

`A008679(8*A006228(n))`
-/

namespace A003322.P1067402578989029160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (8 * A006228 n).toNat

end

end A003322.P1067402578989029160

/-! ## A003322.P12334730780084935468

`A081753(8*A006228(n))`
-/

namespace A003322.P12334730780084935468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (8 * A006228 n).toNat

end

end A003322.P12334730780084935468

/-!
# A003324: A nonrepetitive sequence.

The programs for A003324, the canonical program `A003324.P909769212695493746` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003324 has offset 1).

The definition of A003324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003324.P15291980519148551438

`A152985(n+1)%4+1`
-/

namespace A003324.P15291980519148551438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152985 (n + 1)) 4 + 1

end

end A003324.P15291980519148551438

namespace A003324

/-- `A152985(n+1)%4+1` -/
def P15291980519148551438.Spec : Prop :=
  ∀ n, P15291980519148551438.a n = A003324 (n + 1)

end A003324

/-! ## A003324.P1859943080801882749

`xor(gcd(2, n), A006467(2*(n+1)))`
-/

namespace A003324.P1859943080801882749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.gcd 2 n : ℤ) (A006467 (2 * (n + 1)))

end

end A003324.P1859943080801882749

namespace A003324

/-- `xor(gcd(2, n), A006467(2*(n+1)))` -/
def P1859943080801882749.Spec : Prop :=
  ∀ n, P1859943080801882749.a n = A003324 (n + 1)

end A003324

/-! ## A003324.P909769212695493746

`and(1, n)+and(3, A335115(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003324

/-- `and(1, n)+and(3, A335115(n+1))` -/
def P909769212695493746.Spec : Prop :=
  ∀ n, P909769212695493746.a n = A003324 (n + 1)

theorem P909769212695493746.correct : P909769212695493746.Spec := by
  intro n
  simp only [A003324, Nat.add_sub_cancel]

end A003324

/-! ## A003324.P10844315161130673890

`A203571(A065338(n+1))`
-/

namespace A003324.P10844315161130673890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (A065338 (n + 1)).toNat

end

end A003324.P10844315161130673890

namespace A003324

/-- `A203571(A065338(n+1))` -/
def P10844315161130673890.Spec : Prop :=
  ∀ n, P10844315161130673890.a n = A003324 (n + 1)

end A003324

/-! ## A003324.P13574198850706751377

`A000035(n)+2-ratio[A020985(n)]`
-/

namespace A003324.P13574198850706751377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) + (2 - (f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A003324.P13574198850706751377

namespace A003324

/-- `A000035(n)+2-ratio[A020985(n)]` -/
def P13574198850706751377.Spec : Prop :=
  ∀ n, P13574198850706751377.a n = (A003324 (n + 1) : ℚ)

end A003324

/-! ## A003324.P16417043604908237936

`A000035(n)+A335115(n+1)%4`
-/

namespace A003324.P16417043604908237936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + Int.tmod (A335115 (n + 1)) 4

end

end A003324.P16417043604908237936

namespace A003324

/-- `A000035(n)+A335115(n+1)%4` -/
def P16417043604908237936.Spec : Prop :=
  ∀ n, P16417043604908237936.a n = A003324 (n + 1)

end A003324

/-! ## A003324.P9260185534418467531

`A010883(A152985(n+1))`
-/

namespace A003324.P9260185534418467531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A152985 (n + 1)).toNat

end

end A003324.P9260185534418467531

namespace A003324

/-- `A010883(A152985(n+1))` -/
def P9260185534418467531.Spec : Prop :=
  ∀ n, P9260185534418467531.a n = A003324 (n + 1)

end A003324

/-!
# A003325: Numbers that are the sum of 2 positive cubes.

The programs for A003325, there is no canonical definition to state claims against.
-/

/-! ## A003325.P3587010866305457008

`A339993(1+n)/8`
-/

namespace A003325.P3587010866305457008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339993 (1 + n) : ℚ) / 8

end

end A003325.P3587010866305457008

/-! ## A003325.P11671899218531793783

`∪[A024670(n+1), A337529(n+1)]`
-/

namespace A003325.P11671899218531793783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003325.P11671899218531793783

/-! ## A003325.P9466867921927912959

`∪[A202679(n+1), A294073(n+1)]`
-/

namespace A003325.P9466867921927912959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003325.P9466867921927912959

/-! ## A003325.P11002454913782258408

`∪[A294073(n+1), A303373(n+1)]`
-/

namespace A003325.P11002454913782258408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003325.P11002454913782258408

/-! ## A003325.P13329595859090377293

`∪[∑[2*A003215(n)], A024670(n+1)]`
-/

namespace A003325.P13329595859090377293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A003325.P13329595859090377293

/-! ## A003325.P9739141972672820428

`∪[Δ[2*A000537(n)], A024670(n+1)]`
-/

namespace A003325.P9739141972672820428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A003325.P9739141972672820428

/-! ## A003325.P17431222153119919422

`∩[A004999(n+1), A051386(n+1)]`
-/

namespace A003325.P17431222153119919422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003325.P17431222153119919422

/-! ## A003325.P1537841625050221631

`filter[A051386(n+1), A373972(#)]`
-/

namespace A003325.P1537841625050221631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373972 (f1 j).toNat = 1) n)

end

end A003325.P1537841625050221631

/-! ## A003325.P14364732228568155272

`filter[A020894(n+2), A373972(#)]`
-/

namespace A003325.P14364732228568155272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373972 (f1 j).toNat = 1) n)

end

end A003325.P14364732228568155272

/-! ## A003325.P984588055143834144

`lt[0, A025455(n)]`
-/

namespace A003325.P984588055143834144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003325.P984588055143834144

/-! ## A003325.P14916702776851580008

`lt[0, A280618(n)]`
-/

namespace A003325.P14916702776851580008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003325.P14916702776851580008

/-! ## A003325.P8466407624327354361

`filter[A383642(n+1), A373972(#)]`
-/

namespace A003325.P8466407624327354361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373972 (f1 j).toNat = 1) n)

end

end A003325.P8466407624327354361

/-! ## A003325.P6224419277884305646

`∩[A004999(n+1), A383642(n+1)]`
-/

namespace A003325.P6224419277884305646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003325.P6224419277884305646

/-! ## A003325.P16569108498516011801

`record[A339993(A134478(n))/8]`
-/

namespace A003325.P16569108498516011801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339993 (A134478 n).toNat : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003325.P16569108498516011801

/-! ## A003325.P11328962554742114549

`lt[A266230(n), 2]+1`
-/

namespace A003325.P11328962554742114549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266230 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A003325.P11328962554742114549

/-! ## A003325.P17672453809131042023

`eq[2, A002376(n+1)]+1`
-/

namespace A003325.P17672453809131042023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003325.P17672453809131042023

/-! ## A003325.P13748965466944877837

`eq[2, A002376(A028310(n))]`
-/

namespace A003325.P13748965466944877837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003325.P13748965466944877837

/-! ## A003325.P12159174377813362324

`eq[A010057(n), A351338(n)]`
-/

namespace A003325.P12159174377813362324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003325.P12159174377813362324

/-! ## A003325.P14720550865226280

`eq[A010057(n), A351376(n)]`
-/

namespace A003325.P14720550865226280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003325.P14720550865226280

/-! ## A003325.P6298768504365048171

`A020725(eq[2, A002376(n+1)])`
-/

namespace A003325.P6298768504365048171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003325.P6298768504365048171

/-!
# A003326: Nearest integer to Bernoulli(2n)/(-4n).

The programs for A003326, there is no canonical definition to state claims against.
-/

/-! ## A003326.P10495341725043981597

`A003414(n+1)*A186336(A002386(n+1))`
-/

namespace A003326.P10495341725043981597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003414 (n + 1) * A186336 (A002386 (n + 1)).toNat

end

end A003326.P10495341725043981597

/-! ## A003326.P1052230521317138121

`A003414(A061147(n+1))*A161110(n+1)`
-/

namespace A003326.P1052230521317138121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003414 (A061147 (n + 1)).toNat * A161110 (n + 1)

end

end A003326.P1052230521317138121

/-! ## A003326.P17581959583105991455

`A003414(n+1)%A003432(A003427(n+1))`
-/

namespace A003326.P17581959583105991455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003414 (n + 1)) (A003432 (A003427 (n + 1)).toNat)

end

end A003326.P17581959583105991455

/-! ## A003326.P17533816867293301060

`A003414(A061147(n+1))%Δ[A003414(n+1)]`
-/

namespace A003326.P17533816867293301060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003414 (A061147 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A003326.P17533816867293301060

/-!
# A003327: Numbers that are the sum of 4 positive cubes in 1 or more way.

The programs for A003327, there is no canonical definition to state claims against.
-/

/-! ## A003327.P5684075791125608290

`∪[A025403(n+1), A025406(n+1)]`
-/

namespace A003327.P5684075791125608290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003327.P5684075791125608290

/-! ## A003327.P11931053877828962723

`lt[0, A340977(n+4)]+4`
-/

namespace A003327.P11931053877828962723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340977 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A003327.P11931053877828962723

/-! ## A003327.P4591410711901919428

`lt[0, A025457(n)]`
-/

namespace A003327.P4591410711901919428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003327.P4591410711901919428

/-! ## A003327.P3842444377951152166

`lt[4*A175365(n), A175368(n)]`
-/

namespace A003327.P3842444377951152166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A175365 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003327.P3842444377951152166

/-! ## A003327.P17263423877110441931

`eq[0, A000038(n)^A025457(n)]`
-/

namespace A003327.P17263423877110441931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A025457 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A003327.P17263423877110441931

/-! ## A003327.P5631710930815780400

`lt[A025447(n), A025448(n)]`
-/

namespace A003327.P5631710930815780400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003327.P5631710930815780400

/-! ## A003327.P2943946438289157534

`eq[1, gcd(A025457(n), A106349(n+1))]`
-/

namespace A003327.P2943946438289157534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025457 n) (A106349 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003327.P2943946438289157534

/-! ## A003327.P1546633948554306196

`eq[1, A158388(n*A025457(n))]`
-/

namespace A003327.P1546633948554306196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 ((n : ℤ) * A025457 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003327.P1546633948554306196

/-!
# A003328: Numbers that are the sum of 5 positive cubes.

The programs for A003328, there is no canonical definition to state claims against.
-/

/-! ## A003328.P2523202440482116525

`comp[A057906(n+1)-1]+1`
-/

namespace A003328.P2523202440482116525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057906 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003328.P2523202440482116525

/-! ## A003328.P6627810596225711711

`lt[0, A025458(n)]`
-/

namespace A003328.P6627810596225711711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003328.P6627810596225711711

/-! ## A003328.P1125595100064847907

`eq[1, A158388(A025458(n)²)]`
-/

namespace A003328.P1125595100064847907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A025458 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003328.P1125595100064847907

/-! ## A003328.P14452607388494064502

`eq[1, A141044(A025458(n)+1)]`
-/

namespace A003328.P14452607388494064502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025458 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003328.P14452607388494064502

/-! ## A003328.P9189897241108066852

`eq[1, A261143(A025458(n)+2)]`
-/

namespace A003328.P9189897241108066852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A025458 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003328.P9189897241108066852

/-! ## A003328.P13504055897515461878

`eq[1, A141044(2*A025458(n))]`
-/

namespace A003328.P13504055897515461878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (2 * A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003328.P13504055897515461878

/-! ## A003328.P2507392659041862364

`eq[1, A158388(2*A025458(n))]`
-/

namespace A003328.P2507392659041862364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (2 * A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003328.P2507392659041862364

/-! ## A003328.P6303228538259105352

`eq[1, A261143(3*A025458(n))]`
-/

namespace A003328.P6303228538259105352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (3 * A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003328.P6303228538259105352

/-! ## A003328.P13796744821715258672

`eq[A000038(n)², A000038(A025458(n))]`
-/

namespace A003328.P13796744821715258672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003328.P13796744821715258672

/-! ## A003328.P7812084023660549258

`eq[1, gcd(A025458(n), A106349(n+1))]`
-/

namespace A003328.P7812084023660549258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025458 n) (A106349 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003328.P7812084023660549258

/-! ## A003328.P18094123316418230725

`eq[A000038(n+1), A000038(A025458(n))]`
-/

namespace A003328.P18094123316418230725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003328.P18094123316418230725

/-! ## A003328.P2987495209602717985

`eq[1, A328114(A025458(n))^A000009(n)]`
-/

namespace A003328.P2987495209602717985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328114 (A025458 n).toNat : ℚ) ^ (A000009 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A003328.P2987495209602717985

/-!
# A003329: Numbers that are the sum of 6 positive cubes.

The programs for A003329, there is no canonical definition to state claims against.
-/

/-! ## A003329.P8671807082740732250

`comp[A057907(n+1)-1]+1`
-/

namespace A003329.P8671807082740732250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003329.P8671807082740732250

/-! ## A003329.P4177743617787485455

`lt[0, A025459(n)]`
-/

namespace A003329.P4177743617787485455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003329.P4177743617787485455

/-! ## A003329.P3529413582542116336

`eq[1, A141044(A025459(n)+1)]`
-/

namespace A003329.P3529413582542116336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025459 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003329.P3529413582542116336

/-! ## A003329.P7980910214402422666

`eq[2, A242253(A025459(n)+1)]`
-/

namespace A003329.P7980910214402422666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242253 (A025459 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003329.P7980910214402422666

/-! ## A003329.P4469071700796800083

`eq[1, A261143(A025459(n)+2)]`
-/

namespace A003329.P4469071700796800083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A025459 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003329.P4469071700796800083

/-! ## A003329.P4487586333230269976

`eq[1, A329684(A025459(n)+2)]`
-/

namespace A003329.P4487586333230269976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (A025459 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003329.P4487586333230269976

/-! ## A003329.P7769366943716316492

`eq[2, A020639(A096379(A025459(n)+1)+1)]`
-/

namespace A003329.P7769366943716316492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A096379 (A025459 n + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003329.P7769366943716316492

/-! ## A003329.P17987585878057189370

`eq[A000007(n), A000038(A025459(n))]`
-/

namespace A003329.P17987585878057189370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003329.P17987585878057189370

/-! ## A003329.P6079789097367687392

`eq[1, A000035(A186411(A025459(n)²))]`
-/

namespace A003329.P6079789097367687392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A186411 (A025459 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003329.P6079789097367687392

/-! ## A003329.P5405724437361164416

`eq[1, A000045(A025459(n))^A167340(n+1)]`
-/

namespace A003329.P5405724437361164416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A025459 n).toNat : ℚ) ^ (A167340 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A003329.P5405724437361164416

/-!
# A003330: Numbers that are the sum of 7 positive cubes.

The programs for A003330, there is no canonical definition to state claims against.
-/

/-! ## A003330.P4962097925610151719

`lt[0, A025460(n)]`
-/

namespace A003330.P4962097925610151719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003330.P4962097925610151719

/-! ## A003330.P18053590584775248034

`eq[1, A178334(A025460(n))%A008619(n)]`
-/

namespace A003330.P18053590584775248034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178334 (A025460 n).toNat) (A008619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003330.P18053590584775248034

/-! ## A003330.P11394827502455819945

`lt[A025450(n), A025451(n)]`
-/

namespace A003330.P11394827502455819945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003330.P11394827502455819945

/-! ## A003330.P6678979634812135180

`eq[1, gcd(A025460(n), A278923(n+1))]`
-/

namespace A003330.P6678979634812135180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025460 n) (A278923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003330.P6678979634812135180

/-! ## A003330.P12609594362446818421

`eq[A346609(n+1)%2, A178334(A025460(n))]`
-/

namespace A003330.P12609594362446818421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346609 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003330.P12609594362446818421

/-! ## A003330.P17463642878493536852

`eq[A057427(n+1), A178334(A025460(n))]`
-/

namespace A003330.P17463642878493536852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003330.P17463642878493536852

/-! ## A003330.P13686381209073352922

`eq[A014963(4*n+2), A178334(A025460(n))]`
-/

namespace A003330.P13686381209073352922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003330.P13686381209073352922

/-! ## A003330.P17839895855355434714

`eq[4, A040002(A025460(n)²²)]`
-/

namespace A003330.P17839895855355434714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 ((A025460 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003330.P17839895855355434714

/-! ## A003330.P5057513335664716927

`eq[2, A000122(A025460(n)²²)]`
-/

namespace A003330.P5057513335664716927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((A025460 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003330.P5057513335664716927

/-! ## A003330.P4758392935497675184

`eq[3, A307742(5^A025460(n))]`
-/

namespace A003330.P4758392935497675184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A025460 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003330.P4758392935497675184

/-! ## A003330.P5244630559404202244

`eq[0, A000007(A000040(n+1)*A025460(n))]`
-/

namespace A003330.P5244630559404202244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000040 (n + 1) * A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003330.P5244630559404202244

/-!
# A003331: Numbers that are the sum of 8 positive cubes.

The programs for A003331, there is no canonical definition to state claims against.
-/

/-! ## A003331.P14375635693878361558

`lt[1, A288663(A025461(n)²)]`
-/

namespace A003331.P14375635693878361558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A025461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003331.P14375635693878361558

/-!
# A003332: Numbers that are the sum of 9 positive cubes.

The programs for A003332, there is no canonical definition to state claims against.
-/

/-! ## A003332.P6478830587635502057

`lt[A010054(A000040(n+1)), A025462(n)]`
-/

namespace A003332.P6478830587635502057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003332.P6478830587635502057

/-!
# A003333: Numbers that are the sum of 10 positive cubes.

The programs for A003333, there is no canonical definition to state claims against.
-/

/-! ## A003333.P17486306821401013045

`lt[1, A006370(n*A025463(n))]`
-/

namespace A003333.P17486306821401013045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n : ℤ) * A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003333.P17486306821401013045

/-!
# A003334: Numbers that are the sum of 11 positive cubes.

The programs for A003334, there is no canonical definition to state claims against.
-/

/-! ## A003334.P97707854447612476

`comp[A332111(n+1)-1]+1`
-/

namespace A003334.P97707854447612476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003334.P97707854447612476

/-!
# A003335: Numbers that are the sum of 12 positive cubes.

The programs for A003335, there is no canonical definition to state claims against.
-/

/-! ## A003335.P4720437749335155649

`A003334(n+1)+A151933(n)!`
-/

namespace A003335.P4720437749335155649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003334 (n + 1) + (Nat.factorial (A151933 n).toNat : ℤ)

end

end A003335.P4720437749335155649

/-!
# A003336: Numbers that are the sum of 2 positive 4th powers.

The programs for A003336, there is no canonical definition to state claims against.
-/

/-! ## A003336.P1595998129373804374

`A344187(1+n)`
-/

namespace A003336.P1595998129373804374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (1 + n)

end

end A003336.P1595998129373804374

/-! ## A003336.P5832763182620844205

`record[A344187(A344180(n))]`
-/

namespace A003336.P5832763182620844205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P5832763182620844205

/-! ## A003336.P2486734281313067056

`record[A344187(A006949(A153152(n)))]`
-/

namespace A003336.P2486734281313067056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A006949 (A153152 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P2486734281313067056

/-! ## A003336.P7136265192526417327

`record[A344187(A064839(A006949(n)))]`
-/

namespace A003336.P7136265192526417327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A064839 (A006949 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P7136265192526417327

/-! ## A003336.P13547630584122509279

`record[A344187(A008621(A019425(n)))]`
-/

namespace A003336.P13547630584122509279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A008621 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P13547630584122509279

/-! ## A003336.P198847055645966741

`record[A344187(A263274(n))]`
-/

namespace A003336.P198847055645966741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A263274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P198847055645966741

/-! ## A003336.P14876096222045125208

`record[A344187(A134478(n))]`
-/

namespace A003336.P14876096222045125208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P14876096222045125208

/-! ## A003336.P11186815667941722902

`∩[A004831(n+1), A111925(n+1)]`
-/

namespace A003336.P11186815667941722902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003336.P11186815667941722902

/-! ## A003336.P10849884424281200572

`record[A344187(A286589(n))]`
-/

namespace A003336.P10849884424281200572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (A286589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003336.P10849884424281200572

/-! ## A003336.P17258177280609243862

`filter[A111925(n+1), A216284(#)]`
-/

namespace A003336.P17258177280609243862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P17258177280609243862

/-! ## A003336.P13613400072773268490

`filter[A305901(n+1), A216284(#)]`
-/

namespace A003336.P13613400072773268490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P13613400072773268490

/-! ## A003336.P3377731921962186215

`filter[A318500(n+1), A216284(#)]`
-/

namespace A003336.P3377731921962186215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P3377731921962186215

/-! ## A003336.P13395938124856877998

`filter[A004831(n+2), A049240(#)]`
-/

namespace A003336.P13395938124856877998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A003336.P13395938124856877998

/-! ## A003336.P13703937986028410038

`filter[A004831(n+2), A216284(#)]`
-/

namespace A003336.P13703937986028410038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P13703937986028410038

/-! ## A003336.P18354078593049320598

`filter[A004832(n+2), A216284(#)]`
-/

namespace A003336.P18354078593049320598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004832 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P18354078593049320598

/-! ## A003336.P6134776459031984929

`filter[A004833(n+2), A216284(#)]`
-/

namespace A003336.P6134776459031984929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P6134776459031984929

/-! ## A003336.P13202470054940583352

`filter[A004834(n+2), A216284(#)]`
-/

namespace A003336.P13202470054940583352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P13202470054940583352

/-! ## A003336.P7243629562828573175

`filter[A155562(n+2), A216284(#)]`
-/

namespace A003336.P7243629562828573175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A003336.P7243629562828573175

/-! ## A003336.P275134394285974670

`eq[1, A216284(n+1)]+1`
-/

namespace A003336.P275134394285974670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003336.P275134394285974670

/-!
# A003337: Numbers which are the sum of 3 nonzero 4th powers.

The programs for A003337, there is no canonical definition to state claims against.
-/

/-! ## A003337.P9678492585808470290

`A085321(n)+a(n-1)` with `a(0)=3`
-/

namespace A003337.P9678492585808470290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A085321 n + a (n - 1)

end

end A003337.P9678492585808470290

/-! ## A003337.P10107672209944292852

`∪[A047714(n+1), A344188(n+1)]`
-/

namespace A003337.P10107672209944292852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003337.P10107672209944292852

/-! ## A003337.P17602577494712824748

`∪[A309762(n+1), A344188(n+1)]`
-/

namespace A003337.P17602577494712824748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003337.P17602577494712824748

/-! ## A003337.P833701293492748691

`A047714(A151909(n)!+n)`
-/

namespace A003337.P833701293492748691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (Nat.factorial (A151909 n).toNat + n)

end

end A003337.P833701293492748691

/-! ## A003337.P2770764428904553869

`A047714(or(n+1, A151909(n)))`
-/

namespace A003337.P2770764428904553869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (Int.lor (n + 1 : ℤ) (A151909 n)).toNat

end

end A003337.P2770764428904553869

/-! ## A003337.P5741352173132137160

`A047714(A242419(A242419(n+1)))`
-/

namespace A003337.P5741352173132137160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (A242419 (A242419 (n + 1)).toNat).toNat

end

end A003337.P5741352173132137160

/-! ## A003337.P1225003017735801263

`A000041(A151909(n))*A047714(n+1)`
-/

namespace A003337.P1225003017735801263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151909 n).toNat * A047714 (n + 1)

end

end A003337.P1225003017735801263

/-! ## A003337.P419493317972159089

`A047714(n+1)%A002189(n)`
-/

namespace A003337.P419493317972159089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047714 (n + 1)) (A002189 n)

end

end A003337.P419493317972159089

/-!
# A003338: Numbers that are the sum of 4 nonzero 4th powers.

The programs for A003338, there is no canonical definition to state claims against.
-/

/-! ## A003338.P8255728989162612445

`∪[A309763(n+1), A344189(n+1)]`
-/

namespace A003338.P8255728989162612445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003338.P8255728989162612445

/-! ## A003338.P9861897963309002066

`A336725(∑[n+4]+3)`
-/

namespace A003338.P9861897963309002066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003338.P9861897963309002066

/-! ## A003338.P15923919228063920676

`A094024(2*(n+1))*A336725(A055998(n+2))`
-/

namespace A003338.P15923919228063920676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (2 * (n + 1)) * A336725 (A055998 (n + 2)).toNat

end

end A003338.P15923919228063920676

/-! ## A003338.P261263009374354249

`A047715(n+1)/A151935(n)!`
-/

namespace A003338.P261263009374354249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047715 (n + 1) : ℚ) / (Nat.factorial (A151935 n).toNat : ℚ)

end

end A003338.P261263009374354249

/-! ## A003338.P7645228996945432767

`A047715(n+1)%A046048(n+3)`
-/

namespace A003338.P7645228996945432767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047715 (n + 1)) (A046048 (n + 3))

end

end A003338.P7645228996945432767

/-! ## A003338.P9871823398077691642

`A047715(n+1)^A006530(A151935(n)!)`
-/

namespace A003338.P9871823398077691642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047715 (n + 1) : ℚ) ^ (A006530 (Nat.factorial (A151935 n).toNat) : ℤ)

end

end A003338.P9871823398077691642

/-!
# A003339: Numbers that are the sum of 5 positive 4th powers.

The programs for A003339, there is no canonical definition to state claims against.
-/

/-! ## A003339.P6790078263335651840

`∪[A344190(n+1), A344238(n+1)]`
-/

namespace A003339.P6790078263335651840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003339.P6790078263335651840

/-! ## A003339.P9042833193247338988

`A047716(n+1)%record[A186981(n)]`
-/

namespace A003339.P9042833193247338988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186981 (n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047716 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A003339.P9042833193247338988

/-! ## A003339.P8405286799951265298

`A047716(n+1)+A010057(A168380(n+1))`
-/

namespace A003339.P8405286799951265298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047716 (n + 1) + A010057 (A168380 (n + 1)).toNat

end

end A003339.P8405286799951265298

/-! ## A003339.P6788990884477529249

`A047716(n+1)+A010051(A174814(n+1))`
-/

namespace A003339.P6788990884477529249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047716 (n + 1) + A010051 (A174814 (n + 1)).toNat

end

end A003339.P6788990884477529249

/-! ## A003339.P16424155598080332033

`A047716(n+1)+A000007(A214927(n+4))`
-/

namespace A003339.P16424155598080332033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047716 (n + 1) + A000007 (A214927 (n + 4)).toNat

end

end A003339.P16424155598080332033

/-!
# A003340: Numbers that are the sum of 6 positive 4th powers.

The programs for A003340, there is no canonical definition to state claims against.
-/

/-! ## A003340.P12780918996678324741

`∪[A345559(n+1), A345813(n+1)]`
-/

namespace A003340.P12780918996678324741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003340.P12780918996678324741

/-! ## A003340.P10730559500747538164

`A056926(A345813(n+1)²)`
-/

namespace A003340.P10730559500747538164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A345813 (n + 1) ^ 2).toNat

end

end A003340.P10730559500747538164

/-! ## A003340.P14870613498069956317

`record[A345813(A002377(n+1))]`
-/

namespace A003340.P14870613498069956317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345813 (A002377 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003340.P14870613498069956317

/-! ## A003340.P15311240081848594899

`A319101(A370235(n))*A345813(n+1)`
-/

namespace A003340.P15311240081848594899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 (A370235 n).toNat * A345813 (n + 1)

end

end A003340.P15311240081848594899

/-! ## A003340.P2719572718884141178

`A317933(A260055(n+1))*A345813(n+1)`
-/

namespace A003340.P2719572718884141178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A260055 (n + 1)).toNat * A345813 (n + 1)

end

end A003340.P2719572718884141178

/-!
# A003341: Numbers that are the sum of 7 positive 4th powers.

The programs for A003341, there is no canonical definition to state claims against.
-/

/-! ## A003341.P14780682492651131829

`∪[A345568(n+1), A345823(n+1)]`
-/

namespace A003341.P14780682492651131829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003341.P14780682492651131829

/-! ## A003341.P15835002457015048942

`A052410(A345823(n+1)²)`
-/

namespace A003341.P15835002457015048942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A345823 (n + 1) ^ 2).toNat

end

end A003341.P15835002457015048942

/-! ## A003341.P15824085818946599419

`A345823(n+1)%A352225(n+1)`
-/

namespace A003341.P15824085818946599419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345823 (n + 1)) (A352225 (n + 1))

end

end A003341.P15824085818946599419

/-! ## A003341.P8606641494399442853

`A302212(A000124(n))*A345823(n+1)`
-/

namespace A003341.P8606641494399442853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A000124 n).toNat * A345823 (n + 1)

end

end A003341.P8606641494399442853

/-! ## A003341.P13476919582420946573

`A345823(n+1)%A036057(A000041(n))`
-/

namespace A003341.P13476919582420946573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345823 (n + 1)) (A036057 (A000041 n).toNat)

end

end A003341.P13476919582420946573

/-!
# A003342: Numbers that are the sum of 8 positive 4th powers.

The programs for A003342, there is no canonical definition to state claims against.
-/

/-! ## A003342.P12350541288202677903

`∪[A345577(n+1), A345833(n+1)]`
-/

namespace A003342.P12350541288202677903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003342.P12350541288202677903

/-! ## A003342.P10359921665576527756

`record[A345833(A286001(n+1))]`
-/

namespace A003342.P10359921665576527756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345833 (A286001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003342.P10359921665576527756

/-! ## A003342.P5287390616387037185

`record[A345833(A355319(n+4))]`
-/

namespace A003342.P5287390616387037185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345833 (A355319 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003342.P5287390616387037185

/-! ## A003342.P15327380672088222874

`A345833(n+1)%∑[A258693(n)]`
-/

namespace A003342.P15327380672088222874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345833 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003342.P15327380672088222874

/-! ## A003342.P8447779323700302751

`A345833(A156061(p?[round(8*n/7)]²))`
-/

namespace A003342.P8447779323700302751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345833 (A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat).toNat

end

end A003342.P8447779323700302751

/-!
# A003343: Numbers that are the sum of 9 positive 4th powers.

The programs for A003343, there is no canonical definition to state claims against.
-/

/-! ## A003343.P13918447132573819622

`∪[A345586(n+1), A345843(n+1)]`
-/

namespace A003343.P13918447132573819622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003343.P13918447132573819622

/-! ## A003343.P3316616211781008326

`A345843(∑[∑[A097479(n)]])`
-/

namespace A003343.P3316616211781008326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003343.P3316616211781008326

/-! ## A003343.P4370142784357562923

`A097479(n)!*A345843(n+1)`
-/

namespace A003343.P4370142784357562923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A097479 n).toNat : ℤ) * A345843 (n + 1)

end

end A003343.P4370142784357562923

/-! ## A003343.P12027773477996012618

`A345843(n+1)%A031668(n+1)`
-/

namespace A003343.P12027773477996012618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345843 (n + 1)) (A031668 (n + 1))

end

end A003343.P12027773477996012618

/-! ## A003343.P13899111307077326132

`A359377(A234921(n+2))+A345843(n+1)`
-/

namespace A003343.P13899111307077326132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (A234921 (n + 2)).toNat + A345843 (n + 1)

end

end A003343.P13899111307077326132

/-!
# A003344: Numbers that are the sum of 10 positive 4th powers.

The programs for A003344, there is no canonical definition to state claims against.
-/

/-! ## A003344.P9210025811604974677

`∪[A345595(n+1), A345853(n+1)]`
-/

namespace A003344.P9210025811604974677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003344.P9210025811604974677

/-! ## A003344.P11346439507041886941

`A345853(C(A153679(n+1), n))`
-/

namespace A003344.P11346439507041886941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345853 (Nat.choose (A153679 (n + 1)).toNat n)

end

end A003344.P11346439507041886941

/-! ## A003344.P5185610315817851606

`A345853(n+1)%A031652(n+1)`
-/

namespace A003344.P5185610315817851606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345853 (n + 1)) (A031652 (n + 1))

end

end A003344.P5185610315817851606

/-! ## A003344.P10082497006613245511

`and(A345853(n+1), A359085(n+1))`
-/

namespace A003344.P10082497006613245511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345853 (n + 1)) (A359085 (n + 1))

end

end A003344.P10082497006613245511

/-! ## A003344.P937469595197106067

`A345853(n+1)+A000007(A271269(n+1))`
-/

namespace A003344.P937469595197106067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345853 (n + 1) + A000007 (A271269 (n + 1)).toNat

end

end A003344.P937469595197106067

/-!
# A003345: Numbers that are the sum of 11 positive 4th powers.

The programs for A003345, there is no canonical definition to state claims against.
-/

/-! ## A003345.P11849089037257060421

`A047725(n+1)%A154566(n+2)-3`
-/

namespace A003345.P11849089037257060421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047725 (n + 1)) (A154566 (n + 2)) - 3

end

end A003345.P11849089037257060421

/-! ## A003345.P12503104091803206377

`A003346(n+1)+(-1)^A128684(n+1)`
-/

namespace A003345.P12503104091803206377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003346 (n + 1) : ℚ) + (-1 : ℚ) ^ (A128684 (n + 1) : ℤ)

end

end A003345.P12503104091803206377

/-! ## A003345.P5756308122362793732

`A003346(n+1)%A350288(2*n+5)-1`
-/

namespace A003345.P5756308122362793732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003346 (n + 1)) (A350288 (2 * n + 5)) - 1

end

end A003345.P5756308122362793732

/-! ## A003345.P12464843436079591762

`A003346(n+1)-A033940(12*C(2*n, 2))`
-/

namespace A003345.P12464843436079591762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003346 (n + 1) - A033940 (12 * Nat.choose (2 * n) 2)

end

end A003345.P12464843436079591762

/-! ## A003345.P2761966335058062932

`A057428(A078938(n))+A003346(n+1)`
-/

namespace A003345.P2761966335058062932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A078938 n).toNat + A003346 (n + 1)

end

end A003345.P2761966335058062932

/-!
# A003346: Numbers that are the sum of 12 positive 4th powers.

The programs for A003346, there is no canonical definition to state claims against.
-/

/-! ## A003346.P6462427818057275488

`A047724(n+1)-A033999(A045946(n))`
-/

namespace A003346.P6462427818057275488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047724 (n + 1) - A033999 (A045946 n).toNat

end

end A003346.P6462427818057275488

/-! ## A003346.P13731657111960003424

`A047724(n+1)-A113370(A023925(n))`
-/

namespace A003346.P13731657111960003424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047724 (n + 1) - A113370 (A023925 n).toNat

end

end A003346.P13731657111960003424

/-! ## A003346.P3589218885051900175

`A047724(n+1)-A057427(A168551(n))`
-/

namespace A003346.P3589218885051900175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047724 (n + 1) - A057427 (A168551 n).toNat

end

end A003346.P3589218885051900175

/-! ## A003346.P7865255484735076991

`A057428(A023271(n+1))+A047724(n+1)`
-/

namespace A003346.P7865255484735076991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A023271 (n + 1)).toNat + A047724 (n + 1)

end

end A003346.P7865255484735076991

/-! ## A003346.P6185559545700296296

`A134824(A000978(n+1))+A047724(n+1)`
-/

namespace A003346.P6185559545700296296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A000978 (n + 1)).toNat + A047724 (n + 1)

end

end A003346.P6185559545700296296

/-!
# A003347: Numbers that are the sum of 2 positive 5th powers.

The programs for A003347, there is no canonical definition to state claims against.
-/

/-! ## A003347.P15088247162996866225

`∩[A004842(n+1), A020896(n)]`
-/

namespace A003347.P15088247162996866225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003347.P15088247162996866225

/-! ## A003347.P943203690141740432

`∩[A004842(n+1), A344641(n+1)-1]`
-/

namespace A003347.P943203690141740432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344641 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003347.P943203690141740432

/-! ## A003347.P16241420248769241136

`∩[A004843(n+1), A020896(n)]`
-/

namespace A003347.P16241420248769241136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003347.P16241420248769241136

/-! ## A003347.P16862017144148846719

`∩[A003349(n+1)-2, A004842(n+1)]`
-/

namespace A003347.P16862017144148846719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003347.P16862017144148846719

/-! ## A003347.P12434538273219824722

`∩[A004844(n+1), A020896(n)]`
-/

namespace A003347.P12434538273219824722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003347.P12434538273219824722

/-!
# A003348: Numbers that are the sum of 3 positive 5th powers.

The programs for A003348, there is no canonical definition to state claims against.
-/

/-! ## A003348.P17035937601861809672

`A344641(n+1)`
-/

namespace A003348.P17035937601861809672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344641 (n + 1)

end

end A003348.P17035937601861809672

/-! ## A003348.P3647356289673056414

`record[A344641(A324346(n))]`
-/

namespace A003348.P3647356289673056414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344641 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003348.P3647356289673056414

/-! ## A003348.P15567441230373263324

`record[A344641(A328396(n))]`
-/

namespace A003348.P15567441230373263324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344641 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003348.P15567441230373263324

/-! ## A003348.P8836285707014238643

`record[A344641(A126759(n))]`
-/

namespace A003348.P8836285707014238643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344641 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003348.P8836285707014238643

/-! ## A003348.P16299614357763110440

`record[A059841(n)*A344641(A008620(n))]`
-/

namespace A003348.P16299614357763110440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A344641 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003348.P16299614357763110440

/-! ## A003348.P7939385005138275160

`record[A344641(A065648(n))]`
-/

namespace A003348.P7939385005138275160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344641 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003348.P7939385005138275160

/-!
# A003349: Numbers that are the sum of 4 positive 5th powers.

The programs for A003349, there is no canonical definition to state claims against.
-/

/-! ## A003349.P10665105461968673441

`A085320(n)+a(n-1)` with `a(0)=4`
-/

namespace A003349.P10665105461968673441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A085320 n + a (n - 1)

end

end A003349.P10665105461968673441

/-! ## A003349.P15363091483426625353

`∪[A344642(n+1), A344644(n+1)]`
-/

namespace A003349.P15363091483426625353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003349.P15363091483426625353

/-! ## A003349.P15302334549876222946

`∪[A344642(n+1), A344645(n+1)]`
-/

namespace A003349.P15302334549876222946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003349.P15302334549876222946

/-! ## A003349.P13864195450344265181

`A344642(n+1)%A033652(n)`
-/

namespace A003349.P13864195450344265181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344642 (n + 1)) (A033652 n)

end

end A003349.P13864195450344265181

/-! ## A003349.P2332957272037571601

`A344642(n+1)+A010054(A240028(3*(n+1)))`
-/

namespace A003349.P2332957272037571601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (n + 1) + A010054 (A240028 (3 * (n + 1))).toNat

end

end A003349.P2332957272037571601

/-! ## A003349.P16009361679321673263

`A344642(n+1)%A006960(n)`
-/

namespace A003349.P16009361679321673263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344642 (n + 1)) (A006960 n)

end

end A003349.P16009361679321673263

/-! ## A003349.P7808931075853347292

`record[A344642(A261104(n)+1)]`
-/

namespace A003349.P7808931075853347292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (A261104 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003349.P7808931075853347292

/-! ## A003349.P16387793553563361387

`record[A344642(A261104(A008730(n)))]`
-/

namespace A003349.P16387793553563361387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (A261104 (A008730 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003349.P16387793553563361387

/-! ## A003349.P10514153126302167116

`A344642(n+1)%A003539(n)`
-/

namespace A003349.P10514153126302167116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344642 (n + 1)) (A003539 n)

end

end A003349.P10514153126302167116

/-! ## A003349.P3905230540479176504

`record[A344642(∑[A020985(n)])]`
-/

namespace A003349.P3905230540479176504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003349.P3905230540479176504

/-! ## A003349.P802697533038958620

`lcm(A008683(A323503(n)), A344642(n+1))`
-/

namespace A003349.P802697533038958620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A323503 n).toNat) (A344642 (n + 1))

end

end A003349.P802697533038958620

/-! ## A003349.P2037517009927951812

`A344642(n+1)%A002063(n)`
-/

namespace A003349.P2037517009927951812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344642 (n + 1)) (A002063 n)

end

end A003349.P2037517009927951812

/-! ## A003349.P11616790985006137940

`A344642(and(1, A206372(n))+n)`
-/

namespace A003349.P11616790985006137940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (Int.land 1 (A206372 n) + (n : ℤ)).toNat

end

end A003349.P11616790985006137940

/-! ## A003349.P7958621802107434163

`A344642(and(n-A206372(n), A206372(n)))`
-/

namespace A003349.P7958621802107434163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (Int.land ((n : ℤ) - A206372 n) (A206372 n)).toNat

end

end A003349.P7958621802107434163

/-! ## A003349.P16197101534255161367

`record[A344642(A143182(n))]`
-/

namespace A003349.P16197101534255161367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344642 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003349.P16197101534255161367

/-!
# A003350: Numbers that are the sum of 5 positive 5th powers.

The programs for A003350, there is no canonical definition to state claims against.
-/

/-! ## A003350.P13631881975727665101

`∪[A342685(n+1), A344643(n+1)]`
-/

namespace A003350.P13631881975727665101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003350.P13631881975727665101

/-! ## A003350.P10038410632141963306

`∪[A342686(n+1), A344643(n+1)]`
-/

namespace A003350.P10038410632141963306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003350.P10038410632141963306

/-! ## A003350.P10816590220342076622

`A336725(∑[n+5]+6)`
-/

namespace A003350.P10816590220342076622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A003350.P10816590220342076622

/-! ## A003350.P12383628154142603279

`A253554(2*A344643(n+1))`
-/

namespace A003350.P12383628154142603279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (2 * A344643 (n + 1)).toNat

end

end A003350.P12383628154142603279

/-! ## A003350.P9608030519431731173

`A280497(2*A344643(n+1))`
-/

namespace A003350.P9608030519431731173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A344643 (n + 1)).toNat

end

end A003350.P9608030519431731173

/-! ## A003350.P12590564046915669947

`A280498(2*A344643(n+1))`
-/

namespace A003350.P12590564046915669947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A344643 (n + 1)).toNat

end

end A003350.P12590564046915669947

/-! ## A003350.P6858840094012269875

`A174571(4*A344643(n+1))`
-/

namespace A003350.P6858840094012269875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (4 * A344643 (n + 1)).toNat

end

end A003350.P6858840094012269875

/-!
# A003351: Numbers that are the sum of 6 positive 5th powers.

The programs for A003351, there is no canonical definition to state claims against.
-/

/-! ## A003351.P4389446870359641167

`∪[A345507(n+1), A346356(n+1)]`
-/

namespace A003351.P4389446870359641167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003351.P4389446870359641167

/-! ## A003351.P8008628844634412157

`∪[A346356(n+1), A346357(n+1)]`
-/

namespace A003351.P8008628844634412157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003351.P8008628844634412157

/-! ## A003351.P11539305055222977793

`A253554(2*A346356(n+1))`
-/

namespace A003351.P11539305055222977793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (2 * A346356 (n + 1)).toNat

end

end A003351.P11539305055222977793

/-! ## A003351.P1422155314210692344

`A280497(2*A346356(n+1))`
-/

namespace A003351.P1422155314210692344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A346356 (n + 1)).toNat

end

end A003351.P1422155314210692344

/-! ## A003351.P14478248733489290852

`A280498(2*A346356(n+1))`
-/

namespace A003351.P14478248733489290852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A346356 (n + 1)).toNat

end

end A003351.P14478248733489290852

/-! ## A003351.P13517272226505523717

`A174571(4*A346356(n+1))`
-/

namespace A003351.P13517272226505523717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (4 * A346356 (n + 1)).toNat

end

end A003351.P13517272226505523717

/-! ## A003351.P15672123043438372101

`A000034(A000954(n))*A346356(n+1)`
-/

namespace A003351.P15672123043438372101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000954 n).toNat * A346356 (n + 1)

end

end A003351.P15672123043438372101

/-! ## A003351.P8224196998108038353

`A346356(n+1)+C(2, n+2)*A036873(n+1)`
-/

namespace A003351.P8224196998108038353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346356 (n + 1) + (Nat.choose 2 (n + 2) : ℤ) * A036873 (n + 1)

end

end A003351.P8224196998108038353

/-! ## A003351.P15894900319066640728

`A346356(n+1)%A002189(n)`
-/

namespace A003351.P15894900319066640728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346356 (n + 1)) (A002189 n)

end

end A003351.P15894900319066640728

/-!
# A003352: Numbers that are the sum of 7 positive 5th powers.

The programs for A003352, there is no canonical definition to state claims against.
-/

/-! ## A003352.P16248224868565683169

`∪[A345605(n+1), A346278(n+1)]`
-/

namespace A003352.P16248224868565683169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003352.P16248224868565683169

/-! ## A003352.P7272197092746400805

`A253554(2*A346278(n+1))`
-/

namespace A003352.P7272197092746400805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (2 * A346278 (n + 1)).toNat

end

end A003352.P7272197092746400805

/-! ## A003352.P2067981516794217154

`A280497(2*A346278(n+1))`
-/

namespace A003352.P2067981516794217154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A346278 (n + 1)).toNat

end

end A003352.P2067981516794217154

/-! ## A003352.P17698842891635499757

`A280498(2*A346278(n+1))`
-/

namespace A003352.P17698842891635499757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A346278 (n + 1)).toNat

end

end A003352.P17698842891635499757

/-! ## A003352.P971437231759441961

`A174571(4*A346278(n+1))`
-/

namespace A003352.P971437231759441961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (4 * A346278 (n + 1)).toNat

end

end A003352.P971437231759441961

/-! ## A003352.P10173081281301331383

`A346278(n+1)%A186599(A151569(n))`
-/

namespace A003352.P10173081281301331383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346278 (n + 1)) (A186599 (A151569 n).toNat)

end

end A003352.P10173081281301331383

/-! ## A003352.P10128865952376450081

`A346278(n+1)+A010051(A001950(n+1)²)`
-/

namespace A003352.P10128865952376450081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346278 (n + 1) + A010051 (A001950 (n + 1) ^ 2).toNat

end

end A003352.P10128865952376450081

/-! ## A003352.P7909760595583237952

`A069010(A137688(n))*A346278(n+1)`
-/

namespace A003352.P7909760595583237952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A137688 n).toNat * A346278 (n + 1)

end

end A003352.P7909760595583237952

/-! ## A003352.P1813908388432178838

`A093178(2*A317841(n+1)²)*A346278(n+1)`
-/

namespace A003352.P1813908388432178838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * A317841 (n + 1) ^ 2).toNat * A346278 (n + 1)

end

end A003352.P1813908388432178838

/-! ## A003352.P10399485963195066408

`A346278(n+1)^A069010(A137688(n+1))`
-/

namespace A003352.P10399485963195066408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346278 (n + 1) : ℚ) ^ (A069010 (A137688 (n + 1)).toNat : ℤ)

end

end A003352.P10399485963195066408

/-! ## A003352.P10899187051682991779

`A346278(n+1)+and(8, A333381(A051953(n+1)))`
-/

namespace A003352.P10899187051682991779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346278 (n + 1) + Int.land 8 (A333381 (A051953 (n + 1)).toNat)

end

end A003352.P10899187051682991779

/-!
# A003353: Numbers that are the sum of 8 positive 5th powers.

The programs for A003353, there is no canonical definition to state claims against.
-/

/-! ## A003353.P17899137257527026998

`∪[A345610(n+1), A346326(n+1)]`
-/

namespace A003353.P17899137257527026998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003353.P17899137257527026998

/-! ## A003353.P1756068125404665528

`A253554(2*A346326(n+1))`
-/

namespace A003353.P1756068125404665528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (2 * A346326 (n + 1)).toNat

end

end A003353.P1756068125404665528

/-! ## A003353.P6929401691942305393

`A280497(2*A346326(n+1))`
-/

namespace A003353.P6929401691942305393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A346326 (n + 1)).toNat

end

end A003353.P6929401691942305393

/-! ## A003353.P789832578369788268

`A280498(2*A346326(n+1))`
-/

namespace A003353.P789832578369788268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A346326 (n + 1)).toNat

end

end A003353.P789832578369788268

/-! ## A003353.P15129953695510744903

`A323467(2*A346326(n+1))`
-/

namespace A003353.P15129953695510744903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (2 * A346326 (n + 1)).toNat

end

end A003353.P15129953695510744903

/-! ## A003353.P2087646378707549745

`A174571(4*A346326(n+1))`
-/

namespace A003353.P2087646378707549745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (4 * A346326 (n + 1)).toNat

end

end A003353.P2087646378707549745

/-! ## A003353.P2435720343201116564

`A255589(4*A346326(n+1))`
-/

namespace A003353.P2435720343201116564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (4 * A346326 (n + 1)).toNat

end

end A003353.P2435720343201116564

/-! ## A003353.P4982234788740068644

`A080079(A010078(A346326(n+1)))`
-/

namespace A003353.P4982234788740068644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A010078 (A346326 (n + 1)).toNat).toNat

end

end A003353.P4982234788740068644

/-! ## A003353.P12602638395809383139

`A346326(n+1)%A003959(A020744(n)²)`
-/

namespace A003353.P12602638395809383139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346326 (n + 1)) (A003959 (A020744 n ^ 2).toNat)

end

end A003353.P12602638395809383139

/-! ## A003353.P3446222091417458456

`gcd(A235123(n+2)*A346326(n+1), A346326(n+1))`
-/

namespace A003353.P3446222091417458456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235123 (n + 2) * A346326 (n + 1)) (A346326 (n + 1))

end

end A003353.P3446222091417458456

/-! ## A003353.P11646637192246362443

`A346326(A002260(∑[n+1]))`
-/

namespace A003353.P11646637192246362443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346326 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A003353.P11646637192246362443

/-! ## A003353.P1943261449407440135

`A014963(A335935(A179832(n+1)))*A346326(n+1)`
-/

namespace A003353.P1943261449407440135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A335935 (A179832 (n + 1)).toNat).toNat * A346326 (n + 1)

end

end A003353.P1943261449407440135

/-! ## A003353.P15550841405883515797

`A346326(n+1)+A090173(∑[A016349(n)])`
-/

namespace A003353.P15550841405883515797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346326 (n + 1) + A090173 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003353.P15550841405883515797

/-! ## A003353.P5847332292164423883

`A016349(∑[A016349(n)])²*A346326(n+1)`
-/

namespace A003353.P5847332292164423883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2 * A346326 (n + 1)

end

end A003353.P5847332292164423883

/-! ## A003353.P15104945811517996354

`A346326(A131507(∑[n])-n)`
-/

namespace A003353.P15104945811517996354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346326 (A131507 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)).toNat

end

end A003353.P15104945811517996354

/-! ## A003353.P10339969858822188775

`A346326(n+1)+A090173(∑[n])`
-/

namespace A003353.P10339969858822188775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346326 (n + 1) + A090173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003353.P10339969858822188775

/-! ## A003353.P4732456782650843912

`A008836(A080100(n)²)*A346326(n+1)`
-/

namespace A003353.P4732456782650843912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A080100 n ^ 2).toNat * A346326 (n + 1)

end

end A003353.P4732456782650843912

/-!
# A003354: Numbers that are the sum of 9 positive 5th powers.

The programs for A003354, there is no canonical definition to state claims against.
-/

/-! ## A003354.P146511362215166604

`∪[A345619(n+1), A346336(n+1)]`
-/

namespace A003354.P146511362215166604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003354.P146511362215166604

/-! ## A003354.P11396352527637951789

`A253554(2*A346336(n+1))`
-/

namespace A003354.P11396352527637951789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (2 * A346336 (n + 1)).toNat

end

end A003354.P11396352527637951789

/-! ## A003354.P9350108334599682480

`A280497(2*A346336(n+1))`
-/

namespace A003354.P9350108334599682480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A346336 (n + 1)).toNat

end

end A003354.P9350108334599682480

/-! ## A003354.P15970745641852866115

`A280498(2*A346336(n+1))`
-/

namespace A003354.P15970745641852866115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A346336 (n + 1)).toNat

end

end A003354.P15970745641852866115

/-! ## A003354.P14167890803400769565

`A174571(4*A346336(n+1))`
-/

namespace A003354.P14167890803400769565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (4 * A346336 (n + 1)).toNat

end

end A003354.P14167890803400769565

/-! ## A003354.P9108580908349145400

`A346336(n+1)+A000038(A005384(n+1))`
-/

namespace A003354.P9108580908349145400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1) + A000038 (A005384 (n + 1)).toNat

end

end A003354.P9108580908349145400

/-! ## A003354.P6610380858755080469

`A346336(n+1)%A041776(n)`
-/

namespace A003354.P6610380858755080469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346336 (n + 1)) (A041776 n)

end

end A003354.P6610380858755080469

/-! ## A003354.P15900766630877024913

`A346336(n+1)%A041620(n)`
-/

namespace A003354.P15900766630877024913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346336 (n + 1)) (A041620 n)

end

end A003354.P15900766630877024913

/-! ## A003354.P15070844683722559439

`A007424(A013932(n+1))*A346336(n+1)`
-/

namespace A003354.P15070844683722559439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A013932 (n + 1)).toNat * A346336 (n + 1)

end

end A003354.P15070844683722559439

/-! ## A003354.P3615208726328046123

`A346336(n+1)+A055672(A178112(n)²)`
-/

namespace A003354.P3615208726328046123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1) + A055672 (A178112 n ^ 2).toNat

end

end A003354.P3615208726328046123

/-! ## A003354.P13556075737255505028

`A093709(A178112(n)²)*A346336(n+1)`
-/

namespace A003354.P13556075737255505028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (A178112 n ^ 2).toNat * A346336 (n + 1)

end

end A003354.P13556075737255505028

/-! ## A003354.P8592707296797992833

`A346336(n+1)+val(A003342(n+1), A345793(n+1))`
-/

namespace A003354.P8592707296797992833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1) + (SequenceMachineLib.valuation (A003342 (n + 1)).toNat (A345793 (n + 1)).toNat : ℤ)

end

end A003354.P8592707296797992833

/-! ## A003354.P2162623689748108687

`A346336(n+1)+val(A345793(n+1), A003344(n+1))`
-/

namespace A003354.P2162623689748108687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1) + (SequenceMachineLib.valuation (A345793 (n + 1)).toNat (A003344 (n + 1)).toNat : ℤ)

end

end A003354.P2162623689748108687

/-! ## A003354.P7286589095563430198

`A346336(n+1)+val(A345586(n+1), A345793(n+1))`
-/

namespace A003354.P7286589095563430198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1) + (SequenceMachineLib.valuation (A345586 (n + 1)).toNat (A345793 (n + 1)).toNat : ℤ)

end

end A003354.P7286589095563430198

/-! ## A003354.P9834325808179514478

`A346336(gcd(n+1, A000217((n+1)²)))`
-/

namespace A003354.P9834325808179514478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (Int.gcd (n + 1 : ℤ) (A000217 ((n + 1) ^ 2)))

end

end A003354.P9834325808179514478

/-! ## A003354.P4273736149407833340

`gcd(2, A321217(A000040(n+1)))*A346336(n+1)`
-/

namespace A003354.P4273736149407833340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A321217 (A000040 (n + 1)).toNat) : ℤ) * A346336 (n + 1)

end

end A003354.P4273736149407833340

/-! ## A003354.P12336032838508520476

`A000045(A006530(A059268(n)))*A346336(n+1)`
-/

namespace A003354.P12336032838508520476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006530 (A059268 n).toNat).toNat * A346336 (n + 1)

end

end A003354.P12336032838508520476

/-! ## A003354.P5073267388457654223

`A346336(n+1)%A002089(n)`
-/

namespace A003354.P5073267388457654223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346336 (n + 1)) (A002089 n)

end

end A003354.P5073267388457654223

/-! ## A003354.P10084991606248855289

`A346336(A093709(n²)+n)`
-/

namespace A003354.P10084991606248855289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (A093709 (n ^ 2) + (n : ℤ)).toNat

end

end A003354.P10084991606248855289

/-! ## A003354.P13482080668454710397

`A346336(n+1)+A055672(n²)`
-/

namespace A003354.P13482080668454710397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346336 (n + 1) + A055672 (n ^ 2)

end

end A003354.P13482080668454710397

/-!
# A003355: Numbers that are the sum of 10 positive 5th powers.

The programs for A003355, there is no canonical definition to state claims against.
-/

/-! ## A003355.P10850310033937793014

`∪[A345634(n+1), A346346(n+1)]`
-/

namespace A003355.P10850310033937793014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003355.P10850310033937793014

/-! ## A003355.P17055199649510525976

`A253554(2*A346346(n+1))`
-/

namespace A003355.P17055199649510525976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (2 * A346346 (n + 1)).toNat

end

end A003355.P17055199649510525976

/-! ## A003355.P2957102407931985515

`A280497(2*A346346(n+1))`
-/

namespace A003355.P2957102407931985515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A346346 (n + 1)).toNat

end

end A003355.P2957102407931985515

/-! ## A003355.P1462171553751752222

`A280498(2*A346346(n+1))`
-/

namespace A003355.P1462171553751752222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A346346 (n + 1)).toNat

end

end A003355.P1462171553751752222

/-! ## A003355.P2253191954035658641

`A174571(4*A346346(n+1))`
-/

namespace A003355.P2253191954035658641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (4 * A346346 (n + 1)).toNat

end

end A003355.P2253191954035658641

/-! ## A003355.P17343550838646469474

`A255589(4*A346346(n+1))`
-/

namespace A003355.P17343550838646469474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (4 * A346346 (n + 1)).toNat

end

end A003355.P17343550838646469474

/-! ## A003355.P15102998964752444716

`A346346(n+1)+A322452(A031343(n+1))`
-/

namespace A003355.P15102998964752444716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346346 (n + 1) + A322452 (A031343 (n + 1)).toNat

end

end A003355.P15102998964752444716

/-! ## A003355.P14609548606569651342

`lcm(A020985(A011858(n)), A346346(n+1))`
-/

namespace A003355.P14609548606569651342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (A011858 n).toNat) (A346346 (n + 1))

end

end A003355.P14609548606569651342

/-! ## A003355.P408095968902616618

`A346346(n+1)+A036987(A031934(n+1))`
-/

namespace A003355.P408095968902616618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346346 (n + 1) + A036987 (A031934 (n + 1)).toNat

end

end A003355.P408095968902616618

/-! ## A003355.P5237091621695468385

`A001222(A000230(A331845(n)))*A346346(n+1)`
-/

namespace A003355.P5237091621695468385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000230 (A331845 n).toNat).toNat * A346346 (n + 1)

end

end A003355.P5237091621695468385

/-! ## A003355.P9574959546020305603

`A158464(A001359(n+1))*A346346(n+1)`
-/

namespace A003355.P9574959546020305603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158464 (A001359 (n + 1)).toNat * A346346 (n + 1)

end

end A003355.P9574959546020305603

/-! ## A003355.P15288902147645155897

`A014963(A062513(n+1))*A346346(n+1)`
-/

namespace A003355.P15288902147645155897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062513 (n + 1)).toNat * A346346 (n + 1)

end

end A003355.P15288902147645155897

/-! ## A003355.P2528696990494336687

`A346346(n+1)%A000478(n+6)`
-/

namespace A003355.P2528696990494336687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346346 (n + 1)) (A000478 (n + 6))

end

end A003355.P2528696990494336687

/-! ## A003355.P2478623877164831195

`A346346(n+1)+A297086(A014574(n+1))`
-/

namespace A003355.P2478623877164831195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346346 (n + 1) + A297086 (A014574 (n + 1)).toNat

end

end A003355.P2478623877164831195

/-! ## A003355.P2840482934206760307

`A346346(n+1)%A003539(n)`
-/

namespace A003355.P2840482934206760307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346346 (n + 1)) (A003539 n)

end

end A003355.P2840482934206760307

/-! ## A003355.P17664187785753319942

`A346346(A074466((n+1)²)²+n)`
-/

namespace A003355.P17664187785753319942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346346 (A074466 ((n + 1) ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A003355.P17664187785753319942

/-! ## A003355.P11389728579292510406

`A346346(n+1)%A002089(n)`
-/

namespace A003355.P11389728579292510406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346346 (n + 1)) (A002089 n)

end

end A003355.P11389728579292510406

/-!
# A003356: Numbers that are the sum of 11 positive 5th powers.

The programs for A003356, there is no canonical definition to state claims against.
-/

/-! ## A003356.P17118697119099484883

`A003357(A000005(2^n))-1`
-/

namespace A003356.P17118697119099484883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (A000005 (2 ^ n)).toNat - 1

end

end A003356.P17118697119099484883

/-! ## A003356.P1635872597953176878

`A003357(n+1)-A000265(2^n)`
-/

namespace A003356.P1635872597953176878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1) - A000265 (2 ^ n)

end

end A003356.P1635872597953176878

/-! ## A003356.P7999409773929117829

`A003357(n+1)-A173557(2^n)`
-/

namespace A003356.P7999409773929117829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1) - A173557 (2 ^ n)

end

end A003356.P7999409773929117829

/-! ## A003356.P12673721628769674042

`A003357(n+1)-A294934(2^n)`
-/

namespace A003356.P12673721628769674042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1) - A294934 (2 ^ n)

end

end A003356.P12673721628769674042

/-! ## A003356.P5709160592940132398

`A003357(n+1)-A348039(2^n)`
-/

namespace A003356.P5709160592940132398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1) - A348039 (2 ^ n)

end

end A003356.P5709160592940132398

/-!
# A003357: Numbers that are the sum of 12 positive 5th powers.

The programs for A003357, there is no canonical definition to state claims against.
-/

/-! ## A003357.P6655695826661201145

`eq[12, A188462(A233583(n+1))]`
-/

namespace A003357.P6655695826661201145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003357.P6655695826661201145

/-! ## A003357.P7024179410035822820

`A123294(n+1)-A080953(n)!`
-/

namespace A003357.P7024179410035822820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1) - (Nat.factorial (A080953 n).toNat : ℤ)

end

end A003357.P7024179410035822820

/-! ## A003357.P13526102932167346290

`A123295(n+1)-A127656(A000230(n))`
-/

namespace A003357.P13526102932167346290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1) - A127656 (A000230 n).toNat

end

end A003357.P13526102932167346290

/-! ## A003357.P3973130811134319641

`A123294(n+1)-A000688(A057468(n+1))`
-/

namespace A003357.P3973130811134319641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1) - A000688 (A057468 (n + 1)).toNat

end

end A003357.P3973130811134319641

/-! ## A003357.P18367363730346572918

`A123294(n+1)-A001222(A080185(n+1))`
-/

namespace A003357.P18367363730346572918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1) - A001222 (A080185 (n + 1)).toNat

end

end A003357.P18367363730346572918

/-!
# A003358: Numbers that are the sum of 2 nonzero 6th powers.

The programs for A003358, there is no canonical definition to state claims against.
-/

/-! ## A003358.P666139137373106089

`∩[A004853(n+1), A273498(n+1)]`
-/

namespace A003358.P666139137373106089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P666139137373106089

/-! ## A003358.P7890830864316235688

`∩[A004854(n+1), A273498(n+1)]`
-/

namespace A003358.P7890830864316235688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P7890830864316235688

/-! ## A003358.P6753262674467924785

`∩[A004853(n+1), A303373(n+1)]`
-/

namespace A003358.P6753262674467924785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P6753262674467924785

/-! ## A003358.P747042518224813043

`∩[A004854(n+1), A303373(n+1)]`
-/

namespace A003358.P747042518224813043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P747042518224813043

/-! ## A003358.P6671769842890412177

`∩[A004853(n+1), A229815(n+1)]`
-/

namespace A003358.P6671769842890412177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P6671769842890412177

/-! ## A003358.P15906537078957893581

`∩[A004854(n+1), A229815(n+1)]`
-/

namespace A003358.P15906537078957893581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P15906537078957893581

/-! ## A003358.P578073812238099369

`∩[A004855(n+1), A229815(n+1)]`
-/

namespace A003358.P578073812238099369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P578073812238099369

/-! ## A003358.P17436768970933217962

`∩[A004855(n+1), A273498(n+1)]`
-/

namespace A003358.P17436768970933217962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P17436768970933217962

/-! ## A003358.P17791845659892458892

`∩[A004855(n+1), A303373(n+1)]`
-/

namespace A003358.P17791845659892458892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P17791845659892458892

/-! ## A003358.P5286051597147181567

`∩[A004856(n+1), A303373(n+1)]`
-/

namespace A003358.P5286051597147181567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P5286051597147181567

/-! ## A003358.P1115319569877583381

`∩[A003325(n+1), A004853(n+1)]`
-/

namespace A003358.P1115319569877583381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P1115319569877583381

/-! ## A003358.P16284838075008138448

`∩[A003325(n+1), A004854(n+1)]`
-/

namespace A003358.P16284838075008138448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P16284838075008138448

/-! ## A003358.P974004332708836596

`∩[A003325(n+1), A004855(n+1)]`
-/

namespace A003358.P974004332708836596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P974004332708836596

/-! ## A003358.P7605601614912645179

`∩[A004853(n+1), A338667(n+1)]`
-/

namespace A003358.P7605601614912645179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P7605601614912645179

/-! ## A003358.P4595378906041690376

`∩[A004854(n+1), A338667(n+1)]`
-/

namespace A003358.P4595378906041690376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P4595378906041690376

/-! ## A003358.P12883703805821808985

`∩[A004855(n+1), A338667(n+1)]`
-/

namespace A003358.P12883703805821808985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003358.P12883703805821808985

/-!
# A003359: Numbers that are the sum of 3 nonzero 6th powers.

The programs for A003359, there is no canonical definition to state claims against.
-/

/-! ## A003359.P15443119715242966363

`∩[A004854(n+1), A047702(n+1)]`
-/

namespace A003359.P15443119715242966363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003359.P15443119715242966363

/-! ## A003359.P18281735806020391478

`∩[A004854(n+1), A017017(n)]`
-/

namespace A003359.P18281735806020391478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003359.P18281735806020391478

/-! ## A003359.P644625573267951849

`∩[A004855(n+1), A017017(n)]`
-/

namespace A003359.P644625573267951849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003359.P644625573267951849

/-! ## A003359.P1383885393204934384

`∩[A004856(n+1), A017017(n)]`
-/

namespace A003359.P1383885393204934384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003359.P1383885393204934384

/-! ## A003359.P1802689246240729711

`∩[A004857(n+1), A017017(n)]`
-/

namespace A003359.P1802689246240729711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003359.P1802689246240729711

/-!
# A003360: Numbers that are the sum of 4 positive 6th powers.

The programs for A003360, there is no canonical definition to state claims against.
-/

/-! ## A003360.P9966206526011125118

`∩[A004855(n+1), A017029(n)]`
-/

namespace A003360.P9966206526011125118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P9966206526011125118

/-! ## A003360.P356395249340997716

`∩[A004856(n+1), A017029(n)]`
-/

namespace A003360.P356395249340997716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P356395249340997716

/-! ## A003360.P1370412419438407472

`∩[A004857(n+1), A017029(n)]`
-/

namespace A003360.P1370412419438407472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P1370412419438407472

/-! ## A003360.P4865378544687138516

`∩[A004858(n+1), A017029(n)]`
-/

namespace A003360.P4865378544687138516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P4865378544687138516

/-! ## A003360.P11431676104675104826

`∩[A004859(n+1), A017029(n)]`
-/

namespace A003360.P11431676104675104826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P11431676104675104826

/-! ## A003360.P16700630835004193670

`∩[A004860(n+1), A017029(n)]`
-/

namespace A003360.P16700630835004193670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P16700630835004193670

/-! ## A003360.P9495945768154932751

`∩[A004861(n+1), A017029(n)]`
-/

namespace A003360.P9495945768154932751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P9495945768154932751

/-! ## A003360.P1506850080039315695

`∩[A004855(n+1), A017017(n)+1]`
-/

namespace A003360.P1506850080039315695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P1506850080039315695

/-! ## A003360.P17154031770689494442

`∩[A004856(n+1), A017017(n)+1]`
-/

namespace A003360.P17154031770689494442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P17154031770689494442

/-! ## A003360.P12447486335974486604

`∩[A004857(n+1), A017017(n)+1]`
-/

namespace A003360.P12447486335974486604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003360.P12447486335974486604

/-!
# A003361: Numbers that are the sum of 5 positive 6th powers.

The programs for A003361, there is no canonical definition to state claims against.
-/

/-! ## A003361.P13332624929824696921

`∩[A004856(n+1), A017041(n)]`
-/

namespace A003361.P13332624929824696921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P13332624929824696921

/-! ## A003361.P712104290232250729

`∩[A004857(n+1), A017041(n)]`
-/

namespace A003361.P712104290232250729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P712104290232250729

/-! ## A003361.P9977970112981894190

`∩[A004858(n+1), A017041(n)]`
-/

namespace A003361.P9977970112981894190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P9977970112981894190

/-! ## A003361.P6665398864301486959

`∩[A004859(n+1), A017041(n)]`
-/

namespace A003361.P6665398864301486959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P6665398864301486959

/-! ## A003361.P14471314817515650303

`∩[A004860(n+1), A017041(n)]`
-/

namespace A003361.P14471314817515650303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P14471314817515650303

/-! ## A003361.P1715165513209588638

`∩[A004861(n+1), A017041(n)]`
-/

namespace A003361.P1715165513209588638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P1715165513209588638

/-! ## A003361.P10270781176511524290

`∩[A004862(n+1), A017041(n)]`
-/

namespace A003361.P10270781176511524290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P10270781176511524290

/-! ## A003361.P17517534961001476531

`∩[A004856(n+1), A017029(n)+1]`
-/

namespace A003361.P17517534961001476531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P17517534961001476531

/-! ## A003361.P9881064850144178902

`∩[A004857(n+1), A017029(n)+1]`
-/

namespace A003361.P9881064850144178902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P9881064850144178902

/-! ## A003361.P2697421570428515221

`∩[A004858(n+1), A017029(n)+1]`
-/

namespace A003361.P2697421570428515221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P2697421570428515221

/-! ## A003361.P10530114138519730943

`∩[A004859(n+1), A017029(n)+1]`
-/

namespace A003361.P10530114138519730943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P10530114138519730943

/-! ## A003361.P13794507317790151379

`∩[A004860(n+1), A017029(n)+1]`
-/

namespace A003361.P13794507317790151379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P13794507317790151379

/-! ## A003361.P4995870440223596172

`∩[A004861(n+1), A017029(n)+1]`
-/

namespace A003361.P4995870440223596172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P4995870440223596172

/-! ## A003361.P10076291794540140367

`∩[A004856(n+1), A017017(n)+2]`
-/

namespace A003361.P10076291794540140367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P10076291794540140367

/-! ## A003361.P2853162029632677900

`∩[A004857(n+1), A017017(n)+2]`
-/

namespace A003361.P2853162029632677900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P2853162029632677900

/-! ## A003361.P672809261545556071

`∩[A004858(n+1), A017017(n)+2]`
-/

namespace A003361.P672809261545556071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P672809261545556071

/-! ## A003361.P1811775231339606885

`∩[A004859(n+1), A017017(n)+2]`
-/

namespace A003361.P1811775231339606885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P1811775231339606885

/-! ## A003361.P9000564971013922722

`∩[A004860(n+1), A017017(n)+2]`
-/

namespace A003361.P9000564971013922722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P9000564971013922722

/-! ## A003361.P12580789460843667511

`∩[A004857(n+1), A017053(n)-1]`
-/

namespace A003361.P12580789460843667511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P12580789460843667511

/-! ## A003361.P15322296736110389086

`∩[A004858(n+1), A017053(n)-1]`
-/

namespace A003361.P15322296736110389086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003361.P15322296736110389086

/-!
# A003362: Numbers that are the sum of 6 positive 6th powers.

The programs for A003362, there is no canonical definition to state claims against.
-/

/-! ## A003362.P10069735143852397709

`∩[A004857(n+1), A017053(n)]`
-/

namespace A003362.P10069735143852397709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P10069735143852397709

/-! ## A003362.P9575444610309739934

`∩[A004858(n+1), A017053(n)]`
-/

namespace A003362.P9575444610309739934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P9575444610309739934

/-! ## A003362.P11174371641747459016

`∩[A004859(n+1), A017053(n)]`
-/

namespace A003362.P11174371641747459016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P11174371641747459016

/-! ## A003362.P17141499437211987587

`∩[A004860(n+1), A017053(n)]`
-/

namespace A003362.P17141499437211987587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P17141499437211987587

/-! ## A003362.P12597002305976994001

`∩[A004861(n+1), A017053(n)]`
-/

namespace A003362.P12597002305976994001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P12597002305976994001

/-! ## A003362.P9665938041241184479

`∩[A004862(n+1), A017053(n)]`
-/

namespace A003362.P9665938041241184479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P9665938041241184479

/-! ## A003362.P17137248136557617209

`∩[A004863(n+1), A017053(n)]`
-/

namespace A003362.P17137248136557617209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P17137248136557617209

/-! ## A003362.P17441735755667581929

`∩[A004857(n+1), A017041(n)+1]`
-/

namespace A003362.P17441735755667581929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P17441735755667581929

/-! ## A003362.P8576869187328244109

`∩[A004858(n+1), A017041(n)+1]`
-/

namespace A003362.P8576869187328244109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P8576869187328244109

/-! ## A003362.P10024021475293315855

`∩[A004859(n+1), A017041(n)+1]`
-/

namespace A003362.P10024021475293315855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P10024021475293315855

/-! ## A003362.P6297740670896900640

`∩[A004860(n+1), A017041(n)+1]`
-/

namespace A003362.P6297740670896900640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P6297740670896900640

/-! ## A003362.P14518582984335868940

`∩[A004861(n+1), A017041(n)+1]`
-/

namespace A003362.P14518582984335868940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P14518582984335868940

/-! ## A003362.P10693138410229907379

`∩[A004862(n+1), A017041(n)+1]`
-/

namespace A003362.P10693138410229907379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P10693138410229907379

/-! ## A003362.P7087881002620526423

`∩[A004857(n+1), A017029(n)+2]`
-/

namespace A003362.P7087881002620526423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P7087881002620526423

/-! ## A003362.P322641480791388557

`∩[A004858(n+1), A017029(n)+2]`
-/

namespace A003362.P322641480791388557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P322641480791388557

/-! ## A003362.P9037375176846432864

`∩[A004859(n+1), A017029(n)+2]`
-/

namespace A003362.P9037375176846432864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P9037375176846432864

/-! ## A003362.P8227511699217023786

`∩[A004860(n+1), A017029(n)+2]`
-/

namespace A003362.P8227511699217023786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P8227511699217023786

/-! ## A003362.P5359515726800432212

`∩[A004861(n+1), A017029(n)+2]`
-/

namespace A003362.P5359515726800432212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003362.P5359515726800432212

/-! ## A003362.P9284999480614722347

`A336725(A052905(n+3))`
-/

namespace A003362.P9284999480614722347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A052905 (n + 3)).toNat

end

end A003362.P9284999480614722347

/-! ## A003362.P3075717710929748604

`A336725(A027379(n+4)-2)`
-/

namespace A003362.P3075717710929748604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A027379 (n + 4) - 2).toNat

end

end A003362.P3075717710929748604

/-!
# A003363: Numbers that are the sum of 7 positive 6th powers.

The programs for A003363, there is no canonical definition to state claims against.
-/

/-! ## A003363.P6113206611387245021

`∩[A004858(n+1), A017053(n)+1]`
-/

namespace A003363.P6113206611387245021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P6113206611387245021

/-! ## A003363.P14023842187917950642

`∩[A004859(n+1), A017053(n)+1]`
-/

namespace A003363.P14023842187917950642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P14023842187917950642

/-! ## A003363.P16544311520384947424

`∩[A004860(n+1), A017053(n)+1]`
-/

namespace A003363.P16544311520384947424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P16544311520384947424

/-! ## A003363.P143077121867939593

`∩[A004861(n+1), A017053(n)+1]`
-/

namespace A003363.P143077121867939593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P143077121867939593

/-! ## A003363.P16453270419905280984

`∩[A004862(n+1), A017053(n)+1]`
-/

namespace A003363.P16453270419905280984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P16453270419905280984

/-! ## A003363.P10641348007692754666

`∩[A004863(n+1), A017053(n)+1]`
-/

namespace A003363.P10641348007692754666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P10641348007692754666

/-! ## A003363.P15892792309814388206

`∩[A004858(n+1), A017041(n)+2]`
-/

namespace A003363.P15892792309814388206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P15892792309814388206

/-! ## A003363.P4550193971818109281

`∩[A004859(n+1), A017041(n)+2]`
-/

namespace A003363.P4550193971818109281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P4550193971818109281

/-! ## A003363.P11077201938645842090

`∩[A004860(n+1), A017041(n)+2]`
-/

namespace A003363.P11077201938645842090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P11077201938645842090

/-! ## A003363.P1152412392382466634

`∩[A004861(n+1), A017041(n)+2]`
-/

namespace A003363.P1152412392382466634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P1152412392382466634

/-! ## A003363.P11385663117955060088

`∩[A004862(n+1), A017041(n)+2]`
-/

namespace A003363.P11385663117955060088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P11385663117955060088

/-! ## A003363.P16870228014560658321

`∩[A017017(2*n)-A017017(n+1), A004858(n+2)]`
-/

namespace A003363.P16870228014560658321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n) - A017017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P16870228014560658321

/-! ## A003363.P3481125128831516403

`∩[A017017(2*n)-A017017(n+1), A004859(n+2)]`
-/

namespace A003363.P3481125128831516403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n) - A017017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P3481125128831516403

/-! ## A003363.P3305300034052860467

`∩[A017017(2*n)-A017017(n+1), A004860(n+2)]`
-/

namespace A003363.P3305300034052860467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n) - A017017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P3305300034052860467

/-! ## A003363.P2524880292132695874

`∩[A017029(2*n)-A017029(n+1), A004858(n+2)]`
-/

namespace A003363.P2524880292132695874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (2 * n) - A017029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P2524880292132695874

/-! ## A003363.P13424564823977623898

`∩[A017029(2*n)-A017029(n+1), A004859(n+2)]`
-/

namespace A003363.P13424564823977623898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (2 * n) - A017029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P13424564823977623898

/-! ## A003363.P15866469113432404317

`∩[A017029(2*n)-A017029(n+1), A004860(n+2)]`
-/

namespace A003363.P15866469113432404317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (2 * n) - A017029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P15866469113432404317

/-! ## A003363.P879573217664474453

`∩[A017029(2*n)-A017029(n+1), A004861(n+2)]`
-/

namespace A003363.P879573217664474453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (2 * n) - A017029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003363.P879573217664474453

/-!
# A003364: Numbers that are the sum of 8 positive 6th powers.

The programs for A003364, there is no canonical definition to state claims against.
-/

/-! ## A003364.P11467143563928759846

`∩[A023444(A003366(n+1)), A004861(n+1)]`
-/

namespace A003364.P11467143563928759846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A003366 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003364.P11467143563928759846

/-! ## A003364.P17616438747282707735

`∩[A023444(A003366(n+1)), A004863(n+1)]`
-/

namespace A003364.P17616438747282707735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A003366 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003364.P17616438747282707735

/-!
# A003365: Numbers that are the sum of 9 positive 6th powers.

The programs for A003365, there is no canonical definition to state claims against.
-/

/-! ## A003365.P11438165495485812186

`∩[A023443(A003366(n+1)), A004861(n+1)]`
-/

namespace A003365.P11438165495485812186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003366 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003365.P11438165495485812186

/-! ## A003365.P2758324410574088690

`∩[A023443(A003366(n+1)), A004863(n+1)]`
-/

namespace A003365.P2758324410574088690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003366 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003365.P2758324410574088690

/-! ## A003365.P15746679178661327097

`A003366(A020753(n+1))-1`
-/

namespace A003365.P15746679178661327097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003366 (A020753 (n + 1)).toNat - 1

end

end A003365.P15746679178661327097

/-! ## A003365.P3055198006074284138

`A158210(A105439(n+1))+A003366(A020753(n+1))`
-/

namespace A003365.P3055198006074284138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A105439 (n + 1)).toNat + A003366 (A020753 (n + 1)).toNat

end

end A003365.P3055198006074284138

/-!
# A003367: Numbers that are the sum of 11 positive 6th powers.

The programs for A003367, there is no canonical definition to state claims against.
-/

/-! ## A003367.P6248761047633501682

`record[A003368(A309914(n))-1]`
-/

namespace A003367.P6248761047633501682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003368 (A309914 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003367.P6248761047633501682

/-! ## A003367.P17517241516935161449

`A003368(n+1)-A096591(∑[n])`
-/

namespace A003367.P17517241516935161449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003368 (n + 1) - A096591 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003367.P17517241516935161449

/-! ## A003367.P18338349399865225726

`A003368(n+1)-A000035(∑[2^n])`
-/

namespace A003367.P18338349399865225726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003368 (n + 1) - A000035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003367.P18338349399865225726

/-! ## A003367.P14756882504108183915

`A003368(n+1)-A040375(∑[2^n])`
-/

namespace A003367.P14756882504108183915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003368 (n + 1) - A040375 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003367.P14756882504108183915

/-! ## A003367.P8665711900492458680

`A033880(A056450(n))+A003368(n+1)`
-/

namespace A003367.P8665711900492458680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A056450 n).toNat + A003368 (n + 1)

end

end A003367.P8665711900492458680

/-!
# A003368: Numbers that are the sum of 12 positive 6th powers.

The programs for A003368, there is no canonical definition to state claims against.
-/

/-! ## A003368.P1685470275047413369

`A003367(A000120(∑[2^n]))+1`
-/

namespace A003368.P1685470275047413369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003367 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A003368.P1685470275047413369

/-! ## A003368.P66292311035424280

`A033999(2^(n+1))+A003367(n+1)`
-/

namespace A003368.P66292311035424280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 ^ (n + 1)) + A003367 (n + 1)

end

end A003368.P66292311035424280

/-! ## A003368.P16331121412953113830

`A165574(2^(n+1))+A003367(n+1)`
-/

namespace A003368.P16331121412953113830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165574 (2 ^ (n + 1)) + A003367 (n + 1)

end

end A003368.P16331121412953113830

/-! ## A003368.P3763951355803519286

`A350112(C(n+1, 2))+A003367(n+1)`
-/

namespace A003368.P3763951355803519286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350112 (Nat.choose (n + 1) 2) + A003367 (n + 1)

end

end A003368.P3763951355803519286

/-! ## A003368.P16386961950438697312

`A350112((n²+n)/2)+A003367(n+1)`
-/

namespace A003368.P16386961950438697312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350112 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A003367 (n + 1)

end

end A003368.P16386961950438697312

/-!
# A003369: Numbers that are the sum of 2 positive 7th powers.

The programs for A003369, there is no canonical definition to state claims against.
-/

/-! ## A003369.P5022318238207241808

`A123253(10*A084855(n+1))%A174426(n)²`
-/

namespace A003369.P5022318238207241808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123253 (10 * A084855 (n + 1)).toNat) (A174426 n ^ 2)

end

end A003369.P5022318238207241808

/-! ## A003369.P4517820198833788251

`A123253(A320659(3*n+2)+A084855(n+1))`
-/

namespace A003369.P4517820198833788251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123253 (A320659 (3 * n + 2) + A084855 (n + 1)).toNat

end

end A003369.P4517820198833788251

/-!
# A003370: Numbers that are the sum of 3 positive 7th powers.

The programs for A003370, there is no canonical definition to state claims against.
-/

/-! ## A003370.P12279429789516321454

`A004865(lt[10, Δ[A004865(n+1)]]+1)`
-/

namespace A003370.P12279429789516321454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A003370.P12279429789516321454

/-!
# A003372: Numbers that are the sum of 5 positive 7th powers.

The programs for A003372, there is no canonical definition to state claims against.
-/

/-! ## A003372.P9757610028832518045

`record[A003373(n+1)-A007318(A101109(n))]`
-/

namespace A003372.P9757610028832518045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003373 (n + 1) - A007318 (A101109 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003372.P9757610028832518045

/-!
# A003373: Numbers that are the sum of 6 positive 7th powers.

The programs for A003373, there is no canonical definition to state claims against.
-/

/-! ## A003373.P4293230783489030672

`A153881(A114921(3*(n+1)))+A003374(A039208(n+2))`
-/

namespace A003373.P4293230783489030672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A114921 (3 * (n + 1))).toNat + A003374 (A039208 (n + 2)).toNat

end

end A003373.P4293230783489030672

/-!
# A003374: Numbers that are the sum of 7 positive 7th powers.

The programs for A003374, there is no canonical definition to state claims against.
-/

/-! ## A003374.P18332059674027280103

`A336725(A055999(n+4))`
-/

namespace A003374.P18332059674027280103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A055999 (n + 4)).toNat

end

end A003374.P18332059674027280103

/-! ## A003374.P15287949661619227095

`A336725(A027379(n+5)-3)`
-/

namespace A003374.P15287949661619227095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A027379 (n + 5) - 3).toNat

end

end A003374.P15287949661619227095

/-! ## A003374.P11582931821241272600

`A336725(A000096(n+6)-5)`
-/

namespace A003374.P11582931821241272600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000096 (n + 6) - 5).toNat

end

end A003374.P11582931821241272600

/-! ## A003374.P13065729975056008462

`A336725(A000124(n+7)-7)`
-/

namespace A003374.P13065729975056008462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000124 (n + 7) - 7).toNat

end

end A003374.P13065729975056008462

/-! ## A003374.P12307091309587851548

`A336725(A000217(n+6)+n+1)`
-/

namespace A003374.P12307091309587851548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A003374.P12307091309587851548

/-! ## A003374.P15602392484454503554

`A336725(A167614(n+4)+A005843(n+2))`
-/

namespace A003374.P15602392484454503554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A003374.P15602392484454503554

/-! ## A003374.P3526749902622051820

`A336725(eq[4, A219347(n)])`
-/

namespace A003374.P3526749902622051820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003374.P3526749902622051820

/-!
# A003375: Numbers that are the sum of 8 positive 7th powers.

The programs for A003375, there is no canonical definition to state claims against.
-/

/-! ## A003375.P10860590298597975995

`∩[A003377(n+1)-2, A004871(n+1)]`
-/

namespace A003375.P10860590298597975995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003375.P10860590298597975995

/-! ## A003375.P10552862629241312463

`∩[A003377(n+1)-2, A004872(n+1)]`
-/

namespace A003375.P10552862629241312463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003375.P10552862629241312463

/-! ## A003375.P15566439523512207668

`∩[A003377(n+1)-2, A004873(n+1)]`
-/

namespace A003375.P15566439523512207668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003375.P15566439523512207668

/-!
# A003376: Numbers that are the sum of 9 positive 7th powers.

The programs for A003376, there is no canonical definition to state claims against.
-/

/-! ## A003376.P1691960135771255738

`∩[A003377(n+1)-1, A004871(n+1)]`
-/

namespace A003376.P1691960135771255738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003376.P1691960135771255738

/-! ## A003376.P4506672784013353379

`∩[A003377(n+1)-1, A004872(n+1)]`
-/

namespace A003376.P4506672784013353379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003376.P4506672784013353379

/-! ## A003376.P3033984991059815941

`∩[A003378(n+1)-2, A004872(n+1)]`
-/

namespace A003376.P3033984991059815941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003378 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003376.P3033984991059815941

/-! ## A003376.P8849729940254559739

`∩[A003377(n+1)-1, A004873(n+1)]`
-/

namespace A003376.P8849729940254559739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003376.P8849729940254559739

/-! ## A003376.P7217893413085199309

`A003377(A020753(n+1))-1`
-/

namespace A003376.P7217893413085199309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (A020753 (n + 1)).toNat - 1

end

end A003376.P7217893413085199309

/-!
# A003377: Numbers that are the sum of 10 positive 7th powers.

The programs for A003377, there is no canonical definition to state claims against.
-/

/-! ## A003377.P13470268086694173604

`∩[A003378(n+1)-1, A004872(n+1)]`
-/

namespace A003377.P13470268086694173604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003378 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003377.P13470268086694173604

/-!
# A003380: Numbers that are the sum of 2 nonzero 8th powers.

The programs for A003380, there is no canonical definition to state claims against.
-/

/-! ## A003380.P3410841971161402683

`∩[A003336(n+1), A004875(n+1)]`
-/

namespace A003380.P3410841971161402683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P3410841971161402683

/-! ## A003380.P2404124735225179136

`∩[A003336(n+1), A004876(n+1)]`
-/

namespace A003380.P2404124735225179136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P2404124735225179136

/-! ## A003380.P8847480161801503692

`∩[A003336(n+1), A004877(n+1)]`
-/

namespace A003380.P8847480161801503692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P8847480161801503692

/-! ## A003380.P4797907452866710521

`∩[A003336(n+1), A004878(n+1)]`
-/

namespace A003380.P4797907452866710521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P4797907452866710521

/-! ## A003380.P8332112474856739523

`∩[A004875(n+1), A344187(n+1)]`
-/

namespace A003380.P8332112474856739523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P8332112474856739523

/-! ## A003380.P114035167005759302

`∩[A004876(n+1), A344187(n+1)]`
-/

namespace A003380.P114035167005759302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P114035167005759302

/-! ## A003380.P9908753529184298786

`∩[A004877(n+1), A344187(n+1)]`
-/

namespace A003380.P9908753529184298786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P9908753529184298786

/-! ## A003380.P14838693089048568023

`∩[A004878(n+1), A344187(n+1)]`
-/

namespace A003380.P14838693089048568023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P14838693089048568023

/-! ## A003380.P9761810792722046775

`∩[A003336(n+1), A004879(n+1)]`
-/

namespace A003380.P9761810792722046775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P9761810792722046775

/-! ## A003380.P4864770824944648394

`∩[A004879(n+1), A344187(n+1)]`
-/

namespace A003380.P4864770824944648394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003380.P4864770824944648394

/-!
# A003381: Numbers that are the sum of 3 nonzero 8th powers.

The programs for A003381, there is no canonical definition to state claims against.
-/

/-! ## A003381.P9323658892567967853

`∩[A003337(n+1), A004876(n+1)]`
-/

namespace A003381.P9323658892567967853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P9323658892567967853

/-! ## A003381.P78212955877736534

`∩[A003337(n+1), A004877(n+1)]`
-/

namespace A003381.P78212955877736534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P78212955877736534

/-! ## A003381.P6107436903037444407

`∩[A003337(n+1), A004878(n+1)]`
-/

namespace A003381.P6107436903037444407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P6107436903037444407

/-! ## A003381.P3843927701593495356

`∩[A003337(n+1), A004879(n+1)]`
-/

namespace A003381.P3843927701593495356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P3843927701593495356

/-! ## A003381.P14519006733438907524

`∩[A004876(n+1), A047714(n+1)]`
-/

namespace A003381.P14519006733438907524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P14519006733438907524

/-! ## A003381.P6152304791934666760

`∩[A004877(n+1), A047714(n+1)]`
-/

namespace A003381.P6152304791934666760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P6152304791934666760

/-! ## A003381.P17511706275790961536

`∩[A004878(n+1), A047714(n+1)]`
-/

namespace A003381.P17511706275790961536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P17511706275790961536

/-! ## A003381.P5726139584286572360

`∩[A004879(n+1), A047714(n+1)]`
-/

namespace A003381.P5726139584286572360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003381.P5726139584286572360

/-!
# A003382: Numbers that are the sum of 4 nonzero 8th powers.

The programs for A003382, there is no canonical definition to state claims against.
-/

/-! ## A003382.P2641316587404904780

`∩[A003384(n+1)-2, A004883(n+1)]`
-/

namespace A003382.P2641316587404904780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003384 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003382.P2641316587404904780

/-! ## A003382.P11517997060013992163

`∩[A004877(n+1), A047715(n+1)]`
-/

namespace A003382.P11517997060013992163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003382.P11517997060013992163

/-! ## A003382.P10550516897206726835

`∩[A004878(n+1), A047715(n+1)]`
-/

namespace A003382.P10550516897206726835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003382.P10550516897206726835

/-!
# A003383: Numbers that are the sum of 5 nonzero 8th powers.

The programs for A003383, there is no canonical definition to state claims against.
-/

/-! ## A003383.P12707506556663609514

`∩[A003384(n+1)-1, A004883(n+1)]`
-/

namespace A003383.P12707506556663609514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003384 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003383.P12707506556663609514

/-! ## A003383.P15088234745786084023

`∩[5*(n+1), A004879(n+1)]`
-/

namespace A003383.P15088234745786084023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003383.P15088234745786084023

/-! ## A003383.P4712135346589654485

`∩[A004878(n+1), A047716(n+1)]`
-/

namespace A003383.P4712135346589654485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003383.P4712135346589654485

/-! ## A003383.P11189312166492392422

`filter[A004878(n+2), A079998(#)]`
-/

namespace A003383.P11189312166492392422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A003383.P11189312166492392422

/-! ## A003383.P5790892797001938168

`filter[A004879(n+2), A079998(#)]`
-/

namespace A003383.P5790892797001938168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A003383.P5790892797001938168

/-!
# A003385: Numbers that are the sum of 7 nonzero 8th powers.

The programs for A003385, there is no canonical definition to state claims against.
-/

/-! ## A003385.P16913712011612318329

`∩[A003387(n+1)-2, A004883(n+1)]`
-/

namespace A003385.P16913712011612318329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003387 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003385.P16913712011612318329

/-! ## A003385.P133224587990145832

`filter[A004880(n+1), A011702(#)]`
-/

namespace A003385.P133224587990145832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011702 (f1 j).toNat = 1) n)

end

end A003385.P133224587990145832

/-!
# A003386: Numbers that are the sum of 8 nonzero 8th powers.

The programs for A003386, there is no canonical definition to state claims against.
-/

/-! ## A003386.P7759405603850817206

`∩[A003387(n+1)-1, A004883(n+1)]`
-/

namespace A003386.P7759405603850817206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003387 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003386.P7759405603850817206

/-! ## A003386.P17415952610366762611

`A336725(A155212(n+4)+1)`
-/

namespace A003386.P17415952610366762611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A155212 (n + 4) + 1).toNat

end

end A003386.P17415952610366762611

/-! ## A003386.P14856568084783791048

`A336725(A055999(n+5)-1)`
-/

namespace A003386.P14856568084783791048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A055999 (n + 5) - 1).toNat

end

end A003386.P14856568084783791048

/-! ## A003386.P17646477914970638628

`A336725(A027379(n+6)-4)`
-/

namespace A003386.P17646477914970638628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A027379 (n + 6) - 4).toNat

end

end A003386.P17646477914970638628

/-! ## A003386.P12677872706916269874

`A336725(A034856(n+7)-5)`
-/

namespace A003386.P12677872706916269874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A034856 (n + 7) - 5).toNat

end

end A003386.P12677872706916269874

/-! ## A003386.P10090779952679244744

`A336725(A000124(n+8)-8)`
-/

namespace A003386.P10090779952679244744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000124 (n + 8) - 8).toNat

end

end A003386.P10090779952679244744

/-! ## A003386.P2851716517090309981

`A336725(A000217(n+10)-A005843(n+13))`
-/

namespace A003386.P2851716517090309981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000217 (n + 10) - A005843 (n + 13)).toNat

end

end A003386.P2851716517090309981

/-! ## A003386.P16061583825744042078

`A336725(eq[7, A025581(n)]+1)`
-/

namespace A003386.P16061583825744042078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A003386.P16061583825744042078

/-!
# A003387: Numbers that are the sum of 9 nonzero 8th powers.

The programs for A003387, there is no canonical definition to state claims against.
-/

/-! ## A003387.P1959342388661298385

`∩[A003389(n+1)-2, A004883(n+1)]`
-/

namespace A003387.P1959342388661298385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003389 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003387.P1959342388661298385

/-! ## A003387.P15198616271333769937

`A003388(A020753(n+1))-1`
-/

namespace A003387.P15198616271333769937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003388 (A020753 (n + 1)).toNat - 1

end

end A003387.P15198616271333769937

/-!
# A003388: Sum of 10 nonzero 8th powers.

The programs for A003388, there is no canonical definition to state claims against.
-/

/-! ## A003388.P13685412379616277690

`∩[A003389(n+1)-1, A004883(n+1)]`
-/

namespace A003388.P13685412379616277690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003389 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003388.P13685412379616277690

/-!
# A003391: Numbers that are the sum of 2 positive 9th powers.

The programs for A003391, there is no canonical definition to state claims against.
-/

/-! ## A003391.P12649229250800987314

`∩[A003393(n+1)-2, A004887(n+1)]`
-/

namespace A003391.P12649229250800987314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003393 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003391.P12649229250800987314

/-!
# A003392: Numbers that are the sum of 3 positive 9th powers.

The programs for A003392, there is no canonical definition to state claims against.
-/

/-! ## A003392.P4429509134505681889

`∩[A003393(n+1)-1, A004887(n+1)]`
-/

namespace A003392.P4429509134505681889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003393 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003392.P4429509134505681889

/-! ## A003392.P13347575016002508140

`filter[A004887(n+2), A373830(#)]`
-/

namespace A003392.P13347575016002508140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A003392.P13347575016002508140

/-!
# A003393: Numbers that are the sum of 4 positive 9th powers.

The programs for A003393, there is no canonical definition to state claims against.
-/

/-! ## A003393.P12914431378157519552

`∩[A003395(n+1)-2, A004890(n+1)]`
-/

namespace A003393.P12914431378157519552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003393.P12914431378157519552

/-! ## A003393.P17631867076759537708

`∩[A003395(n+1)-2, A004891(n+1)]`
-/

namespace A003393.P17631867076759537708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003393.P17631867076759537708

/-! ## A003393.P14017575082513113256

`∩[A003395(n+1)-2, A004895(n+1)]`
-/

namespace A003393.P14017575082513113256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003393.P14017575082513113256

/-! ## A003393.P6776831792200440574

`A004889(eq[1, Δ[A123577(n)]])`
-/

namespace A003393.P6776831792200440574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003393.P6776831792200440574

/-!
# A003394: Numbers that are the sum of 5 positive 9th powers.

The programs for A003394, there is no canonical definition to state claims against.
-/

/-! ## A003394.P1974469299812476340

`A004889(∑[runs[A004889(n+1)-n]])`
-/

namespace A003394.P1974469299812476340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003394.P1974469299812476340

/-! ## A003394.P2139391001950169095

`∩[A003395(n+1)-1, A004890(n+1)]`
-/

namespace A003394.P2139391001950169095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003394.P2139391001950169095

/-! ## A003394.P5850098461382612309

`∩[A003396(n+1)-2, A004890(n+1)]`
-/

namespace A003394.P5850098461382612309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003396 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003394.P5850098461382612309

/-! ## A003394.P1393288007068285626

`∩[A003395(n+1)-1, A004891(n+1)]`
-/

namespace A003394.P1393288007068285626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003394.P1393288007068285626

/-! ## A003394.P1451631276505732414

`∩[A003395(n+1)-1, A004895(n+1)]`
-/

namespace A003394.P1451631276505732414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003394.P1451631276505732414

/-!
# A003395: Numbers that are the sum of 6 positive 9th powers.

The programs for A003395, there is no canonical definition to state claims against.
-/

/-! ## A003395.P6184592899612455122

`∩[A003396(n+1)-1, A004890(n+1)]`
-/

namespace A003395.P6184592899612455122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003396 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003395.P6184592899612455122

/-! ## A003395.P7986473001772675392

`record[A003396(A124010(3*n+5))-2]+1`
-/

namespace A003395.P7986473001772675392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003396 (A124010 (3 * n + 5)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A003395.P7986473001772675392

/-!
# A003397: Numbers that are the sum of 8 positive 9th powers.

The programs for A003397, there is no canonical definition to state claims against.
-/

/-! ## A003397.P3001973056386665219

`∩[A003399(n+1)-2, A004893(n+1)]`
-/

namespace A003397.P3001973056386665219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003399 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003397.P3001973056386665219

/-!
# A003398: Numbers that are the sum of 9 positive 9th powers.

The programs for A003398, there is no canonical definition to state claims against.
-/

/-! ## A003398.P15977661086090978247

`∩[A003399(n+1)-1, A004893(n+1)]`
-/

namespace A003398.P15977661086090978247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003399 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003398.P15977661086090978247

/-! ## A003398.P15630106302188554798

`A336725(A155212(n+5))`
-/

namespace A003398.P15630106302188554798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A155212 (n + 5)).toNat

end

end A003398.P15630106302188554798

/-! ## A003398.P12701425101416213915

`A336725(A000124(n+9)-9)`
-/

namespace A003398.P12701425101416213915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000124 (n + 9) - 9).toNat

end

end A003398.P12701425101416213915

/-! ## A003398.P13177758809300306315

`A336725(A056121(n+4)-(2*n+1))`
-/

namespace A003398.P13177758809300306315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A056121 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A003398.P13177758809300306315

/-! ## A003398.P4765166981218334739

`A336725(A167614(n+6)+A005843(n+3))`
-/

namespace A003398.P4765166981218334739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A167614 (n + 6) + A005843 (n + 3)).toNat

end

end A003398.P4765166981218334739

/-! ## A003398.P6274068912475646975

`A336725(eq[8, A193592(n)])`
-/

namespace A003398.P6274068912475646975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003398.P6274068912475646975

