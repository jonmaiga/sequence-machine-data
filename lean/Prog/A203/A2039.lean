import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A203900: a(n)=f(a(n-1)+1,a(n-2),a(n-3)+1), where f(x,y,z)=yz+zx+xy and (a(1),a(2),a(3))=(0,0,1).

The programs for A203900, there is no canonical definition to state claims against.
-/

/-! ## A203900.P1781006834616283880

`A045917(∏[Δ[A273905(n+2)]])`
-/

namespace A203900.P1781006834616283880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203900.P1781006834616283880

/-! ## A203900.P9806733825126594344

`∑[A233764(A000045(floor((n/2)²)))]`
-/

namespace A203900.P9806733825126594344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A000045 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203900.P9806733825126594344

/-!
# A203901: a(n)=f(a(n-1)+1,a(n-2)+1,a(n-3)), where f(x,y,z)=yz+zx+xy and (a(1),a(2),a(3))=(0,0,1).

The programs for A203901, there is no canonical definition to state claims against.
-/

/-! ## A203901.P8075245715343904562

`A361582(A121430(n)+2)`
-/

namespace A203901.P8075245715343904562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361582 (A121430 n + 2).toNat

end

end A203901.P8075245715343904562

/-! ## A203901.P2045242093832792868

`A008624(∑[A023360(∑[n])])`
-/

namespace A203901.P2045242093832792868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203901.P2045242093832792868

/-! ## A203901.P3746203548192026669

`A072931(∑[A012840(n+1)]+n)`
-/

namespace A203901.P3746203548192026669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A203901.P3746203548192026669

/-!
# A203902: a(n)=f(a(n-1)+1,a(n-2)+1,a(n-3)+1), where f(x,y,z)=yz+zx+xy and (a(1),a(2),a(3))=(0,0,1).

The programs for A203902, there is no canonical definition to state claims against.
-/

/-! ## A203902.P14766466588417693701

`A162690(a(n-2)+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A203902.P14766466588417693701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A162690 (a (n - 2) + 1).toNat

end

end A203902.P14766466588417693701

/-! ## A203902.P2787346129256112896

`floor(A095617(n+3)^(atan(n)-1))`
-/

namespace A203902.P2787346129256112896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095617 (n + 3) : ℝ) ^ (Real.arctan (n : ℝ) - 1)⌋

end

end A203902.P2787346129256112896

/-!
# A203903: a(n)=f(a(1),a(2),...,a(n-1)), where f=(n-2)-nd elementary symmetric function and a(1)=1, a(2)=1, a(3)=1.

The programs for A203903, there is no canonical definition to state claims against.
-/

/-! ## A203903.P12659876243794964094

`floor(sqrt(∑{d}[A264610(n), #]))`
-/

namespace A203903.P12659876243794964094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A203903.P12659876243794964094

/-! ## A203903.P2931651048914655533

`A237980(2^n+2-n)`
-/

namespace A203903.P2931651048914655533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237980 ((2 ^ n : ℤ) + (2 - (n : ℤ))).toNat

end

end A203903.P2931651048914655533

/-!
# A203904: Triangular array T; for n>0, row n shows the coefficients of a reduced polynomial having zeros -k/(n+1) for k=1,2,...,n.

The programs for A203904, there is no canonical definition to state claims against.
-/

/-! ## A203904.P2034449542809546991

`A056856(n+1)/A051190(A002024(n+1))`
-/

namespace A203904.P2034449542809546991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056856 (n + 1) : ℚ) / (A051190 (A002024 (n + 1)).toNat : ℚ)

end

end A203904.P2034449542809546991

/-! ## A203904.P2294578514131097242

`A076112(n+1)/A051190(A002024(n+1))*A130534(n)`
-/

namespace A203904.P2294578514131097242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076112 (n + 1) : ℚ) / (A051190 (A002024 (n + 1)).toNat : ℚ) * (A130534 n : ℚ)

end

end A203904.P2294578514131097242

/-! ## A203904.P10406150087908555253

`A056856(n+1)/A293810(A049614(n))`
-/

namespace A203904.P10406150087908555253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056856 (n + 1) : ℚ) / (A293810 (A049614 n).toNat : ℚ)

end

end A203904.P10406150087908555253

/-! ## A203904.P991528611170733166

`A056856(n+1)/A038548(A083313(n))`
-/

namespace A203904.P991528611170733166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056856 (n + 1) : ℚ) / (A038548 (A083313 n).toNat : ℚ)

end

end A203904.P991528611170733166

/-! ## A203904.P1950840053919030798

`A056856(n+1)/A000120(A076359(2*(n+1)))`
-/

namespace A203904.P1950840053919030798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056856 (n + 1) : ℚ) / (A000120 (A076359 (2 * (n + 1))).toNat : ℚ)

end

end A203904.P1950840053919030798

/-!
# A203905: Symmetric matrix based on (1,0,1,0,1,0,1,0,...), by antidiagonals.

The programs for A203905, the canonical program `A203905.P7367023948062970657` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203905 has offset 1).

The definition of A203905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203905.P7367023948062970657

`∑[A197870(n)]*A008619(A004197(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A203905

/-- `∑[A197870(n)]*A008619(A004197(n))` -/
def P7367023948062970657.Spec : Prop :=
  ∀ n, P7367023948062970657.a n = A203905 (n + 1)

theorem P7367023948062970657.correct : P7367023948062970657.Spec := by
  intro n
  simp only [A203905, Nat.add_sub_cancel]

end A203905

/-! ## A203905.P6136098903483980644

`A008619(A004197(n))*A057211(n+1)`
-/

namespace A203905.P6136098903483980644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004197 n).toNat * A057211 (n + 1)

end

end A203905.P6136098903483980644

namespace A203905

/-- `A008619(A004197(n))*A057211(n+1)` -/
def P6136098903483980644.Spec : Prop :=
  ∀ n, P6136098903483980644.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P14160724502412851800

`A057211(n+1)*A065033(A003983(n+1))`
-/

namespace A203905.P14160724502412851800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1) * A065033 (A003983 (n + 1)).toNat

end

end A203905.P14160724502412851800

namespace A203905

/-- `A057211(n+1)*A065033(A003983(n+1))` -/
def P14160724502412851800.Spec : Prop :=
  ∀ n, P14160724502412851800.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P374499912822658922

`A008619(A004197(n))*A059841(A049581(n))`
-/

namespace A203905.P374499912822658922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004197 n).toNat * A059841 (A049581 n).toNat

end

end A203905.P374499912822658922

namespace A203905

/-- `A008619(A004197(n))*A059841(A049581(n))` -/
def P374499912822658922.Spec : Prop :=
  ∀ n, P374499912822658922.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P10269584711713261494

`A203951(A185868(n+1))`
-/

namespace A203905.P10269584711713261494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203951 (A185868 (n + 1)).toNat

end

end A203905.P10269584711713261494

namespace A203905

/-- `A203951(A185868(n+1))` -/
def P10269584711713261494.Spec : Prop :=
  ∀ n, P10269584711713261494.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P15018151026429764693

`A203951(A185871(n+1))`
-/

namespace A203905.P15018151026429764693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203951 (A185871 (n + 1)).toNat

end

end A203905.P15018151026429764693

namespace A203905

/-- `A203951(A185871(n+1))` -/
def P15018151026429764693.Spec : Prop :=
  ∀ n, P15018151026429764693.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P13154374463798593570

`A008619(A001222(A152714(n)))*A057211(n+1)`
-/

namespace A203905.P13154374463798593570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001222 (A152714 n).toNat).toNat * A057211 (n + 1)

end

end A203905.P13154374463798593570

namespace A203905

/-- `A008619(A001222(A152714(n)))*A057211(n+1)` -/
def P13154374463798593570.Spec : Prop :=
  ∀ n, P13154374463798593570.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P14500015124022495966

`A332998(2*A131816(n)+1)`
-/

namespace A203905.P14500015124022495966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (2 * A131816 n + 1).toNat

end

end A203905.P14500015124022495966

namespace A203905

/-- `A332998(2*A131816(n)+1)` -/
def P14500015124022495966.Spec : Prop :=
  ∀ n, P14500015124022495966.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P9157923319300290026

`A332998(A250742(n+1)/2)`
-/

namespace A203905.P9157923319300290026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (SequenceMachineLib.roundAway ((A250742 (n + 1) : ℚ) / 2)).toNat

end

end A203905.P9157923319300290026

namespace A203905

/-- `A332998(A250742(n+1)/2)` -/
def P9157923319300290026.Spec : Prop :=
  ∀ n, P9157923319300290026.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P2368473681597392233

`A332998(2*A271709(n)-1)`
-/

namespace A203905.P2368473681597392233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (2 * A271709 n - 1).toNat

end

end A203905.P2368473681597392233

namespace A203905

/-- `A332998(2*A271709(n)-1)` -/
def P2368473681597392233.Spec : Prop :=
  ∀ n, P2368473681597392233.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P8281195060710242289

`A332998(A271709(n)+A131816(n))`
-/

namespace A203905.P8281195060710242289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A271709 n + A131816 n).toNat

end

end A203905.P8281195060710242289

namespace A203905

/-- `A332998(A271709(n)+A131816(n))` -/
def P8281195060710242289.Spec : Prop :=
  ∀ n, P8281195060710242289.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P11489835954612933535

`A332998(A131816(n)+A131816(n)+1)`
-/

namespace A203905.P11489835954612933535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A131816 n + (A131816 n + 1)).toNat

end

end A203905.P11489835954612933535

namespace A203905

/-- `A332998(A131816(n)+A131816(n)+1)` -/
def P11489835954612933535.Spec : Prop :=
  ∀ n, P11489835954612933535.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P16520844970383276639

`A332998(A271709(n)+A271709(n)-1)`
-/

namespace A203905.P16520844970383276639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A271709 n + (A271709 n - 1)).toNat

end

end A203905.P16520844970383276639

namespace A203905

/-- `A332998(A271709(n)+A271709(n)-1)` -/
def P16520844970383276639.Spec : Prop :=
  ∀ n, P16520844970383276639.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P1596947182302239572

`A332998(A271709(n)-(1-A271709(n)))`
-/

namespace A203905.P1596947182302239572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A271709 n - (1 - A271709 n)).toNat

end

end A203905.P1596947182302239572

namespace A203905

/-- `A332998(A271709(n)-(1-A271709(n)))` -/
def P1596947182302239572.Spec : Prop :=
  ∀ n, P1596947182302239572.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P231860704254571366

`A008619(A004197(n))*A059841(A330240(n))`
-/

namespace A203905.P231860704254571366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004197 n).toNat * A059841 (A330240 n).toNat

end

end A203905.P231860704254571366

namespace A203905

/-- `A008619(A004197(n))*A059841(A330240(n))` -/
def P231860704254571366.Spec : Prop :=
  ∀ n, P231860704254571366.a n = A203905 (n + 1)

end A203905

/-! ## A203905.P9666262026286504418

`A332998(A250742(n+1))`
-/

namespace A203905.P9666262026286504418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A250742 (n + 1)).toNat

end

end A203905.P9666262026286504418

namespace A203905

/-- `A332998(A250742(n+1))` -/
def P9666262026286504418.Spec : Prop :=
  ∀ n, P9666262026286504418.a n = A203905 (n + 1)

end A203905

/-!
# A203906: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of A203905.

The programs for A203906, there is no canonical definition to state claims against.
-/

/-! ## A203906.P13318314613106055766

`A202671(A187829(n+1))%16`
-/

namespace A203906.P13318314613106055766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202671 (A187829 (n + 1)).toNat) 16

end

end A203906.P13318314613106055766

/-!
# A203908: Multiplicative with a(p^e) = abs(p-e).

The programs for A203908, the canonical program `A203908.P3226581722548573154` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203908 has offset 1).

The definition of A203908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203908.P3226581722548573154

`∏{p}[n+1, abs(val(n+1, #)-#)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203908

/-- `∏{p}[n+1, abs(val(n+1, #)-#)]` -/
def P3226581722548573154.Spec : Prop :=
  ∀ n, P3226581722548573154.a n = A203908 (n + 1)

theorem P3226581722548573154.correct : P3226581722548573154.Spec := by
  intro n
  simp only [A203908, Nat.add_sub_cancel]

end A203908

/-! ## A203908.P5580463675073716002

`sqrt(∏{p}[n+1, (val(n+1, #)-#)²])`
-/

namespace A203908.P5580463675073716002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation (n + 1) p : ℤ) - (p : ℤ)) ^ 2 : ℤ) : ℝ)

end

end A203908.P5580463675073716002

namespace A203908

/-- `sqrt(∏{p}[n+1, (val(n+1, #)-#)²])` -/
def P5580463675073716002.Spec : Prop :=
  ∀ n, P5580463675073716002.a n = (A203908 (n + 1) : ℝ)

end A203908

/-! ## A203908.P15843147436260115787

`A023416(A243305(n+1)-A000190(n+1))`
-/

namespace A203908.P15843147436260115787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A243305 (n + 1) - A000190 (n + 1)).toNat

end

end A203908.P15843147436260115787

namespace A203908

/-- `A023416(A243305(n+1)-A000190(n+1))` -/
def P15843147436260115787.Spec : Prop :=
  ∀ n, P15843147436260115787.a n = A203908 (n + 1)

end A203908

/-! ## A203908.P3982284142747756513

`A023416(A243305(n+1)-A003557(n+1))`
-/

namespace A203908.P3982284142747756513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A243305 (n + 1) - A003557 (n + 1)).toNat

end

end A203908.P3982284142747756513

namespace A203908

/-- `A023416(A243305(n+1)-A003557(n+1))` -/
def P3982284142747756513.Spec : Prop :=
  ∀ n, P3982284142747756513.a n = A203908 (n + 1)

end A203908

/-! ## A203908.P12191532239563293338

`A346485(∑{d}[n+1, lcm(#, n+1)]*A183037(n+1))`
-/

namespace A203908.P12191532239563293338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346485 (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ) * A183037 (n + 1)).toNat

end

end A203908.P12191532239563293338

namespace A203908

/-- `A346485(∑{d}[n+1, lcm(#, n+1)]*A183037(n+1))` -/
def P12191532239563293338.Spec : Prop :=
  ∀ n, P12191532239563293338.a n = A203908 (n + 1)

end A203908

/-!
# A203909: Number of (n+1)X2 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203909, there is no canonical definition to state claims against.
-/

/-! ## A203909.P16882374316876214905

`A203913(∑[n]+1)`
-/

namespace A203909.P16882374316876214905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203913 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203909.P16882374316876214905

/-! ## A203909.P6243032828538418061

`record[root(A203913(n+1), A007318(n))]`
-/

namespace A203909.P6243032828538418061
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203913 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203909.P6243032828538418061

/-! ## A203909.P17690532677544931692

`record[root(A203913(n+1), A085478(n))]`
-/

