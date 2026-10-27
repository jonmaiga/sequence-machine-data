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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A143100: A007318 * A143098.

The programs for A143100, the canonical program `A143100.P3380338415464019530` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143100 has offset 1).

The definition of A143100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143100.P3380338415464019530

`2*a(n-1)-(a(n-3)-2*a(n-4))+2` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143100

/-- `2*a(n-1)-(a(n-3)-2*a(n-4))+2` -/
def P3380338415464019530.Spec : Prop :=
  ∀ n, P3380338415464019530.a n = A143100 (n + 1)

theorem P3380338415464019530.correct : P3380338415464019530.Spec := by
  intro n
  simp only [A143100, Nat.add_sub_cancel]

end A143100

/-! ## A143100.P10556084971230285063

`2^n-A131290(n+3)`
-/

namespace A143100.P10556084971230285063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A131290 (n + 3)

end

end A143100.P10556084971230285063

namespace A143100

/-- `2^n-A131290(n+3)` -/
def P10556084971230285063.Spec : Prop :=
  ∀ n, P10556084971230285063.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P8720927139907000375

`A057079(n)+A000225(n)`
-/

namespace A143100.P8720927139907000375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n + A000225 n

end

end A143100.P8720927139907000375

namespace A143100

/-- `A057079(n)+A000225(n)` -/
def P8720927139907000375.Spec : Prop :=
  ∀ n, P8720927139907000375.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P16444518698036303711

`A282153(n)+A164965(n)`
-/

namespace A143100.P16444518698036303711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282153 n + A164965 n

end

end A143100.P16444518698036303711

namespace A143100

/-- `A282153(n)+A164965(n)` -/
def P16444518698036303711.Spec : Prop :=
  ∀ n, P16444518698036303711.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P10919648795072482206

`A132736(n)-A396772(n)`
-/

namespace A143100.P10919648795072482206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n - A396772 n

end

end A143100.P10919648795072482206

namespace A143100

/-- `A132736(n)-A396772(n)` -/
def P10919648795072482206.Spec : Prop :=
  ∀ n, P10919648795072482206.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P15866987364026048392

`A166022(n+1)+A166022(n)`
-/

namespace A143100.P15866987364026048392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166022 (n + 1) + A166022 n

end

end A143100.P15866987364026048392

namespace A143100

/-- `A166022(n+1)+A166022(n)` -/
def P15866987364026048392.Spec : Prop :=
  ∀ n, P15866987364026048392.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P12156070283604227119

`A000079(n)+A057079(n)-1`
-/

namespace A143100.P12156070283604227119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A057079 n - 1)

end

end A143100.P12156070283604227119

namespace A143100

/-- `A000079(n)+A057079(n)-1` -/
def P12156070283604227119.Spec : Prop :=
  ∀ n, P12156070283604227119.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P12270640729112023550

`A010892(n)+A141775(n)-1`
-/

namespace A143100.P12270640729112023550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A141775 n - 1)

end

end A143100.P12270640729112023550

namespace A143100

/-- `A010892(n)+A141775(n)-1` -/
def P12270640729112023550.Spec : Prop :=
  ∀ n, P12270640729112023550.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P11919987405650635840

`A000051(n)+A057079(n)-2`
-/

namespace A143100.P11919987405650635840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A057079 n - 2)

end

end A143100.P11919987405650635840

namespace A143100

/-- `A000051(n)+A057079(n)-2` -/
def P11919987405650635840.Spec : Prop :=
  ∀ n, P11919987405650635840.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P2398737189497997153

`A000225(n)-A087204(n+2)`
-/

namespace A143100.P2398737189497997153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A087204 (n + 2)

end

end A143100.P2398737189497997153

namespace A143100

/-- `A000225(n)-A087204(n+2)` -/
def P2398737189497997153.Spec : Prop :=
  ∀ n, P2398737189497997153.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P1865519519139466496

`A000225(n)-A100051(n+2)`
-/

namespace A143100.P1865519519139466496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A100051 (n + 2)

end

end A143100.P1865519519139466496

namespace A143100

/-- `A000225(n)-A100051(n+2)` -/
def P1865519519139466496.Spec : Prop :=
  ∀ n, P1865519519139466496.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P12851379508676530287

`A000225(n)-(A117373(n+1)+A010892(n))`
-/

namespace A143100.P12851379508676530287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A117373 (n + 1) + A010892 n)

end

end A143100.P12851379508676530287

namespace A143100

/-- `A000225(n)-(A117373(n+1)+A010892(n))` -/
def P12851379508676530287.Spec : Prop :=
  ∀ n, P12851379508676530287.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P9155068443549127573

`∑[2*A166249(n)]-A166249(n)`
-/

namespace A143100.P9155068443549127573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A166249 n

end

end A143100.P9155068443549127573

namespace A143100

/-- `∑[2*A166249(n)]-A166249(n)` -/
def P9155068443549127573.Spec : Prop :=
  ∀ n, P9155068443549127573.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P738598250847886738

`Δ[A143099(n+1)]-A143099(n+1)`
-/

namespace A143100.P738598250847886738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A143099 (n + 1)

end

end A143100.P738598250847886738

namespace A143100

/-- `Δ[A143099(n+1)]-A143099(n+1)` -/
def P738598250847886738.Spec : Prop :=
  ∀ n, P738598250847886738.a n = A143100 (n + 1)

end A143100

/-! ## A143100.P7000901358827441681

`A143099(n+2)-2*A143099(n+1)`
-/

namespace A143100.P7000901358827441681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143099 (n + 2) - 2 * A143099 (n + 1)

end

end A143100.P7000901358827441681

namespace A143100

/-- `A143099(n+2)-2*A143099(n+1)` -/
def P7000901358827441681.Spec : Prop :=
  ∀ n, P7000901358827441681.a n = A143100 (n + 1)

end A143100

/-!
# A143101: Partial sums of A143097.

The programs for A143101, the canonical program `A143101.P7657192953490634974` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143101 has offset 1).

The definition of A143101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143101.P7657192953490634974

`A000217(n+1)+A079978(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A143101

/-- `A000217(n+1)+A079978(n+1)` -/
def P7657192953490634974.Spec : Prop :=
  ∀ n, P7657192953490634974.a n = A143101 (n + 1)

theorem P7657192953490634974.correct : P7657192953490634974.Spec := by
  intro n
  simp only [A143101, Nat.add_sub_cancel]

end A143101

/-! ## A143101.P16109357256643431058

`∑[n%3+n]+1`
-/

namespace A143101.P16109357256643431058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143101.P16109357256643431058

namespace A143101

/-- `∑[n%3+n]+1` -/
def P16109357256643431058.Spec : Prop :=
  ∀ n, (P16109357256643431058.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P14063866634953405081

`Δ[floor(n/3)]+∑[n+1]`
-/

namespace A143101.P14063866634953405081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A143101.P14063866634953405081

namespace A143101

/-- `Δ[floor(n/3)]+∑[n+1]` -/
def P14063866634953405081.Spec : Prop :=
  ∀ n, P14063866634953405081.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P7311352705789438426

`∑[a(n-3)+3]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A143101.P7311352705789438426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143101.P7311352705789438426

namespace A143101

/-- `∑[a(n-3)+3]` -/
def P7311352705789438426.Spec : Prop :=
  ∀ n, (P7311352705789438426.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P6465416428854227881

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A143101.P6465416428854227881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143101.P6465416428854227881

namespace A143101

/-- `∑[∑[floor(a(n-3))]]` -/
def P6465416428854227881.Spec : Prop :=
  ∀ n, P6465416428854227881.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P9096263119828978491

`∑[A143097(n+1)]`
-/

namespace A143101.P9096263119828978491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143101.P9096263119828978491

namespace A143101

/-- `∑[A143097(n+1)]` -/
def P9096263119828978491.Spec : Prop :=
  ∀ n, P9096263119828978491.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P3186700044170069331

`∑[A028310(n)%3+n]`
-/

namespace A143101.P3186700044170069331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143101.P3186700044170069331

namespace A143101

/-- `∑[A028310(n)%3+n]` -/
def P3186700044170069331.Spec : Prop :=
  ∀ n, P3186700044170069331.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P12069646003435773161

`Δ[A002264(n)+A000292(n)]`
-/

namespace A143101.P12069646003435773161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143101.P12069646003435773161

namespace A143101

/-- `Δ[A002264(n)+A000292(n)]` -/
def P12069646003435773161.Spec : Prop :=
  ∀ n, P12069646003435773161.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P1947612249070842075

`A134519(A047242(n+2))`
-/

namespace A143101.P1947612249070842075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (A047242 (n + 2)).toNat

end

end A143101.P1947612249070842075

namespace A143101

/-- `A134519(A047242(n+2))` -/
def P1947612249070842075.Spec : Prop :=
  ∀ n, P1947612249070842075.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P265992566556207333

`A114220(A047254(n+2))`
-/

namespace A143101.P265992566556207333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 (A047254 (n + 2)).toNat

end

end A143101.P265992566556207333

namespace A143101

/-- `A114220(A047254(n+2))` -/
def P265992566556207333.Spec : Prop :=
  ∀ n, P265992566556207333.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P12780218024041138093

`∑[A187181(3*n+2)]`
-/

namespace A143101.P12780218024041138093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143101.P12780218024041138093

namespace A143101

/-- `∑[A187181(3*n+2)]` -/
def P12780218024041138093.Spec : Prop :=
  ∀ n, P12780218024041138093.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P451606781394769683

`A000027(∑[3*(n+1)-(A047245(n+1)+2)]+1)`
-/

namespace A143101.P451606781394769683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (A047245 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A143101.P451606781394769683

namespace A143101

/-- `A000027(∑[3*(n+1)-(A047245(n+1)+2)]+1)` -/
def P451606781394769683.Spec : Prop :=
  ∀ n, P451606781394769683.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P9815130521720997797

`eq[0, A131255(n)]`
-/

namespace A143101.P9815130521720997797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143101.P9815130521720997797

namespace A143101

/-- `eq[0, A131255(n)]` -/
def P9815130521720997797.Spec : Prop :=
  ∀ n, (P9815130521720997797.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P486423415270993050

`eq[0, A246180(n)]`
-/

namespace A143101.P486423415270993050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143101.P486423415270993050

namespace A143101

/-- `eq[0, A246180(n)]` -/
def P486423415270993050.Spec : Prop :=
  ∀ n, (P486423415270993050.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P2874922259924413124

`eq[A102587(n), A137388(n)]`
-/

namespace A143101.P2874922259924413124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143101.P2874922259924413124

namespace A143101

/-- `eq[A102587(n), A137388(n)]` -/
def P2874922259924413124.Spec : Prop :=
  ∀ n, (P2874922259924413124.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P775292676260907200

`A117571(A117571(∑[n])+n)`
-/

namespace A143101.P775292676260907200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A117571 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A143101.P775292676260907200

namespace A143101

/-- `A117571(A117571(∑[n])+n)` -/
def P775292676260907200.Spec : Prop :=
  ∀ n, P775292676260907200.a n = A143101 (n + 1)

end A143101

/-! ## A143101.P5705735234453911275

`lt[A002262(n), A025581(n)%3]`
-/

namespace A143101.P5705735234453911275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143101.P5705735234453911275

namespace A143101

/-- `lt[A002262(n), A025581(n)%3]` -/
def P5705735234453911275.Spec : Prop :=
  ∀ n, (P5705735234453911275.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P6581217089722586285

`eq[A204263(n+1)!, A002260(n+1)]`
-/

namespace A143101.P6581217089722586285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A204263 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143101.P6581217089722586285

namespace A143101

/-- `eq[A204263(n+1)!, A002260(n+1)]` -/
def P6581217089722586285.Spec : Prop :=
  ∀ n, (P6581217089722586285.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P1070935151115101804

`eq[dr(A003057(n+2)%3)!, A002260(n+1)]`
-/

namespace A143101.P1070935151115101804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (Int.tmod (A003057 (n + 2)) 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143101.P1070935151115101804

namespace A143101

/-- `eq[dr(A003057(n+2)%3)!, A002260(n+1)]` -/
def P1070935151115101804.Spec : Prop :=
  ∀ n, (P1070935151115101804.a n : ℤ) = A143101 (n + 1)

end A143101

/-! ## A143101.P860893295108894121

`eq[((A004736(n+1)+A002260(n+1))%3)!, A002260(n+1)]`
-/

namespace A143101.P860893295108894121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A004736 (n + 1) + A002260 (n + 1)) 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143101.P860893295108894121

namespace A143101

/-- `eq[((A004736(n+1)+A002260(n+1))%3)!, A002260(n+1)]` -/
def P860893295108894121.Spec : Prop :=
  ∀ n, (P860893295108894121.a n : ℤ) = A143101 (n + 1)

end A143101

/-!
# A143103: Row sums of triangle A143102.

The programs for A143103, the canonical program `A143103.P15536164371514896267` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143103 has offset 1).

The definition of A143103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143103.P15536164371514896267

`∑[(n+1)*(n%3+n)]+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143103

/-- `∑[(n+1)*(n%3+n)]+1` -/
def P15536164371514896267.Spec : Prop :=
  ∀ n, (P15536164371514896267.a n : ℤ) = A143103 (n + 1)

theorem P15536164371514896267.correct : P15536164371514896267.Spec := by
  intro n
  simp only [A143103, Nat.add_sub_cancel]

end A143103

/-! ## A143103.P15903626658806932435

`∑[(n+1)*A143097(n+1)]`
-/

namespace A143103.P15903626658806932435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143103.P15903626658806932435

namespace A143103

/-- `∑[(n+1)*A143097(n+1)]` -/
def P15903626658806932435.Spec : Prop :=
  ∀ n, P15903626658806932435.a n = A143103 (n + 1)

end A143103

/-! ## A143103.P10351294525069046693

`∑[(n+1)*A236348(n+1)]+1`
-/

namespace A143103.P10351294525069046693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A236348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143103.P10351294525069046693

namespace A143103

/-- `∑[(n+1)*A236348(n+1)]+1` -/
def P10351294525069046693.Spec : Prop :=
  ∀ n, P10351294525069046693.a n = A143103 (n + 1)

end A143103

/-! ## A143103.P2008915301642274488

`∑[A076921(n%3+2*n+1)]`
-/

namespace A143103.P2008915301642274488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n % 3 + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143103.P2008915301642274488

namespace A143103

/-- `∑[A076921(n%3+2*n+1)]` -/
def P2008915301642274488.Spec : Prop :=
  ∀ n, P2008915301642274488.a n = A143103 (n + 1)

end A143103

/-! ## A143103.P10785440985400274822

`∑[(n+1)*A187181(3*n+2)]`
-/

namespace A143103.P10785440985400274822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187181 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143103.P10785440985400274822

namespace A143103

/-- `∑[(n+1)*A187181(3*n+2)]` -/
def P10785440985400274822.Spec : Prop :=
  ∀ n, P10785440985400274822.a n = A143103 (n + 1)

end A143103

/-!
# A143104: Infinite Redheffer matrix read by upwards antidiagonals.

The programs for A143104, the canonical program `A143104.P8981237344369215233` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143104 has offset 1).

The definition of A143104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143104.P8981237344369215233

`A077051(A132119(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143104

/-- `A077051(A132119(n+1))` -/
def P8981237344369215233.Spec : Prop :=
  ∀ n, P8981237344369215233.a n = A143104 (n + 1)

theorem P8981237344369215233.correct : P8981237344369215233.Spec := by
  intro n
  simp only [A143104, Nat.add_sub_cancel]

end A143104

/-! ## A143104.P15539339374746542493

`A077051(n+1)+A073424(n)`
-/

namespace A143104.P15539339374746542493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (n + 1) + A073424 n

end

end A143104.P15539339374746542493

namespace A143104

/-- `A077051(n+1)+A073424(n)` -/
def P15539339374746542493.Spec : Prop :=
  ∀ n, P15539339374746542493.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P16796830895414042541

`A023531(n-A191907(n+1))`
-/

namespace A143104.P16796830895414042541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((n : ℤ) - A191907 (n + 1)).toNat

end

end A143104.P16796830895414042541

namespace A143104

/-- `A023531(n-A191907(n+1))` -/
def P16796830895414042541.Spec : Prop :=
  ∀ n, P16796830895414042541.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P3651943649266515134

`A097806(n-A191907(n+1))`
-/

namespace A143104.P3651943649266515134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 ((n : ℤ) - A191907 (n + 1)).toNat

end

end A143104.P3651943649266515134

namespace A143104

/-- `A097806(n-A191907(n+1))` -/
def P3651943649266515134.Spec : Prop :=
  ∀ n, P3651943649266515134.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P14656234852543508168

`char[eq[A003989(n+1), A193592(n)]]`
-/

namespace A143104.P14656234852543508168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A143104.P14656234852543508168

namespace A143104

/-- `char[eq[A003989(n+1), A193592(n)]]` -/
def P14656234852543508168.Spec : Prop :=
  ∀ n, (P14656234852543508168.a n : ℤ) = A143104 (n + 1)

end A143104

/-! ## A143104.P6159524464621658121

`A010054(n+1-A074712(n+1))`
-/

namespace A143104.P6159524464621658121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n + 1 : ℤ) - A074712 (n + 1)).toNat

end

end A143104.P6159524464621658121

namespace A143104

/-- `A010054(n+1-A074712(n+1))` -/
def P6159524464621658121.Spec : Prop :=
  ∀ n, P6159524464621658121.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P11132399975073185555

`round(1/A002260(A003989(n+1)+n+1))`
-/

namespace A143104.P11132399975073185555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A002260 (A003989 (n + 1) + (n : ℤ) + 1).toNat : ℚ))

end

end A143104.P11132399975073185555

namespace A143104

/-- `round(1/A002260(A003989(n+1)+n+1))` -/
def P11132399975073185555.Spec : Prop :=
  ∀ n, P11132399975073185555.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P2606988889671150810

`A051731(A140978(n+1)-A080036(n))`
-/

namespace A143104.P2606988889671150810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A140978 (n + 1) - A080036 n).toNat

end

end A143104.P2606988889671150810

namespace A143104

/-- `A051731(A140978(n+1)-A080036(n))` -/
def P2606988889671150810.Spec : Prop :=
  ∀ n, P2606988889671150810.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P620927892290338934

`A010054(A286156(n+1)-A010054(n))`
-/

namespace A143104.P620927892290338934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A286156 (n + 1) - A010054 n).toNat

end

end A143104.P620927892290338934

namespace A143104

/-- `A010054(A286156(n+1)-A010054(n))` -/
def P620927892290338934.Spec : Prop :=
  ∀ n, P620927892290338934.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P4942900898599290397

`A000007(A002260(n+1)%A089688(n))`
-/

namespace A143104.P4942900898599290397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A002260 (n + 1)) (A089688 n)).toNat

end

end A143104.P4942900898599290397

namespace A143104

/-- `A000007(A002260(n+1)%A089688(n))` -/
def P4942900898599290397.Spec : Prop :=
  ∀ n, P4942900898599290397.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P8658945286057384410

`A112295(n-A191907(n+1))`
-/

namespace A143104.P8658945286057384410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112295 ((n : ℤ) - A191907 (n + 1)).toNat

end

end A143104.P8658945286057384410

namespace A143104

/-- `A112295(n-A191907(n+1))` -/
def P8658945286057384410.Spec : Prop :=
  ∀ n, P8658945286057384410.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P8770220688083415363

`A059841(A209492(n)%A130330(n))`
-/

namespace A143104.P8770220688083415363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.tmod (A209492 n) (A130330 n)).toNat

end

end A143104.P8770220688083415363

namespace A143104

/-- `A059841(A209492(n)%A130330(n))` -/
def P8770220688083415363.Spec : Prop :=
  ∀ n, P8770220688083415363.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P17447026547524670723

`A204163(A106255(A003989(n+1)+n))`
-/

namespace A143104.P17447026547524670723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204163 (A106255 (A003989 (n + 1) + (n : ℤ)).toNat).toNat

end

end A143104.P17447026547524670723

namespace A143104

/-- `A204163(A106255(A003989(n+1)+n))` -/
def P17447026547524670723.Spec : Prop :=
  ∀ n, P17447026547524670723.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P12707916869894460906

`A010054(A286101(n+1)-A004736(n+1))`
-/

namespace A143104.P12707916869894460906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A286101 (n + 1) - A004736 (n + 1)).toNat

end

end A143104.P12707916869894460906

namespace A143104

/-- `A010054(A286101(n+1)-A004736(n+1))` -/
def P12707916869894460906.Spec : Prop :=
  ∀ n, P12707916869894460906.a n = A143104 (n + 1)

end A143104

/-! ## A143104.P17641081498704910030

`A233308(A080036(n))%2`
-/

namespace A143104.P17641081498704910030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233308 (A080036 n).toNat) 2

end

end A143104.P17641081498704910030

namespace A143104

/-- `A233308(A080036(n))%2` -/
def P17641081498704910030.Spec : Prop :=
  ∀ n, P17641081498704910030.a n = A143104 (n + 1)

end A143104

/-!
# A143105: Let g_0(x,y)=x, g_1(x,y)=x^3+3xy and g_{n+2}(x,y) = (x^2+2y)g_{n+1}(x+y)-y^2g_n(x,y). The entries of the sequence are those odd d for which g_d(x,y) and cx^jy^kg_m(x,y) have at least two terms in common (same coefficients) for some c > 0 and integers j,k and such that g_d(x,y) + cx^jy^k(1+y^m - g_m(x,y)) has all positive coefficients.

The programs for A143105, there is no canonical definition to state claims against.
-/

/-! ## A143105.P117543360928955688

`lt[A354110(A319991(n+1)), A007814(3*n+5)]`
-/

namespace A143105.P117543360928955688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354110 (A319991 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143105.P117543360928955688

/-! ## A143105.P14671070617861558846

`record[A255644(n+1)+A000005(n+1)]`
-/

namespace A143105.P14671070617861558846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255644 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143105.P14671070617861558846

/-! ## A143105.P2210861739783565862

`eq[A022067(n), A062004(A033548(n+1)+1)]`
-/

namespace A143105.P2210861739783565862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062004 (A033548 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143105.P2210861739783565862

/-! ## A143105.P1949606318108476875

`eq[A007814(n+1), A117544(A329134(n+1))]`
-/

namespace A143105.P1949606318108476875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117544 (A329134 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143105.P1949606318108476875

/-!
# A143107: Let H(2,d) be the space of polynomials p(x,y) of two variables with nonnegative coefficients such that p(x,y) = 1 whenever x + y = 1; a(n) is the number of different polynomials in H(2,d) with exactly n distinct monomials and of maximum degree, i.e., of degree 2n-3.

The programs for A143107, there is no canonical definition to state claims against.
-/

/-! ## A143107.P9606955502420911145

`A329453(A105224(3*n+4))*A359508(n+1)`
-/

namespace A143107.P9606955502420911145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (A105224 (3 * n + 4)).toNat * A359508 (n + 1)

end

end A143107.P9606955502420911145

/-!
# A143109: Let H(2,d) be the space of polynomials p(x,y) of two variables with nonnegative coefficients such that p(x,y)=1 whenever x + y = 1. a(n) is the number of different polynomials in H(2,d) with exactly n distinct monomials and of maximum degree minus two, i.e., of degree 2n-5.

The programs for A143109, there is no canonical definition to state claims against.
-/

/-! ## A143109.P17355525345602654735

`A196440(A048162(n))`
-/

namespace A143109.P17355525345602654735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196440 (A048162 n).toNat

end

end A143109.P17355525345602654735

/-! ## A143109.P15714483857723446990

`A260740(A212514(n+1))`
-/

namespace A143109.P15714483857723446990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260740 (A212514 (n + 1)).toNat

end

end A143109.P15714483857723446990

/-! ## A143109.P7084587887226650076

`xor(A279481(n+1), A326278(n))`
-/

namespace A143109.P7084587887226650076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279481 (n + 1)) (A326278 n)

end

end A143109.P7084587887226650076

/-!
# A143110: Triangle read by rows, A051731 * A000034 * 0^(n-k), 1<=k<=n.

The programs for A143110, the canonical program `A143110.P1100247901521213873` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143110 has offset 1).

The definition of A143110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143110.P1100247901521213873

`A143425(n+1)%3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143110

/-- `A143425(n+1)%3` -/
def P1100247901521213873.Spec : Prop :=
  ∀ n, P1100247901521213873.a n = A143110 (n + 1)

theorem P1100247901521213873.correct : P1100247901521213873.Spec := by
  intro n
  simp only [A143110, Nat.add_sub_cancel]

end A143110

/-! ## A143110.P7158309631959646800

`A176079(n+1)%2+1`
-/

namespace A143110.P7158309631959646800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176079 (n + 1)) 2 + 1

end

end A143110.P7158309631959646800

namespace A143110

/-- `A176079(n+1)%2+1` -/
def P7158309631959646800.Spec : Prop :=
  ∀ n, P7158309631959646800.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P11720381073806222244

`gcd(4, A143151(n+1))%4`
-/

namespace A143110.P11720381073806222244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A143151 (n + 1)) % 4

end

end A143110.P11720381073806222244

namespace A143110

/-- `gcd(4, A143151(n+1))%4` -/
def P11720381073806222244.Spec : Prop :=
  ∀ n, (P11720381073806222244.a n : ℤ) = A143110 (n + 1)

end A143110

/-! ## A143110.P12324201542792459359

`A007877(A143151(n+1))`
-/

namespace A143110.P12324201542792459359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A143151 (n + 1)).toNat

end

end A143110.P12324201542792459359

namespace A143110

/-- `A007877(A143151(n+1))` -/
def P12324201542792459359.Spec : Prop :=
  ∀ n, P12324201542792459359.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P6323110588249237884

`A134451(A127093(n+1))`
-/

namespace A143110.P6323110588249237884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A127093 (n + 1)).toNat

end

end A143110.P6323110588249237884

namespace A143110

/-- `A134451(A127093(n+1))` -/
def P6323110588249237884.Spec : Prop :=
  ∀ n, P6323110588249237884.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P9992560882496270938

`A056926(2*A143151(n+1))`
-/

namespace A143110.P9992560882496270938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A143151 (n + 1)).toNat

end

end A143110.P9992560882496270938

namespace A143110

/-- `A056926(2*A143151(n+1))` -/
def P9992560882496270938.Spec : Prop :=
  ∀ n, P9992560882496270938.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P1693609398079192907

`and(A132728(n), A143151(n+1))`
-/

namespace A143110.P1693609398079192907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132728 n) (A143151 (n + 1))

end

end A143110.P1693609398079192907

namespace A143110

/-- `and(A132728(n), A143151(n+1))` -/
def P1693609398079192907.Spec : Prop :=
  ∀ n, P1693609398079192907.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P15242973757359077975

`∑{d}[A143151(n+1), A053866(#)]`
-/

namespace A143110.P15242973757359077975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A053866 d

end

end A143110.P15242973757359077975

namespace A143110

/-- `∑{d}[A143151(n+1), A053866(#)]` -/
def P15242973757359077975.Spec : Prop :=
  ∀ n, P15242973757359077975.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P5383644168243954365

`A000217(A143151(n+1)²)%4`
-/

namespace A143110.P5383644168243954365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A143151 (n + 1) ^ 2).toNat) 4

end

end A143110.P5383644168243954365

namespace A143110

/-- `A000217(A143151(n+1)²)%4` -/
def P5383644168243954365.Spec : Prop :=
  ∀ n, P5383644168243954365.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P11704333153273306204

`A020639(A143151(n+1)+1)-1`
-/

namespace A143110.P11704333153273306204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143151 (n + 1) + 1).toNat - 1

