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
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A366400: G.f. A(x) satisfies A(x) = (1 + x * A(x)^(5/2)) / (1 - x).

The programs for A366400, there is no canonical definition to state claims against.
-/

/-! ## A366400.P9930579616210872946

`∑[A366431(n)]`
-/

namespace A366400.P9930579616210872946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366400.P9930579616210872946

/-! ## A366400.P5470809143684843993

`∑{#}[n, C(n, #)*A366495(#)]`
-/

namespace A366400.P5470809143684843993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A366495 k

end

end A366400.P5470809143684843993

/-! ## A366400.P12269371945842421876

`A366431(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A366400.P12269371945842421876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366431 n + a (A028310 n - 1).toNat

end

end A366400.P12269371945842421876

/-! ## A366400.P2588622764380638364

`∑{#}[n, A219537(#)*A219537(n-#)]`
-/

namespace A366400.P2588622764380638364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A219537 k * A219537 (n - k)

end

end A366400.P2588622764380638364

/-!
# A366401: G.f. A(x) satisfies A(x) = (1 + x * A(x)^(7/2)) / (1 - x).

The programs for A366401, there is no canonical definition to state claims against.
-/

/-! ## A366401.P14735107751690195986

`∑[A366432(n)]`
-/

namespace A366401.P14735107751690195986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366401.P14735107751690195986

/-! ## A366401.P13531603960665777066

`A366432(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A366401.P13531603960665777066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366432 n + a (A023443 n).toNat

end

end A366401.P13531603960665777066

/-! ## A366401.P397514099505291557

`A366432(n)+a(A289439(2*(n+1))-2)` with `a(0)=1`
-/

namespace A366401.P397514099505291557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366432 n + a (A289439 (2 * (n + 1)) - 2).toNat

end

end A366401.P397514099505291557

/-!
# A366402: G.f. A(x) satisfies A(x) = (1 + x * A(x)^(9/2)) / (1 - x).

The programs for A366402, there is no canonical definition to state claims against.
-/

/-! ## A366402.P18429823009615883908

`A195071(∏[2*n+1])`
-/

namespace A366402.P18429823009615883908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A366402.P18429823009615883908

/-!
# A366403: G.f. A(x) satisfies A(x) = (1 + x / sqrt(A(x))) / (1 - x).

The programs for A366403, the canonical program `A366403.P15389599088929656846` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366403 has offset 0).

The definition of A366403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366403.P15389599088929656846

`A099323(n)+A057427(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366403

/-- `A099323(n)+A057427(n)` -/
def P15389599088929656846.Spec : Prop :=
  ∀ n, P15389599088929656846.a n = A366403 n

theorem P15389599088929656846.correct : P15389599088929656846.Spec := by
  intro n
  simp only [A366403]

end A366403

/-! ## A366403.P2423277845871605127

`A099323(n)-A057428(n)`
-/

namespace A366403.P2423277845871605127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n - A057428 n

end

end A366403.P2423277845871605127

namespace A366403

/-- `A099323(n)-A057428(n)` -/
def P2423277845871605127.Spec : Prop :=
  ∀ n, P2423277845871605127.a n = A366403 n

end A366403

/-! ## A366403.P17660558382189635266

`A099323(n)+abs(A070747(n))`
-/

namespace A366403.P17660558382189635266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + |A070747 n|

end

end A366403.P17660558382189635266

namespace A366403

/-- `A099323(n)+abs(A070747(n))` -/
def P17660558382189635266.Spec : Prop :=
  ∀ n, P17660558382189635266.a n = A366403 n

end A366403

/-! ## A366403.P5458179701599246976

`A099323(n)+1-A000007(n)`
-/

namespace A366403.P5458179701599246976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + (1 - A000007 n)

end

end A366403.P5458179701599246976

namespace A366403

/-- `A099323(n)+1-A000007(n)` -/
def P5458179701599246976.Spec : Prop :=
  ∀ n, P5458179701599246976.a n = A366403 n

end A366403

/-! ## A366403.P2585768937748911151

`A040000(n)+A099323(n)-1`
-/

namespace A366403.P2585768937748911151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + (A099323 n - 1)

end

end A366403.P2585768937748911151

namespace A366403

/-- `A040000(n)+A099323(n)-1` -/
def P2585768937748911151.Spec : Prop :=
  ∀ n, P2585768937748911151.a n = A366403 n

end A366403

/-! ## A366403.P15424879957317070348

`(A372023(n)+A040000(n))/2`
-/

namespace A366403.P15424879957317070348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372023 n + A040000 n : ℚ) / 2

end

end A366403.P15424879957317070348

namespace A366403

/-- `(A372023(n)+A040000(n))/2` -/
def P15424879957317070348.Spec : Prop :=
  ∀ n, P15424879957317070348.a n = (A366403 n : ℚ)

end A366403

/-! ## A366403.P3089342909974141894

`A036453(n+1)+A099323(n)-1`
-/

namespace A366403.P3089342909974141894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A099323 n - 1)

end

end A366403.P3089342909974141894

namespace A366403

/-- `A036453(n+1)+A099323(n)-1` -/
def P3089342909974141894.Spec : Prop :=
  ∀ n, P3089342909974141894.a n = A366403 n

end A366403

/-! ## A366403.P2035299330836009093

`(A372023(n)+A036453(n+1))/2`
-/

namespace A366403.P2035299330836009093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372023 n + A036453 (n + 1) : ℚ) / 2

end

end A366403.P2035299330836009093

namespace A366403

/-- `(A372023(n)+A036453(n+1))/2` -/
def P2035299330836009093.Spec : Prop :=
  ∀ n, P2035299330836009093.a n = (A366403 n : ℚ)

end A366403

/-! ## A366403.P10740553326134588498

`∑{#}[n, A099323(#)*A099323(n-#)]`
-/

namespace A366403.P10740553326134588498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A099323 k * A099323 (n - k)

end

end A366403.P10740553326134588498

namespace A366403

/-- `∑{#}[n, A099323(#)*A099323(n-#)]` -/
def P10740553326134588498.Spec : Prop :=
  ∀ n, P10740553326134588498.a n = A366403 n

end A366403

/-! ## A366403.P7690828914086939925

`A099323(n)+char[A334435(n)]`
-/

namespace A366403.P7690828914086939925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A366403.P7690828914086939925

namespace A366403

/-- `A099323(n)+char[A334435(n)]` -/
def P7690828914086939925.Spec : Prop :=
  ∀ n, P7690828914086939925.a n = A366403 n

end A366403

/-!
# A366404: G.f. A(x) satisfies A(x) = (1 + x / A(x)^(3/2)) / (1 - x).

The programs for A366404, there is no canonical definition to state claims against.
-/

/-! ## A366404.P17135911203798140668

`∑[A366433(n)]`
-/

namespace A366404.P17135911203798140668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366404.P17135911203798140668

/-! ## A366404.P4337850453172824556

`∑{#}[n, C(n, #)*A366498(#)]`
-/

namespace A366404.P4337850453172824556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A366498 k

end

end A366404.P4337850453172824556

/-!
# A366405: G.f. A(x) satisfies A(x) = (1 + x / A(x)^(5/2)) / (1 - x).

The programs for A366405, there is no canonical definition to state claims against.
-/

/-! ## A366405.P7078486753827972207

`∑[A366435(n)]`
-/

namespace A366405.P7078486753827972207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366405.P7078486753827972207

/-! ## A366405.P16265488350659096554