namespace A203909.P17690532677544931692
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203913 (n + 1) : ℝ) ^ (1 / (A085478 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203909.P17690532677544931692

/-! ## A203909.P4662388540152201885

`record[gcd(A004197(n), A203913(n+1))]`
-/

namespace A203909.P4662388540152201885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A203913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203909.P4662388540152201885

/-! ## A203909.P9996341077661877790

`record[root(A203913(n+1), A089072(n+1))]`
-/

namespace A203909.P9996341077661877790
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203913 (n + 1) : ℝ) ^ (1 / (A089072 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203909.P9996341077661877790

/-!
# A203910: Number of (n+1)X3 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203910, there is no canonical definition to state claims against.
-/

/-! ## A203910.P12449325723239135497

`A203913(∑[n+1]+2)`
-/

namespace A203910.P12449325723239135497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203913 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203910.P12449325723239135497

/-! ## A203910.P4577629431195796359

`record[root(A203913(n+2), A330896(n+1))]`
-/

namespace A203910.P4577629431195796359
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203913 (n + 2) : ℝ) ^ (1 / (A330896 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203910.P4577629431195796359

/-! ## A203910.P18360210301184969190

`record[A203913(lt[A249250(n), n])]`
-/

namespace A203910.P18360210301184969190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249250 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203913 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203910.P18360210301184969190

/-!
# A203911: 

The programs for A203911, there is no canonical definition to state claims against.
-/

/-! ## A203911.P5392783524566748351

`A203913(A055999(n)+4)`
-/

namespace A203911.P5392783524566748351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203913 (A055999 n + 4).toNat

end

end A203911.P5392783524566748351

/-!
# A203912: 

The programs for A203912, there is no canonical definition to state claims against.
-/

/-! ## A203912.P2580310968312732001

`A203913(A000217(n+4)-n)`
-/

namespace A203912.P2580310968312732001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203913 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A203912.P2580310968312732001

/-!
# A203915: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203915, there is no canonical definition to state claims against.
-/

/-! ## A203915.P16917426630399796420

`A203923((n+1)²+n²)`
-/

namespace A203915.P16917426630399796420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 ((n + 1) ^ 2 + n ^ 2)

end

end A203915.P16917426630399796420

/-! ## A203915.P5146336334410426681

`lcm(2, A203923(A001844(n)))`
-/

namespace A203915.P5146336334410426681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203923 (A001844 n).toNat)

end

end A203915.P5146336334410426681

/-! ## A203915.P18378406848120975550

`record[gcd(A003987(n), A203923(n+1))]`
-/

namespace A203915.P18378406848120975550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A203923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203915.P18378406848120975550

/-! ## A203915.P2249147125575332254

`A203923(A001844(n))+char[A254367(n)]`
-/

namespace A203915.P2249147125575332254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254367 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A203915.P2249147125575332254

/-! ## A203915.P11356928394238634485

`A203923(A001844(n))/A007318(C(n+2, 2))`
-/

namespace A203915.P11356928394238634485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203923 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A203915.P11356928394238634485

/-!
# A203916: Number of (n+2) X 3 0..1 arrays with every 3 X 3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203916, the canonical program `A203916.P2501060195601350991` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203916 has offset 1).

The definition of A203916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203916.P2501060195601350991

`4*A184606(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203916

/-- `4*A184606(n+2)` -/
def P2501060195601350991.Spec : Prop :=
  ∀ n, P2501060195601350991.a n = A203916 (n + 1)

theorem P2501060195601350991.correct : P2501060195601350991.Spec := by
  intro n
  simp only [A203916, Nat.add_sub_cancel]

end A203916

/-! ## A203916.P4298917079964058741

`A203923(∑[n]+1)`
-/

namespace A203916.P4298917079964058741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203916.P4298917079964058741

namespace A203916

/-- `A203923(∑[n]+1)` -/
def P4298917079964058741.Spec : Prop :=
  ∀ n, P4298917079964058741.a n = A203916 (n + 1)

end A203916

/-! ## A203916.P17434141244655549443

`lcm(2, A203923(A000124(n)))`
-/

namespace A203916.P17434141244655549443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203923 (A000124 n).toNat)

end

end A203916.P17434141244655549443

namespace A203916

/-- `lcm(2, A203923(A000124(n)))` -/
def P17434141244655549443.Spec : Prop :=
  ∀ n, (P17434141244655549443.a n : ℤ) = A203916 (n + 1)

end A203916

/-! ## A203916.P8441784053312202855

`record[A203923(n+1)/A007318(n)]`
-/

namespace A203916.P8441784053312202855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203923 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203916.P8441784053312202855

namespace A203916

/-- `record[A203923(n+1)/A007318(n)]` -/
def P8441784053312202855.Spec : Prop :=
  ∀ n, P8441784053312202855.a n = (A203916 (n + 1) : ℚ)

end A203916

/-! ## A203916.P11294176940770116495

`record[A203923(n+1)/A008459(n)]`
-/

namespace A203916.P11294176940770116495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203923 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203916.P11294176940770116495

namespace A203916

/-- `record[A203923(n+1)/A008459(n)]` -/
def P11294176940770116495.Spec : Prop :=
  ∀ n, P11294176940770116495.a n = (A203916 (n + 1) : ℚ)

end A203916

/-!
# A203917: Number of (n+2)X4 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203917, there is no canonical definition to state claims against.
-/

/-! ## A203917.P14661166360457593485

`A203923(∑[n+1]+2)`
-/

namespace A203917.P14661166360457593485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203917.P14661166360457593485

/-! ## A203917.P12752377156982070577

`record[A203923(A007401(n+1)+2)]`
-/

namespace A203917.P12752377156982070577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A007401 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203917.P12752377156982070577

/-! ## A203917.P9063726744207351506

`record[A203923(A000037(n+1)+n+1)]`
-/

namespace A203917.P9063726744207351506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A000037 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203917.P9063726744207351506

/-! ## A203917.P7868337497409517082

`record[A203923(A002024(n+1)+n+2)]`
-/

namespace A203917.P7868337497409517082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A002024 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203917.P7868337497409517082

/-! ## A203917.P2607033969170788867

`record[A203923(A061579(n+1))]`
-/

namespace A203917.P2607033969170788867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203917.P2607033969170788867

/-!
# A203918: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203918, there is no canonical definition to state claims against.
-/

/-! ## A203918.P8873610459543749672

`A203923(A167614(n+1))`
-/

namespace A203918.P8873610459543749672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A167614 (n + 1)).toNat

end

end A203918.P8873610459543749672

/-! ## A203918.P5917109250672296356

`A203923(A373663(n+1))`
-/

namespace A203918.P5917109250672296356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A373663 (n + 1)).toNat

end

end A203918.P5917109250672296356

/-! ## A203918.P6705428270531321590

`A203923(A055998(n)+6)`
-/

namespace A203918.P6705428270531321590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A055998 n + 6).toNat

end

end A203918.P6705428270531321590

/-! ## A203918.P12350906860755446843

`A203923(A046691(n)+7)`
-/

namespace A203918.P12350906860755446843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A046691 n + 7).toNat

end

end A203918.P12350906860755446843

/-! ## A203918.P13352292611464108958

`A203923(A167499(n)+n)`
-/

namespace A203918.P13352292611464108958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A167499 n + (n : ℤ)).toNat

end

end A203918.P13352292611464108958

/-!
# A203919: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203919, there is no canonical definition to state claims against.
-/

/-! ## A203919.P9710262067523848271

`A203923(A374004(n+1))`
-/

namespace A203919.P9710262067523848271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A374004 (n + 1)).toNat

end

end A203919.P9710262067523848271

/-! ## A203919.P10652833095126305109

`A203923(A052905(n)+9)`
-/

namespace A203919.P10652833095126305109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A052905 n + 9).toNat

end

end A203919.P10652833095126305109

/-! ## A203919.P10913834457710679886

`A203923(A055999(n)+10)`
-/

namespace A203919.P10913834457710679886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A055999 n + 10).toNat

end

end A203919.P10913834457710679886

/-! ## A203919.P4922318159529453136

`A203923(A167614(n+2)+1)`
-/

namespace A203919.P4922318159529453136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A167614 (n + 2) + 1).toNat

end

end A203919.P4922318159529453136

/-! ## A203919.P9913974546706099707

`A203923(A000217(n+3)+4)`
-/

namespace A203919.P9913974546706099707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A000217 (n + 3) + 4).toNat

end

end A203919.P9913974546706099707

/-!
# A203920: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203920, there is no canonical definition to state claims against.
-/

/-! ## A203920.P4177521011492499088

`A203923(A374005(n+1))`
-/

namespace A203920.P4177521011492499088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A374005 (n + 1)).toNat

end

end A203920.P4177521011492499088

/-! ## A203920.P2426834009257680409

`A203923(A167499(n+3))`
-/

namespace A203920.P2426834009257680409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A167499 (n + 3)).toNat

end

end A203920.P2426834009257680409

/-! ## A203920.P11540673087462886659

`A203923(A000217(n+4)+5)`
-/

namespace A203920.P11540673087462886659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A000217 (n + 4) + 5).toNat

end

end A203920.P11540673087462886659

/-! ## A203920.P2309069593800347472

`A203923(A046691(n+3))`
-/

namespace A203920.P2309069593800347472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A046691 (n + 3)).toNat

end

end A203920.P2309069593800347472

/-! ## A203920.P8396619656403759728

`A203923(Δ[A023545(n+1)])`
-/

namespace A203920.P8396619656403759728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (f1 (n + 1) - f1 n).toNat

end

end A203920.P8396619656403759728

/-!
# A203921: Number of (n+2)X8 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203921, there is no canonical definition to state claims against.
-/

/-! ## A203921.P12138845194114700877

`A203923(A374007(n+1))`
-/

namespace A203921.P12138845194114700877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A374007 (n + 1)).toNat

end

end A203921.P12138845194114700877

/-! ## A203921.P2883314897660298208

`A203923(A167614(n+4)+3)`
-/

namespace A203921.P2883314897660298208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A167614 (n + 4) + 3).toNat

end

end A203921.P2883314897660298208

/-! ## A203921.P6628003013004389552

`A203923(A145018(n+6)+2)`
-/

namespace A203921.P6628003013004389552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A145018 (n + 6) + 2).toNat

end

end A203921.P6628003013004389552

/-! ## A203921.P2712081448181609552

`A203923(A000124(n+5)+5)`
-/

namespace A203921.P2712081448181609552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A000124 (n + 5) + 5).toNat

end

end A203921.P2712081448181609552

/-! ## A203921.P15078116440748662825

`A203923(A055999(n+4)-(2*n+1))`
-/

namespace A203921.P15078116440748662825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A203921.P15078116440748662825

/-!
# A203922: Number of (n+2)X9 0..1 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A203922, there is no canonical definition to state claims against.
-/

/-! ## A203922.P9920137763009483279

`A203923(A374008(n+1))`
-/

namespace A203922.P9920137763009483279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A374008 (n + 1)).toNat

end

end A203922.P9920137763009483279

/-! ## A203922.P17640400671285070643

`A203923(A000217(n+6)+7)`
-/

namespace A203922.P17640400671285070643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A000217 (n + 6) + 7).toNat

end

end A203922.P17640400671285070643

/-! ## A203922.P2336173329684364762

`A203923(eq[6, A002262(n)]+1)`
-/

namespace A203922.P2336173329684364762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A203922.P2336173329684364762

/-! ## A203922.P8012422737874747854

`A203923(A034856(n+7)-5-A005408(n))`
-/

namespace A203922.P8012422737874747854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A034856 (n + 7) - 5 - A005408 n).toNat

end

end A203922.P8012422737874747854

/-! ## A203922.P8108691091050615106

`A203923(A055999(n+4))`
-/

namespace A203922.P8108691091050615106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203923 (A055999 (n + 4)).toNat

end

end A203922.P8108691091050615106

/-!
# A203925: 3^n! - 2^n!.

The programs for A203925, the canonical program `A203925.P9887932654073069139` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203925 has offset 0).

The definition of A203925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n!-2^n!` (program `A203925.P9887932654073069139`, by `A203925.P9887932654073069139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A203925.P9887932654073069139

`3^n!-2^n!`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203925

/-- `3^n!-2^n!` -/
def P9887932654073069139.Spec : Prop :=
  ∀ n, P9887932654073069139.a n = A203925 n

theorem P9887932654073069139.correct : P9887932654073069139.Spec := by
  intro n
  simp only [A203925]

end A203925

/-!
# A203926: 

The programs for A203926, there is no canonical definition to state claims against.
-/

/-! ## A203926.P17022278499125237066

`A203934((n+1)²+n²)`
-/

namespace A203926.P17022278499125237066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 ((n + 1) ^ 2 + n ^ 2)

end

end A203926.P17022278499125237066

/-!
# A203927: Number of (n+1)X2 0..5 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203927, there is no canonical definition to state claims against.
-/

/-! ## A203927.P17934671536946983628

`36*11^(n+1)`
-/

namespace A203927.P17934671536946983628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * 11 ^ (n + 1)

end

end A203927.P17934671536946983628

/-! ## A203927.P6364740412512153110

`lcm(36, 11^(n+1))`
-/

namespace A203927.P6364740412512153110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 36 (11 ^ (n + 1))

end

end A203927.P6364740412512153110

/-! ## A203927.P2661930890433149533

`Δ[2*A199761(n+1)]`
-/

namespace A203927.P2661930890433149533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203927.P2661930890433149533

/-! ## A203927.P9742403626337997498

`Δ[3*A199023(n+1)]`
-/

namespace A203927.P9742403626337997498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203927.P9742403626337997498

/-! ## A203927.P8368526536292864440

`Δ[4*A199760(n+1)]`
-/

namespace A203927.P8368526536292864440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203927.P8368526536292864440

/-! ## A203927.P2799342223511592934

`Δ[4*A268839(n+1)]`
-/

namespace A203927.P2799342223511592934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203927.P2799342223511592934

/-!
# A203928: Number of (n+1) X 3 0..5 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203928, there is no canonical definition to state claims against.
-/

/-! ## A203928.P11952271047414147210

`A203934(∑[n+1]+2)`
-/

namespace A203928.P11952271047414147210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203928.P11952271047414147210

/-! ## A203928.P12917571800962506316

`record[A203934(abs(A201163(n)))]`
-/

namespace A203928.P12917571800962506316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203928.P12917571800962506316

/-! ## A203928.P13479584189435415319

`lcm(2, A203934(A000096(n+1)))`
-/

namespace A203928.P13479584189435415319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203934 (A000096 (n + 1)).toNat)

end

end A203928.P13479584189435415319

/-! ## A203928.P9115055155747611416

`A052307(n)*A203934(A000096(n+1))`
-/

namespace A203928.P9115055155747611416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A203934 (A000096 (n + 1)).toNat

end

end A203928.P9115055155747611416

/-! ## A203928.P14668707832670475153

`A203934(A000096(n+1))/A052307(n+1)`
-/

namespace A203928.P14668707832670475153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203934 (A000096 (n + 1)).toNat : ℚ) / (A052307 (n + 1) : ℚ)

end

end A203928.P14668707832670475153

/-!
# A203929: Number of (n+1) X 4 0..5 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203929, there is no canonical definition to state claims against.
-/

/-! ## A203929.P3179454257106544541

`A203934(∑[n+2]+4)`
-/

namespace A203929.P3179454257106544541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203929.P3179454257106544541

/-! ## A203929.P6603562428458019979

`lcm(2, A203934(A167614(n+1)))`
-/

namespace A203929.P6603562428458019979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203934 (A167614 (n + 1)).toNat)

end

end A203929.P6603562428458019979

/-! ## A203929.P5539540827925187742

`A203934(A167614(n+1))+A185284(n)`
-/

namespace A203929.P5539540827925187742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (A167614 (n + 1)).toNat + A185284 n

end

end A203929.P5539540827925187742

/-! ## A203929.P17587176256113412543

`A036225(n)*A203934(A167614(n+1))`
-/

namespace A203929.P17587176256113412543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A203934 (A167614 (n + 1)).toNat

end

end A203929.P17587176256113412543

/-! ## A203929.P14031733542645607906

`A194673(n)*A203934(A167614(n+1))`
-/

namespace A203929.P14031733542645607906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 n * A203934 (A167614 (n + 1)).toNat

end

end A203929.P14031733542645607906

/-!
# A203930: Number of (n+1)X5 0..5 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203930, there is no canonical definition to state claims against.
-/

/-! ## A203930.P16752392863521957870

`A203934(A141214(n)+7)`
-/

namespace A203930.P16752392863521957870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (A141214 n + 7).toNat

end

end A203930.P16752392863521957870

/-! ## A203930.P16488662745366796191

`A203934(eq[5, A066657(n)])`
-/

namespace A203930.P16488662745366796191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203930.P16488662745366796191

/-! ## A203930.P845027560804190037

`A203934(A000217(n+4)-n)`
-/

namespace A203930.P845027560804190037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A203930.P845027560804190037

/-!
# A203931: 

The programs for A203931, there is no canonical definition to state claims against.
-/

/-! ## A203931.P3701969669929562469

`A203934(eq[7, A066657(n)])`
-/

namespace A203931.P3701969669929562469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203931.P3701969669929562469

/-! ## A203931.P9512902653753917432

`A203934(A000217(n+4)+n+1)`
-/

namespace A203931.P9512902653753917432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A203931.P9512902653753917432

/-!
# A203933: 

The programs for A203933, there is no canonical definition to state claims against.
-/

/-! ## A203933.P10376041322555948250

`A203934(eq[11, A066657(n)])`
-/

namespace A203933.P10376041322555948250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203933.P10376041322555948250

/-!
# A203935: Number of lattice 2n-gons with edges on distinct lines.

The programs for A203935, there is no canonical definition to state claims against.
-/

/-! ## A203935.P6926408540865692351

`A011371(or(2, A024451(n+1)))`
-/

namespace A203935.P6926408540865692351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (Int.lor 2 (A024451 (n + 1))).toNat

end

end A203935.P6926408540865692351

/-!
# A203936: Number of (n+1)X(n+1) 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203936, there is no canonical definition to state claims against.
-/

/-! ## A203936.P10026794560801258760

`A203944((n+1)²+n²)`
-/

namespace A203936.P10026794560801258760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 ((n + 1) ^ 2 + n ^ 2)

end

end A203936.P10026794560801258760

/-!
# A203937: Number of (n+1) X 2 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203937, there is no canonical definition to state claims against.
-/

/-! ## A203937.P18078910910339256511

`A203944(∑[n]+1)`
-/

namespace A203937.P18078910910339256511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203937.P18078910910339256511

/-! ## A203937.P10106011569123771984

`record[A203944(n+1)/A022168(n)]`
-/

namespace A203937.P10106011569123771984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203944 (n + 1) : ℚ) / (A022168 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203937.P10106011569123771984

/-! ## A203937.P18151330534583316460

`record[A203944(n+1)/A178301(n)]`
-/

namespace A203937.P18151330534583316460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203944 (n + 1) : ℚ) / (A178301 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203937.P18151330534583316460

/-! ## A203937.P16067334383205011260

`record[gcd(A002262(n), A203944(n+1))]`
-/

namespace A203937.P16067334383205011260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203944 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203937.P16067334383205011260

/-! ## A203937.P7746633011879933419

`record[A203944(n+1)/A211836(n+1)]`
-/

namespace A203937.P7746633011879933419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203944 (n + 1) : ℚ) / (A211836 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203937.P7746633011879933419

/-!
# A203938: Number of (n+1)X3 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203938, there is no canonical definition to state claims against.
-/

/-! ## A203938.P7063059570514723295

`A203944(∑[n+1]+2)`
-/

namespace A203938.P7063059570514723295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203938.P7063059570514723295

/-! ## A203938.P8211290314680931412

`record[gcd(A002262(n), A203944(n+2))]`
-/

namespace A203938.P8211290314680931412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203944 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203938.P8211290314680931412

/-! ## A203938.P6545059988776222582

`A203944(A133263(n+1))%A203940(n+1)`
-/

namespace A203938.P6545059988776222582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203944 (A133263 (n + 1)).toNat) (A203940 (n + 1))

end

end A203938.P6545059988776222582

/-! ## A203938.P14557163990302634977

`record[A203944(abs(A201163(n)))]`
-/

namespace A203938.P14557163990302634977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203938.P14557163990302634977

/-! ## A203938.P564900327728980160

`record[A203944(Δ[A003453(n+5)])]`
-/

namespace A203938.P564900327728980160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203938.P564900327728980160

/-!
# A203939: Number of (n+1)X4 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203939, there is no canonical definition to state claims against.
-/

/-! ## A203939.P1051729856563868698

`A203944(∑[n+2]+4)`
-/

namespace A203939.P1051729856563868698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203939.P1051729856563868698

/-! ## A203939.P8773137731640774693

`A203944(A167614(n+1))+A034569(n+1)`
-/

namespace A203939.P8773137731640774693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A167614 (n + 1)).toNat + A034569 (n + 1)

end

end A203939.P8773137731640774693

/-! ## A203939.P6692091581301230604

`lcm(A164306(n+1), A203944(A167614(n+1)))`
-/

namespace A203939.P6692091581301230604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164306 (n + 1)) (A203944 (A167614 (n + 1)).toNat)

end

end A203939.P6692091581301230604

/-! ## A203939.P15080867778498202118

`lcm(A033999(n), A203944(A166136(n+1)-3))`
-/

namespace A203939.P15080867778498202118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203944 (A166136 (n + 1) - 3).toNat)

end

end A203939.P15080867778498202118

/-! ## A203939.P17859483412066162560

`A316441(A077068(n+1))+A203944(A166136(n+1)-3)`
-/

namespace A203939.P17859483412066162560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A077068 (n + 1)).toNat + A203944 (A166136 (n + 1) - 3).toNat

end

end A203939.P17859483412066162560

/-!
# A203940: Number of (n+1)X5 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203940, there is no canonical definition to state claims against.
-/

/-! ## A203940.P5406389346343641343

`A203944(A374004(n+1))`
-/

namespace A203940.P5406389346343641343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A374004 (n + 1)).toNat

end

end A203940.P5406389346343641343

/-! ## A203940.P4902768497678587035

`A203944(A052905(n)+9)`
-/

namespace A203940.P4902768497678587035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A052905 n + 9).toNat

end

end A203940.P4902768497678587035

/-! ## A203940.P17254406071216259757

`A203944(A167614(n+2)+1)`
-/

namespace A203940.P17254406071216259757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A167614 (n + 2) + 1).toNat

end

end A203940.P17254406071216259757

/-! ## A203940.P10313130486517767696

`A203944(A166136(n+2)-2)`
-/

namespace A203940.P10313130486517767696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A166136 (n + 2) - 2).toNat

end

end A203940.P10313130486517767696

/-! ## A203940.P7977723286113986483

`A203944(A000217(n+3)+4)`
-/

namespace A203940.P7977723286113986483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A000217 (n + 3) + 4).toNat

end

end A203940.P7977723286113986483

/-!
# A203941: Number of (n+1)X6 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203941, there is no canonical definition to state claims against.
-/

/-! ## A203941.P15742899538478638061

`A203944(A374005(n+1))`
-/

namespace A203941.P15742899538478638061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A374005 (n + 1)).toNat

end

end A203941.P15742899538478638061

/-! ## A203941.P14234231104597390272

`A203944(A155212(n)+13)`
-/

namespace A203941.P14234231104597390272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A155212 n + 13).toNat

end

end A203941.P14234231104597390272

/-! ## A203941.P15144441931975617671

`A203944(A056000(n)+15)`
-/

namespace A203941.P15144441931975617671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A056000 n + 15).toNat

end

end A203941.P15144441931975617671

/-! ## A203941.P2554435361893905587

`A203944(eq[4, A193592(n)])`
-/

namespace A203941.P2554435361893905587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203941.P2554435361893905587

/-! ## A203941.P7552095171963140286

`A203944(eq[8, A140996(n)])`
-/

namespace A203941.P7552095171963140286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203941.P7552095171963140286

/-!
# A203942: Number of (n+1)X7 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203942, there is no canonical definition to state claims against.
-/

/-! ## A203942.P13468307117443249461

`A203944(A374007(n+1))`
-/

namespace A203942.P13468307117443249461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A374007 (n + 1)).toNat

end

end A203942.P13468307117443249461

/-! ## A203942.P11097631493890729201

`A203944(A052905(n+3))`
-/

namespace A203942.P11097631493890729201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A052905 (n + 3)).toNat

end

end A203942.P11097631493890729201

/-! ## A203942.P1379465979618630300

`A203944(eq[5, A193592(n)])`
-/

namespace A203942.P1379465979618630300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203942.P1379465979618630300

/-! ## A203942.P10954869874643152892

`A203944(eq[8, A185782(n+1)])`
-/

namespace A203942.P10954869874643152892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203942.P10954869874643152892

/-!
# A203943: Number of (n+1)X8 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203943, there is no canonical definition to state claims against.
-/

/-! ## A203943.P17946891619744366767

`A203944(A374008(n+1))`
-/

namespace A203943.P17946891619744366767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A374008 (n + 1)).toNat

end

end A203943.P17946891619744366767

/-! ## A203943.P481335225221180507

`A203944(A055999(n+4))`
-/

namespace A203943.P481335225221180507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (A055999 (n + 4)).toNat

end

end A203943.P481335225221180507

/-! ## A203943.P13714908032374269759

`A203944(eq[6, A193592(n)])`
-/

namespace A203943.P13714908032374269759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203943.P13714908032374269759

/-!
# A203945: Symmetric matrix based on (1,0,0,1,0,0,1,0,0,...), by antidiagonals.

The programs for A203945, there is no canonical definition to state claims against.
-/

/-! ## A203945.P6190100705563241433

`A185957(n+1)%(3%A122984(n+1))`
-/

namespace A203945.P6190100705563241433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185957 (n + 1)) (Int.tmod 3 (A122984 (n + 1)))

end

end A203945.P6190100705563241433

/-! ## A203945.P4275313552754894390

`A010872(7*A185957(n+1))`
-/

namespace A203945.P4275313552754894390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (7 * A185957 (n + 1)).toNat

end

end A203945.P4275313552754894390

/-! ## A203945.P10318724455053460935

`A030696(7*A185957(n+1))%3`
-/

namespace A203945.P10318724455053460935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030696 (7 * A185957 (n + 1)).toNat) 3

end

end A203945.P10318724455053460935

/-! ## A203945.P8789693717741964918

`A185957(n+1)%A122553(A034356(n+1))`
-/

namespace A203945.P8789693717741964918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185957 (n + 1)) (A122553 (A034356 (n + 1)).toNat)

end

end A203945.P8789693717741964918

/-! ## A203945.P12373616984810350684

`A185957(n+1)%A122553(A001844(n))`
-/

namespace A203945.P12373616984810350684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185957 (n + 1)) (A122553 (A001844 n).toNat)

end

end A203945.P12373616984810350684

/-! ## A203945.P16772133735258224492

`(A185957(n+1)+A135943(n+1))%3`
-/

namespace A203945.P16772133735258224492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185957 (n + 1) + A135943 (n + 1)) 3

end

end A203945.P16772133735258224492

/-!
# A203946: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of A203945.

The programs for A203946, there is no canonical definition to state claims against.
-/

/-! ## A203946.P9082074789249738150

`A202678(n+1)%A094327(A202647(n+1))`
-/

namespace A203946.P9082074789249738150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202678 (n + 1)) (A094327 (A202647 (n + 1)).toNat)

end

end A203946.P9082074789249738150

/-! ## A203946.P11683306847411348902

`A202678(A187829(n+1))%9`
-/

namespace A203946.P11683306847411348902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202678 (A187829 (n + 1)).toNat) 9

end

end A203946.P11683306847411348902

/-! ## A203946.P549707924286521683

`A202678(A077168(n))%9`
-/

namespace A203946.P549707924286521683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202678 (A077168 n).toNat) 9

end

end A203946.P549707924286521683

/-! ## A203946.P14499527264047693071

`A202678(n+1)%A094327(A007283(n))`
-/

namespace A203946.P14499527264047693071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202678 (n + 1)) (A094327 (A007283 n).toNat)

end

end A203946.P14499527264047693071

/-!
# A203947: Symmetric matrix based on (1,0,1,1,0,1,1,0,1,...), by antidiagonals.

The programs for A203947, there is no canonical definition to state claims against.
-/

/-! ## A203947.P2627746773630723084

`A010873(A203003(n+1)%A184505(n+1))`
-/

namespace A203947.P2627746773630723084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (Int.tmod (A203003 (n + 1)) (A184505 (n + 1))).toNat

end

end A203947.P2627746773630723084

/-! ## A203947.P3470337952825968785

`and(A071053(A059867(n+1)), A203003(n+1))`
-/

namespace A203947.P3470337952825968785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071053 (A059867 (n + 1)).toNat) (A203003 (n + 1))

end

end A203947.P3470337952825968785

/-! ## A203947.P9014211930408335241

`and(A203003(n+1), A290858(A184399(n+1)))`
-/

namespace A203947.P9014211930408335241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203003 (n + 1)) (A290858 (A184399 (n + 1)).toNat)

end

end A203947.P9014211930408335241

/-! ## A203947.P2826036478495978582

`A007088(A203003(n+1))%4`
-/

namespace A203947.P2826036478495978582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A203003 (n + 1)).toNat) 4

end

end A203947.P2826036478495978582

/-! ## A203947.P9171621705997177353

`and(A010684(A224534(n+1)), A203003(n+1))`
-/

namespace A203947.P9171621705997177353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 (A224534 (n + 1)).toNat) (A203003 (n + 1))

end

end A203947.P9171621705997177353

/-! ## A203947.P10428947325069045276

`and(A203003(n+1), A204455(A122761(n)))`
-/

namespace A203947.P10428947325069045276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203003 (n + 1)) (A204455 (A122761 n).toNat)

end

end A203947.P10428947325069045276

/-!
# A203949: Symmetric matrix based on (1,1,0,1,1,0,1,1,0,...), by antidiagonals.

The programs for A203949, there is no canonical definition to state claims against.
-/

/-! ## A203949.P7680000010561214710

`A203001(n+1)%A091844(A086645(n))`
-/

namespace A203949.P7680000010561214710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203001 (n + 1)) (A091844 (A086645 n).toNat)

end

end A203949.P7680000010561214710

/-! ## A203949.P17518801295269059760

`and(A006530(A166643(2*(n+1))), A203001(n+1))`
-/

namespace A203949.P17518801295269059760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A166643 (2 * (n + 1))).toNat) (A203001 (n + 1))

end

end A203949.P17518801295269059760

/-! ## A203949.P15580822162550139529

`(A203001(n+1)+A002978(n+1))%4`
-/

namespace A203949.P15580822162550139529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203001 (n + 1) + A002978 (n + 1)) 4

end

end A203949.P15580822162550139529

/-! ## A203949.P12269788146511979969

`A125916(A181206(n+1))`
-/

namespace A203949.P12269788146511979969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125916 (A181206 (n + 1)).toNat

end

end A203949.P12269788146511979969

/-! ## A203949.P15717316977926218371

`A089652(A203001(n+1))`
-/

namespace A203949.P15717316977926218371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089652 (A203001 (n + 1)).toNat

end

end A203949.P15717316977926218371

/-!
# A203951: Symmetric matrix based on (1,0,0,0,1,0,0,0,...), by antidiagonals.

The programs for A203951, the canonical program `A203951.P17010749481064235207` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203951 has offset 1).

The definition of A203951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203951.P17010749481064235207

`round(A203905(n+1)/A133265(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A203951

/-- `round(A203905(n+1)/A133265(n))` -/
def P17010749481064235207.Spec : Prop :=
  ∀ n, P17010749481064235207.a n = A203951 (n + 1)

theorem P17010749481064235207.correct : P17010749481064235207.Spec := by
  intro n
  simp only [A203951, Nat.add_sub_cancel]

end A203951

/-! ## A203951.P10762925925326054728

`round(A203905(n+1)/A266722(n))`
-/

namespace A203951.P10762925925326054728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203905 (n + 1) : ℚ) / (A266722 n : ℚ))

end

end A203951.P10762925925326054728

namespace A203951

/-- `round(A203905(n+1)/A266722(n))` -/
def P10762925925326054728.Spec : Prop :=
  ∀ n, P10762925925326054728.a n = A203951 (n + 1)

end A203951

/-! ## A203951.P5652683078725982645

`A110654(A059841(n)*A203905(n+1))`
-/

namespace A203951.P5652683078725982645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A059841 n * A203905 (n + 1)).toNat

end

end A203951.P5652683078725982645

namespace A203951

/-- `A110654(A059841(n)*A203905(n+1))` -/
def P5652683078725982645.Spec : Prop :=
  ∀ n, P5652683078725982645.a n = A203951 (n + 1)

end A203951

/-! ## A203951.P11431863049144582125

`A110654(Δ[A110654(n)]*A203905(n+1))`
-/

namespace A203951.P11431863049144582125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((f1 (n + 1) - f1 n) * A203905 (n + 1)).toNat

end

end A203951.P11431863049144582125

namespace A203951

/-- `A110654(Δ[A110654(n)]*A203905(n+1))` -/
def P11431863049144582125.Spec : Prop :=
  ∀ n, P11431863049144582125.a n = A203951 (n + 1)

end A203951

/-! ## A203951.P18070356831284543532

`ceil(A203905(n+1)/(A033999(n)*A133265(n)))`
-/

namespace A203951.P18070356831284543532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203905 (n + 1) : ℚ) / (A033999 n * A133265 n : ℚ)⌉

end

end A203951.P18070356831284543532

namespace A203951

/-- `ceil(A203905(n+1)/(A033999(n)*A133265(n)))` -/
def P18070356831284543532.Spec : Prop :=
  ∀ n, P18070356831284543532.a n = A203951 (n + 1)

end A203951

/-! ## A203951.P11941705430954436073

`and(A000045(A203905(n+1)), A133555(n+2))`
-/

namespace A203951.P11941705430954436073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A203905 (n + 1)).toNat) (A133555 (n + 2))