end

end A143110.P11704333153273306204

namespace A143110

/-- `A020639(A143151(n+1)+1)-1` -/
def P11704333153273306204.Spec : Prop :=
  ∀ n, P11704333153273306204.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P5673154133305406226

`A059268(n)%(A051731(n+1)+2)`
-/

namespace A143110.P5673154133305406226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 n) (A051731 (n + 1) + 2)

end

end A143110.P5673154133305406226

namespace A143110

/-- `A059268(n)%(A051731(n+1)+2)` -/
def P5673154133305406226.Spec : Prop :=
  ∀ n, P5673154133305406226.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P6130047622093337314

`∑{d}[A127093(n+1), A000010(#)%2]`
-/

namespace A143110.P6130047622093337314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000010 d) 2

end

end A143110.P6130047622093337314

namespace A143110

/-- `∑{d}[A127093(n+1), A000010(#)%2]` -/
def P6130047622093337314.Spec : Prop :=
  ∀ n, P6130047622093337314.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P11944456939644823263

`gcd(2, A002260(n+1))*A051731(n+1)`
-/

namespace A143110.P11944456939644823263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002260 (n + 1)) : ℤ) * A051731 (n + 1)

end

end A143110.P11944456939644823263

namespace A143110

/-- `gcd(2, A002260(n+1))*A051731(n+1)` -/
def P11944456939644823263.Spec : Prop :=
  ∀ n, P11944456939644823263.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P17378723763326366521

`A184166(A143151(n+1)+1)`
-/

namespace A143110.P17378723763326366521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (A143151 (n + 1) + 1).toNat

end

end A143110.P17378723763326366521

namespace A143110

/-- `A184166(A143151(n+1)+1)` -/
def P17378723763326366521.Spec : Prop :=
  ∀ n, P17378723763326366521.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P6053917044861569013

`A021003(A143151(n+1)²)%4`
-/

namespace A143110.P6053917044861569013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A021003 (A143151 (n + 1) ^ 2).toNat) 4

end

end A143110.P6053917044861569013

namespace A143110

/-- `A021003(A143151(n+1)²)%4` -/
def P6053917044861569013.Spec : Prop :=
  ∀ n, P6053917044861569013.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P3821912784119147122

`and(A134560(n+1), A171712(n+1))`
-/

namespace A143110.P3821912784119147122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134560 (n + 1)) (A171712 (n + 1))

end

end A143110.P3821912784119147122

namespace A143110

/-- `and(A134560(n+1), A171712(n+1))` -/
def P3821912784119147122.Spec : Prop :=
  ∀ n, P3821912784119147122.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P16767991089108605761

`A101674(A134575(n+1))`
-/

namespace A143110.P16767991089108605761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 (A134575 (n + 1)).toNat

end

end A143110.P16767991089108605761

namespace A143110

/-- `A101674(A134575(n+1))` -/
def P16767991089108605761.Spec : Prop :=
  ∀ n, P16767991089108605761.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P11828851505652315742

`A002828(A143425(n+1))`
-/

namespace A143110.P11828851505652315742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A143425 (n + 1)).toNat

end

end A143110.P11828851505652315742

namespace A143110

/-- `A002828(A143425(n+1))` -/
def P11828851505652315742.Spec : Prop :=
  ∀ n, P11828851505652315742.a n = A143110 (n + 1)

end A143110

/-! ## A143110.P17545298713959781071

`A079343(A130888(n+1))`
-/

namespace A143110.P17545298713959781071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A130888 (n + 1)).toNat

end

end A143110.P17545298713959781071

namespace A143110

/-- `A079343(A130888(n+1))` -/
def P17545298713959781071.Spec : Prop :=
  ∀ n, P17545298713959781071.a n = A143110 (n + 1)

end A143110

/-!
# A143111: Triangle read by rows, T(n,k) = largest proper divisor of A127093(n,k) where (largest proper divisor)(n) = A032742(n) if n>0 and 0 if n=0.

The programs for A143111, there is no canonical definition to state claims against.
-/

/-! ## A143111.P7638530512959940079

`A032742(A002260(n+1))*A051731(n+1)`
-/

namespace A143111.P7638530512959940079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A143111.P7638530512959940079

/-! ## A143111.P17192807549786800879

`A032742(A002262(n)+1)*A051731(n+1)`
-/

namespace A143111.P17192807549786800879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A143111.P17192807549786800879

/-! ## A143111.P17769352642951694859

`A127093(n+1)/A020639(A002260(n+1))`
-/

namespace A143111.P17769352642951694859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127093 (n + 1) : ℚ) / (A020639 (A002260 (n + 1)).toNat : ℚ)

end

end A143111.P17769352642951694859

/-! ## A143111.P9436678609511490337

`A127093(n+1)/A020639(A050873(n+1))`
-/

namespace A143111.P9436678609511490337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127093 (n + 1) : ℚ) / (A020639 (A050873 (n + 1)).toNat : ℚ)

end

end A143111.P9436678609511490337

/-! ## A143111.P3964336657003340680

`A127093(n+1)/A020639(A123275(n+1))`
-/

namespace A143111.P3964336657003340680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127093 (n + 1) : ℚ) / (A020639 (A123275 (n + 1)).toNat : ℚ)

end

end A143111.P3964336657003340680

/-! ## A143111.P9704239662268975862

`(A002260(n+1)-A173541(n+1))/A020639(A050873(n+1))`
-/

namespace A143111.P9704239662268975862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - A173541 (n + 1) : ℚ) / (A020639 (A050873 (n + 1)).toNat : ℚ)

end

end A143111.P9704239662268975862

/-! ## A143111.P4662745942334800355

`(A002262(n)+1)*A051731(n+1)/A020639(A050873(n+1))`
-/

namespace A143111.P4662745942334800355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002262 n + 1) * A051731 (n + 1) : ℚ) / (A020639 (A050873 (n + 1)).toNat : ℚ)

end

end A143111.P4662745942334800355

/-! ## A143111.P4121717082827239861

`A127093(n+1)/A020639(A134840(n+1))`
-/

namespace A143111.P4121717082827239861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127093 (n + 1) : ℚ) / (A020639 (A134840 (n + 1)).toNat : ℚ)

end

end A143111.P4121717082827239861

/-!
# A143112: A051731 * A032742 = sum of largest proper divisors of the divisors of n.

The programs for A143112, there is no canonical definition to state claims against.
-/

/-! ## A143112.P1748647472089466883

`∑{d}[n+1, A032742(#)]`
-/

namespace A143112.P1748647472089466883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032742 d

end

end A143112.P1748647472089466883

/-! ## A143112.P18384697136450356565

`∑{d}[n+1, #-A060681(#)]`
-/

namespace A143112.P18384697136450356565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A060681 d)

end

end A143112.P18384697136450356565

/-! ## A143112.P9514296817894126567

`∑{d}[n+1, #/A020639(#)]`
-/

namespace A143112.P9514296817894126567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A020639 d : ℚ)

end

end A143112.P9514296817894126567

/-! ## A143112.P13769520127198598486

`∑{d}[n+1, A004525(A286472(#))]`
-/

namespace A143112.P13769520127198598486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004525 (A286472 d).toNat

end

end A143112.P13769520127198598486

/-! ## A143112.P16319512297113999778

`∑{d}[n+1, A000005(#)*A300236((n+1)/#)]`
-/

namespace A143112.P16319512297113999778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143112.P16319512297113999778

/-!
# A143113: a(n) = the smallest positive integer that is coprime to n and has the same number of 1's in its binary representation as n has in binary.

The programs for A143113, there is no canonical definition to state claims against.
-/

/-! ## A143113.P9203216115632912805

`A073093(∑{d}[A342634(n+1), #]²)`
-/

namespace A143113.P9203216115632912805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 ((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2)

end

end A143113.P9203216115632912805

/-! ## A143113.P4929296443336997777

`A098062(A272340(n))%A099985(n+1)`
-/

namespace A143113.P4929296443336997777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098062 (A272340 n).toNat) (A099985 (n + 1))

end

end A143113.P4929296443336997777

/-! ## A143113.P14111711075025893274

`∏{p}[n+1, A325960(A248988(#+1))]`
-/

namespace A143113.P14111711075025893274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A325960 (A248988 (p + 1)).toNat

end

end A143113.P14111711075025893274

/-! ## A143113.P3614705568479763786

`A285512(A000265(n+1)*A343783(n+1))`
-/

namespace A143113.P3614705568479763786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (A000265 (n + 1) * A343783 (n + 1)).toNat

end

end A143113.P3614705568479763786

/-!
# A143115: a(n) = the smallest positive multiple of n that has exactly n 1's in its binary representation.

The programs for A143115, there is no canonical definition to state claims against.
-/

/-! ## A143115.P1451429439857342293

`(n+1)*A102032(n+1)`
-/

namespace A143115.P1451429439857342293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102032 (n + 1)

end

end A143115.P1451429439857342293

/-! ## A143115.P6355681853192297159

`A102032(n+1)/(n+1)^A008683(A020483(n))`
-/

namespace A143115.P6355681853192297159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102032 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A143115.P6355681853192297159

/-! ## A143115.P10342140699159157058

`A065880(A102032(n+1))`
-/

namespace A143115.P10342140699159157058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 (A102032 (n + 1)).toNat

end

end A143115.P10342140699159157058

/-!
# A143116: a(n) = the smallest positive multiple of n that has exactly n (nonleading) 0's in its binary representation.

The programs for A143116, there is no canonical definition to state claims against.
-/

/-! ## A143116.P17496125506340917800

`A003989(A166993(n))*A060401(n+1)`
-/

namespace A143116.P17496125506340917800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A166993 n).toNat * A060401 (n + 1)

end

end A143116.P17496125506340917800

/-! ## A143116.P14532160514023846708

`A001221(A178769(n))*A060401(n+1)`
-/

namespace A143116.P14532160514023846708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A178769 n).toNat * A060401 (n + 1)

end

end A143116.P14532160514023846708

/-!
# A143117: a(n) = the smallest positive integer that divides no more than one integer k, where n-th prime <= k <= (n+1)th prime.

The programs for A143117, there is no canonical definition to state claims against.
-/

/-! ## A143117.P630435969731632532

`A239690(A140715(n+1)!)`
-/

namespace A143117.P630435969731632532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239690 (Nat.factorial (A140715 (n + 1)).toNat)

end

end A143117.P630435969731632532

/-! ## A143117.P6130481063060123241

`A001227(3^A140715(n+1))`
-/

namespace A143117.P6130481063060123241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A140715 (n + 1) : ℤ))).toNat

end

end A143117.P6130481063060123241

/-! ## A143117.P9891709190452390136

`A002325(3^A140715(n+1))`
-/

namespace A143117.P9891709190452390136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A140715 (n + 1) : ℤ))).toNat

end

end A143117.P9891709190452390136

/-! ## A143117.P2617497528796589136

`A000005(5^A140715(n+1))`
-/

namespace A143117.P2617497528796589136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A140715 (n + 1) : ℤ))).toNat

end

end A143117.P2617497528796589136

/-! ## A143117.P13683673523752879105

`A001222(5^A140715(n+1))+1`
-/

namespace A143117.P13683673523752879105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A140715 (n + 1) : ℤ))).toNat + 1

end

end A143117.P13683673523752879105

/-!
# A143118: a(n) = the single multiple of A143117(n) such that n-th prime <= a(n) <= (n+1)th prime.

The programs for A143118, there is no canonical definition to state claims against.
-/

/-! ## A143118.P2639983454769138425

`A065091(n+1)-A065091(n+1)%A143117(n+1)`
-/

namespace A143118.P2639983454769138425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - Int.tmod (A065091 (n + 1)) (A143117 (n + 1))

end

end A143118.P2639983454769138425

/-! ## A143118.P1265524307183867935

`∑[A323014(A139582(n)²)]`
-/

namespace A143118.P1265524307183867935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A139582 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143118.P1265524307183867935

/-! ## A143118.P12609285316158931190

`A196393(A312210(n)+1)`
-/

namespace A143118.P12609285316158931190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A312210 n + 1).toNat

end

end A143118.P12609285316158931190

/-! ## A143118.P13376037397490418000

`∑[A167439(A240726(n+5))]`
-/

namespace A143118.P13376037397490418000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A240726 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143118.P13376037397490418000

/-!
# A143119: Triangle read by rows, A051731 * A026741, with 1<=k<=n.

The programs for A143119, there is no canonical definition to state claims against.
-/

/-! ## A143119.P6293843747321080048

`A026741(A127093(n+1))%A091228(n)`
-/

namespace A143119.P6293843747321080048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A127093 (n + 1)).toNat) (A091228 n)

end

end A143119.P6293843747321080048

/-! ## A143119.P5542360101139929611

`A171386(A091228(n)²)+A026741(A127093(n+1))`
-/

namespace A143119.P5542360101139929611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (A091228 n ^ 2).toNat + A026741 (A127093 (n + 1)).toNat

end

end A143119.P5542360101139929611

/-! ## A143119.P15142515485148271583

`A026741(A127093(n+1))*A057979(A091228(n)+1)`
-/

namespace A143119.P15142515485148271583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A127093 (n + 1)).toNat * A057979 (A091228 n + 1).toNat

end

end A143119.P15142515485148271583

/-! ## A143119.P7188412976755202080

`A026741(A127093(n+1))-A171386(A091228(n)+2)`
-/

namespace A143119.P7188412976755202080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A127093 (n + 1)).toNat - A171386 (A091228 n + 2).toNat

end

end A143119.P7188412976755202080

/-! ## A143119.P9829468015112587313

`A026741(A127093(n+1))*A057427(A225498(n+1))`
-/

namespace A143119.P9829468015112587313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A127093 (n + 1)).toNat * A057427 (A225498 (n + 1)).toNat

end

end A143119.P9829468015112587313

/-!
# A143121: Triangle read by rows, T(n,k) = Sum_{j=k..n} prime(j), 1 <= k <= n.

The programs for A143121, the canonical program `A143121.P10222713866998147310` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143121 has offset 1).

The definition of A143121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143121.P10222713866998147310

`A194939(A038722(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143121

/-- `A194939(A038722(n+1))` -/
def P10222713866998147310.Spec : Prop :=
  ∀ n, P10222713866998147310.a n = A143121 (n + 1)

theorem P10222713866998147310.correct : P10222713866998147310.Spec := by
  intro n
  simp only [A143121, Nat.add_sub_cancel]

end A143121

/-! ## A143121.P10605625477039253847

`A194939(A061579(n)+1)`
-/

namespace A143121.P10605625477039253847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A061579 n + 1).toNat

end

end A143121.P10605625477039253847

namespace A143121

/-- `A194939(A061579(n)+1)` -/
def P10605625477039253847.Spec : Prop :=
  ∀ n, P10605625477039253847.a n = A143121 (n + 1)

end A143121

/-! ## A143121.P3412242407062666752

`A194939(A099375(n)+A083920(n))`
-/

namespace A143121.P3412242407062666752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A099375 n + A083920 n).toNat

end

end A143121.P3412242407062666752

namespace A143121

/-- `A194939(A099375(n)+A083920(n))` -/
def P3412242407062666752.Spec : Prop :=
  ∀ n, P3412242407062666752.a n = A143121 (n + 1)

end A143121

/-! ## A143121.P12242682131842345168

`A194939(A185869(n+1)-A016777(n))`
-/

namespace A143121.P12242682131842345168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A185869 (n + 1) - A016777 n).toNat

end

end A143121.P12242682131842345168

namespace A143121

/-- `A194939(A185869(n+1)-A016777(n))` -/
def P12242682131842345168.Spec : Prop :=
  ∀ n, P12242682131842345168.a n = A143121 (n + 1)

end A143121

/-! ## A143121.P8896733878883859673

`A074036(A087112(n+1))`
-/

namespace A143121.P8896733878883859673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (A087112 (n + 1)).toNat

end

end A143121.P8896733878883859673

namespace A143121

/-- `A074036(A087112(n+1))` -/
def P8896733878883859673.Spec : Prop :=
  ∀ n, P8896733878883859673.a n = A143121 (n + 1)

end A143121

/-! ## A143121.P10723694293306730799

`A089625(A130328(n))`
-/

namespace A143121.P10723694293306730799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089625 (A130328 n).toNat

end

end A143121.P10723694293306730799

namespace A143121

/-- `A089625(A130328(n))` -/
def P10723694293306730799.Spec : Prop :=
  ∀ n, P10723694293306730799.a n = A143121 (n + 1)

end A143121

/-! ## A143121.P12427002507416183508

`A331835(A204985(n+1))`
-/

namespace A143121.P12427002507416183508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (A204985 (n + 1)).toNat

end

end A143121.P12427002507416183508

namespace A143121

/-- `A331835(A204985(n+1))` -/
def P12427002507416183508.Spec : Prop :=
  ∀ n, P12427002507416183508.a n = A143121 (n + 1)

end A143121

/-!
# A143122: Triangle read by rows, T(n,k) = Sum_{j=k..n} j!, 0 <= k <= n.

The programs for A143122, the canonical program `A143122.P9967688263514722923` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143122 has offset 0).

The definition of A143122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143122.P9218474201642682534

`A233543(n)*A348482(n)`
-/

namespace A143122.P9218474201642682534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A348482 n

end

end A143122.P9218474201642682534

namespace A143122

/-- `A233543(n)*A348482(n)` -/
def P9218474201642682534.Spec : Prop :=
  ∀ n, P9218474201642682534.a n = A143122 n

end A143122

/-! ## A143122.P9967688263514722923

`A003422(A002024(n+1))-A003422(A002262(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A143122

/-- `A003422(A002024(n+1))-A003422(A002262(n))` -/
def P9967688263514722923.Spec : Prop :=
  ∀ n, P9967688263514722923.a n = A143122 n

theorem P9967688263514722923.correct : P9967688263514722923.Spec := by
  intro n
  simp only [A143122]

end A143122

/-! ## A143122.P5071425451014099357

`A067078(A003057(n+2))-A067078(A002260(n+1))`
-/

namespace A143122.P5071425451014099357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067078 (A003057 (n + 2)).toNat - A067078 (A002260 (n + 1)).toNat

end

end A143122.P5071425451014099357

namespace A143122

/-- `A067078(A003057(n+2))-A067078(A002260(n+1))` -/
def P5071425451014099357.Spec : Prop :=
  ∀ n, P5071425451014099357.a n = A143122 n

end A143122

/-! ## A143122.P14703014973668601956

`A002260(n+2)*A117396(n+1)*A233543(n)`
-/

namespace A143122.P14703014973668601956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A117396 (n + 1) * A233543 n

end

end A143122.P14703014973668601956

namespace A143122

/-- `A002260(n+2)*A117396(n+1)*A233543(n)` -/
def P14703014973668601956.Spec : Prop :=
  ∀ n, P14703014973668601956.a n = A143122 n

end A143122

/-! ## A143122.P9827227724191247606

`A002260(n+2)*A117396(n+1)*A002262(n)!`
-/

namespace A143122.P9827227724191247606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A117396 (n + 1) * (Nat.factorial (A002262 n).toNat : ℤ)

end

end A143122.P9827227724191247606

namespace A143122

/-- `A002260(n+2)*A117396(n+1)*A002262(n)!` -/
def P9827227724191247606.Spec : Prop :=
  ∀ n, P9827227724191247606.a n = A143122 n

end A143122

/-! ## A143122.P15055330736513845027

`A002260(n+2)*A117396(n+1)*A144328(n+1)!`
-/

namespace A143122.P15055330736513845027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A117396 (n + 1) * (Nat.factorial (A144328 (n + 1)).toNat : ℤ)

end

end A143122.P15055330736513845027

namespace A143122

/-- `A002260(n+2)*A117396(n+1)*A144328(n+1)!` -/
def P15055330736513845027.Spec : Prop :=
  ∀ n, P15055330736513845027.a n = A143122 n

end A143122

/-! ## A143122.P8528657562962316604

`A002260(n+2)*A117396(n+1)*A104150(A002260(n+1))`
-/

namespace A143122.P8528657562962316604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A117396 (n + 1) * A104150 (A002260 (n + 1)).toNat

end

end A143122.P8528657562962316604

namespace A143122

/-- `A002260(n+2)*A117396(n+1)*A104150(A002260(n+1))` -/
def P8528657562962316604.Spec : Prop :=
  ∀ n, P8528657562962316604.a n = A143122 n

end A143122

/-! ## A143122.P13287055210724805702

`A002260(n+2)*A117396(n+1)*A112624(A059268(n))`
-/

namespace A143122.P13287055210724805702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A117396 (n + 1) * A112624 (A059268 n).toNat

end

end A143122.P13287055210724805702

namespace A143122

/-- `A002260(n+2)*A117396(n+1)*A112624(A059268(n))` -/
def P13287055210724805702.Spec : Prop :=
  ∀ n, P13287055210724805702.a n = A143122 n

end A143122

/-! ## A143122.P16627843767694728620

`A233543(n)+A059590(A173787(n))`
-/

namespace A143122.P16627843767694728620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n + A059590 (A173787 n).toNat

end

end A143122.P16627843767694728620

namespace A143122

/-- `A233543(n)+A059590(A173787(n))` -/
def P16627843767694728620.Spec : Prop :=
  ∀ n, P16627843767694728620.a n = A143122 n

end A143122

/-! ## A143122.P8123902701120182299

`A059590(A173787(n))+A002262(n)!`
-/

namespace A143122.P8123902701120182299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A173787 n).toNat + (Nat.factorial (A002262 n).toNat : ℤ)

end

end A143122.P8123902701120182299

namespace A143122

/-- `A059590(A173787(n))+A002262(n)!` -/
def P8123902701120182299.Spec : Prop :=
  ∀ n, P8123902701120182299.a n = A143122 n

end A143122

/-! ## A143122.P12817437508105684795

`A059590(A173787(n))+A144328(n+1)!`
-/

namespace A143122.P12817437508105684795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A173787 n).toNat + (Nat.factorial (A144328 (n + 1)).toNat : ℤ)

end

end A143122.P12817437508105684795

namespace A143122

/-- `A059590(A173787(n))+A144328(n+1)!` -/
def P12817437508105684795.Spec : Prop :=
  ∀ n, P12817437508105684795.a n = A143122 n

end A143122

/-!
# A143123: a(n) = Sum_{j=0..n} A000293(j).

The programs for A143123, there is no canonical definition to state claims against.
-/

/-! ## A143123.P14448320175854226260

`∑[A000293(n)]`
-/

namespace A143123.P14448320175854226260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143123.P14448320175854226260

/-! ## A143123.P11313150403045918551

`∑[A000294(n)-A007326(n)]`
-/

namespace A143123.P11313150403045918551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000294 n - A007326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143123.P11313150403045918551

/-! ## A143123.P4493251973729761282

