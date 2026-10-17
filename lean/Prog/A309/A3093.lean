import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A309300: (1/8) times the sum of the elements of all subsets of [n] whose sum is divisible by eight.

The programs for A309300, there is no canonical definition to state claims against.
-/

/-! ## A309300.P356749773561928108

`floor((A261664(n)-A124093(n+1))/4)`
-/

namespace A309300.P356749773561928108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261664 n - A124093 (n + 1) : ℚ) / 4⌋

end

end A309300.P356749773561928108

/-! ## A309300.P2227913815241546447

`A002265(A261664(n)-A003714(n))`
-/

namespace A309300.P2227913815241546447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A261664 n - A003714 n).toNat

end

end A309300.P2227913815241546447

/-! ## A309300.P3064445026839327022

`A002265(A261664(n)-A006463(n))`
-/

namespace A309300.P3064445026839327022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A261664 n - A006463 n).toNat

end

end A309300.P3064445026839327022

/-! ## A309300.P17117708205214708132

`A143996(floor(cosh(1-n)))`
-/

namespace A309300.P17117708205214708132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 ⌊Real.cosh (1 - (n : ℤ) : ℝ)⌋.toNat

end

end A309300.P17117708205214708132

/-! ## A309300.P14951194571057074732

`A143996(round(cosh(1-n)))`
-/

namespace A309300.P14951194571057074732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 (SequenceMachineLib.roundAway (Real.cosh (1 - (n : ℤ) : ℝ))).toNat

end

end A309300.P14951194571057074732

/-!
# A309301: (1/9) times the sum of the elements of all subsets of [n] whose sum is divisible by nine.

The programs for A309301, there is no canonical definition to state claims against.
-/

/-! ## A309301.P7653926302126723563

`∑[A339985(A087051(n))]`
-/

namespace A309301.P7653926302126723563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339985 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309301.P7653926302126723563

/-! ## A309301.P17548849952001473261

`∑[A118759(A339985(n))]`
-/

namespace A309301.P17548849952001473261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A339985 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309301.P17548849952001473261

/-! ## A309301.P4828692501361384106

`∑[A000194(A339985(n)²)]`
-/

namespace A309301.P4828692501361384106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A339985 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309301.P4828692501361384106

/-! ## A309301.P7829476326533994721

`∑[A000196(A339985(n)²)]`
-/

namespace A309301.P7829476326533994721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A339985 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309301.P7829476326533994721

/-! ## A309301.P16783177119713237249

`∑[A038690(A339985(n)²)]`
-/

namespace A309301.P16783177119713237249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A339985 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309301.P16783177119713237249

/-!
# A309302: (1/10) times the sum of the elements of all subsets of [n] whose sum is divisible by ten.

The programs for A309302, there is no canonical definition to state claims against.
-/

/-! ## A309302.P13276616374806945692

`A002024(A000111(n))-A238861(n)`
-/

namespace A309302.P13276616374806945692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000111 n).toNat - A238861 n

end

end A309302.P13276616374806945692

/-! ## A309302.P7216017050500992247

`A185714(A125094(n)+A063895(n+1))`
-/

namespace A309302.P7216017050500992247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A125094 n + A063895 (n + 1)).toNat

end

end A309302.P7216017050500992247

/-! ## A309302.P1810958459529077369

`floor(∑[A293994(n)/9])`
-/

namespace A309302.P1810958459529077369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293994 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A309302.P1810958459529077369

/-! ## A309302.P14227001165437164249

`round(A002369(n+1)/17)`
-/

namespace A309302.P14227001165437164249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002369 (n + 1) : ℚ) / 17)

end

end A309302.P14227001165437164249

/-! ## A309302.P6777316876526421325

`round(A006653(n+3)/35)`
-/

namespace A309302.P6777316876526421325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006653 (n + 3) : ℚ) / 35)

end

end A309302.P6777316876526421325

/-!
# A309303: Expansion of g.f. (sqrt(x+1) - sqrt(1-3*x))/(2*(x+1)^(3/2)).

The programs for A309303, the canonical program `A309303.P18394327980956294694` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309303 has offset 0).

The definition of A309303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309303.P18394327980956294694

`A005043(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309303

/-- `A005043(n-1)-a(n-1)` -/
def P18394327980956294694.Spec : Prop :=
  ∀ n, P18394327980956294694.a n = A309303 n

theorem P18394327980956294694.correct : P18394327980956294694.Spec := by
  intro n
  simp only [A309303]

end A309303

/-! ## A309303.P3907601808448166263

`A086246(n+1)-a(n-1)-abs(A099323(n+1))` with `a(0)=0`
-/

namespace A309303.P3907601808448166263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086246 (n + 1) - a (n - 1) - |A099323 (n + 1)|

end

end A309303.P3907601808448166263

namespace A309303

/-- `A086246(n+1)-a(n-1)-abs(A099323(n+1))` -/
def P3907601808448166263.Spec : Prop :=
  ∀ n, P3907601808448166263.a n = A309303 n

end A309303

/-! ## A309303.P8842252890986267853

`A168049(n+1)-a(n-1)-abs(A099323(n+1))` with `a(0)=0`
-/

namespace A309303.P8842252890986267853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168049 (n + 1) - a (n - 1) - |A099323 (n + 1)|

end

end A309303.P8842252890986267853

namespace A309303

/-- `A168049(n+1)-a(n-1)-abs(A099323(n+1))` -/
def P8842252890986267853.Spec : Prop :=
  ∀ n, P8842252890986267853.a n = A309303 n

end A309303

/-! ## A309303.P9362521880093847988

`A001006(n-1)-a(n-1)-abs(A099323(n+1))` with `a(0)=0`
-/

namespace A309303.P9362521880093847988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001006 (n - 1) - a (n - 1) - |A099323 (n + 1)|

end

end A309303.P9362521880093847988

namespace A309303

/-- `A001006(n-1)-a(n-1)-abs(A099323(n+1))` -/
def P9362521880093847988.Spec : Prop :=
  ∀ n, P9362521880093847988.a n = A309303 n

end A309303

/-! ## A309303.P1445269322798876334

`A086246(n+1)-a(n-1)-abs(A174297(n+2))` with `a(0)=0`
-/

namespace A309303.P1445269322798876334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086246 (n + 1) - a (n - 1) - |A174297 (n + 2)|

end

end A309303.P1445269322798876334

namespace A309303

/-- `A086246(n+1)-a(n-1)-abs(A174297(n+2))` -/
def P1445269322798876334.Spec : Prop :=
  ∀ n, P1445269322798876334.a n = A309303 n

end A309303

/-! ## A309303.P6463859387913658558

`A168049(n+1)-a(n-1)-abs(A174297(n+2))` with `a(0)=0`
-/

namespace A309303.P6463859387913658558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168049 (n + 1) - a (n - 1) - |A174297 (n + 2)|

end

end A309303.P6463859387913658558

namespace A309303

/-- `A168049(n+1)-a(n-1)-abs(A174297(n+2))` -/
def P6463859387913658558.Spec : Prop :=
  ∀ n, P6463859387913658558.a n = A309303 n

end A309303

/-! ## A309303.P16678320765199763102

`A086246(n+1)-a(n-1)-A099323(A008619(2*n))/(-1)^n` with `a(0)=0`
-/

namespace A309303.P16678320765199763102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A086246 (n + 1) : ℚ) - a (n - 1) - (A099323 (A008619 (2 * n)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A309303.P16678320765199763102

namespace A309303

/-- `A086246(n+1)-a(n-1)-A099323(A008619(2*n))/(-1)^n` -/
def P16678320765199763102.Spec : Prop :=
  ∀ n, P16678320765199763102.a n = (A309303 n : ℚ)

end A309303

/-! ## A309303.P5033225836449174016

`A086246(n+1)-a(n-1)-(2*A082395(n+1)-A097332(n))` with `a(0)=0`
-/

namespace A309303.P5033225836449174016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086246 (n + 1) - a (n - 1) - (2 * A082395 (n + 1) - A097332 n)

end

end A309303.P5033225836449174016

namespace A309303

/-- `A086246(n+1)-a(n-1)-(2*A082395(n+1)-A097332(n))` -/
def P5033225836449174016.Spec : Prop :=
  ∀ n, P5033225836449174016.a n = A309303 n

end A309303

/-! ## A309303.P13854169584274869400

`A372342(n)-A194589(n)`
-/

namespace A309303.P13854169584274869400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 n - A194589 n

end

end A309303.P13854169584274869400

namespace A309303

/-- `A372342(n)-A194589(n)` -/
def P13854169584274869400.Spec : Prop :=
  ∀ n, P13854169584274869400.a n = A309303 n

end A309303

/-! ## A309303.P17444122936282330809

`A113682(n)-A278646(n)`
-/

namespace A309303.P17444122936282330809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113682 n - A278646 n

end

end A309303.P17444122936282330809

namespace A309303

/-- `A113682(n)-A278646(n)` -/
def P17444122936282330809.Spec : Prop :=
  ∀ n, P17444122936282330809.a n = A309303 n

end A309303

/-! ## A309303.P9914063053699947565

`A113682(n)-A005043(n)*A005408(n)`
-/

namespace A309303.P9914063053699947565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113682 n - A005043 n * A005408 n

end

end A309303.P9914063053699947565

namespace A309303

/-- `A113682(n)-A005043(n)*A005408(n)` -/
def P9914063053699947565.Spec : Prop :=
  ∀ n, P9914063053699947565.a n = A309303 n

end A309303

/-! ## A309303.P14189003423583217728

`A260056(A002378(n))-A278646(n)`
-/

namespace A309303.P14189003423583217728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A002378 n).toNat - A278646 n

end

end A309303.P14189003423583217728

namespace A309303

/-- `A260056(A002378(n))-A278646(n)` -/
def P14189003423583217728.Spec : Prop :=
  ∀ n, P14189003423583217728.a n = A309303 n

end A309303

/-! ## A309303.P8653515909355963703

`A260056(A005843(∑[n]))-A278646(n)`
-/

namespace A309303.P8653515909355963703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A278646 n

end

end A309303.P8653515909355963703

namespace A309303

/-- `A260056(A005843(∑[n]))-A278646(n)` -/
def P8653515909355963703.Spec : Prop :=
  ∀ n, P8653515909355963703.a n = A309303 n

end A309303

/-!
# A309306: Sums of two numbers such that neither of their number of divisors divides n but the number of divisors of their product and difference do.

The programs for A309306, there is no canonical definition to state claims against.
-/

/-! ## A309306.P10632505752933225523

`A274430(p?[A274432(n+1)+10])`
-/

namespace A309306.P10632505752933225523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274432 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274430 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A309306.P10632505752933225523

/-!
# A309307: Number of unitary divisors of n (excluding 1).

The programs for A309307, the canonical program `A309307.P44992058381034953` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309307 has offset 1).

The definition of A309307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309307.P44992058381034953

`A034444(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309307

/-- `A034444(n+1)-1` -/
def P44992058381034953.Spec : Prop :=
  ∀ n, P44992058381034953.a n = A309307 (n + 1)

theorem P44992058381034953.correct : P44992058381034953.Spec := by
  intro n
  simp only [A309307, Nat.add_sub_cancel]

end A309307

/-! ## A309307.P3341794133323643375

`∏{p}[n+1, 2%#²]-1`
-/

namespace A309307.P3341794133323643375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℤ) - 1

end

end A309307.P3341794133323643375

namespace A309307

/-- `∏{p}[n+1, 2%#²]-1` -/
def P3341794133323643375.Spec : Prop :=
  ∀ n, P3341794133323643375.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P12946060422270615296

`val(A294876(n+1), 2)`
-/

namespace A309307.P12946060422270615296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294876 (n + 1)).toNat 2

end

end A309307.P12946060422270615296

namespace A309307

/-- `val(A294876(n+1), 2)` -/
def P12946060422270615296.Spec : Prop :=
  ∀ n, (P12946060422270615296.a n : ℤ) = A309307 (n + 1)

end A309307

/-! ## A309307.P5612830784921245961

`A032741(∏{p}[n+1, #])`
-/

namespace A309307.P5612830784921245961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P5612830784921245961

namespace A309307

/-- `A032741(∏{p}[n+1, #])` -/
def P5612830784921245961.Spec : Prop :=
  ∀ n, P5612830784921245961.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P5090817170084442510

`A056595(∏{p}[n+1, #])`
-/

namespace A309307.P5090817170084442510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P5090817170084442510

namespace A309307

/-- `A056595(∏{p}[n+1, #])` -/
def P5090817170084442510.Spec : Prop :=
  ∀ n, P5090817170084442510.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P3983146640979613563

`A095960(∏{p}[n+1, #])`
-/

namespace A309307.P3983146640979613563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P3983146640979613563

namespace A309307

/-- `A095960(∏{p}[n+1, #])` -/
def P3983146640979613563.Spec : Prop :=
  ∀ n, P3983146640979613563.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P1132712176533628410

`A178638(∏{p}[n+1, #])`
-/

namespace A309307.P1132712176533628410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178638 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P1132712176533628410

namespace A309307

/-- `A178638(∏{p}[n+1, #])` -/
def P1132712176533628410.Spec : Prop :=
  ∀ n, P1132712176533628410.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P3314335461717123250

`A183093(∏{p}[n+1, #])`
-/

namespace A309307.P3314335461717123250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P3314335461717123250

namespace A309307

/-- `A183093(∏{p}[n+1, #])` -/
def P3314335461717123250.Spec : Prop :=
  ∀ n, P3314335461717123250.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P5058872655375096521

`A183096(∏{p}[n+1, #])`
-/

namespace A309307.P5058872655375096521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P5058872655375096521

namespace A309307

/-- `A183096(∏{p}[n+1, #])` -/
def P5058872655375096521.Spec : Prop :=
  ∀ n, P5058872655375096521.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P7318678626533497105

`A291208(∏{p}[n+1, #])`
-/

namespace A309307.P7318678626533497105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291208 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P7318678626533497105

namespace A309307

/-- `A291208(∏{p}[n+1, #])` -/
def P7318678626533497105.Spec : Prop :=
  ∀ n, P7318678626533497105.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P13744406024343182086

`A293227(∏{p}[n+1, #])`
-/

namespace A309307.P13744406024343182086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293227 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P13744406024343182086

namespace A309307

/-- `A293227(∏{p}[n+1, #])` -/
def P13744406024343182086.Spec : Prop :=
  ∀ n, P13744406024343182086.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P2616408069597892699

`A304326(∏{p}[n+1, #])`
-/

namespace A309307.P2616408069597892699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304326 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P2616408069597892699

namespace A309307

/-- `A304326(∏{p}[n+1, #])` -/
def P2616408069597892699.Spec : Prop :=
  ∀ n, P2616408069597892699.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P16550920830249476289

`A309891(∏{p}[n+1, #])`
-/

namespace A309307.P16550920830249476289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P16550920830249476289

namespace A309307

/-- `A309891(∏{p}[n+1, #])` -/
def P16550920830249476289.Spec : Prop :=
  ∀ n, P16550920830249476289.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P11968093114762003101

`A345371(∏{p}[n+1, #])`
-/

namespace A309307.P11968093114762003101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345371 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A309307.P11968093114762003101

namespace A309307

/-- `A345371(∏{p}[n+1, #])` -/
def P11968093114762003101.Spec : Prop :=
  ∀ n, P11968093114762003101.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P7376207433773936823

`abs(A158522(n+1))-1`
-/

namespace A309307.P7376207433773936823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)| - 1

end

end A309307.P7376207433773936823

namespace A309307

/-- `abs(A158522(n+1))-1` -/
def P7376207433773936823.Spec : Prop :=
  ∀ n, P7376207433773936823.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P7347710136500161015

`2^A001221(n+1)-1`
-/

namespace A309307.P7347710136500161015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - 1

end

end A309307.P7347710136500161015

namespace A309307

/-- `2^A001221(n+1)-1` -/
def P7347710136500161015.Spec : Prop :=
  ∀ n, P7347710136500161015.a n = (A309307 (n + 1) : ℚ)

end A309307

/-! ## A309307.P8273479742906609312

`A000005(∏{p}[n+1, #])-1`
-/

namespace A309307.P8273479742906609312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1

end

end A309307.P8273479742906609312

namespace A309307

/-- `A000005(∏{p}[n+1, #])-1` -/
def P8273479742906609312.Spec : Prop :=
  ∀ n, P8273479742906609312.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P3042761709492790977

`∑{d}[n+1, A008683(#)²]-1`
-/

namespace A309307.P3042761709492790977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2 - 1

end

end A309307.P3042761709492790977

namespace A309307

/-- `∑{d}[n+1, A008683(#)²]-1` -/
def P3042761709492790977.Spec : Prop :=
  ∀ n, P3042761709492790977.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P1377707704469094127

`∏{p}[n+1, A001221(#)+1]-1`
-/

namespace A309307.P1377707704469094127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001221 p + 1) - 1

end

end A309307.P1377707704469094127

namespace A309307

/-- `∏{p}[n+1, A001221(#)+1]-1` -/
def P1377707704469094127.Spec : Prop :=
  ∀ n, P1377707704469094127.a n = A309307 (n + 1)

end A309307

/-! ## A309307.P17554048026928477637

`∏{p}[n+1, A001222(#)+1]-1`
-/

namespace A309307.P17554048026928477637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 p + 1) - 1

end

end A309307.P17554048026928477637

namespace A309307

/-- `∏{p}[n+1, A001222(#)+1]-1` -/
def P17554048026928477637.Spec : Prop :=
  ∀ n, P17554048026928477637.a n = A309307 (n + 1)

end A309307

/-!
# A309308: Least number k with A309004(k) = n.

The programs for A309308, there is no canonical definition to state claims against.
-/

/-! ## A309308.P5088160343161126012

`A181821(A304938(n+1))`
-/

namespace A309308.P5088160343161126012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A304938 (n + 1)).toNat

end

end A309308.P5088160343161126012

/-! ## A309308.P11285082788857198358

`A119500(A194101(n+1)+A119501(n+1))`
-/

namespace A309308.P11285082788857198358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (A194101 (n + 1) + A119501 (n + 1)).toNat

end

end A309308.P11285082788857198358

/-!
# A309309: Indices of records in A309004.

The programs for A309309, there is no canonical definition to state claims against.
-/

/-! ## A309309.P1561849889268990239

`A129902(a(n-1))` with `a(0)=1, a(1)=12`
-/

namespace A309309.P1561849889268990239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A129902 (a (n - 1)).toNat

end

end A309309.P1561849889268990239

/-! ## A309309.P8028696681689628471

`sqrt(A358262(and(-2, 2^n)))`
-/

namespace A309309.P8028696681689628471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358262 (Int.land (-2) (2 ^ n : ℤ)).toNat : ℝ)

end

end A309309.P8028696681689628471

/-!
# A309311: a(1)=1, a(2)=2; thereafter a(n+1) = Sum_{i=m..n} a(i) where m = (n+1)-k and k is the last digit of a(n), except if k=0, k=1, or k>n then a(n+1) = Sum_{i=1..n} a(i).

The programs for A309311, there is no canonical definition to state claims against.
-/

/-! ## A309311.P8454438596402173301

`A123580(A000213(n))+A048788(n)`
-/

namespace A309311.P8454438596402173301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A000213 n).toNat + A048788 n

end

end A309311.P8454438596402173301

/-! ## A309311.P422468033869465531

`A174873(A344432(n)+A070667(n+1))`
-/

namespace A309311.P422468033869465531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (A344432 n + A070667 (n + 1)).toNat

end

end A309311.P422468033869465531

/-!
# A309312: Areas of Heronian triangles that uniquely define the lengths of the triangle's sides.

The programs for A309312, there is no canonical definition to state claims against.
-/

/-! ## A309312.P17378660554922399675

`A188158(eq[1, A301384(n+1)]+1)`
-/

