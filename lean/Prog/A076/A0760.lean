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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A076000: a(n) = Product_{k=1..n} k/floor(n/k).

The programs for A076000, there is no canonical definition to state claims against.
-/

/-! ## A076000.P15072929393643264264

`(n+1)!/A010786(n+1)`
-/

namespace A076000.P15072929393643264264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A010786 (n + 1) : ℚ)

end

end A076000.P15072929393643264264

/-! ## A076000.P16631620172621808050

`record[A094587(n)]/A010786(n+1)`
-/

namespace A076000.P16631620172621808050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A010786 (n + 1) : ℚ)

end

end A076000.P16631620172621808050

/-! ## A076000.P14026973406083470934

`record[A275062(n)]/A010786(n+1)`
-/

namespace A076000.P14026973406083470934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275062 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A010786 (n + 1) : ℚ)

end

end A076000.P14026973406083470934

/-! ## A076000.P10275331980965706541

`A000142(n+1)/A010786(n+1)`
-/

namespace A076000.P10275331980965706541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A010786 (n + 1) : ℚ)

end

end A076000.P10275331980965706541

/-!
# A076001: (1/2)*A075998.

The programs for A076001, there is no canonical definition to state claims against.
-/

/-! ## A076001.P5747441775249578988

`A075998(n+1)/2`
-/

namespace A076001.P5747441775249578988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075998 (n + 1) : ℚ) / 2

end

end A076001.P5747441775249578988

/-! ## A076001.P9037663687086051481

`A014682(A075998(n+1))`
-/

namespace A076001.P9037663687086051481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075998 (n + 1)).toNat

end

end A076001.P9037663687086051481

/-! ## A076001.P11608821394262862831

`A328399(A075998(n+1)-2)`
-/

namespace A076001.P11608821394262862831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A075998 (n + 1) - 2).toNat

end

end A076001.P11608821394262862831

/-! ## A076001.P9308605028897365207

`A273943(lcm(2, A075998(n+1)))`
-/

namespace A076001.P9308605028897365207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A075998 (n + 1)))

end

end A076001.P9308605028897365207

/-! ## A076001.P7517099411945932961

`A273943(A344420(n)+A075998(n+1))`
-/

namespace A076001.P7517099411945932961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A344420 n + A075998 (n + 1)).toNat

end

end A076001.P7517099411945932961

/-!
# A076002: Seventh column of triangle A075502.

The programs for A076002, there is no canonical definition to state claims against.
-/

/-! ## A076002.P14741948069571468207

`7^n*A000771(n+7)`
-/

namespace A076002.P14741948069571468207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000771 (n + 7)

end

end A076002.P14741948069571468207

/-! ## A076002.P351040084116987087

`A075915(n)/A075913(n)*A075924(n)`
-/

namespace A076002.P351040084116987087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075915 n : ℚ) / (A075913 n : ℚ) * (A075924 n : ℚ)

end

end A076002.P351040084116987087

/-! ## A076002.P8760773729335127189

`A075915(n)/A075914(n)*A075925(n)`
-/

namespace A076002.P8760773729335127189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075915 n : ℚ) / (A075914 n : ℚ) * (A075925 n : ℚ)

end

end A076002.P8760773729335127189

/-! ## A076002.P12048631406786788508

`A075920(n)/A075916(n)*A075922(n)`
-/

namespace A076002.P12048631406786788508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (A075916 n : ℚ) * (A075922 n : ℚ)

end

end A076002.P12048631406786788508

/-! ## A076002.P1171439363401494950

`A075920(n)/A075917(n)*A075923(n)`
-/

namespace A076002.P1171439363401494950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (A075917 n : ℚ) * (A075923 n : ℚ)

end

end A076002.P1171439363401494950

/-! ## A076002.P14221159035128392632

`A075920(n)/A075918(n)*A075924(n)`
-/

namespace A076002.P14221159035128392632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (A075918 n : ℚ) * (A075924 n : ℚ)

end

end A076002.P14221159035128392632

/-! ## A076002.P10046166541824251838

`A075920(n)/A075919(n)*A075925(n)`
-/

namespace A076002.P10046166541824251838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (A075919 n : ℚ) * (A075925 n : ℚ)

end

end A076002.P10046166541824251838

/-! ## A076002.P17270475242257434064

`A075502(A167487(n+5))`
-/

namespace A076002.P17270475242257434064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A167487 (n + 5)).toNat

end

end A076002.P17270475242257434064

/-! ## A076002.P10538919926457387622

`A075923(n)/A076004(n)*A076007(n)`
-/

namespace A076002.P10538919926457387622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075923 n : ℚ) / (A076004 n : ℚ) * (A076007 n : ℚ)

end

end A076002.P10538919926457387622

/-!
# A076003: Third column of triangle A075503.

The programs for A076003, the canonical program `A076003.P4464177488660766541` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076003 has offset 0).

The definition of A076003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076003.P4464177488660766541

`(8^n-8*16^n+9*24^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076003

/-- `(8^n-8*16^n+9*24^n)/2` -/
def P4464177488660766541.Spec : Prop :=
  ∀ n, P4464177488660766541.a n = (A076003 n : ℚ)

end A076003

/-! ## A076003.P15881577190678863495

`2^n*A019677(n)`
-/

namespace A076003.P15881577190678863495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A019677 n

end

end A076003.P15881577190678863495

namespace A076003

/-- `2^n*A019677(n)` -/
def P15881577190678863495.Spec : Prop :=
  ∀ n, P15881577190678863495.a n = A076003 n

end A076003

/-! ## A076003.P15467416465643910470

`8^n*∑[A001047(n+1)]`
-/

namespace A076003.P15467416465643910470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076003.P15467416465643910470

namespace A076003

/-- `8^n*∑[A001047(n+1)]` -/
def P15467416465643910470.Spec : Prop :=
  ∀ n, P15467416465643910470.a n = A076003 n

end A076003

/-! ## A076003.P8215359337118893683

`A000079(n)²*A016283(n+2)`
-/

namespace A076003.P8215359337118893683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A016283 (n + 2)

end

end A076003.P8215359337118893683

namespace A076003

/-- `A000079(n)²*A016283(n+2)` -/
def P8215359337118893683.Spec : Prop :=
  ∀ n, P8215359337118893683.a n = A076003 n

end A076003

/-! ## A076003.P14016767540972035133

`A000079(2*n)*A016283(n+2)`
-/

namespace A076003.P14016767540972035133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A016283 (n + 2)

end

end A076003.P14016767540972035133

namespace A076003

/-- `A000079(2*n)*A016283(n+2)` -/
def P14016767540972035133.Spec : Prop :=
  ∀ n, P14016767540972035133.a n = A076003 n

end A076003

/-! ## A076003.P12600952736740325260

`A000079(n)²*A075497(A167614(n+1))`
-/

namespace A076003.P12600952736740325260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A075497 (A167614 (n + 1)).toNat

end

end A076003.P12600952736740325260

namespace A076003

/-- `A000079(n)²*A075497(A167614(n+1))` -/
def P12600952736740325260.Spec : Prop :=
  ∀ n, P12600952736740325260.a n = A076003 n

end A076003

/-! ## A076003.P15573270956000916840

`A075503(∑[n+2]+4)`
-/

namespace A076003.P15573270956000916840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075503 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A076003.P15573270956000916840

namespace A076003

/-- `A075503(∑[n+2]+4)` -/
def P15573270956000916840.Spec : Prop :=
  ∀ n, P15573270956000916840.a n = A076003 n

end A076003

/-!
# A076004: Fourth column of triangle A075503.

The programs for A076004, there is no canonical definition to state claims against.
-/

/-! ## A076004.P559307043974124832

`8^n*∑[A016269(n)]`
-/

namespace A076004.P559307043974124832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076004.P559307043974124832

/-! ## A076004.P11381971919362472559

`8^n*A000453(n+4)`
-/

namespace A076004.P11381971919362472559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000453 (n + 4)

end

end A076004.P11381971919362472559

/-! ## A076004.P17780909631046199568

`A000079(n)*A075907(n)`
-/

namespace A076004.P17780909631046199568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A075907 n

end

end A076004.P17780909631046199568

/-! ## A076004.P4105227258164400297

`A000079(n)²*A025966(n)`
-/

namespace A076004.P4105227258164400297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A025966 n

end

end A076004.P4105227258164400297

/-! ## A076004.P7694301679121431712

`record[A262616(n)]*A025966(n)`
-/

namespace A076004.P7694301679121431712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A025966 n

end

end A076004.P7694301679121431712

/-! ## A076004.P14076710013073034103

`A000079(2*n)*A025966(n)`
-/

namespace A076004.P14076710013073034103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A025966 n

end

end A076004.P14076710013073034103

/-! ## A076004.P16124878533743707355

`A011782(n+1)²*A025966(n)`
-/

namespace A076004.P16124878533743707355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 * A025966 n

end

end A076004.P16124878533743707355

/-! ## A076004.P2173266512994598670

`A011782(2*n+1)*A025966(n)`
-/

namespace A076004.P2173266512994598670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A025966 n

end

end A076004.P2173266512994598670

/-! ## A076004.P7058620615971074994

`A000453(n+4)*A017929(2*n)`
-/

namespace A076004.P7058620615971074994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A017929 (2 * n)

end

end A076004.P7058620615971074994

/-! ## A076004.P15322305753326682617

`A000079(n)*A000453(n+4)*A000079(n)²`
-/

namespace A076004.P15322305753326682617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000453 (n + 4) * A000079 n ^ 2

end

end A076004.P15322305753326682617

/-!
# A076005: Fifth column of triangle A075503.

The programs for A076005, there is no canonical definition to state claims against.
-/

/-! ## A076005.P3956162634667352123

`4^n*A075510(n)`
-/

namespace A076005.P3956162634667352123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A075510 n

end

end A076005.P3956162634667352123

/-! ## A076005.P4199825584187020351

`8^n*∑[A025211(n)]`
-/

namespace A076005.P4199825584187020351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076005.P4199825584187020351

/-! ## A076005.P11948313698234725225

`8^n*A000481(n+5)`
-/

namespace A076005.P11948313698234725225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000481 (n + 5)

end

end A076005.P11948313698234725225

/-! ## A076005.P15171310012828586194

`2^n*A056511(2*n+9)*4^n`
-/

namespace A076005.P15171310012828586194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056511 (2 * n + 9) * (4 ^ n : ℤ)

end

end A076005.P15171310012828586194

/-! ## A076005.P10316588538352690196

`sqrt(A000302(n))*A075908(n)`
-/

namespace A076005.P10316588538352690196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) * (A075908 n : ℝ)

end

end A076005.P10316588538352690196

/-! ## A076005.P7563153329511125643

`4^n*A075497(A167499(n+3))`
-/

namespace A076005.P7563153329511125643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A075497 (A167499 (n + 3)).toNat

end

end A076005.P7563153329511125643

/-! ## A076005.P15426224066841266711

`A075918(n)/A075916(n)*A076003(n)`
-/

namespace A076005.P15426224066841266711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075918 n : ℚ) / (A075916 n : ℚ) * (A076003 n : ℚ)

end

end A076005.P15426224066841266711

/-! ## A076005.P16512747988872429600

`A000079(n)*A000481(n+5)*A000079(n)²`
-/

namespace A076005.P16512747988872429600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000481 (n + 5) * A000079 n ^ 2

end

end A076005.P16512747988872429600

/-! ## A076005.P4241043497425469550

`A075503(A155212(n)+13)`
-/

namespace A076005.P4241043497425469550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075503 (A155212 n + 13).toNat

end

end A076005.P4241043497425469550

/-! ## A076005.P4255450038262591999

`A075503(A000217(n+4)+5)`
-/

namespace A076005.P4255450038262591999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075503 (A000217 (n + 4) + 5).toNat

end

end A076005.P4255450038262591999

/-!
# A076006: Sixth column of triangle A075503.

The programs for A076006, there is no canonical definition to state claims against.
-/

/-! ## A076006.P755433629242993775

`4^n*A075511(n)`
-/

namespace A076006.P755433629242993775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A075511 n

end

end A076006.P755433629242993775

/-! ## A076006.P4230117919283524311

`8^n*A000770(n+6)`
-/

namespace A076006.P4230117919283524311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000770 (n + 6)

end

end A076006.P4230117919283524311

/-! ## A076006.P18300480417763889826

`A000079(n)*A075909(n)`
-/

namespace A076006.P18300480417763889826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A075909 n

end

end A076006.P18300480417763889826

/-! ## A076006.P15681166987081915128

`Δ[A000225(n)]*A075909(n)`
-/

namespace A076006.P15681166987081915128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A075909 n

end

end A076006.P15681166987081915128

/-! ## A076006.P15086399276812461006

`A011782(n+1)*A075909(n)`
-/

namespace A076006.P15086399276812461006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A075909 n

end

end A076006.P15086399276812461006

/-! ## A076006.P16725359944450145765

`A000770(n+6)*A075503(A000124(n))`
-/

namespace A076006.P16725359944450145765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A075503 (A000124 n).toNat

end

end A076006.P16725359944450145765

/-! ## A076006.P13368817671329821955

`A000079(n)*A000770(n+6)*A000079(n)²`
-/

namespace A076006.P13368817671329821955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000770 (n + 6) * A000079 n ^ 2

end

end A076006.P13368817671329821955

/-!
# A076007: Seventh column of triangle A075503.

The programs for A076007, there is no canonical definition to state claims against.
-/

/-! ## A076007.P14026955312326619502

`2^n*A075910(n)`
-/

namespace A076007.P14026955312326619502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075910 n

end

end A076007.P14026955312326619502

/-! ## A076007.P13119323985237772288

`4^n*A075512(n)`
-/

namespace A076007.P13119323985237772288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A075512 n

end

end A076007.P13119323985237772288

/-! ## A076007.P7491266685919696758

`8^n*A000771(n+7)`
-/

namespace A076007.P7491266685919696758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000771 (n + 7)

end

end A076007.P7491266685919696758

/-! ## A076007.P16920201392719805417

`A000771(n+7)*A001018(n)`
-/

namespace A076007.P16920201392719805417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A001018 n

end

end A076007.P16920201392719805417

/-! ## A076007.P4385322704641796492

`A075920(n)/3^n*A000079(n)²`
-/

namespace A076007.P4385322704641796492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (3 ^ n : ℚ) * (A000079 n ^ 2 : ℚ)

end

end A076007.P4385322704641796492

/-! ## A076007.P10547152769672107815

`A075920(n)/3^n*A011782(n+1)²`
-/

namespace A076007.P10547152769672107815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (3 ^ n : ℚ) * (A011782 (n + 1) ^ 2 : ℚ)

end

end A076007.P10547152769672107815

/-! ## A076007.P18376039903436642508

`A000771(n+7)*A075503(A000124(n))`
-/

namespace A076007.P18376039903436642508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075503 (A000124 n).toNat

end

end A076007.P18376039903436642508

/-! ## A076007.P9361832730920917759

`A075503(A056119(n)+28)`
-/

namespace A076007.P9361832730920917759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075503 (A056119 n + 28).toNat

end

end A076007.P9361832730920917759

/-!
# A076008: Second column of triangle A075504.

The programs for A076008, the canonical program `A076008.P11064393522013793916` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076008 has offset 0).

The definition of A076008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076008.P16198191553381563841

`ogf(1/(1-27x+162x^2))`
-/

namespace A076008.P16198191553381563841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -27, 162] n

end

end A076008.P16198191553381563841

namespace A076008

/-- `ogf(1/(1-27x+162x^2))` -/
def P16198191553381563841.Spec : Prop :=
  ∀ n, P16198191553381563841.a n = A076008 n

end A076008

/-! ## A076008.P11064393522013793916

`27*a(n-1)-162*a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076008

/-- `27*a(n-1)-162*a(n-2)` -/
def P11064393522013793916.Spec : Prop :=
  ∀ n, P11064393522013793916.a n = A076008 n

theorem P11064393522013793916.correct : P11064393522013793916.Spec := by
  intro n
  simp only [A076008]

end A076008

/-! ## A076008.P6777517962300746596

`9^n*∑[2^n]`
-/

namespace A076008.P6777517962300746596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076008.P6777517962300746596

namespace A076008

/-- `9^n*∑[2^n]` -/
def P6777517962300746596.Spec : Prop :=
  ∀ n, (P6777517962300746596.a n : ℤ) = A076008 n

end A076008

/-! ## A076008.P5160885665272881821

`9^n+18*a(n-1)` with `a(0)=1`
-/

namespace A076008.P5160885665272881821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 ^ n + 18 * a (n - 1)

end

end A076008.P5160885665272881821

namespace A076008

/-- `9^n+18*a(n-1)` -/
def P5160885665272881821.Spec : Prop :=
  ∀ n, (P5160885665272881821.a n : ℤ) = A076008 n

end A076008

/-! ## A076008.P3406537829786269991

`A126646(n)/9^-n`
-/

namespace A076008.P3406537829786269991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (9 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A076008.P3406537829786269991

namespace A076008

/-- `A126646(n)/9^-n` -/
def P3406537829786269991.Spec : Prop :=
  ∀ n, P3406537829786269991.a n = (A076008 n : ℚ)

end A076008

/-! ## A076008.P9256372954863408759

`record[3^n*A077896(n)]`
-/

namespace A076008.P9256372954863408759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A077896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076008.P9256372954863408759

namespace A076008

/-- `record[3^n*A077896(n)]` -/
def P9256372954863408759.Spec : Prop :=
  ∀ n, P9256372954863408759.a n = A076008 n

end A076008

/-! ## A076008.P728780314035411829

`abs((A131577(n+2)-1)*9^n)`
-/

namespace A076008.P728780314035411829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A131577 (n + 2) - 1) * (9 ^ n : ℤ)|

end

end A076008.P728780314035411829

namespace A076008

/-- `abs((A131577(n+2)-1)*9^n)` -/
def P728780314035411829.Spec : Prop :=
  ∀ n, P728780314035411829.a n = A076008 n

end A076008

/-! ## A076008.P10483386021397865104

`(3^n*record[sqrt(A324866(n+2))])²`
-/

namespace A076008.P10483386021397865104
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A324866 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A076008.P10483386021397865104

namespace A076008

/-- `(3^n*record[sqrt(A324866(n+2))])²` -/
def P10483386021397865104.Spec : Prop :=
  ∀ n, P10483386021397865104.a n = (A076008 n : ℝ)

end A076008

/-! ## A076008.P15381916576455860620

`2^(n+1)*9^n-A001019(n)`
-/

namespace A076008.P15381916576455860620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) * 9 ^ n : ℤ) - A001019 n

end

end A076008.P15381916576455860620

namespace A076008

/-- `2^(n+1)*9^n-A001019(n)` -/
def P15381916576455860620.Spec : Prop :=
  ∀ n, P15381916576455860620.a n = A076008 n

theorem P15381916576455860620.correct : P15381916576455860620.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A076008, Nat.add_sub_cancel, A076008.P15381916576455860620.a, A076008.P11064393522013793916.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A076008, Nat.add_sub_cancel, A076008.P15381916576455860620.a, A076008.P11064393522013793916.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076008

/-! ## A076008.P15933364172550698062

`record[A098355(n)²*A130330(n)]`
-/

namespace A076008.P15933364172550698062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n ^ 2 * A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076008.P15933364172550698062

namespace A076008

/-- `record[A098355(n)²*A130330(n)]` -/
def P15933364172550698062.Spec : Prop :=
  ∀ n, P15933364172550698062.a n = A076008 n

end A076008

/-!
# A076009: Third column of triangle A075504.

The programs for A076009, the canonical program `A076009.P6642028915607334472` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076009 has offset 0).

The definition of A076009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076009.P6642028915607334472

