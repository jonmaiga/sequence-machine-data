import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A369502: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2+x)^2 ).

The programs for A369502, there is no canonical definition to state claims against.
-/

/-! ## A369502.P7600991965578042811

`∑[A052382(∑[A113329(n)])]`
-/

namespace A369502.P7600991965578042811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369502.P7600991965578042811

/-!
# A369503: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2+x^2)^2 ).

The programs for A369503, there is no canonical definition to state claims against.
-/

/-! ## A369503.P1200961265063408650

`A212277(n+2)^A046988(n)`
-/

namespace A369503.P1200961265063408650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212277 (n + 2) : ℚ) ^ (A046988 n : ℤ)

end

end A369503.P1200961265063408650

/-! ## A369503.P9195345118059337362

`filter[A212277(n+2), A005171(#)]`
-/

namespace A369503.P9195345118059337362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A369503.P9195345118059337362

/-!
# A369504: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2+x^3)^2 ).

The programs for A369504, there is no canonical definition to state claims against.
-/

/-! ## A369504.P4119323667818602991

`A105512(Δ[A027050(2*n+1)])`
-/

namespace A369504.P4119323667818602991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027050 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (f1 (n + 1) - f1 n).toNat

end

end A369504.P4119323667818602991

/-!
# A369507: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3+x^3)^2 ).

The programs for A369507, there is no canonical definition to state claims against.
-/

/-! ## A369507.P14255318128442782111

`A090467(A101370(n+1))+A065616(n+1)`
-/

namespace A369507.P14255318128442782111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (A101370 (n + 1)).toNat + A065616 (n + 1)

end

end A369507.P14255318128442782111

/-!
# A369510: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^2)^2 ).

The programs for A369510, the canonical program `A369510.P1265040740689767623` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369510 has offset 0).

The definition of A369510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369510.P1265040740689767623