end

end A203951.P11941705430954436073

namespace A203951

/-- `and(A000045(A203905(n+1)), A133555(n+2))` -/
def P11941705430954436073.Spec : Prop :=
  ∀ n, P11941705430954436073.a n = A203951 (n + 1)

end A203951

/-! ## A203951.P1815254162087249851

`A001221(gcd(1-A133196(n+1), A129603(n)))`
-/

namespace A203951.P1815254162087249851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (1 - A133196 (n + 1)) (A129603 n))

end

end A203951.P1815254162087249851

namespace A203951

/-- `A001221(gcd(1-A133196(n+1), A129603(n)))` -/
def P1815254162087249851.Spec : Prop :=
  ∀ n, P1815254162087249851.a n = A203951 (n + 1)

end A203951

/-! ## A203951.P1868782886169616869

`A230632(gcd(A049581(n), A335048(n+1)))`
-/

namespace A203951.P1868782886169616869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 (Int.gcd (A049581 n) (A335048 (n + 1)))

end

end A203951.P1868782886169616869

namespace A203951

/-- `A230632(gcd(A049581(n), A335048(n+1)))` -/
def P1868782886169616869.Spec : Prop :=
  ∀ n, P1868782886169616869.a n = A203951 (n + 1)

end A203951

/-!
# A203952: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of A203949.

