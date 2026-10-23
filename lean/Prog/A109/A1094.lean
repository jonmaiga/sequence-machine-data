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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A109400: For all k: the first k numbers followed by the first k primes.

The programs for A109400, the canonical program `A109400.P14173974455887194416` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109400 has offset 1).

The definition of A109400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109400.P14173974455887194416

`A082500(A001650(n+1)-A082375(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A109400

/-- `A082500(A001650(n+1)-A082375(n))` -/
def P14173974455887194416.Spec : Prop :=
  ∀ n, P14173974455887194416.a n = A109400 (n + 1)

theorem P14173974455887194416.correct : P14173974455887194416.Spec := by
  intro n
  simp only [A109400, Nat.add_sub_cancel]

end A109400

/-! ## A109400.P12167100215749399184

`A082500(A008619(A053186(4*n+2)))`
-/

namespace A109400.P12167100215749399184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A008619 (A053186 (4 * n + 2)).toNat).toNat

end

end A109400.P12167100215749399184

namespace A109400

/-- `A082500(A008619(A053186(4*n+2)))` -/
def P12167100215749399184.Spec : Prop :=
  ∀ n, P12167100215749399184.a n = A109400 (n + 1)

end A109400

/-! ## A109400.P9615931987330316610

`Δ[A109402(n)+a(val(n, n+1))]` with `a(0)=0`
-/

namespace A109400.P9615931987330316610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A109402 n + f1 (SequenceMachineLib.valuation n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109400.P9615931987330316610

namespace A109400

/-- `Δ[A109402(n)+a(val(n, n+1))]` -/
def P9615931987330316610.Spec : Prop :=
  ∀ n, P9615931987330316610.a n = A109400 (n + 1)

end A109400

/-! ## A109400.P11736237184815143016

`Δ[A109402(A028310(n))]+C(2, n+2)`
-/

namespace A109400.P11736237184815143016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109402 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A109400.P11736237184815143016

namespace A109400

/-- `Δ[A109402(A028310(n))]+C(2, n+2)` -/
def P11736237184815143016.Spec : Prop :=
  ∀ n, P11736237184815143016.a n = A109400 (n + 1)

end A109400

/-! ## A109400.P15265178621812836823

`A028310(Δ[A109402(A028310(n))])`
-/

namespace A109400.P15265178621812836823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109402 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A109400.P15265178621812836823

namespace A109400

/-- `A028310(Δ[A109402(A028310(n))])` -/
def P15265178621812836823.Spec : Prop :=
  ∀ n, P15265178621812836823.a n = A109400 (n + 1)

end A109400

/-! ## A109400.P11414370166113742815

`A028310(A109402(n+1)-A109402(A028310(n)))`
-/

namespace A109400.P11414370166113742815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A109402 (n + 1) - A109402 (A028310 n).toNat).toNat

end

end A109400.P11414370166113742815

namespace A109400

/-- `A028310(A109402(n+1)-A109402(A028310(n)))` -/
def P11414370166113742815.Spec : Prop :=
  ∀ n, P11414370166113742815.a n = A109400 (n + 1)

end A109400

/-! ## A109400.P1689334971416466216

`A082500(A167430(n+1))`
-/

namespace A109400.P1689334971416466216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A167430 (n + 1)).toNat

end

end A109400.P1689334971416466216

namespace A109400

/-- `A082500(A167430(n+1))` -/
def P1689334971416466216.Spec : Prop :=
  ∀ n, P1689334971416466216.a n = A109400 (n + 1)

end A109400

/-! ## A109400.P3050745752821302897

`A082500(A002262(A246706(n+1)))`
-/

namespace A109400.P3050745752821302897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A002262 (A246706 (n + 1)).toNat).toNat

end

end A109400.P3050745752821302897

namespace A109400

/-- `A082500(A002262(A246706(n+1)))` -/
def P3050745752821302897.Spec : Prop :=
  ∀ n, P3050745752821302897.a n = A109400 (n + 1)

end A109400

/-!
# A109401: Number of primes in the first n terms of A109400.

The programs for A109401, there is no canonical definition to state claims against.
-/

/-! ## A109401.P1759674414436529505

`∑[A010051(A109400(n+1))]`
-/

namespace A109401.P1759674414436529505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A109400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P1759674414436529505

/-! ## A109401.P1637410338666147316

`∑[A185206(A004741(n+1))]`
-/

namespace A109401.P1637410338666147316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (A004741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P1637410338666147316

/-! ## A109401.P7822052926876652055

`∑[A185206(A167430(n+1))]`
-/

namespace A109401.P7822052926876652055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (A167430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P7822052926876652055

/-! ## A109401.P9952009047175671368

`∑[A185206(A253580(n)+1)]`
-/

namespace A109401.P9952009047175671368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (A253580 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P9952009047175671368

/-! ## A109401.P10130907471386521194

`∑[A267349(xor(2, A253580(n)))]`
-/

namespace A109401.P10130907471386521194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267349 (Int.xor 2 (A253580 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P10130907471386521194

/-! ## A109401.P16738656440367956835

`∑[A064911(A109400(n+1)²)]`
-/

namespace A109401.P16738656440367956835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A109400 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P16738656440367956835

/-! ## A109401.P9813112249913083787

`∑[A101040(A109400(n+1)²)]`
-/

namespace A109401.P9813112249913083787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A109400 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P9813112249913083787

/-! ## A109401.P13058369912421105366

`∑[A211487(A109400(n+1)²)]`
-/

namespace A109401.P13058369912421105366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A109400 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P13058369912421105366

/-! ## A109401.P5064129384473219761

`∑[A302048(A109400(n+1)²)]`
-/

namespace A109401.P5064129384473219761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A109400 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P5064129384473219761

/-! ## A109401.P2154673946734899165

`∑[A064911(2*A109400(n+1))]`
-/

namespace A109401.P2154673946734899165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A109400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109401.P2154673946734899165

/-!
# A109402: Partial sums of A109400.

The programs for A109402, the canonical program `A109402.P4898399199614324654` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109402 has offset 1).

The definition of A109402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109402.P4898399199614324654

`∑[A109400(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A109402

/-- `∑[A109400(n+1)]` -/
def P4898399199614324654.Spec : Prop :=
  ∀ n, P4898399199614324654.a n = A109402 (n + 1)

theorem P4898399199614324654.correct : P4898399199614324654.Spec := by
  intro n
  simp only [A109402, Nat.add_sub_cancel]

end A109402

/-! ## A109402.P8118749465456889738

`a(n-1)+A109400(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A109402.P8118749465456889738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A109400 (n + 1) + A000007 n)

end

end A109402.P8118749465456889738

namespace A109402

/-- `a(n-1)+A109400(n+1)+A000007(n)` -/
def P8118749465456889738.Spec : Prop :=
  ∀ n, P8118749465456889738.a n = A109402 (n + 1)

end A109402

/-! ## A109402.P1708795791698329742

`∑[A109400(ϕ²-(ϕ-n))-A000035(2*n)]`
-/

namespace A109402.P1708795791698329742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A000035 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109402.P1708795791698329742

namespace A109402

/-- `∑[A109400(ϕ²-(ϕ-n))-A000035(2*n)]` -/
def P1708795791698329742.Spec : Prop :=
  ∀ n, P1708795791698329742.a n = A109402 (n + 1)

end A109402

/-! ## A109402.P4736545846784543208

`a(n-1)-(A057428(n)+1-A109400(n+1))` with `a(0)=1`
-/

namespace A109402.P4736545846784543208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A057428 n + 1 - A109400 (n + 1))

end

end A109402.P4736545846784543208

namespace A109402

/-- `a(n-1)-(A057428(n)+1-A109400(n+1))` -/
def P4736545846784543208.Spec : Prop :=
  ∀ n, P4736545846784543208.a n = A109402 (n + 1)

end A109402

/-! ## A109402.P9137542067757020624

`∑[A007318(and(2, n-3))*A109400(ϕ²-(ϕ-n))]`
-/

namespace A109402.P9137542067757020624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 3)).toNat * A109400 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109402.P9137542067757020624

namespace A109402

/-- `∑[A007318(and(2, n-3))*A109400(ϕ²-(ϕ-n))]` -/
def P9137542067757020624.Spec : Prop :=
  ∀ n, P9137542067757020624.a n = A109402 (n + 1)

end A109402

/-! ## A109402.P8137028158319571144

`A028310(∑[A109400(ϕ²-(ϕ-n))])`
-/

namespace A109402.P8137028158319571144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109402.P8137028158319571144

namespace A109402

/-- `A028310(∑[A109400(ϕ²-(ϕ-n))])` -/
def P8137028158319571144.Spec : Prop :=
  ∀ n, P8137028158319571144.a n = A109402 (n + 1)

end A109402

/-! ## A109402.P15269781823277008386

`a(n-1)+A002262(A000124(n))*A109400(n+1)` with `a(0)=1`
-/

namespace A109402.P15269781823277008386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A002262 (A000124 n).toNat * A109400 (n + 1)

end

end A109402.P15269781823277008386

namespace A109402

/-- `a(n-1)+A002262(A000124(n))*A109400(n+1)` -/
def P15269781823277008386.Spec : Prop :=
  ∀ n, P15269781823277008386.a n = A109402 (n + 1)

end A109402

/-! ## A109402.P5313046056665663545

`∑[A082500(A167430(n+1))]`
-/

namespace A109402.P5313046056665663545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A167430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109402.P5313046056665663545

namespace A109402

/-- `∑[A082500(A167430(n+1))]` -/
def P5313046056665663545.Spec : Prop :=
  ∀ n, P5313046056665663545.a n = A109402 (n + 1)

end A109402

/-!
# A109403: Examine the sequence of all (even or odd) semiprimes, A001358, and record the averages of any pair of successive terms of the same parity.

The programs for A109403, there is no canonical definition to state claims against.
-/

/-! ## A109403.P11549712558309703942

`record[A273943(A118717(A328399(n)))]`
-/

namespace A109403.P11549712558309703942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118717 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P11549712558309703942

/-! ## A109403.P13196717405103798421

`record[A273943(A118717(A006165(n+1)))]`
-/

namespace A109403.P13196717405103798421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118717 (A006165 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P13196717405103798421

/-! ## A109403.P10331219371842638841

`record[A273943(A118717(A266977(n)))]`
-/

namespace A109403.P10331219371842638841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118717 (A266977 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P10331219371842638841

/-! ## A109403.P5187754184173793099

`record[A273943(A118717(A032742(n+1)))]`
-/

namespace A109403.P5187754184173793099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118717 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P5187754184173793099

/-! ## A109403.P11871127436738127024

`record[A273943(A118717(A203814(n)))]`
-/

namespace A109403.P11871127436738127024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118717 (A203814 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P11871127436738127024

/-! ## A109403.P6428713992216635324

`record[A273943(A118717(A100922(n)))]`
-/

namespace A109403.P6428713992216635324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118717 (A100922 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P6428713992216635324

/-! ## A109403.P2303372887748095714

`record[A078898(A118717(n+1))]`
-/

namespace A109403.P2303372887748095714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P2303372887748095714

/-! ## A109403.P3512632203450558863

`record[A260437(A118717(A008619(n)))]`
-/

namespace A109403.P3512632203450558863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A118717 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109403.P3512632203450558863

/-! ## A109403.P17364405125578309274

`A004526(record[A038608(A118717(n+1))])`
-/

namespace A109403.P17364405125578309274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109403.P17364405125578309274

/-! ## A109403.P11908751750278408388

`A110654(record[A038608(A118717(n+1))])`
-/

namespace A109403.P11908751750278408388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109403.P11908751750278408388

/-!
# A109404: Numbers n such that sum of n-th and (n+1)-st semiprimes is a prime.

The programs for A109404, there is no canonical definition to state claims against.
-/

/-! ## A109404.P2103371558565826203

`A058933(A272308(n+1))`
-/

namespace A109404.P2103371558565826203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A272308 (n + 1)).toNat

end

end A109404.P2103371558565826203

/-! ## A109404.P6202081281599172985

`∑{d}[A272308(n+1), A174956(#)]`
-/

namespace A109404.P6202081281599172985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d

end

end A109404.P6202081281599172985

/-! ## A109404.P18404990647963358574

`A072000(floor(A108183(n+1)/2))`
-/

namespace A109404.P18404990647963358574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 ⌊(A108183 (n + 1) : ℚ) / 2⌋.toNat

end

end A109404.P18404990647963358574

/-! ## A109404.P14217324647894933325

`A072000(A272308(n+1)+char[3])`
-/

namespace A109404.P14217324647894933325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A272308 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A109404.P14217324647894933325

/-! ## A109404.P10959284321297695320

`A072000((A108183(n+1)-1)/2)`
-/

namespace A109404.P10959284321297695320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (SequenceMachineLib.roundAway ((A108183 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A109404.P10959284321297695320

/-! ## A109404.P14029569488435179763

`eq[1, A001222(A118717(n+1))]+1`
-/

namespace A109404.P14029569488435179763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118717 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109404.P14029569488435179763

/-! ## A109404.P1830775688283852263

`A072000(A272308(2*n+1-n))`
-/

namespace A109404.P1830775688283852263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A272308 (2 * n + 1 - n)).toNat

end

end A109404.P1830775688283852263

/-! ## A109404.P9771071305293842167

`record[(n+3)%A014963(A118717(n+3))]`
-/

namespace A109404.P9771071305293842167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A014963 (A118717 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109404.P9771071305293842167

/-! ## A109404.P12082064715971277053

`∑{d}[A072000(A272308(n+1)), A000010(#)]`
-/

namespace A109404.P12082064715971277053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A272308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A109404.P12082064715971277053

/-!
# A109405: a(2) = 36; for n >= 3, a(n) = 2^a(n-1) mod 10^n.

The programs for A109405, there is no canonical definition to state claims against.
-/

/-! ## A109405.P7095270140954299369

`A113627(n+2)`
-/

namespace A109405.P7095270140954299369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113627 (n + 2)

end

end A109405.P7095270140954299369

/-! ## A109405.P1936071584486208873

`A206636(n+2)`
-/

namespace A109405.P1936071584486208873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206636 (n + 2)

end

end A109405.P1936071584486208873

/-! ## A109405.P1895338377297312041

`A064541(n+1)%A011557(n+2)`
-/

namespace A109405.P1895338377297312041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064541 (n + 1)) (A011557 (n + 2))

end

end A109405.P1895338377297312041

/-! ## A109405.P14891088078191550216

`∏{e}[A020707(n), A113627(#)]`
-/

namespace A109405.P14891088078191550216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A113627 (Nat.factorization (f1 n).natAbs p)

end

end A109405.P14891088078191550216

/-! ## A109405.P13151040438255533811

`A064541(∑[A070092(n+1)^A120043(n)])`
-/

namespace A109405.P13151040438255533811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070092 (n + 1) : ℚ) ^ (A120043 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064541 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109405.P13151040438255533811

/-!
# A109407: In decimal expansion of Pi, positions of ends of minimal sublists each containing all decimal digits at least once.

The programs for A109407, there is no canonical definition to state claims against.
-/

/-! ## A109407.P11301873541085007325

`∑[A104781(n+1)]`
-/

namespace A109407.P11301873541085007325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109407.P11301873541085007325

/-! ## A109407.P12418646913099441198

`∑[A104781(-xor(n, -1))]^gcd(n, n-1)`
-/

namespace A109407.P12418646913099441198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Int.gcd (n : ℤ) ((n : ℤ) - 1)

end

end A109407.P12418646913099441198

/-!
# A109408: Cubes whose digits sum to a prime.

The programs for A109408, there is no canonical definition to state claims against.
-/

/-! ## A109408.P12833896024941102759

`A076204(n+1)^3`
-/

namespace A109408.P12833896024941102759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1) ^ 3

end

end A109408.P12833896024941102759

/-! ## A109408.P8616165692970095564

`A000578(A076204(n+1))`
-/

namespace A109408.P8616165692970095564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A076204 (n + 1)).toNat

end

end A109408.P8616165692970095564

/-! ## A109408.P8927891039515846582

`eq[0, A007920(A004164(n))]^3`
-/

namespace A109408.P8927891039515846582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A109408.P8927891039515846582

/-! ## A109408.P17847139953779858617

`eq[2, A074206(A004164(n)²)]^3`
-/

namespace A109408.P17847139953779858617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A004164 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A109408.P17847139953779858617

/-! ## A109408.P3607910285223612541

`eq[A000007(n), A072480(A004164(n))]^3`
-/

namespace A109408.P3607910285223612541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A004164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A109408.P3607910285223612541

/-!
# A109409: Coefficients of polynomials triangular sequence produced by removing primes from the odd numbers in A028338.

The programs for A109409, there is no canonical definition to state claims against.
-/

/-! ## A109409.P5270128640566471132

`A153152(and(A147491(n+1), A167666(n)))`
-/

namespace A109409.P5270128640566471132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (Int.land (A147491 (n + 1)) (A167666 n)).toNat

end

end A109409.P5270128640566471132

/-!
# A109410: Prime numbers p such that p = digit sum of cubes in A109408.

The programs for A109410, there is no canonical definition to state claims against.
-/

/-! ## A109410.P5618239256509168144

`p?[A004164(n)]`
-/

namespace A109410.P5618239256509168144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109410.P5618239256509168144

/-! ## A109410.P339729362136707217

`∑{digits}[A109408(n+1), #]`
-/

namespace A109410.P339729362136707217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A109410.P339729362136707217

/-! ## A109410.P597563957524500130

`p?[∑{digits}[A118719(n+1), #]]`
-/

namespace A109410.P597563957524500130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109410.P597563957524500130

/-! ## A109410.P16394483711265694763

`∑{digits}[A076204(n+1)^3, #]`
-/

namespace A109410.P16394483711265694763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A109410.P16394483711265694763

/-! ## A109410.P16483069116288429509

`p?[A123135(n+1)%(n+1)²]`
-/

namespace A109410.P16483069116288429509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123135 (n + 1)) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109410.P16483069116288429509

/-! ## A109410.P12323264954910841427

`A004164(A076204(n+1))`
-/

namespace A109410.P12323264954910841427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A076204 (n + 1)).toNat

end

end A109410.P12323264954910841427

/-! ## A109410.P13368987232086214192

`A004164(A109408(n+1)^(1/3))`
-/

namespace A109410.P13368987232086214192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (SequenceMachineLib.roundAway ((A109408 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A109410.P13368987232086214192

/-! ## A109410.P17678415533427792165

`p?[A123135(n+1)-A000578(n+1)]`
-/

namespace A109410.P17678415533427792165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123135 (n + 1) - A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109410.P17678415533427792165

/-!
# A109411: Partition the sequence of positive integers into minimal groups so that sum of terms in each group is a semiprime; sequence gives sizes of the groups.

The programs for A109411, there is no canonical definition to state claims against.
-/

/-! ## A109411.P5069823914400183715

`Δ[A109824(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A109411.P5069823914400183715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A109824 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109411.P5069823914400183715

/-! ## A109411.P18229143946557849287

`A109824(A109825(n+1))`
-/

namespace A109411.P18229143946557849287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109824 (A109825 (n + 1)).toNat

end

end A109411.P18229143946557849287

/-! ## A109411.P13081443675097443417

`Δ[A109825(C(n+1, n))]`
-/

namespace A109411.P13081443675097443417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (Nat.choose (n + 1) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109411.P13081443675097443417

/-! ## A109411.P1729977186554776549

`Δ[A109825(-xor(n, -1))]`
-/

namespace A109411.P1729977186554776549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109411.P1729977186554776549

/-! ## A109411.P15026889176103098924

`Δ[A109825(xor(1, xor(1, n))+1)]`
-/

namespace A109411.P15026889176103098924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (Nat.xor 1 (Nat.xor 1 n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109411.P15026889176103098924

/-! ## A109411.P5811317150025032196

`Δ[A109825(2*n+1-n)]`
-/

namespace A109411.P5811317150025032196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (2 * n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109411.P5811317150025032196

/-! ## A109411.P16209990858666001926

`A000026(Δ[A109825(n+1)])`
-/

namespace A109411.P16209990858666001926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (f1 (n + 1) - f1 n).toNat

end

end A109411.P16209990858666001926

/-! ## A109411.P14741168974109937469

`A001222(2^Δ[A109825(n+1)])`
-/

namespace A109411.P14741168974109937469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A109411.P14741168974109937469

/-! ## A109411.P2101202435212530406

`Δ[∑{d}[A109825(n+1), A000010(#)]]`
-/

namespace A109411.P2101202435212530406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109411.P2101202435212530406

/-! ## A109411.P9048127411009503064

`A109825(n+2)-A109825(n+1)`
-/

namespace A109411.P9048127411009503064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 2) - A109825 (n + 1)

end

end A109411.P9048127411009503064

/-!
# A109412: Semiprimes = one-term groups in the partition of the sequence of natural numbers A109411.

The programs for A109412, there is no canonical definition to state claims against.
-/

/-! ## A109412.P6602844101812294459

`A133837(eq[1, A109411(n+1)]+1)`
-/

namespace A109412.P6602844101812294459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A109412.P6602844101812294459

/-! ## A109412.P5307405228763404313

`record[root(A133837(n+2), A109411(n+2))]`
-/

namespace A109412.P5307405228763404313
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133837 (n + 2) : ℝ) ^ (1 / (A109411 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109412.P5307405228763404313

/-! ## A109412.P6733375462227280033

`A133837(record[(n+1)/A109411(n+2)]+1)`
-/

namespace A109412.P6733375462227280033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109411 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133837 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A109412.P6733375462227280033

/-! ## A109412.P6443702191511823677

`∩[A001358(n+1), A109411(n)+a(n-1)]` with `a(0)=1`
-/

namespace A109412.P6443702191511823677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A109411 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109412.P6443702191511823677

/-! ## A109412.P3099286115748635922

`filter[A109825(n+1), A064911(#)]`
-/

namespace A109412.P3099286115748635922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A109412.P3099286115748635922

/-!
# A109413: a(n) equals the (n*(n+1)/2)-th partial sum of the self-convolution of A010054, which has the g.f.: Sum_{n>=0} x^(n*(n+1)/2).

The programs for A109413, there is no canonical definition to state claims against.
-/

/-! ## A109413.P11375299106387682456

`A199015(∑[n])`
-/

namespace A109413.P11375299106387682456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109413.P11375299106387682456

/-! ## A109413.P10618737116376313589

`A057656(∑[n])/2`
-/

namespace A109413.P10618737116376313589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057656 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A109413.P10618737116376313589

/-! ## A109413.P13810823471336357372

`A052115(comp[2*(n+1)]-n)+Δ[n²]`
-/

namespace A109413.P13810823471336357372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052115 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A109413.P13810823471336357372

/-! ## A109413.P6749962793850110117

`A289441(A057656(∑[n]))`
-/

namespace A109413.P6749962793850110117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A057656 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109413.P6749962793850110117

/-! ## A109413.P17768900463613451410

`n+1+A052115(A259361(n²))+n`
-/

namespace A109413.P17768900463613451410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A052115 (A259361 (n ^ 2)).toNat + (n : ℤ))

end

end A109413.P17768900463613451410

/-! ## A109413.P5528583780143605682

`2*n+A052115(A004273(n)-n)+1`
-/

namespace A109413.P5528583780143605682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A052115 (A004273 n - (n : ℤ)).toNat + 1)

end

end A109413.P5528583780143605682

/-! ## A109413.P119325247474886425

`A052115(A259361(n²))+A005843(n)+1`
-/

namespace A109413.P119325247474886425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052115 (A259361 (n ^ 2)).toNat + A005843 n + 1

end

end A109413.P119325247474886425

/-! ## A109413.P7511206058771372938

`A133310(3*n)+A052115(A004273(n)-n)`
-/

namespace A109413.P7511206058771372938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (3 * n) + A052115 (A004273 n - (n : ℤ)).toNat

end

end A109413.P7511206058771372938

/-!
# A109414: a(n) equals the (n*(n+1)/2)-th partial sum of the self-convolution cube of A010054, which has the g.f.: Sum_{k>=0} x^(k*(k+1)/2).

The programs for A109414, there is no canonical definition to state claims against.
-/

/-! ## A109414.P18058695076278002396

`A038835(∑[n])`
-/

namespace A109414.P18058695076278002396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038835 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109414.P18058695076278002396

/-! ## A109414.P16878736398701461020

`A121055(∑[n])/2`
-/

namespace A109414.P16878736398701461020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121055 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A109414.P16878736398701461020

/-! ## A109414.P7231227029529070366

`A121054(∑[n])/4`
-/

namespace A109414.P7231227029529070366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121054 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A109414.P7231227029529070366

/-! ## A109414.P10329667696527766197

`A014682(A121055(∑[n]))`
-/

namespace A109414.P10329667696527766197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A121055 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109414.P10329667696527766197

/-! ## A109414.P2138973752447534959

`record[A038835(A091018(n))]`
-/

namespace A109414.P2138973752447534959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038835 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109414.P2138973752447534959

/-!
# A109415: a(n) equals the (n*(n+1)/2)-th partial sum of the self-convolution 4th power of A010054, which has the g.f.: Sum_{k>=0} x^(k*(k+1)/2).

The programs for A109415, there is no canonical definition to state claims against.
-/

/-! ## A109415.P841815945972664717

`A326123(∑[n]+1)`
-/

namespace A109415.P841815945972664717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109415.P841815945972664717

/-! ## A109415.P4012375570375190869

`record[A326123(A056536(n+1))]`
-/

namespace A109415.P4012375570375190869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326123 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109415.P4012375570375190869

/-! ## A109415.P5719387741476979081

`or(char[1], A326123(A000124(n)))`
-/

namespace A109415.P5719387741476979081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A326123 (A000124 n).toNat)

end

end A109415.P5719387741476979081

/-! ## A109415.P9285629735225351264

`record[A326123(n+1)/A054143(n)]`
-/

namespace A109415.P9285629735225351264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326123 (n + 1) : ℚ) / (A054143 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109415.P9285629735225351264

/-! ## A109415.P9076327914151999471

`record[∑[A000203(2*n+1)]*A010054(n)]`
-/

namespace A109415.P9076327914151999471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109415.P9076327914151999471

/-!
# A109416: Triangle read by row where n-th row contains the least n primes of form 4k+1 if n is odd and of form 4k+3 if n is even such that sequence is always increasing.

The programs for A109416, there is no canonical definition to state claims against.
-/

/-! ## A109416.P16606687450362339742

`p?[comp[A109418(n+1)]]`
-/

namespace A109416.P16606687450362339742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109416.P16606687450362339742

/-! ## A109416.P16643976372212047185

`p?[A097218(A007494(n+1))]`
-/

namespace A109416.P16643976372212047185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (A007494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109416.P16643976372212047185

/-! ## A109416.P4238044935427238065

`p?[A097218(A267528(n+2))]`
-/

namespace A109416.P4238044935427238065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (A267528 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109416.P4238044935427238065

/-! ## A109416.P1703282139440441865

`p?[A010176(n)*A097218(n+1)]`
-/

namespace A109416.P1703282139440441865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010176 n * A097218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109416.P1703282139440441865

/-! ## A109416.P8075399163718881921

`p?[A011655(n)*A097218(n+1)]`
-/

namespace A109416.P8075399163718881921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A097218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109416.P8075399163718881921

/-!
# A109417: Primes not in A108702.

The programs for A109417, there is no canonical definition to state claims against.
-/

/-! ## A109417.P11881087401991791258

`p?[A004276(n)-A196776(n+1)]`
-/

namespace A109417.P11881087401991791258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n - A196776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109417.P11881087401991791258

/-! ## A109417.P12354565180394080835

`p?[A000037(n+1)^C(3, n%4)]`
-/

namespace A109417.P12354565180394080835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) ^ Nat.choose 3 (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109417.P12354565180394080835

/-! ## A109417.P701060257792196037

`p?[∑[A028310(A277581(3*n+2))]]`
-/

namespace A109417.P701060257792196037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A277581 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109417.P701060257792196037

/-! ## A109417.P621833084361610022

`p?[∑[A138033(A098180(3*n+4))]]`
-/

namespace A109417.P621833084361610022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A098180 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109417.P621833084361610022

/-!
# A109418: Primes not in A109416.

The programs for A109418, there is no canonical definition to state claims against.
-/

/-! ## A109418.P5311752183868488279

`A087572(∪[A215388(n+1), A215391(n+1)])`
-/

namespace A109418.P5311752183868488279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087572 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A109418.P5311752183868488279

/-!
# A109419: Primes in both A108702 and A109416.

The programs for A109419, there is no canonical definition to state claims against.
-/

/-! ## A109419.P62386040478364424

`∩[A108702(n+1), A109416(n+1)]`
-/

namespace A109419.P62386040478364424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109419.P62386040478364424

/-! ## A109419.P4708377710941834232

`∩[A177078(n+1), A363513(n+1)]`
-/

namespace A109419.P4708377710941834232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109419.P4708377710941834232

/-! ## A109419.P5653509757615758539

`∩[A302568(n+1), A363513(n+1)]`
-/

namespace A109419.P5653509757615758539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109419.P5653509757615758539

/-!
# A109420: Primes in neither A108702 nor A109416.

The programs for A109420, there is no canonical definition to state claims against.
-/

/-! ## A109420.P12521113705673295217

`∩[A109417(n+1), A109418(n+1)]`
-/

namespace A109420.P12521113705673295217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109420.P12521113705673295217

/-!
# A109421: Numbers n such that tau(n)/bigomega(n) is an integer [tau(n)=number of divisors of n; bigomega(n)=number of prime divisors of n, counted with multiplicities].

The programs for A109421, there is no canonical definition to state claims against.
-/

/-! ## A109421.P17884693810895229462

`eq[A000007(2*n+3), A068432(A294018(n+1)+2)]+1`
-/

namespace A109421.P17884693810895229462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (A294018 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109421.P17884693810895229462

/-!
# A109422: Numbers n such that tau(n)/bigomega(n) is not an integer [tau(n) =number of divisors of n; bigomega(n)=number of prime divisors of n, counted with multiplicities].

The programs for A109422, there is no canonical definition to state claims against.
-/

/-! ## A109422.P13511169473396369353

`comp[A109421(n+1)-2]+2`
-/

namespace A109422.P13511169473396369353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109421 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A109422.P13511169473396369353

/-! ## A109422.P14060467832804557192

`filter[A328957(n+1), A066247(#)]`
-/

namespace A109422.P14060467832804557192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A109422.P14060467832804557192

/-! ## A109422.P10984290760957284785

`filter[A328957(n+2), A005171(#)]`
-/

namespace A109422.P10984290760957284785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A109422.P10984290760957284785

/-! ## A109422.P12170543179995955948

`∩[A002808(n+1), A328957(n+1)]`
-/

namespace A109422.P12170543179995955948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109422.P12170543179995955948

/-! ## A109422.P12913503603049476029

`∩[A259241(n+1), A328957(n+1)]`
-/

namespace A109422.P12913503603049476029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109422.P12913503603049476029

/-! ## A109422.P8433501978213683334

`∩[A328957(n+1), A379271(n+1)]`
-/

namespace A109422.P8433501978213683334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109422.P8433501978213683334

/-! ## A109422.P15825630682064370076

`∪[A109426(n+1), A348121(n+1)]`
-/

namespace A109422.P15825630682064370076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109422.P15825630682064370076

/-!
# A109423: Numbers n such that sigma(n)/bigomega(n) is an integer [sigma(n) = sum of divisors of n; bigomega(n) = number of prime divisors of n, counted with multiplicity].

The programs for A109423, there is no canonical definition to state claims against.
-/

/-! ## A109423.P4905470108785568959

`eq[char[A109424(n+1)], A000122(n)]`
-/

namespace A109423.P4905470108785568959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109424 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A109423.P4905470108785568959

/-! ## A109423.P11690923832337931285

`lt[A285384(n+1), A228531(A293204(n))]`
-/

namespace A109423.P11690923832337931285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228531 (A293204 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109423.P11690923832337931285

/-!
# A109424: Numbers n such that sigma(n)/bigomega(n) is not an integer [sigma(n) = sum of divisors of n; bigomega(n) = number of prime divisors of n, counted with multiplicity].

The programs for A109424, there is no canonical definition to state claims against.
-/

/-! ## A109424.P8897959647380914880

`A013929(lt[A089457(n+1), A354823(2*(n+2))])`
-/

namespace A109424.P8897959647380914880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354823 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109424.P8897959647380914880

/-! ## A109424.P1536570697875354258

`A013929(lt[A317245(3*(n+1)), A005132(2*n)])`
-/

namespace A109424.P1536570697875354258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109424.P1536570697875354258

/-! ## A109424.P1161183867335474710

`A013929(lt[A179070(n+1), A256303(n)])`
-/

namespace A109424.P1161183867335474710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109424.P1161183867335474710

/-!
# A109425: Numbers k such that tau(k)/omega(k) is an integer, where tau(k) = number of divisors of k and omega(k) = number of distinct prime factors of k.

The programs for A109425, there is no canonical definition to state claims against.
-/

/-! ## A109425.P15886960398401901118

`lt[A199238(A295557(n+1)+4), 1]+1`
-/

namespace A109425.P15886960398401901118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (A295557 (n + 1) + 4).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A109425.P15886960398401901118

/-! ## A109425.P3260930572855939731

`lt[A001122(A001359(2*(n+1)))^(A351944(n+1)-2), n]+1`
-/

namespace A109425.P3260930572855939731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001122 (A001359 (2 * (n + 1))).toNat : ℚ) ^ (A351944 (n + 1) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A109425.P3260930572855939731

/-! ## A109425.P2271626952151532219

`lt[A135739(n²+1)^(A351944(n+1)-2), n]+1`
-/

namespace A109425.P2271626952151532219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135739 (n ^ 2 + 1) : ℚ) ^ (A351944 (n + 1) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A109425.P2271626952151532219

/-! ## A109425.P13704401939863592985

`lt[A294650((n+1)²)^(A351944(n+1)-2), n]+1`
-/

namespace A109425.P13704401939863592985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294650 ((n + 1) ^ 2) : ℚ) ^ (A351944 (n + 1) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A109425.P13704401939863592985

/-! ## A109425.P16474501003482455405

`lt[A330575(n²+1)^(A351944(n+1)-2), n]+1`
-/

namespace A109425.P16474501003482455405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330575 (n ^ 2 + 1) : ℚ) ^ (A351944 (n + 1) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A109425.P16474501003482455405

/-! ## A109425.P2306904246152211189

`lt[A266188((n+3)²+1)^(A351944(n+1)-2), n]+1`
-/

namespace A109425.P2306904246152211189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266188 ((n + 3) ^ 2 + 1) : ℚ) ^ (A351944 (n + 1) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A109425.P2306904246152211189

/-! ## A109425.P10690180130744978674

`eq[1, and(1, A304118(n+1))]+1`
-/

namespace A109425.P10690180130744978674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109425.P10690180130744978674

/-!
# A109426: Numbers n such that tau(n)/omega(n) is not an integer [tau(n) =number of divisors of n; omega(n)=number of distinct prime factors of n].

The programs for A109426, there is no canonical definition to state claims against.
-/

/-! ## A109426.P14411654879417094763

`∩[A109422(n+1), comp[A109425(n+1)]]`
-/

namespace A109426.P14411654879417094763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109425 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A109426.P14411654879417094763

/-! ## A109426.P5859904733381586782

`lt[48, A353753(A069626(n+1)+1)]+1`
-/

namespace A109426.P5859904733381586782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (A069626 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A109426.P5859904733381586782

/-! ## A109426.P7909473370480186397

`∩[A325261(n+1), A351295(n+5)]`
-/

namespace A109426.P7909473370480186397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351295 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109426.P7909473370480186397

/-!
# A109427: Numbers n such that sigma(n)/omega(n) is an integer [sigma(n) = sum of divisors of n; omega(n) = number of distinct prime factors of n].

The programs for A109427, there is no canonical definition to state claims against.
-/

/-! ## A109427.P9980912887266257645

`comp[A109428(n+1)-2]+2`
-/

namespace A109427.P9980912887266257645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109428 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A109427.P9980912887266257645

/-! ## A109427.P13861615162856672232

`comp[eq[A226607(n+1), A346094(n+1)]]`
-/

namespace A109427.P13861615162856672232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346094 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A109427.P13861615162856672232

/-! ## A109427.P18121753956691037337

`comp[A143536(n+1)*A304223(n)]`
-/

namespace A109427.P18121753956691037337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1) * A304223 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109427.P18121753956691037337

/-! ## A109427.P3238152943042437268

`lt[round(n/(n%2+1/2)), A256263(A151723(n))]`
-/

namespace A109427.P3238152943042437268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A151723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109427.P3238152943042437268

/-! ## A109427.P5011155403996969146

`A093618(A132145(n+1))+A000007(A332102(n))`
-/

namespace A109427.P5011155403996969146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093618 (A132145 (n + 1)).toNat + A000007 (A332102 n).toNat

end

end A109427.P5011155403996969146

/-! ## A109427.P4485401929113256949

`A151878(A338331(n+1))+A093618(A132145(n+1))`
-/

namespace A109427.P4485401929113256949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A338331 (n + 1)).toNat + A093618 (A132145 (n + 1)).toNat

end

end A109427.P4485401929113256949

/-!
# A109429: Rearrange terms of A050376 so that a(2^j)=2^(2^j) for j>=0.

The programs for A109429, there is no canonical definition to state claims against.
-/

/-! ## A109429.P5178155663427707319

`A319935(A228539(n))+A228540(n)`
-/

namespace A109429.P5178155663427707319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319935 (A228539 n).toNat + A228540 n

end

end A109429.P5178155663427707319

/-! ## A109429.P17793893962082938412

`A207800(A067576(A209268(A207790(n+2))))`
-/

namespace A109429.P17793893962082938412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207800 (A067576 (A209268 (A207790 (n + 2)).toNat).toNat).toNat

end

end A109429.P17793893962082938412

/-!
# A109431: Binary strings that have 1's where 'evil numbers' occur, 0's elsewhere and every term ends with the n-th evil number index (counting with 0 = first).

The programs for A109431, there is no canonical definition to state claims against.
-/

/-! ## A109431.P13064592060690797135

`A102397(record[A102391(n)])`
-/

namespace A109431.P13064592060690797135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109431.P13064592060690797135

/-! ## A109431.P10315173503311908185

`A102397(A001969(n+1))`
-/

namespace A109431.P10315173503311908185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (A001969 (n + 1)).toNat

end

end A109431.P10315173503311908185

/-! ## A109431.P15094956488147022144

`A102397(eq[0, A010060(n)])`
-/

namespace A109431.P15094956488147022144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109431.P15094956488147022144

/-! ## A109431.P7303028860097568144

`A102397(eq[1, A001285(n)])`
-/

namespace A109431.P7303028860097568144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109431.P7303028860097568144

/-! ## A109431.P14079292000545220759

`A102397(eq[1, A010059(n)])`
-/

namespace A109431.P14079292000545220759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109431.P14079292000545220759

/-! ## A109431.P9331690057144770515

`A102397(A010060(n)+2*n)`
-/

namespace A109431.P9331690057144770515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (A010060 n + (2 * n : ℤ)).toNat

end

end A109431.P9331690057144770515

/-! ## A109431.P8488302331449792096

`A102397(2*n+1-A010059(n))`
-/

namespace A109431.P8488302331449792096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 ((2 * n + 1 : ℤ) - A010059 n).toNat

end

end A109431.P8488302331449792096

/-! ## A109431.P2099205972357691850

`A102397(A254379(2*n)+2*n)`
-/

namespace A109431.P2099205972357691850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (A254379 (2 * n) + (2 * n : ℤ)).toNat

end

end A109431.P2099205972357691850

/-! ## A109431.P17184394111999750913

`A102397(A010059(2*n+1)+2*n)`
-/

namespace A109431.P17184394111999750913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (A010059 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A109431.P17184394111999750913

/-! ## A109431.P11572002137396820330

`A102397(A102391(2*n+1)+A102391(2*n))`
-/

namespace A109431.P11572002137396820330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 (A102391 (2 * n + 1) + A102391 (2 * n)).toNat

end

end A109431.P11572002137396820330

/-!
# A109432: Numbers k that divide A109431(k); or k such that A109431(k) is a Niven number.

The programs for A109432, there is no canonical definition to state claims against.
-/

/-! ## A109432.P6633177406932858445

`A180632(n)+lcm(n+1, A111284(n+1))`
-/

namespace A109432.P6633177406932858445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180632 n + (Int.lcm (n + 1 : ℤ) (A111284 (n + 1)) : ℤ)

end

end A109432.P6633177406932858445

/-! ## A109432.P1491976871737440203

`A360189(A346668(n))+A036289(n)`
-/

namespace A109432.P1491976871737440203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (A346668 n).toNat + A036289 n

end

end A109432.P1491976871737440203

/-!
# A109433: Triangle read by rows: T(n,m) = number of binary numbers n+1 digits long which have m 1's as a substring.

The programs for A109433, there is no canonical definition to state claims against.
-/

/-! ## A109433.P12371569421463244018

`A131996(A050300(n+1))`
-/

namespace A109433.P12371569421463244018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A050300 (n + 1)).toNat

end

end A109433.P12371569421463244018

/-! ## A109433.P13140958099150519032

`A131996(A058399(n+1)*A130330(n))`
-/

namespace A109433.P13140958099150519032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A058399 (n + 1) * A130330 n).toNat

end

end A109433.P13140958099150519032

/-! ## A109433.P7071088790964427950

`A186743(A110180(n))+A130321(n)`
-/

namespace A109433.P7071088790964427950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186743 (A110180 n).toNat + A130321 n

end

end A109433.P7071088790964427950

/-! ## A109433.P13280283928758048172

`A321728(A008550(n))+A130321(n)`
-/

namespace A109433.P13280283928758048172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A008550 n).toNat + A130321 n

end

end A109433.P13280283928758048172

/-! ## A109433.P11909107715077743304

`A204330(A047848(n))`
-/

namespace A109433.P11909107715077743304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A047848 n).toNat

end

end A109433.P11909107715077743304

/-!
# A109435: Triangle read by rows: T(n,m) = number of binary strings of length n, which have m 0's as a substring.

The programs for A109435, there is no canonical definition to state claims against.
-/

/-! ## A109435.P14474307181161934594

`A336444(A131252(n))%Δ[A209834(n)]`
-/

namespace A109435.P14474307181161934594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336444 (A131252 n).toNat) (f1 (n + 1) - f1 n)

end

end A109435.P14474307181161934594

/-! ## A109435.P9787555228292419369

`A336444(A131252(n))+n*A300237(2^n)`
-/

namespace A109435.P9787555228292419369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336444 (A131252 n).toNat + (n : ℤ) * A300237 (2 ^ n)

end

end A109435.P9787555228292419369

/-! ## A109435.P2210503254006496809

`A353558(A000079(n))+A336444(A131252(n))`
-/

namespace A109435.P2210503254006496809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A000079 n).toNat + A336444 (A131252 n).toNat

end

end A109435.P2210503254006496809

/-! ## A109435.P5613201819153309390

`A336444(A131252(n))+A055641(A195264(n+1))`
-/

namespace A109435.P5613201819153309390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336444 (A131252 n).toNat + A055641 (A195264 (n + 1)).toNat

end

end A109435.P5613201819153309390

/-! ## A109435.P11273704756817310460

`A048483(n)-A010054(A054598(n+2))`
-/

namespace A109435.P11273704756817310460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 n - A010054 (A054598 (n + 2)).toNat

end

end A109435.P11273704756817310460

/-!
# A109437: a(-1) = a(0) = 0, a(1) = 1; a(n) = 5a(n-1) - 5a(n-2) + a(n-3) + 2*(-1)^(n+1), alternatively a(n) = 3a(n-1) + 3a(n-2) - a(n-3).

The programs for A109437, the canonical program `A109437.P15797397824752011786` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109437 has offset 0).

The definition of A109437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)-a(n-3)` (program `A109437.P15797397824752011786`, by `A109437.P15797397824752011786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109437.P15797397824752011786

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109437

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P15797397824752011786.Spec : Prop :=
  ∀ n, P15797397824752011786.a n = A109437 n

theorem P15797397824752011786.correct : P15797397824752011786.Spec := by
  intro n
  simp only [A109437]

end A109437

/-! ## A109437.P5108557473717994817

`5*a(n-1)-5*a(n-2)+a(n-3)+2*(-1)^(n+1)` with `a(0)=0, a(1)=1, a(2)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109437.P5108557473717994817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * (-1) ^ (n + 1)

end

end A109437.P5108557473717994817

namespace A109437

/-- `5*a(n-1)-5*a(n-2)+a(n-3)+2*(-1)^(n+1)` -/
def P5108557473717994817.Spec : Prop :=
  ∀ n, P5108557473717994817.a n = A109437 n

end A109437

/-! ## A109437.P1635913092094417529

`A002530(n)*A002530(n+1)`
-/

namespace A109437.P1635913092094417529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A002530 (n + 1)

end

end A109437.P1635913092094417529

namespace A109437

/-- `A002530(n)*A002530(n+1)` -/
def P1635913092094417529.Spec : Prop :=
  ∀ n, P1635913092094417529.a n = A109437 n

end A109437

/-! ## A109437.P13500898528988627962

`((1+sqrt(3))*(2+sqrt(3))^n+(1-sqrt(3))*(2-sqrt(3))^n-2*(-1)^n)/12`
-/

namespace A109437.P13500898528988627962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ n + (1 - Real.sqrt (3 : ℝ)) * (2 - Real.sqrt (3 : ℝ)) ^ n - (2 * (-1) ^ n : ℝ)) / 12

end

end A109437.P13500898528988627962

namespace A109437

/-- `((1+sqrt(3))*(2+sqrt(3))^n+(1-sqrt(3))*(2-sqrt(3))^n-2*(-1)^n)/12` -/
def P13500898528988627962.Spec : Prop :=
  ∀ n, P13500898528988627962.a n = (A109437 n : ℝ)

end A109437

/-! ## A109437.P4117060960399967538

`ogf(x/(1-3x-3x^2+x^3))`
-/

namespace A109437.P4117060960399967538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -3, 1] n

end

end A109437.P4117060960399967538

namespace A109437

/-- `ogf(x/(1-3x-3x^2+x^3))` -/
def P4117060960399967538.Spec : Prop :=
  ∀ n, P4117060960399967538.a n = A109437 n

end A109437

/-! ## A109437.P83598090049468187

`floor((sqrt(3)+2)*a(n-1))+n%2` with `a(0)=0`
-/

namespace A109437.P83598090049468187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

end

end A109437.P83598090049468187

namespace A109437

/-- `floor((sqrt(3)+2)*a(n-1))+n%2` -/
def P83598090049468187.Spec : Prop :=
  ∀ n, P83598090049468187.a n = A109437 n

end A109437

/-! ## A109437.P7311554330783637528

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A109437.P7311554330783637528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A109437.P7311554330783637528

namespace A109437

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P7311554330783637528.Spec : Prop :=
  ∀ n, P7311554330783637528.a n = A109437 n

theorem P7311554330783637528.correct : P7311554330783637528.Spec := by
  intro n
  simp only [A109437, Nat.add_sub_cancel, A109437.P7311554330783637528.a, A109437.P15797397824752011786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109437

/-! ## A109437.P16281140179486223278

`(4-a(n-3)/a(n-2))*a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A109437.P16281140179486223278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (4 - a (n - 3) / a (n - 2)) * a (n - 1)

end

end A109437.P16281140179486223278

namespace A109437

/-- `(4-a(n-3)/a(n-2))*a(n-1)` -/
def P16281140179486223278.Spec : Prop :=
  ∀ n, P16281140179486223278.a n = (A109437 n : ℚ)

end A109437

/-! ## A109437.P8511554813722031022

`floor(A102871(n)/3)`
-/

namespace A109437.P8511554813722031022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102871 n : ℚ) / 3⌋

