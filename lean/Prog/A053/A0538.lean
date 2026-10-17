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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A053800: Number of basis partitions of n+25 with Durfee square size 5.

The programs for A053800, the canonical program `A053800.P13951810941336330139` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053800 has offset 0).

The definition of A053800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053800.P13951810941336330139

`2*A091773(n)-A053798(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053800

/-- `2*A091773(n)-A053798(n)` -/
def P13951810941336330139.Spec : Prop :=
  ∀ n, P13951810941336330139.a n = A053800 n

theorem P13951810941336330139.correct : P13951810941336330139.Spec := by
  intro n
  simp only [A053800]

end A053800

/-! ## A053800.P17742799475082518365

`2*A091774(n)-A053801(n)`
-/

namespace A053800.P17742799475082518365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091774 n - A053801 n

end

end A053800.P17742799475082518365

namespace A053800

/-- `2*A091774(n)-A053801(n)` -/
def P17742799475082518365.Spec : Prop :=
  ∀ n, P17742799475082518365.a n = A053800 n

end A053800

/-! ## A053800.P9031068021168387551

`record[A316723(A055999(n))]`
-/

namespace A053800.P9031068021168387551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053800.P9031068021168387551

namespace A053800

/-- `record[A316723(A055999(n))]` -/
def P9031068021168387551.Spec : Prop :=
  ∀ n, P9031068021168387551.a n = A053800 n

end A053800

/-! ## A053800.P5059340274969980615

`A316723(A055999(n+3))`
-/

namespace A053800.P5059340274969980615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 (n + 3)).toNat

end

end A053800.P5059340274969980615

namespace A053800

/-- `A316723(A055999(n+3))` -/
def P5059340274969980615.Spec : Prop :=
  ∀ n, P5059340274969980615.a n = A053800 n

end A053800

/-! ## A053800.P3223437718293542239

`A316723(A134227(n+4))`
-/

namespace A053800.P3223437718293542239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A134227 (n + 4)).toNat

end

end A053800.P3223437718293542239

namespace A053800

/-- `A316723(A134227(n+4))` -/
def P3223437718293542239.Spec : Prop :=
  ∀ n, P3223437718293542239.a n = A053800 n

end A053800

/-! ## A053800.P2136400894045350064

`A316723(A056119(n)+15)`
-/

namespace A053800.P2136400894045350064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056119 n + 15).toNat

end

end A053800.P2136400894045350064

namespace A053800

/-- `A316723(A056119(n)+15)` -/
def P2136400894045350064.Spec : Prop :=
  ∀ n, P2136400894045350064.a n = A053800 n

end A053800

/-! ## A053800.P13420155878771696396

`A316723(Δ[A023551(n+1)])`
-/

namespace A053800.P13420155878771696396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (f1 (n + 1) - f1 n).toNat

end

end A053800.P13420155878771696396

namespace A053800

/-- `A316723(Δ[A023551(n+1)])` -/
def P13420155878771696396.Spec : Prop :=
  ∀ n, P13420155878771696396.a n = A053800 n

end A053800

/-! ## A053800.P1287862991626804733

`A316723(Δ[A026054(n+3)])`
-/

namespace A053800.P1287862991626804733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (f1 (n + 1) - f1 n).toNat

end

end A053800.P1287862991626804733

namespace A053800

/-- `A316723(Δ[A026054(n+3)])` -/
def P1287862991626804733.Spec : Prop :=
  ∀ n, P1287862991626804733.a n = A053800 n

end A053800

/-! ## A053800.P10040484844652483943

`record[A316723(A052905(n)-1)]`
-/

namespace A053800.P10040484844652483943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053800.P10040484844652483943

namespace A053800

/-- `record[A316723(A052905(n)-1)]` -/
def P10040484844652483943.Spec : Prop :=
  ∀ n, P10040484844652483943.a n = A053800 n

end A053800

/-! ## A053800.P7000749435606045174

`record[A316723(A055998(n)+n)]`
-/

namespace A053800.P7000749435606045174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053800.P7000749435606045174

namespace A053800

/-- `record[A316723(A055998(n)+n)]` -/
def P7000749435606045174.Spec : Prop :=
  ∀ n, P7000749435606045174.a n = A053800 n

end A053800

/-! ## A053800.P6824580494419296935

`A316723(A052905(n+3)-1)`
-/

namespace A053800.P6824580494419296935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 (n + 3) - 1).toNat

end

end A053800.P6824580494419296935

namespace A053800

/-- `A316723(A052905(n+3)-1)` -/
def P6824580494419296935.Spec : Prop :=
  ∀ n, P6824580494419296935.a n = A053800 n

end A053800

/-! ## A053800.P6402829365704318289

`A316723(A000217(n+6)-6)`
-/

namespace A053800.P6402829365704318289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 (n + 6) - 6).toNat

end

end A053800.P6402829365704318289

namespace A053800

/-- `A316723(A000217(n+6)-6)` -/
def P6402829365704318289.Spec : Prop :=
  ∀ n, P6402829365704318289.a n = A053800 n

end A053800

/-! ## A053800.P7632413202885339832

`A316723(A000124(n+6)-7)`
-/

namespace A053800.P7632413202885339832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000124 (n + 6) - 7).toNat

end

end A053800.P7632413202885339832

namespace A053800

/-- `A316723(A000124(n+6)-7)` -/
def P7632413202885339832.Spec : Prop :=
  ∀ n, P7632413202885339832.a n = A053800 n

end A053800

/-! ## A053800.P12626192161153448514

`A316723(2*n+A000096(n+3)+6)`
-/

namespace A053800.P12626192161153448514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((2 * n : ℤ) + (A000096 (n + 3) + 6)).toNat

end

end A053800.P12626192161153448514

namespace A053800

/-- `A316723(2*n+A000096(n+3)+6)` -/
def P12626192161153448514.Spec : Prop :=
  ∀ n, P12626192161153448514.a n = A053800 n

end A053800

/-! ## A053800.P12394146401024881818

`A316723(2*n+A000217(n+4)+5)`
-/

namespace A053800.P12394146401024881818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A053800.P12394146401024881818

namespace A053800

/-- `A316723(2*n+A000217(n+4)+5)` -/
def P12394146401024881818.Spec : Prop :=
  ∀ n, P12394146401024881818.a n = A053800 n

end A053800

/-! ## A053800.P8528894894491948927

`record[A316723(A093561(A055998(n)))]`
-/

namespace A053800.P8528894894491948927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A093561 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053800.P8528894894491948927

namespace A053800

/-- `record[A316723(A093561(A055998(n)))]` -/
def P8528894894491948927.Spec : Prop :=
  ∀ n, P8528894894491948927.a n = A053800 n

end A053800

/-! ## A053800.P14701740252108714057

`record[A316723(A095666(A133263(n)))]`
-/

namespace A053800.P14701740252108714057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A095666 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053800.P14701740252108714057

namespace A053800

/-- `record[A316723(A095666(A133263(n)))]` -/
def P14701740252108714057.Spec : Prop :=
  ∀ n, P14701740252108714057.a n = A053800 n

end A053800

/-!
# A053801: Number of basis partitions of n+36 with Durfee square size 6.

The programs for A053801, there is no canonical definition to state claims against.
-/

/-! ## A053801.P5026300318195477411

`2*A091774(n)-A053800(n)`
-/

namespace A053801.P5026300318195477411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091774 n - A053800 n

end

end A053801.P5026300318195477411

/-! ## A053801.P10699208847808387300

`A316723(A056121(n)+21)`
-/

namespace A053801.P10699208847808387300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056121 n + 21).toNat

end

end A053801.P10699208847808387300

/-! ## A053801.P13278992807407291118

`record[A316723(A155212(n)+1)]`
-/

namespace A053801.P13278992807407291118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053801.P13278992807407291118

/-! ## A053801.P12624948864936253658

`A316723(A155212(n+3)+1)`
-/

namespace A053801.P12624948864936253658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A155212 (n + 3) + 1).toNat

end

end A053801.P12624948864936253658

/-! ## A053801.P15785931401127626809

`A316723(A055999(n+4)-1)`
-/

namespace A053801.P15785931401127626809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 (n + 4) - 1).toNat

end

end A053801.P15785931401127626809

/-! ## A053801.P7438633199435553487

`A316723(A052905(n+4)-2)`
-/

namespace A053801.P7438633199435553487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 (n + 4) - 2).toNat

end

end A053801.P7438633199435553487

/-! ## A053801.P3770839030343096407

`A316723(A046691(n+5)-3)`
-/

namespace A053801.P3770839030343096407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A046691 (n + 5) - 3).toNat

end

end A053801.P3770839030343096407

/-! ## A053801.P8437952845410672918

`A316723(A034856(n+6)-5)`
-/

namespace A053801.P8437952845410672918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A034856 (n + 6) - 5).toNat

end

end A053801.P8437952845410672918

/-! ## A053801.P676065224954403336

`A316723(A000096(n+6)-6)`
-/

namespace A053801.P676065224954403336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000096 (n + 6) - 6).toNat

end

end A053801.P676065224954403336

/-! ## A053801.P6742909071912821842

`A316723(A000217(n+7)-7)`
-/

namespace A053801.P6742909071912821842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 (n + 7) - 7).toNat

end

end A053801.P6742909071912821842

/-! ## A053801.P17122142116979968448

`A316723(A179865(n+8)-7)`
-/

namespace A053801.P17122142116979968448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A179865 (n + 8) - 7).toNat

end

end A053801.P17122142116979968448

/-! ## A053801.P12718650765658550297

`A316723(Δ[A023551(n+2)]-1)`
-/

namespace A053801.P12718650765658550297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (f1 (n + 1) - f1 n - 1).toNat

end

end A053801.P12718650765658550297

/-! ## A053801.P12665806188536544513

`A316723(Δ[A026054(n+4)]-1)`
-/

namespace A053801.P12665806188536544513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (f1 (n + 1) - f1 n - 1).toNat

end

end A053801.P12665806188536544513

/-! ## A053801.P7673590340129145678

`record[A316723(A055998(n+2)-4)]`
-/

namespace A053801.P7673590340129145678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055998 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053801.P7673590340129145678

/-! ## A053801.P16882749771755967827

`A316723(A000124(n+6)+n-1)`
-/

namespace A053801.P16882749771755967827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A053801.P16882749771755967827

/-! ## A053801.P14656281222515541356

`A316723(n+6+A055999(n+3))`
-/

namespace A053801.P14656281222515541356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((n + 6 : ℤ) + A055999 (n + 3)).toNat

end

end A053801.P14656281222515541356

/-! ## A053801.P2685044908189747652

`A316723((n+6)²-A167499(n+3))`
-/

namespace A053801.P2685044908189747652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (((n + 6) ^ 2 : ℤ) - A167499 (n + 3)).toNat

end

end A053801.P2685044908189747652

/-! ## A053801.P10433527113822422883

`record[A316723(A007401(A052905(n)))]`
-/

namespace A053801.P10433527113822422883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A007401 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053801.P10433527113822422883

/-! ## A053801.P13130324709161216198

`A316723(A007401(A052905(n+3)))`
-/

namespace A053801.P13130324709161216198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A007401 (A052905 (n + 3)).toNat).toNat

end

end A053801.P13130324709161216198

/-!
# A053802: Number of basis partitions of n+49 with Durfee square size 7.

The programs for A053802, there is no canonical definition to state claims against.
-/

/-! ## A053802.P2675421792001336397

`A316723(A155212(n+4))`
-/

namespace A053802.P2675421792001336397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A155212 (n + 4)).toNat

end

end A053802.P2675421792001336397

/-! ## A053802.P450403771152674081

`A316723(A056126(n)+28)`
-/

namespace A053802.P450403771152674081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056126 n + 28).toNat

end

end A053802.P450403771152674081

/-! ## A053802.P17150263760215941116

`A316723(A055999(n+5)-2)`
-/

namespace A053802.P17150263760215941116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 (n + 5) - 2).toNat

end

end A053802.P17150263760215941116

/-! ## A053802.P13504821294304339267

`A316723(A051936(n+8)+1)`
-/

namespace A053802.P13504821294304339267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A051936 (n + 8) + 1).toNat

end

end A053802.P13504821294304339267

/-! ## A053802.P5713943636040413452

`A316723(A052905(n+5)-3)`
-/

namespace A053802.P5713943636040413452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 (n + 5) - 3).toNat

end

end A053802.P5713943636040413452

/-! ## A053802.P3053489440522144485

`A316723(A134227(n+6)-2)`
-/

namespace A053802.P3053489440522144485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A134227 (n + 6) - 2).toNat

end

end A053802.P3053489440522144485

/-! ## A053802.P15348873290171329694

`A316723(A000096(n+7)-7)`
-/

namespace A053802.P15348873290171329694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000096 (n + 7) - 7).toNat

end

end A053802.P15348873290171329694

/-! ## A053802.P11070038232948658026

`A316723(A000217(n+8)-8)`
-/

namespace A053802.P11070038232948658026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 (n + 8) - 8).toNat

end

end A053802.P11070038232948658026

/-! ## A053802.P6995190303736419041

`A316723(A000124(n+8)-9)`
-/

namespace A053802.P6995190303736419041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000124 (n + 8) - 9).toNat

end

end A053802.P6995190303736419041

/-! ## A053802.P14359546672413813338

`A316723(A179865(n+9)-8)`
-/

namespace A053802.P14359546672413813338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A179865 (n + 9) - 8).toNat

end

end A053802.P14359546672413813338

/-! ## A053802.P13497288877735884908

`A316723(n+6+A055999(n+4))`
-/

namespace A053802.P13497288877735884908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((n + 6 : ℤ) + A055999 (n + 4)).toNat

end

end A053802.P13497288877735884908

/-! ## A053802.P6264555275197998544

`A316723(2*n+A000096(n+5)+8)`
-/

namespace A053802.P6264555275197998544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((2 * n : ℤ) + (A000096 (n + 5) + 8)).toNat

end

end A053802.P6264555275197998544

/-! ## A053802.P11206191276548473615

`A316723(2*n+A000217(n+6)+7)`
-/

namespace A053802.P11206191276548473615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A053802.P11206191276548473615

/-! ## A053802.P15458109152363667497

`A316723(A167499(n+5)+A005843(n+1))`
-/

namespace A053802.P15458109152363667497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A167499 (n + 5) + A005843 (n + 1)).toNat

end

end A053802.P15458109152363667497

/-! ## A053802.P6802844395573764045

`A316723(A133263(n+3)+A008587(n+4))`
-/

namespace A053802.P6802844395573764045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A133263 (n + 3) + A008587 (n + 4)).toNat

end

end A053802.P6802844395573764045

/-!
# A053805: Expansion of (1 + x)^12 / (1 - x)^13.

The programs for A053805, the canonical program `A053805.P2188720576023365537` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053805 has offset 0).

The definition of A053805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053805.P2188720576023365537

`∑[A035707(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A053805

/-- `∑[A035707(n)]` -/
def P2188720576023365537.Spec : Prop :=
  ∀ n, P2188720576023365537.a n = A053805 n

theorem P2188720576023365537.correct : P2188720576023365537.Spec := by
  intro n
  simp only [A053805]

end A053805

/-! ## A053805.P1471513796748853536

`A035708(n)-a(n-1)` with `a(0)=1`
-/

namespace A053805.P1471513796748853536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035708 n - a (n - 1)

end

end A053805.P1471513796748853536

namespace A053805

/-- `A035708(n)-a(n-1)` -/
def P1471513796748853536.Spec : Prop :=
  ∀ n, P1471513796748853536.a n = A053805 n

end A053805

/-! ## A053805.P11851277686140343590

`A240876(n)+A035606(n)`
-/

namespace A053805.P11851277686140343590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240876 n + A035606 n

end

end A053805.P11851277686140343590

namespace A053805

/-- `A240876(n)+A035606(n)` -/
def P11851277686140343590.Spec : Prop :=
  ∀ n, P11851277686140343590.a n = A053805 n

end A053805

/-! ## A053805.P16120695947467414072

`A035606(n)+∑[A035706(n)]`
-/

namespace A053805.P16120695947467414072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053805.P16120695947467414072

namespace A053805

/-- `A035606(n)+∑[A035706(n)]` -/
def P16120695947467414072.Spec : Prop :=
  ∀ n, P16120695947467414072.a n = A053805 n

end A053805

/-! ## A053805.P5405930357061738238

`abs(∑[A033999(n)*A035708(n)])`
-/

namespace A053805.P5405930357061738238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A053805.P5405930357061738238

namespace A053805

/-- `abs(∑[A033999(n)*A035708(n)])` -/
def P5405930357061738238.Spec : Prop :=
  ∀ n, P5405930357061738238.a n = A053805 n

end A053805

/-! ## A053805.P6316048937286284879

`(A035606(n+1)+A035606(n))/2`
-/

namespace A053805.P6316048937286284879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035606 (n + 1) + A035606 n : ℚ) / 2

end

end A053805.P6316048937286284879

namespace A053805

/-- `(A035606(n+1)+A035606(n))/2` -/
def P6316048937286284879.Spec : Prop :=
  ∀ n, P6316048937286284879.a n = (A053805 n : ℚ)

end A053805

/-!
# A053806: Numbers where a gap begins in the sequence of squarefree numbers (A005117).

The programs for A053806, the canonical program `A053806.P5470582851069519396` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053806 has offset 1).

The definition of A053806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053806.P12046481188297214749

`comp[n-A008966(n+1)]+2`
-/

namespace A053806.P12046481188297214749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A053806.P12046481188297214749

namespace A053806

