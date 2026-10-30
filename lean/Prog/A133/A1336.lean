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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C014
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
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133600: Row sums of triangle A133599.

The programs for A133600, the canonical program `A133600.P12529369414818298706` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133600 has offset 1).

The definition of A133600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133600.P18442140026656469672

`ogf((1+4x+3x^2)/(1-4x^2))`
-/

namespace A133600.P18442140026656469672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, 0, -4] n

end

end A133600.P18442140026656469672

namespace A133600

/-- `ogf((1+4x+3x^2)/(1-4x^2))` -/
def P18442140026656469672.Spec : Prop :=
  ∀ n, P18442140026656469672.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P12529369414818298706

`4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133600

/-- `4*a(n-2)` -/
def P12529369414818298706.Spec : Prop :=
  ∀ n, (P12529369414818298706.a n : ℤ) = A133600 (n + 1)

theorem P12529369414818298706.correct : P12529369414818298706.Spec := by
  intro n
  simp only [A133600, Nat.add_sub_cancel]

end A133600

/-! ## A133600.P7352951535066381564

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A133600.P7352951535066381564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 7] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A133600.P7352951535066381564

namespace A133600

/-- `a(n-2)/(1/2)²` -/
def P7352951535066381564.Spec : Prop :=
  ∀ n, P7352951535066381564.a n = (A133600 (n + 1) : ℚ)

end A133600

/-! ## A133600.P1491032519277999948

`a(n-2)+lcm(3, a(n-2))` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A133600.P1491032519277999948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 2))

end

end A133600.P1491032519277999948

namespace A133600

/-- `a(n-2)+lcm(3, a(n-2))` -/
def P1491032519277999948.Spec : Prop :=
  ∀ n, (P1491032519277999948.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P3556032710836857256

`A155559(n)+A134683(n)`
-/

namespace A133600.P3556032710836857256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A134683 n

end

end A133600.P3556032710836857256

namespace A133600

/-- `A155559(n)+A134683(n)` -/
def P3556032710836857256.Spec : Prop :=
  ∀ n, P3556032710836857256.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P3990220912640163575

`A042950(n)+Δ[A061547(n)]`
-/

namespace A133600.P3990220912640163575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + (f1 (n + 1) - f1 n)

end

end A133600.P3990220912640163575

namespace A133600

/-- `A042950(n)+Δ[A061547(n)]` -/
def P3990220912640163575.Spec : Prop :=
  ∀ n, P3990220912640163575.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P10244165108202730021

`A003945(n)+Δ[A305750(n)]`
-/

namespace A133600.P10244165108202730021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + (f1 (n + 1) - f1 n)

end

end A133600.P10244165108202730021

namespace A133600

/-- `A003945(n)+Δ[A305750(n)]` -/
def P10244165108202730021.Spec : Prop :=
  ∀ n, P10244165108202730021.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P18280953475582634095

`A134683(n)+2*A131577(n)`
-/

namespace A133600.P18280953475582634095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n + 2 * A131577 n

end

end A133600.P18280953475582634095

namespace A133600

/-- `A134683(n)+2*A131577(n)` -/
def P18280953475582634095.Spec : Prop :=
  ∀ n, P18280953475582634095.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P13794817226060094159

`∩[A025619(n+1), A029746(n)]`
-/

namespace A133600.P13794817226060094159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P13794817226060094159

namespace A133600

/-- `∩[A025619(n+1), A029746(n)]` -/
def P13794817226060094159.Spec : Prop :=
  ∀ n, (P13794817226060094159.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P4413255196848642272

`∩[A025619(n+1), A029748(n)]`
-/

namespace A133600.P4413255196848642272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P4413255196848642272

namespace A133600

/-- `∩[A025619(n+1), A029748(n)]` -/
def P4413255196848642272.Spec : Prop :=
  ∀ n, (P4413255196848642272.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P15933242648863603268

`∩[A025619(n+1), A029749(n)]`
-/

namespace A133600.P15933242648863603268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P15933242648863603268

namespace A133600

/-- `∩[A025619(n+1), A029749(n)]` -/
def P15933242648863603268.Spec : Prop :=
  ∀ n, (P15933242648863603268.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P9363604175581578785

`∩[A029749(2*n), A029748(n)]`
-/

namespace A133600.P9363604175581578785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P9363604175581578785

namespace A133600

/-- `∩[A029749(2*n), A029748(n)]` -/
def P9363604175581578785.Spec : Prop :=
  ∀ n, (P9363604175581578785.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P15496598806396231094

`A029749(2*comp[Δ[A029714(n)]])`
-/

namespace A133600.P15496598806396231094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A133600.P15496598806396231094

namespace A133600

/-- `A029749(2*comp[Δ[A029714(n)]])` -/
def P15496598806396231094.Spec : Prop :=
  ∀ n, P15496598806396231094.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P11579516079716807337

`∩[A025619(n+1), A029750(n+1)]`
-/

namespace A133600.P11579516079716807337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P11579516079716807337

namespace A133600

/-- `∩[A025619(n+1), A029750(n+1)]` -/
def P11579516079716807337.Spec : Prop :=
  ∀ n, (P11579516079716807337.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P12919406653800423466

`∩[A025619(n+1), A103969(n+1)]`
-/

namespace A133600.P12919406653800423466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P12919406653800423466

namespace A133600

/-- `∩[A025619(n+1), A103969(n+1)]` -/
def P12919406653800423466.Spec : Prop :=
  ∀ n, (P12919406653800423466.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P13032973695021059627

`∩[A025619(n+1), A246074(n+1)]`
-/

namespace A133600.P13032973695021059627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P13032973695021059627

namespace A133600

/-- `∩[A025619(n+1), A246074(n+1)]` -/
def P13032973695021059627.Spec : Prop :=
  ∀ n, (P13032973695021059627.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P16253135655238931403

`∩[A025619(n+1), A246075(n+1)]`
-/

namespace A133600.P16253135655238931403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P16253135655238931403

namespace A133600

/-- `∩[A025619(n+1), A246075(n+1)]` -/
def P16253135655238931403.Spec : Prop :=
  ∀ n, (P16253135655238931403.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P5301339170297064115

`∩[A025619(n+1), A246077(n+1)]`
-/

namespace A133600.P5301339170297064115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P5301339170297064115

namespace A133600

/-- `∩[A025619(n+1), A246077(n+1)]` -/
def P5301339170297064115.Spec : Prop :=
  ∀ n, (P5301339170297064115.a n : ℤ) = A133600 (n + 1)

end A133600

/-! ## A133600.P2984563351856874381

`A136326(n)+A136326(n)-A061547(n)`
-/

namespace A133600.P2984563351856874381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 n + (A136326 n - A061547 n)

end

end A133600.P2984563351856874381

namespace A133600

/-- `A136326(n)+A136326(n)-A061547(n)` -/
def P2984563351856874381.Spec : Prop :=
  ∀ n, P2984563351856874381.a n = A133600 (n + 1)

end A133600

/-! ## A133600.P11992386008197059534

`∪[A000302(n), A002042(n)]`
-/

namespace A133600.P11992386008197059534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133600.P11992386008197059534

namespace A133600

/-- `∪[A000302(n), A002042(n)]` -/
def P11992386008197059534.Spec : Prop :=
  ∀ n, (P11992386008197059534.a n : ℤ) = A133600 (n + 1)

end A133600

/-!
# A133601: Triangle read by rows: A007318 * (A097806 + A133080 - I) as infinite lower triangular matrices, where I is the identity matrix.

The programs for A133601, the canonical program `A133601.P18072590970996371022` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133601 has offset 0).

The definition of A133601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133601.P18072590970996371022

`C(row(n), col(n))+(3*C(row(n), col(n)+1)+(-1)^col(n)*C(row(n), col(n)+1))/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133601

/-- `C(row(n), col(n))+(3*C(row(n), col(n)+1)+(-1)^col(n)*C(row(n), col(n)+1))/2` -/
def P18072590970996371022.Spec : Prop :=
  ∀ n, P18072590970996371022.a n = (A133601 n : ℚ)

end A133601

/-! ## A133601.P11914507238003591422

`2*A135278(n)-A133567(n+1)`
-/

namespace A133601.P11914507238003591422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A133567 (n + 1)

end

end A133601.P11914507238003591422

namespace A133601

/-- `2*A135278(n)-A133567(n+1)` -/
def P11914507238003591422.Spec : Prop :=
  ∀ n, P11914507238003591422.a n = A133601 n

end A133601

/-! ## A133601.P4231964281794938708

`A028326(comp[∑[n]])-A133567(n+1)`
-/

namespace A133601.P4231964281794938708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A133567 (n + 1)

end

end A133601.P4231964281794938708

namespace A133601

/-- `A028326(comp[∑[n]])-A133567(n+1)` -/
def P4231964281794938708.Spec : Prop :=
  ∀ n, P4231964281794938708.a n = A133601 n

end A133601

/-! ## A133601.P9750392439383994953

`A133084(n+1)+A051597(n)-A074909(n)`
-/

namespace A133601.P9750392439383994953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) + (A051597 n - A074909 n)

end

end A133601.P9750392439383994953

namespace A133601

/-- `A133084(n+1)+A051597(n)-A074909(n)` -/
def P9750392439383994953.Spec : Prop :=
  ∀ n, P9750392439383994953.a n = A133601 n

end A133601

/-! ## A133601.P2594496494015239356

`A133084(n+1)+A007318(n+1)%A134083(n)`
-/

namespace A133601.P2594496494015239356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) + Int.tmod (A007318 (n + 1)) (A134083 n)

end

end A133601.P2594496494015239356

namespace A133601

/-- `A133084(n+1)+A007318(n+1)%A134083(n)` -/
def P2594496494015239356.Spec : Prop :=
  ∀ n, P2594496494015239356.a n = A133601 n

end A133601

/-! ## A133601.P1964734406759218434

`A198321(n+1)+A124845(n+1)`
-/

namespace A133601.P1964734406759218434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A124845 (n + 1)

end

end A133601.P1964734406759218434

namespace A133601

/-- `A198321(n+1)+A124845(n+1)` -/
def P1964734406759218434.Spec : Prop :=
  ∀ n, P1964734406759218434.a n = A133601 n

end A133601

/-! ## A133601.P270189633559755358

`A206735(n+1)+A133084(n+1)`
-/

namespace A133601.P270189633559755358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A133084 (n + 1)

end

end A133601.P270189633559755358

namespace A133601

/-- `A206735(n+1)+A133084(n+1)` -/
def P270189633559755358.Spec : Prop :=
  ∀ n, P270189633559755358.a n = A133601 n

end A133601

/-! ## A133601.P15842479263271588627

`A133084(n+1)+A071919(A014132(n+1))`
-/

namespace A133601.P15842479263271588627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) + A071919 (A014132 (n + 1)).toNat

end

end A133601.P15842479263271588627

namespace A133601

/-- `A133084(n+1)+A071919(A014132(n+1))` -/
def P15842479263271588627.Spec : Prop :=
  ∀ n, P15842479263271588627.a n = A133601 n

end A133601

/-! ## A133601.P418685555537724753

`A004277(A135278(n))-A133567(n+1)`
-/

namespace A133601.P418685555537724753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A135278 n).toNat - A133567 (n + 1)

end

end A133601.P418685555537724753

namespace A133601

/-- `A004277(A135278(n))-A133567(n+1)` -/
def P418685555537724753.Spec : Prop :=
  ∀ n, P418685555537724753.a n = A133601 n

end A133601

/-! ## A133601.P12539230977385130410

`A162590(A061579(n+1))+A135278(n)`
-/

namespace A133601.P12539230977385130410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 (A061579 (n + 1)).toNat + A135278 n

end

end A133601.P12539230977385130410

namespace A133601

/-- `A162590(A061579(n+1))+A135278(n)` -/
def P12539230977385130410.Spec : Prop :=
  ∀ n, P12539230977385130410.a n = A133601 n

end A133601

/-!
# A133602: The matrix-vector product A133080 * A000108.

The programs for A133602, there is no canonical definition to state claims against.
-/

/-! ## A133602.P12927062198612149360

`A028364(∑[n]+n%2)`
-/

namespace A133602.P12927062198612149360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j + n % 2)

end

end A133602.P12927062198612149360

/-! ## A133602.P5433212551721945684

`A028364(∑[n]+and(1, n))`
-/

namespace A133602.P5433212551721945684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n)

end

end A133602.P5433212551721945684

/-! ## A133602.P15214912279293136875

`A028364(∑[n+1]-or(1, n))`
-/

namespace A133602.P15214912279293136875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.lor 1 n)

end

end A133602.P15214912279293136875

/-! ## A133602.P13679382928309632003

`A106534(∑[n]+n-and(1, n))`
-/

namespace A133602.P13679382928309632003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 (∑ j ∈ Finset.range (n + 1), f1 j + n - Nat.land 1 n)

end

end A133602.P13679382928309632003

/-! ## A133602.P3555551524469982043

`A067323(∑[n+1]-gcd(2, n+1))`
-/

namespace A133602.P3555551524469982043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.gcd 2 (n + 1))

end

end A133602.P3555551524469982043

/-!
# A133603: The matrix-vector product A133566 * A000108.

The programs for A133603, the canonical program `A133603.P9831826494828177728` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133603 has offset 0).

The definition of A133603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133603.P9831826494828177728

`A000108(n)+a(n-1)*char[2*n]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133603

/-- `A000108(n)+a(n-1)*char[2*n]` -/
def P9831826494828177728.Spec : Prop :=
  ∀ n, P9831826494828177728.a n = A133603 n

theorem P9831826494828177728.correct : P9831826494828177728.Spec := by
  intro n
  simp only [A133603]

end A133603

/-! ## A133603.P16592619690132913316

`A128899(A128918(n))+A000108(n)`
-/

namespace A133603.P16592619690132913316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A128918 n).toNat + A000108 n

end

end A133603.P16592619690132913316

namespace A133603

/-- `A128899(A128918(n))+A000108(n)` -/
def P16592619690132913316.Spec : Prop :=
  ∀ n, P16592619690132913316.a n = A133603 n

end A133603

/-! ## A133603.P14044415092514706514

`A028364(∑[n]+(-1)^n)`
-/

namespace A133603.P14044415092514706514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (-1) ^ n).toNat

end

end A133603.P14044415092514706514

namespace A133603

/-- `A028364(∑[n]+(-1)^n)` -/
def P14044415092514706514.Spec : Prop :=
  ∀ n, P14044415092514706514.a n = A133603 n

end A133603

/-! ## A133603.P2648943153736214993

`A028378(∑[a(n-2)+2])` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A133603.P2648943153736214993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133603.P2648943153736214993

namespace A133603

/-- `A028378(∑[a(n-2)+2])` -/
def P2648943153736214993.Spec : Prop :=
  ∀ n, P2648943153736214993.a n = A133603 n

end A133603

/-! ## A133603.P12367407497853254138

`A028364(A125577(n))+A000007(2*(n+1))`
-/

namespace A133603.P12367407497853254138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A125577 n).toNat + A000007 (2 * (n + 1))

end

end A133603.P12367407497853254138

namespace A133603

/-- `A028364(A125577(n))+A000007(2*(n+1))` -/
def P12367407497853254138.Spec : Prop :=
  ∀ n, P12367407497853254138.a n = A133603 n

end A133603

/-! ## A133603.P11448174008455446776

`A067323(A162761(n+1))`
-/

namespace A133603.P11448174008455446776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A162761 (n + 1)).toNat

end

end A133603.P11448174008455446776

namespace A133603

/-- `A067323(A162761(n+1))` -/
def P11448174008455446776.Spec : Prop :=
  ∀ n, P11448174008455446776.a n = A133603 n

end A133603

/-!
# A133604: Elements of A005282 that are also the sum of a pair of not necessarily distinct elements of A005282.

The programs for A133604, there is no canonical definition to state claims against.
-/

/-! ## A133604.P11235313249817796159

`A005282(A198394(n+1)%A338601(2*(n+1)))`
-/

namespace A133604.P11235313249817796159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (Int.tmod (A198394 (n + 1)) (A338601 (2 * (n + 1)))).toNat

end

end A133604.P11235313249817796159

/-! ## A133604.P16470480968682660449

`A005282(A198394(n+1))%A103426(3*n+4)`
-/

namespace A133604.P16470480968682660449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005282 (A198394 (n + 1)).toNat) (A103426 (3 * n + 4))

end

end A133604.P16470480968682660449

/-!
# A133607: Triangle read by rows: T(n, k) = qStirling2(n, k, q) for q = -1, with 0 <= k <= n.

The programs for A133607, the canonical program `A133607.P3840190343183803213` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133607 has offset 0).

The definition of A133607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133607.P3840190343183803213

`T(n-1,k)-T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133607

/-- `T(n-1,k)-T(row(n)-2, col(n)-2)` -/
def P3840190343183803213.Spec : Prop :=
  ∀ n, P3840190343183803213.a n = A133607 n

theorem P3840190343183803213.correct : P3840190343183803213.Spec := by
  intro n
  simp only [A133607]

end A133607

/-! ## A133607.P9667648700463711156

`A127672(A061579(n))-A108299(n)`
-/

namespace A133607.P9667648700463711156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (A061579 n).toNat - A108299 n

end

end A133607.P9667648700463711156

namespace A133607

/-- `A127672(A061579(n))-A108299(n)` -/
def P9667648700463711156.Spec : Prop :=
  ∀ n, P9667648700463711156.a n = A133607 n

end A133607

/-! ## A133607.P11961955002363008475

`A057077(A002262(n))*A103631(n)`
-/

namespace A133607.P11961955002363008475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002262 n).toNat * A103631 n

end

end A133607.P11961955002363008475

namespace A133607

/-- `A057077(A002262(n))*A103631(n)` -/
def P11961955002363008475.Spec : Prop :=
  ∀ n, P11961955002363008475.a n = A133607 n

end A133607

/-! ## A133607.P13972893293725054030

`A057077(A002262(n))*A153764(A061579(n))`
-/

namespace A133607.P13972893293725054030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002262 n).toNat * A153764 (A061579 n).toNat

end

end A133607.P13972893293725054030

namespace A133607

/-- `A057077(A002262(n))*A153764(A061579(n))` -/
def P13972893293725054030.Spec : Prop :=
  ∀ n, P13972893293725054030.a n = A133607 n

end A133607

/-! ## A133607.P2984617482439675505

`A057077(A002262(n))*A153764(A093995(n+1)-(n+1))`
-/

namespace A133607.P2984617482439675505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002262 n).toNat * A153764 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A133607.P2984617482439675505

namespace A133607

/-- `A057077(A002262(n))*A153764(A093995(n+1)-(n+1))` -/
def P2984617482439675505.Spec : Prop :=
  ∀ n, P2984617482439675505.a n = A133607 n

end A133607

/-! ## A133607.P1709611921591317365

`A057077(A002262(n))*A153764(A038722(n+2))`
-/

namespace A133607.P1709611921591317365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002262 n).toNat * A153764 (A038722 (n + 2)).toNat

end

end A133607.P1709611921591317365

namespace A133607

/-- `A057077(A002262(n))*A153764(A038722(n+2))` -/
def P1709611921591317365.Spec : Prop :=
  ∀ n, P1709611921591317365.a n = A133607 n

end A133607

/-! ## A133607.P2572658197560376908

`A103631(n)*A267482(A112367(n))`
-/

namespace A133607.P2572658197560376908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A267482 (A112367 n).toNat

end

end A133607.P2572658197560376908

namespace A133607

/-- `A103631(n)*A267482(A112367(n))` -/
def P2572658197560376908.Spec : Prop :=
  ∀ n, P2572658197560376908.a n = A133607 n

end A133607

/-! ## A133607.P5130430543696092382

`A192011(n)-(A193002(n)+A108299(n))`
-/

namespace A133607.P5130430543696092382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n - (A193002 n + A108299 n)

end

end A133607.P5130430543696092382

namespace A133607

/-- `A192011(n)-(A193002(n)+A108299(n))` -/
def P5130430543696092382.Spec : Prop :=
  ∀ n, P5130430543696092382.a n = A133607 n

end A133607

/-! ## A133607.P4112417848040295252

`A174559(n)-(A195662(n)+A108299(n))`
-/

namespace A133607.P4112417848040295252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174559 n - (A195662 n + A108299 n)

end

end A133607.P4112417848040295252

namespace A133607

/-- `A174559(n)-(A195662(n)+A108299(n))` -/
def P4112417848040295252.Spec : Prop :=
  ∀ n, P4112417848040295252.a n = A133607 n

end A133607

/-! ## A133607.P1847028831751190280

`A192575(n)-(A192174(n)+A108299(n))`
-/

namespace A133607.P1847028831751190280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192575 n - (A192174 n + A108299 n)

end

end A133607.P1847028831751190280

namespace A133607

/-- `A192575(n)-(A192174(n)+A108299(n))` -/
def P1847028831751190280.Spec : Prop :=
  ∀ n, P1847028831751190280.a n = A133607 n

end A133607

/-!
# A133608: Numbers n such that the sum of digits of n-th semiprime equals sum of digits of n.

The programs for A133608, there is no canonical definition to state claims against.
-/

/-! ## A133608.P12291265011359645263

`eq[A007953(n), A175013(A028310(n))]`
-/

namespace A133608.P12291265011359645263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175013 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133608.P12291265011359645263

/-! ## A133608.P13108367311881904401

`eq[A007953(n), A175013(A233583(n+1))]`
-/

namespace A133608.P13108367311881904401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175013 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133608.P13108367311881904401

/-! ## A133608.P9623011777080420694

`A058933(A174924(n+1))`
-/

namespace A133608.P9623011777080420694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A174924 (n + 1)).toNat

end

end A133608.P9623011777080420694

/-! ## A133608.P1453673281099724695

`∑{d}[A174924(n+1), A174956(#)]`
-/

namespace A133608.P1453673281099724695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d

end

end A133608.P1453673281099724695

/-! ## A133608.P10941763803871398619

`A174956(A174924(record[xor(1, n)]-n))`
-/

namespace A133608.P10941763803871398619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A174924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)).toNat

end

end A133608.P10941763803871398619

/-!
# A133609: Numbers k such that k, k+2 and k+4 are consecutive semiprimes.

The programs for A133609, there is no canonical definition to state claims against.
-/

/-! ## A133609.P6886262440889775603

`∩[A092207(n+1), A213025(n+1)-2]`
-/

namespace A133609.P6886262440889775603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133609.P6886262440889775603

/-! ## A133609.P17405904345673942099

`∩[A213025(n+1)-2, A272309(n+1)]`
-/

namespace A133609.P17405904345673942099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133609.P17405904345673942099

/-! ## A133609.P965132507305235393

`∩[A001358(n+1), A213025(n+1)-2]`
-/

namespace A133609.P965132507305235393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133609.P965132507305235393

/-! ## A133609.P12554793990151867675

`∩[A136196(n+1)-2, A136196(n+1)]`
-/

namespace A133609.P12554793990151867675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136196 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133609.P12554793990151867675

/-! ## A133609.P1302792576752234250

`∩[A136196(n+1), A023444(A136196(n+1))]`
-/

namespace A133609.P1302792576752234250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A136196 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133609.P1302792576752234250

/-! ## A133609.P9924226845138370978

`A023444(∩[A092207(n+1), A213025(n+1)])`
-/

namespace A133609.P9924226845138370978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A133609.P9924226845138370978

/-! ## A133609.P3839942012750377163

`∩[A023444(A213025(n+1)), A272309(n+1)]`
-/

namespace A133609.P3839942012750377163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A213025 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133609.P3839942012750377163

/-!
# A133610: Partial sums of pyramidal sequence A053616.

The programs for A133610, the canonical program `A133610.P10004266105813786459` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133610 has offset 0).

The definition of A133610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133610.P4888497397904757059

`∑[(1+T(n-2,k-1))%(col(n)+1)]` with `a(0)=0`
-/

namespace A133610.P4888497397904757059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 + SequenceMachineLib.triUp2Left f1 n) % (SequenceMachineLib.triCol n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P4888497397904757059

namespace A133610

/-- `∑[(1+T(n-2,k-1))%(col(n)+1)]` -/
def P4888497397904757059.Spec : Prop :=
  ∀ n, (P4888497397904757059.a n : ℤ) = A133610 n

end A133610

/-! ## A133610.P10004266105813786459

`∑[A053616(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133610

/-- `∑[A053616(n)]` -/
def P10004266105813786459.Spec : Prop :=
  ∀ n, P10004266105813786459.a n = A133610 n

theorem P10004266105813786459.correct : P10004266105813786459.Spec := by
  intro n
  simp only [A133610]

end A133610

/-! ## A133610.P10716540254760178118

`∑[val(A094615(n)+1, 6)]`
-/

namespace A133610.P10716540254760178118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094615 n + 1).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P10716540254760178118

namespace A133610

/-- `∑[val(A094615(n)+1, 6)]` -/
def P10716540254760178118.Spec : Prop :=
  ∀ n, (P10716540254760178118.a n : ℤ) = A133610 n

end A133610

/-! ## A133610.P11879499866808435229

`∑[floor(A274773(n+1)/2)]`
-/

namespace A133610.P11879499866808435229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274773 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P11879499866808435229

namespace A133610

/-- `∑[floor(A274773(n+1)/2)]` -/
def P11879499866808435229.Spec : Prop :=
  ∀ n, P11879499866808435229.a n = A133610 n

end A133610

/-! ## A133610.P8900103746647880219

`∑[A003983(n+1)-floor(sqrt(8*n+1))%2]`
-/

namespace A133610.P8900103746647880219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P8900103746647880219

namespace A133610

/-- `∑[A003983(n+1)-floor(sqrt(8*n+1))%2]` -/
def P8900103746647880219.Spec : Prop :=
  ∀ n, P8900103746647880219.a n = A133610 n

end A133610

/-! ## A133610.P8245825769348278929

`∑[A068344(n)-∑[A068344(n)]]`
-/

namespace A133610.P8245825769348278929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P8245825769348278929

namespace A133610

/-- `∑[A068344(n)-∑[A068344(n)]]` -/
def P8245825769348278929.Spec : Prop :=
  ∀ n, P8245825769348278929.a n = A133610 n

end A133610

/-! ## A133610.P288195201861801932

`∑[A101776(n)-A051125(n+1)]`
-/

namespace A133610.P288195201861801932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A051125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P288195201861801932

namespace A133610

/-- `∑[A101776(n)-A051125(n+1)]` -/
def P288195201861801932.Spec : Prop :=
  ∀ n, P288195201861801932.a n = A133610 n

end A133610

/-! ## A133610.P14326471633190393543

`∑[A004736(n+1)-A185914(n+1)]`
-/

namespace A133610.P14326471633190393543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A185914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P14326471633190393543

namespace A133610

/-- `∑[A004736(n+1)-A185914(n+1)]` -/
def P14326471633190393543.Spec : Prop :=
  ∀ n, P14326471633190393543.a n = A133610 n

theorem P14326471633190393543.correct : P14326471633190393543.Spec := by
  intro n
  simp only [A133610, Nat.add_sub_cancel, A133610.P14326471633190393543.f1, A133610.P14326471633190393543.a, A133610.P10004266105813786459.f1, A133610.P10004266105813786459.a, A004736, A004736.P10337537277358081527.a, A053616, A053616.P15730649175569513944.a, A185914, A185914.P13255273733279209154.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A133610

/-! ## A133610.P3411004784330884526

`∑[A004197(comp[∑[n+1]])]`
-/

namespace A133610.P3411004784330884526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P3411004784330884526

namespace A133610

/-- `∑[A004197(comp[∑[n+1]])]` -/
def P3411004784330884526.Spec : Prop :=
  ∀ n, P3411004784330884526.a n = A133610 n

end A133610

/-! ## A133610.P14013578958697523464

`∑[A003983(A002024(n+1)+n+1)-1]`
-/

namespace A133610.P14013578958697523464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A002024 (n + 1) + (n : ℤ) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P14013578958697523464

namespace A133610

/-- `∑[A003983(A002024(n+1)+n+1)-1]` -/
def P14013578958697523464.Spec : Prop :=
  ∀ n, P14013578958697523464.a n = A133610 n

end A133610

/-! ## A133610.P15299864409013558936

`∑[abs(A196199(2*n)/2)]`
-/

namespace A133610.P15299864409013558936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A196199 (2 * n) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P15299864409013558936

namespace A133610

/-- `∑[abs(A196199(2*n)/2)]` -/
def P15299864409013558936.Spec : Prop :=
  ∀ n, P15299864409013558936.a n = (A133610 n : ℚ)

end A133610

/-! ## A133610.P13101477700580496527

`∑[A110654(A253580(2*n))/2]`
-/

namespace A133610.P13101477700580496527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A253580 (2 * n)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P13101477700580496527

namespace A133610

/-- `∑[A110654(A253580(2*n))/2]` -/
def P13101477700580496527.Spec : Prop :=
  ∀ n, P13101477700580496527.a n = (A133610 n : ℚ)

end A133610

/-! ## A133610.P10316178749580049435

`∑[A053188(A060734(n+1))]`
-/

namespace A133610.P10316178749580049435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A060734 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P10316178749580049435

namespace A133610

/-- `∑[A053188(A060734(n+1))]` -/
def P10316178749580049435.Spec : Prop :=
  ∀ n, P10316178749580049435.a n = A133610 n

end A133610

/-! ## A133610.P6779193037225780940

`∑[A123108(A004741(2*n+1))/2]`
-/

namespace A133610.P6779193037225780940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (A004741 (2 * n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P6779193037225780940

namespace A133610

/-- `∑[A123108(A004741(2*n+1))/2]` -/
def P6779193037225780940.Spec : Prop :=
  ∀ n, P6779193037225780940.a n = (A133610 n : ℚ)

end A133610

/-! ## A133610.P4193806515489579198

`∑[abs(A329116(2*n)/2)]`
-/

namespace A133610.P4193806515489579198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A329116 (2 * n) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P4193806515489579198

namespace A133610

/-- `∑[abs(A329116(2*n)/2)]` -/
def P4193806515489579198.Spec : Prop :=
  ∀ n, P4193806515489579198.a n = (A133610 n : ℚ)

end A133610

/-! ## A133610.P8140298264896984585

`∑[A064680(abs(A329116(2*n)))]`
-/

namespace A133610.P8140298264896984585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 |A329116 (2 * n)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P8140298264896984585

namespace A133610

/-- `∑[A064680(abs(A329116(2*n)))]` -/
def P8140298264896984585.Spec : Prop :=
  ∀ n, P8140298264896984585.a n = A133610 n

end A133610

/-! ## A133610.P18135561218597311353

`∑[A053615(2*n)/2]`
-/

namespace A133610.P18135561218597311353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053615 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P18135561218597311353

namespace A133610

/-- `∑[A053615(2*n)/2]` -/
def P18135561218597311353.Spec : Prop :=
  ∀ n, P18135561218597311353.a n = (A133610 n : ℚ)

end A133610

/-! ## A133610.P5401829315450529506

`∑[A078898(A053615(2*n))]`
-/

namespace A133610.P5401829315450529506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A053615 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P5401829315450529506

namespace A133610

/-- `∑[A078898(A053615(2*n))]` -/
def P5401829315450529506.Spec : Prop :=
  ∀ n, P5401829315450529506.a n = A133610 n

end A133610

/-! ## A133610.P509854452891988850

`∑[A123108(A004739(2*n+1))]`
-/

namespace A133610.P509854452891988850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004739 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P509854452891988850

namespace A133610

/-- `∑[A123108(A004739(2*n+1))]` -/
def P509854452891988850.Spec : Prop :=
  ∀ n, P509854452891988850.a n = A133610 n

end A133610

/-! ## A133610.P15945627705639750768

`∑[abs(A010751(n)-A174344(2*n+1))]`
-/

namespace A133610.P15945627705639750768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010751 n - A174344 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P15945627705639750768

namespace A133610

/-- `∑[abs(A010751(n)-A174344(2*n+1))]` -/
def P15945627705639750768.Spec : Prop :=
  ∀ n, P15945627705639750768.a n = A133610 n

end A133610

/-!
# A133611: A triangular array of numbers related to factorization and number of parts in Murasaki diagrams.

The programs for A133611, there is no canonical definition to state claims against.
-/

/-! ## A133611.P14489628006597934115

`A137650(n+1-round(sqrt(2*n)))`
-/

namespace A133611.P14489628006597934115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137650 ((n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A133611.P14489628006597934115

/-! ## A133611.P1211072971991487305

`A195918(A098539(n))-1`
-/

namespace A133611.P1211072971991487305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195918 (A098539 n).toNat - 1

end

end A133611.P1211072971991487305

/-!
# A133612: Unique sequence of digits a(0), a(1), a(2), ... such that for all k >= 2, the number A(k) := Sum_{n = 0..k-1} a(n)*10^n satisfies 2^A(k) == A(k) (mod 10^k).

The programs for A133612, there is no canonical definition to state claims against.
-/

/-! ## A133612.P12087222737104059197

`floor(A206636(n+1)/A000533(n))`
-/

namespace A133612.P12087222737104059197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206636 (n + 1) : ℚ) / (A000533 n : ℚ)⌋

end

end A133612.P12087222737104059197

/-! ## A133612.P13341805850377157146

`floor(A206636(n+1)/A011557(n))`
-/

namespace A133612.P13341805850377157146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206636 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A133612.P13341805850377157146

/-! ## A133612.P11182880120807829681

`dr(Δ[A113627(n+1)%A011557(n)])`
-/

namespace A133612.P11182880120807829681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113627 (n + 1)) (A011557 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A133612.P11182880120807829681

/-! ## A133612.P10909256801214218230

`dr(Δ[A109405(n+2)%A011557(n)])`
-/

namespace A133612.P10909256801214218230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109405 (n + 2)) (A011557 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A133612.P10909256801214218230

/-! ## A133612.P125931509884812483

`dr(Δ[A121319(n+1)%A011557(n)])`
-/

namespace A133612.P125931509884812483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121319 (n + 1)) (A011557 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A133612.P125931509884812483

/-!
# A133613: Decimal digits such that for all k >= 1, the number A(k) := Sum_{n = 0..k-1} a(n)*10^n satisfies the congruence 3^A(k) == A(k) (mod 10^k).

The programs for A133613, there is no canonical definition to state claims against.
-/

/-! ## A133613.P15433363027844908676

`floor(A183613(n+1)/10^n)`
-/

namespace A133613.P15433363027844908676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183613 (n + 1) : ℚ) / (10 ^ n : ℚ)⌋

end

end A133613.P15433363027844908676

/-! ## A133613.P1936023256173185360

`ceil(A183613(n+1)/A011557(n)-A057427(n))`
-/

namespace A133613.P1936023256173185360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183613 (n + 1) : ℚ) / (A011557 n : ℚ) - (A057427 n : ℚ)⌉

end

end A133613.P1936023256173185360

/-!
# A133616: Unique sequence of digits a(0), a(1), a(2), ... such that for all k >= 2, the number A(k) := Sum_{n = 0..k-1} a(n)*10^n satisfies 6^A(k) == A(k) (mod 10^k).

The programs for A133616, there is no canonical definition to state claims against.
-/

/-! ## A133616.P14571156042609993352

`floor(A290788(n+1)/A000533(n))`
-/

namespace A133616.P14571156042609993352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290788 (n + 1) : ℚ) / (A000533 n : ℚ)⌋

end

end A133616.P14571156042609993352

/-! ## A133616.P3696085748236178857

`floor(A290788(n+1)/A011557(n))`
-/

namespace A133616.P3696085748236178857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290788 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A133616.P3696085748236178857

/-! ## A133616.P1603197615920733029

`floor(A290788(n+1)/A290545(n))`
-/

namespace A133616.P1603197615920733029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290788 (n + 1) : ℚ) / (A290545 n : ℚ)⌋

end

end A133616.P1603197615920733029

/-! ## A133616.P14125530673169299320

`floor(A290788(n+1)/A290831(n))`
-/

namespace A133616.P14125530673169299320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290788 (n + 1) : ℚ) / (A290831 n : ℚ)⌋

end

end A133616.P14125530673169299320

/-!
# A133617: Unique sequence of digits a(0), a(1), a(2), ... such that for all k >= 2, the number A(k) := Sum_{n = 0..k-1} a(n)*10^n satisfies 7^A(k) == A(k) (mod 10^k).

The programs for A133617, there is no canonical definition to state claims against.
-/

/-! ## A133617.P13210303194807130384

`floor(A321970(n+1)/A011557(n))`
-/

namespace A133617.P13210303194807130384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321970 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A133617.P13210303194807130384

/-! ## A133617.P9883238418048541102

`floor(A321970(n+1)/A218127(n))`
-/

namespace A133617.P9883238418048541102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321970 (n + 1) : ℚ) / (A218127 n : ℚ)⌋

end

end A133617.P9883238418048541102

/-! ## A133617.P3442823502478999074

`floor(A321970(n+1)/A290545(n))`
-/

namespace A133617.P3442823502478999074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321970 (n + 1) : ℚ) / (A290545 n : ℚ)⌋

end

end A133617.P3442823502478999074

/-! ## A133617.P9496474084975642181

`ceil(A057428(n)+A321970(n+1)/A290545(n))`
-/

namespace A133617.P9496474084975642181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℚ) + (A321970 (n + 1) : ℚ) / (A290545 n : ℚ)⌉

end

end A133617.P9496474084975642181

/-!
# A133619: Unique sequence of digits a(0), a(1), a(2), ... such that for all k >= 2, the number A(k) := Sum_{n = 0..k-1} a(n)*10^n satisfies 9^A(k) == A(k) (mod 10^k).

The programs for A133619, there is no canonical definition to state claims against.
-/

/-! ## A133619.P12845698382824188664

`dr(Δ[A306686(n+1)%A011557(n)])`
-/

namespace A133619.P12845698382824188664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306686 (n + 1)) (A011557 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A133619.P12845698382824188664

/-! ## A133619.P18066638721994622607

`A032555(floor(A306686(n+1)/A000533(n)))`
-/

namespace A133619.P18066638721994622607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 ⌊(A306686 (n + 1) : ℚ) / (A000533 n : ℚ)⌋.toNat

end

end A133619.P18066638721994622607

/-! ## A133619.P16261590274006135565

`A032555(floor(A306686(n+1)/A011557(n)))`
-/

namespace A133619.P16261590274006135565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 ⌊(A306686 (n + 1) : ℚ) / (A011557 n : ℚ)⌋.toNat

end

end A133619.P16261590274006135565

/-! ## A133619.P15558036961045629890

`A032555(floor(A306686(n+1)/A290545(n)))`
-/

namespace A133619.P15558036961045629890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 ⌊(A306686 (n + 1) : ℚ) / (A290545 n : ℚ)⌋.toNat

end

end A133619.P15558036961045629890

/-! ## A133619.P11660905900222093776

`A325364(floor(A306686(n+1)/A000533(n)))`
-/

namespace A133619.P11660905900222093776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 ⌊(A306686 (n + 1) : ℚ) / (A000533 n : ℚ)⌋.toNat

end

end A133619.P11660905900222093776

/-!
# A133620: Binomial(n+p,n) mod n where p=10.

The programs for A133620, the canonical program `A133620.P17248346431051668182` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133620 has offset 1).

The definition of A133620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133620.P17248346431051668182

`C(n+11, n+1)%(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133620

/-- `C(n+11, n+1)%(n+1)` -/
def P17248346431051668182.Spec : Prop :=
  ∀ n, (P17248346431051668182.a n : ℤ) = A133620 (n + 1)

theorem P17248346431051668182.correct : P17248346431051668182.Spec := by
  intro n
  simp only [A133620, Nat.add_sub_cancel]

end A133620

/-! ## A133620.P12923912610863355206

`∏[10/(n+1)+1]%(n+1)`
-/

namespace A133620.P12923912610863355206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (n + 1 : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A133620.P12923912610863355206

namespace A133620

/-- `∏[10/(n+1)+1]%(n+1)` -/
def P12923912610863355206.Spec : Prop :=
  ∀ n, P12923912610863355206.a n = A133620 (n + 1)

end A133620

/-! ## A133620.P2106773266980216078

`A001287(char[1]+1+n)%-(n+1)/ceil(acot(n))`
-/

namespace A133620.P2106773266980216078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001287 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n + 10)) (-(n + 1 : ℤ)) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A133620.P2106773266980216078

namespace A133620

/-- `A001287(char[1]+1+n)%-(n+1)/ceil(acot(n))` -/
def P2106773266980216078.Spec : Prop :=
  ∀ n, P2106773266980216078.a n = (A133620 (n + 1) : ℚ)

end A133620

/-! ## A133620.P12845351522836055140

`A278169(2*(n+2))+A001287(n+1)%-(n+1)`
-/

namespace A133620.P12845351522836055140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (2 * (n + 2)) + Int.tmod (A001287 (n + 1 + 10)) (-(n + 1 : ℤ))

end

end A133620.P12845351522836055140

namespace A133620

/-- `A278169(2*(n+2))+A001287(n+1)%-(n+1)` -/
def P12845351522836055140.Spec : Prop :=
  ∀ n, P12845351522836055140.a n = A133620 (n + 1)

end A133620

/-! ## A133620.P11852503033059521188

`A081371(Δ[A111144(n+2)])`
-/

namespace A133620.P11852503033059521188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (f1 (n + 1) - f1 n).toNat

end

end A133620.P11852503033059521188

namespace A133620

/-- `A081371(Δ[A111144(n+2)])` -/
def P11852503033059521188.Spec : Prop :=
  ∀ n, P11852503033059521188.a n = A133620 (n + 1)

end A133620

/-! ## A133620.P10267524253032078093

`A081371(A055999(n+8)-4)`
-/

namespace A133620.P10267524253032078093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A055999 (n + 8) - 4).toNat

