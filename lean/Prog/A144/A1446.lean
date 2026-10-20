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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A144600: Christoffel word of slope 2/11.

The programs for A144600, the canonical program `A144600.P14140090651743609666` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144600 has offset 0).

The definition of A144600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144600.P14140090651743609666

`Δ[floor(2*n/13)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144600

/-- `Δ[floor(2*n/13)]` -/
def P14140090651743609666.Spec : Prop :=
  ∀ n, P14140090651743609666.a n = A144600 n

theorem P14140090651743609666.correct : P14140090651743609666.Spec := by
  intro n
  simp only [A144600]

end A144600

/-!
# A144601: Christoffel word of slope 3/11.

The programs for A144601, the canonical program `A144601.P2376952802333306497` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144601 has offset 0).

The definition of A144601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144601.P2376952802333306497

`Δ[floor(3*n/14)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144601

/-- `Δ[floor(3*n/14)]` -/
def P2376952802333306497.Spec : Prop :=
  ∀ n, P2376952802333306497.a n = A144601 n

theorem P2376952802333306497.correct : P2376952802333306497.Spec := by
  intro n
  simp only [A144601]

end A144601

/-!
# A144602: Christoffel word of slope 4/11.

The programs for A144602, the canonical program `A144602.P3531785067864892282` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144602 has offset 0).

The definition of A144602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144602.P3531785067864892282

`Δ[ceil((4*n+1)/15)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144602

/-- `Δ[ceil((4*n+1)/15)]` -/
def P3531785067864892282.Spec : Prop :=
  ∀ n, P3531785067864892282.a n = A144602 n

theorem P3531785067864892282.correct : P3531785067864892282.Spec := by
  intro n
  simp only [A144602]

end A144602

/-!
# A144603: Christoffel word of slope 5/11.

The programs for A144603, the canonical program `A144603.P7770855154981598977` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144603 has offset 0).

The definition of A144603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144603.P7770855154981598977

`char[∑[char[5*(n+1)]+3]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144603

/-- `char[∑[char[5*(n+1)]+3]]` -/
def P7770855154981598977.Spec : Prop :=
  ∀ n, (P7770855154981598977.a n : ℤ) = A144603 n

theorem P7770855154981598977.correct : P7770855154981598977.Spec := by
  intro n
  simp only [A144603]

end A144603

/-!
# A144604: Christoffel word of slope 6/11.

The programs for A144604, the canonical program `A144604.P7985712841209999567` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144604 has offset 0).

The definition of A144604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144604.P7985712841209999567

`char[A008586(n)-comp[7*n]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144604

/-- `char[A008586(n)-comp[7*n]]` -/
def P7985712841209999567.Spec : Prop :=
  ∀ n, (P7985712841209999567.a n : ℤ) = A144604 n

theorem P7985712841209999567.correct : P7985712841209999567.Spec := by
  intro n
  simp only [A144604]

end A144604

/-!
# A144605: Christoffel word of slope 7/11.

The programs for A144605, the canonical program `A144605.P14725162354202901999` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144605 has offset 0).

The definition of A144605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144605.P14725162354202901999

`Δ[floor(7*n/18)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144605

/-- `Δ[floor(7*n/18)]` -/
def P14725162354202901999.Spec : Prop :=
  ∀ n, P14725162354202901999.a n = A144605 n

theorem P14725162354202901999.correct : P14725162354202901999.Spec := by
  intro n
  simp only [A144605]

end A144605

/-!
# A144606: Christoffel word of slope 8/11.

The programs for A144606, the canonical program `A144606.P2436174996341974642` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144606 has offset 0).

The definition of A144606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144606.P2436174996341974642

`Δ[floor(8*n/19)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144606

/-- `Δ[floor(8*n/19)]` -/
def P2436174996341974642.Spec : Prop :=
  ∀ n, P2436174996341974642.a n = A144606 n

theorem P2436174996341974642.correct : P2436174996341974642.Spec := by
  intro n
  simp only [A144606]

end A144606

/-!
# A144607: Christoffel word of slope 9/11.

The programs for A144607, the canonical program `A144607.P3857249666111498186` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144607 has offset 0).

The definition of A144607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144607.P3857249666111498186

`Δ[floor(9*n/20)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144607

/-- `Δ[floor(9*n/20)]` -/
def P3857249666111498186.Spec : Prop :=
  ∀ n, P3857249666111498186.a n = A144607 n

theorem P3857249666111498186.correct : P3857249666111498186.Spec := by
  intro n
  simp only [A144607]

end A144607

/-!
# A144608: Christoffel word of slope 10/11.

The programs for A144608, the canonical program `A144608.P16132669556638268283` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144608 has offset 0).

The definition of A144608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144608.P16132669556638268283

`((n+20)%21)%2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144608

/-- `((n+20)%21)%2` -/
def P16132669556638268283.Spec : Prop :=
  ∀ n, (P16132669556638268283.a n : ℤ) = A144608 n

theorem P16132669556638268283.correct : P16132669556638268283.Spec := by
  intro n
  simp only [A144608]

end A144608

/-!
# A144609: Sturmian word of slope Pi.

The programs for A144609, the canonical program `A144609.P8694314560408707537` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144609 has offset 0).

The definition of A144609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144609.P8694314560408707537

`char[floor(29*(n+1)/22)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144609

/-- `char[floor(29*(n+1)/22)]` -/
def P8694314560408707537.Spec : Prop :=
  ∀ n, (P8694314560408707537.a n : ℤ) = A144609 n

theorem P8694314560408707537.correct : P8694314560408707537.Spec := by
  intro n
  simp only [A144609]

end A144609

/-!
# A144610: Sturmian word of slope e.

The programs for A144610, the canonical program `A144610.P498494235306582706` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144610 has offset 0).

The definition of A144610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144610.P498494235306582706

`Δ[floor(19*n/26)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144610

/-- `Δ[floor(19*n/26)]` -/
def P498494235306582706.Spec : Prop :=
  ∀ n, P498494235306582706.a n = A144610 n

theorem P498494235306582706.correct : P498494235306582706.Spec := by
  intro n
  simp only [A144610]

end A144610

/-!
# A144611: Sturmian word of slope 2-sqrt(2).

The programs for A144611, the canonical program `A144611.P4502785910793771792` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144611 has offset 0).

The definition of A144611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144611.P7307760554712623959

`char[comp[floor(n*sqrt(2))+n]]`
-/

namespace A144611.P7307760554712623959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A144611.P7307760554712623959

namespace A144611

/-- `char[comp[floor(n*sqrt(2))+n]]` -/
def P7307760554712623959.Spec : Prop :=
  ∀ n, (P7307760554712623959.a n : ℤ) = A144611 n

end A144611

/-! ## A144611.P16036957143739597683

`3%(Δ[ceil(n*sqrt(2))]+1)`
-/

namespace A144611.P16036957143739597683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n + 1)

end

end A144611.P16036957143739597683

namespace A144611

/-- `3%(Δ[ceil(n*sqrt(2))]+1)` -/
def P16036957143739597683.Spec : Prop :=
  ∀ n, P16036957143739597683.a n = A144611 n

end A144611

/-! ## A144611.P10265237002108023719

`C(2, Δ[ceil(n*sqrt(2))]+1)`
-/

namespace A144611.P10265237002108023719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n + 1).toNat

end

end A144611.P10265237002108023719

namespace A144611

/-- `C(2, Δ[ceil(n*sqrt(2))]+1)` -/
def P10265237002108023719.Spec : Prop :=
  ∀ n, (P10265237002108023719.a n : ℤ) = A144611 n

end A144611

/-! ## A144611.P13942512660281314580

`Δ[floor((1-C(n+1, n))*sqrt(2))]+2`
-/

namespace A144611.P13942512660281314580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (Nat.choose (n + 1) n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A144611.P13942512660281314580

namespace A144611

/-- `Δ[floor((1-C(n+1, n))*sqrt(2))]+2` -/
def P13942512660281314580.Spec : Prop :=
  ∀ n, P13942512660281314580.a n = A144611 n

end A144611

/-! ## A144611.P15293551953638597685

`val(Δ[floor(n*sqrt(2))]%(n+1)+1, 2)`
-/

namespace A144611.P15293551953638597685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ) + 1).toNat 2

end

end A144611.P15293551953638597685

namespace A144611

/-- `val(Δ[floor(n*sqrt(2))]%(n+1)+1, 2)` -/
def P15293551953638597685.Spec : Prop :=
  ∀ n, (P15293551953638597685.a n : ℤ) = A144611 n

end A144611

/-! ## A144611.P15534689437157608687

`3-A097509(n)`
-/

namespace A144611.P15534689437157608687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A097509 n

end

end A144611.P15534689437157608687

namespace A144611

/-- `3-A097509(n)` -/
def P15534689437157608687.Spec : Prop :=
  ∀ n, P15534689437157608687.a n = A144611 n

end A144611

/-! ## A144611.P3459991821495138799

`1-char[A001951(n)+n]`
-/

namespace A144611.P3459991821495138799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A144611.P3459991821495138799

namespace A144611

/-- `1-char[A001951(n)+n]` -/
def P3459991821495138799.Spec : Prop :=
  ∀ n, P3459991821495138799.a n = A144611 n

end A144611

/-! ## A144611.P11683013788896670383

`char[1]+char[A003152(n+2)]`
-/

namespace A144611.P11683013788896670383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A144611.P11683013788896670383

namespace A144611

/-- `char[1]+char[A003152(n+2)]` -/
def P11683013788896670383.Spec : Prop :=
  ∀ n, (P11683013788896670383.a n : ℤ) = A144611 n

end A144611

/-! ## A144611.P15952672861996833183

`1-a(n-1)*A286665(n)` with `a(0)=0`
-/

namespace A144611.P15952672861996833183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A286665 n

end

end A144611.P15952672861996833183

namespace A144611

/-- `1-a(n-1)*A286665(n)` -/
def P15952672861996833183.Spec : Prop :=
  ∀ n, P15952672861996833183.a n = A144611 n

end A144611

/-! ## A144611.P11279132265480468432

`1-a(n-1)*A327205(n)` with `a(0)=0`
-/

namespace A144611.P11279132265480468432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A327205 n

end

end A144611.P11279132265480468432

namespace A144611

/-- `1-a(n-1)*A327205(n)` -/
def P11279132265480468432.Spec : Prop :=
  ∀ n, P11279132265480468432.a n = A144611 n

end A144611

/-! ## A144611.P4502785910793771792

`and(1, A006337(C(n, a(n-1))))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144611

/-- `and(1, A006337(C(n, a(n-1))))` -/
def P4502785910793771792.Spec : Prop :=
  ∀ n, P4502785910793771792.a n = A144611 n

theorem P4502785910793771792.correct : P4502785910793771792.Spec := by
  intro n
  simp only [A144611]

end A144611

/-! ## A144611.P17428666574687322505

`A147781(Δ[ceil(2*n/sqrt(2))]+1)`
-/

namespace A144611.P17428666574687322505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147781 (f1 (n + 1) - f1 n + 1).toNat

end

end A144611.P17428666574687322505

namespace A144611

/-- `A147781(Δ[ceil(2*n/sqrt(2))]+1)` -/
def P17428666574687322505.Spec : Prop :=
  ∀ n, P17428666574687322505.a n = A144611 n

end A144611

/-! ## A144611.P89633625404703384

`and(A054977(n), A191405(n))`
-/

namespace A144611.P89633625404703384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A191405 n)

end

end A144611.P89633625404703384

namespace A144611

/-- `and(A054977(n), A191405(n))` -/
def P89633625404703384.Spec : Prop :=
  ∀ n, P89633625404703384.a n = A144611 n

end A144611

/-! ## A144611.P16777520341131512757

`and(A057427(n), A191405(n))`
-/

namespace A144611.P16777520341131512757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A191405 n)

end

end A144611.P16777520341131512757

namespace A144611

/-- `and(A057427(n), A191405(n))` -/
def P16777520341131512757.Spec : Prop :=
  ∀ n, P16777520341131512757.a n = A144611 n

end A144611

/-! ## A144611.P1587034403922937325

`A057427(n)-A188037(n+1)`
-/

namespace A144611.P1587034403922937325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A188037 (n + 1)

end

end A144611.P1587034403922937325

namespace A144611

/-- `A057427(n)-A188037(n+1)` -/
def P1587034403922937325.Spec : Prop :=
  ∀ n, P1587034403922937325.a n = A144611 n

end A144611

/-!
# A144612: Sturmian word of slope (3-sqrt(3))/2.

The programs for A144612, the canonical program `A144612.P3131185482000294811` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144612 has offset 1).

The definition of A144612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144612.P3131185482000294811

`floor((n+2)*(3-sqrt(3))/2)-floor((n+1)*(3-sqrt(3))/2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144612

/-- `floor((n+2)*(3-sqrt(3))/2)-floor((n+1)*(3-sqrt(3))/2)` -/
def P3131185482000294811.Spec : Prop :=
  ∀ n, P3131185482000294811.a n = A144612 (n + 1)

theorem P3131185482000294811.correct : P3131185482000294811.Spec := by
  intro n
  simp only [A144612, Nat.add_sub_cancel]

end A144612

/-! ## A144612.P13905002167202246023

`char[A186539(n+1)-1]`
-/

namespace A144612.P13905002167202246023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144612.P13905002167202246023

namespace A144612

/-- `char[A186539(n+1)-1]` -/
def P13905002167202246023.Spec : Prop :=
  ∀ n, (P13905002167202246023.a n : ℤ) = A144612 (n + 1)

end A144612

/-! ## A144612.P4803452205541368080

`char[A097337(n+1)+n]`
-/

namespace A144612.P4803452205541368080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144612.P4803452205541368080

namespace A144612

/-- `char[A097337(n+1)+n]` -/
def P4803452205541368080.Spec : Prop :=
  ∀ n, (P4803452205541368080.a n : ℤ) = A144612 (n + 1)

end A144612

/-! ## A144612.P12673027028422286375

`char[comp[A022838(n+1)+n]]`
-/

namespace A144612.P12673027028422286375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A144612.P12673027028422286375

namespace A144612

/-- `char[comp[A022838(n+1)+n]]` -/
def P12673027028422286375.Spec : Prop :=
  ∀ n, (P12673027028422286375.a n : ℤ) = A144612 (n + 1)

end A144612

/-! ## A144612.P401612872074888937

`Δ[A074065(n+1)]`
-/

namespace A144612.P401612872074888937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144612.P401612872074888937

namespace A144612

/-- `Δ[A074065(n+1)]` -/
def P401612872074888937.Spec : Prop :=
  ∀ n, P401612872074888937.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P11229791953998247322

`log2(Δ[A182772(n+1)])`
-/

namespace A144612.P11229791953998247322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A144612.P11229791953998247322

namespace A144612

/-- `log2(Δ[A182772(n+1)])` -/
def P11229791953998247322.Spec : Prop :=
  ∀ n, P11229791953998247322.a n = (A144612 (n + 1) : ℝ)

end A144612

/-! ## A144612.P6295071252095101221

`Δ[Δ[A002378(n)]-A003511(n+1)]`
-/

namespace A144612.P6295071252095101221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144612.P6295071252095101221

namespace A144612

/-- `Δ[Δ[A002378(n)]-A003511(n+1)]` -/
def P6295071252095101221.Spec : Prop :=
  ∀ n, P6295071252095101221.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P1804740474299548448

`Δ[Δ[A014206(n)]-A003511(n+1)]`
-/

namespace A144612.P1804740474299548448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144612.P1804740474299548448

namespace A144612

/-- `Δ[Δ[A014206(n)]-A003511(n+1)]` -/
def P1804740474299548448.Spec : Prop :=
  ∀ n, P1804740474299548448.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P1020177972825524785

`Δ[Δ[A027688(n)]-A003511(n+1)]`
-/

namespace A144612.P1020177972825524785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144612.P1020177972825524785

namespace A144612

/-- `Δ[Δ[A027688(n)]-A003511(n+1)]` -/
def P1020177972825524785.Spec : Prop :=
  ∀ n, P1020177972825524785.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P11714527195551308183

`A188083(A003511(n+1))`
-/

namespace A144612.P11714527195551308183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188083 (A003511 (n + 1)).toNat

end

end A144612.P11714527195551308183

namespace A144612

/-- `A188083(A003511(n+1))` -/
def P11714527195551308183.Spec : Prop :=
  ∀ n, P11714527195551308183.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P2571976826585786920

`A188082(A188070(n+1))`
-/

namespace A144612.P2571976826585786920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (A188070 (n + 1)).toNat

end

end A144612.P2571976826585786920

namespace A144612

/-- `A188082(A188070(n+1))` -/
def P2571976826585786920.Spec : Prop :=
  ∀ n, P2571976826585786920.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P2545800759139877647

`A188068(A003511(n+2))`
-/

namespace A144612.P2545800759139877647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A003511 (n + 2)).toNat

end

end A144612.P2545800759139877647

namespace A144612

/-- `A188068(A003511(n+2))` -/
def P2545800759139877647.Spec : Prop :=
  ∀ n, P2545800759139877647.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P18300180692667658189

`A188082(A003511(n+1)+1)`
-/

namespace A144612.P18300180692667658189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (A003511 (n + 1) + 1).toNat

end

end A144612.P18300180692667658189

namespace A144612

/-- `A188082(A003511(n+1)+1)` -/
def P18300180692667658189.Spec : Prop :=
  ∀ n, P18300180692667658189.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P10822198284407139878

`A188068(comp[A188069(n+1)]+2)`
-/

namespace A144612.P10822198284407139878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A144612.P10822198284407139878

namespace A144612

/-- `A188068(comp[A188069(n+1)]+2)` -/
def P10822198284407139878.Spec : Prop :=
  ∀ n, P10822198284407139878.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P6008893907178336727

`A188071(A188070(n+2))`
-/

namespace A144612.P6008893907178336727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (A188070 (n + 2)).toNat

end

end A144612.P6008893907178336727

namespace A144612

/-- `A188071(A188070(n+2))` -/
def P6008893907178336727.Spec : Prop :=
  ∀ n, P6008893907178336727.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P14062579894003995762

`A188068(A188070(n+1)+1)`
-/

namespace A144612.P14062579894003995762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A188070 (n + 1) + 1).toNat

end

end A144612.P14062579894003995762

namespace A144612

/-- `A188068(A188070(n+1)+1)` -/
def P14062579894003995762.Spec : Prop :=
  ∀ n, P14062579894003995762.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P16825682444958552135

`A188076(A188070(n+1)+1)`
-/

namespace A144612.P16825682444958552135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A188070 (n + 1) + 1).toNat

end

end A144612.P16825682444958552135

namespace A144612

/-- `A188076(A188070(n+1)+1)` -/
def P16825682444958552135.Spec : Prop :=
  ∀ n, P16825682444958552135.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P7956517220257781476

`A285684(A054406(n+1)+2)`
-/

namespace A144612.P7956517220257781476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285684 (A054406 (n + 1) + 2).toNat

end

end A144612.P7956517220257781476

namespace A144612

/-- `A285684(A054406(n+1)+2)` -/
def P7956517220257781476.Spec : Prop :=
  ∀ n, P7956517220257781476.a n = A144612 (n + 1)

end A144612

/-! ## A144612.P3269903253172904932

`A188076(A188074(n+2)-2)`
-/

namespace A144612.P3269903253172904932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A188074 (n + 2) - 2).toNat

end

end A144612.P3269903253172904932

namespace A144612

/-- `A188076(A188074(n+2)-2)` -/
def P3269903253172904932.Spec : Prop :=
  ∀ n, P3269903253172904932.a n = A144612 (n + 1)

end A144612

/-!
# A144613: a(n) = sigma(3*n) = A000203(3*n).

The programs for A144613, the canonical program `A144613.P4002945584050852539` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144613 has offset 1).

The definition of A144613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*(n+1))` (program `A144613.P4002945584050852539`, by `A144613.P4002945584050852539.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144613.P4002945584050852539

`A000203(3*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144613

/-- `A000203(3*(n+1))` -/
def P4002945584050852539.Spec : Prop :=
  ∀ n, P4002945584050852539.a n = A144613 (n + 1)

theorem P4002945584050852539.correct : P4002945584050852539.Spec := by
  intro n
  simp only [A144613, Nat.add_sub_cancel]

end A144613

/-! ## A144613.P8635547407841515036

`∑{d}[3*(n+1), #]`
-/

namespace A144613.P8635547407841515036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A144613.P8635547407841515036

namespace A144613

/-- `∑{d}[3*(n+1), #]` -/
def P8635547407841515036.Spec : Prop :=
  ∀ n, (P8635547407841515036.a n : ℤ) = A144613 (n + 1)

end A144613

/-! ## A144613.P13772947027896123463

`A000027(∑{d}[a(n-1)+3, #])` with `a(0)=3`
-/

namespace A144613.P13772947027896123463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A144613.P13772947027896123463

namespace A144613

/-- `A000027(∑{d}[a(n-1)+3, #])` -/
def P13772947027896123463.Spec : Prop :=
  ∀ n, P13772947027896123463.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P16945591100318350464

`A272027(n+1)+A046913(n+1)`
-/

namespace A144613.P16945591100318350464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) + A046913 (n + 1)

end

end A144613.P16945591100318350464

namespace A144613

/-- `A272027(n+1)+A046913(n+1)` -/
def P16945591100318350464.Spec : Prop :=
  ∀ n, P16945591100318350464.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P16694345633290307813

`A046913(n+1)*A088838(n+1)`
-/

namespace A144613.P16694345633290307813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) * A088838 (n + 1)