`2^n*A006013(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A369510

/-- `2^n*A006013(n)` -/
def P1265040740689767623.Spec : Prop :=
  ∀ n, P1265040740689767623.a n = A369510 n

theorem P1265040740689767623.correct : P1265040740689767623.Spec := by
  intro n
  simp only [A369510]

end A369510

/-! ## A369510.P8339992440556494665

`A006013(n)*A011782(n+1)`
-/

namespace A369510.P8339992440556494665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A011782 (n + 1)

end

end A369510.P8339992440556494665

namespace A369510

/-- `A006013(n)*A011782(n+1)` -/
def P8339992440556494665.Spec : Prop :=
  ∀ n, P8339992440556494665.a n = A369510 n

end A369510

/-! ## A369510.P537990464140903182

`A006013(n)*A060546(2*n)`
-/

namespace A369510.P537990464140903182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A060546 (2 * n)

end

end A369510.P537990464140903182

namespace A369510

/-- `A006013(n)*A060546(2*n)` -/
def P537990464140903182.Spec : Prop :=
  ∀ n, P537990464140903182.a n = A369510 n

end A369510

/-! ## A369510.P9274926105304509071

`record[A134565(n+1)]*A000079(n)`
-/

namespace A369510.P9274926105304509071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A369510.P9274926105304509071

namespace A369510

/-- `record[A134565(n+1)]*A000079(n)` -/
def P9274926105304509071.Spec : Prop :=
  ∀ n, P9274926105304509071.a n = A369510 n

end A369510

/-! ## A369510.P15240407239363741031

`A000079(n)*A134565(2*n+1)`
-/

namespace A369510.P15240407239363741031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A134565 (2 * n + 1)

end

end A369510.P15240407239363741031

namespace A369510

/-- `A000079(n)*A134565(2*n+1)` -/
def P15240407239363741031.Spec : Prop :=
  ∀ n, P15240407239363741031.a n = A369510 n

end A369510

/-! ## A369510.P15336606626615324861

`A006013(n)/A006318(n)*A156017(n)`
-/

namespace A369510.P15336606626615324861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006013 n : ℚ) / (A006318 n : ℚ) * (A156017 n : ℚ)

end

end A369510.P15336606626615324861

namespace A369510

/-- `A006013(n)/A006318(n)*A156017(n)` -/
def P15336606626615324861.Spec : Prop :=
  ∀ n, P15336606626615324861.a n = (A369510 n : ℚ)

end A369510

/-!
# A369511: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^3)^2 ).

The programs for A369511, there is no canonical definition to state claims against.
-/

/-! ## A369511.P14238350354414271595

`A368968(n)+A014082(A001078(n))`
-/

namespace A369511.P14238350354414271595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368968 n + A014082 (A001078 n).toNat

end

end A369511.P14238350354414271595

/-!
# A369516: Numbers k in A126706 such that neither k-1 nor k+1 is in A126706.

The programs for A369516, there is no canonical definition to state claims against.
-/

/-! ## A369516.P8761958637022788490

`A126706(A351958(n+1))%A088294(3*n+1)`
-/

namespace A369516.P8761958637022788490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126706 (A351958 (n + 1)).toNat) (A088294 (3 * n + 1))

end

end A369516.P8761958637022788490

/-! ## A369516.P13402585638740466283

`A126706(comp[A335324(2*n+5)-A357933(n)])`
-/

namespace A369516.P13402585638740466283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335324 (2 * n + 5) - A357933 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A369516.P13402585638740466283

/-! ## A369516.P5680779780552463217

`A126706(comp[A043696(n+1)-A002275(n)]+1)`
-/

namespace A369516.P5680779780552463217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043696 (n + 1) - A002275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A369516.P5680779780552463217

/-! ## A369516.P2471254317391566159

`A126706(comp[A043696(n+1)-A007585(n)]+1)`
-/

namespace A369516.P2471254317391566159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043696 (n + 1) - A007585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A369516.P2471254317391566159

/-! ## A369516.P10318270074073261104

`A126706(comp[A043696(n+1)-A374848(n)]+1)`
-/

namespace A369516.P10318270074073261104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043696 (n + 1) - A374848 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A369516.P10318270074073261104

/-!
# A369519: Expansion of Product_{k>=1} 1/((1 - x^(k^2))*(1 - x^(k^3))).

The programs for A369519, there is no canonical definition to state claims against.
-/

/-! ## A369519.P3264922701348105741

`∑[A131799(n)%A127857(n+1)]`
-/

namespace A369519.P3264922701348105741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131799 n) (A127857 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369519.P3264922701348105741

/-! ## A369519.P14251865568854876322

`∑[A131799(n)]%A134266(n+1)`
-/

namespace A369519.P14251865568854876322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A134266 (n + 1))

end

end A369519.P14251865568854876322

/-! ## A369519.P582199309648306879

`∑[A000194(A131799(n)²)]`
-/

namespace A369519.P582199309648306879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A131799 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369519.P582199309648306879

/-! ## A369519.P2822450511385134317

`∑[A272679(A131799(n)²)]`
-/

namespace A369519.P2822450511385134317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (A131799 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369519.P2822450511385134317

/-! ## A369519.P7959713565633590594

`∑[A319330(A131832(n+1))+A131799(n)]`
-/

namespace A369519.P7959713565633590594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319330 (A131832 (n + 1)).toNat + A131799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369519.P7959713565633590594

/-!
# A369520: Expansion of Product_{k>=1} 1/((1 - x^(k^2))*(1 - x^k)).

The programs for A369520, there is no canonical definition to state claims against.
-/

/-! ## A369520.P1284236521359307167

`A174631(n)+A002024(A022814(n))`
-/

namespace A369520.P1284236521359307167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174631 n + A002024 (A022814 n).toNat

end

end A369520.P1284236521359307167

/-! ## A369520.P4143928423880903196

`A123578(A000325(n)*A001651(n+1))`
-/

namespace A369520.P4143928423880903196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A000325 n * A001651 (n + 1)).toNat

end

end A369520.P4143928423880903196

/-! ## A369520.P15068430559028974669

`A002024(A000325(n)*A136119(n+1))`
-/

namespace A369520.P15068430559028974669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000325 n * A136119 (n + 1)).toNat

end

end A369520.P15068430559028974669

/-! ## A369520.P9828933972210508973

`A003056(A061255(2*n+1)-A354784(n))`
-/

namespace A369520.P9828933972210508973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A061255 (2 * n + 1) - A354784 n).toNat

end

end A369520.P9828933972210508973

/-! ## A369520.P3274901469446875694

`A002024(A326080(2*(n+1)))-A002024(3*(n+1))`
-/

namespace A369520.P3274901469446875694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A326080 (2 * (n + 1))).toNat - A002024 (3 * (n + 1))

end

end A369520.P3274901469446875694

/-!
# A369524: Array read by antidiagonals: T(n,k) is the number of length n necklaces using at most k colors with black beads always occurring in runs of even length.

The programs for A369524, there is no canonical definition to state claims against.
-/

/-! ## A369524.P12636138077942553279

`A059259(comp[∑[n]]%A112902(n+1))`
-/

namespace A369524.P12636138077942553279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A112902 (n + 1))).toNat

end

end A369524.P12636138077942553279

/-! ## A369524.P13309944586448017185

`A108561(lt[A294847(n), A157151(n)])`
-/

namespace A369524.P13309944586448017185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369524.P13309944586448017185

/-! ## A369524.P4277301077194353

`A108561(lt[A294847(n), A188567(n+1)])`
-/

namespace A369524.P4277301077194353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369524.P4277301077194353

/-! ## A369524.P6202305321615842231

`A108561(lt[A353849(3*n+2), A140068(n+1)])`
-/

namespace A369524.P6202305321615842231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369524.P6202305321615842231

/-!
# A369525: Expansion of (1/x) * Series_Reversion( x / (1+x+x^4/(1+x)) ).

The programs for A369525, there is no canonical definition to state claims against.
-/

/-! ## A369525.P12950324177492441335

`A071854(A026776(n+1))`
-/

namespace A369525.P12950324177492441335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (A026776 (n + 1)).toNat

end

end A369525.P12950324177492441335

/-! ## A369525.P13657187791096506322

`A364591(n)-A101637(A000110(n))`
-/

namespace A369525.P13657187791096506322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364591 n - A101637 (A000110 n).toNat

end

end A369525.P13657187791096506322

/-! ## A369525.P10042929778819617402

`A364591(n)-A101637(A144700(2*n))`
-/

namespace A369525.P10042929778819617402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364591 n - A101637 (A144700 (2 * n)).toNat

end

end A369525.P10042929778819617402

/-! ## A369525.P18015780080619818381

`A359415(A144700(n))-A093492(A008620(n))`
-/

namespace A369525.P18015780080619818381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A144700 n).toNat - A093492 (A008620 n).toNat

end

end A369525.P18015780080619818381

/-!
# A369526: Table read by upward antidiagonals: T(n,k) = number of nonempty subsets of {1..n} for which the average is the k-th power of an integer.

The programs for A369526, there is no canonical definition to state claims against.
-/

/-! ## A369526.P15587387237323593909

`gcd(A129305(n), A297146(A316473(n+1)))`
-/

namespace A369526.P15587387237323593909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129305 n) (A297146 (A316473 (n + 1)).toNat)

end

end A369526.P15587387237323593909

/-!
# A369528: Expansion of g.f. (1 - sqrt(1 - 2*x + 2*x*sqrt(1 - 4*x)))/(2*x).

The programs for A369528, there is no canonical definition to state claims against.
-/

/-! ## A369528.P13758058159655337624

`A049695(A192744(n))%A086893(n+1)`
-/

namespace A369528.P13758058159655337624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049695 (A192744 n).toNat) (A086893 (n + 1))

end

end A369528.P13758058159655337624

/-! ## A369528.P15366420886291101448

`A081399(A325268(3*n+1)+A000110(n))`
-/

namespace A369528.P15366420886291101448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A325268 (3 * n + 1) + A000110 n).toNat

end

end A369528.P15366420886291101448

/-!
# A369529: a(n) = gcd(A007953(n), A007954(n)).

The programs for A369529, the canonical program `A369529.P1505549937624039629` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369529 has offset 1).

The definition of A369529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369529.P1505549937624039629

`gcd(A007953(n+1), A007954(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A369529

/-- `gcd(A007953(n+1), A007954(n+1))` -/
def P1505549937624039629.Spec : Prop :=
  ∀ n, (P1505549937624039629.a n : ℤ) = A369529 (n + 1)

theorem P1505549937624039629.correct : P1505549937624039629.Spec := by
  intro n
  simp only [A369529, Nat.add_sub_cancel]

end A369529

/-! ## A369529.P1901145771515931

`gcd(Δ[A037123(n)], A062329(n+1))`
-/

namespace A369529.P1901145771515931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A062329 (n + 1))

end

end A369529.P1901145771515931

namespace A369529

/-- `gcd(Δ[A037123(n)], A062329(n+1))` -/
def P1901145771515931.Spec : Prop :=
  ∀ n, (P1901145771515931.a n : ℤ) = A369529 (n + 1)

end A369529

/-! ## A369529.P1706704681910510117

`gcd(A007953(A051022(n+1)), A257297(n+1))`
-/

namespace A369529.P1706704681910510117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (A051022 (n + 1)).toNat) (A257297 (n + 1))

end

end A369529.P1706704681910510117

namespace A369529

/-- `gcd(A007953(A051022(n+1)), A257297(n+1))` -/
def P1706704681910510117.Spec : Prop :=
  ∀ n, (P1706704681910510117.a n : ℤ) = A369529 (n + 1)

end A369529

/-! ## A369529.P4055814458096009440

`gcd(A122618(n+1)², A122620(n+1))`
-/

namespace A369529.P4055814458096009440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122618 (n + 1) ^ 2) (A122620 (n + 1))

end

end A369529.P4055814458096009440

namespace A369529

/-- `gcd(A122618(n+1)², A122620(n+1))` -/
def P4055814458096009440.Spec : Prop :=
  ∀ n, (P4055814458096009440.a n : ℤ) = A369529 (n + 1)

end A369529

/-! ## A369529.P8379313360039252846

`A052423(n+1)^A183953(A162909(3*n+1))`
-/

namespace A369529.P8379313360039252846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052423 (n + 1) : ℚ) ^ (A183953 (A162909 (3 * n + 1)).toNat : ℤ)

end

end A369529.P8379313360039252846

namespace A369529

/-- `A052423(n+1)^A183953(A162909(3*n+1))` -/
def P8379313360039252846.Spec : Prop :=
  ∀ n, P8379313360039252846.a n = (A369529 (n + 1) : ℚ)

end A369529

