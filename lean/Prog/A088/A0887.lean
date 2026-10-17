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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A088700: Number of primes between successive semiprimes.

The programs for A088700, the canonical program `A088700.P13508004528638490806` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088700 has offset 1).

The definition of A088700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088700.P14298373996304055951

`Δ[A000720(A001358(n+1))]`
-/

namespace A088700.P14298373996304055951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P14298373996304055951

namespace A088700

/-- `Δ[A000720(A001358(n+1))]` -/
def P14298373996304055951.Spec : Prop :=
  ∀ n, P14298373996304055951.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P10735743236216023211

`A065516(n+1)-(A108197(n+1)+1)`
-/

namespace A088700.P10735743236216023211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1) - (A108197 (n + 1) + 1)

end

end A088700.P10735743236216023211

namespace A088700

/-- `A065516(n+1)-(A108197(n+1)+1)` -/
def P10735743236216023211.Spec : Prop :=
  ∀ n, P10735743236216023211.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P4228087093626320492

`A001358(n+2)-(A108197(n+1)+A088707(n+1))`
-/

namespace A088700.P4228087093626320492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2) - (A108197 (n + 1) + A088707 (n + 1))

end

end A088700.P4228087093626320492

namespace A088700

/-- `A001358(n+2)-(A108197(n+1)+A088707(n+1))` -/
def P4228087093626320492.Spec : Prop :=
  ∀ n, P4228087093626320492.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P408821852830274309

`A000720(A001358(n+2))-A000720(A001358(n+1))`
-/

namespace A088700.P408821852830274309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001358 (n + 2)).toNat - A000720 (A001358 (n + 1)).toNat

end

end A088700.P408821852830274309

namespace A088700

/-- `A000720(A001358(n+2))-A000720(A001358(n+1))` -/
def P408821852830274309.Spec : Prop :=
  ∀ n, P408821852830274309.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P11300001551596730953

`A176451(n+2)`
-/

namespace A088700.P11300001551596730953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 2)

end

end A088700.P11300001551596730953

namespace A088700

/-- `A176451(n+2)` -/
def P11300001551596730953.Spec : Prop :=
  ∀ n, P11300001551596730953.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P13508004528638490806

`Δ[A111939(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A088700

/-- `Δ[A111939(n+1)]` -/
def P13508004528638490806.Spec : Prop :=
  ∀ n, P13508004528638490806.a n = A088700 (n + 1)

theorem P13508004528638490806.correct : P13508004528638490806.Spec := by
  intro n
  simp only [A088700, Nat.add_sub_cancel]

end A088700

/-! ## A088700.P11351526972293482510

`Δ[A000720(A186621(n+1))]`
-/

namespace A088700.P11351526972293482510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A186621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P11351526972293482510

namespace A088700

/-- `Δ[A000720(A186621(n+1))]` -/
def P11351526972293482510.Spec : Prop :=
  ∀ n, P11351526972293482510.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P10188501399738488239

`Δ[A000720(eq[2, A001222(n+1)])]`
-/

namespace A088700.P10188501399738488239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P10188501399738488239

namespace A088700

/-- `Δ[A000720(eq[2, A001222(n+1)])]` -/
def P10188501399738488239.Spec : Prop :=
  ∀ n, P10188501399738488239.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P5395836881223906250

`A111939(n+2)-A111939(n+1)`
-/

namespace A088700.P5395836881223906250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111939 (n + 2) - A111939 (n + 1)

end

end A088700.P5395836881223906250

namespace A088700

/-- `A111939(n+2)-A111939(n+1)` -/
def P5395836881223906250.Spec : Prop :=
  ∀ n, P5395836881223906250.a n = A088700 (n + 1)

theorem P5395836881223906250.correct : P5395836881223906250.Spec := by
  intro n
  simp only [A088700, Nat.add_sub_cancel, A088700.P5395836881223906250.a, A088700.P13508004528638490806.f1, A088700.P13508004528638490806.a, SequenceMachineLib.memo_apply]

end A088700

/-! ## A088700.P13470552353418324756

`A175708(n+2)-(A175708(n+1)+A108197(n+1))`
-/

namespace A088700.P13470552353418324756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 2) - (A175708 (n + 1) + A108197 (n + 1))

end

end A088700.P13470552353418324756

namespace A088700

/-- `A175708(n+2)-(A175708(n+1)+A108197(n+1))` -/
def P13470552353418324756.Spec : Prop :=
  ∀ n, P13470552353418324756.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P9622420124621137870

`Δ[A000720(A129767(2*(n+1)))]`
-/

namespace A088700.P9622420124621137870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A129767 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P9622420124621137870

namespace A088700

/-- `Δ[A000720(A129767(2*(n+1)))]` -/
def P9622420124621137870.Spec : Prop :=
  ∀ n, P9622420124621137870.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P9610522116070526405

`Δ[A036234(A186621(n+1)+1)]`
-/

namespace A088700.P9610522116070526405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A186621 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P9610522116070526405

namespace A088700

/-- `Δ[A036234(A186621(n+1)+1)]` -/
def P9610522116070526405.Spec : Prop :=
  ∀ n, P9610522116070526405.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P16854466071923603074

`Δ[A063084(eq[2, A001222(n+1)]+1)]`
-/

namespace A088700.P16854466071923603074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P16854466071923603074

namespace A088700

/-- `Δ[A063084(eq[2, A001222(n+1)]+1)]` -/
def P16854466071923603074.Spec : Prop :=
  ∀ n, P16854466071923603074.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P10322413166243244264

`A230980(A186621(n+2))-A230980(A186621(n+1))`
-/

namespace A088700.P10322413166243244264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A186621 (n + 2)).toNat - A230980 (A186621 (n + 1)).toNat

end

end A088700.P10322413166243244264

namespace A088700

/-- `A230980(A186621(n+2))-A230980(A186621(n+1))` -/
def P10322413166243244264.Spec : Prop :=
  ∀ n, P10322413166243244264.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P4918059878560901072

`Δ[A055679(A075818(n+1))]`
-/

namespace A088700.P4918059878560901072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A075818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P4918059878560901072

namespace A088700

/-- `Δ[A055679(A075818(n+1))]` -/
def P4918059878560901072.Spec : Prop :=
  ∀ n, P4918059878560901072.a n = A088700 (n + 1)

end A088700

/-! ## A088700.P11824459595554905374

`Δ[A132090(A106349(n+1))]`
-/

namespace A088700.P11824459595554905374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A106349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088700.P11824459595554905374

namespace A088700

/-- `Δ[A132090(A106349(n+1))]` -/
def P11824459595554905374.Spec : Prop :=
  ∀ n, P11824459595554905374.a n = A088700 (n + 1)

end A088700

/-!
# A088702: Number of polygons with polygonal holes on the square lattice enumerated by half-perimeter.

The programs for A088702, there is no canonical definition to state claims against.
-/

/-! ## A088702.P7110936787700960289

`A048158(A121941(n))+A002931(n+1)`
-/

namespace A088702.P7110936787700960289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A121941 n).toNat + A002931 (n + 1)

end

end A088702.P7110936787700960289

/-! ## A088702.P7227618832778182140

`or(A002931(n+1), A241087(A001419(n+1)))`
-/

namespace A088702.P7227618832778182140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002931 (n + 1)) (A241087 (A001419 (n + 1)).toNat)

end

end A088702.P7227618832778182140

/-! ## A088702.P4720089851889054709

`A048158(A121941(n))+A010566(n+1)/(4*(n+1))`
-/

namespace A088702.P4720089851889054709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (A121941 n).toNat : ℚ) + (A010566 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A088702.P4720089851889054709

/-! ## A088702.P8221565448310091342

`A048158(A121941(n))+A019266(n+1)/4*2/(n+1)`
-/

namespace A088702.P8221565448310091342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (A121941 n).toNat : ℚ) + (A019266 (n + 1) : ℚ) / 4 * (2 / (n + 1 : ℚ))

end

end A088702.P8221565448310091342

/-! ## A088702.P16423032264122293729

`or(A019266(n+1)/(2*(n+1)), A241087(A001419(n+1)))`
-/

namespace A088702.P16423032264122293729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A019266 (n + 1) : ℚ) / (2 * (n + 1) : ℚ))) (A241087 (A001419 (n + 1)).toNat)

end

end A088702.P16423032264122293729

/-!
# A088703: Numbers of form x^5 + y^5, x,y > 0 and x <> y.

The programs for A088703, there is no canonical definition to state claims against.
-/

/-! ## A088703.P7546761394054458973

`A194768(A018900(n+1)%A088719(n+1))`
-/

namespace A088703.P7546761394054458973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (Int.tmod (A018900 (n + 1)) (A088719 (n + 1))).toNat

end

end A088703.P7546761394054458973

/-! ## A088703.P6588851896745736086

`A194768(A320659(3*n+5)+A018900(n+1))`
-/

namespace A088703.P6588851896745736086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (A320659 (3 * n + 5) + A018900 (n + 1)).toNat

end

end A088703.P6588851896745736086

/-! ## A088703.P5362647473928413066

`A194768(or(A018900(n+1), A097479(n)))`
-/

namespace A088703.P5362647473928413066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (Int.lor (A018900 (n + 1)) (A097479 n)).toNat

end

end A088703.P5362647473928413066

/-! ## A088703.P3912329003270461020

`A194768(A018900(n+1)+n*A097479(n))`
-/

namespace A088703.P3912329003270461020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (A018900 (n + 1) + (n : ℤ) * A097479 n).toNat

end

end A088703.P3912329003270461020

/-! ## A088703.P7963676236854000412

`A003347(lt[1, A300700(n)])`
-/

namespace A088703.P7963676236854000412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088703.P7963676236854000412

/-!
# A088704: a(n) equals the coefficient of x^n in f(x)^n where f(x)=1+sum(n>=0,x^(2^n)).

The programs for A088704, there is no canonical definition to state claims against.
-/

/-! ## A088704.P12205717638266584551

`A004525(or(A006925(n), A052899(n)))`
-/

namespace A088704.P12205717638266584551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (A006925 n) (A052899 n)).toNat

end

end A088704.P12205717638266584551

/-! ## A088704.P3539095208440073865

`A004525(or(A024648(n), A052899(n)))`
-/

namespace A088704.P3539095208440073865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (A024648 n) (A052899 n)).toNat

end

end A088704.P3539095208440073865

/-! ## A088704.P6489234519402159895

`or(A004525(A052899(n)), A081123(n))`
-/

namespace A088704.P6489234519402159895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A052899 n).toNat) (A081123 n)

end

end A088704.P6489234519402159895

/-! ## A088704.P13221394428695130846

`or(A004525(A052899(n)), A297420(n))`
-/

namespace A088704.P13221394428695130846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A052899 n).toNat) (A297420 n)

end

end A088704.P13221394428695130846

/-! ## A088704.P801555941748697635

`or(A014334(n), A146663(A146803(n+2)))`
-/

namespace A088704.P801555941748697635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014334 n) (A146663 (A146803 (n + 2)).toNat)

end

end A088704.P801555941748697635

/-!
# A088705: First differences of A000120. One minus exponent of 2 in n.

The programs for A088705, the canonical program `A088705.P12224062743589857877` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088705 has offset 0).

The definition of A088705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088705.P12224062743589857877

`∑{e}[xor(n, -n), 2-#]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088705

/-- `∑{e}[xor(n, -n), 2-#]` -/
def P12224062743589857877.Spec : Prop :=
  ∀ n, P12224062743589857877.a n = A088705 n

theorem P12224062743589857877.correct : P12224062743589857877.Spec := by
  intro n
  simp only [A088705]

end A088705

/-! ## A088705.P6399001525482298580

`1-val(abs(1-n)+1, 2)`
-/

namespace A088705.P6399001525482298580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

end

end A088705.P6399001525482298580

namespace A088705

/-- `1-val(abs(1-n)+1, 2)` -/
def P6399001525482298580.Spec : Prop :=
  ∀ n, P6399001525482298580.a n = A088705 n

end A088705

/-! ## A088705.P16755020864311525266

`1-val(n, 2)*a(n-1)` with `a(0)=0`
-/

namespace A088705.P16755020864311525266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (SequenceMachineLib.valuation n 2 : ℤ) * a (n - 1)

end

end A088705.P16755020864311525266

namespace A088705

/-- `1-val(n, 2)*a(n-1)` -/
def P16755020864311525266.Spec : Prop :=
  ∀ n, P16755020864311525266.a n = A088705 n

end A088705

/-! ## A088705.P804384705694033958

`(1-val(n, 2))^a(n-1)` with `a(0)=0`
-/

namespace A088705.P804384705694033958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (SequenceMachineLib.valuation n 2 : ℤ) : ℝ) ^ (a (n - 1))

end

end A088705.P804384705694033958

namespace A088705

/-- `(1-val(n, 2))^a(n-1)` -/
def P804384705694033958.Spec : Prop :=
  ∀ n, P804384705694033958.a n = (A088705 n : ℝ)

end A088705

/-! ## A088705.P6425404237646971209

`1-lcm(val(n, 2), a(n-1))` with `a(0)=0`
-/

namespace A088705.P6425404237646971209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (Int.lcm (SequenceMachineLib.valuation n 2 : ℤ) (a (n - 1)) : ℤ)

end

end A088705.P6425404237646971209

namespace A088705

/-- `1-lcm(val(n, 2), a(n-1))` -/
def P6425404237646971209.Spec : Prop :=
  ∀ n, P6425404237646971209.a n = A088705 n

end A088705

/-! ## A088705.P4067367515158444090

`a(floor(n/2))-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A088705.P4067367515158444090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - a (n - 1)

end

end A088705.P4067367515158444090

namespace A088705

/-- `a(floor(n/2))-a(n-1)` -/
def P4067367515158444090.Spec : Prop :=
  ∀ n, P4067367515158444090.a n = A088705 n

end A088705

/-! ## A088705.P5302705336298214722

`∑{e}[and(2*n, -2*n), 2-#]`
-/

namespace A088705.P5302705336298214722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A088705.P5302705336298214722

namespace A088705

/-- `∑{e}[and(2*n, -2*n), 2-#]` -/
def P5302705336298214722.Spec : Prop :=
  ∀ n, P5302705336298214722.a n = A088705 n

end A088705

/-! ## A088705.P16037472075959173658

`∑{e}[or(2*n, -2*n), 2-#]`
-/

namespace A088705.P16037472075959173658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A088705.P16037472075959173658

namespace A088705

/-- `∑{e}[or(2*n, -2*n), 2-#]` -/
def P16037472075959173658.Spec : Prop :=
  ∀ n, P16037472075959173658.a n = A088705 n

end A088705

/-! ## A088705.P13661422294633187044

`-A089263(3*n)`
-/

namespace A088705.P13661422294633187044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089263 (3 * n)

end

end A088705.P13661422294633187044

namespace A088705

/-- `-A089263(3*n)` -/
def P13661422294633187044.Spec : Prop :=
  ∀ n, P13661422294633187044.a n = A088705 n

end A088705

/-! ## A088705.P10601144821838454764

`ceil(A269735(n)/2)`
-/

namespace A088705.P10601144821838454764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269735 n : ℚ) / 2⌉

end

end A088705.P10601144821838454764

namespace A088705

/-- `ceil(A269735(n)/2)` -/
def P10601144821838454764.Spec : Prop :=
  ∀ n, P10601144821838454764.a n = A088705 n

end A088705

/-! ## A088705.P17611731519908816084

`A269735(3*n)/2`
-/

namespace A088705.P17611731519908816084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269735 (3 * n) : ℚ) / 2

end

end A088705.P17611731519908816084

namespace A088705

/-- `A269735(3*n)/2` -/
def P17611731519908816084.Spec : Prop :=
  ∀ n, P17611731519908816084.a n = (A088705 n : ℚ)

end A088705

/-! ## A088705.P9090328946498590886

`1-log2(gcd(n, A140513(n)))`
-/

namespace A088705.P9090328946498590886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.logb 2 (Int.gcd (n : ℤ) (A140513 n) : ℝ)

end

end A088705.P9090328946498590886

namespace A088705

/-- `1-log2(gcd(n, A140513(n)))` -/
def P9090328946498590886.Spec : Prop :=
  ∀ n, P9090328946498590886.a n = (A088705 n : ℝ)

end A088705

/-! ## A088705.P14099885365381701627

`1-A007814(abs(1-n)+1)`
-/

namespace A088705.P14099885365381701627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007814 (|1 - (n : ℤ)| + 1).toNat

end

end A088705.P14099885365381701627

namespace A088705

/-- `1-A007814(abs(1-n)+1)` -/
def P14099885365381701627.Spec : Prop :=
  ∀ n, P14099885365381701627.a n = A088705 n

end A088705

/-! ## A088705.P4935272061197567501

`1-abs(2-A089080(n+1))`
-/

namespace A088705.P4935272061197567501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |2 - A089080 (n + 1)|

end

end A088705.P4935272061197567501

namespace A088705

/-- `1-abs(2-A089080(n+1))` -/
def P4935272061197567501.Spec : Prop :=
  ∀ n, P4935272061197567501.a n = A088705 n

end A088705

/-! ## A088705.P8243541533009379795

`1-a(n-1)*A007814(n)` with `a(0)=0`
-/

namespace A088705.P8243541533009379795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A007814 n

end

end A088705.P8243541533009379795

namespace A088705

/-- `1-a(n-1)*A007814(n)` -/
def P8243541533009379795.Spec : Prop :=
  ∀ n, P8243541533009379795.a n = A088705 n

end A088705

/-! ## A088705.P15281030055228771475

`∑{e}[A020639(n+1), #-val(n, 2)]`
-/

namespace A088705.P15281030055228771475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - (SequenceMachineLib.valuation n 2 : ℤ))

end

end A088705.P15281030055228771475

namespace A088705

/-- `∑{e}[A020639(n+1), #-val(n, 2)]` -/
def P15281030055228771475.Spec : Prop :=
  ∀ n, P15281030055228771475.a n = A088705 n

end A088705

/-! ## A088705.P2718960376013189670

`1-A135523(A008486(n))`
-/

namespace A088705.P2718960376013189670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135523 (A008486 n).toNat

end

end A088705.P2718960376013189670

namespace A088705

/-- `1-A135523(A008486(n))` -/
def P2718960376013189670.Spec : Prop :=
  ∀ n, P2718960376013189670.a n = A088705 n

end A088705

/-! ## A088705.P16934328987787138563

`1-A135523(A008706(n))`
-/

namespace A088705.P16934328987787138563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135523 (A008706 n).toNat

end

end A088705.P16934328987787138563

namespace A088705

/-- `1-A135523(A008706(n))` -/
def P16934328987787138563.Spec : Prop :=
  ∀ n, P16934328987787138563.a n = A088705 n

end A088705

/-! ## A088705.P10400343424612462902

`A269735(n)+A089263(n)`
-/

namespace A088705.P10400343424612462902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n + A089263 n

end

end A088705.P10400343424612462902

namespace A088705

/-- `A269735(n)+A089263(n)` -/
def P10400343424612462902.Spec : Prop :=
  ∀ n, P10400343424612462902.a n = A088705 n

end A088705

/-! ## A088705.P12165570839626708768

`A209229(n)-A089263(n)`
-/

namespace A088705.P12165570839626708768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A089263 n

end

end A088705.P12165570839626708768

namespace A088705

/-- `A209229(n)-A089263(n)` -/
def P12165570839626708768.Spec : Prop :=
  ∀ n, P12165570839626708768.a n = A088705 n

end A088705

/-!
# A088707: Semiprimes + 1.

The programs for A088707, the canonical program `A088707.P7291141647877559993` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088707 has offset 1).

The definition of A088707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088707.P5637443238789877800

`A001358(n+1)+1`
-/

namespace A088707.P5637443238789877800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 1

end

end A088707.P5637443238789877800

namespace A088707

/-- `A001358(n+1)+1` -/
def P5637443238789877800.Spec : Prop :=
  ∀ n, P5637443238789877800.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P17595136697721116010

`A186621(n+1)+2`
-/

namespace A088707.P17595136697721116010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 2

end

end A088707.P17595136697721116010

namespace A088707

/-- `A186621(n+1)+2` -/
def P17595136697721116010.Spec : Prop :=
  ∀ n, P17595136697721116010.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P7291141647877559993

`A100493(n+1)-n`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A088707

/-- `A100493(n+1)-n` -/
def P7291141647877559993.Spec : Prop :=
  ∀ n, P7291141647877559993.a n = A088707 (n + 1)

theorem P7291141647877559993.correct : P7291141647877559993.Spec := by
  intro n
  simp only [A088707, Nat.add_sub_cancel]

end A088707

/-! ## A088707.P14520716262043632463

`sqrt(A074985(n+1))+1`
-/

namespace A088707.P14520716262043632463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) + 1

end

end A088707.P14520716262043632463

namespace A088707

/-- `sqrt(A074985(n+1))+1` -/
def P14520716262043632463.Spec : Prop :=
  ∀ n, P14520716262043632463.a n = (A088707 (n + 1) : ℝ)

end A088707

/-! ## A088707.P5832731166786591087

`A075818(n+1)/2+1`
-/

namespace A088707.P5832731166786591087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 + 1

end

end A088707.P5832731166786591087

namespace A088707

/-- `A075818(n+1)/2+1` -/
def P5832731166786591087.Spec : Prop :=
  ∀ n, P5832731166786591087.a n = (A088707 (n + 1) : ℚ)

end A088707

/-! ## A088707.P12544051241860922326

`eq[1, A064911(n+1)]+2`
-/

namespace A088707.P12544051241860922326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088707.P12544051241860922326

namespace A088707