end

end A109437.P8511554813722031022

namespace A109437

/-- `floor(A102871(n)/3)` -/
def P8511554813722031022.Spec : Prop :=
  ∀ n, P8511554813722031022.a n = A109437 n

end A109437

/-! ## A109437.P7921518994614905362

`ceil(A001571(n)/3)`
-/

namespace A109437.P7921518994614905362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001571 n : ℚ) / 3⌉

end

end A109437.P7921518994614905362

namespace A109437

/-- `ceil(A001571(n)/3)` -/
def P7921518994614905362.Spec : Prop :=
  ∀ n, P7921518994614905362.a n = A109437 n

end A109437

/-! ## A109437.P4569202144743052244

`ceil(A082840(n)/3)`
-/

namespace A109437.P4569202144743052244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082840 n : ℚ) / 3⌉

end

end A109437.P4569202144743052244

namespace A109437

/-- `ceil(A082840(n)/3)` -/
def P4569202144743052244.Spec : Prop :=
  ∀ n, P4569202144743052244.a n = A109437 n

end A109437

/-! ## A109437.P10998980960975538196

`round(A146983(n)/3)`
-/

namespace A109437.P10998980960975538196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146983 n : ℚ) / 3)

end

end A109437.P10998980960975538196

namespace A109437

/-- `round(A146983(n)/3)` -/
def P10998980960975538196.Spec : Prop :=
  ∀ n, P10998980960975538196.a n = A109437 n