end

end A144613.P16694345633290307813

namespace A144613

/-- `A046913(n+1)*A088838(n+1)` -/
def P16694345633290307813.Spec : Prop :=
  ∀ n, P16694345633290307813.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P2954871379731036945

`abs(A000203(A016777(n)+2)-1)+1`
-/

namespace A144613.P2954871379731036945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (A016777 n + 2).toNat - 1| + 1

end

end A144613.P2954871379731036945

namespace A144613

/-- `abs(A000203(A016777(n)+2)-1)+1` -/
def P2954871379731036945.Spec : Prop :=
  ∀ n, P2954871379731036945.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P15254657796157467440

`A074400(3*(n+1))/2`
-/

namespace A144613.P15254657796157467440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (3 * (n + 1)) : ℚ) / 2

end

end A144613.P15254657796157467440

namespace A144613

/-- `A074400(3*(n+1))/2` -/
def P15254657796157467440.Spec : Prop :=
  ∀ n, P15254657796157467440.a n = (A144613 (n + 1) : ℚ)

end A144613

/-! ## A144613.P4280062495344293166

`A245092(6*n+5)`
-/

namespace A144613.P4280062495344293166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (6 * n + 5)

end

end A144613.P4280062495344293166

namespace A144613

/-- `A245092(6*n+5)` -/
def P4280062495344293166.Spec : Prop :=
  ∀ n, P4280062495344293166.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P2416336224445371898

`sqrt(A072861(3*(n+1)))`
-/

namespace A144613.P2416336224445371898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (3 * (n + 1)) : ℝ)

end

end A144613.P2416336224445371898

namespace A144613

/-- `sqrt(A072861(3*(n+1)))` -/
def P2416336224445371898.Spec : Prop :=
  ∀ n, P2416336224445371898.a n = (A144613 (n + 1) : ℝ)

end A144613

/-! ## A144613.P16949470433768527171

`A039653(3*(n+1))+1`
-/

namespace A144613.P16949470433768527171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (3 * (n + 1)) + 1

end

end A144613.P16949470433768527171

namespace A144613

/-- `A039653(3*(n+1))+1` -/
def P16949470433768527171.Spec : Prop :=
  ∀ n, P16949470433768527171.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P4554524618044279077

`A088580(3*(n+1))-1`
-/

namespace A144613.P4554524618044279077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (3 * (n + 1)) - 1

end

end A144613.P4554524618044279077

namespace A144613

/-- `A088580(3*(n+1))-1` -/
def P4554524618044279077.Spec : Prop :=
  ∀ n, P4554524618044279077.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P15061031664684768080

`A272027(3*(n+1))/3`
-/

namespace A144613.P15061031664684768080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (3 * (n + 1)) : ℚ) / 3

end

end A144613.P15061031664684768080

namespace A144613

/-- `A272027(3*(n+1))/3` -/
def P15061031664684768080.Spec : Prop :=
  ∀ n, P15061031664684768080.a n = (A144613 (n + 1) : ℚ)

end A144613

/-! ## A144613.P5179322622704134693

`A239050(3*(n+1))/4`
-/

namespace A144613.P5179322622704134693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (3 * (n + 1)) : ℚ) / 4

end

end A144613.P5179322622704134693

namespace A144613

/-- `A239050(3*(n+1))/4` -/
def P5179322622704134693.Spec : Prop :=
  ∀ n, P5179322622704134693.a n = (A144613 (n + 1) : ℚ)

end A144613

/-! ## A144613.P14242996279550199814

`A274535(3*(n+1))/5`
-/

namespace A144613.P14242996279550199814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274535 (3 * (n + 1)) : ℚ) / 5

end

end A144613.P14242996279550199814

namespace A144613

/-- `A274535(3*(n+1))/5` -/
def P14242996279550199814.Spec : Prop :=
  ∀ n, P14242996279550199814.a n = (A144613 (n + 1) : ℚ)

end A144613

/-! ## A144613.P13472590533069369399

`3*(n+1)+A001065(3*(n+1))`
-/

namespace A144613.P13472590533069369399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + A001065 (3 * (n + 1))

end

end A144613.P13472590533069369399

namespace A144613

/-- `3*(n+1)+A001065(3*(n+1))` -/
def P13472590533069369399.Spec : Prop :=
  ∀ n, P13472590533069369399.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P16336122980114189103

`A178637(3*(n+1))+A023889(3*(n+1))`
-/

namespace A144613.P16336122980114189103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (3 * (n + 1)) + A023889 (3 * (n + 1))

end

end A144613.P16336122980114189103

namespace A144613

/-- `A178637(3*(n+1))+A023889(3*(n+1))` -/
def P16336122980114189103.Spec : Prop :=
  ∀ n, P16336122980114189103.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P4368950446799410315

`A008591(n+1)-A033885(A008486(n+1))`
-/

namespace A144613.P4368950446799410315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) - A033885 (A008486 (n + 1)).toNat

end

end A144613.P4368950446799410315

namespace A144613

/-- `A008591(n+1)-A033885(A008486(n+1))` -/
def P4368950446799410315.Spec : Prop :=
  ∀ n, P4368950446799410315.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P724542013087909635

`A008591(n+1)-A033885(A008585(n+1))`
-/

namespace A144613.P724542013087909635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) - A033885 (A008585 (n + 1)).toNat

end

end A144613.P724542013087909635

namespace A144613

/-- `A008591(n+1)-A033885(A008585(n+1))` -/
def P724542013087909635.Spec : Prop :=
  ∀ n, P724542013087909635.a n = A144613 (n + 1)

end A144613

/-! ## A144613.P17696231252267474108

`A326065(6*(n+1))`
-/

namespace A144613.P17696231252267474108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (6 * (n + 1))

end

end A144613.P17696231252267474108

namespace A144613

/-- `A326065(6*(n+1))` -/
def P17696231252267474108.Spec : Prop :=
  ∀ n, P17696231252267474108.a n = A144613 (n + 1)

end A144613

/-!
# A144614: Sum of divisors of 3*n + 1.

The programs for A144614, the canonical program `A144614.P17938140406171166888` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144614 has offset 0).

The definition of A144614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144614.P17938140406171166888

`A000203(3*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144614

/-- `A000203(3*n+1)` -/
def P17938140406171166888.Spec : Prop :=
  ∀ n, P17938140406171166888.a n = A144614 n

theorem P17938140406171166888.correct : P17938140406171166888.Spec := by
  intro n
  simp only [A144614]

end A144614

/-! ## A144614.P8328318631699511028

`∑{d}[3*n+1, #]`
-/

namespace A144614.P8328318631699511028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A144614.P8328318631699511028

namespace A144614

/-- `∑{d}[3*n+1, #]` -/
def P8328318631699511028.Spec : Prop :=
  ∀ n, (P8328318631699511028.a n : ℤ) = A144614 n

end A144614

/-! ## A144614.P15868018961329845681

`root(∑{d}[Δ[n²]+n, #], 2)²`
-/

namespace A144614.P15868018961329845681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A144614.P15868018961329845681

namespace A144614

/-- `root(∑{d}[Δ[n²]+n, #], 2)²` -/
def P15868018961329845681.Spec : Prop :=
  ∀ n, P15868018961329845681.a n = (A144614 n : ℝ)

end A144614

/-! ## A144614.P6054949541276724532

`round(1/acot(∑{d}[Δ[n²]+n, #]))`
-/

namespace A144614.P6054949541276724532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ))

end

end A144614.P6054949541276724532

namespace A144614

/-- `round(1/acot(∑{d}[Δ[n²]+n, #]))` -/
def P6054949541276724532.Spec : Prop :=
  ∀ n, P6054949541276724532.a n = A144614 n

end A144614

/-! ## A144614.P7320990088786490063

`A000203(Δ[C(3*n, 2)])/4`
-/

namespace A144614.P7320990088786490063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4

end

end A144614.P7320990088786490063

namespace A144614

/-- `A000203(Δ[C(3*n, 2)])/4` -/
def P7320990088786490063.Spec : Prop :=
  ∀ n, P7320990088786490063.a n = (A144614 n : ℚ)

end A144614

/-! ## A144614.P15662907082679795911

`root(A000203(Δ[n²]+n), 2)²`
-/

namespace A144614.P15662907082679795911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A144614.P15662907082679795911

namespace A144614

/-- `root(A000203(Δ[n²]+n), 2)²` -/
def P15662907082679795911.Spec : Prop :=
  ∀ n, P15662907082679795911.a n = (A144614 n : ℝ)

end A144614

/-! ## A144614.P335640653438471118

`A000203(A017197(n))/4`
-/

namespace A144614.P335640653438471118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A017197 n).toNat : ℚ) / 4

end

end A144614.P335640653438471118

namespace A144614

/-- `A000203(A017197(n))/4` -/
def P335640653438471118.Spec : Prop :=
  ∀ n, P335640653438471118.a n = (A144614 n : ℚ)

end A144614

/-! ## A144614.P14515592334179447827

`A363891(n+1)+A363889(n+1)`
-/

namespace A144614.P14515592334179447827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363891 (n + 1) + A363889 (n + 1)

end

end A144614.P14515592334179447827

namespace A144614

/-- `A363891(n+1)+A363889(n+1)` -/
def P14515592334179447827.Spec : Prop :=
  ∀ n, P14515592334179447827.a n = A144614 n

end A144614

/-! ## A144614.P5638163961536872482

`A046913(3*n+1)`
-/

namespace A144614.P5638163961536872482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (3 * n + 1)

end

end A144614.P5638163961536872482

namespace A144614

/-- `A046913(3*n+1)` -/
def P5638163961536872482.Spec : Prop :=
  ∀ n, P5638163961536872482.a n = A144614 n

end A144614

/-! ## A144614.P1486884675724392811

`A078708(3*n+1)`
-/

namespace A144614.P1486884675724392811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (3 * n + 1)

end

end A144614.P1486884675724392811

namespace A144614

/-- `A078708(3*n+1)` -/
def P1486884675724392811.Spec : Prop :=
  ∀ n, P1486884675724392811.a n = A144614 n

end A144614

/-! ## A144614.P13839941668476508166

`A106401(3*n+1)`
-/

namespace A144614.P13839941668476508166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106401 (3 * n + 1)

end

end A144614.P13839941668476508166

namespace A144614

/-- `A106401(3*n+1)` -/
def P13839941668476508166.Spec : Prop :=
  ∀ n, P13839941668476508166.a n = A144614 n

end A144614

/-! ## A144614.P13755448406493691037

`A116607(3*n+1)`
-/

namespace A144614.P13755448406493691037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116607 (3 * n + 1)

end

end A144614.P13755448406493691037

namespace A144614

/-- `A116607(3*n+1)` -/
def P13755448406493691037.Spec : Prop :=
  ∀ n, P13755448406493691037.a n = A144614 n

end A144614

/-! ## A144614.P266227802750838046

`A284326(3*n+1)`
-/

namespace A144614.P266227802750838046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284326 (3 * n + 1)

end

end A144614.P266227802750838046

namespace A144614

/-- `A284326(3*n+1)` -/
def P266227802750838046.Spec : Prop :=
  ∀ n, P266227802750838046.a n = A144614 n

end A144614

/-! ## A144614.P4959569246357822752

`A245092(6*n+1)`
-/

namespace A144614.P4959569246357822752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (6 * n + 1)

end

end A144614.P4959569246357822752

namespace A144614

/-- `A245092(6*n+1)` -/
def P4959569246357822752.Spec : Prop :=
  ∀ n, P4959569246357822752.a n = A144614 n

end A144614

/-! ## A144614.P31273303018660582

`A229615(A016933(n))`
-/

namespace A144614.P31273303018660582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (A016933 n).toNat

end

end A144614.P31273303018660582

namespace A144614

/-- `A229615(A016933(n))` -/
def P31273303018660582.Spec : Prop :=
  ∀ n, P31273303018660582.a n = A144614 n

end A144614

/-! ## A144614.P10167656700452225332

`A262610(A271114(n))`
-/

namespace A144614.P10167656700452225332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (A271114 n).toNat

end

end A144614.P10167656700452225332

namespace A144614

/-- `A262610(A271114(n))` -/
def P10167656700452225332.Spec : Prop :=
  ∀ n, P10167656700452225332.a n = A144614 n

end A144614

/-! ## A144614.P15763287402370278440

`A229615(2*A016777(n))`
-/

namespace A144614.P15763287402370278440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (2 * A016777 n).toNat

end

end A144614.P15763287402370278440

namespace A144614

/-- `A229615(2*A016777(n))` -/
def P15763287402370278440.Spec : Prop :=
  ∀ n, P15763287402370278440.a n = A144614 n

end A144614

/-! ## A144614.P14151849633817986741

`A000720(A067161(2*n+1+n))`
-/

namespace A144614.P14151849633817986741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067161 (2 * n + 1 + n)).toNat

end

end A144614.P14151849633817986741

namespace A144614

/-- `A000720(A067161(2*n+1+n))` -/
def P14151849633817986741.Spec : Prop :=
  ∀ n, P14151849633817986741.a n = A144614 n

end A144614

/-! ## A144614.P12472426120139648831

`A354103(A267099(2*n+1+n))`
-/

namespace A144614.P12472426120139648831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354103 (A267099 (2 * n + 1 + n)).toNat

end

end A144614.P12472426120139648831

namespace A144614

/-- `A354103(A267099(2*n+1+n))` -/
def P12472426120139648831.Spec : Prop :=
  ∀ n, P12472426120139648831.a n = A144614 n

end A144614

/-! ## A144614.P14452720941492145747

`A290478(A006218(2*n+1+n))`
-/

namespace A144614.P14452720941492145747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290478 (A006218 (2 * n + 1 + n)).toNat

end

end A144614.P14452720941492145747

namespace A144614

/-- `A290478(A006218(2*n+1+n))` -/
def P14452720941492145747.Spec : Prop :=
  ∀ n, P14452720941492145747.a n = A144614 n

end A144614

/-!
# A144615: a(n) = A000203(3n+2).

The programs for A144615, the canonical program `A144615.P1433595682718935894` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144615 has offset 0).

The definition of A144615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*n+2)` (program `A144615.P1433595682718935894`, by `A144615.P1433595682718935894.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144615.P13922988648325732866

`3*A033686(n)`
-/

namespace A144615.P13922988648325732866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033686 n

end

end A144615.P13922988648325732866

namespace A144615

/-- `3*A033686(n)` -/
def P13922988648325732866.Spec : Prop :=
  ∀ n, P13922988648325732866.a n = A144615 n

end A144615

/-! ## A144615.P1433595682718935894

`A000203(3*n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144615

/-- `A000203(3*n+2)` -/
def P1433595682718935894.Spec : Prop :=
  ∀ n, P1433595682718935894.a n = A144615 n

theorem P1433595682718935894.correct : P1433595682718935894.Spec := by
  intro n
  simp only [A144615]

end A144615

/-! ## A144615.P16530678902453764900

`∑{d}[3*n+2, #]`
-/

namespace A144615.P16530678902453764900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A144615.P16530678902453764900

namespace A144615

/-- `∑{d}[3*n+2, #]` -/
def P16530678902453764900.Spec : Prop :=
  ∀ n, (P16530678902453764900.a n : ℤ) = A144615 n

end A144615

/-! ## A144615.P13404264329323217104

`abs(3*A134079(n))`
-/

namespace A144615.P13404264329323217104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A134079 n|

end

end A144615.P13404264329323217104

namespace A144615

/-- `abs(3*A134079(n))` -/
def P13404264329323217104.Spec : Prop :=
  ∀ n, P13404264329323217104.a n = A144615 n

end A144615

/-! ## A144615.P4973371919428738068

`lcm(3, A000203(4*n-(n-2)))`
-/

namespace A144615.P4973371919428738068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A000203 ((4 * n : ℤ) - ((n : ℤ) - 2)).toNat)

end

end A144615.P4973371919428738068

namespace A144615

/-- `lcm(3, A000203(4*n-(n-2)))` -/
def P4973371919428738068.Spec : Prop :=
  ∀ n, (P4973371919428738068.a n : ℤ) = A144615 n

end A144615

/-! ## A144615.P1299987072264301504

`A000027(∑{d}[a(n-1)+3, #])` with `a(0)=2`
-/

namespace A144615.P1299987072264301504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A144615.P1299987072264301504

namespace A144615

/-- `A000027(∑{d}[a(n-1)+3, #])` -/
def P1299987072264301504.Spec : Prop :=
  ∀ n, P1299987072264301504.a n = A144615 n

end A144615

/-! ## A144615.P18048574258794207079

`A000203(A017233(n))/4`
-/

namespace A144615.P18048574258794207079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A017233 n).toNat : ℚ) / 4

end

end A144615.P18048574258794207079

namespace A144615

/-- `A000203(A017233(n))/4` -/
def P18048574258794207079.Spec : Prop :=
  ∀ n, P18048574258794207079.a n = (A144615 n : ℚ)

end A144615

/-! ## A144615.P11499848191299380888

`A134079(n)*A174971(n)`
-/

namespace A144615.P11499848191299380888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134079 n * A174971 n

end

end A144615.P11499848191299380888

namespace A144615

/-- `A134079(n)*A174971(n)` -/
def P11499848191299380888.Spec : Prop :=
  ∀ n, P11499848191299380888.a n = A144615 n

end A144615

/-! ## A144615.P537149990059339771

`A363890(n+1)+A363514(n+1)`
-/

namespace A144615.P537149990059339771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363890 (n + 1) + A363514 (n + 1)

end

end A144615.P537149990059339771

namespace A144615

/-- `A363890(n+1)+A363514(n+1)` -/
def P537149990059339771.Spec : Prop :=
  ∀ n, P537149990059339771.a n = A144615 n

end A144615

/-! ## A144615.P9337956178618573610

`A000203(A122709(n+1))/4`
-/

namespace A144615.P9337956178618573610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A122709 (n + 1)).toNat : ℚ) / 4

end

end A144615.P9337956178618573610

namespace A144615

/-- `A000203(A122709(n+1))/4` -/
def P9337956178618573610.Spec : Prop :=
  ∀ n, P9337956178618573610.a n = (A144615 n : ℚ)

end A144615

/-! ## A144615.P18293287573968153588

`A155085(3*n+2)-(3*n+2)`
-/

namespace A144615.P18293287573968153588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (3 * n + 2) - (3 * n + 2 : ℤ)

end

end A144615.P18293287573968153588

namespace A144615

/-- `A155085(3*n+2)-(3*n+2)` -/
def P18293287573968153588.Spec : Prop :=
  ∀ n, P18293287573968153588.a n = A144615 n

end A144615

/-! ## A144615.P1385970325388452974

`A060866(3*n+2)`
-/

namespace A144615.P1385970325388452974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (3 * n + 2)

end

end A144615.P1385970325388452974

namespace A144615

/-- `A060866(3*n+2)` -/
def P1385970325388452974.Spec : Prop :=
  ∀ n, P1385970325388452974.a n = A144615 n

end A144615

/-! ## A144615.P9080826153221803091

`A008486(A033686(n))`
-/

namespace A144615.P9080826153221803091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A033686 n).toNat

end

end A144615.P9080826153221803091

namespace A144615

/-- `A008486(A033686(n))` -/
def P9080826153221803091.Spec : Prop :=
  ∀ n, P9080826153221803091.a n = A144615 n

end A144615

/-! ## A144615.P9559444765456246966

`A046913(3*n+2)`
-/

namespace A144615.P9559444765456246966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (3 * n + 2)

end

end A144615.P9559444765456246966

namespace A144615

/-- `A046913(3*n+2)` -/
def P9559444765456246966.Spec : Prop :=
  ∀ n, P9559444765456246966.a n = A144615 n

end A144615

/-! ## A144615.P15769107009209713082

`A078708(3*n+2)`
-/

namespace A144615.P15769107009209713082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (3 * n + 2)

end

end A144615.P15769107009209713082

namespace A144615

/-- `A078708(3*n+2)` -/
def P15769107009209713082.Spec : Prop :=
  ∀ n, P15769107009209713082.a n = A144615 n

end A144615

/-! ## A144615.P13648876409878932056

`A116607(3*n+2)`
-/

namespace A144615.P13648876409878932056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116607 (3 * n + 2)

end

end A144615.P13648876409878932056

namespace A144615

/-- `A116607(3*n+2)` -/
def P13648876409878932056.Spec : Prop :=
  ∀ n, P13648876409878932056.a n = A144615 n

end A144615

/-! ## A144615.P7729452270996172758

`A284326(3*n+2)`
-/

namespace A144615.P7729452270996172758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284326 (3 * n + 2)

end

end A144615.P7729452270996172758

namespace A144615

/-- `A284326(3*n+2)` -/
def P7729452270996172758.Spec : Prop :=
  ∀ n, P7729452270996172758.a n = A144615 n

end A144615

/-! ## A144615.P4421785456282382548

`A337177(3*n+2)`
-/

namespace A144615.P4421785456282382548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337177 (3 * n + 2)

