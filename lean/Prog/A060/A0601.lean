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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A060100: Fifth column (m=4) of triangle A060098.

The programs for A060100, the canonical program `A060100.P11917962020534609819` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060100 has offset 0).

The definition of A060100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060100.P11917962020534609819

`(5*a(n-1)+(n+11)*a(n-2))/n` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060100

/-- `(5*a(n-1)+(n+11)*a(n-2))/n` -/
def P11917962020534609819.Spec : Prop :=
  ∀ n, P11917962020534609819.a n = (A060100 n : ℚ)

end A060100

/-! ## A060100.P10237025241374738063

`∑[A038164(n)]`
-/

namespace A060100.P10237025241374738063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P10237025241374738063

namespace A060100

/-- `∑[A038164(n)]` -/
def P10237025241374738063.Spec : Prop :=
  ∀ n, P10237025241374738063.a n = A060100 n

end A060100

/-! ## A060100.P13333873159014556615

`∑[∑[A299336(n)]]`
-/

namespace A060100.P13333873159014556615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P13333873159014556615

namespace A060100

/-- `∑[∑[A299336(n)]]` -/
def P13333873159014556615.Spec : Prop :=
  ∀ n, P13333873159014556615.a n = A060100 n

end A060100

/-! ## A060100.P18383436448397916788

`∑[∑[∑[A177747(n)]]]`
-/

namespace A060100.P18383436448397916788
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P18383436448397916788

namespace A060100

/-- `∑[∑[∑[A177747(n)]]]` -/
def P18383436448397916788.Spec : Prop :=
  ∀ n, P18383436448397916788.a n = A060100 n

end A060100

/-! ## A060100.P6533366793697783477

`∑[∑[∑[∑[A189976(n+8)]]]]`
-/

namespace A060100.P6533366793697783477
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P6533366793697783477

namespace A060100

/-- `∑[∑[∑[∑[A189976(n+8)]]]]` -/
def P6533366793697783477.Spec : Prop :=
  ∀ n, P6533366793697783477.a n = A060100 n

end A060100

/-! ## A060100.P15789970349181440058

`∑[∑[A060099(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A060100.P15789970349181440058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A060099 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P15789970349181440058

namespace A060100

/-- `∑[∑[A060099(n)-a(n-1)]]` -/
def P15789970349181440058.Spec : Prop :=
  ∀ n, P15789970349181440058.a n = A060100 n

end A060100

/-! ## A060100.P9729782399839879783

`∑[∑[A038163(n)+a(n-2)]]` with `a(0)=1, a(1)=3`
-/

namespace A060100.P9729782399839879783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A038163 n + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P9729782399839879783

namespace A060100

/-- `∑[∑[A038163(n)+a(n-2)]]` -/
def P9729782399839879783.Spec : Prop :=
  ∀ n, P9729782399839879783.a n = A060100 n

end A060100

/-! ## A060100.P10450963336794447568

`∪[A060104(n), A060558(n)]`
-/

namespace A060100.P10450963336794447568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060558 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060100.P10450963336794447568

namespace A060100

/-- `∪[A060104(n), A060558(n)]` -/
def P10450963336794447568.Spec : Prop :=
  ∀ n, (P10450963336794447568.a n : ℤ) = A060100 n

end A060100

/-! ## A060100.P11599505294319472004

`∑[∑[A188316(A166136(n+2)-3)]]`
-/

namespace A060100.P11599505294319472004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A166136 (n + 2) - 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060100.P11599505294319472004

namespace A060100

/-- `∑[∑[A188316(A166136(n+2)-3)]]` -/
def P11599505294319472004.Spec : Prop :=
  ∀ n, P11599505294319472004.a n = A060100 n

end A060100

/-!
# A060101: Sixth column (m=5) of triangle A060098.

The programs for A060101, the canonical program `A060101.P6144054388817537936` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060101 has offset 0).

The definition of A060101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060101.P6144054388817537936

`∑[A038165(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060101

/-- `∑[A038165(n)]` -/
def P6144054388817537936.Spec : Prop :=
  ∀ n, P6144054388817537936.a n = A060101 n

theorem P6144054388817537936.correct : P6144054388817537936.Spec := by
  intro n
  simp only [A060101]

end A060101

/-! ## A060101.P11711234287835574962

`∑[∑[∑[∑[A299337(n)]]]]`
-/

namespace A060101.P11711234287835574962
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060101.P11711234287835574962

namespace A060101

/-- `∑[∑[∑[∑[A299337(n)]]]]` -/
def P11711234287835574962.Spec : Prop :=
  ∀ n, P11711234287835574962.a n = A060101 n

end A060101

/-! ## A060101.P3914652191513518025

`∑[∑[A060100(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A060101.P3914652191513518025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A060100 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060101.P3914652191513518025

namespace A060101

/-- `∑[∑[A060100(n)-a(n-1)]]` -/
def P3914652191513518025.Spec : Prop :=
  ∀ n, P3914652191513518025.a n = A060101 n

end A060101

/-! ## A060101.P13945853637968649880

`∑[∪[A059601(n), A059602(n)]]`
-/

namespace A060101.P13945853637968649880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059601 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059602 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060101.P13945853637968649880

namespace A060101

/-- `∑[∪[A059601(n), A059602(n)]]` -/
def P13945853637968649880.Spec : Prop :=
  ∀ n, (P13945853637968649880.a n : ℤ) = A060101 n

end A060101

/-! ## A060101.P11219557524966337951

`A038165(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A060101.P11219557524966337951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038165 n + a (A023443 n).toNat

end

end A060101.P11219557524966337951

namespace A060101

/-- `A038165(n)+a(A023443(n))` -/
def P11219557524966337951.Spec : Prop :=
  ∀ n, P11219557524966337951.a n = A060101 n

end A060101

/-! ## A060101.P1262938649566286781

`∑[2*A054498(n)]-A054498(n)`
-/

namespace A060101.P1262938649566286781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054498 n

end

end A060101.P1262938649566286781

namespace A060101

/-- `∑[2*A054498(n)]-A054498(n)` -/
def P1262938649566286781.Spec : Prop :=
  ∀ n, P1262938649566286781.a n = A060101 n

end A060101

/-! ## A060101.P15378303741543851352

`A060098(A167499(n+4))`
-/

namespace A060101.P15378303741543851352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060098 (A167499 (n + 4)).toNat

end

end A060101.P15378303741543851352

namespace A060101

/-- `A060098(A167499(n+4))` -/
def P15378303741543851352.Spec : Prop :=
  ∀ n, P15378303741543851352.a n = A060101 n

end A060101

/-! ## A060101.P6484389480832256416

`A060098(A000217(n+5)+5)`
-/

namespace A060101.P6484389480832256416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060098 (A000217 (n + 5) + 5).toNat

end

end A060101.P6484389480832256416

namespace A060101

/-- `A060098(A000217(n+5)+5)` -/
def P6484389480832256416.Spec : Prop :=
  ∀ n, P6484389480832256416.a n = A060101 n

end A060101

/-!
# A060102: Bisection of triangle A060098: even-indexed members of column sequences of A060098 (not counting leading zeros).

The programs for A060102, there is no canonical definition to state claims against.
-/

/-! ## A060102.P12855420483485418090

`A276696(eq[0, A221396(n+1)])`
-/

namespace A060102.P12855420483485418090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060102.P12855420483485418090

/-! ## A060102.P9771590889624946911

`A276696(eq[0, A221408(n+1)])`
-/

namespace A060102.P9771590889624946911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060102.P9771590889624946911

/-!
# A060103: Fourth column (m=3) of triangle A060102.

The programs for A060103, the canonical program `A060103.P267985002561066742` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060103 has offset 0).

The definition of A060103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060103.P267985002561066742

`(4*n²+20*n+15)*C(n+4, 4)/15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060103

/-- `(4*n²+20*n+15)*C(n+4, 4)/15` -/
def P267985002561066742.Spec : Prop :=
  ∀ n, P267985002561066742.a n = (A060103 n : ℚ)

end A060103

/-! ## A060103.P8756008658983047170

`∑[∑[∑[∑[Δ[n²]²]]]]`
-/

namespace A060103.P8756008658983047170
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f5 (n + 1) : ℤ) - (f5 n : ℤ)) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060103.P8756008658983047170

namespace A060103

/-- `∑[∑[∑[∑[Δ[n²]²]]]]` -/
def P8756008658983047170.Spec : Prop :=
  ∀ n, P8756008658983047170.a n = A060103 n

end A060103

/-! ## A060103.P3358398110326842315

`abs(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1, a(1)=8`
-/

namespace A060103.P3358398110326842315
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060103.P3358398110326842315

namespace A060103

/-- `abs(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P3358398110326842315.Spec : Prop :=
  ∀ n, (P3358398110326842315.a n : ℤ) = A060103 n

end A060103

/-! ## A060103.P152686565907418370

`floor(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A060103.P152686565907418370
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060103.P152686565907418370

namespace A060103

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P152686565907418370.Spec : Prop :=
  ∀ n, (P152686565907418370.a n : ℤ) = A060103 n

end A060103

/-! ## A060103.P8873957375169532794

`ceil(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A060103.P8873957375169532794
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060103.P8873957375169532794

namespace A060103

/-- `ceil(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P8873957375169532794.Spec : Prop :=
  ∀ n, (P8873957375169532794.a n : ℤ) = A060103 n

end A060103

/-! ## A060103.P4749357534849207287

`round(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A060103.P4749357534849207287
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060103.P4749357534849207287

namespace A060103

/-- `round(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P4749357534849207287.Spec : Prop :=
  ∀ n, (P4749357534849207287.a n : ℤ) = A060103 n

end A060103

/-! ## A060103.P2973448295964995295

`∑[∑[∑[(2*n+1)²]]]+a(n-1)` with `a(0)=1`
-/

namespace A060103.P2973448295964995295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A060103.P2973448295964995295

namespace A060103

/-- `∑[∑[∑[(2*n+1)²]]]+a(n-1)` -/
def P2973448295964995295.Spec : Prop :=
  ∀ n, (P2973448295964995295.a n : ℤ) = A060103 n

end A060103

/-! ## A060103.P16503404077304935940

`A166842(n+1)-A001296(n)`
-/

namespace A060103.P16503404077304935940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166842 (n + 1) - A001296 n

end

end A060103.P16503404077304935940

namespace A060103

/-- `A166842(n+1)-A001296(n)` -/
def P16503404077304935940.Spec : Prop :=
  ∀ n, P16503404077304935940.a n = A060103 n

end A060103

/-! ## A060103.P16321395867800747417

`A050404(n)-A277935(n+1)/2`
-/

namespace A060103.P16321395867800747417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050404 n : ℚ) - (A277935 (n + 1) : ℚ) / 2

end

end A060103.P16321395867800747417

namespace A060103

/-- `A050404(n)-A277935(n+1)/2` -/
def P16321395867800747417.Spec : Prop :=
  ∀ n, P16321395867800747417.a n = (A060103 n : ℚ)

end A060103

/-! ## A060103.P16134305272552826960

`∑[∑[A006324(n+1)]]%A027796(n+8)`
-/

namespace A060103.P16134305272552826960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A027796 (n + 8))

end

end A060103.P16134305272552826960

namespace A060103

/-- `∑[∑[A006324(n+1)]]%A027796(n+8)` -/
def P16134305272552826960.Spec : Prop :=
  ∀ n, P16134305272552826960.a n = A060103 n

end A060103

/-! ## A060103.P13185134579922817427

`A060099(2*n)`
-/

namespace A060103.P13185134579922817427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n)

end

end A060103.P13185134579922817427

namespace A060103

/-- `A060099(2*n)` -/
def P13185134579922817427.Spec : Prop :=
  ∀ n, P13185134579922817427.a n = A060103 n

end A060103

/-! ## A060103.P11297942708692642608

`record[A060099(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A060103.P11297942708692642608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A060099 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060103.P11297942708692642608

namespace A060103

/-- `record[A060099(C(n, a(n-1)))]` -/
def P11297942708692642608.Spec : Prop :=
  ∀ n, P11297942708692642608.a n = A060103 n

end A060103

/-! ## A060103.P12072974057448417577

`A299335(2*n+1)-(A299336(2*n+1)+A299336(2*n))`
-/

namespace A060103.P12072974057448417577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (2 * n + 1) - (A299336 (2 * n + 1) + A299336 (2 * n))

end

end A060103.P12072974057448417577

namespace A060103

/-- `A299335(2*n+1)-(A299336(2*n+1)+A299336(2*n))` -/
def P12072974057448417577.Spec : Prop :=
  ∀ n, P12072974057448417577.a n = A060103 n

end A060103

/-! ## A060103.P2650079653484702146

`A060102(A167614(n+2))`
-/

namespace A060103.P2650079653484702146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060102 (A167614 (n + 2)).toNat

end

end A060103.P2650079653484702146

namespace A060103

/-- `A060102(A167614(n+2))` -/
def P2650079653484702146.Spec : Prop :=
  ∀ n, P2650079653484702146.a n = A060103 n

end A060103

/-!
# A060104: Fifth column (m=4) of triangle A060102.

The programs for A060104, the canonical program `A060104.P15170376219930487880` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060104 has offset 0).

The definition of A060104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060104.P15170376219930487880

`(2*n²+10*n+7)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060104

/-- `(2*n²+10*n+7)*C(n+6, 6)/7` -/
def P15170376219930487880.Spec : Prop :=
  ∀ n, P15170376219930487880.a n = (A060104 n : ℚ)

end A060104

/-! ## A060104.P5541866993309238839

`∑[∑[∑[∑[(2*n+1)*∑[(n+1)²]]]]]`
-/

namespace A060104.P5541866993309238839
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f5 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060104.P5541866993309238839

namespace A060104

/-- `∑[∑[∑[∑[(2*n+1)*∑[(n+1)²]]]]]` -/
def P5541866993309238839.Spec : Prop :=
  ∀ n, (P5541866993309238839.a n : ℤ) = A060104 n

end A060104

/-! ## A060104.P16211717818871288087

`A050494(n)+n*A050486(n)`
-/

namespace A060104.P16211717818871288087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050494 n + (n : ℤ) * A050486 n

end

end A060104.P16211717818871288087

namespace A060104

/-- `A050494(n)+n*A050486(n)` -/
def P16211717818871288087.Spec : Prop :=
  ∀ n, P16211717818871288087.a n = A060104 n

end A060104

/-! ## A060104.P14509178269682050931

`A060100(2*n)`
-/

namespace A060104.P14509178269682050931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (2 * n)

end

end A060104.P14509178269682050931

namespace A060104

/-- `A060100(2*n)` -/
def P14509178269682050931.Spec : Prop :=
  ∀ n, P14509178269682050931.a n = A060104 n

end A060104

/-! ## A060104.P10389618800412005267

`record[A060100(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A060104.P10389618800412005267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A060100 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P10389618800412005267

namespace A060104

/-- `record[A060100(C(n, a(n-1)))]` -/
def P10389618800412005267.Spec : Prop :=
  ∀ n, P10389618800412005267.a n = A060104 n

end A060104

/-! ## A060104.P2807868198110533448

`record[A060100(A014681(n))]`
-/

namespace A060104.P2807868198110533448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P2807868198110533448

namespace A060104

/-- `record[A060100(A014681(n))]` -/
def P2807868198110533448.Spec : Prop :=
  ∀ n, P2807868198110533448.a n = A060104 n

end A060104

/-! ## A060104.P14878541682817992222

`record[A060100(A230423(n))]`
-/

namespace A060104.P14878541682817992222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A230423 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P14878541682817992222

namespace A060104

/-- `record[A060100(A230423(n))]` -/
def P14878541682817992222.Spec : Prop :=
  ∀ n, P14878541682817992222.a n = A060104 n

end A060104

/-! ## A060104.P1329751891319913875

`record[A060100(A237420(n))]`
-/

namespace A060104.P1329751891319913875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P1329751891319913875

namespace A060104

/-- `record[A060100(A237420(n))]` -/
def P1329751891319913875.Spec : Prop :=
  ∀ n, P1329751891319913875.a n = A060104 n

end A060104

/-! ## A060104.P387309259611057616

`record[A060100(n)/A033999(n)]`
-/

namespace A060104.P387309259611057616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060100 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P387309259611057616

namespace A060104

/-- `record[A060100(n)/A033999(n)]` -/
def P387309259611057616.Spec : Prop :=
  ∀ n, P387309259611057616.a n = (A060104 n : ℚ)

end A060104

/-! ## A060104.P14430322198654291385

`record[A060100(A018838(n))]`
-/

namespace A060104.P14430322198654291385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P14430322198654291385

namespace A060104

/-- `record[A060100(A018838(n))]` -/
def P14430322198654291385.Spec : Prop :=
  ∀ n, P14430322198654291385.a n = A060104 n

end A060104

/-! ## A060104.P10747986574885558040

`record[A060100(A131380(n))]`
-/

namespace A060104.P10747986574885558040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060104.P10747986574885558040

namespace A060104

/-- `record[A060100(A131380(n))]` -/
def P10747986574885558040.Spec : Prop :=
  ∀ n, P10747986574885558040.a n = A060104 n

end A060104

/-! ## A060104.P15900918326344693104

`A060100(A004277(n))%A005810(n+1)`
-/

namespace A060104.P15900918326344693104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060100 (A004277 n).toNat) (A005810 (n + 1))

end

end A060104.P15900918326344693104

namespace A060104

/-- `A060100(A004277(n))%A005810(n+1)` -/
def P15900918326344693104.Spec : Prop :=
  ∀ n, P15900918326344693104.a n = A060104 n

end A060104

/-!
# A060105: Sixth column (m=5) of triangle A060102.

The programs for A060105, the canonical program `A060105.P4951254481858871071` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060105 has offset 0).

The definition of A060105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060105.P4951254481858871071

`∑[A059602(n)+A059601(n)]-A059602(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060105

/-- `∑[A059602(n)+A059601(n)]-A059602(n)` -/
def P4951254481858871071.Spec : Prop :=
  ∀ n, P4951254481858871071.a n = A060105 n

theorem P4951254481858871071.correct : P4951254481858871071.Spec := by
  intro n
  simp only [A060105]

end A060105

/-! ## A060105.P12221790142503566750

`A060101(2*n)`
-/

namespace A060105.P12221790142503566750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (2 * n)

end

end A060105.P12221790142503566750

namespace A060105

/-- `A060101(2*n)` -/
def P12221790142503566750.Spec : Prop :=
  ∀ n, P12221790142503566750.a n = A060105 n

end A060105

/-! ## A060105.P15716589604018606328

`record[A060101(and(n, n+1))]`
-/

namespace A060105.P15716589604018606328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060105.P15716589604018606328

namespace A060105

/-- `record[A060101(and(n, n+1))]` -/
def P15716589604018606328.Spec : Prop :=
  ∀ n, P15716589604018606328.a n = A060105 n

end A060105

/-! ## A060105.P2565361540442382022

`record[A060101(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A060105.P2565361540442382022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A060101 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060105.P2565361540442382022

namespace A060105

/-- `record[A060101(C(n, a(n-1)))]` -/
def P2565361540442382022.Spec : Prop :=
  ∀ n, P2565361540442382022.a n = A060105 n

end A060105

/-! ## A060105.P697545435628986934

`record[A060101(A014681(n))]`
-/

namespace A060105.P697545435628986934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060105.P697545435628986934

namespace A060105

/-- `record[A060101(A014681(n))]` -/
def P697545435628986934.Spec : Prop :=
  ∀ n, P697545435628986934.a n = A060105 n

end A060105

/-! ## A060105.P5217770499021273286

`record[A060101(1-A001511(n+1)+n)]`
-/

namespace A060105.P5217770499021273286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (1 - A001511 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060105.P5217770499021273286

namespace A060105

/-- `record[A060101(1-A001511(n+1)+n)]` -/
def P5217770499021273286.Spec : Prop :=
  ∀ n, P5217770499021273286.a n = A060105 n

end A060105

/-! ## A060105.P7556333473035383630

`record[A060101(n)/A000469(A001511(n+1))]`
-/

namespace A060105.P7556333473035383630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060101 n : ℚ) / (A000469 (A001511 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060105.P7556333473035383630

namespace A060105

/-- `record[A060101(n)/A000469(A001511(n+1))]` -/
def P7556333473035383630.Spec : Prop :=
  ∀ n, P7556333473035383630.a n = (A060105 n : ℚ)

end A060105

/-! ## A060105.P2177891008392257338

`or(A060101(n+n), A209229(∑[n+1]))`
-/

namespace A060105.P2177891008392257338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060101 (n + n)) (A209229 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A060105.P2177891008392257338

namespace A060105

/-- `or(A060101(n+n), A209229(∑[n+1]))` -/
def P2177891008392257338.Spec : Prop :=
  ∀ n, P2177891008392257338.a n = A060105 n

end A060105

/-!
# A060106: Numbers that are congruent to {1, 4, 6, 9, 11} mod 12. The ebony keys on a piano, starting with A0 = the 0th key.

The programs for A060106, the canonical program `A060106.P17042916321980568887` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060106 has offset 1).

The definition of A060106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060106.P17042916321980568887

`a(n-5)+12` with `a(0)=1, a(1)=4, a(2)=6, a(3)=9, a(4)=11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060106

/-- `a(n-5)+12` -/
def P17042916321980568887.Spec : Prop :=
  ∀ n, (P17042916321980568887.a n : ℤ) = A060106 (n + 1)

theorem P17042916321980568887.correct : P17042916321980568887.Spec := by
  intro n
  simp only [A060106, Nat.add_sub_cancel]

end A060106

/-! ## A060106.P5072622861042563979

`A081032(n+1)-1`
-/

namespace A060106.P5072622861042563979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1) - 1

end

end A060106.P5072622861042563979

namespace A060106

/-- `A081032(n+1)-1` -/
def P5072622861042563979.Spec : Prop :=
  ∀ n, P5072622861042563979.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P1232805130825856575

`ceil(12*n/5)+1`
-/

namespace A060106.P1232805130825856575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈12 * ((n : ℚ) / 5)⌉ + 1

end

end A060106.P1232805130825856575

namespace A060106

/-- `ceil(12*n/5)+1` -/
def P1232805130825856575.Spec : Prop :=
  ∀ n, P1232805130825856575.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P10652942048178743608

`comp[floor(or(2, 12*n)/7)]`
-/

namespace A060106.P10652942048178743608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (12 * n) : ℚ) / 7⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060106.P10652942048178743608

namespace A060106

/-- `comp[floor(or(2, 12*n)/7)]` -/
def P10652942048178743608.Spec : Prop :=
  ∀ n, (P10652942048178743608.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P6902499968392494043

`comp[((n%12)²%5)%2+n]`
-/

namespace A060106.P6902499968392494043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 12) ^ 2 % 5 % 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A060106.P6902499968392494043

namespace A060106

/-- `comp[((n%12)²%5)%2+n]` -/
def P6902499968392494043.Spec : Prop :=
  ∀ n, (P6902499968392494043.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P14176961683375281454

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3, a(4)=2, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A060106.P14176961683375281454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3, 2, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060106.P14176961683375281454

namespace A060106

/-- `∑[floor(a(n-5))]` -/
def P14176961683375281454.Spec : Prop :=
  ∀ n, (P14176961683375281454.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P8814438555954274457

`∑[a(n-5)%4]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3, a(4)=2, a(5)=2`
-/

namespace A060106.P8814438555954274457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3, 2, 2] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060106.P8814438555954274457

namespace A060106

/-- `∑[a(n-5)%4]` -/
def P8814438555954274457.Spec : Prop :=
  ∀ n, (P8814438555954274457.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P17193704223029063461

`record[2-((-1)^n-n-floor(n/5))]`
-/

namespace A060106.P17193704223029063461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((-1) ^ n - (n : ℤ) - ⌊(n : ℚ) / 5⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060106.P17193704223029063461

namespace A060106

/-- `record[2-((-1)^n-n-floor(n/5))]` -/
def P17193704223029063461.Spec : Prop :=
  ∀ n, P17193704223029063461.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P12191121718860545386

`abs(∑[((5*floor(n/5))%2+n)%2+2]-1)`
-/

namespace A060106.P12191121718860545386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (5 * ⌊(n : ℚ) / 5⌋) 2 + (n : ℤ)) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A060106.P12191121718860545386

namespace A060106

/-- `abs(∑[((5*floor(n/5))%2+n)%2+2]-1)` -/
def P12191121718860545386.Spec : Prop :=
  ∀ n, P12191121718860545386.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P18407156353869731802

`round(A017605(n)/5)`
-/

namespace A060106.P18407156353869731802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017605 n : ℚ) / 5)

end

end A060106.P18407156353869731802

namespace A060106

/-- `round(A017605(n)/5)` -/
def P18407156353869731802.Spec : Prop :=
  ∀ n, P18407156353869731802.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P5149852079483305871

`abs(floor(3*n/5)-A016777(n))`
-/

namespace A060106.P5149852079483305871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊3 * ((n : ℚ) / 5)⌋ - A016777 n|

end

end A060106.P5149852079483305871

namespace A060106

/-- `abs(floor(3*n/5)-A016777(n))` -/
def P5149852079483305871.Spec : Prop :=
  ∀ n, P5149852079483305871.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P2879860563954743141

`Δ[A398196(n)]`
-/

namespace A060106.P2879860563954743141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060106.P2879860563954743141

namespace A060106

/-- `Δ[A398196(n)]` -/
def P2879860563954743141.Spec : Prop :=
  ∀ n, P2879860563954743141.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P6705622894217362661

`Δ[A011858(n+1)+n²]`
-/

namespace A060106.P6705622894217362661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060106.P6705622894217362661

namespace A060106

/-- `Δ[A011858(n+1)+n²]` -/
def P6705622894217362661.Spec : Prop :=
  ∀ n, P6705622894217362661.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P10660089646004804878

`comp[A060107(n+1)]`
-/

namespace A060106.P10660089646004804878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060106.P10660089646004804878

namespace A060106

/-- `comp[A060107(n+1)]` -/
def P10660089646004804878.Spec : Prop :=
  ∀ n, (P10660089646004804878.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P13397231469664297362

`A047252(2*(n+1))`
-/

namespace A060106.P13397231469664297362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (2 * (n + 1))

end

end A060106.P13397231469664297362

namespace A060106

/-- `A047252(2*(n+1))` -/
def P13397231469664297362.Spec : Prop :=
  ∀ n, P13397231469664297362.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P17234352452762820337

`Δ[∑[A047263(2*n+1)]-n]`
-/

namespace A060106.P17234352452762820337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060106.P17234352452762820337

namespace A060106

/-- `Δ[∑[A047263(2*n+1)]-n]` -/
def P17234352452762820337.Spec : Prop :=
  ∀ n, P17234352452762820337.a n = A060106 (n + 1)

end A060106

/-! ## A060106.P8156735834492057204

`filter[n+1, A059620(#)]`
-/

namespace A060106.P8156735834492057204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j) = 1) n)

end

end A060106.P8156735834492057204

namespace A060106

/-- `filter[n+1, A059620(#)]` -/
def P8156735834492057204.Spec : Prop :=
  ∀ n, (P8156735834492057204.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P17899175302154924041

`lt[1, Δ[n*A040231(n)]]`
-/

namespace A060106.P17899175302154924041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040231 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060106.P17899175302154924041

namespace A060106

/-- `lt[1, Δ[n*A040231(n)]]` -/
def P17899175302154924041.Spec : Prop :=
  ∀ n, (P17899175302154924041.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P459637835013799824

`lt[acot(1), n*A059620(n)]`
-/

namespace A060106.P459637835013799824
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A060106.P459637835013799824

namespace A060106

/-- `lt[acot(1), n*A059620(n)]` -/
def P459637835013799824.Spec : Prop :=
  ∀ n, (P459637835013799824.a n : ℤ) = A060106 (n + 1)

end A060106

/-! ## A060106.P15158224684131784411

`lt[n, n*A040231(n+1)]`
-/

namespace A060106.P15158224684131784411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060106.P15158224684131784411

namespace A060106

/-- `lt[n, n*A040231(n+1)]` -/
def P15158224684131784411.Spec : Prop :=
  ∀ n, (P15158224684131784411.a n : ℤ) = A060106 (n + 1)

end A060106

/-!
# A060107: Numbers that are congruent to {0, 2, 3, 5, 7, 8, 10} mod 12. The ivory keys on a piano, start with A0 = the 0th key.

The programs for A060107, the canonical program `A060107.P5874100404945732616` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060107 has offset 1).

The definition of A060107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060107.P5874100404945732616

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=8, a(6)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060107

/-- `a(n-7)+12` -/
def P5874100404945732616.Spec : Prop :=
  ∀ n, (P5874100404945732616.a n : ℤ) = A060107 (n + 1)

theorem P5874100404945732616.correct : P5874100404945732616.Spec := by
  intro n
  simp only [A060107, Nat.add_sub_cancel]

end A060107

/-! ## A060107.P3037916462801123172

`A081031(n+1)-1`
-/

namespace A060107.P3037916462801123172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081031 (n + 1) - 1

end

end A060107.P3037916462801123172

namespace A060107

/-- `A081031(n+1)-1` -/
def P3037916462801123172.Spec : Prop :=
  ∀ n, P3037916462801123172.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P18382184161530219058

`floor((12*n+2)/7)`
-/

namespace A060107.P18382184161530219058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * n + 2 : ℚ) / 7⌋

end

end A060107.P18382184161530219058

namespace A060107

/-- `floor((12*n+2)/7)` -/
def P18382184161530219058.Spec : Prop :=
  ∀ n, P18382184161530219058.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P13041034892446450118

`comp[n^(((n%12)²%5)%2)]`
-/

namespace A060107.P13041034892446450118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n % 12) ^ 2 % 5 % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A060107.P13041034892446450118

namespace A060107

/-- `comp[n^(((n%12)²%5)%2)]` -/
def P13041034892446450118.Spec : Prop :=
  ∀ n, (P13041034892446450118.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P1291183257837208543

`2*n-ceil(a(n-1)/6)` with `a(0)=0`
-/

namespace A060107.P1291183257837208543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ⌈(a (n - 1) : ℚ) / 6⌉

end

end A060107.P1291183257837208543

namespace A060107

/-- `2*n-ceil(a(n-1)/6)` -/
def P1291183257837208543.Spec : Prop :=
  ∀ n, P1291183257837208543.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P8826615229345603809

`comp[A060106(n+1)]`
-/

namespace A060107.P8826615229345603809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060107.P8826615229345603809

namespace A060107

/-- `comp[A060106(n+1)]` -/
def P8826615229345603809.Spec : Prop :=
  ∀ n, (P8826615229345603809.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P3369568681938724684

`comp[A081032(n+1)-1]`
-/

namespace A060107.P3369568681938724684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060107.P3369568681938724684

namespace A060107

/-- `comp[A081032(n+1)-1]` -/
def P3369568681938724684.Spec : Prop :=
  ∀ n, (P3369568681938724684.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P8351907731469108220

`comp[A047299(n+2)+n]`
-/

namespace A060107.P8351907731469108220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060107.P8351907731469108220

namespace A060107

/-- `comp[A047299(n+2)+n]` -/
def P8351907731469108220.Spec : Prop :=
  ∀ n, (P8351907731469108220.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P6663393971251214870

`A238469(n)+A190719(n+1)`
-/

namespace A060107.P6663393971251214870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238469 n + A190719 (n + 1)

end

end A060107.P6663393971251214870

namespace A060107

/-- `A238469(n)+A190719(n+1)` -/
def P6663393971251214870.Spec : Prop :=
  ∀ n, P6663393971251214870.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P12137325079574920569

`and(A083028(n+1), A083033(n+1))`
-/

namespace A060107.P12137325079574920569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083028 (n + 1)) (A083033 (n + 1))

end

end A060107.P12137325079574920569

namespace A060107

/-- `and(A083028(n+1), A083033(n+1))` -/
def P12137325079574920569.Spec : Prop :=
  ∀ n, P12137325079574920569.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P5236679517145942820

`∪[A082977(n+1)+2, A083031(n+1)]`
-/

namespace A060107.P5236679517145942820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060107.P5236679517145942820

namespace A060107

/-- `∪[A082977(n+1)+2, A083031(n+1)]` -/
def P5236679517145942820.Spec : Prop :=
  ∀ n, (P5236679517145942820.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P12501343865996591755

`A083028(n+1)+A083120(n+1)-A083026(n+1)`
-/

namespace A060107.P12501343865996591755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A083120 (n + 1) - A083026 (n + 1))

end

end A060107.P12501343865996591755

namespace A060107

/-- `A083028(n+1)+A083120(n+1)-A083026(n+1)` -/
def P12501343865996591755.Spec : Prop :=
  ∀ n, P12501343865996591755.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P4747549482785120861

`A083120(n+2)-2`
-/

namespace A060107.P4747549482785120861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 2) - 2

end

end A060107.P4747549482785120861

namespace A060107

/-- `A083120(n+2)-2` -/
def P4747549482785120861.Spec : Prop :=
  ∀ n, P4747549482785120861.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P10808424048703238359

`A083089(n+3)-4`
-/

namespace A060107.P10808424048703238359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 3) - 4

end

end A060107.P10808424048703238359

namespace A060107

/-- `A083089(n+3)-4` -/
def P10808424048703238359.Spec : Prop :=
  ∀ n, P10808424048703238359.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P9838691249254929

`2*n-A057356(n+2)`
-/

namespace A060107.P9838691249254929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A057356 (n + 2)

end

end A060107.P9838691249254929

namespace A060107

/-- `2*n-A057356(n+2)` -/
def P9838691249254929.Spec : Prop :=
  ∀ n, P9838691249254929.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P16113380520918499309

`Δ[n²-A008739(n+1)]`
-/

namespace A060107.P16113380520918499309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060107.P16113380520918499309

namespace A060107

/-- `Δ[n²-A008739(n+1)]` -/
def P16113380520918499309.Spec : Prop :=
  ∀ n, P16113380520918499309.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P10661127288479149497

`2*n-A004526(A057358(n+2))`
-/

namespace A060107.P10661127288479149497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004526 (A057358 (n + 2)).toNat

end

end A060107.P10661127288479149497

namespace A060107

/-- `2*n-A004526(A057358(n+2))` -/
def P10661127288479149497.Spec : Prop :=
  ∀ n, P10661127288479149497.a n = A060107 (n + 1)

end A060107

/-! ## A060107.P15726705468668703475

`lt[n*A059620(n), 1]`
-/

namespace A060107.P15726705468668703475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059620 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060107.P15726705468668703475

namespace A060107

/-- `lt[n*A059620(n), 1]` -/
def P15726705468668703475.Spec : Prop :=
  ∀ n, (P15726705468668703475.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P15958795004227848416

`eq[A002483(n), A059620(n)]`
-/

namespace A060107.P15958795004227848416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060107.P15958795004227848416

namespace A060107

/-- `eq[A002483(n), A059620(n)]` -/
def P15958795004227848416.Spec : Prop :=
  ∀ n, (P15958795004227848416.a n : ℤ) = A060107 (n + 1)

end A060107

/-! ## A060107.P8136309741793406322

`lt[A059620(n), acot(A007947(n+1))]`
-/

namespace A060107.P8136309741793406322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007947 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A060107.P8136309741793406322

namespace A060107

/-- `lt[A059620(n), acot(A007947(n+1))]` -/
def P8136309741793406322.Spec : Prop :=
  ∀ n, (P8136309741793406322.a n : ℤ) = A060107 (n + 1)

end A060107

/-!
# A060108: Sequence of sums based on primes = 7 mod 8.

The programs for A060108, the canonical program `A060108.P5431568237961309099` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060108 has offset 1).

The definition of A060108 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060108.P5431568237961309099

`(A007522(n+1)²-1)/24`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060108

/-- `(A007522(n+1)²-1)/24` -/
def P5431568237961309099.Spec : Prop :=
  ∀ n, P5431568237961309099.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P14226167859585919614

`2/3*A282039(n+1)`
-/

namespace A060108.P14226167859585919614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A282039 (n + 1) : ℚ)

end

end A060108.P14226167859585919614

namespace A060108

/-- `2/3*A282039(n+1)` -/
def P14226167859585919614.Spec : Prop :=
  ∀ n, P14226167859585919614.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P9054233038804332329

`C(4*(A139487(n+1)+1), 2)/3`
-/

namespace A060108.P9054233038804332329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * (A139487 (n + 1) + 1)).toNat 2 : ℚ) / 3

end

end A060108.P9054233038804332329

namespace A060108

/-- `C(4*(A139487(n+1)+1), 2)/3` -/
def P9054233038804332329.Spec : Prop :=
  ∀ n, P9054233038804332329.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P11109052391940518131

`A000217(A186302(n+1))/3`
-/

namespace A060108.P11109052391940518131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A186302 (n + 1)).toNat : ℚ) / 3

end

end A060108.P11109052391940518131

namespace A060108

/-- `A000217(A186302(n+1))/3` -/
def P11109052391940518131.Spec : Prop :=
  ∀ n, P11109052391940518131.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P8876169862399663501

`A000217(floor(A007522(n+1)/2))/3`
-/

namespace A060108.P8876169862399663501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 ⌊(A007522 (n + 1) : ℚ) / 2⌋.toNat : ℚ) / 3

end

end A060108.P8876169862399663501

namespace A060108

/-- `A000217(floor(A007522(n+1)/2))/3` -/
def P8876169862399663501.Spec : Prop :=
  ∀ n, P8876169862399663501.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P4154024415023974802

`A087539(A186303(n+1))`
-/

namespace A060108.P4154024415023974802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087539 (A186303 (n + 1)).toNat

end

end A060108.P4154024415023974802

namespace A060108

/-- `A087539(A186303(n+1))` -/
def P4154024415023974802.Spec : Prop :=
  ∀ n, P4154024415023974802.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P17388982839257394186

`A001840(A186302(n+1)-1)`
-/

namespace A060108.P17388982839257394186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A186302 (n + 1) - 1).toNat

end

end A060108.P17388982839257394186

namespace A060108

/-- `A001840(A186302(n+1)-1)` -/
def P17388982839257394186.Spec : Prop :=
  ∀ n, P17388982839257394186.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P10373586280120536355

`A001840(xor(1, A186302(n+1)))`
-/

namespace A060108.P10373586280120536355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (Int.xor 1 (A186302 (n + 1))).toNat

end

end A060108.P10373586280120536355

namespace A060108

/-- `A001840(xor(1, A186302(n+1)))` -/
def P10373586280120536355.Spec : Prop :=
  ∀ n, P10373586280120536355.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P16275334807108176498

`A008742(p?[A004771(n)])`
-/

namespace A060108.P16275334807108176498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A060108.P16275334807108176498

namespace A060108

/-- `A008742(p?[A004771(n)])` -/
def P16275334807108176498.Spec : Prop :=
  ∀ n, P16275334807108176498.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P17991792734452638023

`A008742(A007522(n+1))`
-/

namespace A060108.P17991792734452638023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A007522 (n + 1)).toNat

end

end A060108.P17991792734452638023

namespace A060108

/-- `A008742(A007522(n+1))` -/
def P17991792734452638023.Spec : Prop :=
  ∀ n, P17991792734452638023.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P10505713669630130461

`A008731(A186304(n+1))`
-/

namespace A060108.P10505713669630130461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (A186304 (n + 1)).toNat

end

end A060108.P10505713669630130461

namespace A060108

/-- `A008731(A186304(n+1))` -/
def P10505713669630130461.Spec : Prop :=
  ∀ n, P10505713669630130461.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P11885132922737806638

`A008742(A045382(n+2))`
-/

namespace A060108.P11885132922737806638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A045382 (n + 2)).toNat