/-- `eq[1, A064911(n+1)]+2` -/
def P12544051241860922326.Spec : Prop :=
  ∀ n, (P12544051241860922326.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P11166732279409705789

`eq[2, A001222(n+1)]+2`
-/

namespace A088707.P11166732279409705789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088707.P11166732279409705789

namespace A088707

/-- `eq[2, A001222(n+1)]+2` -/
def P11166732279409705789.Spec : Prop :=
  ∀ n, (P11166732279409705789.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P8582574902755192414

`eq[2, A008481(n+1)]+2`
-/

namespace A088707.P8582574902755192414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088707.P8582574902755192414

namespace A088707

/-- `eq[2, A008481(n+1)]+2` -/
def P8582574902755192414.Spec : Prop :=
  ∀ n, (P8582574902755192414.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P13779446983693712204

`eq[2, A033273(n+1)]+2`
-/

namespace A088707.P13779446983693712204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088707.P13779446983693712204

namespace A088707

/-- `eq[2, A033273(n+1)]+2` -/
def P13779446983693712204.Spec : Prop :=
  ∀ n, (P13779446983693712204.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P2464521688881883109

`eq[2, A050379(n+1)]+2`
-/

namespace A088707.P2464521688881883109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088707.P2464521688881883109

namespace A088707

/-- `eq[2, A050379(n+1)]+2` -/
def P2464521688881883109.Spec : Prop :=
  ∀ n, (P2464521688881883109.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P17844500144732423933

`eq[2, A342085(n+1)]+2`
-/

namespace A088707.P17844500144732423933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088707.P17844500144732423933

namespace A088707

/-- `eq[2, A342085(n+1)]+2` -/
def P17844500144732423933.Spec : Prop :=
  ∀ n, (P17844500144732423933.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P13219784359571659394

`A175708(n+1)+2+n`
-/

namespace A088707.P13219784359571659394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 2 + (n : ℤ)

end

end A088707.P13219784359571659394

namespace A088707

/-- `A175708(n+1)+2+n` -/
def P13219784359571659394.Spec : Prop :=
  ∀ n, P13219784359571659394.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P8702861188501773640

`A065516(n)+a(n-1)` with `a(0)=5`
-/

namespace A088707.P8702861188501773640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A065516 n + a (n - 1)

end

end A088707.P8702861188501773640

namespace A088707

/-- `A065516(n)+a(n-1)` -/
def P8702861188501773640.Spec : Prop :=
  ∀ n, P8702861188501773640.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P4686025236340541953

`eq[n, n-a(A001222(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A088707.P4686025236340541953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088707.P4686025236340541953

namespace A088707

/-- `eq[n, n-a(A001222(n-1))]` -/
def P4686025236340541953.Spec : Prop :=
  ∀ n, (P4686025236340541953.a n : ℤ) = A088707 (n + 1)

end A088707

/-! ## A088707.P13727537205709411731

`record[n/a(A001222(n))]+1` with `a(0)=4, a(1)=4, a(2)=1, a(3)=2`
-/

namespace A088707.P13727537205709411731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 1, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A088707.P13727537205709411731

namespace A088707

/-- `record[n/a(A001222(n))]+1` -/
def P13727537205709411731.Spec : Prop :=
  ∀ n, P13727537205709411731.a n = (A088707 (n + 1) : ℚ)

end A088707

/-! ## A088707.P4204653084688781950

`A008864(n+1)-A065870(n+1)`
-/

namespace A088707.P4204653084688781950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A065870 (n + 1)

end

end A088707.P4204653084688781950

namespace A088707

/-- `A008864(n+1)-A065870(n+1)` -/
def P4204653084688781950.Spec : Prop :=
  ∀ n, P4204653084688781950.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P10722882593020627077

`A133796(n+1)-A006093(n+1)`
-/

namespace A088707.P10722882593020627077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A006093 (n + 1)

end

end A088707.P10722882593020627077

namespace A088707

/-- `A133796(n+1)-A006093(n+1)` -/
def P10722882593020627077.Spec : Prop :=
  ∀ n, P10722882593020627077.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P17462420795800756556

`A072055(n+1)-A175511(n+1)`
-/

namespace A088707.P17462420795800756556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A175511 (n + 1)

end

end A088707.P17462420795800756556

namespace A088707

/-- `A072055(n+1)-A175511(n+1)` -/
def P17462420795800756556.Spec : Prop :=
  ∀ n, P17462420795800756556.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P9240740930859630031

`A083681(n+1)-A257533(n+1)`
-/

namespace A088707.P9240740930859630031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083681 (n + 1) - A257533 (n + 1)

end

end A088707.P9240740930859630031

namespace A088707

/-- `A083681(n+1)-A257533(n+1)` -/
def P9240740930859630031.Spec : Prop :=
  ∀ n, P9240740930859630031.a n = A088707 (n + 1)

end A088707

/-! ## A088707.P13129244155509261074

`A000040(n+1)+1-A065870(n+1)`
-/

namespace A088707.P13129244155509261074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A065870 (n + 1))

end

end A088707.P13129244155509261074

namespace A088707

/-- `A000040(n+1)+1-A065870(n+1)` -/
def P13129244155509261074.Spec : Prop :=
  ∀ n, P13129244155509261074.a n = A088707 (n + 1)

end A088707

/-!
# A088709: Numbers m that are a product of two primes j and k such that m+j+k is prime.

The programs for A088709, the canonical program `A088709.P16139510648427696938` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088709 has offset 1).

The definition of A088709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088709.P16582870540470717199

`eq[4, A300223(n+1)]+1`
-/

namespace A088709.P16582870540470717199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088709.P16582870540470717199

namespace A088709

/-- `eq[4, A300223(n+1)]+1` -/
def P16582870540470717199.Spec : Prop :=
  ∀ n, (P16582870540470717199.a n : ℤ) = A088709 (n + 1)

end A088709

/-! ## A088709.P8244210952937278451

`filter[A050703(n+1), A064911(#)]`
-/

namespace A088709.P8244210952937278451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088709.P8244210952937278451

namespace A088709

/-- `filter[A050703(n+1), A064911(#)]` -/
def P8244210952937278451.Spec : Prop :=
  ∀ n, P8244210952937278451.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P3595676178875575359

`filter[A065872(n+1), A064911(#)]`
-/

namespace A088709.P3595676178875575359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088709.P3595676178875575359

namespace A088709

/-- `filter[A065872(n+1), A064911(#)]` -/
def P3595676178875575359.Spec : Prop :=
  ∀ n, P3595676178875575359.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P5750823649420010603

`filter[A066073(n+1), A064911(#)]`
-/

namespace A088709.P5750823649420010603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088709.P5750823649420010603

namespace A088709

/-- `filter[A066073(n+1), A064911(#)]` -/
def P5750823649420010603.Spec : Prop :=
  ∀ n, P5750823649420010603.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P8481834202226180346

`filter[A050703(n+1), A101040(#)]`
-/

namespace A088709.P8481834202226180346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A088709.P8481834202226180346

namespace A088709

/-- `filter[A050703(n+1), A101040(#)]` -/
def P8481834202226180346.Spec : Prop :=
  ∀ n, P8481834202226180346.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P6391578985680151964

`filter[A066073(n+1), A101040(#)]`
-/

namespace A088709.P6391578985680151964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A088709.P6391578985680151964

namespace A088709

/-- `filter[A066073(n+1), A101040(#)]` -/
def P6391578985680151964.Spec : Prop :=
  ∀ n, P6391578985680151964.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P1423785824977126209

`filter[A165562(n+1), A064911(#)]`
-/

namespace A088709.P1423785824977126209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088709.P1423785824977126209

namespace A088709

/-- `filter[A165562(n+1), A064911(#)]` -/
def P1423785824977126209.Spec : Prop :=
  ∀ n, P1423785824977126209.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P16797801218412953335

`filter[A001358(n+1), A296211(#)]`
-/

namespace A088709.P16797801218412953335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P16797801218412953335

namespace A088709

/-- `filter[A001358(n+1), A296211(#)]` -/
def P16797801218412953335.Spec : Prop :=
  ∀ n, P16797801218412953335.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P10142334844921099957

`filter[A006881(n+1), A296211(#)]`
-/

namespace A088709.P10142334844921099957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P10142334844921099957

namespace A088709

/-- `filter[A006881(n+1), A296211(#)]` -/
def P10142334844921099957.Spec : Prop :=
  ∀ n, P10142334844921099957.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P16139510648427696938

`filter[A007422(n+1), A296211(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088709

/-- `filter[A007422(n+1), A296211(#)]` -/
def P16139510648427696938.Spec : Prop :=
  ∀ n, P16139510648427696938.a n = A088709 (n + 1)

theorem P16139510648427696938.correct : P16139510648427696938.Spec := by
  intro n
  simp only [A088709, Nat.add_sub_cancel]

end A088709

/-! ## A088709.P3744238927935569651

`filter[A248792(n+1), A064911(#)]`
-/

namespace A088709.P3744238927935569651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088709.P3744238927935569651

namespace A088709

/-- `filter[A248792(n+1), A064911(#)]` -/
def P3744238927935569651.Spec : Prop :=
  ∀ n, P3744238927935569651.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P16796687591412519167

`filter[A030513(n+1), A296211(#)]`
-/

namespace A088709.P16796687591412519167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P16796687591412519167

namespace A088709

/-- `filter[A030513(n+1), A296211(#)]` -/
def P16796687591412519167.Spec : Prop :=
  ∀ n, P16796687591412519167.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P941075319679054408

`filter[A050703(n+1), A280710(#)]`
-/

namespace A088709.P941075319679054408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A088709.P941075319679054408

namespace A088709

/-- `filter[A050703(n+1), A280710(#)]` -/
def P941075319679054408.Spec : Prop :=
  ∀ n, P941075319679054408.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P3732783485339713357

`filter[A065872(n+1), A280710(#)]`
-/

namespace A088709.P3732783485339713357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A088709.P3732783485339713357

namespace A088709

/-- `filter[A065872(n+1), A280710(#)]` -/
def P3732783485339713357.Spec : Prop :=
  ∀ n, P3732783485339713357.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P10709063209139943537

`filter[A066073(n+1), A280710(#)]`
-/

namespace A088709.P10709063209139943537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A088709.P10709063209139943537

namespace A088709

/-- `filter[A066073(n+1), A280710(#)]` -/
def P10709063209139943537.Spec : Prop :=
  ∀ n, P10709063209139943537.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P973503145738517621

`filter[A068993(n+1), A296211(#)]`
-/

namespace A088709.P973503145738517621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P973503145738517621

namespace A088709

/-- `filter[A068993(n+1), A296211(#)]` -/
def P973503145738517621.Spec : Prop :=
  ∀ n, P973503145738517621.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P9778190957027010000

`filter[A050703(n+1), A353471(#)]`
-/

namespace A088709.P9778190957027010000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A088709.P9778190957027010000

namespace A088709

/-- `filter[A050703(n+1), A353471(#)]` -/
def P9778190957027010000.Spec : Prop :=
  ∀ n, P9778190957027010000.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P14933395156607496126

`filter[A339438(n+1), A064911(#)]`
-/

namespace A088709.P14933395156607496126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088709.P14933395156607496126

namespace A088709

/-- `filter[A339438(n+1), A064911(#)]` -/
def P14933395156607496126.Spec : Prop :=
  ∀ n, P14933395156607496126.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P8253774046046369882

`filter[A050703(n+1), A353788(#)]`
-/

namespace A088709.P8253774046046369882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A088709.P8253774046046369882

namespace A088709

/-- `filter[A050703(n+1), A353788(#)]` -/
def P8253774046046369882.Spec : Prop :=
  ∀ n, P8253774046046369882.a n = A088709 (n + 1)

end A088709

/-! ## A088709.P10679187999916588194

`filter[A050703(n+1), A353799(#)]`
-/

namespace A088709.P10679187999916588194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088709.P10679187999916588194

namespace A088709

/-- `filter[A050703(n+1), A353799(#)]` -/
def P10679187999916588194.Spec : Prop :=
  ∀ n, P10679187999916588194.a n = A088709 (n + 1)

end A088709

/-!
# A088710: Numbers m which are a product of two primes j and k such that m-j-k is prime.

The programs for A088710, the canonical program `A088710.P3644724362584040461` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088710 has offset 1).

The definition of A088710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088710.P2638966502641878173

`filter[A050704(n+1), A064911(#)]`
-/

namespace A088710.P2638966502641878173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088710.P2638966502641878173

namespace A088710

/-- `filter[A050704(n+1), A064911(#)]` -/
def P2638966502641878173.Spec : Prop :=
  ∀ n, P2638966502641878173.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P6294597813492703896

`filter[A050704(n+1), A101040(#)]`
-/

namespace A088710.P6294597813492703896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A088710.P6294597813492703896

namespace A088710

/-- `filter[A050704(n+1), A101040(#)]` -/
def P6294597813492703896.Spec : Prop :=
  ∀ n, P6294597813492703896.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P6876771701102311671

`filter[A229269(n+1), A064911(#)]`
-/

namespace A088710.P6876771701102311671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088710.P6876771701102311671

namespace A088710

/-- `filter[A229269(n+1), A064911(#)]` -/
def P6876771701102311671.Spec : Prop :=
  ∀ n, P6876771701102311671.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P17364775804545669571

`filter[A229269(n+2), A101040(#)]`
-/

namespace A088710.P17364775804545669571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A088710.P17364775804545669571

namespace A088710

/-- `filter[A229269(n+2), A101040(#)]` -/
def P17364775804545669571.Spec : Prop :=
  ∀ n, P17364775804545669571.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P17046155716020094145

`filter[A229269(n+2), A123927(#)]`
-/

namespace A088710.P17046155716020094145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A088710.P17046155716020094145

namespace A088710

/-- `filter[A229269(n+2), A123927(#)]` -/
def P17046155716020094145.Spec : Prop :=
  ∀ n, P17046155716020094145.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P3644724362584040461

`filter[A050704(n+2), A353799(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088710

/-- `filter[A050704(n+2), A353799(#)]` -/
def P3644724362584040461.Spec : Prop :=
  ∀ n, P3644724362584040461.a n = A088710 (n + 1)

theorem P3644724362584040461.correct : P3644724362584040461.Spec := by
  intro n
  simp only [A088710, Nat.add_sub_cancel]

end A088710

/-! ## A088710.P5006589826880894633

`filter[A229269(n+2), A353799(#)]`
-/

namespace A088710.P5006589826880894633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088710.P5006589826880894633

namespace A088710

/-- `filter[A229269(n+2), A353799(#)]` -/
def P5006589826880894633.Spec : Prop :=
  ∀ n, P5006589826880894633.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P10681921516150853714

`∩[A001358(n+1), A050704(n+1)]`
-/

namespace A088710.P10681921516150853714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P10681921516150853714

namespace A088710

/-- `∩[A001358(n+1), A050704(n+1)]` -/
def P10681921516150853714.Spec : Prop :=
  ∀ n, (P10681921516150853714.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P10701744820519581285

`∩[A037143(n+1), A050704(n+1)]`
-/

namespace A088710.P10701744820519581285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P10701744820519581285

namespace A088710

/-- `∩[A037143(n+1), A050704(n+1)]` -/
def P10701744820519581285.Spec : Prop :=
  ∀ n, (P10701744820519581285.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P2370885592766011274

`∩[A050704(n+1), A176540(n+1)]`
-/

namespace A088710.P2370885592766011274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P2370885592766011274

namespace A088710

/-- `∩[A050704(n+1), A176540(n+1)]` -/
def P2370885592766011274.Spec : Prop :=
  ∀ n, (P2370885592766011274.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P12859147064998644631

`∩[A001358(n+1), A229269(n+1)]`
-/

namespace A088710.P12859147064998644631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P12859147064998644631

namespace A088710

/-- `∩[A001358(n+1), A229269(n+1)]` -/
def P12859147064998644631.Spec : Prop :=
  ∀ n, (P12859147064998644631.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P11747631539288657340

`∩[A077135(n+1), A229269(n+1)]`
-/

namespace A088710.P11747631539288657340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P11747631539288657340

namespace A088710

/-- `∩[A077135(n+1), A229269(n+1)]` -/
def P11747631539288657340.Spec : Prop :=
  ∀ n, (P11747631539288657340.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P18135483593159078011

`∩[A077136(n+1), A229269(n+1)]`
-/

namespace A088710.P18135483593159078011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P18135483593159078011

namespace A088710

/-- `∩[A077136(n+1), A229269(n+1)]` -/
def P18135483593159078011.Spec : Prop :=
  ∀ n, (P18135483593159078011.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P5054395642051905177

`∩[A085155(n+1), A229269(n+1)]`
-/

namespace A088710.P5054395642051905177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P5054395642051905177

namespace A088710

/-- `∩[A085155(n+1), A229269(n+1)]` -/
def P5054395642051905177.Spec : Prop :=
  ∀ n, (P5054395642051905177.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P15293769694712552745

`∩[A176540(n+1), A229269(n+1)]`
-/

namespace A088710.P15293769694712552745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P15293769694712552745

namespace A088710

/-- `∩[A176540(n+1), A229269(n+1)]` -/
def P15293769694712552745.Spec : Prop :=
  ∀ n, (P15293769694712552745.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P16989048344665876038

`∩[A229269(n+1), A323644(n+1)]`
-/

namespace A088710.P16989048344665876038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P16989048344665876038

namespace A088710

/-- `∩[A229269(n+1), A323644(n+1)]` -/
def P16989048344665876038.Spec : Prop :=
  ∀ n, (P16989048344665876038.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P5735419858522700799

`∩[A229269(n+1), A346041(n+1)]`
-/

namespace A088710.P5735419858522700799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088710.P5735419858522700799

namespace A088710

/-- `∩[A229269(n+1), A346041(n+1)]` -/
def P5735419858522700799.Spec : Prop :=
  ∀ n, (P5735419858522700799.a n : ℤ) = A088710 (n + 1)

end A088710

/-! ## A088710.P352261480345494479

`A271568(A028310(n))-A000007(n)`
-/

namespace A088710.P352261480345494479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (A028310 n).toNat - A000007 n

end

end A088710.P352261480345494479

namespace A088710

/-- `A271568(A028310(n))-A000007(n)` -/
def P352261480345494479.Spec : Prop :=
  ∀ n, P352261480345494479.a n = A088710 (n + 1)

end A088710

/-! ## A088710.P3346146871334124404

`A271568(A028310(n))-log2(A054977(n))`
-/

namespace A088710.P3346146871334124404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A271568 (A028310 n).toNat : ℝ) - Real.logb 2 (A054977 n : ℝ)

end

end A088710.P3346146871334124404

namespace A088710

/-- `A271568(A028310(n))-log2(A054977(n))` -/
def P3346146871334124404.Spec : Prop :=
  ∀ n, P3346146871334124404.a n = (A088710 (n + 1) : ℝ)

end A088710

/-! ## A088710.P2164508830645089667

`A271568(A065033(2*n))-A000007(n)`
-/

namespace A088710.P2164508830645089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (A065033 (2 * n)).toNat - A000007 n

end

end A088710.P2164508830645089667

namespace A088710

/-- `A271568(A065033(2*n))-A000007(n)` -/
def P2164508830645089667.Spec : Prop :=
  ∀ n, P2164508830645089667.a n = A088710 (n + 1)

end A088710

/-!
# A088711: Numbers m that are a product of two primes j and k such that both m+j+k and m-j-k are primes.

The programs for A088711, the canonical program `A088711.P10668698968126566124` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088711 has offset 1).

The definition of A088711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088711.P16832421669847460910

`∩[A050705(n+1), A271568(n+1)]`
-/

namespace A088711.P16832421669847460910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088711.P16832421669847460910

namespace A088711

/-- `∩[A050705(n+1), A271568(n+1)]` -/
def P16832421669847460910.Spec : Prop :=
  ∀ n, (P16832421669847460910.a n : ℤ) = A088711 (n + 1)

end A088711

/-! ## A088711.P2209934393086094156

`∩[A229271(n+1), A271568(n+1)]`
-/

namespace A088711.P2209934393086094156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088711.P2209934393086094156

namespace A088711

/-- `∩[A229271(n+1), A271568(n+1)]` -/
def P2209934393086094156.Spec : Prop :=
  ∀ n, (P2209934393086094156.a n : ℤ) = A088711 (n + 1)

end A088711

/-! ## A088711.P2835865145294710207

`∩[A165562(n+1), A271568(n+1)]`
-/

namespace A088711.P2835865145294710207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088711.P2835865145294710207

namespace A088711

/-- `∩[A165562(n+1), A271568(n+1)]` -/
def P2835865145294710207.Spec : Prop :=
  ∀ n, (P2835865145294710207.a n : ℤ) = A088711 (n + 1)

end A088711

/-! ## A088711.P9707479942147724280

`filter[A050705(n+1), A354927(#)]`
-/

namespace A088711.P9707479942147724280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A088711.P9707479942147724280

namespace A088711

/-- `filter[A050705(n+1), A354927(#)]` -/
def P9707479942147724280.Spec : Prop :=
  ∀ n, P9707479942147724280.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P799436414845395675

`filter[A050705(n+1), A374128(#)]`
-/

namespace A088711.P799436414845395675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A088711.P799436414845395675

namespace A088711

/-- `filter[A050705(n+1), A374128(#)]` -/
def P799436414845395675.Spec : Prop :=
  ∀ n, P799436414845395675.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P13823725358799074947

`filter[A229271(n+1), A354927(#)]`
-/

namespace A088711.P13823725358799074947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A088711.P13823725358799074947

namespace A088711

/-- `filter[A229271(n+1), A354927(#)]` -/
def P13823725358799074947.Spec : Prop :=
  ∀ n, P13823725358799074947.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P10668698968126566124

`∩[A050703(n+1), A271568(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A088711

/-- `∩[A050703(n+1), A271568(n+1)]` -/
def P10668698968126566124.Spec : Prop :=
  ∀ n, (P10668698968126566124.a n : ℤ) = A088711 (n + 1)

theorem P10668698968126566124.correct : P10668698968126566124.Spec := by
  intro n
  simp only [A088711, Nat.add_sub_cancel]

end A088711

/-! ## A088711.P10422304607900185241

`filter[A050705(n+1), A064911(#)]`
-/

namespace A088711.P10422304607900185241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088711.P10422304607900185241

namespace A088711

/-- `filter[A050705(n+1), A064911(#)]` -/
def P10422304607900185241.Spec : Prop :=
  ∀ n, P10422304607900185241.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P3484006700608442052

`filter[A050705(n+1), A101040(#)]`
-/

namespace A088711.P3484006700608442052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A088711.P3484006700608442052

namespace A088711

/-- `filter[A050705(n+1), A101040(#)]` -/
def P3484006700608442052.Spec : Prop :=
  ∀ n, P3484006700608442052.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P13790188440955119501

`filter[A229271(n+1), A064911(#)]`
-/

namespace A088711.P13790188440955119501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088711.P13790188440955119501

namespace A088711

/-- `filter[A229271(n+1), A064911(#)]` -/
def P13790188440955119501.Spec : Prop :=
  ∀ n, P13790188440955119501.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P3418401203617196252

`filter[A229271(n+1), A101040(#)]`
-/

namespace A088711.P3418401203617196252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A088711.P3418401203617196252

namespace A088711

/-- `filter[A229271(n+1), A101040(#)]` -/
def P3418401203617196252.Spec : Prop :=
  ∀ n, P3418401203617196252.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P509369623029188410

`filter[A050705(n+1), A280710(#)]`
-/

namespace A088711.P509369623029188410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A088711.P509369623029188410

namespace A088711

/-- `filter[A050705(n+1), A280710(#)]` -/
def P509369623029188410.Spec : Prop :=
  ∀ n, P509369623029188410.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P11219008589100953854

`filter[A229271(n+1), A123927(#)]`
-/

namespace A088711.P11219008589100953854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A088711.P11219008589100953854

namespace A088711

/-- `filter[A229271(n+1), A123927(#)]` -/
def P11219008589100953854.Spec : Prop :=
  ∀ n, P11219008589100953854.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P9865247043641286806

`filter[A050705(n+1), A353471(#)]`
-/

namespace A088711.P9865247043641286806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A088711.P9865247043641286806

namespace A088711

/-- `filter[A050705(n+1), A353471(#)]` -/
def P9865247043641286806.Spec : Prop :=
  ∀ n, P9865247043641286806.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P6943836322254544329

`filter[A050705(n+1), A353788(#)]`
-/

namespace A088711.P6943836322254544329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A088711.P6943836322254544329

namespace A088711

/-- `filter[A050705(n+1), A353788(#)]` -/
def P6943836322254544329.Spec : Prop :=
  ∀ n, P6943836322254544329.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P12786426624862562117

`filter[A050705(n+1), A353799(#)]`
-/

namespace A088711.P12786426624862562117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088711.P12786426624862562117

namespace A088711

/-- `filter[A050705(n+1), A353799(#)]` -/
def P12786426624862562117.Spec : Prop :=
  ∀ n, P12786426624862562117.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P4710981778320047700

`filter[A229271(n+1), A280710(#)]`
-/

namespace A088711.P4710981778320047700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A088711.P4710981778320047700

namespace A088711

/-- `filter[A229271(n+1), A280710(#)]` -/
def P4710981778320047700.Spec : Prop :=
  ∀ n, P4710981778320047700.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P6885671295719592917

`filter[A271568(n+1), A296211(#)]`
-/

namespace A088711.P6885671295719592917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088711.P6885671295719592917

namespace A088711

/-- `filter[A271568(n+1), A296211(#)]` -/
def P6885671295719592917.Spec : Prop :=
  ∀ n, P6885671295719592917.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P6972799255023084043

`filter[A229271(n+1), A353471(#)]`
-/

namespace A088711.P6972799255023084043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A088711.P6972799255023084043

namespace A088711

/-- `filter[A229271(n+1), A353471(#)]` -/
def P6972799255023084043.Spec : Prop :=
  ∀ n, P6972799255023084043.a n = A088711 (n + 1)

end A088711

/-! ## A088711.P656065463576974721

`filter[A229271(n+1), A353788(#)]`
-/

namespace A088711.P656065463576974721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A088711.P656065463576974721

namespace A088711

/-- `filter[A229271(n+1), A353788(#)]` -/
def P656065463576974721.Spec : Prop :=
  ∀ n, P656065463576974721.a n = A088711 (n + 1)

end A088711

/-!
# A088712: Primes which when concatenated with the previous prime form a new prime.

The programs for A088712, there is no canonical definition to state claims against.
-/

/-! ## A088712.P15244467098322639192

`A151800(A178466(n+1))`
-/

namespace A088712.P15244467098322639192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A178466 (n + 1)).toNat

end

end A088712.P15244467098322639192

/-! ## A088712.P11682224048665197260

`p?[A034809(n+1)]`
-/

namespace A088712.P11682224048665197260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088712.P11682224048665197260

/-! ## A088712.P7311780204614421809

`record[A020639(A034809(n+2))]`
-/

namespace A088712.P7311780204614421809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034809 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088712.P7311780204614421809

/-! ## A088712.P5385336711270782796

`filter[A034809(n+1), A010051(#)]`
-/

namespace A088712.P5385336711270782796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088712.P5385336711270782796

/-! ## A088712.P3939297683158299969

`∩[A000040(n+1), A034809(n+1)]`
-/

namespace A088712.P3939297683158299969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P3939297683158299969

/-! ## A088712.P3563944095363960981

`∩[A006005(n+1), A034809(n+1)]`
-/

namespace A088712.P3563944095363960981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P3563944095363960981

/-! ## A088712.P2228608364580860681

`∩[A008578(n+1), A034809(n+1)]`
-/

namespace A088712.P2228608364580860681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P2228608364580860681

/-! ## A088712.P8339618984728769089

`∩[A034809(n+1), A045344(n+1)]`
-/

namespace A088712.P8339618984728769089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P8339618984728769089

/-! ## A088712.P17399102648462176798

`∩[A034809(n+1), A053813(n+1)]`
-/

namespace A088712.P17399102648462176798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P17399102648462176798

/-! ## A088712.P11495983343911659157

`∩[A034809(n+1), A065091(n+1)]`
-/

namespace A088712.P11495983343911659157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P11495983343911659157

/-! ## A088712.P16075439221475068964

`∩[A034809(n+1), A070957(n+1)]`
-/

namespace A088712.P16075439221475068964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P16075439221475068964

/-! ## A088712.P5559659074641401258

`∩[A034809(n+1), A106118(n+1)]`
-/

namespace A088712.P5559659074641401258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P5559659074641401258

/-! ## A088712.P3462620050677473456

`∩[A182986(n+1), A034809(n+1)]`
-/

namespace A088712.P3462620050677473456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P3462620050677473456

/-! ## A088712.P5445573799825857429

`∩[A326715(n+1), A034809(n+1)]`
-/

namespace A088712.P5445573799825857429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088712.P5445573799825857429

/-!
# A088713: G.f. A(x) satisfies A(x/A(x)) = 1/(1-x).

The programs for A088713, there is no canonical definition to state claims against.
-/

/-! ## A088713.P9382146542537470595

`A392095(A212342(n))`
-/

namespace A088713.P9382146542537470595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392095 (A212342 n).toNat

end

end A088713.P9382146542537470595

/-! ## A088713.P13411077184706525251

`A263777(n)+A122841(∑[floor(π^n)])`
-/

namespace A088713.P13411077184706525251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263777 n + A122841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088713.P13411077184706525251

/-! ## A088713.P12907402813873666983

`A256195(n)-A224248(C(n, floor(n/4)))`
-/

namespace A088713.P12907402813873666983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256195 n - A224248 (Nat.choose n ⌊(n : ℚ) / 4⌋.toNat)

end

end A088713.P12907402813873666983

/-! ## A088713.P12582291607994622829

`A263777(n)+A014082(A001096(n))`
-/

namespace A088713.P12582291607994622829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263777 n + A014082 (A001096 n).toNat

end

end A088713.P12582291607994622829

/-!
# A088714: G.f. satisfies A(x) = 1 + x*A(x)^2*A(x*A(x)).

The programs for A088714, there is no canonical definition to state claims against.
-/

/-! ## A088714.P8104595983579968998

`abs(A067145(n+2))`
-/

namespace A088714.P8104595983579968998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067145 (n + 2)|

end

end A088714.P8104595983579968998

/-! ## A088714.P14163053297844341308

`A033999(n)*A067145(n+2)`
-/

namespace A088714.P14163053297844341308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A067145 (n + 2)

end

end A088714.P14163053297844341308

/-! ## A088714.P26404183301863504

`lcm(A057077(n), A067145(n+2))`
-/

namespace A088714.P26404183301863504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A067145 (n + 2))

end

end A088714.P26404183301863504

/-! ## A088714.P9355102731846558877

`A057077(2*n)*A067145(n+2)`
-/

namespace A088714.P9355102731846558877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A067145 (n + 2)

end

end A088714.P9355102731846558877

/-! ## A088714.P2506249720301383684

`gcd(A067145(n+2), A154955(n+1))`
-/

namespace A088714.P2506249720301383684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067145 (n + 2)) (A154955 (n + 1))

end

end A088714.P2506249720301383684

/-!
# A088715: G.f. satisfies: A(x*g(x)) = g(x) where g(x) is the g.f. of A088716.

The programs for A088715, there is no canonical definition to state claims against.
-/

/-! ## A088715.P7586302622520306824

`A024542(A000670(n))+A001710(n)`
-/

namespace A088715.P7586302622520306824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024542 (A000670 n).toNat + A001710 n

end

end A088715.P7586302622520306824

/-! ## A088715.P17567982656128091996

`A373773(n)-A057558(A162653(n))`
-/

namespace A088715.P17567982656128091996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373773 n - A057558 (A162653 n).toNat

end

end A088715.P17567982656128091996

/-! ## A088715.P14151799167542108160

`A373773(n)-A373749(A000740(n+1))`
-/

namespace A088715.P14151799167542108160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373773 n - A373749 (A000740 (n + 1)).toNat

end

end A088715.P14151799167542108160

/-!
# A088716: G.f. satisfies: A(x) = 1 + x*A(x)*d/dx[x*A(x)] = 1 + x*A(x)^2 + x^2*A(x)*A'(x).

The programs for A088716, there is no canonical definition to state claims against.
-/

/-! ## A088716.P5244799455338683797

`A218222(n+1)/2^n`
-/

namespace A088716.P5244799455338683797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218222 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A088716.P5244799455338683797

/-! ## A088716.P17717171156851654220

`floor(A218222(n+1)/A000079(n))`
-/

namespace A088716.P17717171156851654220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218222 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A088716.P17717171156851654220

/-! ## A088716.P7553704520079332929

`abs(A301305(∑[n]+1))`
-/

namespace A088716.P7553704520079332929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A301305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A088716.P7553704520079332929

/-! ## A088716.P10272645215550393696

`gcd(A218222(n+1), A301305(A000124(n)))`
-/

namespace A088716.P10272645215550393696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218222 (n + 1)) (A301305 (A000124 n).toNat)

end

end A088716.P10272645215550393696

/-! ## A088716.P10650531876938685672

`A301930(∑[n+1])`
-/

namespace A088716.P10650531876938685672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088716.P10650531876938685672

/-!
# A088717: G.f. satisfies: A(x) = 1 + x*A(x)^2*A(x*A(x)^2).

The programs for A088717, there is no canonical definition to state claims against.
-/

/-! ## A088717.P3813271055835899248

`A131485(or(A211880(n), A220911(n)))`
-/

namespace A088717.P3813271055835899248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131485 (Int.lor (A211880 n) (A220911 n)).toNat

end

end A088717.P3813271055835899248

/-! ## A088717.P8027709709327370508

`A138808(A072619(n)!)`
-/

namespace A088717.P8027709709327370508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138808 (Nat.factorial (A072619 n).toNat)

end

end A088717.P8027709709327370508

/-!
# A088719: Numbers that can be represented as a^7 + b^7, with 0 < a < b, in exactly one way.

The programs for A088719, there is no canonical definition to state claims against.
-/

/-! ## A088719.P8805955014237458658

`A003369(comp[∑[n]])`
-/

namespace A088719.P8805955014237458658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003369 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088719.P8805955014237458658

/-! ## A088719.P1042548835560124101

`A004864(lt[2, A141539(n)])`
-/

namespace A088719.P1042548835560124101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088719.P1042548835560124101

/-! ## A088719.P552919912535507953

`A123253(A084855(n+1)+1)`
-/

namespace A088719.P552919912535507953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123253 (A084855 (n + 1) + 1).toNat

end

end A088719.P552919912535507953

/-! ## A088719.P9527245085693774916

`A123253(A084854(n+1)+10)`
-/

namespace A088719.P9527245085693774916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123253 (A084854 (n + 1) + 10).toNat

end

end A088719.P9527245085693774916

/-! ## A088719.P7205908508003811846

`A123253(A279769(n+1)+10)`
-/

namespace A088719.P7205908508003811846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123253 (A279769 (n + 1) + 10).toNat

end

end A088719.P7205908508003811846

/-!
# A088720: Unique monotone sequence satisfying a(a(a(n))) = 2n.

The programs for A088720, the canonical program `A088720.P4003270494067794043` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088720 has offset 3).

The definition of A088720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088720.P4003270494067794043

`∑[abs(a(floor(n/2)-1))]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088720

/-- `∑[abs(a(floor(n/2)-1))]` -/
def P4003270494067794043.Spec : Prop :=
  ∀ n, (P4003270494067794043.a n : ℤ) = A088720 (n + 3)

theorem P4003270494067794043.correct : P4003270494067794043.Spec := by
  intro n
  simp only [A088720, Nat.add_sub_cancel]

end A088720

/-! ## A088720.P1364134020116026326

`comp[2*(A003817(n)+n)]+3`
-/

namespace A088720.P1364134020116026326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003817 n + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A088720.P1364134020116026326

namespace A088720

/-- `comp[2*(A003817(n)+n)]+3` -/
def P1364134020116026326.Spec : Prop :=
  ∀ n, (P1364134020116026326.a n : ℤ) = A088720 (n + 3)

end A088720

/-! ## A088720.P11943317116814479965

`∪[A004754(n+2), A004754(n+2)+n]`
-/

namespace A088720.P11943317116814479965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088720.P11943317116814479965

namespace A088720

/-- `∪[A004754(n+2), A004754(n+2)+n]` -/
def P11943317116814479965.Spec : Prop :=
  ∀ n, (P11943317116814479965.a n : ℤ) = A088720 (n + 3)

end A088720

/-! ## A088720.P3082532170719518569

`A060973(A078881(n+2))+n+3`
-/

namespace A088720.P3082532170719518569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A078881 (n + 2)).toNat + (n + 3 : ℤ)

end

end A088720.P3082532170719518569

namespace A088720

/-- `A060973(A078881(n+2))+n+3` -/
def P3082532170719518569.Spec : Prop :=
  ∀ n, P3082532170719518569.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P1230089691425425625

`A277267(A279521(n+2))+4+n`
-/

namespace A088720.P1230089691425425625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (A279521 (n + 2)).toNat + 4 + (n : ℤ)

end

end A088720.P1230089691425425625

namespace A088720

/-- `A277267(A279521(n+2))+4+n` -/
def P1230089691425425625.Spec : Prop :=
  ∀ n, P1230089691425425625.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P5971566288912356896

`A249036(n+2)+A249036(n+1)+1`
-/

namespace A088720.P5971566288912356896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249036 (n + 2) + (A249036 (n + 1) + 1)

end

end A088720.P5971566288912356896

namespace A088720

/-- `A249036(n+2)+A249036(n+1)+1` -/
def P5971566288912356896.Spec : Prop :=
  ∀ n, P5971566288912356896.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P4904116970508101891

`A060973(A006165(n+3))+n+3`
-/

namespace A088720.P4904116970508101891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A006165 (n + 3)).toNat + (n + 3 : ℤ)

end

end A088720.P4904116970508101891

namespace A088720

/-- `A060973(A006165(n+3))+n+3` -/
def P4904116970508101891.Spec : Prop :=
  ∀ n, P4904116970508101891.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P5736487437697466416

`A275202(n+3)-A006165(A006165(n+3))`
-/

namespace A088720.P5736487437697466416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 3) - A006165 (A006165 (n + 3)).toNat

end

end A088720.P5736487437697466416

namespace A088720

/-- `A275202(n+3)-A006165(A006165(n+3))` -/
def P5736487437697466416.Spec : Prop :=
  ∀ n, P5736487437697466416.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P15095249580393069882

`eq[3, (A214214(n)-4)%4]`
-/

namespace A088720.P15095249580393069882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214214 n - 4) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088720.P15095249580393069882

namespace A088720

/-- `eq[3, (A214214(n)-4)%4]` -/
def P15095249580393069882.Spec : Prop :=
  ∀ n, (P15095249580393069882.a n : ℤ) = A088720 (n + 3)

end A088720

/-! ## A088720.P14337086757372991911

`lt[2, val(A294456(n+2), 2)+2]+2`
-/

namespace A088720.P14337086757372991911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294456 (n + 2)).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A088720.P14337086757372991911

namespace A088720

/-- `lt[2, val(A294456(n+2), 2)+2]+2` -/
def P14337086757372991911.Spec : Prop :=
  ∀ n, (P14337086757372991911.a n : ℤ) = A088720 (n + 3)

end A088720

/-! ## A088720.P8048689719006949105

`lt[A151800(and(n, 2*(n-1))+1), A065262(n+1)]`
-/

namespace A088720.P8048689719006949105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land (n : ℤ) (2 * ((n : ℤ) - 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088720.P8048689719006949105

namespace A088720

/-- `lt[A151800(and(n, 2*(n-1))+1), A065262(n+1)]` -/
def P8048689719006949105.Spec : Prop :=
  ∀ n, (P8048689719006949105.a n : ℤ) = A088720 (n + 3)

end A088720

/-! ## A088720.P9256845719290499766

`A060973(A060973(A007378(n+3)))+n+3`
-/

namespace A088720.P9256845719290499766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A060973 (A007378 (n + 3)).toNat).toNat + (n + 3 : ℤ)

end

end A088720.P9256845719290499766

namespace A088720

/-- `A060973(A060973(A007378(n+3)))+n+3` -/
def P9256845719290499766.Spec : Prop :=
  ∀ n, P9256845719290499766.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P18418053567696409126

`A060973(A060973(A079905(n+3)))+n+3`
-/

namespace A088720.P18418053567696409126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A060973 (A079905 (n + 3)).toNat).toNat + (n + 3 : ℤ)

end

end A088720.P18418053567696409126

namespace A088720

/-- `A060973(A060973(A079905(n+3)))+n+3` -/
def P18418053567696409126.Spec : Prop :=
  ∀ n, P18418053567696409126.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P16326212523187260787

`A060973(A060973(A080637(n+3)))+n+3`
-/

namespace A088720.P16326212523187260787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A060973 (A080637 (n + 3)).toNat).toNat + (n + 3 : ℤ)

end

end A088720.P16326212523187260787

namespace A088720

/-- `A060973(A060973(A080637(n+3)))+n+3` -/
def P16326212523187260787.Spec : Prop :=
  ∀ n, P16326212523187260787.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P10998054159118033597

`A275202(A275202(n+3))/2`
-/

namespace A088720.P10998054159118033597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275202 (A275202 (n + 3)).toNat : ℚ) / 2

end

end A088720.P10998054159118033597

namespace A088720

/-- `A275202(A275202(n+3))/2` -/
def P10998054159118033597.Spec : Prop :=
  ∀ n, P10998054159118033597.a n = (A088720 (n + 3) : ℚ)

end A088720

/-! ## A088720.P1284486257885416955

`round(A159615(A159615(n+2))/2)`
-/

namespace A088720.P1284486257885416955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159615 (A159615 (n + 2)).toNat : ℚ) / 2)

end

end A088720.P1284486257885416955

namespace A088720

/-- `round(A159615(A159615(n+2))/2)` -/
def P1284486257885416955.Spec : Prop :=
  ∀ n, P1284486257885416955.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P677606327297365026

`A249036(2*n+5)`
-/

namespace A088720.P677606327297365026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249036 (2 * n + 5)

end

end A088720.P677606327297365026

namespace A088720

/-- `A249036(2*n+5)` -/
def P677606327297365026.Spec : Prop :=
  ∀ n, P677606327297365026.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P11063984591024150368

`eq[A214212(n), A214212(A266794(n)+2)]`
-/

namespace A088720.P11063984591024150368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 (A266794 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088720.P11063984591024150368

namespace A088720

/-- `eq[A214212(n), A214212(A266794(n)+2)]` -/
def P11063984591024150368.Spec : Prop :=
  ∀ n, (P11063984591024150368.a n : ℤ) = A088720 (n + 3)

end A088720

/-! ## A088720.P3071597984191096150

`A115384(A159615(A159615(n+2)))`
-/

namespace A088720.P3071597984191096150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A159615 (A159615 (n + 2)).toNat).toNat

end

end A088720.P3071597984191096150

namespace A088720

/-- `A115384(A159615(A159615(n+2)))` -/
def P3071597984191096150.Spec : Prop :=
  ∀ n, P3071597984191096150.a n = A088720 (n + 3)

end A088720

/-! ## A088720.P16990478694736428204

`lt[A000265(n+1), A245812(n)]+1`
-/

namespace A088720.P16990478694736428204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A088720.P16990478694736428204

namespace A088720

/-- `lt[A000265(n+1), A245812(n)]+1` -/
def P16990478694736428204.Spec : Prop :=
  ∀ n, (P16990478694736428204.a n : ℤ) = A088720 (n + 3)

end A088720

/-!
# A088721: Unique monotone sequence satisfying a(a(a(a(n)))) = 2n.

The programs for A088721, there is no canonical definition to state claims against.
-/

/-! ## A088721.P10050778175358771079

`record[n-A072376(a(n-1))]` with `a(0)=5, a(1)=1, a(2)=4`
-/

namespace A088721.P10050778175358771079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 4] fun n f1 =>
  (n : ℤ) - A072376 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088721.P10050778175358771079

/-! ## A088721.P11629508507018459829

`A060973(A060973(n+4))+4+n`
-/

namespace A088721.P11629508507018459829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A060973 (n + 4)).toNat + 4 + (n : ℤ)

end

end A088721.P11629508507018459829

/-! ## A088721.P12172383770543280704

`A166079(A166079(n+5))+3+n`
-/

namespace A088721.P12172383770543280704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (A166079 (n + 5)).toNat + 3 + (n : ℤ)

end

end A088721.P12172383770543280704

/-! ## A088721.P11780315134927258657

`A277267(A277267(n+3))+5+n`
-/

namespace A088721.P11780315134927258657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (A277267 (n + 3)).toNat + 5 + (n : ℤ)

end

end A088721.P11780315134927258657

/-! ## A088721.P13169470799059734430

`lt[A006165(A006165(n+1))%2, 1]+1`
-/

namespace A088721.P13169470799059734430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006165 (A006165 (n + 1)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088721.P13169470799059734430

/-! ## A088721.P4937597469343889806

`eq[2, A020639(A006165(A006165(n+1)))]+1`
-/

namespace A088721.P4937597469343889806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006165 (A006165 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088721.P4937597469343889806

/-! ## A088721.P6107318097390906686

`record[(n+1)%xor(a(n-1), A196546(n+1))]` with `a(0)=5`
-/

namespace A088721.P6107318097390906686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  Int.tmod (n + 1 : ℤ) (Int.xor (f1 (n - 1)) (A196546 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088721.P6107318097390906686

/-!
# A088722: Number of divisors d>1 of n such that d+1 also divides n.

The programs for A088722, the canonical program `A088722.P5735559043475420597` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088722 has offset 1).

The definition of A088722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088722.P6212725066136622850

`floor(log(cosh(A129308(n+1))))`
-/

namespace A088722.P6212725066136622850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A129308 (n + 1) : ℝ))⌋

end

end A088722.P6212725066136622850

namespace A088722

/-- `floor(log(cosh(A129308(n+1))))` -/
def P6212725066136622850.Spec : Prop :=
  ∀ n, P6212725066136622850.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P5735559043475420597

`A007862(gcd(xor(1, -n), ∑[n]))-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088722

/-- `A007862(gcd(xor(1, -n), ∑[n]))-1` -/
def P5735559043475420597.Spec : Prop :=
  ∀ n, P5735559043475420597.a n = A088722 (n + 1)

theorem P5735559043475420597.correct : P5735559043475420597.Spec := by
  intro n
  simp only [A088722, Nat.add_sub_cancel]

end A088722

/-! ## A088722.P17835160660103756214

`round(log(cosh(A129308(2*n+1-n))))`
-/

namespace A088722.P17835160660103756214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (A129308 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℝ)))

end

end A088722.P17835160660103756214

namespace A088722

/-- `round(log(cosh(A129308(2*n+1-n))))` -/
def P17835160660103756214.Spec : Prop :=
  ∀ n, P17835160660103756214.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P5498689456930588313

`A325334(A152271(n))`
-/

namespace A088722.P5498689456930588313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (A152271 n).toNat

end

end A088722.P5498689456930588313

namespace A088722

/-- `A325334(A152271(n))` -/
def P5498689456930588313.Spec : Prop :=
  ∀ n, P5498689456930588313.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P13020842202326524798

`A325334(∑[A001057(n)])`
-/

namespace A088722.P13020842202326524798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088722.P13020842202326524798

namespace A088722

/-- `A325334(∑[A001057(n)])` -/
def P13020842202326524798.Spec : Prop :=
  ∀ n, P13020842202326524798.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P4322056759041799763

`A004197(A337362(n+1))`
-/

namespace A088722.P4322056759041799763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A337362 (n + 1)).toNat

end

end A088722.P4322056759041799763

namespace A088722

/-- `A004197(A337362(n+1))` -/
def P4322056759041799763.Spec : Prop :=
  ∀ n, P4322056759041799763.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P8884726668251910452

`A004197(A337363(n+1))`
-/

namespace A088722.P8884726668251910452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A337363 (n + 1)).toNat

end

end A088722.P8884726668251910452

namespace A088722

/-- `A004197(A337363(n+1))` -/
def P8884726668251910452.Spec : Prop :=
  ∀ n, P8884726668251910452.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P4049943564380642779

`A129308(A093178(n)+1)-1`
-/

namespace A088722.P4049943564380642779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A093178 n + 1).toNat - 1

end

end A088722.P4049943564380642779

namespace A088722

/-- `A129308(A093178(n)+1)-1` -/
def P4049943564380642779.Spec : Prop :=
  ∀ n, P4049943564380642779.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P7607256184173794411

`A129308(n+1)-A000035(n)`
-/

namespace A088722.P7607256184173794411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) - A000035 n

end

end A088722.P7607256184173794411

namespace A088722

/-- `A129308(n+1)-A000035(n)` -/
def P7607256184173794411.Spec : Prop :=
  ∀ n, P7607256184173794411.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P7228779333551721190

`A195155(n+1)-A000034(n)`
-/

namespace A088722.P7228779333551721190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (n + 1) - A000034 n

end

end A088722.P7228779333551721190

namespace A088722

/-- `A195155(n+1)-A000034(n)` -/
def P7228779333551721190.Spec : Prop :=
  ∀ n, P7228779333551721190.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P14347154043849087059

`A129308(n+1)+A059841(n)-1`
-/

namespace A088722.P14347154043849087059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) + (A059841 n - 1)

end

end A088722.P14347154043849087059

namespace A088722

/-- `A129308(n+1)+A059841(n)-1` -/
def P14347154043849087059.Spec : Prop :=
  ∀ n, P14347154043849087059.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P4993541642636733544

`A076984(n+1)-A137921(n+1)`
-/

namespace A088722.P4993541642636733544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A137921 (n + 1)

end

end A088722.P4993541642636733544

namespace A088722

/-- `A076984(n+1)-A137921(n+1)` -/
def P4993541642636733544.Spec : Prop :=
  ∀ n, P4993541642636733544.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P10943930007243630900

`A023645(n+1)-A195150(n+1)`
-/

namespace A088722.P10943930007243630900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - A195150 (n + 1)

end

end A088722.P10943930007243630900

namespace A088722

/-- `A023645(n+1)-A195150(n+1)` -/
def P10943930007243630900.Spec : Prop :=
  ∀ n, P10943930007243630900.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P15540912115998728708

`A129308(n+1)-A129308(A006519(n+1))`
-/

namespace A088722.P15540912115998728708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) - A129308 (A006519 (n + 1)).toNat

end

end A088722.P15540912115998728708

namespace A088722

/-- `A129308(n+1)-A129308(A006519(n+1))` -/
def P15540912115998728708.Spec : Prop :=
  ∀ n, P15540912115998728708.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P16312821756493805690

`A129308(n+1)-A129308(A020639(n+1))`
-/

namespace A088722.P16312821756493805690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) - A129308 (A020639 (n + 1)).toNat

end

end A088722.P16312821756493805690

namespace A088722

/-- `A129308(n+1)-A129308(A020639(n+1))` -/
def P16312821756493805690.Spec : Prop :=
  ∀ n, P16312821756493805690.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P9884860575944087276

`A129308(n+1)-A129308(A053590(n+1)+2)`
-/

namespace A088722.P9884860575944087276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) - A129308 (A053590 (n + 1) + 2).toNat

end

end A088722.P9884860575944087276

namespace A088722

/-- `A129308(n+1)-A129308(A053590(n+1)+2)` -/
def P9884860575944087276.Spec : Prop :=
  ∀ n, P9884860575944087276.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P8326072321284674799

`A014681(2*A129308(n+1))-A129308(n+1)`
-/

namespace A088722.P8326072321284674799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A129308 (n + 1)).toNat - A129308 (n + 1)

end

end A088722.P8326072321284674799

namespace A088722

/-- `A014681(2*A129308(n+1))-A129308(n+1)` -/
def P8326072321284674799.Spec : Prop :=
  ∀ n, P8326072321284674799.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P18094694539524072799

`A325334(A142150(n+1))`
-/

namespace A088722.P18094694539524072799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (A142150 (n + 1)).toNat

end

end A088722.P18094694539524072799

namespace A088722

/-- `A325334(A142150(n+1))` -/
def P18094694539524072799.Spec : Prop :=
  ∀ n, P18094694539524072799.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P7311575091869750607

`A325334(A166514(n+1))`
-/

namespace A088722.P7311575091869750607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (A166514 (n + 1)).toNat

end

end A088722.P7311575091869750607

namespace A088722

/-- `A325334(A166514(n+1))` -/
def P7311575091869750607.Spec : Prop :=
  ∀ n, P7311575091869750607.a n = A088722 (n + 1)

end A088722

/-! ## A088722.P13887236680598784691

`A129308(n+1)-C(A129308(n+1), A129308(n+2))`
-/

namespace A088722.P13887236680598784691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) - (Nat.choose (A129308 (n + 1)).toNat (A129308 (n + 2)).toNat : ℤ)

end

end A088722.P13887236680598784691

namespace A088722

/-- `A129308(n+1)-C(A129308(n+1), A129308(n+2))` -/
def P13887236680598784691.Spec : Prop :=
  ∀ n, P13887236680598784691.a n = A088722 (n + 1)

end A088722

/-!
# A088723: Numbers k with at least one divisor d>1 such that d+1 also divides k.

The programs for A088723, the canonical program `A088723.P15091544922327729321` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088723 has offset 1).

The definition of A088723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088723.P1268328430461740085

`2*A113502(n+1)`
-/

namespace A088723.P1268328430461740085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113502 (n + 1)

end

end A088723.P1268328430461740085

namespace A088723

/-- `2*A113502(n+1)` -/
def P1268328430461740085.Spec : Prop :=
  ∀ n, P1268328430461740085.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P15091544922327729321

`2*lt[0, A325334(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088723

/-- `2*lt[0, A325334(n)]` -/
def P15091544922327729321.Spec : Prop :=
  ∀ n, (P15091544922327729321.a n : ℤ) = A088723 (n + 1)

theorem P15091544922327729321.correct : P15091544922327729321.Spec := by
  intro n
  simp only [A088723, Nat.add_sub_cancel]

end A088723

/-! ## A088723.P2153712099929717896

`2*(A275340(n+1)-1)`
-/

namespace A088723.P2153712099929717896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275340 (n + 1) - 1)

end

end A088723.P2153712099929717896

namespace A088723

/-- `2*(A275340(n+1)-1)` -/
def P2153712099929717896.Spec : Prop :=
  ∀ n, P2153712099929717896.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P17580398092758783212

`lt[1, A328458(n+1)]+1`
-/

namespace A088723.P17580398092758783212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088723.P17580398092758783212

namespace A088723

/-- `lt[1, A328458(n+1)]+1` -/
def P17580398092758783212.Spec : Prop :=
  ∀ n, (P17580398092758783212.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P2928656195417416345

`lt[A360128(n+1), 1]+1`
-/

namespace A088723.P2928656195417416345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360128 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088723.P2928656195417416345

namespace A088723

/-- `lt[A360128(n+1), 1]+1` -/
def P2928656195417416345.Spec : Prop :=
  ∀ n, (P2928656195417416345.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P13123698243100757351

`A113502(A000027(n+1))+A113502(n+1)`
-/

namespace A088723.P13123698243100757351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (A000027 (n + 1)).toNat + A113502 (n + 1)

end

end A088723.P13123698243100757351

namespace A088723

/-- `A113502(A000027(n+1))+A113502(n+1)` -/
def P13123698243100757351.Spec : Prop :=
  ∀ n, P13123698243100757351.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P17202353195821192121

`A113502(A020725(n+1)-1)+A113502(n+1)`
-/

namespace A088723.P17202353195821192121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (A020725 (n + 1) - 1).toNat + A113502 (n + 1)

end

end A088723.P17202353195821192121

namespace A088723

/-- `A113502(A020725(n+1)-1)+A113502(n+1)` -/
def P17202353195821192121.Spec : Prop :=
  ∀ n, P17202353195821192121.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P17481928071143492764

`A113502(n+1)+A113502(n+1)%A062703(n+1)`
-/

namespace A088723.P17481928071143492764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + Int.tmod (A113502 (n + 1)) (A062703 (n + 1))

end

end A088723.P17481928071143492764

namespace A088723

/-- `A113502(n+1)+A113502(n+1)%A062703(n+1)` -/
def P17481928071143492764.Spec : Prop :=
  ∀ n, P17481928071143492764.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P15372349154516139640

`A113502(n+1)+A113502((n+1)%A080194(n+1))`
-/

namespace A088723.P15372349154516139640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + A113502 (Int.tmod (n + 1 : ℤ) (A080194 (n + 1))).toNat

end

end A088723.P15372349154516139640

namespace A088723

/-- `A113502(n+1)+A113502((n+1)%A080194(n+1))` -/
def P15372349154516139640.Spec : Prop :=
  ∀ n, P15372349154516139640.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P2431540337670534577

`2*lt[1, A294334(n)]`
-/

namespace A088723.P2431540337670534577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088723.P2431540337670534577

namespace A088723

/-- `2*lt[1, A294334(n)]` -/
def P2431540337670534577.Spec : Prop :=
  ∀ n, (P2431540337670534577.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P2982400357764127972

`lt[3, A132748(n+1)]+1`
-/

namespace A088723.P2982400357764127972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088723.P2982400357764127972

namespace A088723

/-- `lt[3, A132748(n+1)]+1` -/
def P2982400357764127972.Spec : Prop :=
  ∀ n, (P2982400357764127972.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P7858985725050407465

`2*(lt[1, A007862(n+1)]+1)`
-/

namespace A088723.P7858985725050407465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A088723.P7858985725050407465

namespace A088723

/-- `2*(lt[1, A007862(n+1)]+1)` -/
def P7858985725050407465.Spec : Prop :=
  ∀ n, (P7858985725050407465.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P5205400338046078346

`A004277(A113502(n+1))`
-/

namespace A088723.P5205400338046078346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A113502 (n + 1)).toNat

end

end A088723.P5205400338046078346

namespace A088723

/-- `A004277(A113502(n+1))` -/
def P5205400338046078346.Spec : Prop :=
  ∀ n, P5205400338046078346.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P18052731770940343997

`A113502(n+1)+lt[1, A007862(n+1)]+1`
-/

namespace A088723.P18052731770940343997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A088723.P18052731770940343997

namespace A088723

/-- `A113502(n+1)+lt[1, A007862(n+1)]+1` -/
def P18052731770940343997.Spec : Prop :=
  ∀ n, P18052731770940343997.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P15064911246388728807

`A004275(A275340(n+1))`
-/

namespace A088723.P15064911246388728807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A275340 (n + 1)).toNat

end

end A088723.P15064911246388728807

namespace A088723

/-- `A004275(A275340(n+1))` -/
def P15064911246388728807.Spec : Prop :=
  ∀ n, P15064911246388728807.a n = A088723 (n + 1)

end A088723

/-! ## A088723.P4723046895506229796

`lt[1, A133565(n+1)]`
-/

namespace A088723.P4723046895506229796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088723.P4723046895506229796

namespace A088723

/-- `lt[1, A133565(n+1)]` -/
def P4723046895506229796.Spec : Prop :=
  ∀ n, (P4723046895506229796.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P3093150496423244426

`lt[1, A129308(n+1)]+1`
-/

namespace A088723.P3093150496423244426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088723.P3093150496423244426

namespace A088723

/-- `lt[1, A129308(n+1)]+1` -/
def P3093150496423244426.Spec : Prop :=
  ∀ n, (P3093150496423244426.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P2201408206922394764

`lt[2, A132747(n+1)]+1`
-/

namespace A088723.P2201408206922394764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088723.P2201408206922394764

namespace A088723

/-- `lt[2, A132747(n+1)]+1` -/
def P2201408206922394764.Spec : Prop :=
  ∀ n, (P2201408206922394764.a n : ℤ) = A088723 (n + 1)

end A088723

/-! ## A088723.P1106146613128429496

`lt[2, A195155(n+1)]+1`
-/

namespace A088723.P1106146613128429496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088723.P1106146613128429496

namespace A088723

/-- `lt[2, A195155(n+1)]+1` -/
def P1106146613128429496.Spec : Prop :=
  ∀ n, (P1106146613128429496.a n : ℤ) = A088723 (n + 1)

end A088723

/-!
# A088724: Numbers having exactly one divisor d>1 such that also d+1 is a divisor.

The programs for A088724, the canonical program `A088724.P9000162378839682268` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088724 has offset 1).

The definition of A088724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088724.P11006229122300236574

`2*eq[1, A325334(n)]`
-/

namespace A088724.P11006229122300236574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088724.P11006229122300236574

namespace A088724

/-- `2*eq[1, A325334(n)]` -/
def P11006229122300236574.Spec : Prop :=
  ∀ n, (P11006229122300236574.a n : ℤ) = A088724 (n + 1)

end A088724

/-! ## A088724.P9000162378839682268

`2*(eq[2, A007862(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088724

/-- `2*(eq[2, A007862(n+1)]+1)` -/
def P9000162378839682268.Spec : Prop :=
  ∀ n, (P9000162378839682268.a n : ℤ) = A088724 (n + 1)

theorem P9000162378839682268.correct : P9000162378839682268.Spec := by
  intro n
  simp only [A088724, Nat.add_sub_cancel]

end A088724

/-! ## A088724.P12735406140583801751

`A103517(eq[2, A007862(n+1)])`
-/

namespace A088724.P12735406140583801751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088724.P12735406140583801751

namespace A088724

/-- `A103517(eq[2, A007862(n+1)])` -/
def P12735406140583801751.Spec : Prop :=
  ∀ n, P12735406140583801751.a n = A088724 (n + 1)

end A088724

/-! ## A088724.P14104953587169981139

`eq[1, A088722(n+1)]+1`
-/

namespace A088724.P14104953587169981139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088724.P14104953587169981139

namespace A088724

/-- `eq[1, A088722(n+1)]+1` -/
def P14104953587169981139.Spec : Prop :=
  ∀ n, (P14104953587169981139.a n : ℤ) = A088724 (n + 1)

end A088724

/-! ## A088724.P11140495134389797350

`eq[2, A129308(n+1)]+1`
-/

namespace A088724.P11140495134389797350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088724.P11140495134389797350

namespace A088724

/-- `eq[2, A129308(n+1)]+1` -/
def P11140495134389797350.Spec : Prop :=
  ∀ n, (P11140495134389797350.a n : ℤ) = A088724 (n + 1)

end A088724

/-! ## A088724.P9727097111798850106

`eq[2, A129308(A028310(n))]`
-/

namespace A088724.P9727097111798850106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088724.P9727097111798850106

namespace A088724

/-- `eq[2, A129308(A028310(n))]` -/
def P9727097111798850106.Spec : Prop :=
  ∀ n, (P9727097111798850106.a n : ℤ) = A088724 (n + 1)

end A088724

/-! ## A088724.P11637582631973254561

`A014681(eq[2, A129308(n+1)])`
-/

namespace A088724.P11637582631973254561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088724.P11637582631973254561

namespace A088724

/-- `A014681(eq[2, A129308(n+1)])` -/
def P11637582631973254561.Spec : Prop :=
  ∀ n, P11637582631973254561.a n = A088724 (n + 1)

end A088724

/-! ## A088724.P1546765666782024721

`2*eq[1, A088722(A004277(n))]`
-/

namespace A088724.P1546765666782024721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088724.P1546765666782024721

namespace A088724

/-- `2*eq[1, A088722(A004277(n))]` -/
def P1546765666782024721.Spec : Prop :=
  ∀ n, (P1546765666782024721.a n : ℤ) = A088724 (n + 1)

end A088724

/-! ## A088724.P12909866205754224538

`eq[1, A088722(A004277(n)-n)]`
-/

namespace A088724.P12909866205754224538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088724.P12909866205754224538

namespace A088724

/-- `eq[1, A088722(A004277(n)-n)]` -/
def P12909866205754224538.Spec : Prop :=
  ∀ n, (P12909866205754224538.a n : ℤ) = A088724 (n + 1)

end A088724

/-! ## A088724.P18355331732676873823

`record[A088723(n+1)/A088722(A088723(n+1))]`
-/

namespace A088724.P18355331732676873823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088723 (n + 1) : ℚ) / (A088722 (A088723 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088724.P18355331732676873823

namespace A088724

/-- `record[A088723(n+1)/A088722(A088723(n+1))]` -/
def P18355331732676873823.Spec : Prop :=
  ∀ n, P18355331732676873823.a n = (A088724 (n + 1) : ℚ)

end A088724

/-! ## A088724.P11585022996281571352

`eq[2*A019428(n), A007862(A065033(n))]`
-/

namespace A088724.P11585022996281571352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088724.P11585022996281571352

namespace A088724

/-- `eq[2*A019428(n), A007862(A065033(n))]` -/
def P11585022996281571352.Spec : Prop :=
  ∀ n, (P11585022996281571352.a n : ℤ) = A088724 (n + 1)

end A088724

/-!
# A088725: Numbers having no divisors d>1 such that also d+1 is a divisor.

The programs for A088725, there is no canonical definition to state claims against.
-/

/-! ## A088725.P10800816174705866139

`filter[n+1, A360128(#)]`
-/

namespace A088725.P10800816174705866139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j) = 1) n)

end

end A088725.P10800816174705866139

/-! ## A088725.P5091476572361044377

`eq[4, a(A088722(n))²]` with `a(0)=2`
-/

namespace A088725.P5091476572361044377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A088722 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088725.P5091476572361044377

/-! ## A088725.P13523390212316788533

`comp[lcm(2*n, A325334(n))]`
-/

namespace A088725.P13523390212316788533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (A325334 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088725.P13523390212316788533

/-! ## A088725.P9182172554867270836

`lt[A133565(n+1), atan(n)]`
-/

namespace A088725.P9182172554867270836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A088725.P9182172554867270836

/-! ## A088725.P18411058178646763302

`eq[0, A088722(n+1)]+1`
-/

namespace A088725.P18411058178646763302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088725.P18411058178646763302

/-! ## A088725.P5092673450189158323

`eq[1, A360119(n+1)]+1`
-/

namespace A088725.P5092673450189158323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088725.P5092673450189158323

/-! ## A088725.P17820423498261553399

`lt[A129308(n+1), 2]+1`
-/

namespace A088725.P17820423498261553399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088725.P17820423498261553399

/-! ## A088725.P13448691799718822982

`lt[A328458(n+1), 2]+1`
-/

namespace A088725.P13448691799718822982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088725.P13448691799718822982

/-! ## A088725.P8737287493703746847

`∪[2*n+1, A132895(n+1)]`
-/

namespace A088725.P8737287493703746847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088725.P8737287493703746847

/-! ## A088725.P1876425457575838916

`eq[2, A000032(a(A088722(n)))]` with `a(0)=0`
-/

namespace A088725.P1876425457575838916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A088722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088725.P1876425457575838916

/-!
# A088726: Smallest numbers having exactly n divisors d>1 such that also d+1 is a divisor.

The programs for A088726, there is no canonical definition to state claims against.
-/

/-! ## A088726.P269071283260855737

`ceil(cosh(sin(n)))*A130317(n+1)`
-/

namespace A088726.P269071283260855737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A130317 (n + 1)

end

end A088726.P269071283260855737

/-! ## A088726.P4009101341042757995

`A000122(n²)*A130317(n+1)`
-/

namespace A088726.P4009101341042757995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A130317 (n + 1)

end

end A088726.P4009101341042757995

/-! ## A088726.P12134478591582501564

`A036452(n+1)*A130317(n+1)`
-/

namespace A088726.P12134478591582501564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A130317 (n + 1)

end

end A088726.P12134478591582501564

/-! ## A088726.P10606560243292306784

`A036453(n+1)*A130317(n+1)`
-/

namespace A088726.P10606560243292306784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A130317 (n + 1)

end

end A088726.P10606560243292306784

/-! ## A088726.P16649759135870901994

`A000032(C(2, n+2))*A130317(n+1)`
-/

namespace A088726.P16649759135870901994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A130317 (n + 1)

end

end A088726.P16649759135870901994

/-! ## A088726.P7476325817409949223

`A020639(∏{p}[2*n, #])*A130317(n+1)`
-/

namespace A088726.P7476325817409949223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A130317 (n + 1)

end

end A088726.P7476325817409949223

/-! ## A088726.P2589494704154161084

`A020639(A000118(n))*A130317(n+1)`
-/

namespace A088726.P2589494704154161084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A130317 (n + 1)

end

end A088726.P2589494704154161084

/-! ## A088726.P15740382780956609431

`A020639(A000123(n))*A130317(n+1)`
-/

namespace A088726.P15740382780956609431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000123 n).toNat * A130317 (n + 1)

end

end A088726.P15740382780956609431

/-! ## A088726.P458678420625387691

`A000005(A020639(n+1))*A130317(n+1)`
-/

namespace A088726.P458678420625387691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020639 (n + 1)).toNat * A130317 (n + 1)

end

end A088726.P458678420625387691

/-!
# A088729: Matrix product of Stirling2-triangle A008277(n,k) and unsigned Lah-triangle |A008297(n,k)|.

The programs for A088729, there is no canonical definition to state claims against.
-/

/-! ## A088729.P16473430260942921476

`A256893(comp[∑[n]])`
-/

namespace A088729.P16473430260942921476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088729.P16473430260942921476

/-! ## A088729.P5714198199861477782

`and(-1, A256893(comp[C(n, 2)-1]+1))`
-/

namespace A088729.P5714198199861477782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A256893 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1))