end

end A133620.P10267524253032078093

namespace A133620

/-- `A081371(A055999(n+8)-4)` -/
def P10267524253032078093.Spec : Prop :=
  ∀ n, P10267524253032078093.a n = A133620 (n + 1)

end A133620

/-!
# A133621: Numbers k such that binomial(k+p,k) mod k = 1, where p=10.

The programs for A133621, the canonical program `A133621.P5217006610656802497` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133621 has offset 1).

The definition of A133621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133621.P5217006610656802497

`eq[1, A133620(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133621

/-- `eq[1, A133620(n+1)]+1` -/
def P5217006610656802497.Spec : Prop :=
  ∀ n, (P5217006610656802497.a n : ℤ) = A133621 (n + 1)

theorem P5217006610656802497.correct : P5217006610656802497.Spec := by
  intro n
  simp only [A133621, Nat.add_sub_cancel]

end A133621

/-! ## A133621.P10721148634090320358

`lt[A133620(n+3), 2]+3`
-/

namespace A133621.P10721148634090320358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A133621.P10721148634090320358

namespace A133621

/-- `lt[A133620(n+3), 2]+3` -/
def P10721148634090320358.Spec : Prop :=
  ∀ n, (P10721148634090320358.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P3918045691577628881

`eq[1, A133620(n-a(2%n))]` with `a(0)=0`
-/

namespace A133621.P3918045691577628881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A133620 ((n : ℤ) - f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P3918045691577628881

namespace A133621

/-- `eq[1, A133620(n-a(2%n))]` -/
def P3918045691577628881.Spec : Prop :=
  ∀ n, (P3918045691577628881.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P12603675294461132826

`eq[1, A001287(n+1)%(n+1)]+1`
-/

namespace A133621.P12603675294461132826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001287 (n + 1 + 10)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133621.P12603675294461132826

namespace A133621

/-- `eq[1, A001287(n+1)%(n+1)]+1` -/
def P12603675294461132826.Spec : Prop :=
  ∀ n, (P12603675294461132826.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P293207640412472420

`eq[1, C(n+10, 10)%(A000007(n)+n)]`
-/

namespace A133621.P293207640412472420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 10) 10 : ℤ) (A000007 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P293207640412472420

namespace A133621

/-- `eq[1, C(n+10, 10)%(A000007(n)+n)]` -/
def P293207640412472420.Spec : Prop :=
  ∀ n, (P293207640412472420.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P4010344442658388164

`eq[1, A133620(A028310(n))]`
-/

namespace A133621.P4010344442658388164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P4010344442658388164

namespace A133621

/-- `eq[1, A133620(A028310(n))]` -/
def P4010344442658388164.Spec : Prop :=
  ∀ n, (P4010344442658388164.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P16839271278907015545

`eq[1, A133620(A000007(n)+n)]`
-/

namespace A133621.P16839271278907015545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P16839271278907015545

namespace A133621

/-- `eq[1, A133620(A000007(n)+n)]` -/
def P16839271278907015545.Spec : Prop :=
  ∀ n, (P16839271278907015545.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P1253293488953850156

`eq[1, A133620(A000038(n)+n)]`
-/

namespace A133621.P1253293488953850156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P1253293488953850156

namespace A133621

/-- `eq[1, A133620(A000038(n)+n)]` -/
def P1253293488953850156.Spec : Prop :=
  ∀ n, (P1253293488953850156.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P4002220478851206865

`eq[1, A001287(n)%A123108(A005843(n))]`
-/

namespace A133621.P4002220478851206865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001287 (n + 10)) (A123108 (A005843 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P4002220478851206865

namespace A133621

/-- `eq[1, A001287(n)%A123108(A005843(n))]` -/
def P4002220478851206865.Spec : Prop :=
  ∀ n, (P4002220478851206865.a n : ℤ) = A133621 (n + 1)

end A133621

/-! ## A133621.P2221552670574034192

`eq[1, A133620(A233583(n+1))]`
-/

namespace A133621.P2221552670574034192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133621.P2221552670574034192

namespace A133621

/-- `eq[1, A133620(A233583(n+1))]` -/
def P2221552670574034192.Spec : Prop :=
  ∀ n, (P2221552670574034192.a n : ℤ) = A133621 (n + 1)

end A133621

/-!
# A133622: a(n) = 1 if n is odd, a(n) = n/2+1 if n is even.

The programs for A133622, the canonical program `A133622.P7184305992374877769` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133622 has offset 1).

The definition of A133622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133622.P5672200243508268736

`a(n-2)+1-(n+1)%2` with `a(0)=1, a(1)=2`
-/

namespace A133622.P5672200243508268736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 1 - (((n + 1) % 2 : ℕ) : ℤ)

end

end A133622.P5672200243508268736

namespace A133622

/-- `a(n-2)+1-(n+1)%2` -/
def P5672200243508268736.Spec : Prop :=
  ∀ n, P5672200243508268736.a n = A133622 (n + 1)

end A133622

/-! ## A133622.P7184305992374877769

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133622

/-- `2*a(n-2)-a(n-4)` -/
def P7184305992374877769.Spec : Prop :=
  ∀ n, P7184305992374877769.a n = A133622 (n + 1)

theorem P7184305992374877769.correct : P7184305992374877769.Spec := by
  intro n
  simp only [A133622, Nat.add_sub_cancel]

end A133622

/-! ## A133622.P15332559550820840415

`1+(1+(-1)^(n+1))*(n+1)/4`
-/

namespace A133622.P15332559550820840415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((1 + (-1) ^ (n + 1)) * (n + 1 : ℤ) : ℚ) / 4

end

end A133622.P15332559550820840415

namespace A133622

/-- `1+(1+(-1)^(n+1))*(n+1)/4` -/
def P15332559550820840415.Spec : Prop :=
  ∀ n, P15332559550820840415.a n = (A133622 (n + 1) : ℚ)

theorem P15332559550820840415.correct : P15332559550820840415.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A133622, Nat.add_sub_cancel, A133622.P15332559550820840415.a, A133622.P7184305992374877769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A133622, Nat.add_sub_cancel, A133622.P15332559550820840415.a, A133622.P7184305992374877769.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A133622

/-! ## A133622.P15170207930474362620

`(a(n-3)+a(n-2))/a(n-1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A133622.P15170207930474362620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  (a (n - 3) + a (n - 2)) / a (n - 1)

end

end A133622.P15170207930474362620

namespace A133622

/-- `(a(n-3)+a(n-2))/a(n-1)` -/
def P15170207930474362620.Spec : Prop :=
  ∀ n, P15170207930474362620.a n = (A133622 (n + 1) : ℚ)

end A133622

/-! ## A133622.P16064336369752907113

`1+∑[n]%(n+1)`
-/

namespace A133622.P16064336369752907113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A133622.P16064336369752907113

namespace A133622

/-- `1+∑[n]%(n+1)` -/
def P16064336369752907113.Spec : Prop :=
  ∀ n, (P16064336369752907113.a n : ℤ) = A133622 (n + 1)

end A133622

/-! ## A133622.P18210157749849390171

`((n+3)/2)^(n%2)`
-/

namespace A133622.P18210157749849390171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) / 2) ^ (n % 2)

end

end A133622.P18210157749849390171

namespace A133622

/-- `((n+3)/2)^(n%2)` -/
def P18210157749849390171.Spec : Prop :=
  ∀ n, P18210157749849390171.a n = (A133622 (n + 1) : ℚ)

end A133622

/-! ## A133622.P4522923155369971125

`((n+3)/2)^and(1, n)`
-/

namespace A133622.P4522923155369971125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) / 2) ^ Nat.land 1 n

end

end A133622.P4522923155369971125

namespace A133622

/-- `((n+3)/2)^and(1, n)` -/
def P4522923155369971125.Spec : Prop :=
  ∀ n, P4522923155369971125.a n = (A133622 (n + 1) : ℚ)

end A133622

/-! ## A133622.P3636938595007347253

`a(n-2)+and(1, n)` with `a(0)=1, a(1)=2`
-/

namespace A133622.P3636938595007347253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.land 1 n

end

end A133622.P3636938595007347253

namespace A133622

/-- `a(n-2)+and(1, n)` -/
def P3636938595007347253.Spec : Prop :=
  ∀ n, (P3636938595007347253.a n : ℤ) = A133622 (n + 1)

end A133622

/-! ## A133622.P10580792593793697296

`gcd(floor(n/2)+2, n+3)`
-/

namespace A133622.P10580792593793697296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / 2⌋ + 2) (n + 3 : ℤ)

end

end A133622.P10580792593793697296

namespace A133622

/-- `gcd(floor(n/2)+2, n+3)` -/
def P10580792593793697296.Spec : Prop :=
  ∀ n, (P10580792593793697296.a n : ℤ) = A133622 (n + 1)

end A133622

/-! ## A133622.P12515666745315440830

`floor((lcm(2, n+2)-n)/2)`
-/

namespace A133622.P12515666745315440830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 (n + 2) : ℤ) - (n : ℤ) : ℚ) / 2⌋

end

end A133622.P12515666745315440830

namespace A133622

/-- `floor((lcm(2, n+2)-n)/2)` -/
def P12515666745315440830.Spec : Prop :=
  ∀ n, P12515666745315440830.a n = A133622 (n + 1)

end A133622

/-! ## A133622.P3358051749549995451

`C(floor((n+3)/2), and(1, n))`
-/

namespace A133622.P3358051749549995451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat (Nat.land 1 n)

end

end A133622.P3358051749549995451

namespace A133622

/-- `C(floor((n+3)/2), and(1, n))` -/
def P3358051749549995451.Spec : Prop :=
  ∀ n, (P3358051749549995451.a n : ℤ) = A133622 (n + 1)

end A133622

/-! ## A133622.P9732062592361596083

`n+2-gcd(n+1, ∑[n])`
-/

namespace A133622.P9732062592361596083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A133622.P9732062592361596083

namespace A133622

/-- `n+2-gcd(n+1, ∑[n])` -/
def P9732062592361596083.Spec : Prop :=
  ∀ n, P9732062592361596083.a n = A133622 (n + 1)

end A133622

/-! ## A133622.P8706831396885759556

`(n+1)*and(1, n)/2+1`
-/

namespace A133622.P8706831396885759556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.land 1 n : ℚ) / 2 + 1

end

end A133622.P8706831396885759556

namespace A133622

/-- `(n+1)*and(1, n)/2+1` -/
def P8706831396885759556.Spec : Prop :=
  ∀ n, P8706831396885759556.a n = (A133622 (n + 1) : ℚ)

end A133622

/-! ## A133622.P10812188538481272126

`lcm(n+1, and(1, n))/2+1`
-/

namespace A133622.P10812188538481272126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.land 1 n) : ℚ) / 2 + 1

end

end A133622.P10812188538481272126

namespace A133622

/-- `lcm(n+1, and(1, n))/2+1` -/
def P10812188538481272126.Spec : Prop :=
  ∀ n, P10812188538481272126.a n = (A133622 (n + 1) : ℚ)

end A133622

/-! ## A133622.P9886080959574170980

`(C(n+2, and(1, n))+1)/2`
-/

namespace A133622.P9886080959574170980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) (Nat.land 1 n) + 1 : ℚ) / 2

end

end A133622.P9886080959574170980

namespace A133622

/-- `(C(n+2, and(1, n))+1)/2` -/
def P9886080959574170980.Spec : Prop :=
  ∀ n, P9886080959574170980.a n = (A133622 (n + 1) : ℚ)

end A133622

/-! ## A133622.P8006075987205493629

`C(xor(1, n+3), 2)%(n+3)`
-/

namespace A133622.P8006075987205493629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 (n + 3)) 2 % (n + 3)

end

end A133622.P8006075987205493629

namespace A133622

/-- `C(xor(1, n+3), 2)%(n+3)` -/
def P8006075987205493629.Spec : Prop :=
  ∀ n, (P8006075987205493629.a n : ℤ) = A133622 (n + 1)

end A133622

/-! ## A133622.P15945984917091859610

`∑[and(1, n)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A133622.P15945984917091859610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.land 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133622.P15945984917091859610

namespace A133622

/-- `∑[and(1, n)-a(n-1)]` -/
def P15945984917091859610.Spec : Prop :=
  ∀ n, P15945984917091859610.a n = A133622 (n + 1)

end A133622

/-! ## A133622.P1367505501561840043

`Δ[C(floor((n+2)/2), 2)]+1`
-/

namespace A133622.P1367505501561840043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 2 : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A133622.P1367505501561840043

namespace A133622

/-- `Δ[C(floor((n+2)/2), 2)]+1` -/
def P1367505501561840043.Spec : Prop :=
  ∀ n, P1367505501561840043.a n = A133622 (n + 1)

end A133622

/-! ## A133622.P7253038902198615492

`ceil((n+1)²/2)%(n+2)`
-/

namespace A133622.P7253038902198615492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((n + 1) ^ 2 : ℚ) / 2⌉ (n + 2 : ℤ)

end

end A133622.P7253038902198615492

namespace A133622

/-- `ceil((n+1)²/2)%(n+2)` -/
def P7253038902198615492.Spec : Prop :=
  ∀ n, P7253038902198615492.a n = A133622 (n + 1)

end A133622

/-! ## A133622.P581085080241995241

`a(n-2)+val(∑[n], n)` with `a(0)=1, a(1)=2`
-/

namespace A133622.P581085080241995241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A133622.P581085080241995241

namespace A133622

/-- `a(n-2)+val(∑[n], n)` -/
def P581085080241995241.Spec : Prop :=
  ∀ n, (P581085080241995241.a n : ℤ) = A133622 (n + 1)

end A133622

/-!
# A133623: Binomial(n+p, n) mod n where p=3.

The programs for A133623, the canonical program `A133623.P15524310064056704552` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133623 has offset 1).

The definition of A133623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133623.P15524310064056704552

`C(n+4, 3)%(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133623

/-- `C(n+4, 3)%(n+1)` -/
def P15524310064056704552.Spec : Prop :=
  ∀ n, (P15524310064056704552.a n : ℤ) = A133623 (n + 1)

theorem P15524310064056704552.correct : P15524310064056704552.Spec := by
  intro n
  simp only [A133623, Nat.add_sub_cancel]

end A133623

/-! ## A133623.P8467067803831520510

`(C(n, 3)+2)%(n+1)`
-/

namespace A133623.P8467067803831520510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 + 2) % (n + 1)

end

end A133623.P8467067803831520510

namespace A133623

/-- `(C(n, 3)+2)%(n+1)` -/
def P8467067803831520510.Spec : Prop :=
  ∀ n, (P8467067803831520510.a n : ℤ) = A133623 (n + 1)

end A133623

/-! ## A133623.P15438014114599751438

`(∑[∑[n]]+1)%(n+1)`
-/

namespace A133623.P15438014114599751438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % (n + 1)

end

end A133623.P15438014114599751438

namespace A133623

/-- `(∑[∑[n]]+1)%(n+1)` -/
def P15438014114599751438.Spec : Prop :=
  ∀ n, (P15438014114599751438.a n : ℤ) = A133623 (n + 1)

end A133623

/-! ## A133623.P10694881759297556063

`n-A203552(n)%(n+1)`
-/

namespace A133623.P10694881759297556063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A203552 n) (n + 1 : ℤ)

end

end A133623.P10694881759297556063

namespace A133623

/-- `n-A203552(n)%(n+1)` -/
def P10694881759297556063.Spec : Prop :=
  ∀ n, P10694881759297556063.a n = A133623 (n + 1)

end A133623

/-! ## A133623.P922784605136868296

`abs((n-A006503(n))%(n+1))`
-/

namespace A133623.P922784605136868296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n : ℤ) - A006503 n) (n + 1 : ℤ)|

end

end A133623.P922784605136868296

namespace A133623

/-- `abs((n-A006503(n))%(n+1))` -/
def P922784605136868296.Spec : Prop :=
  ∀ n, P922784605136868296.a n = A133623 (n + 1)

end A133623

/-! ## A133623.P12554391296417946683

`A081371(A052905(n+1)+2)`
-/

namespace A133623.P12554391296417946683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A052905 (n + 1) + 2).toNat

end

end A133623.P12554391296417946683

namespace A133623

/-- `A081371(A052905(n+1)+2)` -/
def P12554391296417946683.Spec : Prop :=
  ∀ n, P12554391296417946683.a n = A133623 (n + 1)

end A133623

/-!
# A133624: Binomial(n+4, 4) mod n.

The programs for A133624, the canonical program `A133624.P16378967598971519222` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133624 has offset 1).

The definition of A133624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 4)%(n+1)` (program `A133624.P16378967598971519222`, by `A133624.P16378967598971519222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133624.P16378967598971519222

`C(n+5, 4)%(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133624

/-- `C(n+5, 4)%(n+1)` -/
def P16378967598971519222.Spec : Prop :=
  ∀ n, (P16378967598971519222.a n : ℤ) = A133624 (n + 1)

theorem P16378967598971519222.correct : P16378967598971519222.Spec := by
  intro n
  simp only [A133624, Nat.add_sub_cancel]

end A133624

/-! ## A133624.P2238354283245050704

`(∑[∑[∑[n]-n]]+1)%(n+1)`
-/

namespace A133624.P2238354283245050704
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1 : ℤ)

end

end A133624.P2238354283245050704

namespace A133624

/-- `(∑[∑[∑[n]-n]]+1)%(n+1)` -/
def P2238354283245050704.Spec : Prop :=
  ∀ n, P2238354283245050704.a n = A133624 (n + 1)

end A133624

/-! ## A133624.P2901533755342863190

`abs((A063258(n)-n)%(n+1))`
-/

namespace A133624.P2901533755342863190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A063258 n - (n : ℤ)) (n + 1 : ℤ)|

end

end A133624.P2901533755342863190

namespace A133624

/-- `abs((A063258(n)-n)%(n+1))` -/
def P2901533755342863190.Spec : Prop :=
  ∀ n, P2901533755342863190.a n = A133624 (n + 1)

end A133624

/-! ## A133624.P17910493172366106508

`abs(Δ[A000389(n+5)]%(n+1))`
-/

namespace A133624.P17910493172366106508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A133624.P17910493172366106508

namespace A133624

/-- `abs(Δ[A000389(n+5)]%(n+1))` -/
def P17910493172366106508.Spec : Prop :=
  ∀ n, P17910493172366106508.a n = A133624 (n + 1)

end A133624

/-! ## A133624.P12038877998029386714

`gcd(A056594(A001648(n+1)), A133625(n+1))`
-/

namespace A133624.P12038877998029386714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 (A001648 (n + 1)).toNat) (A133625 (n + 1))

end

end A133624.P12038877998029386714

namespace A133624

/-- `gcd(A056594(A001648(n+1)), A133625(n+1))` -/
def P12038877998029386714.Spec : Prop :=
  ∀ n, (P12038877998029386714.a n : ℤ) = A133624 (n + 1)

end A133624

/-!
# A133625: Binomial(n+p, n) mod n where p=5.

The programs for A133625, the canonical program `A133625.P12245829679187374816` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133625 has offset 1).

The definition of A133625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133625.P12245829679187374816

`C(n+6, 5)%(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133625

/-- `C(n+6, 5)%(n+1)` -/
def P12245829679187374816.Spec : Prop :=
  ∀ n, (P12245829679187374816.a n : ℤ) = A133625 (n + 1)

theorem P12245829679187374816.correct : P12245829679187374816.Spec := by
  intro n
  simp only [A133625, Nat.add_sub_cancel]

end A133625

/-! ## A133625.P14691769670079431658

`∏[5/(n+1)+1]%(n+1)`
-/

namespace A133625.P14691769670079431658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (n + 1 : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A133625.P14691769670079431658

namespace A133625

/-- `∏[5/(n+1)+1]%(n+1)` -/
def P14691769670079431658.Spec : Prop :=
  ∀ n, P14691769670079431658.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P13852770255667633955

`abs(Δ[A027810(n)]%(n+1))`
-/

namespace A133625.P13852770255667633955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A133625.P13852770255667633955

namespace A133625

/-- `abs(Δ[A027810(n)]%(n+1))` -/
def P13852770255667633955.Spec : Prop :=
  ∀ n, P13852770255667633955.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P2248497527976007749

`A000007(n+1)+A056118(n+1)%(n+1)`
-/

namespace A133625.P2248497527976007749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.tmod (A056118 (n + 1)) (n + 1 : ℤ)

end

end A133625.P2248497527976007749

namespace A133625

/-- `A000007(n+1)+A056118(n+1)%(n+1)` -/
def P2248497527976007749.Spec : Prop :=
  ∀ n, P2248497527976007749.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P16619715795300586558

`abs(Δ[A000579(n+6)]%(n+1))`
-/

namespace A133625.P16619715795300586558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A133625.P16619715795300586558

namespace A133625

/-- `abs(Δ[A000579(n+6)]%(n+1))` -/
def P16619715795300586558.Spec : Prop :=
  ∀ n, P16619715795300586558.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P12306510820385587447

`A081371(A052905(n+3))`
-/

namespace A133625.P12306510820385587447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A052905 (n + 3)).toNat

end

end A133625.P12306510820385587447

namespace A133625

/-- `A081371(A052905(n+3))` -/
def P12306510820385587447.Spec : Prop :=
  ∀ n, P12306510820385587447.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P10532907961990620732

`A081371(A055999(n+3)+1)`
-/

namespace A133625.P10532907961990620732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A055999 (n + 3) + 1).toNat

end

end A133625.P10532907961990620732

namespace A133625

/-- `A081371(A055999(n+3)+1)` -/
def P10532907961990620732.Spec : Prop :=
  ∀ n, P10532907961990620732.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P7396904517435451423

`A081371(A000217(n+6)-5)`
-/

namespace A133625.P7396904517435451423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A000217 (n + 6) - 5).toNat

end

end A133625.P7396904517435451423

namespace A133625

/-- `A081371(A000217(n+6)-5)` -/
def P7396904517435451423.Spec : Prop :=
  ∀ n, P7396904517435451423.a n = A133625 (n + 1)

end A133625

/-! ## A133625.P6079623422394597235

`A081371(A000124(n+6)-6)`
-/

namespace A133625.P6079623422394597235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (A000124 (n + 6) - 6).toNat

end

end A133625.P6079623422394597235

namespace A133625

/-- `A081371(A000124(n+6)-6)` -/
def P6079623422394597235.Spec : Prop :=
  ∀ n, P6079623422394597235.a n = A133625 (n + 1)

end A133625

/-!
# A133626: Numbers that are lunar products of exactly 2 lunar primes.

The programs for A133626, there is no canonical definition to state claims against.
-/

/-! ## A133626.P18294493580231427774

`A087984(n+2)%A186609(A004767(n))`
-/

namespace A133626.P18294493580231427774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087984 (n + 2)) (A186609 (A004767 n).toNat)

end

end A133626.P18294493580231427774

/-! ## A133626.P9577582336657826556

`A087966(A001844(n+1))*A087984(n+2)`
-/

namespace A133626.P9577582336657826556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087966 (A001844 (n + 1)).toNat * A087984 (n + 2)

end

end A133626.P9577582336657826556

/-! ## A133626.P336089527065804274

`lcm(A087960(2*A186152(3*n+2)), A087984(n+2))`
-/

namespace A133626.P336089527065804274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 (2 * A186152 (3 * n + 2)).toNat) (A087984 (n + 2))

end

end A133626.P336089527065804274

/-! ## A133626.P7997132809025388044

`A087960(56*n)*A087984(n+2)`
-/

namespace A133626.P7997132809025388044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (56 * n) * A087984 (n + 2)

end

end A133626.P7997132809025388044

/-! ## A133626.P7469876914151318984

`A087984(n+2)+A036987(A028326(n))`
-/

namespace A133626.P7469876914151318984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 2) + A036987 (A028326 n).toNat

end

end A133626.P7469876914151318984

/-! ## A133626.P14197656097797773241

`A087984(n+2)+A011741(A170962(n))`
-/

namespace A133626.P14197656097797773241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 2) + A011741 (A170962 n).toNat

end

end A133626.P14197656097797773241

/-! ## A133626.P8714867427262706699

`A233583(A087984(n+2)+1)`
-/

namespace A133626.P8714867427262706699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A087984 (n + 2) + 1).toNat

end

end A133626.P8714867427262706699

/-! ## A133626.P7386674017475359389

`∩[A087984(n+1), A105432(n+1)]`
-/

namespace A133626.P7386674017475359389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133626.P7386674017475359389

/-! ## A133626.P15314236700454184541

`∩[A087984(n+1), A134787(n+1)]`
-/

namespace A133626.P15314236700454184541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133626.P15314236700454184541

/-! ## A133626.P2533039448829289555

`or(A087984(n+2), A295316(A229973(n+1)²))`
-/

namespace A133626.P2533039448829289555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087984 (n + 2)) (A295316 (A229973 (n + 1) ^ 2).toNat)

end

end A133626.P2533039448829289555

/-! ## A133626.P6702326151334499654

`A087984(n+2)+A083914(8*8*n+13)`
-/

namespace A133626.P6702326151334499654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 2) + A083914 (8 * (8 * n) + 13)

end

end A133626.P6702326151334499654

/-! ## A133626.P4592096837777776069

`A087984(n+2)+A007814(A141882(n+1))`
-/

namespace A133626.P4592096837777776069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 2) + A007814 (A141882 (n + 1)).toNat

end

end A133626.P4592096837777776069

/-! ## A133626.P13075726758447909678

`A087984(A087061(∑[n])+2)`
-/

namespace A133626.P13075726758447909678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (A087061 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A133626.P13075726758447909678

/-! ## A133626.P10526202557143575373

`A002828((n+1)²)*A087984(n+2)`
-/

namespace A133626.P10526202557143575373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n + 1) ^ 2) * A087984 (n + 2)

end

end A133626.P10526202557143575373

/-! ## A133626.P10239363717758945803

`A087984(n+2)+A004198(A000217(n))`
-/

namespace A133626.P10239363717758945803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 2) + A004198 (A000217 n).toNat

end

end A133626.P10239363717758945803

/-! ## A133626.P1624641196012216622

`A087984(A126988(∑[n+1]+1))`
-/

namespace A133626.P1624641196012216622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (A126988 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A133626.P1624641196012216622

/-! ## A133626.P16707106393759073409

`A087984(A342765(∑[n+1]+1))`
-/

namespace A133626.P16707106393759073409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (A342765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A133626.P16707106393759073409

/-!
# A133629: a(1)=1, a(n) = a(n-1) + (p-1)*p^(n/2-1) if n is even, otherwise a(n) = a(n-1) + p^((n-1)/2), where p=5.

The programs for A133629, the canonical program `A133629.P10858889392814050258` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133629 has offset 1).

The definition of A133629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133629.P9907562755870852804

`ogf((1+4x)/(1-x-5x^2+5x^3))`
-/

namespace A133629.P9907562755870852804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -1, -5, 5] n

end

end A133629.P9907562755870852804

namespace A133629

/-- `ogf((1+4x)/(1-x-5x^2+5x^3))` -/
def P9907562755870852804.Spec : Prop :=
  ∀ n, P9907562755870852804.a n = A133629 (n + 1)

end A133629

/-! ## A133629.P10858889392814050258

`5*a(n-2)+5` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133629

/-- `5*a(n-2)+5` -/
def P10858889392814050258.Spec : Prop :=
  ∀ n, (P10858889392814050258.a n : ℤ) = A133629 (n + 1)

theorem P10858889392814050258.correct : P10858889392814050258.Spec := by
  intro n
  simp only [A133629, Nat.add_sub_cancel]

end A133629

/-! ## A133629.P4852823258568882309

`A132669(a(n-1)+1)` with `a(0)=1`
-/

namespace A133629.P4852823258568882309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132669 (a (n - 1) + 1).toNat

end

end A133629.P4852823258568882309

namespace A133629

/-- `A132669(a(n-1)+1)` -/
def P4852823258568882309.Spec : Prop :=
  ∀ n, P4852823258568882309.a n = A133629 (n + 1)

end A133629

/-! ## A133629.P11784581318954618731

`∑[ogf((1+4x)/(1-5x^2))]`
-/

namespace A133629.P11784581318954618731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133629.P11784581318954618731

namespace A133629

/-- `∑[ogf((1+4x)/(1-5x^2))]` -/
def P11784581318954618731.Spec : Prop :=
  ∀ n, P11784581318954618731.a n = A133629 (n + 1)

end A133629

/-! ## A133629.P14409661512427834036

`∑[5*a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A133629.P14409661512427834036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133629.P14409661512427834036

namespace A133629

/-- `∑[5*a(n-2)]` -/
def P14409661512427834036.Spec : Prop :=
  ∀ n, (P14409661512427834036.a n : ℤ) = A133629 (n + 1)

end A133629

/-! ## A133629.P5476134689135916759

`5*(a(n-2)+1)` with `a(0)=1, a(1)=5`
-/

namespace A133629.P5476134689135916759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * (a (n - 2) + 1)

end

end A133629.P5476134689135916759

namespace A133629

/-- `5*(a(n-2)+1)` -/
def P5476134689135916759.Spec : Prop :=
  ∀ n, (P5476134689135916759.a n : ℤ) = A133629 (n + 1)

theorem P5476134689135916759.correct : P5476134689135916759.Spec := by
  intro n
  simp only [A133629, Nat.add_sub_cancel, A133629.P5476134689135916759.a, A133629.P10858889392814050258.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133629

/-! ## A133629.P7150741054717183245

`lcm(5, a(n-2)+1)` with `a(0)=1, a(1)=5`
-/

namespace A133629.P7150741054717183245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 5 (a (n - 2) + 1)

end

end A133629.P7150741054717183245

namespace A133629

/-- `lcm(5, a(n-2)+1)` -/
def P7150741054717183245.Spec : Prop :=
  ∀ n, (P7150741054717183245.a n : ℤ) = A133629 (n + 1)

end A133629

/-! ## A133629.P14702566456266203394

`5-(a(n-2)-6*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A133629.P14702566456266203394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 - (a (n - 2) - 6 * a (n - 2))

end

end A133629.P14702566456266203394

namespace A133629

/-- `5-(a(n-2)-6*a(n-2))` -/
def P14702566456266203394.Spec : Prop :=
  ∀ n, P14702566456266203394.a n = A133629 (n + 1)

end A133629

/-! ## A133629.P7303873230364006767

`∑[A133632(n+1)]`
-/

namespace A133629.P7303873230364006767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133629.P7303873230364006767

namespace A133629

/-- `∑[A133632(n+1)]` -/
def P7303873230364006767.Spec : Prop :=
  ∀ n, P7303873230364006767.a n = A133629 (n + 1)

end A133629

/-! ## A133629.P16941572722193843923

`A163141(n)+a(n-1)` with `a(0)=1`
-/

namespace A133629.P16941572722193843923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163141 n + a (n - 1)

end

end A133629.P16941572722193843923

namespace A133629

/-- `A163141(n)+a(n-1)` -/
def P16941572722193843923.Spec : Prop :=
  ∀ n, P16941572722193843923.a n = A133629 (n + 1)

end A133629

/-! ## A133629.P15809650997141374390

`A048330(2*n+1)+A048330(2*n)`
-/

namespace A133629.P15809650997141374390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (2 * n + 1) + A048330 (2 * n)

end

end A133629.P15809650997141374390

namespace A133629

/-- `A048330(2*n+1)+A048330(2*n)` -/
def P15809650997141374390.Spec : Prop :=
  ∀ n, P15809650997141374390.a n = A133629 (n + 1)

end A133629

/-!
# A133630: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=10.

The programs for A133630, the canonical program `A133630.P3680023674435169334` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133630 has offset 1).