/-- `comp[n-A008966(n+1)]+2` -/
def P12046481188297214749.Spec : Prop :=
  ∀ n, (P12046481188297214749.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P8294359429613463375

`comp[n-A008683(n+1)²]+2`
-/

namespace A053806.P8294359429613463375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008683 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A053806.P8294359429613463375

namespace A053806

/-- `comp[n-A008683(n+1)²]+2` -/
def P8294359429613463375.Spec : Prop :=
  ∀ n, (P8294359429613463375.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P11547202329311978254

`eq[2, gcd(a(n-1)+1, A008683(n))]` with `a(0)=0`
-/

namespace A053806.P11547202329311978254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (f2 (n - 1) + 1 : ℤ) (A008683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053806.P11547202329311978254

namespace A053806

/-- `eq[2, gcd(a(n-1)+1, A008683(n))]` -/
def P11547202329311978254.Spec : Prop :=
  ∀ n, (P11547202329311978254.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P15317369093811089524

`A005117(A375930(n+1))+1`
-/

namespace A053806.P15317369093811089524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A375930 (n + 1)).toNat + 1

end

end A053806.P15317369093811089524

namespace A053806

/-- `A005117(A375930(n+1))+1` -/
def P15317369093811089524.Spec : Prop :=
  ∀ n, P15317369093811089524.a n = A053806 (n + 1)

end A053806

/-! ## A053806.P14803387866247427655

`A120992(n+1)+A072284(n+1)`
-/

namespace A053806.P14803387866247427655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1) + A072284 (n + 1)

end

end A053806.P14803387866247427655

namespace A053806

/-- `A120992(n+1)+A072284(n+1)` -/
def P14803387866247427655.Spec : Prop :=
  ∀ n, P14803387866247427655.a n = A053806 (n + 1)

end A053806

/-! ## A053806.P561888929921815490

`eq[A008683(n+1), A105570(n)]+1`
-/

namespace A053806.P561888929921815490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053806.P561888929921815490

namespace A053806

/-- `eq[A008683(n+1), A105570(n)]+1` -/
def P561888929921815490.Spec : Prop :=
  ∀ n, (P561888929921815490.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P5288676077300844423

`eq[A008966(n+1), A105570(n)]+1`
-/

namespace A053806.P5288676077300844423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053806.P5288676077300844423

namespace A053806

/-- `eq[A008966(n+1), A105570(n)]+1` -/
def P5288676077300844423.Spec : Prop :=
  ∀ n, (P5288676077300844423.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P7567836478009475928

`lt[A007424(n+1), A007424(n+2)]+2`
-/

namespace A053806.P7567836478009475928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A053806.P7567836478009475928

namespace A053806

/-- `lt[A007424(n+1), A007424(n+2)]+2` -/
def P7567836478009475928.Spec : Prop :=
  ∀ n, (P7567836478009475928.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P18419438000120119081

`lt[A008966(n+2), A008966(n+1)]+2`
-/

namespace A053806.P18419438000120119081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A053806.P18419438000120119081

namespace A053806

/-- `lt[A008966(n+2), A008966(n+1)]+2` -/
def P18419438000120119081.Spec : Prop :=
  ∀ n, (P18419438000120119081.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P5470582851069519396

`A072284(n+2)-A053797(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053806

/-- `A072284(n+2)-A053797(n+1)` -/
def P5470582851069519396.Spec : Prop :=
  ∀ n, P5470582851069519396.a n = A053806 (n + 1)

theorem P5470582851069519396.correct : P5470582851069519396.Spec := by
  intro n
  simp only [A053806, Nat.add_sub_cancel]

end A053806

/-! ## A053806.P11383852537430594408

`eq[1, A378619(n+1)]+1`
-/

namespace A053806.P11383852537430594408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053806.P11383852537430594408

namespace A053806

/-- `eq[1, A378619(n+1)]+1` -/
def P11383852537430594408.Spec : Prop :=
  ∀ n, (P11383852537430594408.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P7925456994008053331

`record[∏{p}[lt[A007913(n+2), n]+1, #]]+1`
-/

namespace A053806.P7925456994008053331
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A053806.P7925456994008053331

namespace A053806

/-- `record[∏{p}[lt[A007913(n+2), n]+1, #]]+1` -/
def P7925456994008053331.Spec : Prop :=
  ∀ n, (P7925456994008053331.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P9021852414422968656

`eq[A055615(n+1), A105570(n)]+1`
-/

namespace A053806.P9021852414422968656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053806.P9021852414422968656

namespace A053806

/-- `eq[A055615(n+1), A105570(n)]+1` -/
def P9021852414422968656.Spec : Prop :=
  ∀ n, (P9021852414422968656.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P3932173199613524584

`A162902(2*(n+1))`
-/

namespace A053806.P3932173199613524584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * (n + 1))

end

end A053806.P3932173199613524584

namespace A053806

/-- `A162902(2*(n+1))` -/
def P3932173199613524584.Spec : Prop :=
  ∀ n, P3932173199613524584.a n = A053806 (n + 1)

end A053806

/-! ## A053806.P4574787756767108811

`filter[A162902(n+2), A087049(#)]`
-/

namespace A053806.P4574787756767108811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A053806.P4574787756767108811

namespace A053806

/-- `filter[A162902(n+2), A087049(#)]` -/
def P4574787756767108811.Spec : Prop :=
  ∀ n, P4574787756767108811.a n = A053806 (n + 1)

end A053806

/-! ## A053806.P16092243817334819982

`∩[A013929(n+1), A162902(n+1)]`
-/

namespace A053806.P16092243817334819982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053806.P16092243817334819982

namespace A053806

/-- `∩[A013929(n+1), A162902(n+1)]` -/
def P16092243817334819982.Spec : Prop :=
  ∀ n, (P16092243817334819982.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P14952561016596287096

`lt[A105570(n), A064727(n+1)]+1`
-/

namespace A053806.P14952561016596287096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053806.P14952561016596287096

namespace A053806

/-- `lt[A105570(n), A064727(n+1)]+1` -/
def P14952561016596287096.Spec : Prop :=
  ∀ n, (P14952561016596287096.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P12972711637298713368

`eq[2, A285718(n+1)]`
-/

namespace A053806.P12972711637298713368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053806.P12972711637298713368

namespace A053806

/-- `eq[2, A285718(n+1)]` -/
def P12972711637298713368.Spec : Prop :=
  ∀ n, (P12972711637298713368.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P2268394616556584354

`eq[1, A365196(n)]+2`
-/

namespace A053806.P2268394616556584354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A053806.P2268394616556584354

namespace A053806

/-- `eq[1, A365196(n)]+2` -/
def P2268394616556584354.Spec : Prop :=
  ∀ n, (P2268394616556584354.a n : ℤ) = A053806 (n + 1)

end A053806

/-! ## A053806.P1448791645399268204

`record[Δ[A105570(n+3)]]`
-/

namespace A053806.P1448791645399268204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053806.P1448791645399268204

namespace A053806

/-- `record[Δ[A105570(n+3)]]` -/
def P1448791645399268204.Spec : Prop :=
  ∀ n, P1448791645399268204.a n = A053806 (n + 1)

end A053806

/-!
# A053807: a(n) = Sum_{k=1..n, n mod k = 1} k^2.

The programs for A053807, the canonical program `A053807.P8279996099446650601` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053807 has offset 1).

The definition of A053807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053807.P8279996099446650601

`∑{d}[n, (#%#²)²]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053807

/-- `∑{d}[n, (#%#²)²]` -/
def P8279996099446650601.Spec : Prop :=
  ∀ n, (P8279996099446650601.a n : ℤ) = A053807 (n + 1)

theorem P8279996099446650601.correct : P8279996099446650601.Spec := by
  intro n
  simp only [A053807, Nat.add_sub_cancel]

end A053807

/-! ## A053807.P11685781813403218913

`∑{d}[n, #²-C(#, n)]`
-/

namespace A053807.P11685781813403218913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (Nat.choose d n : ℤ))

end

end A053807.P11685781813403218913

namespace A053807

/-- `∑{d}[n, #²-C(#, n)]` -/
def P11685781813403218913.Spec : Prop :=
  ∀ n, P11685781813403218913.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P14852400653893085228

`∑{d}[a(n-1)+1, #²]-1` with `a(0)=1, a(1)=1`
-/

namespace A053807.P14852400653893085228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - 1

end

end A053807.P14852400653893085228

namespace A053807

/-- `∑{d}[a(n-1)+1, #²]-1` -/
def P14852400653893085228.Spec : Prop :=
  ∀ n, P14852400653893085228.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P17952544344214540431

`∑{d}[n, A087156(#)²]`
-/

namespace A053807.P17952544344214540431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087156 d ^ 2

end

end A053807.P17952544344214540431

namespace A053807

/-- `∑{d}[n, A087156(#)²]` -/
def P17952544344214540431.Spec : Prop :=
  ∀ n, P17952544344214540431.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P8216423553092852456

`∑{d}[A028310(n), #²]-1`
-/

namespace A053807.P8216423553092852456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ) - 1

end

end A053807.P8216423553092852456

namespace A053807

/-- `∑{d}[A028310(n), #²]-1` -/
def P8216423553092852456.Spec : Prop :=
  ∀ n, P8216423553092852456.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P17988719488669072124

`∑{d}[A274922(n), #²]-1`
-/

namespace A053807.P17988719488669072124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ) - 1

end

end A053807.P17988719488669072124

namespace A053807

/-- `∑{d}[A274922(n), #²]-1` -/
def P17988719488669072124.Spec : Prop :=
  ∀ n, P17988719488669072124.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P1932678697657474124

`A057428(n)+∑{d}[n, #²]`
-/

namespace A053807.P1932678697657474124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A053807.P1932678697657474124

namespace A053807

/-- `A057428(n)+∑{d}[n, #²]` -/
def P1932678697657474124.Spec : Prop :=
  ∀ n, P1932678697657474124.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P1764171800970840312

`∑{d}[n, #²]-A057427(n)`
-/

namespace A053807.P1764171800970840312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - A057427 n

end

end A053807.P1764171800970840312

namespace A053807

/-- `∑{d}[n, #²]-A057427(n)` -/
def P1764171800970840312.Spec : Prop :=
  ∀ n, P1764171800970840312.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P516195882099158904

`∑{d}[n, #²]-char[A003188(n+1)]`
-/

namespace A053807.P516195882099158904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A053807.P516195882099158904

namespace A053807

/-- `∑{d}[n, #²]-char[A003188(n+1)]` -/
def P516195882099158904.Spec : Prop :=
  ∀ n, P516195882099158904.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P16348576725540564298

`∑{d}[n, #²]-A005171(2*(n+1))`
-/

namespace A053807.P16348576725540564298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - A005171 (2 * (n + 1))

end

end A053807.P16348576725540564298

namespace A053807

/-- `∑{d}[n, #²]-A005171(2*(n+1))` -/
def P16348576725540564298.Spec : Prop :=
  ∀ n, P16348576725540564298.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P17866659352972959762

`A001157(A028310(n))-1`
-/

namespace A053807.P17866659352972959762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A028310 n).toNat - 1

end

end A053807.P17866659352972959762

namespace A053807

/-- `A001157(A028310(n))-1` -/
def P17866659352972959762.Spec : Prop :=
  ∀ n, P17866659352972959762.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P12673333960497627973

`A001157(A000007(n)+n)-1`
-/

namespace A053807.P12673333960497627973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000007 n + (n : ℤ)).toNat - 1

end

end A053807.P12673333960497627973

namespace A053807

/-- `A001157(A000007(n)+n)-1` -/
def P12673333960497627973.Spec : Prop :=
  ∀ n, P12673333960497627973.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P8878284504261665430

`A001157(A004277(n)-n)-1`
-/

namespace A053807.P8878284504261665430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A004277 n - (n : ℤ)).toNat - 1

end

end A053807.P8878284504261665430

namespace A053807

/-- `A001157(A004277(n)-n)-1` -/
def P8878284504261665430.Spec : Prop :=
  ∀ n, P8878284504261665430.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P7487200028329678122

`A001157(C(A217221(2*n), n)+n)-1`
-/

namespace A053807.P7487200028329678122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (Nat.choose (A217221 (2 * n)).toNat n + n) - 1

end

end A053807.P7487200028329678122

namespace A053807

/-- `A001157(C(A217221(2*n), n)+n)-1` -/
def P7487200028329678122.Spec : Prop :=
  ∀ n, P7487200028329678122.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P18383167068177905879

`∑{d}[n, A000290(A000096(#)%A000217(#))]`
-/

namespace A053807.P18383167068177905879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 (Int.tmod (A000096 d) (A000217 d)).toNat

end

end A053807.P18383167068177905879

namespace A053807

/-- `∑{d}[n, A000290(A000096(#)%A000217(#))]` -/
def P18383167068177905879.Spec : Prop :=
  ∀ n, P18383167068177905879.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P5562267706354452388

`∑{d}[n, A105570(#²)]`
-/

namespace A053807.P5562267706354452388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A105570 (d ^ 2)

end

end A053807.P5562267706354452388

namespace A053807

/-- `∑{d}[n, A105570(#²)]` -/
def P5562267706354452388.Spec : Prop :=
  ∀ n, P5562267706354452388.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P9477875978943983821

`A008683(A247650(n))+∑{d}[n, #²]-1`
-/

namespace A053807.P9477875978943983821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A247650 n).toNat + (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - 1)

end

end A053807.P9477875978943983821

namespace A053807

/-- `A008683(A247650(n))+∑{d}[n, #²]-1` -/
def P9477875978943983821.Spec : Prop :=
  ∀ n, P9477875978943983821.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P15085546349365771202

`A071326(A253909(n))`
-/

namespace A053807.P15085546349365771202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071326 (A253909 n).toNat

end

end A053807.P15085546349365771202

namespace A053807

/-- `A071326(A253909(n))` -/
def P15085546349365771202.Spec : Prop :=
  ∀ n, P15085546349365771202.a n = A053807 (n + 1)

end A053807

/-! ## A053807.P2402353684271037490

`A071326(A289443(n²)/A289443(n))`
-/

namespace A053807.P2402353684271037490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071326 (SequenceMachineLib.roundAway ((A289443 (n ^ 2) : ℚ) / (A289443 n : ℚ))).toNat

end

end A053807.P2402353684271037490

namespace A053807

/-- `A071326(A289443(n²)/A289443(n))` -/
def P2402353684271037490.Spec : Prop :=
  ∀ n, P2402353684271037490.a n = A053807 (n + 1)

end A053807

/-!
# A053808: Partial sums of A001891.

The programs for A053808, the canonical program `A053808.P4399199294801208470` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053808 has offset 0).

The definition of A053808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053808.P4399199294801208470

`a(n-1)+a(n-2)+(n+1)²` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053808

/-- `a(n-1)+a(n-2)+(n+1)²` -/
def P4399199294801208470.Spec : Prop :=
  ∀ n, (P4399199294801208470.a n : ℤ) = A053808 n

theorem P4399199294801208470.correct : P4399199294801208470.Spec := by
  intro n
  simp only [A053808]

end A053808

/-! ## A053808.P15497416405599009325

`∑[∑[floor(ϕ*(a(n-1)+1))]]` with `a(0)=1`
-/

namespace A053808.P15497416405599009325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P15497416405599009325

namespace A053808

/-- `∑[∑[floor(ϕ*(a(n-1)+1))]]` -/
def P15497416405599009325.Spec : Prop :=
  ∀ n, P15497416405599009325.a n = A053808 n

end A053808

/-! ## A053808.P18271547280599582108

`∑[∑[∑[a(n-1)+a(n-2)]]]` with `a(0)=1, a(1)=2`
-/

namespace A053808.P18271547280599582108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P18271547280599582108

namespace A053808

/-- `∑[∑[∑[a(n-1)+a(n-2)]]]` -/
def P18271547280599582108.Spec : Prop :=
  ∀ n, (P18271547280599582108.a n : ℤ) = A053808 n

end A053808

/-! ## A053808.P7735411766818918787

`A163250(n+2)`
-/

namespace A053808.P7735411766818918787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (n + 2)

end

end A053808.P7735411766818918787

namespace A053808

/-- `A163250(n+2)` -/
def P7735411766818918787.Spec : Prop :=
  ∀ n, P7735411766818918787.a n = A053808 n

end A053808

/-! ## A053808.P5680371340439690180

`∑[A001891(n+1)]`
-/

namespace A053808.P5680371340439690180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P5680371340439690180

namespace A053808

/-- `∑[A001891(n+1)]` -/
def P5680371340439690180.Spec : Prop :=
  ∀ n, P5680371340439690180.a n = A053808 n

end A053808

/-! ## A053808.P9304769527592494284

`record[A163250(abs(2-n))]`
-/

namespace A053808.P9304769527592494284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053808.P9304769527592494284

namespace A053808

/-- `record[A163250(abs(2-n))]` -/
def P9304769527592494284.Spec : Prop :=
  ∀ n, P9304769527592494284.a n = A053808 n

end A053808

/-! ## A053808.P6996948417402211864

`∑[∑[A001911(n+1)]]`
-/

namespace A053808.P6996948417402211864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P6996948417402211864

namespace A053808

/-- `∑[∑[A001911(n+1)]]` -/
def P6996948417402211864.Spec : Prop :=
  ∀ n, P6996948417402211864.a n = A053808 n

end A053808

/-! ## A053808.P10434183321941846349

`∑[∑[A020701(n)-2]]`
-/

namespace A053808.P10434183321941846349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P10434183321941846349

namespace A053808

/-- `∑[∑[A020701(n)-2]]` -/
def P10434183321941846349.Spec : Prop :=
  ∀ n, P10434183321941846349.a n = A053808 n

end A053808

/-! ## A053808.P16883305057379326896

`∑[∑[A355019(2*n)]]`
-/

namespace A053808.P16883305057379326896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P16883305057379326896

namespace A053808

/-- `∑[∑[A355019(2*n)]]` -/
def P16883305057379326896.Spec : Prop :=
  ∀ n, P16883305057379326896.a n = A053808 n

end A053808

/-! ## A053808.P3879478581474438301

`∑[∑[∑[A000045(n+2)]]]`
-/

namespace A053808.P3879478581474438301
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P3879478581474438301

namespace A053808

/-- `∑[∑[∑[A000045(n+2)]]]` -/
def P3879478581474438301.Spec : Prop :=
  ∀ n, P3879478581474438301.a n = A053808 n

end A053808

/-! ## A053808.P14697652284699230101

`∑[∑[∑[A212804(n+3)]]]`
-/

namespace A053808.P14697652284699230101
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P14697652284699230101

namespace A053808

/-- `∑[∑[∑[A212804(n+3)]]]` -/
def P14697652284699230101.Spec : Prop :=
  ∀ n, P14697652284699230101.a n = A053808 n

end A053808

/-! ## A053808.P8729650116538800939

`∑[∑[∑[A324969(n+3)]]]`
-/

namespace A053808.P8729650116538800939
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P8729650116538800939

namespace A053808

/-- `∑[∑[∑[A324969(n+3)]]]` -/
def P8729650116538800939.Spec : Prop :=
  ∀ n, P8729650116538800939.a n = A053808 n

end A053808

/-! ## A053808.P8979520082904792858

`∑[∑[∑[A096748(2*n)]]]`
-/

namespace A053808.P8979520082904792858
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P8979520082904792858

namespace A053808

/-- `∑[∑[∑[A096748(2*n)]]]` -/
def P8979520082904792858.Spec : Prop :=
  ∀ n, P8979520082904792858.a n = A053808 n

end A053808

/-! ## A053808.P329619128282307671

`∑[∑[A020695(n+1)-2]]`
-/

namespace A053808.P329619128282307671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P329619128282307671

namespace A053808

/-- `∑[∑[A020695(n+1)-2]]` -/
def P329619128282307671.Spec : Prop :=
  ∀ n, P329619128282307671.a n = A053808 n

end A053808

/-! ## A053808.P9705838659328118452

`∑[∑[A006327(n+4)+1]]`
-/

namespace A053808.P9705838659328118452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P9705838659328118452

namespace A053808

/-- `∑[∑[A006327(n+4)+1]]` -/
def P9705838659328118452.Spec : Prop :=
  ∀ n, P9705838659328118452.a n = A053808 n

end A053808

/-! ## A053808.P7594483010199387256

`∑[∑[A071679(n+2)-2]]`
-/

namespace A053808.P7594483010199387256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P7594483010199387256

namespace A053808

/-- `∑[∑[A071679(n+2)-2]]` -/
def P7594483010199387256.Spec : Prop :=
  ∀ n, P7594483010199387256.a n = A053808 n

end A053808

/-! ## A053808.P6009163614119804667

`∑[∑[A226538(2*n+1)]]`
-/

namespace A053808.P6009163614119804667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P6009163614119804667

namespace A053808

/-- `∑[∑[A226538(2*n+1)]]` -/
def P6009163614119804667.Spec : Prop :=
  ∀ n, P6009163614119804667.a n = A053808 n

end A053808

/-! ## A053808.P14418258859049443206

`∑[∑[A168193(n+1)/2]]`
-/

namespace A053808.P14418258859049443206
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168193 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P14418258859049443206

namespace A053808

/-- `∑[∑[A168193(n+1)/2]]` -/
def P14418258859049443206.Spec : Prop :=
  ∀ n, P14418258859049443206.a n = (A053808 n : ℚ)

end A053808

/-! ## A053808.P15175021317620956049

`∑[∑[A001611(n+4)-3]]`
-/

namespace A053808.P15175021317620956049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 4) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053808.P15175021317620956049

namespace A053808

/-- `∑[∑[A001611(n+4)-3]]` -/
def P15175021317620956049.Spec : Prop :=
  ∀ n, P15175021317620956049.a n = A053808 n

end A053808

/-!
# A053809: Second partial sums of A001891.

The programs for A053809, the canonical program `A053809.P4690573664122324179` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053809 has offset 0).

The definition of A053809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053809.P4690573664122324179

`∑[∑[∑[∑[a(n-1)+a(n-2)]]]]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053809

/-- `∑[∑[∑[∑[a(n-1)+a(n-2)]]]]` -/
def P4690573664122324179.Spec : Prop :=
  ∀ n, (P4690573664122324179.a n : ℤ) = A053809 n

theorem P4690573664122324179.correct : P4690573664122324179.Spec := by
  intro n
  simp only [A053809]

end A053809

/-! ## A053809.P3279824770238877020

`∑[A053808(n)]`
-/

namespace A053809.P3279824770238877020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P3279824770238877020

namespace A053809

/-- `∑[A053808(n)]` -/
def P3279824770238877020.Spec : Prop :=
  ∀ n, P3279824770238877020.a n = A053809 n

end A053809

/-! ## A053809.P3758816438630849273

`∑[A163250(n+2)]`
-/

namespace A053809.P3758816438630849273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P3758816438630849273

namespace A053809

/-- `∑[A163250(n+2)]` -/
def P3758816438630849273.Spec : Prop :=
  ∀ n, P3758816438630849273.a n = A053809 n

end A053809

/-! ## A053809.P7659227186980986797

`∑[∑[A001891(n+1)]]`
-/

namespace A053809.P7659227186980986797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P7659227186980986797

namespace A053809

/-- `∑[∑[A001891(n+1)]]` -/
def P7659227186980986797.Spec : Prop :=
  ∀ n, P7659227186980986797.a n = A053809 n

end A053809

/-! ## A053809.P6970204913169692869

`∑[∑[∑[A001911(n+1)]]]`
-/

namespace A053809.P6970204913169692869
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P6970204913169692869

namespace A053809

/-- `∑[∑[∑[A001911(n+1)]]]` -/
def P6970204913169692869.Spec : Prop :=
  ∀ n, P6970204913169692869.a n = A053809 n

end A053809

/-! ## A053809.P5377063448171761016

`∑[∑[∑[∑[A000045(n+2)]]]]`
-/

namespace A053809.P5377063448171761016
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P5377063448171761016

namespace A053809

/-- `∑[∑[∑[∑[A000045(n+2)]]]]` -/
def P5377063448171761016.Spec : Prop :=
  ∀ n, P5377063448171761016.a n = A053809 n

end A053809

/-! ## A053809.P2665013219459835945

`∑[∑[∑[A226538(2*n+1)]]]`
-/

namespace A053809.P2665013219459835945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P2665013219459835945

namespace A053809

/-- `∑[∑[∑[A226538(2*n+1)]]]` -/
def P2665013219459835945.Spec : Prop :=
  ∀ n, P2665013219459835945.a n = A053809 n

end A053809

/-! ## A053809.P16029458114097849941

`∑[A023652(n+2)-(n+2)²]`
-/

namespace A053809.P16029458114097849941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023652 (n + 2) - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P16029458114097849941

namespace A053809

/-- `∑[A023652(n+2)-(n+2)²]` -/
def P16029458114097849941.Spec : Prop :=
  ∀ n, P16029458114097849941.a n = A053809 n

end A053809

/-! ## A053809.P8222010449397166678

`A014166(n+1)+A014166(n)`
-/

namespace A053809.P8222010449397166678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1) + A014166 n

end

end A053809.P8222010449397166678

namespace A053809

/-- `A014166(n+1)+A014166(n)` -/
def P8222010449397166678.Spec : Prop :=
  ∀ n, P8222010449397166678.a n = A053809 n

end A053809

/-! ## A053809.P725946197408627913

`∑[A014162(n+1)+A014162(n)]`
-/

namespace A053809.P725946197408627913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (n + 1) + A014162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P725946197408627913

namespace A053809

/-- `∑[A014162(n+1)+A014162(n)]` -/
def P725946197408627913.Spec : Prop :=
  ∀ n, P725946197408627913.a n = A053809 n

end A053809

/-! ## A053809.P11145017744773933336

`A054469(n+1)-(A054469(n)+A053808(n+1))`
-/

namespace A053809.P11145017744773933336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054469 (n + 1) - (A054469 n + A053808 (n + 1))

end

end A053809.P11145017744773933336

namespace A053809

/-- `A054469(n+1)-(A054469(n)+A053808(n+1))` -/
def P11145017744773933336.Spec : Prop :=
  ∀ n, P11145017744773933336.a n = A053809 n

end A053809

/-! ## A053809.P2776332029230213625

`∑[A213566(∑[n]+1)]`
-/

namespace A053809.P2776332029230213625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213566 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P2776332029230213625

namespace A053809

/-- `∑[A213566(∑[n]+1)]` -/
def P2776332029230213625.Spec : Prop :=
  ∀ n, P2776332029230213625.a n = A053809 n

end A053809

/-! ## A053809.P4251980541175871367

`∑[A213590(∑[n]+1)]`
-/

namespace A053809.P4251980541175871367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213590 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P4251980541175871367

namespace A053809

/-- `∑[A213590(∑[n]+1)]` -/
def P4251980541175871367.Spec : Prop :=
  ∀ n, P4251980541175871367.a n = A053809 n

end A053809

/-!
# A053810: Numbers of the form p^e where both p and e are prime numbers.

The programs for A053810, there is no canonical definition to state claims against.
-/

/-! ## A053810.P451233847884361468

`A053811(n+1)^A053812(n+1)`
-/

namespace A053810.P451233847884361468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053811 (n + 1) : ℚ) ^ (A053812 (n + 1) : ℤ)

end

end A053810.P451233847884361468

/-! ## A053810.P2136673444478812756

`A053811(n+1)^p?[A025477(n+1)]`
-/

namespace A053810.P2136673444478812756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025477 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053811 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053810.P2136673444478812756

/-! ## A053810.P11111200618585808644

`A062780(n)+a(n-1)` with `a(0)=4`
-/

namespace A053810.P11111200618585808644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A062780 n + a (n - 1)

end

end A053810.P11111200618585808644

/-! ## A053810.P10822159758771699696

`∩[A025475(n+1), A093771(n+1)]`
-/

namespace A053810.P10822159758771699696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P10822159758771699696

/-! ## A053810.P14536903302170358847

`∩[A073540(n+1), A093771(n+1)]`
-/

namespace A053810.P14536903302170358847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P14536903302170358847

/-! ## A053810.P11162301995765426834

`A053811(n+1)^p?[A076399(n+1)]`
-/

namespace A053810.P11162301995765426834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053811 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053810.P11162301995765426834

/-! ## A053810.P3787547434586372694

`A053811(n+1)^p?[A025479(n+1)*A076398(n+1)]`
-/

namespace A053810.P3787547434586372694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025479 (n + 1) * A076398 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053811 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A053810.P3787547434586372694

/-! ## A053810.P7119888613921160827

`∩[A093771(n+1), A134612(n+1)]`
-/

namespace A053810.P7119888613921160827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P7119888613921160827

/-! ## A053810.P3587717396817379931

`∩[A056166(n+1), A134612(n+1)]`
-/

namespace A053810.P3587717396817379931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P3587717396817379931

/-! ## A053810.P2849303864405220203

`∩[A025475(n+1), A114129(n+1)]`
-/

namespace A053810.P2849303864405220203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P2849303864405220203

/-! ## A053810.P5139122287302005390

`∩[A114129(n+1), A134611(n+1)]`
-/

namespace A053810.P5139122287302005390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P5139122287302005390

/-! ## A053810.P4172676419930730276

`∩[A114129(n+1), A134612(n+1)]`
-/

namespace A053810.P4172676419930730276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P4172676419930730276

/-! ## A053810.P13008500837971705452

`∩[A114129(n+1), A306531(n+1)]`
-/

namespace A053810.P13008500837971705452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P13008500837971705452

/-! ## A053810.P13362485064903228291

`∩[A114129(n+1), A119492(n+1)]`
-/

namespace A053810.P13362485064903228291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P13362485064903228291

/-! ## A053810.P774604797211511794

`∩[A134611(n+1), A385288(n+1)]`
-/

namespace A053810.P774604797211511794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053810.P774604797211511794

/-!
# A053811: Primes (in order) occurring in A053810.

The programs for A053811, there is no canonical definition to state claims against.
-/

/-! ## A053811.P15524328111089098588

`A053810(n+1)^(1/A053812(n+1))`
-/

namespace A053811.P15524328111089098588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053810 (n + 1) : ℝ) ^ (1 / (A053812 (n + 1) : ℚ) : ℝ)

end

end A053811.P15524328111089098588

/-! ## A053811.P15774868214272224210

`root(A053810(n+1), A053812(n+1))`
-/

namespace A053811.P15774868214272224210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053810 (n + 1) : ℝ) ^ (1 / (A053812 (n + 1) : ℝ))

end

end A053811.P15774868214272224210

/-! ## A053811.P5850158809906742543

`p?[A072813(n+1)]`
-/

namespace A053811.P5850158809906742543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053811.P5850158809906742543

/-! ## A053811.P9723678630648910938

`p?[A395562(n+1)]`
-/

namespace A053811.P9723678630648910938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053811.P9723678630648910938

/-! ## A053811.P12974815263265514687

`filter[A072813(n+1), A010051(#)]`
-/

namespace A053811.P12974815263265514687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053811.P12974815263265514687

/-! ## A053811.P15368786915930521217

`filter[A395562(n+1), A010051(#)]`
-/

namespace A053811.P15368786915930521217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053811.P15368786915930521217

/-! ## A053811.P1432474398952141015

`filter[A395562(n+1), A069513(#)]`
-/

namespace A053811.P1432474398952141015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A053811.P1432474398952141015

/-! ## A053811.P18374733083087945712

`filter[A395562(n+1), A302777(#)]`
-/

namespace A053811.P18374733083087945712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A053811.P18374733083087945712

/-! ## A053811.P7545104680115629618

`filter[A395562(n+1), A353817(#)]`
-/

namespace A053811.P7545104680115629618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A053811.P7545104680115629618

/-! ## A053811.P2786530212718465684

`filter[A072813(n+2), A080339(#)]`
-/

namespace A053811.P2786530212718465684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072813 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A053811.P2786530212718465684

/-! ## A053811.P2640586796187418738

`filter[A395562(n+2), A010055(#)]`
-/

namespace A053811.P2640586796187418738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A053811.P2640586796187418738

/-! ## A053811.P9999764092341945090

`filter[A395562(n+2), A080339(#)]`
-/

namespace A053811.P9999764092341945090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A053811.P9999764092341945090

/-! ## A053811.P15417700109967758730

`filter[A395562(n+2), A174897(#)]`
-/

namespace A053811.P15417700109967758730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A053811.P15417700109967758730

/-! ## A053811.P11474059821910370391

`filter[A395562(n+2), A345950(#)]`
-/

namespace A053811.P11474059821910370391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A053811.P11474059821910370391

/-! ## A053811.P17845185518074133850

`root(A053810(n+1), p?[A076399(n+1)])`
-/

namespace A053811.P17845185518074133850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053810 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053811.P17845185518074133850

/-! ## A053811.P12248185022359186124

`p?[A001222(A025479(n+1))*A025478(n+1)]`
-/

namespace A053811.P12248185022359186124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025479 (n + 1)).toNat * A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053811.P12248185022359186124

/-! ## A053811.P18344648437601815855

`p?[A025478(n+1)*A107286(A076399(n+1))]`
-/

namespace A053811.P18344648437601815855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1) * A107286 (A076399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053811.P18344648437601815855

/-! ## A053811.P1375602327301936579

`p?[A076396(n+1)*A107286(A076399(n+1))]`
-/

namespace A053811.P1375602327301936579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076396 (n + 1) * A107286 (A076399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053811.P1375602327301936579

/-! ## A053811.P11478532493647748122

`p?[A076397(n+1)*A107286(A076399(n+1))]`
-/

namespace A053811.P11478532493647748122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076397 (n + 1) * A107286 (A076399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053811.P11478532493647748122

/-! ## A053811.P13579674631708258735

`∑{p}[A053810(n+1), #]`
-/

namespace A053811.P13579674631708258735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A053811.P13579674631708258735

/-!
# A053812: Exponents occurring in A053810.

The programs for A053812, there is no canonical definition to state claims against.
-/

/-! ## A053812.P7031513173805594308

`log(A053810(n+1))/log(A053811(n+1))`
-/

namespace A053812.P7031513173805594308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A053810 (n + 1) : ℝ) / Real.log (A053811 (n + 1) : ℝ)

end

end A053812.P7031513173805594308

/-! ## A053812.P2078967359222172615

`val(A053810(n+1), A053811(n+1))`
-/

namespace A053812.P2078967359222172615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053810 (n + 1)).toNat (A053811 (n + 1)).toNat

end

end A053812.P2078967359222172615

/-! ## A053812.P3430266217849044242

`p?[A025477(n+1)]`
-/

namespace A053812.P3430266217849044242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053812.P3430266217849044242

/-! ## A053812.P15286709989416058658

`filter[A025477(n+2), A010051(#)]`
-/

namespace A053812.P15286709989416058658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053812.P15286709989416058658

/-! ## A053812.P8930323539065027577

`filter[A025477(n+2), A080339(#)]`
-/

namespace A053812.P8930323539065027577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A053812.P8930323539065027577

/-! ## A053812.P7470857424948735723

`p?[A076399(n+1)]`
-/

namespace A053812.P7470857424948735723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053812.P7470857424948735723

/-! ## A053812.P15056488772922200605

`p?[A076400(n+1)-1]`
-/

namespace A053812.P15056488772922200605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076400 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053812.P15056488772922200605

/-! ## A053812.P14594919851635542521

`filter[A076399(n+2), A010051(#)]`
-/

namespace A053812.P14594919851635542521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053812.P14594919851635542521

/-! ## A053812.P579332990902805119

`filter[A076399(n+2), A080339(#)]`
-/

namespace A053812.P579332990902805119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A053812.P579332990902805119

/-! ## A053812.P9067630377782032728

`filter[A076399(n+2), A252233(#)]`
-/

namespace A053812.P9067630377782032728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A053812.P9067630377782032728

/-! ## A053812.P16592259595492406998

`filter[A076399(n+2), A358751(#)]`
-/

namespace A053812.P16592259595492406998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A053812.P16592259595492406998

/-! ## A053812.P7086542334223161764

`p?[A025479(n+1)*A076398(n+1)]`
-/

namespace A053812.P7086542334223161764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025479 (n + 1) * A076398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053812.P7086542334223161764

/-! ## A053812.P14318880126352118668

`p?[A001222(A025478(n+1))*A025479(n+1)]`
-/

namespace A053812.P14318880126352118668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025478 (n + 1)).toNat * A025479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053812.P14318880126352118668

/-! ## A053812.P10343603336256564541

`p?[A370328(n+1)]`
-/

namespace A053812.P10343603336256564541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053812.P10343603336256564541

/-! ## A053812.P17571529862626816482

`filter[A370328(n+1), A010051(#)]`
-/

namespace A053812.P17571529862626816482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053812.P17571529862626816482

/-! ## A053812.P1260907471766393409

`filter[A370328(n+2), A080339(#)]`
-/

namespace A053812.P1260907471766393409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A053812.P1260907471766393409

/-! ## A053812.P8514626335858841884

`∑{e}[A053810(n+1), #]`
-/

namespace A053812.P8514626335858841884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A053812.P8514626335858841884

/-! ## A053812.P12746471116257042314

`p?[∑{e}[A076292(n+1), #]]`
-/

namespace A053812.P12746471116257042314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053812.P12746471116257042314

/-! ## A053812.P12241526829696269184

`p?[∏{e}[A134612(n+1), #]]`
-/

namespace A053812.P12241526829696269184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053812.P12241526829696269184

/-!
# A053813: Numbers which are an integral multiple of the sum of their proper divisors: prime and perfect numbers.

The programs for A053813, the canonical program `A053813.P7251305670303798114` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053813 has offset 1).

The definition of A053813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053813.P9775538219710480460

`A066190(n+1)/2`
-/

namespace A053813.P9775538219710480460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066190 (n + 1) : ℚ) / 2

end

end A053813.P9775538219710480460

namespace A053813

/-- `A066190(n+1)/2` -/
def P9775538219710480460.Spec : Prop :=
  ∀ n, P9775538219710480460.a n = (A053813 (n + 1) : ℚ)

end A053813

/-! ## A053813.P7251305670303798114

`record[gcd(n, 2-A000203(n+1))+1]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053813

/-- `record[gcd(n, 2-A000203(n+1))+1]` -/
def P7251305670303798114.Spec : Prop :=
  ∀ n, (P7251305670303798114.a n : ℤ) = A053813 (n + 1)

theorem P7251305670303798114.correct : P7251305670303798114.Spec := by
  intro n
  simp only [A053813, Nat.add_sub_cancel]

end A053813

/-! ## A053813.P15264121849670646396

`filter[A145739(n+1), A374128(#)]`
-/

namespace A053813.P15264121849670646396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A053813.P15264121849670646396

namespace A053813

/-- `filter[A145739(n+1), A374128(#)]` -/
def P15264121849670646396.Spec : Prop :=
  ∀ n, P15264121849670646396.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P17477245375574102667

`filter[A205523(n+1), A374128(#)]`
-/

namespace A053813.P17477245375574102667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A053813.P17477245375574102667

namespace A053813

/-- `filter[A205523(n+1), A374128(#)]` -/
def P17477245375574102667.Spec : Prop :=
  ∀ n, P17477245375574102667.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P7494428266064003216

`filter[A045745(n+1), A323153(#)]`
-/

namespace A053813.P7494428266064003216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P7494428266064003216

namespace A053813

/-- `filter[A045745(n+1), A323153(#)]` -/
def P7494428266064003216.Spec : Prop :=
  ∀ n, P7494428266064003216.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P315786377806888009

`filter[A053577(n+1), A323152(#)]`
-/

namespace A053813.P315786377806888009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A053813.P315786377806888009

namespace A053813

/-- `filter[A053577(n+1), A323152(#)]` -/
def P315786377806888009.Spec : Prop :=
  ∀ n, P315786377806888009.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P4557295666404689731

`filter[A053577(n+1), A323153(#)]`
-/

namespace A053813.P4557295666404689731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P4557295666404689731

namespace A053813

/-- `filter[A053577(n+1), A323153(#)]` -/
def P4557295666404689731.Spec : Prop :=
  ∀ n, P4557295666404689731.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P8767835708595468560

`filter[A063752(n+1), A323153(#)]`
-/

namespace A053813.P8767835708595468560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P8767835708595468560

namespace A053813

/-- `filter[A063752(n+1), A323153(#)]` -/
def P8767835708595468560.Spec : Prop :=
  ∀ n, P8767835708595468560.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P16834520653205864434

`filter[A072303(n+1), A323153(#)]`
-/

namespace A053813.P16834520653205864434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P16834520653205864434

namespace A053813

/-- `filter[A072303(n+1), A323153(#)]` -/
def P16834520653205864434.Spec : Prop :=
  ∀ n, P16834520653205864434.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P2992225409128906261

`filter[A145739(n+1), A323153(#)]`
-/

namespace A053813.P2992225409128906261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P2992225409128906261

namespace A053813

/-- `filter[A145739(n+1), A323153(#)]` -/
def P2992225409128906261.Spec : Prop :=
  ∀ n, P2992225409128906261.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P13873989537752366538

`filter[A205523(n+1), A323153(#)]`
-/

namespace A053813.P13873989537752366538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P13873989537752366538

namespace A053813

/-- `filter[A205523(n+1), A323153(#)]` -/
def P13873989537752366538.Spec : Prop :=
  ∀ n, P13873989537752366538.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P2367425293022125544

`filter[A285710(n+1), A323153(#)]`
-/

namespace A053813.P2367425293022125544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P2367425293022125544

namespace A053813

/-- `filter[A285710(n+1), A323153(#)]` -/
def P2367425293022125544.Spec : Prop :=
  ∀ n, P2367425293022125544.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P8392471226726410299

`filter[A339879(n+1), A323153(#)]`
-/

namespace A053813.P8392471226726410299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P8392471226726410299

namespace A053813

/-- `filter[A339879(n+1), A323153(#)]` -/
def P8392471226726410299.Spec : Prop :=
  ∀ n, P8392471226726410299.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P5746908321505551974

`filter[A349690(n+1), A323153(#)]`
-/

namespace A053813.P5746908321505551974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P5746908321505551974

namespace A053813

/-- `filter[A349690(n+1), A323153(#)]` -/
def P5746908321505551974.Spec : Prop :=
  ∀ n, P5746908321505551974.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P5315002144089473049

`filter[A379948(n+1), A323153(#)]`
-/

namespace A053813.P5315002144089473049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053813.P5315002144089473049

namespace A053813

/-- `filter[A379948(n+1), A323153(#)]` -/
def P5315002144089473049.Spec : Prop :=
  ∀ n, P5315002144089473049.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P2035572095566267347

`filter[A045745(n+2), A323152(#)]`
-/

namespace A053813.P2035572095566267347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A053813.P2035572095566267347

namespace A053813

/-- `filter[A045745(n+2), A323152(#)]` -/
def P2035572095566267347.Spec : Prop :=
  ∀ n, P2035572095566267347.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P12223636547179220806

`filter[A063752(n+2), A323152(#)]`
-/

namespace A053813.P12223636547179220806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A053813.P12223636547179220806

namespace A053813

/-- `filter[A063752(n+2), A323152(#)]` -/
def P12223636547179220806.Spec : Prop :=
  ∀ n, P12223636547179220806.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P11324452098128243120

`filter[A072303(n+2), A323152(#)]`
-/

namespace A053813.P11324452098128243120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A053813.P11324452098128243120

namespace A053813

/-- `filter[A072303(n+2), A323152(#)]` -/
def P11324452098128243120.Spec : Prop :=
  ∀ n, P11324452098128243120.a n = A053813 (n + 1)

end A053813

/-! ## A053813.P14154370666751493730

`filter[A145739(n+2), A323152(#)]`
-/

namespace A053813.P14154370666751493730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A053813.P14154370666751493730

namespace A053813

/-- `filter[A145739(n+2), A323152(#)]` -/
def P14154370666751493730.Spec : Prop :=
  ∀ n, P14154370666751493730.a n = A053813 (n + 1)

end A053813

/-!
# A053814: a(n) = n modulo (sum of proper divisors of n).

The programs for A053814, the canonical program `A053814.P4997883407244363239` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053814 has offset 2).

The definition of A053814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053814.P4997883407244363239

`(n+2)%(n+2-∑{d}[n+2, #])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053814

/-- `(n+2)%(n+2-∑{d}[n+2, #])` -/
def P4997883407244363239.Spec : Prop :=
  ∀ n, P4997883407244363239.a n = A053814 (n + 2)

theorem P4997883407244363239.correct : P4997883407244363239.Spec := by
  intro n
  simp only [A053814, Nat.add_sub_cancel]

end A053814

/-! ## A053814.P10346304742015826094

`(n+2)%(n+2-A000203(n+2))`
-/

namespace A053814.P10346304742015826094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) ((n + 2 : ℤ) - A000203 (n + 2))

end

end A053814.P10346304742015826094

namespace A053814

/-- `(n+2)%(n+2-A000203(n+2))` -/
def P10346304742015826094.Spec : Prop :=
  ∀ n, P10346304742015826094.a n = A053814 (n + 2)

end A053814

/-! ## A053814.P18126457311371567878

`(n+2)%A001065(n+2)`
-/

namespace A053814.P18126457311371567878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A001065 (n + 2))

end

end A053814.P18126457311371567878

namespace A053814

/-- `(n+2)%A001065(n+2)` -/
def P18126457311371567878.Spec : Prop :=
  ∀ n, P18126457311371567878.a n = A053814 (n + 2)

end A053814

/-! ## A053814.P5976033732888221794

`A020725(n+1)%Δ[A153485(n+1)]`
-/

namespace A053814.P5976033732888221794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (f1 (n + 1) - f1 n)

end

end A053814.P5976033732888221794

namespace A053814

/-- `A020725(n+1)%Δ[A153485(n+1)]` -/
def P5976033732888221794.Spec : Prop :=
  ∀ n, P5976033732888221794.a n = A053814 (n + 2)

end A053814

/-! ## A053814.P9459541179435258510

`A061767(n+1)%Δ[A153485(n+1)]`
-/

namespace A053814.P9459541179435258510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061767 (n + 1)) (f1 (n + 1) - f1 n)

end

end A053814.P9459541179435258510

namespace A053814

/-- `A061767(n+1)%Δ[A153485(n+1)]` -/
def P9459541179435258510.Spec : Prop :=
  ∀ n, P9459541179435258510.a n = A053814 (n + 2)

end A053814

/-! ## A053814.P8695489563021657889

`Δ[A024916(n+1)]%Δ[A153485(n+1)]`
-/

namespace A053814.P8695489563021657889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A053814.P8695489563021657889

namespace A053814

/-- `Δ[A024916(n+1)]%Δ[A153485(n+1)]` -/
def P8695489563021657889.Spec : Prop :=
  ∀ n, P8695489563021657889.a n = A053814 (n + 2)

end A053814

/-! ## A053814.P9774277671392090544

`A113646(n+2)%(A153485(n+2)-A153485(n+1))`
-/

namespace A053814.P9774277671392090544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113646 (n + 2)) (A153485 (n + 2) - A153485 (n + 1))

end

end A053814.P9774277671392090544

namespace A053814

/-- `A113646(n+2)%(A153485(n+2)-A153485(n+1))` -/
def P9774277671392090544.Spec : Prop :=
  ∀ n, P9774277671392090544.a n = A053814 (n + 2)

end A053814

/-!
# A053815: Floor(n / (sum of proper divisors of n)).

The programs for A053815, the canonical program `A053815.P6473019165180753857` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053815 has offset 2).

The definition of A053815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053815.P6473019165180753857

`floor((n+2)/(∑{d}[n+2, #]-(n+2)))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053815

/-- `floor((n+2)/(∑{d}[n+2, #]-(n+2)))` -/
def P6473019165180753857.Spec : Prop :=
  ∀ n, P6473019165180753857.a n = A053815 (n + 2)

theorem P6473019165180753857.correct : P6473019165180753857.Spec := by
  intro n
  simp only [A053815, Nat.add_sub_cancel]

end A053815

/-! ## A053815.P8350216381824185333

`floor((n+2)/(A000203(n+2)-(n+2)))`
-/

namespace A053815.P8350216381824185333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A000203 (n + 2) - (n + 2 : ℤ) : ℚ)⌋

end

end A053815.P8350216381824185333

namespace A053815

/-- `floor((n+2)/(A000203(n+2)-(n+2)))` -/
def P8350216381824185333.Spec : Prop :=
  ∀ n, P8350216381824185333.a n = A053815 (n + 2)

end A053815

/-! ## A053815.P1687169107232716223

`floor((n+2)/A001065(n+2))`
-/

namespace A053815.P1687169107232716223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A001065 (n + 2) : ℚ)⌋

end

end A053815.P1687169107232716223

namespace A053815

/-- `floor((n+2)/A001065(n+2))` -/
def P1687169107232716223.Spec : Prop :=
  ∀ n, P1687169107232716223.a n = A053815 (n + 2)

end A053815

/-! ## A053815.P10920407197225481981

`floor(A005408(n+2)/A091818(n+2))`
-/

namespace A053815.P10920407197225481981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005408 (n + 2) : ℚ) / (A091818 (n + 2) : ℚ)⌋

end

end A053815.P10920407197225481981

namespace A053815

/-- `floor(A005408(n+2)/A091818(n+2))` -/
def P10920407197225481981.Spec : Prop :=
  ∀ n, P10920407197225481981.a n = A053815 (n + 2)

end A053815

/-! ## A053815.P3519091162454675061

`floor(A005843(n+2)/A091818(n+2))`
-/

namespace A053815.P3519091162454675061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (n + 2) : ℚ) / (A091818 (n + 2) : ℚ)⌋

end

end A053815.P3519091162454675061

namespace A053815

/-- `floor(A005843(n+2)/A091818(n+2))` -/
def P3519091162454675061.Spec : Prop :=
  ∀ n, P3519091162454675061.a n = A053815 (n + 2)

end A053815

/-! ## A053815.P1080626170078744377

`floor(A017666(n+2)/A243473(n+2))`
-/

namespace A053815.P1080626170078744377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017666 (n + 2) : ℚ) / (A243473 (n + 2) : ℚ)⌋

end

end A053815.P1080626170078744377

namespace A053815

/-- `floor(A017666(n+2)/A243473(n+2))` -/
def P1080626170078744377.Spec : Prop :=
  ∀ n, P1080626170078744377.a n = A053815 (n + 2)

end A053815

/-! ## A053815.P2440937477223249514

`val(A000079(n+2), A000079(A001065(n+2)))`
-/

namespace A053815.P2440937477223249514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 2)).toNat (A000079 (A001065 (n + 2)).toNat).toNat

end

end A053815.P2440937477223249514

namespace A053815

/-- `val(A000079(n+2), A000079(A001065(n+2)))` -/
def P2440937477223249514.Spec : Prop :=
  ∀ n, (P2440937477223249514.a n : ℤ) = A053815 (n + 2)

end A053815

/-! ## A053815.P3040969056655595995

`val(A000244(n+2), A000244(A001065(n+2)))`
-/

namespace A053815.P3040969056655595995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000244 (n + 2)).toNat (A000244 (A001065 (n + 2)).toNat).toNat

end

end A053815.P3040969056655595995

namespace A053815

/-- `val(A000244(n+2), A000244(A001065(n+2)))` -/
def P3040969056655595995.Spec : Prop :=
  ∀ n, (P3040969056655595995.a n : ℤ) = A053815 (n + 2)

end A053815

/-!
# A053816: Another version of the Kaprekar numbers (A006886): n such that n = q+r and n^2 = q*10^m+r, for some m >= 1, q >= 0 and 0 <= r < 10^m, with n != 10^a, a >= 1 and n an m-digit number.

The programs for A053816, there is no canonical definition to state claims against.
-/

/-! ## A053816.P5778346809415780651

`record[A006886(n+1)%A000040(A194218(n+1))]`
-/

namespace A053816.P5778346809415780651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006886 (n + 1)) (A000040 (A194218 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053816.P5778346809415780651

/-! ## A053816.P14278826523574704833

`∪[A006886(n+1), A053395(n+1)]`
-/

namespace A053816.P14278826523574704833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053816.P14278826523574704833

/-! ## A053816.P14502602285106579669

`∪[A053395(n+1), A006886(A077168(n))]`
-/

namespace A053816.P14502602285106579669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (A077168 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053816.P14502602285106579669

/-! ## A053816.P18073001134589565093

`A006886(C(2*A091855(n+1)+1, 63)+n+1)`
-/

namespace A053816.P18073001134589565093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (Nat.choose (2 * A091855 (n + 1) + 1).toNat 63 + n + 1)

end

end A053816.P18073001134589565093

/-! ## A053816.P15452808751978185492

`A006886(A225780(n+1)%A093399(n+3))`
-/

namespace A053816.P15452808751978185492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (Int.tmod (A225780 (n + 1)) (A093399 (n + 3))).toNat

end

end A053816.P15452808751978185492

/-!
# A053817: a(0)=1, a(n) = n*(a(n-1) + n).

The programs for A053817, the canonical program `A053817.P4091873377956979000` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053817 has offset 0).

The definition of A053817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+n)` (program `A053817.P4091873377956979000`, by `A053817.P4091873377956979000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053817.P4091873377956979000

`n*(a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053817

/-- `n*(a(n-1)+n)` -/
def P4091873377956979000.Spec : Prop :=
  ∀ n, (P4091873377956979000.a n : ℤ) = A053817 n

theorem P4091873377956979000.correct : P4091873377956979000.Spec := by
  intro n
  simp only [A053817]

end A053817

/-! ## A053817.P336680959662502345

`A030297(n)+n!`
-/

namespace A053817.P336680959662502345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030297 n + (Nat.factorial n : ℤ)

end

end A053817.P336680959662502345

namespace A053817

/-- `A030297(n)+n!` -/
def P336680959662502345.Spec : Prop :=
  ∀ n, P336680959662502345.a n = A053817 n

end A053817

/-! ## A053817.P6470987219912101128

`n*(n-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A053817.P6470987219912101128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n : ℤ) - (-a (n - 1)))

end

end A053817.P6470987219912101128

namespace A053817

/-- `n*(n-floor(-a(n-1)))` -/
def P6470987219912101128.Spec : Prop :=
  ∀ n, P6470987219912101128.a n = A053817 n

end A053817

/-! ## A053817.P11006354876177913326

`n*(n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A053817.P11006354876177913326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n : ℤ) - (-a (n - 1)))

end

end A053817.P11006354876177913326

namespace A053817

/-- `n*(n-ceil(-a(n-1)))` -/
def P11006354876177913326.Spec : Prop :=
  ∀ n, P11006354876177913326.a n = A053817 n

end A053817

/-! ## A053817.P9650196046149159836

`n*(n-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A053817.P9650196046149159836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n : ℤ) - (-a (n - 1)))

end

end A053817.P9650196046149159836

namespace A053817

/-- `n*(n-round(-a(n-1)))` -/
def P9650196046149159836.Spec : Prop :=
  ∀ n, P9650196046149159836.a n = A053817 n

end A053817

/-! ## A053817.P17540523090716991000

`(a(n-1)+n)/cot(atan(n))` with `a(0)=1`
-/

namespace A053817.P17540523090716991000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℝ)) / Real.cot (Real.arctan (n : ℝ))

end

end A053817.P17540523090716991000

namespace A053817

/-- `(a(n-1)+n)/cot(atan(n))` -/
def P17540523090716991000.Spec : Prop :=
  ∀ n, P17540523090716991000.a n = (A053817 n : ℝ)

end A053817

/-! ## A053817.P16957265072560365942

`(a(n-1)+n)/n^(-1)` with `a(0)=1`
-/

namespace A053817.P16957265072560365942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A053817.P16957265072560365942

namespace A053817

/-- `(a(n-1)+n)/n^(-1)` -/
def P16957265072560365942.Spec : Prop :=
  ∀ n, P16957265072560365942.a n = (A053817 n : ℚ)

end A053817

/-! ## A053817.P12184615763715560334

`n-n*(1-a(n-1)-n)` with `a(0)=1`
-/

namespace A053817.P12184615763715560334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (n : ℤ) * (1 - a (n - 1) - (n : ℤ))

end

end A053817.P12184615763715560334

namespace A053817

/-- `n-n*(1-a(n-1)-n)` -/
def P12184615763715560334.Spec : Prop :=
  ∀ n, P12184615763715560334.a n = A053817 n

end A053817

/-! ## A053817.P4815729791823484252

`a(n-1)/(1/n-1/(a(n-1)+n))` with `a(0)=1`
-/

namespace A053817.P4815729791823484252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 / (n : ℚ) - 1 / (a (n - 1) + (n : ℚ)))

end

end A053817.P4815729791823484252

namespace A053817

/-- `a(n-1)/(1/n-1/(a(n-1)+n))` -/
def P4815729791823484252.Spec : Prop :=
  ∀ n, P4815729791823484252.a n = (A053817 n : ℚ)

end A053817

/-! ## A053817.P10475098566776043622

`A019463(2*n)`
-/

namespace A053817.P10475098566776043622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (2 * n)

end

end A053817.P10475098566776043622

namespace A053817

/-- `A019463(2*n)` -/
def P10475098566776043622.Spec : Prop :=
  ∀ n, P10475098566776043622.a n = A053817 n

end A053817

/-!
# A053818: a(n) = Sum_{k=1..n, gcd(n,k) = 1} k^2.

The programs for A053818, the canonical program `A053818.P14105696247088462319` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053818 has offset 1).

The definition of A053818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053818.P9890851693800874682

`2*A127415(n+1)-A023896(n+1)`
-/

namespace A053818.P9890851693800874682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127415 (n + 1) - A023896 (n + 1)

end

end A053818.P9890851693800874682

namespace A053818

/-- `2*A127415(n+1)-A023896(n+1)` -/
def P9890851693800874682.Spec : Prop :=
  ∀ n, P9890851693800874682.a n = A053818 (n + 1)

end A053818

/-! ## A053818.P3535935737681528905

`(n+1)*A023896(n+1)-A057789(n+1)`
-/

namespace A053818.P3535935737681528905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023896 (n + 1) - A057789 (n + 1)

end

end A053818.P3535935737681528905

namespace A053818

/-- `(n+1)*A023896(n+1)-A057789(n+1)` -/
def P3535935737681528905.Spec : Prop :=
  ∀ n, P3535935737681528905.a n = A053818 (n + 1)

end A053818

/-! ## A053818.P14105696247088462319

`∑{d}[n+1, A000330(#)*A334657((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053818

/-- `∑{d}[n+1, A000330(#)*A334657((n+1)/#)]` -/
def P14105696247088462319.Spec : Prop :=
  ∀ n, P14105696247088462319.a n = A053818 (n + 1)

theorem P14105696247088462319.correct : P14105696247088462319.Spec := by
  intro n
  simp only [A053818, Nat.add_sub_cancel]

end A053818

/-! ## A053818.P1781143616296734483

`∑{d}[n+1, A008683(#)*A332654((n+1)/#)]`
-/

namespace A053818.P1781143616296734483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053818.P1781143616296734483

namespace A053818

/-- `∑{d}[n+1, A008683(#)*A332654((n+1)/#)]` -/
def P1781143616296734483.Spec : Prop :=
  ∀ n, P1781143616296734483.a n = A053818 (n + 1)

end A053818

/-! ## A053818.P2456509841046410102

`∑{d}[n+1, A053822(#)*A320941((n+1)/#)]`
-/

namespace A053818.P2456509841046410102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A320941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053818.P2456509841046410102

namespace A053818

/-- `∑{d}[n+1, A053822(#)*A320941((n+1)/#)]` -/
def P2456509841046410102.Spec : Prop :=
  ∀ n, P2456509841046410102.a n = A053818 (n + 1)

end A053818

/-! ## A053818.P18269279796266668337

`∑{d}[n+1, A055615(#)*A344509((n+1)/#)]`
-/

namespace A053818.P18269279796266668337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053818.P18269279796266668337

namespace A053818

/-- `∑{d}[n+1, A055615(#)*A344509((n+1)/#)]` -/
def P18269279796266668337.Spec : Prop :=
  ∀ n, P18269279796266668337.a n = A053818 (n + 1)

end A053818

/-! ## A053818.P4539801002249141805

`A308477(∑[n+3]+1)`
-/

namespace A053818.P4539801002249141805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A053818.P4539801002249141805

namespace A053818

/-- `A308477(∑[n+3]+1)` -/
def P4539801002249141805.Spec : Prop :=
  ∀ n, P4539801002249141805.a n = A053818 (n + 1)

end A053818

/-! ## A053818.P2893344869430245942

`A023896(n+1)*A175505(n+1)/A175506(n+1)`
-/

namespace A053818.P2893344869430245942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) * A175505 (n + 1) : ℚ) / (A175506 (n + 1) : ℚ)