The programs for A203952, there is no canonical definition to state claims against.
-/

/-! ## A203952.P16531099370925231859

`A082858(A161680(n))-A230860(n+2)`
-/

namespace A203952.P16531099370925231859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A161680 n).toNat - A230860 (n + 2)

end

end A203952.P16531099370925231859

/-! ## A203952.P6966383971220101998

`A153881(A154694(n))*A230860(n+2)`
-/

namespace A203952.P6966383971220101998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A154694 n).toNat * A230860 (n + 2)

end

end A203952.P6966383971220101998

/-! ## A203952.P7418615209191913450

`A008683(A165078(n+1))-A230860(n+2)`
-/

namespace A203952.P7418615209191913450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A165078 (n + 1)).toNat - A230860 (n + 2)

end

end A203952.P7418615209191913450

/-! ## A203952.P17569053025822706031

`A119724(A055645(n+1))`
-/

namespace A203952.P17569053025822706031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 (A055645 (n + 1)).toNat

end

end A203952.P17569053025822706031

/-! ## A203952.P5171520348721727998

`A119724(A055646(n)+1)`
-/

namespace A203952.P5171520348721727998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 (A055646 n + 1).toNat

end

end A203952.P5171520348721727998

/-!
# A203953: Symmetric matrix based on (1,2,1,2,1,2,...), by antidiagonals.

The programs for A203953, there is no canonical definition to state claims against.
-/

/-! ## A203953.P11889573241496730560

`A080791(A060854(n+1)*A207682(n+1))`
-/

namespace A203953.P11889573241496730560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A060854 (n + 1) * A207682 (n + 1)).toNat

end

end A203953.P11889573241496730560

/-! ## A203953.P13947556174489608804

`A328855(A207514(n+1))`
-/

namespace A203953.P13947556174489608804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A207514 (n + 1)).toNat

end

end A203953.P13947556174489608804

/-! ## A203953.P14269255215466374397

`A000688(lcm(70, A207514(n+1)))`
-/

namespace A203953.P14269255215466374397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (Int.lcm 70 (A207514 (n + 1)))

end

end A203953.P14269255215466374397

/-! ## A203953.P4363159264880771287

`A328855(A207682(n+1)+char[15])`
-/

namespace A203953.P4363159264880771287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A207682 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A203953.P4363159264880771287

/-! ## A203953.P18303167205814323803

`A328855(A207879(n+1)+char[15])`
-/

namespace A203953.P18303167205814323803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A207879 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A203953.P18303167205814323803

/-!
# A203955: Symmetric matrix based on (1,2,3,1,2,3,1,2,3...), by antidiagonals.

The programs for A203955, there is no canonical definition to state claims against.
-/

/-! ## A203955.P16442358068794134773

`A194066(∑[a(n-2)+3])` with `a(0)=4, a(1)=25, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A203955.P16442358068794134773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 25, 0, 1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194066 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203955.P16442358068794134773

/-! ## A203955.P1580574051712413015

`A082647(A014430(n)*A232860(n+1))`
-/

namespace A203955.P1580574051712413015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A014430 n * A232860 (n + 1)).toNat

end

end A203955.P1580574051712413015

/-!
# A203957: Number of (n+1)X(n+1) 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203957, there is no canonical definition to state claims against.
-/

/-! ## A203957.P13370471927470255498

`A203965((n+1)²+n²)`
-/

namespace A203957.P13370471927470255498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 ((n + 1) ^ 2 + n ^ 2)

end

end A203957.P13370471927470255498

/-!
# A203958: Number of (n+1) X 2 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203958, there is no canonical definition to state claims against.
-/

/-! ## A203958.P6414659203941222144

`A203965(∑[n]+1)`
-/

namespace A203958.P6414659203941222144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203958.P6414659203941222144

/-! ## A203958.P6525531539584474180

`record[A010054(n)*A203965(n+1)]`
-/

namespace A203958.P6525531539584474180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203958.P6525531539584474180

/-! ## A203958.P2955683139565345489

`record[A203965(n+1)/A118190(n)]`
-/

namespace A203958.P2955683139565345489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203965 (n + 1) : ℚ) / (A118190 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203958.P2955683139565345489

/-! ## A203958.P14326273753846688493

`record[root(A203965(n+1), A007318(n))]`
-/

namespace A203958.P14326273753846688493
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203965 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203958.P14326273753846688493

/-! ## A203958.P13622686880487960364

`record[root(A203965(n+1), A293985(n))]`
-/

namespace A203958.P13622686880487960364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203965 (n + 1) : ℝ) ^ (1 / (A293985 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203958.P13622686880487960364

/-!
# A203959: Number of (n+1)X3 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203959, there is no canonical definition to state claims against.
-/

/-! ## A203959.P12836998558652997567

`A203965(∑[n+1]+2)`
-/

namespace A203959.P12836998558652997567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203959.P12836998558652997567

/-! ## A203959.P5296780988868395569

`record[A010054(n)*A203965(n+2)]`
-/

namespace A203959.P5296780988868395569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203959.P5296780988868395569

/-! ## A203959.P16782847530483158920

`record[gcd(A002262(n), A203965(n+2))]`
-/

namespace A203959.P16782847530483158920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203965 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203959.P16782847530483158920

/-! ## A203959.P9782069588203652836

`record[A203965(A133263(val(n+1, 2)+1))]`
-/

namespace A203959.P9782069588203652836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203959.P9782069588203652836

/-! ## A203959.P9545982816385092445

`record[A203965(abs(A201163(n)))]`
-/

namespace A203959.P9545982816385092445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203959.P9545982816385092445

/-!
# A203960: Number of (n+1)X4 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203960, there is no canonical definition to state claims against.
-/

/-! ## A203960.P15974384572009922668

`A203965(∑[n+2]+4)`
-/

namespace A203960.P15974384572009922668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203960.P15974384572009922668

/-! ## A203960.P4325551731804922007

`A203965(A167614(n+1))+A185255(n)`
-/

namespace A203960.P4325551731804922007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A167614 (n + 1)).toNat + A185255 n

end

end A203960.P4325551731804922007

/-! ## A203960.P12778059606384946592

`lcm(A033999(n), A203965(A166136(n+1)-3))`
-/

namespace A203960.P12778059606384946592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203965 (A166136 (n + 1) - 3).toNat)

end

end A203960.P12778059606384946592

/-! ## A203960.P5256102200285994545

`A203965(A166136(n+1)-3)/A000045(A003108(n))`
-/

namespace A203960.P5256102200285994545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203965 (A166136 (n + 1) - 3).toNat : ℚ) / (A000045 (A003108 n).toNat : ℚ)

end

end A203960.P5256102200285994545

/-! ## A203960.P8888938400420629373

`A203965(A166136(n+1)-3)/A000045(A020639(2*(n+1)))`
-/

namespace A203960.P8888938400420629373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203965 (A166136 (n + 1) - 3).toNat : ℚ) / (A000045 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A203960.P8888938400420629373

/-!
# A203961: Number of (n+1)X5 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203961, there is no canonical definition to state claims against.
-/

/-! ## A203961.P5632734724936216333

`A203965(A374004(n+1))`
-/

namespace A203961.P5632734724936216333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A374004 (n + 1)).toNat

end

end A203961.P5632734724936216333

/-! ## A203961.P10476676180721259107

`A203965(A141214(n)+7)`
-/

namespace A203961.P10476676180721259107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A141214 n + 7).toNat

end

end A203961.P10476676180721259107

/-! ## A203961.P2330191011276041533

`A203965(A052905(n)+9)`
-/

namespace A203961.P2330191011276041533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A052905 n + 9).toNat

end

end A203961.P2330191011276041533

/-! ## A203961.P11862044007419134429

`A203965(A055999(n)+10)`
-/

namespace A203961.P11862044007419134429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A055999 n + 10).toNat

end

end A203961.P11862044007419134429

/-! ## A203961.P3219620364799936805

`A203965(A167614(n+2)+1)`
-/

namespace A203961.P3219620364799936805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A167614 (n + 2) + 1).toNat

end

end A203961.P3219620364799936805

/-!
# A203962: Number of (n+1)X6 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203962, there is no canonical definition to state claims against.
-/

/-! ## A203962.P13549184374322393252

`A203965(A374005(n+1))`
-/

namespace A203962.P13549184374322393252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A374005 (n + 1)).toNat

end

end A203962.P13549184374322393252

/-! ## A203962.P12420678414580030169

`A203965(A056115(n)+11)`
-/

namespace A203962.P12420678414580030169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A056115 n + 11).toNat

end

end A203962.P12420678414580030169

/-! ## A203962.P8499677006699430565

`A203965(Δ[A023545(n+1)])`
-/

namespace A203962.P8499677006699430565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (f1 (n + 1) - f1 n).toNat

end

end A203962.P8499677006699430565

/-! ## A203962.P7352616767360671681

`A203965(eq[2, A193592(n)-2])`
-/

namespace A203962.P7352616767360671681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203962.P7352616767360671681

/-! ## A203962.P72583248115173310

`A203965(eq[5, A200370(n+1)])`
-/

namespace A203962.P72583248115173310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203962.P72583248115173310

/-!
# A203963: Number of (n+1)X7 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203963, there is no canonical definition to state claims against.
-/

/-! ## A203963.P13260977248192572607

`A203965(A374007(n+1))`
-/

namespace A203963.P13260977248192572607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A374007 (n + 1)).toNat

end

end A203963.P13260977248192572607

/-! ## A203963.P4731383938886401353

`A203965(eq[5, A193592(n)])`
-/

namespace A203963.P4731383938886401353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203963.P4731383938886401353

/-! ## A203963.P2341086969691303539

`A203965(A055999(n+3)+1)`
-/

namespace A203963.P2341086969691303539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (A055999 (n + 3) + 1).toNat

end

end A203963.P2341086969691303539

/-! ## A203963.P4197642854794443714

`A203965(eq[6, A200370(n+1)])`
-/

namespace A203963.P4197642854794443714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203963.P4197642854794443714

/-!
# A203964: 

The programs for A203964, there is no canonical definition to state claims against.
-/

/-! ## A203964.P8562824940396364701

`A203965(eq[6, A193592(n)])`
-/

namespace A203964.P8562824940396364701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203964.P8562824940396364701

/-!
# A203966: Numbers k such that phi(k) divides k+1, where phi is Euler's totient function (A000010).

The programs for A203966, there is no canonical definition to state claims against.
-/

/-! ## A203966.P9042760433996852729

`A249541(n+1)-2`
-/

namespace A203966.P9042760433996852729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249541 (n + 1) - 2

end

end A203966.P9042760433996852729

/-! ## A203966.P7185636036927707879

`A050474(n*a(comp[2*(n+5)]-n))` with `a(0)=1, a(1)=2`
-/

namespace A203966.P7185636036927707879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A050474 ((n : ℤ) * a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A203966.P7185636036927707879

/-! ## A203966.P3182571484372662362

`A050474(A028310(n))+char[1]`
-/

namespace A203966.P3182571484372662362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050474 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A203966.P3182571484372662362

/-! ## A203966.P5316273282187695818

`A050474(n/a(A000038(n)))` with `a(0)=1, a(1)=2`
-/

namespace A203966.P5316273282187695818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A050474 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A203966.P5316273282187695818

/-!
# A203967: The number of positive integers <= n that have a prime number of divisors.

The programs for A203967, the canonical program `A203967.P2609417184401849939` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203967 has offset 1).

The definition of A203967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A203967.P2609417184401849939

`a(n-1)+A010055(n+1)*A010051(A100995(n+1)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203967

/-- `a(n-1)+A010055(n+1)*A010051(A100995(n+1)+1)` -/
def P2609417184401849939.Spec : Prop :=
  ∀ n, P2609417184401849939.a n = A203967 (n + 1)

theorem P2609417184401849939.correct : P2609417184401849939.Spec := by
  intro n
  simp only [A203967, Nat.add_sub_cancel]

end A203967

/-! ## A203967.P10790073414954586801

`∑[A355937(n+1)]-1`
-/

namespace A203967.P10790073414954586801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A203967.P10790073414954586801

namespace A203967

/-- `∑[A355937(n+1)]-1` -/
def P10790073414954586801.Spec : Prop :=
  ∀ n, P10790073414954586801.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P466578750780201089

`∑[C(2, A010553(n+1))%2]`
-/

namespace A203967.P466578750780201089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A010553 (n + 1)).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P466578750780201089

