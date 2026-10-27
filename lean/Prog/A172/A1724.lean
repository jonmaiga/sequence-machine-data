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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172400: G.f.: 1/(1-x) = (1-x*y) * Sum_{k>=0} Sum_{n>=k} T(n,k)*x^n*y^k/(1+x)^(2^n-2^k).

The programs for A172400, there is no canonical definition to state claims against.
-/

/-! ## A172400.P6232542359425764848

`A122305(A125800(n+1))`
-/

namespace A172400.P6232542359425764848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122305 (A125800 (n + 1)).toNat

end

end A172400.P6232542359425764848

/-! ## A172400.P5103604714030069398

`A341140(A246658(n)+6)`
-/

namespace A172400.P5103604714030069398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341140 (A246658 n + 6).toNat

end

end A172400.P5103604714030069398

/-! ## A172400.P2809722285859273878

`A003056(A125800(n+1)²)`
-/

namespace A172400.P2809722285859273878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A125800 (n + 1) ^ 2).toNat

end

end A172400.P2809722285859273878

/-! ## A172400.P6870447272064527233

`A003056(A125800(n+1)^2)`
-/

namespace A172400.P6870447272064527233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A125800 (n + 1) ^ 2).toNat

end

end A172400.P6870447272064527233

/-! ## A172400.P996226314123405119

`and(A241819(A186020(n)), A273048(n+1))`
-/

namespace A172400.P996226314123405119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A241819 (A186020 n).toNat) (A273048 (n + 1))

end

end A172400.P996226314123405119

/-!
# A172401: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(2^n-1).

The programs for A172401, there is no canonical definition to state claims against.
-/

/-! ## A172401.P3533566149963218998

`ceil(A137160(n)/2)`
-/

namespace A172401.P3533566149963218998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137160 n : ℚ) / 2⌉

end

end A172401.P3533566149963218998

/-! ## A172401.P8239585089922997631

`A137160(round(sqrt(n²+1)))/2`
-/

namespace A172401.P8239585089922997631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137160 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A172401.P8239585089922997631

/-! ## A172401.P8511655238236913982

`floor(A137160(n)/A036453(n+1))`
-/

namespace A172401.P8511655238236913982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137160 n : ℚ) / (A036453 (n + 1) : ℚ)⌋

end

end A172401.P8511655238236913982

/-! ## A172401.P17925725356141028140

`round(A137160(n)/A036453(n+3))`
-/

namespace A172401.P17925725356141028140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A137160 n : ℚ) / (A036453 (n + 3) : ℚ))

end

end A172401.P17925725356141028140

/-! ## A172401.P44482322699385568

`A137163(3*n+4)/2*A137160(n)`
-/

namespace A172401.P44482322699385568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137163 (3 * n + 4) : ℚ) / 2 * (A137160 n : ℚ)

end

end A172401.P44482322699385568

/-!
# A172402: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(2^(n+1)-2).

The programs for A172402, there is no canonical definition to state claims against.
-/

/-! ## A172402.P14467292696208614122

`ceil(A172401(n+1)/2)`
-/

namespace A172402.P14467292696208614122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A172401 (n + 1) : ℚ) / 2⌉

end

end A172402.P14467292696208614122

/-! ## A172402.P6063726894949432547

`ceil(A137160(n+1)/4)`
-/

namespace A172402.P6063726894949432547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137160 (n + 1) : ℚ) / 4⌉

end

end A172402.P6063726894949432547

/-! ## A172402.P14706655769901146317

`A172401(n+1)/A036453(n+1)`
-/

namespace A172402.P14706655769901146317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172401 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A172402.P14706655769901146317

/-! ## A172402.P3956460098659920188

`round(A137160(n+1)/A036453(n+2)²)`
-/

namespace A172402.P3956460098659920188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A137160 (n + 1) : ℚ) / (A036453 (n + 2) ^ 2 : ℚ))

end

end A172402.P3956460098659920188

/-! ## A172402.P5943783791852556309

`A172401(n+1)/A020639(A141056(n))`
-/

namespace A172402.P5943783791852556309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172401 (n + 1) : ℚ) / (A020639 (A141056 n).toNat : ℚ)

end

end A172402.P5943783791852556309

/-!
# A172403: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(2^(n+2)-4).

The programs for A172403, there is no canonical definition to state claims against.
-/

/-! ## A172403.P17245350930264095917

`A172400(∑[n+2]+3)`
-/

namespace A172403.P17245350930264095917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172400 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A172403.P17245350930264095917

/-! ## A172403.P7165625929143571270

`A172400(A340266(n+1))+n%7*floor(n/7)`
-/

namespace A172403.P7165625929143571270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172400 (A340266 (n + 1)).toNat + ((n % 7 : ℕ) : ℤ) * ⌊(n : ℚ) / 7⌋

end

end A172403.P7165625929143571270

/-! ## A172403.P8025227348536010227

`A172400(A340266(n+1))+A011731(n)`
-/

namespace A172403.P8025227348536010227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172400 (A340266 (n + 1)).toNat + A011731 n

end

end A172403.P8025227348536010227

/-! ## A172403.P8554474247265674220

`A172400(A340266(n+1))%A012297(n)`
-/

namespace A172403.P8554474247265674220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172400 (A340266 (n + 1)).toNat) (A012297 n)

end

end A172403.P8554474247265674220

/-!
# A172404: Numbers k such that 3 is the first digit of 2^k.

The programs for A172404, the canonical program `A172404.P17113833198951984415` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172404 has offset 1).

The definition of A172404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172404.P17113833198951984415

`eq[3, A008952(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172404

/-- `eq[3, A008952(n)]` -/
def P17113833198951984415.Spec : Prop :=
  ∀ n, (P17113833198951984415.a n : ℤ) = A172404 (n + 1)

theorem P17113833198951984415.correct : P17113833198951984415.Spec := by
  intro n
  simp only [A172404, Nat.add_sub_cancel]

end A172404

/-! ## A172404.P541592327717595241

`lt[A007318(A008952(n)+a(n-1))%2, 1]` with `a(0)=1`
-/

namespace A172404.P541592327717595241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A007318 (A008952 n + f1 (n - 1)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A172404.P541592327717595241

namespace A172404

/-- `lt[A007318(A008952(n)+a(n-1))%2, 1]` -/
def P541592327717595241.Spec : Prop :=
  ∀ n, (P541592327717595241.a n : ℤ) = A172404 (n + 1)

end A172404

/-! ## A172404.P11608713665324712631

`eq[3, A000030(A247243(n+1))]`
-/

namespace A172404.P11608713665324712631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172404.P11608713665324712631

namespace A172404

/-- `eq[3, A000030(A247243(n+1))]` -/
def P11608713665324712631.Spec : Prop :=
  ∀ n, (P11608713665324712631.a n : ℤ) = A172404 (n + 1)

end A172404

/-! ## A172404.P10434369927595356244

`log2(A320859(n+1))`
-/

namespace A172404.P10434369927595356244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A320859 (n + 1) : ℝ)

end

end A172404.P10434369927595356244

namespace A172404

/-- `log2(A320859(n+1))` -/
def P10434369927595356244.Spec : Prop :=
  ∀ n, P10434369927595356244.a n = (A172404 (n + 1) : ℝ)

end A172404

/-! ## A172404.P9918588137952320937

`eq[3, A004094(n)%10]`
-/

namespace A172404.P9918588137952320937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004094 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172404.P9918588137952320937

namespace A172404

/-- `eq[3, A004094(n)%10]` -/
def P9918588137952320937.Spec : Prop :=
  ∀ n, (P9918588137952320937.a n : ℤ) = A172404 (n + 1)

end A172404

/-!
# A172405: G.f. satisfies: A(x) = G(x*A(x)) where G(x) = A(x/G(x)) = Sum_{n>=0} x^(n(n+1)/2)*(1+x)^n.

The programs for A172405, there is no canonical definition to state claims against.
-/

/-! ## A172405.P16398285993826866827

`A148364(n)+A025465(A002137(n))`
-/

namespace A172405.P16398285993826866827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148364 n + A025465 (A002137 n).toNat

end

end A172405.P16398285993826866827

/-! ## A172405.P14445023403204467560

`A148364(n)+A025466(A005190(n))`
-/

namespace A172405.P14445023403204467560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148364 n + A025466 (A005190 n).toNat

end

end A172405.P14445023403204467560

/-! ## A172405.P1051462182897539669

`A148364(n)+A025465(A017939(n))`
-/

namespace A172405.P1051462182897539669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148364 n + A025465 (A017939 n).toNat

end

end A172405.P1051462182897539669

/-! ## A172405.P11029957935925026945

`A148364(n)+A025465(A109437(n))`
-/

namespace A172405.P11029957935925026945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148364 n + A025465 (A109437 n).toNat

end

end A172405.P11029957935925026945

/-! ## A172405.P1731131301543190218

`A148364(n)+A083896(A241456(n+1)+1)`
-/

namespace A172405.P1731131301543190218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148364 n + A083896 (A241456 (n + 1) + 1).toNat

end

end A172405.P1731131301543190218

/-!
# A172406: Sum of successive digits of Pi - 3 by 10 terms.

The programs for A172406, there is no canonical definition to state claims against.
-/

/-! ## A172406.P6653334875082331322

`Δ[A046974(10*n)]`
-/

namespace A172406.P6653334875082331322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172406.P6653334875082331322

/-! ## A172406.P8571527483675412105

`Δ[A059582(10*n+1)]`
-/

namespace A172406.P8571527483675412105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172406.P8571527483675412105

/-! ## A172406.P14745900978715187524

`abs(Δ[A046974(A008592(n))])`
-/

namespace A172406.P14745900978715187524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (A008592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A172406.P14745900978715187524

/-! ## A172406.P9117360643973030182

`abs(Δ[A059582(A017281(n))])`
-/

namespace A172406.P9117360643973030182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A172406.P9117360643973030182

/-! ## A172406.P2719876858346054206

`abs(Δ[A046974(A017281(n)-1)])`
-/

namespace A172406.P2719876858346054206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (A017281 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A172406.P2719876858346054206

/-! ## A172406.P14698929473277491946

`A033999(n)²*Δ[A059582(A017281(n))]`
-/

namespace A172406.P14698929473277491946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A172406.P14698929473277491946

/-! ## A172406.P3910005400402444882

`A065357(n)²*Δ[A059582(A017281(n))]`
-/

namespace A172406.P3910005400402444882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A172406.P3910005400402444882

/-! ## A172406.P2566186619610378838

`Δ[A059582(A017281(n))]%A017497(n)²`
-/

namespace A172406.P2566186619610378838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A017497 n ^ 2)

end

end A172406.P2566186619610378838

/-! ## A172406.P15663715708447043577

`Δ[A059582(A017281(n))%A000032(n+9)]`
-/

namespace A172406.P15663715708447043577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059582 (A017281 n).toNat) (A000032 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172406.P15663715708447043577

/-! ## A172406.P11875564891920746156

`Δ[A046974(A008592(n))]%(A000040(n+1)+63)`
-/

namespace A172406.P11875564891920746156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (A008592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1) + 63)

end

end A172406.P11875564891920746156

/-!
# A172407: Positive numbers n such that n+10 is a prime.

The programs for A172407, the canonical program `A172407.P4389424079376543033` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172407 has offset 1).

The definition of A172407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172407.P4389424079376543033

`A000040(n+5)-10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172407

/-- `A000040(n+5)-10` -/
def P4389424079376543033.Spec : Prop :=
  ∀ n, P4389424079376543033.a n = A172407 (n + 1)

theorem P4389424079376543033.correct : P4389424079376543033.Spec := by
  intro n
  simp only [A172407, Nat.add_sub_cancel]

end A172407

/-! ## A172407.P6469053595735502292

`p?[2*n+9]-10`
-/

namespace A172407.P6469053595735502292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 10

end

end A172407.P6469053595735502292

namespace A172407

/-- `p?[2*n+9]-10` -/
def P6469053595735502292.Spec : Prop :=
  ∀ n, P6469053595735502292.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P8917148561778594822

`A088967(n+1)-1`
-/

namespace A172407.P8917148561778594822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 1) - 1

end

end A172407.P8917148561778594822

namespace A172407

/-- `A088967(n+1)-1` -/
def P8917148561778594822.Spec : Prop :=
  ∀ n, P8917148561778594822.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P17110068302443439982

`2*A101448(n+1)+1`
-/

namespace A172407.P17110068302443439982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101448 (n + 1) + 1

end

end A172407.P17110068302443439982

namespace A172407

/-- `2*A101448(n+1)+1` -/
def P17110068302443439982.Spec : Prop :=
  ∀ n, P17110068302443439982.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P14465264925185525944

`2*A155722(n+1)-1`
-/

namespace A172407.P14465264925185525944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155722 (n + 1) - 1

end

end A172407.P14465264925185525944

namespace A172407

/-- `2*A155722(n+1)-1` -/
def P14465264925185525944.Spec : Prop :=
  ∀ n, P14465264925185525944.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P11844256189288172147

`∑[A001223(A107820(n+1)-2)]`
-/

namespace A172407.P11844256189288172147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A107820 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172407.P11844256189288172147

namespace A172407

/-- `∑[A001223(A107820(n+1)-2)]` -/
def P11844256189288172147.Spec : Prop :=
  ∀ n, P11844256189288172147.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P16522073353228219947

`A155722(n+1)+A101448(n+1)`
-/

namespace A172407.P16522073353228219947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) + A101448 (n + 1)

end

end A172407.P16522073353228219947

namespace A172407

/-- `A155722(n+1)+A101448(n+1)` -/
def P16522073353228219947.Spec : Prop :=
  ∀ n, P16522073353228219947.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P1404165773011399295

`A086304(n+2)-4`
-/

namespace A172407.P1404165773011399295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 2) - 4

end

end A172407.P1404165773011399295

namespace A172407

/-- `A086304(n+2)-4` -/
def P1404165773011399295.Spec : Prop :=
  ∀ n, P1404165773011399295.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P9854504040859613508

`A172367(n+3)-6`
-/

namespace A172407.P9854504040859613508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 3) - 6

end

end A172407.P9854504040859613508

namespace A172407

/-- `A172367(n+3)-6` -/
def P9854504040859613508.Spec : Prop :=
  ∀ n, P9854504040859613508.a n = A172407 (n + 1)

theorem P9854504040859613508.correct : P9854504040859613508.Spec := by
  intro n
  simp only [A172407, Nat.add_sub_cancel, A172407.P9854504040859613508.a, A172407.P4389424079376543033.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172367, A172367.P6320412010058866458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172407

/-! ## A172407.P11951967840402559485

`A040976(n+5)-8`
-/

namespace A172407.P11951967840402559485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 5) - 8

end

end A172407.P11951967840402559485

namespace A172407

/-- `A040976(n+5)-8` -/
def P11951967840402559485.Spec : Prop :=
  ∀ n, P11951967840402559485.a n = A172407 (n + 1)

theorem P11951967840402559485.correct : P11951967840402559485.Spec := by
  intro n
  simp only [A172407, Nat.add_sub_cancel, A172407.P11951967840402559485.a, A172407.P4389424079376543033.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172407

/-! ## A172407.P15296875842324877128

`eq[1, A001222(n+10)]`
-/

namespace A172407.P15296875842324877128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172407.P15296875842324877128

namespace A172407

/-- `eq[1, A001222(n+10)]` -/
def P15296875842324877128.Spec : Prop :=
  ∀ n, (P15296875842324877128.a n : ℤ) = A172407 (n + 1)

end A172407

/-! ## A172407.P6068107548887103127

`eq[1, A010051(n+10)]`
-/

namespace A172407.P6068107548887103127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172407.P6068107548887103127

namespace A172407

/-- `eq[1, A010051(n+10)]` -/
def P6068107548887103127.Spec : Prop :=
  ∀ n, (P6068107548887103127.a n : ℤ) = A172407 (n + 1)

end A172407

/-! ## A172407.P1944833824178870210

`A033465(A101448(n+1))`
-/

namespace A172407.P1944833824178870210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A101448 (n + 1)).toNat

end

end A172407.P1944833824178870210

namespace A172407

/-- `A033465(A101448(n+1))` -/
def P1944833824178870210.Spec : Prop :=
  ∀ n, P1944833824178870210.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P16401799064350730932

`A004273(A155722(n+1))`
-/

namespace A172407.P16401799064350730932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A155722 (n + 1)).toNat

end

end A172407.P16401799064350730932

namespace A172407

/-- `A004273(A155722(n+1))` -/
def P16401799064350730932.Spec : Prop :=
  ∀ n, P16401799064350730932.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P4502270912186860527

`A047242(A105760(n+2))`
-/

namespace A172407.P4502270912186860527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A105760 (n + 2)).toNat

end

end A172407.P4502270912186860527

namespace A172407

/-- `A047242(A105760(n+2))` -/
def P4502270912186860527.Spec : Prop :=
  ∀ n, P4502270912186860527.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P165828893622456033

`eq[1, A342001(n+10)]`
-/

namespace A172407.P165828893622456033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172407.P165828893622456033

namespace A172407

/-- `eq[1, A342001(n+10)]` -/
def P165828893622456033.Spec : Prop :=
  ∀ n, (P165828893622456033.a n : ℤ) = A172407 (n + 1)

end A172407

/-! ## A172407.P2058307855740616526

`eq[1, ∑{e}[n+10, #]]`
-/

namespace A172407.P2058307855740616526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172407.P2058307855740616526

namespace A172407

/-- `eq[1, ∑{e}[n+10, #]]` -/
def P2058307855740616526.Spec : Prop :=
  ∀ n, (P2058307855740616526.a n : ℤ) = A172407 (n + 1)

end A172407

/-! ## A172407.P16851820999810508052

`eq[3, A088212(n+1)]`
-/

namespace A172407.P16851820999810508052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172407.P16851820999810508052

namespace A172407

/-- `eq[3, A088212(n+1)]` -/
def P16851820999810508052.Spec : Prop :=
  ∀ n, (P16851820999810508052.a n : ℤ) = A172407 (n + 1)

end A172407

/-! ## A172407.P12006934875607155997

`A004483(A088967(n+1))`
-/

namespace A172407.P12006934875607155997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A088967 (n + 1)).toNat

end

end A172407.P12006934875607155997

namespace A172407

/-- `A004483(A088967(n+1))` -/
def P12006934875607155997.Spec : Prop :=
  ∀ n, P12006934875607155997.a n = A172407 (n + 1)

end A172407

/-! ## A172407.P3686607058315313266

`record[2*n+1-∑{d}[n, #+5]]`
-/

namespace A172407.P3686607058315313266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), (d + 5) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172407.P3686607058315313266

namespace A172407

/-- `record[2*n+1-∑{d}[n, #+5]]` -/
def P3686607058315313266.Spec : Prop :=
  ∀ n, P3686607058315313266.a n = A172407 (n + 1)

end A172407

/-!
# A172409: Numbers k such that neither k-2 nor k-3 is prime.

The programs for A172409, there is no canonical definition to state claims against.
-/

/-! ## A172409.P10384549168617917068

`comp[p?[floor(n/2)]+gcd(2, n)+1]`
-/

namespace A172409.P10384549168617917068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (Nat.gcd 2 n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P10384549168617917068

/-! ## A172409.P18339005967558219203

`comp[p?[ceil(n/2)+2]+and(1, n)+2]`
-/

namespace A172409.P18339005967558219203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (Nat.land 1 n : ℤ) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P18339005967558219203

/-! ## A172409.P1465140307778638453

`comp[p?[floor((n+5)/2)]--n%2+2]`
-/

namespace A172409.P1465140307778638453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 5 : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - Int.tmod (-(n : ℤ)) 2 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P1465140307778638453

/-! ## A172409.P8319391117451966545

`comp[p?[ceil(n/2)+2]+val(n²+1, 2)+2]`
-/

namespace A172409.P8319391117451966545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P8319391117451966545

/-! ## A172409.P9451971134064387017

`comp[char[2*n+1]+p?[floor((n+5)/2)]+2]`
-/

namespace A172409.P9451971134064387017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 5 : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P9451971134064387017

/-! ## A172409.P14555972642349737770

`comp[A093515(n+1)+2]`
-/

namespace A172409.P14555972642349737770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P14555972642349737770

/-! ## A172409.P4384304291004431062

`comp[A006530(n+1)+gcd(2, n)+1]`
-/

namespace A172409.P4384304291004431062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (Nat.gcd 2 n : ℤ) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P4384304291004431062

/-! ## A172409.P12338670399225714628

`comp[A006530(n+2)+n%2+2]`
-/

namespace A172409.P12338670399225714628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + ((n % 2 + 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P12338670399225714628

/-! ## A172409.P12031531010384233750

`comp[A000040(ceil(n/2)+1)+and(1, n)+2]`
-/

namespace A172409.P12031531010384233750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈(n : ℚ) / 2⌉ + 1).toNat + (Nat.land 1 n : ℤ) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P12031531010384233750

/-! ## A172409.P18358575252273172109

`comp[A020639(n+3)+A014963(n+2)+1]`
-/

namespace A172409.P18358575252273172109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) + (A014963 (n + 2) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172409.P18358575252273172109

/-!
# A172410: Numbers k such that 2k + 9 and 2k + 27 are prime.

The programs for A172410, there is no canonical definition to state claims against.
-/

/-! ## A172410.P13724998592489148468

`A088769(n+2)-9`
-/

namespace A172410.P13724998592489148468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 2) - 9

end

end A172410.P13724998592489148468

/-! ## A172410.P9159690671383156808

`A087678(n+2)/2-9`
-/

namespace A172410.P9159690671383156808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087678 (n + 2) : ℚ) / 2 - 9

end

end A172410.P9159690671383156808

/-! ## A172410.P9721561696749246338

`∑[Δ[A088769(n+1)]%(n+2)]`
-/

namespace A172410.P9721561696749246338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172410.P9721561696749246338

/-! ## A172410.P6039190391382716362

`A014682(A087678(n+2)-18)`
-/

namespace A172410.P6039190391382716362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A087678 (n + 2) - 18).toNat

end

end A172410.P6039190391382716362

/-! ## A172410.P13048567280922676084

`eq[A089367(n+4), A089367(n+13)]`
-/

namespace A172410.P13048567280922676084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172410.P13048567280922676084

/-! ## A172410.P5106175341452014364

`A023451(A088769(n+2))`
-/

namespace A172410.P5106175341452014364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A088769 (n + 2)).toNat

end

end A172410.P5106175341452014364

/-! ## A172410.P16411039710060284970

`A023451(A087678(n+2)/2)`
-/

namespace A172410.P16411039710060284970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (SequenceMachineLib.roundAway ((A087678 (n + 2) : ℚ) / 2)).toNat

end

end A172410.P16411039710060284970

/-! ## A172410.P2253236297522187635

`A001281(A087678(n+2)-18)`
-/

namespace A172410.P2253236297522187635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A087678 (n + 2) - 18).toNat

end

end A172410.P2253236297522187635

/-! ## A172410.P3471955069838766375

`A004526(A087678(n+2)-18)`
-/

namespace A172410.P3471955069838766375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087678 (n + 2) - 18).toNat

end

end A172410.P3471955069838766375

/-!
# A172412: Multiples of 4 with the property that addition of a square gives a square that is not larger than the square for any later term.

The programs for A172412, there is no canonical definition to state claims against.
-/

/-! ## A172412.P8680999946555732371

`record[4*A004247(n)]`
-/

namespace A172412.P8680999946555732371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P8680999946555732371

/-! ## A172412.P13926546342254287246

`record[2*log2(A118185(n))]`
-/