end

end A053818.P2893344869430245942

namespace A053818

/-- `A023896(n+1)*A175505(n+1)/A175506(n+1)` -/
def P2893344869430245942.Spec : Prop :=
  ∀ n, P2893344869430245942.a n = (A053818 (n + 1) : ℚ)

end A053818

/-!
# A053819: a(n) = Sum_{k=1..n, gcd(n,k) = 1} k^3.

The programs for A053819, the canonical program `A053819.P2604257176149337913` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053819 has offset 1).

The definition of A053819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053819.P2604257176149337913

`∑{d}[n+1, A008683(#)*A343513((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A053819

/-- `∑{d}[n+1, A008683(#)*A343513((n+1)/#)]` -/
def P2604257176149337913.Spec : Prop :=
  ∀ n, P2604257176149337913.a n = A053819 (n + 1)

theorem P2604257176149337913.correct : P2604257176149337913.Spec := by
  intro n
  simp only [A053819, Nat.add_sub_cancel]

end A053819

/-! ## A053819.P8401167053042359809

`A308477(eq[3, A285229(n)])`
-/

namespace A053819.P8401167053042359809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053819.P8401167053042359809

namespace A053819

/-- `A308477(eq[3, A285229(n)])` -/
def P8401167053042359809.Spec : Prop :=
  ∀ n, P8401167053042359809.a n = A053819 (n + 1)

end A053819

/-! ## A053819.P18308017124085151201

`A308477(A000124(n+4)-4)`
-/

namespace A053819.P18308017124085151201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A000124 (n + 4) - 4).toNat

end

end A053819.P18308017124085151201

namespace A053819

/-- `A308477(A000124(n+4)-4)` -/
def P18308017124085151201.Spec : Prop :=
  ∀ n, P18308017124085151201.a n = A053819 (n + 1)

end A053819

/-! ## A053819.P13488298739030166108

`A308477(A167614(n+1)+A005408(n))`
-/

namespace A053819.P13488298739030166108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A167614 (n + 1) + A005408 n).toNat

end

end A053819.P13488298739030166108

namespace A053819

/-- `A308477(A167614(n+1)+A005408(n))` -/
def P13488298739030166108.Spec : Prop :=
  ∀ n, P13488298739030166108.a n = A053819 (n + 1)

end A053819

/-! ## A053819.P9320980344259192860

`A308477(A016777(n+2)+A000096(n))`
-/

namespace A053819.P9320980344259192860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A016777 (n + 2) + A000096 n).toNat

end

end A053819.P9320980344259192860

namespace A053819

/-- `A308477(A016777(n+2)+A000096(n))` -/
def P9320980344259192860.Spec : Prop :=
  ∀ n, P9320980344259192860.a n = A053819 (n + 1)

end A053819

/-! ## A053819.P6539886367031763056

`A308477(lt[A308504(n+4), A308502(n+1)])`
-/

namespace A053819.P6539886367031763056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053819.P6539886367031763056

namespace A053819

/-- `A308477(lt[A308504(n+4), A308502(n+1)])` -/
def P6539886367031763056.Spec : Prop :=
  ∀ n, P6539886367031763056.a n = A053819 (n + 1)

end A053819

/-!
# A053820: a(n) = Sum_{k=1..n, gcd(n,k) = 1} k^4.

The programs for A053820, there is no canonical definition to state claims against.
-/

/-! ## A053820.P8800762864512165219

`∑{d}[n+1, A008683(#)*A343514((n+1)/#)]`
-/

namespace A053820.P8800762864512165219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343514 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053820.P8800762864512165219

/-! ## A053820.P17528010275961586769

`A308477(A046691(n+3))`
-/

namespace A053820.P17528010275961586769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A046691 (n + 3)).toNat

end

end A053820.P17528010275961586769

/-! ## A053820.P2958481830849091316

`A308477(Δ[A023545(n+1)])`
-/

namespace A053820.P2958481830849091316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (f1 (n + 1) - f1 n).toNat

end

end A053820.P2958481830849091316

/-! ## A053820.P9865833719285892797

`A308477(A000217(n+5)-4)`
-/

namespace A053820.P9865833719285892797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A000217 (n + 5) - 4).toNat

end

end A053820.P9865833719285892797

/-! ## A053820.P3637805676362991679

`A308477(A000124(n+5)-5)`
-/

namespace A053820.P3637805676362991679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A000124 (n + 5) - 5).toNat

end

end A053820.P3637805676362991679

/-!
# A053821: A discrete approximation to log(n): Sum_{ d divides n } A029833(d).

The programs for A053821, the canonical program `A053821.P9529170289535089362` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053821 has offset 1).

The definition of A053821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053821.P6625276673555445472

`∑{p}[n+1, round(log(#))]`
-/

namespace A053821.P6625276673555445472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.log (p : ℝ))

end

end A053821.P6625276673555445472

namespace A053821

/-- `∑{p}[n+1, round(log(#))]` -/
def P6625276673555445472.Spec : Prop :=
  ∀ n, P6625276673555445472.a n = A053821 (n + 1)

end A053821

/-! ## A053821.P83676439289310450

`val(∏{p}[n+1, 2^round(log(#))], 2)`
-/

namespace A053821.P83676439289310450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (p : ℝ)) : ℤ))).toNat 2

end

end A053821.P83676439289310450

namespace A053821

/-- `val(∏{p}[n+1, 2^round(log(#))], 2)` -/
def P83676439289310450.Spec : Prop :=
  ∀ n, (P83676439289310450.a n : ℤ) = A053821 (n + 1)

end A053821

/-! ## A053821.P14477269857693883469

`floor(log(∏{p}[n+1, 3^round(log(#))]))`
-/

namespace A053821.P14477269857693883469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (3 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (p : ℝ)) : ℤ) : ℚ) : ℝ)⌋

end

end A053821.P14477269857693883469

namespace A053821

/-- `floor(log(∏{p}[n+1, 3^round(log(#))]))` -/
def P14477269857693883469.Spec : Prop :=
  ∀ n, P14477269857693883469.a n = A053821 (n + 1)

end A053821

/-! ## A053821.P9529170289535089362

`∑{d}[n+1, A029833(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053821

/-- `∑{d}[n+1, A029833(#)]` -/
def P9529170289535089362.Spec : Prop :=
  ∀ n, P9529170289535089362.a n = A053821 (n + 1)

theorem P9529170289535089362.correct : P9529170289535089362.Spec := by
  intro n
  simp only [A053821, Nat.add_sub_cancel]

end A053821

/-! ## A053821.P73250001602718047

`∑{p}[n+1, A000193(#+1)]%(n+1)`
-/

namespace A053821.P73250001602718047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), A000193 (p + 1)) (n + 1 : ℤ)

end

end A053821.P73250001602718047

namespace A053821

/-- `∑{p}[n+1, A000193(#+1)]%(n+1)` -/
def P73250001602718047.Spec : Prop :=
  ∀ n, P73250001602718047.a n = A053821 (n + 1)

end A053821

/-!
# A053822: Dirichlet inverse of sigma_2 function (A001157).

The programs for A053822, the canonical program `A053822.P1516278078536147993` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053822 has offset 1).

The definition of A053822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053822.P1516278078536147993

`∑{d}[n+1, #*A328254((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053822

/-- `∑{d}[n+1, #*A328254((n+1)/#)]` -/
def P1516278078536147993.Spec : Prop :=
  ∀ n, P1516278078536147993.a n = A053822 (n + 1)

theorem P1516278078536147993.correct : P1516278078536147993.Spec := by
  intro n
  simp only [A053822, Nat.add_sub_cancel]

end A053822

/-! ## A053822.P7207788642213115733

`∑{d}[n+1, A007427(#)*A046970((n+1)/#)]`
-/

namespace A053822.P7207788642213115733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P7207788642213115733

namespace A053822

/-- `∑{d}[n+1, A007427(#)*A046970((n+1)/#)]` -/
def P7207788642213115733.Spec : Prop :=
  ∀ n, P7207788642213115733.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P15736511316257321029

`∑{d}[n+1, A053191(#)*A053825((n+1)/#)]`
-/

namespace A053822.P15736511316257321029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A053825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P15736511316257321029

namespace A053822

/-- `∑{d}[n+1, A053191(#)*A053825((n+1)/#)]` -/
def P15736511316257321029.Spec : Prop :=
  ∀ n, P15736511316257321029.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P11468563065996434465

`∑{d}[n+1, A115224(#)*A178448((n+1)/#)]`
-/

namespace A053822.P11468563065996434465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A178448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P11468563065996434465

namespace A053822

/-- `∑{d}[n+1, A115224(#)*A178448((n+1)/#)]` -/
def P11468563065996434465.Spec : Prop :=
  ∀ n, P11468563065996434465.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P8351230982221674437

`∑{d}[n+1, A008683(#)*A334657((n+1)/#)]`
-/

namespace A053822.P8351230982221674437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P8351230982221674437

namespace A053822

/-- `∑{d}[n+1, A008683(#)*A334657((n+1)/#)]` -/
def P8351230982221674437.Spec : Prop :=
  ∀ n, P8351230982221674437.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P17331477326854677492

`∑{d}[n+1, A055615(#)*A328502((n+1)/#)]`
-/

namespace A053822.P17331477326854677492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P17331477326854677492

namespace A053822

/-- `∑{d}[n+1, A055615(#)*A328502((n+1)/#)]` -/
def P17331477326854677492.Spec : Prop :=
  ∀ n, P17331477326854677492.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P1813033015010965750

`∑{d}[n+1, A053826(#)*A379833((n+1)/#)]`
-/

namespace A053822.P1813033015010965750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P1813033015010965750

namespace A053822

/-- `∑{d}[n+1, A053826(#)*A379833((n+1)/#)]` -/
def P1813033015010965750.Spec : Prop :=
  ∀ n, P1813033015010965750.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P7865573490428489351

`∑{d}[n+1, A087003(#)*A359485((n+1)/#)]`
-/

namespace A053822.P7865573490428489351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A359485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P7865573490428489351

namespace A053822

/-- `∑{d}[n+1, A087003(#)*A359485((n+1)/#)]` -/
def P7865573490428489351.Spec : Prop :=
  ∀ n, P7865573490428489351.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P17095186208417818918

`∑{d}[n+1, A271102(#)*A328639((n+1)/#)]`
-/

namespace A053822.P17095186208417818918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P17095186208417818918

namespace A053822

/-- `∑{d}[n+1, A271102(#)*A328639((n+1)/#)]` -/
def P17095186208417818918.Spec : Prop :=
  ∀ n, P17095186208417818918.a n = A053822 (n + 1)

end A053822

/-! ## A053822.P10344371940732937153

`A347227(∑[n+3]+1)`
-/

namespace A053822.P10344371940732937153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A053822.P10344371940732937153

namespace A053822

/-- `A347227(∑[n+3]+1)` -/
def P10344371940732937153.Spec : Prop :=
  ∀ n, P10344371940732937153.a n = A053822 (n + 1)

end A053822

/-!
# A053824: Sum of digits of (n written in base 5).

The programs for A053824, the canonical program `A053824.P3010568683746929224` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053824 has offset 0).

The definition of A053824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053824.P3010568683746929224

`n-4*A027868(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053824

/-- `n-4*A027868(n)` -/
def P3010568683746929224.Spec : Prop :=
  ∀ n, P3010568683746929224.a n = A053824 n

theorem P3010568683746929224.correct : P3010568683746929224.Spec := by
  intro n
  simp only [A053824]

end A053824

/-! ## A053824.P8330404568945762568

`A230865(n)-n`
-/

namespace A053824.P8330404568945762568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n - (n : ℤ)

end

end A053824.P8330404568945762568

namespace A053824

/-- `A230865(n)-n` -/
def P8330404568945762568.Spec : Prop :=
  ∀ n, P8330404568945762568.a n = A053824 n

end A053824

/-! ## A053824.P10244110471247624448

`∑{digits}[A007091(n), #]`
-/

namespace A053824.P10244110471247624448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053824.P10244110471247624448

namespace A053824

/-- `∑{digits}[A007091(n), #]` -/
def P10244110471247624448.Spec : Prop :=
  ∀ n, (P10244110471247624448.a n : ℤ) = A053824 n

end A053824

/-! ## A053824.P16511232022179153805

`A173525(n+1)-1`
-/

namespace A053824.P16511232022179153805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) - 1

end

end A053824.P16511232022179153805

namespace A053824

/-- `A173525(n+1)-1` -/
def P16511232022179153805.Spec : Prop :=
  ∀ n, P16511232022179153805.a n = A053824 n

end A053824

/-! ## A053824.P11584277615930984667

`∑{digits}[A014263(n+1)/2, #]`
-/

namespace A053824.P11584277615930984667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A053824.P11584277615930984667

namespace A053824

/-- `∑{digits}[A014263(n+1)/2, #]` -/
def P11584277615930984667.Spec : Prop :=
  ∀ n, (P11584277615930984667.a n : ℤ) = A053824 n

end A053824

/-! ## A053824.P8424330173834313044

`A023443(A173525(n+1))`
-/

namespace A053824.P8424330173834313044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A173525 (n + 1)).toNat

end

end A053824.P8424330173834313044

namespace A053824

/-- `A023443(A173525(n+1))` -/
def P8424330173834313044.Spec : Prop :=
  ∀ n, P8424330173834313044.a n = A053824 n

end A053824

/-! ## A053824.P7254009395788019716

`A096289(n)-A000120(n)`
-/

namespace A053824.P7254009395788019716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096289 n - A000120 n

end

end A053824.P7254009395788019716

namespace A053824

/-- `A096289(n)-A000120(n)` -/
def P7254009395788019716.Spec : Prop :=
  ∀ n, P7254009395788019716.a n = A053824 n

end A053824

/-! ## A053824.P4355402586917793462

`A011371(n)+A096289(n)-n`
-/

namespace A053824.P4355402586917793462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (A096289 n - (n : ℤ))

end

end A053824.P4355402586917793462

namespace A053824

/-- `A011371(n)+A096289(n)-n` -/
def P4355402586917793462.Spec : Prop :=
  ∀ n, P4355402586917793462.a n = A053824 n

end A053824

/-! ## A053824.P11692353725906795984

`A053735(n)+A096289(n)-A096288(n)`
-/

namespace A053824.P11692353725906795984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (A096289 n - A096288 n)

end

end A053824.P11692353725906795984

namespace A053824

/-- `A053735(n)+A096289(n)-A096288(n)` -/
def P11692353725906795984.Spec : Prop :=
  ∀ n, P11692353725906795984.a n = A053824 n

end A053824

/-! ## A053824.P8550061812692437579

`A053827(A037465(n))`
-/

namespace A053824.P8550061812692437579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037465 n).toNat

end

end A053824.P8550061812692437579

namespace A053824

/-- `A053827(A037465(n))` -/
def P8550061812692437579.Spec : Prop :=
  ∀ n, P8550061812692437579.a n = A053824 n

end A053824

/-! ## A053824.P6264248277965964946

`A173526(A037465(n)+1)-1`
-/

namespace A053824.P6264248277965964946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (A037465 n + 1).toNat - 1

end

end A053824.P6264248277965964946

namespace A053824

/-- `A173526(A037465(n)+1)-1` -/
def P6264248277965964946.Spec : Prop :=
  ∀ n, P6264248277965964946.a n = A053824 n

end A053824

/-! ## A053824.P8224629757933894305

`A053830(A037468(n))`
-/

namespace A053824.P8224629757933894305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037468 n).toNat

end

end A053824.P8224629757933894305

namespace A053824

/-- `A053830(A037468(n))` -/
def P8224629757933894305.Spec : Prop :=
  ∀ n, P8224629757933894305.a n = A053824 n

end A053824

/-! ## A053824.P1677824798444239844

`A053828(A037466(n))`
-/

namespace A053824.P1677824798444239844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A037466 n).toNat

end

end A053824.P1677824798444239844

namespace A053824

/-- `A053828(A037466(n))` -/
def P1677824798444239844.Spec : Prop :=
  ∀ n, P1677824798444239844.a n = A053824 n

end A053824

/-! ## A053824.P13393995626643446375

`A027868(A008587(n))-A008587(A027868(n))`
-/

namespace A053824.P13393995626643446375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A008587 n).toNat - A008587 (A027868 n).toNat

end

end A053824.P13393995626643446375

namespace A053824

/-- `A027868(A008587(n))-A008587(A027868(n))` -/
def P13393995626643446375.Spec : Prop :=
  ∀ n, P13393995626643446375.a n = A053824 n

end A053824

/-! ## A053824.P8938859133697405574

`A053829(A037467(n))`
-/

namespace A053824.P8938859133697405574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037467 n).toNat

end

end A053824.P8938859133697405574

namespace A053824

/-- `A053829(A037467(n))` -/
def P8938859133697405574.Spec : Prop :=
  ∀ n, P8938859133697405574.a n = A053824 n

end A053824

/-! ## A053824.P18389465067163281788

`A007953(A007091(n))`
-/

namespace A053824.P18389465067163281788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007091 n).toNat

end

end A053824.P18389465067163281788

namespace A053824

/-- `A007953(A007091(n))` -/
def P18389465067163281788.Spec : Prop :=
  ∀ n, P18389465067163281788.a n = A053824 n

end A053824

/-! ## A053824.P5180765633899410721

`A007953(lt[A054055(n), 5])`
-/

namespace A053824.P5180765633899410721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053824.P5180765633899410721

namespace A053824

/-- `A007953(lt[A054055(n), 5])` -/
def P5180765633899410721.Spec : Prop :=
  ∀ n, P5180765633899410721.a n = A053824 n

end A053824

/-! ## A053824.P11167105457314902031

`A007953(A014263(n+1)/2)`
-/

namespace A053824.P11167105457314902031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A053824.P11167105457314902031

namespace A053824

/-- `A007953(A014263(n+1)/2)` -/
def P11167105457314902031.Spec : Prop :=
  ∀ n, P11167105457314902031.a n = A053824 n

end A053824

/-! ## A053824.P7629966624804800366

`A007953(A024657(2*n)/2)`
-/

namespace A053824.P7629966624804800366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A024657 (2 * n) : ℚ) / 2)).toNat

end

end A053824.P7629966624804800366

namespace A053824

/-- `A007953(A024657(2*n)/2)` -/
def P7629966624804800366.Spec : Prop :=
  ∀ n, P7629966624804800366.a n = A053824 n

end A053824

/-! ## A053824.P15673240187248100977

`A007953(eq[2*A007953(n), A004092(n)])`
-/

namespace A053824.P15673240187248100977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A053824.P15673240187248100977

namespace A053824

/-- `A007953(eq[2*A007953(n), A004092(n)])` -/
def P15673240187248100977.Spec : Prop :=
  ∀ n, P15673240187248100977.a n = A053824 n

end A053824

/-!
# A053825: Dirichlet inverse of sigma_3 function (A001158).

The programs for A053825, the canonical program `A053825.P3529766841853861707` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053825 has offset 1).

The definition of A053825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053825.P3529766841853861707

`∑{d}[n+1, A007427(#)*A063453((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053825

/-- `∑{d}[n+1, A007427(#)*A063453((n+1)/#)]` -/
def P3529766841853861707.Spec : Prop :=
  ∀ n, P3529766841853861707.a n = A053825 (n + 1)

theorem P3529766841853861707.correct : P3529766841853861707.Spec := by
  intro n
  simp only [A053825, Nat.add_sub_cancel]

end A053825

/-! ## A053825.P1086441905304147302

`∑{d}[n+1, A053826(#)*A189393((n+1)/#)]`
-/

namespace A053825.P1086441905304147302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053825.P1086441905304147302

namespace A053825

/-- `∑{d}[n+1, A053826(#)*A189393((n+1)/#)]` -/
def P1086441905304147302.Spec : Prop :=
  ∀ n, P1086441905304147302.a n = A053825 (n + 1)

end A053825

/-! ## A053825.P3006188776854616410

`∑{d}[n+1, A008683(#)*A334659((n+1)/#)]`
-/

namespace A053825.P3006188776854616410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053825.P3006188776854616410

namespace A053825

/-- `∑{d}[n+1, A008683(#)*A334659((n+1)/#)]` -/
def P3006188776854616410.Spec : Prop :=
  ∀ n, P3006188776854616410.a n = A053825 (n + 1)

end A053825

/-! ## A053825.P13690764271237945604

`∑{d}[n+1, A087003(#)*A359531((n+1)/#)]`
-/

namespace A053825.P13690764271237945604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A359531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053825.P13690764271237945604

namespace A053825

/-- `∑{d}[n+1, A087003(#)*A359531((n+1)/#)]` -/
def P13690764271237945604.Spec : Prop :=
  ∀ n, P13690764271237945604.a n = A053825 (n + 1)

end A053825

/-! ## A053825.P12282447071146768584

`∑{d}[n+1, A271102(#)*A328640((n+1)/#)]`
-/

namespace A053825.P12282447071146768584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053825.P12282447071146768584

namespace A053825

/-- `∑{d}[n+1, A271102(#)*A328640((n+1)/#)]` -/
def P12282447071146768584.Spec : Prop :=
  ∀ n, P12282447071146768584.a n = A053825 (n + 1)

end A053825

/-! ## A053825.P16216210972475841571

`A347227(A027379(n+2))`
-/

namespace A053825.P16216210972475841571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A027379 (n + 2)).toNat

end

end A053825.P16216210972475841571

namespace A053825

/-- `A347227(A027379(n+2))` -/
def P16216210972475841571.Spec : Prop :=
  ∀ n, P16216210972475841571.a n = A053825 (n + 1)

end A053825

/-! ## A053825.P2470445802015154629

`A347227(A052905(n+1)+2)`
-/

namespace A053825.P2470445802015154629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A052905 (n + 1) + 2).toNat

end

end A053825.P2470445802015154629

namespace A053825

/-- `A347227(A052905(n+1)+2)` -/
def P2470445802015154629.Spec : Prop :=
  ∀ n, P2470445802015154629.a n = A053825 (n + 1)

end A053825

/-! ## A053825.P9443987600076100084

`A347227(A167614(n+1)+A005408(n))`
-/

namespace A053825.P9443987600076100084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A167614 (n + 1) + A005408 n).toNat

end

end A053825.P9443987600076100084

namespace A053825

/-- `A347227(A167614(n+1)+A005408(n))` -/
def P9443987600076100084.Spec : Prop :=
  ∀ n, P9443987600076100084.a n = A053825 (n + 1)

end A053825

/-!
# A053826: Dirichlet inverse of sigma_4 function (A001159).

The programs for A053826, the canonical program `A053826.P8302010663146468963` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053826 has offset 1).

The definition of A053826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053826.P8302010663146468963

`∑{d}[n+1, A007427(#)*A189922((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053826

/-- `∑{d}[n+1, A007427(#)*A189922((n+1)/#)]` -/
def P8302010663146468963.Spec : Prop :=
  ∀ n, P8302010663146468963.a n = A053826 (n + 1)

theorem P8302010663146468963.correct : P8302010663146468963.Spec := by
  intro n
  simp only [A053826, Nat.add_sub_cancel]

end A053826

/-! ## A053826.P2448019101772802837

`∑{d}[n+1, A008683(#)*A334660((n+1)/#)]`
-/

namespace A053826.P2448019101772802837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053826.P2448019101772802837

namespace A053826

/-- `∑{d}[n+1, A008683(#)*A334660((n+1)/#)]` -/
def P2448019101772802837.Spec : Prop :=
  ∀ n, P2448019101772802837.a n = A053826 (n + 1)

end A053826

/-! ## A053826.P16823803499708916124

`∑{d}[n+1, A178448(#)*A238533((n+1)/#)]`
-/

namespace A053826.P16823803499708916124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053826.P16823803499708916124

namespace A053826

/-- `∑{d}[n+1, A178448(#)*A238533((n+1)/#)]` -/
def P16823803499708916124.Spec : Prop :=
  ∀ n, P16823803499708916124.a n = A053826 (n + 1)

end A053826

/-! ## A053826.P12792815595634232022

`A347227(A046691(n+3))`
-/

namespace A053826.P12792815595634232022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A046691 (n + 3)).toNat

end

end A053826.P12792815595634232022

namespace A053826

/-- `A347227(A046691(n+3))` -/
def P12792815595634232022.Spec : Prop :=
  ∀ n, P12792815595634232022.a n = A053826 (n + 1)

end A053826

/-! ## A053826.P3436541650539144326

`A347227(A167614(n+4)-7)`
-/

namespace A053826.P3436541650539144326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A167614 (n + 4) - 7).toNat

end

end A053826.P3436541650539144326

namespace A053826

/-- `A347227(A167614(n+4)-7)` -/
def P3436541650539144326.Spec : Prop :=
  ∀ n, P3436541650539144326.a n = A053826 (n + 1)

end A053826

/-!
# A053827: Sum of digits of (n written in base 6).

The programs for A053827, the canonical program `A053827.P15972254016312287163` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053827 has offset 0).

The definition of A053827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053827.P15972254016312287163

`n-5*A054895(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053827

/-- `n-5*A054895(n)` -/
def P15972254016312287163.Spec : Prop :=
  ∀ n, P15972254016312287163.a n = A053827 n

theorem P15972254016312287163.correct : P15972254016312287163.Spec := by
  intro n
  simp only [A053827]

end A053827

/-! ## A053827.P3983272002249445939

`∑{digits}[A007092(n), #]`
-/

namespace A053827.P3983272002249445939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053827.P3983272002249445939

namespace A053827

/-- `∑{digits}[A007092(n), #]` -/
def P3983272002249445939.Spec : Prop :=
  ∀ n, (P3983272002249445939.a n : ℤ) = A053827 n

end A053827

/-! ## A053827.P12452851813445996478

`A173526(n+1)-1`
-/

namespace A053827.P12452851813445996478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 1) - 1

end

end A053827.P12452851813445996478

namespace A053827

/-- `A173526(n+1)-1` -/
def P12452851813445996478.Spec : Prop :=
  ∀ n, P12452851813445996478.a n = A053827 n

end A053827

/-! ## A053827.P9761560116223971623

`a(A319654(n)-1)+1` with `a(0)=0`
-/

namespace A053827.P9761560116223971623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A319654 n - 1).toNat + 1

end

end A053827.P9761560116223971623

namespace A053827

/-- `a(A319654(n)-1)+1` -/
def P9761560116223971623.Spec : Prop :=
  ∀ n, (P9761560116223971623.a n : ℤ) = A053827 n

end A053827

/-! ## A053827.P5034191966608533123

`a(A244414(n)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A053827.P5034191966608533123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A244414 n - 1).toNat + 1

end

end A053827.P5034191966608533123

namespace A053827

/-- `a(A244414(n)-1)+1` -/
def P5034191966608533123.Spec : Prop :=
  ∀ n, (P5034191966608533123.a n : ℤ) = A053827 n

end A053827

/-! ## A053827.P1716157337115439800

`a(A319806(n)-A319723(n)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A053827.P1716157337115439800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A319806 n - A319723 n - 1).toNat + 1

end

end A053827.P1716157337115439800

namespace A053827

/-- `a(A319806(n)-A319723(n)-1)+1` -/
def P1716157337115439800.Spec : Prop :=
  ∀ n, (P1716157337115439800.a n : ℤ) = A053827 n

end A053827

/-! ## A053827.P7680178324418952694

`A053830(A037472(n))`
-/

namespace A053827.P7680178324418952694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n).toNat

end

end A053827.P7680178324418952694

namespace A053827

/-- `A053830(A037472(n))` -/
def P7680178324418952694.Spec : Prop :=
  ∀ n, P7680178324418952694.a n = A053827 n

end A053827

/-! ## A053827.P6924480155728574485

`A053828(A020657(n+1))`
-/

namespace A053827.P6924480155728574485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020657 (n + 1)).toNat

end

end A053827.P6924480155728574485

namespace A053827

/-- `A053828(A020657(n+1))` -/
def P6924480155728574485.Spec : Prop :=
  ∀ n, P6924480155728574485.a n = A053827 n

end A053827

/-! ## A053827.P17193807257294238209

`A053828(A020658(n+1)-1)`
-/

namespace A053827.P17193807257294238209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020658 (n + 1) - 1).toNat

end

end A053827.P17193807257294238209

namespace A053827

/-- `A053828(A020658(n+1)-1)` -/
def P17193807257294238209.Spec : Prop :=
  ∀ n, P17193807257294238209.a n = A053827 n

end A053827

/-! ## A053827.P1266290470836072008

`∑{digits}[A061821(2*n+1), #]`
-/

namespace A053827.P1266290470836072008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061821 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053827.P1266290470836072008

namespace A053827

/-- `∑{digits}[A061821(2*n+1), #]` -/
def P1266290470836072008.Spec : Prop :=
  ∀ n, (P1266290470836072008.a n : ℤ) = A053827 n

end A053827

/-! ## A053827.P16528570227756443360

`A053829(A037471(n))`
-/

namespace A053827.P16528570227756443360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037471 n).toNat

end

end A053827.P16528570227756443360

namespace A053827

/-- `A053829(A037471(n))` -/
def P16528570227756443360.Spec : Prop :=
  ∀ n, P16528570227756443360.a n = A053827 n

end A053827

/-! ## A053827.P4438030285798076108

`A326746(A007092(n))`
-/

namespace A053827.P4438030285798076108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A007092 n).toNat

end

end A053827.P4438030285798076108

namespace A053827

/-- `A326746(A007092(n))` -/
def P4438030285798076108.Spec : Prop :=
  ∀ n, P4438030285798076108.a n = A053827 n

end A053827

/-! ## A053827.P10186508844759513644

`∑{digits}[record[n-A106747(n)], #]`
-/

namespace A053827.P10186508844759513644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053827.P10186508844759513644

namespace A053827

/-- `∑{digits}[record[n-A106747(n)], #]` -/
def P10186508844759513644.Spec : Prop :=
  ∀ n, (P10186508844759513644.a n : ℤ) = A053827 n

end A053827

/-! ## A053827.P14428032916479963297

`A007953(lt[A054055(n), 6])`
-/

namespace A053827.P14428032916479963297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053827.P14428032916479963297

namespace A053827

/-- `A007953(lt[A054055(n), 6])` -/
def P14428032916479963297.Spec : Prop :=
  ∀ n, P14428032916479963297.a n = A053827 n

end A053827

/-! ## A053827.P8506019968448962493

`A007953(eq[A007953(n), A280913(n)])`
-/

namespace A053827.P8506019968448962493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A053827.P8506019968448962493

namespace A053827

/-- `A007953(eq[A007953(n), A280913(n)])` -/
def P8506019968448962493.Spec : Prop :=
  ∀ n, P8506019968448962493.a n = A053827 n

end A053827

/-! ## A053827.P8147512163608854637

`A007953(2*A007092(n)-A007092(n))`
-/

namespace A053827.P8147512163608854637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * A007092 n - A007092 n).toNat

end

end A053827.P8147512163608854637

namespace A053827

/-- `A007953(2*A007092(n)-A007092(n))` -/
def P8147512163608854637.Spec : Prop :=
  ∀ n, P8147512163608854637.a n = A053827 n

end A053827

/-! ## A053827.P16328891243229797027

`∑{digits}[record[A222248(n)], A222248(#)]`
-/

namespace A053827.P16328891243229797027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A222248 x).sum

end

end A053827.P16328891243229797027

namespace A053827

/-- `∑{digits}[record[A222248(n)], A222248(#)]` -/
def P16328891243229797027.Spec : Prop :=
  ∀ n, P16328891243229797027.a n = A053827 n

end A053827

/-! ## A053827.P7389565786841923857

`A007953(A007092(n)+1)-1`
-/

namespace A053827.P7389565786841923857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007092 n + 1).toNat - 1

end

end A053827.P7389565786841923857

namespace A053827

/-- `A007953(A007092(n)+1)-1` -/
def P7389565786841923857.Spec : Prop :=
  ∀ n, P7389565786841923857.a n = A053827 n

end A053827

/-! ## A053827.P5226353636613204989

`A119281(A007092(n+1)-1)`
-/

namespace A053827.P5226353636613204989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119281 (A007092 (n + 1) - 1).toNat

end

end A053827.P5226353636613204989

namespace A053827

/-- `A119281(A007092(n+1)-1)` -/
def P5226353636613204989.Spec : Prop :=
  ∀ n, P5226353636613204989.a n = A053827 n

end A053827

/-! ## A053827.P16008853965313338762

`A119281(A007092(2*n-n))`
-/

namespace A053827.P16008853965313338762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119281 (A007092 (2 * n - n)).toNat

end

end A053827.P16008853965313338762

namespace A053827

/-- `A119281(A007092(2*n-n))` -/
def P16008853965313338762.Spec : Prop :=
  ∀ n, P16008853965313338762.a n = A053827 n

end A053827

/-!
# A053828: Sum of digits of (n written in base 7).

The programs for A053828, the canonical program `A053828.P10399293213985617657` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053828 has offset 0).

The definition of A053828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053828.P10137328150792600387

`n-6*A054896(n)`
-/

namespace A053828.P10137328150792600387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * A054896 n

end

end A053828.P10137328150792600387

namespace A053828

/-- `n-6*A054896(n)` -/
def P10137328150792600387.Spec : Prop :=
  ∀ n, P10137328150792600387.a n = A053828 n

end A053828

/-! ## A053828.P10399293213985617657

`a(floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053828

/-- `a(floor(n/7))+n%7` -/
def P10399293213985617657.Spec : Prop :=
  ∀ n, (P10399293213985617657.a n : ℤ) = A053828 n

theorem P10399293213985617657.correct : P10399293213985617657.Spec := by
  intro n
  simp only [A053828]

end A053828

/-! ## A053828.P1333741101496059220

`∑{digits}[A007093(n), #]`
-/

namespace A053828.P1333741101496059220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053828.P1333741101496059220

namespace A053828

/-- `∑{digits}[A007093(n), #]` -/
def P1333741101496059220.Spec : Prop :=
  ∀ n, (P1333741101496059220.a n : ℤ) = A053828 n

end A053828

/-! ## A053828.P16812744757879539658

`A173527(n+1)-1`
-/

namespace A053828.P16812744757879539658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173527 (n + 1) - 1

end

end A053828.P16812744757879539658

namespace A053828

/-- `A173527(n+1)-1` -/
def P16812744757879539658.Spec : Prop :=
  ∀ n, P16812744757879539658.a n = A053828 n

end A053828

/-! ## A053828.P9374146008501198452

`A053830(A037475(n))`
-/

namespace A053828.P9374146008501198452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037475 n).toNat

end

end A053828.P9374146008501198452

namespace A053828

/-- `A053830(A037475(n))` -/
def P9374146008501198452.Spec : Prop :=
  ∀ n, P9374146008501198452.a n = A053828 n

end A053828

/-! ## A053828.P15784679545934754211

`A053829(A037474(n))`
-/

namespace A053828.P15784679545934754211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037474 n).toNat

end

end A053828.P15784679545934754211

namespace A053828

/-- `A053829(A037474(n))` -/
def P15784679545934754211.Spec : Prop :=
  ∀ n, P15784679545934754211.a n = A053828 n

end A053828

/-! ## A053828.P16278471710009069943

`∑{digits}[lt[log(A061602(n)), 8], #]`
-/

namespace A053828.P16278471710009069943
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061602 n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A053828.P16278471710009069943

namespace A053828

/-- `∑{digits}[lt[log(A061602(n)), 8], #]` -/
def P16278471710009069943.Spec : Prop :=
  ∀ n, (P16278471710009069943.a n : ℤ) = A053828 n

end A053828

/-! ## A053828.P7863022479578075498

`A007953(A007093(n))`
-/

namespace A053828.P7863022479578075498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007093 n).toNat

end

end A053828.P7863022479578075498

namespace A053828

/-- `A007953(A007093(n))` -/
def P7863022479578075498.Spec : Prop :=
  ∀ n, P7863022479578075498.a n = A053828 n

end A053828

/-! ## A053828.P18281574896270316860

`A007953(lt[A054055(n), 7])`
-/

namespace A053828.P18281574896270316860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053828.P18281574896270316860

namespace A053828

/-- `A007953(lt[A054055(n), 7])` -/
def P18281574896270316860.Spec : Prop :=
  ∀ n, P18281574896270316860.a n = A053828 n

end A053828

/-! ## A053828.P10933672232257308076

`∑{digits}[lt[A054055(n), 7], A043093(#)]`
-/

namespace A053828.P10933672232257308076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A043093 x).sum

end

end A053828.P10933672232257308076

namespace A053828

/-- `∑{digits}[lt[A054055(n), 7], A043093(#)]` -/
def P10933672232257308076.Spec : Prop :=
  ∀ n, P10933672232257308076.a n = A053828 n

end A053828

/-! ## A053828.P5963841862180070862

`∑{digits}[lt[A054055(n), 7], A054055(#)]`
-/

namespace A053828.P5963841862180070862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A054055 x).sum

end

end A053828.P5963841862180070862

namespace A053828

/-- `∑{digits}[lt[A054055(n), 7], A054055(#)]` -/
def P5963841862180070862.Spec : Prop :=
  ∀ n, P5963841862180070862.a n = A053828 n

end A053828

/-! ## A053828.P8822047202057832020

`∑{digits}[record[n-A064770(n)], #]`
-/

namespace A053828.P8822047202057832020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053828.P8822047202057832020

namespace A053828

/-- `∑{digits}[record[n-A064770(n)], #]` -/
def P8822047202057832020.Spec : Prop :=
  ∀ n, (P8822047202057832020.a n : ℤ) = A053828 n

end A053828

/-! ## A053828.P17632325836082979143

`A007953(record[n-A064770(n)])`
-/

namespace A053828.P17632325836082979143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053828.P17632325836082979143

namespace A053828