namespace A203967

/-- `∑[C(2, A010553(n+1))%2]` -/
def P466578750780201089.Spec : Prop :=
  ∀ n, (P466578750780201089.a n : ℤ) = A203967 (n + 1)

end A203967

/-! ## A203967.P13297720135375292805

`∑[A010051(∏{e}[n+1, #+1])]`
-/

namespace A203967.P13297720135375292805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P13297720135375292805

namespace A203967

/-- `∑[A010051(∏{e}[n+1, #+1])]` -/
def P13297720135375292805.Spec : Prop :=
  ∀ n, P13297720135375292805.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P8123947025134923711

`∑[A064911(∏{e}[n+1, #+1]²)]`
-/

namespace A203967.P8123947025134923711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P8123947025134923711

namespace A203967

/-- `∑[A064911(∏{e}[n+1, #+1]²)]` -/
def P8123947025134923711.Spec : Prop :=
  ∀ n, P8123947025134923711.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P7195324105123257907

`∑[A010051(Δ[A006218(n)])]`
-/

namespace A203967.P7195324105123257907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P7195324105123257907

namespace A203967

/-- `∑[A010051(Δ[A006218(n)])]` -/
def P7195324105123257907.Spec : Prop :=
  ∀ n, P7195324105123257907.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P15566364263559212163

`∑[A010051(Δ[A054519(n)])]`
-/

namespace A203967.P15566364263559212163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P15566364263559212163

namespace A203967

/-- `∑[A010051(Δ[A054519(n)])]` -/
def P15566364263559212163.Spec : Prop :=
  ∀ n, P15566364263559212163.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P4978439507516355020

`∑[A010051(A000005(n+1))]`
-/

namespace A203967.P4978439507516355020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P4978439507516355020

namespace A203967

/-- `∑[A010051(A000005(n+1))]` -/
def P4978439507516355020.Spec : Prop :=
  ∀ n, P4978439507516355020.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P2206691577646807508

`∑[A303337(A000005(n+1)²)]`
-/

namespace A203967.P2206691577646807508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303337 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P2206691577646807508

namespace A203967

/-- `∑[A303337(A000005(n+1)²)]` -/
def P2206691577646807508.Spec : Prop :=
  ∀ n, P2206691577646807508.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P5216521186551171321

`∑[A010051(A032741(n+1)+1)]`
-/

namespace A203967.P5216521186551171321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P5216521186551171321

namespace A203967

/-- `∑[A010051(A032741(n+1)+1)]` -/
def P5216521186551171321.Spec : Prop :=
  ∀ n, P5216521186551171321.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P10992635780962081142

`∑[A014963(A140635(n+1))-1]`
-/

namespace A203967.P10992635780962081142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A140635 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P10992635780962081142

namespace A203967

/-- `∑[A014963(A140635(n+1))-1]` -/
def P10992635780962081142.Spec : Prop :=
  ∀ n, P10992635780962081142.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P9830087539070786658

`∑[A303337(2*A000005(n+1))]`
-/

namespace A203967.P9830087539070786658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303337 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P9830087539070786658

namespace A203967

/-- `∑[A303337(2*A000005(n+1))]` -/
def P9830087539070786658.Spec : Prop :=
  ∀ n, P9830087539070786658.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P1580743962903078497

`∑[A143519(A000005(n+1)²)²]`
-/

namespace A203967.P1580743962903078497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (A000005 (n + 1) ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P1580743962903078497

namespace A203967

/-- `∑[A143519(A000005(n+1)²)²]` -/
def P1580743962903078497.Spec : Prop :=
  ∀ n, P1580743962903078497.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P11657122569683122238

`∑[A101605(2*A000005(n+1)²)]`
-/

namespace A203967.P11657122569683122238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 * A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P11657122569683122238

namespace A203967

/-- `∑[A101605(2*A000005(n+1)²)]` -/
def P11657122569683122238.Spec : Prop :=
  ∀ n, P11657122569683122238.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P6822837123392652827

`∑[A216284(∏{e}[A000005(n+1)², #])]`
-/

namespace A203967.P6822837123392652827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P6822837123392652827

namespace A203967

/-- `∑[A216284(∏{e}[A000005(n+1)², #])]` -/
def P6822837123392652827.Spec : Prop :=
  ∀ n, P6822837123392652827.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P15034183230887643972

`∑[A010051(A070824(n+1)+2)]-1`
-/

namespace A203967.P15034183230887643972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A070824 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A203967.P15034183230887643972

namespace A203967

/-- `∑[A010051(A070824(n+1)+2)]-1` -/
def P15034183230887643972.Spec : Prop :=
  ∀ n, P15034183230887643972.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P13074659633577405609

`∑[A063524(A001222(∏{e}[n+1, #+1]))]`
-/

namespace A203967.P13074659633577405609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A001222 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P13074659633577405609

namespace A203967

/-- `∑[A063524(A001222(∏{e}[n+1, #+1]))]` -/
def P13074659633577405609.Spec : Prop :=
  ∀ n, P13074659633577405609.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P14151354323706463006

`∑[A032741(A089026(∏{e}[n+1, #+1]))]`
-/

namespace A203967.P14151354323706463006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A089026 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P14151354323706463006

namespace A203967

/-- `∑[A032741(A089026(∏{e}[n+1, #+1]))]` -/
def P14151354323706463006.Spec : Prop :=
  ∀ n, P14151354323706463006.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P15070733367710017252

`∑[A216284(A000005(∏{e}[n+1, #+1]))]`
-/

namespace A203967.P15070733367710017252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (A000005 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P15070733367710017252

namespace A203967

/-- `∑[A216284(A000005(∏{e}[n+1, #+1]))]` -/
def P15070733367710017252.Spec : Prop :=
  ∀ n, P15070733367710017252.a n = A203967 (n + 1)

end A203967

/-! ## A203967.P7651214030270493102

`∑[A010054(A232109(∏{e}[n+1, #+1]))]`
-/

namespace A203967.P7651214030270493102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A232109 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P7651214030270493102

namespace A203967

/-- `∑[A010054(A232109(∏{e}[n+1, #+1]))]` -/
def P7651214030270493102.Spec : Prop :=
  ∀ n, P7651214030270493102.a n = A203967 (n + 1)

end A203967

/-!
# A203968: Number of n X n 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203968, there is no canonical definition to state claims against.
-/

/-! ## A203968.P6076241034674074489

`A203975(∑[4*n]+1)`
-/

namespace A203968.P6076241034674074489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203968.P6076241034674074489

/-! ## A203968.P4324970709218251183

`record[A003982(n)*A203975(n+1)]`
-/

namespace A203968.P4324970709218251183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203968.P4324970709218251183

/-! ## A203968.P2492318275400315643

`A203975(A001844(n))+A185255(n)`
-/

namespace A203968.P2492318275400315643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A001844 n).toNat + A185255 n

end

end A203968.P2492318275400315643

/-! ## A203968.P5118645168112874477

`lcm(A033999(n), A203975(A001844(n)))`
-/

namespace A203968.P5118645168112874477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203975 (A001844 n).toNat)

end

end A203968.P5118645168112874477

/-! ## A203968.P10834040856748553652

`A007318(C(2, n+2))*A203975(A001844(n))`
-/

namespace A203968.P10834040856748553652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A203975 (A001844 n).toNat

end

end A203968.P10834040856748553652

/-!
# A203969: Number of n X 2 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203969, there is no canonical definition to state claims against.
-/

/-! ## A203969.P18069013878441489132

`A203975(∑[n+1]+2)`
-/

namespace A203969.P18069013878441489132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203969.P18069013878441489132

/-! ## A203969.P13113357784768673420

`record[A203975(abs(A201163(n)))]`
-/

namespace A203969.P13113357784768673420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203969.P13113357784768673420

/-! ## A203969.P5977560709577274382

`record[A203975(Δ[A003453(n+5)])]`
-/

namespace A203969.P5977560709577274382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203969.P5977560709577274382

/-! ## A203969.P425870093705053278

`record[A203975(record[A185180(n+2)])]`
-/

namespace A203969.P425870093705053278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203969.P425870093705053278

/-! ## A203969.P8480467902779002865

`record[A203975(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A203969.P8480467902779002865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203969.P8480467902779002865

/-!
# A203970: Number of nX3 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203970, there is no canonical definition to state claims against.
-/

/-! ## A203970.P12956021285287990884

`A203975(∑[n+2]+4)`
-/

namespace A203970.P12956021285287990884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203970.P12956021285287990884

/-! ## A203970.P12092984237117114070

`A203975(A167614(n+1))+A185255(n)`
-/

namespace A203970.P12092984237117114070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A167614 (n + 1)).toNat + A185255 n

end

end A203970.P12092984237117114070

/-! ## A203970.P244464600304445063

`A326688(n)+A203975(A167614(n+1))`
-/

namespace A203970.P244464600304445063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A203975 (A167614 (n + 1)).toNat

end

end A203970.P244464600304445063

/-! ## A203970.P2493808092068645048

`A203975(A167614(n+1))%A016941(n)`
-/

namespace A203970.P2493808092068645048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203975 (A167614 (n + 1)).toNat) (A016941 n)

end

end A203970.P2493808092068645048

/-! ## A203970.P9838783938225191908

`lcm(A033999(n), A203975(A167614(n+1)))`
-/

namespace A203970.P9838783938225191908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203975 (A167614 (n + 1)).toNat)

end

end A203970.P9838783938225191908

/-!
# A203971: Number of nX4 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203971, there is no canonical definition to state claims against.
-/

/-! ## A203971.P11647192048951467491

`A203975(A374004(n+1))`
-/

namespace A203971.P11647192048951467491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A374004 (n + 1)).toNat

end

end A203971.P11647192048951467491

/-! ## A203971.P582369177813190753

`A203975(A141214(n)+7)`
-/

namespace A203971.P582369177813190753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A141214 n + 7).toNat

end

end A203971.P582369177813190753

/-! ## A203971.P8931974821837165536

`A203975(A052905(n)+9)`
-/

namespace A203971.P8931974821837165536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A052905 n + 9).toNat

end

end A203971.P8931974821837165536

/-! ## A203971.P8851013413907084166

`A203975(A167614(n+2)+1)`
-/

namespace A203971.P8851013413907084166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A167614 (n + 2) + 1).toNat

end

end A203971.P8851013413907084166

/-! ## A203971.P7641887061922477098

`A203975(Δ[A023545(n+1)-n²])`
-/

namespace A203971.P7641887061922477098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (f1 (n + 1) - f1 n).toNat

end

end A203971.P7641887061922477098

/-!
# A203972: Number of nX5 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203972, there is no canonical definition to state claims against.
-/

/-! ## A203972.P11673364691725245148

`A203975(A374005(n+1))`
-/

namespace A203972.P11673364691725245148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A374005 (n + 1)).toNat

end

end A203972.P11673364691725245148

/-! ## A203972.P15634940127211655806

`A203975(A167499(n+3))`
-/

namespace A203972.P15634940127211655806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A167499 (n + 3)).toNat

end

end A203972.P15634940127211655806

/-! ## A203972.P6640119970255935033

`A203975(A155212(n)+13)`
-/

namespace A203972.P6640119970255935033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A155212 n + 13).toNat

end

end A203972.P6640119970255935033

/-! ## A203972.P4478940126151043864

`A203975(eq[4, A193592(n)])`
-/

namespace A203972.P4478940126151043864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203972.P4478940126151043864

/-! ## A203972.P13151840107567448233

`A203975(Δ[A023545(n+1)])`
-/

namespace A203972.P13151840107567448233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (f1 (n + 1) - f1 n).toNat

end

end A203972.P13151840107567448233

/-!
# A203973: Number of n X 6 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203973, there is no canonical definition to state claims against.
-/

/-! ## A203973.P11157868603266721439

`A203975(A374007(n+1))`
-/

namespace A203973.P11157868603266721439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A374007 (n + 1)).toNat

end

end A203973.P11157868603266721439

/-! ## A203973.P17577649525248677984

`A203975(eq[7, A131818(n+1)])`
-/

namespace A203973.P17577649525248677984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203973.P17577649525248677984

/-! ## A203973.P9476293185714798407

`A203975(A052905(n+3))`
-/

namespace A203973.P9476293185714798407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A052905 (n + 3)).toNat

end

end A203973.P9476293185714798407

/-! ## A203973.P8083490506930034030

`A203975(eq[3, A219347(n)])`
-/

namespace A203973.P8083490506930034030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203973.P8083490506930034030

/-! ## A203973.P13074396555009194475

`A203975(eq[5, A193592(n)])`
-/

namespace A203973.P13074396555009194475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203973.P13074396555009194475

/-!
# A203974: Number of nX7 0..2 arrays with every 1 immediately preceded by 0 to the left or above, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203974, there is no canonical definition to state claims against.
-/

/-! ## A203974.P7235507932918259571

`A203975(A374008(n+1))`
-/

namespace A203974.P7235507932918259571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (A374008 (n + 1)).toNat

end

end A203974.P7235507932918259571

/-! ## A203974.P13073933087712465319

`A203975(eq[11, A066657(n)])`
-/

namespace A203974.P13073933087712465319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203974.P13073933087712465319

/-! ## A203974.P4617619087545284929

`A203975(eq[8, A131818(n+1)])`
-/

namespace A203974.P4617619087545284929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203974.P4617619087545284929

/-! ## A203974.P4156389740306425542

`A203975(eq[4, A219347(n)])`
-/

namespace A203974.P4156389740306425542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203974.P4156389740306425542

/-! ## A203974.P12384506762628575906

`A203975(eq[6, A193592(n)])`
-/

namespace A203974.P12384506762628575906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203974.P12384506762628575906

/-!
# A203976: a(n) = 3*a(n-2) - a(n-4), a(0)=0, a(1)=1, a(2)=5, a(3)=4.

The programs for A203976, the canonical program `A203976.P1281983472835691840` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203976 has offset 0).

The definition of A203976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-4)` (program `A203976.P1281983472835691840`, by `A203976.P1281983472835691840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A203976.P1281983472835691840

`3*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203976

/-- `3*a(n-2)-a(n-4)` -/
def P1281983472835691840.Spec : Prop :=
  ∀ n, P1281983472835691840.a n = A203976 n

theorem P1281983472835691840.correct : P1281983472835691840.Spec := by
  intro n
  simp only [A203976]

end A203976

/-! ## A203976.P5049290444554087260

`A000032(n+1)-A061084(n)`
-/

namespace A203976.P5049290444554087260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A061084 n

end

end A203976.P5049290444554087260

namespace A203976

/-- `A000032(n+1)-A061084(n)` -/
def P5049290444554087260.Spec : Prop :=
  ∀ n, P5049290444554087260.a n = A203976 n

end A203976

/-! ## A203976.P11744226780446631963

`ogf((x+5x^2+x^3)/(1-3x^2+x^4))`
-/

namespace A203976.P11744226780446631963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 1] [1, 0, -3, 0, 1] n