end A109437

/-! ## A109437.P3744647529483530074

`∑[xor(1, A120892(n))]`
-/

namespace A109437.P3744647529483530074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120892 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109437.P3744647529483530074

namespace A109437

/-- `∑[xor(1, A120892(n))]` -/
def P3744647529483530074.Spec : Prop :=
  ∀ n, P3744647529483530074.a n = A109437 n

end A109437

/-! ## A109437.P18370521448526016963

`floor(∑[A001075(n)/3])`
-/

namespace A109437.P18370521448526016963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A109437.P18370521448526016963

namespace A109437

/-- `floor(∑[A001075(n)/3])` -/
def P18370521448526016963.Spec : Prop :=
  ∀ n, P18370521448526016963.a n = A109437 n

end A109437

/-! ## A109437.P13782214788779756430

`A001353(n)-a(n-1)` with `a(0)=0`
-/

namespace A109437.P13782214788779756430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001353 n - a (n - 1)

end

end A109437.P13782214788779756430

namespace A109437

/-- `A001353(n)-a(n-1)` -/
def P13782214788779756430.Spec : Prop :=
  ∀ n, P13782214788779756430.a n = A109437 n

end A109437

/-! ## A109437.P8405905917366068220

`A002530(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A109437.P8405905917366068220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002530 (2 * n) - a (n - 1)

end

end A109437.P8405905917366068220

namespace A109437

/-- `A002530(2*n)-a(n-1)` -/
def P8405905917366068220.Spec : Prop :=
  ∀ n, P8405905917366068220.a n = A109437 n

end A109437

/-! ## A109437.P9691233981407041359

`A146983(n)-A217233(n)`
-/

namespace A109437.P9691233981407041359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146983 n - A217233 n

end

end A109437.P9691233981407041359

namespace A109437

/-- `A146983(n)-A217233(n)` -/
def P9691233981407041359.Spec : Prop :=
  ∀ n, P9691233981407041359.a n = A109437 n

end A109437

/-! ## A109437.P1295567816144213750

`∑[A120893(n)-A120892(n)]`
-/

namespace A109437.P1295567816144213750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n - A120892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109437.P1295567816144213750

namespace A109437

/-- `∑[A120893(n)-A120892(n)]` -/
def P1295567816144213750.Spec : Prop :=
  ∀ n, P1295567816144213750.a n = A109437 n

end A109437

/-! ## A109437.P15214905429040808823

`∑[A002530(n)*A048788(n)]`
-/

namespace A109437.P15214905429040808823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A048788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109437.P15214905429040808823

namespace A109437

/-- `∑[A002530(n)*A048788(n)]` -/
def P15214905429040808823.Spec : Prop :=
  ∀ n, P15214905429040808823.a n = A109437 n

end A109437

/-! ## A109437.P5766292350320906337

`A242725(n+1)-A242728(n)`
-/

namespace A109437.P5766292350320906337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242725 (n + 1) - A242728 n

end

end A109437.P5766292350320906337

namespace A109437

/-- `A242725(n+1)-A242728(n)` -/
def P5766292350320906337.Spec : Prop :=
  ∀ n, P5766292350320906337.a n = A109437 n

end A109437

/-!
# A109438: a(n) = 5a(n-1) - 5a(n-2) + a(n-3) + 2*(-1)^(n+1), alternatively a(n) = 3a(n-1) + 3a(n-2) - a(n-3).

The programs for A109438, the canonical program `A109438.P14928782557973526387` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109438 has offset 0).

The definition of A109438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)-a(n-3)` (program `A109438.P14928782557973526387`, by `A109438.P14928782557973526387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109438.P14928782557973526387

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=18`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109438

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P14928782557973526387.Spec : Prop :=
  ∀ n, P14928782557973526387.a n = A109438 n

theorem P14928782557973526387.correct : P14928782557973526387.Spec := by
  intro n
  simp only [A109438]

end A109438

/-! ## A109438.P822724534410848204

`5*a(n-1)-5*a(n-2)+a(n-3)+2*(-1)^(n+1)` with `a(0)=1, a(1)=5, a(2)=18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109438.P822724534410848204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 18] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * (-1) ^ (n + 1)

end

end A109438.P822724534410848204

namespace A109438

/-- `5*a(n-1)-5*a(n-2)+a(n-3)+2*(-1)^(n+1)` -/
def P822724534410848204.Spec : Prop :=
  ∀ n, P822724534410848204.a n = A109438 n

end A109438

/-! ## A109438.P14475920557479094896

`ogf((1+2x)/(1-3x-3x^2+x^3))`
-/

namespace A109438.P14475920557479094896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -3, 1] n

end

end A109438.P14475920557479094896

namespace A109438

/-- `ogf((1+2x)/(1-3x-3x^2+x^3))` -/
def P14475920557479094896.Spec : Prop :=
  ∀ n, P14475920557479094896.a n = A109438 n

end A109438

/-! ## A109438.P10023992083728809404

`Δ[4*a(n-1)-(a(n-2)+n%2)]` with `a(0)=1, a(1)=2`
-/

namespace A109438.P10023992083728809404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * f1 (n - 1) - (f1 (n - 2) + ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109438.P10023992083728809404

namespace A109438

/-- `Δ[4*a(n-1)-(a(n-2)+n%2)]` -/
def P10023992083728809404.Spec : Prop :=
  ∀ n, P10023992083728809404.a n = A109438 n

end A109438

/-! ## A109438.P7476062349200909356

`∑[A105968(n)]`
-/

namespace A109438.P7476062349200909356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P7476062349200909356

namespace A109438

/-- `∑[A105968(n)]` -/
def P7476062349200909356.Spec : Prop :=
  ∀ n, P7476062349200909356.a n = A109438 n

end A109438

/-! ## A109438.P3330291796557720809

`Δ[A242728(n)]`
-/

namespace A109438.P3330291796557720809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109438.P3330291796557720809

namespace A109438

/-- `Δ[A242728(n)]` -/
def P3330291796557720809.Spec : Prop :=
  ∀ n, P3330291796557720809.a n = A109438 n

end A109438

/-! ## A109438.P18384568612282440730

`A054491(n)-a(n-1)` with `a(0)=1`
-/

namespace A109438.P18384568612282440730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054491 n - a (n - 1)

end

end A109438.P18384568612282440730

namespace A109438

/-- `A054491(n)-a(n-1)` -/
def P18384568612282440730.Spec : Prop :=
  ∀ n, P18384568612282440730.a n = A109438 n

end A109438

/-! ## A109438.P7778885283485171784

`A077237(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A109438.P7778885283485171784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077237 (2 * n) - a (n - 1)

end

end A109438.P7778885283485171784

namespace A109438

/-- `A077237(2*n)-a(n-1)` -/
def P7778885283485171784.Spec : Prop :=
  ∀ n, P7778885283485171784.a n = A109438 n

end A109438

/-! ## A109438.P7411374840477309645

`A109437(n)+Δ[A061278(n)]`
-/

namespace A109438.P7411374840477309645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + (f1 (n + 1) - f1 n)

end

end A109438.P7411374840477309645

namespace A109438

/-- `A109437(n)+Δ[A061278(n)]` -/
def P7411374840477309645.Spec : Prop :=
  ∀ n, P7411374840477309645.a n = A109438 n

end A109438

/-! ## A109438.P16934731842938248856

`A109437(n)+A001353(n+1)`
-/

namespace A109438.P16934731842938248856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + A001353 (n + 1)

end

end A109438.P16934731842938248856

namespace A109438

/-- `A109437(n)+A001353(n+1)` -/
def P16934731842938248856.Spec : Prop :=
  ∀ n, P16934731842938248856.a n = A109438 n

end A109438

/-! ## A109438.P10319733010801412314

`A109437(n)-A106707(n+1)`
-/

namespace A109438.P10319733010801412314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n - A106707 (n + 1)

end

end A109438.P10319733010801412314

namespace A109438

/-- `A109437(n)-A106707(n+1)` -/
def P10319733010801412314.Spec : Prop :=
  ∀ n, P10319733010801412314.a n = A109438 n

end A109438

/-! ## A109438.P7219461026801037080

`A242728(n+1)-A242728(n)`
-/

namespace A109438.P7219461026801037080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 (n + 1) - A242728 n

end

end A109438.P7219461026801037080

namespace A109438

/-- `A242728(n+1)-A242728(n)` -/
def P7219461026801037080.Spec : Prop :=
  ∀ n, P7219461026801037080.a n = A109438 n

end A109438

/-! ## A109438.P4470732268447607162

`A259592(2*n)+A109437(n)`
-/

namespace A109438.P4470732268447607162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (2 * n) + A109437 n

end

end A109438.P4470732268447607162

namespace A109438

/-- `A259592(2*n)+A109437(n)` -/
def P4470732268447607162.Spec : Prop :=
  ∀ n, P4470732268447607162.a n = A109438 n

end A109438

/-! ## A109438.P9675382336422767040

`∑[Δ[A052530(n)]-A006253(n)]`
-/

namespace A109438.P9675382336422767040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A006253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P9675382336422767040

namespace A109438

/-- `∑[Δ[A052530(n)]-A006253(n)]` -/
def P9675382336422767040.Spec : Prop :=
  ∀ n, P9675382336422767040.a n = A109438 n

end A109438

/-! ## A109438.P11355671809770213021

`A109437(n)+∑[A001835(n+1)]`
-/

namespace A109438.P11355671809770213021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P11355671809770213021

namespace A109438

/-- `A109437(n)+∑[A001835(n+1)]` -/
def P11355671809770213021.Spec : Prop :=
  ∀ n, P11355671809770213021.a n = A109438 n

end A109438

/-! ## A109438.P17477417930493107304

`∑[A120893(n)+A120892(n+1)]`
-/

namespace A109438.P17477417930493107304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A120892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P17477417930493107304

namespace A109438

/-- `∑[A120893(n)+A120892(n+1)]` -/
def P17477417930493107304.Spec : Prop :=
  ∀ n, P17477417930493107304.a n = A109438 n

end A109438

/-! ## A109438.P14544159130784032648

`A052530(n+1)-∑[A006253(n)]`
-/

namespace A109438.P14544159130784032648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P14544159130784032648

namespace A109438

/-- `A052530(n+1)-∑[A006253(n)]` -/
def P14544159130784032648.Spec : Prop :=
  ∀ n, P14544159130784032648.a n = A109438 n

end A109438

/-! ## A109438.P226549501893680596

`∑[A120893(n+1)-A001353(n)]`
-/

namespace A109438.P226549501893680596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 1) - A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P226549501893680596

namespace A109438

/-- `∑[A120893(n+1)-A001353(n)]` -/
def P226549501893680596.Spec : Prop :=
  ∀ n, P226549501893680596.a n = A109438 n

end A109438

/-! ## A109438.P9470400905780240149

`A109437(n)+Δ[A101265(n+1)]`
-/

namespace A109438.P9470400905780240149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + (f1 (n + 1) - f1 n)

end

end A109438.P9470400905780240149

namespace A109438

/-- `A109437(n)+Δ[A101265(n+1)]` -/
def P9470400905780240149.Spec : Prop :=
  ∀ n, P9470400905780240149.a n = A109438 n

end A109438

/-! ## A109438.P5913531431539016871

`∑[A001075(n)+2*A109437(n)]`
-/

namespace A109438.P5913531431539016871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + 2 * A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109438.P5913531431539016871

namespace A109438

/-- `∑[A001075(n)+2*A109437(n)]` -/
def P5913531431539016871.Spec : Prop :=
  ∀ n, P5913531431539016871.a n = A109438 n

end A109438

/-!
# A109439: Triangle read by rows, in which row n gives coefficients in expansion of ((1 - x^n)/(1 - x))^3.

The programs for A109439, there is no canonical definition to state claims against.
-/

/-! ## A109439.P9917369018469669976

`∑{e}[A000254(A192095(n+3)), #]`
-/

namespace A109439.P9917369018469669976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A192095 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A109439.P9917369018469669976

/-! ## A109439.P11889536205294787003

`A385646(2*A174266(n+1))`
-/

namespace A109439.P11889536205294787003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385646 (2 * A174266 (n + 1)).toNat

end

end A109439.P11889536205294787003

/-!
# A109440: Even numbers k such that exactly half of the primes p with p <= k/2 give k-p also a prime.

The programs for A109440, there is no canonical definition to state claims against.
-/

/-! ## A109440.P9633374644505328800

`lt[A289626(A062401(2*n+1)), A290089(3*n+2)]`
-/

namespace A109440.P9633374644505328800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A062401 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290089 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109440.P9633374644505328800

/-!
# A109441: Sorted union of the numbers (k + 1)^2 - 1, (2*k + 1)*(2*k + 1 - 1)/2, (2*k)^2, (2*k)*(2*k - 1)/2 for k >= 0, with duplicates removed.

The programs for A109441, there is no canonical definition to state claims against.
-/

/-! ## A109441.P258012255917351020

`eq[A263243(n+2)*A303084(n+1), A263243(n+2)]`
-/

namespace A109441.P258012255917351020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (n + 2) * A303084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109441.P258012255917351020

/-! ## A109441.P10659581450991548188

`lt[A329512(n+1)^A067280(n+1), 10]`
-/

namespace A109441.P10659581450991548188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329512 (n + 1) : ℚ) ^ (A067280 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A109441.P10659581450991548188

/-! ## A109441.P6802077335651563321

`eq[A003188(A337632(n+1)), A330885(n)]`
-/

namespace A109441.P6802077335651563321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A337632 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109441.P6802077335651563321

/-!
# A109442: Cumulative sum of smallest prime power >= n.

The programs for A109442, the canonical program `A109442.P14114175381241493679` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109442 has offset 1).

The definition of A109442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109442.P1638268224699644567

`∑[A000015(n+1)]`
-/

namespace A109442.P1638268224699644567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P1638268224699644567

namespace A109442

/-- `∑[A000015(n+1)]` -/
def P1638268224699644567.Spec : Prop :=
  ∀ n, P1638268224699644567.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P11385207023752272364

`∑[A378370(n+1)+n+1]`
-/

namespace A109442.P11385207023752272364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P11385207023752272364

namespace A109442

/-- `∑[A378370(n+1)+n+1]` -/
def P11385207023752272364.Spec : Prop :=
  ∀ n, P11385207023752272364.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P14114175381241493679

`∑[A097106(n+1)+A031218(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109442

/-- `∑[A097106(n+1)+A031218(n+1)]` -/
def P14114175381241493679.Spec : Prop :=
  ∀ n, P14114175381241493679.a n = A109442 (n + 1)

theorem P14114175381241493679.correct : P14114175381241493679.Spec := by
  intro n
  simp only [A109442, Nat.add_sub_cancel]

end A109442

/-! ## A109442.P4494059638031242259

`∑[A000961(comp[A000961(n+1)+n]-n+1)]`
-/

namespace A109442.P4494059638031242259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P4494059638031242259

namespace A109442

/-- `∑[A000961(comp[A000961(n+1)+n]-n+1)]` -/
def P4494059638031242259.Spec : Prop :=
  ∀ n, P4494059638031242259.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P3069947069251496523

`∑[A028310(A000015(ϕ²-(ϕ-n)))]`
-/

namespace A109442.P3069947069251496523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000015 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P3069947069251496523

namespace A109442

/-- `∑[A028310(A000015(ϕ²-(ϕ-n)))]` -/
def P3069947069251496523.Spec : Prop :=
  ∀ n, P3069947069251496523.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P1618372927295131484

`∑[A304180(A000015(1-(n-2*n)))]`
-/

namespace A109442.P1618372927295131484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (A000015 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P1618372927295131484

namespace A109442

/-- `∑[A304180(A000015(1-(n-2*n)))]` -/
def P1618372927295131484.Spec : Prop :=
  ∀ n, P1618372927295131484.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P13750122251466067149

`∑[A188666(A031218(n+1)+n)%∑[n+2]]`
-/

namespace A109442.P13750122251466067149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188666 (A031218 (n + 1) + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P13750122251466067149

namespace A109442

/-- `∑[A188666(A031218(n+1)+n)%∑[n+2]]` -/
def P13750122251466067149.Spec : Prop :=
  ∀ n, P13750122251466067149.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P8653524170364298319

`A188666(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A109442.P8653524170364298319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188666 (2 * n) + a (n - 1)

end

end A109442.P8653524170364298319

namespace A109442

/-- `A188666(2*n)+a(n-1)` -/
def P8653524170364298319.Spec : Prop :=
  ∀ n, P8653524170364298319.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P712601735760315268

`∑[A188666(Δ[n²])]`
-/

namespace A109442.P712601735760315268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109442.P712601735760315268

namespace A109442

/-- `∑[A188666(Δ[n²])]` -/
def P712601735760315268.Spec : Prop :=
  ∀ n, P712601735760315268.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P5139347149627752192

`∑[A188666(2*n+1)]%A005996(n+1)`
-/

namespace A109442.P5139347149627752192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005996 (n + 1))

end

end A109442.P5139347149627752192

namespace A109442

/-- `∑[A188666(2*n+1)]%A005996(n+1)` -/
def P5139347149627752192.Spec : Prop :=
  ∀ n, P5139347149627752192.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P4732976745178212407

`A000027(a(n-1))+A000015(n+1)` with `a(0)=1`
-/

namespace A109442.P4732976745178212407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + A000015 (n + 1)

end

end A109442.P4732976745178212407

