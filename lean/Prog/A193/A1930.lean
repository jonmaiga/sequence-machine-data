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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A193002: Triangle T(n,k)=0 (k odd), T(0,0)=-3, T(n,0)=1 (n > 0) and T(n,k) = T(n-1,k) - T(n-2,k-2).

The programs for A193002, there is no canonical definition to state claims against.
-/

/-! ## A193002.P8505071790173955326

`2*A192174(n)-A053119(n)`
-/

namespace A193002.P8505071790173955326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192174 n - A053119 n

end

end A193002.P8505071790173955326

/-! ## A193002.P11794809204756148334

`A192011(n)-A127672(A061579(n))`
-/

namespace A193002.P11794809204756148334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n - A127672 (A061579 n).toNat

end

end A193002.P11794809204756148334

/-! ## A193002.P614928421466356519

`2*A192174(n)-A049310(A061579(n))`
-/

namespace A193002.P614928421466356519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192174 n - A049310 (A061579 n).toNat

end

end A193002.P614928421466356519

/-! ## A193002.P709876958131696133

`A192011(n)-(A133607(n)+A108299(n))`
-/

namespace A193002.P709876958131696133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n - (A133607 n + A108299 n)

end

end A193002.P709876958131696133

/-! ## A193002.P12634834611988282760

`A192011(n)-A127672(A114327(n)+n)`
-/

namespace A193002.P12634834611988282760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n - A127672 (A114327 n + (n : ℤ)).toNat

end

end A193002.P12634834611988282760

/-! ## A193002.P13483918327922938943

`A192174(n)+A195662(n)-A192011(n)`
-/

namespace A193002.P13483918327922938943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 n + (A195662 n - A192011 n)

end

end A193002.P13483918327922938943

/-! ## A193002.P9053906938368536678

`2*A192174(n)-A259875(A004202(n+1))`
-/

namespace A193002.P9053906938368536678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192174 n - A259875 (A004202 (n + 1)).toNat

end

end A193002.P9053906938368536678

/-! ## A193002.P6665375063372524864

`A195673(n)-A192575(n)`
-/

namespace A193002.P6665375063372524864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195673 n - A192575 n

end

end A193002.P6665375063372524864

/-! ## A193002.P3669222083394500748

`A174559(n)-2*A053119(n)`
-/

namespace A193002.P3669222083394500748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174559 n - 2 * A053119 n

end

end A193002.P3669222083394500748

/-! ## A193002.P9408503599038133995

`4*A192174(n)-A174559(n)`
-/

namespace A193002.P9408503599038133995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A192174 n - A174559 n

end

end A193002.P9408503599038133995

/-!
# A193004: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193004, the canonical program `A193004.P14118123259240090036` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193004 has offset 0).

The definition of A193004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193004.P14118123259240090036

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=29, a(4)=75`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193004

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P14118123259240090036.Spec : Prop :=
  ∀ n, P14118123259240090036.a n = A193004 n

theorem P14118123259240090036.correct : P14118123259240090036.Spec := by
  intro n
  simp only [A193004]

end A193004

/-! ## A193004.P5227565678317964229

`∑[∑[a(n-1)+a(n-2)+6]]-A000045(n)` with `a(0)=1, a(1)=0`
-/

namespace A193004.P5227565678317964229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000045 n

end

end A193004.P5227565678317964229

namespace A193004

/-- `∑[∑[a(n-1)+a(n-2)+6]]-A000045(n)` -/
def P5227565678317964229.Spec : Prop :=
  ∀ n, P5227565678317964229.a n = A193004 n

end A193004

/-! ## A193004.P17075076119411453132

`A193006(n)+A000045(n)`
-/

namespace A193004.P17075076119411453132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193006 n + A000045 n

end

end A193004.P17075076119411453132

namespace A193004

/-- `A193006(n)+A000045(n)` -/
def P17075076119411453132.Spec : Prop :=
  ∀ n, P17075076119411453132.a n = A193004 n

end A193004

/-! ## A193004.P6988191608831126081

`A193008(n)-A000045(n)`
-/

namespace A193004.P6988191608831126081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193008 n - A000045 n

end

end A193004.P6988191608831126081

namespace A193004

/-- `A193008(n)-A000045(n)` -/
def P6988191608831126081.Spec : Prop :=
  ∀ n, P6988191608831126081.a n = A193004 n

end A193004

/-! ## A193004.P13272413925301163226

`A193008(n)-Δ[A001595(n)/2]`
-/

namespace A193004.P13272413925301163226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001595 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193008 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A193004.P13272413925301163226

namespace A193004

/-- `A193008(n)-Δ[A001595(n)/2]` -/
def P13272413925301163226.Spec : Prop :=
  ∀ n, P13272413925301163226.a n = (A193004 n : ℚ)

end A193004

/-! ## A193004.P4560265253751588319

`Δ[A193005(n)]`
-/

namespace A193004.P4560265253751588319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193004.P4560265253751588319

namespace A193004

/-- `Δ[A193005(n)]` -/
def P4560265253751588319.Spec : Prop :=
  ∀ n, P4560265253751588319.a n = A193004 n

end A193004

/-! ## A193004.P14003682960093152282

`A000045(n)+Δ[A193007(n)]`
-/

namespace A193004.P14003682960093152282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A193004.P14003682960093152282

namespace A193004

/-- `A000045(n)+Δ[A193007(n)]` -/
def P14003682960093152282.Spec : Prop :=
  ∀ n, P14003682960093152282.a n = A193004 n

end A193004

/-! ## A193004.P4773206896493437054

`A193005(n+1)-A193005(n)`
-/

namespace A193004.P4773206896493437054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 (n + 1) - A193005 n

end

end A193004.P4773206896493437054

namespace A193004

/-- `A193005(n+1)-A193005(n)` -/
def P4773206896493437054.Spec : Prop :=
  ∀ n, P4773206896493437054.a n = A193004 n

end A193004

/-! ## A193004.P11898203344019147284

`A193041(n+1)-(A193041(n)+A000045(n))`
-/

namespace A193004.P11898203344019147284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193041 (n + 1) - (A193041 n + A000045 n)

end

end A193004.P11898203344019147284

namespace A193004

/-- `A193041(n+1)-(A193041(n)+A000045(n))` -/
def P11898203344019147284.Spec : Prop :=
  ∀ n, P11898203344019147284.a n = A193004 n

end A193004

/-!
# A193005: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193005, the canonical program `A193005.P13670215407463304369` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193005 has offset 0).

The definition of A193005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193005.P13670215407463304369

`10*A000045(n+4)+4*A000045(n+5)-50-24*n-6*n²-n^3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193005

/-- `10*A000045(n+4)+4*A000045(n+5)-50-24*n-6*n²-n^3` -/
def P13670215407463304369.Spec : Prop :=
  ∀ n, P13670215407463304369.a n = A193005 n

theorem P13670215407463304369.correct : P13670215407463304369.Spec := by
  intro n
  simp only [A193005]

end A193005

/-! ## A193005.P18273417435065265651

`(n-1)^3+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A193005.P18273417435065265651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) ^ 3 + (a (n - 1) + a (n - 2))

end

end A193005.P18273417435065265651

namespace A193005

/-- `(n-1)^3+a(n-1)+a(n-2)` -/
def P18273417435065265651.Spec : Prop :=
  ∀ n, P18273417435065265651.a n = A193005 n

end A193005

/-! ## A193005.P16342127031583934843

`a(n-1)-((1-n)^3-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A193005.P16342127031583934843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((1 - (n : ℤ)) ^ 3 - a (n - 2))

end

end A193005.P16342127031583934843

namespace A193005

/-- `a(n-1)-((1-n)^3-a(n-2))` -/
def P16342127031583934843.Spec : Prop :=
  ∀ n, P16342127031583934843.a n = A193005 n

end A193005

/-! ## A193005.P3699540740465270460

`A193004(n+1)-(n+1)^3`
-/

namespace A193005.P3699540740465270460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A193005.P3699540740465270460

namespace A193005

/-- `A193004(n+1)-(n+1)^3` -/
def P3699540740465270460.Spec : Prop :=
  ∀ n, P3699540740465270460.a n = A193005 n

end A193005

/-! ## A193005.P16728764920967281161

`A193007(n)+A000071(n+1)`
-/

namespace A193005.P16728764920967281161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 n + A000071 (n + 1)

end

end A193005.P16728764920967281161

namespace A193005

/-- `A193007(n)+A000071(n+1)` -/
def P16728764920967281161.Spec : Prop :=
  ∀ n, P16728764920967281161.a n = A193005 n

end A193005

/-! ## A193005.P15257187311389929585

`A193041(n)-A000071(n+1)`
-/

namespace A193005.P15257187311389929585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193041 n - A000071 (n + 1)

end

end A193005.P15257187311389929585

namespace A193005

/-- `A193041(n)-A000071(n+1)` -/
def P15257187311389929585.Spec : Prop :=
  ∀ n, P15257187311389929585.a n = A193005 n

theorem P15257187311389929585.correct : P15257187311389929585.Spec := by
  intro n
  simp only [A193005, Nat.add_sub_cancel, A193005.P15257187311389929585.a, A193005.P13670215407463304369.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A193041, A193041.P11284727698982766000.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193005

/-! ## A193005.P17683596981300218815

`A000045(n+1)+A193007(n)-1`
-/

namespace A193005.P17683596981300218815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A193007 n - 1)

end

end A193005.P17683596981300218815

namespace A193005

/-- `A000045(n+1)+A193007(n)-1` -/
def P17683596981300218815.Spec : Prop :=
  ∀ n, P17683596981300218815.a n = A193005 n

end A193005

/-! ## A193005.P13420026139263197110

`A193007(n)+A019274(n+1)/2`
-/

namespace A193005.P13420026139263197110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193007 n : ℚ) + (A019274 (n + 1) : ℚ) / 2

end

end A193005.P13420026139263197110

namespace A193005

/-- `A193007(n)+A019274(n+1)/2` -/
def P13420026139263197110.Spec : Prop :=
  ∀ n, P13420026139263197110.a n = (A193005 n : ℚ)

end A193005

/-! ## A193005.P10325004764057892975

`A193041(n)-A019274(n+1)/2`
-/

namespace A193005.P10325004764057892975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193041 n : ℚ) - (A019274 (n + 1) : ℚ) / 2

end

end A193005.P10325004764057892975

namespace A193005

/-- `A193041(n)-A019274(n+1)/2` -/
def P10325004764057892975.Spec : Prop :=
  ∀ n, P10325004764057892975.a n = (A193005 n : ℚ)

end A193005

/-! ## A193005.P11519251966483535898

`A001924(n)+A193007(n)-A104161(n)`
-/

namespace A193005.P11519251966483535898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (A193007 n - A104161 n)

end

end A193005.P11519251966483535898

namespace A193005

/-- `A001924(n)+A193007(n)-A104161(n)` -/
def P11519251966483535898.Spec : Prop :=
  ∀ n, P11519251966483535898.a n = A193005 n

end A193005

/-! ## A193005.P1451031824827052675

`∑[A193004(n)]-A193004(n)`
-/

namespace A193005.P1451031824827052675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193004 n

end

end A193005.P1451031824827052675

namespace A193005

/-- `∑[A193004(n)]-A193004(n)` -/
def P1451031824827052675.Spec : Prop :=
  ∀ n, P1451031824827052675.a n = A193005 n

end A193005

/-!
# A193006: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193006, the canonical program `A193006.P2425708564637493765` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193006 has offset 0).