end

end A203976.P11744226780446631963

namespace A203976

/-- `ogf((x+5x^2+x^3)/(1-3x^2+x^4))` -/
def P11744226780446631963.Spec : Prop :=
  ∀ n, P11744226780446631963.a n = A203976 n

end A203976

/-! ## A203976.P8740118348216250984

`lcm(5, a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A203976.P8740118348216250984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A203976.P8740118348216250984

namespace A203976

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P8740118348216250984.Spec : Prop :=
  ∀ n, P8740118348216250984.a n = A203976 n

end A203976

/-! ## A203976.P13981669373615290616

`A005013(n)*A176260(n)`
-/

namespace A203976.P13981669373615290616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A176260 n

end

end A203976.P13981669373615290616

namespace A203976

/-- `A005013(n)*A176260(n)` -/
def P13981669373615290616.Spec : Prop :=
  ∀ n, P13981669373615290616.a n = A203976 n

end A203976

/-! ## A203976.P13138121395669307807

`A000204(n+1)-A061084(n)`
-/

namespace A203976.P13138121395669307807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A061084 n

end

end A203976.P13138121395669307807

namespace A203976

/-- `A000204(n+1)-A061084(n)` -/
def P13138121395669307807.Spec : Prop :=
  ∀ n, P13138121395669307807.a n = A203976 n

end A203976

/-! ## A203976.P10242082655395025137

`A001610(n)+1-A061084(n)`
-/

namespace A203976.P10242082655395025137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + (1 - A061084 n)

end

end A203976.P10242082655395025137

namespace A203976

/-- `A001610(n)+1-A061084(n)` -/
def P10242082655395025137.Spec : Prop :=
  ∀ n, P10242082655395025137.a n = A203976 n

end A203976

/-! ## A203976.P13516510272532463249

`A090244(2*n)-A061084(n)`
-/

namespace A203976.P13516510272532463249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) - A061084 n

end

end A203976.P13516510272532463249

namespace A203976

/-- `A090244(2*n)-A061084(n)` -/
def P13516510272532463249.Spec : Prop :=
  ∀ n, P13516510272532463249.a n = A203976 n

end A203976

/-! ## A203976.P5285452406236466582

`abs(A075193(n)+Δ[A000032(n)])`
-/

namespace A203976.P5285452406236466582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n + (f1 (n + 1) - f1 n)|

end

end A203976.P5285452406236466582

namespace A203976

/-- `abs(A075193(n)+Δ[A000032(n)])` -/
def P5285452406236466582.Spec : Prop :=
  ∀ n, P5285452406236466582.a n = A203976 n

end A203976

/-! ## A203976.P14891638133002651564

`record[A302126(n+2)]-A061084(n)`
-/

namespace A203976.P14891638133002651564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061084 n

end

end A203976.P14891638133002651564

namespace A203976

/-- `record[A302126(n+2)]-A061084(n)` -/
def P14891638133002651564.Spec : Prop :=
  ∀ n, P14891638133002651564.a n = A203976 n

end A203976

/-! ## A203976.P8213739651109965620

`2*A000032(A109613(n))-A000032(n)`
-/

namespace A203976.P8213739651109965620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (A109613 n).toNat - A000032 n

end

end A203976.P8213739651109965620

namespace A203976

/-- `2*A000032(A109613(n))-A000032(n)` -/
def P8213739651109965620.Spec : Prop :=
  ∀ n, P8213739651109965620.a n = A203976 n

end A203976

/-! ## A203976.P7328876409255258533

`A005013(n+1)+A005013(n+1)-A005247(n)`
-/

namespace A203976.P7328876409255258533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (n + 1) + (A005013 (n + 1) - A005247 n)

end

end A203976.P7328876409255258533

namespace A203976

/-- `A005013(n+1)+A005013(n+1)-A005247(n)` -/
def P7328876409255258533.Spec : Prop :=
  ∀ n, P7328876409255258533.a n = A203976 n

end A203976

/-! ## A203976.P109638822398118253

`A108362(n+1)+A135992(n+1)-A061084(n)`
-/

namespace A203976.P109638822398118253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (n + 1) + (A135992 (n + 1) - A061084 n)

end

end A203976.P109638822398118253

namespace A203976

/-- `A108362(n+1)+A135992(n+1)-A061084(n)` -/
def P109638822398118253.Spec : Prop :=
  ∀ n, P109638822398118253.a n = A203976 n

end A203976

/-! ## A203976.P6109697524167216110

`A082587(2*n+1)-A061084(n)`
-/

namespace A203976.P6109697524167216110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * n + 1) - A061084 n

end

end A203976.P6109697524167216110

namespace A203976

/-- `A082587(2*n+1)-A061084(n)` -/
def P6109697524167216110.Spec : Prop :=
  ∀ n, P6109697524167216110.a n = A203976 n

end A203976

/-! ## A203976.P4988318904438016902

`A000285(n)-(A061084(n)+A000045(n))`
-/

namespace A203976.P4988318904438016902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - (A061084 n + A000045 n)

end

end A203976.P4988318904438016902

namespace A203976

/-- `A000285(n)-(A061084(n)+A000045(n))` -/
def P4988318904438016902.Spec : Prop :=
  ∀ n, P4988318904438016902.a n = A203976 n

end A203976

/-! ## A203976.P2852487368887965705

`A022096(n)-(A061084(n)+A022086(n))`
-/

namespace A203976.P2852487368887965705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n - (A061084 n + A022086 n)

end

end A203976.P2852487368887965705

namespace A203976

/-- `A022096(n)-(A061084(n)+A022086(n))` -/
def P2852487368887965705.Spec : Prop :=
  ∀ n, P2852487368887965705.a n = A203976 n

end A203976

/-!
# A203978: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203978, there is no canonical definition to state claims against.
-/

/-! ## A203978.P2068448940904975364

`A204101(n+1)/6`
-/

namespace A203978.P2068448940904975364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204101 (n + 1) : ℚ) / 6

end

end A203978.P2068448940904975364

/-! ## A203978.P15600257452945760126

`A203984(∑[4*n]+1)`
-/

namespace A203978.P15600257452945760126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203978.P15600257452945760126

/-! ## A203978.P1218282320494906270

`A204106(∑[4*n]+1)/6`
-/

namespace A203978.P1218282320494906270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204106 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 6

end

end A203978.P1218282320494906270

/-! ## A203978.P3935984657265866031

`record[gcd(A003987(n), A203984(n+1))]`
-/

namespace A203978.P3935984657265866031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A203984 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203978.P3935984657265866031

/-! ## A203978.P12816442823314017292

`lcm(A000244(n), A203984(A001844(n)))`
-/

namespace A203978.P12816442823314017292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A203984 (A001844 n).toNat)

end

end A203978.P12816442823314017292

/-!
# A203979: Number of (n+1)X4 0..2 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203979, the canonical program `A203979.P14100281769445868681` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203979 has offset 1).

The definition of A203979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203979.P14100281769445868681

`96*9^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203979

/-- `96*9^n` -/
def P14100281769445868681.Spec : Prop :=
  ∀ n, (P14100281769445868681.a n : ℤ) = A203979 (n + 1)

theorem P14100281769445868681.correct : P14100281769445868681.Spec := by
  intro n
  simp only [A203979, Nat.add_sub_cancel]

end A203979

/-!
# A203980: Number of (n+1) X 5 0..2 arrays with no 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203980, there is no canonical definition to state claims against.
-/

/-! ## A203980.P691710725477448380

`A204102(n+1)/6`
-/

namespace A203980.P691710725477448380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204102 (n + 1) : ℚ) / 6

end

end A203980.P691710725477448380

/-! ## A203980.P3018824408597394276

`A203984(A374004(n+1))`
-/

namespace A203980.P3018824408597394276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A374004 (n + 1)).toNat

end

end A203980.P3018824408597394276

/-! ## A203980.P4765048274915069332

`A203984(A145018(n+4))`
-/

namespace A203980.P4765048274915069332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A145018 (n + 4)).toNat

end

end A203980.P4765048274915069332

/-! ## A203980.P13654125921259231074

`A203984(A052905(n)+9)`
-/

namespace A203980.P13654125921259231074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A052905 n + 9).toNat

end

end A203980.P13654125921259231074

/-! ## A203980.P8316560504400060088

`A203984(A167614(n+2)+1)`
-/

namespace A203980.P8316560504400060088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A167614 (n + 2) + 1).toNat

end

end A203980.P8316560504400060088

/-!
# A203981: Number of (n+1) X 6 0..2 arrays with no 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203981, there is no canonical definition to state claims against.
-/

/-! ## A203981.P18402656174376158250

`A204103(n+1)/6`
-/

namespace A203981.P18402656174376158250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204103 (n + 1) : ℚ) / 6

end

end A203981.P18402656174376158250

/-! ## A203981.P4752406517483172435

`A203984(A374005(n+1))`
-/

namespace A203981.P4752406517483172435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A374005 (n + 1)).toNat

end

end A203981.P4752406517483172435

/-! ## A203981.P9139738773084927354

`A203984(A167499(n+3))`
-/

namespace A203981.P9139738773084927354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A167499 (n + 3)).toNat

end

end A203981.P9139738773084927354

/-! ## A203981.P17325932100263260690

`A203984(eq[7, A066657(n)])`
-/

namespace A203981.P17325932100263260690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203981.P17325932100263260690

/-! ## A203981.P4426984144581253007

`A203984(Δ[A264443(n)])`
-/

namespace A203981.P4426984144581253007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (f1 (n + 1) - f1 n).toNat

end

end A203981.P4426984144581253007

/-!
# A203982: Number of (n+1)X7 0..2 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203982, there is no canonical definition to state claims against.
-/

/-! ## A203982.P7948518959829479299

`A204104(n+1)/6`
-/

namespace A203982.P7948518959829479299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204104 (n + 1) : ℚ) / 6

end

end A203982.P7948518959829479299

/-! ## A203982.P12781450401263256351

`A203984(A374007(n+1))`
-/

namespace A203982.P12781450401263256351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A374007 (n + 1)).toNat

end

end A203982.P12781450401263256351

/-! ## A203982.P11156864837836666346

`A203984(A000217(n+5)+6)`
-/

namespace A203982.P11156864837836666346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A000217 (n + 5) + 6).toNat

end

end A203982.P11156864837836666346

/-! ## A203982.P9051655585889215644

`A203984(eq[7, A131818(n+1)])`
-/

namespace A203982.P9051655585889215644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203982.P9051655585889215644

/-! ## A203982.P2930026591719399326

`A203984(eq[5, A193592(n)])`
-/

namespace A203982.P2930026591719399326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203982.P2930026591719399326

/-!
# A203983: Number of (n+1)X8 0..2 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203983, there is no canonical definition to state claims against.
-/

/-! ## A203983.P8285344539269161355

`A204105(n+1)/6`
-/

namespace A203983.P8285344539269161355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204105 (n + 1) : ℚ) / 6

end

end A203983.P8285344539269161355

/-! ## A203983.P6284753616913820125

`A203984(A374008(n+1))`
-/

namespace A203983.P6284753616913820125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (A374008 (n + 1)).toNat

end

end A203983.P6284753616913820125

/-! ## A203983.P4595241068317821119

`A203984(eq[8, A131818(n+1)])`
-/

namespace A203983.P4595241068317821119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203983.P4595241068317821119

/-! ## A203983.P15624413106636048755

`A203984(eq[6, A193592(n)])`
-/

namespace A203983.P15624413106636048755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203983.P15624413106636048755

/-! ## A203983.P18023907327120652289

`A203984(eq[10, A185782(n+1)])`
-/

namespace A203983.P18023907327120652289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203983.P18023907327120652289

/-!
# A203984: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A203984, there is no canonical definition to state claims against.
-/

/-! ## A203984.P1999555965613303470

`A204106(n+1)/6`
-/

namespace A203984.P1999555965613303470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204106 (n + 1) : ℚ) / 6

end

end A203984.P1999555965613303470

/-! ## A203984.P2750276279952053916

`A255591(A204106(n+1))`
-/

namespace A203984.P2750276279952053916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A204106 (n + 1)).toNat

end

end A203984.P2750276279952053916

/-! ## A203984.P11678820026275391475

`A300236(lcm(2, A204106(n+1)))`
-/

namespace A203984.P11678820026275391475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (Int.lcm 2 (A204106 (n + 1)))

end

end A203984.P11678820026275391475

/-! ## A203984.P15316740449956942588

`A300236(A204106(n+1)+A185044(n))`
-/

namespace A203984.P15316740449956942588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (A204106 (n + 1) + A185044 n).toNat

end

end A203984.P15316740449956942588

/-! ## A203984.P17507645212227770986

`A300236(A204106(n+1)+A185245(n))`
-/

namespace A203984.P17507645212227770986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (A204106 (n + 1) + A185245 n).toNat

end

end A203984.P17507645212227770986

/-!
# A203985: Lexicographically earliest permutation of the primes such that successive absolute differences yield a permutation of all nonprime numbers.

The programs for A203985, there is no canonical definition to state claims against.
-/

/-! ## A203985.P16615744282182892593

`A204137(∑[n]+1)`
-/

namespace A203985.P16615744282182892593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203985.P16615744282182892593

/-! ## A203985.P11887851790979934406

`p?[A204137(n+1)]`
-/

namespace A203985.P11887851790979934406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A203985.P11887851790979934406

/-! ## A203985.P4126355157043590407

`filter[A204137(n+1), A010051(#)]`
-/

namespace A203985.P4126355157043590407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A203985.P4126355157043590407

/-! ## A203985.P1843731378223521287

`A204137(A000124(n))*A224813(n)`
-/

namespace A203985.P1843731378223521287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204137 (A000124 n).toNat * A224813 n