The definition of A133630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133630.P10391998745477995744

`filter[A133621(n+1), A005171(#)]`
-/

namespace A133630.P10391998745477995744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A133630.P10391998745477995744

namespace A133630

/-- `filter[A133621(n+1), A005171(#)]` -/
def P10391998745477995744.Spec : Prop :=
  ∀ n, P10391998745477995744.a n = A133630 (n + 1)

end A133630

/-! ## A133630.P3680023674435169334

`filter[A133621(n+1), A066247(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133630

/-- `filter[A133621(n+1), A066247(#)]` -/
def P3680023674435169334.Spec : Prop :=
  ∀ n, P3680023674435169334.a n = A133630 (n + 1)

theorem P3680023674435169334.correct : P3680023674435169334.Spec := by
  intro n
  simp only [A133630, Nat.add_sub_cancel]

end A133630

/-! ## A133630.P1464312879904091114

`∩[A002808(n+1), A133621(n+1)]`
-/

namespace A133630.P1464312879904091114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133630.P1464312879904091114

namespace A133630

/-- `∩[A002808(n+1), A133621(n+1)]` -/
def P1464312879904091114.Spec : Prop :=
  ∀ n, (P1464312879904091114.a n : ℤ) = A133630 (n + 1)

end A133630

/-! ## A133630.P6601276128639944796

`∩[A018252(n+1), A133621(n+1)]`
-/

namespace A133630.P6601276128639944796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133630.P6601276128639944796

namespace A133630

/-- `∩[A018252(n+1), A133621(n+1)]` -/
def P6601276128639944796.Spec : Prop :=
  ∀ n, (P6601276128639944796.a n : ℤ) = A133630 (n + 1)

end A133630

/-! ## A133630.P7461236955104554249

`∩[A133621(n+1), A141468(n+1)]`
-/

namespace A133630.P7461236955104554249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133630.P7461236955104554249

namespace A133630

/-- `∩[A133621(n+1), A141468(n+1)]` -/
def P7461236955104554249.Spec : Prop :=
  ∀ n, (P7461236955104554249.a n : ℤ) = A133630 (n + 1)

end A133630

/-! ## A133630.P7221231957966717423

`∩[A065090(n+1), A133621(n+1)]`
-/

namespace A133630.P7221231957966717423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133630.P7221231957966717423

namespace A133630

/-- `∩[A065090(n+1), A133621(n+1)]` -/
def P7221231957966717423.Spec : Prop :=
  ∀ n, (P7221231957966717423.a n : ℤ) = A133630 (n + 1)

end A133630

/-! ## A133630.P16065269429870823534

`record[A191558(A133621(n+2))]`
-/

namespace A133630.P16065269429870823534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A133621 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133630.P16065269429870823534

namespace A133630

/-- `record[A191558(A133621(n+2))]` -/
def P16065269429870823534.Spec : Prop :=
  ∀ n, P16065269429870823534.a n = A133630 (n + 1)

end A133630

/-! ## A133630.P5207389786788328253

`filter[A002808(n+1), A133620(#)]`
-/

namespace A133630.P5207389786788328253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133620 (f1 j).toNat = 1) n)

end

end A133630.P5207389786788328253

namespace A133630

/-- `filter[A002808(n+1), A133620(#)]` -/
def P5207389786788328253.Spec : Prop :=
  ∀ n, P5207389786788328253.a n = A133630 (n + 1)

end A133630

/-! ## A133630.P2251283125595106095

`filter[A018252(n+1), A133620(#)]`
-/

namespace A133630.P2251283125595106095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133620 (f1 j).toNat = 1) n)

end

end A133630.P2251283125595106095

namespace A133630

/-- `filter[A018252(n+1), A133620(#)]` -/
def P2251283125595106095.Spec : Prop :=
  ∀ n, P2251283125595106095.a n = A133630 (n + 1)

end A133630

/-!
# A133631: a(n) = a(n-1) - 4*a(n-2), a(0)=1, a(1)=2.

The programs for A133631, the canonical program `A133631.P6552132953133124332` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133631 has offset 0).

The definition of A133631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-4*a(n-2)` (program `A133631.P6552132953133124332`, by `A133631.P6552132953133124332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133631.P5217234900687214150

`ogf((1+x)/(1-x+4x^2))`
-/

namespace A133631.P5217234900687214150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, 4] n

end

end A133631.P5217234900687214150

namespace A133631

/-- `ogf((1+x)/(1-x+4x^2))` -/
def P5217234900687214150.Spec : Prop :=
  ∀ n, P5217234900687214150.a n = A133631 n

end A133631

/-! ## A133631.P6552132953133124332

`a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133631

/-- `a(n-1)-4*a(n-2)` -/
def P6552132953133124332.Spec : Prop :=
  ∀ n, P6552132953133124332.a n = A133631 n

theorem P6552132953133124332.correct : P6552132953133124332.Spec := by
  intro n
  simp only [A133631]

end A133631

/-! ## A133631.P9012405199558156270

`∑{#}[n, A133607(C(n+1, 2)+#)*2^#]`
-/

namespace A133631.P9012405199558156270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (2 ^ k : ℤ)

end

end A133631.P9012405199558156270

namespace A133631

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*2^#]` -/
def P9012405199558156270.Spec : Prop :=
  ∀ n, P9012405199558156270.a n = A133631 n

end A133631

/-! ## A133631.P12342940373712188867

`∏[1-4/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A133631.P12342940373712188867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133631.P12342940373712188867

namespace A133631

/-- `∏[1-4/a(n-1)]` -/
def P12342940373712188867.Spec : Prop :=
  ∀ n, P12342940373712188867.a n = (A133631 n : ℚ)

end A133631

/-! ## A133631.P15247247150327704924

`a(n-1)-a(n-2)/(1/2)²` with `a(0)=1, a(1)=2`
-/

namespace A133631.P15247247150327704924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A133631.P15247247150327704924

namespace A133631

/-- `a(n-1)-a(n-2)/(1/2)²` -/
def P15247247150327704924.Spec : Prop :=
  ∀ n, P15247247150327704924.a n = (A133631 n : ℚ)

end A133631

/-! ## A133631.P8137498835119171721

`a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A133631.P8137498835119171721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 2) - a (n - 2)

end

end A133631.P8137498835119171721

namespace A133631

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` -/
def P8137498835119171721.Spec : Prop :=
  ∀ n, P8137498835119171721.a n = A133631 n

theorem P8137498835119171721.correct : P8137498835119171721.Spec := by
  intro n
  simp only [A133631, Nat.add_sub_cancel, A133631.P8137498835119171721.a, A133631.P6552132953133124332.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133631

/-! ## A133631.P16774971862552220567

`3*A106853(n)-A272931(n)`
-/

namespace A133631.P16774971862552220567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106853 n - A272931 n

end

end A133631.P16774971862552220567

namespace A133631

/-- `3*A106853(n)-A272931(n)` -/
def P16774971862552220567.Spec : Prop :=
  ∀ n, P16774971862552220567.a n = A133631 n

end A133631

/-!
# A133632: a(1)=1, a(n) = (p-1)*a(n-1), if n is even, otherwise a(n) = p*a(n-2), where p = 5.

The programs for A133632, the canonical program `A133632.P12208167916910665319` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133632 has offset 1).

The definition of A133632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133632.P12208167916910665319

`5*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133632

/-- `5*a(n-2)` -/
def P12208167916910665319.Spec : Prop :=
  ∀ n, (P12208167916910665319.a n : ℤ) = A133632 (n + 1)

theorem P12208167916910665319.correct : P12208167916910665319.Spec := by
  intro n
  simp only [A133632, Nat.add_sub_cancel]

end A133632

/-! ## A133632.P15263009480076434066

`ogf((1+4x)/(1-5x^2))`
-/

namespace A133632.P15263009480076434066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -5] n

end

end A133632.P15263009480076434066

namespace A133632

/-- `ogf((1+4x)/(1-5x^2))` -/
def P15263009480076434066.Spec : Prop :=
  ∀ n, P15263009480076434066.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P13338895199713908269

`∏[5/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A133632.P13338895199713908269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133632.P13338895199713908269

namespace A133632

/-- `∏[5/a(n-1)]` -/
def P13338895199713908269.Spec : Prop :=
  ∀ n, P13338895199713908269.a n = (A133632 (n + 1) : ℚ)

end A133632

/-! ## A133632.P7764954861912342923

`a(n-2)/(1-4/5)` with `a(0)=1, a(1)=4`
-/

namespace A133632.P7764954861912342923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / (1 - (4 : ℚ) / 5)

end

end A133632.P7764954861912342923

namespace A133632

/-- `a(n-2)/(1-4/5)` -/
def P7764954861912342923.Spec : Prop :=
  ∀ n, P7764954861912342923.a n = (A133632 (n + 1) : ℚ)

end A133632

/-! ## A133632.P10089467900831248508

`gcd(2, n+1)²*A074872(n+1)`
-/

namespace A133632.P10089467900831248508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 2 : ℤ) * A074872 (n + 1)

end

end A133632.P10089467900831248508

namespace A133632

/-- `gcd(2, n+1)²*A074872(n+1)` -/
def P10089467900831248508.Spec : Prop :=
  ∀ n, P10089467900831248508.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P10217892444773575961

`A140730(A014601(n))`
-/

namespace A133632.P10217892444773575961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A014601 n).toNat

end

end A133632.P10217892444773575961

namespace A133632

/-- `A140730(A014601(n))` -/
def P10217892444773575961.Spec : Prop :=
  ∀ n, P10217892444773575961.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P2079098598875521433

`A245478(A032766(n+1))`
-/

namespace A133632.P2079098598875521433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A032766 (n + 1)).toNat

end

end A133632.P2079098598875521433

namespace A133632

/-- `A245478(A032766(n+1))` -/
def P2079098598875521433.Spec : Prop :=
  ∀ n, P2079098598875521433.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P11253874633198707199

`A000034(n)*A026383(n)`
-/

namespace A133632.P11253874633198707199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A026383 n

end

end A133632.P11253874633198707199

namespace A133632

/-- `A000034(n)*A026383(n)` -/
def P11253874633198707199.Spec : Prop :=
  ∀ n, P11253874633198707199.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P16141915066383328245

`lcm(A010685(n), A026383(n))`
-/

namespace A133632.P16141915066383328245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010685 n) (A026383 n)

end

end A133632.P16141915066383328245

namespace A133632

/-- `lcm(A010685(n), A026383(n))` -/
def P16141915066383328245.Spec : Prop :=
  ∀ n, (P16141915066383328245.a n : ℤ) = A133632 (n + 1)

end A133632

/-! ## A133632.P12257739641498532581

`A140730(A042948(n+1)-1)`
-/

namespace A133632.P12257739641498532581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A042948 (n + 1) - 1).toNat

end

end A133632.P12257739641498532581

namespace A133632

/-- `A140730(A042948(n+1)-1)` -/
def P12257739641498532581.Spec : Prop :=
  ∀ n, P12257739641498532581.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P5092206242768335750

`A140730(A338062(n+1)-1)`
-/

namespace A133632.P5092206242768335750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A338062 (n + 1) - 1).toNat

end

end A133632.P5092206242768335750

namespace A133632

/-- `A140730(A338062(n+1)-1)` -/
def P5092206242768335750.Spec : Prop :=
  ∀ n, P5092206242768335750.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P3211813323907181450

`A245478(A001651(n+2)-1)`
-/

namespace A133632.P3211813323907181450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A001651 (n + 2) - 1).toNat

end

end A133632.P3211813323907181450

namespace A133632

/-- `A245478(A001651(n+2)-1)` -/
def P3211813323907181450.Spec : Prop :=
  ∀ n, P3211813323907181450.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P6534071366609198615

`A010685(n)*A074872(n+1)`
-/

namespace A133632.P6534071366609198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A074872 (n + 1)

end

end A133632.P6534071366609198615

namespace A133632

/-- `A010685(n)*A074872(n+1)` -/
def P6534071366609198615.Spec : Prop :=
  ∀ n, P6534071366609198615.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P5167655922929937106

`A140730(A000035(n)+2*n)`
-/

namespace A133632.P5167655922929937106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A000035 n + (2 * n : ℤ)).toNat

end

end A133632.P5167655922929937106

namespace A133632

/-- `A140730(A000035(n)+2*n)` -/
def P5167655922929937106.Spec : Prop :=
  ∀ n, P5167655922929937106.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P12550723457886002285

`A140730(A000035(n)+n+n)`
-/

namespace A133632.P12550723457886002285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A133632.P12550723457886002285

namespace A133632

/-- `A140730(A000035(n)+n+n)` -/
def P12550723457886002285.Spec : Prop :=
  ∀ n, P12550723457886002285.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P5584751201700193053

`A000034(n)²*A074872(n+1)`
-/

namespace A133632.P5584751201700193053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A074872 (n + 1)

end

end A133632.P5584751201700193053

namespace A133632

/-- `A000034(n)²*A074872(n+1)` -/
def P5584751201700193053.Spec : Prop :=
  ∀ n, P5584751201700193053.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P9665795003842320296

`(A010695(n)-1)*A074872(n+1)`
-/

namespace A133632.P9665795003842320296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010695 n - 1) * A074872 (n + 1)

end

end A133632.P9665795003842320296

namespace A133632

/-- `(A010695(n)-1)*A074872(n+1)` -/
def P9665795003842320296.Spec : Prop :=
  ∀ n, P9665795003842320296.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P15434867475183187231

`A040001(n+1)²*A074872(n+1)`
-/

namespace A133632.P15434867475183187231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) ^ 2 * A074872 (n + 1)

end

end A133632.P15434867475183187231

namespace A133632

/-- `A040001(n+1)²*A074872(n+1)` -/
def P15434867475183187231.Spec : Prop :=
  ∀ n, P15434867475183187231.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P18003736121767843569

`(A032766(n+1)-A032766(n))*A026383(n)`
-/

namespace A133632.P18003736121767843569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032766 (n + 1) - A032766 n) * A026383 n

end

end A133632.P18003736121767843569

namespace A133632

/-- `(A032766(n+1)-A032766(n))*A026383(n)` -/
def P18003736121767843569.Spec : Prop :=
  ∀ n, P18003736121767843569.a n = A133632 (n + 1)

end A133632

/-! ## A133632.P10178546688074764030

`A016116(n+1)/A016116(n)*A026383(n)`
-/

namespace A133632.P10178546688074764030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) / (A016116 n : ℚ) * (A026383 n : ℚ)

end

end A133632.P10178546688074764030

namespace A133632

/-- `A016116(n+1)/A016116(n)*A026383(n)` -/
def P10178546688074764030.Spec : Prop :=
  ∀ n, P10178546688074764030.a n = (A133632 (n + 1) : ℚ)

end A133632

/-!
# A133634: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=4.

The programs for A133634, the canonical program `A133634.P8398308076930619958` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133634 has offset 1).

The definition of A133634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133634.P8398308076930619958

`filter[A259749(n+1), A066247(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133634

/-- `filter[A259749(n+1), A066247(#)]` -/
def P8398308076930619958.Spec : Prop :=
  ∀ n, P8398308076930619958.a n = A133634 (n + 1)

theorem P8398308076930619958.correct : P8398308076930619958.Spec := by
  intro n
  simp only [A133634, Nat.add_sub_cancel]

end A133634

/-! ## A133634.P9650884643287765657

`filter[A259749(n+1), A202238(#)]`
-/

namespace A133634.P9650884643287765657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A133634.P9650884643287765657

namespace A133634

/-- `filter[A259749(n+1), A202238(#)]` -/
def P9650884643287765657.Spec : Prop :=
  ∀ n, P9650884643287765657.a n = A133634 (n + 1)

end A133634

/-! ## A133634.P2432250776881797807

`filter[A259749(n+2), A005171(#)]`
-/

namespace A133634.P2432250776881797807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A133634.P2432250776881797807

namespace A133634

/-- `filter[A259749(n+2), A005171(#)]` -/
def P2432250776881797807.Spec : Prop :=
  ∀ n, P2432250776881797807.a n = A133634 (n + 1)

end A133634

/-! ## A133634.P10415491039726336384

`filter[A259749(n+2), A292438(#)]`
-/

namespace A133634.P10415491039726336384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A133634.P10415491039726336384

namespace A133634

/-- `filter[A259749(n+2), A292438(#)]` -/
def P10415491039726336384.Spec : Prop :=
  ∀ n, P10415491039726336384.a n = A133634 (n + 1)

end A133634

/-! ## A133634.P10781381626083987506

`∩[A002808(n+1), A259749(n+1)]`
-/

namespace A133634.P10781381626083987506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133634.P10781381626083987506

namespace A133634

/-- `∩[A002808(n+1), A259749(n+1)]` -/
def P10781381626083987506.Spec : Prop :=
  ∀ n, (P10781381626083987506.a n : ℤ) = A133634 (n + 1)

end A133634

/-! ## A133634.P14879990641844601335

`∩[A062973(n+1), A259749(n+1)]`
-/

namespace A133634.P14879990641844601335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133634.P14879990641844601335

namespace A133634

/-- `∩[A062973(n+1), A259749(n+1)]` -/
def P14879990641844601335.Spec : Prop :=
  ∀ n, (P14879990641844601335.a n : ℤ) = A133634 (n + 1)

end A133634

/-! ## A133634.P13108778048529096733

`∩[A138592(n+1), A259749(n+1)]`
-/

namespace A133634.P13108778048529096733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133634.P13108778048529096733

namespace A133634

/-- `∩[A138592(n+1), A259749(n+1)]` -/
def P13108778048529096733.Spec : Prop :=
  ∀ n, (P13108778048529096733.a n : ℤ) = A133634 (n + 1)

end A133634

/-! ## A133634.P8512973185180886870

`∩[A176423(n+1), A259749(n+1)]`
-/

namespace A133634.P8512973185180886870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133634.P8512973185180886870

namespace A133634

/-- `∩[A176423(n+1), A259749(n+1)]` -/
def P8512973185180886870.Spec : Prop :=
  ∀ n, (P8512973185180886870.a n : ℤ) = A133634 (n + 1)

end A133634

/-! ## A133634.P15261998342303108278

`eq[A080339(n+1), A259748(n+1)]+1`
-/

namespace A133634.P15261998342303108278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133634.P15261998342303108278

namespace A133634

/-- `eq[A080339(n+1), A259748(n+1)]+1` -/
def P15261998342303108278.Spec : Prop :=
  ∀ n, (P15261998342303108278.a n : ℤ) = A133634 (n + 1)

end A133634

/-! ## A133634.P4818301843020121205

`eq[gcd(n+6, A056000(n)+15), A107393(n)]`
-/

namespace A133634.P4818301843020121205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A056000 n + 15)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133634.P4818301843020121205

namespace A133634

/-- `eq[gcd(n+6, A056000(n)+15), A107393(n)]` -/
def P4818301843020121205.Spec : Prop :=
  ∀ n, (P4818301843020121205.a n : ℤ) = A133634 (n + 1)

end A133634

/-! ## A133634.P12455318726871796744

`A020725(eq[A080339(n+1), A259748(n+1)])`
-/

namespace A133634.P12455318726871796744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A133634.P12455318726871796744

namespace A133634

/-- `A020725(eq[A080339(n+1), A259748(n+1)])` -/
def P12455318726871796744.Spec : Prop :=
  ∀ n, P12455318726871796744.a n = A133634 (n + 1)

end A133634

/-! ## A133634.P10980703179720940608

`A153152(eq[A080339(n+1), A259748(n+1)])`
-/

namespace A133634.P10980703179720940608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A133634.P10980703179720940608

namespace A133634

/-- `A153152(eq[A080339(n+1), A259748(n+1)])` -/
def P10980703179720940608.Spec : Prop :=
  ∀ n, P10980703179720940608.a n = A133634 (n + 1)

end A133634

/-! ## A133634.P10690856509305073631

`A026239(p?[A026239(A259749(n+1))])`
-/

namespace A133634.P10690856509305073631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A259749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133634.P10690856509305073631

namespace A133634

/-- `A026239(p?[A026239(A259749(n+1))])` -/
def P10690856509305073631.Spec : Prop :=
  ∀ n, P10690856509305073631.a n = A133634 (n + 1)

end A133634

/-! ## A133634.P6396841626436124511

`∩[A111774(n+1), A259749(n+1)]`
-/

namespace A133634.P6396841626436124511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133634.P6396841626436124511

namespace A133634

/-- `∩[A111774(n+1), A259749(n+1)]` -/
def P6396841626436124511.Spec : Prop :=
  ∀ n, (P6396841626436124511.a n : ℤ) = A133634 (n + 1)

end A133634

/-!
# A133635: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=5.

The programs for A133635, the canonical program `A133635.P12044644420769387225` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133635 has offset 1).

The definition of A133635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133635.P12044644420769387225

`filter[A133634(n+1), A011558(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133635

/-- `filter[A133634(n+1), A011558(#)]` -/
def P12044644420769387225.Spec : Prop :=
  ∀ n, P12044644420769387225.a n = A133635 (n + 1)

theorem P12044644420769387225.correct : P12044644420769387225.Spec := by
  intro n
  simp only [A133635, Nat.add_sub_cancel]

end A133635

/-! ## A133635.P12503036434189216110

`∩[A047201(n+1), A133634(n+1)]`
-/

namespace A133635.P12503036434189216110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133635.P12503036434189216110

namespace A133635

/-- `∩[A047201(n+1), A133634(n+1)]` -/
def P12503036434189216110.Spec : Prop :=
  ∀ n, (P12503036434189216110.a n : ℤ) = A133635 (n + 1)

end A133635

/-! ## A133635.P10597974504205074100

`∩[A133634(n+1), A229829(n+1)]`
-/

namespace A133635.P10597974504205074100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133635.P10597974504205074100

namespace A133635

/-- `∩[A133634(n+1), A229829(n+1)]` -/
def P10597974504205074100.Spec : Prop :=
  ∀ n, (P10597974504205074100.a n : ℤ) = A133635 (n + 1)

end A133635

/-! ## A133635.P10582007011275343742

`∩[A133634(n+1), A335155(n+1)]`
-/

namespace A133635.P10582007011275343742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133635.P10582007011275343742

namespace A133635

/-- `∩[A133634(n+1), A335155(n+1)]` -/
def P10582007011275343742.Spec : Prop :=
  ∀ n, (P10582007011275343742.a n : ℤ) = A133635 (n + 1)

end A133635

/-! ## A133635.P4516014669329171852

`∩[A102577(n+1), A133634(n+1)]`
-/

namespace A133635.P4516014669329171852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133635.P4516014669329171852

namespace A133635

/-- `∩[A102577(n+1), A133634(n+1)]` -/
def P4516014669329171852.Spec : Prop :=
  ∀ n, (P4516014669329171852.a n : ℤ) = A133635 (n + 1)

end A133635

/-!
# A133636: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=6.

The programs for A133636, the canonical program `A133636.P3030038643792088709` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133636 has offset 1).

The definition of A133636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133636.P4129266338349536646

`filter[A053795(n+1), A373991(#)]`
-/

namespace A133636.P4129266338349536646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A133636.P4129266338349536646

namespace A133636

/-- `filter[A053795(n+1), A373991(#)]` -/
def P4129266338349536646.Spec : Prop :=
  ∀ n, P4129266338349536646.a n = A133636 (n + 1)

end A133636

/-! ## A133636.P4975924137122284265

`filter[A053795(n+1), A374039(#)]`
-/

namespace A133636.P4975924137122284265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A133636.P4975924137122284265

namespace A133636

/-- `filter[A053795(n+1), A374039(#)]` -/
def P4975924137122284265.Spec : Prop :=
  ∀ n, P4975924137122284265.a n = A133636 (n + 1)

end A133636

/-! ## A133636.P2233508093076137264

`filter[A100490(n+1), A373991(#)]`
-/

namespace A133636.P2233508093076137264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A133636.P2233508093076137264

namespace A133636

/-- `filter[A100490(n+1), A373991(#)]` -/
def P2233508093076137264.Spec : Prop :=
  ∀ n, P2233508093076137264.a n = A133636 (n + 1)

end A133636

/-! ## A133636.P8865574744832006698

`filter[A100490(n+1), A374039(#)]`
-/

namespace A133636.P8865574744832006698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A133636.P8865574744832006698

namespace A133636

/-- `filter[A100490(n+1), A374039(#)]` -/
def P8865574744832006698.Spec : Prop :=
  ∀ n, P8865574744832006698.a n = A133636 (n + 1)

end A133636

/-! ## A133636.P3030038643792088709

`∩[A053795(n+1), A074232(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A133636

/-- `∩[A053795(n+1), A074232(n+1)]` -/
def P3030038643792088709.Spec : Prop :=
  ∀ n, (P3030038643792088709.a n : ℤ) = A133636 (n + 1)

theorem P3030038643792088709.correct : P3030038643792088709.Spec := by
  intro n
  simp only [A133636, Nat.add_sub_cancel]

end A133636

/-! ## A133636.P15415911524125827161

`∩[A053795(n+1), A373992(n+1)]`
-/

namespace A133636.P15415911524125827161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133636.P15415911524125827161

namespace A133636

/-- `∩[A053795(n+1), A373992(n+1)]` -/
def P15415911524125827161.Spec : Prop :=
  ∀ n, (P15415911524125827161.a n : ℤ) = A133636 (n + 1)

end A133636

/-!
# A133638: a(n) = 2prime(n) + prime(n-1) - 3*n.

The programs for A133638, there is no canonical definition to state claims against.
-/

/-! ## A133638.P1577458425500536790

`3*A014689(n+1)-A054541(n+1)`
-/

namespace A133638.P1577458425500536790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014689 (n + 1) - A054541 (n + 1)

end

end A133638.P1577458425500536790

/-! ## A133638.P7270695714748980297

`A182986(n+1)+A239636(n+1)-n`
-/

namespace A133638.P7270695714748980297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (A239636 (n + 1) - (n : ℤ))

end

end A133638.P7270695714748980297

/-! ## A133638.P3226536759542878733

`A046930(n)+A046933(n)+a(n-1)` with `a(0)=1`
-/

namespace A133638.P3226536759542878733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046930 n + (A046933 n + a (n - 1))

end

end A133638.P3226536759542878733

/-! ## A133638.P18164238979582651275

`record[A061397(n+1)]+A239636(n+1)-n`
-/

namespace A133638.P18164238979582651275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A239636 (n + 1) - (n : ℤ))

end

end A133638.P18164238979582651275

/-! ## A133638.P8236092104120852815

`A011974(n+1)+A014689(n+1)-2*(n+1)`
-/

namespace A133638.P8236092104120852815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) + (A014689 (n + 1) - (2 * (n + 1) : ℤ))

end

end A133638.P8236092104120852815

/-! ## A133638.P10178797666950411278

`A008585(A014689(n+1))-A054541(n+1)`
-/

namespace A133638.P10178797666950411278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A014689 (n + 1)).toNat - A054541 (n + 1)

end

end A133638.P10178797666950411278

/-! ## A133638.P15062925443419574166

`A006093(n+1)+A011974(n+1)-A016789(n)`
-/

namespace A133638.P15062925443419574166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A011974 (n + 1) - A016789 n)

end

end A133638.P15062925443419574166

/-! ## A133638.P18438638251107356652

`record[A000010(n+1)]+A011974(n+1)-A016789(n)`
-/

namespace A133638.P18438638251107356652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A011974 (n + 1) - A016789 n)

end

end A133638.P18438638251107356652

/-! ## A133638.P1831143990918948562

`record[A006530(n+1)]+A131426(n+1)-A008486(n)`
-/

namespace A133638.P1831143990918948562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A131426 (n + 1) - A008486 n)

end

end A133638.P1831143990918948562

/-! ## A133638.P3535482782707151269

`record[A020639(n+1)]+A131426(n+1)-A008486(n)`
-/

namespace A133638.P3535482782707151269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A131426 (n + 1) - A008486 n)

end

end A133638.P3535482782707151269

/-!
# A133639: Mobius transform of b(n) where b(8n + 1) = A080995(n).

The programs for A133639, the canonical program `A133639.P11234321483746663322` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133639 has offset 1).

The definition of A133639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133639.P4919271203520607953

`∑{d}[n+1, A008683(#)*A033683((n+1)/#)]`
-/

namespace A133639.P4919271203520607953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A033683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133639.P4919271203520607953

namespace A133639

/-- `∑{d}[n+1, A008683(#)*A033683((n+1)/#)]` -/
def P4919271203520607953.Spec : Prop :=
  ∀ n, P4919271203520607953.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P11234321483746663322

`∑{d}[n+1, A326415(#)*A365210((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A133639

/-- `∑{d}[n+1, A326415(#)*A365210((n+1)/#)]` -/
def P11234321483746663322.Spec : Prop :=
  ∀ n, P11234321483746663322.a n = A133639 (n + 1)

theorem P11234321483746663322.correct : P11234321483746663322.Spec := by
  intro n
  simp only [A133639, Nat.add_sub_cancel]

end A133639

/-! ## A133639.P628818818760515837

`A008836(n+1)*A033683(A008833(n+1))`
-/

namespace A133639.P628818818760515837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A033683 (A008833 (n + 1)).toNat

end

end A133639.P628818818760515837

namespace A133639

/-- `A008836(n+1)*A033683(A008833(n+1))` -/
def P628818818760515837.Spec : Prop :=
  ∀ n, P628818818760515837.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P16076042482438491998

`A008836(n+1)%A175307(A000188(n+1))`
-/

namespace A133639.P16076042482438491998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008836 (n + 1)) (A175307 (A000188 (n + 1)).toNat)

end

end A133639.P16076042482438491998

namespace A133639

/-- `A008836(n+1)%A175307(A000188(n+1))` -/
def P16076042482438491998.Spec : Prop :=
  ∀ n, P16076042482438491998.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P1214583287089675557

`A008683(lcm(A007913(n+1), A065331(n+1)))`
-/

namespace A133639.P1214583287089675557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm (A007913 (n + 1)) (A065331 (n + 1)))

end

end A133639.P1214583287089675557

namespace A133639

/-- `A008683(lcm(A007913(n+1), A065331(n+1)))` -/
def P1214583287089675557.Spec : Prop :=
  ∀ n, P1214583287089675557.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P9377091313165226111

`A007428(36*(n+1))%2`
-/

namespace A133639.P9377091313165226111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007428 (36 * (n + 1))) 2

end

end A133639.P9377091313165226111

namespace A133639

/-- `A007428(36*(n+1))%2` -/
def P9377091313165226111.Spec : Prop :=
  ∀ n, P9377091313165226111.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P2845585105151305258

`A363552(A044102(n+1))`
-/

namespace A133639.P2845585105151305258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (A044102 (n + 1)).toNat

end

end A133639.P2845585105151305258

namespace A133639

/-- `A363552(A044102(n+1))` -/
def P2845585105151305258.Spec : Prop :=
  ∀ n, P2845585105151305258.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P7182554795264387552

`A328254(n+1)%A280193(A044572(n+1))`
-/

namespace A133639.P7182554795264387552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328254 (n + 1)) (A280193 (A044572 (n + 1)).toNat)

end

end A133639.P7182554795264387552

namespace A133639

/-- `A328254(n+1)%A280193(A044572(n+1))` -/
def P7182554795264387552.Spec : Prop :=
  ∀ n, P7182554795264387552.a n = A133639 (n + 1)

end A133639

/-! ## A133639.P5618058030780683556

`(-A008683(A244416(n+1)))^A001222(n+1)`
-/

namespace A133639.P5618058030780683556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A008683 (A244416 (n + 1)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A133639.P5618058030780683556

namespace A133639

/-- `(-A008683(A244416(n+1)))^A001222(n+1)` -/
def P5618058030780683556.Spec : Prop :=
  ∀ n, P5618058030780683556.a n = (A133639 (n + 1) : ℚ)

end A133639

/-!
# A133640: List of pairs n,4n, where n is the least unused number so far.

The programs for A133640, there is no canonical definition to state claims against.
-/

/-! ## A133640.P11611110184704774254

`A191452(lt[A142465(n), A255128(n+1)])`
-/

namespace A133640.P11611110184704774254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133640.P11611110184704774254

/-! ## A133640.P35861893496837786

`A191452(lt[A008277(n+1), A335519(n+1)])`
-/

namespace A133640.P35861893496837786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133640.P35861893496837786

/-! ## A133640.P56038557449214345

`A191452(lt[A100862(n), 2*A000120(n)])`
-/

namespace A133640.P56038557449214345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133640.P56038557449214345

/-! ## A133640.P12204248876897452755

`A191452(lt[A218115(n), n+1])`
-/

namespace A133640.P12204248876897452755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218115 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191452 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A133640.P12204248876897452755

/-! ## A133640.P14771087299912559111

`filter[A191452(n+1), A307430(#)]`
-/

namespace A133640.P14771087299912559111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A133640.P14771087299912559111

/-!
# A133641: a(n) = 2*L(n) + L(n-1) - n, L(n) = n-th Lucas number A000204(n).

The programs for A133641, the canonical program `A133641.P4730024975641037237` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133641 has offset 1).

The definition of A133641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133641.P4730024975641037237

`ogf((1+2x-5x^2+x^3+2x^4)/(1-3x+2x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133641

/-- `ogf((1+2x-5x^2+x^3+2x^4)/(1-3x+2x^2+x^3-x^4))` -/
def P4730024975641037237.Spec : Prop :=
  ∀ n, P4730024975641037237.a n = A133641 (n + 1)

theorem P4730024975641037237.correct : P4730024975641037237.Spec := by
  intro n
  simp only [A133641, Nat.add_sub_cancel]

end A133641

/-! ## A133641.P6613461380125412829

`ceil(∑[ϕ^(n+1)])-abs(1-n)`
-/

namespace A133641.P6613461380125412829
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - |1 - (n : ℤ)|

end

end A133641.P6613461380125412829

namespace A133641

/-- `ceil(∑[ϕ^(n+1)])-abs(1-n)` -/
def P6613461380125412829.Spec : Prop :=
  ∀ n, P6613461380125412829.a n = A133641 (n + 1)

end A133641

/-! ## A133641.P7172097170058774924

`∑[A000204(n+1)+floor(acot(1-n))]`
-/

namespace A133641.P7172097170058774924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + ⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133641.P7172097170058774924

namespace A133641

/-- `∑[A000204(n+1)+floor(acot(1-n))]` -/
def P7172097170058774924.Spec : Prop :=
  ∀ n, P7172097170058774924.a n = A133641 (n + 1)

end A133641

/-! ## A133641.P13929604108559388108

`∑[C(2, n²)+A000032(n+1)-1]`
-/

namespace A133641.P13929604108559388108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℤ) + (A000032 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133641.P13929604108559388108

namespace A133641

/-- `∑[C(2, n²)+A000032(n+1)-1]` -/
def P13929604108559388108.Spec : Prop :=
  ∀ n, P13929604108559388108.a n = A133641 (n + 1)

end A133641

/-! ## A133641.P1494350389749381927

`∑[A130706(n)+A001610(n)]`
-/

namespace A133641.P1494350389749381927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133641.P1494350389749381927

namespace A133641

/-- `∑[A130706(n)+A001610(n)]` -/
def P1494350389749381927.Spec : Prop :=
  ∀ n, P1494350389749381927.a n = A133641 (n + 1)

end A133641

/-! ## A133641.P2962671387989647476

`∑[A134824(n)+A000032(n+1)]`
-/

namespace A133641.P2962671387989647476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133641.P2962671387989647476

namespace A133641

/-- `∑[A134824(n)+A000032(n+1)]` -/
def P2962671387989647476.Spec : Prop :=
  ∀ n, P2962671387989647476.a n = A133641 (n + 1)

end A133641

/-! ## A133641.P12390397705363754822

`Δ[a(n-1)+A000032(n+2)-n]` with `a(0)=0, a(1)=1`
-/

namespace A133641.P12390397705363754822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000032 (n + 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133641.P12390397705363754822

namespace A133641

/-- `Δ[a(n-1)+A000032(n+2)-n]` -/
def P12390397705363754822.Spec : Prop :=
  ∀ n, P12390397705363754822.a n = A133641 (n + 1)

end A133641

/-! ## A133641.P2464283141273067126

`(A066982(n+2)+2)^ceil(tanh(n))`
-/

namespace A133641.P2464283141273067126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066982 (n + 2) + 2 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

end

end A133641.P2464283141273067126

namespace A133641

/-- `(A066982(n+2)+2)^ceil(tanh(n))` -/
def P2464283141273067126.Spec : Prop :=
  ∀ n, P2464283141273067126.a n = (A133641 (n + 1) : ℚ)

end A133641

/-!
# A133642: a(n) = 4*a(n-1)+20*a(n-2) for n>=3, a(0)=1, a(1)=4, a(2)=32.

The programs for A133642, the canonical program `A133642.P13288892862372420030` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133642 has offset 0).

The definition of A133642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+20*a(n-2)` (program `A133642.P13288892862372420030`, by `A133642.P13288892862372420030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133642.P10266865890068513436

`ogf((1-4x^2)/(1-4x-20x^2))`
-/

namespace A133642.P10266865890068513436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4] [1, -4, -20] n

end

end A133642.P10266865890068513436

namespace A133642

/-- `ogf((1-4x^2)/(1-4x-20x^2))` -/
def P10266865890068513436.Spec : Prop :=
  ∀ n, P10266865890068513436.a n = A133642 n

end A133642

/-! ## A133642.P13288892862372420030

`4*a(n-1)+20*a(n-2)` with `a(0)=1, a(1)=4, a(2)=32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133642

/-- `4*a(n-1)+20*a(n-2)` -/
def P13288892862372420030.Spec : Prop :=
  ∀ n, (P13288892862372420030.a n : ℤ) = A133642 n

theorem P13288892862372420030.correct : P13288892862372420030.Spec := by
  intro n
  simp only [A133642]

end A133642

/-! ## A133642.P3212412640250538386

`∑{#}[n, A122950(C(n+1, 2)+#)*4^#]`
-/

namespace A133642.P3212412640250538386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A122950 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ)

end

end A133642.P3212412640250538386

namespace A133642

/-- `∑{#}[n, A122950(C(n+1, 2)+#)*4^#]` -/
def P3212412640250538386.Spec : Prop :=
  ∀ n, P3212412640250538386.a n = A133642 n

end A133642

/-! ## A133642.P5887597653460960285

`round(2^(n+1)*A189734(n+1)/5)`
-/

namespace A133642.P5887597653460960285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 ^ (n + 1) : ℤ) * A189734 (n + 1) : ℚ) / 5)