`A366435(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A366405.P16265488350659096554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366435 (A028310 n).toNat + a (n - 1)

end

end A366405.P16265488350659096554

/-!
# A366406: G.f. A(x) satisfies A(x) = (1 + x / A(x)^(7/2)) / (1 - x).

The programs for A366406, there is no canonical definition to state claims against.
-/

/-! ## A366406.P14293066778370815888

`∑[A366437(n)]`
-/

namespace A366406.P14293066778370815888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366406.P14293066778370815888

/-!
# A366411: a(n) is the total number of Hamiltonian paths on rectangular grids of size n X k for 1 <= k <= n.

The programs for A366411, there is no canonical definition to state claims against.
-/

/-! ## A366411.P11910000262347704575

`A048103(A048103(n+1)*A385835(n))`
-/

namespace A366411.P11910000262347704575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (A048103 (n + 1) * A385835 n).toNat

end

end A366411.P11910000262347704575

/-!
# A366413: Squarefree composite k such that the smallest nondivisor prime is less than the greatest prime factor, i.e., A053669(k) < A006530(k).

The programs for A366413, the canonical program `A366413.P3991422571957207343` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366413 has offset 1).

The definition of A366413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366413.P3991422571957207343

`∪[A024556(n+1), A073486(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A366413

/-- `∪[A024556(n+1), A073486(n+1)]` -/
def P3991422571957207343.Spec : Prop :=
  ∀ n, (P3991422571957207343.a n : ℤ) = A366413 (n + 1)

theorem P3991422571957207343.correct : P3991422571957207343.Spec := by
  intro n
  simp only [A366413, Nat.add_sub_cancel]

end A366413

/-! ## A366413.P13599838083884674977

`filter[A120944(n+1), A351077(#)]`
-/

namespace A366413.P13599838083884674977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A366413.P13599838083884674977

namespace A366413

/-- `filter[A120944(n+1), A351077(#)]` -/
def P13599838083884674977.Spec : Prop :=
  ∀ n, P13599838083884674977.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P5708314499757600873

`filter[A000469(n+2), A351077(#)]`
-/

namespace A366413.P5708314499757600873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A366413.P5708314499757600873

namespace A366413

/-- `filter[A000469(n+2), A351077(#)]` -/
def P5708314499757600873.Spec : Prop :=
  ∀ n, P5708314499757600873.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P6546645692241374611

`filter[A366882(n+1), A005171(#)]`
-/

namespace A366413.P6546645692241374611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A366413.P6546645692241374611

namespace A366413

/-- `filter[A366882(n+1), A005171(#)]` -/
def P6546645692241374611.Spec : Prop :=
  ∀ n, P6546645692241374611.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P14980707114818443712

`filter[A366882(n+1), A066247(#)]`
-/

namespace A366413.P14980707114818443712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A366413.P14980707114818443712

namespace A366413

/-- `filter[A366882(n+1), A066247(#)]` -/
def P14980707114818443712.Spec : Prop :=
  ∀ n, P14980707114818443712.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P13205634090202445581

`filter[A366882(n+1), A174898(#)]`
-/

namespace A366413.P13205634090202445581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A366413.P13205634090202445581

namespace A366413

/-- `filter[A366882(n+1), A174898(#)]` -/
def P13205634090202445581.Spec : Prop :=
  ∀ n, P13205634090202445581.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P6053749167698255038

`filter[A366882(n+1), A202238(#)]`
-/

namespace A366413.P6053749167698255038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A366413.P6053749167698255038

namespace A366413

/-- `filter[A366882(n+1), A202238(#)]` -/
def P6053749167698255038.Spec : Prop :=
  ∀ n, P6053749167698255038.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P13990507051015087292

`filter[A366882(n+1), A354353(#)]`
-/

namespace A366413.P13990507051015087292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A366413.P13990507051015087292

namespace A366413

/-- `filter[A366882(n+1), A354353(#)]` -/
def P13990507051015087292.Spec : Prop :=
  ∀ n, P13990507051015087292.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P1551810067024564563

`filter[A366882(n+1), A354819(#)]`
-/

namespace A366413.P1551810067024564563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A366413.P1551810067024564563

namespace A366413

/-- `filter[A366882(n+1), A354819(#)]` -/
def P1551810067024564563.Spec : Prop :=
  ∀ n, P1551810067024564563.a n = A366413 (n + 1)

end A366413

/-! ## A366413.P15621376538301408226

`∩[A000469(n+1), A366882(n+1)]`
-/

namespace A366413.P15621376538301408226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P15621376538301408226

namespace A366413

/-- `∩[A000469(n+1), A366882(n+1)]` -/
def P15621376538301408226.Spec : Prop :=
  ∀ n, (P15621376538301408226.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P7425841981699269806

`∩[A002808(n+1), A366882(n+1)]`
-/

namespace A366413.P7425841981699269806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P7425841981699269806

namespace A366413

/-- `∩[A002808(n+1), A366882(n+1)]` -/
def P7425841981699269806.Spec : Prop :=
  ∀ n, (P7425841981699269806.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P11240897210533517316

`∩[A018252(n+1), A366882(n+1)]`
-/

namespace A366413.P11240897210533517316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P11240897210533517316

namespace A366413

/-- `∩[A018252(n+1), A366882(n+1)]` -/
def P11240897210533517316.Spec : Prop :=
  ∀ n, (P11240897210533517316.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P1319500025844489512

`∩[A069169(n+1), A366882(n+1)]`
-/

namespace A366413.P1319500025844489512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P1319500025844489512

namespace A366413

/-- `∩[A069169(n+1), A366882(n+1)]` -/
def P1319500025844489512.Spec : Prop :=
  ∀ n, (P1319500025844489512.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P15642572628489410595

`∩[A097318(n+1), A366882(n+1)]`
-/

namespace A366413.P15642572628489410595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P15642572628489410595

namespace A366413

/-- `∩[A097318(n+1), A366882(n+1)]` -/
def P15642572628489410595.Spec : Prop :=
  ∀ n, (P15642572628489410595.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P13843302933228953951

`∩[A344585(n+1), A366882(n+1)]`
-/

namespace A366413.P13843302933228953951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P13843302933228953951

namespace A366413

/-- `∩[A344585(n+1), A366882(n+1)]` -/
def P13843302933228953951.Spec : Prop :=
  ∀ n, (P13843302933228953951.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P17420836492240280353

`∩[A057714(n+1), A366882(n+1)]`
-/

namespace A366413.P17420836492240280353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P17420836492240280353

namespace A366413

/-- `∩[A057714(n+1), A366882(n+1)]` -/
def P17420836492240280353.Spec : Prop :=
  ∀ n, (P17420836492240280353.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P9372941791571000237

`∩[A048943(n+1), A366882(n+1)]`
-/

namespace A366413.P9372941791571000237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P9372941791571000237

namespace A366413

/-- `∩[A048943(n+1), A366882(n+1)]` -/
def P9372941791571000237.Spec : Prop :=
  ∀ n, (P9372941791571000237.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P696648631236453330

`∩[A085232(n+1), A366882(n+1)]`
-/

namespace A366413.P696648631236453330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P696648631236453330

namespace A366413

/-- `∩[A085232(n+1), A366882(n+1)]` -/
def P696648631236453330.Spec : Prop :=
  ∀ n, (P696648631236453330.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P9960022685083253987

`∩[A106543(n+1), A366882(n+1)]`
-/

namespace A366413.P9960022685083253987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P9960022685083253987

namespace A366413

/-- `∩[A106543(n+1), A366882(n+1)]` -/
def P9960022685083253987.Spec : Prop :=
  ∀ n, (P9960022685083253987.a n : ℤ) = A366413 (n + 1)

end A366413

/-! ## A366413.P13418618488571875344

`∩[A024619(n+1), A366882(n+1)]`
-/

namespace A366413.P13418618488571875344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P13418618488571875344

namespace A366413

/-- `∩[A024619(n+1), A366882(n+1)]` -/
def P13418618488571875344.Spec : Prop :=
  ∀ n, (P13418618488571875344.a n : ℤ) = A366413 (n + 1)

end A366413

/-!
# A366414: Primes p such that p and the four previous primes are in arithmetic progression.

The programs for A366414, there is no canonical definition to state claims against.
-/

/-! ## A366414.P10878060663370770

`A059044(n+1)+120`
-/

namespace A366414.P10878060663370770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059044 (n + 1) + 120

end

end A366414.P10878060663370770

/-!
# A366415: a(n) is the number of exterior top arches (no covering arch) for semi-meanders in generation n+1 that are generated by semi-meanders with n top arches and floor(n/2) exterior top arches using the exterior arch splitting algorithm.

The programs for A366415, the canonical program `A366415.P18405746556751327972` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366415 has offset 4).

The definition of A366415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366415.P18405746556751327972

`ogf((10+24x-26x^2-24x^3+12x^4)/(1-x-7x^2+7x^3+18x^4-18x^5-20x^6+20x^7+8x^8-8x^9))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366415

/-- `ogf((10+24x-26x^2-24x^3+12x^4)/(1-x-7x^2+7x^3+18x^4-18x^5-20x^6+20x^7+8x^8-8x^9))` -/
def P18405746556751327972.Spec : Prop :=
  ∀ n, P18405746556751327972.a n = A366415 (n + 4)

theorem P18405746556751327972.correct : P18405746556751327972.Spec := by
  intro n
  simp only [A366415, Nat.add_sub_cancel]

end A366415

/-!
# A366416: a(n) is the first prime that starts and ends with at least n 1's (in base 10).

The programs for A366416, there is no canonical definition to state claims against.
-/

/-! ## A366416.P2827269528013647677

`A071234(5*A002275(n))`
-/

namespace A366416.P2827269528013647677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071234 (5 * A002275 n).toNat

end

end A366416.P2827269528013647677

/-!
# A366417: a(n) = A006571(A005117(n)).

The programs for A366417, there is no canonical definition to state claims against.
-/

/-! ## A366417.P7819110008142993241

`A006571(A005117(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366417.P7819110008142993241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A005117 (n + 1)).toNat

end

end A366417.P7819110008142993241

/-! ## A366417.P968064841450395311

`A006571(A367801(n+1))`
-/

namespace A366417.P968064841450395311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A367801 (n + 1)).toNat

end

end A366417.P968064841450395311

/-! ## A366417.P11487374220944667500

`A006571(A076144(n+2))`
-/

namespace A366417.P11487374220944667500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A076144 (n + 2)).toNat

end

end A366417.P11487374220944667500

/-! ## A366417.P1909386675899050690

`A006571(record[A007913(n+1)])`
-/

namespace A366417.P1909386675899050690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366417.P1909386675899050690

/-! ## A366417.P7436242831554364595

`A006571(record[A007947(n+1)])`
-/

namespace A366417.P7436242831554364595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366417.P7436242831554364595

/-! ## A366417.P12519617931946965025

`A006571(record[A053166(n+1)])`
-/

namespace A366417.P12519617931946965025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366417.P12519617931946965025

/-! ## A366417.P8388652162226914421

`A366450(A005117(2*n+1-n))`
-/

namespace A366417.P8388652162226914421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366450 (A005117 (2 * n + 1 - n)).toNat

end

end A366417.P8388652162226914421

/-!
# A366418: Number of distinct integers of the form (x^n + y^n) mod n.

The programs for A366418, there is no canonical definition to state claims against.
-/

/-! ## A366418.P1543451333864087368

`A016969(n)%(A026492(floor(2^(n-1)))*A055653(n+1))+1`
-/

namespace A366418.P1543451333864087368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A026492 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat * A055653 (n + 1)) + 1

end

end A366418.P1543451333864087368

/-! ## A366418.P5959922937443870275

`A277886(A187829(n+1))/A003557(A003557(n+1))`
-/

namespace A366418.P5959922937443870275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277886 (A187829 (n + 1)).toNat : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ)

end

end A366418.P5959922937443870275

/-! ## A366418.P9243508900356673794

`abs(A051516(A323014(n+1)+2^n+2)-n)+1`
-/

namespace A366418.P9243508900356673794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051516 (A323014 (n + 1) + (2 ^ n + 2 : ℤ)).toNat - (n : ℤ)| + 1

end

end A366418.P9243508900356673794

/-! ## A366418.P8220590094276679663

`A055653(n+1)-A318983(A019460(n))`
-/

namespace A366418.P8220590094276679663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1) - A318983 (A019460 n).toNat

end

end A366418.P8220590094276679663

/-! ## A366418.P7137588462797686455

`A007947(n+1)+A014692(A017030(n))%A032742(n+1)`
-/

namespace A366418.P7137588462797686455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + Int.tmod (A014692 (A017030 n).toNat) (A032742 (n + 1))

end

end A366418.P7137588462797686455

/-!
# A366420: Number of distinct integers of the form (x^n + y^n) mod n^4.

The programs for A366420, there is no canonical definition to state claims against.
-/

/-! ## A366420.P8117302546718922377

`A329636((n+1)*A076112(n+1))`
-/

namespace A366420.P8117302546718922377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329636 ((n + 1 : ℤ) * A076112 (n + 1)).toNat

end

end A366420.P8117302546718922377

/-!
# A366421: a(n) is the floor of the n-th improper fraction (including the ones of the type n/n) sorted by increasing numerator+denominator, then by numerator.

The programs for A366421, the canonical program `A366421.P2566327463954372035` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366421 has offset 1).

The definition of A366421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366421.P2566327463954372035

`floor(A138099(n+1)/(A216607(n+1)+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366421

/-- `floor(A138099(n+1)/(A216607(n+1)+1))` -/
def P2566327463954372035.Spec : Prop :=
  ∀ n, P2566327463954372035.a n = A366421 (n + 1)

theorem P2566327463954372035.correct : P2566327463954372035.Spec := by
  intro n
  simp only [A366421, Nat.add_sub_cancel]

end A366421

/-! ## A366421.P2698808417459774671

`A010783(lt[floor(sqrt(8*n+1))%2, 1]+1)-1`
-/

namespace A366421.P2698808417459774671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) - 1

end

end A366421.P2698808417459774671

namespace A366421

/-- `A010783(lt[floor(sqrt(8*n+1))%2, 1]+1)-1` -/
def P2698808417459774671.Spec : Prop :=
  ∀ n, P2698808417459774671.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P8339271981475557100

`A010766(A091995(1+n))`
-/

namespace A366421.P8339271981475557100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A091995 (1 + n)).toNat

end

end A366421.P8339271981475557100

namespace A366421

/-- `A010766(A091995(1+n))` -/
def P8339271981475557100.Spec : Prop :=
  ∀ n, P8339271981475557100.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P2566133220572337882

`A010783(comp[A245300(n)]+1)-1`
-/

namespace A366421.P2566133220572337882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 1

end

end A366421.P2566133220572337882

namespace A366421

/-- `A010783(comp[A245300(n)]+1)-1` -/
def P2566133220572337882.Spec : Prop :=
  ∀ n, P2566133220572337882.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P250211868006715899

`A010783(eq[1, A068344(n)]+1)-1`
-/

namespace A366421.P250211868006715899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A366421.P250211868006715899

namespace A366421

/-- `A010783(eq[1, A068344(n)]+1)-1` -/
def P250211868006715899.Spec : Prop :=
  ∀ n, P250211868006715899.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P2067864899382078583

`A010783(eq[1, A340507(n)]+1)-1`
-/

namespace A366421.P2067864899382078583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A366421.P2067864899382078583

namespace A366421

/-- `A010783(eq[1, A340507(n)]+1)-1` -/
def P2067864899382078583.Spec : Prop :=
  ∀ n, P2067864899382078583.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P3846350154967529206

`A010783(lt[A052553(n), 1]+1)-1`
-/

namespace A366421.P3846350154967529206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A366421.P3846350154967529206

namespace A366421

/-- `A010783(lt[A052553(n), 1]+1)-1` -/
def P3846350154967529206.Spec : Prop :=
  ∀ n, P3846350154967529206.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P8948530472005827359

`A010783(lt[A061896(n), 1]+1)-1`
-/

namespace A366421.P8948530472005827359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A366421.P8948530472005827359

namespace A366421

/-- `A010783(lt[A061896(n), 1]+1)-1` -/
def P8948530472005827359.Spec : Prop :=
  ∀ n, P8948530472005827359.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P14407124958705374123

`A010783(lt[A201701(n), 1]+1)-1`
-/

namespace A366421.P14407124958705374123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A366421.P14407124958705374123

namespace A366421

/-- `A010783(lt[A201701(n), 1]+1)-1` -/
def P14407124958705374123.Spec : Prop :=
  ∀ n, P14407124958705374123.a n = A366421 (n + 1)

end A366421

/-! ## A366421.P9437460809716259513

`A010783(lt[A202023(n), 1]+1)-1`
-/

namespace A366421.P9437460809716259513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A366421.P9437460809716259513

namespace A366421

/-- `A010783(lt[A202023(n), 1]+1)-1` -/
def P9437460809716259513.Spec : Prop :=
  ∀ n, P9437460809716259513.a n = A366421 (n + 1)

end A366421

/-!
# A366423: Multiplicative with a(p^e) = p^(e+1-p) if p|e, and p^(e+1) otherwise.

The programs for A366423, there is no canonical definition to state claims against.
-/

/-! ## A366423.P5893360313729741234

`(1+n)*∏{p}[n+1, #]/A212121(xor(n+1, n))`
-/

namespace A366423.P5893360313729741234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 + n) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A212121 (Nat.xor (n + 1) n) : ℚ)

end

end A366423.P5893360313729741234

/-! ## A366423.P13781561944343497567

`A011262(n+1)^A392468(A048723(n))`
-/

namespace A366423.P13781561944343497567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) ^ (A392468 (A048723 n).toNat : ℤ)

end

end A366423.P13781561944343497567

/-! ## A366423.P17963564601747931248

`((n+1)*∏{p}[n+1, #])%A082796(A359020(n))`
-/

namespace A366423.P17963564601747931248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A082796 (A359020 n).toNat)

end

end A366423.P17963564601747931248

/-! ## A366423.P7065672116475157170

`(n+1)*∏{p}[n+1, #]/A356227(A326155(3*(n+1)))`
-/

namespace A366423.P7065672116475157170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A356227 (A326155 (3 * (n + 1))).toNat : ℚ)

end

end A366423.P7065672116475157170

/-! ## A366423.P10030968262773201940

`A011262(n+1)^A027907(A008304(n+1))`
-/

namespace A366423.P10030968262773201940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) ^ (A027907 (A008304 (n + 1)).toNat : ℤ)

end

end A366423.P10030968262773201940

/-!
# A366424: The Bo Diddley beat. Periodic musical rhythm, embedded into a sequence of measured regular units of duration for both notes and rests. All terms except a(3 + 6*k) = 2 mark the lengths of notes. a(3 + 6*k) = 2 being a single rest of length 2 within each period of 6, where k >= 0.

The programs for A366424, the canonical program `A366424.P9610627840671283252` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366424 has offset 0).

The definition of A366424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366424.P9610627840671283252

`a(n-6)` with `a(0)=3, a(1)=3, a(2)=2, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366424

/-- `a(n-6)` -/
def P9610627840671283252.Spec : Prop :=
  ∀ n, (P9610627840671283252.a n : ℤ) = A366424 n

theorem P9610627840671283252.correct : P9610627840671283252.Spec := by
  intro n
  simp only [A366424]

end A366424

/-!
# A366427: a(n) = denominator(denominator(Bernoulli''(n, x)) / denominator(Bernoulli(n, 1))).

The programs for A366427, there is no canonical definition to state claims against.
-/

/-! ## A366427.P15444448936672686242

`gcd(A027642(n), A366572(n))`
-/

namespace A366427.P15444448936672686242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A366572 n)

end

end A366427.P15444448936672686242

/-! ## A366427.P6312450175984750964

`A007947(A050932(n)*A089026(n+1))`
-/

namespace A366427.P6312450175984750964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A050932 n * A089026 (n + 1)).toNat

end

end A366427.P6312450175984750964

/-! ## A366427.P7365124106349165600

`A055231(A050932(n)*A089026(n+1))`
-/

namespace A366427.P7365124106349165600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A050932 n * A089026 (n + 1)).toNat

end

end A366427.P7365124106349165600

/-! ## A366427.P6413089040384631990

`A083346(A050932(n)*A089026(n+1))`
-/

namespace A366427.P6413089040384631990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A050932 n * A089026 (n + 1)).toNat

end

end A366427.P6413089040384631990

/-! ## A366427.P2491876457736813641

`A000027(A027642(n)/A166123(n+1))`
-/

namespace A366427.P2491876457736813641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A027642 n : ℚ) / (A166123 (n + 1) : ℚ))).toNat

end

end A366427.P2491876457736813641

/-!
# A366428: Hypotenuse numbers w of Pythagorean triples (u, v, w) for which (u^2, v^2, w^2) is an "abc-hit".

The programs for A366428, there is no canonical definition to state claims against.
-/

/-! ## A366428.P15103915828406287830

`A208853(A238902(n+1)+A136356(n+1))`
-/

namespace A366428.P15103915828406287830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208853 (A238902 (n + 1) + A136356 (n + 1)).toNat

end

end A366428.P15103915828406287830

/-!
# A366429: a(n) = maximum degree of vertices in the distance graph of the partitions of n.

The programs for A366429, the canonical program `A366429.P11556893607212212418` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366429 has offset 1).

The definition of A366429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366429.P11556893607212212418

`2*C(A002024(n+2)-1, 2)+A000267(A002262(n+1))-1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366429