`A000293(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A143123.P4493251973729761282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000293 n + a (A023443 n).toNat

end

end A143123.P4493251973729761282

/-! ## A143123.P6502970252979425889

`A000293(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A143123.P6502970252979425889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000293 (A000027 n).toNat + a (n - 1)

end

end A143123.P6502970252979425889

/-! ## A143123.P9457853556501784439

`A000293(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A143123.P9457853556501784439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000293 n + a (A028310 n - 1).toNat

end

end A143123.P9457853556501784439

/-!
# A143124: Triangle read by rows: T(n,k) = Sum_{j=k..n} A001462(j), 1<=k<=n, A001462 = Golomb's sequence.

The programs for A143124, there is no canonical definition to state claims against.
-/

/-! ## A143124.P11474261760723427066

`A005041(A213500(n+1)%A062241(n))`
-/

namespace A143124.P11474261760723427066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.tmod (A213500 (n + 1)) (A062241 n)).toNat

end

end A143124.P11474261760723427066

/-! ## A143124.P4139666685152186064

`A080686(A205400(n+1)%A062241(n))`
-/

namespace A143124.P4139666685152186064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080686 (Int.tmod (A205400 (n + 1)) (A062241 n)).toNat

end

end A143124.P4139666685152186064

/-! ## A143124.P16915615649032516681

`A005041(A213500(n+1))%∑[A030545(n)]`
-/

namespace A143124.P16915615649032516681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005041 (A213500 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143124.P16915615649032516681

/-! ## A143124.P15781485115806769472

`A080686(A205400(n+1))%A106429(n+1)`
-/

namespace A143124.P15781485115806769472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080686 (A205400 (n + 1)).toNat) (A106429 (n + 1))

end

end A143124.P15781485115806769472

/-! ## A143124.P4432819944249398234

`A000045(A008651(n)^12+1)*A005041(A213500(n+1))`
-/

namespace A143124.P4432819944249398234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008651 n ^ 12 + 1).toNat * A005041 (A213500 (n + 1)).toNat

end

end A143124.P4432819944249398234

/-!
# A143125: a(n) = Sum {j=1..n} j*A001462(j).

The programs for A143125, the canonical program `A143125.P6368460751521179305` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143125 has offset 1).

The definition of A143125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143125.P6368460751521179305

`∑[A104236(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143125

/-- `∑[A104236(n+1)]` -/
def P6368460751521179305.Spec : Prop :=
  ∀ n, P6368460751521179305.a n = A143125 (n + 1)

theorem P6368460751521179305.correct : P6368460751521179305.Spec := by
  intro n
  simp only [A143125, Nat.add_sub_cancel]

end A143125

/-! ## A143125.P1169288629312410579

`∑[(n+1)*A001462(n+1)]`
-/

namespace A143125.P1169288629312410579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143125.P1169288629312410579

namespace A143125

/-- `∑[(n+1)*A001462(n+1)]` -/
def P1169288629312410579.Spec : Prop :=
  ∀ n, P1169288629312410579.a n = A143125 (n + 1)

end A143125

/-! ## A143125.P11357607948174981268

`∑[(n+1)*Δ[A095114(n+1)]]`
-/

namespace A143125.P11357607948174981268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143125.P11357607948174981268

namespace A143125

/-- `∑[(n+1)*Δ[A095114(n+1)]]` -/
def P11357607948174981268.Spec : Prop :=
  ∀ n, P11357607948174981268.a n = A143125 (n + 1)

theorem P11357607948174981268.correct : P11357607948174981268.Spec := by
  intro n
  simp only [A143125, Nat.add_sub_cancel, A143125.P11357607948174981268.f2, A143125.P11357607948174981268.f1, A143125.P11357607948174981268.a, A143125.P6368460751521179305.f1, A143125.P6368460751521179305.a, A095114, A095114.P18128364600797049740.f1, A095114.P18128364600797049740.a, A104236, A104236.P4332644214263664855.a, A001462, A001462.P2570616953797054601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143125

/-! ## A143125.P13322834719324750393

`∑[(A224731(n+1)-(n+1))*(n+1)]`
-/

namespace A143125.P13322834719324750393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A224731 (n + 1) - (n + 1 : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143125.P13322834719324750393

namespace A143125

/-- `∑[(A224731(n+1)-(n+1))*(n+1)]` -/
def P13322834719324750393.Spec : Prop :=
  ∀ n, P13322834719324750393.a n = A143125 (n + 1)

end A143125

/-! ## A143125.P6378375815900770867

`∑[(Δ[A109512(n+1)]-1)*A123108(2*n+3)]`
-/

namespace A143125.P6378375815900770867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n - 1) * A123108 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143125.P6378375815900770867

namespace A143125

/-- `∑[(Δ[A109512(n+1)]-1)*A123108(2*n+3)]` -/
def P6378375815900770867.Spec : Prop :=
  ∀ n, P6378375815900770867.a n = A143125 (n + 1)

end A143125

/-! ## A143125.P9490660408300918425

`A001463(A001463(n+1))`
-/

namespace A143125.P9490660408300918425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (A001463 (n + 1)).toNat

end

end A143125.P9490660408300918425

namespace A143125

/-- `A001463(A001463(n+1))` -/
def P9490660408300918425.Spec : Prop :=
  ∀ n, P9490660408300918425.a n = A143125 (n + 1)

end A143125

/-! ## A143125.P12094446332653103084

`A095114(A095114(n+2))-1`
-/

namespace A143125.P12094446332653103084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A095114 (n + 2)).toNat - 1

end

end A143125.P12094446332653103084

namespace A143125

/-- `A095114(A095114(n+2))-1` -/
def P12094446332653103084.Spec : Prop :=
  ∀ n, P12094446332653103084.a n = A143125 (n + 1)

end A143125

/-!
# A143126: a(n) = (1-2n)*2^n.

The programs for A143126, the canonical program `A143126.P18207668421137530438` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143126 has offset 0).

The definition of A143126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1-2*n)*2^n` (program `A143126.P18207668421137530438`, by `A143126.P18207668421137530438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143126.P18207668421137530438

`(1-2*n)*2^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143126

/-- `(1-2*n)*2^n` -/
def P18207668421137530438.Spec : Prop :=
  ∀ n, P18207668421137530438.a n = A143126 n

theorem P18207668421137530438.correct : P18207668421137530438.Spec := by
  intro n
  simp only [A143126]

end A143126

/-! ## A143126.P5017316592562476752

`ogf((1-6x)/(1-4x+4x^2))`
-/

namespace A143126.P5017316592562476752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -4, 4] n

end

end A143126.P5017316592562476752

namespace A143126

/-- `ogf((1-6x)/(1-4x+4x^2))` -/
def P5017316592562476752.Spec : Prop :=
  ∀ n, P5017316592562476752.a n = A143126 n

end A143126

/-! ## A143126.P5782900567731835534

`or(-(n*2^(n+1)), 2^n)`
-/

namespace A143126.P5782900567731835534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(n * 2 ^ (n + 1) : ℤ)) (2 ^ n : ℤ)

end

end A143126.P5782900567731835534

namespace A143126

/-- `or(-(n*2^(n+1)), 2^n)` -/
def P5782900567731835534.Spec : Prop :=
  ∀ n, P5782900567731835534.a n = A143126 n

end A143126

/-! ## A143126.P12161509181436440098

`xor(-(n*2^(n+1)), 2^n)`
-/

namespace A143126.P12161509181436440098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n * 2 ^ (n + 1) : ℤ)) (2 ^ n : ℤ)

end

end A143126.P12161509181436440098

namespace A143126

/-- `xor(-(n*2^(n+1)), 2^n)` -/
def P12161509181436440098.Spec : Prop :=
  ∀ n, P12161509181436440098.a n = A143126 n

end A143126

/-! ## A143126.P9446936366379594766

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A143126.P9446936366379594766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A143126.P9446936366379594766

namespace A143126

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P9446936366379594766.Spec : Prop :=
  ∀ n, P9446936366379594766.a n = A143126 n

theorem P9446936366379594766.correct : P9446936366379594766.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A143126, Nat.add_sub_cancel, A143126.P9446936366379594766.a, A143126.P18207668421137530438.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A143126, Nat.add_sub_cancel, A143126.P9446936366379594766.a, A143126.P18207668421137530438.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A143126

/-! ## A143126.P12648459918995253344

`2*a(n-1)-root(2, 1/(n+1))` with `a(0)=1`
-/

namespace A143126.P12648459918995253344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (2 : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A143126.P12648459918995253344

namespace A143126

/-- `2*a(n-1)-root(2, 1/(n+1))` -/
def P12648459918995253344.Spec : Prop :=
  ∀ n, P12648459918995253344.a n = (A143126 n : ℝ)

end A143126

/-! ## A143126.P16786144823865940863

`a(n-1)+a(n-1)-2^(n+1)` with `a(0)=1`
-/

namespace A143126.P16786144823865940863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - (2 ^ (n + 1) : ℤ))

end

end A143126.P16786144823865940863

namespace A143126

/-- `a(n-1)+a(n-1)-2^(n+1)` -/
def P16786144823865940863.Spec : Prop :=
  ∀ n, P16786144823865940863.a n = A143126 n

theorem P16786144823865940863.correct : P16786144823865940863.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A143126, Nat.add_sub_cancel, A143126.P16786144823865940863.a, A143126.P18207668421137530438.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A143126, Nat.add_sub_cancel, A143126.P16786144823865940863.a, A143126.P18207668421137530438.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A143126

/-! ## A143126.P12834591466976926239

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=1, a(1)=-2`
-/

namespace A143126.P12834591466976926239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A143126.P12834591466976926239

namespace A143126

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P12834591466976926239.Spec : Prop :=
  ∀ n, P12834591466976926239.a n = (A143126 n : ℚ)

theorem P12834591466976926239.correct : P12834591466976926239.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A143126, Nat.add_sub_cancel, A143126.P12834591466976926239.a, A143126.P18207668421137530438.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A143126, Nat.add_sub_cancel, A143126.P12834591466976926239.a, A143126.P18207668421137530438.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A143126

/-! ## A143126.P10997838346444360461

`1-A392083(n)`
-/

namespace A143126.P10997838346444360461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A392083 n

end

end A143126.P10997838346444360461

namespace A143126

/-- `1-A392083(n)` -/
def P10997838346444360461.Spec : Prop :=
  ∀ n, P10997838346444360461.a n = A143126 n

end A143126

/-! ## A143126.P1784216168970582280

`(3-A339771(n))/2`
-/

namespace A143126.P1784216168970582280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A339771 n : ℚ) / 2

end

end A143126.P1784216168970582280

namespace A143126

/-- `(3-A339771(n))/2` -/
def P1784216168970582280.Spec : Prop :=
  ∀ n, P1784216168970582280.a n = (A143126 n : ℚ)

theorem P1784216168970582280.correct : P1784216168970582280.Spec := by
  intro n
  simp only [A143126, Nat.add_sub_cancel, A143126.P1784216168970582280.a, A143126.P18207668421137530438.a, A339771, A339771.P5084121294361121818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143126

/-! ## A143126.P2340270853800574398

`(4-A027981(n))/3`
-/

namespace A143126.P2340270853800574398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A027981 n : ℚ) / 3

end

end A143126.P2340270853800574398

namespace A143126

/-- `(4-A027981(n))/3` -/
def P2340270853800574398.Spec : Prop :=
  ∀ n, P2340270853800574398.a n = (A143126 n : ℚ)

theorem P2340270853800574398.correct : P2340270853800574398.Spec := by
  intro n
  simp only [A143126, Nat.add_sub_cancel, A143126.P2340270853800574398.a, A143126.P18207668421137530438.a, A027981, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143126

/-! ## A143126.P3571383804677064721

`1-(A059673(n)+n)`
-/

namespace A143126.P3571383804677064721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A059673 n + (n : ℤ))

end

end A143126.P3571383804677064721

namespace A143126

/-- `1-(A059673(n)+n)` -/
def P3571383804677064721.Spec : Prop :=
  ∀ n, P3571383804677064721.a n = A143126 n

theorem P3571383804677064721.correct : P3571383804677064721.Spec := by
  intro n
  simp only [A143126, Nat.add_sub_cancel, A143126.P3571383804677064721.a, A143126.P18207668421137530438.a, A059673, A059673.P1135629432888691762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143126

/-! ## A143126.P4520397799213265816

`2-∑[A128135(n+1)]`
-/

namespace A143126.P4520397799213265816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143126.P4520397799213265816

namespace A143126

/-- `2-∑[A128135(n+1)]` -/
def P4520397799213265816.Spec : Prop :=
  ∀ n, P4520397799213265816.a n = A143126 n

end A143126

/-! ## A143126.P7212383417788322747

`1-∑[A239632(2*n)]`
-/

namespace A143126.P7212383417788322747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143126.P7212383417788322747

namespace A143126

/-- `1-∑[A239632(2*n)]` -/
def P7212383417788322747.Spec : Prop :=
  ∀ n, P7212383417788322747.a n = A143126 n

end A143126

/-! ## A143126.P2613371865146171190

`2-A048497(n+1)/2`
-/

namespace A143126.P2613371865146171190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A048497 (n + 1) : ℚ) / 2

end

end A143126.P2613371865146171190

namespace A143126

/-- `2-A048497(n+1)/2` -/
def P2613371865146171190.Spec : Prop :=
  ∀ n, P2613371865146171190.a n = (A143126 n : ℚ)

end A143126

/-! ## A143126.P17065527697729457558

`A159964(n+1)+2^n`
-/

namespace A143126.P17065527697729457558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 (n + 1) + (2 ^ n : ℤ)

end

end A143126.P17065527697729457558

namespace A143126

/-- `A159964(n+1)+2^n` -/
def P17065527697729457558.Spec : Prop :=
  ∀ n, P17065527697729457558.a n = A143126 n

theorem P17065527697729457558.correct : P17065527697729457558.Spec := by
  intro n
  simp only [A143126, Nat.add_sub_cancel, A143126.P17065527697729457558.a, A143126.P18207668421137530438.a, A159964, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143126

/-! ## A143126.P17886598209207502756

`2^(n+1)-A014480(n)`
-/

namespace A143126.P17886598209207502756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A014480 n

end

end A143126.P17886598209207502756

namespace A143126

/-- `2^(n+1)-A014480(n)` -/
def P17886598209207502756.Spec : Prop :=
  ∀ n, P17886598209207502756.a n = A143126 n

end A143126

/-! ## A143126.P3571621435338639272

`2^n-A058922(n+1)`
-/

namespace A143126.P3571621435338639272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A058922 (n + 1)

end

end A143126.P3571621435338639272

namespace A143126

/-- `2^n-A058922(n+1)` -/
def P3571621435338639272.Spec : Prop :=
  ∀ n, P3571621435338639272.a n = A143126 n

theorem P3571621435338639272.correct : P3571621435338639272.Spec := by
  intro n
  simp only [A143126, Nat.add_sub_cancel, A143126.P3571621435338639272.a, A143126.P18207668421137530438.a, A058922, A058922.P3560394704057486784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143126

/-! ## A143126.P7238481995971866218

`-((2*n-1)*A000079(n))`
-/

namespace A143126.P7238481995971866218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((2 * n : ℤ) - 1) * A000079 n)

end

end A143126.P7238481995971866218

namespace A143126

/-- `-((2*n-1)*A000079(n))` -/
def P7238481995971866218.Spec : Prop :=
  ∀ n, P7238481995971866218.a n = A143126 n

theorem P7238481995971866218.correct : P7238481995971866218.Spec := by
  intro n
  simp only [A143126, Nat.add_sub_cancel, A143126.P7238481995971866218.a, A143126.P18207668421137530438.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143126

/-! ## A143126.P17799107701326186779

`2^(n+2)-A128135(n+2)`
-/

namespace A143126.P17799107701326186779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A128135 (n + 2)

end

end A143126.P17799107701326186779

namespace A143126

/-- `2^(n+2)-A128135(n+2)` -/
def P17799107701326186779.Spec : Prop :=
  ∀ n, P17799107701326186779.a n = A143126 n

end A143126

/-!
# A143127: a(n) = Sum_{k=1..n} k*d(k) where d(k) is the number of divisors of k.

The programs for A143127, the canonical program `A143127.P4022789189732155568` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143127 has offset 1).

The definition of A143127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083356, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143127.P4022789189732155568

`2*A083356(n+1)-A000330(floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143127

/-- `2*A083356(n+1)-A000330(floor(sqrt(n+1)))` -/
def P4022789189732155568.Spec : Prop :=
  ∀ n, P4022789189732155568.a n = A143127 (n + 1)

theorem P4022789189732155568.correct : P4022789189732155568.Spec := by
  intro n
  simp only [A143127, Nat.add_sub_cancel]

end A143127

/-! ## A143127.P8410036495819153823

`∑[∑{d}[n+1, lcm(#, n+1)]]`
-/

namespace A143127.P8410036495819153823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P8410036495819153823

namespace A143127

/-- `∑[∑{d}[n+1, lcm(#, n+1)]]` -/
def P8410036495819153823.Spec : Prop :=
  ∀ n, (P8410036495819153823.a n : ℤ) = A143127 (n + 1)

end A143127

/-! ## A143127.P5509772573152352959

`∑[∑{d}[n+1, gcd(n, #)+n]]`
-/

namespace A143127.P5509772573152352959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.gcd n d + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P5509772573152352959

namespace A143127

/-- `∑[∑{d}[n+1, gcd(n, #)+n]]` -/
def P5509772573152352959.Spec : Prop :=
  ∀ n, (P5509772573152352959.a n : ℤ) = A143127 (n + 1)

end A143127

/-! ## A143127.P14306858298540896717

`∑[(n+1)*∏{e}[n+1, #+1]]`
-/

namespace A143127.P14306858298540896717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P14306858298540896717

namespace A143127

/-- `∑[(n+1)*∏{e}[n+1, #+1]]` -/
def P14306858298540896717.Spec : Prop :=
  ∀ n, (P14306858298540896717.a n : ℤ) = A143127 (n + 1)

end A143127

/-! ## A143127.P2100135039329636956

`∑[∑{d}[n+1, xor(#, xor(#, n+1))]]`
-/

namespace A143127.P2100135039329636956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.xor d (Nat.xor d (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P2100135039329636956

namespace A143127

/-- `∑[∑{d}[n+1, xor(#, xor(#, n+1))]]` -/
def P2100135039329636956.Spec : Prop :=
  ∀ n, (P2100135039329636956.a n : ℤ) = A143127 (n + 1)

end A143127

/-! ## A143127.P3912611493863631898

`∑[∑{d}[n+1, (n+1)%(n+1+#)]]`
-/

namespace A143127.P3912611493863631898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1) % (n + 1 + d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P3912611493863631898

namespace A143127

/-- `∑[∑{d}[n+1, (n+1)%(n+1+#)]]` -/
def P3912611493863631898.Spec : Prop :=
  ∀ n, (P3912611493863631898.a n : ℤ) = A143127 (n + 1)

end A143127

/-! ## A143127.P7193081263274457572

`∑[A038040(n+1)]`
-/

namespace A143127.P7193081263274457572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P7193081263274457572

namespace A143127

/-- `∑[A038040(n+1)]` -/
def P7193081263274457572.Spec : Prop :=
  ∀ n, P7193081263274457572.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P11442844455493077085

`∑[A145229(n)/4]`
-/

namespace A143127.P11442844455493077085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145229 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P11442844455493077085

namespace A143127

/-- `∑[A145229(n)/4]` -/
def P11442844455493077085.Spec : Prop :=
  ∀ n, P11442844455493077085.a n = (A143127 (n + 1) : ℚ)

end A143127

/-! ## A143127.P6864206757961155855

`∑[A083271(n+1)-1]`
-/

namespace A143127.P6864206757961155855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P6864206757961155855

namespace A143127

/-- `∑[A083271(n+1)-1]` -/
def P6864206757961155855.Spec : Prop :=
  ∀ n, P6864206757961155855.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P14732745937667772896

`∑[(n+1)*Δ[A006218(n)]]`
-/

namespace A143127.P14732745937667772896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P14732745937667772896

namespace A143127

/-- `∑[(n+1)*Δ[A006218(n)]]` -/
def P14732745937667772896.Spec : Prop :=
  ∀ n, P14732745937667772896.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P523225729456641163

`∑[(n+1)*A000005(n+1)]`
-/

namespace A143127.P523225729456641163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P523225729456641163

namespace A143127

/-- `∑[(n+1)*A000005(n+1)]` -/
def P523225729456641163.Spec : Prop :=
  ∀ n, P523225729456641163.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P4835794894500310537

`∑[A034714(n+1)/(n+1)]`
-/

namespace A143127.P4835794894500310537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034714 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P4835794894500310537

namespace A143127

/-- `∑[A034714(n+1)/(n+1)]` -/
def P4835794894500310537.Spec : Prop :=
  ∀ n, P4835794894500310537.a n = (A143127 (n + 1) : ℚ)

end A143127

/-! ## A143127.P6343664567166118821

`∑[A386012(n+1)/(n+1)²]`
-/

namespace A143127.P6343664567166118821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386012 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P6343664567166118821

namespace A143127

/-- `∑[A386012(n+1)/(n+1)²]` -/
def P6343664567166118821.Spec : Prop :=
  ∀ n, P6343664567166118821.a n = (A143127 (n + 1) : ℚ)

end A143127

/-! ## A143127.P2458848476085327747

`a(n-1)+(n+1)*A000005(C(n+1, n))` with `a(0)=1`
-/

namespace A143127.P2458848476085327747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000005 (Nat.choose (n + 1) n)

end

end A143127.P2458848476085327747

namespace A143127

/-- `a(n-1)+(n+1)*A000005(C(n+1, n))` -/
def P2458848476085327747.Spec : Prop :=
  ∀ n, P2458848476085327747.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P10643556907096415337

`a(n-1)+(n+1)*A000005(2*n+1-n)` with `a(0)=1`
-/

namespace A143127.P10643556907096415337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000005 (2 * n + 1 - n)

end

end A143127.P10643556907096415337

namespace A143127

/-- `a(n-1)+(n+1)*A000005(2*n+1-n)` -/
def P10643556907096415337.Spec : Prop :=
  ∀ n, P10643556907096415337.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P2674421341590617843

`A143274(n+1)-A078567(n+1)`
-/

namespace A143127.P2674421341590617843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143274 (n + 1) - A078567 (n + 1)

end

end A143127.P2674421341590617843

namespace A143127

/-- `A143274(n+1)-A078567(n+1)` -/
def P2674421341590617843.Spec : Prop :=
  ∀ n, P2674421341590617843.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P676718129233303058

`∑[A094471(n+1)+A000203(n+1)]`
-/

namespace A143127.P676718129233303058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P676718129233303058

namespace A143127

/-- `∑[A094471(n+1)+A000203(n+1)]` -/
def P676718129233303058.Spec : Prop :=
  ∀ n, P676718129233303058.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P17552238645705967130

`∑[A152211(n+1)-A000203(n+1)]`
-/

namespace A143127.P17552238645705967130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P17552238645705967130

namespace A143127

/-- `∑[A152211(n+1)-A000203(n+1)]` -/
def P17552238645705967130.Spec : Prop :=
  ∀ n, P17552238645705967130.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P872386186954420285

`∑[A168014(n+1)+n+1]`
-/

namespace A143127.P872386186954420285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P872386186954420285

namespace A143127

/-- `∑[A168014(n+1)+n+1]` -/
def P872386186954420285.Spec : Prop :=
  ∀ n, P872386186954420285.a n = A143127 (n + 1)

end A143127

/-! ## A143127.P13142589170338955992

`∑[∑{d}[n+1, A057427(#)]*(n+1)]`
-/

namespace A143127.P13142589170338955992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A057427 d) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P13142589170338955992

namespace A143127

/-- `∑[∑{d}[n+1, A057427(#)]*(n+1)]` -/
def P13142589170338955992.Spec : Prop :=
  ∀ n, P13142589170338955992.a n = A143127 (n + 1)

end A143127

/-!
# A143128: a(n) = Sum_{k=1..n} k*sigma(k).

The programs for A143128, the canonical program `A143128.P9739826549786901227` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143128 has offset 1).

The definition of A143128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143128.P9739826549786901227

`∑[(n+1)*∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143128

/-- `∑[(n+1)*∑{d}[n+1, #]]` -/
def P9739826549786901227.Spec : Prop :=
  ∀ n, (P9739826549786901227.a n : ℤ) = A143128 (n + 1)

theorem P9739826549786901227.correct : P9739826549786901227.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel]

end A143128

/-! ## A143128.P14599578623396181520

`∑[∑{d}[n+1, lcm(n, #)+#]]`
-/

namespace A143128.P14599578623396181520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm n d + d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P14599578623396181520

namespace A143128

/-- `∑[∑{d}[n+1, lcm(n, #)+#]]` -/
def P14599578623396181520.Spec : Prop :=
  ∀ n, (P14599578623396181520.a n : ℤ) = A143128 (n + 1)

end A143128

/-! ## A143128.P12580128998449986365

`∑[∑{d}[n+1, (n+1)²/#]]`
-/

namespace A143128.P12580128998449986365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P12580128998449986365

namespace A143128

/-- `∑[∑{d}[n+1, (n+1)²/#]]` -/
def P12580128998449986365.Spec : Prop :=
  ∀ n, P12580128998449986365.a n = (A143128 (n + 1) : ℚ)

end A143128

/-! ## A143128.P2994298089426698293

`∑{d}[n+1, #*(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A143128.P2994298089426698293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d * (n + 1) + a (n - 1)

end

end A143128.P2994298089426698293

namespace A143128

/-- `∑{d}[n+1, #*(n+1)]+a(n-1)` -/
def P2994298089426698293.Spec : Prop :=
  ∀ n, (P2994298089426698293.a n : ℤ) = A143128 (n + 1)

end A143128

/-! ## A143128.P13272789488515438081

`∑[A064987(n+1)]`
-/

namespace A143128.P13272789488515438081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P13272789488515438081

namespace A143128

/-- `∑[A064987(n+1)]` -/
def P13272789488515438081.Spec : Prop :=
  ∀ n, P13272789488515438081.a n = A143128 (n + 1)

theorem P13272789488515438081.correct : P13272789488515438081.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel, A143128.P13272789488515438081.f1, A143128.P13272789488515438081.a, A143128.P9739826549786901227.f2, A143128.P9739826549786901227.f1, A143128.P9739826549786901227.a, A064987, A064987.P14181610018234257040.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143128

/-! ## A143128.P1425003158120913389

`∑[(n+1)*A000203(n+1)]`
-/

namespace A143128.P1425003158120913389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P1425003158120913389

namespace A143128

/-- `∑[(n+1)*A000203(n+1)]` -/
def P1425003158120913389.Spec : Prop :=
  ∀ n, P1425003158120913389.a n = A143128 (n + 1)

theorem P1425003158120913389.correct : P1425003158120913389.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel, A143128.P1425003158120913389.f1, A143128.P1425003158120913389.a, A143128.P9739826549786901227.f2, A143128.P9739826549786901227.f1, A143128.P9739826549786901227.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143128

/-! ## A143128.P11944388464381060202

`∑[(n+1)*A245092(2*n+1)]`
-/

namespace A143128.P11944388464381060202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P11944388464381060202

namespace A143128

/-- `∑[(n+1)*A245092(2*n+1)]` -/
def P11944388464381060202.Spec : Prop :=
  ∀ n, P11944388464381060202.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P9220271410997048945

`∑[(n+1)*(A001065(n+1)+1+n)]`
-/

namespace A143128.P9220271410997048945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001065 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P9220271410997048945

namespace A143128

/-- `∑[(n+1)*(A001065(n+1)+1+n)]` -/
def P9220271410997048945.Spec : Prop :=
  ∀ n, P9220271410997048945.a n = A143128 (n + 1)

theorem P9220271410997048945.correct : P9220271410997048945.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel, A143128.P9220271410997048945.f1, A143128.P9220271410997048945.a, A143128.P9739826549786901227.f2, A143128.P9739826549786901227.f1, A143128.P9739826549786901227.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143128

/-! ## A143128.P4935125029545581236

`∑[(n+1)*(A155085(n+1)-(n+1))]`
-/

namespace A143128.P4935125029545581236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A155085 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P4935125029545581236

namespace A143128

/-- `∑[(n+1)*(A155085(n+1)-(n+1))]` -/
def P4935125029545581236.Spec : Prop :=
  ∀ n, P4935125029545581236.a n = A143128 (n + 1)

theorem P4935125029545581236.correct : P4935125029545581236.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel, A143128.P4935125029545581236.f1, A143128.P4935125029545581236.a, A143128.P9739826549786901227.f2, A143128.P9739826549786901227.f1, A143128.P9739826549786901227.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143128

/-! ## A143128.P13378108173126186710

`a(n-1)+(n+1)*A000203(C(n+1, n))` with `a(0)=1`
-/

namespace A143128.P13378108173126186710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000203 (Nat.choose (n + 1) n)

end

end A143128.P13378108173126186710

namespace A143128

/-- `a(n-1)+(n+1)*A000203(C(n+1, n))` -/
def P13378108173126186710.Spec : Prop :=
  ∀ n, P13378108173126186710.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P11026709549947050032

`a(n-1)+(n+1)*A000203(2*n+1-n)` with `a(0)=1`
-/

namespace A143128.P11026709549947050032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000203 (2 * n + 1 - n)

end

end A143128.P11026709549947050032

namespace A143128

/-- `a(n-1)+(n+1)*A000203(2*n+1-n)` -/
def P11026709549947050032.Spec : Prop :=
  ∀ n, P11026709549947050032.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P14183392663126771718

`A332264(n+1)+A024916(n+1)`
-/

namespace A143128.P14183392663126771718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332264 (n + 1) + A024916 (n + 1)

end

end A143128.P14183392663126771718

namespace A143128

/-- `A332264(n+1)+A024916(n+1)` -/
def P14183392663126771718.Spec : Prop :=
  ∀ n, P14183392663126771718.a n = A143128 (n + 1)

theorem P14183392663126771718.correct : P14183392663126771718.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel, A143128.P14183392663126771718.a, A143128.P9739826549786901227.f2, A143128.P9739826549786901227.f1, A143128.P9739826549786901227.a, A024916, A024916.P6070136297472608546.a, A332264, A332264.P12409925469232935551.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143128

/-! ## A143128.P9321300759630857062

`∑[A303384(n+1)+A001157(n+1)]`
-/

namespace A143128.P9321300759630857062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) + A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P9321300759630857062

namespace A143128

/-- `∑[A303384(n+1)+A001157(n+1)]` -/
def P9321300759630857062.Spec : Prop :=
  ∀ n, P9321300759630857062.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P16858451648086537744

`A064602(n+1)+∑[A303384(n+1)]`
-/

namespace A143128.P16858451648086537744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P16858451648086537744

namespace A143128

/-- `A064602(n+1)+∑[A303384(n+1)]` -/
def P16858451648086537744.Spec : Prop :=
  ∀ n, P16858451648086537744.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P11299806640734271714

`A024916(n+1)+A256533(n+1)-A175254(n+1)`
-/

namespace A143128.P11299806640734271714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A256533 (n + 1) - A175254 (n + 1))

end

end A143128.P11299806640734271714

namespace A143128

/-- `A024916(n+1)+A256533(n+1)-A175254(n+1)` -/
def P11299806640734271714.Spec : Prop :=
  ∀ n, P11299806640734271714.a n = A143128 (n + 1)

theorem P11299806640734271714.correct : P11299806640734271714.Spec := by
  intro n
  simp only [A143128, Nat.add_sub_cancel, A143128.P11299806640734271714.a, A143128.P9739826549786901227.f2, A143128.P9739826549786901227.f1, A143128.P9739826549786901227.a, A024916, A024916.P6070136297472608546.a, A175254, A175254.P11385085050354624172.a, A256533, A256533.P5671197403926202284.a, A000330, A000330.P6574240937923917945.a, A072481, A072481.P6215182981061618954.f3, A072481.P6215182981061618954.f2, A072481.P6215182981061618954.f1, A072481.P6215182981061618954.a, A160664, A160664.P14996881624845338289.a, A332264, A332264.P12409925469232935551.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143128

/-! ## A143128.P17912741374975251364

`∑[A282097(n+1)/(n+1)]`
-/

namespace A143128.P17912741374975251364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282097 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P17912741374975251364

namespace A143128

/-- `∑[A282097(n+1)/(n+1)]` -/
def P17912741374975251364.Spec : Prop :=
  ∀ n, P17912741374975251364.a n = (A143128 (n + 1) : ℚ)

end A143128

/-! ## A143128.P10542536789913762673

`∑[A282211(n+1)/(n+1)²]`
-/

namespace A143128.P10542536789913762673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282211 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P10542536789913762673

namespace A143128

/-- `∑[A282211(n+1)/(n+1)²]` -/
def P10542536789913762673.Spec : Prop :=
  ∀ n, P10542536789913762673.a n = (A143128 (n + 1) : ℚ)

end A143128

/-! ## A143128.P8453735114248626004

`A256533(n+2)-(A175254(n+1)+A064987(n+2))`
-/

namespace A143128.P8453735114248626004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256533 (n + 2) - (A175254 (n + 1) + A064987 (n + 2))

end

end A143128.P8453735114248626004

namespace A143128

/-- `A256533(n+2)-(A175254(n+1)+A064987(n+2))` -/
def P8453735114248626004.Spec : Prop :=
  ∀ n, P8453735114248626004.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P8520900101419293874

`∑[A000203(A008619(2*n))*A008619(2*n)]`
-/

namespace A143128.P8520900101419293874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008619 (2 * n)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P8520900101419293874

namespace A143128

/-- `∑[A000203(A008619(2*n))*A008619(2*n)]` -/
def P8520900101419293874.Spec : Prop :=
  ∀ n, P8520900101419293874.a n = A143128 (n + 1)

end A143128

/-! ## A143128.P1057165442170238904

`∑[A000203(A052938(2*n))*A052938(2*n)]`
-/

namespace A143128.P1057165442170238904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A052938 (2 * n)).toNat * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P1057165442170238904

namespace A143128

/-- `∑[A000203(A052938(2*n))*A052938(2*n)]` -/
def P1057165442170238904.Spec : Prop :=
  ∀ n, P1057165442170238904.a n = A143128 (n + 1)

end A143128

/-!
# A143129: Triangle read by rows, T(n,k) = sum {j=k..n} A000292(j) = A000012 * (A000292 * 0^(n-k)) * A000012, 1<=k<=n.

The programs for A143129, there is no canonical definition to state claims against.
-/

/-! ## A143129.P2511358484043635288

`A145126(A002024(n+1))-A145126(A025668(n+1))`
-/

namespace A143129.P2511358484043635288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (A002024 (n + 1)).toNat - A145126 (A025668 (n + 1)).toNat

end

end A143129.P2511358484043635288

/-!
# A143130: Triangle read by rows, A000012 * (A000332 * 0^(n-k)) * A000012, 0<=k<=n.

The programs for A143130, there is no canonical definition to state claims against.
-/

/-! ## A143130.P13946386475983626874

`A329634(A038722(n+1)*A061603(n))`
-/

namespace A143130.P13946386475983626874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329634 (A038722 (n + 1) * A061603 n).toNat

end

end A143130.P13946386475983626874

/-! ## A143130.P11856036851754304415

`A329634(A038722(n+1)^A061603(n))`
-/

namespace A143130.P11856036851754304415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329634 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A061603 n : ℤ))).toNat

end

end A143130.P11856036851754304415

/-! ## A143130.P3934573127355850261

`A329634(lcm(A038722(n+1), A061603(n)))`
-/

namespace A143130.P3934573127355850261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329634 (Int.lcm (A038722 (n + 1)) (A061603 n))

end

end A143130.P3934573127355850261

/-!
# A143131: Binomial transform of [1, 4, 10, 20, 0, 0, 0, ...].

The programs for A143131, the canonical program `A143131.P3455816316157282820` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143131 has offset 1).