end

end A133642.P5887597653460960285

namespace A133642

/-- `round(2^(n+1)*A189734(n+1)/5)` -/
def P5887597653460960285.Spec : Prop :=
  ∀ n, P5887597653460960285.a n = A133642 n

end A133642

/-!
# A133643: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = smallest permanent of any n X n (0,1) matrix with k 1's in each row and column.

The programs for A133643, there is no canonical definition to state claims against.
-/

/-! ## A133643.P15710135263935724753

`A016389(A022166(n))+A008305(n+1)`
-/

namespace A133643.P15710135263935724753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat + A008305 (n + 1)

end

end A133643.P15710135263935724753

/-! ## A133643.P10312019819202350424

`A372357(A372326(n))+A008305(n+1)`
-/

namespace A133643.P10312019819202350424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372357 (A372326 n).toNat + A008305 (n + 1)

end

end A133643.P10312019819202350424

/-! ## A133643.P8866900470424789626

`A008305(n+1)-A014707(A022171(n))`
-/

namespace A133643.P8866900470424789626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1) - A014707 (A022171 n).toNat

end

end A133643.P8866900470424789626

/-! ## A133643.P7456783184164920151

`A008305(n+1)-A025465(A023105(n))`
-/

namespace A133643.P7456783184164920151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1) - A025465 (A023105 n).toNat

end

end A133643.P7456783184164920151

/-! ## A133643.P4845643471726910196

`A008305(n+1)-A055641(A022112(n))`
-/

namespace A133643.P4845643471726910196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1) - A055641 (A022112 n).toNat

end

end A133643.P4845643471726910196

/-!
# A133644: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = largest permanent of any n X n (0,1) matrix with k 1's in each row and column.

The programs for A133644, there is no canonical definition to state claims against.
-/

/-! ## A133644.P4838393361729116205

`A008305(n+1)^A331591((n+1)²²)`
-/

namespace A133644.P4838393361729116205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008305 (n + 1) : ℚ) ^ (A331591 (((n + 1) ^ 2) ^ 2) : ℤ)

end

end A133644.P4838393361729116205

/-! ## A133644.P15655130146222472219

`A063574(A111820(n))+A008305(n+1)`
-/

namespace A133644.P15655130146222472219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063574 (A111820 n).toNat + A008305 (n + 1)

end

end A133644.P15655130146222472219

/-! ## A133644.P17419071217088455112

`A008305(n+1)^A008305(A062993(n))`
-/

namespace A133644.P17419071217088455112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008305 (n + 1) : ℚ) ^ (A008305 (A062993 n).toNat : ℤ)

end

end A133644.P17419071217088455112

/-! ## A133644.P7102154807682149623

`A008305(n+1)^A327658(A216182(n))`
-/

namespace A133644.P7102154807682149623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008305 (n + 1) : ℚ) ^ (A327658 (A216182 n).toNat : ℤ)

end

end A133644.P7102154807682149623

/-! ## A133644.P10086640552654086145

`A008305(n+1)*A261527(A263859(n+1))`
-/

namespace A133644.P10086640552654086145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1) * A261527 (A263859 (n + 1)).toNat

end

end A133644.P10086640552654086145

/-!
# A133645: Integers arising in A133677.

The programs for A133645, the canonical program `A133645.P15216977758075111983` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133645 has offset 1).

The definition of A133645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133645.P15216977758075111983

`A008822(p?[A007494(n)]-1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133645

/-- `A008822(p?[A007494(n)]-1)` -/
def P15216977758075111983.Spec : Prop :=
  ∀ n, P15216977758075111983.a n = A133645 (n + 1)

theorem P15216977758075111983.correct : P15216977758075111983.Spec := by
  intro n
  simp only [A133645, Nat.add_sub_cancel]

end A133645

/-! ## A133645.P9184744737930254660

`A000384(p?[A007494(n)])/3`
-/

namespace A133645.P9184744737930254660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 3

end

end A133645.P9184744737930254660

namespace A133645

/-- `A000384(p?[A007494(n)])/3` -/
def P9184744737930254660.Spec : Prop :=
  ∀ n, P9184744737930254660.a n = (A133645 (n + 1) : ℚ)

end A133645

/-! ## A133645.P11715062968998768074

`A008822(A045309(n+1)-1)`
-/

namespace A133645.P11715062968998768074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (A045309 (n + 1) - 1).toNat

end

end A133645.P11715062968998768074

namespace A133645

/-- `A008822(A045309(n+1)-1)` -/
def P11715062968998768074.Spec : Prop :=
  ∀ n, P11715062968998768074.a n = A133645 (n + 1)

end A133645

/-! ## A133645.P7080072637065719477

`A130518(2*p?[A007494(n)])`
-/

namespace A133645.P7080072637065719477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133645.P7080072637065719477

namespace A133645

/-- `A130518(2*p?[A007494(n)])` -/
def P7080072637065719477.Spec : Prop :=
  ∀ n, P7080072637065719477.a n = A133645 (n + 1)

end A133645

/-! ## A133645.P6622016014886081805

`A026923(4*A045309(n+1))`
-/

namespace A133645.P6622016014886081805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (4 * A045309 (n + 1)).toNat

end

end A133645.P6622016014886081805

namespace A133645

/-- `A026923(4*A045309(n+1))` -/
def P6622016014886081805.Spec : Prop :=
  ∀ n, P6622016014886081805.a n = A133645 (n + 1)

end A133645

/-!
# A133646: a(n)=5*a(n-1)+30*a(n-2) for n>=3, a(0)=1, a(1)=5, a(2)=50 .

The programs for A133646, the canonical program `A133646.P16192888422858813287` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133646 has offset 0).

The definition of A133646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+30*a(n-2)` (program `A133646.P16192888422858813287`, by `A133646.P16192888422858813287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133646.P3392713744997392557

`ogf((1-5x^2)/(1-5x-30x^2))`
-/

namespace A133646.P3392713744997392557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5] [1, -5, -30] n

end

end A133646.P3392713744997392557

namespace A133646

/-- `ogf((1-5x^2)/(1-5x-30x^2))` -/
def P3392713744997392557.Spec : Prop :=
  ∀ n, P3392713744997392557.a n = A133646 n

end A133646

/-! ## A133646.P16192888422858813287

`5*a(n-1)+30*a(n-2)` with `a(0)=1, a(1)=5, a(2)=50`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133646

/-- `5*a(n-1)+30*a(n-2)` -/
def P16192888422858813287.Spec : Prop :=
  ∀ n, (P16192888422858813287.a n : ℤ) = A133646 n

theorem P16192888422858813287.correct : P16192888422858813287.Spec := by
  intro n
  simp only [A133646]

end A133646

/-!
# A133647: A133566 * A000244.

The programs for A133647, the canonical program `A133647.P631878681465905194` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133647 has offset 0).

The definition of A133647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133647.P631878681465905194

`ogf((1+3x+3x^2)/(1-9x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133647

/-- `ogf((1+3x+3x^2)/(1-9x^2))` -/
def P631878681465905194.Spec : Prop :=
  ∀ n, P631878681465905194.a n = A133647 n

theorem P631878681465905194.correct : P631878681465905194.Spec := by
  intro n
  simp only [A133647]

end A133647

/-! ## A133647.P9947876371257814150

`9*a(n-2)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A133647.P9947876371257814150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  9 * a (n - 2)

end

end A133647.P9947876371257814150

namespace A133647

/-- `9*a(n-2)` -/
def P9947876371257814150.Spec : Prop :=
  ∀ n, (P9947876371257814150.a n : ℤ) = A133647 n

end A133647

/-! ## A133647.P3315323343512948168

`∏[9/a(n-1)]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A133647.P3315323343512948168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  9 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133647.P3315323343512948168

namespace A133647

/-- `∏[9/a(n-1)]` -/
def P3315323343512948168.Spec : Prop :=
  ∀ n, P3315323343512948168.a n = (A133647 n : ℚ)

end A133647

/-! ## A133647.P3074826183502161853

`A000792(or(1, n)+2*n)`
-/

namespace A133647.P3074826183502161853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (Nat.lor 1 n + 2 * n)

end

end A133647.P3074826183502161853

namespace A133647

/-- `A000792(or(1, n)+2*n)` -/
def P3074826183502161853.Spec : Prop :=
  ∀ n, P3074826183502161853.a n = A133647 n

end A133647

/-! ## A133647.P8721237139754540636

`A083423(n)+floor(3^(n-1))`
-/

namespace A133647.P8721237139754540636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A133647.P8721237139754540636

namespace A133647

/-- `A083423(n)+floor(3^(n-1))` -/
def P8721237139754540636.Spec : Prop :=
  ∀ n, P8721237139754540636.a n = A133647 n

end A133647

/-! ## A133647.P6805453650576184098

`(and(1, A280193(n)+1)/3+1)*3^n`
-/

namespace A133647.P6805453650576184098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.land 1 (A280193 n + 1) : ℚ) / 3 + 1) * (3 ^ n : ℚ)

end

end A133647.P6805453650576184098

namespace A133647

/-- `(and(1, A280193(n)+1)/3+1)*3^n` -/
def P6805453650576184098.Spec : Prop :=
  ∀ n, P6805453650576184098.a n = (A133647 n : ℚ)

end A133647

/-! ## A133647.P10188279382696376851

`A074324(A014601(n))`
-/

namespace A133647.P10188279382696376851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A014601 n).toNat

end

end A133647.P10188279382696376851

namespace A133647

/-- `A074324(A014601(n))` -/
def P10188279382696376851.Spec : Prop :=
  ∀ n, P10188279382696376851.a n = A133647 n

end A133647

/-! ## A133647.P2649860109696520941

`record[A074324(A003815(n))]`
-/

namespace A133647.P2649860109696520941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A003815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133647.P2649860109696520941

namespace A133647

/-- `record[A074324(A003815(n))]` -/
def P2649860109696520941.Spec : Prop :=
  ∀ n, P2649860109696520941.a n = A133647 n

end A133647

/-! ## A133647.P14521880929819298537

`A000792(A047241(n+1))`
-/

namespace A133647.P14521880929819298537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A047241 (n + 1)).toNat

end

end A133647.P14521880929819298537

namespace A133647

/-- `A000792(A047241(n+1))` -/
def P14521880929819298537.Spec : Prop :=
  ∀ n, P14521880929819298537.a n = A133647 n

end A133647

/-! ## A133647.P10593852222683807012

`A211221(A042963(n+1))`
-/

namespace A133647.P10593852222683807012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (A042963 (n + 1)).toNat

end

end A133647.P10593852222683807012

namespace A133647

/-- `A211221(A042963(n+1))` -/
def P10593852222683807012.Spec : Prop :=
  ∀ n, P10593852222683807012.a n = A133647 n

end A133647

/-! ## A133647.P3354917970028795329

`A122164(A187715(n+1))`
-/

namespace A133647.P3354917970028795329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A187715 (n + 1)).toNat

end

end A133647.P3354917970028795329

namespace A133647

/-- `A122164(A187715(n+1))` -/
def P3354917970028795329.Spec : Prop :=
  ∀ n, P3354917970028795329.a n = A133647 n

end A133647

/-! ## A133647.P17194730703811830705

`A074324(A003815(2*n))`
-/

namespace A133647.P17194730703811830705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A003815 (2 * n)).toNat

end

end A133647.P17194730703811830705

namespace A133647

/-- `A074324(A003815(2*n))` -/
def P17194730703811830705.Spec : Prop :=
  ∀ n, P17194730703811830705.a n = A133647 n

end A133647

/-! ## A133647.P16314908468258028772

`A140429(n)+A083423(n)`
-/

namespace A133647.P16314908468258028772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A083423 n

end

end A133647.P16314908468258028772

namespace A133647

/-- `A140429(n)+A083423(n)` -/
def P16314908468258028772.Spec : Prop :=
  ∀ n, P16314908468258028772.a n = A133647 n

end A133647

/-! ## A133647.P9275727930154444752

`A036561(A266304(n)+n)`
-/

namespace A133647.P9275727930154444752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A266304 n + (n : ℤ)).toNat

end

end A133647.P9275727930154444752

namespace A133647

/-- `A036561(A266304(n)+n)` -/
def P9275727930154444752.Spec : Prop :=
  ∀ n, P9275727930154444752.a n = A133647 n

end A133647

/-! ## A133647.P15915178719611455613

`A056449(n)*A074324(n)`
-/

namespace A133647.P15915178719611455613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A074324 n

end

end A133647.P15915178719611455613

namespace A133647

/-- `A056449(n)*A074324(n)` -/
def P15915178719611455613.Spec : Prop :=
  ∀ n, P15915178719611455613.a n = A133647 n

end A133647

/-! ## A133647.P8269217595933878864

`A182522(n)²*A122553(n)`
-/

namespace A133647.P8269217595933878864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n ^ 2 * A122553 n

end

end A133647.P8269217595933878864

namespace A133647

/-- `A182522(n)²*A122553(n)` -/
def P8269217595933878864.Spec : Prop :=
  ∀ n, P8269217595933878864.a n = A133647 n

end A133647

/-! ## A133647.P2927288010363433850

`A000792(A047238(n+1)+1)`
-/

namespace A133647.P2927288010363433850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A047238 (n + 1) + 1).toNat

end

end A133647.P2927288010363433850

namespace A133647

/-- `A000792(A047238(n+1)+1)` -/
def P2927288010363433850.Spec : Prop :=
  ∀ n, P2927288010363433850.a n = A133647 n

end A133647

/-! ## A133647.P11575346791483215302

`A000792(2*A032766(n)+1)`
-/

namespace A133647.P11575346791483215302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (2 * A032766 n + 1).toNat

end

end A133647.P11575346791483215302

namespace A133647

/-- `A000792(2*A032766(n)+1)` -/
def P11575346791483215302.Spec : Prop :=
  ∀ n, P11575346791483215302.a n = A133647 n

end A133647

/-! ## A133647.P10194478224282851931

`A074324(A042963(n+2)-2)`
-/

namespace A133647.P10194478224282851931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A042963 (n + 2) - 2).toNat

end

end A133647.P10194478224282851931

namespace A133647

/-- `A074324(A042963(n+2)-2)` -/
def P10194478224282851931.Spec : Prop :=
  ∀ n, P10194478224282851931.a n = A133647 n

end A133647

/-! ## A133647.P17985251905994371440

`A108411(n)*A211221(n+1)`
-/

namespace A133647.P17985251905994371440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A211221 (n + 1)

end

end A133647.P17985251905994371440

namespace A133647

/-- `A108411(n)*A211221(n+1)` -/
def P17985251905994371440.Spec : Prop :=
  ∀ n, P17985251905994371440.a n = A133647 n

end A133647

/-!
# A133648: a(n) = 2*3^n + 3^(n-1) - (n+1).

The programs for A133648, the canonical program `A133648.P3506866584162726112` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133648 has offset 1).

The definition of A133648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^(n+1)+3^n-(n+2)` (program `A133648.P3506866584162726112`, by `A133648.P3506866584162726112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133648.P4631902719898980915

`ogf((5-7x+4x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A133648.P4631902719898980915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7, 4] [1, -5, 7, -3] n

end

end A133648.P4631902719898980915

namespace A133648

/-- `ogf((5-7x+4x^2)/(1-5x+7x^2-3x^3))` -/
def P4631902719898980915.Spec : Prop :=
  ∀ n, P4631902719898980915.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P3506866584162726112

`2*3^(n+1)+3^n-(n+2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133648

/-- `2*3^(n+1)+3^n-(n+2)` -/
def P3506866584162726112.Spec : Prop :=
  ∀ n, P3506866584162726112.a n = A133648 (n + 1)

theorem P3506866584162726112.correct : P3506866584162726112.Spec := by
  intro n
  simp only [A133648, Nat.add_sub_cancel]

end A133648

/-! ## A133648.P141219188878071630

`∑[ogf((5-7x+4x^2)/(1-4x+3x^2))]`
-/

namespace A133648.P141219188878071630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7, 4] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133648.P141219188878071630

namespace A133648

/-- `∑[ogf((5-7x+4x^2)/(1-4x+3x^2))]` -/
def P141219188878071630.Spec : Prop :=
  ∀ n, P141219188878071630.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P4085906951679237070

`∑[3*a(n-1)+2]` with `a(0)=5, a(1)=13`
-/

namespace A133648.P4085906951679237070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 13] fun n f1 =>
  3 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133648.P4085906951679237070

namespace A133648

/-- `∑[3*a(n-1)+2]` -/
def P4085906951679237070.Spec : Prop :=
  ∀ n, (P4085906951679237070.a n : ℤ) = A133648 (n + 1)

end A133648

/-! ## A133648.P9885782960573719481

`Δ[3*a(n-1)+n²]` with `a(0)=2`
-/

namespace A133648.P9885782960573719481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A133648.P9885782960573719481

namespace A133648

/-- `Δ[3*a(n-1)+n²]` -/
def P9885782960573719481.Spec : Prop :=
  ∀ n, P9885782960573719481.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P14451943037485449025

`3*a(n-1)+2*n+1` with `a(0)=5`
-/

namespace A133648.P14451943037485449025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  3 * a (n - 1) + (2 * n + 1)

end

end A133648.P14451943037485449025

namespace A133648

/-- `3*a(n-1)+2*n+1` -/
def P14451943037485449025.Spec : Prop :=
  ∀ n, (P14451943037485449025.a n : ℤ) = A133648 (n + 1)

theorem P14451943037485449025.correct : P14451943037485449025.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A133648, Nat.add_sub_cancel, A133648.P14451943037485449025.a, A133648.P3506866584162726112.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A133648, Nat.add_sub_cancel, A133648.P14451943037485449025.a, A133648.P3506866584162726112.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A133648

/-! ## A133648.P8321626460409978079

`abs(2-A005032(n)+n)`
-/

namespace A133648.P8321626460409978079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A005032 n + (n : ℤ)|

end

end A133648.P8321626460409978079

namespace A133648

/-- `abs(2-A005032(n)+n)` -/
def P8321626460409978079.Spec : Prop :=
  ∀ n, P8321626460409978079.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P7586731292547113364

`abs(n+1-A027107(n+1))`
-/

namespace A133648.P7586731292547113364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A027107 (n + 1)|

end

end A133648.P7586731292547113364

namespace A133648

/-- `abs(n+1-A027107(n+1))` -/
def P7586731292547113364.Spec : Prop :=
  ∀ n, P7586731292547113364.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P13309814117329140372

`∑{#}[n+1, C(n+1, #)*A133649(#)]`
-/

namespace A133648.P13309814117329140372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A133649 k

end

end A133648.P13309814117329140372

namespace A133648

/-- `∑{#}[n+1, C(n+1, #)*A133649(#)]` -/
def P13309814117329140372.Spec : Prop :=
  ∀ n, P13309814117329140372.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P14206989613672988674

`Δ[A199109(n)-A000096(n)]`
-/

namespace A133648.P14206989613672988674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 n - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133648.P14206989613672988674

namespace A133648

/-- `Δ[A199109(n)-A000096(n)]` -/
def P14206989613672988674.Spec : Prop :=
  ∀ n, P14206989613672988674.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P200668038959044043

`Δ[A116952(n)-A167499(n)]`
-/

namespace A133648.P200668038959044043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116952 n - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133648.P200668038959044043

namespace A133648

/-- `Δ[A116952(n)-A167499(n)]` -/
def P200668038959044043.Spec : Prop :=
  ∀ n, P200668038959044043.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P16492090386169664583

`Δ[A199109(n)-A167499(n)]`
-/

namespace A133648.P16492090386169664583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 n - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133648.P16492090386169664583

namespace A133648

/-- `Δ[A199109(n)-A167499(n)]` -/
def P16492090386169664583.Spec : Prop :=
  ∀ n, P16492090386169664583.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P3176371442211872481

`Δ[A237930(n)-A167499(n)]`
-/

namespace A133648.P3176371442211872481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 n - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133648.P3176371442211872481

namespace A133648

/-- `Δ[A237930(n)-A167499(n)]` -/
def P3176371442211872481.Spec : Prop :=
  ∀ n, P3176371442211872481.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P2804269103082689409

`Δ[∑[A027107(n)]-A000124(n)]`
-/

namespace A133648.P2804269103082689409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133648.P2804269103082689409

namespace A133648

/-- `Δ[∑[A027107(n)]-A000124(n)]` -/
def P2804269103082689409.Spec : Prop :=
  ∀ n, P2804269103082689409.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P13611718775482650197

`abs(A024024(n+2)-A008776(n))`
-/

namespace A133648.P13611718775482650197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024024 (n + 2) - A008776 n|

end

end A133648.P13611718775482650197

namespace A133648

/-- `abs(A024024(n+2)-A008776(n))` -/
def P13611718775482650197.Spec : Prop :=
  ∀ n, P13611718775482650197.a n = A133648 (n + 1)

end A133648

/-! ## A133648.P3023129067226059758

`A370481(n)%A005032(n)`
-/

namespace A133648.P3023129067226059758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370481 n) (A005032 n)

end

end A133648.P3023129067226059758

namespace A133648

/-- `A370481(n)%A005032(n)` -/
def P3023129067226059758.Spec : Prop :=
  ∀ n, P3023129067226059758.a n = A133648 (n + 1)

end A133648

/-!
# A133649: A007318^(-1) * A133648.

The programs for A133649, the canonical program `A133649.P9677723394512481694` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133649 has offset 0).

The definition of A133649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133649.P9677723394512481694

`ogf((1+3x+3x^2+2x^3)/(1-x-2x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133649

/-- `ogf((1+3x+3x^2+2x^3)/(1-x-2x^2))` -/
def P9677723394512481694.Spec : Prop :=
  ∀ n, P9677723394512481694.a n = A133649 n

theorem P9677723394512481694.correct : P9677723394512481694.Spec := by
  intro n
  simp only [A133649]

end A133649

/-! ## A133649.P12357138325618463722

`2*a(n-1)-(-1)^n` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A133649.P12357138325618463722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  2 * a (n - 1) - (-1) ^ n

end

end A133649.P12357138325618463722

namespace A133649

/-- `2*a(n-1)-(-1)^n` -/
def P12357138325618463722.Spec : Prop :=
  ∀ n, P12357138325618463722.a n = A133649 n

end A133649

/-! ## A133649.P6533582129755159895

`or(2, a(n-1))+a(n-1)-1` with `a(0)=1, a(1)=4`
-/

namespace A133649.P6533582129755159895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lor 2 (a (n - 1)) + (a (n - 1) - 1)

end

end A133649.P6533582129755159895

namespace A133649

/-- `or(2, a(n-1))+a(n-1)-1` -/
def P6533582129755159895.Spec : Prop :=
  ∀ n, P6533582129755159895.a n = A133649 n

end A133649

/-! ## A133649.P3157555724979200565

`or(2, a(n-1))-(1-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A133649.P3157555724979200565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lor 2 (a (n - 1)) - (1 - a (n - 1))

end

end A133649.P3157555724979200565

namespace A133649

/-- `or(2, a(n-1))-(1-a(n-1))` -/
def P3157555724979200565.Spec : Prop :=
  ∀ n, P3157555724979200565.a n = A133649 n

end A133649

/-! ## A133649.P3857725072324108199

`xor(2*a(n-1), and(3, a(n-1)))` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A133649.P3857725072324108199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 3 (a (n - 1)))

end

end A133649.P3857725072324108199

namespace A133649

/-- `xor(2*a(n-1), and(3, a(n-1)))` -/
def P3857725072324108199.Spec : Prop :=
  ∀ n, (P3857725072324108199.a n : ℤ) = A133649 n

end A133649

/-! ## A133649.P12468567242984605235

`A062092(n)-char[1-val(abs(1-n)+1, 2)]`
-/

namespace A133649.P12468567242984605235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133649.P12468567242984605235

namespace A133649

/-- `A062092(n)-char[1-val(abs(1-n)+1, 2)]` -/
def P12468567242984605235.Spec : Prop :=
  ∀ n, P12468567242984605235.a n = A133649 n

end A133649

/-! ## A133649.P18153101359521098653

`A077552(n)+A001045(n)`
-/

namespace A133649.P18153101359521098653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 n + A001045 n

end

end A133649.P18153101359521098653

namespace A133649

/-- `A077552(n)+A001045(n)` -/
def P18153101359521098653.Spec : Prop :=
  ∀ n, P18153101359521098653.a n = A133649 n

end A133649

/-! ## A133649.P8808525194470266476

`xor(A168642(n), A296965(n))`
-/

namespace A133649.P8808525194470266476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A168642 n) (A296965 n)

end

end A133649.P8808525194470266476

namespace A133649

/-- `xor(A168642(n), A296965(n))` -/
def P8808525194470266476.Spec : Prop :=
  ∀ n, P8808525194470266476.a n = A133649 n

end A133649

/-! ## A133649.P3929345987789749911

`A167030(n)+A088039(n+1)`
-/

namespace A133649.P3929345987789749911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + A088039 (n + 1)

end

end A133649.P3929345987789749911

namespace A133649

/-- `A167030(n)+A088039(n+1)` -/
def P3929345987789749911.Spec : Prop :=
  ∀ n, P3929345987789749911.a n = A133649 n

end A133649

/-! ## A133649.P2323087101492716703

`A062092(n)-A019590(n+1)`
-/

namespace A133649.P2323087101492716703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - A019590 (n + 1)

end

end A133649.P2323087101492716703

namespace A133649

/-- `A062092(n)-A019590(n+1)` -/
def P2323087101492716703.Spec : Prop :=
  ∀ n, P2323087101492716703.a n = A133649 n

end A133649

/-! ## A133649.P4052775838598710546

`Δ[2*a(n-1)-n%2]` with `a(0)=5, a(1)=6, a(2)=10`
-/

namespace A133649.P4052775838598710546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 10] fun n f1 =>
  2 * f1 (n - 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133649.P4052775838598710546

namespace A133649

/-- `Δ[2*a(n-1)-n%2]` -/
def P4052775838598710546.Spec : Prop :=
  ∀ n, P4052775838598710546.a n = A133649 n

end A133649

/-! ## A133649.P18306212429262839189

`Δ[2*a(n-1)-and(1, n)]` with `a(0)=5, a(1)=6, a(2)=10`
-/

namespace A133649.P18306212429262839189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 10] fun n f1 =>
  2 * f1 (n - 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133649.P18306212429262839189

namespace A133649

/-- `Δ[2*a(n-1)-and(1, n)]` -/
def P18306212429262839189.Spec : Prop :=
  ∀ n, P18306212429262839189.a n = A133649 n

end A133649

/-! ## A133649.P16001448492378560089

`floor(xor(5, 10*a(n-1))/5)` with `a(0)=1, a(1)=4`
-/

namespace A133649.P16001448492378560089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(Int.xor 5 (10 * a (n - 1)) : ℚ) / 5⌋

end

end A133649.P16001448492378560089

namespace A133649

/-- `floor(xor(5, 10*a(n-1))/5)` -/
def P16001448492378560089.Spec : Prop :=
  ∀ n, P16001448492378560089.a n = A133649 n

end A133649

/-! ## A133649.P9154195145002011200

`round(A083597(n)/2^n)`
-/

namespace A133649.P9154195145002011200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083597 n : ℚ) / (2 ^ n : ℚ))

end

end A133649.P9154195145002011200

namespace A133649

/-- `round(A083597(n)/2^n)` -/
def P9154195145002011200.Spec : Prop :=
  ∀ n, P9154195145002011200.a n = A133649 n

end A133649

/-!
# A133650: Early early bird numbers (early bird numbers of order 2).

The programs for A133650, there is no canonical definition to state claims against.
-/

/-! ## A133650.P2957134639456230199

`A291094(n+4)+A236515(A064062(n))`
-/

namespace A133650.P2957134639456230199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291094 (n + 4) + A236515 (A064062 n).toNat

end

end A133650.P2957134639456230199

/-!
# A133651: Early bird numbers of order 3.

The programs for A133651, there is no canonical definition to state claims against.
-/

/-! ## A133651.P5826383775120320404

`lt[xor(55, ceil(xor(1, n)/4)), 2]`
-/

namespace A133651.P5826383775120320404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 55 ⌈(Nat.xor 1 n : ℚ) / 4⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133651.P5826383775120320404

/-! ## A133651.P10297553486662620489

`eq[55, or(1, A008624(n))]`
-/

namespace A133651.P10297553486662620489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008624 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133651.P10297553486662620489

/-! ## A133651.P3536170032359225498

`eq[8, A029442(ceil(xor(1, n)/4))]`
-/

namespace A133651.P3536170032359225498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029442 ⌈(Nat.xor 1 n : ℚ) / 4⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133651.P3536170032359225498

/-! ## A133651.P13884880168129536615

`eq[12, A003108(ceil(xor(1, n)/4))]`
-/

namespace A133651.P13884880168129536615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 ⌈(Nat.xor 1 n : ℚ) / 4⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133651.P13884880168129536615

/-!
# A133653: A007318^(-1) * A003261.

The programs for A133653, the canonical program `A133653.P10414425448743270828` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133653 has offset 1).

The definition of A133653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133653.P10414425448743270828

`ogf((1+4x-x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133653

/-- `ogf((1+4x-x^2)/(1-2x+x^2))` -/
def P10414425448743270828.Spec : Prop :=
  ∀ n, P10414425448743270828.a n = A133653 (n + 1)

theorem P10414425448743270828.correct : P10414425448743270828.Spec := by
  intro n
  simp only [A133653, Nat.add_sub_cancel]

end A133653

/-!
# A133654: a(n) = 2*A000129(n) - 1.

The programs for A133654, the canonical program `A133654.P8228889830282211406` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133654 has offset 1).

The definition of A133654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000129(n+1)-1` (program `A133654.P8228889830282211406`, by `A133654.P8228889830282211406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133654.P14834166290163509060

`ogf((1+x^2)/(1-3x+x^2+x^3))`
-/

namespace A133654.P14834166290163509060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 1, 1] n

end

end A133654.P14834166290163509060

namespace A133654

/-- `ogf((1+x^2)/(1-3x+x^2+x^3))` -/
def P14834166290163509060.Spec : Prop :=
  ∀ n, P14834166290163509060.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P16282112821307566550

`2+2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A133654.P16282112821307566550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 + (2 * a (n - 1) + a (n - 2))

end

end A133654.P16282112821307566550

namespace A133654

/-- `2+2*a(n-1)+a(n-2)` -/
def P16282112821307566550.Spec : Prop :=
  ∀ n, (P16282112821307566550.a n : ℤ) = A133654 (n + 1)

end A133654

/-! ## A133654.P8228889830282211406

`2*A000129(n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133654

/-- `2*A000129(n+1)-1` -/
def P8228889830282211406.Spec : Prop :=
  ∀ n, P8228889830282211406.a n = A133654 (n + 1)

theorem P8228889830282211406.correct : P8228889830282211406.Spec := by
  intro n
  simp only [A133654, Nat.add_sub_cancel]

end A133654

/-! ## A133654.P15671233207275924577

`floor(∑[(sqrt(2)+1)^n])`
-/

namespace A133654.P15671233207275924577
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A133654.P15671233207275924577

namespace A133654

/-- `floor(∑[(sqrt(2)+1)^n])` -/
def P15671233207275924577.Spec : Prop :=
  ∀ n, P15671233207275924577.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P16302717935794594068

`a(n-2)+2*(a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A133654.P16302717935794594068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + 1)

end

end A133654.P16302717935794594068

namespace A133654

/-- `a(n-2)+2*(a(n-1)+1)` -/
def P16302717935794594068.Spec : Prop :=
  ∀ n, (P16302717935794594068.a n : ℤ) = A133654 (n + 1)

end A133654

/-! ## A133654.P15427368496714704594

`4-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A133654.P15427368496714704594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A133654.P15427368496714704594

namespace A133654

/-- `4-(2*(1-a(n-1))-a(n-2))` -/
def P15427368496714704594.Spec : Prop :=
  ∀ n, P15427368496714704594.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P18030009844908103883

`a(n-1)+2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A133654.P18030009844908103883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + a (n - 2))

end

end A133654.P18030009844908103883

namespace A133654

/-- `a(n-1)+2+a(n-1)+a(n-2)` -/
def P18030009844908103883.Spec : Prop :=
  ∀ n, (P18030009844908103883.a n : ℤ) = A133654 (n + 1)

end A133654

/-! ## A133654.P8561111276616312977

`∑[A099425(n)]`
-/

namespace A133654.P8561111276616312977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133654.P8561111276616312977

namespace A133654

/-- `∑[A099425(n)]` -/
def P8561111276616312977.Spec : Prop :=
  ∀ n, P8561111276616312977.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P14782328504782382503

`∑[A002203(n)]-1`
-/

namespace A133654.P14782328504782382503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133654.P14782328504782382503

namespace A133654

/-- `∑[A002203(n)]-1` -/
def P14782328504782382503.Spec : Prop :=
  ∀ n, P14782328504782382503.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P15236830467062322013

`Δ[A078057(n)]-1`
-/

namespace A133654.P15236830467062322013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A133654.P15236830467062322013

namespace A133654

/-- `Δ[A078057(n)]-1` -/
def P15236830467062322013.Spec : Prop :=
  ∀ n, P15236830467062322013.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P11710790186963077721

`Δ[A182780(n)]-1`
-/

namespace A133654.P11710790186963077721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A133654.P11710790186963077721

namespace A133654

/-- `Δ[A182780(n)]-1` -/
def P11710790186963077721.Spec : Prop :=
  ∀ n, P11710790186963077721.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P1041789118321569791

`∑[A100227(n)]+n`
-/

namespace A133654.P1041789118321569791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133654.P1041789118321569791

namespace A133654

/-- `∑[A100227(n)]+n` -/
def P1041789118321569791.Spec : Prop :=
  ∀ n, P1041789118321569791.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P8494665189350600724

`∑[A124696(n)]-n`
-/

namespace A133654.P8494665189350600724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A133654.P8494665189350600724

namespace A133654

/-- `∑[A124696(n)]-n` -/
def P8494665189350600724.Spec : Prop :=
  ∀ n, P8494665189350600724.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P9144941210331999275