/-- `2*C(A002024(n+2)-1, 2)+A000267(A002262(n+1))-1` -/
def P11556893607212212418.Spec : Prop :=
  ∀ n, P11556893607212212418.a n = A366429 (n + 1)

theorem P11556893607212212418.correct : P11556893607212212418.Spec := by
  intro n
  simp only [A366429, Nat.add_sub_cancel]

end A366429

/-!
# A366430: Triprimes whose reversal is also a triprime.

The programs for A366430, there is no canonical definition to state claims against.
-/

/-! ## A366430.P11943357113867547814

`∪[A046329(n+1), A109023(n+1)]`
-/

namespace A366430.P11943357113867547814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366430.P11943357113867547814

/-!
# A366431: G.f. A(x) satisfies A(x) = 1 + x * (A(x) / (1 - x))^(5/2).

The programs for A366431, there is no canonical definition to state claims against.
-/

/-! ## A366431.P10486068454572585716

`A261093(A255672(n)-A010815(3*(n+1)))`
-/

namespace A366431.P10486068454572585716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 (A255672 n - A010815 (3 * (n + 1))).toNat

end

end A366431.P10486068454572585716

/-! ## A366431.P5007784249976041196

`A064042(A028495(3*n)+A001222(n+5))`
-/

namespace A366431.P5007784249976041196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064042 (A028495 (3 * n) + A001222 (n + 5)).toNat

end

end A366431.P5007784249976041196

/-!
# A366432: G.f. A(x) satisfies A(x) = 1 + x * (A(x) / (1 - x))^(7/2).

The programs for A366432, there is no canonical definition to state claims against.
-/

/-! ## A366432.P7830168192356760499

`A004526(3*A365182(n))`
-/

namespace A366432.P7830168192356760499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A365182 n).toNat

end

end A366432.P7830168192356760499

/-! ## A366432.P10942249378543844850

`A245710(3*A365182(n))`
-/

namespace A366432.P10942249378543844850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (3 * A365182 n).toNat

end

end A366432.P10942249378543844850

/-!
# A366435: G.f. A(x) satisfies A(x) = 1 + x * ((1 - x) / A(x))^(5/2).

The programs for A366435, there is no canonical definition to state claims against.
-/

/-! ## A366435.P8598539089208409137

`A325313(A361142(n)+1+C(n, 2))`
-/

namespace A366435.P8598539089208409137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (A361142 n + (1 + Nat.choose n 2 : ℤ)).toNat

end

end A366435.P8598539089208409137

/-!
# A366436: G.f. A(x) satisfies A(x) = 1 + x * ((1 - x) / A(x))^3.

The programs for A366436, there is no canonical definition to state claims against.
-/

/-! ## A366436.P6377977176235824900

`A030298(A252727(n))*A120980(n)`
-/

namespace A366436.P6377977176235824900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A252727 n).toNat * A120980 n

end

end A366436.P6377977176235824900

/-!
# A366437: G.f. A(x) satisfies A(x) = 1 + x * ((1 - x) / A(x))^(7/2).

The programs for A366437, there is no canonical definition to state claims against.
-/

/-! ## A366437.P17754897271687093898

`A129263(A027480(n))*A129267(2*(n+1))`
-/

namespace A366437.P17754897271687093898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129263 (A027480 n).toNat * A129267 (2 * (n + 1))

end

end A366437.P17754897271687093898

/-!
# A366438: The number of divisors of the exponentially odd numbers (A268335).

The programs for A366438, the canonical program `A366438.P4907338318269729299` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366438 has offset 1).

The definition of A366438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366438.P4907338318269729299

`A000005(A268335(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366438

/-- `A000005(A268335(n+1))` -/
def P4907338318269729299.Spec : Prop :=
  ∀ n, P4907338318269729299.a n = A366438 (n + 1)

theorem P4907338318269729299.correct : P4907338318269729299.Spec := by
  intro n
  simp only [A366438, Nat.add_sub_cancel]

end A366438

/-! ## A366438.P8018752441920065368

`∏{e}[A268335(n+1), #+1]`
-/

namespace A366438.P8018752441920065368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366438.P8018752441920065368

namespace A366438

/-- `∏{e}[A268335(n+1), #+1]` -/
def P8018752441920065368.Spec : Prop :=
  ∀ n, (P8018752441920065368.a n : ℤ) = A366438 (n + 1)

end A366438

/-! ## A366438.P17897944967156402124

`A000005(sqrt(A374458(n+1)))`
-/

namespace A366438.P17897944967156402124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A374458 (n + 1) : ℝ))).toNat

end

end A366438.P17897944967156402124

namespace A366438

/-- `A000005(sqrt(A374458(n+1)))` -/
def P17897944967156402124.Spec : Prop :=
  ∀ n, P17897944967156402124.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P8929754939829110615

`A000005(record[A331737(1+n)])`
-/

namespace A366438.P8929754939829110615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366438.P8929754939829110615

namespace A366438

/-- `A000005(record[A331737(1+n)])` -/
def P8929754939829110615.Spec : Prop :=
  ∀ n, P8929754939829110615.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P6555776451261385508

`A366534(n+1)*A380323(n+1)`
-/

namespace A366438.P6555776451261385508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366534 (n + 1) * A380323 (n + 1)

end

end A366438.P6555776451261385508

namespace A366438

/-- `A366534(n+1)*A380323(n+1)` -/
def P6555776451261385508.Spec : Prop :=
  ∀ n, P6555776451261385508.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P10486256432667672754

`A000005(record[A350389(n+1)])`
-/

namespace A366438.P10486256432667672754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366438.P10486256432667672754

namespace A366438

/-- `A000005(record[A350389(n+1)])` -/
def P10486256432667672754.Spec : Prop :=
  ∀ n, P10486256432667672754.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P12431146901800453959

`A000005(record[A350390(n+1)])`
-/

namespace A366438.P12431146901800453959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366438.P12431146901800453959

namespace A366438

/-- `A000005(record[A350390(n+1)])` -/
def P12431146901800453959.Spec : Prop :=
  ∀ n, P12431146901800453959.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P3933065895871321329

`A000005(record[A390371(n+1)])`
-/

namespace A366438.P3933065895871321329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366438.P3933065895871321329

namespace A366438

/-- `A000005(record[A390371(n+1)])` -/
def P3933065895871321329.Spec : Prop :=
  ∀ n, P3933065895871321329.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P8261910307369628838

`A286324(A268335(2*n+1-n))`
-/

namespace A366438.P8261910307369628838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A268335 (2 * n + 1 - n)).toNat

end

end A366438.P8261910307369628838

namespace A366438

/-- `A286324(A268335(2*n+1-n))` -/
def P8261910307369628838.Spec : Prop :=
  ∀ n, P8261910307369628838.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P10774522021381900228

`A365402(A268335(A004277(n+1)-(n+1)))`
-/

namespace A366438.P10774522021381900228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (A268335 (A004277 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A366438.P10774522021381900228

namespace A366438

/-- `A365402(A268335(A004277(n+1)-(n+1)))` -/
def P10774522021381900228.Spec : Prop :=
  ∀ n, P10774522021381900228.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P4897669609472625344

`A365402(A268335(A000290(n+1)/(n+1)))`
-/

namespace A366438.P4897669609472625344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (A268335 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A366438.P4897669609472625344

namespace A366438

/-- `A365402(A268335(A000290(n+1)/(n+1)))` -/
def P4897669609472625344.Spec : Prop :=
  ∀ n, P4897669609472625344.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P1345593476687059060

`∏{e}[A367406(n+1), #]`
-/

namespace A366438.P1345593476687059060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366438.P1345593476687059060

namespace A366438

/-- `∏{e}[A367406(n+1), #]` -/
def P1345593476687059060.Spec : Prop :=
  ∀ n, (P1345593476687059060.a n : ℤ) = A366438 (n + 1)

end A366438

/-! ## A366438.P18121453050623168686

`∏{e}[A367407(n+1)², #]`
-/

namespace A366438.P18121453050623168686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366438.P18121453050623168686

namespace A366438

/-- `∏{e}[A367407(n+1)², #]` -/
def P18121453050623168686.Spec : Prop :=
  ∀ n, (P18121453050623168686.a n : ℤ) = A366438 (n + 1)

end A366438

/-! ## A366438.P14774301400189294659

`A005361(A367406(n+1))`
-/

namespace A366438.P14774301400189294659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A367406 (n + 1)).toNat

end

end A366438.P14774301400189294659

namespace A366438

/-- `A005361(A367406(n+1))` -/
def P14774301400189294659.Spec : Prop :=
  ∀ n, P14774301400189294659.a n = A366438 (n + 1)

end A366438

/-! ## A366438.P17199982690502018396

`A400392(A268335(A071974((n+1)²)))`
-/

namespace A366438.P17199982690502018396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400392 (A268335 (A071974 ((n + 1) ^ 2)).toNat).toNat

end

end A366438.P17199982690502018396

namespace A366438

/-- `A400392(A268335(A071974((n+1)²)))` -/
def P17199982690502018396.Spec : Prop :=
  ∀ n, P17199982690502018396.a n = A366438 (n + 1)

end A366438

/-!
# A366439: The sum of divisors of the exponentially odd numbers (A268335).

The programs for A366439, the canonical program `A366439.P9566324691206801463` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366439 has offset 1).

The definition of A366439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366439.P9566324691206801463

`A000203(A268335(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366439

/-- `A000203(A268335(n+1))` -/
def P9566324691206801463.Spec : Prop :=
  ∀ n, P9566324691206801463.a n = A366439 (n + 1)

theorem P9566324691206801463.correct : P9566324691206801463.Spec := by
  intro n
  simp only [A366439, Nat.add_sub_cancel]

end A366439

/-! ## A366439.P5842855889765716420

`∑{d}[A268335(n+1), #]`
-/

namespace A366439.P5842855889765716420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366439.P5842855889765716420

namespace A366439

/-- `∑{d}[A268335(n+1), #]` -/
def P5842855889765716420.Spec : Prop :=
  ∀ n, (P5842855889765716420.a n : ℤ) = A366439 (n + 1)

end A366439

/-! ## A366439.P1981315899383156053

`∑{d}[record[A331737(1+n)], #]`
-/

namespace A366439.P1981315899383156053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366439.P1981315899383156053

namespace A366439

/-- `∑{d}[record[A331737(1+n)], #]` -/
def P1981315899383156053.Spec : Prop :=
  ∀ n, (P1981315899383156053.a n : ℤ) = A366439 (n + 1)

end A366439

/-! ## A366439.P4995097949763217946

`A380324(n+1)*A380326(n+1)`
-/

namespace A366439.P4995097949763217946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380324 (n + 1) * A380326 (n + 1)

end

end A366439.P4995097949763217946

namespace A366439

/-- `A380324(n+1)*A380326(n+1)` -/
def P4995097949763217946.Spec : Prop :=
  ∀ n, P4995097949763217946.a n = A366439 (n + 1)

end A366439

/-! ## A366439.P6863475357215750196

`A351569(A268335(2*n+1-n))`
-/

namespace A366439.P6863475357215750196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A268335 (2 * n + 1 - n)).toNat

end

end A366439.P6863475357215750196

namespace A366439

/-- `A351569(A268335(2*n+1-n))` -/
def P6863475357215750196.Spec : Prop :=
  ∀ n, P6863475357215750196.a n = A366439 (n + 1)

end A366439

/-! ## A366439.P1451459374073072324

`A000203(eq[A336551(n+1), A336642(n+1)]+1)`
-/

namespace A366439.P1451459374073072324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A366439.P1451459374073072324

namespace A366439

/-- `A000203(eq[A336551(n+1), A336642(n+1)]+1)` -/
def P1451459374073072324.Spec : Prop :=
  ∀ n, P1451459374073072324.a n = A366439 (n + 1)

end A366439

/-! ## A366439.P17384893999313139275

`∑{d}[record[A350389(n+1)], #]`
-/

namespace A366439.P17384893999313139275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366439.P17384893999313139275

namespace A366439

/-- `∑{d}[record[A350389(n+1)], #]` -/
def P17384893999313139275.Spec : Prop :=
  ∀ n, (P17384893999313139275.a n : ℤ) = A366439 (n + 1)

end A366439

/-! ## A366439.P12777720533653584070

`∑{d}[record[A350390(n+1)], #]`
-/

namespace A366439.P12777720533653584070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366439.P12777720533653584070

namespace A366439

/-- `∑{d}[record[A350390(n+1)], #]` -/
def P12777720533653584070.Spec : Prop :=
  ∀ n, (P12777720533653584070.a n : ℤ) = A366439 (n + 1)

end A366439

/-! ## A366439.P9898074896414941360

`A188999(A268335(2*n+1-n))`
-/

namespace A366439.P9898074896414941360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (A268335 (2 * n + 1 - n)).toNat

end

end A366439.P9898074896414941360

namespace A366439

/-- `A188999(A268335(2*n+1-n))` -/
def P9898074896414941360.Spec : Prop :=
  ∀ n, P9898074896414941360.a n = A366439 (n + 1)

end A366439

/-! ## A366439.P6218940740379853818

`A400396(A268335(A071974((n+1)²)))`
-/

namespace A366439.P6218940740379853818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400396 (A268335 (A071974 ((n + 1) ^ 2)).toNat).toNat

end

end A366439.P6218940740379853818

namespace A366439

/-- `A400396(A268335(A071974((n+1)²)))` -/
def P6218940740379853818.Spec : Prop :=
  ∀ n, P6218940740379853818.a n = A366439 (n + 1)

end A366439

/-!
# A366440: The sum of divisors of the cubefree numbers (A004709).

The programs for A366440, the canonical program `A366440.P8490838854557306201` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366440 has offset 1).

The definition of A366440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366440.P8490838854557306201