namespace A309312.P17378660554922399675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309312.P17378660554922399675

/-! ## A309312.P10131931674512056083

`record[root(A188158(n+1), A301384(n+1))]`
-/

namespace A309312.P10131931674512056083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188158 (n + 1) : ℝ) ^ (1 / (A301384 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309312.P10131931674512056083

/-! ## A309312.P9178217893580471255

`eq[1, A051584(n+1)]+1`
-/

namespace A309312.P9178217893580471255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309312.P9178217893580471255

/-! ## A309312.P13935665820471633101

`eq[1, A051584(A028310(n))]`
-/

namespace A309312.P13935665820471633101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309312.P13935665820471633101

/-! ## A309312.P2314327229474925897

`A014681(eq[1, A051584(n+1)])`
-/

namespace A309312.P2314327229474925897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309312.P2314327229474925897

/-!
# A309313: Number of simple labeled graphs on 2n nodes with exactly n connected components that are trees or cycles.

The programs for A309313, there is no canonical definition to state claims against.
-/

/-! ## A309313.P10240874272685649224

`A215861(∑[4*n])`
-/

namespace A309313.P10240874272685649224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309313.P10240874272685649224

/-! ## A309313.P3996009505396287609

`or(A000007(n), A215861(A046092(n)))`
-/

namespace A309313.P3996009505396287609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215861 (A046092 n).toNat)

end

end A309313.P3996009505396287609

/-! ## A309313.P14464943045128365699

`A316865(n)!*A215861(A046092(n))`
-/

namespace A309313.P14464943045128365699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A316865 n).toNat : ℤ) * A215861 (A046092 n).toNat

end

end A309313.P14464943045128365699

/-! ## A309313.P17164229728980157624

`A215861(A046092(n))+A000007(n+1)`
-/

namespace A309313.P17164229728980157624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A046092 n).toNat + A000007 (n + 1)

end

end A309313.P17164229728980157624

/-! ## A309313.P17537473255939718173

`lcm(A008836(n+1), A215861(A046092(n)))`
-/

namespace A309313.P17537473255939718173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A215861 (A046092 n).toNat)

end

end A309313.P17537473255939718173

/-!
# A309314: BII-numbers of hyperforests.

The programs for A309314, there is no canonical definition to state claims against.
-/

/-! ## A309314.P11742784203696637249

`A326704(lt[Δ[A326704(n+1)], n+1])`
-/

namespace A309314.P11742784203696637249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A309314.P11742784203696637249

/-!
# A309315: Number of 5-colorings of an n-wheel graph.

The programs for A309315, the canonical program `A309315.P4132703612750112775` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309315 has offset 3).

The definition of A309315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309315.P4132703612750112775

`2*a(n-1)+3*a(n-2)` with `a(0)=60, a(1)=120`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309315

/-- `2*a(n-1)+3*a(n-2)` -/
def P4132703612750112775.Spec : Prop :=
  ∀ n, (P4132703612750112775.a n : ℤ) = A309315 (n + 3)

theorem P4132703612750112775.correct : P4132703612750112775.Spec := by
  intro n
  simp only [A309315, Nat.add_sub_cancel]

end A309315

/-! ## A309315.P3434666986969645384

`∑[60*A046717(n)]`
-/

namespace A309315.P3434666986969645384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309315.P3434666986969645384

namespace A309315

/-- `∑[60*A046717(n)]` -/
def P3434666986969645384.Spec : Prop :=
  ∀ n, P3434666986969645384.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P11876421699520469400

`60*Δ[A039300(n)]`
-/

namespace A309315.P11876421699520469400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * (f1 (n + 1) - f1 n)

end

end A309315.P11876421699520469400

namespace A309315

/-- `60*Δ[A039300(n)]` -/
def P11876421699520469400.Spec : Prop :=
  ∀ n, P11876421699520469400.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P14704113723089712860

`5*A218034(n+2)`
-/

namespace A309315.P14704113723089712860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A218034 (n + 2)

end

end A309315.P14704113723089712860

namespace A309315

/-- `5*A218034(n+2)` -/
def P14704113723089712860.Spec : Prop :=
  ∀ n, P14704113723089712860.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P7351869478927332612

`5*A226493(n+2)`
-/

namespace A309315.P7351869478927332612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A226493 (n + 2)

end

end A309315.P7351869478927332612

namespace A309315

/-- `5*A226493(n+2)` -/
def P7351869478927332612.Spec : Prop :=
  ∀ n, P7351869478927332612.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P18184010847655276907

`10*A120471(n+1)`
-/

namespace A309315.P18184010847655276907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A120471 (n + 1)

end

end A309315.P18184010847655276907

namespace A309315

/-- `10*A120471(n+1)` -/
def P18184010847655276907.Spec : Prop :=
  ∀ n, P18184010847655276907.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P1085842535457337736

`60*A015518(n+1)`
-/

namespace A309315.P1085842535457337736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A015518 (n + 1)

end

end A309315.P1085842535457337736

namespace A309315

/-- `60*A015518(n+1)` -/
def P1085842535457337736.Spec : Prop :=
  ∀ n, P1085842535457337736.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P8426025921722773531

`60*(A080926(n)+1)`
-/

namespace A309315.P8426025921722773531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * (A080926 n + 1)

end

end A309315.P8426025921722773531

namespace A309315

/-- `60*(A080926(n)+1)` -/
def P8426025921722773531.Spec : Prop :=
  ∀ n, P8426025921722773531.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P3729119730512912252

`5*6*A152011(n+1)`
-/

namespace A309315.P3729119730512912252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (6 * A152011 (n + 1))

end

end A309315.P3729119730512912252

namespace A309315

/-- `5*6*A152011(n+1)` -/
def P3729119730512912252.Spec : Prop :=
  ∀ n, P3729119730512912252.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P14192695790644581828

`2*10*A054878(n+2)`
-/

namespace A309315.P14192695790644581828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (10 * A054878 (n + 2))

end

end A309315.P14192695790644581828

namespace A309315

/-- `2*10*A054878(n+2)` -/
def P14192695790644581828.Spec : Prop :=
  ∀ n, P14192695790644581828.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P13015522921646368063

`(A008597(2*n+1)-A008597(2*n))*A105723(n+1)`
-/

namespace A309315.P13015522921646368063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008597 (2 * n + 1) - A008597 (2 * n)) * A105723 (n + 1)

end

end A309315.P13015522921646368063

namespace A309315

/-- `(A008597(2*n+1)-A008597(2*n))*A105723(n+1)` -/
def P13015522921646368063.Spec : Prop :=
  ∀ n, P13015522921646368063.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P11262772768247267766

`60*3^n-a(n-1)` with `a(0)=60`
-/

namespace A309315.P11262772768247267766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [60] fun n a =>
  (60 * 3 ^ n : ℤ) - a (n - 1)

end

end A309315.P11262772768247267766

namespace A309315

/-- `60*3^n-a(n-1)` -/
def P11262772768247267766.Spec : Prop :=
  ∀ n, P11262772768247267766.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P1473552532833708840

`Δ[Δ[3*a(n-1)]-a(n-1)]` with `a(0)=15`
-/

namespace A309315.P1473552532833708840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309315.P1473552532833708840

namespace A309315

/-- `Δ[Δ[3*a(n-1)]-a(n-1)]` -/
def P1473552532833708840.Spec : Prop :=
  ∀ n, P1473552532833708840.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P11685442373232228044

`Δ[20*A006342(n+1)]`
-/

namespace A309315.P11685442373232228044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A006342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309315.P11685442373232228044

namespace A309315

/-- `Δ[20*A006342(n+1)]` -/
def P11685442373232228044.Spec : Prop :=
  ∀ n, P11685442373232228044.a n = A309315 (n + 3)

end A309315

/-! ## A309315.P5038987327976197647

`Δ[30*A122983(n+1)]`
-/

namespace A309315.P5038987327976197647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A122983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309315.P5038987327976197647

namespace A309315

/-- `Δ[30*A122983(n+1)]` -/
def P5038987327976197647.Spec : Prop :=
  ∀ n, P5038987327976197647.a n = A309315 (n + 3)

end A309315

/-!
# A309316: Euler primary pretenders: a(n) is the smallest odd composite k such that n^((k+1)/2) == +-n (mod k).

The programs for A309316, there is no canonical definition to state claims against.
-/

/-! ## A309316.P4427506630427719528

`A366930(n*A318812(3*n+1))`
-/

namespace A309316.P4427506630427719528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366930 ((n : ℤ) * A318812 (3 * n + 1)).toNat

end

end A309316.P4427506630427719528

/-!
# A309317: a(n) is the maximum number of consecutive primes that can be produced as the differences of n integers.

The programs for A309317, there is no canonical definition to state claims against.
-/

/-! ## A309317.P8000601794267811641

`A000040(n+1)-A035211(A246106(3*n+4))`
-/

namespace A309317.P8000601794267811641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A035211 (A246106 (3 * n + 4)).toNat

end

end A309317.P8000601794267811641

/-!
# A309318: a(n) is the number of polygons whose vertices are the (2*n+1)-th roots of unity and whose 2*n+1 sides all have distinct slopes.

The programs for A309318, there is no canonical definition to state claims against.
-/

/-! ## A309318.P148736872530782772

`A084461(∏[∑[n+1]])`
-/

namespace A309318.P148736872530782772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084461 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A309318.P148736872530782772

/-!
# A309321: The number of primes between two consecutive palindromic primes, bounds excluded.

The programs for A309321, there is no canonical definition to state claims against.
-/

/-! ## A309321.P11822402442060784975

`A075807(n+2)-A075807(n+1)-1`
-/

namespace A309321.P11822402442060784975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 2) - A075807 (n + 1) - 1

end

end A309321.P11822402442060784975

/-! ## A309321.P14285928265623377680

`Δ[A075807(n+1)]-1`
-/

namespace A309321.P14285928265623377680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A309321.P14285928265623377680

/-! ## A309321.P2204097112613036788

`Δ[A075807(n+1)+A001489(n)]`
-/

namespace A309321.P2204097112613036788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309321.P2204097112613036788

/-! ## A309321.P13401590613141724259

`Δ[A075807(n+1)+A024000(n)]`
-/

namespace A309321.P13401590613141724259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 1) + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309321.P13401590613141724259

/-! ## A309321.P17369591171272844845

`A008836(A066903(n+1))+Δ[A075807(n+1)]`
-/

namespace A309321.P17369591171272844845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A066903 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A309321.P17369591171272844845

/-! ## A309321.P4054693920458820072

`A008836(A020639(14*n+12))+Δ[A075807(n+1)]`
-/

namespace A309321.P4054693920458820072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A020639 (14 * n + 12)).toNat + (f1 (n + 1) - f1 n)

end

end A309321.P4054693920458820072

/-! ## A309321.P3806469234569897910

`Δ[A000720(A002385(n+1))]-1`
-/

namespace A309321.P3806469234569897910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A309321.P3806469234569897910

/-!
# A309322: Expansion of Sum_{k>=1} phi(k) * x^k/(1 - x^k)^3, where phi = Euler totient function (A000010).

The programs for A309322, the canonical program `A309322.P6198726568580367255` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309322 has offset 1).

The definition of A309322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A069097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309322.P6198726568580367255

`(A018804(n+1)+A069097(n+1))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309322

/-- `(A018804(n+1)+A069097(n+1))/2` -/
def P6198726568580367255.Spec : Prop :=
  ∀ n, P6198726568580367255.a n = (A309322 (n + 1) : ℚ)

end A309322

/-! ## A309322.P4136102855064097906

`∑{d}[n+1, #*A007438((n+1)/#)]`
-/

namespace A309322.P4136102855064097906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P4136102855064097906

namespace A309322

/-- `∑{d}[n+1, #*A007438((n+1)/#)]` -/
def P4136102855064097906.Spec : Prop :=
  ∀ n, P4136102855064097906.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P6635813976810268342

`∑{d}[n+1, A000010(#)*A000217((n+1)/#)]`
-/

namespace A309322.P6635813976810268342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P6635813976810268342

namespace A309322

/-- `∑{d}[n+1, A000010(#)*A000217((n+1)/#)]` -/
def P6635813976810268342.Spec : Prop :=
  ∀ n, P6635813976810268342.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P6695969198330302493

`∑{d}[n+1, A007431(#)*A007437((n+1)/#)]`
-/

namespace A309322.P6695969198330302493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A007437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P6695969198330302493

namespace A309322

/-- `∑{d}[n+1, A007431(#)*A007437((n+1)/#)]` -/
def P6695969198330302493.Spec : Prop :=
  ∀ n, P6695969198330302493.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P8182112407730812543

`∑{d}[n+1, A018804(#)*A023896((n+1)/#)]`
-/

namespace A309322.P8182112407730812543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P8182112407730812543

namespace A309322

/-- `∑{d}[n+1, A018804(#)*A023896((n+1)/#)]` -/
def P8182112407730812543.Spec : Prop :=
  ∀ n, P8182112407730812543.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P18364246093774557304

`∑{d}[n+1, A029935(#)*A057661((n+1)/#)]`
-/

namespace A309322.P18364246093774557304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P18364246093774557304

namespace A309322

/-- `∑{d}[n+1, A029935(#)*A057661((n+1)/#)]` -/
def P18364246093774557304.Spec : Prop :=
  ∀ n, P18364246093774557304.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P4086713049122277706

`∑{d}[n+1, A008683(#)*A309731((n+1)/#)]`
-/

namespace A309322.P4086713049122277706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P4086713049122277706

namespace A309322

/-- `∑{d}[n+1, A008683(#)*A309731((n+1)/#)]` -/
def P4086713049122277706.Spec : Prop :=
  ∀ n, P4086713049122277706.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P11810761368151950007

`∑{d}[n+1, A000203(#)*A326828((n+1)/#)]`
-/

namespace A309322.P11810761368151950007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P11810761368151950007

namespace A309322

/-- `∑{d}[n+1, A000203(#)*A326828((n+1)/#)]` -/
def P11810761368151950007.Spec : Prop :=
  ∀ n, P11810761368151950007.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P17754052852987035176

`∑{d}[n+1, A007432(#)*A326826((n+1)/#)]`
-/

namespace A309322.P17754052852987035176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A326826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P17754052852987035176

namespace A309322

/-- `∑{d}[n+1, A007432(#)*A326826((n+1)/#)]` -/
def P17754052852987035176.Spec : Prop :=
  ∀ n, P17754052852987035176.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P16208134556531716758

`∑{d}[n+1, A078439(#)*A390808((n+1)/#)]`
-/

namespace A309322.P16208134556531716758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078439 d * A390808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P16208134556531716758

namespace A309322

/-- `∑{d}[n+1, A078439(#)*A390808((n+1)/#)]` -/
def P16208134556531716758.Spec : Prop :=
  ∀ n, P16208134556531716758.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P13576520024512230844

`∑{d}[n+1, A162728(#)*A390802((n+1)/#)]`
-/

namespace A309322.P13576520024512230844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A390802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P13576520024512230844

namespace A309322

/-- `∑{d}[n+1, A162728(#)*A390802((n+1)/#)]` -/
def P13576520024512230844.Spec : Prop :=
  ∀ n, P13576520024512230844.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P15228427206412785251

`∑{d}[n+1, A309732(#)*A328502((n+1)/#)]`
-/

namespace A309322.P15228427206412785251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309732 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P15228427206412785251

namespace A309322

/-- `∑{d}[n+1, A309732(#)*A328502((n+1)/#)]` -/
def P15228427206412785251.Spec : Prop :=
  ∀ n, P15228427206412785251.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P11883347305532873449

`∑{d}[n+1, A255655(#)*A390804((n+1)/#)]`
-/

namespace A309322.P11883347305532873449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255655 d * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P11883347305532873449

namespace A309322

/-- `∑{d}[n+1, A255655(#)*A390804((n+1)/#)]` -/
def P11883347305532873449.Spec : Prop :=
  ∀ n, P11883347305532873449.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P17843757157348756336

`∑{d}[n+1, A326305(#)*A338045((n+1)/#)]`
-/

namespace A309322.P17843757157348756336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P17843757157348756336

namespace A309322

/-- `∑{d}[n+1, A326305(#)*A338045((n+1)/#)]` -/
def P17843757157348756336.Spec : Prop :=
  ∀ n, P17843757157348756336.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P3465168323013735404

`∑{d}[n+1, A026741(#)*A195094((n+1)/#)]`
-/

namespace A309322.P3465168323013735404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A195094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309322.P3465168323013735404

namespace A309322

/-- `∑{d}[n+1, A026741(#)*A195094((n+1)/#)]` -/
def P3465168323013735404.Spec : Prop :=
  ∀ n, P3465168323013735404.a n = A309322 (n + 1)

end A309322

/-! ## A309322.P15634827712164803020

`A343516(∑[n+2])`
-/

namespace A309322.P15634827712164803020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309322.P15634827712164803020

namespace A309322

/-- `A343516(∑[n+2])` -/
def P15634827712164803020.Spec : Prop :=
  ∀ n, P15634827712164803020.a n = A309322 (n + 1)

end A309322

/-!
# A309323: Expansion of Sum_{k>=1} phi(k) * x^k/(1 - x^k)^4, where phi = Euler totient function (A000010).

The programs for A309323, the canonical program `A309323.P12128213157849117651` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309323 has offset 1).

The definition of A309323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309323.P12128213157849117651

`∑{d}[n+1, #*A117108((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A309323

/-- `∑{d}[n+1, #*A117108((n+1)/#)]` -/
def P12128213157849117651.Spec : Prop :=
  ∀ n, P12128213157849117651.a n = A309323 (n + 1)

theorem P12128213157849117651.correct : P12128213157849117651.Spec := by
  intro n
  simp only [A309323, Nat.add_sub_cancel]

end A309323

/-! ## A309323.P14092040516226953677

`∑{d}[n+1, A000010(#)*A000292((n+1)/#)]`
-/

namespace A309323.P14092040516226953677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309323.P14092040516226953677

namespace A309323

/-- `∑{d}[n+1, A000010(#)*A000292((n+1)/#)]` -/
def P14092040516226953677.Spec : Prop :=
  ∀ n, P14092040516226953677.a n = A309323 (n + 1)

end A309323

/-! ## A309323.P8776272094004517676

`∑{d}[n+1, A008683(#)*A343544((n+1)/#)]`
-/

namespace A309323.P8776272094004517676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309323.P8776272094004517676

namespace A309323

/-- `∑{d}[n+1, A008683(#)*A343544((n+1)/#)]` -/
def P8776272094004517676.Spec : Prop :=
  ∀ n, P8776272094004517676.a n = A309323 (n + 1)

end A309323

/-! ## A309323.P3606878548026257926

`∑{d}[n+1, A326305(#)*A338046((n+1)/#)]`
-/

namespace A309323.P3606878548026257926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309323.P3606878548026257926

namespace A309323

/-- `∑{d}[n+1, A326305(#)*A338046((n+1)/#)]` -/
def P3606878548026257926.Spec : Prop :=
  ∀ n, P3606878548026257926.a n = A309323 (n + 1)

end A309323

/-! ## A309323.P8719603912449774835

`∑{d}[n+1, A007431(#)*A059358((n+1)/#)]`
-/

namespace A309323.P8719603912449774835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A059358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309323.P8719603912449774835

namespace A309323

/-- `∑{d}[n+1, A007431(#)*A059358((n+1)/#)]` -/
def P8719603912449774835.Spec : Prop :=
  ∀ n, P8719603912449774835.a n = A309323 (n + 1)

end A309323

/-! ## A309323.P2484406038197025225

`A343516(∑[n+3]+1)`
-/

namespace A309323.P2484406038197025225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309323.P2484406038197025225

namespace A309323

/-- `A343516(∑[n+3]+1)` -/
def P2484406038197025225.Spec : Prop :=
  ∀ n, P2484406038197025225.a n = A309323 (n + 1)

end A309323

/-!
# A309324: Expansion of Sum_{k>=1} psi(k) * x^k/(1 + x^k), where psi = Dedekind psi function (A001615).

The programs for A309324, the canonical program `A309324.P3117719213953618928` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309324 has offset 1).