`(9^n-8*18^n+9*27^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076009

/-- `(9^n-8*18^n+9*27^n)/2` -/
def P6642028915607334472.Spec : Prop :=
  ∀ n, P6642028915607334472.a n = (A076009 n : ℚ)

end A076009

/-! ## A076009.P7719541510787551053

`9^n*A000392(n+3)`
-/

namespace A076009.P7719541510787551053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000392 (n + 3)

end

end A076009.P7719541510787551053

namespace A076009

/-- `9^n*A000392(n+3)` -/
def P7719541510787551053.Spec : Prop :=
  ∀ n, P7719541510787551053.a n = A076009 n

end A076009

/-! ## A076009.P15486366418075187747

`A076008(n)+27*a(n-1)` with `a(0)=1`
-/

namespace A076009.P15486366418075187747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076008 n + 27 * a (n - 1)

end

end A076009.P15486366418075187747

namespace A076009

/-- `A076008(n)+27*a(n-1)` -/
def P15486366418075187747.Spec : Prop :=
  ∀ n, P15486366418075187747.a n = A076009 n

end A076009

/-! ## A076009.P17511941716625599974

`A000244(n)*A017933(n)`
-/

namespace A076009.P17511941716625599974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A017933 n

end

end A076009.P17511941716625599974

namespace A076009

/-- `A000244(n)*A017933(n)` -/
def P17511941716625599974.Spec : Prop :=
  ∀ n, P17511941716625599974.a n = A076009 n

end A076009

/-! ## A076009.P8290655815396340429

`record[A254006(n)]*A017933(n)`
-/

namespace A076009.P8290655815396340429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A017933 n

end

end A076009.P8290655815396340429

namespace A076009

/-- `record[A254006(n)]*A017933(n)` -/
def P8290655815396340429.Spec : Prop :=
  ∀ n, P8290655815396340429.a n = A076009 n

end A076009

/-! ## A076009.P8932745448748819543

`A017933(n)*A254006(2*n)`
-/

namespace A076009.P8932745448748819543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017933 n * A254006 (2 * n)

end

end A076009.P8932745448748819543

namespace A076009

/-- `A017933(n)*A254006(2*n)` -/
def P8932745448748819543.Spec : Prop :=
  ∀ n, P8932745448748819543.a n = A076009 n

end A076009

/-! ## A076009.P13874325193214749983

`A000244(n)²*∑[∑[A027649(n)]]`
-/

namespace A076009.P13874325193214749983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076009.P13874325193214749983

namespace A076009

/-- `A000244(n)²*∑[∑[A027649(n)]]` -/
def P13874325193214749983.Spec : Prop :=
  ∀ n, P13874325193214749983.a n = A076009 n

end A076009

/-! ## A076009.P13400291592321573711

`∑[A001047(n+1)]*A000244(n)²`
-/

namespace A076009.P13400291592321573711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n ^ 2

end

end A076009.P13400291592321573711

namespace A076009

/-- `∑[A001047(n+1)]*A000244(n)²` -/
def P13400291592321573711.Spec : Prop :=
  ∀ n, P13400291592321573711.a n = A076009 n

end A076009

/-! ## A076009.P17159153056390748138

`∑[A001047(n+1)]*A000244(2*n)`
-/

namespace A076009.P17159153056390748138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 (2 * n)

end

end A076009.P17159153056390748138

namespace A076009

/-- `∑[A001047(n+1)]*A000244(2*n)` -/
def P17159153056390748138.Spec : Prop :=
  ∀ n, P17159153056390748138.a n = A076009 n

end A076009

/-! ## A076009.P7899484103584937969

`A075504(A167614(n+1))`
-/

namespace A076009.P7899484103584937969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A167614 (n + 1)).toNat

end

end A076009.P7899484103584937969

namespace A076009

/-- `A075504(A167614(n+1))` -/
def P7899484103584937969.Spec : Prop :=
  ∀ n, P7899484103584937969.a n = A076009 n

end A076009

/-!
# A076010: Fourth column of triangle A075504.

The programs for A076010, there is no canonical definition to state claims against.
-/

/-! ## A076010.P15329950176255514256

`3^n*A028085(n)`
-/

namespace A076010.P15329950176255514256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A028085 n

end

end A076010.P15329950176255514256

/-! ## A076010.P2935823052581942432

`9^n*A000453(n+4)`
-/

namespace A076010.P2935823052581942432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000453 (n + 4)

end

end A076010.P2935823052581942432

/-! ## A076010.P15648070344418909712

`∑[A016269(n)]*A001019(n)`
-/

namespace A076010.P15648070344418909712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001019 n

end

end A076010.P15648070344418909712

/-! ## A076010.P2625680957691550843

`A000244(n)²*∑[A016269(n)]`
-/

namespace A076010.P2625680957691550843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076010.P2625680957691550843

/-! ## A076010.P2856945825801053090

`∑[A016269(n)]*A000244(2*n)`
-/

namespace A076010.P2856945825801053090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 (2 * n)

end

end A076010.P2856945825801053090

/-! ## A076010.P9665435688905108462

`A000244(n)²*∑[∑[A027650(n)]]`
-/

namespace A076010.P9665435688905108462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076010.P9665435688905108462

/-! ## A076010.P14309975562651693535

`A028085(n)*A175840(A000096(n)-n)`
-/

namespace A076010.P14309975562651693535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028085 n * A175840 (A000096 n - (n : ℤ)).toNat

end

end A076010.P14309975562651693535

/-! ## A076010.P7669057978548350524

`A166552(A005408(n))²*∑[A016269(n)]`
-/

namespace A076010.P7669057978548350524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (A005408 n).toNat ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076010.P7669057978548350524

/-! ## A076010.P7826416454188492160

`A000453(n+4)*A075504(A000124(n))`
-/

namespace A076010.P7826416454188492160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A075504 (A000124 n).toNat

end

end A076010.P7826416454188492160

/-! ## A076010.P16154017069655869895

`A075504(A052905(n)+9)`
-/

namespace A076010.P16154017069655869895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A052905 n + 9).toNat

end

end A076010.P16154017069655869895

/-!
# A076011: Fifth column of triangle A075504.

The programs for A076011, there is no canonical definition to state claims against.
-/

/-! ## A076011.P18080469184998191044

`3^n*A075515(n)`
-/

namespace A076011.P18080469184998191044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A075515 n

end

end A076011.P18080469184998191044

/-! ## A076011.P2167331335292786380

`9^n*∑[A025211(n)]`
-/

namespace A076011.P2167331335292786380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076011.P2167331335292786380

/-! ## A076011.P9097194572715263650

`∑[A025211(n)]*A000244(n)²`
-/

namespace A076011.P9097194572715263650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n ^ 2

end

end A076011.P9097194572715263650

/-! ## A076011.P10140748819547023565

`A000244(n)²*A000481(n+5)`
-/

namespace A076011.P10140748819547023565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A000481 (n + 5)

end

end A076011.P10140748819547023565

/-! ## A076011.P5558099204777673812

`∑[A025211(n)]*A000244(2*n)`
-/

namespace A076011.P5558099204777673812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 (2 * n)

end

end A076011.P5558099204777673812

/-! ## A076011.P8284495356077070574

`A000244(2*n)*A000481(n+5)`
-/

namespace A076011.P8284495356077070574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) * A000481 (n + 5)

end

end A076011.P8284495356077070574

/-! ## A076011.P12622012485646471952

`A000244(n)²*A008277(A056000(n)+15)`
-/

namespace A076011.P12622012485646471952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A008277 (A056000 n + 15).toNat

end

end A076011.P12622012485646471952

/-! ## A076011.P3847245706793180005

`A000244(n)²/A000302(n)*A075908(n)`
-/

namespace A076011.P3847245706793180005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 : ℚ) / (A000302 n : ℚ) * (A075908 n : ℚ)

end

end A076011.P3847245706793180005

/-! ## A076011.P13956478930960463134

`A075504(A167499(n+3))`
-/

namespace A076011.P13956478930960463134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A167499 (n + 3)).toNat

end

end A076011.P13956478930960463134

/-! ## A076011.P8049435688181335861

`A075504(A027379(n+2)+8)`
-/

namespace A076011.P8049435688181335861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A027379 (n + 2) + 8).toNat

end

end A076011.P8049435688181335861

/-!
# A076012: Sixth column of triangle A075504.

The programs for A076012, there is no canonical definition to state claims against.
-/

/-! ## A076012.P4007499409688021867

`3^n*A075516(n)`
-/

namespace A076012.P4007499409688021867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A075516 n

end

end A076012.P4007499409688021867

/-! ## A076012.P7899349395322636837

`9^n*A000770(n+6)`
-/

namespace A076012.P7899349395322636837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000770 (n + 6)

end

end A076012.P7899349395322636837

/-! ## A076012.P13926552174558204551

`A000770(n+6)*A075504(A000124(n))`
-/

namespace A076012.P13926552174558204551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A075504 (A000124 n).toNat

end

end A076012.P13926552174558204551

/-! ## A076012.P11276535341889606587

`A075504(A133263(n+5)+4)`
-/

namespace A076012.P11276535341889606587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A133263 (n + 5) + 4).toNat

end

end A076012.P11276535341889606587

/-! ## A076012.P4867259735968628686

`A075504(A055999(n+2)+12)`
-/

namespace A076012.P4867259735968628686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A055999 (n + 2) + 12).toNat

end

end A076012.P4867259735968628686

/-!
# A076013: Seventh column of triangle A075504.

The programs for A076013, there is no canonical definition to state claims against.
-/

/-! ## A076013.P3673127801811853780

`A000771(n+7)*A001019(n)`
-/

namespace A076013.P3673127801811853780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A001019 n

end

end A076013.P3673127801811853780

/-! ## A076013.P4914708289741208417

`A000244(n)²*A000771(n+7)`
-/

namespace A076013.P4914708289741208417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A000771 (n + 7)

end

end A076013.P4914708289741208417

/-! ## A076013.P9262367963809878758

`A000244(2*n)*A000771(n+7)`
-/

namespace A076013.P9262367963809878758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) * A000771 (n + 7)

end

end A076013.P9262367963809878758

/-! ## A076013.P10646867062716003809

`A000771(n+7)*A075504(A000124(n))`
-/

namespace A076013.P10646867062716003809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075504 (A000124 n).toNat

end

end A076013.P10646867062716003809

/-! ## A076013.P10709563970420567918

`A075504(A056119(n)+28)`
-/

namespace A076013.P10709563970420567918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A056119 n + 28).toNat

end

end A076013.P10709563970420567918

/-! ## A076013.P307988201184109717

`A075504(A000124(n+6)+6)`
-/

namespace A076013.P307988201184109717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075504 (A000124 (n + 6) + 6).toNat

end

end A076013.P307988201184109717

/-!
# A076014: Triangle in which m-th entry of n-th row is m^(n-1).

The programs for A076014, the canonical program `A076014.P9805967088304399622` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076014 has offset 1).

The definition of A076014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076014.P9805967088304399622

`(col(n)+1)^row(n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076014

/-- `(col(n)+1)^row(n)` -/
def P9805967088304399622.Spec : Prop :=
  ∀ n, (P9805967088304399622.a n : ℤ) = A076014 (n + 1)

theorem P9805967088304399622.correct : P9805967088304399622.Spec := by
  intro n
  simp only [A076014, Nat.add_sub_cancel]

end A076014

/-! ## A076014.P13823279596819220432

`(1+col(n))^row(n)`
-/

namespace A076014.P13823279596819220432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n) ^ SequenceMachineLib.triRow n

end

end A076014.P13823279596819220432

namespace A076014

/-- `(1+col(n))^row(n)` -/
def P13823279596819220432.Spec : Prop :=
  ∀ n, (P13823279596819220432.a n : ℤ) = A076014 (n + 1)

theorem P13823279596819220432.correct : P13823279596819220432.Spec := by
  intro n
  simp only [A076014, Nat.add_sub_cancel, A076014.P13823279596819220432.a, A076014.P9805967088304399622.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076014

/-! ## A076014.P1061636729240637047

`A002260(n+1)^∑[char[∑[n+1]]]`
-/

namespace A076014.P1061636729240637047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076014.P1061636729240637047

namespace A076014

/-- `A002260(n+1)^∑[char[∑[n+1]]]` -/
def P1061636729240637047.Spec : Prop :=
  ∀ n, P1061636729240637047.a n = A076014 (n + 1)

end A076014

/-! ## A076014.P3002838916431507612

`(A002262(n)+1)^∑[char[∑[n+1]]]`
-/

namespace A076014.P3002838916431507612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076014.P3002838916431507612

namespace A076014

/-- `(A002262(n)+1)^∑[char[∑[n+1]]]` -/
def P3002838916431507612.Spec : Prop :=
  ∀ n, P3002838916431507612.a n = A076014 (n + 1)

end A076014

/-! ## A076014.P11432821354753821870

`A057555(2*n+1)^∑[char[∑[n+1]]]`
-/

namespace A076014.P11432821354753821870
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076014.P11432821354753821870

namespace A076014

/-- `A057555(2*n+1)^∑[char[∑[n+1]]]` -/
def P11432821354753821870.Spec : Prop :=
  ∀ n, P11432821354753821870.a n = A076014 (n + 1)

end A076014

/-! ## A076014.P1728299717218514748

`(1-A057944(n)+n)^∑[char[∑[n+1]]]`
-/

namespace A076014.P1728299717218514748
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076014.P1728299717218514748

namespace A076014

/-- `(1-A057944(n)+n)^∑[char[∑[n+1]]]` -/
def P1728299717218514748.Spec : Prop :=
  ∀ n, P1728299717218514748.a n = A076014 (n + 1)

end A076014

/-! ## A076014.P8775422842168481534

`A002262(comp[∑[n]])^A003056(n)`
-/

namespace A076014.P8775422842168481534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A003056 n : ℤ)

end

end A076014.P8775422842168481534

namespace A076014

/-- `A002262(comp[∑[n]])^A003056(n)` -/
def P8775422842168481534.Spec : Prop :=
  ∀ n, P8775422842168481534.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P13743407505408893420

`A048151(comp[∑[n]])^A003056(n)`
-/

namespace A076014.P13743407505408893420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A003056 n : ℤ)

end

end A076014.P13743407505408893420

namespace A076014

/-- `A048151(comp[∑[n]])^A003056(n)` -/
def P13743407505408893420.Spec : Prop :=
  ∀ n, P13743407505408893420.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P14928702825384522784

`A026100(A026098(n+1))^A003056(n)`
-/

namespace A076014.P14928702825384522784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026100 (A026098 (n + 1)).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A076014.P14928702825384522784

namespace A076014

/-- `A026100(A026098(n+1))^A003056(n)` -/
def P14928702825384522784.Spec : Prop :=
  ∀ n, P14928702825384522784.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P3125616003400734230

`A000169(A002260(n+1))/A002260(n+1)*A051129(n+1)`
-/

namespace A076014.P3125616003400734230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000169 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A051129 (n + 1) : ℚ)

end

end A076014.P3125616003400734230

namespace A076014

/-- `A000169(A002260(n+1))/A002260(n+1)*A051129(n+1)` -/
def P3125616003400734230.Spec : Prop :=
  ∀ n, P3125616003400734230.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P16235048001164293086

`A089072(n+1)/A002260(n+1)`
-/

namespace A076014.P16235048001164293086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089072 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A076014.P16235048001164293086

namespace A076014

/-- `A089072(n+1)/A002260(n+1)` -/
def P16235048001164293086.Spec : Prop :=
  ∀ n, P16235048001164293086.a n = (A076014 (n + 1) : ℚ)

theorem P16235048001164293086.correct : P16235048001164293086.Spec := by
  intro n
  simp only [A076014, Nat.add_sub_cancel, A076014.P16235048001164293086.a, A076014.P9805967088304399622.a, A002260, A002260.P9170571874073898642.a, A089072, A089072.P7848010540190067138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076014

/-! ## A076014.P9035269107579820128

`A028246(n+1)/A019538(n+1)*A089072(n+1)`
-/

namespace A076014.P9035269107579820128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A089072 (n + 1) : ℚ)

end

end A076014.P9035269107579820128

namespace A076014

/-- `A028246(n+1)/A019538(n+1)*A089072(n+1)` -/
def P9035269107579820128.Spec : Prop :=
  ∀ n, P9035269107579820128.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P18417959359541781609

`A075513(n+1)/A130595(n)`
-/

namespace A076014.P18417959359541781609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075513 (n + 1) : ℚ) / (A130595 n : ℚ)

end

end A076014.P18417959359541781609

namespace A076014

/-- `A075513(n+1)/A130595(n)` -/
def P18417959359541781609.Spec : Prop :=
  ∀ n, P18417959359541781609.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P4697639035967433876

`A009998(A245300(n))`
-/

namespace A076014.P4697639035967433876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A245300 n).toNat

end

end A076014.P4697639035967433876

namespace A076014

/-- `A009998(A245300(n))` -/
def P4697639035967433876.Spec : Prop :=
  ∀ n, P4697639035967433876.a n = A076014 (n + 1)

end A076014

/-! ## A076014.P11389654330903321063

`A000005(A059268(n))^A003056(n)`
-/

namespace A076014.P11389654330903321063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A059268 n).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A076014.P11389654330903321063

namespace A076014

/-- `A000005(A059268(n))^A003056(n)` -/
def P11389654330903321063.Spec : Prop :=
  ∀ n, P11389654330903321063.a n = (A076014 (n + 1) : ℚ)

end A076014

/-! ## A076014.P18251748091194701719

`gcd(A089072(n+1), A132945(n))`
-/

namespace A076014.P18251748091194701719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089072 (n + 1)) (A132945 n)

end

end A076014.P18251748091194701719

namespace A076014

/-- `gcd(A089072(n+1), A132945(n))` -/
def P18251748091194701719.Spec : Prop :=
  ∀ n, (P18251748091194701719.a n : ℤ) = A076014 (n + 1)

end A076014

/-!
# A076015: Sum of the (n-1)-th powers of the first n integers.

The programs for A076015, the canonical program `A076015.P5501977318692555955` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076015 has offset 1).

The definition of A076015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076015.P5501977318692555955

`∑{#}[n, (#+1)^n]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076015

/-- `∑{#}[n, (#+1)^n]` -/
def P5501977318692555955.Spec : Prop :=
  ∀ n, (P5501977318692555955.a n : ℤ) = A076015 (n + 1)

theorem P5501977318692555955.correct : P5501977318692555955.Spec := by
  intro n
  simp only [A076015, Nat.add_sub_cancel]

end A076015

/-! ## A076015.P8979580245730690961

`A120490(n+1)-1`
-/

namespace A076015.P8979580245730690961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120490 (n + 1) - 1

end

end A076015.P8979580245730690961

namespace A076015

/-- `A120490(n+1)-1` -/
def P8979580245730690961.Spec : Prop :=
  ∀ n, P8979580245730690961.a n = A076015 (n + 1)

theorem P8979580245730690961.correct : P8979580245730690961.Spec := by
  intro n
  simp only [A076015, Nat.add_sub_cancel, A076015.P8979580245730690961.a, A076015.P5501977318692555955.f1, A076015.P5501977318692555955.a, A120490, A120490.P1522769705774593033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076015

/-! ## A076015.P6396296966420463177

`2*(n+1)^n-A191686(n+1)`
-/

namespace A076015.P6396296966420463177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ n : ℤ) - A191686 (n + 1)

end

end A076015.P6396296966420463177

namespace A076015

/-- `2*(n+1)^n-A191686(n+1)` -/
def P6396296966420463177.Spec : Prop :=
  ∀ n, P6396296966420463177.a n = A076015 (n + 1)

end A076015

/-! ## A076015.P16880463013262870404

`A215078(A000096(n))+A000169(n+1)`
-/

namespace A076015.P16880463013262870404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (A000096 n).toNat + A000169 (n + 1)

end

end A076015.P16880463013262870404

namespace A076015

/-- `A215078(A000096(n))+A000169(n+1)` -/
def P16880463013262870404.Spec : Prop :=
  ∀ n, P16880463013262870404.a n = A076015 (n + 1)

end A076015

/-! ## A076015.P9499280913484855540

`A192001((n+1)²+n²)`
-/

namespace A076015.P9499280913484855540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192001 ((n + 1) ^ 2 + n ^ 2)

end

end A076015.P9499280913484855540

namespace A076015

/-- `A192001((n+1)²+n²)` -/
def P9499280913484855540.Spec : Prop :=
  ∀ n, P9499280913484855540.a n = A076015 (n + 1)

end A076015

/-!
# A076016: Number of systems with n elements having one binary operation satisfying the equation B(AB)=A (semisymmetric quasigroups).

The programs for A076016, there is no canonical definition to state claims against.
-/

/-! ## A076016.P9407436825114171969

`A093594(A004646(n)+1)`
-/

namespace A076016.P9407436825114171969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (A004646 n + 1).toNat

end

end A076016.P9407436825114171969

/-! ## A076016.P15766591357764860464

`A127277(A026779(n))*A339195(n)`
-/

namespace A076016.P15766591357764860464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127277 (A026779 n).toNat * A339195 n

end

end A076016.P15766591357764860464

/-!
# A076017: Number of nonisomorphic systems with n elements with one binary operation satisfying the equation B(AB)=A (semisymmetric quasigroups).

The programs for A076017, there is no canonical definition to state claims against.
-/

/-! ## A076017.P3439583889063126144

`A002266(A079800(n+1))+A000929(n+1)`
-/

namespace A076017.P3439583889063126144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A079800 (n + 1)).toNat + A000929 (n + 1)

end

end A076017.P3439583889063126144

/-! ## A076017.P14813874197958142218

`A295205(A024427(n+1)+A001414(n+1))`
-/

namespace A076017.P14813874197958142218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A024427 (n + 1) + A001414 (n + 1)).toNat

end

end A076017.P14813874197958142218

/-! ## A076017.P8202878597714491019

`A196957(C(A050048(n+1), A098391(n+1)))`
-/

namespace A076017.P8202878597714491019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (Nat.choose (A050048 (n + 1)).toNat (A098391 (n + 1)).toNat)

end

end A076017.P8202878597714491019

/-! ## A076017.P11132764833475236795

`A000930(A212629(ceil(2^(n-1)))+A137356(n))`
-/

namespace A076017.P11132764833475236795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A212629 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A137356 n).toNat

end

end A076017.P11132764833475236795

/-!
# A076020: Number of systems with n elements with one binary operation satisfying the equation B(AB)=A (semisymmetric quasigroups). This gives numbers of systems which are isomorphic to their transpose but are noncommutative.

The programs for A076020, there is no canonical definition to state claims against.
-/

/-! ## A076020.P7635901491027708047

`∑[A167016(n)]%A000111(n)`
-/

namespace A076020.P7635901491027708047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000111 n)

end

end A076020.P7635901491027708047

/-! ## A076020.P10451380045939300520

`A354842(n)%A112493(A163985(n))`
-/

namespace A076020.P10451380045939300520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354842 n) (A112493 (A163985 n).toNat)

end

end A076020.P10451380045939300520

/-! ## A076020.P8555812476328267763

`A351012(A357644(A053251(2*n+1)))`
-/

namespace A076020.P8555812476328267763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 (A357644 (A053251 (2 * n + 1)).toNat).toNat

end

end A076020.P8555812476328267763

/-! ## A076020.P1744734345463134241

`A237665(A168368(n)+A008307(n+1))`
-/

namespace A076020.P1744734345463134241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 (A168368 n + A008307 (n + 1)).toNat

end

end A076020.P1744734345463134241

/-!
# A076023: Numbers n such that A076022(n)=n.

The programs for A076023, there is no canonical definition to state claims against.
-/

/-! ## A076023.P13565607637475478901

`eq[n+1, A076022(n+1)]+1`
-/

namespace A076023.P13565607637475478901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076023.P13565607637475478901

/-! ## A076023.P11802694277232588219

`eq[2*n, A073662(A028310(n))]`
-/

namespace A076023.P11802694277232588219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073662 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076023.P11802694277232588219

/-! ## A076023.P17879364875472472716

`eq[n, A073662(A065033(n))]/2`
-/

namespace A076023.P17879364875472472716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073662 (A065033 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A076023.P17879364875472472716

/-! ## A076023.P16868225080245108853

`eq[2*n, A073662(A065033(2*n))]`
-/

namespace A076023.P16868225080245108853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073662 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076023.P16868225080245108853

/-!
# A076024: a(n) = (2^n + 4)*(2^n - 1)/6.

The programs for A076024, the canonical program `A076024.P1602225275384311991` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076024 has offset 0).