`A000203(A004709(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366440

/-- `A000203(A004709(n+1))` -/
def P8490838854557306201.Spec : Prop :=
  ∀ n, P8490838854557306201.a n = A366440 (n + 1)

theorem P8490838854557306201.correct : P8490838854557306201.Spec := by
  intro n
  simp only [A366440, Nat.add_sub_cancel]

end A366440

/-! ## A366440.P6271611183992687533

`∑{d}[A004709(n+1), #]`
-/

namespace A366440.P6271611183992687533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366440.P6271611183992687533

namespace A366440

/-- `∑{d}[A004709(n+1), #]` -/
def P6271611183992687533.Spec : Prop :=
  ∀ n, (P6271611183992687533.a n : ℤ) = A366440 (n + 1)

end A366440

/-! ## A366440.P861894884118754569

`∑{d}[eq[1, A050361(n+1)]+1, #]`
-/

namespace A366440.P861894884118754569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366440.P861894884118754569

namespace A366440

/-- `∑{d}[eq[1, A050361(n+1)]+1, #]` -/
def P861894884118754569.Spec : Prop :=
  ∀ n, (P861894884118754569.a n : ℤ) = A366440 (n + 1)

end A366440

/-! ## A366440.P5772707517694839210

`∑{d}[comp[A046099(n+1)-1]+1, #]`
-/

namespace A366440.P5772707517694839210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366440.P5772707517694839210

namespace A366440

/-- `∑{d}[comp[A046099(n+1)-1]+1, #]` -/
def P5772707517694839210.Spec : Prop :=
  ∀ n, (P5772707517694839210.a n : ℤ) = A366440 (n + 1)

end A366440

/-! ## A366440.P14947146035544716562

`A000203(record[A382903(n+1)])`
-/

namespace A366440.P14947146035544716562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366440.P14947146035544716562

namespace A366440

/-- `A000203(record[A382903(n+1)])` -/
def P14947146035544716562.Spec : Prop :=
  ∀ n, P14947146035544716562.a n = A366440 (n + 1)

end A366440

/-! ## A366440.P12814795031204054591

`∑{d}[record[A007948(n+1)], #]`
-/

namespace A366440.P12814795031204054591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366440.P12814795031204054591

namespace A366440

/-- `∑{d}[record[A007948(n+1)], #]` -/
def P12814795031204054591.Spec : Prop :=
  ∀ n, (P12814795031204054591.a n : ℤ) = A366440 (n + 1)

end A366440

/-! ## A366440.P13468991891532279736

`∑{d}[record[A050985(n+1)], #]`
-/

namespace A366440.P13468991891532279736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366440.P13468991891532279736

namespace A366440

/-- `∑{d}[record[A050985(n+1)], #]` -/
def P13468991891532279736.Spec : Prop :=
  ∀ n, (P13468991891532279736.a n : ℤ) = A366440 (n + 1)

end A366440

/-! ## A366440.P18434477661184021825

`∑{d}[record[A360539(n+1)], #]`
-/

namespace A366440.P18434477661184021825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366440.P18434477661184021825

namespace A366440

/-- `∑{d}[record[A360539(n+1)], #]` -/
def P18434477661184021825.Spec : Prop :=
  ∀ n, (P18434477661184021825.a n : ℤ) = A366440 (n + 1)

end A366440

/-! ## A366440.P217205865563875705

`A000203(record[A050985(n+1)])`
-/

namespace A366440.P217205865563875705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366440.P217205865563875705

namespace A366440

/-- `A000203(record[A050985(n+1)])` -/
def P217205865563875705.Spec : Prop :=
  ∀ n, P217205865563875705.a n = A366440 (n + 1)

end A366440

/-! ## A366440.P14393714613295960289

`A000203(record[A360539(n+1)])`
-/

namespace A366440.P14393714613295960289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366440.P14393714613295960289

namespace A366440

/-- `A000203(record[A360539(n+1)])` -/
def P14393714613295960289.Spec : Prop :=
  ∀ n, P14393714613295960289.a n = A366440 (n + 1)

end A366440

/-! ## A366440.P3206384927120150400

`A000203(record[A367699(n+1)])`
-/

namespace A366440.P3206384927120150400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366440.P3206384927120150400

namespace A366440

/-- `A000203(record[A367699(n+1)])` -/
def P3206384927120150400.Spec : Prop :=
  ∀ n, P3206384927120150400.a n = A366440 (n + 1)

end A366440

/-! ## A366440.P1906365207629804779

`A073183(A004709(2*n+1-n))`
-/

namespace A366440.P1906365207629804779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073183 (A004709 (2 * n + 1 - n)).toNat

end

end A366440.P1906365207629804779

namespace A366440

/-- `A073183(A004709(2*n+1-n))` -/
def P1906365207629804779.Spec : Prop :=
  ∀ n, P1906365207629804779.a n = A366440 (n + 1)

end A366440

/-! ## A366440.P10471991991207553934

`A366992(A160813(n+1)-A005117(n+1))`
-/

namespace A366440.P10471991991207553934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366992 (A160813 (n + 1) - A005117 (n + 1)).toNat

end

end A366440.P10471991991207553934

namespace A366440

/-- `A366992(A160813(n+1)-A005117(n+1))` -/
def P10471991991207553934.Spec : Prop :=
  ∀ n, P10471991991207553934.a n = A366440 (n + 1)

end A366440

/-!
# A366441: The number of divisors of the 5-rough numbers (A007310).

The programs for A366441, the canonical program `A366441.P11350322075649191036` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366441 has offset 1).

The definition of A366441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366441.P11350322075649191036

`A000005(A007310(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366441

/-- `A000005(A007310(n+1))` -/
def P11350322075649191036.Spec : Prop :=
  ∀ n, P11350322075649191036.a n = A366441 (n + 1)

theorem P11350322075649191036.correct : P11350322075649191036.Spec := by
  intro n
  simp only [A366441, Nat.add_sub_cancel]

end A366441

/-! ## A366441.P17488615612190634759

`∏{e}[lt[3*n, lcm(6, n)], #+1]`
-/

namespace A366441.P17488615612190634759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A366441.P17488615612190634759

namespace A366441

/-- `∏{e}[lt[3*n, lcm(6, n)], #+1]` -/
def P17488615612190634759.Spec : Prop :=
  ∀ n, (P17488615612190634759.a n : ℤ) = A366441 (n + 1)

end A366441

/-! ## A366441.P11358103987333391514

`∏{e}[∑[4/gcd(2, n)]-1, #+1]`
-/

namespace A366441.P11358103987333391514
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A366441.P11358103987333391514

namespace A366441

/-- `∏{e}[∑[4/gcd(2, n)]-1, #+1]` -/
def P11358103987333391514.Spec : Prop :=
  ∀ n, (P11358103987333391514.a n : ℤ) = A366441 (n + 1)

end A366441

/-! ## A366441.P6554301869044067486

`∏{e}[1+n+and(1, n)+2*n, #+1]`
-/

namespace A366441.P6554301869044067486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + (Nat.land 1 n + 2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A366441.P6554301869044067486

namespace A366441

/-- `∏{e}[1+n+and(1, n)+2*n, #+1]` -/
def P6554301869044067486.Spec : Prop :=
  ∀ n, (P6554301869044067486.a n : ℤ) = A366441 (n + 1)

end A366441

/-! ## A366441.P5097774555664841418

`A000005(or(1, 1+3*n))`
-/

namespace A366441.P5097774555664841418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 (1 + 3 * n))

end

end A366441.P5097774555664841418

namespace A366441

/-- `A000005(or(1, 1+3*n))` -/
def P5097774555664841418.Spec : Prop :=
  ∀ n, P5097774555664841418.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P3388738970823184564

`A000005(sqrt(filter[n², #%6]))`
-/

namespace A366441.P3388738970823184564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => f1 j % 6 = 1) n) : ℝ))).toNat

end

end A366441.P3388738970823184564

namespace A366441

/-- `A000005(sqrt(filter[n², #%6]))` -/
def P3388738970823184564.Spec : Prop :=
  ∀ n, P3388738970823184564.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P7461373602675929732

`∑{d}[A007310(n+1), C(#, #)]`
-/

namespace A366441.P7461373602675929732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose d d

end

end A366441.P7461373602675929732

namespace A366441

/-- `∑{d}[A007310(n+1), C(#, #)]` -/
def P7461373602675929732.Spec : Prop :=
  ∀ n, (P7461373602675929732.a n : ℤ) = A366441 (n + 1)

end A366441

/-! ## A366441.P2626029984546762063

`A000005(2-or(1, -(3*n)))`
-/

namespace A366441.P2626029984546762063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 - Int.lor 1 (-(3 * n : ℤ))).toNat

end

end A366441.P2626029984546762063

namespace A366441

/-- `A000005(2-or(1, -(3*n)))` -/
def P2626029984546762063.Spec : Prop :=
  ∀ n, P2626029984546762063.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P4618045530164553723

`A000005(∑[4/gcd(2, n)]-1)`
-/

namespace A366441.P4618045530164553723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A366441.P4618045530164553723

namespace A366441

/-- `A000005(∑[4/gcd(2, n)]-1)` -/
def P4618045530164553723.Spec : Prop :=
  ∀ n, P4618045530164553723.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P7975148261136438178

`A000005(∑[3^(n%2)]+n)`
-/

namespace A366441.P7975148261136438178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A366441.P7975148261136438178

namespace A366441

/-- `A000005(∑[3^(n%2)]+n)` -/
def P7975148261136438178.Spec : Prop :=
  ∀ n, P7975148261136438178.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P15400494540384017869

`A000005(∑[C(3, and(1, n))]+n)`
-/

namespace A366441.P15400494540384017869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A366441.P15400494540384017869

namespace A366441

/-- `A000005(∑[C(3, and(1, n))]+n)` -/
def P15400494540384017869.Spec : Prop :=
  ∀ n, P15400494540384017869.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P2402530243558070146

`A000005(comp[n*3^and(1, n)])`
-/

namespace A366441.P2402530243558070146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.land 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A366441.P2402530243558070146

namespace A366441

/-- `A000005(comp[n*3^and(1, n)])` -/
def P2402530243558070146.Spec : Prop :=
  ∀ n, P2402530243558070146.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P736891793479959581

`A000005(Δ[A032528(n)])`
-/

namespace A366441.P736891793479959581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A366441.P736891793479959581

namespace A366441

/-- `A000005(Δ[A032528(n)])` -/
def P736891793479959581.Spec : Prop :=
  ∀ n, P736891793479959581.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P1793761709698306845

`A000005(A254050(n+1))`
-/

namespace A366441.P1793761709698306845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254050 (n + 1)).toNat

end

end A366441.P1793761709698306845

namespace A366441

/-- `A000005(A254050(n+1))` -/
def P1793761709698306845.Spec : Prop :=
  ∀ n, P1793761709698306845.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P16593969320218165697

`A035218(2*A007310(n+1))`
-/

namespace A366441.P16593969320218165697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * A007310 (n + 1)).toNat

end

end A366441.P16593969320218165697

namespace A366441

/-- `A035218(2*A007310(n+1))` -/
def P16593969320218165697.Spec : Prop :=
  ∀ n, P16593969320218165697.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P10006203988305810069

`A000005(A014601(n)+n+1)`
-/

namespace A366441.P10006203988305810069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014601 n + (n + 1 : ℤ)).toNat

end

end A366441.P10006203988305810069

namespace A366441

/-- `A000005(A014601(n)+n+1)` -/
def P10006203988305810069.Spec : Prop :=
  ∀ n, P10006203988305810069.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P1402651799408768359

`A000005(A042948(n+1)+n)`
-/

namespace A366441.P1402651799408768359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A042948 (n + 1) + (n : ℤ)).toNat

end

end A366441.P1402651799408768359

namespace A366441

/-- `A000005(A042948(n+1)+n)` -/
def P1402651799408768359.Spec : Prop :=
  ∀ n, P1402651799408768359.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P10619361541192793735

`A000005(A047452(n+1)-n)`
-/

namespace A366441.P10619361541192793735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A047452 (n + 1) - (n : ℤ)).toNat

end

end A366441.P10619361541192793735

namespace A366441

/-- `A000005(A047452(n+1)-n)` -/
def P10619361541192793735.Spec : Prop :=
  ∀ n, P10619361541192793735.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P8088117361304638069

`A000005(A032528(n+1)-A032528(n))`
-/

namespace A366441.P8088117361304638069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032528 (n + 1) - A032528 n).toNat

end

end A366441.P8088117361304638069

namespace A366441

/-- `A000005(A032528(n+1)-A032528(n))` -/
def P8088117361304638069.Spec : Prop :=
  ∀ n, P8088117361304638069.a n = A366441 (n + 1)

end A366441

/-! ## A366441.P16368335444424704714

`A000005(A249823(n+1))`
-/

namespace A366441.P16368335444424704714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A249823 (n + 1)).toNat

end

end A366441.P16368335444424704714

namespace A366441

/-- `A000005(A249823(n+1))` -/
def P16368335444424704714.Spec : Prop :=
  ∀ n, P16368335444424704714.a n = A366441 (n + 1)

end A366441

/-!
# A366442: The sum of divisors of the 5-rough numbers (A007310).

The programs for A366442, the canonical program `A366442.P10215153311747772693` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366442 has offset 1).

The definition of A366442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366442.P10215153311747772693

`A000203(A007310(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366442

/-- `A000203(A007310(n+1))` -/
def P10215153311747772693.Spec : Prop :=
  ∀ n, P10215153311747772693.a n = A366442 (n + 1)

theorem P10215153311747772693.correct : P10215153311747772693.Spec := by
  intro n
  simp only [A366442, Nat.add_sub_cancel]

end A366442

/-! ## A366442.P5302725364071149922

`∑{d}[or(1, 3*n+1), #]`
-/

namespace A366442.P5302725364071149922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366442.P5302725364071149922

namespace A366442

/-- `∑{d}[or(1, 3*n+1), #]` -/
def P5302725364071149922.Spec : Prop :=
  ∀ n, (P5302725364071149922.a n : ℤ) = A366442 (n + 1)

end A366442

/-! ## A366442.P1311716643982338552

`∑{d}[a(n-2)+6, #]` with `a(0)=1, a(1)=5`
-/

namespace A366442.P1311716643982338552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366442.P1311716643982338552

namespace A366442

/-- `∑{d}[a(n-2)+6, #]` -/
def P1311716643982338552.Spec : Prop :=
  ∀ n, (P1311716643982338552.a n : ℤ) = A366442 (n + 1)

end A366442

/-! ## A366442.P14039319489752077945

`∑{d}[Δ[floor(3*n²/2)], #]`
-/

namespace A366442.P14039319489752077945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366442.P14039319489752077945

namespace A366442

/-- `∑{d}[Δ[floor(3*n²/2)], #]` -/
def P14039319489752077945.Spec : Prop :=
  ∀ n, (P14039319489752077945.a n : ℤ) = A366442 (n + 1)

end A366442

/-! ## A366442.P9924018033662756771

`A008438(ceil(n+n/2))`
-/

namespace A366442.P9924018033662756771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 ⌈(n : ℚ) + (n : ℚ) / 2⌉.toNat

end

end A366442.P9924018033662756771

namespace A366442

/-- `A008438(ceil(n+n/2))` -/
def P9924018033662756771.Spec : Prop :=
  ∀ n, P9924018033662756771.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P14560402461457428949

`A000203(or(1, 1+3*n))`
-/

namespace A366442.P14560402461457428949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 (1 + 3 * n))