namespace A172412.P13926546342254287246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.logb 2 (A118185 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P13926546342254287246

/-! ## A172412.P12011427014065390609

`record[4*log2(A117401(n))]`
-/

namespace A172412.P12011427014065390609
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.logb 2 (A117401 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P12011427014065390609

/-! ## A172412.P11581905183935132814

`record[4*A094053(n+1)]`
-/

namespace A172412.P11581905183935132814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P11581905183935132814

/-! ## A172412.P13315794702764106654

`record[4*(A077028(n)-1)]`
-/

namespace A172412.P13315794702764106654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A077028 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P13315794702764106654

/-! ## A172412.P11132349088466321399

`record[4*(1-A176270(n))]`
-/

namespace A172412.P11132349088466321399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (1 - A176270 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P11132349088466321399

/-! ## A172412.P8811936991542356898

`∩[2*n, A256173(n+1)]`
-/

namespace A172412.P8811936991542356898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172412.P8811936991542356898

/-! ## A172412.P15108041714216528106

`record[2*(A130154(n+1)-1)]`
-/

namespace A172412.P15108041714216528106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130154 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172412.P15108041714216528106

/-! ## A172412.P5582899040483260852

`A008586(record[A004247(n)])`
-/

namespace A172412.P5582899040483260852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172412.P5582899040483260852

/-! ## A172412.P14589344510320484430

`A005843(record[log2(A118185(n))])`
-/

namespace A172412.P14589344510320484430
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A118185 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A172412.P14589344510320484430

/-!
# A172414: Triangle read by rows: Catalan number C(n) repeated 2*n+1 times.

The programs for A172414, the canonical program `A172414.P18140129355790672352` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172414 has offset 0).

The definition of A172414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172414.P18140129355790672352

`A000108(floor(sqrt(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172414

/-- `A000108(floor(sqrt(n)))` -/
def P18140129355790672352.Spec : Prop :=
  ∀ n, P18140129355790672352.a n = A172414 n

theorem P18140129355790672352.correct : P18140129355790672352.Spec := by
  intro n
  simp only [A172414]

end A172414

/-! ## A172414.P12484555878247572048

`abs(A168491(floor(sqrt(n))))`
-/

namespace A172414.P12484555878247572048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (Nat.sqrt n)|

end

end A172414.P12484555878247572048

namespace A172414

/-- `abs(A168491(floor(sqrt(n))))` -/
def P12484555878247572048.Spec : Prop :=
  ∀ n, P12484555878247572048.a n = A172414 n

end A172414

/-! ## A172414.P3175431148697681171

`A120588(∑[char[n²]])`
-/

namespace A172414.P3175431148697681171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172414.P3175431148697681171

namespace A172414

/-- `A120588(∑[char[n²]])` -/
def P3175431148697681171.Spec : Prop :=
  ∀ n, P3175431148697681171.a n = A172414 n

end A172414

/-! ## A172414.P1112378112508700333

`A008313(A038759(n))`
-/

namespace A172414.P1112378112508700333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A038759 n).toNat

end

end A172414.P1112378112508700333

namespace A172414

/-- `A008313(A038759(n))` -/
def P1112378112508700333.Spec : Prop :=
  ∀ n, P1112378112508700333.a n = A172414 n

end A172414

/-! ## A172414.P4195798725891627284

`A008313(A048760(n))`
-/

namespace A172414.P4195798725891627284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A048760 n).toNat

end

end A172414.P4195798725891627284

namespace A172414

/-- `A008313(A048760(n))` -/
def P4195798725891627284.Spec : Prop :=
  ∀ n, P4195798725891627284.a n = A172414 n

end A172414

/-! ## A172414.P4941741571229032500

`A208355(A055086(n))`
-/

namespace A172414.P4941741571229032500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (A055086 n).toNat

end

end A172414.P4941741571229032500

namespace A172414

/-- `A208355(A055086(n))` -/
def P4941741571229032500.Spec : Prop :=
  ∀ n, P4941741571229032500.a n = A172414 n

end A172414

/-! ## A172414.P10423174138343165477

`A208355(A293137(n))`
-/

namespace A172414.P10423174138343165477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (A293137 n).toNat

end

end A172414.P10423174138343165477

namespace A172414

/-- `A208355(A293137(n))` -/
def P10423174138343165477.Spec : Prop :=
  ∀ n, P10423174138343165477.a n = A172414 n

end A172414

/-! ## A172414.P17314947485606211482

`A208355(A316355(n))`
-/

namespace A172414.P17314947485606211482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (A316355 n).toNat

end

end A172414.P17314947485606211482

namespace A172414

/-- `A208355(A316355(n))` -/
def P17314947485606211482.Spec : Prop :=
  ∀ n, P17314947485606211482.a n = A172414 n

end A172414

/-! ## A172414.P2122956167673076501

`A089408(A001650(n+1))`
-/

namespace A172414.P2122956167673076501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A001650 (n + 1)).toNat

end

end A172414.P2122956167673076501

namespace A172414

/-- `A089408(A001650(n+1))` -/
def P2122956167673076501.Spec : Prop :=
  ∀ n, P2122956167673076501.a n = A172414 n

end A172414

/-! ## A172414.P4120635448407897112

`A028304(2*A000196(n))`
-/

namespace A172414.P4120635448407897112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * A000196 n).toNat

end

end A172414.P4120635448407897112

namespace A172414

/-- `A028304(2*A000196(n))` -/
def P4120635448407897112.Spec : Prop :=
  ∀ n, P4120635448407897112.a n = A172414 n

end A172414

/-! ## A172414.P10896283735502511473

`A126120(2*A000196(n))`
-/

namespace A172414.P10896283735502511473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * A000196 n).toNat

end

end A172414.P10896283735502511473

namespace A172414

/-- `A126120(2*A000196(n))` -/
def P10896283735502511473.Spec : Prop :=
  ∀ n, P10896283735502511473.a n = A172414 n

end A172414

/-! ## A172414.P1248931402923227042

`A091894(A048761(n+1))`
-/

namespace A172414.P1248931402923227042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091894 (A048761 (n + 1)).toNat

end

end A172414.P1248931402923227042

namespace A172414

/-- `A091894(A048761(n+1))` -/
def P1248931402923227042.Spec : Prop :=
  ∀ n, P1248931402923227042.a n = A172414 n

end A172414

/-! ## A172414.P11056071617791050373

`A008313(A116942(2*n)-n)`
-/

namespace A172414.P11056071617791050373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A116942 (2 * n) - (n : ℤ)).toNat

end

end A172414.P11056071617791050373

namespace A172414

/-- `A008313(A116942(2*n)-n)` -/
def P11056071617791050373.Spec : Prop :=
  ∀ n, P11056071617791050373.a n = A172414 n

end A172414

/-! ## A172414.P14219533752974225802

`A047996(2*A003059(n+1)²)`
-/

namespace A172414.P14219533752974225802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (2 * A003059 (n + 1) ^ 2).toNat

end

end A172414.P14219533752974225802

namespace A172414

/-- `A047996(2*A003059(n+1)²)` -/
def P14219533752974225802.Spec : Prop :=
  ∀ n, P14219533752974225802.a n = A172414 n

end A172414

/-!
# A172415: Numbers equal to the product of (each of its decimal digits, plus the number of decimal digits).

The programs for A172415, there is no canonical definition to state claims against.
-/

/-! ## A172415.P1463228597873317713

`A055482(A055504(n+1)+A055448(2*n+1))`
-/

namespace A172415.P1463228597873317713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055482 (A055504 (n + 1) + A055448 (2 * n + 1)).toNat

end

end A172415.P1463228597873317713

/-!
# A172416: a(n) = 5*2^n/9 + 1/4 + (-1)^n*(n/6 + 7/36).

The programs for A172416, the canonical program `A172416.P3227925176831080343` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172416 has offset 0).

The definition of A172416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n/9+1/4+(-1)^n*(n/6+7/36)` (program `A172416.P17350600954965029945`, by `A172416.P17350600954965029945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172416.P3227925176831080343

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172416

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` -/
def P3227925176831080343.Spec : Prop :=
  ∀ n, P3227925176831080343.a n = A172416 n

theorem P3227925176831080343.correct : P3227925176831080343.Spec := by
  intro n
  simp only [A172416]

end A172416

/-! ## A172416.P17350600954965029945

`5*2^n/9+1/4+(-1)^n*(n/6+7/36)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172416.P17350600954965029945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℚ) / 9 + (1 : ℚ) / 4 + ((-1) ^ n : ℚ) * ((n : ℚ) / 6 + (7 : ℚ) / 36)

end

end A172416.P17350600954965029945

namespace A172416

/-- `5*2^n/9+1/4+(-1)^n*(n/6+7/36)` -/
def P17350600954965029945.Spec : Prop :=
  ∀ n, P17350600954965029945.a n = (A172416 n : ℚ)

theorem P17350600954965029945.correct : P17350600954965029945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A172416, Nat.add_sub_cancel, A172416.P17350600954965029945.a, A172416.P3227925176831080343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A172416, Nat.add_sub_cancel, A172416.P17350600954965029945.a, A172416.P3227925176831080343.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172416

/-! ## A172416.P13326200852327807037

`ogf((1-x^2-x^3)/(1-x-3x^2+x^3+2x^4))`
-/

namespace A172416.P13326200852327807037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -1, -3, 1, 2] n

end

end A172416.P13326200852327807037

namespace A172416

/-- `ogf((1-x^2-x^3)/(1-x-3x^2+x^3+2x^4))` -/
def P13326200852327807037.Spec : Prop :=
  ∀ n, P13326200852327807037.a n = A172416 n

end A172416

/-! ## A172416.P7629918323284869880

`ceil(A172285(n+1)/2)`
-/

namespace A172416.P7629918323284869880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A172285 (n + 1) : ℚ) / 2⌉

end

end A172416.P7629918323284869880

namespace A172416

/-- `ceil(A172285(n+1)/2)` -/
def P7629918323284869880.Spec : Prop :=
  ∀ n, P7629918323284869880.a n = A172416 n

end A172416

/-! ## A172416.P8320539147913085767

`A260479(A005578(n))`
-/

namespace A172416.P8320539147913085767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260479 (A005578 n).toNat

end

end A172416.P8320539147913085767

namespace A172416

/-- `A260479(A005578(n))` -/
def P8320539147913085767.Spec : Prop :=
  ∀ n, P8320539147913085767.a n = A172416 n

end A172416

/-!
# A172417: Triangle read by rows: Catalan number C(n) repeated n times.

The programs for A172417, the canonical program `A172417.P4269323133583002343` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172417 has offset 1).

The definition of A172417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172417.P4269323133583002343

`A000108(row(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172417

/-- `A000108(row(n)+1)` -/
def P4269323133583002343.Spec : Prop :=
  ∀ n, P4269323133583002343.a n = A172417 (n + 1)

theorem P4269323133583002343.correct : P4269323133583002343.Spec := by
  intro n
  simp only [A172417, Nat.add_sub_cancel]

end A172417

/-! ## A172417.P3199835788433345496

`A000108(∑[char[∑[n]]])`
-/

namespace A172417.P3199835788433345496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172417.P3199835788433345496

namespace A172417

/-- `A000108(∑[char[∑[n]]])` -/
def P3199835788433345496.Spec : Prop :=
  ∀ n, P3199835788433345496.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P4401673404102975200

`A120588(comp[∑[n]]-n)`
-/

namespace A172417.P4401673404102975200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A172417.P4401673404102975200

namespace A172417

/-- `A120588(comp[∑[n]]-n)` -/
def P4401673404102975200.Spec : Prop :=
  ∀ n, P4401673404102975200.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P3816513501723386540

`A028304(∑[2*char[∑[n]]])`
-/

namespace A172417.P3816513501723386540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172417.P3816513501723386540

namespace A172417

/-- `A028304(∑[2*char[∑[n]]])` -/
def P3816513501723386540.Spec : Prop :=
  ∀ n, P3816513501723386540.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P13081421151311066090

`A057977(∑[2*char[∑[n]]])`
-/

namespace A172417.P13081421151311066090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172417.P13081421151311066090

namespace A172417

/-- `A057977(∑[2*char[∑[n]]])` -/
def P13081421151311066090.Spec : Prop :=
  ∀ n, P13081421151311066090.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P717002903701357254

`A208355(∑[2*char[∑[n]]])`
-/

namespace A172417.P717002903701357254
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172417.P717002903701357254

namespace A172417

/-- `A208355(∑[2*char[∑[n]]])` -/
def P717002903701357254.Spec : Prop :=
  ∀ n, P717002903701357254.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P4915699349063313363

`(A000108(round(sqrt(Δ[n²])))^(1/2))²`
-/

namespace A172417.P4915699349063313363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000108 (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A172417.P4915699349063313363

namespace A172417

/-- `(A000108(round(sqrt(Δ[n²])))^(1/2))²` -/
def P4915699349063313363.Spec : Prop :=
  ∀ n, P4915699349063313363.a n = (A172417 (n + 1) : ℝ)

end A172417

/-! ## A172417.P12268188691112409228

`abs(A182492(4*round(sqrt(2*n+1))+3))`
-/

namespace A172417.P12268188691112409228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (4 * SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) + 3).toNat|

end

end A172417.P12268188691112409228

namespace A172417

/-- `abs(A182492(4*round(sqrt(2*n+1))+3))` -/
def P12268188691112409228.Spec : Prop :=
  ∀ n, P12268188691112409228.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P5672190932109625479

`A039598(A057944(n))`
-/

namespace A172417.P5672190932109625479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A057944 n).toNat

end

end A172417.P5672190932109625479

namespace A172417

/-- `A039598(A057944(n))` -/
def P5672190932109625479.Spec : Prop :=
  ∀ n, P5672190932109625479.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P6102844689954655779

`A026008(A279891(n))`
-/

namespace A172417.P6102844689954655779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (A279891 n).toNat

end

end A172417.P6102844689954655779

namespace A172417

/-- `A026008(A279891(n))` -/
def P6102844689954655779.Spec : Prop :=
  ∀ n, P6102844689954655779.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P1298405686372069766

`A028303(A111650(n+1))`
-/

namespace A172417.P1298405686372069766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A111650 (n + 1)).toNat

end

end A172417.P1298405686372069766

namespace A172417

/-- `A028303(A111650(n+1))` -/
def P1298405686372069766.Spec : Prop :=
  ∀ n, P1298405686372069766.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P8647874120371120526

`A089408(A131507(n)+2)`
-/

namespace A172417.P8647874120371120526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A131507 n + 2).toNat

end

end A172417.P8647874120371120526

namespace A172417

/-- `A089408(A131507(n)+2)` -/
def P8647874120371120526.Spec : Prop :=
  ∀ n, P8647874120371120526.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P11491108106466838333

`A097331(A131507(n)+2)`
-/

namespace A172417.P11491108106466838333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A131507 n + 2).toNat

end

end A172417.P11491108106466838333

namespace A172417

/-- `A097331(A131507(n)+2)` -/
def P11491108106466838333.Spec : Prop :=
  ∀ n, P11491108106466838333.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P3430968071240142342

`A028303(A279891(n)+2)`
-/

namespace A172417.P3430968071240142342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A279891 n + 2).toNat

end

end A172417.P3430968071240142342

namespace A172417

/-- `A028303(A279891(n)+2)` -/
def P3430968071240142342.Spec : Prop :=
  ∀ n, P3430968071240142342.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P8170643046292327689

`A028364(A025581(n)+n)`
-/

namespace A172417.P8170643046292327689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A025581 n + (n : ℤ)).toNat

end

end A172417.P8170643046292327689

namespace A172417

/-- `A028364(A025581(n)+n)` -/
def P8170643046292327689.Spec : Prop :=
  ∀ n, P8170643046292327689.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P16715937270958753640

`A126120(2*(A003056(n)+1))`
-/

namespace A172417.P16715937270958753640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * (A003056 n + 1)).toNat

end

end A172417.P16715937270958753640

namespace A172417

/-- `A126120(2*(A003056(n)+1))` -/
def P16715937270958753640.Spec : Prop :=
  ∀ n, P16715937270958753640.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P3853435884190904665

`A068875(A003056(n)+1)/2`
-/

namespace A172417.P3853435884190904665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 (A003056 n + 1).toNat : ℚ) / 2

end

end A172417.P3853435884190904665

namespace A172417

/-- `A068875(A003056(n)+1)/2` -/
def P3853435884190904665.Spec : Prop :=
  ∀ n, P3853435884190904665.a n = (A172417 (n + 1) : ℚ)

end A172417

/-! ## A172417.P12192325952487546431

`or(A000108(A002024(n+1)), char[3])`
-/

namespace A172417.P12192325952487546431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000108 (A002024 (n + 1)).toNat) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A172417.P12192325952487546431

namespace A172417

/-- `or(A000108(A002024(n+1)), char[3])` -/
def P12192325952487546431.Spec : Prop :=
  ∀ n, P12192325952487546431.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P11264931243044189177

`A132808(n+2-A002260(n+1))`
-/

namespace A172417.P11264931243044189177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132808 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A172417.P11264931243044189177

namespace A172417

/-- `A132808(n+2-A002260(n+1))` -/
def P11264931243044189177.Spec : Prop :=
  ∀ n, P11264931243044189177.a n = A172417 (n + 1)

end A172417

/-! ## A172417.P7222846971311219423

`A217221(2*n)+A000108(A002024(n+1))`
-/

namespace A172417.P7222846971311219423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 (2 * n) + A000108 (A002024 (n + 1)).toNat

end

end A172417.P7222846971311219423

namespace A172417

/-- `A217221(2*n)+A000108(A002024(n+1))` -/
def P7222846971311219423.Spec : Prop :=
  ∀ n, P7222846971311219423.a n = A172417 (n + 1)

end A172417

/-!
# A172418: Numbers k that have measure of smoothness J larger than 3, where J = log(k)/log(rad(k)) and rad(k) is the product of the distinct prime divisors of k (A007947).

The programs for A172418, there is no canonical definition to state claims against.
-/

/-! ## A172418.P1992974841437229037

`lt[A351269(n+1), n²]+1`
-/

namespace A172418.P1992974841437229037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351269 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A172418.P1992974841437229037

/-! ## A172418.P12134069552576370043

`A020725(lt[A078615(n+1), A003557(n+1)])`
-/

namespace A172418.P12134069552576370043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172418.P12134069552576370043

/-! ## A172418.P14504334968368081825

`A061767(lt[A078615(n+1), A003557(n+1)])`
-/

namespace A172418.P14504334968368081825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172418.P14504334968368081825

/-! ## A172418.P11651523820132462884

`A065475(lt[A078615(n+1), A003557(n+1)])`
-/

namespace A172418.P11651523820132462884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172418.P11651523820132462884

/-! ## A172418.P4031152897676834924

`A020725(lt[A078615(n+1), A336551(n+1)])`
-/

namespace A172418.P4031152897676834924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172418.P4031152897676834924

/-!
# A172419: Numbers k that have measure of smoothness J larger than 4, where J = log(k)/log(rad(k)) and rad(k) is the product of the distinct prime divisors of k (A007947).

The programs for A172419, there is no canonical definition to state claims against.
-/

/-! ## A172419.P7539804861078446912

`A069492(A032555(n+2))`
-/

namespace A172419.P7539804861078446912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (A032555 (n + 2)).toNat

end

end A172419.P7539804861078446912

/-! ## A172419.P6300219896318250329

`A069492(A032559(n+2))`
-/

namespace A172419.P6300219896318250329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (A032559 (n + 2)).toNat

end

end A172419.P6300219896318250329

/-! ## A172419.P14816147199690136822

`A069492(A077739(n+2))`
-/

namespace A172419.P14816147199690136822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (A077739 (n + 2)).toNat

end

end A172419.P14816147199690136822

/-! ## A172419.P2768190825640324799

`A069492(A078213(n+2))`
-/

namespace A172419.P2768190825640324799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (A078213 (n + 2)).toNat

end

end A172419.P2768190825640324799

/-!
# A172420: Numbers k that have measure of smoothness J larger than 5, where J = log(k)/log(rad(k)) and rad(k) is the product of the distinct prime divisors of k (A007947).

The programs for A172420, there is no canonical definition to state claims against.
-/

/-! ## A172420.P10474603330803719351

`A000015(A069493(n+2))`
-/

namespace A172420.P10474603330803719351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A069493 (n + 2)).toNat

end

end A172420.P10474603330803719351

/-! ## A172420.P15521374613219254872

`A000015(A076470(n+2))`
-/

namespace A172420.P15521374613219254872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A076470 (n + 2)).toNat

end

end A172420.P15521374613219254872

/-! ## A172420.P17985857412143073475

`A069493(A062399(n)+2)`
-/

namespace A172420.P17985857412143073475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (A062399 n + 2).toNat

end

end A172420.P17985857412143073475

/-! ## A172420.P10717430037315216071

`A069493(A351870(n)+2)`
-/

namespace A172420.P10717430037315216071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (A351870 n + 2).toNat

end

end A172420.P10717430037315216071

/-! ## A172420.P9602423913027726280

`record[A069493(A348389(n+2))]`
-/

namespace A172420.P9602423913027726280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (A348389 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172420.P9602423913027726280

/-!
# A172421: Numbers k that have measure of smoothness J larger than 6, where J = log(k)/log(rad(k)) and rad(k) is the product of the distinct prime divisors of k (A007947).

The programs for A172421, there is no canonical definition to state claims against.
-/

/-! ## A172421.P3852949223683522581

`record[A222416(A046307(n+1))]`
-/

namespace A172421.P3852949223683522581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A046307 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172421.P3852949223683522581

/-! ## A172421.P17755679584391173099

`filter[A069493(n+1), A085137(#)]`
-/

namespace A172421.P17755679584391173099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085137 (f1 j).toNat = 1) n)

end

end A172421.P17755679584391173099

/-! ## A172421.P4014090198437143004

`filter[A076470(n+1), A085137(#)]`
-/

namespace A172421.P4014090198437143004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085137 (f1 j).toNat = 1) n)

end

end A172421.P4014090198437143004

/-! ## A172421.P1304858808656465459

`filter[A069493(n+3), A072608(#)]`
-/

namespace A172421.P1304858808656465459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A172421.P1304858808656465459

/-! ## A172421.P13044100070715311217

`filter[A076470(n+3), A072608(#)]`
-/

namespace A172421.P13044100070715311217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A172421.P13044100070715311217

/-!
# A172422: Numbers k that have measure of smoothness J larger than 7, where J = log(k)/log(rad(k)) and rad(k) is the product of the distinct prime divisors of k (A007947).

The programs for A172422, there is no canonical definition to state claims against.
-/

/-! ## A172422.P16270033050646492626

`∩[A046309(n+1), A062559(n)]`
-/

namespace A172422.P16270033050646492626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062559 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172422.P16270033050646492626

/-! ## A172422.P9857532978721743340

`∩[A006899(n+1), A046309(n+1)]`
-/

namespace A172422.P9857532978721743340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172422.P9857532978721743340

/-! ## A172422.P5753278004094116376

`∩[A025475(n+1), A046309(n+1)]`
-/

namespace A172422.P5753278004094116376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172422.P5753278004094116376

/-! ## A172422.P2212546619559391737

`∩[A046309(n+1), A046447(n+1)]`
-/

namespace A172422.P2212546619559391737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172422.P2212546619559391737

/-! ## A172422.P11327475229817921294

`∩[A046309(n+1), A088247(n+1)]`
-/

namespace A172422.P11327475229817921294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172422.P11327475229817921294

/-!
# A172423: Period 10: repeat [0, 9, 2, 7, 4, 5, 6, 3, 8, 1].

The programs for A172423, the canonical program `A172423.P4258919403678142260` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172423 has offset 0).

The definition of A172423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172423.P4258919403678142260