/-- `A007953(record[n-A064770(n)])` -/
def P17632325836082979143.Spec : Prop :=
  ∀ n, P17632325836082979143.a n = A053828 n

end A053828

/-! ## A053828.P14123740506200202224

`∑{digits}[record[A222251(n)], A222251(#)]`
-/

namespace A053828.P14123740506200202224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A222251 x).sum

end

end A053828.P14123740506200202224

namespace A053828

/-- `∑{digits}[record[A222251(n)], A222251(#)]` -/
def P14123740506200202224.Spec : Prop :=
  ∀ n, P14123740506200202224.a n = A053828 n

end A053828

/-! ## A053828.P8012369234505018266

`∑{digits}[eq[n, A222254(A222252(n))], #]`
-/

namespace A053828.P8012369234505018266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A053828.P8012369234505018266

namespace A053828

/-- `∑{digits}[eq[n, A222254(A222252(n))], #]` -/
def P8012369234505018266.Spec : Prop :=
  ∀ n, (P8012369234505018266.a n : ℤ) = A053828 n

end A053828

/-! ## A053828.P12990276289543988199

`A070198(n)%A173527(n+1)`
-/

namespace A053828.P12990276289543988199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A173527 (n + 1))

end

end A053828.P12990276289543988199

namespace A053828

/-- `A070198(n)%A173527(n+1)` -/
def P12990276289543988199.Spec : Prop :=
  ∀ n, P12990276289543988199.a n = A053828 n

end A053828

/-! ## A053828.P42345421640326464

`A079782(n+1)%A173527(n+1)`
-/

namespace A053828.P42345421640326464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A173527 (n + 1))

end

end A053828.P42345421640326464

namespace A053828

/-- `A079782(n+1)%A173527(n+1)` -/
def P42345421640326464.Spec : Prop :=
  ∀ n, P42345421640326464.a n = A053828 n

end A053828

/-! ## A053828.P11879981344812346917

`A083685(n+1)%A173527(n+1)`
-/

namespace A053828.P11879981344812346917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A173527 (n + 1))

end

end A053828.P11879981344812346917

namespace A053828

/-- `A083685(n+1)%A173527(n+1)` -/
def P11879981344812346917.Spec : Prop :=
  ∀ n, P11879981344812346917.a n = A053828 n

end A053828

/-! ## A053828.P9823810315074438645

`A121934(n+1)%A173527(n+1)`
-/

namespace A053828.P9823810315074438645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A173527 (n + 1))

end

end A053828.P9823810315074438645

namespace A053828

/-- `A121934(n+1)%A173527(n+1)` -/
def P9823810315074438645.Spec : Prop :=
  ∀ n, P9823810315074438645.a n = A053828 n

end A053828

/-!
# A053829: Sum of digits of (n written in base 8).

The programs for A053829, the canonical program `A053829.P14344387204019492916` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053829 has offset 0).

The definition of A053829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054897, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053829.P14344387204019492916

`n-7*A054897(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053829

/-- `n-7*A054897(n)` -/
def P14344387204019492916.Spec : Prop :=
  ∀ n, P14344387204019492916.a n = A053829 n

theorem P14344387204019492916.correct : P14344387204019492916.Spec := by
  intro n
  simp only [A053829]

end A053829

/-! ## A053829.P1331120699176153362

`∑{digits}[A007094(n), #]`
-/

namespace A053829.P1331120699176153362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053829.P1331120699176153362

namespace A053829

/-- `∑{digits}[A007094(n), #]` -/
def P1331120699176153362.Spec : Prop :=
  ∀ n, (P1331120699176153362.a n : ℤ) = A053829 n

end A053829

/-! ## A053829.P460131534196454991

`A173528(n+1)-1`
-/

namespace A053829.P460131534196454991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1) - 1

end

end A053829.P460131534196454991

namespace A053829

/-- `A173528(n+1)-1` -/
def P460131534196454991.Spec : Prop :=
  ∀ n, P460131534196454991.a n = A053829 n

end A053829

/-! ## A053829.P4043340613763277936

`A053830(A037477(n))`
-/

namespace A053829.P4043340613763277936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n).toNat

end

end A053829.P4043340613763277936

namespace A053829

/-- `A053830(A037477(n))` -/
def P4043340613763277936.Spec : Prop :=
  ∀ n, P4043340613763277936.a n = A053829 n

end A053829

/-! ## A053829.P9614897764171963553

`A272118(A173528(n+1))`
-/

namespace A053829.P9614897764171963553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272118 (A173528 (n + 1)).toNat

end

end A053829.P9614897764171963553

namespace A053829

/-- `A272118(A173528(n+1))` -/
def P9614897764171963553.Spec : Prop :=
  ∀ n, P9614897764171963553.a n = A053829 n

end A053829

/-! ## A053829.P12349618036986719525

`A007953(A007094(n))`
-/

namespace A053829.P12349618036986719525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007094 n).toNat

end

end A053829.P12349618036986719525

namespace A053829

/-- `A007953(A007094(n))` -/
def P12349618036986719525.Spec : Prop :=
  ∀ n, P12349618036986719525.a n = A053829 n

end A053829

/-! ## A053829.P14692040677064332830

`A007953(lt[A054055(n), 8])`
-/

namespace A053829.P14692040677064332830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053829.P14692040677064332830

namespace A053829

/-- `A007953(lt[A054055(n), 8])` -/
def P14692040677064332830.Spec : Prop :=
  ∀ n, P14692040677064332830.a n = A053829 n

end A053829

/-! ## A053829.P12061298517314485733

`∑{digits}[eq[n, A222254(n)], #]`
-/

namespace A053829.P12061298517314485733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A053829.P12061298517314485733

namespace A053829

/-- `∑{digits}[eq[n, A222254(n)], #]` -/
def P12061298517314485733.Spec : Prop :=
  ∀ n, (P12061298517314485733.a n : ℤ) = A053829 n

end A053829

/-! ## A053829.P2292166646844985458

`A007953(eq[n, A222254(n)])`
-/

namespace A053829.P2292166646844985458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053829.P2292166646844985458

namespace A053829

/-- `A007953(eq[n, A222254(n)])` -/
def P2292166646844985458.Spec : Prop :=
  ∀ n, P2292166646844985458.a n = A053829 n

end A053829

/-! ## A053829.P4645994822249581765

`∑{digits}[record[A235049(A235049(n))], #]`
-/

namespace A053829.P4645994822249581765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A235049 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053829.P4645994822249581765

namespace A053829

/-- `∑{digits}[record[A235049(A235049(n))], #]` -/
def P4645994822249581765.Spec : Prop :=
  ∀ n, (P4645994822249581765.a n : ℤ) = A053829 n

end A053829

/-! ## A053829.P4109080506340546140

`A070198(n)%A173528(n+1)`
-/

namespace A053829.P4109080506340546140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A173528 (n + 1))

end

end A053829.P4109080506340546140

namespace A053829

/-- `A070198(n)%A173528(n+1)` -/
def P4109080506340546140.Spec : Prop :=
  ∀ n, P4109080506340546140.a n = A053829 n

end A053829

/-! ## A053829.P9572241157124050650

`A079782(n+1)%A173528(n+1)`
-/

namespace A053829.P9572241157124050650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A173528 (n + 1))

end

end A053829.P9572241157124050650

namespace A053829

/-- `A079782(n+1)%A173528(n+1)` -/
def P9572241157124050650.Spec : Prop :=
  ∀ n, P9572241157124050650.a n = A053829 n

end A053829

/-! ## A053829.P3708030588473993322

`A083685(n+1)%A173528(n+1)`
-/

namespace A053829.P3708030588473993322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A173528 (n + 1))

end

end A053829.P3708030588473993322

namespace A053829

/-- `A083685(n+1)%A173528(n+1)` -/
def P3708030588473993322.Spec : Prop :=
  ∀ n, P3708030588473993322.a n = A053829 n

end A053829

/-! ## A053829.P3840098440087610145

`A121934(n+1)%A173528(n+1)`
-/

namespace A053829.P3840098440087610145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A173528 (n + 1))

end

end A053829.P3840098440087610145

namespace A053829

/-- `A121934(n+1)%A173528(n+1)` -/
def P3840098440087610145.Spec : Prop :=
  ∀ n, P3840098440087610145.a n = A053829 n

end A053829

/-!
# A053830: Sum of digits of (n written in base 9).

The programs for A053830, the canonical program `A053830.P17675489584544930217` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053830 has offset 0).

The definition of A053830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053830.P16138362679868289010

`n-8*A054898(n)`
-/

namespace A053830.P16138362679868289010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 8 * A054898 n

end

end A053830.P16138362679868289010

namespace A053830

/-- `n-8*A054898(n)` -/
def P16138362679868289010.Spec : Prop :=
  ∀ n, P16138362679868289010.a n = A053830 n

end A053830

/-! ## A053830.P17675489584544930217

`abs(n-8*∑[val(C(2, n)+n, 9)]+1)-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053830

/-- `abs(n-8*∑[val(C(2, n)+n, 9)]+1)-1` -/
def P17675489584544930217.Spec : Prop :=
  ∀ n, P17675489584544930217.a n = A053830 n

theorem P17675489584544930217.correct : P17675489584544930217.Spec := by
  intro n
  simp only [A053830]

end A053830

/-! ## A053830.P12533668718732786523

`n-8*∑[val(C(2, n)+n, 9)]+1-(n%2)!`
-/

namespace A053830.P12533668718732786523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((8 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1 - (Nat.factorial (n % 2) : ℤ)

end

end A053830.P12533668718732786523

namespace A053830

/-- `n-8*∑[val(C(2, n)+n, 9)]+1-(n%2)!` -/
def P12533668718732786523.Spec : Prop :=
  ∀ n, P12533668718732786523.a n = A053830 n

end A053830

/-! ## A053830.P13613350687589166390

`∑{digits}[A007095(n), #]`
-/

namespace A053830.P13613350687589166390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053830.P13613350687589166390

namespace A053830

/-- `∑{digits}[A007095(n), #]` -/
def P13613350687589166390.Spec : Prop :=
  ∀ n, (P13613350687589166390.a n : ℤ) = A053830 n

end A053830

/-! ## A053830.P1786248652136166352

`A173529(n+1)-1`
-/

namespace A053830.P1786248652136166352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173529 (n + 1) - 1

end

end A053830.P1786248652136166352

namespace A053830

/-- `A173529(n+1)-1` -/
def P1786248652136166352.Spec : Prop :=
  ∀ n, P1786248652136166352.a n = A053830 n

end A053830

/-! ## A053830.P153825650050312134

`∑{digits}[comp[A011539(n+1)], #]`
-/

namespace A053830.P153825650050312134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A053830.P153825650050312134

namespace A053830

/-- `∑{digits}[comp[A011539(n+1)], #]` -/
def P153825650050312134.Spec : Prop :=
  ∀ n, (P153825650050312134.a n : ℤ) = A053830 n

end A053830

/-! ## A053830.P16710493449514532887

`n-8*∑[val(C(2, n)+n, 9)]+1-A114523(n)²`
-/

namespace A053830.P16710493449514532887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((8 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1 - A114523 n ^ 2

end

end A053830.P16710493449514532887

namespace A053830

/-- `n-8*∑[val(C(2, n)+n, 9)]+1-A114523(n)²` -/
def P16710493449514532887.Spec : Prop :=
  ∀ n, P16710493449514532887.a n = A053830 n

end A053830

/-! ## A053830.P92432220142615733

`A002837(A173529(n+1))`
-/

namespace A053830.P92432220142615733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A173529 (n + 1)).toNat

end

end A053830.P92432220142615733

namespace A053830

/-- `A002837(A173529(n+1))` -/
def P92432220142615733.Spec : Prop :=
  ∀ n, P92432220142615733.a n = A053830 n

end A053830

/-! ## A053830.P5174435623523236013

`2*A053735(n)-A065368(n)`
-/

namespace A053830.P5174435623523236013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A065368 n

end

end A053830.P5174435623523236013

namespace A053830

/-- `2*A053735(n)-A065368(n)` -/
def P5174435623523236013.Spec : Prop :=
  ∀ n, P5174435623523236013.a n = A053830 n

end A053830

/-! ## A053830.P12308383504496446498

`A000027(A173529(n+1)+n)%(n+1)`
-/

namespace A053830.P12308383504496446498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A173529 (n + 1) + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A053830.P12308383504496446498

namespace A053830

/-- `A000027(A173529(n+1)+n)%(n+1)` -/
def P12308383504496446498.Spec : Prop :=
  ∀ n, P12308383504496446498.a n = A053830 n

end A053830

/-! ## A053830.P16064223297363984780

`A007953(A007095(n))`
-/

namespace A053830.P16064223297363984780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007095 n).toNat

end

end A053830.P16064223297363984780

namespace A053830

/-- `A007953(A007095(n))` -/
def P16064223297363984780.Spec : Prop :=
  ∀ n, P16064223297363984780.a n = A053830 n

end A053830

/-! ## A053830.P13028028912139870582

`A007953(record[A004728(n)])`
-/

namespace A053830.P13028028912139870582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053830.P13028028912139870582

namespace A053830

/-- `A007953(record[A004728(n)])` -/
def P13028028912139870582.Spec : Prop :=
  ∀ n, P13028028912139870582.a n = A053830 n

end A053830

/-! ## A053830.P15266329719681220507

`A007953(lt[A054055(n), 9])`
-/

namespace A053830.P15266329719681220507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053830.P15266329719681220507

namespace A053830

/-- `A007953(lt[A054055(n), 9])` -/
def P15266329719681220507.Spec : Prop :=
  ∀ n, P15266329719681220507.a n = A053830 n

end A053830

/-! ## A053830.P2079048914967440000

`∑{digits}[record[A004184(n)], #]`
-/

namespace A053830.P2079048914967440000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053830.P2079048914967440000

namespace A053830

/-- `∑{digits}[record[A004184(n)], #]` -/
def P2079048914967440000.Spec : Prop :=
  ∀ n, (P2079048914967440000.a n : ℤ) = A053830 n

end A053830

/-! ## A053830.P12250043898097861254

`∑{digits}[record[A235049(n)], #]`
-/

namespace A053830.P12250043898097861254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053830.P12250043898097861254

namespace A053830

/-- `∑{digits}[record[A235049(n)], #]` -/
def P12250043898097861254.Spec : Prop :=
  ∀ n, (P12250043898097861254.a n : ℤ) = A053830 n

end A053830

/-! ## A053830.P14035055159596321022

`A007953(record[A235049(n)])`
-/

namespace A053830.P14035055159596321022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053830.P14035055159596321022

namespace A053830

/-- `A007953(record[A235049(n)])` -/
def P14035055159596321022.Spec : Prop :=
  ∀ n, P14035055159596321022.a n = A053830 n

end A053830

/-! ## A053830.P8158108774876688413

`A007953(record[n-A136400(n)])`
-/

namespace A053830.P8158108774876688413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053830.P8158108774876688413

namespace A053830

/-- `A007953(record[n-A136400(n)])` -/
def P8158108774876688413.Spec : Prop :=
  ∀ n, P8158108774876688413.a n = A053830 n

end A053830

/-! ## A053830.P15185370026572864960

`A070198(n)%A173529(n+1)`
-/

namespace A053830.P15185370026572864960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A173529 (n + 1))

end

end A053830.P15185370026572864960

namespace A053830

/-- `A070198(n)%A173529(n+1)` -/
def P15185370026572864960.Spec : Prop :=
  ∀ n, P15185370026572864960.a n = A053830 n

end A053830

/-! ## A053830.P12799515026568093744

`A079782(n+1)%A173529(n+1)`
-/

namespace A053830.P12799515026568093744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A173529 (n + 1))

end

end A053830.P12799515026568093744

namespace A053830

/-- `A079782(n+1)%A173529(n+1)` -/
def P12799515026568093744.Spec : Prop :=
  ∀ n, P12799515026568093744.a n = A053830 n

end A053830

/-! ## A053830.P5955261771922363353

`A083685(n+1)%A173529(n+1)`
-/

namespace A053830.P5955261771922363353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A173529 (n + 1))

end

end A053830.P5955261771922363353

namespace A053830

/-- `A083685(n+1)%A173529(n+1)` -/
def P5955261771922363353.Spec : Prop :=
  ∀ n, P5955261771922363353.a n = A053830 n

end A053830

/-!
# A053831: Sum of digits of n written in base 11.

The programs for A053831, the canonical program `A053831.P12457755705641406991` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053831 has offset 0).

The definition of A053831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053831.P1172953342308976068

`A055649(n)%99`
-/

namespace A053831.P1172953342308976068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055649 n) 99

end

end A053831.P1172953342308976068

namespace A053831

/-- `A055649(n)%99` -/
def P1172953342308976068.Spec : Prop :=
  ∀ n, P1172953342308976068.a n = A053831 n

end A053831

/-! ## A053831.P12457755705641406991

`n-A008592(A064458(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053831

/-- `n-A008592(A064458(n))` -/
def P12457755705641406991.Spec : Prop :=
  ∀ n, P12457755705641406991.a n = A053831 n

theorem P12457755705641406991.correct : P12457755705641406991.Spec := by
  intro n
  simp only [A053831]

end A053831

/-! ## A053831.P6225534720294510034

`-(A008592(A064458(n))+A001489(n))`
-/

namespace A053831.P6225534720294510034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008592 (A064458 n).toNat + A001489 n)

end

end A053831.P6225534720294510034

namespace A053831

/-- `-(A008592(A064458(n))+A001489(n))` -/
def P6225534720294510034.Spec : Prop :=
  ∀ n, P6225534720294510034.a n = A053831 n

end A053831

/-! ## A053831.P5006606094791255168

`A000027(n+1)-A017281(A064458(n))`
-/

namespace A053831.P5006606094791255168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A017281 (A064458 n).toNat

end

end A053831.P5006606094791255168

namespace A053831

/-- `A000027(n+1)-A017281(A064458(n))` -/
def P5006606094791255168.Spec : Prop :=
  ∀ n, P5006606094791255168.a n = A053831 n

end A053831

/-! ## A053831.P15554818163463192744

`A008592(A064458(n))*A057428(n)+n`
-/

namespace A053831.P15554818163463192744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A064458 n).toNat * A057428 n + (n : ℤ)

end

end A053831.P15554818163463192744

namespace A053831

/-- `A008592(A064458(n))*A057428(n)+n` -/
def P15554818163463192744.Spec : Prop :=
  ∀ n, P15554818163463192744.a n = A053831 n

end A053831

/-! ## A053831.P1576457510467075390

`A007953(A098488(n))%A261906(n+1)`
-/

namespace A053831.P1576457510467075390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A098488 n).toNat) (A261906 (n + 1))

end

end A053831.P1576457510467075390

namespace A053831

/-- `A007953(A098488(n))%A261906(n+1)` -/
def P1576457510467075390.Spec : Prop :=
  ∀ n, P1576457510467075390.a n = A053831 n

end A053831

/-! ## A053831.P13253476783109223632

`∑{digits}[A118759(A098488(n)), #]`
-/

namespace A053831.P13253476783109223632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A098488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053831.P13253476783109223632

namespace A053831

/-- `∑{digits}[A118759(A098488(n)), #]` -/
def P13253476783109223632.Spec : Prop :=
  ∀ n, (P13253476783109223632.a n : ℤ) = A053831 n

end A053831

/-! ## A053831.P17110878503981174045

`floor(log2(A113699(n+1)))`
-/

namespace A053831.P17110878503981174045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A113699 (n + 1)).toNat

end

end A053831.P17110878503981174045

namespace A053831

/-- `floor(log2(A113699(n+1)))` -/
def P17110878503981174045.Spec : Prop :=
  ∀ n, (P17110878503981174045.a n : ℤ) = A053831 n

end A053831

/-! ## A053831.P13323616804577045631

`A000523(A113699(n+1))`
-/

namespace A053831.P13323616804577045631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A113699 (n + 1)).toNat

end

end A053831.P13323616804577045631

namespace A053831

/-- `A000523(A113699(n+1))` -/
def P13323616804577045631.Spec : Prop :=
  ∀ n, P13323616804577045631.a n = A053831 n

end A053831

/-!
# A053832: Sum of digits of n written in base 12.

The programs for A053832, the canonical program `A053832.P11224552307172374033` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053832 has offset 0).

The definition of A053832 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064459, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053832.P11224552307172374033

`n-11*A064459(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053832

/-- `n-11*A064459(n)` -/
def P11224552307172374033.Spec : Prop :=
  ∀ n, P11224552307172374033.a n = A053832 n

theorem P11224552307172374033.correct : P11224552307172374033.Spec := by
  intro n
  simp only [A053832]

end A053832

/-! ## A053832.P14148536859792279717

`A049872(n)%99`
-/

namespace A053832.P14148536859792279717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049872 n) 99

end

end A053832.P14148536859792279717

namespace A053832

/-- `A049872(n)%99` -/
def P14148536859792279717.Spec : Prop :=
  ∀ n, P14148536859792279717.a n = A053832 n

end A053832

/-! ## A053832.P8956176785017541340

`n-A008593(A064459(n))`
-/

namespace A053832.P8956176785017541340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008593 (A064459 n).toNat

end

end A053832.P8956176785017541340

namespace A053832

/-- `n-A008593(A064459(n))` -/
def P8956176785017541340.Spec : Prop :=
  ∀ n, P8956176785017541340.a n = A053832 n

end A053832

/-! ## A053832.P8814700816704815887

`A000027(n+1)-A017401(A064459(n))`
-/

namespace A053832.P8814700816704815887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A017401 (A064459 n).toNat

end

end A053832.P8814700816704815887

namespace A053832

/-- `A000027(n+1)-A017401(A064459(n))` -/
def P8814700816704815887.Spec : Prop :=
  ∀ n, P8814700816704815887.a n = A053832 n

end A053832

/-! ## A053832.P14847549941842710327

`A048841(n)%A000267(n²)`
-/

namespace A053832.P14847549941842710327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048841 n) (A000267 (n ^ 2))

end

end A053832.P14847549941842710327

namespace A053832

/-- `A048841(n)%A000267(n²)` -/
def P14847549941842710327.Spec : Prop :=
  ∀ n, P14847549941842710327.a n = A053832 n

end A053832

/-! ## A053832.P103274744409375255

`(A121578(n+1)+n)/13`
-/

namespace A053832.P103274744409375255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121578 (n + 1) + (n : ℤ) : ℚ) / 13

end

end A053832.P103274744409375255

namespace A053832

/-- `(A121578(n+1)+n)/13` -/
def P103274744409375255.Spec : Prop :=
  ∀ n, P103274744409375255.a n = (A053832 n : ℚ)

end A053832

/-! ## A053832.P6410032330318487728

`A010881(A121578(n+1))+A010881(n)`
-/

namespace A053832.P6410032330318487728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A121578 (n + 1)).toNat + A010881 n

end

end A053832.P6410032330318487728

namespace A053832

/-- `A010881(A121578(n+1))+A010881(n)` -/
def P6410032330318487728.Spec : Prop :=
  ∀ n, P6410032330318487728.a n = A053832 n

end A053832

/-! ## A053832.P15547671172026279430

`A064459(A121578(n+1))+A064459(n)`
-/

namespace A053832.P15547671172026279430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A121578 (n + 1)).toNat + A064459 n

end

end A053832.P15547671172026279430

namespace A053832

/-- `A064459(A121578(n+1))+A064459(n)` -/
def P15547671172026279430.Spec : Prop :=
  ∀ n, P15547671172026279430.a n = A053832 n

end A053832

/-!
# A053833: Sum of digits of n written in base 13.

The programs for A053833, the canonical program `A053833.P8334433785575148508` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053833 has offset 0).

The definition of A053833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053833.P8334433785575148508

`n-A008594(A090620(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053833

/-- `n-A008594(A090620(n))` -/
def P8334433785575148508.Spec : Prop :=
  ∀ n, P8334433785575148508.a n = A053833 n

theorem P8334433785575148508.correct : P8334433785575148508.Spec := by
  intro n
  simp only [A053833]

end A053833

/-! ## A053833.P16553286215001556517

`A055648(n)%A235228(gcd(n, n+1))`
-/

namespace A053833.P16553286215001556517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055648 n) (A235228 (Nat.gcd n (n + 1)))

end

end A053833.P16553286215001556517

namespace A053833

/-- `A055648(n)%A235228(gcd(n, n+1))` -/
def P16553286215001556517.Spec : Prop :=
  ∀ n, P16553286215001556517.a n = A053833 n

end A053833

/-! ## A053833.P1968570603474496914

`A028310(n+1)-A017533(A090620(n))`
-/

namespace A053833.P1968570603474496914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) - A017533 (A090620 n).toNat

end

end A053833.P1968570603474496914

namespace A053833

/-- `A028310(n+1)-A017533(A090620(n))` -/
def P1968570603474496914.Spec : Prop :=
  ∀ n, P1968570603474496914.a n = A053833 n

end A053833

/-! ## A053833.P9629910870159367972

`A008619(2*n)-A017533(A090620(n))`
-/

namespace A053833.P9629910870159367972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A017533 (A090620 n).toNat

end

end A053833.P9629910870159367972

namespace A053833

/-- `A008619(2*n)-A017533(A090620(n))` -/
def P9629910870159367972.Spec : Prop :=
  ∀ n, P9629910870159367972.a n = A053833 n

end A053833

/-! ## A053833.P4000676506348563182

`A008621(4*n)-A017533(A090620(n))`
-/

namespace A053833.P4000676506348563182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * n) - A017533 (A090620 n).toNat

end

end A053833.P4000676506348563182

namespace A053833

/-- `A008621(4*n)-A017533(A090620(n))` -/
def P4000676506348563182.Spec : Prop :=
  ∀ n, P4000676506348563182.a n = A053833 n

end A053833

/-! ## A053833.P10137277981932017266

`A350505(A350506(n+1))-A017533(A090620(n))`
-/

namespace A053833.P10137277981932017266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350505 (A350506 (n + 1)).toNat - A017533 (A090620 n).toNat

end

end A053833.P10137277981932017266

namespace A053833

/-- `A350505(A350506(n+1))-A017533(A090620(n))` -/
def P10137277981932017266.Spec : Prop :=
  ∀ n, P10137277981932017266.a n = A053833 n

end A053833

/-! ## A053833.P2501806701019540956

`A004736(A000124(n))-A017533(A090620(n))`
-/

namespace A053833.P2501806701019540956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000124 n).toNat - A017533 (A090620 n).toNat

end

end A053833.P2501806701019540956

namespace A053833

/-- `A004736(A000124(n))-A017533(A090620(n))` -/
def P2501806701019540956.Spec : Prop :=
  ∀ n, P2501806701019540956.a n = A053833 n

end A053833

/-! ## A053833.P10149942201227166327

`A007318(A000096(n+1)-1)-A017533(A090620(n))`
-/

namespace A053833.P10149942201227166327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 1) - 1).toNat - A017533 (A090620 n).toNat

end

end A053833.P10149942201227166327

namespace A053833

/-- `A007318(A000096(n+1)-1)-A017533(A090620(n))` -/
def P10149942201227166327.Spec : Prop :=
  ∀ n, P10149942201227166327.a n = A053833 n

end A053833

/-!
# A053834: Sum of digits of n written in base 14.

The programs for A053834, the canonical program `A053834.P7687178758272888330` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053834 has offset 0).

The definition of A053834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053834.P7687178758272888330

`A055647(n)%99`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A053834

/-- `A055647(n)%99` -/
def P7687178758272888330.Spec : Prop :=
  ∀ n, P7687178758272888330.a n = A053834 n

theorem P7687178758272888330.correct : P7687178758272888330.Spec := by
  intro n
  simp only [A053834]

end A053834

/-! ## A053834.P2315354758212899546

`A234575(A000217(abs(1-n)+15)-n)-1`
-/

namespace A053834.P2315354758212899546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A000217 (|1 - (n : ℤ)| + 15).toNat - (n : ℤ)).toNat - 1

end

end A053834.P2315354758212899546

namespace A053834

/-- `A234575(A000217(abs(1-n)+15)-n)-1` -/
def P2315354758212899546.Spec : Prop :=
  ∀ n, P2315354758212899546.a n = A053834 n

end A053834

/-! ## A053834.P4705063694393049033

`A048842(n)%A000267(n²)`
-/

namespace A053834.P4705063694393049033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048842 n) (A000267 (n ^ 2))

end

end A053834.P4705063694393049033

namespace A053834

/-- `A048842(n)%A000267(n²)` -/
def P4705063694393049033.Spec : Prop :=
  ∀ n, P4705063694393049033.a n = A053834 n

end A053834

/-! ## A053834.P14485435070722922970

`A096457(A048842(n))%A008574(n)`
-/

namespace A053834.P14485435070722922970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096457 (A048842 n).toNat) (A008574 n)

end

end A053834.P14485435070722922970

namespace A053834

/-- `A096457(A048842(n))%A008574(n)` -/
def P14485435070722922970.Spec : Prop :=
  ∀ n, P14485435070722922970.a n = A053834 n

end A053834

/-!
# A053835: Sum of digits of n written in base 15.

The programs for A053835, there is no canonical definition to state claims against.
-/

/-! ## A053835.P10140364799600747303

`A055646(n)%99`
-/

namespace A053835.P10140364799600747303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055646 n) 99

end

end A053835.P10140364799600747303

/-! ## A053835.P6254653267675465641

`A053836(comp[16*n-1]%A332744(3*n+4))`
-/

namespace A053835.P6254653267675465641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A332744 (3 * n + 4))).toNat

end

end A053835.P6254653267675465641

/-! ## A053835.P4933563785865292302

`A234575(A000217(n+15)-n)-1`
-/

namespace A053835.P4933563785865292302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A000217 (n + 15) - (n : ℤ)).toNat - 1

end

end A053835.P4933563785865292302

/-! ## A053835.P16289217076648074045

`A053836(lt[A374998(n+1), 5])`
-/

namespace A053835.P16289217076648074045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374998 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053835.P16289217076648074045

/-! ## A053835.P14771942971488043640

`A053836(eq[A008835(n+1)!, A008835(n+1)])`
-/

namespace A053835.P14771942971488043640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A008835 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053835.P14771942971488043640

/-! ## A053835.P14743075218290534565

`(A257645(n)%A046100(n+1))%A196670(n+1)`
-/

namespace A053835.P14743075218290534565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A257645 n) (A046100 (n + 1))) (A196670 (n + 1))

end

end A053835.P14743075218290534565

/-! ## A053835.P16918751070918014985

`A053836(lt[(A217558(n)+n)/17, A002377(n+1)])`
-/

namespace A053835.P16918751070918014985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217558 n + (n : ℤ) : ℚ) / 17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A053835.P16918751070918014985

/-! ## A053835.P15392732707893970227

`A001222(2^(A257645(n)%A046100(n+1)))`
-/

namespace A053835.P15392732707893970227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (A257645 n) (A046100 (n + 1)) : ℤ))).toNat

end

end A053835.P15392732707893970227

/-!
# A053836: Sum of digits of n written in base 16.

The programs for A053836, the canonical program `A053836.P6566921165131624833` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053836 has offset 0).

The definition of A053836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053836.P1977813341315966630

`A055645(n)%99`
-/

namespace A053836.P1977813341315966630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055645 n) 99

end

end A053836.P1977813341315966630

namespace A053836

/-- `A055645(n)%99` -/
def P1977813341315966630.Spec : Prop :=
  ∀ n, P1977813341315966630.a n = A053836 n

end A053836

/-! ## A053836.P6566921165131624833

`n-15*A054900(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053836

/-- `n-15*A054900(n)` -/
def P6566921165131624833.Spec : Prop :=
  ∀ n, P6566921165131624833.a n = A053836 n

theorem P6566921165131624833.correct : P6566921165131624833.Spec := by
  intro n
  simp only [A053836]

end A053836

/-! ## A053836.P607110916755149332

`A125169(n)%(A054900(n)+1+n)`
-/

namespace A053836.P607110916755149332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125169 n) (A054900 n + 1 + (n : ℤ))

end

end A053836.P607110916755149332

namespace A053836

/-- `A125169(n)%(A054900(n)+1+n)` -/
def P607110916755149332.Spec : Prop :=
  ∀ n, P607110916755149332.a n = A053836 n

end A053836

/-! ## A053836.P14265863398985523490

`(A217558(n)+n)/17`
-/

namespace A053836.P14265863398985523490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217558 n + (n : ℤ) : ℚ) / 17

end

end A053836.P14265863398985523490

namespace A053836

/-- `(A217558(n)+n)/17` -/
def P14265863398985523490.Spec : Prop :=
  ∀ n, P14265863398985523490.a n = (A053836 n : ℚ)

end A053836

/-! ## A053836.P13483344927609273145

`A106618(A217558(n)+n)`
-/

namespace A053836.P13483344927609273145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A217558 n + (n : ℤ)).toNat

end

end A053836.P13483344927609273145

namespace A053836

/-- `A106618(A217558(n)+n)` -/
def P13483344927609273145.Spec : Prop :=
  ∀ n, P13483344927609273145.a n = A053836 n

end A053836

/-! ## A053836.P7298144933551671606

`A054900(n)+A054900(A217558(n))`
-/

namespace A053836.P7298144933551671606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 n + A054900 (A217558 n).toNat

end

end A053836.P7298144933551671606

namespace A053836

/-- `A054900(n)+A054900(A217558(n))` -/
def P7298144933551671606.Spec : Prop :=
  ∀ n, P7298144933551671606.a n = A053836 n

end A053836

/-! ## A053836.P4564240078372004675

`(∑[val(C(4, n+1)+n, 16)]+n%16)%(A069675(n+1)^3)`
-/

namespace A053836.P4564240078372004675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 4 (n + 1) + n) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + n % 16 : ℕ) : ℤ) (A069675 (n + 1) ^ 3)

end

end A053836.P4564240078372004675

namespace A053836

/-- `(∑[val(C(4, n+1)+n, 16)]+n%16)%(A069675(n+1)^3)` -/
def P4564240078372004675.Spec : Prop :=
  ∀ n, P4564240078372004675.a n = A053836 n

end A053836

/-! ## A053836.P15176187430634418432

`A002377(A065033(2*n))%A023443(A204985(n+1))`
-/

namespace A053836.P15176187430634418432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002377 (A065033 (2 * n)).toNat) (A023443 (A204985 (n + 1)).toNat)

end

end A053836.P15176187430634418432

namespace A053836

/-- `A002377(A065033(2*n))%A023443(A204985(n+1))` -/
def P15176187430634418432.Spec : Prop :=
  ∀ n, P15176187430634418432.a n = A053836 n

end A053836

/-! ## A053836.P17613513407696210979

`A002377(abs(1-n)+1)%A272606(n+1)`
-/

namespace A053836.P17613513407696210979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002377 (|1 - (n : ℤ)| + 1).toNat) (A272606 (n + 1))

end

end A053836.P17613513407696210979

namespace A053836

/-- `A002377(abs(1-n)+1)%A272606(n+1)` -/
def P17613513407696210979.Spec : Prop :=
  ∀ n, P17613513407696210979.a n = A053836 n

end A053836

/-! ## A053836.P16335837480405574040

`A004457(A115420(n+1))%31`
-/

namespace A053836.P16335837480405574040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004457 (A115420 (n + 1)).toNat) 31

end

end A053836.P16335837480405574040

namespace A053836

/-- `A004457(A115420(n+1))%31` -/
def P16335837480405574040.Spec : Prop :=
  ∀ n, P16335837480405574040.a n = A053836 n

end A053836

/-!
# A053837: Sum of digits of n modulo 10.

The programs for A053837, the canonical program `A053837.P1951223835563838367` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053837 has offset 0).

The definition of A053837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053837.P1951223835563838367

`A010879(A007953(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053837

/-- `A010879(A007953(n))` -/
def P1951223835563838367.Spec : Prop :=
  ∀ n, P1951223835563838367.a n = A053837 n

theorem P1951223835563838367.correct : P1951223835563838367.Spec := by
  intro n
  simp only [A053837]

end A053837

/-! ## A053837.P15917436665409471059

`∑{digits}[n, #]%10`
-/

namespace A053837.P15917436665409471059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % 10

end

end A053837.P15917436665409471059

namespace A053837

/-- `∑{digits}[n, #]%10` -/
def P15917436665409471059.Spec : Prop :=
  ∀ n, (P15917436665409471059.a n : ℤ) = A053837 n

end A053837

/-! ## A053837.P4769217248689553482

`log(∏{digits}[n, exp(#)])%10`
-/

namespace A053837.P4769217248689553482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod)) 10

end

end A053837.P4769217248689553482

namespace A053837

/-- `log(∏{digits}[n, exp(#)])%10` -/
def P4769217248689553482.Spec : Prop :=
  ∀ n, P4769217248689553482.a n = A053837 n

end A053837

/-! ## A053837.P13108549612973167067

`log2(∏{digits}[n, 2^#])%10`
-/

namespace A053837.P13108549612973167067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ))) 10

end

end A053837.P13108549612973167067

namespace A053837

/-- `log2(∏{digits}[n, 2^#])%10` -/
def P13108549612973167067.Spec : Prop :=
  ∀ n, P13108549612973167067.a n = A053837 n

end A053837

/-! ## A053837.P6786863750945407869

`val(∏{digits}[n, 2^#], 2)%10`
-/

namespace A053837.P6786863750945407869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2 % 10

end

end A053837.P6786863750945407869

namespace A053837

/-- `val(∏{digits}[n, 2^#], 2)%10` -/
def P6786863750945407869.Spec : Prop :=
  ∀ n, (P6786863750945407869.a n : ℤ) = A053837 n

end A053837

/-! ## A053837.P571474146948534310

`(a(floor(n/10))+n)%10` with `a(0)=0`
-/

namespace A053837.P571474146948534310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 10⌋.toNat + n) % 10

end

end A053837.P571474146948534310

namespace A053837

/-- `(a(floor(n/10))+n)%10` -/
def P571474146948534310.Spec : Prop :=
  ∀ n, (P571474146948534310.a n : ℤ) = A053837 n

end A053837

/-! ## A053837.P12279033156188042379

`A055014(n)%10`
-/

namespace A053837.P12279033156188042379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055014 n) 10

end

end A053837.P12279033156188042379

namespace A053837

/-- `A055014(n)%10` -/
def P12279033156188042379.Spec : Prop :=
  ∀ n, P12279033156188042379.a n = A053837 n

end A053837

/-! ## A053837.P4048669800804484874

`A065039(n)%10`
-/

namespace A053837.P4048669800804484874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065039 n) 10

end

end A053837.P4048669800804484874

namespace A053837

/-- `A065039(n)%10` -/
def P4048669800804484874.Spec : Prop :=
  ∀ n, P4048669800804484874.a n = A053837 n

end A053837