/-!
# A369530: Expansion of g.f. A(x) satisfying A(x) = x*(1 + A(x))/(1 - x*(x + A(x))/(1 - x*(x^2 + A(x))/(1 - x*(x^3 + A(x))/(1 - ...)))), a continued fraction.

The programs for A369530, there is no canonical definition to state claims against.
-/

/-! ## A369530.P15043552719156920780

`A014419(A114507(n))`
-/

namespace A369530.P15043552719156920780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A114507 n).toNat

end

end A369530.P15043552719156920780

/-! ## A369530.P14450979127064589246

`A014419(A148105(n))`
-/

namespace A369530.P14450979127064589246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A148105 n).toNat

end

end A369530.P14450979127064589246

/-! ## A369530.P6169777452124793960

`A014419(A148106(n))`
-/

namespace A369530.P6169777452124793960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A148106 n).toNat

end

end A369530.P6169777452124793960

/-!
# A369534: G.f. A(x) satisfies: A( 4*A(x)^4 - 64*A(x)^5 ) = 4*x^4.

The programs for A369534, there is no canonical definition to state claims against.
-/

/-! ## A369534.P959338114514432594

`A078533(n)-A302907(A216181(n+1))`
-/

namespace A369534.P959338114514432594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078533 n - A302907 (A216181 (n + 1)).toNat

end

end A369534.P959338114514432594

/-!
# A369535: G.f. A(x) satisfies: A( 5*A(x)^5 - 125*A(x)^6 ) = 5*x^5.

The programs for A369535, there is no canonical definition to state claims against.
-/

/-! ## A369535.P8100613617696474669

`A078534(n)-A006924(A006924(n))`
-/

namespace A369535.P8100613617696474669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078534 n - A006924 (A006924 n).toNat

end

end A369535.P8100613617696474669

/-! ## A369535.P14190171908878917371

`A078534(n)-A065937(A112960(n+3))`
-/

namespace A369535.P14190171908878917371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078534 n - A065937 (A112960 (n + 3)).toNat

end

end A369535.P14190171908878917371

/-!
# A369536: Expansion of g.f. A(x) satisfying A(x) = 1 + 4*x * AGM(1, A(x)^4).

The programs for A369536, there is no canonical definition to state claims against.
-/

/-! ## A369536.P2078943965029794167

`2^n*A171455(n)`
-/

namespace A369536.P2078943965029794167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A171455 n

end

end A369536.P2078943965029794167

/-! ## A369536.P12030625445388861123

`record[A006519(3*n+1)]*A106228(n)`
-/

namespace A369536.P12030625445388861123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A106228 n

end

end A369536.P12030625445388861123

/-! ## A369536.P10487649107454689063

`A006519(A000302(n))*A106228(n)`
-/

namespace A369536.P10487649107454689063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000302 n).toNat * A106228 n

end

end A369536.P10487649107454689063

/-!
# A369537: Expansion of g.f. A(x) satisfying A(x) = 1 + 4*x * AGM(A(x)^2, A(x)^4).

The programs for A369537, there is no canonical definition to state claims against.
-/

/-! ## A369537.P17981863677116629296

`A245092(A371658(n))`
-/

namespace A369537.P17981863677116629296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A371658 n).toNat

end

end A369537.P17981863677116629296

/-!
# A369538: Expansion of g.f. A(x) satisfying A(x) = 1 + 8*x * AGM(A(x), A(x)^2).

The programs for A369538, there is no canonical definition to state claims against.
-/

/-! ## A369538.P12268967738301269128

`2^n*A028310(A032349(n+1))`
-/

namespace A369538.P12268967738301269128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028310 (A032349 (n + 1)).toNat

end

end A369538.P12268967738301269128

/-!
# A369539: Expansion of g.f. A(x) satisfying A(x) = 1 + 8*x * AGM(A(x)^2, A(x)^3).

The programs for A369539, there is no canonical definition to state claims against.
-/

/-! ## A369539.P13904884412845291168

`A000027(A000079(n)*A371676(n))`
-/

namespace A369539.P13904884412845291168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000079 n * A371676 n).toNat

end

end A369539.P13904884412845291168

/-!
# A369540: Numbers k neither squarefree nor prime powers such that A119288(k) <= k/A007947(k) < A053669(k) and A007947(k) is a primorial P(i) = A002110(i) for some i.

The programs for A369540, there is no canonical definition to state claims against.
-/

/-! ## A369540.P13583294454676893427

`∩[A364998(n+1), A090958(n)]`
-/

namespace A369540.P13583294454676893427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369540.P13583294454676893427

/-! ## A369540.P18298179583434618831

`∩[A055932(n+1), A364998(n+1)]`
-/

namespace A369540.P18298179583434618831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369540.P18298179583434618831

/-! ## A369540.P8755130314319610017

`∩[A363814(n+1), A364998(n+1)]`
-/

namespace A369540.P8755130314319610017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369540.P8755130314319610017

/-! ## A369540.P8759006292931321327

`∩[A364998(n+1), A380543(n+1)]`
-/

namespace A369540.P8759006292931321327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369540.P8759006292931321327

/-! ## A369540.P14708137976597653599

`∩[A060735(n+1), A364998(n+1)]`
-/

namespace A369540.P14708137976597653599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369540.P14708137976597653599

/-!
# A369541: Numbers k neither squarefree nor prime powers that are products of primorials such that A119288(k) <= k/A007947(k) < A053669(k).

The programs for A369541, there is no canonical definition to state claims against.
-/

/-! ## A369541.P11945788360888378395

`∩[A369540(n+1), A386223(n+1)]`
-/

namespace A369541.P11945788360888378395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369541.P11945788360888378395

/-! ## A369541.P10303592809150252660

`∩[A025487(n+1), A369540(n+1)]`
-/

namespace A369541.P10303592809150252660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369541.P10303592809150252660

/-! ## A369541.P7513984280818260589

`∩[A364710(n+1), A369540(n+1)]`
-/

namespace A369541.P7513984280818260589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369541.P7513984280818260589

/-! ## A369541.P9742474203660176564

`∩[A078347(n+1), A369540(n+1)]`
-/

namespace A369541.P9742474203660176564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369541.P9742474203660176564

/-! ## A369541.P13791964402897862236

`∩[A168264(n+1), A369540(n+1)]`
-/

namespace A369541.P13791964402897862236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369541.P13791964402897862236

/-!
# A369542: a(n) is the dimension of the metabelian Lie-admissible operad of degree n.

The programs for A369542, there is no canonical definition to state claims against.
-/

/-! ## A369542.P18281840411739810170

`A006068(A326237(n)+n)`
-/

namespace A369542.P18281840411739810170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A326237 n + (n : ℤ)).toNat

end

end A369542.P18281840411739810170

/-!
# A369544: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} x^(n+1) * Product_{k=0..n} (x^k + A(x)).

The programs for A369544, there is no canonical definition to state claims against.
-/

/-! ## A369544.P5334774187602347417

`A261237(n)+A001222(A144301(n))`
-/

namespace A369544.P5334774187602347417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261237 n + A001222 (A144301 n).toNat

end

end A369544.P5334774187602347417

/-!
# A369545: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^2 ) / (x*(1+x)).

The programs for A369545, there is no canonical definition to state claims against.
-/

/-! ## A369545.P14447538194228638937

`A325770(A001200(n))+A001200(n)`
-/