`A144468(A237420(n)+A144468(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172423

/-- `A144468(A237420(n)+A144468(n))` -/
def P4258919403678142260.Spec : Prop :=
  ∀ n, P4258919403678142260.a n = A172423 n

theorem P4258919403678142260.correct : P4258919403678142260.Spec := by
  intro n
  simp only [A172423]

end A172423

/-!
# A172425: Pentagonal pyramidal numbers which are the sum of two other such numbers: A002411(k) = A002411(i)+A002411(j) with i,j>0.

The programs for A172425, there is no canonical definition to state claims against.
-/

/-! ## A172425.P7674032275225957903

`A002411(A172437(n+1))`
-/

namespace A172425.P7674032275225957903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A172437 (n + 1)).toNat

end

end A172425.P7674032275225957903

/-! ## A172425.P4111001186752431875

`A188067(2*A172437(n+1))`
-/

namespace A172425.P4111001186752431875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (2 * A172437 (n + 1)).toNat

end

end A172425.P4111001186752431875

/-!
# A172426: Number of nontrivial solutions (x,y,z) for each prime number p of the Fermat equation x^p + y^p + z^p = 0 mod (n) where n is prime of the form n = 2p + 1, and x, y, z are integers such that x <= y.

The programs for A172426, there is no canonical definition to state claims against.
-/

/-! ## A172426.P12911958263301083293

`A379759(A177524(n)+comp[∑[n]])`
-/

namespace A172426.P12911958263301083293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379759 (A177524 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A172426.P12911958263301083293

/-!
# A172427: Triangle T(n, k, q) = c(n,q)/( c(k,q)*c(n-k,q) ), where c(n, q) = Product_{j=1..n} f(n, q), f(n, q) = ( (1-q^n)*(1+(-1)^n) + n!*(1-(-1)^n) )/2, and q = 2, read by rows.

The programs for A172427, there is no canonical definition to state claims against.
-/

/-! ## A172427.P7403506164199574618

`A172429(n)%A053319(A000079(n))`
-/

namespace A172427.P7403506164199574618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172429 n) (A053319 (A000079 n).toNat)

end

end A172427.P7403506164199574618

/-!
# A172428: Triangle T(n, k, q) = c(n,q)/( c(k,q)*c(n-k,q) ), where c(n, q) = Product_{j=1..n} f(n, q), f(n, q) = ( (1-q^n)*(1+(-1)^n) + n!*(1-(-1)^n) )/2, and q = 3, read by rows.

The programs for A172428, there is no canonical definition to state claims against.
-/

/-! ## A172428.P6965538495005267372

`A166235(A144404(n)-A196809(n+1))`
-/

namespace A172428.P6965538495005267372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166235 (A144404 n - A196809 (n + 1)).toNat

end

end A172428.P6965538495005267372

/-!
# A172430: Period length 10: repeat [2, 1, 6, 7, 0, 3, 4, 9, 8, 5].

The programs for A172430, the canonical program `A172430.P6783091218878655779` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172430 has offset 0).

The definition of A172430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172430.P6783091218878655779

`A172285(n+1)%10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172430

/-- `A172285(n+1)%10` -/
def P6783091218878655779.Spec : Prop :=
  ∀ n, P6783091218878655779.a n = A172430 n

theorem P6783091218878655779.correct : P6783091218878655779.Spec := by
  intro n
  simp only [A172430]

end A172430

/-!
# A172431: Even row Pascal-square read by antidiagonals.

The programs for A172431, the canonical program `A172431.P929262314791360828` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172431 has offset 1).

The definition of A172431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172431.P929262314791360828

`C(2*(row(n)+1)-(col(n)+1), col(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172431

/-- `C(2*(row(n)+1)-(col(n)+1), col(n))` -/
def P929262314791360828.Spec : Prop :=
  ∀ n, (P929262314791360828.a n : ℤ) = A172431 (n + 1)

theorem P929262314791360828.correct : P929262314791360828.Spec := by
  intro n
  simp only [A172431, Nat.add_sub_cancel]

end A172431

/-! ## A172431.P8294528233152044143

`C(2*row(n)+1-col(n), col(n))`
-/

namespace A172431.P8294528233152044143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n)

end

end A172431.P8294528233152044143

namespace A172431

/-- `C(2*row(n)+1-col(n), col(n))` -/
def P8294528233152044143.Spec : Prop :=
  ∀ n, (P8294528233152044143.a n : ℤ) = A172431 (n + 1)

theorem P8294528233152044143.correct : P8294528233152044143.Spec := by
  intro n
  simp only [A172431, Nat.add_sub_cancel, A172431.P8294528233152044143.a, A172431.P929262314791360828.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172431

/-! ## A172431.P9387854552212495873

`abs(A053123(n))`
-/

namespace A172431.P9387854552212495873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053123 n|

end

end A172431.P9387854552212495873

namespace A172431

/-- `abs(A053123(n))` -/
def P9387854552212495873.Spec : Prop :=
  ∀ n, P9387854552212495873.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P15475264896859886718

`gcd(A000038(n), A053123(n))`
-/

namespace A172431.P15475264896859886718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053123 n)

end

end A172431.P15475264896859886718

namespace A172431

/-- `gcd(A000038(n), A053123(n))` -/
def P15475264896859886718.Spec : Prop :=
  ∀ n, (P15475264896859886718.a n : ℤ) = A172431 (n + 1)

end A172431

/-! ## A172431.P13973471525218134862

`lcm(A020985(n), A053123(n))`
-/

namespace A172431.P13973471525218134862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A053123 n)

end

end A172431.P13973471525218134862

namespace A172431

/-- `lcm(A020985(n), A053123(n))` -/
def P13973471525218134862.Spec : Prop :=
  ∀ n, (P13973471525218134862.a n : ℤ) = A172431 (n + 1)

end A172431

/-! ## A172431.P7242940614288301215

`C(A128076(n+1), A002262(n))`
-/

namespace A172431.P7242940614288301215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128076 (n + 1)).toNat (A002262 n).toNat

end

end A172431.P7242940614288301215

namespace A172431

/-- `C(A128076(n+1), A002262(n))` -/
def P7242940614288301215.Spec : Prop :=
  ∀ n, (P7242940614288301215.a n : ℤ) = A172431 (n + 1)

end A172431

/-! ## A172431.P2074076974203412569

`C(A294317(n)+1, A002262(n))`
-/

namespace A172431.P2074076974203412569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + 1).toNat (A002262 n).toNat

end

end A172431.P2074076974203412569

namespace A172431

/-- `C(A294317(n)+1, A002262(n))` -/
def P2074076974203412569.Spec : Prop :=
  ∀ n, (P2074076974203412569.a n : ℤ) = A172431 (n + 1)

end A172431

/-! ## A172431.P4107205979878401364

`C(A004736(n+1)+A003056(n), A002262(n))`
-/

namespace A172431.P4107205979878401364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) + A003056 n).toNat (A002262 n).toNat

end

end A172431.P4107205979878401364

namespace A172431

/-- `C(A004736(n+1)+A003056(n), A002262(n))` -/
def P4107205979878401364.Spec : Prop :=
  ∀ n, (P4107205979878401364.a n : ℤ) = A172431 (n + 1)

end A172431

/-! ## A172431.P15420661994198324959

`A210220(n+1)+A071922(n)-A210219(n+1)`
-/

namespace A172431.P15420661994198324959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210220 (n + 1) + (A071922 n - A210219 (n + 1))

end

end A172431.P15420661994198324959

namespace A172431

/-- `A210220(n+1)+A071922(n)-A210219(n+1)` -/
def P15420661994198324959.Spec : Prop :=
  ∀ n, P15420661994198324959.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P5390231915560200536

`A210219(n+2)-Δ[A210220(n+1)]`
-/

namespace A172431.P5390231915560200536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 2) - (f1 (n + 1) - f1 n)

end

end A172431.P5390231915560200536

namespace A172431

/-- `A210219(n+2)-Δ[A210220(n+1)]` -/
def P5390231915560200536.Spec : Prop :=
  ∀ n, P5390231915560200536.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P11273104487775503931

`A210220(n+1)+A210219(n+2)-A210220(n+2)`
-/

namespace A172431.P11273104487775503931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210220 (n + 1) + (A210219 (n + 2) - A210220 (n + 2))

end

end A172431.P11273104487775503931

namespace A172431

/-- `A210220(n+1)+A210219(n+2)-A210220(n+2)` -/
def P11273104487775503931.Spec : Prop :=
  ∀ n, P11273104487775503931.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P3706115631648765621

`abs(A053122(∑[char[∑[n]]]²-(n+1)))`
-/

namespace A172431.P3706115631648765621
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053122 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))|

end

end A172431.P3706115631648765621

namespace A172431

/-- `abs(A053122(∑[char[∑[n]]]²-(n+1)))` -/
def P3706115631648765621.Spec : Prop :=
  ∀ n, P3706115631648765621.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P6177768816927831888

`A078812(A061579(n))`
-/

namespace A172431.P6177768816927831888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A061579 n).toNat

end

end A172431.P6177768816927831888

namespace A172431

/-- `A078812(A061579(n))` -/
def P6177768816927831888.Spec : Prop :=
  ∀ n, P6177768816927831888.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P7403050205132367155

`A078812(A038722(n+1)-1)`
-/

namespace A172431.P7403050205132367155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A038722 (n + 1) - 1).toNat

end

end A172431.P7403050205132367155

namespace A172431

/-- `A078812(A038722(n+1)-1)` -/
def P7403050205132367155.Spec : Prop :=
  ∀ n, P7403050205132367155.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P13581598636185098169

`A128908(A038722(n+1))+A054142(n)`
-/

namespace A172431.P13581598636185098169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A038722 (n + 1)).toNat + A054142 n

end

end A172431.P13581598636185098169

namespace A172431

/-- `A128908(A038722(n+1))+A054142(n)` -/
def P13581598636185098169.Spec : Prop :=
  ∀ n, P13581598636185098169.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P794309660637593327

`abs(A053125(n)/A262616(n))`
-/

namespace A172431.P794309660637593327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A053125 n : ℚ) / (A262616 n : ℚ)|

end

end A172431.P794309660637593327

namespace A172431

/-- `abs(A053125(n)/A262616(n))` -/
def P794309660637593327.Spec : Prop :=
  ∀ n, P794309660637593327.a n = (A172431 (n + 1) : ℚ)

end A172431

/-! ## A172431.P11634192388624947676

`abs(A115139(A004202(n+1)))`
-/

namespace A172431.P11634192388624947676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115139 (A004202 (n + 1)).toNat|

end

end A172431.P11634192388624947676

namespace A172431

/-- `abs(A115139(A004202(n+1)))` -/
def P11634192388624947676.Spec : Prop :=
  ∀ n, P11634192388624947676.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P5391268612348886941

`A011973(A064801(n+1))`
-/

namespace A172431.P5391268612348886941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A064801 (n + 1)).toNat

end

end A172431.P5391268612348886941

namespace A172431

/-- `A011973(A064801(n+1))` -/
def P5391268612348886941.Spec : Prop :=
  ∀ n, P5391268612348886941.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P10839420136373452792

`A011973(A004736(n+1)+2*n)`
-/

namespace A172431.P10839420136373452792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A004736 (n + 1) + (2 * n : ℤ)).toNat

end

end A172431.P10839420136373452792

namespace A172431

/-- `A011973(A004736(n+1)+2*n)` -/
def P10839420136373452792.Spec : Prop :=
  ∀ n, P10839420136373452792.a n = A172431 (n + 1)

end A172431

/-! ## A172431.P5817521780737205576

`A011973(A025581(n)+2*n+1)`
-/

namespace A172431.P5817521780737205576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A025581 n + (2 * n + 1 : ℤ)).toNat

end

end A172431.P5817521780737205576

namespace A172431

/-- `A011973(A025581(n)+2*n+1)` -/
def P5817521780737205576.Spec : Prop :=
  ∀ n, P5817521780737205576.a n = A172431 (n + 1)

end A172431

/-!
# A172433: Let u(n) = Sum [n/[sqrt k]] and v(n) = Sum [n/(sqrt k)] where the summation index k ranges from 1 to infinity, although both sums are actually finite. Here [a] denotes the integer part of a. Then a(n) = u(n) - v(n).

The programs for A172433, there is no canonical definition to state claims against.
-/

/-! ## A172433.P6746632932204944059

`A360674(A059405(n+1))+A043091(A043091(2*n+1))`
-/

namespace A172433.P6746632932204944059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360674 (A059405 (n + 1)).toNat + A043091 (A043091 (2 * n + 1)).toNat

end

end A172433.P6746632932204944059

/-!
# A172435: Partial sums of circular primes A016114.

The programs for A172435, there is no canonical definition to state claims against.
-/

/-! ## A172435.P1503008234658744266

`∑[A016114(n+1)]`
-/

namespace A172435.P1503008234658744266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172435.P1503008234658744266

/-! ## A172435.P15667187432959754138

`∑[record[A016114(A193738(n))]]`
-/

namespace A172435.P15667187432959754138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016114 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172435.P15667187432959754138

/-! ## A172435.P16678622357531273515

`∑[record[A016114(A274640(n))]]`
-/

namespace A172435.P16678622357531273515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016114 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172435.P16678622357531273515

/-! ## A172435.P4909879561411354983

`∑[record[A016114(A331303(n))]]`
-/

namespace A172435.P4909879561411354983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016114 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172435.P4909879561411354983

/-! ## A172435.P12186665559475936535

`∑[A016114(A028310(n)-or(n, -1))]-1`
-/

namespace A172435.P12186665559475936535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016114 (A028310 n - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172435.P12186665559475936535

/-!
# A172436: Smallest m such that the Moebius function takes successively, from m, n values 1,0,1,0,... ending with 1 or 0.

The programs for A172436, there is no canonical definition to state claims against.
-/

/-! ## A172436.P1540034203650068869

`A354714(A099626(n+1))`
-/

namespace A172436.P1540034203650068869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354714 (A099626 (n + 1)).toNat

end

end A172436.P1540034203650068869

/-!
# A172438: Numbers k such that tau(k^2+1) - tau(k^2) = 1 where the function tau(k) is the number of positive divisors of k.

The programs for A172438, there is no canonical definition to state claims against.
-/

/-! ## A172438.P6712689473698544907

`sqrt(∩[A055927(n+1), n²])`
-/

namespace A172438.P6712689473698544907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A172438.P6712689473698544907

/-! ## A172438.P17138106668517052761

`sqrt(∩[A000290(n), A055927(n+1)])`
-/

namespace A172438.P17138106668517052761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055927 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A172438.P17138106668517052761

/-! ## A172438.P12227216197622879255

`eq[A063647(n+1), A147809(n+1)]+1`
-/

namespace A172438.P12227216197622879255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A172438.P12227216197622879255

/-! ## A172438.P16208352365813244376

`record[A056926(A055927(n+1))]`
-/

namespace A172438.P16208352365813244376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A055927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172438.P16208352365813244376

/-! ## A172438.P7263163421765270338

`A056926(∩[A055927(n+1), n²])`
-/

namespace A172438.P7263163421765270338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A172438.P7263163421765270338

/-!
# A172441: Number of prime knots up to nine crossings with determinant 2n+1 and signature 2.

The programs for A172441, there is no canonical definition to state claims against.
-/

/-! ## A172441.P10139369061396229712

`and(A004526(A000211(n)), A351034(n+1))`
-/

namespace A172441.P10139369061396229712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 (A000211 n).toNat) (A351034 (n + 1))

end

end A172441.P10139369061396229712

/-! ## A172441.P14884235933735494802

`and(A008619(A000032(n)), A351034(n+1))`
-/

namespace A172441.P14884235933735494802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008619 (A000032 n).toNat) (A351034 (n + 1))

end

end A172441.P14884235933735494802

/-! ## A172441.P9854205909740110667

`A303708(A313746(n*A000035(n)))`
-/

namespace A172441.P9854205909740110667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A313746 ((n : ℤ) * A000035 n).toNat).toNat

end

end A172441.P9854205909740110667

/-! ## A172441.P1686768778376226518

`A000035(n)*A196930(A350840(3*n))`
-/

namespace A172441.P1686768778376226518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A196930 (A350840 (3 * n)).toNat

end

end A172441.P1686768778376226518

/-! ## A172441.P12216577942707566877

`A060502(A078181(n+1)*A265829(n+3))`
-/

namespace A172441.P12216577942707566877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A078181 (n + 1) * A265829 (n + 3)).toNat

end

end A172441.P12216577942707566877

/-!
# A172442: A sixth of the smallest integer for which the number of divisors is the n-th composite.

The programs for A172442, there is no canonical definition to state claims against.
-/

/-! ## A172442.P14099340871421196797

`A005179(A002808(n+1))/6`
-/

namespace A172442.P14099340871421196797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (A002808 (n + 1)).toNat : ℚ) / 6

end

end A172442.P14099340871421196797

/-! ## A172442.P16162569427910506307

`A187678(n+2)/6`
-/

namespace A172442.P16162569427910506307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187678 (n + 2) : ℚ) / 6

end

end A172442.P16162569427910506307

/-! ## A172442.P15583093056896155641

`A005179(A018252(n+2))/6`
-/

namespace A172442.P15583093056896155641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (A018252 (n + 2)).toNat : ℚ) / 6

end

end A172442.P15583093056896155641

/-! ## A172442.P3293365878894678724

`ceil(A005179(A056653(n+1))/6)`
-/

namespace A172442.P3293365878894678724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005179 (A056653 (n + 1)).toNat : ℚ) / 6⌉

end

end A172442.P3293365878894678724

/-! ## A172442.P16428005678638190644

`(A005179(A056653(n+1))/6)^abs(A057428(n))`
-/

namespace A172442.P16428005678638190644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005179 (A056653 (n + 1)).toNat : ℚ) / 6) ^ (|A057428 n| : ℤ)

end

end A172442.P16428005678638190644

/-!
# A172443: Numbers with exactly 64 divisors.

The programs for A172443, there is no canonical definition to state claims against.
-/

/-! ## A172443.P1598659772630803581

`filter[A111030(n), A295316(#)]`
-/

namespace A172443.P1598659772630803581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A172443.P1598659772630803581

/-!
# A172444: Number of prime knots up to nine crossings with determinant 2n+1 and signature 4.

The programs for A172444, there is no canonical definition to state claims against.
-/

/-! ## A172444.P14080318468517059870

`∑{e}[A233279(A147600(n)), floor(1/#)]`
-/

namespace A172444.P14080318468517059870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A147600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋

end

end A172444.P14080318468517059870

/-! ## A172444.P8787707682201958959

`A344339(lcm(A014681(n+4), A035695(n+8)))`
-/

namespace A172444.P8787707682201958959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (Int.lcm (A014681 (n + 4)) (A035695 (n + 8)))

end

end A172444.P8787707682201958959

/-! ## A172444.P17019202872346167506

`A165046(A001481(2*n+5))%A070431(3*n+4)`
-/

namespace A172444.P17019202872346167506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165046 (A001481 (2 * n + 5)).toNat) (A070431 (3 * n + 4))

end

end A172444.P17019202872346167506

/-! ## A172444.P16690157238398043282

`A297155(A027642(n)%A318683(3*(n+1)))`
-/

namespace A172444.P16690157238398043282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (Int.tmod (A027642 n) (A318683 (3 * (n + 1)))).toNat

end

end A172444.P16690157238398043282

/-! ## A172444.P8245652850725374256

`A240236(n+2)%A057574(A243055(3*n+4))`
-/

namespace A172444.P8245652850725374256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240236 (n + 2)) (A057574 (A243055 (3 * n + 4)).toNat)

end

end A172444.P8245652850725374256

/-!
# A172445: a(1) = 1, and for each k >=2, a(k) is the smallest number n such that n/sin(n) > a(k)/sin(a(k)), so that a(1)/sin(a(1)) > a(2)/sin(a(2)) > ... > a(k)/sin(a(k)) > ...

The programs for A172445, there is no canonical definition to state claims against.
-/

/-! ## A172445.P12686084739955456084

`A131975(2*n+1)-A132013(A046952(n+1))`
-/

namespace A172445.P12686084739955456084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131975 (2 * n + 1) - A132013 (A046952 (n + 1)).toNat

end

end A172445.P12686084739955456084

/-! ## A172445.P2560312725095444609

`record[A194921(n+1)*A347285(A214078(3*n+1))]`
-/

namespace A172445.P2560312725095444609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) * A347285 (A214078 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172445.P2560312725095444609

/-!
# A172447: a(n) = (-1 + 5*2^(2*n + 1) - 3*n)/9.

The programs for A172447, the canonical program `A172447.P12575909183800251685` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172447 has offset 0).

The definition of A172447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172447.P12575909183800251685

`A172416(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172447

/-- `A172416(2*n+1)` -/
def P12575909183800251685.Spec : Prop :=
  ∀ n, P12575909183800251685.a n = A172447 n

theorem P12575909183800251685.correct : P12575909183800251685.Spec := by
  intro n
  simp only [A172447]

end A172447

/-! ## A172447.P123861847508113120

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`
-/

namespace A172447.P123861847508113120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 17] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 4 * a (n - 3)

end

end A172447.P123861847508113120

namespace A172447

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P123861847508113120.Spec : Prop :=
  ∀ n, P123861847508113120.a n = A172447 n

end A172447

/-! ## A172447.P16496961469177548070