end

end A144615.P4421785456282382548

namespace A144615

/-- `A337177(3*n+2)` -/
def P4421785456282382548.Spec : Prop :=
  ∀ n, P4421785456282382548.a n = A144615 n

end A144615

/-! ## A144615.P12652325220527909192

`A245092(6*n+3)`
-/

namespace A144615.P12652325220527909192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (6 * n + 3)

end

end A144615.P12652325220527909192

namespace A144615

/-- `A245092(6*n+3)` -/
def P12652325220527909192.Spec : Prop :=
  ∀ n, P12652325220527909192.a n = A144615 n

end A144615

/-! ## A144615.P10114149533416766955

`A039653(A016777(n)+1)+1`
-/

namespace A144615.P10114149533416766955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A016777 n + 1).toNat + 1

end

end A144615.P10114149533416766955

namespace A144615

/-- `A039653(A016777(n)+1)+1` -/
def P10114149533416766955.Spec : Prop :=
  ∀ n, P10114149533416766955.a n = A144615 n

end A144615

/-!
# A144618: Denominators of an asymptotic series for the factorial function (Stirling's formula with half-shift).

The programs for A144618, there is no canonical definition to state claims against.
-/

/-! ## A144618.P7076699085322452917

`2*a(n-1)*A154268(n-1)` with `a(0)=1`
-/

namespace A144618.P7076699085322452917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) * A154268 (n - 1))

end

end A144618.P7076699085322452917

/-! ## A144618.P7726632762595475265

`record[A001316(n)]*A001164(n)`
-/

namespace A144618.P7726632762595475265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001164 n

end

end A144618.P7726632762595475265

/-! ## A144618.P4130376657067065926

`A006882(2*n)*A097303(n)`
-/

namespace A144618.P4130376657067065926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n) * A097303 n

end

end A144618.P4130376657067065926

/-! ## A144618.P3630386498897110053

`∏[A154268(2*n+1)]/A154268(2*n+1)`
-/

namespace A144618.P3630386498897110053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154268 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A154268 (2 * n + 1) : ℚ)

end

end A144618.P3630386498897110053

/-! ## A144618.P13394378263712991795

`record[A135517(n)]*A001164(n)`
-/

namespace A144618.P13394378263712991795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001164 n

end

end A144618.P13394378263712991795

/-!
# A144619: a(n) = 19*n + 8.

The programs for A144619, the canonical program `A144619.P2448196201524924374` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144619 has offset 0).

The definition of A144619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*n+8` (program `A144619.P2448196201524924374`, by `A144619.P2448196201524924374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144619.P2448196201524924374

`19*n+8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144619

/-- `19*n+8` -/
def P2448196201524924374.Spec : Prop :=
  ∀ n, (P2448196201524924374.a n : ℤ) = A144619 n

theorem P2448196201524924374.correct : P2448196201524924374.Spec := by
  intro n
  simp only [A144619]

end A144619

/-!
# A144620: Numbers k such that k and 19*k + 8 are both prime.

The programs for A144620, there is no canonical definition to state claims against.
-/

/-! ## A144620.P14982216340236112340

`eq[A001221(A144619(n)), A003415(n)]`
-/

namespace A144620.P14982216340236112340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144620.P14982216340236112340

/-! ## A144620.P18367210912668576435

`eq[A001222(A144619(n)), A175126(n)]`
-/

namespace A144620.P18367210912668576435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A144619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144620.P18367210912668576435

/-! ## A144620.P9456734384976508698

`eq[A001222(A144619(n)), A210442(n)]`
-/

namespace A144620.P9456734384976508698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A144619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144620.P9456734384976508698

/-! ## A144620.P10266833787244528772

`eq[A032741(n), A160595(A144619(n))]`
-/

namespace A144620.P10266833787244528772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A144619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144620.P10266833787244528772

/-! ## A144620.P3315581919344677793

`p?[A016969(n)%A014963(A304609(n+1)+9)]`
-/

namespace A144620.P3315581919344677793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A014963 (A304609 (n + 1) + 9).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144620.P3315581919344677793

/-!
# A144621: a(0) = a(1) = 1 and a(n+2) = a(n+1) * (3*a(n+1) - 2*a(n)^2), n>=0.

The programs for A144621, there is no canonical definition to state claims against.
-/

/-! ## A144621.P1559074279723583236

`abs(A334910(A011782(n)))`
-/

namespace A144621.P1559074279723583236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A334910 (A011782 n).toNat|

end

end A144621.P1559074279723583236

/-! ## A144621.P4417169124949232053

`abs(A334910(A131577(n)))`
-/

namespace A144621.P4417169124949232053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A334910 (A131577 n).toNat|

end

end A144621.P4417169124949232053

/-! ## A144621.P3605445094501917756

`abs(A334910(record[A048679(n)]))`
-/

namespace A144621.P3605445094501917756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A334910 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A144621.P3605445094501917756

/-! ## A144621.P14562147186037290889

`gcd(A225518(n), A334910(A011782(n)))`
-/

namespace A144621.P14562147186037290889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225518 n) (A334910 (A011782 n).toNat)

end

end A144621.P14562147186037290889

/-! ## A144621.P14030724746476798996

`lcm(A334910(A011782(n)), A334910(n))`
-/

namespace A144621.P14030724746476798996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A334910 (A011782 n).toNat) (A334910 n)

end

end A144621.P14030724746476798996

/-!
# A144623: a(n) = A078822(n) - 1.

The programs for A144623, there is no canonical definition to state claims against.
-/

/-! ## A144623.P4552549446561628131

`A078822(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144623.P4552549446561628131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 n - 1

end

end A144623.P4552549446561628131

/-! ## A144623.P7812257574877240941

`A023443(A078822(n))`
-/

namespace A144623.P7812257574877240941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078822 n).toNat

end

end A144623.P7812257574877240941

/-! ## A144623.P6806038170255168513

`A065423(2*A078822(n))`
-/

namespace A144623.P6806038170255168513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A078822 n).toNat

end

end A144623.P6806038170255168513

/-! ## A144623.P12604149844529218787

`A004197(2*A078822(n)²)`
-/

namespace A144623.P12604149844529218787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * A078822 n ^ 2).toNat

end

end A144623.P12604149844529218787

/-! ## A144623.P12274956878097816183

`A164117(A136019(n+1))+A078822(n)`
-/

namespace A144623.P12274956878097816183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (A136019 (n + 1)).toNat + A078822 n

end

end A144623.P12274956878097816183

/-! ## A144623.P2331910887560560004

`A004197(2*A078822(n)*A078822(n))`
-/

namespace A144623.P2331910887560560004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * A078822 n * A078822 n).toNat

end

end A144623.P2331910887560560004

/-! ## A144623.P11936918640619443287

`A130472(A078822(C(n, n+1)))+A078822(n)`
-/

namespace A144623.P11936918640619443287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A078822 (Nat.choose n (n + 1))).toNat + A078822 n

end

end A144623.P11936918640619443287

/-! ## A144623.P2297582557809484990

`A153881(n+2)+A078822(n)`
-/

namespace A144623.P2297582557809484990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A078822 n

end

end A144623.P2297582557809484990

/-! ## A144623.P9210931057562207817

`A094650(A138342(2*n+1))+A078822(n)`
-/

namespace A144623.P9210931057562207817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094650 (A138342 (2 * n + 1)).toNat + A078822 n

end

end A144623.P9210931057562207817

/-! ## A144623.P5764187125590212742

`(A078822(n)+n)%A057163(A057163(n+1))`
-/

namespace A144623.P5764187125590212742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078822 n + (n : ℤ)) (A057163 (A057163 (n + 1)).toNat)

end

end A144623.P5764187125590212742

/-! ## A144623.P13708355464853308470

`A164117(2*n+1)+A078822(n)`
-/

namespace A144623.P13708355464853308470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1) + A078822 n

end

end A144623.P13708355464853308470

/-! ## A144623.P2296018749769495686

`A209615(A045326(n+1))+A078822(n)`
-/

namespace A144623.P2296018749769495686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A045326 (n + 1)).toNat + A078822 n

end

end A144623.P2296018749769495686

/-! ## A144623.P8802249891344269050

`A083800(n+1)%A078822(n)`
-/

namespace A144623.P8802249891344269050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A078822 n)

end

end A144623.P8802249891344269050

/-! ## A144623.P8882126668572931831

`A070198(n)%A078822(n)`
-/

namespace A144623.P8882126668572931831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A078822 n)

end

end A144623.P8882126668572931831

/-! ## A144623.P11966029879004169642

`A079782(n+1)%A078822(n)`
-/

namespace A144623.P11966029879004169642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A078822 n)

end

end A144623.P11966029879004169642

/-! ## A144623.P16175856716824574627

`A083685(n+1)%A078822(n)`
-/

namespace A144623.P16175856716824574627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A078822 n)

end

end A144623.P16175856716824574627

/-! ## A144623.P13704883478091453819

`A121934(n+1)%A078822(n)`
-/

namespace A144623.P13704883478091453819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A078822 n)

end

end A144623.P13704883478091453819

/-! ## A144623.P14249732399050891808

`A001222(A000079(A078822(n))/2)`
-/

namespace A144623.P14249732399050891808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000079 (A078822 n).toNat : ℚ) / 2)).toNat

end

end A144623.P14249732399050891808

/-! ## A144623.P14346763752411612266

`A030494(n+1)%A078822(n)`
-/

namespace A144623.P14346763752411612266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A078822 n)

end

end A144623.P14346763752411612266

/-! ## A144623.P15419819421972774707

`A072828(n+1)%A078822(n)`
-/

namespace A144623.P15419819421972774707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A078822 n)

end

end A144623.P15419819421972774707

/-!
# A144624: a(n) = A078823(n) - n.

The programs for A144624, there is no canonical definition to state claims against.
-/

/-! ## A144624.P16997996475282702755

`A078823(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144624.P16997996475282702755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078823 n - (n : ℤ)

end

end A144624.P16997996475282702755

/-! ## A144624.P11696130994236488811

`abs(A078823(n)+A001489(n))`
-/

namespace A144624.P11696130994236488811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078823 n + A001489 n|

end

end A144624.P11696130994236488811

/-! ## A144624.P13649559216818712287

`A174007(2*(n+1))+A078823(n)`
-/

namespace A144624.P13649559216818712287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174007 (2 * (n + 1)) + A078823 n

end

end A144624.P13649559216818712287

/-! ## A144624.P7008490610528123244

`(A078823(n)+A000325(n))%A000079(n)`
-/

namespace A144624.P7008490610528123244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078823 n + A000325 n) (A000079 n)

end

end A144624.P7008490610528123244

/-! ## A144624.P17559421299853909725

`and(A078823(n)+A000325(n), A000225(n))`
-/

namespace A144624.P17559421299853909725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078823 n + A000325 n) (A000225 n)

end

end A144624.P17559421299853909725

/-! ## A144624.P18410971323235560839

`xor(A078823(n)+A000325(n), A011782(n+1))`
-/

namespace A144624.P18410971323235560839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A078823 n + A000325 n) (A011782 (n + 1))

end

end A144624.P18410971323235560839

/-! ## A144624.P9497189175208387609

`and(A078823(n)+A000325(n), A024062(n))`
-/

namespace A144624.P9497189175208387609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078823 n + A000325 n) (A024062 n)

end

end A144624.P9497189175208387609

/-!
# A144625: List of triples (i,j,k) (i>=0, j>=0, k>=0) in canonical order used to convert an infinite tetrahedron of numbers to a linear sequence.

The programs for A144625, there is no canonical definition to state claims against.
-/

/-! ## A144625.P9209020842251749450

`A057556(A113655(n+1))`
-/

namespace A144625.P9209020842251749450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (A113655 (n + 1)).toNat

end

end A144625.P9209020842251749450

/-! ## A144625.P15999580541397714743

`A057556(A330396(n)+1)`
-/

namespace A144625.P15999580541397714743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (A330396 n + 1).toNat

end

end A144625.P15999580541397714743

/-! ## A144625.P10063061809497756929

`A057557(A113655(Δ[n²]-n))-1`
-/

namespace A144625.P10063061809497756929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057557 (A113655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A144625.P10063061809497756929

/-! ## A144625.P17179645895552691713

`(A057557(A113655(n+1))-1)*A057427(n)`
-/

namespace A144625.P17179645895552691713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057557 (A113655 (n + 1)).toNat - 1) * A057427 n

end

end A144625.P17179645895552691713

/-! ## A144625.P4542091894394543672

`and(A215086(n), A293806(A209900(3*n+5)))`
-/

namespace A144625.P4542091894394543672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A215086 n) (A293806 (A209900 (3 * n + 5)).toNat)

end

end A144625.P4542091894394543672

/-!
# A144627: Initial members of triples listed in A144625.

The programs for A144627, there is no canonical definition to state claims against.
-/

/-! ## A144627.P10249641152607220017

`A057556(3*(n+1))`
-/

namespace A144627.P10249641152607220017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (3 * (n + 1))

end

end A144627.P10249641152607220017

/-! ## A144627.P2760424936334570431

`val(eq[3, A008687(n)], 2)`
-/

namespace A144627.P2760424936334570431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A144627.P2760424936334570431

/-! ## A144627.P14257519172354939628

`A057557(3*(n+1))-1`
-/

namespace A144627.P14257519172354939628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057557 (3 * (n + 1)) - 1

end

end A144627.P14257519172354939628

/-! ## A144627.P5269802986290496506

`val(A044967(n+1)+1, 3)`
-/

namespace A144627.P5269802986290496506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A044967 (n + 1) + 1).toNat 3

end

end A144627.P5269802986290496506

/-! ## A144627.P12293195792723506731

`val(A044975(n+1)+1, 3)`
-/

namespace A144627.P12293195792723506731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A044975 (n + 1) + 1).toNat 3

end

end A144627.P12293195792723506731

/-! ## A144627.P7495150944178493628

`val(eq[2, A023416(n)]+1, 2)`
-/

namespace A144627.P7495150944178493628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A144627.P7495150944178493628

/-! ## A144627.P4274422896812083689

`A056973(A043570(n+1))`
-/

namespace A144627.P4274422896812083689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A043570 (n + 1)).toNat

end

end A144627.P4274422896812083689

/-! ## A144627.P9861373829931765815

`A056973(A043687(n+1))`
-/

namespace A144627.P9861373829931765815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A043687 (n + 1)).toNat

end

end A144627.P9861373829931765815

/-!
# A144628: Central members of triples listed in A144625.

The programs for A144628, there is no canonical definition to state claims against.
-/

/-! ## A144628.P14001848337267972650

`val(eq[a(n-1-and(n, 2*n))+1, n%2]+1, 2)` with `a(0)=-2`
-/

namespace A144628.P14001848337267972650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1) 2

end

end A144628.P14001848337267972650

/-! ## A144628.P10450234679682754253

`A057556(3*n+2)`
-/

namespace A144628.P10450234679682754253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (3 * n + 2)

end

end A144628.P10450234679682754253

/-! ## A144628.P11510619119945329139

`val(A238246(n+1), 2)`
-/

namespace A144628.P11510619119945329139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238246 (n + 1)).toNat 2

end

end A144628.P11510619119945329139

/-! ## A144628.P4930839623027953716

`A057557(3*n+2)-1`
-/

namespace A144628.P4930839623027953716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057557 (3 * n + 2) - 1

end

end A144628.P4930839623027953716

/-! ## A144628.P16109073666467409663

`val(A043687(n+1)+1, 2)`
-/

namespace A144628.P16109073666467409663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043687 (n + 1) + 1).toNat 2

end

end A144628.P16109073666467409663

/-! ## A144628.P10041350533521196333

`val(A087118(n+2)+1, 2)`
-/

namespace A144628.P10041350533521196333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A087118 (n + 2) + 1).toNat 2

end

end A144628.P10041350533521196333

/-! ## A144628.P7839124778836077103

`val(round(A043570(n+1)/2), 2)`
-/

namespace A144628.P7839124778836077103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A043570 (n + 1) : ℚ) / 2)).toNat 2

end

end A144628.P7839124778836077103

/-! ## A144628.P4718802303598689285

`A049502(A043687(n+1))`
-/

namespace A144628.P4718802303598689285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A043687 (n + 1)).toNat

end

end A144628.P4718802303598689285

/-! ## A144628.P3333483955692581413

`A050605(A043570(n+1))`
-/

namespace A144628.P3333483955692581413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A043570 (n + 1)).toNat

end

end A144628.P3333483955692581413

/-!
# A144629: Last members of triples listed in A144625.

The programs for A144629, there is no canonical definition to state claims against.
-/

/-! ## A144629.P11676130437030740062

`A357734(∑[n+1])`
-/

namespace A144629.P11676130437030740062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144629.P11676130437030740062

/-! ## A144629.P6363417040237401325

`A110730(n+1)-1`
-/

namespace A144629.P6363417040237401325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (n + 1) - 1

end

end A144629.P6363417040237401325

/-! ## A144629.P2029655825374561436

`A057556(3*n+1)`
-/

namespace A144629.P2029655825374561436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (3 * n + 1)

end

end A144629.P2029655825374561436

/-! ## A144629.P1284596219219955748

`dr(A057556(Δ[n²]+n))`
-/

namespace A144629.P1284596219219955748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat)

end

end A144629.P1284596219219955748

/-! ## A144629.P6530853836090739510

`A057557(3*n+1)-1`
-/

namespace A144629.P6530853836090739510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057557 (3 * n + 1) - 1

end

end A144629.P6530853836090739510

/-! ## A144629.P278822806866808538

`∑{e}[A248164(n+1), #]-1`
-/

namespace A144629.P278822806866808538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A144629.P278822806866808538

/-! ## A144629.P13560301632372400016

`A153036(A043570(n+1))`
-/

namespace A144629.P13560301632372400016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A043570 (n + 1)).toNat

end

end A144629.P13560301632372400016

/-! ## A144629.P16718675842647746835

`A153036(A043687(n+1))`
-/

namespace A144629.P16718675842647746835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A043687 (n + 1)).toNat

end

end A144629.P16718675842647746835

/-!
# A144631: Second diagonal (or column) of A144630.

The programs for A144631, there is no canonical definition to state claims against.
-/

/-! ## A144631.P11326047876532479008

`A144630(∑[n+1]+2)`
-/

namespace A144631.P11326047876532479008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144630 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144631.P11326047876532479008

/-! ## A144631.P762563263629980422

`record[A144630(n+3)/A144634(n+1)]`
-/

namespace A144631.P762563263629980422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144630 (n + 3) : ℚ) / (A144634 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144631.P762563263629980422

/-!
# A144633: Triangle of 3-restricted Stirling numbers of the first kind (T(n,k), 0 <= k <= n), read by rows.

The programs for A144633, there is no canonical definition to state claims against.
-/

/-! ## A144633.P3122959676841792202

`A341620(∑[2^n])+A048994(n)`
-/

namespace A144633.P3122959676841792202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (∑ j ∈ Finset.range (n + 1), f1 j) + A048994 n

end

end A144633.P3122959676841792202

/-! ## A144633.P9242359632625642009

`or(A048994(n), A291529(floor(2^(n-1))))`
-/

namespace A144633.P9242359632625642009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048994 n) (A291529 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A144633.P9242359632625642009

/-! ## A144633.P797021241755623778

`or(A048994(n), A129363(∑{e}[17-(64*n)², #]))`
-/

namespace A144633.P797021241755623778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - ((64 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048994 n) (A129363 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A144633.P797021241755623778

/-! ## A144633.P8441719984356176770

`A048994(n)+A010057(A022367(n))`
-/

namespace A144633.P8441719984356176770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n + A010057 (A022367 n).toNat

end

end A144633.P8441719984356176770

/-! ## A144633.P3493960021768663997

`A056626(A023105(n))+A048994(n)`
-/

namespace A144633.P3493960021768663997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (A023105 n).toNat + A048994 n

end

end A144633.P3493960021768663997

/-!
# A144634: Triangle of 3-restricted Stirling numbers of the first kind (T(n,k), 1 <= k <= n), read by rows.

The programs for A144634, there is no canonical definition to state claims against.
-/

/-! ## A144634.P3769939045866030575

`A144633(comp[∑[n]])`
-/

namespace A144634.P3769939045866030575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A144634.P3769939045866030575

/-! ## A144634.P13083320417727298128

`or(char[1], A144633(A014132(n+1)))`
-/

namespace A144634.P13083320417727298128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144633 (A014132 (n + 1)).toNat)

end

end A144634.P13083320417727298128

/-! ## A144634.P9730378643949783413

`A144633(A014132(n+1))%A020743(n)`
-/

namespace A144634.P9730378643949783413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144633 (A014132 (n + 1)).toNat) (A020743 n)

end

end A144634.P9730378643949783413

/-! ## A144634.P8415642861758581140

`A007318(∑[n])*A144633(A014132(n+1))`
-/

namespace A144634.P8415642861758581140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A144633 (A014132 (n + 1)).toNat

end

end A144634.P8415642861758581140

/-!
# A144635: a(n) = 5^n*Sum_{ k=0..n } binomial(2*k,k)/5^k.

The programs for A144635, the canonical program `A144635.P15969292622186424102` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144635 has offset 0).

The definition of A144635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144635.P1081954174637121677