end

end A060108.P11885132922737806638

namespace A060108

/-- `A008742(A045382(n+2))` -/
def P11885132922737806638.Spec : Prop :=
  ∀ n, P11885132922737806638.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P12183445865458201659

`A008742(p?[A004215(n+1)])`
-/

namespace A060108.P12183445865458201659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A060108.P12183445865458201659

namespace A060108

/-- `A008742(p?[A004215(n+1)])` -/
def P12183445865458201659.Spec : Prop :=
  ∀ n, P12183445865458201659.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P11428805313919448955

`A008742(p?[A004628(n+1)])`
-/

namespace A060108.P11428805313919448955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A060108.P11428805313919448955

namespace A060108

/-- `A008742(p?[A004628(n+1)])` -/
def P11428805313919448955.Spec : Prop :=
  ∀ n, P11428805313919448955.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P16096463978541887247

`A002620(p?[A004771(n)])/6`
-/

namespace A060108.P16096463978541887247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 6

end

end A060108.P16096463978541887247

namespace A060108

/-- `A002620(p?[A004771(n)])/6` -/
def P16096463978541887247.Spec : Prop :=
  ∀ n, P16096463978541887247.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P6921478613072985437

`A115000(2*A186302(n+1)+1)`
-/

namespace A060108.P6921478613072985437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115000 (2 * A186302 (n + 1) + 1).toNat

end

end A060108.P6921478613072985437

namespace A060108

/-- `A115000(2*A186302(n+1)+1)` -/
def P6921478613072985437.Spec : Prop :=
  ∀ n, P6921478613072985437.a n = A060108 (n + 1)

end A060108

/-! ## A060108.P5864603636973172881

`A002620(record[A014963(or(7, 2*n))])/6`
-/

namespace A060108.P5864603636973172881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor 7 (2 * n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 6

end

end A060108.P5864603636973172881

namespace A060108

/-- `A002620(record[A014963(or(7, 2*n))])/6` -/
def P5864603636973172881.Spec : Prop :=
  ∀ n, P5864603636973172881.a n = (A060108 (n + 1) : ℚ)

end A060108

/-! ## A060108.P11012873799040517549

`A115000(A186302(n+1)+A186302(n+1)+1)`
-/

namespace A060108.P11012873799040517549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115000 (A186302 (n + 1) + (A186302 (n + 1) + 1)).toNat

end

end A060108.P11012873799040517549

namespace A060108

/-- `A115000(A186302(n+1)+A186302(n+1)+1)` -/
def P11012873799040517549.Spec : Prop :=
  ∀ n, P11012873799040517549.a n = A060108 (n + 1)

end A060108

/-!
# A060109: Numbers in Morse code, with 1 for a dot, 2 for a dash and 0 between digits/letters.

The programs for A060109, there is no canonical definition to state claims against.
-/

/-! ## A060109.P5751912713793314447

`A007089(A060110(n))`
-/

namespace A060109.P5751912713793314447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060110 n).toNat

end

end A060109.P5751912713793314447

/-!
# A060111: Dimensions of graded algebra associated with meanders.

The programs for A060111, there is no canonical definition to state claims against.
-/

/-! ## A060111.P12087210576319503414

`A028310(A291030(n)-A153234(n))`
-/

namespace A060111.P12087210576319503414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A291030 n - A153234 n).toNat

end

end A060111.P12087210576319503414

/-! ## A060111.P3427511160298765852

`A077824(A001096(n))`
-/

namespace A060111.P3427511160298765852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077824 (A001096 n).toNat

end

end A060111.P3427511160298765852

/-!
# A060112: Sums of nonconsecutive factorial numbers.

The programs for A060112, there is no canonical definition to state claims against.
-/

/-! ## A060112.P12434547825341167739

`A059590(eq[0, and(n, 2*n)])`
-/

namespace A060112.P12434547825341167739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060112.P12434547825341167739

/-! ## A060112.P7016602844005510171

`A059590(A003714(n))`
-/

namespace A060112.P7016602844005510171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A003714 n).toNat

end

end A060112.P7016602844005510171

/-! ## A060112.P14803986785855745192

`A059590(eq[1, A344180(n)])`
-/

namespace A060112.P14803986785855745192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060112.P14803986785855745192

/-! ## A060112.P2109911879486121103

`A059590(eq[n, A184617(n)])`
-/

namespace A060112.P2109911879486121103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060112.P2109911879486121103

/-! ## A060112.P16799582138236736342

`A059590(record[n/A284569(n)])`
-/

namespace A060112.P16799582138236736342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A284569 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A060112.P16799582138236736342

/-! ## A060112.P1453981289161996431

`A059590(record[n/A344180(n)])`
-/

namespace A060112.P1453981289161996431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A344180 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A060112.P1453981289161996431

/-! ## A060112.P11408252013734496887

`A059590(record[and(n, 1-A008619(n+1))])`
-/

namespace A060112.P11408252013734496887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A008619 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060112.P11408252013734496887

/-! ## A060112.P18220770398460898166

`A059590(eq[2, A246029(A246029(n))])`
-/

namespace A060112.P18220770398460898166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A246029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060112.P18220770398460898166

/-! ## A060112.P12451593732806784156

`A059590(record[A265263(n)])`
-/

namespace A060112.P12451593732806784156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060112.P12451593732806784156

/-! ## A060112.P1885736460953571531

`∩[A059590(n), A060133(n)]`
-/

namespace A060112.P1885736460953571531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060112.P1885736460953571531

/-! ## A060112.P14236977444252394776

`∩[A014489(n), A059590(n)]`
-/

namespace A060112.P14236977444252394776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060112.P14236977444252394776

/-!
# A060113: Least common multiple of all orbit lengths of the permutation A038776.

The programs for A060113, there is no canonical definition to state claims against.
-/

/-! ## A060113.P8258390018322744618

`∏[A060115(abs(1-n))]`
-/

namespace A060113.P8258390018322744618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060115 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060113.P8258390018322744618

/-! ## A060113.P4603614052777336218

`a(n-1)*A060115(n-1)` with `a(0)=1`
-/

namespace A060113.P4603614052777336218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A060115 (n - 1)

end

end A060113.P4603614052777336218

/-! ## A060113.P17098035633797217862

`∏[A060115(n)]/A060115(n)`
-/

namespace A060113.P17098035633797217862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060115 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060115 n : ℚ)

end

end A060113.P17098035633797217862

/-!
# A060114: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506.

The programs for A060114, there is no canonical definition to state claims against.
-/

/-! ## A060114.P6427897979772257643

`lcm(A089871(n), A089875(n))`
-/

namespace A060114.P6427897979772257643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089871 n) (A089875 n)

end

end A060114.P6427897979772257643

/-! ## A060114.P12965653268451645625

`A000032(C(n, n²))*A089403(n)`
-/

namespace A060114.P12965653268451645625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (n ^ 2)) * A089403 n

end

end A060114.P12965653268451645625

/-! ## A060114.P1037207630330955940

`A020639(A089404(n))*A089403(n)`
-/

namespace A060114.P1037207630330955940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089404 n).toNat * A089403 n

end

end A060114.P1037207630330955940

/-! ## A060114.P17659090005574811248

`A020639(A089423(n))*A089403(n)`
-/

namespace A060114.P17659090005574811248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089423 n).toNat * A089403 n

end

end A060114.P17659090005574811248

/-! ## A060114.P5806696960631392701

`A020639(A089429(n))*A089403(n)`
-/

namespace A060114.P5806696960631392701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089429 n).toNat * A089403 n

end

end A060114.P5806696960631392701

/-!
# A060115: First quotients of A060113.

The programs for A060115, there is no canonical definition to state claims against.
-/

/-! ## A060115.P3227772194481806712

`ratio[A060113(n)]`
-/

namespace A060115.P3227772194481806712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060113 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A060115.P3227772194481806712

/-! ## A060115.P12744633535233453409

`A060113(n+1)/A060113(n)`
-/

namespace A060115.P12744633535233453409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060113 (n + 1) : ℚ) / (A060113 n : ℚ)

end

end A060115.P12744633535233453409

/-!
# A060116: First quotients of A060114.

The programs for A060116, there is no canonical definition to state claims against.
-/

/-! ## A060116.P956862855543197888

`A060114(n+1)/A060114(n)`
-/

namespace A060116.P956862855543197888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 (n + 1) : ℚ) / (A060114 n : ℚ)

end

end A060116.P956862855543197888

/-! ## A060116.P17580127910684530734

`ratio[A060114(n)]%A081570(2*n+3)`
-/

namespace A060116.P17580127910684530734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A081570 (2 * n + 3))

end

end A060116.P17580127910684530734

/-!
# A060117: A list of all finite permutations in "PermUnrank3R" ordering. (Inverses of the permutations of A060118.)

The programs for A060117, there is no canonical definition to state claims against.
-/

/-! ## A060117.P9056302729861620571

`A090193(A090197(n+3)+1)+1`
-/

namespace A060117.P9056302729861620571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (A090197 (n + 3) + 1).toNat + 1

end

end A060117.P9056302729861620571

/-! ## A060117.P6450828646413356970

`A318473(A351405(n+1))+A000122(n)`
-/

namespace A060117.P6450828646413356970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (A351405 (n + 1)).toNat + A000122 n

end

end A060117.P6450828646413356970

/-! ## A060117.P3308551138799407285

`A318984(n)+A318473(A351405(n+1))`
-/

namespace A060117.P3308551138799407285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n + A318473 (A351405 (n + 1)).toNat

end

end A060117.P3308551138799407285

/-! ## A060117.P16102936053548795900

`A007413(abs(A000040(n+1)-A286782(n)))`
-/

namespace A060117.P16102936053548795900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 |A000040 (n + 1) - A286782 n|.toNat

end

end A060117.P16102936053548795900

/-! ## A060117.P10092451008296426024

`A090822(A221446(n+1)*A350432(n+1))`
-/

namespace A060117.P10092451008296426024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A221446 (n + 1) * A350432 (n + 1)).toNat

end

end A060117.P10092451008296426024

/-!
# A060118: A list of all finite permutations in "PermUnrank3L" ordering. (Inverses of the permutations of A060117.)

The programs for A060118, there is no canonical definition to state claims against.
-/

/-! ## A060118.P14024845562949830325

`A079907(n+1)%(A079882(3*n)+3)`
-/

namespace A060118.P14024845562949830325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079907 (n + 1)) (A079882 (3 * n) + 3)

end

end A060118.P14024845562949830325

/-! ## A060118.P5879113788313947325

`A260452(∑[A004093(A067948(n+1))])`
-/

namespace A060118.P5879113788313947325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (A067948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060118.P5879113788313947325

/-! ## A060118.P7578643919756962173

`A358379(A292508(3*n+4)+1)`
-/

namespace A060118.P7578643919756962173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A292508 (3 * n + 4) + 1).toNat

end

end A060118.P7578643919756962173

/-! ## A060118.P9624563124814178585

`A005811(A001196(A158745(n)))`
-/

namespace A060118.P9624563124814178585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A001196 (A158745 n).toNat).toNat

end

end A060118.P9624563124814178585

/-! ## A060118.P9707388544496647118

`A005811(A158745(A055646(n)))`
-/

namespace A060118.P9707388544496647118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A158745 (A055646 n).toNat).toNat

end

end A060118.P9707388544496647118

/-!
# A060119: Positions of permutations of A060117 in reversed colexicographic ordering A055089.

The programs for A060119, there is no canonical definition to state claims against.
-/

/-! ## A060119.P2929866310446736352

`A056019(A060120(n))`
-/

namespace A060119.P2929866310446736352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A060120 n).toNat

end

end A060119.P2929866310446736352

/-! ## A060119.P2880504104285446958

`A060120(A060125(n))`
-/

namespace A060119.P2880504104285446958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A060125 n).toNat

end

end A060119.P2880504104285446958

/-! ## A060119.P9823303057190372773

`A060120(A060126(A060120(n)%A030299(n+1)))`
-/

namespace A060119.P9823303057190372773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A060126 (Int.tmod (A060120 n) (A030299 (n + 1))).toNat).toNat

end

end A060119.P9823303057190372773

/-! ## A060119.P10211611578015627966

`A060120(A060126(A060120(A060120(A060127(n)))))`
-/

namespace A060119.P10211611578015627966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A060126 (A060120 (A060120 (A060127 n).toNat).toNat).toNat).toNat

end

end A060119.P10211611578015627966

/-! ## A060119.P12239858401585544637

`A322001(A064039(n+1))`
-/

namespace A060119.P12239858401585544637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A064039 (n + 1)).toNat

end

end A060119.P12239858401585544637

/-!
# A060120: Positions of permutations of A060118 in the canonical permutation list A055089.

The programs for A060120, there is no canonical definition to state claims against.
-/

/-! ## A060120.P8054551219891012710

`A056019(A060119(n))`
-/

namespace A060120.P8054551219891012710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A060119 n).toNat

end

end A060120.P8054551219891012710

/-! ## A060120.P13652731773734276000

`A060119(A060125(n))`
-/

namespace A060120.P13652731773734276000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A060125 n).toNat

end

end A060120.P13652731773734276000

/-! ## A060120.P15094446785346756434

`A060119(A060127(A060119(A060119(A060126(n)))))`
-/

namespace A060120.P15094446785346756434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A060127 (A060119 (A060119 (A060126 n).toNat).toNat).toNat).toNat

end

end A060120.P15094446785346756434

/-! ## A060120.P1139963011033114125

`A060119(A275958(A225901(n)))`
-/

namespace A060120.P1139963011033114125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A275958 (A225901 n).toNat).toNat

end

end A060120.P1139963011033114125

/-! ## A060120.P13565410651844323718

`A060119(A225901(A275957(n)))`
-/

namespace A060120.P13565410651844323718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A225901 (A275957 n).toNat).toNat

end

end A060120.P13565410651844323718

/-! ## A060120.P12687857855184808773

`A060119(A060127(A060119(A261218(A261218(n)))))`
-/

namespace A060120.P12687857855184808773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A060127 (A060119 (A261218 (A261218 n).toNat).toNat).toNat).toNat

end

end A060120.P12687857855184808773

/-!
# A060123: Second solution mod p of x^3 = 2 for primes p such that more than one solution exists.

The programs for A060123, there is no canonical definition to state claims against.
-/

/-! ## A060123.P17608349550552329647

`A296241(A315844(2*n)+A315820(2*n+1))`
-/

namespace A060123.P17608349550552329647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296241 (A315844 (2 * n) + A315820 (2 * n + 1)).toNat

end

end A060123.P17608349550552329647

/-!
# A060125: Self-inverse infinite permutation which shows the position of the inverse of each finite permutation in A060117 (or A060118) in the same sequence; or equally, the cross-indexing between A060117 and A060118.

The programs for A060125, there is no canonical definition to state claims against.
-/

/-! ## A060125.P9727424850170736893

`A060127(A060119(n))`
-/

namespace A060125.P9727424850170736893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 (A060119 n).toNat

end

end A060125.P9727424850170736893

/-! ## A060125.P10917014739552335901

`A060126(A060120(n))`
-/

namespace A060125.P10917014739552335901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A060120 n).toNat

end

end A060125.P10917014739552335901

/-! ## A060125.P8248071819129455648

`A275958(A225901(n))`
-/

namespace A060125.P8248071819129455648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 (A225901 n).toNat

end

end A060125.P8248071819129455648

/-! ## A060125.P17837513873750126801

`A225901(A275957(n))`
-/

namespace A060125.P17837513873750126801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275957 n).toNat

end

end A060125.P17837513873750126801

/-! ## A060125.P296669227952934166

`A276008(A153880(n))-A275957(n)`
-/

namespace A060125.P296669227952934166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A153880 n).toNat - A275957 n

end

end A060125.P296669227952934166

/-! ## A060125.P17043704079915116240

`A276008(A255411(n))-A275957(n)`
-/

namespace A060125.P17043704079915116240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A255411 n).toNat - A275957 n

end

end A060125.P17043704079915116240

/-!
# A060126: Positions of permutations of A055089 in the permutation sequence A060117.

The programs for A060126, there is no canonical definition to state claims against.
-/

/-! ## A060126.P7771480726375710294

`A060127(A056019(n))`
-/

namespace A060126.P7771480726375710294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 (A056019 n).toNat

end

end A060126.P7771480726375710294

/-! ## A060126.P11797034256274829775

`A060125(A060127(n))`
-/

namespace A060126.P11797034256274829775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A060127 n).toNat

end

end A060126.P11797034256274829775

/-! ## A060126.P17005730203747503512

`xor(A060119(n), A137579(A103609(n)))`
-/

namespace A060126.P17005730203747503512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060119 n) (A137579 (A103609 n).toNat)

end

end A060126.P17005730203747503512

/-! ## A060126.P13815187194518264964

`A060119(n)+∑[A210714(A185316(n))]`
-/

namespace A060126.P13815187194518264964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210714 (A185316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060126.P13815187194518264964

/-! ## A060126.P10196062072646902734

`∑{e}[A000079(A060119(n)), #]`
-/

namespace A060126.P10196062072646902734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A060119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A060126.P10196062072646902734

/-!
# A060127: Positions of permutations of A055089 in the permutation sequence A060118. Inverse permutation to A060120.

The programs for A060127, there is no canonical definition to state claims against.
-/

/-! ## A060127.P15247927946088140378

`A060125(A060126(n))`
-/

namespace A060127.P15247927946088140378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A060126 n).toNat

end

end A060127.P15247927946088140378

/-! ## A060127.P17737383260379370114

`A060126(A056019(n))`
-/

namespace A060127.P17737383260379370114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A056019 n).toNat

end

end A060127.P17737383260379370114

/-! ## A060127.P14093982300639269225

`A060126(A060120(A060126(n)%A030299(n+1)))`
-/

namespace A060127.P14093982300639269225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A060120 (Int.tmod (A060126 n) (A030299 (n + 1))).toNat).toNat

end

end A060127.P14093982300639269225

/-! ## A060127.P16063163570426244334

`A275958(A225901(A060126(A225901(A225901(n)))))`
-/

namespace A060127.P16063163570426244334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 (A225901 (A060126 (A225901 (A225901 n).toNat).toNat).toNat).toNat

end

end A060127.P16063163570426244334

/-! ## A060127.P14558878335482070171

`A060125(A060119(A001222(2^n)))`
-/

namespace A060127.P14558878335482070171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A060119 (A001222 (2 ^ n)).toNat).toNat

end

end A060127.P14558878335482070171

/-!
# A060128: a(n) is the number of disjoint cycles (excluding 1-cycles, i.e., fixed elements) in the n-th permutation of A060117 and A060118.

The programs for A060128, there is no canonical definition to state claims against.
-/

/-! ## A060128.P8126266743795021499

`A060129(n)-A060130(n)`
-/

namespace A060128.P8126266743795021499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n - A060130 n

end

end A060128.P8126266743795021499

/-! ## A060128.P3434099948306726264

`A060502(n)-A276004(n)`
-/

namespace A060128.P3434099948306726264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A276004 n

end

end A060128.P3434099948306726264

/-! ## A060128.P9618314035303138288

`A055090(A060120(n))`
-/

namespace A060128.P9618314035303138288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A060120 n).toNat

end

end A060128.P9618314035303138288

/-! ## A060128.P18179259331969100442

`A056170(A275725(n))`
-/

namespace A060128.P18179259331969100442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A275725 n).toNat

end

end A060128.P18179259331969100442

/-! ## A060128.P13404464766515901855

`A000120(A276010(n))-A276004(n)`
-/

namespace A060128.P13404464766515901855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A276010 n).toNat - A276004 n

end

end A060128.P13404464766515901855

/-! ## A060128.P5984510900193959393

`A060500(n)+A060502(n)-A060130(n)`
-/

namespace A060128.P5984510900193959393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A060502 n - A060130 n)

end

end A060128.P5984510900193959393

/-! ## A060128.P14389473615116472231

`A060502(A060125(n))+A060502(n)-A060130(n)`
-/

namespace A060128.P14389473615116472231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060125 n).toNat + (A060502 n - A060130 n)

end

end A060128.P14389473615116472231

/-! ## A060128.P8555666104648004937

`A055090(A060119(n))`
-/

namespace A060128.P8555666104648004937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A060119 n).toNat

end

end A060128.P8555666104648004937

/-! ## A060128.P9532228125542676937

`A060129(n)-A001222(A275734(n))`
-/

namespace A060128.P9532228125542676937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n - A001222 (A275734 n).toNat

end

end A060128.P9532228125542676937

/-! ## A060128.P3355248804233123680

`A056170(A278225(n))`
-/

namespace A060128.P3355248804233123680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A278225 n).toNat

end

end A060128.P3355248804233123680

/-!
# A060129: Number of moved (non-fixed) elements in the permutation with rank number n in lists A060117 (or in A060118), i.e., the sum of the lengths of all cycles larger than one in that permutation.

The programs for A060129, there is no canonical definition to state claims against.
-/

/-! ## A060129.P726614255244416157

`A055093(A060120(n))`
-/

namespace A060129.P726614255244416157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (A060120 n).toNat

end

end A060129.P726614255244416157

/-! ## A060129.P13339305858365549957

`A060128(n)+A060130(n)`
-/

namespace A060129.P13339305858365549957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n + A060130 n

end

end A060129.P13339305858365549957

/-! ## A060129.P1451503764109404867

`1+A084558(n)-A275851(n)`
-/

namespace A060129.P1451503764109404867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A084558 n - A275851 n

end

end A060129.P1451503764109404867

/-! ## A060129.P1205022364837969706

`A275812(A275725(n))`
-/

namespace A060129.P1205022364837969706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A275725 n).toNat

end

end A060129.P1205022364837969706

/-! ## A060129.P3490354074438016312

`A055093(A060119(n))`
-/

namespace A060129.P3490354074438016312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (A060119 n).toNat

end

end A060129.P3490354074438016312

/-! ## A060129.P8193983274868310109

`A060502(n)+A060500(n)`
-/

namespace A060129.P8193983274868310109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n + A060500 n

end

end A060129.P8193983274868310109

/-! ## A060129.P8428973153625060146

`A090529(n+1)-A275851(n)`
-/

namespace A060129.P8428973153625060146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1) - A275851 n

end

end A060129.P8428973153625060146

/-! ## A060129.P8656329071733636977

`A060500(A060125(n))+A060500(n)`
-/

namespace A060129.P8656329071733636977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060125 n).toNat + A060500 n

end

end A060129.P8656329071733636977

/-! ## A060129.P3440796854867782159

`A060502(A060125(n))+A060502(n)`
-/

namespace A060129.P3440796854867782159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060125 n).toNat + A060502 n

end

end A060129.P3440796854867782159

/-! ## A060129.P2945247091946071815