end

end A366442.P14560402461457428949

namespace A366442

/-- `A000203(or(1, 1+3*n))` -/
def P14560402461457428949.Spec : Prop :=
  ∀ n, P14560402461457428949.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P16266133263098393011

`A000203(3*n+1+n%2)`
-/

namespace A366442.P16266133263098393011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * n + (1 + n % 2))

end

end A366442.P16266133263098393011

namespace A366442

/-- `A000203(3*n+1+n%2)` -/
def P16266133263098393011.Spec : Prop :=
  ∀ n, P16266133263098393011.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P14366743287505197510

`A000203(record[(n+1)/(2^val(n+1, 2)*3^val(n+1, 3))])`
-/

namespace A366442.P14366743287505197510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A366442.P14366743287505197510

namespace A366442

/-- `A000203(record[(n+1)/(2^val(n+1, 2)*3^val(n+1, 3))])` -/
def P14366743287505197510.Spec : Prop :=
  ∀ n, P14366743287505197510.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P10323218881793493551

`A000203(A014601(n)+n+1)`
-/

namespace A366442.P10323218881793493551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014601 n + (n + 1 : ℤ)).toNat

end

end A366442.P10323218881793493551

namespace A366442

/-- `A000203(A014601(n)+n+1)` -/
def P10323218881793493551.Spec : Prop :=
  ∀ n, P10323218881793493551.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P13242969040845258228

`A000203(A042948(n+1)+n)`
-/

namespace A366442.P13242969040845258228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A042948 (n + 1) + (n : ℤ)).toNat

end

end A366442.P13242969040845258228

namespace A366442

/-- `A000203(A042948(n+1)+n)` -/
def P13242969040845258228.Spec : Prop :=
  ∀ n, P13242969040845258228.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P7135013054909247535

`A000203(A022998(n+1)+A022998(n))`
-/

namespace A366442.P7135013054909247535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A022998 (n + 1) + A022998 n).toNat

end

end A366442.P7135013054909247535

namespace A366442

/-- `A000203(A022998(n+1)+A022998(n))` -/
def P7135013054909247535.Spec : Prop :=
  ∀ n, P7135013054909247535.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P6605099381652462310

`A134077(A001651(n+2)-2)`
-/

namespace A366442.P6605099381652462310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134077 (A001651 (n + 2) - 2).toNat

end

end A366442.P6605099381652462310

namespace A366442

/-- `A134077(A001651(n+2)-2)` -/
def P6605099381652462310.Spec : Prop :=
  ∀ n, P6605099381652462310.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P14836526925528752930

`A069184(A007310(2*n+1-n))`
-/

namespace A366442.P14836526925528752930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (A007310 (2 * n + 1 - n)).toNat

end

end A366442.P14836526925528752930

namespace A366442

/-- `A069184(A007310(2*n+1-n))` -/
def P14836526925528752930.Spec : Prop :=
  ∀ n, P14836526925528752930.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P14863758006675866160

`A000203(A045572(2*n+1)-2*n)`
-/

namespace A366442.P14863758006675866160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A045572 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A366442.P14863758006675866160

namespace A366442

/-- `A000203(A045572(2*n+1)-2*n)` -/
def P14863758006675866160.Spec : Prop :=
  ∀ n, P14863758006675866160.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P13990427295276202605

`A003973(A254050(n+1))`
-/

namespace A366442.P13990427295276202605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A254050 (n + 1)).toNat

end

end A366442.P13990427295276202605

namespace A366442

/-- `A003973(A254050(n+1))` -/
def P13990427295276202605.Spec : Prop :=
  ∀ n, P13990427295276202605.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P175084018397501889

`A000203(A109613(2*n+1+n))`
-/

namespace A366442.P175084018397501889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109613 (2 * n + 1 + n)).toNat

end

end A366442.P175084018397501889

namespace A366442

/-- `A000203(A109613(2*n+1+n))` -/
def P175084018397501889.Spec : Prop :=
  ∀ n, P175084018397501889.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P15619861225732084861

`A046913(A038179(n+2))`
-/

namespace A366442.P15619861225732084861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (A038179 (n + 2)).toNat

end

end A366442.P15619861225732084861

namespace A366442

/-- `A046913(A038179(n+2))` -/
def P15619861225732084861.Spec : Prop :=
  ∀ n, P15619861225732084861.a n = A366442 (n + 1)

end A366442

/-! ## A366442.P10904362193848854546

`A245092(A091999(n+1)-1)`
-/

namespace A366442.P10904362193848854546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A091999 (n + 1) - 1).toNat

end

end A366442.P10904362193848854546

namespace A366442

/-- `A245092(A091999(n+1)-1)` -/
def P10904362193848854546.Spec : Prop :=
  ∀ n, P10904362193848854546.a n = A366442 (n + 1)

end A366442

/-!
# A366444: Triangle read by rows: T(n,k) = phi(n/k)*A023900(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

The programs for A366444, the canonical program `A366444.P3140154605378599213` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366444 has offset 1).

The definition of A366444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366444.P3140154605378599213

`A054523(n+1)*A231425(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A366444

/-- `A054523(n+1)*A231425(n+1)` -/
def P3140154605378599213.Spec : Prop :=
  ∀ n, P3140154605378599213.a n = A366444 (n + 1)

theorem P3140154605378599213.correct : P3140154605378599213.Spec := by
  intro n
  simp only [A366444, Nat.add_sub_cancel]

end A366444

/-! ## A366444.P16268400378923084448

`A023900(A050873(n+1))*A054523(n+1)`
-/

namespace A366444.P16268400378923084448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A050873 (n + 1)).toNat * A054523 (n + 1)

end

end A366444.P16268400378923084448

namespace A366444

/-- `A023900(A050873(n+1))*A054523(n+1)` -/
def P16268400378923084448.Spec : Prop :=
  ∀ n, P16268400378923084448.a n = A366444 (n + 1)

end A366444

/-! ## A366444.P10053424831047647016

`A127465(n+1)/A002260(n+1)*A231425(n+1)`
-/

namespace A366444.P10053424831047647016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A231425 (n + 1) : ℚ)

end

end A366444.P10053424831047647016

namespace A366444

/-- `A127465(n+1)/A002260(n+1)*A231425(n+1)` -/
def P10053424831047647016.Spec : Prop :=
  ∀ n, P10053424831047647016.a n = (A366444 (n + 1) : ℚ)

end A366444

/-! ## A366444.P12209477828417243597

`A129236(n+1)/A010783(n+1)*A231425(n+1)`
-/

namespace A366444.P12209477828417243597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129236 (n + 1) : ℚ) / (A010783 (n + 1) : ℚ) * (A231425 (n + 1) : ℚ)

end

end A366444.P12209477828417243597

namespace A366444

/-- `A129236(n+1)/A010783(n+1)*A231425(n+1)` -/
def P12209477828417243597.Spec : Prop :=
  ∀ n, P12209477828417243597.a n = (A366444 (n + 1) : ℚ)

end A366444

/-! ## A366444.P10777893749434641333

`A127649(n+1)/A049840(n+1)*A231425(n+1)`
-/

namespace A366444.P10777893749434641333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ) * (A231425 (n + 1) : ℚ)

end

end A366444.P10777893749434641333

namespace A366444

/-- `A127649(n+1)/A049840(n+1)*A231425(n+1)` -/
def P10777893749434641333.Spec : Prop :=
  ∀ n, P10777893749434641333.a n = (A366444 (n + 1) : ℚ)

end A366444

/-! ## A366444.P8017674937628901336

`A127465(n+1)/A002260(n+1)*A023900(A050873(n+1))`
-/

namespace A366444.P8017674937628901336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A023900 (A050873 (n + 1)).toNat : ℚ)

end

end A366444.P8017674937628901336

namespace A366444

/-- `A127465(n+1)/A002260(n+1)*A023900(A050873(n+1))` -/
def P8017674937628901336.Spec : Prop :=
  ∀ n, P8017674937628901336.a n = (A366444 (n + 1) : ℚ)

end A366444

/-! ## A366444.P9935483017768714195

`A129236(n+1)/A010783(n+1)*A023900(A050873(n+1))`
-/

namespace A366444.P9935483017768714195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129236 (n + 1) : ℚ) / (A010783 (n + 1) : ℚ) * (A023900 (A050873 (n + 1)).toNat : ℚ)

end

end A366444.P9935483017768714195

namespace A366444

/-- `A129236(n+1)/A010783(n+1)*A023900(A050873(n+1))` -/
def P9935483017768714195.Spec : Prop :=
  ∀ n, P9935483017768714195.a n = (A366444 (n + 1) : ℚ)

end A366444

/-! ## A366444.P17751310398354510703

`A366445(A120913(n+1))`
-/

namespace A366444.P17751310398354510703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366445 (A120913 (n + 1)).toNat

end

end A366444.P17751310398354510703

namespace A366444

/-- `A366445(A120913(n+1))` -/
def P17751310398354510703.Spec : Prop :=
  ∀ n, P17751310398354510703.a n = A366444 (n + 1)

end A366444

/-!
# A366445: Triangle read by rows: T(n,k) = A023900(n/k)*phi(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

The programs for A366445, the canonical program `A366445.P4284588940328719007` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366445 has offset 1).

The definition of A366445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366445.P4284588940328719007

`A054522(n+1)*A129691(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366445

/-- `A054522(n+1)*A129691(n+1)` -/
def P4284588940328719007.Spec : Prop :=
  ∀ n, P4284588940328719007.a n = A366445 (n + 1)

theorem P4284588940328719007.correct : P4284588940328719007.Spec := by
  intro n
  simp only [A366445, Nat.add_sub_cancel]

end A366445

/-! ## A366445.P2906598072746923127

`A054526(n+1)*A129691(n+1)`
-/

namespace A366445.P2906598072746923127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A129691 (n + 1)

end

end A366445.P2906598072746923127

namespace A366445

/-- `A054526(n+1)*A129691(n+1)` -/
def P2906598072746923127.Spec : Prop :=
  ∀ n, P2906598072746923127.a n = A366445 (n + 1)

end A366445

/-! ## A366445.P9479278849412505383

`A054532(n+1)*A129691(n+1)`
-/

namespace A366445.P9479278849412505383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A129691 (n + 1)

end

end A366445.P9479278849412505383

namespace A366445

/-- `A054532(n+1)*A129691(n+1)` -/
def P9479278849412505383.Spec : Prop :=
  ∀ n, P9479278849412505383.a n = A366445 (n + 1)

end A366445

/-! ## A366445.P2982445054735036

`A129691(n+1)*A372673(n+1)`
-/

namespace A366445.P2982445054735036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129691 (n + 1) * A372673 (n + 1)

end

end A366445.P2982445054735036

namespace A366445

/-- `A129691(n+1)*A372673(n+1)` -/
def P2982445054735036.Spec : Prop :=
  ∀ n, P2982445054735036.a n = A366445 (n + 1)

end A366445

/-! ## A366445.P11583615420487363248

`A000010(A002260(n+1))*A129691(n+1)`
-/

namespace A366445.P11583615420487363248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A129691 (n + 1)

end

end A366445.P11583615420487363248

namespace A366445

/-- `A000010(A002260(n+1))*A129691(n+1)` -/
def P11583615420487363248.Spec : Prop :=
  ∀ n, P11583615420487363248.a n = A366445 (n + 1)

end A366445

/-! ## A366445.P13185259739755169694

`A366444(A120913(n+1))`
-/

namespace A366445.P13185259739755169694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366444 (A120913 (n + 1)).toNat

end

end A366445.P13185259739755169694

namespace A366445

/-- `A366444(A120913(n+1))` -/
def P13185259739755169694.Spec : Prop :=
  ∀ n, P13185259739755169694.a n = A366445 (n + 1)

end A366445

/-!
# A366448: Number of distinct characteristic polynomials for 2 X 2 matrices with entries from {0, 1, ..., n}.

The programs for A366448, there is no canonical definition to state claims against.
-/

/-! ## A366448.P5578991792611388720

`A013632(A069723(n+1))+A011842(3*(n+1))`
-/

namespace A366448.P5578991792611388720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A069723 (n + 1)).toNat + A011842 (3 * (n + 1))

end

end A366448.P5578991792611388720

/-!
# A366449: Number of smooth discrete aggregation functions defined on the finite chain L_n={0,1,...,n-1,n} having neutral element/absorbing element.

The programs for A366449, there is no canonical definition to state claims against.
-/

/-! ## A366449.P10231426300013883367

`A090632(A385641(n))`
-/

namespace A366449.P10231426300013883367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090632 (A385641 n).toNat

end

end A366449.P10231426300013883367

/-!
# A366450: a(n) = Sum_{k=1..n} A366362(n,k)*A023900(k)/n.

The programs for A366450, there is no canonical definition to state claims against.
-/

/-! ## A366450.P6790549758610029733

`∑{#}[n, A366362(C(n+1, 2)+#+1)*A023900(#+1)/(n+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366450.P6790549758610029733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A366362 (Nat.choose (n + 1) 2 + (k + 1)) * A023900 (k + 1) : ℚ) / (n + 1 : ℚ)

end

end A366450.P6790549758610029733

/-! ## A366450.P16831300150057212966

`(n+1)/∏{p}[n+1, #]*A006571(∏{p}[n+1, #])`
-/

namespace A366450.P16831300150057212966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A006571 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A366450.P16831300150057212966

/-! ## A366450.P8390508075932119720

`(n+1)/∏{p}[n+1, #]*A006571(A007947(n+1))`
-/

namespace A366450.P8390508075932119720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A006571 (A007947 (n + 1)).toNat : ℚ)

end

end A366450.P8390508075932119720

/-!
# A366451: The sum s > n which has the greatest probability of occurring when summing rolls of an n-sided die.

The programs for A366451, the canonical program `A366451.P6303124233249025672` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366451 has offset 2).

The definition of A366451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366451.P6303124233249025672

