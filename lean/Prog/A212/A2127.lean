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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A212700: a(n) = 5*n*6^(n-1).

The programs for A212700, the canonical program `A212700.P710568773443419624` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212700 has offset 1).

The definition of A212700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212700.P710568773443419624

`12*a(n-1)-36*a(n-2)` with `a(0)=5, a(1)=60`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212700

/-- `12*a(n-1)-36*a(n-2)` -/
def P710568773443419624.Spec : Prop :=
  ∀ n, P710568773443419624.a n = A212700 (n + 1)

theorem P710568773443419624.correct : P710568773443419624.Spec := by
  intro n
  simp only [A212700, Nat.add_sub_cancel]

end A212700

/-! ## A212700.P8413827058123097911

`5*A053469(n+1)`
-/

namespace A212700.P8413827058123097911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A053469 (n + 1)

end

end A212700.P8413827058123097911

namespace A212700

/-- `5*A053469(n+1)` -/
def P8413827058123097911.Spec : Prop :=
  ∀ n, P8413827058123097911.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P3611484243775552912

`(n+1)*Δ[6^n]`
-/

namespace A212700.P3611484243775552912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212700.P3611484243775552912

namespace A212700

/-- `(n+1)*Δ[6^n]` -/
def P3611484243775552912.Spec : Prop :=
  ∀ n, P3611484243775552912.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P14181670293177647040

`∑[lcm(5, Δ[n*6^(n-1)])]`
-/

namespace A212700.P14181670293177647040
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212700.P14181670293177647040

namespace A212700

/-- `∑[lcm(5, Δ[n*6^(n-1)])]` -/
def P14181670293177647040.Spec : Prop :=
  ∀ n, (P14181670293177647040.a n : ℤ) = A212700 (n + 1)

end A212700

/-! ## A212700.P4783863471685363451

`floor(6*(n+1)*a(n-1)/n)` with `a(0)=5`
-/

namespace A212700.P4783863471685363451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊6 * ((n + 1 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A212700.P4783863471685363451

namespace A212700

/-- `floor(6*(n+1)*a(n-1)/n)` -/
def P4783863471685363451.Spec : Prop :=
  ∀ n, P4783863471685363451.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P1555275369786919359

`∑[5*A081041(n)]`
-/

namespace A212700.P1555275369786919359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212700.P1555275369786919359

namespace A212700

/-- `∑[5*A081041(n)]` -/
def P1555275369786919359.Spec : Prop :=
  ∀ n, P1555275369786919359.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P4378841115209582117

`A203232(2*(n+1))`
-/

namespace A212700.P4378841115209582117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203232 (2 * (n + 1))

end

end A212700.P4378841115209582117

namespace A212700

/-- `A203232(2*(n+1))` -/
def P4378841115209582117.Spec : Prop :=
  ∀ n, P4378841115209582117.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P14442097278782773943

`A203233(2*(n+1))`
-/

namespace A212700.P14442097278782773943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203233 (2 * (n + 1))

end

end A212700.P14442097278782773943

namespace A212700

/-- `A203233(2*(n+1))` -/
def P14442097278782773943.Spec : Prop :=
  ∀ n, P14442097278782773943.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P5838080240644539

`∑[abs(Δ[n*A052934(n)])]`
-/

namespace A212700.P5838080240644539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212700.P5838080240644539

namespace A212700

/-- `∑[abs(Δ[n*A052934(n)])]` -/
def P5838080240644539.Spec : Prop :=
  ∀ n, P5838080240644539.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P3105087409746061773

`A081041(n+1)-A000400(n+1)`
-/

namespace A212700.P3105087409746061773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081041 (n + 1) - A000400 (n + 1)

end

end A212700.P3105087409746061773

namespace A212700

/-- `A081041(n+1)-A000400(n+1)` -/
def P3105087409746061773.Spec : Prop :=
  ∀ n, P3105087409746061773.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P13003236859007191587

`(n+1)*A000244(n)*A020714(n+1)/2`
-/

namespace A212700.P13003236859007191587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A000244 n * A020714 (n + 1)) : ℚ) / 2

end

end A212700.P13003236859007191587

namespace A212700

/-- `(n+1)*A000244(n)*A020714(n+1)/2` -/
def P13003236859007191587.Spec : Prop :=
  ∀ n, P13003236859007191587.a n = (A212700 (n + 1) : ℚ)

end A212700

/-! ## A212700.P3935109984751617166

`(A027271(2*n+1)+A027266(2*n+1))/2`
-/

namespace A212700.P3935109984751617166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027271 (2 * n + 1) + A027266 (2 * n + 1) : ℚ) / 2

end

end A212700.P3935109984751617166

namespace A212700

/-- `(A027271(2*n+1)+A027266(2*n+1))/2` -/
def P3935109984751617166.Spec : Prop :=
  ∀ n, P3935109984751617166.a n = (A212700 (n + 1) : ℚ)

end A212700

/-! ## A212700.P5472530319253541400

`A000400(n)*A016861(n+1)-A000400(n)`
-/

namespace A212700.P5472530319253541400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A016861 (n + 1) - A000400 n

end

end A212700.P5472530319253541400

namespace A212700

/-- `A000400(n)*A016861(n+1)-A000400(n)` -/
def P5472530319253541400.Spec : Prop :=
  ∀ n, P5472530319253541400.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P9568155236256199743

`Δ[A053469(n+1)-A000400(n)]-A000400(n)`
-/

namespace A212700.P9568155236256199743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1) - A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000400 n

end

end A212700.P9568155236256199743

namespace A212700

/-- `Δ[A053469(n+1)-A000400(n)]-A000400(n)` -/
def P9568155236256199743.Spec : Prop :=
  ∀ n, P9568155236256199743.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P8373433724259992825

`A081041(n+1)-(A395827(n+1)+A180033(n+1))`
-/

namespace A212700.P8373433724259992825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081041 (n + 1) - (A395827 (n + 1) + A180033 (n + 1))

end

end A212700.P8373433724259992825

namespace A212700

/-- `A081041(n+1)-(A395827(n+1)+A180033(n+1))` -/
def P8373433724259992825.Spec : Prop :=
  ∀ n, P8373433724259992825.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P17344499913461478787

`A199299(n+1)-(A053469(n+1)+A053469(n+2))`
-/

namespace A212700.P17344499913461478787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199299 (n + 1) - (A053469 (n + 1) + A053469 (n + 2))

end

end A212700.P17344499913461478787

namespace A212700

/-- `A199299(n+1)-(A053469(n+1)+A053469(n+2))` -/
def P17344499913461478787.Spec : Prop :=
  ∀ n, P17344499913461478787.a n = A212700 (n + 1)

end A212700

/-! ## A212700.P5501741149907663281

`(n+1)*6*a(n-1)/n` with `a(0)=5`
-/

namespace A212700.P5501741149907663281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (n + 1 : ℚ) * (6 * a (n - 1)) / (n : ℚ)

end

end A212700.P5501741149907663281

namespace A212700

/-- `(n+1)*6*a(n-1)/n` -/
def P5501741149907663281.Spec : Prop :=
  ∀ n, P5501741149907663281.a n = (A212700 (n + 1) : ℚ)

end A212700

/-!
# A212701: Main transitions in systems of n particles with spin 3.

The programs for A212701, the canonical program `A212701.P1816457451779834583` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212701 has offset 1).

The definition of A212701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212701.P1816457451779834583

`14*a(n-1)-49*a(n-2)` with `a(0)=6, a(1)=84`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212701

/-- `14*a(n-1)-49*a(n-2)` -/
def P1816457451779834583.Spec : Prop :=
  ∀ n, P1816457451779834583.a n = A212701 (n + 1)

theorem P1816457451779834583.correct : P1816457451779834583.Spec := by
  intro n
  simp only [A212701, Nat.add_sub_cancel]

end A212701

/-! ## A212701.P10022861872210167129

`6*A027473(n+1)`
-/

namespace A212701.P10022861872210167129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A027473 (n + 1)

end

end A212701.P10022861872210167129

namespace A212701

/-- `6*A027473(n+1)` -/
def P10022861872210167129.Spec : Prop :=
  ∀ n, P10022861872210167129.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P2753030493707027817

`(n+1)*Δ[7^n]`
-/

namespace A212701.P2753030493707027817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212701.P2753030493707027817

namespace A212701

/-- `(n+1)*Δ[7^n]` -/
def P2753030493707027817.Spec : Prop :=
  ∀ n, P2753030493707027817.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P2513876443900346789

`floor((7/n+7)*a(n-1))` with `a(0)=6`
-/

namespace A212701.P2513876443900346789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(7 / (n : ℚ) + 7) * (a (n - 1) : ℚ)⌋

end

end A212701.P2513876443900346789

namespace A212701

/-- `floor((7/n+7)*a(n-1))` -/
def P2513876443900346789.Spec : Prop :=
  ∀ n, P2513876443900346789.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P9087921006837524929

`round((n+1)*Δ[7*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A212701.P9087921006837524929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212701.P9087921006837524929

namespace A212701

/-- `round((n+1)*Δ[7*a(n-1)])` -/
def P9087921006837524929.Spec : Prop :=
  ∀ n, P9087921006837524929.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P16473796071214737005

`∑[6*A081042(n)]`
-/

namespace A212701.P16473796071214737005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A081042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212701.P16473796071214737005

namespace A212701

/-- `∑[6*A081042(n)]` -/
def P16473796071214737005.Spec : Prop :=
  ∀ n, P16473796071214737005.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P15486332600140899575

`abs((n+1)*Δ[A000420(n)])`
-/

namespace A212701.P15486332600140899575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A212701.P15486332600140899575

namespace A212701

/-- `abs((n+1)*Δ[A000420(n)])` -/
def P15486332600140899575.Spec : Prop :=
  ∀ n, P15486332600140899575.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P2435515373656028378

`A081042(n+1)-A000420(n+1)`
-/

namespace A212701.P2435515373656028378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081042 (n + 1) - A000420 (n + 1)

end

end A212701.P2435515373656028378

namespace A212701

/-- `A081042(n+1)-A000420(n+1)` -/
def P2435515373656028378.Spec : Prop :=
  ∀ n, P2435515373656028378.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P2482786970580873107

`Δ[A000420(n)]*A004277(2*(n+1))/4`
-/

namespace A212701.P2482786970580873107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A004277 (2 * (n + 1)) : ℚ) / 4

end

end A212701.P2482786970580873107

namespace A212701

/-- `Δ[A000420(n)]*A004277(2*(n+1))/4` -/
def P2482786970580873107.Spec : Prop :=
  ∀ n, P2482786970580873107.a n = (A212701 (n + 1) : ℚ)

end A212701

/-! ## A212701.P17799918551428889660

`A000420(n)+A000420(n)*A016969(n)`
-/

namespace A212701.P17799918551428889660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + A000420 n * A016969 n

end

end A212701.P17799918551428889660

namespace A212701

/-- `A000420(n)+A000420(n)*A016969(n)` -/
def P17799918551428889660.Spec : Prop :=
  ∀ n, P17799918551428889660.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P9511063909798418061

`Δ[A027473(n+1)-A000420(n)]-A000420(n)`
-/

namespace A212701.P9511063909798418061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 1) - A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000420 n

end

end A212701.P9511063909798418061

namespace A212701

/-- `Δ[A027473(n+1)-A000420(n)]-A000420(n)` -/
def P9511063909798418061.Spec : Prop :=
  ∀ n, P9511063909798418061.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P12756992083097771997

`A027473(n+2)-(A027473(n+1)+A000420(n+1))`
-/

namespace A212701.P12756992083097771997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 2) - (A027473 (n + 1) + A000420 (n + 1))

end

end A212701.P12756992083097771997

namespace A212701

/-- `A027473(n+2)-(A027473(n+1)+A000420(n+1))` -/
def P12756992083097771997.Spec : Prop :=
  ∀ n, P12756992083097771997.a n = A212701 (n + 1)

end A212701

/-! ## A212701.P6966457822421933271

`(n+1)*7*a(n-1)/n` with `a(0)=6`
-/

namespace A212701.P6966457822421933271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (n + 1 : ℚ) * (7 * a (n - 1)) / (n : ℚ)

end

end A212701.P6966457822421933271

namespace A212701

/-- `(n+1)*7*a(n-1)/n` -/
def P6966457822421933271.Spec : Prop :=
  ∀ n, P6966457822421933271.a n = (A212701 (n + 1) : ℚ)

end A212701

/-!
# A212702: Main transitions in systems of n particles with spin 7/2.

The programs for A212702, the canonical program `A212702.P1364234232891976719` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212702 has offset 1).

The definition of A212702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212702.P1364234232891976719

`16*a(n-1)-64*a(n-2)` with `a(0)=7, a(1)=112`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212702

/-- `16*a(n-1)-64*a(n-2)` -/
def P1364234232891976719.Spec : Prop :=
  ∀ n, P1364234232891976719.a n = A212702 (n + 1)

theorem P1364234232891976719.correct : P1364234232891976719.Spec := by
  intro n
  simp only [A212702, Nat.add_sub_cancel]

end A212702

/-! ## A212702.P17595382867075390075

`(n+1)*Δ[8^n]`
-/

namespace A212702.P17595382867075390075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212702.P17595382867075390075

namespace A212702

/-- `(n+1)*Δ[8^n]` -/
def P17595382867075390075.Spec : Prop :=
  ∀ n, P17595382867075390075.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P138275408350808807

`floor(8*(n+1)*a(n-1)/n)` with `a(0)=7`
-/

namespace A212702.P138275408350808807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌊8 * ((n + 1 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A212702.P138275408350808807

namespace A212702

/-- `floor(8*(n+1)*a(n-1)/n)` -/
def P138275408350808807.Spec : Prop :=
  ∀ n, P138275408350808807.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P2833619717749763649

`∑[7*A081043(n)]`
-/

namespace A212702.P2833619717749763649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A081043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212702.P2833619717749763649

namespace A212702

/-- `∑[7*A081043(n)]` -/
def P2833619717749763649.Spec : Prop :=
  ∀ n, P2833619717749763649.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P2322374846814990311

`∑[abs(Δ[n*A055274(n)])]`
-/

namespace A212702.P2322374846814990311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212702.P2322374846814990311

namespace A212702

/-- `∑[abs(Δ[n*A055274(n)])]` -/
def P2322374846814990311.Spec : Prop :=
  ∀ n, P2322374846814990311.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P15465277820940516405

`(n+1)*A198855(n)+n+1`
-/

namespace A212702.P15465277820940516405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A198855 n + (n + 1 : ℤ)

end

end A212702.P15465277820940516405

namespace A212702

/-- `(n+1)*A198855(n)+n+1` -/
def P15465277820940516405.Spec : Prop :=
  ∀ n, P15465277820940516405.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P12609945334295426819

`(n+1)*A199555(n)-(n+1)`
-/

namespace A212702.P12609945334295426819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A199555 n - (n + 1 : ℤ)

end

end A212702.P12609945334295426819

namespace A212702

/-- `(n+1)*A199555(n)-(n+1)` -/
def P12609945334295426819.Spec : Prop :=
  ∀ n, P12609945334295426819.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P2452102428558058556

`abs((n+1)*Δ[A000051(3*n)])`
-/

namespace A212702.P2452102428558058556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A212702.P2452102428558058556

namespace A212702

/-- `abs((n+1)*Δ[A000051(3*n)])` -/
def P2452102428558058556.Spec : Prop :=
  ∀ n, P2452102428558058556.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P11048716980854695828

`Δ[A000079(3*n)]/cot(atan(n+1))`
-/

namespace A212702.P11048716980854695828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A212702.P11048716980854695828

namespace A212702

/-- `Δ[A000079(3*n)]/cot(atan(n+1))` -/
def P11048716980854695828.Spec : Prop :=
  ∀ n, P11048716980854695828.a n = (A212702 (n + 1) : ℝ)

end A212702

/-! ## A212702.P837455574154434620

`Δ[A053539(n+1)]-A001018(n+1)`
-/

namespace A212702.P837455574154434620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001018 (n + 1)

end

end A212702.P837455574154434620

namespace A212702

/-- `Δ[A053539(n+1)]-A001018(n+1)` -/
def P837455574154434620.Spec : Prop :=
  ∀ n, P837455574154434620.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P15298925230650663641

`(n+1)*Δ[A000225(A016777(n))]/2`
-/

namespace A212702.P15298925230650663641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A016777 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A212702.P15298925230650663641

namespace A212702

/-- `(n+1)*Δ[A000225(A016777(n))]/2` -/
def P15298925230650663641.Spec : Prop :=
  ∀ n, P15298925230650663641.a n = (A212702 (n + 1) : ℚ)

end A212702

/-! ## A212702.P981733353084322112

`A036294(n+1)-(A036294(n)+A001018(n))`
-/

namespace A212702.P981733353084322112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036294 (n + 1) - (A036294 n + A001018 n)

end

end A212702.P981733353084322112

namespace A212702

/-- `A036294(n+1)-(A036294(n)+A001018(n))` -/
def P981733353084322112.Spec : Prop :=
  ∀ n, P981733353084322112.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P13594931405914737327

`A001018(n)*A016993(n+1)-A001018(n)`
-/

namespace A212702.P13594931405914737327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n * A016993 (n + 1) - A001018 n

end

end A212702.P13594931405914737327

namespace A212702

/-- `A001018(n)*A016993(n+1)-A001018(n)` -/
def P13594931405914737327.Spec : Prop :=
  ∀ n, P13594931405914737327.a n = A212702 (n + 1)

end A212702

/-! ## A212702.P17168804325538836086

`(n+1)*Δ[A000225(comp[2*n]+n+1)]/4`
-/

namespace A212702.P17168804325538836086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 4

end

end A212702.P17168804325538836086

namespace A212702

/-- `(n+1)*Δ[A000225(comp[2*n]+n+1)]/4` -/
def P17168804325538836086.Spec : Prop :=
  ∀ n, P17168804325538836086.a n = (A212702 (n + 1) : ℚ)

end A212702

/-! ## A212702.P14821846345191436558

`8*(n+1)*a(n-1)/n` with `a(0)=7`
-/

namespace A212702.P14821846345191436558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  8 * ((n + 1 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A212702.P14821846345191436558

namespace A212702

/-- `8*(n+1)*a(n-1)/n` -/
def P14821846345191436558.Spec : Prop :=
  ∀ n, P14821846345191436558.a n = (A212702 (n + 1) : ℚ)

end A212702

/-!
# A212703: Main transitions in systems of n particles with spin 4.

The programs for A212703, the canonical program `A212703.P4703170789308627958` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212703 has offset 1).

The definition of A212703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212703.P4703170789308627958

`18*a(n-1)-81*a(n-2)` with `a(0)=8, a(1)=144`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212703

/-- `18*a(n-1)-81*a(n-2)` -/
def P4703170789308627958.Spec : Prop :=
  ∀ n, P4703170789308627958.a n = A212703 (n + 1)

theorem P4703170789308627958.correct : P4703170789308627958.Spec := by
  intro n
  simp only [A212703, Nat.add_sub_cancel]

end A212703

/-! ## A212703.P16628368614731333981

`8*A053540(n+1)`
-/

namespace A212703.P16628368614731333981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A053540 (n + 1)

end

end A212703.P16628368614731333981

namespace A212703

/-- `8*A053540(n+1)` -/
def P16628368614731333981.Spec : Prop :=
  ∀ n, P16628368614731333981.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P17551336636290684263

`(n+1)*Δ[9^n]`
-/

namespace A212703.P17551336636290684263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212703.P17551336636290684263

namespace A212703

/-- `(n+1)*Δ[9^n]` -/
def P17551336636290684263.Spec : Prop :=
  ∀ n, P17551336636290684263.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P2346543758072266739

`∑[8*A081044(n)]`
-/

namespace A212703.P2346543758072266739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A081044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212703.P2346543758072266739

namespace A212703

/-- `∑[8*A081044(n)]` -/
def P2346543758072266739.Spec : Prop :=
  ∀ n, P2346543758072266739.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P1788121511639176459

`A120908(2*n+3)/3`
-/

namespace A212703.P1788121511639176459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120908 (2 * n + 3) : ℚ) / 3

end

end A212703.P1788121511639176459

namespace A212703

/-- `A120908(2*n+3)/3` -/
def P1788121511639176459.Spec : Prop :=
  ∀ n, P1788121511639176459.a n = (A212703 (n + 1) : ℚ)

end A212703

/-! ## A212703.P7757956946803362084

`A055275(n+1)+9*a(n-1)` with `a(0)=8`
-/

namespace A212703.P7757956946803362084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A055275 (n + 1) + 9 * a (n - 1)

end

end A212703.P7757956946803362084

namespace A212703

/-- `A055275(n+1)+9*a(n-1)` -/
def P7757956946803362084.Spec : Prop :=
  ∀ n, P7757956946803362084.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P18006024251914582842

`Δ[A158749(n)]-A001019(n)`
-/

namespace A212703.P18006024251914582842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001019 n

end

end A212703.P18006024251914582842

namespace A212703

/-- `Δ[A158749(n)]-A001019(n)` -/
def P18006024251914582842.Spec : Prop :=
  ∀ n, P18006024251914582842.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P6544750742220343417

`A124647(2*n+1)-A124647(2*n)`
-/

namespace A212703.P6544750742220343417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 (2 * n + 1) - A124647 (2 * n)

end

end A212703.P6544750742220343417

namespace A212703

/-- `A124647(2*n+1)-A124647(2*n)` -/
def P6544750742220343417.Spec : Prop :=
  ∀ n, P6544750742220343417.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P4429498634982383789

`A027261(2*n+1)+A027261(2*n+1)`
-/

namespace A212703.P4429498634982383789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 (2 * n + 1) + A027261 (2 * n + 1)

end

end A212703.P4429498634982383789

namespace A212703

/-- `A027261(2*n+1)+A027261(2*n+1)` -/
def P4429498634982383789.Spec : Prop :=
  ∀ n, P4429498634982383789.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P4789390831102951617

`A229277(2*n+1)+A081038(2*n+1)`
-/

namespace A212703.P4789390831102951617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 (2 * n + 1) + A081038 (2 * n + 1)

end

end A212703.P4789390831102951617

namespace A212703

/-- `A229277(2*n+1)+A081038(2*n+1)` -/
def P4789390831102951617.Spec : Prop :=
  ∀ n, P4789390831102951617.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P8599555899185879879

`A159715(2*(n+1))+A159715(2*(n+1))`
-/

namespace A212703.P8599555899185879879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159715 (2 * (n + 1)) + A159715 (2 * (n + 1))

end

end A212703.P8599555899185879879

namespace A212703

/-- `A159715(2*(n+1))+A159715(2*(n+1))` -/
def P8599555899185879879.Spec : Prop :=
  ∀ n, P8599555899185879879.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P5057096427883773186

`A113071(2*n+1)-A120908(2*n+1)`
-/

namespace A212703.P5057096427883773186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (2 * n + 1) - A120908 (2 * n + 1)

end

end A212703.P5057096427883773186

namespace A212703

/-- `A113071(2*n+1)-A120908(2*n+1)` -/
def P5057096427883773186.Spec : Prop :=
  ∀ n, P5057096427883773186.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P17423116131937244727

`A158749(n+1)-(A158749(n)+A001019(n))`
-/

namespace A212703.P17423116131937244727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 (n + 1) - (A158749 n + A001019 n)

end

end A212703.P17423116131937244727

namespace A212703

/-- `A158749(n+1)-(A158749(n)+A001019(n))` -/
def P17423116131937244727.Spec : Prop :=
  ∀ n, P17423116131937244727.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P6190183456838602774

`A001019(n)*A017077(n+1)-A001019(n)`
-/

namespace A212703.P6190183456838602774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A017077 (n + 1) - A001019 n

end

end A212703.P6190183456838602774

namespace A212703

/-- `A001019(n)*A017077(n+1)-A001019(n)` -/
def P6190183456838602774.Spec : Prop :=
  ∀ n, P6190183456838602774.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P9550387104197653655

`A053540(n+2)-(A053540(n+1)+A001019(n+1))`
-/

namespace A212703.P9550387104197653655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 2) - (A053540 (n + 1) + A001019 (n + 1))

end

end A212703.P9550387104197653655

namespace A212703

/-- `A053540(n+2)-(A053540(n+1)+A001019(n+1))` -/
def P9550387104197653655.Spec : Prop :=
  ∀ n, P9550387104197653655.a n = A212703 (n + 1)

end A212703

/-! ## A212703.P9899124670910348590

`9*(n+1)*a(n-1)/n` with `a(0)=8`
-/

namespace A212703.P9899124670910348590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  9 * ((n + 1 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A212703.P9899124670910348590

namespace A212703

/-- `9*(n+1)*a(n-1)/n` -/
def P9899124670910348590.Spec : Prop :=
  ∀ n, P9899124670910348590.a n = (A212703 (n + 1) : ℚ)

end A212703

/-!
# A212704: a(n) = 9*n*10^(n-1).

The programs for A212704, the canonical program `A212704.P12310081658456825462` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212704 has offset 1).

The definition of A212704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212704.P12310081658456825462

`9*A053541(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212704

/-- `9*A053541(n+1)` -/
def P12310081658456825462.Spec : Prop :=
  ∀ n, P12310081658456825462.a n = A212704 (n + 1)

theorem P12310081658456825462.correct : P12310081658456825462.Spec := by
  intro n
  simp only [A212704, Nat.add_sub_cancel]

end A212704

/-! ## A212704.P15019597448942336532

`A033713(n+2)-A033713(n+1)`
-/

namespace A212704.P15019597448942336532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033713 (n + 2) - A033713 (n + 1)

end

end A212704.P15019597448942336532

namespace A212704

/-- `A033713(n+2)-A033713(n+1)` -/
def P15019597448942336532.Spec : Prop :=
  ∀ n, P15019597448942336532.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P2924203150686425759

`A033714(n+2)-A033714(n+1)`
-/

namespace A212704.P2924203150686425759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033714 (n + 2) - A033714 (n + 1)

end

end A212704.P2924203150686425759

namespace A212704

/-- `A033714(n+2)-A033714(n+1)` -/
def P2924203150686425759.Spec : Prop :=
  ∀ n, P2924203150686425759.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P16185948778173329890

`(n+1)*Δ[10^n]`
-/

namespace A212704.P16185948778173329890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212704.P16185948778173329890

namespace A212704

/-- `(n+1)*Δ[10^n]` -/
def P16185948778173329890.Spec : Prop :=
  ∀ n, P16185948778173329890.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P2504722087591240001

`∑[lcm(9, Δ[n*10^(n-1)])]`
-/

namespace A212704.P2504722087591240001
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212704.P2504722087591240001

namespace A212704

/-- `∑[lcm(9, Δ[n*10^(n-1)])]` -/
def P2504722087591240001.Spec : Prop :=
  ∀ n, (P2504722087591240001.a n : ℤ) = A212704 (n + 1)

end A212704

/-! ## A212704.P16334822731112704658

`∑[A358620(n+1)]`
-/

namespace A212704.P16334822731112704658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212704.P16334822731112704658

namespace A212704

/-- `∑[A358620(n+1)]` -/
def P16334822731112704658.Spec : Prop :=
  ∀ n, P16334822731112704658.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P8151017832151017185

`Δ[A033713(n+1)]`
-/

namespace A212704.P8151017832151017185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212704.P8151017832151017185

namespace A212704

/-- `Δ[A033713(n+1)]` -/
def P8151017832151017185.Spec : Prop :=
  ∀ n, P8151017832151017185.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P17713434723429756041

`Δ[A033714(n+1)]`
-/

namespace A212704.P17713434723429756041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212704.P17713434723429756041

namespace A212704

/-- `Δ[A033714(n+1)]` -/
def P17713434723429756041.Spec : Prop :=
  ∀ n, P17713434723429756041.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P1771419792923689737

`Δ[A072290(n)]-1`
-/

namespace A212704.P1771419792923689737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A212704.P1771419792923689737

namespace A212704

/-- `Δ[A072290(n)]-1` -/
def P1771419792923689737.Spec : Prop :=
  ∀ n, P1771419792923689737.a n = A212704 (n + 1)

end A212704

/-! ## A212704.P6813019318888794784

`∑[9*A081045(n)]`
-/

namespace A212704.P6813019318888794784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A081045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212704.P6813019318888794784

namespace A212704

/-- `∑[9*A081045(n)]` -/
def P6813019318888794784.Spec : Prop :=
  ∀ n, P6813019318888794784.a n = A212704 (n + 1)

end A212704

/-!
# A212705: a(n) is the difference between numbers of nonnegative multiples of 2*n+1 with even and odd digit sum in base 2*n in interval [0, (2*n)^8).

The programs for A212705, there is no canonical definition to state claims against.
-/

/-! ## A212705.P14669049377721933683

`(A212706(n+1)+A212670(n+1))/2`
-/

namespace A212705.P14669049377721933683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212706 (n + 1) + A212670 (n + 1) : ℚ) / 2

end

end A212705.P14669049377721933683

/-!
# A212706: a(n) is the difference between numbers of nonnegative multiples of 2*n+1 with even and odd digit sum in base 2*n in interval [0, (2*n)^9).

The programs for A212706, there is no canonical definition to state claims against.
-/

/-! ## A212706.P11418253351025724269

`2*A212705(n+1)-A212670(n+1)`
-/

namespace A212706.P11418253351025724269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212705 (n + 1) - A212670 (n + 1)

end

end A212706.P11418253351025724269

/-!
# A212707: Semiprimes of the form 5*n^2 + 1.

The programs for A212707, there is no canonical definition to state claims against.
-/

/-! ## A212707.P14797641846593335019

`∩[A218697(n+1), A212656(n)]`
-/

namespace A212707.P14797641846593335019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212707.P14797641846593335019

/-! ## A212707.P14183062012778867228

`filter[A212656(n+1), A354927(#)]`
-/

namespace A212707.P14183062012778867228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A212707.P14183062012778867228

/-! ## A212707.P11559337132295959230

`A212656(eq[2, A001222(A212656(n))])`
-/

namespace A212707.P11559337132295959230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A212656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212707.P11559337132295959230

/-! ## A212707.P9853702595806189941

`A212656(eq[4, A000005(A212656(n))])`
-/

namespace A212707.P9853702595806189941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212707.P9853702595806189941

/-! ## A212707.P11626845472872399629

`filter[A212656(n), A064911(#)]`
-/

namespace A212707.P11626845472872399629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A212707.P11626845472872399629

/-!
# A212709: Positive integers not of the form p * c^2 + b^2, with p prime and c and b nonzero integers.

The programs for A212709, there is no canonical definition to state claims against.
-/

/-! ## A212709.P5081394602973923937

`A051952(∑[floor(sqrt(n))!])`
-/

namespace A212709.P5081394602973923937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212709.P5081394602973923937

/-! ## A212709.P3730168277287764783

`Δ[round(sqrt(A098648(n)+1))]`
-/

namespace A212709.P3730168277287764783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A098648 n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212709.P3730168277287764783

/-!
# A212713: The (decimal equivalent of the) smallest integer that can be made by rotating the base three digits of n any number of positions to the left or right.

The programs for A212713, there is no canonical definition to state claims against.
-/

/-! ## A212713.P9950010357619487116

`or(A038574(A187829(n+1)), A295819(n))`
-/

namespace A212713.P9950010357619487116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038574 (A187829 (n + 1)).toNat) (A295819 n)

end

end A212713.P9950010357619487116

/-! ## A212713.P6754401682944002428

`A083928(A279375(n))+A038574(n+1)`
-/

namespace A212713.P6754401682944002428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A279375 n).toNat + A038574 (n + 1)

end

end A212713.P6754401682944002428

/-!
# A212714: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| >= w + |y-z|.

The programs for A212714, the canonical program `A212714.P1515048965482107800` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212714 has offset 0).

The definition of A212714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212714.P1515048965482107800

`floor(n^4/8)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212714

/-- `floor(n^4/8)` -/
def P1515048965482107800.Spec : Prop :=
  ∀ n, P1515048965482107800.a n = A212714 n

theorem P1515048965482107800.correct : P1515048965482107800.Spec := by
  intro n
  simp only [A212714]

end A212714

/-! ## A212714.P5864773498879121675

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=10, a(4)=32, a(5)=78`
-/

namespace A212714.P5864773498879121675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 10, 32, 78] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A212714.P5864773498879121675

namespace A212714

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P5864773498879121675.Spec : Prop :=
  ∀ n, P5864773498879121675.a n = A212714 n

end A212714

/-! ## A212714.P2505130738467199839

`(n^4-n%2)/8`
-/

namespace A212714.P2505130738467199839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 8

end

end A212714.P2505130738467199839

namespace A212714

/-- `(n^4-n%2)/8` -/
def P2505130738467199839.Spec : Prop :=
  ∀ n, P2505130738467199839.a n = (A212714 n : ℚ)

end A212714

/-! ## A212714.P3696261590444569827

`round(or(2, n²²-1)/8)`
-/

namespace A212714.P3696261590444569827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 2 (((n ^ 2) ^ 2 : ℤ) - 1) : ℚ) / 8)

end

end A212714.P3696261590444569827

namespace A212714

/-- `round(or(2, n²²-1)/8)` -/
def P3696261590444569827.Spec : Prop :=
  ∀ n, P3696261590444569827.a n = A212714 n

end A212714

/-! ## A212714.P3646580690847278912