`(-1+5*2^(2*n+1)-3*n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172447.P16496961469177548070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 + (5 * 2 ^ (2 * n + 1) : ℤ) - (3 * n : ℤ) : ℚ) / 9

end

end A172447.P16496961469177548070

namespace A172447

/-- `(-1+5*2^(2*n+1)-3*n)/9` -/
def P16496961469177548070.Spec : Prop :=
  ∀ n, P16496961469177548070.a n = (A172447 n : ℚ)

end A172447

/-! ## A172447.P14230197707690427800

`∑[ogf((1-2x+2x^2)/(1-5x+4x^2))]`
-/

namespace A172447.P14230197707690427800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172447.P14230197707690427800

namespace A172447

/-- `∑[ogf((1-2x+2x^2)/(1-5x+4x^2))]` -/
def P14230197707690427800.Spec : Prop :=
  ∀ n, P14230197707690427800.a n = A172447 n

end A172447

/-! ## A172447.P16528534868984961655

`ogf((1-2x+2x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A172447.P16528534868984961655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -6, 9, -4] n

end

end A172447.P16528534868984961655

namespace A172447

/-- `ogf((1-2x+2x^2)/(1-6x+9x^2-4x^3))` -/
def P16528534868984961655.Spec : Prop :=
  ∀ n, P16528534868984961655.a n = A172447 n

end A172447

/-! ## A172447.P17096407800415670687

`∑[4*a(n-1)+1]` with `a(0)=1, a(1)=3`
-/

namespace A172447.P17096407800415670687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172447.P17096407800415670687

namespace A172447

/-- `∑[4*a(n-1)+1]` -/
def P17096407800415670687.Spec : Prop :=
  ∀ n, (P17096407800415670687.a n : ℤ) = A172447 n

end A172447

/-! ## A172447.P13352743817578143178

`∑[lcm(4, a(n-1))+1]` with `a(0)=1, a(1)=3`
-/

namespace A172447.P13352743817578143178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Nat.lcm 4 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172447.P13352743817578143178

namespace A172447

/-- `∑[lcm(4, a(n-1))+1]` -/
def P13352743817578143178.Spec : Prop :=
  ∀ n, (P13352743817578143178.a n : ℤ) = A172447 n

end A172447

/-! ## A172447.P6634327104624358817

`∑[or(1, 4*a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A172447.P6634327104624358817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Nat.lor 1 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172447.P6634327104624358817

namespace A172447

/-- `∑[or(1, 4*a(n-1))]` -/
def P6634327104624358817.Spec : Prop :=
  ∀ n, (P6634327104624358817.a n : ℤ) = A172447 n

end A172447

/-! ## A172447.P9005094451738526984

`∑[∑[4*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A172447.P9005094451738526984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 10] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172447.P9005094451738526984

namespace A172447

/-- `∑[∑[4*a(n-1)]]` -/
def P9005094451738526984.Spec : Prop :=
  ∀ n, (P9005094451738526984.a n : ℤ) = A172447 n

end A172447

/-! ## A172447.P10362716986853189505

`4*a(n-1)-1+n` with `a(0)=1`
-/

namespace A172447.P10362716986853189505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - 1 + (n : ℤ)

end

end A172447.P10362716986853189505

namespace A172447

/-- `4*a(n-1)-1+n` -/
def P10362716986853189505.Spec : Prop :=
  ∀ n, P10362716986853189505.a n = A172447 n

end A172447

/-! ## A172447.P10316963714950781387

`4*a(n-1)-(1-n)` with `a(0)=1`
-/

namespace A172447.P10316963714950781387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (1 - (n : ℤ))

end

end A172447.P10316963714950781387

namespace A172447

/-- `4*a(n-1)-(1-n)` -/
def P10316963714950781387.Spec : Prop :=
  ∀ n, P10316963714950781387.a n = A172447 n

end A172447

/-! ## A172447.P11358568409705139926

`a(n-1)/(1/2)²+n-1` with `a(0)=1`
-/

namespace A172447.P11358568409705139926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + ((n : ℤ) - 1 : ℚ)

end

end A172447.P11358568409705139926

namespace A172447

/-- `a(n-1)/(1/2)²+n-1` -/
def P11358568409705139926.Spec : Prop :=
  ∀ n, P11358568409705139926.a n = (A172447 n : ℚ)

end A172447

/-! ## A172447.P18212498607500492170

`(a(n-1)+a(n-1)-1)/(1-1/2)+1+n` with `a(0)=1`
-/

namespace A172447.P18212498607500492170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (a (n - 1) - 1)) / (1 - (1 : ℚ) / 2) + 1 + (n : ℚ)

end

end A172447.P18212498607500492170

namespace A172447

/-- `(a(n-1)+a(n-1)-1)/(1-1/2)+1+n` -/
def P18212498607500492170.Spec : Prop :=
  ∀ n, P18212498607500492170.a n = (A172447 n : ℚ)

end A172447

/-! ## A172447.P86776374643610435

`a(n-1)-1+a(n-1)+a(n-1)+a(n-1)+n` with `a(0)=1`
-/

namespace A172447.P86776374643610435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + (a (n - 1) + (a (n - 1) + (n : ℤ))))

end

end A172447.P86776374643610435

namespace A172447

/-- `a(n-1)-1+a(n-1)+a(n-1)+a(n-1)+n` -/
def P86776374643610435.Spec : Prop :=
  ∀ n, P86776374643610435.a n = A172447 n

end A172447

/-! ## A172447.P13709477072600591966

`n-(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A172447.P13709477072600591966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A172447.P13709477072600591966

namespace A172447

/-- `n-(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P13709477072600591966.Spec : Prop :=
  ∀ n, P13709477072600591966.a n = A172447 n

end A172447

/-! ## A172447.P17726721687033480991

`∑[A084214(2*n)]-n`
-/

namespace A172447.P17726721687033480991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A172447.P17726721687033480991

namespace A172447

/-- `∑[A084214(2*n)]-n` -/
def P17726721687033480991.Spec : Prop :=
  ∀ n, P17726721687033480991.a n = A172447 n

end A172447

/-! ## A172447.P5213056164107398350

`2*A141291(n)+n+1`
-/

namespace A172447.P5213056164107398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141291 n + (n + 1 : ℤ)

end

end A172447.P5213056164107398350

namespace A172447

/-- `2*A141291(n)+n+1` -/
def P5213056164107398350.Spec : Prop :=
  ∀ n, P5213056164107398350.a n = A172447 n

end A172447

/-! ## A172447.P4347246045858405358

`2*A164044(n)-(n+1)`
-/

namespace A172447.P4347246045858405358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164044 n - (n + 1 : ℤ)

end

end A172447.P4347246045858405358

namespace A172447

/-- `2*A164044(n)-(n+1)` -/
def P4347246045858405358.Spec : Prop :=
  ∀ n, P4347246045858405358.a n = A172447 n

end A172447

/-! ## A172447.P1292882875689547637

`∑[abs(2-A140360(2*n))]`
-/

namespace A172447.P1292882875689547637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A140360 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172447.P1292882875689547637

namespace A172447

/-- `∑[abs(2-A140360(2*n))]` -/
def P1292882875689547637.Spec : Prop :=
  ∀ n, P1292882875689547637.a n = A172447 n

end A172447

/-! ## A172447.P18370514187034469462

`A172285(Δ[n²])-(n+1)`
-/

namespace A172447.P18370514187034469462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A172447.P18370514187034469462

namespace A172447

/-- `A172285(Δ[n²])-(n+1)` -/
def P18370514187034469462.Spec : Prop :=
  ∀ n, P18370514187034469462.a n = A172447 n

end A172447

/-!
# A172448: a(1) = 1, and for each n >=2, a(n) is the smallest number such that 1/cos(a(n)) < 1/cos(k) for all k < n, so that 1/cos(a(1)) > 1/cos(a(2)) > ... > 1/cos(a(n)) > ...

The programs for A172448, there is no canonical definition to state claims against.
-/

/-! ## A172448.P14701012073038464045

`A238616(∑[A296663(n)])`
-/

namespace A172448.P14701012073038464045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172448.P14701012073038464045

/-!
# A172449: Number of ways to place 8 nonattacking queens on an 8 X n board.

The programs for A172449, there is no canonical definition to state claims against.
-/

/-! ## A172449.P6026973980436716840

`A284269(A000110(n))*A319056(n)`
-/

namespace A172449.P6026973980436716840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 (A000110 n).toNat * A319056 n

end

end A172449.P6026973980436716840

/-! ## A172449.P16442610580780424658

`A148292(n)%A184240(A000083(n))`
-/

namespace A172449.P16442610580780424658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148292 n) (A184240 (A000083 n).toNat)

end

end A172449.P16442610580780424658

/-! ## A172449.P13071912590363485854

`A056752(n+1)*A120417(A120412(n+1))`
-/

namespace A172449.P13071912590363485854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056752 (n + 1) * A120417 (A120412 (n + 1)).toNat

end

end A172449.P13071912590363485854

/-! ## A172449.P3683391843526038652

`A126315(A066501(3*n+2)*A075206(n+1))`
-/

namespace A172449.P3683391843526038652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A066501 (3 * n + 2) * A075206 (n + 1)).toNat

end

end A172449.P3683391843526038652

/-! ## A172449.P14893320106631199585

`and(A118363(A337258(3*n+4)), A241466(n+2))`
-/

namespace A172449.P14893320106631199585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118363 (A337258 (3 * n + 4)).toNat) (A241466 (n + 2))

end

end A172449.P14893320106631199585

/-!
# A172450: The case S(2,0,-1) of the family of self-convolutive recurrences studied by Martin and Kearney.

The programs for A172450, there is no canonical definition to state claims against.
-/

/-! ## A172450.P16173216503521168541

`A228361(n)+A110303(A305990(n))`
-/

namespace A172450.P16173216503521168541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n + A110303 (A305990 n).toNat

end

end A172450.P16173216503521168541

/-! ## A172450.P17675213033593888735

`A052382(A279844(n+1)%A061286(n+1))`
-/

namespace A172450.P17675213033593888735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (Int.tmod (A279844 (n + 1)) (A061286 (n + 1))).toNat

end

end A172450.P17675213033593888735

/-!
# A172451: a(1) = 1, and for each n >= 2, a(n) is the smallest number such that 1/sin(a(n)) < 1/sin(a(k)) for all k < n, so that 1/sin(a(1)) > 1/sin(a(2)) > ... > 1/sin(a(n)) > ...

The programs for A172451, there is no canonical definition to state claims against.
-/

/-! ## A172451.P14957408375952342273

`∑[A318361(∏[∑{d}[n+1, #*#%2]])]`
-/

namespace A172451.P14957408375952342273
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d * (d % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172451.P14957408375952342273

/-! ## A172451.P16752501718286183534

`∩[A050050(n+1), A342091(n)]`
-/

namespace A172451.P16752501718286183534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172451.P16752501718286183534

/-!
# A172452: Partial products of A004001.

The programs for A172452, there is no canonical definition to state claims against.
-/

/-! ## A172452.P6189185354636982543

`A154280(Δ[n²])`
-/

namespace A172452.P6189185354636982543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A172452.P6189185354636982543

/-! ## A172452.P6918317201897313202

`a(n-1)*A004001(n)` with `a(0)=1`
-/

namespace A172452.P6918317201897313202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004001 n

end

end A172452.P6918317201897313202

/-! ## A172452.P728747157465930742

`∏[A004001(A028310(n))]`
-/

namespace A172452.P728747157465930742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172452.P728747157465930742

/-! ## A172452.P16711805341776103594

`∏[A004001(A065033(2*n))]`
-/

namespace A172452.P16711805341776103594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172452.P16711805341776103594

/-! ## A172452.P8839903373455315050

`∏[A004001(A123108(2*n))]`
-/

namespace A172452.P8839903373455315050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172452.P8839903373455315050

/-! ## A172452.P9829156160841379779

`∏[A004001(A000007(n)+n)]`
-/

namespace A172452.P9829156160841379779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172452.P9829156160841379779

/-! ## A172452.P8858536416670103919

`∏[A004001(A003056(∑[n]+1))]`
-/

namespace A172452.P8858536416670103919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172452.P8858536416670103919

/-! ## A172452.P6101570117159081652

`∏[A004001(A007318(∑[n]+1))]`
-/

namespace A172452.P6101570117159081652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172452.P6101570117159081652

/-! ## A172452.P14909450248837603754

`2*A154280(2*n+1)-A154280(2*n+1)`
-/

namespace A172452.P14909450248837603754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154280 (2 * n + 1) - A154280 (2 * n + 1)

end

end A172452.P14909450248837603754

/-! ## A172452.P10580213088732967267

`lcm(A007318(n), A154280(A004442(2*n)))`
-/

namespace A172452.P10580213088732967267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A154280 (A004442 (2 * n)).toNat)

end

end A172452.P10580213088732967267

/-!
# A172453: Triangle T(n, k) = round( A172452(n)/(A172452(k)*A172452(n-k)) ), read by rows.

The programs for A172453, there is no canonical definition to state claims against.
-/

/-! ## A172453.P6575275860034612466

`A172479(n)%A002907(n)`
-/

namespace A172453.P6575275860034612466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172479 n) (A002907 n)

end

end A172453.P6575275860034612466

/-! ## A172453.P7579494158351337015

`∏{p}[A172351(n), A093493(#)]`
-/

namespace A172453.P7579494158351337015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A093493 p

end

end A172453.P7579494158351337015

/-! ## A172453.P8280532452058881370

`A172479(and(n, A359085(n+1)))`
-/

namespace A172453.P8280532452058881370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172479 (Int.land (n : ℤ) (A359085 (n + 1))).toNat

end

end A172453.P8280532452058881370

/-! ## A172453.P5829464123327990585

`A172479(n)+A000007(A172446(n+1))`
-/

namespace A172453.P5829464123327990585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172479 n + A000007 (A172446 (n + 1)).toNat

end

end A172453.P5829464123327990585

/-! ## A172453.P16773825990333709263

`A008966(A172508(n+1))*A172479(n)`
-/

namespace A172453.P16773825990333709263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A172508 (n + 1)).toNat * A172479 n

end

end A172453.P16773825990333709263

/-!
# A172454: Primes p such that (p, p+2, p+6, p+12) is a prime quadruple.

The programs for A172454, there is no canonical definition to state claims against.
-/

/-! ## A172454.P5228458644542539286

`∪[A022006(n+1), A078847(n+1)]`
-/

namespace A172454.P5228458644542539286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P5228458644542539286

/-! ## A172454.P10483120989011025383

`∪[A187057(n+1), A210362(n+1)]`
-/

namespace A172454.P10483120989011025383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P10483120989011025383

/-! ## A172454.P761351721891725261

`∩[A022004(n+1), A046135(n+1)]`
-/

namespace A172454.P761351721891725261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P761351721891725261

/-! ## A172454.P2910294186398608429

`∩[A046135(n+1), A341357(n+1)]`
-/

namespace A172454.P2910294186398608429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P2910294186398608429

/-! ## A172454.P13920337094488254636

`∩[A001359(n+1), A023241(n+1)]`
-/

namespace A172454.P13920337094488254636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P13920337094488254636

/-! ## A172454.P9104120210890450584

`∩[A022004(n+1), A023241(n+1)]`
-/

namespace A172454.P9104120210890450584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P9104120210890450584

/-! ## A172454.P17088097260120962009

`∩[A023241(n+1), A046135(n+1)]`
-/

namespace A172454.P17088097260120962009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P17088097260120962009

/-! ## A172454.P203077803896199364

`∩[A023241(n+1), A341357(n+1)]`
-/

namespace A172454.P203077803896199364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P203077803896199364

/-! ## A172454.P16159301193284815043

`∩[A023241(n+1), A046136(n+1)-2]`
-/

namespace A172454.P16159301193284815043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P16159301193284815043

/-! ## A172454.P15948889632634082790

`∩[A007529(n+1), A046135(n+1)]`
-/

namespace A172454.P15948889632634082790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P15948889632634082790

/-! ## A172454.P11144220091123129336

`∩[A007529(n+1), A046136(n+1)-2]`
-/

namespace A172454.P11144220091123129336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P11144220091123129336

/-! ## A172454.P11336226584235754974

`A341267(n)+a(n-1)` with `a(0)=5`
-/

namespace A172454.P11336226584235754974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A341267 n + a (n - 1)

end

end A172454.P11336226584235754974

/-! ## A172454.P757100018132604776

`∑[A341267(n+1)]+5-A341267(n+1)`
-/

namespace A172454.P757100018132604776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (5 - A341267 (n + 1))

end

end A172454.P757100018132604776

/-! ## A172454.P12544250377561102232

`∩[A023241(n+1), A378983(n+1)]`
-/

namespace A172454.P12544250377561102232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P12544250377561102232

/-! ## A172454.P17779046198589754893

`∩[A023241(n+1), A054799(n+1)]`
-/

namespace A172454.P17779046198589754893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P17779046198589754893

/-! ## A172454.P3146762525768700245

`∩[A023241(n+1), A063693(n+1)]`
-/

namespace A172454.P3146762525768700245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P3146762525768700245

/-! ## A172454.P8658102991443800309

`∩[A023241(n+1), A063700(n+1)]`
-/

namespace A172454.P8658102991443800309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P8658102991443800309

/-! ## A172454.P4358153765675889049

`∩[A022004(n+1), A086136(n+1)]`
-/

namespace A172454.P4358153765675889049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P4358153765675889049

/-! ## A172454.P15342322020679373418

`∩[A023241(n+1), A111166(n+1)]`
-/

namespace A172454.P15342322020679373418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P15342322020679373418

/-! ## A172454.P16015114355990615970

`∩[A023241(n+1), A124588(n+1)]`
-/

namespace A172454.P16015114355990615970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172454.P16015114355990615970

/-!
# A172456: Primes p such that (p, p+2, p+6, p+12, p+14, p+20) is a prime sextuple.

The programs for A172456, there is no canonical definition to state claims against.
-/

/-! ## A172456.P11653928915581019808

`∩[A078946(n+1), A078955(n+1)-2]`
-/

namespace A172456.P11653928915581019808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078955 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172456.P11653928915581019808

/-! ## A172456.P16821989425130697524

`∩[A078946(n+1), A187057(n+1)]`
-/

namespace A172456.P16821989425130697524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172456.P16821989425130697524

/-! ## A172456.P5521022095448152481

`∩[A079292(n+1), A187057(n+1)]`
-/

namespace A172456.P5521022095448152481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172456.P5521022095448152481

/-! ## A172456.P5683355577824827355

`∩[A089629(n+1), A187057(n+1)]`
-/

namespace A172456.P5683355577824827355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172456.P5683355577824827355

/-! ## A172456.P4456162827291499463

`∩[A105411(n+1), A187057(n+1)]`
-/

namespace A172456.P4456162827291499463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172456.P4456162827291499463

/-!
# A172457: Numerators of first differences of the sequence A172298(n)/A172282(n).

The programs for A172457, there is no canonical definition to state claims against.
-/

/-! ## A172457.P1510846490985097223

`Δ[A172298(n)*A269906(n)]`
-/

namespace A172457.P1510846490985097223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172298 n * A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172457.P1510846490985097223

/-! ## A172457.P11511692792483814574

`Δ[A027641(n)^gcd(2, n)*A269906(n)]`
-/

namespace A172457.P11511692792483814574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n ^ Nat.gcd 2 n * A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172457.P11511692792483814574

/-! ## A172457.P8460729129999068251

`Δ[A176327(char[1]+n)²*(-1)^n*A269906(n)]`
-/

namespace A172457.P8460729129999068251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 ((if ∃ j, f2 j = n then 1 else 0) + n) ^ 2 * (-1) ^ n * A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172457.P8460729129999068251

/-! ## A172457.P2278505016802546258

`Δ[xor(4, A227573(n)²)]`
-/

namespace A172457.P2278505016802546258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A227573 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172457.P2278505016802546258

/-! ## A172457.P9466301086867015239

`Δ[A227573(n)²*A033999(n)]`
-/

namespace A172457.P9466301086867015239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172457.P9466301086867015239

/-!
# A172458: Nonprimes n such that exactly one of 2n-1 and 2n+1 is prime.

The programs for A172458, the canonical program `A172458.P6857060045200463812` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172458 has offset 1).

The definition of A172458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172458.P652347493276648094

`record[A063928(A100317(n+1))]`
-/