namespace A109442

/-- `A000027(a(n-1))+A000015(n+1)` -/
def P4732976745178212407.Spec : Prop :=
  ∀ n, P4732976745178212407.a n = A109442 (n + 1)

end A109442

/-! ## A109442.P16018829950376261191

`A028310(a(n-1))+A000015(n+1)` with `a(0)=1`
-/

namespace A109442.P16018829950376261191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A000015 (n + 1)

end

end A109442.P16018829950376261191

namespace A109442

/-- `A028310(a(n-1))+A000015(n+1)` -/
def P16018829950376261191.Spec : Prop :=
  ∀ n, P16018829950376261191.a n = A109442 (n + 1)

end A109442

/-!
# A109443: Cumulative sum of largest prime power <= n.

The programs for A109443, the canonical program `A109443.P9246990492100124612` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109443 has offset 1).

The definition of A109443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109443.P9246990492100124612

`∑[A031218(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109443

/-- `∑[A031218(n+1)]` -/
def P9246990492100124612.Spec : Prop :=
  ∀ n, P9246990492100124612.a n = A109443 (n + 1)

theorem P9246990492100124612.correct : P9246990492100124612.Spec := by
  intro n
  simp only [A109443, Nat.add_sub_cancel]

end A109443

/-! ## A109443.P17850047696241553926

`∑[n+1-A378457(n+1)]`
-/

namespace A109443.P17850047696241553926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P17850047696241553926

namespace A109443

/-- `∑[n+1-A378457(n+1)]` -/
def P17850047696241553926.Spec : Prop :=
  ∀ n, P17850047696241553926.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P10709051503108199521

`∑[2-A276781(n+1)+n]`
-/

namespace A109443.P10709051503108199521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A276781 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P10709051503108199521

namespace A109443

/-- `∑[2-A276781(n+1)+n]` -/
def P10709051503108199521.Spec : Prop :=
  ∀ n, P10709051503108199521.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P10819711813064367492

`∑[A000961(A065515(n+1))]`
-/

namespace A109443.P10819711813064367492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A065515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P10819711813064367492

namespace A109443

/-- `∑[A000961(A065515(n+1))]` -/
def P10819711813064367492.Spec : Prop :=
  ∀ n, P10819711813064367492.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P8728838167663076928

`∑[A000961(∑[A010055(n+1)])]`
-/

namespace A109443.P8728838167663076928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P8728838167663076928

namespace A109443

/-- `∑[A000961(∑[A010055(n+1)])]` -/
def P8728838167663076928.Spec : Prop :=
  ∀ n, P8728838167663076928.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P15760936690361199549

`∑[A000961(∑[A069513(n+1)]+1)]`
-/

namespace A109443.P15760936690361199549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P15760936690361199549

namespace A109443

/-- `∑[A000961(∑[A069513(n+1)]+1)]` -/
def P15760936690361199549.Spec : Prop :=
  ∀ n, P15760936690361199549.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P14783637925802545570

`∑[A138929(∑[A010055(n+1)])/2]`
-/

namespace A109443.P14783637925802545570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P14783637925802545570

namespace A109443

/-- `∑[A138929(∑[A010055(n+1)])/2]` -/
def P14783637925802545570.Spec : Prop :=
  ∀ n, P14783637925802545570.a n = (A109443 (n + 1) : ℚ)

end A109443

/-! ## A109443.P2895832747461119408

`∑[A000015(n+1)-A097106(n+1)]`
-/

namespace A109443.P2895832747461119408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A097106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P2895832747461119408

namespace A109443

/-- `∑[A000015(n+1)-A097106(n+1)]` -/
def P2895832747461119408.Spec : Prop :=
  ∀ n, P2895832747461119408.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P10736436676320156545

`A109442(n+1)-∑[A097106(n+1)]`
-/

namespace A109443.P10736436676320156545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109442 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P10736436676320156545

namespace A109443

/-- `A109442(n+1)-∑[A097106(n+1)]` -/
def P10736436676320156545.Spec : Prop :=
  ∀ n, P10736436676320156545.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P13060195544346462024

`∑[A000961(∑[A001221(n+1)!%2])]`
-/

namespace A109443.P13060195544346462024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001221 (n + 1)).toNat % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P13060195544346462024

namespace A109443

/-- `∑[A000961(∑[A001221(n+1)!%2])]` -/
def P13060195544346462024.Spec : Prop :=
  ∀ n, P13060195544346462024.a n = A109443 (n + 1)

end A109443

/-! ## A109443.P11384563310072180340

`∑[A238898(n+2)/2]`
-/

namespace A109443.P11384563310072180340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238898 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P11384563310072180340

namespace A109443

/-- `∑[A238898(n+2)/2]` -/
def P11384563310072180340.Spec : Prop :=
  ∀ n, P11384563310072180340.a n = (A109443 (n + 1) : ℚ)

end A109443

/-! ## A109443.P10123866441191819983

`∑[A136623(A000015(n+2))]`
-/

namespace A109443.P10123866441191819983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (A000015 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P10123866441191819983

namespace A109443

/-- `∑[A136623(A000015(n+2))]` -/
def P10123866441191819983.Spec : Prop :=
  ∀ n, P10123866441191819983.a n = A109443 (n + 1)

end A109443

/-!
# A109444: Cumulative sum of mosaic numbers (A000026).

The programs for A109444, the canonical program `A109444.P12515294526361965338` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109444 has offset 1).

The definition of A109444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109444.P12515294526361965338

`∑[∏{p}[n+1, #*val(n+1, #)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109444

/-- `∑[∏{p}[n+1, #*val(n+1, #)]]` -/
def P12515294526361965338.Spec : Prop :=
  ∀ n, (P12515294526361965338.a n : ℤ) = A109444 (n + 1)

theorem P12515294526361965338.correct : P12515294526361965338.Spec := by
  intro n
  simp only [A109444, Nat.add_sub_cancel]

end A109444

/-! ## A109444.P7051783900000283260

`∑[∏{p}[n+1, #]*∏{e}[n+1, #]]`
-/

namespace A109444.P7051783900000283260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109444.P7051783900000283260

namespace A109444

/-- `∑[∏{p}[n+1, #]*∏{e}[n+1, #]]` -/
def P7051783900000283260.Spec : Prop :=
  ∀ n, (P7051783900000283260.a n : ℤ) = A109444 (n + 1)

end A109444

/-! ## A109444.P9991674297987393732

`∏{p}[n+1, #*val(n+1, #)]+a(n-1)` with `a(0)=1`
-/

namespace A109444.P9991674297987393732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + a (n - 1)

end

end A109444.P9991674297987393732

namespace A109444

/-- `∏{p}[n+1, #*val(n+1, #)]+a(n-1)` -/
def P9991674297987393732.Spec : Prop :=
  ∀ n, (P9991674297987393732.a n : ℤ) = A109444 (n + 1)

end A109444

/-! ## A109444.P15918555603724713155

`a(n-1)+∏{p}[n+1, #]*∏{e}[n+1, #]` with `a(0)=1`
-/

namespace A109444.P15918555603724713155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A109444.P15918555603724713155

namespace A109444

/-- `a(n-1)+∏{p}[n+1, #]*∏{e}[n+1, #]` -/
def P15918555603724713155.Spec : Prop :=
  ∀ n, (P15918555603724713155.a n : ℤ) = A109444 (n + 1)

end A109444

/-! ## A109444.P930952607597708758

`∑[A000026(n+1)]`
-/

namespace A109444.P930952607597708758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109444.P930952607597708758

namespace A109444

/-- `∑[A000026(n+1)]` -/
def P930952607597708758.Spec : Prop :=
  ∀ n, P930952607597708758.a n = A109444 (n + 1)

end A109444

/-! ## A109444.P9912578371313097010

`∑[A361265(n+1)/(n+1)]`
-/

namespace A109444.P9912578371313097010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361265 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109444.P9912578371313097010

namespace A109444

/-- `∑[A361265(n+1)/(n+1)]` -/
def P9912578371313097010.Spec : Prop :=
  ∀ n, P9912578371313097010.a n = (A109444 (n + 1) : ℚ)

end A109444

/-! ## A109444.P11379742661904449385

`∑[∏{e}[n+1, #]*A007947(n+1)]`
-/

namespace A109444.P11379742661904449385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109444.P11379742661904449385

namespace A109444

/-- `∑[∏{e}[n+1, #]*A007947(n+1)]` -/
def P11379742661904449385.Spec : Prop :=
  ∀ n, P11379742661904449385.a n = A109444 (n + 1)

end A109444

/-! ## A109444.P2940243347333305465

`∑[A005361(n+1)*A007947(n+1)]`
-/

namespace A109444.P2940243347333305465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109444.P2940243347333305465

namespace A109444

/-- `∑[A005361(n+1)*A007947(n+1)]` -/
def P2940243347333305465.Spec : Prop :=
  ∀ n, P2940243347333305465.a n = A109444 (n + 1)

end A109444

/-! ## A109444.P14040269862442618828

`A000026(A069799(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A109444.P14040269862442618828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000026 (A069799 (n + 1)).toNat + a (n - 1)

end

end A109444.P14040269862442618828

namespace A109444

/-- `A000026(A069799(n+1))+a(n-1)` -/
def P14040269862442618828.Spec : Prop :=
  ∀ n, P14040269862442618828.a n = A109444 (n + 1)

end A109444

/-! ## A109444.P7079933458685872427

`∑[∏{p}[n+1, val((n+1)^#, #)]]`
-/

namespace A109444.P7079933458685872427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation ((n + 1) ^ p) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109444.P7079933458685872427

namespace A109444

/-- `∑[∏{p}[n+1, val((n+1)^#, #)]]` -/
def P7079933458685872427.Spec : Prop :=
  ∀ n, (P7079933458685872427.a n : ℤ) = A109444 (n + 1)

end A109444

/-!
# A109445: Numbers k such that (concatenation of even integers through k) - 1 is a prime.

The programs for A109445, there is no canonical definition to state claims against.
-/

/-! ## A109445.P9838077730483570899

`A222595(A317405(n+1))`
-/

namespace A109445.P9838077730483570899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222595 (A317405 (n + 1)).toNat

end

end A109445.P9838077730483570899

/-!
# A109446: Binomial coefficients C(n,k) with n-k even, read by rows.

The programs for A109446, the canonical program `A109446.P3378163357748068415` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109446 has offset 0).

The definition of A109446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109446.P3378163357748068415

`A007318(comp[comp[n²+n]+n])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109446

/-- `A007318(comp[comp[n²+n]+n])` -/
def P3378163357748068415.Spec : Prop :=
  ∀ n, P3378163357748068415.a n = A109446 n

theorem P3378163357748068415.correct : P3378163357748068415.Spec := by
  intro n
  simp only [A109446]

end A109446

/-! ## A109446.P12431738045982451069

`A085478(A091995(n+1)-1)`
-/

namespace A109446.P12431738045982451069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A091995 (n + 1) - 1).toNat

end

end A109446.P12431738045982451069

namespace A109446

/-- `A085478(A091995(n+1)-1)` -/
def P12431738045982451069.Spec : Prop :=
  ∀ n, P12431738045982451069.a n = A109446 n

end A109446

/-! ## A109446.P17820449842222247505

`A119467(lt[0, A119467(n)])`
-/

namespace A109446.P17820449842222247505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A109446.P17820449842222247505

namespace A109446

/-- `A119467(lt[0, A119467(n)])` -/
def P17820449842222247505.Spec : Prop :=
  ∀ n, P17820449842222247505.a n = A109446 n

end A109446

/-! ## A109446.P3975719499070671854

`A122960(lt[0, A122960(n)])`
-/

namespace A109446.P3975719499070671854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A109446.P3975719499070671854

namespace A109446

/-- `A122960(lt[0, A122960(n)])` -/
def P3975719499070671854.Spec : Prop :=
  ∀ n, P3975719499070671854.a n = A109446 n

end A109446

/-! ## A109446.P12806280244353979569

`A130595(lt[0, A130595(n)])`
-/

namespace A109446.P12806280244353979569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A109446.P12806280244353979569

namespace A109446

/-- `A130595(lt[0, A130595(n)])` -/
def P12806280244353979569.Spec : Prop :=
  ∀ n, P12806280244353979569.a n = A109446 n

end A109446

/-! ## A109446.P11085136781286032423

`A119467(eq[1, A128174(n+1)])`
-/

namespace A109446.P11085136781286032423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109446.P11085136781286032423

namespace A109446

/-- `A119467(eq[1, A128174(n+1)])` -/
def P11085136781286032423.Spec : Prop :=
  ∀ n, P11085136781286032423.a n = A109446 n

end A109446

/-! ## A109446.P2144880889761602619

`A130595(eq[A007318(n), A130595(n)])`
-/

namespace A109446.P2144880889761602619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109446.P2144880889761602619

namespace A109446

/-- `A130595(eq[A007318(n), A130595(n)])` -/
def P2144880889761602619.Spec : Prop :=
  ∀ n, P2144880889761602619.a n = A109446 n

end A109446

/-! ## A109446.P8989342478223772979

`A119467(eq[A119467(n), A130595(n)])`
-/

namespace A109446.P8989342478223772979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109446.P8989342478223772979

namespace A109446

/-- `A119467(eq[A119467(n), A130595(n)])` -/
def P8989342478223772979.Spec : Prop :=
  ∀ n, P8989342478223772979.a n = A109446 n

end A109446

/-! ## A109446.P12272455902093952948

`A098158(lt[0, A098158(n)])`
-/

namespace A109446.P12272455902093952948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A109446.P12272455902093952948

namespace A109446

/-- `A098158(lt[0, A098158(n)])` -/
def P12272455902093952948.Spec : Prop :=
  ∀ n, P12272455902093952948.a n = A109446 n

end A109446

/-! ## A109446.P9287879142897257632

`A130595(record[n+1-A004736(n+1)])`
-/

namespace A109446.P9287879142897257632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109446.P9287879142897257632

namespace A109446

/-- `A130595(record[n+1-A004736(n+1)])` -/
def P9287879142897257632.Spec : Prop :=
  ∀ n, P9287879142897257632.a n = A109446 n

end A109446

/-! ## A109446.P16051623725540527579

`A097805(A078358(n+1)+n+1)`
-/

namespace A109446.P16051623725540527579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A078358 (n + 1) + (n + 1 : ℤ)).toNat

end

end A109446.P16051623725540527579

namespace A109446

/-- `A097805(A078358(n+1)+n+1)` -/
def P16051623725540527579.Spec : Prop :=
  ∀ n, P16051623725540527579.a n = A109446 n

end A109446

/-! ## A109446.P14388427538638292891

`A097805(A000196(n)+2*(n+1))`
-/

namespace A109446.P14388427538638292891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000196 n + (2 * (n + 1) : ℤ)).toNat

end

end A109446.P14388427538638292891

namespace A109446

/-- `A097805(A000196(n)+2*(n+1))` -/
def P14388427538638292891.Spec : Prop :=
  ∀ n, P14388427538638292891.a n = A109446 n

end A109446

/-! ## A109446.P15819807929294630071

`A097805(A003059(n+1)+2*n+1)`
-/

namespace A109446.P15819807929294630071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A003059 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A109446.P15819807929294630071

namespace A109446

/-- `A097805(A003059(n+1)+2*n+1)` -/
def P15819807929294630071.Spec : Prop :=
  ∀ n, P15819807929294630071.a n = A109446 n

end A109446

/-! ## A109446.P9800591246294520434

`A071919(∑[A000122(n)!]+n)`
-/

namespace A109446.P9800591246294520434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A109446.P9800591246294520434

namespace A109446

/-- `A071919(∑[A000122(n)!]+n)` -/
def P9800591246294520434.Spec : Prop :=
  ∀ n, P9800591246294520434.a n = A109446 n

end A109446

/-! ## A109446.P16290881832846446977

`A071919(A000196(n)+2*n+1)`
-/

namespace A109446.P16290881832846446977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A000196 n + (2 * n + 1 : ℤ)).toNat

end

end A109446.P16290881832846446977

namespace A109446

/-- `A071919(A000196(n)+2*n+1)` -/
def P16290881832846446977.Spec : Prop :=
  ∀ n, P16290881832846446977.a n = A109446 n

end A109446

/-! ## A109446.P2945127199074189552

`A071919(A003059(n+1)+2*n)`
-/

namespace A109446.P2945127199074189552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A003059 (n + 1) + (2 * n : ℤ)).toNat

end

end A109446.P2945127199074189552

namespace A109446

/-- `A071919(A003059(n+1)+2*n)` -/
def P2945127199074189552.Spec : Prop :=
  ∀ n, P2945127199074189552.a n = A109446 n

end A109446

/-! ## A109446.P7388236815501676183

`A193554(lt[A000007(n), A091917(n)])`
-/

namespace A109446.P7388236815501676183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109446.P7388236815501676183

namespace A109446

/-- `A193554(lt[A000007(n), A091917(n)])` -/
def P7388236815501676183.Spec : Prop :=
  ∀ n, P7388236815501676183.a n = A109446 n

end A109446

/-! ## A109446.P14859226959761682756

`A193554(lt[A110555(n), A091917(n)])`
-/

namespace A109446.P14859226959761682756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109446.P14859226959761682756

namespace A109446

/-- `A193554(lt[A110555(n), A091917(n)])` -/
def P14859226959761682756.Spec : Prop :=
  ∀ n, P14859226959761682756.a n = A109446 n

end A109446

/-!
# A109447: Binomial coefficients C(n,k) with n-k odd, read by rows.

The programs for A109447, the canonical program `A109447.P904525505183481324` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109447 has offset 1).

The definition of A109447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109447.P904525505183481324

`A074909(2*n-A259361(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109447

/-- `A074909(2*n-A259361(n))` -/
def P904525505183481324.Spec : Prop :=
  ∀ n, P904525505183481324.a n = A109447 (n + 1)

theorem P904525505183481324.correct : P904525505183481324.Spec := by
  intro n
  simp only [A109447, Nat.add_sub_cancel]

end A109447

/-! ## A109447.P16636265501844352246

`A074909(n-A259361(n)+n)`
-/

namespace A109447.P16636265501844352246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) - A259361 n + (n : ℤ)).toNat

end

end A109447.P16636265501844352246

namespace A109447

/-- `A074909(n-A259361(n)+n)` -/
def P16636265501844352246.Spec : Prop :=
  ∀ n, P16636265501844352246.a n = A109447 (n + 1)

theorem P16636265501844352246.correct : P16636265501844352246.Spec := by
  intro n
  simp only [A109447, Nat.add_sub_cancel, A109447.P16636265501844352246.a, A109447.P904525505183481324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109447

/-! ## A109447.P17039129941312224004

`A074909(n-(A259361(n)-n))`
-/

namespace A109447.P17039129941312224004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) - (A259361 n - (n : ℤ))).toNat

end

end A109447.P17039129941312224004

namespace A109447

/-- `A074909(n-(A259361(n)-n))` -/
def P17039129941312224004.Spec : Prop :=
  ∀ n, P17039129941312224004.a n = A109447 (n + 1)

theorem P17039129941312224004.correct : P17039129941312224004.Spec := by
  intro n
  simp only [A109447, Nat.add_sub_cancel, A109447.P17039129941312224004.a, A109447.P904525505183481324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109447

/-! ## A109447.P6837490282602655239

`A007318(comp[∑[2*n]]+n)`
-/

namespace A109447.P6837490282602655239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A109447.P6837490282602655239

namespace A109447

/-- `A007318(comp[∑[2*n]]+n)` -/
def P6837490282602655239.Spec : Prop :=
  ∀ n, P6837490282602655239.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P15370557870518201168

`A074909(eq[1, A128174(n+1)])`
-/

namespace A109447.P15370557870518201168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109447.P15370557870518201168

namespace A109447

/-- `A074909(eq[1, A128174(n+1)])` -/
def P15370557870518201168.Spec : Prop :=
  ∀ n, P15370557870518201168.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P228556133780447669

`A074909(eq[A007318(n), A119467(n)])`
-/

namespace A109447.P228556133780447669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109447.P228556133780447669

namespace A109447

/-- `A074909(eq[A007318(n), A119467(n)])` -/
def P228556133780447669.Spec : Prop :=
  ∀ n, P228556133780447669.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P17932366053427810385

`A074909(eq[A119467(n), A130595(n)])`
-/

namespace A109447.P17932366053427810385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109447.P17932366053427810385

namespace A109447

/-- `A074909(eq[A119467(n), A130595(n)])` -/
def P17932366053427810385.Spec : Prop :=
  ∀ n, P17932366053427810385.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P5801952329998681409

`A074909(record[n+1-A004736(n+1)])`
-/

namespace A109447.P5801952329998681409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109447.P5801952329998681409

namespace A109447

/-- `A074909(record[n+1-A004736(n+1)])` -/
def P5801952329998681409.Spec : Prop :=
  ∀ n, P5801952329998681409.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P7977647530078447521

`A074909(record[A083920(n)+A002262(n)])`
-/

namespace A109447.P7977647530078447521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109447.P7977647530078447521

namespace A109447

/-- `A074909(record[A083920(n)+A002262(n)])` -/
def P7977647530078447521.Spec : Prop :=
  ∀ n, P7977647530078447521.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P744215740141030420

`A140751(4*n+2)`
-/

namespace A109447.P744215740141030420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (4 * n + 2)

end

end A109447.P744215740141030420

namespace A109447

/-- `A140751(4*n+2)` -/
def P744215740141030420.Spec : Prop :=
  ∀ n, P744215740141030420.a n = A109447 (n + 1)

end A109447

/-! ## A109447.P4538285184764801609

`A325002(A000196(n)+2*n+1)`
-/

namespace A109447.P4538285184764801609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325002 (A000196 n + (2 * n + 1 : ℤ)).toNat

end

end A109447.P4538285184764801609

namespace A109447

/-- `A325002(A000196(n)+2*n+1)` -/
def P4538285184764801609.Spec : Prop :=
  ∀ n, P4538285184764801609.a n = A109447 (n + 1)

end A109447

/-!
# A109449: Triangle read by rows, T(n,k) = binomial(n,k)*A000111(n-k), 0 <= k <= n.

The programs for A109449, there is no canonical definition to state claims against.
-/

/-! ## A109449.P2779614768191278376

`abs(A247453(n))`
-/

namespace A109449.P2779614768191278376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 n|

end

end A109449.P2779614768191278376

/-! ## A109449.P9597108891863809544

`A097807(n)*A247453(n)`
-/

namespace A109449.P9597108891863809544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A247453 n

end

end A109449.P9597108891863809544

/-! ## A109449.P14388689072379171145

`gcd(A081733(n), A119879(n))`
-/

namespace A109449.P14388689072379171145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081733 n) (A119879 n)

end

end A109449.P14388689072379171145

/-! ## A109449.P4830020254606202700

`gcd(A000038(n), A247453(n))`
-/

namespace A109449.P4830020254606202700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247453 n)

end

end A109449.P4830020254606202700

/-! ## A109449.P10942336272309279828

`lcm(A007318(n), A247453(n))`
-/

namespace A109449.P10942336272309279828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A247453 n)

end

end A109449.P10942336272309279828

/-! ## A109449.P13423328843779635642

`lcm(-A247453(n), A020985(n))`
-/

namespace A109449.P13423328843779635642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A247453 n) (A020985 n)

