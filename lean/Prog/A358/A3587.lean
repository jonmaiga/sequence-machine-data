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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A358700: a(n) is the number of binary digits of n^2.

The programs for A358700, the canonical program `A358700.P15587326783897008239` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358700 has offset 0).

The definition of A358700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358700.P13677827186248749538

`ceil(log2(n²+1))`
-/

namespace A358700.P13677827186248749538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n ^ 2 + 1 : ℝ)⌉

end

end A358700.P13677827186248749538

namespace A358700

/-- `ceil(log2(n²+1))` -/
def P13677827186248749538.Spec : Prop :=
  ∀ n, P13677827186248749538.a n = A358700 n

end A358700

/-! ## A358700.P8455620193465859085

`abs(floor(log2(acot(n²))))`
-/

namespace A358700.P8455620193465859085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.logb 2 (SequenceMachineLib.acot (n ^ 2 : ℝ))⌋|

end

end A358700.P8455620193465859085

namespace A358700

/-- `abs(floor(log2(acot(n²))))` -/
def P8455620193465859085.Spec : Prop :=
  ∀ n, P8455620193465859085.a n = A358700 n

end A358700

/-! ## A358700.P12731408688940771819

`-floor(log2(acot(n²)))`
-/

namespace A358700.P12731408688940771819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.logb 2 (SequenceMachineLib.acot (n ^ 2 : ℝ))⌋

end

end A358700.P12731408688940771819

namespace A358700

/-- `-floor(log2(acot(n²)))` -/
def P12731408688940771819.Spec : Prop :=
  ∀ n, P12731408688940771819.a n = A358700 n

end A358700

/-! ## A358700.P13489241072278449571

`floor(a(n-1)+n²/2^a(n-1))` with `a(0)=0`
-/

namespace A358700.P13489241072278449571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / (2 : ℚ) ^ (a (n - 1) : ℤ)⌋

end

end A358700.P13489241072278449571

namespace A358700

/-- `floor(a(n-1)+n²/2^a(n-1))` -/
def P13489241072278449571.Spec : Prop :=
  ∀ n, P13489241072278449571.a n = A358700 n

end A358700

/-! ## A358700.P15587326783897008239

`floor(log2(A058331(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A358700

/-- `floor(log2(A058331(n)))` -/
def P15587326783897008239.Spec : Prop :=
  ∀ n, (P15587326783897008239.a n : ℤ) = A358700 n

theorem P15587326783897008239.correct : P15587326783897008239.Spec := by
  intro n
  simp only [A358700]

end A358700

/-! ## A358700.P12000574564863170483

`floor(log2(A317298(n)-n))`
-/

namespace A358700.P12000574564863170483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A317298 n - (n : ℤ)).toNat

end

end A358700.P12000574564863170483

namespace A358700

/-- `floor(log2(A317298(n)-n))` -/
def P12000574564863170483.Spec : Prop :=
  ∀ n, (P12000574564863170483.a n : ℤ) = A358700 n

end A358700

/-! ## A358700.P15474245189261840008

`floor(log2(A099392(2*n+1)))`
-/

namespace A358700.P15474245189261840008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A099392 (2 * n + 1)).toNat

end

end A358700.P15474245189261840008

namespace A358700

/-- `floor(log2(A099392(2*n+1)))` -/
def P15474245189261840008.Spec : Prop :=
  ∀ n, (P15474245189261840008.a n : ℤ) = A358700 n

end A358700

/-! ## A358700.P1744561558150886007

`floor(log2(A061925(2*n)))`
-/

namespace A358700.P1744561558150886007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A061925 (2 * n)).toNat

end

end A358700.P1744561558150886007

namespace A358700

/-- `floor(log2(A061925(2*n)))` -/
def P1744561558150886007.Spec : Prop :=
  ∀ n, (P1744561558150886007.a n : ℤ) = A358700 n

end A358700

/-! ## A358700.P11342108778290892535

`floor(log2(A097063(2*n)))`
-/

namespace A358700.P11342108778290892535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A097063 (2 * n)).toNat

end

end A358700.P11342108778290892535

namespace A358700

/-- `floor(log2(A097063(2*n)))` -/
def P11342108778290892535.Spec : Prop :=
  ∀ n, (P11342108778290892535.a n : ℤ) = A358700 n

end A358700

/-! ## A358700.P705936231618969525

`floor(log2(A075855(2*n+1)))`
-/

namespace A358700.P705936231618969525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A075855 (2 * n + 1)).toNat

end

end A358700.P705936231618969525

namespace A358700

/-- `floor(log2(A075855(2*n+1)))` -/
def P705936231618969525.Spec : Prop :=
  ∀ n, (P705936231618969525.a n : ℤ) = A358700 n

end A358700

/-! ## A358700.P13536126952014837141

`floor(log2(A247375(2*n+1)))`
-/

namespace A358700.P13536126952014837141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A247375 (2 * n + 1)).toNat

end

end A358700.P13536126952014837141

namespace A358700

/-- `floor(log2(A247375(2*n+1)))` -/
def P13536126952014837141.Spec : Prop :=
  ∀ n, (P13536126952014837141.a n : ℤ) = A358700 n

end A358700

/-! ## A358700.P16681497152988808410

`A213711(A071542(n²))`
-/

namespace A358700.P16681497152988808410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A071542 (n ^ 2)).toNat

end

end A358700.P16681497152988808410

namespace A358700

/-- `A213711(A071542(n²))` -/
def P16681497152988808410.Spec : Prop :=
  ∀ n, P16681497152988808410.a n = A358700 n

end A358700

/-! ## A358700.P12613079158760132031

`A303597(A372060(n²))`
-/

namespace A358700.P12613079158760132031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303597 (A372060 (n ^ 2)).toNat

end

end A358700.P12613079158760132031

namespace A358700

/-- `A303597(A372060(n²))` -/
def P12613079158760132031.Spec : Prop :=
  ∀ n, P12613079158760132031.a n = A358700 n

end A358700

/-! ## A358700.P4598124761200547551

`log2(A003817(n²)+1)`
-/

namespace A358700.P4598124761200547551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003817 (n ^ 2) + 1 : ℝ)

end

end A358700.P4598124761200547551

namespace A358700

/-- `log2(A003817(n²)+1)` -/
def P4598124761200547551.Spec : Prop :=
  ∀ n, P4598124761200547551.a n = (A358700 n : ℝ)

end A358700

/-! ## A358700.P9887878319602316021

`A029931(A053644(n²))`
-/

namespace A358700.P9887878319602316021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A053644 (n ^ 2)).toNat

end

end A358700.P9887878319602316021

namespace A358700

/-- `A029931(A053644(n²))` -/
def P9887878319602316021.Spec : Prop :=
  ∀ n, P9887878319602316021.a n = A358700 n

end A358700

/-! ## A358700.P5064943077294062030

`A001222(A003817(n²)+1)`
-/

namespace A358700.P5064943077294062030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003817 (n ^ 2) + 1).toNat

end

end A358700.P5064943077294062030

namespace A358700

/-- `A001222(A003817(n²)+1)` -/
def P5064943077294062030.Spec : Prop :=
  ∀ n, P5064943077294062030.a n = A358700 n

end A358700

/-! ## A358700.P13418132936160399389

`A366281(A053644(A053644(n*n)))`
-/

namespace A358700.P13418132936160399389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366281 (A053644 (A053644 (n * n)).toNat).toNat

end

end A358700.P13418132936160399389

namespace A358700

/-- `A366281(A053644(A053644(n*n)))` -/
def P13418132936160399389.Spec : Prop :=
  ∀ n, P13418132936160399389.a n = A358700 n

end A358700

/-! ## A358700.P1275632273368165545

`log2(A062383(n²))`
-/

namespace A358700.P1275632273368165545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 (n ^ 2) : ℝ)

end

end A358700.P1275632273368165545

namespace A358700

/-- `log2(A062383(n²))` -/
def P1275632273368165545.Spec : Prop :=
  ∀ n, P1275632273368165545.a n = (A358700 n : ℝ)

end A358700

/-! ## A358700.P1317656489107429969

`A029837(n²+1)`
-/

namespace A358700.P1317656489107429969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n ^ 2 + 1)

end

end A358700.P1317656489107429969

namespace A358700

/-- `A029837(n²+1)` -/
def P1317656489107429969.Spec : Prop :=
  ∀ n, P1317656489107429969.a n = A358700 n

end A358700

/-! ## A358700.P709068840485152472

`A070941(n²)-1`
-/

namespace A358700.P709068840485152472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (n ^ 2) - 1

end

end A358700.P709068840485152472

namespace A358700

/-- `A070941(n²)-1` -/
def P709068840485152472.Spec : Prop :=
  ∀ n, P709068840485152472.a n = A358700 n

end A358700

/-!
# A358701: a(n) is the least number > 1 that needs n toggles in the trailing bits of its binary representation to become a square.

The programs for A358701, there is no canonical definition to state claims against.
-/

/-! ## A358701.P9588069566895826902

`A324475(n+4)+A324475(A116956(n))`
-/

namespace A358701.P9588069566895826902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324475 (n + 4) + A324475 (A116956 n).toNat

end

end A358701.P9588069566895826902

/-!
# A358702: a(n) is the least k > 0 such that the sum of the decimal digits of k^2 is n, or 0 if no such k exists.

The programs for A358702, there is no canonical definition to state claims against.
-/

/-! ## A358702.P9807208516925706518

`sqrt(A062685(n+1))`
-/

namespace A358702.P9807208516925706518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062685 (n + 1) : ℝ)

end

end A358702.P9807208516925706518

/-! ## A358702.P14161838019828556833

`A062685(n+1)^abs((A000122(n)-1)/2)`
-/

namespace A358702.P14161838019828556833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062685 (n + 1) : ℝ) ^ (|(A000122 n - 1 : ℚ) / 2| : ℝ)

end

end A358702.P14161838019828556833

/-! ## A358702.P18301274696694906187

`A062685(n+1)/A389004(n+1)`
-/

namespace A358702.P18301274696694906187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062685 (n + 1) : ℚ) / (A389004 (n + 1) : ℚ)

end

end A358702.P18301274696694906187

/-! ## A358702.P4014008718241175124

`A002262(2*A062685(n+1))`
-/

namespace A358702.P4014008718241175124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A062685 (n + 1)).toNat

end

end A358702.P4014008718241175124

/-! ## A358702.P9206375507889967298

`A000196(A062685(n+1))%A000040(n+1)`
-/

namespace A358702.P9206375507889967298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A062685 (n + 1)).toNat) (A000040 (n + 1))

end

end A358702.P9206375507889967298

/-!
# A358703: Sliding numbers: totals, without repetitions, of sums r + s, r >= s, such that 1/r + 1/s = (r + s)/10^k for some k >= 0.

The programs for A358703, there is no canonical definition to state claims against.
-/

/-! ## A358703.P9514911316800991788

`record[A103182(A103391(n+1))]`
-/

namespace A358703.P9514911316800991788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A103391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P9514911316800991788

/-! ## A358703.P12230601325056690923

`record[A103182(A318891(n+1))]`
-/

namespace A358703.P12230601325056690923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A318891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P12230601325056690923

/-! ## A358703.P10592608065213778262

`record[A103182(n+1)%A103182(n+2)]`
-/

namespace A358703.P10592608065213778262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103182 (n + 1)) (A103182 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P10592608065213778262

/-! ## A358703.P780643248995187386

`record[A103182(A269364(n+1))]`
-/

namespace A358703.P780643248995187386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A269364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P780643248995187386

/-! ## A358703.P15751137233777337237

`record[A103182(A103221(n+2))]`
-/

namespace A358703.P15751137233777337237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A103221 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P15751137233777337237

/-! ## A358703.P2702073108791244325

`record[A103182(A290103(n+1))]`
-/

namespace A358703.P2702073108791244325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A290103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P2702073108791244325

/-! ## A358703.P16383783018280803199

`record[A103182(A193592(n))]`
-/

namespace A358703.P16383783018280803199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P16383783018280803199

/-! ## A358703.P16456125700774730149

`record[A103182(A002262(n)+1)]`
-/

namespace A358703.P16456125700774730149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (A002262 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358703.P16456125700774730149

/-!
# A358707: Number of cycles in the grid graph P_10 X P_n.

The programs for A358707, there is no canonical definition to state claims against.
-/

/-! ## A358707.P14099874636647601449

`A231829(A374010(n+1))`
-/

namespace A358707.P14099874636647601449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374010 (n + 1)).toNat

end

end A358707.P14099874636647601449

/-! ## A358707.P11131894248079612866

`A231829(A155212(n+5))`
-/

namespace A358707.P11131894248079612866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A155212 (n + 5)).toNat

end

end A358707.P11131894248079612866

/-! ## A358707.P12754858347938792156

`A231829(A052905(n+6)-3)`
-/

namespace A358707.P12754858347938792156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A052905 (n + 6) - 3).toNat

end

end A358707.P12754858347938792156

/-! ## A358707.P8224479964468964722

`A231829(eq[10, A131818(n+1)])`
-/

namespace A358707.P8224479964468964722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358707.P8224479964468964722

/-!
# A358709: a(n) is the number of free, tree-like polyiamonds, of size 3*n+1, with 120-degree rotational symmetry formed of a central triangle and identical, non-intersecting snakes leading from each of its sides.

The programs for A358709, there is no canonical definition to state claims against.
-/

/-! ## A358709.P15945276727248376208

`A094820(A193919(∑[n]))`
-/

namespace A358709.P15945276727248376208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A193919 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A358709.P15945276727248376208

/-! ## A358709.P17181892129520125485

`A111654(A151401(n+1))`
-/

namespace A358709.P17181892129520125485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A151401 (n + 1)).toNat

end

end A358709.P17181892129520125485

/-! ## A358709.P4084263350622096164

`A232746(A025268(n+2))`
-/

namespace A358709.P4084263350622096164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A025268 (n + 2)).toNat

end

end A358709.P4084263350622096164

/-! ## A358709.P1728157406579542843

`A111654(A268655(n+2))`
-/

namespace A358709.P1728157406579542843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A268655 (n + 2)).toNat

end

end A358709.P1728157406579542843

/-! ## A358709.P16012085892159112442

`round(A074000(2*n+1)/A000351(n))`
-/

namespace A358709.P16012085892159112442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074000 (2 * n + 1) : ℚ) / (A000351 n : ℚ))

end

end A358709.P16012085892159112442

/-!
# A358712: Number of self-avoiding closed paths on an n X 6 grid which pass through four corners ((0,0), (0,5), (n-1,5), (n-1,0)).

The programs for A358712, there is no canonical definition to state claims against.
-/

/-! ## A358712.P12146755231447081540

`A333513(Δ[A111396(n)])`
-/

namespace A358712.P12146755231447081540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (f1 (n + 1) - f1 n).toNat

end

end A358712.P12146755231447081540

/-! ## A358712.P4259057757597301773

`A333513(A055998(n+3))`
-/

namespace A358712.P4259057757597301773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A055998 (n + 3)).toNat

end

end A358712.P4259057757597301773

/-! ## A358712.P11659257975368138642

`A333513(A167614(n+3)+3)`
-/

namespace A358712.P11659257975368138642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A167614 (n + 3) + 3).toNat

end

end A358712.P11659257975368138642

/-! ## A358712.P8332034959001344637

`A333513(A167499(n+4)-8)`
-/

namespace A358712.P8332034959001344637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A167499 (n + 4) - 8).toNat

end

end A358712.P8332034959001344637

/-! ## A358712.P13096308558790228198

`A333513(eq[7, A126279(n+1)])`
-/

namespace A358712.P13096308558790228198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358712.P13096308558790228198

/-!
# A358713: Number of self-avoiding closed paths on an n X 7 grid which pass through four corners ((0,0), (0,6), (n-1,6), (n-1,0)).

The programs for A358713, there is no canonical definition to state claims against.
-/

/-! ## A358713.P1188498089894273010

`A333513(A046691(n+4))`
-/

namespace A358713.P1188498089894273010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A046691 (n + 4)).toNat

end

end A358713.P1188498089894273010

/-! ## A358713.P3216451855136961108

`A333513(A374007(n+1)+1)`
-/

namespace A358713.P3216451855136961108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A374007 (n + 1) + 1).toNat

end

end A358713.P3216451855136961108

/-! ## A358713.P1507873290683548959

`A333513(A052905(n+3)+1)`
-/

namespace A358713.P1507873290683548959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A052905 (n + 3) + 1).toNat

end

end A358713.P1507873290683548959

/-! ## A358713.P5978929796233223655

`A333513(A155212(n+2)+4)`
-/

namespace A358713.P5978929796233223655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A155212 (n + 2) + 4).toNat

end

end A358713.P5978929796233223655

/-! ## A358713.P7468989580980415078

`A333513(A167499(n+4)+2)`
-/

namespace A358713.P7468989580980415078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (A167499 (n + 4) + 2).toNat

end

end A358713.P7468989580980415078

/-!
# A358714: a(n) = phi(n)^3.

The programs for A358714, the canonical program `A358714.P18170188776639681660` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358714 has offset 1).

The definition of A358714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358714.P18170188776639681660

`A000010(n+1)^3`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A358714

/-- `A000010(n+1)^3` -/
def P18170188776639681660.Spec : Prop :=
  ∀ n, P18170188776639681660.a n = A358714 (n + 1)

theorem P18170188776639681660.correct : P18170188776639681660.Spec := by
  intro n
  simp only [A358714, Nat.add_sub_cancel]

end A358714

/-! ## A358714.P14155159306661443571

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^3`
-/

namespace A358714.P14155159306661443571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 3

end

end A358714.P14155159306661443571

namespace A358714

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^3` -/
def P14155159306661443571.Spec : Prop :=
  ∀ n, P14155159306661443571.a n = (A358714 (n + 1) : ℚ)

end A358714

/-! ## A358714.P1914900439784192283

`Δ[A002088(n)]^3`
-/

namespace A358714.P1914900439784192283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A358714.P1914900439784192283

namespace A358714

/-- `Δ[A002088(n)]^3` -/
def P1914900439784192283.Spec : Prop :=
  ∀ n, P1914900439784192283.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P4836666128784423622

`Δ[A005728(n)]^3`
-/

namespace A358714.P4836666128784423622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A358714.P4836666128784423622

namespace A358714

/-- `Δ[A005728(n)]^3` -/
def P4836666128784423622.Spec : Prop :=
  ∀ n, P4836666128784423622.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P10852895826516900877

`A349137(Δ[n²])^3`
-/

namespace A358714.P10852895826516900877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A358714.P10852895826516900877

namespace A358714

/-- `A349137(Δ[n²])^3` -/
def P10852895826516900877.Spec : Prop :=
  ∀ n, P10852895826516900877.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P4829623855610802776

`sqrt(A127473(n+1)^3)`
-/

namespace A358714.P4829623855610802776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) ^ 3 : ℝ)

end

end A358714.P4829623855610802776

namespace A358714

/-- `sqrt(A127473(n+1)^3)` -/
def P4829623855610802776.Spec : Prop :=
  ∀ n, P4829623855610802776.a n = (A358714 (n + 1) : ℝ)

end A358714

/-! ## A358714.P18362589633168040757

`abs((-A000010(2*n-(n-1)))^3)`
-/

namespace A358714.P18362589633168040757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 3|

end

end A358714.P18362589633168040757

namespace A358714

/-- `abs((-A000010(2*n-(n-1)))^3)` -/
def P18362589633168040757.Spec : Prop :=
  ∀ n, P18362589633168040757.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P11457343396132534123

`∑{d}[n+1, (n+1)/#*A008683(#)]^3`
-/

namespace A358714.P11457343396132534123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) ^ 3

end

end A358714.P11457343396132534123

namespace A358714

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]^3` -/
def P11457343396132534123.Spec : Prop :=
  ∀ n, P11457343396132534123.a n = (A358714 (n + 1) : ℚ)

end A358714

/-! ## A358714.P14905930676487319138

`A000578(A000010(n+1))`
-/

namespace A358714.P14905930676487319138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000010 (n + 1)).toNat

end

end A358714.P14905930676487319138

namespace A358714

/-- `A000578(A000010(n+1))` -/
def P14905930676487319138.Spec : Prop :=
  ∀ n, P14905930676487319138.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P2988459206970025408

`A000578(sqrt(A127473(n+1)))`
-/

namespace A358714.P2988459206970025408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A358714.P2988459206970025408

namespace A358714

/-- `A000578(sqrt(A127473(n+1)))` -/
def P2988459206970025408.Spec : Prop :=
  ∀ n, P2988459206970025408.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P14250076965652516667

`A000578(n+1-A051953(n+1))`
-/

namespace A358714.P14250076965652516667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A358714.P14250076965652516667

namespace A358714

/-- `A000578(n+1-A051953(n+1))` -/
def P14250076965652516667.Spec : Prop :=
  ∀ n, P14250076965652516667.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P17681647276843395898

`A000010(n+1)*A127473(n+1)`
-/

namespace A358714.P17681647276843395898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A127473 (n + 1)

end

end A358714.P17681647276843395898

namespace A358714

/-- `A000010(n+1)*A127473(n+1)` -/
def P17681647276843395898.Spec : Prop :=
  ∀ n, P17681647276843395898.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P2162043186447526695

`A000578(A002618(n+1)/(n+1))`
-/

namespace A358714.P2162043186447526695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A358714.P2162043186447526695

namespace A358714

/-- `A000578(A002618(n+1)/(n+1))` -/
def P2162043186447526695.Spec : Prop :=
  ∀ n, P2162043186447526695.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P17450952378901155736

`A361148(n+1)/A000010(n+1)`
-/

namespace A358714.P17450952378901155736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361148 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A358714.P17450952378901155736

namespace A358714

/-- `A361148(n+1)/A000010(n+1)` -/
def P17450952378901155736.Spec : Prop :=
  ∀ n, P17450952378901155736.a n = (A358714 (n + 1) : ℚ)

end A358714

/-! ## A358714.P15356080250150668110

`A000010(n+1)²*Δ[A002088(n)]`
-/

namespace A358714.P15356080250150668110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A358714.P15356080250150668110

namespace A358714

/-- `A000010(n+1)²*Δ[A002088(n)]` -/
def P15356080250150668110.Spec : Prop :=
  ∀ n, P15356080250150668110.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P5184921154366553918

`A000010(n+1)²*Δ[A005728(n)]`
-/

namespace A358714.P5184921154366553918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A358714.P5184921154366553918

namespace A358714

/-- `A000010(n+1)²*Δ[A005728(n)]` -/
def P5184921154366553918.Spec : Prop :=
  ∀ n, P5184921154366553918.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P4842208921110185999

`A002618(n+1)²²/A238533(n+1)`
-/

namespace A358714.P4842208921110185999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002618 (n + 1) ^ 2) ^ 2 : ℚ) / (A238533 (n + 1) : ℚ)

end

end A358714.P4842208921110185999

namespace A358714

/-- `A002618(n+1)²²/A238533(n+1)` -/
def P4842208921110185999.Spec : Prop :=
  ∀ n, P4842208921110185999.a n = (A358714 (n + 1) : ℚ)

end A358714

/-! ## A358714.P6477091751765008339

`A053191(n+1)²²/A239443(n+1)`
-/

namespace A358714.P6477091751765008339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053191 (n + 1) ^ 2) ^ 2 : ℚ) / (A239443 (n + 1) : ℚ)

end

end A358714.P6477091751765008339

namespace A358714

/-- `A053191(n+1)²²/A239443(n+1)` -/
def P6477091751765008339.Spec : Prop :=
  ∀ n, P6477091751765008339.a n = (A358714 (n + 1) : ℚ)

end A358714

/-! ## A358714.P3657815178918377723

`A000010(lcm(2, n+1))²*A000010(n+1)`
-/

namespace A358714.P3657815178918377723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 2 (n + 1)) ^ 2 * A000010 (n + 1)

end

end A358714.P3657815178918377723

namespace A358714

/-- `A000010(lcm(2, n+1))²*A000010(n+1)` -/
def P3657815178918377723.Spec : Prop :=
  ∀ n, P3657815178918377723.a n = A358714 (n + 1)

end A358714

/-! ## A358714.P11830436584566420062

`A000010(C(n+1, n))²*A000010(n+1)`
-/

namespace A358714.P11830436584566420062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose (n + 1) n) ^ 2 * A000010 (n + 1)

end

end A358714.P11830436584566420062

namespace A358714

/-- `A000010(C(n+1, n))²*A000010(n+1)` -/
def P11830436584566420062.Spec : Prop :=
  ∀ n, P11830436584566420062.a n = A358714 (n + 1)

theorem P11830436584566420062.correct : P11830436584566420062.Spec := by
  intro n
  simp only [A358714, Nat.add_sub_cancel, A358714.P11830436584566420062.a, A358714.P18170188776639681660.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A358714

/-!
# A358715: a(n) is the number of distinct ways to cut an equilateral triangle with edges of size n into equilateral triangles with integer sides.

The programs for A358715, there is no canonical definition to state claims against.
-/

/-! ## A358715.P4578135161743651246

`A136149(A015521(n))`
-/

namespace A358715.P4578135161743651246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136149 (A015521 n).toNat

end

end A358715.P4578135161743651246

/-!
# A358716: a(n) is the number of inequivalent ways to cut an equilateral triangle with edges of size n into equilateral triangles with integer sides.

The programs for A358716, there is no canonical definition to state claims against.
-/

/-! ## A358716.P8845938351213378898

`A240205(A265106(n))+A051296(n)`
-/

namespace A358716.P8845938351213378898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240205 (A265106 n).toNat + A051296 n

end

end A358716.P8845938351213378898

/-! ## A358716.P7186096906146369038

`A000174(A015451(n))*A087061(n+4)`
-/

namespace A358716.P7186096906146369038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A015451 n).toNat * A087061 (n + 4)

end

end A358716.P7186096906146369038

/-!
# A358717: A sequence of sorted primes 2 = p_1 < p_2 < ... < p_m such that (p_i + 1)/2 divides the product p_1*p_2*...*p_(i-1) of the earlier primes and each prime factor of (p_i-1)/2 is a prime factor of the product.

The programs for A358717, there is no canonical definition to state claims against.
-/

/-! ## A358717.P13030626670914937726

`A358719(A276156(n)+1)`
-/

namespace A358717.P13030626670914937726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358719 (A276156 n + 1).toNat

end

end A358717.P13030626670914937726

/-! ## A358717.P5944105083195278003

`A304713(A067847(n+1)+1)`
-/

namespace A358717.P5944105083195278003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (A067847 (n + 1) + 1).toNat

end

end A358717.P5944105083195278003

/-! ## A358717.P1404420753722108017

`filter[A358719(n+1), A189141(#)]`
-/

namespace A358717.P1404420753722108017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189141 (f1 j).toNat = 1) n)

end

end A358717.P1404420753722108017

/-! ## A358717.P17306919863969826259

`A212300(A082003(n+1)*A146528(n))`
-/

namespace A358717.P17306919863969826259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A082003 (n + 1) * A146528 n).toNat

end

end A358717.P17306919863969826259