namespace A369545.P14447538194228638937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (A001200 n).toNat + A001200 n

end

end A369545.P14447538194228638937

/-! ## A369545.P3237139774800995916

`A300660(n)+A249866(A108604(n+1))`
-/

namespace A369545.P3237139774800995916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300660 n + A249866 (A108604 (n + 1)).toNat

end

end A369545.P3237139774800995916

/-! ## A369545.P14991932296320616846

`A138609(or(A300660(n), A333818(n+1)))`
-/

namespace A369545.P14991932296320616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138609 (Int.lor (A300660 n) (A333818 (n + 1))).toNat

end

end A369545.P14991932296320616846

/-!
# A369549: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^6 ) / (x*(1+x)^5).

The programs for A369549, there is no canonical definition to state claims against.
-/

/-! ## A369549.P14065967982330452574

`A047994(A364316(n+1)-A005374(2*n))`
-/

namespace A369549.P14065967982330452574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A364316 (n + 1) - A005374 (2 * n)).toNat

end

end A369549.P14065967982330452574

/-! ## A369549.P7064235434939245324

`A047994(A364316(n+1)-A273663(2*n+1))`
-/

namespace A369549.P7064235434939245324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A364316 (n + 1) - A273663 (2 * n + 1)).toNat

end

end A369549.P7064235434939245324

/-!
# A369550: Expansion of e.g.f. A(x) satisfying A(x) = exp(x) * A(x^2*exp(x)).

The programs for A369550, there is no canonical definition to state claims against.
-/

/-! ## A369550.P10195610381627840910

`A369090(n+1)/(n+1)`
-/

namespace A369550.P10195610381627840910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369090 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A369550.P10195610381627840910

/-!
# A369551: Expansion of e.g.f. A(x) satisfying A(x) = 1 + x*exp(x) * A(x^2*exp(x)).

The programs for A369551, there is no canonical definition to state claims against.
-/

/-! ## A369551.P11116729522562427523

`A369091(n+1)/(n+1)`
-/

namespace A369551.P11116729522562427523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369091 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A369551.P11116729522562427523

/-! ## A369551.P2025895069645860501

`A028310(A358080(n+1)/(n+1))`
-/

namespace A369551.P2025895069645860501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A358080 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A369551.P2025895069645860501

/-!
# A369552: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^2 ) / x.

The programs for A369552, there is no canonical definition to state claims against.
-/

/-! ## A369552.P14138308236990807507

`A332809(A323295(n))+A073424(n)`
-/

namespace A369552.P14138308236990807507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A323295 n).toNat + A073424 n

end

end A369552.P14138308236990807507

/-! ## A369552.P241535219422493518

`A363332(A182212(n+1))+A182202(n)`
-/

namespace A369552.P241535219422493518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363332 (A182212 (n + 1)).toNat + A182202 n

end

end A369552.P241535219422493518

/-!
# A369553: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^3 ) / x.

The programs for A369553, there is no canonical definition to state claims against.
-/

/-! ## A369553.P17150270152156019169

`A078173(A052264(n))`
-/

namespace A369553.P17150270152156019169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078173 (A052264 n).toNat

end

end A369553.P17150270152156019169

/-! ## A369553.P12670511122946518453

`filter[A364645(n), A103583(#)]`
-/

namespace A369553.P12670511122946518453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A369553.P12670511122946518453

/-!
# A369554: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^4 ) / x.

The programs for A369554, there is no canonical definition to state claims against.
-/

/-! ## A369554.P12216645814092651105

`A173339(A005655(n))`
-/

namespace A369554.P12216645814092651105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173339 (A005655 n).toNat

end

end A369554.P12216645814092651105

/-!
# A369555: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^5 ) / x.

The programs for A369555, there is no canonical definition to state claims against.
-/

/-! ## A369555.P3356917345126345228

`A247971(A027134(n))`
-/

namespace A369555.P3356917345126345228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A027134 n).toNat

end

end A369555.P3356917345126345228

/-!
# A369556: Expansion of g.f. A(x) satisfying A(x) = A( x^2*(1+x)^6 ) / x.

The programs for A369556, there is no canonical definition to state claims against.
-/

/-! ## A369556.P4472683349095891118

`A296021(A200378(n)+A000302(n))`
-/

namespace A369556.P4472683349095891118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A200378 n + A000302 n).toNat

end

end A369556.P4472683349095891118

/-!
# A369561: Number of chordless cycles in the complement of the n-Dorogovtsev-Goltsev-Mendes graph.

The programs for A369561, there is no canonical definition to state claims against.
-/

/-! ## A369561.P5280205277178810920

`A080844(A008417(n))`
-/

namespace A369561.P5280205277178810920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (A008417 n).toNat

end

end A369561.P5280205277178810920

/-!
# A369562: Smallest positive n-digit number divisible by 7.

The programs for A369562, the canonical program `A369562.P15532580360654320562` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369562 has offset 1).

The definition of A369562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369562.P15532580360654320562