`∑[∑[∑[a(n-2)+6]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A212714.P3646580690847278912
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4] fun n f3 =>
  f3 (n - 2) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212714.P3646580690847278912

namespace A212714

/-- `∑[∑[∑[a(n-2)+6]]]` -/
def P3646580690847278912.Spec : Prop :=
  ∀ n, (P3646580690847278912.a n : ℤ) = A212714 n

end A212714

/-! ## A212714.P3292580943726598782

`∑[A212683(n)]`
-/

namespace A212714.P3292580943726598782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212714.P3292580943726598782

namespace A212714

/-- `∑[A212683(n)]` -/
def P3292580943726598782.Spec : Prop :=
  ∀ n, P3292580943726598782.a n = A212714 n

end A212714

/-! ## A212714.P1183553629699990060

`2*A011863(n)`
-/

namespace A212714.P1183553629699990060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011863 n

end

end A212714.P1183553629699990060

namespace A212714

/-- `2*A011863(n)` -/
def P1183553629699990060.Spec : Prop :=
  ∀ n, P1183553629699990060.a n = A212714 n

end A212714

/-! ## A212714.P300201396838710137

`A131479(n)/2`
-/

namespace A212714.P300201396838710137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131479 n : ℚ) / 2

end

end A212714.P300201396838710137

namespace A212714

/-- `A131479(n)/2` -/
def P300201396838710137.Spec : Prop :=
  ∀ n, P300201396838710137.a n = (A212714 n : ℚ)

end A212714

/-! ## A212714.P7591614675194218483

`round(A000583(n)/8)`
-/

namespace A212714.P7591614675194218483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000583 n : ℚ) / 8)

end

end A212714.P7591614675194218483

namespace A212714

/-- `round(A000583(n)/8)` -/
def P7591614675194218483.Spec : Prop :=
  ∀ n, P7591614675194218483.a n = A212714 n

end A212714

/-! ## A212714.P9900271297797418775

`(A274323(n)-1)/4`
-/

namespace A212714.P9900271297797418775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274323 n - 1 : ℚ) / 4

end

end A212714.P9900271297797418775

namespace A212714

/-- `(A274323(n)-1)/4` -/
def P9900271297797418775.Spec : Prop :=
  ∀ n, P9900271297797418775.a n = (A212714 n : ℚ)

end A212714

/-! ## A212714.P3780609135296244175

`A105636(n)-n*∑[n]`
-/

namespace A212714.P3780609135296244175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A212714.P3780609135296244175

namespace A212714

/-- `A105636(n)-n*∑[n]` -/
def P3780609135296244175.Spec : Prop :=
  ∀ n, P3780609135296244175.a n = A212714 n

end A212714

/-! ## A212714.P12286161934810148772

`∑[n]²-∑[A212684(n)]`
-/

namespace A212714.P12286161934810148772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212714.P12286161934810148772

namespace A212714

/-- `∑[n]²-∑[A212684(n)]` -/
def P12286161934810148772.Spec : Prop :=
  ∀ n, P12286161934810148772.a n = A212714 n

end A212714

/-! ## A212714.P10983754613738077413

`ceil(n²/2)*A002620(n)`
-/

namespace A212714.P10983754613738077413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ * A002620 n

end

end A212714.P10983754613738077413

namespace A212714

/-- `ceil(n²/2)*A002620(n)` -/
def P10983754613738077413.Spec : Prop :=
  ∀ n, P10983754613738077413.a n = A212714 n

end A212714

/-! ## A212714.P12275830869243732148

`ceil(n²/2)*∑[A004526(n)]`
-/

namespace A212714.P12275830869243732148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212714.P12275830869243732148

namespace A212714

/-- `ceil(n²/2)*∑[A004526(n)]` -/
def P12275830869243732148.Spec : Prop :=
  ∀ n, P12275830869243732148.a n = A212714 n

end A212714

/-! ## A212714.P1839155044342870393

`A050534(n)+A045947(n)`
-/

namespace A212714.P1839155044342870393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A045947 n

end

end A212714.P1839155044342870393

namespace A212714

/-- `A050534(n)+A045947(n)` -/
def P1839155044342870393.Spec : Prop :=
  ∀ n, P1839155044342870393.a n = A212714 n

end A212714

/-! ## A212714.P6929105320436734790

`A002817(n)-A019298(n)`
-/

namespace A212714.P6929105320436734790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A019298 n

end

end A212714.P6929105320436734790

namespace A212714

/-- `A002817(n)-A019298(n)` -/
def P6929105320436734790.Spec : Prop :=
  ∀ n, P6929105320436734790.a n = A212714 n

end A212714

/-! ## A212714.P10263094640598218198

`A173704(n)-A045947(n)`
-/

namespace A212714.P10263094640598218198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173704 n - A045947 n

end

end A212714.P10263094640598218198

namespace A212714

/-- `A173704(n)-A045947(n)` -/
def P10263094640598218198.Spec : Prop :=
  ∀ n, P10263094640598218198.a n = A212714 n

end A212714

/-! ## A212714.P2433363758370368975

`A212505(n)-A030179(n)`
-/

namespace A212714.P2433363758370368975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212505 n - A030179 n

end

end A212714.P2433363758370368975

namespace A212714

/-- `A212505(n)-A030179(n)` -/
def P2433363758370368975.Spec : Prop :=
  ∀ n, P2433363758370368975.a n = A212714 n

end A212714

/-! ## A212714.P632266041279711722

`A037270(n)-A212674(n)`
-/

namespace A212714.P632266041279711722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A212674 n

end

end A212714.P632266041279711722

namespace A212714

/-- `A037270(n)-A212674(n)` -/
def P632266041279711722.Spec : Prop :=
  ∀ n, P632266041279711722.a n = A212714 n

end A212714

/-! ## A212714.P9647239058951881963

`A004526(n)*A131474(n)`
-/

namespace A212714.P9647239058951881963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A131474 n

end

end A212714.P9647239058951881963

namespace A212714

/-- `A004526(n)*A131474(n)` -/
def P9647239058951881963.Spec : Prop :=
  ∀ n, P9647239058951881963.a n = A212714 n

end A212714

/-!
# A212717: Numerator of Sum_{k=1..n} 1/sigma(k).

The programs for A212717, there is no canonical definition to state claims against.
-/

/-! ## A212717.P13436791650671256422

`A067577(n+1)/A066780(n+1)*A212718(n+1)`
-/

namespace A212717.P13436791650671256422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067577 (n + 1) : ℚ) / (A066780 (n + 1) : ℚ) * (A212718 (n + 1) : ℚ)

end

end A212717.P13436791650671256422

/-! ## A212717.P10973595987595934726

`A116416(∑[A011782(∑{d}[n+1, #])])`
-/

namespace A212717.P10973595987595934726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212717.P10973595987595934726

/-!
# A212718: Denominator of Sum_{k=1..n} 1/sigma(k).

The programs for A212718, there is no canonical definition to state claims against.
-/

/-! ## A212718.P5991777875073287916

`A066780(n+1)/A067577(n+1)*A212717(n+1)`
-/

namespace A212718.P5991777875073287916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066780 (n + 1) : ℚ) / (A067577 (n + 1) : ℚ) * (A212717 (n + 1) : ℚ)

end

end A212718.P5991777875073287916

/-!
# A212721: Triangle read by rows: n-th row gives distinct products of partitions of n (A000041).

The programs for A212721, there is no canonical definition to state claims against.
-/

/-! ## A212721.P12779113889068188616

`A194896(A111332(n)+n)`
-/

namespace A212721.P12779113889068188616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (A111332 n + (n : ℤ)).toNat

end

end A212721.P12779113889068188616

/-! ## A212721.P9490954463604462773

`A222417(A111332(n)+n)`
-/

namespace A212721.P9490954463604462773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222417 (A111332 n + (n : ℤ)).toNat

end

end A212721.P9490954463604462773

/-! ## A212721.P7381927565579661168

`A256553(A111332(n)+n)`
-/

namespace A212721.P7381927565579661168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256553 (A111332 n + (n : ℤ)).toNat

end

end A212721.P7381927565579661168

/-! ## A212721.P6886868870935859364

`A194896(or(n, A111332(n)))`
-/

namespace A212721.P6886868870935859364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (Int.lor (n : ℤ) (A111332 n)).toNat

end

end A212721.P6886868870935859364

/-! ## A212721.P16145728472807985815

`A256553(n)%A007670(n+1)`
-/

namespace A212721.P16145728472807985815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256553 n) (A007670 (n + 1))

end

end A212721.P16145728472807985815

/-!
# A212722: E.g.f. satisfies: A(x) = exp( x/(1 - x*A(x)^2) ).

The programs for A212722, there is no canonical definition to state claims against.
-/

/-! ## A212722.P17528967241270666690

`ceil(∏{p}[(2*n)!, n²/#])`
-/

namespace A212722.P17528967241270666690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (n ^ 2 : ℚ) / (p : ℚ)⌉

end

end A212722.P17528967241270666690

/-!
# A212723: Number of 0..2 arrays of length n+3 with sum less than 4 in any length 4 subsequence (=less than 50% duty cycle).

The programs for A212723, there is no canonical definition to state claims against.
-/

/-! ## A212723.P2681806383750722100

`A212729(∑[n+2])`
-/

namespace A212723.P2681806383750722100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212723.P2681806383750722100

/-! ## A212723.P7750658579650659390

`record[A212729(A000096(A134478(n)))]`
-/

namespace A212723.P7750658579650659390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212723.P7750658579650659390

/-! ## A212723.P13155713944510211141

`record[A212729(A000096(A137735(n)))]`
-/

namespace A212723.P13155713944510211141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A000096 (A137735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212723.P13155713944510211141

/-! ## A212723.P17665749412560008707

`record[A212729(A000096(A286599(n)))]`
-/

namespace A212723.P17665749412560008707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A000096 (A286599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212723.P17665749412560008707

/-! ## A212723.P9211720125856389638

`record[A212729(A000096(A002260(n+1)))]`
-/

namespace A212723.P9211720125856389638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212723.P9211720125856389638

/-!
# A212724: Number of 0..2 arrays of length n+5 with sum less than 6 in any length 6 subsequence (=less than 50% duty cycle).

The programs for A212724, there is no canonical definition to state claims against.
-/

/-! ## A212724.P16117647293269041237

`A212729(∑[n+3]+1)`
-/

namespace A212724.P16117647293269041237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212724.P16117647293269041237

/-! ## A212724.P4917622886258955935

`A102677(n)!*A212729(A034856(n+2))`
-/

namespace A212724.P4917622886258955935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102677 n).toNat : ℤ) * A212729 (A034856 (n + 2)).toNat

end

end A212724.P4917622886258955935

/-! ## A212724.P12085242736190760318

`A007318(C(n+2, 2))*A212729(A034856(n+2))`
-/

namespace A212724.P12085242736190760318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A212729 (A034856 (n + 2)).toNat

end

end A212724.P12085242736190760318

/-! ## A212724.P13182626350698247375

`A000032(((-1)^n)²)*A212729(A034856(n+2))`
-/

namespace A212724.P13182626350698247375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * A212729 (A034856 (n + 2)).toNat

end

end A212724.P13182626350698247375

/-! ## A212724.P16392831268116711457

`A212729(A034856(n+2))+A008683(A017113(n))`
-/

namespace A212724.P16392831268116711457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A034856 (n + 2)).toNat + A008683 (A017113 n).toNat

end

end A212724.P16392831268116711457

/-!
# A212725: Number of 0..2 arrays of length n+7 with sum less than 8 in any length 8 subsequence (=less than 50% duty cycle).

The programs for A212725, there is no canonical definition to state claims against.
-/

/-! ## A212725.P2342948142766131701

`A212729(A027379(n+2))`
-/

namespace A212725.P2342948142766131701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A027379 (n + 2)).toNat

end

end A212725.P2342948142766131701

/-! ## A212725.P14311026238221038079

`A212729(A055998(n+2))`
-/

namespace A212725.P14311026238221038079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A055998 (n + 2)).toNat

end

end A212725.P14311026238221038079

/-! ## A212725.P2499637451569048259

`A212729(A056000(n)+7)`
-/

namespace A212725.P2499637451569048259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A056000 n + 7).toNat

end

end A212725.P2499637451569048259

/-! ## A212725.P2376392282054587379

`A212729(Δ[A034857(n+1)])`
-/

namespace A212725.P2376392282054587379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (f1 (n + 1) - f1 n).toNat

end

end A212725.P2376392282054587379

/-! ## A212725.P9574401429778543946

`A212729(A052905(n+1)+2)`
-/

namespace A212725.P9574401429778543946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A052905 (n + 1) + 2).toNat

end

end A212725.P9574401429778543946

/-!
# A212726: Number of 0..2 arrays of length n+9 with sum less than 10 in any length 10 subsequence (=less than 50% duty cycle).

The programs for A212726, there is no canonical definition to state claims against.
-/

/-! ## A212726.P8282378556443301113

`A212729(Δ[A264443(n)])`
-/

namespace A212726.P8282378556443301113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (f1 (n + 1) - f1 n).toNat

end

end A212726.P8282378556443301113

/-! ## A212726.P17257273953317753668

`A212729(A046691(n+3))`
-/

namespace A212726.P17257273953317753668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A046691 (n + 3)).toNat

end

end A212726.P17257273953317753668

/-! ## A212726.P7119589220067011871

`A212729(A056115(n)+11)`
-/

namespace A212726.P7119589220067011871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A056115 n + 11).toNat

end

end A212726.P7119589220067011871

/-! ## A212726.P15629533938123026706

`A212729(eq[4, A193592(n)])`
-/

namespace A212726.P15629533938123026706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212726.P15629533938123026706

/-! ## A212726.P2270874527121166930

`A212729(Δ[A023545(n+1)])`
-/

namespace A212726.P2270874527121166930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (f1 (n + 1) - f1 n).toNat

end

end A212726.P2270874527121166930

/-!
# A212727: Number of 0..2 arrays of length n+11 with sum less than 12 in any length 12 subsequence (=less than 50% duty cycle).

The programs for A212727, there is no canonical definition to state claims against.
-/

/-! ## A212727.P11543731069569775493

`A212729(A052905(n+3))`
-/

namespace A212727.P11543731069569775493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A052905 (n + 3)).toNat

end

end A212727.P11543731069569775493

/-! ## A212727.P5363416442218952298

`A212729(eq[3, A219347(n)])`
-/

namespace A212727.P5363416442218952298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212727.P5363416442218952298

/-! ## A212727.P5228824145323515092

`A212729(eq[5, A193592(n)])`
-/

namespace A212727.P5228824145323515092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212727.P5228824145323515092

/-! ## A212727.P11531775682389457740

`A212729(eq[8, A185782(n+1)])`
-/

namespace A212727.P11531775682389457740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212727.P11531775682389457740

/-! ## A212727.P5799758446521826419

`A212729(eq[16, A057728(n+1)])`
-/

namespace A212727.P5799758446521826419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212727.P5799758446521826419

/-!
# A212728: Number of 0..2 arrays of length n+13 with sum less than 14 in any length 14 subsequence (=less than 50% duty cycle).

The programs for A212728, there is no canonical definition to state claims against.
-/

/-! ## A212728.P8698409272984932791

`A212729(A055999(n+4))`
-/

namespace A212728.P8698409272984932791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A055999 (n + 4)).toNat

end

end A212728.P8698409272984932791

/-! ## A212728.P7421282941088639472

`A212729(eq[4, A219347(n)])`
-/

namespace A212728.P7421282941088639472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212728.P7421282941088639472

/-! ## A212728.P4861985934585604780

`A212729(eq[6, A193592(n)])`
-/

namespace A212728.P4861985934585604780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212728.P4861985934585604780

/-! ## A212728.P12092793108081830857

`A212729(eq[10, A185782(n+1)])`
-/

namespace A212728.P12092793108081830857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212728.P12092793108081830857

/-! ## A212728.P9559330467030756714

`A212729(eq[7, A200370(n+1)])`
-/

namespace A212728.P9559330467030756714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212728.P9559330467030756714

/-!
# A212730: Number of 0..2 arrays of length 2*n with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212730, the canonical program `A212730.P8897697622710183952` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212730 has offset 1).

The definition of A212730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212730.P8897697622710183952

`A055217(Δ[n²])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212730

/-- `A055217(Δ[n²])` -/
def P8897697622710183952.Spec : Prop :=
  ∀ n, P8897697622710183952.a n = A212730 (n + 1)

theorem P8897697622710183952.correct : P8897697622710183952.Spec := by
  intro n
  simp only [A212730, Nat.add_sub_cancel]

end A212730

/-! ## A212730.P17221740886453179385

`record[A055217(xor(1, n))]`
-/

namespace A212730.P17221740886453179385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212730.P17221740886453179385

namespace A212730

/-- `record[A055217(xor(1, n))]` -/
def P17221740886453179385.Spec : Prop :=
  ∀ n, P17221740886453179385.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P15155472991489292742

`record[A055217(Δ[A256249(n)])]`
-/

namespace A212730.P15155472991489292742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212730.P15155472991489292742

namespace A212730

/-- `record[A055217(Δ[A256249(n)])]` -/
def P15155472991489292742.Spec : Prop :=
  ∀ n, P15155472991489292742.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P18266289096564433760

`record[A055217(A000265(n+1))]`
-/

namespace A212730.P18266289096564433760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212730.P18266289096564433760

namespace A212730

/-- `record[A055217(A000265(n+1))]` -/
def P18266289096564433760.Spec : Prop :=
  ∀ n, P18266289096564433760.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P17090070048232595372

`record[A055217(A158405(n+1))]`
-/

namespace A212730.P17090070048232595372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212730.P17090070048232595372

namespace A212730

/-- `record[A055217(A158405(n+1))]` -/
def P17090070048232595372.Spec : Prop :=
  ∀ n, P17090070048232595372.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P11889209868077809486

`A330796(2*n+1)+A027914(2*n+1)`
-/

namespace A212730.P11889209868077809486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330796 (2 * n + 1) + A027914 (2 * n + 1)

end

end A212730.P11889209868077809486

namespace A212730

/-- `A330796(2*n+1)+A027914(2*n+1)` -/
def P11889209868077809486.Spec : Prop :=
  ∀ n, P11889209868077809486.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P13738100563831943773

`A027914(2*(n+1))-A002426(2*(n+1))`
-/

namespace A212730.P13738100563831943773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (2 * (n + 1)) - A002426 (2 * (n + 1))

end

end A212730.P13738100563831943773

namespace A212730

/-- `A027914(2*(n+1))-A002426(2*(n+1))` -/
def P13738100563831943773.Spec : Prop :=
  ∀ n, P13738100563831943773.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P8846011358253929695

`A134377(2*(n+1))-A108863(2*n+1)`
-/

namespace A212730.P8846011358253929695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134377 (2 * (n + 1)) - A108863 (2 * n + 1)

end

end A212730.P8846011358253929695

namespace A212730

/-- `A134377(2*(n+1))-A108863(2*n+1)` -/
def P8846011358253929695.Spec : Prop :=
  ∀ n, P8846011358253929695.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P13612736428431222008

`or(A000038(n), A055217(A005408(n)))`
-/

namespace A212730.P13612736428431222008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A055217 (A005408 n).toNat)

end

end A212730.P13612736428431222008

namespace A212730

/-- `or(A000038(n), A055217(A005408(n)))` -/
def P13612736428431222008.Spec : Prop :=
  ∀ n, P13612736428431222008.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P7516440652950201491

`A055217(A005408(n))+A000038(n+1)`
-/

namespace A212730.P7516440652950201491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (A005408 n).toNat + A000038 (n + 1)

end

end A212730.P7516440652950201491

namespace A212730

/-- `A055217(A005408(n))+A000038(n+1)` -/
def P7516440652950201491.Spec : Prop :=
  ∀ n, P7516440652950201491.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P13727097448396398620

`A000244(n+1)²-A027914(2*(n+1))`
-/

namespace A212730.P13727097448396398620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) ^ 2 - A027914 (2 * (n + 1))

end

end A212730.P13727097448396398620

namespace A212730

/-- `A000244(n+1)²-A027914(2*(n+1))` -/
def P13727097448396398620.Spec : Prop :=
  ∀ n, P13727097448396398620.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P9049668320272161193

`A000244(2*(n+1))-A027914(2*(n+1))`
-/

namespace A212730.P9049668320272161193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * (n + 1)) - A027914 (2 * (n + 1))

end

end A212730.P9049668320272161193

namespace A212730

/-- `A000244(2*(n+1))-A027914(2*(n+1))` -/
def P9049668320272161193.Spec : Prop :=
  ∀ n, P9049668320272161193.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P475010054374549712

`A109196(2*n+3)-A057585(2*n+1)`
-/

namespace A212730.P475010054374549712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109196 (2 * n + 3) - A057585 (2 * n + 1)

end

end A212730.P475010054374549712

namespace A212730

/-- `A109196(2*n+3)-A057585(2*n+1)` -/
def P475010054374549712.Spec : Prop :=
  ∀ n, P475010054374549712.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P10921854563205349733

`2*A055217(2*n+1)-A055217(2*n+1)`
-/

namespace A212730.P10921854563205349733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055217 (2 * n + 1) - A055217 (2 * n + 1)

end

end A212730.P10921854563205349733

namespace A212730

/-- `2*A055217(2*n+1)-A055217(2*n+1)` -/
def P10921854563205349733.Spec : Prop :=
  ∀ n, P10921854563205349733.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P4953491310071555247

`A109194(2*n+3)/2-A057585(2*n+1)`
-/

namespace A212730.P4953491310071555247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109194 (2 * n + 3) : ℚ) / 2 - (A057585 (2 * n + 1) : ℚ)

end

end A212730.P4953491310071555247

namespace A212730

/-- `A109194(2*n+3)/2-A057585(2*n+1)` -/
def P4953491310071555247.Spec : Prop :=
  ∀ n, P4953491310071555247.a n = (A212730 (n + 1) : ℚ)

end A212730

/-! ## A212730.P10889786630376773283

`A109196(2*(n+1))+A109196(2*n+3)-A055218(2*n)`
-/

namespace A212730.P10889786630376773283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109196 (2 * (n + 1)) + (A109196 (2 * n + 3) - A055218 (2 * n))

end

end A212730.P10889786630376773283

namespace A212730

/-- `A109196(2*(n+1))+A109196(2*n+3)-A055218(2*n)` -/
def P10889786630376773283.Spec : Prop :=
  ∀ n, P10889786630376773283.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P2749752934635275730

`A055218(2*n+1)-(A057585(2*n+1)+A057585(2*(n+1)))`
-/

namespace A212730.P2749752934635275730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055218 (2 * n + 1) - (A057585 (2 * n + 1) + A057585 (2 * (n + 1)))

end

end A212730.P2749752934635275730

namespace A212730

/-- `A055218(2*n+1)-(A057585(2*n+1)+A057585(2*(n+1)))` -/
def P2749752934635275730.Spec : Prop :=
  ∀ n, P2749752934635275730.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P5678489050093992980

`A057585(2*(n+1))+A275289(2*(n+2))-A057585(2*n+1)`
-/

namespace A212730.P5678489050093992980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057585 (2 * (n + 1)) + (A275289 (2 * (n + 2)) - A057585 (2 * n + 1))

end

end A212730.P5678489050093992980

namespace A212730

/-- `A057585(2*(n+1))+A275289(2*(n+2))-A057585(2*n+1)` -/
def P5678489050093992980.Spec : Prop :=
  ∀ n, P5678489050093992980.a n = A212730 (n + 1)

end A212730

/-! ## A212730.P8441201046625494744

`A109196(2*n+3)+A275289(2*n+3)-A109196(2*(n+1))`
-/

namespace A212730.P8441201046625494744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109196 (2 * n + 3) + (A275289 (2 * n + 3) - A109196 (2 * (n + 1)))

end

end A212730.P8441201046625494744

namespace A212730

/-- `A109196(2*n+3)+A275289(2*n+3)-A109196(2*(n+1))` -/
def P8441201046625494744.Spec : Prop :=
  ∀ n, P8441201046625494744.a n = A212730 (n + 1)

end A212730

/-!
# A212731: Number of 0..2 arrays of length 2*n+1 with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212731, there is no canonical definition to state claims against.
-/

/-! ## A212731.P14999097775129749087

`A212729(∑[n+1]+2)`
-/

namespace A212731.P14999097775129749087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212731.P14999097775129749087

/-! ## A212731.P3288553437613191155

`record[A212729(A080036(n+1))]`
-/

namespace A212731.P3288553437613191155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A080036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212731.P3288553437613191155

/-! ## A212731.P15236262694918647170

`record[A212729(A014132(n+1)+1)]`
-/

namespace A212731.P15236262694918647170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A014132 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212731.P15236262694918647170

/-! ## A212731.P17277094753200356340

`record[A023531(n)*A212729(n+3)]`
-/

namespace A212731.P17277094753200356340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A212729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212731.P17277094753200356340

/-! ## A212731.P6817440162096589341

`record[A212729(n+3)%A212729(n+2)]`
-/

namespace A212731.P6817440162096589341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212729 (n + 3)) (A212729 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212731.P6817440162096589341

/-!
# A212732: Number of 0..2 arrays of length 2*n+2 with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212732, there is no canonical definition to state claims against.
-/

/-! ## A212732.P11118805731408204942

`A212729(∑[n+2]+4)`
-/

namespace A212732.P11118805731408204942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212732.P11118805731408204942

/-! ## A212732.P8033982167549829719

`or(char[2], A212729(4-A080956(n+3)))`
-/

namespace A212732.P8033982167549829719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212729 (4 - A080956 (n + 3)).toNat)

end

end A212732.P8033982167549829719

/-! ## A212732.P11121231164199790019

`lcm((-1)^n, A212729(A167614(n+1)))`
-/

namespace A212732.P11121231164199790019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A212729 (A167614 (n + 1)).toNat)

end

end A212732.P11121231164199790019

/-! ## A212732.P15551768342682758766

`A177849(n)*A212729(A167614(n+1))`
-/

namespace A212732.P15551768342682758766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A212729 (A167614 (n + 1)).toNat

end

end A212732.P15551768342682758766

/-! ## A212732.P14317068937057532322

`A000035(2*n+3)*A212729(4-A080956(n+3))`
-/

namespace A212732.P14317068937057532322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3) * A212729 (4 - A080956 (n + 3)).toNat

end

end A212732.P14317068937057532322

/-!
# A212733: Number of 0..2 arrays of length 2*n+3 with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212733, there is no canonical definition to state claims against.
-/

/-! ## A212733.P16551369180162187002

`A212729(A052905(n)+9)`
-/

namespace A212733.P16551369180162187002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A052905 n + 9).toNat

end

end A212733.P16551369180162187002

/-! ## A212733.P7716918941303182630

`A212729(A055999(n)+10)`
-/

namespace A212733.P7716918941303182630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A055999 n + 10).toNat

end

end A212733.P7716918941303182630

/-! ## A212733.P13631947350441332524

`A212729(A167614(n+2)+1)`
-/

namespace A212733.P13631947350441332524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A167614 (n + 2) + 1).toNat

end

end A212733.P13631947350441332524

/-! ## A212733.P12035521336441000936

`A212729(A166136(n+2)-2)`
-/

namespace A212733.P12035521336441000936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A166136 (n + 2) - 2).toNat

end

end A212733.P12035521336441000936

/-! ## A212733.P5055339433235219305

`A212729(A167487(n+2)-3)`
-/

namespace A212733.P5055339433235219305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A167487 (n + 2) - 3).toNat

end

end A212733.P5055339433235219305

/-!
# A212734: Number of 0..2 arrays of length 2*n+4 with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212734, there is no canonical definition to state claims against.
-/

/-! ## A212734.P11337526232053994957

`A212729(A167499(n+3))`
-/

namespace A212734.P11337526232053994957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A167499 (n + 3)).toNat

end

end A212734.P11337526232053994957

/-! ## A212734.P14415716423336286435

`A212729(A155212(n)+13)`
-/

namespace A212734.P14415716423336286435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A155212 n + 13).toNat

end

end A212734.P14415716423336286435

/-! ## A212734.P14410183962393947338

`A212729(A056000(n)+15)`
-/

namespace A212734.P14410183962393947338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A056000 n + 15).toNat

end

end A212734.P14410183962393947338

/-! ## A212734.P3048184511848418110

`A212729(A055998(n+2)+8)`
-/

namespace A212734.P3048184511848418110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A055998 (n + 2) + 8).toNat

end

end A212734.P3048184511848418110

/-! ## A212734.P13784295932419722336

`A212729(eq[6, A131818(n+1)])`
-/

namespace A212734.P13784295932419722336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212734.P13784295932419722336

/-!
# A212735: Number of 0..2 arrays of length 2*n+5 with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212735, there is no canonical definition to state claims against.
-/

/-! ## A212735.P7832059107676036445

`A212729(A056115(n)+21)`
-/

namespace A212735.P7832059107676036445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A056115 n + 21).toNat

end

end A212735.P7832059107676036445

/-! ## A212735.P12642556660025179789

`A212729(A167499(n+4)+1)`
-/

namespace A212735.P12642556660025179789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A167499 (n + 4) + 1).toNat

end

end A212735.P12642556660025179789

/-! ## A212735.P4756949058930674434

`A212729(A056000(n+1)+16)`
-/

namespace A212735.P4756949058930674434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A056000 (n + 1) + 16).toNat

end

end A212735.P4756949058930674434

/-! ## A212735.P13044619585153187739

`A212729(A246172(n+1)+20)`
-/

namespace A212735.P13044619585153187739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A246172 (n + 1) + 20).toNat

end

end A212735.P13044619585153187739

/-! ## A212735.P17704874028322997449

`A212729(eq[7, A131818(n+1)])`
-/

namespace A212735.P17704874028322997449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212735.P17704874028322997449

/-!
# A212736: Number of 0..2 arrays of length 2*n+6 with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A212736, there is no canonical definition to state claims against.
-/

/-! ## A212736.P14252872825712300873

`A212729(A167487(n+5))`
-/

namespace A212736.P14252872825712300873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A167487 (n + 5)).toNat

end

end A212736.P14252872825712300873

/-! ## A212736.P1147746430371856322

`A212729(A056119(n)+28)`
-/

namespace A212736.P1147746430371856322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (A056119 n + 28).toNat

end

end A212736.P1147746430371856322

/-! ## A212736.P12676829112163215711

`A212729(eq[11, A066657(n)])`
-/

namespace A212736.P12676829112163215711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212736.P12676829112163215711

/-! ## A212736.P5657430221712239434

`A212729(eq[6, A002262(n)]+1)`
-/

namespace A212736.P5657430221712239434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A212736.P5657430221712239434

/-! ## A212736.P7489441512717408284

`A212729(eq[8, A131818(n+1)])`
-/

namespace A212736.P7489441512717408284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212736.P7489441512717408284

/-!
# A212737: Square array A(n,k), n>=1, k>=1, read by antidiagonals, where column k lists the orders of degree-d irreducible polynomials over GF(prime(k)); listing order for each column: ascending d, ascending value.

The programs for A212737, there is no canonical definition to state claims against.
-/

/-! ## A212737.P2624012632488840144

`gcd(Δ[A173787(n)], A038728(n+1))`
-/

namespace A212737.P2624012632488840144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A038728 (n + 1))

end

end A212737.P2624012632488840144

/-! ## A212737.P1471078687394274826

`A081688(A002262(n))+A052409(A339587(n+4))`
-/

namespace A212737.P1471078687394274826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (A002262 n).toNat + A052409 (A339587 (n + 4)).toNat

end

end A212737.P1471078687394274826

/-! ## A212737.P16282705664931915659

`A010251(A058843(n+1))`
-/

namespace A212737.P16282705664931915659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010251 (A058843 (n + 1)).toNat

end

end A212737.P16282705664931915659

/-! ## A212737.P14711309729238240866

`A307078(n)/A114202(A091042(n))`
-/

namespace A212737.P14711309729238240866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307078 n : ℚ) / (A114202 (A091042 n).toNat : ℚ)

end

end A212737.P14711309729238240866

/-! ## A212737.P10249122120603367142

`A307078(n)%A084192(A008458(n))`
-/

namespace A212737.P10249122120603367142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307078 n) (A084192 (A008458 n).toNat)

end

end A212737.P10249122120603367142

/-!
# A212739: a(n) = 2^(n^2) - 1.

The programs for A212739, the canonical program `A212739.P7412624870381027946` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212739 has offset 0).

The definition of A212739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n²-1` (program `A212739.P7412624870381027946`, by `A212739.P7412624870381027946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212739.P7412624870381027946

`2^n²-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212739

/-- `2^n²-1` -/
def P7412624870381027946.Spec : Prop :=
  ∀ n, P7412624870381027946.a n = A212739 n

theorem P7412624870381027946.correct : P7412624870381027946.Spec := by
  intro n
  simp only [A212739]

end A212739

/-! ## A212739.P4637277170128387692

`xor(-1, -2^n²)`
-/

namespace A212739.P4637277170128387692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(2 ^ n ^ 2 : ℤ))

end

end A212739.P4637277170128387692

namespace A212739

/-- `xor(-1, -2^n²)` -/
def P4637277170128387692.Spec : Prop :=
  ∀ n, P4637277170128387692.a n = A212739 n

end A212739

/-! ## A212739.P2996087472948467025

`or(n, 2^n^n-1)`
-/

namespace A212739.P2996087472948467025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (((2 ^ n) ^ n : ℤ) - 1)

end

end A212739.P2996087472948467025

namespace A212739

/-- `or(n, 2^n^n-1)` -/
def P2996087472948467025.Spec : Prop :=
  ∀ n, P2996087472948467025.a n = A212739 n

end A212739

/-! ## A212739.P2497427623422866284

`abs(1-lcm(2, (-2)^n)^n)`
-/

namespace A212739.P2497427623422866284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Int.lcm 2 ((-2) ^ n) ^ n : ℤ)|

end

end A212739.P2497427623422866284

namespace A212739

/-- `abs(1-lcm(2, (-2)^n)^n)` -/
def P2497427623422866284.Spec : Prop :=
  ∀ n, P2497427623422866284.a n = A212739 n

end A212739

/-!
# A212740: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}

The programs for A212740, the canonical program `A212740.P15510474678281621434` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212740 has offset 0).

The definition of A212740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212740.P15510474678281621434