The definition of A143131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143131.P3455816316157282820

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143131

/-- `∑[∑[a(n-1)+20]]` -/
def P3455816316157282820.Spec : Prop :=
  ∀ n, (P3455816316157282820.a n : ℤ) = A143131 (n + 1)

theorem P3455816316157282820.correct : P3455816316157282820.Spec := by
  intro n
  simp only [A143131, Nat.add_sub_cancel]

end A143131

/-! ## A143131.P2589137810853689678

`A247608(n)-A005476(n)`
-/

namespace A143131.P2589137810853689678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247608 n - A005476 n

end

end A143131.P2589137810853689678

namespace A143131

/-- `A247608(n)-A005476(n)` -/
def P2589137810853689678.Spec : Prop :=
  ∀ n, P2589137810853689678.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P5801701531109122671

`∑[A033571(n)]-A022285(n)`
-/

namespace A143131.P5801701531109122671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022285 n

end

end A143131.P5801701531109122671

namespace A143131

/-- `∑[A033571(n)]-A022285(n)` -/
def P5801701531109122671.Spec : Prop :=
  ∀ n, P5801701531109122671.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P5804425036018637860

`∑[A158187(n)]-A195018(n)`
-/

namespace A143131.P5804425036018637860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195018 n

end

end A143131.P5804425036018637860

namespace A143131

/-- `∑[A158187(n)]-A195018(n)` -/
def P5804425036018637860.Spec : Prop :=
  ∀ n, P5804425036018637860.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P6156941114297711047

`A034720(n+1)-A396288(n)`
-/

namespace A143131.P6156941114297711047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) - A396288 n

end

end A143131.P6156941114297711047

namespace A143131

/-- `A034720(n+1)-A396288(n)` -/
def P6156941114297711047.Spec : Prop :=
  ∀ n, P6156941114297711047.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P9095479236166655876

`A024000(n)+5*A037235(n)`
-/

namespace A143131.P9095479236166655876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + 5 * A037235 n

end

end A143131.P9095479236166655876

namespace A143131

/-- `A024000(n)+5*A037235(n)` -/
def P9095479236166655876.Spec : Prop :=
  ∀ n, P9095479236166655876.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P6041942256528768288

`∑[n+1]+A247608(n)-A056108(n)`
-/

namespace A143131.P6041942256528768288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A247608 n - A056108 n)

end

end A143131.P6041942256528768288

namespace A143131

/-- `∑[n+1]+A247608(n)-A056108(n)` -/
def P6041942256528768288.Spec : Prop :=
  ∀ n, P6041942256528768288.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P2875486098036495610

`A000326(n+1)+A226451(n)-A000292(n)`
-/

namespace A143131.P2875486098036495610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + (A226451 n - A000292 n)

end

end A143131.P2875486098036495610

namespace A143131

/-- `A000326(n+1)+A226451(n)-A000292(n)` -/
def P2875486098036495610.Spec : Prop :=
  ∀ n, P2875486098036495610.a n = A143131 (n + 1)

end A143131

/-! ## A143131.P18212844136006273751

`A017317((1-n)²)+a(n-1)` with `a(0)=1`
-/

namespace A143131.P18212844136006273751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017317 ((1 - (n : ℤ)) ^ 2).toNat + a (n - 1)

end

end A143131.P18212844136006273751

namespace A143131

/-- `A017317((1-n)²)+a(n-1)` -/
def P18212844136006273751.Spec : Prop :=
  ∀ n, P18212844136006273751.a n = A143131 (n + 1)

end A143131

/-!
# A143132: Binomial transform of [1, 5, 15, 35, 70, 0, 0, 0, ...].

The programs for A143132, the canonical program `A143132.P864110151815142097` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143132 has offset 1).

The definition of A143132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143132.P864110151815142097

`46-200*(n+1)+330*A000217(n+1)-245*A000292(n+1)+70*A000332(n+4)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A143132

/-- `46-200*(n+1)+330*A000217(n+1)-245*A000292(n+1)+70*A000332(n+4)` -/
def P864110151815142097.Spec : Prop :=
  ∀ n, P864110151815142097.a n = A143132 (n + 1)

theorem P864110151815142097.correct : P864110151815142097.Spec := by
  intro n
  simp only [A143132, Nat.add_sub_cancel]

end A143132

/-!
# A143134: E.g.f. satisfies: A(x) = x + sin( A(x) )^2 with A(0)=0.

The programs for A143134, there is no canonical definition to state claims against.
-/

/-! ## A143134.P17505653372285382737

`ceil(A277612(n+1)/2)`
-/

namespace A143134.P17505653372285382737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277612 (n + 1) : ℚ) / 2⌉

end

end A143134.P17505653372285382737

/-! ## A143134.P15676544544584149062

`2^n*A200317(n+1)`
-/

namespace A143134.P15676544544584149062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A200317 (n + 1)

end

end A143134.P15676544544584149062

/-! ## A143134.P9125527560078594678

`abs(A120617(n)*A200317(n+1))`
-/

namespace A143134.P9125527560078594678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120617 n * A200317 (n + 1)|

end

end A143134.P9125527560078594678

/-! ## A143134.P6417563313495146037

`abs(A122803(n)*A200317(n+1))`
-/

namespace A143134.P6417563313495146037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 n * A200317 (n + 1)|

end

end A143134.P6417563313495146037

/-! ## A143134.P4664250458300747031

`A200317(n+1)*A308663(A000096(n))`
-/

namespace A143134.P4664250458300747031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200317 (n + 1) * A308663 (A000096 n).toNat

end

end A143134.P4664250458300747031

/-!
# A143135: E.g.f. satisfies: A(x) = sin(x + A(x)^2) with A(0)=0.

The programs for A143135, there is no canonical definition to state claims against.
-/

/-! ## A143135.P9171719651980434670

`A105512(Δ[(n+1)^n])+1`
-/

namespace A143135.P9171719651980434670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A143135.P9171719651980434670

/-!
# A143136: E.g.f. satisfies: A(x) = x + sinh( A(x) )^2.

The programs for A143136, there is no canonical definition to state claims against.
-/

/-! ## A143136.P5544463085422365854

`2^n*A200318(n+1)`
-/

namespace A143136.P5544463085422365854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A200318 (n + 1)

end

end A143136.P5544463085422365854

/-! ## A143136.P2715127811920738880

`A200318(n+1)*A000079(n)`
-/

namespace A143136.P2715127811920738880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200318 (n + 1) * A000079 n

end

end A143136.P2715127811920738880

/-! ## A143136.P5696807484533269046

`abs(A120617(n)*A200318(n+1))`
-/

namespace A143136.P5696807484533269046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120617 n * A200318 (n + 1)|

end

end A143136.P5696807484533269046

/-! ## A143136.P15808687959325641694

`abs(A122803(n)*A200318(n+1))`
-/

namespace A143136.P15808687959325641694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 n * A200318 (n + 1)|

end

end A143136.P15808687959325641694

/-! ## A143136.P13442537741713531035

`A200318(n+1)*A308663(A000096(n))`
-/

namespace A143136.P13442537741713531035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200318 (n + 1) * A308663 (A000096 n).toNat

end

end A143136.P13442537741713531035

/-! ## A143136.P16591571426986643538

`A200318(n+1)/A200317(n+1)*A143134(n+1)`
-/

namespace A143136.P16591571426986643538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200318 (n + 1) : ℚ) / (A200317 (n + 1) : ℚ) * (A143134 (n + 1) : ℚ)

end

end A143136.P16591571426986643538

/-!
# A143137: E.g.f. satisfies A(x) = sinh(x + A(x)^2).

The programs for A143137, there is no canonical definition to state claims against.
-/

/-! ## A143137.P4240739484304552217

`A056171(∑[∏[A005117(3*n+2)]])`
-/

namespace A143137.P4240739484304552217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143137.P4240739484304552217

/-!
# A143138: E.g.f.: A(x) = x + (exp(A(x)) - 1)^2.

The programs for A143138, there is no canonical definition to state claims against.
-/

/-! ## A143138.P1378825340125328767

`ceil(A277404(n+1)/2)`
-/

namespace A143138.P1378825340125328767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277404 (n + 1) : ℚ) / 2⌉

end

end A143138.P1378825340125328767

/-! ## A143138.P336020093909999717

`A277404(n+1)/(A178334(n)+1)`
-/

namespace A143138.P336020093909999717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277404 (n + 1) : ℚ) / (A178334 n + 1 : ℚ)

end

end A143138.P336020093909999717

/-! ## A143138.P6809073118712413602

`(A277404(n+1)+A000007(n))/2`
-/

namespace A143138.P6809073118712413602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277404 (n + 1) + A000007 n : ℚ) / 2

end

end A143138.P6809073118712413602

/-! ## A143138.P263136856611892557

`A277404(n+1)/A000005(A008578(n+1))`
-/

namespace A143138.P263136856611892557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277404 (n + 1) : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A143138.P263136856611892557

/-! ## A143138.P3469701461615424289

`A277404(n+1)/A020639(A000143(n))`
-/

namespace A143138.P3469701461615424289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277404 (n + 1) : ℚ) / (A020639 (A000143 n).toNat : ℚ)

end

end A143138.P3469701461615424289

/-!
# A143139: E.g.f.: A(x) = exp(x + A(x)^2) - 1.

The programs for A143139, there is no canonical definition to state claims against.
-/

/-! ## A143139.P14856982911759599677

`∑[A323735(A005261(n)+1)]`
-/

namespace A143139.P14856982911759599677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323735 (A005261 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143139.P14856982911759599677

/-!
# A143140: Total number of all repeated partitions of the n-set {1,2,3,...,n}.

The programs for A143140, there is no canonical definition to state claims against.
-/

/-! ## A143140.P9161292744964135968

`A076272(A238640(n))`
-/

namespace A143140.P9161292744964135968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A238640 n).toNat

end

end A143140.P9161292744964135968

/-! ## A143140.P7786641188355570901

`A159477(A301861(n))`
-/

namespace A143140.P7786641188355570901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A301861 n).toNat

end

end A143140.P7786641188355570901

/-!
# A143141: Total number of all repeated partitions of the integer n and its parts down to parts equal to 1. Essentially first differences of A055887.

The programs for A143141, there is no canonical definition to state claims against.
-/

/-! ## A143141.P12912995693160371425

`floor(acot(n)+Δ[A055887(n)])`
-/

namespace A143141.P12912995693160371425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A143141.P12912995693160371425

/-! ## A143141.P10510819373279652470

`A000007(n)+Δ[A055887(n)]`
-/

namespace A143141.P10510819373279652470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A143141.P10510819373279652470

/-! ## A143141.P7520859688148043681

`Δ[A057427(n)+A055887(n)]`
-/

namespace A143141.P7520859688148043681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143141.P7520859688148043681

/-! ## A143141.P12170675915170774765

`A060054(A020483(n))+Δ[A055887(n)]`
-/

namespace A143141.P12170675915170774765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (A020483 n).toNat + (f1 (n + 1) - f1 n)

end

end A143141.P12170675915170774765

/-! ## A143141.P4315634588538874791

`Δ[A061142(A006530(n+1))+A055887(n)]`
-/

namespace A143141.P4315634588538874791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A006530 (n + 1)).toNat + A055887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143141.P4315634588538874791

/-! ## A143141.P10253414611693101550

`Δ[A055887(n)%A055887(n+1)]`
-/

namespace A143141.P10253414611693101550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055887 n) (A055887 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143141.P10253414611693101550

/-! ## A143141.P4158582235398656266

`Δ[A055887(n)%A006012(n)]`
-/

namespace A143141.P4158582235398656266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055887 n) (A006012 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143141.P4158582235398656266

/-! ## A143141.P16984516339036511650

`Δ[A055887(n)+A000122(n²)]`
-/

namespace A143141.P16984516339036511650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n + A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143141.P16984516339036511650

/-! ## A143141.P12385078885797805369

`Δ[A055887(n)*A151934(A151934(n))]`
-/

namespace A143141.P12385078885797805369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n * A151934 (A151934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143141.P12385078885797805369

/-!
# A143142: Square array T(n,k) read by antidiagonals up. Mobius function interleaved with k-1 zeros in each column. Redheffer type matrix.

The programs for A143142, there is no canonical definition to state claims against.
-/

/-! ## A143142.P12029881456384792402

`A128407(A286157(n+1))+char[∑[n+2]]`
-/

namespace A143142.P12029881456384792402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (A286157 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143142.P12029881456384792402

/-! ## A143142.P1553518787802251022

`A128407(A286157(n+1))^A293525(n)`
-/

namespace A143142.P1553518787802251022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128407 (A286157 (n + 1)).toNat : ℚ) ^ (A293525 n : ℤ)

end

end A143142.P1553518787802251022

/-! ## A143142.P13149412671013169552

`or(A023531(n), A128407(A286157(n+1)))`
-/

namespace A143142.P13149412671013169552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023531 n) (A128407 (A286157 (n + 1)).toNat)

end

end A143142.P13149412671013169552

/-! ## A143142.P6344617665682079672

`A128407(gcd(A131436(n+1), A286157(n+1)))`
-/

namespace A143142.P6344617665682079672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (Int.gcd (A131436 (n + 1)) (A286157 (n + 1)))

end

end A143142.P6344617665682079672

/-! ## A143142.P8769025652687156628

`or(A010054(n+1), A128407(A286157(n+1)))`
-/

namespace A143142.P8769025652687156628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (n + 1)) (A128407 (A286157 (n + 1)).toNat)

end

end A143142.P8769025652687156628

/-! ## A143142.P12391393658760653300

`A023531(A028310(n))+A128407(A286157(n+1))^3`
-/

namespace A143142.P12391393658760653300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A028310 n).toNat + A128407 (A286157 (n + 1)).toNat ^ 3

end

end A143142.P12391393658760653300

/-! ## A143142.P15724758821882679795

`A008683(A010766(n+1))*A174856(n+1)`
-/

namespace A143142.P15724758821882679795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A174856 (n + 1)

end

end A143142.P15724758821882679795

/-! ## A143142.P6629917173771337253

`A008683(A112543(n+1))*A174856(n+1)`
-/

namespace A143142.P6629917173771337253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A112543 (n + 1)).toNat * A174856 (n + 1)

end

end A143142.P6629917173771337253

/-! ## A143142.P17745463066135575292

`A055615(A010766(n+1))/A112543(n+1)*A174856(n+1)`
-/

namespace A143142.P17745463066135575292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (A010766 (n + 1)).toNat : ℚ) / (A112543 (n + 1) : ℚ) * (A174856 (n + 1) : ℚ)

end

end A143142.P17745463066135575292

/-! ## A143142.P13950966565145905789

`round(atan(A144966(n+1)))`
-/

namespace A143142.P13950966565145905789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A144966 (n + 1) : ℝ))

end

end A143142.P13950966565145905789

/-!
# A143143: a(n) = the number of primes that exist between (but don't include) j and k, where j is the largest divisor of n that is <= sqrt(n) and k = the smallest divisor of n that is >= sqrt(n).

The programs for A143143, there is no canonical definition to state claims against.
-/

/-! ## A143143.P18168693796015644217

`A065770(n+1)-A033676(n+1)%A328653(n)`
-/

namespace A143143.P18168693796015644217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - Int.tmod (A033676 (n + 1)) (A328653 n)

end

end A143143.P18168693796015644217

/-! ## A143143.P4387007623380007594

`A089605(A122111(n+1))+char[7]`
-/

namespace A143143.P4387007623380007594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 (A122111 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143143.P4387007623380007594

/-! ## A143143.P16705759741761412923

`A124762(A253564(n+1))+char[7]`
-/

namespace A143143.P16705759741761412923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A253564 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143143.P16705759741761412923

/-! ## A143143.P4832408887768587955

`A124762(A279351(n+1)-A046072(n+1))`
-/

namespace A143143.P4832408887768587955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A279351 (n + 1) - A046072 (n + 1)).toNat

end

end A143143.P4832408887768587955

/-! ## A143143.P1596495967087999480

`A124762(A122111(n+1)-A304327(n+1))`
-/

namespace A143143.P1596495967087999480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A122111 (n + 1) - A304327 (n + 1)).toNat

end

end A143143.P1596495967087999480

/-!
# A143144: A positive integer n is included if there is one and only one prime p where j < p < k, where j is the largest divisor of n that is <= sqrt(n) and k = the smallest divisor of n that is >= sqrt(n).

The programs for A143144, there is no canonical definition to state claims against.
-/

/-! ## A143144.P13359748183914208548

`eq[1, A143143(n+1)]+1`
-/

namespace A143144.P13359748183914208548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143144.P13359748183914208548

/-! ## A143144.P6480064738440697914

`eq[1, A143143(A028310(n))]`
-/

namespace A143144.P6480064738440697914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143144.P6480064738440697914

/-! ## A143144.P11595709762308723543

`eq[1, A143143(A233583(n+1))]`
-/

namespace A143144.P11595709762308723543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143144.P11595709762308723543

/-! ## A143144.P17556875302595697443

`eq[1, A143143(A065033(2*n))]`
-/

namespace A143144.P17556875302595697443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143144.P17556875302595697443

/-! ## A143144.P16794104111551964459

`eq[2, A276623(a(A143143(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A143144.P16794104111551964459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A276623 (f2 (A143143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143144.P16794104111551964459

/-! ## A143144.P7965856329282074186

`eq[2, A000040(a(A143143(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A143144.P7965856329282074186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A143143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143144.P7965856329282074186

/-! ## A143144.P6662398070740793347

`eq[2, A000196(a(A143143(n)))]` with `a(0)=0, a(1)=6`
-/

namespace A143144.P6662398070740793347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  A000196 (f2 (A143143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143144.P6662398070740793347

/-!
# A143145: A positive integer n is included if there are no primes p where j < p < k, where j is the largest divisor of n that is <= sqrt(n) and k = the smallest divisor of n that is >= sqrt(n).

The programs for A143145, there is no canonical definition to state claims against.
-/

/-! ## A143145.P11043150434981992327

`∪[A036441(n+1), A330879(n+1)]`
-/

namespace A143145.P11043150434981992327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143145.P11043150434981992327

/-! ## A143145.P5262476100186057352

`∪[A076271(n+1), A330879(n+1)]`
-/

namespace A143145.P5262476100186057352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143145.P5262476100186057352

/-! ## A143145.P14136343010514374206

`eq[0, A143143(n+1)]+1`
-/

namespace A143145.P14136343010514374206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143145.P14136343010514374206

/-! ## A143145.P9233999590804814802

`eq[2, A276623(a(A143143(n)))]` with `a(0)=1`
-/

namespace A143145.P9233999590804814802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A276623 (f2 (A143143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143145.P9233999590804814802

/-! ## A143145.P5564617392711070264

`eq[2, A000196(a(A143143(n)))]` with `a(0)=6`
-/

namespace A143145.P5564617392711070264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000196 (f2 (A143143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143145.P5564617392711070264

/-! ## A143145.P7454112359314585187

`record[gcd(n+1, A143143(A000027(n+1)))]`
-/

namespace A143145.P7454112359314585187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A143143 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143145.P7454112359314585187

/-! ## A143145.P9702485309337853412

`record[gcd(A008619(2*n), A143143(n+1))]`
-/

namespace A143145.P9702485309337853412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (2 * n)) (A143143 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143145.P9702485309337853412

/-! ## A143145.P10431363277342849416

`record[(1-A143143(n+1))*A000027(n+1)]`
-/

namespace A143145.P10431363277342849416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A143143 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143145.P10431363277342849416

/-! ## A143145.P1405590992188541990

`record[n+1-A057889(n)*A143143(n+1)]`
-/

namespace A143145.P1405590992188541990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057889 n * A143143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143145.P1405590992188541990

/-!
# A143146: a(n) is the smallest positive multiple of n that has the same number of 0's as 1's in its binary representation.

The programs for A143146, there is no canonical definition to state claims against.
-/

/-! ## A143146.P1508802986659458227

`(n+1)*A351599(n+1)`
-/

namespace A143146.P1508802986659458227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351599 (n + 1)

end

end A143146.P1508802986659458227

/-!
# A143147: a(1)=2. a(n) = the smallest positive multiple of a(n-1) that is > a(n-1) and has the same number of 0's as 1's in its binary representation.

The programs for A143147, there is no canonical definition to state claims against.
-/

/-! ## A143147.P5329842907900741238

`∏[A045537(A231302(n+1)!)]`
-/

namespace A143147.P5329842907900741238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (Nat.factorial (A231302 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A143147.P5329842907900741238

/-! ## A143147.P1025681335666254971

`record[gcd(A055237(n), A062884(n+1))]`
-/

namespace A143147.P1025681335666254971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055237 n) (A062884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143147.P1025681335666254971

/-!
# A143150: A triangle sequence based on the Folium of Descartes: x^3 + y^3 - 3*a*x*y.

The programs for A143150, the canonical program `A143150.P14087715904695829345` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143150 has offset 1).

The definition of A143150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143150.P14087715904695829345

`(row(n)+1)^3-3*(row(n)+1)*(col(n)+1)+(col(n)+1)^3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143150

/-- `(row(n)+1)^3-3*(row(n)+1)*(col(n)+1)+(col(n)+1)^3` -/
def P14087715904695829345.Spec : Prop :=
  ∀ n, P14087715904695829345.a n = A143150 (n + 1)

theorem P14087715904695829345.correct : P14087715904695829345.Spec := by
  intro n
  simp only [A143150, Nat.add_sub_cancel]

end A143150

/-! ## A143150.P16276399717869135092

`A143180(A245300(n))`
-/

namespace A143150.P16276399717869135092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143180 (A245300 n).toNat

end

end A143150.P16276399717869135092

namespace A143150

/-- `A143180(A245300(n))` -/
def P16276399717869135092.Spec : Prop :=
  ∀ n, P16276399717869135092.a n = A143150 (n + 1)

end A143150

/-!
# A143151: Triangle read by rows, A051731 * (A020639 * 0^(n-k)), 1<=k<=n.

The programs for A143151, there is no canonical definition to state claims against.
-/

/-! ## A143151.P15041468742573883089

`A107286(A134575(n+1))`
-/

namespace A143151.P15041468742573883089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A134575 (n + 1)).toNat

end

end A143151.P15041468742573883089

/-! ## A143151.P17584558261486433373

`A107286(A127093(n+1)²)`
-/

namespace A143151.P17584558261486433373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A127093 (n + 1) ^ 2).toNat

end

end A143151.P17584558261486433373

/-! ## A143151.P13315531761588956688

`A107286(A127093(n+1)^2)`
-/

namespace A143151.P13315531761588956688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A127093 (n + 1) ^ 2).toNat

end

end A143151.P13315531761588956688

/-! ## A143151.P9518518857308204824

`A020639(1-C(∑[char[∑[n]]], 2)+n)*A051731(n+1)`
-/

namespace A143151.P9518518857308204824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A051731 (n + 1)

end

end A143151.P9518518857308204824

/-! ## A143151.P12291243223598098071

`A020639(A002260(n+1))*A051731(n+1)`
-/

namespace A143151.P12291243223598098071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A143151.P12291243223598098071

/-! ## A143151.P2743350584078684573

`A020639(A002262(n)+1)*A051731(n+1)`
-/

namespace A143151.P2743350584078684573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A143151.P2743350584078684573

/-! ## A143151.P12991571882945208056

`A020639(A050873(n+1))*A051731(n+1)`
-/

namespace A143151.P12991571882945208056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A143151.P12991571882945208056

/-! ## A143151.P6791535185853650165

`A020639(A123275(n+1))*A051731(n+1)`
-/

namespace A143151.P6791535185853650165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A143151.P6791535185853650165

/-! ## A143151.P10737870457140911210

`A020639(A133819(n+1))*A051731(n+1)`
-/

namespace A143151.P10737870457140911210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133819 (n + 1)).toNat * A051731 (n + 1)

end

end A143151.P10737870457140911210

/-! ## A143151.P1304406319026100026

`A020639(1-A057944(n)+n)*A051731(n+1)`
-/

namespace A143151.P1304406319026100026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - A057944 n + (n : ℤ)).toNat * A051731 (n + 1)

end

end A143151.P1304406319026100026

/-! ## A143151.P319075162690179217

`A020639(A002260(n+1))%A000124(A286239(n+1))`
-/

namespace A143151.P319075162690179217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A002260 (n + 1)).toNat) (A000124 (A286239 (n + 1)).toNat)