`A189053(2*n)`
-/

namespace A144635.P1081954174637121677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189053 (2 * n)

end

end A144635.P1081954174637121677

namespace A144635

/-- `A189053(2*n)` -/
def P1081954174637121677.Spec : Prop :=
  ∀ n, P1081954174637121677.a n = A144635 n

end A144635

/-! ## A144635.P15883319372701016695

`A100095(2*(n+1))`
-/

namespace A144635.P15883319372701016695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100095 (2 * (n + 1))

end

end A144635.P15883319372701016695

namespace A144635

/-- `A100095(2*(n+1))` -/
def P15883319372701016695.Spec : Prop :=
  ∀ n, P15883319372701016695.a n = A144635 n

end A144635

/-! ## A144635.P2213927243140953096

`record[or((-1)^n, A100095(n))]`
-/

namespace A144635.P2213927243140953096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A100095 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144635.P2213927243140953096

namespace A144635

/-- `record[or((-1)^n, A100095(n))]` -/
def P2213927243140953096.Spec : Prop :=
  ∀ n, P2213927243140953096.a n = A144635 n

end A144635

/-! ## A144635.P15969292622186424102

`A000984(n)+5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144635

/-- `A000984(n)+5*a(n-1)` -/
def P15969292622186424102.Spec : Prop :=
  ∀ n, P15969292622186424102.a n = A144635 n

theorem P15969292622186424102.correct : P15969292622186424102.Spec := by
  intro n
  simp only [A144635]

end A144635

/-! ## A144635.P2311804873908248344

`5*a(n-1)+(n+1)*A000108(n)` with `a(0)=1`
-/

namespace A144635.P2311804873908248344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (n + 1 : ℤ) * A000108 n

end

end A144635.P2311804873908248344

namespace A144635

/-- `5*a(n-1)+(n+1)*A000108(n)` -/
def P2311804873908248344.Spec : Prop :=
  ∀ n, P2311804873908248344.a n = A144635 n

end A144635

/-! ## A144635.P2524449082957756034

`A046748(n+1)-A000984(n+1)`
-/

namespace A144635.P2524449082957756034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046748 (n + 1) - A000984 (n + 1)

end

end A144635.P2524449082957756034

namespace A144635

/-- `A046748(n+1)-A000984(n+1)` -/
def P2524449082957756034.Spec : Prop :=
  ∀ n, P2524449082957756034.a n = A144635 n

end A144635

/-! ## A144635.P2268795940492740817

`A098615(2*(n+1))-A000984(n+1)`
-/

namespace A144635.P2268795940492740817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 (2 * (n + 1)) - A000984 (n + 1)

end

end A144635.P2268795940492740817

namespace A144635

/-- `A098615(2*(n+1))-A000984(n+1)` -/
def P2268795940492740817.Spec : Prop :=
  ∀ n, P2268795940492740817.a n = A144635 n

end A144635

/-! ## A144635.P17374703379434074408

`C(2*n, n)+5*a(n-1)` with `a(0)=1`
-/

namespace A144635.P17374703379434074408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n + 5 * a (n - 1)

end

end A144635.P17374703379434074408

namespace A144635

/-- `C(2*n, n)+5*a(n-1)` -/
def P17374703379434074408.Spec : Prop :=
  ∀ n, (P17374703379434074408.a n : ℤ) = A144635 n

end A144635

/-!
# A144636: Column 1 of triangle in A144633.

The programs for A144636, there is no canonical definition to state claims against.
-/

/-! ## A144636.P3516708931472969745

`A144633(∑[n]+1)`
-/

namespace A144636.P3516708931472969745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144636.P3516708931472969745

/-! ## A144636.P4863760934001875194

`A054977(n)*A144633(A000124(n))`
-/

namespace A144636.P4863760934001875194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A144633 (A000124 n).toNat

end

end A144636.P4863760934001875194

/-! ## A144636.P10116452860818454451

`A057427(n)*A144633(A000124(n))`
-/

namespace A144636.P10116452860818454451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144633 (A000124 n).toNat

end

end A144636.P10116452860818454451

/-! ## A144636.P1653888192602241747

`A144633(A000124(n))/A072345(2*n)`
-/

namespace A144636.P1653888192602241747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144633 (A000124 n).toNat : ℚ) / (A072345 (2 * n) : ℚ)

end

end A144636.P1653888192602241747

/-! ## A144636.P10223194136090421369

`A349127(2*(n+2))+A144633(A000124(n))`
-/

namespace A144636.P10223194136090421369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * (n + 2)) + A144633 (A000124 n).toNat

end

end A144636.P10223194136090421369

/-! ## A144636.P14358242928211207822

`A049076(2*(n+1))*A144633(A000124(n))`
-/

namespace A144636.P14358242928211207822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (2 * (n + 1)) * A144633 (A000124 n).toNat

end

end A144636.P14358242928211207822

/-!
# A144637: Column 2 of triangle in A144633.

The programs for A144637, there is no canonical definition to state claims against.
-/

/-! ## A144637.P11120721968406290204

`A144633(A133263(n))`
-/

namespace A144637.P11120721968406290204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A133263 n).toNat

end

end A144637.P11120721968406290204

/-! ## A144637.P1586191297370304044

`A144633(A238531(n+1))`
-/

namespace A144637.P1586191297370304044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A238531 (n + 1)).toNat

end

end A144637.P1586191297370304044

/-! ## A144637.P3278326585950231844

`A144633(∑[A254667(n)]+1)`
-/

namespace A144637.P3278326585950231844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A144637.P3278326585950231844

/-! ## A144637.P12391356966120997918

`A144633(A054977(n)+A000124(n))`
-/

namespace A144637.P12391356966120997918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A054977 n + A000124 n).toNat

end

end A144637.P12391356966120997918

/-! ## A144637.P14263591469760362894

`A144633(A057427(n)+A000124(n))`
-/

namespace A144637.P14263591469760362894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A057427 n + A000124 n).toNat

end

end A144637.P14263591469760362894

/-! ## A144637.P5002299455623344915

`A144633(∑[A026099(A008578(n+1))])`
-/

namespace A144637.P5002299455623344915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144637.P5002299455623344915

/-! ## A144637.P9895742211310963027

`A144633(2-(A054977(n)-A000124(n)))`
-/

namespace A144637.P9895742211310963027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (2 - (A054977 n - A000124 n)).toNat

end

end A144637.P9895742211310963027

/-! ## A144637.P10133959871016478033

`A144633(2-(A057427(n)-A000124(n)))`
-/

namespace A144637.P10133959871016478033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (2 - (A057427 n - A000124 n)).toNat

end

end A144637.P10133959871016478033

/-!
# A144638: Column 3 of triangle in A144633.

The programs for A144638, there is no canonical definition to state claims against.
-/

/-! ## A144638.P1270248101188073666

`A144633(A133263(round(acot(n)+n))+1)`
-/

namespace A144638.P1270248101188073666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A133263 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1).toNat

end

end A144638.P1270248101188073666

/-! ## A144638.P9816523728944765504

`A144633(A000124(round(acot(n)+n))+2)`
-/

namespace A144638.P9816523728944765504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A000124 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 2).toNat

end

end A144638.P9816523728944765504

/-! ## A144638.P9168046520345243168

`A144633(∑[n+1]+2-A254667(n))`
-/

namespace A144638.P9168046520345243168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A254667 n).toNat

end

end A144638.P9168046520345243168

/-! ## A144638.P1938389423703202707

`A144633(A034856(n+1)-A004275(n))`
-/

namespace A144638.P1938389423703202707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A034856 (n + 1) - A004275 n).toNat

end

end A144638.P1938389423703202707

/-! ## A144638.P15248596445855332573

`A144633(A000096(n)+3-A233583(n+1))`
-/

namespace A144638.P15248596445855332573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A000096 n + 3 - A233583 (n + 1)).toNat

end

end A144638.P15248596445855332573

/-!
# A144639: Column 4 of triangle in A144633.

The programs for A144639, there is no canonical definition to state claims against.
-/

/-! ## A144639.P15069840751111312725

`A144633(∑[A172471(A133263(n))])`
-/

namespace A144639.P15069840751111312725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144639.P15069840751111312725

/-! ## A144639.P6728182068599441363

`A144633(A034856(n+1)-A004274(n))`
-/

namespace A144639.P6728182068599441363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A034856 (n + 1) - A004274 n).toNat

end

end A144639.P6728182068599441363

/-! ## A144639.P5654706850180323033

`A144633(A145018(n+1))%A186070(n+1)`
-/

namespace A144639.P5654706850180323033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144633 (A145018 (n + 1)).toNat) (A186070 (n + 1))

end

end A144639.P5654706850180323033

/-!
# A144640: Row sums from A144562.

The programs for A144640, the canonical program `A144640.P2201591586984025393` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144640 has offset 1).

The definition of A144640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144640.P8453524636769729365

`(n+1)*(2*(n+1)²+5*(n+1)-1)/2`
-/

namespace A144640.P8453524636769729365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 + 5 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A144640.P8453524636769729365

namespace A144640

/-- `(n+1)*(2*(n+1)²+5*(n+1)-1)/2` -/
def P8453524636769729365.Spec : Prop :=
  ∀ n, P8453524636769729365.a n = (A144640 (n + 1) : ℚ)

theorem P8453524636769729365.correct : P8453524636769729365.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A144640, Nat.add_sub_cancel, A144640.P8453524636769729365.a, A144640.P2201591586984025393.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A144640, Nat.add_sub_cancel, A144640.P8453524636769729365.a, A144640.P2201591586984025393.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A144640

/-! ## A144640.P2201591586984025393

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=17, a(2)=48, a(3)=102`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144640

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2201591586984025393.Spec : Prop :=
  ∀ n, P2201591586984025393.a n = A144640 (n + 1)

theorem P2201591586984025393.correct : P2201591586984025393.Spec := by
  intro n
  simp only [A144640, Nat.add_sub_cancel]

end A144640

/-! ## A144640.P5375807570363451921

`ogf((3+5x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A144640.P5375807570363451921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, -2] [1, -4, 6, -4, 1] n

end

end A144640.P5375807570363451921

namespace A144640

/-- `ogf((3+5x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5375807570363451921.Spec : Prop :=
  ∀ n, P5375807570363451921.a n = A144640 (n + 1)

end A144640

/-! ## A144640.P5348944235380927112

`abs(∑[∑[a(n-1)+6]])` with `a(0)=3, a(1)=11`
-/

namespace A144640.P5348944235380927112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144640.P5348944235380927112

namespace A144640

/-- `abs(∑[∑[a(n-1)+6]])` -/
def P5348944235380927112.Spec : Prop :=
  ∀ n, (P5348944235380927112.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P16178668402630160510

`round(∑[∑[a(n-1)+6]])` with `a(0)=3, a(1)=11`

`round` is left out, it is the identity on integers.
-/

namespace A144640.P16178668402630160510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144640.P16178668402630160510

namespace A144640

/-- `round(∑[∑[a(n-1)+6]])` -/
def P16178668402630160510.Spec : Prop :=
  ∀ n, (P16178668402630160510.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P17852211813770518754

`C(n+3, 2)*Δ[n²]-n`
-/

namespace A144640.P17852211813770518754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)

end

end A144640.P17852211813770518754

namespace A144640

/-- `C(n+3, 2)*Δ[n²]-n` -/
def P17852211813770518754.Spec : Prop :=
  ∀ n, P17852211813770518754.a n = A144640 (n + 1)

end A144640

/-! ## A144640.P7717099228463501406

`(2*n+1)*C(n+3, 2)-n`
-/

namespace A144640.P7717099228463501406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (n + 3) 2 : ℤ) - (n : ℤ)

end

end A144640.P7717099228463501406

namespace A144640

/-- `(2*n+1)*C(n+3, 2)-n` -/
def P7717099228463501406.Spec : Prop :=
  ∀ n, P7717099228463501406.a n = A144640 (n + 1)

end A144640

/-! ## A144640.P3409936256864941328

`∑[n-1]+lcm(n+1, (n+2)²)`
-/

namespace A144640.P3409936256864941328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm (n + 1) ((n + 2) ^ 2) : ℤ)

end

end A144640.P3409936256864941328

namespace A144640

/-- `∑[n-1]+lcm(n+1, (n+2)²)` -/
def P3409936256864941328.Spec : Prop :=
  ∀ n, P3409936256864941328.a n = A144640 (n + 1)

end A144640

/-! ## A144640.P17422706689720150264

`∑[n]+(n+3)*C(n+1, n)²`
-/

namespace A144640.P17422706689720150264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * Nat.choose (n + 1) n ^ 2

end

end A144640.P17422706689720150264

namespace A144640

/-- `∑[n]+(n+3)*C(n+1, n)²` -/
def P17422706689720150264.Spec : Prop :=
  ∀ n, (P17422706689720150264.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P16139229903244283515

`∑[a(n-1)+5]+(n+1)^3` with `a(0)=2`
-/

namespace A144640.P16139229903244283515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A144640.P16139229903244283515

namespace A144640

/-- `∑[a(n-1)+5]+(n+1)^3` -/
def P16139229903244283515.Spec : Prop :=
  ∀ n, (P16139229903244283515.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P1853113572073170134

`C(n+1, 2)+(n+3)*(n+1)²`
-/

namespace A144640.P1853113572073170134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n + 3) * (n + 1) ^ 2

end

end A144640.P1853113572073170134

namespace A144640

/-- `C(n+1, 2)+(n+3)*(n+1)²` -/
def P1853113572073170134.Spec : Prop :=
  ∀ n, (P1853113572073170134.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P510256003770082664

`or(1, 2*n)*∑[n+2]+n+1`
-/

namespace A144640.P510256003770082664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A144640.P510256003770082664

namespace A144640

/-- `or(1, 2*n)*∑[n+2]+n+1` -/
def P510256003770082664.Spec : Prop :=
  ∀ n, (P510256003770082664.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P10982630967019403176

`xor(1, 2*n)*∑[n+2]+n+1`
-/

namespace A144640.P10982630967019403176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A144640.P10982630967019403176

namespace A144640

/-- `xor(1, 2*n)*∑[n+2]+n+1` -/
def P10982630967019403176.Spec : Prop :=
  ∀ n, (P10982630967019403176.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P9142115315222397120

`∑[n+3]+lcm(2, 2*n)*∑[n+2]`
-/

namespace A144640.P9142115315222397120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144640.P9142115315222397120

namespace A144640

/-- `∑[n+3]+lcm(2, 2*n)*∑[n+2]` -/
def P9142115315222397120.Spec : Prop :=
  ∀ n, (P9142115315222397120.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P7622275948617944810

`∑[gcd(n, 2*n)]+(n+3)*(n+1)²`
-/

namespace A144640.P7622275948617944810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * (n + 1) ^ 2

end

end A144640.P7622275948617944810

namespace A144640

/-- `∑[gcd(n, 2*n)]+(n+3)*(n+1)²` -/
def P7622275948617944810.Spec : Prop :=
  ∀ n, (P7622275948617944810.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P12291049277139113023

`lcm(n+2, ∑[n+3+n])-∑[n+3]`
-/

namespace A144640.P12291049277139113023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A144640.P12291049277139113023

namespace A144640

/-- `lcm(n+2, ∑[n+3+n])-∑[n+3]` -/
def P12291049277139113023.Spec : Prop :=
  ∀ n, P12291049277139113023.a n = A144640 (n + 1)

end A144640

/-! ## A144640.P12758259328612852146

`∑[n+3]+2*n*∑[C(n+2, n+1)]`
-/

namespace A144640.P12758259328612852146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144640.P12758259328612852146

namespace A144640

/-- `∑[n+3]+2*n*∑[C(n+2, n+1)]` -/
def P12758259328612852146.Spec : Prop :=
  ∀ n, (P12758259328612852146.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P11858700638696021135

`(2*n+1)*(C(n+2, 2)+n+1)+n+1`
-/

namespace A144640.P11858700638696021135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 2) 2 + (n + 1)) + (n + 1)

end

end A144640.P11858700638696021135

namespace A144640

/-- `(2*n+1)*(C(n+2, 2)+n+1)+n+1` -/
def P11858700638696021135.Spec : Prop :=
  ∀ n, (P11858700638696021135.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P17472119540460271580

`gcd(n+1, ∑[2*n])+(2*n+1)*∑[n+2]`
-/

namespace A144640.P17472119540460271580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144640.P17472119540460271580

namespace A144640

/-- `gcd(n+1, ∑[2*n])+(2*n+1)*∑[n+2]` -/
def P17472119540460271580.Spec : Prop :=
  ∀ n, (P17472119540460271580.a n : ℤ) = A144640 (n + 1)

end A144640

/-! ## A144640.P3780794502276738586

`∑[n+3]+and(2*n+1, 2*n)*∑[n+2]`
-/

namespace A144640.P3780794502276738586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land (2 * n + 1) (2 * n) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144640.P3780794502276738586

namespace A144640

/-- `∑[n+3]+and(2*n+1, 2*n)*∑[n+2]` -/
def P3780794502276738586.Spec : Prop :=
  ∀ n, (P3780794502276738586.a n : ℤ) = A144640 (n + 1)

end A144640

/-!
# A144641: Indices of harmonic (or Ore) numbers (A001599) that are also perfect numbers.

The programs for A144641, there is no canonical definition to state claims against.
-/

/-! ## A144641.P4075732577253936489

`A193945(n+1)+A051165(n)`
-/

namespace A144641.P4075732577253936489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193945 (n + 1) + A051165 n

end

end A144641.P4075732577253936489

/-! ## A144641.P16505025391455740341

`A156253(A292266(n+1)+A002359(n))`
-/

namespace A144641.P16505025391455740341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A292266 (n + 1) + A002359 n).toNat

end

end A144641.P16505025391455740341

/-!
# A144642: Positive numbers that are not the sum of a triangular number, a square and a Fibonacci number.

The programs for A144642, there is no canonical definition to state claims against.
-/

/-! ## A144642.P1257024642112107491

`A115171(3%comp[∑[n]]+n)%A273936(n+1)`
-/

namespace A144642.P1257024642112107491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115171 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)) (A273936 (n + 1))

end

end A144642.P1257024642112107491

/-! ## A144642.P6050576439683362552

`A115171(gcd(A000142(2*(n+1)), A033014(n+3)))`
-/

namespace A144642.P6050576439683362552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115171 (Int.gcd (A000142 (2 * (n + 1))) (A033014 (n + 3)))

end

end A144642.P6050576439683362552

/-!
# A144644: Triangle in A144643 read by columns downwards.

The programs for A144644, there is no canonical definition to state claims against.
-/

/-! ## A144644.P11169758585226507089

`A144645(∑[2*n]%comp[∑[n]])`
-/

namespace A144644.P11169758585226507089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144645 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A144644.P11169758585226507089

/-! ## A144644.P15515198757989952243

`A144645(∑[char[∑[n]]]²-n-1)`
-/

namespace A144644.P15515198757989952243
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144645 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A144644.P15515198757989952243

/-! ## A144644.P13265326072701258481

`A144645(A061579(n))^A035214(n)`
-/

namespace A144644.P13265326072701258481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144645 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A144644.P13265326072701258481

/-! ## A144644.P18046900295751291554

`gcd(A000038(n), A144645(A061579(n)))`
-/

namespace A144644.P18046900295751291554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144645 (A061579 n).toNat)

end

end A144644.P18046900295751291554

/-! ## A144644.P14845774915516208869

`and(A144645(A061579(n)), A290662(n))`
-/

namespace A144644.P14845774915516208869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144645 (A061579 n).toNat) (A290662 n)

end

end A144644.P14845774915516208869

/-!
# A144645: Triangle in A144643 read upwards by columns.

The programs for A144645, there is no canonical definition to state claims against.
-/

/-! ## A144645.P37595326608700955

`A144644(∑[2*n]%comp[∑[n]])`
-/

namespace A144645.P37595326608700955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144644 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A144645.P37595326608700955

/-! ## A144645.P10912883251549917239

`A144644(∑[char[∑[n]]]²-n-1)`
-/

namespace A144645.P10912883251549917239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144644 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A144645.P10912883251549917239

/-! ## A144645.P17430774310894372267

`C(A106800(n), A198339(A143453(n)))`
-/

namespace A144645.P17430774310894372267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106800 n).toNat (A198339 (A143453 n).toNat).toNat

end

end A144645.P17430774310894372267

/-! ## A144645.P1225050537515552130

`C(A106800(n), A124010(A003389(2*n+3)))`
-/

namespace A144645.P1225050537515552130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106800 n).toNat (A124010 (A003389 (2 * n + 3)).toNat).toNat

end

end A144645.P1225050537515552130

/-!
# A144646: a(n) = Bell(n) - 2^n + n.

The programs for A144646, there is no canonical definition to state claims against.
-/

/-! ## A144646.P5850880891862544484

`A000110(n)-2^n+n`
-/

namespace A144646.P5850880891862544484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (2 ^ n : ℤ) + (n : ℤ)

end

end A144646.P5850880891862544484

/-! ## A144646.P7322890181341091333

`abs(A292935(n))-(2^n-n)`
-/

namespace A144646.P7322890181341091333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - ((2 ^ n : ℤ) - (n : ℤ))

end

end A144646.P7322890181341091333