The definition of A309324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309324.P3117719213953618928

`gcd(2, n+1)*A035109(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309324

/-- `gcd(2, n+1)*A035109(n)` -/
def P3117719213953618928.Spec : Prop :=
  ∀ n, P3117719213953618928.a n = A309324 (n + 1)

theorem P3117719213953618928.correct : P3117719213953618928.Spec := by
  intro n
  simp only [A309324, Nat.add_sub_cancel]

end A309324

/-! ## A309324.P6933028300242643003

`∑{d}[n+1, #*A317528((n+1)/#)]`
-/

namespace A309324.P6933028300242643003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A317528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P6933028300242643003

namespace A309324

/-- `∑{d}[n+1, #*A317528((n+1)/#)]` -/
def P6933028300242643003.Spec : Prop :=
  ∀ n, P6933028300242643003.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P526750983934337014

`A000034(n)*A035109(n)`
-/

namespace A309324.P526750983934337014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A035109 n

end

end A309324.P526750983934337014

namespace A309324

/-- `A000034(n)*A035109(n)` -/
def P526750983934337014.Spec : Prop :=
  ∀ n, P526750983934337014.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P14075277571749937067

`∑{d}[n+1, A000593(#)*A008966((n+1)/#)]`
-/

namespace A309324.P14075277571749937067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P14075277571749937067

namespace A309324

/-- `∑{d}[n+1, A000593(#)*A008966((n+1)/#)]` -/
def P14075277571749937067.Spec : Prop :=
  ∀ n, P14075277571749937067.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P8076538058184156280

`∑{d}[n+1, A048272(#)*A063659((n+1)/#)]`
-/

namespace A309324.P8076538058184156280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P8076538058184156280

namespace A309324

/-- `∑{d}[n+1, A048272(#)*A063659((n+1)/#)]` -/
def P8076538058184156280.Spec : Prop :=
  ∀ n, P8076538058184156280.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P10938598790787077642

`∑{d}[n+1, A034444(#)*A193356((n+1)/#)]`
-/

namespace A309324.P10938598790787077642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P10938598790787077642

namespace A309324

/-- `∑{d}[n+1, A034444(#)*A193356((n+1)/#)]` -/
def P10938598790787077642.Spec : Prop :=
  ∀ n, P10938598790787077642.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P16286715606766154395

`∑{d}[n+1, A008833(#)*A300894((n+1)/#)]`
-/

namespace A309324.P16286715606766154395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A300894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P16286715606766154395

namespace A309324

/-- `∑{d}[n+1, A008833(#)*A300894((n+1)/#)]` -/
def P16286715606766154395.Spec : Prop :=
  ∀ n, P16286715606766154395.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P7852277550775184768

`∑{d}[n+1, A048691(#)*A319997((n+1)/#)]`
-/

namespace A309324.P7852277550775184768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P7852277550775184768

namespace A309324

/-- `∑{d}[n+1, A048691(#)*A319997((n+1)/#)]` -/
def P7852277550775184768.Spec : Prop :=
  ∀ n, P7852277550775184768.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P15426376102740745167

`∑{d}[n+1, A130107(#)*A288571((n+1)/#)]`
-/

namespace A309324.P15426376102740745167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P15426376102740745167

namespace A309324

/-- `∑{d}[n+1, A130107(#)*A288571((n+1)/#)]` -/
def P15426376102740745167.Spec : Prop :=
  ∀ n, P15426376102740745167.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P17690493415805227075

`∑{d}[n+1, A060724(#)*A361019((n+1)/#)]`
-/

namespace A309324.P17690493415805227075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P17690493415805227075

namespace A309324

/-- `∑{d}[n+1, A060724(#)*A361019((n+1)/#)]` -/
def P17690493415805227075.Spec : Prop :=
  ∀ n, P17690493415805227075.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P15190395956580460529

`∑{d}[n+1, A109386(#)*A328729((n+1)/#)]`
-/

namespace A309324.P15190395956580460529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P15190395956580460529

namespace A309324

/-- `∑{d}[n+1, A109386(#)*A328729((n+1)/#)]` -/
def P15190395956580460529.Spec : Prop :=
  ∀ n, P15190395956580460529.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P15557564204130599006

`∑{d}[n+1, A117212(#)*A327251((n+1)/#)]`
-/

namespace A309324.P15557564204130599006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P15557564204130599006

namespace A309324

/-- `∑{d}[n+1, A117212(#)*A327251((n+1)/#)]` -/
def P15557564204130599006.Spec : Prop :=
  ∀ n, P15557564204130599006.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P280560197027309929

`∑{d}[n+1, A271102(#)*A288417((n+1)/#)]`
-/

namespace A309324.P280560197027309929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P280560197027309929

namespace A309324

/-- `∑{d}[n+1, A271102(#)*A288417((n+1)/#)]` -/
def P280560197027309929.Spec : Prop :=
  ∀ n, P280560197027309929.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P14349121349066512287

`∑{d}[n+1, A307445(#)*A318845((n+1)/#)]`
-/

namespace A309324.P14349121349066512287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A318845 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309324.P14349121349066512287

namespace A309324

/-- `∑{d}[n+1, A307445(#)*A318845((n+1)/#)]` -/
def P14349121349066512287.Spec : Prop :=
  ∀ n, P14349121349066512287.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P6691593101737730328

`∑{d}[n+1, A001615(#)*A033999((n+1)/#-1)]`
-/

namespace A309324.P6691593101737730328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A309324.P6691593101737730328

namespace A309324

/-- `∑{d}[n+1, A001615(#)*A033999((n+1)/#-1)]` -/
def P6691593101737730328.Spec : Prop :=
  ∀ n, P6691593101737730328.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P5045077256000731265

`∑{d}[n+1, A019590(#)*A035109((n+1)/#-1)]`
-/

namespace A309324.P5045077256000731265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A035109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A309324.P5045077256000731265

namespace A309324

/-- `∑{d}[n+1, A019590(#)*A035109((n+1)/#-1)]` -/
def P5045077256000731265.Spec : Prop :=
  ∀ n, P5045077256000731265.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P3877946557636103479

`gcd(A060648(2*(n+1)), A060648(n+1))`
-/

namespace A309324.P3877946557636103479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060648 (2 * (n + 1))) (A060648 (n + 1))

end

end A309324.P3877946557636103479

namespace A309324

/-- `gcd(A060648(2*(n+1)), A060648(n+1))` -/
def P3877946557636103479.Spec : Prop :=
  ∀ n, (P3877946557636103479.a n : ℤ) = A309324 (n + 1)

end A309324

/-! ## A309324.P9091261237172506393

`A193356(A193356(n+1)+A035109(n))+A035109(n)`
-/

namespace A309324.P9091261237172506393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A193356 (n + 1) + A035109 n).toNat + A035109 n

end

end A309324.P9091261237172506393

namespace A309324

/-- `A193356(A193356(n+1)+A035109(n))+A035109(n)` -/
def P9091261237172506393.Spec : Prop :=
  ∀ n, P9091261237172506393.a n = A309324 (n + 1)

end A309324

/-! ## A309324.P14208596940547859490

`lcm(A035109(n), A229217(n+1))`
-/

namespace A309324.P14208596940547859490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035109 n) (A229217 (n + 1))

end

end A309324.P14208596940547859490

namespace A309324

/-- `lcm(A035109(n), A229217(n+1))` -/
def P14208596940547859490.Spec : Prop :=
  ∀ n, (P14208596940547859490.a n : ℤ) = A309324 (n + 1)

end A309324

/-!
# A309325: Numbers that are the sum of two successive palindromes.

The programs for A309325, there is no canonical definition to state claims against.
-/

/-! ## A309325.P5455127895845279477

`A002113(n+1)+A002113(n+2)`
-/

namespace A309325.P5455127895845279477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) + A002113 (n + 2)

end

end A309325.P5455127895845279477

/-! ## A309325.P8938171376763108915

`∑[A086862(n+1)]+sqrt(A014186(n+1))`
-/

namespace A309325.P8938171376763108915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + Real.sqrt (A014186 (n + 1) : ℝ)

end

end A309325.P8938171376763108915

/-! ## A309325.P10333418846360255712

`∑[A086862(n+1)]+A014187(n)^(1/3)`
-/

namespace A309325.P10333418846360255712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A309325.P10333418846360255712

/-! ## A309325.P8636781941723831676

`A086862(n+1)+2*(∑[A086862(abs(1-n)+1)]-1)`
-/

namespace A309325.P8636781941723831676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1) + 2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A309325.P8636781941723831676

/-! ## A309325.P15972867016807127533

`record[A262038(a(n-1)+1)]+A014187(n)^(1/3)` with `a(0)=1, a(1)=0`
-/

namespace A309325.P15972867016807127533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A262038 (f1 (n - 1) + 1).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + (A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A309325.P15972867016807127533

/-! ## A309325.P10755122454039744575

`record[A261423(n)+A093030(n+1)]`
-/

namespace A309325.P10755122454039744575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n + A093030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309325.P10755122454039744575

/-! ## A309325.P12210493434919600689

`record[A093030(n+1)]+record[A047813(n)]`
-/

namespace A309325.P12210493434919600689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A309325.P12210493434919600689

/-!
# A309326: BII-numbers of minimal covers.

The programs for A309326, there is no canonical definition to state claims against.
-/

/-! ## A309326.P9419884378092957231

`A309314(n+1)%A365288(n)`
-/

namespace A309326.P9419884378092957231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309314 (n + 1)) (A365288 n)

end

end A309326.P9419884378092957231

/-! ## A309326.P13553612342951672835

`A057427(A062993(n))*A309314(n+1)`
-/

namespace A309326.P13553612342951672835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A062993 n).toNat * A309314 (n + 1)

end

end A309326.P13553612342951672835

/-! ## A309326.P11504298248957743896

`A252744(A002939(n))*A309314(n+1)`
-/

namespace A309326.P11504298248957743896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 (A002939 n).toNat * A309314 (n + 1)

end

end A309326.P11504298248957743896

/-! ## A309326.P14107918907080431849

`A309314(n+1)*A330958(A154221(n))`
-/

namespace A309326.P14107918907080431849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309314 (n + 1) * A330958 (A154221 n).toNat

end

end A309326.P14107918907080431849

/-! ## A309326.P14838013546014624073

`A309314(n+1)+A000007(A357118(n+1))`
-/

namespace A309326.P14838013546014624073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309314 (n + 1) + A000007 (A357118 (n + 1)).toNat

end

end A309326.P14838013546014624073

/-!
# A309327: a(n) = Product_{k=1..n-1} (4^k + 1).

The programs for A309327, there is no canonical definition to state claims against.
-/

/-! ## A309327.P3394310920107846235

`or(1, 4^(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A309327.P3394310920107846235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) * a (n - 1)

end

end A309327.P3394310920107846235

/-! ## A309327.P13258598331213387361

`(4^(n-1)+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A309327.P13258598331213387361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) * a (n - 1)

end

end A309327.P13258598331213387361

/-! ## A309327.P12554950534537551623

`a(n-1)+lcm(4^(n-1), a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A309327.P12554950534537551623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Int.lcm (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A309327.P12554950534537551623

/-! ## A309327.P2934824926492881919

`∏[A092896(n)]`
-/

namespace A309327.P2934824926492881919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309327.P2934824926492881919

/-! ## A309327.P7590623990548921966

`∏[∑[A092898(n)]]`
-/

namespace A309327.P7590623990548921966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309327.P7590623990548921966

/-!
# A309329: Median of primes with n decimal digits.

The programs for A309329, there is no canonical definition to state claims against.
-/

/-! ## A309329.P10432989957421093143

`A011598(n)+A000010(A328032(n+1))`
-/

namespace A309329.P10432989957421093143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + A000010 (A328032 (n + 1)).toNat

end

end A309329.P10432989957421093143

/-!
# A309330: Numbers k such that 10*k^2 + 40 is a square.

The programs for A309330, the canonical program `A309330.P7656736337276590875` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309330 has offset 1).

The definition of A309330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309330.P7656736337276590875

`38*a(n-1)-a(n-2)` with `a(0)=6, a(1)=234`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309330

/-- `38*a(n-1)-a(n-2)` -/
def P7656736337276590875.Spec : Prop :=
  ∀ n, P7656736337276590875.a n = A309330 (n + 1)

theorem P7656736337276590875.correct : P7656736337276590875.Spec := by
  intro n
  simp only [A309330, Nat.add_sub_cancel]

end A309330

/-! ## A309330.P10621359666654950459

`6*A097314(n)`
-/

namespace A309330.P10621359666654950459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A097314 n

end

end A309330.P10621359666654950459

namespace A309330

/-- `6*A097314(n)` -/
def P10621359666654950459.Spec : Prop :=
  ∀ n, P10621359666654950459.a n = A309330 (n + 1)

end A309330

/-! ## A309330.P14072205604127765832

`round((sqrt(10)+3)^(2*n+1))`
-/

namespace A309330.P14072205604127765832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (10 : ℝ) + 3) ^ (2 * n + 1))

end

end A309330.P14072205604127765832

namespace A309330

/-- `round((sqrt(10)+3)^(2*n+1))` -/
def P14072205604127765832.Spec : Prop :=
  ∀ n, P14072205604127765832.a n = A309330 (n + 1)

end A309330

/-! ## A309330.P66753901611649259

`A041066(2*n)`
-/

namespace A309330.P66753901611649259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041066 (2 * n)

end

end A309330.P66753901611649259

namespace A309330

/-- `A041066(2*n)` -/
def P66753901611649259.Spec : Prop :=
  ∀ n, P66753901611649259.a n = A309330 (n + 1)

end A309330

/-! ## A309330.P6190752021498264707

`A085447(Δ[n²])`
-/

namespace A309330.P6190752021498264707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085447 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A309330.P6190752021498264707

namespace A309330

/-- `A085447(Δ[n²])` -/
def P6190752021498264707.Spec : Prop :=
  ∀ n, P6190752021498264707.a n = A309330 (n + 1)

end A309330

/-! ## A309330.P13701416123233482970

`Δ[A078986(n)/3]`
-/

namespace A309330.P13701416123233482970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078986 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309330.P13701416123233482970

namespace A309330

/-- `Δ[A078986(n)/3]` -/
def P13701416123233482970.Spec : Prop :=
  ∀ n, P13701416123233482970.a n = (A309330 (n + 1) : ℚ)

end A309330

/-! ## A309330.P18098442585387175983

`2*A173127(n+1)`
-/

namespace A309330.P18098442585387175983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173127 (n + 1)

end

end A309330.P18098442585387175983

namespace A309330

/-- `2*A173127(n+1)` -/
def P18098442585387175983.Spec : Prop :=
  ∀ n, P18098442585387175983.a n = A309330 (n + 1)

end A309330

/-! ## A309330.P9903485474386272740

`A041682(2*n)/3`
-/

namespace A309330.P9903485474386272740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041682 (2 * n) : ℚ) / 3

end

end A309330.P9903485474386272740

namespace A309330

/-- `A041682(2*n)/3` -/
def P9903485474386272740.Spec : Prop :=
  ∀ n, P9903485474386272740.a n = (A309330 (n + 1) : ℚ)

end A309330

/-! ## A309330.P3894564340227453822

`2*A005667(Δ[n²])`
-/

namespace A309330.P3894564340227453822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A309330.P3894564340227453822

namespace A309330

/-- `2*A005667(Δ[n²])` -/
def P3894564340227453822.Spec : Prop :=
  ∀ n, P3894564340227453822.a n = A309330 (n + 1)

end A309330

/-! ## A309330.P16759686377812745945

`4*A280111(n+1)+2`
-/

namespace A309330.P16759686377812745945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A280111 (n + 1) + 2

end

end A309330.P16759686377812745945

namespace A309330

/-- `4*A280111(n+1)+2` -/
def P16759686377812745945.Spec : Prop :=
  ∀ n, P16759686377812745945.a n = A309330 (n + 1)

end A309330

/-!
# A309331: Expansion of (x+x^3+x^5)/(1-x-3*x^3-x^5).

The programs for A309331, there is no canonical definition to state claims against.
-/

/-! ## A309331.P14698554644428446247

`A003056(A014137(n)-A324612(n))`
-/

namespace A309331.P14698554644428446247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A014137 n - A324612 n).toNat

end

end A309331.P14698554644428446247

/-! ## A309331.P9023692714131392832

`A257639(A088218(n))-A318380(n)`
-/

namespace A309331.P9023692714131392832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A088218 n).toNat - A318380 n

end

end A309331.P9023692714131392832

/-! ## A309331.P9971744939680609350

`Δ[A000267(A148166(n))]`
-/

namespace A309331.P9971744939680609350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A148166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309331.P9971744939680609350

/-! ## A309331.P6576377377479086082

`Δ[A003056(A148589(n))]`
-/

namespace A309331.P6576377377479086082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309331.P6576377377479086082

/-! ## A309331.P6027713147937216589

`A024327(A000117(n+1))`
-/

namespace A309331.P6027713147937216589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A000117 (n + 1)).toNat

end

end A309331.P6027713147937216589

/-!
# A309332: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the sum of two positive triangular numbers.

The programs for A309332, the canonical program `A309332.P11044657249734363077` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309332 has offset 1).

The definition of A309332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309332.P11044657249734363077

`A110654(A160651(n+1))-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A309332

/-- `A110654(A160651(n+1))-1` -/
def P11044657249734363077.Spec : Prop :=
  ∀ n, P11044657249734363077.a n = A309332 (n + 1)

theorem P11044657249734363077.correct : P11044657249734363077.Spec := by
  intro n
  simp only [A309332, Nat.add_sub_cancel]

end A309332

/-! ## A309332.P10662180746604920794

`A038548(A278244(n+1))-1`
-/

namespace A309332.P10662180746604920794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A278244 (n + 1)).toNat - 1

end

end A309332.P10662180746604920794

namespace A309332

/-- `A038548(A278244(n+1))-1` -/
def P10662180746604920794.Spec : Prop :=
  ∀ n, P10662180746604920794.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P916485483875041559

`floor(A193583(2*n+3)/4)`
-/

namespace A309332.P916485483875041559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193583 (2 * n + 3) : ℚ) / 4⌋

end

end A309332.P916485483875041559

namespace A309332

/-- `floor(A193583(2*n+3)/4)` -/
def P916485483875041559.Spec : Prop :=
  ∀ n, P916485483875041559.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P7842764305559286711

`A002265(A193432(Δ[(n+1)*(n+1)])-1)`
-/

namespace A309332.P7842764305559286711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A193432 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat

end

end A309332.P7842764305559286711

namespace A309332

/-- `A002265(A193432(Δ[(n+1)*(n+1)])-1)` -/
def P7842764305559286711.Spec : Prop :=
  ∀ n, P7842764305559286711.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P11343738352085240239

`floor(∑{d}[A001844(n+1), (2%#)!]/4)`
-/

namespace A309332.P11343738352085240239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (2 % d) : ℕ) : ℚ) / 4⌋

end

end A309332.P11343738352085240239

namespace A309332

/-- `floor(∑{d}[A001844(n+1), (2%#)!]/4)` -/
def P11343738352085240239.Spec : Prop :=
  ∀ n, P11343738352085240239.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P1407251893899665642

`round(A000005(∑[4*(n+1)]+1)/2)-1`
-/

namespace A309332.P1407251893899665642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2) - 1

end

end A309332.P1407251893899665642

namespace A309332

/-- `round(A000005(∑[4*(n+1)]+1)/2)-1` -/
def P1407251893899665642.Spec : Prop :=
  ∀ n, P1407251893899665642.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P14773305354959604660