end

end A143151.P319075162690179217

/-! ## A143151.P1270540768249972496

`A020639(A133819(n+1))%A266793(A127446(n+1))`
-/

namespace A143151.P1270540768249972496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A133819 (n + 1)).toNat) (A266793 (A127446 (n + 1)).toNat)

end

end A143151.P1270540768249972496

/-! ## A143151.P11377413322592636332

`floor(acot(A007318(n+1)%A007318(n)))*A020639(A050873(n+1))`
-/

namespace A143151.P11377413322592636332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A007318 (n + 1)) (A007318 n) : ℝ)⌋ * A020639 (A050873 (n + 1)).toNat

end

end A143151.P11377413322592636332

/-! ## A143151.P8498617193499787675

`∑{e}[A000079(A127093(n+1)), A020639(#)]`
-/

namespace A143151.P8498617193499787675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A127093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorization (f1 n).natAbs p)

end

end A143151.P8498617193499787675

/-! ## A143151.P6880385886424127370

`gcd(A127093(n+1), A143153(n+1))`
-/

namespace A143151.P6880385886424127370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127093 (n + 1)) (A143153 (n + 1))

end

end A143151.P6880385886424127370

/-!
# A143152: Inverse Möbius transform of the least prime factor of n: A051731 * A020639.

The programs for A143152, there is no canonical definition to state claims against.
-/

/-! ## A143152.P3381324267325096444

`∑{d}[n+1, A020639(#)]`
-/

namespace A143152.P3381324267325096444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020639 d

end

end A143152.P3381324267325096444

/-! ## A143152.P15732475771380164783

`∑{d}[n+1, sqrt(A088377(#))]`
-/

namespace A143152.P15732475771380164783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A088377 d : ℝ)

end

end A143152.P15732475771380164783

/-! ## A143152.P17115637232044269221

`∑{d}[n+1, A028233(A007947(#))]`
-/

namespace A143152.P17115637232044269221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028233 (A007947 d).toNat

end

end A143152.P17115637232044269221

/-! ## A143152.P15044662268791435284

`∑{d}[n+1, A014963(A028233(#))]`
-/

namespace A143152.P15044662268791435284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014963 (A028233 d).toNat

end

end A143152.P15044662268791435284

/-! ## A143152.P3905602575243380346

`∑{d}[n+1, A006530(A068794(#))]`
-/

namespace A143152.P3905602575243380346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006530 (A068794 d).toNat

end

end A143152.P3905602575243380346

/-! ## A143152.P17054355127474307867

`∑{d}[A003961(n+1), A117365(#)]`
-/

namespace A143152.P17054355127474307867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117365 d

end

end A143152.P17054355127474307867

/-! ## A143152.P3992448872339276945

`∑{d}[n+1, A074828(A285109(#))]`
-/

namespace A143152.P3992448872339276945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074828 (A285109 d).toNat

end

end A143152.P3992448872339276945

/-! ## A143152.P667797149826602850

`∑{d}[n+1, A074828(#²)]`
-/

namespace A143152.P667797149826602850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074828 (d ^ 2)

end

end A143152.P667797149826602850

/-! ## A143152.P1039946282161437939

`∑{d}[n+1, A107286(#²)]`
-/

namespace A143152.P1039946282161437939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A107286 (d ^ 2)

end

end A143152.P1039946282161437939

/-! ## A143152.P7768921177272992008

`∑{d}[n+1, A082067(#²)]`
-/

namespace A143152.P7768921177272992008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082067 (d ^ 2)

end

end A143152.P7768921177272992008

/-! ## A143152.P9517543303367943711

`∑{d}[n+1, A014673(#²)]`
-/

namespace A143152.P9517543303367943711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014673 (d ^ 2)

end

end A143152.P9517543303367943711

/-! ## A143152.P5125241408417399010

`∑{d}[n+1, A249739(#²)]`
-/

namespace A143152.P5125241408417399010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A249739 (d ^ 2)

end

end A143152.P5125241408417399010

/-!
# A143153: Triangle read by rows, A054525 * (A020639 * 0^(n-k)), 1<=k<=n.

The programs for A143153, there is no canonical definition to state claims against.
-/

/-! ## A143153.P7724088284005228171

`A054525(n+1)*A143151(n+1)`
-/

namespace A143153.P7724088284005228171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A143151 (n + 1)

end

end A143153.P7724088284005228171

/-! ## A143153.P535157961164363751

`A020639(A002260(n+1))*A054525(n+1)`
-/

namespace A143153.P535157961164363751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A143153.P535157961164363751

/-! ## A143153.P2360296983813895324

`A020639(A002262(n)+1)*A054525(n+1)`
-/

namespace A143153.P2360296983813895324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002262 n + 1).toNat * A054525 (n + 1)

end

end A143153.P2360296983813895324

/-! ## A143153.P17702926176995551514

`A020639(A050873(n+1))*A054525(n+1)`
-/

namespace A143153.P17702926176995551514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A050873 (n + 1)).toNat * A054525 (n + 1)

end

end A143153.P17702926176995551514

/-! ## A143153.P15454524833269672002

`A008683(A010766(n+1))*A143151(n+1)`
-/

namespace A143153.P15454524833269672002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A143151 (n + 1)

end

end A143153.P15454524833269672002

/-! ## A143153.P15139461997198456430

`A020639(A112544(n+1))*A054525(n+1)`
-/

namespace A143153.P15139461997198456430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A112544 (n + 1)).toNat * A054525 (n + 1)

end

end A143153.P15139461997198456430

/-! ## A143153.P11282437936909251340

`A020639(A123275(n+1))*A054525(n+1)`
-/

namespace A143153.P11282437936909251340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123275 (n + 1)).toNat * A054525 (n + 1)

end

end A143153.P11282437936909251340

/-! ## A143153.P2579651520029851110

`A008683(A049834(n+1))*A143151(n+1)`
-/

namespace A143153.P2579651520029851110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049834 (n + 1)).toNat * A143151 (n + 1)

end

end A143153.P2579651520029851110

/-! ## A143153.P15472136994009130205

`A008683(A051537(n+1))*A143151(n+1)`
-/

namespace A143153.P15472136994009130205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051537 (n + 1)).toNat * A143151 (n + 1)

end

end A143153.P15472136994009130205

/-! ## A143153.P9647409488261104884

`A008683(A054531(n+1))*A143151(n+1)`
-/

namespace A143153.P9647409488261104884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054531 (n + 1)).toNat * A143151 (n + 1)

end

end A143153.P9647409488261104884

/-! ## A143153.P12129247357850194289

`A020639(A133819(n+1))*A054525(n+1)`
-/

namespace A143153.P12129247357850194289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133819 (n + 1)).toNat * A054525 (n + 1)

end

end A143153.P12129247357850194289

/-! ## A143153.P3805000070044122887

`A020639(A165998(A002262(n)))*A054525(n+1)`
-/

namespace A143153.P3805000070044122887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A165998 (A002262 n).toNat).toNat * A054525 (n + 1)

end

end A143153.P3805000070044122887

/-!
# A143154: E.g.f. A(x) satisfies A(x) = x + log(1 - A(x))^2.

The programs for A143154, there is no canonical definition to state claims against.
-/

/-! ## A143154.P4622527848017049643

`A138275(n)-A352131(A160239(n))`
-/

namespace A143154.P4622527848017049643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138275 n - A352131 (A160239 n).toNat

end

end A143154.P4622527848017049643

/-!
# A143156: Triangle read by rows, T(n,k) = Sum_{j=k..n} A001511(j); = A000012 * (A001511 * 0^(n-k)) * A000012; 1<=k<=n.

The programs for A143156, the canonical program `A143156.P13654177420567867739` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143156 has offset 1).

The definition of A143156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143156.P13654177420567867739

`A005187(row(n)+1)-A005187(col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A143156

/-- `A005187(row(n)+1)-A005187(col(n))` -/
def P13654177420567867739.Spec : Prop :=
  ∀ n, P13654177420567867739.a n = A143156 (n + 1)

theorem P13654177420567867739.correct : P13654177420567867739.Spec := by
  intro n
  simp only [A143156, Nat.add_sub_cancel]

end A143156

/-! ## A143156.P563485988642735094

`val(A336601(round(sqrt(2*(n+1)))²+2*(n+1)), 2)`
-/

namespace A143156.P563485988642735094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336601 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ)).toNat).toNat 2

end

end A143156.P563485988642735094

namespace A143156

/-- `val(A336601(round(sqrt(2*(n+1)))²+2*(n+1)), 2)` -/
def P563485988642735094.Spec : Prop :=
  ∀ n, (P563485988642735094.a n : ℤ) = A143156 (n + 1)

end A143156

/-! ## A143156.P4470635069530311714

`val(A092582((round(sqrt(2*(n+1)))+1)²+2*n+1), 2)`
-/

namespace A143156.P4470635069530311714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A092582 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat).toNat 2

end

end A143156.P4470635069530311714

namespace A143156

/-- `val(A092582((round(sqrt(2*(n+1)))+1)²+2*n+1), 2)` -/
def P4470635069530311714.Spec : Prop :=
  ∀ n, (P4470635069530311714.a n : ℤ) = A143156 (n + 1)

end A143156

/-! ## A143156.P8851368369495279378

`val(A173333(A185869(n+1)), 2)`
-/

namespace A143156.P8851368369495279378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173333 (A185869 (n + 1)).toNat).toNat 2

end

end A143156.P8851368369495279378

namespace A143156

/-- `val(A173333(A185869(n+1)), 2)` -/
def P8851368369495279378.Spec : Prop :=
  ∀ n, (P8851368369495279378.a n : ℤ) = A143156 (n + 1)

end A143156

/-! ## A143156.P14222019049537424620

`A005187(A002024(n+1))-A005187(A002262(n))`
-/

namespace A143156.P14222019049537424620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A002024 (n + 1)).toNat - A005187 (A002262 n).toNat

end

end A143156.P14222019049537424620

namespace A143156

/-- `A005187(A002024(n+1))-A005187(A002262(n))` -/
def P14222019049537424620.Spec : Prop :=
  ∀ n, P14222019049537424620.a n = A143156 (n + 1)

end A143156

/-! ## A143156.P6807013543019531730

`A005187(A002024(n+1))-A046645(A059268(n))`
-/

namespace A143156.P6807013543019531730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A002024 (n + 1)).toNat - A046645 (A059268 n).toNat

end

end A143156.P6807013543019531730

namespace A143156

/-- `A005187(A002024(n+1))-A046645(A059268(n))` -/
def P6807013543019531730.Spec : Prop :=
  ∀ n, P6807013543019531730.a n = A143156 (n + 1)

end A143156

/-!
# A143157: Partial sums of A091512.

The programs for A143157, the canonical program `A143157.P1478917444832126743` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143157 has offset 0).

The definition of A143157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143157.P607114490364393123

`A249153(n)/2`
-/

namespace A143157.P607114490364393123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249153 n : ℚ) / 2

end

end A143157.P607114490364393123

namespace A143157

/-- `A249153(n)/2` -/
def P607114490364393123.Spec : Prop :=
  ∀ n, P607114490364393123.a n = (A143157 n : ℚ)

end A143157

/-! ## A143157.P1478917444832126743

`A000217(n)+A249152(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143157

/-- `A000217(n)+A249152(n)` -/
def P1478917444832126743.Spec : Prop :=
  ∀ n, P1478917444832126743.a n = A143157 n

theorem P1478917444832126743.correct : P1478917444832126743.Spec := by
  intro n
  simp only [A143157]

end A143157

/-! ## A143157.P10728913894761204052

`A249152(2*n)/2`
-/

namespace A143157.P10728913894761204052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249152 (2 * n) : ℚ) / 2

end

end A143157.P10728913894761204052

namespace A143157

/-- `A249152(2*n)/2` -/
def P10728913894761204052.Spec : Prop :=
  ∀ n, P10728913894761204052.a n = (A143157 n : ℚ)

end A143157

/-! ## A143157.P7597348972881598210