`floor(n/2)²²+ceil(n/2)²²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212740

/-- `floor(n/2)²²+ceil(n/2)²²` -/
def P15510474678281621434.Spec : Prop :=
  ∀ n, P15510474678281621434.a n = A212740 n

theorem P15510474678281621434.correct : P15510474678281621434.Spec := by
  intro n
  simp only [A212740]

end A212740

/-! ## A212740.P765308066241550888

`(n+1)²²%A212741(n)`
-/

namespace A212740.P765308066241550888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2) ^ 2 : ℤ) (A212741 n)

end

end A212740.P765308066241550888

namespace A212740

/-- `(n+1)²²%A212741(n)` -/
def P765308066241550888.Spec : Prop :=
  ∀ n, P765308066241550888.a n = A212740 n

end A212740

/-! ## A212740.P2677638006635765221

`∪[A008514(n), A244730(n)]`
-/

namespace A212740.P2677638006635765221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212740.P2677638006635765221

namespace A212740

/-- `∪[A008514(n), A244730(n)]` -/
def P2677638006635765221.Spec : Prop :=
  ∀ n, (P2677638006635765221.a n : ℤ) = A212740 n

end A212740

/-! ## A212740.P3285079879221244339

`∪[A212742(n), A244730(n)]`
-/

namespace A212740.P3285079879221244339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212740.P3285079879221244339

namespace A212740

/-- `∪[A212742(n), A244730(n)]` -/
def P3285079879221244339.Spec : Prop :=
  ∀ n, (P3285079879221244339.a n : ℤ) = A212740 n

end A212740

/-! ## A212740.P9324474648729864492

`∑[A006003(A004273(ceil(n/2)))]`
-/

namespace A212740.P9324474648729864492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A004273 ⌈(n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212740.P9324474648729864492

namespace A212740

/-- `∑[A006003(A004273(ceil(n/2)))]` -/
def P9324474648729864492.Spec : Prop :=
  ∀ n, P9324474648729864492.a n = A212740 n

end A212740

/-! ## A212740.P14737741240230767028

`A057427(n)*A212742(abs(1-n))`
-/

namespace A212740.P14737741240230767028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A212742 |1 - (n : ℤ)|.toNat

end

end A212740.P14737741240230767028

namespace A212740

/-- `A057427(n)*A212742(abs(1-n))` -/
def P14737741240230767028.Spec : Prop :=
  ∀ n, P14737741240230767028.a n = A212740 n

end A212740

/-! ## A212740.P10600694859397941629

`∑[A006003(1-A040001(n)+n)]`
-/

namespace A212740.P10600694859397941629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (1 - A040001 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212740.P10600694859397941629

namespace A212740

/-- `∑[A006003(1-A040001(n)+n)]` -/
def P10600694859397941629.Spec : Prop :=
  ∀ n, P10600694859397941629.a n = A212740 n

end A212740

/-! ## A212740.P16795187951466677148

`∑[A005917(A065033(n))-A000007(n)]`
-/

namespace A212740.P16795187951466677148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (A065033 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212740.P16795187951466677148

namespace A212740

/-- `∑[A005917(A065033(n))-A000007(n)]` -/
def P16795187951466677148.Spec : Prop :=
  ∀ n, P16795187951466677148.a n = A212740 n

end A212740

/-! ## A212740.P7668774512107374771

`∑[A006003(Δ[A261243(n+1)])]`
-/

namespace A212740.P7668774512107374771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261243 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212740.P7668774512107374771

namespace A212740

/-- `∑[A006003(Δ[A261243(n+1)])]` -/
def P7668774512107374771.Spec : Prop :=
  ∀ n, P7668774512107374771.a n = A212740 n

end A212740

/-! ## A212740.P9982880909428022769

`xor(A000034(n), A058331(A004652(n)))`
-/

namespace A212740.P9982880909428022769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 n) (A058331 (A004652 n).toNat)

end

end A212740.P9982880909428022769

namespace A212740

/-- `xor(A000034(n), A058331(A004652(n)))` -/
def P9982880909428022769.Spec : Prop :=
  ∀ n, P9982880909428022769.a n = A212740 n

end A212740

/-! ## A212740.P15779864257189361732

`A213037(A000982(n))`
-/

namespace A212740.P15779864257189361732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A000982 n).toNat

end

end A212740.P15779864257189361732

namespace A212740

/-- `A213037(A000982(n))` -/
def P15779864257189361732.Spec : Prop :=
  ∀ n, P15779864257189361732.a n = A212740 n

end A212740

/-! ## A212740.P13878467164259147653

`A213037(∑[n]-A004526(n))`
-/

namespace A212740.P13878467164259147653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 n).toNat

end

end A212740.P13878467164259147653

namespace A212740

/-- `A213037(∑[n]-A004526(n))` -/
def P13878467164259147653.Spec : Prop :=
  ∀ n, P13878467164259147653.a n = A212740 n

end A212740

/-! ## A212740.P2919656723429434496

`A213037(∑[n+1]-A008619(3*n))`
-/

namespace A212740.P2919656723429434496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008619 (3 * n)).toNat

end

end A212740.P2919656723429434496

namespace A212740

/-- `A213037(∑[n+1]-A008619(3*n))` -/
def P2919656723429434496.Spec : Prop :=
  ∀ n, P2919656723429434496.a n = A212740 n

end A212740

/-! ## A212740.P6192193527741818300

`A213037(A004652(n)+A002620(n))`
-/

namespace A212740.P6192193527741818300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A004652 n + A002620 n).toNat

end

end A212740.P6192193527741818300

namespace A212740

/-- `A213037(A004652(n)+A002620(n))` -/
def P6192193527741818300.Spec : Prop :=
  ∀ n, P6192193527741818300.a n = A212740 n

end A212740

/-! ## A212740.P13640053779827284848

`A213037(A008794(n+1)+A008794(n))`
-/

namespace A212740.P13640053779827284848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A008794 (n + 1) + A008794 n).toNat

end

end A212740.P13640053779827284848

namespace A212740

/-- `A213037(A008794(n+1)+A008794(n))` -/
def P13640053779827284848.Spec : Prop :=
  ∀ n, P13640053779827284848.a n = A212740 n

end A212740

/-! ## A212740.P10746176624717138679

`A213037(A213037(n)+1-A093178(n))`
-/

namespace A212740.P10746176624717138679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A213037 n + (1 - A093178 n)).toNat

end

end A212740.P10746176624717138679

namespace A212740

/-- `A213037(A213037(n)+1-A093178(n))` -/
def P10746176624717138679.Spec : Prop :=
  ∀ n, P10746176624717138679.a n = A212740 n

end A212740

/-! ## A212740.P15461531964935198406

`A213037(1-(A093178(n)-A213037(n)))`
-/

namespace A212740.P15461531964935198406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (1 - (A093178 n - A213037 n)).toNat

end

end A212740.P15461531964935198406

namespace A212740

/-- `A213037(1-(A093178(n)-A213037(n)))` -/
def P15461531964935198406.Spec : Prop :=
  ∀ n, P15461531964935198406.a n = A212740 n

end A212740

/-! ## A212740.P9464694777869005086

`A213037((A247375(n)+A213037(n))/2)`
-/

namespace A212740.P9464694777869005086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (SequenceMachineLib.roundAway ((A247375 n + A213037 n : ℚ) / 2)).toNat

end

end A212740.P9464694777869005086

namespace A212740

/-- `A213037((A247375(n)+A213037(n))/2)` -/
def P9464694777869005086.Spec : Prop :=
  ∀ n, P9464694777869005086.a n = A212740 n

end A212740

/-! ## A212740.P3301745192956061804

`A213037(A004525(n²))`
-/

namespace A212740.P3301745192956061804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A004525 (n ^ 2)).toNat

end

end A212740.P3301745192956061804

namespace A212740

/-- `A213037(A004525(n²))` -/
def P3301745192956061804.Spec : Prop :=
  ∀ n, P3301745192956061804.a n = A212740 n

end A212740

/-! ## A212740.P14347413356632810694

`A397268(n²)/2`
-/

namespace A212740.P14347413356632810694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397268 (n ^ 2) : ℚ) / 2

end

end A212740.P14347413356632810694

namespace A212740

/-- `A397268(n²)/2` -/
def P14347413356632810694.Spec : Prop :=
  ∀ n, P14347413356632810694.a n = (A212740 n : ℚ)

end A212740

/-!
# A212741: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}>=2*min{w,x,y,z}.

The programs for A212741, the canonical program `A212741.P3519736066296721544` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212741 has offset 0).

The definition of A212741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212741.P16665352147612736225

`∑[A212746(n)]-n²²`
-/

namespace A212741.P16665352147612736225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n ^ 2) ^ 2 : ℤ)

end

end A212741.P16665352147612736225

namespace A212741

/-- `∑[A212746(n)]-n²²` -/
def P16665352147612736225.Spec : Prop :=
  ∀ n, P16665352147612736225.a n = A212741 n

end A212741

/-! ## A212741.P3519736066296721544

`(n+1)²²-A212740(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212741

/-- `(n+1)²²-A212740(n)` -/
def P3519736066296721544.Spec : Prop :=
  ∀ n, P3519736066296721544.a n = A212741 n

theorem P3519736066296721544.correct : P3519736066296721544.Spec := by
  intro n
  simp only [A212741]

end A212741

/-! ## A212741.P16659719799845886082

`A008514(n)-2*A077043(n)²`
-/

namespace A212741.P16659719799845886082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n - 2 * A077043 n ^ 2

end

end A212741.P16659719799845886082

namespace A212741

/-- `A008514(n)-2*A077043(n)²` -/
def P16659719799845886082.Spec : Prop :=
  ∀ n, P16659719799845886082.a n = A212741 n

end A212741

/-! ## A212741.P17439310083575295755

`A212742(n)+A212743(n)-A212740(n)`
-/

namespace A212741.P17439310083575295755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n + (A212743 n - A212740 n)

end

end A212741.P17439310083575295755

namespace A212741

/-- `A212742(n)+A212743(n)-A212740(n)` -/
def P17439310083575295755.Spec : Prop :=
  ∀ n, P17439310083575295755.a n = A212741 n

end A212741

/-! ## A212741.P16245861394905900864

`A005917(n+1)+∑[A212746(n)-A005917(n+1)]`
-/

namespace A212741.P16245861394905900864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212746 n - A005917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212741.P16245861394905900864

namespace A212741

/-- `A005917(n+1)+∑[A212746(n)-A005917(n+1)]` -/
def P16245861394905900864.Spec : Prop :=
  ∀ n, P16245861394905900864.a n = A212741 n

end A212741

/-! ## A212741.P12990488887287134399

`A212743(n)+Δ[A212740(n)]`
-/

namespace A212741.P12990488887287134399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212743 n + (f1 (n + 1) - f1 n)

end

end A212741.P12990488887287134399

namespace A212741

/-- `A212743(n)+Δ[A212740(n)]` -/
def P12990488887287134399.Spec : Prop :=
  ∀ n, P12990488887287134399.a n = A212741 n

end A212741

/-! ## A212741.P12928307934686461477

`A212740(n+1)+A212743(n)-A212740(n)`
-/

namespace A212741.P12928307934686461477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 (n + 1) + (A212743 n - A212740 n)

end

end A212741.P12928307934686461477

namespace A212741

/-- `A212740(n+1)+A212743(n)-A212740(n)` -/
def P12928307934686461477.Spec : Prop :=
  ∀ n, P12928307934686461477.a n = A212741 n

end A212741

/-! ## A212741.P1825892940877861276

`A008514(n)-A001105(A077043(n))`
-/

namespace A212741.P1825892940877861276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n - A001105 (A077043 n).toNat

end

end A212741.P1825892940877861276

namespace A212741

/-- `A008514(n)-A001105(A077043(n))` -/
def P1825892940877861276.Spec : Prop :=
  ∀ n, P1825892940877861276.a n = A212741 n

end A212741

/-!
# A212742: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}<=2*min{w,x,y,z}.

The programs for A212742, the canonical program `A212742.P6615112859734438105` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212742 has offset 0).

The definition of A212742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212740, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212742.P6615112859734438105

`A212740(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212742

/-- `A212740(n+1)` -/
def P6615112859734438105.Spec : Prop :=
  ∀ n, P6615112859734438105.a n = A212742 n

theorem P6615112859734438105.correct : P6615112859734438105.Spec := by
  intro n
  simp only [A212742]

end A212742

/-! ## A212742.P1917394681239834043

`∑[or(1, n)*ceil(or(1, n)²/2)]`
-/

namespace A212742.P1917394681239834043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ⌈(Nat.lor 1 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P1917394681239834043

namespace A212742

/-- `∑[or(1, n)*ceil(or(1, n)²/2)]` -/
def P1917394681239834043.Spec : Prop :=
  ∀ n, P1917394681239834043.a n = A212742 n

end A212742

/-! ## A212742.P1762352576969331402

`∑[A006003(or(1, n))]`
-/

namespace A212742.P1762352576969331402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P1762352576969331402

namespace A212742

/-- `∑[A006003(or(1, n))]` -/
def P1762352576969331402.Spec : Prop :=
  ∀ n, P1762352576969331402.a n = A212742 n

end A212742

/-! ## A212742.P9040263747334997795

`∑[A005917(∑[char[2*n]])]`
-/

namespace A212742.P9040263747334997795
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P9040263747334997795

namespace A212742

/-- `∑[A005917(∑[char[2*n]])]` -/
def P9040263747334997795.Spec : Prop :=
  ∀ n, P9040263747334997795.a n = A212742 n

end A212742

/-! ## A212742.P12431024915191350818

`∑[A006003(and(n, -2)+1)]`
-/

namespace A212742.P12431024915191350818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (Int.land (n : ℤ) (-2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P12431024915191350818

namespace A212742

/-- `∑[A006003(and(n, -2)+1)]` -/
def P12431024915191350818.Spec : Prop :=
  ∀ n, P12431024915191350818.a n = A212742 n

end A212742

/-! ## A212742.P11585586733040487202

`(n+1)²²-A212743(n)`
-/

namespace A212742.P11585586733040487202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212743 n

end

end A212742.P11585586733040487202

namespace A212742

/-- `(n+1)²²-A212743(n)` -/
def P11585586733040487202.Spec : Prop :=
  ∀ n, P11585586733040487202.a n = A212742 n

end A212742

/-! ## A212742.P7141072649334715293

`∑[A006003((n+1)%2+n)]`
-/

namespace A212742.P7141072649334715293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 ((n + 1) % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P7141072649334715293

namespace A212742

/-- `∑[A006003((n+1)%2+n)]` -/
def P7141072649334715293.Spec : Prop :=
  ∀ n, P7141072649334715293.a n = A212742 n

end A212742

/-! ## A212742.P2602706874559935687

`∑[A074149(n+1-n%2)]`
-/

namespace A212742.P2602706874559935687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1 - n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P2602706874559935687

namespace A212742

/-- `∑[A074149(n+1-n%2)]` -/
def P2602706874559935687.Spec : Prop :=
  ∀ n, P2602706874559935687.a n = A212742 n

end A212742

/-! ## A212742.P12773717077232037423

`∑[or(1, n)*A000982(or(1, n))]`
-/

namespace A212742.P12773717077232037423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A000982 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P12773717077232037423

namespace A212742

/-- `∑[or(1, n)*A000982(or(1, n))]` -/
def P12773717077232037423.Spec : Prop :=
  ∀ n, P12773717077232037423.a n = A212742 n

end A212742

/-! ## A212742.P8611242436680292160

`∑[(char[2*n]+n)*A000982(char[2*n]+n)]`
-/

namespace A212742.P8611242436680292160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ) * A000982 ((if ∃ j, f3 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P8611242436680292160

namespace A212742

/-- `∑[(char[2*n]+n)*A000982(char[2*n]+n)]` -/
def P8611242436680292160.Spec : Prop :=
  ∀ n, P8611242436680292160.a n = A212742 n

end A212742

/-! ## A212742.P7432557943369348403

`∑[A006003(A109613(n))]`
-/

namespace A212742.P7432557943369348403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P7432557943369348403

namespace A212742

/-- `∑[A006003(A109613(n))]` -/
def P7432557943369348403.Spec : Prop :=
  ∀ n, P7432557943369348403.a n = A212742 n

end A212742

/-! ## A212742.P17578415480036798269

`∑[A006003(A052928(n)+1)]`
-/

namespace A212742.P17578415480036798269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A052928 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P17578415480036798269

namespace A212742

/-- `∑[A006003(A052928(n)+1)]` -/
def P17578415480036798269.Spec : Prop :=
  ∀ n, P17578415480036798269.a n = A212742 n

end A212742

/-! ## A212742.P14038863010227439336

`A105636(n)+A030640(n)²`
-/

namespace A212742.P14038863010227439336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n + A030640 n ^ 2

end

end A212742.P14038863010227439336

namespace A212742

/-- `A105636(n)+A030640(n)²` -/
def P14038863010227439336.Spec : Prop :=
  ∀ n, P14038863010227439336.a n = A212742 n

end A212742

/-! ## A212742.P2713445124880577825

`∑[A212741(n)-A212743(n)]`
-/

namespace A212742.P2713445124880577825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212741 n - A212743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P2713445124880577825

namespace A212742

/-- `∑[A212741(n)-A212743(n)]` -/
def P2713445124880577825.Spec : Prop :=
  ∀ n, P2713445124880577825.a n = A212742 n

end A212742

/-! ## A212742.P12748577802539065046

`A212893(n)-A212892(n+1)`
-/

namespace A212742.P12748577802539065046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n - A212892 (n + 1)

end

end A212742.P12748577802539065046

namespace A212742

/-- `A212893(n)-A212892(n+1)` -/
def P12748577802539065046.Spec : Prop :=
  ∀ n, P12748577802539065046.a n = A212742 n

end A212742

/-! ## A212742.P7897001135416650966

`∪[A244730(n+1), A008514(n)]`
-/

namespace A212742.P7897001135416650966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212742.P7897001135416650966

namespace A212742

/-- `∪[A244730(n+1), A008514(n)]` -/
def P7897001135416650966.Spec : Prop :=
  ∀ n, (P7897001135416650966.a n : ℤ) = A212742 n

end A212742

/-! ## A212742.P344558615537595008

`2*A152032(n)²-A059841(n)`
-/

namespace A212742.P344558615537595008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152032 n ^ 2 - A059841 n

end

end A212742.P344558615537595008

namespace A212742

/-- `2*A152032(n)²-A059841(n)` -/
def P344558615537595008.Spec : Prop :=
  ∀ n, P344558615537595008.a n = A212742 n

end A212742

/-! ## A212742.P12852285159614725944

`∑[abs(Δ[A212740(n)])]`
-/

namespace A212742.P12852285159614725944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212742.P12852285159614725944

namespace A212742

/-- `∑[abs(Δ[A212740(n)])]` -/
def P12852285159614725944.Spec : Prop :=
  ∀ n, P12852285159614725944.a n = A212742 n

end A212742

/-! ## A212742.P15999550867644347046

`record[A212740(abs(1-n))]`
-/

namespace A212742.P15999550867644347046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212742.P15999550867644347046

namespace A212742

/-- `record[A212740(abs(1-n))]` -/
def P15999550867644347046.Spec : Prop :=
  ∀ n, P15999550867644347046.a n = A212742 n

end A212742

/-! ## A212742.P17532158976156768412

`A213037(A000982(n+1))`
-/

namespace A212742.P17532158976156768412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A000982 (n + 1)).toNat

end

end A212742.P17532158976156768412

namespace A212742

/-- `A213037(A000982(n+1))` -/
def P17532158976156768412.Spec : Prop :=
  ∀ n, P17532158976156768412.a n = A212742 n

end A212742

/-!
# A212743: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}>2*min{w,x,y,z}.

The programs for A212743, the canonical program `A212743.P8901795894585003481` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212743 has offset 0).

The definition of A212743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212743.P8901795894585003481

`(n+1)²²-A212742(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212743

/-- `(n+1)²²-A212742(n)` -/
def P8901795894585003481.Spec : Prop :=
  ∀ n, P8901795894585003481.a n = A212743 n

theorem P8901795894585003481.correct : P8901795894585003481.Spec := by
  intro n
  simp only [A212743]

end A212743

/-! ## A212743.P8493204933157442455

`A212569(n)+A212746(n)-A212742(n)`
-/

namespace A212743.P8493204933157442455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212569 n + (A212746 n - A212742 n)

end

end A212743.P8493204933157442455

namespace A212743

/-- `A212569(n)+A212746(n)-A212742(n)` -/
def P8493204933157442455.Spec : Prop :=
  ∀ n, P8493204933157442455.a n = A212743 n

end A212743

/-! ## A212743.P9202928244671543732

`A212740(n)+A212741(n)-A212742(n)`
-/

namespace A212743.P9202928244671543732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n + (A212741 n - A212742 n)

end

end A212743.P9202928244671543732

namespace A212743

/-- `A212740(n)+A212741(n)-A212742(n)` -/
def P9202928244671543732.Spec : Prop :=
  ∀ n, P9202928244671543732.a n = A212743 n

end A212743

/-! ## A212743.P11420174976371931895

`∑[A005917(n+1)-A005917(A008619(n))]`
-/

namespace A212743.P11420174976371931895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - A005917 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212743.P11420174976371931895

namespace A212743

/-- `∑[A005917(n+1)-A005917(A008619(n))]` -/
def P11420174976371931895.Spec : Prop :=
  ∀ n, P11420174976371931895.a n = A212743 n

end A212743

/-! ## A212743.P12079688839647017881

`(n+1)²²-A212740(n+1)`
-/

namespace A212743.P12079688839647017881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212740 (n + 1)

end

end A212743.P12079688839647017881

namespace A212743

/-- `(n+1)²²-A212740(n+1)` -/
def P12079688839647017881.Spec : Prop :=
  ∀ n, P12079688839647017881.a n = A212743 n

end A212743

/-! ## A212743.P6887725121460109094

`A212741(n)-Δ[A212740(n)]`
-/

namespace A212743.P6887725121460109094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212741 n - (f1 (n + 1) - f1 n)

end

end A212743.P6887725121460109094

namespace A212743

/-- `A212741(n)-Δ[A212740(n)]` -/
def P6887725121460109094.Spec : Prop :=
  ∀ n, P6887725121460109094.a n = A212743 n

end A212743

/-! ## A212743.P5065704667704100531

`∑[A212746(n+1)-A005917(n+2)]`
-/

namespace A212743.P5065704667704100531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212746 (n + 1) - A005917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212743.P5065704667704100531

namespace A212743

/-- `∑[A212746(n+1)-A005917(n+2)]` -/
def P5065704667704100531.Spec : Prop :=
  ∀ n, P5065704667704100531.a n = A212743 n

end A212743

/-! ## A212743.P9624159168868701111

`A212740(n)+A212741(n)-A212740(n+1)`
-/

namespace A212743.P9624159168868701111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n + (A212741 n - A212740 (n + 1))

end

end A212743.P9624159168868701111

namespace A212743

/-- `A212740(n)+A212741(n)-A212740(n+1)` -/
def P9624159168868701111.Spec : Prop :=
  ∀ n, P9624159168868701111.a n = A212743 n

end A212743

/-! ## A212743.P8260818157076226119

`A212088(n+1)+A212089(n+1)-A212742(n)`
-/

namespace A212743.P8260818157076226119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 (n + 1) + (A212089 (n + 1) - A212742 n)

end

end A212743.P8260818157076226119

namespace A212743

/-- `A212088(n+1)+A212089(n+1)-A212742(n)` -/
def P8260818157076226119.Spec : Prop :=
  ∀ n, P8260818157076226119.a n = A212743 n

end A212743

/-! ## A212743.P7053948292709078946

`A212134(n+1)+A212135(n+1)-A212742(n)`
-/

namespace A212743.P7053948292709078946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 (n + 1) + (A212135 (n + 1) - A212742 n)

end

end A212743.P7053948292709078946

namespace A212743

/-- `A212134(n+1)+A212135(n+1)-A212742(n)` -/
def P7053948292709078946.Spec : Prop :=
  ∀ n, P7053948292709078946.a n = A212743 n

end A212743

/-! ## A212743.P6788331532313585765

`A212249(n+1)+A212250(n+1)-A212742(n)`
-/

namespace A212743.P6788331532313585765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 (n + 1) + (A212250 (n + 1) - A212742 n)

end

end A212743.P6788331532313585765

namespace A212743

/-- `A212249(n+1)+A212250(n+1)-A212742(n)` -/
def P6788331532313585765.Spec : Prop :=
  ∀ n, P6788331532313585765.a n = A212743 n

end A212743

/-! ## A212743.P408755965329861866

`(A033429(n+1)-A032528(n+1))*A002620(n+1)`
-/

namespace A212743.P408755965329861866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033429 (n + 1) - A032528 (n + 1)) * A002620 (n + 1)

end

end A212743.P408755965329861866

namespace A212743

/-- `(A033429(n+1)-A032528(n+1))*A002620(n+1)` -/
def P408755965329861866.Spec : Prop :=
  ∀ n, P408755965329861866.a n = A212743 n

end A212743

/-! ## A212743.P17857956648266889881

`(A184636(n+1)-A002620(n+1))*A007590(n+1)`
-/

namespace A212743.P17857956648266889881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184636 (n + 1) - A002620 (n + 1)) * A007590 (n + 1)

end

end A212743.P17857956648266889881

namespace A212743

/-- `(A184636(n+1)-A002620(n+1))*A007590(n+1)` -/
def P17857956648266889881.Spec : Prop :=
  ∀ n, P17857956648266889881.a n = A212743 n

end A212743

/-! ## A212743.P6220846025751384058

`A212741(n+2)-A212746(n+2)`
-/

namespace A212743.P6220846025751384058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212741 (n + 2) - A212746 (n + 2)

end

end A212743.P6220846025751384058

namespace A212743

/-- `A212741(n+2)-A212746(n+2)` -/
def P6220846025751384058.Spec : Prop :=
  ∀ n, P6220846025751384058.a n = A212743 n

end A212743

/-! ## A212743.P6254831912342294430

`A211787(n+1)+A211797(n+1)-A212742(n)`
-/

namespace A212743.P6254831912342294430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 (n + 1) + (A211797 (n + 1) - A212742 n)

end

end A212743.P6254831912342294430

namespace A212743

/-- `A211787(n+1)+A211797(n+1)-A212742(n)` -/
def P6254831912342294430.Spec : Prop :=
  ∀ n, P6254831912342294430.a n = A212743 n

end A212743

/-! ## A212743.P8312386943501700833

`A212104(n+1)+A212105(n+1)-A212742(n)`
-/

namespace A212743.P8312386943501700833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 (n + 1) + (A212105 (n + 1) - A212742 n)

end

end A212743.P8312386943501700833

namespace A212743

/-- `A212104(n+1)+A212105(n+1)-A212742(n)` -/
def P8312386943501700833.Spec : Prop :=
  ∀ n, P8312386943501700833.a n = A212743 n

end A212743

/-! ## A212743.P10271644120499957540

`A212106(n+1)+A212107(n+1)-A212742(n)`
-/

namespace A212743.P10271644120499957540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 (n + 1) + (A212107 (n + 1) - A212742 n)

end

end A212743.P10271644120499957540

namespace A212743

/-- `A212106(n+1)+A212107(n+1)-A212742(n)` -/
def P10271644120499957540.Spec : Prop :=
  ∀ n, P10271644120499957540.a n = A212743 n

end A212743

/-!
# A212744: Number of (w,x,y,z) with all terms in {0,...,n} and w=max{w,x,y,z}-min{w,x,y,z}; i.e., the range of (w,x,y,z) is its first term.

The programs for A212744, the canonical program `A212744.P9754335344093697482` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212744 has offset 0).

The definition of A212744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212744.P9754335344093697482

`∑[A005897(n)]-ceil(n/2)^3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212744

/-- `∑[A005897(n)]-ceil(n/2)^3` -/
def P9754335344093697482.Spec : Prop :=
  ∀ n, P9754335344093697482.a n = A212744 n

theorem P9754335344093697482.correct : P9754335344093697482.Spec := by
  intro n
  simp only [A212744]

end A212744

/-! ## A212744.P4916236284413030670

`A309335(n+1)+A309335(n)`
-/

namespace A212744.P4916236284413030670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309335 (n + 1) + A309335 n

end

end A212744.P4916236284413030670

namespace A212744

/-- `A309335(n+1)+A309335(n)` -/
def P4916236284413030670.Spec : Prop :=
  ∀ n, P4916236284413030670.a n = A212744 n

end A212744

/-! ## A212744.P11784731177966125404

`A005898(n)-A000578(ceil(n/2))`
-/

namespace A212744.P11784731177966125404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A000578 ⌈(n : ℚ) / 2⌉.toNat

end

end A212744.P11784731177966125404

namespace A212744

/-- `A005898(n)-A000578(ceil(n/2))` -/
def P11784731177966125404.Spec : Prop :=
  ∀ n, P11784731177966125404.a n = A212744 n

end A212744

/-! ## A212744.P13831157589883002276

`Δ[C(n²+1, 2)-∑[floor(n/2)^3]]`
-/

namespace A212744.P13831157589883002276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 1) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P13831157589883002276

namespace A212744

/-- `Δ[C(n²+1, 2)-∑[floor(n/2)^3]]` -/
def P13831157589883002276.Spec : Prop :=
  ∀ n, P13831157589883002276.a n = A212744 n

end A212744

/-! ## A212744.P7186803368369427557

`A005898(n)-Δ[A317714(n+1)]`
-/

namespace A212744.P7186803368369427557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - (f1 (n + 1) - f1 n)

end

end A212744.P7186803368369427557

namespace A212744

/-- `A005898(n)-Δ[A317714(n+1)]` -/
def P7186803368369427557.Spec : Prop :=
  ∀ n, P7186803368369427557.a n = A212744 n

end A212744

/-! ## A212744.P5150736509780155510

`Δ[A037270(n)-A317714(n+1)]`
-/

namespace A212744.P5150736509780155510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P5150736509780155510

namespace A212744

/-- `Δ[A037270(n)-A317714(n+1)]` -/
def P5150736509780155510.Spec : Prop :=
  ∀ n, P5150736509780155510.a n = A212744 n

end A212744

/-! ## A212744.P15907452811677682751

`Δ[n*A006003(n)-A317714(n+1)]`
-/

namespace A212744.P15907452811677682751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006003 n - A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P15907452811677682751

namespace A212744

/-- `Δ[n*A006003(n)-A317714(n+1)]` -/
def P15907452811677682751.Spec : Prop :=
  ∀ n, P15907452811677682751.a n = A212744 n

end A212744

/-! ## A212744.P8360457534550640600

`Δ[n²*A005893(n)/4-A317714(n+1)]`
-/

namespace A212744.P8360457534550640600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A005893 n : ℚ) / 4 - (A317714 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P8360457534550640600

namespace A212744

/-- `Δ[n²*A005893(n)/4-A317714(n+1)]` -/
def P8360457534550640600.Spec : Prop :=
  ∀ n, P8360457534550640600.a n = (A212744 n : ℚ)

end A212744

/-! ## A212744.P18070341156485353076

`Δ[n*(A006002(n)-n²)-A317714(n+1)]`
-/

namespace A212744.P18070341156485353076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006002 n - (n ^ 2 : ℤ)) - A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P18070341156485353076

namespace A212744

/-- `Δ[n*(A006002(n)-n²)-A317714(n+1)]` -/
def P18070341156485353076.Spec : Prop :=
  ∀ n, P18070341156485353076.a n = A212744 n

end A212744

/-! ## A212744.P14847666047515740869

`Δ[(n-1)*A064808(n)+1-A317714(n+1)]`
-/

namespace A212744.P14847666047515740869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A064808 n + 1 - A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P14847666047515740869

namespace A212744

/-- `Δ[(n-1)*A064808(n)+1-A317714(n+1)]` -/
def P14847666047515740869.Spec : Prop :=
  ∀ n, P14847666047515740869.a n = A212744 n

end A212744

/-! ## A212744.P15337501558230522155

`Δ[n*(A006002(n)-n²)-∑[A004526(n)^3]]`
-/

namespace A212744.P15337501558230522155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006002 n - (n ^ 2 : ℤ)) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P15337501558230522155

namespace A212744

/-- `Δ[n*(A006002(n)-n²)-∑[A004526(n)^3]]` -/
def P15337501558230522155.Spec : Prop :=
  ∀ n, P15337501558230522155.a n = A212744 n

end A212744

/-! ## A212744.P161685157715479063

`Δ[(A028310(n)²+1)/2*n²-A317714(n+1)]`
-/

namespace A212744.P161685157715479063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n ^ 2 + 1 : ℚ) / 2 * (n ^ 2 : ℚ) - (A317714 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P161685157715479063

namespace A212744

/-- `Δ[(A028310(n)²+1)/2*n²-A317714(n+1)]` -/
def P161685157715479063.Spec : Prop :=
  ∀ n, P161685157715479063.a n = (A212744 n : ℚ)

end A212744

/-! ## A212744.P2310116856053630697

`Δ[A317714(2*n+1)-A317714(n+1)]`
-/

namespace A212744.P2310116856053630697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317714 (2 * n + 1) - A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P2310116856053630697

namespace A212744

/-- `Δ[A317714(2*n+1)-A317714(n+1)]` -/
def P2310116856053630697.Spec : Prop :=
  ∀ n, P2310116856053630697.a n = A212744 n

end A212744

/-! ## A212744.P12599500671814435263

`Δ[n*(A006002(n)-n²)-∑[A002265(2*n)^3]]`
-/

namespace A212744.P12599500671814435263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006002 n - (n ^ 2 : ℤ)) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212744.P12599500671814435263

namespace A212744

/-- `Δ[n*(A006002(n)-n²)-∑[A002265(2*n)^3]]` -/
def P12599500671814435263.Spec : Prop :=
  ∀ n, P12599500671814435263.a n = A212744 n

end A212744

/-!
# A212745: Number of (w,x,y,z) with all terms in {0,...,n} and w=max{w,x,y,z}-2*min{w,x,y,z}.

The programs for A212745, the canonical program `A212745.P2569398194912916099` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212745 has offset 0).

The definition of A212745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212745.P2569398194912916099

`A005898(n)-A000578(∑[n²%3])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212745

/-- `A005898(n)-A000578(∑[n²%3])` -/
def P2569398194912916099.Spec : Prop :=
  ∀ n, P2569398194912916099.a n = A212745 n