The definition of A193006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193006.P2425708564637493765

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=8, a(3)=27, a(4)=72`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193006

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P2425708564637493765.Spec : Prop :=
  ∀ n, P2425708564637493765.a n = A193006 n

theorem P2425708564637493765.correct : P2425708564637493765.Spec := by
  intro n
  simp only [A193006]

end A193006

/-! ## A193006.P12243044651654349207

`A193004(n)-A000045(n)`
-/

namespace A193006.P12243044651654349207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n - A000045 n

end

end A193006.P12243044651654349207

namespace A193006

/-- `A193004(n)-A000045(n)` -/
def P12243044651654349207.Spec : Prop :=
  ∀ n, P12243044651654349207.a n = A193006 n

end A193006

/-! ## A193006.P12045506859123798944

`A193004(n)-abs(A236191(n))`
-/

namespace A193006.P12045506859123798944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n - |A236191 n|

end

end A193006.P12045506859123798944

namespace A193006

/-- `A193004(n)-abs(A236191(n))` -/
def P12045506859123798944.Spec : Prop :=
  ∀ n, P12045506859123798944.a n = A193006 n

end A193006

/-! ## A193006.P13063295411073164850

`A193008(n)-Δ[A001595(n)]`
-/

namespace A193006.P13063295411073164850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193008 n - (f1 (n + 1) - f1 n)

end

end A193006.P13063295411073164850

namespace A193006

/-- `A193008(n)-Δ[A001595(n)]` -/
def P13063295411073164850.Spec : Prop :=
  ∀ n, P13063295411073164850.a n = A193006 n

end A193006

/-! ## A193006.P4393258453875502462

`A193008(n)-2*A000045(n)`
-/

namespace A193006.P4393258453875502462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193008 n - 2 * A000045 n

end

end A193006.P4393258453875502462

namespace A193006

/-- `A193008(n)-2*A000045(n)` -/
def P4393258453875502462.Spec : Prop :=
  ∀ n, P4393258453875502462.a n = A193006 n

end A193006

/-! ## A193006.P632785183785094945

`A193004(n)-Δ[A000071(n+1)]`
-/

namespace A193006.P632785183785094945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n - (f1 (n + 1) - f1 n)

end

end A193006.P632785183785094945

namespace A193006

/-- `A193004(n)-Δ[A000071(n+1)]` -/
def P632785183785094945.Spec : Prop :=
  ∀ n, P632785183785094945.a n = A193006 n

end A193006

/-! ## A193006.P11698688544040820541

`Δ[A193007(n)]`
-/

namespace A193006.P11698688544040820541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193006.P11698688544040820541

namespace A193006

/-- `Δ[A193007(n)]` -/
def P11698688544040820541.Spec : Prop :=
  ∀ n, P11698688544040820541.a n = A193006 n

end A193006

/-! ## A193006.P4684021941008943485

`Δ[A193005(n)]-A000045(n)`
-/

namespace A193006.P4684021941008943485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 n

end

end A193006.P4684021941008943485

namespace A193006

/-- `Δ[A193005(n)]-A000045(n)` -/
def P4684021941008943485.Spec : Prop :=
  ∀ n, P4684021941008943485.a n = A193006 n

end A193006

/-! ## A193006.P404531161804423293

`A193007(n+1)-A193007(n)`
-/

namespace A193006.P404531161804423293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 (n + 1) - A193007 n

end

end A193006.P404531161804423293

namespace A193006

/-- `A193007(n+1)-A193007(n)` -/
def P404531161804423293.Spec : Prop :=
  ∀ n, P404531161804423293.a n = A193006 n

end A193006

/-! ## A193006.P3140350770187677005

`Δ[A193005(n)-A000071(n+1)]`
-/

namespace A193006.P3140350770187677005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n - A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193006.P3140350770187677005

namespace A193006

/-- `Δ[A193005(n)-A000071(n+1)]` -/
def P3140350770187677005.Spec : Prop :=
  ∀ n, P3140350770187677005.a n = A193006 n

end A193006

/-! ## A193006.P6933928054703102309

`A193005(n+1)-(A193005(n)+A000045(n))`
-/

namespace A193006.P6933928054703102309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 (n + 1) - (A193005 n + A000045 n)

end

end A193006.P6933928054703102309

namespace A193006

/-- `A193005(n+1)-(A193005(n)+A000045(n))` -/
def P6933928054703102309.Spec : Prop :=
  ∀ n, P6933928054703102309.a n = A193006 n

end A193006

/-!
# A193007: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193007, the canonical program `A193007.P7217741966688429233` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193007 has offset 0).

The definition of A193007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193007.P7217741966688429233

`∑[A193006(abs(1-n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193007

/-- `∑[A193006(abs(1-n))]` -/
def P7217741966688429233.Spec : Prop :=
  ∀ n, P7217741966688429233.a n = A193007 n

theorem P7217741966688429233.correct : P7217741966688429233.Spec := by
  intro n
  simp only [A193007]

end A193007

/-! ## A193007.P1409511156150540493

`A193006(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A193007.P1409511156150540493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A193006 (n - 1) + a (n - 1)

end

end A193007.P1409511156150540493

namespace A193007

/-- `A193006(n-1)+a(n-1)` -/
def P1409511156150540493.Spec : Prop :=
  ∀ n, P1409511156150540493.a n = A193007 n

end A193007

/-! ## A193007.P982929134648246429

`A193005(n)-A000071(n+1)`
-/

namespace A193007.P982929134648246429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n - A000071 (n + 1)

end

end A193007.P982929134648246429

namespace A193007

/-- `A193005(n)-A000071(n+1)` -/
def P982929134648246429.Spec : Prop :=
  ∀ n, P982929134648246429.a n = A193007 n

end A193007

/-! ## A193007.P6255213537483575811

`A193041(n)-A019274(n+1)`
-/

namespace A193007.P6255213537483575811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193041 n - A019274 (n + 1)

end

end A193007.P6255213537483575811

namespace A193007

/-- `A193041(n)-A019274(n+1)` -/
def P6255213537483575811.Spec : Prop :=
  ∀ n, P6255213537483575811.a n = A193007 n

end A193007

/-! ## A193007.P126785791019228159

`A193005(n)+1-A000045(n+1)`
-/

namespace A193007.P126785791019228159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n + (1 - A000045 (n + 1))

end

end A193007.P126785791019228159

namespace A193007

/-- `A193005(n)+1-A000045(n+1)` -/
def P126785791019228159.Spec : Prop :=
  ∀ n, P126785791019228159.a n = A193007 n

end A193007

/-! ## A193007.P14113069463184297674

`A193041(n)-2*A000071(n+1)`
-/

namespace A193007.P14113069463184297674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193041 n - 2 * A000071 (n + 1)

end

end A193007.P14113069463184297674

namespace A193007

/-- `A193041(n)-2*A000071(n+1)` -/
def P14113069463184297674.Spec : Prop :=
  ∀ n, P14113069463184297674.a n = A193007 n

end A193007

/-! ## A193007.P2654426438540690458

`∑[A193006(n)]-A193006(n)`
-/

namespace A193007.P2654426438540690458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193006 n

end

end A193007.P2654426438540690458

namespace A193007

/-- `∑[A193006(n)]-A193006(n)` -/
def P2654426438540690458.Spec : Prop :=
  ∀ n, P2654426438540690458.a n = A193007 n

end A193007

/-!
# A193008: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193008, the canonical program `A193008.P5745610349608384695` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193008 has offset 0).

The definition of A193008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193008.P5745610349608384695

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=31, a(4)=78`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193008

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5745610349608384695.Spec : Prop :=
  ∀ n, P5745610349608384695.a n = A193008 n

theorem P5745610349608384695.correct : P5745610349608384695.Spec := by
  intro n
  simp only [A193008]

end A193008

/-! ## A193008.P14173500805697715061

`∑[∑[a(n-1)+a(n-2)+6]]` with `a(0)=1, a(1)=0`
-/

namespace A193008.P14173500805697715061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193008.P14173500805697715061

namespace A193008

/-- `∑[∑[a(n-1)+a(n-2)+6]]` -/
def P14173500805697715061.Spec : Prop :=
  ∀ n, (P14173500805697715061.a n : ℤ) = A193008 n

end A193008

/-! ## A193008.P14663288615408225089

`A193004(n)+A000045(n)`
-/

namespace A193008.P14663288615408225089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n + A000045 n

end

end A193008.P14663288615408225089

namespace A193008

/-- `A193004(n)+A000045(n)` -/
def P14663288615408225089.Spec : Prop :=
  ∀ n, P14663288615408225089.a n = A193008 n

end A193008

/-! ## A193008.P9563360492083407589

`A193004(n)+abs(A236191(n))`
-/

namespace A193008.P9563360492083407589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n + |A236191 n|

end

end A193008.P9563360492083407589

namespace A193008

/-- `A193004(n)+abs(A236191(n))` -/
def P9563360492083407589.Spec : Prop :=
  ∀ n, P9563360492083407589.a n = A193008 n

end A193008

/-! ## A193008.P5722873387133361912

`A193006(n)+2*A000045(n)`
-/

namespace A193008.P5722873387133361912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193006 n + 2 * A000045 n

end

end A193008.P5722873387133361912

namespace A193008

/-- `A193006(n)+2*A000045(n)` -/
def P5722873387133361912.Spec : Prop :=
  ∀ n, P5722873387133361912.a n = A193008 n

end A193008

/-! ## A193008.P5239958367902845956

`A193004(n)+Δ[A000071(n+1)]`
-/

namespace A193008.P5239958367902845956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193004 n + (f1 (n + 1) - f1 n)

end

end A193008.P5239958367902845956

namespace A193008

/-- `A193004(n)+Δ[A000071(n+1)]` -/
def P5239958367902845956.Spec : Prop :=
  ∀ n, P5239958367902845956.a n = A193008 n

end A193008

/-! ## A193008.P10208680915267115659

`A192389(n+1)+A192976(n+1)-A192951(n+1)`
-/

namespace A193008.P10208680915267115659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 (n + 1) + (A192976 (n + 1) - A192951 (n + 1))

end

end A193008.P10208680915267115659

namespace A193008

/-- `A192389(n+1)+A192976(n+1)-A192951(n+1)` -/
def P10208680915267115659.Spec : Prop :=
  ∀ n, P10208680915267115659.a n = A193008 n

end A193008

/-! ## A193008.P12204649350026805020

`Δ[A193041(n)]`
-/

namespace A193008.P12204649350026805020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193008.P12204649350026805020

namespace A193008

/-- `Δ[A193041(n)]` -/
def P12204649350026805020.Spec : Prop :=
  ∀ n, P12204649350026805020.a n = A193008 n

end A193008

/-! ## A193008.P18317646560609094740

`A000045(n)+Δ[A193005(n)]`
-/

namespace A193008.P18317646560609094740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A193008.P18317646560609094740

namespace A193008

/-- `A000045(n)+Δ[A193005(n)]` -/
def P18317646560609094740.Spec : Prop :=
  ∀ n, P18317646560609094740.a n = A193008 n

end A193008

/-! ## A193008.P10797649066004232429

`A193041(n+1)-A193041(n)`
-/

namespace A193008.P10797649066004232429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193041 (n + 1) - A193041 n

end

end A193008.P10797649066004232429

namespace A193008

/-- `A193041(n+1)-A193041(n)` -/
def P10797649066004232429.Spec : Prop :=
  ∀ n, P10797649066004232429.a n = A193008 n

end A193008

/-! ## A193008.P4592634195613794164

`Δ[A193005(n)+A000071(n+1)]`
-/

namespace A193008.P4592634195613794164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n + A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193008.P4592634195613794164

namespace A193008

/-- `Δ[A193005(n)+A000071(n+1)]` -/
def P4592634195613794164.Spec : Prop :=
  ∀ n, P4592634195613794164.a n = A193008 n

end A193008

/-! ## A193008.P9841623375270854305

`Δ[A193007(n)]+2*A000045(n)`
-/

namespace A193008.P9841623375270854305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000045 n

end

end A193008.P9841623375270854305

namespace A193008

/-- `Δ[A193007(n)]+2*A000045(n)` -/
def P9841623375270854305.Spec : Prop :=
  ∀ n, P9841623375270854305.a n = A193008 n

end A193008

/-! ## A193008.P16581845735892597856

`A193005(n+1)+A000045(n)-A193005(n)`
-/

namespace A193008.P16581845735892597856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 (n + 1) + (A000045 n - A193005 n)

end

end A193008.P16581845735892597856

namespace A193008

/-- `A193005(n+1)+A000045(n)-A193005(n)` -/
def P16581845735892597856.Spec : Prop :=
  ∀ n, P16581845735892597856.a n = A193008 n

end A193008

/-!
# A193021: G.f.: A(x) = 1/(1 - x*(1+x)/(1 - x^2*(1+x)/(1 - x^3*(1+x)/(1 - x^4*(1+x)/(1 - ...))))), a continued fraction.

The programs for A193021, there is no canonical definition to state claims against.
-/

/-! ## A193021.P16275750061891092932

`A226190(floor(sqrt(A151220(n))))`
-/

namespace A193021.P16275750061891092932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.sqrt (A151220 n)).toNat

end

end A193021.P16275750061891092932

/-! ## A193021.P5597447451140322766

`A347011(n)-A025466(A080874(n)+2)`
-/

namespace A193021.P5597447451140322766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 n - A025466 (A080874 n + 2).toNat

end

end A193021.P5597447451140322766

/-! ## A193021.P2539636854787803392

`A126257(A111633(2*n)+A024557(n))`
-/

namespace A193021.P2539636854787803392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A111633 (2 * n) + A024557 n).toNat

end

end A193021.P2539636854787803392

/-! ## A193021.P1576339187126856765

`A265370(A149909(n)+3)`
-/

namespace A193021.P1576339187126856765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A149909 n + 3).toNat

end

end A193021.P1576339187126856765

/-! ## A193021.P11612144380087627043

`A000006(A186576(n)+n)`
-/

namespace A193021.P11612144380087627043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A186576 n + (n : ℤ)).toNat

end

end A193021.P11612144380087627043

/-!
# A193022: Numbers k that divide (omega(k)*Omega(k))^k.

The programs for A193022, there is no canonical definition to state claims against.
-/

/-! ## A193022.P10265876972759721061

`record[A067575(n+1)/A061704(A000204(n+1))]`
-/