`∑[n]+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A143157.P7597348972881598210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A143157.P7597348972881598210

namespace A143157

/-- `∑[n]+2*a(floor(n/2))` -/
def P7597348972881598210.Spec : Prop :=
  ∀ n, (P7597348972881598210.a n : ℤ) = A143157 n

end A143157

/-! ## A143157.P16913055218957759398

`a(n-1)+n*val(2*n, 2)` with `a(0)=0`
-/

namespace A143157.P16913055218957759398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * SequenceMachineLib.valuation (2 * n) 2

end

end A143157.P16913055218957759398

namespace A143157

/-- `a(n-1)+n*val(2*n, 2)` -/
def P16913055218957759398.Spec : Prop :=
  ∀ n, (P16913055218957759398.a n : ℤ) = A143157 n

end A143157

/-! ## A143157.P3830527242629451087

`∑[(val(n+1, 2)+1)*(n+1)]-(val(n+1, 2)+1)*(n+1)`
-/

namespace A143157.P3830527242629451087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((SequenceMachineLib.valuation (n + 1) 2 + 1) * (n + 1) : ℤ)

end

end A143157.P3830527242629451087

namespace A143157

/-- `∑[(val(n+1, 2)+1)*(n+1)]-(val(n+1, 2)+1)*(n+1)` -/
def P3830527242629451087.Spec : Prop :=
  ∀ n, P3830527242629451087.a n = A143157 n

end A143157

/-! ## A143157.P2932249125034720700

`∑[n*sqrt(A123726(n))]`
-/

namespace A143157.P2932249125034720700
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A123726 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P2932249125034720700

namespace A143157

/-- `∑[n*sqrt(A123726(n))]` -/
def P2932249125034720700.Spec : Prop :=
  ∀ n, P2932249125034720700.a n = (A143157 n : ℝ)

end A143157

/-! ## A143157.P7389341484727330640

`∑[n*(2-A088705(n))]`
-/

namespace A143157.P7389341484727330640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A088705 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P7389341484727330640

namespace A143157

/-- `∑[n*(2-A088705(n))]` -/
def P7389341484727330640.Spec : Prop :=
  ∀ n, P7389341484727330640.a n = A143157 n

end A143157

/-! ## A143157.P9109915888739812719

`∑[n*val(A004277(n), 2)]`
-/

namespace A143157.P9109915888739812719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A004277 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P9109915888739812719

namespace A143157

/-- `∑[n*val(A004277(n), 2)]` -/
def P9109915888739812719.Spec : Prop :=
  ∀ n, (P9109915888739812719.a n : ℤ) = A143157 n

end A143157

/-! ## A143157.P16944054915236645990

`∑[n*val(A008458(n), 2)]`
-/

namespace A143157.P16944054915236645990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A008458 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P16944054915236645990

namespace A143157

/-- `∑[n*val(A008458(n), 2)]` -/
def P16944054915236645990.Spec : Prop :=
  ∀ n, (P16944054915236645990.a n : ℤ) = A143157 n

end A143157

/-! ## A143157.P1390986759307557328

`∑[n*val(A255177(n), 2)]`
-/

namespace A143157.P1390986759307557328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P1390986759307557328

namespace A143157

/-- `∑[n*val(A255177(n), 2)]` -/
def P1390986759307557328.Spec : Prop :=
  ∀ n, (P1390986759307557328.a n : ℤ) = A143157 n

end A143157

/-! ## A143157.P14056616083659952367

`∑[n*(n-A093049(n))]`
-/

namespace A143157.P14056616083659952367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A093049 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P14056616083659952367

namespace A143157

/-- `∑[n*(n-A093049(n))]` -/
def P14056616083659952367.Spec : Prop :=
  ∀ n, P14056616083659952367.a n = A143157 n

end A143157

/-! ## A143157.P6837362921950113116

`∑[n*(A089080(n+1)-1)]`
-/

namespace A143157.P6837362921950113116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A089080 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P6837362921950113116

namespace A143157

/-- `∑[n*(A089080(n+1)-1)]` -/
def P6837362921950113116.Spec : Prop :=
  ∀ n, P6837362921950113116.a n = A143157 n

end A143157

/-! ## A143157.P15895231837784884211

`A187059(n)+A122247(n)`
-/

namespace A143157.P15895231837784884211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + A122247 n

end

end A143157.P15895231837784884211

namespace A143157

/-- `A187059(n)+A122247(n)` -/
def P15895231837784884211.Spec : Prop :=
  ∀ n, P15895231837784884211.a n = A143157 n

end A143157

/-! ## A143157.P2591850828434968256

`A249153(A004526(n))+∑[n]`
-/

namespace A143157.P2591850828434968256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 (A004526 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143157.P2591850828434968256

namespace A143157

/-- `A249153(A004526(n))+∑[n]` -/
def P2591850828434968256.Spec : Prop :=
  ∀ n, P2591850828434968256.a n = A143157 n

end A143157

/-! ## A143157.P16970884390175574225

`∑[n*(A007814(A302436(n))+1)]`
-/

namespace A143157.P16970884390175574225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007814 (A302436 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P16970884390175574225

namespace A143157

/-- `∑[n*(A007814(A302436(n))+1)]` -/
def P16970884390175574225.Spec : Prop :=
  ∀ n, P16970884390175574225.a n = A143157 n

end A143157

/-! ## A143157.P6196849785723015310

`∑[A091512(n+1)]-A091512(n+1)`
-/

namespace A143157.P6196849785723015310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091512 (n + 1)

end

end A143157.P6196849785723015310

namespace A143157

/-- `∑[A091512(n+1)]-A091512(n+1)` -/
def P6196849785723015310.Spec : Prop :=
  ∀ n, P6196849785723015310.a n = A143157 n

end A143157

/-! ## A143157.P6579151843060349109

`∑[n*A001511(A080079(n+1)+1)]`
-/

namespace A143157.P6579151843060349109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001511 (A080079 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P6579151843060349109

namespace A143157

/-- `∑[n*A001511(A080079(n+1)+1)]` -/
def P6579151843060349109.Spec : Prop :=
  ∀ n, P6579151843060349109.a n = A143157 n

end A143157

/-! ## A143157.P7595431847188143606

`A249153(n)-A000217(n)-A249152(n)`
-/

namespace A143157.P7595431847188143606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 n - A000217 n - A249152 n

end

end A143157.P7595431847188143606

namespace A143157

/-- `A249153(n)-A000217(n)-A249152(n)` -/
def P7595431847188143606.Spec : Prop :=
  ∀ n, P7595431847188143606.a n = A143157 n

end A143157

/-! ## A143157.P10107354496318286647

`∑[n*A001222(A207790(n+1))]`
-/

namespace A143157.P10107354496318286647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A207790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143157.P10107354496318286647

namespace A143157

/-- `∑[n*A001222(A207790(n+1))]` -/
def P10107354496318286647.Spec : Prop :=
  ∀ n, P10107354496318286647.a n = A143157 n

end A143157

/-!
# A143158: Triangle read by rows, T(n,k) = Sum_{j=k..n} mu(j).

The programs for A143158, there is no canonical definition to state claims against.
-/

/-! ## A143158.P4089262805994335816

`char[∑[n]]-A143537(A187829(n+1))`
-/

namespace A143158.P4089262805994335816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A143537 (A187829 (n + 1)).toNat

end

end A143158.P4089262805994335816

/-! ## A143158.P11543859546751342136

`A010051(A066117(n+1))-A143537(n+1)`
-/

namespace A143158.P11543859546751342136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A066117 (n + 1)).toNat - A143537 (n + 1)

end

end A143158.P11543859546751342136

/-! ## A143158.P15044281201601007607

`A099563(A348950(2*n+1))-A104324(n)`
-/

namespace A143158.P15044281201601007607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A348950 (2 * n + 1)).toNat - A104324 n

end

end A143158.P15044281201601007607

/-!
# A143161: Expansion of chi(-x)^2 * chi(-x^2) in powers of x where chi() is a Ramanujan theta function.

The programs for A143161, there is no canonical definition to state claims against.
-/

/-! ## A143161.P12800840902866355297

`Δ[or(2, n)]*A225853(n)`
-/

namespace A143161.P12800840902866355297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A225853 n

end

end A143161.P12800840902866355297

/-! ## A143161.P16374286146614919400

`A033999(n)*A225853(n)`
-/

namespace A143161.P16374286146614919400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A225853 n

end

end A143161.P16374286146614919400

/-! ## A143161.P1189049849279114798

`A087960(n)*A225853(n)`
-/

namespace A143161.P1189049849279114798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A225853 n

end

end A143161.P1189049849279114798

/-! ## A143161.P5532936766614314372

`A094267(n)*A225853(n)`
-/

namespace A143161.P5532936766614314372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A225853 n

end

end A143161.P5532936766614314372

/-! ## A143161.P9255626399275649839

`A219977(n)*A225853(n)`
-/

namespace A143161.P9255626399275649839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A225853 n

end

end A143161.P9255626399275649839

/-! ## A143161.P12187852487799715471

`A071935(n+1)*A225853(n)`
-/

namespace A143161.P12187852487799715471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A225853 n

end

end A143161.P12187852487799715471

/-! ## A143161.P11124916632668118991

`A225853(n)*A309873(n+1)`
-/

namespace A143161.P11124916632668118991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225853 n * A309873 (n + 1)

end

end A143161.P11124916632668118991

/-! ## A143161.P12270561789225147839

`(A004442(n)-n)*A225853(n)`
-/

namespace A143161.P12270561789225147839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A225853 n

end

end A143161.P12270561789225147839

/-! ## A143161.P12206475599963468716

`Δ[-A035263(n+1)]*A225853(n)`
-/

namespace A143161.P12206475599963468716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A035263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A225853 n

end

end A143161.P12206475599963468716

/-! ## A143161.P10582504584111211758

`Δ[A035263(2*(n+1))]*A225853(n)`
-/

namespace A143161.P10582504584111211758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A225853 n

end

end A143161.P10582504584111211758

/-! ## A143161.P13274867205512390094

`A057077(n+1)*A225853(n)`
-/

namespace A143161.P13274867205512390094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A225853 n

end

end A143161.P13274867205512390094

/-! ## A143161.P8695548383019454198

`Δ[A003484(n+1)]*A225853(n)`
-/

namespace A143161.P8695548383019454198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A225853 n

end

end A143161.P8695548383019454198

/-! ## A143161.P5616559094372229495

`A225853(n)/A057077(2*n)`
-/

namespace A143161.P5616559094372229495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225853 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A143161.P5616559094372229495

/-!
# A143164: Numbers with digitsum 13, in increasing order.

The programs for A143164, the canonical program `A143164.P3614239325576593876` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143164 has offset 1).

The definition of A143164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143164.P3614239325576593876

`∩[9*n+4, A028840(n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143164

/-- `∩[9*n+4, A028840(n+2)]` -/
def P3614239325576593876.Spec : Prop :=
  ∀ n, (P3614239325576593876.a n : ℤ) = A143164 (n + 1)

theorem P3614239325576593876.correct : P3614239325576593876.Spec := by
  intro n
  simp only [A143164, Nat.add_sub_cancel]

end A143164

/-! ## A143164.P9670409948070466703

`∩[A028840(n+1), A017209(n)]`
-/

namespace A143164.P9670409948070466703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143164.P9670409948070466703

namespace A143164

/-- `∩[A028840(n+1), A017209(n)]` -/
def P9670409948070466703.Spec : Prop :=
  ∀ n, (P9670409948070466703.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P6256840920177936667

`∩[A028840(n+1), A017221(n)-1]`
-/

namespace A143164.P6256840920177936667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143164.P6256840920177936667

namespace A143164

/-- `∩[A028840(n+1), A017221(n)-1]` -/
def P6256840920177936667.Spec : Prop :=
  ∀ n, (P6256840920177936667.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P13691583310027627994

`A228915(a(abs(1-n)))` with `a(0)=49`
-/

namespace A143164.P13691583310027627994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [49] fun n a =>
  A228915 (a |1 - (n : ℤ)|.toNat).toNat

end

end A143164.P13691583310027627994

namespace A143164

/-- `A228915(a(abs(1-n)))` -/
def P13691583310027627994.Spec : Prop :=
  ∀ n, P13691583310027627994.a n = A143164 (n + 1)

end A143164

/-! ## A143164.P6750243863567976957

`eq[13, A007953(n)]`
-/

namespace A143164.P6750243863567976957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143164.P6750243863567976957

namespace A143164

/-- `eq[13, A007953(n)]` -/
def P6750243863567976957.Spec : Prop :=
  ∀ n, (P6750243863567976957.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P18284156648985951083

`eq[2, A169805(n)/13]`
-/

namespace A143164.P18284156648985951083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A143164.P18284156648985951083

namespace A143164

/-- `eq[2, A169805(n)/13]` -/
def P18284156648985951083.Spec : Prop :=
  ∀ n, (P18284156648985951083.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P1899880961723097618

`eq[n+13, A062028(n)]`
-/

namespace A143164.P1899880961723097618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143164.P1899880961723097618

namespace A143164

/-- `eq[n+13, A062028(n)]` -/
def P1899880961723097618.Spec : Prop :=
  ∀ n, (P1899880961723097618.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P203238512323255875

`eq[13, A006370(A169805(n))]`
-/

namespace A143164.P203238512323255875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143164.P203238512323255875

namespace A143164

/-- `eq[13, A006370(A169805(n))]` -/
def P203238512323255875.Spec : Prop :=
  ∀ n, (P203238512323255875.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P10382277981065936876

`eq[A070373(n), A136614(n)]`
-/

namespace A143164.P10382277981065936876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P10382277981065936876

namespace A143164

/-- `eq[A070373(n), A136614(n)]` -/
def P10382277981065936876.Spec : Prop :=
  ∀ n, (P10382277981065936876.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P13848277537296327513

`eq[A070385(n), A136614(n)]`
-/

namespace A143164.P13848277537296327513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P13848277537296327513

namespace A143164

/-- `eq[A070385(n), A136614(n)]` -/
def P13848277537296327513.Spec : Prop :=
  ∀ n, (P13848277537296327513.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P1752959645230948679

`eq[A040156(n), A169805(n)]`
-/

namespace A143164.P1752959645230948679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P1752959645230948679

namespace A143164

/-- `eq[A040156(n), A169805(n)]` -/
def P1752959645230948679.Spec : Prop :=
  ∀ n, (P1752959645230948679.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P6479557596644349941

`eq[A053837(n), A167373(n)]`
-/

namespace A143164.P6479557596644349941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P6479557596644349941

namespace A143164

/-- `eq[A053837(n), A167373(n)]` -/
def P6479557596644349941.Spec : Prop :=
  ∀ n, (P6479557596644349941.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P10921076476184827380

`eq[A057147(n), A168105(n)]`
-/

namespace A143164.P10921076476184827380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P10921076476184827380

namespace A143164

/-- `eq[A057147(n), A168105(n)]` -/
def P10921076476184827380.Spec : Prop :=
  ∀ n, (P10921076476184827380.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P3030826651455415620

`eq[A122481(n), A168100(n)]`
-/

namespace A143164.P3030826651455415620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P3030826651455415620

namespace A143164

/-- `eq[A122481(n), A168100(n)]` -/
def P3030826651455415620.Spec : Prop :=
  ∀ n, (P3030826651455415620.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P11418006966708796085

`eq[A122481(n), A271491(n)]`
-/

namespace A143164.P11418006966708796085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P11418006966708796085

namespace A143164

/-- `eq[A122481(n), A271491(n)]` -/
def P11418006966708796085.Spec : Prop :=
  ∀ n, (P11418006966708796085.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P12446176101287812167

`eq[2, A187150(A169805(n)+2)]`
-/

namespace A143164.P12446176101287812167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187150 (A169805 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143164.P12446176101287812167

namespace A143164

/-- `eq[2, A187150(A169805(n)+2)]` -/
def P12446176101287812167.Spec : Prop :=
  ∀ n, (P12446176101287812167.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P6327986018551952660

`eq[2, A249121(A169805(n)+2)]`
-/

namespace A143164.P6327986018551952660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 (A169805 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143164.P6327986018551952660

namespace A143164

/-- `eq[2, A249121(A169805(n)+2)]` -/
def P6327986018551952660.Spec : Prop :=
  ∀ n, (P6327986018551952660.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P566026144436551016

`eq[A136614(n)+1, A040072(n)]`
-/

namespace A143164.P566026144436551016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P566026144436551016

namespace A143164

/-- `eq[A136614(n)+1, A040072(n)]` -/
def P566026144436551016.Spec : Prop :=
  ∀ n, (P566026144436551016.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P11808416694863836073

`eq[A070412(n)+1, A169805(n)]`
-/

namespace A143164.P11808416694863836073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070412 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P11808416694863836073

namespace A143164

/-- `eq[A070412(n)+1, A169805(n)]` -/
def P11808416694863836073.Spec : Prop :=
  ∀ n, (P11808416694863836073.a n : ℤ) = A143164 (n + 1)

end A143164

/-! ## A143164.P3920385919317212103

`eq[A053837(n), A244550(n+1)]`
-/

namespace A143164.P3920385919317212103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143164.P3920385919317212103

namespace A143164

/-- `eq[A053837(n), A244550(n+1)]` -/
def P3920385919317212103.Spec : Prop :=
  ∀ n, (P3920385919317212103.a n : ℤ) = A143164 (n + 1)

end A143164

/-!
# A143165: Expansion of the exponential generating function arcsin(2*x)/(2*(1-2*x)^(3/2)).

The programs for A143165, there is no canonical definition to state claims against.
-/

/-! ## A143165.P17180078353329984197

`A024199(n+1)-A003148(n)`
-/

namespace A143165.P17180078353329984197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 (n + 1) - A003148 n

end

end A143165.P17180078353329984197

/-! ## A143165.P16149131188289831177

`A001147(n+1)-(A024200(n+1)+A003148(n))`
-/

namespace A143165.P16149131188289831177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - (A024200 (n + 1) + A003148 n)

end

end A143165.P16149131188289831177

/-! ## A143165.P16688796033179464704

`A167576(n+1)-(A135457(n+1)+A003148(n))`
-/

namespace A143165.P16688796033179464704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167576 (n + 1) - (A135457 (n + 1) + A003148 n)

end

end A143165.P16688796033179464704

/-! ## A143165.P680701412891768990

`A167584(∑[n]+1)-A003148(n)`
-/

namespace A143165.P680701412891768990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A003148 n

end

end A143165.P680701412891768990

/-! ## A143165.P16490030517077768318

`record[A167584(n+1)]-A003148(n)`
-/

namespace A143165.P16490030517077768318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A003148 n

end

end A143165.P16490030517077768318

/-!
# A143166: a(n) = n*(8*n^2 + 1)/3.

The programs for A143166, the canonical program `A143166.P18077000197895037110` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143166 has offset 0).

The definition of A143166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n²+1)/3` (program `A143166.P707203917477749108`, by `A143166.P707203917477749108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143166.P707203917477749108

`n*(8*n²+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143166.P707203917477749108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (8 * n ^ 2 + 1) : ℚ) / 3

end

end A143166.P707203917477749108

namespace A143166

/-- `n*(8*n²+1)/3` -/
def P707203917477749108.Spec : Prop :=
  ∀ n, P707203917477749108.a n = (A143166 n : ℚ)

theorem P707203917477749108.correct : P707203917477749108.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A143166, Nat.add_sub_cancel, A143166.P707203917477749108.a, A143166.P18077000197895037110.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A143166, Nat.add_sub_cancel, A143166.P707203917477749108.a, A143166.P18077000197895037110.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A143166

/-! ## A143166.P18077000197895037110

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=22, a(3)=73`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143166

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18077000197895037110.Spec : Prop :=
  ∀ n, P18077000197895037110.a n = A143166 n

theorem P18077000197895037110.correct : P18077000197895037110.Spec := by
  intro n
  simp only [A143166]

end A143166

/-! ## A143166.P5391061445191960010

`2*C(Δ[n²], 3)+n`
-/

namespace A143166.P5391061445191960010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + n

end

end A143166.P5391061445191960010

namespace A143166

/-- `2*C(Δ[n²], 3)+n` -/
def P5391061445191960010.Spec : Prop :=
  ∀ n, (P5391061445191960010.a n : ℤ) = A143166 n

end A143166

/-! ## A143166.P14305954336773036274

`∑[xor(1, record[(2*n²)^(n%2)])]`
-/

namespace A143166.P14305954336773036274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143166.P14305954336773036274

namespace A143166

/-- `∑[xor(1, record[(2*n²)^(n%2)])]` -/
def P14305954336773036274.Spec : Prop :=
  ∀ n, (P14305954336773036274.a n : ℤ) = A143166 n

end A143166

/-! ## A143166.P17115204279547500050

`∑[xor(1, record[(2*n²)^and(1, n)])]`
-/

namespace A143166.P17115204279547500050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143166.P17115204279547500050

namespace A143166

/-- `∑[xor(1, record[(2*n²)^and(1, n)])]` -/
def P17115204279547500050.Spec : Prop :=
  ∀ n, (P17115204279547500050.a n : ℤ) = A143166 n

end A143166

/-! ## A143166.P15007172423849706366

`C(Δ[n²], 3)+C(Δ[n²], 3)+n`
-/

namespace A143166.P15007172423849706366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + (Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 + n)

end

end A143166.P15007172423849706366

namespace A143166

/-- `C(Δ[n²], 3)+C(Δ[n²], 3)+n` -/
def P15007172423849706366.Spec : Prop :=
  ∀ n, (P15007172423849706366.a n : ℤ) = A143166 n

end A143166

/-! ## A143166.P13946547489312415577

`2*∑[∑[ogf((2x+4x^2+2x^3)/(1-2x+x^2))]]-n`
-/

namespace A143166.P13946547489312415577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A143166.P13946547489312415577

namespace A143166

/-- `2*∑[∑[ogf((2x+4x^2+2x^3)/(1-2x+x^2))]]-n` -/
def P13946547489312415577.Spec : Prop :=
  ∀ n, P13946547489312415577.a n = A143166 n

end A143166

/-! ## A143166.P7588470974457801206

`∑[4*C(2*n, 2)+1]-(2*n²+1)`
-/

namespace A143166.P7588470974457801206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n ^ 2 + 1 : ℤ)

end

end A143166.P7588470974457801206

namespace A143166

/-- `∑[4*C(2*n, 2)+1]-(2*n²+1)` -/
def P7588470974457801206.Spec : Prop :=
  ∀ n, P7588470974457801206.a n = A143166 n

end A143166

/-! ## A143166.P11785140695739237875

`A259110(n)+n`
-/

namespace A143166.P11785140695739237875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n + (n : ℤ)

end

end A143166.P11785140695739237875

namespace A143166

/-- `A259110(n)+n` -/
def P11785140695739237875.Spec : Prop :=
  ∀ n, P11785140695739237875.a n = A143166 n

end A143166

/-! ## A143166.P1154351239974849758

`A171272(n)-(n+1)`
-/

namespace A143166.P1154351239974849758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n - (n + 1 : ℤ)

end

end A143166.P1154351239974849758

namespace A143166

/-- `A171272(n)-(n+1)` -/
def P1154351239974849758.Spec : Prop :=
  ∀ n, P1154351239974849758.a n = A143166 n

end A143166

/-! ## A143166.P16849797459320647039

`2*A000447(n)+n`
-/

namespace A143166.P16849797459320647039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000447 n + (n : ℤ)

end

end A143166.P16849797459320647039

namespace A143166

/-- `2*A000447(n)+n` -/
def P16849797459320647039.Spec : Prop :=
  ∀ n, P16849797459320647039.a n = A143166 n

end A143166

/-! ## A143166.P13919804601884038121

`A063523(n)+2*n`
-/

namespace A143166.P13919804601884038121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n + (2 * n : ℤ)

end

end A143166.P13919804601884038121

namespace A143166

/-- `A063523(n)+2*n` -/
def P13919804601884038121.Spec : Prop :=
  ∀ n, P13919804601884038121.a n = A143166 n

end A143166

/-! ## A143166.P16701088552461708256

`2*A035597(n)-n`
-/

namespace A143166.P16701088552461708256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035597 n - (n : ℤ)

end

end A143166.P16701088552461708256

namespace A143166

/-- `2*A035597(n)-n` -/
def P16701088552461708256.Spec : Prop :=
  ∀ n, P16701088552461708256.a n = A143166 n

end A143166

/-! ## A143166.P6619882056557730358

`4*A005900(n)-n`
-/

namespace A143166.P6619882056557730358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005900 n - (n : ℤ)

end

end A143166.P6619882056557730358

namespace A143166

/-- `4*A005900(n)-n` -/
def P6619882056557730358.Spec : Prop :=
  ∀ n, P6619882056557730358.a n = A143166 n

end A143166

/-! ## A143166.P13539330225831731192

`n/3*A081585(n)`
-/

namespace A143166.P13539330225831731192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A081585 n : ℚ)

end

end A143166.P13539330225831731192

namespace A143166

/-- `n/3*A081585(n)` -/
def P13539330225831731192.Spec : Prop :=
  ∀ n, P13539330225831731192.a n = (A143166 n : ℚ)

theorem P13539330225831731192.correct : P13539330225831731192.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A143166, Nat.add_sub_cancel, A143166.P13539330225831731192.a, A143166.P18077000197895037110.a, A081585, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A143166, Nat.add_sub_cancel, A143166.P13539330225831731192.a, A143166.P18077000197895037110.a, A081585, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A143166

/-! ## A143166.P15264926931965397756

`A385730(n)-Δ[n²]`
-/

namespace A143166.P15264926931965397756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385730 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A143166.P15264926931965397756

namespace A143166

/-- `A385730(n)-Δ[n²]` -/
def P15264926931965397756.Spec : Prop :=
  ∀ n, P15264926931965397756.a n = A143166 n

end A143166

/-! ## A143166.P9347461286359102396

`∑[A077591(n)+1]-2`
-/

namespace A143166.P9347461286359102396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A143166.P9347461286359102396

namespace A143166

/-- `∑[A077591(n)+1]-2` -/
def P9347461286359102396.Spec : Prop :=
  ∀ n, P9347461286359102396.a n = A143166 n

end A143166

/-! ## A143166.P1059850807193485296

`A258582(n)-2*n²`
-/

namespace A143166.P1059850807193485296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n - (2 * n ^ 2 : ℤ)

end

end A143166.P1059850807193485296

namespace A143166

/-- `A258582(n)-2*n²` -/
def P1059850807193485296.Spec : Prop :=
  ∀ n, P1059850807193485296.a n = A143166 n

end A143166

/-! ## A143166.P13654935968413246005

`4*(A006331(n)-n²)-n`
-/

namespace A143166.P13654935968413246005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A006331 n - (n ^ 2 : ℤ)) - (n : ℤ)

end

end A143166.P13654935968413246005

namespace A143166

/-- `4*(A006331(n)-n²)-n` -/
def P13654935968413246005.Spec : Prop :=
  ∀ n, P13654935968413246005.a n = A143166 n

end A143166

/-! ## A143166.P1103839546483764639

`A015237(n)+A006331(n)`
-/

namespace A143166.P1103839546483764639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + A006331 n

end

end A143166.P1103839546483764639

namespace A143166

/-- `A015237(n)+A006331(n)` -/
def P1103839546483764639.Spec : Prop :=
  ∀ n, P1103839546483764639.a n = A143166 n

end A143166

/-!
# A143167: Second column of triangle A000369: |S2(-3;n+2,2)|.

The programs for A143167, the canonical program `A143167.P11382581816715993167` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143167 has offset 0).

The definition of A143167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143167.P11382581816715993167

`(8*n+1)*a(n-1)-2*(4*n-1)*(2*n-1)*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143167

/-- `(8*n+1)*a(n-1)-2*(4*n-1)*(2*n-1)*a(n-2)` -/
def P11382581816715993167.Spec : Prop :=
  ∀ n, P11382581816715993167.a n = A143167 n

theorem P11382581816715993167.correct : P11382581816715993167.Spec := by
  intro n
  simp only [A143167]

end A143167

/-! ## A143167.P15699964817444289780

`∏[4*n+3]-∏[4*n+2]`
-/

namespace A143167.P15699964817444289780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A143167.P15699964817444289780

namespace A143167

/-- `∏[4*n+3]-∏[4*n+2]` -/
def P15699964817444289780.Spec : Prop :=
  ∀ n, P15699964817444289780.a n = A143167 n

end A143167

/-! ## A143167.P8246491808340310336

`A000369(∑[n+1]+2)`
-/

namespace A143167.P8246491808340310336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A143167.P8246491808340310336

namespace A143167

/-- `A000369(∑[n+1]+2)` -/
def P8246491808340310336.Spec : Prop :=
  ∀ n, P8246491808340310336.a n = A143167 n

end A143167

/-! ## A143167.P2392578011446304249

`record[A000369(∑[A275437(n)])]`
-/

namespace A143167.P2392578011446304249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143167.P2392578011446304249

namespace A143167

/-- `record[A000369(∑[A275437(n)])]` -/
def P2392578011446304249.Spec : Prop :=
  ∀ n, P2392578011446304249.a n = A143167 n

end A143167

/-! ## A143167.P8942917827778547438

`record[or(A000369(n+1), A103452(n))]`
-/

namespace A143167.P8942917827778547438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000369 (n + 1)) (A103452 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143167.P8942917827778547438

namespace A143167

/-- `record[or(A000369(n+1), A103452(n))]` -/
def P8942917827778547438.Spec : Prop :=
  ∀ n, P8942917827778547438.a n = A143167 n

end A143167

/-! ## A143167.P17247763046681726466

`record[gcd(A000369(n+1), A144217(n+1))]`
-/

namespace A143167.P17247763046681726466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000369 (n + 1)) (A144217 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143167.P17247763046681726466

namespace A143167

/-- `record[gcd(A000369(n+1), A144217(n+1))]` -/
def P17247763046681726466.Spec : Prop :=
  ∀ n, (P17247763046681726466.a n : ℤ) = A143167 n

end A143167

/-!
# A143168: Third column of triangle A000369: |S2(-3; n+3, 3)|.

The programs for A143168, there is no canonical definition to state claims against.
-/

/-! ## A143168.P14973719042259255835

`A000369(∑[n+2]+4)`
-/

namespace A143168.P14973719042259255835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A143168.P14973719042259255835

/-! ## A143168.P15714668403991002081

`A000369(A167614(n+1))^ceil(acot(n))`
-/

namespace A143168.P15714668403991002081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000369 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A143168.P15714668403991002081

/-! ## A143168.P11439312889089029149

`gcd(A000038(n), A000369(A167614(n+1)))`
-/

namespace A143168.P11439312889089029149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000369 (A167614 (n + 1)).toNat)

end

end A143168.P11439312889089029149

/-! ## A143168.P9144304258335101272

`lcm(A000034(n), A000369(A167614(n+1)))`
-/

namespace A143168.P9144304258335101272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A000369 (A167614 (n + 1)).toNat)

end

end A143168.P9144304258335101272

/-! ## A143168.P13651516816381505333

`A355820(2*(n+2))+A000369(A167614(n+1))`
-/

namespace A143168.P13651516816381505333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (2 * (n + 2)) + A000369 (A167614 (n + 1)).toNat

end

end A143168.P13651516816381505333

/-!
# A143169: Fourth column of triangle A000369: |S2(-3;n+4,4)|.

The programs for A143169, there is no canonical definition to state claims against.
-/

/-! ## A143169.P1931018669618444206

`A049029(∑[n+2]+4)`
-/

namespace A143169.P1931018669618444206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049029 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A143169.P1931018669618444206

/-! ## A143169.P3078095002034141767

`A049029(A167614(n+1))^ceil(acot(n))`
-/

namespace A143169.P3078095002034141767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049029 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A143169.P3078095002034141767

/-! ## A143169.P8294947574344543472

`A049029(A167614(n+1))+A000007(n+1)`
-/

namespace A143169.P8294947574344543472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049029 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A143169.P8294947574344543472

/-! ## A143169.P17299872976205026272

`A000369(∑[n+3]+7)`
-/

namespace A143169.P17299872976205026272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A143169.P17299872976205026272

/-!
# A143170: Fifth column of triangle A000369: |S2(-3;n+5,5)|.

The programs for A143170, there is no canonical definition to state claims against.
-/

/-! ## A143170.P4813868162847661735

`A000369(A167499(n+3))`
-/

namespace A143170.P4813868162847661735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (A167499 (n + 3)).toNat

end

end A143170.P4813868162847661735

/-! ## A143170.P6529529260402584261

`A000369(A155212(n)+13)`
-/

namespace A143170.P6529529260402584261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (A155212 n + 13).toNat

end

end A143170.P6529529260402584261

/-! ## A143170.P10859427218762202191

`A000369(A056000(n)+15)`
-/

namespace A143170.P10859427218762202191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (A056000 n + 15).toNat

end

end A143170.P10859427218762202191

/-! ## A143170.P7317310050817174078

`A000369(A167614(n+3)+2)`
-/

namespace A143170.P7317310050817174078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (A167614 (n + 3) + 2).toNat

end

end A143170.P7317310050817174078

/-! ## A143170.P424743398200388109

`A000369(A000217(n+4)+6-gcd(n, n+1))`
-/

namespace A143170.P424743398200388109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000369 (A000217 (n + 4) + 6 - (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A143170.P424743398200388109

/-!
# A143171: Partition number array, called M32(-1), related to A001497(n-1,m-1) = |S2(-1;n,m)| (generalized Stirling2 triangle).

The programs for A143171, there is no canonical definition to state claims against.
-/

/-! ## A143171.P14125951375693696536

`A036040(n+1)*A144269(n+1)`
-/

namespace A143171.P14125951375693696536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144269 (n + 1)

end

end A143171.P14125951375693696536

/-! ## A143171.P5153226033745326480

`A124794(A185974(n+1))*A144269(n+1)`
-/

namespace A143171.P5153226033745326480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144269 (n + 1)

end

end A143171.P5153226033745326480

/-! ## A143171.P15668421532420184739

`A036038(n+1)/A096162(n+1)*A144269(n+1)`
-/

namespace A143171.P15668421532420184739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P15668421532420184739

/-! ## A143171.P10793948162563497163

`A036039(n+1)/A107106(n+1)*A144269(n+1)`
-/

namespace A143171.P10793948162563497163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P10793948162563497163

/-! ## A143171.P6146622518929402792

`A122454(n+1)/A098546(n+1)*A144269(n+1)`
-/

namespace A143171.P6146622518929402792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P6146622518929402792

/-! ## A143171.P11969458287984160542

`A049019(n+1)*A144269(n+1)/A178803(n+1)`
-/

namespace A143171.P11969458287984160542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049019 (n + 1) * A144269 (n + 1) : ℚ) / (A178803 (n + 1) : ℚ)

end

end A143171.P11969458287984160542

/-! ## A143171.P4047062737579452582

`A049009(n+1)/A178888(n+1)*A144269(n+1)`
-/

namespace A143171.P4047062737579452582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P4047062737579452582

/-! ## A143171.P14877080771620901324

`A130561(n+1)/A134133(n+1)*A144269(n+1)`
-/

namespace A143171.P14877080771620901324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P14877080771620901324

/-! ## A143171.P12197831344238471585

`A318810(2*A185974(n+1))/A096162(n+1)*A144269(n+1)`
-/

namespace A143171.P12197831344238471585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P12197831344238471585

/-! ## A143171.P5625046266943714277

`A049009(n+1)/(A035206(n+1)*A096162(n+1))*A144269(n+1)`
-/

namespace A143171.P5625046266943714277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A035206 (n + 1) * A096162 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A143171.P5625046266943714277

/-!
# A143172: Partition number array, called M32(-2), related to A004747(n,m) = |S2(-2;n,m)| (generalized Stirling triangle).

The programs for A143172, there is no canonical definition to state claims against.
-/

/-! ## A143172.P5071783362943993852

`A036040(n+1)*A144274(n+1)`
-/

namespace A143172.P5071783362943993852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144274 (n + 1)

end

end A143172.P5071783362943993852

/-! ## A143172.P1564649558315025933

`A124794(A185974(n+1))*A144274(n+1)`
-/

namespace A143172.P1564649558315025933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144274 (n + 1)

end

end A143172.P1564649558315025933

/-! ## A143172.P2272870328240894608

`A036038(n+1)/A096162(n+1)*A144274(n+1)`
-/

namespace A143172.P2272870328240894608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A143172.P2272870328240894608

/-! ## A143172.P770933390158466946

`A036039(n+1)/A107106(n+1)*A144274(n+1)`
-/

namespace A143172.P770933390158466946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A143172.P770933390158466946

/-! ## A143172.P637258054916844138

`A122454(n+1)/A098546(n+1)*A144274(n+1)`
-/

namespace A143172.P637258054916844138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A143172.P637258054916844138

/-! ## A143172.P8493494693991897606

`A049019(n+1)*A144274(n+1)/A178803(n+1)`
-/

namespace A143172.P8493494693991897606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049019 (n + 1) * A144274 (n + 1) : ℚ) / (A178803 (n + 1) : ℚ)

end

end A143172.P8493494693991897606

/-! ## A143172.P17769648335008276264

`A049009(n+1)/A178888(n+1)*A144274(n+1)`
-/

namespace A143172.P17769648335008276264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A143172.P17769648335008276264

/-! ## A143172.P15876792146662363434

`A130561(n+1)/A134133(n+1)*A144274(n+1)`
-/

namespace A143172.P15876792146662363434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A143172.P15876792146662363434

/-! ## A143172.P16223306110710421270

`A143171(n+1)/A144269(n+1)*A144274(n+1)`
-/

namespace A143172.P16223306110710421270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A144269 (n + 1) : ℚ) * (A144274 (n + 1) : ℚ)

end

end A143172.P16223306110710421270

/-! ## A143172.P2940021078557344763

`A144274(n+1)*A144353(n+1)/A144880(n+1)`
-/

namespace A143172.P2940021078557344763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144274 (n + 1) * A144353 (n + 1) : ℚ) / (A144880 (n + 1) : ℚ)

end

end A143172.P2940021078557344763

/-!
# A143173: Partition number array, called M32(-3), related to A000369(n,m) = |S2(-3;n,m)| (generalized Stirling triangle).

The programs for A143173, there is no canonical definition to state claims against.
-/

/-! ## A143173.P15370330304274731884

`A036040(n+1)*A144279(n+1)`
-/

namespace A143173.P15370330304274731884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144279 (n + 1)

end

end A143173.P15370330304274731884

/-! ## A143173.P14138773207895246152

`A124794(A185974(n+1))*A144279(n+1)`
-/

namespace A143173.P14138773207895246152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144279 (n + 1)

end

end A143173.P14138773207895246152

/-! ## A143173.P1387991520806003025

`A036038(n+1)/A096162(n+1)*A144279(n+1)`
-/

namespace A143173.P1387991520806003025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144279 (n + 1) : ℚ)

end

end A143173.P1387991520806003025

/-! ## A143173.P12400282444111681287

`A036039(n+1)/A107106(n+1)*A144279(n+1)`
-/

namespace A143173.P12400282444111681287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144279 (n + 1) : ℚ)

end

end A143173.P12400282444111681287

/-! ## A143173.P1323472247581146153

`A122454(n+1)/A098546(n+1)*A144279(n+1)`
-/

namespace A143173.P1323472247581146153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A144279 (n + 1) : ℚ)

end

end A143173.P1323472247581146153

/-!
# A143174: a(1)=1. a(n) = smallest positive multiple of n such that |a(n)-a(n-1)| is prime.

The programs for A143174, there is no canonical definition to state claims against.
-/

/-! ## A143174.P3000861002881008012

`(n+1)*A067513(A245306(n))`
-/

namespace A143174.P3000861002881008012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067513 (A245306 n).toNat

end

end A143174.P3000861002881008012

/-!
# A143175: a(n)=|A143174(n+1)-A143174(n)|.

The programs for A143175, there is no canonical definition to state claims against.
-/

/-! ## A143175.P227064152414745283

`abs(Δ[A143174(n+1)])`
-/

namespace A143175.P227064152414745283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A143175.P227064152414745283

/-! ## A143175.P3504974327332380584

`A006530(lcm(2, Δ[A143174(n+1)]))`
-/

namespace A143175.P3504974327332380584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A143175.P3504974327332380584

/-! ## A143175.P13708385981701437500

`∑{d}[Δ[A143174(n+1)], A000010(#)]`
-/

namespace A143175.P13708385981701437500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A143175.P13708385981701437500

/-! ## A143175.P2243378908365330617

`∏{d}[Δ[A143174(n+1)], A006530(#)]`
-/

namespace A143175.P2243378908365330617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A143175.P2243378908365330617

/-! ## A143175.P8944883530519073924

`∏{d}[Δ[A143174(n+1)], A014963(#)]`
-/

namespace A143175.P8944883530519073924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A143175.P8944883530519073924

/-! ## A143175.P18417911714093079976

`∏{p}[Δ[A143174(n+1)], A000203(#)]-1`
-/

namespace A143175.P18417911714093079976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 p - 1

end

end A143175.P18417911714093079976

/-! ## A143175.P7415675538484693338

`∏{d}[A143174(n+2)-A143174(n+1), #]`
-/

namespace A143175.P7415675538484693338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 2) - A143174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A143175.P7415675538484693338

/-! ## A143175.P8463592450223665979

`A006530(Δ[A143174(n+1)]²)`
-/

namespace A143175.P8463592450223665979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A143175.P8463592450223665979

/-!
# A143176: a(1)=1. a(n) is the smallest positive multiple of n that has more divisors than a(n-1) has.

The programs for A143176, there is no canonical definition to state claims against.
-/

/-! ## A143176.P17314608398554839857

`(n+1)*A143177(n+1)`
-/

namespace A143176.P17314608398554839857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143177 (n + 1)

end

end A143176.P17314608398554839857

/-! ## A143176.P7667181440119871835

`A225627(n+1)+A051767(A007947(2*(n+2)))`
-/

namespace A143176.P7667181440119871835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225627 (n + 1) + A051767 (A007947 (2 * (n + 2))).toNat

end

end A143176.P7667181440119871835

/-!
# A143177: a(n) = A143176(n)/n.

The programs for A143177, there is no canonical definition to state claims against.
-/

/-! ## A143177.P4466569578487163460

`A143176(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143177.P4466569578487163460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143176 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A143177.P4466569578487163460

/-!
# A143178: a(1)=1. a(n) is the smallest positive multiple of n that has more, or the same number of, divisors than a(n-1) has.

The programs for A143178, there is no canonical definition to state claims against.
-/

/-! ## A143178.P8108711530553742870

`(n+1)*A143179(n+1)`
-/

namespace A143178.P8108711530553742870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143179 (n + 1)

end

end A143178.P8108711530553742870

/-! ## A143178.P14045869944423469981

`abs(xor(n, -1)*A143179(A008619(2*n)))`
-/

namespace A143178.P14045869944423469981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A143179 (A008619 (2 * n)).toNat|

end

end A143178.P14045869944423469981

/-! ## A143178.P14725492980806865565

`(n+1)*or(A002262(A184955(n)), A206941(n+1))`
-/

namespace A143178.P14725492980806865565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor (A002262 (A184955 n).toNat) (A206941 (n + 1))

end

end A143178.P14725492980806865565

/-! ## A143178.P11792612898153431947

`A118759(lcm(n+1, A187243(n+1)))`
-/

namespace A143178.P11792612898153431947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lcm (n + 1 : ℤ) (A187243 (n + 1)))

end

end A143178.P11792612898153431947

/-! ## A143178.P14804069571785789267

`(n+1)*A349867(n+1)%dr(A136538(n+1))`
-/

namespace A143178.P14804069571785789267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A349867 (n + 1)) (SequenceMachineLib.digitalRoot (A136538 (n + 1)) : ℤ)

end

end A143178.P14804069571785789267

/-!
# A143179: a(n) = A143178(n)/n.

The programs for A143179, there is no canonical definition to state claims against.
-/

/-! ## A143179.P10440049671082806217

`A143178(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143179.P10440049671082806217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143178 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A143179.P10440049671082806217

/-! ## A143179.P15693820301534096391

`or(A002262(A184955(n)), A206941(n+1))`
-/

namespace A143179.P15693820301534096391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A184955 n).toNat) (A206941 (n + 1))

end

end A143179.P15693820301534096391

/-! ## A143179.P8235873017115090071

`or(A002262(A184955(n)), A327790(n+1))`
-/

namespace A143179.P8235873017115090071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A184955 n).toNat) (A327790 (n + 1))

end

end A143179.P8235873017115090071

/-! ## A143179.P7806699334448253486

`A123175(A376336(n+1))`
-/

namespace A143179.P7806699334448253486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123175 (A376336 (n + 1)).toNat

end

end A143179.P7806699334448253486

/-! ## A143179.P11617548331433960219

`A378444(A396508(n+1)+A129258(n+1))`
-/

namespace A143179.P11617548331433960219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378444 (A396508 (n + 1) + A129258 (n + 1)).toNat

end

end A143179.P11617548331433960219

/-!
# A143180: Triangle read by rows: T(n, k) = (n-k+1)^3 + (k+1)^3 - 3*(n-k+1)*(k+1).

The programs for A143180, the canonical program `A143180.P13706047247856790113` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143180 has offset 0).

The definition of A143180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)^3+(col(n)+1)^3-3*(row(n)-col(n)+1)*(col(n)+1)` (program `A143180.P13706047247856790113`, by `A143180.P13706047247856790113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143180.P13706047247856790113

`(row(n)-col(n)+1)^3+(col(n)+1)^3-3*(row(n)-col(n)+1)*(col(n)+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143180

/-- `(row(n)-col(n)+1)^3+(col(n)+1)^3-3*(row(n)-col(n)+1)*(col(n)+1)` -/
def P13706047247856790113.Spec : Prop :=
  ∀ n, P13706047247856790113.a n = A143180 n

theorem P13706047247856790113.correct : P13706047247856790113.Spec := by
  intro n
  simp only [A143180]

end A143180

/-!
# A143181: Sequence of a(n) such that : define p(0)=2 the first prime, then p(n+1)=least prime p of the form a(n)*p(n)*(a(n)*p(n)+1)-1 with a twin prime p+2.

The programs for A143181, there is no canonical definition to state claims against.
-/

/-! ## A143181.P4612684858747999545

`A054576(A053535(n))`
-/

namespace A143181.P4612684858747999545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A053535 n).toNat

end

end A143181.P4612684858747999545

/-!
# A143182: Triangle T(n,m) = 1 + abs(n-2*m), read by rows, 0<=m<=n.

The programs for A143182, the canonical program `A143182.P5915452531029149759` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143182 has offset 0).

The definition of A143182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+abs(row(n)-2*col(n))` (program `A143182.P5915452531029149759`, by `A143182.P5915452531029149759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143182.P5915452531029149759

`1+abs(row(n)-2*col(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143182

/-- `1+abs(row(n)-2*col(n))` -/
def P5915452531029149759.Spec : Prop :=
  ∀ n, P5915452531029149759.a n = A143182 n

theorem P5915452531029149759.correct : P5915452531029149759.Spec := by
  intro n
  simp only [A143182]

end A143182

/-! ## A143182.P5925710329567856791

`abs(∑[2*n]%comp[∑[n]]-n)+1`
-/

namespace A143182.P5925710329567856791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)| + 1

end

end A143182.P5925710329567856791

namespace A143182

/-- `abs(∑[2*n]%comp[∑[n]]-n)+1` -/
def P5925710329567856791.Spec : Prop :=
  ∀ n, P5925710329567856791.a n = A143182 n

end A143182

/-! ## A143182.P15394116613027620915

`abs(2*n+1-∑[char[∑[n]]]²)+1`
-/

namespace A143182.P15394116613027620915
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)| + 1

end

end A143182.P15394116613027620915

namespace A143182

/-- `abs(2*n+1-∑[char[∑[n]]]²)+1` -/
def P15394116613027620915.Spec : Prop :=
  ∀ n, P15394116613027620915.a n = A143182 n

end A143182

/-! ## A143182.P3036559641912956689

`and(A049581(n)+1, -1)`
-/

namespace A143182.P3036559641912956689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049581 n + 1) (-1)

end

end A143182.P3036559641912956689

namespace A143182

/-- `and(A049581(n)+1, -1)` -/
def P3036559641912956689.Spec : Prop :=
  ∀ n, P3036559641912956689.a n = A143182 n

end A143182

/-! ## A143182.P9566888420953299768

`ceil(sqrt(A114327(n)²+1))`
-/

namespace A143182.P9566888420953299768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A114327 n ^ 2 + 1 : ℝ)⌉

end

end A143182.P9566888420953299768

namespace A143182

/-- `ceil(sqrt(A114327(n)²+1))` -/
def P9566888420953299768.Spec : Prop :=
  ∀ n, P9566888420953299768.a n = A143182 n

end A143182

/-! ## A143182.P4987328077771685090

`A000027(A049581(n)+1)`
-/

namespace A143182.P4987328077771685090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049581 n + 1).toNat

end

end A143182.P4987328077771685090

namespace A143182

/-- `A000027(A049581(n)+1)` -/
def P4987328077771685090.Spec : Prop :=
  ∀ n, P4987328077771685090.a n = A143182 n

end A143182

/-! ## A143182.P11059745302483820659

`A008619(2*A049581(n))`
-/

namespace A143182.P11059745302483820659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A049581 n).toNat

end

end A143182.P11059745302483820659

namespace A143182

/-- `A008619(2*A049581(n))` -/
def P11059745302483820659.Spec : Prop :=
  ∀ n, P11059745302483820659.a n = A143182 n

end A143182

/-! ## A143182.P1055214663588961120

`A027656(2*A049581(n))`
-/

namespace A143182.P1055214663588961120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A049581 n).toNat

end

end A143182.P1055214663588961120

namespace A143182

/-- `A027656(2*A049581(n))` -/
def P1055214663588961120.Spec : Prop :=
  ∀ n, P1055214663588961120.a n = A143182 n

end A143182

/-! ## A143182.P6920946908809256195

`A080513(2*A049581(n))`
-/

namespace A143182.P6920946908809256195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A049581 n).toNat

end

end A143182.P6920946908809256195

namespace A143182

/-- `A080513(2*A049581(n))` -/
def P6920946908809256195.Spec : Prop :=
  ∀ n, P6920946908809256195.a n = A143182 n

end A143182

/-! ## A143182.P6974161878000923926

`gcd(A101037(n+1), A185914(n+1))`
-/

namespace A143182.P6974161878000923926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101037 (n + 1)) (A185914 (n + 1))

end

end A143182.P6974161878000923926

namespace A143182

/-- `gcd(A101037(n+1), A185914(n+1))` -/
def P6974161878000923926.Spec : Prop :=
  ∀ n, (P6974161878000923926.a n : ℤ) = A143182 n

end A143182

/-! ## A143182.P11087166923210750522

`ceil(sqrt((A004736(n+1)-1-A002262(n))²+1))`
-/

namespace A143182.P11087166923210750522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A004736 (n + 1) - 1 - A002262 n) ^ 2 + 1 : ℝ)⌉

end

end A143182.P11087166923210750522

namespace A143182

/-- `ceil(sqrt((A004736(n+1)-1-A002262(n))²+1))` -/
def P11087166923210750522.Spec : Prop :=
  ∀ n, P11087166923210750522.a n = A143182 n

end A143182

/-! ## A143182.P11635529942183812871

`A004736(A000124(A049581(n)))`
-/

namespace A143182.P11635529942183812871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000124 (A049581 n).toNat).toNat

end

end A143182.P11635529942183812871

namespace A143182

/-- `A004736(A000124(A049581(n)))` -/
def P11635529942183812871.Spec : Prop :=
  ∀ n, P11635529942183812871.a n = A143182 n

end A143182

/-! ## A143182.P18359438208969002259

`A049581(A182834(n+1))`
-/

namespace A143182.P18359438208969002259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A182834 (n + 1)).toNat