The definition of A076024 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A076024.anchor (n : ℕ) : (A076024 n : ℚ) = ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℚ) / 6` in `Proof.A076.A076024`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076024.P832177135754338960

`ogf((x-3x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A076024.P832177135754338960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -7, 14, -8] n

end

end A076024.P832177135754338960

namespace A076024

/-- `ogf((x-3x^2)/(1-7x+14x^2-8x^3))` -/
def P832177135754338960.Spec : Prop :=
  ∀ n, P832177135754338960.a n = A076024 n

end A076024

/-! ## A076024.P1602225275384311991

`(2^n+4)*(2^n-1)/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076024

/-- `(2^n+4)*(2^n-1)/6` -/
def P1602225275384311991.Spec : Prop :=
  ∀ n, P1602225275384311991.a n = (A076024 n : ℚ)

end A076024

/-! ## A076024.P11574995472468577759

`∑[ogf((x-3x^2)/(1-6x+8x^2))]`
-/

namespace A076024.P11574995472468577759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076024.P11574995472468577759

namespace A076024

/-- `∑[ogf((x-3x^2)/(1-6x+8x^2))]` -/
def P11574995472468577759.Spec : Prop :=
  ∀ n, P11574995472468577759.a n = A076024 n

end A076024

/-! ## A076024.P7311282207774178414

`4*a(n-1)-2^(n-1)+2` with `a(0)=0`
-/

namespace A076024.P7311282207774178414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2

end

end A076024.P7311282207774178414

namespace A076024

/-- `4*a(n-1)-2^(n-1)+2` -/
def P7311282207774178414.Spec : Prop :=
  ∀ n, P7311282207774178414.a n = (A076024 n : ℚ)

end A076024

/-! ## A076024.P5214947977112120148

`∑[floor(atan(n)+2^(n-1))*round(2^(n-2))]`
-/

namespace A076024.P5214947977112120148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋ * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076024.P5214947977112120148

namespace A076024

/-- `∑[floor(atan(n)+2^(n-1))*round(2^(n-2))]` -/
def P5214947977112120148.Spec : Prop :=
  ∀ n, P5214947977112120148.a n = A076024 n

end A076024

/-! ## A076024.P14946139532260486104

`or(2^n, ∑[floor(((2^n-1)/2)²)/2])-1`
-/

namespace A076024.P14946139532260486104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(((2 ^ n : ℤ) - 1 : ℚ) / 2) ^ 2⌋ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) - 1

end

end A076024.P14946139532260486104

namespace A076024

/-- `or(2^n, ∑[floor(((2^n-1)/2)²)/2])-1` -/
def P14946139532260486104.Spec : Prop :=
  ∀ n, P14946139532260486104.a n = A076024 n

end A076024

/-! ## A076024.P13065852351047743343

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A076024.P13065852351047743343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076024.P13065852351047743343

namespace A076024

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P13065852351047743343.Spec : Prop :=
  ∀ n, P13065852351047743343.a n = A076024 n

end A076024

/-! ## A076024.P14380513808121846705

`xor((2^n-1)*(2^n-2)/6, 2^n)-1`
-/

namespace A076024.P14380513808121846705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6))) (2 ^ n : ℤ) - 1

end

end A076024.P14380513808121846705

namespace A076024

/-- `xor((2^n-1)*(2^n-2)/6, 2^n)-1` -/
def P14380513808121846705.Spec : Prop :=
  ∀ n, P14380513808121846705.a n = A076024 n

end A076024

/-! ## A076024.P6815143992806569968

`A007581(n)-1`
-/

namespace A076024.P6815143992806569968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - 1

end

end A076024.P6815143992806569968

namespace A076024

/-- `A007581(n)-1` -/
def P6815143992806569968.Spec : Prop :=
  ∀ n, P6815143992806569968.a n = A076024 n

end A076024

/-! ## A076024.P14831467144448632479

`∑[abs(Δ[A124303(n)])]`
-/

namespace A076024.P14831467144448632479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076024.P14831467144448632479

namespace A076024

/-- `∑[abs(Δ[A124303(n)])]` -/
def P14831467144448632479.Spec : Prop :=
  ∀ n, P14831467144448632479.a n = A076024 n

end A076024

/-! ## A076024.P17766456616261751990

`A124303(n+1)-1`
-/

namespace A076024.P17766456616261751990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 1) - 1

end

end A076024.P17766456616261751990

namespace A076024

/-- `A124303(n+1)-1` -/
def P17766456616261751990.Spec : Prop :=
  ∀ n, P17766456616261751990.a n = A076024 n

end A076024

/-! ## A076024.P4683559588323727281

`A056505(Δ[n²])-1`
-/

namespace A076024.P4683559588323727281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A076024.P4683559588323727281

namespace A076024

/-- `A056505(Δ[n²])-1` -/
def P4683559588323727281.Spec : Prop :=
  ∀ n, P4683559588323727281.a n = A076024 n

end A076024

/-! ## A076024.P13651559183692690744

`∑{d}[2*n+1, A056478(#)]-1`
-/

namespace A076024.P13651559183692690744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056478 d - 1

end

end A076024.P13651559183692690744

namespace A076024

/-- `∑{d}[2*n+1, A056478(#)]-1` -/
def P13651559183692690744.Spec : Prop :=
  ∀ n, P13651559183692690744.a n = A076024 n

end A076024

/-! ## A076024.P16538142277969928880

`A006095(n)+A000225(n)`
-/

namespace A076024.P16538142277969928880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A000225 n

end

end A076024.P16538142277969928880

namespace A076024

/-- `A006095(n)+A000225(n)` -/
def P16538142277969928880.Spec : Prop :=
  ∀ n, P16538142277969928880.a n = A076024 n

end A076024

/-! ## A076024.P12916189531032903888

`record[A124303(A008611(n))-1]`
-/

namespace A076024.P12916189531032903888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (A008611 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076024.P12916189531032903888

namespace A076024

/-- `record[A124303(A008611(n))-1]` -/
def P12916189531032903888.Spec : Prop :=
  ∀ n, P12916189531032903888.a n = A076024 n

end A076024

/-! ## A076024.P15089612063426130995

`A000918(n)+A006095(n)+1`
-/

namespace A076024.P15089612063426130995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (A006095 n + 1)

end

end A076024.P15089612063426130995

namespace A076024

/-- `A000918(n)+A006095(n)+1` -/
def P15089612063426130995.Spec : Prop :=
  ∀ n, P15089612063426130995.a n = A076024 n

end A076024

/-! ## A076024.P11424300130964884101

`A000079(n)+A006095(n)-1`
-/

namespace A076024.P11424300130964884101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A006095 n - 1)

end

end A076024.P11424300130964884101

namespace A076024

/-- `A000079(n)+A006095(n)-1` -/
def P11424300130964884101.Spec : Prop :=
  ∀ n, P11424300130964884101.a n = A076024 n

end A076024

/-! ## A076024.P4844070175106259709

`A000051(n)+A006095(n)-2`
-/

namespace A076024.P4844070175106259709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A006095 n - 2)

end

end A076024.P4844070175106259709

namespace A076024

/-- `A000051(n)+A006095(n)-2` -/
def P4844070175106259709.Spec : Prop :=
  ∀ n, P4844070175106259709.a n = A076024 n

end A076024

/-! ## A076024.P2653558134695736163

`A000295(n)+A006095(n)+n`
-/

namespace A076024.P2653558134695736163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (A006095 n + (n : ℤ))

end

end A076024.P2653558134695736163

namespace A076024

/-- `A000295(n)+A006095(n)+n` -/
def P2653558134695736163.Spec : Prop :=
  ∀ n, P2653558134695736163.a n = A076024 n

end A076024

/-! ## A076024.P13857123894598839077

`A316742(2*n+1)+A006095(n)`
-/

namespace A076024.P13857123894598839077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (2 * n + 1) + A006095 n

end

end A076024.P13857123894598839077

namespace A076024

/-- `A316742(2*n+1)+A006095(n)` -/
def P13857123894598839077.Spec : Prop :=
  ∀ n, P13857123894598839077.a n = A076024 n

end A076024

/-!
# A076025: Expansion of g.f.: (1-3*x*C)/(1-4*x*C) where C = (1 - sqrt(1-4*x))/(2*x) = g.f. for Catalan numbers A000108.

The programs for A076025, the canonical program `A076025.P10278836771716070548` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076025 has offset 0).

The definition of A076025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076025.P15077050890216020010

`ceil(A104530(n)/3)`
-/

namespace A076025.P15077050890216020010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104530 n : ℚ) / 3⌉

end

end A076025.P15077050890216020010

namespace A076025

/-- `ceil(A104530(n)/3)` -/
def P15077050890216020010.Spec : Prop :=
  ∀ n, P15077050890216020010.a n = A076025 n

end A076025

/-! ## A076025.P10278836771716070548

`ceil(A076035(n)/4)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076025

/-- `ceil(A076035(n)/4)` -/
def P10278836771716070548.Spec : Prop :=
  ∀ n, P10278836771716070548.a n = A076025 n

theorem P10278836771716070548.correct : P10278836771716070548.Spec := by
  intro n
  simp only [A076025]

end A076025

/-! ## A076025.P11691010128065953892

`gcd(A076035(n), A104530(n))`
-/

namespace A076025.P11691010128065953892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076035 n) (A104530 n)

end

end A076025.P11691010128065953892

namespace A076025

/-- `gcd(A076035(n), A104530(n))` -/
def P11691010128065953892.Spec : Prop :=
  ∀ n, (P11691010128065953892.a n : ℤ) = A076025 n

end A076025

/-! ## A076025.P7438669407918120810

`A076035(n)/A000302(n)%6`
-/

namespace A076025.P7438669407918120810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076035 n : ℚ) / (Int.tmod (A000302 n) 6 : ℚ)

end

end A076025.P7438669407918120810

namespace A076025

/-- `A076035(n)/A000302(n)%6` -/
def P7438669407918120810.Spec : Prop :=
  ∀ n, P7438669407918120810.a n = (A076025 n : ℚ)

end A076025

/-! ## A076025.P522908272943030582

`A076035(n)/A036453(n+1)²`
-/

namespace A076025.P522908272943030582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076035 n : ℚ) / (A036453 (n + 1) ^ 2 : ℚ)

end

end A076025.P522908272943030582

namespace A076025

/-- `A076035(n)/A036453(n+1)²` -/
def P522908272943030582.Spec : Prop :=
  ∀ n, P522908272943030582.a n = (A076025 n : ℚ)

end A076025

/-! ## A076025.P2483106365101631744

`A104530(n)/A014963(A048883(n))`
-/

namespace A076025.P2483106365101631744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104530 n : ℚ) / (A014963 (A048883 n).toNat : ℚ)

end

end A076025.P2483106365101631744

namespace A076025

/-- `A104530(n)/A014963(A048883(n))` -/
def P2483106365101631744.Spec : Prop :=
  ∀ n, P2483106365101631744.a n = (A076025 n : ℚ)

end A076025

/-! ## A076025.P13928677008635941597

`A076035(n)/gcd(4, A115970(n))`
-/

namespace A076025.P13928677008635941597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076035 n : ℚ) / (Int.gcd 4 (A115970 n) : ℚ)

end

end A076025.P13928677008635941597

namespace A076025

/-- `A076035(n)/gcd(4, A115970(n))` -/
def P13928677008635941597.Spec : Prop :=
  ∀ n, P13928677008635941597.a n = (A076025 n : ℚ)

end A076025

/-! ## A076025.P8734486970062698880

`A011782(n)/A000142(n)*A308939(n)`
-/

namespace A076025.P8734486970062698880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A000142 n : ℚ) * (A308939 n : ℚ)

end

end A076025.P8734486970062698880

namespace A076025

/-- `A011782(n)/A000142(n)*A308939(n)` -/
def P8734486970062698880.Spec : Prop :=
  ∀ n, P8734486970062698880.a n = (A076025 n : ℚ)

end A076025

/-!
# A076026: Expansion of g.f.: (1-4*x*C)/(1-5*x*C) where C = (1/2-1/2*(1-4*x)^(1/2))/x = g.f. for Catalan numbers A000108.

The programs for A076026, the canonical program `A076026.P18203062621927485031` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076026 has offset 0).

The definition of A076026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076026.P16714352816658670105

`A369432(A004273(n))`
-/

namespace A076026.P16714352816658670105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369432 (A004273 n).toNat

end

end A076026.P16714352816658670105

namespace A076026

/-- `A369432(A004273(n))` -/
def P16714352816658670105.Spec : Prop :=
  ∀ n, P16714352816658670105.a n = A076026 n

end A076026

/-! ## A076026.P18203062621927485031

`ceil(A104531(n)/4)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076026

/-- `ceil(A104531(n)/4)` -/
def P18203062621927485031.Spec : Prop :=
  ∀ n, P18203062621927485031.a n = A076026 n

theorem P18203062621927485031.correct : P18203062621927485031.Spec := by
  intro n
  simp only [A076026]

end A076026

/-! ## A076026.P4183337132702362136

`ceil(A054341(2*n)/5)`
-/

namespace A076026.P4183337132702362136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054341 (2 * n) : ℚ) / 5⌉

end

end A076026.P4183337132702362136

namespace A076026

/-- `ceil(A054341(2*n)/5)` -/
def P4183337132702362136.Spec : Prop :=
  ∀ n, P4183337132702362136.a n = A076026 n

end A076026

/-! ## A076026.P12678775165194225286

`ceil(A100087(2*n+1)/10)`
-/

namespace A076026.P12678775165194225286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100087 (2 * n + 1) : ℚ) / 10⌉

end

end A076026.P12678775165194225286

namespace A076026

/-- `ceil(A100087(2*n+1)/10)` -/
def P12678775165194225286.Spec : Prop :=
  ∀ n, P12678775165194225286.a n = A076026 n

end A076026

/-! ## A076026.P17197064645144682043

`A104531(A028310(n))/4`
-/

namespace A076026.P17197064645144682043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104531 (A028310 n).toNat : ℚ) / 4

end

end A076026.P17197064645144682043

namespace A076026

/-- `A104531(A028310(n))/4` -/
def P17197064645144682043.Spec : Prop :=
  ∀ n, P17197064645144682043.a n = (A076026 n : ℚ)

end A076026

/-! ## A076026.P5955002156054601271

`A054341(2*gcd(n, A008458(n)))/5`
-/

namespace A076026.P5955002156054601271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054341 (2 * Int.gcd (n : ℤ) (A008458 n)) : ℚ) / 5

end

end A076026.P5955002156054601271

namespace A076026

/-- `A054341(2*gcd(n, A008458(n)))/5` -/
def P5955002156054601271.Spec : Prop :=
  ∀ n, P5955002156054601271.a n = (A076026 n : ℚ)

end A076026

/-! ## A076026.P15027196722009875480

`A100087(2*n)/A176742(2*n)²`
-/

namespace A076026.P15027196722009875480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100087 (2 * n) : ℚ) / (A176742 (2 * n) ^ 2 : ℚ)

end

end A076026.P15027196722009875480

namespace A076026

/-- `A100087(2*n)/A176742(2*n)²` -/
def P15027196722009875480.Spec : Prop :=
  ∀ n, P15027196722009875480.a n = (A076026 n : ℚ)

end A076026

/-! ## A076026.P7560867752826254353

`gcd(A100087(2*n+1)/2, A100087(2*n))`
-/

namespace A076026.P7560867752826254353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A100087 (2 * n + 1) : ℚ) / 2)) (A100087 (2 * n))

end

end A076026.P7560867752826254353

namespace A076026

/-- `gcd(A100087(2*n+1)/2, A100087(2*n))` -/
def P7560867752826254353.Spec : Prop :=
  ∀ n, (P7560867752826254353.a n : ℤ) = A076026 n

end A076026

/-! ## A076026.P17507822606140736194

`A126075(A001844(n)-A008486(n))`
-/

namespace A076026.P17507822606140736194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 (A001844 n - A008486 n).toNat

end

end A076026.P17507822606140736194

namespace A076026

/-- `A126075(A001844(n)-A008486(n))` -/
def P17507822606140736194.Spec : Prop :=
  ∀ n, P17507822606140736194.a n = A076026 n

end A076026

/-!
# A076027: Initial members of groups in A076031.

The programs for A076027, there is no canonical definition to state claims against.
-/

/-! ## A076027.P18327871405280614424

`A076031(∑[n]+1)`
-/

namespace A076027.P18327871405280614424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076027.P18327871405280614424

/-! ## A076027.P5982838558878789617

`A076031(A000124(n))+A000007(n+4)`
-/

namespace A076027.P5982838558878789617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076031 (A000124 n).toNat + A000007 (n + 4)

end

end A076027.P5982838558878789617

/-! ## A076027.P6163108016604490335

`∑[∑[A308625(A157726(n))]]`
-/

namespace A076027.P6163108016604490335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308625 (A157726 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076027.P6163108016604490335

/-! ## A076027.P15745013180189778276

`A118917(A038281(n))+∑[char[C(4, n)]+n]-n`
-/

namespace A076027.P15745013180189778276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A038281 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A076027.P15745013180189778276

/-! ## A076027.P1818197012333669976

`A077168(A186752(n+1))`
-/

namespace A076027.P1818197012333669976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A186752 (n + 1)).toNat

end

end A076027.P1818197012333669976

/-!
# A076028: Final members of groups in A076031.

The programs for A076028, there is no canonical definition to state claims against.
-/

/-! ## A076028.P4460894344287431063

`A076031(∑[n+1])`
-/

namespace A076028.P4460894344287431063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076031 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076028.P4460894344287431063

/-! ## A076028.P15329563080502653993

`A076031(A000217(n+1))+A063524(2*(n+1))`
-/

namespace A076028.P15329563080502653993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076031 (A000217 (n + 1)).toNat + A063524 (2 * (n + 1))

end

end A076028.P15329563080502653993

/-! ## A076028.P16630409270976219371

`A033999(2*(n+1))*A076031(A000217(n+1))`
-/

namespace A076028.P16630409270976219371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A076031 (A000217 (n + 1)).toNat

end

end A076028.P16630409270976219371

/-! ## A076028.P6816775931178193842

`A076031(A000217(n+1))-A019590(2*n+3)`
-/

namespace A076028.P6816775931178193842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076031 (A000217 (n + 1)).toNat - A019590 (2 * n + 3)

end

end A076028.P6816775931178193842

/-! ## A076028.P10625119993921739425

`A057427(3*(n+1))*A076031(A000217(n+1))`
-/

namespace A076028.P10625119993921739425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * (n + 1)) * A076031 (A000217 (n + 1)).toNat

end

end A076028.P10625119993921739425

/-!
# A076029: Products of members of groups in A076031.

The programs for A076029, there is no canonical definition to state claims against.
-/

/-! ## A076029.P16363187646403790721

`A076030(n+1)²`
-/

namespace A076029.P16363187646403790721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076030 (n + 1) ^ 2

end

end A076029.P16363187646403790721

/-! ## A076029.P15145306774893213420

`A076030(n+1)^A020639(A004277(n))`
-/

namespace A076029.P15145306774893213420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076030 (n + 1) : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A076029.P15145306774893213420

/-! ## A076029.P6905721018573692307

`A076030(n+1)^A020639(A008574(n))`
-/

namespace A076029.P6905721018573692307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076030 (n + 1) : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A076029.P6905721018573692307

/-! ## A076029.P1952340760960216665

`A076030(n+1)^A020639(A027689(n))`
-/

namespace A076029.P1952340760960216665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076030 (n + 1) : ℚ) ^ (A020639 (A027689 n).toNat : ℤ)

end

end A076029.P1952340760960216665

/-! ## A076029.P7208436557014593020

`A076030(n+1)^A020639(A311347(n))`
-/

namespace A076029.P7208436557014593020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076030 (n + 1) : ℚ) ^ (A020639 (A311347 n).toNat : ℤ)

end

end A076029.P7208436557014593020

/-!
# A076030: Square roots of products of members of groups in A076031.

The programs for A076030, there is no canonical definition to state claims against.
-/

/-! ## A076030.P16574088522804449183

`sqrt(A076029(n+1))`
-/

namespace A076030.P16574088522804449183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076029 (n + 1) : ℝ)

end

end A076030.P16574088522804449183

/-! ## A076030.P597815485633993397

`root(A076029(n+1), gcd(2, A076098(n)))`
-/

namespace A076030.P597815485633993397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076029 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A076098 n) : ℝ))

end

end A076030.P597815485633993397

/-! ## A076030.P6782874102939678977

`A076029(n+1)^(n/A004277(n))`
-/

namespace A076030.P6782874102939678977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076029 (n + 1) : ℝ) ^ ((n : ℚ) / (A004277 n : ℚ) : ℝ)

end

end A076030.P6782874102939678977

/-!
# A076033: Final members of groups in A076034.

The programs for A076033, there is no canonical definition to state claims against.
-/

/-! ## A076033.P9149349150357337756

`A076034(∑[n+1])`
-/

namespace A076033.P9149349150357337756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076033.P9149349150357337756

/-! ## A076033.P4760303325272043815

`or(1, A076034(C(n+2, 2)))`
-/

namespace A076033.P4760303325272043815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A076034 (Nat.choose (n + 2) 2))

end

end A076033.P4760303325272043815

/-! ## A076033.P16559502858847411269

`record[A076034(A038722(n+1))]`
-/

namespace A076033.P16559502858847411269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076033.P16559502858847411269

/-! ## A076033.P5258773051047283742

`A000027(A076034(C(n+2, 2)))`
-/

namespace A076033.P5258773051047283742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A076034 (Nat.choose (n + 2) 2)).toNat

end

end A076033.P5258773051047283742

/-! ## A076033.P12417217632767236438

`A076034(C(n+2, 2))/A020985(n)²`
-/

namespace A076033.P12417217632767236438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076034 (Nat.choose (n + 2) 2) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A076033.P12417217632767236438

/-! ## A076033.P1581995547934660241

`A076034(C(n+2, 2))%A352115(n+1)`
-/

namespace A076033.P1581995547934660241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076034 (Nat.choose (n + 2) 2)) (A352115 (n + 1))