theorem P2569398194912916099.correct : P2569398194912916099.Spec := by
  intro n
  simp only [A212745]

end A212745

/-! ## A212745.P661846945318305976

`A005898(n)-A000578(A322042(n+1))`
-/

namespace A212745.P661846945318305976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A000578 (A322042 (n + 1)).toNat

end

end A212745.P661846945318305976

namespace A212745

/-- `A005898(n)-A000578(A322042(n+1))` -/
def P661846945318305976.Spec : Prop :=
  ∀ n, P661846945318305976.a n = A212745 n

end A212745

/-! ## A212745.P12318765955365648071

`A005898(n)-A000578(Δ[A000212(n)])`
-/

namespace A212745.P12318765955365648071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A000578 (f1 (n + 1) - f1 n).toNat

end

end A212745.P12318765955365648071

namespace A212745

/-- `A005898(n)-A000578(Δ[A000212(n)])` -/
def P12318765955365648071.Spec : Prop :=
  ∀ n, P12318765955365648071.a n = A212745 n

end A212745

/-! ## A212745.P2191128253304316575

`A005898(n)-A000578(A004523(n+1))`
-/

namespace A212745.P2191128253304316575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A000578 (A004523 (n + 1)).toNat

end

end A212745.P2191128253304316575

namespace A212745

/-- `A005898(n)-A000578(A004523(n+1))` -/
def P2191128253304316575.Spec : Prop :=
  ∀ n, P2191128253304316575.a n = A212745 n

end A212745

/-! ## A212745.P16711522122767097313

`A005898(n)-A109900(A063195(4*n+1))`
-/

namespace A212745.P16711522122767097313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A109900 (A063195 (4 * n + 1)).toNat

end

end A212745.P16711522122767097313

namespace A212745

/-- `A005898(n)-A109900(A063195(4*n+1))` -/
def P16711522122767097313.Spec : Prop :=
  ∀ n, P16711522122767097313.a n = A212745 n

end A212745

/-!
# A212746: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of them is the range of {w,x,y,z}.

The programs for A212746, there is no canonical definition to state claims against.
-/

/-! ## A212746.P13508704850357836888

`(n+1)²²-A212569(n)`
-/

namespace A212746.P13508704850357836888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212569 n

end

end A212746.P13508704850357836888

/-! ## A212746.P17395598622260516482

`abs(∑[A005917(n+1)]-A212569(n))`
-/

namespace A212746.P17395598622260516482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A212569 n|

end

end A212746.P17395598622260516482

/-! ## A212746.P1590821718029463746

`A005917(n+1)+A000583(n)-A212569(n)`
-/

namespace A212746.P1590821718029463746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) + (A000583 n - A212569 n)

end

end A212746.P1590821718029463746

/-! ## A212746.P16722606127714227900

`abs(A000583(n+1)-A212569(n))`
-/

namespace A212746.P16722606127714227900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 (n + 1) - A212569 n|

end

end A212746.P16722606127714227900

/-! ## A212746.P13108872746954617420

`A063524(2*n)+A000583(n+1)-A212569(n)`
-/

namespace A212746.P13108872746954617420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (2 * n) + (A000583 (n + 1) - A212569 n)

end

end A212746.P13108872746954617420

/-!
# A212747: Number of (w,x,y,z) with all terms in {0,...,n} and 2w=floor((x+y+z)/2).

The programs for A212747, the canonical program `A212747.P2108889868290193932` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212747 has offset 0).

The definition of A212747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212747.P2108889868290193932

`∑[or(1, ∑[3*n])]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212747

/-- `∑[or(1, ∑[3*n])]` -/
def P2108889868290193932.Spec : Prop :=
  ∀ n, (P2108889868290193932.a n : ℤ) = A212747 n

theorem P2108889868290193932.correct : P2108889868290193932.Spec := by
  intro n
  simp only [A212747]

end A212747

/-! ## A212747.P11160397683537406069

`∑[and(∑[3*n], -2)+1]`
-/

namespace A212747.P11160397683537406069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (-2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212747.P11160397683537406069

namespace A212747

/-- `∑[and(∑[3*n], -2)+1]` -/
def P11160397683537406069.Spec : Prop :=
  ∀ n, P11160397683537406069.a n = A212747 n

end A212747

/-! ## A212747.P8447361353811294270

`Δ[ceil(C(n+1, 2)²/2)]`
-/

namespace A212747.P8447361353811294270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) 2 ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212747.P8447361353811294270

namespace A212747

/-- `Δ[ceil(C(n+1, 2)²/2)]` -/
def P8447361353811294270.Spec : Prop :=
  ∀ n, P8447361353811294270.a n = A212747 n

end A212747

/-! ## A212747.P8972964442333211676

`∑[∑[∑[and(2, n)]+n+n]+1]`
-/

namespace A212747.P8972964442333211676
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212747.P8972964442333211676

namespace A212747

/-- `∑[∑[∑[and(2, n)]+n+n]+1]` -/
def P8972964442333211676.Spec : Prop :=
  ∀ n, (P8972964442333211676.a n : ℤ) = A212747 n

end A212747

/-! ## A212747.P11913835985285479147

`n*(n²+3)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A212747.P11913835985285479147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n * (n ^ 2 + 3) : ℤ) - a (n - 2)

end

end A212747.P11913835985285479147

namespace A212747

/-- `n*(n²+3)-a(n-2)` -/
def P11913835985285479147.Spec : Prop :=
  ∀ n, P11913835985285479147.a n = A212747 n

end A212747

/-! ## A212747.P16796770388633109069

`(∑[(-1)^∑[n]]+(n+1)^3)/2`
-/

namespace A212747.P16796770388633109069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ) : ℤ) : ℚ) / 2

end

end A212747.P16796770388633109069

namespace A212747

/-- `(∑[(-1)^∑[n]]+(n+1)^3)/2` -/
def P16796770388633109069.Spec : Prop :=
  ∀ n, P16796770388633109069.a n = (A212747 n : ℚ)

end A212747

/-! ## A212747.P661557069514895540

`∑[A268810(n)+1]`
-/

namespace A212747.P661557069514895540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268810 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212747.P661557069514895540

namespace A212747

/-- `∑[A268810(n)+1]` -/
def P661557069514895540.Spec : Prop :=
  ∀ n, P661557069514895540.a n = A212747 n

end A212747

/-! ## A212747.P7157088840157182748

`∑[∑[A276283(n)]-n]`
-/

namespace A212747.P7157088840157182748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212747.P7157088840157182748

namespace A212747

/-- `∑[∑[A276283(n)]-n]` -/
def P7157088840157182748.Spec : Prop :=
  ∀ n, P7157088840157182748.a n = A212747 n

end A212747

/-! ## A212747.P607920907561876688

`∑[A269112(n+1)-2]`
-/

namespace A212747.P607920907561876688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269112 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212747.P607920907561876688

namespace A212747

/-- `∑[A269112(n+1)-2]` -/
def P607920907561876688.Spec : Prop :=
  ∀ n, P607920907561876688.a n = A212747 n

end A212747

/-! ## A212747.P17995626022456360085

`∑[2*A281026(n)+1]`
-/

namespace A212747.P17995626022456360085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281026 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212747.P17995626022456360085

namespace A212747

/-- `∑[2*A281026(n)+1]` -/
def P17995626022456360085.Spec : Prop :=
  ∀ n, P17995626022456360085.a n = A212747 n

end A212747

/-! ## A212747.P14177703747200242299

`Δ[ceil(A000217(n)²/2)]`
-/

namespace A212747.P14177703747200242299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212747.P14177703747200242299

namespace A212747

/-- `Δ[ceil(A000217(n)²/2)]` -/
def P14177703747200242299.Spec : Prop :=
  ∀ n, P14177703747200242299.a n = A212747 n

end A212747

/-! ## A212747.P11824253048182196044

`2*A319007(n+1)+n+1`
-/

namespace A212747.P11824253048182196044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319007 (n + 1) + (n + 1 : ℤ)

end

end A212747.P11824253048182196044

namespace A212747

/-- `2*A319007(n+1)+n+1` -/
def P11824253048182196044.Spec : Prop :=
  ∀ n, P11824253048182196044.a n = A212747 n

end A212747

/-! ## A212747.P5596883528004523045

`2*A319006(n+1)-(n+1)`
-/

namespace A212747.P5596883528004523045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319006 (n + 1) - (n + 1 : ℤ)

end

end A212747.P5596883528004523045

namespace A212747

/-- `2*A319006(n+1)-(n+1)` -/
def P5596883528004523045.Spec : Prop :=
  ∀ n, P5596883528004523045.a n = A212747 n

end A212747

/-! ## A212747.P974711067762801384

`A158842(n+1)+A004524(n)`
-/

namespace A212747.P974711067762801384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 (n + 1) + A004524 n

end

end A212747.P974711067762801384

namespace A212747

/-- `A158842(n+1)+A004524(n)` -/
def P974711067762801384.Spec : Prop :=
  ∀ n, P974711067762801384.a n = A212747 n

end A212747

/-! ## A212747.P3918417633620078039

`A212988(n)+A182260(n+1)`
-/

namespace A212747.P3918417633620078039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212988 n + A182260 (n + 1)

end

end A212747.P3918417633620078039

namespace A212747

/-- `A212988(n)+A182260(n+1)` -/
def P3918417633620078039.Spec : Prop :=
  ∀ n, P3918417633620078039.a n = A212747 n

end A212747

/-! ## A212747.P16960101718337583626

`A319007(n+1)+A319006(n+1)`
-/

namespace A212747.P16960101718337583626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319007 (n + 1) + A319006 (n + 1)

end

end A212747.P16960101718337583626

namespace A212747

/-- `A319007(n+1)+A319006(n+1)` -/
def P16960101718337583626.Spec : Prop :=
  ∀ n, P16960101718337583626.a n = A212747 n

end A212747

/-! ## A212747.P17582328286276576140

`A132127(n+1)-A047262(n+1)`
-/

namespace A212747.P17582328286276576140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132127 (n + 1) - A047262 (n + 1)

end

end A212747.P17582328286276576140

namespace A212747

/-- `A132127(n+1)-A047262(n+1)` -/
def P17582328286276576140.Spec : Prop :=
  ∀ n, P17582328286276576140.a n = A212747 n

end A212747

/-! ## A212747.P13663679762689009729

`A001478(n+1)+2*A319006(n+1)`
-/

namespace A212747.P13663679762689009729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A319006 (n + 1)

end

end A212747.P13663679762689009729

namespace A212747

/-- `A001478(n+1)+2*A319006(n+1)` -/
def P13663679762689009729.Spec : Prop :=
  ∀ n, P13663679762689009729.a n = A212747 n

end A212747

/-! ## A212747.P18272902833311537971

`A004525(n+1)+n*A000217(n+1)`
-/

namespace A212747.P18272902833311537971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) + (n : ℤ) * A000217 (n + 1)

end

end A212747.P18272902833311537971

namespace A212747

/-- `A004525(n+1)+n*A000217(n+1)` -/
def P18272902833311537971.Spec : Prop :=
  ∀ n, P18272902833311537971.a n = A212747 n

end A212747

/-! ## A212747.P2563653147682403872

`A194274(n+1)+A215097(n)-A000217(n)`
-/

namespace A212747.P2563653147682403872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 1) + (A215097 n - A000217 n)

end

end A212747.P2563653147682403872

namespace A212747

/-- `A194274(n+1)+A215097(n)-A000217(n)` -/
def P2563653147682403872.Spec : Prop :=
  ∀ n, P2563653147682403872.a n = A212747 n

end A212747

/-!
# A212748: Number of (w,x,y,z) with all terms in {0,...,n} and w=2*floor((x+y+z)/2).

The programs for A212748, the canonical program `A212748.P3451379496109534909` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212748 has offset 0).

The definition of A212748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212748.P3451379496109534909

`(2*n^3+3*((-1)^n+5)*n²+(15*(-1)^n+37)*n+12)/12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212748

/-- `(2*n^3+3*((-1)^n+5)*n²+(15*(-1)^n+37)*n+12)/12` -/
def P3451379496109534909.Spec : Prop :=
  ∀ n, P3451379496109534909.a n = (A212748 n : ℚ)

end A212748

/-! ## A212748.P3762919579063927126

`a(n-2)+(gcd(2, n)+n)²` with `a(0)=1, a(1)=4`
-/

namespace A212748.P3762919579063927126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (Nat.gcd 2 n + n) ^ 2

end

end A212748.P3762919579063927126

namespace A212748

/-- `a(n-2)+(gcd(2, n)+n)²` -/
def P3762919579063927126.Spec : Prop :=
  ∀ n, (P3762919579063927126.a n : ℤ) = A212748 n

end A212748

/-! ## A212748.P10204059003276485622

`a(n-2)+((n+1)%2+n+1)²` with `a(0)=1, a(1)=4`
-/

namespace A212748.P10204059003276485622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + ((n + 1) % 2 + (n + 1)) ^ 2

end

end A212748.P10204059003276485622

namespace A212748

/-- `a(n-2)+((n+1)%2+n+1)²` -/
def P10204059003276485622.Spec : Prop :=
  ∀ n, (P10204059003276485622.a n : ℤ) = A212748 n

end A212748

/-! ## A212748.P4469867307188629428

`a(n-2)+2*A116471(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A212748.P4469867307188629428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 2 * A116471 (n + 1)

end

end A212748.P4469867307188629428

namespace A212748

/-- `a(n-2)+2*A116471(n+1)` -/
def P4469867307188629428.Spec : Prop :=
  ∀ n, P4469867307188629428.a n = A212748 n

end A212748

/-! ## A212748.P14507441909168745489

`A266074(n)+A140148(n+1)`
-/

namespace A212748.P14507441909168745489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266074 n + A140148 (n + 1)

end

end A212748.P14507441909168745489

namespace A212748

/-- `A266074(n)+A140148(n+1)` -/
def P14507441909168745489.Spec : Prop :=
  ∀ n, P14507441909168745489.a n = A212748 n

end A212748

/-! ## A212748.P6425248303201235502

`A140148(n+1)+2*A135276(n)`
-/

namespace A212748.P6425248303201235502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140148 (n + 1) + 2 * A135276 n

end

end A212748.P6425248303201235502

namespace A212748

/-- `A140148(n+1)+2*A135276(n)` -/
def P6425248303201235502.Spec : Prop :=
  ∀ n, P6425248303201235502.a n = A212748 n

end A212748

/-! ## A212748.P5180511679758591333

`∑[A016742(∑[A028578(a(n-1))])-a(n-1)]` with `a(0)=1`
-/

namespace A212748.P5180511679758591333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A028578 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016742 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212748.P5180511679758591333

namespace A212748

/-- `∑[A016742(∑[A028578(a(n-1))])-a(n-1)]` -/
def P5180511679758591333.Spec : Prop :=
  ∀ n, P5180511679758591333.a n = A212748 n

end A212748

/-! ## A212748.P10093467805118675540

`∪[A168380(2*(n+1)), A219527(2*(n+1))-2]`
-/

namespace A212748.P10093467805118675540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219527 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212748.P10093467805118675540

namespace A212748

/-- `∪[A168380(2*(n+1)), A219527(2*(n+1))-2]` -/
def P10093467805118675540.Spec : Prop :=
  ∀ n, (P10093467805118675540.a n : ℤ) = A212748 n

end A212748

/-! ## A212748.P2587578016664939469

`∑[A266073(n)+A093178(A004442(n))²]`
-/

namespace A212748.P2587578016664939469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n + A093178 (A004442 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212748.P2587578016664939469

namespace A212748

/-- `∑[A266073(n)+A093178(A004442(n))²]` -/
def P2587578016664939469.Spec : Prop :=
  ∀ n, P2587578016664939469.a n = A212748 n

end A212748

/-! ## A212748.P15544842669795980527

`∑[Δ[A007590(n+1)]²-a(n-1)]` with `a(0)=1`
-/

namespace A212748.P15544842669795980527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (f2 (n + 1) - f2 n) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212748.P15544842669795980527

namespace A212748

/-- `∑[Δ[A007590(n+1)]²-a(n-1)]` -/
def P15544842669795980527.Spec : Prop :=
  ∀ n, P15544842669795980527.a n = A212748 n

end A212748

/-! ## A212748.P11387905078129580883

`A121924(A267353(n+1))`
-/

namespace A212748.P11387905078129580883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121924 (A267353 (n + 1)).toNat

end

end A212748.P11387905078129580883

namespace A212748

/-- `A121924(A267353(n+1))` -/
def P11387905078129580883.Spec : Prop :=
  ∀ n, P11387905078129580883.a n = A212748 n

end A212748

/-!
# A212749: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: w=R, x

The programs for A212749, the canonical program `A212749.P10900213257716783544` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212749 has offset 0).

The definition of A212749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212749.P6623016879324914290

`A186707(n)-A317714(n+1)`
-/

namespace A212749.P6623016879324914290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186707 n - A317714 (n + 1)

end

end A212749.P6623016879324914290

namespace A212749

/-- `A186707(n)-A317714(n+1)` -/
def P6623016879324914290.Spec : Prop :=
  ∀ n, P6623016879324914290.a n = A212749 n

end A212749

/-! ## A212749.P7479101632376597917

`∑[A007202(n)]-A317714(n+1)`
-/

namespace A212749.P7479101632376597917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317714 (n + 1)

end

end A212749.P7479101632376597917

namespace A212749

/-- `∑[A007202(n)]-A317714(n+1)` -/
def P7479101632376597917.Spec : Prop :=
  ∀ n, P7479101632376597917.a n = A212749 n

end A212749

/-! ## A212749.P10900213257716783544

`∑[A007202(n)-A000578(A004526(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212749

/-- `∑[A007202(n)-A000578(A004526(n))]` -/
def P10900213257716783544.Spec : Prop :=
  ∀ n, P10900213257716783544.a n = A212749 n

theorem P10900213257716783544.correct : P10900213257716783544.Spec := by
  intro n
  simp only [A212749]

end A212749

/-! ## A212749.P12409064938455413029

`A186707(n)-∑[A000578(A004526(n))]`
-/

namespace A212749.P12409064938455413029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186707 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212749.P12409064938455413029

namespace A212749

/-- `A186707(n)-∑[A000578(A004526(n))]` -/
def P12409064938455413029.Spec : Prop :=
  ∀ n, P12409064938455413029.a n = A212749 n

end A212749

/-! ## A212749.P5103423020091160057

`A186707(n)-∑[A124093(n)]*A004526(n)`
-/

namespace A212749.P5103423020091160057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186707 n - (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A212749.P5103423020091160057

namespace A212749

/-- `A186707(n)-∑[A124093(n)]*A004526(n)` -/
def P5103423020091160057.Spec : Prop :=
  ∀ n, P5103423020091160057.a n = A212749 n

end A212749

/-! ## A212749.P17194272995685210684

`A186707(n)-A001971(A097063(n))`
-/

namespace A212749.P17194272995685210684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186707 n - A001971 (A097063 n).toNat

end

end A212749.P17194272995685210684

namespace A212749

/-- `A186707(n)-A001971(A097063(n))` -/
def P17194272995685210684.Spec : Prop :=
  ∀ n, P17194272995685210684.a n = A212749 n

end A212749

/-!
# A212751: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: w=R, x=R, y=R, z

The programs for A212751, there is no canonical definition to state claims against.
-/

/-! ## A212751.P8576407676584864724

`A003022(A003022(n+3))-A324026(n+4)`
-/

namespace A212751.P8576407676584864724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (A003022 (n + 3)).toNat - A324026 (n + 4)

end

end A212751.P8576407676584864724

/-!
# A212752: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: wR, where R=max{w,x,y,z}-min{w,x,y,z}.

The programs for A212752, the canonical program `A212752.P3210203071305994442` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212752 has offset 0).

The definition of A212752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212752.P18410664966472512640

`(n+1)^4-∑[∑[char[2*n]]^3]`
-/

namespace A212752.P18410664966472512640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212752.P18410664966472512640

namespace A212752

/-- `(n+1)^4-∑[∑[char[2*n]]^3]` -/
def P18410664966472512640.Spec : Prop :=
  ∀ n, P18410664966472512640.a n = A212752 n

end A212752

/-! ## A212752.P3210203071305994442

`∑[A005917(n+1)-A000578(A008619(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212752

/-- `∑[A005917(n+1)-A000578(A008619(n))]` -/
def P3210203071305994442.Spec : Prop :=
  ∀ n, P3210203071305994442.a n = A212752 n

theorem P3210203071305994442.correct : P3210203071305994442.Spec := by
  intro n
  simp only [A212752]

end A212752

/-!
# A212753: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: wR, z>R, where R = max{w,x,y,z} - min{w,x,y,z}.

The programs for A212753, the canonical program `A212753.P1909697482903901618` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212753 has offset 0).

The definition of A212753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212753.P1909697482903901618

`(n+1)^4-∑[∑[∑[or(1, n)]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212753

/-- `(n+1)^4-∑[∑[∑[or(1, n)]]]` -/
def P1909697482903901618.Spec : Prop :=
  ∀ n, P1909697482903901618.a n = A212753 n

theorem P1909697482903901618.correct : P1909697482903901618.Spec := by
  intro n
  simp only [A212753]

end A212753

/-! ## A212753.P12641513206028495659

`∑[∑[A022281(n)]]-A045947(n)`
-/

namespace A212753.P12641513206028495659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A045947 n

end

end A212753.P12641513206028495659

namespace A212753

/-- `∑[∑[A022281(n)]]-A045947(n)` -/
def P12641513206028495659.Spec : Prop :=
  ∀ n, P12641513206028495659.a n = A212753 n

end A212753

/-! ## A212753.P12738246422718270428

`∑[A092966(n+1)+A001859(n)]`
-/

namespace A212753.P12738246422718270428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092966 (n + 1) + A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212753.P12738246422718270428

namespace A212753

/-- `∑[A092966(n+1)+A001859(n)]` -/
def P12738246422718270428.Spec : Prop :=
  ∀ n, P12738246422718270428.a n = A212753 n

end A212753

/-! ## A212753.P2654635873940985613

`∑[A092966(n+1)+Δ[A045947(n)]]`
-/

namespace A212753.P2654635873940985613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092966 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212753.P2654635873940985613

namespace A212753

/-- `∑[A092966(n+1)+Δ[A045947(n)]]` -/
def P2654635873940985613.Spec : Prop :=
  ∀ n, P2654635873940985613.a n = A212753 n

end A212753

/-! ## A212753.P2174093225701964011

`(n+1)²²-∑[A005232(2*n)]`
-/

namespace A212753.P2174093225701964011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212753.P2174093225701964011

namespace A212753

/-- `(n+1)²²-∑[A005232(2*n)]` -/
def P2174093225701964011.Spec : Prop :=
  ∀ n, P2174093225701964011.a n = A212753 n

end A212753

/-! ## A212753.P7499710820624832610

`∑[∑[A005918(2*n)-A000982(n+1)]]`
-/

namespace A212753.P7499710820624832610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (2 * n) - A000982 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212753.P7499710820624832610

namespace A212753

/-- `∑[∑[A005918(2*n)-A000982(n+1)]]` -/
def P7499710820624832610.Spec : Prop :=
  ∀ n, P7499710820624832610.a n = A212753 n

end A212753

/-!
# A212754: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: wR, y>R, z>R, where R = max{w,x,y,z} - min{w,x,y,z}.

The programs for A212754, the canonical program `A212754.P10576095478449832083` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212754 has offset 0).

The definition of A212754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212754.P10576095478449832083

`∑[Δ[n*C(n, 2)]+floor(n*(14*n²+9*n+2)/4)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212754

/-- `∑[Δ[n*C(n, 2)]+floor(n*(14*n²+9*n+2)/4)]` -/
def P10576095478449832083.Spec : Prop :=
  ∀ n, P10576095478449832083.a n = A212754 n

theorem P10576095478449832083.correct : P10576095478449832083.Spec := by
  intro n
  simp only [A212754]

end A212754

/-! ## A212754.P5317012443431353246

`∑[A007202(n)-∑[3*n+1]]`
-/

namespace A212754.P5317012443431353246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212754.P5317012443431353246

namespace A212754

/-- `∑[A007202(n)-∑[3*n+1]]` -/
def P5317012443431353246.Spec : Prop :=
  ∀ n, P5317012443431353246.a n = A212754 n

end A212754

/-! ## A212754.P494426082467812567

`∑[∑[A007899(n)-(3*n+1)]]`
-/

namespace A212754.P494426082467812567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - (3 * n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212754.P494426082467812567

namespace A212754

/-- `∑[∑[A007899(n)-(3*n+1)]]` -/
def P494426082467812567.Spec : Prop :=
  ∀ n, P494426082467812567.a n = A212754 n

end A212754

/-! ## A212754.P1906463858806655746

`∑[A045949(n)+A005449(n)]`
-/

namespace A212754.P1906463858806655746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045949 n + A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212754.P1906463858806655746

namespace A212754

/-- `∑[A045949(n)+A005449(n)]` -/
def P1906463858806655746.Spec : Prop :=
  ∀ n, P1906463858806655746.a n = A212754 n

end A212754

/-! ## A212754.P2057756121678489329

`A006002(n)+∑[A045949(n)]`
-/

namespace A212754.P2057756121678489329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212754.P2057756121678489329

namespace A212754

/-- `A006002(n)+∑[A045949(n)]` -/
def P2057756121678489329.Spec : Prop :=
  ∀ n, P2057756121678489329.a n = A212754 n

end A212754

/-! ## A212754.P18316870674054291558

`(n+1)²²-A105636(n+1)`
-/

namespace A212754.P18316870674054291558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A105636 (n + 1)

end

end A212754.P18316870674054291558

namespace A212754

/-- `(n+1)²²-A105636(n+1)` -/
def P18316870674054291558.Spec : Prop :=
  ∀ n, P18316870674054291558.a n = A212754 n

end A212754

/-! ## A212754.P15031962065232680388

`∑[A007202(n)]-Δ[A001296(n)]`
-/

namespace A212754.P15031962065232680388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A212754.P15031962065232680388

namespace A212754

/-- `∑[A007202(n)]-Δ[A001296(n)]` -/
def P15031962065232680388.Spec : Prop :=
  ∀ n, P15031962065232680388.a n = A212754 n

end A212754

/-! ## A212754.P14047743123496782081

`∑[A007202(n)]-A002411(n+1)`
-/

namespace A212754.P14047743123496782081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002411 (n + 1)

end

end A212754.P14047743123496782081

namespace A212754

/-- `∑[A007202(n)]-A002411(n+1)` -/
def P14047743123496782081.Spec : Prop :=
  ∀ n, P14047743123496782081.a n = A212754 n

end A212754

/-! ## A212754.P12451854878744566667

`A062392(n+1)+A062392(n)-A105636(n+1)`
-/

namespace A212754.P12451854878744566667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 (n + 1) + (A062392 n - A105636 (n + 1))

end

end A212754.P12451854878744566667

namespace A212754

/-- `A062392(n+1)+A062392(n)-A105636(n+1)` -/
def P12451854878744566667.Spec : Prop :=
  ∀ n, P12451854878744566667.a n = A212754 n

end A212754

/-! ## A212754.P1513169892184557304

`∑[A269064(2*n+1)-(n+1)]`
-/

namespace A212754.P1513169892184557304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269064 (2 * n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212754.P1513169892184557304

namespace A212754

/-- `∑[A269064(2*n+1)-(n+1)]` -/
def P1513169892184557304.Spec : Prop :=
  ∀ n, P1513169892184557304.a n = A212754 n

end A212754

/-! ## A212754.P801979686227199994

`A085537(n+1)-A130519(n²)`
-/

namespace A212754.P801979686227199994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 (n + 1) - A130519 (n ^ 2)

end

end A212754.P801979686227199994

namespace A212754

/-- `A085537(n+1)-A130519(n²)` -/
def P801979686227199994.Spec : Prop :=
  ∀ n, P801979686227199994.a n = A212754 n

end A212754

/-!
# A212755: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|=max{w,x,y,z}-min{w,x,y,z}.

The programs for A212755, the canonical program `A212755.P13545985239205658637` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212755 has offset 0).

The definition of A212755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212755.P13545985239205658637

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=10, a(2)=37, a(3)=96, a(4)=205`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212755

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13545985239205658637.Spec : Prop :=
  ∀ n, P13545985239205658637.a n = A212755 n

theorem P13545985239205658637.correct : P13545985239205658637.Spec := by
  intro n
  simp only [A212755]

end A212755

/-! ## A212755.P614656218467995441

`∑[∑[2*(n+1)²]-1]`
-/

namespace A212755.P614656218467995441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212755.P614656218467995441

namespace A212755

/-- `∑[∑[2*(n+1)²]-1]` -/
def P614656218467995441.Spec : Prop :=
  ∀ n, P614656218467995441.a n = A212755 n

end A212755

/-! ## A212755.P10642802239115542829

`record[C(n², 2)/3+1-n]`
-/

namespace A212755.P10642802239115542829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3 + (1 - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212755.P10642802239115542829

namespace A212755

/-- `record[C(n², 2)/3+1-n]` -/
def P10642802239115542829.Spec : Prop :=
  ∀ n, P10642802239115542829.a n = (A212755 n : ℚ)

end A212755

/-! ## A212755.P17955596680793117802

`C((n+2)², 2)/3-(n+1)`
-/

namespace A212755.P17955596680793117802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) 2 : ℚ) / 3 - (n + 1 : ℚ)

end

end A212755.P17955596680793117802

namespace A212755

/-- `C((n+2)², 2)/3-(n+1)` -/
def P17955596680793117802.Spec : Prop :=
  ∀ n, P17955596680793117802.a n = (A212755 n : ℚ)

end A212755

/-! ## A212755.P13385138242233402281

`record[n*(C(n+1, 3)-1)+1]`
-/

namespace A212755.P13385138242233402281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (n + 1) 3 : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212755.P13385138242233402281

namespace A212755

/-- `record[n*(C(n+1, 3)-1)+1]` -/
def P13385138242233402281.Spec : Prop :=
  ∀ n, P13385138242233402281.a n = A212755 n

end A212755

/-! ## A212755.P10436514088808195362

`(n+2)*(C(n+3, 3)-1)+1`
-/

namespace A212755.P10436514088808195362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((Nat.choose (n + 3) 3 : ℤ) - 1) + 1

end

end A212755.P10436514088808195362

namespace A212755

/-- `(n+2)*(C(n+3, 3)-1)+1` -/
def P10436514088808195362.Spec : Prop :=
  ∀ n, P10436514088808195362.a n = A212755 n

end A212755

/-! ## A212755.P2401736945253610340

`floor(∑[∑[∑[a(n-1)+4]]-1])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A212755.P2401736945253610340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212755.P2401736945253610340

namespace A212755

/-- `floor(∑[∑[∑[a(n-1)+4]]-1])` -/
def P2401736945253610340.Spec : Prop :=
  ∀ n, P2401736945253610340.a n = A212755 n

end A212755

/-! ## A212755.P8984866347260919576

`∑[∑[∑[lcm(2, 2*n+1)]]]-(n+1)`
-/

namespace A212755.P8984866347260919576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A212755.P8984866347260919576

namespace A212755

/-- `∑[∑[∑[lcm(2, 2*n+1)]]]-(n+1)` -/
def P8984866347260919576.Spec : Prop :=
  ∀ n, P8984866347260919576.a n = A212755 n

end A212755

/-! ## A212755.P13337888581873356996

`∑[∑[∑[a(n-1)+4]]]-(n+1)` with `a(0)=2`
-/

namespace A212755.P13337888581873356996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A212755.P13337888581873356996

namespace A212755

/-- `∑[∑[∑[a(n-1)+4]]]-(n+1)` -/
def P13337888581873356996.Spec : Prop :=
  ∀ n, P13337888581873356996.a n = A212755 n

end A212755

/-! ## A212755.P7519615974684454665

`∑[A131423(n+1)]+∑[n]`
-/

namespace A212755.P7519615974684454665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A212755.P7519615974684454665

namespace A212755

/-- `∑[A131423(n+1)]+∑[n]` -/
def P7519615974684454665.Spec : Prop :=
  ∀ n, P7519615974684454665.a n = A212755 n

end A212755

/-! ## A212755.P13317485742884816257

`∑[A006331(n+1)]-(n+1)`
-/

namespace A212755.P13317485742884816257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A212755.P13317485742884816257

namespace A212755

/-- `∑[A006331(n+1)]-(n+1)` -/
def P13317485742884816257.Spec : Prop :=
  ∀ n, P13317485742884816257.a n = A212755 n

end A212755

/-! ## A212755.P14199733771333188889

`A103290(n+1)+(n+1)^3`
-/

namespace A212755.P14199733771333188889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A212755.P14199733771333188889

namespace A212755

/-- `A103290(n+1)+(n+1)^3` -/
def P14199733771333188889.Spec : Prop :=
  ∀ n, P14199733771333188889.a n = A212755 n

end A212755

/-! ## A212755.P17224288886906870387

`A112524(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A212755.P17224288886906870387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112524 (n + 1) + a (n - 1)

end

end A212755.P17224288886906870387

namespace A212755

/-- `A112524(n+1)+a(n-1)` -/
def P17224288886906870387.Spec : Prop :=
  ∀ n, P17224288886906870387.a n = A212755 n

end A212755

/-! ## A212755.P14083026985911256229

`∑[∑[∑[A016813(n)+1]]]-(n+1)`
-/

namespace A212755.P14083026985911256229
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A212755.P14083026985911256229

namespace A212755

/-- `∑[∑[∑[A016813(n)+1]]]-(n+1)` -/
def P14083026985911256229.Spec : Prop :=
  ∀ n, P14083026985911256229.a n = A212755 n

end A212755

/-! ## A212755.P10163258945361324155

`(n+2)*(∑[A000217(n+1)]-1)+1`
-/

namespace A212755.P10163258945361324155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A212755.P10163258945361324155

namespace A212755

/-- `(n+2)*(∑[A000217(n+1)]-1)+1` -/
def P10163258945361324155.Spec : Prop :=
  ∀ n, P10163258945361324155.a n = A212755 n

end A212755

/-! ## A212755.P11500034661860997120

`∑[∑[A046092(n)+2*(n+1)]]-(n+1)`
-/

namespace A212755.P11500034661860997120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (2 * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A212755.P11500034661860997120

namespace A212755

/-- `∑[∑[A046092(n)+2*(n+1)]]-(n+1)` -/
def P11500034661860997120.Spec : Prop :=
  ∀ n, P11500034661860997120.a n = A212755 n

end A212755

/-! ## A212755.P11211716818361546099

`A257055(n)+A051662(n)`
-/

namespace A212755.P11211716818361546099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n + A051662 n

end

end A212755.P11211716818361546099

namespace A212755

/-- `A257055(n)+A051662(n)` -/
def P11211716818361546099.Spec : Prop :=
  ∀ n, P11211716818361546099.a n = A212755 n

end A212755

/-! ## A212755.P11386735192140608853

`A210440(n)+A132366(n)`
-/

namespace A212755.P11386735192140608853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A132366 n

end

end A212755.P11386735192140608853

namespace A212755

/-- `A210440(n)+A132366(n)` -/
def P11386735192140608853.Spec : Prop :=
  ∀ n, P11386735192140608853.a n = A212755 n

end A212755

/-! ## A212755.P3598720929055491829

`A329523(n)+A273316(n)`
-/

namespace A212755.P3598720929055491829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n + A273316 n

end

end A212755.P3598720929055491829

namespace A212755

/-- `A329523(n)+A273316(n)` -/
def P3598720929055491829.Spec : Prop :=
  ∀ n, P3598720929055491829.a n = A212755 n

end A212755

/-! ## A212755.P4523058252513346153

`A100179(n+1)+A006484(n)`
-/

namespace A212755.P4523058252513346153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100179 (n + 1) + A006484 n

end

end A212755.P4523058252513346153

namespace A212755

/-- `A100179(n+1)+A006484(n)` -/
def P4523058252513346153.Spec : Prop :=
  ∀ n, P4523058252513346153.a n = A212755 n

end A212755

/-!
# A212756: Number of (w,x,y,z) with all terms in {0,...,n} and 2w-x=max{w,x,y,z}-min{w,x,y,z}.

The programs for A212756, there is no canonical definition to state claims against.
-/

/-! ## A212756.P8970197538833248730

`A272846(n)+A059906(A272810(n))`
-/

namespace A212756.P8970197538833248730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272846 n + A059906 (A272810 n).toNat

end

end A212756.P8970197538833248730

/-! ## A212756.P13476822600454128062

`A083364(n)-A007949(A000045(3*n+1))`
-/

namespace A212756.P13476822600454128062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083364 n - A007949 (A000045 (3 * n + 1)).toNat

end

end A212756.P13476822600454128062

/-! ## A212756.P18398451131771401744

`A083364(n)-A083894(A000032(3*n+1))`
-/

namespace A212756.P18398451131771401744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083364 n - A083894 (A000032 (3 * n + 1)).toNat

end

end A212756.P18398451131771401744

/-!
# A212758: Number of (w,x,y,z) with all terms in {0,...,n} and w=[R/2], where R=max{w,x,y,z}-min{w,x,y,z} and [ ]=floor.

The programs for A212758, there is no canonical definition to state claims against.
-/

/-! ## A212758.P5206499711724037103

`xor(n, A066011(n+8))-n`
-/

namespace A212758.P5206499711724037103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A066011 (n + 8)) - (n : ℤ)

end

end A212758.P5206499711724037103

/-!
# A212759: Number of (w,x,y,z) with all terms in {0,...,n} and w, x, and y even.

The programs for A212759, the canonical program `A212759.P10804257057777667653` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212759 has offset 0).

The definition of A212759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212759.P15852726049664028818

`(n+1)*∑[char[2*n]]^3`
-/

namespace A212759.P15852726049664028818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A212759.P15852726049664028818

namespace A212759

/-- `(n+1)*∑[char[2*n]]^3` -/
def P15852726049664028818.Spec : Prop :=
  ∀ n, (P15852726049664028818.a n : ℤ) = A212759 n

end A212759

/-! ## A212759.P17112971609493467386

`(n+1)/∑[(n+1)%2]^-3`
-/

namespace A212759.P17112971609493467386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-3 : ℤ)

end

end A212759.P17112971609493467386

namespace A212759

/-- `(n+1)/∑[(n+1)%2]^-3` -/
def P17112971609493467386.Spec : Prop :=
  ∀ n, P17112971609493467386.a n = (A212759 n : ℚ)

end A212759

/-! ## A212759.P9498293574665432831

`(n+1)/∑[and(1, n+1)]^-3`
-/

namespace A212759.P9498293574665432831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-3 : ℤ)

end

end A212759.P9498293574665432831

namespace A212759

/-- `(n+1)/∑[and(1, n+1)]^-3` -/
def P9498293574665432831.Spec : Prop :=
  ∀ n, P9498293574665432831.a n = (A212759 n : ℚ)

end A212759

/-! ## A212759.P10473541021415271752

`(n+1)/(1/∑[and(1, n+1)])^3`
-/

namespace A212759.P10473541021415271752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 3

end

end A212759.P10473541021415271752

namespace A212759

/-- `(n+1)/(1/∑[and(1, n+1)])^3` -/
def P10473541021415271752.Spec : Prop :=
  ∀ n, P10473541021415271752.a n = (A212759 n : ℚ)

end A212759

/-! ## A212759.P7612859384344004246

`(n+1)/∑[1-a(n-1)]^(-3)` with `a(0)=1`
-/

namespace A212759.P7612859384344004246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-3 : ℤ)

end

end A212759.P7612859384344004246

namespace A212759

/-- `(n+1)/∑[1-a(n-1)]^(-3)` -/
def P7612859384344004246.Spec : Prop :=
  ∀ n, P7612859384344004246.a n = (A212759 n : ℚ)

end A212759

/-! ## A212759.P10804257057777667653

`A212764(n)+A008619(n)²²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212759

/-- `A212764(n)+A008619(n)²²` -/
def P10804257057777667653.Spec : Prop :=
  ∀ n, P10804257057777667653.a n = A212759 n

theorem P10804257057777667653.correct : P10804257057777667653.Spec := by
  intro n
  simp only [A212759]

end A212759

/-! ## A212759.P17016560991536381331

`record[A000578(A008612(n))*A008620(n)]`
-/

namespace A212759.P17016560991536381331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A008612 n).toNat * A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212759.P17016560991536381331

namespace A212759

/-- `record[A000578(A008612(n))*A008620(n)]` -/
def P17016560991536381331.Spec : Prop :=
  ∀ n, P17016560991536381331.a n = A212759 n

end A212759

/-! ## A212759.P557311242530894155

`record[A000578(A103221(n))*A008611(n)]`
-/

namespace A212759.P557311242530894155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A103221 n).toNat * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212759.P557311242530894155

namespace A212759

/-- `record[A000578(A103221(n))*A008611(n)]` -/
def P557311242530894155.Spec : Prop :=
  ∀ n, P557311242530894155.a n = A212759 n

end A212759

/-! ## A212759.P14546803147791099638

`record[A094727(n+1)*A133820(n+1)]`
-/

namespace A212759.P14546803147791099638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) * A133820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212759.P14546803147791099638

namespace A212759

/-- `record[A094727(n+1)*A133820(n+1)]` -/
def P14546803147791099638.Spec : Prop :=
  ∀ n, P14546803147791099638.a n = A212759 n

end A212759

/-! ## A212759.P5437500745051869123

`record[(A108872(n+1)-1)*A133820(n+1)]`
-/

namespace A212759.P5437500745051869123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - 1) * A133820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212759.P5437500745051869123

namespace A212759

/-- `record[(A108872(n+1)-1)*A133820(n+1)]` -/
def P5437500745051869123.Spec : Prop :=
  ∀ n, P5437500745051869123.a n = A212759 n

end A212759

/-! ## A212759.P1589041210461213133

`record[A000267(n)*A133823(n)]`
-/

namespace A212759.P1589041210461213133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n * A133823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212759.P1589041210461213133

namespace A212759

/-- `record[A000267(n)*A133823(n)]` -/
def P1589041210461213133.Spec : Prop :=
  ∀ n, P1589041210461213133.a n = A212759 n

end A212759

/-! ## A212759.P17202392449105560952

`record[A133823(2*n+1)*A293137(2*n+1)]`
-/

namespace A212759.P17202392449105560952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133823 (2 * n + 1) * A293137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212759.P17202392449105560952

namespace A212759

/-- `record[A133823(2*n+1)*A293137(2*n+1)]` -/
def P17202392449105560952.Spec : Prop :=
  ∀ n, P17202392449105560952.a n = A212759 n

end A212759

/-!
# A212760: Number of (w,x,y,z) with all terms in {0,...,n}, w even, and x = y + z.

The programs for A212760, the canonical program `A212760.P16178545258694747805` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212760 has offset 0).