namespace A193022.P10265876972759721061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067575 (n + 1) : ℚ) / (A061704 (A000204 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193022.P10265876972759721061

/-!
# A193023: Triangle read by rows: the n-th row has length A000110(n) and contains all set partitions of an n-set in canonical order.

The programs for A193023, there is no canonical definition to state claims against.
-/

/-! ## A193023.P1087112800671736022

`∪[A071159(n+1), A273977(n+1)]`
-/

namespace A193023.P1087112800671736022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P1087112800671736022

/-! ## A193023.P11463350626093494643

`∪[A110380(n+1), A273977(n+1)]`
-/

namespace A193023.P11463350626093494643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P11463350626093494643

/-! ## A193023.P3158716975816760725

`∪[A239903(A057549(n+1)), A273977(n+1)]`
-/

namespace A193023.P3158716975816760725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (A057549 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P3158716975816760725

/-! ## A193023.P11601240485303151692

`∩[A240763(n+1), A125098(n)]`
-/

namespace A193023.P11601240485303151692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P11601240485303151692

/-! ## A193023.P12989813180470791554

`∩[A084545(n+1), A125098(n)]`
-/

namespace A193023.P12989813180470791554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P12989813180470791554

/-! ## A193023.P9482289396919216783

`∪[A273977(n+1), A358615(n+1)]`
-/

namespace A193023.P9482289396919216783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P9482289396919216783

/-! ## A193023.P6756932406466619908

`∩[A001729(n+1), A125098(n)]`
-/

namespace A193023.P6756932406466619908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P6756932406466619908

/-! ## A193023.P4964913062320602316

`∩[A057436(n+1), A125098(n)]`
-/

namespace A193023.P4964913062320602316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P4964913062320602316

/-! ## A193023.P2157332035740000228

`∩[A039117(n+1), A125098(n)]`
-/

namespace A193023.P2157332035740000228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193023.P2157332035740000228

/-!
# A193024: The number of isomorphism classes of Alexander (a.k.a. affine) quandles of order n.

The programs for A193024, there is no canonical definition to state claims against.
-/

/-! ## A193024.P6653650286061455057

`xor(A047994(n+1), A236972(A008833(n+1)))`
-/

namespace A193024.P6653650286061455057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047994 (n + 1)) (A236972 (A008833 (n + 1)).toNat)

end

end A193024.P6653650286061455057

/-! ## A193024.P14752178046057558764

`A178910(gcd(n+1, A373645(n+2)))`
-/

namespace A193024.P14752178046057558764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (Int.gcd (n + 1 : ℤ) (A373645 (n + 2)))

end

end A193024.P14752178046057558764

/-! ## A193024.P3458238413964656936

`A374248(A238122(n))+A047994(n+1)`
-/

namespace A193024.P3458238413964656936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374248 (A238122 n).toNat + A047994 (n + 1)

end

end A193024.P3458238413964656936

/-! ## A193024.P16387340922875581144

`A178910(A187829(n+1)/A000034(n))`
-/

namespace A193024.P16387340922875581144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A193024.P16387340922875581144

/-! ## A193024.P15680497162177638619

`A178910(A187829(n+1)-∑[A001057(n)])`
-/

namespace A193024.P15680497162177638619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (A187829 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193024.P15680497162177638619

/-!
# A193036: G.f. A(x) satisfies: x = Sum_{n>=1} x^n*A(-x)^A006519(n), where A006519(n) is the highest power of 2 dividing n.

The programs for A193036, there is no canonical definition to state claims against.
-/

/-! ## A193036.P14276845200122699092

`A049093(floor(sqrt(A352300(n))))`
-/

namespace A193036.P14276845200122699092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (Int.sqrt (A352300 n)).toNat

end

end A193036.P14276845200122699092

/-! ## A193036.P10900016944126495893

`A045880(A192681(n))`
-/

namespace A193036.P10900016944126495893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045880 (A192681 n).toNat

end

end A193036.P10900016944126495893

/-! ## A193036.P4843138763882268771

`A048689(A192814(n))`
-/

namespace A193036.P4843138763882268771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048689 (A192814 n).toNat

end

end A193036.P4843138763882268771

/-!
# A193037: G.f. A(x) satisfies: x = Sum_{n>=1} x^n*A(-x)^A022998(n), where A022998 is defined as "if n is odd then n else 2*n.".

The programs for A193037, there is no canonical definition to state claims against.
-/

/-! ## A193037.P11050041512918449156

`A302478(A066815(∑[n]))`
-/

namespace A193037.P11050041512918449156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A066815 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A193037.P11050041512918449156

/-! ## A193037.P5153789317155641311

`A055034((A039021(n+1)+n!)*C(n, 2)+1)`
-/

namespace A193037.P5153789317155641311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 ((A039021 (n + 1) + (Nat.factorial n : ℤ)) * (Nat.choose n 2 : ℤ) + 1).toNat

end

end A193037.P5153789317155641311

/-!
# A193038: G.f. A(x) satisfies: x = Sum_{n>=1} x^n*A(-x)^sigma(n), where sigma(n) = sum of divisors of n (A000203).

The programs for A193038, there is no canonical definition to state claims against.
-/

/-! ## A193038.P5688540193039838864

`A289498(A343350(n))`
-/

namespace A193038.P5688540193039838864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A343350 n).toNat

end

end A193038.P5688540193039838864

/-! ## A193038.P5835555287267132171

`∑[A165125(∑[A356782(n+1)])]`
-/

namespace A193038.P5835555287267132171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356782 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165125 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193038.P5835555287267132171

/-! ## A193038.P5246086802057343548

`A272477(A272485(n+1)+A048720(n))`
-/

namespace A193038.P5246086802057343548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272477 (A272485 (n + 1) + A048720 n).toNat

end

end A193038.P5246086802057343548

/-!
# A193039: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n*A(-x)^A002024(n+1), where A002024 is defined as "n appears n times.".

The programs for A193039, there is no canonical definition to state claims against.
-/

/-! ## A193039.P380940387457740966

`A256133(A091600(n+1))`
-/

namespace A193039.P380940387457740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A091600 (n + 1)).toNat

end

end A193039.P380940387457740966

/-! ## A193039.P12310124359368809889

`A256133(A318008(n+1))`
-/

namespace A193039.P12310124359368809889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A318008 (n + 1)).toNat

end

end A193039.P12310124359368809889

/-! ## A193039.P914554018340390226

`A226190(round(sqrt(A107596(n))))`
-/

namespace A193039.P914554018340390226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (SequenceMachineLib.roundAway (Real.sqrt (A107596 n : ℝ))).toNat

end

end A193039.P914554018340390226

/-! ## A193039.P15570582377134047155

`A000006(A000248(abs(1-n)))`
-/

namespace A193039.P15570582377134047155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000248 |1 - (n : ℤ)|.toNat).toNat

end

end A193039.P15570582377134047155

/-!
# A193040: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n*A(-x)^A131507(n), where A131507 is defined as "2*n+1 appears n times.".

The programs for A193040, there is no canonical definition to state claims against.
-/

/-! ## A193040.P3612188058822802326

`A138997(A150861(n))`
-/

namespace A193040.P3612188058822802326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A150861 n).toNat

end

end A193040.P3612188058822802326

/-! ## A193040.P15934861772170724241

`A289496(∑[A370217(n)])`
-/

namespace A193040.P15934861772170724241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193040.P15934861772170724241

/-! ## A193040.P7016175384680192036

`A289133(A150663(n))+1`
-/

namespace A193040.P7016175384680192036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A150663 n).toNat + 1

end

end A193040.P7016175384680192036

/-!
# A193041: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193041, the canonical program `A193041.P11284727698982766000` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193041 has offset 0).

The definition of A193041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193041.P11284727698982766000