/-! ## A144646.P420635031018542785

`Δ[A005001(n)]-2^n+n`
-/

namespace A144646.P420635031018542785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 ^ n : ℤ) + (n : ℤ)

end

end A144646.P420635031018542785

/-! ## A144646.P12587410136698271949

`n-(2^n-A011971(∑[n]))`
-/

namespace A144646.P12587410136698271949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 ^ n : ℤ) - A011971 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A144646.P12587410136698271949

/-! ## A144646.P10939798140937991240

`A186020(∑[n])-(2^n-n)`
-/

namespace A144646.P10939798140937991240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - ((2 ^ n : ℤ) - (n : ℤ))

end

end A144646.P10939798140937991240

/-! ## A144646.P11378965826136393273

`A212431(∑[n])-(2^n-n)`
-/

namespace A144646.P11378965826136393273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j) - ((2 ^ n : ℤ) - (n : ℤ))

end

end A144646.P11378965826136393273

/-! ## A144646.P727997033815402158

`A259691(∑[n])-(2^n-n)`
-/

namespace A144646.P727997033815402158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f1 j) - ((2 ^ n : ℤ) - (n : ℤ))

end

end A144646.P727997033815402158

/-! ## A144646.P15682218981260196491

`A108087(∑[n])-Δ[2^n-(∑[n]+1)]-1`
-/

namespace A144646.P15682218981260196491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - (f2 (n + 1) - f2 n) - 1

end

end A144646.P15682218981260196491

/-! ## A144646.P7413664495163674011

`A346520(∑[n])-Δ[2^n-(∑[n]+1)]-1`
-/

namespace A144646.P7413664495163674011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f1 j) - (f2 (n + 1) - f2 n) - 1

end

end A144646.P7413664495163674011

/-! ## A144646.P1806275759958260156

`A000110(n)-A000325(n)`
-/

namespace A144646.P1806275759958260156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A000325 n

end

end A144646.P1806275759958260156

/-!
# A144647: Second differences of A001515 (or A144301).

The programs for A144647, the canonical program `A144647.P13343009352407560619` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144647 has offset 0).

The definition of A144647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144647.P13343009352407560619

`2*A001515(n+1)-(2*n+3)*A001515(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144647

/-- `2*A001515(n+1)-(2*n+3)*A001515(n)` -/
def P13343009352407560619.Spec : Prop :=
  ∀ n, P13343009352407560619.a n = A144647 n

theorem P13343009352407560619.correct : P13343009352407560619.Spec := by
  intro n
  simp only [A144647]

end A144647

/-! ## A144647.P3685302347509607818

`Δ[Δ[A144301(n)]]`
-/

namespace A144647.P3685302347509607818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144647.P3685302347509607818

namespace A144647

/-- `Δ[Δ[A144301(n)]]` -/
def P3685302347509607818.Spec : Prop :=
  ∀ n, P3685302347509607818.a n = A144647 n

end A144647

/-! ## A144647.P15758506396905333969

`Δ[Δ[A144505(∑[n])]]`
-/

namespace A144647.P15758506396905333969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144647.P15758506396905333969

namespace A144647

/-- `Δ[Δ[A144505(∑[n])]]` -/
def P15758506396905333969.Spec : Prop :=
  ∀ n, P15758506396905333969.a n = A144647 n

end A144647

/-! ## A144647.P14000908664648525143

`A001515(n)+2*A001514(n)`
-/

namespace A144647.P14000908664648525143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 n + 2 * A001514 n

end

end A144647.P14000908664648525143

namespace A144647

/-- `A001515(n)+2*A001514(n)` -/
def P14000908664648525143.Spec : Prop :=
  ∀ n, P14000908664648525143.a n = A144647 n

end A144647

/-! ## A144647.P3110717025117588389

`A144301(n+1)+2*A001514(n)`
-/

namespace A144647.P3110717025117588389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 (n + 1) + 2 * A001514 n

end

end A144647.P3110717025117588389

namespace A144647

/-- `A144301(n+1)+2*A001514(n)` -/
def P3110717025117588389.Spec : Prop :=
  ∀ n, P3110717025117588389.a n = A144647 n

end A144647

/-! ## A144647.P9446614059541766578

`A144301(n)+A144498(n)-A001515(n)`
-/

namespace A144647.P9446614059541766578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 n + (A144498 n - A001515 n)

end

end A144647.P9446614059541766578

namespace A144647

/-- `A144301(n)+A144498(n)-A001515(n)` -/
def P9446614059541766578.Spec : Prop :=
  ∀ n, P9446614059541766578.a n = A144647 n

end A144647

/-! ## A144647.P9559960161770644357

`A144301(n)+A144498(n)-A144301(n+1)`
-/

namespace A144647.P9559960161770644357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 n + (A144498 n - A144301 (n + 1))

end

end A144647.P9559960161770644357

namespace A144647

/-- `A144301(n)+A144498(n)-A144301(n+1)` -/
def P9559960161770644357.Spec : Prop :=
  ∀ n, P9559960161770644357.a n = A144647 n

end A144647

/-! ## A144647.P17096117334570902

`Δ[A144499(n)%A144498(n)]`
-/

namespace A144647.P17096117334570902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144499 n) (A144498 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144647.P17096117334570902

namespace A144647

/-- `Δ[A144499(n)%A144498(n)]` -/
def P17096117334570902.Spec : Prop :=
  ∀ n, P17096117334570902.a n = A144647 n

end A144647

/-!
# A144649: 

The programs for A144649, there is no canonical definition to state claims against.
-/

/-! ## A144649.P15329580035488512674

`A134772(Δ[n²])`
-/

namespace A144649.P15329580035488512674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134772 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144649.P15329580035488512674

/-! ## A144649.P17844406037397512706

`record[A134772(A093178(n))]`
-/

namespace A144649.P17844406037397512706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134772 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144649.P17844406037397512706

/-!
# A144650: Triangle read by rows where T(m,n) = 2m*n + m + n + 1.

The programs for A144650, the canonical program `A144650.P16604839193950878399` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144650 has offset 1).

The definition of A144650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144650.P16604839193950878399

`A083487(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144650

/-- `A083487(n+1)+1` -/
def P16604839193950878399.Spec : Prop :=
  ∀ n, P16604839193950878399.a n = A144650 (n + 1)

theorem P16604839193950878399.correct : P16604839193950878399.Spec := by
  intro n
  simp only [A144650, Nat.add_sub_cancel]

end A144650

/-! ## A144650.P3829205242563208578

`A144562(n+1)+2`
-/

namespace A144650.P3829205242563208578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 2

end

end A144650.P3829205242563208578

namespace A144650

/-- `A144562(n+1)+2` -/
def P3829205242563208578.Spec : Prop :=
  ∀ n, P3829205242563208578.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P14262730405637630489

`A155705(n+1)-1`
-/

namespace A144650.P14262730405637630489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 1

end

end A144650.P14262730405637630489

namespace A144650

/-- `A155705(n+1)-1` -/
def P14262730405637630489.Spec : Prop :=
  ∀ n, P14262730405637630489.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P15123042689760134518

`A154680(n+1)+3`
-/

namespace A144650.P15123042689760134518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 3

end

end A144650.P15123042689760134518

namespace A144650

/-- `A154680(n+1)+3` -/
def P15123042689760134518.Spec : Prop :=
  ∀ n, P15123042689760134518.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P15037080928480361227

`A154681(n+1)-2`
-/

namespace A144650.P15037080928480361227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 2

end

end A144650.P15037080928480361227

namespace A144650

/-- `A154681(n+1)-2` -/
def P15037080928480361227.Spec : Prop :=
  ∀ n, P15037080928480361227.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P3724334035162599355

`A154684(n+1)+4`
-/

namespace A144650.P3724334035162599355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 4

end

end A144650.P3724334035162599355

namespace A144650

/-- `A154684(n+1)+4` -/
def P3724334035162599355.Spec : Prop :=
  ∀ n, P3724334035162599355.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P7325166864524264986

`A154685(n+1)-3`
-/

namespace A144650.P7325166864524264986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 3

end

end A144650.P7325166864524264986

namespace A144650

/-- `A154685(n+1)-3` -/
def P7325166864524264986.Spec : Prop :=
  ∀ n, P7325166864524264986.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P1286107009775045995

`A154631(n+1)-4`
-/

namespace A144650.P1286107009775045995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 4

end

end A144650.P1286107009775045995

namespace A144650

/-- `A154631(n+1)-4` -/
def P1286107009775045995.Spec : Prop :=
  ∀ n, P1286107009775045995.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P8450087891843589855

`A155151(n+1)/2`
-/

namespace A144650.P8450087891843589855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2

end

end A144650.P8450087891843589855

namespace A144650

/-- `A155151(n+1)/2` -/
def P8450087891843589855.Spec : Prop :=
  ∀ n, P8450087891843589855.a n = (A144650 (n + 1) : ℚ)

end A144650

/-! ## A144650.P785161873030529638

`A155724(n+1)+5`
-/

namespace A144650.P785161873030529638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 5

end

end A144650.P785161873030529638

namespace A144650

/-- `A155724(n+1)+5` -/
def P785161873030529638.Spec : Prop :=
  ∀ n, P785161873030529638.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P15115393609183050694

`A155546(n+1)+6`
-/

namespace A144650.P15115393609183050694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 6

end

end A144650.P15115393609183050694

namespace A144650

/-- `A155546(n+1)+6` -/
def P15115393609183050694.Spec : Prop :=
  ∀ n, P15115393609183050694.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P10770317884967341929

`A163652(n+1)-5`
-/

namespace A144650.P10770317884967341929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 5

end

end A144650.P10770317884967341929

namespace A144650

/-- `A163652(n+1)-5` -/
def P10770317884967341929.Spec : Prop :=
  ∀ n, P10770317884967341929.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P11587576862665020753

`A155550(n+1)+7`
-/

namespace A144650.P11587576862665020753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 7

end

end A144650.P11587576862665020753

namespace A144650

/-- `A155550(n+1)+7` -/
def P11587576862665020753.Spec : Prop :=
  ∀ n, P11587576862665020753.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P9792014466238982448

`A163672(n+1)-6`
-/

namespace A144650.P9792014466238982448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 6

end

end A144650.P9792014466238982448

namespace A144650

/-- `A163672(n+1)-6` -/
def P9792014466238982448.Spec : Prop :=
  ∀ n, P9792014466238982448.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P1556290856515201769

`A144670(n+1)+8`
-/

namespace A144650.P1556290856515201769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 8

end

end A144650.P1556290856515201769

namespace A144650

/-- `A144670(n+1)+8` -/
def P1556290856515201769.Spec : Prop :=
  ∀ n, P1556290856515201769.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P11186192789000240030

`A163657(n+1)-7`
-/

namespace A144650.P11186192789000240030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 7

end

end A144650.P11186192789000240030

namespace A144650

/-- `A163657(n+1)-7` -/
def P11186192789000240030.Spec : Prop :=
  ∀ n, P11186192789000240030.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P1219892205362859722

`A163674(n+1)-8`
-/

namespace A144650.P1219892205362859722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 8

end

end A144650.P1219892205362859722

namespace A144650

/-- `A163674(n+1)-8` -/
def P1219892205362859722.Spec : Prop :=
  ∀ n, P1219892205362859722.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P3541041660210921144

`A324937(n+1)+9`
-/

namespace A144650.P3541041660210921144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 9

end

end A144650.P3541041660210921144

namespace A144650

/-- `A324937(n+1)+9` -/
def P3541041660210921144.Spec : Prop :=
  ∀ n, P3541041660210921144.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P2241629995760143754

`A155704(n+1)-9`
-/

namespace A144650.P2241629995760143754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 9

end

end A144650.P2241629995760143754

namespace A144650

/-- `A155704(n+1)-9` -/
def P2241629995760143754.Spec : Prop :=
  ∀ n, P2241629995760143754.a n = A144650 (n + 1)

end A144650

/-! ## A144650.P16961422806918089499

`ceil(A162245(n+1)/3)`
-/

namespace A144650.P16961422806918089499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162245 (n + 1) : ℚ) / 3⌉

end

end A144650.P16961422806918089499

namespace A144650

/-- `ceil(A162245(n+1)/3)` -/
def P16961422806918089499.Spec : Prop :=
  ∀ n, P16961422806918089499.a n = A144650 (n + 1)

end A144650

/-!
# A144652: Triangle, read by rows, where T(m,n) = floor((2mn+m+n)/2) with m >= n >= 1.

The programs for A144652, the canonical program `A144652.P2853167490625725112` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144652 has offset 1).

The definition of A144652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144652.P2853167490625725112

`floor(A083487(n+1)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144652

/-- `floor(A083487(n+1)/2)` -/
def P2853167490625725112.Spec : Prop :=
  ∀ n, P2853167490625725112.a n = A144652 (n + 1)

theorem P2853167490625725112.correct : P2853167490625725112.Spec := by
  intro n
  simp only [A144652, Nat.add_sub_cancel]

end A144652

/-! ## A144652.P13901461284629575835

`ceil(A144562(n+1)/2)`
-/

namespace A144652.P13901461284629575835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144562 (n + 1) : ℚ) / 2⌉

end

end A144652.P13901461284629575835

namespace A144652

/-- `ceil(A144562(n+1)/2)` -/
def P13901461284629575835.Spec : Prop :=
  ∀ n, P13901461284629575835.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P8700463047394775343

`floor(A155156(n+1)/4)`
-/

namespace A144652.P8700463047394775343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155156 (n + 1) : ℚ) / 4⌋

end

end A144652.P8700463047394775343

namespace A144652

/-- `floor(A155156(n+1)/4)` -/
def P8700463047394775343.Spec : Prop :=
  ∀ n, P8700463047394775343.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P11519093561396097821

`floor(A172292(n+1)/4)`
-/

namespace A144652.P11519093561396097821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172292 (n + 1) : ℚ) / 4⌋

end

end A144652.P11519093561396097821

namespace A144652

/-- `floor(A172292(n+1)/4)` -/
def P11519093561396097821.Spec : Prop :=
  ∀ n, P11519093561396097821.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P9479769474429108559

`floor(A154680(n+1)/2)+1`
-/

namespace A144652.P9479769474429108559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154680 (n + 1) : ℚ) / 2⌋ + 1

end

end A144652.P9479769474429108559

namespace A144652

/-- `floor(A154680(n+1)/2)+1` -/
def P9479769474429108559.Spec : Prop :=
  ∀ n, P9479769474429108559.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P3722718832119585566

`ceil(A154684(n+1)/2)+1`
-/

namespace A144652.P3722718832119585566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154684 (n + 1) : ℚ) / 2⌉ + 1

end

end A144652.P3722718832119585566

namespace A144652

/-- `ceil(A154684(n+1)/2)+1` -/
def P3722718832119585566.Spec : Prop :=
  ∀ n, P3722718832119585566.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P11758023123359630989

`ceil(A155546(n+1)/2)+2`
-/

namespace A144652.P11758023123359630989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155546 (n + 1) : ℚ) / 2⌉ + 2

end

end A144652.P11758023123359630989

namespace A144652

/-- `ceil(A155546(n+1)/2)+2` -/
def P11758023123359630989.Spec : Prop :=
  ∀ n, P11758023123359630989.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P17713209213662591522

`round(A144650(n+1)/2)-1`
-/

namespace A144652.P17713209213662591522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144650 (n + 1) : ℚ) / 2) - 1

end

end A144652.P17713209213662591522

namespace A144652

/-- `round(A144650(n+1)/2)-1` -/
def P17713209213662591522.Spec : Prop :=
  ∀ n, P17713209213662591522.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P4041444558528359198

`floor(A075362(n+1)+A108872(n+1)/2)`
-/

namespace A144652.P4041444558528359198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075362 (n + 1) : ℚ) + (A108872 (n + 1) : ℚ) / 2⌋

end

end A144652.P4041444558528359198

namespace A144652

/-- `floor(A075362(n+1)+A108872(n+1)/2)` -/
def P4041444558528359198.Spec : Prop :=
  ∀ n, P4041444558528359198.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P17978557353389783796

`A075362(n+1)+A004526(A108872(n+1))`
-/

namespace A144652.P17978557353389783796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + A004526 (A108872 (n + 1)).toNat

end

end A144652.P17978557353389783796

namespace A144652

/-- `A075362(n+1)+A004526(A108872(n+1))` -/
def P17978557353389783796.Spec : Prop :=
  ∀ n, P17978557353389783796.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P14089233986640305189

`A140869(n+1)+1`
-/

namespace A144652.P14089233986640305189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140869 (n + 1) + 1

end

end A144652.P14089233986640305189

namespace A144652

/-- `A140869(n+1)+1` -/
def P14089233986640305189.Spec : Prop :=
  ∀ n, P14089233986640305189.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P7501406968704626475

`A020725(A140869(n+1))`
-/

namespace A144652.P7501406968704626475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A140869 (n + 1)).toNat

end

end A144652.P7501406968704626475

namespace A144652

/-- `A020725(A140869(n+1))` -/
def P7501406968704626475.Spec : Prop :=
  ∀ n, P7501406968704626475.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P13347091005591090408

`A004526(A083487(n+1))`
-/

namespace A144652.P13347091005591090408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A083487 (n + 1)).toNat

end

end A144652.P13347091005591090408

namespace A144652

/-- `A004526(A083487(n+1))` -/
def P13347091005591090408.Spec : Prop :=
  ∀ n, P13347091005591090408.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P7232785205107774624

`A008619(A154680(n+1))`
-/

namespace A144652.P7232785205107774624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A154680 (n + 1)).toNat

end

end A144652.P7232785205107774624

namespace A144652

/-- `A008619(A154680(n+1))` -/
def P7232785205107774624.Spec : Prop :=
  ∀ n, P7232785205107774624.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P15765967940286026549

`A065033(A144562(n+1))`
-/

namespace A144652.P15765967940286026549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A144562 (n + 1)).toNat

end

end A144652.P15765967940286026549

namespace A144652

/-- `A065033(A144562(n+1))` -/
def P15765967940286026549.Spec : Prop :=
  ∀ n, P15765967940286026549.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P16197700145475373867

`A080513(A154684(n+1))`
-/

namespace A144652.P16197700145475373867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A154684 (n + 1)).toNat

end

end A144652.P16197700145475373867

namespace A144652

/-- `A080513(A154684(n+1))` -/
def P16197700145475373867.Spec : Prop :=
  ∀ n, P16197700145475373867.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P13268214659700889459

`A140106(A155705(n+1))`
-/

namespace A144652.P13268214659700889459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A155705 (n + 1)).toNat

end

end A144652.P13268214659700889459

namespace A144652

/-- `A140106(A155705(n+1))` -/
def P13268214659700889459.Spec : Prop :=
  ∀ n, P13268214659700889459.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P121556125802896529

`A008619(A155724(n+1))+1`
-/

namespace A144652.P121556125802896529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A155724 (n + 1)).toNat + 1

end

end A144652.P121556125802896529

namespace A144652

/-- `A008619(A155724(n+1))+1` -/
def P121556125802896529.Spec : Prop :=
  ∀ n, P121556125802896529.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P17956057290173960054

`A065033(A154680(n+1)+1)`
-/

namespace A144652.P17956057290173960054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A154680 (n + 1) + 1).toNat

end

end A144652.P17956057290173960054

namespace A144652

/-- `A065033(A154680(n+1)+1)` -/
def P17956057290173960054.Spec : Prop :=
  ∀ n, P17956057290173960054.a n = A144652 (n + 1)

end A144652

/-! ## A144652.P13538320391430444948

`A004526(A144650(n+1)-1)`
-/

namespace A144652.P13538320391430444948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A144650 (n + 1) - 1).toNat

end

end A144652.P13538320391430444948

namespace A144652

/-- `A004526(A144650(n+1)-1)` -/
def P13538320391430444948.Spec : Prop :=
  ∀ n, P13538320391430444948.a n = A144652 (n + 1)

end A144652

/-!
# A144653: Denominator of Sum_{k=1..n} k^2*H_{n+k} where H_m = Sum_{i=1..m} 1/i.

The programs for A144653, there is no canonical definition to state claims against.
-/

/-! ## A144653.P2347173455805283428

`A170899(A187251(n+1)+7)`
-/

namespace A144653.P2347173455805283428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170899 (A187251 (n + 1) + 7).toNat

end

end A144653.P2347173455805283428

/-!
# A144654: Numerator of Sum_{k=1..n} k*H_{n+k} where H_m = Sum_{i=1..m} 1/i.

The programs for A144654, there is no canonical definition to state claims against.
-/

/-! ## A144654.P13498934845834654490

`A334454(∑[A334505(n+1)])`
-/

namespace A144654.P13498934845834654490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144654.P13498934845834654490

/-! ## A144654.P12729367118053383995

`xor(A041257(n), A242736(A000051(n+1)))`
-/

namespace A144654.P12729367118053383995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A041257 n) (A242736 (A000051 (n + 1)).toNat)

end

end A144654.P12729367118053383995

/-!
# A144656: a(n) = (n mod 2) if n <= 3, otherwise a(n) = (n^2-5n+7)*(n-2)*a(n-1)/(n-3) + (n^2-5n+7)*a(n-2) - (n-2)*a(n-3)/(n-3).

The programs for A144656, there is no canonical definition to state claims against.
-/

/-! ## A144656.P8592696524733939473

`A001053(abs(1-n))²`
-/

namespace A144656.P8592696524733939473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 |1 - (n : ℤ)|.toNat ^ 2

end

end A144656.P8592696524733939473

/-! ## A144656.P2265710522629716118

`A001053(abs(1-n))^A036453(A106634(n))`
-/

namespace A144656.P2265710522629716118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001053 |1 - (n : ℤ)|.toNat : ℚ) ^ (A036453 (A106634 n).toNat : ℤ)

end

end A144656.P2265710522629716118

/-! ## A144656.P3500499230936542920

`A001053(abs(1-n))^A006530(A060548(n+1))`
-/

namespace A144656.P3500499230936542920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001053 |1 - (n : ℤ)|.toNat : ℚ) ^ (A006530 (A060548 (n + 1)).toNat : ℤ)

end

end A144656.P3500499230936542920

/-!
# A144657: a(n) = Sum_{j = 1..n} Sum_{i = 1..n} (i + j)! / (i! * j!).

The programs for A144657, the canonical program `A144657.P3830659986233417830` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144657 has offset 0).

The definition of A144657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144657.P385866961010271794

`∏[4-2/(n+1)]-2-2*n`
-/

namespace A144657.P385866961010271794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2 - (2 * n : ℚ)

end

end A144657.P385866961010271794

namespace A144657

/-- `∏[4-2/(n+1)]-2-2*n` -/
def P385866961010271794.Spec : Prop :=
  ∀ n, P385866961010271794.a n = (A144657 n : ℚ)

end A144657

/-! ## A144657.P3830659986233417830

`2*(A010763(n)-n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144657

/-- `2*(A010763(n)-n)` -/
def P3830659986233417830.Spec : Prop :=
  ∀ n, P3830659986233417830.a n = A144657 n

theorem P3830659986233417830.correct : P3830659986233417830.Spec := by
  intro n
  simp only [A144657]

end A144657

/-! ## A144657.P18007576397159593725

`∑[Δ[A244174(n)]-2]`
-/

namespace A144657.P18007576397159593725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144657.P18007576397159593725

namespace A144657

/-- `∑[Δ[A244174(n)]-2]` -/
def P18007576397159593725.Spec : Prop :=
  ∀ n, P18007576397159593725.a n = A144657 n

end A144657

/-! ## A144657.P13197500851009271548

`2*(A001700(n)-(n+1))`
-/

namespace A144657.P13197500851009271548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001700 n - (n + 1 : ℤ))