namespace A172458.P652347493276648094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (A100317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172458.P652347493276648094

namespace A172458

/-- `record[A063928(A100317(n+1))]` -/
def P652347493276648094.Spec : Prop :=
  ∀ n, P652347493276648094.a n = A172458 (n + 1)

end A172458

/-! ## A172458.P6857060045200463812

`record[A191558(A174047(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172458

/-- `record[A191558(A174047(n+1))]` -/
def P6857060045200463812.Spec : Prop :=
  ∀ n, P6857060045200463812.a n = A172458 (n + 1)

theorem P6857060045200463812.correct : P6857060045200463812.Spec := by
  intro n
  simp only [A172458, Nat.add_sub_cancel]

end A172458

/-! ## A172458.P4115097726231840410

`record[A288469(A174047(n+3))]`
-/

namespace A172458.P4115097726231840410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A174047 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172458.P4115097726231840410

namespace A172458

/-- `record[A288469(A174047(n+3))]` -/
def P4115097726231840410.Spec : Prop :=
  ∀ n, P4115097726231840410.a n = A172458 (n + 1)

end A172458

/-! ## A172458.P2561868949101828326

`filter[A174047(n+1), A005171(#)]`
-/

namespace A172458.P2561868949101828326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172458.P2561868949101828326

namespace A172458

/-- `filter[A174047(n+1), A005171(#)]` -/
def P2561868949101828326.Spec : Prop :=
  ∀ n, P2561868949101828326.a n = A172458 (n + 1)

end A172458

/-! ## A172458.P14778750547372465069

`∩[A018252(n+1), A174047(n+1)]`
-/

namespace A172458.P14778750547372465069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172458.P14778750547372465069

namespace A172458

/-- `∩[A018252(n+1), A174047(n+1)]` -/
def P14778750547372465069.Spec : Prop :=
  ∀ n, (P14778750547372465069.a n : ℤ) = A172458 (n + 1)

end A172458

/-! ## A172458.P16284388193053843191

`∩[A065090(n+1), A174047(n+1)]`
-/

namespace A172458.P16284388193053843191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172458.P16284388193053843191

namespace A172458

/-- `∩[A065090(n+1), A174047(n+1)]` -/
def P16284388193053843191.Spec : Prop :=
  ∀ n, (P16284388193053843191.a n : ℤ) = A172458 (n + 1)

end A172458

/-! ## A172458.P14215763458469502466

`∩[A141468(n+1), A174047(n+1)]`
-/

namespace A172458.P14215763458469502466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172458.P14215763458469502466

namespace A172458

/-- `∩[A141468(n+1), A174047(n+1)]` -/
def P14215763458469502466.Spec : Prop :=
  ∀ n, (P14215763458469502466.a n : ℤ) = A172458 (n + 1)

end A172458

/-! ## A172458.P6440171147756466868

`∩[A171581(n+1), A174047(n+1)]`
-/

namespace A172458.P6440171147756466868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172458.P6440171147756466868

namespace A172458

/-- `∩[A171581(n+1), A174047(n+1)]` -/
def P6440171147756466868.Spec : Prop :=
  ∀ n, (P6440171147756466868.a n : ℤ) = A172458 (n + 1)

end A172458

/-! ## A172458.P5157358468108128479

`∩[A173905(n+1), A174047(n+1)]`
-/

namespace A172458.P5157358468108128479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172458.P5157358468108128479

namespace A172458

/-- `∩[A173905(n+1), A174047(n+1)]` -/
def P5157358468108128479.Spec : Prop :=
  ∀ n, (P5157358468108128479.a n : ℤ) = A172458 (n + 1)

end A172458

/-! ## A172458.P4437091780592000119

`eq[A002126(2*n+1), A007920(A055672(n))]`
-/

namespace A172458.P4437091780592000119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172458.P4437091780592000119

namespace A172458

/-- `eq[A002126(2*n+1), A007920(A055672(n))]` -/
def P4437091780592000119.Spec : Prop :=
  ∀ n, (P4437091780592000119.a n : ℤ) = A172458 (n + 1)

end A172458

/-! ## A172458.P5452554103303152393

`eq[A002126(2*n+1), A020639(A002126(2*n))]`
-/

namespace A172458.P5452554103303152393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002126 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172458.P5452554103303152393

namespace A172458

/-- `eq[A002126(2*n+1), A020639(A002126(2*n))]` -/
def P5452554103303152393.Spec : Prop :=
  ∀ n, (P5452554103303152393.a n : ℤ) = A172458 (n + 1)

end A172458

/-!
# A172460: Partial sums of economical numbers A046759.

The programs for A172460, there is no canonical definition to state claims against.
-/

/-! ## A172460.P15621524088793257558

`∑[A046759(n+1)]`
-/

namespace A172460.P15621524088793257558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P15621524088793257558

/-! ## A172460.P7141800040726210884

`∑[record[A046759(A152271(n))]]`
-/

namespace A172460.P7141800040726210884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P7141800040726210884

/-! ## A172460.P10106293238960488221

`∑[record[A046759(A126759(n))]]`
-/

namespace A172460.P10106293238960488221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P10106293238960488221

/-! ## A172460.P9765357293688287313

`∑[record[A046759(A117910(n))]]`
-/

namespace A172460.P9765357293688287313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P9765357293688287313

/-! ## A172460.P9464797600239576513

`∑[record[A046759(A065648(n))]]`
-/

namespace A172460.P9464797600239576513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P9464797600239576513

/-! ## A172460.P15079815003186041622

`∑[record[A046759(A020986(n))]]`
-/

namespace A172460.P15079815003186041622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P15079815003186041622

/-! ## A172460.P6716969570502261861

`∑[record[A046759(A028920(n))]]`
-/

namespace A172460.P6716969570502261861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P6716969570502261861

/-! ## A172460.P17405684534959684329

`∑[record[A046759(A033930(n))]]`
-/

namespace A172460.P17405684534959684329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172460.P17405684534959684329

/-!
# A172461: Primes p such that 2*p-1 and 2^p-1 are both primes.

The programs for A172461, there is no canonical definition to state claims against.
-/

/-! ## A172461.P7803151030824847421

`∩[A000043(n+1), A005382(n+1)]`
-/

namespace A172461.P7803151030824847421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172461.P7803151030824847421

/-! ## A172461.P7945504885090527262

`∩[A000043(n+1), A174568(n+1)]`
-/

namespace A172461.P7945504885090527262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172461.P7945504885090527262

/-! ## A172461.P16022561334635416913

`∩[A000043(n+1), A265394(n+1)]`
-/

namespace A172461.P16022561334635416913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172461.P16022561334635416913

/-! ## A172461.P18054070038262752665

`∩[A005382(n+1), A285929(n+1)]`
-/

namespace A172461.P18054070038262752665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172461.P18054070038262752665

/-! ## A172461.P7898398214570749955

`∩[A174568(n+1), A285929(n+1)]`
-/

namespace A172461.P7898398214570749955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172461.P7898398214570749955

/-!
# A172462: Numbers k such that 2k-3, 2k-1, 2k+1 and 2k+3 are composite.

The programs for A172462, there is no canonical definition to state claims against.
-/

/-! ## A172462.P8296371486436484337

`lt[4, A049847(n+2)]`
-/

namespace A172462.P8296371486436484337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049847 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172462.P8296371486436484337

/-! ## A172462.P2087777871932458415

`lt[3, A051699(2*n)]`
-/

namespace A172462.P2087777871932458415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172462.P2087777871932458415

/-! ## A172462.P15210185999982076170

`lt[3, A051700(2*n)]`
-/

namespace A172462.P15210185999982076170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172462.P15210185999982076170

/-! ## A172462.P7521002244609798201

`lt[7, A049653(n+2)]`
-/

namespace A172462.P7521002244609798201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172462.P7521002244609798201

/-! ## A172462.P8192526746229510220

`lt[8, A175851(2*n+3)]`
-/

namespace A172462.P8192526746229510220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172462.P8192526746229510220

/-! ## A172462.P3639528022195257147

`lt[9, A049711(2*n+5)]`
-/

namespace A172462.P3639528022195257147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172462.P3639528022195257147

/-! ## A172462.P13289692908044897686

`eq[9, 9%A049613(n+3)]`
-/

namespace A172462.P13289692908044897686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A049613 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172462.P13289692908044897686

/-! ## A172462.P4961078006914616648

`record[A032742(A167776(n+3))]`
-/

namespace A172462.P4961078006914616648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A167776 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172462.P4961078006914616648

/-! ## A172462.P17287667653915659254

`eq[2, A055642(A051699(2*n)²)]`
-/

namespace A172462.P17287667653915659254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A051699 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172462.P17287667653915659254

/-! ## A172462.P8578571330454240662

`eq[3, A001221(A056240(2*n+3))]`
-/

namespace A172462.P8578571330454240662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056240 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172462.P8578571330454240662

/-!
# A172463: Partial sums of A006567.

The programs for A172463, there is no canonical definition to state claims against.
-/

/-! ## A172463.P8581781967072932541

`∑[A006567(n+1)]`
-/

namespace A172463.P8581781967072932541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P8581781967072932541

/-! ## A172463.P15662765475192124297

`∑[record[A006567(A291766(n))]]`
-/

namespace A172463.P15662765475192124297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P15662765475192124297

/-! ## A172463.P2606306168041926351

`∑[record[A006567(A324346(n))]]`
-/

namespace A172463.P2606306168041926351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P2606306168041926351

/-! ## A172463.P15906022054548444012

`∑[record[A006567(A263131(n))]]`
-/

namespace A172463.P15906022054548444012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P15906022054548444012

/-! ## A172463.P9274556313876440354

`∑[A000040(A156793(n+1))]`
-/

namespace A172463.P9274556313876440354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P9274556313876440354

/-! ## A172463.P13426150022358750461

`∑[p?[A068893(n+1)]]`
-/

namespace A172463.P13426150022358750461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P13426150022358750461

/-! ## A172463.P3793593240003243562

`∑[p?[A109019(n+1)]]`
-/

namespace A172463.P3793593240003243562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P3793593240003243562

/-! ## A172463.P11878098458594836044

`∑[p?[A350867(n+1)]]`
-/

namespace A172463.P11878098458594836044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P11878098458594836044

/-! ## A172463.P16130343987794287663

`∑[A014963(A006567(-xor(n, -1)))]`
-/

namespace A172463.P16130343987794287663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006567 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172463.P16130343987794287663

/-!
# A172466: Numbers n such that sigma(sigma(phi(n))) = sigma(sigma(n)).

The programs for A172466, there is no canonical definition to state claims against.
-/

/-! ## A172466.P15026245715791973750

`eq[A051027(n+1), A163369(n+1)]+1`
-/

namespace A172466.P15026245715791973750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A172466.P15026245715791973750

/-!
# A172467: T(n,k) = number of summands in the partitions of n into k parts; a triangular array.

The programs for A172467, there is no canonical definition to state claims against.
-/

/-! ## A172467.P7515290660271407209

`A245842(n+1)+A245840(n+1)`
-/

namespace A172467.P7515290660271407209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (n + 1) + A245840 (n + 1)

end

end A172467.P7515290660271407209

/-! ## A172467.P17410603556550895315

`A002260(n+1)*A008284(n+1)`
-/

namespace A172467.P17410603556550895315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008284 (n + 1)

end

end A172467.P17410603556550895315

/-! ## A172467.P11938491071156895183

`(A002262(n)+1)*A008284(n+1)`
-/

namespace A172467.P11938491071156895183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008284 (n + 1)

end

end A172467.P11938491071156895183

/-! ## A172467.P2994694127519605131

`(1-A057944(n)+n)*A008284(n+1)`
-/

namespace A172467.P2994694127519605131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A008284 (n + 1)

end

end A172467.P2994694127519605131

/-! ## A172467.P7355435902820109885

`floor(A127777(n+1)/(n+1))*A008284(n+1)`
-/

namespace A172467.P7355435902820109885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127777 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ * A008284 (n + 1)

end

end A172467.P7355435902820109885

/-! ## A172467.P11504486056483947182

`A002260(n+1)*A058398(A278818(n))`
-/

namespace A172467.P11504486056483947182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A058398 (A278818 n).toNat

end

end A172467.P11504486056483947182

/-! ## A172467.P1183060173475596536

`A002260(n+1)*A145574(A056537(n+1)+1)`
-/

namespace A172467.P1183060173475596536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A145574 (A056537 (n + 1) + 1).toNat

end

end A172467.P1183060173475596536

/-! ## A172467.P7126386634472315504

`A008284(n+1)*A260429(A255547(n+1))`
-/

namespace A172467.P7126386634472315504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) * A260429 (A255547 (n + 1)).toNat

end

end A172467.P7126386634472315504

/-! ## A172467.P1910552024673741550

`A008284(n+1)*A036043(∑[A008284(n+1)])`
-/

namespace A172467.P1910552024673741550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) * A036043 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172467.P1910552024673741550

/-! ## A172467.P11112649792500187278

`(A001222(A059268(n))+1)*A008284(n+1)`
-/

namespace A172467.P11112649792500187278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A059268 n).toNat + 1) * A008284 (n + 1)

end

end A172467.P11112649792500187278

/-!
# A172469: Primes congruent to +/ -1 or +/ -7 modulo 25.

The programs for A172469, the canonical program `A172469.P4342047015468027813` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172469 has offset 1).

The definition of A172469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172469.P4342047015468027813

`p?[A376506(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172469

/-- `p?[A376506(n+1)]` -/
def P4342047015468027813.Spec : Prop :=
  ∀ n, P4342047015468027813.a n = A172469 (n + 1)

theorem P4342047015468027813.correct : P4342047015468027813.Spec := by
  intro n
  simp only [A172469, Nat.add_sub_cancel]

end A172469

/-! ## A172469.P5319961491918187741

`∩[A261123(n+1), A376506(n+1)]`
-/

namespace A172469.P5319961491918187741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P5319961491918187741

namespace A172469

/-- `∩[A261123(n+1), A376506(n+1)]` -/
def P5319961491918187741.Spec : Prop :=
  ∀ n, (P5319961491918187741.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P5557832892134017272

`∩[A004139(n+1), A376506(n+1)]`
-/

namespace A172469.P5557832892134017272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P5557832892134017272

namespace A172469

/-- `∩[A004139(n+1), A376506(n+1)]` -/
def P5557832892134017272.Spec : Prop :=
  ∀ n, (P5557832892134017272.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P5554439344307634536

`∩[A065091(n+1), A376506(n+1)]`
-/

namespace A172469.P5554439344307634536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P5554439344307634536

namespace A172469

/-- `∩[A065091(n+1), A376506(n+1)]` -/
def P5554439344307634536.Spec : Prop :=
  ∀ n, (P5554439344307634536.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P13791270769695390349

`∩[A108719(n+1), A376506(n+1)]`
-/

namespace A172469.P13791270769695390349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P13791270769695390349

namespace A172469

/-- `∩[A108719(n+1), A376506(n+1)]` -/
def P13791270769695390349.Spec : Prop :=
  ∀ n, (P13791270769695390349.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P3610257718291977443

`∩[A197636(n+1), A376506(n+1)]`
-/

namespace A172469.P3610257718291977443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P3610257718291977443

namespace A172469

/-- `∩[A197636(n+1), A376506(n+1)]` -/
def P3610257718291977443.Spec : Prop :=
  ∀ n, (P3610257718291977443.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P2904845315199062886

`∩[A215848(n+1), A376506(n+1)]`
-/

namespace A172469.P2904845315199062886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P2904845315199062886

namespace A172469

/-- `∩[A215848(n+1), A376506(n+1)]` -/
def P2904845315199062886.Spec : Prop :=
  ∀ n, (P2904845315199062886.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P6126972424273481110

`∩[A053813(n+1), A376506(n+1)]`
-/

namespace A172469.P6126972424273481110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P6126972424273481110

namespace A172469

/-- `∩[A053813(n+1), A376506(n+1)]` -/
def P6126972424273481110.Spec : Prop :=
  ∀ n, (P6126972424273481110.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P15639545007040256847

`∩[A093515(n+1), A376506(n+1)]`
-/

namespace A172469.P15639545007040256847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P15639545007040256847

namespace A172469

/-- `∩[A093515(n+1), A376506(n+1)]` -/
def P15639545007040256847.Spec : Prop :=
  ∀ n, (P15639545007040256847.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P11530676756590624648

`∩[A161428(n+1), A376506(n+1)]`
-/

namespace A172469.P11530676756590624648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P11530676756590624648

namespace A172469

/-- `∩[A161428(n+1), A376506(n+1)]` -/
def P11530676756590624648.Spec : Prop :=
  ∀ n, (P11530676756590624648.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P8930359907099087852

`∩[A066542(n+1), A376506(n+1)]`
-/

namespace A172469.P8930359907099087852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P8930359907099087852

namespace A172469

/-- `∩[A066542(n+1), A376506(n+1)]` -/
def P8930359907099087852.Spec : Prop :=
  ∀ n, (P8930359907099087852.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P4651378848207281314

`∩[A301987(n+1), A376506(n+1)]`
-/

namespace A172469.P4651378848207281314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P4651378848207281314

namespace A172469

/-- `∩[A301987(n+1), A376506(n+1)]` -/
def P4651378848207281314.Spec : Prop :=
  ∀ n, (P4651378848207281314.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P16778249997168640236

`∩[A053577(n+1), A376506(n+1)]`
-/

namespace A172469.P16778249997168640236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P16778249997168640236

namespace A172469

/-- `∩[A053577(n+1), A376506(n+1)]` -/
def P16778249997168640236.Spec : Prop :=
  ∀ n, (P16778249997168640236.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P17638908704519407825

`∩[A066191(n+1), A376506(n+1)]`
-/

namespace A172469.P17638908704519407825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P17638908704519407825

namespace A172469

/-- `∩[A066191(n+1), A376506(n+1)]` -/
def P17638908704519407825.Spec : Prop :=
  ∀ n, (P17638908704519407825.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P7920479345007663277

`∩[A216495(n+1), A376506(n+1)]`
-/

namespace A172469.P7920479345007663277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P7920479345007663277

namespace A172469

/-- `∩[A216495(n+1), A376506(n+1)]` -/
def P7920479345007663277.Spec : Prop :=
  ∀ n, (P7920479345007663277.a n : ℤ) = A172469 (n + 1)

end A172469

/-! ## A172469.P10039186072374363461

`filter[A376506(n+1), A010051(#)]`
-/

namespace A172469.P10039186072374363461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172469.P10039186072374363461

namespace A172469

/-- `filter[A376506(n+1), A010051(#)]` -/
def P10039186072374363461.Spec : Prop :=
  ∀ n, P10039186072374363461.a n = A172469 (n + 1)

end A172469

/-! ## A172469.P10438793379723912363

`filter[A376506(n+1), A379969(#)]`
-/

namespace A172469.P10438793379723912363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A172469.P10438793379723912363

namespace A172469

/-- `filter[A376506(n+1), A379969(#)]` -/
def P10438793379723912363.Spec : Prop :=
  ∀ n, P10438793379723912363.a n = A172469 (n + 1)

end A172469

/-! ## A172469.P2628662855183877859

`filter[A376506(n+2), A365716(#)]`
-/

namespace A172469.P2628662855183877859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A172469.P2628662855183877859

namespace A172469

/-- `filter[A376506(n+2), A365716(#)]` -/
def P2628662855183877859.Spec : Prop :=
  ∀ n, P2628662855183877859.a n = A172469 (n + 1)

end A172469

/-! ## A172469.P6714545559892538801

`filter[A376506(n+2), A380467(#)]`
-/

namespace A172469.P6714545559892538801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A172469.P6714545559892538801

namespace A172469

/-- `filter[A376506(n+2), A380467(#)]` -/
def P6714545559892538801.Spec : Prop :=
  ∀ n, P6714545559892538801.a n = A172469 (n + 1)

end A172469

/-! ## A172469.P10901043573423943625

`∩[A174219(n+1), A376506(n+1)]`
-/

namespace A172469.P10901043573423943625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172469.P10901043573423943625

namespace A172469

/-- `∩[A174219(n+1), A376506(n+1)]` -/
def P10901043573423943625.Spec : Prop :=
  ∀ n, (P10901043573423943625.a n : ℤ) = A172469 (n + 1)

end A172469

/-!
# A172470: First differences of A172468.

The programs for A172470, there is no canonical definition to state claims against.
-/

/-! ## A172470.P8558684313702762555

`A172468(n+2)-A172468(n+1)`
-/

namespace A172470.P8558684313702762555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172468 (n + 2) - A172468 (n + 1)

end

end A172470.P8558684313702762555

/-! ## A172470.P6855520722968776460

`Δ[A172468(n+1)]`
-/

namespace A172470.P6855520722968776460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172470.P6855520722968776460

/-! ## A172470.P4629900521594966298

`A172468(A028310(n+2))%A172468(n+1)`
-/

namespace A172470.P4629900521594966298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172468 (A028310 (n + 2)).toNat) (A172468 (n + 1))

end

end A172470.P4629900521594966298

/-! ## A172470.P2916540362105672817

`A172468(A065033(2*n+3))%A172468(n+1)`
-/

namespace A172470.P2916540362105672817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172468 (A065033 (2 * n + 3)).toNat) (A172468 (n + 1))

end

end A172470.P2916540362105672817

/-!
# A172471: a(n) = floor(sqrt(2*n)).

The programs for A172471, the canonical program `A172471.P3873972067505195853` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172471 has offset 0).

The definition of A172471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*n))` (program `A172471.P3873972067505195853`, by `A172471.P3873972067505195853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172471.P3873972067505195853

`floor(sqrt(2*n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172471

/-- `floor(sqrt(2*n))` -/
def P3873972067505195853.Spec : Prop :=
  ∀ n, (P3873972067505195853.a n : ℤ) = A172471 n

theorem P3873972067505195853.correct : P3873972067505195853.Spec := by
  intro n
  simp only [A172471]

end A172471

/-! ## A172471.P16599092228121487968

`A000196(2*n)`
-/

namespace A172471.P16599092228121487968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n)

end

end A172471.P16599092228121487968

namespace A172471

/-- `A000196(2*n)` -/
def P16599092228121487968.Spec : Prop :=
  ∀ n, P16599092228121487968.a n = A172471 n

end A172471

/-! ## A172471.P15345347132580345898

`∑[char[∑[or(1, n)]]]`
-/

namespace A172471.P15345347132580345898
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172471.P15345347132580345898

namespace A172471

/-- `∑[char[∑[or(1, n)]]]` -/
def P15345347132580345898.Spec : Prop :=
  ∀ n, (P15345347132580345898.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P10742948885580010976

`ceil(record[sqrt(xor(1, n))])-1`
-/

namespace A172471.P10742948885580010976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - 1

end

end A172471.P10742948885580010976

namespace A172471

/-- `ceil(record[sqrt(xor(1, n))])-1` -/
def P10742948885580010976.Spec : Prop :=
  ∀ n, P10742948885580010976.a n = A172471 n

end A172471

/-! ## A172471.P14110282437730968331

`ceil(sqrt(xor(1, 2*n)))-1`
-/

namespace A172471.P14110282437730968331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.xor 1 (2 * n) : ℝ)⌉ - 1

end

end A172471.P14110282437730968331

namespace A172471

/-- `ceil(sqrt(xor(1, 2*n)))-1` -/
def P14110282437730968331.Spec : Prop :=
  ∀ n, P14110282437730968331.a n = A172471 n

end A172471

/-! ## A172471.P6866955898590820491

`ceil(sqrt(or(1, n)+n))-1`
-/

namespace A172471.P6866955898590820491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 1 n + n : ℝ)⌉ - 1

end

end A172471.P6866955898590820491

namespace A172471

/-- `ceil(sqrt(or(1, n)+n))-1` -/
def P6866955898590820491.Spec : Prop :=
  ∀ n, P6866955898590820491.a n = A172471 n

end A172471

/-! ## A172471.P17741171964000135777

`comp[∑[or(1, n)]+n]-n`
-/

namespace A172471.P17741171964000135777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A172471.P17741171964000135777

namespace A172471

/-- `comp[∑[or(1, n)]+n]-n` -/
def P17741171964000135777.Spec : Prop :=
  ∀ n, P17741171964000135777.a n = A172471 n

end A172471

/-! ## A172471.P3443800059637657790

`round(sqrt(∪[2*n+1, n²]))`
-/

namespace A172471.P3443800059637657790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℝ))

end

end A172471.P3443800059637657790

namespace A172471

/-- `round(sqrt(∪[2*n+1, n²]))` -/
def P3443800059637657790.Spec : Prop :=
  ∀ n, P3443800059637657790.a n = A172471 n

end A172471

/-! ## A172471.P2364359218552115568

`∑[char[∑[(n+1)%2+n]]]`
-/

namespace A172471.P2364359218552115568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172471.P2364359218552115568

namespace A172471

/-- `∑[char[∑[(n+1)%2+n]]]` -/
def P2364359218552115568.Spec : Prop :=
  ∀ n, (P2364359218552115568.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P779805177835580573

`∑[char[∑[gcd(2, n)+n-1]]]`
-/

namespace A172471.P779805177835580573
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172471.P779805177835580573

namespace A172471

/-- `∑[char[∑[gcd(2, n)+n-1]]]` -/
def P779805177835580573.Spec : Prop :=
  ∀ n, (P779805177835580573.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P8492875143867813542

`∑[char[∑[and(1, n+1)+n]]]`
-/

namespace A172471.P8492875143867813542
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172471.P8492875143867813542

namespace A172471

/-- `∑[char[∑[and(1, n+1)+n]]]` -/
def P8492875143867813542.Spec : Prop :=
  ∀ n, (P8492875143867813542.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P13892243116642141916

`round(log(cosh(ceil(sqrt(2*n+1)))))`
-/

namespace A172471.P13892243116642141916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (⌈Real.sqrt (2 * n + 1 : ℝ)⌉ : ℝ)))

end

end A172471.P13892243116642141916

namespace A172471

/-- `round(log(cosh(ceil(sqrt(2*n+1)))))` -/
def P13892243116642141916.Spec : Prop :=
  ∀ n, P13892243116642141916.a n = A172471 n

end A172471

/-! ## A172471.P970757866949075584

`round(log(sinh(ceil(sqrt(2*n+1)))))`
-/

namespace A172471.P970757866949075584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sinh (⌈Real.sqrt (2 * n + 1 : ℝ)⌉ : ℝ)))

end

end A172471.P970757866949075584

namespace A172471

/-- `round(log(sinh(ceil(sqrt(2*n+1)))))` -/
def P970757866949075584.Spec : Prop :=
  ∀ n, P970757866949075584.a n = A172471 n

end A172471

/-! ## A172471.P10779148439099400398

`∑[char[∑[a(n-2)+2]]]` with `a(0)=1, a(1)=1`
-/

namespace A172471.P10779148439099400398
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 2) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172471.P10779148439099400398

namespace A172471

/-- `∑[char[∑[a(n-2)+2]]]` -/
def P10779148439099400398.Spec : Prop :=
  ∀ n, (P10779148439099400398.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P6624235424447788569

`round(sqrt(2*n-a(n-1)))` with `a(0)=0`
-/

namespace A172471.P6624235424447788569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n : ℤ) - a (n - 1) : ℝ))

end

end A172471.P6624235424447788569

namespace A172471

/-- `round(sqrt(2*n-a(n-1)))` -/
def P6624235424447788569.Spec : Prop :=
  ∀ n, P6624235424447788569.a n = A172471 n

end A172471

/-! ## A172471.P16367790397954334392

`a(n-(a(n-1)+a(n-2)))+2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A172471.P16367790397954334392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - (a (n - 1) + a (n - 2))) + 2

end

end A172471.P16367790397954334392

namespace A172471

/-- `a(n-(a(n-1)+a(n-2)))+2` -/
def P16367790397954334392.Spec : Prop :=
  ∀ n, (P16367790397954334392.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P7223820989406172293

`A101776(n)-1`
-/

namespace A172471.P7223820989406172293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - 1

end

end A172471.P7223820989406172293

namespace A172471

/-- `A101776(n)-1` -/
def P7223820989406172293.Spec : Prop :=
  ∀ n, P7223820989406172293.a n = A172471 n

end A172471

/-! ## A172471.P487784952318723012

`round(sqrt(A133280(n)))`
-/

namespace A172471.P487784952318723012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133280 n : ℝ))

end

end A172471.P487784952318723012

namespace A172471

/-- `round(sqrt(A133280(n)))` -/
def P487784952318723012.Spec : Prop :=
  ∀ n, P487784952318723012.a n = A172471 n

end A172471

/-! ## A172471.P12879790754617683557

`∑[char[∑[A109613(n)]]]`
-/

namespace A172471.P12879790754617683557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172471.P12879790754617683557

namespace A172471

/-- `∑[char[∑[A109613(n)]]]` -/
def P12879790754617683557.Spec : Prop :=
  ∀ n, (P12879790754617683557.a n : ℤ) = A172471 n

end A172471

/-! ## A172471.P6445591779080236949

`n-A309945(n+1)`
-/

namespace A172471.P6445591779080236949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A309945 (n + 1)

end

end A172471.P6445591779080236949

namespace A172471

/-- `n-A309945(n+1)` -/
def P6445591779080236949.Spec : Prop :=
  ∀ n, P6445591779080236949.a n = A172471 n