`A060128(n)+A276004(n)+A060500(n)`
-/

namespace A060129.P2945247091946071815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n + (A276004 n + A060500 n)

end

end A060129.P2945247091946071815

/-! ## A060129.P2360978391209204397

`A060130(n)+A060502(n)-A276004(n)`
-/

namespace A060129.P2360978391209204397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + (A060502 n - A276004 n)

end

end A060129.P2360978391209204397

/-! ## A060129.P11634139119129073870

`A060501(n)+A060502(n)-A275851(n)`
-/

namespace A060129.P11634139119129073870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n + (A060502 n - A275851 n)

end

end A060129.P11634139119129073870

/-! ## A060129.P15937366077926986126

`A060500(n)+A084558(n)-A275849(n)`
-/

namespace A060129.P15937366077926986126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A084558 n - A275849 n)

end

end A060129.P15937366077926986126

/-! ## A060129.P16981484326569842170

`A060500(n)+A275853(n)-A275851(n)`
-/

namespace A060129.P16981484326569842170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A275853 n - A275851 n)

end

end A060129.P16981484326569842170

/-! ## A060129.P17438915706066571822

`A220657(n+1)-(A275851(n)+A220657(n))`
-/

namespace A060129.P17438915706066571822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220657 (n + 1) - (A275851 n + A220657 n)

end

end A060129.P17438915706066571822

/-! ## A060129.P2258217458148644055

`A275812(A278225(n))`
-/

namespace A060129.P2258217458148644055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A278225 n).toNat

end

end A060129.P2258217458148644055

/-! ## A060129.P1435876819849988546

`A060128(n)+A046660(A275725(n))`
-/

namespace A060129.P1435876819849988546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n + A046660 (A275725 n).toNat

end

end A060129.P1435876819849988546

/-! ## A060129.P7757455282144394865

`A060130(n)+A056170(A275725(n))`
-/

namespace A060129.P7757455282144394865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + A056170 (A275725 n).toNat

end

end A060129.P7757455282144394865

/-!
# A060130: Number of nonzero digits in factorial base representation (A007623) of n; minimum number of transpositions needed to compose each permutation in the lists A060117 & A060118.

The programs for A060130, the canonical program `A060130.P13983426075283678403` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060130 has offset 0).

The definition of A060130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060130.P13983426075283678403

`1+a(A257687(n))` with `a(0)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060130

/-- `1+a(A257687(n))` -/
def P13983426075283678403.Spec : Prop :=
  ∀ n, (P13983426075283678403.a n : ℤ) = A060130 n

theorem P13983426075283678403.correct : P13983426075283678403.Spec := by
  intro n
  simp only [A060130]

end A060130

/-!
# A060131: a(n) = A072411(A275725(n)); order of each permutation listed in tables A060117 and A060118, i.e., the least common multiple of the cycle sizes.

The programs for A060131, there is no canonical definition to state claims against.
-/

/-! ## A060131.P591050982821476024

`A055092(A060120(n))`
-/

namespace A060131.P591050982821476024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 (A060120 n).toNat

end

end A060131.P591050982821476024

/-! ## A060131.P12582155398081115866

`A072411(A275725(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060131.P12582155398081115866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A275725 n).toNat

end

end A060131.P12582155398081115866

/-! ## A060131.P3848132048453673724

`A055092(A060119(n))`
-/

namespace A060131.P3848132048453673724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 (A060119 n).toNat

end

end A060131.P3848132048453673724

/-! ## A060131.P9144424909872140597

`A072411(A278225(n))`
-/

namespace A060131.P9144424909872140597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A278225 n).toNat

end

end A060131.P9144424909872140597

/-! ## A060131.P3518281299616213573

`A290107(lcm(A278225(n), A329601(n+1)))`
-/

namespace A060131.P3518281299616213573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (Int.lcm (A278225 n) (A329601 (n + 1)))

end

end A060131.P3518281299616213573

/-! ## A060131.P3750379068988956115

`A290107(lcm(11, A278225(n)))`
-/

namespace A060131.P3750379068988956115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (Int.lcm 11 (A278225 n))

end

end A060131.P3750379068988956115

/-! ## A060131.P11915710231707297227

`A290107(A278225(n)^A178334(n))`
-/

namespace A060131.P11915710231707297227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (SequenceMachineLib.roundAway ((A278225 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A060131.P11915710231707297227

/-! ## A060131.P15406953125019978523

`A072411(2*A275807(n))`
-/

namespace A060131.P15406953125019978523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (2 * A275807 n).toNat

end

end A060131.P15406953125019978523

/-! ## A060131.P1111749472378247739

`A290107(11*A278225(n))`
-/

namespace A060131.P1111749472378247739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (11 * A278225 n).toNat

end

end A060131.P1111749472378247739

/-! ## A060131.P14735539505748415842

`A157754(A275725(n)+A000007(n))`
-/

namespace A060131.P14735539505748415842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (A275725 n + A000007 n).toNat

end

end A060131.P14735539505748415842

/-! ## A060131.P12056661313863956276

`A157754(A275725(n)%A017368(n))`
-/

namespace A060131.P12056661313863956276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (Int.tmod (A275725 n) (A017368 n)).toNat

end

end A060131.P12056661313863956276

/-! ## A060131.P9023793823612463848

`A157754(or(A000007(n), A275725(n)))`
-/

namespace A060131.P9023793823612463848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (Int.lor (A000007 n) (A275725 n)).toNat

end

end A060131.P9023793823612463848

/-! ## A060131.P9076850983245652380

`A290107(2*A275725(n)-A275725(n))`
-/

namespace A060131.P9076850983245652380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (2 * A275725 n - A275725 n).toNat

end

end A060131.P9076850983245652380

/-! ## A060131.P5215944046939771389

`A290107(A275725(n))%A000040(n+1)`
-/

namespace A060131.P5215944046939771389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290107 (A275725 n).toNat) (A000040 (n + 1))

end

end A060131.P5215944046939771389

/-!
# A060132: Positions of the permutations which have the same rank in A055089 and A060117, i.e., the fixed points of permutations A060119 and A060126.

The programs for A060132, there is no canonical definition to state claims against.
-/

/-! ## A060132.P2172136082519030218

`∪[A059590(n), A064637(n)]`
-/

namespace A060132.P2172136082519030218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064637 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060132.P2172136082519030218

/-! ## A060132.P9351494768611412718

`eq[n, A060119(n)]`
-/

namespace A060132.P9351494768611412718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060132.P9351494768611412718

/-! ## A060132.P14263178980689776584

`eq[n, A060126(n)]`
-/

namespace A060132.P14263178980689776584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060132.P14263178980689776584

/-! ## A060132.P518480804937861020

`eq[A056019(n), A060120(n)]`
-/

namespace A060132.P518480804937861020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060132.P518480804937861020

/-! ## A060132.P7111281384051697268

`eq[A060125(n), A060127(n)]`
-/

namespace A060132.P7111281384051697268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060132.P7111281384051697268

/-! ## A060132.P9733611962243114429

`eq[A007623(n), A064039(n+1)]`
-/

namespace A060132.P9733611962243114429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060132.P9733611962243114429

/-! ## A060132.P3961123421958476114

`record[gcd(n*A000120(n), A060126(n))]`
-/

namespace A060132.P3961123421958476114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A000120 n) (A060126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060132.P3961123421958476114

/-! ## A060132.P4139980979010638605

`record[gcd(n, A060119(A004526(n)))]`
-/

namespace A060132.P4139980979010638605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A060119 (A004526 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060132.P4139980979010638605

/-!
# A060133: Positions of the permutations which have the same rank in A055089 and A060118, i.e., the fixed points of permutations A060120 and A060127.

The programs for A060133, there is no canonical definition to state claims against.
-/

/-! ## A060133.P15085873135100951652

`∩[A014489(n), A060132(n)]`
-/

namespace A060133.P15085873135100951652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060132 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060133.P15085873135100951652

/-! ## A060133.P10594950816884160620

`∩[A014489(n), A261220(n)]`
-/

namespace A060133.P10594950816884160620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060133.P10594950816884160620

/-! ## A060133.P16724140098706254749

`∩[A060132(n), A261220(n)]`
-/

namespace A060133.P16724140098706254749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060133.P16724140098706254749

/-! ## A060133.P17756640770525995910

`∩[A060132(n), A276005(n)]`
-/

namespace A060133.P17756640770525995910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060133.P17756640770525995910

/-! ## A060133.P7476302170649417928

`eq[n, A060120(n)]`
-/

namespace A060133.P7476302170649417928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060133.P7476302170649417928

/-! ## A060133.P12563344635350667391

`eq[n, A060127(n)]`
-/

namespace A060133.P12563344635350667391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060133.P12563344635350667391

/-! ## A060133.P14023795563672597254

`eq[n, A060119(A056019(n))]`
-/

namespace A060133.P14023795563672597254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A056019 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060133.P14023795563672597254

/-! ## A060133.P7119082682784450296

`eq[n, A056019(A060126(n))]`
-/

namespace A060133.P7119082682784450296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A060126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060133.P7119082682784450296

/-! ## A060133.P15859531169734239719

`eq[n, A060125(A060119(n))]`
-/

namespace A060133.P15859531169734239719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A060119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060133.P15859531169734239719

/-! ## A060133.P9233542796787057239

`eq[n, A060126(A060125(n))]`
-/

namespace A060133.P9233542796787057239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A060125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060133.P9233542796787057239

/-!
# A060134: Positions of permutations produced by the transposition sequence A060135 in A055089.

The programs for A060134, there is no canonical definition to state claims against.
-/

/-! ## A060134.P2298019147200972106

`A057113(∪[A004907(n+1), A030299(n+1)])`
-/

namespace A060134.P2298019147200972106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A060134.P2298019147200972106

/-!
# A060135: Sequence of adjacent transpositions (a[n] a[n]+1), which, when starting from the identity permutation and applied successively, produce a Hamiltonian circuit through all permutations of S_4, in such a way that S_{n-1} is always traversed before the rest of S_n. Furthermore, each subsequence from the first to the (n!-1)-th term is palindromic.

The programs for A060135, there is no canonical definition to state claims against.
-/

/-! ## A060135.P14764193746698076322

`C(C(n, 5)²%3+2, gcd(2, n))`
-/

namespace A060135.P14764193746698076322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 5 ^ 2 % 3 + 2) (Nat.gcd 2 n)

end

end A060135.P14764193746698076322

/-! ## A060135.P2926369932367030736

`gcd((floor(5*n/3)+1)*(n+1)/∏{p}[n+1, #], ∏{p}[n+1, #])`
-/

namespace A060135.P2926369932367030736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((⌊5 * ((n : ℚ) / 3)⌋ + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))) ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A060135.P2926369932367030736

/-! ## A060135.P8949052105145042002

`gcd(n+1, A140207(n)+1)`
-/

namespace A060135.P8949052105145042002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A140207 n + 1)

end

end A060135.P8949052105145042002

/-! ## A060135.P15915092259207381783

`n%(A220280(n+1)+1)+1`
-/

namespace A060135.P15915092259207381783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A220280 (n + 1) + 1) + 1

end

end A060135.P15915092259207381783

/-! ## A060135.P6981545694319011066

`A082061(A191413(n))`
-/

namespace A060135.P6981545694319011066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A191413 n).toNat

end

end A060135.P6981545694319011066

/-!
# A060136: Square array read by antidiagonals with T(n,k)=T(n,k-1)^2+n*T(n,k-1)+1 and T(n,0)=0.

The programs for A060136, there is no canonical definition to state claims against.
-/

/-! ## A060136.P16126186389580688137

`A267215(A136170(n)+A025581(n))`
-/

namespace A060136.P16126186389580688137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267215 (A136170 n + A025581 n).toNat

end

end A060136.P16126186389580688137

/-! ## A060136.P11181460386117730765

`A325368(A125800(n+1))%A047848(n)`
-/

namespace A060136.P11181460386117730765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325368 (A125800 (n + 1)).toNat) (A047848 n)

end

end A060136.P11181460386117730765

/-! ## A060136.P14969885142319710857

`A325368(A125800(n+1))-char[A000096(n)]`
-/

namespace A060136.P14969885142319710857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A125800 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060136.P14969885142319710857

/-! ## A060136.P9030908695189796825

`A325368(A125800(n+1))-Δ[A002024(n+1)]`
-/

namespace A060136.P9030908695189796825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A125800 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A060136.P9030908695189796825

/-! ## A060136.P7519208532389469567

`A001221(A130321(n))*A325368(A125800(n+1))`
-/

namespace A060136.P7519208532389469567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130321 n).toNat * A325368 (A125800 (n + 1)).toNat

end

end A060136.P7519208532389469567

/-!
# A060137: Square array read by antidiagonals with T(n,k)=T(n,k-1)^2-n*T(n,k-1)+1 and T(n,0)=0.

The programs for A060137, there is no canonical definition to state claims against.
-/

/-! ## A060137.P4523994736726268256

`floor(A060136(n)/A030706(A089759(n)))`
-/

namespace A060137.P4523994736726268256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060136 n : ℚ) / (A030706 ((A089759 n).toNat + 1) : ℚ)⌋

end

end A060137.P4523994736726268256

/-! ## A060137.P6918068111056091216

`and(A060136(n), A088503(A011782(n)))`
-/

namespace A060137.P6918068111056091216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060136 n) (A088503 (A011782 n).toNat)

end

end A060137.P6918068111056091216

/-! ## A060137.P17410890538801491684

`and(A003277(A099036(n)), A060136(n))`
-/

namespace A060137.P17410890538801491684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003277 (A099036 n).toNat) (A060136 n)

end

end A060137.P17410890538801491684

/-! ## A060137.P724400809708410678

`gcd(A059252(A154231(n)), A060136(n))`
-/

namespace A060137.P724400809708410678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059252 (A154231 n).toNat) (A060136 n)

end

end A060137.P724400809708410678

/-! ## A060137.P8184125715028769851

`A060136(n)^A060136(A005100(n+1))`
-/

namespace A060137.P8184125715028769851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060136 n : ℚ) ^ (A060136 (A005100 (n + 1)).toNat : ℤ)

end

end A060137.P8184125715028769851

/-!
# A060138: Ordered set S defined by these rules: 0 and 2 are in S and if x is a nonzero number in S, then 2x-1 and 4x are in S.

The programs for A060138, the canonical program `A060138.P11251087805116196023` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060138 has offset 0).

The definition of A060138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060138.P11251087805116196023