end

end A144657.P13197500851009271548

namespace A144657

/-- `2*(A001700(n)-(n+1))` -/
def P13197500851009271548.Spec : Prop :=
  ∀ n, P13197500851009271548.a n = A144657 n

end A144657

/-! ## A144657.P15897694668478611044

`record[Δ[A081668(n+1)]-n]`
-/

namespace A144657.P15897694668478611044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144657.P15897694668478611044

namespace A144657

/-- `record[Δ[A081668(n+1)]-n]` -/
def P15897694668478611044.Spec : Prop :=
  ∀ n, P15897694668478611044.a n = A144657 n

end A144657

/-! ## A144657.P12385128946446969128

`∑[2*(A097613(n+1)-1)]`
-/

namespace A144657.P12385128946446969128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097613 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144657.P12385128946446969128

namespace A144657

/-- `∑[2*(A097613(n+1)-1)]` -/
def P12385128946446969128.Spec : Prop :=
  ∀ n, P12385128946446969128.a n = A144657 n

end A144657

/-! ## A144657.P258569578250773349

`2*(A088218(n+1)-(n+1))`
-/

namespace A144657.P258569578250773349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088218 (n + 1) - (n + 1 : ℤ))

end

end A144657.P258569578250773349

namespace A144657

/-- `2*(A088218(n+1)-(n+1))` -/
def P258569578250773349.Spec : Prop :=
  ∀ n, P258569578250773349.a n = A144657 n

end A144657

/-! ## A144657.P15733858303280910251

`2*(A260878(n+1)-(n+2))`
-/

namespace A144657.P15733858303280910251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A260878 (n + 1) - (n + 2 : ℤ))

end

end A144657.P15733858303280910251

namespace A144657

/-- `2*(A260878(n+1)-(n+2))` -/
def P15733858303280910251.Spec : Prop :=
  ∀ n, P15733858303280910251.a n = A144657 n

end A144657

/-! ## A144657.P16336318751502330186

`2*(A014495(2*n+1)-n)`
-/

namespace A144657.P16336318751502330186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014495 (2 * n + 1) - (n : ℤ))

end

end A144657.P16336318751502330186

namespace A144657

/-- `2*(A014495(2*n+1)-n)` -/
def P16336318751502330186.Spec : Prop :=
  ∀ n, P16336318751502330186.a n = A144657 n

end A144657

/-! ## A144657.P15700418208768565930

`2*(A047171(2*n+1)-n)`
-/

namespace A144657.P15700418208768565930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047171 (2 * n + 1) - (n : ℤ))

end

end A144657.P15700418208768565930

namespace A144657

/-- `2*(A047171(2*n+1)-n)` -/
def P15700418208768565930.Spec : Prop :=
  ∀ n, P15700418208768565930.a n = A144657 n

end A144657

/-! ## A144657.P8481177493542160679

`2*(A052473(n+3)-(n+3))`
-/

namespace A144657.P8481177493542160679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052473 (n + 3) - (n + 3 : ℤ))

end

end A144657.P8481177493542160679

namespace A144657

/-- `2*(A052473(n+3)-(n+3))` -/
def P8481177493542160679.Spec : Prop :=
  ∀ n, P8481177493542160679.a n = A144657 n

end A144657

/-! ## A144657.P1630241331007127188

`2*(A063549(2*n+1)-(n+1))`
-/

namespace A144657.P1630241331007127188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063549 (2 * n + 1) - (n + 1 : ℤ))

end

end A144657.P1630241331007127188

namespace A144657

/-- `2*(A063549(2*n+1)-(n+1))` -/
def P1630241331007127188.Spec : Prop :=
  ∀ n, P1630241331007127188.a n = A144657 n

end A144657

/-! ## A144657.P8196975894340481728

`A194124(A004273(n))`
-/

namespace A144657.P8196975894340481728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194124 (A004273 n).toNat

end

end A144657.P8196975894340481728

namespace A144657

/-- `A194124(A004273(n))` -/
def P8196975894340481728.Spec : Prop :=
  ∀ n, P8196975894340481728.a n = A144657 n

end A144657

/-! ## A144657.P12466134218436503670

`Δ[A006134(n)-A002378(n)]`
-/

namespace A144657.P12466134218436503670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144657.P12466134218436503670

namespace A144657

/-- `Δ[A006134(n)-A002378(n)]` -/
def P12466134218436503670.Spec : Prop :=
  ∀ n, P12466134218436503670.a n = A144657 n

end A144657

/-! ## A144657.P2477145527819379850

`record[A126930(n)-A028310(n)]`
-/

namespace A144657.P2477145527819379850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144657.P2477145527819379850

namespace A144657

/-- `record[A126930(n)-A028310(n)]` -/
def P2477145527819379850.Spec : Prop :=
  ∀ n, P2477145527819379850.a n = A144657 n

end A144657

/-! ## A144657.P15435066677908626361

`Δ[2*(A024718(n)-A000217(n))]`
-/

namespace A144657.P15435066677908626361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024718 n - A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144657.P15435066677908626361

namespace A144657

/-- `Δ[2*(A024718(n)-A000217(n))]` -/
def P15435066677908626361.Spec : Prop :=
  ∀ n, P15435066677908626361.a n = A144657 n

end A144657

/-! ## A144657.P5704990056902332242

`record[2*(A057977(n)-A008619(n))]`
-/

namespace A144657.P5704990056902332242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057977 n - A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144657.P5704990056902332242

namespace A144657

/-- `record[2*(A057977(n)-A008619(n))]` -/
def P5704990056902332242.Spec : Prop :=
  ∀ n, P5704990056902332242.a n = A144657 n

end A144657

/-! ## A144657.P3251356579366289317

`record[A126869(A065033(2*n))-n]`
-/

namespace A144657.P3251356579366289317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A065033 (2 * n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144657.P3251356579366289317

namespace A144657

/-- `record[A126869(A065033(2*n))-n]` -/
def P3251356579366289317.Spec : Prop :=
  ∀ n, P3251356579366289317.a n = A144657 n

end A144657

/-! ## A144657.P103462097685040948

`record[A057427(n)*A126869(n)-n]`
-/

namespace A144657.P103462097685040948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A126869 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144657.P103462097685040948

namespace A144657

/-- `record[A057427(n)*A126869(n)-n]` -/
def P103462097685040948.Spec : Prop :=
  ∀ n, P103462097685040948.a n = A144657 n

end A144657

/-! ## A144657.P12700984844340510220

`record[A081668(n+1)-A233583(n+2)]`
-/

namespace A144657.P12700984844340510220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1) - A233583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144657.P12700984844340510220

namespace A144657

/-- `record[A081668(n+1)-A233583(n+2)]` -/
def P12700984844340510220.Spec : Prop :=
  ∀ n, P12700984844340510220.a n = A144657 n

end A144657

/-!
# A144658: a(n) = Sum_{i=1..n} Sum_{j=1..n} Sum_{k=1..n} (i+j+k)!/(i!*j!*k!).

The programs for A144658, there is no canonical definition to state claims against.
-/

/-! ## A144658.P12734206641653525055

`6*A144511(n)`
-/

namespace A144658.P12734206641653525055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A144511 n

end

end A144658.P12734206641653525055

/-! ## A144658.P17914943597027998476

`5+3*n-3*C(2*n+2, n+1)+A144660(n)`
-/

namespace A144658.P17914943597027998476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 + 3 * n : ℤ) - (3 * Nat.choose (2 * n + 2) (n + 1) : ℤ) + A144660 n

end

end A144658.P17914943597027998476

/-! ## A144658.P10926664380848125715

`6*(A144510(A141214(n))-A000007(n))`
-/

namespace A144658.P10926664380848125715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A144510 (A141214 n).toNat - A000007 n)

end

end A144658.P10926664380848125715

/-! ## A144658.P2735314606460463105

`6*(A144510(A141214(n))-A151935(n))`
-/

namespace A144658.P2735314606460463105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A144510 (A141214 n).toNat - A151935 n)

end

end A144658.P2735314606460463105

/-! ## A144658.P9932913681171364453

`6*A057427(n)*A144510(A141214(n))`
-/

namespace A144658.P9932913681171364453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A057427 n * A144510 (A141214 n).toNat)

end

end A144658.P9932913681171364453

/-!
# A144659: a(n) = A001516(n)/2.

The programs for A144659, there is no canonical definition to state claims against.
-/

/-! ## A144659.P10930906018619398222

`A001516(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144659.P10930906018619398222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001516 n : ℚ) / 2

end

end A144659.P10930906018619398222

/-! ## A144659.P9615167482070792935

`3*A144507(n+3)`
-/

namespace A144659.P9615167482070792935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144507 (n + 3)

end

end A144659.P9615167482070792935

/-!
# A144660: a(n) = Sum_{i=0..n} Sum_{j=0..n} Sum_{k=0..n} (i+j+k)!/(i!*j!*k!).

The programs for A144660, there is no canonical definition to state claims against.
-/

/-! ## A144660.P13895980931761624775

`∑[Δ[A209245(n)]/2]`
-/

namespace A144660.P13895980931761624775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209245 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144660.P13895980931761624775

/-! ## A144660.P12139820519661590478

`floor(A209245(n+1)/2)`
-/

namespace A144660.P12139820519661590478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209245 (n + 1) : ℚ) / 2⌋

end

end A144660.P12139820519661590478

/-! ## A144660.P16413718560246615944

`record[ratio[1-A209245(A193592(n))]]`
-/

namespace A144660.P16413718560246615944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A209245 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144660.P16413718560246615944

/-! ## A144660.P5364446607743945812

`record[ratio[1-A209245(A225174(n+1))]]`
-/

namespace A144660.P5364446607743945812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A209245 (A225174 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144660.P5364446607743945812

/-! ## A144660.P5657407238403984791

`(A260196(n+2)+A209245(n+1))/2`
-/

namespace A144660.P5657407238403984791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260196 (n + 2) + A209245 (n + 1) : ℚ) / 2

end

end A144660.P5657407238403984791

/-!
# A144661: a(n) = Sum_{i=0..n} Sum_{j=0..n} Sum_{k=0..n} Sum_{l=0..n} (i+j+k+l)!/(i!*j!*k!*l!).

The programs for A144661, there is no canonical definition to state claims against.
-/

/-! ## A144661.P8481996777268757536

`A308292(A052905(n+2))`
-/

namespace A144661.P8481996777268757536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (A052905 (n + 2)).toNat

end

end A144661.P8481996777268757536

/-! ## A144661.P7684292494278963756

`A308292(eq[4, A025581(n)])`
-/

namespace A144661.P7684292494278963756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144661.P7684292494278963756

/-! ## A144661.P4150990565505844216

`A308292(eq[5, A193739(n)])`
-/

namespace A144661.P4150990565505844216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144661.P4150990565505844216

/-! ## A144661.P10635422167653275636

`A308292(A155212(n+1)+3)`
-/

namespace A144661.P10635422167653275636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (A155212 (n + 1) + 3).toNat

end

end A144661.P10635422167653275636

/-! ## A144661.P16291413565295721248

`A308292(A056000(n+1)+5)`
-/

namespace A144661.P16291413565295721248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (A056000 (n + 1) + 5).toNat

end

end A144661.P16291413565295721248

/-!
# A144662: a(n) = Sum_{i=1..n} Sum_{j=1..n} Sum_{k=1..n} Sum_{l=1..n} (i+j+k+l)!/(4!*i!*j!*k!*l!).

The programs for A144662, there is no canonical definition to state claims against.
-/

/-! ## A144662.P9108526051289754444

`record[char[A052905(n)]*A144510(n+1)]`
-/

namespace A144662.P9108526051289754444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144662.P9108526051289754444

/-!
# A144670: Triangle read by rows where T(m,n)=2mn+m+n-7.

The programs for A144670, the canonical program `A144670.P16046816963376564463` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144670 has offset 1).

The definition of A144670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144670.P16046816963376564463

`A324937(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A144670

/-- `A324937(n+1)+1` -/
def P16046816963376564463.Spec : Prop :=
  ∀ n, P16046816963376564463.a n = A144670 (n + 1)

theorem P16046816963376564463.correct : P16046816963376564463.Spec := by
  intro n
  simp only [A144670, Nat.add_sub_cancel]

end A144670

/-! ## A144670.P15011121858900778716

`A155550(n+1)-1`
-/

namespace A144670.P15011121858900778716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) - 1

end

end A144670.P15011121858900778716

namespace A144670

/-- `A155550(n+1)-1` -/
def P15011121858900778716.Spec : Prop :=
  ∀ n, P15011121858900778716.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P9005760079139579647

`A155551(n+1)+2`
-/

namespace A144670.P9005760079139579647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 2

end

end A144670.P9005760079139579647

namespace A144670

/-- `A155551(n+1)+2` -/
def P9005760079139579647.Spec : Prop :=
  ∀ n, P9005760079139579647.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P3636797170303190652

`A155546(n+1)-2`
-/

namespace A144670.P3636797170303190652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) - 2

end

end A144670.P3636797170303190652

namespace A144670

/-- `A155546(n+1)-2` -/
def P3636797170303190652.Spec : Prop :=
  ∀ n, P3636797170303190652.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P764228138961197286

`A155724(n+1)-3`
-/

namespace A144670.P764228138961197286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) - 3

end

end A144670.P764228138961197286

namespace A144670

/-- `A155724(n+1)-3` -/
def P764228138961197286.Spec : Prop :=
  ∀ n, P764228138961197286.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P16720910949380307452

`A154684(n+1)-4`
-/

namespace A144670.P16720910949380307452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 4

end

end A144670.P16720910949380307452

namespace A144670

/-- `A154684(n+1)-4` -/
def P16720910949380307452.Spec : Prop :=
  ∀ n, P16720910949380307452.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P14298812530779196215

`A154680(n+1)-5`
-/

namespace A144670.P14298812530779196215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 5

end

end A144670.P14298812530779196215

namespace A144670

/-- `A154680(n+1)-5` -/
def P14298812530779196215.Spec : Prop :=
  ∀ n, P14298812530779196215.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P997094172887836481

`A144562(n+1)-6`
-/

namespace A144670.P997094172887836481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 6

end

end A144670.P997094172887836481

namespace A144670

/-- `A144562(n+1)-6` -/
def P997094172887836481.Spec : Prop :=
  ∀ n, P997094172887836481.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P11159480530007946727

`A083487(n+1)-7`
-/

namespace A144670.P11159480530007946727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 7

end

end A144670.P11159480530007946727

namespace A144670

/-- `A083487(n+1)-7` -/
def P11159480530007946727.Spec : Prop :=
  ∀ n, P11159480530007946727.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P1169820806930667216

`A144650(n+1)-8`
-/

namespace A144670.P1169820806930667216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 8

end

end A144670.P1169820806930667216

namespace A144670

/-- `A144650(n+1)-8` -/
def P1169820806930667216.Spec : Prop :=
  ∀ n, P1169820806930667216.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P7335902508709284219

`A155705(n+1)-9`
-/

namespace A144670.P7335902508709284219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 9

end

end A144670.P7335902508709284219

namespace A144670

/-- `A155705(n+1)-9` -/
def P7335902508709284219.Spec : Prop :=
  ∀ n, P7335902508709284219.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P5031496361994795667

`A154681(n+1)-10`
-/

namespace A144670.P5031496361994795667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 10

end

end A144670.P5031496361994795667

namespace A144670

/-- `A154681(n+1)-10` -/
def P5031496361994795667.Spec : Prop :=
  ∀ n, P5031496361994795667.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P12588574561289011902

`A155151(n+1)-A163674(n+1)`
-/

namespace A144670.P12588574561289011902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A163674 (n + 1)

end

end A144670.P12588574561289011902

namespace A144670

/-- `A155151(n+1)-A163674(n+1)` -/
def P12588574561289011902.Spec : Prop :=
  ∀ n, P12588574561289011902.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P8654323636808625627

`A155156(n+1)-A163672(n+1)`
-/

namespace A144670.P8654323636808625627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A163672 (n + 1)

end

end A144670.P8654323636808625627

namespace A144670

/-- `A155156(n+1)-A163672(n+1)` -/
def P8654323636808625627.Spec : Prop :=
  ∀ n, P8654323636808625627.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P6233215546262317656

`A163676(n+1)-A163652(n+1)`
-/

namespace A144670.P6233215546262317656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - A163652 (n + 1)

end

end A144670.P6233215546262317656

namespace A144670

/-- `A163676(n+1)-A163652(n+1)` -/
def P6233215546262317656.Spec : Prop :=
  ∀ n, P6233215546262317656.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P1896446991590124079

`A172292(n+1)-A163657(n+1)`
-/

namespace A144670.P1896446991590124079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A163657 (n + 1)

end

end A144670.P1896446991590124079

namespace A144670

/-- `A172292(n+1)-A163657(n+1)` -/
def P1896446991590124079.Spec : Prop :=
  ∀ n, P1896446991590124079.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P9873438275368273101

`A155151(n+1)+1-A155704(n+1)`
-/

namespace A144670.P9873438275368273101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + (1 - A155704 (n + 1))

end

end A144670.P9873438275368273101

namespace A144670

/-- `A155151(n+1)+1-A155704(n+1)` -/
def P9873438275368273101.Spec : Prop :=
  ∀ n, P9873438275368273101.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P1459057662856137562

`A163676(n+1)-(A154631(n+1)+1)`
-/

namespace A144670.P1459057662856137562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - (A154631 (n + 1) + 1)

end

end A144670.P1459057662856137562

namespace A144670

/-- `A163676(n+1)-(A154631(n+1)+1)` -/
def P1459057662856137562.Spec : Prop :=
  ∀ n, P1459057662856137562.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P1727988531842660849

`A155151(n+1)-(A163657(n+1)+1)`
-/

namespace A144670.P1727988531842660849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A163657 (n + 1) + 1)

end

end A144670.P1727988531842660849

namespace A144670

/-- `A155151(n+1)-(A163657(n+1)+1)` -/
def P1727988531842660849.Spec : Prop :=
  ∀ n, P1727988531842660849.a n = A144670 (n + 1)

end A144670

/-! ## A144670.P8582321080455311654

`A155156(n+1)+1-A163657(n+1)`
-/

namespace A144670.P8582321080455311654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + (1 - A163657 (n + 1))

end

end A144670.P8582321080455311654

namespace A144670

/-- `A155156(n+1)+1-A163657(n+1)` -/
def P8582321080455311654.Spec : Prop :=
  ∀ n, P8582321080455311654.a n = A144670 (n + 1)

end A144670

/-!
# A144671: Numbers n such that omega(n) = omega(2^n-1), where omega = A001221 = number of distinct prime factors.

The programs for A144671, there is no canonical definition to state claims against.
-/

/-! ## A144671.P4260894931606869987

`eq[A059959(n), A115118(n)]`
-/