The definition of A212760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212760.P16178545258694747805

`(n+1)*(n+2)*(2*n+3+(-1)^n)/8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212760

/-- `(n+1)*(n+2)*(2*n+3+(-1)^n)/8` -/
def P16178545258694747805.Spec : Prop :=
  ∀ n, P16178545258694747805.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P16564233916798154099

`A260706(A001318(n+1))`
-/

namespace A212760.P16564233916798154099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 (A001318 (n + 1)).toNat

end

end A212760.P16564233916798154099

namespace A212760

/-- `A260706(A001318(n+1))` -/
def P16564233916798154099.Spec : Prop :=
  ∀ n, P16564233916798154099.a n = A212760 n

end A212760

/-! ## A212760.P2222545669908949875

`∑[lcm(2, (n+1)²)/2]`
-/

namespace A212760.P2222545669908949875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P2222545669908949875

namespace A212760

/-- `∑[lcm(2, (n+1)²)/2]` -/
def P2222545669908949875.Spec : Prop :=
  ∀ n, P2222545669908949875.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P12854168482563374173

`∑[(n+1)²/(n%2+1)]`
-/

namespace A212760.P12854168482563374173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P12854168482563374173

namespace A212760

/-- `∑[(n+1)²/(n%2+1)]` -/
def P12854168482563374173.Spec : Prop :=
  ∀ n, P12854168482563374173.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P18207276487674945542

`∑[(n+1)²/gcd(2, n+1)]`
-/

namespace A212760.P18207276487674945542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P18207276487674945542

namespace A212760

/-- `∑[(n+1)²/gcd(2, n+1)]` -/
def P18207276487674945542.Spec : Prop :=
  ∀ n, P18207276487674945542.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P6970498985737982578

`∑[(n+1)²/(and(1, n)+1)]`
-/

namespace A212760.P6970498985737982578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P6970498985737982578

namespace A212760

/-- `∑[(n+1)²/(and(1, n)+1)]` -/
def P6970498985737982578.Spec : Prop :=
  ∀ n, P6970498985737982578.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P2650321617119556709

`∑[n+1]²/or(1, n+1)`
-/

namespace A212760.P2650321617119556709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (Nat.lor 1 (n + 1) : ℚ)

end

end A212760.P2650321617119556709

namespace A212760

/-- `∑[n+1]²/or(1, n+1)` -/
def P2650321617119556709.Spec : Prop :=
  ∀ n, P2650321617119556709.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P14190117216403780631

`∑[gcd(2*∑[n]², (n+1)²)]`
-/

namespace A212760.P14190117216403780631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P14190117216403780631

namespace A212760

/-- `∑[gcd(2*∑[n]², (n+1)²)]` -/
def P14190117216403780631.Spec : Prop :=
  ∀ n, (P14190117216403780631.a n : ℤ) = A212760 n

end A212760

/-! ## A212760.P10793877396770382238

`∑[2/a(n-1)*∑[n]²]` with `a(0)=1`
-/

namespace A212760.P10793877396770382238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1) * (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P10793877396770382238

namespace A212760

/-- `∑[2/a(n-1)*∑[n]²]` -/
def P10793877396770382238.Spec : Prop :=
  ∀ n, P10793877396770382238.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P5408497457077316196

`lcm(∑[and(1, n+1)]², ∑[n+1])`
-/

namespace A212760.P5408497457077316196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212760.P5408497457077316196

namespace A212760

/-- `lcm(∑[and(1, n+1)]², ∑[n+1])` -/
def P5408497457077316196.Spec : Prop :=
  ∀ n, (P5408497457077316196.a n : ℤ) = A212760 n

end A212760

/-! ## A212760.P8935414636289768976

`∑[(n+1)*gcd(∑[n-1], ∑[n])]`
-/

namespace A212760.P8935414636289768976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (∑ j ∈ Finset.range (n + 1), f2 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P8935414636289768976

namespace A212760

/-- `∑[(n+1)*gcd(∑[n-1], ∑[n])]` -/
def P8935414636289768976.Spec : Prop :=
  ∀ n, (P8935414636289768976.a n : ℤ) = A212760 n

end A212760

/-! ## A212760.P13943226637479679051

`lcm((floor(n/2)+1)², C(n+2, 2))`
-/

namespace A212760.P13943226637479679051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((⌊(n : ℚ) / 2⌋ + 1) ^ 2) (Nat.choose (n + 2) 2 : ℤ)

end

end A212760.P13943226637479679051

namespace A212760

/-- `lcm((floor(n/2)+1)², C(n+2, 2))` -/
def P13943226637479679051.Spec : Prop :=
  ∀ n, (P13943226637479679051.a n : ℤ) = A212760 n

end A212760

/-! ## A212760.P999000138674068287

`∑[∑[2*n^3]/a(n-1)]` with `a(0)=1`
-/

namespace A212760.P999000138674068287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212760.P999000138674068287

namespace A212760

/-- `∑[∑[2*n^3]/a(n-1)]` -/
def P999000138674068287.Spec : Prop :=
  ∀ n, P999000138674068287.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P7773305264441804848

`floor(∑[1-a(n-1)]*∑[n+1])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A212760.P7773305264441804848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A212760.P7773305264441804848

namespace A212760

/-- `floor(∑[1-a(n-1)]*∑[n+1])` -/
def P7773305264441804848.Spec : Prop :=
  ∀ n, P7773305264441804848.a n = A212760 n

end A212760

/-! ## A212760.P15423248800918189006

`∑[lcm(2*(n+1), ∑[2*n+1])]/2`
-/

namespace A212760.P15423248800918189006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A212760.P15423248800918189006

namespace A212760

/-- `∑[lcm(2*(n+1), ∑[2*n+1])]/2` -/
def P15423248800918189006.Spec : Prop :=
  ∀ n, P15423248800918189006.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P10585920836475077536

`∑[2-a(n-1)]*∑[n+1]/2` with `a(0)=2`
-/

namespace A212760.P10585920836475077536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) : ℚ) / 2

end

end A212760.P10585920836475077536

namespace A212760

/-- `∑[2-a(n-1)]*∑[n+1]/2` -/
def P10585920836475077536.Spec : Prop :=
  ∀ n, P10585920836475077536.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P1255714860582840994

`∑[n+1]²/∑[2-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A212760.P1255714860582840994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  2 - f2 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A212760.P1255714860582840994

namespace A212760

/-- `∑[n+1]²/∑[2-a(n-1)]` -/
def P1255714860582840994.Spec : Prop :=
  ∀ n, P1255714860582840994.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P14522417840286238298

`∑[1-a(n-1)]/∑[n+1]^(-1)` with `a(0)=1`
-/

namespace A212760.P14522417840286238298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A212760.P14522417840286238298

namespace A212760

/-- `∑[1-a(n-1)]/∑[n+1]^(-1)` -/
def P14522417840286238298.Spec : Prop :=
  ∀ n, P14522417840286238298.a n = (A212760 n : ℚ)

end A212760

/-! ## A212760.P7960154778129464699

`Δ[A083392(n)²]`
-/

namespace A212760.P7960154778129464699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212760.P7960154778129464699

namespace A212760

/-- `Δ[A083392(n)²]` -/
def P7960154778129464699.Spec : Prop :=
  ∀ n, P7960154778129464699.a n = A212760 n

end A212760

/-! ## A212760.P5261294300844169991

`abs(A122576(n+1))`
-/

namespace A212760.P5261294300844169991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122576 (n + 1)|

end

end A212760.P5261294300844169991

namespace A212760

/-- `abs(A122576(n+1))` -/
def P5261294300844169991.Spec : Prop :=
  ∀ n, P5261294300844169991.a n = A212760 n

end A212760

/-!
# A212761: Number of (w,x,y,z) with all terms in {0,...,n}, w odd, x and y even.

The programs for A212761, the canonical program `A212761.P2999755397569065556` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212761 has offset 0).

The definition of A212761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212761.P2999755397569065556

`(floor(n/2)+1)*∑[∑[lcm(2, n)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212761

/-- `(floor(n/2)+1)*∑[∑[lcm(2, n)]]` -/
def P2999755397569065556.Spec : Prop :=
  ∀ n, P2999755397569065556.a n = A212761 n

theorem P2999755397569065556.correct : P2999755397569065556.Spec := by
  intro n
  simp only [A212761]

end A212761

/-! ## A212761.P1789255994343106526

`(n+1)*∪[n^3, n*(n+1)²]`
-/

namespace A212761.P1789255994343106526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A212761.P1789255994343106526

namespace A212761

/-- `(n+1)*∪[n^3, n*(n+1)²]` -/
def P1789255994343106526.Spec : Prop :=
  ∀ n, (P1789255994343106526.a n : ℤ) = A212761 n

end A212761

/-! ## A212761.P12524951611801228036

`(n+1)*∑[A359366(n)]`
-/

namespace A212761.P12524951611801228036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212761.P12524951611801228036

namespace A212761

/-- `(n+1)*∑[A359366(n)]` -/
def P12524951611801228036.Spec : Prop :=
  ∀ n, P12524951611801228036.a n = A212761 n

end A212761

/-! ## A212761.P10450807912280920666

`(n+1)*A210433(n+1)`
-/

namespace A212761.P10450807912280920666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210433 (n + 1)

end

end A212761.P10450807912280920666

namespace A212761

/-- `(n+1)*A210433(n+1)` -/
def P10450807912280920666.Spec : Prop :=
  ∀ n, P10450807912280920666.a n = A212761 n

end A212761

/-! ## A212761.P6844952748071724736

`∑[∑[lcm(2, n)]]*A008619(n)`
-/

namespace A212761.P6844952748071724736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008619 n

end

end A212761.P6844952748071724736

namespace A212761

/-- `∑[∑[lcm(2, n)]]*A008619(n)` -/
def P6844952748071724736.Spec : Prop :=
  ∀ n, P6844952748071724736.a n = A212761 n

end A212761

/-! ## A212761.P11059357489308020288

`∑[∑[n%2]]*A093005(n+1)`
-/

namespace A212761.P11059357489308020288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A093005 (n + 1)

end

end A212761.P11059357489308020288

namespace A212761

/-- `∑[∑[n%2]]*A093005(n+1)` -/
def P11059357489308020288.Spec : Prop :=
  ∀ n, P11059357489308020288.a n = A212761 n

end A212761

/-! ## A212761.P1510814117709064975

`A212766(n)-A212762(n)`
-/

namespace A212761.P1510814117709064975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212766 n - A212762 n

end

end A212761.P1510814117709064975

namespace A212761

/-- `A212766(n)-A212762(n)` -/
def P1510814117709064975.Spec : Prop :=
  ∀ n, P1510814117709064975.a n = A212761 n

end A212761

/-! ## A212761.P4314521800589768701

`A008619(n)²*A093353(n)`
-/

namespace A212761.P4314521800589768701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 * A093353 n

end

end A212761.P4314521800589768701

namespace A212761

/-- `A008619(n)²*A093353(n)` -/
def P4314521800589768701.Spec : Prop :=
  ∀ n, P4314521800589768701.a n = A212761 n

end A212761

/-! ## A212761.P484884227527254896

`sqrt(A212759(n)*A212762(n))`
-/

namespace A212761.P484884227527254896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212759 n * A212762 n : ℝ)

end

end A212761.P484884227527254896

namespace A212761

/-- `sqrt(A212759(n)*A212762(n))` -/
def P484884227527254896.Spec : Prop :=
  ∀ n, P484884227527254896.a n = (A212761 n : ℝ)

end A212761

/-! ## A212761.P14890153579756690817

`sqrt(A212764(n)*A212766(n))`
-/

namespace A212761.P14890153579756690817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212764 n * A212766 n : ℝ)

end

end A212761.P14890153579756690817

namespace A212761

/-- `sqrt(A212764(n)*A212766(n))` -/
def P14890153579756690817.Spec : Prop :=
  ∀ n, P14890153579756690817.a n = (A212761 n : ℝ)

end A212761

/-! ## A212761.P8608851015638875042

`∑[A152749(n)]*A008619(n)`
-/

namespace A212761.P8608851015638875042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 n

end

end A212761.P8608851015638875042

namespace A212761

/-- `∑[A152749(n)]*A008619(n)` -/
def P8608851015638875042.Spec : Prop :=
  ∀ n, P8608851015638875042.a n = A212761 n

end A212761

/-! ## A212761.P13969912389653821999

`A211068(n+1)-A212764(n)`
-/

namespace A212761.P13969912389653821999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211068 (n + 1) - A212764 n

end

end A212761.P13969912389653821999

namespace A212761

/-- `A211068(n+1)-A212764(n)` -/
def P13969912389653821999.Spec : Prop :=
  ∀ n, P13969912389653821999.a n = A212761 n

end A212761

/-! ## A212761.P321436554360363149

`A008619(n)²*∑[A014682(n)]`
-/

namespace A212761.P321436554360363149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212761.P321436554360363149

namespace A212761

/-- `A008619(n)²*∑[A014682(n)]` -/
def P321436554360363149.Spec : Prop :=
  ∀ n, P321436554360363149.a n = A212761 n

end A212761

/-! ## A212761.P17391720620819322686

`∑[2*A001318(n)]*A008619(n)`
-/

namespace A212761.P17391720620819322686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 n

end

end A212761.P17391720620819322686

namespace A212761

/-- `∑[2*A001318(n)]*A008619(n)` -/
def P17391720620819322686.Spec : Prop :=
  ∀ n, P17391720620819322686.a n = A212761 n

end A212761

/-! ## A212761.P5574313563534426045

`A002620(n+1)*A093005(n+1)`
-/

namespace A212761.P5574313563534426045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A093005 (n + 1)

end

end A212761.P5574313563534426045

namespace A212761

/-- `A002620(n+1)*A093005(n+1)` -/
def P5574313563534426045.Spec : Prop :=
  ∀ n, P5574313563534426045.a n = A212761 n

end A212761

/-! ## A212761.P4699270466492159900

`(n+1)*A110654(n+1)*A002620(n+1)`
-/

namespace A212761.P4699270466492159900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 (n + 1) * A002620 (n + 1)

end

end A212761.P4699270466492159900

namespace A212761

/-- `(n+1)*A110654(n+1)*A002620(n+1)` -/
def P4699270466492159900.Spec : Prop :=
  ∀ n, P4699270466492159900.a n = A212761 n

end A212761

/-! ## A212761.P13327369321273787105

`A008619(n)/A065033(n)*A212762(n)`
-/

namespace A212761.P13327369321273787105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A065033 n : ℚ) * (A212762 n : ℚ)

end

end A212761.P13327369321273787105

namespace A212761

/-- `A008619(n)/A065033(n)*A212762(n)` -/
def P13327369321273787105.Spec : Prop :=
  ∀ n, P13327369321273787105.a n = (A212761 n : ℚ)

end A212761

/-! ## A212761.P10011188029511305866

`A212766(n)-sqrt(A212765(n)*A212766(n))`
-/

namespace A212761.P10011188029511305866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212766 n : ℝ) - Real.sqrt (A212765 n * A212766 n : ℝ)

end

end A212761.P10011188029511305866

namespace A212761

/-- `A212766(n)-sqrt(A212765(n)*A212766(n))` -/
def P10011188029511305866.Spec : Prop :=
  ∀ n, P10011188029511305866.a n = (A212761 n : ℝ)

end A212761

/-! ## A212761.P10519847276847864960

`(A002378(n)-A006578(n))*A093005(n+1)`
-/

namespace A212761.P10519847276847864960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n - A006578 n) * A093005 (n + 1)

end

end A212761.P10519847276847864960

namespace A212761

/-- `(A002378(n)-A006578(n))*A093005(n+1)` -/
def P10519847276847864960.Spec : Prop :=
  ∀ n, P10519847276847864960.a n = A212761 n

end A212761

/-! ## A212761.P17035643211075616113

`(A014255(n)-A002620(n+1))*A002620(n+1)`
-/

namespace A212761.P17035643211075616113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014255 n - A002620 (n + 1)) * A002620 (n + 1)

end

end A212761.P17035643211075616113

namespace A212761

/-- `(A014255(n)-A002620(n+1))*A002620(n+1)` -/
def P17035643211075616113.Spec : Prop :=
  ∀ n, P17035643211075616113.a n = A212761 n

end A212761

/-!
# A212762: Number of (w,x,y,z) with all terms in {0,...,n}, w and x odd, y even.

The programs for A212762, the canonical program `A212762.P17072693133534430534` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212762 has offset 0).

The definition of A212762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212762.P17072693133534430534

`ceil(n/2)*∑[∑[lcm(2, n)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212762

/-- `ceil(n/2)*∑[∑[lcm(2, n)]]` -/
def P17072693133534430534.Spec : Prop :=
  ∀ n, P17072693133534430534.a n = A212762 n

theorem P17072693133534430534.correct : P17072693133534430534.Spec := by
  intro n
  simp only [A212762]

end A212762

/-! ## A212762.P16533979923611673113

`(n+1)*∑[log2(gcd(2, n))]*ceil(n/2)²`
-/

namespace A212762.P16533979923611673113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (⌈(n : ℚ) / 2⌉ ^ 2 : ℝ)

end

end A212762.P16533979923611673113

namespace A212762

/-- `(n+1)*∑[log2(gcd(2, n))]*ceil(n/2)²` -/
def P16533979923611673113.Spec : Prop :=
  ∀ n, P16533979923611673113.a n = (A212762 n : ℝ)

end A212762

/-! ## A212762.P4254291889787470858

`(n+1)*floor(((n+1)/2)²)*ceil(n/2)`
-/

namespace A212762.P4254291889787470858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌊((n + 1 : ℚ) / 2) ^ 2⌋ * ⌈(n : ℚ) / 2⌉)

end

end A212762.P4254291889787470858

namespace A212762

/-- `(n+1)*floor(((n+1)/2)²)*ceil(n/2)` -/
def P4254291889787470858.Spec : Prop :=
  ∀ n, P4254291889787470858.a n = A212762 n

end A212762

/-! ## A212762.P16420685178104189813

`A210373(n)-A212765(n)`
-/

namespace A212762.P16420685178104189813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210373 n - A212765 n

end

end A212762.P16420685178104189813

namespace A212762

/-- `A210373(n)-A212765(n)` -/
def P16420685178104189813.Spec : Prop :=
  ∀ n, P16420685178104189813.a n = A212762 n

end A212762

/-! ## A212762.P8915477999202870534

`A212766(n)-A212761(n)`
-/

namespace A212762.P8915477999202870534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212766 n - A212761 n

end

end A212762.P8915477999202870534

namespace A212762

/-- `A212766(n)-A212761(n)` -/
def P8915477999202870534.Spec : Prop :=
  ∀ n, P8915477999202870534.a n = A212762 n

end A212762

/-! ## A212762.P5666560130821792237

`sqrt(A212761(n)*A212763(n))`
-/

namespace A212762.P5666560130821792237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212761 n * A212763 n : ℝ)

end

end A212762.P5666560130821792237

namespace A212762

/-- `sqrt(A212761(n)*A212763(n))` -/
def P5666560130821792237.Spec : Prop :=
  ∀ n, P5666560130821792237.a n = (A212762 n : ℝ)

end A212762

/-! ## A212762.P7027400967872872731

`A212761(n)²/A212759(n)`
-/

namespace A212762.P7027400967872872731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212761 n ^ 2 : ℚ) / (A212759 n : ℚ)

end

end A212762.P7027400967872872731

namespace A212762

/-- `A212761(n)²/A212759(n)` -/
def P7027400967872872731.Spec : Prop :=
  ∀ n, P7027400967872872731.a n = (A212762 n : ℚ)

end A212762

/-! ## A212762.P537129602241951968

`sqrt(A212765(n)*A212766(n))`
-/

namespace A212762.P537129602241951968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212765 n * A212766 n : ℝ)

end

end A212762.P537129602241951968

namespace A212762

/-- `sqrt(A212765(n)*A212766(n))` -/
def P537129602241951968.Spec : Prop :=
  ∀ n, P537129602241951968.a n = (A212762 n : ℝ)

end A212762

/-! ## A212762.P4018418279173900349

`∑[A152749(n)]²/A093005(n+1)`
-/

namespace A212762.P4018418279173900349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (A093005 (n + 1) : ℚ)

end

end A212762.P4018418279173900349

namespace A212762

/-- `∑[A152749(n)]²/A093005(n+1)` -/
def P4018418279173900349.Spec : Prop :=
  ∀ n, P4018418279173900349.a n = (A212762 n : ℚ)

end A212762

/-! ## A212762.P11949262895160055770

`A212766(n)-sqrt(A212764(n)*A212766(n))`
-/

namespace A212762.P11949262895160055770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212766 n : ℝ) - Real.sqrt (A212764 n * A212766 n : ℝ)

end

end A212762.P11949262895160055770

namespace A212762

/-- `A212766(n)-sqrt(A212764(n)*A212766(n))` -/
def P11949262895160055770.Spec : Prop :=
  ∀ n, P11949262895160055770.a n = (A212762 n : ℝ)

end A212762

/-! ## A212762.P15316988296047366481

`∑[A212760(n)]+A212765(n)-A212760(n)`
-/

namespace A212762.P15316988296047366481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A212765 n - A212760 n)

end

end A212762.P15316988296047366481

namespace A212762

/-- `∑[A212760(n)]+A212765(n)-A212760(n)` -/
def P15316988296047366481.Spec : Prop :=
  ∀ n, P15316988296047366481.a n = A212762 n

end A212762

/-! ## A212762.P9822055681226071226

`(lt[1, A347633(n+1)]-(n+1))²*A014255(n)-A212765(n)`
-/

namespace A212762.P9822055681226071226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n + 1 : ℤ)) ^ 2 * A014255 n - A212765 n

end

end A212762.P9822055681226071226

namespace A212762

/-- `(lt[1, A347633(n+1)]-(n+1))²*A014255(n)-A212765(n)` -/
def P9822055681226071226.Spec : Prop :=
  ∀ n, P9822055681226071226.a n = A212762 n

end A212762

/-! ## A212762.P10185166577224560427

`record[A008218(n)*A025480(n)]`
-/

namespace A212762.P10185166577224560427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 n * A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212762.P10185166577224560427

namespace A212762

/-- `record[A008218(n)*A025480(n)]` -/
def P10185166577224560427.Spec : Prop :=
  ∀ n, P10185166577224560427.a n = A212762 n

end A212762

/-! ## A212762.P496852861966349390

`record[A008218(n)*A078898(n)]`
-/

namespace A212762.P496852861966349390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 n * A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212762.P496852861966349390

namespace A212762

/-- `record[A008218(n)*A078898(n)]` -/
def P496852861966349390.Spec : Prop :=
  ∀ n, P496852861966349390.a n = A212762 n

end A212762

/-! ## A212762.P6856087563630071849

`record[A008218(n)*A142150(n)]`
-/

namespace A212762.P6856087563630071849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 n * A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212762.P6856087563630071849

namespace A212762

/-- `record[A008218(n)*A142150(n)]` -/
def P6856087563630071849.Spec : Prop :=
  ∀ n, P6856087563630071849.a n = A212762 n

end A212762

/-!
# A212763: Number of (w,x,y,z) with all terms in {0,...,n}, and w, x and y odd.

The programs for A212763, the canonical program `A212763.P5833951702768557100` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212763 has offset 0).

The definition of A212763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212763.P5833951702768557100

`(n+1)*ceil(n/2)^3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212763

/-- `(n+1)*ceil(n/2)^3` -/
def P5833951702768557100.Spec : Prop :=
  ∀ n, P5833951702768557100.a n = A212763 n

theorem P5833951702768557100.correct : P5833951702768557100.Spec := by
  intro n
  simp only [A212763]

end A212763

/-! ## A212763.P9185772980393576211