`A006257(A003714(n))+A003714(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060138

/-- `A006257(A003714(n))+A003714(n)` -/
def P11251087805116196023.Spec : Prop :=
  ∀ n, P11251087805116196023.a n = A060138 n

theorem P11251087805116196023.correct : P11251087805116196023.Spec := by
  intro n
  simp only [A060138]

end A060138

/-! ## A060138.P8363355553812645109

`record[A038556(n)-A084099(n+2)]`
-/

namespace A060138.P8363355553812645109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n - A084099 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P8363355553812645109

namespace A060138

/-- `record[A038556(n)-A084099(n+2)]` -/
def P8363355553812645109.Spec : Prop :=
  ∀ n, P8363355553812645109.a n = A060138 n

end A060138

/-! ## A060138.P9148729450109589430

`record[A003188(2*n)-A003817(n)]`
-/

namespace A060138.P9148729450109589430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n) - A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P9148729450109589430

namespace A060138

/-- `record[A003188(2*n)-A003817(n)]` -/
def P9148729450109589430.Spec : Prop :=
  ∀ n, P9148729450109589430.a n = A060138 n

end A060138

/-! ## A060138.P2403306051654921107

`eq[2, A000040(a(A334749(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A060138.P2403306051654921107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000040 (f2 (A334749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060138.P2403306051654921107

namespace A060138

/-- `eq[2, A000040(a(A334749(n)))]` -/
def P2403306051654921107.Spec : Prop :=
  ∀ n, (P2403306051654921107.a n : ℤ) = A060138 n

end A060138

/-! ## A060138.P12159595770145231515

`A057427(n)+eq[1, A334749(n+1)]`
-/

namespace A060138.P12159595770145231515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A060138.P12159595770145231515

namespace A060138

/-- `A057427(n)+eq[1, A334749(n+1)]` -/
def P12159595770145231515.Spec : Prop :=
  ∀ n, P12159595770145231515.a n = A060138 n

end A060138

/-! ## A060138.P16663828314604412141

`record[A231550(n)+A090996(n)]`
-/

namespace A060138.P16663828314604412141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 n + A090996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P16663828314604412141

namespace A060138

/-- `record[A231550(n)+A090996(n)]` -/
def P16663828314604412141.Spec : Prop :=
  ∀ n, P16663828314604412141.a n = A060138 n

end A060138

/-! ## A060138.P9373693336955599980

`record[A265263(n)+A006257(A265263(n))]`
-/

namespace A060138.P9373693336955599980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n + A006257 (A265263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P9373693336955599980

namespace A060138

/-- `record[A265263(n)+A006257(A265263(n))]` -/
def P9373693336955599980.Spec : Prop :=
  ∀ n, P9373693336955599980.a n = A060138 n

end A060138

/-! ## A060138.P7736497036073885108

`A057427(n)+eq[1, A327616(n+1)]`
-/

namespace A060138.P7736497036073885108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A060138.P7736497036073885108

namespace A060138

/-- `A057427(n)+eq[1, A327616(n+1)]` -/
def P7736497036073885108.Spec : Prop :=
  ∀ n, P7736497036073885108.a n = A060138 n

end A060138

/-! ## A060138.P3189326861307519805

`record[A038554(n+1)+n%2]`
-/

namespace A060138.P3189326861307519805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (n + 1) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P3189326861307519805

namespace A060138

/-- `record[A038554(n+1)+n%2]` -/
def P3189326861307519805.Spec : Prop :=
  ∀ n, P3189326861307519805.a n = A060138 n

end A060138

/-! ## A060138.P9961466390421185176

`record[A038556(n)-A038554(n)]`
-/

namespace A060138.P9961466390421185176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n - A038554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P9961466390421185176

namespace A060138

/-- `record[A038556(n)-A038554(n)]` -/
def P9961466390421185176.Spec : Prop :=
  ∀ n, P9961466390421185176.a n = A060138 n

end A060138

/-! ## A060138.P3337428890431574063

`record[A048724(n)-A086099(2*n)]`
-/

namespace A060138.P3337428890431574063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n - A086099 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P3337428890431574063

namespace A060138

/-- `record[A048724(n)-A086099(2*n)]` -/
def P3337428890431574063.Spec : Prop :=
  ∀ n, P3337428890431574063.a n = A060138 n

end A060138

/-! ## A060138.P9661749667177001185

`record[A038554(n+1)+A007814(A006519(n+2)+1)]`
-/

namespace A060138.P9661749667177001185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (n + 1) + A007814 (A006519 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P9661749667177001185

namespace A060138

/-- `record[A038554(n+1)+A007814(A006519(n+2)+1)]` -/
def P9661749667177001185.Spec : Prop :=
  ∀ n, P9661749667177001185.a n = A060138 n

end A060138

/-! ## A060138.P9585051173587547124

`record[A115384(2*A231550(n))]`
-/

namespace A060138.P9585051173587547124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * A231550 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P9585051173587547124

namespace A060138

/-- `record[A115384(2*A231550(n))]` -/
def P9585051173587547124.Spec : Prop :=
  ∀ n, P9585051173587547124.a n = A060138 n

end A060138

/-! ## A060138.P7979848489603541820

`record[A028242(record[A233280(n+1)])]`
-/

namespace A060138.P7979848489603541820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P7979848489603541820

namespace A060138

/-- `record[A028242(record[A233280(n+1)])]` -/
def P7979848489603541820.Spec : Prop :=
  ∀ n, P7979848489603541820.a n = A060138 n

end A060138

/-! ## A060138.P12016149379575111747

`A060973(A048297(n))`
-/

namespace A060138.P12016149379575111747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A048297 n).toNat

end

end A060138.P12016149379575111747

namespace A060138

/-- `A060973(A048297(n))` -/
def P12016149379575111747.Spec : Prop :=
  ∀ n, P12016149379575111747.a n = A060138 n

end A060138

/-! ## A060138.P6175379833680722258

`A352228(A048297(n)+1)`
-/

namespace A060138.P6175379833680722258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A048297 n + 1).toNat

end

end A060138.P6175379833680722258

namespace A060138

/-- `A352228(A048297(n)+1)` -/
def P6175379833680722258.Spec : Prop :=
  ∀ n, P6175379833680722258.a n = A060138 n

end A060138

/-! ## A060138.P16074898136745104407

`record[A038554(2*n+1)-A038554(n)]`
-/

namespace A060138.P16074898136745104407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (2 * n + 1) - A038554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060138.P16074898136745104407

namespace A060138

/-- `record[A038554(2*n+1)-A038554(n)]` -/
def P16074898136745104407.Spec : Prop :=
  ∀ n, P16074898136745104407.a n = A060138 n

end A060138

/-!
# A060139: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x-1 and 9x are in S.

The programs for A060139, there is no canonical definition to state claims against.
-/

/-! ## A060139.P5120647471190426491

`eq[A060374(A008344(n+1)), A338245(n)]`
-/

namespace A060139.P5120647471190426491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (A008344 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060139.P5120647471190426491

/-! ## A060139.P17978694893132291414

`record[A135550(∑[A058630(n)])]`
-/

namespace A060139.P17978694893132291414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135550 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060139.P17978694893132291414

/-! ## A060139.P439863458211282639

`record[A335466(3*n+1)%A379419(n+1)]`
-/

namespace A060139.P439863458211282639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335466 (3 * n + 1)) (A379419 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060139.P439863458211282639

/-! ## A060139.P14998953677516783629

`eq[A008683(A230698(n)), A254623(n)]`
-/

namespace A060139.P14998953677516783629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A230698 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060139.P14998953677516783629

/-! ## A060139.P13884172361077924921

`eq[A117621(A090285(n)), A261596(n+1)]`
-/

namespace A060139.P13884172361077924921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (A090285 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060139.P13884172361077924921

/-!
# A060140: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+1 are in S.

The programs for A060140, the canonical program `A060140.P10089229504658294474` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060140 has offset 0).

The definition of A060140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060140.P10089229504658294474

`A005836(A003714(n)+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060140

/-- `A005836(A003714(n)+1)` -/
def P10089229504658294474.Spec : Prop :=
  ∀ n, P10089229504658294474.a n = A060140 n

theorem P10089229504658294474.correct : P10089229504658294474.Spec := by
  intro n
  simp only [A060140]

end A060140

/-! ## A060140.P1738999533944668121

`A005836(eq[n, and(n, 3*n)]+1)`
-/

namespace A060140.P1738999533944668121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A060140.P1738999533944668121

namespace A060140

/-- `A005836(eq[n, and(n, 3*n)]+1)` -/
def P1738999533944668121.Spec : Prop :=
  ∀ n, P1738999533944668121.a n = A060140 n

end A060140

/-! ## A060140.P778967974401019027

`A005836(record[xor(n, 2*n)/3]+1)`
-/

namespace A060140.P778967974401019027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A060140.P778967974401019027

namespace A060140

/-- `A005836(record[xor(n, 2*n)/3]+1)` -/
def P778967974401019027.Spec : Prop :=
  ∀ n, P778967974401019027.a n = A060140 n

end A060140

/-! ## A060140.P10727515426152014835

`record[C(and(n, 3*n), n)*A005836(n+1)]`
-/

namespace A060140.P10727515426152014835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.land n (3 * n)) n : ℤ) * A005836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P10727515426152014835

namespace A060140

/-- `record[C(and(n, 3*n), n)*A005836(n+1)]` -/
def P10727515426152014835.Spec : Prop :=
  ∀ n, P10727515426152014835.a n = A060140 n

end A060140

/-! ## A060140.P6128317986726846307

`A003278(A003714(n)+1)-1`
-/

namespace A060140.P6128317986726846307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A003714 n + 1).toNat - 1

end

end A060140.P6128317986726846307

namespace A060140

/-- `A003278(A003714(n)+1)-1` -/
def P6128317986726846307.Spec : Prop :=
  ∀ n, P6128317986726846307.a n = A060140 n

end A060140

/-! ## A060140.P9519821042767541142

`record[A005836(n+1)/A227349(n)]`
-/

namespace A060140.P9519821042767541142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005836 (n + 1) : ℚ) / (A227349 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P9519821042767541142

namespace A060140

/-- `record[A005836(n+1)/A227349(n)]` -/
def P9519821042767541142.Spec : Prop :=
  ∀ n, P9519821042767541142.a n = (A060140 n : ℚ)

end A060140

/-! ## A060140.P770095934475817326

`record[A005836(n+1)/A245195(n)]`
-/

namespace A060140.P770095934475817326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005836 (n + 1) : ℚ) / (A245195 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P770095934475817326

namespace A060140

/-- `record[A005836(n+1)/A245195(n)]` -/
def P770095934475817326.Spec : Prop :=
  ∀ n, P770095934475817326.a n = (A060140 n : ℚ)

end A060140

/-! ## A060140.P6603303865279042205

`record[A005836(n+1)/A284580(n)]`
-/

namespace A060140.P6603303865279042205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005836 (n + 1) : ℚ) / (A284580 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P6603303865279042205

namespace A060140

/-- `record[A005836(n+1)/A284580(n)]` -/
def P6603303865279042205.Spec : Prop :=
  ∀ n, P6603303865279042205.a n = (A060140 n : ℚ)

end A060140

/-! ## A060140.P6381035320775381166

`record[A005836(n+1)/A344180(n)]`
-/

namespace A060140.P6381035320775381166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005836 (n + 1) : ℚ) / (A344180 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P6381035320775381166

namespace A060140

/-- `record[A005836(n+1)/A344180(n)]` -/
def P6381035320775381166.Spec : Prop :=
  ∀ n, P6381035320775381166.a n = (A060140 n : ℚ)

end A060140

/-! ## A060140.P12977953652589045968

`record[gcd(A005836(n+1), A348710(n))]`
-/

namespace A060140.P12977953652589045968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005836 (n + 1)) (A348710 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P12977953652589045968

namespace A060140

/-- `record[gcd(A005836(n+1), A348710(n))]` -/
def P12977953652589045968.Spec : Prop :=
  ∀ n, (P12977953652589045968.a n : ℤ) = A060140 n

end A060140

/-! ## A060140.P5256279907647555424

`record[A365278(n)]`
-/

namespace A060140.P5256279907647555424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060140.P5256279907647555424

namespace A060140

/-- `record[A365278(n)]` -/
def P5256279907647555424.Spec : Prop :=
  ∀ n, P5256279907647555424.a n = A060140 n

end A060140

/-! ## A060140.P4630020133091434655

`A365278(A003714(n))`
-/

namespace A060140.P4630020133091434655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365278 (A003714 n).toNat

end

end A060140.P4630020133091434655

namespace A060140

/-- `A365278(A003714(n))` -/
def P4630020133091434655.Spec : Prop :=
  ∀ n, P4630020133091434655.a n = A060140 n

end A060140

/-! ## A060140.P14435868507481452660

`∩[A328727(n+1), A319497(n)]`
-/

namespace A060140.P14435868507481452660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060140.P14435868507481452660

namespace A060140

/-- `∩[A328727(n+1), A319497(n)]` -/
def P14435868507481452660.Spec : Prop :=
  ∀ n, (P14435868507481452660.a n : ℤ) = A060140 n

end A060140

/-! ## A060140.P1407570130503046378

`∩[A005836(n+1), A328727(n+1)]`
-/

namespace A060140.P1407570130503046378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060140.P1407570130503046378

namespace A060140

/-- `∩[A005836(n+1), A328727(n+1)]` -/
def P1407570130503046378.Spec : Prop :=
  ∀ n, (P1407570130503046378.a n : ℤ) = A060140 n

end A060140

/-! ## A060140.P12004353503433177797

`∩[A082575(n+1), A328727(n+1)]`
-/

namespace A060140.P12004353503433177797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060140.P12004353503433177797

namespace A060140

/-- `∩[A082575(n+1), A328727(n+1)]` -/
def P12004353503433177797.Spec : Prop :=
  ∀ n, (P12004353503433177797.a n : ℤ) = A060140 n

end A060140

/-! ## A060140.P2140444757987807675

`A005836(record[A008615(xor(n, 2*n))]+1)`
-/

namespace A060140.P2140444757987807675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.xor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A060140.P2140444757987807675

namespace A060140

/-- `A005836(record[A008615(xor(n, 2*n))]+1)` -/
def P2140444757987807675.Spec : Prop :=
  ∀ n, P2140444757987807675.a n = A060140 n

end A060140

/-! ## A060140.P16754936133540908307

`A379658(A048678(A048678(A048679(n))))`
-/

namespace A060140.P16754936133540908307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379658 (A048678 (A048678 (A048679 n).toNat).toNat).toNat

end

end A060140.P16754936133540908307

namespace A060140

/-- `A379658(A048678(A048678(A048679(n))))` -/
def P16754936133540908307.Spec : Prop :=
  ∀ n, P16754936133540908307.a n = A060140 n

end A060140

/-!
# A060141: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+2 are in S.

The programs for A060141, the canonical program `A060141.P5689329236640195433` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060141 has offset 0).

The definition of A060141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060141.P5689329236640195433

`A060140(n)+A060140(A066628(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060141

/-- `A060140(n)+A060140(A066628(n))` -/
def P5689329236640195433.Spec : Prop :=
  ∀ n, P5689329236640195433.a n = A060141 n

theorem P5689329236640195433.correct : P5689329236640195433.Spec := by
  intro n
  simp only [A060141]

end A060141

/-! ## A060141.P7448705434681235687

`A008344(A060139(n)+1)`
-/

namespace A060141.P7448705434681235687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (A060139 n + 1).toNat

end

end A060141.P7448705434681235687

namespace A060141

/-- `A008344(A060139(n)+1)` -/
def P7448705434681235687.Spec : Prop :=
  ∀ n, P7448705434681235687.a n = A060141 n

end A060141

/-! ## A060141.P6135494270297275020

`record[gcd(n, A333773(n))]`
-/

namespace A060141.P6135494270297275020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A333773 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060141.P6135494270297275020

namespace A060141

/-- `record[gcd(n, A333773(n))]` -/
def P6135494270297275020.Spec : Prop :=
  ∀ n, (P6135494270297275020.a n : ℤ) = A060141 n

end A060141

/-! ## A060141.P14738640090409615856

`eq[n-2*n, A333773(2*n)]`
-/

namespace A060141.P14738640090409615856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060141.P14738640090409615856

namespace A060141

/-- `eq[n-2*n, A333773(2*n)]` -/
def P14738640090409615856.Spec : Prop :=
  ∀ n, (P14738640090409615856.a n : ℤ) = A060141 n

end A060141

/-! ## A060141.P596280891098303289

`record[A333773(n)%A008619(A004488(n))]`
-/

namespace A060141.P596280891098303289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333773 n) (A008619 (A004488 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060141.P596280891098303289

namespace A060141

/-- `record[A333773(n)%A008619(A004488(n))]` -/
def P596280891098303289.Spec : Prop :=
  ∀ n, P596280891098303289.a n = A060141 n

end A060141

/-!
# A060142: Ordered set S defined by these rules: 0 is in S and if x is in S then 2x+1 and 4x are in S.

The programs for A060142, there is no canonical definition to state claims against.
-/

/-! ## A060142.P10516844929716084264

`floor(A219608(n+1)/2)`
-/

namespace A060142.P10516844929716084264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219608 (n + 1) : ℚ) / 2⌋

end

end A060142.P10516844929716084264

/-! ## A060142.P11812847213841194859

`floor(A307096(n+1)/4)`
-/

namespace A060142.P11812847213841194859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307096 (n + 1) : ℚ) / 4⌋

end

end A060142.P11812847213841194859

/-! ## A060142.P3604848956682339145

`∪[A000225(n), A383668(n+1)]`
-/

namespace A060142.P3604848956682339145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060142.P3604848956682339145

/-! ## A060142.P10860256500814757658

`∪[A192112(n+1), A383668(n+1)]`
-/

namespace A060142.P10860256500814757658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060142.P10860256500814757658

/-! ## A060142.P5496620823712536865

`∑[A219609(n+1)]-A219609(n+1)`
-/

namespace A060142.P5496620823712536865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A219609 (n + 1)

end

end A060142.P5496620823712536865

/-! ## A060142.P5486068738859409767

`A336231(A026351(n))`
-/

namespace A060142.P5486068738859409767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A026351 n).toNat

end

end A060142.P5486068738859409767

/-! ## A060142.P14832130630737280966

`A336231(A026356(n+1)-(n+1))`
-/

namespace A060142.P14832130630737280966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A026356 (n + 1) - (n + 1 : ℤ)).toNat

end

end A060142.P14832130630737280966

/-! ## A060142.P1520841512943643643

`record[and(3*n+2, A006257(n))]`
-/

namespace A060142.P1520841512943643643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n + 2 : ℤ) (A006257 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060142.P1520841512943643643

/-! ## A060142.P15631990980846709738

`lt[A213191(A361020(2*n)), 1]`
-/

namespace A060142.P15631990980846709738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A361020 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060142.P15631990980846709738

/-! ## A060142.P2098280444347342426

`eq[2, A020639(A124758(n)+1)]`
-/

namespace A060142.P2098280444347342426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124758 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060142.P2098280444347342426

/-! ## A060142.P6286551584930612039

`comp[A320730(n+1)]`
-/

namespace A060142.P6286551584930612039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A060142.P6286551584930612039

/-! ## A060142.P14905331884032390295

`eq[0, A343030(n)]`
-/

namespace A060142.P14905331884032390295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060142.P14905331884032390295

/-! ## A060142.P8571971914743260260

`lt[A316831(n), 2]`
-/

namespace A060142.P8571971914743260260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060142.P8571971914743260260

/-! ## A060142.P2004581734744560451

`record[n*A086747(n)]`
-/

namespace A060142.P2004581734744560451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060142.P2004581734744560451

/-! ## A060142.P4423141864481660014

`eq[A000120(n), A004718(n)]`
-/

namespace A060142.P4423141864481660014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060142.P4423141864481660014

/-! ## A060142.P10239721535556872005

`eq[A053985(n), A065620(n)]`
-/

namespace A060142.P10239721535556872005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060142.P10239721535556872005

/-! ## A060142.P11320487817693368143

`eq[A057427(n), A086747(n)]`
-/

namespace A060142.P11320487817693368143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060142.P11320487817693368143

/-! ## A060142.P12986878129240551231

`eq[A086747(n), A101825(n)]`
-/

namespace A060142.P12986878129240551231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060142.P12986878129240551231

/-! ## A060142.P5264960284707044159

`eq[A000120(n), A343029(n)]`
-/

namespace A060142.P5264960284707044159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060142.P5264960284707044159

/-! ## A060142.P9473085130410415002

`eq[A004718(n), A343029(n)]`
-/

namespace A060142.P9473085130410415002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060142.P9473085130410415002

/-!
# A060143: a(n) = floor(n/tau), where tau = (1 + sqrt(5))/2.

The programs for A060143, the canonical program `A060143.P4349736368293734599` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060143 has offset 0).

The definition of A060143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060143.P4349736368293734599

`floor(n*ϕ)-n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060143

/-- `floor(n*ϕ)-n` -/
def P4349736368293734599.Spec : Prop :=
  ∀ n, P4349736368293734599.a n = A060143 n

theorem P4349736368293734599.correct : P4349736368293734599.Spec := by
  intro n
  simp only [A060143]

end A060143

/-! ## A060143.P693508934431284172

`ceil(ϕ*n)%(n+1)`
-/

namespace A060143.P693508934431284172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ (n + 1 : ℤ)

end

end A060143.P693508934431284172

namespace A060143

/-- `ceil(ϕ*n)%(n+1)` -/
def P693508934431284172.Spec : Prop :=
  ∀ n, P693508934431284172.a n = A060143 n

end A060143

/-! ## A060143.P4666681856680262933

`floor(n/(2*cos(π/5)))`
-/

namespace A060143.P4666681856680262933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (2 * Real.cos (Real.pi / 5))⌋

end

end A060143.P4666681856680262933

namespace A060143

/-- `floor(n/(2*cos(π/5)))` -/
def P4666681856680262933.Spec : Prop :=
  ∀ n, P4666681856680262933.a n = A060143 n

end A060143

/-! ## A060143.P10460018004380012492

`-ceil(xor(n-1, -1)/ϕ)`
-/

namespace A060143.P10460018004380012492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor ((n : ℤ) - 1) (-1) : ℝ) / Real.goldenRatio⌉

end

end A060143.P10460018004380012492

namespace A060143

/-- `-ceil(xor(n-1, -1)/ϕ)` -/
def P10460018004380012492.Spec : Prop :=
  ∀ n, P10460018004380012492.a n = A060143 n

end A060143

/-! ## A060143.P9502090736619858449

`ceil((n-1)/(acot(n-2)+ϕ))`
-/

namespace A060143.P9502090736619858449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / (SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ) + Real.goldenRatio)⌉

end

end A060143.P9502090736619858449

namespace A060143

/-- `ceil((n-1)/(acot(n-2)+ϕ))` -/
def P9502090736619858449.Spec : Prop :=
  ∀ n, P9502090736619858449.a n = A060143 n

end A060143

/-! ## A060143.P1271158855898385977

`floor(n*sin(π/5)/sin(2*π/5))`
-/

namespace A060143.P1271158855898385977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sin (Real.pi / 5) / Real.sin (2 * (Real.pi / 5))⌋

end

end A060143.P1271158855898385977

namespace A060143

/-- `floor(n*sin(π/5)/sin(2*π/5))` -/
def P1271158855898385977.Spec : Prop :=
  ∀ n, P1271158855898385977.a n = A060143 n

end A060143

/-! ## A060143.P4044710532544015411

`∑[char[A004956(n+1)]]`
-/

namespace A060143.P4044710532544015411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060143.P4044710532544015411

namespace A060143

/-- `∑[char[A004956(n+1)]]` -/
def P4044710532544015411.Spec : Prop :=
  ∀ n, (P4044710532544015411.a n : ℤ) = A060143 n

end A060143

/-! ## A060143.P11979344394031445437

`∑[char[A026351(n+1)]]`
-/

namespace A060143.P11979344394031445437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060143.P11979344394031445437

namespace A060143

/-- `∑[char[A026351(n+1)]]` -/
def P11979344394031445437.Spec : Prop :=
  ∀ n, (P11979344394031445437.a n : ℤ) = A060143 n

end A060143

/-! ## A060143.P11980723092695742249

`A005206((n-1)%(n+1))`
-/

namespace A060143.P11980723092695742249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A060143.P11980723092695742249

namespace A060143

/-- `A005206((n-1)%(n+1))` -/
def P11980723092695742249.Spec : Prop :=
  ∀ n, P11980723092695742249.a n = A060143 n

end A060143

/-! ## A060143.P17804839460935039300

`A005206(n-A096270(n))`
-/

namespace A060143.P17804839460935039300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n : ℤ) - A096270 n).toNat

end

end A060143.P17804839460935039300

namespace A060143

/-- `A005206(n-A096270(n))` -/
def P17804839460935039300.Spec : Prop :=
  ∀ n, P17804839460935039300.a n = A060143 n

end A060143

/-! ## A060143.P10553296773809104115

`A005206(n+1-A001468(n))`
-/

namespace A060143.P10553296773809104115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n + 1 : ℤ) - A001468 n).toNat

end

end A060143.P10553296773809104115

namespace A060143

/-- `A005206(n+1-A001468(n))` -/
def P10553296773809104115.Spec : Prop :=
  ∀ n, P10553296773809104115.a n = A060143 n

end A060143

/-! ## A060143.P14886242497956257668

`A005206(n+1-A363057(2*n+1))`
-/

namespace A060143.P14886242497956257668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n + 1 : ℤ) - A363057 (2 * n + 1)).toNat

end

end A060143.P14886242497956257668

namespace A060143

/-- `A005206(n+1-A363057(2*n+1))` -/
def P14886242497956257668.Spec : Prop :=
  ∀ n, P14886242497956257668.a n = A060143 n

end A060143

/-! ## A060143.P2410617142590535796

`A005206(A289207(n+1))`
-/

namespace A060143.P2410617142590535796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A289207 (n + 1)).toNat

end

end A060143.P2410617142590535796

namespace A060143

/-- `A005206(A289207(n+1))` -/
def P2410617142590535796.Spec : Prop :=
  ∀ n, P2410617142590535796.a n = A060143 n

end A060143

/-! ## A060143.P2125328534379024596

`A005206(n-A095792(n+2))`
-/

namespace A060143.P2125328534379024596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n : ℤ) - A095792 (n + 2)).toNat

end

end A060143.P2125328534379024596

namespace A060143

/-- `A005206(n-A095792(n+2))` -/
def P2125328534379024596.Spec : Prop :=
  ∀ n, P2125328534379024596.a n = A060143 n

end A060143

/-! ## A060143.P14920925057379308618

`A101803(n-A287523(n+2))`
-/

namespace A060143.P14920925057379308618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 ((n : ℤ) - A287523 (n + 2)).toNat

end

end A060143.P14920925057379308618

namespace A060143

/-- `A101803(n-A287523(n+2))` -/
def P14920925057379308618.Spec : Prop :=
  ∀ n, P14920925057379308618.a n = A060143 n

end A060143

/-! ## A060143.P6135155911217001847

`A319433(n-A287523(n+2))`
-/

namespace A060143.P6135155911217001847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 ((n : ℤ) - A287523 (n + 2)).toNat

end

end A060143.P6135155911217001847

namespace A060143

/-- `A319433(n-A287523(n+2))` -/
def P6135155911217001847.Spec : Prop :=
  ∀ n, P6135155911217001847.a n = A060143 n

end A060143

/-! ## A060143.P4519989685564476660

`∑[char[A307294(2*n+1)]]`
-/

namespace A060143.P4519989685564476660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060143.P4519989685564476660

namespace A060143

/-- `∑[char[A307294(2*n+1)]]` -/
def P4519989685564476660.Spec : Prop :=
  ∀ n, (P4519989685564476660.a n : ℤ) = A060143 n

end A060143

/-! ## A060143.P789615584023921491

`A060144(A007067(n))`
-/

namespace A060143.P789615584023921491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A007067 n).toNat

end

end A060143.P789615584023921491

namespace A060143

/-- `A060144(A007067(n))` -/
def P789615584023921491.Spec : Prop :=
  ∀ n, P789615584023921491.a n = A060143 n

end A060143

/-! ## A060143.P16711327319810203427

`A060144(A026355(n))`
-/

namespace A060143.P16711327319810203427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A026355 n).toNat

end

end A060143.P16711327319810203427

namespace A060143

/-- `A060144(A026355(n))` -/
def P16711327319810203427.Spec : Prop :=
  ∀ n, P16711327319810203427.a n = A060143 n

end A060143

/-! ## A060143.P14669254376695509674

`A060144(A058065(n))`
-/

namespace A060143.P14669254376695509674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A058065 n).toNat

end

end A060143.P14669254376695509674

namespace A060143

/-- `A060144(A058065(n))` -/
def P14669254376695509674.Spec : Prop :=
  ∀ n, P14669254376695509674.a n = A060143 n

end A060143

/-!
# A060144: a(n) = floor(n/(1+phi)), or equivalently floor(n/phi^2), where phi is the golden ratio (A001622).

The programs for A060144, the canonical program `A060144.P10883378031164971370` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060144 has offset 0).

The definition of A060144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/ϕ²)` (program `A060144.P10883378031164971370`, by `A060144.P10883378031164971370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060144.P10883378031164971370

`floor(n/ϕ²)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060144

/-- `floor(n/ϕ²)` -/
def P10883378031164971370.Spec : Prop :=
  ∀ n, P10883378031164971370.a n = A060144 n

theorem P10883378031164971370.correct : P10883378031164971370.Spec := by
  intro n
  simp only [A060144]

end A060144

/-! ## A060144.P11389506239476500556

`floor(n/(1+ϕ))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060144.P11389506239476500556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (1 + Real.goldenRatio)⌋

end

end A060144.P11389506239476500556

namespace A060144

/-- `floor(n/(1+ϕ))` -/
def P11389506239476500556.Spec : Prop :=
  ∀ n, P11389506239476500556.a n = A060144 n

theorem P11389506239476500556.correct : P11389506239476500556.Spec := by
  intro n
  simp only [A060144, Nat.add_sub_cancel, A060144.P11389506239476500556.a, A060144.P10883378031164971370.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A060144

/-! ## A060144.P17964274663990367746

`lcm(2, 2*n)-ceil(ϕ*n)`
-/

namespace A060144.P17964274663990367746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌈Real.goldenRatio * (n : ℝ)⌉

end

end A060144.P17964274663990367746

namespace A060144

/-- `lcm(2, 2*n)-ceil(ϕ*n)` -/
def P17964274663990367746.Spec : Prop :=
  ∀ n, P17964274663990367746.a n = A060144 n

end A060144

/-! ## A060144.P13553325086802786874

`gcd(n, 2*n)-ceil(n/ϕ)`
-/

namespace A060144.P13553325086802786874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℤ) - ⌈(n : ℝ) / Real.goldenRatio⌉

end

end A060144.P13553325086802786874

namespace A060144

/-- `gcd(n, 2*n)-ceil(n/ϕ)` -/
def P13553325086802786874.Spec : Prop :=
  ∀ n, P13553325086802786874.a n = A060144 n

end A060144

/-! ## A060144.P14551465204761958891

`xor(1, 2*n+1)-ceil(ϕ*n)`
-/

namespace A060144.P14551465204761958891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n + 1) : ℤ) - ⌈Real.goldenRatio * (n : ℝ)⌉

end

end A060144.P14551465204761958891

namespace A060144

/-- `xor(1, 2*n+1)-ceil(ϕ*n)` -/
def P14551465204761958891.Spec : Prop :=
  ∀ n, P14551465204761958891.a n = A060144 n

end A060144

/-! ## A060144.P7104957388807373269

`-ceil((a(n-1)-(n-1))/ϕ)` with `a(0)=0`
-/

namespace A060144.P7104957388807373269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -⌈(a (n - 1) - ((n : ℤ) - 1) : ℝ) / Real.goldenRatio⌉

end

end A060144.P7104957388807373269

namespace A060144

/-- `-ceil((a(n-1)-(n-1))/ϕ)` -/
def P7104957388807373269.Spec : Prop :=
  ∀ n, P7104957388807373269.a n = A060144 n

end A060144

/-! ## A060144.P951946114770725950

`and(2*n+1, 2*n)-ceil(ϕ*n)`
-/

namespace A060144.P951946114770725950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) : ℤ) - ⌈Real.goldenRatio * (n : ℝ)⌉

end

end A060144.P951946114770725950

namespace A060144

/-- `and(2*n+1, 2*n)-ceil(ϕ*n)` -/
def P951946114770725950.Spec : Prop :=
  ∀ n, P951946114770725950.a n = A060144 n

end A060144

/-! ## A060144.P3796510667593483539

`∑[char[Δ[A283969(n)]]]`
-/

namespace A060144.P3796510667593483539
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060144.P3796510667593483539

namespace A060144

/-- `∑[char[Δ[A283969(n)]]]` -/
def P3796510667593483539.Spec : Prop :=
  ∀ n, (P3796510667593483539.a n : ℤ) = A060144 n

end A060144

/-! ## A060144.P8165612304875155001

`2*n-A004956(n)`
-/

namespace A060144.P8165612304875155001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004956 n

end

end A060144.P8165612304875155001

namespace A060144

/-- `2*n-A004956(n)` -/
def P8165612304875155001.Spec : Prop :=
  ∀ n, P8165612304875155001.a n = A060144 n

end A060144

/-! ## A060144.P13853402473223237929

`3*n-A004957(n)`
-/

namespace A060144.P13853402473223237929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004957 n

end

end A060144.P13853402473223237929

namespace A060144

/-- `3*n-A004957(n)` -/
def P13853402473223237929.Spec : Prop :=
  ∀ n, P13853402473223237929.a n = A060144 n

end A060144

/-! ## A060144.P7479216292768544313

`A195121(n)%(n+1)`
-/

namespace A060144.P7479216292768544313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195121 n) (n + 1 : ℤ)

end

end A060144.P7479216292768544313

namespace A060144

/-- `A195121(n)%(n+1)` -/
def P7479216292768544313.Spec : Prop :=
  ∀ n, P7479216292768544313.a n = A060144 n

end A060144

/-! ## A060144.P8428088245113251615

`(2*n)%A026351(n)`
-/

namespace A060144.P8428088245113251615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A026351 n)

end

end A060144.P8428088245113251615

namespace A060144

/-- `(2*n)%A026351(n)` -/
def P8428088245113251615.Spec : Prop :=
  ∀ n, P8428088245113251615.a n = A060144 n

end A060144

/-! ## A060144.P15573735940532477132

`∑[char[A004957(n+1)]]`
-/

namespace A060144.P15573735940532477132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060144.P15573735940532477132

namespace A060144

/-- `∑[char[A004957(n+1)]]` -/
def P15573735940532477132.Spec : Prop :=
  ∀ n, (P15573735940532477132.a n : ℤ) = A060144 n

end A060144

/-! ## A060144.P1083249716406159447

`∑[char[A026352(n+1)]]`
-/

namespace A060144.P1083249716406159447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060144.P1083249716406159447

namespace A060144

/-- `∑[char[A026352(n+1)]]` -/
def P1083249716406159447.Spec : Prop :=
  ∀ n, (P1083249716406159447.a n : ℤ) = A060144 n

end A060144

/-! ## A060144.P11891828534352143814

`∑[A289034(n+1)]-1`
-/

namespace A060144.P11891828534352143814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060144.P11891828534352143814

namespace A060144

/-- `∑[A289034(n+1)]-1` -/
def P11891828534352143814.Spec : Prop :=
  ∀ n, P11891828534352143814.a n = A060144 n

end A060144

/-! ## A060144.P1644470124599206696

`n-∑[A189479(n+1)]`
-/

namespace A060144.P1644470124599206696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060144.P1644470124599206696

namespace A060144

/-- `n-∑[A189479(n+1)]` -/
def P1644470124599206696.Spec : Prop :=
  ∀ n, P1644470124599206696.a n = A060144 n

end A060144

/-! ## A060144.P17729845980524043183

`comp[A003231(n+1)]-n`
-/

namespace A060144.P17729845980524043183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A060144.P17729845980524043183

namespace A060144

/-- `comp[A003231(n+1)]-n` -/
def P17729845980524043183.Spec : Prop :=
  ∀ n, P17729845980524043183.a n = A060144 n

end A060144

/-! ## A060144.P1782530364666000754

`2*n-comp[A026352(n)]`
-/

namespace A060144.P1782530364666000754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A060144.P1782530364666000754

namespace A060144

/-- `2*n-comp[A026352(n)]` -/
def P1782530364666000754.Spec : Prop :=
  ∀ n, P1782530364666000754.a n = A060144 n

end A060144

/-!
# A060145: a(n) = floor(n/tau) - floor(n/(1 + tau)).

The programs for A060145, the canonical program `A060145.P9806475002723103157` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060145 has offset 0).

The definition of A060145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060145.P10775087021524349108

`floor(n/ϕ)-floor(n/ϕ²)`
-/

namespace A060145.P10775087021524349108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋ - ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

end

end A060145.P10775087021524349108

namespace A060145

/-- `floor(n/ϕ)-floor(n/ϕ²)` -/
def P10775087021524349108.Spec : Prop :=
  ∀ n, P10775087021524349108.a n = A060145 n

end A060145

/-! ## A060145.P7924925048164807826

`(2*floor(ϕ*n)+3+n)%Δ[n²]`
-/

namespace A060145.P7924925048164807826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ⌊Real.goldenRatio * (n : ℝ)⌋ + 3 + (n : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A060145.P7924925048164807826

namespace A060145

/-- `(2*floor(ϕ*n)+3+n)%Δ[n²]` -/
def P7924925048164807826.Spec : Prop :=
  ∀ n, P7924925048164807826.a n = A060145 n

end A060145

/-! ## A060145.P9806475002723103157

`abs(A004956(n)-A195121(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060145

/-- `abs(A004956(n)-A195121(n))` -/
def P9806475002723103157.Spec : Prop :=
  ∀ n, P9806475002723103157.a n = A060145 n

theorem P9806475002723103157.correct : P9806475002723103157.Spec := by
  intro n
  simp only [A060145]

end A060145

/-! ## A060145.P872485279716878195

`∑[A189479(n+1)-A189661(n+1)]`
-/

namespace A060145.P872485279716878195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1) - A189661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060145.P872485279716878195

namespace A060145

/-- `∑[A189479(n+1)-A189661(n+1)]` -/
def P872485279716878195.Spec : Prop :=
  ∀ n, P872485279716878195.a n = A060145 n

end A060145

/-! ## A060145.P9750668385725927647

`∑[A287523(n+1)-A289034(n+1)]`
-/

namespace A060145.P9750668385725927647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1) - A289034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060145.P9750668385725927647

namespace A060145

/-- `∑[A287523(n+1)-A289034(n+1)]` -/
def P9750668385725927647.Spec : Prop :=
  ∀ n, P9750668385725927647.a n = A060145 n

end A060145

/-! ## A060145.P164288777102149134

`∑[A287523(n+1)-A287523(A026351(n))]`
-/

namespace A060145.P164288777102149134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1) - A287523 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060145.P164288777102149134

namespace A060145

/-- `∑[A287523(n+1)-A287523(A026351(n))]` -/
def P164288777102149134.Spec : Prop :=
  ∀ n, P164288777102149134.a n = A060145 n

end A060145

/-!
# A060146: Take the first 2n integers and using each integer once and only once as either a numerator or a denominator, construct n fractions whose sum is an integer; a(n) = number of distinct solutions for n.

The programs for A060146, there is no canonical definition to state claims against.
-/

/-! ## A060146.P9182184345579880148

`or(A038722(A180402(n+1)), A180399(n))`
-/

namespace A060146.P9182184345579880148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038722 (A180402 (n + 1)).toNat) (A180399 n)

end

end A060146.P9182184345579880148

/-! ## A060146.P15389757265934993659

`or(A187181(A047852(n)), A317757(n+1))`
-/

namespace A060146.P15389757265934993659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187181 (A047852 n).toNat) (A317757 (n + 1))

end

end A060146.P15389757265934993659

/-!
# A060147: Nim-binomial transform of the Nim-squares sequence {0,1,3,2,6,7,5,4,13,12,14,...}.

The programs for A060147, there is no canonical definition to state claims against.
-/

/-! ## A060147.P5956669015212787325

`A006042(A048298(n))`
-/

namespace A060147.P5956669015212787325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A048298 n).toNat

end

end A060147.P5956669015212787325

/-! ## A060147.P11676645588309140576

`A006042(n*A209229(n))`
-/

namespace A060147.P11676645588309140576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 ((n : ℤ) * A209229 n).toNat

end

end A060147.P11676645588309140576

/-! ## A060147.P17768913005172407608

`A006042(and(n, A099893(n)))`
-/

namespace A060147.P17768913005172407608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (Int.land (n : ℤ) (A099893 n)).toNat

end

end A060147.P17768913005172407608

/-! ## A060147.P16877668801886498918

`A006042(n*A255738(n+1))`
-/

namespace A060147.P16877668801886498918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 ((n : ℤ) * A255738 (n + 1)).toNat

end

end A060147.P16877668801886498918

/-! ## A060147.P17008776537420860635

`A006017(A023416(n))*A209229(n)`
-/

namespace A060147.P17008776537420860635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006017 (A023416 n).toNat * A209229 n

end

end A060147.P17008776537420860635

/-! ## A060147.P13098399225536930113

`char[A000079(n)]*A006017(A023416(n))`
-/

namespace A060147.P13098399225536930113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006017 (A023416 n).toNat

end

end A060147.P13098399225536930113

/-! ## A060147.P15655573306675691481

`char[A059268(n)]*A006017(A023416(n))`
-/

namespace A060147.P15655573306675691481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006017 (A023416 n).toNat

end

end A060147.P15655573306675691481

/-! ## A060147.P5886561152012287434

`char[A130321(n)]*A006017(A023416(n))`
-/

namespace A060147.P5886561152012287434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006017 (A023416 n).toNat

end

end A060147.P5886561152012287434

/-! ## A060147.P3147901657121306691

`A006017(A023416(n))*A048298(A038573(n))`
-/

namespace A060147.P3147901657121306691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006017 (A023416 n).toNat * A048298 (A038573 n).toNat

end

end A060147.P3147901657121306691

/-! ## A060147.P11304944318998755847

`A335535(A160679(n*char[A001316(n)]))`
-/

namespace A060147.P11304944318998755847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335535 (A160679 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))).toNat

end

end A060147.P11304944318998755847

/-! ## A060147.P9494099826562959758

`A051910(A000096(n*A209229(n)))`
-/

namespace A060147.P9494099826562959758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (A000096 ((n : ℤ) * A209229 n).toNat).toNat

end

end A060147.P9494099826562959758

/-! ## A060147.P5380089950793905941

`A051910(A048298(n)+∑[n])`
-/

namespace A060147.P5380089950793905941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (A048298 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060147.P5380089950793905941

/-! ## A060147.P2940740108819435612

`A051910(A000096(n)+1-A209229(n))`
-/

namespace A060147.P2940740108819435612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (A000096 n + (1 - A209229 n)).toNat

end

end A060147.P2940740108819435612

/-! ## A060147.P14207597210029458317

`A051910(1-(A209229(n)-A000096(n)))`
-/

namespace A060147.P14207597210029458317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (1 - (A209229 n - A000096 n)).toNat

end

end A060147.P14207597210029458317

/-!
# A060148: Number of closed forest meander systems with 2n crossings.

The programs for A060148, there is no canonical definition to state claims against.
-/

/-! ## A060148.P15883484404248261009

`A375085(A048871(n+1))`
-/

namespace A060148.P15883484404248261009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375085 (A048871 (n + 1)).toNat

end

end A060148.P15883484404248261009

/-! ## A060148.P8492875351752209804

`∏{p}[A375085(A001844(n)), #]`
-/

namespace A060148.P8492875351752209804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375085 (A001844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A060148.P8492875351752209804

/-!
# A060149: Number of homogeneous generators of degree n for graded algebra associated with meanders.

The programs for A060149, there is no canonical definition to state claims against.
-/

/-! ## A060149.P1510242187356003776

`A200329(A019544(n+2)+1)`
-/

namespace A060149.P1510242187356003776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A019544 (n + 2) + 1).toNat

end

end A060149.P1510242187356003776

/-! ## A060149.P1066591337969551526

`A274640(2*n*A127715(n))`
-/

namespace A060149.P1066591337969551526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (2 * ((n : ℤ) * A127715 n)).toNat

end

end A060149.P1066591337969551526

/-!
# A060150: a(0) = 1; for n > 0, binomial(2n-1, n-1)^2.

The programs for A060150, the canonical program `A060150.P5157050367033873665` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060150 has offset 0).

The definition of A060150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060150.P5157050367033873665

`A088218(n)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060150

/-- `A088218(n)²` -/
def P5157050367033873665.Spec : Prop :=
  ∀ n, P5157050367033873665.a n = A060150 n

theorem P5157050367033873665.correct : P5157050367033873665.Spec := by
  intro n
  simp only [A060150]

end A060150

/-! ## A060150.P14622227159537269309

`C(abs(1-2*n), n)²`
-/

namespace A060150.P14622227159537269309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (2 * n : ℤ)|.toNat n ^ 2

end

end A060150.P14622227159537269309

namespace A060150

/-- `C(abs(1-2*n), n)²` -/
def P14622227159537269309.Spec : Prop :=
  ∀ n, (P14622227159537269309.a n : ℤ) = A060150 n

end A060150

/-! ## A060150.P15037599854896196213

`ceil((C(2*n, n)/2)²)`
-/

namespace A060150.P15037599854896196213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (2 * n) n : ℚ) / 2) ^ 2⌉

end

end A060150.P15037599854896196213

namespace A060150

/-- `ceil((C(2*n, n)/2)²)` -/
def P15037599854896196213.Spec : Prop :=
  ∀ n, P15037599854896196213.a n = A060150 n

end A060150

/-! ## A060150.P3208413454433707865

`round(C(2*n, n)/2)²`
-/

namespace A060150.P3208413454433707865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / 2) ^ 2

end

end A060150.P3208413454433707865

namespace A060150

/-- `round(C(2*n, n)/2)²` -/
def P3208413454433707865.Spec : Prop :=
  ∀ n, P3208413454433707865.a n = A060150 n

end A060150

/-! ## A060150.P2088000161980958876

`(lcm(2, C(2*n, n))/2)²`
-/

namespace A060150.P2088000161980958876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (Nat.choose (2 * n) n) : ℚ) / 2) ^ 2

end

end A060150.P2088000161980958876

namespace A060150

/-- `(lcm(2, C(2*n, n))/2)²` -/
def P2088000161980958876.Spec : Prop :=
  ∀ n, P2088000161980958876.a n = (A060150 n : ℚ)

end A060150

/-! ## A060150.P3801403490188839664

`floor(-(C(2*n, n)/2))²`
-/

namespace A060150.P3801403490188839664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Nat.choose (2 * n) n : ℚ) / 2)⌋ ^ 2

end

end A060150.P3801403490188839664

namespace A060150

/-- `floor(-(C(2*n, n)/2))²` -/
def P3801403490188839664.Spec : Prop :=
  ∀ n, P3801403490188839664.a n = A060150 n

end A060150

/-! ## A060150.P14115250006509495055

`∑{d}[1-2*n, C(#, n)²]`
-/

namespace A060150.P14115250006509495055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose d n ^ 2

end

end A060150.P14115250006509495055

namespace A060150

/-- `∑{d}[1-2*n, C(#, n)²]` -/
def P14115250006509495055.Spec : Prop :=
  ∀ n, (P14115250006509495055.a n : ℤ) = A060150 n

end A060150

/-! ## A060150.P7699262488592970389

`∑{d}[n-1+n, C(#, n)]²`
-/

namespace A060150.P7699262488592970389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose d n) ^ 2

end

end A060150.P7699262488592970389

namespace A060150

/-- `∑{d}[n-1+n, C(#, n)]²` -/
def P7699262488592970389.Spec : Prop :=
  ∀ n, (P7699262488592970389.a n : ℤ) = A060150 n

end A060150

/-! ## A060150.P17913505225064029280

`floor((C(2*n, n)+1)/2)²`
-/

namespace A060150.P17913505225064029280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) n + 1 : ℚ) / 2⌋ ^ 2