namespace A144671.P4260894931606869987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144671.P4260894931606869987

/-! ## A144671.P6706471420635197257

`eq[A059959(n), A175126(n)]`
-/

namespace A144671.P6706471420635197257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144671.P6706471420635197257

/-! ## A144671.P10923000403048428695

`eq[A046800(n), A284463(n)]`
-/

namespace A144671.P10923000403048428695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144671.P10923000403048428695

/-! ## A144671.P13233105614768640299

`eq[A046800(n), A286852(n)]`
-/

namespace A144671.P13233105614768640299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144671.P13233105614768640299

/-! ## A144671.P6849672750972607177

`eq[A127587(n), A370124(n)]`
-/

namespace A144671.P6849672750972607177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144671.P6849672750972607177

/-!
# A144672: Numbers x,y,z such that UnitarySigma(x) = UnitarySigma(y) = UnitarySigma(z) = 3*(x*y*z)^(1/2)/(- x^(1/2) + 8*y^(1/2) - 5*z^(1/2)), z<=y<=x; sequence gives x.

The programs for A144672, there is no canonical definition to state claims against.
-/

/-! ## A144672.P4446854003604860135

`A144673(C(floor((n+1)*log(3)), n))`
-/

namespace A144672.P4446854003604860135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144673 (Nat.choose ⌊(n + 1 : ℝ) * Real.log (3 : ℝ)⌋.toNat n)

end

end A144672.P4446854003604860135

/-! ## A144672.P3440422210134676725

`record[gcd(floor(n/10), A144673(n+1))]`
-/

namespace A144672.P3440422210134676725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A144673 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144672.P3440422210134676725

/-! ## A144672.P8205590952730968863

`A144673(lt[lcm(n, ∏{digits}[n, #+1]-1), 2*n])`
-/

namespace A144672.P8205590952730968863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144673 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A144672.P8205590952730968863

/-! ## A144672.P16473778164893994994

`A144674(A120257(∑[n]))`
-/

namespace A144672.P16473778164893994994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144674 (A120257 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A144672.P16473778164893994994

/-!
# A144675: Numbers k such that A090831(k) is prime.

The programs for A144675, there is no canonical definition to state claims against.
-/

/-! ## A144675.P3407004527326060316

`A006641(∑[A002315(n)])`
-/

namespace A144675.P3407004527326060316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144675.P3407004527326060316

/-! ## A144675.P13799039900395611972

`∑[gcd(A055621(n), A146520(n+2))]`
-/

namespace A144675.P13799039900395611972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055621 n) (A146520 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144675.P13799039900395611972

/-!
# A144676: Primes in A090831.

The programs for A144676, there is no canonical definition to state claims against.
-/

/-! ## A144676.P1546794187790313329

`A090831(A144675(n+1))`
-/

namespace A144676.P1546794187790313329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090831 (A144675 (n + 1)).toNat

end

end A144676.P1546794187790313329

/-!
# A144677: Related to enumeration of quantum states (see reference for precise definition).

The programs for A144677, the canonical program `A144677.P3181928791554283987` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144677 has offset 0).

The definition of A144677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144677.P16756686066803415198

`∑[C(∑[char[3*n]]+1, 2)]`
-/

namespace A144677.P16756686066803415198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P16756686066803415198

namespace A144677

/-- `∑[C(∑[char[3*n]]+1, 2)]` -/
def P16756686066803415198.Spec : Prop :=
  ∀ n, (P16756686066803415198.a n : ℤ) = A144677 n

end A144677

/-! ## A144677.P3181928791554283987

`∑[∑[∑[∑[n+1]]%(n+3)]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144677

/-- `∑[∑[∑[∑[n+1]]%(n+3)]]` -/
def P3181928791554283987.Spec : Prop :=
  ∀ n, (P3181928791554283987.a n : ℤ) = A144677 n

theorem P3181928791554283987.correct : P3181928791554283987.Spec := by
  intro n
  simp only [A144677]

end A144677

/-! ## A144677.P9730042268164584365

`∑[∑[n+3-(n+3)/gcd(3, n)]]/2`
-/

namespace A144677.P9730042268164584365
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (n + 3 : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A144677.P9730042268164584365

namespace A144677

/-- `∑[∑[n+3-(n+3)/gcd(3, n)]]/2` -/
def P9730042268164584365.Spec : Prop :=
  ∀ n, P9730042268164584365.a n = (A144677 n : ℚ)

end A144677

/-! ## A144677.P17358170137352371585

`C(floor(n/3)+3, 3)+C(floor((n-1)/3)+3, 3)+C(floor((n-2)/3)+3, 3)`
-/

namespace A144677.P17358170137352371585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 3⌋ + 3).toNat 3 + Nat.choose (⌊((n : ℤ) - 1 : ℚ) / 3⌋ + 3).toNat 3 + Nat.choose (⌊((n : ℤ) - 2 : ℚ) / 3⌋ + 3).toNat 3

end

end A144677.P17358170137352371585

namespace A144677

/-- `C(floor(n/3)+3, 3)+C(floor((n-1)/3)+3, 3)+C(floor((n-2)/3)+3, 3)` -/
def P17358170137352371585.Spec : Prop :=
  ∀ n, (P17358170137352371585.a n : ℤ) = A144677 n

end A144677

/-! ## A144677.P11508002346976735723

`A382819(n)+n`
-/

namespace A144677.P11508002346976735723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382819 n + (n : ℤ)

end

end A144677.P11508002346976735723

namespace A144677

/-- `A382819(n)+n` -/
def P11508002346976735723.Spec : Prop :=
  ∀ n, P11508002346976735723.a n = A144677 n

end A144677

/-! ## A144677.P6643348747461977486

`A225566(n+1)/2`
-/

namespace A144677.P6643348747461977486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225566 (n + 1) : ℚ) / 2

end

end A144677.P6643348747461977486

namespace A144677

/-- `A225566(n+1)/2` -/
def P6643348747461977486.Spec : Prop :=
  ∀ n, P6643348747461977486.a n = (A144677 n : ℚ)

end A144677

/-! ## A144677.P15840407238398223539

`∑[A000217(∑[char[3*n]])]`
-/

namespace A144677.P15840407238398223539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P15840407238398223539

namespace A144677

/-- `∑[A000217(∑[char[3*n]])]` -/
def P15840407238398223539.Spec : Prop :=
  ∀ n, P15840407238398223539.a n = A144677 n

end A144677

/-! ## A144677.P5083835919530387726

`A006501(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A144677.P5083835919530387726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006501 n - a (n - 2)

end

end A144677.P5083835919530387726

namespace A144677

/-- `A006501(n)-a(n-2)` -/
def P5083835919530387726.Spec : Prop :=
  ∀ n, P5083835919530387726.a n = A144677 n

end A144677

/-! ## A144677.P18337860594326959040

`A092353(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A144677.P18337860594326959040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A092353 n - a (n - 3)

end

end A144677.P18337860594326959040

namespace A144677

/-- `A092353(n)-a(n-3)` -/
def P18337860594326959040.Spec : Prop :=
  ∀ n, P18337860594326959040.a n = A144677 n

end A144677

/-! ## A144677.P6461353251571776080

`∑[A008805(A004396(n))]`
-/

namespace A144677.P6461353251571776080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P6461353251571776080

namespace A144677

/-- `∑[A008805(A004396(n))]` -/
def P6461353251571776080.Spec : Prop :=
  ∀ n, P6461353251571776080.a n = A144677 n

end A144677

/-! ## A144677.P11934358194945173582

`∑[A001972(2*A002264(n))]`
-/

namespace A144677.P11934358194945173582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P11934358194945173582

namespace A144677

/-- `∑[A001972(2*A002264(n))]` -/
def P11934358194945173582.Spec : Prop :=
  ∀ n, P11934358194945173582.a n = A144677 n

end A144677

/-! ## A144677.P8003127590054302461

`∑[A008795(2*A002264(n))]`
-/

namespace A144677.P8003127590054302461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P8003127590054302461

namespace A144677

/-- `∑[A008795(2*A002264(n))]` -/
def P8003127590054302461.Spec : Prop :=
  ∀ n, P8003127590054302461.a n = A144677 n

end A144677

/-! ## A144677.P2678080064039901839

`∑[A002378(A008620(n))/2]`
-/

namespace A144677.P2678080064039901839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A008620 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P2678080064039901839

namespace A144677

/-- `∑[A002378(A008620(n))/2]` -/
def P2678080064039901839.Spec : Prop :=
  ∀ n, P2678080064039901839.a n = (A144677 n : ℚ)

end A144677

/-! ## A144677.P3511519823513613688

`A000601(n)-A307872(n+1)`
-/

namespace A144677.P3511519823513613688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A307872 (n + 1)

end

end A144677.P3511519823513613688

namespace A144677

/-- `A000601(n)-A307872(n+1)` -/
def P3511519823513613688.Spec : Prop :=
  ∀ n, P3511519823513613688.a n = A144677 n

end A144677

/-! ## A144677.P3815829400922997201

`∑[∑[A142150(A004396(n)+2)]]`
-/

namespace A144677.P3815829400922997201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004396 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P3815829400922997201

namespace A144677

/-- `∑[∑[A142150(A004396(n)+2)]]` -/
def P3815829400922997201.Spec : Prop :=
  ∀ n, P3815829400922997201.a n = A144677 n

end A144677

/-! ## A144677.P331605111240037169

`∑[A008805(n-A008611(n+1))]`
-/

namespace A144677.P331605111240037169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 ((n : ℤ) - A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P331605111240037169

namespace A144677

/-- `∑[A008805(n-A008611(n+1))]` -/
def P331605111240037169.Spec : Prop :=
  ∀ n, P331605111240037169.a n = A144677 n

end A144677

/-! ## A144677.P3521884382728713201

`(A211004(n+1)+A092353(n))/2`
-/

namespace A144677.P3521884382728713201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211004 (n + 1) + A092353 n : ℚ) / 2

end

end A144677.P3521884382728713201

namespace A144677

/-- `(A211004(n+1)+A092353(n))/2` -/
def P3521884382728713201.Spec : Prop :=
  ∀ n, P3521884382728713201.a n = (A144677 n : ℚ)

end A144677

/-! ## A144677.P6663684848187628747

`∑[∑[A103221(n)]]-A307872(n+1)`
-/

namespace A144677.P6663684848187628747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307872 (n + 1)

end

end A144677.P6663684848187628747

namespace A144677

/-- `∑[∑[A103221(n)]]-A307872(n+1)` -/
def P6663684848187628747.Spec : Prop :=
  ∀ n, P6663684848187628747.a n = A144677 n

end A144677

/-! ## A144677.P8007908299632572334

`∑[∑[∑[A128615(n+1)]]]`
-/

namespace A144677.P8007908299632572334
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P8007908299632572334

namespace A144677

/-- `∑[∑[∑[A128615(n+1)]]]` -/
def P8007908299632572334.Spec : Prop :=
  ∀ n, P8007908299632572334.a n = A144677 n

end A144677

/-! ## A144677.P5261858705250386532

`∑[∑[A028242(A005131(n+1))]]`
-/

namespace A144677.P5261858705250386532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005131 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P5261858705250386532

namespace A144677

/-- `∑[∑[A028242(A005131(n+1))]]` -/
def P5261858705250386532.Spec : Prop :=
  ∀ n, P5261858705250386532.a n = A144677 n

end A144677

/-!
# A144678: Related to enumeration of quantum states (see reference for precise definition).

The programs for A144678, the canonical program `A144678.P15710978344240081634` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144678 has offset 0).

The definition of A144678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144678.P15710978344240081634

`A009531(n+5)/16+(n+5)*(2*n²+20*n+33+3*(-1)^n)/192`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144678

/-- `A009531(n+5)/16+(n+5)*(2*n²+20*n+33+3*(-1)^n)/192` -/
def P15710978344240081634.Spec : Prop :=
  ∀ n, P15710978344240081634.a n = (A144678 n : ℚ)

end A144678

/-! ## A144678.P11646983357910323870

`∑[C(floor(n/4)+2, 2)]`
-/

namespace A144678.P11646983357910323870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 4⌋ + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P11646983357910323870

namespace A144678

/-- `∑[C(floor(n/4)+2, 2)]` -/
def P11646983357910323870.Spec : Prop :=
  ∀ n, (P11646983357910323870.a n : ℤ) = A144678 n

end A144678

/-! ## A144678.P345620140512385247

`∑[A008805(floor(n/2))]`
-/

namespace A144678.P345620140512385247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P345620140512385247

namespace A144678

/-- `∑[A008805(floor(n/2))]` -/
def P345620140512385247.Spec : Prop :=
  ∀ n, P345620140512385247.a n = A144678 n

end A144678

/-! ## A144678.P15495878952064282567

`∑[A000217(∑[char[4*n]])]`
-/

namespace A144678.P15495878952064282567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P15495878952064282567

namespace A144678

/-- `∑[A000217(∑[char[4*n]])]` -/
def P15495878952064282567.Spec : Prop :=
  ∀ n, P15495878952064282567.a n = A144678 n

end A144678

/-! ## A144678.P17042011903070792233

`A008804(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A144678.P17042011903070792233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008804 n - a (n - 2)

end

end A144678.P17042011903070792233

namespace A144678

/-- `A008804(n)-a(n-2)` -/
def P17042011903070792233.Spec : Prop :=
  ∀ n, P17042011903070792233.a n = A144678 n

end A144678

/-! ## A144678.P14639039230647377877

`∑[∑[A027656(A004525(n))]]`
-/

namespace A144678.P14639039230647377877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A004525 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P14639039230647377877

namespace A144678

/-- `∑[∑[A027656(A004525(n))]]` -/
def P14639039230647377877.Spec : Prop :=
  ∀ n, P14639039230647377877.a n = A144678 n

end A144678

/-! ## A144678.P1531924814389484046

`∑[∑[A027656(A026741(n))]]`
-/

namespace A144678.P1531924814389484046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P1531924814389484046

namespace A144678

/-- `∑[∑[A027656(A026741(n))]]` -/
def P1531924814389484046.Spec : Prop :=
  ∀ n, P1531924814389484046.a n = A144678 n

end A144678

/-! ## A144678.P15909024025695555275

`∑[A000096(A002265(n))+1]`
-/

namespace A144678.P15909024025695555275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A002265 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P15909024025695555275

namespace A144678

/-- `∑[A000096(A002265(n))+1]` -/
def P15909024025695555275.Spec : Prop :=
  ∀ n, P15909024025695555275.a n = A144678 n

end A144678

/-! ## A144678.P14775371660349330920

`∑[∑[A142150(A027656(n)+1)]]`
-/

namespace A144678.P14775371660349330920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A027656 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P14775371660349330920

namespace A144678

/-- `∑[∑[A142150(A027656(n)+1)]]` -/
def P14775371660349330920.Spec : Prop :=
  ∀ n, P14775371660349330920.a n = A144678 n

end A144678

/-! ## A144678.P5698707290049455146

`∑[∑[A027656(n-A142150(n))]]`
-/

namespace A144678.P5698707290049455146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 ((n : ℤ) - A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P5698707290049455146

namespace A144678

/-- `∑[∑[A027656(n-A142150(n))]]` -/
def P5698707290049455146.Spec : Prop :=
  ∀ n, P5698707290049455146.a n = A144678 n

end A144678

/-! ## A144678.P10858885565403180331

`∑[A000124(A002265(n)+1)-1]`
-/

namespace A144678.P10858885565403180331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002265 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P10858885565403180331

namespace A144678

/-- `∑[A000124(A002265(n)+1)-1]` -/
def P10858885565403180331.Spec : Prop :=
  ∀ n, P10858885565403180331.a n = A144678 n

end A144678

/-! ## A144678.P17946053831754371702

`∪[A023855(n+1), A023857(n+1)]`
-/

namespace A144678.P17946053831754371702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144678.P17946053831754371702

namespace A144678

/-- `∪[A023855(n+1), A023857(n+1)]` -/
def P17946053831754371702.Spec : Prop :=
  ∀ n, (P17946053831754371702.a n : ℤ) = A144678 n

end A144678

/-! ## A144678.P5541759476208038266

`∪[A023856(n+1), A285998(n+1)]`
-/

namespace A144678.P5541759476208038266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144678.P5541759476208038266

namespace A144678

/-- `∪[A023856(n+1), A285998(n+1)]` -/
def P5541759476208038266.Spec : Prop :=
  ∀ n, (P5541759476208038266.a n : ℤ) = A144678 n

end A144678

/-! ## A144678.P11787897421254420051

`A000217(A002265(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A144678.P11787897421254420051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000217 (A002265 n + 1).toNat + a (n - 1)

end

end A144678.P11787897421254420051

namespace A144678

/-- `A000217(A002265(n)+1)+a(n-1)` -/
def P11787897421254420051.Spec : Prop :=
  ∀ n, P11787897421254420051.a n = A144678 n

end A144678

/-! ## A144678.P10081165196794471551

`∑[A217221(3*n+2)+A000217(A002265(n)+1)]`
-/

namespace A144678.P10081165196794471551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 (3 * n + 2) + A000217 (A002265 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P10081165196794471551

namespace A144678

/-- `∑[A217221(3*n+2)+A000217(A002265(n)+1)]` -/
def P10081165196794471551.Spec : Prop :=
  ∀ n, P10081165196794471551.a n = A144678 n

end A144678

/-! ## A144678.P10719234069960111085

`∑[∑[A027656(A057979(n+1))]]`
-/

namespace A144678.P10719234069960111085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A057979 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P10719234069960111085

namespace A144678

/-- `∑[∑[A027656(A057979(n+1))]]` -/
def P10719234069960111085.Spec : Prop :=
  ∀ n, P10719234069960111085.a n = A144678 n

end A144678

/-! ## A144678.P13581176664780188925

`∑[∑[A142150(A133622(n+2))]]`
-/

namespace A144678.P13581176664780188925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A133622 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P13581176664780188925

namespace A144678

/-- `∑[∑[A142150(A133622(n+2))]]` -/
def P13581176664780188925.Spec : Prop :=
  ∀ n, P13581176664780188925.a n = A144678 n

end A144678

/-! ## A144678.P2434517604156475824

`∑[∑[A142150(A158416(n+2))]]`
-/

namespace A144678.P2434517604156475824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A158416 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P2434517604156475824

namespace A144678

/-- `∑[∑[A142150(A158416(n+2))]]` -/
def P2434517604156475824.Spec : Prop :=
  ∀ n, P2434517604156475824.a n = A144678 n

end A144678

/-! ## A144678.P16855142508613226557

`∑[∑[A142150(A152271(n+3))]]`
-/

namespace A144678.P16855142508613226557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A152271 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P16855142508613226557

namespace A144678

/-- `∑[∑[A142150(A152271(n+3))]]` -/
def P16855142508613226557.Spec : Prop :=
  ∀ n, P16855142508613226557.a n = A144678 n

end A144678

/-! ## A144678.P8777248491849313885

`∑[A025796(abs(A097140(n))+n)]`
-/

namespace A144678.P8777248491849313885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (|A097140 n| + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144678.P8777248491849313885

namespace A144678

/-- `∑[A025796(abs(A097140(n))+n)]` -/
def P8777248491849313885.Spec : Prop :=
  ∀ n, P8777248491849313885.a n = A144678 n

end A144678

/-!
# A144679: a(n) = floor(n/5 + 1) * floor(n/5 + 2) * (3*n - 10*floor(n/5) + 3)/6.

The programs for A144679, the canonical program `A144679.P288754467809170062` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144679 has offset 0).

The definition of A144679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144679.P288754467809170062

`floor(n/5+1)*floor(n/5+2)*(3*n-10*floor(n/5)+3)/6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144679

/-- `floor(n/5+1)*floor(n/5+2)*(3*n-10*floor(n/5)+3)/6` -/
def P288754467809170062.Spec : Prop :=
  ∀ n, P288754467809170062.a n = (A144679 n : ℚ)

end A144679

/-! ## A144679.P6862862615956332652

`∑[C(floor(n/5)+2, 2)]`
-/

namespace A144679.P6862862615956332652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 5⌋ + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P6862862615956332652

namespace A144679

/-- `∑[C(floor(n/5)+2, 2)]` -/
def P6862862615956332652.Spec : Prop :=
  ∀ n, (P6862862615956332652.a n : ℤ) = A144679 n

end A144679

/-! ## A144679.P2156429526540170290

`∑[A000217(∑[char[5*n]])]`
-/

namespace A144679.P2156429526540170290
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P2156429526540170290

namespace A144679

/-- `∑[A000217(∑[char[5*n]])]` -/
def P2156429526540170290.Spec : Prop :=
  ∀ n, P2156429526540170290.a n = A144679 n

end A144679

/-! ## A144679.P16989746735746014461

`∑[A000096(A002266(n))+1]`
-/

namespace A144679.P16989746735746014461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A002266 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P16989746735746014461

namespace A144679

/-- `∑[A000096(A002266(n))+1]` -/
def P16989746735746014461.Spec : Prop :=
  ∀ n, P16989746735746014461.a n = A144679 n

end A144679

/-! ## A144679.P11984094302510270357

`∑[A000124(A047253(n+1)-n)-1]`
-/

namespace A144679.P11984094302510270357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A047253 (n + 1) - (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P11984094302510270357

namespace A144679

/-- `∑[A000124(A047253(n+1)-n)-1]` -/
def P11984094302510270357.Spec : Prop :=
  ∀ n, P11984094302510270357.a n = A144679 n

end A144679

/-! ## A144679.P1728955451478203081

`A343608(n+11)`
-/

namespace A144679.P1728955451478203081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343608 (n + 11)

end

end A144679.P1728955451478203081

namespace A144679

/-- `A343608(n+11)` -/
def P1728955451478203081.Spec : Prop :=
  ∀ n, P1728955451478203081.a n = A144679 n

end A144679

/-! ## A144679.P5899125738209951756

`∑[A025810(2*n)]`
-/

namespace A144679.P5899125738209951756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P5899125738209951756

namespace A144679

/-- `∑[A025810(2*n)]` -/
def P5899125738209951756.Spec : Prop :=
  ∀ n, P5899125738209951756.a n = A144679 n

end A144679

/-! ## A144679.P15848233882033285509

`A025810(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A144679.P15848233882033285509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025810 (n + n) + a (n - 1)

end

end A144679.P15848233882033285509

namespace A144679

/-- `A025810(n+n)+a(n-1)` -/
def P15848233882033285509.Spec : Prop :=
  ∀ n, P15848233882033285509.a n = A144679 n

end A144679

/-! ## A144679.P5461819174572316769

`∑[∑[A025862(2*n)-A025862(2*n+1)]]`
-/

namespace A144679.P5461819174572316769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 (2 * n) - A025862 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P5461819174572316769

namespace A144679

/-- `∑[∑[A025862(2*n)-A025862(2*n+1)]]` -/
def P5461819174572316769.Spec : Prop :=
  ∀ n, P5461819174572316769.a n = A144679 n

end A144679

/-! ## A144679.P2626142608006349283

`∑[A059995(2*n)+A000124(A059995(2*n))]`
-/

namespace A144679.P2626142608006349283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * n) + A000124 (A059995 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P2626142608006349283

namespace A144679

/-- `∑[A059995(2*n)+A000124(A059995(2*n))]` -/
def P2626142608006349283.Spec : Prop :=
  ∀ n, P2626142608006349283.a n = A144679 n

end A144679

/-! ## A144679.P4446065185480453902

`A029175(2*n+3)+A029175(2*n)`
-/

namespace A144679.P4446065185480453902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029175 (2 * n + 3) + A029175 (2 * n)

end

end A144679.P4446065185480453902

namespace A144679

/-- `A029175(2*n+3)+A029175(2*n)` -/
def P4446065185480453902.Spec : Prop :=
  ∀ n, P4446065185480453902.a n = A144679 n

end A144679

/-! ## A144679.P334867265845683100

`∑[A025884(2*n)+A025859(2*n+3)]`
-/

namespace A144679.P334867265845683100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 (2 * n) + A025859 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P334867265845683100

namespace A144679

/-- `∑[A025884(2*n)+A025859(2*n+3)]` -/
def P334867265845683100.Spec : Prop :=
  ∀ n, P334867265845683100.a n = A144679 n

end A144679

/-!
# A144680: Triangle read by rows, lower half of an array formed by A004736 * A144328 (transform).

The programs for A144680, the canonical program `A144680.P12713142862218865544` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144680 has offset 1).

The definition of A144680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144680.P12713142862218865544

`A002024(n+1)+A177877(n)-A141419(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144680

/-- `A002024(n+1)+A177877(n)-A141419(n+1)` -/
def P12713142862218865544.Spec : Prop :=
  ∀ n, P12713142862218865544.a n = A144680 (n + 1)

theorem P12713142862218865544.correct : P12713142862218865544.Spec := by
  intro n
  simp only [A144680, Nat.add_sub_cancel]

end A144680

/-! ## A144680.P12406899454472744559

`A003056(n)+1-(A141419(n+1)-A177877(n))`
-/

namespace A144680.P12406899454472744559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1 - (A141419 (n + 1) - A177877 n)

end

end A144680.P12406899454472744559

namespace A144680

/-- `A003056(n)+1-(A141419(n+1)-A177877(n))` -/
def P12406899454472744559.Spec : Prop :=
  ∀ n, P12406899454472744559.a n = A144680 (n + 1)

end A144680

/-! ## A144680.P14106503683495798235

`A177877(n)-A049780(A061579(n))`
-/

namespace A144680.P14106503683495798235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 n - A049780 (A061579 n).toNat

end

end A144680.P14106503683495798235

namespace A144680

/-- `A177877(n)-A049780(A061579(n))` -/
def P14106503683495798235.Spec : Prop :=
  ∀ n, P14106503683495798235.a n = A144680 (n + 1)

end A144680

/-! ## A144680.P16984908277619625920

`A003991(A127739(n+1))+A177877(n)-A141419(n+1)`
-/

namespace A144680.P16984908277619625920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A127739 (n + 1)).toNat + (A177877 n - A141419 (n + 1))

end

end A144680.P16984908277619625920

namespace A144680

/-- `A003991(A127739(n+1))+A177877(n)-A141419(n+1)` -/
def P16984908277619625920.Spec : Prop :=
  ∀ n, P16984908277619625920.a n = A144680 (n + 1)

end A144680

/-! ## A144680.P13564342806486427588

`A177877(A007401(n+1))-A209297(n+1)`
-/

namespace A144680.P13564342806486427588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 (A007401 (n + 1)).toNat - A209297 (n + 1)

end

end A144680.P13564342806486427588

namespace A144680

/-- `A177877(A007401(n+1))-A209297(n+1)` -/
def P13564342806486427588.Spec : Prop :=
  ∀ n, P13564342806486427588.a n = A144680 (n + 1)

end A144680

/-!
# A144681: E.g.f. A(x) satisfies A(x/A(x)) = exp(x).

The programs for A144681, there is no canonical definition to state claims against.
-/

/-! ## A144681.P15009839827359101840

`and(A039723(A305963(n)), A305963(n))`
-/

namespace A144681.P15009839827359101840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039723 (A305963 n).toNat) (A305963 n)

end

end A144681.P15009839827359101840

/-! ## A144681.P14016568981302390461

`and(A284668(A346593(n+1)), A305963(n))`
-/

namespace A144681.P14016568981302390461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284668 (A346593 (n + 1)).toNat) (A305963 n)

end

end A144681.P14016568981302390461

/-!
# A144682: E.g.f. satisfies: A(x/A(x)^2) = exp(x).

The programs for A144682, there is no canonical definition to state claims against.
-/

/-! ## A144682.P16086075109073862400

`A111563(2^n)%(2^n+7^n+1)`
-/

namespace A144682.P16086075109073862400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111563 (2 ^ n)) (2 ^ n + (7 ^ n + 1) : ℤ)

end

end A144682.P16086075109073862400

/-!
# A144683: E.g.f. satisfies: A(x/A(x)^3) = exp(x).

The programs for A144683, there is no canonical definition to state claims against.
-/

/-! ## A144683.P14867590733909113718

`A257302(A084941(n))+A122197(n+1)`
-/

namespace A144683.P14867590733909113718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257302 (A084941 n).toNat + A122197 (n + 1)

end

end A144683.P14867590733909113718

/-!
# A144684: E.g.f. satisfies: A(x/A(x)^4) = exp(x).

The programs for A144684, there is no canonical definition to state claims against.
-/

/-! ## A144684.P7880004694693776782

`A330983(A000040(n%2+2*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A144684.P7880004694693776782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A330983 (A000040 (((n % 2 : ℕ) : ℤ) + 2 * a (n - 1)).toNat).toNat

end

end A144684.P7880004694693776782

/-!
# A144685: Size of acyclic domain of size n based on the alternating scheme.

The programs for A144685, there is no canonical definition to state claims against.
-/

/-! ## A144685.P3027680589472085640

`A248170(A150190(n))`
-/

namespace A144685.P3027680589472085640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A150190 n).toNat

end

end A144685.P3027680589472085640

/-! ## A144685.P16298843014384353304

`A054404(A384600(n+1))`
-/

namespace A144685.P16298843014384353304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A384600 (n + 1)).toNat

end

end A144685.P16298843014384353304

/-! ## A144685.P17247776593077828903

`A085584(A365822(n+1))`
-/

namespace A144685.P17247776593077828903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085584 (A365822 (n + 1)).toNat

end

end A144685.P17247776593077828903

/-! ## A144685.P14267153095950799061

`filter[A085584(n+1), A217206(#)]`
-/

namespace A144685.P14267153095950799061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217206 (f1 j).toNat = 1) n)

end

end A144685.P14267153095950799061

/-!
# A144687: Size of acyclic domain of size n based on the replacement scheme.

The programs for A144687, there is no canonical definition to state claims against.
-/

/-! ## A144687.P9202494714381969026

`A221945(n+1)+A221916(A221950(n))`
-/

namespace A144687.P9202494714381969026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221945 (n + 1) + A221916 (A221950 n).toNat

end

end A144687.P9202494714381969026

/-! ## A144687.P16734164619042357431

`A221945(n+1)+A221916(A221949(n+1))`
-/

namespace A144687.P16734164619042357431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221945 (n + 1) + A221916 (A221949 (n + 1)).toNat

end

end A144687.P16734164619042357431

/-! ## A144687.P4150821626559440397

`A340788(A123975(2*(n+1))+A046682(n))`
-/

namespace A144687.P4150821626559440397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340788 (A123975 (2 * (n + 1)) + A046682 n).toNat

end

end A144687.P4150821626559440397

/-!
# A144688: "Magic" numbers: all numbers from 0 to 9 are magic; a number >= 10 is magic if it is divisible by the number of its digits and the number obtained by deleting the final digit is also magic.

The programs for A144688, there is no canonical definition to state claims against.
-/

/-! ## A144688.P3395763332894378355

`A011655(Δ[n^3])*A098952(n+1)`
-/

namespace A144688.P3395763332894378355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A098952 (n + 1)

end

end A144688.P3395763332894378355

/-! ## A144688.P13123260822140053132

`A057427(A305701(n+1))*A098952(n+1)`
-/

namespace A144688.P13123260822140053132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A305701 (n + 1)).toNat * A098952 (n + 1)