`floor((n+1)*∑[1-a(n-1)]^3)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212763.P9185772980393576211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A212763.P9185772980393576211

namespace A212763

/-- `floor((n+1)*∑[1-a(n-1)]^3)` -/
def P9185772980393576211.Spec : Prop :=
  ∀ n, P9185772980393576211.a n = A212763 n

end A212763

/-! ## A212763.P2218436334824945152

`∑[A245621(n+1)]`
-/

namespace A212763.P2218436334824945152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212763.P2218436334824945152

namespace A212763

/-- `∑[A245621(n+1)]` -/
def P2218436334824945152.Spec : Prop :=
  ∀ n, P2218436334824945152.a n = A212763 n

end A212763

/-! ## A212763.P5916888429692381547

`(A238411(n+1)/2)²-A212762(n)`
-/

namespace A212763.P5916888429692381547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A238411 (n + 1) : ℚ) / 2) ^ 2 - (A212762 n : ℚ)

end

end A212763.P5916888429692381547

namespace A212763

/-- `(A238411(n+1)/2)²-A212762(n)` -/
def P5916888429692381547.Spec : Prop :=
  ∀ n, P5916888429692381547.a n = (A212763 n : ℚ)

end A212763

/-! ## A212763.P1657639252524310335

`A000578(ceil(n/2))+n*A000578(ceil(n/2))`
-/

namespace A212763.P1657639252524310335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ⌈(n : ℚ) / 2⌉.toNat + (n : ℤ) * A000578 ⌈(n : ℚ) / 2⌉.toNat

end

end A212763.P1657639252524310335

namespace A212763

/-- `A000578(ceil(n/2))+n*A000578(ceil(n/2))` -/
def P1657639252524310335.Spec : Prop :=
  ∀ n, P1657639252524310335.a n = A212763 n

end A212763

/-! ## A212763.P18209438995904940087

`A065033(n)*A212762(n)/A008619(n)`
-/

namespace A212763.P18209438995904940087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n * A212762 n : ℚ) / (A008619 n : ℚ)

end

end A212763.P18209438995904940087

namespace A212763

/-- `A065033(n)*A212762(n)/A008619(n)` -/
def P18209438995904940087.Spec : Prop :=
  ∀ n, P18209438995904940087.a n = (A212763 n : ℚ)

end A212763

/-! ## A212763.P1785212177052266690

`abs((n+1)*Δ[A317714(n+1)])`
-/

namespace A212763.P1785212177052266690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A212763.P1785212177052266690

namespace A212763

/-- `abs((n+1)*Δ[A317714(n+1)])` -/
def P1785212177052266690.Spec : Prop :=
  ∀ n, P1785212177052266690.a n = A212763 n

end A212763

/-! ## A212763.P6187631750045798098

`A212762(n)/ratio[A065033(n)]`
-/

namespace A212763.P6187631750045798098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212762 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A212763.P6187631750045798098

namespace A212763

/-- `A212762(n)/ratio[A065033(n)]` -/
def P6187631750045798098.Spec : Prop :=
  ∀ n, P6187631750045798098.a n = (A212763 n : ℚ)

end A212763

/-! ## A212763.P13279345533973466487

`record[A000578(A110655(n))*A030451(n)]`
-/

namespace A212763.P13279345533973466487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A110655 n).toNat * A030451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212763.P13279345533973466487

namespace A212763

/-- `record[A000578(A110655(n))*A030451(n)]` -/
def P13279345533973466487.Spec : Prop :=
  ∀ n, P13279345533973466487.a n = A212763 n

end A212763

/-! ## A212763.P16820750153326647767

`record[A000578(A008612(2*n+1))*A008620(2*n+1)]`
-/

namespace A212763.P16820750153326647767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A008612 (2 * n + 1)).toNat * A008620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212763.P16820750153326647767

namespace A212763

/-- `record[A000578(A008612(2*n+1))*A008620(2*n+1)]` -/
def P16820750153326647767.Spec : Prop :=
  ∀ n, P16820750153326647767.a n = A212763 n

end A212763

/-! ## A212763.P17282165190194546282

`record[A000267(n)*A133823(n)*and(1, n)]`
-/

namespace A212763.P17282165190194546282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n * A133823 n * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212763.P17282165190194546282

namespace A212763

/-- `record[A000267(n)*A133823(n)*and(1, n)]` -/
def P17282165190194546282.Spec : Prop :=
  ∀ n, P17282165190194546282.a n = A212763 n

end A212763

/-! ## A212763.P13602002489612503185

`A002620(A238411(n+1))-A212762(n)`
-/

namespace A212763.P13602002489612503185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A238411 (n + 1)).toNat - A212762 n

end

end A212763.P13602002489612503185

namespace A212763

/-- `A002620(A238411(n+1))-A212762(n)` -/
def P13602002489612503185.Spec : Prop :=
  ∀ n, P13602002489612503185.a n = A212763 n

end A212763

/-!
# A212764: Number of (w,x,y,z) with all terms in {0,...,n}, w, x and y odd, and z odd.

The programs for A212764, the canonical program `A212764.P8724147019687589347` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212764 has offset 0).

The definition of A212764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212764.P9539800016329469688

`∑[char[2*n]]^3*∑[and(1, n)]`
-/

namespace A212764.P9539800016329469688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A212764.P9539800016329469688

namespace A212764

/-- `∑[char[2*n]]^3*∑[and(1, n)]` -/
def P9539800016329469688.Spec : Prop :=
  ∀ n, (P9539800016329469688.a n : ℤ) = A212764 n

end A212764

/-! ## A212764.P3726184864060528394

`∑[char[2*n]]²*∑[ceil(n/2)]`
-/

namespace A212764.P3726184864060528394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A212764.P3726184864060528394

namespace A212764

/-- `∑[char[2*n]]²*∑[ceil(n/2)]` -/
def P3726184864060528394.Spec : Prop :=
  ∀ n, P3726184864060528394.a n = A212764 n

end A212764

/-! ## A212764.P2230996530634787877

`∪[n²², A085540(n)]`
-/

namespace A212764.P2230996530634787877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212764.P2230996530634787877

namespace A212764

/-- `∪[n²², A085540(n)]` -/
def P2230996530634787877.Spec : Prop :=
  ∀ n, (P2230996530634787877.a n : ℤ) = A212764 n

end A212764

/-! ## A212764.P8724147019687589347

`abs(∑[∑[n]*A152032(n)])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212764

/-- `abs(∑[∑[n]*A152032(n)])` -/
def P8724147019687589347.Spec : Prop :=
  ∀ n, P8724147019687589347.a n = A212764 n

theorem P8724147019687589347.correct : P8724147019687589347.Spec := by
  intro n
  simp only [A212764]

end A212764

/-! ## A212764.P7544998451166978471

`∪[A085540(n), A000583(n)]`
-/

namespace A212764.P7544998451166978471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212764.P7544998451166978471

namespace A212764

/-- `∪[A085540(n), A000583(n)]` -/
def P7544998451166978471.Spec : Prop :=
  ∀ n, (P7544998451166978471.a n : ℤ) = A212764 n

end A212764

/-! ## A212764.P4787137716368831250

`A211068(n+1)-A212761(n)`
-/

namespace A212764.P4787137716368831250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211068 (n + 1) - A212761 n

end

end A212764.P4787137716368831250

namespace A212764

/-- `A211068(n+1)-A212761(n)` -/
def P4787137716368831250.Spec : Prop :=
  ∀ n, P4787137716368831250.a n = A212764 n

end A212764

/-! ## A212764.P702857625828442890

`(sqrt(A212765(n))-sqrt(A212766(n)))²`
-/

namespace A212764.P702857625828442890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A212765 n : ℝ) - Real.sqrt (A212766 n : ℝ)) ^ 2

end

end A212764.P702857625828442890

namespace A212764

/-- `(sqrt(A212765(n))-sqrt(A212766(n)))²` -/
def P702857625828442890.Spec : Prop :=
  ∀ n, P702857625828442890.a n = (A212764 n : ℝ)

end A212764

/-! ## A212764.P13541521632099935431

`A212765(n+1)+A212759(n)-A212763(n+1)`
-/

namespace A212764.P13541521632099935431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 (n + 1) + (A212759 n - A212763 (n + 1))

end

end A212764.P13541521632099935431

namespace A212764

/-- `A212765(n+1)+A212759(n)-A212763(n+1)` -/
def P13541521632099935431.Spec : Prop :=
  ∀ n, P13541521632099935431.a n = A212764 n

end A212764

/-! ## A212764.P1991547180546003395

`record[Δ[A008642(n)]²*A008642(n)]`
-/

namespace A212764.P1991547180546003395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 * A008642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212764.P1991547180546003395

namespace A212764

/-- `record[Δ[A008642(n)]²*A008642(n)]` -/
def P1991547180546003395.Spec : Prop :=
  ∀ n, P1991547180546003395.a n = A212764 n

end A212764

/-! ## A212764.P5884236319215077561

`A008233(∑[3-Δ[or(1, n)]])`
-/

namespace A212764.P5884236319215077561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212764.P5884236319215077561

namespace A212764

/-- `A008233(∑[3-Δ[or(1, n)]])` -/
def P5884236319215077561.Spec : Prop :=
  ∀ n, P5884236319215077561.a n = A212764 n

end A212764

/-! ## A212764.P1151716473709268593

`A008233(Δ[n²]+gcd(2, n))`
-/

namespace A212764.P1151716473709268593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd 2 n : ℤ)).toNat

end

end A212764.P1151716473709268593

namespace A212764

/-- `A008233(Δ[n²]+gcd(2, n))` -/
def P1151716473709268593.Spec : Prop :=
  ∀ n, P1151716473709268593.a n = A212764 n

end A212764

/-! ## A212764.P15933845686585905845

`A008233(char[2*n]+2*(n+1))`
-/

namespace A212764.P15933845686585905845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ((if ∃ j, f1 j = n then 1 else 0) + 2 * (n + 1))

end

end A212764.P15933845686585905845

namespace A212764

/-- `A008233(char[2*n]+2*(n+1))` -/
def P15933845686585905845.Spec : Prop :=
  ∀ n, P15933845686585905845.a n = A212764 n

end A212764

/-! ## A212764.P2834569544414636381

`record[(1-and(2, n+1))*A008233(n)]`
-/

namespace A212764.P2834569544414636381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 (n + 1) : ℤ)) * A008233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212764.P2834569544414636381

namespace A212764

/-- `record[(1-and(2, n+1))*A008233(n)]` -/
def P2834569544414636381.Spec : Prop :=
  ∀ n, P2834569544414636381.a n = A212764 n

end A212764

/-! ## A212764.P12406658684494581380

`record[A008233(A003815(n))]`
-/

namespace A212764.P12406658684494581380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (A003815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212764.P12406658684494581380

namespace A212764

/-- `record[A008233(A003815(n))]` -/
def P12406658684494581380.Spec : Prop :=
  ∀ n, P12406658684494581380.a n = A212764 n

end A212764

/-! ## A212764.P389313191197794362

`A008381(A047208(n+2))`
-/

namespace A212764.P389313191197794362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047208 (n + 2)).toNat

end

end A212764.P389313191197794362

namespace A212764

/-- `A008381(A047208(n+2))` -/
def P389313191197794362.Spec : Prop :=
  ∀ n, P389313191197794362.a n = A212764 n

end A212764

/-! ## A212764.P1470215323629207390

`A008381(A047209(n+2))`
-/

namespace A212764.P1470215323629207390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047209 (n + 2)).toNat

end

end A212764.P1470215323629207390

namespace A212764

/-- `A008381(A047209(n+2))` -/
def P1470215323629207390.Spec : Prop :=
  ∀ n, P1470215323629207390.a n = A212764 n

end A212764

/-! ## A212764.P15249159834072683455

`A008381(A047211(n+1)+2)`
-/

namespace A212764.P15249159834072683455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047211 (n + 1) + 2).toNat

end

end A212764.P15249159834072683455

namespace A212764

/-- `A008381(A047211(n+1)+2)` -/
def P15249159834072683455.Spec : Prop :=
  ∀ n, P15249159834072683455.a n = A212764 n

end A212764

/-! ## A212764.P4665450339082103688

`A008381(A075328(n+1)-1)`
-/

namespace A212764.P4665450339082103688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A075328 (n + 1) - 1).toNat

end

end A212764.P4665450339082103688

namespace A212764

/-- `A008381(A075328(n+1)-1)` -/
def P4665450339082103688.Spec : Prop :=
  ∀ n, P4665450339082103688.a n = A212764 n

end A212764

/-! ## A212764.P16860296218056009494

`A008381(A047201(2*(n+1))+2)`
-/

namespace A212764.P16860296218056009494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047201 (2 * (n + 1)) + 2).toNat

end

end A212764.P16860296218056009494

namespace A212764

/-- `A008381(A047201(2*(n+1))+2)` -/
def P16860296218056009494.Spec : Prop :=
  ∀ n, P16860296218056009494.a n = A212764 n

end A212764

/-! ## A212764.P18241756983019143970

`A008381(A047203(2*(n+1))+2)`
-/

namespace A212764.P18241756983019143970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047203 (2 * (n + 1)) + 2).toNat

end

end A212764.P18241756983019143970

namespace A212764

/-- `A008381(A047203(2*(n+1))+2)` -/
def P18241756983019143970.Spec : Prop :=
  ∀ n, P18241756983019143970.a n = A212764 n

end A212764

/-!
# A212765: Number of (w,x,y,z) with all terms in {0,...,n}, w even and x, y, and z odd.

The programs for A212765, the canonical program `A212765.P1943931859632489946` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212765 has offset 0).

The definition of A212765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212765.P1943931859632489946

`ceil(n/2)²*∑[ceil(n/2)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212765

/-- `ceil(n/2)²*∑[ceil(n/2)]` -/
def P1943931859632489946.Spec : Prop :=
  ∀ n, P1943931859632489946.a n = A212765 n

theorem P1943931859632489946.correct : P1943931859632489946.Spec := by
  intro n
  simp only [A212765]

end A212765

/-! ## A212765.P7417724298919853197

`∪[A179824(n+2), n²²]`
-/

namespace A212765.P7417724298919853197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A212765.P7417724298919853197

namespace A212765

/-- `∪[A179824(n+2), n²²]` -/
def P7417724298919853197.Spec : Prop :=
  ∀ n, (P7417724298919853197.a n : ℤ) = A212765 n

end A212765

/-! ## A212765.P15022049368942504010

`A210373(n)-A212762(n)`
-/

namespace A212765.P15022049368942504010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210373 n - A212762 n

end

end A212765.P15022049368942504010

namespace A212765

/-- `A210373(n)-A212762(n)` -/
def P15022049368942504010.Spec : Prop :=
  ∀ n, P15022049368942504010.a n = A212765 n

end A212765

/-! ## A212765.P1884743189216123513

`∪[A000583(n), A179824(n+2)]`
-/

namespace A212765.P1884743189216123513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212765.P1884743189216123513

namespace A212765

/-- `∪[A000583(n), A179824(n+2)]` -/
def P1884743189216123513.Spec : Prop :=
  ∀ n, (P1884743189216123513.a n : ℤ) = A212765 n

end A212765

/-! ## A212765.P554827114370632927

`A212762(n)-A002620(n+1)²`
-/

namespace A212765.P554827114370632927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212762 n - A002620 (n + 1) ^ 2

end

end A212765.P554827114370632927

namespace A212765

/-- `A212762(n)-A002620(n+1)²` -/
def P554827114370632927.Spec : Prop :=
  ∀ n, P554827114370632927.a n = A212765 n

end A212765

/-! ## A212765.P9231872497157393829

`(sqrt(A212764(n))-sqrt(A212766(n)))²`
-/

namespace A212765.P9231872497157393829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A212764 n : ℝ) - Real.sqrt (A212766 n : ℝ)) ^ 2

end

end A212765.P9231872497157393829

namespace A212765

/-- `(sqrt(A212764(n))-sqrt(A212766(n)))²` -/
def P9231872497157393829.Spec : Prop :=
  ∀ n, P9231872497157393829.a n = (A212765 n : ℝ)

end A212765

/-! ## A212765.P2129194466642288873

`lcm(A110654(n)^A010702(n), A008619(n))`
-/

namespace A212765.P2129194466642288873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A110654 n : ℚ) ^ (A010702 n : ℤ))) (A008619 n)

end

end A212765.P2129194466642288873

namespace A212765

/-- `lcm(A110654(n)^A010702(n), A008619(n))` -/
def P2129194466642288873.Spec : Prop :=
  ∀ n, (P2129194466642288873.a n : ℤ) = A212765 n

end A212765

/-! ## A212765.P10571256137600804479

`A212762(n)/(ratio[A065033(n)]+1)`
-/

namespace A212765.P10571256137600804479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212762 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 1)

end

end A212765.P10571256137600804479

namespace A212765

/-- `A212762(n)/(ratio[A065033(n)]+1)` -/
def P10571256137600804479.Spec : Prop :=
  ∀ n, P10571256137600804479.a n = (A212765 n : ℚ)

end A212765

/-! ## A212765.P9657649890690988280

`record[A103627(n)²*A008133(n)]`
-/

namespace A212765.P9657649890690988280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 n ^ 2 * A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212765.P9657649890690988280

namespace A212765

/-- `record[A103627(n)²*A008133(n)]` -/
def P9657649890690988280.Spec : Prop :=
  ∀ n, P9657649890690988280.a n = A212765 n

end A212765

/-! ## A212765.P11038100719661861885

`A008233(Δ[n²]+and(1, n))`
-/

namespace A212765.P11038100719661861885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land 1 n : ℤ)).toNat

end

end A212765.P11038100719661861885

namespace A212765

/-- `A008233(Δ[n²]+and(1, n))` -/
def P11038100719661861885.Spec : Prop :=
  ∀ n, P11038100719661861885.a n = A212765 n

end A212765

/-! ## A212765.P9214595049418437427

`record[(1-and(2, n))*A008233(n)]`
-/

namespace A212765.P9214595049418437427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A008233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212765.P9214595049418437427

namespace A212765

/-- `record[(1-and(2, n))*A008233(n)]` -/
def P9214595049418437427.Spec : Prop :=
  ∀ n, P9214595049418437427.a n = A212765 n

end A212765

/-! ## A212765.P1152572839624893625

`A008233(n%2+2*n+1)`
-/

namespace A212765.P1152572839624893625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (n % 2 + (2 * n + 1))

end

end A212765.P1152572839624893625

namespace A212765

/-- `A008233(n%2+2*n+1)` -/
def P1152572839624893625.Spec : Prop :=
  ∀ n, P1152572839624893625.a n = A212765 n

end A212765

/-! ## A212765.P474894065734281278

`A008233(∑[7%(3-(-1)^n)])`
-/

namespace A212765.P474894065734281278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (3 - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212765.P474894065734281278

namespace A212765

/-- `A008233(∑[7%(3-(-1)^n)])` -/
def P474894065734281278.Spec : Prop :=
  ∀ n, P474894065734281278.a n = A212765 n

end A212765

/-! ## A212765.P9778389748371046915

`A008233(2*(n+1)-char[2*n])`
-/

namespace A212765.P9778389748371046915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (2 * (n + 1) - (if ∃ j, f1 j = n then 1 else 0))

end

end A212765.P9778389748371046915

namespace A212765

/-- `A008233(2*(n+1)-char[2*n])` -/
def P9778389748371046915.Spec : Prop :=
  ∀ n, P9778389748371046915.a n = A212765 n

end A212765

/-! ## A212765.P650074338697925129

`record[A008233(A003815(n)+1)]`
-/

namespace A212765.P650074338697925129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (A003815 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212765.P650074338697925129

namespace A212765

/-- `record[A008233(A003815(n)+1)]` -/
def P650074338697925129.Spec : Prop :=
  ∀ n, P650074338697925129.a n = A212765 n

end A212765

/-! ## A212765.P17148190854725711676

`A008381(A075328(n))`
-/

namespace A212765.P17148190854725711676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A075328 n).toNat

end

end A212765.P17148190854725711676

namespace A212765

/-- `A008381(A075328(n))` -/
def P17148190854725711676.Spec : Prop :=
  ∀ n, P17148190854725711676.a n = A212765 n

end A212765

/-! ## A212765.P9695032753736775018

`A008381(A047215(n+1))`
-/

namespace A212765.P9695032753736775018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047215 (n + 1)).toNat

end

end A212765.P9695032753736775018

namespace A212765

/-- `A008381(A047215(n+1))` -/
def P9695032753736775018.Spec : Prop :=
  ∀ n, P9695032753736775018.a n = A212765 n

end A212765

/-! ## A212765.P18371022700695284365

`A008381(A256680(n+1))`
-/

namespace A212765.P18371022700695284365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A256680 (n + 1)).toNat

end

end A212765.P18371022700695284365

namespace A212765

/-- `A008381(A256680(n+1))` -/
def P18371022700695284365.Spec : Prop :=
  ∀ n, P18371022700695284365.a n = A212765 n

end A212765

/-! ## A212765.P11157165718400902199

`A008381(A047216(n+2))`
-/

namespace A212765.P11157165718400902199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047216 (n + 2)).toNat

end

end A212765.P11157165718400902199

namespace A212765

/-- `A008381(A047216(n+2))` -/
def P11157165718400902199.Spec : Prop :=
  ∀ n, P11157165718400902199.a n = A212765 n

end A212765

/-! ## A212765.P4560772415897220058

`A008381(A047209(n+1)+1)`
-/

namespace A212765.P4560772415897220058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047209 (n + 1) + 1).toNat

end

end A212765.P4560772415897220058

namespace A212765

/-- `A008381(A047209(n+1)+1)` -/
def P4560772415897220058.Spec : Prop :=
  ∀ n, P4560772415897220058.a n = A212765 n

end A212765

/-!
# A212766: Number of (w,x,y,z) with all terms in {0,...,n}, w even and x odd.

The programs for A212766, the canonical program `A212766.P2302404483866041251` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212766 has offset 0).

The definition of A212766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212766.P2302404483866041251

`(2*n*(n+2)-(-1)^n+1)*(n+1)²/8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212766

/-- `(2*n*(n+2)-(-1)^n+1)*(n+1)²/8` -/
def P2302404483866041251.Spec : Prop :=
  ∀ n, P2302404483866041251.a n = (A212766 n : ℚ)

end A212766

/-! ## A212766.P11038423318859081817

`(n+1)*∑[∑[lcm(2, n)]]`
-/

namespace A212766.P11038423318859081817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212766.P11038423318859081817

namespace A212766

/-- `(n+1)*∑[∑[lcm(2, n)]]` -/
def P11038423318859081817.Spec : Prop :=
  ∀ n, (P11038423318859081817.a n : ℤ) = A212766 n

end A212766

/-! ## A212766.P9684765731682724666

`((n+1)*sqrt(∑[∑[and(1, n)]]))^2`
-/

namespace A212766.P9684765731682724666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) ^ 2

end

end A212766.P9684765731682724666

namespace A212766

/-- `((n+1)*sqrt(∑[∑[and(1, n)]]))^2` -/
def P9684765731682724666.Spec : Prop :=
  ∀ n, P9684765731682724666.a n = (A212766 n : ℝ)

end A212766

/-! ## A212766.P5555578178963224029

`(n+1)²*∑[n-a(n-1)]` with `a(0)=0`
-/

namespace A212766.P5555578178963224029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212766.P5555578178963224029

namespace A212766

/-- `(n+1)²*∑[n-a(n-1)]` -/
def P5555578178963224029.Spec : Prop :=
  ∀ n, P5555578178963224029.a n = A212766 n

end A212766

/-! ## A212766.P17188320445975729759

`(n+1)*(n+1)*∑[n-a(n-1)]` with `a(0)=0`
-/

namespace A212766.P17188320445975729759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A212766.P17188320445975729759

namespace A212766

/-- `(n+1)*(n+1)*∑[n-a(n-1)]` -/
def P17188320445975729759.Spec : Prop :=
  ∀ n, P17188320445975729759.a n = A212766 n

end A212766

/-! ## A212766.P3363915358548872934

`(n+1)*∑[A152749(n)]`
-/

namespace A212766.P3363915358548872934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212766.P3363915358548872934

namespace A212766

/-- `(n+1)*∑[A152749(n)]` -/
def P3363915358548872934.Spec : Prop :=
  ∀ n, P3363915358548872934.a n = A212766 n

end A212766

/-! ## A212766.P16653499465362106688

`2*(n+1)*A109900(n)`
-/

namespace A212766.P16653499465362106688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A109900 n)

end

end A212766.P16653499465362106688

namespace A212766

/-- `2*(n+1)*A109900(n)` -/
def P16653499465362106688.Spec : Prop :=
  ∀ n, P16653499465362106688.a n = A212766 n

end A212766

/-! ## A212766.P8967287767803676047

`(n+1)²*∑[A110654(n)]`
-/

namespace A212766.P8967287767803676047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212766.P8967287767803676047

namespace A212766

/-- `(n+1)²*∑[A110654(n)]` -/
def P8967287767803676047.Spec : Prop :=
  ∀ n, P8967287767803676047.a n = A212766 n

end A212766

/-! ## A212766.P7855107240701028805

`(n+1)²*Δ[A173196(n)]`
-/

namespace A212766.P7855107240701028805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A212766.P7855107240701028805

namespace A212766

/-- `(n+1)²*Δ[A173196(n)]` -/
def P7855107240701028805.Spec : Prop :=
  ∀ n, P7855107240701028805.a n = A212766 n

end A212766

/-! ## A212766.P2825682535077649675

`(n+1)²*A002620(n+1)`
-/

namespace A212766.P2825682535077649675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A002620 (n + 1)

end

end A212766.P2825682535077649675

namespace A212766

/-- `(n+1)²*A002620(n+1)` -/
def P2825682535077649675.Spec : Prop :=
  ∀ n, P2825682535077649675.a n = A212766 n

end A212766

/-! ## A212766.P15837563606792026833

`(n+1)²*A033638(n+1)-(n+1)²`
-/

namespace A212766.P15837563606792026833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A033638 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A212766.P15837563606792026833

namespace A212766

/-- `(n+1)²*A033638(n+1)-(n+1)²` -/
def P15837563606792026833.Spec : Prop :=
  ∀ n, P15837563606792026833.a n = A212766 n

end A212766

/-! ## A212766.P14903686135151505226

`A212762(n)+A212761(n)`
-/

namespace A212766.P14903686135151505226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212762 n + A212761 n

end

end A212766.P14903686135151505226

namespace A212766

/-- `A212762(n)+A212761(n)` -/
def P14903686135151505226.Spec : Prop :=
  ∀ n, P14903686135151505226.a n = A212766 n

end A212766

/-! ## A212766.P1404775312706652760

`A103517(n)*A109900(n)`
-/

namespace A212766.P1404775312706652760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A109900 n

end

end A212766.P1404775312706652760

namespace A212766

/-- `A103517(n)*A109900(n)` -/
def P1404775312706652760.Spec : Prop :=
  ∀ n, P1404775312706652760.a n = A212766 n

end A212766

/-! ## A212766.P18392479079067733614

`∑[A110654(n)*A213399(n)]`
-/

namespace A212766.P18392479079067733614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n * A213399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212766.P18392479079067733614

namespace A212766

/-- `∑[A110654(n)*A213399(n)]` -/
def P18392479079067733614.Spec : Prop :=
  ∀ n, P18392479079067733614.a n = A212766 n

end A212766

/-! ## A212766.P10938359148735753384

`A226141(n+1)+A176060(n)`
-/

namespace A212766.P10938359148735753384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226141 (n + 1) + A176060 n

end

end A212766.P10938359148735753384

namespace A212766

/-- `A226141(n+1)+A176060(n)` -/
def P10938359148735753384.Spec : Prop :=
  ∀ n, P10938359148735753384.a n = A212766 n

end A212766

/-! ## A212766.P2376783636196861656

`A093005(n+1)*A093353(n)`
-/

namespace A212766.P2376783636196861656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) * A093353 n

end

end A212766.P2376783636196861656

namespace A212766

/-- `A093005(n+1)*A093353(n)` -/
def P2376783636196861656.Spec : Prop :=
  ∀ n, P2376783636196861656.a n = A212766 n

end A212766

/-! ## A212766.P2334459968472040271

`A110654(n)*A130656(n+1)`
-/

namespace A212766.P2334459968472040271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n * A130656 (n + 1)

end

end A212766.P2334459968472040271

namespace A212766

/-- `A110654(n)*A130656(n+1)` -/
def P2334459968472040271.Spec : Prop :=
  ∀ n, P2334459968472040271.a n = A212766 n

end A212766

/-! ## A212766.P14044035642378233048

`A083392(n)*A162395(n+1)`
-/

namespace A212766.P14044035642378233048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n * A162395 (n + 1)

end

end A212766.P14044035642378233048

namespace A212766

/-- `A083392(n)*A162395(n+1)` -/
def P14044035642378233048.Spec : Prop :=
  ∀ n, P14044035642378233048.a n = A212766 n

end A212766

/-! ## A212766.P13615899056118058914

`A109900(n)*A163300(n+1)`
-/

namespace A212766.P13615899056118058914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n * A163300 (n + 1)

end

end A212766.P13615899056118058914

namespace A212766

/-- `A109900(n)*A163300(n+1)` -/
def P13615899056118058914.Spec : Prop :=
  ∀ n, P13615899056118058914.a n = A212766 n

end A212766

/-!
# A212767: Number of (w,x,y,z) with all terms in {0,...,n}, w even, x even, and w+x=y+z.

The programs for A212767, the canonical program `A212767.P10815655632152976297` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212767 has offset 0).

The definition of A212767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212767.P10815655632152976297

`∑[∑[n]]+(∑[n+1]%(n+2))²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212767

/-- `∑[∑[n]]+(∑[n+1]%(n+2))²` -/
def P10815655632152976297.Spec : Prop :=
  ∀ n, (P10815655632152976297.a n : ℤ) = A212767 n

theorem P10815655632152976297.correct : P10815655632152976297.Spec := by
  intro n
  simp only [A212767]

end A212767

/-! ## A212767.P1391617762344562397

`a(n-2)+or(1, n*or(1, n))` with `a(0)=1, a(1)=1`
-/

namespace A212767.P1391617762344562397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lor 1 (n * Nat.lor 1 n)

end

end A212767.P1391617762344562397

namespace A212767

/-- `a(n-2)+or(1, n*or(1, n))` -/
def P1391617762344562397.Spec : Prop :=
  ∀ n, (P1391617762344562397.a n : ℤ) = A212767 n

end A212767

/-! ## A212767.P6503612522591040146

`∑[∑[n]]+A027656(n)²`
-/

namespace A212767.P6503612522591040146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A027656 n ^ 2

end

end A212767.P6503612522591040146

namespace A212767

/-- `∑[∑[n]]+A027656(n)²` -/
def P6503612522591040146.Spec : Prop :=
  ∀ n, P6503612522591040146.a n = A212767 n

end A212767

/-! ## A212767.P14457045872415231515

`2*A023855(n+1)-∑[n+1]`
-/

namespace A212767.P14457045872415231515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023855 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212767.P14457045872415231515

namespace A212767

/-- `2*A023855(n+1)-∑[n+1]` -/
def P14457045872415231515.Spec : Prop :=
  ∀ n, P14457045872415231515.a n = A212767 n

end A212767

/-! ## A212767.P5660083366383054723

`A026035(n+2)-floor((n+2)²/(2*gcd(2, n)))`
-/

namespace A212767.P5660083366383054723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026035 (n + 2) - ⌊((n + 2) ^ 2 : ℚ) / (2 * Nat.gcd 2 n : ℚ)⌋

end

end A212767.P5660083366383054723

namespace A212767

/-- `A026035(n+2)-floor((n+2)²/(2*gcd(2, n)))` -/
def P5660083366383054723.Spec : Prop :=
  ∀ n, P5660083366383054723.a n = A212767 n

end A212767

/-! ## A212767.P4594525678453886582

`A026035(n+2)-A241496(n)`
-/

namespace A212767.P4594525678453886582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026035 (n + 2) - A241496 n

end

end A212767.P4594525678453886582

namespace A212767

/-- `A026035(n+2)-A241496(n)` -/
def P4594525678453886582.Spec : Prop :=
  ∀ n, P4594525678453886582.a n = A212767 n

end A212767

/-! ## A212767.P6707334620660642328

`A000292(n)+(1-A179820(n))²`
-/

namespace A212767.P6707334620660642328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (1 - A179820 n) ^ 2

end

end A212767.P6707334620660642328

namespace A212767

/-- `A000292(n)+(1-A179820(n))²` -/
def P6707334620660642328.Spec : Prop :=
  ∀ n, P6707334620660642328.a n = A212767 n

end A212767

/-! ## A212767.P13527623319926809438

`A027656(n)²+A027480(n)/3`
-/

namespace A212767.P13527623319926809438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n ^ 2 : ℚ) + (A027480 n : ℚ) / 3

end

end A212767.P13527623319926809438

namespace A212767

/-- `A027656(n)²+A027480(n)/3` -/
def P13527623319926809438.Spec : Prop :=
  ∀ n, P13527623319926809438.a n = (A212767 n : ℚ)

end A212767

/-! ## A212767.P1231551048411009469

`A027656(n)²+n/3*A000217(n+1)`
-/

namespace A212767.P1231551048411009469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n ^ 2 : ℚ) + (n : ℚ) / 3 * (A000217 (n + 1) : ℚ)

end

end A212767.P1231551048411009469

namespace A212767

/-- `A027656(n)²+n/3*A000217(n+1)` -/
def P1231551048411009469.Spec : Prop :=
  ∀ n, P1231551048411009469.a n = (A212767 n : ℚ)

end A212767

/-! ## A212767.P13332978198409505264

`A173196(A052928(n)+2)+A173196(n)`
-/

namespace A212767.P13332978198409505264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A052928 n + 2).toNat + A173196 n

end

end A212767.P13332978198409505264

namespace A212767

/-- `A173196(A052928(n)+2)+A173196(n)` -/
def P13332978198409505264.Spec : Prop :=
  ∀ n, P13332978198409505264.a n = A212767 n

end A212767

/-! ## A212767.P13891028353376003505

`A173196(n)+A002623(2*A004526(n))`
-/

namespace A212767.P13891028353376003505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A002623 (2 * A004526 n).toNat

end

end A212767.P13891028353376003505

namespace A212767

/-- `A173196(n)+A002623(2*A004526(n))` -/
def P13891028353376003505.Spec : Prop :=
  ∀ n, P13891028353376003505.a n = A212767 n

end A212767

/-! ## A212767.P4827704520556586446

`A173196(2*A008619(n))+A173196(n)`
-/

namespace A212767.P4827704520556586446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * A008619 n).toNat + A173196 n

end

end A212767.P4827704520556586446

namespace A212767

/-- `A173196(2*A008619(n))+A173196(n)` -/
def P4827704520556586446.Spec : Prop :=
  ∀ n, P4827704520556586446.a n = A212767 n

end A212767

/-! ## A212767.P9623489278856153818

`A173196(n)+A002623(n-A000035(n))`
-/

namespace A212767.P9623489278856153818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A002623 ((n : ℤ) - A000035 n).toNat

end

end A212767.P9623489278856153818

namespace A212767

/-- `A173196(n)+A002623(n-A000035(n))` -/
def P9623489278856153818.Spec : Prop :=
  ∀ n, P9623489278856153818.a n = A212767 n

end A212767

/-! ## A212767.P13800563645676999044

`A023855(n+1)+A023855(n+1)-A000217(n+1)`
-/

namespace A212767.P13800563645676999044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + (A023855 (n + 1) - A000217 (n + 1))

end

end A212767.P13800563645676999044

namespace A212767

/-- `A023855(n+1)+A023855(n+1)-A000217(n+1)` -/
def P13800563645676999044.Spec : Prop :=
  ∀ n, P13800563645676999044.a n = A212767 n

end A212767

/-! ## A212767.P1961187710838241767

`∑[Δ[(∑[n]%(n+1))²]+∑[n]]`
-/

namespace A212767.P1961187710838241767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212767.P1961187710838241767

namespace A212767

/-- `∑[Δ[(∑[n]%(n+1))²]+∑[n]]` -/
def P1961187710838241767.Spec : Prop :=
  ∀ n, P1961187710838241767.a n = A212767 n

end A212767

/-! ## A212767.P9101759589868384402

`∑[∑[n]]+∑[A001057(n+1)]²`
-/

namespace A212767.P9101759589868384402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

end

end A212767.P9101759589868384402

namespace A212767

/-- `∑[∑[n]]+∑[A001057(n+1)]²` -/
def P9101759589868384402.Spec : Prop :=
  ∀ n, P9101759589868384402.a n = A212767 n

end A212767

/-! ## A212767.P17559599587711577753

`A131474(n+1)-∑[A004526(n+1)²]`
-/

namespace A212767.P17559599587711577753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212767.P17559599587711577753

namespace A212767

/-- `A131474(n+1)-∑[A004526(n+1)²]` -/
def P17559599587711577753.Spec : Prop :=
  ∀ n, P17559599587711577753.a n = A212767 n

end A212767

/-! ## A212767.P16969264377210190095

`A000330(n+1)+A000292(n)-A294286(n+2)`
-/

namespace A212767.P16969264377210190095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000292 n - A294286 (n + 2))

end

end A212767.P16969264377210190095

namespace A212767

/-- `A000330(n+1)+A000292(n)-A294286(n+2)` -/
def P16969264377210190095.Spec : Prop :=
  ∀ n, P16969264377210190095.a n = A212767 n

end A212767

/-! ## A212767.P4714568598002629089

`A027656(n)²+A007531(n+2)/6`
-/

namespace A212767.P4714568598002629089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n ^ 2 : ℚ) + (A007531 (n + 2) : ℚ) / 6

end

end A212767.P4714568598002629089

namespace A212767

/-- `A027656(n)²+A007531(n+2)/6` -/
def P4714568598002629089.Spec : Prop :=
  ∀ n, P4714568598002629089.a n = (A212767 n : ℚ)

end A212767

/-! ## A212767.P7754182931007422434

`A005232(2*n-n%2)`
-/

namespace A212767.P7754182931007422434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n - n % 2)

end

end A212767.P7754182931007422434

namespace A212767

/-- `A005232(2*n-n%2)` -/
def P7754182931007422434.Spec : Prop :=
  ∀ n, P7754182931007422434.a n = A212767 n

end A212767

/-!
# A212769: p*q modulo (p+q) with p, q consecutive primes.

The programs for A212769, the canonical program `A212769.P16448248741169686819` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212769 has offset 1).

The definition of A212769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212769.P9657393670986625851

`A001043(n+1)-A227203(n+1)`
-/

namespace A212769.P9657393670986625851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A227203 (n + 1)

end

end A212769.P9657393670986625851

namespace A212769

/-- `A001043(n+1)-A227203(n+1)` -/
def P9657393670986625851.Spec : Prop :=
  ∀ n, P9657393670986625851.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P16448248741169686819

`A006094(n+1)%A001043(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212769

/-- `A006094(n+1)%A001043(n+1)` -/
def P16448248741169686819.Spec : Prop :=
  ∀ n, P16448248741169686819.a n = A212769 (n + 1)

theorem P16448248741169686819.correct : P16448248741169686819.Spec := by
  intro n
  simp only [A212769, Nat.add_sub_cancel]

end A212769

/-! ## A212769.P4096312770196360842

`A037165(n+1)%A001043(n+1)`
-/

namespace A212769.P4096312770196360842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037165 (n + 1)) (A001043 (n + 1))