end

end A109449.P13423328843779635642

/-! ## A109449.P7018044697513791546

`A007318(n)*A000111(A025581(n))`
-/

namespace A109449.P7018044697513791546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000111 (A025581 n).toNat

end

end A109449.P7018044697513791546

/-! ## A109449.P17183434364317349656

`A056594(2*A025581(n))*A247453(n)`
-/

namespace A109449.P17183434364317349656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A025581 n).toNat * A247453 n

end

end A109449.P17183434364317349656

/-! ## A109449.P5997196435876786531

`A056594(2*A051933(n))*A247453(n)`
-/

namespace A109449.P5997196435876786531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A051933 n).toNat * A247453 n

end

end A109449.P5997196435876786531

/-! ## A109449.P13704138557341523985

`∑{d}[A247453(n), A000010(#)]`
-/

namespace A109449.P13704138557341523985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A109449.P13704138557341523985

/-!
# A109450: Triangle T(n,k), 0<=k<=n, read by rows, given by [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...] where DELTA is the operator defined in A084938.

The programs for A109450, there is no canonical definition to state claims against.
-/

/-! ## A109450.P1401706896186896653

`A086810(n)-A100910(A038227(n))`
-/

namespace A109450.P1401706896186896653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n - A100910 (A038227 n).toNat

end

end A109450.P1401706896186896653

/-! ## A109450.P3981959933228130703

`A086810(n)-A124764(A326474(n))`
-/

namespace A109450.P3981959933228130703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n - A124764 (A326474 n).toNat

end

end A109450.P3981959933228130703

/-! ## A109450.P10516563264507029122

`A086810(n)-A166698(A259180(n+1))`
-/

namespace A109450.P10516563264507029122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n - A166698 (A259180 (n + 1)).toNat

end

end A109450.P10516563264507029122

/-! ## A109450.P1441856352126637814

`A086810(n)-A340998(A112509(n+1))`
-/

namespace A109450.P1441856352126637814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n - A340998 ((A112509 (n + 1)).toNat + 140)

end

end A109450.P1441856352126637814

/-! ## A109450.P3595282527030981262

`A086810(n)-A020987(A369851(n+1))`
-/

namespace A109450.P3595282527030981262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n - A020987 (A369851 (n + 1)).toNat

end

end A109450.P3595282527030981262

/-!
# A109451: a(1)=1; a(n) = smallest positive integer not already present such that a(n-1) and a(n) have a different number of 1's in their binary expansions.

The programs for A109451, the canonical program `A109451.P45556533170029596` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109451 has offset 1).

The definition of A109451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109451.P45556533170029596

`xor(n+1, and(4, -n)/4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109451

/-- `xor(n+1, and(4, -n)/4)` -/
def P45556533170029596.Spec : Prop :=
  ∀ n, P45556533170029596.a n = A109451 (n + 1)

theorem P45556533170029596.correct : P45556533170029596.Spec := by
  intro n
  simp only [A109451, Nat.add_sub_cancel]

end A109451

/-! ## A109451.P3716144099336155774

`xor(n+1, ∑[∑[∑[n]]]%2)`
-/

namespace A109451.P3716144099336155774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) ((∑ j ∈ Finset.range (n + 1), f1 j) % 2)

end

end A109451.P3716144099336155774

namespace A109451

/-- `xor(n+1, ∑[∑[∑[n]]]%2)` -/
def P3716144099336155774.Spec : Prop :=
  ∀ n, (P3716144099336155774.a n : ℤ) = A109451 (n + 1)

end A109451

/-! ## A109451.P13726415210812550928

`xor(n+1, and(1, ∑[∑[∑[n]]]))`
-/

namespace A109451.P13726415210812550928
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A109451.P13726415210812550928

namespace A109451

/-- `xor(n+1, and(1, ∑[∑[∑[n]]]))` -/
def P13726415210812550928.Spec : Prop :=
  ∀ n, (P13726415210812550928.a n : ℤ) = A109451 (n + 1)

end A109451

/-! ## A109451.P15562605525731834550

`xor(n+1, (and(4, n+3)/4)²)`
-/

namespace A109451.P15562605525731834550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (((Nat.land 4 (n + 3) : ℚ) / 4) ^ 2))

end

end A109451.P15562605525731834550

namespace A109451

/-- `xor(n+1, (and(4, n+3)/4)²)` -/
def P15562605525731834550.Spec : Prop :=
  ∀ n, P15562605525731834550.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P8999794818554207057

`xor(n+1, char[or(3, n)-2+n])`
-/

namespace A109451.P8999794818554207057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A109451.P8999794818554207057

namespace A109451

/-- `xor(n+1, char[or(3, n)-2+n])` -/
def P8999794818554207057.Spec : Prop :=
  ∀ n, (P8999794818554207057.a n : ℤ) = A109451 (n + 1)

end A109451

/-! ## A109451.P7846609672384726614

`xor(n+1, char[and(n+1, n-3)+1])`
-/

namespace A109451.P7846609672384726614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 3) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A109451.P7846609672384726614

namespace A109451

/-- `xor(n+1, char[and(n+1, n-3)+1])` -/
def P7846609672384726614.Spec : Prop :=
  ∀ n, (P7846609672384726614.a n : ℤ) = A109451 (n + 1)

end A109451

/-! ## A109451.P12429034480447284927

`A116966(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A109451.P12429034480447284927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A116966 (a (n - 2) + 1).toNat

end

end A109451.P12429034480447284927

namespace A109451

/-- `A116966(a(n-2)+1)` -/
def P12429034480447284927.Spec : Prop :=
  ∀ n, P12429034480447284927.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P17358993708503002657

`A000035(n)+A000035(A037915(n))+n`
-/

namespace A109451.P17358993708503002657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A000035 (A037915 n).toNat + (n : ℤ))

end

end A109451.P17358993708503002657

namespace A109451

/-- `A000035(n)+A000035(A037915(n))+n` -/
def P17358993708503002657.Spec : Prop :=
  ∀ n, P17358993708503002657.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P10417051739668777844

`A292576(A080413(A292576(A080413(n+1))))`
-/

namespace A109451.P10417051739668777844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A080413 (A292576 (A080413 (n + 1)).toNat).toNat).toNat

end

end A109451.P10417051739668777844

namespace A109451

/-- `A292576(A080413(A292576(A080413(n+1))))` -/
def P10417051739668777844.Spec : Prop :=
  ∀ n, P10417051739668777844.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P14918886071342346884

`A080414(A298364(A080414(A298364(n+1))))`
-/

namespace A109451.P14918886071342346884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A298364 (A080414 (A298364 (n + 1)).toNat).toNat).toNat

end

end A109451.P14918886071342346884

namespace A109451

/-- `A080414(A298364(A080414(A298364(n+1))))` -/
def P14918886071342346884.Spec : Prop :=
  ∀ n, P14918886071342346884.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P928191784140665905

`A317613(A080414(A317613(A080413(A317613(n+1)))))`
-/

namespace A109451.P928191784140665905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317613 (A080414 (A317613 (A080413 (A317613 (n + 1)).toNat).toNat).toNat).toNat

end

end A109451.P928191784140665905

namespace A109451

/-- `A317613(A080414(A317613(A080413(A317613(n+1)))))` -/
def P928191784140665905.Spec : Prop :=
  ∀ n, P928191784140665905.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P16981494781172604844

`A132368(A132368(n+3)-1)-1`
-/

namespace A109451.P16981494781172604844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 (A132368 (n + 3) - 1).toNat - 1

end

end A109451.P16981494781172604844

namespace A109451

/-- `A132368(A132368(n+3)-1)-1` -/
def P16981494781172604844.Spec : Prop :=
  ∀ n, P16981494781172604844.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P11269150277226855610

`A285869(2*n)+A133872(A285869(n))`
-/

namespace A109451.P11269150277226855610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (2 * n) + A133872 (A285869 n).toNat

end

end A109451.P11269150277226855610

namespace A109451

/-- `A285869(2*n)+A133872(A285869(n))` -/
def P11269150277226855610.Spec : Prop :=
  ∀ n, P11269150277226855610.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P9568794479755443921

`xor(n+1, A165211(3*n))`
-/

namespace A109451.P9568794479755443921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A165211 (3 * n))

end

end A109451.P9568794479755443921

namespace A109451

/-- `xor(n+1, A165211(3*n))` -/
def P9568794479755443921.Spec : Prop :=
  ∀ n, P9568794479755443921.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P10768478633167923225

`A116966(A004524(3*n))-A004524(A004524(2*n))`
-/

namespace A109451.P10768478633167923225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A004524 (3 * n)).toNat - A004524 (A004524 (2 * n)).toNat

end

end A109451.P10768478633167923225

namespace A109451

/-- `A116966(A004524(3*n))-A004524(A004524(2*n))` -/
def P10768478633167923225.Spec : Prop :=
  ∀ n, P10768478633167923225.a n = A109451 (n + 1)

end A109451

/-! ## A109451.P12173050475858626416

`Δ[A177704(lt[A086066(n), 16]+1)+n]+n`
-/

namespace A109451.P12173050475858626416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A109451.P12173050475858626416

namespace A109451

/-- `Δ[A177704(lt[A086066(n), 16]+1)+n]+n` -/
def P12173050475858626416.Spec : Prop :=
  ∀ n, P12173050475858626416.a n = A109451 (n + 1)

end A109451

/-!
# A109452: Maximum of min(primeimplicants(f),primeimplicants(NOT f)) over all symmetric Boolean functions of n variables.

The programs for A109452, there is no canonical definition to state claims against.
-/

/-! ## A109452.P13183419524075399521

`A324701(A027306(n))-floor(n/2)`
-/

namespace A109452.P13183419524075399521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A027306 n).toNat - ⌊(n : ℚ) / 2⌋

end

end A109452.P13183419524075399521

/-! ## A109452.P10592021583009562348

`A347467(A148051(n))-A173924(A108359(2*(n+1)))`
-/

namespace A109452.P10592021583009562348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347467 (A148051 n).toNat - A173924 (A108359 (2 * (n + 1))).toNat

end

end A109452.P10592021583009562348

/-! ## A109452.P10699120751177752851

`A347467(A148052(n))-A173924(A108359(2*(n+1)))`
-/

namespace A109452.P10699120751177752851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347467 (A148052 n).toNat - A173924 (A108359 (2 * (n + 1))).toNat

end

end A109452.P10699120751177752851

/-!
# A109453: Cumulative sum of initial digits of n.

The programs for A109453, the canonical program `A109453.P3348527290827092913` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109453 has offset 1).

The definition of A109453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109453.P3348527290827092913

`∑[A000030(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109453

/-- `∑[A000030(n+1)]` -/
def P3348527290827092913.Spec : Prop :=
  ∀ n, P3348527290827092913.a n = A109453 (n + 1)

theorem P3348527290827092913.correct : P3348527290827092913.Spec := by
  intro n
  simp only [A109453, Nat.add_sub_cancel]

end A109453

/-! ## A109453.P189992362827570578

`∑[A004086(n+1)%10]`
-/

namespace A109453.P189992362827570578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P189992362827570578

namespace A109453

/-- `∑[A004086(n+1)%10]` -/
def P189992362827570578.Spec : Prop :=
  ∀ n, P189992362827570578.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P636585586857672620

`∑[A056524(n+1)%10]`
-/

namespace A109453.P636585586857672620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056524 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P636585586857672620

namespace A109453

/-- `∑[A056524(n+1)%10]` -/
def P636585586857672620.Spec : Prop :=
  ∀ n, P636585586857672620.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P15917207114569559275

`∑[A056525(n+1)%10]`
-/

namespace A109453.P15917207114569559275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P15917207114569559275

namespace A109453

/-- `∑[A056525(n+1)%10]` -/
def P15917207114569559275.Spec : Prop :=
  ∀ n, P15917207114569559275.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P12925719947295174579

`∑[∑[Δ[A000030(n)]%34]]`
-/

namespace A109453.P12925719947295174579
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P12925719947295174579

namespace A109453

/-- `∑[∑[Δ[A000030(n)]%34]]` -/
def P12925719947295174579.Spec : Prop :=
  ∀ n, P12925719947295174579.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P13109456461884530468

`∑[A182324(n+1)-(n+1)]`
-/

namespace A109453.P13109456461884530468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P13109456461884530468

namespace A109453

/-- `∑[A182324(n+1)-(n+1)]` -/
def P13109456461884530468.Spec : Prop :=
  ∀ n, P13109456461884530468.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P3137444901101837591

`∑[A010879(A004086(n+1))]`
-/

namespace A109453.P3137444901101837591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P3137444901101837591

namespace A109453

/-- `∑[A010879(A004086(n+1))]` -/
def P3137444901101837591.Spec : Prop :=
  ∀ n, P3137444901101837591.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P2271993592628872966

`∑[A007376(A031297(n+1))]`
-/

namespace A109453.P2271993592628872966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A031297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P2271993592628872966

namespace A109453

/-- `∑[A007376(A031297(n+1))]` -/
def P2271993592628872966.Spec : Prop :=
  ∀ n, P2271993592628872966.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P1250438379895321802

`∑[A007376(A117804(n+1))]`
-/

namespace A109453.P1250438379895321802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A117804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P1250438379895321802

namespace A109453

/-- `∑[A007376(A117804(n+1))]` -/
def P1250438379895321802.Spec : Prop :=
  ∀ n, P1250438379895321802.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P16918021112647681210

`∑[A007376(A229186(n+1))]`
-/

namespace A109453.P16918021112647681210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P16918021112647681210

namespace A109453

/-- `∑[A007376(A229186(n+1))]` -/
def P16918021112647681210.Spec : Prop :=
  ∀ n, P16918021112647681210.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P1037524639262571178

`∑[A052038(A052039(n+1))]`
-/

namespace A109453.P1037524639262571178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A052039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P1037524639262571178

namespace A109453

/-- `∑[A052038(A052039(n+1))]` -/
def P1037524639262571178.Spec : Prop :=
  ∀ n, P1037524639262571178.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P2370774368607597457

`∑[A052038(A095156(n+1))]`
-/

namespace A109453.P2370774368607597457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A095156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P2370774368607597457

namespace A109453

/-- `∑[A052038(A095156(n+1))]` -/
def P2370774368607597457.Spec : Prop :=
  ∀ n, P2370774368607597457.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P18143809579315861803

`∑[A368360(5*(n+1))]`
-/

namespace A109453.P18143809579315861803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368360 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P18143809579315861803

namespace A109453

/-- `∑[A368360(5*(n+1))]` -/
def P18143809579315861803.Spec : Prop :=
  ∀ n, P18143809579315861803.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P13639915101553855429

`∑[A031298(A031309(n+1))]`
-/

namespace A109453.P13639915101553855429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A031309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P13639915101553855429

namespace A109453

/-- `∑[A031298(A031309(n+1))]` -/
def P13639915101553855429.Spec : Prop :=
  ∀ n, P13639915101553855429.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P3360843421401785402

`∑[A001113(A078197(n+1))]`
-/

namespace A109453.P3360843421401785402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A078197 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P3360843421401785402

namespace A109453

/-- `∑[A001113(A078197(n+1))]` -/
def P3360843421401785402.Spec : Prop :=
  ∀ n, P3360843421401785402.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P8902204492737974069

`∑[A000796(A014777(n+1))]`
-/

namespace A109453.P8902204492737974069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A014777 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P8902204492737974069

namespace A109453

/-- `∑[A000796(A014777(n+1))]` -/
def P8902204492737974069.Spec : Prop :=
  ∀ n, P8902204492737974069.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P2141795229628392268

`∑[A000796(A176341(n+1))]`
-/

namespace A109453.P2141795229628392268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A176341 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P2141795229628392268

namespace A109453

/-- `∑[A000796(A176341(n+1))]` -/
def P2141795229628392268.Spec : Prop :=
  ∀ n, P2141795229628392268.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P2385199220231841670

`∑[A031310(A031311(n+1))]`
-/

namespace A109453.P2385199220231841670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031310 (A031311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P2385199220231841670

namespace A109453

/-- `∑[A031310(A031311(n+1))]` -/
def P2385199220231841670.Spec : Prop :=
  ∀ n, P2385199220231841670.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P15643761007181586227

`∑[A008905(A018799(n+1))]`
-/

namespace A109453.P15643761007181586227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 (A018799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P15643761007181586227

namespace A109453

/-- `∑[A008905(A018799(n+1))]` -/
def P15643761007181586227.Spec : Prop :=
  ∀ n, P15643761007181586227.a n = A109453 (n + 1)

end A109453

/-! ## A109453.P11332597771064929384

`∑[A031312(A031323(n+1))]`
-/

namespace A109453.P11332597771064929384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A031323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P11332597771064929384

namespace A109453

/-- `∑[A031312(A031323(n+1))]` -/
def P11332597771064929384.Spec : Prop :=
  ∀ n, P11332597771064929384.a n = A109453 (n + 1)

end A109453

/-!
# A109454: Sum of non-Fibonacci numbers between successive Fibonacci numbers: a(n) = Sum_{k=F(n)+1..F(n+1)-1} k.

The programs for A109454, the canonical program `A109454.P2985639318442095391` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109454 has offset 0).

The definition of A109454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109454.P2985639318442095391

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=13, a(6)=42`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109454

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P2985639318442095391.Spec : Prop :=
  ∀ n, P2985639318442095391.a n = A109454 n

theorem P2985639318442095391.correct : P2985639318442095391.Spec := by
  intro n
  simp only [A109454]

end A109454

/-! ## A109454.P10513871866152409278

`A226205(n+1)%A161762(n+1)`
-/

namespace A109454.P10513871866152409278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226205 (n + 1)) (A161762 (n + 1))

end

end A109454.P10513871866152409278

namespace A109454

/-- `A226205(n+1)%A161762(n+1)` -/
def P10513871866152409278.Spec : Prop :=
  ∀ n, P10513871866152409278.a n = A109454 n

end A109454

/-! ## A109454.P16571880942113373981

`abs(A121646(n+1)%A161762(n+1))`
-/

namespace A109454.P16571880942113373981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A121646 (n + 1)) (A161762 (n + 1))|

end

end A109454.P16571880942113373981

namespace A109454

/-- `abs(A121646(n+1)%A161762(n+1))` -/
def P16571880942113373981.Spec : Prop :=
  ∀ n, P16571880942113373981.a n = A109454 n

end A109454

/-! ## A109454.P10960339566368519058

`A056014(n+1)%A007598(A233583(n+1))`
-/

namespace A109454.P10960339566368519058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056014 (n + 1)) (A007598 (A233583 (n + 1)).toNat)

end

end A109454.P10960339566368519058

namespace A109454

/-- `A056014(n+1)%A007598(A233583(n+1))` -/
def P10960339566368519058.Spec : Prop :=
  ∀ n, P10960339566368519058.a n = A109454 n

end A109454

/-! ## A109454.P4936829798264495551

`Δ[A007598(n)]%A161762(n+1)`
-/

namespace A109454.P4936829798264495551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A161762 (n + 1))

end

end A109454.P4936829798264495551

namespace A109454

/-- `Δ[A007598(n)]%A161762(n+1)` -/
def P4936829798264495551.Spec : Prop :=
  ∀ n, P4936829798264495551.a n = A109454 n

end A109454

/-! ## A109454.P7081102498282711990

`Δ[A000045(n)²]%A161762(n+1)`
-/

namespace A109454.P7081102498282711990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A161762 (n + 1))

end

end A109454.P7081102498282711990

namespace A109454

/-- `Δ[A000045(n)²]%A161762(n+1)` -/
def P7081102498282711990.Spec : Prop :=
  ∀ n, P7081102498282711990.a n = A109454 n

end A109454

/-! ## A109454.P9325774743560272996

`Δ[A191797(n)-A193922(A161680(n))]`
-/

namespace A109454.P9325774743560272996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n - A193922 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109454.P9325774743560272996

namespace A109454

/-- `Δ[A191797(n)-A193922(A161680(n))]` -/
def P9325774743560272996.Spec : Prop :=
  ∀ n, P9325774743560272996.a n = A109454 n

end A109454

/-!
# A109455: Number of equivalence classes of threshold functions under permutations of the variables.

The programs for A109455, there is no canonical definition to state claims against.
-/

/-! ## A109455.P11358267434779312104

`A325102(n!+n)+2`
-/

namespace A109455.P11358267434779312104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (Nat.factorial n + n) + 2

end

end A109455.P11358267434779312104

/-!
# A109456: Number of Boolean functions of n variables that are self-dual and regular.

The programs for A109456, there is no canonical definition to state claims against.
-/

/-! ## A109456.P2457292645271744054

`∑{e}[A000351(n), A001532(#)]`
-/

namespace A109456.P2457292645271744054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001532 (Nat.factorization (f1 n).natAbs p)

end

end A109456.P2457292645271744054

/-! ## A109456.P6121740947116280624

`2*A001529(n)-A000617(n)`
-/

namespace A109456.P6121740947116280624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001529 n - A000617 n

end

end A109456.P6121740947116280624

/-! ## A109456.P16688823144884966702

`∑[2*A001530(n)]-A000617(n)`
-/

namespace A109456.P16688823144884966702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000617 n

end

end A109456.P16688823144884966702

/-! ## A109456.P12536331315433255142

`A001532(round(acot(n)+n))%A001529(n)`
-/