end

end A088729.P5714198199861477782

/-! ## A088729.P13228654684726230747

`or(char[1], A256893(A014132(n+1)))`
-/

namespace A088729.P13228654684726230747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A256893 (A014132 (n + 1)).toNat)

end

end A088729.P13228654684726230747

/-! ## A088729.P18177532699558290733

`A256893(A014132(n+1))+A000007(3*n+4)`
-/

namespace A088729.P18177532699558290733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 (A014132 (n + 1)).toNat + A000007 (3 * n + 4)

end

end A088729.P18177532699558290733

/-! ## A088729.P16218387981367339245

`A256893(A014132(n+1))^A089026(2*(n+2))`
-/

namespace A088729.P16218387981367339245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256893 (A014132 (n + 1)).toNat : ℚ) ^ (A089026 (2 * (n + 2)) : ℤ)

end

end A088729.P16218387981367339245

/-!
# A088730: Numbers of the form p^p - 1, where p is a prime.

The programs for A088730, the canonical program `A088730.P2735196930794356321` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088730 has offset 1).

The definition of A088730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088730.P2735196930794356321

`A051674(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088730

/-- `A051674(n+1)-1` -/
def P2735196930794356321.Spec : Prop :=
  ∀ n, P2735196930794356321.a n = A088730 (n + 1)

theorem P2735196930794356321.correct : P2735196930794356321.Spec := by
  intro n
  simp only [A088730, Nat.add_sub_cancel]

end A088730

/-! ## A088730.P6762564311721765995

`record[∑{p}[n+2, #^#-1]]`
-/

namespace A088730.P6762564311721765995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p ^ p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088730.P6762564311721765995

namespace A088730

/-- `record[∑{p}[n+2, #^#-1]]` -/
def P6762564311721765995.Spec : Prop :=
  ∀ n, P6762564311721765995.a n = A088730 (n + 1)

end A088730

/-! ## A088730.P9964766157135735750

`p?[comp[n²]]^p?[comp[n²]]-1`
-/

namespace A088730.P9964766157135735750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

end

end A088730.P9964766157135735750

namespace A088730

/-- `p?[comp[n²]]^p?[comp[n²]]-1` -/
def P9964766157135735750.Spec : Prop :=
  ∀ n, P9964766157135735750.a n = A088730 (n + 1)

end A088730

/-! ## A088730.P5702612198790245085

`A088816(n+1)+1`
-/

namespace A088730.P5702612198790245085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088816 (n + 1) + 1

end

end A088730.P5702612198790245085

namespace A088730

/-- `A088816(n+1)+1` -/
def P5702612198790245085.Spec : Prop :=
  ∀ n, P5702612198790245085.a n = A088730 (n + 1)

end A088730

/-! ## A088730.P18139936768042761594

`record[abs(A307654(n+2))]`
-/

namespace A088730.P18139936768042761594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307654 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088730.P18139936768042761594

namespace A088730

/-- `record[abs(A307654(n+2))]` -/
def P18139936768042761594.Spec : Prop :=
  ∀ n, P18139936768042761594.a n = A088730 (n + 1)

end A088730

/-!
# A088731: Numbers of the form p^p - 3 where p is prime.

The programs for A088731, there is no canonical definition to state claims against.
-/

/-! ## A088731.P9735319326461275775

`record[∏{p}[n, #^#-3]]`
-/

namespace A088731.P9735319326461275775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p ^ p : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088731.P9735319326461275775

/-! ## A088731.P10178619166709054303

`record[∑{p}[n+2, #^#-3]]`
-/

namespace A088731.P10178619166709054303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p ^ p : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088731.P10178619166709054303

/-! ## A088731.P4203081716447256227

`A088816(n+1)-1`
-/

namespace A088731.P4203081716447256227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088816 (n + 1) - 1

end

end A088731.P4203081716447256227

/-! ## A088731.P17561614218839555638

`A051674(n+1)-3`
-/

namespace A088731.P17561614218839555638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - 3

end

end A088731.P17561614218839555638

/-! ## A088731.P5610156208641396325

`A048861(A000040(n+1))-2`
-/

namespace A088731.P5610156208641396325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (A000040 (n + 1)).toNat - 2

end

end A088731.P5610156208641396325

/-!
# A088732: First prime in the arithmetic progression n+k*(n+1) with k>0.

The programs for A088732, there is no canonical definition to state claims against.
-/

/-! ## A088732.P4709098388255689195

`A060940(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A088732.P4709098388255689195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088732.P4709098388255689195

/-! ## A088732.P14718464242122586458

`A060940(Δ[A005598(n)])`
-/

namespace A088732.P14718464242122586458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (f1 (n + 1) - f1 n).toNat

end

end A088732.P14718464242122586458

/-! ## A088732.P4091959176287119762

`A060940(Δ[A103116(n)])`
-/

namespace A088732.P4091959176287119762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (f1 (n + 1) - f1 n).toNat

end

end A088732.P4091959176287119762

/-! ## A088732.P14693206346659194440

`A060940(A002088(n+1))`
-/

namespace A088732.P14693206346659194440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A002088 (n + 1)).toNat

end

end A088732.P14693206346659194440

/-! ## A088732.P16809965311728828039

`A060940(A092249(n+1))`
-/

namespace A088732.P16809965311728828039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A092249 (n + 1)).toNat

end

end A088732.P16809965311728828039

/-! ## A088732.P9938111614197862089

`A060940(∑[A000010(n+1)])`
-/

namespace A088732.P9938111614197862089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088732.P9938111614197862089

/-! ## A088732.P12172780795415261311

`A060940(A015614(n+1)+1)`
-/

namespace A088732.P12172780795415261311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A015614 (n + 1) + 1).toNat

end

end A088732.P12172780795415261311

/-! ## A088732.P17547277344866018694

`A060940(A005728(n+1)-1)`
-/

namespace A088732.P17547277344866018694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A005728 (n + 1) - 1).toNat

end

end A088732.P17547277344866018694

/-! ## A088732.P119029021741357124

`A060940(A225531(n+1)-2)`
-/

namespace A088732.P119029021741357124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A225531 (n + 1) - 2).toNat

end

end A088732.P119029021741357124

/-! ## A088732.P11460050370296271313

`A060940(A206350(n+2)/2)`
-/

namespace A088732.P11460050370296271313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (SequenceMachineLib.roundAway ((A206350 (n + 2) : ℚ) / 2)).toNat

end

end A088732.P11460050370296271313

/-! ## A088732.P14444304852204990023

`A060940(∑[A067541(2*n+1)])`
-/

namespace A088732.P14444304852204990023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088732.P14444304852204990023

/-! ## A088732.P18200068359016300156

`A060940(record[1-A038566(n+2)+n]+1)`
-/

namespace A088732.P18200068359016300156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038566 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A088732.P18200068359016300156

/-! ## A088732.P13265376609831113727

`A060940(record[(n*A038566(n+2))%(n+1)]+1)`
-/

namespace A088732.P13265376609831113727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A038566 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A088732.P13265376609831113727

/-! ## A088732.P11478466858627516452

`A060940(∑[∑{d}[n+1, (n+1)/#*A008683(#)]])`
-/

namespace A088732.P11478466858627516452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088732.P11478466858627516452

/-! ## A088732.P8107292035956731941

`A060940(A005598(n+1)-A005598(n))`
-/

namespace A088732.P8107292035956731941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A005598 (n + 1) - A005598 n).toNat

end

end A088732.P8107292035956731941

/-! ## A088732.P6334101748407152424

`A060940(A103116(n+1)-A103116(n))`
-/

namespace A088732.P6334101748407152424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A103116 (n + 1) - A103116 n).toNat

end

end A088732.P6334101748407152424

/-! ## A088732.P6445999451420498659

`A060940(A063088(n+1)+A006218(n+1))`
-/

namespace A088732.P6445999451420498659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A063088 (n + 1) + A006218 (n + 1)).toNat

end

end A088732.P6445999451420498659

/-! ## A088732.P8233073734572629816

`A060940(A130313(A000217(n+1)-n))`
-/

namespace A088732.P8233073734572629816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A130313 (A000217 (n + 1) - (n : ℤ)).toNat).toNat

end

end A088732.P8233073734572629816

/-!
# A088733: n-th prime in the arithmetic progression n+k*(n+1) with k>0.

The programs for A088733, there is no canonical definition to state claims against.
-/

/-! ## A088733.P17787779053281586522

`A093870(A141214(n)-A014684(n+1))`
-/

namespace A088733.P17787779053281586522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093870 (A141214 n - A014684 (n + 1)).toNat

end

end A088733.P17787779053281586522

/-! ## A088733.P10260422949997720879

`p?[A131802(A077569(n+1))-4]`
-/

namespace A088733.P10260422949997720879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (A077569 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088733.P10260422949997720879

/-!
# A088736: 10^p - p for prime p.

The programs for A088736, there is no canonical definition to state claims against.
-/

/-! ## A088736.P1506030781229172795

`record[10^A006530(n+2)-(n+2)]`
-/

namespace A088736.P1506030781229172795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A006530 (n + 2) : ℤ) - (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088736.P1506030781229172795

/-! ## A088736.P10430405477395881115

`record[10^A014963(n+2)-(n+2)]`
-/

namespace A088736.P10430405477395881115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A014963 (n + 2) : ℤ) - (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088736.P10430405477395881115

/-! ## A088736.P14259525641831918552

`record[10^A020639(n+2)-(n+2)]`
-/

namespace A088736.P14259525641831918552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A020639 (n + 2) : ℤ) - (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088736.P14259525641831918552

/-! ## A088736.P12253468175151030861

`A024115(A000040(n+1))`
-/

namespace A088736.P12253468175151030861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024115 (A000040 (n + 1)).toNat

end

end A088736.P12253468175151030861

/-!
# A088737: Number of semiprime divisors of n-th composite number.

The programs for A088737, the canonical program `A088737.P1992063766082002598` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088737 has offset 1).

The definition of A088737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088737.P2815753343971596980

`A086971(A083256(n+2))`
-/

namespace A088737.P2815753343971596980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A083256 (n + 2)).toNat