/-!
# A358718: A sequence of sorted primes p_1 = 2, p_2 = 3, p_3 = 5, p_4 =7, p_5 < ... < p_m such that, for i >= 5, (p_i + 1)/2 divides the product p_1*p_2*...*p_(i-1) of the earlier primes and each prime factor of (p_i-1)/2 is a prime factor of the product p_1*p_2*...*p_(i-1).

The programs for A358718, there is no canonical definition to state claims against.
-/

/-! ## A358718.P688068051341283859

`∩[A078668(n+1), A184588(n+1)]`
-/

namespace A358718.P688068051341283859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358718.P688068051341283859

/-! ## A358718.P17742593940602998477

`∩[A103146(n+1), A184588(n+1)]`
-/

namespace A358718.P17742593940602998477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358718.P17742593940602998477

/-! ## A358718.P12085971164370077982

`eq[A143098(A204454(n+1)), A363723(n)]`
-/

namespace A358718.P12085971164370077982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143098 (A204454 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358718.P12085971164370077982

/-! ## A358718.P6197196811967530101

`A050921(A339736(n+1))`
-/

namespace A358718.P6197196811967530101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (A339736 (n + 1)).toNat

end

end A358718.P6197196811967530101

/-! ## A358718.P5697398479559661502

`eq[A321452(n), A350103(n)]`
-/

namespace A358718.P5697398479559661502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358718.P5697398479559661502

/-!
# A358720: The lowest positive-integer center for a square spiral whose center lies in an n X n square of nonprimes.

The programs for A358720, there is no canonical definition to state claims against.
-/

/-! ## A358720.P13334958251178666365

`A062778(A288016(n))+A059826(n)`
-/

namespace A358720.P13334958251178666365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062778 (A288016 n).toNat + A059826 n

end

end A358720.P13334958251178666365

/-!
# A358723: Number of n-node rooted trees of edge-height equal to their number of leaves.

The programs for A358723, there is no canonical definition to state claims against.
-/

/-! ## A358723.P5919202033188386752

`A276429(A124625(n))+A266715(A042047(n))`
-/

namespace A358723.P5919202033188386752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276429 (A124625 n).toNat + A266715 (A042047 n).toNat

end

end A358723.P5919202033188386752

/-!
# A358724: Difference between the number of internal (non-leaf) nodes and the edge-height of the rooted tree with Matula-Goebel number n.

The programs for A358724, there is no canonical definition to state claims against.
-/

/-! ## A358724.P6669633908810563997

`A342507(n+1)-A109082(n+1)`
-/

namespace A358724.P6669633908810563997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A109082 (n + 1)

end

end A358724.P6669633908810563997

/-! ## A358724.P12190705204775900597

`A358729(A198328(n+1))`
-/

namespace A358724.P12190705204775900597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (A198328 (n + 1)).toNat

end

end A358724.P12190705204775900597

/-! ## A358724.P14022078192439111634

`A342507(n+1)+1-A358552(n+1)`
-/

namespace A358724.P14022078192439111634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) + (1 - A358552 (n + 1))

end

end A358724.P14022078192439111634

/-! ## A358724.P9810738880736302584

`A358729(2*(n+1))-A109129(n+1)`
-/

namespace A358724.P9810738880736302584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (2 * (n + 1)) - A109129 (n + 1)

end

end A358724.P9810738880736302584

/-! ## A358724.P14765467971683463402

`A366388(A000040(n+1))-A109082(n+1)`
-/

namespace A358724.P14765467971683463402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A000040 (n + 1)).toNat - A109082 (n + 1)

end

end A358724.P14765467971683463402

/-! ## A358724.P247281519565198716

`A342507(A000040(n+1))-A358552(n+1)`
-/

namespace A358724.P247281519565198716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A000040 (n + 1)).toNat - A358552 (n + 1)

end

end A358724.P247281519565198716

/-! ## A358724.P16095576470680352227

`A048379(A342507(n+1))-A358552(n+1)`
-/

namespace A358724.P16095576470680352227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A342507 (n + 1)).toNat - A358552 (n + 1)

end

end A358724.P16095576470680352227

/-! ## A358724.P13935844820525237199

`A196050(n+1)+1-A109129(A000040(n+1))-A109082(n+1)`
-/

namespace A358724.P13935844820525237199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A109129 (A000040 (n + 1)).toNat) - A109082 (n + 1)

end

end A358724.P13935844820525237199

/-! ## A358724.P11838854730939613525

`A358729(A198329(n+1))`
-/

namespace A358724.P11838854730939613525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (A198329 (n + 1)).toNat

end

end A358724.P11838854730939613525

/-! ## A358724.P1651818914421109673

`1-(A358726(n+1)+A358580(n+1))`
-/

namespace A358724.P1651818914421109673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A358726 (n + 1) + A358580 (n + 1))

end

end A358724.P1651818914421109673

/-!
# A358725: Matula-Goebel numbers of rooted trees with a greater number of internal (non-leaf) vertices than edge-height.

The programs for A358725, there is no canonical definition to state claims against.
-/

/-! ## A358725.P16864208834148994542

`comp[A209636(n)-1]+1`
-/

namespace A358725.P16864208834148994542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358725.P16864208834148994542

/-! ## A358725.P9234691757524201140

`comp[A209638(n)-1]+1`
-/

namespace A358725.P9234691757524201140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358725.P9234691757524201140

/-! ## A358725.P8227894011639784039

`comp[A049084(A209636(n))]`
-/

namespace A358725.P8227894011639784039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A209636 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358725.P8227894011639784039

/-! ## A358725.P448387383402789282

`comp[A209638(n)%A054785(n+1)]`
-/

namespace A358725.P448387383402789282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209638 n) (A054785 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358725.P448387383402789282

/-! ## A358725.P14836934794072648329

`comp[∪[A296367(n+1), A209638(n)]]`
-/

namespace A358725.P14836934794072648329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296367 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A358725.P14836934794072648329

/-!
# A358726: Difference between the node-height and the number of leaves in the rooted tree with Matula-Goebel number n.

The programs for A358726, there is no canonical definition to state claims against.
-/

/-! ## A358726.P10249769591195506348

`A342507(n+1)-A358729(n+1)`
-/

namespace A358726.P10249769591195506348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A358729 (n + 1)

end

end A358726.P10249769591195506348

/-! ## A358726.P13476847316945673203

`A358552(n+1)-A109129(Δ[A007504(n)])`
-/

namespace A358726.P13476847316945673203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - A109129 (f1 (n + 1) - f1 n).toNat

end

end A358726.P13476847316945673203

/-! ## A358726.P1879766888973035066

`A358552(n+1)-A109129(A000040(n+1))`
-/

namespace A358726.P1879766888973035066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - A109129 (A000040 (n + 1)).toNat

end

end A358726.P1879766888973035066

/-! ## A358726.P17117761620773865669

`A358552(n+1)-A028310(A109129(n+1))`
-/

namespace A358726.P17117761620773865669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - A028310 (A109129 (n + 1)).toNat

end

end A358726.P17117761620773865669

/-! ## A358726.P920549521149800511

`A366388(A000040(n+1))-A358729(n+1)`
-/

namespace A358726.P920549521149800511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A000040 (n + 1)).toNat - A358729 (n + 1)

end

end A358726.P920549521149800511

/-! ## A358726.P9986379144903786657

`A358552(n+1)-A109129(sqrt(A001248(n+1)))`
-/

namespace A358726.P9986379144903786657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - A109129 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A358726.P9986379144903786657

/-! ## A358726.P15169487927542331341

`A366388(A006093(n+1)+1)-A358729(n+1)`
-/

namespace A358726.P15169487927542331341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A006093 (n + 1) + 1).toNat - A358729 (n + 1)

end

end A358726.P15169487927542331341

/-! ## A358726.P8372685676661381068

`A366388(A040976(n+1)+2)-A358729(n+1)`
-/

namespace A358726.P8372685676661381068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A040976 (n + 1) + 2).toNat - A358729 (n + 1)

end

end A358726.P8372685676661381068

/-! ## A358726.P15617745530206420448

`A366388(A001748(n+1)/3)-A358729(n+1)`
-/

namespace A358726.P15617745530206420448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat - A358729 (n + 1)

end

end A358726.P15617745530206420448

/-! ## A358726.P7138661893124987335

`A366388(A014692(n+1)+n)-A358729(n+1)`
-/

namespace A358726.P7138661893124987335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A014692 (n + 1) + (n : ℤ)).toNat - A358729 (n + 1)

end

end A358726.P7138661893124987335

/-!
# A358727: Matula-Goebel numbers of rooted trees with greater number of leaves (width) than node-height.

The programs for A358727, there is no canonical definition to state claims against.
-/

/-! ## A358727.P17316801135693561984

`lt[A358552(n+1), A109129(n+1)]+1`
-/

namespace A358727.P17316801135693561984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358727.P17316801135693561984

/-! ## A358727.P18429304686856081248

`lt[A342507(n+1), A358729(n+1)]+1`
-/

namespace A358727.P18429304686856081248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358727.P18429304686856081248

/-! ## A358727.P5840391580461681670

`A020725(lt[A342507(n+1), A358729(n+1)])`
-/

namespace A358727.P5840391580461681670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358727.P5840391580461681670

/-! ## A358727.P3182838689730155217

`lt[A358726(n+1), 0]+1`
-/

namespace A358727.P3182838689730155217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358727.P3182838689730155217

/-! ## A358727.P5543176990567369476

`A290822(lt[A182871(n+5), A182801(3*(n+1))])`
-/

namespace A358727.P5543176990567369476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182871 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358727.P5543176990567369476

/-!
# A358728: Number of n-node rooted trees whose node-height is less than their number of leaves.

The programs for A358728, there is no canonical definition to state claims against.
-/

/-! ## A358728.P17735161022282795034

`A360244(A291778(n))%A008705(n)`
-/

namespace A358728.P17735161022282795034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360244 (A291778 n).toNat) (A008705 n)

end

end A358728.P17735161022282795034

/-! ## A358728.P1056060404957756223

`A209315((A000007(n)+n)*A277041(n))`
-/

namespace A358728.P1056060404957756223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 ((A000007 n + (n : ℤ)) * A277041 n).toNat

end

end A358728.P1056060404957756223

/-! ## A358728.P10220576375517261461

`A329257(A250099(n+1)+A074664(n+1))`
-/

namespace A358728.P10220576375517261461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329257 (A250099 (n + 1) + A074664 (n + 1)).toNat

end

end A358728.P10220576375517261461

/-! ## A358728.P11581746697070767256

`A024317(A267800(2*n+1)+A262126(n))`
-/

namespace A358728.P11581746697070767256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A267800 (2 * n + 1) + A262126 n).toNat

end

end A358728.P11581746697070767256

/-! ## A358728.P14625243483094439652

`A276571(A296533(n))-A296533(A276571(n))`
-/

namespace A358728.P14625243483094439652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A296533 n).toNat - A296533 (A276571 n).toNat

end

end A358728.P14625243483094439652

/-!
# A358729: Difference between the number of nodes and the node-height of the rooted tree with Matula-Goebel number n.

The programs for A358729, there is no canonical definition to state claims against.
-/

/-! ## A358729.P14469414811249503562

`A196050(n+1)-A109082(n+1)`
-/

namespace A358729.P14469414811249503562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A109082 (n + 1)

end

end A358729.P14469414811249503562

/-! ## A358729.P11824457847340146436

`A061775(n+1)-A358552(n+1)`
-/

namespace A358729.P11824457847340146436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A358552 (n + 1)

end

end A358729.P11824457847340146436

/-! ## A358729.P3764951770625510625

`A061775(n+1)-(A109082(n+1)+1)`
-/

namespace A358729.P3764951770625510625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - (A109082 (n + 1) + 1)

end

end A358729.P3764951770625510625

/-! ## A358729.P16901189084287496344

`A196050(n+1)+1-A358552(n+1)`
-/

namespace A358729.P16901189084287496344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A358552 (n + 1))

end

end A358729.P16901189084287496344

/-! ## A358729.P14046429524636568033

`A061775(n+1)-A109082(A000040(n+1))`
-/

namespace A358729.P14046429524636568033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A109082 (A000040 (n + 1)).toNat

end

end A358729.P14046429524636568033

/-! ## A358729.P11164605181848886888

`A072828(n+1)%A061775(n+1)-(A196058(A008593(n+1))-4)`
-/

namespace A358729.P11164605181848886888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A061775 (n + 1)) - (A196058 (A008593 (n + 1)).toNat - 4)

end

end A358729.P11164605181848886888

/-! ## A358729.P14643493426565412597

`A196050(n+1)-A196058((n+1)²)/2`
-/

namespace A358729.P14643493426565412597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196050 (n + 1) : ℚ) - (A196058 ((n + 1) ^ 2) : ℚ) / 2

end

end A358729.P14643493426565412597

/-! ## A358729.P1673138972241224598

`A342507(n+1)-A358726(n+1)`
-/

namespace A358729.P1673138972241224598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A358726 (n + 1)

end

end A358729.P1673138972241224598

/-!
# A358730: Positions of first appearances in A358729 (number of nodes minus node-height).

The programs for A358730, there is no canonical definition to state claims against.
-/

/-! ## A358730.P5079383702818934296

`ogf((1+4x+5x^2+4x^3+3x^4+6x^5)/(1-3x^2))`
-/

namespace A358730.P5079383702818934296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 4, 3, 6] [1, 0, -3] n

end

end A358730.P5079383702818934296

/-! ## A358730.P13485994719893601889

`A003962(A334198(n))`
-/

namespace A358730.P13485994719893601889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (A334198 n).toNat

end

end A358730.P13485994719893601889

/-! ## A358730.P9475577787447187436

`A334198(A055646(n))`
-/

namespace A358730.P9475577787447187436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334198 (A055646 n).toNat

end

end A358730.P9475577787447187436

/-! ## A358730.P3782213171429247549

`A334198(A330336(n))`
-/

namespace A358730.P3782213171429247549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334198 (A330336 n).toNat

end

end A358730.P3782213171429247549

/-! ## A358730.P12042202221159940860

`A023443(A334198(n)+1)`
-/

namespace A358730.P12042202221159940860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A334198 n + 1).toNat

end

end A358730.P12042202221159940860

/-!
# A358731: Matula-Goebel numbers of rooted trees whose number of nodes is one more than their node-height.

The programs for A358731, there is no canonical definition to state claims against.
-/

/-! ## A358731.P6318552498238400606

`eq[1, A358729(n+1)]+1`
-/

namespace A358731.P6318552498238400606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358731.P6318552498238400606

/-! ## A358731.P3278859770206785941

`eq[1, A358729(A028310(n))]`
-/

namespace A358731.P3278859770206785941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358731.P3278859770206785941

/-! ## A358731.P18431912568753610097

`eq[1, A358729(A008578(n+1))]`
-/

namespace A358731.P18431912568753610097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358731.P18431912568753610097

/-! ## A358731.P14025646929784419738

`A020725(eq[1, A358729(n+1)])`
-/

namespace A358731.P14025646929784419738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358731.P14025646929784419738

/-! ## A358731.P15411752307433190594

`eq[1, A358729(A233583(n+1))]`
-/

namespace A358731.P15411752307433190594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358731.P15411752307433190594

/-!
# A358732: Number of labeled trees covering 2n nodes, half of which are leaves.

The programs for A358732, there is no canonical definition to state claims against.
-/

/-! ## A358732.P5334514531050523893

`4*A211402(A001844(n))`
-/

namespace A358732.P5334514531050523893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A211402 (A001844 n).toNat

end

end A358732.P5334514531050523893

/-! ## A358732.P17614224298691599293

`record[A000122(2*n+3)*A055302(n+1)]`
-/

namespace A358732.P17614224298691599293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n + 3) * A055302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358732.P17614224298691599293

/-!
# A358734: Number of down-steps (1,-1) among all n-length nondecreasing Dyck paths with air pockets.

The programs for A358734, there is no canonical definition to state claims against.
-/

/-! ## A358734.P5142631028275823930

`A276581(A323930(n+1))-A079955(n+1)`
-/

namespace A358734.P5142631028275823930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A323930 (n + 1)).toNat - A079955 (n + 1)

end

end A358734.P5142631028275823930

/-!
# A358737: a(n) is the greatest prime number dividing A359098(n).

The programs for A358737, there is no canonical definition to state claims against.
-/

/-! ## A358737.P8903579122672374813

`A006530(A359098(n+1))`
-/

namespace A358737.P8903579122672374813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A359098 (n + 1)).toNat

end

end A358737.P8903579122672374813

/-! ## A358737.P10915913364355148028

`A006530(A162672(A359651(n+1)))`
-/

namespace A358737.P10915913364355148028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A162672 (A359651 (n + 1)).toNat).toNat

end

end A358737.P10915913364355148028

/-! ## A358737.P6308735839728031477

`A070229(A359098(n+1))-A162672(A359651(n+1))`
-/

namespace A358737.P6308735839728031477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A359098 (n + 1)).toNat - A162672 (A359651 (n + 1)).toNat

end

end A358737.P6308735839728031477

/-! ## A358737.P6409873588695558980

`A025492(A002260(3*n+2)*A359098(n+1))`
-/

namespace A358737.P6409873588695558980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A002260 (3 * n + 2) * A359098 (n + 1)).toNat

end

end A358737.P6409873588695558980

/-! ## A358737.P1702106313298305526

`A025492(lcm(A061554(n+3), A359098(n+1)))`
-/

namespace A358737.P1702106313298305526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (Int.lcm (A061554 (n + 3)) (A359098 (n + 1)))

end

end A358737.P1702106313298305526

/-!
# A358738: Expansion of Sum_{k>=0} k! * ( x/(1 - k*x) )^k.

The programs for A358738, there is no canonical definition to state claims against.
-/

/-! ## A358738.P13187422779565312127

`A023055(A000670(n))`
-/

namespace A358738.P13187422779565312127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (A000670 n).toNat

end

end A358738.P13187422779565312127

/-! ## A358738.P1144200694070544132

`A023055(A276926(n))`
-/

namespace A358738.P1144200694070544132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (A276926 n).toNat

end

end A358738.P1144200694070544132

/-!
# A358739: Triangular array read by rows. T(n,k) is the number of n X n matrices A over F_2 such that Sum_{phi} nullity(phi(A)) = k where the sum is over all monic irreducible polynomials in F_2[x] that divide the characteristic polynomial of A, n >= 1, 1 <= k <= n.

The programs for A358739, there is no canonical definition to state claims against.
-/

/-! ## A358739.P9756877025535371814

`A086958(A026580(n))`
-/

namespace A358739.P9756877025535371814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086958 (A026580 n).toNat

end

end A358739.P9756877025535371814

/-!
# A358740: Expansion of Sum_{k>=0} k! * ( k * x/(1 - k*x) )^k.

The programs for A358740, there is no canonical definition to state claims against.
-/

/-! ## A358740.P10944369367048524603

`A251587(n)-A320858(A251587(n))`
-/

namespace A358740.P10944369367048524603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251587 n - A320858 (A251587 n).toNat

end

end A358740.P10944369367048524603

/-!
# A358741: Expansion of Sum_{k>=0} k! * ( k * x/(1 - x) )^k.

The programs for A358741, there is no canonical definition to state claims against.
-/

/-! ## A358741.P13926680361493349355

`A076610(A111491(n)-A124765(n))`
-/

namespace A358741.P13926680361493349355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (A111491 n - A124765 n).toNat

end

end A358741.P13926680361493349355

/-!
# A358742: First of three consecutive primes p,q,r such that p^3 + q^3 - r^3 is prime.

The programs for A358742, there is no canonical definition to state claims against.
-/

/-! ## A358742.P8216505044394690031

`p?[A064353(2*n+3)*A342779(2*n+1)]`
-/

namespace A358742.P8216505044394690031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * n + 3) * A342779 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358742.P8216505044394690031

/-! ## A358742.P4073822277534674589

`A023204(eq[A035100(3*n+5), A173201(n+1)])`
-/

namespace A358742.P4073822277534674589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A358742.P4073822277534674589

/-!
# A358743: First of three consecutive primes p,q,r such that p+q-r is prime.

The programs for A358743, there is no canonical definition to state claims against.
-/

/-! ## A358743.P5521959095612690559

`∩[A329131(A316413(n+4)), A005117(n+5)]`
-/

namespace A358743.P5521959095612690559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329131 (A316413 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358743.P5521959095612690559

/-! ## A358743.P11827198578303321702

`p?[lt[Δ[A285803(n+1)], 15]]`
-/

namespace A358743.P11827198578303321702
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A358743.P11827198578303321702

/-! ## A358743.P15892009141727771494

`p?[lt[1, Δ[A261350(2*(n+2))]]]`
-/

namespace A358743.P15892009141727771494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261350 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A358743.P15892009141727771494

/-! ## A358743.P12652981068830849593

`∩[A023236(n+1), A135777(n+1)]`
-/

namespace A358743.P12652981068830849593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358743.P12652981068830849593

/-!
# A358744: First of three consecutive primes p, q, r such that p + q - r, p^2 + q^2 - r^2 and p^3 + q^3 - r^3 are all prime.

The programs for A358744, there is no canonical definition to state claims against.
-/

/-! ## A358744.P6713386480558668516

`A255581(A280093(n)%A023204(2*n+3))`
-/

namespace A358744.P6713386480558668516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255581 (Int.tmod (A280093 n) (A023204 (2 * n + 3))).toNat

end

end A358744.P6713386480558668516

/-!
# A358745: a(n) is the least prime p that is the first of three consecutive primes p, q, r such that p^i + q^i - r^i is prime for i from 1 to n but not n+1.

The programs for A358745, there is no canonical definition to state claims against.
-/

/-! ## A358745.P9679556388302283843

`A006530(A003465(n)+A000400(n))`
-/

namespace A358745.P9679556388302283843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003465 n + A000400 n).toNat

end

end A358745.P9679556388302283843

/-!
# A358746: The number of vertices formed when every pair of n points, placed at the vertices of a regular n-gon, are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A358746, there is no canonical definition to state claims against.
-/

/-! ## A358746.P8852664180080988566

`A358783(n+2)-A358782(n+2)+1`
-/

namespace A358746.P8852664180080988566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2) - A358782 (n + 2) + 1

end

end A358746.P8852664180080988566

/-! ## A358746.P17237020467452310080

`A358783(n+2)-A023443(A358782(n+2))`
-/

namespace A358746.P17237020467452310080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2) - A023443 (A358782 (n + 2)).toNat

end

end A358746.P17237020467452310080

/-!
# A358747: Lexicographically earliest infinite sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = [A007814(n), A007949(n), A324198(n)] when n > 1, with f(1) = 1.

The programs for A358747, there is no canonical definition to state claims against.
-/

/-! ## A358747.P6123218308467115342

`A358230(n+1)%A003374(A236560(2*n+7))`
-/

namespace A358747.P6123218308467115342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358230 (n + 1)) (A003374 (A236560 (2 * n + 7)).toNat)

end

end A358747.P6123218308467115342

/-!
# A358748: Numbers k such that A358669(k) == 1 (mod 4).

The programs for A358748, there is no canonical definition to state claims against.
-/

/-! ## A358748.P4279311681586512463

`lt[0, A358758(n)]`
-/

namespace A358748.P4279311681586512463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358748.P4279311681586512463

/-! ## A358748.P14947179621060255242

`eq[A152822(n), A358759(n)]`
-/

namespace A358748.P14947179621060255242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358748.P14947179621060255242

/-! ## A358748.P12821700199255847884

`filter[A016825(n), A358758(#)]`
-/

namespace A358748.P12821700199255847884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P12821700199255847884

/-! ## A358748.P2201485107713481481

`filter[A073760(n+1), A358758(#)]`
-/

namespace A358748.P2201485107713481481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P2201485107713481481

/-! ## A358748.P5321851752363069237

`filter[A130824(n+1), A358758(#)]`
-/

namespace A358748.P5321851752363069237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P5321851752363069237

/-! ## A358748.P16178198042300410611

`filter[A133653(n+1), A358758(#)]`
-/

namespace A358748.P16178198042300410611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P16178198042300410611

/-! ## A358748.P8553542325129726800

`filter[A113127(n), A358758(#)]`
-/

namespace A358748.P8553542325129726800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P8553542325129726800

/-! ## A358748.P9084054766263596070

`filter[A111284(n+1), A358758(#)]`
-/

namespace A358748.P9084054766263596070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P9084054766263596070

/-! ## A358748.P1697259252102121962

`filter[A139544(n+1), A358758(#)]`
-/

namespace A358748.P1697259252102121962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P1697259252102121962

/-! ## A358748.P3737702716216357327

`filter[A102212(n+1), A358758(#)]`
-/

namespace A358748.P3737702716216357327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P3737702716216357327

/-! ## A358748.P2382457215958587914

`filter[A067368(n+1), A358758(#)]`
-/

namespace A358748.P2382457215958587914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P2382457215958587914

/-! ## A358748.P6197883842841036916

`filter[A095300(n+1), A358758(#)]`
-/

namespace A358748.P6197883842841036916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P6197883842841036916

/-! ## A358748.P11320242763696352964

`filter[A385723(n+1), A358758(#)]`
-/

namespace A358748.P11320242763696352964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P11320242763696352964

/-! ## A358748.P655908347059145335

`filter[A370597(n+1), A358758(#)]`
-/

namespace A358748.P655908347059145335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P655908347059145335

/-! ## A358748.P14043450462484419454

`filter[A276936(n+1), A358758(#)]`
-/

namespace A358748.P14043450462484419454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P14043450462484419454

/-! ## A358748.P95965291283485317

`filter[A260400(n+1), A358758(#)]`
-/

namespace A358748.P95965291283485317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P95965291283485317

/-! ## A358748.P12744562904129257085

`filter[A391845(n+1), A358758(#)]`
-/

namespace A358748.P12744562904129257085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P12744562904129257085

/-! ## A358748.P553127281304160727

`filter[A036554(n+1), A358758(#)]`
-/

namespace A358748.P553127281304160727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P553127281304160727

/-! ## A358748.P12105526732116620662

`filter[A345211(n+1), A358758(#)]`
-/

namespace A358748.P12105526732116620662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P12105526732116620662

/-! ## A358748.P12917236815790755229

`filter[A173773(n), A358758(#)]`
-/

namespace A358748.P12917236815790755229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j).toNat = 1) n)

end

end A358748.P12917236815790755229

/-!
# A358749: Numbers k such that A358669(k) == 3 (mod 4).

The programs for A358749, there is no canonical definition to state claims against.
-/

/-! ## A358749.P299210929632728178

`eq[1, A358759(n)]`
-/

namespace A358749.P299210929632728178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358749.P299210929632728178

/-! ## A358749.P15764743928202536770

`lt[6, 5^val(A358765(n)+1, 2)]`
-/

namespace A358749.P15764743928202536770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A358765 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358749.P15764743928202536770

/-! ## A358749.P2402015268471629723

`lt[1, A214546(A358765(n))]`
-/

namespace A358749.P2402015268471629723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A358765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358749.P2402015268471629723

/-! ## A358749.P12889682181189396477

`eq[A152822(n), A358758(n)]`
-/

namespace A358749.P12889682181189396477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358749.P12889682181189396477

/-! ## A358749.P8479978601407398154

`filter[A016825(n), A358759(#)]`
-/

namespace A358749.P8479978601407398154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P8479978601407398154