`∑[abs(Δ[A052542(n)])]`
-/

namespace A133654.P9144941210331999275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133654.P9144941210331999275

namespace A133654

/-- `∑[abs(Δ[A052542(n)])]` -/
def P9144941210331999275.Spec : Prop :=
  ∀ n, P9144941210331999275.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P11937078692338782695

`A052542(n+1)-1`
-/

namespace A133654.P11937078692338782695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - 1

end

end A133654.P11937078692338782695

namespace A133654

/-- `A052542(n+1)-1` -/
def P11937078692338782695.Spec : Prop :=
  ∀ n, P11937078692338782695.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P3957581743947652975

`A163271(n+2)-1`
-/

namespace A133654.P3957581743947652975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 2) - 1

end

end A133654.P3957581743947652975

namespace A133654

/-- `A163271(n+2)-1` -/
def P3957581743947652975.Spec : Prop :=
  ∀ n, P3957581743947652975.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P6752567227234847962

`2*A052937(n)-3`
-/

namespace A133654.P6752567227234847962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052937 n - 3

end

end A133654.P6752567227234847962

namespace A133654

/-- `2*A052937(n)-3` -/
def P6752567227234847962.Spec : Prop :=
  ∀ n, P6752567227234847962.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P7500193908867727598

`abs(Δ[A123335(n)])-1`
-/

namespace A133654.P7500193908867727598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A133654.P7500193908867727598

namespace A133654

/-- `abs(Δ[A123335(n)])-1` -/
def P7500193908867727598.Spec : Prop :=
  ∀ n, P7500193908867727598.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P9406025492397776924

`record[abs(A249577(n))-1]`
-/

namespace A133654.P9406025492397776924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249577 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133654.P9406025492397776924

namespace A133654

/-- `record[abs(A249577(n))-1]` -/
def P9406025492397776924.Spec : Prop :=
  ∀ n, P9406025492397776924.a n = A133654 (n + 1)

end A133654

/-! ## A133654.P13954923840311078930

`abs(2*A077985(n))-1`
-/

namespace A133654.P13954923840311078930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A077985 n| - 1

end

end A133654.P13954923840311078930

namespace A133654

/-- `abs(2*A077985(n))-1` -/
def P13954923840311078930.Spec : Prop :=
  ∀ n, P13954923840311078930.a n = A133654 (n + 1)

end A133654

/-!
# A133655: a(n) = 2*A016777(n) + A016777(n-1) - (n+1).

The programs for A133655, the canonical program `A133655.P16157980947143542687` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133655 has offset 0).

The definition of A133655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133655.P16157980947143542687

`ogf((1+5x+2x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133655

/-- `ogf((1+5x+2x^2)/(1-2x+x^2))` -/
def P16157980947143542687.Spec : Prop :=
  ∀ n, P16157980947143542687.a n = A133655 n

theorem P16157980947143542687.correct : P16157980947143542687.Spec := by
  intro n
  simp only [A133655]

end A133655

/-!
# A133656: Number of below-diagonal paths from (0,0) to (n,n) using steps (1,0), (0,1) and (2k-1,1), k a positive integer.

The programs for A133656, there is no canonical definition to state claims against.
-/

/-! ## A133656.P11934105101230360005

`A054846(∑[A153231(n)])`
-/

namespace A133656.P11934105101230360005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133656.P11934105101230360005

/-! ## A133656.P12542239381884260313

`A214701(A078487(n+1))`
-/

namespace A133656.P12542239381884260313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A078487 (n + 1)).toNat

end

end A133656.P12542239381884260313

/-!
# A133657: Expansion of q * (phi(q) * psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A133657, the canonical program `A133657.P17563057075250981671` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133657 has offset 1).

The definition of A133657 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121455, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133657.P17563057075250981671

`(-1)^n*A121455(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133657

/-- `(-1)^n*A121455(n+1)` -/
def P17563057075250981671.Spec : Prop :=
  ∀ n, P17563057075250981671.a n = A133657 (n + 1)

theorem P17563057075250981671.correct : P17563057075250981671.Spec := by
  intro n
  simp only [A133657, Nat.add_sub_cancel]

end A133657

/-! ## A133657.P17782230214867886793

`∑{d}[n+1, lcm(#, gcd(4, n+1)%4)]`
-/

namespace A133657.P17782230214867886793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (Nat.gcd 4 (n + 1) % 4)

end

end A133657.P17782230214867886793

namespace A133657

/-- `∑{d}[n+1, lcm(#, gcd(4, n+1)%4)]` -/
def P17782230214867886793.Spec : Prop :=
  ∀ n, (P17782230214867886793.a n : ℤ) = A133657 (n + 1)

end A133657

/-! ## A133657.P1153520438889683301

`∑{d}[n+1, #*and(n+1, gcd(2, #))]`
-/

namespace A133657.P1153520438889683301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.land (n + 1) (Nat.gcd 2 d)

end

end A133657.P1153520438889683301

namespace A133657

/-- `∑{d}[n+1, #*and(n+1, gcd(2, #))]` -/
def P1153520438889683301.Spec : Prop :=
  ∀ n, (P1153520438889683301.a n : ℤ) = A133657 (n + 1)

end A133657

/-! ## A133657.P16574444662270094467

`abs(A121455(n+1))`
-/

namespace A133657.P16574444662270094467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121455 (n + 1)|

end

end A133657.P16574444662270094467

namespace A133657

/-- `abs(A121455(n+1))` -/
def P16574444662270094467.Spec : Prop :=
  ∀ n, P16574444662270094467.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P13395667740116691671

`∑[1-and(2, n)]*A002131(n+1)`
-/

namespace A133657.P13395667740116691671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002131 (n + 1)

end

end A133657.P13395667740116691671

namespace A133657

/-- `∑[1-and(2, n)]*A002131(n+1)` -/
def P13395667740116691671.Spec : Prop :=
  ∀ n, P13395667740116691671.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P13552781600042288191

`gcd(A000038(n), A121455(n+1))`
-/

namespace A133657.P13552781600042288191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121455 (n + 1))

end

end A133657.P13552781600042288191

namespace A133657

/-- `gcd(A000038(n), A121455(n+1))` -/
def P13552781600042288191.Spec : Prop :=
  ∀ n, (P13552781600042288191.a n : ℤ) = A133657 (n + 1)

end A133657

/-! ## A133657.P14707996015042533087

`lcm(A000034(n), A121455(n+1))`
-/

namespace A133657.P14707996015042533087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A121455 (n + 1))

end

end A133657.P14707996015042533087

namespace A133657

/-- `lcm(A000034(n), A121455(n+1))` -/
def P14707996015042533087.Spec : Prop :=
  ∀ n, (P14707996015042533087.a n : ℤ) = A133657 (n + 1)

end A133657

/-! ## A133657.P8690504319377412953

`∑{d}[A121455(n+1), A000010(#)]`
-/

namespace A133657.P8690504319377412953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A133657.P8690504319377412953

namespace A133657

/-- `∑{d}[A121455(n+1), A000010(#)]` -/
def P8690504319377412953.Spec : Prop :=
  ∀ n, P8690504319377412953.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P5533418241596371062

`A133691(n+1)*A230074(n+1)`
-/

namespace A133657.P5533418241596371062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133691 (n + 1) * A230074 (n + 1)

end

end A133657.P5533418241596371062

namespace A133657

/-- `A133691(n+1)*A230074(n+1)` -/
def P5533418241596371062.Spec : Prop :=
  ∀ n, P5533418241596371062.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P2775154409172196356

`A186690(n+1)*A230074(n+1)`
-/

namespace A133657.P2775154409172196356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186690 (n + 1) * A230074 (n + 1)

end

end A133657.P2775154409172196356

namespace A133657

/-- `A186690(n+1)*A230074(n+1)` -/
def P2775154409172196356.Spec : Prop :=
  ∀ n, P2775154409172196356.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P12422099914255056377

`A121455(n+1)*A309873(n+1)`
-/

namespace A133657.P12422099914255056377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121455 (n + 1) * A309873 (n + 1)

end

end A133657.P12422099914255056377

namespace A133657

/-- `A121455(n+1)*A309873(n+1)` -/
def P12422099914255056377.Spec : Prop :=
  ∀ n, P12422099914255056377.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P5459340129089175489

`∑{d}[A000265(n+1), #*A230074(n+1)²]`
-/

namespace A133657.P5459340129089175489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A230074 (n + 1) ^ 2

end

end A133657.P5459340129089175489

namespace A133657

/-- `∑{d}[A000265(n+1), #*A230074(n+1)²]` -/
def P5459340129089175489.Spec : Prop :=
  ∀ n, P5459340129089175489.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P9218056360318333010

`A230074(n+1)²*∑{d}[A276234(n+1), #]`
-/

namespace A133657.P9218056360318333010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) ^ 2 * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A133657.P9218056360318333010

namespace A133657

/-- `A230074(n+1)²*∑{d}[A276234(n+1), #]` -/
def P9218056360318333010.Spec : Prop :=
  ∀ n, P9218056360318333010.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P14494390637896785655

`∑{d}[n+1, A059841(#-1)*A251610((n+1)/#)]`
-/

namespace A133657.P14494390637896785655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A251610 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133657.P14494390637896785655

namespace A133657

/-- `∑{d}[n+1, A059841(#-1)*A251610((n+1)/#)]` -/
def P14494390637896785655.Spec : Prop :=
  ∀ n, P14494390637896785655.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P11071849104912291604

`∑{d}[n+1, A165998(#-1)*A230074((n+1)/#)]`
-/

namespace A133657.P11071849104912291604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A165998 (d - 1) * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133657.P11071849104912291604

namespace A133657

/-- `∑{d}[n+1, A165998(#-1)*A230074((n+1)/#)]` -/
def P11071849104912291604.Spec : Prop :=
  ∀ n, P11071849104912291604.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P10401390970471426548

`A326938(A006519(n+1))²*A000593(n+1)`
-/

namespace A133657.P10401390970471426548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (A006519 (n + 1)).toNat ^ 2 * A000593 (n + 1)

end

end A133657.P10401390970471426548

namespace A133657

/-- `A326938(A006519(n+1))²*A000593(n+1)` -/
def P10401390970471426548.Spec : Prop :=
  ∀ n, P10401390970471426548.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P17156672931392447994

`A111973(2*(n+1))-A111973(n+1)`
-/

namespace A133657.P17156672931392447994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111973 (2 * (n + 1)) - A111973 (n + 1)

end

end A133657.P17156672931392447994

namespace A133657

/-- `A111973(2*(n+1))-A111973(n+1)` -/
def P17156672931392447994.Spec : Prop :=
  ∀ n, P17156672931392447994.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P14426542736064315333

`∑{#}[n, A113411(#)*A113411(n-#)]`
-/

namespace A133657.P14426542736064315333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113411 k * A113411 (n - k)

end

end A133657.P14426542736064315333

namespace A133657

/-- `∑{#}[n, A113411(#)*A113411(n-#)]` -/
def P14426542736064315333.Spec : Prop :=
  ∀ n, P14426542736064315333.a n = A133657 (n + 1)

end A133657

/-! ## A133657.P17692811876050496083

`∑{d}[n+1, A244375(#)*A278085((n+1)/#)]`
-/

namespace A133657.P17692811876050496083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244375 d * A278085 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133657.P17692811876050496083

namespace A133657

/-- `∑{d}[n+1, A244375(#)*A278085((n+1)/#)]` -/
def P17692811876050496083.Spec : Prop :=
  ∀ n, P17692811876050496083.a n = A133657 (n + 1)

end A133657

/-!
# A133659: Primes that are the sum of three consecutive primes as well as the sum of three consecutive composite numbers.

The programs for A133659, the canonical program `A133659.P14094302548948468611` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133659 has offset 1).

The definition of A133659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133659.P14094302548948468611

`∩[A034962(n+1), A390613(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133659

/-- `∩[A034962(n+1), A390613(n+1)]` -/
def P14094302548948468611.Spec : Prop :=
  ∀ n, (P14094302548948468611.a n : ℤ) = A133659 (n + 1)

theorem P14094302548948468611.correct : P14094302548948468611.Spec := by
  intro n
  simp only [A133659, Nat.add_sub_cancel]

end A133659

/-! ## A133659.P4172174243436437134

`p?[A390613(n+1)]`
-/

namespace A133659.P4172174243436437134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133659.P4172174243436437134

namespace A133659

/-- `p?[A390613(n+1)]` -/
def P4172174243436437134.Spec : Prop :=
  ∀ n, P4172174243436437134.a n = A133659 (n + 1)

end A133659

/-! ## A133659.P14083760621184338236

`∩[A067377(n+1), A390613(n+1)]`
-/

namespace A133659.P14083760621184338236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P14083760621184338236

namespace A133659

/-- `∩[A067377(n+1), A390613(n+1)]` -/
def P14083760621184338236.Spec : Prop :=
  ∀ n, (P14083760621184338236.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P2628196581071993372

`∩[A034962(n+1), A060328(n+1)]`
-/

namespace A133659.P2628196581071993372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P2628196581071993372

namespace A133659

/-- `∩[A034962(n+1), A060328(n+1)]` -/
def P2628196581071993372.Spec : Prop :=
  ∀ n, (P2628196581071993372.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P4360182353333344706

`∩[A034962(n+1), A167610(n+1)]`
-/

namespace A133659.P4360182353333344706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P4360182353333344706

namespace A133659

/-- `∩[A034962(n+1), A167610(n+1)]` -/
def P4360182353333344706.Spec : Prop :=
  ∀ n, (P4360182353333344706.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P12269102609632472912

`∩[A060328(n+1), A390613(n+1)]`
-/

namespace A133659.P12269102609632472912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P12269102609632472912

namespace A133659

/-- `∩[A060328(n+1), A390613(n+1)]` -/
def P12269102609632472912.Spec : Prop :=
  ∀ n, (P12269102609632472912.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P8640492354540648003

`∩[A167610(n+1), A390613(n+1)]`
-/

namespace A133659.P8640492354540648003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P8640492354540648003

namespace A133659

/-- `∩[A167610(n+1), A390613(n+1)]` -/
def P8640492354540648003.Spec : Prop :=
  ∀ n, (P8640492354540648003.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P7441719147476740064

`∩[A071199(n+1), A390613(n+1)]`
-/

namespace A133659.P7441719147476740064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P7441719147476740064

namespace A133659

/-- `∩[A071199(n+1), A390613(n+1)]` -/
def P7441719147476740064.Spec : Prop :=
  ∀ n, (P7441719147476740064.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P10061281451161940472

`∩[A065867(n+1), A390613(n+1)]`
-/

namespace A133659.P10061281451161940472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P10061281451161940472

namespace A133659

/-- `∩[A065867(n+1), A390613(n+1)]` -/
def P10061281451161940472.Spec : Prop :=
  ∀ n, (P10061281451161940472.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P5034530142851075383

`∩[A034961(n+1), A060328(n+1)]`
-/

namespace A133659.P5034530142851075383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P5034530142851075383

namespace A133659

/-- `∩[A034961(n+1), A060328(n+1)]` -/
def P5034530142851075383.Spec : Prop :=
  ∀ n, (P5034530142851075383.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P17256856775191893024

`∩[A034961(n+1), A167610(n+1)]`
-/

namespace A133659.P17256856775191893024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P17256856775191893024

namespace A133659

/-- `∩[A034961(n+1), A167610(n+1)]` -/
def P17256856775191893024.Spec : Prop :=
  ∀ n, (P17256856775191893024.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P7983093905565837627

`∩[A380468(n+1), A390613(n+1)]`
-/

namespace A133659.P7983093905565837627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P7983093905565837627

namespace A133659

/-- `∩[A380468(n+1), A390613(n+1)]` -/
def P7983093905565837627.Spec : Prop :=
  ∀ n, (P7983093905565837627.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P18047029505178335578

`∩[A000040(n+1), A390613(n+1)]`
-/

namespace A133659.P18047029505178335578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P18047029505178335578

namespace A133659

/-- `∩[A000040(n+1), A390613(n+1)]` -/
def P18047029505178335578.Spec : Prop :=
  ∀ n, (P18047029505178335578.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P7270200976371708188

`∩[A004139(n+1), A390613(n+1)]`
-/

namespace A133659.P7270200976371708188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P7270200976371708188

namespace A133659

/-- `∩[A004139(n+1), A390613(n+1)]` -/
def P7270200976371708188.Spec : Prop :=
  ∀ n, (P7270200976371708188.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P17813800862030749186

`∩[A006005(n+1), A390613(n+1)]`
-/

namespace A133659.P17813800862030749186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P17813800862030749186

namespace A133659

/-- `∩[A006005(n+1), A390613(n+1)]` -/
def P17813800862030749186.Spec : Prop :=
  ∀ n, (P17813800862030749186.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P16658566362804983724

`∩[A008578(n+1), A390613(n+1)]`
-/

namespace A133659.P16658566362804983724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P16658566362804983724

namespace A133659

/-- `∩[A008578(n+1), A390613(n+1)]` -/
def P16658566362804983724.Spec : Prop :=
  ∀ n, (P16658566362804983724.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P9328624226921027279

`∩[A045319(n+1), A390613(n+1)]`
-/

namespace A133659.P9328624226921027279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P9328624226921027279

namespace A133659

/-- `∩[A045319(n+1), A390613(n+1)]` -/
def P9328624226921027279.Spec : Prop :=
  ∀ n, (P9328624226921027279.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P11923995324573632379

`∩[A045344(n+1), A390613(n+1)]`
-/

namespace A133659.P11923995324573632379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P11923995324573632379

namespace A133659

/-- `∩[A045344(n+1), A390613(n+1)]` -/
def P11923995324573632379.Spec : Prop :=
  ∀ n, (P11923995324573632379.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P364009573847521556

`∩[A046022(n+1), A390613(n+1)]`
-/

namespace A133659.P364009573847521556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P364009573847521556

namespace A133659

/-- `∩[A046022(n+1), A390613(n+1)]` -/
def P364009573847521556.Spec : Prop :=
  ∀ n, (P364009573847521556.a n : ℤ) = A133659 (n + 1)

end A133659

/-! ## A133659.P8909983334103915680

`∩[A051948(n+1), A390613(n+1)]`
-/

namespace A133659.P8909983334103915680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P8909983334103915680

namespace A133659

/-- `∩[A051948(n+1), A390613(n+1)]` -/
def P8909983334103915680.Spec : Prop :=
  ∀ n, (P8909983334103915680.a n : ℤ) = A133659 (n + 1)

end A133659

/-!
# A133660: No sum of 2 or more terms equals a prime.

The programs for A133660, there is no canonical definition to state claims against.
-/

/-! ## A133660.P15141908044779359736

`∑[A287957(7^n)²]+n`
-/

namespace A133660.P15141908044779359736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (7 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133660.P15141908044779359736

/-!
# A133661: No sum of 2 or more terms equals a prime, terms alternate parity and there are no primes in the list.

The programs for A133661, there is no canonical definition to state claims against.
-/

/-! ## A133661.P8551205088887268988

`A122954(A034270(n+1))`
-/

namespace A133661.P8551205088887268988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122954 (A034270 (n + 1)).toNat

end

end A133661.P8551205088887268988

/-!
# A133662: Lexically least increasing sequence such that the sum of any nonempty subsequence is not a square.

The programs for A133662, there is no canonical definition to state claims against.
-/

/-! ## A133662.P17934764621272881147

`A222416(A065163(n+1))+A131818(n+1)`
-/

namespace A133662.P17934764621272881147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A065163 (n + 1)).toNat + A131818 (n + 1)

end

end A133662.P17934764621272881147

/-!
# A133663: Primes of the form a^a + b^b + c^c.

The programs for A133663, there is no canonical definition to state claims against.
-/

/-! ## A133663.P8852179584908539845

`p?[A045503(A279777(n+1))]`
-/

namespace A133663.P8852179584908539845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (A279777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133663.P8852179584908539845

/-!
# A133665: a(n) = a(n-1) - 9*a(n-2), a(0) = 1, a(1) = 3.

The programs for A133665, the canonical program `A133665.P16946203945819826560` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133665 has offset 0).

The definition of A133665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-9*a(n-2)` (program `A133665.P16946203945819826560`, by `A133665.P16946203945819826560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133665.P5236848758372629236

`ogf((1+2x)/(1-x+9x^2))`
-/

namespace A133665.P5236848758372629236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, 9] n

end

end A133665.P5236848758372629236

namespace A133665

/-- `ogf((1+2x)/(1-x+9x^2))` -/
def P5236848758372629236.Spec : Prop :=
  ∀ n, P5236848758372629236.a n = A133665 n

end A133665

/-! ## A133665.P16946203945819826560

`a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133665

/-- `a(n-1)-9*a(n-2)` -/
def P16946203945819826560.Spec : Prop :=
  ∀ n, P16946203945819826560.a n = A133665 n

theorem P16946203945819826560.correct : P16946203945819826560.Spec := by
  intro n
  simp only [A133665]

end A133665

/-! ## A133665.P12793938185358961241

`∑{#}[n, A133607(C(n+1, 2)+#)*3^#]`
-/

namespace A133665.P12793938185358961241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (3 ^ k : ℤ)

end

end A133665.P12793938185358961241

namespace A133665

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*3^#]` -/
def P12793938185358961241.Spec : Prop :=
  ∀ n, P12793938185358961241.a n = A133665 n

end A133665

/-! ## A133665.P10128144771653915777

`∏[(a(n-1)-9)/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A133665.P10128144771653915777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (f1 (n - 1) - 9) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133665.P10128144771653915777

namespace A133665

/-- `∏[(a(n-1)-9)/a(n-1)]` -/
def P10128144771653915777.Spec : Prop :=
  ∀ n, P10128144771653915777.a n = (A133665 n : ℚ)

end A133665

/-! ## A133665.P14385424058278385553

`a(n-1)-a(n-2)/(1/3)²` with `a(0)=1, a(1)=3`
-/

namespace A133665.P14385424058278385553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A133665.P14385424058278385553

namespace A133665

/-- `a(n-1)-a(n-2)/(1/3)²` -/
def P14385424058278385553.Spec : Prop :=
  ∀ n, P14385424058278385553.a n = (A133665 n : ℚ)

end A133665

/-!
# A133666: a(n) = a(n-1) - 16*a(n-2), a(0)=1, a(1)=4.

The programs for A133666, the canonical program `A133666.P15374509405433032488` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133666 has offset 0).

The definition of A133666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-16*a(n-2)` (program `A133666.P15374509405433032488`, by `A133666.P15374509405433032488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133666.P15678633743276426787

`ogf((1+3x)/(1-x+16x^2))`
-/

namespace A133666.P15678633743276426787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, 16] n

end

end A133666.P15678633743276426787

namespace A133666

/-- `ogf((1+3x)/(1-x+16x^2))` -/
def P15678633743276426787.Spec : Prop :=
  ∀ n, P15678633743276426787.a n = A133666 n

end A133666

/-! ## A133666.P15374509405433032488

`a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133666

/-- `a(n-1)-16*a(n-2)` -/
def P15374509405433032488.Spec : Prop :=
  ∀ n, P15374509405433032488.a n = A133666 n

theorem P15374509405433032488.correct : P15374509405433032488.Spec := by
  intro n
  simp only [A133666]

end A133666

/-! ## A133666.P12509997878320025154

`∑{#}[n, A133607(C(n+1, 2)+#)*4^#]`
-/

namespace A133666.P12509997878320025154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ)

end

end A133666.P12509997878320025154

namespace A133666

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*4^#]` -/
def P12509997878320025154.Spec : Prop :=
  ∀ n, P12509997878320025154.a n = A133666 n

end A133666

/-! ## A133666.P15126729763278189565

`a(n-1)-a(n-2)/(1/4)²` with `a(0)=1, a(1)=4`
-/

namespace A133666.P15126729763278189565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 4) ^ 2

end

end A133666.P15126729763278189565

namespace A133666

/-- `a(n-1)-a(n-2)/(1/4)²` -/
def P15126729763278189565.Spec : Prop :=
  ∀ n, P15126729763278189565.a n = (A133666 n : ℚ)

end A133666

/-! ## A133666.P4176817383833259241

`A078020(4*n)+A078020(4*n+1)/3`
-/

namespace A133666.P4176817383833259241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078020 (4 * n) : ℚ) + (A078020 (4 * n + 1) : ℚ) / 3

end

end A133666.P4176817383833259241

namespace A133666

/-- `A078020(4*n)+A078020(4*n+1)/3` -/
def P4176817383833259241.Spec : Prop :=
  ∀ n, P4176817383833259241.a n = (A133666 n : ℚ)

end A133666

/-! ## A133666.P14805071938740592110

`A107920(4*n+2)+A107920(4*n)/3`
-/

namespace A133666.P14805071938740592110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 (4 * n + 2) : ℚ) + (A107920 (4 * n) : ℚ) / 3

end

end A133666.P14805071938740592110

namespace A133666

/-- `A107920(4*n+2)+A107920(4*n)/3` -/
def P14805071938740592110.Spec : Prop :=
  ∀ n, P14805071938740592110.a n = (A133666 n : ℚ)

end A133666

/-! ## A133666.P2455796541805957534

`Δ[A002249(4*n+2)/12]`
-/

namespace A133666.P2455796541805957534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002249 (4 * n + 2) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133666.P2455796541805957534

namespace A133666

/-- `Δ[A002249(4*n+2)/12]` -/
def P2455796541805957534.Spec : Prop :=
  ∀ n, P2455796541805957534.a n = (A133666 n : ℚ)

end A133666

/-!
# A133667: a(n) = a(n-1) - 25*a(n-2), a(0)=1, a(1)=5.

The programs for A133667, the canonical program `A133667.P17550358016118514823` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133667 has offset 0).

The definition of A133667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-25*a(n-2)` (program `A133667.P17550358016118514823`, by `A133667.P17550358016118514823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133667.P4541694707667558600

`ogf((1+4x)/(1-x+25x^2))`
-/

namespace A133667.P4541694707667558600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -1, 25] n

end

end A133667.P4541694707667558600

namespace A133667

/-- `ogf((1+4x)/(1-x+25x^2))` -/
def P4541694707667558600.Spec : Prop :=
  ∀ n, P4541694707667558600.a n = A133667 n

end A133667

/-! ## A133667.P17550358016118514823

`a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133667

/-- `a(n-1)-25*a(n-2)` -/
def P17550358016118514823.Spec : Prop :=
  ∀ n, P17550358016118514823.a n = A133667 n

theorem P17550358016118514823.correct : P17550358016118514823.Spec := by
  intro n
  simp only [A133667]

end A133667

/-! ## A133667.P15852701669451398036

`∑{#}[n, A133607(C(n+1, 2)+#)*5^#]`
-/

namespace A133667.P15852701669451398036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (5 ^ k : ℤ)

end

end A133667.P15852701669451398036

namespace A133667

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*5^#]` -/
def P15852701669451398036.Spec : Prop :=
  ∀ n, P15852701669451398036.a n = A133667 n

end A133667

/-! ## A133667.P4454111632737300304

`a(n-1)-a(n-2)/(1/5)²` with `a(0)=1, a(1)=5`
-/

namespace A133667.P4454111632737300304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 5) ^ 2

end

end A133667.P4454111632737300304

namespace A133667

/-- `a(n-1)-a(n-2)/(1/5)²` -/
def P4454111632737300304.Spec : Prop :=
  ∀ n, P4454111632737300304.a n = (A133667 n : ℚ)

end A133667

/-!
# A133668: a(n) = a(n-1) - 36*a(n-2), a(0)=1, a(1)=6.

The programs for A133668, the canonical program `A133668.P7666108645668873169` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133668 has offset 0).

The definition of A133668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-36*a(n-2)` (program `A133668.P7666108645668873169`, by `A133668.P7666108645668873169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133668.P6716256337159911140

`ogf((1+5x)/(1-x+36x^2))`
-/

namespace A133668.P6716256337159911140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -1, 36] n

end

end A133668.P6716256337159911140

namespace A133668

/-- `ogf((1+5x)/(1-x+36x^2))` -/
def P6716256337159911140.Spec : Prop :=
  ∀ n, P6716256337159911140.a n = A133668 n

end A133668

/-! ## A133668.P7666108645668873169

`a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133668

/-- `a(n-1)-36*a(n-2)` -/
def P7666108645668873169.Spec : Prop :=
  ∀ n, P7666108645668873169.a n = A133668 n

theorem P7666108645668873169.correct : P7666108645668873169.Spec := by
  intro n
  simp only [A133668]

end A133668

/-! ## A133668.P2462410584466406044

`∑{#}[n, A133607(C(n+1, 2)+#)*6^#]`
-/

namespace A133668.P2462410584466406044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (6 ^ k : ℤ)

end

end A133668.P2462410584466406044

namespace A133668

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*6^#]` -/
def P2462410584466406044.Spec : Prop :=
  ∀ n, P2462410584466406044.a n = A133668 n

end A133668

/-!
# A133669: a(n) = a(n-1) - 49*a(n-2), a(0)=1, a(1)=7.

The programs for A133669, the canonical program `A133669.P1114995600501210288` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133669 has offset 0).

The definition of A133669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-49*a(n-2)` (program `A133669.P1114995600501210288`, by `A133669.P1114995600501210288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133669.P9542309872139256540

`ogf((1+6x)/(1-x+49x^2))`
-/

namespace A133669.P9542309872139256540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -1, 49] n

end

end A133669.P9542309872139256540

namespace A133669

/-- `ogf((1+6x)/(1-x+49x^2))` -/
def P9542309872139256540.Spec : Prop :=
  ∀ n, P9542309872139256540.a n = A133669 n

end A133669

/-! ## A133669.P1114995600501210288

`a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133669

/-- `a(n-1)-49*a(n-2)` -/
def P1114995600501210288.Spec : Prop :=
  ∀ n, P1114995600501210288.a n = A133669 n

theorem P1114995600501210288.correct : P1114995600501210288.Spec := by
  intro n
  simp only [A133669]

end A133669

/-! ## A133669.P1489297488122342045

`∑{#}[n, A133607(C(n+1, 2)+#)*7^#]`
-/

namespace A133669.P1489297488122342045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (7 ^ k : ℤ)

end

end A133669.P1489297488122342045

namespace A133669

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*7^#]` -/
def P1489297488122342045.Spec : Prop :=
  ∀ n, P1489297488122342045.a n = A133669 n

end A133669

/-!
# A133670: Partial sums of A000016.

The programs for A133670, the canonical program `A133670.P186027561368392954` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133670 has offset 0).

The definition of A133670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133670.P1719636637285078579

`∑[A000016(n)]`
-/

namespace A133670.P1719636637285078579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P1719636637285078579

namespace A133670

/-- `∑[A000016(n)]` -/
def P1719636637285078579.Spec : Prop :=
  ∀ n, P1719636637285078579.a n = A133670 n

end A133670

/-! ## A133670.P186027561368392954

`∑[A063776(A233583(n+1))/2]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A133670

/-- `∑[A063776(A233583(n+1))/2]` -/
def P186027561368392954.Spec : Prop :=
  ∀ n, P186027561368392954.a n = (A133670 n : ℚ)

end A133670

/-! ## A133670.P12264158249447986494

`∑[A000031(n)-A000013(n)]+1`
-/

namespace A133670.P12264158249447986494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A000013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133670.P12264158249447986494

namespace A133670

/-- `∑[A000031(n)-A000013(n)]+1` -/
def P12264158249447986494.Spec : Prop :=
  ∀ n, P12264158249447986494.a n = A133670 n

end A133670

/-! ## A133670.P7389571235372765471

`∑[A052823(n)+2-A000013(n)]`
-/

namespace A133670.P7389571235372765471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (2 - A000013 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P7389571235372765471

namespace A133670

/-- `∑[A052823(n)+2-A000013(n)]` -/
def P7389571235372765471.Spec : Prop :=
  ∀ n, P7389571235372765471.a n = A133670 n

end A133670

/-! ## A133670.P15512876873375256614

`(A327475(n)+1+n)/2`
-/

namespace A133670.P15512876873375256614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327475 n + 1 + (n : ℤ) : ℚ) / 2

end

end A133670.P15512876873375256614

namespace A133670

/-- `(A327475(n)+1+n)/2` -/
def P15512876873375256614.Spec : Prop :=
  ∀ n, P15512876873375256614.a n = (A133670 n : ℚ)

end A133670

/-! ## A133670.P12857476461714757930

`A000016(n+1)+A065795(n+1)-A082550(n+1)`
-/

namespace A133670.P12857476461714757930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A065795 (n + 1) - A082550 (n + 1))

end

end A133670.P12857476461714757930

namespace A133670

/-- `A000016(n+1)+A065795(n+1)-A082550(n+1)` -/
def P12857476461714757930.Spec : Prop :=
  ∀ n, P12857476461714757930.a n = A133670 n

end A133670

/-! ## A133670.P5376537302572530152

`A000051(n)-A327471(n)`
-/

namespace A133670.P5376537302572530152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A327471 n

end

end A133670.P5376537302572530152

namespace A133670

/-- `A000051(n)-A327471(n)` -/
def P5376537302572530152.Spec : Prop :=
  ∀ n, P5376537302572530152.a n = A133670 n

end A133670

/-! ## A133670.P5562647860244963201

`∑[A053633(C(n, 2))]`
-/

namespace A133670.P5562647860244963201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P5562647860244963201

namespace A133670

/-- `∑[A053633(C(n, 2))]` -/
def P5562647860244963201.Spec : Prop :=
  ∀ n, P5562647860244963201.a n = A133670 n

end A133670

/-! ## A133670.P17975692708878922387

`∑[A053633(∑[n]-n)]`
-/

namespace A133670.P17975692708878922387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P17975692708878922387

namespace A133670

/-- `∑[A053633(∑[n]-n)]` -/
def P17975692708878922387.Spec : Prop :=
  ∀ n, P17975692708878922387.a n = A133670 n

end A133670

/-!
# A133671: a(n) = a(n-1) - 64*a(n-2), a(0)=1, a(1)=8.

The programs for A133671, the canonical program `A133671.P657032871353613028` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133671 has offset 0).

The definition of A133671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-64*a(n-2)` (program `A133671.P657032871353613028`, by `A133671.P657032871353613028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133671.P8677844483225494343

`ogf((1+7x)/(1-x+64x^2))`
-/

namespace A133671.P8677844483225494343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -1, 64] n

end

end A133671.P8677844483225494343

namespace A133671

/-- `ogf((1+7x)/(1-x+64x^2))` -/
def P8677844483225494343.Spec : Prop :=
  ∀ n, P8677844483225494343.a n = A133671 n

end A133671

/-! ## A133671.P657032871353613028

`a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133671

/-- `a(n-1)-64*a(n-2)` -/
def P657032871353613028.Spec : Prop :=
  ∀ n, P657032871353613028.a n = A133671 n

theorem P657032871353613028.correct : P657032871353613028.Spec := by
  intro n
  simp only [A133671]

end A133671

/-! ## A133671.P5263532962491233054

`∑{#}[n, A133607(C(n+1, 2)+#)*8^#]`
-/

namespace A133671.P5263532962491233054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (8 ^ k : ℤ)

end

end A133671.P5263532962491233054

namespace A133671

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*8^#]` -/
def P5263532962491233054.Spec : Prop :=
  ∀ n, P5263532962491233054.a n = A133671 n

end A133671

/-!
# A133672: a(n) = a(n-1) - 81*a(n-2), a(0)=1, a(1)=9.

The programs for A133672, the canonical program `A133672.P17490496303771583612` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133672 has offset 0).

The definition of A133672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-81*a(n-2)` (program `A133672.P17490496303771583612`, by `A133672.P17490496303771583612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133672.P15943483502983970456

`ogf((1+8x)/(1-x+81x^2))`
-/

namespace A133672.P15943483502983970456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -1, 81] n

end

end A133672.P15943483502983970456

namespace A133672

/-- `ogf((1+8x)/(1-x+81x^2))` -/
def P15943483502983970456.Spec : Prop :=
  ∀ n, P15943483502983970456.a n = A133672 n

end A133672

/-! ## A133672.P17490496303771583612