`floor((A000005(A001844(n+1))-1)/2)`
-/

namespace A309332.P14773305354959604660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (A001844 (n + 1)).toNat - 1 : ℚ) / 2⌋

end

end A309332.P14773305354959604660

namespace A309332

/-- `floor((A000005(A001844(n+1))-1)/2)` -/
def P14773305354959604660.Spec : Prop :=
  ∀ n, P14773305354959604660.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P10267564709850418396

`A004526(A000005(∑[4*(n+1)]+1)-1)`
-/

namespace A309332.P10267564709850418396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A309332.P10267564709850418396

namespace A309332

/-- `A004526(A000005(∑[4*(n+1)]+1)-1)` -/
def P10267564709850418396.Spec : Prop :=
  ∀ n, P10267564709850418396.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P10337890498242756204

`A123108(A000005(∑[4*(n+1)]+1)-1)`
-/

namespace A309332.P10337890498242756204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A309332.P10337890498242756204

namespace A309332

/-- `A123108(A000005(∑[4*(n+1)]+1)-1)` -/
def P10337890498242756204.Spec : Prop :=
  ∀ n, P10337890498242756204.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P1780051912909396580

`ceil(A000005(4*A000217(n+1)+1)/2)-1`
-/

namespace A309332.P1780051912909396580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (4 * A000217 (n + 1) + 1).toNat : ℚ) / 2⌉ - 1

end

end A309332.P1780051912909396580

namespace A309332

/-- `ceil(A000005(4*A000217(n+1)+1)/2)-1` -/
def P1780051912909396580.Spec : Prop :=
  ∀ n, P1780051912909396580.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P12143485002293926635

`A102563(A000005(2*((n+1)²+n+1)+1))`
-/

namespace A309332.P12143485002293926635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 (A000005 (2 * ((n + 1) ^ 2 + (n + 1)) + 1)).toNat

end

end A309332.P12143485002293926635

namespace A309332

/-- `A102563(A000005(2*((n+1)²+n+1)+1))` -/
def P12143485002293926635.Spec : Prop :=
  ∀ n, P12143485002293926635.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P13758151813734464403

`A059169(A000005((2*n+3)²+1))`
-/

namespace A309332.P13758151813734464403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A000005 ((2 * n + 3) ^ 2 + 1)).toNat

end

end A309332.P13758151813734464403

namespace A309332

/-- `A059169(A000005((2*n+3)²+1))` -/
def P13758151813734464403.Spec : Prop :=
  ∀ n, P13758151813734464403.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P14914764460116989374

`A052344(∑[n+1])`
-/

namespace A309332.P14914764460116989374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309332.P14914764460116989374

namespace A309332

/-- `A052344(∑[n+1])` -/
def P14914764460116989374.Spec : Prop :=
  ∀ n, P14914764460116989374.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P3762151416190062522

`A052343(∑[n+1])-1`
-/

namespace A309332.P3762151416190062522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A309332.P3762151416190062522

namespace A309332

/-- `A052343(∑[n+1])-1` -/
def P3762151416190062522.Spec : Prop :=
  ∀ n, P3762151416190062522.a n = A309332 (n + 1)

end A309332

/-! ## A309332.P8141797039815354410

`A053603(A000217(n+1))-A307597(A000217(n+1))`
-/

namespace A309332.P8141797039815354410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (A000217 (n + 1)).toNat - A307597 (A000217 (n + 1)).toNat

end

end A309332.P8141797039815354410

namespace A309332

/-- `A053603(A000217(n+1))-A307597(A000217(n+1))` -/
def P8141797039815354410.Spec : Prop :=
  ∀ n, P8141797039815354410.a n = A309332 (n + 1)

end A309332

/-!
# A309333: The number of primes between two consecutive lucky primes, bounds excluded.

The programs for A309333, there is no canonical definition to state claims against.
-/

/-! ## A309333.P5776482173292172779

`Δ[A000720(A031157(n+1))]-1`
-/

namespace A309333.P5776482173292172779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A309333.P5776482173292172779

/-! ## A309333.P7269593050293165739

`Δ[A000720(p?[A000959(n+1)])]-1`
-/

namespace A309333.P7269593050293165739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A309333.P7269593050293165739

/-! ## A309333.P5781378229434015660

`Δ[A000720(p?[A118643(n+1)])]-1`
-/

namespace A309333.P5781378229434015660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A309333.P5781378229434015660

/-! ## A309333.P15895393906872244699

`A023443(Δ[A061395(A031157(n+1))])`
-/

namespace A309333.P15895393906872244699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A031157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A309333.P15895393906872244699

/-! ## A309333.P9096055420680439296

`Δ[A001489(n)+A000720(A031157(n+1))]`
-/

namespace A309333.P9096055420680439296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000720 (A031157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309333.P9096055420680439296

/-! ## A309333.P13292731792643764535

`Δ[A024000(n)+A000720(A031157(n+1))]`
-/

namespace A309333.P13292731792643764535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A000720 (A031157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309333.P13292731792643764535

/-! ## A309333.P329228481392098076

`Δ[A061395(A031157(n+1))]-A014963(6*(n+1))`
-/

namespace A309333.P329228481392098076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A031157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014963 (6 * (n + 1))

end

end A309333.P329228481392098076

/-!
# A309334: Lucky prime gaps: differences between consecutive lucky primes.

The programs for A309334, there is no canonical definition to state claims against.
-/

/-! ## A309334.P2610569550082696396

`A031157(n+2)-A031157(n+1)`
-/

namespace A309334.P2610569550082696396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 2) - A031157 (n + 1)

end

end A309334.P2610569550082696396

/-! ## A309334.P5305536168424952947

`Δ[A031157(n+1)]`
-/

namespace A309334.P5305536168424952947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P5305536168424952947

/-! ## A309334.P6323318355135913003

`Δ[p?[A000959(n+1)]]`
-/

namespace A309334.P6323318355135913003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P6323318355135913003

/-! ## A309334.P2319354686444221945

`Δ[p?[A043772(n+1)]]`
-/

namespace A309334.P2319354686444221945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P2319354686444221945

/-! ## A309334.P8813021177796259120

`Δ[p?[A118643(n+1)]]`
-/

namespace A309334.P8813021177796259120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P8813021177796259120

/-! ## A309334.P15773052333517031463

`Δ[p?[A031883(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A309334.P15773052333517031463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031883 n + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P15773052333517031463

/-! ## A309334.P12150640668067582765

`Δ[p?[Δ[A046279(n+1)]]]`
-/

namespace A309334.P12150640668067582765
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P12150640668067582765

/-! ## A309334.P5776740410739963303

`Δ[p?[A377775(n)]]`
-/

namespace A309334.P5776740410739963303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377775 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P5776740410739963303

/-! ## A309334.P9784653068512274395

`Δ[p?[eq[1, A264940(n+1)+1]+1]]`
-/

namespace A309334.P9784653068512274395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A309334.P9784653068512274395

/-! ## A309334.P7159896734030031544

`Δ[record[A014963(A000959(n+2))]]`
-/

namespace A309334.P7159896734030031544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000959 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309334.P7159896734030031544

/-!
# A309335: a(n) = n^3 if n odd, 7*n^3/8 if n even.

The programs for A309335, the canonical program `A309335.P17513062437715791290` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309335 has offset 0).

The definition of A309335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309335.P17513062437715791290

`n^3*(15-(-1)^n)/16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309335

/-- `n^3*(15-(-1)^n)/16` -/
def P17513062437715791290.Spec : Prop :=
  ∀ n, P17513062437715791290.a n = (A309335 n : ℚ)

end A309335

/-! ## A309335.P10827211962434419879

`A309338(n)/A028310(n)`
-/

namespace A309335.P10827211962434419879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309338 n : ℚ) / (A028310 n : ℚ)

end

end A309335.P10827211962434419879

namespace A309335

/-- `A309338(n)/A028310(n)` -/
def P10827211962434419879.Spec : Prop :=
  ∀ n, P10827211962434419879.a n = (A309335 n : ℚ)

end A309335

/-! ## A309335.P4319522107450306096

`(A309337(n)+A000578(n))/2`
-/

namespace A309335.P4319522107450306096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309337 n + A000578 n : ℚ) / 2

end

end A309335.P4319522107450306096

namespace A309335

/-- `(A309337(n)+A000578(n))/2` -/
def P4319522107450306096.Spec : Prop :=
  ∀ n, P4319522107450306096.a n = (A309335 n : ℚ)

end A309335

/-! ## A309335.P14977644236656177766

`A000578(n)-A000578(n-gcd(n, ∑[n]))`
-/

namespace A309335.P14977644236656177766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A000578 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A309335.P14977644236656177766

namespace A309335

/-- `A000578(n)-A000578(n-gcd(n, ∑[n]))` -/
def P14977644236656177766.Spec : Prop :=
  ∀ n, P14977644236656177766.a n = A309335 n

end A309335

/-! ## A309335.P8017088319265502010

`A000578(n)-A000578(A142150(n))`
-/

namespace A309335.P8017088319265502010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A000578 (A142150 n).toNat

end

end A309335.P8017088319265502010

namespace A309335

/-- `A000578(n)-A000578(A142150(n))` -/
def P8017088319265502010.Spec : Prop :=
  ∀ n, P8017088319265502010.a n = A309335 n

end A309335

/-! ## A309335.P4703079298771978167

`A000578(n)-A000578(n-A026741(n))`
-/

namespace A309335.P4703079298771978167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A000578 ((n : ℤ) - A026741 n).toNat

end

end A309335.P4703079298771978167

namespace A309335

/-- `A000578(n)-A000578(n-A026741(n))` -/
def P4703079298771978167.Spec : Prop :=
  ∀ n, P4703079298771978167.a n = A309335 n

end A309335

/-! ## A309335.P854528284570987141

`A303383(n+1)-A303383(A004277(n)-n)`
-/

namespace A309335.P854528284570987141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303383 (n + 1) - A303383 (A004277 n - (n : ℤ)).toNat

end

end A309335.P854528284570987141

namespace A309335

/-- `A303383(n+1)-A303383(A004277(n)-n)` -/
def P854528284570987141.Spec : Prop :=
  ∀ n, P854528284570987141.a n = A309335 n

end A309335

/-! ## A309335.P15067850821077595343

`A000578(n)-A000578((n+1)%A110654(n+1))`
-/

namespace A309335.P15067850821077595343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A000578 (Int.tmod (n + 1 : ℤ) (A110654 (n + 1))).toNat

end

end A309335.P15067850821077595343

namespace A309335

/-- `A000578(n)-A000578((n+1)%A110654(n+1))` -/
def P15067850821077595343.Spec : Prop :=
  ∀ n, P15067850821077595343.a n = A309335 n

end A309335

/-! ## A309335.P5851932637158456327

`A257238(n*A008619(n))`
-/

namespace A309335.P5851932637158456327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 ((n : ℤ) * A008619 n).toNat

end

end A309335.P5851932637158456327

namespace A309335

/-- `A257238(n*A008619(n))` -/
def P5851932637158456327.Spec : Prop :=
  ∀ n, P5851932637158456327.a n = A309335 n

end A309335

/-!
# A309336: a(n) = n^4 if n odd, 15*n^4/16 if n even.

The programs for A309336, the canonical program `A309336.P666878591085915049` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309336 has offset 0).

The definition of A309336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309336.P666878591085915049

`n^4*(31-(-1)^n)/32`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309336

/-- `n^4*(31-(-1)^n)/32` -/
def P666878591085915049.Spec : Prop :=
  ∀ n, P666878591085915049.a n = (A309336 n : ℚ)

end A309336

/-! ## A309336.P1067602539419481236

`n^4-A142150(n)^4`
-/

namespace A309336.P1067602539419481236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A142150 n ^ 4

end

end A309336.P1067602539419481236

namespace A309336

/-- `n^4-A142150(n)^4` -/
def P1067602539419481236.Spec : Prop :=
  ∀ n, P1067602539419481236.a n = A309336 n

end A309336

/-! ## A309336.P10428636538920190594

`(A309338(n)+n²²)/2`
-/

namespace A309336.P10428636538920190594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309338 n + ((n ^ 2) ^ 2 : ℤ) : ℚ) / 2

end

end A309336.P10428636538920190594

namespace A309336

/-- `(A309338(n)+n²²)/2` -/
def P10428636538920190594.Spec : Prop :=
  ∀ n, P10428636538920190594.a n = (A309336 n : ℚ)

end A309336

/-! ## A309336.P9737442136750766157

`A000290(n)²-A142150(n)²²`
-/

namespace A309336.P9737442136750766157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A142150 n ^ 2) ^ 2

end

end A309336.P9737442136750766157

namespace A309336

/-- `A000290(n)²-A142150(n)²²` -/
def P9737442136750766157.Spec : Prop :=
  ∀ n, P9737442136750766157.a n = A309336 n

end A309336

/-! ## A309336.P17722975117470921147

`A000583(n)-A000583(A237420(n)/2)`
-/

namespace A309336.P17722975117470921147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A000583 (SequenceMachineLib.roundAway ((A237420 n : ℚ) / 2)).toNat

end

end A309336.P17722975117470921147

namespace A309336

/-- `A000583(n)-A000583(A237420(n)/2)` -/
def P17722975117470921147.Spec : Prop :=
  ∀ n, P17722975117470921147.a n = A309336 n

end A309336

/-! ## A309336.P12560615306131034751

`A000583(n)-A000583(n-A026741(n))`
-/

namespace A309336.P12560615306131034751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A000583 ((n : ℤ) - A026741 n).toNat

end

end A309336.P12560615306131034751

namespace A309336

/-- `A000583(n)-A000583(n-A026741(n))` -/
def P12560615306131034751.Spec : Prop :=
  ∀ n, P12560615306131034751.a n = A309336 n

end A309336

/-! ## A309336.P7934233808643289805

`A001105(n)*A129194(n)-A168077(n)²`
-/

namespace A309336.P7934233808643289805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A129194 n - A168077 n ^ 2

end

end A309336.P7934233808643289805

namespace A309336

/-- `A001105(n)*A129194(n)-A168077(n)²` -/
def P7934233808643289805.Spec : Prop :=
  ∀ n, P7934233808643289805.a n = A309336 n

end A309336

/-! ## A309336.P656264075011838033

`A000583(n)-A000583(A191903(n)%(n+1))`
-/

namespace A309336.P656264075011838033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A000583 (Int.tmod (A191903 n) (n + 1 : ℤ)).toNat

end

end A309336.P656264075011838033

namespace A309336

/-- `A000583(n)-A000583(A191903(n)%(n+1))` -/
def P656264075011838033.Spec : Prop :=
  ∀ n, P656264075011838033.a n = A309336 n

end A309336

/-! ## A309336.P9605699228026515221

`n²²-A000035(n+1)*A008233(2*n)`
-/

namespace A309336.P9605699228026515221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A000035 (n + 1) * A008233 (2 * n)

end

end A309336.P9605699228026515221

namespace A309336

/-- `n²²-A000035(n+1)*A008233(2*n)` -/
def P9605699228026515221.Spec : Prop :=
  ∀ n, P9605699228026515221.a n = A309336 n

end A309336

/-! ## A309336.P10999027947007267193

`2*A129194(n²)-A168077(n)²`
-/

namespace A309336.P10999027947007267193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129194 (n ^ 2) - A168077 n ^ 2

end

end A309336.P10999027947007267193

namespace A309336

/-- `2*A129194(n²)-A168077(n)²` -/
def P10999027947007267193.Spec : Prop :=
  ∀ n, P10999027947007267193.a n = A309336 n

end A309336

/-!
# A309337: a(n) = n^3 if n odd, 3*n^3/4 if n even.

The programs for A309337, the canonical program `A309337.P6221296243314235041` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309337 has offset 0).

The definition of A309337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309337.P6221296243314235041

`n^3*(7-(-1)^n)/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309337

/-- `n^3*(7-(-1)^n)/8` -/
def P6221296243314235041.Spec : Prop :=
  ∀ n, P6221296243314235041.a n = (A309337 n : ℚ)

end A309337

/-! ## A309337.P17524037895289327586

`floor(n*(n%2+3)*(n/2)²)`
-/

namespace A309337.P17524037895289327586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((n % 2 + 3 : ℕ) : ℚ) * ((n : ℚ) / 2) ^ 2)⌋

end

end A309337.P17524037895289327586

namespace A309337

/-- `floor(n*(n%2+3)*(n/2)²)` -/
def P17524037895289327586.Spec : Prop :=
  ∀ n, P17524037895289327586.a n = A309337 n

end A309337

/-! ## A309337.P4644633207887980885

`A117642(n)/(4-n%2)`
-/

namespace A309337.P4644633207887980885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117642 n : ℚ) / (4 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A309337.P4644633207887980885

namespace A309337

/-- `A117642(n)/(4-n%2)` -/
def P4644633207887980885.Spec : Prop :=
  ∀ n, P4644633207887980885.a n = (A309337 n : ℚ)

end A309337

/-! ## A309337.P2906570490346171364

`-A001489(n)*A308422(n)`
-/

namespace A309337.P2906570490346171364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A308422 n)

end

end A309337.P2906570490346171364

namespace A309337

/-- `-A001489(n)*A308422(n)` -/
def P2906570490346171364.Spec : Prop :=
  ∀ n, P2906570490346171364.a n = A309337 n

end A309337

/-! ## A309337.P14832687291304142908

`A117642(n)/A010702(n+1)`
-/

namespace A309337.P14832687291304142908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117642 n : ℚ) / (A010702 (n + 1) : ℚ)

end

end A309337.P14832687291304142908

namespace A309337

/-- `A117642(n)/A010702(n+1)` -/
def P14832687291304142908.Spec : Prop :=
  ∀ n, P14832687291304142908.a n = (A309337 n : ℚ)

end A309337

/-! ## A309337.P6442645141098436664

`2*A309335(n)-A000578(n)`
-/

namespace A309337.P6442645141098436664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309335 n - A000578 n

end

end A309337.P6442645141098436664

namespace A309337

/-- `2*A309335(n)-A000578(n)` -/
def P6442645141098436664.Spec : Prop :=
  ∀ n, P6442645141098436664.a n = A309337 n

end A309337

/-! ## A309337.P3287205873773691716

`A000578(n)-n*A142150(n)²`
-/

namespace A309337.P3287205873773691716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - (n : ℤ) * A142150 n ^ 2

end

end A309337.P3287205873773691716

namespace A309337

/-- `A000578(n)-n*A142150(n)²` -/
def P3287205873773691716.Spec : Prop :=
  ∀ n, P3287205873773691716.a n = A309337 n

end A309337

/-! ## A309337.P12930598824969789552

`(A006530(A071044(n))+1)*A000578(n)/4`
-/

namespace A309337.P12930598824969789552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006530 (A071044 n).toNat + 1) * A000578 n : ℚ) / 4

end

end A309337.P12930598824969789552

namespace A309337

/-- `(A006530(A071044(n))+1)*A000578(n)/4` -/
def P12930598824969789552.Spec : Prop :=
  ∀ n, P12930598824969789552.a n = (A309337 n : ℚ)

end A309337

/-! ## A309337.P11561422392603603303

`n*A129370(n+1)-A000217(2*n)`
-/

namespace A309337.P11561422392603603303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129370 (n + 1) - A000217 (2 * n)

end

end A309337.P11561422392603603303

namespace A309337

/-- `n*A129370(n+1)-A000217(2*n)` -/
def P11561422392603603303.Spec : Prop :=
  ∀ n, P11561422392603603303.a n = A309337 n

end A309337

/-! ## A309337.P5270433690192018839

`(A260233(3*(n+2))+1)*A000578(n)/4`
-/

namespace A309337.P5270433690192018839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A260233 (3 * (n + 2)) + 1) * A000578 n : ℚ) / 4

end

end A309337.P5270433690192018839

namespace A309337

/-- `(A260233(3*(n+2))+1)*A000578(n)/4` -/
def P5270433690192018839.Spec : Prop :=
  ∀ n, P5270433690192018839.a n = (A309337 n : ℚ)

end A309337

/-! ## A309337.P5859200970494824545

`A062074(n)/A133647(n)`
-/

namespace A309337.P5859200970494824545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062074 n : ℚ) / (A133647 n : ℚ)

end

end A309337.P5859200970494824545

namespace A309337

/-- `A062074(n)/A133647(n)` -/
def P5859200970494824545.Spec : Prop :=
  ∀ n, P5859200970494824545.a n = (A309337 n : ℚ)

end A309337

/-! ## A309337.P2595350919371984967

`abs(n*A255563(n²))`
-/

namespace A309337.P2595350919371984967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A255563 (n ^ 2)|

end

end A309337.P2595350919371984967

namespace A309337

/-- `abs(n*A255563(n²))` -/
def P2595350919371984967.Spec : Prop :=
  ∀ n, P2595350919371984967.a n = A309337 n

end A309337

/-!
# A309338: a(n) = n^4 if n odd, 7*n^4/8 if n even.

The programs for A309338, the canonical program `A309338.P3928853531910794846` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309338 has offset 0).

The definition of A309338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309338.P3928853531910794846

`n^4*(15-(-1)^n)/16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309338