`A193005(n)+A000071(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193041

/-- `A193005(n)+A000071(n+1)` -/
def P11284727698982766000.Spec : Prop :=
  ∀ n, P11284727698982766000.a n = A193041 n

theorem P11284727698982766000.correct : P11284727698982766000.Spec := by
  intro n
  simp only [A193041]

end A193041

/-! ## A193041.P12399910519193014631

`A193007(n)+A019274(n+1)`
-/

namespace A193041.P12399910519193014631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 n + A019274 (n + 1)

end

end A193041.P12399910519193014631

namespace A193041

/-- `A193007(n)+A019274(n+1)` -/
def P12399910519193014631.Spec : Prop :=
  ∀ n, P12399910519193014631.a n = A193041 n

end A193041

/-! ## A193041.P11840689052063856215

`A001595(n)+A193007(n)-1`
-/

namespace A193041.P11840689052063856215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A193007 n - 1)

end

end A193041.P11840689052063856215

namespace A193041

/-- `A001595(n)+A193007(n)-1` -/
def P11840689052063856215.Spec : Prop :=
  ∀ n, P11840689052063856215.a n = A193041 n

end A193041

/-! ## A193041.P14807271363474497169

`A000045(n+1)+A193005(n)-1`
-/

namespace A193041.P14807271363474497169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A193005 n - 1)

end

end A193041.P14807271363474497169

namespace A193041

/-- `A000045(n+1)+A193005(n)-1` -/
def P14807271363474497169.Spec : Prop :=
  ∀ n, P14807271363474497169.a n = A193041 n

theorem P14807271363474497169.correct : P14807271363474497169.Spec := by
  intro n
  simp only [A193041, Nat.add_sub_cancel, A193041.P14807271363474497169.a, A193041.P11284727698982766000.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A193005, A193005.P13670215407463304369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193041

/-! ## A193041.P10900149097093368430

`A193007(n)+2*A000071(n+1)`
-/

namespace A193041.P10900149097093368430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 n + 2 * A000071 (n + 1)

end

end A193041.P10900149097093368430

namespace A193041

/-- `A193007(n)+2*A000071(n+1)` -/
def P10900149097093368430.Spec : Prop :=
  ∀ n, P10900149097093368430.a n = A193041 n

end A193041

/-! ## A193041.P16519384163156517311

`A193005(n)+A193005(n)-A193007(n)`
-/

namespace A193041.P16519384163156517311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n + (A193005 n - A193007 n)

end

end A193041.P16519384163156517311

namespace A193041

/-- `A193005(n)+A193005(n)-A193007(n)` -/
def P16519384163156517311.Spec : Prop :=
  ∀ n, P16519384163156517311.a n = A193041 n

end A193041

/-! ## A193041.P2436217546864653407

`∑[A193008(n)]-A193008(n)`
-/

namespace A193041.P2436217546864653407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193008 n

end

end A193041.P2436217546864653407

namespace A193041

/-- `∑[A193008(n)]-A193008(n)` -/
def P2436217546864653407.Spec : Prop :=
  ∀ n, P2436217546864653407.a n = A193041 n

end A193041

/-! ## A193041.P6756404789879880586

`2*A193005(n)-A193007(n)`
-/

namespace A193041.P6756404789879880586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193005 n - A193007 n

end

end A193041.P6756404789879880586

namespace A193041

/-- `2*A193005(n)-A193007(n)` -/
def P6756404789879880586.Spec : Prop :=
  ∀ n, P6756404789879880586.a n = A193041 n

end A193041

/-!
# A193042: Natural fractal sequence of A194126.

The programs for A193042, there is no canonical definition to state claims against.
-/

/-! ## A193042.P8355226739970955977

`A002260(A194101(C(C(n, 64), n+2)+n+1))`
-/

namespace A193042.P8355226739970955977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194101 (Nat.choose (Nat.choose n 64) (n + 2) + n + 1)).toNat

end

end A193042.P8355226739970955977

/-! ## A193042.P18260838901040786782

`A002260(A194101(n+1))%p?[A270894(n)]`
-/

namespace A193042.P18260838901040786782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A194101 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A193042.P18260838901040786782

/-! ## A193042.P9736588687672920927

`A002260(A194101(n+1)%A222413(n+1))`
-/

namespace A193042.P9736588687672920927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A194101 (n + 1)) (A222413 (n + 1))).toNat

end

end A193042.P9736588687672920927

/-! ## A193042.P4024464294039974731

`A124389(n)%2*A002260(A194101(n+1))`
-/

namespace A193042.P4024464294039974731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124389 n) 2 * A002260 (A194101 (n + 1)).toNat

end

end A193042.P4024464294039974731

/-! ## A193042.P12779370125036977625

`(A131818(A194101(n+1)+1)-1)%A222413(n+1)`
-/

namespace A193042.P12779370125036977625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131818 (A194101 (n + 1) + 1).toNat - 1) (A222413 (n + 1))

end

end A193042.P12779370125036977625

/-! ## A193042.P10983356712464024295

`A283978(A123937(n))+A002260(A194101(n+1))`
-/

namespace A193042.P10983356712464024295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A123937 n).toNat + A002260 (A194101 (n + 1)).toNat

end

end A193042.P10983356712464024295

/-! ## A193042.P2185467438546197006

`A002260(A194101(n+1))*A267621(A057323(n))`
-/

namespace A193042.P2185467438546197006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194101 (n + 1)).toNat * A267621 (A057323 n).toNat

end

end A193042.P2185467438546197006

/-! ## A193042.P9696823000436099472

`A002260(A194101(n+1))+A000038(A117935(n+1))`
-/

namespace A193042.P9696823000436099472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194101 (n + 1)).toNat + A000038 (A117935 (n + 1)).toNat

end

end A193042.P9696823000436099472

/-! ## A193042.P17671937249969633710

`A002260(A194101(n+1))+A000038(A141796(n+1))`
-/

namespace A193042.P17671937249969633710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194101 (n + 1)).toNat + A000038 (A141796 (n + 1)).toNat

end

end A193042.P17671937249969633710

/-! ## A193042.P14778635688311023257

`A002260(A194101(n+1))+A000007(A268445(n+1))`
-/

namespace A193042.P14778635688311023257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194101 (n + 1)).toNat + A000007 (A268445 (n + 1)).toNat

end

end A193042.P14778635688311023257

/-!
# A193043: Listed by antidiagonals, array A(k,n) = digital root of n-th nonzero k-gonal number.

The programs for A193043, there is no canonical definition to state claims against.
-/

/-! ## A193043.P9054258089352414478

`dr(A086271(n+1))`
-/

namespace A193043.P9054258089352414478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086271 (n + 1))

end

end A193043.P9054258089352414478

/-! ## A193043.P12638661987563696395

`dr(A139601(comp[∑[n]]))`
-/

namespace A193043.P12638661987563696395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139601 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A193043.P12638661987563696395

/-! ## A193043.P17864757657870211241

`dr(A057145(comp[∑[n]]+1))`
-/

namespace A193043.P17864757657870211241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057145 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1))

end

end A193043.P17864757657870211241

/-! ## A193043.P15574491096002093092

`dr(A086270(A038722(n+1)))`
-/

namespace A193043.P15574491096002093092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086270 (A038722 (n + 1)).toNat)

end

end A193043.P15574491096002093092

/-! ## A193043.P11032132983907568073

`dr(A139600(lt[1, A048004(n)]))`
-/

namespace A193043.P11032132983907568073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A193043.P11032132983907568073

/-! ## A193043.P2255818959706682671

`A010888(A086271(n+1)+9)`
-/

namespace A193043.P2255818959706682671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A086271 (n + 1) + 9).toNat

end

end A193043.P2255818959706682671

/-! ## A193043.P8257321302785388352

`A007953(∑{digits}[A086271(n+1), #])`
-/

namespace A193043.P8257321302785388352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A193043.P8257321302785388352

/-! ## A193043.P16041791647418448071

`dr(A139600(lt[1, A139600(n+1)]))`
-/

namespace A193043.P16041791647418448071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A193043.P16041791647418448071

/-!
# A193044: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193044, the canonical program `A193044.P17935013301325074945` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193044 has offset 0).

The definition of A193044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193044.P17935013301325074945

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=5, a(4)=13`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193044

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P17935013301325074945.Spec : Prop :=
  ∀ n, P17935013301325074945.a n = A193044 n

theorem P17935013301325074945.correct : P17935013301325074945.Spec := by
  intro n
  simp only [A193044]

end A193044

/-! ## A193044.P15853742730076479998

`a(n-1)+a(n-2)+C(n, 2)` with `a(0)=1, a(1)=0`
-/

namespace A193044.P15853742730076479998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 2) + Nat.choose n 2)

end

end A193044.P15853742730076479998

namespace A193044

/-- `a(n-1)+a(n-2)+C(n, 2)` -/
def P15853742730076479998.Spec : Prop :=
  ∀ n, (P15853742730076479998.a n : ℤ) = A193044 n

end A193044

/-! ## A193044.P1397617197048226562

`a(n-1)+a(n-2)+∑[n]-n` with `a(0)=1, a(1)=0`
-/

namespace A193044.P1397617197048226562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A193044.P1397617197048226562

namespace A193044

/-- `a(n-1)+a(n-2)+∑[n]-n` -/
def P1397617197048226562.Spec : Prop :=
  ∀ n, P1397617197048226562.a n = A193044 n

end A193044

/-! ## A193044.P4911818277554576419

`a(n-1)-(n-a(n-2)-∑[n])` with `a(0)=1, a(1)=0`
-/

namespace A193044.P4911818277554576419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A193044.P4911818277554576419

namespace A193044

/-- `a(n-1)-(n-a(n-2)-∑[n])` -/
def P4911818277554576419.Spec : Prop :=
  ∀ n, P4911818277554576419.a n = A193044 n

end A193044

/-! ## A193044.P12828293501770681268

`A192954(n)-∑[n]`
-/

namespace A193044.P12828293501770681268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A193044.P12828293501770681268

namespace A193044

/-- `A192954(n)-∑[n]` -/
def P12828293501770681268.Spec : Prop :=
  ∀ n, P12828293501770681268.a n = A193044 n

end A193044

/-! ## A193044.P10597178804619486893

`A179991(n+1)-∑[n+1]`
-/

namespace A193044.P10597178804619486893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A193044.P10597178804619486893

namespace A193044

/-- `A179991(n+1)-∑[n+1]` -/
def P10597178804619486893.Spec : Prop :=
  ∀ n, P10597178804619486893.a n = A193044 n

end A193044

/-! ## A193044.P15529556042956591440

`∑[2*A000032(n)-(n+2)]-1`
-/

namespace A193044.P15529556042956591440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A193044.P15529556042956591440

namespace A193044

/-- `∑[2*A000032(n)-(n+2)]-1` -/
def P15529556042956591440.Spec : Prop :=
  ∀ n, P15529556042956591440.a n = A193044 n

end A193044

/-! ## A193044.P16306710038229471688

`A210728(n)-A000096(n)`
-/

namespace A193044.P16306710038229471688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - A000096 n

end

end A193044.P16306710038229471688

namespace A193044

/-- `A210728(n)-A000096(n)` -/
def P16306710038229471688.Spec : Prop :=
  ∀ n, P16306710038229471688.a n = A193044 n

end A193044

/-! ## A193044.P5436493540950309479

`A000045(n)+A192956(n)-∑[n]`
-/

namespace A193044.P5436493540950309479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A192956 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A193044.P5436493540950309479

namespace A193044

/-- `A000045(n)+A192956(n)-∑[n]` -/
def P5436493540950309479.Spec : Prop :=
  ∀ n, P5436493540950309479.a n = A193044 n

end A193044

/-! ## A193044.P12106342747472944017

`A192964(n)+∑[A000045(n)-n]`
-/

namespace A193044.P12106342747472944017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193044.P12106342747472944017

namespace A193044

/-- `A192964(n)+∑[A000045(n)-n]` -/
def P12106342747472944017.Spec : Prop :=
  ∀ n, P12106342747472944017.a n = A193044 n

end A193044

/-! ## A193044.P1888072603931581862

`A022319(n+1)-A134869(n+2)`
-/

namespace A193044.P1888072603931581862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 (n + 1) - A134869 (n + 2)

end

end A193044.P1888072603931581862

namespace A193044

/-- `A022319(n+1)-A134869(n+2)` -/
def P1888072603931581862.Spec : Prop :=
  ∀ n, P1888072603931581862.a n = A193044 n

end A193044

/-! ## A193044.P17197404199755848335

`2*A066982(n+1)-A000124(n)`
-/

namespace A193044.P17197404199755848335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066982 (n + 1) - A000124 n

end

end A193044.P17197404199755848335

namespace A193044

/-- `2*A066982(n+1)-A000124(n)` -/
def P17197404199755848335.Spec : Prop :=
  ∀ n, P17197404199755848335.a n = A193044 n

end A193044

/-! ## A193044.P10441858909821417198

`A212804(n)+∑[∑[A000071(n+1)]]`
-/

namespace A193044.P10441858909821417198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193044.P10441858909821417198

namespace A193044

/-- `A212804(n)+∑[∑[A000071(n+1)]]` -/
def P10441858909821417198.Spec : Prop :=
  ∀ n, P10441858909821417198.a n = A193044 n

end A193044

/-! ## A193044.P2343383742700581861

`A168674(n+1)-(A000096(n+1)+1)`
-/

namespace A193044.P2343383742700581861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (n + 1) - (A000096 (n + 1) + 1)

end

end A193044.P2343383742700581861

namespace A193044

/-- `A168674(n+1)-(A000096(n+1)+1)` -/
def P2343383742700581861.Spec : Prop :=
  ∀ n, P2343383742700581861.a n = A193044 n

end A193044

/-! ## A193044.P10336184565952676310

`∑[A000032(n+1)-(n+2)]+A000032(n)`
-/

namespace A193044.P10336184565952676310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000032 n

end

end A193044.P10336184565952676310

namespace A193044

/-- `∑[A000032(n+1)-(n+2)]+A000032(n)` -/
def P10336184565952676310.Spec : Prop :=
  ∀ n, P10336184565952676310.a n = A193044 n

end A193044

/-! ## A193044.P14145312738734850389

`A192967(n)+A192968(n)-A000045(n)`
-/

namespace A193044.P14145312738734850389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + (A192968 n - A000045 n)

end

end A193044.P14145312738734850389

namespace A193044

/-- `A192967(n)+A192968(n)-A000045(n)` -/
def P14145312738734850389.Spec : Prop :=
  ∀ n, P14145312738734850389.a n = A193044 n

end A193044

/-! ## A193044.P15279433783063729041

`A192955(n)-a(n-1)` with `a(0)=1`
-/

namespace A193044.P15279433783063729041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192955 n - a (n - 1)

end

end A193044.P15279433783063729041

namespace A193044

/-- `A192955(n)-a(n-1)` -/
def P15279433783063729041.Spec : Prop :=
  ∀ n, P15279433783063729041.a n = A193044 n

end A193044

/-! ## A193044.P14227775682354449245

`A192966(n)+A152163(n)`
-/

namespace A193044.P14227775682354449245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192966 n + A152163 n

end

end A193044.P14227775682354449245

namespace A193044

/-- `A192966(n)+A152163(n)` -/
def P14227775682354449245.Spec : Prop :=
  ∀ n, P14227775682354449245.a n = A193044 n

end A193044

/-! ## A193044.P7922674583628374725

`A192968(n+1)-A000045(n)`
-/

namespace A193044.P7922674583628374725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192968 (n + 1) - A000045 n

end

end A193044.P7922674583628374725

namespace A193044

/-- `A192968(n+1)-A000045(n)` -/
def P7922674583628374725.Spec : Prop :=
  ∀ n, P7922674583628374725.a n = A193044 n

end A193044

/-! ## A193044.P11673796551392087985

`∑[A066982(n+1)]-A001610(n)`
-/

namespace A193044.P11673796551392087985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001610 n

end

end A193044.P11673796551392087985

namespace A193044

/-- `∑[A066982(n+1)]-A001610(n)` -/
def P11673796551392087985.Spec : Prop :=
  ∀ n, P11673796551392087985.a n = A193044 n

end A193044

/-!
# A193045: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193045, the canonical program `A193045.P2827464153145323467` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193045 has offset 0).

The definition of A193045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193045.P2827464153145323467

`∑[A193044(abs(1-n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193045

/-- `∑[A193044(abs(1-n))]` -/
def P2827464153145323467.Spec : Prop :=
  ∀ n, P2827464153145323467.a n = A193045 n

theorem P2827464153145323467.correct : P2827464153145323467.Spec := by
  intro n
  simp only [A193045]

end A193045

/-! ## A193045.P13492895805240822098

`A192955(n)-∑[C(n, 2)]`
-/

namespace A193045.P13492895805240822098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A193045.P13492895805240822098

namespace A193045

/-- `A192955(n)-∑[C(n, 2)]` -/
def P13492895805240822098.Spec : Prop :=
  ∀ n, P13492895805240822098.a n = A193045 n

end A193045

/-! ## A193045.P15305367295327708474

`A193044(n+1)-∑[∑[n]]`
-/

namespace A193045.P15305367295327708474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A193045.P15305367295327708474

namespace A193045

/-- `A193044(n+1)-∑[∑[n]]` -/
def P15305367295327708474.Spec : Prop :=
  ∀ n, P15305367295327708474.a n = A193045 n

end A193045

/-! ## A193045.P4431802066609643917

`A192954(n+1)-∑[∑[n+1]]`
-/

namespace A193045.P4431802066609643917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A193045.P4431802066609643917

namespace A193045

/-- `A192954(n+1)-∑[∑[n+1]]` -/
def P4431802066609643917.Spec : Prop :=
  ∀ n, P4431802066609643917.a n = A193045 n

end A193045

/-! ## A193045.P18241205720776702446

`∑[A022319(n)-A134869(n+1)]`
-/

namespace A193045.P18241205720776702446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n - A134869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193045.P18241205720776702446

namespace A193045

/-- `∑[A022319(n)-A134869(n+1)]` -/
def P18241205720776702446.Spec : Prop :=
  ∀ n, P18241205720776702446.a n = A193045 n

end A193045

/-! ## A193045.P5674891269477084656

`∑[A168674(n)-A000096(n)]-n`
-/

namespace A193045.P5674891269477084656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A193045.P5674891269477084656

namespace A193045

/-- `∑[A168674(n)-A000096(n)]-n` -/
def P5674891269477084656.Spec : Prop :=
  ∀ n, P5674891269477084656.a n = A193045 n

end A193045

/-! ## A193045.P100936194211340616

`∑[A193044(n)]-A193044(n)`
-/

namespace A193045.P100936194211340616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193044 n

end

end A193045.P100936194211340616

namespace A193045

/-- `∑[A193044(n)]-A193044(n)` -/
def P100936194211340616.Spec : Prop :=
  ∀ n, P100936194211340616.a n = A193045 n

end A193045

/-! ## A193045.P17385676349122370278

`∑[A192968(n)]-A000071(n+1)`
-/

namespace A193045.P17385676349122370278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000071 (n + 1)

end

end A193045.P17385676349122370278

namespace A193045

/-- `∑[A192968(n)]-A000071(n+1)` -/
def P17385676349122370278.Spec : Prop :=
  ∀ n, P17385676349122370278.a n = A193045 n

end A193045

/-!
# A193046: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193046, the canonical program `A193046.P4195873391393066853` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193046 has offset 0).

The definition of A193046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193046.P4195873391393066853

`Δ[(1-n)^4]+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193046

/-- `Δ[(1-n)^4]+a(n-1)+a(n-2)` -/
def P4195873391393066853.Spec : Prop :=
  ∀ n, P4195873391393066853.a n = A193046 n

theorem P4195873391393066853.correct : P4195873391393066853.Spec := by
  intro n
  simp only [A193046]

end A193046

/-! ## A193046.P17356400525137439200

`Δ[(1-n)²²+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A193046.P17356400525137439200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193046.P17356400525137439200

namespace A193046

/-- `Δ[(1-n)²²+a(n-1)+a(n-2)]` -/
def P17356400525137439200.Spec : Prop :=
  ∀ n, P17356400525137439200.a n = A193046 n

end A193046

/-! ## A193046.P5637321739755133488

`Δ[A193047(n)]`
-/

namespace A193046.P5637321739755133488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193046.P5637321739755133488

namespace A193046

/-- `Δ[A193047(n)]` -/
def P5637321739755133488.Spec : Prop :=
  ∀ n, P5637321739755133488.a n = A193046 n

end A193046

/-! ## A193046.P75401586237938955

`A193047(n+1)-A193047(n)`
-/

namespace A193046.P75401586237938955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193047 (n + 1) - A193047 n

end

end A193046.P75401586237938955

namespace A193046

/-- `A193047(n+1)-A193047(n)` -/
def P75401586237938955.Spec : Prop :=
  ∀ n, P75401586237938955.a n = A193046 n

end A193046

/-!
# A193047: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193047, the canonical program `A193047.P17711022330559835664` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193047 has offset 0).

The definition of A193047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193047.P17711022330559835664

`(1-n)²²+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193047

/-- `(1-n)²²+a(n-1)+a(n-2)` -/
def P17711022330559835664.Spec : Prop :=
  ∀ n, P17711022330559835664.a n = A193047 n

theorem P17711022330559835664.correct : P17711022330559835664.Spec := by
  intro n
  simp only [A193047]

end A193047

/-! ## A193047.P5922055565761359158

`A193046(n+1)-(n+1)²²`
-/

namespace A193047.P5922055565761359158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193046 (n + 1) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A193047.P5922055565761359158

namespace A193047

/-- `A193046(n+1)-(n+1)²²` -/
def P5922055565761359158.Spec : Prop :=
  ∀ n, P5922055565761359158.a n = A193047 n

end A193047

/-! ## A193047.P7742532985930338643

`∑[A193046(n)]-A193046(n)`
-/

namespace A193047.P7742532985930338643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193046 n

end

end A193047.P7742532985930338643

namespace A193047

/-- `∑[A193046(n)]-A193046(n)` -/
def P7742532985930338643.Spec : Prop :=
  ∀ n, P7742532985930338643.a n = A193047 n

end A193047

/-!
# A193048: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193048, the canonical program `A193048.P11747303590426001134` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193048 has offset 0).

The definition of A193048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193048.P11747303590426001134

`A179992(n+1)-C(n+4, 4)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193048

/-- `A179992(n+1)-C(n+4, 4)` -/
def P11747303590426001134.Spec : Prop :=
  ∀ n, P11747303590426001134.a n = A193048 n

theorem P11747303590426001134.correct : P11747303590426001134.Spec := by
  intro n
  simp only [A193048]

end A193048

/-! ## A193048.P4812967821815037037

`A000332(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A193048.P4812967821815037037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000332 (n + 1) + (a (n - 2) + a (n - 1))

end

end A193048.P4812967821815037037

namespace A193048

/-- `A000332(n+1)+a(n-2)+a(n-1)` -/
def P4812967821815037037.Spec : Prop :=
  ∀ n, P4812967821815037037.a n = A193048 n

end A193048

/-! ## A193048.P9837046623778525994

`∑[A193045(n)-Δ[A006355(n)]]`
-/

namespace A193048.P9837046623778525994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193045 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193048.P9837046623778525994

namespace A193048

/-- `∑[A193045(n)-Δ[A006355(n)]]` -/
def P9837046623778525994.Spec : Prop :=
  ∀ n, P9837046623778525994.a n = A193048 n

end A193048

/-! ## A193048.P5170959831263166573

`Δ[A193049(n)]`
-/

namespace A193048.P5170959831263166573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193048.P5170959831263166573

namespace A193048

/-- `Δ[A193049(n)]` -/
def P5170959831263166573.Spec : Prop :=
  ∀ n, P5170959831263166573.a n = A193048 n

end A193048

/-! ## A193048.P3928021089351061216

`A193049(n+1)-A193049(n)`
-/

namespace A193048.P3928021089351061216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193049 (n + 1) - A193049 n

end

end A193048.P3928021089351061216

namespace A193048

/-- `A193049(n+1)-A193049(n)` -/
def P3928021089351061216.Spec : Prop :=
  ∀ n, P3928021089351061216.a n = A193048 n

end A193048

/-!
# A193049: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A193049, the canonical program `A193049.P17144919572664860240` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193049 has offset 0).

The definition of A193049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193049.P17144919572664860240

`∑[A193048(abs(1-n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193049

/-- `∑[A193048(abs(1-n))]` -/
def P17144919572664860240.Spec : Prop :=
  ∀ n, P17144919572664860240.a n = A193049 n

theorem P17144919572664860240.correct : P17144919572664860240.Spec := by
  intro n
  simp only [A193049]

end A193049

/-! ## A193049.P4510082951233924207

`A193048(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A193049.P4510082951233924207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A193048 (n - 1) + a (n - 1)

end

end A193049.P4510082951233924207

namespace A193049

/-- `A193048(n-1)+a(n-1)` -/
def P4510082951233924207.Spec : Prop :=
  ∀ n, P4510082951233924207.a n = A193049 n

end A193049

/-! ## A193049.P3781645220999941851

`A193048(n-1)-(A242096(2*n)-a(n-1))` with `a(0)=0`
-/

namespace A193049.P3781645220999941851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A193048 (n - 1) - (A242096 (2 * n) - a (n - 1))

end

end A193049.P3781645220999941851

namespace A193049

/-- `A193048(n-1)-(A242096(2*n)-a(n-1))` -/
def P3781645220999941851.Spec : Prop :=
  ∀ n, P3781645220999941851.a n = A193049 n

end A193049

/-! ## A193049.P10027720231002203279

`∑[A193048(n)]-A193048(n)`
-/

namespace A193049.P10027720231002203279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193048 n

end

end A193049.P10027720231002203279

namespace A193049

/-- `∑[A193048(n)]-A193048(n)` -/
def P10027720231002203279.Spec : Prop :=
  ∀ n, P10027720231002203279.a n = A193049 n

end A193049

/-!
# A193050: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n*A(-x)^A003059(n+1), where A003059 is defined by "n appears 2n-1 times.".

The programs for A193050, there is no canonical definition to state claims against.
-/

/-! ## A193050.P13506706940512634342

`A249728(A380634(n))`
-/

namespace A193050.P13506706940512634342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A380634 n).toNat

end

end A193050.P13506706940512634342

/-! ## A193050.P5149359015231029165

`A187257(n)+A051889(A129519(n))`
-/

namespace A193050.P5149359015231029165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187257 n + A051889 (A129519 n).toNat

end

end A193050.P5149359015231029165

/-! ## A193050.P3023145150559506534

`A030035(n)-A352128(A030037(n))`
-/

namespace A193050.P3023145150559506534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030035 n - A352128 (A030037 n).toNat

end

end A193050.P3023145150559506534

/-! ## A193050.P7161113918209305821

`A089796(n+1)+A011735(A000111(n))`
-/

namespace A193050.P7161113918209305821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089796 (n + 1) + A011735 (A000111 n).toNat

end

end A193050.P7161113918209305821

/-! ## A193050.P1942987748451918481

`A112482(n+1)+A011735(A000111(n))`
-/

namespace A193050.P1942987748451918481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112482 (n + 1) + A011735 (A000111 n).toNat

end

end A193050.P1942987748451918481

/-!
# A193051: Primes p such that 12*p^2-1 and 16*p^3-1 are also primes.

The programs for A193051, there is no canonical definition to state claims against.
-/

/-! ## A193051.P11537084301649869769

`∑[A033721(A192874(n)²)]`
-/

namespace A193051.P11537084301649869769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (A192874 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193051.P11537084301649869769

/-! ## A193051.P2854276284434670886

`A316428(A077510(p?[a(n-1)+2]-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A193051.P2854276284434670886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (A077510 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)).toNat

end

end A193051.P2854276284434670886

/-!
# A193052: a(n) = 5^n - 4^n - 3^n.

The programs for A193052, the canonical program `A193052.P8142829727168776448` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193052 has offset 0).

The definition of A193052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n-3^n` (program `A193052.P8142829727168776448`, by `A193052.P8142829727168776448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193052.P14572956940421825730

`5^n-3^n-4^n`
-/

namespace A193052.P14572956940421825730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - (3 ^ n : ℤ) - (4 ^ n : ℤ)

end

end A193052.P14572956940421825730

namespace A193052

/-- `5^n-3^n-4^n` -/
def P14572956940421825730.Spec : Prop :=
  ∀ n, P14572956940421825730.a n = A193052 n

theorem P14572956940421825730.correct : P14572956940421825730.Spec := by
  intro n
  simp only [A193052, Nat.add_sub_cancel, A193052.P14572956940421825730.a, A193052.P8142829727168776448.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A193052

/-! ## A193052.P8142829727168776448

`5^n-4^n-3^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193052

/-- `5^n-4^n-3^n` -/
def P8142829727168776448.Spec : Prop :=
  ∀ n, P8142829727168776448.a n = A193052 n

theorem P8142829727168776448.correct : P8142829727168776448.Spec := by
  intro n
  simp only [A193052]

end A193052

/-! ## A193052.P10649004605857422545

`Δ[A007798(n)-A002450(n)]`
-/

namespace A193052.P10649004605857422545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193052.P10649004605857422545

namespace A193052

/-- `Δ[A007798(n)-A002450(n)]` -/
def P10649004605857422545.Spec : Prop :=
  ∀ n, P10649004605857422545.a n = A193052 n

end A193052

/-! ## A193052.P6967769820403040178

`Δ[A003463(n)-A036557(2*n+1)]`
-/

namespace A193052.P6967769820403040178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A036557 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193052.P6967769820403040178

namespace A193052

/-- `Δ[A003463(n)-A036557(2*n+1)]` -/
def P6967769820403040178.Spec : Prop :=
  ∀ n, P6967769820403040178.a n = A193052 n

end A193052

/-! ## A193052.P15486708039296613321

`Δ[A003463(n)-(A007051(n)+A002450(n))]`
-/

namespace A193052.P15486708039296613321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - (A007051 n + A002450 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193052.P15486708039296613321

namespace A193052

/-- `Δ[A003463(n)-(A007051(n)+A002450(n))]` -/
def P15486708039296613321.Spec : Prop :=
  ∀ n, P15486708039296613321.a n = A193052 n

end A193052

/-! ## A193052.P12364943413086094017

`(A005058(n)-A000302(n))%A005055(n)`
-/

namespace A193052.P12364943413086094017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005058 n - A000302 n) (A005055 n)

end

end A193052.P12364943413086094017

namespace A193052

/-- `(A005058(n)-A000302(n))%A005055(n)` -/
def P12364943413086094017.Spec : Prop :=
  ∀ n, P12364943413086094017.a n = A193052 n

end A193052

/-!
# A193053: a(n) = (14*n*(n+3) + (2*n-5)*(-1)^n + 21)/16.

The programs for A193053, the canonical program `A193053.P13739462359806345897` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193053 has offset 0).

The definition of A193053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193053.P9112538412696112889

`(14*n*(n+3)+(2*n-5)*(-1)^n+21)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193053.P9112538412696112889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * n * (n + 3) : ℤ) + ((2 * n : ℤ) - 5) * (-1) ^ n + 21 : ℚ) / 16

end

end A193053.P9112538412696112889

namespace A193053

/-- `(14*n*(n+3)+(2*n-5)*(-1)^n+21)/16` -/
def P9112538412696112889.Spec : Prop :=
  ∀ n, P9112538412696112889.a n = (A193053 n : ℚ)

end A193053

/-! ## A193053.P13739462359806345897

`A195020(n)+n+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193053

/-- `A195020(n)+n+1` -/
def P13739462359806345897.Spec : Prop :=
  ∀ n, P13739462359806345897.a n = A193053 n

theorem P13739462359806345897.correct : P13739462359806345897.Spec := by
  intro n
  simp only [A193053]

end A193053

/-! ## A193053.P13805151015526392454

`∑[gcd(2, n)+a(n-2)+2]` with `a(0)=1, a(1)=4`
-/

namespace A193053.P13805151015526392454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  Nat.gcd 2 n + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P13805151015526392454

namespace A193053

/-- `∑[gcd(2, n)+a(n-2)+2]` -/
def P13805151015526392454.Spec : Prop :=
  ∀ n, (P13805151015526392454.a n : ℤ) = A193053 n

end A193053

/-! ## A193053.P12882095273235550129

`∑[a(n-2)+4-n%2]` with `a(0)=1, a(1)=4`
-/

namespace A193053.P12882095273235550129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + (4 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P12882095273235550129

namespace A193053

/-- `∑[a(n-2)+4-n%2]` -/
def P12882095273235550129.Spec : Prop :=
  ∀ n, P12882095273235550129.a n = A193053 n

end A193053

/-! ## A193053.P11632403893451084467

`∑[∑[a(n-2)+(-1)^n]]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A193053.P11632403893451084467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n f2 =>
  f2 (n - 2) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P11632403893451084467

namespace A193053

/-- `∑[∑[a(n-2)+(-1)^n]]` -/
def P11632403893451084467.Spec : Prop :=
  ∀ n, P11632403893451084467.a n = A193053 n

end A193053

/-! ## A193053.P4148773819684312773

`∑[2*(n+1)-A057979(n)]`
-/

namespace A193053.P4148773819684312773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P4148773819684312773

namespace A193053

/-- `∑[2*(n+1)-A057979(n)]` -/
def P4148773819684312773.Spec : Prop :=
  ∀ n, P4148773819684312773.a n = A193053 n

end A193053

/-! ## A193053.P2769235000309399976

`A271937(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A193053.P2769235000309399976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271937 n - a (n - 1) + (n : ℤ)

end

end A193053.P2769235000309399976

namespace A193053

/-- `A271937(n)-a(n-1)+n` -/
def P2769235000309399976.Spec : Prop :=
  ∀ n, P2769235000309399976.a n = A193053 n

end A193053

/-! ## A193053.P6676680031086415213

`A135276(n)+A111710(n+1)`
-/

namespace A193053.P6676680031086415213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n + A111710 (n + 1)

end

end A193053.P6676680031086415213

namespace A193053

/-- `A135276(n)+A111710(n+1)` -/
def P6676680031086415213.Spec : Prop :=
  ∀ n, P6676680031086415213.a n = A193053 n

end A193053

/-! ## A193053.P12816895892725942989

`A130472(n)+A118277(n+1)`
-/

namespace A193053.P12816895892725942989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A118277 (n + 1)

end

end A193053.P12816895892725942989

namespace A193053

/-- `A130472(n)+A118277(n+1)` -/
def P12816895892725942989.Spec : Prop :=
  ∀ n, P12816895892725942989.a n = A193053 n

end A193053

/-! ## A193053.P1972336561579294017

`A211538(n+1)+A052905(n)`
-/

namespace A193053.P1972336561579294017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1) + A052905 n

end

end A193053.P1972336561579294017

namespace A193053

/-- `A211538(n+1)+A052905(n)` -/
def P1972336561579294017.Spec : Prop :=
  ∀ n, P1972336561579294017.a n = A193053 n

end A193053

/-! ## A193053.P12887917738242820893

`A194073(n+1)+A165157(n)`
-/

namespace A193053.P12887917738242820893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1) + A165157 n

end

end A193053.P12887917738242820893

namespace A193053

/-- `A194073(n+1)+A165157(n)` -/
def P12887917738242820893.Spec : Prop :=
  ∀ n, P12887917738242820893.a n = A193053 n

end A193053

/-! ## A193053.P13336867911861125103

`A118277(n+1)-A001057(n)`
-/

namespace A193053.P13336867911861125103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 (n + 1) - A001057 n

end

end A193053.P13336867911861125103

namespace A193053

/-- `A118277(n+1)-A001057(n)` -/
def P13336867911861125103.Spec : Prop :=
  ∀ n, P13336867911861125103.a n = A193053 n

end A193053

/-! ## A193053.P15509938566540141930

`A171769(n+1)-A114220(n)`
-/

namespace A193053.P15509938566540141930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171769 (n + 1) - A114220 n

end

end A193053.P15509938566540141930

namespace A193053

/-- `A171769(n+1)-A114220(n)` -/
def P15509938566540141930.Spec : Prop :=
  ∀ n, P15509938566540141930.a n = A193053 n

end A193053

/-! ## A193053.P5311145032755406662

`A006010(n+1)-A331429(n)`
-/

namespace A193053.P5311145032755406662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006010 (n + 1) - A331429 n

end

end A193053.P5311145032755406662

namespace A193053

/-- `A006010(n+1)-A331429(n)` -/
def P5311145032755406662.Spec : Prop :=
  ∀ n, P5311145032755406662.a n = A193053 n

end A193053

/-! ## A193053.P10609710009513932590

`A026381(n+2)-A131805(n)`
-/

namespace A193053.P10609710009513932590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026381 (n + 2) - A131805 n

end

end A193053.P10609710009513932590

namespace A193053

/-- `A026381(n+2)-A131805(n)` -/
def P10609710009513932590.Spec : Prop :=
  ∀ n, P10609710009513932590.a n = A193053 n

end A193053

/-! ## A193053.P12250231044513078042

`∑[A005408(n)+1-A057979(n)]`
-/

namespace A193053.P12250231044513078042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A057979 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P12250231044513078042

namespace A193053

/-- `∑[A005408(n)+1-A057979(n)]` -/
def P12250231044513078042.Spec : Prop :=
  ∀ n, P12250231044513078042.a n = A193053 n

end A193053

/-! ## A193053.P2809562830869712183

`A002378(n)-∑[A057979(n)-2]`
-/

namespace A193053.P2809562830869712183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P2809562830869712183

namespace A193053

/-- `A002378(n)-∑[A057979(n)-2]` -/
def P2809562830869712183.Spec : Prop :=
  ∀ n, P2809562830869712183.a n = A193053 n

end A193053

/-! ## A193053.P16392610603787234050

`∑[∑[A000034(n)²]]-A001318(n)`
-/

namespace A193053.P16392610603787234050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001318 n

end

end A193053.P16392610603787234050

namespace A193053

/-- `∑[∑[A000034(n)²]]-A001318(n)` -/
def P16392610603787234050.Spec : Prop :=
  ∀ n, P16392610603787234050.a n = A193053 n

end A193053

/-! ## A193053.P10806765810204055967

`∑[∑[A000034(n)²]-A026741(n)]`
-/

namespace A193053.P10806765810204055967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193053.P10806765810204055967

namespace A193053

/-- `∑[∑[A000034(n)²]-A026741(n)]` -/
def P10806765810204055967.Spec : Prop :=
  ∀ n, P10806765810204055967.a n = A193053 n

end A193053

/-! ## A193053.P14430800697560285556

`A006578(n+1)+A001859(n)-A210977(n)`
-/

namespace A193053.P14430800697560285556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (n + 1) + (A001859 n - A210977 n)

end

end A193053.P14430800697560285556

namespace A193053

/-- `A006578(n+1)+A001859(n)-A210977(n)` -/
def P14430800697560285556.Spec : Prop :=
  ∀ n, P14430800697560285556.a n = A193053 n

end A193053

/-!
# A193056: Reciprocals are the complement to logarithm of Riemann zeta. a(1)=0, for n>1: a(n) = A008683(n) + A100995(n).

The programs for A193056, the canonical program `A193056.P6449544040074946363` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193056 has offset 1).

The definition of A193056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193056.P6449544040074946363

`A100995(n+1)-A157658(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193056

/-- `A100995(n+1)-A157658(n+1)` -/
def P6449544040074946363.Spec : Prop :=
  ∀ n, P6449544040074946363.a n = A193056 (n + 1)

theorem P6449544040074946363.correct : P6449544040074946363.Spec := by
  intro n
  simp only [A193056, Nat.add_sub_cancel]

end A193056

/-! ## A193056.P11496002400994050756

`(A100995(n+1)+A008683(n+1))%(n+1)`
-/

namespace A193056.P11496002400994050756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100995 (n + 1) + A008683 (n + 1)) (n + 1 : ℤ)

end

end A193056.P11496002400994050756

namespace A193056

/-- `(A100995(n+1)+A008683(n+1))%(n+1)` -/
def P11496002400994050756.Spec : Prop :=
  ∀ n, P11496002400994050756.a n = A193056 (n + 1)

end A193056

/-! ## A193056.P13966337054938293117

`A001222(A100994(n+1))-A157658(n+1)`
-/

namespace A193056.P13966337054938293117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100994 (n + 1)).toNat - A157658 (n + 1)

end

end A193056.P13966337054938293117

namespace A193056

/-- `A001222(A100994(n+1))-A157658(n+1)` -/
def P13966337054938293117.Spec : Prop :=
  ∀ n, P13966337054938293117.a n = A193056 (n + 1)

end A193056

/-! ## A193056.P4851080743228252902

`(A052409(A014963(n+1))+A008683(n+1))*A052409(n+1)`
-/

namespace A193056.P4851080743228252902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052409 (A014963 (n + 1)).toNat + A008683 (n + 1)) * A052409 (n + 1)

end

end A193056.P4851080743228252902

namespace A193056

/-- `(A052409(A014963(n+1))+A008683(n+1))*A052409(n+1)` -/
def P4851080743228252902.Spec : Prop :=
  ∀ n, P4851080743228252902.a n = A193056 (n + 1)

end A193056

/-! ## A193056.P7493677286568706027

`A008683(n+1)-A005361(n+1)*A008683(A034444(n+1))`
-/

namespace A193056.P7493677286568706027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A005361 (n + 1) * A008683 (A034444 (n + 1)).toNat

end

end A193056.P7493677286568706027

namespace A193056

/-- `A008683(n+1)-A005361(n+1)*A008683(A034444(n+1))` -/
def P7493677286568706027.Spec : Prop :=
  ∀ n, P7493677286568706027.a n = A193056 (n + 1)

end A193056

/-! ## A193056.P2500928720788539533

`A100995(A045965(n+1))-A157657(n+1)`
-/

namespace A193056.P2500928720788539533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A045965 (n + 1)).toNat - A157657 (n + 1)

end

end A193056.P2500928720788539533

namespace A193056

/-- `A100995(A045965(n+1))-A157657(n+1)` -/
def P2500928720788539533.Spec : Prop :=
  ∀ n, P2500928720788539533.a n = A193056 (n + 1)

end A193056

/-! ## A193056.P11629914931015943235

`A157657(2*A045965(n+1))+A100995(n+1)`
-/

namespace A193056.P11629914931015943235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (2 * A045965 (n + 1)).toNat + A100995 (n + 1)

end

end A193056.P11629914931015943235

namespace A193056

/-- `A157657(2*A045965(n+1))+A100995(n+1)` -/
def P11629914931015943235.Spec : Prop :=
  ∀ n, P11629914931015943235.a n = A193056 (n + 1)

end A193056

/-!
# A193057: Number of size n nonnegative integer arrays with new values introduced in increasing order from 0, and no 2 consecutive elements totalling n or more.

The programs for A193057, there is no canonical definition to state claims against.
-/

/-! ## A193057.P4085894739725035863

`∑[A277711(A000110(n)*A113547(n+1))]`
-/

namespace A193057.P4085894739725035863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (A000110 n * A113547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193057.P4085894739725035863

/-! ## A193057.P10318957627095562666

`A302497(A026765(n))`
-/

namespace A193057.P10318957627095562666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (A026765 n).toNat

end

end A193057.P10318957627095562666

/-!
# A193058: Number of size n nonnegative integer arrays with new values introduced in increasing order from 0, and no 3 consecutive elements totalling n or more.

The programs for A193058, there is no canonical definition to state claims against.
-/

/-! ## A193058.P12951104950882881711

`A309326(A102726(n))+A065619(n+1)`
-/

namespace A193058.P12951104950882881711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309326 (A102726 n).toNat + A065619 (n + 1)

end

end A193058.P12951104950882881711

/-! ## A193058.P10649294579966927442

`A094331(A000124(n))+A072114(A286761(n))+n`
-/

namespace A193058.P10649294579966927442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094331 (A000124 n).toNat + (A072114 (A286761 n).toNat + (n : ℤ))

end

end A193058.P10649294579966927442

/-! ## A193058.P9802622603453630150

`A069905(A000040(n+1))+A003074(A105484(n+4))+1`
-/

namespace A193058.P9802622603453630150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A000040 (n + 1)).toNat + (A003074 (A105484 (n + 4)).toNat + 1)

end

end A193058.P9802622603453630150

/-!
# A193059: Number of size n nonnegative integer arrays with new values introduced in increasing order from 0, and no 4 consecutive elements totalling n or more.

The programs for A193059, there is no canonical definition to state claims against.
-/

/-! ## A193059.P10038862322181063628

`A228246(A022493(n))+n`
-/

namespace A193059.P10038862322181063628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (A022493 n).toNat + (n : ℤ)

end

end A193059.P10038862322181063628

/-! ## A193059.P3611500399104846838

`∑[A335380(A090368(n!))+floor(n/3)]`
-/

namespace A193059.P3611500399104846838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A090368 (Nat.factorial n)).toNat + ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193059.P3611500399104846838

/-! ## A193059.P14605039091468914736

`round(A155222(2*n+3)/A155226(2*n+3))`
-/

namespace A193059.P14605039091468914736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155222 (2 * n + 3) : ℚ) / (A155226 (2 * n + 3) : ℚ))

end

end A193059.P14605039091468914736

/-!
# A193060: Number of size n nonnegative integer arrays with new values introduced in increasing order from 0, and no 5 consecutive elements totalling n or more.

The programs for A193060, there is no canonical definition to state claims against.
-/

/-! ## A193060.P2380231094888764646

`A283467(A058693(n+3)+2)`
-/

namespace A193060.P2380231094888764646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (A058693 (n + 3) + 2).toNat

end

end A193060.P2380231094888764646

/-! ## A193060.P14048795278614991114

`A055930(A326563(n)+A055922(3*n))`
-/

namespace A193060.P14048795278614991114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A326563 n + A055922 (3 * n)).toNat

end

end A193060.P14048795278614991114

/-! ## A193060.P18127253038969531352

`A111439(A069725(n+1)*A130146(n+1))`
-/

namespace A193060.P18127253038969531352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A069725 (n + 1) * A130146 (n + 1)).toNat