/-! ## A358749.P18321084616105707450

`filter[A130824(n), A358759(#)]`
-/

namespace A358749.P18321084616105707450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P18321084616105707450

/-! ## A358749.P12436568276390940037

`filter[A111284(n+1), A358759(#)]`
-/

namespace A358749.P12436568276390940037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P12436568276390940037

/-! ## A358749.P18014765229833422156

`filter[A139544(n+1), A358759(#)]`
-/

namespace A358749.P18014765229833422156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P18014765229833422156

/-! ## A358749.P9584408141639678988

`filter[A102212(n+1), A358759(#)]`
-/

namespace A358749.P9584408141639678988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P9584408141639678988

/-! ## A358749.P13318312017712528336

`filter[A067368(n+1), A358759(#)]`
-/

namespace A358749.P13318312017712528336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P13318312017712528336

/-! ## A358749.P3886416257790525860

`filter[A095300(n+1), A358759(#)]`
-/

namespace A358749.P3886416257790525860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P3886416257790525860

/-! ## A358749.P4409938923171656749

`filter[A385723(n+1), A358759(#)]`
-/

namespace A358749.P4409938923171656749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P4409938923171656749

/-! ## A358749.P4051234710238068383

`filter[A370597(n+1), A358759(#)]`
-/

namespace A358749.P4051234710238068383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P4051234710238068383

/-! ## A358749.P1193376420776996933

`filter[A276936(n+1), A358759(#)]`
-/

namespace A358749.P1193376420776996933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P1193376420776996933

/-! ## A358749.P16711793902821435325

`filter[A260400(n+1), A358759(#)]`
-/

namespace A358749.P16711793902821435325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P16711793902821435325

/-! ## A358749.P13678210219268557877

`filter[A391845(n+1), A358759(#)]`
-/

namespace A358749.P13678210219268557877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P13678210219268557877

/-! ## A358749.P15614845256491019719

`filter[A036554(n+1), A358759(#)]`
-/

namespace A358749.P15614845256491019719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P15614845256491019719

/-! ## A358749.P14773446483044982015

`filter[A345211(n+1), A358759(#)]`
-/

namespace A358749.P14773446483044982015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P14773446483044982015

/-! ## A358749.P2175686705585927637

`filter[A173773(n), A358759(#)]`
-/

namespace A358749.P2175686705585927637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P2175686705585927637

/-! ## A358749.P811620526495736066

`filter[A047395(n+1), A358759(#)]`
-/

namespace A358749.P811620526495736066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358759 (f1 j).toNat = 1) n)

end

end A358749.P811620526495736066

/-!
# A358750: a(n) = 1 if A349905(n) is a multiple of 4, otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

The programs for A358750, the canonical program `A358750.P15552411444014869718` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358750 has offset 1).

The definition of A358750 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A353494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358750.P18397553929312931965

`A065043(n+1)-A358752(n+1)`
-/

namespace A358750.P18397553929312931965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A358752 (n + 1)

end

end A358750.P18397553929312931965

namespace A358750

/-- `A065043(n+1)-A358752(n+1)` -/
def P18397553929312931965.Spec : Prop :=
  ∀ n, P18397553929312931965.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P15552411444014869718

`A353494(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358750

/-- `A353494(A003961(n+1))` -/
def P15552411444014869718.Spec : Prop :=
  ∀ n, P15552411444014869718.a n = A358750 (n + 1)

theorem P15552411444014869718.correct : P15552411444014869718.Spec := by
  intro n
  simp only [A358750, Nat.add_sub_cancel]

end A358750

/-! ## A358750.P1915347491847119451

`A121262(A349905(n+1))`
-/

namespace A358750.P1915347491847119451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A349905 (n + 1)).toNat

end

end A358750.P1915347491847119451

namespace A358750

/-- `A121262(A349905(n+1))` -/
def P1915347491847119451.Spec : Prop :=
  ∀ n, P1915347491847119451.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P13330090148407412579

`A358752(4*(n+1))`
-/

namespace A358750.P13330090148407412579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (4 * (n + 1))

end

end A358750.P13330090148407412579

namespace A358750

/-- `A358752(4*(n+1))` -/
def P13330090148407412579.Spec : Prop :=
  ∀ n, P13330090148407412579.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P4653354137772640603

`char[A358760(n+1)-1]`
-/

namespace A358750.P4653354137772640603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358760 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358750.P4653354137772640603

namespace A358750

/-- `char[A358760(n+1)-1]` -/
def P4653354137772640603.Spec : Prop :=
  ∀ n, (P4653354137772640603.a n : ℤ) = A358750 (n + 1)

end A358750

/-! ## A358750.P7939834734972646127

`A121262(A353571(n+1))`
-/

namespace A358750.P7939834734972646127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A353571 (n + 1)).toNat

end

end A358750.P7939834734972646127

namespace A358750

/-- `A121262(A353571(n+1))` -/
def P7939834734972646127.Spec : Prop :=
  ∀ n, P7939834734972646127.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P4566976130681966710

`1-(A358752(n+1)+A066829(n+1))`
-/

namespace A358750.P4566976130681966710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A358752 (n + 1) + A066829 (n + 1))

end

end A358750.P4566976130681966710

namespace A358750

/-- `1-(A358752(n+1)+A066829(n+1))` -/
def P4566976130681966710.Spec : Prop :=
  ∀ n, P4566976130681966710.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P15082755140803141695

`A010052(n+1)+A353669(n+1)-A358752(n+1)`
-/

namespace A358750.P15082755140803141695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + (A353669 (n + 1) - A358752 (n + 1))

end

end A358750.P15082755140803141695

namespace A358750

/-- `A010052(n+1)+A353669(n+1)-A358752(n+1)` -/
def P15082755140803141695.Spec : Prop :=
  ∀ n, P15082755140803141695.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P17931953700613869775

`A065043(n+1)-A353495(A003961(n+1))`
-/

namespace A358750.P17931953700613869775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353495 (A003961 (n + 1)).toNat

end

end A358750.P17931953700613869775

namespace A358750

/-- `A065043(n+1)-A353495(A003961(n+1))` -/
def P17931953700613869775.Spec : Prop :=
  ∀ n, P17931953700613869775.a n = A358750 (n + 1)

end A358750

/-! ## A358750.P6967614230438025025

`A065043(n+1)*A353494(A349905(n+1))`
-/

namespace A358750.P6967614230438025025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A353494 (A349905 (n + 1)).toNat

end

end A358750.P6967614230438025025

namespace A358750

/-- `A065043(n+1)*A353494(A349905(n+1))` -/
def P6967614230438025025.Spec : Prop :=
  ∀ n, P6967614230438025025.a n = A358750 (n + 1)

end A358750

/-!
# A358751: a(n) = 1 if bigomega(n) == 1 (mod 4), otherwise 0.

The programs for A358751, the canonical program `A358751.P1149310267110724188` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358751 has offset 1).

The definition of A358751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358751.P17066933016460754126

`A066829(n+1)-A358753(n+1)`
-/

namespace A358751.P17066933016460754126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A358753 (n + 1)

end

end A358751.P17066933016460754126

namespace A358751

/-- `A066829(n+1)-A358753(n+1)` -/
def P17066933016460754126.Spec : Prop :=
  ∀ n, P17066933016460754126.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P1149310267110724188

`A358771(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358751

/-- `A358771(A003961(n+1))` -/
def P1149310267110724188.Spec : Prop :=
  ∀ n, P1149310267110724188.a n = A358751 (n + 1)

theorem P1149310267110724188.correct : P1149310267110724188.Spec := by
  intro n
  simp only [A358751, Nat.add_sub_cancel]

end A358751

/-! ## A358751.P2517107152265429013

`A358753(4*(n+1))`
-/

namespace A358751.P2517107152265429013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (4 * (n + 1))

end

end A358751.P2517107152265429013

namespace A358751

/-- `A358753(4*(n+1))` -/
def P2517107152265429013.Spec : Prop :=
  ∀ n, P2517107152265429013.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P9297674127882931591

`val((A001222(n+1)+1)%4+1, 3)`
-/

namespace A358751.P9297674127882931591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A001222 (n + 1) + 1) 4 + 1).toNat 3

end

end A358751.P9297674127882931591

namespace A358751

/-- `val((A001222(n+1)+1)%4+1, 3)` -/
def P9297674127882931591.Spec : Prop :=
  ∀ n, (P9297674127882931591.a n : ℤ) = A358751 (n + 1)

end A358751

/-! ## A358751.P4825288573502470077

`A000292(Δ[A022559(n)])%2`
-/

namespace A358751.P4825288573502470077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (f1 (n + 1) - f1 n).toNat) 2

end

end A358751.P4825288573502470077

namespace A358751

/-- `A000292(Δ[A022559(n)])%2` -/
def P4825288573502470077.Spec : Prop :=
  ∀ n, P4825288573502470077.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P15564372804851068920

`A024166(Δ[A022559(n)])%2`
-/

namespace A358751.P15564372804851068920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024166 (f1 (n + 1) - f1 n).toNat) 2

end

end A358751.P15564372804851068920

namespace A358751

/-- `A024166(Δ[A022559(n)])%2` -/
def P15564372804851068920.Spec : Prop :=
  ∀ n, P15564372804851068920.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P5431922886380687758

`A348264(A001222(n+1)+1)`
-/

namespace A358751.P5431922886380687758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (A001222 (n + 1) + 1).toNat

end

end A358751.P5431922886380687758

namespace A358751

/-- `A348264(A001222(n+1)+1)` -/
def P5431922886380687758.Spec : Prop :=
  ∀ n, P5431922886380687758.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P259335784896119585

`A379966(A001222(n+1)+1)`
-/

namespace A358751.P259335784896119585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (A001222 (n + 1) + 1).toNat

end

end A358751.P259335784896119585

namespace A358751

/-- `A379966(A001222(n+1)+1)` -/
def P259335784896119585.Spec : Prop :=
  ∀ n, P259335784896119585.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P2720467278121588142

`A285495(A001222(n+1)+2)`
-/

namespace A358751.P2720467278121588142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (A001222 (n + 1) + 2).toNat

end

end A358751.P2720467278121588142

namespace A358751

/-- `A285495(A001222(n+1)+2)` -/
def P2720467278121588142.Spec : Prop :=
  ∀ n, P2720467278121588142.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P4754159099777997056

`1-A266344(A061142(n+1))`
-/

namespace A358751.P4754159099777997056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266344 (A061142 (n + 1)).toNat

end

end A358751.P4754159099777997056

namespace A358751

/-- `1-A266344(A061142(n+1))` -/
def P4754159099777997056.Spec : Prop :=
  ∀ n, P4754159099777997056.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P11826260195268086108

`A011765(A001222(n+1)+3)`
-/

namespace A358751.P11826260195268086108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A001222 (n + 1) + 3).toNat

end

end A358751.P11826260195268086108

namespace A358751

/-- `A011765(A001222(n+1)+3)` -/
def P11826260195268086108.Spec : Prop :=
  ∀ n, P11826260195268086108.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P8346573001220536544

`A121262(A001222(n+1)+3)`
-/

namespace A358751.P8346573001220536544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A001222 (n + 1) + 3).toNat

end

end A358751.P8346573001220536544

namespace A358751

/-- `A121262(A001222(n+1)+3)` -/
def P8346573001220536544.Spec : Prop :=
  ∀ n, P8346573001220536544.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P7023863181965982719

`A129251(A001222(n+1)+3)`
-/

namespace A358751.P7023863181965982719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A001222 (n + 1) + 3).toNat

end

end A358751.P7023863181965982719

namespace A358751

/-- `A129251(A001222(n+1)+3)` -/
def P7023863181965982719.Spec : Prop :=
  ∀ n, P7023863181965982719.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P1171443994155923505

`A093353(A015996(n+1))%2`
-/

namespace A358751.P1171443994155923505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093353 (A015996 (n + 1)).toNat) 2

end

end A358751.P1171443994155923505

namespace A358751

/-- `A093353(A015996(n+1))%2` -/
def P1171443994155923505.Spec : Prop :=
  ∀ n, P1171443994155923505.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P12713996695101282561

`A069513(or(12, A001222(n+1)))`
-/

namespace A358751.P12713996695101282561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (Int.lor 12 (A001222 (n + 1))).toNat

end

end A358751.P12713996695101282561

namespace A358751

/-- `A069513(or(12, A001222(n+1)))` -/
def P12713996695101282561.Spec : Prop :=
  ∀ n, P12713996695101282561.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P11400942295197128655

`A353373(or(68, A001222(n+1)))`
-/

namespace A358751.P11400942295197128655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (Int.lor 68 (A001222 (n + 1))).toNat

end

end A358751.P11400942295197128655

namespace A358751

/-- `A353373(or(68, A001222(n+1)))` -/
def P11400942295197128655.Spec : Prop :=
  ∀ n, P11400942295197128655.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P11877189673964650867

`A318673(4*(A001222(n+1)+1))`
-/

namespace A358751.P11877189673964650867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318673 (4 * (A001222 (n + 1) + 1)).toNat

end

end A358751.P11877189673964650867

namespace A358751

/-- `A318673(4*(A001222(n+1)+1))` -/
def P11877189673964650867.Spec : Prop :=
  ∀ n, P11877189673964650867.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P7555105465045502549

`A011765(A016003(n+1)+2)`
-/

namespace A358751.P7555105465045502549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A016003 (n + 1) + 2).toNat

end

end A358751.P7555105465045502549

namespace A358751

/-- `A011765(A016003(n+1)+2)` -/
def P7555105465045502549.Spec : Prop :=
  ∀ n, P7555105465045502549.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P6089315318517756222

`A011765(A016008(n+1)+2)`
-/

namespace A358751.P6089315318517756222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A016008 (n + 1) + 2).toNat

end

end A358751.P6089315318517756222

namespace A358751

/-- `A011765(A016008(n+1)+2)` -/
def P6089315318517756222.Spec : Prop :=
  ∀ n, P6089315318517756222.a n = A358751 (n + 1)

end A358751

/-! ## A358751.P3403208190982060037

`A165560(A003961(n+1))-A358753(n+1)`
-/

namespace A358751.P3403208190982060037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A003961 (n + 1)).toNat - A358753 (n + 1)

end

end A358751.P3403208190982060037

namespace A358751

/-- `A165560(A003961(n+1))-A358753(n+1)` -/
def P3403208190982060037.Spec : Prop :=
  ∀ n, P3403208190982060037.a n = A358751 (n + 1)

end A358751

/-!
# A358752: a(n) = 1 if A349905(n) == 2 (mod 4), otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

The programs for A358752, the canonical program `A358752.P5898709040952930086` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358752 has offset 1).

The definition of A358752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A358750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358752.P5898709040952930086

`A065043(n+1)-A358750(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358752

/-- `A065043(n+1)-A358750(n+1)` -/
def P5898709040952930086.Spec : Prop :=
  ∀ n, P5898709040952930086.a n = A358752 (n + 1)

theorem P5898709040952930086.correct : P5898709040952930086.Spec := by
  intro n
  simp only [A358752, Nat.add_sub_cancel]

end A358752

/-! ## A358752.P9993035913971055106

`A353495(A003961(n+1))`
-/

namespace A358752.P9993035913971055106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A003961 (n + 1)).toNat

end

end A358752.P9993035913971055106

namespace A358752

/-- `A353495(A003961(n+1))` -/
def P9993035913971055106.Spec : Prop :=
  ∀ n, P9993035913971055106.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P13424298731569349026

`1-A152822(A349905(n+1))`
-/

namespace A358752.P13424298731569349026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 (A349905 (n + 1)).toNat

end

end A358752.P13424298731569349026

namespace A358752

/-- `1-A152822(A349905(n+1))` -/
def P13424298731569349026.Spec : Prop :=
  ∀ n, P13424298731569349026.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P15841349885456941331

`A358750(4*(n+1))`
-/

namespace A358752.P15841349885456941331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (4 * (n + 1))

end

end A358752.P15841349885456941331

namespace A358752

/-- `A358750(4*(n+1))` -/
def P15841349885456941331.Spec : Prop :=
  ∀ n, P15841349885456941331.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P13961986066000277592

`A121262(A353571(n+1)+2)`
-/

namespace A358752.P13961986066000277592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A353571 (n + 1) + 2).toNat

end

end A358752.P13961986066000277592

namespace A358752

/-- `A121262(A353571(n+1)+2)` -/
def P13961986066000277592.Spec : Prop :=
  ∀ n, P13961986066000277592.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P3393508332044983890

`A353495(A045965(n+1))`
-/

namespace A358752.P3393508332044983890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A045965 (n + 1)).toNat

end

end A358752.P3393508332044983890

namespace A358752

/-- `A353495(A045965(n+1))` -/
def P3393508332044983890.Spec : Prop :=
  ∀ n, P3393508332044983890.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P10235318577792252315

`A065043(n+1)-A353494(A003961(n+1))`
-/

namespace A358752.P10235318577792252315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353494 (A003961 (n + 1)).toNat

end

end A358752.P10235318577792252315

namespace A358752

/-- `A065043(n+1)-A353494(A003961(n+1))` -/
def P10235318577792252315.Spec : Prop :=
  ∀ n, P10235318577792252315.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P10017210045319286978

`1-A353494(A065043(n+1)*A349905(n+1))`
-/

namespace A358752.P10017210045319286978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353494 (A065043 (n + 1) * A349905 (n + 1)).toNat

end

end A358752.P10017210045319286978

namespace A358752

/-- `1-A353494(A065043(n+1)*A349905(n+1))` -/
def P10017210045319286978.Spec : Prop :=
  ∀ n, P10017210045319286978.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P8104596930607634571

`A121262(A349905(n+1)+2)`
-/

namespace A358752.P8104596930607634571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A349905 (n + 1) + 2).toNat

end

end A358752.P8104596930607634571

namespace A358752

/-- `A121262(A349905(n+1)+2)` -/
def P8104596930607634571.Spec : Prop :=
  ∀ n, P8104596930607634571.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P13940740582233004060

`A065043(n+1)*A353494(A349905(n+1)+2)`
-/

namespace A358752.P13940740582233004060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A353494 (A349905 (n + 1) + 2).toNat

end

end A358752.P13940740582233004060

namespace A358752

/-- `A065043(n+1)*A353494(A349905(n+1)+2)` -/
def P13940740582233004060.Spec : Prop :=
  ∀ n, P13940740582233004060.a n = A358752 (n + 1)

end A358752

/-! ## A358752.P8138302487232712233

`A358750((n+1)²)-A358750(n+1)`
-/

namespace A358752.P8138302487232712233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 ((n + 1) ^ 2) - A358750 (n + 1)

end

end A358752.P8138302487232712233

namespace A358752

/-- `A358750((n+1)²)-A358750(n+1)` -/
def P8138302487232712233.Spec : Prop :=
  ∀ n, P8138302487232712233.a n = A358752 (n + 1)

end A358752

/-!
# A358753: a(n) = 1 if bigomega(n) == 3 (mod 4), otherwise 0.

The programs for A358753, the canonical program `A358753.P12282633013976382741` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358753 has offset 1).

The definition of A358753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A358751, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358753.P12282633013976382741

`A066829(n+1)-A358751(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358753

/-- `A066829(n+1)-A358751(n+1)` -/
def P12282633013976382741.Spec : Prop :=
  ∀ n, P12282633013976382741.a n = A358753 (n + 1)

theorem P12282633013976382741.correct : P12282633013976382741.Spec := by
  intro n
  simp only [A358753, Nat.add_sub_cancel]

end A358753

/-! ## A358753.P7059666749359229547

`A358773(A003961(n+1))`
-/

namespace A358753.P7059666749359229547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (A003961 (n + 1)).toNat

end

end A358753.P7059666749359229547

namespace A358753

/-- `A358773(A003961(n+1))` -/
def P7059666749359229547.Spec : Prop :=
  ∀ n, P7059666749359229547.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P10875704868055958889

`val(∑{e}[n+1, #]+1, 4)`
-/

namespace A358753.P10875704868055958889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) 4

end

end A358753.P10875704868055958889

namespace A358753

/-- `val(∑{e}[n+1, #]+1, 4)` -/
def P10875704868055958889.Spec : Prop :=
  ∀ n, (P10875704868055958889.a n : ℤ) = A358753 (n + 1)

end A358753

/-! ## A358753.P10909662549316913458

`C(∑{e}[n+1, #], 3)%2`
-/

namespace A358753.P10909662549316913458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) 3 % 2

end

end A358753.P10909662549316913458

namespace A358753

/-- `C(∑{e}[n+1, #], 3)%2` -/
def P10909662549316913458.Spec : Prop :=
  ∀ n, (P10909662549316913458.a n : ℤ) = A358753 (n + 1)

end A358753

/-! ## A358753.P11139166360834290179

`A358751(4*(n+1))`
-/

namespace A358753.P11139166360834290179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358751 (4 * (n + 1))

end

end A358753.P11139166360834290179

namespace A358753

/-- `A358751(4*(n+1))` -/
def P11139166360834290179.Spec : Prop :=
  ∀ n, P11139166360834290179.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P15140110330437018521

`val(A073093(n+1), 4)`
-/

namespace A358753.P15140110330437018521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073093 (n + 1)).toNat 4

end

end A358753.P15140110330437018521

namespace A358753

/-- `val(A073093(n+1), 4)` -/
def P15140110330437018521.Spec : Prop :=
  ∀ n, (P15140110330437018521.a n : ℤ) = A358753 (n + 1)

end A358753

/-! ## A358753.P8846741824549676970

`char[A358763(n+1)-1]`
-/

namespace A358753.P8846741824549676970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358753.P8846741824549676970

namespace A358753

/-- `char[A358763(n+1)-1]` -/
def P8846741824549676970.Spec : Prop :=
  ∀ n, (P8846741824549676970.a n : ℤ) = A358753 (n + 1)

end A358753

/-! ## A358753.P510591302468523726

`val(A001222(n+1)+1, 4)`
-/

namespace A358753.P510591302468523726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001222 (n + 1) + 1).toNat 4

end

end A358753.P510591302468523726

namespace A358753

/-- `val(A001222(n+1)+1, 4)` -/
def P510591302468523726.Spec : Prop :=
  ∀ n, (P510591302468523726.a n : ℤ) = A358753 (n + 1)

end A358753

/-! ## A358753.P15573385778540189901

`A011692(A061142(n+1))`
-/

namespace A358753.P15573385778540189901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011692 (A061142 (n + 1)).toNat

end

end A358753.P15573385778540189901

namespace A358753

/-- `A011692(A061142(n+1))` -/
def P15573385778540189901.Spec : Prop :=
  ∀ n, P15573385778540189901.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P410290499743968385

`A121262(A001222(n+1)+1)`
-/

namespace A358753.P410290499743968385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A001222 (n + 1) + 1).toNat

end

end A358753.P410290499743968385

namespace A358753

/-- `A121262(A001222(n+1)+1)` -/
def P410290499743968385.Spec : Prop :=
  ∀ n, P410290499743968385.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P11555511473102673405

`A129251(A001222(n+1)+1)`
-/

namespace A358753.P11555511473102673405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A001222 (n + 1) + 1).toNat

end

end A358753.P11555511473102673405

namespace A358753

/-- `A129251(A001222(n+1)+1)` -/
def P11555511473102673405.Spec : Prop :=
  ∀ n, P11555511473102673405.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P4427335302321002434

`A331169(A001222(n+1)+1)`
-/

namespace A358753.P4427335302321002434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (A001222 (n + 1) + 1).toNat

end

end A358753.P4427335302321002434

namespace A358753

/-- `A331169(A001222(n+1)+1)` -/
def P4427335302321002434.Spec : Prop :=
  ∀ n, P4427335302321002434.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P3027819942702761183

`A018252(A001222(n+1)+2)%2`
-/

namespace A358753.P3027819942702761183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A001222 (n + 1) + 2).toNat) 2

end

end A358753.P3027819942702761183

namespace A358753

/-- `A018252(A001222(n+1)+2)%2` -/
def P3027819942702761183.Spec : Prop :=
  ∀ n, P3027819942702761183.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P6892968537718501126

`A011765(A016003(n+1))`
-/

namespace A358753.P6892968537718501126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A016003 (n + 1)).toNat

end

end A358753.P6892968537718501126

namespace A358753

/-- `A011765(A016003(n+1))` -/
def P6892968537718501126.Spec : Prop :=
  ∀ n, P6892968537718501126.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P8142596610005558313

`A011765(A016008(n+1))`
-/

namespace A358753.P8142596610005558313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A016008 (n + 1)).toNat

end

end A358753.P8142596610005558313

namespace A358753

/-- `A011765(A016008(n+1))` -/
def P8142596610005558313.Spec : Prop :=
  ∀ n, P8142596610005558313.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P16908343162635488179

`A121262(A349905(n+1)+1)`
-/

namespace A358753.P16908343162635488179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A349905 (n + 1) + 1).toNat

end

end A358753.P16908343162635488179

namespace A358753

/-- `A121262(A349905(n+1)+1)` -/
def P16908343162635488179.Spec : Prop :=
  ∀ n, P16908343162635488179.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P6506509014453296673

`A115516(A001222((n+1)²))`
-/

namespace A358753.P6506509014453296673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (A001222 ((n + 1) ^ 2)).toNat

end

end A358753.P6506509014453296673

namespace A358753

/-- `A115516(A001222((n+1)²))` -/
def P6506509014453296673.Spec : Prop :=
  ∀ n, P6506509014453296673.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P16615391905084681899

`A215020(A130675(n+1))`
-/

namespace A358753.P16615391905084681899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (A130675 (n + 1)).toNat

end

end A358753.P16615391905084681899

namespace A358753

/-- `A215020(A130675(n+1))` -/
def P16615391905084681899.Spec : Prop :=
  ∀ n, P16615391905084681899.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P9365850910255966112

`A288729(A001222(n+1)!)`
-/

namespace A358753.P9365850910255966112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (Nat.factorial (A001222 (n + 1)).toNat)

end

end A358753.P9365850910255966112

namespace A358753

/-- `A288729(A001222(n+1)!)` -/
def P9365850910255966112.Spec : Prop :=
  ∀ n, P9365850910255966112.a n = A358753 (n + 1)

end A358753

/-! ## A358753.P5909657352182557093

`A358773(A357852(n+1))`
-/

namespace A358753.P5909657352182557093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (A357852 (n + 1)).toNat

end

end A358753.P5909657352182557093

namespace A358753

/-- `A358773(A357852(n+1))` -/
def P5909657352182557093.Spec : Prop :=
  ∀ n, P5909657352182557093.a n = A358753 (n + 1)

end A358753

/-!
# A358754: a(n) = 1 if A053669(n) [the smallest prime not dividing n] is of the form 6m+1, otherwise a(n) = 0.

The programs for A358754, there is no canonical definition to state claims against.
-/

/-! ## A358754.P8734135004152904107

`val(A071222(n), 3)`
-/

namespace A358754.P8734135004152904107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071222 n).toNat 3

end

end A358754.P8734135004152904107

/-! ## A358754.P5027811902816669645

`A007949(A053669(n+1)+A007494(n))`
-/

namespace A358754.P5027811902816669645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A053669 (n + 1) + A007494 n).toNat

end

end A358754.P5027811902816669645