`a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133672

/-- `a(n-1)-81*a(n-2)` -/
def P17490496303771583612.Spec : Prop :=
  ∀ n, P17490496303771583612.a n = A133672 n

theorem P17490496303771583612.correct : P17490496303771583612.Spec := by
  intro n
  simp only [A133672]

end A133672

/-! ## A133672.P12338147530908772559

`∑{#}[n, A133607(C(n+1, 2)+#)*9^#]`
-/

namespace A133672.P12338147530908772559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133607 (Nat.choose (n + 1) 2 + k) * (9 ^ k : ℤ)

end

end A133672.P12338147530908772559

namespace A133672

/-- `∑{#}[n, A133607(C(n+1, 2)+#)*9^#]` -/
def P12338147530908772559.Spec : Prop :=
  ∀ n, P12338147530908772559.a n = A133672 n

end A133672

/-!
# A133673: a(n) = n*L(n) + (n-1)*L(n-1) where L(n) is the Lucas number.

The programs for A133673, the canonical program `A133673.P4205090030389140621` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133673 has offset 2).

The definition of A133673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133673.P8314180628357282579

`ogf((7+4x-3x^2-x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A133673.P8314180628357282579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, -3, -1] [1, -2, -1, 2, 1] n

end

end A133673.P8314180628357282579

namespace A133673

/-- `ogf((7+4x-3x^2-x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P8314180628357282579.Spec : Prop :=
  ∀ n, P8314180628357282579.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P18181679588443031521

`A146005(n+2)+A146005(n+1)`
-/

namespace A133673.P18181679588443031521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 2) + A146005 (n + 1)

end

end A133673.P18181679588443031521

namespace A133673

/-- `A146005(n+2)+A146005(n+1)` -/
def P18181679588443031521.Spec : Prop :=
  ∀ n, P18181679588443031521.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P4205090030389140621

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=7, a(1)=18, a(2)=40, a(3)=83`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133673

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P4205090030389140621.Spec : Prop :=
  ∀ n, P4205090030389140621.a n = A133673 (n + 2)

theorem P4205090030389140621.correct : P4205090030389140621.Spec := by
  intro n
  simp only [A133673, Nat.add_sub_cancel]

end A133673

/-! ## A133673.P1589889608369907996

`round((n+ϕ)*ϕ^(n+3))`
-/

namespace A133673.P1589889608369907996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) + Real.goldenRatio) * Real.goldenRatio ^ (n + 3))

end

end A133673.P1589889608369907996

namespace A133673

/-- `round((n+ϕ)*ϕ^(n+3))` -/
def P1589889608369907996.Spec : Prop :=
  ∀ n, P1589889608369907996.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P15446550565331972746

`A004799(n+2)+A000045(n+1)`
-/

namespace A133673.P15446550565331972746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 2) + A000045 (n + 1)

end

end A133673.P15446550565331972746

namespace A133673

/-- `A004799(n+2)+A000045(n+1)` -/
def P15446550565331972746.Spec : Prop :=
  ∀ n, P15446550565331972746.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P5609092402794766020

`A354044(n+1)+A023619(n+2)`
-/

namespace A133673.P5609092402794766020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (n + 1) + A023619 (n + 2)

end

end A133673.P5609092402794766020

namespace A133673

/-- `A354044(n+1)+A023619(n+2)` -/
def P5609092402794766020.Spec : Prop :=
  ∀ n, P5609092402794766020.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P11330597739532108911

`A128439(n+2)+A128439(n+1)+1`
-/

namespace A133673.P11330597739532108911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128439 (n + 2) + (A128439 (n + 1) + 1)

end

end A133673.P11330597739532108911

namespace A133673

/-- `A128439(n+2)+A128439(n+1)+1` -/
def P11330597739532108911.Spec : Prop :=
  ∀ n, P11330597739532108911.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P12319302385612452691

`A136376(n+2)+2*A354044(n+1)`
-/

namespace A133673.P12319302385612452691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 2) + 2 * A354044 (n + 1)

end

end A133673.P12319302385612452691

namespace A133673

/-- `A136376(n+2)+2*A354044(n+1)` -/
def P12319302385612452691.Spec : Prop :=
  ∀ n, P12319302385612452691.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P13538671624620046932

`A000032(n+2)+(n+1)*A000032(n+3)`
-/

namespace A133673.P13538671624620046932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) + (n + 1 : ℤ) * A000032 (n + 3)

end

end A133673.P13538671624620046932

namespace A133673

/-- `A000032(n+2)+(n+1)*A000032(n+3)` -/
def P13538671624620046932.Spec : Prop :=
  ∀ n, P13538671624620046932.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P3723129565497075249

`(2*n+1)*A000045(n+2)+(n+3)*A000045(n+3)`
-/

namespace A133673.P3723129565497075249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (n + 2) + (n + 3 : ℤ) * A000045 (n + 3)

end

end A133673.P3723129565497075249

namespace A133673

/-- `(2*n+1)*A000045(n+2)+(n+3)*A000045(n+3)` -/
def P3723129565497075249.Spec : Prop :=
  ∀ n, P3723129565497075249.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P8605097346785264681

`A000045(n+1)+A067980(n)+A000204(n+2)`
-/

namespace A133673.P8605097346785264681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A067980 n + A000204 (n + 2))

end

end A133673.P8605097346785264681

namespace A133673

/-- `A000045(n+1)+A067980(n)+A000204(n+2)` -/
def P8605097346785264681.Spec : Prop :=
  ∀ n, P8605097346785264681.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P16353839479499685609

`A000285(n+1)+A004799(n+2)-A000204(n+2)`
-/

namespace A133673.P16353839479499685609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) + (A004799 (n + 2) - A000204 (n + 2))

end

end A133673.P16353839479499685609

namespace A133673

/-- `A000285(n+1)+A004799(n+2)-A000204(n+2)` -/
def P16353839479499685609.Spec : Prop :=
  ∀ n, P16353839479499685609.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P2551381043043563716

`A023619(n+2)+A023619(n+2)-A136376(n+2)`
-/

namespace A133673.P2551381043043563716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023619 (n + 2) + (A023619 (n + 2) - A136376 (n + 2))

end

end A133673.P2551381043043563716

namespace A133673

/-- `A023619(n+2)+A023619(n+2)-A136376(n+2)` -/
def P2551381043043563716.Spec : Prop :=
  ∀ n, P2551381043043563716.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P4086732325300554721

`A097039(n+2)-A097039(n)`
-/

namespace A133673.P4086732325300554721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097039 (n + 2) - A097039 n

end

end A133673.P4086732325300554721

namespace A133673

/-- `A097039(n+2)-A097039(n)` -/
def P4086732325300554721.Spec : Prop :=
  ∀ n, P4086732325300554721.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P9918852888702690478

`2*A023619(n+2)-A136376(n+2)`
-/

namespace A133673.P9918852888702690478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023619 (n + 2) - A136376 (n + 2)

end

end A133673.P9918852888702690478

namespace A133673

/-- `2*A023619(n+2)-A136376(n+2)` -/
def P9918852888702690478.Spec : Prop :=
  ∀ n, P9918852888702690478.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P8054526957096291361

`Δ[(n-1)*A288219(n+2)]`
-/

namespace A133673.P8054526957096291361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A288219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133673.P8054526957096291361

namespace A133673

/-- `Δ[(n-1)*A288219(n+2)]` -/
def P8054526957096291361.Spec : Prop :=
  ∀ n, P8054526957096291361.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P6502926295102842885

`Δ[(n-1)*A163695(n+3)]`
-/

namespace A133673.P6502926295102842885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A163695 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133673.P6502926295102842885

namespace A133673

/-- `Δ[(n-1)*A163695(n+3)]` -/
def P6502926295102842885.Spec : Prop :=
  ∀ n, P6502926295102842885.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P17203429444173118680

`Δ[(n-1)*A000032(n+4)]`
-/

namespace A133673.P17203429444173118680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000032 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133673.P17203429444173118680

namespace A133673

/-- `Δ[(n-1)*A000032(n+4)]` -/
def P17203429444173118680.Spec : Prop :=
  ∀ n, P17203429444173118680.a n = A133673 (n + 2)

end A133673

/-! ## A133673.P15519409564814735656

`A000045(n+1)+A067981(n+1)-A067980(n+1)`
-/

namespace A133673.P15519409564814735656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A067981 (n + 1) - A067980 (n + 1))

end

end A133673.P15519409564814735656

namespace A133673

/-- `A000045(n+1)+A067981(n+1)-A067980(n+1)` -/
def P15519409564814735656.Spec : Prop :=
  ∀ n, P15519409564814735656.a n = A133673 (n + 2)

end A133673

/-!
# A133674: a(n) = |A061395(n+1) - A061395(n)|.

The programs for A133674, the canonical program `A133674.P1050408003642071118` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133674 has offset 1).

The definition of A133674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133674.P1050408003642071118

`abs(Δ[A061395(1+n)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133674

/-- `abs(Δ[A061395(1+n)])` -/
def P1050408003642071118.Spec : Prop :=
  ∀ n, P1050408003642071118.a n = A133674 (n + 1)

theorem P1050408003642071118.correct : P1050408003642071118.Spec := by
  intro n
  simp only [A133674, Nat.add_sub_cancel]

end A133674

/-! ## A133674.P2962833168428397122

`round(sqrt(Δ[A061395(2*(n+1))]²+1))`
-/

namespace A133674.P2962833168428397122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) - f1 n) ^ 2 + 1 : ℝ))

end

end A133674.P2962833168428397122

namespace A133674

/-- `round(sqrt(Δ[A061395(2*(n+1))]²+1))` -/
def P2962833168428397122.Spec : Prop :=
  ∀ n, P2962833168428397122.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P3306151678256058880

`abs(Δ[A000720(A006530(n+1))])`
-/

namespace A133674.P3306151678256058880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133674.P3306151678256058880

namespace A133674

/-- `abs(Δ[A000720(A006530(n+1))])` -/
def P3306151678256058880.Spec : Prop :=
  ∀ n, P3306151678256058880.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P8115224735682731634

`∑{d}[Δ[A061395(n+1)], A000010(#)]`
-/

namespace A133674.P8115224735682731634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A133674.P8115224735682731634

namespace A133674

/-- `∑{d}[Δ[A061395(n+1)], A000010(#)]` -/
def P8115224735682731634.Spec : Prop :=
  ∀ n, P8115224735682731634.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P638864789611997739

`abs(Δ[A159081(n+1)])`
-/

namespace A133674.P638864789611997739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133674.P638864789611997739

namespace A133674

/-- `abs(Δ[A159081(n+1)])` -/
def P638864789611997739.Spec : Prop :=
  ∀ n, P638864789611997739.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P15563401462769979729

`abs(1-Δ[A243291(n+1)])`
-/

namespace A133674.P15563401462769979729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A133674.P15563401462769979729

namespace A133674

/-- `abs(1-Δ[A243291(n+1)])` -/
def P15563401462769979729.Spec : Prop :=
  ∀ n, P15563401462769979729.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P5031156889539426875

`abs(Δ[A243056(2*(n+1))])`
-/

namespace A133674.P5031156889539426875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133674.P5031156889539426875

namespace A133674

/-- `abs(Δ[A243056(2*(n+1))])` -/
def P5031156889539426875.Spec : Prop :=
  ∀ n, P5031156889539426875.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P3382435232468437141

`lcm(or(1, -n)%2, Δ[A243056(2*n+2)])`
-/

namespace A133674.P3382435232468437141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (Int.lor 1 (-(n : ℤ))) 2) (f1 (n + 1) - f1 n)

end

end A133674.P3382435232468437141

namespace A133674

/-- `lcm(or(1, -n)%2, Δ[A243056(2*n+2)])` -/
def P3382435232468437141.Spec : Prop :=
  ∀ n, (P3382435232468437141.a n : ℤ) = A133674 (n + 1)

end A133674

/-! ## A133674.P4039193605340363832

`A056926(Δ[A061395(n+1)]²)`
-/

namespace A133674.P4039193605340363832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A133674.P4039193605340363832

namespace A133674

/-- `A056926(Δ[A061395(n+1)]²)` -/
def P4039193605340363832.Spec : Prop :=
  ∀ n, P4039193605340363832.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P11355555995678968600

`A241917(A245486(n+1))`
-/

namespace A133674.P11355555995678968600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A245486 (n + 1)).toNat

end

end A133674.P11355555995678968600

namespace A133674

/-- `A241917(A245486(n+1))` -/
def P11355555995678968600.Spec : Prop :=
  ∀ n, P11355555995678968600.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P8789453350961690601

`A241919(A006530(2*(n+1))*A006530(n+2))`
-/

namespace A133674.P8789453350961690601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A006530 (2 * (n + 1)) * A006530 (n + 2)).toNat

end

end A133674.P8789453350961690601

namespace A133674

/-- `A241919(A006530(2*(n+1))*A006530(n+2))` -/
def P8789453350961690601.Spec : Prop :=
  ∀ n, P8789453350961690601.a n = A133674 (n + 1)

end A133674

/-! ## A133674.P46694028781037750

`A241919(A053585(2*(n+1))*A053585(n+2))`
-/

namespace A133674.P46694028781037750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A053585 (2 * (n + 1)) * A053585 (n + 2)).toNat

end

end A133674.P46694028781037750

namespace A133674

/-- `A241919(A053585(2*(n+1))*A053585(n+2))` -/
def P46694028781037750.Spec : Prop :=
  ∀ n, P46694028781037750.a n = A133674 (n + 1)

end A133674

/-!
# A133675: Negative discriminants with form class number 1 (negated).

The programs for A133675, there is no canonical definition to state claims against.
-/

/-! ## A133675.P7727883105589716167

`eq[1, A107628(n+1)]+1`
-/

namespace A133675.P7727883105589716167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133675.P7727883105589716167

/-! ## A133675.P13893279863364327276

`eq[1, A107628(A028310(n))]`
-/

namespace A133675.P13893279863364327276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133675.P13893279863364327276

/-! ## A133675.P636070652127681240

`A020725(eq[1, A107628(n+1)])`
-/

namespace A133675.P636070652127681240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133675.P636070652127681240

/-! ## A133675.P4270285833884763788

`A056699(eq[1, A107628(n+1)])`
-/

namespace A133675.P4270285833884763788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133675.P4270285833884763788

/-! ## A133675.P1632876949956350167

`A065475(eq[1, A107628(n+1)])`
-/

namespace A133675.P1632876949956350167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133675.P1632876949956350167

/-!
# A133676: Negative discriminants with form class group of exponent 4 (negated).

The programs for A133676, there is no canonical definition to state claims against.
-/

/-! ## A133676.P5678736036555732676

`A317987(n+1)%A234712(n+1)`
-/

namespace A133676.P5678736036555732676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317987 (n + 1)) (A234712 (n + 1))

end

end A133676.P5678736036555732676

/-! ## A133676.P2543053618588930778

`A317987(1+n)+A065334(A028387(n))`
-/

namespace A133676.P2543053618588930778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317987 (1 + n) + A065334 (A028387 n).toNat

end

end A133676.P2543053618588930778

/-! ## A133676.P17481522134353184451

`A317987(n+1)+A098108(A078370(n))`
-/

namespace A133676.P17481522134353184451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317987 (n + 1) + A098108 (A078370 n).toNat

end

end A133676.P17481522134353184451

/-! ## A133676.P9649766037996578830

`A317987(n+1)+A024362(A276390(n))`
-/

namespace A133676.P9649766037996578830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317987 (n + 1) + A024362 (A276390 n).toNat

end

end A133676.P9649766037996578830

/-! ## A133676.P8277144145804297864

`A000120(A102376(n))*A317987(n+1)`
-/

namespace A133676.P8277144145804297864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A102376 n).toNat * A317987 (n + 1)

end

end A133676.P8277144145804297864

/-! ## A133676.P4446007133269943666

`A000034(A124108(n))*A317987(n+1)`
-/

namespace A133676.P4446007133269943666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A124108 n).toNat * A317987 (n + 1)

end

end A133676.P4446007133269943666

/-! ## A133676.P5793952312689085483

`A317987(n+1)^A265679(A140191(n))`
-/

namespace A133676.P5793952312689085483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317987 (n + 1) : ℚ) ^ (A265679 (A140191 n).toNat : ℤ)

end

end A133676.P5793952312689085483

/-! ## A133676.P7487360135692349375

`or(A000007(A051601(n)), A317987(n+1))`
-/

namespace A133676.P7487360135692349375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A051601 n).toNat) (A317987 (n + 1))

end

end A133676.P7487360135692349375

/-! ## A133676.P2555109932447766543

`or(A098108(A089633(n)), A317987(n+1))`
-/

namespace A133676.P2555109932447766543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098108 (A089633 n).toNat) (A317987 (n + 1))

end

end A133676.P2555109932447766543

/-! ## A133676.P9330772126345137535

`A317987(n+1)+A005171(A125257(n+1))`
-/

namespace A133676.P9330772126345137535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317987 (n + 1) + A005171 (A125257 (n + 1)).toNat

end

end A133676.P9330772126345137535

/-! ## A133676.P8091387590479712434

`A001222(A282688(n+1))*A317987(n+1)`
-/

namespace A133676.P8091387590479712434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A282688 (n + 1)).toNat * A317987 (n + 1)

end

end A133676.P8091387590479712434

/-! ## A133676.P13665214026751760475

`A317933(A317935(2*(n+1)))*A317987(n+1)`
-/

namespace A133676.P13665214026751760475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A317935 (2 * (n + 1))).toNat * A317987 (n + 1)

end

end A133676.P13665214026751760475

/-! ## A133676.P3578904843512956978

`1-(A001222(A282688(-xor(n, -1)))-A317987(n+1))`
-/

namespace A133676.P3578904843512956978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001222 (A282688 (-Int.xor (n : ℤ) (-1)).toNat).toNat - A317987 (n + 1))

end

end A133676.P3578904843512956978

/-! ## A133676.P5371731693158290102

`A001222(A282688(char[2]+1+n))+A317987(n+1)-1`
-/

namespace A133676.P5371731693158290102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A282688 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat + (A317987 (n + 1) - 1)

end

end A133676.P5371731693158290102

/-! ## A133676.P239136954645844347

`A317987(n+1)+A317961(A317934(2*(n+2)))`
-/

namespace A133676.P239136954645844347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317987 (n + 1) + A317961 (A317934 (2 * (n + 2))).toNat

end

end A133676.P239136954645844347

/-! ## A133676.P11931850042229207724

`A001222(A277689(n+1))*A317987(n+1)`
-/

namespace A133676.P11931850042229207724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277689 (n + 1)).toNat * A317987 (n + 1)

end

end A133676.P11931850042229207724

/-! ## A133676.P9520088728297008792

`A317987(n+1)+A064873(n²)`
-/

namespace A133676.P9520088728297008792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317987 (n + 1) + A064873 (n ^ 2)

end

end A133676.P9520088728297008792

/-!
# A133677: Integers k such that prime(k)*(2*prime(k)-1)/3 is an integer.

The programs for A133677, the canonical program `A133677.P14859646299872134020` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133677 has offset 1).

The definition of A133677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133677.P3743151144688650564

`∪[A001075(n), A091177(n+1)]`
-/

namespace A133677.P3743151144688650564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133677.P3743151144688650564

namespace A133677

/-- `∪[A001075(n), A091177(n+1)]` -/
def P3743151144688650564.Spec : Prop :=
  ∀ n, (P3743151144688650564.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P2009044279216550903

`∪[A091177(n+1), A092355(n)]`
-/

namespace A133677.P2009044279216550903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133677.P2009044279216550903

namespace A133677

/-- `∪[A091177(n+1), A092355(n)]` -/
def P2009044279216550903.Spec : Prop :=
  ∀ n, (P2009044279216550903.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P10761185746293305796

`∪[A200195(n+1), A091177(n+1)]`
-/

namespace A133677.P10761185746293305796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133677.P10761185746293305796

namespace A133677

/-- `∪[A200195(n+1), A091177(n+1)]` -/
def P10761185746293305796.Spec : Prop :=
  ∀ n, (P10761185746293305796.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P733850446392766028

`∑[runs[A086360(n)]]`
-/

namespace A133677.P733850446392766028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086360 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133677.P733850446392766028

namespace A133677

/-- `∑[runs[A086360(n)]]` -/
def P733850446392766028.Spec : Prop :=
  ∀ n, (P733850446392766028.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P14859646299872134020

`record[(n+1)*A156037(n+1)%3]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133677

/-- `record[(n+1)*A156037(n+1)%3]` -/
def P14859646299872134020.Spec : Prop :=
  ∀ n, P14859646299872134020.a n = A133677 (n + 1)

theorem P14859646299872134020.correct : P14859646299872134020.Spec := by
  intro n
  simp only [A133677, Nat.add_sub_cancel]

end A133677

/-! ## A133677.P2536750777156686419

`lt[A028815(n)%3, 2]`
-/

namespace A133677.P2536750777156686419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028815 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133677.P2536750777156686419

namespace A133677

/-- `lt[A028815(n)%3, 2]` -/
def P2536750777156686419.Spec : Prop :=
  ∀ n, (P2536750777156686419.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P5748484346244657407

`eq[0, A272203(n+1)]+1`
-/

namespace A133677.P5748484346244657407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133677.P5748484346244657407

namespace A133677

/-- `eq[0, A272203(n+1)]+1` -/
def P5748484346244657407.Spec : Prop :=
  ∀ n, (P5748484346244657407.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P13395654980291778105

`eq[1, A068503(n+1)]+1`
-/

namespace A133677.P13395654980291778105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133677.P13395654980291778105

namespace A133677

/-- `eq[1, A068503(n+1)]+1` -/
def P13395654980291778105.Spec : Prop :=
  ∀ n, (P13395654980291778105.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P6930169124603622897

`eq[1, A132194(n+1)]+1`
-/

namespace A133677.P6930169124603622897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133677.P6930169124603622897

namespace A133677

/-- `eq[1, A132194(n+1)]+1` -/
def P6930169124603622897.Spec : Prop :=
  ∀ n, (P6930169124603622897.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P3420477809914190061

`lt[1, A039704(n+1)]+1`
-/

namespace A133677.P3420477809914190061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A133677.P3420477809914190061

namespace A133677

/-- `lt[1, A039704(n+1)]+1` -/
def P3420477809914190061.Spec : Prop :=
  ∀ n, (P3420477809914190061.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P1609992089083258126

`lt[A134323(n+1), 1]+1`
-/

namespace A133677.P1609992089083258126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133677.P1609992089083258126

namespace A133677

/-- `lt[A134323(n+1), 1]+1` -/
def P1609992089083258126.Spec : Prop :=
  ∀ n, (P1609992089083258126.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P17130185386020607314

`lt[A272198(n+1)², 1]+1`
-/

namespace A133677.P17130185386020607314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133677.P17130185386020607314

namespace A133677

/-- `lt[A272198(n+1)², 1]+1` -/
def P17130185386020607314.Spec : Prop :=
  ∀ n, (P17130185386020607314.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P13061334939720570704

`eq[1, A099584(n+1)+1]+1`
-/

namespace A133677.P13061334939720570704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099584 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133677.P13061334939720570704

namespace A133677

/-- `eq[1, A099584(n+1)+1]+1` -/
def P13061334939720570704.Spec : Prop :=
  ∀ n, (P13061334939720570704.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P18085893634652588953

`lt[1, A000040(n+1)%6]+1`
-/

namespace A133677.P18085893634652588953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A133677.P18085893634652588953

namespace A133677

/-- `lt[1, A000040(n+1)%6]+1` -/
def P18085893634652588953.Spec : Prop :=
  ∀ n, (P18085893634652588953.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P10969351381614960578

`lt[val((A040976(n+1)+1)², 3), 1]+1`
-/

namespace A133677.P10969351381614960578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A040976 (n + 1) + 1) ^ 2).toNat 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A133677.P10969351381614960578

namespace A133677

/-- `lt[val((A040976(n+1)+1)², 3), 1]+1` -/
def P10969351381614960578.Spec : Prop :=
  ∀ n, (P10969351381614960578.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P5363627731129967265

`eq[A000038(n), A099584(A000038(n)+n)]`
-/

namespace A133677.P5363627731129967265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099584 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133677.P5363627731129967265

namespace A133677

/-- `eq[A000038(n), A099584(A000038(n)+n)]` -/
def P5363627731129967265.Spec : Prop :=
  ∀ n, (P5363627731129967265.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P16012913447520925208

`eq[A000007(n), A099584(A000007(n)+n)]`
-/

namespace A133677.P16012913447520925208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099584 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133677.P16012913447520925208

namespace A133677

/-- `eq[A000007(n), A099584(A000007(n)+n)]` -/
def P16012913447520925208.Spec : Prop :=
  ∀ n, (P16012913447520925208.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P3917782096357305997

`A000720(A045309(n+1))`
-/

namespace A133677.P3917782096357305997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045309 (n + 1)).toNat

end

end A133677.P3917782096357305997

namespace A133677

/-- `A000720(A045309(n+1))` -/
def P3917782096357305997.Spec : Prop :=
  ∀ n, P3917782096357305997.a n = A133677 (n + 1)

end A133677

/-! ## A133677.P10065374853776384253

`lt[4, A020639(A001747(n+1)+1)]`
-/

namespace A133677.P10065374853776384253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001747 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133677.P10065374853776384253

namespace A133677

/-- `lt[4, A020639(A001747(n+1)+1)]` -/
def P10065374853776384253.Spec : Prop :=
  ∀ n, (P10065374853776384253.a n : ℤ) = A133677 (n + 1)

end A133677

/-! ## A133677.P7737471916086670473

`comp[A049084(1+3*n)]`
-/

namespace A133677.P7737471916086670473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (1 + 3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133677.P7737471916086670473

namespace A133677

/-- `comp[A049084(1+3*n)]` -/
def P7737471916086670473.Spec : Prop :=
  ∀ n, (P7737471916086670473.a n : ℤ) = A133677 (n + 1)

end A133677

/-!
# A133678: a(n)=6*a(n-1)+42*a(n-2) for n>=3, a(0)=1, a(1)=6, a(2)=72 .

The programs for A133678, the canonical program `A133678.P5016682220108411395` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133678 has offset 0).

The definition of A133678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+42*a(n-2)` (program `A133678.P5016682220108411395`, by `A133678.P5016682220108411395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133678.P18305720830442568490

`ogf((1-6x^2)/(1-6x-42x^2))`
-/

namespace A133678.P18305720830442568490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6] [1, -6, -42] n

end

end A133678.P18305720830442568490

namespace A133678

/-- `ogf((1-6x^2)/(1-6x-42x^2))` -/
def P18305720830442568490.Spec : Prop :=
  ∀ n, P18305720830442568490.a n = A133678 n

end A133678

/-! ## A133678.P5016682220108411395

`6*a(n-1)+42*a(n-2)` with `a(0)=1, a(1)=6, a(2)=72`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133678

/-- `6*a(n-1)+42*a(n-2)` -/
def P5016682220108411395.Spec : Prop :=
  ∀ n, (P5016682220108411395.a n : ℤ) = A133678 n

theorem P5016682220108411395.correct : P5016682220108411395.Spec := by
  intro n
  simp only [A133678]

end A133678

/-!
# A133679: a(n) = 7*a(n-1) + 56*a(n-2) for n>=3, a(0)=1, a(1)=7, a(2)=98.

The programs for A133679, the canonical program `A133679.P1172631531480927691` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133679 has offset 0).

The definition of A133679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+56*a(n-2)` (program `A133679.P1172631531480927691`, by `A133679.P1172631531480927691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133679.P1245858263963999107

`ogf((1-7x^2)/(1-7x-56x^2))`
-/

namespace A133679.P1245858263963999107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -7] [1, -7, -56] n

end

end A133679.P1245858263963999107

namespace A133679

/-- `ogf((1-7x^2)/(1-7x-56x^2))` -/
def P1245858263963999107.Spec : Prop :=
  ∀ n, P1245858263963999107.a n = A133679 n

end A133679

/-! ## A133679.P1172631531480927691

`7*a(n-1)+56*a(n-2)` with `a(0)=1, a(1)=7, a(2)=98`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133679

/-- `7*a(n-1)+56*a(n-2)` -/
def P1172631531480927691.Spec : Prop :=
  ∀ n, (P1172631531480927691.a n : ℤ) = A133679 n

theorem P1172631531480927691.correct : P1172631531480927691.Spec := by
  intro n
  simp only [A133679]

end A133679

/-! ## A133679.P14305139555206832518

`∑{#}[n, A122950(C(n+1, 2)+#)*7^#]`
-/

namespace A133679.P14305139555206832518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A122950 (Nat.choose (n + 1) 2 + k) * (7 ^ k : ℤ)

end

end A133679.P14305139555206832518

namespace A133679

/-- `∑{#}[n, A122950(C(n+1, 2)+#)*7^#]` -/
def P14305139555206832518.Spec : Prop :=
  ∀ n, P14305139555206832518.a n = A133679 n

end A133679

/-!
# A133680: a(n)=8*a(n-1)+72*a(n-2) for n>=3, a(0)=1, a(1)=8, a(2)=128 .

The programs for A133680, the canonical program `A133680.P13355166503982274223` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133680 has offset 0).

The definition of A133680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+72*a(n-2)` (program `A133680.P13355166503982274223`, by `A133680.P13355166503982274223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133680.P5531680699131144682

`ogf((1-8x^2)/(1-8x-72x^2))`
-/

namespace A133680.P5531680699131144682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -8] [1, -8, -72] n

end

end A133680.P5531680699131144682

namespace A133680

/-- `ogf((1-8x^2)/(1-8x-72x^2))` -/
def P5531680699131144682.Spec : Prop :=
  ∀ n, P5531680699131144682.a n = A133680 n

end A133680

/-! ## A133680.P13355166503982274223

`8*a(n-1)+72*a(n-2)` with `a(0)=1, a(1)=8, a(2)=128`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133680

/-- `8*a(n-1)+72*a(n-2)` -/
def P13355166503982274223.Spec : Prop :=
  ∀ n, (P13355166503982274223.a n : ℤ) = A133680 n

theorem P13355166503982274223.correct : P13355166503982274223.Spec := by
  intro n
  simp only [A133680]

end A133680

/-!
# A133681: a(n)=9*a(n-1)+90*a(n-2) for n>=3, a(0)=1, a(1)=9, a(2)=162 .

The programs for A133681, the canonical program `A133681.P2841892009965168895` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133681 has offset 0).

The definition of A133681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+90*a(n-2)` (program `A133681.P2841892009965168895`, by `A133681.P2841892009965168895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133681.P13362486985453860903

`ogf((1-9x^2)/(1-9x-90x^2))`
-/

namespace A133681.P13362486985453860903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -9] [1, -9, -90] n

end

end A133681.P13362486985453860903

namespace A133681

/-- `ogf((1-9x^2)/(1-9x-90x^2))` -/
def P13362486985453860903.Spec : Prop :=
  ∀ n, P13362486985453860903.a n = A133681 n

end A133681

/-! ## A133681.P2841892009965168895

`9*a(n-1)+90*a(n-2)` with `a(0)=1, a(1)=9, a(2)=162`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133681

/-- `9*a(n-1)+90*a(n-2)` -/
def P2841892009965168895.Spec : Prop :=
  ∀ n, (P2841892009965168895.a n : ℤ) = A133681 n

theorem P2841892009965168895.correct : P2841892009965168895.Spec := by
  intro n
  simp only [A133681]

end A133681

/-!
# A133682: Number of regular complex polytopes in n-dimensional unitary complex space.

The programs for A133682, there is no canonical definition to state claims against.
-/

/-! ## A133682.P17943222974790084276

`a(n-1)` with `a(0)=1, a(1)=22, a(2)=8, a(3)=7, a(4)=3`
-/

namespace A133682.P17943222974790084276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 22, 8, 7, 3] fun n a =>
  a (n - 1)

end

end A133682.P17943222974790084276

/-!
# A133683: Linear recurrence a(n) = a(n-3) + 2a(n-5), starting from all-one initial conditions.

The programs for A133683, the canonical program `A133683.P7554710366212328866` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133683 has offset 1).

The definition of A133683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+2*a(n-5)` (program `A133683.P7554710366212328866`, by `A133683.P7554710366212328866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133683.P7554710366212328866

`a(n-3)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133683

/-- `a(n-3)+2*a(n-5)` -/
def P7554710366212328866.Spec : Prop :=
  ∀ n, (P7554710366212328866.a n : ℤ) = A133683 (n + 1)

theorem P7554710366212328866.correct : P7554710366212328866.Spec := by
  intro n
  simp only [A133683, Nat.add_sub_cancel]

end A133683

/-! ## A133683.P9075282305525804584

`ogf((1+x+x^2)/(1-x^3-2x^5))`
-/

namespace A133683.P9075282305525804584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 0, 0, -1, 0, -2] n

end

end A133683.P9075282305525804584

namespace A133683

/-- `ogf((1+x+x^2)/(1-x^3-2x^5))` -/
def P9075282305525804584.Spec : Prop :=
  ∀ n, P9075282305525804584.a n = A133683 (n + 1)

end A133683

/-! ## A133683.P6420102356373186182

`a(n-3)+a(n-5)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A133683.P6420102356373186182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 5) + a (n - 5))

end

end A133683.P6420102356373186182

namespace A133683

/-- `a(n-3)+a(n-5)+a(n-5)` -/
def P6420102356373186182.Spec : Prop :=
  ∀ n, (P6420102356373186182.a n : ℤ) = A133683 (n + 1)

theorem P6420102356373186182.correct : P6420102356373186182.Spec := by
  intro n
  simp only [A133683, Nat.add_sub_cancel, A133683.P6420102356373186182.a, A133683.P7554710366212328866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133683

/-!
# A133684: a(2n) = A001045(n); a(1)=1; a(2n+1) = 2*A001045(n-1) for n >= 1.

The programs for A133684, the canonical program `A133684.P15309708026615829844` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133684 has offset 0).

The definition of A133684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133684.P15309708026615829844

`ogf((x+x^2-x^3)/(1-x^2-2x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133684

/-- `ogf((x+x^2-x^3)/(1-x^2-2x^4))` -/
def P15309708026615829844.Spec : Prop :=
  ∀ n, P15309708026615829844.a n = A133684 n

theorem P15309708026615829844.correct : P15309708026615829844.Spec := by
  intro n
  simp only [A133684]

end A133684

/-! ## A133684.P994627621808473940

`a(n-2)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A133684.P994627621808473940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 2) + 2 * a (n - 4)

end

end A133684.P994627621808473940

namespace A133684

/-- `a(n-2)+2*a(n-4)` -/
def P994627621808473940.Spec : Prop :=
  ∀ n, (P994627621808473940.a n : ℤ) = A133684 n

end A133684

/-! ## A133684.P17327707550094017862

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A133684.P17327707550094017862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A133684.P17327707550094017862

namespace A133684

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P17327707550094017862.Spec : Prop :=
  ∀ n, (P17327707550094017862.a n : ℤ) = A133684 n

end A133684

/-! ## A133684.P3290075678521113362

`∑[A133730(abs(1-n))]`
-/

namespace A133684.P3290075678521113362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133684.P3290075678521113362

namespace A133684

/-- `∑[A133730(abs(1-n))]` -/
def P3290075678521113362.Spec : Prop :=
  ∀ n, P3290075678521113362.a n = A133684 n

end A133684

/-! ## A133684.P7351438486852971199