end

end A060150.P17913505225064029280

namespace A060150

/-- `floor((C(2*n, n)+1)/2)²` -/
def P17913505225064029280.Spec : Prop :=
  ∀ n, P17913505225064029280.a n = A060150 n

end A060150

/-! ## A060150.P6926053233283129274

`A110556(n)²`
-/

namespace A060150.P6926053233283129274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n ^ 2

end

end A060150.P6926053233283129274

namespace A060150

/-- `A110556(n)²` -/
def P6926053233283129274.Spec : Prop :=
  ∀ n, P6926053233283129274.a n = A060150 n

end A060150

/-!
# A060151: Number of base n digits required to write n!.

The programs for A060151, there is no canonical definition to state claims against.
-/

/-! ## A060151.P16547537948431456771

`A074184(n+1)+char[1]`
-/

namespace A060151.P16547537948431456771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060151.P16547537948431456771

/-! ## A060151.P14223397712032847431

`A277674(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A060151.P14223397712032847431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A277674 n + a (n - 1)

end

end A060151.P14223397712032847431

/-! ## A060151.P1988788372686228442

`A039960(n+1)%(n+1)+1`
-/

namespace A060151.P1988788372686228442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039960 (n + 1)) (n + 1 : ℤ) + 1

end

end A060151.P1988788372686228442

/-! ## A060151.P10385975768244560370

`A074184(A348776(n+1))`
-/

namespace A060151.P10385975768244560370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (A348776 (n + 1)).toNat

end

end A060151.P10385975768244560370

/-! ## A060151.P9568652826497770220

`A074184(A373565(n)+n)`
-/

namespace A060151.P9568652826497770220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (A373565 n + (n : ℤ)).toNat

end

end A060151.P9568652826497770220

/-! ## A060151.P13373236422964172099

`A057427(n)+A039960(n+1)`
-/

namespace A060151.P13373236422964172099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A039960 (n + 1)

end

end A060151.P13373236422964172099

/-! ## A060151.P10555055297136222036

`A039960(n+1)-A057428(n)`
-/

namespace A060151.P10555055297136222036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 1) - A057428 n

end

end A060151.P10555055297136222036

/-! ## A060151.P18149095327921863110

`A074184(1-A159075(n)+n)`
-/

namespace A060151.P18149095327921863110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (1 - A159075 n + (n : ℤ)).toNat

end

end A060151.P18149095327921863110

/-! ## A060151.P2837735449783400138

`A074184(1-(A159075(n)-n))`
-/

namespace A060151.P2837735449783400138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (1 - (A159075 n - (n : ℤ))).toNat

end

end A060151.P2837735449783400138

/-! ## A060151.P16488984398715788795

`A039960(and(1, a(n-1)))+A039960(n+1)` with `a(0)=1`
-/

namespace A060151.P16488984398715788795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039960 (Int.land 1 (a (n - 1))).toNat + A039960 (n + 1)

end

end A060151.P16488984398715788795

/-! ## A060151.P12306386882429316401

`A039960(n+1)+A039960(C(a(n-1), n))` with `a(0)=1`
-/

namespace A060151.P12306386882429316401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039960 (n + 1) + A039960 (Nat.choose (a (n - 1)).toNat n)

end

end A060151.P12306386882429316401

/-! ## A060151.P894756126595948018

`A209229(A209229(n)+n)+A074184(n+1)`
-/

namespace A060151.P894756126595948018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A209229 n + (n : ℤ)).toNat + A074184 (n + 1)

end

end A060151.P894756126595948018

/-! ## A060151.P14214290830507863355

`A039960(n+1)+A057428(n)*A057428(n+1)`
-/

namespace A060151.P14214290830507863355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 1) + A057428 n * A057428 (n + 1)

end

end A060151.P14214290830507863355

/-! ## A060151.P16770940437333912810

`A039960(n+1)+A057428(2*n)²`
-/

namespace A060151.P16770940437333912810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 1) + A057428 (2 * n) ^ 2

end

end A060151.P16770940437333912810

/-! ## A060151.P1501940434655487213

`A039960(n+1)+a(A005926(2*n))` with `a(0)=1`
-/

namespace A060151.P1501940434655487213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039960 (n + 1) + a (A005926 (2 * n)).toNat

end

end A060151.P1501940434655487213

/-! ## A060151.P17044998667987174069

`A039960(n+1)+n/A065033(2*n)`
-/

namespace A060151.P17044998667987174069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039960 (n + 1) : ℚ) + (n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A060151.P17044998667987174069

/-! ## A060151.P10074304606449176297

`A065033(2*n+1)+A039960(n+1)-A065033(2*n)`
-/

namespace A060151.P10074304606449176297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) + (A039960 (n + 1) - A065033 (2 * n))

end

end A060151.P10074304606449176297

/-! ## A060151.P561882652801989558

`A236858(2*n+1)+A039960(n+1)-A236858(2*n)`
-/

namespace A060151.P561882652801989558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236858 (2 * n + 1) + (A039960 (n + 1) - A236858 (2 * n))

end

end A060151.P561882652801989558

/-!
# A060154: Table T(n,k) by antidiagonals of n^k mod k [n,k >= 1].

The programs for A060154, there is no canonical definition to state claims against.
-/

/-! ## A060154.P7465413846005027164

`A114448(∑[char[∑[n]]]²-n)`
-/

namespace A060154.P7465413846005027164
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A060154.P7465413846005027164

/-! ## A060154.P16533593211517867076

`A051129(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A060154.P16533593211517867076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051129 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A060154.P16533593211517867076

/-! ## A060154.P2712176311451468446

`A156353(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A060154.P2712176311451468446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156353 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A060154.P2712176311451468446

/-! ## A060154.P591982072687864612

`A051129(n+1)%A004736(n+1)`
-/

namespace A060154.P591982072687864612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051129 (n + 1)) (A004736 (n + 1))

end

end A060154.P591982072687864612

/-! ## A060154.P13208500332575453823

`A156353(n+1)%A004736(n+1)`
-/

namespace A060154.P13208500332575453823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156353 (n + 1)) (A004736 (n + 1))

end

end A060154.P13208500332575453823

/-! ## A060154.P7271139973578942467

`A009998(comp[∑[n+1]])%A004736(n+1)`
-/

namespace A060154.P7271139973578942467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A004736 (n + 1))

end

end A060154.P7271139973578942467

/-! ## A060154.P4245635523347676915

`(A002260(n+1)^A004736(n+1))%A004736(n+1)`
-/

namespace A060154.P4245635523347676915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))) (A004736 (n + 1))

end

end A060154.P4245635523347676915

/-! ## A060154.P11284808589155350084

`A051128(∑[char[∑[n]]]²-n)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A060154.P11284808589155350084
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A060154.P11284808589155350084

/-! ## A060154.P7478663608359479173

`A051128(A038722(n+1))%A004736(n+1)`
-/

namespace A060154.P7478663608359479173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (A038722 (n + 1)).toNat) (A004736 (n + 1))

end

end A060154.P7478663608359479173

/-! ## A060154.P12004236947308366244

`A338280(n+2)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A060154.P12004236947308366244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338280 (n + 2)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A060154.P12004236947308366244

/-! ## A060154.P5459277766649662132

`A338280(n+2)%A004736(n+1)`
-/

namespace A060154.P5459277766649662132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338280 (n + 2)) (A004736 (n + 1))

end

end A060154.P5459277766649662132

/-! ## A060154.P3208228499184874683

`A094263(∑[2*n]%comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A060154.P3208228499184874683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A060154.P3208228499184874683

/-! ## A060154.P11542940462346459695

`A094263(A099375(n)+1+n)`
-/

namespace A060154.P11542940462346459695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (A099375 n + 1 + (n : ℤ)).toNat

end

end A060154.P11542940462346459695

/-! ## A060154.P7555364330946533466

`A094263(A038722(n+1)+A003056(n)+1)`
-/

namespace A060154.P7555364330946533466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (A038722 (n + 1) + (A003056 n + 1)).toNat

end

end A060154.P7555364330946533466

/-! ## A060154.P12712080613504785930

`A051129(n+1)%A000005(A130321(n))`
-/

namespace A060154.P12712080613504785930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051129 (n + 1)) (A000005 (A130321 n).toNat)

end

end A060154.P12712080613504785930

/-! ## A060154.P5767642801138538479

`A156353(n+1)%A000005(A130321(n))`
-/

namespace A060154.P5767642801138538479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156353 (n + 1)) (A000005 (A130321 n).toNat)

end

end A060154.P5767642801138538479

/-! ## A060154.P12652892448705480704

`A338280(n+2)%A000005(A130321(n))`
-/

namespace A060154.P12652892448705480704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338280 (n + 2)) (A000005 (A130321 n).toNat)

end

end A060154.P12652892448705480704

/-!
# A060155: Table T(n,k) by antidiagonals of floor(n^k/k) [n,k >= 1].

The programs for A060155, the canonical program `A060155.P3988702080630872113` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060155 has offset 1).

The definition of A060155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060155.P502961533050782433

`floor(A051129(n+1)/(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060155.P502961533050782433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)⌋

end

end A060155.P502961533050782433

namespace A060155

/-- `floor(A051129(n+1)/(C(comp[∑[n]]-n, 2)-n))` -/
def P502961533050782433.Spec : Prop :=
  ∀ n, P502961533050782433.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P3988702080630872113

`floor(A051129(n+1)/A004736(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060155

/-- `floor(A051129(n+1)/A004736(n+1))` -/
def P3988702080630872113.Spec : Prop :=
  ∀ n, P3988702080630872113.a n = A060155 (n + 1)

theorem P3988702080630872113.correct : P3988702080630872113.Spec := by
  intro n
  simp only [A060155, Nat.add_sub_cancel]

end A060155

/-! ## A060155.P9789505828837270030

`floor(A051129(n+1)/(A025581(n)+1))`
-/

namespace A060155.P9789505828837270030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)⌋

end

end A060155.P9789505828837270030

namespace A060155

/-- `floor(A051129(n+1)/(A025581(n)+1))` -/
def P9789505828837270030.Spec : Prop :=
  ∀ n, P9789505828837270030.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P3517220061474816199

`floor(A051129(n+1)/sqrt(A055461(n+1)))`
-/

namespace A060155.P3517220061474816199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℝ) / Real.sqrt (A055461 (n + 1) : ℝ)⌋

end

end A060155.P3517220061474816199

namespace A060155

/-- `floor(A051129(n+1)/sqrt(A055461(n+1)))` -/
def P3517220061474816199.Spec : Prop :=
  ∀ n, P3517220061474816199.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P4287113253526402537

`floor(A051129(n+1)/A002260(A278818(n)))`
-/

namespace A060155.P4287113253526402537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A002260 (A278818 n).toNat : ℚ)⌋

end

end A060155.P4287113253526402537

namespace A060155

/-- `floor(A051129(n+1)/A002260(A278818(n)))` -/
def P4287113253526402537.Spec : Prop :=
  ∀ n, P4287113253526402537.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P15107657819201752288

`floor(A051129(n+1)/A002260(A038722(n+1)))`
-/

namespace A060155.P15107657819201752288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)⌋

end

end A060155.P15107657819201752288

namespace A060155

/-- `floor(A051129(n+1)/A002260(A038722(n+1)))` -/
def P15107657819201752288.Spec : Prop :=
  ∀ n, P15107657819201752288.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P3269877516863227889

`floor(A051128(A038722(n+1))/A004736(n+1))`
-/

namespace A060155.P3269877516863227889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051128 (A038722 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A060155.P3269877516863227889

namespace A060155

/-- `floor(A051128(A038722(n+1))/A004736(n+1))` -/
def P3269877516863227889.Spec : Prop :=
  ∀ n, P3269877516863227889.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P605377281468867296

`floor(A134574(n+1)/A055461(n+1))`
-/

namespace A060155.P605377281468867296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134574 (n + 1) : ℚ) / (A055461 (n + 1) : ℚ)⌋

end

end A060155.P605377281468867296

namespace A060155

/-- `floor(A134574(n+1)/A055461(n+1))` -/
def P605377281468867296.Spec : Prop :=
  ∀ n, P605377281468867296.a n = A060155 (n + 1)

end A060155

/-! ## A060155.P183102750814993032

`floor(A051129(n+1)/A000005(A130321(n)))`
-/

namespace A060155.P183102750814993032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A000005 (A130321 n).toNat : ℚ)⌋

end

end A060155.P183102750814993032

namespace A060155

/-- `floor(A051129(n+1)/A000005(A130321(n)))` -/
def P183102750814993032.Spec : Prop :=
  ∀ n, P183102750814993032.a n = A060155 (n + 1)

end A060155

/-!
# A060156: a(n) = floor(10^n/n).

The programs for A060156, the canonical program `A060156.P2288423130290102805` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060156 has offset 1).

The definition of A060156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^(n+1)/(n+1))` (program `A060156.P2288423130290102805`, by `A060156.P2288423130290102805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060156.P2288423130290102805

`floor(10^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060156

/-- `floor(10^(n+1)/(n+1))` -/
def P2288423130290102805.Spec : Prop :=
  ∀ n, P2288423130290102805.a n = A060156 (n + 1)

theorem P2288423130290102805.correct : P2288423130290102805.Spec := by
  intro n
  simp only [A060156, Nat.add_sub_cancel]

end A060156

/-! ## A060156.P18340297289795396489

`(A011557(n+1)-A056969(n+1))/(n+1)`
-/

namespace A060156.P18340297289795396489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) - A056969 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060156.P18340297289795396489

namespace A060156

/-- `(A011557(n+1)-A056969(n+1))/(n+1)` -/
def P18340297289795396489.Spec : Prop :=
  ∀ n, P18340297289795396489.a n = (A060156 (n + 1) : ℚ)

end A060156

/-! ## A060156.P5066442668568966428

`A066558(n+1)+A000007(A051626(n+1))`
-/

namespace A060156.P5066442668568966428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066558 (n + 1) + A000007 (A051626 (n + 1)).toNat

end

end A060156.P5066442668568966428

namespace A060156

/-- `A066558(n+1)+A000007(A051626(n+1))` -/
def P5066442668568966428.Spec : Prop :=
  ∀ n, P5066442668568966428.a n = A060156 (n + 1)

end A060156

/-! ## A060156.P15603360899996167714

`A066558(n+1)+A000007(A056968(n+1))`
-/

namespace A060156.P15603360899996167714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066558 (n + 1) + A000007 (A056968 (n + 1)).toNat

end

end A060156.P15603360899996167714

namespace A060156

/-- `A066558(n+1)+A000007(A056968(n+1))` -/
def P15603360899996167714.Spec : Prop :=
  ∀ n, P15603360899996167714.a n = A060156 (n + 1)

end A060156

/-! ## A060156.P1464831183641857678

`A066558(n+1)+A000007(A056969(n+1))`
-/

namespace A060156.P1464831183641857678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066558 (n + 1) + A000007 (A056969 (n + 1)).toNat

end

end A060156.P1464831183641857678

namespace A060156

/-- `A066558(n+1)+A000007(A056969(n+1))` -/
def P1464831183641857678.Spec : Prop :=
  ∀ n, P1464831183641857678.a n = A060156 (n + 1)

end A060156

/-! ## A060156.P4783073946875701674

`A066558(n+1)+A000007(A066209(n+1))`
-/

namespace A060156.P4783073946875701674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066558 (n + 1) + A000007 (A066209 (n + 1)).toNat

end

end A060156.P4783073946875701674

namespace A060156

/-- `A066558(n+1)+A000007(A066209(n+1))` -/
def P4783073946875701674.Spec : Prop :=
  ∀ n, P4783073946875701674.a n = A060156 (n + 1)

end A060156

/-!
# A060157: Number of permutations of [n] with 3 sequences.

The programs for A060157, the canonical program `A060157.P8212795025774412622` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060157 has offset 3).

The definition of A060157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060157.P8212795025774412622

`(3^(n+3)+11)/2-2^(n+4)-(n+3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060157

/-- `(3^(n+3)+11)/2-2^(n+4)-(n+3)` -/
def P8212795025774412622.Spec : Prop :=
  ∀ n, P8212795025774412622.a n = (A060157 (n + 3) : ℚ)

end A060157

/-! ## A060157.P17902503533992877788

`∑[A368956(n+2)]`
-/

namespace A060157.P17902503533992877788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P17902503533992877788

namespace A060157

/-- `∑[A368956(n+2)]` -/
def P17902503533992877788.Spec : Prop :=
  ∀ n, P17902503533992877788.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P3152578421519147225

`∑[A003063(n+3)-1]`
-/

namespace A060157.P3152578421519147225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P3152578421519147225

namespace A060157

/-- `∑[A003063(n+3)-1]` -/
def P3152578421519147225.Spec : Prop :=
  ∀ n, P3152578421519147225.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P3861712834244046189

`∑[A028243(n+3)-2]`
-/

namespace A060157.P3861712834244046189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P3861712834244046189

namespace A060157

/-- `∑[A028243(n+3)-2]` -/
def P3861712834244046189.Spec : Prop :=
  ∀ n, P3861712834244046189.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P12400968402021003448

`∑[A101052(n+2)-3]`
-/

namespace A060157.P12400968402021003448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P12400968402021003448

namespace A060157

/-- `∑[A101052(n+2)-3]` -/
def P12400968402021003448.Spec : Prop :=
  ∀ n, P12400968402021003448.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P4469077243135408393

`2*(A249999(n)-(n+1))`
-/

namespace A060157.P4469077243135408393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A249999 n - (n + 1 : ℤ))

end

end A060157.P4469077243135408393

namespace A060157

/-- `2*(A249999(n)-(n+1))` -/
def P4469077243135408393.Spec : Prop :=
  ∀ n, P4469077243135408393.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P4500345630984038165

`∑[∑[A056182(n+1)]-2]`
-/

namespace A060157.P4500345630984038165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P4500345630984038165

namespace A060157

/-- `∑[∑[A056182(n+1)]-2]` -/
def P4500345630984038165.Spec : Prop :=
  ∀ n, P4500345630984038165.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P11959339218212554462

`∑[∑[A002783(n+1)-1]-2]`
-/

namespace A060157.P11959339218212554462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P11959339218212554462

namespace A060157

/-- `∑[∑[A002783(n+1)-1]-2]` -/
def P11959339218212554462.Spec : Prop :=
  ∀ n, P11959339218212554462.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P17687867372855237019

`∑[2*(∑[A001047(n+1)]-1)]`
-/

namespace A060157.P17687867372855237019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P17687867372855237019

namespace A060157

/-- `∑[2*(∑[A001047(n+1)]-1)]` -/
def P17687867372855237019.Spec : Prop :=
  ∀ n, P17687867372855237019.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P8957472043848200677

`∑[A034472(n+1)+a(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A060157.P8957472043848200677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A034472 (n + 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P8957472043848200677

namespace A060157

/-- `∑[A034472(n+1)+a(n-1)+a(n-1)]` -/
def P8957472043848200677.Spec : Prop :=
  ∀ n, P8957472043848200677.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P4316110488287429260

`∑[A255459(n)+A168611(n+1)]`
-/

namespace A060157.P4316110488287429260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255459 n + A168611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P4316110488287429260

namespace A060157

/-- `∑[A255459(n)+A168611(n+1)]` -/
def P4316110488287429260.Spec : Prop :=
  ∀ n, P4316110488287429260.a n = A060157 (n + 3)

end A060157

/-! ## A060157.P15198557053426453939

`∑[A001047(n+2)-A020737(n)]`
-/

namespace A060157.P15198557053426453939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 2) - A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P15198557053426453939

namespace A060157

/-- `∑[A001047(n+2)-A020737(n)]` -/
def P15198557053426453939.Spec : Prop :=
  ∀ n, P15198557053426453939.a n = A060157 (n + 3)

end A060157

/-!
# A060158: Number of permutations of [n] with 4 sequences.

The programs for A060158, there is no canonical definition to state claims against.
-/

/-! ## A060158.P12738186109810147722

`A361521(A394281(n))`
-/

namespace A060158.P12738186109810147722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361521 (A394281 n).toNat

end

end A060158.P12738186109810147722

/-! ## A060158.P11700811878711706841

`A361521(A337547(n²))`
-/

namespace A060158.P11700811878711706841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361521 (A337547 (n ^ 2)).toNat

end

end A060158.P11700811878711706841

/-! ## A060158.P12157700500573383724

`A098728(A300823(n!))`
-/

namespace A060158.P12157700500573383724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 (A300823 (Nat.factorial n)).toNat

end

end A060158.P12157700500573383724

/-!
# A060160: a(n) = 2^n - 1 + Fibonacci(n-1)*2^(n+1).

The programs for A060160, the canonical program `A060160.P2260384335396989134` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060160 has offset 1).

The definition of A060160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060160.P2260384335396989134

`5*a(n-1)-4*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=11, a(2)=23, a(3)=79`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060160

/-- `5*a(n-1)-4*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P2260384335396989134.Spec : Prop :=
  ∀ n, P2260384335396989134.a n = A060160 (n + 1)

theorem P2260384335396989134.correct : P2260384335396989134.Spec := by
  intro n
  simp only [A060160, Nat.add_sub_cancel]

end A060160

/-! ## A060160.P6152456963741001862

`A000079(n+1)*A001588(n)-1`
-/

namespace A060160.P6152456963741001862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A001588 n - 1

end

end A060160.P6152456963741001862

namespace A060160

/-- `A000079(n+1)*A001588(n)-1` -/
def P6152456963741001862.Spec : Prop :=
  ∀ n, P6152456963741001862.a n = A060160 (n + 1)

end A060160

/-! ## A060160.P10768157102274889400

`(A022087(n)+2)*A000079(n)-1`
-/

namespace A060160.P10768157102274889400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022087 n + 2) * A000079 n - 1

end

end A060160.P10768157102274889400

namespace A060160

/-- `(A022087(n)+2)*A000079(n)-1` -/
def P10768157102274889400.Spec : Prop :=
  ∀ n, P10768157102274889400.a n = A060160 (n + 1)

end A060160

/-! ## A060160.P7762905222390737045

`A000225(n+1)+record[A106624(n)]*A022087(n)`
-/

namespace A060160.P7762905222390737045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A022087 n

end

end A060160.P7762905222390737045

namespace A060160

/-- `A000225(n+1)+record[A106624(n)]*A022087(n)` -/
def P7762905222390737045.Spec : Prop :=
  ∀ n, P7762905222390737045.a n = A060160 (n + 1)

end A060160

/-! ## A060160.P7494816452133811353

`A126646(n)+(A126646(n+1)+1)*A000045(n)`
-/

namespace A060160.P7494816452133811353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (A126646 (n + 1) + 1) * A000045 n

end

end A060160.P7494816452133811353

namespace A060160

/-- `A126646(n)+(A126646(n+1)+1)*A000045(n)` -/
def P7494816452133811353.Spec : Prop :=
  ∀ n, P7494816452133811353.a n = A060160 (n + 1)

end A060160

/-! ## A060160.P17314431580812540135

`(A000032(n+1)-A000071(n+1))*A000079(n+1)-1`
-/

namespace A060160.P17314431580812540135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A000071 (n + 1)) * A000079 (n + 1) - 1

end

end A060160.P17314431580812540135

namespace A060160

/-- `(A000032(n+1)-A000071(n+1))*A000079(n+1)-1` -/
def P17314431580812540135.Spec : Prop :=
  ∀ n, P17314431580812540135.a n = A060160 (n + 1)

end A060160

/-! ## A060160.P13938105644376698091

`(A000204(n+1)-A000071(n+1))*A000079(n+1)-1`
-/

namespace A060160.P13938105644376698091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) - A000071 (n + 1)) * A000079 (n + 1) - 1

end

end A060160.P13938105644376698091

namespace A060160

/-- `(A000204(n+1)-A000071(n+1))*A000079(n+1)-1` -/
def P13938105644376698091.Spec : Prop :=
  ∀ n, P13938105644376698091.a n = A060160 (n + 1)

end A060160

/-!
# A060161: a(n) = 2^n - 1 + 2*Fibonacci(n-1).

The programs for A060161, the canonical program `A060161.P18230902311552276948` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060161 has offset 1).

The definition of A060161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060161.P18230902311552276948

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060161

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P18230902311552276948.Spec : Prop :=
  ∀ n, P18230902311552276948.a n = A060161 (n + 1)

theorem P18230902311552276948.correct : P18230902311552276948.Spec := by
  intro n
  simp only [A060161, Nat.add_sub_cancel]

end A060161

/-! ## A060161.P7937375929323864731

`2*A117591(n)-1`
-/

namespace A060161.P7937375929323864731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117591 n - 1

end

end A060161.P7937375929323864731

namespace A060161

/-- `2*A117591(n)-1` -/
def P7937375929323864731.Spec : Prop :=
  ∀ n, P7937375929323864731.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P2652327532247638945

`∑[2^n]+2*A000045(n)`
-/

namespace A060161.P2652327532247638945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A000045 n

end

end A060161.P2652327532247638945

namespace A060161

/-- `∑[2^n]+2*A000045(n)` -/
def P2652327532247638945.Spec : Prop :=
  ∀ n, P2652327532247638945.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P888173443111955922

`A001588(n)+A000918(n+1)`
-/

namespace A060161.P888173443111955922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + A000918 (n + 1)

end

end A060161.P888173443111955922

namespace A060161

/-- `A001588(n)+A000918(n+1)` -/
def P888173443111955922.Spec : Prop :=
  ∀ n, P888173443111955922.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P10109398936451114709

`A167821(n+1)+A022319(n)`
-/

namespace A060161.P10109398936451114709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + A022319 n

end

end A060161.P10109398936451114709

namespace A060161

/-- `A167821(n+1)+A022319(n)` -/
def P10109398936451114709.Spec : Prop :=
  ∀ n, P10109398936451114709.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P2587476974870944199

`A101351(n+1)-A152163(n)`
-/

namespace A060161.P2587476974870944199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101351 (n + 1) - A152163 n

end

end A060161.P2587476974870944199

namespace A060161

/-- `A101351(n+1)-A152163(n)` -/
def P2587476974870944199.Spec : Prop :=
  ∀ n, P2587476974870944199.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P9459746071046193481

`A001588(n)+2*A000225(n)`
-/

namespace A060161.P9459746071046193481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + 2 * A000225 n

end

end A060161.P9459746071046193481

namespace A060161

/-- `A001588(n)+2*A000225(n)` -/
def P9459746071046193481.Spec : Prop :=
  ∀ n, P9459746071046193481.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P17289596574747915058

`A006355(n+1)+∑[A000079(n)]`
-/

namespace A060161.P17289596574747915058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060161.P17289596574747915058

namespace A060161

/-- `A006355(n+1)+∑[A000079(n)]` -/
def P17289596574747915058.Spec : Prop :=
  ∀ n, P17289596574747915058.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P3199994099686386676

`A006355(n+1)+A000225(n+1)`
-/

namespace A060161.P3199994099686386676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A000225 (n + 1)

end

end A060161.P3199994099686386676

namespace A060161

/-- `A006355(n+1)+A000225(n+1)` -/
def P3199994099686386676.Spec : Prop :=
  ∀ n, P3199994099686386676.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P8221739690526506938

`A228078(n+1)+A000032(n+1)`
-/

namespace A060161.P8221739690526506938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228078 (n + 1) + A000032 (n + 1)

end

end A060161.P8221739690526506938

namespace A060161

/-- `A228078(n+1)+A000032(n+1)` -/
def P8221739690526506938.Spec : Prop :=
  ∀ n, P8221739690526506938.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P16949151958229671808

`A088859(n+1)-A001611(n+1)`
-/

namespace A060161.P16949151958229671808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088859 (n + 1) - A001611 (n + 1)

end

end A060161.P16949151958229671808

namespace A060161

/-- `A088859(n+1)-A001611(n+1)` -/
def P16949151958229671808.Spec : Prop :=
  ∀ n, P16949151958229671808.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P6637906496215546777

`2*(A000225(n)+A000045(n))+1`
-/

namespace A060161.P6637906496215546777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000225 n + A000045 n) + 1

end

end A060161.P6637906496215546777

namespace A060161

/-- `2*(A000225(n)+A000045(n))+1` -/
def P6637906496215546777.Spec : Prop :=
  ∀ n, P6637906496215546777.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P14323034977563547387

`A006355(n+1)+∑[∑[A011782(n)]]`
-/

namespace A060161.P14323034977563547387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060161.P14323034977563547387

namespace A060161

/-- `A006355(n+1)+∑[∑[A011782(n)]]` -/
def P14323034977563547387.Spec : Prop :=
  ∀ n, P14323034977563547387.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P12381753036494054596

`2*(A000045(n)+∑[A131577(n)])+1`
-/

namespace A060161.P12381753036494054596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A060161.P12381753036494054596

namespace A060161

/-- `2*(A000045(n)+∑[A131577(n)])+1` -/
def P12381753036494054596.Spec : Prop :=
  ∀ n, P12381753036494054596.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P10678762253809394288

`A000079(n+1)+A006355(n+1)-1`
-/

namespace A060161.P10678762253809394288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A006355 (n + 1) - 1)

end

end A060161.P10678762253809394288

namespace A060161

/-- `A000079(n+1)+A006355(n+1)-1` -/
def P10678762253809394288.Spec : Prop :=
  ∀ n, P10678762253809394288.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P3371073581336006416

`A000032(n+1)+A099036(n+1)-1`
-/

namespace A060161.P3371073581336006416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A099036 (n + 1) - 1)

end

end A060161.P3371073581336006416

namespace A060161

/-- `A000032(n+1)+A099036(n+1)-1` -/
def P3371073581336006416.Spec : Prop :=
  ∀ n, P3371073581336006416.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P8385334412649599554

`A000079(n+1)+A118658(n+1)-1`
-/

namespace A060161.P8385334412649599554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A118658 (n + 1) - 1)

end

end A060161.P8385334412649599554

namespace A060161

/-- `A000079(n+1)+A118658(n+1)-1` -/
def P8385334412649599554.Spec : Prop :=
  ∀ n, P8385334412649599554.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P17557092411071796484

`2*(A000045(n)+A000079(n)-1)+1`
-/

namespace A060161.P17557092411071796484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n + (A000079 n - 1)) + 1

end

end A060161.P17557092411071796484

namespace A060161

/-- `2*(A000045(n)+A000079(n)-1)+1` -/
def P17557092411071796484.Spec : Prop :=
  ∀ n, P17557092411071796484.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P14154877457509183300

`2*(A000045(n)+∑[A011782(n)]+1)-3`
-/

namespace A060161.P14154877457509183300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j + 1) - 3

end

end A060161.P14154877457509183300

namespace A060161

/-- `2*(A000045(n)+∑[A011782(n)]+1)-3` -/
def P14154877457509183300.Spec : Prop :=
  ∀ n, P14154877457509183300.a n = A060161 (n + 1)