namespace A109456.P12536331315433255142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001532 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A001529 n)

end

end A109456.P12536331315433255142

/-! ## A109456.P538263692813129053

`A001532(round(sqrt(n²+1)))%A001529(n)`
-/

namespace A109456.P538263692813129053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001532 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A001529 n)

end

end A109456.P538263692813129053

/-!
# A109457: Number of Krom functions on n variables (or 2SAT instances): conjunctions of clauses with two literals per clause.

The programs for A109457, there is no canonical definition to state claims against.
-/

/-! ## A109457.P1902670622374167024

`A072774(A000680(n)+A000244(n))`
-/

namespace A109457.P1902670622374167024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (A000680 n + A000244 n).toNat

end

end A109457.P1902670622374167024

/-!
# A109458: Number of inequivalent Krom functions on n variables (or 2SAT instances) under permutations of variables.

The programs for A109458, there is no canonical definition to state claims against.
-/

/-! ## A109458.P4734018077972970545

`A362690(n)+A001462(A165962(n+3))`
-/

namespace A109458.P4734018077972970545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362690 n + A001462 (A165962 (n + 3)).toNat

end

end A109458.P4734018077972970545

/-!
# A109459: Number of inequivalent Krom functions on n variables (or 2SAT instances) under permuting and complementing variables.

The programs for A109459, there is no canonical definition to state claims against.
-/

/-! ## A109459.P7002055266359056215

`A168434(a(n-1))+n` with `a(0)=2`
-/

namespace A109459.P7002055266359056215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A168434 (a (n - 1)).toNat + (n : ℤ)

end

end A109459.P7002055266359056215

/-! ## A109459.P7692252087503921490

`A113238(2^n)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1`
-/

namespace A109459.P7692252087503921490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113238 (2 ^ n) : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)

end

end A109459.P7692252087503921490

/-!
# A109460: Number of P-equivalence classes of canalizing functions with n variables.

The programs for A109460, there is no canonical definition to state claims against.
-/

/-! ## A109460.P12404737849394600326

`A119761(A131244(n))`
-/

namespace A109460.P12404737849394600326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119761 (A131244 n).toNat

end

end A109460.P12404737849394600326

/-!
# A109461: Mersenne's original list of "Mersenne" exponents.

The programs for A109461, there is no canonical definition to state claims against.
-/

/-! ## A109461.P3215196633512159247

`p?[lt[A053641(n+1), A053671(n+1)]]`
-/

namespace A109461.P3215196633512159247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053641 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053671 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109461.P3215196633512159247

/-! ## A109461.P11421121464234739091

`record[gcd(A004525(n), A092938(n+1))]`
-/

namespace A109461.P11421121464234739091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004525 n) (A092938 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109461.P11421121464234739091

/-! ## A109461.P14208135076081809236

`A109799(n+1)+Δ[A112437(n+1)]`
-/

namespace A109461.P14208135076081809236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109799 (n + 1) + (f1 (n + 1) - f1 n)

end

end A109461.P14208135076081809236

/-! ## A109461.P1659118136593488704

`A006530(A095325(n+1)*A109799(n+1))`
-/

namespace A109461.P1659118136593488704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095325 (n + 1) * A109799 (n + 1)).toNat

end

end A109461.P1659118136593488704

/-! ## A109461.P15906705106531696352

`A174544(n+4)+A000010(A109799(n+1))`
-/

namespace A109461.P15906705106531696352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 (n + 4) + A000010 (A109799 (n + 1)).toNat

end

end A109461.P15906705106531696352

/-!
# A109463: Numbers n such that A112131(n) is a Harshad number and sets a new record for number of digits.

The programs for A109463, there is no canonical definition to state claims against.
-/

/-! ## A109463.P16766053981584392935

`A178361(n+1)-A355689(A234412(n+1))`
-/

namespace A109463.P16766053981584392935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178361 (n + 1) - A355689 (A234412 (n + 1)).toNat

end

end A109463.P16766053981584392935

/-!
# A109465: a(1)=1; for n>1, a(n) = smallest positive integer not among the earlier terms of the sequence that is divisible by a different number of distinct primes than a(n-1).

The programs for A109465, there is no canonical definition to state claims against.
-/

/-! ## A109465.P683076335151740278

`A382376(n+1)%A383046(n+3)`
-/

namespace A109465.P683076335151740278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382376 (n + 1)) (A383046 (n + 3))

end

end A109465.P683076335151740278

/-! ## A109465.P143738511210881224

`and(A152388(n+1), A382376(n+1))`
-/

namespace A109465.P143738511210881224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A382376 (n + 1))

end

end A109465.P143738511210881224

/-! ## A109465.P15471569116309161441

`A382376(n+1)%A000040(A000070(n))`
-/

namespace A109465.P15471569116309161441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382376 (n + 1)) (A000040 (A000070 n).toNat)

end

end A109465.P15471569116309161441

/-! ## A109465.P14543305552374324163

`A382376(n+1)+A217220(A048629(n+1))`
-/

namespace A109465.P14543305552374324163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382376 (n + 1) + A217220 (A048629 (n + 1)).toNat

end

end A109465.P14543305552374324163

/-! ## A109465.P2367032821565589692

`A382376(n+1)+A247223(A048768(n+1))`
-/

namespace A109465.P2367032821565589692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382376 (n + 1) + A247223 (A048768 (n + 1)).toNat

end

end A109465.P2367032821565589692

/-!
# A109466: Riordan array (1, x(1-x)).

The programs for A109466, the canonical program `A109466.P7508220210719608303` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109466 has offset 0).

The definition of A109466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109466.P2507338382801219074

`a(n-1)-A104402(n-1)` with `a(0)=1`
-/

namespace A109466.P2507338382801219074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A104402 (n - 1)

end

end A109466.P2507338382801219074

namespace A109466

/-- `a(n-1)-A104402(n-1)` -/
def P2507338382801219074.Spec : Prop :=
  ∀ n, P2507338382801219074.a n = A109466 n

end A109466

/-! ## A109466.P7508220210719608303

`A026729(n)*A097807(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109466

/-- `A026729(n)*A097807(n)` -/
def P7508220210719608303.Spec : Prop :=
  ∀ n, P7508220210719608303.a n = A109466 n

theorem P7508220210719608303.correct : P7508220210719608303.Spec := by
  intro n
  simp only [A109466]

end A109466

/-! ## A109466.P13633053698286417329

`A026729(n)*A128257(n)`
-/

namespace A109466.P13633053698286417329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A128257 n

end

end A109466.P13633053698286417329

namespace A109466

/-- `A026729(n)*A128257(n)` -/
def P13633053698286417329.Spec : Prop :=
  ∀ n, P13633053698286417329.a n = A109466 n

end A109466

/-! ## A109466.P9474086844514668010

`A026729(n)*A187034(n)`
-/

namespace A109466.P9474086844514668010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A187034 n

end

end A109466.P9474086844514668010

namespace A109466

/-- `A026729(n)*A187034(n)` -/
def P9474086844514668010.Spec : Prop :=
  ∀ n, P9474086844514668010.a n = A109466 n

end A109466

/-! ## A109466.P15553922547852160712

`A059674(n)*A187034(n)`
-/

namespace A109466.P15553922547852160712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 n * A187034 n

end

end A109466.P15553922547852160712

namespace A109466

/-- `A059674(n)*A187034(n)` -/
def P15553922547852160712.Spec : Prop :=
  ∀ n, P15553922547852160712.a n = A109466 n

end A109466

/-! ## A109466.P9858341340249099295

`A110509(n)/A052509(n)`
-/

namespace A109466.P9858341340249099295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A052509 n : ℚ)

end

end A109466.P9858341340249099295

namespace A109466

/-- `A110509(n)/A052509(n)` -/
def P9858341340249099295.Spec : Prop :=
  ∀ n, P9858341340249099295.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P5755525899927021750

`A099096(n)/A116588(n)`
-/

namespace A109466.P5755525899927021750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099096 n : ℚ) / (A116588 n : ℚ)

end

end A109466.P5755525899927021750

namespace A109466

/-- `A099096(n)/A116588(n)` -/
def P5755525899927021750.Spec : Prop :=
  ∀ n, P5755525899927021750.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P7234669456326523169

`A110509(n)/A130321(n)`
-/

namespace A109466.P7234669456326523169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A130321 n : ℚ)

end

end A109466.P7234669456326523169

namespace A109466

/-- `A110509(n)/A130321(n)` -/
def P7234669456326523169.Spec : Prop :=
  ∀ n, P7234669456326523169.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P13055088368547464083

`A110517(n)/A140303(n)`
-/

namespace A109466.P13055088368547464083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110517 n : ℚ) / (A140303 n : ℚ)

end

end A109466.P13055088368547464083

namespace A109466

/-- `A110517(n)/A140303(n)` -/
def P13055088368547464083.Spec : Prop :=
  ∀ n, P13055088368547464083.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P1355444682889563816

`A110509(n)/A144464(n)`
-/

namespace A109466.P1355444682889563816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A144464 n : ℚ)

end

end A109466.P1355444682889563816

namespace A109466

/-- `A110509(n)/A144464(n)` -/
def P1355444682889563816.Spec : Prop :=
  ∀ n, P1355444682889563816.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P16387859444843685621

`A110517(n)/A152714(n)`
-/

namespace A109466.P16387859444843685621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110517 n : ℚ) / (A152714 n : ℚ)

end

end A109466.P16387859444843685621

namespace A109466

/-- `A110517(n)/A152714(n)` -/
def P16387859444843685621.Spec : Prop :=
  ∀ n, P16387859444843685621.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P10041160518276981986

`A110509(n)/A385674(n)`
-/

namespace A109466.P10041160518276981986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A385674 n : ℚ)

end

end A109466.P10041160518276981986

namespace A109466

/-- `A110509(n)/A385674(n)` -/
def P10041160518276981986.Spec : Prop :=
  ∀ n, P10041160518276981986.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P15749832526252008962

`A110509(n)/A057728(n+1)`
-/

namespace A109466.P15749832526252008962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A109466.P15749832526252008962

namespace A109466

/-- `A110509(n)/A057728(n+1)` -/
def P15749832526252008962.Spec : Prop :=
  ∀ n, P15749832526252008962.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P14435658040402870012

`A110509(n)/A062001(n+1)`
-/

namespace A109466.P14435658040402870012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A062001 (n + 1) : ℚ)

end

end A109466.P14435658040402870012

namespace A109466

/-- `A110509(n)/A062001(n+1)` -/
def P14435658040402870012.Spec : Prop :=
  ∀ n, P14435658040402870012.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P15818658699287470381

`A110509(n)/A152072(n+1)`
-/

namespace A109466.P15818658699287470381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A152072 (n + 1) : ℚ)

end

end A109466.P15818658699287470381

namespace A109466

/-- `A110509(n)/A152072(n+1)` -/
def P15818658699287470381.Spec : Prop :=
  ∀ n, P15818658699287470381.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P4660827129530384404

`2*A117362(n)-A117377(n)`
-/

namespace A109466.P4660827129530384404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117362 n - A117377 n

end

end A109466.P4660827129530384404

namespace A109466

/-- `2*A117362(n)-A117377(n)` -/
def P4660827129530384404.Spec : Prop :=
  ∀ n, P4660827129530384404.a n = A109466 n

end A109466

/-! ## A109466.P9709239985084807635

`A026729(n)*A130595(n)/abs(A130595(n))`
-/

namespace A109466.P9709239985084807635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026729 n * A130595 n : ℚ) / (|A130595 n| : ℚ)

end

end A109466.P9709239985084807635

namespace A109466

/-- `A026729(n)*A130595(n)/abs(A130595(n))` -/
def P9709239985084807635.Spec : Prop :=
  ∀ n, P9709239985084807635.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P13215820176161532445

`A110509(n)/A209434(n)`
-/

namespace A109466.P13215820176161532445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A209434 n : ℚ)

end

end A109466.P13215820176161532445

namespace A109466

/-- `A110509(n)/A209434(n)` -/
def P13215820176161532445.Spec : Prop :=
  ∀ n, P13215820176161532445.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P10641437697750614336

`A105868(n)/A130595(n)`
-/

namespace A109466.P10641437697750614336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A130595 n : ℚ)

end

end A109466.P10641437697750614336

namespace A109466

/-- `A105868(n)/A130595(n)` -/
def P10641437697750614336.Spec : Prop :=
  ∀ n, P10641437697750614336.a n = (A109466 n : ℚ)

end A109466

/-! ## A109466.P9204302519918162892

`A110509(n)/A209438(n)`
-/

namespace A109466.P9204302519918162892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A209438 n : ℚ)

end

end A109466.P9204302519918162892

namespace A109466

/-- `A110509(n)/A209438(n)` -/
def P9204302519918162892.Spec : Prop :=
  ∀ n, P9204302519918162892.a n = (A109466 n : ℚ)

end A109466

/-!
# A109468: a(n) is the number of permutations of (1,2,3,...,n) written in binary such that no adjacent elements share a common 1-bit.

The programs for A109468, there is no canonical definition to state claims against.
-/

/-! ## A109468.P8913487372316655952

`and(record[A225084(n+1)], A206477(n+4))`
-/

namespace A109468.P8913487372316655952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A206477 (n + 4))

end

end A109468.P8913487372316655952

/-! ## A109468.P3151117105712136212

`and(Δ[A081485(2*n+3)], A018261(n+1))`
-/

namespace A109468.P3151117105712136212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081485 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A018261 (n + 1))

end

end A109468.P3151117105712136212

/-! ## A109468.P9453435133124593103

`and(A123044(n), A165418(A143095(n)))`
-/

namespace A109468.P9453435133124593103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123044 (n + 21)) (A165418 (A143095 n).toNat)

end

end A109468.P9453435133124593103

/-! ## A109468.P5170691973572158830

`A131555(A082697(n+1))^A095149(n)`
-/

namespace A109468.P5170691973572158830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131555 (A082697 (n + 1)).toNat : ℚ) ^ (A095149 n : ℤ)

end

end A109468.P5170691973572158830

/-! ## A109468.P13997819572690551526

`and(A029744(n+1), A065188(A007051(n)))`
-/

namespace A109468.P13997819572690551526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029744 (n + 1)) (A065188 (A007051 n).toNat)

end

end A109468.P13997819572690551526

/-!
# A109469: Cumulative sum of coefficients of ménage hit polynomials (A000033).

The programs for A109469, there is no canonical definition to state claims against.
-/

/-! ## A109469.P4962781318530629645

`∑[A000033(n+1)]`
-/

namespace A109469.P4962781318530629645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P4962781318530629645

/-! ## A109469.P7201259713074064816

`∑[A156996(∑[n+1]+2)]`
-/

namespace A109469.P7201259713074064816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P7201259713074064816

/-! ## A109469.P8584150019819061869

`∑[(n+1)*A000426(n+1)]`
-/

namespace A109469.P8584150019819061869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P8584150019819061869

/-! ## A109469.P7025470160112293632

`∑[record[A000033(A152271(n))]]`
-/

namespace A109469.P7025470160112293632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000033 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P7025470160112293632

/-! ## A109469.P15476625585011778640

`∑[A094314(A253145(n+1)-n)]`
-/

namespace A109469.P15476625585011778640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A253145 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P15476625585011778640

/-! ## A109469.P6987022080489415722

`A000222(n+1)+∑[A000426(n+1)]`
-/

namespace A109469.P6987022080489415722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000222 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P6987022080489415722

/-! ## A109469.P4900619854943193742

`∑[(n+1)*Δ[A000222(n)]/A028310(n)]`
-/

namespace A109469.P4900619854943193742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000222 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f2 (n + 1) - f2 n : ℚ) / (A028310 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109469.P4900619854943193742

/-!
# A109470: Sum of first n noncubes.

The programs for A109470, the canonical program `A109470.P4624820433429419724` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109470 has offset 1).

The definition of A109470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109470.P4624820433429419724

`A000217(A007412(n+1))-A000217(floor(A007412(n+1)^(1/3)))²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109470

/-- `A000217(A007412(n+1))-A000217(floor(A007412(n+1)^(1/3)))²` -/
def P4624820433429419724.Spec : Prop :=
  ∀ n, P4624820433429419724.a n = A109470 (n + 1)

theorem P4624820433429419724.correct : P4624820433429419724.Spec := by
  intro n
  simp only [A109470, Nat.add_sub_cancel]

end A109470

/-! ## A109470.P12414608481090134428

`∑[comp[n^3]]`
-/

namespace A109470.P12414608481090134428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109470.P12414608481090134428

namespace A109470

/-- `∑[comp[n^3]]` -/
def P12414608481090134428.Spec : Prop :=
  ∀ n, (P12414608481090134428.a n : ℤ) = A109470 (n + 1)

end A109470

/-! ## A109470.P10620614519072853563

`comp[n^3]+a(n-1)` with `a(0)=2`
-/

namespace A109470.P10620614519072853563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1)

end

end A109470.P10620614519072853563

namespace A109470

/-- `comp[n^3]+a(n-1)` -/
def P10620614519072853563.Spec : Prop :=
  ∀ n, (P10620614519072853563.a n : ℤ) = A109470 (n + 1)

end A109470

/-! ## A109470.P12402957406271716563

`lcm(log2(1/2), ∑[comp[n*n²]])`
-/

namespace A109470.P12402957406271716563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109470.P12402957406271716563

namespace A109470

/-- `lcm(log2(1/2), ∑[comp[n*n²]])` -/
def P12402957406271716563.Spec : Prop :=
  ∀ n, (P12402957406271716563.a n : ℤ) = A109470 (n + 1)

end A109470

/-! ## A109470.P12537663432029271618

`and(∑[A007412(n+1)], -1)`
-/

namespace A109470.P12537663432029271618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A109470.P12537663432029271618

namespace A109470

/-- `and(∑[A007412(n+1)], -1)` -/
def P12537663432029271618.Spec : Prop :=
  ∀ n, P12537663432029271618.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P16133465862940072668

`∑[A007412(n+1)]%A033816(n)`
-/

namespace A109470.P16133465862940072668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A033816 n)

end

end A109470.P16133465862940072668

namespace A109470

/-- `∑[A007412(n+1)]%A033816(n)` -/
def P16133465862940072668.Spec : Prop :=
  ∀ n, P16133465862940072668.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P18267675467674177151

`gcd(∑[A007412(n+1)], A000038(n))`
-/

namespace A109470.P18267675467674177151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A109470.P18267675467674177151

namespace A109470

/-- `gcd(∑[A007412(n+1)], A000038(n))` -/
def P18267675467674177151.Spec : Prop :=
  ∀ n, (P18267675467674177151.a n : ℤ) = A109470 (n + 1)

end A109470

/-! ## A109470.P3445257468183070662

`A000027(n+1)+∑[A007412(n+1)-1]`
-/

namespace A109470.P3445257468183070662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109470.P3445257468183070662

namespace A109470

/-- `A000027(n+1)+∑[A007412(n+1)-1]` -/
def P3445257468183070662.Spec : Prop :=
  ∀ n, P3445257468183070662.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P3997635186992890129

`∑[comp[A000578(n)]]%A288876(n+1)`
-/

namespace A109470.P3997635186992890129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A288876 (n + 1))

end

end A109470.P3997635186992890129

namespace A109470

/-- `∑[comp[A000578(n)]]%A288876(n+1)` -/
def P3997635186992890129.Spec : Prop :=
  ∀ n, P3997635186992890129.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P13448562663912884924

`A285476(2*(n+1))+∑[comp[A000578(n)]]`
-/