end A172471

/-!
# A172472: a(n) = floor(sqrt(2*n^3)).

The programs for A172472, the canonical program `A172472.P16180428490216617338` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172472 has offset 0).

The definition of A172472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*n^3))` (program `A172472.P16180428490216617338`, by `A172472.P16180428490216617338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172472.P16180428490216617338

`floor(sqrt(2*n^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172472

/-- `floor(sqrt(2*n^3))` -/
def P16180428490216617338.Spec : Prop :=
  ∀ n, (P16180428490216617338.a n : ℤ) = A172472 n

theorem P16180428490216617338.correct : P16180428490216617338.Spec := by
  intro n
  simp only [A172472]

end A172472

/-! ## A172472.P15815384576094916806

`A000196(2*n^3)`
-/

namespace A172472.P15815384576094916806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n ^ 3)

end

end A172472.P15815384576094916806

namespace A172472

/-- `A000196(2*n^3)` -/
def P15815384576094916806.Spec : Prop :=
  ∀ n, P15815384576094916806.a n = A172472 n

end A172472

/-! ## A172472.P14391153865348606648

`ceil(sqrt(2*A000578(n)+1))-1`
-/

namespace A172472.P14391153865348606648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A000578 n + 1 : ℝ)⌉ - 1

end

end A172472.P14391153865348606648

namespace A172472

/-- `ceil(sqrt(2*A000578(n)+1))-1` -/
def P14391153865348606648.Spec : Prop :=
  ∀ n, P14391153865348606648.a n = A172472 n

end A172472

/-! ## A172472.P10851009677888806257

`floor(sqrt(A033562(n)))%C(n+8, 8)`
-/

namespace A172472.P10851009677888806257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A033562 n)) (Nat.choose (n + 8) 8 : ℤ)

end

end A172472.P10851009677888806257

namespace A172472

/-- `floor(sqrt(A033562(n)))%C(n+8, 8)` -/
def P10851009677888806257.Spec : Prop :=
  ∀ n, P10851009677888806257.a n = A172472 n

end A172472

/-! ## A172472.P4278586522660718374

`floor(sqrt(A033562(n)))%A033562(n)`
-/

namespace A172472.P4278586522660718374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A033562 n)) (A033562 n)

end

end A172472.P4278586522660718374

namespace A172472

/-- `floor(sqrt(A033562(n)))%A033562(n)` -/
def P4278586522660718374.Spec : Prop :=
  ∀ n, P4278586522660718374.a n = A172472 n

end A172472

/-! ## A172472.P1904553188196216040

`floor(sqrt(A000578(n)+n^3))%A006972(n+1)`
-/

namespace A172472.P1904553188196216040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000578 n + (n ^ 3 : ℤ))) (A006972 (n + 1))

end

end A172472.P1904553188196216040

namespace A172472

/-- `floor(sqrt(A000578(n)+n^3))%A006972(n+1)` -/
def P1904553188196216040.Spec : Prop :=
  ∀ n, P1904553188196216040.a n = A172472 n

end A172472

/-! ## A172472.P16425068253966628243

`record[floor(sqrt(n)*A025480(n))]`
-/

namespace A172472.P16425068253966628243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) * (A025480 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172472.P16425068253966628243

namespace A172472

/-- `record[floor(sqrt(n)*A025480(n))]` -/
def P16425068253966628243.Spec : Prop :=
  ∀ n, P16425068253966628243.a n = A172472 n

end A172472

/-! ## A172472.P8883461098924077465

`record[floor(sqrt(n)*A142150(n))]`
-/

namespace A172472.P8883461098924077465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) * (A142150 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172472.P8883461098924077465

namespace A172472

/-- `record[floor(sqrt(n)*A142150(n))]` -/
def P8883461098924077465.Spec : Prop :=
  ∀ n, P8883461098924077465.a n = A172472 n

end A172472

/-! ## A172472.P9795288623887473952

`record[floor(sqrt(n*A115881(n+1)))]`
-/

namespace A172472.P9795288623887473952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * A115881 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172472.P9795288623887473952

namespace A172472

/-- `record[floor(sqrt(n*A115881(n+1)))]` -/
def P9795288623887473952.Spec : Prop :=
  ∀ n, P9795288623887473952.a n = A172472 n

end A172472

/-! ## A172472.P14153994065478487468

`A004526(A000093(2*n))`
-/

namespace A172472.P14153994065478487468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000093 (2 * n)).toNat

end

end A172472.P14153994065478487468

namespace A172472

/-- `A004526(A000093(2*n))` -/
def P14153994065478487468.Spec : Prop :=
  ∀ n, P14153994065478487468.a n = A172472 n

end A172472

/-! ## A172472.P17195827490022978005

`A004526(floor(sqrt(A016743(n))))`
-/

namespace A172472.P17195827490022978005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A016743 n)).toNat

end

end A172472.P17195827490022978005

namespace A172472

/-- `A004526(floor(sqrt(A016743(n))))` -/
def P17195827490022978005.Spec : Prop :=
  ∀ n, P17195827490022978005.a n = A172472 n

end A172472

/-! ## A172472.P16603236658171411186

`A004526(sqrt(A065733(2*n)))`
-/

namespace A172472.P16603236658171411186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A065733 (2 * n) : ℝ))).toNat

end

end A172472.P16603236658171411186

namespace A172472

/-- `A004526(sqrt(A065733(2*n)))` -/
def P16603236658171411186.Spec : Prop :=
  ∀ n, P16603236658171411186.a n = A172472 n

end A172472

/-! ## A172472.P1505768720798148807

`A004526(floor(sqrt(A000578(2*n))))`
-/

namespace A172472.P1505768720798148807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A000578 (2 * n))).toNat

end

end A172472.P1505768720798148807

namespace A172472

/-- `A004526(floor(sqrt(A000578(2*n))))` -/
def P1505768720798148807.Spec : Prop :=
  ∀ n, P1505768720798148807.a n = A172472 n

end A172472

/-! ## A172472.P15274358854903885152

`record[lcm(n%2, A004526(A000093(n+1)))]`
-/

namespace A172472.P15274358854903885152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A004526 (A000093 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172472.P15274358854903885152

namespace A172472

/-- `record[lcm(n%2, A004526(A000093(n+1)))]` -/
def P15274358854903885152.Spec : Prop :=
  ∀ n, (P15274358854903885152.a n : ℤ) = A172472 n

end A172472

/-! ## A172472.P1906787048063104485

`record[floor(sqrt(2*A198063(n)))]`
-/

namespace A172472.P1906787048063104485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A198063 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172472.P1906787048063104485

namespace A172472

/-- `record[floor(sqrt(2*A198063(n)))]` -/
def P1906787048063104485.Spec : Prop :=
  ∀ n, P1906787048063104485.a n = A172472 n

end A172472

/-!
# A172473: a(n) = floor(sqrt(2*n^5)).

The programs for A172473, the canonical program `A172473.P1591608157022076758` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172473 has offset 0).

The definition of A172473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*n^5))` (program `A172473.P1591608157022076758`, by `A172473.P1591608157022076758.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172473.P1591608157022076758

`floor(sqrt(2*n^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172473

/-- `floor(sqrt(2*n^5))` -/
def P1591608157022076758.Spec : Prop :=
  ∀ n, (P1591608157022076758.a n : ℤ) = A172473 n

theorem P1591608157022076758.correct : P1591608157022076758.Spec := by
  intro n
  simp only [A172473]

end A172473

/-! ## A172473.P3436408659839187895

`ceil(sqrt(2*A000584(n)+1))-1`
-/

namespace A172473.P3436408659839187895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A000584 n + 1 : ℝ)⌉ - 1

end

end A172473.P3436408659839187895

namespace A172473

/-- `ceil(sqrt(2*A000584(n)+1))-1` -/
def P3436408659839187895.Spec : Prop :=
  ∀ n, P3436408659839187895.a n = A172473 n

end A172473

/-! ## A172473.P8818521019626120250

`floor(n²*sqrt(A005843(n)))%A100504(n)`
-/

namespace A172473.P8818521019626120250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n ^ 2 : ℝ) * Real.sqrt (A005843 n : ℝ)⌋ (A100504 n)

end

end A172473.P8818521019626120250

namespace A172473

/-- `floor(n²*sqrt(A005843(n)))%A100504(n)` -/
def P8818521019626120250.Spec : Prop :=
  ∀ n, P8818521019626120250.a n = A172473 n

end A172473

/-! ## A172473.P6537046026344030960

`floor(n²*sqrt(2*n))%A055796(n+1)`
-/

namespace A172473.P6537046026344030960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n ^ 2 : ℝ) * Real.sqrt (2 * n : ℝ)⌋ (A055796 (n + 1))

end

end A172473.P6537046026344030960

namespace A172473

/-- `floor(n²*sqrt(2*n))%A055796(n+1)` -/
def P6537046026344030960.Spec : Prop :=
  ∀ n, P6537046026344030960.a n = A172473 n

end A172473

/-! ## A172473.P10544719454097746050

`record[floor(sqrt(n)*A115881(n+1))]`
-/

namespace A172473.P10544719454097746050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) * (A115881 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172473.P10544719454097746050

namespace A172473

/-- `record[floor(sqrt(n)*A115881(n+1))]` -/
def P10544719454097746050.Spec : Prop :=
  ∀ n, P10544719454097746050.a n = A172473 n

end A172473

/-! ## A172473.P7222205507451362742

`floor(n²*sqrt(2*n))%A081568(n)`
-/

namespace A172473.P7222205507451362742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n ^ 2 : ℝ) * Real.sqrt (2 * n : ℝ)⌋ (A081568 n)

end

end A172473.P7222205507451362742

namespace A172473

/-- `floor(n²*sqrt(2*n))%A081568(n)` -/
def P7222205507451362742.Spec : Prop :=
  ∀ n, P7222205507451362742.a n = A172473 n

end A172473

/-!
# A172474: a(n) = floor(n*sqrt(2)/4).

The programs for A172474, the canonical program `A172474.P12160927268933061603` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172474 has offset 0).

The definition of A172474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*sqrt(2)/4)` (program `A172474.P12160927268933061603`, by `A172474.P12160927268933061603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172474.P12160927268933061603

`floor(n*sqrt(2)/4)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172474

/-- `floor(n*sqrt(2)/4)` -/
def P12160927268933061603.Spec : Prop :=
  ∀ n, P12160927268933061603.a n = A172474 n

theorem P12160927268933061603.correct : P12160927268933061603.Spec := by
  intro n
  simp only [A172474]

end A172474

/-! ## A172474.P4933561161041899093

`∑[char[A198263(n+1)]]`
-/

namespace A172474.P4933561161041899093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172474.P4933561161041899093

namespace A172474

/-- `∑[char[A198263(n+1)]]` -/
def P4933561161041899093.Spec : Prop :=
  ∀ n, (P4933561161041899093.a n : ℤ) = A172474 n

end A172474

/-! ## A172474.P3043799878590450543

`∑[char[A198263(n)]]-1`
-/

namespace A172474.P3043799878590450543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A172474.P3043799878590450543

namespace A172474

/-- `∑[char[A198263(n)]]-1` -/
def P3043799878590450543.Spec : Prop :=
  ∀ n, P3043799878590450543.a n = A172474 n

end A172474

/-! ## A172474.P17372110065535660177

`∑[char[A022842(n+1)+1]]`
-/

namespace A172474.P17372110065535660177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172474.P17372110065535660177

namespace A172474

/-- `∑[char[A022842(n+1)+1]]` -/
def P17372110065535660177.Spec : Prop :=
  ∀ n, (P17372110065535660177.a n : ℤ) = A172474 n

end A172474

/-! ## A172474.P12851047643351667540

`∑[char[A087057(2*(n+1))]]`
-/

namespace A172474.P12851047643351667540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172474.P12851047643351667540

namespace A172474

/-- `∑[char[A087057(2*(n+1))]]` -/
def P12851047643351667540.Spec : Prop :=
  ∀ n, (P12851047643351667540.a n : ℤ) = A172474 n

end A172474

/-! ## A172474.P17830934099545347750

`comp[A137803(2*(n+1))]-n`
-/

namespace A172474.P17830934099545347750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A172474.P17830934099545347750

namespace A172474

/-- `comp[A137803(2*(n+1))]-n` -/
def P17830934099545347750.Spec : Prop :=
  ∀ n, P17830934099545347750.a n = A172474 n

end A172474

/-! ## A172474.P569853666031997697

`A004526(floor(sqrt(∑[n-n%2])))`
-/

namespace A172474.P569853666031997697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A172474.P569853666031997697

namespace A172474

/-- `A004526(floor(sqrt(∑[n-n%2])))` -/
def P569853666031997697.Spec : Prop :=
  ∀ n, P569853666031997697.a n = A172474 n

end A172474

/-! ## A172474.P5723055023039762623

`A004526(A049472(n))`
-/

namespace A172474.P5723055023039762623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049472 n).toNat

end

end A172474.P5723055023039762623

namespace A172474

/-- `A004526(A049472(n))` -/
def P5723055023039762623.Spec : Prop :=
  ∀ n, P5723055023039762623.a n = A172474 n

end A172474

/-! ## A172474.P10961282739855994794

`A065033(A049474(n))-1`
-/

namespace A172474.P10961282739855994794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A049474 n).toNat - 1

end

end A172474.P10961282739855994794

namespace A172474

/-- `A065033(A049474(n))-1` -/
def P10961282739855994794.Spec : Prop :=
  ∀ n, P10961282739855994794.a n = A172474 n

end A172474

/-! ## A172474.P10089629875934645908

`A140106(A049472(n)+2)`
-/

namespace A172474.P10089629875934645908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A049472 n + 2).toNat

end

end A172474.P10089629875934645908

namespace A172474

/-- `A140106(A049472(n)+2)` -/
def P10089629875934645908.Spec : Prop :=
  ∀ n, P10089629875934645908.a n = A172474 n

end A172474

/-! ## A172474.P18446068429290071886

`A004526(floor(sqrt(A000982(n))))`
-/

namespace A172474.P18446068429290071886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A000982 n)).toNat

end

end A172474.P18446068429290071886

namespace A172474

/-- `A004526(floor(sqrt(A000982(n))))` -/
def P18446068429290071886.Spec : Prop :=
  ∀ n, P18446068429290071886.a n = A172474 n

end A172474

/-! ## A172474.P1471198122627716308

`A004526(A049474(n)-A057427(n))`
-/

namespace A172474.P1471198122627716308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049474 n - A057427 n).toNat

end

end A172474.P1471198122627716308

namespace A172474

/-- `A004526(A049474(n)-A057427(n))` -/
def P1471198122627716308.Spec : Prop :=
  ∀ n, P1471198122627716308.a n = A172474 n

end A172474

/-! ## A172474.P11309268687797565126

`A002265(floor(n*sqrt(2)))`
-/

namespace A172474.P11309268687797565126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A172474.P11309268687797565126

namespace A172474

/-- `A002265(floor(n*sqrt(2)))` -/
def P11309268687797565126.Spec : Prop :=
  ∀ n, P11309268687797565126.a n = A172474 n

end A172474

/-! ## A172474.P6009738768999277658

`A008621(A001951(n))-1`
-/

namespace A172474.P6009738768999277658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001951 n).toNat - 1

end

end A172474.P6009738768999277658

namespace A172474

/-- `A008621(A001951(n))-1` -/
def P6009738768999277658.Spec : Prop :=
  ∀ n, P6009738768999277658.a n = A172474 n

end A172474

/-! ## A172474.P18038121931846234142

`A004526(A004526(A001951(n)))`
-/

namespace A172474.P18038121931846234142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A001951 n).toNat).toNat

end

end A172474.P18038121931846234142

namespace A172474

/-- `A004526(A004526(A001951(n)))` -/
def P18038121931846234142.Spec : Prop :=
  ∀ n, P18038121931846234142.a n = A172474 n

end A172474

/-! ## A172474.P13424140796156970634

`A152467(A091087(n))`
-/

namespace A172474.P13424140796156970634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A091087 n).toNat

end

end A172474.P13424140796156970634

namespace A172474

/-- `A152467(A091087(n))` -/
def P13424140796156970634.Spec : Prop :=
  ∀ n, P13424140796156970634.a n = A172474 n

end A172474

/-! ## A172474.P16515464114662052661

`A132292(A191405(n))`
-/

namespace A172474.P16515464114662052661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A191405 n).toNat

end

end A172474.P16515464114662052661

namespace A172474

/-- `A132292(A191405(n))` -/
def P16515464114662052661.Spec : Prop :=
  ∀ n, P16515464114662052661.a n = A172474 n

end A172474

/-! ## A172474.P3234251592117942301

`A000196(A130519(n+1))`
-/

namespace A172474.P3234251592117942301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A130519 (n + 1)).toNat

end

end A172474.P3234251592117942301

namespace A172474

/-- `A000196(A130519(n+1))` -/
def P3234251592117942301.Spec : Prop :=
  ∀ n, P3234251592117942301.a n = A172474 n

end A172474

/-! ## A172474.P3576237289444960043

`A000196(A002620(n)-A001971(n))`
-/

namespace A172474.P3576237289444960043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002620 n - A001971 n).toNat

end

end A172474.P3576237289444960043

namespace A172474

/-- `A000196(A002620(n)-A001971(n))` -/
def P3576237289444960043.Spec : Prop :=
  ∀ n, P3576237289444960043.a n = A172474 n

end A172474

/-! ## A172474.P9049996416860438544

`A000196(A033436(n)-A007590(n)/2)`
-/

namespace A172474.P9049996416860438544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A033436 n : ℚ) - (A007590 n : ℚ) / 2)).toNat

end

end A172474.P9049996416860438544

namespace A172474

/-- `A000196(A033436(n)-A007590(n)/2)` -/
def P9049996416860438544.Spec : Prop :=
  ∀ n, P9049996416860438544.a n = A172474 n

end A172474

/-!
# A172475: a(n) = floor(n*sqrt(3)/2).

The programs for A172475, the canonical program `A172475.P1801869792581245901` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172475 has offset 0).

The definition of A172475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*sqrt(3)/2)` (program `A172475.P1801869792581245901`, by `A172475.P1801869792581245901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172475.P1801869792581245901

`floor(n*sqrt(3)/2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172475

/-- `floor(n*sqrt(3)/2)` -/
def P1801869792581245901.Spec : Prop :=
  ∀ n, P1801869792581245901.a n = A172475 n

theorem P1801869792581245901.correct : P1801869792581245901.Spec := by
  intro n
  simp only [A172475]

end A172475

/-! ## A172475.P188460573520450942

`n-round(A195120(n)/2)`
-/

namespace A172475.P188460573520450942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((A195120 n : ℚ) / 2)

end

end A172475.P188460573520450942

namespace A172475

/-- `n-round(A195120(n)/2)` -/
def P188460573520450942.Spec : Prop :=
  ∀ n, P188460573520450942.a n = A172475 n

end A172475

/-! ## A172475.P14715707220038533417

`ceil((comp[A054406(n+1)]-1)/2)`
-/

namespace A172475.P14715707220038533417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1 : ℚ) / 2⌉

end

end A172475.P14715707220038533417

namespace A172475

/-- `ceil((comp[A054406(n+1)]-1)/2)` -/
def P14715707220038533417.Spec : Prop :=
  ∀ n, P14715707220038533417.a n = A172475 n

end A172475

/-! ## A172475.P13474241367086704970

`n-∑[char[A188069(2*n+1)]]`
-/

namespace A172475.P13474241367086704970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172475.P13474241367086704970

namespace A172475

/-- `n-∑[char[A188069(2*n+1)]]` -/
def P13474241367086704970.Spec : Prop :=
  ∀ n, P13474241367086704970.a n = A172475 n

end A172475

/-! ## A172475.P2568727436554852869

`round(A188069(n+1)/2)%(n+1)`
-/

namespace A172475.P2568727436554852869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A188069 (n + 1) : ℚ) / 2)) (n + 1 : ℤ)

end

end A172475.P2568727436554852869

namespace A172475

/-- `round(A188069(n+1)/2)%(n+1)` -/
def P2568727436554852869.Spec : Prop :=
  ∀ n, P2568727436554852869.a n = A172475 n

end A172475

/-! ## A172475.P13095222450940627299

`A171970(A028310(n))`
-/

namespace A172475.P13095222450940627299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A028310 n).toNat

end

end A172475.P13095222450940627299

namespace A172475

/-- `A171970(A028310(n))` -/
def P13095222450940627299.Spec : Prop :=
  ∀ n, P13095222450940627299.a n = A172475 n

end A172475

/-! ## A172475.P5307906099890459566

`A171970(A063524(n+1)+n)`
-/

namespace A172475.P5307906099890459566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A063524 (n + 1) + (n : ℤ)).toNat

end

end A172475.P5307906099890459566

namespace A172475

/-- `A171970(A063524(n+1)+n)` -/
def P5307906099890459566.Spec : Prop :=
  ∀ n, P5307906099890459566.a n = A172475 n

end A172475

/-! ## A172475.P17287600684225898930

`n-A004526(A195120(n)+1)`
-/

namespace A172475.P17287600684225898930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A195120 n + 1).toNat

end

end A172475.P17287600684225898930

namespace A172475

/-- `n-A004526(A195120(n)+1)` -/
def P17287600684225898930.Spec : Prop :=
  ∀ n, P17287600684225898930.a n = A172475 n

end A172475

/-! ## A172475.P5203103416033303186

`n+1-A008619(A195120(n)+1)`
-/

namespace A172475.P5203103416033303186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008619 (A195120 n + 1).toNat

end

end A172475.P5203103416033303186

namespace A172475

/-- `n+1-A008619(A195120(n)+1)` -/
def P5203103416033303186.Spec : Prop :=
  ∀ n, P5203103416033303186.a n = A172475 n

end A172475

/-! ## A172475.P15822828504704358375

`A004526(floor(n*sqrt(3)))`
-/

namespace A172475.P15822828504704358375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A172475.P15822828504704358375

namespace A172475

/-- `A004526(floor(n*sqrt(3)))` -/
def P15822828504704358375.Spec : Prop :=
  ∀ n, P15822828504704358375.a n = A172475 n

end A172475

/-! ## A172475.P9110881182143656560

`A065033(A198081(n))-1`
-/

namespace A172475.P9110881182143656560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A198081 n).toNat - 1

end

end A172475.P9110881182143656560

namespace A172475

/-- `A065033(A198081(n))-1` -/
def P9110881182143656560.Spec : Prop :=
  ∀ n, P9110881182143656560.a n = A172475 n

end A172475

/-! ## A172475.P15122695940234602589

`A327208(a(n-1)+n)+a(n-1)` with `a(0)=0`
-/

namespace A172475.P15122695940234602589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327208 (a (n - 1) + (n : ℤ)).toNat + a (n - 1)

end

end A172475.P15122695940234602589

namespace A172475

/-- `A327208(a(n-1)+n)+a(n-1)` -/
def P15122695940234602589.Spec : Prop :=
  ∀ n, P15122695940234602589.a n = A172475 n

end A172475

/-! ## A172475.P16123041647559779093

`A308358(2*n)`
-/

namespace A172475.P16123041647559779093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (2 * n)

end

end A172475.P16123041647559779093

namespace A172475

/-- `A308358(2*n)` -/
def P16123041647559779093.Spec : Prop :=
  ∀ n, P16123041647559779093.a n = A172475 n

end A172475

/-! ## A172475.P16204933280875570918

`A171970(A065033(2*n))`
-/

namespace A172475.P16204933280875570918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A065033 (2 * n)).toNat

end

end A172475.P16204933280875570918

namespace A172475

/-- `A171970(A065033(2*n))` -/
def P16204933280875570918.Spec : Prop :=
  ∀ n, P16204933280875570918.a n = A172475 n