end A060161

/-! ## A060161.P10945339270472789835

`A000045(n)+A126646(n)+A000045(n)`
-/

namespace A060161.P10945339270472789835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A126646 n + A000045 n)

end

end A060161.P10945339270472789835

namespace A060161

/-- `A000045(n)+A126646(n)+A000045(n)` -/
def P10945339270472789835.Spec : Prop :=
  ∀ n, P10945339270472789835.a n = A060161 (n + 1)

end A060161

/-!
# A060162: Triangle T(n,m) with T(n,m)=T(n-1,|m-1|)+T(n-1,m)+T(n-1,m+1)-2T(n-2,m) and T(0,0)=1.

The programs for A060162, there is no canonical definition to state claims against.
-/

/-! ## A060162.P11338895249034937782

`A059780(A061885(n))`
-/

namespace A060162.P11338895249034937782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (A061885 n).toNat

end

end A060162.P11338895249034937782

/-! ## A060162.P8809140723307262714

`A059780(A057944(n)+n)`
-/

namespace A060162.P8809140723307262714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (A057944 n + (n : ℤ)).toNat

end

end A060162.P8809140723307262714

/-! ## A060162.P14925840914940098874

`A059780(record[A037213(n)+n])`
-/

namespace A060162.P14925840914940098874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060162.P14925840914940098874

/-! ## A060162.P8844188546046519984

`A059780(A004201(n+1)-1)`
-/

namespace A060162.P8844188546046519984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (A004201 (n + 1) - 1).toNat

end

end A060162.P8844188546046519984

/-! ## A060162.P16084911257545457957

`A059780(eq[0, A079813(n+1)])`
-/

namespace A060162.P16084911257545457957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060162.P16084911257545457957

/-! ## A060162.P13128408571234795450

`A059780(A166021(n+1)-2)`
-/

namespace A060162.P13128408571234795450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (A166021 (n + 1) - 2).toNat

end

end A060162.P13128408571234795450

/-!
# A060163: a(n) = (n^3 + 5*n + 18)/6.

The programs for A060163, there is no canonical definition to state claims against.
-/

/-! ## A060163.P12977717974322106403

`((n-2)^3+5*(n-2)+18)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060163.P12977717974322106403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) ^ 3 + 5 * ((n : ℤ) - 2) + 18 : ℚ) / 6

end

end A060163.P12977717974322106403

/-! ## A060163.P3942131599854899203

`a(n-1)+A000124(n-3)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A060163.P3942131599854899203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  a (n - 1) + A000124 (n - 3)

end

end A060163.P3942131599854899203

/-! ## A060163.P8733448648974405825

`∑[a(n-1)-3+n]` with `a(0)=0, a(1)=2`
-/

namespace A060163.P8733448648974405825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060163.P8733448648974405825

/-! ## A060163.P16712914391923882793

`∑[a(n-1)-(3-n)]` with `a(0)=0, a(1)=2`
-/

namespace A060163.P16712914391923882793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060163.P16712914391923882793

/-! ## A060163.P15993185858381986245

`∑[C(n, 2)+1]-(1-n)²`
-/

namespace A060163.P15993185858381986245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - (n : ℤ)) ^ 2

end

end A060163.P15993185858381986245

/-! ## A060163.P8545940423927347357

`abs(n*(n-3)-C(n+1, 3))`
-/

namespace A060163.P8545940423927347357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - 3) - (Nat.choose (n + 1) 3 : ℤ)|

end

end A060163.P8545940423927347357

/-! ## A060163.P10686575559419227758

`∑[(n²+5)%(∑[n+1]+n)]`
-/

namespace A060163.P10686575559419227758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 5) % (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060163.P10686575559419227758

/-! ## A060163.P16335381827662971588

`A050407(n)+n`
-/

namespace A060163.P16335381827662971588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n + (n : ℤ)

end

end A060163.P16335381827662971588

/-! ## A060163.P14982904258312559342

`A006503(n)-A000566(n)`
-/

namespace A060163.P14982904258312559342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n - A000566 n

end

end A060163.P14982904258312559342

/-! ## A060163.P16201919706298185270

`A005586(n)-A005475(n)`
-/

namespace A060163.P16201919706298185270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n - A005475 n

end

end A060163.P16201919706298185270

/-! ## A060163.P12208686113813037344

`A004006(n)-A067998(n)`
-/

namespace A060163.P12208686113813037344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n - A067998 n

end

end A060163.P12208686113813037344

/-! ## A060163.P18424853648889750413

`A005286(n)-A116668(n)`
-/

namespace A060163.P18424853648889750413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n - A116668 n

end

end A060163.P18424853648889750413

/-! ## A060163.P4015384255073488924

`A143058(n)-A053755(n)`
-/

namespace A060163.P4015384255073488924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n - A053755 n

end

end A060163.P4015384255073488924

/-! ## A060163.P4007078933088912521

`A027378(n)-A192136(n)`
-/

namespace A060163.P4007078933088912521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n - A192136 n

end

end A060163.P4007078933088912521

/-! ## A060163.P11922450800095773676

`A101860(n)-A131878(n)`
-/

namespace A060163.P11922450800095773676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 n - A131878 n

end

end A060163.P11922450800095773676

/-! ## A060163.P4427926664015624763

`A092286(n)-A147875(n)`
-/

namespace A060163.P4427926664015624763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n - A147875 n

end

end A060163.P4427926664015624763

/-! ## A060163.P7108273995008960584

`A323221(n)-A003215(n)`
-/

namespace A060163.P7108273995008960584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n - A003215 n

end

end A060163.P7108273995008960584

/-! ## A060163.P15486898227571053411

`A341209(n)-A058331(n)`
-/

namespace A060163.P15486898227571053411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n - A058331 n

end

end A060163.P15486898227571053411

/-! ## A060163.P15373603755988585963

`A394185(n)-A164897(n)`
-/

namespace A060163.P15373603755988585963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n - A164897 n

end

end A060163.P15373603755988585963

/-! ## A060163.P17329785015063929750

`A188554(n)-A386480(n)`
-/

namespace A060163.P17329785015063929750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 n - A386480 n

end

end A060163.P17329785015063929750

/-!
# A060164: Number of orbits of length n under the map whose periodic points are counted by A000364.

The programs for A060164, there is no canonical definition to state claims against.
-/

/-! ## A060164.P13181140591471036733

`A287770(A029584(2*n+1))-A094218(n+1)`
-/

namespace A060164.P13181140591471036733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (A029584 (2 * n + 1)).toNat - A094218 (n + 1)

end

end A060164.P13181140591471036733

/-!
# A060165: Number of orbits of length n under the map whose periodic points are counted by A000984.

The programs for A060165, there is no canonical definition to state claims against.
-/

/-! ## A060165.P10850364706245075316

`2*A022553(n+1)`
-/

namespace A060165.P10850364706245075316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022553 (n + 1)

end

end A060165.P10850364706245075316

/-! ## A060165.P13187157631440475170

`A007727(n+1)/(n+1)`
-/

namespace A060165.P13187157631440475170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060165.P13187157631440475170

/-! ## A060165.P16355843801337196308

`(n+1)*A268619(n+1)`
-/

namespace A060165.P16355843801337196308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A268619 (n + 1)

end

end A060165.P16355843801337196308

/-! ## A060165.P5748991160785002197

`(n+1)/6*A268592(n+1)*(n+1)`
-/

namespace A060165.P5748991160785002197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A268592 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A060165.P5748991160785002197

/-! ## A060165.P13632951246348795972

`A054358(n+1)+A000108(n+1)`
-/

namespace A060165.P13632951246348795972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (n + 1) + A000108 (n + 1)

end

end A060165.P13632951246348795972

/-! ## A060165.P1946293964862655868

`A022553(A000027(n+1))+A022553(n+1)`
-/

namespace A060165.P1946293964862655868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (A000027 (n + 1)).toNat + A022553 (n + 1)

end

end A060165.P1946293964862655868

/-! ## A060165.P15631130202552110321

`A022553(n+1)+A022553(A028310(n+1))`
-/

namespace A060165.P15631130202552110321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) + A022553 (A028310 (n + 1)).toNat

end

end A060165.P15631130202552110321

/-! ## A060165.P6788061633008773652

`A022553(n+1)+A022553(abs(A274922(n+1)))`
-/

namespace A060165.P6788061633008773652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) + A022553 |A274922 (n + 1)|.toNat

end

end A060165.P6788061633008773652

/-! ## A060165.P11163925015190643676

`A022553(n+1)+A022553((n+1)%A045662(n))`
-/

namespace A060165.P11163925015190643676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) + A022553 (Int.tmod (n + 1 : ℤ) (A045662 n)).toNat

end

end A060165.P11163925015190643676

/-! ## A060165.P6843074632709244645

`A022553(n+1)+A022553(n+1)+A000007(n+1)`
-/

namespace A060165.P6843074632709244645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) + (A022553 (n + 1) + A000007 (n + 1))

end

end A060165.P6843074632709244645

/-! ## A060165.P690869560138563684

`A003239(n+1)+A022553(n+1)-A386946(n+1)`
-/

namespace A060165.P690869560138563684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 1) + (A022553 (n + 1) - A386946 (n + 1))

end

end A060165.P690869560138563684

/-! ## A060165.P6157313716912655353

`2/(n+1)*A045630(n+1)`
-/

namespace A060165.P6157313716912655353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A045630 (n + 1) : ℚ)

end

end A060165.P6157313716912655353

/-! ## A060165.P6234702164346072656

`A022553(n+1)+A022553(n+1)%A007582(n+1)`
-/

namespace A060165.P6234702164346072656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) + Int.tmod (A022553 (n + 1)) (A007582 (n + 1))

end

end A060165.P6234702164346072656

/-! ## A060165.P5118082321362279433

`2*A289978(∑[n+1]+1)`
-/

namespace A060165.P5118082321362279433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060165.P5118082321362279433

/-!
# A060166: Number of orbits of length n under the map whose periodic points are counted by A001641.

The programs for A060166, there is no canonical definition to state claims against.
-/

/-! ## A060166.P10882293939744735998

`A003003(round(n^(n/5)))`
-/

namespace A060166.P10882293939744735998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat

end

end A060166.P10882293939744735998

/-! ## A060166.P6741200209953925253

`ceil(A359994(n+1)/sqrt(7))`
-/

namespace A060166.P6741200209953925253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359994 (n + 1) : ℝ) / Real.sqrt (7 : ℝ)⌉

end

end A060166.P6741200209953925253

/-! ## A060166.P14595411754541888154

`A092982(A080528(n))`
-/

namespace A060166.P14595411754541888154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A080528 n).toNat

end

end A060166.P14595411754541888154

/-! ## A060166.P12983141818218265748

`A083375(A148034(n))`
-/

namespace A060166.P12983141818218265748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A148034 n).toNat

end

end A060166.P12983141818218265748

/-! ## A060166.P2178836972642571086

`A083375(A277346(n))`
-/

namespace A060166.P2178836972642571086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A277346 n).toNat

end

end A060166.P2178836972642571086

/-!
# A060167: Number of orbits of length n under the map whose periodic points are counted by A001642.

The programs for A060167, there is no canonical definition to state claims against.
-/

/-! ## A060167.P2284935796640662145

`A006670(A148001(n))`
-/

namespace A060167.P2284935796640662145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A148001 n).toNat

end

end A060167.P2284935796640662145

/-! ## A060167.P16676128603982496698

`A061358(n)+A000196(A104430(n))`
-/

namespace A060167.P16676128603982496698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + A000196 (A104430 n).toNat

end

end A060167.P16676128603982496698

/-! ## A060167.P5199846108035051119

`A216604(n)+A001221(A360747(n))`
-/

namespace A060167.P5199846108035051119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216604 n + A001221 (A360747 n).toNat

end

end A060167.P5199846108035051119

/-! ## A060167.P2147621189804303592

`A321729(n)+A290342(A124419(n))`
-/

namespace A060167.P2147621189804303592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 n + A290342 (A124419 n).toNat

end

end A060167.P2147621189804303592

/-! ## A060167.P7185877612829920471

`A370457(A319642(n))+A290454(n)`
-/

namespace A060167.P7185877612829920471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (A319642 n).toNat + A290454 n

end

end A060167.P7185877612829920471

/-!
# A060168: Number of orbits of length n under the map whose periodic points are counted by A001643.

The programs for A060168, there is no canonical definition to state claims against.
-/

/-! ## A060168.P8091452244785114152

`A125951(n+1)+A015157(A083951(n))`
-/

namespace A060168.P8091452244785114152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125951 (n + 1) + A015157 (A083951 n).toNat

end

end A060168.P8091452244785114152

/-! ## A060168.P2939944710152264621

`A247223(A183174(n+1))+A125951(n+1)`
-/

namespace A060168.P2939944710152264621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247223 (A183174 (n + 1)).toNat + A125951 (n + 1)

end

end A060168.P2939944710152264621

/-! ## A060168.P15740104414712891659

`A247223(A125951(n+4))+A125951(n+1)`
-/

namespace A060168.P15740104414712891659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247223 (A125951 (n + 4)).toNat + A125951 (n + 1)

end

end A060168.P15740104414712891659

/-! ## A060168.P5590119087211218296

`A335467(A324969(n+1))+A119620(n)`
-/

namespace A060168.P5590119087211218296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A324969 (n + 1)).toNat + A119620 n

end

end A060168.P5590119087211218296

/-! ## A060168.P894579058056629390

`A243283(A357638(3*n+4)+A319641(n))`
-/

namespace A060168.P894579058056629390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A357638 (3 * n + 4) + A319641 n).toNat

end

end A060168.P894579058056629390

/-!
# A060169: Number of orbits of length n under the automorphism of the 3-torus whose periodic points are counted by A001945.

The programs for A060169, there is no canonical definition to state claims against.
-/

/-! ## A060169.P14362483831766804008

`Δ[A134914(Δ[A164151(n)])]`
-/

namespace A060169.P14362483831766804008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060169.P14362483831766804008

/-! ## A060169.P5986981481837352943

`Δ[A048766(2*A049858(n))]`
-/

namespace A060169.P5986981481837352943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * A049858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060169.P5986981481837352943

/-! ## A060169.P11286054781026842189

`Δ[A048766(A005843(A049858(n)))]`
-/

namespace A060169.P11286054781026842189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005843 (A049858 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060169.P11286054781026842189

/-! ## A060169.P16861713127268162362

`A000120(and(A000628(n), A294501(n)))`
-/

namespace A060169.P16861713127268162362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A000628 n) (A294501 n)).toNat

end

end A060169.P16861713127268162362

/-! ## A060169.P15050024713206748363

`A029282(eq[A029214(n), A029216(n)])`
-/

namespace A060169.P15050024713206748363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029282 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060169.P15050024713206748363

/-!
# A060170: Number of orbits of length n under the map whose periodic points are counted by A005809.

The programs for A060170, there is no canonical definition to state claims against.
-/

/-! ## A060170.P1271757122409299116

`3*A346577(n+1)`
-/

namespace A060170.P1271757122409299116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A346577 (n + 1)

end

end A060170.P1271757122409299116

/-! ## A060170.P241749497494801179

`(n+1)*A268617(n+1)`
-/

namespace A060170.P241749497494801179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A268617 (n + 1)

end

end A060170.P241749497494801179

/-! ## A060170.P2050980081900787442

`(n+1)²/2*A268618(n+1)`
-/

namespace A060170.P2050980081900787442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 2 * (A268618 (n + 1) : ℚ)

end

end A060170.P2050980081900787442

/-! ## A060170.P1375785657605406163

`(n+1)/2*A268618(n+1)*A000027(n+1)`
-/

namespace A060170.P1375785657605406163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A268618 (n + 1) : ℚ) * (A000027 (n + 1) : ℚ)

end

end A060170.P1375785657605406163

/-! ## A060170.P2615835381461588025

`A045630(n+1)*A268618(n+1)/A268619(n+1)`
-/

namespace A060170.P2615835381461588025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045630 (n + 1) * A268618 (n + 1) : ℚ) / (A268619 (n + 1) : ℚ)

end

end A060170.P2615835381461588025

/-!
# A060171: Number of orbits of length n under a map whose periodic points seem to be counted by A006953.

The programs for A060171, there is no canonical definition to state claims against.
-/

/-! ## A060171.P5182013487577505104

`A060334(n+1)/2`
-/

namespace A060171.P5182013487577505104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060334 (n + 1) : ℚ) / 2

end

end A060171.P5182013487577505104

/-! ## A060171.P17961438187133820086

`A014682(A060334(n+1))`
-/

namespace A060171.P17961438187133820086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A060334 (n + 1)).toNat

end

end A060171.P17961438187133820086

/-! ## A060171.P12687255156374697286

`A175126(lcm(2, A060334(n+1)))`
-/

namespace A060171.P12687255156374697286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lcm 2 (A060334 (n + 1)))

end

end A060171.P12687255156374697286

/-! ## A060171.P13303834631985495510

`A273943(A060334(n+1)+2)-1`
-/

namespace A060171.P13303834631985495510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A060334 (n + 1) + 2).toNat - 1

end

end A060171.P13303834631985495510

/-! ## A060171.P9759640449576617625

`A273943(A060334(and(1, 2*n)+n+1))`
-/

namespace A060171.P9759640449576617625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A060334 (Nat.land 1 (2 * n) + n + 1)).toNat

end

end A060171.P9759640449576617625

/-!
# A060172: Number of orbits of length n under a map whose periodic points are counted by A027306.

The programs for A060172, there is no canonical definition to state claims against.
-/

/-! ## A060172.P9277888424592986429

`A122282(round(sqrt(A000669(n+1))))`
-/

namespace A060172.P9277888424592986429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (SequenceMachineLib.roundAway (Real.sqrt (A000669 (n + 1) : ℝ))).toNat

end

end A060172.P9277888424592986429

/-! ## A060172.P9853037530382068010

`A122350(round(sqrt(A000669(n+1))))`
-/

namespace A060172.P9853037530382068010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (SequenceMachineLib.roundAway (Real.sqrt (A000669 (n + 1) : ℝ))).toNat

end

end A060172.P9853037530382068010

/-! ## A060172.P17447775843105010800

`A356944(or(A066313(n+1), A295653(n)))`
-/

namespace A060172.P17447775843105010800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (Int.lor (A066313 (n + 1)) (A295653 n)).toNat

end

end A060172.P17447775843105010800

/-!
# A060173: Number of orbits of length n under a map whose periodic points are counted by A056045.

The programs for A060173, there is no canonical definition to state claims against.
-/

/-! ## A060173.P17963262948496810378

`∑{d}[n+1, A051168(A000096(n+1)-#)]`
-/

namespace A060173.P17963262948496810378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051168 (A000096 (n + 1) - (d : ℤ)).toNat

end

end A060173.P17963262948496810378

/-!
# A060174: Dimensions of graded algebra associated with forest meanders (subalgebra version).

The programs for A060174, there is no canonical definition to state claims against.
-/

/-! ## A060174.P13443325247874507361

`A320200(A051578(n)-1)`
-/

namespace A060174.P13443325247874507361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320200 (A051578 n - 1).toNat

end

end A060174.P13443325247874507361

/-!
# A060175: Square array A(n,k) = exponent of the largest power of k-th prime which divides n, read by falling antidiagonals.

The programs for A060175, the canonical program `A060175.P5757316302739651473` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060175 has offset 1).

The definition of A060175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060175.P5600151419681057935

`∑{e}[A060176(n+1), #]`
-/

namespace A060175.P5600151419681057935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A060175.P5600151419681057935

namespace A060175

/-- `∑{e}[A060176(n+1), #]` -/
def P5600151419681057935.Spec : Prop :=
  ∀ n, (P5600151419681057935.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P5463160668512992914

`val(1-C(∑[char[∑[n]]], 2)+n, A104887(n+1))`
-/

namespace A060175.P5463160668512992914
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A104887 (n + 1)).toNat

end

end A060175.P5463160668512992914

namespace A060175