/-! ## A358754.P9471669857538480389

`A014081(val(A049345(n+1), 10))`
-/

namespace A358754.P9471669857538480389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.valuation (A049345 (n + 1)).toNat 10)

end

end A358754.P9471669857538480389

/-! ## A358754.P17754252380967354125

`and(1, A330607(A329900(n+1)))`
-/

namespace A358754.P17754252380967354125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A330607 (A329900 (n + 1)).toNat)

end

end A358754.P17754252380967354125

/-! ## A358754.P17579412506678441748

`val(A017281(A232503(3*(n+1))), A053669(n+1))`
-/

namespace A358754.P17579412506678441748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A017281 (A232503 (3 * (n + 1))).toNat).toNat (A053669 (n + 1)).toNat

end

end A358754.P17579412506678441748

/-! ## A358754.P4122659620101889900

`A108964(Δ[A276154(n)]²)`
-/

namespace A358754.P4122659620101889900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A358754.P4122659620101889900

/-! ## A358754.P6085323094575005976

`A336118(A328479(n+1))^A098859(n)`
-/

namespace A358754.P6085323094575005976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336118 (A328479 (n + 1)).toNat : ℚ) ^ (A098859 n : ℤ)

end

end A358754.P6085323094575005976

/-! ## A358754.P5210245114393526942

`A336118(A328479(n+1))^A163511(n)`
-/

namespace A358754.P5210245114393526942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336118 (A328479 (n + 1)).toNat : ℚ) ^ (A163511 n : ℤ)

end

end A358754.P5210245114393526942

/-! ## A358754.P11743738079248389539

`A336118(A328479(n+1))^A074384(n+1)`
-/

namespace A358754.P11743738079248389539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336118 (A328479 (n + 1)).toNat : ℚ) ^ (A074384 (n + 1) : ℤ)

end

end A358754.P11743738079248389539

/-! ## A358754.P14909619815518076500

`A336118(A328479(n+1))^A114043(n+1)`
-/

namespace A358754.P14909619815518076500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336118 (A328479 (n + 1)).toNat : ℚ) ^ (A114043 (n + 1) : ℤ)

end

end A358754.P14909619815518076500

/-! ## A358754.P10432795211757608581

`val(A041907(n), 9)`
-/

namespace A358754.P10432795211757608581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A041907 n).toNat 9

end

end A358754.P10432795211757608581

/-! ## A358754.P17682311715388132503

`val(A042465(n), 9)`
-/

namespace A358754.P17682311715388132503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A042465 n).toNat 9

end

end A358754.P17682311715388132503

/-! ## A358754.P449246504736358834

`C(A002262(A286142(n+1)), 4)`
-/

namespace A358754.P449246504736358834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A286142 (n + 1)).toNat).toNat 4

end

end A358754.P449246504736358834

/-!
# A358755: 

The programs for A358755, there is no canonical definition to state claims against.
-/

/-! ## A358755.P7083100884826010700

`and(n², A257993(n+1))`
-/

namespace A358755.P7083100884826010700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A257993 (n + 1))

end

end A358755.P7083100884826010700

/-! ## A358755.P13715269399696238422

`A120325(A257993(n+1)+n)`
-/

namespace A358755.P13715269399696238422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A257993 (n + 1) + (n : ℤ)).toNat

end

end A358755.P13715269399696238422

/-! ## A358755.P13801361853707127701

`A230403(A257993(n+1)+n)`
-/

namespace A358755.P13801361853707127701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A257993 (n + 1) + (n : ℤ)).toNat

end

end A358755.P13801361853707127701

/-! ## A358755.P6447896125255953346

`A353525(A257993(n+1)+n)`
-/

namespace A358755.P6447896125255953346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353525 (A257993 (n + 1) + (n : ℤ)).toNat

end

end A358755.P6447896125255953346

/-! ## A358755.P17888719589721639691

`A000035(n-A276084(n+1))`
-/

namespace A358755.P17888719589721639691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A276084 (n + 1)).toNat

end

end A358755.P17888719589721639691

/-! ## A358755.P4699245162179173628

`A000035(n-A353525(n+1))`
-/

namespace A358755.P4699245162179173628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A353525 (n + 1)).toNat

end

end A358755.P4699245162179173628

/-! ## A358755.P5840678533914943009

`A120325(n*A276084(n+1))`
-/

namespace A358755.P5840678533914943009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 ((n : ℤ) * A276084 (n + 1)).toNat

end

end A358755.P5840678533914943009

/-! ## A358755.P10335221266391574174

`and(1, A276084(n+1)+A008454(n))`
-/

namespace A358755.P10335221266391574174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A276084 (n + 1) + A008454 n)

end

end A358755.P10335221266391574174

/-! ## A358755.P2996308471019688882

`and(1, A276084(n+1)+A016772(n))`
-/

namespace A358755.P2996308471019688882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A276084 (n + 1) + A016772 n)

end

end A358755.P2996308471019688882

/-! ## A358755.P16728024352328893065

`and(1, A276084(n+1)+A016796(n))`
-/

namespace A358755.P16728024352328893065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A276084 (n + 1) + A016796 n)

end

end A358755.P16728024352328893065

/-! ## A358755.P5350341349112249177

`A000035(A276084(n+1)+n)`
-/

namespace A358755.P5350341349112249177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A276084 (n + 1) + (n : ℤ)).toNat

end

end A358755.P5350341349112249177

/-! ## A358755.P768713900843059320

`A059841(A257993(n+1)+n)`
-/

namespace A358755.P768713900843059320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A257993 (n + 1) + (n : ℤ)).toNat

end

end A358755.P768713900843059320

/-! ## A358755.P3210319161181160420

`A000035(A353525(n+1)+n)`
-/

namespace A358755.P3210319161181160420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A353525 (n + 1) + (n : ℤ)).toNat

end

end A358755.P3210319161181160420

/-! ## A358755.P9212023347542193190

`A276084(A257993(n+1)+n)`
-/

namespace A358755.P9212023347542193190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A257993 (n + 1) + (n : ℤ)).toNat

end

end A358755.P9212023347542193190

/-! ## A358755.P5382814228398312809

`A276084(A276084(n+1)+n+1)`
-/

namespace A358755.P5382814228398312809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A276084 (n + 1) + (n + 1 : ℤ)).toNat

end

end A358755.P5382814228398312809

/-! ## A358755.P2857872623674498347

`A250777(n+1)%A257993(n+1)`
-/

namespace A358755.P2857872623674498347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250777 (n + 1)) (A257993 (n + 1))

end

end A358755.P2857872623674498347

/-! ## A358755.P5297304593641977819

`A245560(n)%A257993(n+1)`
-/

namespace A358755.P5297304593641977819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245560 n) (A257993 (n + 1))

end

end A358755.P5297304593641977819

/-! ## A358755.P14649497040026522308

`A339252(n)%A257993(n+1)`
-/

namespace A358755.P14649497040026522308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339252 n) (A257993 (n + 1))

end

end A358755.P14649497040026522308

/-!
# A358756: Numbers k such that the smallest prime that does not divide them is of the form 6m+1.

The programs for A358756, there is no canonical definition to state claims against.
-/

/-! ## A358756.P8117807575775237671

`filter[A008592(n+1), A358754(#)]`
-/

namespace A358756.P8117807575775237671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P8117807575775237671

/-! ## A358756.P3210503673436144678

`filter[A008597(n+1), A358754(#)]`
-/

namespace A358756.P3210503673436144678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P3210503673436144678

/-! ## A358756.P12898235726694057169

`filter[A079877(n+1), A358754(#)]`
-/

namespace A358756.P12898235726694057169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P12898235726694057169

/-! ## A358756.P6500805052994700718

`filter[A131933(n+1), A358754(#)]`
-/

namespace A358756.P6500805052994700718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P6500805052994700718

/-! ## A358756.P16523954061423414337

`filter[A226944(n+1), A358754(#)]`
-/

namespace A358756.P16523954061423414337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P16523954061423414337

/-! ## A358756.P17314588616344018839

`filter[A249674(n+1), A358754(#)]`
-/

namespace A358756.P17314588616344018839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P17314588616344018839

/-! ## A358756.P4562484166721418801

`filter[A378885(n+1), A358754(#)]`
-/

namespace A358756.P4562484166721418801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P4562484166721418801

/-! ## A358756.P13727926184666195350

`filter[A256883(n+2), A358754(#)]`
-/

namespace A358756.P13727926184666195350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P13727926184666195350

/-! ## A358756.P9412659811419661198

`filter[A267747(n+2), A358754(#)]`
-/

namespace A358756.P9412659811419661198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P9412659811419661198

/-! ## A358756.P3143711615951515332

`filter[A063311(n+3), A358754(#)]`
-/

namespace A358756.P3143711615951515332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P3143711615951515332

/-! ## A358756.P2398927974267949998

`filter[A370532(n+1), A358754(#)]`
-/

namespace A358756.P2398927974267949998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P2398927974267949998

/-! ## A358756.P4904301577139784746

`filter[A396948(n+1), A358754(#)]`
-/

namespace A358756.P4904301577139784746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P4904301577139784746

/-! ## A358756.P8358930096186796260

`filter[A069087(n+1), A358754(#)]`
-/

namespace A358756.P8358930096186796260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P8358930096186796260

/-! ## A358756.P10886734791987276956

`filter[A236327(n+1), A358754(#)]`
-/

namespace A358756.P10886734791987276956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P10886734791987276956

/-! ## A358756.P15859788443694280935

`filter[A195035(2*n+1), A358754(#)]`
-/

namespace A358756.P15859788443694280935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P15859788443694280935

/-! ## A358756.P14316640280168772742

`filter[A317315(n+1), A358754(#)]`
-/

namespace A358756.P14316640280168772742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P14316640280168772742

/-! ## A358756.P6388620987960752175

`filter[A186438(n+1), A358754(#)]`
-/

namespace A358756.P6388620987960752175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P6388620987960752175

/-! ## A358756.P16155892128492316713

`filter[A364462(n+1), A358754(#)]`
-/

namespace A358756.P16155892128492316713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358754 (f1 j).toNat = 1) n)

end

end A358756.P16155892128492316713

/-! ## A358756.P14852513277723044095

`filter[A008597(n+1), A353525(#)]`
-/

namespace A358756.P14852513277723044095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A358756.P14852513277723044095

/-! ## A358756.P8846548347777538957

`filter[A249674(n+1), A353525(#)]`
-/

namespace A358756.P8846548347777538957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A358756.P8846548347777538957

/-!
# A358757: Numbers k such that the smallest prime that does not divide them is of the form 6m-1.

The programs for A358757, there is no canonical definition to state claims against.
-/

/-! ## A358757.P8352494500240795570

`filter[A008458(n+1), A358847(#)]`
-/

namespace A358757.P8352494500240795570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A358757.P8352494500240795570

/-! ## A358757.P11015225068448491001

`filter[A008588(n+1), A358847(#)]`
-/

namespace A358757.P11015225068448491001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A358757.P11015225068448491001

/-!
# A358758: a(n) = 1 if A358669(n) == 1 (mod 4), otherwise 0.

The programs for A358758, there is no canonical definition to state claims against.
-/

/-! ## A358758.P4947629921832084329

`1-A152822(n)-A358759(n)`
-/

namespace A358758.P4947629921832084329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 n - A358759 n

end

end A358758.P4947629921832084329

/-! ## A358758.P12526374629810602815

`char[A358748(n+1)]`
-/

namespace A358758.P12526374629810602815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358758.P12526374629810602815

/-! ## A358758.P5296361362316919878

`A000292(A358765(n))%2`
-/

namespace A358758.P5296361362316919878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A358765 n).toNat) 2

end

end A358758.P5296361362316919878

/-! ## A358758.P9357831401401767182

`char[eq[A152822(n), A358759(n)]]`
-/

namespace A358758.P9357831401401767182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358759 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358758.P9357831401401767182

/-! ## A358758.P11895642744082098787

`A116377(8-val(A358765(n)+1, 2))`
-/

namespace A358758.P11895642744082098787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116377 (8 - SequenceMachineLib.valuation (A358765 n + 1).toNat 2)

end

end A358758.P11895642744082098787

/-! ## A358758.P7599900343794541927

`A356921((val(A358765(n)+1, 2)+2)²-1)`
-/

namespace A358758.P7599900343794541927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356921 ((SequenceMachineLib.valuation (A358765 n + 1).toNat 2 + 2) ^ 2 - 1)

end

end A358758.P7599900343794541927

/-! ## A358758.P4451893698757018418

`A059841(A358759(n)+A318516(n+2))`
-/

namespace A358758.P4451893698757018418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A358759 n + A318516 (n + 2)).toNat

end

end A358758.P4451893698757018418

/-! ## A358758.P7167610185310506296

`A121262(A358759(n)+A106612(3*n+2))`
-/

namespace A358758.P7167610185310506296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A358759 n + A106612 (3 * n + 2)).toNat

end

end A358758.P7167610185310506296

/-! ## A358758.P1909970536253114835

`A353528(A358759(n)+A047219(3*n+2))`
-/

namespace A358758.P1909970536253114835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353528 (A358759 n + A047219 (3 * n + 2)).toNat

end

end A358758.P1909970536253114835

/-!
# A358759: a(n) = 1 if A358669(n) == 3 (mod 4), otherwise 0.

The programs for A358759, there is no canonical definition to state claims against.
-/

/-! ## A358759.P3980569333545813938

`1-A152822(n)-A358758(n)`
-/

namespace A358759.P3980569333545813938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 n - A358758 n

end

end A358759.P3980569333545813938

/-! ## A358759.P6646356662870314820

`char[A358749(n+1)]`
-/

namespace A358759.P6646356662870314820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358759.P6646356662870314820

/-! ## A358759.P15393945084310461468

`A121262(A358765(n)+1)`
-/

namespace A358759.P15393945084310461468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A358765 n + 1).toNat

end

end A358759.P15393945084310461468

/-! ## A358759.P15703374351525927657

`char[eq[A152822(n), A358758(n)]]`
-/

namespace A358759.P15703374351525927657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358759.P15703374351525927657

/-! ## A358759.P9344075764635251568

`A121262(n+2)-A358758(n)`
-/

namespace A358759.P9344075764635251568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n + 2) - A358758 n

end

end A358759.P9344075764635251568

/-! ## A358759.P8164716235014590540

`A152822(A358765(n)+1)-A152822(n)`
-/

namespace A358759.P8164716235014590540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A358765 n + 1).toNat - A152822 n

end

end A358759.P8164716235014590540

/-! ## A358759.P12994985678047804781

`val(A076921(2*(n+1)+A358765(n)+1)+1, 2)`
-/

namespace A358759.P12994985678047804781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076921 ((2 * (n + 1) : ℤ) + (A358765 n + 1)).toNat + 1).toNat 2

end

end A358759.P12994985678047804781

/-! ## A358759.P17415349198725083331

`A000035(A002620(A358758(n)+n))`
-/

namespace A358759.P17415349198725083331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002620 (A358758 n + (n : ℤ)).toNat).toNat

end

end A358759.P17415349198725083331

/-! ## A358759.P5362744922465841902

`A000035(A002620(n)-A358758(n))`
-/

namespace A358759.P5362744922465841902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002620 n - A358758 n).toNat

end

end A358759.P5362744922465841902

/-! ## A358759.P16956079427034787084

`and(A097777(n), A271620(n))`
-/

namespace A358759.P16956079427034787084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097777 n) (A271620 n)

end

end A358759.P16956079427034787084

/-!
# A358760: Numbers k for which A349905(k) is a multiple of 4, where A349905(k) is the arithmetic derivative applied to the prime shifted k.

The programs for A358760, the canonical program `A358760.P11879687346543983601` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358760 has offset 1).

The definition of A358760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358760.P11879687346543983601

`lt[0, A358750(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358760

/-- `lt[0, A358750(n+1)]+1` -/
def P11879687346543983601.Spec : Prop :=
  ∀ n, (P11879687346543983601.a n : ℤ) = A358760 (n + 1)

theorem P11879687346543983601.correct : P11879687346543983601.Spec := by
  intro n
  simp only [A358760, Nat.add_sub_cancel]

end A358760

/-! ## A358760.P611488032795773257

`record[A000027(n+1)*A358750(n+1)]`
-/

namespace A358760.P611488032795773257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A358750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358760.P611488032795773257

namespace A358760

/-- `record[A000027(n+1)*A358750(n+1)]` -/
def P611488032795773257.Spec : Prop :=
  ∀ n, P611488032795773257.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P8794554290408366557

`eq[A066829(n+1), A358752(n+1)]+1`
-/

namespace A358760.P8794554290408366557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358760.P8794554290408366557

namespace A358760

/-- `eq[A066829(n+1), A358752(n+1)]+1` -/
def P8794554290408366557.Spec : Prop :=
  ∀ n, (P8794554290408366557.a n : ℤ) = A358760 (n + 1)

end A358760

/-! ## A358760.P17099707463683618585

`filter[A028260(n+1), A358750(#)]`
-/

namespace A358760.P17099707463683618585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P17099707463683618585

namespace A358760

/-- `filter[A028260(n+1), A358750(#)]` -/
def P17099707463683618585.Spec : Prop :=
  ∀ n, P17099707463683618585.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P5951024405252781343

`filter[A347450(n+1), A358750(#)]`
-/

namespace A358760.P5951024405252781343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P5951024405252781343

namespace A358760

/-- `filter[A347450(n+1), A358750(#)]` -/
def P5951024405252781343.Spec : Prop :=
  ∀ n, P5951024405252781343.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P15785805119204827487

`filter[A174891(n+1), A358750(#)]`
-/

namespace A358760.P15785805119204827487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P15785805119204827487

namespace A358760

/-- `filter[A174891(n+1), A358750(#)]` -/
def P15785805119204827487.Spec : Prop :=
  ∀ n, P15785805119204827487.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P14879850098318565673

`filter[A239289(n+1), A358750(#)]`
-/

namespace A358760.P14879850098318565673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P14879850098318565673

namespace A358760

/-- `filter[A239289(n+1), A358750(#)]` -/
def P14879850098318565673.Spec : Prop :=
  ∀ n, P14879850098318565673.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P1887771800991710159

`filter[A233182(n+1), A358750(#)]`
-/

namespace A358760.P1887771800991710159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P1887771800991710159

namespace A358760

/-- `filter[A233182(n+1), A358750(#)]` -/
def P1887771800991710159.Spec : Prop :=
  ∀ n, P1887771800991710159.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P9406938933397858707

`filter[A018252(n+1), A358750(#)]`
-/

namespace A358760.P9406938933397858707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P9406938933397858707

namespace A358760

/-- `filter[A018252(n+1), A358750(#)]` -/
def P9406938933397858707.Spec : Prop :=
  ∀ n, P9406938933397858707.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P3637839767510291722

`filter[A056653(n+1), A358750(#)]`
-/

namespace A358760.P3637839767510291722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P3637839767510291722

namespace A358760

/-- `filter[A056653(n+1), A358750(#)]` -/
def P3637839767510291722.Spec : Prop :=
  ∀ n, P3637839767510291722.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P5783145980333231251

`filter[A065090(n+1), A358750(#)]`
-/

namespace A358760.P5783145980333231251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P5783145980333231251

namespace A358760

/-- `filter[A065090(n+1), A358750(#)]` -/
def P5783145980333231251.Spec : Prop :=
  ∀ n, P5783145980333231251.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P18065999648587228710

`filter[A171581(n+1), A358750(#)]`
-/

namespace A358760.P18065999648587228710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P18065999648587228710

namespace A358760

/-- `filter[A171581(n+1), A358750(#)]` -/
def P18065999648587228710.Spec : Prop :=
  ∀ n, P18065999648587228710.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P8586076190466177435

`filter[A141468(n+2), A358750(#)]`
-/

namespace A358760.P8586076190466177435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P8586076190466177435

namespace A358760

/-- `filter[A141468(n+2), A358750(#)]` -/
def P8586076190466177435.Spec : Prop :=
  ∀ n, P8586076190466177435.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P10355739489891366824

`filter[A222307(2*n+1), A358750(#)]`
-/

namespace A358760.P10355739489891366824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P10355739489891366824

namespace A358760

/-- `filter[A222307(2*n+1), A358750(#)]` -/
def P10355739489891366824.Spec : Prop :=
  ∀ n, P10355739489891366824.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P9759385564898098922

`filter[A338924(n+1), A358750(#)]`
-/

namespace A358760.P9759385564898098922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P9759385564898098922

namespace A358760

/-- `filter[A338924(n+1), A358750(#)]` -/
def P9759385564898098922.Spec : Prop :=
  ∀ n, P9759385564898098922.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P16909911487865304715

`filter[A173905(n+2), A358750(#)]`
-/

namespace A358760.P16909911487865304715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P16909911487865304715

namespace A358760

/-- `filter[A173905(n+2), A358750(#)]` -/
def P16909911487865304715.Spec : Prop :=
  ∀ n, P16909911487865304715.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P6361912224576652057

`filter[A073900(n+1), A358750(#)]`
-/

namespace A358760.P6361912224576652057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P6361912224576652057

namespace A358760

/-- `filter[A073900(n+1), A358750(#)]` -/
def P6361912224576652057.Spec : Prop :=
  ∀ n, P6361912224576652057.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P9794751083554861472

`filter[A073899(n+1), A358750(#)]`
-/

namespace A358760.P9794751083554861472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P9794751083554861472

namespace A358760

/-- `filter[A073899(n+1), A358750(#)]` -/
def P9794751083554861472.Spec : Prop :=
  ∀ n, P9794751083554861472.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P795222549104184115

`filter[A171085(n+1), A358750(#)]`
-/

namespace A358760.P795222549104184115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P795222549104184115

namespace A358760

/-- `filter[A171085(n+1), A358750(#)]` -/
def P795222549104184115.Spec : Prop :=
  ∀ n, P795222549104184115.a n = A358760 (n + 1)

end A358760

/-! ## A358760.P17071309665744841730

`filter[A121543(n+1), A358750(#)]`
-/

namespace A358760.P17071309665744841730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A358760.P17071309665744841730

namespace A358760

/-- `filter[A121543(n+1), A358750(#)]` -/
def P17071309665744841730.Spec : Prop :=
  ∀ n, P17071309665744841730.a n = A358760 (n + 1)

end A358760

/-!
# A358761: Numbers k for which bigomega(k) == 1 (mod 4).

The programs for A358761, the canonical program `A358761.P14181454647241698145` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358761 has offset 1).

The definition of A358761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358761.P14181454647241698145

`eq[1, A358751(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358761

/-- `eq[1, A358751(n+1)]+1` -/
def P14181454647241698145.Spec : Prop :=
  ∀ n, (P14181454647241698145.a n : ℤ) = A358761 (n + 1)

theorem P14181454647241698145.correct : P14181454647241698145.Spec := by
  intro n
  simp only [A358761, Nat.add_sub_cancel]

end A358761

/-! ## A358761.P13762956978900498724

`eq[1, A001222(n+1)%4]+1`
-/

namespace A358761.P13762956978900498724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358761.P13762956978900498724

namespace A358761

/-- `eq[1, A001222(n+1)%4]+1` -/
def P13762956978900498724.Spec : Prop :=
  ∀ n, (P13762956978900498724.a n : ℤ) = A358761 (n + 1)

end A358761

/-! ## A358761.P12926020649625941786

`eq[1, A010873(A001222(n+1))]+1`
-/

namespace A358761.P12926020649625941786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358761.P12926020649625941786

namespace A358761

/-- `eq[1, A010873(A001222(n+1))]+1` -/
def P12926020649625941786.Spec : Prop :=
  ∀ n, (P12926020649625941786.a n : ℤ) = A358761 (n + 1)

end A358761

/-! ## A358761.P8245781064177621377

`eq[1, val(A001222(3*(n+1)), 2)]+1`
-/

namespace A358761.P8245781064177621377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001222 (3 * (n + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358761.P8245781064177621377

namespace A358761

/-- `eq[1, val(A001222(3*(n+1)), 2)]+1` -/
def P8245781064177621377.Spec : Prop :=
  ∀ n, (P8245781064177621377.a n : ℤ) = A358761 (n + 1)

end A358761

/-! ## A358761.P13605543154574060564

`filter[A026424(n+1), A358751(#)]`
-/

namespace A358761.P13605543154574060564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P13605543154574060564

namespace A358761

/-- `filter[A026424(n+1), A358751(#)]` -/
def P13605543154574060564.Spec : Prop :=
  ∀ n, P13605543154574060564.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P18181231196575704776

`filter[A026422(n+1), A358751(#)]`
-/

namespace A358761.P18181231196575704776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P18181231196575704776

namespace A358761

/-- `filter[A026422(n+1), A358751(#)]` -/
def P18181231196575704776.Spec : Prop :=
  ∀ n, P18181231196575704776.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P14836952081131657639

`filter[A344609(n+1), A358751(#)]`
-/

namespace A358761.P14836952081131657639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P14836952081131657639

namespace A358761

/-- `filter[A344609(n+1), A358751(#)]` -/
def P14836952081131657639.Spec : Prop :=
  ∀ n, P14836952081131657639.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P18312245841135718389

`filter[A084384(n+1), A358751(#)]`
-/

namespace A358761.P18312245841135718389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P18312245841135718389

namespace A358761

/-- `filter[A084384(n+1), A358751(#)]` -/
def P18312245841135718389.Spec : Prop :=
  ∀ n, P18312245841135718389.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P547330662545980466

`filter[A359766(n+1), A358751(#)]`
-/

namespace A358761.P547330662545980466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P547330662545980466

namespace A358761

/-- `filter[A359766(n+1), A358751(#)]` -/
def P547330662545980466.Spec : Prop :=
  ∀ n, P547330662545980466.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P12469311150646530917

`filter[A371782(n+1), A358751(#)]`
-/

namespace A358761.P12469311150646530917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P12469311150646530917

namespace A358761

/-- `filter[A371782(n+1), A358751(#)]` -/
def P12469311150646530917.Spec : Prop :=
  ∀ n, P12469311150646530917.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P10942145468759866705

`filter[A374473(n+1), A358751(#)]`
-/

namespace A358761.P10942145468759866705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P10942145468759866705

namespace A358761

/-- `filter[A374473(n+1), A358751(#)]` -/
def P10942145468759866705.Spec : Prop :=
  ∀ n, P10942145468759866705.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P5960587196026737373

`filter[A100959(n+1), A358751(#)]`
-/

namespace A358761.P5960587196026737373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P5960587196026737373

namespace A358761

/-- `filter[A100959(n+1), A358751(#)]` -/
def P5960587196026737373.Spec : Prop :=
  ∀ n, P5960587196026737373.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P7890172462509508774

`filter[A210994(n+1), A358751(#)]`
-/

namespace A358761.P7890172462509508774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P7890172462509508774

namespace A358761

/-- `filter[A210994(n+1), A358751(#)]` -/
def P7890172462509508774.Spec : Prop :=
  ∀ n, P7890172462509508774.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P15023973213950590986

`filter[A246716(n+1), A358751(#)]`
-/

namespace A358761.P15023973213950590986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P15023973213950590986

namespace A358761

/-- `filter[A246716(n+1), A358751(#)]` -/
def P15023973213950590986.Spec : Prop :=
  ∀ n, P15023973213950590986.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P12467681553889196591

`filter[A239289(n+1), A358751(#)]`
-/

namespace A358761.P12467681553889196591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P12467681553889196591

namespace A358761

/-- `filter[A239289(n+1), A358751(#)]` -/
def P12467681553889196591.Spec : Prop :=
  ∀ n, P12467681553889196591.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P14817023815151341280

`filter[A253567(n+1), A358751(#)]`
-/

namespace A358761.P14817023815151341280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P14817023815151341280

namespace A358761

/-- `filter[A253567(n+1), A358751(#)]` -/
def P14817023815151341280.Spec : Prop :=
  ∀ n, P14817023815151341280.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P8538265156200302247

`filter[A069149(n+1), A358751(#)]`
-/

namespace A358761.P8538265156200302247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P8538265156200302247

namespace A358761

/-- `filter[A069149(n+1), A358751(#)]` -/
def P8538265156200302247.Spec : Prop :=
  ∀ n, P8538265156200302247.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P9966495449239655282

`filter[A000037(n+1), A358751(#)]`
-/

namespace A358761.P9966495449239655282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P9966495449239655282

namespace A358761

/-- `filter[A000037(n+1), A358751(#)]` -/
def P9966495449239655282.Spec : Prop :=
  ∀ n, P9966495449239655282.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P16461624410014644141

`filter[A014089(n+1), A358751(#)]`
-/

namespace A358761.P16461624410014644141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A358761.P16461624410014644141

namespace A358761

/-- `filter[A014089(n+1), A358751(#)]` -/
def P16461624410014644141.Spec : Prop :=
  ∀ n, P16461624410014644141.a n = A358761 (n + 1)

end A358761

/-! ## A358761.P966742308558469403

`filter[n+1, A358751(#)]`
-/

namespace A358761.P966742308558469403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j) = 1) n)