end

end A193060.P18127253038969531352

/-!
# A193061: Number of size n nonnegative integer arrays with new values introduced in increasing order from 0, and no 6 consecutive elements totalling n or more.

The programs for A193061, there is no canonical definition to state claims against.
-/

/-! ## A193061.P7330201024695774194

`A193062(∑[A053497(n)])`
-/

namespace A193061.P7330201024695774194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193062 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193061.P7330201024695774194

/-! ## A193061.P10311357117927937077

`A193062(∑[A351221(n)])`
-/

namespace A193061.P10311357117927937077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193062 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193061.P10311357117927937077

/-! ## A193061.P1654651745785750220

`A193062(A053497(n)+n)`
-/

namespace A193061.P1654651745785750220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193062 (A053497 n + (n : ℤ)).toNat

end

end A193061.P1654651745785750220

/-!
# A193065: Odd numbers N for which numerator(sigma(N)/N) is a prime.

The programs for A193065, there is no canonical definition to state claims against.
-/

/-! ## A193065.P13717128665706152438

`A193066(n+1)²`
-/

namespace A193065.P13717128665706152438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1) ^ 2

end

end A193065.P13717128665706152438

/-! ## A193065.P8988765416335999355

`(A008836(n+1)*A193066(n+1))^2`
-/