namespace A109470.P13448562663912884924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (2 * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109470.P13448562663912884924

namespace A109470

/-- `A285476(2*(n+1))+∑[comp[A000578(n)]]` -/
def P13448562663912884924.Spec : Prop :=
  ∀ n, P13448562663912884924.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P450936695076172354

`A000027(∑[comp[n*n²]])`
-/

namespace A109470.P450936695076172354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109470.P450936695076172354

namespace A109470

/-- `A000027(∑[comp[n*n²]])` -/
def P450936695076172354.Spec : Prop :=
  ∀ n, P450936695076172354.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P16707364107121261381

`A132296(A007412(n+1))`
-/

namespace A109470.P16707364107121261381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132296 (A007412 (n + 1)).toNat

end

end A109470.P16707364107121261381

namespace A109470

/-- `A132296(A007412(n+1))` -/
def P16707364107121261381.Spec : Prop :=
  ∀ n, P16707364107121261381.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P4554372626461060300

`record[A132296(A257573(n+1))]`
-/

namespace A109470.P4554372626461060300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132296 (A257573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109470.P4554372626461060300

namespace A109470

/-- `record[A132296(A257573(n+1))]` -/
def P4554372626461060300.Spec : Prop :=
  ∀ n, P4554372626461060300.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P18296142366805394079

`A132296(record[Δ[A132296(n+1)]])`
-/

namespace A109470.P18296142366805394079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132296 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109470.P18296142366805394079

namespace A109470

/-- `A132296(record[Δ[A132296(n+1)]])` -/
def P18296142366805394079.Spec : Prop :=
  ∀ n, P18296142366805394079.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P10838387874918787934

`∑{d}[∑[A007412(n+1)], A000010(#)]`
-/

namespace A109470.P10838387874918787934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A109470.P10838387874918787934

namespace A109470

/-- `∑{d}[∑[A007412(n+1)], A000010(#)]` -/
def P10838387874918787934.Spec : Prop :=
  ∀ n, P10838387874918787934.a n = A109470 (n + 1)

end A109470

/-! ## A109470.P2620937101334951633

`A028310(∑[comp[A000578(n)]])`
-/

namespace A109470.P2620937101334951633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109470.P2620937101334951633

namespace A109470

/-- `A028310(∑[comp[A000578(n)]])` -/
def P2620937101334951633.Spec : Prop :=
  ∀ n, P2620937101334951633.a n = A109470 (n + 1)

end A109470

/-!
# A109471: Cumulative sum of absolute values of coefficients of q^(2n) in the series expansion of Ramanujan's mock theta function f(q).

The programs for A109471, there is no canonical definition to state claims against.
-/

/-! ## A109471.P4426102678644393322

`∑[abs(A000039(n))]`
-/

namespace A109471.P4426102678644393322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000039 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109471.P4426102678644393322

/-! ## A109471.P16314212485874299608

`∑[abs(A000025(2*n))]`
-/

namespace A109471.P16314212485874299608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000025 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109471.P16314212485874299608

/-! ## A109471.P13945458482252175748

`a(n-1)-A000025(n+n)` with `a(0)=1`
-/

namespace A109471.P13945458482252175748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A000025 (n + n)

end

end A109471.P13945458482252175748

/-! ## A109471.P7871964807019487299

`2-∑[A000025(A004277(n))]`
-/

namespace A109471.P7871964807019487299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109471.P7871964807019487299

/-! ## A109471.P17825869952513988684

`a(n-1)-A000039(A004526(2*n))` with `a(0)=1`
-/

namespace A109471.P17825869952513988684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A000039 (A004526 (2 * n)).toNat

end

end A109471.P17825869952513988684

/-! ## A109471.P6048074554316409774

`∑[abs(A260460(2*n))]`
-/

namespace A109471.P6048074554316409774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260460 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109471.P6048074554316409774

/-!
# A109472: Cumulative sum of primes p such that 2^p - 1 is a Mersenne prime.

The programs for A109472, there is no canonical definition to state claims against.
-/

/-! ## A109472.P3977510556194059903

`∑[A000043(n+1)]`
-/

namespace A109472.P3977510556194059903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109472.P3977510556194059903

/-! ## A109472.P9908715836576166667

`∑[A090748(n+1)+1]`
-/

namespace A109472.P9908715836576166667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109472.P9908715836576166667

/-! ## A109472.P14155038956367293912

`∑[A050475(n+1)-1]`
-/

namespace A109472.P14155038956367293912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109472.P14155038956367293912

/-! ## A109472.P9273225283894328751

`∑[A153798(n+1)+2]`
-/

namespace A109472.P9273225283894328751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109472.P9273225283894328751

/-! ## A109472.P10509827078847912073

`∑[A061645(n+1)/2]`
-/

namespace A109472.P10509827078847912073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061645 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109472.P10509827078847912073

/-!
# A109473: Let m = n-th squarefree number = A005117(n), and consider the smallest pair of consecutive squarefree numbers (r,s) with gcd(r,s) = m; sequence gives values of r.

The programs for A109473, there is no canonical definition to state claims against.
-/

/-! ## A109473.P7733591985178381039

`A109505(comp[lcm(n, -1%∏{e}[n, #])])`
-/

namespace A109473.P7733591985178381039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109505 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A109473.P7733591985178381039

/-!
# A109474: a(1)=1, a(2)=3; thereafter, a(n) = least positive integer > a(n-1) and not equal to a(i)+a(j)+a(k) for 1<=i<=j<=k<=n-1.

The programs for A109474, the canonical program `A109474.P12010359501026014987` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109474 has offset 1).

The definition of A109474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109474.P12010359501026014987

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109474

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P12010359501026014987.Spec : Prop :=
  ∀ n, P12010359501026014987.a n = A109474 (n + 1)

theorem P12010359501026014987.correct : P12010359501026014987.Spec := by
  intro n
  simp only [A109474, Nat.add_sub_cancel]

end A109474

/-! ## A109474.P16035519816359819152

`a(n-2)+10` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A109474.P16035519816359819152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) + 10

end

end A109474.P16035519816359819152

namespace A109474

/-- `a(n-2)+10` -/
def P16035519816359819152.Spec : Prop :=
  ∀ n, (P16035519816359819152.a n : ℤ) = A109474 (n + 1)

end A109474

/-! ## A109474.P2824046088978871703

`∑[dr((2-n)%2+10)]`
-/

namespace A109474.P2824046088978871703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (2 - (n : ℤ)) 2 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P2824046088978871703

namespace A109474

/-- `∑[dr((2-n)%2+10)]` -/
def P2824046088978871703.Spec : Prop :=
  ∀ n, (P2824046088978871703.a n : ℤ) = A109474 (n + 1)

end A109474

/-! ## A109474.P167087235461814533

`∑[dr(10-(n-2)%2)]`
-/

namespace A109474.P167087235461814533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (10 - Int.tmod ((n : ℤ) - 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P167087235461814533

namespace A109474

/-- `∑[dr(10-(n-2)%2)]` -/
def P167087235461814533.Spec : Prop :=
  ∀ n, (P167087235461814533.a n : ℤ) = A109474 (n + 1)

end A109474

/-! ## A109474.P16662804819478937134

`∑[10-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A109474.P16662804819478937134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P16662804819478937134

namespace A109474

/-- `∑[10-a(n-1)]` -/
def P16662804819478937134.Spec : Prop :=
  ∀ n, P16662804819478937134.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P11052341897566493158

`∑[ogf((1+2x+7x^3)/(1-x^2))]`
-/

namespace A109474.P11052341897566493158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 7] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P11052341897566493158

namespace A109474

/-- `∑[ogf((1+2x+7x^3)/(1-x^2))]` -/
def P11052341897566493158.Spec : Prop :=
  ∀ n, P11052341897566493158.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P2429761946906882621

`10-ceil(-a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A109474.P2429761946906882621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  10 - (-a (n - 2))

end

end A109474.P2429761946906882621

namespace A109474

/-- `10-ceil(-a(n-2))` -/
def P2429761946906882621.Spec : Prop :=
  ∀ n, P2429761946906882621.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P5021288042371192039

`∑[(n+1)²²%xor(3, (n+1)²)]`
-/

namespace A109474.P5021288042371192039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2 % Nat.xor 3 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P5021288042371192039

namespace A109474

/-- `∑[(n+1)²²%xor(3, (n+1)²)]` -/
def P5021288042371192039.Spec : Prop :=
  ∀ n, (P5021288042371192039.a n : ℤ) = A109474 (n + 1)

end A109474

/-! ## A109474.P17525609679856695752

`record[ogf((1+2x-x^2+x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A109474.P17525609679856695752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, 1, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109474.P17525609679856695752

namespace A109474

/-- `record[ogf((1+2x-x^2+x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P17525609679856695752.Spec : Prop :=
  ∀ n, P17525609679856695752.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P10132510162199747690

`∑[A113394(a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A109474.P10132510162199747690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A113394 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P10132510162199747690

namespace A109474

/-- `∑[A113394(a(n-1))]` -/
def P10132510162199747690.Spec : Prop :=
  ∀ n, P10132510162199747690.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P9091933181659658075

`A160912(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A109474.P9091933181659658075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A160912 n - a (n - 1)

end

end A109474.P9091933181659658075

namespace A109474

/-- `A160912(n)-a(n-1)` -/
def P9091933181659658075.Spec : Prop :=
  ∀ n, P9091933181659658075.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P14861470418595546011

`∑[A000032(a(n%2))²]` with `a(0)=1, a(1)=2`
-/

namespace A109474.P14861470418595546011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000032 (f1 (n % 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P14861470418595546011

namespace A109474

/-- `∑[A000032(a(n%2))²]` -/
def P14861470418595546011.Spec : Prop :=
  ∀ n, P14861470418595546011.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P12588433352060837960

`∑[A000032(a(and(1, n)))²]` with `a(0)=1, a(1)=2`
-/

namespace A109474.P12588433352060837960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000032 (f1 (Nat.land 1 n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P12588433352060837960

namespace A109474

/-- `∑[A000032(a(and(1, n)))²]` -/
def P12588433352060837960.Spec : Prop :=
  ∀ n, P12588433352060837960.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P6647818092063120833

`∑[A000203(a(and(1, n)))²]` with `a(0)=1, a(1)=2`
-/

namespace A109474.P6647818092063120833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000203 (f1 (Nat.land 1 n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P6647818092063120833

namespace A109474

/-- `∑[A000203(a(and(1, n)))²]` -/
def P6647818092063120833.Spec : Prop :=
  ∀ n, P6647818092063120833.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P10237735484384508974

`A017353(n-2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A109474.P10237735484384508974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A017353 (n - 2) - a (n - 1)

end

end A109474.P10237735484384508974

namespace A109474

/-- `A017353(n-2)-a(n-1)` -/
def P10237735484384508974.Spec : Prop :=
  ∀ n, P10237735484384508974.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P14522153066502208126

`∑[A068452(a(A000034(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A109474.P14522153066502208126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A068452 (f1 (A000034 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P14522153066502208126

namespace A109474

/-- `∑[A068452(a(A000034(n)))]` -/
def P14522153066502208126.Spec : Prop :=
  ∀ n, P14522153066502208126.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P4425118594697658484

`A298033(n)-A047470(n+1)`
-/

namespace A109474.P4425118594697658484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 n - A047470 (n + 1)

end

end A109474.P4425118594697658484

namespace A109474

/-- `A298033(n)-A047470(n+1)` -/
def P4425118594697658484.Spec : Prop :=
  ∀ n, P4425118594697658484.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P12024411009789083562

`A053438(A053438(n)-A040001(n))+n`
-/

namespace A109474.P12024411009789083562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A053438 n - A040001 n).toNat + (n : ℤ)

end

end A109474.P12024411009789083562

namespace A109474

/-- `A053438(A053438(n)-A040001(n))+n` -/
def P12024411009789083562.Spec : Prop :=
  ∀ n, P12024411009789083562.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P8938459608999858130

`A004277(A004277(n)-A153284(n+1))+n`
-/

namespace A109474.P8938459608999858130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004277 n - A153284 (n + 1)).toNat + (n : ℤ)

end

end A109474.P8938459608999858130

namespace A109474

/-- `A004277(A004277(n)-A153284(n+1))+n` -/
def P8938459608999858130.Spec : Prop :=
  ∀ n, P8938459608999858130.a n = A109474 (n + 1)

end A109474

/-! ## A109474.P9628394667063203728

`∑[9%A266258(3*n+1)]`
-/

namespace A109474.P9628394667063203728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A266258 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109474.P9628394667063203728

namespace A109474

/-- `∑[9%A266258(3*n+1)]` -/
def P9628394667063203728.Spec : Prop :=
  ∀ n, P9628394667063203728.a n = A109474 (n + 1)

end A109474

/-!
# A109476: G.f.: 4th root of weight enumerator of [32,21,6] DEC extended BCH code (cf. A010463).

The programs for A109476, there is no canonical definition to state claims against.
-/

/-! ## A109476.P12584651690514897968

`A010463(n)/A001227(A179421(n))`
-/

namespace A109476.P12584651690514897968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010463 n : ℚ) / (A001227 (A179421 n).toNat : ℚ)

end

end A109476.P12584651690514897968

/-! ## A109476.P5779719297583468020

`A010463(n)/A359512(A001906(n))`
-/

namespace A109476.P5779719297583468020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010463 n : ℚ) / (A359512 (A001906 n).toNat : ℚ)

end

end A109476.P5779719297583468020

/-!
# A109478: G.f.: square root of weight enumerator of [32,11,10] extended BCH code (cf. A109477).

The programs for A109478, there is no canonical definition to state claims against.
-/

/-! ## A109478.P861087604280529922

`A109477(n)/A225538(A119171(n+1))`
-/

namespace A109478.P861087604280529922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109477 n : ℚ) / (A225538 (A119171 (n + 1)).toNat : ℚ)

end

end A109478.P861087604280529922

/-! ## A109478.P6422496303490764843

`A109477(n)/A179931(A179907(n+1))`
-/

namespace A109478.P6422496303490764843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109477 n : ℚ) / (A179931 (A179907 (n + 1)).toNat : ℚ)

end

end A109478.P6422496303490764843

/-!
# A109479: Weight enumerator of [64,51,6] extended BCH code.

The programs for A109479, there is no canonical definition to state claims against.
-/

/-! ## A109479.P3506344569430226201

`A060594(A000400(n))*A109480(n)`
-/

namespace A109479.P3506344569430226201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A000400 n).toNat * A109480 n

end

end A109479.P3506344569430226201

/-!
# A109480: G.f.: 8th root of weight enumerator of [64,51,6] extended BCH code (cf. A109479).

The programs for A109480, there is no canonical definition to state claims against.
-/

/-! ## A109480.P17158147234089454993

`A109479(n)/A000005(A163130(n))`
-/

namespace A109480.P17158147234089454993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109479 n : ℚ) / (A000005 (A163130 n).toNat : ℚ)

end

end A109480.P17158147234089454993

/-!
# A109481: Weight enumerator of [64,45,8] extended BCH code.

The programs for A109481, there is no canonical definition to state claims against.
-/

/-! ## A109481.P16265397357770167923

`A034444(A085362(n))*A109482(n)`
-/

namespace A109481.P16265397357770167923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A085362 n).toNat * A109482 n

end

end A109481.P16265397357770167923

/-! ## A109481.P2107983154092962738

`A034444(A109491(n+1))*A109482(n)`
-/

namespace A109481.P2107983154092962738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A109491 (n + 1)).toNat * A109482 n

end

end A109481.P2107983154092962738

/-! ## A109481.P15717437091315862357

`A000005(A139635(2*n+1))*A109482(n)`
-/

namespace A109481.P15717437091315862357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139635 (2 * n + 1)).toNat * A109482 n

end

end A109481.P15717437091315862357

/-!
# A109482: G.f.: 8th root of weight enumerator of [64,45,8] extended BCH code (cf. A109481).

The programs for A109482, there is no canonical definition to state claims against.
-/

/-! ## A109482.P4654558989911408360

`A109481(n)/A034444(A085362(n))`
-/

namespace A109482.P4654558989911408360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109481 n : ℚ) / (A034444 (A085362 n).toNat : ℚ)

end

end A109482.P4654558989911408360

/-! ## A109482.P47521814330635142

`A109481(n)/A299689(A284041(2*n))`
-/

namespace A109482.P47521814330635142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109481 n : ℚ) / (A299689 (A284041 (2 * n)).toNat : ℚ)

end

end A109482.P47521814330635142

/-!
# A109483: Weight enumerator of [64,39,10] extended BCH code.

The programs for A109483, there is no canonical definition to state claims against.
-/

/-! ## A109483.P6035061295583014760

`A109484(n)*A216857(A339027(n))`
-/

namespace A109483.P6035061295583014760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109484 n * A216857 (A339027 n).toNat

end

end A109483.P6035061295583014760

/-! ## A109483.P17785065536542817537

`A061142(A084218(n+1))*A109484(n)`
-/

namespace A109483.P17785065536542817537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A084218 (n + 1)).toNat * A109484 n

end

end A109483.P17785065536542817537

/-! ## A109483.P13919190735773937577

`A088377(A109490(n+1))*A109484(n)`
-/

namespace A109483.P13919190735773937577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (A109490 (n + 1)).toNat * A109484 n

end

end A109483.P13919190735773937577

/-! ## A109483.P4124732888260730440

`A109484(n)*A320663(A339027(n))*A196222(n)`
-/

namespace A109483.P4124732888260730440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109484 n * A320663 (A339027 n).toNat * A196222 n

end

end A109483.P4124732888260730440

/-!
# A109484: G.f.: 4th root of weight enumerator of [64,39,10] extended BCH code (cf. A109483).

The programs for A109484, there is no canonical definition to state claims against.
-/

/-! ## A109484.P9175782256996993599

`A109483(n)/A320663(A339027(n))`
-/

namespace A109484.P9175782256996993599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109483 n : ℚ) / (A320663 (A339027 n).toNat : ℚ)

end

end A109484.P9175782256996993599

/-! ## A109484.P4384805900217104199

`A109483(n)/A061142(A084218(n+1))`
-/

namespace A109484.P4384805900217104199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109483 n : ℚ) / (A061142 (A084218 (n + 1)).toNat : ℚ)

end

end A109484.P4384805900217104199

/-! ## A109484.P11817327079594291851

`A109483(n)/A088377(A109490(n+1))`
-/

namespace A109484.P11817327079594291851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109483 n : ℚ) / (A088377 (A109490 (n + 1)).toNat : ℚ)

end

end A109484.P11817327079594291851

/-! ## A109484.P15127224926582115042

`A109483(n)/A088377(A109489(n+1))`
-/

namespace A109484.P15127224926582115042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109483 n : ℚ) / (A088377 (A109489 (n + 1)).toNat : ℚ)

end

end A109484.P15127224926582115042

/-!
# A109485: Weight enumerator of [64,36,12] extended BCH code.

The programs for A109485, there is no canonical definition to state claims against.
-/

/-! ## A109485.P8150982864838002075

`A031364(∑[∑[4^n]])`
-/

namespace A109485.P8150982864838002075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109485.P8150982864838002075

/-! ## A109485.P11224133970109939714

`∑{d}[C(A020024(n), n), #]`
-/

namespace A109485.P11224133970109939714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020024 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A109485.P11224133970109939714

/-! ## A109485.P16418376160362724043

`∑{d}[C(A020069(n), n), #]`
-/

namespace A109485.P16418376160362724043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020069 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A109485.P16418376160362724043

/-!
# A109486: Weight enumerator of [64,30,14] extended BCH code.

The programs for A109486, there is no canonical definition to state claims against.
-/

/-! ## A109486.P13774633790547055619

`2^n*A151713(round(2^(n-2)))`
-/

namespace A109486.P13774633790547055619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A151713 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A109486.P13774633790547055619

/-! ## A109486.P5736718059166432663

`A349446(A188129(n))`
-/

namespace A109486.P5736718059166432663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349446 (A188129 n).toNat

end

end A109486.P5736718059166432663

/-! ## A109486.P6939269259510286909

`A143312(A143336(n)²)`
-/

namespace A109486.P6939269259510286909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143312 (A143336 n ^ 2).toNat

end

end A109486.P6939269259510286909

/-! ## A109486.P26541002433643549

`A131099(A275756(n+2))`
-/

namespace A109486.P26541002433643549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131099 (A275756 (n + 2)).toNat

end

end A109486.P26541002433643549

/-!
# A109487: Weight enumerator of [64,24,16] extended BCH code.

The programs for A109487, there is no canonical definition to state claims against.
-/

/-! ## A109487.P2552636274525346003

`A109485(n)%A250120(A109490(n+1))`
-/

namespace A109487.P2552636274525346003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109485 n) (A250120 (A109490 (n + 1)).toNat)

end

end A109487.P2552636274525346003

/-! ## A109487.P12153112661786735686

`A224226(A004006(∑[n]))`
-/