end

end A143182.P18359438208969002259

namespace A143182

/-- `A049581(A182834(n+1))` -/
def P18359438208969002259.Spec : Prop :=
  ∀ n, P18359438208969002259.a n = A143182 n

end A143182

/-! ## A143182.P11785755923612421483

`A049581(A183572(n+1))`
-/

namespace A143182.P11785755923612421483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A183572 (n + 1)).toNat

end

end A143182.P11785755923612421483

namespace A143182

/-- `A049581(A183572(n+1))` -/
def P11785755923612421483.Spec : Prop :=
  ∀ n, P11785755923612421483.a n = A143182 n

end A143182

/-! ## A143182.P17115624309085664391

`A049581(A102515(n)+n)`
-/

namespace A143182.P17115624309085664391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A102515 n + (n : ℤ)).toNat

end

end A143182.P17115624309085664391

namespace A143182

/-- `A049581(A102515(n)+n)` -/
def P17115624309085664391.Spec : Prop :=
  ∀ n, P17115624309085664391.a n = A143182 n

end A143182

/-! ## A143182.P7631976940285965557

`A008619(A253146(n+1))`
-/

namespace A143182.P7631976940285965557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253146 (n + 1)).toNat

end

end A143182.P7631976940285965557

namespace A143182

/-- `A008619(A253146(n+1))` -/
def P7631976940285965557.Spec : Prop :=
  ∀ n, P7631976940285965557.a n = A143182 n

end A143182

/-! ## A143182.P32449329813635763

`abs(A286150(n)-A286108(A286150(n))+1)`
-/

namespace A143182.P32449329813635763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286150 n - A286108 (A286150 n).toNat + 1|

end

end A143182.P32449329813635763

namespace A143182

/-- `abs(A286150(n)-A286108(A286150(n))+1)` -/
def P32449329813635763.Spec : Prop :=
  ∀ n, P32449329813635763.a n = A143182 n

end A143182

/-! ## A143182.P5103247478859490412

`A004738(A001614(n+1))`
-/

namespace A143182.P5103247478859490412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A001614 (n + 1)).toNat

end

end A143182.P5103247478859490412

namespace A143182

/-- `A004738(A001614(n+1))` -/
def P5103247478859490412.Spec : Prop :=
  ∀ n, P5103247478859490412.a n = A143182 n

end A143182

/-! ## A143182.P16820831858468082278

`A004738(A060734(n+1))`
-/

namespace A143182.P16820831858468082278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A060734 (n + 1)).toNat

end

end A143182.P16820831858468082278

namespace A143182

/-- `A004738(A060734(n+1))` -/
def P16820831858468082278.Spec : Prop :=
  ∀ n, P16820831858468082278.a n = A143182 n

end A143182

/-! ## A143182.P5864504883560197557

`A004738(A060736(n+1))`
-/

namespace A143182.P5864504883560197557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A060736 (n + 1)).toNat

end

end A143182.P5864504883560197557

namespace A143182

/-- `A004738(A060736(n+1))` -/
def P5864504883560197557.Spec : Prop :=
  ∀ n, P5864504883560197557.a n = A143182 n

end A143182

/-!
# A143183: Triangle T(n,k) = 1 + (2+n)*abs(n-2*k), read by rows, for 0 <= k <= n.

The programs for A143183, the canonical program `A143183.P4860879403334896835` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143183 has offset 0).

The definition of A143183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(2+row(n))*abs(row(n)-2*col(n))` (program `A143183.P4860879403334896835`, by `A143183.P4860879403334896835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143183.P4860879403334896835