end

end A076033.P1581995547934660241

/-! ## A076033.P14811468091413997799

`A076034(C(n+2, 2))+2%A017509(n)-2`
-/

namespace A076033.P14811468091413997799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (Nat.choose (n + 2) 2) + (Int.tmod 2 (A017509 n) - 2)

end

end A076033.P14811468091413997799

/-! ## A076033.P10217310637428641960

`record[A076034(A246276(n+1))]`
-/

namespace A076033.P10217310637428641960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076033.P10217310637428641960

/-!
# A076034: Group the natural numbers so that the n-th group contains the smallest set of n relatively prime numbers: (1), (2, 3), (4, 5, 7), (6, 11, 13, 17), (8, 9, 19, 23, 25), (10, 21, 29, 31, 37, 41), ...

The programs for A076034, there is no canonical definition to state claims against.
-/

/-! ## A076034.P17676566332123199744

`A385661(A358874(A385661(A358874(A385661(n+1)))))`
-/

namespace A076034.P17676566332123199744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385661 (A358874 (A385661 (A358874 (A385661 (n + 1)).toNat).toNat).toNat).toNat

end

end A076034.P17676566332123199744

/-! ## A076034.P18052407687786893350

`A358876(A358875(A385661(n+1)))`
-/

namespace A076034.P18052407687786893350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358876 (A358875 (A385661 (n + 1)).toNat).toNat

end

end A076034.P18052407687786893350

/-! ## A076034.P1782971127772130162

`A385661(n+1)+A000007(A018896(n))`
-/

namespace A076034.P1782971127772130162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385661 (n + 1) + A000007 (A018896 n).toNat

end

end A076034.P1782971127772130162

/-! ## A076034.P15197892444523508323

`A385661(n+1)+A079998(A000032(n))`
-/

namespace A076034.P15197892444523508323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385661 (n + 1) + A079998 (A000032 n).toNat

end

end A076034.P15197892444523508323

/-! ## A076034.P13593295671254189338

`A090106(A385661(n+1))`
-/

namespace A076034.P13593295671254189338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A385661 (n + 1)).toNat

end

end A076034.P13593295671254189338

/-!
# A076035: Expansion of g.f. 1/(1-4*x*C) where C = (1/2-1/2*(1-4*x)^(1/2))/x = g.f. for Catalan numbers A000108.

The programs for A076035, the canonical program `A076035.P12093958128708761214` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076035 has offset 0).

The definition of A076035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076035.P12093958128708761214

`(16*a(n-1)-4*A000108(n-1))/3` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076035

/-- `(16*a(n-1)-4*A000108(n-1))/3` -/
def P12093958128708761214.Spec : Prop :=
  ∀ n, P12093958128708761214.a n = (A076035 n : ℚ)

end A076035

/-! ## A076035.P12183108091230004212

`A117380(∑[n])`
-/

namespace A076035.P12183108091230004212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076035.P12183108091230004212

namespace A076035

/-- `A117380(∑[n])` -/
def P12183108091230004212.Spec : Prop :=
  ∀ n, P12183108091230004212.a n = A076035 n

end A076035

/-! ## A076035.P11613496776965794442

`record[A117380(n)]`
-/

namespace A076035.P11613496776965794442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076035.P11613496776965794442

namespace A076035

/-- `record[A117380(n)]` -/
def P11613496776965794442.Spec : Prop :=
  ∀ n, P11613496776965794442.a n = A076035 n

end A076035

/-! ## A076035.P9580337011865101617

`A000302(n)%6*A076025(n)`
-/

namespace A076035.P9580337011865101617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n) 6 * A076025 n

end

end A076035.P9580337011865101617

namespace A076035

/-- `A000302(n)%6*A076025(n)` -/
def P9580337011865101617.Spec : Prop :=
  ∀ n, P9580337011865101617.a n = A076035 n

end A076035

/-! ## A076035.P7150498410561923882

`A036453(n+1)²*A076025(n)`
-/

namespace A076035.P7150498410561923882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A076025 n

end

end A076035.P7150498410561923882

namespace A076035

/-- `A036453(n+1)²*A076025(n)` -/
def P7150498410561923882.Spec : Prop :=
  ∀ n, P7150498410561923882.a n = A076035 n

end A076035

/-! ## A076035.P4847775336517010399

`lcm(A042948(A001316(n)), A076025(n))`
-/

namespace A076035.P4847775336517010399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A042948 (A001316 n).toNat) (A076025 n)

end

end A076035.P4847775336517010399

namespace A076035

/-- `lcm(A042948(A001316(n)), A076025(n))` -/
def P4847775336517010399.Spec : Prop :=
  ∀ n, (P4847775336517010399.a n : ℤ) = A076035 n

end A076035

/-! ## A076035.P6428417712338000580

`A104530(n)+A076025(n)%A104530(n)`
-/

namespace A076035.P6428417712338000580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104530 n + Int.tmod (A076025 n) (A104530 n)

end

end A076035.P6428417712338000580

namespace A076035

/-- `A104530(n)+A076025(n)%A104530(n)` -/
def P6428417712338000580.Spec : Prop :=
  ∀ n, P6428417712338000580.a n = A076035 n

end A076035

/-! ## A076035.P3515115349402724611

`A151162(2*n)/A000244(n)`
-/

namespace A076035.P3515115349402724611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151162 (2 * n) : ℚ) / (A000244 n : ℚ)

end

end A076035.P3515115349402724611

namespace A076035

/-- `A151162(2*n)/A000244(n)` -/
def P3515115349402724611.Spec : Prop :=
  ∀ n, P3515115349402724611.a n = (A076035 n : ℚ)

end A076035

/-!
# A076036: G.f.: 1/(1 - 5*x*C(x)), where C(x) = (1 - sqrt(1 - 4*x))/(2*x) = g.f. for the Catalan numbers A000108.

The programs for A076036, the canonical program `A076036.P13911866391085704958` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076036 has offset 0).

The definition of A076036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076036.P13911866391085704958

`(25*a(n-1)-5*A000108(n-1))/4` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076036

/-- `(25*a(n-1)-5*A000108(n-1))/4` -/
def P13911866391085704958.Spec : Prop :=
  ∀ n, P13911866391085704958.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P15038801105774133615

`A054341(2*n)`
-/

namespace A076036.P15038801105774133615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 (2 * n)

end

end A076036.P15038801105774133615

namespace A076036

/-- `A054341(2*n)` -/
def P15038801105774133615.Spec : Prop :=
  ∀ n, P15038801105774133615.a n = A076036 n

end A076036

/-! ## A076036.P11610450610800417288

`A100087(Δ[n²])/2`
-/

namespace A076036.P11610450610800417288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A076036.P11610450610800417288

namespace A076036

/-- `A100087(Δ[n²])/2` -/
def P11610450610800417288.Spec : Prop :=
  ∀ n, P11610450610800417288.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P11246599325518868497

`record[A054341(and(n, n+1))]`
-/

namespace A076036.P11246599325518868497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076036.P11246599325518868497

namespace A076036

/-- `record[A054341(and(n, n+1))]` -/
def P11246599325518868497.Spec : Prop :=
  ∀ n, P11246599325518868497.a n = A076036 n

end A076036

/-! ## A076036.P1266788150086875761

`record[A054341(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A076036.P1266788150086875761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A054341 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076036.P1266788150086875761

namespace A076036

/-- `record[A054341(C(n, a(n-1)))]` -/
def P1266788150086875761.Spec : Prop :=
  ∀ n, P1266788150086875761.a n = A076036 n

end A076036

/-! ## A076036.P4913521898545277410

`record[A054341(A014681(n))]`
-/

namespace A076036.P4913521898545277410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076036.P4913521898545277410

namespace A076036

/-- `record[A054341(A014681(n))]` -/
def P4913521898545277410.Spec : Prop :=
  ∀ n, P4913521898545277410.a n = A076036 n

end A076036

/-! ## A076036.P12401876313489822586

`A100098(2*n+1)-A100099(2*n)`
-/

namespace A076036.P12401876313489822586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100098 (2 * n + 1) - A100099 (2 * n)

end

end A076036.P12401876313489822586

namespace A076036

/-- `A100098(2*n+1)-A100099(2*n)` -/
def P12401876313489822586.Spec : Prop :=
  ∀ n, P12401876313489822586.a n = A076036 n

end A076036

/-! ## A076036.P17660943534366815509

`A100099(2*n+1)-A100099(2*n)`
-/

namespace A076036.P17660943534366815509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100099 (2 * n + 1) - A100099 (2 * n)

end

end A076036.P17660943534366815509

namespace A076036

/-- `A100099(2*n+1)-A100099(2*n)` -/
def P17660943534366815509.Spec : Prop :=
  ∀ n, P17660943534366815509.a n = A076036 n

end A076036

/-! ## A076036.P15748097622134986217

`(A100098(2*n)+A100067(2*n))/2`
-/

namespace A076036.P15748097622134986217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100098 (2 * n) + A100067 (2 * n) : ℚ) / 2

end

end A076036.P15748097622134986217

namespace A076036

/-- `(A100098(2*n)+A100067(2*n))/2` -/
def P15748097622134986217.Spec : Prop :=
  ∀ n, P15748097622134986217.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P17001121609867768067

`A100098(2*n)+A100099(2*n)/2`
-/

namespace A076036.P17001121609867768067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100098 (2 * n) : ℚ) + (A100099 (2 * n) : ℚ) / 2

end

end A076036.P17001121609867768067

namespace A076036

/-- `A100098(2*n)+A100099(2*n)/2` -/
def P17001121609867768067.Spec : Prop :=
  ∀ n, P17001121609867768067.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P4924728832488549125

`A127361(2*n)+A100099(2*n)/2`
-/

namespace A076036.P4924728832488549125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127361 (2 * n) : ℚ) + (A100099 (2 * n) : ℚ) / 2

end

end A076036.P4924728832488549125

namespace A076036

/-- `A127361(2*n)+A100099(2*n)/2` -/
def P4924728832488549125.Spec : Prop :=
  ∀ n, P4924728832488549125.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P15655779666066152109

`(A127358(2*n)+A126869(2*n))/2`
-/

namespace A076036.P15655779666066152109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127358 (2 * n) + A126869 (2 * n) : ℚ) / 2

end

end A076036.P15655779666066152109

namespace A076036

/-- `(A127358(2*n)+A126869(2*n))/2` -/
def P15655779666066152109.Spec : Prop :=
  ∀ n, P15655779666066152109.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P2875399360046597379

`A100067(2*n)-A100099(2*n)/2`
-/

namespace A076036.P2875399360046597379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100067 (2 * n) : ℚ) - (A100099 (2 * n) : ℚ) / 2

end

end A076036.P2875399360046597379

namespace A076036

/-- `A100067(2*n)-A100099(2*n)/2` -/
def P2875399360046597379.Spec : Prop :=
  ∀ n, P2875399360046597379.a n = (A076036 n : ℚ)

end A076036

/-! ## A076036.P5456608887106513968

`abs(A127361(2*n+1)+A100099(2*n))`
-/

namespace A076036.P5456608887106513968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127361 (2 * n + 1) + A100099 (2 * n)|

end

end A076036.P5456608887106513968

namespace A076036

/-- `abs(A127361(2*n+1)+A100099(2*n))` -/
def P5456608887106513968.Spec : Prop :=
  ∀ n, P5456608887106513968.a n = A076036 n

end A076036

/-! ## A076036.P6851059885855501614

`2*A100067(2*n)-A100098(2*n+1)`
-/

namespace A076036.P6851059885855501614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100067 (2 * n) - A100098 (2 * n + 1)

end

end A076036.P6851059885855501614

namespace A076036

/-- `2*A100067(2*n)-A100098(2*n+1)` -/
def P6851059885855501614.Spec : Prop :=
  ∀ n, P6851059885855501614.a n = A076036 n

end A076036

/-! ## A076036.P14131071617480516223

`A054341(A004277(n))-A000007(n)`
-/

namespace A076036.P14131071617480516223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 (A004277 n).toNat - A000007 n

end

end A076036.P14131071617480516223

namespace A076036

/-- `A054341(A004277(n))-A000007(n)` -/
def P14131071617480516223.Spec : Prop :=
  ∀ n, P14131071617480516223.a n = A076036 n

end A076036

/-! ## A076036.P4071030120883129142

`A100098(2*n+1)+A126869(2*n)-A100098(2*n)`
-/

namespace A076036.P4071030120883129142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100098 (2 * n + 1) + (A126869 (2 * n) - A100098 (2 * n))

end

end A076036.P4071030120883129142

namespace A076036

/-- `A100098(2*n+1)+A126869(2*n)-A100098(2*n)` -/
def P4071030120883129142.Spec : Prop :=
  ∀ n, P4071030120883129142.a n = A076036 n

end A076036

/-! ## A076036.P15255192369823248932

`A100098(2*n)+A127358(2*n)-A100098(2*n+1)`
-/

namespace A076036.P15255192369823248932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100098 (2 * n) + (A127358 (2 * n) - A100098 (2 * n + 1))

end

end A076036.P15255192369823248932

namespace A076036

/-- `A100098(2*n)+A127358(2*n)-A100098(2*n+1)` -/
def P15255192369823248932.Spec : Prop :=
  ∀ n, P15255192369823248932.a n = A076036 n

end A076036

/-! ## A076036.P16104237180315366950

`A126869(2*n)-(A127361(2*n+1)+A127361(2*n))`
-/

namespace A076036.P16104237180315366950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - (A127361 (2 * n + 1) + A127361 (2 * n))

end

end A076036.P16104237180315366950

namespace A076036

/-- `A126869(2*n)-(A127361(2*n+1)+A127361(2*n))` -/
def P16104237180315366950.Spec : Prop :=
  ∀ n, P16104237180315366950.a n = A076036 n

end A076036

/-! ## A076036.P9739611679955034476

`A054341(A005843(n))+A000035(A130824(n))`
-/

namespace A076036.P9739611679955034476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 (A005843 n).toNat + A000035 (A130824 n).toNat

end

end A076036.P9739611679955034476

namespace A076036

/-- `A054341(A005843(n))+A000035(A130824(n))` -/
def P9739611679955034476.Spec : Prop :=
  ∀ n, P9739611679955034476.a n = A076036 n

end A076036

/-!
# A076038: Square array read by ascending antidiagonals in which row n has g.f. C/(1-n*x*C) where C = (1/2-1/2*(1-4*x)^(1/2))/x = g.f. for Catalan numbers A000108.

The programs for A076038, there is no canonical definition to state claims against.
-/

/-! ## A076038.P1000783636683965102

`A076037(A080036(n))`
-/

namespace A076038.P1000783636683965102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076037 (A080036 n).toNat

end

end A076038.P1000783636683965102

/-! ## A076038.P12489775198274754076

`A076037(A014132(n+1))`
-/

namespace A076038.P12489775198274754076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076037 (A014132 (n + 1)).toNat

end

end A076038.P12489775198274754076

/-! ## A076038.P5906291602274948691

`A110488(∑[2*n]%comp[∑[n]])`
-/

namespace A076038.P5906291602274948691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A076038.P5906291602274948691

/-! ## A076038.P13335259149814142409

`A110488(∑[char[∑[n]]]²-(n+1))`
-/

namespace A076038.P13335259149814142409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A076038.P13335259149814142409

/-! ## A076038.P12023240097339753862

`or(char[1], A110488(A061579(n)))`
-/

namespace A076038.P12023240097339753862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A110488 (A061579 n).toNat)

end

end A076038.P12023240097339753862

/-! ## A076038.P11010573140846088959

`(A000041(n)%2)!*A110488(A061579(n))`
-/

namespace A076038.P11010573140846088959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A110488 (A061579 n).toNat

end

end A076038.P11010573140846088959

/-! ## A076038.P11752395635052043479

`A110488(A061579(n))+A008683(4*(n+1))`
-/

namespace A076038.P11752395635052043479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A076038.P11752395635052043479

/-! ## A076038.P8102779670913660182

`A007318(C(2, 2*n))*A110488(A061579(n))`
-/

namespace A076038.P8102779670913660182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (2 * n)) * A110488 (A061579 n).toNat

end

end A076038.P8102779670913660182

/-! ## A076038.P7226195839939525997

`A007318(gcd(n, n+1))*A110488(A061579(n))`
-/

namespace A076038.P7226195839939525997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A110488 (A061579 n).toNat

end

end A076038.P7226195839939525997

/-!
# A076040: a(n) = (-1)^n * (3^n - 1)/2.

The programs for A076040, the canonical program `A076040.P12163343658986531048` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076040 has offset 0).

The definition of A076040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076040.P10450566839655613932

`ogf(-x/(1+4x+3x^2))`
-/

namespace A076040.P10450566839655613932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 4, 3] n

end

end A076040.P10450566839655613932

namespace A076040

/-- `ogf(-x/(1+4x+3x^2))` -/
def P10450566839655613932.Spec : Prop :=
  ∀ n, P10450566839655613932.a n = A076040 n

end A076040

/-! ## A076040.P12163343658986531048

`(-1)^n*A003462(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076040

/-- `(-1)^n*A003462(n)` -/
def P12163343658986531048.Spec : Prop :=
  ∀ n, P12163343658986531048.a n = A076040 n

theorem P12163343658986531048.correct : P12163343658986531048.Spec := by
  intro n
  simp only [A076040]

end A076040

/-! ## A076040.P7572109197111867255

`(-1)^n*(3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076040.P7572109197111867255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * ((3 ^ n : ℤ) - 1) : ℚ) / 2

end

end A076040.P7572109197111867255

namespace A076040

/-- `(-1)^n*(3^n-1)/2` -/
def P7572109197111867255.Spec : Prop :=
  ∀ n, P7572109197111867255.a n = (A076040 n : ℚ)

end A076040

/-! ## A076040.P8718583988949999163

`A038608(A003462(n))`
-/

namespace A076040.P8718583988949999163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A003462 n).toNat

end

end A076040.P8718583988949999163

namespace A076040

/-- `A038608(A003462(n))` -/
def P8718583988949999163.Spec : Prop :=
  ∀ n, P8718583988949999163.a n = A076040 n

end A076040

/-! ## A076040.P10046334162436255735

`-xor(1, 3*a(n-1))` with `a(0)=0`
-/

namespace A076040.P10046334162436255735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor 1 (3 * a (n - 1))

end

end A076040.P10046334162436255735

namespace A076040

/-- `-xor(1, 3*a(n-1))` -/
def P10046334162436255735.Spec : Prop :=
  ∀ n, P10046334162436255735.a n = A076040 n

end A076040

/-! ## A076040.P2341810338240102577

`2-xor(3, 3*a(n-1))` with `a(0)=0`
-/

namespace A076040.P2341810338240102577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - Int.xor 3 (3 * a (n - 1))

end

end A076040.P2341810338240102577

namespace A076040

/-- `2-xor(3, 3*a(n-1))` -/
def P2341810338240102577.Spec : Prop :=
  ∀ n, P2341810338240102577.a n = A076040 n

end A076040

/-! ## A076040.P16738007943991242649

`(-1)^n-3*a(n-1)` with `a(0)=0`
-/

namespace A076040.P16738007943991242649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ n - 3 * a (n - 1)

end

end A076040.P16738007943991242649

namespace A076040

/-- `(-1)^n-3*a(n-1)` -/
def P16738007943991242649.Spec : Prop :=
  ∀ n, P16738007943991242649.a n = A076040 n

end A076040

/-! ## A076040.P5348693160471112342

`-(a(n-1)+(-3)^(n-1))` with `a(0)=0`
-/

namespace A076040.P5348693160471112342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  -(a (n - 1) + (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A076040.P5348693160471112342

namespace A076040

/-- `-(a(n-1)+(-3)^(n-1))` -/
def P5348693160471112342.Spec : Prop :=
  ∀ n, P5348693160471112342.a n = (A076040 n : ℚ)

end A076040

/-! ## A076040.P18331106982809976621

`xor((-1)^n-1, ∑[floor(3^(n-1))])`
-/

namespace A076040.P18331106982809976621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076040.P18331106982809976621

namespace A076040

/-- `xor((-1)^n-1, ∑[floor(3^(n-1))])` -/
def P18331106982809976621.Spec : Prop :=
  ∀ n, P18331106982809976621.a n = A076040 n

end A076040

/-! ## A076040.P7053418442864452812

`1-(a(n-1)+2*(a(n-1)+n%2))` with `a(0)=0`
-/

namespace A076040.P7053418442864452812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) + 2 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)))

end

end A076040.P7053418442864452812

namespace A076040

/-- `1-(a(n-1)+2*(a(n-1)+n%2))` -/
def P7053418442864452812.Spec : Prop :=
  ∀ n, P7053418442864452812.a n = A076040 n

end A076040

/-! ## A076040.P9516691309807519927

`a(n-2)-4*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=-1`
-/

namespace A076040.P9516691309807519927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 2) - 4 * (a (n - 1) + a (n - 2))

end

end A076040.P9516691309807519927

namespace A076040

/-- `a(n-2)-4*(a(n-1)+a(n-2))` -/
def P9516691309807519927.Spec : Prop :=
  ∀ n, P9516691309807519927.a n = A076040 n

end A076040

/-! ## A076040.P1726151748202083122

`(-1)^n-a(n-1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A076040.P1726151748202083122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ n - a (n - 1) - a (n - 1) - a (n - 1)

end

end A076040.P1726151748202083122

namespace A076040

/-- `(-1)^n-a(n-1)-a(n-1)-a(n-1)` -/
def P1726151748202083122.Spec : Prop :=
  ∀ n, P1726151748202083122.a n = A076040 n

end A076040

/-! ## A076040.P1955680173769777008

`A000034(n)-A165553(n)`
-/

namespace A076040.P1955680173769777008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A165553 n

end

end A076040.P1955680173769777008

namespace A076040

/-- `A000034(n)-A165553(n)` -/
def P1955680173769777008.Spec : Prop :=
  ∀ n, P1955680173769777008.a n = A076040 n

end A076040

/-! ## A076040.P3668908385163307681

`A003462(n)*A033999(n)`
-/

namespace A076040.P3668908385163307681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A033999 n

end

end A076040.P3668908385163307681

namespace A076040

/-- `A003462(n)*A033999(n)` -/
def P3668908385163307681.Spec : Prop :=
  ∀ n, P3668908385163307681.a n = A076040 n

theorem P3668908385163307681.correct : P3668908385163307681.Spec := by
  intro n
  simp only [A076040, Nat.add_sub_cancel, A076040.P3668908385163307681.a, A076040.P12163343658986531048.a, A003462, A003462.P13985754852886705544.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076040

/-! ## A076040.P8083483242360063614

`A033999(n+1)-A341463(n)`
-/

namespace A076040.P8083483242360063614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A341463 n

end

end A076040.P8083483242360063614

namespace A076040

/-- `A033999(n+1)-A341463(n)` -/
def P8083483242360063614.Spec : Prop :=
  ∀ n, P8083483242360063614.a n = A076040 n

end A076040

/-! ## A076040.P17284564734514150241

`A003462(n)*A117569(2*n+1)`
-/

namespace A076040.P17284564734514150241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A117569 (2 * n + 1)

end

end A076040.P17284564734514150241

namespace A076040

/-- `A003462(n)*A117569(2*n+1)` -/
def P17284564734514150241.Spec : Prop :=
  ∀ n, P17284564734514150241.a n = A076040 n

end A076040

/-! ## A076040.P12012274184193781515

`and(1, n)-A014983(n)-A014983(n)`
-/

namespace A076040.P12012274184193781515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - A014983 n - A014983 n

end

end A076040.P12012274184193781515

namespace A076040

/-- `and(1, n)-A014983(n)-A014983(n)` -/
def P12012274184193781515.Spec : Prop :=
  ∀ n, P12012274184193781515.a n = A076040 n

end A076040

/-! ## A076040.P3976944639601679685

`A038608(n+1)+A038608(n)-A341463(n)`
-/

namespace A076040.P3976944639601679685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) + (A038608 n - A341463 n)

end

end A076040.P3976944639601679685

namespace A076040

/-- `A038608(n+1)+A038608(n)-A341463(n)` -/
def P3976944639601679685.Spec : Prop :=
  ∀ n, P3976944639601679685.a n = A076040 n

end A076040

/-! ## A076040.P8961926424238758962

`(-3)^n/3-a(n-1)` with `a(0)=0`
-/

namespace A076040.P8961926424238758962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((-3) ^ n : ℚ) / 3 - a (n - 1)

end

end A076040.P8961926424238758962

namespace A076040

/-- `(-3)^n/3-a(n-1)` -/
def P8961926424238758962.Spec : Prop :=
  ∀ n, P8961926424238758962.a n = (A076040 n : ℚ)

end A076040

/-! ## A076040.P7124217650164132160

`Δ[floor(A014983(n)/2)]`
-/

namespace A076040.P7124217650164132160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014983 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076040.P7124217650164132160

namespace A076040

/-- `Δ[floor(A014983(n)/2)]` -/
def P7124217650164132160.Spec : Prop :=
  ∀ n, P7124217650164132160.a n = A076040 n

end A076040

/-!
# A076042: a(0) = 0; thereafter a(n) = a(n-1) + n^2 if a(n-1) < n^2, otherwise a(n) = a(n-1) - n^2.

The programs for A076042, the canonical program `A076042.P10463952888891516388` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076042 has offset 0).

The definition of A076042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076042.P10463952888891516388

`(a(n-1)+n²)%(2*n²)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076042

/-- `(a(n-1)+n²)%(2*n²)` -/
def P10463952888891516388.Spec : Prop :=
  ∀ n, (P10463952888891516388.a n : ℤ) = A076042 n

theorem P10463952888891516388.correct : P10463952888891516388.Spec := by
  intro n
  simp only [A076042]

end A076042

/-! ## A076042.P1573067976266338667

`(n²-floor(-a(n-1)))%(2*n²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A076042.P1573067976266338667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n ^ 2 : ℤ) - (-a (n - 1))) (2 * n ^ 2 : ℤ)