`(floor(10^n/7)+1)*7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369562

/-- `(floor(10^n/7)+1)*7` -/
def P15532580360654320562.Spec : Prop :=
  ∀ n, P15532580360654320562.a n = A369562 (n + 1)

theorem P15532580360654320562.correct : P15532580360654320562.Spec := by
  intro n
  simp only [A369562, Nat.add_sub_cancel]

end A369562

/-! ## A369562.P2520537405992850376

`10^n+A033940(n+3)`
-/

namespace A369562.P2520537405992850376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A033940 (n + 3)

end

end A369562.P2520537405992850376

namespace A369562

/-- `10^n+A033940(n+3)` -/
def P2520537405992850376.Spec : Prop :=
  ∀ n, P2520537405992850376.a n = A369562 (n + 1)

end A369562

/-!
# A369563: Powerful numbers whose prime factors are all of the form 4*k + 1.

The programs for A369563, there is no canonical definition to state claims against.
-/

/-! ## A369563.P10090200681034501867

`∩[A001694(n+1), A004613(n+1)]`
-/

namespace A369563.P10090200681034501867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369563.P10090200681034501867

/-! ## A369563.P6197669451698481991

`∩[A004613(n+1), A062739(n+1)]`
-/

namespace A369563.P6197669451698481991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369563.P6197669451698481991

/-! ## A369563.P6366522912893086181

`∩[A004613(n+1), A335851(n+1)]`
-/

namespace A369563.P6366522912893086181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369563.P6366522912893086181

/-! ## A369563.P8618538389394427803

`∩[A004613(n+1), A371010(n+1)]`
-/

namespace A369563.P8618538389394427803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369563.P8618538389394427803

/-! ## A369563.P18155057166613624466

`∩[A377821(n+1), A004613(n+1)]`
-/

namespace A369563.P18155057166613624466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369563.P18155057166613624466

/-! ## A369563.P7134160508765031462

`∩[A377846(n+1), A004613(n+1)]`
-/

namespace A369563.P7134160508765031462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369563.P7134160508765031462

/-!
# A369564: Powerful numbers whose prime factors are all of the form 4*k + 3.

The programs for A369564, there is no canonical definition to state claims against.
-/

/-! ## A369564.P2511549039804056419

`∩[A001694(n+1), A004614(n+1)]`
-/

namespace A369564.P2511549039804056419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369564.P2511549039804056419

/-! ## A369564.P11943701168611744651

`∩[A004614(n+1), A062739(n+1)]`
-/

namespace A369564.P11943701168611744651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369564.P11943701168611744651

/-! ## A369564.P6961237695414323692

`∩[A004614(n+1), A335851(n+1)]`
-/

namespace A369564.P6961237695414323692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369564.P6961237695414323692

/-! ## A369564.P13080952424804947702

`∩[A004614(n+1), A387420(n+1)]`
-/

namespace A369564.P13080952424804947702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369564.P13080952424804947702

/-! ## A369564.P8528383083238120248

`∩[A062739(n+1), A081754(n+1)]`
-/

namespace A369564.P8528383083238120248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369564.P8528383083238120248

/-! ## A369564.P14377224049579853035

`∩[A004144(n+1), A062739(n+1)]`
-/

namespace A369564.P14377224049579853035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369564.P14377224049579853035

/-!
# A369565: Powerful numbers whose prime factors are all of the form 3*k + 1.

The programs for A369565, there is no canonical definition to state claims against.
-/

/-! ## A369565.P717045145991849493

`∩[A001694(n+1), A004611(n+1)]`
-/

namespace A369565.P717045145991849493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369565.P717045145991849493

/-! ## A369565.P383294058618037507

`∩[A004611(n+1), A062739(n+1)]`
-/

namespace A369565.P383294058618037507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369565.P383294058618037507

/-! ## A369565.P9861660620427597233

`∩[A004611(n+1), A124184(n+1)]`
-/

namespace A369565.P9861660620427597233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369565.P9861660620427597233

/-! ## A369565.P17371361979181717799

`∩[A004611(n+1), A335851(n+1)]`
-/

namespace A369565.P17371361979181717799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369565.P17371361979181717799

/-! ## A369565.P6596375784839553325

`∩[A377821(n+1), A004611(n+1)]`
-/

namespace A369565.P6596375784839553325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369565.P6596375784839553325

/-! ## A369565.P15782800588907967060

`∩[A377846(n+1), A004611(n+1)]`
-/

namespace A369565.P15782800588907967060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369565.P15782800588907967060

/-!
# A369566: Powerful numbers whose prime factors are all of the form 3*k + 2.

The programs for A369566, there is no canonical definition to state claims against.
-/

/-! ## A369566.P16549196270564820000

`∩[A001694(n+1), A004612(n+1)]`
-/

namespace A369566.P16549196270564820000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369566.P16549196270564820000

/-! ## A369566.P8847055852145169944

`∩[A001694(n+1), A088232(n+1)]`
-/

namespace A369566.P8847055852145169944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369566.P8847055852145169944

/-! ## A369566.P10423755219323697690

`record[A057521(A004612(n+1))]`
-/

namespace A369566.P10423755219323697690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A004612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369566.P10423755219323697690

/-! ## A369566.P7971887832888402681

`filter[A004612(n+1), A112526(#)]`
-/

namespace A369566.P7971887832888402681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A369566.P7971887832888402681

/-! ## A369566.P17293042585271606239

`record[A057521(n+1)/A060839(n+1)]`
-/

namespace A369566.P17293042585271606239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369566.P17293042585271606239

/-!
# A369567: 

The programs for A369567, there is no canonical definition to state claims against.
-/

/-! ## A369567.P897930433268755229

`A138302(n+1)²`
-/

namespace A369567.P897930433268755229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1) ^ 2

end

end A369567.P897930433268755229

/-! ## A369567.P5799415673710982188

`record[A270418(n+1)²]`
-/

namespace A369567.P5799415673710982188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369567.P5799415673710982188

/-! ## A369567.P2760347567086730576

`record[A353897(n+1)²]`
-/

namespace A369567.P2760347567086730576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369567.P2760347567086730576

/-! ## A369567.P2462055213859685368

`record[A365296(n+1)²]`
-/

namespace A369567.P2462055213859685368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369567.P2462055213859685368

/-! ## A369567.P15373669884517223497

`record[A367168(n+1)²]`
-/

namespace A369567.P15373669884517223497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369567.P15373669884517223497

/-! ## A369567.P428878919336589806

`filter[(n+1)², A355823(#)]`
-/

namespace A369567.P428878919336589806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j) = 1) n)

end

end A369567.P428878919336589806

/-!
# A369568: Minimum number of edges that force an n-vertex graph to be Hamiltonian according to Chvátal's condition on the degree sequence.

The programs for A369568, the canonical program `A369568.P670268573883120058` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369568 has offset 3).

The definition of A369568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369568.P670268573883120058