namespace A193065.P8988765416335999355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) * A193066 (n + 1)) ^ 2

end

end A193065.P8988765416335999355

/-! ## A193065.P7171685092413334864

`A193066(n+1)^A319048(2*n+1)`
-/

namespace A193065.P7171685092413334864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193066 (n + 1) : ℚ) ^ (A319048 (2 * n + 1) : ℤ)

end

end A193065.P7171685092413334864

/-! ## A193065.P12039190645174782579

`A193066(n+1)^(2%A031131(n+1))`
-/

namespace A193065.P12039190645174782579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193066 (n + 1) : ℚ) ^ (Int.tmod 2 (A031131 (n + 1)) : ℤ)

end

end A193065.P12039190645174782579

/-! ## A193065.P14425320316993345875

`A193066(A000027(n+1))*A193066(n+1)`
-/

namespace A193065.P14425320316993345875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (A000027 (n + 1)).toNat * A193066 (n + 1)

end

end A193065.P14425320316993345875

/-! ## A193065.P18342058588497825068

`A193066(n+1)*A193066(A005408(n)-n)`
-/

namespace A193065.P18342058588497825068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1) * A193066 (A005408 n - (n : ℤ)).toNat

end

end A193065.P18342058588497825068

/-! ## A193065.P6801901105785379725

`A193066(n+1)*A193066((n+1)%A094305(n+1))`
-/

namespace A193065.P6801901105785379725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1) * A193066 (Int.tmod (n + 1 : ℤ) (A094305 (n + 1))).toNat

end

end A193065.P6801901105785379725

/-! ## A193065.P10229193577242593975

`A193066(n+1)^A000040(A001222(A088732(n)))`
-/

namespace A193065.P10229193577242593975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193066 (n + 1) : ℚ) ^ (A000040 (A001222 (A088732 n).toNat).toNat : ℤ)

end

end A193065.P10229193577242593975

/-! ## A193065.P13242235209411673243

`(A193066(n+2)-Δ[A193066(n+1)])^2`
-/

namespace A193065.P13242235209411673243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193066 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A193065.P13242235209411673243

/-! ## A193065.P13143379073568117112

`A193066(n+1)^A020639(A189814(n+1))`
-/

namespace A193065.P13143379073568117112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193066 (n + 1) : ℚ) ^ (A020639 (A189814 (n + 1)).toNat : ℤ)

end

end A193065.P13143379073568117112

/-! ## A193065.P5432439856854718901

`A000290(2*A193066(n+1)-A193066(n+1))`
-/

namespace A193065.P5432439856854718901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A193066 (n + 1) - A193066 (n + 1)).toNat

end

end A193065.P5432439856854718901

/-! ## A193065.P18021136200390661354

`A000290(A008836(n+1)*A193066(n+1)*A008836(n+1))`
-/

namespace A193065.P18021136200390661354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008836 (n + 1) * A193066 (n + 1) * A008836 (n + 1)).toNat

end

end A193065.P18021136200390661354

/-!
# A193066: Odd numbers N such that numerator(sigma(N^2)/N^2) is a prime.

The programs for A193066, there is no canonical definition to state claims against.
-/

/-! ## A193066.P11551609801718366488

`A000196(A193065(n+1))`
-/

namespace A193066.P11551609801718366488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A193065 (n + 1)).toNat

end

end A193066.P11551609801718366488

/-! ## A193066.P15523205927952793141

`A000027(root(A193065(n+1), 2))`
-/

namespace A193066.P15523205927952793141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A193065 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A193066.P15523205927952793141

/-! ## A193066.P4732515624070386693

`root(A193065(n+1), dr(A017185(n)))`
-/

namespace A193066.P4732515624070386693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A193065 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A017185 n) : ℝ))

end

end A193066.P4732515624070386693

/-! ## A193066.P1199602871599872533

`root(A193065(n+1), A133265(A133265(n)))`
-/

namespace A193066.P1199602871599872533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A193065 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A193066.P1199602871599872533

/-! ## A193066.P3786514014566093131

`A193065(n+1)^(A076831(Δ[A004526(n)])/2)`
-/

namespace A193066.P3786514014566093131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A193065 (n + 1) : ℝ) ^ ((A076831 (f1 (n + 1) - f1 n).toNat : ℚ) / 2 : ℝ)

end

end A193066.P3786514014566093131

/-! ## A193066.P16615220202531445646

`A000265(root(A193065(n+1), 2))`
-/

namespace A193066.P16615220202531445646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A193065 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A193066.P16615220202531445646

/-! ## A193066.P9742887508201637710

`A242480(root(A193065(n+1), 2))`
-/