end

end A076042.P1573067976266338667

namespace A076042

/-- `(n²-floor(-a(n-1)))%(2*n²)` -/
def P1573067976266338667.Spec : Prop :=
  ∀ n, P1573067976266338667.a n = A076042 n

end A076042

/-! ## A076042.P11673401088950419869

`n²-(a(n-1)-2*a(n-1)%n²)` with `a(0)=0`
-/

namespace A076042.P11673401088950419869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (a (n - 1) - 2 * Int.tmod (a (n - 1)) (n ^ 2 : ℤ))

end

end A076042.P11673401088950419869

namespace A076042

/-- `n²-(a(n-1)-2*a(n-1)%n²)` -/
def P11673401088950419869.Spec : Prop :=
  ∀ n, P11673401088950419869.a n = A076042 n

end A076042

/-! ## A076042.P12845775186635230597

`(n²+a(n-1))%A001105(n)` with `a(0)=0`
-/

namespace A076042.P12845775186635230597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n ^ 2 : ℤ) + a (n - 1)) (A001105 n)

end

end A076042.P12845775186635230597

namespace A076042

/-- `(n²+a(n-1))%A001105(n)` -/
def P12845775186635230597.Spec : Prop :=
  ∀ n, P12845775186635230597.a n = A076042 n

end A076042

/-! ## A076042.P10990002563289141588

`∑[n²*A325931(A028310(n))]`
-/

namespace A076042.P10990002563289141588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A325931 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076042.P10990002563289141588

namespace A076042

/-- `∑[n²*A325931(A028310(n))]` -/
def P10990002563289141588.Spec : Prop :=
  ∀ n, P10990002563289141588.a n = A076042 n

end A076042

/-! ## A076042.P8455725540311012822

`∑[n²*A325931(A233583(n+1))]`
-/

namespace A076042.P8455725540311012822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A325931 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076042.P8455725540311012822

namespace A076042

/-- `∑[n²*A325931(A233583(n+1))]` -/
def P8455725540311012822.Spec : Prop :=
  ∀ n, P8455725540311012822.a n = A076042 n

end A076042

/-!
# A076045: Primes that are three term sums of A076990.

The programs for A076045, there is no canonical definition to state claims against.
-/

/-! ## A076045.P11868927251648612053

`A076990(n+1)+A076990(n+2)+A076990(n+3)`
-/

namespace A076045.P11868927251648612053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076990 (n + 1) + (A076990 (n + 2) + A076990 (n + 3))

end

end A076045.P11868927251648612053

/-!
# A076046: Ramanujan-Nagell numbers: the triangular numbers (of the form a*(a+1)/2) which are also of the form 2^b - 1.

The programs for A076046, there is no canonical definition to state claims against.
-/

/-! ## A076046.P16592328392834436932

`16^a(n-2)-1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A076046.P16592328392834436932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (16 : ℝ) ^ (a (n - 2)) - 1

end

end A076046.P16592328392834436932

/-!
# A076047: Primes which are the difference between two successive nontrivial prime powers (A025475).

The programs for A076047, there is no canonical definition to state claims against.
-/

/-! ## A076047.P17611524176854279754

`p?[A077273(n+1)]`
-/

namespace A076047.P17611524176854279754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076047.P17611524176854279754

/-! ## A076047.P10019933368355037238

`p?[record[A077273(A117910(n))]]`
-/

namespace A076047.P10019933368355037238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077273 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076047.P10019933368355037238

/-! ## A076047.P17410506602042352461

`p?[record[A077273(A133310(n))]]`
-/

namespace A076047.P17410506602042352461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077273 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076047.P17410506602042352461

/-! ## A076047.P15052775627710549807

`p?[record[A077273(A134478(n))]]`
-/

namespace A076047.P15052775627710549807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077273 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076047.P15052775627710549807

/-! ## A076047.P13409238154211246795

`record[A020639(A077273(n+2))]`
-/

namespace A076047.P13409238154211246795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077273 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076047.P13409238154211246795

/-!
# A076048: Number of prime powers p^k (k != 1) <= 10^n.

The programs for A076048, there is no canonical definition to state claims against.
-/

/-! ## A076048.P16696196668880465577

`A303220(n)+a(n-1)` with `a(0)=1`
-/

namespace A076048.P16696196668880465577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303220 n + a (n - 1)

end

end A076048.P16696196668880465577

/-! ## A076048.P17909842165517906081

`∑[A303220(A028310(n))]-2`
-/

namespace A076048.P17909842165517906081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303220 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A076048.P17909842165517906081

/-! ## A076048.P8955348199279368306

`∑[A303220(A028310(n))^A178334(n)]`
-/

namespace A076048.P8955348199279368306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303220 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076048.P8955348199279368306

/-! ## A076048.P7307946619351619534

`∑[A303220(A028310(n))%A034472(n)]`
-/

namespace A076048.P7307946619351619534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303220 (A028310 n).toNat) (A034472 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076048.P7307946619351619534

/-! ## A076048.P3334041561864782187

`∑[A303220(A028310(n))^(A000290(n)%(n+1))]`
-/

namespace A076048.P3334041561864782187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303220 (A028310 n).toNat : ℚ) ^ (Int.tmod (A000290 n) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076048.P3334041561864782187

/-!
# A076049: Numbers k such that the sum of the k-th triangular number and (k+2)-nd triangular number is a triangular number.

The programs for A076049, the canonical program `A076049.P704046883032300003` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076049 has offset 1).

The definition of A076049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076049.P704046883032300003

`ogf((3x+5x^2-x^3-x^4)/(1-x-6x^2+6x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076049

/-- `ogf((3x+5x^2-x^3-x^4)/(1-x-6x^2+6x^3+x^4-x^5))` -/
def P704046883032300003.Spec : Prop :=
  ∀ n, P704046883032300003.a n = A076049 (n + 1)

theorem P704046883032300003.correct : P704046883032300003.Spec := by
  intro n
  simp only [A076049, Nat.add_sub_cancel]

end A076049

/-! ## A076049.P450710250498914062

`A216134(n+1)-1`
-/

namespace A076049.P450710250498914062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (n + 1) - 1

end

end A076049.P450710250498914062

namespace A076049

/-- `A216134(n+1)-1` -/
def P450710250498914062.Spec : Prop :=
  ∀ n, P450710250498914062.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P2754100062459092185

`Δ[∑[A216134(n)]-n]`
-/

namespace A076049.P2754100062459092185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076049.P2754100062459092185

namespace A076049

/-- `Δ[∑[A216134(n)]-n]` -/
def P2754100062459092185.Spec : Prop :=
  ∀ n, P2754100062459092185.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P2274041520882839645

`∑[A079496(n+1)]-1`
-/

namespace A076049.P2274041520882839645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A076049.P2274041520882839645

namespace A076049

/-- `∑[A079496(n+1)]-1` -/
def P2274041520882839645.Spec : Prop :=
  ∀ n, P2274041520882839645.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P16274025033770323652

`A216162(2*n+3)-1`
-/

namespace A076049.P16274025033770323652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n + 3) - 1

end

end A076049.P16274025033770323652

namespace A076049

/-- `A216162(2*n+3)-1` -/
def P16274025033770323652.Spec : Prop :=
  ∀ n, P16274025033770323652.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P2968517094305718681

`∑[∑[A000129(char[2*n+1]+n)]]+n`
-/

namespace A076049.P2968517094305718681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A076049.P2968517094305718681

namespace A076049

/-- `∑[∑[A000129(char[2*n+1]+n)]]+n` -/
def P2968517094305718681.Spec : Prop :=
  ∀ n, P2968517094305718681.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P16638746272706087664

`A124124(n+2)-(A006452(n+1)+1)`
-/

namespace A076049.P16638746272706087664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 2) - (A006452 (n + 1) + 1)

end

end A076049.P16638746272706087664

namespace A076049

/-- `A124124(n+2)-(A006452(n+1)+1)` -/
def P16638746272706087664.Spec : Prop :=
  ∀ n, P16638746272706087664.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P4256097469790031549

`(A077442(n+1)-3)/2`
-/

namespace A076049.P4256097469790031549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077442 (n + 1) - 3 : ℚ) / 2

end

end A076049.P4256097469790031549

namespace A076049

/-- `(A077442(n+1)-3)/2` -/
def P4256097469790031549.Spec : Prop :=
  ∀ n, P4256097469790031549.a n = (A076049 (n + 1) : ℚ)

end A076049

/-! ## A076049.P4857754192951005334

`A154138(n+2)-(A077241(n+1)+1)`
-/

namespace A076049.P4857754192951005334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 2) - (A077241 (n + 1) + 1)

end

end A076049.P4857754192951005334

namespace A076049

/-- `A154138(n+2)-(A077241(n+1)+1)` -/
def P4857754192951005334.Spec : Prop :=
  ∀ n, P4857754192951005334.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P12418093279684594350

`A154141(n+2)-(A276601(n+2)+1)`
-/

namespace A076049.P12418093279684594350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 2) - (A276601 (n + 2) + 1)

end

end A076049.P12418093279684594350

namespace A076049

/-- `A154141(n+2)-(A276601(n+2)+1)` -/
def P12418093279684594350.Spec : Prop :=
  ∀ n, P12418093279684594350.a n = A076049 (n + 1)

end A076049

/-! ## A076049.P13964836163835749528

`A181658(2*n+1)-A006452(n+2)`
-/

namespace A076049.P13964836163835749528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 (2 * n + 1) - A006452 (n + 2)

end

end A076049.P13964836163835749528

namespace A076049

/-- `A181658(2*n+1)-A006452(n+2)` -/
def P13964836163835749528.Spec : Prop :=
  ∀ n, P13964836163835749528.a n = A076049 (n + 1)

end A076049

/-!
# A076050: Limiting sequence if we start with 2 and successively replace n with 2,3,4,...,n,n+1.

The programs for A076050, there is no canonical definition to state claims against.
-/

/-! ## A076050.P11050592336807265070

`A007001(n+1)+1`
-/

namespace A076050.P11050592336807265070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (n + 1) + 1

end

end A076050.P11050592336807265070

/-! ## A076050.P1606236923845386331

`Δ[A085197(n+1)]`
-/

namespace A076050.P1606236923845386331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076050.P1606236923845386331

/-! ## A076050.P11617834128099558914

`∑[A133912(n+1)]+1`
-/

namespace A076050.P11617834128099558914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A076050.P11617834128099558914

/-! ## A076050.P10639669273732281158

`A085197(n+2)-A085197(n+1)`
-/

namespace A076050.P10639669273732281158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085197 (n + 2) - A085197 (n + 1)

end

end A076050.P10639669273732281158

/-! ## A076050.P3194977806060857120

`Δ[A080336(n)]+1`
-/

namespace A076050.P3194977806060857120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A076050.P3194977806060857120

/-! ## A076050.P16076714784516749034

`A295568(A244216(n+1))`
-/

namespace A076050.P16076714784516749034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295568 (A244216 (n + 1)).toNat

end

end A076050.P16076714784516749034

/-! ## A076050.P9629794455585909456

`A080237(A081291(A080336(n+1)+n))`
-/

namespace A076050.P9629794455585909456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A081291 (A080336 (n + 1) + (n : ℤ)).toNat).toNat

end

end A076050.P9629794455585909456

/-! ## A076050.P5810600599413178304

`A133913(∑[n+1])+1`
-/

namespace A076050.P5810600599413178304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133913 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A076050.P5810600599413178304

/-! ## A076050.P14038297063478148121

`A136480(A081292(n+1))+1`
-/

namespace A076050.P14038297063478148121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A081292 (n + 1)).toNat + 1

end

end A076050.P14038297063478148121

/-!
# A076051: Sum of product of odd numbers <= n and the product of even numbers <= n.

The programs for A076051, the canonical program `A076051.P831162649335085033` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076051 has offset 1).

The definition of A076051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060696, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076051.P831162649335085033