/-! ## A053837.P11559653700645369958

`A108773(n)%10`
-/

namespace A053837.P11559653700645369958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108773 n) 10

end

end A053837.P11559653700645369958

namespace A053837

/-- `A108773(n)%10` -/
def P11559653700645369958.Spec : Prop :=
  ∀ n, P11559653700645369958.a n = A053837 n

end A053837

/-! ## A053837.P11504398781145639828

`A171397(n)%10`
-/

namespace A053837.P11504398781145639828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171397 n) 10

end

end A053837.P11504398781145639828

namespace A053837

/-- `A171397(n)%10` -/
def P11504398781145639828.Spec : Prop :=
  ∀ n, P11504398781145639828.a n = A053837 n

end A053837

/-! ## A053837.P15486496793586983792

`A226134(n)%10`
-/

namespace A053837.P15486496793586983792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226134 n) 10

end

end A053837.P15486496793586983792

namespace A053837

/-- `A226134(n)%10` -/
def P15486496793586983792.Spec : Prop :=
  ∀ n, P15486496793586983792.a n = A053837 n

end A053837

/-! ## A053837.P11432539225868431061

`A389882(n)%10`
-/

namespace A053837.P11432539225868431061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389882 n) 10

end

end A053837.P11432539225868431061

namespace A053837

/-- `A389882(n)%10` -/
def P11432539225868431061.Spec : Prop :=
  ∀ n, P11432539225868431061.a n = A053837 n

end A053837

/-! ## A053837.P15799362931619300076

`A010879(∑{digits}[n, #])`
-/

namespace A053837.P15799362931619300076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A053837.P15799362931619300076

namespace A053837

/-- `A010879(∑{digits}[n, #])` -/
def P15799362931619300076.Spec : Prop :=
  ∀ n, P15799362931619300076.a n = A053837 n

end A053837

/-! ## A053837.P11341530695120886590

`A010879(A226134(n))`
-/

namespace A053837.P11341530695120886590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A226134 n).toNat

end

end A053837.P11341530695120886590

namespace A053837

/-- `A010879(A226134(n))` -/
def P11341530695120886590.Spec : Prop :=
  ∀ n, P11341530695120886590.a n = A053837 n

end A053837

/-! ## A053837.P1223606952879073233

`A144468(3*A007953(n))`
-/

namespace A053837.P1223606952879073233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (3 * A007953 n).toNat

end

end A053837.P1223606952879073233

namespace A053837

/-- `A144468(3*A007953(n))` -/
def P1223606952879073233.Spec : Prop :=
  ∀ n, P1223606952879073233.a n = A053837 n

end A053837

/-! ## A053837.P6351984198963050042

`A131579(7*A007953(n))`
-/

namespace A053837.P6351984198963050042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131579 (7 * A007953 n).toNat

end

end A053837.P6351984198963050042

namespace A053837

/-- `A131579(7*A007953(n))` -/
def P6351984198963050042.Spec : Prop :=
  ∀ n, P6351984198963050042.a n = A053837 n

end A053837

/-! ## A053837.P13941415987865167991

`A007953(n)%A040020(n)`
-/

namespace A053837.P13941415987865167991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A040020 n)

end

end A053837.P13941415987865167991

namespace A053837

/-- `A007953(n)%A040020(n)` -/
def P13941415987865167991.Spec : Prop :=
  ∀ n, P13941415987865167991.a n = A053837 n

end A053837

/-! ## A053837.P8285987887846889083

`A010879(A065039(n))`
-/

namespace A053837.P8285987887846889083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065039 n).toNat

end

end A053837.P8285987887846889083

namespace A053837

/-- `A010879(A065039(n))` -/
def P8285987887846889083.Spec : Prop :=
  ∀ n, P8285987887846889083.a n = A053837 n

end A053837

/-! ## A053837.P15237382483602240648

`A010879(A054899(n)+n)`
-/

namespace A053837.P15237382483602240648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A054899 n + (n : ℤ)).toNat

end

end A053837.P15237382483602240648

namespace A053837

/-- `A010879(A054899(n)+n)` -/
def P15237382483602240648.Spec : Prop :=
  ∀ n, P15237382483602240648.a n = A053837 n

end A053837

/-! ## A053837.P7453569105487169247

`A010879(A171397(n))`
-/

namespace A053837.P7453569105487169247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A171397 n).toNat

end

end A053837.P7453569105487169247

namespace A053837

/-- `A010879(A171397(n))` -/
def P7453569105487169247.Spec : Prop :=
  ∀ n, P7453569105487169247.a n = A053837 n

end A053837

/-!
# A053838: a(n) = (sum of digits of n written in base 3) modulo 3.

The programs for A053838, the canonical program `A053838.P12960240221396794079` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053838 has offset 0).

The definition of A053838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053838.P12960240221396794079

`A010872(A053735(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053838

/-- `A010872(A053735(n))` -/
def P12960240221396794079.Spec : Prop :=
  ∀ n, P12960240221396794079.a n = A053838 n

theorem P12960240221396794079.correct : P12960240221396794079.Spec := by
  intro n
  simp only [A053838]

end A053838

/-! ## A053838.P16251831516277481678

`(a(floor(n/3))+n)%3` with `a(0)=0`
-/

namespace A053838.P16251831516277481678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n) % 3

end

end A053838.P16251831516277481678

namespace A053838

/-- `(a(floor(n/3))+n)%3` -/
def P16251831516277481678.Spec : Prop :=
  ∀ n, (P16251831516277481678.a n : ℤ) = A053838 n

end A053838

/-! ## A053838.P4076822768927003706

`(val(n, 3)+a(n-1)+1)%3` with `a(0)=0`
-/

namespace A053838.P4076822768927003706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 3 + (a (n - 1) + 1)) % 3

end

end A053838.P4076822768927003706

namespace A053838

/-- `(val(n, 3)+a(n-1)+1)%3` -/
def P4076822768927003706.Spec : Prop :=
  ∀ n, (P4076822768927003706.a n : ℤ) = A053838 n

end A053838

/-! ## A053838.P17013492096252001624

`A004128(n)%3`
-/

namespace A053838.P17013492096252001624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) 3

end

end A053838.P17013492096252001624

namespace A053838

/-- `A004128(n)%3` -/
def P17013492096252001624.Spec : Prop :=
  ∀ n, P17013492096252001624.a n = A053838 n

end A053838

/-! ## A053838.P12809427447904747583

`A007089(n)%3`
-/

namespace A053838.P12809427447904747583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3

end

end A053838.P12809427447904747583

namespace A053838

/-- `A007089(n)%3` -/
def P12809427447904747583.Spec : Prop :=
  ∀ n, P12809427447904747583.a n = A053838 n

end A053838

/-! ## A053838.P18071263276340876476

`A023717(n)%3`
-/

namespace A053838.P18071263276340876476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 n) 3

end

end A053838.P18071263276340876476

namespace A053838

/-- `A023717(n)%3` -/
def P18071263276340876476.Spec : Prop :=
  ∀ n, P18071263276340876476.a n = A053838 n

end A053838

/-! ## A053838.P16445350382659220465

`A037455(n)%3`
-/

namespace A053838.P16445350382659220465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) 3

end

end A053838.P16445350382659220465

namespace A053838

/-- `A037455(n)%3` -/
def P16445350382659220465.Spec : Prop :=
  ∀ n, P16445350382659220465.a n = A053838 n

end A053838

/-! ## A053838.P10187967905675888754

`A038586(n)%3`
-/

namespace A053838.P10187967905675888754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038586 n) 3

end

end A053838.P10187967905675888754

namespace A053838

/-- `A038586(n)%3` -/
def P10187967905675888754.Spec : Prop :=
  ∀ n, P10187967905675888754.a n = A053838 n

end A053838

/-! ## A053838.P5409063300758940092

`A046031(n)%3`
-/

namespace A053838.P5409063300758940092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046031 n) 3

end

end A053838.P5409063300758940092

namespace A053838

/-- `A046031(n)%3` -/
def P5409063300758940092.Spec : Prop :=
  ∀ n, P5409063300758940092.a n = A053838 n

end A053838

/-! ## A053838.P15305557039366356720

`A092292(n)%3`
-/

namespace A053838.P15305557039366356720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092292 n) 3

end

end A053838.P15305557039366356720

namespace A053838

/-- `A092292(n)%3` -/
def P15305557039366356720.Spec : Prop :=
  ∀ n, P15305557039366356720.a n = A053838 n

end A053838

/-! ## A053838.P9913375820363934954

`A105529(n)%3`
-/

namespace A053838.P9913375820363934954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105529 n) 3

end

end A053838.P9913375820363934954

namespace A053838

/-- `A105529(n)%3` -/
def P9913375820363934954.Spec : Prop :=
  ∀ n, P9913375820363934954.a n = A053838 n

end A053838

/-! ## A053838.P692457016174340711

`A159958(n)%3`
-/

namespace A053838.P692457016174340711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159958 n) 3

end

end A053838.P692457016174340711

namespace A053838

/-- `A159958(n)%3` -/
def P692457016174340711.Spec : Prop :=
  ∀ n, P692457016174340711.a n = A053838 n

end A053838

/-! ## A053838.P15309836717977759826

`A305877(n)%3`
-/

namespace A053838.P15309836717977759826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305877 n) 3

end

end A053838.P15309836717977759826

namespace A053838

/-- `A305877(n)%3` -/
def P15309836717977759826.Spec : Prop :=
  ∀ n, P15309836717977759826.a n = A053838 n

end A053838

/-! ## A053838.P9414157671340167524

`A343810(n)%3`
-/

namespace A053838.P9414157671340167524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343810 n) 3

end

end A053838.P9414157671340167524

namespace A053838

/-- `A343810(n)%3` -/
def P9414157671340167524.Spec : Prop :=
  ∀ n, P9414157671340167524.a n = A053838 n

end A053838

/-! ## A053838.P2748416001958549025

`C(2, A090239(n)²)`
-/

namespace A053838.P2748416001958549025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A090239 n ^ 2).toNat

end

end A053838.P2748416001958549025

namespace A053838

/-- `C(2, A090239(n)²)` -/
def P2748416001958549025.Spec : Prop :=
  ∀ n, (P2748416001958549025.a n : ℤ) = A053838 n

end A053838

/-! ## A053838.P5610843772074236490

`log2(gcd(4, A090193(n)))`
-/

namespace A053838.P5610843772074236490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A090193 n) : ℝ)

end

end A053838.P5610843772074236490

namespace A053838

/-- `log2(gcd(4, A090193(n)))` -/
def P5610843772074236490.Spec : Prop :=
  ∀ n, P5610843772074236490.a n = (A053838 n : ℝ)

end A053838

/-! ## A053838.P3509631616791307086

`A026600(n+1)-1`
-/

namespace A053838.P3509631616791307086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) - 1

end

end A053838.P3509631616791307086

namespace A053838

/-- `A026600(n+1)-1` -/
def P3509631616791307086.Spec : Prop :=
  ∀ n, P3509631616791307086.a n = A053838 n

end A053838

/-! ## A053838.P7582479603568250416

`(A054861(n)+n)%3`
-/

namespace A053838.P7582479603568250416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + (n : ℤ)) 3

end

end A053838.P7582479603568250416

namespace A053838

/-- `(A054861(n)+n)%3` -/
def P7582479603568250416.Spec : Prop :=
  ∀ n, P7582479603568250416.a n = A053838 n

end A053838

/-! ## A053838.P4607273527076351621

`3*(n+1)-A026603(n+1)`
-/

namespace A053838.P4607273527076351621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A026603 (n + 1)

end

end A053838.P4607273527076351621

namespace A053838

/-- `3*(n+1)-A026603(n+1)` -/
def P4607273527076351621.Spec : Prop :=
  ∀ n, P4607273527076351621.a n = A053838 n

end A053838

/-!
# A053839: a(n) = (sum of digits of n written in base 4) modulo 4.

The programs for A053839, the canonical program `A053839.P2067355896077085715` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053839 has offset 0).

The definition of A053839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053839.P2067355896077085715

`A010873(A053737(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053839

/-- `A010873(A053737(n))` -/
def P2067355896077085715.Spec : Prop :=
  ∀ n, P2067355896077085715.a n = A053839 n

theorem P2067355896077085715.correct : P2067355896077085715.Spec := by
  intro n
  simp only [A053839]

end A053839

/-! ## A053839.P1902630261406804025

`(a(floor(n/4))+n)%4` with `a(0)=0`
-/

namespace A053839.P1902630261406804025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 4⌋.toNat + n) % 4

end

end A053839.P1902630261406804025

namespace A053839

/-- `(a(floor(n/4))+n)%4` -/
def P1902630261406804025.Spec : Prop :=
  ∀ n, (P1902630261406804025.a n : ℤ) = A053839 n

end A053839

/-! ## A053839.P12203335743246591665

`and(3, a(floor(n/4))+n)` with `a(0)=0`
-/

namespace A053839.P12203335743246591665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (a ⌊(n : ℚ) / 4⌋.toNat + n)

end

end A053839.P12203335743246591665

namespace A053839

/-- `and(3, a(floor(n/4))+n)` -/
def P12203335743246591665.Spec : Prop :=
  ∀ n, (P12203335743246591665.a n : ℤ) = A053839 n

end A053839

/-! ## A053839.P502499538440892587

`record[val(n, 4)-a(n-1)]%4` with `a(0)=0`
-/

namespace A053839.P502499538440892587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A053839.P502499538440892587

namespace A053839

/-- `record[val(n, 4)-a(n-1)]%4` -/
def P502499538440892587.Spec : Prop :=
  ∀ n, P502499538440892587.a n = A053839 n

end A053839

/-! ## A053839.P11435327379521629653

`and(3, record[val(n, 4)-a(n-1)])` with `a(0)=0`
-/

namespace A053839.P11435327379521629653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A053839.P11435327379521629653

namespace A053839

/-- `and(3, record[val(n, 4)-a(n-1)])` -/
def P11435327379521629653.Spec : Prop :=
  ∀ n, P11435327379521629653.a n = A053839 n

end A053839

/-! ## A053839.P6027101179367017

`(val(n, 4)+a(n-1)+1)%4` with `a(0)=0`
-/

namespace A053839.P6027101179367017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 4 + (a (n - 1) + 1)) % 4

end

end A053839.P6027101179367017

namespace A053839

/-- `(val(n, 4)+a(n-1)+1)%4` -/
def P6027101179367017.Spec : Prop :=
  ∀ n, (P6027101179367017.a n : ℤ) = A053839 n

end A053839

/-! ## A053839.P10400365720789827092

`A273149(n)-1`
-/

namespace A053839.P10400365720789827092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 n - 1

end

end A053839.P10400365720789827092

namespace A053839

/-- `A273149(n)-1` -/
def P10400365720789827092.Spec : Prop :=
  ∀ n, P10400365720789827092.a n = A053839 n

end A053839

/-! ## A053839.P3441424911872660414

`A037463(n)%4`
-/

namespace A053839.P3441424911872660414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037463 n) 4

end

end A053839.P3441424911872660414

namespace A053839

/-- `A037463(n)%4` -/
def P3441424911872660414.Spec : Prop :=
  ∀ n, P3441424911872660414.a n = A053839 n

end A053839

/-! ## A053839.P743975293341387152

`A087069(n)%4`
-/

namespace A053839.P743975293341387152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087069 n) 4

end

end A053839.P743975293341387152

namespace A053839

/-- `A087069(n)%4` -/
def P743975293341387152.Spec : Prop :=
  ∀ n, P743975293341387152.a n = A053839 n

end A053839

/-! ## A053839.P14918070528838724902

`A247891(n)%4`
-/

namespace A053839.P14918070528838724902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247891 n) 4

end

end A053839.P14918070528838724902

namespace A053839

/-- `A247891(n)%4` -/
def P14918070528838724902.Spec : Prop :=
  ∀ n, P14918070528838724902.a n = A053839 n

end A053839

/-! ## A053839.P8018439706544739069

`A020654(n+1)%4`
-/

namespace A053839.P8018439706544739069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020654 (n + 1)) 4

end

end A053839.P8018439706544739069

namespace A053839

/-- `A020654(n+1)%4` -/
def P8018439706544739069.Spec : Prop :=
  ∀ n, P8018439706544739069.a n = A053839 n

end A053839

/-! ## A053839.P5733429728872012315

`(A020655(n+1)-1)%4`
-/

namespace A053839.P5733429728872012315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020655 (n + 1) - 1) 4

end

end A053839.P5733429728872012315

namespace A053839

/-- `(A020655(n+1)-1)%4` -/
def P5733429728872012315.Spec : Prop :=
  ∀ n, P5733429728872012315.a n = A053839 n

end A053839

/-! ## A053839.P8223813837581062079

`and(3, -(A287554(n+1)+1))`
-/

namespace A053839.P8223813837581062079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(A287554 (n + 1) + 1))

end

end A053839.P8223813837581062079

namespace A053839

/-- `and(3, -(A287554(n+1)+1))` -/
def P8223813837581062079.Spec : Prop :=
  ∀ n, P8223813837581062079.a n = A053839 n

end A053839

/-! ## A053839.P11190194205908053226

`4*(n+1)-A287555(n+1)`
-/

namespace A053839.P11190194205908053226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A287555 (n + 1)

end

end A053839.P11190194205908053226

namespace A053839

/-- `4*(n+1)-A287555(n+1)` -/
def P11190194205908053226.Spec : Prop :=
  ∀ n, P11190194205908053226.a n = A053839 n

end A053839

/-! ## A053839.P7339901317901033033

`A010873(A087069(n))`
-/

namespace A053839.P7339901317901033033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A087069 n).toNat

end

end A053839.P7339901317901033033

namespace A053839

/-- `A010873(A087069(n))` -/
def P7339901317901033033.Spec : Prop :=
  ∀ n, P7339901317901033033.a n = A053839 n

end A053839

/-! ## A053839.P6463057691932152032

`A010873(A247891(n))`
-/

namespace A053839.P6463057691932152032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A247891 n).toNat

end

end A053839.P6463057691932152032

namespace A053839

/-- `A010873(A247891(n))` -/
def P6463057691932152032.Spec : Prop :=
  ∀ n, P6463057691932152032.a n = A053839 n

end A053839

/-! ## A053839.P7294263932506083141

`A010873(A020654(n+1))`
-/

namespace A053839.P7294263932506083141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A020654 (n + 1)).toNat

end

end A053839.P7294263932506083141

namespace A053839

/-- `A010873(A020654(n+1))` -/
def P7294263932506083141.Spec : Prop :=
  ∀ n, P7294263932506083141.a n = A053839 n

end A053839

/-! ## A053839.P10702725472628911558

`A053737(n)%A040002(n)`
-/

namespace A053839.P10702725472628911558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053737 n) (A040002 n)

end

end A053839.P10702725472628911558

namespace A053839

/-- `A053737(n)%A040002(n)` -/
def P10702725472628911558.Spec : Prop :=
  ∀ n, P10702725472628911558.a n = A053839 n

end A053839

/-! ## A053839.P7117107909109792081

`A001538(n)%A273149(n)`
-/

namespace A053839.P7117107909109792081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A273149 n)

end

end A053839.P7117107909109792081

namespace A053839

/-- `A001538(n)%A273149(n)` -/
def P7117107909109792081.Spec : Prop :=
  ∀ n, P7117107909109792081.a n = A053839 n

end A053839

/-! ## A053839.P8458832172556775632

`A002146(n)%A273149(n)`
-/

namespace A053839.P8458832172556775632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A273149 n)

end

end A053839.P8458832172556775632

namespace A053839

/-- `A002146(n)%A273149(n)` -/
def P8458832172556775632.Spec : Prop :=
  ∀ n, P8458832172556775632.a n = A053839 n

end A053839

/-!
# A053840: (Sum of digits of n written in base 5) modulo 5.

The programs for A053840, the canonical program `A053840.P4860895383705530862` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053840 has offset 0).

The definition of A053840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053840.P4860895383705530862

`A010874(A053824(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053840

/-- `A010874(A053824(n))` -/
def P4860895383705530862.Spec : Prop :=
  ∀ n, P4860895383705530862.a n = A053840 n

theorem P4860895383705530862.correct : P4860895383705530862.Spec := by
  intro n
  simp only [A053840]

end A053840

/-! ## A053840.P5986066494613712410

`(a(floor(n/5))+n)%5` with `a(0)=0`
-/

namespace A053840.P5986066494613712410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 5⌋.toNat + n) % 5

end

end A053840.P5986066494613712410

namespace A053840

/-- `(a(floor(n/5))+n)%5` -/
def P5986066494613712410.Spec : Prop :=
  ∀ n, (P5986066494613712410.a n : ℤ) = A053840 n

end A053840

/-! ## A053840.P232609953803768351

`(val(n, 5)+a(n-1)+1)%5` with `a(0)=0`
-/

namespace A053840.P232609953803768351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 5 + (a (n - 1) + 1)) % 5

end

end A053840.P232609953803768351

namespace A053840

/-- `(val(n, 5)+a(n-1)+1)%5` -/
def P232609953803768351.Spec : Prop :=
  ∀ n, (P232609953803768351.a n : ℤ) = A053840 n

end A053840

/-! ## A053840.P11194000004335896560

`A037465(n)%5`
-/

namespace A053840.P11194000004335896560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037465 n) 5

end

end A053840.P11194000004335896560

namespace A053840

/-- `A037465(n)%5` -/
def P11194000004335896560.Spec : Prop :=
  ∀ n, P11194000004335896560.a n = A053840 n

end A053840

/-! ## A053840.P15593671940325290116

`A191610(n+1)%5`
-/

namespace A053840.P15593671940325290116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191610 (n + 1)) 5

end

end A053840.P15593671940325290116

namespace A053840

/-- `A191610(n+1)%5` -/
def P15593671940325290116.Spec : Prop :=
  ∀ n, P15593671940325290116.a n = A053840 n

end A053840

/-! ## A053840.P13326520788474523372

`A053824(n)%A168092(n)`
-/

namespace A053840.P13326520788474523372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053824 n) (A168092 n)

end

end A053840.P13326520788474523372

namespace A053840

/-- `A053824(n)%A168092(n)` -/
def P13326520788474523372.Spec : Prop :=
  ∀ n, P13326520788474523372.a n = A053840 n

end A053840

/-! ## A053840.P9673891489733394566

`A010874(A027868(n)+A010874(n))`
-/

namespace A053840.P9673891489733394566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A027868 n + A010874 n).toNat

end

end A053840.P9673891489733394566

namespace A053840

/-- `A010874(A027868(n)+A010874(n))` -/
def P9673891489733394566.Spec : Prop :=
  ∀ n, P9673891489733394566.a n = A053840 n

end A053840

/-! ## A053840.P7742578260094066849

`A010874(A191610(n+1))`
-/

namespace A053840.P7742578260094066849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A191610 (n + 1)).toNat

end

end A053840.P7742578260094066849

namespace A053840

/-- `A010874(A191610(n+1))` -/
def P7742578260094066849.Spec : Prop :=
  ∀ n, P7742578260094066849.a n = A053840 n

end A053840

/-! ## A053840.P1341552479727072809

`A010874(A027868(n)+n)`
-/

namespace A053840.P1341552479727072809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A027868 n + (n : ℤ)).toNat

end

end A053840.P1341552479727072809

namespace A053840

/-- `A010874(A027868(n)+n)` -/
def P1341552479727072809.Spec : Prop :=
  ∀ n, P1341552479727072809.a n = A053840 n

end A053840

/-! ## A053840.P14315567779530003369

`A010874(A010874(n)+A037465(n)-n)`
-/

namespace A053840.P14315567779530003369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A010874 n + (A037465 n - (n : ℤ))).toNat

end

end A053840.P14315567779530003369

namespace A053840

/-- `A010874(A010874(n)+A037465(n)-n)` -/
def P14315567779530003369.Spec : Prop :=
  ∀ n, P14315567779530003369.a n = A053840 n

end A053840

/-! ## A053840.P13867000127717002602

`A010874(A037465(n))`
-/

namespace A053840.P13867000127717002602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A037465 n).toNat

end

end A053840.P13867000127717002602

namespace A053840

/-- `A010874(A037465(n))` -/
def P13867000127717002602.Spec : Prop :=
  ∀ n, P13867000127717002602.a n = A053840 n

end A053840

/-! ## A053840.P6574390922743387101

`A303789(A037466(n))%5`
-/

namespace A053840.P6574390922743387101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303789 (A037466 n).toNat) 5

end

end A053840.P6574390922743387101

namespace A053840

/-- `A303789(A037466(n))%5` -/
def P6574390922743387101.Spec : Prop :=
  ∀ n, P6574390922743387101.a n = A053840 n

end A053840

/-! ## A053840.P11743949427255298970

`A010874(A027868(5*n))`
-/

namespace A053840.P11743949427255298970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A027868 (5 * n)).toNat

end

end A053840.P11743949427255298970

namespace A053840

/-- `A010874(A027868(5*n))` -/
def P11743949427255298970.Spec : Prop :=
  ∀ n, P11743949427255298970.a n = A053840 n

end A053840

/-! ## A053840.P11209227115955786733

`A027868(A008587(n))%5`
-/

namespace A053840.P11209227115955786733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027868 (A008587 n).toNat) 5

end

end A053840.P11209227115955786733

namespace A053840

/-- `A027868(A008587(n))%5` -/
def P11209227115955786733.Spec : Prop :=
  ∀ n, P11209227115955786733.a n = A053840 n

end A053840

/-! ## A053840.P12882306118062775334

`A027868(A146951(n))%5`
-/

namespace A053840.P12882306118062775334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027868 (A146951 n).toNat) 5

end

end A053840.P12882306118062775334

namespace A053840

/-- `A027868(A146951(n))%5` -/
def P12882306118062775334.Spec : Prop :=
  ∀ n, P12882306118062775334.a n = A053840 n

end A053840

/-! ## A053840.P1442918233355555609

`∑[∑{d}[n, A001222(A014963(5*#))]]%5`
-/

namespace A053840.P1442918233355555609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001222 (A014963 (5 * d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A053840.P1442918233355555609

namespace A053840

/-- `∑[∑{d}[n, A001222(A014963(5*#))]]%5` -/
def P1442918233355555609.Spec : Prop :=
  ∀ n, P1442918233355555609.a n = A053840 n

end A053840

/-! ## A053840.P9094517605528303111

`A007953(A007091(n))%5`
-/

namespace A053840.P9094517605528303111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A007091 n).toNat) 5

end

end A053840.P9094517605528303111

namespace A053840

/-- `A007953(A007091(n))%5` -/
def P9094517605528303111.Spec : Prop :=
  ∀ n, P9094517605528303111.a n = A053840 n

end A053840

/-! ## A053840.P12207237963651537195

`A007953(lt[A054055(n), 5])%5`
-/

namespace A053840.P12207237963651537195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) 5

end

end A053840.P12207237963651537195

namespace A053840

/-- `A007953(lt[A054055(n), 5])%5` -/
def P12207237963651537195.Spec : Prop :=
  ∀ n, P12207237963651537195.a n = A053840 n

end A053840

/-! ## A053840.P8026177949591492605

`A007953(eq[n, A167831(n)])%5`
-/

namespace A053840.P8026177949591492605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 5

end

end A053840.P8026177949591492605

namespace A053840

/-- `A007953(eq[n, A167831(n)])%5` -/
def P8026177949591492605.Spec : Prop :=
  ∀ n, P8026177949591492605.a n = A053840 n

end A053840

/-!
# A053841: (Sum of digits of n written in base 6) modulo 6.

The programs for A053841, the canonical program `A053841.P1470426052583301090` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053841 has offset 0).

The definition of A053841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053841.P1470426052583301090

`A010875(A053827(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053841

/-- `A010875(A053827(n))` -/
def P1470426052583301090.Spec : Prop :=
  ∀ n, P1470426052583301090.a n = A053841 n

theorem P1470426052583301090.correct : P1470426052583301090.Spec := by
  intro n
  simp only [A053841]

end A053841

/-! ## A053841.P7552249069348889778

`A020657(n+1)%6`
-/

namespace A053841.P7552249069348889778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020657 (n + 1)) 6

end

end A053841.P7552249069348889778

namespace A053841

/-- `A020657(n+1)%6` -/
def P7552249069348889778.Spec : Prop :=
  ∀ n, P7552249069348889778.a n = A053841 n

end A053841

/-! ## A053841.P10622695320465835657

`(A054895(n)+n)%6`
-/

namespace A053841.P10622695320465835657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054895 n + (n : ℤ)) 6

end

end A053841.P10622695320465835657

namespace A053841

/-- `(A054895(n)+n)%6` -/
def P10622695320465835657.Spec : Prop :=
  ∀ n, P10622695320465835657.a n = A053841 n

end A053841

/-! ## A053841.P15329932171162041326

`∑{digits}[A007092(n), #]%6`
-/

namespace A053841.P15329932171162041326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 6

end

end A053841.P15329932171162041326

namespace A053841

/-- `∑{digits}[A007092(n), #]%6` -/
def P15329932171162041326.Spec : Prop :=
  ∀ n, (P15329932171162041326.a n : ℤ) = A053841 n

end A053841

/-! ## A053841.P10586361127095047463

`(A020658(n+1)-1)%6`
-/

namespace A053841.P10586361127095047463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (n + 1) - 1) 6

end

end A053841.P10586361127095047463

namespace A053841

/-- `(A020658(n+1)-1)%6` -/
def P10586361127095047463.Spec : Prop :=
  ∀ n, P10586361127095047463.a n = A053841 n

end A053841

/-! ## A053841.P1969682535500133543

`(A173526(n+1)-1)%6`
-/

namespace A053841.P1969682535500133543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173526 (n + 1) - 1) 6

end

end A053841.P1969682535500133543

namespace A053841

/-- `(A173526(n+1)-1)%6` -/
def P1969682535500133543.Spec : Prop :=
  ∀ n, P1969682535500133543.a n = A053841 n

end A053841

/-! ## A053841.P10358299646748830803

`A010875(A020657(n+1))`
-/

namespace A053841.P10358299646748830803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A020657 (n + 1)).toNat

end

end A053841.P10358299646748830803

namespace A053841

/-- `A010875(A020657(n+1))` -/
def P10358299646748830803.Spec : Prop :=
  ∀ n, P10358299646748830803.a n = A053841 n

end A053841

/-! ## A053841.P625141927738909258

`A010875(A054895(n)+n)`
-/

namespace A053841.P625141927738909258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A054895 n + (n : ℤ)).toNat

end

end A053841.P625141927738909258

namespace A053841

/-- `A010875(A054895(n)+n)` -/
def P625141927738909258.Spec : Prop :=
  ∀ n, P625141927738909258.a n = A053841 n

end A053841

/-! ## A053841.P7986703182766908142

`A053827(n)%A040006(n)`
-/

namespace A053841.P7986703182766908142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053827 n) (A040006 n)

end

end A053841.P7986703182766908142

namespace A053841

/-- `A053827(n)%A040006(n)` -/
def P7986703182766908142.Spec : Prop :=
  ∀ n, P7986703182766908142.a n = A053841 n

end A053841

/-! ## A053841.P1798544785708995486

`A010875(∑{digits}[A007092(n), #])`
-/

namespace A053841.P1798544785708995486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053841.P1798544785708995486

namespace A053841

/-- `A010875(∑{digits}[A007092(n), #])` -/
def P1798544785708995486.Spec : Prop :=
  ∀ n, P1798544785708995486.a n = A053841 n

end A053841

/-! ## A053841.P4364352100411680297

`A054895(6*n)%6`
-/

namespace A053841.P4364352100411680297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054895 (6 * n)) 6

end

end A053841.P4364352100411680297

namespace A053841

/-- `A054895(6*n)%6` -/
def P4364352100411680297.Spec : Prop :=
  ∀ n, P4364352100411680297.a n = A053841 n

end A053841

/-! ## A053841.P5372718882088586373

`A010875(A054895(6*n))`
-/

namespace A053841.P5372718882088586373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A054895 (6 * n)).toNat

end

end A053841.P5372718882088586373

namespace A053841

/-- `A010875(A054895(6*n))` -/
def P5372718882088586373.Spec : Prop :=
  ∀ n, P5372718882088586373.a n = A053841 n

end A053841

/-! ## A053841.P10277199841417367287

`A141803(∑[n+3]+n+3)`
-/

namespace A053841.P10277199841417367287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141803 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A053841.P10277199841417367287

namespace A053841

/-- `A141803(∑[n+3]+n+3)` -/
def P10277199841417367287.Spec : Prop :=
  ∀ n, P10277199841417367287.a n = A053841 n

end A053841

/-!
# A053842: (Sum of digits of n written in base 7) modulo 7.

The programs for A053842, the canonical program `A053842.P17531814317218528554` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053842 has offset 0).

The definition of A053842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053842.P17531814317218528554

`A010876(A053828(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053842

/-- `A010876(A053828(n))` -/
def P17531814317218528554.Spec : Prop :=
  ∀ n, P17531814317218528554.a n = A053842 n

theorem P17531814317218528554.correct : P17531814317218528554.Spec := by
  intro n
  simp only [A053842]

end A053842

/-! ## A053842.P14970619571654122509

`(a(floor(n/7))+n%7)%7` with `a(0)=0`
-/

namespace A053842.P14970619571654122509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 7⌋.toNat + n % 7) % 7

end

end A053842.P14970619571654122509

namespace A053842

/-- `(a(floor(n/7))+n%7)%7` -/
def P14970619571654122509.Spec : Prop :=
  ∀ n, (P14970619571654122509.a n : ℤ) = A053842 n

end A053842

/-! ## A053842.P9106100686553165644

`A037474(n)%7`
-/

namespace A053842.P9106100686553165644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 n) 7

end

end A053842.P9106100686553165644

namespace A053842

/-- `A037474(n)%7` -/
def P9106100686553165644.Spec : Prop :=
  ∀ n, P9106100686553165644.a n = A053842 n

end A053842

/-! ## A053842.P8678021913467029682

`∑{digits}[A007093(n), #]%7`
-/

namespace A053842.P8678021913467029682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 7

end

end A053842.P8678021913467029682

namespace A053842

/-- `∑{digits}[A007093(n), #]%7` -/
def P8678021913467029682.Spec : Prop :=
  ∀ n, (P8678021913467029682.a n : ℤ) = A053842 n

end A053842

/-! ## A053842.P15583523670056329165

`comp[A337239(n+1)]%7`
-/

namespace A053842.P15583523670056329165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 7

end

end A053842.P15583523670056329165

namespace A053842

/-- `comp[A337239(n+1)]%7` -/
def P15583523670056329165.Spec : Prop :=
  ∀ n, (P15583523670056329165.a n : ℤ) = A053842 n

end A053842

/-! ## A053842.P13772949771277314515

`A053828(n)%A168093(n)`
-/

namespace A053842.P13772949771277314515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053828 n) (A168093 n)

end

end A053842.P13772949771277314515

namespace A053842

/-- `A053828(n)%A168093(n)` -/
def P13772949771277314515.Spec : Prop :=
  ∀ n, P13772949771277314515.a n = A053842 n

end A053842

/-! ## A053842.P9726040139853643377

`A010876(A173527(n+1)-1)`
-/

namespace A053842.P9726040139853643377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A173527 (n + 1) - 1).toNat

end

end A053842.P9726040139853643377

namespace A053842

/-- `A010876(A173527(n+1)-1)` -/
def P9726040139853643377.Spec : Prop :=
  ∀ n, P9726040139853643377.a n = A053842 n

end A053842

/-! ## A053842.P17205980011683900604

`A010876(A054896(n)+A010876(n))`
-/

namespace A053842.P17205980011683900604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A054896 n + A010876 n).toNat

end

end A053842.P17205980011683900604

namespace A053842

/-- `A010876(A054896(n)+A010876(n))` -/
def P17205980011683900604.Spec : Prop :=
  ∀ n, P17205980011683900604.a n = A053842 n

end A053842

/-! ## A053842.P14701594405802417121

`A010876(A010876(n)+A037474(n)-n)`
-/

namespace A053842.P14701594405802417121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A010876 n + (A037474 n - (n : ℤ))).toNat

end

end A053842.P14701594405802417121

namespace A053842

/-- `A010876(A010876(n)+A037474(n)-n)` -/
def P14701594405802417121.Spec : Prop :=
  ∀ n, P14701594405802417121.a n = A053842 n

end A053842

/-! ## A053842.P18176009379254830778

`A010876(A010876(n)-(n-A037474(n)))`
-/

namespace A053842.P18176009379254830778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A010876 n - ((n : ℤ) - A037474 n)).toNat

end

end A053842.P18176009379254830778

namespace A053842

/-- `A010876(A010876(n)-(n-A037474(n)))` -/
def P18176009379254830778.Spec : Prop :=
  ∀ n, P18176009379254830778.a n = A053842 n

end A053842

/-! ## A053842.P13796045032309084902

`A010876(A054896(n)+n)`
-/

namespace A053842.P13796045032309084902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A054896 n + (n : ℤ)).toNat

end

end A053842.P13796045032309084902

namespace A053842

/-- `A010876(A054896(n)+n)` -/
def P13796045032309084902.Spec : Prop :=
  ∀ n, P13796045032309084902.a n = A053842 n

end A053842

/-! ## A053842.P2636571175299772464

`A010876(A037474(n))`
-/

namespace A053842.P2636571175299772464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A037474 n).toNat

end

end A053842.P2636571175299772464

namespace A053842

/-- `A010876(A037474(n))` -/
def P2636571175299772464.Spec : Prop :=
  ∀ n, P2636571175299772464.a n = A053842 n

end A053842

/-! ## A053842.P16999841245094983038

`A007953(A007093(n))%7`
-/

namespace A053842.P16999841245094983038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A007093 n).toNat) 7

end

end A053842.P16999841245094983038

namespace A053842

/-- `A007953(A007093(n))%7` -/
def P16999841245094983038.Spec : Prop :=
  ∀ n, P16999841245094983038.a n = A053842 n

end A053842

/-! ## A053842.P6553524741073544407

`A010876(A054896(7*n))`
-/

namespace A053842.P6553524741073544407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A054896 (7 * n)).toNat

end

end A053842.P6553524741073544407

namespace A053842

/-- `A010876(A054896(7*n))` -/
def P6553524741073544407.Spec : Prop :=
  ∀ n, P6553524741073544407.a n = A053842 n

end A053842

/-!
# A053843: (Sum of digits of n written in base 8) modulo 8.

The programs for A053843, the canonical program `A053843.P17953415486736752166` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053843 has offset 0).

The definition of A053843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053843.P17953415486736752166