/-- `n^4*(15-(-1)^n)/16` -/
def P3928853531910794846.Spec : Prop :=
  ∀ n, P3928853531910794846.a n = (A309338 n : ℚ)

end A309338

/-! ## A309338.P4900513049675465755

`(n*A309335(n))%(2*n+1)²²`
-/

namespace A309338.P4900513049675465755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A309335 n) (((2 * n + 1) ^ 2) ^ 2 : ℤ)

end

end A309338.P4900513049675465755

namespace A309338

/-- `(n*A309335(n))%(2*n+1)²²` -/
def P4900513049675465755.Spec : Prop :=
  ∀ n, P4900513049675465755.a n = A309338 n

end A309338

/-! ## A309338.P12491064321049273136

`abs(A001489(n)*A309335(n))`
-/

namespace A309338.P12491064321049273136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A309335 n|

end

end A309338.P12491064321049273136

namespace A309338

/-- `abs(A001489(n)*A309335(n))` -/
def P12491064321049273136.Spec : Prop :=
  ∀ n, P12491064321049273136.a n = A309338 n

end A309338

/-! ## A309338.P7747790217641675390

`abs(A038608(n)*A309335(n))`
-/

namespace A309338.P7747790217641675390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038608 n * A309335 n|

end

end A309338.P7747790217641675390

namespace A309338

/-- `abs(A038608(n)*A309335(n))` -/
def P7747790217641675390.Spec : Prop :=
  ∀ n, P7747790217641675390.a n = A309338 n

end A309338

/-! ## A309338.P14403181248846318452

`2*A309336(n)-A000583(n)`
-/

namespace A309338.P14403181248846318452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309336 n - A000583 n

end

end A309338.P14403181248846318452

namespace A309338

/-- `2*A309336(n)-A000583(n)` -/
def P14403181248846318452.Spec : Prop :=
  ∀ n, P14403181248846318452.a n = A309338 n

end A309338

/-! ## A309338.P8302470699009796976

`floor(A005843(n)/2*A309335(n))`
-/

namespace A309338.P8302470699009796976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 n : ℚ) / 2 * (A309335 n : ℚ)⌋

end

end A309338.P8302470699009796976

namespace A309338

/-- `floor(A005843(n)/2*A309335(n))` -/
def P8302470699009796976.Spec : Prop :=
  ∀ n, P8302470699009796976.a n = A309338 n

end A309338

/-! ## A309338.P5556699132725738762

`n*A293808(∑[n])+n*A309335(n)`
-/

namespace A309338.P5556699132725738762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293808 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * A309335 n

end

end A309338.P5556699132725738762

namespace A309338

/-- `n*A293808(∑[n])+n*A309335(n)` -/
def P5556699132725738762.Spec : Prop :=
  ∀ n, P5556699132725738762.a n = A309338 n

end A309338

/-! ## A309338.P17399337816018328366

`A001105(n)*A129194(n)-A129194(A129194(n))`
-/

namespace A309338.P17399337816018328366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A129194 n - A129194 (A129194 n).toNat

end

end A309338.P17399337816018328366

namespace A309338

/-- `A001105(n)*A129194(n)-A129194(A129194(n))` -/
def P17399337816018328366.Spec : Prop :=
  ∀ n, P17399337816018328366.a n = A309338 n

end A309338

/-! ## A309338.P3344171866833344308

`2*A129194(n²)-A129194(A129194(n))`
-/

namespace A309338.P3344171866833344308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129194 (n ^ 2) - A129194 (A129194 n).toNat

end

end A309338.P3344171866833344308

namespace A309338

/-- `2*A129194(n²)-A129194(A129194(n))` -/
def P3344171866833344308.Spec : Prop :=
  ∀ n, P3344171866833344308.a n = A309338 n

end A309338

/-!
# A309340: a(n) is the least nonnegative number whose binary digits do not appear in order (not necessarily consecutively) in the concatenation of the binary representations of all previous terms.

The programs for A309340, there is no canonical definition to state claims against.
-/

/-! ## A309340.P5528057153528418472

`floor(A018547(A018550(n+1))/2)`
-/

namespace A309340.P5528057153528418472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018547 (A018550 (n + 1)).toNat : ℚ) / 2⌋

end

end A309340.P5528057153528418472

/-! ## A309340.P10031423752691002480

`A230980(A146058(2*(n+1))+n)`
-/

namespace A309340.P10031423752691002480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A146058 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A309340.P10031423752691002480

/-! ## A309340.P12221645854499642847

`lcm(A329316(2^n-1), A329356(n))`
-/

namespace A309340.P12221645854499642847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A329316 (2 ^ n - 1)) (A329356 n)

end

end A309340.P12221645854499642847

/-!
# A309341: a(n) = Sum_{j=1..n*(n-1)} (n*j mod (n+j)).

The programs for A309341, there is no canonical definition to state claims against.
-/

/-! ## A309341.P10407051987889900828

`A111338(or(∑[∑[(1-n)²]]+n², 2^n))`
-/

namespace A309341.P10407051987889900828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (Int.lor (∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)) (2 ^ n : ℤ)).toNat

end

end A309341.P10407051987889900828

/-!
# A309342: a(1) = 0, and for n >= 1, a(n+1) is the number of times the binary representation of a(n) appears in the concatenation of the binary representations of a(1), ..., a(n-1).

The programs for A309342, there is no canonical definition to state claims against.
-/

/-! ## A309342.P6175637042247843924

`A195819(A001373(n))%(∏{p}[n+1, #-1]*∏{e}[n+1, #])`
-/

namespace A309342.P6175637042247843924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195819 (A001373 n).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

end

end A309342.P6175637042247843924

/-! ## A309342.P9357096250499988798

`A046660(A000019(n+1)*A286969(n))`
-/

namespace A309342.P9357096250499988798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A000019 (n + 1) * A286969 n).toNat

end

end A309342.P9357096250499988798

/-! ## A309342.P13022017572654293126

`A353852(A359670(n))%A000010(n+1)`
-/

namespace A309342.P13022017572654293126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353852 (A359670 n).toNat) (A000010 (n + 1))

end

end A309342.P13022017572654293126

/-!
# A309343: Position of start of first occurrence of palindromic prime(n) after the decimal point in expansion of Pi.

The programs for A309343, there is no canonical definition to state claims against.
-/

/-! ## A309343.P7607233106516827675

`A037024(A075807(n+1))`
-/

namespace A309343.P7607233106516827675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037024 (A075807 (n + 1)).toNat

end

end A309343.P7607233106516827675

/-! ## A309343.P15999805460643101185

`A014777(A002385(n+1))`
-/

namespace A309343.P15999805460643101185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A002385 (n + 1)).toNat

end

end A309343.P15999805460643101185

/-! ## A309343.P16514850944355718491

`A014777(A088562(n+1))`
-/

namespace A309343.P16514850944355718491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A088562 (n + 1)).toNat

end

end A309343.P16514850944355718491

/-! ## A309343.P1947188949769528579

`A014777(A069217(n+2))`
-/

namespace A309343.P1947188949769528579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A069217 (n + 2)).toNat

end

end A309343.P1947188949769528579

/-!
# A309346: Sums of two refactorable numbers.

The programs for A309346, there is no canonical definition to state claims against.
-/

/-! ## A309346.P573743233301126830

`comp[A309102(n+1)]`
-/

namespace A309346.P573743233301126830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A309346.P573743233301126830

/-! ## A309346.P14700427126599254212

`lt[0, A172398(n+1)]+1`
-/

namespace A309346.P14700427126599254212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309346.P14700427126599254212

/-! ## A309346.P7736663123296265810

`lt[(1-A172398(n^floor(atan(n)))/10)², 1]`
-/

namespace A309346.P7736663123296265810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (A172398 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat : ℚ) / 10) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A309346.P7736663123296265810

/-! ## A309346.P8655141699431786941

`lt[0, A172398(A028310(n))]`
-/

namespace A309346.P8655141699431786941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309346.P8655141699431786941

/-! ## A309346.P11508878056513110314

`comp[record[A309102(A286589(n))]]`
-/

namespace A309346.P11508878056513110314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309102 (A286589 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A309346.P11508878056513110314

/-! ## A309346.P3260366562805383466

`comp[eq[0, A172398(A065033(2*n))]]`
-/

namespace A309346.P3260366562805383466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (A065033 (2 * n)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A309346.P3260366562805383466

/-! ## A309346.P15995699434302979330

`comp[eq[0, A172398(A123108(2*n))]]`
-/

namespace A309346.P15995699434302979330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (A123108 (2 * n)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A309346.P15995699434302979330

/-! ## A309346.P12605929512407238783

`eq[0, A008683((A172398(n+1)+3)!)]+1`
-/

namespace A309346.P12605929512407238783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (A172398 (n + 1) + 3).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309346.P12605929512407238783

/-! ## A309346.P5547799091020811593

`eq[0, val(A000040(A172398(n+1)+1), 2)]+1`
-/

namespace A309346.P5547799091020811593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A172398 (n + 1) + 1).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309346.P5547799091020811593

/-!
# A309348: Sums of two refactorable numbers whose product is refactorable.

The programs for A309348, there is no canonical definition to state claims against.
-/

/-! ## A309348.P5472427723975313809

`∪[A087004(n+1), A309349(n+1)]`
-/

namespace A309348.P5472427723975313809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309348.P5472427723975313809

/-! ## A309348.P306025006607440052

`∪[A309349(n+1), A351447(n+1)]`
-/

namespace A309348.P306025006607440052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309348.P306025006607440052

/-! ## A309348.P2301259083404084203

`∪[A309349(n+1), A087004(A005408(n))]`
-/

namespace A309348.P2301259083404084203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309348.P2301259083404084203

/-!
# A309349: Sums of two distinct refactorable numbers whose product is refactorable.

The programs for A309349, there is no canonical definition to state claims against.
-/

/-! ## A309349.P11944685920178420986

`A309348(comp[A192458(n)²])`
-/

namespace A309349.P11944685920178420986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192458 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A309349.P11944685920178420986

/-! ## A309349.P14658734834188266157

`A309348(comp[A330725(n²)²])`
-/

namespace A309349.P14658734834188266157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A309349.P14658734834188266157

/-! ## A309349.P13534881820237581701

`A309348(A180925(n+1)+1)`
-/

namespace A309349.P13534881820237581701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309348 (A180925 (n + 1) + 1).toNat

end

end A309349.P13534881820237581701

/-! ## A309349.P6118427644792417146

`A309348(comp[A330725(n+2)^n])`
-/

namespace A309349.P6118427644792417146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (n + 2) ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A309349.P6118427644792417146

/-! ## A309349.P9379315562325821872

`A309348(comp[(2-A309348(n+1))²])`
-/

namespace A309349.P9379315562325821872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A309348 (n + 1)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A309349.P9379315562325821872

/-!
# A309351: Sums of two distinct refactorable numbers whose product and difference are refactorable.

The programs for A309351, there is no canonical definition to state claims against.
-/

/-! ## A309351.P14793596028461311450

`∩[A309349(n+1), A309350(n+1)]`
-/

namespace A309351.P14793596028461311450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309351.P14793596028461311450

/-! ## A309351.P5783672409938910276

`A309350(A249157(n+2)+1)`
-/

namespace A309351.P5783672409938910276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309350 (A249157 (n + 2) + 1).toNat

end

end A309351.P5783672409938910276

/-! ## A309351.P12702564417793705451

`A309350(A002998(n)+2)`
-/

namespace A309351.P12702564417793705451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309350 (A002998 n + 2).toNat

end

end A309351.P12702564417793705451

/-! ## A309351.P11180415276393617251

`A309350(A043316(n+2))`
-/

namespace A309351.P11180415276393617251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309350 (A043316 (n + 2)).toNat

end

end A309351.P11180415276393617251

/-! ## A309351.P17472183408538501476

`A309350(A044913(n+2))`
-/

namespace A309351.P17472183408538501476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309350 (A044913 (n + 2)).toNat

end

end A309351.P17472183408538501476

/-!
# A309352: Number of free trees of n vertices whose automorphisms are a 2-group.

The programs for A309352, there is no canonical definition to state claims against.
-/

/-! ## A309352.P5491748428528422678

`A102800(ceil(A000740(n+1)/20))`
-/

namespace A309352.P5491748428528422678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 ⌈(A000740 (n + 1) : ℚ) / 20⌉.toNat

end

end A309352.P5491748428528422678

/-! ## A309352.P15616185150867174680

`ceil(A319765(n)/A351062(n+1))`
-/

namespace A309352.P15616185150867174680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319765 n : ℚ) / (A351062 (n + 1) : ℚ)⌉

end

end A309352.P15616185150867174680

/-!
# A309353: Let d(1), d(2), ..., d(q) be the q divisors of a number m. The sequence lists the numbers m such that {phi(d(1)), phi(d(2)), ..., phi(d(q))} is the set of the divisors of a number k, where phi is the Euler totient function.

The programs for A309353, there is no canonical definition to state claims against.
-/

/-! ## A309353.P4385470736276008631

`∩[A003401(n+1), A260653(n+1)]`
-/

namespace A309353.P4385470736276008631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309353.P4385470736276008631

/-! ## A309353.P11619513259115594215

`∩[A003401(n+1), A336506(n+1)]`
-/

namespace A309353.P11619513259115594215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309353.P11619513259115594215

/-! ## A309353.P18008739251580975179

`filter[A260653(n+1), A336477(#)]`
-/

namespace A309353.P18008739251580975179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A309353.P18008739251580975179

/-! ## A309353.P11235120682456476084

`filter[A336506(n+1), A336477(#)]`
-/

namespace A309353.P11235120682456476084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A309353.P11235120682456476084

/-! ## A309353.P6223777009044102582

`filter[A336504(n+1), A336477(#)]`
-/

namespace A309353.P6223777009044102582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A309353.P6223777009044102582

/-! ## A309353.P1754266913979900016

`∩[A003401(n+1), A336504(n+1)]`
-/

namespace A309353.P1754266913979900016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309353.P1754266913979900016

/-!
# A309354: Primes of the form p+q+r where p < q < r = p+6 are consecutive primes.

The programs for A309354, there is no canonical definition to state claims against.
-/

/-! ## A309354.P2164110786615916746

`∪[A376013(n+1), A377406(n+1)]`
-/

namespace A309354.P2164110786615916746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309354.P2164110786615916746

/-! ## A309354.P8356745454042192596

`p?[A026284(A031131(n+1))*A034961(n+1)]`
-/

namespace A309354.P8356745454042192596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (A031131 (n + 1)).toNat * A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309354.P8356745454042192596

/-! ## A309354.P11151415481899310887

`A007310(A290130(n+1)+2)`
-/

namespace A309354.P11151415481899310887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A290130 (n + 1) + 2).toNat

end

end A309354.P11151415481899310887

/-! ## A309354.P13084803769132955077

`2*A032766(A290130(n+1)+2)-1`
-/

namespace A309354.P13084803769132955077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032766 (A290130 (n + 1) + 2).toNat - 1

end

end A309354.P13084803769132955077

/-! ## A309354.P8433754535901117997

`A151800(A016789(A290130(n+1)))`
-/

namespace A309354.P8433754535901117997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A016789 (A290130 (n + 1)).toNat).toNat

end

end A309354.P8433754535901117997

/-!
# A309355: Even numbers k such that k! is divisible by k*(k+1)/2.

The programs for A309355, the canonical program `A309355.P9345418795961828822` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309355 has offset 1).

The definition of A309355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309355.P9345418795961828822