end

end A088737.P2815753343971596980

namespace A088737

/-- `A086971(A083256(n+2))` -/
def P2815753343971596980.Spec : Prop :=
  ∀ n, P2815753343971596980.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P10791644657521994200

`A086971(A083257(n+2))`
-/

namespace A088737.P10791644657521994200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A083257 (n + 2)).toNat

end

end A088737.P10791644657521994200

namespace A088737

/-- `A086971(A083257(n+2))` -/
def P10791644657521994200.Spec : Prop :=
  ∀ n, P10791644657521994200.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P1992063766082002598

`A086971(A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088737

/-- `A086971(A002808(n+1))` -/
def P1992063766082002598.Spec : Prop :=
  ∀ n, P1992063766082002598.a n = A088737 (n + 1)

theorem P1992063766082002598.correct : P1992063766082002598.Spec := by
  intro n
  simp only [A088737, Nat.add_sub_cancel]

end A088737

/-! ## A088737.P17085222146134899403

`A086971(A018252(n+2))`
-/

namespace A088737.P17085222146134899403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A018252 (n + 2)).toNat

end

end A088737.P17085222146134899403

namespace A088737

/-- `A086971(A018252(n+2))` -/
def P17085222146134899403.Spec : Prop :=
  ∀ n, P17085222146134899403.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P284382193806905786

`A086971(A065090(n+3))`
-/

namespace A088737.P284382193806905786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A065090 (n + 3)).toNat

end

end A088737.P284382193806905786

namespace A088737

/-- `A086971(A065090(n+3))` -/
def P284382193806905786.Spec : Prop :=
  ∀ n, P284382193806905786.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P12191504812085951158

`A086971(A141468(n+3))`
-/

namespace A088737.P12191504812085951158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A141468 (n + 3)).toNat

end

end A088737.P12191504812085951158

namespace A088737

/-- `A086971(A141468(n+3))` -/
def P12191504812085951158.Spec : Prop :=
  ∀ n, P12191504812085951158.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P13090943929016092284

`A086971(lt[1, A003415(n)])`
-/

namespace A088737.P13090943929016092284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088737.P13090943929016092284

namespace A088737

/-- `A086971(lt[1, A003415(n)])` -/
def P13090943929016092284.Spec : Prop :=
  ∀ n, P13090943929016092284.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P18295143719047011338

`A086971(A072668(n+1)+1)`
-/

namespace A088737.P18295143719047011338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A072668 (n + 1) + 1).toNat

end

end A088737.P18295143719047011338

namespace A088737

/-- `A086971(A072668(n+1)+1)` -/
def P18295143719047011338.Spec : Prop :=
  ∀ n, P18295143719047011338.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P4012642548168004520

`A086971(eq[1, A066247(n+1)]+1)`
-/

namespace A088737.P4012642548168004520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A088737.P4012642548168004520

namespace A088737

/-- `A086971(eq[1, A066247(n+1)]+1)` -/
def P4012642548168004520.Spec : Prop :=
  ∀ n, P4012642548168004520.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P3757645404500934573

`A086971(A073425(n+1)+n+2)`
-/

namespace A088737.P3757645404500934573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A073425 (n + 1) + (n + 2 : ℤ)).toNat

end

end A088737.P3757645404500934573

namespace A088737

/-- `A086971(A073425(n+1)+n+2)` -/
def P3757645404500934573.Spec : Prop :=
  ∀ n, P3757645404500934573.a n = A088737 (n + 1)

end A088737

/-! ## A088737.P10702724736350913991

`A086971(A129401(n+1))`
-/

namespace A088737.P10702724736350913991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A129401 (n + 1)).toNat

end

end A088737.P10702724736350913991

namespace A088737

/-- `A086971(A129401(n+1))` -/
def P10702724736350913991.Spec : Prop :=
  ∀ n, P10702724736350913991.a n = A088737 (n + 1)

end A088737

/-!
# A088738: Sum of semiprime divisors of n-th composite number.

The programs for A088738, the canonical program `A088738.P15299027887312375454` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088738 has offset 1).

The definition of A088738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088738.P15299027887312375454

`A076290(A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088738

/-- `A076290(A002808(n+1))` -/
def P15299027887312375454.Spec : Prop :=
  ∀ n, P15299027887312375454.a n = A088738 (n + 1)

theorem P15299027887312375454.correct : P15299027887312375454.Spec := by
  intro n
  simp only [A088738, Nat.add_sub_cancel]

end A088738

/-! ## A088738.P4111119815603112473

`A076290(A018252(n+2))`
-/

namespace A088738.P4111119815603112473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A018252 (n + 2)).toNat

end

end A088738.P4111119815603112473

namespace A088738

/-- `A076290(A018252(n+2))` -/
def P4111119815603112473.Spec : Prop :=
  ∀ n, P4111119815603112473.a n = A088738 (n + 1)

end A088738

/-! ## A088738.P7373423335814871401

`A076290(lt[2, A092976(n)])`
-/

namespace A088738.P7373423335814871401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088738.P7373423335814871401

namespace A088738

/-- `A076290(lt[2, A092976(n)])` -/
def P7373423335814871401.Spec : Prop :=
  ∀ n, P7373423335814871401.a n = A088738 (n + 1)

end A088738

/-! ## A088738.P13078022276490352659

`A076290(lt[2, A225244(n)])`
-/

namespace A088738.P13078022276490352659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088738.P13078022276490352659

namespace A088738

/-- `A076290(lt[2, A225244(n)])` -/
def P13078022276490352659.Spec : Prop :=
  ∀ n, P13078022276490352659.a n = A088738 (n + 1)

end A088738

/-! ## A088738.P10441011678560596610

`A076290(A072668(n+1)+1)`
-/

namespace A088738.P10441011678560596610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A072668 (n + 1) + 1).toNat

end

end A088738.P10441011678560596610

namespace A088738

/-- `A076290(A072668(n+1)+1)` -/
def P10441011678560596610.Spec : Prop :=
  ∀ n, P10441011678560596610.a n = A088738 (n + 1)

end A088738

/-! ## A088738.P652388614418245695

`A076290(A060462(n+2)+1)`
-/

namespace A088738.P652388614418245695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A060462 (n + 2) + 1).toNat

end

end A088738.P652388614418245695

namespace A088738

/-- `A076290(A060462(n+2)+1)` -/
def P652388614418245695.Spec : Prop :=
  ∀ n, P652388614418245695.a n = A088738 (n + 1)

end A088738

/-! ## A088738.P14612541412388237155

`A076290(lt[0, A076290(n+1)]+1)`
-/

namespace A088738.P14612541412388237155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A088738.P14612541412388237155

namespace A088738

/-- `A076290(lt[0, A076290(n+1)]+1)` -/
def P14612541412388237155.Spec : Prop :=
  ∀ n, P14612541412388237155.a n = A088738 (n + 1)

end A088738

/-! ## A088738.P6652911614848483037

`A076290(eq[A014963(n+1)%(n+1), A014963(n+1)]+1)`
-/

namespace A088738.P6652911614848483037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A088738.P6652911614848483037

namespace A088738

/-- `A076290(eq[A014963(n+1)%(n+1), A014963(n+1)]+1)` -/
def P6652911614848483037.Spec : Prop :=
  ∀ n, P6652911614848483037.a n = A088738 (n + 1)

end A088738

/-!
# A088739: Smallest semiprime divisor of n-th composite number.

The programs for A088739, there is no canonical definition to state claims against.
-/

/-! ## A088739.P3665054143100474398

`A020639(A160180(n+1))*A056608(n+1)`
-/

namespace A088739.P3665054143100474398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A160180 (n + 1)).toNat * A056608 (n + 1)

end

end A088739.P3665054143100474398

/-! ## A088739.P9665039072605481157

`A002808(n+1)/A054576(A002808(n+1))`
-/

namespace A088739.P9665039072605481157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A054576 (A002808 (n + 1)).toNat : ℚ)

end

end A088739.P9665039072605481157

/-! ## A088739.P14647130968795398238

`A002808(n+1)/A032742(A160180(n+1))`
-/

namespace A088739.P14647130968795398238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A032742 (A160180 (n + 1)).toNat : ℚ)

end

end A088739.P14647130968795398238

/-! ## A088739.P18031786373576962816

`A002808(n+1)/A032742(A002808(n+1)/A056608(n+1))`
-/

namespace A088739.P18031786373576962816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A032742 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) / (A056608 (n + 1) : ℚ))).toNat : ℚ)

end

end A088739.P18031786373576962816

/-! ## A088739.P16490144756733709689

`A210615(A002808(n+1))`
-/

namespace A088739.P16490144756733709689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A002808 (n + 1)).toNat

end

end A088739.P16490144756733709689

/-! ## A088739.P6036508538869343193

`A210615(A018252(n+2))`
-/

namespace A088739.P6036508538869343193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A018252 (n + 2)).toNat

end

end A088739.P6036508538869343193

/-! ## A088739.P12803035312552034506

`filter[A265110(n+1), A064911(#)]`
-/

namespace A088739.P12803035312552034506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088739.P12803035312552034506

/-! ## A088739.P8159378216887768591

`filter[A210615(n+1), A168181(#)]`
-/

namespace A088739.P8159378216887768591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A088739.P8159378216887768591

/-! ## A088739.P15716305440559915616

`filter[A210615(n+1), A168185(#)]`
-/

namespace A088739.P15716305440559915616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A088739.P15716305440559915616