end

end A203985.P1843731378223521287

/-!
# A203986: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of partitions of {1,2,...,k*n} into n k-element subsets having the same sum.

The programs for A203986, there is no canonical definition to state claims against.
-/

/-! ## A203986.P17383087617413387158

`A366767(A209349(n)+11)`
-/

namespace A203986.P17383087617413387158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366767 (A209349 n + 11).toNat

end

end A203986.P17383087617413387158

/-! ## A203986.P4056859145412539754

`A093323(A181783(n))`
-/

namespace A203986.P4056859145412539754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093323 (A181783 n).toNat

end

end A203986.P4056859145412539754

/-! ## A203986.P10082284479785728396

`A359902(A331562(n))`
-/

namespace A203986.P10082284479785728396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (A331562 n).toNat

end

end A203986.P10082284479785728396

/-! ## A203986.P14212039066510486486

`A365746(A098825(n+1))`
-/

namespace A203986.P14212039066510486486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365746 (A098825 (n + 1)).toNat

end

end A203986.P14212039066510486486

/-! ## A203986.P5298671720458421209

`A353846(A355614(n)+1)`
-/

namespace A203986.P5298671720458421209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A355614 n + 1).toNat

end

end A203986.P5298671720458421209

/-!
# A203990: Symmetric matrix based on f(i,j) = (i+j)*min(i,j), by antidiagonals.

The programs for A203990, the canonical program `A203990.P14919765066385001405` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203990 has offset 1).

The definition of A203990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203990.P7370241939580719318

`(comp[∑[n]]-n)*A003983(n+1)`
-/

namespace A203990.P7370241939580719318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A003983 (n + 1)

end

end A203990.P7370241939580719318

namespace A203990

/-- `(comp[∑[n]]-n)*A003983(n+1)` -/
def P7370241939580719318.Spec : Prop :=
  ∀ n, P7370241939580719318.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P14919765066385001405

`A106314(n+1)+A003991(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A203990

/-- `A106314(n+1)+A003991(n+1)` -/
def P14919765066385001405.Spec : Prop :=
  ∀ n, P14919765066385001405.a n = A203990 (n + 1)

theorem P14919765066385001405.correct : P14919765066385001405.Spec := by
  intro n
  simp only [A203990, Nat.add_sub_cancel]

end A203990

/-! ## A203990.P1248232401890822656

`A003991(n+1)+A003983(n+1)²`
-/

namespace A203990.P1248232401890822656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A003983 (n + 1) ^ 2

end

end A203990.P1248232401890822656

namespace A203990

/-- `A003991(n+1)+A003983(n+1)²` -/
def P1248232401890822656.Spec : Prop :=
  ∀ n, P1248232401890822656.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P5954819254209218034

`A003991(n+1)+(A004197(n)+1)²`
-/

namespace A203990.P5954819254209218034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A004197 n + 1) ^ 2

end

end A203990.P5954819254209218034

namespace A203990

/-- `A003991(n+1)+(A004197(n)+1)²` -/
def P5954819254209218034.Spec : Prop :=
  ∀ n, P5954819254209218034.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P345629305307001912

`A003983(n+1)²+A059036(n)+1`
-/

namespace A203990.P345629305307001912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) ^ 2 + (A059036 n + 1)

end

end A203990.P345629305307001912

namespace A203990

/-- `A003983(n+1)²+A059036(n)+1` -/
def P345629305307001912.Spec : Prop :=
  ∀ n, P345629305307001912.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P10856072708879619291

`A003991(n+1)+A168281(n+1)/2`
-/

namespace A203990.P10856072708879619291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) + (A168281 (n + 1) : ℚ) / 2

end

end A203990.P10856072708879619291

namespace A203990

/-- `A003991(n+1)+A168281(n+1)/2` -/
def P10856072708879619291.Spec : Prop :=
  ∀ n, P10856072708879619291.a n = (A203990 (n + 1) : ℚ)

theorem P10856072708879619291.correct : P10856072708879619291.Spec := by
  intro n
  simp only [A203990, Nat.add_sub_cancel, A203990.P10856072708879619291.a, A203990.P14919765066385001405.a, A003991, A003991.P6365127437582401781.a, A106314, A106314.P15491378883024418281.a, A168281, A168281.P1468629803331935945.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203990

/-! ## A203990.P13477495431303687022

`(A003056(n)+2)*A008619(A157458(n))`
-/

namespace A203990.P13477495431303687022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 2) * A008619 (A157458 n).toNat

end

end A203990.P13477495431303687022

namespace A203990

/-- `(A003056(n)+2)*A008619(A157458(n))` -/
def P13477495431303687022.Spec : Prop :=
  ∀ n, P13477495431303687022.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P12625851840132675024

`(A002024(n+1)+1)*A002024(A106255(n+1))`
-/

namespace A203990.P12625851840132675024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) + 1) * A002024 (A106255 (n + 1)).toNat

end

end A203990.P12625851840132675024

namespace A203990

/-- `(A002024(n+1)+1)*A002024(A106255(n+1))` -/
def P12625851840132675024.Spec : Prop :=
  ∀ n, P12625851840132675024.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P5735147455741644452

`(A003057(n+2)-A051125(n+1))*A003057(n+2)`
-/

namespace A203990.P5735147455741644452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A051125 (n + 1)) * A003057 (n + 2)

end

end A203990.P5735147455741644452

namespace A203990

/-- `(A003057(n+2)-A051125(n+1))*A003057(n+2)` -/
def P5735147455741644452.Spec : Prop :=
  ∀ n, P5735147455741644452.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P10208556908318169665

`A003983(n+1)²+A203996(n+1)-A003983(n+1)`
-/

namespace A203990.P10208556908318169665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) ^ 2 + (A203996 (n + 1) - A003983 (n + 1))

end

end A203990.P10208556908318169665

namespace A203990

/-- `A003983(n+1)²+A203996(n+1)-A003983(n+1)` -/
def P10208556908318169665.Spec : Prop :=
  ∀ n, P10208556908318169665.a n = A203990 (n + 1)

end A203990

/-! ## A203990.P14854920794634414031

`A003991(n+1)+(A003991(n+1)/A051125(n+1))²`
-/

namespace A203990.P14854920794634414031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) + ((A003991 (n + 1) : ℚ) / (A051125 (n + 1) : ℚ)) ^ 2

end

end A203990.P14854920794634414031

namespace A203990

/-- `A003991(n+1)+(A003991(n+1)/A051125(n+1))²` -/
def P14854920794634414031.Spec : Prop :=
  ∀ n, P14854920794634414031.a n = (A203990 (n + 1) : ℚ)

end A203990

/-! ## A203990.P14731375341131871340

`A003057(n+2)*A240236(A168281(n+1)+2)`
-/

namespace A203990.P14731375341131871340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A240236 (A168281 (n + 1) + 2).toNat

end

end A203990.P14731375341131871340

namespace A203990

/-- `A003057(n+2)*A240236(A168281(n+1)+2)` -/
def P14731375341131871340.Spec : Prop :=
  ∀ n, P14731375341131871340.a n = A203990 (n + 1)

end A203990

/-!
# A203994: Symmetric matrix based on f(i,j) = (i+j)*min{i,j}, by antidiagonals.

The programs for A203994, the canonical program `A203994.P3590551673523168265` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203994 has offset 1).

The definition of A203994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203994.P582786767737759135

`1-abs(∑[2*n]%comp[∑[n]]-n)`
-/

namespace A203994.P582786767737759135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |(((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)|

end

end A203994.P582786767737759135

namespace A203994

/-- `1-abs(∑[2*n]%comp[∑[n]]-n)` -/
def P582786767737759135.Spec : Prop :=
  ∀ n, P582786767737759135.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P11189125552631410271

`1-abs(∑[char[∑[n]]]²-(2*n+1))`
-/

namespace A203994.P11189125552631410271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n + 1 : ℤ)|

end

end A203994.P11189125552631410271

namespace A203994

/-- `1-abs(∑[char[∑[n]]]²-(2*n+1))` -/
def P11189125552631410271.Spec : Prop :=
  ∀ n, P11189125552631410271.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P4019320593544226312

`-(A049581(n)+1-4/2)`
-/

namespace A203994.P4019320593544226312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A049581 n : ℚ) + (1 - (4 : ℚ) / 2))

end

end A203994.P4019320593544226312

namespace A203994

/-- `-(A049581(n)+1-4/2)` -/
def P4019320593544226312.Spec : Prop :=
  ∀ n, P4019320593544226312.a n = (A203994 (n + 1) : ℚ)

end A203994

/-! ## A203994.P3590551673523168265

`A024000(A049581(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203994

/-- `A024000(A049581(n))` -/
def P3590551673523168265.Spec : Prop :=
  ∀ n, P3590551673523168265.a n = A203994 (n + 1)

theorem P3590551673523168265.correct : P3590551673523168265.Spec := by
  intro n
  simp only [A203994, Nat.add_sub_cancel]

end A203994

/-! ## A203994.P3981816206873175194

`A022958(A143182(n))`
-/

namespace A203994.P3981816206873175194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A143182 n).toNat

end

end A203994.P3981816206873175194

namespace A203994

/-- `A022958(A143182(n))` -/
def P3981816206873175194.Spec : Prop :=
  ∀ n, P3981816206873175194.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P9328101435911463800

`A024000(abs(A114327(n)))`
-/

namespace A203994.P9328101435911463800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 |A114327 n|.toNat

end

end A203994.P9328101435911463800

namespace A203994

/-- `A024000(abs(A114327(n)))` -/
def P9328101435911463800.Spec : Prop :=
  ∀ n, P9328101435911463800.a n = A203994 (n + 1)

theorem P9328101435911463800.correct : P9328101435911463800.Spec := by
  intro n
  simp only [A203994, Nat.add_sub_cancel, A203994.P9328101435911463800.a, A203994.P3590551673523168265.a, A024000, A024000.P8748414335487061084.a, A049581, A049581.P10108526043471454015.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203994

/-! ## A203994.P16723720961309745069

`-A023443(abs(A114327(n)))`
-/

namespace A203994.P16723720961309745069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A023443 |A114327 n|.toNat

end

end A203994.P16723720961309745069

namespace A203994

/-- `-A023443(abs(A114327(n)))` -/
def P16723720961309745069.Spec : Prop :=
  ∀ n, P16723720961309745069.a n = A203994 (n + 1)

theorem P16723720961309745069.correct : P16723720961309745069.Spec := by
  intro n
  simp only [A203994, Nat.add_sub_cancel, A203994.P16723720961309745069.a, A203994.P3590551673523168265.a, A023443, A023443.P2966051066474347068.a, A024000, A024000.P8748414335487061084.a, A049581, A049581.P10108526043471454015.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203994

/-! ## A203994.P11062056354754943364

`A024000(abs(n-A061579(n)))`
-/

namespace A203994.P11062056354754943364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 |(n : ℤ) - A061579 n|.toNat

end

end A203994.P11062056354754943364

namespace A203994

/-- `A024000(abs(n-A061579(n)))` -/
def P11062056354754943364.Spec : Prop :=
  ∀ n, P11062056354754943364.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P12132305522006716710

`-A023443(abs(n-A061579(n)))`
-/

namespace A203994.P12132305522006716710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A023443 |(n : ℤ) - A061579 n|.toNat

end

end A203994.P12132305522006716710

namespace A203994

/-- `-A023443(abs(n-A061579(n)))` -/
def P12132305522006716710.Spec : Prop :=
  ∀ n, P12132305522006716710.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P15557899475342007489

`ceil(A040001(n)/2-A049581(n))`
-/

namespace A203994.P15557899475342007489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040001 n : ℚ) / 2 - (A049581 n : ℚ)⌉

end

end A203994.P15557899475342007489

namespace A203994

/-- `ceil(A040001(n)/2-A049581(n))` -/
def P15557899475342007489.Spec : Prop :=
  ∀ n, P15557899475342007489.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P1230427396197324317

`(1-A049581(n))%A008864(n+1)`
-/

namespace A203994.P1230427396197324317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A049581 n) (A008864 (n + 1))

end

end A203994.P1230427396197324317

namespace A203994

/-- `(1-A049581(n))%A008864(n+1)` -/
def P1230427396197324317.Spec : Prop :=
  ∀ n, P1230427396197324317.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P2674202268545763370

`(2-A143182(n))%A000040(n+1)`
-/

namespace A203994.P2674202268545763370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A143182 n) (A000040 (n + 1))

end

end A203994.P2674202268545763370

namespace A203994

/-- `(2-A143182(n))%A000040(n+1)` -/
def P2674202268545763370.Spec : Prop :=
  ∀ n, P2674202268545763370.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P996157463308638994

`A024000(abs(A038722(n+1)-1-n))`
-/

namespace A203994.P996157463308638994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 |A038722 (n + 1) - 1 - (n : ℤ)|.toNat

end

end A203994.P996157463308638994

namespace A203994

/-- `A024000(abs(A038722(n+1)-1-n))` -/
def P996157463308638994.Spec : Prop :=
  ∀ n, P996157463308638994.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P13282860386481329382

`A024000(A053188(2*n+1))`
-/

namespace A203994.P13282860386481329382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A053188 (2 * n + 1)).toNat

end

end A203994.P13282860386481329382

namespace A203994

/-- `A024000(A053188(2*n+1))` -/
def P13282860386481329382.Spec : Prop :=
  ∀ n, P13282860386481329382.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P1855142031864084998

`xor(1-A049581(n), A007814(2*n+1))`
-/

namespace A203994.P1855142031864084998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - A049581 n) (A007814 (2 * n + 1))

end

end A203994.P1855142031864084998

namespace A203994

/-- `xor(1-A049581(n), A007814(2*n+1))` -/
def P1855142031864084998.Spec : Prop :=
  ∀ n, P1855142031864084998.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P7646243373612129165

`A048272(A116588(n))`
-/

namespace A203994.P7646243373612129165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A116588 n).toNat

end

end A203994.P7646243373612129165

namespace A203994

/-- `A048272(A116588(n))` -/
def P7646243373612129165.Spec : Prop :=
  ∀ n, P7646243373612129165.a n = A203994 (n + 1)

end A203994

/-! ## A203994.P8593694482733662407

`A005590(A271709(n))`
-/

namespace A203994.P8593694482733662407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A271709 n).toNat

end

end A203994.P8593694482733662407

namespace A203994

/-- `A005590(A271709(n))` -/
def P8593694482733662407.Spec : Prop :=
  ∀ n, P8593694482733662407.a n = A203994 (n + 1)

end A203994

/-!
# A203996: Symmetric matrix based on f(i,j)=min{i(j+1),j(i+1)}, by antidiagonals.

The programs for A203996, the canonical program `A203996.P4927933465799713350` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203996 has offset 1).

The definition of A203996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203996.P11408847414566927828

`A204000(n+1)+1`
-/

namespace A203996.P11408847414566927828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204000 (n + 1) + 1

end

end A203996.P11408847414566927828

namespace A203996

/-- `A204000(n+1)+1` -/
def P11408847414566927828.Spec : Prop :=
  ∀ n, P11408847414566927828.a n = A203996 (n + 1)