`A158780(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A133684.P7351438486852971199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A158780 n - a (n - 2)

end

end A133684.P7351438486852971199

namespace A133684

/-- `A158780(n)-a(n-2)` -/
def P7351438486852971199.Spec : Prop :=
  ∀ n, P7351438486852971199.a n = A133684 n

end A133684

/-! ## A133684.P18124146269784819984

`A133730(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A133684.P18124146269784819984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A133730 (n - 1) + a (n - 1)

end

end A133684.P18124146269784819984

namespace A133684

/-- `A133730(n-1)+a(n-1)` -/
def P18124146269784819984.Spec : Prop :=
  ∀ n, P18124146269784819984.a n = A133684 n

end A133684

/-! ## A133684.P11515170211394232766

`A016116(n-2)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A133684.P11515170211394232766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A016116 (n - 2) - a (n - 2)

end

end A133684.P11515170211394232766

namespace A133684

/-- `A016116(n-2)-a(n-2)` -/
def P11515170211394232766.Spec : Prop :=
  ∀ n, P11515170211394232766.a n = A133684 n

end A133684

/-! ## A133684.P17303868746442494355

`∑[A133730(n)]-A133730(n)`
-/

namespace A133684.P17303868746442494355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133730 n

end

end A133684.P17303868746442494355

namespace A133684

/-- `∑[A133730(n)]-A133730(n)` -/
def P17303868746442494355.Spec : Prop :=
  ∀ n, P17303868746442494355.a n = A133684 n

end A133684

/-! ## A133684.P5754987449086625103

`abs((1-A077980(n))/2)`
-/

namespace A133684.P5754987449086625103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(1 - A077980 n : ℚ) / 2|

end

end A133684.P5754987449086625103

namespace A133684

/-- `abs((1-A077980(n))/2)` -/
def P5754987449086625103.Spec : Prop :=
  ∀ n, P5754987449086625103.a n = (A133684 n : ℚ)

end A133684

/-! ## A133684.P3869335512903558006

`A135318(n)-A230096(n)`
-/

namespace A133684.P3869335512903558006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n - A230096 n

end

end A133684.P3869335512903558006

namespace A133684

/-- `A135318(n)-A230096(n)` -/
def P3869335512903558006.Spec : Prop :=
  ∀ n, P3869335512903558006.a n = A133684 n

end A133684

/-! ## A133684.P3458363837315290946

`Δ[A135318(n)]-A056594(n+1)`
-/

namespace A133684.P3458363837315290946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056594 (n + 1)

end

end A133684.P3458363837315290946

namespace A133684

/-- `Δ[A135318(n)]-A056594(n+1)` -/
def P3458363837315290946.Spec : Prop :=
  ∀ n, P3458363837315290946.a n = A133684 n

end A133684

/-! ## A133684.P4558762128994949933

`Δ[A135318(n)-A056594(n)]-A056594(n)`
-/

namespace A133684.P4558762128994949933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056594 n

end

end A133684.P4558762128994949933

namespace A133684

/-- `Δ[A135318(n)-A056594(n)]-A056594(n)` -/
def P4558762128994949933.Spec : Prop :=
  ∀ n, P4558762128994949933.a n = A133684 n

end A133684

/-! ## A133684.P15201150872494576189

`A135318(n+1)-(A135318(n)+A056594(n+1))`
-/

namespace A133684.P15201150872494576189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) - (A135318 n + A056594 (n + 1))

end

end A133684.P15201150872494576189

namespace A133684

/-- `A135318(n+1)-(A135318(n)+A056594(n+1))` -/
def P15201150872494576189.Spec : Prop :=
  ∀ n, P15201150872494576189.a n = A133684 n

end A133684

/-! ## A133684.P17411671167254798215

`A356050(n)-(A230096(n+1)+A230096(n))`
-/

namespace A133684.P17411671167254798215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 n - (A230096 (n + 1) + A230096 n)

end

end A133684.P17411671167254798215

namespace A133684

/-- `A356050(n)-(A230096(n+1)+A230096(n))` -/
def P17411671167254798215.Spec : Prop :=
  ∀ n, P17411671167254798215.a n = A133684 n

end A133684

/-! ## A133684.P8909077561587581597

`A336398(n+2)+A090597(n+4)-A018240(n+4)`
-/

namespace A133684.P8909077561587581597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336398 (n + 2) + (A090597 (n + 4) - A018240 (n + 4))

end

end A133684.P8909077561587581597

namespace A133684

/-- `A336398(n+2)+A090597(n+4)-A018240(n+4)` -/
def P8909077561587581597.Spec : Prop :=
  ∀ n, P8909077561587581597.a n = A133684 n

end A133684

/-! ## A133684.P9356135595215356185

`A399336(A007590(n+1))`
-/

namespace A133684.P9356135595215356185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399336 (A007590 (n + 1)).toNat

end

end A133684.P9356135595215356185

namespace A133684

/-- `A399336(A007590(n+1))` -/
def P9356135595215356185.Spec : Prop :=
  ∀ n, P9356135595215356185.a n = A133684 n

end A133684

/-!
# A133685: Let p = prime(n); then a(n) = (sum of prime factors of p+1) - (sum of prime factors of p-1). a(1) = 2 by convention.

The programs for A133685, the canonical program `A133685.P12239145801004581258` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133685 has offset 1).

The definition of A133685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133685.P10638711414879381688

`2*A210934(n+1)-A133578(n+1)`
-/

namespace A133685.P10638711414879381688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210934 (n + 1) - A133578 (n + 1)

end

end A133685.P10638711414879381688

namespace A133685

/-- `2*A210934(n+1)-A133578(n+1)` -/
def P10638711414879381688.Spec : Prop :=
  ∀ n, P10638711414879381688.a n = A133685 (n + 1)

theorem P10638711414879381688.correct : P10638711414879381688.Spec := by
  intro n
  simp only [A133685, Nat.add_sub_cancel, A133685.P10638711414879381688.a, A133685.P12239145801004581258.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A130290, A130290.P12006832031725450867.a, A130291, A130291.P14568566917462971400.a, A133578, A133578.P2891795595979798693.a, A210934, A210934.P6617217077888488102.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133685

/-! ## A133685.P1289806183648894733

`A004277(A210934(n+1))-A133578(n+1)`
-/

namespace A133685.P1289806183648894733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210934 (n + 1)).toNat - A133578 (n + 1)

end

end A133685.P1289806183648894733

namespace A133685

/-- `A004277(A210934(n+1))-A133578(n+1)` -/
def P1289806183648894733.Spec : Prop :=
  ∀ n, P1289806183648894733.a n = A133685 (n + 1)

end A133685

/-! ## A133685.P16202395114344266519

`A210934(n+1)-A028310(A210936(n+1))`
-/

namespace A133685.P16202395114344266519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (n + 1) - A028310 (A210936 (n + 1)).toNat

end

end A133685.P16202395114344266519

namespace A133685

/-- `A210934(n+1)-A028310(A210936(n+1))` -/
def P16202395114344266519.Spec : Prop :=
  ∀ n, P16202395114344266519.a n = A133685 (n + 1)

end A133685

/-! ## A133685.P14624190023765449480

`A210934(n+1)-(A210936(n+1)+A000007(n))`
-/

namespace A133685.P14624190023765449480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (n + 1) - (A210936 (n + 1) + A000007 n)

end

end A133685.P14624190023765449480

namespace A133685

/-- `A210934(n+1)-(A210936(n+1)+A000007(n))` -/
def P14624190023765449480.Spec : Prop :=
  ∀ n, P14624190023765449480.a n = A133685 (n + 1)

end A133685

/-! ## A133685.P10824463309117222522

`2*A001414(A000040(n+1)+1)-A133578(n+1)`
-/

namespace A133685.P10824463309117222522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001414 (A000040 (n + 1) + 1).toNat - A133578 (n + 1)

end

end A133685.P10824463309117222522

namespace A133685

/-- `2*A001414(A000040(n+1)+1)-A133578(n+1)` -/
def P10824463309117222522.Spec : Prop :=
  ∀ n, P10824463309117222522.a n = A133685 (n + 1)

theorem P10824463309117222522.correct : P10824463309117222522.Spec := by
  intro n
  simp only [A133685, Nat.add_sub_cancel, A133685.P10824463309117222522.a, A133685.P12239145801004581258.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A130290, A130290.P12006832031725450867.a, A130291, A130291.P14568566917462971400.a, A133578, A133578.P2891795595979798693.a, A210934, A210934.P6617217077888488102.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133685

/-! ## A133685.P12239145801004581258

`A001414(A130291(n+1))-A001414(A130290(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133685

/-- `A001414(A130291(n+1))-A001414(A130290(n+1))` -/
def P12239145801004581258.Spec : Prop :=
  ∀ n, P12239145801004581258.a n = A133685 (n + 1)

theorem P12239145801004581258.correct : P12239145801004581258.Spec := by
  intro n
  simp only [A133685, Nat.add_sub_cancel]

end A133685

/-!
# A133686: Number of labeled n-node graphs with at most one cycle in each connected component.

The programs for A133686, there is no canonical definition to state claims against.
-/

/-! ## A133686.P3667117617326768848

`∑{#}[n, A144228(C(n+1, 2)+#)]`
-/

namespace A133686.P3667117617326768848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A144228 (Nat.choose (n + 1) 2 + k)

end

end A133686.P3667117617326768848

/-! ## A133686.P9553758231147537191

`A006125(n)-A367867(n)`
-/

namespace A133686.P9553758231147537191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A367867 n

end

end A133686.P9553758231147537191

/-! ## A133686.P14983552978043023137

`∏[A011782(n)]-A367867(n)`
-/

namespace A133686.P14983552978043023137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A367867 n

end

end A133686.P14983552978043023137

/-! ## A133686.P12355414182897441447

`A000079(C(n, 2))-A367867(n)`
-/

namespace A133686.P12355414182897441447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.choose n 2) - A367867 n

end

end A133686.P12355414182897441447

/-! ## A133686.P9358851482745950793

`A000079(A161680(n))-A367867(n)`
-/

namespace A133686.P9358851482745950793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A161680 n).toNat - A367867 n

end

end A133686.P9358851482745950793

/-!
# A133687: Triangle with number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to k (0<=k<=n), where equivalence is defined by row and column permutations.

The programs for A133687, there is no canonical definition to state claims against.
-/

/-! ## A133687.P11735338170779913614

`A004277(A008327(n))-A333159(n)`
-/

namespace A133687.P11735338170779913614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008327 n).toNat - A333159 n

end

end A133687.P11735338170779913614

/-! ## A133687.P1756794588599324133

`A057498(A008327(n))+A008327(n)`
-/

namespace A133687.P1756794588599324133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057498 (A008327 n).toNat + A008327 n

end

end A133687.P1756794588599324133

/-! ## A133687.P10138099422921654213

`A126043(2^A119335(n))+A008327(n)`
-/

namespace A133687.P10138099422921654213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A119335 n : ℤ))).toNat + A008327 n

end

end A133687.P10138099422921654213

/-! ## A133687.P3457378412736021770

`A031286(A119335(n)²²)+A008327(n)`
-/

namespace A133687.P3457378412736021770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 ((A119335 n ^ 2) ^ 2).toNat + A008327 n

end

end A133687.P3457378412736021770

/-! ## A133687.P15255350534271446387

`A320340(A008327(n)^A322494(n+4))`
-/

namespace A133687.P15255350534271446387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (SequenceMachineLib.roundAway ((A008327 n : ℚ) ^ (A322494 (n + 4) : ℤ))).toNat

end

end A133687.P15255350534271446387

/-!
# A133689: a(n) = smallest integer that is > n and is a multiple of every proper divisor of n.

The programs for A133689, the canonical program `A133689.P964104427748120378` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133689 has offset 2).

The definition of A133689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133689.P964104427748120378

`gcd(n+2, A158851(n+1))+n+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133689

/-- `gcd(n+2, A158851(n+1))+n+2` -/
def P964104427748120378.Spec : Prop :=
  ∀ n, (P964104427748120378.a n : ℤ) = A133689 (n + 2)

theorem P964104427748120378.correct : P964104427748120378.Spec := by
  intro n
  simp only [A133689, Nat.add_sub_cancel]

end A133689

/-! ## A133689.P4360344955183653487

`A048671(n+2)+2+n`
-/

namespace A133689.P4360344955183653487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 2) + 2 + (n : ℤ)

end

end A133689.P4360344955183653487

namespace A133689

/-- `A048671(n+2)+2+n` -/
def P4360344955183653487.Spec : Prop :=
  ∀ n, P4360344955183653487.a n = A133689 (n + 2)

end A133689

/-! ## A133689.P13470045740687016528

`(1/A014963(n+2)+1)*(n+2)`
-/

namespace A133689.P13470045740687016528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (A014963 (n + 2) : ℚ) + 1) * (n + 2 : ℚ)

end

end A133689.P13470045740687016528

namespace A133689

/-- `(1/A014963(n+2)+1)*(n+2)` -/
def P13470045740687016528.Spec : Prop :=
  ∀ n, P13470045740687016528.a n = (A133689 (n + 2) : ℚ)

end A133689

/-! ## A133689.P7346825276595965994

`(n+2)/A020500(n+2)+n+2`
-/

namespace A133689.P7346825276595965994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020500 (n + 2) : ℚ) + (n + 2 : ℚ)

end

end A133689.P7346825276595965994

namespace A133689

/-- `(n+2)/A020500(n+2)+n+2` -/
def P7346825276595965994.Spec : Prop :=
  ∀ n, P7346825276595965994.a n = (A133689 (n + 2) : ℚ)

end A133689

/-! ## A133689.P8532454722319160144

`A140651(n+2)/(n+2)+n+2`
-/

namespace A133689.P8532454722319160144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140651 (n + 2) : ℚ) / (n + 2 : ℚ) + (n + 2 : ℚ)

end

end A133689.P8532454722319160144

namespace A133689

/-- `A140651(n+2)/(n+2)+n+2` -/
def P8532454722319160144.Spec : Prop :=
  ∀ n, P8532454722319160144.a n = (A133689 (n + 2) : ℚ)

end A133689

/-! ## A133689.P11754425583522361272

`(n+2)/A014963(4/2+n)+n+2`
-/

namespace A133689.P11754425583522361272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A014963 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat : ℚ) + (n + 2 : ℚ)

end

end A133689.P11754425583522361272

namespace A133689

/-- `(n+2)/A014963(4/2+n)+n+2` -/
def P11754425583522361272.Spec : Prop :=
  ∀ n, P11754425583522361272.a n = (A133689 (n + 2) : ℚ)

end A133689

/-! ## A133689.P906916019268476833

`n+2+gcd(n+2, A003418(n+1))`
-/

namespace A133689.P906916019268476833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + Int.gcd (n + 2 : ℤ) (A003418 (n + 1))

end

end A133689.P906916019268476833

namespace A133689

/-- `n+2+gcd(n+2, A003418(n+1))` -/
def P906916019268476833.Spec : Prop :=
  ∀ n, (P906916019268476833.a n : ℤ) = A133689 (n + 2)

end A133689

/-! ## A133689.P822824168154187291

`A063655(A140651(n+2))`
-/

namespace A133689.P822824168154187291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A140651 (n + 2)).toNat

end

end A133689.P822824168154187291

namespace A133689

/-- `A063655(A140651(n+2))` -/
def P822824168154187291.Spec : Prop :=
  ∀ n, P822824168154187291.a n = A133689 (n + 2)

end A133689

/-! ## A133689.P5224432323959178841

`A063655(A048671((n+2)²))`
-/

namespace A133689.P5224432323959178841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A048671 ((n + 2) ^ 2)).toNat

end

end A133689.P5224432323959178841

namespace A133689

/-- `A063655(A048671((n+2)²))` -/
def P5224432323959178841.Spec : Prop :=
  ∀ n, P5224432323959178841.a n = A133689 (n + 2)

end A133689

/-! ## A133689.P7808858282313248949

`ratio[A025527(n+1)]+2+n`
-/

namespace A133689.P7808858282313248949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + 2 + (n : ℚ)

end

end A133689.P7808858282313248949

namespace A133689

/-- `ratio[A025527(n+1)]+2+n` -/
def P7808858282313248949.Spec : Prop :=
  ∀ n, P7808858282313248949.a n = (A133689 (n + 2) : ℚ)

end A133689

/-!
# A133690: Expansion of (phi(-q) * phi(q^2))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A133690, there is no canonical definition to state claims against.
-/

/-! ## A133690.P13978838354690546083

`(-1)^n*A097057(n)`
-/

namespace A133690.P13978838354690546083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097057 n

end

end A133690.P13978838354690546083

/-! ## A133690.P12604759017540669286

`A097057(n)/A033999(n)`
-/

namespace A133690.P12604759017540669286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097057 n : ℚ) / (A033999 n : ℚ)

end

end A133690.P12604759017540669286

/-! ## A133690.P12403427679461945608

`A096727(n)/A068073(n)`
-/

namespace A133690.P12403427679461945608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096727 n : ℚ) / (A068073 n : ℚ)

end

end A133690.P12403427679461945608

/-! ## A133690.P13120430914399686547

`A097057(n)*A111973(n+1)/A133691(n+1)`
-/

namespace A133690.P13120430914399686547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097057 n * A111973 (n + 1) : ℚ) / (A133691 (n + 1) : ℚ)

end

end A133690.P13120430914399686547

/-! ## A133690.P879833697341761354

`A097057(n)*A176484(A006519(A006519(n+1)+1))`
-/

namespace A133690.P879833697341761354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 n * A176484 (A006519 (A006519 (n + 1) + 1).toNat).toNat

end

end A133690.P879833697341761354

/-! ## A133690.P13580093747404067041

`A097057(n)/A054354(A054353(n+1))`
-/

namespace A133690.P13580093747404067041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097057 n : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A133690.P13580093747404067041

/-! ## A133690.P1708001886243049010

`2*A236924(2*n)-A236923(2*n)`
-/

namespace A133690.P1708001886243049010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236924 (2 * n) - A236923 (2 * n)

end

end A133690.P1708001886243049010

/-! ## A133690.P13177990673310712233

`A056594(2*n)*A236924(2*n)`
-/

namespace A133690.P13177990673310712233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A236924 (2 * n)

end

end A133690.P13177990673310712233

/-! ## A133690.P8181752400630844079

`A057077(2*n)*A236924(2*n)`
-/

namespace A133690.P8181752400630844079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A236924 (2 * n)

end

end A133690.P8181752400630844079

/-! ## A133690.P17502133202297164489

`(2-A084101(2*n))*A236924(2*n)`
-/

namespace A133690.P17502133202297164489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A084101 (2 * n)) * A236924 (2 * n)

end

end A133690.P17502133202297164489

/-! ## A133690.P14685499950849979599

`A097057(n)/A010892(3*n)`
-/

namespace A133690.P14685499950849979599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097057 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A133690.P14685499950849979599

/-! ## A133690.P10987093621595968173

`A097057(2*n)+A236923(2*n)-A097057(4*n)`
-/

namespace A133690.P10987093621595968173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (2 * n) + (A236923 (2 * n) - A097057 (4 * n))

end

end A133690.P10987093621595968173

/-! ## A133690.P9117580584702939467

`A236923(2*n)+A236923(4*n)-A000118(2*n)`
-/

namespace A133690.P9117580584702939467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236923 (2 * n) + (A236923 (4 * n) - A000118 (2 * n))

end

end A133690.P9117580584702939467

/-! ## A133690.P8760969948418599342

`A236923(4*n)-(A000118(4*n)-A236923(2*n))`
-/

namespace A133690.P8760969948418599342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236923 (4 * n) - (A000118 (4 * n) - A236923 (2 * n))

end

end A133690.P8760969948418599342

/-! ## A133690.P5847392813359803838

`(A207541(2*n)+A207541(4*n))/2`
-/

namespace A133690.P5847392813359803838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207541 (2 * n) + A207541 (4 * n) : ℚ) / 2

end

end A133690.P5847392813359803838

/-! ## A133690.P11023907882995276729

`(A208451(2*n)+A208451(4*n))/2`
-/

namespace A133690.P11023907882995276729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208451 (2 * n) + A208451 (4 * n) : ℚ) / 2

end

end A133690.P11023907882995276729

/-! ## A133690.P11181351887300934240

`∑{#}[n, A133692(#)*A133692(n-#)]`
-/

namespace A133690.P11181351887300934240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A133692 k * A133692 (n - k)

end

end A133690.P11181351887300934240

/-! ## A133690.P5861543110204311935

`A097057(n)*A176484(A006519(n²+2))`
-/

namespace A133690.P5861543110204311935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 n * A176484 (A006519 (n ^ 2 + 2)).toNat

end

end A133690.P5861543110204311935

/-!
# A133691: Expansion of (1 - (phi(-q) * phi(q^2))^2) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A133691, the canonical program `A133691.P968811018023020680` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133691 has offset 1).

The definition of A133691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133691.P13871820332859751048

`(-1)^n*A111973(n+1)`
-/

namespace A133691.P13871820332859751048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111973 (n + 1)

end

end A133691.P13871820332859751048

namespace A133691

/-- `(-1)^n*A111973(n+1)` -/
def P13871820332859751048.Spec : Prop :=
  ∀ n, P13871820332859751048.a n = A133691 (n + 1)

end A133691

/-! ## A133691.P10594923638034966685

`A185152(n+1)/A186111(n+1)`
-/

namespace A133691.P10594923638034966685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (A186111 (n + 1) : ℚ)

end

end A133691.P10594923638034966685

namespace A133691

/-- `A185152(n+1)/A186111(n+1)` -/
def P10594923638034966685.Spec : Prop :=
  ∀ n, P10594923638034966685.a n = (A133691 (n + 1) : ℚ)

end A133691

/-! ## A133691.P8657563179139785003

`∑{d}[n+1, A019590(#)*A109506((n+1)/#)]`
-/

namespace A133691.P8657563179139785003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A109506 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133691.P8657563179139785003

namespace A133691

/-- `∑{d}[n+1, A019590(#)*A109506((n+1)/#)]` -/
def P8657563179139785003.Spec : Prop :=
  ∀ n, P8657563179139785003.a n = A133691 (n + 1)

end A133691

/-! ## A133691.P968811018023020680

`∑{d}[n+1, A069517(#)*A121455((n+1)/#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133691

/-- `∑{d}[n+1, A069517(#)*A121455((n+1)/#)]` -/
def P968811018023020680.Spec : Prop :=
  ∀ n, P968811018023020680.a n = A133691 (n + 1)

theorem P968811018023020680.correct : P968811018023020680.Spec := by
  intro n
  simp only [A133691, Nat.add_sub_cancel]

end A133691

/-! ## A133691.P7923909609635253681

`A111973(n+1)/A097057(n)*A133690(n)`
-/

namespace A133691.P7923909609635253681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111973 (n + 1) : ℚ) / (A097057 n : ℚ) * (A133690 n : ℚ)

end

end A133691.P7923909609635253681

namespace A133691

/-- `A111973(n+1)/A097057(n)*A133690(n)` -/
def P7923909609635253681.Spec : Prop :=
  ∀ n, P7923909609635253681.a n = (A133691 (n + 1) : ℚ)

end A133691

/-! ## A133691.P18137639958707348987

`1-(A133690(n+1)+4)/4`
-/

namespace A133691.P18137639958707348987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A133690 (n + 1) + 4 : ℚ) / 4

end

end A133691.P18137639958707348987

namespace A133691

/-- `1-(A133690(n+1)+4)/4` -/
def P18137639958707348987.Spec : Prop :=
  ∀ n, P18137639958707348987.a n = (A133691 (n + 1) : ℚ)

end A133691

/-! ## A133691.P10658957223955274949

`A133690(n+1)/A133690(gcd(n, n+1))`
-/

namespace A133691.P10658957223955274949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133690 (n + 1) : ℚ) / (A133690 (Nat.gcd n (n + 1)) : ℚ)

end

end A133691.P10658957223955274949

namespace A133691

/-- `A133690(n+1)/A133690(gcd(n, n+1))` -/
def P10658957223955274949.Spec : Prop :=
  ∀ n, P10658957223955274949.a n = (A133691 (n + 1) : ℚ)

end A133691

/-! ## A133691.P16086398825596773117

`A046897(2*n+1)/A133690(2*n+1)*A133690(n+1)`
-/

namespace A133691.P16086398825596773117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (2 * n + 1) : ℚ) / (A133690 (2 * n + 1) : ℚ) * (A133690 (n + 1) : ℚ)

end

end A133691.P16086398825596773117

namespace A133691

/-- `A046897(2*n+1)/A133690(2*n+1)*A133690(n+1)` -/
def P16086398825596773117.Spec : Prop :=
  ∀ n, P16086398825596773117.a n = (A133691 (n + 1) : ℚ)

end A133691

/-! ## A133691.P3883188355746569742

`A111973(2*n+1)/A133690(2*n+1)*A133690(n+1)`
-/

namespace A133691.P3883188355746569742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111973 (2 * n + 1) : ℚ) / (A133690 (2 * n + 1) : ℚ) * (A133690 (n + 1) : ℚ)

end

end A133691.P3883188355746569742

namespace A133691

/-- `A111973(2*n+1)/A133690(2*n+1)*A133690(n+1)` -/
def P3883188355746569742.Spec : Prop :=
  ∀ n, P3883188355746569742.a n = (A133691 (n + 1) : ℚ)

end A133691

/-! ## A133691.P17975530318795641418

`A133657(2*n+1)/A133690(2*n+1)*A133690(n+1)`
-/

namespace A133691.P17975530318795641418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133657 (2 * n + 1) : ℚ) / (A133690 (2 * n + 1) : ℚ) * (A133690 (n + 1) : ℚ)

end

end A133691.P17975530318795641418

namespace A133691

/-- `A133657(2*n+1)/A133690(2*n+1)*A133690(n+1)` -/
def P17975530318795641418.Spec : Prop :=
  ∀ n, P17975530318795641418.a n = (A133691 (n + 1) : ℚ)

end A133691

/-!
# A133692: Expansion of phi(-q) * phi(q^2) in powers of q where phi() is a Ramanujan theta function.

The programs for A133692, the canonical program `A133692.P5277635132651936169` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133692 has offset 0).

The definition of A133692 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033715, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133692.P5277635132651936169

`(-1)^n*A033715(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A133692

/-- `(-1)^n*A033715(n)` -/
def P5277635132651936169.Spec : Prop :=
  ∀ n, P5277635132651936169.a n = A133692 n

theorem P5277635132651936169.correct : P5277635132651936169.Spec := by
  intro n
  simp only [A133692]

end A133692

/-! ## A133692.P793085107678337455

`abs(A082564(n))*(-1)^n`
-/

namespace A133692.P793085107678337455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082564 n| * (-1) ^ n

end

end A133692.P793085107678337455

namespace A133692

/-- `abs(A082564(n))*(-1)^n` -/
def P793085107678337455.Spec : Prop :=
  ∀ n, P793085107678337455.a n = A133692 n

end A133692

/-! ## A133692.P15650719636406904099

`A033715(n)*A033999(n)`
-/

namespace A133692.P15650719636406904099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A033999 n

end

end A133692.P15650719636406904099

namespace A133692

/-- `A033715(n)*A033999(n)` -/
def P15650719636406904099.Spec : Prop :=
  ∀ n, P15650719636406904099.a n = A133692 n

theorem P15650719636406904099.correct : P15650719636406904099.Spec := by
  intro n
  simp only [A133692, Nat.add_sub_cancel, A133692.P15650719636406904099.a, A133692.P5277635132651936169.a, A033715, A033715.P6517919621530533375.a, A033999, A033999.P17703899380244199787.a, A028572, A028572.P14327433802400248636.a, A129438, A129438.P16505802994344033545.a, A130731, A130731.P2200076964011723733.a, A028310, A028310.P18130301328277559831.a, A125096, A125096.P3255662404427325146.f1, A125096.P3255662404427325146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133692

/-! ## A133692.P2163991844730270514

`A057077(n)*A082564(n)`
-/

namespace A133692.P2163991844730270514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A082564 n

end

end A133692.P2163991844730270514

namespace A133692

/-- `A057077(n)*A082564(n)` -/
def P2163991844730270514.Spec : Prop :=
  ∀ n, P2163991844730270514.a n = A133692 n

end A133692

/-! ## A133692.P7966978621230303002

`A087960(n)*A139093(n)`
-/

namespace A133692.P7966978621230303002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A139093 n

end

end A133692.P7966978621230303002

namespace A133692

/-- `A087960(n)*A139093(n)` -/
def P7966978621230303002.Spec : Prop :=
  ∀ n, P7966978621230303002.a n = A133692 n

end A133692

/-! ## A133692.P18366341266318405169

`A033715(n)/∑[A280560(n)]`
-/

namespace A133692.P18366341266318405169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A133692.P18366341266318405169

namespace A133692

/-- `A033715(n)/∑[A280560(n)]` -/
def P18366341266318405169.Spec : Prop :=
  ∀ n, P18366341266318405169.a n = (A133692 n : ℚ)

end A133692

/-! ## A133692.P13071552392376418710

`A033715(n)/A033999(A222246(n))`
-/

namespace A133692.P13071552392376418710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 n : ℚ) / (A033999 (A222246 n).toNat : ℚ)

end

end A133692.P13071552392376418710

namespace A133692

/-- `A033715(n)/A033999(A222246(n))` -/
def P13071552392376418710.Spec : Prop :=
  ∀ n, P13071552392376418710.a n = (A133692 n : ℚ)

end A133692

/-! ## A133692.P8565032893938733666

`A057077(n+1)*A139093(n)`
-/

namespace A133692.P8565032893938733666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A139093 n

end

end A133692.P8565032893938733666

namespace A133692

/-- `A057077(n+1)*A139093(n)` -/
def P8565032893938733666.Spec : Prop :=
  ∀ n, P8565032893938733666.a n = A133692 n

end A133692

/-! ## A133692.P2647783841819220916

`A082564(A266491(n))`
-/

namespace A133692.P2647783841819220916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (A266491 n).toNat

end

end A133692.P2647783841819220916

namespace A133692

/-- `A082564(A266491(n))` -/
def P2647783841819220916.Spec : Prop :=
  ∀ n, P2647783841819220916.a n = A133692 n

end A133692

/-! ## A133692.P8134466659712263198

`A082564(n*(2-A133872(n)))`
-/

namespace A133692.P8134466659712263198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 ((n : ℤ) * (2 - A133872 n)).toNat

end

end A133692.P8134466659712263198

namespace A133692

/-- `A082564(n*(2-A133872(n)))` -/
def P8134466659712263198.Spec : Prop :=
  ∀ n, P8134466659712263198.a n = A133692 n

end A133692

/-! ## A133692.P17598862700211144087

`A139093(2*n)`
-/

namespace A133692.P17598862700211144087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 (2 * n)

end

end A133692.P17598862700211144087

namespace A133692

/-- `A139093(2*n)` -/
def P17598862700211144087.Spec : Prop :=
  ∀ n, P17598862700211144087.a n = A133692 n

end A133692

/-! ## A133692.P4356907914932203661

`xor(1, xor(1, A139093(n+n)))`
-/

namespace A133692.P4356907914932203661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A139093 (n + n)))

end

end A133692.P4356907914932203661

namespace A133692

/-- `xor(1, xor(1, A139093(n+n)))` -/
def P4356907914932203661.Spec : Prop :=
  ∀ n, P4356907914932203661.a n = A133692 n

end A133692

/-! ## A133692.P1789841169904343095

`2*A226225(2*n)-A033715(n)`
-/

namespace A133692.P1789841169904343095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226225 (2 * n) - A033715 n

end

end A133692.P1789841169904343095

namespace A133692

/-- `2*A226225(2*n)-A033715(n)` -/
def P1789841169904343095.Spec : Prop :=
  ∀ n, P1789841169904343095.a n = A133692 n

end A133692

/-! ## A133692.P1875296962453617181

`A082564(2*n)`
-/

namespace A133692.P1875296962453617181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (2 * n)

end

end A133692.P1875296962453617181

namespace A133692

/-- `A082564(2*n)` -/
def P1875296962453617181.Spec : Prop :=
  ∀ n, P1875296962453617181.a n = A133692 n

end A133692

/-! ## A133692.P17187594514062714441

`A033715(n)*A057077(2*n)`
-/

namespace A133692.P17187594514062714441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A057077 (2 * n)

end

end A133692.P17187594514062714441

namespace A133692

/-- `A033715(n)*A057077(2*n)` -/
def P17187594514062714441.Spec : Prop :=
  ∀ n, P17187594514062714441.a n = A133692 n

end A133692

/-! ## A133692.P13046627585948003466

`A033715(n)*A087960(2*n)`
-/

namespace A133692.P13046627585948003466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A087960 (2 * n)

end

end A133692.P13046627585948003466

namespace A133692

/-- `A033715(n)*A087960(2*n)` -/
def P13046627585948003466.Spec : Prop :=
  ∀ n, P13046627585948003466.a n = A133692 n

end A133692

/-! ## A133692.P837288383850356434

`2*A028572(2*n)-A033715(n)`
-/

namespace A133692.P837288383850356434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028572 (2 * n) - A033715 n

end

end A133692.P837288383850356434

namespace A133692

/-- `2*A028572(2*n)-A033715(n)` -/
def P837288383850356434.Spec : Prop :=
  ∀ n, P837288383850356434.a n = A133692 n

end A133692

/-! ## A133692.P10018273309570867167

`2*A129438(2*n)-A033715(n)`
-/

namespace A133692.P10018273309570867167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129438 (2 * n) - A033715 n

end

end A133692.P10018273309570867167

namespace A133692

/-- `2*A129438(2*n)-A033715(n)` -/
def P10018273309570867167.Spec : Prop :=
  ∀ n, P10018273309570867167.a n = A133692 n

end A133692

/-! ## A133692.P15284237522565046326

`(A245572(2*n)-A033715(n))/2`
-/

namespace A133692.P15284237522565046326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245572 (2 * n) - A033715 n : ℚ) / 2

end

end A133692.P15284237522565046326

namespace A133692

/-- `(A245572(2*n)-A033715(n))/2` -/
def P15284237522565046326.Spec : Prop :=
  ∀ n, P15284237522565046326.a n = (A133692 n : ℚ)

end A133692

/-! ## A133692.P8558547386911424430

`A209615(2*n+1)*A226225(4*n)`
-/

namespace A133692.P8558547386911424430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) * A226225 (4 * n)

end

end A133692.P8558547386911424430

namespace A133692

/-- `A209615(2*n+1)*A226225(4*n)` -/
def P8558547386911424430.Spec : Prop :=
  ∀ n, P8558547386911424430.a n = A133692 n

end A133692

/-!
# A133693: Expansion of (1 - phi(-q) * phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A133693, the canonical program `A133693.P6160581750214965149` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133693 has offset 1).

The definition of A133693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133693.P6160581750214965149

`(-1)^n*A002325(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A133693

/-- `(-1)^n*A002325(n+1)` -/
def P6160581750214965149.Spec : Prop :=
  ∀ n, P6160581750214965149.a n = A133693 (n + 1)

theorem P6160581750214965149.correct : P6160581750214965149.Spec := by
  intro n
  simp only [A133693, Nat.add_sub_cancel]

end A133693

/-! ## A133693.P2746213663212136566

`A002325(n+1)*A033999(n)`
-/

namespace A133693.P2746213663212136566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) * A033999 n

end

end A133693.P2746213663212136566

namespace A133693

/-- `A002325(n+1)*A033999(n)` -/
def P2746213663212136566.Spec : Prop :=
  ∀ n, P2746213663212136566.a n = A133693 (n + 1)

theorem P2746213663212136566.correct : P2746213663212136566.Spec := by
  intro n
  simp only [A133693, Nat.add_sub_cancel, A133693.P2746213663212136566.a, A133693.P6160581750214965149.a, A002325, A002325.P14825616568919519912.a, A033999, A033999.P17703899380244199787.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A188171, A188171.P17289095504074848112.a, A188172, A188172.P3980200347470981964.f1, A188172.P3980200347470981964.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A002654, A002654.P11574922253888480122.a, A122046, A122046.P14111764381793131601.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A133693

/-! ## A133693.P7505606194707084712

`A002325(n+1)/(2*A059841(n)-1)`
-/

namespace A133693.P7505606194707084712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) / (2 * A059841 n - 1 : ℚ)

end

end A133693.P7505606194707084712

namespace A133693

/-- `A002325(n+1)/(2*A059841(n)-1)` -/
def P7505606194707084712.Spec : Prop :=
  ∀ n, P7505606194707084712.a n = (A133693 (n + 1) : ℚ)

end A133693

/-! ## A133693.P6072328303611877138

`A002325(n+1)/A057077(A057077(n)+n)`
-/

namespace A133693.P6072328303611877138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A133693.P6072328303611877138

namespace A133693

/-- `A002325(n+1)/A057077(A057077(n)+n)` -/
def P6072328303611877138.Spec : Prop :=
  ∀ n, P6072328303611877138.a n = (A133693 (n + 1) : ℚ)

end A133693

/-! ## A133693.P7561431789029468924

`-(A133692(n+1)/2)`
-/

namespace A133693.P7561431789029468924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A133692 (n + 1) : ℚ) / 2)

end

end A133693.P7561431789029468924

namespace A133693

/-- `-(A133692(n+1)/2)` -/
def P7561431789029468924.Spec : Prop :=
  ∀ n, P7561431789029468924.a n = (A133693 (n + 1) : ℚ)

end A133693

/-! ## A133693.P681058616465335065

`A002325(n+1)/(A059841(n)-A059841(n+1))`
-/

namespace A133693.P681058616465335065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) / (A059841 n - A059841 (n + 1) : ℚ)

end

end A133693.P681058616465335065

namespace A133693

/-- `A002325(n+1)/(A059841(n)-A059841(n+1))` -/
def P681058616465335065.Spec : Prop :=
  ∀ n, P681058616465335065.a n = (A133693 (n + 1) : ℚ)

end A133693

/-! ## A133693.P2107116431566308153