/-! ## A088739.P4205563541246574128

`A210615(lt[0, A210615(n+1)]+1)`
-/

namespace A088739.P4205563541246574128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A088739.P4205563541246574128

/-!
# A088740: Greatest semiprime divisor of n-th composite number.

The programs for A088740, the canonical program `A088740.P7324939685914597604` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088740 has offset 1).

The definition of A088740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088740.P11622063677656788788

`A179312(A002808(n+1))`
-/

namespace A088740.P11622063677656788788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A002808 (n + 1)).toNat

end

end A088740.P11622063677656788788

namespace A088740

/-- `A179312(A002808(n+1))` -/
def P11622063677656788788.Spec : Prop :=
  ∀ n, P11622063677656788788.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P10059510809309546403

`A179312(A282671(n+1))`
-/

namespace A088740.P10059510809309546403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A282671 (n + 1)).toNat

end

end A088740.P10059510809309546403

namespace A088740

/-- `A179312(A282671(n+1))` -/
def P10059510809309546403.Spec : Prop :=
  ∀ n, P10059510809309546403.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P363411708607248923

`A179312(A018252(n+2))`
-/

namespace A088740.P363411708607248923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A018252 (n + 2)).toNat

end

end A088740.P363411708607248923

namespace A088740

/-- `A179312(A018252(n+2))` -/
def P363411708607248923.Spec : Prop :=
  ∀ n, P363411708607248923.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P6354824239250529069

`A179312(A139270(n+2))`
-/

namespace A088740.P6354824239250529069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A139270 (n + 2)).toNat

end

end A088740.P6354824239250529069

namespace A088740

/-- `A179312(A139270(n+2))` -/
def P6354824239250529069.Spec : Prop :=
  ∀ n, P6354824239250529069.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P11775654526048940779

`A179312(lt[2, A077462(n)])`
-/

namespace A088740.P11775654526048940779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088740.P11775654526048940779

namespace A088740

/-- `A179312(lt[2, A077462(n)])` -/
def P11775654526048940779.Spec : Prop :=
  ∀ n, P11775654526048940779.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P10393719187233347502

`A179312(A072668(n+1)+1)`
-/

namespace A088740.P10393719187233347502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A072668 (n + 1) + 1).toNat

end

end A088740.P10393719187233347502

namespace A088740

/-- `A179312(A072668(n+1)+1)` -/
def P10393719187233347502.Spec : Prop :=
  ∀ n, P10393719187233347502.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P17996712345149420747

`A179312(A060462(n+2)+1)`
-/

namespace A088740.P17996712345149420747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A060462 (n + 2) + 1).toNat

end

end A088740.P17996712345149420747

namespace A088740

/-- `A179312(A060462(n+2)+1)` -/
def P17996712345149420747.Spec : Prop :=
  ∀ n, P17996712345149420747.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P14034948016610817720

`filter[A179312(n+1), A168181(#)]`
-/

namespace A088740.P14034948016610817720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A088740.P14034948016610817720

namespace A088740

/-- `filter[A179312(n+1), A168181(#)]` -/
def P14034948016610817720.Spec : Prop :=
  ∀ n, P14034948016610817720.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P10531997723377548786

`filter[A179312(n+1), A168185(#)]`
-/

namespace A088740.P10531997723377548786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A088740.P10531997723377548786

namespace A088740

/-- `filter[A179312(n+1), A168185(#)]` -/
def P10531997723377548786.Spec : Prop :=
  ∀ n, P10531997723377548786.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P233620887352761234

`filter[A285904(n+1), A064911(#)]`
-/

namespace A088740.P233620887352761234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A088740.P233620887352761234

namespace A088740

/-- `filter[A285904(n+1), A064911(#)]` -/
def P233620887352761234.Spec : Prop :=
  ∀ n, P233620887352761234.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P11054520365636600717

`A179312(lt[0, A179312(n+1)]+1)`
-/

namespace A088740.P11054520365636600717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A088740.P11054520365636600717

namespace A088740

/-- `A179312(lt[0, A179312(n+1)]+1)` -/
def P11054520365636600717.Spec : Prop :=
  ∀ n, P11054520365636600717.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P7324939685914597604

`A052369(n+1)*A087040(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A088740

/-- `A052369(n+1)*A087040(n+1)` -/
def P7324939685914597604.Spec : Prop :=
  ∀ n, P7324939685914597604.a n = A088740 (n + 1)

theorem P7324939685914597604.correct : P7324939685914597604.Spec := by
  intro n
  simp only [A088740, Nat.add_sub_cancel]

end A088740

/-! ## A088740.P14716192051101366953

`A006530(A002808(n+1))*A087040(n+1)`
-/

namespace A088740.P14716192051101366953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002808 (n + 1)).toNat * A087040 (n + 1)

end

end A088740.P14716192051101366953

namespace A088740

/-- `A006530(A002808(n+1))*A087040(n+1)` -/
def P14716192051101366953.Spec : Prop :=
  ∀ n, P14716192051101366953.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P5434509124151655012

`A052369(n+1)*A087039(A002808(n+1))`
-/

namespace A088740.P5434509124151655012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) * A087039 (A002808 (n + 1)).toNat

end

end A088740.P5434509124151655012

namespace A088740

/-- `A052369(n+1)*A087039(A002808(n+1))` -/
def P5434509124151655012.Spec : Prop :=
  ∀ n, P5434509124151655012.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P6857818525351847386

`A006530(A161003(n+1))*A052369(n+1)`
-/

namespace A088740.P6857818525351847386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161003 (n + 1)).toNat * A052369 (n + 1)

end

end A088740.P6857818525351847386

namespace A088740

/-- `A006530(A161003(n+1))*A052369(n+1)` -/
def P6857818525351847386.Spec : Prop :=
  ∀ n, P6857818525351847386.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P7086261962353494071

`A085392(2*A002808(n+1))*A087040(n+1)`
-/

namespace A088740.P7086261962353494071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A002808 (n + 1)).toNat * A087040 (n + 1)

end

end A088740.P7086261962353494071

namespace A088740

/-- `A085392(2*A002808(n+1))*A087040(n+1)` -/
def P7086261962353494071.Spec : Prop :=
  ∀ n, P7086261962353494071.a n = A088740 (n + 1)

end A088740

/-! ## A088740.P2609123963055990685

`A006530(A002808(n+1)/A052369(n+1))*A052369(n+1)`
-/

namespace A088740.P2609123963055990685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ))).toNat * A052369 (n + 1)

end

end A088740.P2609123963055990685

namespace A088740

/-- `A006530(A002808(n+1)/A052369(n+1))*A052369(n+1)` -/
def P2609123963055990685.Spec : Prop :=
  ∀ n, P2609123963055990685.a n = A088740 (n + 1)

end A088740

/-!
# A088742: Run lengths of A088023.

The programs for A088742, the canonical program `A088742.P2803669245170061806` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088742 has offset 1).

The definition of A088742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088742.P2803669245170061806

`Δ[∪[comp[and(n, -n)+n+n], n²]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088742

/-- `Δ[∪[comp[and(n, -n)+n+n], n²]]` -/
def P2803669245170061806.Spec : Prop :=
  ∀ n, P2803669245170061806.a n = A088742 (n + 1)

theorem P2803669245170061806.correct : P2803669245170061806.Spec := by
  intro n
  simp only [A088742, Nat.add_sub_cancel]

end A088742

/-! ## A088742.P4749990913515565466

`Δ[∪[comp[or(n, n-1)+n+1], n²]]`
-/

namespace A088742.P4749990913515565466
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088742.P4749990913515565466

namespace A088742

/-- `Δ[∪[comp[or(n, n-1)+n+1], n²]]` -/
def P4749990913515565466.Spec : Prop :=
  ∀ n, P4749990913515565466.a n = A088742 (n + 1)

end A088742

/-! ## A088742.P3746287281599184167

`Δ[∪[n^4, comp[or(n, n-1)+n+1]]]`
-/

namespace A088742.P3746287281599184167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088742.P3746287281599184167

namespace A088742

/-- `Δ[∪[n^4, comp[or(n, n-1)+n+1]]]` -/
def P3746287281599184167.Spec : Prop :=
  ∀ n, P3746287281599184167.a n = A088742 (n + 1)

end A088742

/-! ## A088742.P10336026335072004534

`Δ[eq[0, A038189(n)]]`
-/

namespace A088742.P10336026335072004534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088742.P10336026335072004534

namespace A088742

/-- `Δ[eq[0, A038189(n)]]` -/
def P10336026335072004534.Spec : Prop :=
  ∀ n, P10336026335072004534.a n = A088742 (n + 1)

end A088742

/-! ## A088742.P12384571581342575542

`Δ[lt[0, A204372(n)]]`
-/

namespace A088742.P12384571581342575542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204372 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088742.P12384571581342575542

namespace A088742

/-- `Δ[lt[0, A204372(n)]]` -/
def P12384571581342575542.Spec : Prop :=
  ∀ n, P12384571581342575542.a n = A088742 (n + 1)

end A088742

/-! ## A088742.P15918014478859493440

`Δ[lt[char[3*(n+1)-and(n, n+1)], 1]]`
-/

namespace A088742.P15918014478859493440
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088742.P15918014478859493440

namespace A088742

/-- `Δ[lt[char[3*(n+1)-and(n, n+1)], 1]]` -/
def P15918014478859493440.Spec : Prop :=
  ∀ n, P15918014478859493440.a n = A088742 (n + 1)

end A088742

/-!
# A088743: a(n) = 2*A088023(n) - 1.

The programs for A088743, the canonical program `A088743.P4379728260745678139` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088743 has offset 1).

The definition of A088743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088023, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088743.P4379728260745678139

`2*A088023(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088743

/-- `2*A088023(n+1)-1` -/
def P4379728260745678139.Spec : Prop :=
  ∀ n, P4379728260745678139.a n = A088743 (n + 1)

theorem P4379728260745678139.correct : P4379728260745678139.Spec := by
  intro n
  simp only [A088743, Nat.add_sub_cancel]

end A088743

/-! ## A088743.P18404420615670456554

`a(floor(n/2))+2*ceil(n/4)` with `a(0)=1`
-/

namespace A088743.P18404420615670456554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + 2 * ⌈(n : ℚ) / 4⌉

end

end A088743.P18404420615670456554

namespace A088743

/-- `a(floor(n/2))+2*ceil(n/4)` -/
def P18404420615670456554.Spec : Prop :=
  ∀ n, P18404420615670456554.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P17116789873203833306

`or(1, a(floor(n/2))+ceil(n/2))` with `a(0)=1`
-/

namespace A088743.P17116789873203833306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a ⌊(n : ℚ) / 2⌋.toNat + ⌈(n : ℚ) / 2⌉)

end

end A088743.P17116789873203833306

namespace A088743

/-- `or(1, a(floor(n/2))+ceil(n/2))` -/
def P17116789873203833306.Spec : Prop :=
  ∀ n, P17116789873203833306.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P108022466055140738

`2*∑[char[and(n, n-1)+n]]-1`
-/

namespace A088743.P108022466055140738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A088743.P108022466055140738

namespace A088743

/-- `2*∑[char[and(n, n-1)+n]]-1` -/
def P108022466055140738.Spec : Prop :=
  ∀ n, P108022466055140738.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P13037779904958248309

`A088748(n)+n`
-/

namespace A088743.P13037779904958248309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n + (n : ℤ)

end

end A088743.P13037779904958248309

namespace A088743

/-- `A088748(n)+n` -/
def P13037779904958248309.Spec : Prop :=
  ∀ n, P13037779904958248309.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P18248320386332333031

`∑[A112347(n)+1]`
-/

namespace A088743.P18248320386332333031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088743.P18248320386332333031

namespace A088743

/-- `∑[A112347(n)+1]` -/
def P18248320386332333031.Spec : Prop :=
  ∀ n, P18248320386332333031.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P14006677051879793454

`∑[A121238(n)]+n`
-/

namespace A088743.P14006677051879793454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A088743.P14006677051879793454

namespace A088743

/-- `∑[A121238(n)]+n` -/
def P14006677051879793454.Spec : Prop :=
  ∀ n, P14006677051879793454.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P4569751358761804621

`A005811(n)+1+n`
-/

namespace A088743.P4569751358761804621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + 1 + (n : ℤ)

end

end A088743.P4569751358761804621

namespace A088743

/-- `A005811(n)+1+n` -/
def P4569751358761804621.Spec : Prop :=
  ∀ n, P4569751358761804621.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P13978223343787662509

`A136004(n)-3+n`
-/

namespace A088743.P13978223343787662509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - 3 + (n : ℤ)

end

end A088743.P13978223343787662509

namespace A088743

/-- `A136004(n)-3+n` -/
def P13978223343787662509.Spec : Prop :=
  ∀ n, P13978223343787662509.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P17350540411306532712

`Δ[n²]-A236840(n)`
-/

namespace A088743.P17350540411306532712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A236840 n

end

end A088743.P17350540411306532712

namespace A088743

/-- `Δ[n²]-A236840(n)` -/
def P17350540411306532712.Spec : Prop :=
  ∀ n, P17350540411306532712.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P2252243043318060710

`A004273(A088023(n+1))`
-/

namespace A088743.P2252243043318060710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A088023 (n + 1)).toNat

end

end A088743.P2252243043318060710

namespace A088743

/-- `A004273(A088023(n+1))` -/
def P2252243043318060710.Spec : Prop :=
  ∀ n, P2252243043318060710.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P16518303089912283968

`A136004(n)+A023445(n)`
-/

namespace A088743.P16518303089912283968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n + A023445 n

end

end A088743.P16518303089912283968

namespace A088743

/-- `A136004(n)+A023445(n)` -/
def P16518303089912283968.Spec : Prop :=
  ∀ n, P16518303089912283968.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P3585652831729528366

`A136004(n)-A022959(n)`
-/

namespace A088743.P3585652831729528366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - A022959 n

end

end A088743.P3585652831729528366

namespace A088743

/-- `A136004(n)-A022959(n)` -/
def P3585652831729528366.Spec : Prop :=
  ∀ n, P3585652831729528366.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P820376237751773434

`A000120(A281553(n))+n+1`
-/

namespace A088743.P820376237751773434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A281553 n).toNat + (n + 1 : ℤ)

end

end A088743.P820376237751773434

namespace A088743

/-- `A000120(A281553(n))+n+1` -/
def P820376237751773434.Spec : Prop :=
  ∀ n, P820376237751773434.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P5834076499194632443

`A072339(Δ[n²])+n`
-/

namespace A088743.P5834076499194632443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A088743.P5834076499194632443

namespace A088743

/-- `A072339(Δ[n²])+n` -/
def P5834076499194632443.Spec : Prop :=
  ∀ n, P5834076499194632443.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P14457230176586214503

`A000120(A003188(n))+n+1`
-/

namespace A088743.P14457230176586214503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 n).toNat + (n + 1 : ℤ)

end

end A088743.P14457230176586214503

namespace A088743

/-- `A000120(A003188(n))+n+1` -/
def P14457230176586214503.Spec : Prop :=
  ∀ n, P14457230176586214503.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P17837191071534940431

`A000120(A341910(n))+n+1`
-/

namespace A088743.P17837191071534940431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341910 n).toNat + (n + 1 : ℤ)

end

end A088743.P17837191071534940431

namespace A088743

/-- `A000120(A341910(n))+n+1` -/
def P17837191071534940431.Spec : Prop :=
  ∀ n, P17837191071534940431.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P17288935076340553345

`A004396(A088744(n+1))`
-/

namespace A088743.P17288935076340553345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A088744 (n + 1)).toNat

end

end A088743.P17288935076340553345

namespace A088743

/-- `A004396(A088744(n+1))` -/
def P17288935076340553345.Spec : Prop :=
  ∀ n, P17288935076340553345.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P5335354149828669310

`A382733(Δ[n²])+n`
-/

namespace A088743.P5335354149828669310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A088743.P5335354149828669310

namespace A088743

/-- `A382733(Δ[n²])+n` -/
def P5335354149828669310.Spec : Prop :=
  ∀ n, P5335354149828669310.a n = A088743 (n + 1)

end A088743

/-! ## A088743.P2366834835832579989

`A382732(Δ[n²])+n+1`
-/

namespace A088743.P2366834835832579989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A088743.P2366834835832579989

namespace A088743

/-- `A382732(Δ[n²])+n+1` -/
def P2366834835832579989.Spec : Prop :=
  ∀ n, P2366834835832579989.a n = A088743 (n + 1)

end A088743

/-!
# A088744: a(n) = 3*A088023(n) - 2.

The programs for A088744, the canonical program `A088744.P13964639266915660033` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088744 has offset 1).

The definition of A088744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088023, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088744.P13964639266915660033

`3*A088023(n+1)-2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088744

/-- `3*A088023(n+1)-2` -/
def P13964639266915660033.Spec : Prop :=
  ∀ n, P13964639266915660033.a n = A088744 (n + 1)

theorem P13964639266915660033.correct : P13964639266915660033.Spec := by
  intro n
  simp only [A088744, Nat.add_sub_cancel]

end A088744

/-! ## A088744.P18198904230684708653

`a(floor(n/2))+3*ceil(n/4)` with `a(0)=1`
-/

namespace A088744.P18198904230684708653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + 3 * ⌈(n : ℚ) / 4⌉

end

end A088744.P18198904230684708653

namespace A088744

/-- `a(floor(n/2))+3*ceil(n/4)` -/
def P18198904230684708653.Spec : Prop :=
  ∀ n, P18198904230684708653.a n = A088744 (n + 1)

end A088744

/-! ## A088744.P17195144704881911000

`3*∑[char[and(n, n-1)+n]]-2`
-/

namespace A088744.P17195144704881911000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2

end

end A088744.P17195144704881911000

namespace A088744

/-- `3*∑[char[and(n, n-1)+n]]-2` -/
def P17195144704881911000.Spec : Prop :=
  ∀ n, P17195144704881911000.a n = A088744 (n + 1)

end A088744

/-! ## A088744.P10179471443729603907

`3*∑[char[2*n-and(n, -n)]]-2`
-/

namespace A088744.P10179471443729603907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2

end

end A088744.P10179471443729603907

namespace A088744

/-- `3*∑[char[2*n-and(n, -n)]]-2` -/
def P10179471443729603907.Spec : Prop :=
  ∀ n, P10179471443729603907.a n = A088744 (n + 1)

end A088744

/-! ## A088744.P16283937380577350227

`A088743(n+1)+A088743(n+1)-A088023(n+1)`
-/

namespace A088744.P16283937380577350227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088743 (n + 1) + (A088743 (n + 1) - A088023 (n + 1))

end

end A088744.P16283937380577350227

namespace A088744

/-- `A088743(n+1)+A088743(n+1)-A088023(n+1)` -/
def P16283937380577350227.Spec : Prop :=
  ∀ n, P16283937380577350227.a n = A088744 (n + 1)

end A088744

/-! ## A088744.P4368986052572091460

`A001651(A088743(n+1))`
-/

namespace A088744.P4368986052572091460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A088743 (n + 1)).toNat

end

end A088744.P4368986052572091460

namespace A088744

/-- `A001651(A088743(n+1))` -/
def P4368986052572091460.Spec : Prop :=
  ∀ n, P4368986052572091460.a n = A088744 (n + 1)

end A088744

/-!
# A088747: a(n) = prime(Pell(n)).

The programs for A088747, there is no canonical definition to state claims against.
-/

/-! ## A088747.P5769523811032385122

`A397466(A024537(n))`
-/

namespace A088747.P5769523811032385122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397466 (A024537 n).toNat

end

end A088747.P5769523811032385122

/-! ## A088747.P18298998916415254536

`A397466(A171842(n+1))`
-/

namespace A088747.P18298998916415254536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397466 (A171842 (n + 1)).toNat

end

end A088747.P18298998916415254536

/-! ## A088747.P7084119954935102623

`A001748(A000129(n+1))/3`
-/

namespace A088747.P7084119954935102623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000129 (n + 1)).toNat : ℚ) / 3

end

end A088747.P7084119954935102623

/-! ## A088747.P10906029022990407812

`A001749(A001333(n)+A000129(n))/4`
-/

namespace A088747.P10906029022990407812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A001333 n + A000129 n).toNat : ℚ) / 4

end

end A088747.P10906029022990407812

/-! ## A088747.P9935665630674589776

`A000040(floor(∑[(sqrt(2)+1)^n]/2)+1)`
-/

namespace A088747.P9935665630674589776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌋ + 1).toNat

end

end A088747.P9935665630674589776

/-!
# A088748: a(n) = 1 + Sum_{k=0..n-1} 2 * A014577(k) - 1.

The programs for A088748, the canonical program `A088748.P405959534239069085` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088748 has offset 0).

The definition of A088748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088748.P405959534239069085

`1+A005811(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088748

/-- `1+A005811(n)` -/
def P405959534239069085.Spec : Prop :=
  ∀ n, P405959534239069085.a n = A088748 n

theorem P405959534239069085.correct : P405959534239069085.Spec := by
  intro n
  simp only [A088748]

end A088748

/-! ## A088748.P5411934806526346688

`∑[Δ[xor(n, 2*n-1)]%2]`
-/

namespace A088748.P5411934806526346688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088748.P5411934806526346688

namespace A088748

/-- `∑[Δ[xor(n, 2*n-1)]%2]` -/
def P5411934806526346688.Spec : Prop :=
  ∀ n, P5411934806526346688.a n = A088748 n

end A088748

/-! ## A088748.P8202937836512473646

`a(n-1-and(n, 2*n))+1` with `a(0)=1`
-/

namespace A088748.P8202937836512473646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

end

end A088748.P8202937836512473646

namespace A088748

/-- `a(n-1-and(n, 2*n))+1` -/
def P8202937836512473646.Spec : Prop :=
  ∀ n, (P8202937836512473646.a n : ℤ) = A088748 n

end A088748

/-! ## A088748.P8162448783027268601

`∑{e}[2*a(n-1-and(n, 2*n)), #]` with `a(0)=17`
-/

namespace A088748.P8162448783027268601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  2 * f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A088748.P8162448783027268601

namespace A088748

/-- `∑{e}[2*a(n-1-and(n, 2*n)), #]` -/
def P8162448783027268601.Spec : Prop :=
  ∀ n, (P8162448783027268601.a n : ℤ) = A088748 n

end A088748

/-! ## A088748.P14274775194769810138

`2*∑[char[and(n, n-1)+n]]-1-n`
-/

namespace A088748.P14274775194769810138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1 - (n : ℤ)

end

end A088748.P14274775194769810138

namespace A088748

/-- `2*∑[char[and(n, n-1)+n]]-1-n` -/
def P14274775194769810138.Spec : Prop :=
  ∀ n, P14274775194769810138.a n = A088748 n

end A088748

/-! ## A088748.P14434132103073229295

`a(or(n, 2*n)+1-2*(n+1))+1` with `a(0)=1`
-/

namespace A088748.P14434132103073229295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.lor n (2 * n) + 1 - 2 * (n + 1)) + 1

end

end A088748.P14434132103073229295

namespace A088748

/-- `a(or(n, 2*n)+1-2*(n+1))+1` -/
def P14434132103073229295.Spec : Prop :=
  ∀ n, (P14434132103073229295.a n : ℤ) = A088748 n

end A088748

/-! ## A088748.P8875678103031285463

`a(n-∑[ceil(log2(8*n+2))]%(n+1))+1` with `a(0)=1`
-/

namespace A088748.P8875678103031285463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (8 * n + 2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)).toNat + 1

end

end A088748.P8875678103031285463

namespace A088748

/-- `a(n-∑[ceil(log2(8*n+2))]%(n+1))+1` -/
def P8875678103031285463.Spec : Prop :=
  ∀ n, (P8875678103031285463.a n : ℤ) = A088748 n

end A088748

/-! ## A088748.P10922151174475781559

`∑[A121238(n)]`
-/

namespace A088748.P10922151174475781559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088748.P10922151174475781559

namespace A088748

/-- `∑[A121238(n)]` -/
def P10922151174475781559.Spec : Prop :=
  ∀ n, P10922151174475781559.a n = A088748 n

end A088748

/-! ## A088748.P4232150490489664227

`A136004(n)-3`
-/

namespace A088748.P4232150490489664227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - 3

end

end A088748.P4232150490489664227

namespace A088748

/-- `A136004(n)-3` -/
def P4232150490489664227.Spec : Prop :=
  ∀ n, P4232150490489664227.a n = A088748 n

end A088748

/-! ## A088748.P11736610338863046047

`∑[∏[A121241(n)]]`
-/

namespace A088748.P11736610338863046047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088748.P11736610338863046047

namespace A088748

/-- `∑[∏[A121241(n)]]` -/
def P11736610338863046047.Spec : Prop :=
  ∀ n, P11736610338863046047.a n = A088748 n

end A088748

/-! ## A088748.P13090337206593929097

`∑[A112347(n)]+1`
-/

namespace A088748.P13090337206593929097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088748.P13090337206593929097

namespace A088748

/-- `∑[A112347(n)]+1` -/
def P13090337206593929097.Spec : Prop :=
  ∀ n, P13090337206593929097.a n = A088748 n

end A088748

/-! ## A088748.P4419359523491167333

`a(A035327(n))+1` with `a(0)=1`
-/

namespace A088748.P4419359523491167333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A035327 n).toNat + 1

end

end A088748.P4419359523491167333

namespace A088748

/-- `a(A035327(n))+1` -/
def P4419359523491167333.Spec : Prop :=
  ∀ n, (P4419359523491167333.a n : ℤ) = A088748 n

end A088748

/-! ## A088748.P3286588449602706234

`A088743(n+1)-n`
-/

namespace A088748.P3286588449602706234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088743 (n + 1) - (n : ℤ)

end

end A088748.P3286588449602706234

namespace A088748

/-- `A088743(n+1)-n` -/
def P3286588449602706234.Spec : Prop :=
  ∀ n, P3286588449602706234.a n = A088748 n

end A088748

/-! ## A088748.P10770547932679018063

`1-A236840(n)+n`
-/

namespace A088748.P10770547932679018063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A236840 n + (n : ℤ)

end

end A088748.P10770547932679018063

namespace A088748

/-- `1-A236840(n)+n` -/
def P10770547932679018063.Spec : Prop :=
  ∀ n, P10770547932679018063.a n = A088748 n

end A088748

/-! ## A088748.P10288044192965707548

`∑{e}[A382255(n), #]+1`
-/

namespace A088748.P10288044192965707548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A088748.P10288044192965707548

namespace A088748

/-- `∑{e}[A382255(n), #]+1` -/
def P10288044192965707548.Spec : Prop :=
  ∀ n, (P10288044192965707548.a n : ℤ) = A088748 n

end A088748

/-! ## A088748.P2439536671500533709

`∑[1-2*A038189(n)]`
-/

namespace A088748.P2439536671500533709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088748.P2439536671500533709

namespace A088748

/-- `∑[1-2*A038189(n)]` -/
def P2439536671500533709.Spec : Prop :=
  ∀ n, P2439536671500533709.a n = A088748 n

end A088748

/-! ## A088748.P2558139370669098933

`∑[1-and(2, A300867(n))]`
-/

namespace A088748.P2558139370669098933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A300867 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088748.P2558139370669098933

namespace A088748

/-- `∑[1-and(2, A300867(n))]` -/
def P2558139370669098933.Spec : Prop :=
  ∀ n, P2558139370669098933.a n = A088748 n

end A088748

/-! ## A088748.P12551308474362948612

`n+1-2*A255070(n)`
-/

namespace A088748.P12551308474362948612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A255070 n

end

end A088748.P12551308474362948612

namespace A088748