namespace A193066.P9742887508201637710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (SequenceMachineLib.roundAway ((A193065 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A193066.P9742887508201637710

/-!
# A193067: The number of isomorphism classes of connected Alexander (a.k.a. indecomposable affine) quandles of order n.

The programs for A193067, there is no canonical definition to state claims against.
-/

/-! ## A193067.P6192743692777660303

`A177886(n+1)-A102683(A131269(n))`
-/

namespace A193067.P6192743692777660303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (n + 1) - A102683 (A131269 n).toNat

end

end A193067.P6192743692777660303

/-! ## A193067.P16611496624323986915

`A177886(n+1)-A088806(A091955(n+1))`
-/

namespace A193067.P16611496624323986915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (n + 1) - A088806 (A091955 (n + 1)).toNat

end

end A193067.P16611496624323986915

/-! ## A193067.P6053241061576056921

`ceil(A177886(n+1)/A342017(A074860(n)))`
-/

namespace A193067.P6053241061576056921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177886 (n + 1) : ℚ) / (A342017 (A074860 n).toNat : ℚ)⌉

end

end A193067.P6053241061576056921

/-! ## A193067.P13516538149072691017

`A225744(n+1)-A279372(A046682(n))`
-/

namespace A193067.P13516538149072691017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225744 (n + 1) - A279372 (A046682 n).toNat

end

end A193067.P13516538149072691017

/-! ## A193067.P17222177822584459820

`A225744(n+1)-A102679(A075500(n+1))`
-/

namespace A193067.P17222177822584459820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225744 (n + 1) - A102679 (A075500 (n + 1)).toNat

end

end A193067.P17222177822584459820

/-!
# A193068: Generating primitive Pythagorean triangles by using (n, n+1) gives perimeters for each n. This sequence lists the sum of these perimeters for each n triangles.

The programs for A193068, the canonical program `A193068.P6563937793198231246` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193068 has offset 1).

The definition of A193068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193068.P11759628649292139535

`(n+1)*(4*(n+1)²+15*(n+1)+17)/3`
-/

namespace A193068.P11759628649292139535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (4 * (n + 1) ^ 2 + 15 * (n + 1) + 17) : ℚ) / 3

end

end A193068.P11759628649292139535

namespace A193068

/-- `(n+1)*(4*(n+1)²+15*(n+1)+17)/3` -/
def P11759628649292139535.Spec : Prop :=
  ∀ n, P11759628649292139535.a n = (A193068 (n + 1) : ℚ)

theorem P11759628649292139535.correct : P11759628649292139535.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A193068, Nat.add_sub_cancel, A193068.P11759628649292139535.a, A193068.P6563937793198231246.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A193068, Nat.add_sub_cancel, A193068.P11759628649292139535.a, A193068.P6563937793198231246.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A193068

/-! ## A193068.P6563937793198231246

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=12, a(1)=42, a(2)=98, a(3)=188`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193068

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6563937793198231246.Spec : Prop :=
  ∀ n, P6563937793198231246.a n = A193068 (n + 1)

theorem P6563937793198231246.correct : P6563937793198231246.Spec := by
  intro n
  simp only [A193068, Nat.add_sub_cancel]

end A193068

/-! ## A193068.P2961420584655280826

`2*(A002412(n+2)-1)`
-/

namespace A193068.P2961420584655280826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002412 (n + 2) - 1)

end

end A193068.P2961420584655280826

namespace A193068

/-- `2*(A002412(n+2)-1)` -/
def P2961420584655280826.Spec : Prop :=
  ∀ n, P2961420584655280826.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P1443041923090608205

`∑[2*C(2*(n+2), 2)]`
-/

namespace A193068.P1443041923090608205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P1443041923090608205

namespace A193068

/-- `∑[2*C(2*(n+2), 2)]` -/
def P1443041923090608205.Spec : Prop :=
  ∀ n, (P1443041923090608205.a n : ℤ) = A193068 (n + 1)

end A193068

/-! ## A193068.P11662537938067292652

`∑[∑[a(n-1)+8]]` with `a(0)=12, a(1)=18`
-/

namespace A193068.P11662537938067292652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12, 18] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P11662537938067292652

namespace A193068

/-- `∑[∑[a(n-1)+8]]` -/
def P11662537938067292652.Spec : Prop :=
  ∀ n, (P11662537938067292652.a n : ℤ) = A193068 (n + 1)

end A193068

/-! ## A193068.P16301850074591431665

`∑[A228318(n+1)-3]`
-/

namespace A193068.P16301850074591431665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228318 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P16301850074591431665

namespace A193068

/-- `∑[A228318(n+1)-3]` -/
def P16301850074591431665.Spec : Prop :=
  ∀ n, P16301850074591431665.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P5606954600037731276

`A130809(n+3)+A028552(n+1)`
-/

namespace A193068.P5606954600037731276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130809 (n + 3) + A028552 (n + 1)

end

end A193068.P5606954600037731276

namespace A193068

/-- `A130809(n+3)+A028552(n+1)` -/
def P5606954600037731276.Spec : Prop :=
  ∀ n, P5606954600037731276.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P13093118680248012040

`∑[A280344(n+1)]`
-/

namespace A193068.P13093118680248012040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P13093118680248012040

namespace A193068

/-- `∑[A280344(n+1)]` -/
def P13093118680248012040.Spec : Prop :=
  ∀ n, P13093118680248012040.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P12033400239188461562

`∑[A002939(n+2)]`
-/

namespace A193068.P12033400239188461562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P12033400239188461562

namespace A193068

/-- `∑[A002939(n+2)]` -/
def P12033400239188461562.Spec : Prop :=
  ∀ n, P12033400239188461562.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P11613180746889344526

`∑[A082108(n+1)+1]`
-/

namespace A193068.P11613180746889344526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P11613180746889344526

namespace A193068

/-- `∑[A082108(n+1)+1]` -/
def P11613180746889344526.Spec : Prop :=
  ∀ n, P11613180746889344526.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P15424100193897016105

`Δ[(n+1)*A180118(n)]`
-/

namespace A193068.P15424100193897016105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193068.P15424100193897016105

namespace A193068

/-- `Δ[(n+1)*A180118(n)]` -/
def P15424100193897016105.Spec : Prop :=
  ∀ n, P15424100193897016105.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P2713047783785518264

`∑[A300758(n+1)/(n+1)]`
-/

namespace A193068.P2713047783785518264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300758 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P2713047783785518264

namespace A193068

/-- `∑[A300758(n+1)/(n+1)]` -/
def P2713047783785518264.Spec : Prop :=
  ∀ n, P2713047783785518264.a n = (A193068 (n + 1) : ℚ)

end A193068

/-! ## A193068.P7330399699860010578

`∑[A164897(n+1)]+(n+1)²`
-/

namespace A193068.P7330399699860010578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A193068.P7330399699860010578

namespace A193068

/-- `∑[A164897(n+1)]+(n+1)²` -/
def P7330399699860010578.Spec : Prop :=
  ∀ n, P7330399699860010578.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P13974528369670820263

`n²+∑[A078370(n+1)]-1`
-/

namespace A193068.P13974528369670820263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A193068.P13974528369670820263

namespace A193068

/-- `n²+∑[A078370(n+1)]-1` -/
def P13974528369670820263.Spec : Prop :=
  ∀ n, P13974528369670820263.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P15682643830349769352

`∑[A082109(n+1)]-(n+1)²`
-/

namespace A193068.P15682643830349769352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A193068.P15682643830349769352

namespace A193068

/-- `∑[A082109(n+1)]-(n+1)²` -/
def P15682643830349769352.Spec : Prop :=
  ∀ n, P15682643830349769352.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P17832782408547137866

`A111694(n+2)+∑[A116668(n+1)]`
-/

namespace A193068.P17832782408547137866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111694 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193068.P17832782408547137866

namespace A193068

/-- `A111694(n+2)+∑[A116668(n+1)]` -/
def P17832782408547137866.Spec : Prop :=
  ∀ n, P17832782408547137866.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P13501586303674717659

`A028552(n+1)+2*A210440(n+1)`
-/

namespace A193068.P13501586303674717659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 1) + 2 * A210440 (n + 1)

end

end A193068.P13501586303674717659

namespace A193068

/-- `A028552(n+1)+2*A210440(n+1)` -/
def P13501586303674717659.Spec : Prop :=
  ∀ n, P13501586303674717659.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P100470600125727593

`A000330(n+1)+A081438(n+1)+n`
-/

namespace A193068.P100470600125727593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A081438 (n + 1) + (n : ℤ))

end

end A193068.P100470600125727593

namespace A193068

/-- `A000330(n+1)+A081438(n+1)+n` -/
def P100470600125727593.Spec : Prop :=
  ∀ n, P100470600125727593.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P17652020325260488608

`A005563(n+1)+A273316(n+1)+n`
-/

namespace A193068.P17652020325260488608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + (A273316 (n + 1) + (n : ℤ))

end

end A193068.P17652020325260488608

namespace A193068

/-- `A005563(n+1)+A273316(n+1)+n` -/
def P17652020325260488608.Spec : Prop :=
  ∀ n, P17652020325260488608.a n = A193068 (n + 1)

end A193068

/-! ## A193068.P3626404926993693552

`A100184(n+2)-A132112(n+1)+n`
-/

namespace A193068.P3626404926993693552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100184 (n + 2) - A132112 (n + 1) + (n : ℤ)

end

end A193068.P3626404926993693552

namespace A193068

/-- `A100184(n+2)-A132112(n+1)+n` -/
def P3626404926993693552.Spec : Prop :=
  ∀ n, P3626404926993693552.a n = A193068 (n + 1)

end A193068

/-!
# A193069: Pretty wild narcissistic numbers - numbers that pwn: - an integer n that can be expressed using just the digits of n (each digit used once only and in order from left to right) and the operators + - * / ^ ! and the radical symbol. Concatenation is allowed.

The programs for A193069, there is no canonical definition to state claims against.
-/

/-! ## A193069.P14412754190708253232

`A064818(2*n+3)-A193470(A148217(n+1))`
-/

namespace A193069.P14412754190708253232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064818 (2 * n + 3) - A193470 (A148217 (n + 1)).toNat

end

end A193069.P14412754190708253232

/-!
# A193070: Odd numbers N for which sigma(N^2) is prime.

The programs for A193070, there is no canonical definition to state claims against.
-/

/-! ## A193070.P16323229739253220405

`A278911(n+1)^(1/2)`
-/

namespace A193070.P16323229739253220405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A278911 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A193070.P16323229739253220405

/-! ## A193070.P9083444701541720158

`sqrt(A278911(n+1))`
-/

namespace A193070.P9083444701541720158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278911 (n + 1) : ℝ)

end

end A193070.P9083444701541720158

/-! ## A193070.P8795564624486794230

`sqrt(A273459(n+1)/2)`
-/

namespace A193070.P8795564624486794230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A273459 (n + 1) : ℚ) / 2 : ℝ)

end

end A193070.P8795564624486794230

/-! ## A193070.P2004621839544402539

`root(or(A008966(n+1), A278911(n+1)), 2)`
-/

namespace A193070.P2004621839544402539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lor (A008966 (n + 1)) (A278911 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A193070.P2004621839544402539

/-! ## A193070.P8623136919961383456

`round(sqrt(2*A247820(n+1)))`
-/

namespace A193070.P8623136919961383456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A247820 (n + 1) : ℝ))

end

end A193070.P8623136919961383456

/-! ## A193070.P14924004433792261623

`∩[A055638(n+1), A193066(n+1)]`
-/

namespace A193070.P14924004433792261623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P14924004433792261623

/-! ## A193070.P2886464765243834910

`∩[A055638(n+1), A061345(n)]`
-/

namespace A193070.P2886464765243834910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P2886464765243834910

/-! ## A193070.P5758074417168335059

`∩[A061345(n), A193066(n+1)]`
-/

namespace A193070.P5758074417168335059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P5758074417168335059

/-! ## A193070.P2294572409607777331

`∩[A128603(n+1), A193066(n+1)]`
-/

namespace A193070.P2294572409607777331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P2294572409607777331

/-! ## A193070.P1468534117582486284

`∩[A193066(n+1), A235868(n+1)]`
-/

namespace A193070.P1468534117582486284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P1468534117582486284

/-! ## A193070.P8668936474614801312

`∩[A193066(n+1), A283262(n+1)]`
-/

namespace A193070.P8668936474614801312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P8668936474614801312

/-! ## A193070.P802687595051047031

`∩[A193066(n+1), A380757(n+1)]`
-/

namespace A193070.P802687595051047031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P802687595051047031

/-! ## A193070.P9228203106657934133

`∩[A193066(n+1), A384419(n+1)]`
-/

namespace A193070.P9228203106657934133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P9228203106657934133

/-! ## A193070.P15315086871708242976

`∩[A000961(n+1), A193066(n+1)]`
-/

namespace A193070.P15315086871708242976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P15315086871708242976

/-! ## A193070.P12565012456815100933

`∩[A185189(n+1), A193066(n+1)]`
-/

namespace A193070.P12565012456815100933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P12565012456815100933

/-! ## A193070.P13036060510736776186

`∩[A193066(n+1), A225657(n+1)]`
-/

namespace A193070.P13036060510736776186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P13036060510736776186

/-! ## A193070.P9176990595021292371

`∩[A193066(n+1), A246655(n+1)]`
-/

namespace A193070.P9176990595021292371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P9176990595021292371

/-! ## A193070.P6953072872181120109

`∩[A059046(n+1), A193066(n+1)]`
-/

namespace A193070.P6953072872181120109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P6953072872181120109

/-! ## A193070.P7409936452615938640

`∩[A141807(n+1), A193066(n+1)]`
-/

namespace A193070.P7409936452615938640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P7409936452615938640

/-! ## A193070.P7399489518735476147

`∩[A193066(n+1), A385030(n+1)]`
-/

namespace A193070.P7399489518735476147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193070.P7399489518735476147

/-!
# A193071: Odd numbers N for which sigma(N^2) is not prime.

The programs for A193071, there is no canonical definition to state claims against.
-/

/-! ## A193071.P2536143344452169951

`record[A093178(comp[A193070(n+1)])]`
-/

namespace A193071.P2536143344452169951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193071.P2536143344452169951

/-! ## A193071.P14251085002954869935

`eq[char[A193070(n+1)], A035457(n)]`
-/

namespace A193071.P14251085002954869935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193071.P14251085002954869935

/-! ## A193071.P7646392891806594829

`eq[char[A193070(n+1)], A056594(n)]`
-/

namespace A193071.P7646392891806594829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193071.P7646392891806594829

/-! ## A193071.P6705518515069643841

`eq[char[A193070(n+1)], A059841(n)]`
-/

namespace A193071.P6705518515069643841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193071.P6705518515069643841

/-! ## A193071.P12081284552783983134

`eq[char[A193070(n+1)], A003966(n+1)]`
-/

namespace A193071.P12081284552783983134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193071.P12081284552783983134

/-!
# A193073: Triangle in which n-th row lists all partitions of n, in graded lexicographical ordering.

The programs for A193073, there is no canonical definition to state claims against.
-/

/-! ## A193073.P18138216407001628309

`A228100(n+1)%A105703(n)`
-/

namespace A193073.P18138216407001628309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228100 (n + 1)) (A105703 n)

end

end A193073.P18138216407001628309

/-! ## A193073.P12760512435670540639

`gcd(Δ[A088726(n)], A228100(n+1))`
-/

namespace A193073.P12760512435670540639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A228100 (n + 1))

end

end A193073.P12760512435670540639

/-! ## A193073.P629897333945577243

`and(A002223(n+1), A228100(n+1))`
-/

namespace A193073.P629897333945577243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A228100 (n + 1))

end

end A193073.P629897333945577243

/-! ## A193073.P16569231112090166449

`A228100(n+1)+and(1, A334758(n+1))`
-/

namespace A193073.P16569231112090166449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (n + 1) + Int.land 1 (A334758 (n + 1))

end

end A193073.P16569231112090166449

/-! ## A193073.P7564972462157887708

`A228100(n+1)+A000007(A000328(n))`
-/

namespace A193073.P7564972462157887708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (n + 1) + A000007 (A000328 n).toNat

end

end A193073.P7564972462157887708

/-! ## A193073.P15949712771830668127

`A228100(n+1)+A000038(A038207(n))`
-/

namespace A193073.P15949712771830668127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (n + 1) + A000038 (A038207 n).toNat

end

end A193073.P15949712771830668127

/-! ## A193073.P977634516020747459

`A228100(n+1)+A000122(A022005(n+1))`
-/

namespace A193073.P977634516020747459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (n + 1) + A000122 (A022005 (n + 1)).toNat

end

end A193073.P977634516020747459

/-! ## A193073.P315450685512178970

`A228100(n+1)+A002448(A062676(n+1))`
-/

namespace A193073.P315450685512178970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (n + 1) + A002448 (A062676 (n + 1)).toNat

end

end A193073.P315450685512178970

/-! ## A193073.P10271248780887358489

`A001222(A179679(n+1))*A228100(n+1)`
-/

namespace A193073.P10271248780887358489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A179679 (n + 1)).toNat * A228100 (n + 1)

end

end A193073.P10271248780887358489

/-! ## A193073.P13682718086363272278

`A228100(n+1)^A014963(A100143(n+1))`
-/

namespace A193073.P13682718086363272278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228100 (n + 1) : ℚ) ^ (A014963 (A100143 (n + 1)).toNat : ℤ)

end

end A193073.P13682718086363272278

/-!
# A193074: G.f. satisfies A(x) = 1 + Sum_{n>=1} x^n * A(x)^prime(n).

The programs for A193074, there is no canonical definition to state claims against.
-/

/-! ## A193074.P2531447894163914197

`A003074(5*A098614(n))`
-/

namespace A193074.P2531447894163914197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (5 * A098614 n).toNat

end

end A193074.P2531447894163914197

/-! ## A193074.P4006418036420388256

`A328435(n)+A059995(A020699(n))`
-/

namespace A193074.P4006418036420388256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328435 n + A059995 (A020699 n).toNat

end

end A193074.P4006418036420388256

/-! ## A193074.P14995506563113345072

`xor(A287891(n), A326292(A261049(n)))`
-/

namespace A193074.P14995506563113345072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A287891 n) (A326292 (A261049 n).toNat)

end

end A193074.P14995506563113345072

/-!
# A193090: Digital roots of the nonzero pentagonal numbers.

The programs for A193090, the canonical program `A193090.P4664892587809053047` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193090 has offset 1).

The definition of A193090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193090.P4664892587809053047

`a(n-9)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=4, a(4)=8, a(5)=6, a(6)=7, a(7)=2, a(8)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193090