`A060644(n+2)-(n+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366451

/-- `A060644(n+2)-(n+2)` -/
def P6303124233249025672.Spec : Prop :=
  ∀ n, P6303124233249025672.a n = A366451 (n + 2)

theorem P6303124233249025672.correct : P6303124233249025672.Spec := by
  intro n
  simp only [A366451, Nat.add_sub_cancel]

end A366451

/-! ## A366451.P12799449407090856455

`A279607(2*n+5)-(n+2)`
-/

namespace A366451.P12799449407090856455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * n + 5) - (n + 2 : ℤ)

end

end A366451.P12799449407090856455

namespace A366451

/-- `A279607(2*n+5)-(n+2)` -/
def P12799449407090856455.Spec : Prop :=
  ∀ n, P12799449407090856455.a n = A366451 (n + 2)

end A366451

/-! ## A366451.P9873764853409230063

`A065033(A000210(2*n+5))`
-/

namespace A366451.P9873764853409230063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000210 (2 * n + 5)).toNat

end

end A366451.P9873764853409230063

namespace A366451

/-- `A065033(A000210(2*n+5))` -/
def P9873764853409230063.Spec : Prop :=
  ∀ n, P9873764853409230063.a n = A366451 (n + 2)

end A366451

/-! ## A366451.P15804643417145982696

`A004526(A000210(2*n+5)+1)`
-/

namespace A366451.P15804643417145982696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000210 (2 * n + 5) + 1).toNat

end

end A366451.P15804643417145982696

namespace A366451

/-- `A004526(A000210(2*n+5)+1)` -/
def P15804643417145982696.Spec : Prop :=
  ∀ n, P15804643417145982696.a n = A366451 (n + 2)

end A366451

/-! ## A366451.P11235014132436478461

`A140106(A000210(2*n+5)+3)`
-/

namespace A366451.P11235014132436478461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A000210 (2 * n + 5) + 3).toNat

end

end A366451.P11235014132436478461

namespace A366451

/-- `A140106(A000210(2*n+5)+3)` -/
def P11235014132436478461.Spec : Prop :=
  ∀ n, P11235014132436478461.a n = A366451 (n + 2)

end A366451

/-! ## A366451.P5058908802761035589

`A194640(A060644(n+2))`
-/

namespace A366451.P5058908802761035589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A060644 (n + 2)).toNat

end

end A366451.P5058908802761035589

namespace A366451

/-- `A194640(A060644(n+2))` -/
def P5058908802761035589.Spec : Prop :=
  ∀ n, P5058908802761035589.a n = A366451 (n + 2)

end A366451

/-!
# A366452: G.f. A(x) satisfies A(x) = 1 + x + x*A(x)^(5/2).

The programs for A366452, there is no canonical definition to state claims against.
-/

/-! ## A366452.P3600229227470550420

`∑{#}[n, A259757(#)*A259757(n-#)]`
-/

namespace A366452.P3600229227470550420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A259757 k * A259757 (n - k)

end

end A366452.P3600229227470550420

/-! ## A366452.P103791517059675686

`A365115(n)+A010051(A062740(n))`
-/

namespace A366452.P103791517059675686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365115 n + A010051 (A062740 n).toNat

end

end A366452.P103791517059675686

/-!
# A366453: G.f. A(x) satisfies A(x) = 1 + x + x*A(x)^(7/2).

The programs for A366453, there is no canonical definition to state claims against.
-/

/-! ## A366453.P8744585512379192581

`A270832(A074143(n+1))+A056356(n)`
-/

namespace A366453.P8744585512379192581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270832 (A074143 (n + 1)).toNat + A056356 n

end

end A366453.P8744585512379192581

/-! ## A366453.P326236625250770656

`or(A002472(A081085(n)), A243057(n+1))`
-/

namespace A366453.P326236625250770656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002472 (A081085 n).toNat) (A243057 (n + 1))

end

end A366453.P326236625250770656

/-!
# A366455: G.f. A(x) satisfies A(x) = 1 + x + x/A(x)^(5/2).

The programs for A366455, there is no canonical definition to state claims against.
-/

/-! ## A366455.P14181714212354566021

`A132691(n)*A165129(A327426(n+2))`
-/

namespace A366455.P14181714212354566021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132691 n * A165129 (A327426 (n + 2)).toNat

end

end A366455.P14181714212354566021

/-!
# A366457: a(n) = n^2 + 58.

The programs for A366457, the canonical program `A366457.P4163069931830969523` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366457 has offset 0).

The definition of A366457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+58` (program `A366457.P4163069931830969523`, by `A366457.P4163069931830969523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366457.P4163069931830969523

`n²+58`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366457

/-- `n²+58` -/
def P4163069931830969523.Spec : Prop :=
  ∀ n, (P4163069931830969523.a n : ℤ) = A366457 n

theorem P4163069931830969523.correct : P4163069931830969523.Spec := by
  intro n
  simp only [A366457]

end A366457

/-!
# A366458: a(n) = n^2 + 83*n - 81.

The programs for A366458, the canonical program `A366458.P7263847687912654136` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366458 has offset 0).

The definition of A366458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+83*n-81` (program `A366458.P7263847687912654136`, by `A366458.P7263847687912654136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366458.P7263847687912654136

`n²+83*n-81`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366458

/-- `n²+83*n-81` -/
def P7263847687912654136.Spec : Prop :=
  ∀ n, P7263847687912654136.a n = A366458 n

theorem P7263847687912654136.correct : P7263847687912654136.Spec := by
  intro n
  simp only [A366458]

end A366458

/-!
# A366459: Expansion of e.g.f. -log(1 - x^2 * exp(x)).

The programs for A366459, there is no canonical definition to state claims against.
-/

/-! ## A366459.P15571290227681930701

`n*A054404(A199164(n))`
-/

namespace A366459.P15571290227681930701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054404 (A199164 n).toNat

end

end A366459.P15571290227681930701

/-! ## A366459.P8130345044496614734

`n*A209062(n^n)`
-/

namespace A366459.P8130345044496614734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A209062 (n ^ n)

end

end A366459.P8130345044496614734

/-!
# A366460: Odd terms in A366825.

The programs for A366460, the canonical program `A366460.P2003594403644138664` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366460 has offset 1).

The definition of A366460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366460.P10924341342540207187

`filter[A364997(1+n), A212793(#)]`
-/

namespace A366460.P10924341342540207187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A366460.P10924341342540207187

namespace A366460

/-- `filter[A364997(1+n), A212793(#)]` -/
def P10924341342540207187.Spec : Prop :=
  ∀ n, P10924341342540207187.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P17081665280983861089

`filter[A364997(n+1), A359429(#)]`
-/

namespace A366460.P17081665280983861089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A366460.P17081665280983861089

namespace A366460

/-- `filter[A364997(n+1), A359429(#)]` -/
def P17081665280983861089.Spec : Prop :=
  ∀ n, P17081665280983861089.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P3793258399979436685

`filter[A364997(n+1), A359471(#)]`
-/

namespace A366460.P3793258399979436685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A366460.P3793258399979436685

namespace A366460

/-- `filter[A364997(n+1), A359471(#)]` -/
def P3793258399979436685.Spec : Prop :=
  ∀ n, P3793258399979436685.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P5582035789568171474

`filter[A364997(n+1), A359474(#)]`
-/

namespace A366460.P5582035789568171474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A366460.P5582035789568171474

namespace A366460

/-- `filter[A364997(n+1), A359474(#)]` -/
def P5582035789568171474.Spec : Prop :=
  ∀ n, P5582035789568171474.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P6397150411234314486

`filter[A364997(n+1), A359475(#)]`
-/

namespace A366460.P6397150411234314486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366460.P6397150411234314486

namespace A366460

/-- `filter[A364997(n+1), A359475(#)]` -/
def P6397150411234314486.Spec : Prop :=
  ∀ n, P6397150411234314486.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P5144013033552099801

`∩[2*n+1, A366825(n+1)]`
-/

namespace A366460.P5144013033552099801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P5144013033552099801

namespace A366460

/-- `∩[2*n+1, A366825(n+1)]` -/
def P5144013033552099801.Spec : Prop :=
  ∀ n, (P5144013033552099801.a n : ℤ) = A366460 (n + 1)

end A366460

/-! ## A366460.P2003594403644138664

`filter[A366825(n+1), A039982(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366460

/-- `filter[A366825(n+1), A039982(#)]` -/
def P2003594403644138664.Spec : Prop :=
  ∀ n, P2003594403644138664.a n = A366460 (n + 1)

theorem P2003594403644138664.correct : P2003594403644138664.Spec := by
  intro n
  simp only [A366460, Nat.add_sub_cancel]

end A366460

/-! ## A366460.P17352143478869495735

`filter[A366825(n+1), A098725(#)]`
-/

namespace A366460.P17352143478869495735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A366460.P17352143478869495735

namespace A366460

/-- `filter[A366825(n+1), A098725(#)]` -/
def P17352143478869495735.Spec : Prop :=
  ∀ n, P17352143478869495735.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P10312383247646004793

`filter[A366825(n+1), A166486(#)]`
-/

namespace A366460.P10312383247646004793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A366460.P10312383247646004793

namespace A366460

/-- `filter[A366825(n+1), A166486(#)]` -/
def P10312383247646004793.Spec : Prop :=
  ∀ n, P10312383247646004793.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P18052700074923101610

`filter[A366825(n+1), A323158(#)]`
-/

namespace A366460.P18052700074923101610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A366460.P18052700074923101610

namespace A366460

/-- `filter[A366825(n+1), A323158(#)]` -/
def P18052700074923101610.Spec : Prop :=
  ∀ n, P18052700074923101610.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P4073699533031498968

`filter[A366825(n+1), A324908(#)]`
-/

namespace A366460.P4073699533031498968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A366460.P4073699533031498968

namespace A366460

/-- `filter[A366825(n+1), A324908(#)]` -/
def P4073699533031498968.Spec : Prop :=
  ∀ n, P4073699533031498968.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P11521946232119574843

`filter[A397710(n+1), A324908(#)]`
-/

namespace A366460.P11521946232119574843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A366460.P11521946232119574843

namespace A366460

/-- `filter[A397710(n+1), A324908(#)]` -/
def P11521946232119574843.Spec : Prop :=
  ∀ n, P11521946232119574843.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P9169643989010071247

`filter[A397710(n+1), A374474(#)]`
-/

namespace A366460.P9169643989010071247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A366460.P9169643989010071247

namespace A366460

/-- `filter[A397710(n+1), A374474(#)]` -/
def P9169643989010071247.Spec : Prop :=
  ∀ n, P9169643989010071247.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P4512536826363715216

`filter[A397710(n+2), A323158(#)]`
-/

namespace A366460.P4512536826363715216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A366460.P4512536826363715216

namespace A366460

/-- `filter[A397710(n+2), A323158(#)]` -/
def P4512536826363715216.Spec : Prop :=
  ∀ n, P4512536826363715216.a n = A366460 (n + 1)

end A366460

/-! ## A366460.P3866357964684889132

`∩[A072357(n+1), A364997(n+1)]`
-/

namespace A366460.P3866357964684889132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P3866357964684889132

namespace A366460

/-- `∩[A072357(n+1), A364997(n+1)]` -/
def P3866357964684889132.Spec : Prop :=
  ∀ n, (P3866357964684889132.a n : ℤ) = A366460 (n + 1)

end A366460

/-! ## A366460.P12680438771434191228

`∩[A060687(n+1), A364997(n+1)]`
-/

namespace A366460.P12680438771434191228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P12680438771434191228

namespace A366460

/-- `∩[A060687(n+1), A364997(n+1)]` -/
def P12680438771434191228.Spec : Prop :=
  ∀ n, (P12680438771434191228.a n : ℤ) = A366460 (n + 1)

end A366460

/-! ## A366460.P14737530848179568855

`∩[A325241(n+1), A364997(n+1)]`
-/

namespace A366460.P14737530848179568855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P14737530848179568855

namespace A366460

/-- `∩[A325241(n+1), A364997(n+1)]` -/
def P14737530848179568855.Spec : Prop :=
  ∀ n, (P14737530848179568855.a n : ℤ) = A366460 (n + 1)

end A366460

/-! ## A366460.P15603708207932067615

`∩[A067259(n+1), A364997(n+1)]`
-/

namespace A366460.P15603708207932067615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P15603708207932067615

namespace A366460

/-- `∩[A067259(n+1), A364997(n+1)]` -/
def P15603708207932067615.Spec : Prop :=
  ∀ n, (P15603708207932067615.a n : ℤ) = A366460 (n + 1)

end A366460

/-! ## A366460.P17490178426511950394

`∩[A342393(n+1), A364997(n+1)]`
-/

namespace A366460.P17490178426511950394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P17490178426511950394

namespace A366460

/-- `∩[A342393(n+1), A364997(n+1)]` -/
def P17490178426511950394.Spec : Prop :=
  ∀ n, (P17490178426511950394.a n : ℤ) = A366460 (n + 1)

end A366460

/-! ## A366460.P11008129593355558357

`∩[A038109(n+1), A364997(n+1)]`
-/

namespace A366460.P11008129593355558357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366460.P11008129593355558357

namespace A366460

/-- `∩[A038109(n+1), A364997(n+1)]` -/
def P11008129593355558357.Spec : Prop :=
  ∀ n, (P11008129593355558357.a n : ℤ) = A366460 (n + 1)

end A366460

/-!
# A366461: a(n) = number of partitions of n that have the maximum number of neighbors; see Comments.

The programs for A366461, there is no canonical definition to state claims against.
-/

/-! ## A366461.P7891926205800130895

`A010284(A033918(n+2))`
-/

namespace A366461.P7891926205800130895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010284 (A033918 (n + 2)).toNat

end

end A366461.P7891926205800130895

/-! ## A366461.P6082428019572412115

`A229944(A144224(n+2))`
-/

namespace A366461.P6082428019572412115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229944 (A144224 (n + 2)).toNat

end

end A366461.P6082428019572412115

/-! ## A366461.P6077499490333233645

`A339458(A127778(n+2))`
-/

namespace A366461.P6077499490333233645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339458 (A127778 (n + 2)).toNat

end

end A366461.P6077499490333233645

/-! ## A366461.P3633597620659382125

`A195441(A002260(n+2)%A082671(n+1))`
-/

namespace A366461.P3633597620659382125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 (Int.tmod (A002260 (n + 2)) (A082671 (n + 1))).toNat

end

end A366461.P3633597620659382125

/-! ## A366461.P6793536390497789100

`A112624(A095904(A112622(A095904(n+1))))`
-/

namespace A366461.P6793536390497789100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A095904 (A112622 (A095904 (n + 1)).toNat).toNat).toNat

end

end A366461.P6793536390497789100

/-!
# A366462: a(n) is the length of the longest word w in the Period-doubling sequence (A096268) in which every length-n factor of w is unique.

The programs for A366462, the canonical program `A366462.P1666175288754453737` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366462 has offset 1).