`A060696(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076051

/-- `A060696(n+2)` -/
def P831162649335085033.Spec : Prop :=
  ∀ n, P831162649335085033.a n = A076051 (n + 1)

theorem P831162649335085033.correct : P831162649335085033.Spec := by
  intro n
  simp only [A076051, Nat.add_sub_cancel]

end A076051

/-! ## A076051.P9125535252323392277

`A037223(n+1)+abs(A055634(n+1))`
-/

namespace A076051.P9125535252323392277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (n + 1) + |A055634 (n + 1)|

end

end A076051.P9125535252323392277

namespace A076051

/-- `A037223(n+1)+abs(A055634(n+1))` -/
def P9125535252323392277.Spec : Prop :=
  ∀ n, P9125535252323392277.a n = A076051 (n + 1)

end A076051

/-! ## A076051.P1657438909969051806

`2^floor((n+1)/2)*floor((n+1)/2)!+(n+1)!/(2^floor((n+1)/2)*floor((n+1)/2)!)`
-/

namespace A076051.P1657438909969051806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (Nat.factorial ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) + (Nat.factorial (n + 1) : ℚ) / ((2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (Nat.factorial ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ))

end

end A076051.P1657438909969051806

namespace A076051

/-- `2^floor((n+1)/2)*floor((n+1)/2)!+(n+1)!/(2^floor((n+1)/2)*floor((n+1)/2)!)` -/
def P1657438909969051806.Spec : Prop :=
  ∀ n, P1657438909969051806.a n = (A076051 (n + 1) : ℚ)

end A076051

/-! ## A076051.P11653381648348173648

`A006882(n+1)+A006882(n)`
-/

namespace A076051.P11653381648348173648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) + A006882 n

end

end A076051.P11653381648348173648

namespace A076051

/-- `A006882(n+1)+A006882(n)` -/
def P11653381648348173648.Spec : Prop :=
  ∀ n, P11653381648348173648.a n = A076051 (n + 1)

end A076051

/-! ## A076051.P5818905766299073974

`A133221(n+2)+A037223(n+1)`
-/

namespace A076051.P5818905766299073974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133221 (n + 2) + A037223 (n + 1)

end

end A076051.P5818905766299073974

namespace A076051

/-- `A133221(n+2)+A037223(n+1)` -/
def P5818905766299073974.Spec : Prop :=
  ∀ n, P5818905766299073974.a n = A076051 (n + 1)

end A076051

/-! ## A076051.P15030791862538590711

`(A380909(n+1)+A004730(n))*A095987(n+1)`
-/

namespace A076051.P15030791862538590711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A380909 (n + 1) + A004730 n) * A095987 (n + 1)

end

end A076051.P15030791862538590711

namespace A076051

/-- `(A380909(n+1)+A004730(n))*A095987(n+1)` -/
def P15030791862538590711.Spec : Prop :=
  ∀ n, P15030791862538590711.a n = A076051 (n + 1)

end A076051

/-! ## A076051.P11133126267061554353

`(A380910(n+1)+A380909(n+1))*A095987(n+1)`
-/

namespace A076051.P11133126267061554353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A380910 (n + 1) + A380909 (n + 1)) * A095987 (n + 1)

end

end A076051.P11133126267061554353

namespace A076051

/-- `(A380910(n+1)+A380909(n+1))*A095987(n+1)` -/
def P11133126267061554353.Spec : Prop :=
  ∀ n, P11133126267061554353.a n = A076051 (n + 1)

end A076051

/-! ## A076051.P9264436514332779070

`A037223(n+1)+A000142(n+1)/A037223(n+1)`
-/

namespace A076051.P9264436514332779070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037223 (n + 1) : ℚ) + (A000142 (n + 1) : ℚ) / (A037223 (n + 1) : ℚ)

end

end A076051.P9264436514332779070

namespace A076051

/-- `A037223(n+1)+A000142(n+1)/A037223(n+1)` -/
def P9264436514332779070.Spec : Prop :=
  ∀ n, P9264436514332779070.a n = (A076051 (n + 1) : ℚ)

end A076051

/-! ## A076051.P2408886490565538388

`A399338(A056220(n+1))`
-/

namespace A076051.P2408886490565538388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399338 (A056220 (n + 1)).toNat

end

end A076051.P2408886490565538388

namespace A076051

/-- `A399338(A056220(n+1))` -/
def P2408886490565538388.Spec : Prop :=
  ∀ n, P2408886490565538388.a n = A076051 (n + 1)

end A076051

/-!
# A076052: Sum(k=1, n, A006460(k)).

The programs for A076052, there is no canonical definition to state claims against.
-/

/-! ## A076052.P17064875426205652912

`∑[A006460(n+1)]`
-/

namespace A076052.P17064875426205652912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076052.P17064875426205652912

/-! ## A076052.P13762904200754051466

`∑[2^(A006577(n+1)%3)]`
-/

namespace A076052.P13762904200754051466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A006577 (n + 1)) 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076052.P13762904200754051466

/-! ## A076052.P3995540600270962523

`∑[A069705(A006577(n+1))]`
-/

namespace A076052.P3995540600270962523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A006577 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076052.P3995540600270962523

/-! ## A076052.P246190100868960769

`∑[A011782(A008908(n+1))%7]`
-/

namespace A076052.P246190100868960769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A008908 (n + 1)).toNat) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076052.P246190100868960769

/-! ## A076052.P10306575966708975416

`A028310(a(n-1))+A006460(n+1)` with `a(0)=1`
-/

namespace A076052.P10306575966708975416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A006460 (n + 1)

end

end A076052.P10306575966708975416

/-!
# A076054: a(n) = Sum_{k=1..n} A006513(k).

The programs for A076054, there is no canonical definition to state claims against.
-/

/-! ## A076054.P10715108718952699461

`∑[A006513(n+1)]`
-/

namespace A076054.P10715108718952699461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P10715108718952699461

/-! ## A076054.P4220759885599433713

`∑[A076182(n+1)+1]`
-/

namespace A076054.P4220759885599433713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P4220759885599433713

/-! ## A076054.P9807309121159970321

`∑[gcd(2, A064433(n+2))]`
-/

namespace A076054.P9807309121159970321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A064433 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P9807309121159970321

/-! ## A076054.P2297394237419545213

`∑[A006666(n+1)%2+1]`
-/

namespace A076054.P2297394237419545213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006666 (n + 1)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P2297394237419545213

/-! ## A076054.P11968491964237676947

`∑[A000034(A006666(n+1))]`
-/

namespace A076054.P11968491964237676947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P11968491964237676947

/-! ## A076054.P5686536568134885229

`∑[gcd(4, A020639(A006666(n+1)+1))]`
-/

namespace A076054.P5686536568134885229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A020639 (A006666 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P5686536568134885229

/-! ## A076054.P3985898162612239343

`∑[A309154(n+1)%3]`
-/

namespace A076054.P3985898162612239343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309154 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P3985898162612239343

/-! ## A076054.P15896797367700514876

`∑[A001511(A006666(n+1)²+1)]`
-/

namespace A076054.P15896797367700514876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006666 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076054.P15896797367700514876

/-!
# A076055: Composite numbers which when read backwards are primes.

The programs for A076055, there is no canonical definition to state claims against.
-/

/-! ## A076055.P3942901116076757897

`filter[A061365(n+1), A005171(#)]`
-/

namespace A076055.P3942901116076757897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A076055.P3942901116076757897

/-! ## A076055.P6341799598987093670

`filter[A095179(n+1), A005171(#)]`
-/

namespace A076055.P6341799598987093670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A076055.P6341799598987093670

/-! ## A076055.P15965065708466130862

`filter[A061365(n+1), A066247(#)]`
-/

namespace A076055.P15965065708466130862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A076055.P15965065708466130862

/-! ## A076055.P17713040929551925771

`filter[A095179(n+1), A066247(#)]`
-/

namespace A076055.P17713040929551925771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A076055.P17713040929551925771

/-! ## A076055.P4308793654120977288

`∩[A061365(n+1), A095179(n+1)]`
-/

namespace A076055.P4308793654120977288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P4308793654120977288

/-! ## A076055.P5467207657032974532

`∩[A002808(n+1), A061365(n+1)]`
-/

namespace A076055.P5467207657032974532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P5467207657032974532

/-! ## A076055.P15013801570636063068

`∩[A007935(n+1), A061365(n+1)]`
-/

namespace A076055.P15013801570636063068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P15013801570636063068

/-! ## A076055.P6869923195628135674

`∩[A018252(n+1), A061365(n+1)]`
-/

namespace A076055.P6869923195628135674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P6869923195628135674

/-! ## A076055.P8476414565302366425

`∩[A002808(n+1), A095179(n+1)]`
-/

namespace A076055.P8476414565302366425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P8476414565302366425

/-! ## A076055.P5846451518874622427

`∩[A007935(n+1), A095179(n+1)]`
-/

namespace A076055.P5846451518874622427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P5846451518874622427

/-! ## A076055.P17444406068230273118

`∩[A018252(n+1), A095179(n+1)]`
-/

namespace A076055.P17444406068230273118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P17444406068230273118

/-! ## A076055.P16039605986746419352

`∩[A061365(n+1), A141468(n+1)]`
-/

namespace A076055.P16039605986746419352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P16039605986746419352

/-! ## A076055.P4403184703027636195

`∩[A095179(n+1), A141468(n+1)]`
-/

namespace A076055.P4403184703027636195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P4403184703027636195

/-! ## A076055.P3758325610925159613

`∩[A061365(n+1), A257586(n+1)]`
-/

namespace A076055.P3758325610925159613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P3758325610925159613

/-! ## A076055.P8414836278314773919

`∩[A095179(n+1), A257586(n+1)]`
-/

namespace A076055.P8414836278314773919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P8414836278314773919

/-! ## A076055.P17943643559726062641

`∩[A061365(n+1), A161598(n+1)]`
-/

namespace A076055.P17943643559726062641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P17943643559726062641

/-! ## A076055.P8538045594425352638

`∩[A095179(n+1), A161598(n+1)]`
-/

namespace A076055.P8538045594425352638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P8538045594425352638

/-! ## A076055.P2014532670329870284

`∩[A056653(n+1), A061365(n+1)]`
-/

namespace A076055.P2014532670329870284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P2014532670329870284

/-! ## A076055.P336092276371565576

`∩[A061365(n+1), A062973(n+1)]`
-/

namespace A076055.P336092276371565576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P336092276371565576

/-! ## A076055.P14327957849073890137

`∩[A061365(n+1), A065090(n+1)]`
-/

namespace A076055.P14327957849073890137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076055.P14327957849073890137

/-!
# A076056: Primes which when read backwards are composite numbers.

The programs for A076056, there is no canonical definition to state claims against.
-/

/-! ## A076056.P4880636420657676699

`p?[A061365(n+1)]`
-/

namespace A076056.P4880636420657676699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076056.P4880636420657676699

/-! ## A076056.P7742106113272572617

`record[A006530(A061365(n+3))]`
-/

namespace A076056.P7742106113272572617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061365 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076056.P7742106113272572617

/-! ## A076056.P7522622290443267505

`filter[A061365(n+1), A010051(#)]`
-/

namespace A076056.P7522622290443267505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A076056.P7522622290443267505

/-! ## A076056.P17602701871676207704

`filter[A061365(n+1), A323152(#)]`
-/

namespace A076056.P17602701871676207704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A076056.P17602701871676207704

/-! ## A076056.P5204440725708776783

`filter[A061365(n+1), A323153(#)]`
-/

namespace A076056.P5204440725708776783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A076056.P5204440725708776783

/-! ## A076056.P2741830837041701171

`∩[A000040(n+1), A061365(n+1)]`
-/

namespace A076056.P2741830837041701171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P2741830837041701171

/-! ## A076056.P1082903416041650949

`∩[A004139(n+1), A061365(n+1)]`
-/

namespace A076056.P1082903416041650949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P1082903416041650949

/-! ## A076056.P14606986266714291726

`∩[A006005(n+1), A061365(n+1)]`
-/

namespace A076056.P14606986266714291726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P14606986266714291726

/-! ## A076056.P4237350691533972518

`∩[A008578(n+1), A061365(n+1)]`
-/

namespace A076056.P4237350691533972518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P4237350691533972518

/-! ## A076056.P15394716890862786331

`∩[A033946(n+1), A061365(n+1)]`
-/

namespace A076056.P15394716890862786331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P15394716890862786331

/-! ## A076056.P15000599186186627759

`∩[A045319(n+1), A061365(n+1)]`
-/

namespace A076056.P15000599186186627759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P15000599186186627759

/-! ## A076056.P1474007737898698686

`∩[A045344(n+1), A061365(n+1)]`
-/

namespace A076056.P1474007737898698686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P1474007737898698686

/-! ## A076056.P7768992920149483918

`∩[A046022(n+1), A061365(n+1)]`
-/

namespace A076056.P7768992920149483918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P7768992920149483918

/-! ## A076056.P13256895309460525622

`∩[A051948(n+1), A061365(n+1)]`
-/

namespace A076056.P13256895309460525622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P13256895309460525622

/-! ## A076056.P12872189840113910155

`∩[A053813(n+1), A061365(n+1)]`
-/

namespace A076056.P12872189840113910155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P12872189840113910155

/-! ## A076056.P17103548477002439924

`∩[A061365(n+1), A062972(n+1)]`
-/

namespace A076056.P17103548477002439924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P17103548477002439924

/-! ## A076056.P15514156323447251667

`∩[A061365(n+1), A065091(n+1)]`
-/

namespace A076056.P15514156323447251667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P15514156323447251667

/-! ## A076056.P13524601827731219457

`∩[A061365(n+1), A066050(n+1)]`
-/

namespace A076056.P13524601827731219457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P13524601827731219457

/-! ## A076056.P13899459172073852201

`∩[A061365(n+1), A067126(n+1)]`
-/

namespace A076056.P13899459172073852201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P13899459172073852201

/-! ## A076056.P3374939206051532552

`∩[A061365(n+1), A106843(n+1)]`
-/

namespace A076056.P3374939206051532552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076056.P3374939206051532552

/-!
# A076057: Numbers k such that Sum_{j=1..k} A006513(j) = 3*k/2.

The programs for A076057, there is no canonical definition to state claims against.
-/

/-! ## A076057.P6896053709212418091

`record[gcd(n, A076092(n+1))+1]`
-/

namespace A076057.P6896053709212418091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A076092 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076057.P6896053709212418091

/-! ## A076057.P13916478816699670226

`A014681(eq[0, A076092(n+1)])`
-/

namespace A076057.P13916478816699670226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076057.P13916478816699670226

/-! ## A076057.P4264362843397994399

`eq[0, A076092(A065190(n+1))]`
-/

namespace A076057.P4264362843397994399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076092 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076057.P4264362843397994399

/-! ## A076057.P10565998095256630045

`A133265(eq[0, A076092(n+1)])`
-/

namespace A076057.P10565998095256630045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076057.P10565998095256630045

/-! ## A076057.P1342150583836825312

`A014681(record[gcd(n, A076092(n+1))])`
-/

namespace A076057.P1342150583836825312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A076092 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076057.P1342150583836825312

/-!
# A076058: First members of groups in A076062.

The programs for A076058, there is no canonical definition to state claims against.
-/

/-! ## A076058.P8629033622393000454

`A076062(∑[n]+1)`
-/

namespace A076058.P8629033622393000454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076058.P8629033622393000454

/-! ## A076058.P2695097264067104598

`lcm(A033999(n), A076062(A000124(n)))`
-/

namespace A076058.P2695097264067104598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A076062 (A000124 n).toNat)

end

end A076058.P2695097264067104598

/-! ## A076058.P12176951735270290977

`A076062(A000124(n))%A114657(n+1)`
-/

namespace A076058.P12176951735270290977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076062 (A000124 n).toNat) (A114657 (n + 1))

end

end A076058.P12176951735270290977

/-! ## A076058.P7852372251333508375

`A076062(A000124(n))+A075603(3*n+1)`
-/

namespace A076058.P7852372251333508375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076062 (A000124 n).toNat + A075603 (3 * n + 1 + 11)

end

end A076058.P7852372251333508375

/-! ## A076058.P57345223787190624

`A076062(A000124(n))%A321117(n)`
-/

namespace A076058.P57345223787190624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076062 (A000124 n).toNat) (A321117 (n + 10))

end

end A076058.P57345223787190624

/-!
# A076059: Final members of groups in A076062.

The programs for A076059, there is no canonical definition to state claims against.
-/

/-! ## A076059.P15802287438701053132

`A076062(∑[n+1])`
-/

namespace A076059.P15802287438701053132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076059.P15802287438701053132

/-! ## A076059.P3503941555131727251

`abs(A076062(A000217(n+1))-n)+n`
-/

namespace A076059.P3503941555131727251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076062 (A000217 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A076059.P3503941555131727251

/-! ## A076059.P13760941681764740676

`A377128(A001227(n+1))+A076062(A000217(n+1))`
-/

namespace A076059.P13760941681764740676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (A001227 (n + 1)).toNat + A076062 (A000217 (n + 1)).toNat

end

end A076059.P13760941681764740676

/-! ## A076059.P8123397107440747399

`A377128(A039819(n+1))+A076062(A000217(n+1))`
-/

namespace A076059.P8123397107440747399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (A039819 (n + 1)).toNat + A076062 (A000217 (n + 1)).toNat

end

end A076059.P8123397107440747399

/-! ## A076059.P916290369731146291

`A377128(A100035(n+1))+A076062(A000217(n+1))`
-/

namespace A076059.P916290369731146291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (A100035 (n + 1)).toNat + A076062 (A000217 (n + 1)).toNat

end

end A076059.P916290369731146291

/-! ## A076059.P13339661492274922628

`A003415(A072456(n+1))*A076062(A000217(n+1))`
-/

namespace A076059.P13339661492274922628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A072456 (n + 1)).toNat * A076062 (A000217 (n + 1)).toNat

end

end A076059.P13339661492274922628

/-! ## A076059.P5518345904960935317

`and(A024088(n+2), A076062(A000217(n+1)))`
-/

namespace A076059.P5518345904960935317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024088 (n + 2)) (A076062 (A000217 (n + 1)).toNat)

end

end A076059.P5518345904960935317

/-!
# A076060: Sums of members of groups in A076062.

The programs for A076060, there is no canonical definition to state claims against.
-/

/-! ## A076060.P8882152741770445992

`p?[ceil(2/acot(n))]*A076061(n+1)`
-/

namespace A076060.P8882152741770445992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A076061 (n + 1)

end

end A076060.P8882152741770445992

/-! ## A076060.P4139619835662687972

`Δ[A007504(n)]*A076061(n+1)`
-/

namespace A076060.P4139619835662687972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A076061 (n + 1)

end

end A076060.P4139619835662687972

/-! ## A076060.P11303564570783568646

`A000040(n+1)*A076061(n+1)`
-/

namespace A076060.P11303564570783568646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A076061 (n + 1)

end

end A076060.P11303564570783568646

/-! ## A076060.P17117082779712207060

`record[A006530(2*(n+2))]*A076061(n+1)`
-/

namespace A076060.P17117082779712207060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A076061 (n + 1)

end

end A076060.P17117082779712207060

/-! ## A076060.P639996787480615347

`record[A051698(n)]*A076061(n+1)`
-/

namespace A076060.P639996787480615347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A076061 (n + 1)

end

end A076060.P639996787480615347

/-!
# A076061: Sum of members of n-th group in A076062 divided by n-th prime.

The programs for A076061, there is no canonical definition to state claims against.
-/

/-! ## A076061.P3395543854153273644

`A076060(n+1)/Δ[A007504(n)]`
-/

namespace A076061.P3395543854153273644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A076061.P3395543854153273644

/-! ## A076061.P15898074113447909657

`A076060(n+1)/A000040(n+1)`
-/

namespace A076061.P15898074113447909657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A076061.P15898074113447909657

/-! ## A076061.P15503548758647795038

`A076060(n+1)/abs(Δ[A008348(n)])`
-/

namespace A076061.P15503548758647795038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / (|f1 (n + 1) - f1 n| : ℚ)

end

end A076061.P15503548758647795038

/-! ## A076061.P10684457523697842962

`A076060(n+1)/(A040976(n+1)+2)`
-/

namespace A076061.P10684457523697842962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / (A040976 (n + 1) + 2 : ℚ)

end

end A076061.P10684457523697842962

/-! ## A076061.P5015937272694316120

`A076060(n+1)/∑{d}[n+1, A007444(#)]`
-/

namespace A076061.P5015937272694316120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), A007444 d : ℤ) : ℚ)

end

end A076061.P5015937272694316120

/-! ## A076061.P3272780682112097183

`A076060(n+1)/(A014688(n+1)-(n+1))`
-/

namespace A076061.P3272780682112097183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / (A014688 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A076061.P3272780682112097183

/-! ## A076061.P592224867834361686

`A076060(n+1)/∪[A042988(n), A042990(n)]`
-/

namespace A076061.P592224867834361686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076060 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A076061.P592224867834361686

/-!
# A076062: Group the positive integers so that the n-th group contains n numbers whose sum is a multiple of the n-th prime.

The programs for A076062, there is no canonical definition to state claims against.
-/

/-! ## A076062.P1393225297660162956

`A135523(lcm(A049936(n+1), A099627(n+1)))+n`
-/

namespace A076062.P1393225297660162956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (Int.lcm (A049936 (n + 1)) (A099627 (n + 1))) + (n : ℤ)

end

end A076062.P1393225297660162956

/-!
# A076064: Initial members of groups in A076063.

The programs for A076064, there is no canonical definition to state claims against.
-/

/-! ## A076064.P414570853441768296

`A076063(∑[n]+1)`
-/

namespace A076064.P414570853441768296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076064.P414570853441768296

/-! ## A076064.P10808055698716944120

`A076063(A000124(n))%A042816(n)`
-/

namespace A076064.P10808055698716944120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076063 (A000124 n).toNat) (A042816 n)

end

end A076064.P10808055698716944120

/-! ## A076064.P8131570458614293932

`A076063(A000124(n))*A276391(2*n+1)`
-/

namespace A076064.P8131570458614293932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076063 (A000124 n).toNat * A276391 (2 * n + 1)

end

end A076064.P8131570458614293932

/-!
# A076065: Final members of groups in A076063.

The programs for A076065, there is no canonical definition to state claims against.
-/

/-! ## A076065.P12848593495545901541

`A076063(∑[n+1])`
-/

namespace A076065.P12848593495545901541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076065.P12848593495545901541

/-!
# A076066: Sums of members of groups in A076063.

The programs for A076066, there is no canonical definition to state claims against.
-/

/-! ## A076066.P11502173884698671900

`Δ[A053767(n)]*A076067(n+1)`
-/

namespace A076066.P11502173884698671900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A076067 (n + 1)

end

end A076066.P11502173884698671900

/-! ## A076066.P1973239117616862503

`A002808(n+1)*A076067(n+1)`
-/

namespace A076066.P1973239117616862503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A076067 (n + 1)

end

end A076066.P1973239117616862503

/-! ## A076066.P6262380752093437601

`A018252(n+2)*A076067(n+1)`
-/

namespace A076066.P6262380752093437601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * A076067 (n + 1)

end

end A076066.P6262380752093437601

/-! ## A076066.P11482983549488114776

`A026239(A000040(n+1))*A076067(n+1)`
-/

namespace A076066.P11482983549488114776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A000040 (n + 1)).toNat * A076067 (n + 1)

end

end A076066.P11482983549488114776

/-! ## A076066.P12712595408944051834

`record[A181097(n+1)]*A076067(n+1)`
-/

namespace A076066.P12712595408944051834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A076067 (n + 1)

end

end A076066.P12712595408944051834

/-!
# A076067: Sum of members of n-th group in A076063 divided by n-th composite number.

The programs for A076067, there is no canonical definition to state claims against.
-/

/-! ## A076067.P6509992416209562000

`A076066(n+1)/Δ[A053767(n)]`
-/

namespace A076067.P6509992416209562000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076066 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A076067.P6509992416209562000

/-! ## A076067.P12646639593066426324

`A076066(n+1)/A002808(n+1)`
-/

namespace A076067.P12646639593066426324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076066 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)

end

end A076067.P12646639593066426324

/-! ## A076067.P1920743996009531753

`A076066(n+1)/A018252(n+2)`
-/

namespace A076067.P1920743996009531753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076066 (n + 1) : ℚ) / (A018252 (n + 2) : ℚ)

end

end A076067.P1920743996009531753

/-! ## A076067.P1020155660620737908

`A076066(n+1)/A026239(A000040(n+1))`
-/

namespace A076067.P1020155660620737908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076066 (n + 1) : ℚ) / (A026239 (A000040 (n + 1)).toNat : ℚ)

end

end A076067.P1020155660620737908

/-! ## A076067.P384366148723176955

`A076066(n+1)/record[A181097(n+1)]`
-/

namespace A076067.P384366148723176955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181097 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076066 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A076067.P384366148723176955

/-!
# A076070: Smallest multiple of n that can be formed by using the digits of the next n numbers, or 0 if no such number exists.

The programs for A076070, there is no canonical definition to state claims against.
-/

/-! ## A076070.P8269673558834770565

`(n+1)*A076071(n+1)`
-/

namespace A076070.P8269673558834770565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076071 (n + 1)

end

end A076070.P8269673558834770565

/-!
# A076071: a(n) = A076070(n)/n.

The programs for A076071, there is no canonical definition to state claims against.
-/

/-! ## A076071.P3269895408086952200

`A076070(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076071.P3269895408086952200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076070 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076071.P3269895408086952200

/-!
# A076072: Largest multiple of n that can be formed by using the digits of the next n numbers, or 0 if no such number exists.

The programs for A076072, there is no canonical definition to state claims against.
-/

/-! ## A076072.P5356685199284424874

`(n+1)*A076073(n+1)`
-/

namespace A076072.P5356685199284424874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076073 (n + 1)

end

end A076072.P5356685199284424874

/-! ## A076072.P17082940971077541111

`A076073(n+1)*A348553(n)`
-/

namespace A076072.P17082940971077541111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076073 (n + 1) * A348553 n

end

end A076072.P17082940971077541111

/-!
# A076073: a(n) = A076072(n)/n.

The programs for A076073, there is no canonical definition to state claims against.
-/

/-! ## A076073.P1253830473338277196

`A076072(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076073.P1253830473338277196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076072 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076073.P1253830473338277196

/-!
# A076075: Final members of groups in A076077.

The programs for A076075, there is no canonical definition to state claims against.
-/

/-! ## A076075.P2027248935908531122

`A076077(∑[n+1])`
-/

namespace A076075.P2027248935908531122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076077 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076075.P2027248935908531122

/-! ## A076075.P8180508665104242308

`xor((2*n)%2, A076077(A000217(n+1)))`
-/

namespace A076075.P8180508665104242308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n % 2 : ℕ) : ℤ) (A076077 (A000217 (n + 1)).toNat)

end

end A076075.P8180508665104242308

/-! ## A076075.P10737302518612065102

`A076077(A000217(n+1))%A163573(n+1)`
-/

namespace A076075.P10737302518612065102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076077 (A000217 (n + 1)).toNat) (A163573 (n + 1))

end

end A076075.P10737302518612065102

/-! ## A076075.P7671918252766035872

`A076077(A000217(n+1))+A007814(2*n+5)`
-/

namespace A076075.P7671918252766035872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076077 (A000217 (n + 1)).toNat + A007814 (2 * n + 5)

end

end A076075.P7671918252766035872

/-! ## A076075.P7150440663955372057

`xor(A078857(n+1)%2-1, A076077(A000217(n+1)))`
-/

namespace A076075.P7150440663955372057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A078857 (n + 1)) 2 - 1) (A076077 (A000217 (n + 1)).toNat)

end

end A076075.P7150440663955372057

/-! ## A076075.P12380546994334810928

`xor(A091180(n+1)%2-1, A076077(A000217(n+1)))`
-/

namespace A076075.P12380546994334810928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A091180 (n + 1)) 2 - 1) (A076077 (A000217 (n + 1)).toNat)

end

end A076075.P12380546994334810928

/-! ## A076075.P8122886487449303862

`A326016(A342083(n+1))+A076077(A000217(n+1))`
-/

namespace A076075.P8122886487449303862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A342083 (n + 1)).toNat + A076077 (A000217 (n + 1)).toNat

end

end A076075.P8122886487449303862