end

end A212769.P4096312770196360842

namespace A212769

/-- `A037165(n+1)%A001043(n+1)` -/
def P4096312770196360842.Spec : Prop :=
  ∀ n, P4096312770196360842.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P5712088960641322562

`A126199(n+1)%A001043(n+1)`
-/

namespace A212769.P5712088960641322562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126199 (n + 1)) (A001043 (n + 1))

end

end A212769.P5712088960641322562

namespace A212769

/-- `A126199(n+1)%A001043(n+1)` -/
def P5712088960641322562.Spec : Prop :=
  ∀ n, P5712088960641322562.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P13139483898831469029

`A127345(n+1)%A001043(n+1)`
-/

namespace A212769.P13139483898831469029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127345 (n + 1)) (A001043 (n + 1))

end

end A212769.P13139483898831469029

namespace A212769

/-- `A127345(n+1)%A001043(n+1)` -/
def P13139483898831469029.Spec : Prop :=
  ∀ n, P13139483898831469029.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P17505441359597977192

`sqrt(A166329(n+1))%A001043(n+1)`
-/

namespace A212769.P17505441359597977192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A166329 (n + 1) : ℝ))) (A001043 (n + 1))

end

end A212769.P17505441359597977192

namespace A212769

/-- `sqrt(A166329(n+1))%A001043(n+1)` -/
def P17505441359597977192.Spec : Prop :=
  ∀ n, P17505441359597977192.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P1320175471372040542

`(Δ[A007504(n)]*A065091(n+1))%A001043(n+1)`
-/

namespace A212769.P1320175471372040542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * A065091 (n + 1)) (A001043 (n + 1))

end

end A212769.P1320175471372040542

namespace A212769

/-- `(Δ[A007504(n)]*A065091(n+1))%A001043(n+1)` -/
def P1320175471372040542.Spec : Prop :=
  ∀ n, P1320175471372040542.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P9397980170147060379

`A006094(n+1)-A001043(n+1)*A160830(n+1)`
-/

namespace A212769.P9397980170147060379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001043 (n + 1) * A160830 (n + 1)

end

end A212769.P9397980170147060379

namespace A212769

/-- `A006094(n+1)-A001043(n+1)*A160830(n+1)` -/
def P9397980170147060379.Spec : Prop :=
  ∀ n, P9397980170147060379.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P14543705426082256757

`A000040(n+1)+A000040(n+2)-A227203(n+1)`
-/

namespace A212769.P14543705426082256757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 2) - A227203 (n + 1))

end

end A212769.P14543705426082256757

namespace A212769

/-- `A000040(n+1)+A000040(n+2)-A227203(n+1)` -/
def P14543705426082256757.Spec : Prop :=
  ∀ n, P14543705426082256757.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P17180761521674403304

`(A000040(n+2)*A000040(n+1))%A001043(n+1)`
-/

namespace A212769.P17180761521674403304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) * A000040 (n + 1)) (A001043 (n + 1))

end

end A212769.P17180761521674403304

namespace A212769

/-- `(A000040(n+2)*A000040(n+1))%A001043(n+1)` -/
def P17180761521674403304.Spec : Prop :=
  ∀ n, P17180761521674403304.a n = A212769 (n + 1)

end A212769

/-! ## A212769.P16656490617163038526

`A006094(A000027(n+1))%∑{p}[A006094(n+1), #]`
-/

namespace A212769.P16656490617163038526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (A000027 (n + 1)).toNat) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A212769.P16656490617163038526

namespace A212769

/-- `A006094(A000027(n+1))%∑{p}[A006094(n+1), #]` -/
def P16656490617163038526.Spec : Prop :=
  ∀ n, P16656490617163038526.a n = A212769 (n + 1)

end A212769

/-!
# A212772: a(n) = floor((n+1)*(n-3)*(n-4)/12).

The programs for A212772, the canonical program `A212772.P9850939349989635622` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212772 has offset 0).

The definition of A212772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212772.P9850939349989635622

`floor(∑[(∑[n-3]+5)/2])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212772

/-- `floor(∑[(∑[n-3]+5)/2])` -/
def P9850939349989635622.Spec : Prop :=
  ∀ n, P9850939349989635622.a n = A212772 n

theorem P9850939349989635622.correct : P9850939349989635622.Spec := by
  intro n
  simp only [A212772]

end A212772

/-! ## A212772.P17374548979400848668

`∑[∑[a(n-4)+2]]` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=1, a(4)=0`
-/

namespace A212772.P17374548979400848668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 1, 0] fun n f2 =>
  f2 (n - 4) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212772.P17374548979400848668

namespace A212772

/-- `∑[∑[a(n-4)+2]]` -/
def P17374548979400848668.Spec : Prop :=
  ∀ n, P17374548979400848668.a n = A212772 n

end A212772

/-! ## A212772.P15298983539431399996

`A390346(n)+1`
-/

namespace A212772.P15298983539431399996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390346 n + 1

end

end A212772.P15298983539431399996

namespace A212772

/-- `A390346(n)+1` -/
def P15298983539431399996.Spec : Prop :=
  ∀ n, P15298983539431399996.a n = A212772 n

end A212772

/-! ## A212772.P5338643502383778009

`ceil((A000125(n)-n²)/2)`
-/

namespace A212772.P5338643502383778009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000125 n - (n ^ 2 : ℤ) : ℚ) / 2⌉

end

end A212772.P5338643502383778009

namespace A212772

/-- `ceil((A000125(n)-n²)/2)` -/
def P5338643502383778009.Spec : Prop :=
  ∀ n, P5338643502383778009.a n = A212772 n

end A212772

/-! ## A212772.P11616175048527951784

`A390347(n)+A152822(n)`
-/

namespace A212772.P11616175048527951784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390347 n + A152822 n

end

end A212772.P11616175048527951784

namespace A212772

/-- `A390347(n)+A152822(n)` -/
def P11616175048527951784.Spec : Prop :=
  ∀ n, P11616175048527951784.a n = A212772 n

end A212772

/-! ## A212772.P6373800622954385417

`A266464(n)-A265431(n)`
-/

namespace A212772.P6373800622954385417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n - A265431 n

end

end A212772.P6373800622954385417

namespace A212772

/-- `A266464(n)-A265431(n)` -/
def P6373800622954385417.Spec : Prop :=
  ∀ n, P6373800622954385417.a n = A212772 n

end A212772

/-! ## A212772.P17142414393640110924

`A088795(n+1)-A282513(n)`
-/

namespace A212772.P17142414393640110924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088795 (n + 1) - A282513 n

end

end A212772.P17142414393640110924

namespace A212772

/-- `A088795(n+1)-A282513(n)` -/
def P17142414393640110924.Spec : Prop :=
  ∀ n, P17142414393640110924.a n = A212772 n

end A212772

/-! ## A212772.P6172279304716492054

`∑[A033638(n)-(A004526(A028242(n))+n)]`
-/

namespace A212772.P6172279304716492054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - (A004526 (A028242 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212772.P6172279304716492054

namespace A212772

/-- `∑[A033638(n)-(A004526(A028242(n))+n)]` -/
def P6172279304716492054.Spec : Prop :=
  ∀ n, P6172279304716492054.a n = A212772 n

end A212772

/-! ## A212772.P2153995887073093384

`A011894(n+1)+∑[1-n]`
-/

namespace A212772.P2153995887073093384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212772.P2153995887073093384

namespace A212772

/-- `A011894(n+1)+∑[1-n]` -/
def P2153995887073093384.Spec : Prop :=
  ∀ n, P2153995887073093384.a n = A212772 n

end A212772

/-! ## A212772.P3062761535577626641

`A011886(n+1)+∑[1-∑[n]]`
-/

namespace A212772.P3062761535577626641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212772.P3062761535577626641

namespace A212772

/-- `A011886(n+1)+∑[1-∑[n]]` -/
def P3062761535577626641.Spec : Prop :=
  ∀ n, P3062761535577626641.a n = A212772 n

end A212772

/-! ## A212772.P17498885864809358013

`∑[A033638(n)-A004526(A028242(5*n))]`
-/

namespace A212772.P17498885864809358013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A004526 (A028242 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212772.P17498885864809358013

namespace A212772

/-- `∑[A033638(n)-A004526(A028242(5*n))]` -/
def P17498885864809358013.Spec : Prop :=
  ∀ n, P17498885864809358013.a n = A212772 n

end A212772

/-! ## A212772.P16519401675031831578

`A008619(A035106(n+1))+A175287(n+1)-A002061(n+1)`
-/

namespace A212772.P16519401675031831578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035106 (n + 1)).toNat + (A175287 (n + 1) - A002061 (n + 1))

end

end A212772.P16519401675031831578

namespace A212772

/-- `A008619(A035106(n+1))+A175287(n+1)-A002061(n+1)` -/
def P16519401675031831578.Spec : Prop :=
  ∀ n, P16519401675031831578.a n = A212772 n

end A212772

/-! ## A212772.P14559465030583002167

`∑[A008619(∑[n])-A032766(n)]`
-/

namespace A212772.P14559465030583002167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j) - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212772.P14559465030583002167

namespace A212772

/-- `∑[A008619(∑[n])-A032766(n)]` -/
def P14559465030583002167.Spec : Prop :=
  ∀ n, P14559465030583002167.a n = A212772 n

end A212772

/-!
# A212774: Amounts (in cents) of coins in denominations 1, 5, 10, 25, and 50 (cents) which, when using the minimal number of coins, have equal numbers of all denominations used.

The programs for A212774, there is no canonical definition to state claims against.
-/

/-! ## A212774.P10247268802525413384

`lt[A217657(2*n), A060502(A252679(n+1))]`
-/

namespace A212774.P10247268802525413384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A252679 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212774.P10247268802525413384

/-!
# A212775: 

The programs for A212775, there is no canonical definition to state claims against.
-/

/-! ## A212775.P1554503250024093542

`A002577(2^n)`
-/

namespace A212775.P1554503250024093542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 (2 ^ n)

end

end A212775.P1554503250024093542

/-!
# A212776: Half the number of 0..2 arrays of length n+2 with second differences nonzero.

The programs for A212776, the canonical program `A212776.P11630601111888427783` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212776 has offset 1).

The definition of A212776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212776.P11630601111888427783

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)` with `a(0)=11, a(1)=27, a(2)=66, a(3)=162`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A212776

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)` -/
def P11630601111888427783.Spec : Prop :=
  ∀ n, (P11630601111888427783.a n : ℤ) = A212776 (n + 1)

theorem P11630601111888427783.correct : P11630601111888427783.Spec := by
  intro n
  simp only [A212776, Nat.add_sub_cancel]

end A212776

/-! ## A212776.P10341442226807534721

`A212782(∑[n+2])`
-/

namespace A212776.P10341442226807534721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212776.P10341442226807534721

namespace A212776

/-- `A212782(∑[n+2])` -/
def P10341442226807534721.Spec : Prop :=
  ∀ n, P10341442226807534721.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P11518913294537867469

`record[A212782(A000096(A101504(n)))]`
-/

namespace A212776.P11518913294537867469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A101504 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P11518913294537867469

namespace A212776

/-- `record[A212782(A000096(A101504(n)))]` -/
def P11518913294537867469.Spec : Prop :=
  ∀ n, P11518913294537867469.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P12587800391571757053

`record[A212782(A000096(A109785(n)))]`
-/

namespace A212776.P12587800391571757053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A109785 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P12587800391571757053

namespace A212776

/-- `record[A212782(A000096(A109785(n)))]` -/
def P12587800391571757053.Spec : Prop :=
  ∀ n, P12587800391571757053.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P9077524978199230636

`record[A212782(A000096(A133310(n)))]`
-/

namespace A212776.P9077524978199230636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P9077524978199230636

namespace A212776

/-- `record[A212782(A000096(A133310(n)))]` -/
def P9077524978199230636.Spec : Prop :=
  ∀ n, P9077524978199230636.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P10281621178546926292

`record[A212782(A000096(A324347(n)))]`
-/

namespace A212776.P10281621178546926292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P10281621178546926292

namespace A212776

/-- `record[A212782(A000096(A324347(n)))]` -/
def P10281621178546926292.Spec : Prop :=
  ∀ n, P10281621178546926292.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P12245176444051922137

`record[A212782(A000096(A344180(n)))]`
-/

namespace A212776.P12245176444051922137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P12245176444051922137

namespace A212776

/-- `record[A212782(A000096(A344180(n)))]` -/
def P12245176444051922137.Spec : Prop :=
  ∀ n, P12245176444051922137.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P2046525990721253654

`record[A212782(A000096(A002260(n+1)))]`
-/

namespace A212776.P2046525990721253654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P2046525990721253654

namespace A212776

/-- `record[A212782(A000096(A002260(n+1)))]` -/
def P2046525990721253654.Spec : Prop :=
  ∀ n, P2046525990721253654.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P12113793332297969392

`record[A212782(A000096(A032742(n+1)))]`
-/

namespace A212776.P12113793332297969392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P12113793332297969392

namespace A212776

/-- `record[A212782(A000096(A032742(n+1)))]` -/
def P12113793332297969392.Spec : Prop :=
  ∀ n, P12113793332297969392.a n = A212776 (n + 1)

end A212776

/-! ## A212776.P11989972463269882558

`record[A212782(A000096(A075119(n+1)))]`
-/

namespace A212776.P11989972463269882558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (A075119 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212776.P11989972463269882558

namespace A212776

/-- `record[A212782(A000096(A075119(n+1)))]` -/
def P11989972463269882558.Spec : Prop :=
  ∀ n, P11989972463269882558.a n = A212776 (n + 1)

end A212776

/-!
# A212777: Half the number of 0..3 arrays of length n+2 with second differences nonzero.

The programs for A212777, there is no canonical definition to state claims against.
-/

/-! ## A212777.P15289504615599587518

`A212782(∑[n+3]+1)`
-/

namespace A212777.P15289504615599587518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212777.P15289504615599587518

/-! ## A212777.P12601660530938021100

`lcm((-1)^n, A212782(A055999(n)+4))`
-/

namespace A212777.P12601660530938021100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A212782 (A055999 n + 4).toNat)

end

end A212777.P12601660530938021100

/-! ## A212777.P1110713444699390643

`A212782(A055999(n)+4)%A000108(n+8)`
-/

namespace A212777.P1110713444699390643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212782 (A055999 n + 4).toNat) (A000108 (n + 8))

end

end A212777.P1110713444699390643

/-! ## A212777.P9375278065167608356

`A212782(A055999(n)+4)+A004524(C(2, n²))`
-/

namespace A212777.P9375278065167608356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A055999 n + 4).toNat + A004524 (Nat.choose 2 (n ^ 2))

end

end A212777.P9375278065167608356

/-! ## A212777.P7208321745062913656

`A251672(A007920(n))+A212782(A055999(n)+4)`
-/

namespace A212777.P7208321745062913656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (A007920 n).toNat + A212782 (A055999 n + 4).toNat

end

end A212777.P7208321745062913656

/-!
# A212778: Half the number of 0..4 arrays of length n+2 with second differences nonzero.

The programs for A212778, there is no canonical definition to state claims against.
-/

/-! ## A212778.P17408493479140027788

`A212782(A027379(n+2))`
-/

namespace A212778.P17408493479140027788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A027379 (n + 2)).toNat

end

end A212778.P17408493479140027788

/-! ## A212778.P2616183691852939515

`A212782(A055998(n+2))`
-/

namespace A212778.P2616183691852939515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A055998 (n + 2)).toNat

end

end A212778.P2616183691852939515

/-! ## A212778.P15365072725073629424

`A212782(A155212(n)+5)`
-/

namespace A212778.P15365072725073629424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A155212 n + 5).toNat

end

end A212778.P15365072725073629424

/-! ## A212778.P1655095771352475561

`A212782(A056000(n)+7)`
-/

namespace A212778.P1655095771352475561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A056000 n + 7).toNat

end

end A212778.P1655095771352475561

/-! ## A212778.P6849000769113376435

`A212782(Δ[A034857(n+1)])`
-/

namespace A212778.P6849000769113376435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n).toNat

end

end A212778.P6849000769113376435

/-! ## A212778.P16426445034023147549

`A212782(A052905(n+1)+2)`
-/

namespace A212778.P16426445034023147549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A052905 (n + 1) + 2).toNat

end

end A212778.P16426445034023147549

/-! ## A212778.P11800864857834146561

`A212782(A000217(n+4)-3)`
-/

namespace A212778.P11800864857834146561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000217 (n + 4) - 3).toNat

end

end A212778.P11800864857834146561

/-! ## A212778.P8043021113874003107

`A212782(A046691(n+1)+n+5)`
-/

namespace A212778.P8043021113874003107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A046691 (n + 1) + (n + 5 : ℤ)).toNat

end

end A212778.P8043021113874003107

/-! ## A212778.P1909269618759374567

`A212782(2*n+1+A167499(n)+n)`
-/

namespace A212778.P1909269618759374567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 ((2 * n + 1 : ℤ) + (A167499 n + (n : ℤ))).toNat

end

end A212778.P1909269618759374567

/-!
# A212779: Half the number of 0..5 arrays of length n+2 with second differences nonzero.

The programs for A212779, there is no canonical definition to state claims against.
-/

/-! ## A212779.P15814737339251632212

`A212782(A046691(n+3))`
-/

namespace A212779.P15814737339251632212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A046691 (n + 3)).toNat

end

end A212779.P15814737339251632212

/-! ## A212779.P17440086417423498318

`A212782(A056115(n)+11)`
-/

namespace A212779.P17440086417423498318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A056115 n + 11).toNat

end

end A212779.P17440086417423498318

/-! ## A212779.P1018736148725909217

`A212782(Δ[A023545(n+1)])`
-/

namespace A212779.P1018736148725909217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n).toNat

end

end A212779.P1018736148725909217

/-! ## A212779.P13737747242884377879

`A212782(A052905(n+2)+1)`
-/

namespace A212779.P13737747242884377879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A052905 (n + 2) + 1).toNat

end

end A212779.P13737747242884377879

/-! ## A212779.P10006501595342217111

`A212782(A055998(n+3)-1)`
-/

namespace A212779.P10006501595342217111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A055998 (n + 3) - 1).toNat

end

end A212779.P10006501595342217111

/-! ## A212779.P4425815556222617523

`A212782(A000124(n+5)-5)`
-/

namespace A212779.P4425815556222617523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000124 (n + 5) - 5).toNat

end

end A212779.P4425815556222617523

/-! ## A212779.P17457582242918535119

`A212782(Δ[A034857(n+2)]-1)`
-/

namespace A212779.P17457582242918535119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n - 1).toNat

end

end A212779.P17457582242918535119

/-! ## A212779.P17641631540984348317

`A212782(A010000(n+3)-A161680(n+1))`
-/

namespace A212779.P17641631540984348317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A010000 (n + 3) - A161680 (n + 1)).toNat

end

end A212779.P17641631540984348317

/-!
# A212780: Half the number of 0..6 arrays of length n+2 with second differences nonzero.

The programs for A212780, there is no canonical definition to state claims against.
-/

/-! ## A212780.P11866875637484218443

`A212782(A052905(n+3))`
-/

namespace A212780.P11866875637484218443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A052905 (n + 3)).toNat

end

end A212780.P11866875637484218443

/-! ## A212780.P14553482406923061615

`A212782(A056119(n)+16)`
-/

namespace A212780.P14553482406923061615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A056119 n + 16).toNat

end

end A212780.P14553482406923061615

/-! ## A212780.P6475062274216118330

`A212782(A046691(n+4)-1)`
-/

namespace A212780.P6475062274216118330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A046691 (n + 4) - 1).toNat

end

end A212780.P6475062274216118330

/-! ## A212780.P15026013524530560500

`A212782(A034856(n+5)-3)`
-/

namespace A212780.P15026013524530560500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A034856 (n + 5) - 3).toNat

end

end A212780.P15026013524530560500

/-! ## A212780.P17487120274852474268

`A212782(A000124(n+6)-6)`
-/

namespace A212780.P17487120274852474268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000124 (n + 6) - 6).toNat

end

end A212780.P17487120274852474268

/-! ## A212780.P6383499019094060286

`A212782(Δ[Δ[A006504(n+1)]])`
-/

namespace A212780.P6383499019094060286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n).toNat

end

end A212780.P6383499019094060286

/-! ## A212780.P6618956119259546039

`A212782(Δ[A023551(n+1)]+1)`
-/

namespace A212780.P6618956119259546039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n + 1).toNat

end

end A212780.P6618956119259546039

/-! ## A212780.P11777196960225297327

`A212782(Δ[A023545(n+2)]-1)`
-/

namespace A212780.P11777196960225297327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n - 1).toNat

end

end A212780.P11777196960225297327

/-! ## A212780.P2727248401983945720

`A212782(Δ[A026054(n+3)]+1)`
-/

namespace A212780.P2727248401983945720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n + 1).toNat

end

end A212780.P2727248401983945720

/-! ## A212780.P58185483425092325

`A212782(A000096(n+4)+n+2)`
-/

namespace A212780.P58185483425092325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A212780.P58185483425092325

/-!
# A212781: Half the number of 0..7 arrays of length n+2 with second differences nonzero.

The programs for A212781, there is no canonical definition to state claims against.
-/

/-! ## A212781.P8902389782157295761

`A212782(A055999(n+4))`
-/

namespace A212781.P8902389782157295761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A055999 (n + 4)).toNat

end

end A212781.P8902389782157295761

/-! ## A212781.P12411446115325255295

`A212782(Δ[A023551(n+2)])`
-/

namespace A212781.P12411446115325255295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n).toNat

end

end A212781.P12411446115325255295

/-! ## A212781.P5913207854449795242

`A212782(Δ[A026054(n+4)])`
-/

namespace A212781.P5913207854449795242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n).toNat

end

end A212781.P5913207854449795242

/-! ## A212781.P6724969920298989296

`A212782(A046691(n+5)-2)`
-/

namespace A212781.P6724969920298989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A046691 (n + 5) - 2).toNat

end

end A212781.P6724969920298989296

/-! ## A212781.P1747478969572391272

`A212782(A000096(n+6)-5)`
-/

namespace A212781.P1747478969572391272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000096 (n + 6) - 5).toNat

end

end A212781.P1747478969572391272

/-! ## A212781.P2009912331170657435

`A212782(A000124(n+7)-7)`
-/

namespace A212781.P2009912331170657435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000124 (n + 7) - 7).toNat

end

end A212781.P2009912331170657435

/-! ## A212781.P4959163140929761937

`A212782(A167614(n+5)+n-2)`
-/

namespace A212781.P4959163140929761937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A212781.P4959163140929761937

/-! ## A212781.P17879065221094789892

`A212782(A008585(n+5)+A155212(n)+5)`
-/

namespace A212781.P17879065221094789892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A008585 (n + 5) + (A155212 n + 5)).toNat

end

end A212781.P17879065221094789892

/-!
# A212783: Half the number of 0..n arrays of length 4 with second differences nonzero.

The programs for A212783, there is no canonical definition to state claims against.
-/

/-! ## A212783.P13360891921411685053

`ceil(A212784(n+1)²/A212785(n+1))`
-/

namespace A212783.P13360891921411685053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212784 (n + 1) ^ 2 : ℚ) / (A212785 (n + 1) : ℚ)⌉

end

end A212783.P13360891921411685053

/-! ## A212783.P14740129237995892804

`A212782(∑[n+1]+2)`
-/

namespace A212783.P14740129237995892804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212783.P14740129237995892804

/-! ## A212783.P13707809877406341926

`or(A000007(n), A212782(A133263(n+1)))`
-/

namespace A212783.P13707809877406341926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A212782 (A133263 (n + 1)).toNat)

end

end A212783.P13707809877406341926

/-! ## A212783.P15192553631256400496

`A010059(n*A010059(n))*A212782(A133263(n+1))`
-/

namespace A212783.P15192553631256400496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 ((n : ℤ) * A010059 n).toNat * A212782 (A133263 (n + 1)).toNat

end

end A212783.P15192553631256400496

/-! ## A212783.P14527976070017749903

`A057237(A142229(n+1)+1)*A212782(A133263(n+1))`
-/

namespace A212783.P14527976070017749903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A142229 (n + 1) + 1).toNat * A212782 (A133263 (n + 1)).toNat

end

end A212783.P14527976070017749903

/-!
# A212784: Half the number of 0..n arrays of length 5 with second differences nonzero.

The programs for A212784, there is no canonical definition to state claims against.
-/

/-! ## A212784.P11109878484793742624

`A212782(∑[n+2]+4)`
-/

namespace A212784.P11109878484793742624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212784.P11109878484793742624

/-! ## A212784.P14680060493149713371

`lcm(2, A212782(A167614(n+1)))`
-/

namespace A212784.P14680060493149713371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212782 (A167614 (n + 1)).toNat)

end

end A212784.P14680060493149713371

/-! ## A212784.P9506711643516220386

`and(or(n, -2), A212782(A167499(n)+n))`
-/

namespace A212784.P9506711643516220386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor (n : ℤ) (-2)) (A212782 (A167499 n + (n : ℤ)).toNat)

end

end A212784.P9506711643516220386

/-! ## A212784.P11521678857556630384

`A212782(A167614(n+1))%A016901(n)`
-/

namespace A212784.P11521678857556630384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212782 (A167614 (n + 1)).toNat) (A016901 n)

end

end A212784.P11521678857556630384

/-! ## A212784.P5473781508370612884

`A212782(A046691(n)+7)%A017154(n)`
-/

namespace A212784.P5473781508370612884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212782 (A046691 n + 7).toNat) (A017154 n)

end

end A212784.P5473781508370612884

/-! ## A212784.P5794680580979286778

`A212782(A000217(n+2)+3)%A212778(n+1)`
-/

namespace A212784.P5794680580979286778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212782 (A000217 (n + 2) + 3).toNat) (A212778 (n + 1))

end

end A212784.P5794680580979286778

/-! ## A212784.P3420025021021329192

`A000041(C(2, n+2))*A212782(A167614(n+1))`
-/

namespace A212784.P3420025021021329192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A212782 (A167614 (n + 1)).toNat

end

end A212784.P3420025021021329192

/-! ## A212784.P7549603847750739866

`A000035(A216055(n+1))*A212782(A167614(n+1))`
-/

namespace A212784.P7549603847750739866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A216055 (n + 1)).toNat * A212782 (A167614 (n + 1)).toNat

end

end A212784.P7549603847750739866

/-!
# A212785: Half the number of 0..n arrays of length 6 with second differences nonzero.

The programs for A212785, there is no canonical definition to state claims against.
-/

/-! ## A212785.P11395340539223196670

`A212782(A052905(n)+9)`
-/

namespace A212785.P11395340539223196670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A052905 n + 9).toNat

end

end A212785.P11395340539223196670

/-! ## A212785.P9862610804418724039

`A212782(A055999(n)+10)`
-/

namespace A212785.P9862610804418724039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A055999 n + 10).toNat

end

end A212785.P9862610804418724039

/-! ## A212785.P15014947818257517885

`A212782(A167614(n+2)+1)`
-/

namespace A212785.P15014947818257517885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A167614 (n + 2) + 1).toNat

end

end A212785.P15014947818257517885

/-! ## A212785.P2660968414176597715

`A212782(A167499(n+2)-1)`
-/

namespace A212785.P2660968414176597715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A167499 (n + 2) - 1).toNat

end

end A212785.P2660968414176597715

/-! ## A212785.P11061638441341304526

`A212782(A166136(n+2)-2)`
-/

namespace A212785.P11061638441341304526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A166136 (n + 2) - 2).toNat

end

end A212785.P11061638441341304526

/-! ## A212785.P6044481110444414426

`A212782(A000124(n+3)+3)`
-/

namespace A212785.P6044481110444414426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000124 (n + 3) + 3).toNat

end

end A212785.P6044481110444414426

/-! ## A212785.P8324751116993748114

`A212782(A000217(n+3)+4)`
-/

namespace A212785.P8324751116993748114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000217 (n + 3) + 4).toNat

end

end A212785.P8324751116993748114

/-! ## A212785.P3528176847406974093

`A212782(A166136(n+1)+1+n)`
-/

namespace A212785.P3528176847406974093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A212785.P3528176847406974093

/-! ## A212785.P14506292830309169644

`A212782(Δ[A023545(n+1)-n²])`
-/

namespace A212785.P14506292830309169644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n).toNat

end

end A212785.P14506292830309169644

/-! ## A212785.P4350324310249092424

`A212782(A038722(Δ[A034857(n+1)]))`
-/

namespace A212785.P4350324310249092424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A212785.P4350324310249092424

/-!
# A212786: Half the number of 0..n arrays of length 7 with second differences nonzero.

The programs for A212786, there is no canonical definition to state claims against.
-/

/-! ## A212786.P7326147514579742059

`A212782(A167499(n+3))`
-/

namespace A212786.P7326147514579742059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A167499 (n + 3)).toNat

end

end A212786.P7326147514579742059

/-! ## A212786.P240655584721355560

`A212782(A155212(n)+13)`
-/

namespace A212786.P240655584721355560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A155212 n + 13).toNat

end

end A212786.P240655584721355560

/-! ## A212786.P13337810923186662276

`A212782(A056000(n)+15)`
-/

namespace A212786.P13337810923186662276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A056000 n + 15).toNat

end

end A212786.P13337810923186662276

/-! ## A212786.P6515383717367539881

`A212782(A166136(n+3)-1)`
-/

namespace A212786.P6515383717367539881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A166136 (n + 3) - 1).toNat

end

end A212786.P6515383717367539881

/-! ## A212786.P4467975965272991430

`A212782(A000217(n+4)+5)`
-/

namespace A212786.P4467975965272991430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000217 (n + 4) + 5).toNat

end

end A212786.P4467975965272991430

/-! ## A212786.P4498125603634113954

`A212782(A027379(n+2)+8)`
-/

namespace A212786.P4498125603634113954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A027379 (n + 2) + 8).toNat

end