`A010877(A053829(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053843

/-- `A010877(A053829(n))` -/
def P17953415486736752166.Spec : Prop :=
  ∀ n, P17953415486736752166.a n = A053843 n

theorem P17953415486736752166.correct : P17953415486736752166.Spec := by
  intro n
  simp only [A053843]

end A053843

/-! ## A053843.P6620068197425264279

`A037477(n)%8`
-/

namespace A053843.P6620068197425264279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 n) 8

end

end A053843.P6620068197425264279

namespace A053843

/-- `A037477(n)%8` -/
def P6620068197425264279.Spec : Prop :=
  ∀ n, P6620068197425264279.a n = A053843 n

end A053843

/-! ## A053843.P14692889666142580936

`comp[A338090(n+1)]%8`
-/

namespace A053843.P14692889666142580936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 8

end

end A053843.P14692889666142580936

namespace A053843

/-- `comp[A338090(n+1)]%8` -/
def P14692889666142580936.Spec : Prop :=
  ∀ n, (P14692889666142580936.a n : ℤ) = A053843 n

end A053843

/-! ## A053843.P4523634312559525213

`A010877(A037477(n))`
-/

namespace A053843.P4523634312559525213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A037477 n).toNat

end

end A053843.P4523634312559525213

namespace A053843

/-- `A010877(A037477(n))` -/
def P4523634312559525213.Spec : Prop :=
  ∀ n, P4523634312559525213.a n = A053843 n

end A053843

/-! ## A053843.P10485846692174016586

`A010877(A054897(n)+n)`
-/

namespace A053843.P10485846692174016586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A054897 n + (n : ℤ)).toNat

end

end A053843.P10485846692174016586

namespace A053843

/-- `A010877(A054897(n)+n)` -/
def P10485846692174016586.Spec : Prop :=
  ∀ n, P10485846692174016586.a n = A053843 n

end A053843

/-! ## A053843.P6980868791610932845

`A053829(n)%A040012(n)`
-/

namespace A053843.P6980868791610932845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053829 n) (A040012 n)

end

end A053843.P6980868791610932845

namespace A053843

/-- `A053829(n)%A040012(n)` -/
def P6980868791610932845.Spec : Prop :=
  ∀ n, P6980868791610932845.a n = A053843 n

end A053843

/-! ## A053843.P1183821805202068749

`and(A001533(n), A053829(n))`
-/

namespace A053843.P1183821805202068749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001533 n) (A053829 n)

end

end A053843.P1183821805202068749

namespace A053843

/-- `and(A001533(n), A053829(n))` -/
def P1183821805202068749.Spec : Prop :=
  ∀ n, P1183821805202068749.a n = A053843 n

end A053843

/-! ## A053843.P6302541787934476436

`and(A053829(n), A142037(n+1))`
-/

namespace A053843.P6302541787934476436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A142037 (n + 1))

end

end A053843.P6302541787934476436

namespace A053843

/-- `and(A053829(n), A142037(n+1))` -/
def P6302541787934476436.Spec : Prop :=
  ∀ n, P6302541787934476436.a n = A053843 n

end A053843

/-! ## A053843.P16347973171906211837

`and(A053829(n), A142928(n+1))`
-/

namespace A053843.P16347973171906211837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A142928 (n + 1))

end

end A053843.P16347973171906211837

namespace A053843

/-- `and(A053829(n), A142928(n+1))` -/
def P16347973171906211837.Spec : Prop :=
  ∀ n, P16347973171906211837.a n = A053843 n

end A053843

/-! ## A053843.P8939559182500184536

`and(A053829(n), A142942(n+1))`
-/

namespace A053843.P8939559182500184536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A142942 (n + 1))

end

end A053843.P8939559182500184536

namespace A053843

/-- `and(A053829(n), A142942(n+1))` -/
def P8939559182500184536.Spec : Prop :=
  ∀ n, P8939559182500184536.a n = A053843 n

end A053843

/-! ## A053843.P17686680399818131298

`and(A015249(A053829(n)+2), A053829(n))`
-/

namespace A053843.P17686680399818131298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015249 (A053829 n + 2).toNat) (A053829 n)

end

end A053843.P17686680399818131298

namespace A053843

/-- `and(A015249(A053829(n)+2), A053829(n))` -/
def P17686680399818131298.Spec : Prop :=
  ∀ n, P17686680399818131298.a n = A053843 n

end A053843

/-! ## A053843.P10735240719031417203

`A010887(A054897(n)+n)-1`
-/

namespace A053843.P10735240719031417203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (A054897 n + (n : ℤ)).toNat - 1

end

end A053843.P10735240719031417203

namespace A053843

/-- `A010887(A054897(n)+n)-1` -/
def P10735240719031417203.Spec : Prop :=
  ∀ n, P10735240719031417203.a n = A053843 n

end A053843

/-! ## A053843.P13821415957375643299

`and(A053829(n), A131664(n+1))`
-/

namespace A053843.P13821415957375643299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A131664 (n + 1))

end

end A053843.P13821415957375643299

namespace A053843

/-- `and(A053829(n), A131664(n+1))` -/
def P13821415957375643299.Spec : Prop :=
  ∀ n, P13821415957375643299.a n = A053843 n

end A053843

/-! ## A053843.P8681822265520206758

`A007953(A007094(n))%8`
-/

namespace A053843.P8681822265520206758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A007094 n).toNat) 8

end

end A053843.P8681822265520206758

namespace A053843

/-- `A007953(A007094(n))%8` -/
def P8681822265520206758.Spec : Prop :=
  ∀ n, P8681822265520206758.a n = A053843 n

end A053843

/-! ## A053843.P3813318139191643468

`and(A053829(n), A135570(A053829(3*n)))`
-/

namespace A053843.P3813318139191643468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A135570 (A053829 (3 * n)).toNat)

end

end A053843.P3813318139191643468

namespace A053843

/-- `and(A053829(n), A135570(A053829(3*n)))` -/
def P3813318139191643468.Spec : Prop :=
  ∀ n, P3813318139191643468.a n = A053843 n

end A053843

/-! ## A053843.P10327900673553094270

`and(A053829(n), A137470(A053829(n)²))`
-/

namespace A053843.P10327900673553094270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A137470 (A053829 n ^ 2).toNat)

end

end A053843.P10327900673553094270

namespace A053843

/-- `and(A053829(n), A137470(A053829(n)²))` -/
def P10327900673553094270.Spec : Prop :=
  ∀ n, P10327900673553094270.a n = A053843 n

end A053843

/-! ## A053843.P15633197097167756900

`A010877(A054897(8*n))`
-/

namespace A053843.P15633197097167756900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A054897 (8 * n)).toNat

end

end A053843.P15633197097167756900

namespace A053843

/-- `A010877(A054897(8*n))` -/
def P15633197097167756900.Spec : Prop :=
  ∀ n, P15633197097167756900.a n = A053843 n

end A053843

/-! ## A053843.P12700804007101002340

`and(A053829(n), A137470(n))`
-/

namespace A053843.P12700804007101002340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A137470 n)

end

end A053843.P12700804007101002340

namespace A053843

/-- `and(A053829(n), A137470(n))` -/
def P12700804007101002340.Spec : Prop :=
  ∀ n, P12700804007101002340.a n = A053843 n

end A053843

/-! ## A053843.P7219947231273396899

`and(A053829(n), A342728(n))`
-/

namespace A053843.P7219947231273396899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053829 n) (A342728 n)

end

end A053843.P7219947231273396899

namespace A053843

/-- `and(A053829(n), A342728(n))` -/
def P7219947231273396899.Spec : Prop :=
  ∀ n, P7219947231273396899.a n = A053843 n

end A053843

/-! ## A053843.P1249876432327215387

`and(A037477(n), A168415(n))`
-/

namespace A053843.P1249876432327215387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037477 n) (A168415 n)

end

end A053843.P1249876432327215387

namespace A053843

/-- `and(A037477(n), A168415(n))` -/
def P1249876432327215387.Spec : Prop :=
  ∀ n, P1249876432327215387.a n = A053843 n

end A053843

/-!
# A053844: (Sum of digits of n written in base 9) modulo 9.

The programs for A053844, the canonical program `A053844.P4780576487798732142` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053844 has offset 0).

The definition of A053844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053844.P4780576487798732142

`A010878(A053830(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053844

/-- `A010878(A053830(n))` -/
def P4780576487798732142.Spec : Prop :=
  ∀ n, P4780576487798732142.a n = A053844 n

theorem P4780576487798732142.correct : P4780576487798732142.Spec := by
  intro n
  simp only [A053844]

end A053844

/-! ## A053844.P18078744297864526017

`(abs(n-8*∑[val(C(2, n)+n, 9)]+1)-1)%9`
-/

namespace A053844.P18078744297864526017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (|(n : ℤ) - ((8 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1| - 1) 9

end

end A053844.P18078744297864526017

namespace A053844

/-- `(abs(n-8*∑[val(C(2, n)+n, 9)]+1)-1)%9` -/
def P18078744297864526017.Spec : Prop :=
  ∀ n, P18078744297864526017.a n = A053844 n

end A053844

/-! ## A053844.P9427200044230881051

`A007095(n)%9`
-/

namespace A053844.P9427200044230881051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 n) 9

end

end A053844.P9427200044230881051

namespace A053844

/-- `A007095(n)%9` -/
def P9427200044230881051.Spec : Prop :=
  ∀ n, P9427200044230881051.a n = A053844 n

end A053844

/-! ## A053844.P7889824185498578479

`(A054898(n)+n)%9`
-/

namespace A053844.P7889824185498578479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054898 n + (n : ℤ)) 9

end

end A053844.P7889824185498578479

namespace A053844

/-- `(A054898(n)+n)%9` -/
def P7889824185498578479.Spec : Prop :=
  ∀ n, P7889824185498578479.a n = A053844 n

end A053844

/-! ## A053844.P14250008002558179496

`comp[A011539(n+1)]%9`
-/

namespace A053844.P14250008002558179496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 9

end

end A053844.P14250008002558179496

namespace A053844

/-- `comp[A011539(n+1)]%9` -/
def P14250008002558179496.Spec : Prop :=
  ∀ n, (P14250008002558179496.a n : ℤ) = A053844 n

end A053844

/-! ## A053844.P5737459159603079869

`A053830(n)%A100401(n)`
-/

namespace A053844.P5737459159603079869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 n) (A100401 n)

end

end A053844.P5737459159603079869

namespace A053844

/-- `A053830(n)%A100401(n)` -/
def P5737459159603079869.Spec : Prop :=
  ∀ n, P5737459159603079869.a n = A053844 n

end A053844

/-! ## A053844.P7206766576832821510

`A010878(A054898(n)+A010878(n))`
-/

namespace A053844.P7206766576832821510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A054898 n + A010878 n).toNat

end

end A053844.P7206766576832821510

namespace A053844

/-- `A010878(A054898(n)+A010878(n))` -/
def P7206766576832821510.Spec : Prop :=
  ∀ n, P7206766576832821510.a n = A053844 n

end A053844

/-! ## A053844.P13300250207875455764

`A010878(A054898(n)+n)`
-/

namespace A053844.P13300250207875455764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A054898 n + (n : ℤ)).toNat

end

end A053844.P13300250207875455764

namespace A053844

/-- `A010878(A054898(n)+n)` -/
def P13300250207875455764.Spec : Prop :=
  ∀ n, P13300250207875455764.a n = A053844 n

end A053844

/-! ## A053844.P17926466686018962365

`lt[A054055(n), 9]%9`
-/

namespace A053844.P17926466686018962365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 9

end

end A053844.P17926466686018962365

namespace A053844

/-- `lt[A054055(n), 9]%9` -/
def P17926466686018962365.Spec : Prop :=
  ∀ n, (P17926466686018962365.a n : ℤ) = A053844 n

end A053844

/-! ## A053844.P16180880472230925545

`A010878(A007095(n))`
-/

namespace A053844.P16180880472230925545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A007095 n).toNat

end

end A053844.P16180880472230925545

namespace A053844

/-- `A010878(A007095(n))` -/
def P16180880472230925545.Spec : Prop :=
  ∀ n, P16180880472230925545.a n = A053844 n

end A053844

/-! ## A053844.P6560018125564073031

`eq[A004176(n), A004184(A004176(n))]%9`
-/

namespace A053844.P6560018125564073031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 9

end

end A053844.P6560018125564073031

namespace A053844

/-- `eq[A004176(n), A004184(A004176(n))]%9` -/
def P6560018125564073031.Spec : Prop :=
  ∀ n, (P6560018125564073031.a n : ℤ) = A053844 n

end A053844

/-! ## A053844.P11387072258767595234

`record[A004184(n)]%9`
-/

namespace A053844.P11387072258767595234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A053844.P11387072258767595234

namespace A053844

/-- `record[A004184(n)]%9` -/
def P11387072258767595234.Spec : Prop :=
  ∀ n, P11387072258767595234.a n = A053844 n

end A053844

/-! ## A053844.P12464836033520152060

`record[A235049(n)]%9`
-/

namespace A053844.P12464836033520152060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A053844.P12464836033520152060

namespace A053844

/-- `record[A235049(n)]%9` -/
def P12464836033520152060.Spec : Prop :=
  ∀ n, P12464836033520152060.a n = A053844 n

end A053844

/-! ## A053844.P14559492048879888831

`record[n-A136400(n)]%9`
-/

namespace A053844.P14559492048879888831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A053844.P14559492048879888831

namespace A053844

/-- `record[n-A136400(n)]%9` -/
def P14559492048879888831.Spec : Prop :=
  ∀ n, P14559492048879888831.a n = A053844 n

end A053844

/-! ## A053844.P4500872584323688925

`A010878(record[A235049(n)])`
-/

namespace A053844.P4500872584323688925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053844.P4500872584323688925

namespace A053844

/-- `A010878(record[A235049(n)])` -/
def P4500872584323688925.Spec : Prop :=
  ∀ n, P4500872584323688925.a n = A053844 n

end A053844

/-! ## A053844.P12461878575085887818

`A222254(record[A004183(n)])%9`
-/

namespace A053844.P12461878575085887818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 9

end

end A053844.P12461878575085887818

namespace A053844

/-- `A222254(record[A004183(n)])%9` -/
def P12461878575085887818.Spec : Prop :=
  ∀ n, P12461878575085887818.a n = A053844 n

end A053844

/-! ## A053844.P11989613287984365959

`A222254(record[A222254(n)])%9`
-/

namespace A053844.P11989613287984365959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 9

end

end A053844.P11989613287984365959

namespace A053844

/-- `A222254(record[A222254(n)])%9` -/
def P11989613287984365959.Spec : Prop :=
  ∀ n, P11989613287984365959.a n = A053844 n

end A053844

/-! ## A053844.P294414145352180177

`A004184(eq[n, A004184(n)])%9`
-/

namespace A053844.P294414145352180177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 9

end

end A053844.P294414145352180177

namespace A053844

/-- `A004184(eq[n, A004184(n)])%9` -/
def P294414145352180177.Spec : Prop :=
  ∀ n, P294414145352180177.a n = A053844 n

end A053844

/-! ## A053844.P15740420342818444879

`A222254(eq[n, A004183(n)])%9`
-/

namespace A053844.P15740420342818444879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 9

end

end A053844.P15740420342818444879

namespace A053844

/-- `A222254(eq[n, A004183(n)])%9` -/
def P15740420342818444879.Spec : Prop :=
  ∀ n, P15740420342818444879.a n = A053844 n

end A053844

/-! ## A053844.P7445681685051305065

`A054898(9*n)%9`
-/

namespace A053844.P7445681685051305065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054898 (9 * n)) 9

end

end A053844.P7445681685051305065

namespace A053844

/-- `A054898(9*n)%9` -/
def P7445681685051305065.Spec : Prop :=
  ∀ n, P7445681685051305065.a n = A053844 n

end A053844

/-!
# A053845: Primes of form prime(1) + ... + prime(k) + 1.

The programs for A053845, there is no canonical definition to state claims against.
-/

/-! ## A053845.P10703821846103765815

`A007504(A089228(n+1))+1`
-/

namespace A053845.P10703821846103765815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A089228 (n + 1)).toNat + 1

end

end A053845.P10703821846103765815

/-! ## A053845.P16682013934508451025

`A014284(A089228(n+1)+1)`
-/

namespace A053845.P16682013934508451025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (A089228 (n + 1) + 1).toNat

end

end A053845.P16682013934508451025

/-! ## A053845.P13647688615847997465

`A262392(A089228(n+1))-A036453(n+2)`
-/

namespace A053845.P13647688615847997465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (A089228 (n + 1)).toNat - A036453 (n + 2)

end

end A053845.P13647688615847997465

/-! ## A053845.P1594534184971695114

`A262392(A089228(n+1))-A020639(2*(n+1))`
-/

namespace A053845.P1594534184971695114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (A089228 (n + 1)).toNat - A020639 (2 * (n + 1))

end

end A053845.P1594534184971695114

/-! ## A053845.P1683804617238638863

`A262392(A089228(n+1))-A000040(A014963(6*(n+1)))`
-/

namespace A053845.P1683804617238638863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (A089228 (n + 1)).toNat - A000040 (A014963 (6 * (n + 1))).toNat

end

end A053845.P1683804617238638863

/-! ## A053845.P17157617906426504710

`A262392(A089228(n+1))-A007610(A013916(n+1))`
-/

namespace A053845.P17157617906426504710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (A089228 (n + 1)).toNat - A007610 (A013916 (n + 1)).toNat

end

end A053845.P17157617906426504710

/-! ## A053845.P12930022650692581292

`A202301(A089228(n+1))`
-/

namespace A053845.P12930022650692581292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (A089228 (n + 1)).toNat

end

end A053845.P12930022650692581292

/-! ## A053845.P1084753249417240064

`∩[A014284(n+1), A202301(n+1)]`
-/

namespace A053845.P1084753249417240064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053845.P1084753249417240064

/-! ## A053845.P8600834053742097558

`A243917(A006512(n+1))+A237589(A089228(n+1))`
-/

namespace A053845.P8600834053742097558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (A006512 (n + 1)).toNat + A237589 (A089228 (n + 1)).toNat

end

end A053845.P8600834053742097558

/-! ## A053845.P14106501310401443669

`p?[∑[p?[comp[n²]]]+1]`
-/

namespace A053845.P14106501310401443669
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053845.P14106501310401443669

/-!
# A053846: Number of n X n matrices over GF(3) of order dividing 2 (i.e., number of solutions of X^2=I in GL(n,3)).

The programs for A053846, there is no canonical definition to state claims against.
-/

/-! ## A053846.P8303131110820266966

`A297892(∑[n]+n)`
-/

namespace A053846.P8303131110820266966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297892 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A053846.P8303131110820266966

/-! ## A053846.P1724460052214432148

`record[char[∑[n-1]]*A297892(n)]`
-/

namespace A053846.P1724460052214432148
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053846.P1724460052214432148

/-! ## A053846.P15961881425345138109

`record[A297892(eq[1, A127244(n)])]`
-/

namespace A053846.P15961881425345138109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297892 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053846.P15961881425345138109

/-!
# A053850: Odd numbers divisible by a square > 1.

The programs for A053850, the canonical program `A053850.P12600137398159799687` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053850 has offset 1).

The definition of A053850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053850.P18349754096326260956

`A258211(n+1)/2`
-/

namespace A053850.P18349754096326260956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258211 (n + 1) : ℚ) / 2

end

end A053850.P18349754096326260956

namespace A053850

/-- `A258211(n+1)/2` -/
def P18349754096326260956.Spec : Prop :=
  ∀ n, P18349754096326260956.a n = (A053850 (n + 1) : ℚ)

end A053850

/-! ## A053850.P7855387566515904705

`∪[A275196(n+1), A360769(n+1)]`
-/

namespace A053850.P7855387566515904705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053850.P7855387566515904705

namespace A053850

/-- `∪[A275196(n+1), A360769(n+1)]` -/
def P7855387566515904705.Spec : Prop :=
  ∀ n, (P7855387566515904705.a n : ℤ) = A053850 (n + 1)

end A053850

/-! ## A053850.P12600137398159799687

`A013929(eq[1, A013929(n+1)%2]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053850

/-- `A013929(eq[1, A013929(n+1)%2]+1)` -/
def P12600137398159799687.Spec : Prop :=
  ∀ n, P12600137398159799687.a n = A053850 (n + 1)

theorem P12600137398159799687.correct : P12600137398159799687.Spec := by
  intro n
  simp only [A053850, Nat.add_sub_cancel]

end A053850

/-! ## A053850.P13502747643832249639

`∩[2*n+1, A013929(n+1)]`
-/

namespace A053850.P13502747643832249639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053850.P13502747643832249639

namespace A053850

/-- `∩[2*n+1, A013929(n+1)]` -/
def P13502747643832249639.Spec : Prop :=
  ∀ n, (P13502747643832249639.a n : ℤ) = A053850 (n + 1)

end A053850

/-! ## A053850.P2454372562669625698

`2*eq[0, A008683(2*n+1)]+1`
-/

namespace A053850.P2454372562669625698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053850.P2454372562669625698

namespace A053850

/-- `2*eq[0, A008683(2*n+1)]+1` -/
def P2454372562669625698.Spec : Prop :=
  ∀ n, (P2454372562669625698.a n : ℤ) = A053850 (n + 1)

end A053850

/-! ## A053850.P10623621392411802433

`2*lt[A007913(2*n+1), n]+1`
-/

namespace A053850.P10623621392411802433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053850.P10623621392411802433

namespace A053850

/-- `2*lt[A007913(2*n+1), n]+1` -/
def P10623621392411802433.Spec : Prop :=
  ∀ n, (P10623621392411802433.a n : ℤ) = A053850 (n + 1)

end A053850

/-! ## A053850.P9243335079076998904

`2*lt[A007947(2*n+1), n]+1`
-/

namespace A053850.P9243335079076998904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053850.P9243335079076998904

namespace A053850

/-- `2*lt[A007947(2*n+1), n]+1` -/
def P9243335079076998904.Spec : Prop :=
  ∀ n, (P9243335079076998904.a n : ℤ) = A053850 (n + 1)

end A053850

/-! ## A053850.P2170943239865346448

`record[lcm(2, A319927(n+1))/2]`
-/

namespace A053850.P2170943239865346448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A319927 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053850.P2170943239865346448

namespace A053850

/-- `record[lcm(2, A319927(n+1))/2]` -/
def P2170943239865346448.Spec : Prop :=
  ∀ n, P2170943239865346448.a n = (A053850 (n + 1) : ℚ)

end A053850

/-! ## A053850.P10193988868106609520

`filter[A319927(n+1), A353569(#)]`
-/

namespace A053850.P10193988868106609520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A053850.P10193988868106609520

namespace A053850

/-- `filter[A319927(n+1), A353569(#)]` -/
def P10193988868106609520.Spec : Prop :=
  ∀ n, P10193988868106609520.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P1455059162191524792

`filter[A307579(n+1), A353569(#)]`
-/

namespace A053850.P1455059162191524792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A053850.P1455059162191524792

namespace A053850

/-- `filter[A307579(n+1), A353569(#)]` -/
def P1455059162191524792.Spec : Prop :=
  ∀ n, P1455059162191524792.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P13930056743177331443

`filter[A274720(n+1), A087049(#)]`
-/

namespace A053850.P13930056743177331443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A053850.P13930056743177331443

namespace A053850

/-- `filter[A274720(n+1), A087049(#)]` -/
def P13930056743177331443.Spec : Prop :=
  ∀ n, P13930056743177331443.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P11173958595215884613

`filter[A274720(n+1), A353569(#)]`
-/

namespace A053850.P11173958595215884613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A053850.P11173958595215884613

namespace A053850

/-- `filter[A274720(n+1), A353569(#)]` -/
def P11173958595215884613.Spec : Prop :=
  ∀ n, P11173958595215884613.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P10533465158414654210

`filter[A274720(n+1), A353626(#)]`
-/

namespace A053850.P10533465158414654210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A053850.P10533465158414654210

namespace A053850

/-- `filter[A274720(n+1), A353626(#)]` -/
def P10533465158414654210.Spec : Prop :=
  ∀ n, P10533465158414654210.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P17935164951802729612

`filter[A038838(n+1), A353569(#)]`
-/

namespace A053850.P17935164951802729612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A053850.P17935164951802729612

namespace A053850

/-- `filter[A038838(n+1), A353569(#)]` -/
def P17935164951802729612.Spec : Prop :=
  ∀ n, P17935164951802729612.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P2562184621491934707

`filter[A139392(n+1), A087049(#)]`
-/

namespace A053850.P2562184621491934707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A053850.P2562184621491934707

namespace A053850

/-- `filter[A139392(n+1), A087049(#)]` -/
def P2562184621491934707.Spec : Prop :=
  ∀ n, P2562184621491934707.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P13681787214196064978

`filter[A139392(n+1), A353569(#)]`
-/

namespace A053850.P13681787214196064978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A053850.P13681787214196064978

namespace A053850

/-- `filter[A139392(n+1), A353569(#)]` -/
def P13681787214196064978.Spec : Prop :=
  ∀ n, P13681787214196064978.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P9608092189600498493

`filter[A139392(n+1), A353626(#)]`
-/

namespace A053850.P9608092189600498493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A053850.P9608092189600498493

namespace A053850

/-- `filter[A139392(n+1), A353626(#)]` -/
def P9608092189600498493.Spec : Prop :=
  ∀ n, P9608092189600498493.a n = A053850 (n + 1)

end A053850

/-! ## A053850.P14262935025087257952

`∩[A038838(n+1), A139392(n+1)]`
-/

namespace A053850.P14262935025087257952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053850.P14262935025087257952

namespace A053850

/-- `∩[A038838(n+1), A139392(n+1)]` -/
def P14262935025087257952.Spec : Prop :=
  ∀ n, (P14262935025087257952.a n : ℤ) = A053850 (n + 1)

end A053850

/-!
# A053854: Number of n X n matrices over GF(3) of order dividing 9, i.e., the number of solutions to X^9=I in GL(n,3).

The programs for A053854, there is no canonical definition to state claims against.
-/

/-! ## A053854.P352531098855866186

`A132027(3^n)²`
-/

namespace A053854.P352531098855866186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132027 (3 ^ n) ^ 2

end

end A053854.P352531098855866186

/-! ## A053854.P5429013388848106676

`∏[A000290(3^n)]`
-/

namespace A053854.P5429013388848106676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053854.P5429013388848106676

/-! ## A053854.P2055957175811539698

`3^∑[A001222(4^n)]`
-/

namespace A053854.P2055957175811539698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 ^ n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A053854.P2055957175811539698

/-! ## A053854.P1166750080790223603

`A017984(3*n)^A134853(n+1)`
-/

namespace A053854.P1166750080790223603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017984 (3 * n) : ℚ) ^ (A134853 (n + 1) : ℤ)

end

end A053854.P1166750080790223603

/-! ## A053854.P11110403958054694442

`A000244(n)^A001227(A000244(n))`
-/

namespace A053854.P11110403958054694442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) ^ (A001227 (A000244 n).toNat : ℤ)

end

end A053854.P11110403958054694442

/-!
# A053858: Squarefree even composite numbers with an odd number of prime factors.

The programs for A053858, the canonical program `A053858.P11786584042857971729` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053858 has offset 1).

The definition of A053858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053858.P15705826426086475321

`2*(lt[A008683(2*(n+2)), 0]+2)`
-/

namespace A053858.P15705826426086475321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A053858.P15705826426086475321

namespace A053858

/-- `2*(lt[A008683(2*(n+2)), 0]+2)` -/
def P15705826426086475321.Spec : Prop :=
  ∀ n, (P15705826426086475321.a n : ℤ) = A053858 (n + 1)

end A053858

/-! ## A053858.P18112910698991403552

`4*eq[1, A008683(abs(2-n)+n+1)]-2`
-/

namespace A053858.P18112910698991403552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (|2 - (n : ℤ)| + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A053858.P18112910698991403552

namespace A053858

/-- `4*eq[1, A008683(abs(2-n)+n+1)]-2` -/
def P18112910698991403552.Spec : Prop :=
  ∀ n, P18112910698991403552.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P18237338627831106621

`4*eq[A000041(a(n-2)), A008683(n+1)]/2+2` with `a(0)=0, a(1)=2`
-/

namespace A053858.P18237338627831106621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000041 (f1 (n - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2) + 2

end

end A053858.P18237338627831106621

namespace A053858

/-- `4*eq[A000041(a(n-2)), A008683(n+1)]/2+2` -/
def P18237338627831106621.Spec : Prop :=
  ∀ n, P18237338627831106621.a n = (A053858 (n + 1) : ℚ)

end A053858

/-! ## A053858.P11786584042857971729

`2*A056913(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053858

/-- `2*A056913(n+2)` -/
def P11786584042857971729.Spec : Prop :=
  ∀ n, P11786584042857971729.a n = A053858 (n + 1)

theorem P11786584042857971729.correct : P11786584042857971729.Spec := by
  intro n
  simp only [A053858, Nat.add_sub_cancel]

end A053858

/-! ## A053858.P13027970557154661303

`A056913(n+2)+A056913((n+1)%A056913(n+2)+1)`
-/

namespace A053858.P13027970557154661303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 2) + A056913 (Int.tmod (n + 1 : ℤ) (A056913 (n + 2)) + 1).toNat

end

end A053858.P13027970557154661303

namespace A053858

/-- `A056913(n+2)+A056913((n+1)%A056913(n+2)+1)` -/
def P13027970557154661303.Spec : Prop :=
  ∀ n, P13027970557154661303.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P2651721337172398716

`filter[A392009(n+1), A066829(#)]`
-/

namespace A053858.P2651721337172398716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A053858.P2651721337172398716

namespace A053858

/-- `filter[A392009(n+1), A066829(#)]` -/
def P2651721337172398716.Spec : Prop :=
  ∀ n, P2651721337172398716.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P2140199892663099314

`filter[A392009(n+1), A356163(#)]`
-/

namespace A053858.P2140199892663099314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A053858.P2140199892663099314

namespace A053858

/-- `filter[A392009(n+1), A356163(#)]` -/
def P2140199892663099314.Spec : Prop :=
  ∀ n, P2140199892663099314.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P16410815550273134693

`filter[A392009(n+1), A359158(#)]`
-/

namespace A053858.P16410815550273134693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A053858.P16410815550273134693

namespace A053858

/-- `filter[A392009(n+1), A359158(#)]` -/
def P16410815550273134693.Spec : Prop :=
  ∀ n, P16410815550273134693.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P6887875748398872589

`filter[A392009(n+1), A359372(#)]`
-/

namespace A053858.P6887875748398872589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A053858.P6887875748398872589

namespace A053858

/-- `filter[A392009(n+1), A359372(#)]` -/
def P6887875748398872589.Spec : Prop :=
  ∀ n, P6887875748398872589.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P6885259461716105255

`filter[A392009(n+1), A359770(#)]`
-/

namespace A053858.P6885259461716105255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A053858.P6885259461716105255

namespace A053858

/-- `filter[A392009(n+1), A359770(#)]` -/
def P6885259461716105255.Spec : Prop :=
  ∀ n, P6885259461716105255.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P3611880182272593121

`filter[A392009(n+1), A359774(#)]`
-/

namespace A053858.P3611880182272593121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A053858.P3611880182272593121

namespace A053858

/-- `filter[A392009(n+1), A359774(#)]` -/
def P3611880182272593121.Spec : Prop :=
  ∀ n, P3611880182272593121.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P11080716742385087804

`filter[A392009(n+1), A359816(#)]`
-/

namespace A053858.P11080716742385087804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A053858.P11080716742385087804

namespace A053858

/-- `filter[A392009(n+1), A359816(#)]` -/
def P11080716742385087804.Spec : Prop :=
  ∀ n, P11080716742385087804.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P5939632498017068180

`filter[A392009(n+1), A374130(#)]`
-/

namespace A053858.P5939632498017068180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A053858.P5939632498017068180

namespace A053858

/-- `filter[A392009(n+1), A374130(#)]` -/
def P5939632498017068180.Spec : Prop :=
  ∀ n, P5939632498017068180.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P5494892017208058917

`2*A030229(A220968(n+2))`
-/

namespace A053858.P5494892017208058917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030229 (A220968 (n + 2)).toNat

end

end A053858.P5494892017208058917

namespace A053858

/-- `2*A030229(A220968(n+2))` -/
def P5494892017208058917.Spec : Prop :=
  ∀ n, P5494892017208058917.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P15833286432346898779

`filter[A392009(n+1), A252233(#)]`
-/

namespace A053858.P15833286432346898779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A053858.P15833286432346898779

namespace A053858

/-- `filter[A392009(n+1), A252233(#)]` -/
def P15833286432346898779.Spec : Prop :=
  ∀ n, P15833286432346898779.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P7650295958075853905

`filter[A392009(n+1), A353556(#)]`
-/

namespace A053858.P7650295958075853905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A053858.P7650295958075853905

namespace A053858

/-- `filter[A392009(n+1), A353556(#)]` -/
def P7650295958075853905.Spec : Prop :=
  ∀ n, P7650295958075853905.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P11488255583591104406

`filter[A392009(n+1), A353674(#)]`
-/

namespace A053858.P11488255583591104406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A053858.P11488255583591104406

namespace A053858

/-- `filter[A392009(n+1), A353674(#)]` -/
def P11488255583591104406.Spec : Prop :=
  ∀ n, P11488255583591104406.a n = A053858 (n + 1)

end A053858

/-! ## A053858.P10233819053789534636

`lt[A008683(n+3)^n, 0]+3`
-/

namespace A053858.P10233819053789534636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A053858.P10233819053789534636

namespace A053858

/-- `lt[A008683(n+3)^n, 0]+3` -/
def P10233819053789534636.Spec : Prop :=
  ∀ n, (P10233819053789534636.a n : ℤ) = A053858 (n + 1)

end A053858

/-! ## A053858.P13093634382884669438

`filter[A039956(n+2), A066829(#)]`
-/

namespace A053858.P13093634382884669438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A053858.P13093634382884669438

namespace A053858

/-- `filter[A039956(n+2), A066829(#)]` -/
def P13093634382884669438.Spec : Prop :=
  ∀ n, P13093634382884669438.a n = A053858 (n + 1)

end A053858

/-!
# A053863: Number of n X n matrices over GF(4) of order dividing 8 (i.e., number of solutions of X^8=I in GL(n,4)).

The programs for A053863, there is no canonical definition to state claims against.
-/

/-! ## A053863.P13110801706740821216

`∩[4^n, n²]^(n+1)`
-/

namespace A053863.P13110801706740821216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ (n + 1)

end

end A053863.P13110801706740821216

/-! ## A053863.P18313612414751568214

`4^n^A000005(5^n)`
-/

namespace A053863.P18313612414751568214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) ^ (A000005 (5 ^ n) : ℤ)

end

end A053863.P18313612414751568214

/-! ## A053863.P5551760993991339137

`record[2^A001222((n+3)²)]^n`
-/

namespace A053863.P5551760993991339137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 ((n + 3) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A053863.P5551760993991339137

/-! ## A053863.P3554251510954217632

`∏[A370565(ceil(2^(2*n-1)))²]`
-/

namespace A053863.P3554251510954217632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370565 ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053863.P3554251510954217632

/-!
# A053864: A second-order generalization of the Mobius function of n.

The programs for A053864, the canonical program `A053864.P17726123655565789623` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053864 has offset 1).

The definition of A053864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053864.P17726123655565789623

`∏{d}[n+1, A189021(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053864

/-- `∏{d}[n+1, A189021(#)]` -/
def P17726123655565789623.Spec : Prop :=
  ∀ n, P17726123655565789623.a n = A053864 (n + 1)

theorem P17726123655565789623.correct : P17726123655565789623.Spec := by
  intro n
  simp only [A053864, Nat.add_sub_cancel]

end A053864

/-! ## A053864.P10155247346654758980

`A008683((n+1)/∏{p}[n+1, #])^∏{e}[n+1, #+1]`
-/

namespace A053864.P10155247346654758980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A053864.P10155247346654758980

namespace A053864

/-- `A008683((n+1)/∏{p}[n+1, #])^∏{e}[n+1, #+1]` -/
def P10155247346654758980.Spec : Prop :=
  ∀ n, P10155247346654758980.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P6215692256271081155

`A189021(n+1)^A000005(n+1)`
-/

namespace A053864.P6215692256271081155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189021 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A053864.P6215692256271081155

namespace A053864

/-- `A189021(n+1)^A000005(n+1)` -/
def P6215692256271081155.Spec : Prop :=
  ∀ n, P6215692256271081155.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P966866474094018615

`A189021(n+1)^A048105(n+1)`
-/

namespace A053864.P966866474094018615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189021 (n + 1) : ℚ) ^ (A048105 (n + 1) : ℤ)

end

end A053864.P966866474094018615

namespace A053864

/-- `A189021(n+1)^A048105(n+1)` -/
def P966866474094018615.Spec : Prop :=
  ∀ n, P966866474094018615.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P4479906291764022560

`and(A158387(n+1), A189021(n+1))`
-/

namespace A053864.P4479906291764022560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158387 (n + 1)) (A189021 (n + 1))

end

end A053864.P4479906291764022560

namespace A053864

/-- `and(A158387(n+1), A189021(n+1))` -/
def P4479906291764022560.Spec : Prop :=
  ∀ n, P4479906291764022560.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P17179144899413273993

`A008683(A003557(n+1))^A000005(n+1)`
-/

namespace A053864.P17179144899413273993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A003557 (n + 1)).toNat : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A053864.P17179144899413273993

namespace A053864

/-- `A008683(A003557(n+1))^A000005(n+1)` -/
def P17179144899413273993.Spec : Prop :=
  ∀ n, P17179144899413273993.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P1791428943814061185

`A008683(A003557(n+1))^A048105(n+1)`
-/

namespace A053864.P1791428943814061185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A003557 (n + 1)).toNat : ℚ) ^ (A048105 (n + 1) : ℤ)

end

end A053864.P1791428943814061185

namespace A053864

/-- `A008683(A003557(n+1))^A048105(n+1)` -/
def P1791428943814061185.Spec : Prop :=
  ∀ n, P1791428943814061185.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P3965674007654580679

`A008683(A003557(n+1))^A295878(n+1)`
-/

namespace A053864.P3965674007654580679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A003557 (n + 1)).toNat : ℚ) ^ (A295878 (n + 1) : ℤ)

end

end A053864.P3965674007654580679

namespace A053864

/-- `A008683(A003557(n+1))^A295878(n+1)` -/
def P3965674007654580679.Spec : Prop :=
  ∀ n, P3965674007654580679.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P12831200375649413835

`A008683(A019554(n+1))^∏{e}[n+1, A000040(#)]`
-/