end A172475

/-! ## A172475.P3785665391177232282

`A002265(2*floor(n*sqrt(3)))`
-/

namespace A172475.P3785665391177232282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

end

end A172475.P3785665391177232282

namespace A172475

/-- `A002265(2*floor(n*sqrt(3)))` -/
def P3785665391177232282.Spec : Prop :=
  ∀ n, P3785665391177232282.a n = A172475 n

end A172475

/-! ## A172475.P16470110838819673117

`A002265(2*comp[A054406(n+1)]+4)-1`
-/

namespace A172475.P16470110838819673117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4) - 1

end

end A172475.P16470110838819673117

namespace A172475

/-- `A002265(2*comp[A054406(n+1)]+4)-1` -/
def P16470110838819673117.Spec : Prop :=
  ∀ n, P16470110838819673117.a n = A172475 n

end A172475

/-! ## A172475.P16383706200665034326

`A140106(A080590(n+1))-n`
-/

namespace A172475.P16383706200665034326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A080590 (n + 1)).toNat - (n : ℤ)

end

end A172475.P16383706200665034326

namespace A172475

/-- `A140106(A080590(n+1))-n` -/
def P16383706200665034326.Spec : Prop :=
  ∀ n, P16383706200665034326.a n = A172475 n

end A172475

/-! ## A172475.P4015096611371603408

`A080513(A188069(n+1))-(n+2)`
-/

namespace A172475.P4015096611371603408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A188069 (n + 1)).toNat - (n + 2 : ℤ)

end

end A172475.P4015096611371603408

namespace A172475

/-- `A080513(A188069(n+1))-(n+2)` -/
def P4015096611371603408.Spec : Prop :=
  ∀ n, P4015096611371603408.a n = A172475 n

end A172475

/-! ## A172475.P13426375682395639700

`A172471(A033436(n))`
-/

namespace A172475.P13426375682395639700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A033436 n).toNat

end

end A172475.P13426375682395639700

namespace A172475

/-- `A172471(A033436(n))` -/
def P13426375682395639700.Spec : Prop :=
  ∀ n, P13426375682395639700.a n = A172475 n

end A172475

/-!
# A172476: a(n) = floor(n/sqrt(6)).

The programs for A172476, the canonical program `A172476.P6456394534622672845` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172476 has offset 0).

The definition of A172476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/sqrt(6))` (program `A172476.P6456394534622672845`, by `A172476.P6456394534622672845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172476.P6456394534622672845

`floor(n/sqrt(6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172476

/-- `floor(n/sqrt(6))` -/
def P6456394534622672845.Spec : Prop :=
  ∀ n, P6456394534622672845.a n = A172476 n

theorem P6456394534622672845.correct : P6456394534622672845.Spec := by
  intro n
  simp only [A172476]

end A172476

/-! ## A172476.P1680767497549787507

`floor(n/root(6, 2))%(n+1)`
-/

namespace A172476.P1680767497549787507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / (6 : ℝ) ^ (1 / (2 : ℝ))⌋ (n + 1 : ℤ)

end

end A172476.P1680767497549787507

namespace A172476

/-- `floor(n/root(6, 2))%(n+1)` -/
def P1680767497549787507.Spec : Prop :=
  ∀ n, P1680767497549787507.a n = A172476 n

end A172476

/-! ## A172476.P17265266475120930238

`∑[char[A198083(n+1)]]`
-/

namespace A172476.P17265266475120930238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172476.P17265266475120930238

namespace A172476

/-- `∑[char[A198083(n+1)]]` -/
def P17265266475120930238.Spec : Prop :=
  ∀ n, (P17265266475120930238.a n : ℤ) = A172476 n

end A172476

/-! ## A172476.P15669566907468335014

`∑[char[A198083(n)]]-1`
-/

namespace A172476.P15669566907468335014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A172476.P15669566907468335014

namespace A172476

/-- `∑[char[A198083(n)]]-1` -/
def P15669566907468335014.Spec : Prop :=
  ∀ n, P15669566907468335014.a n = A172476 n

end A172476

/-! ## A172476.P11122837906054951989

`∑[char[A022840(n+1)+1]]`
-/

namespace A172476.P11122837906054951989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172476.P11122837906054951989

namespace A172476

/-- `∑[char[A022840(n+1)+1]]` -/
def P11122837906054951989.Spec : Prop :=
  ∀ n, (P11122837906054951989.a n : ℤ) = A172476 n

end A172476

/-! ## A172476.P7279090725846993379

`∑[char[A277644(2*(n+1))+1]]`
-/

namespace A172476.P7279090725846993379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172476.P7279090725846993379

namespace A172476

/-- `∑[char[A277644(2*(n+1))+1]]` -/
def P7279090725846993379.Spec : Prop :=
  ∀ n, (P7279090725846993379.a n : ℤ) = A172476 n

end A172476

/-! ## A172476.P14558900727466432751

`A172471(A069905(n))`
-/

namespace A172476.P14558900727466432751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A069905 n).toNat

end

end A172476.P14558900727466432751

namespace A172476

/-- `A172471(A069905(n))` -/
def P14558900727466432751.Spec : Prop :=
  ∀ n, P14558900727466432751.a n = A172476 n

end A172476

/-! ## A172476.P946394450168133620

`A172471(A005044(2*n))`
-/

namespace A172476.P946394450168133620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A005044 (2 * n)).toNat

end

end A172476.P946394450168133620

namespace A172476

/-- `A172471(A005044(2*n))` -/
def P946394450168133620.Spec : Prop :=
  ∀ n, P946394450168133620.a n = A172476 n

end A172476

/-! ## A172476.P10013374045939433592

`A227568(A130519(n+1))`
-/

namespace A172476.P10013374045939433592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A130519 (n + 1)).toNat

end

end A172476.P10013374045939433592

namespace A172476

/-- `A227568(A130519(n+1))` -/
def P10013374045939433592.Spec : Prop :=
  ∀ n, P10013374045939433592.a n = A172476 n

end A172476

/-! ## A172476.P13023288211681368963

`A227568(∑[A002265(n+1)])`
-/

namespace A172476.P13023288211681368963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172476.P13023288211681368963

namespace A172476

/-- `A227568(∑[A002265(n+1)])` -/
def P13023288211681368963.Spec : Prop :=
  ∀ n, P13023288211681368963.a n = A172476 n

end A172476

/-! ## A172476.P36755864741548665

`A000196(A056827(n))`
-/

namespace A172476.P36755864741548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056827 n).toNat

end

end A172476.P36755864741548665

namespace A172476

/-- `A000196(A056827(n))` -/
def P36755864741548665.Spec : Prop :=
  ∀ n, P36755864741548665.a n = A172476 n

end A172476

/-! ## A172476.P14858628242987386939

`A000196(A337483(n))`
-/

namespace A172476.P14858628242987386939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A337483 n).toNat

end

end A172476.P14858628242987386939

namespace A172476

/-- `A000196(A337483(n))` -/
def P14858628242987386939.Spec : Prop :=
  ∀ n, P14858628242987386939.a n = A172476 n

end A172476

/-! ## A172476.P16222003976591267413

`A000196(2*A069905(n))`
-/

namespace A172476.P16222003976591267413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A069905 n).toNat

end

end A172476.P16222003976591267413

namespace A172476

/-- `A000196(2*A069905(n))` -/
def P16222003976591267413.Spec : Prop :=
  ∀ n, P16222003976591267413.a n = A172476 n

end A172476

/-! ## A172476.P3692398351783444159

`A000196(2*A211540(n+2))`
-/

namespace A172476.P3692398351783444159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A211540 (n + 2)).toNat

end

end A172476.P3692398351783444159

namespace A172476

/-- `A000196(2*A211540(n+2))` -/
def P3692398351783444159.Spec : Prop :=
  ∀ n, P3692398351783444159.a n = A172476 n

end A172476

/-! ## A172476.P3048384943300742300

`A000196(2*A005044(2*n))`
-/

namespace A172476.P3048384943300742300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A005044 (2 * n)).toNat

end

end A172476.P3048384943300742300

namespace A172476

/-- `A000196(2*A005044(2*n))` -/
def P3048384943300742300.Spec : Prop :=
  ∀ n, P3048384943300742300.a n = A172476 n

end A172476

/-! ## A172476.P16249581288347527095

`A000196(A001840(n)-A004524(n+2))`
-/

namespace A172476.P16249581288347527095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001840 n - A004524 (n + 2)).toNat

end

end A172476.P16249581288347527095

namespace A172476

/-- `A000196(A001840(n)-A004524(n+2))` -/
def P16249581288347527095.Spec : Prop :=
  ∀ n, P16249581288347527095.a n = A172476 n

end A172476

/-! ## A172476.P18422952169007503172

`A000196(A001840(n)-(n-A004524(n)))`
-/

namespace A172476.P18422952169007503172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001840 n - ((n : ℤ) - A004524 n)).toNat

end

end A172476.P18422952169007503172

namespace A172476

/-- `A000196(A001840(n)-(n-A004524(n)))` -/
def P18422952169007503172.Spec : Prop :=
  ∀ n, P18422952169007503172.a n = A172476 n

end A172476

/-! ## A172476.P3513964197157265873

`A339183(A000212(n))`
-/

namespace A172476.P3513964197157265873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A000212 n).toNat

end

end A172476.P3513964197157265873

namespace A172476

/-- `A339183(A000212(n))` -/
def P3513964197157265873.Spec : Prop :=
  ∀ n, P3513964197157265873.a n = A172476 n

end A172476

/-! ## A172476.P8899040634374293572

`A000196(A008612(n²+1))`
-/

namespace A172476.P8899040634374293572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008612 (n ^ 2 + 1)).toNat

end

end A172476.P8899040634374293572

namespace A172476

/-- `A000196(A008612(n²+1))` -/
def P8899040634374293572.Spec : Prop :=
  ∀ n, P8899040634374293572.a n = A172476 n

end A172476

/-!
# A172477: The number of ways to dissect an n X n square into polyominoes of size n.

The programs for A172477, there is no canonical definition to state claims against.
-/

/-! ## A172477.P5351847105175828489

`A348452(∑[n²+1])`
-/

namespace A172477.P5351847105175828489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172477.P5351847105175828489

/-! ## A172477.P12307224230420692638

`A348454(∑[n²+1])`
-/

namespace A172477.P12307224230420692638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172477.P12307224230420692638

/-! ## A172477.P17349222639749244073

`record[A348453(A292477(n))]`
-/

namespace A172477.P17349222639749244073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (A292477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172477.P17349222639749244073

/-!
# A172479: Triangle read by rows: T(n,k) = A152827(n)/(A152827(k)* A152827(n-k)).

The programs for A172479, there is no canonical definition to state claims against.
-/

/-! ## A172479.P6811684280109801386

`or(A003056(A210709(n)), A172453(n))`
-/

namespace A172479.P6811684280109801386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A210709 n).toNat) (A172453 n)

end

end A172479.P6811684280109801386

/-!
# A172480: Odd primes p such that there are as many primitive roots (mod p) in the interval [0,p/2] as in the interval [p/2,p].

The programs for A172480, there is no canonical definition to state claims against.
-/

/-! ## A172480.P17014898200549228446

`∪[A002144(n+1), A172490(n+1)]`
-/

namespace A172480.P17014898200549228446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172480.P17014898200549228446

/-! ## A172480.P14728397278834162077

`record[p?[A093178(n)-A112050(n+1)]]`
-/

namespace A172480.P14728397278834162077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A112050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172480.P14728397278834162077

/-! ## A172480.P15259483595156802364

`record[p?[A325401(n)-A112050(n+1)]]`
-/

namespace A172480.P15259483595156802364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n - A112050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172480.P15259483595156802364

/-! ## A172480.P15752367769680028357

`A094802(A349538(n+1))`
-/

namespace A172480.P15752367769680028357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A349538 (n + 1)).toNat

end

end A172480.P15752367769680028357

/-! ## A172480.P814858656271489770

`∩[A216745(n+1), A367600(n+1)]`
-/

namespace A172480.P814858656271489770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172480.P814858656271489770

/-!
# A172481: a(n) = (3*n*2^n+2^(n+4)+2*(-1)^n)/18.

The programs for A172481, the canonical program `A172481.P16636311317649585292` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172481 has offset 0).

The definition of A172481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172481.P16636311317649585292

`A001045(n-1)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172481

/-- `A001045(n-1)+2*a(n-1)` -/
def P16636311317649585292.Spec : Prop :=
  ∀ n, P16636311317649585292.a n = A172481 n

theorem P16636311317649585292.correct : P16636311317649585292.Spec := by
  intro n
  simp only [A172481]

end A172481

/-! ## A172481.P8661024832109196970

`A139790(n)+A140960(n)`
-/

namespace A172481.P8661024832109196970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139790 n + A140960 n

end

end A172481.P8661024832109196970

namespace A172481

/-- `A139790(n)+A140960(n)` -/
def P8661024832109196970.Spec : Prop :=
  ∀ n, P8661024832109196970.a n = A172481 n

end A172481

/-! ## A172481.P3769649099156385606

`A001045(n)+(-1)^n*A084219(n)`
-/

namespace A172481.P3769649099156385606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (-1) ^ n * A084219 n

end

end A172481.P3769649099156385606

namespace A172481

/-- `A001045(n)+(-1)^n*A084219(n)` -/
def P3769649099156385606.Spec : Prop :=
  ∀ n, P3769649099156385606.a n = A172481 n

end A172481

/-! ## A172481.P6759869960663341763

`(3*n*2^n+2^(n+4)+2*(-1)^n)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172481.P6759869960663341763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n * 2 ^ n + 2 ^ (n + 4) : ℤ) + 2 * (-1) ^ n : ℚ) / 18

end

end A172481.P6759869960663341763

namespace A172481

/-- `(3*n*2^n+2^(n+4)+2*(-1)^n)/18` -/
def P6759869960663341763.Spec : Prop :=
  ∀ n, P6759869960663341763.a n = (A172481 n : ℚ)

end A172481

/-! ## A172481.P4355668129391360141

`ogf((1-x-x^2)/(1-3x+4x^3))`
-/

namespace A172481.P4355668129391360141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 0, 4] n

end

end A172481.P4355668129391360141

namespace A172481

/-- `ogf((1-x-x^2)/(1-3x+4x^3))` -/
def P4355668129391360141.Spec : Prop :=
  ∀ n, P4355668129391360141.a n = A172481 n

end A172481

/-! ## A172481.P2289043157006034766

`3*(a(n-1)-a(n-3))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A172481.P2289043157006034766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 * (a (n - 1) - a (n - 3)) - a (n - 3)

end

end A172481.P2289043157006034766

namespace A172481

/-- `3*(a(n-1)-a(n-3))-a(n-3)` -/
def P2289043157006034766.Spec : Prop :=
  ∀ n, P2289043157006034766.a n = A172481 n

end A172481

/-! ## A172481.P725759390916166407

`A136298(n+1)-2^n`
-/

namespace A172481.P725759390916166407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 1) - (2 ^ n : ℤ)

end

end A172481.P725759390916166407

namespace A172481

/-- `A136298(n+1)-2^n` -/
def P725759390916166407.Spec : Prop :=
  ∀ n, P725759390916166407.a n = A172481 n

end A172481

/-! ## A172481.P5915787072796798153

`A109975(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A172481.P5915787072796798153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A109975 n + a (n - 2)

end

end A172481.P5915787072796798153

namespace A172481

/-- `A109975(n)+a(n-2)` -/
def P5915787072796798153.Spec : Prop :=
  ∀ n, P5915787072796798153.a n = A172481 n

end A172481

/-! ## A172481.P3213913176407450151

`A175656(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A172481.P3213913176407450151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175656 (n - 1) + a (n - 1)

end

end A172481.P3213913176407450151

namespace A172481

/-- `A175656(n-1)+a(n-1)` -/
def P3213913176407450151.Spec : Prop :=
  ∀ n, P3213913176407450151.a n = A172481 n

end A172481

/-! ## A172481.P13099795441842951428

`A103196(n)+A099429(n)`
-/

namespace A172481.P13099795441842951428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n + A099429 n

end

end A172481.P13099795441842951428

namespace A172481

/-- `A103196(n)+A099429(n)` -/
def P13099795441842951428.Spec : Prop :=
  ∀ n, P13099795441842951428.a n = A172481 n

end A172481

/-! ## A172481.P18283807482383388744

`A291023(n)+A033999(n)`
-/

namespace A172481.P18283807482383388744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291023 n + A033999 n

end

end A172481.P18283807482383388744

namespace A172481

/-- `A291023(n)+A033999(n)` -/
def P18283807482383388744.Spec : Prop :=
  ∀ n, P18283807482383388744.a n = A172481 n

end A172481

/-! ## A172481.P3435583321882842180

`A175656(n)-A001045(n)`
-/

namespace A172481.P3435583321882842180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - A001045 n

end

end A172481.P3435583321882842180

namespace A172481

/-- `A175656(n)-A001045(n)` -/
def P3435583321882842180.Spec : Prop :=
  ∀ n, P3435583321882842180.a n = A172481 n

end A172481

/-! ## A172481.P7514481026300483157

`A099431(n)+A095342(n+1)`
-/

namespace A172481.P7514481026300483157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099431 n + A095342 (n + 1)

end

end A172481.P7514481026300483157

namespace A172481

/-- `A099431(n)+A095342(n+1)` -/
def P7514481026300483157.Spec : Prop :=
  ∀ n, P7514481026300483157.a n = A172481 n

end A172481

/-! ## A172481.P6712961583896121512

`A175656(n)-(A131666(n+1)+A113405(n))`
-/

namespace A172481.P6712961583896121512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - (A131666 (n + 1) + A113405 n)

end

end A172481.P6712961583896121512

namespace A172481

/-- `A175656(n)-(A131666(n+1)+A113405(n))` -/
def P6712961583896121512.Spec : Prop :=
  ∀ n, P6712961583896121512.a n = A172481 n

end A172481

/-! ## A172481.P11573972995887921356

`A000079(n+1)+A000079(n)-A136299(n+1)`
-/

namespace A172481.P11573972995887921356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A000079 n - A136299 (n + 1))

end

end A172481.P11573972995887921356

namespace A172481

/-- `A000079(n+1)+A000079(n)-A136299(n+1)` -/
def P11573972995887921356.Spec : Prop :=
  ∀ n, P11573972995887921356.a n = A172481 n

end A172481

/-! ## A172481.P17858664456131577595

`A000051(n+1)+A000225(n)-A136299(n+1)`
-/

namespace A172481.P17858664456131577595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A000225 n - A136299 (n + 1))

end

end A172481.P17858664456131577595

namespace A172481

/-- `A000051(n+1)+A000225(n)-A136299(n+1)` -/
def P17858664456131577595.Spec : Prop :=
  ∀ n, P17858664456131577595.a n = A172481 n

end A172481

/-! ## A172481.P2832899899139731910

`3*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A172481.P2832899899139731910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3)

end

end A172481.P2832899899139731910

namespace A172481

/-- `3*a(n-1)-4*a(n-3)` -/
def P2832899899139731910.Spec : Prop :=
  ∀ n, P2832899899139731910.a n = A172481 n

end A172481

/-! ## A172481.P21667530820130801

`abs(∑[A081037(n+1)])`
-/

namespace A172481.P21667530820130801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A172481.P21667530820130801

namespace A172481

/-- `abs(∑[A081037(n+1)])` -/
def P21667530820130801.Spec : Prop :=
  ∀ n, P21667530820130801.a n = A172481 n

end A172481

/-! ## A172481.P17431602448699573951

`A045891(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A172481.P17431602448699573951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045891 (n + 1) - a (n - 1)

end

end A172481.P17431602448699573951

namespace A172481

/-- `A045891(n+1)-a(n-1)` -/
def P17431602448699573951.Spec : Prop :=
  ∀ n, P17431602448699573951.a n = A172481 n

end A172481

/-! ## A172481.P510612490582956592

`A139756(n)+A136299(n)`
-/

namespace A172481.P510612490582956592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A136299 n

end

end A172481.P510612490582956592

namespace A172481

/-- `A139756(n)+A136299(n)` -/
def P510612490582956592.Spec : Prop :=
  ∀ n, P510612490582956592.a n = A172481 n

end A172481

/-!
# A172482: a(n) = (1+n)*(9 + 11*n + 4*n^2)/3.

The programs for A172482, the canonical program `A172482.P11363485365046249463` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172482 has offset 0).

The definition of A172482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172482.P10586702625877607531