end A212786.P4498125603634113954

/-! ## A212786.P7616297189994491299

`A212782(A052905(n+3)-(2*n+1))`
-/

namespace A212786.P7616297189994491299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A212786.P7616297189994491299

/-! ## A212786.P16143996877987889870

`A212782(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A212786.P16143996877987889870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A212786.P16143996877987889870

/-! ## A212786.P4357901652470314436

`A212782(A038722(Δ[A023545(n+1)]))`
-/

namespace A212786.P4357901652470314436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A212786.P4357901652470314436

/-!
# A212787: Half the number of 0..n arrays of length 8 with second differences nonzero.

The programs for A212787, there is no canonical definition to state claims against.
-/

/-! ## A212787.P3779559338681628802

`A212782(A166136(n+4))`
-/

namespace A212787.P3779559338681628802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A166136 (n + 4)).toNat

end

end A212787.P3779559338681628802

/-! ## A212787.P10406715432153902934

`A212782(A167499(n+4)+1)`
-/

namespace A212787.P10406715432153902934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A167499 (n + 4) + 1).toNat

end

end A212787.P10406715432153902934

/-! ## A212787.P7542552230971859376

`A212782(A000124(n+5)+5)`
-/

namespace A212787.P7542552230971859376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000124 (n + 5) + 5).toNat

end

end A212787.P7542552230971859376

/-! ## A212787.P4222373072602782794

`A212782(A000217(n+5)+6)`
-/

namespace A212787.P4222373072602782794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000217 (n + 5) + 6).toNat

end

end A212787.P4222373072602782794

/-! ## A212787.P16715195917356023233

`A212782(A161680(n+6)+6)`
-/

namespace A212787.P16715195917356023233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A161680 (n + 6) + 6).toNat

end

end A212787.P16715195917356023233

/-!
# A212788: Half the number of 0..n arrays of length 9 with second differences nonzero.

The programs for A212788, there is no canonical definition to state claims against.
-/

/-! ## A212788.P2563302826926490896

`A212782(A166136(n+5)+1)`
-/

namespace A212788.P2563302826926490896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A166136 (n + 5) + 1).toNat

end

end A212788.P2563302826926490896

/-! ## A212788.P8998331944172914570

`A212782(A167499(n+5)+2)`
-/

namespace A212788.P8998331944172914570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A167499 (n + 5) + 2).toNat

end

end A212788.P8998331944172914570

/-! ## A212788.P8634041607553115212

`A212782(A000124(n+6)+6)`
-/

namespace A212788.P8634041607553115212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000124 (n + 6) + 6).toNat

end

end A212788.P8634041607553115212

/-! ## A212788.P11157631444395542730

`A212782(A000217(n+6)+7)`
-/

namespace A212788.P11157631444395542730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A000217 (n + 6) + 7).toNat

end

end A212788.P11157631444395542730

/-! ## A212788.P5856600638808968975

`A212782(A161680(n+7)+7)`
-/

namespace A212788.P5856600638808968975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212782 (A161680 (n + 7) + 7).toNat

end

end A212788.P5856600638808968975

/-!
# A212789: Number of endofunctions on [n] with distinct cycle lengths.

The programs for A212789, there is no canonical definition to state claims against.
-/

/-! ## A212789.P18155370313579093671

`A144156(n)+A008624(A243675(n))`
-/

namespace A212789.P18155370313579093671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144156 n + A008624 (A243675 n).toNat

end

end A212789.P18155370313579093671

/-! ## A212789.P2793203600298699563

`A348268(A326604(n)-A000009(n))`
-/

namespace A212789.P2793203600298699563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 (A326604 n - A000009 n).toNat

end

end A212789.P2793203600298699563

/-!
# A212791: Central binomial coefficient CB(n) purged of all primes exceeding (n+1)/2.

The programs for A212791, the canonical program `A212791.P5133466975691796848` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212791 has offset 1).

The definition of A212791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212791.P18121495245172953609

`A001405(n+1)/A212792(n+1)`
-/

namespace A212791.P18121495245172953609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A212792 (n + 1) : ℚ)

end

end A212791.P18121495245172953609

namespace A212791

/-- `A001405(n+1)/A212792(n+1)` -/
def P18121495245172953609.Spec : Prop :=
  ∀ n, P18121495245172953609.a n = (A212791 (n + 1) : ℚ)

end A212791

/-! ## A212791.P5133466975691796848

`gcd(A126930(n+1), A182923(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A212791

/-- `gcd(A126930(n+1), A182923(n+1))` -/
def P5133466975691796848.Spec : Prop :=
  ∀ n, (P5133466975691796848.a n : ℤ) = A212791 (n + 1)

theorem P5133466975691796848.correct : P5133466975691796848.Spec := by
  intro n
  simp only [A212791, Nat.add_sub_cancel]

end A212791

/-! ## A212791.P2775266459961131188

`gcd(record[A046899(n)], A055772(n+1))`
-/

namespace A212791.P2775266459961131188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A055772 (n + 1))

end

end A212791.P2775266459961131188

namespace A212791

/-- `gcd(record[A046899(n)], A055772(n+1))` -/
def P2775266459961131188.Spec : Prop :=
  ∀ n, (P2775266459961131188.a n : ℤ) = A212791 (n + 1)

end A212791

/-! ## A212791.P10835431735143413763

`gcd(∏[A008619(n)], A001405(n+1))`
-/

namespace A212791.P10835431735143413763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A001405 (n + 1))

end

end A212791.P10835431735143413763

namespace A212791

/-- `gcd(∏[A008619(n)], A001405(n+1))` -/
def P10835431735143413763.Spec : Prop :=
  ∀ n, (P10835431735143413763.a n : ℤ) = A212791 (n + 1)

end A212791

/-! ## A212791.P9072331538193265819

`gcd(A001405(n+1), A001705(n))`
-/

namespace A212791.P9072331538193265819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1)) (A001705 n)

end

end A212791.P9072331538193265819

namespace A212791

/-- `gcd(A001405(n+1), A001705(n))` -/
def P9072331538193265819.Spec : Prop :=
  ∀ n, (P9072331538193265819.a n : ℤ) = A212791 (n + 1)

end A212791

/-!
# A212792: Product of all primes in the interval ((n+1)/2,n].

The programs for A212792, the canonical program `A212792.P12800199492162538154` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212792 has offset 1).

The definition of A212792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212792.P12800199492162538154

`A055773((n-1)%2+n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A212792

/-- `A055773((n-1)%2+n+1)` -/
def P12800199492162538154.Spec : Prop :=
  ∀ n, P12800199492162538154.a n = A212792 (n + 1)

theorem P12800199492162538154.correct : P12800199492162538154.Spec := by
  intro n
  simp only [A212792, Nat.add_sub_cancel]

end A212792

/-! ## A212792.P9650535560824817660

`A055773(A014684(n+2))`
-/

namespace A212792.P9650535560824817660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (A014684 (n + 2)).toNat

end

end A212792.P9650535560824817660

namespace A212792

/-- `A055773(A014684(n+2))` -/
def P9650535560824817660.Spec : Prop :=
  ∀ n, P9650535560824817660.a n = A212792 (n + 1)

end A212792

/-! ## A212792.P7086512008780510511

`gcd(Δ[A055773(n+1)], A055773(n+1))`
-/

namespace A212792.P7086512008780510511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A055773 (n + 1))

end

end A212792.P7086512008780510511

namespace A212792

/-- `gcd(Δ[A055773(n+1)], A055773(n+1))` -/
def P7086512008780510511.Spec : Prop :=
  ∀ n, (P7086512008780510511.a n : ℤ) = A212792 (n + 1)

end A212792

/-! ## A212792.P8496739325114712912

`A001405(n+1)/A212791(n+1)`
-/

namespace A212792.P8496739325114712912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A212791 (n + 1) : ℚ)

end

end A212792.P8496739325114712912

namespace A212792

/-- `A001405(n+1)/A212791(n+1)` -/
def P8496739325114712912.Spec : Prop :=
  ∀ n, P8496739325114712912.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P7503374245090802398

`A210736(n+2)/A212791(n+1)`
-/

namespace A212792.P7503374245090802398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 2) : ℚ) / (A212791 (n + 1) : ℚ)

end

end A212792.P7503374245090802398

namespace A212792

/-- `A210736(n+2)/A212791(n+1)` -/
def P7503374245090802398.Spec : Prop :=
  ∀ n, P7503374245090802398.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P1759698159576958912

`A034386(n+1)/A300951(n+2)`
-/

namespace A212792.P1759698159576958912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A300951 (n + 2) : ℚ)

end

end A212792.P1759698159576958912

namespace A212792

/-- `A034386(n+1)/A300951(n+2)` -/
def P1759698159576958912.Spec : Prop :=
  ∀ n, P1759698159576958912.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P3960742200180333228

`∏[A089026(n+1)]/A300951(n+2)`
-/

namespace A212792.P3960742200180333228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A300951 (n + 2) : ℚ)

end

end A212792.P3960742200180333228

namespace A212792

/-- `∏[A089026(n+1)]/A300951(n+2)` -/
def P3960742200180333228.Spec : Prop :=
  ∀ n, P3960742200180333228.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P1357877819661699004

`A300951(2*(n+1))/A300951(n+2)`
-/

namespace A212792.P1357877819661699004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * (n + 1)) : ℚ) / (A300951 (n + 2) : ℚ)

end

end A212792.P1357877819661699004

namespace A212792

/-- `A300951(2*(n+1))/A300951(n+2)` -/
def P1357877819661699004.Spec : Prop :=
  ∀ n, P1357877819661699004.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P9189639508143462805

`A034386(n+1)/A034386(∑[and(1, n+1)])`
-/

namespace A212792.P9189639508143462805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A212792.P9189639508143462805

namespace A212792

/-- `A034386(n+1)/A034386(∑[and(1, n+1)])` -/
def P9189639508143462805.Spec : Prop :=
  ∀ n, P9189639508143462805.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P18219628487439254568

`A034386(n+1)/A034386(A008619(n))`
-/

namespace A212792.P18219628487439254568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 (A008619 n).toNat : ℚ)

end

end A212792.P18219628487439254568

namespace A212792

/-- `A034386(n+1)/A034386(A008619(n))` -/
def P18219628487439254568.Spec : Prop :=
  ∀ n, P18219628487439254568.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P5447688229711276389

`A034386(n+1)/A034386(A004526(n)+1)`
-/

namespace A212792.P5447688229711276389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 (A004526 n + 1).toNat : ℚ)

end

end A212792.P5447688229711276389

namespace A212792

/-- `A034386(n+1)/A034386(A004526(n)+1)` -/
def P5447688229711276389.Spec : Prop :=
  ∀ n, P5447688229711276389.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P4168918628766701194

`A034386(n+1)/A034386(A110654(n+1))`
-/

namespace A212792.P4168918628766701194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 (A110654 (n + 1)).toNat : ℚ)

end

end A212792.P4168918628766701194

namespace A212792

/-- `A034386(n+1)/A034386(A110654(n+1))` -/
def P4168918628766701194.Spec : Prop :=
  ∀ n, P4168918628766701194.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P6565904025100344558

`A002110(A000720(n+1))/A300951(n+2)`
-/

namespace A212792.P6565904025100344558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A000720 (n + 1)).toNat : ℚ) / (A300951 (n + 2) : ℚ)

end

end A212792.P6565904025100344558

namespace A212792

/-- `A002110(A000720(n+1))/A300951(n+2)` -/
def P6565904025100344558.Spec : Prop :=
  ∀ n, P6565904025100344558.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P15721745214799331905

`A002110(A056172(2*(n+1)))/A002110(A056172(n+2))`
-/

namespace A212792.P15721745214799331905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A056172 (2 * (n + 1))).toNat : ℚ) / (A002110 (A056172 (n + 2)).toNat : ℚ)

end

end A212792.P15721745214799331905

namespace A212792

/-- `A002110(A056172(2*(n+1)))/A002110(A056172(n+2))` -/
def P15721745214799331905.Spec : Prop :=
  ∀ n, P15721745214799331905.a n = (A212792 (n + 1) : ℚ)

end A212792

/-! ## A212792.P5545216565734018535

`A201146(∑[or(1, n)])`
-/

namespace A212792.P5545216565734018535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212792.P5545216565734018535

namespace A212792

/-- `A201146(∑[or(1, n)])` -/
def P5545216565734018535.Spec : Prop :=
  ∀ n, P5545216565734018535.a n = A212792 (n + 1)

end A212792

/-! ## A212792.P18079288136082610483

`A201146(A000982(n+1))`
-/

namespace A212792.P18079288136082610483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201146 (A000982 (n + 1)).toNat

end

end A212792.P18079288136082610483

namespace A212792

/-- `A201146(A000982(n+1))` -/
def P18079288136082610483.Spec : Prop :=
  ∀ n, P18079288136082610483.a n = A212792 (n + 1)

end A212792

/-! ## A212792.P12350025752745462253

`A056040(n+1)/gcd(A055772(n+2), A056040(n+1))`
-/

namespace A212792.P12350025752745462253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (n + 1) : ℚ) / (Int.gcd (A055772 (n + 2)) (A056040 (n + 1)) : ℚ)

end

end A212792.P12350025752745462253

namespace A212792

/-- `A056040(n+1)/gcd(A055772(n+2), A056040(n+1))` -/
def P12350025752745462253.Spec : Prop :=
  ∀ n, P12350025752745462253.a n = (A212792 (n + 1) : ℚ)

end A212792

/-!
# A212793: Characteristic function of cubefree numbers, A004709.

The programs for A212793, the canonical program `A212793.P4153428830166235404` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212793 has offset 1).

The definition of A212793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212793.P4153428830166235404

`abs(A053864(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212793

/-- `abs(A053864(n+1))` -/
def P4153428830166235404.Spec : Prop :=
  ∀ n, P4153428830166235404.a n = A212793 (n + 1)

theorem P4153428830166235404.correct : P4153428830166235404.Spec := by
  intro n
  simp only [A212793, Nat.add_sub_cancel]

end A212793

/-! ## A212793.P8943237512122614544

`A000007(A000005(n+1)-A073184(n+1))`
-/

namespace A212793.P8943237512122614544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000005 (n + 1) - A073184 (n + 1)).toNat

end

end A212793.P8943237512122614544

namespace A212793

/-- `A000007(A000005(n+1)-A073184(n+1))` -/
def P8943237512122614544.Spec : Prop :=
  ∀ n, P8943237512122614544.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P7871994371727255358

`∏{e}[n+1, round(1/#)]`
-/

namespace A212793.P7871994371727255358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))

end

end A212793.P7871994371727255358

namespace A212793

/-- `∏{e}[n+1, round(1/#)]` -/
def P7871994371727255358.Spec : Prop :=
  ∀ n, P7871994371727255358.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P1827127220598962712

`∏{e}[n+1, #!²]%3`
-/

namespace A212793.P1827127220598962712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) ^ 2) % 3

end

end A212793.P1827127220598962712

namespace A212793

/-- `∏{e}[n+1, #!²]%3` -/
def P1827127220598962712.Spec : Prop :=
  ∀ n, (P1827127220598962712.a n : ℤ) = A212793 (n + 1)

end A212793

/-! ## A212793.P1036793558566242379

`∏{e}[n+1, C(#, #!)]²`
-/

namespace A212793.P1036793558566242379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p) (Nat.factorial (Nat.factorization (f1 n) p))) ^ 2

end

end A212793.P1036793558566242379

namespace A212793

/-- `∏{e}[n+1, C(#, #!)]²` -/
def P1036793558566242379.Spec : Prop :=
  ∀ n, (P1036793558566242379.a n : ℤ) = A212793 (n + 1)

end A212793

/-! ## A212793.P5178309656649271401

`floor(∏{e}[n+1, #/#!])`
-/

namespace A212793.P5178309656649271401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (Nat.factorial (Nat.factorization (f1 n) p) : ℚ)⌋

end

end A212793.P5178309656649271401

namespace A212793

/-- `floor(∏{e}[n+1, #/#!])` -/
def P5178309656649271401.Spec : Prop :=
  ∀ n, P5178309656649271401.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P8323138098589107699

`and(1, ∏{e}[n+1, (#-1)!])`
-/

namespace A212793.P8323138098589107699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial ((Nat.factorization (f1 n) p : ℤ) - 1).toNat)

end

end A212793.P8323138098589107699

namespace A212793

/-- `and(1, ∏{e}[n+1, (#-1)!])` -/
def P8323138098589107699.Spec : Prop :=
  ∀ n, (P8323138098589107699.a n : ℤ) = A212793 (n + 1)

end A212793

/-! ## A212793.P15978034225664811641

`∏{e}[n+1, C(C(3, #), 3)]²`
-/

namespace A212793.P15978034225664811641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.choose 3 (Nat.factorization (f1 n) p)) 3) ^ 2

end

end A212793.P15978034225664811641

namespace A212793

/-- `∏{e}[n+1, C(C(3, #), 3)]²` -/
def P15978034225664811641.Spec : Prop :=
  ∀ n, (P15978034225664811641.a n : ℤ) = A212793 (n + 1)

end A212793

/-! ## A212793.P6565186743525935812

`floor(∏{e}[n+1, #^(2-#)])`
-/

namespace A212793.P6565186743525935812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (2 - (Nat.factorization (f1 n) p : ℤ) : ℤ)⌋

end

end A212793.P6565186743525935812

namespace A212793

/-- `floor(∏{e}[n+1, #^(2-#)])` -/
def P6565186743525935812.Spec : Prop :=
  ∀ n, P6565186743525935812.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P9874946700274973822

`round(∏{e}[n+1, #^(2-#)])`
-/

namespace A212793.P9874946700274973822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (2 - (Nat.factorization (f1 n) p : ℤ) : ℤ))

end

end A212793.P9874946700274973822

namespace A212793

/-- `round(∏{e}[n+1, #^(2-#)])` -/
def P9874946700274973822.Spec : Prop :=
  ∀ n, P9874946700274973822.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P13449207221018280552

`C(2, ∑{e}[n+1, #!-#])`
-/

namespace A212793.P13449207221018280552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorial (Nat.factorization (f1 n) p) : ℤ) - (Nat.factorization (f1 n) p : ℤ))).toNat

end

end A212793.P13449207221018280552

namespace A212793

/-- `C(2, ∑{e}[n+1, #!-#])` -/
def P13449207221018280552.Spec : Prop :=
  ∀ n, (P13449207221018280552.a n : ℤ) = A212793 (n + 1)

end A212793

/-! ## A212793.P8488589147658670792

`and(1, ∏{e}[n+1, #!/#])`
-/

namespace A212793.P8488589147658670792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorial (Nat.factorization (f1 n) p) : ℚ) / (Nat.factorization (f1 n) p : ℚ)))

end

end A212793.P8488589147658670792

namespace A212793

/-- `and(1, ∏{e}[n+1, #!/#])` -/
def P8488589147658670792.Spec : Prop :=
  ∀ n, P8488589147658670792.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P17084780645608870201

`∏{e}[n+1, round(#^-1)]²`
-/

namespace A212793.P17084780645608870201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((Nat.factorization (f1 n) p : ℚ) ^ (-1 : ℤ))) ^ 2

end

end A212793.P17084780645608870201

namespace A212793

/-- `∏{e}[n+1, round(#^-1)]²` -/
def P17084780645608870201.Spec : Prop :=
  ∀ n, P17084780645608870201.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P11787295025389896674

`∏{e}[n+1, C(#, #!)]^3`
-/

namespace A212793.P11787295025389896674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p) (Nat.factorial (Nat.factorization (f1 n) p))) ^ 3

end

end A212793.P11787295025389896674

namespace A212793

/-- `∏{e}[n+1, C(#, #!)]^3` -/
def P11787295025389896674.Spec : Prop :=
  ∀ n, (P11787295025389896674.a n : ℤ) = A212793 (n + 1)

end A212793

/-! ## A212793.P12876315752051802747

`abs(A189021(n+1))`
-/

namespace A212793.P12876315752051802747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189021 (n + 1)|

end

end A212793.P12876315752051802747

namespace A212793

/-- `abs(A189021(n+1))` -/
def P12876315752051802747.Spec : Prop :=
  ∀ n, P12876315752051802747.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P12122953372204361834

`abs(A363551(n+1))`
-/

namespace A212793.P12122953372204361834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A363551 (n + 1)|

end

end A212793.P12122953372204361834

namespace A212793

/-- `abs(A363551(n+1))` -/
def P12122953372204361834.Spec : Prop :=
  ∀ n, P12122953372204361834.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P8694132637422232454

`A072911(n+1)%2`
-/

namespace A212793.P8694132637422232454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072911 (n + 1)) 2

end

end A212793.P8694132637422232454

namespace A212793

/-- `A072911(n+1)%2` -/
def P8694132637422232454.Spec : Prop :=
  ∀ n, P8694132637422232454.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P4272661965547947053

`A368172(n+1)%2`
-/

namespace A212793.P4272661965547947053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368172 (n + 1)) 2

end

end A212793.P4272661965547947053

namespace A212793

/-- `A368172(n+1)%2` -/
def P4272661965547947053.Spec : Prop :=
  ∀ n, P4272661965547947053.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P12741457385870862675

`A354358(n+1)%3`
-/

namespace A212793.P12741457385870862675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354358 (n + 1)) 3

end

end A212793.P12741457385870862675

namespace A212793

/-- `A354358(n+1)%3` -/
def P12741457385870862675.Spec : Prop :=
  ∀ n, P12741457385870862675.a n = A212793 (n + 1)

end A212793

/-! ## A212793.P14746895800759027016

`A368247(n+1)%3`
-/

namespace A212793.P14746895800759027016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368247 (n + 1)) 3

end

end A212793.P14746895800759027016

namespace A212793

/-- `A368247(n+1)%3` -/
def P14746895800759027016.Spec : Prop :=
  ∀ n, P14746895800759027016.a n = A212793 (n + 1)

end A212793

/-!
# A212794: Triangular numbers (A000217) which are also hypotenuse numbers (A009003).

The programs for A212794, there is no canonical definition to state claims against.
-/

/-! ## A212794.P9154706029926231268

`∩[A009003(n+1), C(n+1, 2)]`
-/

namespace A212794.P9154706029926231268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A212794.P9154706029926231268

/-! ## A212794.P3134691245243211179

`∩[A009003(n+1), A000217(n)]`
-/

namespace A212794.P3134691245243211179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212794.P3134691245243211179

/-! ## A212794.P12380068565628168496

`∩[A009003(n+1), A253145(n)]`
-/

namespace A212794.P12380068565628168496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212794.P12380068565628168496

/-! ## A212794.P10159061611808333781

`∩[A009003(n+1), A186783(n+1)]`
-/

namespace A212794.P10159061611808333781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212794.P10159061611808333781

/-! ## A212794.P17602241178282405578

`∩[A009003(n+1), A350295(n+3)]`
-/

namespace A212794.P17602241178282405578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212794.P17602241178282405578

/-! ## A212794.P16204385387389295367

`filter[A009003(n+1), A073424(#)]`
-/

namespace A212794.P16204385387389295367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A212794.P16204385387389295367

/-! ## A212794.P7655649823224468868

`filter[A009003(n+1), A010054(#)]`
-/

namespace A212794.P7655649823224468868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A212794.P7655649823224468868

/-! ## A212794.P15287648156035376566

`lt[A055252(n), A256452(n+1)]+1`
-/

namespace A212794.P15287648156035376566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212794.P15287648156035376566

/-!
# A212795: Sums of squares of two distinct nonzero triangular numbers, i.e., of the form A000217(m)^2+A000217(n)^2, m>n>0.

The programs for A212795, there is no canonical definition to state claims against.
-/

/-! ## A212795.P17140957960571303480

`A289520(A340161(n+1))`
-/

namespace A212795.P17140957960571303480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289520 (A340161 (n + 1)).toNat

end

end A212795.P17140957960571303480

/-! ## A212795.P13044685562144786661

`A289520(A018900(n+1)+1)`
-/

namespace A212795.P13044685562144786661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289520 (A018900 (n + 1) + 1).toNat

end

end A212795.P13044685562144786661

/-!
# A212796: Square array read by antidiagonals: T(m,n) = number of spanning trees in C_m X C_n.

The programs for A212796, there is no canonical definition to state claims against.
-/

/-! ## A212796.P16940363834828282183

`A340560(n+1)*A368310(n)`
-/

namespace A212796.P16940363834828282183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340560 (n + 1) * A368310 n

end

end A212796.P16940363834828282183

/-! ## A212796.P3700113987587091374

`A003991(n+1)*A340560(n+1)`
-/

namespace A212796.P3700113987587091374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A340560 (n + 1)

end

end A212796.P3700113987587091374

/-! ## A212796.P9742812426121881551

`A000005(A036561(n))*A340560(n+1)`
-/

namespace A212796.P9742812426121881551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat * A340560 (n + 1)

end

end A212796.P9742812426121881551

/-! ## A212796.P9746228197152013920

`A000005(A175840(n))*A340560(n+1)`
-/

namespace A212796.P9746228197152013920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175840 n).toNat * A340560 (n + 1)

end

end A212796.P9746228197152013920

/-! ## A212796.P8183501944535380598

`A000005(A232646(n+1))*A340560(n+1)`
-/

namespace A212796.P8183501944535380598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A232646 (n + 1)).toNat * A340560 (n + 1)

end

end A212796.P8183501944535380598

/-!
# A212797: Number of spanning trees in C_2 X C_n.

The programs for A212797, the canonical program `A212797.P8262427844591531937` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212797 has offset 1).

The definition of A212797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212797.P8262427844591531937

`(n+1)*A082639(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212797

/-- `(n+1)*A082639(n+2)` -/
def P8262427844591531937.Spec : Prop :=
  ∀ n, P8262427844591531937.a n = A212797 (n + 1)

theorem P8262427844591531937.correct : P8262427844591531937.Spec := by
  intro n
  simp only [A212797, Nat.add_sub_cancel]

end A212797

/-! ## A212797.P18328204874250550703

`(n+1)*A113224(Δ[n²])`
-/

namespace A212797.P18328204874250550703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A113224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212797.P18328204874250550703

namespace A212797

/-- `(n+1)*A113224(Δ[n²])` -/
def P18328204874250550703.Spec : Prop :=
  ∀ n, P18328204874250550703.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P1999623677325849081

`∑[Δ[n*A001541(n)]-1]`
-/

namespace A212797.P1999623677325849081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212797.P1999623677325849081

namespace A212797

/-- `∑[Δ[n*A001541(n)]-1]` -/
def P1999623677325849081.Spec : Prop :=
  ∀ n, P1999623677325849081.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P3754545118870382522

`(n+1)*∑[A077444(n+1)]`
-/

namespace A212797.P3754545118870382522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P3754545118870382522

namespace A212797

/-- `(n+1)*∑[A077444(n+1)]` -/
def P3754545118870382522.Spec : Prop :=
  ∀ n, P3754545118870382522.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P5967043402822182926

`(n+1)*(Δ[A046090(n)]-1)`
-/

namespace A212797.P5967043402822182926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A212797.P5967043402822182926

namespace A212797

/-- `(n+1)*(Δ[A046090(n)]-1)` -/
def P5967043402822182926.Spec : Prop :=
  ∀ n, P5967043402822182926.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P2145042474259620031

`(n+1)*∑[A041010(2*n)]`
-/

namespace A212797.P2145042474259620031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P2145042474259620031

namespace A212797

/-- `(n+1)*∑[A041010(2*n)]` -/
def P2145042474259620031.Spec : Prop :=
  ∀ n, P2145042474259620031.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P12487050144306175180

`(n+1)*(A001541(n+1)-1)`
-/

namespace A212797.P12487050144306175180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001541 (n + 1) - 1)

end

end A212797.P12487050144306175180

namespace A212797

/-- `(n+1)*(A001541(n+1)-1)` -/
def P12487050144306175180.Spec : Prop :=
  ∀ n, P12487050144306175180.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P10654322225411748871

`2*(n+1)*A115598(n+1)`
-/

namespace A212797.P10654322225411748871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A115598 (n + 1))

end

end A212797.P10654322225411748871

namespace A212797

/-- `2*(n+1)*A115598(n+1)` -/
def P10654322225411748871.Spec : Prop :=
  ∀ n, P10654322225411748871.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P1726463913877988758

`(n+1)*A228797(2*(n+1))`
-/

namespace A212797.P1726463913877988758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228797 (2 * (n + 1))

end

end A212797.P1726463913877988758

namespace A212797

/-- `(n+1)*A228797(2*(n+1))` -/
def P1726463913877988758.Spec : Prop :=
  ∀ n, P1726463913877988758.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P699968122711237068

`(n+1)*A265278(2*(n+1))`
-/

namespace A212797.P699968122711237068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A265278 (2 * (n + 1))

end

end A212797.P699968122711237068

namespace A212797

/-- `(n+1)*A265278(2*(n+1))` -/
def P699968122711237068.Spec : Prop :=
  ∀ n, P699968122711237068.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P4676705541298866446

`(n+1)*A293004(2*(n+1))`
-/

namespace A212797.P4676705541298866446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A293004 (2 * (n + 1))

end

end A212797.P4676705541298866446

namespace A212797

/-- `(n+1)*A293004(2*(n+1))` -/
def P4676705541298866446.Spec : Prop :=
  ∀ n, P4676705541298866446.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P14074173991139668077

`2*(n+1)*A048739(2*n)`
-/

namespace A212797.P14074173991139668077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A048739 (2 * n)

end

end A212797.P14074173991139668077

namespace A212797

/-- `2*(n+1)*A048739(2*n)` -/
def P14074173991139668077.Spec : Prop :=
  ∀ n, P14074173991139668077.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P17429082768659387569

`(n+1)*∑[A002203(2*n+1)]`
-/

namespace A212797.P17429082768659387569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P17429082768659387569

namespace A212797

/-- `(n+1)*∑[A002203(2*n+1)]` -/
def P17429082768659387569.Spec : Prop :=
  ∀ n, P17429082768659387569.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P13111622906172550236

`(n+1)*∑[A080039(2*n+1)]`
-/

namespace A212797.P13111622906172550236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P13111622906172550236

namespace A212797

/-- `(n+1)*∑[A080039(2*n+1)]` -/
def P13111622906172550236.Spec : Prop :=
  ∀ n, P13111622906172550236.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P8477787603174161104

`(n+1)*∑[A099425(2*n+1)]`
-/

namespace A212797.P8477787603174161104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P8477787603174161104

namespace A212797

/-- `(n+1)*∑[A099425(2*n+1)]` -/
def P8477787603174161104.Spec : Prop :=
  ∀ n, P8477787603174161104.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P2519200146671357076

`(n+1)*∑[A129744(2*n+1)]`
-/

namespace A212797.P2519200146671357076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129744 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P2519200146671357076

namespace A212797

/-- `(n+1)*∑[A129744(2*n+1)]` -/
def P2519200146671357076.Spec : Prop :=
  ∀ n, P2519200146671357076.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P3014353058266739348

`(n+1)*∑[A162484(2*n+1)]`
-/

namespace A212797.P3014353058266739348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212797.P3014353058266739348

namespace A212797

/-- `(n+1)*∑[A162484(2*n+1)]` -/
def P3014353058266739348.Spec : Prop :=
  ∀ n, P3014353058266739348.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P2170817055515688953

`(n+1)*(Δ[A002315(n)/2]-1)`
-/

namespace A212797.P2170817055515688953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n - 1)

end

end A212797.P2170817055515688953

namespace A212797

/-- `(n+1)*(Δ[A002315(n)/2]-1)` -/
def P2170817055515688953.Spec : Prop :=
  ∀ n, P2170817055515688953.a n = (A212797 (n + 1) : ℚ)

end A212797

/-! ## A212797.P18112023354129037035

`(A034182(2*n+1)+1)*(n+1)`
-/

namespace A212797.P18112023354129037035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034182 (2 * n + 1) + 1) * (n + 1 : ℤ)

end

end A212797.P18112023354129037035

namespace A212797

/-- `(A034182(2*n+1)+1)*(n+1)` -/
def P18112023354129037035.Spec : Prop :=
  ∀ n, P18112023354129037035.a n = A212797 (n + 1)

end A212797

/-! ## A212797.P9305594918484973823

`2*(n+1)*A097076(2*(n+1))`
-/

namespace A212797.P9305594918484973823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A097076 (2 * (n + 1))

end

end A212797.P9305594918484973823

namespace A212797

/-- `2*(n+1)*A097076(2*(n+1))` -/
def P9305594918484973823.Spec : Prop :=
  ∀ n, P9305594918484973823.a n = A212797 (n + 1)

end A212797

/-!
# A212798: Row 3 of array in A212796.

The programs for A212798, there is no canonical definition to state claims against.
-/

/-! ## A212798.P16356186654533610421

`3*(n+1)*A054493(n)²`
-/

namespace A212798.P16356186654533610421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A054493 n ^ 2

end

end A212798.P16356186654533610421

/-! ## A212798.P13698216149845081660

`A054493(n)²*A008486(n+1)`
-/

namespace A212798.P13698216149845081660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054493 n ^ 2 * A008486 (n + 1)

end

end A212798.P13698216149845081660

/-! ## A212798.P12191448903563705866

`A054493(n)²*A008585(n+1)`
-/

namespace A212798.P12191448903563705866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054493 n ^ 2 * A008585 (n + 1)

end

end A212798.P12191448903563705866

/-! ## A212798.P9411799391836969658

`A212796(A167614(n+1))`
-/

namespace A212798.P9411799391836969658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212796 (A167614 (n + 1)).toNat

end

end A212798.P9411799391836969658

/-! ## A212798.P8344731408418188029

`A212796(∑[n+3]+1)`
-/

namespace A212798.P8344731408418188029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212798.P8344731408418188029

/-!
# A212799: Row 4 of array in A212796.

The programs for A212799, there is no canonical definition to state claims against.
-/

/-! ## A212799.P11303822027110530620

`A212796(∑[n+3]+7)`
-/

namespace A212799.P11303822027110530620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212796 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A212799.P11303822027110530620