namespace A053864.P12831200375649413835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A019554 (n + 1)).toNat : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p) : ℤ)

end

end A053864.P12831200375649413835

namespace A053864

/-- `A008683(A019554(n+1))^∏{e}[n+1, A000040(#)]` -/
def P12831200375649413835.Spec : Prop :=
  ∀ n, P12831200375649413835.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P14775802016976571208

`A008683(A019554(n+1))^∏{e}[n+1, A095285(#)]`
-/

namespace A053864.P14775802016976571208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A019554 (n + 1)).toNat : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p) : ℤ)

end

end A053864.P14775802016976571208

namespace A053864

/-- `A008683(A019554(n+1))^∏{e}[n+1, A095285(#)]` -/
def P14775802016976571208.Spec : Prop :=
  ∀ n, P14775802016976571208.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P853802165968335068

`A008683(A019554(n+1))^∏{e}[n+1, A127052(#)]`
-/

namespace A053864.P853802165968335068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A019554 (n + 1)).toNat : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p) : ℤ)

end

end A053864.P853802165968335068

namespace A053864

/-- `A008683(A019554(n+1))^∏{e}[n+1, A127052(#)]` -/
def P853802165968335068.Spec : Prop :=
  ∀ n, P853802165968335068.a n = (A053864 (n + 1) : ℚ)

end A053864

/-! ## A053864.P5861759795420822103

`A212793(n+1)+A271102(n+1)-A271102(n+1)²`
-/

namespace A053864.P5861759795420822103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) + (A271102 (n + 1) - A271102 (n + 1) ^ 2)

end

end A053864.P5861759795420822103

namespace A053864

/-- `A212793(n+1)+A271102(n+1)-A271102(n+1)²` -/
def P5861759795420822103.Spec : Prop :=
  ∀ n, P5861759795420822103.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P17619056598702058142

`and(A189021(n+1), A189021(A002033(n)+2))`
-/

namespace A053864.P17619056598702058142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189021 (n + 1)) (A189021 (A002033 n + 2).toNat)

end

end A053864.P17619056598702058142

namespace A053864

/-- `and(A189021(n+1), A189021(A002033(n)+2))` -/
def P17619056598702058142.Spec : Prop :=
  ∀ n, P17619056598702058142.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P2482666798523435686

`A053865(A355264(n+1))`
-/

namespace A053864.P2482666798523435686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (A355264 (n + 1)).toNat

end

end A053864.P2482666798523435686

namespace A053864

/-- `A053865(A355264(n+1))` -/
def P2482666798523435686.Spec : Prop :=
  ∀ n, P2482666798523435686.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P9812661786311806659

`A053865(A102631(n+1))`
-/

namespace A053864.P9812661786311806659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (A102631 (n + 1)).toNat

end

end A053864.P9812661786311806659

namespace A053864

/-- `A053865(A102631(n+1))` -/
def P9812661786311806659.Spec : Prop :=
  ∀ n, P9812661786311806659.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P6772048657122167476

`A053981(A278254(n+1))`
-/

namespace A053864.P6772048657122167476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A278254 (n + 1)).toNat

end

end A053864.P6772048657122167476

namespace A053864

/-- `A053981(A278254(n+1))` -/
def P6772048657122167476.Spec : Prop :=
  ∀ n, P6772048657122167476.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P454935606369438536

`A053981(A103390(n+2))`
-/

namespace A053864.P454935606369438536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A103390 (n + 2)).toNat

end

end A053864.P454935606369438536

namespace A053864

/-- `A053981(A103390(n+2))` -/
def P454935606369438536.Spec : Prop :=
  ∀ n, P454935606369438536.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P6461335170768813776

`A053981((n+1)²)`
-/

namespace A053864.P6461335170768813776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 ((n + 1) ^ 2)

end

end A053864.P6461335170768813776

namespace A053864

/-- `A053981((n+1)²)` -/
def P6461335170768813776.Spec : Prop :=
  ∀ n, P6461335170768813776.a n = A053864 (n + 1)

end A053864

/-! ## A053864.P7692018539530678056

`A053865(A064549(n+1))`
-/

namespace A053864.P7692018539530678056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (A064549 (n + 1)).toNat

end

end A053864.P7692018539530678056

namespace A053864

/-- `A053865(A064549(n+1))` -/
def P7692018539530678056.Spec : Prop :=
  ∀ n, P7692018539530678056.a n = A053864 (n + 1)

end A053864

/-!
# A053865: A third-order generalization of the Mobius function of n.

The programs for A053865, the canonical program `A053865.P16031829855945893776` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053865 has offset 1).

The definition of A053865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053865.P16031829855945893776

`A053864(A003557(n+1)*A055231(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053865

/-- `A053864(A003557(n+1)*A055231(n+1))` -/
def P16031829855945893776.Spec : Prop :=
  ∀ n, P16031829855945893776.a n = A053865 (n + 1)

theorem P16031829855945893776.correct : P16031829855945893776.Spec := by
  intro n
  simp only [A053865, Nat.add_sub_cancel]

end A053865

/-! ## A053865.P10550397119888962532

`A307445(A052410(n+1))*A307445(n+1)`
-/

namespace A053865.P10550397119888962532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A052410 (n + 1)).toNat * A307445 (n + 1)

end

end A053865.P10550397119888962532

namespace A053865

/-- `A307445(A052410(n+1))*A307445(n+1)` -/
def P10550397119888962532.Spec : Prop :=
  ∀ n, P10550397119888962532.a n = A053865 (n + 1)

end A053865

/-! ## A053865.P14479172778169894406

`A008683(A000188(n+1))^A034836(n+1)`
-/

namespace A053865.P14479172778169894406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A000188 (n + 1)).toNat : ℚ) ^ (A034836 (n + 1) : ℤ)

end

end A053865.P14479172778169894406

namespace A053865

/-- `A008683(A000188(n+1))^A034836(n+1)` -/
def P14479172778169894406.Spec : Prop :=
  ∀ n, P14479172778169894406.a n = (A053865 (n + 1) : ℚ)

end A053865

/-! ## A053865.P14495742593941413331

`A008683(A062378(n+1))^A008480(n+1)`
-/

namespace A053865.P14495742593941413331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A062378 (n + 1)).toNat : ℚ) ^ (A008480 (n + 1) : ℤ)

end

end A053865.P14495742593941413331

namespace A053865

/-- `A008683(A062378(n+1))^A008480(n+1)` -/
def P14495742593941413331.Spec : Prop :=
  ∀ n, P14495742593941413331.a n = (A053865 (n + 1) : ℚ)

end A053865

/-! ## A053865.P10699170874076984814

`A189022(n+1)^A026741(A048105(n+1))`
-/

namespace A053865.P10699170874076984814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189022 (n + 1) : ℚ) ^ (A026741 (A048105 (n + 1)).toNat : ℤ)

end

end A053865.P10699170874076984814

namespace A053865

/-- `A189022(n+1)^A026741(A048105(n+1))` -/
def P10699170874076984814.Spec : Prop :=
  ∀ n, P10699170874076984814.a n = (A053865 (n + 1) : ℚ)

end A053865

/-! ## A053865.P5192280270743824284

`A007428(n+1)^∏{p}[A007428(n+1), A189215(#+1)]`
-/

namespace A053865.P5192280270743824284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007428 (n + 1) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A189215 (p + 1) : ℤ)

end

end A053865.P5192280270743824284

namespace A053865

/-- `A007428(n+1)^∏{p}[A007428(n+1), A189215(#+1)]` -/
def P5192280270743824284.Spec : Prop :=
  ∀ n, P5192280270743824284.a n = (A053865 (n + 1) : ℚ)

end A053865

/-! ## A053865.P9603129030398083992

`A007428(n+1)^A143433(A007428(n+1)²)`
-/

namespace A053865.P9603129030398083992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007428 (n + 1) : ℚ) ^ (A143433 (A007428 (n + 1) ^ 2).toNat : ℤ)

end

end A053865.P9603129030398083992

namespace A053865

/-- `A007428(n+1)^A143433(A007428(n+1)²)` -/
def P9603129030398083992.Spec : Prop :=
  ∀ n, P9603129030398083992.a n = (A053865 (n + 1) : ℚ)

end A053865

/-! ## A053865.P8454727929456415016

`A053981(A355264(n+1))`
-/

namespace A053865.P8454727929456415016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A355264 (n + 1)).toNat

end

end A053865.P8454727929456415016

namespace A053865

/-- `A053981(A355264(n+1))` -/
def P8454727929456415016.Spec : Prop :=
  ∀ n, P8454727929456415016.a n = A053865 (n + 1)

end A053865

/-! ## A053865.P18445027095933395443

`A189022(n+1)^A330953(A001222((n+1)²)+1)`
-/

namespace A053865.P18445027095933395443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189022 (n + 1) : ℚ) ^ (A330953 (A001222 ((n + 1) ^ 2) + 1).toNat : ℤ)

end

end A053865.P18445027095933395443

namespace A053865

/-- `A189022(n+1)^A330953(A001222((n+1)²)+1)` -/
def P18445027095933395443.Spec : Prop :=
  ∀ n, P18445027095933395443.a n = (A053865 (n + 1) : ℚ)

end A053865

/-! ## A053865.P6096415073856159210

`A053981(A064549(n+1))`
-/

namespace A053865.P6096415073856159210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A064549 (n + 1)).toNat

end

end A053865.P6096415073856159210

namespace A053865

/-- `A053981(A064549(n+1))` -/
def P6096415073856159210.Spec : Prop :=
  ∀ n, P6096415073856159210.a n = A053865 (n + 1)

end A053865

/-! ## A053865.P3380502607746210254

`A053981(A217579(n+1))`
-/

namespace A053865.P3380502607746210254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A217579 (n + 1)).toNat

end

end A053865.P3380502607746210254

namespace A053865

/-- `A053981(A217579(n+1))` -/
def P3380502607746210254.Spec : Prop :=
  ∀ n, P3380502607746210254.a n = A053865 (n + 1)

end A053865

/-! ## A053865.P1691252453707104465

`A053981(A285109(n+1))`
-/

namespace A053865.P1691252453707104465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A285109 (n + 1)).toNat

end

end A053865.P1691252453707104465

namespace A053865

/-- `A053981(A285109(n+1))` -/
def P1691252453707104465.Spec : Prop :=
  ∀ n, P1691252453707104465.a n = A053865 (n + 1)

end A053865

/-! ## A053865.P10887116267441789951

`A053981((n+1)*A007947(n+1))`
-/

namespace A053865.P10887116267441789951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A053865.P10887116267441789951

namespace A053865

/-- `A053981((n+1)*A007947(n+1))` -/
def P10887116267441789951.Spec : Prop :=
  ∀ n, P10887116267441789951.a n = A053865 (n + 1)

end A053865

/-!
# A053866: Parity of A000203(n), the sum of the divisors of n; a(n) = 1 when n is a square or twice a square, 0 otherwise.

The programs for A053866, the canonical program `A053866.P7754923131584660837` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053866 has offset 1).

The definition of A053866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286357, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053866.P7754923131584660837

`A063524(A286357(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053866

/-- `A063524(A286357(n+1))` -/
def P7754923131584660837.Spec : Prop :=
  ∀ n, P7754923131584660837.a n = A053866 (n + 1)

theorem P7754923131584660837.correct : P7754923131584660837.Spec := by
  intro n
  simp only [A053866, Nat.add_sub_cancel]

end A053866

/-! ## A053866.P8872729002374589623

`A063524(A292583(n+1))`
-/

namespace A053866.P8872729002374589623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A292583 (n + 1)).toNat

end

end A053866.P8872729002374589623

namespace A053866

/-- `A063524(A292583(n+1))` -/
def P8872729002374589623.Spec : Prop :=
  ∀ n, P8872729002374589623.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P16078396462457674877

`A000035(A000203(n+1))`
-/

namespace A053866.P16078396462457674877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000203 (n + 1)).toNat

end

end A053866.P16078396462457674877

namespace A053866

/-- `A000035(A000203(n+1))` -/
def P16078396462457674877.Spec : Prop :=
  ∀ n, P16078396462457674877.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P17047817799332157646

`A295896(A156552(n+1))`
-/

namespace A053866.P17047817799332157646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 (A156552 (n + 1)).toNat

end

end A053866.P17047817799332157646

namespace A053866

/-- `A295896(A156552(n+1))` -/
def P17047817799332157646.Spec : Prop :=
  ∀ n, P17047817799332157646.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P16270650575380912533

`∑{d}[n+1, #]%2`
-/

namespace A053866.P16270650575380912533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 2

end

end A053866.P16270650575380912533

namespace A053866

/-- `∑{d}[n+1, #]%2` -/
def P16270650575380912533.Spec : Prop :=
  ∀ n, (P16270650575380912533.a n : ℤ) = A053866 (n + 1)

end A053866

/-! ## A053866.P18245864149520008547

`and(1, ∑{d}[n+1, #])`
-/

namespace A053866.P18245864149520008547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A053866.P18245864149520008547

namespace A053866

/-- `and(1, ∑{d}[n+1, #])` -/
def P18245864149520008547.Spec : Prop :=
  ∀ n, (P18245864149520008547.a n : ℤ) = A053866 (n + 1)

end A053866

/-! ## A053866.P10866964358929262863

`2-gcd(2, ∑{d}[n+1, #])`
-/

namespace A053866.P10866964358929262863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ d ∈ Nat.divisors (f1 n), d) : ℤ)

end

end A053866.P10866964358929262863

namespace A053866

/-- `2-gcd(2, ∑{d}[n+1, #])` -/
def P10866964358929262863.Spec : Prop :=
  ∀ n, P10866964358929262863.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P12828056634771433117

`val(∑{d}[n+1, #]²+1, 2)`
-/

namespace A053866.P12828056634771433117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 1) 2

end

end A053866.P12828056634771433117

namespace A053866

/-- `val(∑{d}[n+1, #]²+1, 2)` -/
def P12828056634771433117.Spec : Prop :=
  ∀ n, (P12828056634771433117.a n : ℤ) = A053866 (n + 1)

end A053866

/-! ## A053866.P8747864811259127857

`or(-2, ∑{d}[n+1, #])+2`
-/

namespace A053866.P8747864811259127857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + 2

end

end A053866.P8747864811259127857

namespace A053866

/-- `or(-2, ∑{d}[n+1, #])+2` -/
def P8747864811259127857.Spec : Prop :=
  ∀ n, P8747864811259127857.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P12329407412319111748

`and(1, -∑{d}[2*n-(n-1), #])`
-/

namespace A053866.P12329407412319111748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ))

end

end A053866.P12329407412319111748

namespace A053866

/-- `and(1, -∑{d}[2*n-(n-1), #])` -/
def P12329407412319111748.Spec : Prop :=
  ∀ n, P12329407412319111748.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P11173282337393430058

`and(1, ∑{d}[2*n-(n-1), #]²)`
-/

namespace A053866.P11173282337393430058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2)

end

end A053866.P11173282337393430058

namespace A053866

/-- `and(1, ∑{d}[2*n-(n-1), #]²)` -/
def P11173282337393430058.Spec : Prop :=
  ∀ n, (P11173282337393430058.a n : ℤ) = A053866 (n + 1)

end A053866

/-! ## A053866.P13278276720815864940

`A093709(n+1)`
-/

namespace A053866.P13278276720815864940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (n + 1)

end

end A053866.P13278276720815864940

namespace A053866

/-- `A093709(n+1)` -/
def P13278276720815864940.Spec : Prop :=
  ∀ n, P13278276720815864940.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P8545310513537719913

`A208856(n)%2`
-/

namespace A053866.P8545310513537719913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208856 n) 2

end

end A053866.P8545310513537719913

namespace A053866

/-- `A208856(n)%2` -/
def P8545310513537719913.Spec : Prop :=
  ∀ n, P8545310513537719913.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P4516411766457289013

`abs(A143259(n+1))`
-/

namespace A053866.P4516411766457289013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143259 (n + 1)|

end

end A053866.P4516411766457289013

namespace A053866

/-- `abs(A143259(n+1))` -/
def P4516411766457289013.Spec : Prop :=
  ∀ n, P4516411766457289013.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P10761665423410137245

`abs(A214509(n+1))`
-/

namespace A053866.P10761665423410137245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214509 (n + 1)|

end

end A053866.P10761665423410137245

namespace A053866

/-- `abs(A214509(n+1))` -/
def P10761665423410137245.Spec : Prop :=
  ∀ n, P10761665423410137245.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P7923008163322281929

`abs(A359818(n+1))`
-/

namespace A053866.P7923008163322281929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359818 (n + 1)|

end

end A053866.P7923008163322281929

namespace A053866

/-- `abs(A359818(n+1))` -/
def P7923008163322281929.Spec : Prop :=
  ∀ n, P7923008163322281929.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P16661273357534728217

`and(1, Δ[A160664(n)])`
-/

namespace A053866.P16661273357534728217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A053866.P16661273357534728217

namespace A053866

/-- `and(1, Δ[A160664(n)])` -/
def P16661273357534728217.Spec : Prop :=
  ∀ n, P16661273357534728217.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P6372356259999895502

`A000593(n+1)%2`
-/

namespace A053866.P6372356259999895502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000593 (n + 1)) 2

end

end A053866.P6372356259999895502

namespace A053866

/-- `A000593(n+1)%2` -/
def P6372356259999895502.Spec : Prop :=
  ∀ n, P6372356259999895502.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P2504913001281081542

`A001157(n+1)%2`
-/

namespace A053866.P2504913001281081542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (n + 1)) 2

end

end A053866.P2504913001281081542

namespace A053866

/-- `A001157(n+1)%2` -/
def P2504913001281081542.Spec : Prop :=
  ∀ n, P2504913001281081542.a n = A053866 (n + 1)

end A053866

/-! ## A053866.P9886576956047890262

`A001158(n+1)%2`
-/

namespace A053866.P9886576956047890262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) 2

end

end A053866.P9886576956047890262

namespace A053866

/-- `A001158(n+1)%2` -/
def P9886576956047890262.Spec : Prop :=
  ∀ n, P9886576956047890262.a n = A053866 (n + 1)

end A053866

/-!
# A053867: Parity of sum of divisors of n less than n.

The programs for A053867, the canonical program `A053867.P10764689696648465644` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053867 has offset 1).

The definition of A053867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053867.P10764689696648465644

`(∑{d}[n+1, #]+n+1)%2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053867

/-- `(∑{d}[n+1, #]+n+1)%2` -/
def P10764689696648465644.Spec : Prop :=
  ∀ n, (P10764689696648465644.a n : ℤ) = A053867 (n + 1)

theorem P10764689696648465644.correct : P10764689696648465644.Spec := by
  intro n
  simp only [A053867, Nat.add_sub_cancel]

end A053867

/-! ## A053867.P12068142014131633932

`and(1, ∑{d}[n+1, #]+n+1)`
-/

namespace A053867.P12068142014131633932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d + (n + 1))

end

end A053867.P12068142014131633932

namespace A053867

/-- `and(1, ∑{d}[n+1, #]+n+1)` -/
def P12068142014131633932.Spec : Prop :=
  ∀ n, (P12068142014131633932.a n : ℤ) = A053867 (n + 1)

theorem P12068142014131633932.correct : P12068142014131633932.Spec := by
  intro n
  simp only [A053867, Nat.add_sub_cancel, A053867.P12068142014131633932.f1, A053867.P12068142014131633932.a, A053867.P10764689696648465644.f1, A053867.P10764689696648465644.a, SequenceMachineLib.memo_apply]
  try simp

end A053867

/-! ## A053867.P619439304857458615

`A001065(n+1)%2`
-/

namespace A053867.P619439304857458615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) 2

end

end A053867.P619439304857458615

namespace A053867

/-- `A001065(n+1)%2` -/
def P619439304857458615.Spec : Prop :=
  ∀ n, P619439304857458615.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P14138880184431313041

`A067558(n+1)%2`
-/

namespace A053867.P14138880184431313041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067558 (n + 1)) 2

end

end A053867.P14138880184431313041

namespace A053867

/-- `A067558(n+1)%2` -/
def P14138880184431313041.Spec : Prop :=
  ∀ n, P14138880184431313041.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P12178509269039509160

`A091570(n+1)%2`
-/

namespace A053867.P12178509269039509160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091570 (n + 1)) 2

end

end A053867.P12178509269039509160

namespace A053867

/-- `A091570(n+1)%2` -/
def P12178509269039509160.Spec : Prop :=
  ∀ n, P12178509269039509160.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P10188766255552205127

`A091954(n+1)%2`
-/

namespace A053867.P10188766255552205127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091954 (n + 1)) 2

end

end A053867.P10188766255552205127

namespace A053867

/-- `A091954(n+1)%2` -/
def P10188766255552205127.Spec : Prop :=
  ∀ n, P10188766255552205127.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P8201543013581181921

`A155085(n+1)%2`
-/

namespace A053867.P8201543013581181921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1)) 2

end

end A053867.P8201543013581181921

namespace A053867

/-- `A155085(n+1)%2` -/
def P8201543013581181921.Spec : Prop :=
  ∀ n, P8201543013581181921.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P9677231648332330354

`A169813(n+1)%2`
-/

namespace A053867.P9677231648332330354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169813 (n + 1)) 2

end

end A053867.P9677231648332330354

namespace A053867

/-- `A169813(n+1)%2` -/
def P9677231648332330354.Spec : Prop :=
  ∀ n, P9677231648332330354.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P12100018358141964699

`A227320(n+1)%2`
-/

namespace A053867.P12100018358141964699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227320 (n + 1)) 2

end

end A053867.P12100018358141964699

namespace A053867

/-- `A227320(n+1)%2` -/
def P12100018358141964699.Spec : Prop :=
  ∀ n, P12100018358141964699.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P5466964502472378846

`A235799(n+1)%2`
-/

namespace A053867.P5466964502472378846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235799 (n + 1)) 2

end

end A053867.P5466964502472378846

namespace A053867

/-- `A235799(n+1)%2` -/
def P5466964502472378846.Spec : Prop :=
  ∀ n, P5466964502472378846.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P5737855918025565157

`A276634(n+1)%2`
-/

namespace A053867.P5737855918025565157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276634 (n + 1)) 2

end

end A053867.P5737855918025565157

namespace A053867

/-- `A276634(n+1)%2` -/
def P5737855918025565157.Spec : Prop :=
  ∀ n, P5737855918025565157.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P3983866205155543773

`A279363(n+1)%2`
-/

namespace A053867.P3983866205155543773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279363 (n + 1)) 2

end

end A053867.P3983866205155543773

namespace A053867

/-- `A279363(n+1)%2` -/
def P3983866205155543773.Spec : Prop :=
  ∀ n, P3983866205155543773.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P12131518540545211868

`A279364(n+1)%2`
-/

namespace A053867.P12131518540545211868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279364 (n + 1)) 2

end

end A053867.P12131518540545211868

namespace A053867

/-- `A279364(n+1)%2` -/
def P12131518540545211868.Spec : Prop :=
  ∀ n, P12131518540545211868.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P9251337010128843130

`A324048(n+1)%2`
-/

namespace A053867.P9251337010128843130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324048 (n + 1)) 2

end

end A053867.P9251337010128843130

namespace A053867

/-- `A324048(n+1)%2` -/
def P9251337010128843130.Spec : Prop :=
  ∀ n, P9251337010128843130.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P10355874133211431251

`A326142(n+1)%2`
-/

namespace A053867.P10355874133211431251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326142 (n + 1)) 2

end

end A053867.P10355874133211431251

namespace A053867

/-- `A326142(n+1)%2` -/
def P10355874133211431251.Spec : Prop :=
  ∀ n, P10355874133211431251.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P312480520567912767

`and(1, A058344(n+1))`
-/

namespace A053867.P312480520567912767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A058344 (n + 1))

end

end A053867.P312480520567912767

namespace A053867

/-- `and(1, A058344(n+1))` -/
def P312480520567912767.Spec : Prop :=
  ∀ n, P312480520567912767.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P4814866683491925147

`and(1, A336646(n+1))`
-/

namespace A053867.P4814866683491925147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A336646 (n + 1))

end

end A053867.P4814866683491925147

namespace A053867

/-- `and(1, A336646(n+1))` -/
def P4814866683491925147.Spec : Prop :=
  ∀ n, P4814866683491925147.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P6886318503602911069

`and(1, A338790(n+1))`
-/

namespace A053867.P6886318503602911069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338790 (n + 1))

end

end A053867.P6886318503602911069

namespace A053867

/-- `and(1, A338790(n+1))` -/
def P6886318503602911069.Spec : Prop :=
  ∀ n, P6886318503602911069.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P4242971797033614802

`and(1, A352031(n+1))`
-/

namespace A053867.P4242971797033614802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A352031 (n + 1))

end

end A053867.P4242971797033614802

namespace A053867

/-- `and(1, A352031(n+1))` -/
def P4242971797033614802.Spec : Prop :=
  ∀ n, P4242971797033614802.a n = A053867 (n + 1)

end A053867

/-! ## A053867.P7691030580625823216

`and(1, A352033(n+1))`
-/

namespace A053867.P7691030580625823216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A352033 (n + 1))

end

end A053867.P7691030580625823216

namespace A053867

/-- `and(1, A352033(n+1))` -/
def P7691030580625823216.Spec : Prop :=
  ∀ n, P7691030580625823216.a n = A053867 (n + 1)

end A053867

/-!
# A053868: Numbers whose sum of proper divisors is odd.

The programs for A053868, the canonical program `A053868.P14125084353672620264` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053868 has offset 1).

The definition of A053868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053868.P14125084353672620264

`eq[n%2, A053866(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053868

/-- `eq[n%2, A053866(n+1)]+1` -/
def P14125084353672620264.Spec : Prop :=
  ∀ n, (P14125084353672620264.a n : ℤ) = A053868 (n + 1)

theorem P14125084353672620264.correct : P14125084353672620264.Spec := by
  intro n
  simp only [A053868, Nat.add_sub_cancel]

end A053868

/-! ## A053868.P14633632108409414185

`lt[and(1, n-A000203(n+1)), 1]+1`
-/

namespace A053868.P14633632108409414185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053868.P14633632108409414185

namespace A053868

/-- `lt[and(1, n-A000203(n+1)), 1]+1` -/
def P14633632108409414185.Spec : Prop :=
  ∀ n, (P14633632108409414185.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P12493284579026350395

`∪[A088827(n+1), A088828(n+1)]`
-/

namespace A053868.P12493284579026350395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053868.P12493284579026350395

namespace A053868

/-- `∪[A088827(n+1), A088828(n+1)]` -/
def P12493284579026350395.Spec : Prop :=
  ∀ n, (P12493284579026350395.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P15696969615358616296

`∪[A088827(n+1), A374475(n+1)]`
-/

namespace A053868.P15696969615358616296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053868.P15696969615358616296

namespace A053868

/-- `∪[A088827(n+1), A374475(n+1)]` -/
def P15696969615358616296.Spec : Prop :=
  ∀ n, (P15696969615358616296.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P8605548832047524601

`eq[2, A020639(A000203(n+1)+n)]+1`
-/

namespace A053868.P8605548832047524601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P8605548832047524601

namespace A053868

/-- `eq[2, A020639(A000203(n+1)+n)]+1` -/
def P8605548832047524601.Spec : Prop :=
  ∀ n, (P8605548832047524601.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P11478260975124670177

`lt[1, A005117(val(A000203(n+1)+n, 2)+1)]+1`
-/

namespace A053868.P11478260975124670177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.valuation (A000203 (n + 1) + (n : ℤ)).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053868.P11478260975124670177

namespace A053868

/-- `lt[1, A005117(val(A000203(n+1)+n, 2)+1)]+1` -/
def P11478260975124670177.Spec : Prop :=
  ∀ n, (P11478260975124670177.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P13573816641520306896

`eq[1, A053867(n+1)]+1`
-/

namespace A053868.P13573816641520306896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P13573816641520306896

namespace A053868

/-- `eq[1, A053867(n+1)]+1` -/
def P13573816641520306896.Spec : Prop :=
  ∀ n, (P13573816641520306896.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P5529430277537673858

`record[(n+2)*A053867(n+2)]`
-/

namespace A053868.P5529430277537673858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A053867 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053868.P5529430277537673858

namespace A053868

/-- `record[(n+2)*A053867(n+2)]` -/
def P5529430277537673858.Spec : Prop :=
  ∀ n, P5529430277537673858.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P17738338816082479003

`eq[1, val(A091818(n+2), 2)]+2`
-/

namespace A053868.P17738338816082479003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091818 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A053868.P17738338816082479003

namespace A053868

/-- `eq[1, val(A091818(n+2), 2)]+2` -/
def P17738338816082479003.Spec : Prop :=
  ∀ n, (P17738338816082479003.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P5153214867545389781

`eq[1, and(1, A336646(n+1))]+1`
-/

namespace A053868.P5153214867545389781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A336646 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P5153214867545389781

namespace A053868

/-- `eq[1, and(1, A336646(n+1))]+1` -/
def P5153214867545389781.Spec : Prop :=
  ∀ n, (P5153214867545389781.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P1669495688796115656

`filter[A263715(n+2), A053867(#)]`
-/

namespace A053868.P1669495688796115656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P1669495688796115656

namespace A053868

/-- `filter[A263715(n+2), A053867(#)]` -/
def P1669495688796115656.Spec : Prop :=
  ∀ n, P1669495688796115656.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P135806319995635570

`filter[A079298(n+2), A053867(#)]`
-/

namespace A053868.P135806319995635570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P135806319995635570

namespace A053868

/-- `filter[A079298(n+2), A053867(#)]` -/
def P135806319995635570.Spec : Prop :=
  ∀ n, P135806319995635570.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P17998920078052825668

`filter[A047595(n+2), A053867(#)]`
-/

namespace A053868.P17998920078052825668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P17998920078052825668

namespace A053868

/-- `filter[A047595(n+2), A053867(#)]` -/
def P17998920078052825668.Spec : Prop :=
  ∀ n, P17998920078052825668.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P12005758657265389898

`filter[A000401(n+2), A053867(#)]`
-/

namespace A053868.P12005758657265389898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P12005758657265389898

namespace A053868

/-- `filter[A000401(n+2), A053867(#)]` -/
def P12005758657265389898.Spec : Prop :=
  ∀ n, P12005758657265389898.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P12695212214909762473

`filter[A129487(n+1), A053867(#)]`
-/

namespace A053868.P12695212214909762473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P12695212214909762473

namespace A053868

/-- `filter[A129487(n+1), A053867(#)]` -/
def P12695212214909762473.Spec : Prop :=
  ∀ n, P12695212214909762473.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P15257402142440344584

`filter[A230308(n+1), A053867(#)]`
-/

namespace A053868.P15257402142440344584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P15257402142440344584

namespace A053868

/-- `filter[A230308(n+1), A053867(#)]` -/
def P15257402142440344584.Spec : Prop :=
  ∀ n, P15257402142440344584.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P14814030280263421488

`filter[A054027(n+1), A053867(#)]`
-/

namespace A053868.P14814030280263421488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P14814030280263421488

namespace A053868

/-- `filter[A054027(n+1), A053867(#)]` -/
def P14814030280263421488.Spec : Prop :=
  ∀ n, P14814030280263421488.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P4295849069001767517

`filter[A132999(n+1), A053867(#)]`
-/

namespace A053868.P4295849069001767517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A053868.P4295849069001767517

namespace A053868

/-- `filter[A132999(n+1), A053867(#)]` -/
def P4295849069001767517.Spec : Prop :=
  ∀ n, P4295849069001767517.a n = A053868 (n + 1)

end A053868

/-! ## A053868.P7779687634607037372

`filter[n+2, A053867(#)]`
-/

namespace A053868.P7779687634607037372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j) = 1) n)

end

end A053868.P7779687634607037372

namespace A053868

/-- `filter[n+2, A053867(#)]` -/
def P7779687634607037372.Spec : Prop :=
  ∀ n, (P7779687634607037372.a n : ℤ) = A053868 (n + 1)

end A053868

/-! ## A053868.P14148549028856237122

`eq[1, A001065(n+1)%2]+1`
-/

namespace A053868.P14148549028856237122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P14148549028856237122

namespace A053868

/-- `eq[1, A001065(n+1)%2]+1` -/
def P14148549028856237122.Spec : Prop :=
  ∀ n, (P14148549028856237122.a n : ℤ) = A053868 (n + 1)

end A053868

/-!
# A053869: Sum of divisors of n less than n is even.

The programs for A053869, the canonical program `A053869.P10568876053264195` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053869 has offset 1).

The definition of A053869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053869.P229760306598271634

`∪[2*comp[∪[2*n², n²]], Δ[n²]²]`
-/

namespace A053869.P229760306598271634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f6 (n + 1) : ℤ) - (f6 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

end

end A053869.P229760306598271634

namespace A053869

/-- `∪[2*comp[∪[2*n², n²]], Δ[n²]²]` -/
def P229760306598271634.Spec : Prop :=
  ∀ n, (P229760306598271634.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P10568876053264195

`lt[val(A000203(n+1)-n, 2), 1]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053869

/-- `lt[val(A000203(n+1)-n, 2), 1]+1` -/
def P10568876053264195.Spec : Prop :=
  ∀ n, (P10568876053264195.a n : ℤ) = A053869 (n + 1)

theorem P10568876053264195.correct : P10568876053264195.Spec := by
  intro n
  simp only [A053869, Nat.add_sub_cancel]

end A053869

/-! ## A053869.P16140621405957039389

`∪[A088829(n+1), A016754(n)]`
-/

namespace A053869.P16140621405957039389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053869.P16140621405957039389

namespace A053869

/-- `∪[A088829(n+1), A016754(n)]` -/
def P16140621405957039389.Spec : Prop :=
  ∀ n, (P16140621405957039389.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P7751038184835017856

`∪[A088829(n+1), A216780(n+1)]`
-/

namespace A053869.P7751038184835017856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053869.P7751038184835017856

namespace A053869

/-- `∪[A088829(n+1), A216780(n+1)]` -/
def P7751038184835017856.Spec : Prop :=
  ∀ n, (P7751038184835017856.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P12511256123804680472

`eq[A323158(2*(n+1)), A323158(n+1)]+1`
-/

namespace A053869.P12511256123804680472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323158 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053869.P12511256123804680472

namespace A053869

/-- `eq[A323158(2*(n+1)), A323158(n+1)]+1` -/
def P12511256123804680472.Spec : Prop :=
  ∀ n, (P12511256123804680472.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P6065750170531475164

`eq[2, A020639(A155085(n+1))]+1`
-/

namespace A053869.P6065750170531475164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053869.P6065750170531475164

namespace A053869

/-- `eq[2, A020639(A155085(n+1))]+1` -/
def P6065750170531475164.Spec : Prop :=
  ∀ n, (P6065750170531475164.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P9071770966828220425

`eq[1, A053867(n+1)+1]+1`
-/

namespace A053869.P9071770966828220425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053869.P9071770966828220425

namespace A053869

/-- `eq[1, A053867(n+1)+1]+1` -/
def P9071770966828220425.Spec : Prop :=
  ∀ n, (P9071770966828220425.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P11089935275529503077

`eq[A000035(n), A093709(n)]`
-/

namespace A053869.P11089935275529503077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P11089935275529503077

namespace A053869

/-- `eq[A000035(n), A093709(n)]` -/
def P11089935275529503077.Spec : Prop :=
  ∀ n, (P11089935275529503077.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P13386492374823931262

`eq[A091337(n), A093709(n)]`
-/

namespace A053869.P13386492374823931262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P13386492374823931262

namespace A053869

/-- `eq[A091337(n), A093709(n)]` -/
def P13386492374823931262.Spec : Prop :=
  ∀ n, (P13386492374823931262.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P7568985073895500599

`eq[A093709(n), A101455(n)]`
-/

namespace A053869.P7568985073895500599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P7568985073895500599

namespace A053869

/-- `eq[A093709(n), A101455(n)]` -/
def P7568985073895500599.Spec : Prop :=
  ∀ n, (P7568985073895500599.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P17400916699326701729

`eq[A093709(n), A109718(n)]`
-/

namespace A053869.P17400916699326701729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P17400916699326701729

namespace A053869

/-- `eq[A093709(n), A109718(n)]` -/
def P17400916699326701729.Spec : Prop :=
  ∀ n, (P17400916699326701729.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P5563819624424744571

`eq[A093709(n), A109753(n)]`
-/

namespace A053869.P5563819624424744571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P5563819624424744571

namespace A053869

/-- `eq[A093709(n), A109753(n)]` -/
def P5563819624424744571.Spec : Prop :=
  ∀ n, (P5563819624424744571.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P14869156649695281570

`eq[A093709(n), A131734(n)]`
-/

namespace A053869.P14869156649695281570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P14869156649695281570

namespace A053869

/-- `eq[A093709(n), A131734(n)]` -/
def P14869156649695281570.Spec : Prop :=
  ∀ n, (P14869156649695281570.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P1178268076235495790

`eq[A093709(n), A131743(n)]`
-/

namespace A053869.P1178268076235495790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P1178268076235495790

namespace A053869

/-- `eq[A093709(n), A131743(n)]` -/
def P1178268076235495790.Spec : Prop :=
  ∀ n, (P1178268076235495790.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P8772849244513666780

`eq[A093709(n), A135481(n)]`
-/

namespace A053869.P8772849244513666780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P8772849244513666780

namespace A053869

/-- `eq[A093709(n), A135481(n)]` -/
def P8772849244513666780.Spec : Prop :=
  ∀ n, (P8772849244513666780.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P3631492416551883475

`eq[A093709(n), A167545(n)]`
-/

namespace A053869.P3631492416551883475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P3631492416551883475

namespace A053869

/-- `eq[A093709(n), A167545(n)]` -/
def P3631492416551883475.Spec : Prop :=
  ∀ n, (P3631492416551883475.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P288265000001343497

`eq[A093709(n), A188510(n)]`
-/

namespace A053869.P288265000001343497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P288265000001343497

namespace A053869

/-- `eq[A093709(n), A188510(n)]` -/
def P288265000001343497.Spec : Prop :=
  ∀ n, (P288265000001343497.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P6777019310926593881

`eq[A214507(n)², A000035(n)]`
-/

namespace A053869.P6777019310926593881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P6777019310926593881

namespace A053869

/-- `eq[A214507(n)², A000035(n)]` -/
def P6777019310926593881.Spec : Prop :=
  ∀ n, (P6777019310926593881.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P1039407766669582110

`eq[A134452(n)², A093709(n)]`
-/

namespace A053869.P1039407766669582110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P1039407766669582110

namespace A053869

/-- `eq[A134452(n)², A093709(n)]` -/
def P1039407766669582110.Spec : Prop :=
  ∀ n, (P1039407766669582110.a n : ℤ) = A053869 (n + 1)

end A053869

/-! ## A053869.P16433176225584240548

`eq[A007814(n+1), A093709(n)]`
-/

namespace A053869.P16433176225584240548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053869.P16433176225584240548

namespace A053869

/-- `eq[A007814(n+1), A093709(n)]` -/
def P16433176225584240548.Spec : Prop :=
  ∀ n, (P16433176225584240548.a n : ℤ) = A053869 (n + 1)

end A053869

/-!
# A053871: a(n) = 2*(n-1)*(a(n-1) + a(n-2)), starting a(0) = 1; a(1) = 0.

The programs for A053871, the canonical program `A053871.P13566102203196455648` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053871 has offset 0).

The definition of A053871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)*(a(n-1)+a(n-2))` (program `A053871.P13566102203196455648`, by `A053871.P13566102203196455648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053871.P13566102203196455648

`2*(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053871

/-- `2*(n-1)*(a(n-1)+a(n-2))` -/
def P13566102203196455648.Spec : Prop :=
  ∀ n, P13566102203196455648.a n = A053871 n

theorem P13566102203196455648.correct : P13566102203196455648.Spec := by
  intro n
  simp only [A053871]

end A053871

/-! ## A053871.P902975043202527785

`A054479(n)/A001147(n)`
-/

namespace A053871.P902975043202527785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054479 n : ℚ) / (A001147 n : ℚ)

end

end A053871.P902975043202527785

namespace A053871

/-- `A054479(n)/A001147(n)` -/
def P902975043202527785.Spec : Prop :=
  ∀ n, P902975043202527785.a n = (A053871 n : ℚ)

end A053871

/-! ## A053871.P12120247564253278514

`A055140(∑[n])`
-/

namespace A053871.P12120247564253278514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055140 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053871.P12120247564253278514

namespace A053871

/-- `A055140(∑[n])` -/
def P12120247564253278514.Spec : Prop :=
  ∀ n, P12120247564253278514.a n = A053871 n

end A053871

/-! ## A053871.P14707983636635133229

`(a(n-1)+a(n-2))*A004275(n)` with `a(0)=1, a(1)=0`
-/

namespace A053871.P14707983636635133229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + a (n - 2)) * A004275 n

end

end A053871.P14707983636635133229

namespace A053871

/-- `(a(n-1)+a(n-2))*A004275(n)` -/
def P14707983636635133229.Spec : Prop :=
  ∀ n, P14707983636635133229.a n = A053871 n

end A053871

/-! ## A053871.P17538649161802047324

`A001147(n)-A370253(n)`
-/

namespace A053871.P17538649161802047324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A370253 n

end

end A053871.P17538649161802047324

namespace A053871

/-- `A001147(n)-A370253(n)` -/
def P17538649161802047324.Spec : Prop :=
  ∀ n, P17538649161802047324.a n = A053871 n

end A053871

/-! ## A053871.P16177634725159225447

`lcm(A023443(n), A055140(A000217(n)))`
-/

namespace A053871.P16177634725159225447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023443 n) (A055140 (A000217 n).toNat)

end

end A053871.P16177634725159225447

namespace A053871

/-- `lcm(A023443(n), A055140(A000217(n)))` -/
def P16177634725159225447.Spec : Prop :=
  ∀ n, (P16177634725159225447.a n : ℤ) = A053871 n

end A053871

/-! ## A053871.P1539187393380181963

`abs(A033999(n)*A055140(A000217(n)))`
-/

namespace A053871.P1539187393380181963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A055140 (A000217 n).toNat|

end

end A053871.P1539187393380181963

namespace A053871

/-- `abs(A033999(n)*A055140(A000217(n)))` -/
def P1539187393380181963.Spec : Prop :=
  ∀ n, P1539187393380181963.a n = A053871 n

end A053871

/-! ## A053871.P3042136221989601979

`A130706(n)!*A055140(A000217(n))`
-/

namespace A053871.P3042136221989601979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A130706 n).toNat : ℤ) * A055140 (A000217 n).toNat