/-- `n+1-2*A255070(n)` -/
def P12551308474362948612.Spec : Prop :=
  ∀ n, P12551308474362948612.a n = A088748 n

end A088748

/-! ## A088748.P12800992480566820276

`A072219(n+1)+and(1, n)`
-/

namespace A088748.P12800992480566820276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1) + (Nat.land 1 n : ℤ)

end

end A088748.P12800992480566820276

namespace A088748

/-- `A072219(n+1)+and(1, n)` -/
def P12800992480566820276.Spec : Prop :=
  ∀ n, P12800992480566820276.a n = A088748 n

end A088748

/-! ## A088748.P936993650310714475

`a(A003817(n)-n)+1` with `a(0)=1`
-/

namespace A088748.P936993650310714475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003817 n - (n : ℤ)).toNat + 1

end

end A088748.P936993650310714475

namespace A088748

/-- `a(A003817(n)-n)+1` -/
def P936993650310714475.Spec : Prop :=
  ∀ n, (P936993650310714475.a n : ℤ) = A088748 n

end A088748

/-!
# A088750: a(n) is the index of that zero of the Riemann zeta function on the same line as the Gram point g(n-2). It is only well-defined if the Riemann hypothesis is true.

The programs for A088750, there is no canonical definition to state claims against.
-/

/-! ## A088750.P8717275581318578628

`1-A016405(A017353(n))+n`
-/

namespace A088750.P8717275581318578628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A016405 (A017353 n).toNat + (n : ℤ)

end

end A088750.P8717275581318578628

/-! ## A088750.P17809260835824231710

`Δ[A280710(A166578(n))]+n+1`
-/

namespace A088750.P17809260835824231710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A166578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A088750.P17809260835824231710

/-! ## A088750.P12390257856932535620

`A080513(2*n)-A016405(A017353(n))`
-/

namespace A088750.P12390257856932535620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n) - A016405 (A017353 n).toNat

end

end A088750.P12390257856932535620

/-! ## A088750.P10866202670963253159

`A028310(n)-(A016405(A017353(n))-A057427(n))`
-/

namespace A088750.P10866202670963253159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (A016405 (A017353 n).toNat - A057427 n)

end

end A088750.P10866202670963253159

/-! ## A088750.P11994458815579742834

`Δ[A022003(A028567(n+1))]+1+n`
-/

namespace A088750.P11994458815579742834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A028567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A088750.P11994458815579742834

/-!
# A088752: Let CompositePi(n) = number of composite numbers <= n and PrimePi(n) = number of primes <= n, so that CompositePi(n) + PrimePi(n) = n. Then a(n) = floor(n*(n - PrimePi(n))/(n-1-PrimePi(n-1) + n - 2 - PrimePi(n-2))).

The programs for A088752, there is no canonical definition to state claims against.
-/

/-! ## A088752.P1771378693882593867

`A061266(A187829(n+1))+ceil(n/5)`
-/

namespace A088752.P1771378693882593867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (A187829 (n + 1)).toNat + ⌈(n : ℚ) / 5⌉

end

end A088752.P1771378693882593867

/-!
# A088753: Numbers k such that the Reverse and Add! trajectory of k (presumably) does not reach a palindrome (with the exception of k itself) and does not join the trajectory of any term m < k.

The programs for A088753, there is no canonical definition to state claims against.
-/

/-! ## A088753.P1243993095874686420

`∪[A063048(n+1), A089521(n+1)]%A089521(n+1)`
-/

namespace A088753.P1243993095874686420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089521 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A089521 (n + 1))

end

end A088753.P1243993095874686420

/-! ## A088753.P10306536989941405179

`∪[A089521(n+1), A306232(n+1)]%A089521(n+1)`
-/

namespace A088753.P10306536989941405179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A089521 (n + 1))

end

end A088753.P10306536989941405179

/-!
# A088754: Number of n-digit primes beginning with prime(n).

The programs for A088754, there is no canonical definition to state claims against.
-/

/-! ## A088754.P250947302195362352

`A141058(n*A118460(2*n+5))`
-/

namespace A088754.P250947302195362352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141058 ((n : ℤ) * A118460 (2 * n + 5)).toNat

end

end A088754.P250947302195362352

/-!
# A088755: Number of n-digit primes beginning with n.

The programs for A088755, there is no canonical definition to state claims against.
-/

/-! ## A088755.P3565581732707812278

`Δ[floor(A306180(n+1)/9)]`
-/

namespace A088755.P3565581732707812278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A306180 (n + 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088755.P3565581732707812278

/-!
# A088756: a(n) = A088599(n)/n.

The programs for A088756, there is no canonical definition to state claims against.
-/

/-! ## A088756.P1893614439651022547

`A088599(n+1)/(n+1)`
-/

namespace A088756.P1893614439651022547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088599 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088756.P1893614439651022547

/-! ## A088756.P11166918333685489370

`A321655(∑[floor(n/10)]²)`
-/

namespace A088756.P11166918333685489370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A088756.P11166918333685489370

/-! ## A088756.P1935909521796948402

`A165661(A008804(n))`
-/

namespace A088756.P1935909521796948402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165661 (A008804 n).toNat

end

end A088756.P1935909521796948402

/-! ## A088756.P1389726407824778021

`A175364(A036426(n))`
-/

namespace A088756.P1389726407824778021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175364 (A036426 n).toNat

end

end A088756.P1389726407824778021

/-! ## A088756.P991550064490665363

`A152141(A143573(n))`
-/

namespace A088756.P991550064490665363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152141 (A143573 n).toNat

end

end A088756.P991550064490665363

/-!
# A088758: Numbers k such that (4*k + 1)^2 + (4*k + 2)^2 is prime.

The programs for A088758, the canonical program `A088758.P8129966983555977646` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088758 has offset 1).

The definition of A088758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088758.P3594074539599135143

`eq[1, A069002(4*n+2)]`
-/

namespace A088758.P3594074539599135143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069002 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P3594074539599135143

namespace A088758

/-- `eq[1, A069002(4*n+2)]` -/
def P3594074539599135143.Spec : Prop :=
  ∀ n, (P3594074539599135143.a n : ℤ) = A088758 (n + 1)

end A088758

/-! ## A088758.P8129966983555977646

`eq[2, A160651(A016813(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A088758

/-- `eq[2, A160651(A016813(n))]` -/
def P8129966983555977646.Spec : Prop :=
  ∀ n, (P8129966983555977646.a n : ℤ) = A088758 (n + 1)

theorem P8129966983555977646.correct : P8129966983555977646.Spec := by
  intro n
  simp only [A088758, Nat.add_sub_cancel]

end A088758

/-! ## A088758.P2133887307131965661

`eq[2, A160651(A016825(n)-1)]`
-/

namespace A088758.P2133887307131965661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (A016825 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P2133887307131965661

namespace A088758

/-- `eq[2, A160651(A016825(n)-1)]` -/
def P2133887307131965661.Spec : Prop :=
  ∀ n, (P2133887307131965661.a n : ℤ) = A088758 (n + 1)

end A088758

/-! ## A088758.P8904922700335072010

`eq[2, A160651(A005408(2*n))]`
-/

namespace A088758.P8904922700335072010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (A005408 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P8904922700335072010

namespace A088758

/-- `eq[2, A160651(A005408(2*n))]` -/
def P8904922700335072010.Spec : Prop :=
  ∀ n, (P8904922700335072010.a n : ℤ) = A088758 (n + 1)

end A088758

/-! ## A088758.P3433220648747764470

`record[n/A069002(A005843(2*n+1))]`
-/

namespace A088758.P3433220648747764470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A069002 (A005843 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088758.P3433220648747764470

namespace A088758

/-- `record[n/A069002(A005843(2*n+1))]` -/
def P3433220648747764470.Spec : Prop :=
  ∀ n, P3433220648747764470.a n = (A088758 (n + 1) : ℚ)

end A088758

/-! ## A088758.P2930336520199743981

`record[A005843(n)/A160651(A016825(n)-1)]`
-/

namespace A088758.P2930336520199743981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A160651 (A016825 n - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088758.P2930336520199743981

namespace A088758

/-- `record[A005843(n)/A160651(A016825(n)-1)]` -/
def P2930336520199743981.Spec : Prop :=
  ∀ n, P2930336520199743981.a n = (A088758 (n + 1) : ℚ)

end A088758

/-! ## A088758.P16127314665478222459

`eq[1, A147809(8*n+3)]`
-/

namespace A088758.P16127314665478222459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P16127314665478222459

namespace A088758

/-- `eq[1, A147809(8*n+3)]` -/
def P16127314665478222459.Spec : Prop :=
  ∀ n, (P16127314665478222459.a n : ℤ) = A088758 (n + 1)

end A088758

/-! ## A088758.P17116879822933687812

`eq[2, A147810(8*n+3)]`
-/

namespace A088758.P17116879822933687812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P17116879822933687812

namespace A088758

/-- `eq[2, A147810(8*n+3)]` -/
def P17116879822933687812.Spec : Prop :=
  ∀ n, (P17116879822933687812.a n : ℤ) = A088758 (n + 1)

end A088758

/-! ## A088758.P6767761951503392862

`eq[2, A128428(A017101(n))]`
-/

namespace A088758.P6767761951503392862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A017101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P6767761951503392862

namespace A088758

/-- `eq[2, A128428(A017101(n))]` -/
def P6767761951503392862.Spec : Prop :=
  ∀ n, (P6767761951503392862.a n : ℤ) = A088758 (n + 1)

end A088758

/-!
# A088759: Numbers k such that (4*k+3)^2 + (4*k+2)^2 is prime.

The programs for A088759, the canonical program `A088759.P11604207977400772174` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088759 has offset 1).

The definition of A088759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088759.P11604207977400772174

`eq[0, A309332(4*n+2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A088759

/-- `eq[0, A309332(4*n+2)]` -/
def P11604207977400772174.Spec : Prop :=
  ∀ n, (P11604207977400772174.a n : ℤ) = A088759 (n + 1)

theorem P11604207977400772174.correct : P11604207977400772174.Spec := by
  intro n
  simp only [A088759, Nat.add_sub_cancel]

end A088759

/-! ## A088759.P2929461337992131541

`eq[1, A069002(4*n+3)]`
-/

namespace A088759.P2929461337992131541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069002 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P2929461337992131541

namespace A088759

/-- `eq[1, A069002(4*n+3)]` -/
def P2929461337992131541.Spec : Prop :=
  ∀ n, (P2929461337992131541.a n : ℤ) = A088759 (n + 1)

end A088759

/-! ## A088759.P6466347541146771814

`eq[2, A160651(4*n+2)]`
-/

namespace A088759.P6466347541146771814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P6466347541146771814

namespace A088759

/-- `eq[2, A160651(4*n+2)]` -/
def P6466347541146771814.Spec : Prop :=
  ∀ n, (P6466347541146771814.a n : ℤ) = A088759 (n + 1)

end A088759

/-! ## A088759.P6415387291287145501

`eq[2, A278244(A016813(n)+1)]`
-/

namespace A088759.P6415387291287145501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 (A016813 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P6415387291287145501

namespace A088759

/-- `eq[2, A278244(A016813(n)+1)]` -/
def P6415387291287145501.Spec : Prop :=
  ∀ n, (P6415387291287145501.a n : ℤ) = A088759 (n + 1)

end A088759

/-! ## A088759.P7459136518901063768

`record[round((A005843(n)-n)/A069002(4*n+3))]`
-/

namespace A088759.P7459136518901063768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005843 n - (n : ℤ) : ℚ) / (A069002 (4 * n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088759.P7459136518901063768

namespace A088759

/-- `record[round((A005843(n)-n)/A069002(4*n+3))]` -/
def P7459136518901063768.Spec : Prop :=
  ∀ n, P7459136518901063768.a n = A088759 (n + 1)

end A088759

/-! ## A088759.P124685706417459684

`eq[1, A147809(8*n+5)]`
-/

namespace A088759.P124685706417459684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P124685706417459684

namespace A088759

/-- `eq[1, A147809(8*n+5)]` -/
def P124685706417459684.Spec : Prop :=
  ∀ n, (P124685706417459684.a n : ℤ) = A088759 (n + 1)

end A088759

/-! ## A088759.P7315701715358552679

`eq[2, A147810(8*n+5)]`
-/

namespace A088759.P7315701715358552679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P7315701715358552679

namespace A088759

/-- `eq[2, A147810(8*n+5)]` -/
def P7315701715358552679.Spec : Prop :=
  ∀ n, (P7315701715358552679.a n : ℤ) = A088759 (n + 1)

end A088759

/-! ## A088759.P1066904305918671441

`eq[2, A128428(A017101(n)+2)]`
-/

namespace A088759.P1066904305918671441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A017101 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P1066904305918671441

namespace A088759

/-- `eq[2, A128428(A017101(n)+2)]` -/
def P1066904305918671441.Spec : Prop :=
  ∀ n, (P1066904305918671441.a n : ℤ) = A088759 (n + 1)

end A088759

/-!
# A088760: a(1) = 1; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A088760, there is no canonical definition to state claims against.
-/

/-! ## A088760.P17049616754155651894

`a(n-1)*A088761(n)` with `a(0)=1`
-/

namespace A088760.P17049616754155651894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A088761 n

end

end A088760.P17049616754155651894

/-! ## A088760.P16486746430921763077

`∏[A088761(n+1)]/A088761(n+1)`
-/

namespace A088760.P16486746430921763077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088761 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A088761 (n + 1) : ℚ)

end

end A088760.P16486746430921763077

/-!
# A088761: a(n) = A088760(n+1)/A088760(n).

The programs for A088761, there is no canonical definition to state claims against.
-/

/-! ## A088761.P382214704922800411

`A088760(n+2)/A088760(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088761.P382214704922800411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088760 (n + 2) : ℚ) / (A088760 (n + 1) : ℚ)

end

end A088761.P382214704922800411

/-! ## A088761.P18250475059724620733

`ratio[A088760(n+1)]`
-/

namespace A088761.P18250475059724620733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088760 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088761.P18250475059724620733

/-! ## A088761.P18150826826974089244

`ratio[record[A088760(A020986(n))]]`
-/

namespace A088761.P18150826826974089244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088760 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088761.P18150826826974089244

/-! ## A088761.P12957641310570132922

`ratio[record[A088760(A088748(n))]]`
-/

namespace A088761.P12957641310570132922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088760 (A088748 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088761.P12957641310570132922

/-! ## A088761.P327433636793371503

`ratio[record[A088760(A137735(n))]]`
-/

namespace A088761.P327433636793371503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088760 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088761.P327433636793371503

/-!
# A088762: Numbers n such that (2n-1, 2n+3) is a cousin prime pair.

The programs for A088762, there is no canonical definition to state claims against.
-/

/-! ## A088762.P9441664793212172543

`(A087679(n+1)-1)/2`
-/

namespace A088762.P9441664793212172543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087679 (n + 1) - 1 : ℚ) / 2

end

end A088762.P9441664793212172543

/-! ## A088762.P2583259009016350361

`(A046132(n+1)-3)/2`
-/

namespace A088762.P2583259009016350361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 1) - 3 : ℚ) / 2

end

end A088762.P2583259009016350361

/-! ## A088762.P12524778156635578964

`A047847(n+1)+1`
-/

namespace A088762.P12524778156635578964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047847 (n + 1) + 1

end

end A088762.P12524778156635578964

/-! ## A088762.P9502618577684641275

`floor(A087679(n+1)/2)`
-/

namespace A088762.P9502618577684641275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087679 (n + 1) : ℚ) / 2⌋

end

end A088762.P9502618577684641275

/-! ## A088762.P989484806010048332

`ceil(A015913(n+1)/2)`
-/

namespace A088762.P989484806010048332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A015913 (n + 1) : ℚ) / 2⌉

end

end A088762.P989484806010048332

/-! ## A088762.P167888002754884018

`(A165986(n+1)+2)/4`
-/

namespace A088762.P167888002754884018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) + 2 : ℚ) / 4

end

end A088762.P167888002754884018

/-! ## A088762.P12224856507474768335

`floor(sqrt(A143206(n+1))/2)`
-/

namespace A088762.P12224856507474768335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A143206 (n + 1) : ℝ) / 2⌋

end

end A088762.P12224856507474768335

/-! ## A088762.P11802841773009810150

`A163634(n+1)%A015913(n+1)`
-/

namespace A088762.P11802841773009810150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163634 (n + 1)) (A015913 (n + 1))

end

end A088762.P11802841773009810150

/-! ## A088762.P18331976353304531161

`∪[A007352(n+1), A111981(n+1)]`
-/

namespace A088762.P18331976353304531161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088762.P18331976353304531161

/-! ## A088762.P6775020160986758851

`ceil(p?[A056772(n+1)]/2)`
-/

namespace A088762.P6775020160986758851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A088762.P6775020160986758851

/-! ## A088762.P7891857115932260944

`A072541(Δ[n²])/2`
-/

namespace A088762.P7891857115932260944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A088762.P7891857115932260944

/-! ## A088762.P16501644007709592819

`ceil(A094343(2*n+1)/2)`
-/

namespace A088762.P16501644007709592819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094343 (2 * n + 1) : ℚ) / 2⌉

end

end A088762.P16501644007709592819

/-! ## A088762.P14924060340905341725

`1/2*A072541(A005408(n))`
-/

namespace A088762.P14924060340905341725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A072541 (A005408 n).toNat : ℚ)

end

end A088762.P14924060340905341725

/-! ## A088762.P8665697533917333090

`(p?[A172367(n+1)]+1)/2`
-/

namespace A088762.P8665697533917333090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A088762.P8665697533917333090

/-! ## A088762.P13397112806452427337

`(p?[A000040(n+1)-4]+1)/2`
-/

namespace A088762.P13397112806452427337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A088762.P13397112806452427337

/-! ## A088762.P8659635394449075622

`floor((p?[A040976(n+1)-2]+2)/2)`
-/

namespace A088762.P8659635394449075622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℚ) / 2⌋

end

end A088762.P8659635394449075622

/-! ## A088762.P13495607928993123656

`floor((p?[A006093(n+1)-3]+2)/2)`
-/

namespace A088762.P13495607928993123656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℚ) / 2⌋

end

end A088762.P13495607928993123656

/-! ## A088762.P13462172302831099112

`∩[A006254(n+1), A067076(n+1)]`
-/

namespace A088762.P13462172302831099112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088762.P13462172302831099112

/-! ## A088762.P12766664817104563505

`∩[A005097(n+1), A089038(n+1)]+1`
-/

namespace A088762.P12766664817104563505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A088762.P12766664817104563505

/-! ## A088762.P1270310105926693438

`∩[A067076(n+1), A098090(n+1)-1]`
-/

namespace A088762.P1270310105926693438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088762.P1270310105926693438

/-!
# A088763: a(n) = A087695(n)/2.

The programs for A088763, the canonical program `A088763.P5308986329971701716` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088763 has offset 1).

The definition of A088763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088763.P5308986329971701716

`A087695(n+1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A088763

/-- `A087695(n+1)/2` -/
def P5308986329971701716.Spec : Prop :=
  ∀ n, P5308986329971701716.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P8514803300217913889

`A104010(n+1)/4`
-/

namespace A088763.P8514803300217913889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) : ℚ) / 4

end

end A088763.P8514803300217913889

namespace A088763

/-- `A104010(n+1)/4` -/
def P8514803300217913889.Spec : Prop :=
  ∀ n, P8514803300217913889.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P18055889851552720270

`(A023201(n+1)+3)/2`
-/

namespace A088763.P18055889851552720270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023201 (n + 1) + 3 : ℚ) / 2

end

end A088763.P18055889851552720270

namespace A088763

/-- `(A023201(n+1)+3)/2` -/
def P18055889851552720270.Spec : Prop :=
  ∀ n, P18055889851552720270.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P76144079486323628

`(A046117(n+1)-3)/2`
-/

namespace A088763.P76144079486323628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046117 (n + 1) - 3 : ℚ) / 2

end

end A088763.P76144079486323628

namespace A088763

/-- `(A046117(n+1)-3)/2` -/
def P76144079486323628.Spec : Prop :=
  ∀ n, P76144079486323628.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P16869636450936284766

`ceil(sqrt(A111192(n+1))/2)`
-/

namespace A088763.P16869636450936284766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A111192 (n + 1) : ℝ) / 2⌉

end

end A088763.P16869636450936284766

namespace A088763

/-- `ceil(sqrt(A111192(n+1))/2)` -/
def P16869636450936284766.Spec : Prop :=
  ∀ n, P16869636450936284766.a n = A088763 (n + 1)

end A088763

/-! ## A088763.P9712374074523241302

`(A172071(n+2)-3)/2`
-/

namespace A088763.P9712374074523241302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172071 (n + 2) - 3 : ℚ) / 2

end

end A088763.P9712374074523241302

namespace A088763

/-- `(A172071(n+2)-3)/2` -/
def P9712374074523241302.Spec : Prop :=
  ∀ n, P9712374074523241302.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P16194237472723061984

`(p?[A262084(n+1)]+3)/2`
-/

namespace A088763.P16194237472723061984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℚ) / 2

end

end A088763.P16194237472723061984

namespace A088763

/-- `(p?[A262084(n+1)]+3)/2` -/
def P16194237472723061984.Spec : Prop :=
  ∀ n, P16194237472723061984.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P4192723777405012334

`(p?[A000040(n+1)+6]-3)/2`
-/

namespace A088763.P4192723777405012334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 2

end

end A088763.P4192723777405012334

namespace A088763

/-- `(p?[A000040(n+1)+6]-3)/2` -/
def P4192723777405012334.Spec : Prop :=
  ∀ n, P4192723777405012334.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P10848049944203085559

`A086801(A172072(n+2))/2`
-/

namespace A088763.P10848049944203085559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086801 (A172072 (n + 2)).toNat : ℚ) / 2

end

end A088763.P10848049944203085559

namespace A088763

/-- `A086801(A172072(n+2))/2` -/
def P10848049944203085559.Spec : Prop :=
  ∀ n, P10848049944203085559.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P3667648671878747572

`∩[A067076(n+1), A098090(n+1)]`
-/

namespace A088763.P3667648671878747572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088763.P3667648671878747572

namespace A088763

/-- `∩[A067076(n+1), A098090(n+1)]` -/
def P3667648671878747572.Spec : Prop :=
  ∀ n, (P3667648671878747572.a n : ℤ) = A088763 (n + 1)

end A088763

/-! ## A088763.P13130245458602894982

`∩[A067076(n+1), A387935(n+1)]`
-/

namespace A088763.P13130245458602894982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088763.P13130245458602894982

namespace A088763

/-- `∩[A067076(n+1), A387935(n+1)]` -/
def P13130245458602894982.Spec : Prop :=
  ∀ n, (P13130245458602894982.a n : ℤ) = A088763 (n + 1)

end A088763

/-! ## A088763.P17522575022804094570

`∩[A098090(n+1), A387935(n+1)]`
-/

namespace A088763.P17522575022804094570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088763.P17522575022804094570

namespace A088763

/-- `∩[A098090(n+1), A387935(n+1)]` -/
def P17522575022804094570.Spec : Prop :=
  ∀ n, (P17522575022804094570.a n : ℤ) = A088763 (n + 1)

end A088763

/-! ## A088763.P8266261079549279292

`∩[A006254(n+1)+1, A067076(n+1)]`
-/

namespace A088763.P8266261079549279292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088763.P8266261079549279292

namespace A088763

/-- `∩[A006254(n+1)+1, A067076(n+1)]` -/
def P8266261079549279292.Spec : Prop :=
  ∀ n, (P8266261079549279292.a n : ℤ) = A088763 (n + 1)

end A088763

/-! ## A088763.P1334655202270293994

`∩[A089038(n+1)+1, A098090(n+1)]`
-/

namespace A088763.P1334655202270293994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088763.P1334655202270293994

namespace A088763

/-- `∩[A089038(n+1)+1, A098090(n+1)]` -/
def P1334655202270293994.Spec : Prop :=
  ∀ n, (P1334655202270293994.a n : ℤ) = A088763 (n + 1)

end A088763

/-! ## A088763.P17522992500557770345

`∩[A086801(n+1), A113935(n+1)]/2`
-/

namespace A088763.P17522992500557770345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A088763.P17522992500557770345

namespace A088763

/-- `∩[A086801(n+1), A113935(n+1)]/2` -/
def P17522992500557770345.Spec : Prop :=
  ∀ n, P17522992500557770345.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P12004166953077040810

`∩[A113935(n+1), A154115(n+1)]/2`
-/

namespace A088763.P12004166953077040810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A088763.P12004166953077040810

namespace A088763

/-- `∩[A113935(n+1), A154115(n+1)]/2` -/
def P12004166953077040810.Spec : Prop :=
  ∀ n, P12004166953077040810.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P1091407695042684011

`∩[A086801(n+1), A298252(n+1)]/2`
-/

namespace A088763.P1091407695042684011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A088763.P1091407695042684011

namespace A088763

/-- `∩[A086801(n+1), A298252(n+1)]/2` -/
def P1091407695042684011.Spec : Prop :=
  ∀ n, P1091407695042684011.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P12704696446757846609

`∩[A154115(n+1), A298252(n+1)]/2`
-/

namespace A088763.P12704696446757846609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A088763.P12704696446757846609

namespace A088763

/-- `∩[A154115(n+1), A298252(n+1)]/2` -/
def P12704696446757846609.Spec : Prop :=
  ∀ n, P12704696446757846609.a n = (A088763 (n + 1) : ℚ)

end A088763

/-! ## A088763.P14972494934372961120

`A014682(A087695(n+1))`
-/

namespace A088763.P14972494934372961120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A087695 (n + 1)).toNat

end

end A088763.P14972494934372961120

namespace A088763

/-- `A014682(A087695(n+1))` -/
def P14972494934372961120.Spec : Prop :=
  ∀ n, P14972494934372961120.a n = A088763 (n + 1)

end A088763

/-! ## A088763.P15702283063576902424

`filter[A387935(n+1), A097325(#)]`
-/

namespace A088763.P15702283063576902424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A088763.P15702283063576902424

namespace A088763

/-- `filter[A387935(n+1), A097325(#)]` -/
def P15702283063576902424.Spec : Prop :=
  ∀ n, P15702283063576902424.a n = A088763 (n + 1)

end A088763

/-!
# A088764: a(n) = (A087680(n)-1)/2.

The programs for A088764, the canonical program `A088764.P11806142455434414841` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088764 has offset 1).

The definition of A088764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088764.P11806142455434414841