The definition of A366462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366462.P1666175288754453737

`A004762(n+3)+n`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366462

/-- `A004762(n+3)+n` -/
def P1666175288754453737.Spec : Prop :=
  ∀ n, P1666175288754453737.a n = A366462 (n + 1)

theorem P1666175288754453737.correct : P1666175288754453737.Spec := by
  intro n
  simp only [A366462, Nat.add_sub_cancel]

end A366462

/-! ## A366462.P13128284673951812648

`record[A323234(n+2)+n]`
-/

namespace A366462.P13128284673951812648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366462.P13128284673951812648

namespace A366462

/-- `record[A323234(n+2)+n]` -/
def P13128284673951812648.Spec : Prop :=
  ∀ n, P13128284673951812648.a n = A366462 (n + 1)

end A366462

/-! ## A366462.P1726689728515356767

`A053644(A006165(n+1))+2*n+1`
-/

namespace A366462.P1726689728515356767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006165 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A366462.P1726689728515356767

namespace A366462

/-- `A053644(A006165(n+1))+2*n+1` -/
def P1726689728515356767.Spec : Prop :=
  ∀ n, P1726689728515356767.a n = A366462 (n + 1)

end A366462

/-! ## A366462.P13257901642779750662

`comp[A054429(2*(n+1))-1+n]+n+2`
-/

namespace A366462.P13257901642779750662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (2 * (n + 1)) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 2)

end

end A366462.P13257901642779750662

namespace A366462

/-- `comp[A054429(2*(n+1))-1+n]+n+2` -/
def P13257901642779750662.Spec : Prop :=
  ∀ n, (P13257901642779750662.a n : ℤ) = A366462 (n + 1)

end A366462

/-! ## A366462.P8226693979929655592

`A004765(A245092(2*(n+2)))-1`
-/

namespace A366462.P8226693979929655592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004765 (A245092 (2 * (n + 2))).toNat - 1

end

end A366462.P8226693979929655592

namespace A366462

/-- `A004765(A245092(2*(n+2)))-1` -/
def P8226693979929655592.Spec : Prop :=
  ∀ n, P8226693979929655592.a n = A366462 (n + 1)

end A366462

/-! ## A366462.P1485825266256465095

`A004526(A016969(n)-A080541(n+1))`
-/

namespace A366462.P1485825266256465095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016969 n - A080541 (n + 1)).toNat

end

end A366462.P1485825266256465095

namespace A366462

/-- `A004526(A016969(n)-A080541(n+1))` -/
def P1485825266256465095.Spec : Prop :=
  ∀ n, P1485825266256465095.a n = A366462 (n + 1)

end A366462

/-! ## A366462.P11441979297578784886

`record[A154444(n+2)]+n`
-/

namespace A366462.P11441979297578784886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A366462.P11441979297578784886

namespace A366462

/-- `record[A154444(n+2)]+n` -/
def P11441979297578784886.Spec : Prop :=
  ∀ n, P11441979297578784886.a n = A366462 (n + 1)

end A366462

/-! ## A366462.P834553816452661429

`A212652(A082662(2*(n+1)))+n`
-/

namespace A366462.P834553816452661429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A082662 (2 * (n + 1))).toNat + (n : ℤ)

end

end A366462.P834553816452661429

namespace A366462

/-- `A212652(A082662(2*(n+1)))+n` -/
def P834553816452661429.Spec : Prop :=
  ∀ n, P834553816452661429.a n = A366462 (n + 1)

end A366462

/-!
# A366463: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of exact wrapping probability for site percolation on an n X n 2D square lattice with periodic boundary conditions. This is for the probability that it wraps around the vertical dimension.

The programs for A366463, there is no canonical definition to state claims against.
-/

/-! ## A366463.P10763730817639661501

`(A365954(n+1)+A365949(n+1))/2`
-/

namespace A366463.P10763730817639661501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365954 (n + 1) + A365949 (n + 1) : ℚ) / 2

end

end A366463.P10763730817639661501

/-!
# A366470: a(n) = A364054(n-1) mod prime(n-1).

The programs for A366470, there is no canonical definition to state claims against.
-/

/-! ## A366470.P4123744543791827827

`A364054(n+1)%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366470.P4123744543791827827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364054 (n + 1)) (A000040 (n + 1))

end

end A366470.P4123744543791827827

/-! ## A366470.P6569889035917782978

`A364054(1+n)%Δ[A117128(n)]`
-/

namespace A366470.P6569889035917782978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364054 (1 + n)) (f1 (n + 1) - f1 n)

end

end A366470.P6569889035917782978

/-! ## A366470.P5100882720152691424

`A364054(A028310(n+1))%(A040976(n+1)+2)`
-/

namespace A366470.P5100882720152691424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364054 (A028310 (n + 1)).toNat) (A040976 (n + 1) + 2)

end

end A366470.P5100882720152691424

/-! ## A366470.P1458517783939056262

`A117128(n)%A000188(A001248(n+1))`
-/

namespace A366470.P1458517783939056262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117128 n) (A000188 (A001248 (n + 1)).toNat)

end

end A366470.P1458517783939056262

/-! ## A366470.P9178443164569516251

`A006509(n+1)%A000188(A001248(n+1))`
-/

namespace A366470.P9178443164569516251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006509 (n + 1)) (A000188 (A001248 (n + 1)).toNat)

end

end A366470.P9178443164569516251

/-!
# A366471: Number of increasing geometric progressions in {1,2,3,...,n} with rational ratio.

The programs for A366471, there is no canonical definition to state claims against.
-/

/-! ## A366471.P6072716946831550831

`∑[A058189(n+1)]`
-/

namespace A366471.P6072716946831550831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366471.P6072716946831550831

/-! ## A366471.P6377673772836316459

`∑[A058190(n+1)+1+n]`
-/

namespace A366471.P6377673772836316459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366471.P6377673772836316459

/-! ## A366471.P1979717467323722283

`A365677(n+1)+∑[n+1]`
-/

namespace A366471.P1979717467323722283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365677 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A366471.P1979717467323722283

/-! ## A366471.P3014641898150356636

`A365677(n+1)+A000096(n)+1`
-/

namespace A366471.P3014641898150356636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365677 (n + 1) + A000096 n + 1

end

end A366471.P3014641898150356636

/-! ## A366471.P14905934212957597628

`∑[∏{e}[A087455(A137754(n+1)+1)²+n, #]+n]`
-/

namespace A366471.P14905934212957597628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087455 (A137754 (n + 1) + 1).toNat ^ 2 + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366471.P14905934212957597628

/-!
# A366472: Irregular triangle read by rows: T(n,k) (n >= 1, k >= 1) = number of increasing geometric progressions in {1,2,3,...,n} of length k with rational ratio.

The programs for A366472, there is no canonical definition to state claims against.
-/

/-! ## A366472.P1388387663572649132

`A108299(lt[A367771(2*n+1), A108299(n)])`
-/

namespace A366472.P1388387663572649132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366472.P1388387663572649132

/-! ## A366472.P18319379283003876616

`A130067(A390761(n+1))`
-/

namespace A366472.P18319379283003876616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130067 (A390761 (n + 1)).toNat

end

end A366472.P18319379283003876616

/-! ## A366472.P14690662359375628840

`C(A001462(n+1), A082660(A001599(n+1)))`
-/

namespace A366472.P14690662359375628840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001462 (n + 1)).toNat (A082660 (A001599 (n + 1)).toNat).toNat

end

end A366472.P14690662359375628840

/-!
# A366474: Where n appears in A337136, or -1 if n never appears.

The programs for A366474, there is no canonical definition to state claims against.
-/

/-! ## A366474.P11601537380017200252

`A361314(A361314(A337136(A337136(A337136(n+1)))))`
-/

namespace A366474.P11601537380017200252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361314 (A361314 (A337136 (A337136 (A337136 (n + 1)).toNat).toNat).toNat).toNat

end

end A366474.P11601537380017200252

/-!
# A366475: a(n) = (A364054(n) - A366470(n))/prime(n-1).

The programs for A366475, there is no canonical definition to state claims against.
-/

/-! ## A366475.P1671786411047670692

`(A364054(n+2)-A366470(n+2))/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366475.P1671786411047670692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364054 (n + 2) - A366470 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A366475.P1671786411047670692

/-! ## A366475.P13566547040558442379

`floor(A364054(n+2)/A000040(n+1))`
-/

namespace A366475.P13566547040558442379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A364054 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A366475.P13566547040558442379

/-! ## A366475.P17874798229301112697

`A054845(A242095(2*n)+A059758(n+1))`
-/

namespace A366475.P17874798229301112697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A242095 (2 * n) + A059758 (n + 1)).toNat

end

end A366475.P17874798229301112697

/-! ## A366475.P16970273793707432294

`A190762(A288599(n+1)+1)`
-/

namespace A366475.P16970273793707432294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190762 (A288599 (n + 1) + 1).toNat

end

end A366475.P16970273793707432294

/-! ## A366475.P15416398678390806322

`A000002(n+1)*A279693(∑[n+1])`
-/

namespace A366475.P15416398678390806322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A279693 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366475.P15416398678390806322

/-!
# A366477: a(n) = smallest k such that A366475(k) >= n, or -1 if no such k exists.

The programs for A366477, there is no canonical definition to state claims against.
-/

/-! ## A366477.P3375558822420530747

`A366913(A093446(n+1)-A356320(n))`
-/

namespace A366477.P3375558822420530747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366913 (A093446 (n + 1) - A356320 n).toNat

end

end A366477.P3375558822420530747

/-!
# A366478: a(n) = (3*n^4 - 4*n^3 + n^2 + 4*n + 4)/4.

The programs for A366478, the canonical program `A366478.P16117180814378493131` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366478 has offset 0).

The definition of A366478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n^4-4*n^3+n²+4*n+4)/4` (program `A366478.P8026606759171978623`, by `A366478.P8026606759171978623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366478.P12552000414375987027

`ogf((1-3x+8x^2+10x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A366478.P12552000414375987027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 8, 10, 2] [1, -5, 10, -10, 5, -1] n

end

end A366478.P12552000414375987027

namespace A366478

/-- `ogf((1-3x+8x^2+10x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12552000414375987027.Spec : Prop :=
  ∀ n, P12552000414375987027.a n = A366478 n

end A366478

/-! ## A366478.P8026606759171978623

`(3*n^4-4*n^3+n²+4*n+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366478.P8026606759171978623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 4 : ℤ) - (4 * n ^ 3 : ℤ) + (n ^ 2 : ℤ) + (4 * n : ℤ) + 4 : ℚ) / 4

end

end A366478.P8026606759171978623

namespace A366478

/-- `(3*n^4-4*n^3+n²+4*n+4)/4` -/
def P8026606759171978623.Spec : Prop :=
  ∀ n, P8026606759171978623.a n = (A366478 n : ℚ)

theorem P8026606759171978623.correct : P8026606759171978623.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A366478, Nat.add_sub_cancel, A366478.P8026606759171978623.a, A366478.P16117180814378493131.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A366478, Nat.add_sub_cancel, A366478.P8026606759171978623.a, A366478.P16117180814378493131.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A366478

/-! ## A366478.P16117180814378493131

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=40, a(4)=137`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366478

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16117180814378493131.Spec : Prop :=
  ∀ n, P16117180814378493131.a n = A366478 n

theorem P16117180814378493131.correct : P16117180814378493131.Spec := by
  intro n
  simp only [A366478]

end A366478

/-! ## A366478.P10158806343895341633

`(3*C(n, 2)+n)*C(n, 2)+n+1`
-/

namespace A366478.P10158806343895341633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 2 + n) * Nat.choose n 2 + n + 1

end

end A366478.P10158806343895341633

namespace A366478

/-- `(3*C(n, 2)+n)*C(n, 2)+n+1` -/
def P10158806343895341633.Spec : Prop :=
  ∀ n, (P10158806343895341633.a n : ℤ) = A366478 n

end A366478

/-! ## A366478.P14330076050538169076

`A365929(n)/3+n+1`
-/

namespace A366478.P14330076050538169076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365929 n : ℚ) / 3 + (n + 1 : ℚ)

end

end A366478.P14330076050538169076

namespace A366478

/-- `A365929(n)/3+n+1` -/
def P14330076050538169076.Spec : Prop :=
  ∀ n, P14330076050538169076.a n = (A366478 n : ℚ)

end A366478

/-! ## A366478.P5647804358091187167

`A391092(n)+A228394(n+1)`
-/

namespace A366478.P5647804358091187167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 n + A228394 (n + 1)

end

end A366478.P5647804358091187167

namespace A366478

/-- `A391092(n)+A228394(n+1)` -/
def P5647804358091187167.Spec : Prop :=
  ∀ n, P5647804358091187167.a n = A366478 n

end A366478

/-! ## A366478.P5299695497317692351

`A056109(C(n, 2))+3*C(n, 3)+n`
-/

namespace A366478.P5299695497317692351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (Nat.choose n 2) + (3 * Nat.choose n 3 + n : ℤ)

end

end A366478.P5299695497317692351

namespace A366478

/-- `A056109(C(n, 2))+3*C(n, 3)+n` -/
def P5299695497317692351.Spec : Prop :=
  ∀ n, P5299695497317692351.a n = A366478 n

end A366478

/-!
# A366479: Irregular triangle T(n,k) (n >= 0, k >= 2) read by rows. Consider the planar graph formed from an equilateral triangle with n equally spaced points placed on each edge, as discussed in A092867(n+1). Then T(n,k) is the number of interior points where exactly k chords cross.

The programs for A366479, there is no canonical definition to state claims against.
-/

/-! ## A366479.P3900356230738792735

`A066436(A087107(3*n+1))%A357196(n)`
-/

namespace A366479.P3900356230738792735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066436 (A087107 (3 * n + 1)).toNat) (A357196 n)

end

end A366479.P3900356230738792735

/-!
# A366480: One-third of the number of simple intersection points in the interior of the n-th triangle described in A092867 and A366479.

The programs for A366480, there is no canonical definition to state claims against.
-/

/-! ## A366480.P2569019794320799879

`record[A366479(n)/3]`
-/

namespace A366480.P2569019794320799879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366479 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366480.P2569019794320799879

/-!
# A366483: Place n equally spaced points on each side of an equilateral triangle, and join each of these points by a chord to the 2*n new points on the other two sides: sequence gives number of vertices in the resulting planar graph.

The programs for A366483, there is no canonical definition to state claims against.
-/

/-! ## A366483.P15693129592805415127

`A366485(n)-A366486(n)+1`
-/

namespace A366483.P15693129592805415127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366485 n - A366486 n + 1

end

end A366483.P15693129592805415127

/-! ## A366483.P10381417683211277485

`A366484(n)+3*(n+1)`
-/

namespace A366483.P10381417683211277485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366484 n + (3 * (n + 1) : ℤ)

end

end A366483.P10381417683211277485

/-! ## A366483.P1572140271474633801

`A367302(∑[n]+3)`
-/

namespace A366483.P1572140271474633801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367302 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A366483.P1572140271474633801

/-! ## A366483.P13525681761635768446

`record[A010054(n)*A367302(n+3)]`
-/

namespace A366483.P13525681761635768446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A367302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366483.P13525681761635768446

/-! ## A366483.P2658901349457793677

`record[A174718(n)*A367302(n+3)]`
-/

namespace A366483.P2658901349457793677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174718 n * A367302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366483.P2658901349457793677

/-!
# A366484: Place n equally spaced points on each side of an equilateral triangle, and join each of these points by a chord to the 2*n new points on the other two sides: sequence gives number of interior vertices in the resulting planar graph.

The programs for A366484, there is no canonical definition to state claims against.
-/

/-! ## A366484.P10891536256297266476

`A366485(n)-A366486(n)-3*n-2`
-/

namespace A366484.P10891536256297266476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366485 n - A366486 n - (3 * n : ℤ) - 2

end

end A366484.P10891536256297266476

/-! ## A366484.P2449514026051426150

`A366483(n)-3*(n+1)`
-/

namespace A366484.P2449514026051426150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366483 n - (3 * (n + 1) : ℤ)

end

end A366484.P2449514026051426150

/-! ## A366484.P3881331092341562949

`A367303(∑[n]+3)`
-/

namespace A366484.P3881331092341562949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367303 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A366484.P3881331092341562949

/-!
# A366485: Place n equally spaced points on each side of an equilateral triangle, and join each of these points by a chord to the 2*n new points on the other two sides: sequence gives number of edges in the resulting planar graph.

The programs for A366485, there is no canonical definition to state claims against.
-/

/-! ## A366485.P7567858294572514972

`A366483(n)+A366486(n)-1`
-/

namespace A366485.P7567858294572514972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366483 n + A366486 n - 1

end

end A366485.P7567858294572514972

/-! ## A366485.P9334463258279806152

`A367305(∑[n]+3)`
-/

namespace A366485.P9334463258279806152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367305 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A366485.P9334463258279806152

/-! ## A366485.P10979792444667018629

`record[A010054(n)*A367305(n+3)]`
-/

namespace A366485.P10979792444667018629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A367305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366485.P10979792444667018629

/-! ## A366485.P7190306956583789007

`record[A367305(n+3)/A007318(n)]`
-/

namespace A366485.P7190306956583789007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367305 (n + 3) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366485.P7190306956583789007

/-! ## A366485.P12096067502510932861

`record[A367305(n+3)/A047000(n)]`
-/

namespace A366485.P12096067502510932861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367305 (n + 3) : ℚ) / (A047000 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366485.P12096067502510932861

/-!
# A366486: Place n equally spaced points on each side of an equilateral triangle, and join each of these points by a chord to the 2*n new points on the other two sides: sequence gives number of regions in the resulting planar graph.

The programs for A366486, there is no canonical definition to state claims against.
-/

/-! ## A366486.P3264723553546342102

`A366485(n)-A366483(n)+1`
-/

namespace A366486.P3264723553546342102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366485 n - A366483 n + 1

end

end A366486.P3264723553546342102

/-! ## A366486.P11096681786596010326

`A367304(∑[n]+3)`
-/

namespace A366486.P11096681786596010326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367304 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A366486.P11096681786596010326

/-! ## A366486.P12158895633675320690

`record[A010054(n)*A367304(n+3)]`
-/

namespace A366486.P12158895633675320690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A367304 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366486.P12158895633675320690

/-! ## A366486.P8087909287235168796

`record[A174718(n)*A367304(n+3)]`
-/

namespace A366486.P8087909287235168796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174718 n * A367304 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366486.P8087909287235168796

/-! ## A366486.P6661725254259025446

`record[A367304(n+3)/A007318(n)]`
-/

namespace A366486.P6661725254259025446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367304 (n + 3) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366486.P6661725254259025446

/-!
# A366487: First differences of "commas" sequence A121805.

The programs for A366487, there is no canonical definition to state claims against.
-/

/-! ## A366487.P66803095742492669

`Δ[A121805(n+1)]`
-/

namespace A366487.P66803095742492669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366487.P66803095742492669

/-! ## A366487.P11961700878166854165

`A121805(n+2)-A121805(n+1)`
-/

namespace A366487.P11961700878166854165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121805 (n + 2) - A121805 (n + 1)

end

end A366487.P11961700878166854165

/-! ## A366487.P10967809805064917795

`Δ[A367338(a(n-1))]` with `a(0)=1`
-/

namespace A366487.P10967809805064917795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A367338 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366487.P10967809805064917795

/-! ## A366487.P9670710977377860183

`A367339(and(-1, A121805(n+1)))`
-/

namespace A366487.P9670710977377860183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (Int.land (-1) (A121805 (n + 1))).toNat

end

end A366487.P9670710977377860183

/-! ## A366487.P6395053946126536681

`A367339(A121805(n+1)%A001567(n+1))`
-/

namespace A366487.P6395053946126536681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (Int.tmod (A121805 (n + 1)) (A001567 (n + 1))).toNat

end

end A366487.P6395053946126536681

/-! ## A366487.P8531260952768702525

`A367339(A121805(n+1))%A020472(n+1)`
-/

namespace A366487.P8531260952768702525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367339 (A121805 (n + 1)).toNat) (A020472 (n + 1))

end

end A366487.P8531260952768702525

/-!
# A366488: a(n) = (n^11 - n)/11.

The programs for A366488, the canonical program `A366488.P10110916196873006906` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366488 has offset 0).

The definition of A366488 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A366488.anchor (n : ℕ) : (A366488 n : ℚ) = ((n ^ 11 : ℤ) - (n : ℤ) : ℚ) / 11` in `Proof.A366.A366488`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366488.P10110916196873006906

`(n^11-n)/11`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366488

/-- `(n^11-n)/11` -/
def P10110916196873006906.Spec : Prop :=
  ∀ n, P10110916196873006906.a n = (A366488 n : ℚ)

end A366488

/-! ## A366488.P3072507362078022163

`A208535(eq[11, A002260(n+1)]+1)`
-/

namespace A366488.P3072507362078022163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A366488.P3072507362078022163

namespace A366488

/-- `A208535(eq[11, A002260(n+1)]+1)` -/
def P3072507362078022163.Spec : Prop :=
  ∀ n, P3072507362078022163.a n = A366488 n

end A366488

/-!
# A366489: a(n) = (n^13 - n)/13.

The programs for A366489, the canonical program `A366489.P13230996808277506270` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366489 has offset 0).

The definition of A366489 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A366489.anchor (n : ℕ) : (A366489 n : ℚ) = ((n ^ 13 : ℤ) - (n : ℤ) : ℚ) / 13` in `Proof.A366.A366489`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366489.P13230996808277506270

`(n^13-n)/13`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366489

/-- `(n^13-n)/13` -/
def P13230996808277506270.Spec : Prop :=
  ∀ n, P13230996808277506270.a n = (A366489 n : ℚ)

end A366489

/-!
# A366490: a(n) = (n^17 - n)/17.

The programs for A366490, the canonical program `A366490.P18095061105171444197` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366490 has offset 0).

The definition of A366490 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A366490.anchor (n : ℕ) : (A366490 n : ℚ) = ((n ^ 17 : ℤ) - (n : ℤ) : ℚ) / 17` in `Proof.A366.A366490`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366490.P18095061105171444197

`(n^17-n)/17`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366490

/-- `(n^17-n)/17` -/
def P18095061105171444197.Spec : Prop :=
  ∀ n, P18095061105171444197.a n = (A366490 n : ℚ)

end A366490

/-! ## A366490.P15704280971694829119

`A208535(eq[18, A131818(n+1)])`
-/

namespace A366490.P15704280971694829119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366490.P15704280971694829119

namespace A366490

/-- `A208535(eq[18, A131818(n+1)])` -/
def P15704280971694829119.Spec : Prop :=
  ∀ n, P15704280971694829119.a n = A366490 n

end A366490

/-!
# A366491: a(n) = (n^19 - n)/19.

The programs for A366491, the canonical program `A366491.P7121023607802350257` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366491 has offset 0).