`A071904(n+1)-1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309355

/-- `A071904(n+1)-1` -/
def P9345418795961828822.Spec : Prop :=
  ∀ n, P9345418795961828822.a n = A309355 (n + 1)

theorem P9345418795961828822.correct : P9345418795961828822.Spec := by
  intro n
  simp only [A309355, Nat.add_sub_cancel]

end A309355

/-! ## A309355.P18175625782065577386

`∑[A067970(n+1)]`
-/

namespace A309355.P18175625782065577386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309355.P18175625782065577386

namespace A309355

/-- `∑[A067970(n+1)]` -/
def P18175625782065577386.Spec : Prop :=
  ∀ n, P18175625782065577386.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P3537516185866592783

`A007921(n+1)+1`
-/

namespace A309355.P3537516185866592783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) + 1

end

end A309355.P3537516185866592783

namespace A309355

/-- `A007921(n+1)+1` -/
def P3537516185866592783.Spec : Prop :=
  ∀ n, P3537516185866592783.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P10500704563854555514

`A146538(n+1)+2`
-/

namespace A309355.P10500704563854555514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1) + 2

end

end A309355.P10500704563854555514

namespace A309355

/-- `A146538(n+1)+2` -/
def P10500704563854555514.Spec : Prop :=
  ∀ n, P10500704563854555514.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P2216610038660184007

`eq[1, A107393(n+1)]`
-/

namespace A309355.P2216610038660184007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309355.P2216610038660184007

namespace A309355

/-- `eq[1, A107393(n+1)]` -/
def P2216610038660184007.Spec : Prop :=
  ∀ n, (P2216610038660184007.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P8329485475413725097

`eq[1, A107393(n)]-1`
-/

namespace A309355.P8329485475413725097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A309355.P8329485475413725097

namespace A309355

/-- `eq[1, A107393(n)]-1` -/
def P8329485475413725097.Spec : Prop :=
  ∀ n, P8329485475413725097.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P9070816929017111325

`lt[1, A325937(n+1)]`
-/

namespace A309355.P9070816929017111325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309355.P9070816929017111325

namespace A309355

/-- `lt[1, A325937(n+1)]` -/
def P9070816929017111325.Spec : Prop :=
  ∀ n, (P9070816929017111325.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P6653446083141310611

`lt[1, A325960(n+1)]`
-/

namespace A309355.P6653446083141310611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309355.P6653446083141310611

namespace A309355

/-- `lt[1, A325960(n+1)]` -/
def P6653446083141310611.Spec : Prop :=
  ∀ n, (P6653446083141310611.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P13410935093439704215

`2*lt[1, A340101(n)]`
-/

namespace A309355.P13410935093439704215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309355.P13410935093439704215

namespace A309355

/-- `2*lt[1, A340101(n)]` -/
def P13410935093439704215.Spec : Prop :=
  ∀ n, (P13410935093439704215.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P1322199716404770829

`2*lt[1, A352063(n)]`
-/

namespace A309355.P1322199716404770829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309355.P1322199716404770829

namespace A309355

/-- `2*lt[1, A352063(n)]` -/
def P1322199716404770829.Spec : Prop :=
  ∀ n, (P1322199716404770829.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P18110356704523532181

`∑[2*A196274(n+1)]`
-/

namespace A309355.P18110356704523532181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309355.P18110356704523532181

namespace A309355

/-- `∑[2*A196274(n+1)]` -/
def P18110356704523532181.Spec : Prop :=
  ∀ n, P18110356704523532181.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P12383869750363695946

`2*(A153238(n+1)+1)`
-/

namespace A309355.P12383869750363695946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153238 (n + 1) + 1)

end

end A309355.P12383869750363695946

namespace A309355

/-- `2*(A153238(n+1)+1)` -/
def P12383869750363695946.Spec : Prop :=
  ∀ n, P12383869750363695946.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P13098500730772302187

`2*(A053726(n+1)-1)`
-/

namespace A309355.P13098500730772302187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053726 (n + 1) - 1)

end

end A309355.P13098500730772302187

namespace A309355

/-- `2*(A053726(n+1)-1)` -/
def P13098500730772302187.Spec : Prop :=
  ∀ n, P13098500730772302187.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P14376129976221299299

`2*(A153052(n+1)+2)`
-/

namespace A309355.P14376129976221299299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153052 (n + 1) + 2)

end

end A309355.P14376129976221299299

namespace A309355

/-- `2*(A153052(n+1)+2)` -/
def P14376129976221299299.Spec : Prop :=
  ∀ n, P14376129976221299299.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P3410997838420879763

`2*(A153053(n+1)+3)`
-/

namespace A309355.P3410997838420879763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153053 (n + 1) + 3)

end

end A309355.P3410997838420879763

namespace A309355

/-- `2*(A153053(n+1)+3)` -/
def P3410997838420879763.Spec : Prop :=
  ∀ n, P3410997838420879763.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P10232749698279039827

`2*(A155723(n+1)+4)`
-/

namespace A309355.P10232749698279039827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155723 (n + 1) + 4)

end

end A309355.P10232749698279039827

namespace A309355

/-- `2*(A155723(n+1)+4)` -/
def P10232749698279039827.Spec : Prop :=
  ∀ n, P10232749698279039827.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P1681444124868577172

`2*lt[1, A001222(2*n+1)]`
-/

namespace A309355.P1681444124868577172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309355.P1681444124868577172

namespace A309355

/-- `2*lt[1, A001222(2*n+1)]` -/
def P1681444124868577172.Spec : Prop :=
  ∀ n, (P1681444124868577172.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P8940391174600484406

`2*lt[2, A000005(2*n+1)]`
-/

namespace A309355.P8940391174600484406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309355.P8940391174600484406

namespace A309355

/-- `2*lt[2, A000005(2*n+1)]` -/
def P8940391174600484406.Spec : Prop :=
  ∀ n, (P8940391174600484406.a n : ℤ) = A309355 (n + 1)

end A309355

/-! ## A309355.P16919033182874787655

`2*(A008508(n+1)+n+1)`
-/

namespace A309355.P16919033182874787655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008508 (n + 1) + (n + 1 : ℤ))

end

end A309355.P16919033182874787655

namespace A309355

/-- `2*(A008508(n+1)+n+1)` -/
def P16919033182874787655.Spec : Prop :=
  ∀ n, P16919033182874787655.a n = A309355 (n + 1)

end A309355

/-! ## A309355.P10091108791588863300

`A160522(n+1)+2*n+3`
-/

namespace A309355.P10091108791588863300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160522 (n + 1) + (2 * n + 3 : ℤ)

end

end A309355.P10091108791588863300

namespace A309355

/-- `A160522(n+1)+2*n+3` -/
def P10091108791588863300.Spec : Prop :=
  ∀ n, P10091108791588863300.a n = A309355 (n + 1)

end A309355

/-!
# A309356: MM-numbers of labeled simple covering graphs.

The programs for A309356, there is no canonical definition to state claims against.
-/

/-! ## A309356.P9966903915610637900

`record[A000026(A339113(n+1))]`
-/

namespace A309356.P9966903915610637900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A339113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309356.P9966903915610637900

/-! ## A309356.P2307392477715519440

`filter[A339113(n+1), A008966(#)]`
-/

namespace A309356.P2307392477715519440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A309356.P2307392477715519440

/-! ## A309356.P8478175270309822114

`filter[A339113(n+1), A132350(#)]`
-/

namespace A309356.P8478175270309822114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A309356.P8478175270309822114

/-! ## A309356.P15250364330871655778

`filter[A339113(n+1), A181183(#)]`
-/

namespace A309356.P15250364330871655778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A309356.P15250364330871655778

/-! ## A309356.P8130307849976513066

`filter[A339113(n+1), A295316(#)]`
-/

namespace A309356.P8130307849976513066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A309356.P8130307849976513066

/-! ## A309356.P16658538901086481367

`filter[A339113(n+1), A297086(#)]`
-/

namespace A309356.P16658538901086481367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A309356.P16658538901086481367

/-! ## A309356.P12152912483807507933

`filter[A339113(n+1), A307421(#)]`
-/

namespace A309356.P12152912483807507933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A309356.P12152912483807507933

/-! ## A309356.P412314019825298670

`filter[A339113(n+1), A323154(#)]`
-/

namespace A309356.P412314019825298670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A309356.P412314019825298670

/-! ## A309356.P9879819183640771984

`filter[A339113(n+1), A323239(#)]`
-/

namespace A309356.P9879819183640771984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A309356.P9879819183640771984

/-! ## A309356.P13012753992417059245

`filter[A339113(n+1), A353519(#)]`
-/

namespace A309356.P13012753992417059245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A309356.P13012753992417059245

/-!
# A309358: Numbers k such that 10^k + 1 is a semiprime.

The programs for A309358, there is no canonical definition to state claims against.
-/

/-! ## A309358.P65190950302877703

`eq[2, A119704(n)]`
-/

namespace A309358.P65190950302877703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309358.P65190950302877703

/-! ## A309358.P522489058682902852

`eq[4, A344897(n)]`
-/

namespace A309358.P522489058682902852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309358.P522489058682902852

/-! ## A309358.P14788853630760711697

`eq[2, A057934(n+1)]+1`
-/

namespace A309358.P14788853630760711697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309358.P14788853630760711697

/-! ## A309358.P16498111840022732856

`eq[2, A057934(A028310(n))]`
-/

namespace A309358.P16498111840022732856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309358.P16498111840022732856

/-! ## A309358.P13632746558290135073

`A020725(eq[2, A057934(n+1)])`
-/

namespace A309358.P13632746558290135073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309358.P13632746558290135073

/-!
# A309359: Median of the primes p with 2^(n-1) < p < 2^n.

The programs for A309359, there is no canonical definition to state claims against.
-/

/-! ## A309359.P12070827038684763332

`A011585(A219107((n+1)²))+6*2^n`
-/

namespace A309359.P12070827038684763332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A219107 ((n + 1) ^ 2)).toNat + (6 * 2 ^ n : ℤ)

end

end A309359.P12070827038684763332

/-! ## A309359.P609186149408677217

`A052955(2*n+3)+A035179(A005867(n))`
-/

namespace A309359.P609186149408677217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 3) + A035179 (A005867 n).toNat

end

end A309359.P609186149408677217

/-! ## A309359.P1160840718720240126

`A052955(2*n+3)+A002324(A299926(n+1))`
-/

namespace A309359.P1160840718720240126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 3) + A002324 (A299926 (n + 1)).toNat

end

end A309359.P1160840718720240126

/-!
# A309360: Numbers n such that the number of interior intersection points A091908(n) of the n-intersected triangle decreases when the subdivision of the triangle is refined from n-1 to n cutting line segments.

The programs for A309360, there is no canonical definition to state claims against.
-/

/-! ## A309360.P16863971468670841307

`lt[A091908(n+1), A091908(A028310(n))]`
-/

namespace A309360.P16863971468670841307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309360.P16863971468670841307

/-! ## A309360.P15638559997317474559

`lt[A091908(n+1), A091908(A093178(n))]`
-/

namespace A309360.P15638559997317474559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309360.P15638559997317474559

/-! ## A309360.P17168260384011832128

`lt[A331782(n+1), A331782(A028310(n))]`
-/

namespace A309360.P17168260384011832128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309360.P17168260384011832128

/-! ## A309360.P4050480404645053249

`lt[A331782(n+1), A331782(A093178(n))]`
-/

namespace A309360.P4050480404645053249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309360.P4050480404645053249

/-! ## A309360.P12984749817823387030

`A004442(lt[A091908(n+2), A091908(n+1)])`
-/

namespace A309360.P12984749817823387030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309360.P12984749817823387030

/-!
# A309361: Numbers n such that the number of interior intersection points A091908(n) of the n-intersected triangle increases exactly by 1 when the subdivision of the triangle is refined from n-1 to n cutting line segments.

The programs for A309361, there is no canonical definition to state claims against.
-/

/-! ## A309361.P12195816914804346195

`eq[1, Δ[A091908(n+1)]]+1`
-/

namespace A309361.P12195816914804346195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309361.P12195816914804346195

/-! ## A309361.P10845943050897208462

`A004442(eq[1, Δ[A091908(n+1)]])`
-/

namespace A309361.P10845943050897208462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309361.P10845943050897208462

/-! ## A309361.P6530223265996800724

`record[A004442(n)/Δ[A091908(n+1)]]`
-/

namespace A309361.P6530223265996800724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309361.P6530223265996800724

/-! ## A309361.P6872609725062279943

`record[A193356(n+1)/Δ[A091908(n+1)]]`
-/

namespace A309361.P6872609725062279943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193356 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309361.P6872609725062279943

/-! ## A309361.P74126075072888025

`record[(n+1)/(A091908(n+2)-A091908(n+1))]`
-/

namespace A309361.P74126075072888025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A091908 (n + 2) - A091908 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309361.P74126075072888025

/-! ## A309361.P16549102700099460208

`eq[A091908(A028310(n))+1, A091908(n+1)]`
-/

namespace A309361.P16549102700099460208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309361.P16549102700099460208

/-! ## A309361.P3637209995803123983

`eq[A091908(A004442(n)+1)+1, A091908(n+1)]`
-/

namespace A309361.P3637209995803123983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (A004442 n + 1).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309361.P3637209995803123983

/-!
# A309362: Positions of 0's in A326764 (interpreted as a flat sequence).

The programs for A309362, there is no canonical definition to state claims against.
-/

/-! ## A309362.P10815814545616382970

`eq[0, A326764(n)]`
-/

namespace A309362.P10815814545616382970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309362.P10815814545616382970

/-! ## A309362.P13842319761860640012

`record[(n+1)*(1-A326764(n+1))]`
-/

namespace A309362.P13842319761860640012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A326764 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309362.P13842319761860640012

/-! ## A309362.P18119975596395072683

`record[n-A275895(n)*A326764(n)]`
-/

namespace A309362.P18119975596395072683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275895 n * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309362.P18119975596395072683

/-! ## A309362.P17750296744264973818

`record[n-A000201(n+1)*A326764(n)]`
-/

namespace A309362.P17750296744264973818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000201 (n + 1) * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309362.P17750296744264973818

/-! ## A309362.P3041347786281754697

`record[n-A001950(n+1)*A326764(n)]`
-/

namespace A309362.P3041347786281754697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001950 (n + 1) * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309362.P3041347786281754697

/-! ## A309362.P12029657292568642299

`record[n-A326764(n)*A326766(n)]`
-/

namespace A309362.P12029657292568642299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326764 n * A326766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309362.P12029657292568642299

/-!
# A309363: Van Eck's sequence (cf. A181391), but outputting 2 for a new number, not 0.

The programs for A309363, there is no canonical definition to state claims against.
-/

/-! ## A309363.P10454894449330392857

`A328294(round(acot(n)+n))%A175041(n)`
-/

namespace A309363.P10454894449330392857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328294 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A175041 n)

end

end A309363.P10454894449330392857

/-! ## A309363.P8877111505668017068

`A328294(A233583(n+1))%A175041(n)`
-/

namespace A309363.P8877111505668017068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328294 (A233583 (n + 1)).toNat) (A175041 n)

end

end A309363.P8877111505668017068

/-! ## A309363.P11183012355976568590

`A160383(60*n²)`
-/

namespace A309363.P11183012355976568590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (60 * n ^ 2)

end

end A309363.P11183012355976568590

/-! ## A309363.P2699882142269974525

`∑{p}[A022571(n), A051731(#)]`
-/

namespace A309363.P2699882142269974525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051731 p

end

end A309363.P2699882142269974525

/-! ## A309363.P12079969561593293778

`A303975(A356573(n+4)+A002371(3*n+5))`
-/

namespace A309363.P12079969561593293778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A356573 (n + 4) + A002371 (3 * n + 5)).toNat

end

end A309363.P12079969561593293778

/-!
# A309365: The number of primes between two consecutive lucky numbers, bounds excluded.

The programs for A309365, there is no canonical definition to state claims against.
-/

/-! ## A309365.P3509718330573887444

`A022307(A196020(n+2)%A097371(n+1))`
-/

namespace A309365.P3509718330573887444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (Int.tmod (A196020 (n + 2)) (A097371 (n + 1))).toNat

end

end A309365.P3509718330573887444

/-! ## A309365.P10100830995254651909

`A245714(A362079(3*n+2)+A175969(n+1))`
-/

namespace A309365.P10100830995254651909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A362079 (3 * n + 2) + A175969 (n + 1)).toNat

end

end A309365.P10100830995254651909

/-! ## A309365.P3728686427580401117

`A158971(A211006(n+1)+1)`
-/

namespace A309365.P3728686427580401117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158971 (A211006 (n + 1) + 1).toNat

end

end A309365.P3728686427580401117

/-! ## A309365.P8963343233146441240

`A172250(A172249(n)+A028240(n))`
-/

namespace A309365.P8963343233146441240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172250 (A172249 n + A028240 n).toNat

end

end A309365.P8963343233146441240

/-!
# A309367: The number of lucky numbers between two consecutive primes, bounds excluded.

The programs for A309367, there is no canonical definition to state claims against.
-/

/-! ## A309367.P8162145877531350928

`A052509(A018058(n))%A285189(A001223(n+1))`
-/

namespace A309367.P8162145877531350928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052509 (A018058 n).toNat) (A285189 (A001223 (n + 1)).toNat)

end

end A309367.P8162145877531350928

/-! ## A309367.P7344751944048727945

`A180074(A121805(n+1))%A001222(A089557(n+1))`
-/

namespace A309367.P7344751944048727945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180074 (A121805 (n + 1)).toNat) (A001222 (A089557 (n + 1)).toNat)

end

end A309367.P7344751944048727945

/-! ## A309367.P8634014464908699827

`A125005(A312607(n)+1)`
-/

namespace A309367.P8634014464908699827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A312607 n + 1).toNat

end

end A309367.P8634014464908699827

/-! ## A309367.P13724136095149848905

`val(A351583(A351596(n+3)), 3)`
-/

namespace A309367.P13724136095149848905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351583 (A351596 (n + 3)).toNat).toNat 3

end

end A309367.P13724136095149848905

/-! ## A309367.P5044279185691688078

`A316864(A332816(n+1)+A161712(n))`
-/

namespace A309367.P5044279185691688078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A332816 (n + 1) + A161712 n).toNat

end

end A309367.P5044279185691688078

/-!
# A309368: a(n) = Sum_{d|n} prime(n/d)^d.

The programs for A309368, the canonical program `A309368.P4501545708741556862` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309368 has offset 1).

The definition of A309368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309368.P4501545708741556862