/-! ## A076075.P9478532396102375687

`A028234(A000040(n+1))*A076077(A000217(n+1))`
-/

namespace A076075.P9478532396102375687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A000040 (n + 1)).toNat * A076077 (A000217 (n + 1)).toNat

end

end A076075.P9478532396102375687

/-! ## A076075.P8822623940491137626

`A076077(A000217(n+1))*A219175(A000040(3*(n+1)))`
-/

namespace A076075.P8822623940491137626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076077 (A000217 (n + 1)).toNat * A219175 (A000040 (3 * (n + 1))).toNat

end

end A076075.P8822623940491137626

/-! ## A076075.P7333172867409813423

`A076077(A000217(n+1))%A041798(n)`
-/

namespace A076075.P7333172867409813423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076077 (A000217 (n + 1)).toNat) (A041798 n)

end

end A076075.P7333172867409813423

/-!
# A076076: Primes associated with groups in A076077.

The programs for A076076, there is no canonical definition to state claims against.
-/

/-! ## A076076.P11478041344241690432

`A337649(A136244(n))`
-/

namespace A076076.P11478041344241690432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337649 (A136244 n).toNat

end

end A076076.P11478041344241690432

/-! ## A076076.P11106652607700788364

`A337649(A053033(n+1))`
-/

namespace A076076.P11106652607700788364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337649 (A053033 (n + 1)).toNat

end

end A076076.P11106652607700788364

/-! ## A076076.P3074048067515323948

`A322394(A076061(n+1)+n²)`
-/

namespace A076076.P3074048067515323948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (A076061 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A076076.P3074048067515323948

/-!
# A076078: a(n) is the number of nonempty sets of distinct positive integers that have a least common multiple of n.

The programs for A076078, the canonical program `A076078.P3842631660775757890` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076078 has offset 1).

The definition of A076078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076078.P2209213739284897367

`A097211(A101296(n+1))`
-/

namespace A076078.P2209213739284897367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097211 (A101296 (n + 1)).toNat

end

end A076078.P2209213739284897367

namespace A076078

/-- `A097211(A101296(n+1))` -/
def P2209213739284897367.Spec : Prop :=
  ∀ n, P2209213739284897367.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P713741061354617346

`A100587(n+1)-A339667(n+1)`
-/

namespace A076078.P713741061354617346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) - A339667 (n + 1)

end

end A076078.P713741061354617346

namespace A076078

/-- `A100587(n+1)-A339667(n+1)` -/
def P713741061354617346.Spec : Prop :=
  ∀ n, P713741061354617346.a n = A076078 (n + 1)

theorem P713741061354617346.correct : P713741061354617346.Spec := by
  intro n
  simp only [A076078, Nat.add_sub_cancel, A076078.P713741061354617346.a, A076078.P3842631660775757890.a, A000007, A000007.P6599383543502402472.a, A069626, A069626.P14114950081823336595.f1, A069626.P14114950081823336595.a, A100587, A100587.P4523483955726030569.a, A339667, A339667.P11239473250096639083.a, A000005, A000005.P16091521709108585461.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A347405, A347405.P1587307323903821383.f1, A347405.P1587307323903821383.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076078

/-! ## A076078.P3842631660775757890

`2*A069626(n+1)-A000007(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076078

/-- `2*A069626(n+1)-A000007(n)` -/
def P3842631660775757890.Spec : Prop :=
  ∀ n, P3842631660775757890.a n = A076078 (n + 1)

theorem P3842631660775757890.correct : P3842631660775757890.Spec := by
  intro n
  simp only [A076078, Nat.add_sub_cancel]

end A076078

/-! ## A076078.P1759176568760807269

`A040001(2*n)*A069626(n+1)`
-/

namespace A076078.P1759176568760807269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A069626 (n + 1)

end

end A076078.P1759176568760807269

namespace A076078

/-- `A040001(2*n)*A069626(n+1)` -/
def P1759176568760807269.Spec : Prop :=
  ∀ n, P1759176568760807269.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P8639376424117632688

`A069626(n+1)*A322827(round(n/(n+1)))`
-/

namespace A076078.P8639376424117632688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) * A322827 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A076078.P8639376424117632688

namespace A076078

/-- `A069626(n+1)*A322827(round(n/(n+1)))` -/
def P8639376424117632688.Spec : Prop :=
  ∀ n, P8639376424117632688.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P1162588623145719230

`∑{d}[n+1, A008683(#)*A100587((n+1)/#)]`
-/

namespace A076078.P1162588623145719230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A100587 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076078.P1162588623145719230

namespace A076078

/-- `∑{d}[n+1, A008683(#)*A100587((n+1)/#)]` -/
def P1162588623145719230.Spec : Prop :=
  ∀ n, P1162588623145719230.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P3183408412757791464

`A037445(A006530(n+1))*A069626(n+1)`
-/

namespace A076078.P3183408412757791464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A006530 (n + 1)).toNat * A069626 (n + 1)

end

end A076078.P3183408412757791464

namespace A076078

/-- `A037445(A006530(n+1))*A069626(n+1)` -/
def P3183408412757791464.Spec : Prop :=
  ∀ n, P3183408412757791464.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P5484831083778980989

`A034444(A034444(n+1))*A069626(n+1)`
-/

namespace A076078.P5484831083778980989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A069626 (n + 1)

end

end A076078.P5484831083778980989

namespace A076078

/-- `A034444(A034444(n+1))*A069626(n+1)` -/
def P5484831083778980989.Spec : Prop :=
  ∀ n, P5484831083778980989.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P14405126582977217035

`A069626(n+1)*A071187(A071187(n+1))`
-/

namespace A076078.P14405126582977217035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) * A071187 (A071187 (n + 1)).toNat

end

end A076078.P14405126582977217035

namespace A076078

/-- `A069626(n+1)*A071187(A071187(n+1))` -/
def P14405126582977217035.Spec : Prop :=
  ∀ n, P14405126582977217035.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P674611265247605424

`A037445(n+1)/A069626(A037445(n+1))*A069626(n+1)`
-/

namespace A076078.P674611265247605424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A069626 (A037445 (n + 1)).toNat : ℚ) * (A069626 (n + 1) : ℚ)

end

end A076078.P674611265247605424

namespace A076078

/-- `A037445(n+1)/A069626(A037445(n+1))*A069626(n+1)` -/
def P674611265247605424.Spec : Prop :=
  ∀ n, P674611265247605424.a n = (A076078 (n + 1) : ℚ)

end A076078

/-! ## A076078.P17096921930660510269

`A020639(A000040(n+1)-1)*A069626(n+1)`
-/

namespace A076078.P17096921930660510269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A069626 (n + 1)

end

end A076078.P17096921930660510269

namespace A076078

/-- `A020639(A000040(n+1)-1)*A069626(n+1)` -/
def P17096921930660510269.Spec : Prop :=
  ∀ n, P17096921930660510269.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P734159211120979985

`A069626(n+1)*A071187(n²+1)`
-/

namespace A076078.P734159211120979985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) * A071187 (n ^ 2 + 1)

end

end A076078.P734159211120979985

namespace A076078

/-- `A069626(n+1)*A071187(n²+1)` -/
def P734159211120979985.Spec : Prop :=
  ∀ n, P734159211120979985.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P6218111171362307990

`A119347(A100577(n+1))-A339667(n+1)`
-/

namespace A076078.P6218111171362307990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (A100577 (n + 1)).toNat - A339667 (n + 1)

end

end A076078.P6218111171362307990

namespace A076078

/-- `A119347(A100577(n+1))-A339667(n+1)` -/
def P6218111171362307990.Spec : Prop :=
  ∀ n, P6218111171362307990.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P16372527612308280226

`A339667(A338506(n+1))-A339667(n+1)`
-/

namespace A076078.P16372527612308280226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339667 (A338506 (n + 1)).toNat - A339667 (n + 1)

end

end A076078.P16372527612308280226

namespace A076078

/-- `A339667(A338506(n+1))-A339667(n+1)` -/
def P16372527612308280226.Spec : Prop :=
  ∀ n, P16372527612308280226.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P12046238860766778209

`A004273(A069626(n+1)+n)-A004273(n)`
-/

namespace A076078.P12046238860766778209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A069626 (n + 1) + (n : ℤ)).toNat - A004273 n

end

end A076078.P12046238860766778209

namespace A076078

/-- `A004273(A069626(n+1)+n)-A004273(n)` -/
def P12046238860766778209.Spec : Prop :=
  ∀ n, P12046238860766778209.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P7530528398386789155

`A069626(A006530(n+1)²)*A069626(n+1)`
-/

namespace A076078.P7530528398386789155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (A006530 (n + 1) ^ 2).toNat * A069626 (n + 1)

end

end A076078.P7530528398386789155

namespace A076078

/-- `A069626(A006530(n+1)²)*A069626(n+1)` -/
def P7530528398386789155.Spec : Prop :=
  ∀ n, P7530528398386789155.a n = A076078 (n + 1)

end A076078

/-! ## A076078.P8643275688626748441

`A069626(A020639(n+1)²)*A069626(n+1)`
-/

namespace A076078.P8643275688626748441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (A020639 (n + 1) ^ 2).toNat * A069626 (n + 1)

end

end A076078.P8643275688626748441

namespace A076078

/-- `A069626(A020639(n+1)²)*A069626(n+1)` -/
def P8643275688626748441.Spec : Prop :=
  ∀ n, P8643275688626748441.a n = A076078 (n + 1)

end A076078

/-!
# A076079: Largest multiple of n < the n-th prime.

The programs for A076079, the canonical program `A076079.P11386046758032469833` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076079 has offset 1).

The definition of A076079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076079.P13827155148047271924

`A068902(n+1)-(n+1)`
-/

namespace A076079.P13827155148047271924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1) - (n + 1 : ℤ)

end

end A076079.P13827155148047271924

namespace A076079

/-- `A068902(n+1)-(n+1)` -/
def P13827155148047271924.Spec : Prop :=
  ∀ n, P13827155148047271924.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P11402379288485060873

`(n+1)*A076080(n+1)`
-/

namespace A076079.P11402379288485060873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076080 (n + 1)

end

end A076079.P11402379288485060873

namespace A076079

/-- `(n+1)*A076080(n+1)` -/
def P11402379288485060873.Spec : Prop :=
  ∀ n, P11402379288485060873.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P7240148537555688585

`(n+1)*(A090973(n+1)-1)`
-/

namespace A076079.P7240148537555688585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A090973 (n + 1) - 1)

end

end A076079.P7240148537555688585

namespace A076079

/-- `(n+1)*(A090973(n+1)-1)` -/
def P7240148537555688585.Spec : Prop :=
  ∀ n, P7240148537555688585.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P8152218367468179543

`(n+1)*floor(A000040(n+1)/(log(3)+n))`
-/

namespace A076079.P8152218367468179543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A000040 (n + 1) : ℝ) / (Real.log (3 : ℝ) + (n : ℝ))⌋

end

end A076079.P8152218367468179543

namespace A076079

/-- `(n+1)*floor(A000040(n+1)/(log(3)+n))` -/
def P8152218367468179543.Spec : Prop :=
  ∀ n, P8152218367468179543.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P16186297162113068740

`A068901(n+1)+A014689(n+1)`
-/

namespace A076079.P16186297162113068740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1) + A014689 (n + 1)

end

end A076079.P16186297162113068740

namespace A076079

/-- `A068901(n+1)+A014689(n+1)` -/
def P16186297162113068740.Spec : Prop :=
  ∀ n, P16186297162113068740.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P11386046758032469833

`A006005(n+1)-A004648(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076079

/-- `A006005(n+1)-A004648(n+1)` -/
def P11386046758032469833.Spec : Prop :=
  ∀ n, P11386046758032469833.a n = A076079 (n + 1)

theorem P11386046758032469833.correct : P11386046758032469833.Spec := by
  intro n
  simp only [A076079, Nat.add_sub_cancel]

end A076079

/-! ## A076079.P8807182949545827894

`A006093(n+1)-A087611(n+1)`
-/

namespace A076079.P8807182949545827894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A087611 (n + 1)

end

end A076079.P8807182949545827894

namespace A076079

/-- `A006093(n+1)-A087611(n+1)` -/
def P8807182949545827894.Spec : Prop :=
  ∀ n, P8807182949545827894.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P1741274218109326946

`(n+1)*A002260(A079415(n+1))`
-/

namespace A076079.P1741274218109326946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002260 (A079415 (n + 1)).toNat

end

end A076079.P1741274218109326946

namespace A076079

/-- `(n+1)*A002260(A079415(n+1))` -/
def P1741274218109326946.Spec : Prop :=
  ∀ n, P1741274218109326946.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P13450082906451449027

`A000040(n+1)-(A087611(n+1)+1)`
-/

namespace A076079.P13450082906451449027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A087611 (n + 1) + 1)

end

end A076079.P13450082906451449027

namespace A076079

/-- `A000040(n+1)-(A087611(n+1)+1)` -/
def P13450082906451449027.Spec : Prop :=
  ∀ n, P13450082906451449027.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P11725528123834671720

`record[A000010(n+1)]-record[A000010(n+1)]%(n+1)`
-/

namespace A076079.P11725528123834671720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

end

end A076079.P11725528123834671720

namespace A076079

/-- `record[A000010(n+1)]-record[A000010(n+1)]%(n+1)` -/
def P11725528123834671720.Spec : Prop :=
  ∀ n, P11725528123834671720.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P10146371683507919815

`A000265(A000040(n+1))-A004648(n+1)`
-/

namespace A076079.P10146371683507919815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000040 (n + 1)).toNat - A004648 (n + 1)

end

end A076079.P10146371683507919815

namespace A076079

/-- `A000265(A000040(n+1))-A004648(n+1)` -/
def P10146371683507919815.Spec : Prop :=
  ∀ n, P10146371683507919815.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P3628925428801823855

`(n+1)*floor(eq[1, A001222(n+1)]/(n+1))`
-/

namespace A076079.P3628925428801823855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A076079.P3628925428801823855

namespace A076079

/-- `(n+1)*floor(eq[1, A001222(n+1)]/(n+1))` -/
def P3628925428801823855.Spec : Prop :=
  ∀ n, P3628925428801823855.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P16995045024916321847

`(n+1)*floor(eq[2, A000005(n+1)]/(n+1))`
-/

namespace A076079.P16995045024916321847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A076079.P16995045024916321847

namespace A076079

/-- `(n+1)*floor(eq[2, A000005(n+1)]/(n+1))` -/
def P16995045024916321847.Spec : Prop :=
  ∀ n, P16995045024916321847.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P6423769361848453168

`(n+1)*floor(eq[n+2, A000203(n+1)]/(n+1))`
-/

namespace A076079.P6423769361848453168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A076079.P6423769361848453168

namespace A076079

/-- `(n+1)*floor(eq[n+2, A000203(n+1)]/(n+1))` -/
def P6423769361848453168.Spec : Prop :=
  ∀ n, P6423769361848453168.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P17129000611086214078

`A003961(A008578(n+1))-A000040(n+1)%(n+1)`
-/

namespace A076079.P17129000611086214078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008578 (n + 1)).toNat - Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

end

end A076079.P17129000611086214078

namespace A076079

/-- `A003961(A008578(n+1))-A000040(n+1)%(n+1)` -/
def P17129000611086214078.Spec : Prop :=
  ∀ n, P17129000611086214078.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P1313440134420917775

`A003961(A008578(n+1))-record[A006530(n+2)]%(n+1)`
-/

namespace A076079.P1313440134420917775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008578 (n + 1)).toNat - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A076079.P1313440134420917775

namespace A076079

/-- `A003961(A008578(n+1))-record[A006530(n+2)]%(n+1)` -/
def P1313440134420917775.Spec : Prop :=
  ∀ n, P1313440134420917775.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P1454941686739800514

`A003961(A008578(n+1))-record[A020639(n+2)]%(n+1)`
-/

namespace A076079.P1454941686739800514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008578 (n + 1)).toNat - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A076079.P1454941686739800514

namespace A076079

/-- `A003961(A008578(n+1))-record[A020639(n+2)]%(n+1)` -/
def P1454941686739800514.Spec : Prop :=
  ∀ n, P1454941686739800514.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P5022544135971058903

`A003961(A008578(n+1))-(eq[1, A001222(n+1)]+1)%(n+1)`
-/

namespace A076079.P5022544135971058903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008578 (n + 1)).toNat - (((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % (n + 1) : ℕ) : ℤ)

end

end A076079.P5022544135971058903

namespace A076079

/-- `A003961(A008578(n+1))-(eq[1, A001222(n+1)]+1)%(n+1)` -/
def P5022544135971058903.Spec : Prop :=
  ∀ n, P5022544135971058903.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P15493769789959643270

`A003961(A008578(n+1))-(comp[A018252(n+1)-1]+1)%(n+1)`
-/

namespace A076079.P15493769789959643270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008578 (n + 1)).toNat - (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) % (n + 1) : ℕ) : ℤ)

end

end A076079.P15493769789959643270

namespace A076079

/-- `A003961(A008578(n+1))-(comp[A018252(n+1)-1]+1)%(n+1)` -/
def P15493769789959643270.Spec : Prop :=
  ∀ n, P15493769789959643270.a n = A076079 (n + 1)

end A076079

/-! ## A076079.P15417899721340396498

`A003961(A008578(n+1))-record[A093074(n+1)]%(n+1)`
-/

namespace A076079.P15417899721340396498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008578 (n + 1)).toNat - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A076079.P15417899721340396498

namespace A076079

/-- `A003961(A008578(n+1))-record[A093074(n+1)]%(n+1)` -/
def P15417899721340396498.Spec : Prop :=
  ∀ n, P15417899721340396498.a n = A076079 (n + 1)

end A076079

/-!
# A076080: a(n) = A076079(n)/n.

The programs for A076080, the canonical program `A076080.P5243049804028882978` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076080 has offset 1).

The definition of A076080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076079, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076080.P5243049804028882978

`A076079(n+1)/(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076080

/-- `A076079(n+1)/(n+1)` -/
def P5243049804028882978.Spec : Prop :=
  ∀ n, P5243049804028882978.a n = (A076080 (n + 1) : ℚ)

end A076080

/-! ## A076080.P1904559023380914552

`floor((A000040(n+1)-1)/(n+1))`
-/

namespace A076080.P1904559023380914552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A076080.P1904559023380914552

namespace A076080

/-- `floor((A000040(n+1)-1)/(n+1))` -/
def P1904559023380914552.Spec : Prop :=
  ∀ n, P1904559023380914552.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P268725698826677257

`ceil((p?[round(8*n/7)]-n-1)/(n+1))`
-/

namespace A076080.P268725698826677257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A076080.P268725698826677257

namespace A076080

/-- `ceil((p?[round(8*n/7)]-n-1)/(n+1))` -/
def P268725698826677257.Spec : Prop :=
  ∀ n, P268725698826677257.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P11343047552506359524

`A090973(n+1)-1`
-/

namespace A076080.P11343047552506359524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (n + 1) - 1

end

end A076080.P11343047552506359524

namespace A076080

/-- `A090973(n+1)-1` -/
def P11343047552506359524.Spec : Prop :=
  ∀ n, P11343047552506359524.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P11742569500012585133

`A038605(abs(1-n)+2)`
-/

namespace A076080.P11742569500012585133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (|1 - (n : ℤ)| + 2).toNat

end

end A076080.P11742569500012585133

namespace A076080

/-- `A038605(abs(1-n)+2)` -/
def P11742569500012585133.Spec : Prop :=
  ∀ n, P11742569500012585133.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P7160196134788663583

`floor(A006005(n+1)/(n+1))`
-/

namespace A076080.P7160196134788663583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A076080.P7160196134788663583

namespace A076080

/-- `floor(A006005(n+1)/(n+1))` -/
def P7160196134788663583.Spec : Prop :=
  ∀ n, P7160196134788663583.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P10681243066285278553

`floor(A006093(n+1)/(n+1))`
-/

namespace A076080.P10681243066285278553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A076080.P10681243066285278553

namespace A076080

/-- `floor(A006093(n+1)/(n+1))` -/
def P10681243066285278553.Spec : Prop :=
  ∀ n, P10681243066285278553.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P9498573681396345316

`A068902(n+1)/(n+1)-1`
-/

namespace A076080.P9498573681396345316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068902 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A076080.P9498573681396345316

namespace A076080

/-- `A068902(n+1)/(n+1)-1` -/
def P9498573681396345316.Spec : Prop :=
  ∀ n, P9498573681396345316.a n = (A076080 (n + 1) : ℚ)

end A076080

/-! ## A076080.P15942318940127843495

`floor(A000040(n+1)/(log(3)+n))`
-/

namespace A076080.P15942318940127843495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) / (Real.log (3 : ℝ) + (n : ℝ))⌋

end

end A076080.P15942318940127843495

namespace A076080

/-- `floor(A000040(n+1)/(log(3)+n))` -/
def P15942318940127843495.Spec : Prop :=
  ∀ n, P15942318940127843495.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P11575414051152733892

`A002260(A079415(n+1))`
-/

namespace A076080.P11575414051152733892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A079415 (n + 1)).toNat

end

end A076080.P11575414051152733892

namespace A076080

/-- `A002260(A079415(n+1))` -/
def P11575414051152733892.Spec : Prop :=
  ∀ n, P11575414051152733892.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P4415203062740553361

`A038605(n+1)-A000007(n)`
-/

namespace A076080.P4415203062740553361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) - A000007 n

end

end A076080.P4415203062740553361

namespace A076080

/-- `A038605(n+1)-A000007(n)` -/
def P4415203062740553361.Spec : Prop :=
  ∀ n, P4415203062740553361.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P14533009147906221778

`A038605(n+1)/A054977(n)`
-/

namespace A076080.P14533009147906221778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038605 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A076080.P14533009147906221778

namespace A076080

/-- `A038605(n+1)/A054977(n)` -/
def P14533009147906221778.Spec : Prop :=
  ∀ n, P14533009147906221778.a n = (A076080 (n + 1) : ℚ)

end A076080

/-! ## A076080.P10813352413798073237

`A038605(n+1)+A057427(n)-1`
-/