`floor(A258087(n+4)/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369568

/-- `floor(A258087(n+4)/2)` -/
def P670268573883120058.Spec : Prop :=
  ∀ n, P670268573883120058.a n = A369568 (n + 3)

theorem P670268573883120058.correct : P670268573883120058.Spec := by
  intro n
  simp only [A369568, Nat.add_sub_cancel]

end A369568

/-! ## A369568.P5212756627504470067

`A110654(A001318(n+1))+n+2`
-/

namespace A369568.P5212756627504470067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001318 (n + 1)).toNat + (n + 2 : ℤ)

end

end A369568.P5212756627504470067

namespace A369568

/-- `A110654(A001318(n+1))+n+2` -/
def P5212756627504470067.Spec : Prop :=
  ∀ n, P5212756627504470067.a n = A369568 (n + 3)

end A369568

/-! ## A369568.P11329249073552126754

`A004526(A319390(n+1))+n+2`
-/

namespace A369568.P11329249073552126754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319390 (n + 1)).toNat + (n + 2 : ℤ)

end

end A369568.P11329249073552126754

namespace A369568

/-- `A004526(A319390(n+1))+n+2` -/
def P11329249073552126754.Spec : Prop :=
  ∀ n, P11329249073552126754.a n = A369568 (n + 3)

end A369568

/-! ## A369568.P1503167671733581168

`A008619(A008619(n+1)+∑[(n+3)/(and(1, n)+1)])`
-/

namespace A369568.P1503167671733581168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A008619 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A369568.P1503167671733581168

namespace A369568

/-- `A008619(A008619(n+1)+∑[(n+3)/(and(1, n)+1)])` -/
def P1503167671733581168.Spec : Prop :=
  ∀ n, P1503167671733581168.a n = A369568 (n + 3)

end A369568

/-! ## A369568.P922121264369762343

`A008619(A008619(n+1)+∑[(n+3)/(2-∑[(-1)^n])])`
-/

namespace A369568.P922121264369762343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A008619 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A369568.P922121264369762343

namespace A369568

/-- `A008619(A008619(n+1)+∑[(n+3)/(2-∑[(-1)^n])])` -/
def P922121264369762343.Spec : Prop :=
  ∀ n, P922121264369762343.a n = A369568 (n + 3)

end A369568

/-! ## A369568.P6832942560443977616

`A065033(A065033(n)+A001318(n+3))`
-/

namespace A369568.P6832942560443977616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n + A001318 (n + 3)).toNat

end

end A369568.P6832942560443977616

namespace A369568

/-- `A065033(A065033(n)+A001318(n+3))` -/
def P6832942560443977616.Spec : Prop :=
  ∀ n, P6832942560443977616.a n = A369568 (n + 3)

end A369568

/-! ## A369568.P16605422759590575975

`A110654(A110654(n)+A001318(n+3))`
-/

namespace A369568.P16605422759590575975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n + A001318 (n + 3)).toNat

end

end A369568.P16605422759590575975

namespace A369568

/-- `A110654(A110654(n)+A001318(n+3))` -/
def P16605422759590575975.Spec : Prop :=
  ∀ n, P16605422759590575975.a n = A369568 (n + 3)

end A369568

/-! ## A369568.P470430507906256462

`A080513(A233583(3*n+4)+A211539(n))`
-/

namespace A369568.P470430507906256462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A233583 (3 * n + 4) + A211539 n).toNat

end

end A369568.P470430507906256462

namespace A369568

/-- `A080513(A233583(3*n+4)+A211539(n))` -/
def P470430507906256462.Spec : Prop :=
  ∀ n, P470430507906256462.a n = A369568 (n + 3)

end A369568

/-!
# A369569: a(n) = (n-1)! * n^n.

The programs for A369569, the canonical program `A369569.P15997992594557479549` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369569 has offset 1).

The definition of A369569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+1)^(n+1)` (program `A369569.P15997992594557479549`, by `A369569.P15997992594557479549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369569.P4230996017978903587

`(n+1)^(n+1)*n!`
-/

namespace A369569.P4230996017978903587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1) * Nat.factorial n

end

end A369569.P4230996017978903587

namespace A369569

/-- `(n+1)^(n+1)*n!` -/
def P4230996017978903587.Spec : Prop :=
  ∀ n, (P4230996017978903587.a n : ℤ) = A369569 (n + 1)

theorem P4230996017978903587.correct : P4230996017978903587.Spec := by
  intro n
  simp only [A369569, Nat.add_sub_cancel, A369569.P4230996017978903587.a, A369569.P15997992594557479549.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A369569

/-! ## A369569.P15997992594557479549

`n!*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369569

/-- `n!*(n+1)^(n+1)` -/
def P15997992594557479549.Spec : Prop :=
  ∀ n, (P15997992594557479549.a n : ℤ) = A369569 (n + 1)

theorem P15997992594557479549.correct : P15997992594557479549.Spec := by
  intro n
  simp only [A369569, Nat.add_sub_cancel]

end A369569

/-! ## A369569.P4755290169877662650

`(n+1)^n*∏[n+1]`
-/

namespace A369569.P4755290169877662650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A369569.P4755290169877662650

namespace A369569

/-- `(n+1)^n*∏[n+1]` -/
def P4755290169877662650.Spec : Prop :=
  ∀ n, (P4755290169877662650.a n : ℤ) = A369569 (n + 1)

theorem P4755290169877662650.correct : P4755290169877662650.Spec := by
  intro n
  simp only [A369569, Nat.add_sub_cancel, A369569.P4755290169877662650.f1, A369569.P4755290169877662650.a, A369569.P15997992594557479549.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A369569

/-! ## A369569.P8883312525640316977

`(n+1)!/(n+1)^-n`
-/

namespace A369569.P8883312525640316977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (n + 1 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A369569.P8883312525640316977

namespace A369569

/-- `(n+1)!/(n+1)^-n` -/
def P8883312525640316977.Spec : Prop :=
  ∀ n, P8883312525640316977.a n = (A369569 (n + 1) : ℚ)

theorem P8883312525640316977.correct : P8883312525640316977.Spec := by
  intro n
  simp only [A369569, Nat.add_sub_cancel, A369569.P8883312525640316977.a, A369569.P15997992594557479549.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A369569

/-! ## A369569.P12826471834201180858

`A231601(Δ[n²])`
-/

namespace A369569.P12826471834201180858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231601 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A369569.P12826471834201180858

namespace A369569

/-- `A231601(Δ[n²])` -/
def P12826471834201180858.Spec : Prop :=
  ∀ n, P12826471834201180858.a n = A369569 (n + 1)

end A369569

/-!
# A369570: Expansion of Product_{k>=1} (1 + x^(k^2)) * (1 + x^k).

The programs for A369570, there is no canonical definition to state claims against.
-/

/-! ## A369570.P13593691011045963385

`A180160(n)+A056556(A261983(n+3))`
-/

namespace A369570.P13593691011045963385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n + A056556 (A261983 (n + 3)).toNat

end

end A369570.P13593691011045963385

/-! ## A369570.P11506034256978990644

`A111660(A358901(n+2)+A000607(2*(n+2)))`
-/

namespace A369570.P11506034256978990644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A358901 (n + 2) + A000607 (2 * (n + 2))).toNat

end

end A369570.P11506034256978990644

/-!
# A369571: Expansion of Product_{k>=1} (1 + x^(k^3)) * (1 + x^k).

The programs for A369571, there is no canonical definition to state claims against.
-/

/-! ## A369571.P8496905418038095876

`A111651(A027344(2*n)+2)`
-/

namespace A369571.P8496905418038095876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A027344 (2 * n) + 2).toNat

end

end A369571.P8496905418038095876

/-! ## A369571.P11535330759866338347

`A135660(A036469(n)+A027337(2*(n+2)))`
-/

namespace A369571.P11535330759866338347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A036469 n + A027337 (2 * (n + 2))).toNat

end

end A369571.P11535330759866338347

/-! ## A369571.P15424779071910652084

`A204164(A367218(2*n+1)+A079222(n+2))`
-/

namespace A369571.P15424779071910652084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A367218 (2 * n + 1) + A079222 (n + 2)).toNat

end

end A369571.P15424779071910652084

/-! ## A369571.P16195721362367733093

`A204560(A127811(n+1))`
-/

namespace A369571.P16195721362367733093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A127811 (n + 1)).toNat

end

end A369571.P16195721362367733093

/-! ## A369571.P1655143570210757426

`A204560(A229924(n+1))`
-/

namespace A369571.P1655143570210757426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A229924 (n + 1)).toNat

end

end A369571.P1655143570210757426

/-!
# A369572: Expansion of Product_{k>=1} (1 + x^(k^2)) * (1 + x^(k^3)).

The programs for A369572, there is no canonical definition to state claims against.
-/

/-! ## A369572.P15866278909126509832

`C(A055642(A345920(3*n+2)), A010873(n))`
-/

namespace A369572.P15866278909126509832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055642 (A345920 (3 * n + 2)).toNat).toNat (A010873 n).toNat

end

end A369572.P15866278909126509832

/-! ## A369572.P4421947398152727637

`A133882(A024655(n)*A266073(n))`
-/

namespace A369572.P4421947398152727637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133882 (A024655 n * A266073 n).toNat

end

end A369572.P4421947398152727637

/-! ## A369572.P8610299267737240903

`C((A106575(A246091(2*(n+1)))+1)%3+1, and(3, n))`
-/

namespace A369572.P8610299267737240903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A106575 (A246091 (2 * (n + 1))).toNat + 1) 3 + 1).toNat (Nat.land 3 n)

end

end A369572.P8610299267737240903

/-!
# A369573: Expansion of Product_{k>=1} (1 + x^(k^2)) / (1 - x^(k^3)).

The programs for A369573, there is no canonical definition to state claims against.
-/

/-! ## A369573.P7596537657381911897

`∑[A104276(n)%A104264(n+1)]`
-/