/-- `val(1-C(∑[char[∑[n]]], 2)+n, A104887(n+1))` -/
def P5463160668512992914.Spec : Prop :=
  ∀ n, (P5463160668512992914.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P8657429117816302647

`val(1-C(∑[char[∑[n]]], 2)+n, A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P8657429117816302647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P8657429117816302647

namespace A060175

/-- `val(1-C(∑[char[∑[n]]], 2)+n, A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P8657429117816302647.Spec : Prop :=
  ∀ n, (P8657429117816302647.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P16914812464623058159

`A001222(A060176(n+1))`
-/

namespace A060175.P16914812464623058159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060176 (n + 1)).toNat

end

end A060175.P16914812464623058159

namespace A060175

/-- `A001222(A060176(n+1))` -/
def P16914812464623058159.Spec : Prop :=
  ∀ n, P16914812464623058159.a n = A060175 (n + 1)

end A060175

/-! ## A060175.P14759136981446814496

`val(A002262(n)+1, A104887(n+1))`
-/

namespace A060175.P14759136981446814496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002262 n + 1).toNat (A104887 (n + 1)).toNat

end

end A060175.P14759136981446814496

namespace A060175

/-- `val(A002262(n)+1, A104887(n+1))` -/
def P14759136981446814496.Spec : Prop :=
  ∀ n, (P14759136981446814496.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P8492926222897566109

`val(1-C(∑[char[∑[n]]], 2)+n, A000040(A193592(n)))`
-/

namespace A060175.P8492926222897566109
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A000040 (A193592 n).toNat).toNat

end

end A060175.P8492926222897566109

namespace A060175

/-- `val(1-C(∑[char[∑[n]]], 2)+n, A000040(A193592(n)))` -/
def P8492926222897566109.Spec : Prop :=
  ∀ n, (P8492926222897566109.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P17862471833740242853

`val(1-C(∑[char[∑[n]]], 2)+n, A000040(A193739(n)))`
-/

namespace A060175.P17862471833740242853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A000040 (A193739 n).toNat).toNat

end

end A060175.P17862471833740242853

namespace A060175

/-- `val(1-C(∑[char[∑[n]]], 2)+n, A000040(A193739(n)))` -/
def P17862471833740242853.Spec : Prop :=
  ∀ n, (P17862471833740242853.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P2160485608106120311

`val(A002260(n+1), A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P2160485608106120311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002260 (n + 1)).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P2160485608106120311

namespace A060175

/-- `val(A002260(n+1), A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P2160485608106120311.Spec : Prop :=
  ∀ n, (P2160485608106120311.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P6918113310223371995

`val(A002262(n)+1, A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P6918113310223371995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002262 n + 1).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P6918113310223371995

namespace A060175

/-- `val(A002262(n)+1, A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P6918113310223371995.Spec : Prop :=
  ∀ n, (P6918113310223371995.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P3532796757338767748

`val(A059897(n+1), A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P3532796757338767748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059897 (n + 1)).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P3532796757338767748

namespace A060175

/-- `val(A059897(n+1), A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P3532796757338767748.Spec : Prop :=
  ∀ n, (P3532796757338767748.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P6206635021411381346

`val(A131818(n+1), A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P6206635021411381346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131818 (n + 1)).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P6206635021411381346

namespace A060175

/-- `val(A131818(n+1), A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P6206635021411381346.Spec : Prop :=
  ∀ n, (P6206635021411381346.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P16467320143364658420

`val(1-C(∑[char[∑[n]]], 2)+n, A000040(A004736(n+1)))`
-/

namespace A060175.P16467320143364658420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A000040 (A004736 (n + 1)).toNat).toNat

end

end A060175.P16467320143364658420

namespace A060175

/-- `val(1-C(∑[char[∑[n]]], 2)+n, A000040(A004736(n+1)))` -/
def P16467320143364658420.Spec : Prop :=
  ∀ n, (P16467320143364658420.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P11338552063215919898

`val(sqrt(A133819(n+1)), A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P11338552063215919898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P11338552063215919898

namespace A060175

/-- `val(sqrt(A133819(n+1)), A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P11338552063215919898.Spec : Prop :=
  ∀ n, (P11338552063215919898.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P5466342601138671125

`val(sqrt(A143844(n))+1, A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P5466342601138671125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P5466342601138671125

namespace A060175

/-- `val(sqrt(A143844(n))+1, A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P5466342601138671125.Spec : Prop :=
  ∀ n, (P5466342601138671125.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P9000043062955811530

`val(log2(A059268(n))+1, A000040(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A060175.P9000043062955811530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

end

end A060175.P9000043062955811530

namespace A060175

/-- `val(log2(A059268(n))+1, A000040(C(comp[∑[n]]-n, 2)-n))` -/
def P9000043062955811530.Spec : Prop :=
  ∀ n, (P9000043062955811530.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P114451490730409292

`val(A002260(n+1), A000040(A193592(n)))`
-/

namespace A060175.P114451490730409292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002260 (n + 1)).toNat (A000040 (A193592 n).toNat).toNat

end

end A060175.P114451490730409292

namespace A060175

/-- `val(A002260(n+1), A000040(A193592(n)))` -/
def P114451490730409292.Spec : Prop :=
  ∀ n, (P114451490730409292.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P10187915614553410240

`val(A002262(n)+1, A000040(A193592(n)))`
-/

namespace A060175.P10187915614553410240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002262 n + 1).toNat (A000040 (A193592 n).toNat).toNat

end

end A060175.P10187915614553410240

namespace A060175

/-- `val(A002262(n)+1, A000040(A193592(n)))` -/
def P10187915614553410240.Spec : Prop :=
  ∀ n, (P10187915614553410240.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P12476251712324029071

`val(A002260(n+1), A000040(A193739(n)))`
-/

namespace A060175.P12476251712324029071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002260 (n + 1)).toNat (A000040 (A193739 n).toNat).toNat

end

end A060175.P12476251712324029071

namespace A060175

/-- `val(A002260(n+1), A000040(A193739(n)))` -/
def P12476251712324029071.Spec : Prop :=
  ∀ n, (P12476251712324029071.a n : ℤ) = A060175 (n + 1)

end A060175

/-! ## A060175.P5757316302739651473

`val(A002260(n+1), A000040(A004736(n+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060175

/-- `val(A002260(n+1), A000040(A004736(n+1)))` -/
def P5757316302739651473.Spec : Prop :=
  ∀ n, (P5757316302739651473.a n : ℤ) = A060175 (n + 1)

theorem P5757316302739651473.correct : P5757316302739651473.Spec := by
  intro n
  simp only [A060175, Nat.add_sub_cancel]

end A060175

/-! ## A060175.P12268740604481362715

`A249344(A038722(n+1))`
-/

namespace A060175.P12268740604481362715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249344 (A038722 (n + 1)).toNat

end

end A060175.P12268740604481362715

namespace A060175

/-- `A249344(A038722(n+1))` -/
def P12268740604481362715.Spec : Prop :=
  ∀ n, P12268740604481362715.a n = A060175 (n + 1)

end A060175

/-!
# A060176: Square array A(n,k) = the largest power of k-th prime which divides n, read by falling antidiagonals.

The programs for A060176, the canonical program `A060176.P5757415201403961736` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060176 has offset 1).

The definition of A060176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060176.P5757415201403961736

`A104887(n+1)^A060175(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060176

/-- `A104887(n+1)^A060175(n+1)` -/
def P5757415201403961736.Spec : Prop :=
  ∀ n, P5757415201403961736.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P16589784850300373529

`A000040(C(comp[∑[n]]-n, 2)-n)^A060175(n+1)`
-/

namespace A060176.P16589784850300373529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P16589784850300373529

namespace A060176

/-- `A000040(C(comp[∑[n]]-n, 2)-n)^A060175(n+1)` -/
def P16589784850300373529.Spec : Prop :=
  ∀ n, P16589784850300373529.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P10411870621608330691

`A000040(A065625(n))^A060175(n+1)`
-/

namespace A060176.P10411870621608330691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A065625 n).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P10411870621608330691

namespace A060176

/-- `A000040(A065625(n))^A060175(n+1)` -/
def P10411870621608330691.Spec : Prop :=
  ∀ n, P10411870621608330691.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P12388563750753962670

`A000040(A193592(n))^A060175(n+1)`
-/

namespace A060176.P12388563750753962670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A193592 n).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P12388563750753962670

namespace A060176

/-- `A000040(A193592(n))^A060175(n+1)` -/
def P12388563750753962670.Spec : Prop :=
  ∀ n, P12388563750753962670.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P11384113007159670988

`A000040(A193739(n))^A060175(n+1)`
-/

namespace A060176.P11384113007159670988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A193739 n).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P11384113007159670988

namespace A060176

/-- `A000040(A193739(n))^A060175(n+1)` -/
def P11384113007159670988.Spec : Prop :=
  ∀ n, P11384113007159670988.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P3229174804491192754

`A000040(A003983(n+1))^A060175(n+1)`
-/

namespace A060176.P3229174804491192754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A003983 (n + 1)).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P3229174804491192754

namespace A060176

/-- `A000040(A003983(n+1))^A060175(n+1)` -/
def P3229174804491192754.Spec : Prop :=
  ∀ n, P3229174804491192754.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P2435107171100933923

`A000040(A004736(n+1))^A060175(n+1)`
-/

namespace A060176.P2435107171100933923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P2435107171100933923

namespace A060176

/-- `A000040(A004736(n+1))^A060175(n+1)` -/
def P2435107171100933923.Spec : Prop :=
  ∀ n, P2435107171100933923.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P5942207833169274124

`A396348(A038722(n+1))`
-/

namespace A060176.P5942207833169274124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396348 (A038722 (n + 1)).toNat

end

end A060176.P5942207833169274124

namespace A060176

/-- `A396348(A038722(n+1))` -/
def P5942207833169274124.Spec : Prop :=
  ∀ n, P5942207833169274124.a n = A060176 (n + 1)

end A060176

/-! ## A060176.P4631954824962761704

`A037126(A278818(n))^A060175(n+1)`
-/

namespace A060176.P4631954824962761704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (A278818 n).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P4631954824962761704

namespace A060176

/-- `A037126(A278818(n))^A060175(n+1)` -/
def P4631954824962761704.Spec : Prop :=
  ∀ n, P4631954824962761704.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P10557339870573836782

`gcd(A182945(n+1), A296612(n))`
-/

namespace A060176.P10557339870573836782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182945 (n + 1)) (A296612 n)

end

end A060176.P10557339870573836782

namespace A060176

/-- `gcd(A182945(n+1), A296612(n))` -/
def P10557339870573836782.Spec : Prop :=
  ∀ n, (P10557339870573836782.a n : ℤ) = A060176 (n + 1)

end A060176

/-! ## A060176.P8197667367830489310

`A020639(A083140(n+2))^A060175(n+1)`
-/

namespace A060176.P8197667367830489310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A083140 (n + 2)).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P8197667367830489310

namespace A060176

/-- `A020639(A083140(n+2))^A060175(n+1)` -/
def P8197667367830489310.Spec : Prop :=
  ∀ n, P8197667367830489310.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P13707275898223468675

`A000040(A089688(n))^A060175(n+1)`
-/

namespace A060176.P13707275898223468675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A089688 n).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P13707275898223468675

namespace A060176

/-- `A000040(A089688(n))^A060175(n+1)` -/
def P13707275898223468675.Spec : Prop :=
  ∀ n, P13707275898223468675.a n = (A060176 (n + 1) : ℚ)

end A060176

/-! ## A060176.P15782036384567333844

`gcd(A182945(n+1)², A331886(n))`
-/

namespace A060176.P15782036384567333844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182945 (n + 1) ^ 2) (A331886 n)

end

end A060176.P15782036384567333844

namespace A060176

/-- `gcd(A182945(n+1)², A331886(n))` -/
def P15782036384567333844.Spec : Prop :=
  ∀ n, (P15782036384567333844.a n : ℤ) = A060176 (n + 1)

end A060176

/-! ## A060176.P3848839969100196263

`A000040(A309914(n))^A060175(n+1)`
-/

namespace A060176.P3848839969100196263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A309914 n).toNat : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P3848839969100196263

namespace A060176

/-- `A000040(A309914(n))^A060175(n+1)` -/
def P3848839969100196263.Spec : Prop :=
  ∀ n, P3848839969100196263.a n = (A060176 (n + 1) : ℚ)

end A060176

/-!
# A060177: Triangle of generalized sum of divisors function, read by rows.

The programs for A060177, there is no canonical definition to state claims against.
-/

/-! ## A060177.P14353598249350875207

`A001222(A319616(n+1)+A043695(n+1))`
-/

namespace A060177.P14353598249350875207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319616 (n + 1) + A043695 (n + 1)).toNat

end

end A060177.P14353598249350875207

/-!
# A060178: Sum of orders of all odd permutations of n letters.

The programs for A060178, there is no canonical definition to state claims against.
-/

/-! ## A060178.P7230531337057231189

`A096596(n+1)+A060015(n+1)`
-/

namespace A060178.P7230531337057231189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096596 (n + 1) + A060015 (n + 1)

end

end A060178.P7230531337057231189

/-! ## A060178.P15713810638161943836

`A060014(n+1)-A060015(n+1)`
-/

namespace A060178.P15713810638161943836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060014 (n + 1) - A060015 (n + 1)

end

end A060178.P15713810638161943836

/-!
# A060180: Sum of distinct orders of degree-n even permutations.

The programs for A060180, there is no canonical definition to state claims against.
-/

/-! ## A060180.P9083051016202506860

`A208354(n)+A001222(A081149(n))`
-/

namespace A060180.P9083051016202506860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + A001222 (A081149 n).toNat

end

end A060180.P9083051016202506860

/-!
# A060181: Number of permutations in the symmetric group S_n whose order is 1 or prime.

The programs for A060181, there is no canonical definition to state claims against.
-/

/-! ## A060181.P682898862735597983

`A214003(n+1)+1`
-/

namespace A060181.P682898862735597983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214003 (n + 1) + 1

end

end A060181.P682898862735597983

/-! ## A060181.P4371208211716374759

`A181954(n+1)+1-A186202(n+1)`
-/

namespace A060181.P4371208211716374759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) + (1 - A186202 (n + 1))

end

end A060181.P4371208211716374759

/-! ## A060181.P8760155674088075791

`A001465(n+1)+A181955(n+1)-A181951(n+1)+1`
-/

namespace A060181.P8760155674088075791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A181955 (n + 1) - A181951 (n + 1)) + 1

end

end A060181.P8760155674088075791

/-! ## A060181.P5950973112219096697

`A181954(n+1)-(A181951(n+1)+A001465(n+1))+1`
-/

namespace A060181.P5950973112219096697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - (A181951 (n + 1) + A001465 (n + 1)) + 1

end

end A060181.P5950973112219096697

/-! ## A060181.P8442703489544658734

`A001465(n+1)+A181955(n+1)+A001465(n+1)+1-A186202(n+1)`
-/

namespace A060181.P8442703489544658734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A181955 (n + 1) + A001465 (n + 1)) + 1 - A186202 (n + 1)

end

end A060181.P8442703489544658734

/-!
# A060182: a(0) = 1, a(1) = 5, a(2) = 13; a(n) = 2*a(n-1) + 2, n > 2.

The programs for A060182, the canonical program `A060182.P10785952581833929026` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060182 has offset 0).

The definition of A060182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2` (program `A060182.P10785952581833929026`, by `A060182.P10785952581833929026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060182.P10785952581833929026

`2*a(n-1)+2` with `a(0)=1, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060182

/-- `2*a(n-1)+2` -/
def P10785952581833929026.Spec : Prop :=
  ∀ n, (P10785952581833929026.a n : ℤ) = A060182 n

theorem P10785952581833929026.correct : P10785952581833929026.Spec := by
  intro n
  simp only [A060182]

end A060182

/-! ## A060182.P5296745211182452148

`ogf((1+2x-x^3)/(1-3x+2x^2))`
-/

namespace A060182.P5296745211182452148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, -3, 2] n

end

end A060182.P5296745211182452148

namespace A060182

/-- `ogf((1+2x-x^3)/(1-3x+2x^2))` -/
def P5296745211182452148.Spec : Prop :=
  ∀ n, P5296745211182452148.a n = A060182 n

end A060182

/-! ## A060182.P4453281466566634518

`a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=5, a(2)=13`
-/

namespace A060182.P4453281466566634518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 13] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A060182.P4453281466566634518

namespace A060182

/-- `a(n-1)+a(n-1)+2` -/
def P4453281466566634518.Spec : Prop :=
  ∀ n, (P4453281466566634518.a n : ℤ) = A060182 n

theorem P4453281466566634518.correct : P4453281466566634518.Spec := by
  intro n
  simp only [A060182, Nat.add_sub_cancel, A060182.P4453281466566634518.a, A060182.P10785952581833929026.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060182

/-! ## A060182.P612217547076411113

`2-((1-n)*floor(2/n)-2*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A060182.P612217547076411113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 - ((1 - (n : ℤ)) * ⌊2 / (n : ℚ)⌋ - 2 * a (n - 1))

end

end A060182.P612217547076411113

namespace A060182

/-- `2-((1-n)*floor(2/n)-2*a(n-1))` -/
def P612217547076411113.Spec : Prop :=
  ∀ n, P612217547076411113.a n = A060182 n

end A060182

/-! ## A060182.P590352768205593545

`A055010(n)+A052996(n)`
-/

namespace A060182.P590352768205593545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + A052996 n

end

end A060182.P590352768205593545

namespace A060182

/-- `A055010(n)+A052996(n)` -/
def P590352768205593545.Spec : Prop :=
  ∀ n, P590352768205593545.a n = A060182 n

end A060182

/-! ## A060182.P4570470287798721167

`A397439(n)+A296953(n)`
-/

namespace A060182.P4570470287798721167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n + A296953 n

end

end A060182.P4570470287798721167

namespace A060182

/-- `A397439(n)+A296953(n)` -/
def P4570470287798721167.Spec : Prop :=
  ∀ n, P4570470287798721167.a n = A060182 n

end A060182

/-! ## A060182.P8395621984446813099

`A134067(n)-A166444(n)`
-/

namespace A060182.P8395621984446813099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n - A166444 n

end

end A060182.P8395621984446813099

namespace A060182

/-- `A134067(n)-A166444(n)` -/
def P8395621984446813099.Spec : Prop :=
  ∀ n, P8395621984446813099.a n = A060182 n

end A060182

/-! ## A060182.P2824322182324312085

`A052549(n)+A084215(n)-1`
-/

namespace A060182.P2824322182324312085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n + (A084215 n - 1)

end

end A060182.P2824322182324312085

namespace A060182

/-- `A052549(n)+A084215(n)-1` -/
def P2824322182324312085.Spec : Prop :=
  ∀ n, P2824322182324312085.a n = A060182 n

end A060182

/-! ## A060182.P12695283960196176058

`A033484(n)+Δ[A266550(n+1)]`
-/

namespace A060182.P12695283960196176058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + (f1 (n + 1) - f1 n)

end

end A060182.P12695283960196176058

namespace A060182

/-- `A033484(n)+Δ[A266550(n+1)]` -/
def P12695283960196176058.Spec : Prop :=
  ∀ n, P12695283960196176058.a n = A060182 n

end A060182

/-! ## A060182.P14282842587048607704

`A125176(n+1)+A126646(n)-1`
-/

namespace A060182.P14282842587048607704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) + (A126646 n - 1)

end

end A060182.P14282842587048607704

namespace A060182

/-- `A125176(n+1)+A126646(n)-1` -/
def P14282842587048607704.Spec : Prop :=
  ∀ n, P14282842587048607704.a n = A060182 n

end A060182

/-! ## A060182.P7789473443125669839

`A125176(n+1)+2*A000225(n)`
-/

namespace A060182.P7789473443125669839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) + 2 * A000225 n

end

end A060182.P7789473443125669839

namespace A060182

/-- `A125176(n+1)+2*A000225(n)` -/
def P7789473443125669839.Spec : Prop :=
  ∀ n, P7789473443125669839.a n = A060182 n

end A060182

/-! ## A060182.P5168877199620911957

`∑[A098011(n+1)+A042950(n)]-2`
-/

namespace A060182.P5168877199620911957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1) + A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A060182.P5168877199620911957

namespace A060182

/-- `∑[A098011(n+1)+A042950(n)]-2` -/
def P5168877199620911957.Spec : Prop :=
  ∀ n, P5168877199620911957.a n = A060182 n

end A060182

/-! ## A060182.P15812157603719056033

`A000225(n+2)-1-A076736(2*n+1)`
-/

namespace A060182.P15812157603719056033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - 1 - A076736 (2 * n + 1)

end

end A060182.P15812157603719056033

namespace A060182

/-- `A000225(n+2)-1-A076736(2*n+1)` -/
def P15812157603719056033.Spec : Prop :=
  ∀ n, P15812157603719056033.a n = A060182 n

end A060182

/-! ## A060182.P14188837678282309231

`A143095(2*n+1)-(A076736(2*n+1)+2)`
-/

namespace A060182.P14188837678282309231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (2 * n + 1) - (A076736 (2 * n + 1) + 2)

end

end A060182.P14188837678282309231

namespace A060182

/-- `A143095(2*n+1)-(A076736(2*n+1)+2)` -/
def P14188837678282309231.Spec : Prop :=
  ∀ n, P14188837678282309231.a n = A060182 n

end A060182

/-! ## A060182.P8573448285799985097

`A052996(n+1)+A052996(n)-A007283(n)`
-/

namespace A060182.P8573448285799985097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (n + 1) + (A052996 n - A007283 n)

end

end A060182.P8573448285799985097

namespace A060182

/-- `A052996(n+1)+A052996(n)-A007283(n)` -/
def P8573448285799985097.Spec : Prop :=
  ∀ n, P8573448285799985097.a n = A060182 n

end A060182

/-! ## A060182.P15747091100495016090

`A033484(n)+A083329(n)-A266550(n+1)`
-/

namespace A060182.P15747091100495016090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + (A083329 n - A266550 (n + 1))

end

end A060182.P15747091100495016090

namespace A060182

/-- `A033484(n)+A083329(n)-A266550(n+1)` -/
def P15747091100495016090.Spec : Prop :=
  ∀ n, P15747091100495016090.a n = A060182 n

end A060182

/-! ## A060182.P2758241250027808494

`A266550(n+2)+A033484(n)-A266550(n+1)`
-/

namespace A060182.P2758241250027808494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) + (A033484 n - A266550 (n + 1))

end

end A060182.P2758241250027808494

namespace A060182

/-- `A266550(n+2)+A033484(n)-A266550(n+1)` -/
def P2758241250027808494.Spec : Prop :=
  ∀ n, P2758241250027808494.a n = A060182 n

end A060182

/-! ## A060182.P6192200917464954919

`A051633(n)-A257113(n+1)`
-/

namespace A060182.P6192200917464954919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051633 n - A257113 (n + 1)

end

end A060182.P6192200917464954919

namespace A060182

/-- `A051633(n)-A257113(n+1)` -/
def P6192200917464954919.Spec : Prop :=
  ∀ n, P6192200917464954919.a n = A060182 n

end A060182

/-! ## A060182.P12721454845221015740

`A020714(n)-(A257113(n+1)+2)`
-/

namespace A060182.P12721454845221015740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n - (A257113 (n + 1) + 2)

end

end A060182.P12721454845221015740

namespace A060182

/-- `A020714(n)-(A257113(n+1)+2)` -/
def P12721454845221015740.Spec : Prop :=
  ∀ n, P12721454845221015740.a n = A060182 n

end A060182

/-! ## A060182.P1049003393578856343

`A248646(n+2)-2*A000051(n)`
-/

namespace A060182.P1049003393578856343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248646 (n + 2) - 2 * A000051 n

end

end A060182.P1049003393578856343

namespace A060182

/-- `A248646(n+2)-2*A000051(n)` -/
def P1049003393578856343.Spec : Prop :=
  ∀ n, P1049003393578856343.a n = A060182 n

end A060182

/-!
# A060183: a(0)=1, a(n) = 100*a(n-1) + 36*n - 128.

The programs for A060183, the canonical program `A060183.P15605256349882817951` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060183 has offset 0).

The definition of A060183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*a(n-1)+36*n-128` (program `A060183.P15605256349882817951`, by `A060183.P15605256349882817951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060183.P15605256349882817951

`100*a(n-1)+36*n-128` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060183

/-- `100*a(n-1)+36*n-128` -/
def P15605256349882817951.Spec : Prop :=
  ∀ n, P15605256349882817951.a n = A060183 n

theorem P15605256349882817951.correct : P15605256349882817951.Spec := by
  intro n
  simp only [A060183]

end A060183

/-! ## A060183.P10291905243195799072

`(9*100^n-44*n+112)/121`
-/

namespace A060183.P10291905243195799072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 100 ^ n : ℤ) - (44 * n : ℤ) + 112 : ℚ) / 121

end

end A060183.P10291905243195799072

namespace A060183

/-- `(9*100^n-44*n+112)/121` -/
def P10291905243195799072.Spec : Prop :=
  ∀ n, P10291905243195799072.a n = (A060183 n : ℚ)

theorem P10291905243195799072.correct : P10291905243195799072.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060183, Nat.add_sub_cancel, A060183.P10291905243195799072.a, A060183.P15605256349882817951.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060183, Nat.add_sub_cancel, A060183.P10291905243195799072.a, A060183.P15605256349882817951.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060183

/-!
# A060184: Triangle of generalized sum of divisors function, read by rows.

The programs for A060184, there is no canonical definition to state claims against.
-/

/-! ## A060184.P3376801874171562612

`xor(A016378(A132411(n)), A049321(n))`
-/

namespace A060184.P3376801874171562612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016378 (A132411 n).toNat) (A049321 n)

end

end A060184.P3376801874171562612

/-! ## A060184.P2420260995331790795

`A060500(A274130(n+1))-A060500(n)`
-/

namespace A060184.P2420260995331790795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A274130 (n + 1)).toNat - A060500 n

end

end A060184.P2420260995331790795

/-! ## A060184.P9742940500323585301

`A321931(A010177(n)*A026137(n+1))`
-/

namespace A060184.P9742940500323585301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321931 (A010177 n * A026137 (n + 1)).toNat

end

end A060184.P9742940500323585301

/-! ## A060184.P15759730620880800975

`A158924(floor(A017126(n)/A051340(n)))+A081221(n+1)`
-/

namespace A060184.P15759730620880800975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158924 ⌊(A017126 n : ℚ) / (A051340 n : ℚ)⌋.toNat + A081221 (n + 1)

end

end A060184.P15759730620880800975

/-!
# A060187: Triangle read by rows: Eulerian numbers of type B, T(n,k) (1 <= k <= n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (2*n - 2*k + 1)*T(n-1, k-1) + (2*k - 1)*T(n-1, k).

The programs for A060187, there is no canonical definition to state claims against.
-/

/-! ## A060187.P5629469889805211332

`A290448(n)+A168551(n)`
-/

namespace A060187.P5629469889805211332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A168551 n

end

end A060187.P5629469889805211332

/-! ## A060187.P17764601175374856669

`A168517(n)-A290448(n)`
-/

namespace A060187.P17764601175374856669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n - A290448 n

end

end A060187.P17764601175374856669

/-! ## A060187.P17607711709875258949

`(A168551(n)+A168517(n))/2`
-/

namespace A060187.P17607711709875258949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168551 n + A168517 n : ℚ) / 2

end

end A060187.P17607711709875258949

/-! ## A060187.P3553994772431976136

`2*A262226(A061579(n))-A130595(n)`
-/

namespace A060187.P3553994772431976136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262226 (A061579 n).toNat - A130595 n

end

end A060187.P3553994772431976136

/-! ## A060187.P7758895680553831061

`A257612(n)/A137688(n)`
-/

namespace A060187.P7758895680553831061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (A137688 n : ℚ)

end

end A060187.P7758895680553831061

/-! ## A060187.P17084395752168662359

`A256890(n)/A257613(n)*A257612(n)`
-/

namespace A060187.P17084395752168662359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256890 n : ℚ) / (A257613 n : ℚ) * (A257612 n : ℚ)

end

end A060187.P17084395752168662359

/-! ## A060187.P362905470607330430

`A008292(n+1)/A257609(n)*A257612(n)`
-/

namespace A060187.P362905470607330430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A257609 n : ℚ) * (A257612 n : ℚ)

end

end A060187.P362905470607330430

/-! ## A060187.P8577432445551254411

`abs(A138076(n))`
-/

namespace A060187.P8577432445551254411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138076 n|

end

end A060187.P8577432445551254411

/-! ## A060187.P13943565094744299247

`ceil(A176198(n)/2)`
-/

namespace A060187.P13943565094744299247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176198 n : ℚ) / 2⌉

end

end A060187.P13943565094744299247

/-! ## A060187.P1487585680728228278

`A097807(n)*A138076(n)`
-/

namespace A060187.P1487585680728228278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A138076 n

end

end A060187.P1487585680728228278

/-! ## A060187.P7067633473133193615

`gcd(A000038(n), A138076(n))`
-/

namespace A060187.P7067633473133193615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138076 n)

end

end A060187.P7067633473133193615

/-! ## A060187.P2076121417772492338

`lcm(A020985(n), A138076(n))`
-/

namespace A060187.P2076121417772492338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A138076 n)

end

end A060187.P2076121417772492338

/-! ## A060187.P2105463953678263977

`2*A147565(n)-A007318(n)`
-/

namespace A060187.P2105463953678263977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147565 n - A007318 n

end

end A060187.P2105463953678263977

/-! ## A060187.P9222260094671285547

`2*A168517(n)-A168523(n)`
-/

namespace A060187.P9222260094671285547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168517 n - A168523 n

end

end A060187.P9222260094671285547

/-! ## A060187.P12794840392171481139

`2*A168523(n)-A168524(n)`
-/

namespace A060187.P12794840392171481139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168523 n - A168524 n

end

end A060187.P12794840392171481139

/-! ## A060187.P16048738931694983237

`A168523(n)+A168551(n)-A168517(n)`
-/

namespace A060187.P16048738931694983237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + (A168551 n - A168517 n)

end

end A060187.P16048738931694983237

/-! ## A060187.P6754761871140688813

`A168523(n)+A168552(n)-A168551(n)`
-/

namespace A060187.P6754761871140688813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + (A168552 n - A168551 n)

end

end A060187.P6754761871140688813

/-! ## A060187.P4374967853761787624

`A008292(n+1)+A168523(n)-A141690(n)`
-/

namespace A060187.P4374967853761787624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168523 n - A141690 n)

end

end A060187.P4374967853761787624

/-! ## A060187.P12263756969577061668

`A008292(n+1)+A168524(n)-A141696(n+1)`
-/

namespace A060187.P12263756969577061668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168524 n - A141696 (n + 1))

end

end A060187.P12263756969577061668

/-! ## A060187.P15866250305457279538

`A176200(n)+1-A154338(n)`
-/

namespace A060187.P15866250305457279538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A154338 n)

end

end A060187.P15866250305457279538

/-!
# A060188: A column and diagonal of A060187.

The programs for A060188, the canonical program `A060188.P11107692300150342190` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060188 has offset 2).

The definition of A060188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060188.P11107692300150342190

`3^(n+1)-(n+2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060188

/-- `3^(n+1)-(n+2)` -/
def P11107692300150342190.Spec : Prop :=
  ∀ n, P11107692300150342190.a n = A060188 (n + 2)

theorem P11107692300150342190.correct : P11107692300150342190.Spec := by
  intro n
  simp only [A060188, Nat.add_sub_cancel]

end A060188

/-! ## A060188.P7079253523532474650

`abs(∑[xor(3, Δ[3^n])])`
-/

namespace A060188.P7079253523532474650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060188.P7079253523532474650

namespace A060188

/-- `abs(∑[xor(3, Δ[3^n])])` -/
def P7079253523532474650.Spec : Prop :=
  ∀ n, P7079253523532474650.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P6426342792948375343

`∑[ogf((1+x)/(1-4x+3x^2))]`
-/

namespace A060188.P6426342792948375343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P6426342792948375343

namespace A060188

/-- `∑[ogf((1+x)/(1-4x+3x^2))]` -/
def P6426342792948375343.Spec : Prop :=
  ∀ n, P6426342792948375343.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P4131828153727644970

`ogf((1+x)/(1-5x+7x^2-3x^3))`
-/

namespace A060188.P4131828153727644970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, 7, -3] n

end

end A060188.P4131828153727644970

namespace A060188

/-- `ogf((1+x)/(1-5x+7x^2-3x^3))` -/
def P4131828153727644970.Spec : Prop :=
  ∀ n, P4131828153727644970.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P13762273057686438729

`abs(∑[lcm(2, 3^n)-1])`
-/

namespace A060188.P13762273057686438729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060188.P13762273057686438729

namespace A060188

/-- `abs(∑[lcm(2, 3^n)-1])` -/
def P13762273057686438729.Spec : Prop :=
  ∀ n, P13762273057686438729.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P12071992592314297669

`record[ceil(3^(n-1)-n)]`
-/

namespace A060188.P12071992592314297669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060188.P12071992592314297669

namespace A060188

/-- `record[ceil(3^(n-1)-n)]` -/
def P12071992592314297669.Spec : Prop :=
  ∀ n, P12071992592314297669.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P13184608448509788926

`-∑[-xor(3, Δ[3^n])]`
-/

namespace A060188.P13184608448509788926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060188.P13184608448509788926

namespace A060188

/-- `-∑[-xor(3, Δ[3^n])]` -/
def P13184608448509788926.Spec : Prop :=
  ∀ n, P13184608448509788926.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P16653309693755362280

`∑[3*a(n-1)+2]` with `a(0)=1`
-/

namespace A060188.P16653309693755362280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P16653309693755362280

namespace A060188

/-- `∑[3*a(n-1)+2]` -/
def P16653309693755362280.Spec : Prop :=
  ∀ n, (P16653309693755362280.a n : ℤ) = A060188 (n + 2)

end A060188

/-! ## A060188.P910018147921047653

`Δ[n²+3*a(n-1)]` with `a(0)=0`
-/

namespace A060188.P910018147921047653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n ^ 2 + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A060188.P910018147921047653

namespace A060188

/-- `Δ[n²+3*a(n-1)]` -/
def P910018147921047653.Spec : Prop :=
  ∀ n, P910018147921047653.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P1037252118773408027

`round(record[3^(n-2)-(n-1)])`
-/

namespace A060188.P1037252118773408027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A060188.P1037252118773408027

namespace A060188

/-- `round(record[3^(n-2)-(n-1)])` -/
def P1037252118773408027.Spec : Prop :=
  ∀ n, P1037252118773408027.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P7979797834447826185

`∑[a(n-1)+a(n-1)+a(n-1)+2]` with `a(0)=1`
-/

namespace A060188.P7979797834447826185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P7979797834447826185

namespace A060188

/-- `∑[a(n-1)+a(n-1)+a(n-1)+2]` -/
def P7979797834447826185.Spec : Prop :=
  ∀ n, (P7979797834447826185.a n : ℤ) = A060188 (n + 2)

end A060188

/-! ## A060188.P10421023818183386119

`∑[A048473(n)]`
-/

namespace A060188.P10421023818183386119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P10421023818183386119

namespace A060188

/-- `∑[A048473(n)]` -/
def P10421023818183386119.Spec : Prop :=
  ∀ n, P10421023818183386119.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P14631834877582272334

`Δ[A368528(n)]`
-/

namespace A060188.P14631834877582272334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060188.P14631834877582272334

namespace A060188

/-- `Δ[A368528(n)]` -/
def P14631834877582272334.Spec : Prop :=
  ∀ n, P14631834877582272334.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P12004778945507965151

`∑[∑[A003946(n)]]`
-/

namespace A060188.P12004778945507965151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P12004778945507965151

namespace A060188

/-- `∑[∑[A003946(n)]]` -/
def P12004778945507965151.Spec : Prop :=
  ∀ n, P12004778945507965151.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P15739679015328057242

`∑[A100774(n)+1]`
-/

namespace A060188.P15739679015328057242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100774 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P15739679015328057242

namespace A060188

/-- `∑[A100774(n)+1]` -/
def P15739679015328057242.Spec : Prop :=
  ∀ n, P15739679015328057242.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P17831238975059583133

`∑[A008776(n)-1]`
-/

namespace A060188.P17831238975059583133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P17831238975059583133

namespace A060188

/-- `∑[A008776(n)-1]` -/
def P17831238975059583133.Spec : Prop :=
  ∀ n, P17831238975059583133.a n = A060188 (n + 2)

end A060188

/-! ## A060188.P2834790984983453504

`∑[A154992(n+2)]`
-/

namespace A060188.P2834790984983453504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060188.P2834790984983453504

namespace A060188

/-- `∑[A154992(n+2)]` -/
def P2834790984983453504.Spec : Prop :=
  ∀ n, P2834790984983453504.a n = A060188 (n + 2)

end A060188

/-!
# A060189: A column and diagonal of A060187 (k=3).

The programs for A060189, the canonical program `A060189.P13581374426103331958` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060189 has offset 3).

The definition of A060189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060189.P13581374426103331958

`5^(n+2)-(n+3)*3^(n+2)+(n+3)*(n+2)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060189

/-- `5^(n+2)-(n+3)*3^(n+2)+(n+3)*(n+2)/2` -/
def P13581374426103331958.Spec : Prop :=
  ∀ n, P13581374426103331958.a n = (A060189 (n + 3) : ℚ)

end A060189

/-! ## A060189.P16599256230828870560

`A060187(∑[n+2]+4)`
-/

namespace A060189.P16599256230828870560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A060189.P16599256230828870560

namespace A060189

/-- `A060187(∑[n+2]+4)` -/
def P16599256230828870560.Spec : Prop :=
  ∀ n, P16599256230828870560.a n = A060189 (n + 3)

end A060189

/-! ## A060189.P16522145496471479813

`record[gcd(A060187(n+2), A098825(n))]`
-/

namespace A060189.P16522145496471479813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060187 (n + 2)) (A098825 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060189.P16522145496471479813

namespace A060189

/-- `record[gcd(A060187(n+2), A098825(n))]` -/
def P16522145496471479813.Spec : Prop :=
  ∀ n, (P16522145496471479813.a n : ℤ) = A060189 (n + 3)

end A060189

/-! ## A060189.P8121295209068915908

`A060187(A167614(n+1))^ceil(acot(n))`
-/

namespace A060189.P8121295209068915908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A060189.P8121295209068915908

namespace A060189

/-- `A060187(A167614(n+1))^ceil(acot(n))` -/
def P8121295209068915908.Spec : Prop :=
  ∀ n, P8121295209068915908.a n = (A060189 (n + 3) : ℚ)

end A060189

/-! ## A060189.P17218953391669959638

`record[A060187(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A060189.P17218953391669959638
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060189.P17218953391669959638

namespace A060189

/-- `record[A060187(A167614(C(comp[∑[n]]-n, 2)-n))]` -/
def P17218953391669959638.Spec : Prop :=
  ∀ n, P17218953391669959638.a n = A060189 (n + 3)

end A060189

/-! ## A060189.P17225193724133079823

`record[A060187(A167614(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))]`
-/

namespace A060189.P17225193724133079823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A167614 (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060189.P17225193724133079823

namespace A060189

/-- `record[A060187(A167614(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))]` -/
def P17225193724133079823.Spec : Prop :=
  ∀ n, P17225193724133079823.a n = A060189 (n + 3)

end A060189

/-! ## A060189.P15984708495604281626

`A060187(A167614(n+1))%A042746(n)`
-/

namespace A060189.P15984708495604281626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060187 (A167614 (n + 1)).toNat) (A042746 n)

end

end A060189.P15984708495604281626

namespace A060189

/-- `A060187(A167614(n+1))%A042746(n)` -/
def P15984708495604281626.Spec : Prop :=
  ∀ n, P15984708495604281626.a n = A060189 (n + 3)

end A060189

/-! ## A060189.P5008518176381871231

`gcd(A000038(n), A060187(A167614(n+1)))`
-/

namespace A060189.P5008518176381871231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060187 (A167614 (n + 1)).toNat)

end

end A060189.P5008518176381871231

namespace A060189

/-- `gcd(A000038(n), A060187(A167614(n+1)))` -/
def P5008518176381871231.Spec : Prop :=
  ∀ n, (P5008518176381871231.a n : ℤ) = A060189 (n + 3)

end A060189

/-! ## A060189.P17957429054664161531

`lcm(A033999(n), A060187(A167614(n+1)))`
-/

namespace A060189.P17957429054664161531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A060187 (A167614 (n + 1)).toNat)

end

end A060189.P17957429054664161531

namespace A060189

/-- `lcm(A033999(n), A060187(A167614(n+1)))` -/
def P17957429054664161531.Spec : Prop :=
  ∀ n, (P17957429054664161531.a n : ℤ) = A060189 (n + 3)

end A060189

/-! ## A060189.P2333809893673037211

`or(A000007(n), A060187(A167614(n+1)))`
-/

namespace A060189.P2333809893673037211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A060187 (A167614 (n + 1)).toNat)

end

end A060189.P2333809893673037211

namespace A060189

/-- `or(A000007(n), A060187(A167614(n+1)))` -/
def P2333809893673037211.Spec : Prop :=
  ∀ n, P2333809893673037211.a n = A060189 (n + 3)

end A060189

/-!
# A060190: A column and diagonal of A060187 (k=4).

The programs for A060190, there is no canonical definition to state claims against.
-/

/-! ## A060190.P9575774962484439158

`A060187(C(n+5, 2)-n)`
-/

namespace A060190.P9575774962484439158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (Nat.choose (n + 5) 2 - n)

end

end A060190.P9575774962484439158

/-! ## A060190.P15497787928049906709

`A060187(A052905(n)+9)`
-/

namespace A060190.P15497787928049906709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A052905 n + 9).toNat

end

end A060190.P15497787928049906709

/-! ## A060190.P15528844170527740479

`A060187(A055999(n)+10)`
-/

namespace A060190.P15528844170527740479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A055999 n + 10).toNat

end

end A060190.P15528844170527740479

/-! ## A060190.P17149919668962514959

`A060187(A167614(n+2)+1)`
-/

namespace A060190.P17149919668962514959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A167614 (n + 2) + 1).toNat

end

end A060190.P17149919668962514959

/-! ## A060190.P12291445302055917250

`A060187(A152950(n+4)+1)`
-/

namespace A060190.P12291445302055917250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A152950 (n + 4) + 1).toNat

end

end A060190.P12291445302055917250

/-! ## A060190.P3763186892528637183

`A060187(A166136(n+2)-2)`
-/

namespace A060190.P3763186892528637183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A166136 (n + 2) - 2).toNat

end

end A060190.P3763186892528637183

/-! ## A060190.P11176722386790499950

`A060187(A166136(n+1)+1+n)`
-/

namespace A060190.P11176722386790499950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A060190.P11176722386790499950

/-! ## A060190.P15412829119520807790

`A060187(A374004(n+1))`
-/

namespace A060190.P15412829119520807790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A374004 (n + 1)).toNat

end

end A060190.P15412829119520807790

/-! ## A060190.P3351739296981411754

`A060187(A055998(n+2))`
-/

namespace A060190.P3351739296981411754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A055998 (n + 2)).toNat

end

end A060190.P3351739296981411754

/-! ## A060190.P8791710026178830515

`A060187(A155212(n)+5)`
-/

namespace A060190.P8791710026178830515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A155212 n + 5).toNat

end

end A060190.P8791710026178830515

/-!
# A060191: Union_i p(4i), p(4i+1), where p(k) = k-th prime.

The programs for A060191, the canonical program `A060191.P13050475962778099044` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060191 has offset 0).

The definition of A060191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060191.P7001536451050965524

`A100479(n+1)-A060192(n)`
-/

namespace A060191.P7001536451050965524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A060192 n

end

end A060191.P7001536451050965524

namespace A060191

/-- `A100479(n+1)-A060192(n)` -/
def P7001536451050965524.Spec : Prop :=
  ∀ n, P7001536451050965524.a n = A060191 n

end A060191

/-! ## A060191.P1976649928844898047

`A089581(n+1)/A060192(n)`
-/

namespace A060191.P1976649928844898047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089581 (n + 1) : ℚ) / (A060192 n : ℚ)

end

end A060191.P1976649928844898047

namespace A060191

/-- `A089581(n+1)/A060192(n)` -/
def P1976649928844898047.Spec : Prop :=
  ∀ n, P1976649928844898047.a n = (A060191 n : ℚ)

end A060191

/-! ## A060191.P13050475962778099044

`∪[A031337(n+1), A031385(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060191

/-- `∪[A031337(n+1), A031385(n+1)]` -/
def P13050475962778099044.Spec : Prop :=
  ∀ n, (P13050475962778099044.a n : ℤ) = A060191 n

theorem P13050475962778099044.correct : P13050475962778099044.Spec := by
  intro n
  simp only [A060191]

end A060191

/-! ## A060191.P2017722981676405927

`A000040(∑[3^(n%2)])`
-/

namespace A060191.P2017722981676405927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060191.P2017722981676405927

namespace A060191

/-- `A000040(∑[3^(n%2)])` -/
def P2017722981676405927.Spec : Prop :=
  ∀ n, P2017722981676405927.a n = A060191 n

end A060191

/-! ## A060191.P4017619544578803864

`A000040(∑[3^and(1, n)])`
-/

namespace A060191.P4017619544578803864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060191.P4017619544578803864

namespace A060191

/-- `A000040(∑[3^and(1, n)])` -/
def P4017619544578803864.Spec : Prop :=
  ∀ n, P4017619544578803864.a n = A060191 n

end A060191

/-! ## A060191.P4948616448444963284

`A000040(or(1, n+1)+n)`
-/

namespace A060191.P4948616448444963284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 (n + 1) + n)

end

end A060191.P4948616448444963284

namespace A060191

/-- `A000040(or(1, n+1)+n)` -/
def P4948616448444963284.Spec : Prop :=
  ∀ n, P4948616448444963284.a n = A060191 n

end A060191

/-! ## A060191.P4090650075971966704

`A000040(∑[2-(-1)^n])`
-/

namespace A060191.P4090650075971966704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060191.P4090650075971966704

namespace A060191

/-- `A000040(∑[2-(-1)^n])` -/
def P4090650075971966704.Spec : Prop :=
  ∀ n, P4090650075971966704.a n = A060191 n

end A060191

/-! ## A060191.P4417570036263436494

`record[A000040(C(3, and(3, n)²)+n)]`
-/

namespace A060191.P4417570036263436494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose 3 (Nat.land 3 n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060191.P4417570036263436494

namespace A060191

/-- `record[A000040(C(3, and(3, n)²)+n)]` -/
def P4417570036263436494.Spec : Prop :=
  ∀ n, P4417570036263436494.a n = A060191 n

end A060191

/-! ## A060191.P4699825896684233492

`p?[(A000040(n+1)-2)*and(2, n+1)!+2]`
-/

namespace A060191.P4699825896684233492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 2) * (Nat.factorial (Nat.land 2 (n + 1)) : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060191.P4699825896684233492

namespace A060191

/-- `p?[(A000040(n+1)-2)*and(2, n+1)!+2]` -/
def P4699825896684233492.Spec : Prop :=
  ∀ n, P4699825896684233492.a n = A060191 n

end A060191

/-! ## A060191.P15223755580914657624

`record[A000040(A263449(n))]`
-/

namespace A060191.P15223755580914657624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A263449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060191.P15223755580914657624

namespace A060191

/-- `record[A000040(A263449(n))]` -/
def P15223755580914657624.Spec : Prop :=
  ∀ n, P15223755580914657624.a n = A060191 n

end A060191

/-! ## A060191.P971903808576531442

`record[A000040(A284307(n+1))]`
-/

namespace A060191.P971903808576531442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A284307 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060191.P971903808576531442

namespace A060191

/-- `record[A000040(A284307(n+1))]` -/
def P971903808576531442.Spec : Prop :=
  ∀ n, P971903808576531442.a n = A060191 n

end A060191

/-! ## A060191.P17327119171831678675

`A040976(A140201(2*n+1))+2`
-/

namespace A060191.P17327119171831678675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A140201 (2 * n + 1)).toNat + 2

end

end A060191.P17327119171831678675

namespace A060191

/-- `A040976(A140201(2*n+1))+2` -/
def P17327119171831678675.Spec : Prop :=
  ∀ n, P17327119171831678675.a n = A060191 n

end A060191

/-! ## A060191.P7887343552678933409

`A008578(2*n+4-gcd(2, n))`
-/

namespace A060191.P7887343552678933409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((2 * n : ℤ) + (4 - (Nat.gcd 2 n : ℤ))).toNat

end

end A060191.P7887343552678933409

namespace A060191

/-- `A008578(2*n+4-gcd(2, n))` -/
def P7887343552678933409.Spec : Prop :=
  ∀ n, P7887343552678933409.a n = A060191 n

end A060191

/-! ## A060191.P2463151341594105767

`p?[A008578(char[2*n]+2*n)]`
-/

namespace A060191.P2463151341594105767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((if ∃ j, f2 j = n then 1 else 0) + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060191.P2463151341594105767

namespace A060191

/-- `p?[A008578(char[2*n]+2*n)]` -/
def P2463151341594105767.Spec : Prop :=
  ∀ n, P2463151341594105767.a n = A060191 n

end A060191

/-! ## A060191.P3427558662482798658

`A008578(A014601(n)+2)`
-/

namespace A060191.P3427558662482798658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014601 n + 2).toNat

end

end A060191.P3427558662482798658

namespace A060191

/-- `A008578(A014601(n)+2)` -/
def P3427558662482798658.Spec : Prop :=
  ∀ n, P3427558662482798658.a n = A060191 n

end A060191

/-! ## A060191.P7971895141130706919

`A008578(A042963(n+2))`
-/

namespace A060191.P7971895141130706919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A042963 (n + 2)).toNat

end

end A060191.P7971895141130706919

namespace A060191

/-- `A008578(A042963(n+2))` -/
def P7971895141130706919.Spec : Prop :=
  ∀ n, P7971895141130706919.a n = A060191 n

end A060191

/-! ## A060191.P6877335564802973684

`A158611(A042964(n+2))`
-/

namespace A060191.P6877335564802973684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A042964 (n + 2)).toNat

end

end A060191.P6877335564802973684

namespace A060191

/-- `A158611(A042964(n+2))` -/
def P6877335564802973684.Spec : Prop :=
  ∀ n, P6877335564802973684.a n = A060191 n

end A060191

/-! ## A060191.P329825284071089552

`A008578(∑[A062157(n)+2])`
-/

namespace A060191.P329825284071089552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060191.P329825284071089552

namespace A060191

/-- `A008578(∑[A062157(n)+2])` -/
def P329825284071089552.Spec : Prop :=
  ∀ n, P329825284071089552.a n = A060191 n

end A060191

/-! ## A060191.P15989279048899766952

`A008578(A047238(n+2)-n)`
-/

namespace A060191.P15989279048899766952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A047238 (n + 2) - (n : ℤ)).toNat

end

end A060191.P15989279048899766952

namespace A060191

/-- `A008578(A047238(n+2)-n)` -/
def P15989279048899766952.Spec : Prop :=
  ∀ n, P15989279048899766952.a n = A060191 n

end A060191

/-! ## A060191.P15868478993182601317

`A158611(A047241(n+2)-n)`
-/

namespace A060191.P15868478993182601317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A047241 (n + 2) - (n : ℤ)).toNat

end

end A060191.P15868478993182601317

namespace A060191

/-- `A158611(A047241(n+2)-n)` -/
def P15868478993182601317.Spec : Prop :=
  ∀ n, P15868478993182601317.a n = A060191 n

end A060191

/-!
# A060192: Union_i p(4i+2), p(4i+3), where p(k) = k-th prime.

The programs for A060192, the canonical program `A060192.P8871710138267274484` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060192 has offset 0).

The definition of A060192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060192.P8871710138267274484

`A100479(n+1)-A060191(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060192

/-- `A100479(n+1)-A060191(n)` -/
def P8871710138267274484.Spec : Prop :=
  ∀ n, P8871710138267274484.a n = A060192 n

theorem P8871710138267274484.correct : P8871710138267274484.Spec := by
  intro n
  simp only [A060192]

end A060192

/-! ## A060192.P10543368823000026302

`A089581(n+1)/A060191(n)`
-/

namespace A060192.P10543368823000026302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089581 (n + 1) : ℚ) / (A060191 n : ℚ)

end

end A060192.P10543368823000026302

namespace A060192

/-- `A089581(n+1)/A060191(n)` -/
def P10543368823000026302.Spec : Prop :=
  ∀ n, P10543368823000026302.a n = (A060192 n : ℚ)

end A060192

/-! ## A060192.P15708844444057755361

`∪[A031370(n+1), A031378(n+1)]`
-/

namespace A060192.P15708844444057755361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060192.P15708844444057755361

namespace A060192

/-- `∪[A031370(n+1), A031378(n+1)]` -/
def P15708844444057755361.Spec : Prop :=
  ∀ n, (P15708844444057755361.a n : ℤ) = A060192 n

end A060192

/-! ## A060192.P12912074217542746995

`A000040(record[or(2, n)])`
-/

namespace A060192.P12912074217542746995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A060192.P12912074217542746995

namespace A060192

/-- `A000040(record[or(2, n)])` -/
def P12912074217542746995.Spec : Prop :=
  ∀ n, P12912074217542746995.a n = A060192 n

end A060192

/-! ## A060192.P9826712670155247407

`A000040(record[xor(2, n)])`
-/

namespace A060192.P9826712670155247407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A060192.P9826712670155247407

namespace A060192

/-- `A000040(record[xor(2, n)])` -/
def P9826712670155247407.Spec : Prop :=
  ∀ n, P9826712670155247407.a n = A060192 n

end A060192

/-! ## A060192.P1559862510883943205

`A000040(eq[n, or(2, n)])`
-/

namespace A060192.P1559862510883943205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060192.P1559862510883943205

namespace A060192

/-- `A000040(eq[n, or(2, n)])` -/
def P1559862510883943205.Spec : Prop :=
  ∀ n, P1559862510883943205.a n = A060192 n

end A060192

/-! ## A060192.P11789954468647211256

`A000040(lt[xor(2, n), n])`
-/

namespace A060192.P11789954468647211256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060192.P11789954468647211256

namespace A060192

/-- `A000040(lt[xor(2, n), n])` -/
def P11789954468647211256.Spec : Prop :=
  ∀ n, P11789954468647211256.a n = A060192 n

end A060192

/-! ## A060192.P6455635759716867480

`A000040(comp[and(n, -3)])`
-/

namespace A060192.P6455635759716867480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A060192.P6455635759716867480

namespace A060192

/-- `A000040(comp[and(n, -3)])` -/
def P6455635759716867480.Spec : Prop :=
  ∀ n, P6455635759716867480.a n = A060192 n

end A060192

/-! ## A060192.P6478422973696571350

`A000040(comp[or(2, n)]+2)`
-/

namespace A060192.P6478422973696571350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A060192.P6478422973696571350

namespace A060192

/-- `A000040(comp[or(2, n)]+2)` -/
def P6478422973696571350.Spec : Prop :=
  ∀ n, P6478422973696571350.a n = A060192 n

end A060192

/-! ## A060192.P10663502267878241086

`A000040(or(2, comp[or(2, n)]))`
-/

namespace A060192.P10663502267878241086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A060192.P10663502267878241086

namespace A060192

/-- `A000040(or(2, comp[or(2, n)]))` -/
def P10663502267878241086.Spec : Prop :=
  ∀ n, P10663502267878241086.a n = A060192 n

end A060192

/-! ## A060192.P13439814912257443847

`A000040(comp[and(2, n)+n])`
-/

namespace A060192.P13439814912257443847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060192.P13439814912257443847

namespace A060192

/-- `A000040(comp[and(2, n)+n])` -/
def P13439814912257443847.Spec : Prop :=
  ∀ n, P13439814912257443847.a n = A060192 n

end A060192

/-! ## A060192.P9045798486475168127

`A000040(gcd(2, n)+2*n)`
-/

namespace A060192.P9045798486475168127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd 2 n + 2 * n)

end

end A060192.P9045798486475168127

namespace A060192

/-- `A000040(gcd(2, n)+2*n)` -/
def P9045798486475168127.Spec : Prop :=
  ∀ n, P9045798486475168127.a n = A060192 n

end A060192

/-! ## A060192.P8440195490797156173

`A000040(or(1, n)+1+n)`
-/

namespace A060192.P8440195490797156173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 n + 1 + n)

end

end A060192.P8440195490797156173

namespace A060192

/-- `A000040(or(1, n)+1+n)` -/
def P8440195490797156173.Spec : Prop :=
  ∀ n, P8440195490797156173.a n = A060192 n

end A060192

/-! ## A060192.P9142787199590087910

`A000040(eq[2, and(n, 1-n)])`
-/

namespace A060192.P9142787199590087910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060192.P9142787199590087910

namespace A060192

/-- `A000040(eq[2, and(n, 1-n)])` -/
def P9142787199590087910.Spec : Prop :=
  ∀ n, P9142787199590087910.a n = A060192 n

end A060192

/-! ## A060192.P148933968261613174

`A000040(lt[and(n, n+2), n])`
-/

namespace A060192.P148933968261613174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060192.P148933968261613174

namespace A060192

/-- `A000040(lt[and(n, n+2), n])` -/
def P148933968261613174.Spec : Prop :=
  ∀ n, P148933968261613174.a n = A060192 n

end A060192

/-! ## A060192.P14234420974908796842

`A000040(and(n+2, -2)+n)`
-/

namespace A060192.P14234420974908796842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.land (n + 2 : ℤ) (-2) + (n : ℤ)).toNat

end

end A060192.P14234420974908796842

namespace A060192

/-- `A000040(and(n+2, -2)+n)` -/
def P14234420974908796842.Spec : Prop :=
  ∀ n, P14234420974908796842.a n = A060192 n

end A060192

/-! ## A060192.P9439417279159077583

`A000040(2*n-or(n, -2))`
-/

namespace A060192.P9439417279159077583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - Int.lor (n : ℤ) (-2)).toNat

end

end A060192.P9439417279159077583

namespace A060192

/-- `A000040(2*n-or(n, -2))` -/
def P9439417279159077583.Spec : Prop :=
  ∀ n, P9439417279159077583.a n = A060192 n

end A060192

/-! ## A060192.P7083839965379192396

`A000040(∑[3/a(n-1)])` with `a(0)=2, a(1)=1`
-/

namespace A060192.P7083839965379192396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A060192.P7083839965379192396

namespace A060192

/-- `A000040(∑[3/a(n-1)])` -/
def P7083839965379192396.Spec : Prop :=
  ∀ n, P7083839965379192396.a n = A060192 n

end A060192

/-! ## A060192.P14325987129966651253

`A000040(2*(n+1)-n%2)`
-/

namespace A060192.P14325987129966651253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1) - n % 2)