`(A087680(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088764

/-- `(A087680(n+1)-1)/2` -/
def P11806142455434414841.Spec : Prop :=
  ∀ n, P11806142455434414841.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P463809221101182684

`floor(A087680(n+1)/2)`
-/

namespace A088764.P463809221101182684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087680 (n + 1) : ℚ) / 2⌋

end

end A088764.P463809221101182684

namespace A088764

/-- `floor(A087680(n+1)/2)` -/
def P463809221101182684.Spec : Prop :=
  ∀ n, P463809221101182684.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P9268751009501724896

`(A023202(n+1)+3)/2`
-/

namespace A088764.P9268751009501724896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023202 (n + 1) + 3 : ℚ) / 2

end

end A088764.P9268751009501724896

namespace A088764

/-- `(A023202(n+1)+3)/2` -/
def P9268751009501724896.Spec : Prop :=
  ∀ n, P9268751009501724896.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P2933585307062048138

`2*((p?[A262085(n+1)]-1)/4+1)`
-/

namespace A088764.P2933585307062048138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 4 + 1)

end

end A088764.P2933585307062048138

namespace A088764

/-- `2*((p?[A262085(n+1)]-1)/4+1)` -/
def P2933585307062048138.Spec : Prop :=
  ∀ n, P2933585307062048138.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P15178647339330416115

`(p?[A175224(n+1)]-5)/2`
-/

namespace A088764.P15178647339330416115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5 : ℚ) / 2

end

end A088764.P15178647339330416115

namespace A088764

/-- `(p?[A175224(n+1)]-5)/2` -/
def P15178647339330416115.Spec : Prop :=
  ∀ n, P15178647339330416115.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P2342748381487977143

`(p?[A000040(n+1)-8]+3)/2`
-/

namespace A088764.P2342748381487977143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℚ) / 2

end

end A088764.P2342748381487977143

namespace A088764

/-- `(p?[A000040(n+1)-8]+3)/2` -/
def P2342748381487977143.Spec : Prop :=
  ∀ n, P2342748381487977143.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P16011696001963177391

`∩[A089038(n+1), A098090(n+1)]`
-/

namespace A088764.P16011696001963177391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088764.P16011696001963177391

namespace A088764

/-- `∩[A089038(n+1), A098090(n+1)]` -/
def P16011696001963177391.Spec : Prop :=
  ∀ n, (P16011696001963177391.a n : ℤ) = A088764 (n + 1)

end A088764

/-! ## A088764.P15432326442699842084

`∩[A005097(n+1)+2, A089038(n+1)]`
-/

namespace A088764.P15432326442699842084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088764.P15432326442699842084

namespace A088764

/-- `∩[A005097(n+1)+2, A089038(n+1)]` -/
def P15432326442699842084.Spec : Prop :=
  ∀ n, (P15432326442699842084.a n : ℤ) = A088764 (n + 1)

end A088764

/-! ## A088764.P16230277298491920403

`∩[A067076(n+1)-1, A098090(n+1)]`
-/

namespace A088764.P16230277298491920403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088764.P16230277298491920403

namespace A088764

/-- `∩[A067076(n+1)-1, A098090(n+1)]` -/
def P16230277298491920403.Spec : Prop :=
  ∀ n, (P16230277298491920403.a n : ℤ) = A088764 (n + 1)

end A088764

/-! ## A088764.P18424499395322422706

`∩[A089038(n+1), A089253(n+1)-1]`
-/

namespace A088764.P18424499395322422706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088764.P18424499395322422706

namespace A088764

/-- `∩[A089038(n+1), A089253(n+1)-1]` -/
def P18424499395322422706.Spec : Prop :=
  ∀ n, (P18424499395322422706.a n : ℤ) = A088764 (n + 1)

end A088764

/-! ## A088764.P5167326206825458929

`A014682(p?[A262085(n+1)]+3)`
-/

namespace A088764.P5167326206825458929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3).toNat

end

end A088764.P5167326206825458929

namespace A088764

/-- `A014682(p?[A262085(n+1)]+3)` -/
def P5167326206825458929.Spec : Prop :=
  ∀ n, P5167326206825458929.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P2463952038612986026

`A014682(A023202(n+1)+1)+1`
-/

namespace A088764.P2463952038612986026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023202 (n + 1) + 1).toNat + 1

end

end A088764.P2463952038612986026

namespace A088764

/-- `A014682(A023202(n+1)+1)+1` -/
def P2463952038612986026.Spec : Prop :=
  ∀ n, P2463952038612986026.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P5781321404978910321

`(A092402(n+1)-5)/2`
-/

namespace A088764.P5781321404978910321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092402 (n + 1) - 5 : ℚ) / 2

end

end A088764.P5781321404978910321

namespace A088764

/-- `(A092402(n+1)-5)/2` -/
def P5781321404978910321.Spec : Prop :=
  ∀ n, P5781321404978910321.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P17959963713607948349

`(A156320(Δ[n²])+3)/2`
-/

namespace A088764.P17959963713607948349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156320 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3 : ℚ) / 2

end

end A088764.P17959963713607948349

namespace A088764

/-- `(A156320(Δ[n²])+3)/2` -/
def P17959963713607948349.Spec : Prop :=
  ∀ n, P17959963713607948349.a n = (A088764 (n + 1) : ℚ)

end A088764

/-! ## A088764.P16694101132644838711

`A003971(A023202(n+1))`
-/

namespace A088764.P16694101132644838711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003971 (A023202 (n + 1)).toNat

end

end A088764.P16694101132644838711

namespace A088764

/-- `A003971(A023202(n+1))` -/
def P16694101132644838711.Spec : Prop :=
  ∀ n, P16694101132644838711.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P15723482106667899804

`A004524(A087680(n+1))`
-/

namespace A088764.P15723482106667899804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A087680 (n + 1)).toNat

end

end A088764.P15723482106667899804

namespace A088764

/-- `A004524(A087680(n+1))` -/
def P15723482106667899804.Spec : Prop :=
  ∀ n, P15723482106667899804.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P8005262813299794821

`A032742(A087680(n+1)-1)`
-/

namespace A088764.P8005262813299794821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A087680 (n + 1) - 1).toNat

end

end A088764.P8005262813299794821

namespace A088764

/-- `A032742(A087680(n+1)-1)` -/
def P8005262813299794821.Spec : Prop :=
  ∀ n, P8005262813299794821.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P10388091604823088053

`A004525(A023202(n+1)+1)+1`
-/

namespace A088764.P10388091604823088053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A023202 (n + 1) + 1).toNat + 1

end

end A088764.P10388091604823088053

namespace A088764

/-- `A004525(A023202(n+1)+1)+1` -/
def P10388091604823088053.Spec : Prop :=
  ∀ n, P10388091604823088053.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P10063726689001033139

`A032742(A023202(n+1)+1)+1`
-/

namespace A088764.P10063726689001033139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A023202 (n + 1) + 1).toNat + 1

end

end A088764.P10063726689001033139

namespace A088764

/-- `A032742(A023202(n+1)+1)+1` -/
def P10063726689001033139.Spec : Prop :=
  ∀ n, P10063726689001033139.a n = A088764 (n + 1)

end A088764

/-! ## A088764.P13516363228553100911

`A060681(A023202(n+1)+1)+1`
-/

namespace A088764.P13516363228553100911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A023202 (n + 1) + 1).toNat + 1

end

end A088764.P13516363228553100911

namespace A088764

/-- `A060681(A023202(n+1)+1)+1` -/
def P13516363228553100911.Spec : Prop :=
  ∀ n, P13516363228553100911.a n = A088764 (n + 1)

end A088764

/-!
# A088765: a(n) = A087696(n)/2.

The programs for A088765, there is no canonical definition to state claims against.
-/

/-! ## A088765.P7154695866680402054

`A087696(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088765.P7154695866680402054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087696 (n + 1) : ℚ) / 2

end

end A088765.P7154695866680402054

/-! ## A088765.P18343807437985516176

`(A092146(n+1)-5)/2`
-/

namespace A088765.P18343807437985516176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092146 (n + 1) - 5 : ℚ) / 2

end

end A088765.P18343807437985516176

/-! ## A088765.P4413355476829310888

`(p?[A175225(n+1)]-5)/2`
-/

namespace A088765.P4413355476829310888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5 : ℚ) / 2

end

end A088765.P4413355476829310888

/-! ## A088765.P704575634244783303

`(p?[A000040(n+1)+10]-5)/2`
-/

namespace A088765.P704575634244783303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5 : ℚ) / 2

end

end A088765.P704575634244783303

/-! ## A088765.P5160395139750572176

`∩[A089038(n+1), A089253(n+1)]`
-/

namespace A088765.P5160395139750572176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088765.P5160395139750572176

/-! ## A088765.P8663027840256140864

`∩[A089038(n+1), A098090(n+1)+1]`
-/

namespace A088765.P8663027840256140864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088765.P8663027840256140864

/-! ## A088765.P8843051855118843729

`∩[A089253(n+1), A105760(n+1)+1]`
-/

namespace A088765.P8843051855118843729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088765.P8843051855118843729

/-! ## A088765.P13629085663588383536

`∩[A089253(n+1), A161720(n+3)+1]`
-/

namespace A088765.P13629085663588383536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088765.P13629085663588383536

/-! ## A088765.P317100129840370096

`∩[A175222(n+1), A173064(n+3)]/2`
-/

namespace A088765.P317100129840370096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A088765.P317100129840370096

/-! ## A088765.P7851852485617663096

`A052938(A015916(n+1))`
-/

namespace A088765.P7851852485617663096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A015916 (n + 1)).toNat

end

end A088765.P7851852485617663096

/-! ## A088765.P14719141754895310816

`A001281(A087696(n+1))`
-/

namespace A088765.P14719141754895310816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A087696 (n + 1)).toNat

end

end A088765.P14719141754895310816

/-! ## A088765.P4392627023435067206

`A008619(A087696(n+1)-1)`
-/

namespace A088765.P4392627023435067206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A087696 (n + 1) - 1).toNat

end

end A088765.P4392627023435067206

/-! ## A088765.P8060007470820914237

`A023447(A092146(n+1))/2`
-/

namespace A088765.P8060007470820914237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023447 (A092146 (n + 1)).toNat : ℚ) / 2

end

end A088765.P8060007470820914237

/-! ## A088765.P17614730029258425919

`A160413(A015916(n+1)+1)+2`
-/

namespace A088765.P17614730029258425919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A015916 (n + 1) + 1).toNat + 2

end

end A088765.P17614730029258425919

/-!
# A088766: a(n) = (A087681(n)-1)/2.

The programs for A088766, the canonical program `A088766.P6906496388869347381` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088766 has offset 1).

The definition of A088766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087681, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088766.P6906496388869347381

`(A087681(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088766

/-- `(A087681(n+1)-1)/2` -/
def P6906496388869347381.Spec : Prop :=
  ∀ n, P6906496388869347381.a n = (A088766 (n + 1) : ℚ)

end A088766

/-! ## A088766.P5141293663818980825

`floor(A087681(n+1)/2)`
-/

namespace A088766.P5141293663818980825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087681 (n + 1) : ℚ) / 2⌋

end

end A088766.P5141293663818980825

namespace A088766

/-- `floor(A087681(n+1)/2)` -/
def P5141293663818980825.Spec : Prop :=
  ∀ n, P5141293663818980825.a n = A088766 (n + 1)

end A088766

/-! ## A088766.P142476854246957216

`(A046133(n+1)+5)/2`
-/

namespace A088766.P142476854246957216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046133 (n + 1) + 5 : ℚ) / 2

end

end A088766.P142476854246957216

namespace A088766

/-- `(A046133(n+1)+5)/2` -/
def P142476854246957216.Spec : Prop :=
  ∀ n, P142476854246957216.a n = (A088766 (n + 1) : ℚ)

end A088766

/-! ## A088766.P14049500958771042544

`(p?[A015917(n+1)]+5)/2`
-/

namespace A088766.P14049500958771042544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5 : ℚ) / 2

end

end A088766.P14049500958771042544

namespace A088766

/-- `(p?[A015917(n+1)]+5)/2` -/
def P14049500958771042544.Spec : Prop :=
  ∀ n, P14049500958771042544.a n = (A088766 (n + 1) : ℚ)

end A088766

/-! ## A088766.P17612494948999885834

`(p?[A000040(n+1)-12]+5)/2`
-/

namespace A088766.P17612494948999885834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5 : ℚ) / 2

end

end A088766.P17612494948999885834

namespace A088766

/-- `(p?[A000040(n+1)-12]+5)/2` -/
def P17612494948999885834.Spec : Prop :=
  ∀ n, P17612494948999885834.a n = (A088766 (n + 1) : ℚ)

end A088766

/-! ## A088766.P1988953189167551495

`∩[A089253(n+1), A105760(n+1)]`
-/

namespace A088766.P1988953189167551495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088766.P1988953189167551495

namespace A088766

/-- `∩[A089253(n+1), A105760(n+1)]` -/
def P1988953189167551495.Spec : Prop :=
  ∀ n, (P1988953189167551495.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P7730170287057697399

`∩[A089253(n+1), A161720(n+3)]`
-/

namespace A088766.P7730170287057697399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088766.P7730170287057697399

namespace A088766

/-- `∩[A089253(n+1), A161720(n+3)]` -/
def P7730170287057697399.Spec : Prop :=
  ∀ n, (P7730170287057697399.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P373093900390601039

`∩[A089038(n+1)-1, A089253(n+1)]`
-/

namespace A088766.P373093900390601039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088766.P373093900390601039

namespace A088766

/-- `∩[A089038(n+1)-1, A089253(n+1)]` -/
def P373093900390601039.Spec : Prop :=
  ∀ n, (P373093900390601039.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P16531896411826306321

`∩[A089192(n+1)-1, A105760(n+1)]`
-/

namespace A088766.P16531896411826306321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088766.P16531896411826306321

namespace A088766

/-- `∩[A089192(n+1)-1, A105760(n+1)]` -/
def P16531896411826306321.Spec : Prop :=
  ∀ n, (P16531896411826306321.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P3208788698508142173

`∩[A089192(n+1)-1, A161720(n+3)]`
-/

namespace A088766.P3208788698508142173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088766.P3208788698508142173

namespace A088766

/-- `∩[A089192(n+1)-1, A161720(n+3)]` -/
def P3208788698508142173.Spec : Prop :=
  ∀ n, (P3208788698508142173.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P17496411567713125073

`(A156323(Δ[n²])+5)/2`
-/

namespace A088766.P17496411567713125073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156323 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 5 : ℚ) / 2

end

end A088766.P17496411567713125073

namespace A088766

/-- `(A156323(Δ[n²])+5)/2` -/
def P17496411567713125073.Spec : Prop :=
  ∀ n, P17496411567713125073.a n = (A088766 (n + 1) : ℚ)

end A088766

/-! ## A088766.P7711832599259797696

`eq[3, A245716(2*n+1)]`
-/

namespace A088766.P7711832599259797696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088766.P7711832599259797696

namespace A088766

/-- `eq[3, A245716(2*n+1)]` -/
def P7711832599259797696.Spec : Prop :=
  ∀ n, (P7711832599259797696.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P16056041849388461327

`eq[7, A261628(2*n+1)]`
-/

namespace A088766.P16056041849388461327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261628 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088766.P16056041849388461327

namespace A088766

/-- `eq[7, A261628(2*n+1)]` -/
def P16056041849388461327.Spec : Prop :=
  ∀ n, (P16056041849388461327.a n : ℤ) = A088766 (n + 1)

end A088766

/-! ## A088766.P14916241830885474940

`A004524(A087681(n+1))`
-/

namespace A088766.P14916241830885474940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A087681 (n + 1)).toNat

end

end A088766.P14916241830885474940

namespace A088766

/-- `A004524(A087681(n+1))` -/
def P14916241830885474940.Spec : Prop :=
  ∀ n, P14916241830885474940.a n = A088766 (n + 1)

end A088766

/-! ## A088766.P348746346184126053

`A052938(A046133(n+1))`
-/

namespace A088766.P348746346184126053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A046133 (n + 1)).toNat

end

end A088766.P348746346184126053

namespace A088766

/-- `A052938(A046133(n+1))` -/
def P348746346184126053.Spec : Prop :=
  ∀ n, P348746346184126053.a n = A088766 (n + 1)

end A088766

/-! ## A088766.P16807388209384610504

`A023448(A092216(n+1)-1)/2`
-/

namespace A088766.P16807388209384610504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023448 (A092216 (n + 1) - 1).toNat : ℚ) / 2

end

end A088766.P16807388209384610504

namespace A088766

/-- `A023448(A092216(n+1)-1)/2` -/
def P16807388209384610504.Spec : Prop :=
  ∀ n, P16807388209384610504.a n = (A088766 (n + 1) : ℚ)

end A088766

/-!
# A088767: a(n) = A087697(n)/2.

The programs for A088767, there is no canonical definition to state claims against.
-/

/-! ## A088767.P11642323542550528234

`A087697(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088767.P11642323542550528234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087697 (n + 1) : ℚ) / 2

end

end A088767.P11642323542550528234

/-! ## A088767.P1269936804711191000

`(A153417(n+1)+7)/2`
-/

namespace A088767.P1269936804711191000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153417 (n + 1) + 7 : ℚ) / 2

end

end A088767.P1269936804711191000

/-! ## A088767.P16253330313445746720

`floor(A140446(Δ[n²])/2)+4`
-/

namespace A088767.P16253330313445746720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋ + 4

end

end A088767.P16253330313445746720

/-! ## A088767.P1877341649528471565

`(A140446(2*n+1)+7)/2`
-/

namespace A088767.P1877341649528471565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140446 (2 * n + 1) + 7 : ℚ) / 2

end

end A088767.P1877341649528471565

/-! ## A088767.P14400608512610807232

`(p?[A000040(n+1)+14]-7)/2`
-/

namespace A088767.P14400608512610807232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7 : ℚ) / 2

end

end A088767.P14400608512610807232

/-! ## A088767.P8462437119163968582

`∩[A089192(n+1), A105760(n+1)]`
-/

namespace A088767.P8462437119163968582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088767.P8462437119163968582

/-! ## A088767.P2244861216388405900

`∩[A089192(n+1), A161720(n+3)]`
-/

namespace A088767.P2244861216388405900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088767.P2244861216388405900

/-! ## A088767.P13399432456773424383

`∩[A089253(n+1)+1, A105760(n+1)]`
-/

namespace A088767.P13399432456773424383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088767.P13399432456773424383

/-! ## A088767.P2950383251426417475

`∩[A089192(n+1), A155722(n+1)+1]`
-/

namespace A088767.P2950383251426417475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088767.P2950383251426417475

/-! ## A088767.P15704826692471787502

`∩[A089253(n+1)+1, A161720(n+3)]`
-/

namespace A088767.P15704826692471787502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088767.P15704826692471787502

/-! ## A088767.P9074925000687778227

`(p?[A209259(n)+14]-7)/2`
-/

namespace A088767.P9074925000687778227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n + 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7 : ℚ) / 2

end

end A088767.P9074925000687778227

/-! ## A088767.P577639549285346495

`A001281(A087697(n+1))`
-/

namespace A088767.P577639549285346495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A087697 (n + 1)).toNat

end

end A088767.P577639549285346495

/-! ## A088767.P1280422878187616922

`A019303(A153417(n+1))`
-/

namespace A088767.P1280422878187616922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (A153417 (n + 1)).toNat

end

end A088767.P1280422878187616922

/-!
# A088768: a(n) = (A087682(n)-1)/2.

The programs for A088768, there is no canonical definition to state claims against.
-/

/-! ## A088768.P10171389655389103534

`(A087682(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088768.P10171389655389103534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087682 (n + 1) - 1 : ℚ) / 2

end

end A088768.P10171389655389103534

/-! ## A088768.P17999443973214392169

`floor(A087682(n+1)/2)`
-/

namespace A088768.P17999443973214392169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087682 (n + 1) : ℚ) / 2⌋

end

end A088768.P17999443973214392169

/-! ## A088768.P12882564937512689171

`(A049488(n+1)+7)/2`
-/

namespace A088768.P12882564937512689171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049488 (n + 1) + 7 : ℚ) / 2

end

end A088768.P12882564937512689171

/-! ## A088768.P13529927522515239807

`∩[A089192(n+1), A155722(n+1)]`
-/

namespace A088768.P13529927522515239807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088768.P13529927522515239807

/-! ## A088768.P2660816315404266496

`∩[A089192(n+1), A105760(n+1)-1]`
-/

namespace A088768.P2660816315404266496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088768.P2660816315404266496

/-! ## A088768.P13886281190248981673

`∩[A097069(n+1)-1, A155722(n+1)]`
-/

namespace A088768.P13886281190248981673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088768.P13886281190248981673

/-! ## A088768.P891634986831849072

`∩[A089192(n+1), A161720(n+3)-1]`
-/

namespace A088768.P891634986831849072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088768.P891634986831849072

/-! ## A088768.P9865265183600867699

`(p?[A000040(n+1)+16]-9)/2`
-/

namespace A088768.P9865265183600867699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 9 : ℚ) / 2

end

end A088768.P9865265183600867699

/-! ## A088768.P12188089088829314206

`A014682(A087682(n+1)-1)`
-/

namespace A088768.P12188089088829314206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A087682 (n + 1) - 1).toNat

end

end A088768.P12188089088829314206

/-! ## A088768.P14423517185604152038

`A014682(xor(1, A087682(n+1)))`
-/

namespace A088768.P14423517185604152038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A087682 (n + 1))).toNat

end

end A088768.P14423517185604152038

/-! ## A088768.P1501813439128997562

`A322982(A087682(n+1)-1)`
-/

namespace A088768.P1501813439128997562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A087682 (n + 1) - 1).toNat

end

end A088768.P1501813439128997562

/-! ## A088768.P7482976297963600166

`A019303(A049488(n+1))`
-/

namespace A088768.P7482976297963600166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (A049488 (n + 1)).toNat

end

end A088768.P7482976297963600166

/-! ## A088768.P6179406266386449882

`A004524(A087682(n+1))`
-/

namespace A088768.P6179406266386449882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A087682 (n + 1)).toNat

end

end A088768.P6179406266386449882

/-! ## A088768.P14963661004434735092

`A004525(A087682(n+1)-1)`
-/

namespace A088768.P14963661004434735092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A087682 (n + 1) - 1).toNat

end

end A088768.P14963661004434735092

/-! ## A088768.P7184339362302683564

`A025480(A087682(n+1)-1)`
-/

namespace A088768.P7184339362302683564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A087682 (n + 1) - 1).toNat

end

end A088768.P7184339362302683564

/-! ## A088768.P12017678012055963698

`A117818(A087682(n+1)-1)`
-/

namespace A088768.P12017678012055963698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A087682 (n + 1) - 1).toNat

end

end A088768.P12017678012055963698

/-! ## A088768.P18142175454660132014

`A003602(A087682(n+1)-2)`
-/

namespace A088768.P18142175454660132014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A087682 (n + 1) - 2).toNat

end

end A088768.P18142175454660132014

/-! ## A088768.P13409923941381599740

`A025480(xor(1, A087682(n+1)))`
-/

namespace A088768.P13409923941381599740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A087682 (n + 1))).toNat

end

end A088768.P13409923941381599740

/-!
# A088769: a(n) = A087678(n)/2.

The programs for A088769, there is no canonical definition to state claims against.
-/

/-! ## A088769.P4940817456777989727

`A087678(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088769.P4940817456777989727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087678 (n + 1) : ℚ) / 2

end

end A088769.P4940817456777989727

/-! ## A088769.P9180989386099830809

`(A153418(n+1)+9)/2`
-/

namespace A088769.P9180989386099830809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153418 (n + 1) + 9 : ℚ) / 2

end

end A088769.P9180989386099830809

/-! ## A088769.P17698152791724114851

`∩[A097069(n+1), A155722(n+1)]`
-/

namespace A088769.P17698152791724114851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088769.P17698152791724114851

/-! ## A088769.P4376752779383935880

`∩[A097069(n+1), A101448(n+1)+1]`
-/

namespace A088769.P4376752779383935880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088769.P4376752779383935880

/-! ## A088769.P3344235651252834564

`∩[A089192(n+1)+1, A155722(n+1)]`
-/

namespace A088769.P3344235651252834564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088769.P3344235651252834564

/-! ## A088769.P1339851321247980786

`∩[A088967(n+1), A140353(n+1)]/2`
-/

namespace A088769.P1339851321247980786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A088769.P1339851321247980786

/-! ## A088769.P6432160154768250421

`∩[A045344(n+1)-A097069(n+1), A097069(n+1)]`
-/

namespace A088769.P6432160154768250421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088769.P6432160154768250421

/-! ## A088769.P17889246384028443364

`∩[A065091(n+1)-A097069(n+1), A097069(n+1)]`
-/

namespace A088769.P17889246384028443364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088769.P17889246384028443364

/-! ## A088769.P11838462443728620805

`∩[A045319(n+2)-A097069(n+2), A097069(n+2)]`
-/

namespace A088769.P11838462443728620805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2) - A097069 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088769.P11838462443728620805

/-! ## A088769.P15580646761738772451

`A014682(A087678(n+1)+2)-1`
-/

namespace A088769.P15580646761738772451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A087678 (n + 1) + 2).toNat - 1

end

end A088769.P15580646761738772451

/-! ## A088769.P12856849249138008987

`A001281(A087678(n+1))`
-/

namespace A088769.P12856849249138008987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A087678 (n + 1)).toNat

end

end A088769.P12856849249138008987

/-! ## A088769.P2046591398003159294

`A008619(A087678(n+1)-1)`
-/

namespace A088769.P2046591398003159294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A087678 (n + 1) - 1).toNat

end

end A088769.P2046591398003159294

/-! ## A088769.P13994791963483745999

`A020723(A153418(n+1))/2`
-/

namespace A088769.P13994791963483745999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020723 (A153418 (n + 1)).toNat : ℚ) / 2

end

end A088769.P13994791963483745999

/-! ## A088769.P12331470933570969747

`A174571(2*A087678(n+1))`
-/

namespace A088769.P12331470933570969747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A087678 (n + 1)).toNat

end

end A088769.P12331470933570969747

/-!
# A088770: a(n) = (A087683(n)-1)/2.

The programs for A088770, there is no canonical definition to state claims against.
-/

/-! ## A088770.P1339455081466477038

`(A087683(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088770.P1339455081466477038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087683 (n + 1) - 1 : ℚ) / 2

end

end A088770.P1339455081466477038

/-! ## A088770.P2384722089039515489

`floor(A087683(n+1)/2)`
-/

namespace A088770.P2384722089039515489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087683 (n + 1) : ℚ) / 2⌋

end

end A088770.P2384722089039515489

/-! ## A088770.P11508037925005240826

`(A153419(n+1)+3)/2+3`
-/

namespace A088770.P11508037925005240826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153419 (n + 1) + 3 : ℚ) / 2 + 3

end

end A088770.P11508037925005240826

/-! ## A088770.P13150385781894172258

`(A272816(2*n+1)+9)/2`
-/

namespace A088770.P13150385781894172258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272816 (2 * n + 1) + 9 : ℚ) / 2

end

end A088770.P13150385781894172258

/-! ## A088770.P5585656231314725080

`∩[A097069(n+1), A101448(n+1)]`
-/

namespace A088770.P5585656231314725080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088770.P5585656231314725080

/-! ## A088770.P3439246713370870419

`∩[A097069(n+1), A155722(n+1)-1]`
-/

namespace A088770.P3439246713370870419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088770.P3439246713370870419

/-! ## A088770.P9760144312992495255

`∩[A097480(n+1)-3, A008507(A020705(n))-1+n]`
-/

namespace A088770.P9760144312992495255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A020705 n).toNat - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088770.P9760144312992495255

/-! ## A088770.P5050318669938698509

`A322982(A087683(n+1)-1)`
-/

namespace A088770.P5050318669938698509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A087683 (n + 1) - 1).toNat

end

end A088770.P5050318669938698509

/-! ## A088770.P10169678810734502269

`A004524(A087683(n+1))`
-/

namespace A088770.P10169678810734502269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A087683 (n + 1)).toNat

end

end A088770.P10169678810734502269

/-! ## A088770.P16365328718623291013

`A032742(A087683(n+1)-1)`
-/

namespace A088770.P16365328718623291013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A087683 (n + 1) - 1).toNat

end

end A088770.P16365328718623291013

/-! ## A088770.P16241593223725265926

`A110654(A272816(2*n+1)+9)`
-/

namespace A088770.P16241593223725265926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A272816 (2 * n + 1) + 9).toNat

end

end A088770.P16241593223725265926

/-! ## A088770.P17467266068493810872

`A054576(2*(A087683(n+1)-1))`
-/

namespace A088770.P17467266068493810872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (A087683 (n + 1) - 1)).toNat

end

end A088770.P17467266068493810872

/-! ## A088770.P13607095249047746628

`A054576(A087683(n+1)+A087683(n+1)-2)`
-/

namespace A088770.P13607095249047746628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A087683 (n + 1) + (A087683 (n + 1) - 2)).toNat

end

end A088770.P13607095249047746628

/-!
# A088771: a(n) = A082776(n+1)/A082776(n).

The programs for A088771, there is no canonical definition to state claims against.
-/

/-! ## A088771.P12825158067546043102

`A082776(n+2)/A082776(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088771.P12825158067546043102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082776 (n + 2) : ℚ) / (A082776 (n + 1) : ℚ)