end

end A358761.P966742308558469403

namespace A358761

/-- `filter[n+1, A358751(#)]` -/
def P966742308558469403.Spec : Prop :=
  ∀ n, (P966742308558469403.a n : ℤ) = A358761 (n + 1)

end A358761

/-!
# A358762: Numbers k for which A349905(k) == 2 (mod 4), where A349905(k) is the arithmetic derivative applied to the prime shifted k.

The programs for A358762, the canonical program `A358762.P10521575438364069808` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358762 has offset 1).

The definition of A358762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358762.P10521575438364069808

`lt[0, A358752(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358762

/-- `lt[0, A358752(n+1)]+1` -/
def P10521575438364069808.Spec : Prop :=
  ∀ n, (P10521575438364069808.a n : ℤ) = A358762 (n + 1)

theorem P10521575438364069808.correct : P10521575438364069808.Spec := by
  intro n
  simp only [A358762, Nat.add_sub_cancel]

end A358762

/-! ## A358762.P13473734778440402784

`eq[1, A358752(n+2)]+2`
-/

namespace A358762.P13473734778440402784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A358762.P13473734778440402784

namespace A358762

/-- `eq[1, A358752(n+2)]+2` -/
def P13473734778440402784.Spec : Prop :=
  ∀ n, (P13473734778440402784.a n : ℤ) = A358762 (n + 1)

end A358762

/-! ## A358762.P5723318686007046217

`eq[1, A358750(4*(n+1))]+1`
-/

namespace A358762.P5723318686007046217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358762.P5723318686007046217

namespace A358762

/-- `eq[1, A358750(4*(n+1))]+1` -/
def P5723318686007046217.Spec : Prop :=
  ∀ n, (P5723318686007046217.a n : ℤ) = A358762 (n + 1)

end A358762

/-! ## A358762.P11902663070958937119

`filter[A028260(n+1), A358752(#)]`
-/

namespace A358762.P11902663070958937119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P11902663070958937119

namespace A358762

/-- `filter[A028260(n+1), A358752(#)]` -/
def P11902663070958937119.Spec : Prop :=
  ∀ n, P11902663070958937119.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P5735084899875508809

`filter[A347450(n+1), A358752(#)]`
-/

namespace A358762.P5735084899875508809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P5735084899875508809

namespace A358762

/-- `filter[A347450(n+1), A358752(#)]` -/
def P5735084899875508809.Spec : Prop :=
  ∀ n, P5735084899875508809.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P5183013069786404460

`lt[A358750(n+1), A353555(4*(n+1))]+1`
-/

namespace A358762.P5183013069786404460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358762.P5183013069786404460

namespace A358762

/-- `lt[A358750(n+1), A353555(4*(n+1))]+1` -/
def P5183013069786404460.Spec : Prop :=
  ∀ n, (P5183013069786404460.a n : ℤ) = A358762 (n + 1)

end A358762

/-! ## A358762.P11164439363813930970

`filter[A174891(n+1), A358752(#)]`
-/

namespace A358762.P11164439363813930970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P11164439363813930970

namespace A358762

/-- `filter[A174891(n+1), A358752(#)]` -/
def P11164439363813930970.Spec : Prop :=
  ∀ n, P11164439363813930970.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P10529183575628058893

`filter[A239289(n+1), A358752(#)]`
-/

namespace A358762.P10529183575628058893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P10529183575628058893

namespace A358762

/-- `filter[A239289(n+1), A358752(#)]` -/
def P10529183575628058893.Spec : Prop :=
  ∀ n, P10529183575628058893.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P3391113851864431773

`∩[A028260(n+1), comp[A358760(n+1)]]`
-/

namespace A358762.P3391113851864431773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358760 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A358762.P3391113851864431773

namespace A358762

/-- `∩[A028260(n+1), comp[A358760(n+1)]]` -/
def P3391113851864431773.Spec : Prop :=
  ∀ n, (P3391113851864431773.a n : ℤ) = A358762 (n + 1)

end A358762

/-! ## A358762.P5412355519527887868

`filter[A233182(n+1), A358752(#)]`
-/

namespace A358762.P5412355519527887868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P5412355519527887868

namespace A358762

/-- `filter[A233182(n+1), A358752(#)]` -/
def P5412355519527887868.Spec : Prop :=
  ∀ n, P5412355519527887868.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P6514323109120834201

`filter[A002808(n+1), A358752(#)]`
-/

namespace A358762.P6514323109120834201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P6514323109120834201

namespace A358762

/-- `filter[A002808(n+1), A358752(#)]` -/
def P6514323109120834201.Spec : Prop :=
  ∀ n, P6514323109120834201.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P13558114880671114019

`filter[A018252(n+1), A358752(#)]`
-/

namespace A358762.P13558114880671114019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P13558114880671114019

namespace A358762

/-- `filter[A018252(n+1), A358752(#)]` -/
def P13558114880671114019.Spec : Prop :=
  ∀ n, P13558114880671114019.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P13792909094275539903

`filter[A065090(n+1), A358752(#)]`
-/

namespace A358762.P13792909094275539903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P13792909094275539903

namespace A358762

/-- `filter[A065090(n+1), A358752(#)]` -/
def P13792909094275539903.Spec : Prop :=
  ∀ n, P13792909094275539903.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P7449297017158461420

`filter[A171581(n+1), A358752(#)]`
-/

namespace A358762.P7449297017158461420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P7449297017158461420

namespace A358762

/-- `filter[A171581(n+1), A358752(#)]` -/
def P7449297017158461420.Spec : Prop :=
  ∀ n, P7449297017158461420.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P18321224149711383863

`filter[A141468(n+2), A358752(#)]`
-/

namespace A358762.P18321224149711383863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P18321224149711383863

namespace A358762

/-- `filter[A141468(n+2), A358752(#)]` -/
def P18321224149711383863.Spec : Prop :=
  ∀ n, P18321224149711383863.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P768128504369775263

`filter[A173905(n+2), A358752(#)]`
-/

namespace A358762.P768128504369775263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P768128504369775263

namespace A358762

/-- `filter[A173905(n+2), A358752(#)]` -/
def P768128504369775263.Spec : Prop :=
  ∀ n, P768128504369775263.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P15403634476281083452

`filter[A222307(2*n+1), A358752(#)]`
-/

namespace A358762.P15403634476281083452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P15403634476281083452

namespace A358762

/-- `filter[A222307(2*n+1), A358752(#)]` -/
def P15403634476281083452.Spec : Prop :=
  ∀ n, P15403634476281083452.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P1934717238179545318

`filter[A338924(n+1), A358752(#)]`
-/

namespace A358762.P1934717238179545318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P1934717238179545318

namespace A358762

/-- `filter[A338924(n+1), A358752(#)]` -/
def P1934717238179545318.Spec : Prop :=
  ∀ n, P1934717238179545318.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P2965598872991951312

`filter[A073900(n+1), A358752(#)]`
-/

namespace A358762.P2965598872991951312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P2965598872991951312

namespace A358762

/-- `filter[A073900(n+1), A358752(#)]` -/
def P2965598872991951312.Spec : Prop :=
  ∀ n, P2965598872991951312.a n = A358762 (n + 1)

end A358762

/-! ## A358762.P5867673582789287837

`filter[A073899(n+1), A358752(#)]`
-/

namespace A358762.P5867673582789287837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358752 (f1 j).toNat = 1) n)

end

end A358762.P5867673582789287837

namespace A358762

/-- `filter[A073899(n+1), A358752(#)]` -/
def P5867673582789287837.Spec : Prop :=
  ∀ n, P5867673582789287837.a n = A358762 (n + 1)

end A358762

/-!
# A358763: Numbers k for which bigomega(k) == 3 (mod 4).

The programs for A358763, the canonical program `A358763.P9425270982903074007` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358763 has offset 1).

The definition of A358763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358763.P9425270982903074007

`lt[0, A358753(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358763

/-- `lt[0, A358753(n+1)]+1` -/
def P9425270982903074007.Spec : Prop :=
  ∀ n, (P9425270982903074007.a n : ℤ) = A358763 (n + 1)

theorem P9425270982903074007.correct : P9425270982903074007.Spec := by
  intro n
  simp only [A358763, Nat.add_sub_cancel]

end A358763

/-! ## A358763.P11664362717046552159

`eq[1, A358753(n+3)]+3`
-/

namespace A358763.P11664362717046552159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A358763.P11664362717046552159

namespace A358763

/-- `eq[1, A358753(n+3)]+3` -/
def P11664362717046552159.Spec : Prop :=
  ∀ n, (P11664362717046552159.a n : ℤ) = A358763 (n + 1)

end A358763

/-! ## A358763.P3670823308121547650

`lt[2, A001222(n+1)%4]+1`
-/

namespace A358763.P3670823308121547650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358763.P3670823308121547650

namespace A358763

/-- `lt[2, A001222(n+1)%4]+1` -/
def P3670823308121547650.Spec : Prop :=
  ∀ n, (P3670823308121547650.a n : ℤ) = A358763 (n + 1)

end A358763

/-! ## A358763.P12965117241769157742

`eq[3, A001222(n+2)%4]+2`
-/

namespace A358763.P12965117241769157742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A358763.P12965117241769157742

namespace A358763

/-- `eq[3, A001222(n+2)%4]+2` -/
def P12965117241769157742.Spec : Prop :=
  ∀ n, (P12965117241769157742.a n : ℤ) = A358763 (n + 1)

end A358763

/-! ## A358763.P17201121498691967777

`filter[A046339(n+1), A358753(#)]`
-/

namespace A358763.P17201121498691967777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P17201121498691967777

namespace A358763

/-- `filter[A046339(n+1), A358753(#)]` -/
def P17201121498691967777.Spec : Prop :=
  ∀ n, P17201121498691967777.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P10466718448248940816

`filter[A026422(n+1), A358753(#)]`
-/

namespace A358763.P10466718448248940816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P10466718448248940816

namespace A358763

/-- `filter[A026422(n+1), A358753(#)]` -/
def P10466718448248940816.Spec : Prop :=
  ∀ n, P10466718448248940816.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P12005668234245915988

`filter[A026424(n+1), A358753(#)]`
-/

namespace A358763.P12005668234245915988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P12005668234245915988

namespace A358763

/-- `filter[A026424(n+1), A358753(#)]` -/
def P12005668234245915988.Spec : Prop :=
  ∀ n, P12005668234245915988.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P1286970616150252210

`filter[A359766(n+3), A358753(#)]`
-/

namespace A358763.P1286970616150252210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P1286970616150252210

namespace A358763

/-- `filter[A359766(n+3), A358753(#)]` -/
def P1286970616150252210.Spec : Prop :=
  ∀ n, P1286970616150252210.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P1850277159767292239

`filter[A033942(n+1), A358753(#)]`
-/

namespace A358763.P1850277159767292239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P1850277159767292239

namespace A358763

/-- `filter[A033942(n+1), A358753(#)]` -/
def P1850277159767292239.Spec : Prop :=
  ∀ n, P1850277159767292239.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P8060986508405738798

`filter[A111087(n+1), A358753(#)]`
-/

namespace A358763.P8060986508405738798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P8060986508405738798

namespace A358763

/-- `filter[A111087(n+1), A358753(#)]` -/
def P8060986508405738798.Spec : Prop :=
  ∀ n, P8060986508405738798.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P15286162141411953847

`filter[A289553(n+1), A358753(#)]`
-/

namespace A358763.P15286162141411953847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P15286162141411953847

namespace A358763

/-- `filter[A289553(n+1), A358753(#)]` -/
def P15286162141411953847.Spec : Prop :=
  ∀ n, P15286162141411953847.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P13848322348011434260

`filter[A063989(n+1), A358753(#)]`
-/

namespace A358763.P13848322348011434260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P13848322348011434260

namespace A358763

/-- `filter[A063989(n+1), A358753(#)]` -/
def P13848322348011434260.Spec : Prop :=
  ∀ n, P13848322348011434260.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P9031307168717499836

`filter[A100959(n+1), A358753(#)]`
-/

namespace A358763.P9031307168717499836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P9031307168717499836

namespace A358763

/-- `filter[A100959(n+1), A358753(#)]` -/
def P9031307168717499836.Spec : Prop :=
  ∀ n, P9031307168717499836.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P14822392431660192312

`filter[A139118(n+1), A358753(#)]`
-/

namespace A358763.P14822392431660192312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P14822392431660192312

namespace A358763

/-- `filter[A139118(n+1), A358753(#)]` -/
def P14822392431660192312.Spec : Prop :=
  ∀ n, P14822392431660192312.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P626672673889026739

`filter[A268388(n+1), A358753(#)]`
-/

namespace A358763.P626672673889026739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P626672673889026739

namespace A358763

/-- `filter[A268388(n+1), A358753(#)]` -/
def P626672673889026739.Spec : Prop :=
  ∀ n, P626672673889026739.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P3908040165863870230

`filter[A080257(n+1), A358753(#)]`
-/

namespace A358763.P3908040165863870230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P3908040165863870230

namespace A358763

/-- `filter[A080257(n+1), A358753(#)]` -/
def P3908040165863870230.Spec : Prop :=
  ∀ n, P3908040165863870230.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P3578363677541809425

`filter[A220571(n+1), A358753(#)]`
-/

namespace A358763.P3578363677541809425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P3578363677541809425

namespace A358763

/-- `filter[A220571(n+1), A358753(#)]` -/
def P3578363677541809425.Spec : Prop :=
  ∀ n, P3578363677541809425.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P4528111808412711907

`filter[A002808(n+1), A358753(#)]`
-/

namespace A358763.P4528111808412711907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P4528111808412711907

namespace A358763

/-- `filter[A002808(n+1), A358753(#)]` -/
def P4528111808412711907.Spec : Prop :=
  ∀ n, P4528111808412711907.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P11534157082201080882

`filter[A018252(n+1), A358753(#)]`
-/

namespace A358763.P11534157082201080882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P11534157082201080882

namespace A358763

/-- `filter[A018252(n+1), A358753(#)]` -/
def P11534157082201080882.Spec : Prop :=
  ∀ n, P11534157082201080882.a n = A358763 (n + 1)

end A358763

/-! ## A358763.P17152540106976658055

`filter[A056653(n+1), A358753(#)]`
-/

namespace A358763.P17152540106976658055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A358763.P17152540106976658055

namespace A358763

/-- `filter[A056653(n+1), A358753(#)]` -/
def P17152540106976658055.Spec : Prop :=
  ∀ n, P17152540106976658055.a n = A358763 (n + 1)

end A358763

/-!
# A358764: Largest difference between consecutive divisors of A276086(n), where A276086 is the primorial base exp-function.

The programs for A358764, there is no canonical definition to state claims against.
-/

/-! ## A358764.P15713081182403681202

`A276086(n)-A324895(n)`
-/

namespace A358764.P15713081182403681202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A324895 n

end

end A358764.P15713081182403681202

/-! ## A358764.P17307730225200935361

`A060681(A276086(n))`
-/

namespace A358764.P17307730225200935361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A276086 n).toNat

end

end A358764.P17307730225200935361

/-! ## A358764.P10047338388309250784

`lcm(A324895(n), A351251(n))-A324895(n)`
-/

namespace A358764.P10047338388309250784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A324895 n) (A351251 n) : ℤ) - A324895 n

end

end A358764.P10047338388309250784

/-! ## A358764.P18329168688885416423

`A276086(n)-A276086(A276151(n+1-ceil(n/(n+1))))`
-/

namespace A358764.P18329168688885416423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A276086 (A276151 ((n + 1 : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat).toNat

end

end A358764.P18329168688885416423

/-! ## A358764.P1188445827204370427

`A276086(n)-A276086(n)/A020639(A328571(n))`
-/

namespace A358764.P1188445827204370427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) - (A276086 n : ℚ) / (A020639 (A328571 n).toNat : ℚ)

end

end A358764.P1188445827204370427

/-! ## A358764.P2948817775348205172

`A346101(A289234(n))-A324895(n)`
-/

namespace A358764.P2948817775348205172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat - A324895 n

end

end A358764.P2948817775348205172

/-! ## A358764.P9426641935589551494

`A276086(n)-A276086(A324351(2*n²))`
-/

namespace A358764.P9426641935589551494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A276086 (A324351 (2 * n ^ 2)).toNat

end

end A358764.P9426641935589551494

/-! ## A358764.P6690210701931863078

`A276086(n)-A276086(n)/A020639(A276086(n%(n+1)))`
-/

namespace A358764.P6690210701931863078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) - (A276086 n : ℚ) / (A020639 (A276086 (n % (n + 1))).toNat : ℚ)

end

end A358764.P6690210701931863078

/-!
# A358765: a(n) = A003415(n)*A276086(n) mod 60, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A358765, there is no canonical definition to state claims against.
-/

/-! ## A358765.P250912218649108191

`(A003415(n)*A276086(n))%60`
-/

namespace A358765.P250912218649108191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n * A276086 n) 60

end

end A358765.P250912218649108191

/-! ## A358765.P482776091523711210

`A358669(n)%60`
-/

namespace A358765.P482776091523711210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358669 n) 60

end

end A358765.P482776091523711210

/-!
# A358766: a(n) = lambda(sigma(n)), where lambda is Liouville's lambda, and sigma is the sum of divisors function.

The programs for A358766, the canonical program `A358766.P6506097886501819477` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358766 has offset 1).

The definition of A358766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058063, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358766.P6506097886501819477

`(-1)^A058063(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A358766

/-- `(-1)^A058063(n+1)` -/
def P6506097886501819477.Spec : Prop :=
  ∀ n, P6506097886501819477.a n = (A358766 (n + 1) : ℚ)

end A358766

/-! ## A358766.P8193653330489265684

`A008836(n+1)/A359166(n+1)`
-/

namespace A358766.P8193653330489265684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) : ℚ) / (A359166 (n + 1) : ℚ)

end

end A358766.P8193653330489265684

namespace A358766

/-- `A008836(n+1)/A359166(n+1)` -/
def P8193653330489265684.Spec : Prop :=
  ∀ n, P8193653330489265684.a n = (A358766 (n + 1) : ℚ)

end A358766

/-! ## A358766.P13332731124192778269

`A008836(A000203(n+1))`
-/

namespace A358766.P13332731124192778269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000203 (n + 1)).toNat

end

end A358766.P13332731124192778269

namespace A358766

/-- `A008836(A000203(n+1))` -/
def P13332731124192778269.Spec : Prop :=
  ∀ n, P13332731124192778269.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P3694125440486253361

`(-1)^∑{e}[∑{d}[n+1, #], #]`
-/

namespace A358766.P3694125440486253361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A358766.P3694125440486253361

namespace A358766

/-- `(-1)^∑{e}[∑{d}[n+1, #], #]` -/
def P3694125440486253361.Spec : Prop :=
  ∀ n, P3694125440486253361.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P11037901998998418956

`∏{e}[∑{d}[n+1, #], (-1)^#]`
-/

namespace A358766.P11037901998998418956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-1) ^ Nat.factorization (f1 n) p

end

end A358766.P11037901998998418956

namespace A358766

/-- `∏{e}[∑{d}[n+1, #], (-1)^#]` -/
def P11037901998998418956.Spec : Prop :=
  ∀ n, P11037901998998418956.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P17537102777260362287

`1-2*A353810(n+1)`
-/

namespace A358766.P17537102777260362287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A353810 (n + 1)

end

end A358766.P17537102777260362287

namespace A358766

/-- `1-2*A353810(n+1)` -/
def P17537102777260362287.Spec : Prop :=
  ∀ n, P17537102777260362287.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P15344267841696589252

`(-1)^A001222(∑{d}[n+1, #])`
-/

namespace A358766.P15344267841696589252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (∑ d ∈ Nat.divisors (f1 n), d) : ℤ)

end

end A358766.P15344267841696589252

namespace A358766

/-- `(-1)^A001222(∑{d}[n+1, #])` -/
def P15344267841696589252.Spec : Prop :=
  ∀ n, P15344267841696589252.a n = (A358766 (n + 1) : ℚ)

end A358766

/-! ## A358766.P3217860739414229333

`A008683(A355928(n+1))`
-/

namespace A358766.P3217860739414229333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A355928 (n + 1)).toNat

end

end A358766.P3217860739414229333

namespace A358766

/-- `A008683(A355928(n+1))` -/
def P3217860739414229333.Spec : Prop :=
  ∀ n, P3217860739414229333.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P16599973642480734047

`A008836(A276528(n+1))`
-/

namespace A358766.P16599973642480734047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A276528 (n + 1)).toNat

end

end A358766.P16599973642480734047

namespace A358766

/-- `A008836(A276528(n+1))` -/
def P16599973642480734047.Spec : Prop :=
  ∀ n, P16599973642480734047.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P17737331416108576064

`A008836(∑{d}[n+1, #])`
-/

namespace A358766.P17737331416108576064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A358766.P17737331416108576064

namespace A358766

/-- `A008836(∑{d}[n+1, #])` -/
def P17737331416108576064.Spec : Prop :=
  ∀ n, P17737331416108576064.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P14000575387336700736

`∑{d}[A000203(n+1), A158522(#)]`
-/

namespace A358766.P14000575387336700736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A158522 d

end

end A358766.P14000575387336700736

namespace A358766

/-- `∑{d}[A000203(n+1), A158522(#)]` -/
def P14000575387336700736.Spec : Prop :=
  ∀ n, P14000575387336700736.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P5945263153759779170

`∑{d}[A000203(n+1), A298473(#)/#]`
-/

namespace A358766.P5945263153759779170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A298473 d : ℚ) / (d : ℚ)

end

end A358766.P5945263153759779170

namespace A358766

/-- `∑{d}[A000203(n+1), A298473(#)/#]` -/
def P5945263153759779170.Spec : Prop :=
  ∀ n, P5945263153759779170.a n = (A358766 (n + 1) : ℚ)

end A358766

/-! ## A358766.P4846048717110994434

`A008836(A318677(n+1)+A318676(n+1))`
-/

namespace A358766.P4846048717110994434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A318677 (n + 1) + A318676 (n + 1)).toNat

end

end A358766.P4846048717110994434

namespace A358766

/-- `A008836(A318677(n+1)+A318676(n+1))` -/
def P4846048717110994434.Spec : Prop :=
  ∀ n, P4846048717110994434.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P14966146237716667201

`A008836(A326040(n+1)+A326039(n+1))`
-/

namespace A358766.P14966146237716667201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A326040 (n + 1) + A326039 (n + 1)).toNat

end

end A358766.P14966146237716667201

namespace A358766

/-- `A008836(A326040(n+1)+A326039(n+1))` -/
def P14966146237716667201.Spec : Prop :=
  ∀ n, P14966146237716667201.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P12160433857016675453

`A008836(A239050(n+1))`
-/

namespace A358766.P12160433857016675453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A239050 (n + 1)).toNat

end

end A358766.P12160433857016675453

namespace A358766

/-- `A008836(A239050(n+1))` -/
def P12160433857016675453.Spec : Prop :=
  ∀ n, P12160433857016675453.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P4146713136862423661

`A008836(A319528(n+1)/2)`
-/

namespace A358766.P4146713136862423661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A358766.P4146713136862423661

namespace A358766

/-- `A008836(A319528(n+1)/2)` -/
def P4146713136862423661.Spec : Prop :=
  ∀ n, P4146713136862423661.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P6952078894974913268

`A008836(A274536(n+1))`
-/

namespace A358766.P6952078894974913268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A274536 (n + 1)).toNat

end

end A358766.P6952078894974913268

namespace A358766

/-- `A008836(A274536(n+1))` -/
def P6952078894974913268.Spec : Prop :=
  ∀ n, P6952078894974913268.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P4854123370212888833

`A008836(A325299(n+1))`
-/

namespace A358766.P4854123370212888833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A325299 (n + 1)).toNat

end

end A358766.P4854123370212888833

namespace A358766

/-- `A008836(A325299(n+1))` -/
def P4854123370212888833.Spec : Prop :=
  ∀ n, P4854123370212888833.a n = A358766 (n + 1)

end A358766

/-! ## A358766.P12142748401312950771

`A008836(A326122(n+1))`
-/

namespace A358766.P12142748401312950771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A326122 (n + 1)).toNat

end

end A358766.P12142748401312950771

namespace A358766

/-- `A008836(A326122(n+1))` -/
def P12142748401312950771.Spec : Prop :=
  ∀ n, P12142748401312950771.a n = A358766 (n + 1)

end A358766

/-!
# A358767: Numbers k with an even number of prime factors (when counted with multiplicity) in sigma(k), the sum of divisors of k.

The programs for A358767, the canonical program `A358767.P14208319435389151845` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358767 has offset 1).

The definition of A358767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358767.P14208319435389151845