`A028572(n+1)-(A242609(n+1)+A002325(n+1))`
-/

namespace A133693.P2107116431566308153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (n + 1) - (A242609 (n + 1) + A002325 (n + 1))

end

end A133693.P2107116431566308153

namespace A133693

/-- `A028572(n+1)-(A242609(n+1)+A002325(n+1))` -/
def P2107116431566308153.Spec : Prop :=
  ∀ n, P2107116431566308153.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P3628712757668655376

`A033715(n+1)*A188510(n+1)-A002325(n+1)`
-/

namespace A133693.P3628712757668655376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (n + 1) * A188510 (n + 1) - A002325 (n + 1)

end

end A133693.P3628712757668655376

namespace A133693

/-- `A033715(n+1)*A188510(n+1)-A002325(n+1)` -/
def P3628712757668655376.Spec : Prop :=
  ∀ n, P3628712757668655376.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P3225236976095805822

`A033715(n+1)*A257170(n+1)-A002325(n+1)`
-/

namespace A133693.P3225236976095805822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (n + 1) * A257170 (n + 1) - A002325 (n + 1)

end

end A133693.P3225236976095805822

namespace A133693

/-- `A033715(n+1)*A257170(n+1)-A002325(n+1)` -/
def P3225236976095805822.Spec : Prop :=
  ∀ n, P3225236976095805822.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P9525818433190612247

`-(A139093(2*(n+1))/2)`
-/

namespace A133693.P9525818433190612247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A139093 (2 * (n + 1)) : ℚ) / 2)

end

end A133693.P9525818433190612247

namespace A133693

/-- `-(A139093(2*(n+1))/2)` -/
def P9525818433190612247.Spec : Prop :=
  ∀ n, P9525818433190612247.a n = (A133693 (n + 1) : ℚ)

end A133693

/-! ## A133693.P9515219919308202309

`A087960(n)*A129134(n+1)`
-/

namespace A133693.P9515219919308202309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A129134 (n + 1)

end

end A133693.P9515219919308202309

namespace A133693

/-- `A087960(n)*A129134(n+1)` -/
def P9515219919308202309.Spec : Prop :=
  ∀ n, P9515219919308202309.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P7877861383039190406

`A129134(n+1)/A057077(n+1)`
-/

namespace A133693.P7877861383039190406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129134 (n + 1) : ℚ) / (A057077 (n + 1) : ℚ)

end

end A133693.P7877861383039190406

namespace A133693

/-- `A129134(n+1)/A057077(n+1)` -/
def P7877861383039190406.Spec : Prop :=
  ∀ n, P7877861383039190406.a n = (A133693 (n + 1) : ℚ)

end A133693

/-! ## A133693.P2883941866769214705

`A002325(n+1)*A056594(2*n)`
-/

namespace A133693.P2883941866769214705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) * A056594 (2 * n)

end

end A133693.P2883941866769214705

namespace A133693

/-- `A002325(n+1)*A056594(2*n)` -/
def P2883941866769214705.Spec : Prop :=
  ∀ n, P2883941866769214705.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P17551105528200601302

`A002325(n+1)*A057077(2*n)`
-/

namespace A133693.P17551105528200601302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) * A057077 (2 * n)

end

end A133693.P17551105528200601302

namespace A133693

/-- `A002325(n+1)*A057077(2*n)` -/
def P17551105528200601302.Spec : Prop :=
  ∀ n, P17551105528200601302.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P15377871336794874514

`A002325(n+1)-A125096(2*(n+1))`
-/

namespace A133693.P15377871336794874514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - A125096 (2 * (n + 1))

end

end A133693.P15377871336794874514

namespace A133693

/-- `A002325(n+1)-A125096(2*(n+1))` -/
def P15377871336794874514.Spec : Prop :=
  ∀ n, P15377871336794874514.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P6719663163577097739

`A002325(n+1)*A034947(2*n+1)`
-/

namespace A133693.P6719663163577097739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) * A034947 (2 * n + 1)

end

end A133693.P6719663163577097739

namespace A133693

/-- `A002325(n+1)*A034947(2*n+1)` -/
def P6719663163577097739.Spec : Prop :=
  ∀ n, P6719663163577097739.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P11100816173246899685

`A125096(A000265(n+1))-A125096(2*(n+1))`
-/

namespace A133693.P11100816173246899685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A000265 (n + 1)).toNat - A125096 (2 * (n + 1))

end

end A133693.P11100816173246899685

namespace A133693

/-- `A125096(A000265(n+1))-A125096(2*(n+1))` -/
def P11100816173246899685.Spec : Prop :=
  ∀ n, P11100816173246899685.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P14315295933295073323

`A129134(A266491(n+1))`
-/

namespace A133693.P14315295933295073323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A266491 (n + 1)).toNat

end

end A133693.P14315295933295073323

namespace A133693

/-- `A129134(A266491(n+1))` -/
def P14315295933295073323.Spec : Prop :=
  ∀ n, P14315295933295073323.a n = A133693 (n + 1)

end A133693

/-! ## A133693.P18253067177290254571

`A129134(2*(n+1))`
-/

namespace A133693.P18253067177290254571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (2 * (n + 1))

end

end A133693.P18253067177290254571

namespace A133693

/-- `A129134(2*(n+1))` -/
def P18253067177290254571.Spec : Prop :=
  ∀ n, P18253067177290254571.a n = A133693 (n + 1)

end A133693

/-!
# A133694: a(n) = (3*n^2 + 3*n - 4)/2.

The programs for A133694, the canonical program `A133694.P11600665205743406705` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133694 has offset 1).

The definition of A133694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)²+3*(n+1)-4)/2` (program `A133694.P5070365082816798146`, by `A133694.P5070365082816798146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133694.P7419234318824895938

`ogf((1+4x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A133694.P7419234318824895938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2] [1, -3, 3, -1] n

end

end A133694.P7419234318824895938

namespace A133694

/-- `ogf((1+4x-2x^2)/(1-3x+3x^2-x^3))` -/
def P7419234318824895938.Spec : Prop :=
  ∀ n, P7419234318824895938.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P11600665205743406705

`a(n-1)+3*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133694

/-- `a(n-1)+3*(n+1)` -/
def P11600665205743406705.Spec : Prop :=
  ∀ n, (P11600665205743406705.a n : ℤ) = A133694 (n + 1)

theorem P11600665205743406705.correct : P11600665205743406705.Spec := by
  intro n
  simp only [A133694, Nat.add_sub_cancel]

end A133694

/-! ## A133694.P5070365082816798146

`(3*(n+1)²+3*(n+1)-4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133694.P5070365082816798146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) ^ 2 + 3 * (n + 1) : ℤ) - 4 : ℚ) / 2

end

end A133694.P5070365082816798146

namespace A133694

/-- `(3*(n+1)²+3*(n+1)-4)/2` -/
def P5070365082816798146.Spec : Prop :=
  ∀ n, P5070365082816798146.a n = (A133694 (n + 1) : ℚ)

theorem P5070365082816798146.correct : P5070365082816798146.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A133694, Nat.add_sub_cancel, A133694.P5070365082816798146.a, A133694.P11600665205743406705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A133694, Nat.add_sub_cancel, A133694.P5070365082816798146.a, A133694.P11600665205743406705.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A133694

/-! ## A133694.P7365084531705300635

`3*A000217(n+1)-2`
-/

namespace A133694.P7365084531705300635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (n + 1) - 2

end

end A133694.P7365084531705300635

namespace A133694

/-- `3*A000217(n+1)-2` -/
def P7365084531705300635.Spec : Prop :=
  ∀ n, P7365084531705300635.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P11980118241168268417

`3*C(n+2, 2)-2`
-/

namespace A133694.P11980118241168268417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2 : ℤ) - 2

end

end A133694.P11980118241168268417

namespace A133694

/-- `3*C(n+2, 2)-2` -/
def P11980118241168268417.Spec : Prop :=
  ∀ n, P11980118241168268417.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P3785681139631385586

`∑[3+a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A133694.P3785681139631385586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P3785681139631385586

namespace A133694

/-- `∑[3+a(n-1)]` -/
def P3785681139631385586.Spec : Prop :=
  ∀ n, (P3785681139631385586.a n : ℤ) = A133694 (n + 1)

end A133694

/-! ## A133694.P14326124236735951248

`∑[ogf((1+4x-2x^2)/(1-2x+x^2))]`
-/

namespace A133694.P14326124236735951248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P14326124236735951248

namespace A133694

/-- `∑[ogf((1+4x-2x^2)/(1-2x+x^2))]` -/
def P14326124236735951248.Spec : Prop :=
  ∀ n, P14326124236735951248.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P2313942130056737718

`Δ[(n+4)*(C(n, 2)+1)]`
-/

namespace A133694.P2313942130056737718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * (Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A133694.P2313942130056737718

namespace A133694

/-- `Δ[(n+4)*(C(n, 2)+1)]` -/
def P2313942130056737718.Spec : Prop :=
  ∀ n, P2313942130056737718.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P7921541321440188154

`floor(3*(cos(2)+∑[n+1]))`
-/

namespace A133694.P7921541321440188154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (Real.cos (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A133694.P7921541321440188154

namespace A133694

/-- `floor(3*(cos(2)+∑[n+1]))` -/
def P7921541321440188154.Spec : Prop :=
  ∀ n, P7921541321440188154.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P7290967597560580973

`ceil(3*(cos(3)+∑[n+1]))`
-/

namespace A133694.P7290967597560580973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (Real.cos (3 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A133694.P7290967597560580973

namespace A133694

/-- `ceil(3*(cos(3)+∑[n+1]))` -/
def P7290967597560580973.Spec : Prop :=
  ∀ n, P7290967597560580973.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P7656511478035209282

`floor(3*(cot(2)+∑[n+1]))`
-/

namespace A133694.P7656511478035209282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (Real.cot (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A133694.P7656511478035209282

namespace A133694

/-- `floor(3*(cot(2)+∑[n+1]))` -/
def P7656511478035209282.Spec : Prop :=
  ∀ n, P7656511478035209282.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P14825764149856177727

`∑[∪[3*(n+2), 9^n]]`
-/

namespace A133694.P14825764149856177727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P14825764149856177727

namespace A133694

/-- `∑[∪[3*(n+2), 9^n]]` -/
def P14825764149856177727.Spec : Prop :=
  ∀ n, (P14825764149856177727.a n : ℤ) = A133694 (n + 1)

end A133694

/-! ## A133694.P11000562901847689911

`∑[(n+1)*3%comp[∑[n]]]`
-/

namespace A133694.P11000562901847689911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P11000562901847689911

namespace A133694

/-- `∑[(n+1)*3%comp[∑[n]]]` -/
def P11000562901847689911.Spec : Prop :=
  ∀ n, (P11000562901847689911.a n : ℤ) = A133694 (n + 1)

end A133694

/-! ## A133694.P14311008067479027068

`3*(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A133694.P14311008067479027068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (n + 1) + a (n - 1)

end

end A133694.P14311008067479027068

namespace A133694

/-- `3*(n+1)+a(n-1)` -/
def P14311008067479027068.Spec : Prop :=
  ∀ n, (P14311008067479027068.a n : ℤ) = A133694 (n + 1)

end A133694

/-! ## A133694.P9885386936112846240

`∑[(n+1)*(2%(n+2)+1)]`
-/

namespace A133694.P9885386936112846240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 % (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P9885386936112846240

namespace A133694

/-- `∑[(n+1)*(2%(n+2)+1)]` -/
def P9885386936112846240.Spec : Prop :=
  ∀ n, (P9885386936112846240.a n : ℤ) = A133694 (n + 1)

end A133694

/-! ## A133694.P5702171285212484272

`∑[record[xor(3, n)]-(abs(1-n)+1)]`
-/

namespace A133694.P5702171285212484272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (|1 - (n : ℤ)| + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P5702171285212484272

namespace A133694

/-- `∑[record[xor(3, n)]-(abs(1-n)+1)]` -/
def P5702171285212484272.Spec : Prop :=
  ∀ n, P5702171285212484272.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P2828287994249046316

`∑[(3*(n+1))^floor(atan(n+1))]`
-/

namespace A133694.P2828287994249046316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P2828287994249046316

namespace A133694

/-- `∑[(3*(n+1))^floor(atan(n+1))]` -/
def P2828287994249046316.Spec : Prop :=
  ∀ n, P2828287994249046316.a n = (A133694 (n + 1) : ℚ)

end A133694

/-! ## A133694.P17848527378331506259

`4*n-(n-3-a(n-1))` with `a(0)=1`
-/

namespace A133694.P17848527378331506259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - ((n : ℤ) - 3 - a (n - 1))

end

end A133694.P17848527378331506259

namespace A133694

/-- `4*n-(n-3-a(n-1))` -/
def P17848527378331506259.Spec : Prop :=
  ∀ n, P17848527378331506259.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P5116182563541854449

`floor(∑[n+3]+lcm(n, n+1)-ϕ)`
-/

namespace A133694.P5116182563541854449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + ((Nat.lcm n (n + 1) : ℝ) - Real.goldenRatio)⌋

end

end A133694.P5116182563541854449

namespace A133694

/-- `floor(∑[n+3]+lcm(n, n+1)-ϕ)` -/
def P5116182563541854449.Spec : Prop :=
  ∀ n, P5116182563541854449.a n = A133694 (n + 1)

end A133694

/-! ## A133694.P1185856448428971793

`∑[gcd(2*n+n+3, C(2, n+2))]`
-/

namespace A133694.P1185856448428971793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + (n + 3)) (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133694.P1185856448428971793

namespace A133694

/-- `∑[gcd(2*n+n+3, C(2, n+2))]` -/
def P1185856448428971793.Spec : Prop :=
  ∀ n, (P1185856448428971793.a n : ℤ) = A133694 (n + 1)

end A133694

/-!
# A133695: a(n) = 2*A008683 - 1.

The programs for A133695, the canonical program `A133695.P14090460044357670883` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133695 has offset 1).

The definition of A133695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133695.P11191884899222969703

`2*∏{e}[n+1, -#!]%2-1`
-/

namespace A133695.P11191884899222969703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2 - 1

end

end A133695.P11191884899222969703

namespace A133695

/-- `2*∏{e}[n+1, -#!]%2-1` -/
def P11191884899222969703.Spec : Prop :=
  ∀ n, P11191884899222969703.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P2276146860831075263

`2*round(1/∏{e}[n+1, -#²])-1`
-/

namespace A133695.P2276146860831075263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) - 1

end

end A133695.P2276146860831075263

namespace A133695

/-- `2*round(1/∏{e}[n+1, -#²])-1` -/
def P2276146860831075263.Spec : Prop :=
  ∀ n, P2276146860831075263.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P1392869322207100862

`2*(∏{e}[n+1, -floor(1/#)]+1)-3`
-/

namespace A133695.P1392869322207100862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1) - 3

end

end A133695.P1392869322207100862

namespace A133695

/-- `2*(∏{e}[n+1, -floor(1/#)]+1)-3` -/
def P1392869322207100862.Spec : Prop :=
  ∀ n, P1392869322207100862.a n = A133695 (n + 1)

theorem P1392869322207100862.correct : P1392869322207100862.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P1392869322207100862.f1, A133695.P1392869322207100862.a, A133695.P14090460044357670883.a, A080847, A080847.P17042895332239696920.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P13760897658864689935

`round(1/∏{e}[n+1, -#²])+round(1/∏{e}[n+1, -#²])-1`
-/

namespace A133695.P13760897658864689935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + (SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) - 1)

end

end A133695.P13760897658864689935

namespace A133695

/-- `round(1/∏{e}[n+1, -#²])+round(1/∏{e}[n+1, -#²])-1` -/
def P13760897658864689935.Spec : Prop :=
  ∀ n, P13760897658864689935.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P17990397601493948777

`2*A008683(n+1)-1`
-/

namespace A133695.P17990397601493948777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1) - 1

end

end A133695.P17990397601493948777

namespace A133695

/-- `2*A008683(n+1)-1` -/
def P17990397601493948777.Spec : Prop :=
  ∀ n, P17990397601493948777.a n = A133695 (n + 1)

theorem P17990397601493948777.correct : P17990397601493948777.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P17990397601493948777.a, A133695.P14090460044357670883.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P9026579156849388008

`2*A007423(n+1)-3`
-/

namespace A133695.P9026579156849388008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007423 (n + 1) - 3

end

end A133695.P9026579156849388008

namespace A133695

/-- `2*A007423(n+1)-3` -/
def P9026579156849388008.Spec : Prop :=
  ∀ n, P9026579156849388008.a n = A133695 (n + 1)

theorem P9026579156849388008.correct : P9026579156849388008.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P9026579156849388008.a, A133695.P14090460044357670883.a, A007423, A007423.P17981127199039660822.a, A080847, A080847.P17042895332239696920.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P15254833262370621916

`3-2*A129979(n+1)`
-/

namespace A133695.P15254833262370621916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A129979 (n + 1)

end

end A133695.P15254833262370621916

namespace A133695

/-- `3-2*A129979(n+1)` -/
def P15254833262370621916.Spec : Prop :=
  ∀ n, P15254833262370621916.a n = A133695 (n + 1)

theorem P15254833262370621916.correct : P15254833262370621916.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P15254833262370621916.a, A133695.P14090460044357670883.a, A080847, A080847.P17042895332239696920.a, A129979, A129979.P5213750874207387056.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P14090460044357670883

`2*A080847(n+1)-5`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133695

/-- `2*A080847(n+1)-5` -/
def P14090460044357670883.Spec : Prop :=
  ∀ n, P14090460044357670883.a n = A133695 (n + 1)

theorem P14090460044357670883.correct : P14090460044357670883.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel]

end A133695

/-! ## A133695.P9516254591858717894

`2*A162512(n+1)%2-1`
-/

namespace A133695.P9516254591858717894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A162512 (n + 1)) 2 - 1

end

end A133695.P9516254591858717894

namespace A133695

/-- `2*A162512(n+1)%2-1` -/
def P9516254591858717894.Spec : Prop :=
  ∀ n, P9516254591858717894.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P15248084985668237351

`A062004(n+1)/(n+1)-1`
-/

namespace A133695.P15248084985668237351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A133695.P15248084985668237351

namespace A133695

/-- `A062004(n+1)/(n+1)-1` -/
def P15248084985668237351.Spec : Prop :=
  ∀ n, P15248084985668237351.a n = (A133695 (n + 1) : ℚ)

theorem P15248084985668237351.correct : P15248084985668237351.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P15248084985668237351.a, A133695.P14090460044357670883.a, A062004, A062004.P15381032056684289952.a, A080847, A080847.P17042895332239696920.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P8495968345753538104

`A378225(n+1)+A057428(n)`
-/

namespace A133695.P8495968345753538104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378225 (n + 1) + A057428 n

end

end A133695.P8495968345753538104

namespace A133695

/-- `A378225(n+1)+A057428(n)` -/
def P8495968345753538104.Spec : Prop :=
  ∀ n, P8495968345753538104.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P14046179814777888311

`A378225(n+1)-A057427(n)`
-/

namespace A133695.P14046179814777888311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378225 (n + 1) - A057427 n

end

end A133695.P14046179814777888311

namespace A133695

/-- `A378225(n+1)-A057427(n)` -/
def P14046179814777888311.Spec : Prop :=
  ∀ n, P14046179814777888311.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P17107615810990599106

`A007423(n+1)-A129979(n+1)`
-/

namespace A133695.P17107615810990599106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - A129979 (n + 1)

end

end A133695.P17107615810990599106

namespace A133695

/-- `A007423(n+1)-A129979(n+1)` -/
def P17107615810990599106.Spec : Prop :=
  ∀ n, P17107615810990599106.a n = A133695 (n + 1)

theorem P17107615810990599106.correct : P17107615810990599106.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P17107615810990599106.a, A133695.P14090460044357670883.a, A007423, A007423.P17981127199039660822.a, A080847, A080847.P17042895332239696920.a, A129979, A129979.P5213750874207387056.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P12128281214674979645

`A092673(n+1)+A359591(n+1)-1`
-/

namespace A133695.P12128281214674979645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + (A359591 (n + 1) - 1)

end

end A133695.P12128281214674979645

namespace A133695

/-- `A092673(n+1)+A359591(n+1)-1` -/
def P12128281214674979645.Spec : Prop :=
  ∀ n, P12128281214674979645.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P15784892188152654706

`A007423(n+1)+A008683(n+1)-2`
-/

namespace A133695.P15784892188152654706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + (A008683 (n + 1) - 2)

end

end A133695.P15784892188152654706

namespace A133695

/-- `A007423(n+1)+A008683(n+1)-2` -/
def P15784892188152654706.Spec : Prop :=
  ∀ n, P15784892188152654706.a n = A133695 (n + 1)

theorem P15784892188152654706.correct : P15784892188152654706.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P15784892188152654706.a, A133695.P14090460044357670883.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P13497396134256112363

`A228409(n+1)-2*A231821(n+1)`
-/

namespace A133695.P13497396134256112363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228409 (n + 1) - 2 * A231821 (n + 1)

end

end A133695.P13497396134256112363

namespace A133695

/-- `A228409(n+1)-2*A231821(n+1)` -/
def P13497396134256112363.Spec : Prop :=
  ∀ n, P13497396134256112363.a n = A133695 (n + 1)

theorem P13497396134256112363.correct : P13497396134256112363.Spec := by
  intro n
  simp only [A133695, Nat.add_sub_cancel, A133695.P13497396134256112363.a, A133695.P14090460044357670883.a, A080847, A080847.P17042895332239696920.a, A228409, A228409.P2380052288806591200.a, A231821, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133695

/-! ## A133695.P8756688562129149600

`A008683(C(n+1, n))+A008683(n+1)-1`
-/

namespace A133695.P8756688562129149600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n) + (A008683 (n + 1) - 1)

end

end A133695.P8756688562129149600

namespace A133695

/-- `A008683(C(n+1, n))+A008683(n+1)-1` -/
def P8756688562129149600.Spec : Prop :=
  ∀ n, P8756688562129149600.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P15344374479192632813

`A008683(n+1)+A010555(n+1)-A008966(n+1)`
-/

namespace A133695.P15344374479192632813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A010555 (n + 1) - A008966 (n + 1))

end

end A133695.P15344374479192632813

namespace A133695

/-- `A008683(n+1)+A010555(n+1)-A008966(n+1)` -/
def P15344374479192632813.Spec : Prop :=
  ∀ n, P15344374479192632813.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P17256197907562633919

`A010555(n+1)-(A252233(n+1)+A252233(n+1))`
-/

namespace A133695.P17256197907562633919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1) - (A252233 (n + 1) + A252233 (n + 1))

end

end A133695.P17256197907562633919

namespace A133695

/-- `A010555(n+1)-(A252233(n+1)+A252233(n+1))` -/
def P17256197907562633919.Spec : Prop :=
  ∀ n, P17256197907562633919.a n = A133695 (n + 1)

end A133695

/-! ## A133695.P1267793801255145934

`A008683(n+1)+A153881(n+2)+A008683(n+1)`
-/

namespace A133695.P1267793801255145934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A153881 (n + 2) + A008683 (n + 1))

end

end A133695.P1267793801255145934

namespace A133695

/-- `A008683(n+1)+A153881(n+2)+A008683(n+1)` -/
def P1267793801255145934.Spec : Prop :=
  ∀ n, P1267793801255145934.a n = A133695 (n + 1)

end A133695

/-!
# A133696: Triangle read by rows: T(n,k) = number of partitions of binomial(n,k) into parts k and n, 1<=k<=n.

The programs for A133696, there is no canonical definition to state claims against.
-/

/-! ## A133696.P14289102781410846160

`A004610(A004621(n+1)*A274429(n+1))`
-/

namespace A133696.P14289102781410846160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004610 (A004621 (n + 1) * A274429 (n + 1)).toNat

end

end A133696.P14289102781410846160

/-! ## A133696.P3178868543066756353

`A190487(A239030(n+1)*A337655(n+1))`
-/

namespace A133696.P3178868543066756353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (A239030 (n + 1) * A337655 (n + 1)).toNat

end

end A133696.P3178868543066756353

/-! ## A133696.P16602363149044418275

`∑[A051748(2*(n+1))]%3`
-/

namespace A133696.P16602363149044418275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051748 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A133696.P16602363149044418275

/-! ## A133696.P7785625157070505194

`A204423(A182751(n+1)+char[∑[n-1]])`
-/

namespace A133696.P7785625157070505194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204423 (A182751 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A133696.P7785625157070505194

/-!
# A133697: a(n) = smallest number k such that P(k)/P(k+1) > P(k+1)/P(k+2) > ... > P(k+n+1)/P(k+n+2), where P(k) = k-th prime = A000040(k).

The programs for A133697, there is no canonical definition to state claims against.
-/

/-! ## A133697.P3482592520967376369

`A079067(A229832(n+1))`
-/

namespace A133697.P3482592520967376369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A229832 (n + 1)).toNat

end

end A133697.P3482592520967376369

/-!
# A133698: Triangle, diagonal = A001227 with the rest zeros.

The programs for A133698, the canonical program `A133698.P17080952443487719908` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133698 has offset 1).

The definition of A133698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133698.P17337294786856068307

`Δ[A060831(row(n))]`
-/

namespace A133698.P17337294786856068307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (SequenceMachineLib.triRow n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133698.P17337294786856068307

namespace A133698

/-- `Δ[A060831(row(n))]` -/
def P17337294786856068307.Spec : Prop :=
  ∀ n, P17337294786856068307.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P16863147673928226525

`Δ[A060831(A003056(n))]`
-/

namespace A133698.P16863147673928226525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133698.P16863147673928226525

namespace A133698

/-- `Δ[A060831(A003056(n))]` -/
def P16863147673928226525.Spec : Prop :=
  ∀ n, P16863147673928226525.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P13007369358478122323

`∑{d}[A127648(n), A000035(#)]`
-/

namespace A133698.P13007369358478122323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A133698.P13007369358478122323

namespace A133698

/-- `∑{d}[A127648(n), A000035(#)]` -/
def P13007369358478122323.Spec : Prop :=
  ∀ n, P13007369358478122323.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P17080952443487719908

`A023531(n)*A133699(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133698

/-- `A023531(n)*A133699(n+1)` -/
def P17080952443487719908.Spec : Prop :=
  ∀ n, P17080952443487719908.a n = A133698 (n + 1)

theorem P17080952443487719908.correct : P17080952443487719908.Spec := by
  intro n
  simp only [A133698, Nat.add_sub_cancel]

end A133698

/-! ## A133698.P13414283428889376436

`A023531(n)*A133701(n+1)`
-/

namespace A133698.P13414283428889376436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A133701 (n + 1)

end

end A133698.P13414283428889376436

namespace A133698

/-- `A023531(n)*A133701(n+1)` -/
def P13414283428889376436.Spec : Prop :=
  ∀ n, P13414283428889376436.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P15229280158172791877

`A023531(n)*A133703(n+1)`
-/

namespace A133698.P15229280158172791877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A133703 (n + 1)

end

end A133698.P15229280158172791877

namespace A133698

/-- `A023531(n)*A133703(n+1)` -/
def P15229280158172791877.Spec : Prop :=
  ∀ n, P15229280158172791877.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P694492158690968567

`A026729(n)*A133699(n+1)`
-/

namespace A133698.P694492158690968567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A133699 (n + 1)

end

end A133698.P694492158690968567

namespace A133698

/-- `A026729(n)*A133699(n+1)` -/
def P694492158690968567.Spec : Prop :=
  ∀ n, P694492158690968567.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P5201280905816249775

`A026729(n)*A133701(n+1)`
-/

namespace A133698.P5201280905816249775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A133701 (n + 1)

end

end A133698.P5201280905816249775

namespace A133698

/-- `A026729(n)*A133701(n+1)` -/
def P5201280905816249775.Spec : Prop :=
  ∀ n, P5201280905816249775.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P13259231607665601963

`A026729(n)*A133703(n+1)`
-/

namespace A133698.P13259231607665601963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A133703 (n + 1)

end

end A133698.P13259231607665601963

namespace A133698

/-- `A026729(n)*A133703(n+1)` -/
def P13259231607665601963.Spec : Prop :=
  ∀ n, P13259231607665601963.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P4878036232291632618

`A071675(n)*A133703(n+1)`
-/

namespace A133698.P4878036232291632618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 n * A133703 (n + 1)

end

end A133698.P4878036232291632618

namespace A133698

/-- `A071675(n)*A133703(n+1)` -/
def P4878036232291632618.Spec : Prop :=
  ∀ n, P4878036232291632618.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P16499036434910480391

`A071676(n)*A133703(n+1)`
-/

namespace A133698.P16499036434910480391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071676 n * A133703 (n + 1)

end

end A133698.P16499036434910480391

namespace A133698

/-- `A071676(n)*A133703(n+1)` -/
def P16499036434910480391.Spec : Prop :=
  ∀ n, P16499036434910480391.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P4558840113961840342

`A087748(n)*A133699(n+1)`
-/

namespace A133698.P4558840113961840342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A133699 (n + 1)

end

end A133698.P4558840113961840342

namespace A133698

/-- `A087748(n)*A133699(n+1)` -/
def P4558840113961840342.Spec : Prop :=
  ∀ n, P4558840113961840342.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P14322380358662424092

`A087748(n)*A133701(n+1)`
-/

namespace A133698.P14322380358662424092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A133701 (n + 1)

end

end A133698.P14322380358662424092

namespace A133698

/-- `A087748(n)*A133701(n+1)` -/
def P14322380358662424092.Spec : Prop :=
  ∀ n, P14322380358662424092.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P15093467301815063991

`A087748(n)*A133703(n+1)`
-/

namespace A133698.P15093467301815063991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A133703 (n + 1)

end

end A133698.P15093467301815063991

namespace A133698

/-- `A087748(n)*A133703(n+1)` -/
def P15093467301815063991.Spec : Prop :=
  ∀ n, P15093467301815063991.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P5534735149099793046

`lcm(A098158(n), A133701(n+1))`
-/

namespace A133698.P5534735149099793046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098158 n) (A133701 (n + 1))

end

end A133698.P5534735149099793046

namespace A133698

/-- `lcm(A098158(n), A133701(n+1))` -/
def P5534735149099793046.Spec : Prop :=
  ∀ n, (P5534735149099793046.a n : ℤ) = A133698 (n + 1)

end A133698

/-! ## A133698.P15078732642991095466

`and(A133699(n+1), A134347(n))`
-/

namespace A133698.P15078732642991095466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133699 (n + 1)) (A134347 n)

end

end A133698.P15078732642991095466

namespace A133698

/-- `and(A133699(n+1), A134347(n))` -/
def P15078732642991095466.Spec : Prop :=
  ∀ n, P15078732642991095466.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P5911774058550969846

`and(A133703(n+1), A134347(n))`
-/

namespace A133698.P5911774058550969846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133703 (n + 1)) (A134347 n)

end

end A133698.P5911774058550969846

namespace A133698

/-- `and(A133703(n+1), A134347(n))` -/
def P5911774058550969846.Spec : Prop :=
  ∀ n, P5911774058550969846.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P6308295833204992966

`and(A133703(n+1), A152568(n))`
-/

namespace A133698.P6308295833204992966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133703 (n + 1)) (A152568 n)

end

end A133698.P6308295833204992966

namespace A133698

/-- `and(A133703(n+1), A152568(n))` -/
def P6308295833204992966.Spec : Prop :=
  ∀ n, P6308295833204992966.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P7615873468147663855

`and(A133703(n+1), A152571(n))`
-/

namespace A133698.P7615873468147663855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133703 (n + 1)) (A152571 n)

end

end A133698.P7615873468147663855

namespace A133698

/-- `and(A133703(n+1), A152571(n))` -/
def P7615873468147663855.Spec : Prop :=
  ∀ n, P7615873468147663855.a n = A133698 (n + 1)

end A133698

/-! ## A133698.P10798574160069013590

`and(A133699(n+1), A193858(n))`
-/

namespace A133698.P10798574160069013590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133699 (n + 1)) (A193858 n)

end

end A133698.P10798574160069013590

namespace A133698

/-- `and(A133699(n+1), A193858(n))` -/
def P10798574160069013590.Spec : Prop :=
  ∀ n, P10798574160069013590.a n = A133698 (n + 1)

end A133698

/-!
# A133699: Triangle read by rows: T(n, k) = A001227(k) if k divides n, T(n, k) = 0 otherwise.

The programs for A133699, the canonical program `A133699.P12480715831549394010` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133699 has offset 1).

The definition of A133699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133699.P12480715831549394010

`A051731(C(row(n)+1, 2)+col(n)+1)*A001227(col(n)+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133699

/-- `A051731(C(row(n)+1, 2)+col(n)+1)*A001227(col(n)+1)` -/
def P12480715831549394010.Spec : Prop :=
  ∀ n, P12480715831549394010.a n = A133699 (n + 1)

theorem P12480715831549394010.correct : P12480715831549394010.Spec := by
  intro n
  simp only [A133699, Nat.add_sub_cancel]

end A133699

/-! ## A133699.P11742816621062580348

`∑{d}[A127093(n+1), #%2]`
-/

namespace A133699.P11742816621062580348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A133699.P11742816621062580348

namespace A133699

/-- `∑{d}[A127093(n+1), #%2]` -/
def P11742816621062580348.Spec : Prop :=
  ∀ n, (P11742816621062580348.a n : ℤ) = A133699 (n + 1)

end A133699

/-! ## A133699.P8137095632475504636

`∑{d}[A127093(abs(1-n)+2), and(1, #)]`
-/

namespace A133699.P8137095632475504636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A133699.P8137095632475504636

namespace A133699

/-- `∑{d}[A127093(abs(1-n)+2), and(1, #)]` -/
def P8137095632475504636.Spec : Prop :=
  ∀ n, (P8137095632475504636.a n : ℤ) = A133699 (n + 1)

end A133699

/-! ## A133699.P9551644300822132159

`∑{d}[A127093(n+1), A000035(#)]`
-/

namespace A133699.P9551644300822132159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A133699.P9551644300822132159

namespace A133699

/-- `∑{d}[A127093(n+1), A000035(#)]` -/
def P9551644300822132159.Spec : Prop :=
  ∀ n, P9551644300822132159.a n = A133699 (n + 1)

end A133699

/-! ## A133699.P3551274281143207872

`A130210(n+1)/A225743(n+1)`
-/

namespace A133699.P3551274281143207872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130210 (n + 1) : ℚ) / (A225743 (n + 1) : ℚ)

end

end A133699.P3551274281143207872

namespace A133699

/-- `A130210(n+1)/A225743(n+1)` -/
def P3551274281143207872.Spec : Prop :=
  ∀ n, P3551274281143207872.a n = (A133699 (n + 1) : ℚ)

end A133699

/-! ## A133699.P10897875764045065577

`A001227(col(n)+1)*A051731(n+1)`
-/

namespace A133699.P10897875764045065577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.triCol n + 1) * A051731 (n + 1)

end

end A133699.P10897875764045065577

namespace A133699

/-- `A001227(col(n)+1)*A051731(n+1)` -/
def P10897875764045065577.Spec : Prop :=
  ∀ n, P10897875764045065577.a n = A133699 (n + 1)

end A133699

/-! ## A133699.P9046106588732239195

`A001227(A002260(n+1))*A051731(n+1)`
-/

namespace A133699.P9046106588732239195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A133699.P9046106588732239195

namespace A133699

/-- `A001227(A002260(n+1))*A051731(n+1)` -/
def P9046106588732239195.Spec : Prop :=
  ∀ n, P9046106588732239195.a n = A133699 (n + 1)

end A133699

/-! ## A133699.P16005709518723213786

`A001227(A307662(n+1))*A051731(n+1)`
-/

namespace A133699.P16005709518723213786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A307662 (n + 1)).toNat * A051731 (n + 1)

end

end A133699.P16005709518723213786

namespace A133699

/-- `A001227(A307662(n+1))*A051731(n+1)` -/
def P16005709518723213786.Spec : Prop :=
  ∀ n, P16005709518723213786.a n = A133699 (n + 1)

end A133699

/-! ## A133699.P9249183976435216993

`A238529(2^A127093(n+1))`
-/

namespace A133699.P9249183976435216993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127093 (n + 1) : ℤ))).toNat

end

end A133699.P9249183976435216993

namespace A133699

/-- `A238529(2^A127093(n+1))` -/
def P9249183976435216993.Spec : Prop :=
  ∀ n, P9249183976435216993.a n = A133699 (n + 1)

end A133699