namespace A369573.P7596537657381911897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104276 n) (A104264 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369573.P7596537657381911897

/-! ## A369573.P3778103523017744549

`∑[A104276(n)^A027642(n)]`
-/

namespace A369573.P3778103523017744549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104276 n : ℚ) ^ (A027642 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369573.P3778103523017744549

/-! ## A369573.P256031100179735518

`∑[A286320(n)%A095110(n+5)]`
-/

namespace A369573.P256031100179735518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286320 n) (A095110 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369573.P256031100179735518

/-! ## A369573.P13395152966206174678

`∑[A033999(40*n²)*A284171(n)]`
-/

namespace A369573.P13395152966206174678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (40 * n ^ 2) * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369573.P13395152966206174678

/-! ## A369573.P5008346852233924562

`∑[A284171(n)%A078843(3*n+4)]`
-/

namespace A369573.P5008346852233924562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284171 n) (A078843 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369573.P5008346852233924562

/-!
# A369575: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(k^2)) * (1 + x^(k^3)).

The programs for A369575, there is no canonical definition to state claims against.
-/

/-! ## A369575.P8478254693173706364

`A001935(n+2)-A359770(A308546(2*(n+2)))`
-/

namespace A369575.P8478254693173706364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (n + 2) - A359770 (A308546 (2 * (n + 2))).toNat

end

end A369575.P8478254693173706364

/-!
# A369576: Expansion of Product_{k>=1} 1 / ((1 - x^k) * (1 - x^(k^2)) * (1 - x^(k^3))).

The programs for A369576, there is no canonical definition to state claims against.
-/

/-! ## A369576.P8247485673044945424

`∑[∑[A004101(A087051(n))]]`
-/

namespace A369576.P8247485673044945424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004101 (A087051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369576.P8247485673044945424

/-! ## A369576.P18375245831731633666

`A137748(A137748(n))+A023893(2*n+1)`
-/

namespace A369576.P18375245831731633666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137748 (A137748 n).toNat + A023893 (2 * n + 1)

end

end A369576.P18375245831731633666

/-! ## A369576.P15475073590419969022

`A063865(A072803(n+1))+A023893(2*n+1)`
-/

namespace A369576.P15475073590419969022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (A072803 (n + 1)).toNat + A023893 (2 * n + 1)

end

end A369576.P15475073590419969022

/-! ## A369576.P10934758541442938911

`A188221(A019295(n+1))+A023893(2*n+1)`
-/

namespace A369576.P10934758541442938911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (A019295 (n + 1)).toNat + A023893 (2 * n + 1)

end

end A369576.P10934758541442938911

/-! ## A369576.P5055589085115206273

`∑[∑[A038538(3^n)]]`
-/

namespace A369576.P5055589085115206273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (3 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369576.P5055589085115206273

/-!
# A369577: a(n) = [x^n] Product_{j=1..n, k=1..n} 1/(1 - x^(k^j)).

The programs for A369577, there is no canonical definition to state claims against.
-/

/-! ## A369577.P9995150638252496622

`A074795(A003500(n)+A000961(n+3))`
-/

namespace A369577.P9995150638252496622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074795 (A003500 n + A000961 (n + 3)).toNat

end

end A369577.P9995150638252496622

/-! ## A369577.P3733459938026815304

`A135385(A261478(n))+A001631(2*(n+1))`
-/

namespace A369577.P3733459938026815304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135385 (A261478 n).toNat + A001631 (2 * (n + 1))

end

end A369577.P3733459938026815304

/-! ## A369577.P6087680307394994536

`A008621(A001353(n+1)+A057641(n+1)-A049890(n+1))`
-/

namespace A369577.P6087680307394994536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001353 (n + 1) + (A057641 (n + 1) - A049890 (n + 1))).toNat

end

end A369577.P6087680307394994536

/-!
# A369578: a(n) = [x^n] Product_{j=1..n, k=1..n} (1 + x^(k^j)).

The programs for A369578, there is no canonical definition to state claims against.
-/

/-! ## A369578.P7739690468282631593

`A088468(A154992(n))`
-/

namespace A369578.P7739690468282631593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A154992 n).toNat

end

end A369578.P7739690468282631593

/-! ## A369578.P705301497605550386

`A088468(A178703(n))`
-/

namespace A369578.P705301497605550386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A178703 n).toNat

end

end A369578.P705301497605550386

/-! ## A369578.P11173966779843509949

`A099741(A257970(n+1))`
-/

namespace A369578.P11173966779843509949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A257970 (n + 1)).toNat

end

end A369578.P11173966779843509949

/-! ## A369578.P9331965884054477978

`A099741(A383324(n+1))`
-/

namespace A369578.P9331965884054477978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A383324 (n + 1)).toNat

end

end A369578.P9331965884054477978

/-! ## A369578.P1074451225798905501

`A099741(A027028(n+2))`
-/

namespace A369578.P1074451225798905501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A027028 (n + 2)).toNat

end

end A369578.P1074451225798905501

/-!
# A369579: Expansion of Product_{k>=1} 1 / ((1 - x^k) * (1 - x^(k^3))).

The programs for A369579, there is no canonical definition to state claims against.
-/

/-! ## A369579.P5678809558563884114

`∑[A280661(n)%A181375(n+3)]`
-/

namespace A369579.P5678809558563884114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280661 n) (A181375 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369579.P5678809558563884114

/-! ## A369579.P6892851283229276832

`∑[A280661(n)]%A213189(3*n+1)`
-/

namespace A369579.P6892851283229276832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A213189 (3 * n + 1))

end

end A369579.P6892851283229276832

/-! ## A369579.P2925715853786591695

`∑[A003059(A280661(n)²)]`
-/

namespace A369579.P2925715853786591695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A280661 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369579.P2925715853786591695

/-! ## A369579.P3490028663428924276

`∑[A071090(A280661(n)²)]`
-/

namespace A369579.P3490028663428924276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (A280661 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369579.P3490028663428924276

/-! ## A369579.P10856445831025035792

`∑[A338555(A000041(n))]`
-/

namespace A369579.P10856445831025035792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369579.P10856445831025035792

/-!
# A369581: Expansion of (1/x) * Series_Reversion( x / (1+x+x^4/(1+x)^2) ).

The programs for A369581, there is no canonical definition to state claims against.
-/

/-! ## A369581.P9916629296898451085

`A076269(A130262(n))`
-/

namespace A369581.P9916629296898451085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076269 (A130262 n).toNat

end

end A369581.P9916629296898451085

/-! ## A369581.P1168329287759499412

`A102800(A364590(n))`
-/

namespace A369581.P1168329287759499412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A364590 n).toNat

end

end A369581.P1168329287759499412

/-! ## A369581.P14696298800908600002

`A337769(A360890(n))`
-/

namespace A369581.P14696298800908600002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A360890 n).toNat

end

end A369581.P14696298800908600002

/-! ## A369581.P10442498520242434227

`A379632(A360811(n))`
-/

namespace A369581.P10442498520242434227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379632 (A360811 n).toNat

end

end A369581.P10442498520242434227

/-! ## A369581.P17424389169564653778

`A161750(A186085(n)+1)`
-/

namespace A369581.P17424389169564653778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161750 (A186085 n + 1).toNat

end

end A369581.P17424389169564653778

/-!
# A369582: Number of maximal matchings in the n X n camel graph.

The programs for A369582, there is no canonical definition to state claims against.
-/

/-! ## A369582.P14586823650680776004

`A242422(A062745(∑[∑[n]])²)`
-/