`lt[0, A358766(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A358767

/-- `lt[0, A358766(n+1)]+1` -/
def P14208319435389151845.Spec : Prop :=
  ∀ n, (P14208319435389151845.a n : ℤ) = A358767 (n + 1)

theorem P14208319435389151845.correct : P14208319435389151845.Spec := by
  intro n
  simp only [A358767, Nat.add_sub_cancel]

end A358767

/-! ## A358767.P17202958276890010278

`lt[A353810(n+1), 1]+1`
-/

namespace A358767.P17202958276890010278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353810 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358767.P17202958276890010278

namespace A358767

/-- `lt[A353810(n+1), 1]+1` -/
def P17202958276890010278.Spec : Prop :=
  ∀ n, (P17202958276890010278.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P3180970730747912174

`eq[1, A358766(lcm(n, a(n-1)))]` with `a(0)=3`
-/

namespace A358767.P3180970730747912174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A358766 (Int.lcm (n : ℤ) (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358767.P3180970730747912174

namespace A358767

/-- `eq[1, A358766(lcm(n, a(n-1)))]` -/
def P3180970730747912174.Spec : Prop :=
  ∀ n, (P3180970730747912174.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P408859909571814445

`lt[A058063(abs(1-n)+1)%2, 1]`
-/

namespace A358767.P408859909571814445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058063 (|1 - (n : ℤ)| + 1).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358767.P408859909571814445

namespace A358767

/-- `lt[A058063(abs(1-n)+1)%2, 1]` -/
def P408859909571814445.Spec : Prop :=
  ∀ n, (P408859909571814445.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P8153025401400453541

`eq[1, A065043(A239050(n+1)/4)]+1`
-/

namespace A358767.P8153025401400453541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358767.P8153025401400453541

namespace A358767

/-- `eq[1, A065043(A239050(n+1)/4)]+1` -/
def P8153025401400453541.Spec : Prop :=
  ∀ n, (P8153025401400453541.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P8177578837149114629

`eq[1, A065043(A319527(n+1)/7)]+1`
-/

namespace A358767.P8177578837149114629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (SequenceMachineLib.roundAway ((A319527 (n + 1) : ℚ) / 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358767.P8177578837149114629

namespace A358767

/-- `eq[1, A065043(A319527(n+1)/7)]+1` -/
def P8177578837149114629.Spec : Prop :=
  ∀ n, (P8177578837149114629.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P5263807961616231995

`eq[1, A008836(A276528(n+1))]+1`
-/

namespace A358767.P5263807961616231995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A276528 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358767.P5263807961616231995

namespace A358767

/-- `eq[1, A008836(A276528(n+1))]+1` -/
def P5263807961616231995.Spec : Prop :=
  ∀ n, (P5263807961616231995.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P16960460747105533854

`record[(n+1)*A008836(∑{d}[n+1, #])]`
-/

namespace A358767.P16960460747105533854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008836 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358767.P16960460747105533854

namespace A358767

/-- `record[(n+1)*A008836(∑{d}[n+1, #])]` -/
def P16960460747105533854.Spec : Prop :=
  ∀ n, P16960460747105533854.a n = A358767 (n + 1)

end A358767

/-! ## A358767.P5997584436537193825

`eq[1, A008836(A000203(n+1))]+1`
-/

namespace A358767.P5997584436537193825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358767.P5997584436537193825

namespace A358767

/-- `eq[1, A008836(A000203(n+1))]+1` -/
def P5997584436537193825.Spec : Prop :=
  ∀ n, (P5997584436537193825.a n : ℤ) = A358767 (n + 1)

end A358767

/-! ## A358767.P9166029476276947170

`lt[A307428(5*∑{d}[n+1, #]), 1]+1`
-/

namespace A358767.P9166029476276947170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (5 * (∑ d ∈ Nat.divisors (f2 n), d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A358767.P9166029476276947170

namespace A358767

/-- `lt[A307428(5*∑{d}[n+1, #]), 1]+1` -/
def P9166029476276947170.Spec : Prop :=
  ∀ n, (P9166029476276947170.a n : ℤ) = A358767 (n + 1)

end A358767

/-!
# A358768: Numbers k with an odd number of prime factors (when counted with multiplicity) in sigma(k), the sum of divisors of k.

The programs for A358768, the canonical program `A358768.P8130297315426671572` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358768 has offset 1).

The definition of A358768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358768.P1956712603370297383

`eq[1, A353810(n+1)]+1`
-/

namespace A358768.P1956712603370297383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358768.P1956712603370297383

namespace A358768

/-- `eq[1, A353810(n+1)]+1` -/
def P1956712603370297383.Spec : Prop :=
  ∀ n, (P1956712603370297383.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P5131525784887509222

`lt[A358766(n+1), 0]+1`
-/

namespace A358768.P5131525784887509222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358766 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358768.P5131525784887509222

namespace A358768

/-- `lt[A358766(n+1), 0]+1` -/
def P5131525784887509222.Spec : Prop :=
  ∀ n, (P5131525784887509222.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P8130297315426671572

`comp[A358767(n+1)-1]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358768

/-- `comp[A358767(n+1)-1]+1` -/
def P8130297315426671572.Spec : Prop :=
  ∀ n, (P8130297315426671572.a n : ℤ) = A358768 (n + 1)

theorem P8130297315426671572.correct : P8130297315426671572.Spec := by
  intro n
  simp only [A358768, Nat.add_sub_cancel]

end A358768

/-! ## A358768.P11536469224063995143

`eq[1, A058063(n+1)%2]+1`
-/

namespace A358768.P11536469224063995143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058063 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358768.P11536469224063995143

namespace A358768

/-- `eq[1, A058063(n+1)%2]+1` -/
def P11536469224063995143.Spec : Prop :=
  ∀ n, (P11536469224063995143.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P3479940722146189252

`filter[n+2, A353810(#)]`
-/

namespace A358768.P3479940722146189252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353810 (f1 j) = 1) n)

end

end A358768.P3479940722146189252

namespace A358768

/-- `filter[n+2, A353810(#)]` -/
def P3479940722146189252.Spec : Prop :=
  ∀ n, (P3479940722146189252.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P5942953117029717524

`eq[1, A066829(∑{d}[n+1, #])]+1`
-/

namespace A358768.P5942953117029717524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358768.P5942953117029717524

namespace A358768

/-- `eq[1, A066829(∑{d}[n+1, #])]+1` -/
def P5942953117029717524.Spec : Prop :=
  ∀ n, (P5942953117029717524.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P5831536427128756211

`lt[A008836(∑{d}[n+1, #]), 1]+1`
-/

namespace A358768.P5831536427128756211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A358768.P5831536427128756211

namespace A358768

/-- `lt[A008836(∑{d}[n+1, #]), 1]+1` -/
def P5831536427128756211.Spec : Prop :=
  ∀ n, (P5831536427128756211.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P1811566443709574521

`lt[A165872(A039653(n)+1), 1]`
-/

namespace A358768.P1811566443709574521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A039653 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358768.P1811566443709574521

namespace A358768

/-- `lt[A165872(A039653(n)+1), 1]` -/
def P1811566443709574521.Spec : Prop :=
  ∀ n, (P1811566443709574521.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P10488110685675872300

`lt[A008836(A000203(n+1)), 1]+1`
-/

namespace A358768.P10488110685675872300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358768.P10488110685675872300

namespace A358768

/-- `lt[A008836(A000203(n+1)), 1]+1` -/
def P10488110685675872300.Spec : Prop :=
  ∀ n, (P10488110685675872300.a n : ℤ) = A358768 (n + 1)

end A358768

/-! ## A358768.P17152467731159238862

`lt[A307428(6*∑{d}[n+2, #]), 1]+2`
-/

namespace A358768.P17152467731159238862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (6 * (∑ d ∈ Nat.divisors (f2 n), d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A358768.P17152467731159238862

namespace A358768

/-- `lt[A307428(6*∑{d}[n+2, #]), 1]+2` -/
def P17152467731159238862.Spec : Prop :=
  ∀ n, (P17152467731159238862.a n : ℤ) = A358768 (n + 1)

end A358768

/-!
# A358769: a(n) = 1 if n is of the form p * m^2, where p is a prime and m is a natural number >= 1, otherwise 0.

The programs for A358769, the canonical program `A358769.P11992028055102234913` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358769 has offset 1).

The definition of A358769 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358769.P11992028055102234913

`A010051(A007913(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358769

/-- `A010051(A007913(n+1))` -/
def P11992028055102234913.Spec : Prop :=
  ∀ n, P11992028055102234913.a n = A358769 (n + 1)

theorem P11992028055102234913.correct : P11992028055102234913.Spec := by
  intro n
  simp only [A358769, Nat.add_sub_cancel]

end A358769

/-! ## A358769.P7237245545502372505

`A062799(n+1)%2`
-/

namespace A358769.P7237245545502372505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062799 (n + 1)) 2

end

end A358769.P7237245545502372505

namespace A358769

/-- `A062799(n+1)%2` -/
def P7237245545502372505.Spec : Prop :=
  ∀ n, P7237245545502372505.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P14704447619176818368

`∑{d}[n+1, A392285(#)]`
-/

namespace A358769.P14704447619176818368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A392285 d

end

end A358769.P14704447619176818368

namespace A358769

/-- `∑{d}[n+1, A392285(#)]` -/
def P14704447619176818368.Spec : Prop :=
  ∀ n, P14704447619176818368.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P13621578824062648860

`char[A229125(n+1)-1]`
-/

namespace A358769.P13621578824062648860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358769.P13621578824062648860

namespace A358769

/-- `char[A229125(n+1)-1]` -/
def P13621578824062648860.Spec : Prop :=
  ∀ n, (P13621578824062648860.a n : ℤ) = A358769 (n + 1)

end A358769

/-! ## A358769.P5997360030300407219

`char[eq[1, A162642(n+1)]]`
-/

namespace A358769.P5997360030300407219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358769.P5997360030300407219

namespace A358769

/-- `char[eq[1, A162642(n+1)]]` -/
def P5997360030300407219.Spec : Prop :=
  ∀ n, (P5997360030300407219.a n : ℤ) = A358769 (n + 1)

end A358769

/-! ## A358769.P9141986256927932785

`char[eq[2, A055076(n+1)]]`
-/

namespace A358769.P9141986256927932785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358769.P9141986256927932785

namespace A358769

/-- `char[eq[2, A055076(n+1)]]` -/
def P9141986256927932785.Spec : Prop :=
  ∀ n, (P9141986256927932785.a n : ℤ) = A358769 (n + 1)

end A358769

/-! ## A358769.P66601333455761927

`(A100565(n+1)+1)%2`
-/

namespace A358769.P66601333455761927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100565 (n + 1) + 1) 2

end

end A358769.P66601333455761927

namespace A358769

/-- `(A100565(n+1)+1)%2` -/
def P66601333455761927.Spec : Prop :=
  ∀ n, P66601333455761927.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P5690628264214850726

`∑{d}[n+1, A001221(#)]%2`
-/

namespace A358769.P5690628264214850726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A001221 d) 2

end

end A358769.P5690628264214850726

namespace A358769

/-- `∑{d}[n+1, A001221(#)]%2` -/
def P5690628264214850726.Spec : Prop :=
  ∀ n, P5690628264214850726.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P10079813660659698188

`A005369(A055076(n+1))`
-/

namespace A358769.P10079813660659698188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A055076 (n + 1)).toNat

end

end A358769.P10079813660659698188

namespace A358769

/-- `A005369(A055076(n+1))` -/
def P10079813660659698188.Spec : Prop :=
  ∀ n, P10079813660659698188.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P3754733115847387905

`A000035(A062799(n+1))`
-/

namespace A358769.P3754733115847387905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A062799 (n + 1)).toNat

end

end A358769.P3754733115847387905

namespace A358769

/-- `A000035(A062799(n+1))` -/
def P3754733115847387905.Spec : Prop :=
  ∀ n, P3754733115847387905.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P3338296291844896154

`A069513(A071975(n+1))`
-/

namespace A358769.P3338296291844896154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A071975 (n + 1)).toNat

end

end A358769.P3338296291844896154

namespace A358769

/-- `A069513(A071975(n+1))` -/
def P3338296291844896154.Spec : Prop :=
  ∀ n, P3338296291844896154.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P8983822648819003652

`A059841(A100565(n+1))`
-/

namespace A358769.P8983822648819003652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A100565 (n + 1)).toNat

end

end A358769.P8983822648819003652

namespace A358769

/-- `A059841(A100565(n+1))` -/
def P8983822648819003652.Spec : Prop :=
  ∀ n, P8983822648819003652.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P18043547808528408525

`A372505(A055076(n+1)²)`
-/

namespace A358769.P18043547808528408525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372505 (A055076 (n + 1) ^ 2).toNat

end

end A358769.P18043547808528408525

namespace A358769

/-- `A372505(A055076(n+1)²)` -/
def P18043547808528408525.Spec : Prop :=
  ∀ n, P18043547808528408525.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P3259821231853238022

`A010052(A055076(n+1)+2)`
-/

namespace A358769.P3259821231853238022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A055076 (n + 1) + 2).toNat

end

end A358769.P3259821231853238022

namespace A358769

/-- `A010052(A055076(n+1)+2)` -/
def P3259821231853238022.Spec : Prop :=
  ∀ n, P3259821231853238022.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P12510660175465272589

`A112526(A055076(n+1)+2)`
-/

namespace A358769.P12510660175465272589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (A055076 (n + 1) + 2).toNat

end

end A358769.P12510660175465272589

namespace A358769

/-- `A112526(A055076(n+1)+2)` -/
def P12510660175465272589.Spec : Prop :=
  ∀ n, P12510660175465272589.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P5476932286867057713

`A129251(A055076(n+1)+2)`
-/

namespace A358769.P5476932286867057713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A055076 (n + 1) + 2).toNat

end

end A358769.P5476932286867057713

namespace A358769

/-- `A129251(A055076(n+1)+2)` -/
def P5476932286867057713.Spec : Prop :=
  ∀ n, P5476932286867057713.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P3845366712462849626

`A188585(A055076(n+1)+2)`
-/

namespace A358769.P3845366712462849626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (A055076 (n + 1) + 2).toNat

end

end A358769.P3845366712462849626

namespace A358769

/-- `A188585(A055076(n+1)+2)` -/
def P3845366712462849626.Spec : Prop :=
  ∀ n, P3845366712462849626.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P9972682879109246201

`A227291(A055076(n+1)+2)`
-/

namespace A358769.P9972682879109246201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (A055076 (n + 1) + 2).toNat

end

end A358769.P9972682879109246201

namespace A358769

/-- `A227291(A055076(n+1)+2)` -/
def P9972682879109246201.Spec : Prop :=
  ∀ n, P9972682879109246201.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P16722789722304773446

`A293449(A055076(n+1)+2)`
-/

namespace A358769.P16722789722304773446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293449 (A055076 (n + 1) + 2).toNat

end

end A358769.P16722789722304773446

namespace A358769

/-- `A293449(A055076(n+1)+2)` -/
def P16722789722304773446.Spec : Prop :=
  ∀ n, P16722789722304773446.a n = A358769 (n + 1)

end A358769

/-! ## A358769.P14723930660975456702

`A365550(A055076(n+1)+2)`
-/

namespace A358769.P14723930660975456702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365550 (A055076 (n + 1) + 2).toNat

end

end A358769.P14723930660975456702

namespace A358769

/-- `A365550(A055076(n+1)+2)` -/
def P14723930660975456702.Spec : Prop :=
  ∀ n, P14723930660975456702.a n = A358769 (n + 1)

end A358769

/-!
# A358770: a(n) = 1 if n is of the form p * m^2, where p is an odd prime and m is a natural number >= 1, otherwise 0.

The programs for A358770, the canonical program `A358770.P14969810485770993373` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358770 has offset 1).

The definition of A358770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358770.P14969810485770993373

`A035263(n+1)*A358769(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A358770

/-- `A035263(n+1)*A358769(n+1)` -/
def P14969810485770993373.Spec : Prop :=
  ∀ n, P14969810485770993373.a n = A358770 (n + 1)

theorem P14969810485770993373.correct : P14969810485770993373.Spec := by
  intro n
  simp only [A358770, Nat.add_sub_cancel]

end A358770

/-! ## A358770.P15850930034027634698

`A000035(A007913(n+1))*A010051(A007913(n+1))`
-/

namespace A358770.P15850930034027634698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007913 (n + 1)).toNat * A010051 (A007913 (n + 1)).toNat

end

end A358770.P15850930034027634698

namespace A358770

/-- `A000035(A007913(n+1))*A010051(A007913(n+1))` -/
def P15850930034027634698.Spec : Prop :=
  ∀ n, P15850930034027634698.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P9588179569446987816

`A319131(n+1)%2`
-/

namespace A358770.P9588179569446987816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319131 (n + 1)) 2

end

end A358770.P9588179569446987816

namespace A358770

/-- `A319131(n+1)%2` -/
def P9588179569446987816.Spec : Prop :=
  ∀ n, P9588179569446987816.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P7509578846790295078

`∑{p}[n+1, #*A000005((n+1)/#)]%2`
-/

namespace A358770.P7509578846790295078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat) 2

end

end A358770.P7509578846790295078

namespace A358770

/-- `∑{p}[n+1, #*A000005((n+1)/#)]%2` -/
def P7509578846790295078.Spec : Prop :=
  ∀ n, P7509578846790295078.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P9987102391412651476

`A174275(A007913(n+1))`
-/

namespace A358770.P9987102391412651476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (A007913 (n + 1)).toNat

end

end A358770.P9987102391412651476

namespace A358770

/-- `A174275(A007913(n+1))` -/
def P9987102391412651476.Spec : Prop :=
  ∀ n, P9987102391412651476.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P7973057802137835341

`A174275(A071975(n+1))`
-/

namespace A358770.P7973057802137835341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (A071975 (n + 1)).toNat

end

end A358770.P7973057802137835341

namespace A358770

/-- `A174275(A071975(n+1))` -/
def P7973057802137835341.Spec : Prop :=
  ∀ n, P7973057802137835341.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P4689186893949989091

`A174275(sqrt(A055491(n+1)))`
-/

namespace A358770.P4689186893949989091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A358770.P4689186893949989091

namespace A358770

/-- `A174275(sqrt(A055491(n+1)))` -/
def P4689186893949989091.Spec : Prop :=
  ∀ n, P4689186893949989091.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P4503823741723369539

`A280710(2*A007913(n+1))`
-/

namespace A358770.P4503823741723369539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (2 * A007913 (n + 1)).toNat

end

end A358770.P4503823741723369539

namespace A358770

/-- `A280710(2*A007913(n+1))` -/
def P4503823741723369539.Spec : Prop :=
  ∀ n, P4503823741723369539.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P17640973985714374030

`and(1, A319131(A000027(n+1)))`
-/

namespace A358770.P17640973985714374030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A319131 (A000027 (n + 1)).toNat)

end

end A358770.P17640973985714374030

namespace A358770

/-- `and(1, A319131(A000027(n+1)))` -/
def P17640973985714374030.Spec : Prop :=
  ∀ n, P17640973985714374030.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P6715742713592291545

`and(A043545(n), A319131(n+1))`
-/

namespace A358770.P6715742713592291545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043545 n) (A319131 (n + 1))

end

end A358770.P6715742713592291545

namespace A358770

/-- `and(A043545(n), A319131(n+1))` -/
def P6715742713592291545.Spec : Prop :=
  ∀ n, P6715742713592291545.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P14876740442135634053

`∑{d}[n+1, A005087(#)*A008836((n+1)/#)]`
-/

namespace A358770.P14876740442135634053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005087 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358770.P14876740442135634053

namespace A358770

/-- `∑{d}[n+1, A005087(#)*A008836((n+1)/#)]` -/
def P14876740442135634053.Spec : Prop :=
  ∀ n, P14876740442135634053.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P12674669680403547778

`∑{d}[n+1, A143259(#)*A353670((n+1)/#)]`
-/

namespace A358770.P12674669680403547778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A353670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358770.P12674669680403547778

namespace A358770

/-- `∑{d}[n+1, A143259(#)*A353670((n+1)/#)]` -/
def P12674669680403547778.Spec : Prop :=
  ∀ n, P12674669680403547778.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P1172145600693606616

`A010051(A007913(n+1))*A035263(n+1)`
-/

namespace A358770.P1172145600693606616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007913 (n + 1)).toNat * A035263 (n + 1)

end

end A358770.P1172145600693606616

namespace A358770

/-- `A010051(A007913(n+1))*A035263(n+1)` -/
def P1172145600693606616.Spec : Prop :=
  ∀ n, P1172145600693606616.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P14378084754659134794

`A000035(A001511(n+1)*A358769(n+1))`
-/

namespace A358770.P14378084754659134794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001511 (n + 1) * A358769 (n + 1)).toNat

end

end A358770.P14378084754659134794

namespace A358770

/-- `A000035(A001511(n+1)*A358769(n+1))` -/
def P14378084754659134794.Spec : Prop :=
  ∀ n, P14378084754659134794.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P8538489424606881835

`A000035(A007913(n+1)*A358769(n+1))`
-/

namespace A358770.P8538489424606881835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007913 (n + 1) * A358769 (n + 1)).toNat

end

end A358770.P8538489424606881835

namespace A358770

/-- `A000035(A007913(n+1)*A358769(n+1))` -/
def P8538489424606881835.Spec : Prop :=
  ∀ n, P8538489424606881835.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P3888278758655995526

`A000035(A319131(n+1))`
-/

namespace A358770.P3888278758655995526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A319131 (n + 1)).toNat

end

end A358770.P3888278758655995526

namespace A358770

/-- `A000035(A319131(n+1))` -/
def P3888278758655995526.Spec : Prop :=
  ∀ n, P3888278758655995526.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P15847978753746223337

`and(A005213(n), A358769(n+1))`
-/

namespace A358770.P15847978753746223337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005213 n) (A358769 (n + 1))

end

end A358770.P15847978753746223337

namespace A358770

/-- `and(A005213(n), A358769(n+1))` -/
def P15847978753746223337.Spec : Prop :=
  ∀ n, P15847978753746223337.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P8051583232118034648

`and(A020737(n), A319131(n+1))`
-/

namespace A358770.P8051583232118034648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A319131 (n + 1))

end

end A358770.P8051583232118034648

namespace A358770

/-- `and(A020737(n), A319131(n+1))` -/
def P8051583232118034648.Spec : Prop :=
  ∀ n, P8051583232118034648.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P953321267064307056

`and(A195744(n), A319131(n+1))`
-/

namespace A358770.P953321267064307056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A319131 (n + 1))

end

end A358770.P953321267064307056

namespace A358770

/-- `and(A195744(n), A319131(n+1))` -/
def P953321267064307056.Spec : Prop :=
  ∀ n, P953321267064307056.a n = A358770 (n + 1)

end A358770

/-! ## A358770.P15380469146151282387

`and(A122041(n+1), A319131(n+1))`
-/

namespace A358770.P15380469146151282387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A319131 (n + 1))

end

end A358770.P15380469146151282387

namespace A358770

/-- `and(A122041(n+1), A319131(n+1))` -/
def P15380469146151282387.Spec : Prop :=
  ∀ n, P15380469146151282387.a n = A358770 (n + 1)

end A358770

/-!
# A358771: a(n) = 1 if the arithmetic derivative of n is of the form 4k+1, otherwise 0.

The programs for A358771, the canonical program `A358771.P5761548446586358589` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358771 has offset 0).

The definition of A358771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358771.P10115160705003468195

`A165560(n)-A358773(n)`
-/

namespace A358771.P10115160705003468195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n - A358773 n

end

end A358771.P10115160705003468195

namespace A358771

/-- `A165560(n)-A358773(n)` -/
def P10115160705003468195.Spec : Prop :=
  ∀ n, P10115160705003468195.a n = A358771 n

end A358771

/-! ## A358771.P16841992901815557914

`char[A358772(n+1)]`
-/

namespace A358771.P16841992901815557914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358771.P16841992901815557914

namespace A358771

/-- `char[A358772(n+1)]` -/
def P16841992901815557914.Spec : Prop :=
  ∀ n, (P16841992901815557914.a n : ℤ) = A358771 n

end A358771

/-! ## A358771.P10349014331846509136

`char[eq[1, A353493(n)]]`
-/

namespace A358771.P10349014331846509136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358771.P10349014331846509136

namespace A358771

/-- `char[eq[1, A353493(n)]]` -/
def P10349014331846509136.Spec : Prop :=
  ∀ n, (P10349014331846509136.a n : ℤ) = A358771 n

end A358771

/-! ## A358771.P5761548446586358589