`1+(2+row(n))*abs(row(n)-2*col(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143183

/-- `1+(2+row(n))*abs(row(n)-2*col(n))` -/
def P4860879403334896835.Spec : Prop :=
  ∀ n, P4860879403334896835.a n = A143183 n

theorem P4860879403334896835.correct : P4860879403334896835.Spec := by
  intro n
  simp only [A143183]

end A143183

/-! ## A143183.P18372997924841707965

`(comp[∑[n]]-n)*A049581(n)+1`
-/

namespace A143183.P18372997924841707965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A049581 n + 1

end

end A143183.P18372997924841707965

namespace A143183

/-- `(comp[∑[n]]-n)*A049581(n)+1` -/
def P18372997924841707965.Spec : Prop :=
  ∀ n, P18372997924841707965.a n = A143183 n

end A143183

/-! ## A143183.P872570311006409034

`abs((n-comp[∑[n]])*A114327(n))+1`
-/

namespace A143183.P872570311006409034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) * A114327 n| + 1

end

end A143183.P872570311006409034

namespace A143183

/-- `abs((n-comp[∑[n]])*A114327(n))+1` -/
def P872570311006409034.Spec : Prop :=
  ∀ n, P872570311006409034.a n = A143183 n

end A143183

/-! ## A143183.P15849292495756991144

`abs(round(sqrt(2*(n+1)))²-(2*n+1))*A003057(n+2)+1`
-/

namespace A143183.P15849292495756991144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| * A003057 (n + 2) + 1

end

end A143183.P15849292495756991144

namespace A143183

/-- `abs(round(sqrt(2*(n+1)))²-(2*n+1))*A003057(n+2)+1` -/
def P15849292495756991144.Spec : Prop :=
  ∀ n, P15849292495756991144.a n = A143183 n

end A143183

/-! ## A143183.P12493937209500251940

`abs(A055461(n+1)-A133819(n+1))+1`
-/

namespace A143183.P12493937209500251940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055461 (n + 1) - A133819 (n + 1)| + 1

end

end A143183.P12493937209500251940

namespace A143183

/-- `abs(A055461(n+1)-A133819(n+1))+1` -/
def P12493937209500251940.Spec : Prop :=
  ∀ n, P12493937209500251940.a n = A143183 n

end A143183

/-! ## A143183.P9520119979640199013

`A051125(n+1)²+1-A106314(n+1)`
-/

namespace A143183.P9520119979640199013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) ^ 2 + (1 - A106314 (n + 1))

end

end A143183.P9520119979640199013

namespace A143183

/-- `A051125(n+1)²+1-A106314(n+1)` -/
def P9520119979640199013.Spec : Prop :=
  ∀ n, P9520119979640199013.a n = A143183 n

end A143183

/-! ## A143183.P14672118239054371058

`abs(A004736(n+1)²-A133819(n+1))+1`
-/

namespace A143183.P14672118239054371058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) ^ 2 - A133819 (n + 1)| + 1

end

end A143183.P14672118239054371058

namespace A143183

/-- `abs(A004736(n+1)²-A133819(n+1))+1` -/
def P14672118239054371058.Spec : Prop :=
  ∀ n, P14672118239054371058.a n = A143183 n

end A143183

/-! ## A143183.P14275918574114447909

`A209297(A143182(n)+A057944(n))`
-/

namespace A143183.P14275918574114447909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209297 (A143182 n + A057944 n).toNat

end

end A143183.P14275918574114447909

namespace A143183

/-- `A209297(A143182(n)+A057944(n))` -/
def P14275918574114447909.Spec : Prop :=
  ∀ n, P14275918574114447909.a n = A143183 n

end A143183

/-! ## A143183.P11939788612029257075

`1-A001489((comp[∑[n]]-n)*A049581(n))`
-/

namespace A143183.P11939788612029257075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A049581 n).toNat

end

end A143183.P11939788612029257075

namespace A143183

/-- `1-A001489((comp[∑[n]]-n)*A049581(n))` -/
def P11939788612029257075.Spec : Prop :=
  ∀ n, P11939788612029257075.a n = A143183 n

end A143183

/-! ## A143183.P14419621614982476055

`A003057(n+2)*A053188(2*n+1)+1`
-/

namespace A143183.P14419621614982476055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A053188 (2 * n + 1) + 1

end

end A143183.P14419621614982476055

namespace A143183

/-- `A003057(n+2)*A053188(2*n+1)+1` -/
def P14419621614982476055.Spec : Prop :=
  ∀ n, P14419621614982476055.a n = A143183 n

end A143183

/-!
# A143184: Coefficients of a Ramanujan q-series.

The programs for A143184, there is no canonical definition to state claims against.
-/

/-! ## A143184.P7913575938754913227

`A001524(n)+A340659(n)%A001524(n+1)`
-/

namespace A143184.P7913575938754913227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001524 n + Int.tmod (A340659 n) (A001524 (n + 1))

end

end A143184.P7913575938754913227

/-! ## A143184.P11747345784888560744

`A001524(n)+A340659(n)%A015128(n)`
-/

namespace A143184.P11747345784888560744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001524 n + Int.tmod (A340659 n) (A015128 n)

end

end A143184.P11747345784888560744

/-! ## A143184.P13106591890754937953

`A015128(n)-A340658(n)`
-/

namespace A143184.P13106591890754937953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A340658 n

end

end A143184.P13106591890754937953

/-! ## A143184.P5585212751737186593

`abs(A004402(n))-A340658(n)`
-/

namespace A143184.P5585212751737186593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n| - A340658 n

end

end A143184.P5585212751737186593

/-! ## A143184.P10454919494976691708

`∑[A211971(n)]-A340658(n)`
-/

namespace A143184.P10454919494976691708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A340658 n

end

end A143184.P10454919494976691708

/-! ## A143184.P17277156721756918558

`gcd(A000038(n), A004402(n))-A340658(n)`
-/

namespace A143184.P17277156721756918558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A004402 n) : ℤ) - A340658 n

end

end A143184.P17277156721756918558

/-! ## A143184.P6854232668359267873

`A288515(A034856(n+1))-A340658(n)`
-/

namespace A143184.P6854232668359267873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034856 (n + 1)).toNat - A340658 n

end

end A143184.P6854232668359267873

/-!
# A143185: Triangle read by rows: T(n, k) = (1 + abs(n-2*k))*binomial(n,k), with T(n, 0) = T(n, n) = 1.

The programs for A143185, the canonical program `A143185.P1168285322455693736` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143185 has offset 0).

The definition of A143185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143185.P1168285322455693736

`A007318(n)*A008619(A157654(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143185

/-- `A007318(n)*A008619(A157654(n))` -/
def P1168285322455693736.Spec : Prop :=
  ∀ n, P1168285322455693736.a n = A143185 n

theorem P1168285322455693736.correct : P1168285322455693736.Spec := by
  intro n
  simp only [A143185]

end A143185

/-! ## A143185.P7381345303581743485

`A008459(n)/A131830(n)*A143182(n)`
-/

namespace A143185.P7381345303581743485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℚ) / (A131830 n : ℚ) * (A143182 n : ℚ)

end

end A143185.P7381345303581743485

namespace A143185

/-- `A008459(n)/A131830(n)*A143182(n)` -/
def P7381345303581743485.Spec : Prop :=
  ∀ n, P7381345303581743485.a n = (A143185 n : ℚ)

end A143185

/-! ## A143185.P17534473210139310781

`gcd(A131830(n)*A143182(n), A103452(n))`
-/

namespace A143185.P17534473210139310781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131830 n * A143182 n) (A103452 n)

end

end A143185.P17534473210139310781

namespace A143185

/-- `gcd(A131830(n)*A143182(n), A103452(n))` -/
def P17534473210139310781.Spec : Prop :=
  ∀ n, (P17534473210139310781.a n : ℤ) = A143185 n

end A143185

/-! ## A143185.P14815102736853340836

`A007318(n)*A288003(A131816(n))`
-/

namespace A143185.P14815102736853340836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A288003 (A131816 n).toNat

end

end A143185.P14815102736853340836

namespace A143185

/-- `A007318(n)*A288003(A131816(n))` -/
def P14815102736853340836.Spec : Prop :=
  ∀ n, P14815102736853340836.a n = A143185 n

end A143185

/-! ## A143185.P14069569454265530912

`sqrt(A008459(n))*A288003(A131816(n))`
-/

namespace A143185.P14069569454265530912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A288003 (A131816 n).toNat : ℝ)

end

end A143185.P14069569454265530912

namespace A143185

/-- `sqrt(A008459(n))*A288003(A131816(n))` -/
def P14069569454265530912.Spec : Prop :=
  ∀ n, P14069569454265530912.a n = (A143185 n : ℝ)

end A143185

/-! ## A143185.P9835161250623798667

`A097805(A014132(n+1))*A288003(A131816(n))`
-/

namespace A143185.P9835161250623798667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A014132 (n + 1)).toNat * A288003 (A131816 n).toNat

end

end A143185.P9835161250623798667

namespace A143185

/-- `A097805(A014132(n+1))*A288003(A131816(n))` -/
def P9835161250623798667.Spec : Prop :=
  ∀ n, P9835161250623798667.a n = A143185 n

end A143185

/-!
# A143186: A triangle sequence of holes in a triangle sequence numbering of n^3+m^3 (A003325) by comparing the n level to the 2*n level.

The programs for A143186, there is no canonical definition to state claims against.
-/

/-! ## A143186.P12572092570084294332

`A024670(A330928(n+1)+1)`
-/

namespace A143186.P12572092570084294332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (A330928 (n + 1) + 1).toNat

end

end A143186.P12572092570084294332

/-! ## A143186.P15749291824309134840

`A024670(A038106(n+1)+2)`
-/

namespace A143186.P15749291824309134840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (A038106 (n + 1) + 2).toNat

end

end A143186.P15749291824309134840

/-!
# A143187: Triangle read by rows: T(n, k) = f(k) for 1 <= k <= floor(n/2), T(n, k) = f(n-k) for floor(n/2) < k <= n-1, with T(n, 0) = 1, T(n, n) = 1, and f(k) = (1/2)*(3 - (-1)^k)*k.

The programs for A143187, the canonical program `A143187.P15464511713782995700` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143187 has offset 0).

The definition of A143187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143187.P15464511713782995700

`A028310(lcm(2, A004197(n)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143187

/-- `A028310(lcm(2, A004197(n)))` -/
def P15464511713782995700.Spec : Prop :=
  ∀ n, P15464511713782995700.a n = A143187 n

theorem P15464511713782995700.correct : P15464511713782995700.Spec := by
  intro n
  simp only [A143187]

end A143187

/-! ## A143187.P13637775341377522197

`A143188(n)/A007318(n)`
-/

namespace A143187.P13637775341377522197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143188 n : ℚ) / (A007318 n : ℚ)

end

end A143187.P13637775341377522197

namespace A143187

/-- `A143188(n)/A007318(n)` -/
def P13637775341377522197.Spec : Prop :=
  ∀ n, P13637775341377522197.a n = (A143187 n : ℚ)

end A143187

/-! ## A143187.P16756346698414630141

`A065033(lcm(4, 2*A004197(n)))`
-/

namespace A143187.P16756346698414630141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lcm 4 (2 * A004197 n))

end

end A143187.P16756346698414630141

namespace A143187

/-- `A065033(lcm(4, 2*A004197(n)))` -/
def P16756346698414630141.Spec : Prop :=
  ∀ n, P16756346698414630141.a n = A143187 n

end A143187

/-! ## A143187.P6328936890583599414

`A005361(A152714(n)+A152714(n)²)`
-/

namespace A143187.P6328936890583599414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A152714 n + A152714 n ^ 2).toNat

end

end A143187.P6328936890583599414

namespace A143187

/-- `A005361(A152714(n)+A152714(n)²)` -/
def P6328936890583599414.Spec : Prop :=
  ∀ n, P6328936890583599414.a n = A143187 n

end A143187

/-! ## A143187.P2510871842113251146

`A276781(A342766(A087062(n+1)²))`
-/

namespace A143187.P2510871842113251146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A342766 (A087062 (n + 1) ^ 2).toNat).toNat

end

end A143187.P2510871842113251146

namespace A143187

/-- `A276781(A342766(A087062(n+1)²))` -/
def P2510871842113251146.Spec : Prop :=
  ∀ n, P2510871842113251146.a n = A143187 n

end A143187

/-!
# A143188: Triangle read by rows: T(n, k) = f(k) for 1 <= k <= floor(n/2), T(n, k) = f(n-k) for floor(n/2) < k <= n-1, with T(n, 0) = 1, T(n, n) = 1, and f(k) = (1/2)*(3-(-1)^k)*k*binomial(n, k).

The programs for A143188, the canonical program `A143188.P1532405844694989274` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143188 has offset 0).

The definition of A143188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143188.P1532405844694989274

`A007318(n)*A143187(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143188

/-- `A007318(n)*A143187(n)` -/
def P1532405844694989274.Spec : Prop :=
  ∀ n, P1532405844694989274.a n = A143188 n

theorem P1532405844694989274.correct : P1532405844694989274.Spec := by
  intro n
  simp only [A143188]

end A143188

/-! ## A143188.P1611534687916914048

`abs(A108086(n)*A143187(n))`
-/

namespace A143188.P1611534687916914048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A143187 n|

end

end A143188.P1611534687916914048

namespace A143188

/-- `abs(A108086(n)*A143187(n))` -/
def P1611534687916914048.Spec : Prop :=
  ∀ n, P1611534687916914048.a n = A143188 n

end A143188

/-! ## A143188.P14638238514368539279

`abs(A130595(n)*A143187(n))`
-/

namespace A143188.P14638238514368539279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A143187 n|

end

end A143188.P14638238514368539279

namespace A143188

/-- `abs(A130595(n)*A143187(n))` -/
def P14638238514368539279.Spec : Prop :=
  ∀ n, P14638238514368539279.a n = A143188 n

end A143188

/-! ## A143188.P12425232648811968341

`sqrt(A008459(n))*A143187(n)`
-/

namespace A143188.P12425232648811968341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A143187 n : ℝ)

end

end A143188.P12425232648811968341

namespace A143188

/-- `sqrt(A008459(n))*A143187(n)` -/
def P12425232648811968341.Spec : Prop :=
  ∀ n, P12425232648811968341.a n = (A143188 n : ℝ)

end A143188

/-! ## A143188.P1230529148218651971

`Δ[A102363(n)]*A143187(n)`
-/

namespace A143188.P1230529148218651971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A143187 n

end

end A143188.P1230529148218651971

namespace A143188

/-- `Δ[A102363(n)]*A143187(n)` -/
def P1230529148218651971.Spec : Prop :=
  ∀ n, P1230529148218651971.a n = A143188 n

end A143188

/-! ## A143188.P12013397061732908181

`A028326(n)/2*A143187(n)`
-/

namespace A143188.P12013397061732908181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A143187 n : ℚ)

end

end A143188.P12013397061732908181

namespace A143188

/-- `A028326(n)/2*A143187(n)` -/
def P12013397061732908181.Spec : Prop :=
  ∀ n, P12013397061732908181.a n = (A143188 n : ℚ)

theorem P12013397061732908181.correct : P12013397061732908181.Spec := by
  intro n
  simp only [A143188, Nat.add_sub_cancel, A143188.P12013397061732908181.a, A143188.P1532405844694989274.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A143187, A143187.P15464511713782995700.a, A004197, A004197.P2905520585302697030.a, A028310, A028310.P18130301328277559831.a, A003983, A003983.P15269842853270651919.a, A157458, A157458.P16856629470642738053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143188

/-! ## A143188.P9469394431859769501

`A007318(n)*∏{e}[A144464(n), lcm(2, #)]`
-/

namespace A143188.P9469394431859769501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lcm 2 (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ)

end

end A143188.P9469394431859769501

namespace A143188

/-- `A007318(n)*∏{e}[A144464(n), lcm(2, #)]` -/
def P9469394431859769501.Spec : Prop :=
  ∀ n, P9469394431859769501.a n = A143188 n

end A143188

/-! ## A143188.P12759010087546724621

`A026741(A028326(n))*A143187(n)`
-/

namespace A143188.P12759010087546724621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A028326 n).toNat * A143187 n

end

end A143188.P12759010087546724621

namespace A143188

/-- `A026741(A028326(n))*A143187(n)` -/
def P12759010087546724621.Spec : Prop :=
  ∀ n, P12759010087546724621.a n = A143188 n

end A143188

/-!
# A143196: Triangle read by rows: real part of Lerch Phi expansion of p(x,n) = 2^n*(1 - i*x)^(n+1) * LerchPhi(i*x, -n, 1/2).

The programs for A143196, the canonical program `A143196.P8935306253186242278` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143196 has offset 0).

The definition of A143196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143196.P9327809936064301007

`A049310(A112367(n))*A060187(n+1)`
-/

namespace A143196.P9327809936064301007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A112367 n).toNat * A060187 (n + 1)

end

end A143196.P9327809936064301007

namespace A143196

/-- `A049310(A112367(n))*A060187(n+1)` -/
def P9327809936064301007.Spec : Prop :=
  ∀ n, P9327809936064301007.a n = A143196 n

end A143196

/-! ## A143196.P9440541725375239591

`A056594(log2(A059268(n)))*A060187(n+1)`
-/

namespace A143196.P9440541725375239591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A060187 (n + 1)

end

end A143196.P9440541725375239591

namespace A143196

/-- `A056594(log2(A059268(n)))*A060187(n+1)` -/
def P9440541725375239591.Spec : Prop :=
  ∀ n, P9440541725375239591.a n = A143196 n

end A143196

/-! ## A143196.P8935306253186242278

`A060187(n+1)*A117569(A002260(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A143196

/-- `A060187(n+1)*A117569(A002260(n+1))` -/
def P8935306253186242278.Spec : Prop :=
  ∀ n, P8935306253186242278.a n = A143196 n

theorem P8935306253186242278.correct : P8935306253186242278.Spec := by
  intro n
  simp only [A143196]

end A143196

/-! ## A143196.P12500279196834003896

`A056594(A296767(n+1))*A060187(n+1)`
-/

namespace A143196.P12500279196834003896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A296767 (n + 1)).toNat * A060187 (n + 1)

end

end A143196.P12500279196834003896

namespace A143196

/-- `A056594(A296767(n+1))*A060187(n+1)` -/
def P12500279196834003896.Spec : Prop :=
  ∀ n, P12500279196834003896.a n = A143196 n

end A143196

/-! ## A143196.P16733233300527801421

`A060187(n+1)/A007318(n)*A141665(n)`
-/

namespace A143196.P16733233300527801421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) : ℚ) / (A007318 n : ℚ) * (A141665 n : ℚ)

end

end A143196.P16733233300527801421

namespace A143196

/-- `A060187(n+1)/A007318(n)*A141665(n)` -/
def P16733233300527801421.Spec : Prop :=
  ∀ n, P16733233300527801421.a n = (A143196 n : ℚ)

end A143196

/-! ## A143196.P9078679430720664994

`A030201(A059268(n))*A060187(n+1)`
-/

namespace A143196.P9078679430720664994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A059268 n).toNat * A060187 (n + 1)

end

end A143196.P9078679430720664994

namespace A143196

/-- `A030201(A059268(n))*A060187(n+1)` -/
def P9078679430720664994.Spec : Prop :=
  ∀ n, P9078679430720664994.a n = A143196 n

end A143196

/-!
# A143198: Triangle read by rows T(n, k) = n + (n+1)*(k-1)*(k+2)/2.

The programs for A143198, the canonical program `A143198.P3772274350902887636` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143198 has offset 0).

The definition of A143198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143198.P3772274350902887636

`row(n)+(row(n)+1)*(col(n)-1)*(col(n)+2)/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A143198

/-- `row(n)+(row(n)+1)*(col(n)-1)*(col(n)+2)/2` -/
def P3772274350902887636.Spec : Prop :=
  ∀ n, P3772274350902887636.a n = (A143198 n : ℚ)

end A143198

/-! ## A143198.P11209754261043763283

`∑[char[∑[n]]]*A112367(n)-1`
-/

namespace A143198.P11209754261043763283
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A112367 n - 1

end

end A143198.P11209754261043763283

namespace A143198

/-- `∑[char[∑[n]]]*A112367(n)-1` -/
def P11209754261043763283.Spec : Prop :=
  ∀ n, P11209754261043763283.a n = A143198 n

end A143198

/-! ## A143198.P13248187139293175718

`A112367(n)*A123578(n)-1`
-/

namespace A143198.P13248187139293175718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n * A123578 n - 1

end

end A143198.P13248187139293175718

namespace A143198

/-- `A112367(n)*A123578(n)-1` -/
def P13248187139293175718.Spec : Prop :=
  ∀ n, P13248187139293175718.a n = A143198 n

end A143198

/-! ## A143198.P6787696714254014899

`A112367(n)*A130855(n)-1`
-/

namespace A143198.P6787696714254014899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n * A130855 n - 1

end

end A143198.P6787696714254014899

namespace A143198

/-- `A112367(n)*A130855(n)-1` -/
def P6787696714254014899.Spec : Prop :=
  ∀ n, P6787696714254014899.a n = A143198 n

end A143198

/-! ## A143198.P11251324240823830967

`A075362(n+1)/2*A002262(n)-1`
-/

namespace A143198.P11251324240823830967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / 2 * (A002262 n : ℚ) - 1

end

end A143198.P11251324240823830967

namespace A143198

/-- `A075362(n+1)/2*A002262(n)-1` -/
def P11251324240823830967.Spec : Prop :=
  ∀ n, P11251324240823830967.a n = (A143198 n : ℚ)

end A143198

/-! ## A143198.P15327170146883228896

`A000217(A002262(n))*A002024(n+1)-1`
-/

namespace A143198.P15327170146883228896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n).toNat * A002024 (n + 1) - 1

end

end A143198.P15327170146883228896

namespace A143198

/-- `A000217(A002262(n))*A002024(n+1)-1` -/
def P15327170146883228896.Spec : Prop :=
  ∀ n, P15327170146883228896.a n = A143198 n

end A143198

/-! ## A143198.P4429997415197372548

`(A003056(n)+1)*A000217(A002262(n))-1`
-/

namespace A143198.P4429997415197372548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A000217 (A002262 n).toNat - 1

end

end A143198.P4429997415197372548

namespace A143198

/-- `(A003056(n)+1)*A000217(A002262(n))-1` -/
def P4429997415197372548.Spec : Prop :=
  ∀ n, P4429997415197372548.a n = A143198 n

end A143198

/-! ## A143198.P670389459026334347

`A023443(∑[char[∑[n]]]*A112367(n))`
-/

namespace A143198.P670389459026334347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A112367 n).toNat

end

end A143198.P670389459026334347

namespace A143198

/-- `A023443(∑[char[∑[n]]]*A112367(n))` -/
def P670389459026334347.Spec : Prop :=
  ∀ n, P670389459026334347.a n = A143198 n

end A143198

/-! ## A143198.P10256511161131111532

`A023443(A112367(n)*A123578(n))`
-/

namespace A143198.P10256511161131111532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A112367 n * A123578 n).toNat

end

end A143198.P10256511161131111532

namespace A143198

/-- `A023443(A112367(n)*A123578(n))` -/
def P10256511161131111532.Spec : Prop :=
  ∀ n, P10256511161131111532.a n = A143198 n

end A143198

/-! ## A143198.P5591955376665334338

`A023443(A112367(n)*A130855(n))`
-/

namespace A143198.P5591955376665334338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A112367 n * A130855 n).toNat

end

end A143198.P5591955376665334338

namespace A143198

/-- `A023443(A112367(n)*A130855(n))` -/
def P5591955376665334338.Spec : Prop :=
  ∀ n, P5591955376665334338.a n = A143198 n

end A143198

/-! ## A143198.P12640406724613327674

`-A024000(A112367(n)*A130855(n))`
-/

namespace A143198.P12640406724613327674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (A112367 n * A130855 n).toNat

end

end A143198.P12640406724613327674

namespace A143198

/-- `-A024000(A112367(n)*A130855(n))` -/
def P12640406724613327674.Spec : Prop :=
  ∀ n, P12640406724613327674.a n = A143198 n

end A143198

/-!
# A143199: Triangle read by rows: T(n, k) = (n+1)*A000096(k-1) + n if k <= floor(n/2), otherwise T(n, k) = (n+1)*A000096(n-k-1) + n.

The programs for A143199, the canonical program `A143199.P5401882570097877984` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143199 has offset 0).

The definition of A143199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143199.P5401882570097877984

`A143198(A057944(n)+A004197(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143199

/-- `A143198(A057944(n)+A004197(n))` -/
def P5401882570097877984.Spec : Prop :=
  ∀ n, P5401882570097877984.a n = A143199 n

theorem P5401882570097877984.correct : P5401882570097877984.Spec := by
  intro n
  simp only [A143199]

end A143199

/-! ## A143199.P10972660806301027011

`A379396(A147566(n))-1`
-/

namespace A143199.P10972660806301027011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379396 (A147566 n).toNat - 1

end

end A143199.P10972660806301027011

namespace A143199

/-- `A379396(A147566(n))-1` -/
def P10972660806301027011.Spec : Prop :=
  ∀ n, P10972660806301027011.a n = A143199 n

end A143199

/-! ## A143199.P14192281978277423749

`A347762(A174376(n))-2`
-/

namespace A143199.P14192281978277423749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 (A174376 n).toNat - 2

end

end A143199.P14192281978277423749

namespace A143199

/-- `A347762(A174376(n))-2` -/
def P14192281978277423749.Spec : Prop :=
  ∀ n, P14192281978277423749.a n = A143199 n

end A143199

/-! ## A143199.P12779889468130651870

`A359043(A176487(n))-2`
-/

namespace A143199.P12779889468130651870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A176487 n).toNat - 2

end

end A143199.P12779889468130651870

namespace A143199

/-- `A359043(A176487(n))-2` -/
def P12779889468130651870.Spec : Prop :=
  ∀ n, P12779889468130651870.a n = A143199 n

end A143199

/-! ## A143199.P13589420448851076429

`A372982(A173043(n))-2`
-/

namespace A143199.P13589420448851076429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372982 (A173043 n).toNat - 2

end

end A143199.P13589420448851076429

namespace A143199

/-- `A372982(A173043(n))-2` -/
def P13589420448851076429.Spec : Prop :=
  ∀ n, P13589420448851076429.a n = A143199 n

end A143199