namespace A109487.P12153112661786735686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (A004006 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109487.P12153112661786735686

/-! ## A109487.P10357083022825643688

`A001726(A130363(n)+n)`
-/

namespace A109487.P10357083022825643688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001726 (A130363 n + (n : ℤ)).toNat

end

end A109487.P10357083022825643688

/-! ## A109487.P12604079812853194038

`abs(Δ[A151988(A151771(n))])`
-/

namespace A109487.P12604079812853194038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A151771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A109487.P12604079812853194038

/-! ## A109487.P11388952938144157653

`∑{d}[A276708(A212997(n)), #]`
-/

namespace A109487.P11388952938144157653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276708 (A212997 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A109487.P11388952938144157653

/-!
# A109488: Weight distribution of [64,18,22] extended binary primitive BCH (or XBCH) code.

The programs for A109488, there is no canonical definition to state claims against.
-/

/-! ## A109488.P364280963207221232

`A151722(A004273(n))+A151722(A004277(n))`
-/

namespace A109488.P364280963207221232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 (A004273 n).toNat + A151722 (A004277 n).toNat

end

end A109488.P364280963207221232

/-! ## A109488.P14756748924259151412

`A256754(A028384(n))`
-/

namespace A109488.P14756748924259151412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256754 (A028384 n).toNat

end

end A109488.P14756748924259151412

/-! ## A109488.P3468564336461815880

`A121298(A220461(n+1))`
-/

namespace A109488.P3468564336461815880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121298 (A220461 (n + 1)).toNat

end

end A109488.P3468564336461815880

/-! ## A109488.P15658898272255593978

`A068522(A069816(n)^n)`
-/

namespace A109488.P15658898272255593978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068522 (A069816 n ^ n).toNat

end

end A109488.P15658898272255593978

/-! ## A109488.P15755339737747610920

`A068522(A088116(n)^n)`
-/

namespace A109488.P15755339737747610920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068522 (A088116 n ^ n).toNat

end

end A109488.P15755339737747610920

/-!
# A109489: Value of Product[k/sd(k,2),k=1..n], where sd(k,b) is the sum of the digits of k represented in base b.

The programs for A109489, there is no canonical definition to state claims against.
-/

/-! ## A109489.P17703773159913511872

`∏[(n+1)/∑[1-val(n+1, 2)]]`
-/

namespace A109489.P17703773159913511872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P17703773159913511872

/-! ## A109489.P11113702111308470196

`∏[(n+1)/Δ[A000788(n)]]`
-/

namespace A109489.P11113702111308470196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P11113702111308470196

/-! ## A109489.P5901377668771771200

`∏[(n+1)/A000120(n+1)]`
-/

namespace A109489.P5901377668771771200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P5901377668771771200

/-! ## A109489.P2882114315273274724

`∏[(n+1)/A000005(A048896(n))]`
-/

namespace A109489.P2882114315273274724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (A048896 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P2882114315273274724

/-! ## A109489.P3823125131444526423

`∏[(n+1)/A001222(A071044(n+1))]`
-/

namespace A109489.P3823125131444526423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A071044 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P3823125131444526423

/-! ## A109489.P5624576586638223255

`∏[(n+1)/A001222(Δ[A006046(n+1)])]`
-/

namespace A109489.P5624576586638223255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (f2 (n + 1) - f2 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P5624576586638223255

/-! ## A109489.P4124686403774574611

`∏[(n+1)/A007895(A107227(n+1))]`
-/

namespace A109489.P4124686403774574611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007895 (A107227 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109489.P4124686403774574611

/-!
# A109490: Value of Product[k/sd(k,3),k=1..n], where sd[k,b] is the sum of the digits of k represented in base b.

The programs for A109490, there is no canonical definition to state claims against.
-/

/-! ## A109490.P113686749808398911

`∏[(n+1)/A053735(n+1)]`
-/

namespace A109490.P113686749808398911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053735 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109490.P113686749808398911

/-! ## A109490.P980716883555104877

`∏[(n+1)/(n+1-A344853(n+1))]`
-/

namespace A109490.P980716883555104877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A344853 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109490.P980716883555104877

/-! ## A109490.P17186469695998546276

`A008611(3*n)/A053735(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A109490.P17186469695998546276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A008611 (3 * n) : ℚ) / (A053735 (n + 1) : ℚ) * a (n - 1)

end

end A109490.P17186469695998546276

/-! ## A109490.P3573387494071024227

`(A261675(A002113(n+1))+n)/A053735(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A109490.P3573387494071024227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A261675 (A002113 (n + 1)).toNat + (n : ℤ) : ℚ) / (A053735 (n + 1) : ℚ) * a (n - 1)

end

end A109490.P3573387494071024227

/-! ## A109490.P10699273839742982898

`∏[(n+1)/A007953(A007089(n+1))]`
-/

namespace A109490.P10699273839742982898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007953 (A007089 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109490.P10699273839742982898

/-!
# A109491: Value of Product_{k=1..n} sigma(k)/sd(k,2), where sd(k,b) is the sum of the digits of k represented in base b.

The programs for A109491, there is no canonical definition to state claims against.
-/

/-! ## A109491.P17530895077715896926

`∏[A000203(n+1)/A000120(n+1)]`
-/

namespace A109491.P17530895077715896926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109491.P17530895077715896926

/-! ## A109491.P14572582316281832515

`∏[A097012(n+1)/A000120(n+1)]`
-/

namespace A109491.P14572582316281832515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097012 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109491.P14572582316281832515

/-! ## A109491.P5524518267110855001

`a(n-1)/A000120(n+1)*Δ[A160664(n)]` with `a(0)=1`
-/

namespace A109491.P5524518267110855001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (A000120 (n + 1) : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A109491.P5524518267110855001

/-! ## A109491.P934762649823809126

`∏[A000203(n+1)/A001222(A071044(n+1))]`
-/

namespace A109491.P934762649823809126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A001222 (A071044 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109491.P934762649823809126

/-! ## A109491.P1995805060560592598

`∏[A000203(n+1)/(A000788(n+1)-A000788(n))]`
-/

namespace A109491.P1995805060560592598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000788 (n + 1) - A000788 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109491.P1995805060560592598

/-!
# A109492: Divisors of 111111.

The programs for A109492, there is no canonical definition to state claims against.
-/

/-! ## A109492.P7612432707686084702

`record[∏{p}[A027892(n+1), #]]`
-/

namespace A109492.P7612432707686084702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027892 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109492.P7612432707686084702

/-! ## A109492.P4223882195621166122

`∩[A027892(n+1), A197318(n+1)]`
-/

namespace A109492.P4223882195621166122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109492.P4223882195621166122

/-! ## A109492.P1143681242668841348

`∩[A113522(n+1), A197318(n+1)]`
-/

namespace A109492.P1143681242668841348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109492.P1143681242668841348

/-! ## A109492.P1189252845410609028

`record[gcd(A154549(n+1), A197318(n+1))]`
-/

namespace A109492.P1189252845410609028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154549 (n + 1)) (A197318 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109492.P1189252845410609028

/-! ## A109492.P11769250946458296094

`record[gcd(A027892(n+1), A154549(3*n+4))]`
-/

namespace A109492.P11769250946458296094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027892 (n + 1)) (A154549 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109492.P11769250946458296094

/-!
# A109493: a(n) = 7^((n^2 - n)/2).

The programs for A109493, the canonical program `A109493.P8508393796559323479` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109493 has offset 0).

The definition of A109493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109493.P8508393796559323479

`7^C(n, 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109493

/-- `7^C(n, 2)` -/
def P8508393796559323479.Spec : Prop :=
  ∀ n, (P8508393796559323479.a n : ℤ) = A109493 n

theorem P8508393796559323479.correct : P8508393796559323479.Spec := by
  intro n
  simp only [A109493]

end A109493

/-! ## A109493.P5393450948521938996

`7^((n²-n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109493.P5393450948521938996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A109493.P5393450948521938996

namespace A109493

/-- `7^((n²-n)/2)` -/
def P5393450948521938996.Spec : Prop :=
  ∀ n, P5393450948521938996.a n = (A109493 n : ℝ)

end A109493

/-! ## A109493.P13387528688181077970

`∏[7*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A109493.P13387528688181077970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109493.P13387528688181077970

namespace A109493

/-- `∏[7*a(n-1)]` -/
def P13387528688181077970.Spec : Prop :=
  ∀ n, (P13387528688181077970.a n : ℤ) = A109493 n

end A109493

/-! ## A109493.P7045358117330197061

`∏[ceil(7^((n-1)%18))]`
-/

namespace A109493.P7045358117330197061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 18 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109493.P7045358117330197061

namespace A109493

/-- `∏[ceil(7^((n-1)%18))]` -/
def P7045358117330197061.Spec : Prop :=
  ∀ n, P7045358117330197061.a n = A109493 n

end A109493

/-! ## A109493.P3761628297534919139

`∏[7^((2*n)%(n+1))]`
-/

namespace A109493.P3761628297534919139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109493.P3761628297534919139

namespace A109493

/-- `∏[7^((2*n)%(n+1))]` -/
def P3761628297534919139.Spec : Prop :=
  ∀ n, (P3761628297534919139.a n : ℤ) = A109493 n

end A109493

/-!
# A109494: Entries in 3-dimensional solid related to Prouhet-Tarry problem.

The programs for A109494, there is no canonical definition to state claims against.
-/

/-! ## A109494.P3864450785429402418

`A007814(xor(30, A365063(n+5)))`
-/

namespace A109494.P3864450785429402418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.xor 30 (A365063 (n + 5))).toNat

end

end A109494.P3864450785429402418

/-! ## A109494.P16428332959738692291

`A045778(A051437(n)+A001844(n))`
-/

namespace A109494.P16428332959738692291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A051437 n + A001844 n).toNat

end

end A109494.P16428332959738692291

/-! ## A109494.P1735864787080733874

`A089086(A089061(n+1)-A089053(n))`
-/

namespace A109494.P1735864787080733874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (A089061 (n + 1) - A089053 n).toNat

end

end A109494.P1735864787080733874

/-! ## A109494.P8224657176889980651

`A066389(A059268(n)*A241752(n+1)+1)`
-/

namespace A109494.P8224657176889980651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (A059268 n * A241752 (n + 1) + 1).toNat

end

end A109494.P8224657176889980651

/-! ## A109494.P6067238446292168288

`gcd(A115436(n+1), A183530(A079824(n+1)))`
-/

namespace A109494.P6067238446292168288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115436 (n + 1)) (A183530 (A079824 (n + 1)).toNat)

end

end A109494.P6067238446292168288

/-!
# A109495: Entries in 3-dimensional solid related to Prouhet-Tarry problem.

The programs for A109495, there is no canonical definition to state claims against.
-/

/-! ## A109495.P18174946269598416156

`gcd(A135257(A240735(n)), A186888(n+1))`
-/

namespace A109495.P18174946269598416156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135257 (A240735 n).toNat) (A186888 (n + 1))

end

end A109495.P18174946269598416156

/-! ## A109495.P7883608256501732583

`gcd(10, A060502(A151754(n+1)))`
-/

namespace A109495.P7883608256501732583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A060502 (A151754 (n + 1)).toNat)

end

end A109495.P7883608256501732583

/-! ## A109495.P13571100804170983080

`gcd(200, A354142(A008277(3*n+5)))`
-/

namespace A109495.P13571100804170983080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 200 (A354142 (A008277 (3 * n + 5)).toNat)

end

end A109495.P13571100804170983080

/-! ## A109495.P11614635605944730285

`gcd(A023634(A049950(n+1)), A114577(n+1))`
-/

namespace A109495.P11614635605944730285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023634 (A049950 (n + 1)).toNat) (A114577 (n + 1))

end

end A109495.P11614635605944730285

/-! ## A109495.P13432178177249674740

`A165011(A298630(n+1)%(A056115(n)+11))`
-/

namespace A109495.P13432178177249674740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165011 (Int.tmod (A298630 (n + 1)) (A056115 n + 11)).toNat

end

end A109495.P13432178177249674740

/-!
# A109496: a(n) is the first integer k for which b(b(...b(n)...))=5, where the transformation b(m), the m-th term of A008474, is taken k-1 times.

The programs for A109496, there is no canonical definition to state claims against.
-/

/-! ## A109496.P18379908675368877745

`A250030(n+5)+1`
-/

namespace A109496.P18379908675368877745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250030 (n + 5) + 1

end

end A109496.P18379908675368877745

/-! ## A109496.P856085720642632395

`A005496(A250030(n+5))`
-/

namespace A109496.P856085720642632395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A250030 (n + 5)).toNat

end

end A109496.P856085720642632395

/-!
# A109497: Number of lucky numbers <= n.

The programs for A109497, there is no canonical definition to state claims against.
-/

/-! ## A109497.P2609077454226801849

`∑[A145649(n+1)]`
-/

namespace A109497.P2609077454226801849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P2609077454226801849

/-! ## A109497.P5854649047556833864

`∑[A257690(n+1)%2]`
-/

namespace A109497.P5854649047556833864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257690 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P5854649047556833864

/-! ## A109497.P4498674229549272516

`∑[A257725(n+1)%2]`
-/

namespace A109497.P4498674229549272516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257725 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P4498674229549272516

/-! ## A109497.P9094724909749112610

`∑[floor(acot(A260437(n+1)))]`
-/

namespace A109497.P9094724909749112610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A260437 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P9094724909749112610

/-! ## A109497.P1266736285970924124

`∑[floor(acot(A264940(n+1)))]`
-/

namespace A109497.P1266736285970924124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A264940 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P1266736285970924124

/-! ## A109497.P10317282616697951502

`∑[round(acot(A260429(n+1)))]`
-/

namespace A109497.P10317282616697951502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A260429 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P10317282616697951502

/-! ## A109497.P15766574466801861901

`∑[char[A000959(n+1)-1]]`
-/

namespace A109497.P15766574466801861901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P15766574466801861901

/-! ## A109497.P16736203866870529018

`∑[C(2, A265859(n+1)+2)]`
-/

namespace A109497.P16736203866870529018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A265859 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P16736203866870529018

/-! ## A109497.P8892562344728241562

`∑[C(A260438(n+1), A264940(n+1))]`
-/

namespace A109497.P8892562344728241562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260438 (n + 1)).toNat (A264940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109497.P8892562344728241562

/-!
# A109498: Number of closed walks of length 2n on the Heawood graph from a given node.

The programs for A109498, the canonical program `A109498.P863351859261548879` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109498 has offset 0).

The definition of A109498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109498.P863351859261548879

`11*a(n-1)-18*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109498

/-- `11*a(n-1)-18*a(n-2)` -/
def P863351859261548879.Spec : Prop :=
  ∀ n, P863351859261548879.a n = A109498 n

theorem P863351859261548879.correct : P863351859261548879.Spec := by
  intro n
  simp only [A109498]

end A109498

/-! ## A109498.P2733790840044730560

`(9^n+6*2^n)/7`
-/

namespace A109498.P2733790840044730560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n + 6 * 2 ^ n : ℚ) / 7

end

end A109498.P2733790840044730560

namespace A109498

/-- `(9^n+6*2^n)/7` -/
def P2733790840044730560.Spec : Prop :=
  ∀ n, P2733790840044730560.a n = (A109498 n : ℚ)

theorem P2733790840044730560.correct : P2733790840044730560.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A109498, Nat.add_sub_cancel, A109498.P2733790840044730560.a, A109498.P863351859261548879.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A109498, Nat.add_sub_cancel, A109498.P2733790840044730560.a, A109498.P863351859261548879.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A109498

/-! ## A109498.P12421074290089665066

`ogf((1-8x)/(1-11x+18x^2))`
-/

namespace A109498.P12421074290089665066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -11, 18] n

end

end A109498.P12421074290089665066

namespace A109498

/-- `ogf((1-8x)/(1-11x+18x^2))` -/
def P12421074290089665066.Spec : Prop :=
  ∀ n, P12421074290089665066.a n = A109498 n

end A109498

/-! ## A109498.P1040286330833634262

`3*(3*a(n-1)-2^n)` with `a(0)=1`
-/

namespace A109498.P1040286330833634262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (3 * a (n - 1) - (2 ^ n : ℤ))

end

end A109498.P1040286330833634262

namespace A109498

/-- `3*(3*a(n-1)-2^n)` -/
def P1040286330833634262.Spec : Prop :=
  ∀ n, P1040286330833634262.a n = A109498 n

end A109498

/-! ## A109498.P9884718567853888732

`9*a(n-1)-A007283(n)` with `a(0)=1`
-/

namespace A109498.P9884718567853888732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A007283 n

end

end A109498.P9884718567853888732

namespace A109498

/-- `9*a(n-1)-A007283(n)` -/
def P9884718567853888732.Spec : Prop :=
  ∀ n, P9884718567853888732.a n = A109498 n

end A109498

/-! ## A109498.P13906217151286404429

`A138017(A004277(n))`
-/

namespace A109498.P13906217151286404429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138017 (A004277 n).toNat

end

end A109498.P13906217151286404429

namespace A109498

/-- `A138017(A004277(n))` -/
def P13906217151286404429.Spec : Prop :=
  ∀ n, P13906217151286404429.a n = A109498 n

end A109498

/-! ## A109498.P4244970581047997076

`A138017(A004275(n+1))`
-/

namespace A109498.P4244970581047997076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138017 (A004275 (n + 1)).toNat

end

end A109498.P4244970581047997076

namespace A109498

/-- `A138017(A004275(n+1))` -/
def P4244970581047997076.Spec : Prop :=
  ∀ n, P4244970581047997076.a n = A109498 n

end A109498

/-! ## A109498.P16433004888696595239

`A038754(2*n+1)²-A135247(2*n+1)`
-/

namespace A109498.P16433004888696595239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n + 1) ^ 2 - A135247 (2 * n + 1)

end

end A109498.P16433004888696595239

namespace A109498

/-- `A038754(2*n+1)²-A135247(2*n+1)` -/
def P16433004888696595239.Spec : Prop :=
  ∀ n, P16433004888696595239.a n = A109498 n

end A109498

/-!
# A109499: Number of closed walks of length n on the complete graph on 5 nodes from a given node.

The programs for A109499, the canonical program `A109499.P18045234166101199822` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109499 has offset 0).

The definition of A109499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109499.P18045234166101199822

`3*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109499

/-- `3*a(n-1)+4*a(n-2)` -/
def P18045234166101199822.Spec : Prop :=
  ∀ n, (P18045234166101199822.a n : ℤ) = A109499 n

theorem P18045234166101199822.correct : P18045234166101199822.Spec := by
  intro n
  simp only [A109499]

end A109499

/-! ## A109499.P7438421170743379351

`(4^n+4*(-1)^n)/5`
-/

namespace A109499.P7438421170743379351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) + 4 * (-1) ^ n : ℚ) / 5

end

end A109499.P7438421170743379351

namespace A109499

/-- `(4^n+4*(-1)^n)/5` -/
def P7438421170743379351.Spec : Prop :=
  ∀ n, P7438421170743379351.a n = (A109499 n : ℚ)

theorem P7438421170743379351.correct : P7438421170743379351.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A109499, Nat.add_sub_cancel, A109499.P7438421170743379351.a, A109499.P18045234166101199822.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A109499, Nat.add_sub_cancel, A109499.P7438421170743379351.a, A109499.P18045234166101199822.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A109499

/-! ## A109499.P8674445800084875783

`ogf((-1+3x)/(-1+3x+4x^2))`
-/

namespace A109499.P8674445800084875783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -3, -4] n

end

end A109499.P8674445800084875783

namespace A109499

/-- `ogf((-1+3x)/(-1+3x+4x^2))` -/
def P8674445800084875783.Spec : Prop :=
  ∀ n, P8674445800084875783.a n = A109499 n

end A109499

/-! ## A109499.P9527337759437291511

`4^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A109499.P9527337759437291511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A109499.P9527337759437291511

namespace A109499

/-- `4^(n-1)-a(n-1)` -/
def P9527337759437291511.Spec : Prop :=
  ∀ n, P9527337759437291511.a n = (A109499 n : ℚ)

end A109499

/-! ## A109499.P14413140646997000778

`4*(a(n-1)+xor(1, n)-n)` with `a(0)=1`
-/

namespace A109499.P14413140646997000778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + ((Nat.xor 1 n : ℤ) - (n : ℤ)))

end

end A109499.P14413140646997000778

namespace A109499

/-- `4*(a(n-1)+xor(1, n)-n)` -/
def P14413140646997000778.Spec : Prop :=
  ∀ n, P14413140646997000778.a n = A109499 n

end A109499

/-! ## A109499.P13510352759423693539

`4*(gcd(3, a(n-1))-(2-a(n-1)))` with `a(0)=1`
-/

namespace A109499.P13510352759423693539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((Int.gcd 3 (a (n - 1)) : ℤ) - (2 - a (n - 1)))

end

end A109499.P13510352759423693539

namespace A109499

/-- `4*(gcd(3, a(n-1))-(2-a(n-1)))` -/
def P13510352759423693539.Spec : Prop :=
  ∀ n, P13510352759423693539.a n = A109499 n

end A109499

/-! ## A109499.P14864412595866137013

`a(n-2)-4*(a(n-3)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A109499.P14864412595866137013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 2) - 4 * (a (n - 3) - a (n - 1))

end

end A109499.P14864412595866137013

namespace A109499

/-- `a(n-2)-4*(a(n-3)-a(n-1))` -/
def P14864412595866137013.Spec : Prop :=
  ∀ n, P14864412595866137013.a n = A109499 n

end A109499

/-! ## A109499.P12344663552529960967

`Δ[A365103(n)]`
-/

namespace A109499.P12344663552529960967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109499.P12344663552529960967

namespace A109499

/-- `Δ[A365103(n)]` -/
def P12344663552529960967.Spec : Prop :=
  ∀ n, P12344663552529960967.a n = A109499 n

end A109499

/-! ## A109499.P8052335668823145423

`abs(2-A166114(n))`
-/

namespace A109499.P8052335668823145423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A166114 n|

end

end A109499.P8052335668823145423

namespace A109499

/-- `abs(2-A166114(n))` -/
def P8052335668823145423.Spec : Prop :=
  ∀ n, P8052335668823145423.a n = A109499 n

end A109499

/-! ## A109499.P9411900916634089903

`Δ[A115851(2*n)]`
-/

namespace A109499.P9411900916634089903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109499.P9411900916634089903

namespace A109499

/-- `Δ[A115851(2*n)]` -/
def P9411900916634089903.Spec : Prop :=
  ∀ n, P9411900916634089903.a n = A109499 n

end A109499

/-! ## A109499.P12326948058013537327

`Δ[A180343(2*n)]`
-/

namespace A109499.P12326948058013537327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180343 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109499.P12326948058013537327

namespace A109499

/-- `Δ[A180343(2*n)]` -/
def P12326948058013537327.Spec : Prop :=
  ∀ n, P12326948058013537327.a n = A109499 n

end A109499

/-! ## A109499.P14504002858973675872

`Δ[A181586(2*n)]`
-/

namespace A109499.P14504002858973675872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109499.P14504002858973675872

namespace A109499

/-- `Δ[A181586(2*n)]` -/
def P14504002858973675872.Spec : Prop :=
  ∀ n, P14504002858973675872.a n = A109499 n

end A109499

/-! ## A109499.P13087389615999297

`floor(A117575(2*n)²-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A109499.P13087389615999297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117575 (2 * n) ^ 2 - a (n - 1)

end

end A109499.P13087389615999297

namespace A109499

/-- `floor(A117575(2*n)²-a(n-1))` -/
def P13087389615999297.Spec : Prop :=
  ∀ n, P13087389615999297.a n = A109499 n

end A109499

/-! ## A109499.P2522634323519297907

`A033999(n)+A015521(n)`
-/

namespace A109499.P2522634323519297907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A015521 n

end

end A109499.P2522634323519297907

namespace A109499

/-- `A033999(n)+A015521(n)` -/
def P2522634323519297907.Spec : Prop :=
  ∀ n, P2522634323519297907.a n = A109499 n

end A109499

/-! ## A109499.P7979472482169233161

`A095929(n)-A175395(n)`
-/

namespace A109499.P7979472482169233161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095929 n - A175395 n

end

end A109499.P7979472482169233161

namespace A109499

/-- `A095929(n)-A175395(n)` -/
def P7979472482169233161.Spec : Prop :=
  ∀ n, P7979472482169233161.a n = A109499 n

end A109499

/-! ## A109499.P13165410672062402495

`A365103(n+1)-A365103(n)`
-/

namespace A109499.P13165410672062402495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365103 (n + 1) - A365103 n

end

end A109499.P13165410672062402495

namespace A109499

/-- `A365103(n+1)-A365103(n)` -/
def P13165410672062402495.Spec : Prop :=
  ∀ n, P13165410672062402495.a n = A109499 n

end A109499

/-! ## A109499.P11288395062830214712

`A056594(2*n)+A015521(n)`
-/

namespace A109499.P11288395062830214712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A015521 n

end

end A109499.P11288395062830214712

namespace A109499

/-- `A056594(2*n)+A015521(n)` -/
def P11288395062830214712.Spec : Prop :=
  ∀ n, P11288395062830214712.a n = A109499 n

end A109499

/-! ## A109499.P2249484059926642779

`A101455(2*n+1)+A015521(n)`
-/

namespace A109499.P2249484059926642779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (2 * n + 1) + A015521 n

end

end A109499.P2249484059926642779

namespace A109499

/-- `A101455(2*n+1)+A015521(n)` -/
def P2249484059926642779.Spec : Prop :=
  ∀ n, P2249484059926642779.a n = A109499 n

end A109499

/-! ## A109499.P3095598366259263456

`Δ[A161204(2*n)+A131800(2*n)]`
-/

namespace A109499.P3095598366259263456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 (2 * n) + A131800 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109499.P3095598366259263456

namespace A109499

/-- `Δ[A161204(2*n)+A131800(2*n)]` -/
def P3095598366259263456.Spec : Prop :=
  ∀ n, P3095598366259263456.a n = A109499 n

end A109499

/-! ## A109499.P13918276288747229318

`Δ[A139800(2*n)-A087960(2*n)]`
-/

namespace A109499.P13918276288747229318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (2 * n) - A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109499.P13918276288747229318

namespace A109499

/-- `Δ[A139800(2*n)-A087960(2*n)]` -/
def P13918276288747229318.Spec : Prop :=
  ∀ n, P13918276288747229318.a n = A109499 n

end A109499