`C(A129283(n)+2-n, 3)%2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A358771

/-- `C(A129283(n)+2-n, 3)%2` -/
def P5761548446586358589.Spec : Prop :=
  ∀ n, (P5761548446586358589.a n : ℤ) = A358771 n

theorem P5761548446586358589.correct : P5761548446586358589.Spec := by
  intro n
  simp only [A358771]

end A358771

/-! ## A358771.P7051242126669500074

`A121262(A003415(n)+3)`
-/

namespace A358771.P7051242126669500074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A003415 n + 3).toNat

end

end A358771.P7051242126669500074

namespace A358771

/-- `A121262(A003415(n)+3)` -/
def P7051242126669500074.Spec : Prop :=
  ∀ n, P7051242126669500074.a n = A358771 n

end A358771

/-! ## A358771.P6752018512479181566

`A121262(xor(1, A003415(n)))`
-/

namespace A358771.P6752018512479181566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (Int.xor 1 (A003415 n)).toNat

end

end A358771.P6752018512479181566

namespace A358771

/-- `A121262(xor(1, A003415(n)))` -/
def P6752018512479181566.Spec : Prop :=
  ∀ n, P6752018512479181566.a n = A358771 n

end A358771

/-! ## A358771.P6279332932184608653

`1-A152822(A003415(n)+1)`
-/

namespace A358771.P6279332932184608653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 (A003415 n + 1).toNat

end

end A358771.P6279332932184608653

namespace A358771

/-- `1-A152822(A003415(n)+1)` -/
def P6279332932184608653.Spec : Prop :=
  ∀ n, P6279332932184608653.a n = A358771 n

end A358771

/-! ## A358771.P16830654055194866269

`and(1, A302043(A003415(n)+1))`
-/

namespace A358771.P16830654055194866269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A302043 (A003415 n + 1).toNat)

end

end A358771.P16830654055194866269

namespace A358771

/-- `and(1, A302043(A003415(n)+1))` -/
def P16830654055194866269.Spec : Prop :=
  ∀ n, P16830654055194866269.a n = A358771 n

end A358771

/-! ## A358771.P5570564017082827257

`A358773(15*n)`
-/

namespace A358771.P5570564017082827257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (15 * n)

end

end A358771.P5570564017082827257

namespace A358771

/-- `A358773(15*n)` -/
def P5570564017082827257.Spec : Prop :=
  ∀ n, P5570564017082827257.a n = A358771 n

end A358771

/-! ## A358771.P4912490713212512129

`A353495(A327862(n+1)*A353493(n))`
-/

namespace A358771.P4912490713212512129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A327862 (n + 1) * A353493 n).toNat

end

end A358771.P4912490713212512129

namespace A358771

/-- `A353495(A327862(n+1)*A353493(n))` -/
def P4912490713212512129.Spec : Prop :=
  ∀ n, P4912490713212512129.a n = A358771 n

end A358771

/-!
# A358772: Numbers whose arithmetic derivative is of the form 4k+1, cf. A003415.

The programs for A358772, the canonical program `A358772.P7530290515183113547` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358772 has offset 1).

The definition of A358772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358772.P7530290515183113547

`eq[1, A353493(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A358772

/-- `eq[1, A353493(n)]` -/
def P7530290515183113547.Spec : Prop :=
  ∀ n, (P7530290515183113547.a n : ℤ) = A358772 (n + 1)

theorem P7530290515183113547.correct : P7530290515183113547.Spec := by
  intro n
  simp only [A358772, Nat.add_sub_cancel]

end A358772

/-! ## A358772.P8712853842328470477

`lt[0, A358771(n)]`
-/

namespace A358772.P8712853842328470477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358772.P8712853842328470477

namespace A358772

/-- `lt[0, A358771(n)]` -/
def P8712853842328470477.Spec : Prop :=
  ∀ n, (P8712853842328470477.a n : ℤ) = A358772 (n + 1)

end A358772

/-! ## A358772.P4568210009953096389

`eq[1, A358771(n+1)]+1`
-/

namespace A358772.P4568210009953096389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358772.P4568210009953096389

namespace A358772

/-- `eq[1, A358771(n+1)]+1` -/
def P4568210009953096389.Spec : Prop :=
  ∀ n, (P4568210009953096389.a n : ℤ) = A358772 (n + 1)

end A358772

/-! ## A358772.P8882603803592017514

`eq[A010121(n), A358771(n)]`
-/

namespace A358772.P8882603803592017514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358772.P8882603803592017514

namespace A358772

/-- `eq[A010121(n), A358771(n)]` -/
def P8882603803592017514.Spec : Prop :=
  ∀ n, (P8882603803592017514.a n : ℤ) = A358772 (n + 1)

end A358772

/-! ## A358772.P7284798145328568218

`eq[A010130(n), A358771(n)]`
-/

namespace A358772.P7284798145328568218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358772.P7284798145328568218

namespace A358772

/-- `eq[A010130(n), A358771(n)]` -/
def P7284798145328568218.Spec : Prop :=
  ∀ n, (P7284798145328568218.a n : ℤ) = A358772 (n + 1)

end A358772

/-! ## A358772.P8569435865320196847

`eq[A010153(n), A358771(n)]`
-/

namespace A358772.P8569435865320196847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358772.P8569435865320196847

namespace A358772

/-- `eq[A010153(n), A358771(n)]` -/
def P8569435865320196847.Spec : Prop :=
  ∀ n, (P8569435865320196847.a n : ℤ) = A358772 (n + 1)

end A358772

/-! ## A358772.P8854354346718612851

`filter[A235991(n+1), A358771(#)]`
-/

namespace A358772.P8854354346718612851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P8854354346718612851

namespace A358772

/-- `filter[A235991(n+1), A358771(#)]` -/
def P8854354346718612851.Spec : Prop :=
  ∀ n, P8854354346718612851.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P18418110992255153829

`filter[A359782(n+1), A358771(#)]`
-/

namespace A358772.P18418110992255153829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P18418110992255153829

namespace A358772

/-- `filter[A359782(n+1), A358771(#)]` -/
def P18418110992255153829.Spec : Prop :=
  ∀ n, P18418110992255153829.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P14944883937689251921

`filter[A368999(n+1), A358771(#)]`
-/

namespace A358772.P14944883937689251921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P14944883937689251921

namespace A358772

/-- `filter[A368999(n+1), A358771(#)]` -/
def P14944883937689251921.Spec : Prop :=
  ∀ n, P14944883937689251921.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P16139463737080248604

`filter[A373376(n+1), A358771(#)]`
-/

namespace A358772.P16139463737080248604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P16139463737080248604

namespace A358772

/-- `filter[A373376(n+1), A358771(#)]` -/
def P16139463737080248604.Spec : Prop :=
  ∀ n, P16139463737080248604.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P4136177051752580873

`filter[A369003(n+1), A358771(#)]`
-/

namespace A358772.P4136177051752580873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P4136177051752580873

namespace A358772

/-- `filter[A369003(n+1), A358771(#)]` -/
def P4136177051752580873.Spec : Prop :=
  ∀ n, P4136177051752580873.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P16923218266474250141

`filter[A042968(n+1), A358771(#)]`
-/

namespace A358772.P16923218266474250141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P16923218266474250141

namespace A358772

/-- `filter[A042968(n+1), A358771(#)]` -/
def P16923218266474250141.Spec : Prop :=
  ∀ n, P16923218266474250141.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P6930403406955686607

`filter[A359794(n+1), A358771(#)]`
-/

namespace A358772.P6930403406955686607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P6930403406955686607

namespace A358772

/-- `filter[A359794(n+1), A358771(#)]` -/
def P6930403406955686607.Spec : Prop :=
  ∀ n, P6930403406955686607.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P5167147993959380716

`filter[A047588(n+1), A358771(#)]`
-/

namespace A358772.P5167147993959380716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P5167147993959380716

namespace A358772

/-- `filter[A047588(n+1), A358771(#)]` -/
def P5167147993959380716.Spec : Prop :=
  ∀ n, P5167147993959380716.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P11153220858628266812

`filter[A047592(n+1), A358771(#)]`
-/

namespace A358772.P11153220858628266812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P11153220858628266812

namespace A358772

/-- `filter[A047592(n+1), A358771(#)]` -/
def P11153220858628266812.Spec : Prop :=
  ∀ n, P11153220858628266812.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P16967072175365671124

`filter[A168186(n+1), A358771(#)]`
-/

namespace A358772.P16967072175365671124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P16967072175365671124

namespace A358772

/-- `filter[A168186(n+1), A358771(#)]` -/
def P16967072175365671124.Spec : Prop :=
  ∀ n, P16967072175365671124.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P7454260983590749280

`filter[A230308(n+1), A358771(#)]`
-/

namespace A358772.P7454260983590749280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P7454260983590749280

namespace A358772

/-- `filter[A230308(n+1), A358771(#)]` -/
def P7454260983590749280.Spec : Prop :=
  ∀ n, P7454260983590749280.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P2592264261986090868

`filter[A094784(n+1), A358771(#)]`
-/

namespace A358772.P2592264261986090868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P2592264261986090868

namespace A358772

/-- `filter[A094784(n+1), A358771(#)]` -/
def P2592264261986090868.Spec : Prop :=
  ∀ n, P2592264261986090868.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P17103058379559189299

`filter[A000037(n+1), A358771(#)]`
-/

namespace A358772.P17103058379559189299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P17103058379559189299

namespace A358772

/-- `filter[A000037(n+1), A358771(#)]` -/
def P17103058379559189299.Spec : Prop :=
  ∀ n, P17103058379559189299.a n = A358772 (n + 1)

end A358772

/-! ## A358772.P17127311678018809422

`filter[A164514(n+1), A358771(#)]`
-/

namespace A358772.P17127311678018809422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A358772.P17127311678018809422

namespace A358772

/-- `filter[A164514(n+1), A358771(#)]` -/
def P17127311678018809422.Spec : Prop :=
  ∀ n, P17127311678018809422.a n = A358772 (n + 1)

end A358772

/-!
# A358773: a(n) = 1 if the arithmetic derivative of n is of the form 4k+3, otherwise 0.

The programs for A358773, the canonical program `A358773.P1638866335392690510` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358773 has offset 0).

The definition of A358773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358773.P1638866335392690510

`A165560(n)-A358771(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A358773

/-- `A165560(n)-A358771(n)` -/
def P1638866335392690510.Spec : Prop :=
  ∀ n, P1638866335392690510.a n = A358773 n

theorem P1638866335392690510.correct : P1638866335392690510.Spec := by
  intro n
  simp only [A358773]

end A358773

/-! ## A358773.P1613972906161045827

`C(A353493(n), 3)`
-/

namespace A358773.P1613972906161045827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353493 n).toNat 3

end

end A358773.P1613972906161045827

namespace A358773

/-- `C(A353493(n), 3)` -/
def P1613972906161045827.Spec : Prop :=
  ∀ n, (P1613972906161045827.a n : ℤ) = A358773 n

end A358773

/-! ## A358773.P6622705012962101635

`char[A358774(n+1)]`
-/

namespace A358773.P6622705012962101635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358773.P6622705012962101635

namespace A358773

/-- `char[A358774(n+1)]` -/
def P6622705012962101635.Spec : Prop :=
  ∀ n, (P6622705012962101635.a n : ℤ) = A358773 n

end A358773

/-! ## A358773.P15238322430421937404

`C(A003415(n), 3)%2`
-/

namespace A358773.P15238322430421937404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003415 n).toNat 3 % 2

end

end A358773.P15238322430421937404

namespace A358773

/-- `C(A003415(n), 3)%2` -/
def P15238322430421937404.Spec : Prop :=
  ∀ n, (P15238322430421937404.a n : ℤ) = A358773 n

end A358773

/-! ## A358773.P3192920043400707758

`A121262(A003415(n)+1)`
-/

namespace A358773.P3192920043400707758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A003415 n + 1).toNat

end

end A358773.P3192920043400707758

namespace A358773

/-- `A121262(A003415(n)+1)` -/
def P3192920043400707758.Spec : Prop :=
  ∀ n, P3192920043400707758.a n = A358773 n

end A358773

/-! ## A358773.P17152477190685376825

`A358771(A109049(n)+n)`
-/

namespace A358773.P17152477190685376825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A109049 n + (n : ℤ)).toNat

end

end A358773.P17152477190685376825

namespace A358773

/-- `A358771(A109049(n)+n)` -/
def P17152477190685376825.Spec : Prop :=
  ∀ n, P17152477190685376825.a n = A358773 n

end A358773

/-! ## A358773.P306777911451906152

`1-A166486(A003415(n)+1)`
-/

namespace A358773.P306777911451906152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166486 (A003415 n + 1).toNat

end

end A358773.P306777911451906152

namespace A358773

/-- `1-A166486(A003415(n)+1)` -/
def P306777911451906152.Spec : Prop :=
  ∀ n, P306777911451906152.a n = A358773 n

end A358773

/-! ## A358773.P12245916515310897129

`A358771(A008597(n))`
-/

namespace A358773.P12245916515310897129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A008597 n).toNat

end

end A358773.P12245916515310897129

namespace A358773

/-- `A358771(A008597(n))` -/
def P12245916515310897129.Spec : Prop :=
  ∀ n, P12245916515310897129.a n = A358773 n

end A358773

/-! ## A358773.P1625490222767598810

`A177704(A168036(n)+n)-1`
-/

namespace A358773.P1625490222767598810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A168036 n + (n : ℤ)).toNat - 1

end

end A358773.P1625490222767598810

namespace A358773

/-- `A177704(A168036(n)+n)-1` -/
def P1625490222767598810.Spec : Prop :=
  ∀ n, P1625490222767598810.a n = A358773 n

end A358773

/-! ## A358773.P16017698164405109915

`A358771(A004949(n))`
-/

namespace A358773.P16017698164405109915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A004949 n).toNat

end

end A358773.P16017698164405109915

namespace A358773

/-- `A358771(A004949(n))` -/
def P16017698164405109915.Spec : Prop :=
  ∀ n, P16017698164405109915.a n = A358773 n

end A358773

/-!
# A358774: Numbers whose arithmetic derivative is of the form 4k+3, cf. A003415.

The programs for A358774, the canonical program `A358774.P256100203770413296` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358774 has offset 1).

The definition of A358774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358774.P256100203770413296

`lt[0, A358773(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A358774

/-- `lt[0, A358773(n)]` -/
def P256100203770413296.Spec : Prop :=
  ∀ n, (P256100203770413296.a n : ℤ) = A358774 (n + 1)

theorem P256100203770413296.correct : P256100203770413296.Spec := by
  intro n
  simp only [A358774, Nat.add_sub_cancel]

end A358774

/-! ## A358774.P814346570012542883

`lt[2, A353493(n)]`
-/

namespace A358774.P814346570012542883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358774.P814346570012542883

namespace A358774

/-- `lt[2, A353493(n)]` -/
def P814346570012542883.Spec : Prop :=
  ∀ n, (P814346570012542883.a n : ℤ) = A358774 (n + 1)

end A358774

/-! ## A358774.P13925442578838241182

`eq[A010121(n), A358773(n)]`
-/

namespace A358774.P13925442578838241182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358774.P13925442578838241182

namespace A358774

/-- `eq[A010121(n), A358773(n)]` -/
def P13925442578838241182.Spec : Prop :=
  ∀ n, (P13925442578838241182.a n : ℤ) = A358774 (n + 1)

end A358774

/-! ## A358774.P16562587498581895339

`eq[A010130(n), A358773(n)]`
-/

namespace A358774.P16562587498581895339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358774.P16562587498581895339

namespace A358774

/-- `eq[A010130(n), A358773(n)]` -/
def P16562587498581895339.Spec : Prop :=
  ∀ n, (P16562587498581895339.a n : ℤ) = A358774 (n + 1)

end A358774

/-! ## A358774.P9427102659420134151

`eq[A010153(n), A358773(n)]`
-/

namespace A358774.P9427102659420134151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358774.P9427102659420134151

namespace A358774

/-- `eq[A010153(n), A358773(n)]` -/
def P9427102659420134151.Spec : Prop :=
  ∀ n, (P9427102659420134151.a n : ℤ) = A358774 (n + 1)

end A358774

/-! ## A358774.P9147712052187407099

`eq[A040037(n), A358773(n)]`
-/

namespace A358774.P9147712052187407099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358774.P9147712052187407099

namespace A358774

/-- `eq[A040037(n), A358773(n)]` -/
def P9147712052187407099.Spec : Prop :=
  ∀ n, (P9147712052187407099.a n : ℤ) = A358774 (n + 1)

end A358774

/-! ## A358774.P15925121852203765733

`filter[A235991(n+1), A358773(#)]`
-/

namespace A358774.P15925121852203765733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P15925121852203765733

namespace A358774

/-- `filter[A235991(n+1), A358773(#)]` -/
def P15925121852203765733.Spec : Prop :=
  ∀ n, P15925121852203765733.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P13948086854561840182

`filter[A359782(n+1), A358773(#)]`
-/

namespace A358774.P13948086854561840182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P13948086854561840182

namespace A358774

/-- `filter[A359782(n+1), A358773(#)]` -/
def P13948086854561840182.Spec : Prop :=
  ∀ n, P13948086854561840182.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P3001324666967789556

`filter[A368999(n+1), A358773(#)]`
-/

namespace A358774.P3001324666967789556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P3001324666967789556

namespace A358774

/-- `filter[A368999(n+1), A358773(#)]` -/
def P3001324666967789556.Spec : Prop :=
  ∀ n, P3001324666967789556.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P4126671837844147043

`filter[A257586(n+1), A358773(#)]`
-/

namespace A358774.P4126671837844147043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P4126671837844147043

namespace A358774

/-- `filter[A257586(n+1), A358773(#)]` -/
def P4126671837844147043.Spec : Prop :=
  ∀ n, P4126671837844147043.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P2365460685042985785

`filter[A089229(n+1), A358773(#)]`
-/

namespace A358774.P2365460685042985785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P2365460685042985785

namespace A358774

/-- `filter[A089229(n+1), A358773(#)]` -/
def P2365460685042985785.Spec : Prop :=
  ∀ n, P2365460685042985785.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P9765037409396442443

`filter[A139118(n+1), A358773(#)]`
-/

namespace A358774.P9765037409396442443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P9765037409396442443

namespace A358774

/-- `filter[A139118(n+1), A358773(#)]` -/
def P9765037409396442443.Spec : Prop :=
  ∀ n, P9765037409396442443.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P8163656367026329610

`filter[A268388(n+1), A358773(#)]`
-/

namespace A358774.P8163656367026329610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P8163656367026329610

namespace A358774

/-- `filter[A268388(n+1), A358773(#)]` -/
def P8163656367026329610.Spec : Prop :=
  ∀ n, P8163656367026329610.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P14822317807964120122

`filter[A080257(n+1), A358773(#)]`
-/

namespace A358774.P14822317807964120122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P14822317807964120122

namespace A358774

/-- `filter[A080257(n+1), A358773(#)]` -/
def P14822317807964120122.Spec : Prop :=
  ∀ n, P14822317807964120122.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P11707859179153326168

`filter[A220571(n+1), A358773(#)]`
-/

namespace A358774.P11707859179153326168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P11707859179153326168

namespace A358774

/-- `filter[A220571(n+1), A358773(#)]` -/
def P11707859179153326168.Spec : Prop :=
  ∀ n, P11707859179153326168.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P15123450046071760747

`filter[A138592(n+1), A358773(#)]`
-/

namespace A358774.P15123450046071760747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P15123450046071760747

namespace A358774

/-- `filter[A138592(n+1), A358773(#)]` -/
def P15123450046071760747.Spec : Prop :=
  ∀ n, P15123450046071760747.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P14683989712648491322

`filter[A343311(n+1), A358773(#)]`
-/

namespace A358774.P14683989712648491322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P14683989712648491322

namespace A358774

/-- `filter[A343311(n+1), A358773(#)]` -/
def P14683989712648491322.Spec : Prop :=
  ∀ n, P14683989712648491322.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P7941699667984588865

`filter[A002808(n+1), A358773(#)]`
-/

namespace A358774.P7941699667984588865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P7941699667984588865

namespace A358774

/-- `filter[A002808(n+1), A358773(#)]` -/
def P7941699667984588865.Spec : Prop :=
  ∀ n, P7941699667984588865.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P9875464773985604866

`filter[A056653(n+1), A358773(#)]`
-/

namespace A358774.P9875464773985604866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P9875464773985604866

namespace A358774

/-- `filter[A056653(n+1), A358773(#)]` -/
def P9875464773985604866.Spec : Prop :=
  ∀ n, P9875464773985604866.a n = A358774 (n + 1)

end A358774

/-! ## A358774.P15115142989936618095

`filter[A176423(n+1), A358773(#)]`
-/

namespace A358774.P15115142989936618095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A358774.P15115142989936618095

namespace A358774

/-- `filter[A176423(n+1), A358773(#)]` -/
def P15115142989936618095.Spec : Prop :=
  ∀ n, P15115142989936618095.a n = A358774 (n + 1)

end A358774

/-!
# A358775: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an odd number, otherwise 0.

The programs for A358775, the canonical program `A358775.P186316073311137484` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358775 has offset 1).

The definition of A358775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358775.P186316073311137484

`A065043(n+1)-A353374(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A358775

/-- `A065043(n+1)-A353374(n+1)` -/
def P186316073311137484.Spec : Prop :=
  ∀ n, P186316073311137484.a n = A358775 (n + 1)

theorem P186316073311137484.correct : P186316073311137484.Spec := by
  intro n
  simp only [A358775, Nat.add_sub_cancel]

end A358775

/-! ## A358775.P9071874509669029452

`A065043(n+1)*(1-A356163(n+1))`
-/

namespace A358775.P9071874509669029452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * (1 - A356163 (n + 1))

end

end A358775.P9071874509669029452

namespace A358775

/-- `A065043(n+1)*(1-A356163(n+1))` -/
def P9071874509669029452.Spec : Prop :=
  ∀ n, P9071874509669029452.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P2815960391279978696

`A065043(n+1)*A000035(A007814(n+1))`
-/

namespace A358775.P2815960391279978696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A000035 (A007814 (n + 1)).toNat

end

end A358775.P2815960391279978696

namespace A358775

/-- `A065043(n+1)*A000035(A007814(n+1))` -/
def P2815960391279978696.Spec : Prop :=
  ∀ n, P2815960391279978696.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P3667094526374693293

`((∑{e}[n+1, #]-1)*∑{p}[n+1, #*val(n+1, #)])%2`
-/

namespace A358775.P3667094526374693293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) * ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)) 2

end

end A358775.P3667094526374693293

namespace A358775

/-- `((∑{e}[n+1, #]-1)*∑{p}[n+1, #*val(n+1, #)])%2` -/
def P3667094526374693293.Spec : Prop :=
  ∀ n, P3667094526374693293.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P18358566646549967154

`and(1, (∑{e}[n+1, #]-1)*∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A358775.P18358566646549967154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) * ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ))

end

end A358775.P18358566646549967154

namespace A358775

/-- `and(1, (∑{e}[n+1, #]-1)*∑{p}[n+1, #*val(n+1, #)])` -/
def P18358566646549967154.Spec : Prop :=
  ∀ n, P18358566646549967154.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P8202068714466816221

`A353374(6*(n+1))`
-/

namespace A358775.P8202068714466816221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (6 * (n + 1))

end

end A358775.P8202068714466816221

namespace A358775

/-- `A353374(6*(n+1))` -/
def P8202068714466816221.Spec : Prop :=
  ∀ n, P8202068714466816221.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P6207282423448833903

`A356174(n+1)%2`
-/

namespace A358775.P6207282423448833903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356174 (n + 1)) 2

end

end A358775.P6207282423448833903

namespace A358775

/-- `A356174(n+1)%2` -/
def P6207282423448833903.Spec : Prop :=
  ∀ n, P6207282423448833903.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P5480256784629372809

`log2(gcd(val(n+1, 2)%2+1, A001222(n+1)))`
-/

namespace A358775.P5480256784629372809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd ((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 : ℕ) : ℤ) (A001222 (n + 1)) : ℝ)

end

end A358775.P5480256784629372809

namespace A358775

/-- `log2(gcd(val(n+1, 2)%2+1, A001222(n+1)))` -/
def P5480256784629372809.Spec : Prop :=
  ∀ n, P5480256784629372809.a n = (A358775 (n + 1) : ℝ)

end A358775

/-! ## A358775.P12400110004841089417

`A177063(A079065(n+1))`
-/

namespace A358775.P12400110004841089417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177063 (A079065 (n + 1)).toNat

end

end A358775.P12400110004841089417

namespace A358775

/-- `A177063(A079065(n+1))` -/
def P12400110004841089417.Spec : Prop :=
  ∀ n, P12400110004841089417.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P12428617443347334192

`A000035(A356174(n+1))`
-/

namespace A358775.P12428617443347334192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A356174 (n + 1)).toNat

end

end A358775.P12428617443347334192

namespace A358775

/-- `A000035(A356174(n+1))` -/
def P12428617443347334192.Spec : Prop :=
  ∀ n, P12428617443347334192.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P15431665035373644900

`A065043(n+1)*A096268(n)`
-/

namespace A358775.P15431665035373644900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A096268 n

end

end A358775.P15431665035373644900

namespace A358775

/-- `A065043(n+1)*A096268(n)` -/
def P15431665035373644900.Spec : Prop :=
  ∀ n, P15431665035373644900.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P9899621451859436516

`A065043(n+1)*A231600(n)`
-/

namespace A358775.P9899621451859436516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A231600 n

end

end A358775.P9899621451859436516

namespace A358775

/-- `A065043(n+1)*A231600(n)` -/
def P9899621451859436516.Spec : Prop :=
  ∀ n, P9899621451859436516.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P13515512621876162662

`A039963(n)*A353555(n+1)`
-/

namespace A358775.P13515512621876162662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n * A353555 (n + 1)

end

end A358775.P13515512621876162662

namespace A358775

/-- `A039963(n)*A353555(n+1)` -/
def P13515512621876162662.Spec : Prop :=
  ∀ n, P13515512621876162662.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P17384508233533038005

`A096268(n*A353555(n+1))`
-/

namespace A358775.P17384508233533038005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((n : ℤ) * A353555 (n + 1)).toNat

end

end A358775.P17384508233533038005

namespace A358775

/-- `A096268(n*A353555(n+1))` -/
def P17384508233533038005.Spec : Prop :=
  ∀ n, P17384508233533038005.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P7250148479707849265

`A096268(n*A353669(n+1))`
-/

namespace A358775.P7250148479707849265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((n : ℤ) * A353669 (n + 1)).toNat

end

end A358775.P7250148479707849265

namespace A358775

/-- `A096268(n*A353669(n+1))` -/
def P7250148479707849265.Spec : Prop :=
  ∀ n, P7250148479707849265.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P715392431596976317

`A101669(n*A353555(n+1))`
-/

namespace A358775.P715392431596976317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 ((n : ℤ) * A353555 (n + 1)).toNat

end

end A358775.P715392431596976317

namespace A358775

/-- `A101669(n*A353555(n+1))` -/
def P715392431596976317.Spec : Prop :=
  ∀ n, P715392431596976317.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P17616842383311873076

`A101674(n*A353555(n+1))`
-/

namespace A358775.P17616842383311873076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 ((n : ℤ) * A353555 (n + 1)).toNat

end

end A358775.P17616842383311873076

namespace A358775

/-- `A101674(n*A353555(n+1))` -/
def P17616842383311873076.Spec : Prop :=
  ∀ n, P17616842383311873076.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P11848792990261060432

`A096268(n*A359768(n+1))`
-/

namespace A358775.P11848792990261060432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((n : ℤ) * A359768 (n + 1)).toNat

end

end A358775.P11848792990261060432

namespace A358775

/-- `A096268(n*A359768(n+1))` -/
def P11848792990261060432.Spec : Prop :=
  ∀ n, P11848792990261060432.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P102740500863444523

`A036580(n)%A007421(n+1)`
-/

namespace A358775.P102740500863444523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036580 n) (A007421 (n + 1))

end

end A358775.P102740500863444523

namespace A358775

/-- `A036580(n)%A007421(n+1)` -/
def P102740500863444523.Spec : Prop :=
  ∀ n, P102740500863444523.a n = A358775 (n + 1)

end A358775

/-! ## A358775.P18241052831300558431

`A059139(n)%A007421(n+1)`
-/

namespace A358775.P18241052831300558431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059139 n) (A007421 (n + 1))

end

end A358775.P18241052831300558431

namespace A358775

/-- `A059139(n)%A007421(n+1)` -/
def P18241052831300558431.Spec : Prop :=
  ∀ n, P18241052831300558431.a n = A358775 (n + 1)

end A358775

/-!
# A358776: Positive integers with an even number of prime factors (counting repetitions) that sum to an odd number.

The programs for A358776, the canonical program `A358776.P5160008666837522864` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358776 has offset 1).

The definition of A358776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358776.P6355825939878459958

`lt[0, A358775(n+1)]+1`
-/

namespace A358776.P6355825939878459958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358776.P6355825939878459958

namespace A358776

/-- `lt[0, A358775(n+1)]+1` -/
def P6355825939878459958.Spec : Prop :=
  ∀ n, (P6355825939878459958.a n : ℤ) = A358776 (n + 1)

end A358776

/-! ## A358776.P6421752277743805877

`filter[A063745(n+1), A358775(#)]`
-/

namespace A358776.P6421752277743805877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A358776.P6421752277743805877

namespace A358776

/-- `filter[A063745(n+1), A358775(#)]` -/
def P6421752277743805877.Spec : Prop :=
  ∀ n, P6421752277743805877.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P917725019265007296

`filter[A063745(n+1), A359832(#)]`
-/

namespace A358776.P917725019265007296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A358776.P917725019265007296

namespace A358776

/-- `filter[A063745(n+1), A359832(#)]` -/
def P917725019265007296.Spec : Prop :=
  ∀ n, P917725019265007296.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P1078441571354463072

`filter[A036348(n+1), A065043(#)]`
-/

namespace A358776.P1078441571354463072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A358776.P1078441571354463072

namespace A358776

/-- `filter[A036348(n+1), A065043(#)]` -/
def P1078441571354463072.Spec : Prop :=
  ∀ n, P1078441571354463072.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P9879851815671322837

`filter[A036348(n+1), A217586(#)]`
-/

namespace A358776.P9879851815671322837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A358776.P9879851815671322837

namespace A358776