theorem P11408847414566927828.correct : P11408847414566927828.Spec := by
  intro n
  simp only [A203996, Nat.add_sub_cancel, A203996.P11408847414566927828.a, A203996.P4927933465799713350.a, A094053, A094053.P7632435431613033853.a, A185908, A185908.P15290961818141262910.a, A204000, A204000.P8902930415265516511.a, A002260, A002260.P9170571874073898642.a, A036561, A036561.P7490084913005378529.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203996

/-! ## A203996.P11144331175888621593

`A020725(A204000(n+1))`
-/

namespace A203996.P11144331175888621593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A204000 (n + 1)).toNat

end

end A203996.P11144331175888621593

namespace A203996

/-- `A020725(A204000(n+1))` -/
def P11144331175888621593.Spec : Prop :=
  ∀ n, P11144331175888621593.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P16860622933858947605

`A204006(n+1)+A077028(n)`
-/

namespace A203996.P16860622933858947605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + A077028 n

end

end A203996.P16860622933858947605

namespace A203996

/-- `A204006(n+1)+A077028(n)` -/
def P16860622933858947605.Spec : Prop :=
  ∀ n, P16860622933858947605.a n = A203996 (n + 1)

theorem P16860622933858947605.correct : P16860622933858947605.Spec := by
  intro n
  simp only [A203996, Nat.add_sub_cancel, A203996.P16860622933858947605.a, A203996.P4927933465799713350.a, A077028, A077028.P18404356772921913843.a, A094053, A094053.P7632435431613033853.a, A185908, A185908.P15290961818141262910.a, A204006, A204006.P4882152759025976317.a, A002260, A002260.P9170571874073898642.a, A036561, A036561.P7490084913005378529.a, A204002, A204002.P9170286212412624765.a, A004736, A004736.P10337537277358081527.a, A176270, A176270.P15264438552937889960.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203996

/-! ## A203996.P12851713778151741267

`A204002(n+1)-A176270(n)`
-/

namespace A203996.P12851713778151741267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204002 (n + 1) - A176270 n

end

end A203996.P12851713778151741267

namespace A203996

/-- `A204002(n+1)-A176270(n)` -/
def P12851713778151741267.Spec : Prop :=
  ∀ n, P12851713778151741267.a n = A203996 (n + 1)

theorem P12851713778151741267.correct : P12851713778151741267.Spec := by
  intro n
  simp only [A203996, Nat.add_sub_cancel, A203996.P12851713778151741267.a, A203996.P4927933465799713350.a, A094053, A094053.P7632435431613033853.a, A176270, A176270.P15264438552937889960.a, A185908, A185908.P15290961818141262910.a, A204002, A204002.P9170286212412624765.a, A002260, A002260.P9170571874073898642.a, A036561, A036561.P7490084913005378529.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203996

/-! ## A203996.P13263649284262638657

`A003991(n+1)+A003983(n+1)`
-/

namespace A203996.P13263649284262638657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A003983 (n + 1)

end

end A203996.P13263649284262638657

namespace A203996

/-- `A003991(n+1)+A003983(n+1)` -/
def P13263649284262638657.Spec : Prop :=
  ∀ n, P13263649284262638657.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P15823172675172780061

`A003991(n+1)+A004197(n)+1`
-/

namespace A203996.P15823172675172780061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A004197 n + 1)

end

end A203996.P15823172675172780061

namespace A203996

/-- `A003991(n+1)+A004197(n)+1` -/
def P15823172675172780061.Spec : Prop :=
  ∀ n, P15823172675172780061.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P5127274674577846441

`A003983(n+1)+A059036(n)+1`
-/

namespace A203996.P5127274674577846441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A059036 n + 1)

end

end A203996.P5127274674577846441

namespace A203996

/-- `A003983(n+1)+A059036(n)+1` -/
def P5127274674577846441.Spec : Prop :=
  ∀ n, P5127274674577846441.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P3941464629946719017

`A204006(n+1)+A004247(n)+1`
-/

namespace A203996.P3941464629946719017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + (A004247 n + 1)

end

end A203996.P3941464629946719017

namespace A203996

/-- `A204006(n+1)+A004247(n)+1` -/
def P3941464629946719017.Spec : Prop :=
  ∀ n, P3941464629946719017.a n = A203996 (n + 1)

theorem P3941464629946719017.correct : P3941464629946719017.Spec := by
  intro n
  simp only [A203996, Nat.add_sub_cancel, A203996.P3941464629946719017.a, A203996.P4927933465799713350.a, A004247, A004247.P2751605162508615148.a, A094053, A094053.P7632435431613033853.a, A185908, A185908.P15290961818141262910.a, A204006, A204006.P4882152759025976317.a, A002260, A002260.P9170571874073898642.a, A036561, A036561.P7490084913005378529.a, A204002, A204002.P9170286212412624765.a, A004736, A004736.P10337537277358081527.a, A176270, A176270.P15264438552937889960.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203996

/-! ## A203996.P14016359907809610056

`A203998(n+1)+A203994(n+1)`
-/

namespace A203996.P14016359907809610056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203998 (n + 1) + A203994 (n + 1)

end

end A203996.P14016359907809610056

namespace A203996

/-- `A203998(n+1)+A203994(n+1)` -/
def P14016359907809610056.Spec : Prop :=
  ∀ n, P14016359907809610056.a n = A203996 (n + 1)

theorem P14016359907809610056.correct : P14016359907809610056.Spec := by
  intro n
  simp only [A203996, Nat.add_sub_cancel, A203996.P14016359907809610056.a, A203996.P4927933465799713350.a, A094053, A094053.P7632435431613033853.a, A185908, A185908.P15290961818141262910.a, A203994, A203994.P3590551673523168265.a, A203998, A203998.P4307443962499752240.a, A002260, A002260.P9170571874073898642.a, A024000, A024000.P8748414335487061084.a, A036561, A036561.P7490084913005378529.a, A049581, A049581.P10108526043471454015.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203996

/-! ## A203996.P13711768936067070809

`A204250(n+1)+1-A003984(n)`
-/

namespace A203996.P13711768936067070809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + (1 - A003984 n)

end

end A203996.P13711768936067070809

namespace A203996

/-- `A204250(n+1)+1-A003984(n)` -/
def P13711768936067070809.Spec : Prop :=
  ∀ n, P13711768936067070809.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P16670034851064548085

`A203998(n+1)+1-A049581(n)`
-/

namespace A203996.P16670034851064548085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203998 (n + 1) + (1 - A049581 n)

end

end A203996.P16670034851064548085

namespace A203996

/-- `A203998(n+1)+1-A049581(n)` -/
def P16670034851064548085.Spec : Prop :=
  ∀ n, P16670034851064548085.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P13892905153151758986

`(A003984(n)+2)*A003983(n+1)`
-/

namespace A203996.P13892905153151758986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003984 n + 2) * A003983 (n + 1)

end

end A203996.P13892905153151758986

namespace A203996

/-- `(A003984(n)+2)*A003983(n+1)` -/
def P13892905153151758986.Spec : Prop :=
  ∀ n, P13892905153151758986.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P4927933465799713350

`A094053(n+1)+A185908(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A203996

/-- `A094053(n+1)+A185908(n+1)+1` -/
def P4927933465799713350.Spec : Prop :=
  ∀ n, P4927933465799713350.a n = A203996 (n + 1)

theorem P4927933465799713350.correct : P4927933465799713350.Spec := by
  intro n
  simp only [A203996, Nat.add_sub_cancel]

end A203996

/-! ## A203996.P13474584400100190423

`(A051125(n+1)+1)*A003983(n+1)`
-/

namespace A203996.P13474584400100190423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051125 (n + 1) + 1) * A003983 (n + 1)

end

end A203996.P13474584400100190423

namespace A203996

/-- `(A051125(n+1)+1)*A003983(n+1)` -/
def P13474584400100190423.Spec : Prop :=
  ∀ n, P13474584400100190423.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P14379726415250127050

`(A051125(n+1)+1)*A008619(A157458(n))`
-/

namespace A203996.P14379726415250127050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051125 (n + 1) + 1) * A008619 (A157458 n).toNat

end

end A203996.P14379726415250127050

namespace A203996

/-- `(A051125(n+1)+1)*A008619(A157458(n))` -/
def P14379726415250127050.Spec : Prop :=
  ∀ n, P14379726415250127050.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P1898144734237166580

`(A143182(n)+A003983(n+1))*A003983(n+1)`
-/

namespace A203996.P1898144734237166580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143182 n + A003983 (n + 1)) * A003983 (n + 1)

end

end A203996.P1898144734237166580

namespace A203996

/-- `(A143182(n)+A003983(n+1))*A003983(n+1)` -/
def P1898144734237166580.Spec : Prop :=
  ∀ n, P1898144734237166580.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P17327400467054842437

`A003991(n+1)+A003991(n+1)/A051125(n+1)`
-/

namespace A203996.P17327400467054842437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) + (A003991 (n + 1) : ℚ) / (A051125 (n + 1) : ℚ)

end

end A203996.P17327400467054842437

namespace A203996

/-- `A003991(n+1)+A003991(n+1)/A051125(n+1)` -/
def P17327400467054842437.Spec : Prop :=
  ∀ n, P17327400467054842437.a n = (A203996 (n + 1) : ℚ)

end A203996

/-! ## A203996.P5916810389473337599

`(A051125(n+1)-A049581(n))*A020725(A051125(n+1))`
-/

namespace A203996.P5916810389473337599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051125 (n + 1) - A049581 n) * A020725 (A051125 (n + 1)).toNat

end

end A203996.P5916810389473337599

namespace A203996

/-- `(A051125(n+1)-A049581(n))*A020725(A051125(n+1))` -/
def P5916810389473337599.Spec : Prop :=
  ∀ n, P5916810389473337599.a n = A203996 (n + 1)

end A203996

/-! ## A203996.P13233977863896617069

`A059036(A182834(n+1))+1`
-/

namespace A203996.P13233977863896617069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (A182834 (n + 1)).toNat + 1

end

end A203996.P13233977863896617069

namespace A203996

/-- `A059036(A182834(n+1))+1` -/
def P13233977863896617069.Spec : Prop :=
  ∀ n, P13233977863896617069.a n = A203996 (n + 1)

end A203996

/-!
# A203998: Symmetric matrix based on f(i,j)=max{i(j+1)-1,j(i+1)-1}, by antidiagonals.

The programs for A203998, the canonical program `A203998.P4307443962499752240` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203998 has offset 1).

The definition of A203998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203998.P10792146262865445516

`A003991(n+1)+A003984(n)`
-/

namespace A203998.P10792146262865445516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A003984 n

end

end A203998.P10792146262865445516

namespace A203998

/-- `A003991(n+1)+A003984(n)` -/
def P10792146262865445516.Spec : Prop :=
  ∀ n, P10792146262865445516.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P15549901817387191383

`A059036(n)+A051125(n+1)`
-/

namespace A203998.P15549901817387191383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A051125 (n + 1)

end

end A203998.P15549901817387191383

namespace A203998

/-- `A059036(n)+A051125(n+1)` -/
def P15549901817387191383.Spec : Prop :=
  ∀ n, P15549901817387191383.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P5187976677192903468

`A204004(n+1)+A004247(n)`
-/

namespace A203998.P5187976677192903468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A004247 n

end

end A203998.P5187976677192903468

namespace A203998

/-- `A204004(n+1)+A004247(n)` -/
def P5187976677192903468.Spec : Prop :=
  ∀ n, P5187976677192903468.a n = A203998 (n + 1)

theorem P5187976677192903468.correct : P5187976677192903468.Spec := by
  intro n
  simp only [A203998, Nat.add_sub_cancel, A203998.P5187976677192903468.a, A203998.P4307443962499752240.a, A004247, A004247.P2751605162508615148.a, A203994, A203994.P3590551673523168265.a, A203996, A203996.P4927933465799713350.a, A204004, A204004.P16766842814256869288.a, A024000, A024000.P8748414335487061084.a, A049581, A049581.P10108526043471454015.a, A094053, A094053.P7632435431613033853.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P9170571874073898642.a, A036561, A036561.P7490084913005378529.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A203998

/-! ## A203998.P6670093983770305959

`A204000(n+1)+A049581(n)`
-/

namespace A203998.P6670093983770305959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204000 (n + 1) + A049581 n

end

end A203998.P6670093983770305959

namespace A203998

/-- `A204000(n+1)+A049581(n)` -/
def P6670093983770305959.Spec : Prop :=
  ∀ n, P6670093983770305959.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P1391095448834793734

`A204250(n+1)-A004197(n)`
-/

namespace A203998.P1391095448834793734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) - A004197 n

end

end A203998.P1391095448834793734

namespace A203998

/-- `A204250(n+1)-A004197(n)` -/
def P1391095448834793734.Spec : Prop :=
  ∀ n, P1391095448834793734.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P4307443962499752240

`A203996(n+1)-A203994(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A203998

/-- `A203996(n+1)-A203994(n+1)` -/
def P4307443962499752240.Spec : Prop :=
  ∀ n, P4307443962499752240.a n = A203998 (n + 1)

theorem P4307443962499752240.correct : P4307443962499752240.Spec := by
  intro n
  simp only [A203998, Nat.add_sub_cancel]

end A203998

/-! ## A203998.P4543674789055551105

`A003991(n+1)+A051125(n+1)-1`
-/

namespace A203998.P4543674789055551105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A051125 (n + 1) - 1)

end

end A203998.P4543674789055551105

namespace A203998

/-- `A003991(n+1)+A051125(n+1)-1` -/
def P4543674789055551105.Spec : Prop :=
  ∀ n, P4543674789055551105.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P974347824407163471

`A051125(n+1)+A004247(n)+A003056(n)`
-/

namespace A203998.P974347824407163471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + (A004247 n + A003056 n)

end

end A203998.P974347824407163471

namespace A203998

/-- `A051125(n+1)+A004247(n)+A003056(n)` -/
def P974347824407163471.Spec : Prop :=
  ∀ n, P974347824407163471.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P979327811750518724

`A003991(n+1)+A003056(n)-A004197(n)`
-/

namespace A203998.P979327811750518724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A003056 n - A004197 n)

end

end A203998.P979327811750518724

namespace A203998

/-- `A003991(n+1)+A003056(n)-A004197(n)` -/
def P979327811750518724.Spec : Prop :=
  ∀ n, P979327811750518724.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P14018209053218220589

`A003984(n)+A003983(n+1)*A051125(n+1)`
-/

namespace A203998.P14018209053218220589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + A003983 (n + 1) * A051125 (n + 1)

end

end A203998.P14018209053218220589

namespace A203998

/-- `A003984(n)+A003983(n+1)*A051125(n+1)` -/
def P14018209053218220589.Spec : Prop :=
  ∀ n, P14018209053218220589.a n = A203998 (n + 1)

end A203998

/-! ## A203998.P7344610588021611693

`A002024(n+1)+A003991(n+1)-A003983(n+1)`
-/

namespace A203998.P7344610588021611693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A003991 (n + 1) - A003983 (n + 1))

end

end A203998.P7344610588021611693

namespace A203998

/-- `A002024(n+1)+A003991(n+1)-A003983(n+1)` -/
def P7344610588021611693.Spec : Prop :=
  ∀ n, P7344610588021611693.a n = A203998 (n + 1)

end A203998