end

end A053871.P3042136221989601979

namespace A053871

/-- `A130706(n)!*A055140(A000217(n))` -/
def P3042136221989601979.Spec : Prop :=
  ∀ n, P3042136221989601979.a n = A053871 n

end A053871

/-! ## A053871.P2145218367177615172

`A098158(A000217(n+1))+A055140(A000217(n))`
-/

namespace A053871.P2145218367177615172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A000217 (n + 1)).toNat + A055140 (A000217 n).toNat

end

end A053871.P2145218367177615172

namespace A053871

/-- `A098158(A000217(n+1))+A055140(A000217(n))` -/
def P2145218367177615172.Spec : Prop :=
  ∀ n, P2145218367177615172.a n = A053871 n

end A053871

/-! ## A053871.P2885608758936299258

`A001222(A007917(n+2))*A055140(A000217(n))`
-/

namespace A053871.P2885608758936299258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007917 (n + 2)).toNat * A055140 (A000217 n).toNat

end

end A053871.P2885608758936299258

namespace A053871

/-- `A001222(A007917(n+2))*A055140(A000217(n))` -/
def P2885608758936299258.Spec : Prop :=
  ∀ n, P2885608758936299258.a n = A053871 n

end A053871

/-!
# A053872: Primes arising in A053782.

The programs for A053872, the canonical program `A053872.P3840221786107793432` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053872 has offset 1).

The definition of A053872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053872.P3840221786107793432

`A053767(A053782(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053872

/-- `A053767(A053782(n+1))` -/
def P3840221786107793432.Spec : Prop :=
  ∀ n, P3840221786107793432.a n = A053872 (n + 1)

theorem P3840221786107793432.correct : P3840221786107793432.Spec := by
  intro n
  simp only [A053872, Nat.add_sub_cancel]

end A053872

/-! ## A053872.P4718552596858637373

`A051349(A053782(n+1)+1)-1`
-/

namespace A053872.P4718552596858637373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A053782 (n + 1) + 1).toNat - 1

end

end A053872.P4718552596858637373

namespace A053872

/-- `A051349(A053782(n+1)+1)-1` -/
def P4718552596858637373.Spec : Prop :=
  ∀ n, P4718552596858637373.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P6480959278052842707

`A260196(n+2)+A051349(A053782(n+1)+1)`
-/

namespace A053872.P6480959278052842707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A051349 (A053782 (n + 1) + 1).toNat

end

end A053872.P6480959278052842707

namespace A053872

/-- `A260196(n+2)+A051349(A053782(n+1)+1)` -/
def P6480959278052842707.Spec : Prop :=
  ∀ n, P6480959278052842707.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P724413134733095794

`p?[A053767(n)]`
-/

namespace A053872.P724413134733095794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P724413134733095794

namespace A053872

/-- `p?[A053767(n)]` -/
def P724413134733095794.Spec : Prop :=
  ∀ n, P724413134733095794.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P15227288118350630162

`p?[A051349(n)-1]`
-/

namespace A053872.P15227288118350630162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P15227288118350630162

namespace A053872

/-- `p?[A051349(n)-1]` -/
def P15227288118350630162.Spec : Prop :=
  ∀ n, P15227288118350630162.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P9642353619431353585

`p?[∑[A002808(n+1)]]`
-/

namespace A053872.P9642353619431353585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P9642353619431353585

namespace A053872

/-- `p?[∑[A002808(n+1)]]` -/
def P9642353619431353585.Spec : Prop :=
  ∀ n, P9642353619431353585.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P16971722504400777259

`p?[∑[A018252(n+2)]]`
-/

namespace A053872.P16971722504400777259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P16971722504400777259

namespace A053872

/-- `p?[∑[A018252(n+2)]]` -/
def P16971722504400777259.Spec : Prop :=
  ∀ n, P16971722504400777259.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P4256834691229031473

`p?[Δ[A023539(n+1)]]`
-/

namespace A053872.P4256834691229031473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P4256834691229031473

namespace A053872

/-- `p?[Δ[A023539(n+1)]]` -/
def P4256834691229031473.Spec : Prop :=
  ∀ n, P4256834691229031473.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P14348354897314528931

`p?[∑[A065090(n+3)]]`
-/

namespace A053872.P14348354897314528931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P14348354897314528931

namespace A053872

/-- `p?[∑[A065090(n+3)]]` -/
def P14348354897314528931.Spec : Prop :=
  ∀ n, P14348354897314528931.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P555049868859468757

`p?[∑[A141468(n+3)]]`
-/

namespace A053872.P555049868859468757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P555049868859468757

namespace A053872

/-- `p?[∑[A141468(n+3)]]` -/
def P555049868859468757.Spec : Prop :=
  ∀ n, P555049868859468757.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P15502394998079220587

`p?[A175967(n+1)-2]`
-/

namespace A053872.P15502394998079220587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P15502394998079220587

namespace A053872

/-- `p?[A175967(n+1)-2]` -/
def P15502394998079220587.Spec : Prop :=
  ∀ n, P15502394998079220587.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P13787662708047294697

`p?[∑[comp[A006530(n+1)]]]`
-/

namespace A053872.P13787662708047294697
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053872.P13787662708047294697

namespace A053872

/-- `p?[∑[comp[A006530(n+1)]]]` -/
def P13787662708047294697.Spec : Prop :=
  ∀ n, (P13787662708047294697.a n : ℤ) = A053872 (n + 1)

end A053872

/-! ## A053872.P8894015871251520259

`p?[∑[comp[A008578(n+1)]]]`
-/

namespace A053872.P8894015871251520259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053872.P8894015871251520259

namespace A053872

/-- `p?[∑[comp[A008578(n+1)]]]` -/
def P8894015871251520259.Spec : Prop :=
  ∀ n, (P8894015871251520259.a n : ℤ) = A053872 (n + 1)

end A053872

/-! ## A053872.P5256698133741446109

`p?[∑[comp[A014963(n+1)]]]`
-/

namespace A053872.P5256698133741446109
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053872.P5256698133741446109

namespace A053872

/-- `p?[∑[comp[A014963(n+1)]]]` -/
def P5256698133741446109.Spec : Prop :=
  ∀ n, (P5256698133741446109.a n : ℤ) = A053872 (n + 1)

end A053872

/-! ## A053872.P13351413969919541531

`p?[∑[comp[A020639(n+1)]]]`
-/

namespace A053872.P13351413969919541531
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053872.P13351413969919541531

namespace A053872

/-- `p?[∑[comp[A020639(n+1)]]]` -/
def P13351413969919541531.Spec : Prop :=
  ∀ n, (P13351413969919541531.a n : ℤ) = A053872 (n + 1)

end A053872

/-! ## A053872.P1483061408287270064

`p?[∑[comp[A025473(n+1)]]]`
-/

namespace A053872.P1483061408287270064
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053872.P1483061408287270064

namespace A053872

/-- `p?[∑[comp[A025473(n+1)]]]` -/
def P1483061408287270064.Spec : Prop :=
  ∀ n, (P1483061408287270064.a n : ℤ) = A053872 (n + 1)

end A053872

/-! ## A053872.P15151345010248478005

`p?[∑[comp[A089026(n+1)]]]`
-/

namespace A053872.P15151345010248478005
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053872.P15151345010248478005

namespace A053872

/-- `p?[∑[comp[A089026(n+1)]]]` -/
def P15151345010248478005.Spec : Prop :=
  ∀ n, (P15151345010248478005.a n : ℤ) = A053872 (n + 1)

end A053872

/-! ## A053872.P2568961354335109710

`p?[∑[A072668(n+1)+1]]`
-/

namespace A053872.P2568961354335109710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P2568961354335109710

namespace A053872

/-- `p?[∑[A072668(n+1)+1]]` -/
def P2568961354335109710.Spec : Prop :=
  ∀ n, P2568961354335109710.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P12148141499156639255

`p?[∑[A129131(2*n+1)]]`
-/

namespace A053872.P12148141499156639255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P12148141499156639255

namespace A053872

/-- `p?[∑[A129131(2*n+1)]]` -/
def P12148141499156639255.Spec : Prop :=
  ∀ n, P12148141499156639255.a n = A053872 (n + 1)

end A053872

/-! ## A053872.P3363954032794586405

`p?[A018252(n)+a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A053872.P3363954032794586405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A018252 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053872.P3363954032794586405

namespace A053872

/-- `p?[A018252(n)+a(n-1)]` -/
def P3363954032794586405.Spec : Prop :=
  ∀ n, P3363954032794586405.a n = A053872 (n + 1)

end A053872

/-!
# A053873: Numbers n such that OEIS sequence A_n contains n.

The programs for A053873, there is no canonical definition to state claims against.
-/

/-! ## A053873.P3022509756805402728

`lt[0, A250221(n+1)]+1`
-/

namespace A053873.P3022509756805402728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053873.P3022509756805402728

/-! ## A053873.P2580207471459101293

`lt[(-1)^n, A250221(A028310(n))]`
-/

namespace A053873.P2580207471459101293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053873.P2580207471459101293

/-!
# A053874: Triangle T(n,k) = number of Boolean functions mapping {0,1}^n to {0,1}^n with image of size k (k = 0...2^n) under action of GL(n,2).

The programs for A053874, there is no canonical definition to state claims against.
-/

/-! ## A053874.P17078156558862964661

`A000030(gcd(A074398(n+1), A292781(n)))`
-/

namespace A053874.P17078156558862964661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.gcd (A074398 (n + 1)) (A292781 n))

end

end A053874.P17078156558862964661

/-! ## A053874.P3398332807822811765

`A183198(A033324(n+1)+A022166(n))`
-/

namespace A053874.P3398332807822811765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183198 (A033324 (n + 1) + A022166 n).toNat

end

end A053874.P3398332807822811765

/-! ## A053874.P184431834377661689

`gcd(A183198(A022166(n)), A204442(n+1))`
-/

namespace A053874.P184431834377661689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183198 (A022166 n).toNat) (A204442 (n + 1))

end

end A053874.P184431834377661689

/-! ## A053874.P1074093010156351394

`∑{p}[A061810(n+1)+A027298(n), A001222(#)]`
-/

namespace A053874.P1074093010156351394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1) + A027298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A053874.P1074093010156351394

/-! ## A053874.P9376504454278266801

`A001221(A157162(2*n+1)+A001248(n+1))`
-/

namespace A053874.P9376504454278266801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A157162 (2 * n + 1) + A001248 (n + 1)).toNat

end

end A053874.P9376504454278266801

/-!
# A053875: Number of elements of order 4 in GL(n,2).

The programs for A053875, there is no canonical definition to state claims against.
-/

/-! ## A053875.P6685933827617655830

`A053718(n+1)-A053722(n+1)`
-/

namespace A053875.P6685933827617655830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053718 (n + 1) - A053722 (n + 1)

end

end A053875.P6685933827617655830

/-! ## A053875.P5478312224724551095

`A053718(n+1)+A053722(n+1)*A057428(n+1)`
-/

namespace A053875.P5478312224724551095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053718 (n + 1) + A053722 (n + 1) * A057428 (n + 1)

end

end A053875.P5478312224724551095

/-! ## A053875.P5239407454248009956

`A053718(n+1)+A057428(n)-A346214(A133263(n))`
-/

namespace A053875.P5239407454248009956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053718 (n + 1) + (A057428 n - A346214 (A133263 n).toNat)

end

end A053875.P5239407454248009956

/-!
# A053876: Number of elements of order 6 in GL(n,2).

The programs for A053876, there is no canonical definition to state claims against.
-/

/-! ## A053876.P3883841252848480937

`lcm(A111116(n+1)!, A241466(2*n+1))`
-/

namespace A053876.P3883841252848480937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A111116 (n + 1)).toNat : ℤ) (A241466 (2 * n + 1))

end

end A053876.P3883841252848480937

/-!
# A053878: Difference between numerator and denominator of lowest terms fraction from division of a highly composite number (1) by its predecessor.

The programs for A053878, there is no canonical definition to state claims against.
-/

/-! ## A053878.P17538094284141540863

`A054483(n+2)-A054482(n+2)`
-/

namespace A053878.P17538094284141540863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054483 (n + 2) - A054482 (n + 2)

end

end A053878.P17538094284141540863

/-! ## A053878.P18266778161638332408

`A262501(n+1)/A054481(n+2)`
-/

namespace A053878.P18266778161638332408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262501 (n + 1) : ℚ) / (A054481 (n + 2) : ℚ)

end

end A053878.P18266778161638332408

/-! ## A053878.P14465752234668466505

`Δ[A002182(n+1)]/A054481(n+2)`
-/

namespace A053878.P14465752234668466505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A054481 (n + 2) : ℚ)

end

end A053878.P14465752234668466505

/-! ## A053878.P9663529801353208752

`Δ[A135372(n+1)]/A054481(n+2)`
-/

namespace A053878.P9663529801353208752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A054481 (n + 2) : ℚ)

end

end A053878.P9663529801353208752

/-! ## A053878.P4782483641450339397

`Δ[sqrt(A046952(n+1))]/A054481(n+2)`
-/

namespace A053878.P4782483641450339397
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (A054481 (n + 2) : ℝ)

end

end A053878.P4782483641450339397

/-! ## A053878.P2226946557974987579

`Δ[A025487(A306802(n+1))]/A054481(n+2)`
-/

namespace A053878.P2226946557974987579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A054481 (n + 2) : ℚ)

end

end A053878.P2226946557974987579

/-! ## A053878.P3309143828010153740

`A262501(n+1)/gcd(A002182(n+1), A262501(n+1))`
-/

namespace A053878.P3309143828010153740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262501 (n + 1) : ℚ) / (Int.gcd (A002182 (n + 1)) (A262501 (n + 1)) : ℚ)

end

end A053878.P3309143828010153740

/-! ## A053878.P11051518019138872926

`A014963(A124318(n+3))`
-/

namespace A053878.P11051518019138872926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124318 (n + 3)).toNat

end

end A053878.P11051518019138872926

/-! ## A053878.P7567614993519808102

`A002533(A124182(A124182(A124182(n+1))))`
-/

namespace A053878.P7567614993519808102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (A124182 (A124182 (A124182 (n + 1)).toNat).toNat).toNat

end

end A053878.P7567614993519808102

/-!
# A053879: a(n) = n^2 mod 7.

The programs for A053879, the canonical program `A053879.P11789573427963369252` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053879 has offset 0).

The definition of A053879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053879.P11789573427963369252

`n²%7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A053879

/-- `n²%7` -/
def P11789573427963369252.Spec : Prop :=
  ∀ n, (P11789573427963369252.a n : ℤ) = A053879 n

theorem P11789573427963369252.correct : P11789573427963369252.Spec := by
  intro n
  simp only [A053879]

end A053879

/-!
# A053880: Numbers k such that k^2 contains only digits {1,2,4}.

The programs for A053880, there is no canonical definition to state claims against.
-/

/-! ## A053880.P4863914324922376176

`sqrt(A053881(n+1))`
-/

namespace A053880.P4863914324922376176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053881 (n + 1) : ℝ)

end

end A053880.P4863914324922376176

/-! ## A053880.P15103344990181403367

`root(A053881(n+1), A178815(n+1))`
-/

namespace A053880.P15103344990181403367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053881 (n + 1) : ℝ) ^ (1 / (A178815 (n + 1) : ℝ))

end

end A053880.P15103344990181403367

/-! ## A053880.P9751595892134031090

`root(A053881(n+1), A020639(2*(n+1)))`
-/

namespace A053880.P9751595892134031090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053881 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053880.P9751595892134031090

/-! ## A053880.P5694132872179922002

`A053881(n+1)^(A008480(A000015(n+1))/2)`
-/

namespace A053880.P5694132872179922002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053881 (n + 1) : ℝ) ^ ((A008480 (A000015 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A053880.P5694132872179922002

/-! ## A053880.P13979664258356255050

`A028310(root(A053881(n+1), 2))`
-/

namespace A053880.P13979664258356255050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A053881 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053880.P13979664258356255050

/-!
# A053881: Squares composed of digits {1,2,4}.

The programs for A053881, there is no canonical definition to state claims against.
-/

/-! ## A053881.P3196559173796430850

`A053880(n+1)²`
-/

namespace A053881.P3196559173796430850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053880 (n + 1) ^ 2

end

end A053881.P3196559173796430850

/-! ## A053881.P5432419593605835644

`A053880(n+1)^A020639(2*(n+1))`
-/

namespace A053881.P5432419593605835644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053880 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A053881.P5432419593605835644

/-! ## A053881.P6299222726574725516

`A053880(n+1)^A000005(A000040(n+1))`
-/

namespace A053881.P6299222726574725516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053880 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A053881.P6299222726574725516

/-! ## A053881.P3599239185546447320

`A053880(n+1)^A000005(A047811(2*(n+2)))`
-/

namespace A053881.P3599239185546447320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053880 (n + 1) : ℚ) ^ (A000005 (A047811 (2 * (n + 2))).toNat : ℤ)

end

end A053881.P3599239185546447320

/-! ## A053881.P11097676909871229199

`A053880(n+1)^A000005(A053872(n+1))`
-/

namespace A053881.P11097676909871229199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053880 (n + 1) : ℚ) ^ (A000005 (A053872 (n + 1)).toNat : ℤ)

end

end A053881.P11097676909871229199

/-!
# A053882: Numbers k such that k^2 contains only digits {1,2,6}.

The programs for A053882, there is no canonical definition to state claims against.
-/

/-! ## A053882.P15508873540543738148

`sqrt(A053883(n+1))`
-/

namespace A053882.P15508873540543738148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053883 (n + 1) : ℝ)

end

end A053882.P15508873540543738148

/-! ## A053882.P7593032282303584676

`A053883(n+1)^(A053878(n+2)/2)`
-/

namespace A053882.P7593032282303584676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053883 (n + 1) : ℝ) ^ ((A053878 (n + 2) : ℚ) / 2 : ℝ)

end

end A053882.P7593032282303584676

/-! ## A053882.P9784261259311159850

`root(A053883(n+1), A053868(gcd(n+1, n+2)))`
-/

namespace A053882.P9784261259311159850
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053883 (n + 1) : ℝ) ^ (1 / (A053868 (Nat.gcd (n + 1) (n + 2)) : ℝ))

end

end A053882.P9784261259311159850

/-! ## A053882.P395405375722093628

`root(A053883(n+1), A174354(A174354(n)))`
-/

namespace A053882.P395405375722093628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053883 (n + 1) : ℝ) ^ (1 / (A174354 (A174354 n).toNat : ℝ))

end

end A053882.P395405375722093628

/-!
# A053883: Squares composed of digits {1,2,6}.

The programs for A053883, there is no canonical definition to state claims against.
-/

/-! ## A053883.P16681343076788499278

`A053882(n+1)²`
-/

namespace A053883.P16681343076788499278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053882 (n + 1) ^ 2

end

end A053883.P16681343076788499278

/-! ## A053883.P6139103688674895843

`A053882(n+1)^A020639(A008458(n))`
-/

namespace A053883.P6139103688674895843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053882 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A053883.P6139103688674895843

/-! ## A053883.P11715531957056563376

`A053882(n+1)^A020639(A027599(n))`
-/

namespace A053883.P11715531957056563376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053882 (n + 1) : ℚ) ^ (A020639 (A027599 n).toNat : ℤ)

end

end A053883.P11715531957056563376

/-! ## A053883.P5562247100753638529

`A053882(n+1)^A020639(A163755(n))`
-/

namespace A053883.P5562247100753638529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053882 (n + 1) : ℚ) ^ (A020639 (A163755 n).toNat : ℤ)

end

end A053883.P5562247100753638529

/-! ## A053883.P7694555670263795249

`A053882(n+1)^A014963(A000079(n))`
-/

namespace A053883.P7694555670263795249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053882 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A053883.P7694555670263795249

/-!
# A053885: 

The programs for A053885, there is no canonical definition to state claims against.
-/

/-! ## A053885.P10718007052854272723

`A053884(n+1)²`
-/

namespace A053885.P10718007052854272723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053884 (n + 1) ^ 2

end

end A053885.P10718007052854272723

/-!
# A053886: Numbers k such that k^2 contains only digits {1,2,8}.

The programs for A053886, there is no canonical definition to state claims against.
-/

/-! ## A053886.P15364499172655472234

`sqrt(A053887(n+1))`
-/

namespace A053886.P15364499172655472234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053887 (n + 1) : ℝ)

end

end A053886.P15364499172655472234

/-! ## A053886.P6553225897013002256

`root(A053887(n+1), dr(A017185(n)))`
-/

namespace A053886.P6553225897013002256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053887 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A017185 n) : ℝ))

end

end A053886.P6553225897013002256

/-! ## A053886.P9869701186056519035

`root(A053887(n+1), dr(A217222(n+1)))`
-/

namespace A053886.P9869701186056519035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053887 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A217222 (n + 1)) : ℝ))

end

end A053886.P9869701186056519035

/-! ## A053886.P16213136810528217391

`root(A053887(n+1), A020639(2*(n+1)))`
-/

namespace A053886.P16213136810528217391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053887 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053886.P16213136810528217391

/-! ## A053886.P7908821393087390209

`A053887(n+1)^(A008480(A000015(n+1))/2)`
-/

namespace A053886.P7908821393087390209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053887 (n + 1) : ℝ) ^ ((A008480 (A000015 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A053886.P7908821393087390209

/-!
# A053887: Squares composed of digits {1,2,8}.

The programs for A053887, there is no canonical definition to state claims against.
-/

/-! ## A053887.P10265841934986321498

`A053886(n+1)²`
-/

namespace A053887.P10265841934986321498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053886 (n + 1) ^ 2

end

end A053887.P10265841934986321498

/-! ## A053887.P5560268217901795460

`A053886(n+1)^A020639(2*(n+1))`
-/

namespace A053887.P5560268217901795460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053886 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A053887.P5560268217901795460

/-! ## A053887.P18035212095016128131

`A053886(A000027(n+1))*A053886(n+1)`
-/

namespace A053887.P18035212095016128131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053886 (A000027 (n + 1)).toNat * A053886 (n + 1)

end

end A053887.P18035212095016128131

/-! ## A053887.P5305516908930703519

`A053886(n+1)^A000005(A053872(n+1))`
-/

namespace A053887.P5305516908930703519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053886 (n + 1) : ℚ) ^ (A000005 (A053872 (n + 1)).toNat : ℤ)

end

end A053887.P5305516908930703519

/-! ## A053887.P34992126666869810

`A053886(n+1)^A000005(A053845(n+1))`
-/

namespace A053887.P34992126666869810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053886 (n + 1) : ℚ) ^ (A000005 (A053845 (n + 1)).toNat : ℤ)

end

end A053887.P34992126666869810

/-!
# A053888: Numbers k such that k^2 contains only digits {1,2,9}.

The programs for A053888, there is no canonical definition to state claims against.
-/

/-! ## A053888.P7753928294622291889

`sqrt(A053889(n+1))`
-/

namespace A053888.P7753928294622291889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053889 (n + 1) : ℝ)

end

end A053888.P7753928294622291889

/-! ## A053888.P16427693717630148346

`root(A053889(n+1), A000007(n)+2)`
-/

namespace A053888.P16427693717630148346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053889 (n + 1) : ℝ) ^ (1 / (A000007 n + 2 : ℝ))

end

end A053888.P16427693717630148346

/-! ## A053888.P7945778710560871670

`root(A053889(n+1), gcd(2, A000079(n)))`
-/

namespace A053888.P7945778710560871670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053889 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000079 n) : ℝ))

end

end A053888.P7945778710560871670

/-! ## A053888.P1719648284888255575

`root(A053889(n+1), A014963(4*n+2)+1)`
-/

namespace A053888.P1719648284888255575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053889 (n + 1) : ℝ) ^ (1 / (A014963 (4 * n + 2) + 1 : ℝ))

end

end A053888.P1719648284888255575

/-!
# A053889: Squares composed of digits {1,2,9}.

The programs for A053889, there is no canonical definition to state claims against.
-/

/-! ## A053889.P4482756768951766997

`A053888(n+1)²`
-/

namespace A053889.P4482756768951766997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053888 (n + 1) ^ 2

end

end A053889.P4482756768951766997

/-! ## A053889.P13467987935781523241

`A053888(n+1)^A020639(A008458(n))`
-/

namespace A053889.P13467987935781523241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053888 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A053889.P13467987935781523241

/-! ## A053889.P2670881009615351158

`A053888(n+1)^A000040(A053878(n+2))`
-/

namespace A053889.P2670881009615351158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053888 (n + 1) : ℚ) ^ (A000040 (A053878 (n + 2)).toNat : ℤ)

end

end A053889.P2670881009615351158

/-! ## A053889.P4821265737101379504

`A053888(n+1)*A053888(A053878(n+2)+n)`
-/

namespace A053889.P4821265737101379504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053888 (n + 1) * A053888 (A053878 (n + 2) + (n : ℤ)).toNat

end

end A053889.P4821265737101379504

/-! ## A053889.P17562490164065617763

`A053888(n+1)^dr(A053848(n+1))`
-/

namespace A053889.P17562490164065617763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053888 (n + 1) ^ SequenceMachineLib.digitalRoot (A053848 (n + 1))

end

end A053889.P17562490164065617763

/-!
# A053890: Numbers k such that k^2 contains only digits {1,3,4}.

The programs for A053890, there is no canonical definition to state claims against.
-/

/-! ## A053890.P3873804738661409950

`sqrt(A053891(n+1))`
-/

namespace A053890.P3873804738661409950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053891 (n + 1) : ℝ)

end

end A053890.P3873804738661409950

/-! ## A053890.P7736285788231396056

`root(A053891(n+1), dr(A053848(n+1)))`
-/

namespace A053890.P7736285788231396056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053891 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A053848 (n + 1)) : ℝ))

end

end A053890.P7736285788231396056

/-! ## A053890.P2772276188770059612

`root(A053891(n+1), 2%A053388(n+1))`
-/

namespace A053890.P2772276188770059612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053891 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A053388 (n + 1)) : ℝ))

end

end A053890.P2772276188770059612

/-! ## A053890.P5601548648468661447

`root(A053891(n+1), A174354(A174354(n)))`
-/

namespace A053890.P5601548648468661447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053891 (n + 1) : ℝ) ^ (1 / (A174354 (A174354 n).toNat : ℝ))

end

end A053890.P5601548648468661447

/-!
# A053891: Squares composed of digits {1,3,4}.

The programs for A053891, there is no canonical definition to state claims against.
-/

/-! ## A053891.P14172235543986620849

`A053890(n+1)²`
-/

namespace A053891.P14172235543986620849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053890 (n + 1) ^ 2

end

end A053891.P14172235543986620849

/-! ## A053891.P14531451897492500976

`A053890(n+1)^dr(A053848(n+1))`
-/

namespace A053891.P14531451897492500976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053890 (n + 1) ^ SequenceMachineLib.digitalRoot (A053848 (n + 1))

end

end A053891.P14531451897492500976

/-! ## A053891.P16928250138369290184

`A053890(n+1)^A020639(A008458(n))`
-/

namespace A053891.P16928250138369290184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053890 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A053891.P16928250138369290184

/-! ## A053891.P926578032368096276

`A053890(n+1)^A020639(A136254(n))`
-/

namespace A053891.P926578032368096276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053890 (n + 1) : ℚ) ^ (A020639 (A136254 n).toNat : ℤ)

end

end A053891.P926578032368096276

/-! ## A053891.P14701867538846555911

`A053890(n+1)^A014963(A000079(n))`
-/

namespace A053891.P14701867538846555911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053890 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A053891.P14701867538846555911

/-!
# A053892: Numbers k such that k^2 contains only digits {1,3,6}.

The programs for A053892, there is no canonical definition to state claims against.
-/

/-! ## A053892.P9385885907366035820

`sqrt(A053893(n+1))`
-/

namespace A053892.P9385885907366035820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053893 (n + 1) : ℝ)

end

end A053892.P9385885907366035820

/-! ## A053892.P2470545370328662517

`root(A053893(n+1), A040001(2*n))`
-/

namespace A053892.P2470545370328662517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053893 (n + 1) : ℝ) ^ (1 / (A040001 (2 * n) : ℝ))

end

end A053892.P2470545370328662517

/-! ## A053892.P7642094657941974494

`root(A053893(n+1), A020639(2*(n+1)))`
-/

namespace A053892.P7642094657941974494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053893 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A053892.P7642094657941974494

/-! ## A053892.P1761308971913529676

`A053893(n+1)^(1/A000005(A108183(n+1)))`
-/

namespace A053892.P1761308971913529676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053893 (n + 1) : ℝ) ^ (1 / (A000005 (A108183 (n + 1)).toNat : ℚ) : ℝ)

end

end A053892.P1761308971913529676

/-! ## A053892.P17245898434690016419

`A053893(n+1)^(A008480(A000015(n+1))/2)`
-/

namespace A053892.P17245898434690016419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053893 (n + 1) : ℝ) ^ ((A008480 (A000015 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A053892.P17245898434690016419

/-!
# A053893: Squares composed of digits {1,3,6}.

The programs for A053893, there is no canonical definition to state claims against.
-/

/-! ## A053893.P15366539085917949530

`A053892(n+1)²`
-/

namespace A053893.P15366539085917949530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053892 (n + 1) ^ 2

end

end A053893.P15366539085917949530

/-! ## A053893.P7910958583497333163

`A053892(n+1)^A020639(4*(n+1))`
-/

namespace A053893.P7910958583497333163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053892 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A053893.P7910958583497333163

/-! ## A053893.P16149155042527416419

`A053892(n+1)^A001221(2*A000040(n+3))`
-/

namespace A053893.P16149155042527416419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053892 (n + 1) : ℚ) ^ (A001221 (2 * A000040 (n + 3)).toNat : ℤ)

end

end A053893.P16149155042527416419

/-! ## A053893.P8680765227279471168

`A053892(n+1)^A001222(2*A000040(n+3))`
-/

namespace A053893.P8680765227279471168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053892 (n + 1) : ℚ) ^ (A001222 (2 * A000040 (n + 3)).toNat : ℤ)

end

end A053893.P8680765227279471168

/-! ## A053893.P6025238955794946758

`A053892(n+1)^A000040(A053878(n+2))`
-/

namespace A053893.P6025238955794946758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053892 (n + 1) : ℚ) ^ (A000040 (A053878 (n + 2)).toNat : ℤ)

end

end A053893.P6025238955794946758

/-!
# A053896: Numbers k such that k^2 contains only digits {1,4,5}.

The programs for A053896, there is no canonical definition to state claims against.
-/

/-! ## A053896.P1762984062613774447

`sqrt(A053897(n+1))`
-/

namespace A053896.P1762984062613774447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053897 (n + 1) : ℝ)

end

end A053896.P1762984062613774447

/-! ## A053896.P17077530224079965272

`root(A053897(n+1), ratio[A000079(n)])`
-/

namespace A053896.P17077530224079965272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053897 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A053896.P17077530224079965272

/-! ## A053896.P13354593531038580541

`root(A053897(n+1), p?[A124766(n)])`
-/

namespace A053896.P13354593531038580541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053897 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053896.P13354593531038580541

/-! ## A053896.P17790467171345411376

`root(A053897(n+1), A036453(n+1))`
-/

namespace A053896.P17790467171345411376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053897 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A053896.P17790467171345411376

/-!
# A053897: Squares composed of digits {1,4,5}.

The programs for A053897, there is no canonical definition to state claims against.
-/

/-! ## A053897.P4329286700293465673

`A053896(n+1)²`
-/

namespace A053897.P4329286700293465673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053896 (n + 1) ^ 2

end

end A053897.P4329286700293465673

/-! ## A053897.P5776433946095112229

`A053896(n+1)^dr(A053848(n+1))`
-/

namespace A053897.P5776433946095112229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053896 (n + 1) ^ SequenceMachineLib.digitalRoot (A053848 (n + 1))

end

end A053897.P5776433946095112229

/-! ## A053897.P14455739329788739348

`A053896(n+1)^A014963(A000079(n))`
-/

namespace A053897.P14455739329788739348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053896 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A053897.P14455739329788739348

/-! ## A053897.P6244769016330920909

`A053896(n+1)^A020639(A008458(n))`
-/

namespace A053897.P6244769016330920909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053896 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A053897.P6244769016330920909

/-! ## A053897.P12553521176199000873

`A053896(n+1)^A000040(A053878(n+2))`
-/

namespace A053897.P12553521176199000873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053896 (n + 1) : ℚ) ^ (A000040 (A053878 (n + 2)).toNat : ℤ)

end

end A053897.P12553521176199000873

/-!
# A053898: Numbers k such that k^2 contains only digits {1,4,7}.

The programs for A053898, there is no canonical definition to state claims against.
-/

/-! ## A053898.P11669994339619595040

`sqrt(A053899(n+1))`
-/

namespace A053898.P11669994339619595040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053899 (n + 1) : ℝ)

end

end A053898.P11669994339619595040

/-! ## A053898.P971449718620313364

`root(A053899(n+1), p?[A006464(n)])`
-/

namespace A053898.P971449718620313364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053899 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053898.P971449718620313364

/-! ## A053898.P7942590303525262666

`root(A053899(n+1), p?[A105551(n)])`
-/

namespace A053898.P7942590303525262666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105551 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053899 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053898.P7942590303525262666

/-! ## A053898.P2188141234731930019

`root(A053899(n+1), p?[A165190(n)])`
-/

namespace A053898.P2188141234731930019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053899 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053898.P2188141234731930019

/-! ## A053898.P9258886498232527252

`root(A053899(n+1), p?[A202053(n+1)])`
-/

namespace A053898.P9258886498232527252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053899 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A053898.P9258886498232527252

/-!
# A053899: Squares composed of digits {1,4,7}.

The programs for A053899, there is no canonical definition to state claims against.
-/

/-! ## A053899.P10750419267747382851

`A053898(n+1)²`
-/

namespace A053899.P10750419267747382851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053898 (n + 1) ^ 2

end

end A053899.P10750419267747382851

/-! ## A053899.P3379324688918001682

`A053898(n+1)^A014963(A000079(n))`
-/

namespace A053899.P3379324688918001682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053898 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A053899.P3379324688918001682

/-! ## A053899.P3339832240011473123

`A053898(n+1)^A014963(A001316(n))`
-/

namespace A053899.P3339832240011473123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053898 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A053899.P3339832240011473123

/-! ## A053899.P12870057305956943444

`A053898(n+1)^A020639(A008458(n))`
-/

namespace A053899.P12870057305956943444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053898 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A053899.P12870057305956943444

/-! ## A053899.P6473249603914031203

`A053898(n+1)^A020639(A008574(n))`
-/

namespace A053899.P6473249603914031203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053898 (n + 1) : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A053899.P6473249603914031203