/-- `filter[A036348(n+1), A217586(#)]` -/
def P9879851815671322837.Spec : Prop :=
  ∀ n, P9879851815671322837.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P16319492854877801535

`filter[A036348(n+1), A353555(#)]`
-/

namespace A358776.P16319492854877801535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A358776.P16319492854877801535

namespace A358776

/-- `filter[A036348(n+1), A353555(#)]` -/
def P16319492854877801535.Spec : Prop :=
  ∀ n, P16319492854877801535.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P9010509074719233681

`filter[A036348(n+1), A353669(#)]`
-/

namespace A358776.P9010509074719233681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A358776.P9010509074719233681

namespace A358776

/-- `filter[A036348(n+1), A353669(#)]` -/
def P9010509074719233681.Spec : Prop :=
  ∀ n, P9010509074719233681.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P14512423471605522628

`filter[A036348(n+1), A358775(#)]`
-/

namespace A358776.P14512423471605522628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A358776.P14512423471605522628

namespace A358776

/-- `filter[A036348(n+1), A358775(#)]` -/
def P14512423471605522628.Spec : Prop :=
  ∀ n, P14512423471605522628.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P13384900801492214296

`filter[A036348(n+1), A359832(#)]`
-/

namespace A358776.P13384900801492214296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A358776.P13384900801492214296

namespace A358776

/-- `filter[A036348(n+1), A359832(#)]` -/
def P13384900801492214296.Spec : Prop :=
  ∀ n, P13384900801492214296.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P1285689359561550156

`∩[A036348(n+1), A063745(n+1)]`
-/

namespace A358776.P1285689359561550156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358776.P1285689359561550156

namespace A358776

/-- `∩[A036348(n+1), A063745(n+1)]` -/
def P1285689359561550156.Spec : Prop :=
  ∀ n, (P1285689359561550156.a n : ℤ) = A358776 (n + 1)

end A358776

/-! ## A358776.P9950832356910538647

`filter[A036554(n+1), A065043(#)]`
-/

namespace A358776.P9950832356910538647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A358776.P9950832356910538647

namespace A358776

/-- `filter[A036554(n+1), A065043(#)]` -/
def P9950832356910538647.Spec : Prop :=
  ∀ n, P9950832356910538647.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P15618973274480082615

`filter[A036554(n+1), A353555(#)]`
-/

namespace A358776.P15618973274480082615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A358776.P15618973274480082615

namespace A358776

/-- `filter[A036554(n+1), A353555(#)]` -/
def P15618973274480082615.Spec : Prop :=
  ∀ n, P15618973274480082615.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P5160008666837522864

`filter[A036554(n+1), A353669(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358776

/-- `filter[A036554(n+1), A353669(#)]` -/
def P5160008666837522864.Spec : Prop :=
  ∀ n, P5160008666837522864.a n = A358776 (n + 1)

theorem P5160008666837522864.correct : P5160008666837522864.Spec := by
  intro n
  simp only [A358776, Nat.add_sub_cancel]

end A358776

/-! ## A358776.P14799828015373848576

`filter[A036554(n+1), A358775(#)]`
-/

namespace A358776.P14799828015373848576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A358776.P14799828015373848576

namespace A358776

/-- `filter[A036554(n+1), A358775(#)]` -/
def P14799828015373848576.Spec : Prop :=
  ∀ n, P14799828015373848576.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P12616331289095437758

`∩[A036348(n+1), A036554(n+1)]`
-/

namespace A358776.P12616331289095437758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358776.P12616331289095437758

namespace A358776

/-- `∩[A036348(n+1), A036554(n+1)]` -/
def P12616331289095437758.Spec : Prop :=
  ∀ n, (P12616331289095437758.a n : ℤ) = A358776 (n + 1)

end A358776

/-! ## A358776.P7685281379917971262

`∩[A036554(n+1), A063745(n+1)]`
-/

namespace A358776.P7685281379917971262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358776.P7685281379917971262

namespace A358776

/-- `∩[A036554(n+1), A063745(n+1)]` -/
def P7685281379917971262.Spec : Prop :=
  ∀ n, (P7685281379917971262.a n : ℤ) = A358776 (n + 1)

end A358776

/-! ## A358776.P12543823867749033749

`filter[A047395(n+2), A358775(#)]`
-/

namespace A358776.P12543823867749033749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A358776.P12543823867749033749

namespace A358776

/-- `filter[A047395(n+2), A358775(#)]` -/
def P12543823867749033749.Spec : Prop :=
  ∀ n, P12543823867749033749.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P2217398167183730123

`filter[A036350(n+1), A065043(#)]`
-/

namespace A358776.P2217398167183730123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A358776.P2217398167183730123

namespace A358776

/-- `filter[A036350(n+1), A065043(#)]` -/
def P2217398167183730123.Spec : Prop :=
  ∀ n, P2217398167183730123.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P9092569275960151665

`filter[A036350(n+1), A217586(#)]`
-/

namespace A358776.P9092569275960151665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A358776.P9092569275960151665

namespace A358776

/-- `filter[A036350(n+1), A217586(#)]` -/
def P9092569275960151665.Spec : Prop :=
  ∀ n, P9092569275960151665.a n = A358776 (n + 1)

end A358776

/-! ## A358776.P984056914288917811

`filter[A036350(n+1), A353555(#)]`
-/

namespace A358776.P984056914288917811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A358776.P984056914288917811

namespace A358776

/-- `filter[A036350(n+1), A353555(#)]` -/
def P984056914288917811.Spec : Prop :=
  ∀ n, P984056914288917811.a n = A358776 (n + 1)

end A358776

/-!
# A358777: Dirichlet inverse of A353557, the characteristic function of odd numbers with an even number of prime factors (counted with multiplicity).

The programs for A358777, there is no canonical definition to state claims against.
-/

/-! ## A358777.P2481914713655612342

`A065043(n+1)*A359773(n+1)`
-/

namespace A358777.P2481914713655612342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359773 (n + 1)

end

end A358777.P2481914713655612342

/-! ## A358777.P8670452241431443079

`A353557(n+1)*A359763(n+1)`
-/

namespace A358777.P8670452241431443079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) * A359763 (n + 1)

end

end A358777.P8670452241431443079

/-! ## A358777.P5067322863755221897

`A353557(n+1)*A359814(n+1)`
-/

namespace A358777.P5067322863755221897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) * A359814 (n + 1)

end

end A358777.P5067322863755221897

/-! ## A358777.P7257768287129149484

`∑{d}[n+1, A369454(#)]`
-/

namespace A358777.P7257768287129149484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369454 d

end

end A358777.P7257768287129149484

/-! ## A358777.P9709920471713738895

`A359780(n^(n%2)+n)`
-/

namespace A358777.P9709920471713738895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (n ^ (n % 2) + n)

end

end A358777.P9709920471713738895

/-! ## A358777.P1165473726597881510

`∑[(-1)^n]*A359823(n+1)`
-/

namespace A358777.P1165473726597881510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A359823 (n + 1)

end

end A358777.P1165473726597881510

/-! ## A358777.P15115597368543194057

`∑{d}[n+1, #*A378526((n+1)/#)]`
-/

namespace A358777.P15115597368543194057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358777.P15115597368543194057

/-! ## A358777.P9445164307123954161

`A359763(A141310(n))`
-/

namespace A358777.P9445164307123954161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A141310 n).toNat

end

end A358777.P9445164307123954161

/-! ## A358777.P10082237413697358285

`A359773(A022998(n+1))`
-/

namespace A358777.P10082237413697358285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (A022998 (n + 1)).toNat

end

end A358777.P10082237413697358285

/-! ## A358777.P3263661436798736014

`A359780(A043547(n+1))`
-/

namespace A358777.P3263661436798736014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (A043547 (n + 1)).toNat

end

end A358777.P3263661436798736014

/-! ## A358777.P15903604017523171087

`A359780(A066070(n+1))`
-/

namespace A358777.P15903604017523171087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (A066070 (n + 1)).toNat

end

end A358777.P15903604017523171087

/-! ## A358777.P2864265183399793741

`A359773(A195161(n+1))`
-/

namespace A358777.P2864265183399793741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (A195161 (n + 1)).toNat

end

end A358777.P2864265183399793741

/-! ## A358777.P10924134057363902081

`A369974(A230089(n+1))`
-/

namespace A358777.P10924134057363902081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369974 (A230089 (n + 1)).toNat

end

end A358777.P10924134057363902081

/-! ## A358777.P8135050830219139396

`A359780(A259445(n+1))`
-/

namespace A358777.P8135050830219139396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (A259445 (n + 1)).toNat

end

end A358777.P8135050830219139396

/-! ## A358777.P15240556509846528483

`A059841(n)*A359763(n+1)`
-/

namespace A358777.P15240556509846528483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359763 (n + 1)

end

end A358777.P15240556509846528483

/-! ## A358777.P3495175070206146258

`A059841(n)*A359773(n+1)`
-/

namespace A358777.P3495175070206146258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359773 (n + 1)

end

end A358777.P3495175070206146258

/-! ## A358777.P8697371260858309688

`A059841(n)*A359780(n+1)`
-/

namespace A358777.P8697371260858309688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359780 (n + 1)

end

end A358777.P8697371260858309688

/-! ## A358777.P13351498261083926934

`A059841(n)*A359814(n+1)`
-/

namespace A358777.P13351498261083926934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359814 (n + 1)

end

end A358777.P13351498261083926934

/-! ## A358777.P9421871542617091460

`A059841(n)*A359815(n+1)`
-/

namespace A358777.P9421871542617091460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359815 (n + 1)

end

end A358777.P9421871542617091460

/-! ## A358777.P1894184964335425372

`A059841(n)*A369974(n+1)`
-/

namespace A358777.P1894184964335425372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A369974 (n + 1)

end

end A358777.P1894184964335425372

/-!
# A358778: Positions of positive terms in A358777, which is the Dirichlet inverse of A353557.

The programs for A358778, there is no canonical definition to state claims against.
-/

/-! ## A358778.P7296067507001975851

`(3*A046316(n+1))%A053600(n+1)`
-/

namespace A358778.P7296067507001975851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A046316 (n + 1)) (A053600 (n + 1))

end

end A358778.P7296067507001975851

/-! ## A358778.P18347671045890420032

`A046317(n+1)^A056975(18^∑{e}[n+1, #])`
-/

namespace A358778.P18347671045890420032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046317 (n + 1) : ℚ) ^ (A056975 (18 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A358778.P18347671045890420032

/-! ## A358778.P16841477457799834313

`A046317(n+1)^A323410(A000079(n))`
-/

namespace A358778.P16841477457799834313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046317 (n + 1) : ℚ) ^ (A323410 (A000079 n).toNat : ℤ)

end

end A358778.P16841477457799834313

/-! ## A358778.P11676025784874096656

`A046317(n+1)%A327929(A069072(n))`
-/

namespace A358778.P11676025784874096656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046317 (n + 1)) (A327929 (A069072 n).toNat)

end

end A358778.P11676025784874096656

/-! ## A358778.P6317018154129114496

`C(A046317(n+1), A375667(A002878(n)))`
-/

namespace A358778.P6317018154129114496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046317 (n + 1)).toNat (A375667 (A002878 n).toNat).toNat

end

end A358778.P6317018154129114496

/-!
# A358779: a(n) is the maximal absolute value of the determinant of an n X n symmetric matrix using all the integers from 0 to n*(n + 1)/2 - 1.

The programs for A358779, there is no canonical definition to state claims against.
-/

/-! ## A358779.P8552290592202255845

`A108548(A262592(n))*A324327(n+2)`
-/

namespace A358779.P8552290592202255845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A262592 n).toNat * A324327 (n + 2)

end

end A358779.P8552290592202255845

/-!
# A358780: Dirichlet g.f.: zeta(s) * zeta(2*s) * zeta(3*s) * zeta(4*s).

The programs for A358780, the canonical program `A358780.P16925951259113054868` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358780 has offset 1).

The definition of A358780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358780.P16925951259113054868

`∏{e}[n+1, A001400(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A358780

/-- `∏{e}[n+1, A001400(#)]` -/
def P16925951259113054868.Spec : Prop :=
  ∀ n, P16925951259113054868.a n = A358780 (n + 1)

theorem P16925951259113054868.correct : P16925951259113054868.Spec := by
  intro n
  simp only [A358780, Nat.add_sub_cancel]

end A358780

/-! ## A358780.P6982780169502622823

`∑{d}[n+1, A063775(#)*A370256((n+1)/#)]`
-/

namespace A358780.P6982780169502622823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063775 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358780.P6982780169502622823

namespace A358780

/-- `∑{d}[n+1, A063775(#)*A370256((n+1)/#)]` -/
def P6982780169502622823.Spec : Prop :=
  ∀ n, P6982780169502622823.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P6401301428852258934

`∏{e}[n+1, A077610(A008288(2^#))]`
-/

namespace A358780.P6401301428852258934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A077610 (A008288 (2 ^ Nat.factorization (f1 n) p)).toNat

end

end A358780.P6401301428852258934

namespace A358780

/-- `∏{e}[n+1, A077610(A008288(2^#))]` -/
def P6401301428852258934.Spec : Prop :=
  ∀ n, P6401301428852258934.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P9691350861592699007

`∏{e}[n+1, A003277(#)]-A056975(A294875(n+1))`
-/

namespace A358780.P9691350861592699007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003277 (Nat.factorization (f1 n) p) - A056975 (A294875 (n + 1)).toNat

end

end A358780.P9691350861592699007

namespace A358780

/-- `∏{e}[n+1, A003277(#)]-A056975(A294875(n+1))` -/
def P9691350861592699007.Spec : Prop :=
  ∀ n, P9691350861592699007.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P1738859876394441450

`∏{e}[n+1, A005180(#)]-A056975(A294875(n+1))`
-/

namespace A358780.P1738859876394441450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005180 (Nat.factorization (f1 n) p) - A056975 (A294875 (n + 1)).toNat

end

end A358780.P1738859876394441450

namespace A358780

/-- `∏{e}[n+1, A005180(#)]-A056975(A294875(n+1))` -/
def P1738859876394441450.Spec : Prop :=
  ∀ n, P1738859876394441450.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P4100584698670481461

`A181819(A003557(n+1))-A056975(A294875(n+1))`
-/

namespace A358780.P4100584698670481461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A003557 (n + 1)).toNat - A056975 (A294875 (n + 1)).toNat

end

end A358780.P4100584698670481461

namespace A358780

/-- `A181819(A003557(n+1))-A056975(A294875(n+1))` -/
def P4100584698670481461.Spec : Prop :=
  ∀ n, P4100584698670481461.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P18149423712392546821

`A181819(A295658((n+1)²))-A056975(A294875(n+1))`
-/

namespace A358780.P18149423712392546821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A295658 ((n + 1) ^ 2)).toNat - A056975 (A294875 (n + 1)).toNat

end

end A358780.P18149423712392546821

namespace A358780

/-- `A181819(A295658((n+1)²))-A056975(A294875(n+1))` -/
def P18149423712392546821.Spec : Prop :=
  ∀ n, P18149423712392546821.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P13369905044389835014

`A071520(A000688(n+1)%A361108(n+2))`
-/

namespace A358780.P13369905044389835014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071520 (Int.tmod (A000688 (n + 1)) (A361108 (n + 2))).toNat

end

end A358780.P13369905044389835014

namespace A358780

/-- `A071520(A000688(n+1)%A361108(n+2))` -/
def P13369905044389835014.Spec : Prop :=
  ∀ n, P13369905044389835014.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P8420347767568096971

`∏{e}[A057918((n+2)²), A054639(#)]`
-/

namespace A358780.P8420347767568096971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054639 (Nat.factorization (f1 n).natAbs p)

end

end A358780.P8420347767568096971

namespace A358780

/-- `∏{e}[A057918((n+2)²), A054639(#)]` -/
def P8420347767568096971.Spec : Prop :=
  ∀ n, P8420347767568096971.a n = A358780 (n + 1)

end A358780

/-! ## A358780.P4930455044647330078

`A255231(lcm(5, n+1))`
-/

namespace A358780.P4930455044647330078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (Nat.lcm 5 (n + 1))

end

end A358780.P4930455044647330078

namespace A358780

/-- `A255231(lcm(5, n+1))` -/
def P4930455044647330078.Spec : Prop :=
  ∀ n, P4930455044647330078.a n = A358780 (n + 1)

end A358780

/-!
# A358781: Number of multiset partitions of [1,1,1,1,2,2,2,2,...,n,n,n,n] into nonempty multisets.

The programs for A358781, there is no canonical definition to state claims against.
-/

/-! ## A358781.P9722862216295235745

`A219727(eq[4, A002262(n)])`
-/

namespace A358781.P9722862216295235745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358781.P9722862216295235745

/-! ## A358781.P4318262617423998700

`A219727(eq[4, A144328(n+1)])`
-/

namespace A358781.P4318262617423998700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358781.P4318262617423998700

/-! ## A358781.P16423725840110220830

`A219727(eq[5, A002260(n+1)])`
-/

namespace A358781.P16423725840110220830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358781.P16423725840110220830

/-! ## A358781.P9646605454986527444

`A219727(eq[4, A059268(n)/4])`
-/

namespace A358781.P9646605454986527444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A358781.P9646605454986527444

/-! ## A358781.P31043440687320162

`A219727(eq[2, root(A059268(n), 4)])`
-/

namespace A358781.P31043440687320162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A358781.P31043440687320162

/-!
# A358782: The number of regions formed when every pair of n points, placed at the vertices of a regular n-gon, are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A358782, there is no canonical definition to state claims against.
-/

/-! ## A358782.P901053320388309943

`A358783(n+2)-A358746(n+2)+1`
-/

namespace A358782.P901053320388309943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2) - A358746 (n + 2) + 1

end

end A358782.P901053320388309943

/-! ## A358782.P11003971435037655725

`A358783(n+2)+A370976(n+2)-A370977(n+2)`
-/

namespace A358782.P11003971435037655725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2) + (A370976 (n + 2) - A370977 (n + 2))

end

end A358782.P11003971435037655725

/-! ## A358782.P16933919263876893515

`A358783(n+2)+A370978(n+2)-A370979(n+2)`
-/

namespace A358782.P16933919263876893515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2) + (A370978 (n + 2) - A370979 (n + 2))

end

end A358782.P16933919263876893515

/-! ## A358782.P5400418350684232154

`A358783(n+2)-A023443(A358746(n+2))`
-/

namespace A358782.P5400418350684232154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2) - A023443 (A358746 (n + 2)).toNat

end

end A358782.P5400418350684232154

/-!
# A358783: The number of edges formed when every pair of n points, placed at the vertices of a regular n-gon, are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A358783, there is no canonical definition to state claims against.
-/

/-! ## A358783.P8068950648413221676

`A358746(n+2)+A358782(n+2)-1`
-/

namespace A358783.P8068950648413221676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358746 (n + 2) + A358782 (n + 2) - 1

end

end A358783.P8068950648413221676

/-! ## A358783.P13815014603337198245

`A358782(n+2)+A370977(n+2)-A370976(n+2)`
-/

namespace A358783.P13815014603337198245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358782 (n + 2) + (A370977 (n + 2) - A370976 (n + 2))

end

end A358783.P13815014603337198245

/-! ## A358783.P17640768691979138471

`A358782(n+2)+A370979(n+2)-A370978(n+2)`
-/

namespace A358783.P17640768691979138471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358782 (n + 2) + (A370979 (n + 2) - A370978 (n + 2))

end

end A358783.P17640768691979138471

/-! ## A358783.P6120637405005304381

`A358746(n+2)+A023443(A358782(n+2))`
-/

namespace A358783.P6120637405005304381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358746 (n + 2) + A023443 (A358782 (n + 2)).toNat

end

end A358783.P6120637405005304381

/-! ## A358783.P12135355088891624475

`A052928(A358782(n+2)+A358746(n+2))`
-/

namespace A358783.P12135355088891624475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A358782 (n + 2) + A358746 (n + 2)).toNat

end

end A358783.P12135355088891624475

/-!
# A358785: Number of cycles in the grid graph P_11 X P_n.

The programs for A358785, there is no canonical definition to state claims against.
-/

/-! ## A358785.P1745306740256697981

`A231829(A374011(n+1))`
-/

namespace A358785.P1745306740256697981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374011 (n + 1)).toNat

end

end A358785.P1745306740256697981

/-!
# A358786: a(1) = 1. For n > 1, a(n) is least novel k != n such that rad(k) = rad(n) and either k | n or n | k, where rad is A007947.

The programs for A358786, there is no canonical definition to state claims against.
-/

/-! ## A358786.P6428898395884133829

`A336643(A285109(n+1))*A350390(n+1)`
-/

namespace A358786.P6428898395884133829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A285109 (n + 1)).toNat * A350390 (n + 1)

end

end A358786.P6428898395884133829

/-! ## A358786.P3957689026536341606

`A053143(n+1)/A007913(A032742(n+1))`
-/

namespace A358786.P3957689026536341606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A007913 (A032742 (n + 1)).toNat : ℚ)

end

end A358786.P3957689026536341606

/-!
# A358788: Numbers k such that tau(k^2) + 2*sigma(k^2) and 2*tau(k^2) + sigma(k^2) are both prime.

The programs for A358788, there is no canonical definition to state claims against.
-/

/-! ## A358788.P15777632774289168239

`∑[gcd(A022553(n), A098322(2*n+1))]`
-/

namespace A358788.P15777632774289168239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022553 n) (A098322 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358788.P15777632774289168239

/-! ## A358788.P9165936829851199538

`eq[A001462(A327482(n+1)), A135664(n+1)]`
-/

namespace A358788.P9165936829851199538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A327482 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358788.P9165936829851199538

/-! ## A358788.P6421657915061421633

`eq[A025480(A298461(n+4)), A353353(n+1)]`
-/

namespace A358788.P6421657915061421633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A298461 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358788.P6421657915061421633

/-!
# A358790: a(n) is the least prime p such that (2*n+1)^2 + p^2 is twice a prime.

The programs for A358790, there is no canonical definition to state claims against.
-/

/-! ## A358790.P651130808719017863

`A053669(lcm(8*∑{d}[n+1, #], ∑{d}[n+1, n+1+#]))`
-/

namespace A358790.P651130808719017863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (Nat.lcm (8 * (∑ d ∈ Nat.divisors (f1 n), d)) (∑ d ∈ Nat.divisors (f2 n), (n + 1 + d)))

end

end A358790.P651130808719017863

/-! ## A358790.P12499829058835666693

`A053669(2*∑{d}[n+1, #]*(n+2)/2^Δ[val(n+1, 2)])`
-/

namespace A358790.P12499829058835666693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (SequenceMachineLib.roundAway (((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) * ((n + 2 : ℚ) / (2 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)))).toNat

end

end A358790.P12499829058835666693

/-! ## A358790.P9459406972230530803

`A007978(4*∑{d}[n+1, #]*A244363(2*(n+2)))`
-/

namespace A358790.P9459406972230530803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (((4 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) * A244363 (2 * (n + 2))).toNat

end

end A358790.P9459406972230530803

/-! ## A358790.P9633542865873792314

`A007978(A016933(n)*A144613(n+1))`
-/

namespace A358790.P9633542865873792314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A016933 n * A144613 (n + 1)).toNat

end

end A358790.P9633542865873792314

/-! ## A358790.P12657348746366573474

`A053669(A016933(n)*A144613(n+1))`
-/

namespace A358790.P12657348746366573474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A016933 n * A144613 (n + 1)).toNat

end

end A358790.P12657348746366573474

/-!
# A358791: a(n) = n!*Sum_{m=0..floor(n/2)} binomial(n,2*m)^(-1).

The programs for A358791, there is no canonical definition to state claims against.
-/

/-! ## A358791.P10079993349548517414

`A162002(A149081(n))`
-/

namespace A358791.P10079993349548517414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (A149081 n).toNat

end

end A358791.P10079993349548517414

/-!
# A358794: Number of Hamiltonian paths in P_7 X P_n.

The programs for A358794, there is no canonical definition to state claims against.
-/

/-! ## A358794.P7901901240794533901

`A332307(A374008(n+1))`
-/

namespace A358794.P7901901240794533901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A374008 (n + 1)).toNat

end

end A358794.P7901901240794533901

/-! ## A358794.P12755941679210546223

`A332307(A055999(n+4))`
-/

namespace A358794.P12755941679210546223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A055999 (n + 4)).toNat

end

end A358794.P12755941679210546223

/-! ## A358794.P9510417690402091842

`A332307(eq[6, A193592(n)])`
-/

namespace A358794.P9510417690402091842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358794.P9510417690402091842

/-! ## A358794.P11482107915462274084

`A332307(A052905(n+4)-1)`
-/

namespace A358794.P11482107915462274084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A052905 (n + 4) - 1).toNat

end

end A358794.P11482107915462274084

/-! ## A358794.P13196344782521468123

`A332307(A046691(n+5)-2)`
-/

namespace A358794.P13196344782521468123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A046691 (n + 5) - 2).toNat

end

end A358794.P13196344782521468123

/-!
# A358795: Number of Hamiltonian paths in P_8 X P_n.

The programs for A358795, there is no canonical definition to state claims against.
-/

/-! ## A358795.P8945174934033888056

`A332307(A374009(n+1))`
-/

namespace A358795.P8945174934033888056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A374009 (n + 1)).toNat

end

end A358795.P8945174934033888056

/-! ## A358795.P2962700609455550648

`A332307(A155212(n+4)+1)`
-/

namespace A358795.P2962700609455550648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A155212 (n + 4) + 1).toNat

end

end A358795.P2962700609455550648

/-! ## A358795.P11139915693081432519

`A332307(A167499(n+6)+3)`
-/

namespace A358795.P11139915693081432519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A167499 (n + 6) + 3).toNat

end

end A358795.P11139915693081432519

/-! ## A358795.P6022152130625937107

`A332307(A000124(n+8)-8)`
-/

namespace A358795.P6022152130625937107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A000124 (n + 8) - 8).toNat

end

end A358795.P6022152130625937107

/-! ## A358795.P5593739887944329886

`A332307(A000217(n+7)+n+1)`
-/

namespace A358795.P5593739887944329886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A358795.P5593739887944329886

/-!
# A358796: Number of Hamiltonian paths in P_9 X P_n.

The programs for A358796, there is no canonical definition to state claims against.
-/

/-! ## A358796.P2764202026964386755

`A332307(A374010(n+1))`
-/

namespace A358796.P2764202026964386755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A374010 (n + 1)).toNat

end

end A358796.P2764202026964386755

/-! ## A358796.P4832957909398642389

`A332307(eq[6, A219347(n)])`
-/

namespace A358796.P4832957909398642389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358796.P4832957909398642389

/-! ## A358796.P14576342074125393544

`A332307(eq[8, A193592(n)])`
-/

namespace A358796.P14576342074125393544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358796.P14576342074125393544

/-! ## A358796.P4621835136379345228

`A332307(A000124(n+8)+8)`
-/

namespace A358796.P4621835136379345228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A000124 (n + 8) + 8).toNat

end

end A358796.P4621835136379345228

/-! ## A358796.P1665394495094165227

`A332307(eq[10, A131818(n+1)])`
-/

namespace A358796.P1665394495094165227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358796.P1665394495094165227