namespace A076080.P10813352413798073237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + (A057427 n - 1)

end

end A076080.P10813352413798073237

namespace A076080

/-- `A038605(n+1)+A057427(n)-1` -/
def P10813352413798073237.Spec : Prop :=
  ∀ n, P10813352413798073237.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P1132725340065319701

`A038605(n+1)-(A057428(n)+1)`
-/

namespace A076080.P1132725340065319701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) - (A057428 n + 1)

end

end A076080.P1132725340065319701

namespace A076080

/-- `A038605(n+1)-(A057428(n)+1)` -/
def P1132725340065319701.Spec : Prop :=
  ∀ n, P1132725340065319701.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P3954306692060741456

`A075765(n+1)-(A087611(n+1)+1)`
-/

namespace A076080.P3954306692060741456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1) - (A087611 (n + 1) + 1)

end

end A076080.P3954306692060741456

namespace A076080

/-- `A075765(n+1)-(A087611(n+1)+1)` -/
def P3954306692060741456.Spec : Prop :=
  ∀ n, P3954306692060741456.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P8023999008199552390

`a(A060838(n+1))*A038605(n+1)` with `a(0)=1`
-/

namespace A076080.P8023999008199552390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A060838 (n + 1)).toNat * A038605 (n + 1)

end

end A076080.P8023999008199552390

namespace A076080

/-- `a(A060838(n+1))*A038605(n+1)` -/
def P8023999008199552390.Spec : Prop :=
  ∀ n, P8023999008199552390.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P15053736732275826072

`ceil(p?[round(sqrt(n)+n)]/(n+1))-1`
-/

namespace A076080.P15053736732275826072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A076080.P15053736732275826072

namespace A076080

/-- `ceil(p?[round(sqrt(n)+n)]/(n+1))-1` -/
def P15053736732275826072.Spec : Prop :=
  ∀ n, P15053736732275826072.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P3785219180541842047

`floor(p?[n%3+n]*acot(n+1))`
-/

namespace A076080.P3785219180541842047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A076080.P3785219180541842047

namespace A076080

/-- `floor(p?[n%3+n]*acot(n+1))` -/
def P3785219180541842047.Spec : Prop :=
  ∀ n, P3785219180541842047.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P7292725178632576597

`floor((p?[abs(xor(n, -2))]-1)/(n+1))`
-/

namespace A076080.P7292725178632576597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A076080.P7292725178632576597

namespace A076080

/-- `floor((p?[abs(xor(n, -2))]-1)/(n+1))` -/
def P7292725178632576597.Spec : Prop :=
  ∀ n, P7292725178632576597.a n = A076080 (n + 1)

end A076080

/-! ## A076080.P11120060037466733541

`floor(record[A000010(n+1)]/(n+1))`
-/

namespace A076080.P11120060037466733541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A076080.P11120060037466733541

namespace A076080

/-- `floor(record[A000010(n+1)]/(n+1))` -/
def P11120060037466733541.Spec : Prop :=
  ∀ n, P11120060037466733541.a n = A076080 (n + 1)

end A076080

/-!
# A076081: Rearrange numbers from 1 to n: start with the divisors of n in ascending order followed by numbers in ascending order which leave a remainder 1 on dividing by n, followed by those leaving remainder 2 ... up to remainder [(n-1)/2].

The programs for A076081, there is no canonical definition to state claims against.
-/

/-! ## A076081.P2546559860145661698

`gcd(A193977(A215861(n)), A247358(n+1))`
-/

namespace A076081.P2546559860145661698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193977 (A215861 n).toNat) (A247358 (n + 1))

end

end A076081.P2546559860145661698

/-! ## A076081.P4491426129692811498

`A001511(A342587(n+1)+A083550(n+1))`
-/

namespace A076081.P4491426129692811498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A342587 (n + 1) + A083550 (n + 1)).toNat

end

end A076081.P4491426129692811498

/-! ## A076081.P9523664875937954018

`A220482(∑[A088863(A140303(n))])`
-/

namespace A076081.P9523664875937954018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (A140303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220482 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076081.P9523664875937954018

/-! ## A076081.P1289625170758576579

`A261867(xor(A064458(n), A187829(n+1)))`
-/

namespace A076081.P1289625170758576579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261867 (Int.xor (A064458 n) (A187829 (n + 1))).toNat

end

end A076081.P1289625170758576579

/-! ## A076081.P6546669545363572869

`A261867(xor(A061798(n+1), A187829(n+1)))`
-/

namespace A076081.P6546669545363572869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261867 (Int.xor (A061798 (n + 1)) (A187829 (n + 1))).toNat

end

end A076081.P6546669545363572869

/-!
# A076082: Consider all composite numbers between prime(n) and prime(n+1); take those with greatest number of divisors; a(n) is the smallest of them.

The programs for A076082, there is no canonical definition to state claims against.
-/

/-! ## A076082.P437552736650880852

`or(A113709(n+2), A185214(A058276(n)))`
-/

namespace A076082.P437552736650880852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113709 (n + 2)) (A185214 (A058276 n).toNat)

end

end A076082.P437552736650880852

/-! ## A076082.P1342051942820287614

`A113709(n+2)+A049321(A077616(A305962(n)))`
-/

namespace A076082.P1342051942820287614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2) + A049321 (A077616 (A305962 n).toNat).toNat

end

end A076082.P1342051942820287614

/-! ## A076082.P2659698968389204799

`A113709(n+2)+A055641(A219272(A078374(n+1)))`
-/

namespace A076082.P2659698968389204799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2) + A055641 (A219272 (A078374 (n + 1)).toNat).toNat

end

end A076082.P2659698968389204799

/-!
# A076083: Consider all composite numbers between prime(n) and prime(n+1); take those with smallest number of divisors; a(n) is the smallest of them.

The programs for A076083, there is no canonical definition to state claims against.
-/

/-! ## A076083.P17873146832698018924

`A069568(A001405(n))+A000040(n+2)`
-/

namespace A076083.P17873146832698018924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069568 (A001405 n).toNat + A000040 (n + 2)

end

end A076083.P17873146832698018924

/-! ## A076083.P9487357871741746302

`A325469(A159340(n))+A000040(n+2)`
-/

namespace A076083.P9487357871741746302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325469 (A159340 n).toNat + A000040 (n + 2)

end

end A076083.P9487357871741746302

/-! ## A076083.P15096258987637602119

`A351014(A204937(n+1))+A000040(n+2)`
-/

namespace A076083.P15096258987637602119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A204937 (n + 1)).toNat + A000040 (n + 2)

end

end A076083.P15096258987637602119

/-! ## A076083.P17464451230743152987

`A065091(n+1)+A022921(A329309(3*n+4))`
-/

namespace A076083.P17464451230743152987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A022921 (A329309 (3 * n + 4)).toNat

end

end A076083.P17464451230743152987

/-!
# A076084: Consider all numbers that can be formed by permuting the digits of n; take those with the greatest number of divisors; a(n) is the smallest of them.

The programs for A076084, there is no canonical definition to state claims against.
-/

/-! ## A076084.P14726681602117216895

`4*A210709(n+11)+n+1`
-/

namespace A076084.P14726681602117216895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A210709 (n + 11) + (n + 1 : ℤ)

end

end A076084.P14726681602117216895

/-! ## A076084.P15072268053309716140

`4*n*A185284(2*n+1)+n+1`
-/

namespace A076084.P15072268053309716140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A185284 (2 * n + 1) + (n + 1 : ℤ)

end

end A076084.P15072268053309716140

/-! ## A076084.P16954646352663285737

`A117358(A001644(n))+n`
-/

namespace A076084.P16954646352663285737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A001644 n).toNat + (n : ℤ)

end

end A076084.P16954646352663285737

/-! ## A076084.P274436732707465389

`A061674(A184964(n))+n`
-/

namespace A076084.P274436732707465389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 (A184964 n).toNat + (n : ℤ)

end

end A076084.P274436732707465389

/-! ## A076084.P17404700230997815222

`A188474(A086810(n))+n`
-/

namespace A076084.P17404700230997815222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188474 (A086810 n).toNat + (n : ℤ)

end

end A076084.P17404700230997815222

/-!
# A076086: a(1) = 1; a(n) is the smallest multiple of a(n-1) not divisible by 10 which is greater than the digit reversal of a(n-1). In case R(a(n-1)) < a(n-1) then a(n) = 2*a(n-1).

The programs for A076086, there is no canonical definition to state claims against.
-/

/-! ## A076086.P5883720218564126706

`A292599(∏[p?[A072994(n+1)]])`
-/

namespace A076086.P5883720218564126706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292599 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076086.P5883720218564126706

/-! ## A076086.P2926040958382321565

`A000079(n)*A243928(A034386(n))`
-/

namespace A076086.P2926040958382321565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A243928 (A034386 n).toNat

end

end A076086.P2926040958382321565

/-! ## A076086.P17693750100339759884

`A000079(n)*A330240(A232982(n))`
-/

namespace A076086.P17693750100339759884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A330240 (A232982 n).toNat

end

end A076086.P17693750100339759884

/-! ## A076086.P15573409109365938945

`A026741(∏[A034839(n)+1])`
-/

namespace A076086.P15573409109365938945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076086.P15573409109365938945

/-! ## A076086.P12701145029504945461

`A029578(∏[A034839(n)+1])`
-/

namespace A076086.P12701145029504945461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076086.P12701145029504945461

/-!
# A076087: a(n) = 7*n - 3 * Sum_{i=1..n} A006460(i).

The programs for A076087, there is no canonical definition to state claims against.
-/

/-! ## A076087.P9161740835561250208

`∑[3*(2-A006460(n+1))+1]`
-/

namespace A076087.P9161740835561250208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 - A006460 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076087.P9161740835561250208

/-!
# A076090: a(1) = 1; for n > 1, smallest number > 1 which is the n-th power of the sum of its digits, or 0 if no such number exists.

The programs for A076090, there is no canonical definition to state claims against.
-/

/-! ## A076090.P12158969628554145010

`A072408(n+1)-char[(8*n)²]`
-/

namespace A076090.P12158969628554145010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072408 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A076090.P12158969628554145010

/-! ## A076090.P9330419684127879616

`A072408(a(A000038(n))+n)` with `a(0)=1`
-/

namespace A076090.P9330419684127879616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072408 (a (A000038 n).toNat + (n : ℤ)).toNat

end

end A076090.P9330419684127879616

/-! ## A076090.P8593585711867848310

`A072408(n+1)^abs(A057428(n))`
-/

namespace A076090.P8593585711867848310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072408 (n + 1) : ℚ) ^ (|A057428 n| : ℤ)

end

end A076090.P8593585711867848310

/-! ## A076090.P8844821923186395218

`A072408(n+1)^A001221(A072404(n+1))`
-/

namespace A076090.P8844821923186395218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072408 (n + 1) : ℚ) ^ (A001221 (A072404 (n + 1)).toNat : ℤ)

end

end A076090.P8844821923186395218

/-! ## A076090.P10606032914371723984

`A072408(n+1)^A001222(∑{p}[n+1, gcd(n, #)]+1)`
-/

namespace A076090.P10606032914371723984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072408 (n + 1) : ℚ) ^ (A001222 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + 1) : ℤ)

end

end A076090.P10606032914371723984

/-!
# A076091: Numbers n such that A064097(n) - A003313(n) = 1.

The programs for A076091, there is no canonical definition to state claims against.
-/

/-! ## A076091.P2235128269600135629

`eq[1, A076142(n+1)]+1`
-/

namespace A076091.P2235128269600135629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076091.P2235128269600135629

/-! ## A076091.P16771396150606882301

`A063660(eq[1, A076142(n+1)])`
-/

namespace A076091.P16771396150606882301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076091.P16771396150606882301

/-! ## A076091.P2321026353936476072

`A153152(eq[1, A076142(n+1)])`
-/

namespace A076091.P2321026353936476072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076091.P2321026353936476072

/-! ## A076091.P17905852859308413617

`eq[1, A076142(A257088(n))]`
-/

namespace A076091.P17905852859308413617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076091.P17905852859308413617

/-! ## A076091.P890524651890658703

`eq[1, A076142(A233583(n+1))]`
-/

namespace A076091.P890524651890658703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076091.P890524651890658703

/-!
# A076092: a(n) = n - 2*Sum_{i=1..n} A076182(i).

The programs for A076092, there is no canonical definition to state claims against.
-/

/-! ## A076092.P12014056015136602896

`∑[(-1)^A006666(n+1)]`
-/

namespace A076092.P12014056015136602896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006666 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076092.P12014056015136602896

/-! ## A076092.P17845499039771887821

`∑[1-2*A076182(n+1)]`
-/

namespace A076092.P17845499039771887821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A076182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076092.P17845499039771887821

/-! ## A076092.P4236541606303499768

`∑[3-2*A006513(n+1)]`
-/

namespace A076092.P4236541606303499768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A006513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076092.P4236541606303499768

/-! ## A076092.P8166353187270543498

`2*(1-A076054(n+1)+n)+n+1`
-/

namespace A076092.P8166353187270543498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A076054 (n + 1) + (n : ℤ)) + (n + 1 : ℤ)

end

end A076092.P8166353187270543498

/-! ## A076092.P9982084078937494205

`n+1-A005843(∑[A076182(n+1)])`
-/

namespace A076092.P9982084078937494205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076092.P9982084078937494205

/-! ## A076092.P18445287061897165922

`∑[A005120(A076182(n+1)+a(n-1)²)]` with `a(0)=1`
-/

namespace A076092.P18445287061897165922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A005120 (A076182 (n + 1) + f1 (n - 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076092.P18445287061897165922

/-! ## A076092.P792044281261604903

`∑[A076182(Δ[n²]+1)-A076182(n+1)]`
-/

namespace A076092.P792044281261604903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat - A076182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076092.P792044281261604903

/-! ## A076092.P10225686698824656341

`∑[round(cos((A309154(n+1)%3)²))]`
-/

namespace A076092.P10225686698824656341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Int.tmod (A309154 (n + 1)) 3 ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076092.P10225686698824656341

/-!
# A076093: Squares arising in A076991.

The programs for A076093, there is no canonical definition to state claims against.
-/

/-! ## A076093.P17727167978459759338

`A077396(n+1)²`
-/

namespace A076093.P17727167978459759338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077396 (n + 1) ^ 2

end

end A076093.P17727167978459759338

/-! ## A076093.P12606880207455740826

`A002620(2*A077396(n+1))`
-/

namespace A076093.P12606880207455740826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A077396 (n + 1)).toNat

end

end A076093.P12606880207455740826

/-! ## A076093.P14734698588174986454

`A000290(lcm((-1)^n, A077396(n+1)))`
-/

namespace A076093.P14734698588174986454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lcm ((-1) ^ n) (A077396 (n + 1)))

end

end A076093.P14734698588174986454

/-! ## A076093.P5627898817951628089

`A002620(A077396(n+1)+A077396(n+1))`
-/

namespace A076093.P5627898817951628089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A077396 (n + 1) + A077396 (n + 1)).toNat

end

end A076093.P5627898817951628089

/-! ## A076093.P1719224483887793688

`A000290(A077396(n+1)%A091454(n+1))`
-/

namespace A076093.P1719224483887793688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A077396 (n + 1)) (A091454 (n + 1))).toNat

end

end A076093.P1719224483887793688

/-! ## A076093.P15410883699765465921

`A077396(n+1)*A077396((n+1)%A065091(n+1))`
-/

namespace A076093.P15410883699765465921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077396 (n + 1) * A077396 (Int.tmod (n + 1 : ℤ) (A065091 (n + 1))).toNat

end

end A076093.P15410883699765465921

/-! ## A076093.P2016133796669377091

`A077396(n+1)^A000005(A077359(n+1))`
-/

namespace A076093.P2016133796669377091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077396 (n + 1) : ℚ) ^ (A000005 (A077359 (n + 1)).toNat : ℤ)

end

end A076093.P2016133796669377091

/-! ## A076093.P5428951814928713553

`(A077396(n+1)*A077396(n+1))%A224728(n+1)`
-/

namespace A076093.P5428951814928713553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077396 (n + 1) * A077396 (n + 1)) (A224728 (n + 1))

end

end A076093.P5428951814928713553

/-! ## A076093.P4224555510822404715

`A077396(n+1)^A000005(A077390(n+1))`
-/

namespace A076093.P4224555510822404715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077396 (n + 1) : ℚ) ^ (A000005 (A077390 (n + 1)).toNat : ℤ)

end

end A076093.P4224555510822404715

/-!
# A076095: Initial terms of rows in A076099.

The programs for A076095, the canonical program `A076095.P7954184383877310255` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076095 has offset 1).

The definition of A076095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076095.P16928212634034867227

`∑[char[C(4, n)]+n]-n`
-/

namespace A076095.P16928212634034867227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A076095.P16928212634034867227

namespace A076095

/-- `∑[char[C(4, n)]+n]-n` -/
def P16928212634034867227.Spec : Prop :=
  ∀ n, P16928212634034867227.a n = A076095 (n + 1)

end A076095

/-! ## A076095.P7954184383877310255

`a(n-1)-a(n-2)²%3+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076095

/-- `a(n-1)-a(n-2)²%3+n` -/
def P7954184383877310255.Spec : Prop :=
  ∀ n, P7954184383877310255.a n = A076095 (n + 1)

theorem P7954184383877310255.correct : P7954184383877310255.Spec := by
  intro n
  simp only [A076095, Nat.add_sub_cancel]

end A076095

/-! ## A076095.P9418908096441830549

`ceil(∑[n-ceil(a(n-2))/a(n-1)])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A076095.P9418908096441830549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) - (⌈f1 (n - 2)⌉ : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A076095.P9418908096441830549

namespace A076095

/-- `ceil(∑[n-ceil(a(n-2))/a(n-1)])` -/
def P9418908096441830549.Spec : Prop :=
  ∀ n, P9418908096441830549.a n = A076095 (n + 1)

end A076095

/-! ## A076095.P5425149504172693426

`a(n-1)-(a(n-2)^2)%3+n` with `a(0)=1, a(1)=2`
-/

namespace A076095.P5425149504172693426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.tmod (a (n - 2) ^ 2) 3 + (n : ℤ)

end

end A076095.P5425149504172693426

namespace A076095

/-- `a(n-1)-(a(n-2)^2)%3+n` -/
def P5425149504172693426.Spec : Prop :=
  ∀ n, P5425149504172693426.a n = A076095 (n + 1)

theorem P5425149504172693426.correct : P5425149504172693426.Spec := by
  intro n
  simp only [A076095, Nat.add_sub_cancel, A076095.P5425149504172693426.a, A076095.P7954184383877310255.a, SequenceMachineLib.memo_apply]

end A076095

/-! ## A076095.P14654541334681457586

`a(n-1)-gcd(3, a(n-2))%3+n` with `a(0)=1, a(1)=2`
-/

namespace A076095.P14654541334681457586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((Int.gcd 3 (a (n - 2)) % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A076095.P14654541334681457586

namespace A076095

/-- `a(n-1)-gcd(3, a(n-2))%3+n` -/
def P14654541334681457586.Spec : Prop :=
  ∀ n, P14654541334681457586.a n = A076095 (n + 1)

end A076095

/-! ## A076095.P8593568476817282123

`a(n-1)-(a(n-2)²²%3-n)` with `a(0)=1, a(1)=2`
-/

namespace A076095.P8593568476817282123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod ((a (n - 2) ^ 2) ^ 2) 3 - (n : ℤ))

end

end A076095.P8593568476817282123

namespace A076095

/-- `a(n-1)-(a(n-2)²²%3-n)` -/
def P8593568476817282123.Spec : Prop :=
  ∀ n, P8593568476817282123.a n = A076095 (n + 1)

end A076095

/-! ## A076095.P6701553228503782829

`a(n-1)-(((-a(n-2))^2)%3-n)` with `a(0)=1, a(1)=2`
-/

namespace A076095.P6701553228503782829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod ((-a (n - 2)) ^ 2) 3 - (n : ℤ))

end

end A076095.P6701553228503782829

namespace A076095

/-- `a(n-1)-(((-a(n-2))^2)%3-n)` -/
def P6701553228503782829.Spec : Prop :=
  ∀ n, P6701553228503782829.a n = A076095 (n + 1)

theorem P6701553228503782829.correct : P6701553228503782829.Spec := by
  intro n
  simp only [A076095, Nat.add_sub_cancel, A076095.P6701553228503782829.a, A076095.P7954184383877310255.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076095

/-! ## A076095.P5898418195743334153

`a(n-1)-(a(n-2)*a(n-2))%3+n` with `a(0)=1, a(1)=2`
-/

namespace A076095.P5898418195743334153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.tmod (a (n - 2) * a (n - 2)) 3 + (n : ℤ)

end

end A076095.P5898418195743334153

namespace A076095

/-- `a(n-1)-(a(n-2)*a(n-2))%3+n` -/
def P5898418195743334153.Spec : Prop :=
  ∀ n, P5898418195743334153.a n = A076095 (n + 1)

theorem P5898418195743334153.correct : P5898418195743334153.Spec := by
  intro n
  simp only [A076095, Nat.add_sub_cancel, A076095.P5898418195743334153.a, A076095.P7954184383877310255.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076095

/-!
# A076096: Final terms of rows in A076099.

The programs for A076096, there is no canonical definition to state claims against.
-/

/-! ## A076096.P6773783639663398233

`A076099(∑[n+1])`
-/

namespace A076096.P6773783639663398233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076099 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076096.P6773783639663398233

/-!
# A076097: Products of rows in A076099.

The programs for A076097, there is no canonical definition to state claims against.
-/

/-! ## A076097.P18421691249139379295

`A076098(n)^(n+1)`
-/

namespace A076097.P18421691249139379295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076098 n ^ (n + 1)

end

end A076097.P18421691249139379295

/-!
# A076098: Geometric mean of n-th row in A076099.

The programs for A076098, there is no canonical definition to state claims against.
-/

/-! ## A076098.P14184992599157617849

`root(A076097(n+1), n+1)`
-/

namespace A076098.P14184992599157617849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076097 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A076098.P14184992599157617849