`∑{d}[n+1, A000040((n+1)/#)^#]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309368

/-- `∑{d}[n+1, A000040((n+1)/#)^#]` -/
def P4501545708741556862.Spec : Prop :=
  ∀ n, P4501545708741556862.a n = A309368 (n + 1)

theorem P4501545708741556862.correct : P4501545708741556862.Spec := by
  intro n
  simp only [A309368, Nat.add_sub_cancel]

end A309368

/-! ## A309368.P13727662573892995140

`∑{d}[n+1, root(A000040(#), #/(n+1))]`
-/

namespace A309368.P13727662573892995140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000040 d : ℝ) ^ (1 / ((d : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A309368.P13727662573892995140

namespace A309368

/-- `∑{d}[n+1, root(A000040(#), #/(n+1))]` -/
def P13727662573892995140.Spec : Prop :=
  ∀ n, P13727662573892995140.a n = (A309368 (n + 1) : ℝ)

end A309368

/-! ## A309368.P10114832437984040459

`∑{d}[n+1, A008578((n+1)/#+1)^#]`
-/

namespace A309368.P10114832437984040459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + 1)).toNat ^ d

end

end A309368.P10114832437984040459

namespace A309368

/-- `∑{d}[n+1, A008578((n+1)/#+1)^#]` -/
def P10114832437984040459.Spec : Prop :=
  ∀ n, P10114832437984040459.a n = A309368 (n + 1)

end A309368

/-!
# A309369: a(n) = Sum_{d|n} phi(n/d)^d, where phi = Euler totient function (A000010).

The programs for A309369, the canonical program `A309369.P13434162935675506423` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309369 has offset 1).

The definition of A309369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309369.P13434162935675506423

`∑{d}[n+1, A000010((n+1)/#)^#]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309369

/-- `∑{d}[n+1, A000010((n+1)/#)^#]` -/
def P13434162935675506423.Spec : Prop :=
  ∀ n, P13434162935675506423.a n = A309369 (n + 1)

theorem P13434162935675506423.correct : P13434162935675506423.Spec := by
  intro n
  simp only [A309369, Nat.add_sub_cancel]

end A309369

/-! ## A309369.P16282531909621681289

`∑{d}[n+1, root(A000010(#), #/(n+1))]`
-/

namespace A309369.P16282531909621681289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℝ) ^ (1 / ((d : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A309369.P16282531909621681289

namespace A309369

/-- `∑{d}[n+1, root(A000010(#), #/(n+1))]` -/
def P16282531909621681289.Spec : Prop :=
  ∀ n, P16282531909621681289.a n = (A309369 (n + 1) : ℝ)

end A309369

/-!
# A309372: a(n) = n^2 - n^3 + n^4.

The programs for A309372, the canonical program `A309372.P512022512539943308` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309372 has offset 0).

The definition of A309372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309372.P512022512539943308

`n²*((n-1)*n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309372

/-- `n²*((n-1)*n+1)` -/
def P512022512539943308.Spec : Prop :=
  ∀ n, P512022512539943308.a n = A309372 n

theorem P512022512539943308.correct : P512022512539943308.Spec := by
  intro n
  simp only [A309372]

end A309372

/-! ## A309372.P18326770097014225285

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=63, a(4)=208`
-/

namespace A309372.P18326770097014225285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12, 63, 208] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A309372.P18326770097014225285

namespace A309372

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18326770097014225285.Spec : Prop :=
  ∀ n, P18326770097014225285.a n = A309372 n

end A309372

/-! ## A309372.P5701929980389405895

`lcm((1-n)²+n, n²)`
-/

namespace A309372.P5701929980389405895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) (n ^ 2 : ℤ)

end

end A309372.P5701929980389405895

namespace A309372

/-- `lcm((1-n)²+n, n²)` -/
def P5701929980389405895.Spec : Prop :=
  ∀ n, (P5701929980389405895.a n : ℤ) = A309372 n

end A309372

/-! ## A309372.P2604691034132955854

`n²²-2*n*C(n, 2)`
-/

namespace A309372.P2604691034132955854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (2 * n * Nat.choose n 2 : ℤ)

end

end A309372.P2604691034132955854

namespace A309372

/-- `n²²-2*n*C(n, 2)` -/
def P2604691034132955854.Spec : Prop :=
  ∀ n, P2604691034132955854.a n = A309372 n

end A309372

/-! ## A309372.P7540310557244657025

`n²²-n*lcm(n, n-1)`
-/

namespace A309372.P7540310557244657025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (n * Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

end

end A309372.P7540310557244657025

namespace A309372

/-- `n²²-n*lcm(n, n-1)` -/
def P7540310557244657025.Spec : Prop :=
  ∀ n, P7540310557244657025.a n = A309372 n

end A309372

/-! ## A309372.P17699834803818156092

`A085537(n)+n²`
-/

namespace A309372.P17699834803818156092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + (n ^ 2 : ℤ)

end

end A309372.P17699834803818156092

namespace A309372

/-- `A085537(n)+n²` -/
def P17699834803818156092.Spec : Prop :=
  ∀ n, P17699834803818156092.a n = A309372 n

end A309372

/-! ## A309372.P18441573052593015039

`A060884(n)-1+n`
-/

namespace A309372.P18441573052593015039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n - 1 + (n : ℤ)

end

end A309372.P18441573052593015039

namespace A309372

/-- `A060884(n)-1+n` -/
def P18441573052593015039.Spec : Prop :=
  ∀ n, P18441573052593015039.a n = A309372 n

end A309372

/-! ## A309372.P16507207568243253010

`2*A071252(n)+n`
-/

namespace A309372.P16507207568243253010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071252 n + (n : ℤ)

end

end A309372.P16507207568243253010

namespace A309372

/-- `2*A071252(n)+n` -/
def P16507207568243253010.Spec : Prop :=
  ∀ n, P16507207568243253010.a n = A309372 n

end A309372

/-! ## A309372.P2739431934174960198

`2*A100855(n)-n`
-/

namespace A309372.P2739431934174960198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100855 n - (n : ℤ)

end

end A309372.P2739431934174960198

namespace A309372

/-- `2*A100855(n)-n` -/
def P2739431934174960198.Spec : Prop :=
  ∀ n, P2739431934174960198.a n = A309372 n

end A309372

/-! ## A309372.P6369130261627216097

`A071253(n)-n^3`
-/

namespace A309372.P6369130261627216097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 n - (n ^ 3 : ℤ)

end

end A309372.P6369130261627216097

namespace A309372

/-- `A071253(n)-n^3` -/
def P6369130261627216097.Spec : Prop :=
  ∀ n, P6369130261627216097.a n = A309372 n

end A309372

/-! ## A309372.P4552688078569811326

`A061167(n)/(n+1)+n`
-/

namespace A309372.P4552688078569811326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 n : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A309372.P4552688078569811326

namespace A309372

/-- `A061167(n)/(n+1)+n` -/
def P4552688078569811326.Spec : Prop :=
  ∀ n, P4552688078569811326.a n = (A309372 n : ℚ)

end A309372

/-! ## A309372.P12972560704214779713

`A060884(n)+A023443(n)`
-/

namespace A309372.P12972560704214779713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n + A023443 n

end

end A309372.P12972560704214779713

namespace A309372

/-- `A060884(n)+A023443(n)` -/
def P12972560704214779713.Spec : Prop :=
  ∀ n, P12972560704214779713.a n = A309372 n

end A309372

/-! ## A309372.P867894368577040827

`A132998(n)+A001105(n)`
-/

namespace A309372.P867894368577040827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n + A001105 n

end

end A309372.P867894368577040827

namespace A309372

/-- `A132998(n)+A001105(n)` -/
def P867894368577040827.Spec : Prop :=
  ∀ n, P867894368577040827.a n = A309372 n

end A309372

/-! ## A309372.P5307988814013262582

`A152016(n)+A014105(n)`
-/

namespace A309372.P5307988814013262582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 n + A014105 n

end

end A309372.P5307988814013262582

namespace A309372

/-- `A152016(n)+A014105(n)` -/
def P5307988814013262582.Spec : Prop :=
  ∀ n, P5307988814013262582.a n = A309372 n

end A309372

/-! ## A309372.P16738441749273892169

`A100855(n)+A071252(n)`
-/

namespace A309372.P16738441749273892169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + A071252 n

end

end A309372.P16738441749273892169

namespace A309372

/-- `A100855(n)+A071252(n)` -/
def P16738441749273892169.Spec : Prop :=
  ∀ n, P16738441749273892169.a n = A309372 n

end A309372

/-! ## A309372.P12803442127353064355

`A125082(n)+A084849(n)`
-/

namespace A309372.P12803442127353064355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125082 n + A084849 n

end

end A309372.P12803442127353064355

namespace A309372

/-- `A125082(n)+A084849(n)` -/
def P12803442127353064355.Spec : Prop :=
  ∀ n, P12803442127353064355.a n = A309372 n

end A309372

/-! ## A309372.P14718260773855954597

`A178617(n)+A033951(n)`
-/

namespace A309372.P14718260773855954597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178617 n + A033951 n

end

end A309372.P14718260773855954597

namespace A309372

/-- `A178617(n)+A033951(n)` -/
def P14718260773855954597.Spec : Prop :=
  ∀ n, P14718260773855954597.a n = A309372 n

end A309372

/-! ## A309372.P18051276780429150946

`A212135(n)+A101374(n)`
-/

namespace A309372.P18051276780429150946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A101374 n

end

end A309372.P18051276780429150946

namespace A309372

/-- `A212135(n)+A101374(n)` -/
def P18051276780429150946.Spec : Prop :=
  ∀ n, P18051276780429150946.a n = A309372 n

end A309372

/-! ## A309372.P70418229048489699

`A000584(n)-A037250(n)`
-/

namespace A309372.P70418229048489699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - A037250 n

end

end A309372.P70418229048489699

namespace A309372

/-- `A000584(n)-A037250(n)` -/
def P70418229048489699.Spec : Prop :=
  ∀ n, P70418229048489699.a n = A309372 n

end A309372

/-! ## A309372.P5471935610103366936

`A000583(n)-A045991(n)`
-/

namespace A309372.P5471935610103366936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A045991 n

end

end A309372.P5471935610103366936

namespace A309372

/-- `A000583(n)-A045991(n)` -/
def P5471935610103366936.Spec : Prop :=
  ∀ n, P5471935610103366936.a n = A309372 n

end A309372

/-!
# A309373: a(n) is the smallest divisor of F(n+1) not already in the sequence (where F denotes the Fibonacci numbers A000045).

The programs for A309373, there is no canonical definition to state claims against.
-/

/-! ## A309373.P7463143535561961686

`Δ[∑[A131401(n+1)]%A095223(n)]`
-/

namespace A309373.P7463143535561961686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A095223 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309373.P7463143535561961686

/-! ## A309373.P9645037410852294419

`A131401(n+2)+A000035(A000079(n))`
-/

namespace A309373.P9645037410852294419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131401 (n + 2) + A000035 (A000079 n).toNat

end

end A309373.P9645037410852294419

/-! ## A309373.P5289307120256563556

`A131401(n+2)-A163805(A273972(n))`
-/

namespace A309373.P5289307120256563556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131401 (n + 2) - A163805 (A273972 n).toNat

end

end A309373.P5289307120256563556

/-! ## A309373.P10829741581470785492

`A131401(n+2)+A010051(A209971(n+1))`
-/

namespace A309373.P10829741581470785492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131401 (n + 2) + A010051 (A209971 (n + 1)).toNat

end

end A309373.P10829741581470785492

/-! ## A309373.P3275356436100280367

`A131401(n+2)-A163805(A299289(3*n))`
-/

namespace A309373.P3275356436100280367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131401 (n + 2) - A163805 (A299289 (3 * n)).toNat

end

end A309373.P3275356436100280367

/-!
# A309375: Unlucky palindromic primes.

The programs for A309375, there is no canonical definition to state claims against.
-/

/-! ## A309375.P17638111317058122176

`∩[A002113(n+1), A166744(n+1)]`
-/

namespace A309375.P17638111317058122176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P17638111317058122176

/-! ## A309375.P14325040896415586565

`∩[A002385(n+1), A166744(n+1)]`
-/

namespace A309375.P14325040896415586565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P14325040896415586565

/-! ## A309375.P10771648114748375721

`∩[A033620(n+1), A166744(n+1)]`
-/

namespace A309375.P10771648114748375721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P10771648114748375721

/-! ## A309375.P13551497410592009693

`∩[A061917(n+1), A166744(n+1)]`
-/

namespace A309375.P13551497410592009693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P13551497410592009693

/-! ## A309375.P2952369508620026516

`∩[A062687(n+1), A166744(n+1)]`
-/

namespace A309375.P2952369508620026516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P2952369508620026516

/-! ## A309375.P16516330340129219041

`∩[A071251(n+1), A166744(n+1)]`
-/

namespace A309375.P16516330340129219041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P16516330340129219041

/-! ## A309375.P17163756841862840223

`∩[A072299(n+1), A166744(n+1)]`
-/

namespace A309375.P17163756841862840223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P17163756841862840223

/-! ## A309375.P8791397935284194531

`∩[A073328(n+1), A166744(n+1)]`
-/

namespace A309375.P8791397935284194531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P8791397935284194531

/-! ## A309375.P7799909470749780314

`∩[A075800(n+1), A166744(n+1)]`
-/

namespace A309375.P7799909470749780314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P7799909470749780314

/-! ## A309375.P16723575352872496997

`∩[A080716(n+1), A166744(n+1)]`
-/

namespace A309375.P16723575352872496997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309375.P16723575352872496997

/-!
# A309376: a(n) appears in the congruences modulo 4 or 32 of Markoff numbers m(n) = A002559(n) for odd or even m(n).

The programs for A309376, there is no canonical definition to state claims against.
-/

/-! ## A309376.P10512477558796242946

`gcd(A129760(A002559(n+1)), A327344(n+1))`
-/

namespace A309376.P10512477558796242946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129760 (A002559 (n + 1)).toNat) (A327344 (n + 1))

end

end A309376.P10512477558796242946

/-!
# A309377: a(n) is the product of the divisors of n^n (A000312).

The programs for A309377, there is no canonical definition to state claims against.
-/

/-! ## A309377.P10316800317088605113

`∏{d}[n^n, #]`
-/

namespace A309377.P10316800317088605113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A309377.P10316800317088605113

/-!
# A309381: Lucky primes k such that k+6 is also a lucky prime.

The programs for A309381, there is no canonical definition to state claims against.
-/

/-! ## A309381.P14706050522116520059

`∩[A031157(n+1)-6, A031157(n+1)]`
-/

namespace A309381.P14706050522116520059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309381.P14706050522116520059

/-! ## A309381.P4216984070159084874

`A031157(eq[6, A031157(n+2)-A031157(n+1)]+1)`
-/

namespace A309381.P4216984070159084874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 2) - A031157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309381.P4216984070159084874

/-! ## A309381.P3080598963577291846

`A031157(eq[6, A031157(n+2)%A031157(n+1)]+1)`
-/

namespace A309381.P3080598963577291846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031157 (n + 2)) (A031157 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309381.P3080598963577291846

/-!
# A309383: a(n) is the smallest b > 1 such that when c is equal to any of the first n composites the congruence b^(c-1) == 1 (mod c) is satisfied, i.e., smallest b larger than 1 such that any member of the set of smallest n composites is a base-b Fermat pseudoprime.

The programs for A309383, there is no canonical definition to state claims against.
-/

/-! ## A309383.P15333883616507357275

`A025543(n+1)+1`
-/

namespace A309383.P15333883616507357275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (n + 1) + 1

end

end A309383.P15333883616507357275

/-! ## A309383.P7799551731939765027

`xor(1, A025543(Δ[n²]-n))`
-/

namespace A309383.P7799551731939765027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A309383.P7799551731939765027

/-! ## A309383.P16303389260659225294

`or(1, A025543(A348553(n)))`
-/

namespace A309383.P16303389260659225294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A025543 (A348553 n).toNat)

end

end A309383.P16303389260659225294

/-! ## A309383.P10015395913620430748

`A064354(A025544(n+1))+1`
-/

namespace A309383.P10015395913620430748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064354 (A025544 (n + 1)).toNat + 1

end

end A309383.P10015395913620430748

/-! ## A309383.P15683376607738225162

`or(1, A025543(A008619(2*n)))`
-/

namespace A309383.P15683376607738225162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A025543 (A008619 (2 * n)).toNat)

end

end A309383.P15683376607738225162

/-!
# A309384: Number of black squares after n moves of a variant of Langton's ant with turns of 45 degrees.

The programs for A309384, there is no canonical definition to state claims against.
-/

/-! ## A309384.P9736552973671173111

`A309166(n+1)-A059841(A056995(n+2))`
-/

namespace A309384.P9736552973671173111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309166 (n + 1) - A059841 (A056995 (n + 2)).toNat

end

end A309384.P9736552973671173111

/-!
# A309386: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where A(n,k) = Sum_{j=0..n} (-k)^(n-j)*Stirling2(n,j).

The programs for A309386, there is no canonical definition to state claims against.
-/

/-! ## A309386.P5726173915112588390

`or(A330551(A254106(n+1)), A336727(n))`
-/

namespace A309386.P5726173915112588390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A330551 (A254106 (n + 1)).toNat) (A336727 n)

end

end A309386.P5726173915112588390

/-! ## A309386.P15871421929890967975

`A336727(n)^A299202(A083529(2*n+1))`
-/

namespace A309386.P15871421929890967975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336727 n : ℚ) ^ (A299202 (A083529 (2 * n + 1)).toNat : ℤ)

end

end A309386.P15871421929890967975

/-!
# A309388: Numbers y such that x*(x+1) + y*(y+1) = z*(z+1) does not have a solution in positive integers x, z with x <= y.

The programs for A309388, there is no canonical definition to state claims against.
-/

/-! ## A309388.P1543560809230010806

`record[A056699(n+1)%A082183(n+2)]`
-/

namespace A309388.P1543560809230010806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056699 (n + 1)) (A082183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309388.P1543560809230010806

/-! ## A309388.P4200378271121105060

`record[A065475(n+1)%A082183(n+2)]`
-/

namespace A309388.P4200378271121105060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065475 (n + 1)) (A082183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309388.P4200378271121105060

/-! ## A309388.P3411137500792410570

`record[(2-A000007(n)+n)%A082183(n+2)]`
-/

namespace A309388.P3411137500792410570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A000007 n + (n : ℤ)) (A082183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309388.P3411137500792410570

/-! ## A309388.P9638514415227987212

`record[A028242(A051755(n+2))%A082183(n+2)]`
-/

namespace A309388.P9638514415227987212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028242 (A051755 (n + 2)).toNat) (A082183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309388.P9638514415227987212

/-! ## A309388.P14375055028911015694

`A080098(A318894(n+1))`
-/

namespace A309388.P14375055028911015694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A318894 (n + 1)).toNat

end

end A309388.P14375055028911015694

/-! ## A309388.P766446371108106664

`eq[2, A205007(A000217(n+1))]+1`
-/

namespace A309388.P766446371108106664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309388.P766446371108106664

/-! ## A309388.P2750124384367468387

`eq[n²+n, A205006(A179865(n+1))]`
-/

namespace A309388.P2750124384367468387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309388.P2750124384367468387

/-! ## A309388.P6947279759435381269

`gcd(A000038(n), A280172(A318894(n+1)))`
-/

namespace A309388.P6947279759435381269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A280172 (A318894 (n + 1)).toNat)

end

end A309388.P6947279759435381269

/-! ## A309388.P8461346590034098253

`∑{d}[A280172(A318894(n+1)), A000010(#)]`
-/