end

end A088771.P12825158067546043102

/-! ## A088771.P5754384963667025755

`ratio[A082776(n+1)]`
-/

namespace A088771.P5754384963667025755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082776 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088771.P5754384963667025755

/-!
# A088772: a(n) = A082777(n+1)/A082777(n).

The programs for A088772, there is no canonical definition to state claims against.
-/

/-! ## A088772.P7937180333031463742

`A082777(n+2)/A082777(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088772.P7937180333031463742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082777 (n + 2) : ℚ) / (A082777 (n + 1) : ℚ)

end

end A088772.P7937180333031463742

/-! ## A088772.P3672864310840963169

`ratio[A082777(n+1)]`
-/

namespace A088772.P3672864310840963169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082777 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088772.P3672864310840963169

/-!
# A088773: a(n) = A082778(n+1)/A082778(n).

The programs for A088773, there is no canonical definition to state claims against.
-/

/-! ## A088773.P15207158403769266373

`A082778(n+2)/A082778(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088773.P15207158403769266373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082778 (n + 2) : ℚ) / (A082778 (n + 1) : ℚ)

end

end A088773.P15207158403769266373

/-! ## A088773.P6202540356493575236

`ratio[A082778(n+1)]`
-/

namespace A088773.P6202540356493575236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082778 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088773.P6202540356493575236

/-!
# A088774: a(n) = A082779(n+1)/A082779(n).

The programs for A088774, there is no canonical definition to state claims against.
-/

/-! ## A088774.P817790102643046576

`ratio[A082779(n+1)]`
-/

namespace A088774.P817790102643046576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082779 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088774.P817790102643046576

/-!
# A088775: a(n) = A082780(n+1)/A082780(n).

The programs for A088775, there is no canonical definition to state claims against.
-/

/-! ## A088775.P16406710071188670956

`A082780(n+2)/A082780(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088775.P16406710071188670956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082780 (n + 2) : ℚ) / (A082780 (n + 1) : ℚ)

end

end A088775.P16406710071188670956

/-! ## A088775.P17798868411890960618

`ratio[A082780(n+1)]`
-/

namespace A088775.P17798868411890960618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082780 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088775.P17798868411890960618

/-! ## A088775.P5934271025619513902

`ratio[A082781(n+1)]`
-/

namespace A088775.P5934271025619513902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082781 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088775.P5934271025619513902

/-! ## A088775.P13827364759386302976

`ratio[A082783(n+1)]`
-/

namespace A088775.P13827364759386302976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082783 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088775.P13827364759386302976

/-! ## A088775.P12485127176194681174

`A082781(n+2)/A082781(n+1)`
-/

namespace A088775.P12485127176194681174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082781 (n + 2) : ℚ) / (A082781 (n + 1) : ℚ)

end

end A088775.P12485127176194681174

/-!
# A088777: a(n) = A082782(n+1)/A082782(n).

The programs for A088777, there is no canonical definition to state claims against.
-/

/-! ## A088777.P6991389887885742019

`ratio[A082782(n+1)]`
-/

namespace A088777.P6991389887885742019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082782 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A088777.P6991389887885742019

/-!
# A088780: a(1) = 9, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A088780, there is no canonical definition to state claims against.
-/

/-! ## A088780.P16858706787138974938

`3/2*A082781(n+1)`
-/

namespace A088780.P16858706787138974938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A082781 (n + 1) : ℚ)

end

end A088780.P16858706787138974938

/-!
# A088781: A068164 indexed by A000040.

The programs for A088781, there is no canonical definition to state claims against.
-/

/-! ## A088781.P11558973126484519659

`A000720(A068164(n+1))`
-/

namespace A088781.P11558973126484519659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068164 (n + 1)).toNat

end

end A088781.P11558973126484519659

/-! ## A088781.P1905481646826806048

`∑{d}[A068164(n+1), A061395(#)]`
-/

namespace A088781.P1905481646826806048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A088781.P1905481646826806048

/-! ## A088781.P12739513023027937807

`A061395(2*A068164(n+1))`
-/

namespace A088781.P12739513023027937807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A068164 (n + 1)).toNat

end

end A088781.P12739513023027937807

/-! ## A088781.P17073418798915221393

`A344616(∏{p}[A068164(n+1), #])`
-/

namespace A088781.P17073418798915221393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088781.P17073418798915221393

/-! ## A088781.P7640747936488670084

`A344616(or(A068164(n+1), A187976(2*n+3)))`
-/

namespace A088781.P7640747936488670084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.lor (A068164 (n + 1)) (A187976 (2 * n + 3))).toNat

end

end A088781.P7640747936488670084

/-! ## A088781.P5009161582678733371

`A003963(A062584(n+1))`
-/

namespace A088781.P5009161582678733371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A062584 (n + 1)).toNat

end

end A088781.P5009161582678733371

/-! ## A088781.P4802444357265197462

`A075167(p?[A062584(n+1)])`
-/

namespace A088781.P4802444357265197462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088781.P4802444357265197462

/-! ## A088781.P12863697963520621719

`A290103(2*A062584(n+1))`
-/

namespace A088781.P12863697963520621719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A062584 (n + 1)).toNat

end

end A088781.P12863697963520621719

/-! ## A088781.P13249212677233974377

`A055396(∏{p}[A062584(n+1), #])`
-/

namespace A088781.P13249212677233974377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088781.P13249212677233974377

/-! ## A088781.P9238442421139013416

`A082058(A062584(2*n+1-n))`
-/

namespace A088781.P9238442421139013416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A062584 (2 * n + 1 - n)).toNat

end

end A088781.P9238442421139013416

/-! ## A088781.P12915951733889640998

`A082058(A068164(2*n+1-n))`
-/

namespace A088781.P12915951733889640998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A068164 (2 * n + 1 - n)).toNat

end

end A088781.P12915951733889640998

/-! ## A088781.P7169946897097435088

`A082058(A000040(A082058(n+1)))`
-/

namespace A088781.P7169946897097435088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A000040 (A082058 (n + 1)).toNat).toNat

end

end A088781.P7169946897097435088

/-! ## A088781.P8596793957041426204

`A061395(A061395(n+2)*A062584(n+1))`
-/

namespace A088781.P8596793957041426204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A061395 (n + 2) * A062584 (n + 1)).toNat

end

end A088781.P8596793957041426204

/-! ## A088781.P14344192178685966971

`A055396(A055396(2*(n+1))*A062584(n+1))`
-/

namespace A088781.P14344192178685966971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A055396 (2 * (n + 1)) * A062584 (n + 1)).toNat

end

end A088781.P14344192178685966971

/-! ## A088781.P4032277619442161952

`A082058(A038690((n+1)²))`
-/

namespace A088781.P4032277619442161952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A038690 ((n + 1) ^ 2)).toNat

end

end A088781.P4032277619442161952

/-! ## A088781.P4272390805464136444

`A082058(A091873((n+1)²))`
-/

namespace A088781.P4272390805464136444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A091873 ((n + 1) ^ 2)).toNat

end

end A088781.P4272390805464136444

/-!
# A088782: a(n) is the smallest k>0 such that concatenation of n^k and 1 is prime, or 0 if no such number exists.

The programs for A088782, there is no canonical definition to state claims against.
-/

/-! ## A088782.P414880523861740598

`C(A336812(A000225(n+1)), A055642(n))`
-/

namespace A088782.P414880523861740598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336812 (A000225 (n + 1)).toNat).toNat (A055642 n).toNat

end

end A088782.P414880523861740598

/-!
# A088783: Numbers n such that 10*n^k + 1 is composite for all k > 0.

The programs for A088783, there is no canonical definition to state claims against.
-/

/-! ## A088783.P11310389570610628590

`record[gcd(11, n)+(-1)^(n%3)+n]`
-/

namespace A088783.P11310389570610628590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 11 n : ℤ) + ((-1) ^ (n % 3) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088783.P11310389570610628590

/-! ## A088783.P2828993387249911455

`eq[0, A088782(n+1)]+1`
-/

namespace A088783.P2828993387249911455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088783.P2828993387249911455

/-! ## A088783.P9082855631094850249

`lt[A088782(round(sqrt(n²+1))), 1]`
-/

namespace A088783.P9082855631094850249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088782 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088783.P9082855631094850249

/-! ## A088783.P8571707513621539004

`eq[0, A088782(A028310(n))]`
-/

namespace A088783.P8571707513621539004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088782 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088783.P8571707513621539004

/-! ## A088783.P8914851272989931636

`record[A109014(n)+A061800(n)]`
-/

namespace A088783.P8914851272989931636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n + A061800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088783.P8914851272989931636

/-!
# A088784: Primes formed by concatenating a prime with the preceding prime.

The programs for A088784, there is no canonical definition to state claims against.
-/

/-! ## A088784.P8741535730716724404

`∩[A280357(n+1), A280388(n+1)]`
-/

namespace A088784.P8741535730716724404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088784.P8741535730716724404

/-! ## A088784.P13225165378738978731

`p?[A176597(n+1)-A054541(n+1)]`
-/

namespace A088784.P13225165378738978731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176597 (n + 1) - A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088784.P13225165378738978731

/-! ## A088784.P17321509821986794903

`p?[A176597(n+2)-A001223(n+1)]`
-/

namespace A088784.P17321509821986794903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176597 (n + 2) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088784.P17321509821986794903

/-! ## A088784.P16255712581660814765

`p?[∪[A007796(n+1), A007797(n+1)]]`
-/

namespace A088784.P16255712581660814765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007796 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088784.P16255712581660814765

/-! ## A088784.P17156458489368729996

`p?[A020338(A065091(n+1))-A001223(n+1)]`
-/

namespace A088784.P17156458489368729996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A065091 (n + 1)).toNat - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088784.P17156458489368729996

/-!
# A088785: Primes yielding other primes after each digit is incremented by 2 with carries ignored.

The programs for A088785, there is no canonical definition to state claims against.
-/

/-! ## A088785.P11640977285715119230

`p?[or(A047621(n+1), A323977(n))]`
-/

namespace A088785.P11640977285715119230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047621 (n + 1)) (A323977 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088785.P11640977285715119230

/-! ## A088785.P1181308668604228542

`p?[eq[1, A001222(A169931(n)+1)]+1]`
-/

namespace A088785.P1181308668604228542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A169931 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088785.P1181308668604228542

/-! ## A088785.P14814077251454590888

`p?[A099258(2*(n+1))-A099268(n+1)]`
-/

namespace A088785.P14814077251454590888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099258 (2 * (n + 1)) - A099268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088785.P14814077251454590888

/-! ## A088785.P1264116500607290160

`eq[A003415(n), A003415(A169931(n))]`
-/

namespace A088785.P1264116500607290160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A169931 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088785.P1264116500607290160

/-!
# A088789: E.g.f.: REVERT(2*x/(1+exp(x))) = Sum_{n>=0} a(n)*x^n/n!.

The programs for A088789, there is no canonical definition to state claims against.
-/

/-! ## A088789.P12081532819357074698

`ceil(A216857(n)/2^n)`
-/

namespace A088789.P12081532819357074698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216857 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A088789.P12081532819357074698

/-! ## A088789.P5862722303094571814

`round(A216857(n)/A000079(n))`
-/

namespace A088789.P5862722303094571814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216857 n : ℚ) / (A000079 n : ℚ))

end

end A088789.P5862722303094571814

/-! ## A088789.P4847270331003129738

`A216857(n)/A000079(A154955(n+1)+n)`
-/

namespace A088789.P4847270331003129738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 n : ℚ) / (A000079 (A154955 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A088789.P4847270331003129738

/-! ## A088789.P9734275609634688224

`A038053(n+1)/A038049(n+1)*A007889(n)`
-/

namespace A088789.P9734275609634688224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038053 (n + 1) : ℚ) / (A038049 (n + 1) : ℚ) * (A007889 n : ℚ)

end

end A088789.P9734275609634688224

/-! ## A088789.P3617682480828310414

`A216857(n)/A008574(A034008(n))`
-/

namespace A088789.P3617682480828310414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 n : ℚ) / (A008574 (A034008 n).toNat : ℚ)

end

end A088789.P3617682480828310414

/-!
# A088790: Numbers k such that (k^k-1)/(k-1) is prime.

The programs for A088790, there is no canonical definition to state claims against.
-/

/-! ## A088790.P9503960730619908358

`p?[A070519(n+1)]`
-/

namespace A088790.P9503960730619908358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088790.P9503960730619908358

/-!
# A088791: Coefficient of x^n in A(x)^n is A000670(n), which gives preferential arrangements of n labeled elements.

The programs for A088791, there is no canonical definition to state claims against.
-/

/-! ## A088791.P8338301642709268483

`A097992(n*A307444(n))`
-/

namespace A088791.P8338301642709268483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 ((n : ℤ) * A307444 n).toNat

end

end A088791.P8338301642709268483

/-! ## A088791.P16944800241185230958

`A103221(n*A307444(n))`
-/

namespace A088791.P16944800241185230958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n : ℤ) * A307444 n).toNat

end

end A088791.P16944800241185230958

/-! ## A088791.P13625753107171438218

`A254011(A257520(n)²)+1`
-/

namespace A088791.P13625753107171438218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A257520 n ^ 2).toNat + 1

end

end A088791.P13625753107171438218

/-!
# A088792: Expansion of g.f. A(x) satisfying A(x)^2 = A(x*A(x)) / (1-x) with A(0) = 1.

The programs for A088792, there is no canonical definition to state claims against.
-/

/-! ## A088792.P11209921128439874656

`or(A263273(n), A286045(A321961(n)))`
-/

namespace A088792.P11209921128439874656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263273 n) (A286045 (A321961 n).toNat)

end

end A088792.P11209921128439874656

/-! ## A088792.P9282609643983014142

`A358473(A209066(n+1))+A107877(n)`
-/

namespace A088792.P9282609643983014142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A209066 (n + 1)).toNat + A107877 n

end

end A088792.P9282609643983014142

/-! ## A088792.P2214597007037400852

`or(A053448(n+1), A286045(A321961(n)))`
-/

namespace A088792.P2214597007037400852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053448 (n + 1)) (A286045 (A321961 n).toNat)

end

end A088792.P2214597007037400852

/-!
# A088793: G.f. satisfies: A(x)*(1-x) = 1 + x^2*A(x*A(x)).

The programs for A088793, there is no canonical definition to state claims against.
-/

/-! ## A088793.P4796475309266994480

`A157271(A160911(n+1)+A144331(n))`
-/

namespace A088793.P4796475309266994480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A160911 (n + 1) + A144331 n).toNat

end

end A088793.P4796475309266994480

/-! ## A088793.P2503109739826850226

`A157271(A160911(n+1)+A122522(n+3))`
-/

namespace A088793.P2503109739826850226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A160911 (n + 1) + A122522 (n + 3)).toNat

end

end A088793.P2503109739826850226

/-! ## A088793.P5835972911192127886

`A157271(A175150(2*n+1)+A160911(n+1))`
-/

namespace A088793.P5835972911192127886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A175150 (2 * n + 1) + A160911 (n + 1)).toNat

end

end A088793.P5835972911192127886

/-! ## A088793.P13450440695784349272

`A003056(∑[A242003(n)])`
-/

namespace A088793.P13450440695784349272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088793.P13450440695784349272

/-!
# A088794: Coefficient of x^n in A(x)^(2n) is A004123(n); self-convolution is A088222.

The programs for A088794, there is no canonical definition to state claims against.
-/

/-! ## A088794.P12518463458054429248

`A065033(∑[A181939(n)-A332011(n)]-(n+1))`
-/

namespace A088794.P12518463458054429248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181939 n - A332011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)).toNat

end

end A088794.P12518463458054429248

/-! ## A088794.P14511269303092044056

`A261585(2*(n+1)^(n-1))`
-/

namespace A088794.P14511269303092044056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (SequenceMachineLib.roundAway (2 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A088794.P14511269303092044056

/-!
# A088795: a(n) = -1/16-3*n^2/8+17*n/12+n^3/12+(-1)^n/16.

The programs for A088795, the canonical program `A088795.P8987595111341973740` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088795 has offset 1).

The definition of A088795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088795.P8987595111341973740

`∑[∑[abs(floor((n-1)/2))]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088795

/-- `∑[∑[abs(floor((n-1)/2))]]` -/
def P8987595111341973740.Spec : Prop :=
  ∀ n, P8987595111341973740.a n = A088795 (n + 1)

theorem P8987595111341973740.correct : P8987595111341973740.Spec := by
  intro n
  simp only [A088795, Nat.add_sub_cancel]

end A088795

/-! ## A088795.P882961534172906972

`∑[∑[abs(gcd(2, n)-n)]]/2`
-/

namespace A088795.P882961534172906972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 n : ℤ) - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A088795.P882961534172906972

namespace A088795

/-- `∑[∑[abs(gcd(2, n)-n)]]/2` -/
def P882961534172906972.Spec : Prop :=
  ∀ n, P882961534172906972.a n = (A088795 (n + 1) : ℚ)

end A088795

/-! ## A088795.P10628639485407422363

`abs(∑[∑[∑[n%2]-1]+2])`
-/

namespace A088795.P10628639485407422363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A088795.P10628639485407422363

namespace A088795

/-- `abs(∑[∑[∑[n%2]-1]+2])` -/
def P10628639485407422363.Spec : Prop :=
  ∀ n, P10628639485407422363.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P7994581992824997963

`abs(∑[∑[a(n-2)+1]])` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A088795.P7994581992824997963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088795.P7994581992824997963

namespace A088795

/-- `abs(∑[∑[a(n-2)+1]])` -/
def P7994581992824997963.Spec : Prop :=
  ∀ n, (P7994581992824997963.a n : ℤ) = A088795 (n + 1)

end A088795

/-! ## A088795.P12199852100428190976

`floor(∑[∑[a(n-2)+1]])` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A088795.P12199852100428190976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088795.P12199852100428190976

namespace A088795

/-- `floor(∑[∑[a(n-2)+1]])` -/
def P12199852100428190976.Spec : Prop :=
  ∀ n, (P12199852100428190976.a n : ℤ) = A088795 (n + 1)

end A088795

/-! ## A088795.P3535624853518014702

`floor(∑[n-(2-a(n-2))])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A088795.P3535624853518014702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088795.P3535624853518014702

namespace A088795

/-- `floor(∑[n-(2-a(n-2))])` -/
def P3535624853518014702.Spec : Prop :=
  ∀ n, P3535624853518014702.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P12595485535369715735

`∑[a(n-2)+n]-∑[n]` with `a(0)=1, a(1)=2`
-/

namespace A088795.P12595485535369715735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A088795.P12595485535369715735

namespace A088795

/-- `∑[a(n-2)+n]-∑[n]` -/
def P12595485535369715735.Spec : Prop :=
  ∀ n, P12595485535369715735.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P2379838744408771987

`5-(∑[2-n]-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A088795.P2379838744408771987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2))

end

end A088795.P2379838744408771987

namespace A088795

/-- `5-(∑[2-n]-a(n-2))` -/
def P2379838744408771987.Spec : Prop :=
  ∀ n, P2379838744408771987.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P15091254425862545465

`C(n-1, 2)+a(n-2)+2` with `a(0)=1, a(1)=2`
-/

namespace A088795.P15091254425862545465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose ((n : ℤ) - 1).toNat 2 + (a (n - 2) + 2)

end

end A088795.P15091254425862545465

namespace A088795

/-- `C(n-1, 2)+a(n-2)+2` -/
def P15091254425862545465.Spec : Prop :=
  ∀ n, (P15091254425862545465.a n : ℤ) = A088795 (n + 1)

end A088795

/-! ## A088795.P7401131272215340946

`A212964(n)/2+n+1`
-/

namespace A088795.P7401131272215340946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212964 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A088795.P7401131272215340946

namespace A088795

/-- `A212964(n)/2+n+1` -/
def P7401131272215340946.Spec : Prop :=
  ∀ n, P7401131272215340946.a n = (A088795 (n + 1) : ℚ)

end A088795

/-! ## A088795.P4215245397353538123

`∑[A184674(n+1)]-n²`
-/

namespace A088795.P4215245397353538123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A088795.P4215245397353538123

namespace A088795

/-- `∑[A184674(n+1)]-n²` -/
def P4215245397353538123.Spec : Prop :=
  ∀ n, P4215245397353538123.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P9722852926761942376

`A282513(n)+A212772(n)`
-/

namespace A088795.P9722852926761942376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 n + A212772 n

end

end A088795.P9722852926761942376

namespace A088795

/-- `A282513(n)+A212772(n)` -/
def P9722852926761942376.Spec : Prop :=
  ∀ n, P9722852926761942376.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P13008498251779904689

`A002623(n)-A006578(n)`
-/

namespace A088795.P13008498251779904689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - A006578 n

end

end A088795.P13008498251779904689

namespace A088795

/-- `A002623(n)-A006578(n)` -/
def P13008498251779904689.Spec : Prop :=
  ∀ n, P13008498251779904689.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P9773657587107523292

`A000125(n)-A173196(n)`
-/

namespace A088795.P9773657587107523292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - A173196 n

end

end A088795.P9773657587107523292

namespace A088795

/-- `A000125(n)-A173196(n)` -/
def P9773657587107523292.Spec : Prop :=
  ∀ n, P9773657587107523292.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P4782775330766305364

`A266464(n)-A002620(n)`
-/

namespace A088795.P4782775330766305364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n - A002620 n

end

end A088795.P4782775330766305364

namespace A088795

/-- `A266464(n)-A002620(n)` -/
def P4782775330766305364.Spec : Prop :=
  ∀ n, P4782775330766305364.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P8092089200354319057

`A391995(n)+A087811(n+1)`
-/

namespace A088795.P8092089200354319057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391995 n + A087811 (n + 1)

end

end A088795.P8092089200354319057

namespace A088795

/-- `A391995(n)+A087811(n+1)` -/
def P8092089200354319057.Spec : Prop :=
  ∀ n, P8092089200354319057.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P3041174060988669578

`A081489(n+1)-A002717(n)`
-/

namespace A088795.P3041174060988669578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 (n + 1) - A002717 n

end

end A088795.P3041174060988669578

namespace A088795

/-- `A081489(n+1)-A002717(n)` -/
def P3041174060988669578.Spec : Prop :=
  ∀ n, P3041174060988669578.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P13108628647018216928

`A116731(n+1)-A045947(n)`
-/

namespace A088795.P13108628647018216928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1) - A045947 n

end

end A088795.P13108628647018216928

namespace A088795

/-- `A116731(n+1)-A045947(n)` -/
def P13108628647018216928.Spec : Prop :=
  ∀ n, P13108628647018216928.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P1295887011999890262

`A004006(n)+1-A173196(n)`
-/

namespace A088795.P1295887011999890262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (1 - A173196 n)

end

end A088795.P1295887011999890262

namespace A088795

/-- `A004006(n)+1-A173196(n)` -/
def P1295887011999890262.Spec : Prop :=
  ∀ n, P1295887011999890262.a n = A088795 (n + 1)

end A088795

/-! ## A088795.P8583362497697237771

`A177787(n+1)-A002623(n)`
-/

namespace A088795.P8583362497697237771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (n + 1) - A002623 n

end

end A088795.P8583362497697237771

namespace A088795

/-- `A177787(n+1)-A002623(n)` -/
def P8583362497697237771.Spec : Prop :=
  ∀ n, P8583362497697237771.a n = A088795 (n + 1)

end A088795

/-!
# A088796: Primes p such that p^3 + p^2 - 1 is also prime.

The programs for A088796, there is no canonical definition to state claims against.
-/

/-! ## A088796.P5071556534564265192

`p?[A125881(n+1)]`
-/

namespace A088796.P5071556534564265192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088796.P5071556534564265192

/-! ## A088796.P14321274962997886382

`record[A006530(A125881(n+2))]`
-/

namespace A088796.P14321274962997886382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A125881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088796.P14321274962997886382

/-! ## A088796.P18356714459974372225

`filter[A125881(n+1), A010051(#)]`
-/

namespace A088796.P18356714459974372225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088796.P18356714459974372225

/-! ## A088796.P3123051449763478046

`∩[A000040(n+1), A125881(n+1)]`
-/

namespace A088796.P3123051449763478046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P3123051449763478046

/-! ## A088796.P10080328074100637267

`∩[A008578(n+1), A125881(n+1)]`
-/

namespace A088796.P10080328074100637267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P10080328074100637267

/-! ## A088796.P8079286074968648547

`∩[A045344(n+1), A125881(n+1)]`
-/

namespace A088796.P8079286074968648547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P8079286074968648547

/-! ## A088796.P784407940184912047

`∩[A045346(n+1), A125881(n+1)]`
-/

namespace A088796.P784407940184912047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P784407940184912047

/-! ## A088796.P3833524527938226282

`∩[A045348(n+1), A125881(n+1)]`
-/

namespace A088796.P3833524527938226282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P3833524527938226282

/-! ## A088796.P1398302810408752219

`∩[A045360(n+1), A125881(n+1)]`
-/

namespace A088796.P1398302810408752219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P1398302810408752219

/-! ## A088796.P5080631362661055996

`∩[A125881(n+1), A158611(n+1)]`
-/

namespace A088796.P5080631362661055996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P5080631362661055996

/-! ## A088796.P9002078315583466010

`∩[A125881(n+1), A182986(n+1)]`
-/

namespace A088796.P9002078315583466010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P9002078315583466010

/-! ## A088796.P11201014333743571122

`∩[A125881(n+1), A326715(n+1)]`
-/

namespace A088796.P11201014333743571122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P11201014333743571122

/-! ## A088796.P9905834951175085226

`record[A020639(A125881(A000027(n+1)))]`
-/

namespace A088796.P9905834951175085226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A125881 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088796.P9905834951175085226

/-! ## A088796.P7107014124105820590

`∩[A125881(n+1), A176165(n+1)]`
-/

namespace A088796.P7107014124105820590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088796.P7107014124105820590

/-! ## A088796.P12968086796071936331

`record[A020639(A125881(A008619(n)))]`
-/

namespace A088796.P12968086796071936331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A125881 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088796.P12968086796071936331

/-! ## A088796.P877595354614254424

`filter[A125881(n+1), A080339(#)]`
-/

namespace A088796.P877595354614254424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A088796.P877595354614254424

/-!
# A088797: Numbers n > 2 such that n divides the concatenation of n-2 and n-1.

The programs for A088797, there is no canonical definition to state claims against.
-/

/-! ## A088797.P7870529484775227933

`A281232(n+1)+2`
-/

namespace A088797.P7870529484775227933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281232 (n + 1) + 2

end

end A088797.P7870529484775227933

/-! ## A088797.P9763449938730434848

`or(2, A281232(A077168(n)))`
-/

namespace A088797.P9763449938730434848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A281232 (A077168 n).toNat)

end

end A088797.P9763449938730434848

/-! ## A088797.P14191978906968907429

`∏{p}[1-A002280(n), #]+2`
-/

namespace A088797.P14191978906968907429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 2

end

end A088797.P14191978906968907429