end

end A060192.P14325987129966651253

namespace A060192

/-- `A000040(2*(n+1)-n%2)` -/
def P14325987129966651253.Spec : Prop :=
  ∀ n, P14325987129966651253.a n = A060192 n

end A060192

/-!
# A060193: Partial products of A060191.

The programs for A060193, there is no canonical definition to state claims against.
-/

/-! ## A060193.P1145350237627634477

`∏[A060191(n)]`
-/

namespace A060193.P1145350237627634477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060193.P1145350237627634477

/-! ## A060193.P1680450413450788578

`∏[p?[A026098(2*n+1)]]`
-/

namespace A060193.P1680450413450788578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060193.P1680450413450788578

/-! ## A060193.P92529810397303045

`∏[p?[A077320(2*n+1)]]`
-/

namespace A060193.P92529810397303045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060193.P92529810397303045

/-! ## A060193.P13561300128583439909

`∏[p?[A083173(2*n+1)]]`
-/

namespace A060193.P13561300128583439909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083173 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060193.P13561300128583439909

/-! ## A060193.P1499095363631798690

`∏[p?[A272214(2*n+1)]]`
-/

namespace A060193.P1499095363631798690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272214 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060193.P1499095363631798690

/-!
# A060194: Partial products of A060192.

The programs for A060194, there is no canonical definition to state claims against.
-/

/-! ## A060194.P15477129335965076226

`∏[A060192(n)]`
-/

namespace A060194.P15477129335965076226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060194.P15477129335965076226

/-! ## A060194.P9725279887406182091

`∏[A000040(record[or(2, n)])]`
-/

namespace A060194.P9725279887406182091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060194.P9725279887406182091

/-! ## A060194.P13984390211450186435

`∏[A000040(record[xor(2, n)])]`
-/

namespace A060194.P13984390211450186435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060194.P13984390211450186435

/-! ## A060194.P1585168588922366021

`∏[p?[A026098(2*(n+1))]]`
-/

namespace A060194.P1585168588922366021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060194.P1585168588922366021

/-! ## A060194.P9415891400268070511

`∏[p?[A077320(2*(n+1))]]`
-/

namespace A060194.P9415891400268070511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060194.P9415891400268070511

/-!
# A060195: a(n) = 8^(n-1)*(2^n - 1).

The programs for A060195, the canonical program `A060195.P3689866117997531892` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060195 has offset 1).

The definition of A060195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n*(2^(n+1)-1)` (program `A060195.P3689866117997531892`, by `A060195.P3689866117997531892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060195.P3689866117997531892

`8^n*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060195

/-- `8^n*(2^(n+1)-1)` -/
def P3689866117997531892.Spec : Prop :=
  ∀ n, P3689866117997531892.a n = A060195 (n + 1)

theorem P3689866117997531892.correct : P3689866117997531892.Spec := by
  intro n
  simp only [A060195, Nat.add_sub_cancel]

end A060195

/-! ## A060195.P8506901811738208791

`24*a(n-1)-128*a(n-2)` with `a(0)=1, a(1)=24`
-/

namespace A060195.P8506901811738208791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  24 * a (n - 1) - 128 * a (n - 2)

end

end A060195.P8506901811738208791

namespace A060195

/-- `24*a(n-1)-128*a(n-2)` -/
def P8506901811738208791.Spec : Prop :=
  ∀ n, P8506901811738208791.a n = A060195 (n + 1)

theorem P8506901811738208791.correct : P8506901811738208791.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A060195, Nat.add_sub_cancel, A060195.P8506901811738208791.a, A060195.P3689866117997531892.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A060195, Nat.add_sub_cancel, A060195.P8506901811738208791.a, A060195.P3689866117997531892.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060195

/-! ## A060195.P1958175712173427773

`lcm(8^n, ∑[2^n])`
-/

namespace A060195.P1958175712173427773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (8 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060195.P1958175712173427773

namespace A060195

/-- `lcm(8^n, ∑[2^n])` -/
def P1958175712173427773.Spec : Prop :=
  ∀ n, (P1958175712173427773.a n : ℤ) = A060195 (n + 1)

end A060195

/-! ## A060195.P11172099037721913725

`A091143(2*n)`
-/

namespace A060195.P11172099037721913725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091143 (2 * n)

end

end A060195.P11172099037721913725

namespace A060195

/-- `A091143(2*n)` -/
def P11172099037721913725.Spec : Prop :=
  ∀ n, P11172099037721913725.a n = A060195 (n + 1)

end A060195

/-! ## A060195.P14845140718493585566

`A013776(n)-8^n`
-/

namespace A060195.P14845140718493585566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013776 n - (8 ^ n : ℤ)

end

end A060195.P14845140718493585566

namespace A060195

/-- `A013776(n)-8^n` -/
def P14845140718493585566.Spec : Prop :=
  ∀ n, P14845140718493585566.a n = A060195 (n + 1)

end A060195

/-! ## A060195.P10759101644793960284

`(A036563(n+2)+1)*8^n/2`
-/

namespace A060195.P10759101644793960284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A036563 (n + 2) + 1) * (8 ^ n : ℤ) : ℚ) / 2

end

end A060195.P10759101644793960284

namespace A060195

/-- `(A036563(n+2)+1)*8^n/2` -/
def P10759101644793960284.Spec : Prop :=
  ∀ n, P10759101644793960284.a n = (A060195 (n + 1) : ℚ)

end A060195

/-! ## A060195.P17011273864910365280

`record[A000079(n)*A287470(n)]`
-/

namespace A060195.P17011273864910365280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A287470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060195.P17011273864910365280

namespace A060195

/-- `record[A000079(n)*A287470(n)]` -/
def P17011273864910365280.Spec : Prop :=
  ∀ n, P17011273864910365280.a n = A060195 (n + 1)

end A060195

/-! ## A060195.P3956971058024926140

`2*A001025(n)-A001018(n)`
-/

namespace A060195.P3956971058024926140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001025 n - A001018 n

end

end A060195.P3956971058024926140

namespace A060195

/-- `2*A001025(n)-A001018(n)` -/
def P3956971058024926140.Spec : Prop :=
  ∀ n, P3956971058024926140.a n = A060195 (n + 1)

end A060195

/-! ## A060195.P712867100838942661

`A004171(2*n)-A001018(n)`
-/

namespace A060195.P712867100838942661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (2 * n) - A001018 n

end

end A060195.P712867100838942661

namespace A060195

/-- `A004171(2*n)-A001018(n)` -/
def P712867100838942661.Spec : Prop :=
  ∀ n, P712867100838942661.a n = A060195 (n + 1)

end A060195

/-! ## A060195.P12164924458314411601

`A004171(2*n)-A094014(2*n)`
-/

namespace A060195.P12164924458314411601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (2 * n) - A094014 (2 * n)

end

end A060195.P12164924458314411601

namespace A060195

/-- `A004171(2*n)-A094014(2*n)` -/
def P12164924458314411601.Spec : Prop :=
  ∀ n, P12164924458314411601.a n = A060195 (n + 1)

end A060195

/-!
# A060197: Start at n, repeatedly apply pi(x) until reach 0; a(n) = number of steps to reach 0.

The programs for A060197, the canonical program `A060197.P6380392400821796485` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060197 has offset 1).

The definition of A060197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060197.P1348423000343272568

`A071578(n+1)+2`
-/

namespace A060197.P1348423000343272568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071578 (n + 1) + 2

end

end A060197.P1348423000343272568

namespace A060197

/-- `A071578(n+1)+2` -/
def P1348423000343272568.Spec : Prop :=
  ∀ n, P1348423000343272568.a n = A060197 (n + 1)

end A060197

/-! ## A060197.P6380392400821796485

`a(A033270(n+1))+1` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060197

/-- `a(A033270(n+1))+1` -/
def P6380392400821796485.Spec : Prop :=
  ∀ n, (P6380392400821796485.a n : ℤ) = A060197 (n + 1)

theorem P6380392400821796485.correct : P6380392400821796485.Spec := by
  intro n
  simp only [A060197, Nat.add_sub_cancel]

end A060197

/-! ## A060197.P8754239213270618731

`∑[char[A007097(n)-1]]+1`
-/

namespace A060197.P8754239213270618731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060197.P8754239213270618731

namespace A060197

/-- `∑[char[A007097(n)-1]]+1` -/
def P8754239213270618731.Spec : Prop :=
  ∀ n, (P8754239213270618731.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P13301262701088050606

`∑[C(2, A109129(n+1)+1)]`
-/

namespace A060197.P13301262701088050606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A109129 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060197.P13301262701088050606

namespace A060197

/-- `∑[C(2, A109129(n+1)+1)]` -/
def P13301262701088050606.Spec : Prop :=
  ∀ n, (P13301262701088050606.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P15531679236095104405

`a(A000720(n+1)-1)+1` with `a(0)=2`
-/

namespace A060197.P15531679236095104405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A000720 (n + 1) - 1).toNat + 1

end

end A060197.P15531679236095104405

namespace A060197

/-- `a(A000720(n+1)-1)+1` -/
def P15531679236095104405.Spec : Prop :=
  ∀ n, (P15531679236095104405.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P5114514169001189190

`a(n-A062298(n+1))+1` with `a(0)=2`
-/

namespace A060197.P5114514169001189190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - A062298 (n + 1)).toNat + 1

end

end A060197.P5114514169001189190

namespace A060197

/-- `a(n-A062298(n+1))+1` -/
def P5114514169001189190.Spec : Prop :=
  ∀ n, (P5114514169001189190.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P3477260673458722277

`a(∑[A080545(n+1)]-1)+1` with `a(0)=2`
-/

namespace A060197.P3477260673458722277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + 1

end

end A060197.P3477260673458722277

namespace A060197

/-- `a(∑[A080545(n+1)]-1)+1` -/
def P3477260673458722277.Spec : Prop :=
  ∀ n, (P3477260673458722277.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P15179999868965026473

`a(∑[char[A000040(n+2)-1]])+1` with `a(0)=2`
-/

namespace A060197.P15179999868965026473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A060197.P15179999868965026473

namespace A060197

/-- `a(∑[char[A000040(n+2)-1]])+1` -/
def P15179999868965026473.Spec : Prop :=
  ∀ n, (P15179999868965026473.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P11127311685585130943

`a(∑[char[A020639(n+2)-1]]-1)+1` with `a(0)=2`
-/

namespace A060197.P11127311685585130943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A060197.P11127311685585130943

namespace A060197

/-- `a(∑[char[A020639(n+2)-1]]-1)+1` -/
def P11127311685585130943.Spec : Prop :=
  ∀ n, (P11127311685585130943.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P4183769160076726534

`a(∑[char[A006530(2*(n+1))-1]]-1)+1` with `a(0)=2`
-/

namespace A060197.P4183769160076726534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A060197.P4183769160076726534

namespace A060197

/-- `a(∑[char[A006530(2*(n+1))-1]]-1)+1` -/
def P4183769160076726534.Spec : Prop :=
  ∀ n, (P4183769160076726534.a n : ℤ) = A060197 (n + 1)

end A060197

/-! ## A060197.P8038905391251333671

`A071578(A006450(n+1))`
-/

namespace A060197.P8038905391251333671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071578 (A006450 (n + 1)).toNat

end

end A060197.P8038905391251333671

namespace A060197

/-- `A071578(A006450(n+1))` -/
def P8038905391251333671.Spec : Prop :=
  ∀ n, P8038905391251333671.a n = A060197 (n + 1)

end A060197

/-! ## A060197.P6707889132714178278

`A071578(A073123(n+1))`
-/

namespace A060197.P6707889132714178278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071578 (A073123 (n + 1)).toNat

end

end A060197.P6707889132714178278

namespace A060197

/-- `A071578(A073123(n+1))` -/
def P6707889132714178278.Spec : Prop :=
  ∀ n, P6707889132714178278.a n = A060197 (n + 1)

end A060197

/-!
# A060199: Number of primes between n^3 and (n+1)^3.

The programs for A060199, the canonical program `A060199.P18406765508866115629` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060199 has offset 0).

The definition of A060199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060199.P18406765508866115629

`Δ[A038098(n-n²%(n+1)+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060199

/-- `Δ[A038098(n-n²%(n+1)+1)]` -/
def P18406765508866115629.Spec : Prop :=
  ∀ n, P18406765508866115629.a n = A060199 n

theorem P18406765508866115629.correct : P18406765508866115629.Spec := by
  intro n
  simp only [A060199]

end A060199

/-! ## A060199.P16802001197312001810

`Δ[A038098(n+1-round(n/(n+1)))]`
-/

namespace A060199.P16802001197312001810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060199.P16802001197312001810

namespace A060199

/-- `Δ[A038098(n+1-round(n/(n+1)))]` -/
def P16802001197312001810.Spec : Prop :=
  ∀ n, P16802001197312001810.a n = A060199 n

end A060199

/-! ## A060199.P10382639615380197584

`A038098(n+1)-A038098(A028310(n))`
-/

namespace A060199.P10382639615380197584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A038098 (A028310 n).toNat

end

end A060199.P10382639615380197584

namespace A060199

/-- `A038098(n+1)-A038098(A028310(n))` -/
def P10382639615380197584.Spec : Prop :=
  ∀ n, P10382639615380197584.a n = A060199 n

end A060199

/-! ## A060199.P15923644237489873761

`A038098(n+1)-A038098(A065033(2*n))`
-/

namespace A060199.P15923644237489873761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A038098 (A065033 (2 * n)).toNat

end

end A060199.P15923644237489873761

namespace A060199

/-- `A038098(n+1)-A038098(A065033(2*n))` -/
def P15923644237489873761.Spec : Prop :=
  ∀ n, P15923644237489873761.a n = A060199 n

end A060199

/-! ## A060199.P8190335386913679145

`A038098(n+1)-A038098(A000007(n)+n)`
-/

namespace A060199.P8190335386913679145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A038098 (A000007 n + (n : ℤ)).toNat

end

end A060199.P8190335386913679145

namespace A060199

/-- `A038098(n+1)-A038098(A000007(n)+n)` -/
def P8190335386913679145.Spec : Prop :=
  ∀ n, P8190335386913679145.a n = A060199 n

end A060199

/-! ## A060199.P1048093656340692838

`A014085(n)+Δ[A079648(n)]`
-/

namespace A060199.P1048093656340692838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + (f1 (n + 1) - f1 n)

end

end A060199.P1048093656340692838

namespace A060199

/-- `A014085(n)+Δ[A079648(n)]` -/
def P1048093656340692838.Spec : Prop :=
  ∀ n, P1048093656340692838.a n = A060199 n

end A060199