/-- `a(n-9)` -/
def P4664892587809053047.Spec : Prop :=
  ∀ n, (P4664892587809053047.a n : ℤ) = A193090 (n + 1)

theorem P4664892587809053047.correct : P4664892587809053047.Spec := by
  intro n
  simp only [A193090, Nat.add_sub_cancel]

end A193090

/-!
# A193091: Augmentation of the triangular array A158405. See Comments.

The programs for A193091, there is no canonical definition to state claims against.
-/

/-! ## A193091.P7937206369222343367

`A111470(A187120(n+3))`
-/

namespace A193091.P7937206369222343367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (A187120 (n + 3)).toNat

end

end A193091.P7937206369222343367

/-! ## A193091.P6727382385432700885

`A062504(A187120(n+3)-1)`
-/

namespace A193091.P6727382385432700885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 (A187120 (n + 3) - 1).toNat

end

end A193091.P6727382385432700885

/-! ## A193091.P8688843689245917206

`A191890(A076112(n+1))+A121757(n)`
-/

namespace A193091.P8688843689245917206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191890 (A076112 (n + 1)).toNat + A121757 n

end

end A193091.P8688843689245917206

/-! ## A193091.P10266275038027462059

`A330143(A071949(n))-A297173(n+1)`
-/

namespace A193091.P10266275038027462059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330143 (A071949 n).toNat - A297173 (n + 1)

end

end A193091.P10266275038027462059

/-! ## A193091.P5652287369867228000

`A187120(n+3)-A057918(A000110(n))`
-/

namespace A193091.P5652287369867228000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187120 (n + 3) - A057918 (A000110 n).toNat

end

end A193091.P5652287369867228000

/-!
# A193092: Augmentation of the triangular array P given by p(n,k)=k! for 0<=k<=n. See Comments.

The programs for A193092, there is no canonical definition to state claims against.
-/

/-! ## A193092.P6089584434058487872

`A379599(comp[∑[n-1]]%A116430(n))`
-/

namespace A193092.P6089584434058487872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379599 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A116430 n)).toNat

end

end A193092.P6089584434058487872

/-! ## A193092.P8168909593834126466

`A379599(lt[A195825(3*n+2), A262616(n)])`
-/

namespace A193092.P8168909593834126466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379599 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193092.P8168909593834126466

/-! ## A193092.P13439796076255591632

`A263484(n+1)-A018843(A128099(n))`
-/

namespace A193092.P13439796076255591632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (n + 1) - A018843 (A128099 n).toNat

end

end A193092.P13439796076255591632

/-! ## A193092.P1876952511892258971

`A263484(n+1)-A250002(A089949(n))`
-/

namespace A193092.P1876952511892258971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (n + 1) - A250002 (A089949 n).toNat

end

end A193092.P1876952511892258971

/-!
# A193095: Number of times n can be written as concatenation of exactly two nonzero squares in decimal representation.

The programs for A193095, there is no canonical definition to state claims against.
-/

/-! ## A193095.P179875800997712732

`char[A038670(n+1)]+char[A191933(n+1)]`
-/

namespace A193095.P179875800997712732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A193095.P179875800997712732

/-! ## A193095.P4530503544919851960

`char[A191933(n+1)]+char[A192993(n+1)]`
-/

namespace A193095.P4530503544919851960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A193095.P4530503544919851960

/-! ## A193095.P6997598942733377687

`char[A191933(n+1)]*A241479(A007437(n+1))`
-/

namespace A193095.P6997598942733377687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A241479 (A007437 (n + 1)).toNat

end

end A193095.P6997598942733377687

/-! ## A193095.P18365226021436131851

`A000038(A304839(n+1))+char[A191933(n+1)]`
-/

namespace A193095.P18365226021436131851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A304839 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A193095.P18365226021436131851

/-! ## A193095.P7160195626495869863

`A266298(A304839(n+1)+1)+char[A191933(n+1)]`
-/

namespace A193095.P7160195626495869863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (A304839 (n + 1) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A193095.P7160195626495869863

/-! ## A193095.P4625018829170149534

`char[A191933(n+1)]*A051903(A259036(2*n))`
-/

namespace A193095.P4625018829170149534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051903 (A259036 (2 * n)).toNat

end

end A193095.P4625018829170149534

/-! ## A193095.P6794820876477505641

`ceil(char[A191933(n+1)]/A317081(n))`
-/

namespace A193095.P6794820876477505641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A317081 n : ℚ)⌉

end

end A193095.P6794820876477505641

/-! ## A193095.P2256446695658177413

`A000038(A125262(n+1))+char[A191933(n+1)]`
-/

namespace A193095.P2256446695658177413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A125262 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A193095.P2256446695658177413

/-! ## A193095.P8207805437135846884

`char[A191933(n+1)]*A000034(A049621(n))`
-/

namespace A193095.P8207805437135846884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000034 (A049621 n).toNat

end

end A193095.P8207805437135846884

/-! ## A193095.P12055900065385161701

`and(char[A191933(n+1)], A234530(n+1))`
-/

namespace A193095.P12055900065385161701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A234530 (n + 1))

end

end A193095.P12055900065385161701

/-! ## A193095.P4189884064893335698

`char[A191933(n+1)]*A002260(A000124(n))`
-/

namespace A193095.P4189884064893335698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002260 (A000124 n).toNat

end

end A193095.P4189884064893335698

/-! ## A193095.P3269763329843462498

`A019425(char[A191933(n+1)]*A027689(n))`
-/

namespace A193095.P3269763329843462498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A027689 n).toNat

end

end A193095.P3269763329843462498

/-! ## A193095.P15678017874490840391

`char[A191933(n+1)]*A010051(A061246(n+1))`
-/

namespace A193095.P15678017874490840391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A010051 (A061246 (n + 1)).toNat

end

end A193095.P15678017874490840391

/-! ## A193095.P9528873068436003931

`char[A193097(n+1)]*A010051(A061246(n+1))`
-/

namespace A193095.P9528873068436003931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A010051 (A061246 (n + 1)).toNat

end

end A193095.P9528873068436003931

/-!
# A193096: Numbers that cannot be written as concatenation of two nonzero squares in decimal representation.

The programs for A193096, there is no canonical definition to state claims against.
-/

/-! ## A193096.P16000747199656949025

`comp[A191933(n+1)]`
-/

namespace A193096.P16000747199656949025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193096.P16000747199656949025

/-! ## A193096.P877774436086403661

`eq[0, A193095(n)]`
-/

namespace A193096.P877774436086403661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193096.P877774436086403661

/-! ## A193096.P1658668812023502857

`lt[A193095(n), A065941(A024155(n+1))]`
-/

namespace A193096.P1658668812023502857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A024155 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P1658668812023502857

/-! ## A193096.P1131806864967300979

`lt[A193095(n), A001221(A000040(n+1))]`
-/

namespace A193096.P1131806864967300979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P1131806864967300979

/-! ## A193096.P14160111287089192262

`lt[A193095(n), A193095(3*n)+1]`
-/

namespace A193096.P14160111287089192262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (3 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P14160111287089192262

/-! ## A193096.P2123267502818099974

`lt[A193095(n), A001221(A001359(n+1))]`
-/

namespace A193096.P2123267502818099974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001359 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P2123267502818099974

/-! ## A193096.P9286021943810428087

`lt[A193095(n), A001221(A180946(n+1))]`
-/

namespace A193096.P9286021943810428087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A180946 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P9286021943810428087

/-! ## A193096.P17326393395358042965

`lt[A193095(n), A065941(A272863(n+1))]`
-/

namespace A193096.P17326393395358042965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A272863 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P17326393395358042965

/-! ## A193096.P10928973794496844337

`lt[A193095(n), A035263(A182479(n+1))]`
-/

namespace A193096.P10928973794496844337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A182479 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P10928973794496844337

/-! ## A193096.P9473018362002325128

`lt[A193095(n), A065941(A285014(n+1))]`
-/

namespace A193096.P9473018362002325128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A285014 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193096.P9473018362002325128

/-!
# A193097: Numbers that are the concatenation of exactly one pair of nonzero squares.

The programs for A193097, there is no canonical definition to state claims against.
-/

/-! ## A193097.P2308367366877029301

`eq[1, A193095(n)]`
-/

namespace A193097.P2308367366877029301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193097.P2308367366877029301

/-! ## A193097.P13533424387211305908

`record[A191933(n+1)/A193095(A191933(n+1))]`
-/

namespace A193097.P13533424387211305908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191933 (n + 1) : ℚ) / (A193095 (A191933 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193097.P13533424387211305908

/-! ## A193097.P7946956319310025864

`A191933(A247160(n+1)%A145215(n+1))`
-/

namespace A193097.P7946956319310025864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (Int.tmod (A247160 (n + 1)) (A145215 (n + 1))).toNat

end

end A193097.P7946956319310025864

/-! ## A193097.P3217547967973443429

`A191933(A023808(n+2)%A091078(n+1))`
-/

namespace A193097.P3217547967973443429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (Int.tmod (A023808 (n + 2)) (A091078 (n + 1))).toNat

end

end A193097.P3217547967973443429

/-! ## A193097.P13541242756062985125

`∩[A191933(n+1), A206476(n+1)]`
-/

namespace A193097.P13541242756062985125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193097.P13541242756062985125

/-!
# A193098: E.g.f. A(x) satisfies A'(x) = 1 + A(A(A(x))), with A(0) = 0.

The programs for A193098, there is no canonical definition to state claims against.
-/

/-! ## A193098.P6214638379402321576

`A396971(∑[n+2])`
-/

namespace A193098.P6214638379402321576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193098.P6214638379402321576

/-! ## A193098.P3932775797835898122

`or(A004523(n^n), A289683(n))`
-/

namespace A193098.P3932775797835898122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004523 (n ^ n)) (A289683 n)

end

end A193098.P3932775797835898122

/-!
# A193099: E.g.f. A(x) satisfies A'(x) = 1 + A(A(A(A(x)))), with A(0) = 0.

The programs for A193099, there is no canonical definition to state claims against.
-/

/-! ## A193099.P18116811133279710544

`A396972(∑[n+2])`
-/

namespace A193099.P18116811133279710544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193099.P18116811133279710544