end

end A144688.P13123260822140053132

/-! ## A144688.P3456970294894050789

`A057427(A018855(n+2))*A098952(n+1)`
-/

namespace A144688.P3456970294894050789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A018855 (n + 2)).toNat * A098952 (n + 1)

end

end A144688.P3456970294894050789

/-! ## A144688.P9394064216379500720

`A057427(A359755(n+3))*A098952(n+1)`
-/

namespace A144688.P9394064216379500720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A359755 (n + 3)).toNat * A098952 (n + 1)

end

end A144688.P9394064216379500720

/-! ## A144688.P14479249081172776084

`gcd(A111791(n+1), A165596(n))*A098952(n+1)`
-/

namespace A144688.P14479249081172776084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A111791 (n + 1)) (A165596 n) : ℤ) * A098952 (n + 1)

end

end A144688.P14479249081172776084

/-! ## A144688.P11970815662793609057

`A098952(n+1)+A000007(A174522(n))`
-/

namespace A144688.P11970815662793609057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1) + A000007 (A174522 n).toNat

end

end A144688.P11970815662793609057

/-! ## A144688.P12957228003115728479

`A098952(n+1)+A000007(A022005(n+1))`
-/

namespace A144688.P12957228003115728479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1) + A000007 (A022005 (n + 1)).toNat

end

end A144688.P12957228003115728479

/-! ## A144688.P1849563630843272942

`A339813(A339775(n+1))+A098952(n+1)`
-/

namespace A144688.P1849563630843272942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339813 (A339775 (n + 1)).toNat + A098952 (n + 1)

end

end A144688.P1849563630843272942

/-! ## A144688.P11752365085541088239

`A164836(n+1)+A000007(A326843(n))`
-/

namespace A144688.P11752365085541088239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (n + 1) + A000007 (A326843 n).toNat

end

end A144688.P11752365085541088239

/-! ## A144688.P12536136469089825699

`lt[A272049(n), A219529(A188158(n+1))]`
-/

namespace A144688.P12536136469089825699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 (A188158 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144688.P12536136469089825699

/-!
# A144690: Limit of the coefficient of x^(2^m+n) in B(x)^(n+1) as m grows, where B(x) = Sum_{k>=0} x^(2^k).

The programs for A144690, there is no canonical definition to state claims against.
-/

/-! ## A144690.P3814443889097563384

`(n+1)*A144691(n)`
-/

namespace A144690.P3814443889097563384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A144691 n

end

end A144690.P3814443889097563384

/-! ## A144690.P11011366698813155430

`gcd(xor(n, -1)*A144691(n), A151935(n))`
-/

namespace A144690.P11011366698813155430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1) * A144691 n) (A151935 n)

end

end A144690.P11011366698813155430

/-! ## A144690.P12908191218890075058

`-(xor(n, -1)*A144691(n)*A033999(n)²)`
-/

namespace A144690.P12908191218890075058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A144691 n * A033999 n ^ 2)

end

end A144690.P12908191218890075058

/-! ## A144690.P8358999324037076615

`A144691(n)*A144693(A000124(n))`
-/

namespace A144690.P8358999324037076615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144691 n * A144693 (A000124 n).toNat

end

end A144690.P8358999324037076615

/-! ## A144690.P6363349167073678777

`A144691(n)*A181988(A005408(n))`
-/

namespace A144690.P6363349167073678777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144691 n * A181988 (A005408 n).toNat

end

end A144690.P6363349167073678777

/-!
# A144691: Limit of the coefficient of x^(2^m+n) in B(x)^(n+1)/(n+1) as m grows, where B(x) = Sum_{k>=0} x^(2^k).

The programs for A144691, there is no canonical definition to state claims against.
-/

/-! ## A144691.P8675386043800162415

`A144690(n)/(n+1)`
-/

namespace A144691.P8675386043800162415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144690 n : ℚ) / (n + 1 : ℚ)

end

end A144691.P8675386043800162415

/-! ## A144691.P9697281949320803057

`floor(A144690(n)/A008619(2*n))`
-/

namespace A144691.P9697281949320803057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144690 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A144691.P9697281949320803057

/-! ## A144691.P2944293926352538382

`abs(A144690(n)/A008619(2*n)*A033999(n))`
-/

namespace A144691.P2944293926352538382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A144690 n : ℚ) / (A008619 (2 * n) : ℚ) * (A033999 n : ℚ)|

end

end A144691.P2944293926352538382

/-! ## A144691.P3448972975917990605

`A144690(n)/A008619(2*n)*A020985(n)²`
-/

namespace A144691.P3448972975917990605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144690 n : ℚ) / (A008619 (2 * n) : ℚ) * (A020985 n ^ 2 : ℚ)

end

end A144691.P3448972975917990605

/-! ## A144691.P6433053778259154249

`A144690(n)/A008619(2*n)*A007318(∑[n])`
-/

namespace A144691.P6433053778259154249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144690 n : ℚ) / (A008619 (2 * n) : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A144691.P6433053778259154249

/-!
# A144692: G.f.: A(x) = x/Series_Reversion[x*G(x)] where A(x*G(x)) = G(x) = g.f. of A144691.

The programs for A144692, there is no canonical definition to state claims against.
-/

/-! ## A144692.P433984152530222985

`and(A001818(n), A025783(A270294(n)))`
-/

namespace A144692.P433984152530222985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001818 n) (A025783 (A270294 n).toNat)

end

end A144692.P433984152530222985

/-! ## A144692.P18423734173424297788

`A061383(A073048(n+1))%A038041(3*n+2)`
-/

namespace A144692.P18423734173424297788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061383 (A073048 (n + 1)).toNat) (A038041 (3 * n + 2))

end

end A144692.P18423734173424297788

/-!
# A144693: Triangle read by rows, A000012 * (3*A144328 - 2*A000012), where A000012 means a lower triangular matrix of all 1's.

The programs for A144693, the canonical program `A144693.P3964769176750840430` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144693 has offset 1).

The definition of A144693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144693.P12164911023053167631

`A296180(abs(1-n))+A025581(n)`
-/

namespace A144693.P12164911023053167631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296180 |1 - (n : ℤ)|.toNat + A025581 n

end

end A144693.P12164911023053167631

namespace A144693

/-- `A296180(abs(1-n))+A025581(n)` -/
def P12164911023053167631.Spec : Prop :=
  ∀ n, P12164911023053167631.a n = A144693 (n + 1)

end A144693

/-! ## A144693.P8457631897698799688

`2*A144337(n+1)-A144329(n+1)`
-/

namespace A144693.P8457631897698799688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144337 (n + 1) - A144329 (n + 1)

end

end A144693.P8457631897698799688

namespace A144693

/-- `2*A144337(n+1)-A144329(n+1)` -/
def P8457631897698799688.Spec : Prop :=
  ∀ n, P8457631897698799688.a n = A144693 (n + 1)

end A144693

/-! ## A144693.P3964769176750840430

`A101468(A066182(n+1)-A002024(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144693

/-- `A101468(A066182(n+1)-A002024(n+1))` -/
def P3964769176750840430.Spec : Prop :=
  ∀ n, P3964769176750840430.a n = A144693 (n + 1)

theorem P3964769176750840430.correct : P3964769176750840430.Spec := by
  intro n
  simp only [A144693, Nat.add_sub_cancel]

end A144693

/-! ## A144693.P13258405213771219699

`A000463(A099375(n))*A048785(A232089(n))`
-/

namespace A144693.P13258405213771219699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat * A048785 (A232089 n).toNat

end

end A144693.P13258405213771219699

namespace A144693

/-- `A000463(A099375(n))*A048785(A232089(n))` -/
def P13258405213771219699.Spec : Prop :=
  ∀ n, P13258405213771219699.a n = A144693 (n + 1)

end A144693

/-! ## A144693.P7787055757033455499

`A004736(n+1)*A048785(A026741(A059268(n)))`
-/

namespace A144693.P7787055757033455499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A048785 (A026741 (A059268 n).toNat).toNat

end

end A144693.P7787055757033455499

namespace A144693

/-- `A004736(n+1)*A048785(A026741(A059268(n)))` -/
def P7787055757033455499.Spec : Prop :=
  ∀ n, P7787055757033455499.a n = A144693 (n + 1)

end A144693

/-! ## A144693.P1845305273329815706

`∑{d}[A153279(n), gcd(3, #)]`
-/

namespace A144693.P1845305273329815706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 3 d

end

end A144693.P1845305273329815706

namespace A144693

/-- `∑{d}[A153279(n), gcd(3, #)]` -/
def P1845305273329815706.Spec : Prop :=
  ∀ n, (P1845305273329815706.a n : ℤ) = A144693 (n + 1)

end A144693

/-! ## A144693.P15977329625550439128

`A048785(A232089(n))*A246277(A246278(n+2))`
-/

namespace A144693.P15977329625550439128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A232089 n).toNat * A246277 (A246278 (n + 2)).toNat

end

end A144693.P15977329625550439128

namespace A144693

/-- `A048785(A232089(n))*A246277(A246278(n+2))` -/
def P15977329625550439128.Spec : Prop :=
  ∀ n, P15977329625550439128.a n = A144693 (n + 1)

end A144693

/-!
# A144695: Numbers n such that sigma_1(n)/sigma_0(n) = c^2, c an integer.

The programs for A144695, there is no canonical definition to state claims against.
-/

/-! ## A144695.P1535233416219156848

`A327830(comp[C(7*n, 2)])`
-/

namespace A144695.P1535233416219156848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A144695.P1535233416219156848

/-! ## A144695.P4259066075145888379

`A327830(comp[7*(n²-1)])`
-/

namespace A144695.P4259066075145888379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n ^ 2 : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A144695.P4259066075145888379

/-! ## A144695.P7212406292143475930

`filter[A327830(n+1), A168181(#)]`
-/

namespace A144695.P7212406292143475930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A144695.P7212406292143475930

/-! ## A144695.P14542318486469389530

`filter[A327830(n+1), A245656(#)]`
-/

namespace A144695.P14542318486469389530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A144695.P14542318486469389530

/-! ## A144695.P14463791511193035514

`record[A327830(n+1)-A186746(A186746(n))]`
-/

namespace A144695.P14463791511193035514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (n + 1) - A186746 (A186746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144695.P14463791511193035514

/-!
# A144696: Triangle of 2-Eulerian numbers.

The programs for A144696, there is no canonical definition to state claims against.
-/

/-! ## A144696.P6135843574912578198

`A199335(comp[∑[n]])/2`
-/

namespace A144696.P6135843574912578198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A144696.P6135843574912578198

/-! ## A144696.P486837833904168521

`A120434(A061579(n)+2)/2`
-/

namespace A144696.P486837833904168521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120434 (A061579 n + 2).toNat : ℚ) / 2

end

end A144696.P486837833904168521

/-! ## A144696.P16217576393487142844

`A120434(A038722(n+1)+1)/2`
-/

namespace A144696.P16217576393487142844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120434 (A038722 (n + 1) + 1).toNat : ℚ) / 2

end

end A144696.P16217576393487142844

/-! ## A144696.P9070791202447776809

`A004526(A199335(comp[∑[n]]))`
-/

namespace A144696.P9070791202447776809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A199335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A144696.P9070791202447776809