`(1+n)*(9+11*n+4*n²)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172482.P10586702625877607531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) * (9 + 11 * n + 4 * n ^ 2) : ℚ) / 3

end

end A172482.P10586702625877607531

namespace A172482

/-- `(1+n)*(9+11*n+4*n²)/3` -/
def P10586702625877607531.Spec : Prop :=
  ∀ n, P10586702625877607531.a n = (A172482 n : ℚ)

end A172482

/-! ## A172482.P11363485365046249463

`A131941(2*n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172482

/-- `A131941(2*n+2)` -/
def P11363485365046249463.Spec : Prop :=
  ∀ n, P11363485365046249463.a n = A172482 n

theorem P11363485365046249463.correct : P11363485365046249463.Spec := by
  intro n
  simp only [A172482]

end A172482

/-! ## A172482.P15154697936001254474

`∑[∑[a(n-1)+8]]` with `a(0)=3, a(1)=10`
-/

namespace A172482.P15154697936001254474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P15154697936001254474

namespace A172482

/-- `∑[∑[a(n-1)+8]]` -/
def P15154697936001254474.Spec : Prop :=
  ∀ n, (P15154697936001254474.a n : ℤ) = A172482 n

end A172482

/-! ## A172482.P16382770035653880516

`∑[∑[ogf((3+4x+x^2)/(1-2x+x^2))]]`
-/

namespace A172482.P16382770035653880516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P16382770035653880516

namespace A172482

/-- `∑[∑[ogf((3+4x+x^2)/(1-2x+x^2))]]` -/
def P16382770035653880516.Spec : Prop :=
  ∀ n, P16382770035653880516.a n = A172482 n

end A172482

/-! ## A172482.P1855759453143975131

`ogf((3+4x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A172482.P1855759453143975131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 1] [1, -4, 6, -4, 1] n

end

end A172482.P1855759453143975131

namespace A172482

/-- `ogf((3+4x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1855759453143975131.Spec : Prop :=
  ∀ n, P1855759453143975131.a n = A172482 n

end A172482

/-! ## A172482.P1396011366276205576

`C(2*(n+2), 3)-(n+1)²`
-/

namespace A172482.P1396011366276205576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A172482.P1396011366276205576

namespace A172482

/-- `C(2*(n+2), 3)-(n+1)²` -/
def P1396011366276205576.Spec : Prop :=
  ∀ n, P1396011366276205576.a n = A172482 n

end A172482

/-! ## A172482.P13874457914846183666

`∑[Δ[lcm(n, n+1)]²]-(n+1)²`
-/

namespace A172482.P13874457914846183666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A172482.P13874457914846183666

namespace A172482

/-- `∑[Δ[lcm(n, n+1)]²]-(n+1)²` -/
def P13874457914846183666.Spec : Prop :=
  ∀ n, P13874457914846183666.a n = A172482 n

end A172482

/-! ## A172482.P13658737658384413062

`Δ[2*n*C(n+2, 3)]+n+1`
-/

namespace A172482.P13658737658384413062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (n + 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A172482.P13658737658384413062

namespace A172482

/-- `Δ[2*n*C(n+2, 3)]+n+1` -/
def P13658737658384413062.Spec : Prop :=
  ∀ n, P13658737658384413062.a n = A172482 n

end A172482

/-! ## A172482.P10807442037242189047

`∑[xor(3, (2*n+1)²)]+(n+1)²`
-/

namespace A172482.P10807442037242189047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((2 * n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A172482.P10807442037242189047

namespace A172482

/-- `∑[xor(3, (2*n+1)²)]+(n+1)²` -/
def P10807442037242189047.Spec : Prop :=
  ∀ n, (P10807442037242189047.a n : ℤ) = A172482 n

end A172482

/-! ## A172482.P14725553147485345297

`∑[(2*n+1)²]+2*C(n+2, 2)`
-/

namespace A172482.P14725553147485345297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.choose (n + 2) 2

end

end A172482.P14725553147485345297

namespace A172482

/-- `∑[(2*n+1)²]+2*C(n+2, 2)` -/
def P14725553147485345297.Spec : Prop :=
  ∀ n, (P14725553147485345297.a n : ℤ) = A172482 n

end A172482

/-! ## A172482.P10810819554464309180

`3*(n+1)²+a(n-1)+n²` with `a(0)=3`
-/

namespace A172482.P10810819554464309180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * (n + 1) ^ 2 + (a (n - 1) + n ^ 2)

end

end A172482.P10810819554464309180

namespace A172482

/-- `3*(n+1)²+a(n-1)+n²` -/
def P10810819554464309180.Spec : Prop :=
  ∀ n, (P10810819554464309180.a n : ℤ) = A172482 n

end A172482

/-! ## A172482.P4203619971542896248

`∑[lcm(2*n+1, 2*(n+1))]+n+1`
-/

namespace A172482.P4203619971542896248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A172482.P4203619971542896248

namespace A172482

/-- `∑[lcm(2*n+1, 2*(n+1))]+n+1` -/
def P4203619971542896248.Spec : Prop :=
  ∀ n, (P4203619971542896248.a n : ℤ) = A172482 n

end A172482

/-! ## A172482.P3554032597668153143

`∑[(2*n+1)*(n+3)]+∑[C(2*n, 2)]`
-/

namespace A172482.P3554032597668153143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A172482.P3554032597668153143

namespace A172482

/-- `∑[(2*n+1)*(n+3)]+∑[C(2*n, 2)]` -/
def P3554032597668153143.Spec : Prop :=
  ∀ n, (P3554032597668153143.a n : ℤ) = A172482 n

end A172482

/-! ## A172482.P12276014563410400955

`∑[A082108(n)+2]`
-/

namespace A172482.P12276014563410400955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P12276014563410400955

namespace A172482

/-- `∑[A082108(n)+2]` -/
def P12276014563410400955.Spec : Prop :=
  ∀ n, P12276014563410400955.a n = A172482 n

end A172482

/-! ## A172482.P13906600625579710972

`floor(A168574(n+1)/2)`
-/

namespace A172482.P13906600625579710972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168574 (n + 1) : ℚ) / 2⌋

end

end A172482.P13906600625579710972

namespace A172482

/-- `floor(A168574(n+1)/2)` -/
def P13906600625579710972.Spec : Prop :=
  ∀ n, P13906600625579710972.a n = A172482 n

end A172482

/-! ## A172482.P459261102043708869

`∑[A002939(n+1)+1]`
-/

namespace A172482.P459261102043708869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P459261102043708869

namespace A172482

/-- `∑[A002939(n+1)+1]` -/
def P459261102043708869.Spec : Prop :=
  ∀ n, P459261102043708869.a n = A172482 n

end A172482

/-! ## A172482.P5469647352819044158

`∑[A280344(n)+1]+2`
-/

namespace A172482.P5469647352819044158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280344 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A172482.P5469647352819044158

namespace A172482

/-- `∑[A280344(n)+1]+2` -/
def P5469647352819044158.Spec : Prop :=
  ∀ n, P5469647352819044158.a n = A172482 n

end A172482

/-! ## A172482.P7035544843878721939

`∑[A254527(n+1)/2]`
-/

namespace A172482.P7035544843878721939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254527 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P7035544843878721939

namespace A172482

/-- `∑[A254527(n+1)/2]` -/
def P7035544843878721939.Spec : Prop :=
  ∀ n, P7035544843878721939.a n = (A172482 n : ℚ)

end A172482

/-! ## A172482.P5066349600546078632

`∑[A386486(n+1)+n]`
-/

namespace A172482.P5066349600546078632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P5066349600546078632

namespace A172482

/-- `∑[A386486(n+1)+n]` -/
def P5066349600546078632.Spec : Prop :=
  ∀ n, P5066349600546078632.a n = A172482 n

end A172482

/-! ## A172482.P1914471595559358121

`∑[∑[A019427(2*n+1)]]`
-/

namespace A172482.P1914471595559358121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172482.P1914471595559358121

namespace A172482

/-- `∑[∑[A019427(2*n+1)]]` -/
def P1914471595559358121.Spec : Prop :=
  ∀ n, P1914471595559358121.a n = A172482 n

end A172482

/-!
# A172484: Partial sums of extravagant numbers, also called prodigal numbers, or wasteful numbers.

The programs for A172484, there is no canonical definition to state claims against.
-/

/-! ## A172484.P1983234540962969242

`∑[A046760(n+1)]`
-/

namespace A172484.P1983234540962969242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P1983234540962969242

/-! ## A172484.P9096321968296371163

`∑[A000041(((-1)^n)²)*A046760(n-log2(1/2))]`
-/

namespace A172484.P9096321968296371163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A046760 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P9096321968296371163

/-! ## A172484.P10866171179872820863

`∑[record[A046760(A152271(n))]]`
-/

namespace A172484.P10866171179872820863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P10866171179872820863

/-! ## A172484.P11692197733059229345

`∑[record[A046760(A126759(n))]]`
-/

namespace A172484.P11692197733059229345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P11692197733059229345

/-! ## A172484.P4650645471327911424

`∑[record[A046760(A117910(n))]]`
-/

namespace A172484.P4650645471327911424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P4650645471327911424

/-! ## A172484.P15065170611052903681

`A000027(∑[A046760(n-log2(1/2))])`
-/

namespace A172484.P15065170611052903681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172484.P15065170611052903681

/-! ## A172484.P181959074242404296

`∑[record[A046760(A134478(n))]]`
-/

namespace A172484.P181959074242404296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P181959074242404296

/-! ## A172484.P8698497380929177590

`A087156(∑[A046760(n-log2(1/2))])`
-/

namespace A172484.P8698497380929177590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172484.P8698497380929177590

/-! ## A172484.P11118882963123055142

`∑[record[A046760(A033930(n))]]`
-/

namespace A172484.P11118882963123055142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172484.P11118882963123055142

/-!
# A172485: The case S(-1,-2,3) of the family of self-convolutive recurrences studied by Martin and Kearney.

The programs for A172485, the canonical program `A172485.P17419333862786437171` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172485 has offset 1).

The definition of A172485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172485.P17419333862786437171

`ogf((1+2x+2x^2)/(1+3x+6x^2+6x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172485

/-- `ogf((1+2x+2x^2)/(1+3x+6x^2+6x^3))` -/
def P17419333862786437171.Spec : Prop :=
  ∀ n, P17419333862786437171.a n = A172485 (n + 1)

theorem P17419333862786437171.correct : P17419333862786437171.Spec := by
  intro n
  simp only [A172485, Nat.add_sub_cancel]

end A172485

/-!
# A172486: Number of prime knots up to nine crossings with determinant 2n+1 and signature 6.

The programs for A172486, there is no canonical definition to state claims against.
-/

/-! ## A172486.P12244204601573963918

`char[∏{p}[n, #-28]]`
-/

namespace A172486.P12244204601573963918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 28)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A172486.P12244204601573963918

/-! ## A172486.P10387719867824066998

`∑{e}[n+28, #]!%2`
-/

namespace A172486.P10387719867824066998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A172486.P10387719867824066998

/-! ## A172486.P5412464703084857745

`and(1, ∑{e}[32-n, #]!)`
-/

namespace A172486.P5412464703084857745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A172486.P5412464703084857745

/-! ## A172486.P12212277452607461539

`char[eq[1, ∑{e}[n+28, #]]]`
-/

namespace A172486.P12212277452607461539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 28

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A172486.P12212277452607461539

/-! ## A172486.P5380996534311982315

`char[∑{d}[Δ[n²], #]-59]`
-/

namespace A172486.P5380996534311982315
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ) - 59

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A172486.P5380996534311982315

/-!
# A172487: Lesser of twin primes in A172240.

The programs for A172487, there is no canonical definition to state claims against.
-/

/-! ## A172487.P13495387744895422279

`p?[A059456(n+1)+2]-2`
-/

namespace A172487.P13495387744895422279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A172487.P13495387744895422279

/-! ## A172487.P3046539067860625126

`p?[A204896(A059456(n+2))]`
-/

namespace A172487.P3046539067860625126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204896 (A059456 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172487.P3046539067860625126

/-! ## A172487.P326188598424049520

`filter[A059456(n+1), A296212(#)]`
-/

namespace A172487.P326188598424049520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A172487.P326188598424049520

/-! ## A172487.P5119362328740646753

`filter[A084445(n+1), A296212(#)]`
-/

namespace A172487.P5119362328740646753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A172487.P5119362328740646753

/-! ## A172487.P1428057086164632985

`filter[A059456(n+1), A353463(#)]`
-/

namespace A172487.P1428057086164632985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A172487.P1428057086164632985

/-! ## A172487.P5150540361526716354

`filter[A084445(n+1), A353463(#)]`
-/

namespace A172487.P5150540361526716354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A172487.P5150540361526716354

/-! ## A172487.P13786929378002699326

`filter[A176393(n+1), A353463(#)]`
-/

namespace A172487.P13786929378002699326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A172487.P13786929378002699326

/-! ## A172487.P231354738051136968

`record[A006530(A165947(n+1)-2)]`
-/

namespace A172487.P231354738051136968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A165947 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172487.P231354738051136968

/-! ## A172487.P14316330234618395841

`record[A014963(A165947(n+1)-2)]`
-/

namespace A172487.P14316330234618395841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A165947 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172487.P14316330234618395841

/-! ## A172487.P15506396816289366532

`record[A020639(A165947(n+1)-2)]`
-/

namespace A172487.P15506396816289366532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A165947 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172487.P15506396816289366532

/-!
# A172488: Primes of the form 2^i * 3^j + 1 with i + j = 13.

The programs for A172488, there is no canonical definition to state claims against.
-/

/-! ## A172488.P7327677337192204354

`record[A084040(2*(n+2))]`
-/

namespace A172488.P7327677337192204354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084040 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172488.P7327677337192204354

/-!
# A172489: a(0)=1, a(1)=6; for n>=2, a(n) = 6^A042950(n-2).

The programs for A172489, there is no canonical definition to state claims against.
-/

/-! ## A172489.P4571882950002077263

`6^round(3*2^(n-3))`
-/

namespace A172489.P4571882950002077263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (SequenceMachineLib.roundAway (3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) : ℤ)

end

end A172489.P4571882950002077263

/-! ## A172489.P14078833882548122771

`record[6^A251714(n)]`
-/

namespace A172489.P14078833882548122771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A251714 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172489.P14078833882548122771

/-! ## A172489.P12875846707476845599

`record[6^A251745(n)]`
-/

namespace A172489.P12875846707476845599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A251745 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172489.P12875846707476845599

/-! ## A172489.P12514401084716405385

`record[6^A251752(n)]`
-/

namespace A172489.P12514401084716405385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A251752 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172489.P12514401084716405385

/-! ## A172489.P9627073023085044248

`record[6^A251766(n)]`
-/

namespace A172489.P9627073023085044248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A251766 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172489.P9627073023085044248

/-!
# A172490: Primes p of the form 4m+3 for which there are exactly as many primitive roots modulo p in the interval [0,p/2] as in the interval [p/2,p].

The programs for A172490, there is no canonical definition to state claims against.
-/

/-! ## A172490.P6316448391502489786

`∩[A002145(n+1), A172480(n+1)]`
-/

namespace A172490.P6316448391502489786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P6316448391502489786

/-! ## A172490.P6851078901599538753

`∩[A045326(n+1), A172480(n+1)]`
-/

namespace A172490.P6851078901599538753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P6851078901599538753

/-! ## A172490.P1239459835582212136

`∩[A085760(n+1), A172480(n+1)]`
-/

namespace A172490.P1239459835582212136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P1239459835582212136

/-! ## A172490.P9046004039821787515

`∩[A172480(n+1), A197504(n+1)]`
-/

namespace A172490.P9046004039821787515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P9046004039821787515

/-! ## A172490.P16710864581632544610

`∩[A172480(n+1), A292762(n+1)]`
-/

namespace A172490.P16710864581632544610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P16710864581632544610

/-! ## A172490.P2990929399895613374

`∩[A172480(n+1), A332555(n+1)]`
-/

namespace A172490.P2990929399895613374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P2990929399895613374

/-! ## A172490.P4199297003009085535

`∩[A066499(n+1), A172480(n+1)]`
-/

namespace A172490.P4199297003009085535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P4199297003009085535

/-! ## A172490.P14092386242675118049

`∩[A097987(n+1), A172480(n+1)]`
-/

namespace A172490.P14092386242675118049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172490.P14092386242675118049

/-!
# A172491: Number of partitions of n into consecutive initial Fibonacci numbers.

The programs for A172491, there is no canonical definition to state claims against.
-/

/-! ## A172491.P10219231529967727977

`∑[A008619(A259361(A196087(n+1)))]`
-/

namespace A172491.P10219231529967727977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A259361 (A196087 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172491.P10219231529967727977

/-! ## A172491.P6472864307398736652

`A294203(A000204(n+1))+A218507(n)`
-/

namespace A172491.P6472864307398736652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A000204 (n + 1)).toNat + A218507 n

end

end A172491.P6472864307398736652

/-! ## A172491.P2012205171592203001

`A202305(A160525(n))-(floor(n/2)+1)`
-/

namespace A172491.P2012205171592203001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A160525 n).toNat - (⌊(n : ℚ) / 2⌋ + 1)

end

end A172491.P2012205171592203001

/-! ## A172491.P10594708940524520507

`abs(A004526(n)+1-A202305(A160525(n)))`
-/

namespace A172491.P10594708940524520507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004526 n + 1 - A202305 (A160525 n).toNat|

end

end A172491.P10594708940524520507

/-! ## A172491.P180513780451268576

`A202305(A160525(n))+A004526(n+1)-(n+1)`
-/

namespace A172491.P180513780451268576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A160525 n).toNat + A004526 (n + 1) - (n + 1 : ℤ)

end

end A172491.P180513780451268576

/-!
# A172492: a(n) = (n!)^2*(n+1)!.

The programs for A172492, the canonical program `A172492.P16611603071618886498` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172492 has offset 0).

The definition of A172492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²*(n+1)!` (program `A172492.P16611603071618886498`, by `A172492.P16611603071618886498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172492.P16611603071618886498

`n!²*(n+1)!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172492

/-- `n!²*(n+1)!` -/
def P16611603071618886498.Spec : Prop :=
  ∀ n, (P16611603071618886498.a n : ℤ) = A172492 n

theorem P16611603071618886498.correct : P16611603071618886498.Spec := by
  intro n
  simp only [A172492]

end A172492

/-! ## A172492.P16602097453050540045

`(n+1)*n!^3`
-/

namespace A172492.P16602097453050540045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial n ^ 3

end

end A172492.P16602097453050540045

namespace A172492

/-- `(n+1)*n!^3` -/
def P16602097453050540045.Spec : Prop :=
  ∀ n, (P16602097453050540045.a n : ℤ) = A172492 n

theorem P16602097453050540045.correct : P16602097453050540045.Spec := by
  intro n
  simp only [A172492, Nat.add_sub_cancel, A172492.P16602097453050540045.a, A172492.P16611603071618886498.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A172492

/-! ## A172492.P10346586149382456620

`(n+1)*root(n!, 1/3)`
-/

namespace A172492.P10346586149382456620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A172492.P10346586149382456620

namespace A172492

/-- `(n+1)*root(n!, 1/3)` -/
def P10346586149382456620.Spec : Prop :=
  ∀ n, P10346586149382456620.a n = (A172492 n : ℝ)

theorem P10346586149382456620.correct : P10346586149382456620.Spec := by
  intro n
  simp only [A172492, Nat.add_sub_cancel, A172492.P10346586149382456620.a, A172492.P16611603071618886498.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A172492

/-! ## A172492.P10229564711132801353

`(n+1)!/(1/n!)²`
-/

namespace A172492.P10229564711132801353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (1 / (Nat.factorial n : ℚ)) ^ 2

end

end A172492.P10229564711132801353

namespace A172492

/-- `(n+1)!/(1/n!)²` -/
def P10229564711132801353.Spec : Prop :=
  ∀ n, P10229564711132801353.a n = (A172492 n : ℚ)

theorem P10229564711132801353.correct : P10229564711132801353.Spec := by
  intro n
  simp only [A172492, Nat.add_sub_cancel, A172492.P10229564711132801353.a, A172492.P16611603071618886498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A172492

/-! ## A172492.P17436555541611910986

`(n+1)!/n!^-2`
-/

namespace A172492.P17436555541611910986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (Nat.factorial n : ℚ) ^ (-2 : ℤ)

end

end A172492.P17436555541611910986

namespace A172492

/-- `(n+1)!/n!^-2` -/
def P17436555541611910986.Spec : Prop :=
  ∀ n, P17436555541611910986.a n = (A172492 n : ℚ)

theorem P17436555541611910986.correct : P17436555541611910986.Spec := by
  intro n
  simp only [A172492, Nat.add_sub_cancel, A172492.P17436555541611910986.a, A172492.P16611603071618886498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A172492

/-!
# A172494: Numbers k with (p,p+2) = ((2*k)^3/2 - 1,(2*k)^3/2 + 1) is a twin prime pair.

The programs for A172494, there is no canonical definition to state claims against.
-/

/-! ## A172494.P14395508758556634953

`root(A245591(n+1), 3)/2`
-/

namespace A172494.P14395508758556634953
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) / 2

end

end A172494.P14395508758556634953

/-! ## A172494.P11602020488584570142

`A122553(n)*A240169(A028310(n))`
-/

namespace A172494.P11602020488584570142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A240169 (A028310 n).toNat

end

end A172494.P11602020488584570142

/-! ## A172494.P2068255121079372314

`A098355(n)%6*A240169(A028310(n))`
-/

namespace A172494.P2068255121079372314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098355 n) 6 * A240169 (A028310 n).toNat

end

end A172494.P2068255121079372314

/-! ## A172494.P6000066746395845010

`A014963(A074816(n+1))*A240169(A028310(n))`
-/

namespace A172494.P6000066746395845010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A074816 (n + 1)).toNat * A240169 (A028310 n).toNat

end

end A172494.P6000066746395845010

/-! ## A172494.P4172924899791513661

`∩[A115104(n+1), A199366(n+1)]`
-/

namespace A172494.P4172924899791513661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172494.P4172924899791513661

/-! ## A172494.P1241788781719973094

`A014682(root(A245591(n+1), 3))`
-/

namespace A172494.P1241788781719973094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A172494.P1241788781719973094

/-! ## A172494.P12954298125019944417

`A318516(root(A245591(n+1), 3))`
-/

namespace A172494.P12954298125019944417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (SequenceMachineLib.roundAway ((A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A172494.P12954298125019944417

/-! ## A172494.P10395232434444192986

`A318518(root(A245591(n+1), 3))`
-/

namespace A172494.P10395232434444192986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (SequenceMachineLib.roundAway ((A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A172494.P10395232434444192986

/-! ## A172494.P10353356882235873188

`A328399(root(A245591(n+1), 3))-1`
-/

namespace A172494.P10353356882235873188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (SequenceMachineLib.roundAway ((A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat - 1

end

end A172494.P10353356882235873188

/-! ## A172494.P17848566073874039983

`A249122(root(A245591(n+1), 3)+1)`
-/

namespace A172494.P17848566073874039983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (SequenceMachineLib.roundAway ((A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) + 1)).toNat

end

end A172494.P17848566073874039983

/-!
# A172496: a(n) = numerator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form 0.(1)(2)(3)...(n-1)(n)... with period (1)(2)(3)...(n-1)(n).

The programs for A172496, there is no canonical definition to state claims against.
-/

/-! ## A172496.P12869148407670132241

`A172499(n+1)%A172498(n+1)`
-/

namespace A172496.P12869148407670132241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172499 (n + 1)) (A172498 (n + 1))

end

end A172496.P12869148407670132241

/-! ## A172496.P6696934703271224760

`A007908(n+1)/gcd(A007908(n+1), A141265(n))`
-/

namespace A172496.P6696934703271224760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007908 (n + 1) : ℚ) / (Int.gcd (A007908 (n + 1)) (A141265 n) : ℚ)

end

end A172496.P6696934703271224760

/-! ## A172496.P18049772237961720583

`A007908(n+1)/gcd(A138793(n+1), A138957(n+1))`
-/

namespace A172496.P18049772237961720583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007908 (n + 1) : ℚ) / (Int.gcd (A138793 (n + 1)) (A138957 (n + 1)) : ℚ)

end

end A172496.P18049772237961720583

/-!
# A172497: Triangle T(n, k) = round( c(n)/(c(k)*c(n-k)) ) where c(n) = Product_{j=1..n} A029826(j+10), read by rows.

The programs for A172497, there is no canonical definition to state claims against.
-/

/-! ## A172497.P13796528219557955804

`∏{e}[A060789(A132818(n+1)), #]`
-/

namespace A172497.P13796528219557955804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A132818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A172497.P13796528219557955804

/-! ## A172497.P16513261796115050206

`A193073(A177970(n))`
-/

namespace A172497.P16513261796115050206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A177970 n).toNat

end

end A172497.P16513261796115050206

/-! ## A172497.P15419049245784880855

`A365836(A045995(n))`
-/

namespace A172497.P15419049245784880855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365836 (A045995 n).toNat

end

end A172497.P15419049245784880855

/-! ## A172497.P12825821131207019730

`A001826(A230275(n+1)+1)`
-/

namespace A172497.P12825821131207019730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A230275 (n + 1) + 1).toNat

end

end A172497.P12825821131207019730

/-! ## A172497.P3393270906669565484

`A255559(A168625(n)%A179922(n+1))`
-/

namespace A172497.P3393270906669565484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255559 (Int.tmod (A168625 n) (A179922 (n + 1))).toNat

end

end A172497.P3393270906669565484

/-!
# A172498: a(n) = denominator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form 0.(1)(2)(3)...(n-1)(n)... with period (1)(2)(3)...(n-1)(n).

The programs for A172498, there is no canonical definition to state claims against.
-/

/-! ## A172498.P5250044387069317424

`A000042(n+1)*A036118(A222935(3*n+4))`
-/

namespace A172498.P5250044387069317424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A036118 (A222935 (3 * n + 4)).toNat

end

end A172498.P5250044387069317424

/-! ## A172498.P7670474434076838706

`A000042(n+1)*A375400(A017629(n))`
-/

namespace A172498.P7670474434076838706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A375400 (A017629 n).toNat

end

end A172498.P7670474434076838706

/-!
# A172499: a(n) = numerator of fraction whose decimal representation is (n).(1)(2)(3)...(n-1)(n)... with repeating part (1)(2)(3)...(n-1)(n).

The programs for A172499, there is no canonical definition to state claims against.
-/

/-! ## A172499.P7528107360821539745

`A172496(n+1)+A084007(A269387(n²))*A269387(n)`
-/

namespace A172499.P7528107360821539745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172496 (n + 1) + A084007 (A269387 (n ^ 2)).toNat * A269387 n

end

end A172499.P7528107360821539745