namespace A369582.P14586823650680776004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (A062745 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A369582.P14586823650680776004

/-!
# A369585: Table read by rows. T(n, k) = [z^k] h(n, 1, z) where h(n, v, z) are the modified Lommel polynomials (A369117).

The programs for A369585, there is no canonical definition to state claims against.
-/

/-! ## A369585.P14311824493018746067

`A049310(n)*A092081(n)`
-/

namespace A369585.P14311824493018746067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A092081 n

end

end A369585.P14311824493018746067

/-! ## A369585.P10635931513990350072

`A000688(A241171(n+1))*A053117(n)`
-/

namespace A369585.P10635931513990350072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A241171 (n + 1)).toNat * A053117 n

end

end A369585.P10635931513990350072

/-! ## A369585.P9448616786369439599

`A000120(A218684(n))*A053117(n)`
-/

namespace A369585.P9448616786369439599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A218684 n).toNat * A053117 n

end

end A369585.P9448616786369439599

/-! ## A369585.P664816255832781300

`A002175(A317536(2*(n+1)))*A053117(n)`
-/

namespace A369585.P664816255832781300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 (A317536 (2 * (n + 1))).toNat * A053117 n

end

end A369585.P664816255832781300

/-!
# A369586: Irregular triangle read by rows: row n lists the lines of the shortest proof for the MIU formal system string (theorem) given by A369173(n+1).

The programs for A369586, there is no canonical definition to state claims against.
-/

/-! ## A369586.P6463374933010209140

`A369409(n+1)-A025469(A129427(n))`
-/

namespace A369586.P6463374933010209140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369409 (n + 1) - A025469 (A129427 n).toNat

end

end A369586.P6463374933010209140

/-! ## A369586.P15555974081388584298

`A369409(n+1)-A083917(A137635(n))`
-/

namespace A369586.P15555974081388584298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369409 (n + 1) - A083917 (A137635 n).toNat

end

end A369586.P15555974081388584298

/-! ## A369586.P14775001663124322211

`A369409(n+1)-A243978(A000670(n))`
-/

namespace A369586.P14775001663124322211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369409 (n + 1) - A243978 (A000670 n).toNat

end

end A369586.P14775001663124322211

/-!
# A369588: Triangular array read by rows: T(m,n) = number of Yamanouchi words of length m that start with n, m >= 1, n = 1..m.

The programs for A369588, there is no canonical definition to state claims against.
-/

/-! ## A369588.P602188950305410173

`A238750(comp[∑[n]])`
-/

namespace A369588.P602188950305410173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A369588.P602188950305410173

/-!
# A369590: a(n) = number of Yamanouchi words of length n that start with 3.

The programs for A369590, there is no canonical definition to state claims against.
-/

/-! ## A369590.P768039129926674067

`A054899(A293326(n)+A143330(n))`
-/

namespace A369590.P768039129926674067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A293326 n + A143330 n).toNat

end

end A369590.P768039129926674067

/-! ## A369590.P2645083072744051836

`A148147(n)-A157271(A148190(n))`
-/

namespace A369590.P2645083072744051836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148147 n - A157271 (A148190 n).toNat

end

end A369590.P2645083072744051836

/-! ## A369590.P6058222166269606499

`A185711(A083885(n)+A053806(n+1))`
-/

namespace A369590.P6058222166269606499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A083885 n + A053806 (n + 1)).toNat

end

end A369590.P6058222166269606499

/-!
# A369591: a(n) = number of Yamanouchi words over the alphabet {1, 2, 3} of length n that start with 3.

The programs for A369591, there is no canonical definition to state claims against.
-/

/-! ## A369591.P6318156454565336572

`A001006(n)-A151378(n)`
-/

namespace A369591.P6318156454565336572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A151378 n

end

end A369591.P6318156454565336572

/-! ## A369591.P4162699428863260650

`Δ[A097332(n)]-A151378(n)`
-/

namespace A369591.P4162699428863260650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A151378 n

end

end A369591.P4162699428863260650

/-! ## A369591.P5581887781807438923

`A086246(n+2)-A151378(n)`
-/

namespace A369591.P5581887781807438923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A151378 n

end

end A369591.P5581887781807438923

/-! ## A369591.P12879619710762184540

`A168049(n+2)-A151378(n)`
-/

namespace A369591.P12879619710762184540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A151378 n

end

end A369591.P12879619710762184540

/-! ## A369591.P1442381183536756364

`abs(A166587(n+1))-A151378(n)`
-/

namespace A369591.P1442381183536756364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A151378 n

end

end A369591.P1442381183536756364

/-!
# A369592: Expansion of (1/x) * Series_Reversion( x / (1+x+x^4/(1+x)^3) ).

The programs for A369592, there is no canonical definition to state claims against.
-/

/-! ## A369592.P3990723277058066588

`A047100(A038707(n+1))`
-/

namespace A369592.P3990723277058066588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A038707 (n + 1)).toNat

end

end A369592.P3990723277058066588

/-! ## A369592.P3398123785176287344

`∑[A130259(A232475(n))]`
-/

namespace A369592.P3398123785176287344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A232475 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369592.P3398123785176287344

/-! ## A369592.P13380326040006790273

`A322547(A273732(n+1))`
-/

namespace A369592.P13380326040006790273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (A273732 (n + 1)).toNat

end

end A369592.P13380326040006790273

/-!
# A369594: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * (1+x^3)^3) ).

The programs for A369594, there is no canonical definition to state claims against.
-/

/-! ## A369594.P8779025339197818038

`A391524(n+1)+A114099(A126365(n))`
-/

namespace A369594.P8779025339197818038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391524 (n + 1) + A114099 (A126365 n).toNat

end

end A369594.P8779025339197818038

/-! ## A369594.P4238995316740138963

`A391524(n+1)+A000122(A275163(n))`
-/

namespace A369594.P4238995316740138963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391524 (n + 1) + A000122 (A275163 n).toNat

end

end A369594.P4238995316740138963

/-! ## A369594.P5180684255290522527

`A391524(n+1)+A010051(A234097(2*(n+2)))`
-/

namespace A369594.P5180684255290522527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391524 (n + 1) + A010051 (A234097 (2 * (n + 2))).toNat

end

end A369594.P5180684255290522527

/-! ## A369594.P3205216214327159587

`filter[A391524(n+1), A358847(#)]`
-/

namespace A369594.P3205216214327159587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A369594.P3205216214327159587

/-!
# A369599: Expansion of (1/x) * Series_Reversion( x * (1/(1+x)^2 - x^3) ).

The programs for A369599, there is no canonical definition to state claims against.
-/

/-! ## A369599.P4243308674929086912

`A387774(n)+A083890(A200731(n))`
-/

namespace A369599.P4243308674929086912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387774 n + A083890 (A200731 n).toNat

end

end A369599.P4243308674929086912

/-! ## A369599.P15590843099781618182

`A387774(n)+A286470(A000272(n))`
-/

namespace A369599.P15590843099781618182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387774 n + A286470 (A000272 n).toNat

end

end A369599.P15590843099781618182

/-! ## A369599.P7421185771505059153

`A387774(n)+A185037(A249156(n+1))`
-/

namespace A369599.P7421185771505059153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387774 n + A185037 (A249156 (n + 1)).toNat

end

end A369599.P7421185771505059153