The definition of A366491 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A366491.anchor (n : ℕ) : (A366491 n : ℚ) = ((n ^ 19 : ℤ) - (n : ℤ) : ℚ) / 19` in `Proof.A366.A366491`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366491.P7121023607802350257

`(n^19-n)/19`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366491

/-- `(n^19-n)/19` -/
def P7121023607802350257.Spec : Prop :=
  ∀ n, P7121023607802350257.a n = (A366491 n : ℚ)

end A366491

/-!
# A366492: Analog of A121805, but starting with 4.

The programs for A366492, there is no canonical definition to state claims against.
-/

/-! ## A366492.P3959358667901696316

`A367338(a(n-1))` with `a(0)=4`
-/

namespace A366492.P3959358667901696316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A366492.P3959358667901696316

/-! ## A366492.P4303908218219655321

`eq[4, A367366(n+1)]+1`
-/

namespace A366492.P4303908218219655321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366492.P4303908218219655321

/-! ## A366492.P8680119680337923945

`eq[4, A367366(A028310(n))]`
-/

namespace A366492.P8680119680337923945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366492.P8680119680337923945

/-! ## A366492.P13018812179010929760

`A020725(eq[4, A367366(n+1)])`
-/

namespace A366492.P13018812179010929760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366492.P13018812179010929760

/-!
# A366493: Lexicographically earliest sequence such that each subsequence enclosed by two equal terms is distinct.

The programs for A366493, there is no canonical definition to state claims against.
-/

/-! ## A366493.P10538511576134418906

`gcd(A001394(n), A329173(n+1))`
-/

namespace A366493.P10538511576134418906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001394 n) (A329173 (n + 1))

end

end A366493.P10538511576134418906

/-! ## A366493.P17209803229987658289

`and(A199262(n), A329173(n+1))`
-/

namespace A366493.P17209803229987658289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199262 n) (A329173 (n + 1))

end

end A366493.P17209803229987658289

/-! ## A366493.P17176118481135897719

`and(A157358(n+1), A329173(n+1))`
-/

namespace A366493.P17176118481135897719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157358 (n + 1)) (A329173 (n + 1))

end

end A366493.P17176118481135897719

/-! ## A366493.P11665160313343086131

`and(A329173(n+1), A335067(n+1))`
-/

namespace A366493.P11665160313343086131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329173 (n + 1)) (A335067 (n + 1))

end

end A366493.P11665160313343086131

/-! ## A366493.P17998448650259163784

`and(A329173(n+1), A398648(n+1))`
-/

namespace A366493.P17998448650259163784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329173 (n + 1)) (A398648 (n + 1))

end

end A366493.P17998448650259163784

/-!
# A366494: a(n) is the number of cycles of the map f(x) = 10*x mod (10*n - 1).

The programs for A366494, there is no canonical definition to state claims against.
-/

/-! ## A366494.P10113852846702579987

`A023142(A017377(n))-1`
-/

namespace A366494.P10113852846702579987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A017377 n).toNat - 1

end

end A366494.P10113852846702579987

/-!
# A366495: G.f. A(x) satisfies A(x) = 1 + x*(1+x)^(3/2)*A(x)^(5/2).

The programs for A366495, there is no canonical definition to state claims against.
-/

/-! ## A366495.P1615140258033882260

`A366452(n)-a(n-1)` with `a(0)=1`
-/

namespace A366495.P1615140258033882260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366452 n - a (n - 1)

end

end A366495.P1615140258033882260

/-! ## A366495.P17944595955347698729

`∑{#}[n, (-1)^(n-#)*C(n, #)*A366400(#)]`
-/

namespace A366495.P17944595955347698729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A366400 k : ℚ)

end

end A366495.P17944595955347698729

/-!
# A366496: G.f. A(x) satisfies A(x) = 1 + x*(1+x)^(5/2)*A(x)^(7/2).

The programs for A366496, there is no canonical definition to state claims against.
-/

/-! ## A366496.P10867981474371346386

`A366453(n)-a(n-1)` with `a(0)=1`
-/

namespace A366496.P10867981474371346386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366453 n - a (n - 1)

end

end A366496.P10867981474371346386

/-! ## A366496.P2413199222560461555

`A325356(n)+A049820(A121635(n+2))`
-/

namespace A366496.P2413199222560461555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325356 n + A049820 (A121635 (n + 2)).toNat

end

end A366496.P2413199222560461555

/-!
# A366497: G.f. A(x) satisfies A(x) = 1 + x*(1+x)^(7/2)*A(x)^(9/2).

The programs for A366497, there is no canonical definition to state claims against.
-/

/-! ## A366497.P16894618362605431747

`A158384(A025191(n))`
-/

namespace A366497.P16894618362605431747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158384 (A025191 n).toNat

end

end A366497.P16894618362605431747

/-!
# A366498: G.f. A(x) satisfies A(x) = 1 + x / ((1+x)^(5/2)*A(x)^(3/2)).

The programs for A366498, there is no canonical definition to state claims against.
-/

/-! ## A366498.P15936376715874137667

`A366454(n)-a(n-1)` with `a(0)=1`
-/

namespace A366498.P15936376715874137667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366454 n - a (n - 1)

end

end A366498.P15936376715874137667

/-! ## A366498.P16455074303679566126

`∑{#}[n, (-1)^(n-#)*C(n, #)*A366404(#)]`
-/

namespace A366498.P16455074303679566126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A366404 k : ℚ)

end

end A366498.P16455074303679566126

/-!
# A366499: G.f. A(x) satisfies A(x) = 1 + x / ((1+x)^3*A(x)^2).

The programs for A366499, there is no canonical definition to state claims against.
-/

/-! ## A366499.P7340214078230052318

`A364393(n)-a(n-1)` with `a(0)=1`
-/

namespace A366499.P7340214078230052318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A364393 n - a (n - 1)

end

end A366499.P7340214078230052318

/-! ## A366499.P2629701533347904694

`∑{#}[n, (-1)^(n-#)*C(n, #)*A366364(#)]`
-/

namespace A366499.P2629701533347904694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A366364 k : ℚ)

end

end A366499.P2629701533347904694