namespace A309388.P8461346590034098253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (A318894 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A309388.P8461346590034098253

/-!
# A309390: Set a(1)=10. Thereafter a(n) is the smallest positive number not yet in the sequence that contains exactly one even digit and one odd digit from a(n-1).

The programs for A309390, there is no canonical definition to state claims against.
-/

/-! ## A309390.P10338405376533277057

`A289826(∑[A027828(n+1)²])`
-/

namespace A309390.P10338405376533277057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289826 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309390.P10338405376533277057

/-! ## A309390.P12842952485248037860

`A289826(A027828(n+1)²+n)`
-/

namespace A309390.P12842952485248037860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289826 (A027828 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A309390.P12842952485248037860

/-! ## A309390.P12339156982231099118

`A289826(A305322(A027828(n+1))+n+1)`
-/

namespace A309390.P12339156982231099118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289826 (A305322 (A027828 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A309390.P12339156982231099118

/-! ## A309390.P2376256087730554628

`A289826(A048335(A002113(A010785(n+2))))`
-/

namespace A309390.P2376256087730554628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289826 (A048335 (A002113 (A010785 (n + 2)).toNat).toNat).toNat

end

end A309390.P2376256087730554628

/-!
# A309391: a(n) = gcd(n, A064169(n-2)) for n > 2.

The programs for A309391, the canonical program `A309391.P8425997874176840933` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309391 has offset 3).

The definition of A309391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309391.P8425997874176840933

`gcd(n+3, A064169(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A309391

/-- `gcd(n+3, A064169(n+1))` -/
def P8425997874176840933.Spec : Prop :=
  ∀ n, (P8425997874176840933.a n : ℤ) = A309391 (n + 3)

theorem P8425997874176840933.correct : P8425997874176840933.Spec := by
  intro n
  simp only [A309391, Nat.add_sub_cancel]

end A309391

/-! ## A309391.P10377812250726862655

`gcd(2*(n+3), A096617(n+2))`
-/

namespace A309391.P10377812250726862655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 3) : ℤ) (A096617 (n + 2))

end

end A309391.P10377812250726862655

namespace A309391

/-- `gcd(2*(n+3), A096617(n+2))` -/
def P10377812250726862655.Spec : Prop :=
  ∀ n, (P10377812250726862655.a n : ℤ) = A309391 (n + 3)

end A309391

/-! ## A309391.P11570158823296730803

`gcd(A000096(n), A001008(n+2))`
-/

namespace A309391.P11570158823296730803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 n) (A001008 (n + 2))

end

end A309391.P11570158823296730803

namespace A309391

/-- `gcd(A000096(n), A001008(n+2))` -/
def P11570158823296730803.Spec : Prop :=
  ∀ n, (P11570158823296730803.a n : ℤ) = A309391 (n + 3)

end A309391

/-! ## A309391.P5518691855012072641

`A001008(n+2)/A002547(n+2)`
-/

namespace A309391.P5518691855012072641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 2) : ℚ) / (A002547 (n + 2) : ℚ)

end

end A309391.P5518691855012072641

namespace A309391

/-- `A001008(n+2)/A002547(n+2)` -/
def P5518691855012072641.Spec : Prop :=
  ∀ n, P5518691855012072641.a n = (A309391 (n + 3) : ℚ)

end A309391

/-! ## A309391.P13153993266487332535

`A001008(n+2)/(A002548(n+3)-A093762(n+2))`
-/

namespace A309391.P13153993266487332535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 2) : ℚ) / (A002548 (n + 3) - A093762 (n + 2) : ℚ)

end

end A309391.P13153993266487332535

namespace A309391

/-- `A001008(n+2)/(A002548(n+3)-A093762(n+2))` -/
def P13153993266487332535.Spec : Prop :=
  ∀ n, P13153993266487332535.a n = (A309391 (n + 3) : ℚ)

end A309391

/-! ## A309391.P2994822536396811305

`gcd(A001008(n+2)*A181318(n+1), A145979(n+1))`
-/

namespace A309391.P2994822536396811305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001008 (n + 2) * A181318 (n + 1)) (A145979 (n + 1))

end

end A309391.P2994822536396811305

namespace A309391

/-- `gcd(A001008(n+2)*A181318(n+1), A145979(n+1))` -/
def P2994822536396811305.Spec : Prop :=
  ∀ n, (P2994822536396811305.a n : ℤ) = A309391 (n + 3)

end A309391

/-! ## A309391.P4643041349888833947

`lcm(A002547(n+2), A175441(n+2))/A002547(n+2)`
-/

namespace A309391.P4643041349888833947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002547 (n + 2)) (A175441 (n + 2)) : ℚ) / (A002547 (n + 2) : ℚ)

end

end A309391.P4643041349888833947

namespace A309391

/-- `lcm(A002547(n+2), A175441(n+2))/A002547(n+2)` -/
def P4643041349888833947.Spec : Prop :=
  ∀ n, P4643041349888833947.a n = (A309391 (n + 3) : ℚ)

end A309391

/-! ## A309391.P13398644979614817005

`gcd(A000337(n), A103332(n+4))`
-/

namespace A309391.P13398644979614817005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000337 n) (A103332 (n + 4))

end

end A309391.P13398644979614817005

namespace A309391

/-- `gcd(A000337(n), A103332(n+4))` -/
def P13398644979614817005.Spec : Prop :=
  ∀ n, (P13398644979614817005.a n : ℤ) = A309391 (n + 3)

end A309391

/-! ## A309391.P14576273658682547533

`A014963(A309397(A259445(n+1)+2))`
-/

namespace A309391.P14576273658682547533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A309397 (A259445 (n + 1) + 2).toNat).toNat

end

end A309391.P14576273658682547533

namespace A309391

/-- `A014963(A309397(A259445(n+1)+2))` -/
def P14576273658682547533.Spec : Prop :=
  ∀ n, P14576273658682547533.a n = A309391 (n + 3)

end A309391

/-!
# A309392: Square array read by downward antidiagonals: A(n, k) is the k-th prime p such that p + 2*n is also prime, or 0 if that prime does not exist.

The programs for A309392, there is no canonical definition to state claims against.
-/

/-! ## A309392.P7295838942617515604

`A231608(∑[char[∑[n]]]²-n)`
-/

namespace A309392.P7295838942617515604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A309392.P7295838942617515604

/-! ## A309392.P12441052299818137187

`p?[A231608(A038722(n+1))]`
-/

namespace A309392.P12441052299818137187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309392.P12441052299818137187

/-! ## A309392.P403643712775530487

`p?[A231608(A061579(n)+1)]`
-/

namespace A309392.P403643712775530487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309392.P403643712775530487

/-! ## A309392.P4785868859764331111

`A231608(A038722(n+1))%A005565(n)`
-/

namespace A309392.P4785868859764331111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231608 (A038722 (n + 1)).toNat) (A005565 n)

end

end A309392.P4785868859764331111

/-! ## A309392.P12059059952089618214

`A059841(2*n)*A231608(A061579(n)+1)`
-/

namespace A309392.P12059059952089618214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A231608 (A061579 n + 1).toNat

end

end A309392.P12059059952089618214

/-! ## A309392.P14733089119654384145

`A231608(A061579(n)+1)%A000040(n+3)`
-/

namespace A309392.P14733089119654384145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231608 (A061579 n + 1).toNat) (A000040 (n + 3))

end

end A309392.P14733089119654384145

/-! ## A309392.P3505008634514808633

`A000034(2*(n+1))*A231608(A061579(n)+1)`
-/

namespace A309392.P3505008634514808633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1)) * A231608 (A061579 n + 1).toNat

end

end A309392.P3505008634514808633

/-! ## A309392.P15071603699391437783

`A014963(10*(n+1))*A231608(A038722(n+1))`
-/

namespace A309392.P15071603699391437783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A231608 (A038722 (n + 1)).toNat

end

end A309392.P15071603699391437783

/-! ## A309392.P16350075574387545129

`A000041(C(2, n+2))*A231608(A061579(n)+1)`
-/

namespace A309392.P16350075574387545129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A231608 (A061579 n + 1).toNat

end

end A309392.P16350075574387545129

/-!
# A309394: Perimeters of integer-sided triangles whose side lengths are square numbers.

The programs for A309394, there is no canonical definition to state claims against.
-/

/-! ## A309394.P16437264383448447693

`lt[0, A308064(n+1)]+1`
-/

namespace A309394.P16437264383448447693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309394.P16437264383448447693

/-! ## A309394.P5539888100483509750

`lt[0, A308064(A028310(n))]`
-/

namespace A309394.P5539888100483509750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309394.P5539888100483509750

/-! ## A309394.P3212186612571554676

`A114637(lt[0, A308064(n+1)])`
-/

namespace A309394.P3212186612571554676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A309394.P3212186612571554676

/-! ## A309394.P9822955838809608429

`lt[0, A308064(A123108(2*n))]`
-/

namespace A309394.P9822955838809608429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309394.P9822955838809608429

/-! ## A309394.P7842794306023407609

`lt[0, A308064(A233583(n+1))]`
-/

namespace A309394.P7842794306023407609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309394.P7842794306023407609

/-!
# A309395: Number of integer-sided triangles with sides a,b,c, max(a,b) < c, a + c = n that are right triangles.

The programs for A309395, the canonical program `A309395.P9707816084324438001` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309395 has offset 1).

The definition of A309395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309395.P12257919904641495172

`A070139(2*(n+1))`
-/

namespace A309395.P12257919904641495172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (2 * (n + 1))

end

end A309395.P12257919904641495172

namespace A309395

/-- `A070139(2*(n+1))` -/
def P12257919904641495172.Spec : Prop :=
  ∀ n, P12257919904641495172.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P3764001113129715696

`floor(A057918(2*(n+1))/2)`
-/

namespace A309395.P3764001113129715696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057918 (2 * (n + 1)) : ℚ) / 2⌋

end

end A309395.P3764001113129715696

namespace A309395

/-- `floor(A057918(2*(n+1))/2)` -/
def P3764001113129715696.Spec : Prop :=
  ∀ n, P3764001113129715696.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P4299580891333129828

`floor(n/A019554(2*(n+1)))`
-/

namespace A309395.P4299580891333129828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A019554 (2 * (n + 1)) : ℚ)⌋

end

end A309395.P4299580891333129828

namespace A309395

/-- `floor(n/A019554(2*(n+1)))` -/
def P4299580891333129828.Spec : Prop :=
  ∀ n, P4299580891333129828.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P1525196249353333860

`floor(sqrt(A336642(2*(n+1)))/2)`
-/

namespace A309395.P1525196249353333860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A336642 (2 * (n + 1)) : ℝ) / 2⌋

end

end A309395.P1525196249353333860

namespace A309395

/-- `floor(sqrt(A336642(2*(n+1)))/2)` -/
def P1525196249353333860.Spec : Prop :=
  ∀ n, P1525196249353333860.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P7485978481136378709

`floor(sqrt(A336644(2*(n+1)))/2)`
-/

namespace A309395.P7485978481136378709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A336644 (2 * (n + 1)) : ℝ) / 2⌋

end

end A309395.P7485978481136378709

namespace A309395

/-- `floor(sqrt(A336644(2*(n+1)))/2)` -/
def P7485978481136378709.Spec : Prop :=
  ∀ n, P7485978481136378709.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P9707816084324438001

`ceil((n+1)/A193800(n+1))-1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A309395

/-- `ceil((n+1)/A193800(n+1))-1` -/
def P9707816084324438001.Spec : Prop :=
  ∀ n, P9707816084324438001.a n = A309395 (n + 1)

theorem P9707816084324438001.correct : P9707816084324438001.Spec := by
  intro n
  simp only [A309395, Nat.add_sub_cancel]

end A309395

/-! ## A309395.P4014854464583687307

`A004526(A057918(2*(n+1)))`
-/

namespace A309395.P4014854464583687307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057918 (2 * (n + 1))).toNat

end

end A309395.P4014854464583687307

namespace A309395

/-- `A004526(A057918(2*(n+1)))` -/
def P4014854464583687307.Spec : Prop :=
  ∀ n, P4014854464583687307.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P5227474211020260444

`A337101(n+1)-A000035(n)`
-/

namespace A309395.P5227474211020260444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (n + 1) - A000035 n

end

end A309395.P5227474211020260444

namespace A309395

/-- `A337101(n+1)-A000035(n)` -/
def P5227474211020260444.Spec : Prop :=
  ∀ n, P5227474211020260444.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P4892995270692277857

`A004526(n)-A337102(n+1)`
-/

namespace A309395.P4892995270692277857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A337102 (n + 1)

end

end A309395.P4892995270692277857

namespace A309395

/-- `A004526(n)-A337102(n+1)` -/
def P4892995270692277857.Spec : Prop :=
  ∀ n, P4892995270692277857.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P7706187706836888366

`A004526(A000188(2*(n+1))-1)`
-/

namespace A309395.P7706187706836888366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000188 (2 * (n + 1)) - 1).toNat

end

end A309395.P7706187706836888366

namespace A309395

/-- `A004526(A000188(2*(n+1))-1)` -/
def P7706187706836888366.Spec : Prop :=
  ∀ n, P7706187706836888366.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P8488365424033847346

`n-(A337102(n+1)+A110654(n))`
-/

namespace A309395.P8488365424033847346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A337102 (n + 1) + A110654 n)

end

end A309395.P8488365424033847346

namespace A309395

/-- `n-(A337102(n+1)+A110654(n))` -/
def P8488365424033847346.Spec : Prop :=
  ∀ n, P8488365424033847346.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P12057697518986233847

`A051516(2*(n+1))-A024153(2*(n+1))`
-/

namespace A309395.P12057697518986233847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * (n + 1)) - A024153 (2 * (n + 1))

end

end A309395.P12057697518986233847

namespace A309395

/-- `A051516(2*(n+1))-A024153(2*(n+1))` -/
def P12057697518986233847.Spec : Prop :=
  ∀ n, P12057697518986233847.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P3628122671128368602

`A337101(n+1)+A004526(n)-A004526(n+1)`
-/

namespace A309395.P3628122671128368602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (n + 1) + (A004526 n - A004526 (n + 1))

end

end A309395.P3628122671128368602

namespace A309395

/-- `A337101(n+1)+A004526(n)-A004526(n+1)` -/
def P3628122671128368602.Spec : Prop :=
  ∀ n, P3628122671128368602.a n = A309395 (n + 1)

end A309395

/-! ## A309395.P16857863555056438291

`A337101(n+1)-A183063(n+1)/A320111(n+1)`
-/

namespace A309395.P16857863555056438291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337101 (n + 1) : ℚ) - (A183063 (n + 1) : ℚ) / (A320111 (n + 1) : ℚ)

end

end A309395.P16857863555056438291

namespace A309395

/-- `A337101(n+1)-A183063(n+1)/A320111(n+1)` -/
def P16857863555056438291.Spec : Prop :=
  ∀ n, P16857863555056438291.a n = (A309395 (n + 1) : ℚ)

end A309395

/-! ## A309395.P3520026945552512885

`A070204(2*A355264(n+1))`
-/

namespace A309395.P3520026945552512885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (2 * A355264 (n + 1)).toNat

end

end A309395.P3520026945552512885

namespace A309395

/-- `A070204(2*A355264(n+1))` -/
def P3520026945552512885.Spec : Prop :=
  ∀ n, P3520026945552512885.a n = A309395 (n + 1)

end A309395

/-!
# A309396: Number of lucky numbers <= n!.

The programs for A309396, there is no canonical definition to state claims against.
-/

/-! ## A309396.P13319514832251077453

`A109497(n!-1)`
-/

namespace A309396.P13319514832251077453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (Nat.factorial n - 1)

end

end A309396.P13319514832251077453

/-! ## A309396.P4938067079472193060

`A109497(∏[round(1/acot(n))]-1)`
-/

namespace A309396.P4938067079472193060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A309396.P4938067079472193060

/-! ## A309396.P15052024639214124436

`A109497(∏[ceil(abs(γ-n))]-1)`
-/

namespace A309396.P15052024639214124436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A309396.P15052024639214124436

/-! ## A309396.P9783061096119568311

`∏{p}[A109497(A000142(n)-1), #]`
-/

namespace A309396.P9783061096119568311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A000142 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A309396.P9783061096119568311

/-!
# A309397: a(n) = gcd(n^2, A001008(n-1)) for n > 1.

The programs for A309397, there is no canonical definition to state claims against.
-/

/-! ## A309397.P18176966871018856013

`gcd((n+2)², A001008(n+1))`
-/

namespace A309397.P18176966871018856013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2) ^ 2 : ℤ) (A001008 (n + 1))

end

end A309397.P18176966871018856013

/-! ## A309397.P17967046620955596682

`gcd((2*(n+2))², A096617(n+1))`
-/

namespace A309397.P17967046620955596682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 2)) ^ 2 : ℤ) (A096617 (n + 1))

end

end A309397.P17967046620955596682

/-! ## A309397.P5156376128915369316

`gcd(A004282(n), A175441(n+1))`
-/

namespace A309397.P5156376128915369316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004282 n) (A175441 (n + 1))

end

end A309397.P5156376128915369316

/-! ## A309397.P16237389063765246928

`gcd(A096617(n+1), A288572(n+1))`
-/

namespace A309397.P16237389063765246928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096617 (n + 1)) (A288572 (n + 1))

end

end A309397.P16237389063765246928

/-! ## A309397.P4446843764571289639

`gcd(A316346(n+1), A368373(n+1))`
-/

namespace A309397.P4446843764571289639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316346 (n + 1)) (A368373 (n + 1))

end

end A309397.P4446843764571289639

/-! ## A309397.P1698416366959220728

`gcd(A103517(n+1)², A035048(2*(n+1)))`
-/

namespace A309397.P1698416366959220728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 (n + 1) ^ 2) (A035048 (2 * (n + 1)))

end

end A309397.P1698416366959220728

/-! ## A309397.P16470819974440383361

`gcd(∑[1/(n+1)]*A002805(n+1), A055998(n+2)²)`
-/

namespace A309397.P16470819974440383361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ))) (A055998 (n + 2) ^ 2)

end

end A309397.P16470819974440383361

/-! ## A309397.P16884592904922212453

`gcd(A035048(A103517(n)), A045661(n+1))`
-/

namespace A309397.P16884592904922212453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035048 (A103517 n).toNat) (A045661 (n + 1))

end

end A309397.P16884592904922212453

/-! ## A309397.P4553937224131085243

`gcd(A001008(n+1), A181318(A145979(n)))`
-/

namespace A309397.P4553937224131085243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001008 (n + 1)) (A181318 (A145979 n).toNat)

end

end A309397.P4553937224131085243

/-!
# A309398: a(n) is the nearest integer to log(log(10^n)).

The programs for A309398, the canonical program `A309398.P9325976622887262783` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309398 has offset 1).

The definition of A309398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309398.P14583431809647486093

`A000195(A276583(n+2)+A124769(n))`
-/

namespace A309398.P14583431809647486093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A276583 (n + 2) + A124769 n).toNat

end

end A309398.P14583431809647486093

namespace A309398

/-- `A000195(A276583(n+2)+A124769(n))` -/
def P14583431809647486093.Spec : Prop :=
  ∀ n, P14583431809647486093.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P9325976622887262783

`∑[A281814(n²)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309398

/-- `∑[A281814(n²)]` -/
def P9325976622887262783.Spec : Prop :=
  ∀ n, P9325976622887262783.a n = A309398 (n + 1)

theorem P9325976622887262783.correct : P9325976622887262783.Spec := by
  intro n
  simp only [A309398, Nat.add_sub_cancel]

end A309398

/-! ## A309398.P13730623826426775892

`A000193(eq[A078650(n+3), A123594(3*n+4)])`
-/

namespace A309398.P13730623826426775892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309398.P13730623826426775892

namespace A309398

/-- `A000193(eq[A078650(n+3), A123594(3*n+4)])` -/
def P13730623826426775892.Spec : Prop :=
  ∀ n, P13730623826426775892.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P12522317071830327934

`A111972(A356227(n+1)+A066192(n+1))`
-/

namespace A309398.P12522317071830327934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A356227 (n + 1) + A066192 (n + 1)).toNat

end

end A309398.P12522317071830327934

namespace A309398

/-- `A111972(A356227(n+1)+A066192(n+1))` -/
def P12522317071830327934.Spec : Prop :=
  ∀ n, P12522317071830327934.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P10181266059639239318

`A111972(A066192(n+1)+A000005(n+1)-A356224(n+1))`
-/

namespace A309398.P10181266059639239318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A066192 (n + 1) + (A000005 (n + 1) - A356224 (n + 1))).toNat

end

end A309398.P10181266059639239318

namespace A309398

/-- `A111972(A066192(n+1)+A000005(n+1)-A356224(n+1))` -/
def P10181266059639239318.Spec : Prop :=
  ∀ n, P10181266059639239318.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P12572285455863803070

`A111972(A066192(n+1)+A179941(n+1)-A356225(n+1))`
-/

namespace A309398.P12572285455863803070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A066192 (n + 1) + (A179941 (n + 1) - A356225 (n + 1))).toNat

end

end A309398.P12572285455863803070

namespace A309398

/-- `A111972(A066192(n+1)+A179941(n+1)-A356225(n+1))` -/
def P12572285455863803070.Spec : Prop :=
  ∀ n, P12572285455863803070.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P5768738874408994751

`A070939(or(A137687(n), A391981(n+2)))`
-/

namespace A309398.P5768738874408994751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lor (A137687 n) (A391981 (n + 2))).toNat

end

end A309398.P5768738874408994751

namespace A309398

/-- `A070939(or(A137687(n), A391981(n+2)))` -/
def P5768738874408994751.Spec : Prop :=
  ∀ n, P5768738874408994751.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P3011748788557979693

`A390765(∑[3*(n+1)])`
-/

namespace A309398.P3011748788557979693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309398.P3011748788557979693

namespace A309398

/-- `A390765(∑[3*(n+1)])` -/
def P3011748788557979693.Spec : Prop :=
  ∀ n, P3011748788557979693.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P8445433962956850344

`A389231(A004221(A389231(A329193(n+2))))`
-/

namespace A309398.P8445433962956850344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389231 (A004221 (A389231 (A329193 (n + 2)).toNat).toNat).toNat

end

end A309398.P8445433962956850344

namespace A309398

/-- `A389231(A004221(A389231(A329193(n+2))))` -/
def P8445433962956850344.Spec : Prop :=
  ∀ n, P8445433962956850344.a n = A309398 (n + 1)

end A309398

/-! ## A309398.P4118853601086499897

`ceil(log(A112233(n+1)))`
-/

namespace A309398.P4118853601086499897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A112233 (n + 1) : ℝ)⌉

end

end A309398.P4118853601086499897

namespace A309398

/-- `ceil(log(A112233(n+1)))` -/
def P4118853601086499897.Spec : Prop :=
  ∀ n, P4118853601086499897.a n = A309398 (n + 1)

end A309398

/-!
# A309399: Number of lucky numbers l between powers of 2, 2^n < l <= 2^(n+1).

The programs for A309399, there is no canonical definition to state claims against.
-/

/-! ## A309399.P6638501158879358910

`Δ[A109497(2^n-1)]`
-/

namespace A309399.P6638501158879358910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309399.P6638501158879358910

/-! ## A309399.P6946532703455147404

`abs(Δ[A109497(A000225(n))])`
-/

namespace A309399.P6946532703455147404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A309399.P6946532703455147404

/-! ## A309399.P14115861008000528447

`A000038(n+1)+Δ[A109497(A000225(n))]`
-/

namespace A309399.P14115861008000528447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f1 (n + 1) - f1 n)

end

end A309399.P14115861008000528447

/-! ## A309399.P8076888722836202102

`or(A024327(A054357(n+2)), A064911(3*n+5))`
-/

namespace A309399.P8076888722836202102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024327 (A054357 (n + 2)).toNat) (A064911 (3 * n + 5))

end

end A309399.P8076888722836202102

/-! ## A309399.P15212991799646404220

`Δ[A090240(A225394(n))]`
-/

namespace A309399.P15212991799646404220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090240 (A225394 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309399.P15212991799646404220

