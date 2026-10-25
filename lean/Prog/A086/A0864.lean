import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A086400: (1/p)*(M(p)-1) where p runs through the odd primes and M(p) = A001006(p) is the p-th Motzkin number.

The programs for A086400, there is no canonical definition to state claims against.
-/

/-! ## A086400.P3380821497009148519

`A175954(A065091(n+1))-1`
-/

namespace A086400.P3380821497009148519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175954 (A065091 (n + 1)).toNat - 1

end

end A086400.P3380821497009148519

/-! ## A086400.P5785898567324958736

`A175955(p?[Δ[n²]])`
-/

namespace A086400.P5785898567324958736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175955 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086400.P5785898567324958736

/-! ## A086400.P17773476242999513039

`record[∏{p}[n, A175955(#)]]`
-/

namespace A086400.P17773476242999513039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A175955 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086400.P17773476242999513039

/-! ## A086400.P15322047614925837012

`A175955(A002556(n+1))`
-/

namespace A086400.P15322047614925837012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175955 (A002556 (n + 1)).toNat

end

end A086400.P15322047614925837012

/-! ## A086400.P3989610605774387432

`A175955(A007703(n+1))`
-/

namespace A086400.P3989610605774387432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175955 (A007703 (n + 1)).toNat

end

end A086400.P3989610605774387432

/-!
# A086401: a(n) = M(n) (mod n) where M(n) = A001006(n) is the n-th Motzkin number.

The programs for A086401, the canonical program `A086401.P15232780058223989996` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086401 has offset 1).

The definition of A086401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086401.P15232780058223989996

`A001006(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086401

/-- `A001006(n+1)%(n+1)` -/
def P15232780058223989996.Spec : Prop :=
  ∀ n, P15232780058223989996.a n = A086401 (n + 1)

theorem P15232780058223989996.correct : P15232780058223989996.Spec := by
  intro n
  simp only [A086401, Nat.add_sub_cancel]

end A086401

/-! ## A086401.P16331384098768754028

`A086246(n+3)%(n+1)`
-/

namespace A086401.P16331384098768754028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 3)) (n + 1 : ℤ)

end

end A086401.P16331384098768754028

namespace A086401

/-- `A086246(n+3)%(n+1)` -/
def P16331384098768754028.Spec : Prop :=
  ∀ n, P16331384098768754028.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P6939392178909952612

`A168049(n+3)%(n+1)`
-/

namespace A086401.P6939392178909952612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 3)) (n + 1 : ℤ)

end

end A086401.P6939392178909952612

namespace A086401

/-- `A168049(n+3)%(n+1)` -/
def P6939392178909952612.Spec : Prop :=
  ∀ n, P6939392178909952612.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P14486503104759925653

`A189912(n+1)%(n+1)`
-/

namespace A086401.P14486503104759925653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189912 (n + 1)) (n + 1 : ℤ)

end

end A086401.P14486503104759925653

namespace A086401

/-- `A189912(n+1)%(n+1)` -/
def P14486503104759925653.Spec : Prop :=
  ∀ n, P14486503104759925653.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P9859256474688247245

`A025179(n+2)%(n+1)`
-/

namespace A086401.P9859256474688247245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025179 (n + 2)) (n + 1 : ℤ)

end

end A086401.P9859256474688247245

namespace A086401

/-- `A025179(n+2)%(n+1)` -/
def P9859256474688247245.Spec : Prop :=
  ∀ n, P9859256474688247245.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P12226393980288299306

`A005717(n+2)%(n+1)`
-/

namespace A086401.P12226393980288299306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005717 (n + 2)) (n + 1 : ℤ)

end

end A086401.P12226393980288299306

namespace A086401

/-- `A005717(n+2)%(n+1)` -/
def P12226393980288299306.Spec : Prop :=
  ∀ n, P12226393980288299306.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P7493205447455508796

`A025566(n+3)%(n+1)`
-/

namespace A086401.P7493205447455508796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025566 (n + 3)) (n + 1 : ℤ)

end

end A086401.P7493205447455508796

namespace A086401

/-- `A025566(n+3)%(n+1)` -/
def P7493205447455508796.Spec : Prop :=
  ∀ n, P7493205447455508796.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P5853057906909127793

`A261785(n+1)%(n+1)`
-/

namespace A086401.P5853057906909127793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261785 (n + 1)) (n + 1 : ℤ)

end

end A086401.P5853057906909127793

namespace A086401

/-- `A261785(n+1)%(n+1)` -/
def P5853057906909127793.Spec : Prop :=
  ∀ n, P5853057906909127793.a n = A086401 (n + 1)

end A086401

/-! ## A086401.P4341940990470198844

`A294573(n+1)%(n+1)`
-/

namespace A086401.P4341940990470198844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294573 (n + 1)) (n + 1 : ℤ)

end

end A086401.P4341940990470198844

namespace A086401

/-- `A294573(n+1)%(n+1)` -/
def P4341940990470198844.Spec : Prop :=
  ∀ n, P4341940990470198844.a n = A086401 (n + 1)

end A086401

/-!
# A086402: Nontrivial numbers which are prime and yield another prime when their digits are sorted in descending order.

The programs for A086402, there is no canonical definition to state claims against.
-/

/-! ## A086402.P8234347413172406371

`∩[A211655(n+1), comp[A004186(n)]]`
-/

namespace A086402.P8234347413172406371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A086402.P8234347413172406371

/-! ## A086402.P4525594353638851917

`∩[A166681(n+1), A211655(n+1)]`
-/

namespace A086402.P4525594353638851917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086402.P4525594353638851917

/-! ## A086402.P17831021070129605666

`∩[A166681(n+1), A371653(n+1)]`
-/

namespace A086402.P17831021070129605666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086402.P17831021070129605666

/-! ## A086402.P17938484128522313349

`∩[A211655(n+5), lt[n, A004186(n)]]`
-/

namespace A086402.P17938484128522313349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A086402.P17938484128522313349

/-! ## A086402.P3492990000368312398

`p?[A000040(n+1)%A014963(A028906(n+1))]`
-/

namespace A086402.P3492990000368312398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A014963 (A028906 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086402.P3492990000368312398

/-!
# A086403: Numerators in the convergents of the continued fraction representation of (e-1)/(e+1).

The programs for A086403, the canonical program `A086403.P9226686726839404932` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086403 has offset 1).

The definition of A086403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086403.P9226686726839404932

`(4*(n+1)-2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086403

/-- `(4*(n+1)-2)*a(n-1)+a(n-2)` -/
def P9226686726839404932.Spec : Prop :=
  ∀ n, P9226686726839404932.a n = A086403 (n + 1)

theorem P9226686726839404932.correct : P9226686726839404932.Spec := by
  intro n
  simp only [A086403, Nat.add_sub_cancel]

end A086403

/-! ## A086403.P11222876857389285741

`Δ[A105747(n)]-A079165(n+1)`
-/

namespace A086403.P11222876857389285741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A079165 (n + 1)

end

end A086403.P11222876857389285741

namespace A086403

/-- `Δ[A105747(n)]-A079165(n+1)` -/
def P11222876857389285741.Spec : Prop :=
  ∀ n, P11222876857389285741.a n = A086403 (n + 1)

end A086403

/-! ## A086403.P12123795760903277629

`A001517(n+1)-A079165(n+1)`
-/

namespace A086403.P12123795760903277629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001517 (n + 1) - A079165 (n + 1)

end

end A086403.P12123795760903277629

namespace A086403

/-- `A001517(n+1)-A079165(n+1)` -/
def P12123795760903277629.Spec : Prop :=
  ∀ n, P12123795760903277629.a n = A086403 (n + 1)

end A086403

/-! ## A086403.P5052316142628850797

`A080893(n+2)-A079165(n+1)`
-/

namespace A086403.P5052316142628850797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080893 (n + 2) - A079165 (n + 1)

end

end A086403.P5052316142628850797

namespace A086403

/-- `A080893(n+2)-A079165(n+1)` -/
def P5052316142628850797.Spec : Prop :=
  ∀ n, P5052316142628850797.a n = A086403 (n + 1)

end A086403

/-! ## A086403.P5937884780437760185

`A079165(n+1)-abs(A002119(n+1))`
-/

namespace A086403.P5937884780437760185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079165 (n + 1) - |A002119 (n + 1)|

end

end A086403.P5937884780437760185

namespace A086403

/-- `A079165(n+1)-abs(A002119(n+1))` -/
def P5937884780437760185.Spec : Prop :=
  ∀ n, P5937884780437760185.a n = A086403 (n + 1)

end A086403

/-! ## A086403.P16706256810244343084

`Δ[A105747(n)-A079165(n)]-A079165(n)`
-/

namespace A086403.P16706256810244343084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105747 n - A079165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A079165 n

end

end A086403.P16706256810244343084

namespace A086403

/-- `Δ[A105747(n)-A079165(n)]-A079165(n)` -/
def P16706256810244343084.Spec : Prop :=
  ∀ n, P16706256810244343084.a n = A086403 (n + 1)

end A086403

/-!
# A086405: Row T(n,3) of number array A086404.

The programs for A086405, the canonical program `A086405.P4485142873803144911` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086405 has offset 0).

The definition of A086405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086405.P4485142873803144911

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086405

/-- `6*(a(n-1)-a(n-2))` -/
def P4485142873803144911.Spec : Prop :=
  ∀ n, P4485142873803144911.a n = A086405 n

theorem P4485142873803144911.correct : P4485142873803144911.Spec := by
  intro n
  simp only [A086405]

end A086405

/-! ## A086405.P15371117546391844609

`ogf((1-2x)/(1-6x+6x^2))`
-/

namespace A086405.P15371117546391844609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 6] n

end

end A086405.P15371117546391844609

namespace A086405

/-- `ogf((1-2x)/(1-6x+6x^2))` -/
def P15371117546391844609.Spec : Prop :=
  ∀ n, P15371117546391844609.a n = A086405 n

end A086405

/-! ## A086405.P965604493741152572

`Δ[A094433(n+1)]`
-/

namespace A086405.P965604493741152572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086405.P965604493741152572

namespace A086405

/-- `Δ[A094433(n+1)]` -/
def P965604493741152572.Spec : Prop :=
  ∀ n, P965604493741152572.a n = A086405 n

end A086405

/-! ## A086405.P14688440547388033047

`A080879(n)*A166552(n+1)`
-/

namespace A086405.P14688440547388033047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080879 n * A166552 (n + 1)

end

end A086405.P14688440547388033047

namespace A086405

/-- `A080879(n)*A166552(n+1)` -/
def P14688440547388033047.Spec : Prop :=
  ∀ n, P14688440547388033047.a n = A086405 n

end A086405

/-! ## A086405.P7197608964574566086

`∑[A094434(n+1)+A094433(n)]`
-/

namespace A086405.P7197608964574566086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086405.P7197608964574566086

namespace A086405

/-- `∑[A094434(n+1)+A094433(n)]` -/
def P7197608964574566086.Spec : Prop :=
  ∀ n, P7197608964574566086.a n = A086405 n

end A086405

/-! ## A086405.P11117041375688073796

`A094434(n+1)+A094433(n+1)`
-/

namespace A086405.P11117041375688073796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A094433 (n + 1)

end

end A086405.P11117041375688073796

namespace A086405

/-- `A094434(n+1)+A094433(n+1)` -/
def P11117041375688073796.Spec : Prop :=
  ∀ n, P11117041375688073796.a n = A086405 n

end A086405

/-! ## A086405.P17104726762677069846

`A206948(n+1)+A012781(n+1)`
-/

namespace A086405.P17104726762677069846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206948 (n + 1) + A012781 (n + 1)

end

end A086405.P17104726762677069846

namespace A086405

/-- `A206948(n+1)+A012781(n+1)` -/
def P17104726762677069846.Spec : Prop :=
  ∀ n, P17104726762677069846.a n = A086405 n

end A086405

/-! ## A086405.P8648411251108750438

`A094433(n+2)-A094433(n+1)`
-/

namespace A086405.P8648411251108750438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 2) - A094433 (n + 1)

end

end A086405.P8648411251108750438

namespace A086405

/-- `A094433(n+2)-A094433(n+1)` -/
def P8648411251108750438.Spec : Prop :=
  ∀ n, P8648411251108750438.a n = A086405 n

end A086405

/-! ## A086405.P17962099388734822925

`A083881(n)+A094434(n+1)/2`
-/

namespace A086405.P17962099388734822925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083881 n : ℚ) + (A094434 (n + 1) : ℚ) / 2

end

end A086405.P17962099388734822925

namespace A086405

/-- `A083881(n)+A094434(n+1)/2` -/
def P17962099388734822925.Spec : Prop :=
  ∀ n, P17962099388734822925.a n = (A086405 n : ℚ)

end A086405

/-! ## A086405.P14477072817385822860

`Δ[A080876(n+1)*A182522(n+1)]`
-/

namespace A086405.P14477072817385822860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080876 (n + 1) * A182522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086405.P14477072817385822860

namespace A086405

/-- `Δ[A080876(n+1)*A182522(n+1)]` -/
def P14477072817385822860.Spec : Prop :=
  ∀ n, P14477072817385822860.a n = A086405 n

end A086405

/-! ## A086405.P13981826765573347158

`∑[A094434(A028310(n))+A083881(n)]`
-/

namespace A086405.P13981826765573347158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (A028310 n).toNat + A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086405.P13981826765573347158

namespace A086405

/-- `∑[A094434(A028310(n))+A083881(n)]` -/
def P13981826765573347158.Spec : Prop :=
  ∀ n, P13981826765573347158.a n = A086405 n

end A086405

/-! ## A086405.P10983315305514289321

`A277761(n+1)+A277761(n+1)+A277761(n+2)`
-/

namespace A086405.P10983315305514289321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277761 (n + 1) + (A277761 (n + 1) + A277761 (n + 2))

end

end A086405.P10983315305514289321

namespace A086405

/-- `A277761(n+1)+A277761(n+1)+A277761(n+2)` -/
def P10983315305514289321.Spec : Prop :=
  ∀ n, P10983315305514289321.a n = A086405 n

end A086405

/-! ## A086405.P2084337951805069220

`((1+sqrt(3))*(3+sqrt(3))^n-(1-sqrt(3))*(3-sqrt(3))^n)/sqrt(12)`
-/

namespace A086405.P2084337951805069220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) * (3 + Real.sqrt (3 : ℝ)) ^ n - (1 - Real.sqrt (3 : ℝ)) * (3 - Real.sqrt (3 : ℝ)) ^ n) / Real.sqrt (12 : ℝ)

end

end A086405.P2084337951805069220

namespace A086405

/-- `((1+sqrt(3))*(3+sqrt(3))^n-(1-sqrt(3))*(3-sqrt(3))^n)/sqrt(12)` -/
def P2084337951805069220.Spec : Prop :=
  ∀ n, P2084337951805069220.a n = (A086405 n : ℝ)

end A086405

/-! ## A086405.P13652463692606684587

`A030192(n)-A094434(n+1)`
-/

namespace A086405.P13652463692606684587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n - A094434 (n + 1)

end

end A086405.P13652463692606684587

namespace A086405

/-- `A030192(n)-A094434(n+1)` -/
def P13652463692606684587.Spec : Prop :=
  ∀ n, P13652463692606684587.a n = A086405 n

end A086405

/-! ## A086405.P508755495893358937

`2*A140766(n+1)-∑[A140766(n+1)]`
-/

namespace A086405.P508755495893358937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140766 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086405.P508755495893358937

namespace A086405

/-- `2*A140766(n+1)-∑[A140766(n+1)]` -/
def P508755495893358937.Spec : Prop :=
  ∀ n, P508755495893358937.a n = A086405 n

end A086405

/-! ## A086405.P5048723109498661981

`A083881(n+1)/A000244(n+1)*A000244(n)`
-/

namespace A086405.P5048723109498661981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083881 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ) * (A000244 n : ℚ)

end

end A086405.P5048723109498661981

namespace A086405

/-- `A083881(n+1)/A000244(n+1)*A000244(n)` -/
def P5048723109498661981.Spec : Prop :=
  ∀ n, P5048723109498661981.a n = (A086405 n : ℚ)

end A086405

/-! ## A086405.P300307136383632885

`A001353(n+1)/A092184(n+1)*A030192(n)`
-/

namespace A086405.P300307136383632885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 1) : ℚ) / (A092184 (n + 1) : ℚ) * (A030192 n : ℚ)

end

end A086405.P300307136383632885

namespace A086405

/-- `A001353(n+1)/A092184(n+1)*A030192(n)` -/
def P300307136383632885.Spec : Prop :=
  ∀ n, P300307136383632885.a n = (A086405 n : ℚ)

end A086405

/-!
# A086406: Main diagonal of number array A086404.

The programs for A086406, the canonical program `A086406.P17180229574827762341` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086406 has offset 0).

The definition of A086406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086406.P17180229574827762341

`(n-sqrt(3))^n*(1/2-sqrt(3)/6)+(n+sqrt(3))^n*(1/2+sqrt(3)/6)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086406

/-- `(n-sqrt(3))^n*(1/2-sqrt(3)/6)+(n+sqrt(3))^n*(1/2+sqrt(3)/6)` -/
def P17180229574827762341.Spec : Prop :=
  ∀ n, P17180229574827762341.a n = (A086406 n : ℝ)

end A086406

/-! ## A086406.P13759630128469437114

`A086404(∑[4*n])`
-/

namespace A086406.P13759630128469437114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086406.P13759630128469437114

namespace A086406

/-- `A086404(∑[4*n])` -/
def P13759630128469437114.Spec : Prop :=
  ∀ n, P13759630128469437114.a n = A086406 n

end A086406

/-!
# A086408: a[1]=1; a[n+1]=a[n]-1 if mod[prime[a[n]],6]=1, else a[n+1]=a[n]+4.

The programs for A086408, there is no canonical definition to state claims against.
-/

/-! ## A086408.P5424400918473624817

`A055396(A114421(n))+3*n+1`
-/

namespace A086408.P5424400918473624817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A114421 n).toNat + (3 * n + 1 : ℤ)

end

end A086408.P5424400918473624817

/-!
# A086410: Smallest prime factor of 3-smooth numbers, with a(1)=1.

The programs for A086410, there is no canonical definition to state claims against.
-/

/-! ## A086410.P17482935378944786874

`A020639(A003586(n+1))`
-/

namespace A086410.P17482935378944786874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003586 (n + 1)).toNat

end

end A086410.P17482935378944786874

/-! ## A086410.P10505788446519859977

`A033031(n+1)%4`
-/

namespace A086410.P10505788446519859977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033031 (n + 1)) 4

end

end A086410.P10505788446519859977

/-! ## A086410.P17615852266362370088

`gcd(6, Δ[A259823(n)])%4`
-/

namespace A086410.P17615852266362370088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (f1 (n + 1) - f1 n) % 4

end

end A086410.P17615852266362370088

/-! ## A086410.P9171909635121044961

`and(A001538(n), A033031(n+1))`
-/

namespace A086410.P9171909635121044961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A033031 (n + 1))

end

end A086410.P9171909635121044961

/-! ## A086410.P13941668073697742021

`and(A001539(n), A033031(n+1))`
-/

namespace A086410.P13941668073697742021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A033031 (n + 1))

end

end A086410.P13941668073697742021

/-! ## A086410.P8442402047635216937

`and(A002148(n), A033031(n+1))`
-/

namespace A086410.P8442402047635216937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A033031 (n + 1))

end

end A086410.P8442402047635216937

/-! ## A086410.P13767417603183583309

`and(A004769(n), A033031(n+1))`
-/

namespace A086410.P13767417603183583309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A033031 (n + 1))

end

end A086410.P13767417603183583309

/-! ## A086410.P8351057561489432285

`and(A017101(n), A033031(n+1))`
-/

namespace A086410.P8351057561489432285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A033031 (n + 1))

end

end A086410.P8351057561489432285

/-! ## A086410.P1891935306757841417

`and(A017103(n), A033031(n+1))`
-/

namespace A086410.P1891935306757841417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A033031 (n + 1))

end

end A086410.P1891935306757841417

/-! ## A086410.P18131677501603716927

`and(A017105(n), A033031(n+1))`
-/

namespace A086410.P18131677501603716927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A033031 (n + 1))

end

end A086410.P18131677501603716927

/-! ## A086410.P3202476087334906803

`and(A033031(n+1), A066322(n))`
-/

namespace A086410.P3202476087334906803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A066322 n)

end

end A086410.P3202476087334906803

/-! ## A086410.P13873277885032820622

`and(A033031(n+1), A086760(n))`
-/

namespace A086410.P13873277885032820622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A086760 n)

end

end A086410.P13873277885032820622

/-! ## A086410.P4311259764341209160

`and(A033031(n+1), A094200(n))`
-/

namespace A086410.P4311259764341209160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A094200 n)

end

end A086410.P4311259764341209160

/-! ## A086410.P14022936922555832898

`and(A033031(n+1), A106839(n))`
-/

namespace A086410.P14022936922555832898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A106839 n)

end

end A086410.P14022936922555832898

/-! ## A086410.P6556289627983602580

`and(A033031(n+1), A122553(n))`
-/

namespace A086410.P6556289627983602580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A122553 n)

end

end A086410.P6556289627983602580

/-! ## A086410.P10367126468122800186

`and(A033031(n+1), A134429(n))`
-/

namespace A086410.P10367126468122800186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A134429 n)

end

end A086410.P10367126468122800186

/-! ## A086410.P10191201824964949510

`and(A033031(n+1), A140870(n))`
-/

namespace A086410.P10191201824964949510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A140870 n)

end

end A086410.P10191201824964949510

/-! ## A086410.P14584997919569369716

`and(A033031(n+1), A158799(n))`
-/

namespace A086410.P14584997919569369716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A158799 n)

end

end A086410.P14584997919569369716

/-! ## A086410.P7201252598103841656

`and(A033031(n+1), A164897(n))`
-/

namespace A086410.P7201252598103841656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A164897 n)

end

end A086410.P7201252598103841656

/-! ## A086410.P4835688250634757512

`and(A033031(n+1), A276390(n))`
-/

namespace A086410.P4835688250634757512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033031 (n + 1)) (A276390 n)

end

end A086410.P4835688250634757512

/-!
# A086411: Greatest prime factor of 3-smooth numbers.

The programs for A086411, there is no canonical definition to state claims against.
-/

/-! ## A086411.P17468995382432770891

`A006530(A003586(n+1))`
-/

namespace A086411.P17468995382432770891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003586 (n + 1)).toNat

end

end A086411.P17468995382432770891

/-! ## A086411.P9405699572034093029

`floor(sqrt(2)+sqrt(A086418(n+1)))`
-/

namespace A086411.P9405699572034093029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) + Real.sqrt (A086418 (n + 1) : ℝ)⌋

end

end A086411.P9405699572034093029

/-! ## A086411.P18062589456837567838

`A022296(a(A022329(n+1)))` with `a(0)=1`
-/

namespace A086411.P18062589456837567838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022296 (a (A022329 (n + 1)).toNat).toNat

end

end A086411.P18062589456837567838

/-! ## A086411.P1356500784932980485

`A089934(a(A022329(n+1)))` with `a(0)=1`
-/

namespace A086411.P1356500784932980485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089934 (a (A022329 (n + 1)).toNat).toNat

end

end A086411.P1356500784932980485

/-! ## A086411.P9748413125787403028

`A036234(a(A022329(n+1))+1)` with `a(0)=1`
-/

namespace A086411.P9748413125787403028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036234 (a (A022329 (n + 1)).toNat + 1).toNat

end

end A086411.P9748413125787403028

/-! ## A086411.P13712870246160304693

`A000040(A000005(a(A022329(n+1))))` with `a(0)=1`
-/

namespace A086411.P13712870246160304693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000005 (a (A022329 (n + 1)).toNat).toNat).toNat

end

end A086411.P13712870246160304693

/-! ## A086411.P5810756390515313140

`A057427(A022329(n+1))+A040001(2*n)`
-/

namespace A086411.P5810756390515313140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A022329 (n + 1)).toNat + A040001 (2 * n)

end

end A086411.P5810756390515313140

/-! ## A086411.P5753852114977473304

`A049237((n+1)%(2*n+1)+1)`
-/

namespace A086411.P5753852114977473304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 ((n + 1) % (2 * n + 1) + 1)

end

end A086411.P5753852114977473304

/-! ## A086411.P16020593594078279281

`A049237(A065475(n+1))`
-/

namespace A086411.P16020593594078279281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A065475 (n + 1)).toNat

end

end A086411.P16020593594078279281

/-! ## A086411.P14458080372402120537

`A049237(A326178(n+1))`
-/

namespace A086411.P14458080372402120537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A326178 (n + 1)).toNat

end

end A086411.P14458080372402120537

/-! ## A086411.P16861870425122526354

`A049237(A181440(n+2))`
-/

namespace A086411.P16861870425122526354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A181440 (n + 2)).toNat

end

end A086411.P16861870425122526354

/-! ## A086411.P9519476828607412446

`A049237(A184985(n+2))`
-/

namespace A086411.P9519476828607412446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A184985 (n + 2)).toNat

end

end A086411.P9519476828607412446

/-! ## A086411.P2150261478882809898

`A049237(n+2)-and(1, A033717(n))`
-/

namespace A086411.P2150261478882809898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (n + 2) - Int.land 1 (A033717 n)

end

end A086411.P2150261478882809898

/-! ## A086411.P6205720302874887894

`A049237(n+2)/gcd(2, A008347(2*n))`
-/

namespace A086411.P6205720302874887894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049237 (n + 2) : ℚ) / (Int.gcd 2 (A008347 (2 * n)) : ℚ)

end

end A086411.P6205720302874887894

/-! ## A086411.P11075574441959560560

`A049237(a(n-1)^A049237(n+2)+1)` with `a(0)=1`
-/

namespace A086411.P11075574441959560560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049237 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) ^ (A049237 (n + 2) : ℤ) + 1)).toNat

end

end A086411.P11075574441959560560

/-! ## A086411.P18399992690001761200

`A049237(A057979(A000010(n+1))+n+1)`
-/

namespace A086411.P18399992690001761200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A057979 (A000010 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A086411.P18399992690001761200

/-! ## A086411.P14633511202034611634

`A049237(A051953(A006530(n+1))+n+1)`
-/

namespace A086411.P14633511202034611634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A051953 (A006530 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A086411.P14633511202034611634

/-! ## A086411.P8993855162458985184

`A049237(n+2)-and(1, A001043(2*n+1))`
-/

namespace A086411.P8993855162458985184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (n + 2) - Int.land 1 (A001043 (2 * n + 1))

end

end A086411.P8993855162458985184

/-! ## A086411.P17990271374415145908

`A049237(A051953(A025473(n+1))+n+1)`
-/

namespace A086411.P17990271374415145908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A051953 (A025473 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A086411.P17990271374415145908

/-!
# A086412: Number of distinct prime factors of 3-smooth numbers.

The programs for A086412, there is no canonical definition to state claims against.
-/

/-! ## A086412.P13145980571035607859

`A001221(A003586(n+1))`
-/

namespace A086412.P13145980571035607859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003586 (n + 1)).toNat

end

end A086412.P13145980571035607859

/-! ## A086412.P10607882330830560131

`floor(sqrt(A086418(n+1)))`
-/

namespace A086412.P10607882330830560131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086418 (n + 1))

end

end A086412.P10607882330830560131

/-! ## A086412.P6088212178189362915

`floor(sqrt(A098229(n+1)))`
-/

namespace A086412.P6088212178189362915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A098229 (n + 1))

end

end A086412.P6088212178189362915

/-! ## A086412.P14740904690379735696

`floor(log2(A033031(n+1)))`
-/

namespace A086412.P14740904690379735696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A033031 (n + 1)).toNat

end

end A086412.P14740904690379735696

/-! ## A086412.P13216658981867595190

`A069352((A086418(n+1)+n)%(n+1)+1)`
-/

namespace A086412.P13216658981867595190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (Int.tmod (A086418 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A086412.P13216658981867595190

/-! ## A086412.P200160691076693100

`A129116(and(12, A033031(n+1)-a(n-1))+1)` with `a(0)=0`
-/

namespace A086412.P200160691076693100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A129116 (Int.land 12 (A033031 (n + 1) - a (n - 1)) + 1).toNat

end

end A086412.P200160691076693100

/-! ## A086412.P12047160661876373956

`A001222(gcd(A002445(n), A003586(n+1)))`
-/

namespace A086412.P12047160661876373956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A002445 n) (A003586 (n + 1)))

end

end A086412.P12047160661876373956

/-! ## A086412.P15087086841924686091

`∑{p}[∑[A061987(n)], A061987(#)]`
-/

namespace A086412.P15087086841924686091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061987 p

end

end A086412.P15087086841924686091

/-! ## A086412.P1058449241162594495

`∑{p}[A003586(n+1), A001222(#)]`
-/

namespace A086412.P1058449241162594495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A086412.P1058449241162594495

/-! ## A086412.P16439852968864888113

`∑{p}[A003586(n+1), A001263(#)]`
-/

namespace A086412.P16439852968864888113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001263 p

end

end A086412.P16439852968864888113

/-! ## A086412.P8197229221280957579

`∑{p}[A003586(n+1), A002217(#)]`
-/

namespace A086412.P8197229221280957579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002217 p

end

end A086412.P8197229221280957579

/-! ## A086412.P13611642226226581274

`∑{p}[A003586(n+1), A007318(#)]`
-/

namespace A086412.P13611642226226581274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 p

end

end A086412.P13611642226226581274

/-! ## A086412.P6023308908045534873

`∑{p}[A003586(n+1), A025474(#)]`
-/

namespace A086412.P6023308908045534873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A025474 p

end

end A086412.P6023308908045534873

/-! ## A086412.P11092099282683327162

`A001222(∏{p}[A003586(n+1), #])`
-/

namespace A086412.P11092099282683327162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086412.P11092099282683327162

/-! ## A086412.P6656984375179930482

`∑{p}[Δ[A259823(n)], A002350(#²)]`
-/

namespace A086412.P6656984375179930482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002350 (p ^ 2)

end

end A086412.P6656984375179930482

/-! ## A086412.P13810042825160824431

`∑{p}[A003586(n+1), A008683(#)²]`
-/

namespace A086412.P13810042825160824431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 p ^ 2

end

end A086412.P13810042825160824431

/-! ## A086412.P1781907264621810231

`∑{p}[A003586(n+1), A000005(#)-1]`
-/

namespace A086412.P1781907264621810231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 p - 1)

end

end A086412.P1781907264621810231

/-! ## A086412.P1854703831587389605

`∑{p}[A003586(n+1), A000032(#)-#]`
-/

namespace A086412.P1854703831587389605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000032 p - (p : ℤ))

end

end A086412.P1854703831587389605

/-! ## A086412.P12357724956203125199

`∑{p}[A003586(n+1), A000203(#)-#]`
-/

namespace A086412.P12357724956203125199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000203 p - (p : ℤ))

end

end A086412.P12357724956203125199

/-! ## A086412.P1553311711294671275

`∑{p}[A003586(n+1), #/A020639(#)]`
-/

namespace A086412.P1553311711294671275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A020639 p : ℚ)

end

end A086412.P1553311711294671275

/-!
# A086414: Minimal exponent in prime factorization of 3-smooth numbers.

The programs for A086414, there is no canonical definition to state claims against.
-/

/-! ## A086414.P7322231025865811371

`A051904(A003586(n+1))`
-/

namespace A086414.P7322231025865811371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A003586 (n + 1)).toNat

end

end A086414.P7322231025865811371

/-! ## A086414.P606033495795079765

`val(A003586(n+1), or(2, A033031(n+1)))`
-/

namespace A086414.P606033495795079765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003586 (n + 1)).toNat (Int.lor 2 (A033031 (n + 1))).toNat

end

end A086414.P606033495795079765

/-! ## A086414.P14555537322924617967

`A055396(∏{e}[A003586(n+1), A000040(#)])`
-/

namespace A086414.P14555537322924617967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A086414.P14555537322924617967

/-! ## A086414.P8803229571736608280

`A051904(∑[A061987(n)])`
-/

namespace A086414.P8803229571736608280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086414.P8803229571736608280

/-! ## A086414.P2730086516115341075

`A051904(Δ[A259823(n)])`
-/

namespace A086414.P2730086516115341075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f1 (n + 1) - f1 n).toNat

end

end A086414.P2730086516115341075

/-! ## A086414.P3441720954775576782

`A051904(sqrt(A025620(n+1)))`
-/

namespace A086414.P3441720954775576782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A086414.P3441720954775576782

/-! ## A086414.P15494660715916547165

`A051904(A007694(n+2)/2)`
-/

namespace A086414.P15494660715916547165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A086414.P15494660715916547165

/-! ## A086414.P7232893244568786792

`A051904(A033845(n+1)/6)`
-/

namespace A086414.P7232893244568786792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((A033845 (n + 1) : ℚ) / 6)).toNat

end

end A086414.P7232893244568786792

/-! ## A086414.P3184483562890035854

`A051904(A259823(n+1)-A259823(n))`
-/

namespace A086414.P3184483562890035854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A259823 (n + 1) - A259823 n).toNat

end

end A086414.P3184483562890035854

/-! ## A086414.P6580616050878696956

`A051904(record[A065331(n+1)])`
-/

namespace A086414.P6580616050878696956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086414.P6580616050878696956

/-!
# A086415: Maximal exponent in prime factorization of 3-smooth numbers.

The programs for A086415, there is no canonical definition to state claims against.
-/

/-! ## A086415.P3330180907538531355

`A069352(n+1)-val(A003586(n+1), 6)`
-/

namespace A086415.P3330180907538531355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) - (SequenceMachineLib.valuation (A003586 (n + 1)).toNat 6 : ℤ)

end

end A086415.P3330180907538531355

/-! ## A086415.P15566975558154972464

`A061395(∏{e}[A003586(n+1), A000040(#)])`
-/

namespace A086415.P15566975558154972464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A086415.P15566975558154972464

/-! ## A086415.P6944307582247214000

`A051903(∑[A061987(n)])`
-/

namespace A086415.P6944307582247214000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086415.P6944307582247214000

/-! ## A086415.P8228985245936834787

`A051903(Δ[A259823(n)])`
-/

namespace A086415.P8228985245936834787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (n + 1) - f1 n).toNat

end

end A086415.P8228985245936834787

/-! ## A086415.P9629366173730488678

`A051903(A003586(n+1))`
-/

namespace A086415.P9629366173730488678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003586 (n + 1)).toNat

end

end A086415.P9629366173730488678

/-! ## A086415.P11778961026839053161

`A051903(sqrt(A025620(n+1)))`
-/

namespace A086415.P11778961026839053161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A086415.P11778961026839053161

/-! ## A086415.P15855786136934233144

`A051903(A007694(n+2)/2)`
-/

namespace A086415.P15855786136934233144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A086415.P15855786136934233144

/-! ## A086415.P14761922164944605091

`A051903(A033845(n+1)/6)`
-/

namespace A086415.P14761922164944605091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A033845 (n + 1) : ℚ) / 6)).toNat

end

end A086415.P14761922164944605091

/-! ## A086415.P9723269269793484435

`A051903(A259823(n+1)-A259823(n))`
-/

namespace A086415.P9723269269793484435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A259823 (n + 1) - A259823 n).toNat

end

end A086415.P9723269269793484435

/-! ## A086415.P12604067627914331818

`A051903(eq[n+1, A079065(n+1)]+1)`
-/

namespace A086415.P12604067627914331818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086415.P12604067627914331818

/-!
# A086416: Number of divisors of 3-smooth numbers.

The programs for A086416, there is no canonical definition to state claims against.
-/

/-! ## A086416.P17864490425766216776

`(A022328(n+1)+1)*(A022329(n+1)+1)`
-/

namespace A086416.P17864490425766216776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022328 (n + 1) + 1) * (A022329 (n + 1) + 1)

end

end A086416.P17864490425766216776

/-! ## A086416.P14464463610526643107

`A000005(A003586(n+1))`
-/

namespace A086416.P14464463610526643107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003586 (n + 1)).toNat

end

end A086416.P14464463610526643107

/-! ## A086416.P10921592780266048419

`A134583(n+1)*A158456(n+1)`
-/

namespace A086416.P10921592780266048419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (n + 1) * A158456 (n + 1)

end

end A086416.P10921592780266048419

/-! ## A086416.P644242820486120528

`(A022328(n+1)+1)*A134583(n+1)`
-/

namespace A086416.P644242820486120528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022328 (n + 1) + 1) * A134583 (n + 1)

end

end A086416.P644242820486120528

/-! ## A086416.P10654730398887287811

`(A022329(n+1)+1)*A158456(n+1)`
-/

namespace A086416.P10654730398887287811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022329 (n + 1) + 1) * A158456 (n + 1)

end

end A086416.P10654730398887287811

/-! ## A086416.P1850810482220658916

`val(A033845(n+1), 2)*val(A033845(n+1), 3)`
-/

namespace A086416.P1850810482220658916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033845 (n + 1)).toNat 2 * SequenceMachineLib.valuation (A033845 (n + 1)).toNat 3

end

end A086416.P1850810482220658916

/-! ## A086416.P11764807963385632256

`(A227861(n+1)-A134583(n+1))*A134583(n+1)`
-/

namespace A086416.P11764807963385632256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A227861 (n + 1) - A134583 (n + 1)) * A134583 (n + 1)

end

end A086416.P11764807963385632256

/-! ## A086416.P13374174977577272858

`(A227861(n+1)-A158456(n+1))*A158456(n+1)`
-/

namespace A086416.P13374174977577272858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A227861 (n + 1) - A158456 (n + 1)) * A158456 (n + 1)

end

end A086416.P13374174977577272858

/-! ## A086416.P7825806800739240142

`A134583(n+1)*A134583(A372744(n+1))`
-/

namespace A086416.P7825806800739240142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (n + 1) * A134583 (A372744 (n + 1)).toNat

end

end A086416.P7825806800739240142

/-! ## A086416.P2539808442344795906

`A158456(n+1)*A158456(A372744(n+1))`
-/

namespace A086416.P2539808442344795906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158456 (n + 1) * A158456 (A372744 (n + 1)).toNat

end

end A086416.P2539808442344795906

/-! ## A086416.P9870720770734210643

`∑{d}[A003586(n+1), gcd(#, A003215(n))]`
-/

namespace A086416.P9870720770734210643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A003215 n)

end

end A086416.P9870720770734210643

/-! ## A086416.P11214549750046253740

`∑{d}[A003586(n+1), A010000(#²%#)]`
-/

namespace A086416.P11214549750046253740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010000 (d ^ 2 % d)

end

end A086416.P11214549750046253740

/-! ## A086416.P4038096142191268257

`∏{e}[A033845(n+1), #]`
-/

namespace A086416.P4038096142191268257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086416.P4038096142191268257

/-! ## A086416.P6318899151910828928

`∏{e}[A187778(n+2), #]`
-/

namespace A086416.P6318899151910828928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086416.P6318899151910828928

/-! ## A086416.P4072078026367910848

`∏{e}[A000423(n+3), #]`
-/

namespace A086416.P4072078026367910848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086416.P4072078026367910848

/-! ## A086416.P14331068374643043486

`A000005(∑[A061987(n)])`
-/

namespace A086416.P14331068374643043486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086416.P14331068374643043486

/-! ## A086416.P3515745184993149474

`A000005(Δ[A259823(n)])`
-/

namespace A086416.P3515745184993149474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A086416.P3515745184993149474

/-! ## A086416.P5052982067924426319

`A000005(sqrt(A025620(n+1)))`
-/

namespace A086416.P5052982067924426319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A086416.P5052982067924426319

/-! ## A086416.P17103392474719037132

`A000005(A069353(n+1)+1)`
-/

namespace A086416.P17103392474719037132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A069353 (n + 1) + 1).toNat

end

end A086416.P17103392474719037132

/-! ## A086416.P4964576308753840018

`A000005(A007694(n+2)/2)`
-/

namespace A086416.P4964576308753840018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A086416.P4964576308753840018

/-!
# A086417: Sum of divisors of 3-smooth numbers.

The programs for A086417, there is no canonical definition to state claims against.
-/

/-! ## A086417.P9504186474780065386

`(2^(A022328(n+1)+1)-1)*(3^(A022329(n+1)+1)-1)/2`
-/

namespace A086417.P9504186474780065386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A022328 (n + 1) + 1 : ℤ) - 1) * ((3 : ℚ) ^ (A022329 (n + 1) + 1 : ℤ) - 1) / 2

end

end A086417.P9504186474780065386

/-! ## A086417.P13955263239116621627

`A000203(A003586(n+1))`
-/

namespace A086417.P13955263239116621627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003586 (n + 1)).toNat

end

end A086417.P13955263239116621627

/-! ## A086417.P1850840836244163947

`∑{d}[∑[A061987(n)], #]`
-/

namespace A086417.P1850840836244163947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P1850840836244163947

/-! ## A086417.P6476464746602298495

`∑{d}[Δ[A259823(n)], #]`
-/

namespace A086417.P6476464746602298495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P6476464746602298495

/-! ## A086417.P3415932898903093156

`∑{d}[sqrt(A025620(n+1)), #]`
-/

namespace A086417.P3415932898903093156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086417.P3415932898903093156

/-! ## A086417.P6394976155397822170

`∑{d}[A069353(n+1)+1, #]`
-/

namespace A086417.P6394976155397822170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P6394976155397822170

/-! ## A086417.P17080966262854595505

`∑{d}[1-A055600(n+1), #]`
-/

namespace A086417.P17080966262854595505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P17080966262854595505

/-! ## A086417.P15947180747590996457

`∑{d}[A007694(n+2)/2, #]`
-/

namespace A086417.P15947180747590996457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086417.P15947180747590996457

/-! ## A086417.P6840086922861037887

`∑{d}[A065119(n+1)/3, #]`
-/

namespace A086417.P6840086922861037887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086417.P6840086922861037887

/-! ## A086417.P17466829125417630864

`∑{d}[A033845(n+1)/6, #]`
-/

namespace A086417.P17466829125417630864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033845 (n + 1) : ℚ) / 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086417.P17466829125417630864

/-! ## A086417.P10024334515768978267

`∑{d}[A000423(n+3)/6, #]`
-/

namespace A086417.P10024334515768978267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000423 (n + 3) : ℚ) / 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086417.P10024334515768978267

/-! ## A086417.P6140830247920535674

`∑{d}[sqrt(A063755(n+2))/2, #]`
-/

namespace A086417.P6140830247920535674
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063755 (n + 2) : ℝ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086417.P6140830247920535674

/-! ## A086417.P11464231294640995424

`∑{d}[ceil(A190812(n+1)/2), #]`
-/

namespace A086417.P11464231294640995424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190812 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P11464231294640995424

/-! ## A086417.P2796321791940238785

`∑{d}[A186711(A186712(n+1)), #]`
-/

namespace A086417.P2796321791940238785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A186712 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P2796321791940238785

/-! ## A086417.P7434596907692109673

`∑{d}[A259823(n+1)-A259823(n), #]`
-/

namespace A086417.P7434596907692109673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (n + 1) - A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086417.P7434596907692109673

/-! ## A086417.P11759192802263768393

`A000203(∑[A061987(n)])`
-/

namespace A086417.P11759192802263768393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086417.P11759192802263768393

/-! ## A086417.P1912027373738057629

`A000203(Δ[A259823(n)])`
-/

namespace A086417.P1912027373738057629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A086417.P1912027373738057629

/-! ## A086417.P239812407794609851

`A000203(sqrt(A025620(n+1)))`
-/

namespace A086417.P239812407794609851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A086417.P239812407794609851

/-! ## A086417.P10215712539717818746

`A000203(A055600(n+1)-1)`
-/

namespace A086417.P10215712539717818746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055600 (n + 1) - 1).toNat

end

end A086417.P10215712539717818746

/-! ## A086417.P7290678565060511116

`A000203(A007694(n+2)/2)`
-/

namespace A086417.P7290678565060511116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A086417.P7290678565060511116

/-!
# A086418: Sum of distinct prime factors of 3-smooth numbers.

The programs for A086418, there is no canonical definition to state claims against.
-/

/-! ## A086418.P1159162029717615545

`A008472(A003586(n+1))`
-/

namespace A086418.P1159162029717615545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A003586 (n + 1)).toNat

end

end A086418.P1159162029717615545

/-! ## A086418.P11202039675878257252

`floor(log2(A033031(n+1)²))`
-/

namespace A086418.P11202039675878257252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A033031 (n + 1) ^ 2).toNat

end

end A086418.P11202039675878257252

/-! ## A086418.P4686757864186865638

`A008472(gcd(A025620(n+1), A124508(n+1)))`
-/

namespace A086418.P4686757864186865638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.gcd (A025620 (n + 1)) (A124508 (n + 1)))

end

end A086418.P4686757864186865638

/-! ## A086418.P12123402329501477855

`A008472(gcd(A025620(n+1), A049598(n)))`
-/

namespace A086418.P12123402329501477855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.gcd (A025620 (n + 1)) (A049598 n))

end

end A086418.P12123402329501477855

/-! ## A086418.P13688285418065258771

`A098229(A372744(n+1))`
-/

namespace A086418.P13688285418065258771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098229 (A372744 (n + 1)).toNat

end

end A086418.P13688285418065258771

/-! ## A086418.P14658897576453598166

`A008472(A263074(5*n+2)+A033031(n+1))`
-/

namespace A086418.P14658897576453598166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A263074 (5 * n + 2) + A033031 (n + 1)).toNat

end

end A086418.P14658897576453598166

/-! ## A086418.P2179459811077308495

`A008472(A033031(n+1)^A072137(n))`
-/

namespace A086418.P2179459811077308495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A033031 (n + 1) : ℚ) ^ (A072137 n : ℤ))).toNat

end

end A086418.P2179459811077308495

/-! ## A086418.P2450865228592459127

`A008472(A033031(n+1)^A334541(n+1))`
-/

namespace A086418.P2450865228592459127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A033031 (n + 1) : ℚ) ^ (A334541 (n + 1) : ℤ))).toNat

end

end A086418.P2450865228592459127

/-! ## A086418.P1668979965384713116

`∑{p}[A033031(n+1)^A001227(3*n+2), #]`
-/

namespace A086418.P1668979965384713116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033031 (n + 1) : ℚ) ^ (A001227 (3 * n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A086418.P1668979965384713116

/-! ## A086418.P1669433420316938643

`A008472(A033031(n+1)^A316556(n+1))`
-/

namespace A086418.P1669433420316938643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A033031 (n + 1) : ℚ) ^ (A316556 (n + 1) : ℤ))).toNat

end

end A086418.P1669433420316938643

/-! ## A086418.P1072947349556343093

`∑{p}[∑[A061987(n)], #]`
-/

namespace A086418.P1072947349556343093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086418.P1072947349556343093

/-! ## A086418.P16040945897256309019

`∑{p}[Δ[A259823(n)], #]`
-/

namespace A086418.P16040945897256309019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086418.P16040945897256309019

/-! ## A086418.P13683190606260252288

`∑{p}[sqrt(A025620(n+1)), #]`
-/

namespace A086418.P13683190606260252288
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A086418.P13683190606260252288

/-! ## A086418.P13151755113320239962

`∑{p}[1-A055600(n+1), #]`
-/

namespace A086418.P13151755113320239962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086418.P13151755113320239962

/-! ## A086418.P13280929000559747432

`∑{p}[A007694(n+2)/2, #]`
-/

namespace A086418.P13280929000559747432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A086418.P13280929000559747432

/-! ## A086418.P3112671904526258347

`∑{p}[A259823(n+1)-A259823(n), #]`
-/

namespace A086418.P3112671904526258347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (n + 1) - A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086418.P3112671904526258347

/-! ## A086418.P7324610642672898190

`A008472(sqrt(A025620(n+1)))`
-/

namespace A086418.P7324610642672898190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A086418.P7324610642672898190

/-!
# A086419: Sum of all prime factors of 3-smooth numbers.

The programs for A086419, there is no canonical definition to state claims against.
-/

/-! ## A086419.P10404862698053603328

`2*A022328(n+1)+3*A022329(n+1)`
-/

namespace A086419.P10404862698053603328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022328 (n + 1) + 3 * A022329 (n + 1)

end

end A086419.P10404862698053603328

/-! ## A086419.P17904016129905018664

`A001414(A003586(n+1))`
-/

namespace A086419.P17904016129905018664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003586 (n + 1)).toNat

end

end A086419.P17904016129905018664

/-! ## A086419.P17447433668519732981

`A022329(n+1)+2*A069352(n+1)`
-/

namespace A086419.P17447433668519732981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + 2 * A069352 (n + 1)

end

end A086419.P17447433668519732981

/-! ## A086419.P653617603952086679

`3*A069352(n+1)-A022328(n+1)`
-/

namespace A086419.P653617603952086679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069352 (n + 1) - A022328 (n + 1)

end

end A086419.P653617603952086679

/-! ## A086419.P11088381591366490180

`A022329(n+1)+A005843(A069352(n+1))`
-/

namespace A086419.P11088381591366490180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + A005843 (A069352 (n + 1)).toNat

end

end A086419.P11088381591366490180

/-! ## A086419.P14131819005608021497

`A016777(A069352(n+1))-A158456(n+1)`
-/

namespace A086419.P14131819005608021497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A069352 (n + 1)).toNat - A158456 (n + 1)

end

end A086419.P14131819005608021497

/-! ## A086419.P12892524062890736398

`A001414(Δ[A259823(n)])`
-/

namespace A086419.P12892524062890736398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat

end

end A086419.P12892524062890736398

/-! ## A086419.P9651793557024136780

`A001414(A259823(n+1)-A259823(n))`
-/

namespace A086419.P9651793557024136780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A259823 (n + 1) - A259823 n).toNat

end

end A086419.P9651793557024136780

/-! ## A086419.P4009883745233541076

`A022329(n+1)+2*A001222(A003586(n+1))`
-/

namespace A086419.P4009883745233541076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + 2 * A001222 (A003586 (n + 1)).toNat

end

end A086419.P4009883745233541076

/-! ## A086419.P6512108750533067781

`3*A001222(A003586(n+1))-A022328(n+1)`
-/

namespace A086419.P6512108750533067781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001222 (A003586 (n + 1)).toNat - A022328 (n + 1)

end

end A086419.P6512108750533067781

/-!
# A086420: Euler's totient of 3-smooth numbers: a(n) = A000010(A003586(n)).

The programs for A086420, there is no canonical definition to state claims against.
-/

/-! ## A086420.P11408696448073415623

`A000010(A003586(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086420.P11408696448073415623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003586 (n + 1)).toNat

end

end A086420.P11408696448073415623

/-! ## A086420.P9128141453229002661

`A000010(∑[A061987(n)])`
-/

namespace A086420.P9128141453229002661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086420.P9128141453229002661

/-! ## A086420.P9015178308775151212

`A000010(Δ[A259823(n)])`
-/

namespace A086420.P9015178308775151212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A086420.P9015178308775151212

/-! ## A086420.P17739355047715701119

`A000010(sqrt(A025620(n+1)))`
-/

namespace A086420.P17739355047715701119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A086420.P17739355047715701119

/-! ## A086420.P3520863016508424176

`A000010(A069353(n+1)+1)`
-/

namespace A086420.P3520863016508424176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A069353 (n + 1) + 1).toNat

end

end A086420.P3520863016508424176

/-! ## A086420.P15262609104372297424

`A000010(A055600(n+1)-1)`
-/

namespace A086420.P15262609104372297424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055600 (n + 1) - 1).toNat

end

end A086420.P15262609104372297424

/-! ## A086420.P6087822348410798341

`A000010(A007694(n+2)/2)`
-/

namespace A086420.P6087822348410798341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A086420.P6087822348410798341

/-! ## A086420.P4130561509184728032

`A000010(A065119(n+1)/3)`
-/

namespace A086420.P4130561509184728032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3)).toNat

end

end A086420.P4130561509184728032

/-! ## A086420.P13953516519083253674

`A000010(A033845(n+1)/6)`
-/

namespace A086420.P13953516519083253674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A033845 (n + 1) : ℚ) / 6)).toNat

end

end A086420.P13953516519083253674

/-! ## A086420.P4154408319000512212

`A000010(A000423(n+3)/6)`
-/

namespace A086420.P4154408319000512212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000423 (n + 3) : ℚ) / 6)).toNat

end

end A086420.P4154408319000512212

/-! ## A086420.P9439729164173343994

`A000010(root(A025620(n+1), 2))`
-/

namespace A086420.P9439729164173343994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A025620 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A086420.P9439729164173343994

/-! ## A086420.P7166190201961507213

`A000010(A025620(n+1)^(1/2))`
-/

namespace A086420.P7166190201961507213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A025620 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A086420.P7166190201961507213

/-! ## A086420.P10624997851806117666

`A000010(A259823(n+1)-A259823(n))`
-/

namespace A086420.P10624997851806117666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A259823 (n + 1) - A259823 n).toNat

end

end A086420.P10624997851806117666

/-!
# A086424: Numbers needed to generate all other natural numbers, only allowing multiplication and addition. Each number can be used only once.

The programs for A086424, there is no canonical definition to state claims against.
-/

/-! ## A086424.P7087517427216741015

`A176075(or(n!*Δ[n²], 2^floor(n/2)))`
-/

namespace A086424.P7087517427216741015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (Int.lor ((Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))).toNat

end

end A086424.P7087517427216741015

/-! ## A086424.P10474077903018963325

`A176075(or(∑[char[∑[n]]]²-n, n!*Δ[n²]))`
-/

namespace A086424.P10474077903018963325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (Int.lor ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) ((Nat.factorial n : ℤ) * ((f4 (n + 1) : ℤ) - (f4 n : ℤ)))).toNat

end

end A086424.P10474077903018963325

/-! ## A086424.P5344267111927240018

`A087834(A268952(n+2))`
-/

namespace A086424.P5344267111927240018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A268952 (n + 2)).toNat

end

end A086424.P5344267111927240018

/-!
# A086425: Permutation of natural numbers induced by the Catalan bijection gma086425 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086425, there is no canonical definition to state claims against.
-/

/-! ## A086425.P10736971173798547600

`A057164(A074684(n))`
-/

namespace A086425.P10736971173798547600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A074684 n).toNat

end

end A086425.P10736971173798547600

/-! ## A086425.P1960829617223472842

`A057505(A082360(n))`
-/

namespace A086425.P1960829617223472842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A082360 n).toNat

end

end A086425.P1960829617223472842

/-! ## A086425.P11517476013016966227

`A125982(A057164(n))`
-/

namespace A086425.P11517476013016966227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057164 n).toNat

end

end A086425.P11517476013016966227

/-! ## A086425.P15605235737871270946

`A085172(A130921(n))`
-/

namespace A086425.P15605235737871270946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A130921 n).toNat

end

end A086425.P15605235737871270946

/-! ## A086425.P14541835381653010334

`A125982(A057505(A057163(n)))`
-/

namespace A086425.P14541835381653010334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057505 (A057163 n).toNat).toNat

end

end A086425.P14541835381653010334

/-! ## A086425.P9055803921831031326

`A057163(A125982(A057501(n)))`
-/

namespace A086425.P9055803921831031326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125982 (A057501 n).toNat).toNat

end

end A086425.P9055803921831031326

/-! ## A086425.P11580152802043533637

`A125982(A057163(A057506(n)))`
-/

namespace A086425.P11580152802043533637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057163 (A057506 n).toNat).toNat

end

end A086425.P11580152802043533637

/-! ## A086425.P4573648476639248604

`A057164(A057117(A074683(A057117(n))))`
-/

namespace A086425.P4573648476639248604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057117 (A074683 (A057117 n).toNat).toNat).toNat

end

end A086425.P4573648476639248604

/-! ## A086425.P12027622221976932559

`A074683(A130921(A074684(A074684(A074683(n)))))`
-/

namespace A086425.P12027622221976932559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A130921 (A074684 (A074684 (A074683 n).toNat).toNat).toNat).toNat

end

end A086425.P12027622221976932559

/-! ## A086425.P14964992151436760568

`A130922(A074684(A074684(A130921(A130922(n)))))`
-/

namespace A086425.P14964992151436760568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A074684 (A074684 (A130921 (A130922 n).toNat).toNat).toNat).toNat

end

end A086425.P14964992151436760568

/-!
# A086426: Permutation of natural numbers induced by the Catalan bijection gma086426 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086426, there is no canonical definition to state claims against.
-/

/-! ## A086426.P18350959230402545485

`A074683(A057164(n))`
-/

namespace A086426.P18350959230402545485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A057164 n).toNat

end

end A086426.P18350959230402545485

/-! ## A086426.P11777920640781917071

`A082359(A057506(n))`
-/

namespace A086426.P11777920640781917071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A057506 n).toNat

end

end A086426.P11777920640781917071

/-! ## A086426.P2002199029982196138

`A057164(A125981(n))`
-/

namespace A086426.P2002199029982196138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A125981 n).toNat

end

end A086426.P2002199029982196138

/-! ## A086426.P3485672144293000672

`A125981(A086431(n))`
-/

namespace A086426.P3485672144293000672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 (A086431 n).toNat

end

end A086426.P3485672144293000672

/-! ## A086426.P909745492370720578

`A130922(A085171(n))`
-/

namespace A086426.P909745492370720578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A085171 n).toNat

end

end A086426.P909745492370720578

/-! ## A086426.P14549852544472817383

`A057502(A057163(A125983(n)))`
-/

namespace A086426.P14549852544472817383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057163 (A125983 n).toNat).toNat

end

end A086426.P14549852544472817383

/-! ## A086426.P3010967847108109579

`A074683(A130922(A074684(n)))`
-/

namespace A086426.P3010967847108109579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A130922 (A074684 n).toNat).toNat

end

end A086426.P3010967847108109579

/-! ## A086426.P2042588372195442951

`A074683(A074683(A130921(n)))`
-/

namespace A086426.P2042588372195442951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A074683 (A130921 n).toNat).toNat

end

end A086426.P2042588372195442951

/-! ## A086426.P16689498407660085152

`A074683(A127292(A127289(n)))`
-/

namespace A086426.P16689498407660085152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A127292 (A127289 n).toNat).toNat

end

end A086426.P16689498407660085152

/-! ## A086426.P15324212546311525628

`A074683(A127289(A127300(n)))`
-/

namespace A086426.P15324212546311525628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A127289 (A127300 n).toNat).toNat

end

end A086426.P15324212546311525628

/-!
# A086427: Permutation of natural numbers induced by the Catalan bijection gma086427 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086427, there is no canonical definition to state claims against.
-/

/-! ## A086427.P9953144160544288941

`A085172(A057505(n))`
-/

namespace A086427.P9953144160544288941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A057505 n).toNat

end

end A086427.P9953144160544288941

/-! ## A086427.P5937378369966334139

`A057164(A085173(A057164(n)))`
-/

namespace A086427.P5937378369966334139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085173 (A057164 n).toNat).toNat

end

end A086427.P5937378369966334139

/-! ## A086427.P7353057315830437117

`A125982(A057502(A125981(n)))`
-/

namespace A086427.P7353057315830437117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057502 (A125981 n).toNat).toNat

end

end A086427.P7353057315830437117

/-! ## A086427.P6377703672498612406

`A125982(A057505(A125983(n)))`
-/

namespace A086427.P6377703672498612406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057505 (A125983 n).toNat).toNat

end

end A086427.P6377703672498612406

/-! ## A086427.P13139891822742538570

`A057506(A085173(A057502(A057505(A057502(n)))))`
-/

namespace A086427.P13139891822742538570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A085173 (A057502 (A057505 (A057502 n).toNat).toNat).toNat).toNat

end

end A086427.P13139891822742538570

/-! ## A086427.P13548755010917907697

`A086428(A086429(n))`
-/

namespace A086427.P13548755010917907697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086429 n).toNat

end

end A086427.P13548755010917907697

/-! ## A086427.P14774354397846042975

`A057510(A086428(A057510(n)))`
-/

namespace A086427.P14774354397846042975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A086428 (A057510 n).toNat).toNat

end

end A086427.P14774354397846042975

/-! ## A086427.P11154850497431303005

`A086425(A057501(A086426(n)))`
-/

namespace A086427.P11154850497431303005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A057501 (A086426 n).toNat).toNat

end

end A086427.P11154850497431303005

/-! ## A086427.P13455464194980484553

`A086431(A057163(n))`
-/

namespace A086427.P13455464194980484553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A057163 n).toNat

end

end A086427.P13455464194980484553

/-! ## A086427.P500190638575661045

`A086431(A086428(A086431(n)))`
-/

namespace A086427.P500190638575661045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086428 (A086431 n).toNat).toNat

end

end A086427.P500190638575661045

/-!
# A086428: Permutation of natural numbers induced by the Catalan bijection gma086428 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086428, there is no canonical definition to state claims against.
-/

/-! ## A086428.P5684952844432877682

`A057506(A085171(n))`
-/

namespace A086428.P5684952844432877682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A085171 n).toNat

end

end A086428.P5684952844432877682

/-! ## A086428.P18263874316500333255

`A057163(A086431(n))`
-/

namespace A086428.P18263874316500333255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A086431 n).toNat

end

end A086428.P18263874316500333255

/-! ## A086428.P5500882920928045793

`A057164(A085174(A057164(n)))`
-/

namespace A086428.P5500882920928045793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085174 (A057164 n).toNat).toNat

end

end A086428.P5500882920928045793

/-! ## A086428.P5700176925994714036

`A057506(A085173(A057505(n)))`
-/

namespace A086428.P5700176925994714036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A085173 (A057505 n).toNat).toNat

end

end A086428.P5700176925994714036

/-! ## A086428.P16844699001406817680

`A125982(A057501(A125981(n)))`
-/

namespace A086428.P16844699001406817680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057501 (A125981 n).toNat).toNat

end

end A086428.P16844699001406817680

/-! ## A086428.P10688955657338506116

`A057506(A057163(A085162(A057506(n))))`
-/

namespace A086428.P10688955657338506116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057163 (A085162 (A057506 n).toNat).toNat).toNat

end

end A086428.P10688955657338506116

/-! ## A086428.P14268637537372107162

`A130922(A074684(A085174(A130922(A074684(n)))))`
-/

namespace A086428.P14268637537372107162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A074684 (A085174 (A130922 (A074684 n).toNat).toNat).toNat).toNat

end

end A086428.P14268637537372107162

/-! ## A086428.P4448242354803242484

`A074683(A130921(A085174(A074683(A130921(n)))))`
-/

namespace A086428.P4448242354803242484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A130921 (A085174 (A074683 (A130921 n).toNat).toNat).toNat).toNat

end

end A086428.P4448242354803242484

/-! ## A086428.P3913492490072855069

`A086427(A086430(n))`
-/

namespace A086428.P3913492490072855069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086427 (A086430 n).toNat

end

end A086428.P3913492490072855069

/-! ## A086428.P13459619966166017337

`A057509(A086427(A057509(n)))`
-/

namespace A086428.P13459619966166017337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A086427 (A057509 n).toNat).toNat

end

end A086428.P13459619966166017337

/-!
# A086429: Permutation of natural numbers induced by the Catalan bijection gma086429 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086429, there is no canonical definition to state claims against.
-/

/-! ## A086429.P7453858189070753102

`A069773(A057502(n))`
-/

namespace A086429.P7453858189070753102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A057502 n).toNat

end

end A086429.P7453858189070753102

/-! ## A086429.P18216211562430318023

`A069775(A057510(n))`
-/

namespace A086429.P18216211562430318023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069775 (A057510 n).toNat

end

end A086429.P18216211562430318023

/-! ## A086429.P11947968088744149672

`A069773(A069889(A057164(n)))`
-/

namespace A086429.P11947968088744149672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A069889 (A057164 n).toNat).toNat

end

end A086429.P11947968088744149672

/-! ## A086429.P1144927428146582212

`A069773(A057164(A069888(n)))`
-/

namespace A086429.P1144927428146582212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A057164 (A069888 n).toNat).toNat

end

end A086429.P1144927428146582212

/-! ## A086429.P1210100590555780585

`A069773(A082314(A069889(n)))`
-/

namespace A086429.P1210100590555780585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A082314 (A069889 n).toNat).toNat

end

end A086429.P1210100590555780585

/-! ## A086429.P931113162042182039

`A069787(A085166(A069787(n)))`
-/

namespace A086429.P931113162042182039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A085166 (A069787 n).toNat).toNat

end

end A086429.P931113162042182039

/-! ## A086429.P3242910094710198368

`A069775(A057508(A057509(A057508(n))))`
-/

namespace A086429.P3242910094710198368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069775 (A057508 (A057509 (A057508 n).toNat).toNat).toNat

end

end A086429.P3242910094710198368

/-! ## A086429.P15186564977183823067

`A069773(A082314(A057164(A057501(n))))`
-/

namespace A086429.P15186564977183823067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A082314 (A057164 (A057501 n).toNat).toNat).toNat

end

end A086429.P15186564977183823067

/-! ## A086429.P4032863112797024589

`A069773(A069772(A057501(A069772(n))))`
-/

namespace A086429.P4032863112797024589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A069772 (A057501 (A069772 n).toNat).toNat).toNat

end

end A086429.P4032863112797024589

/-! ## A086429.P2073070521787173112

`A069773(A069889(A069772(A069771(n))))`
-/

namespace A086429.P2073070521787173112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A069889 (A069772 (A069771 n).toNat).toNat).toNat

end

end A086429.P2073070521787173112

/-!
# A086430: Permutation of natural numbers induced by the Catalan bijection gma086430 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086430, there is no canonical definition to state claims against.
-/

/-! ## A086430.P2793876880662809551

`A057501(A069774(n))`
-/

namespace A086430.P2793876880662809551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069774 n).toNat

end

end A086430.P2793876880662809551

/-! ## A086430.P5584393934819799739

`A057509(A069776(n))`
-/

namespace A086430.P5584393934819799739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069776 n).toNat

end

end A086430.P5584393934819799739

/-! ## A086430.P7011098797918963202

`A057164(A085160(A057164(n)))`
-/

namespace A086430.P7011098797918963202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085160 (A057164 n).toNat).toNat

end

end A086430.P7011098797918963202

/-! ## A086430.P5238148557108056320

`A085172(A085159(A085171(n)))`
-/

namespace A086430.P5238148557108056320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085159 (A085171 n).toNat).toNat

end

end A086430.P5238148557108056320

/-! ## A086430.P7032914929508755260

`A057501(A130348(A069767(n)))`
-/

namespace A086430.P7032914929508755260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A130348 (A069767 n).toNat).toNat

end

end A086430.P7032914929508755260

/-! ## A086430.P9643837130886960006

`A057501(A057506(A057501(A057505(n))))`
-/

namespace A086430.P9643837130886960006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057506 (A057501 (A057505 n).toNat).toNat).toNat

end

end A086430.P9643837130886960006

/-! ## A086430.P10585376640105041838

`A057501(A057163(A057164(A082332(n))))`
-/

namespace A086430.P10585376640105041838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057163 (A057164 (A082332 n).toNat).toNat).toNat

end

end A086430.P10585376640105041838

/-! ## A086430.P1643287274034207740

`A057509(A069787(A069775(A069787(n))))`
-/

namespace A086430.P1643287274034207740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069787 (A069775 (A069787 n).toNat).toNat).toNat

end

end A086430.P1643287274034207740

/-! ## A086430.P17689546147044572330

`A082334(A082331(A082331(A082334(n))))`
-/

namespace A086430.P17689546147044572330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082334 (A082331 (A082331 (A082334 n).toNat).toNat).toNat

end

end A086430.P17689546147044572330

/-! ## A086430.P3125120036368275263

`A057501(A082331(A082313(A082331(A069888(n)))))`
-/

namespace A086430.P3125120036368275263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082331 (A082313 (A082331 (A069888 n).toNat).toNat).toNat).toNat

end

end A086430.P3125120036368275263

/-!
# A086431: Involution of natural numbers induced by the Catalan bijection gma086431 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A086431, there is no canonical definition to state claims against.
-/

/-! ## A086431.P9354617599929966549

`A085172(A057164(n))`
-/

namespace A086431.P9354617599929966549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A057164 n).toNat

end

end A086431.P9354617599929966549

/-! ## A086431.P10811070700952369598

`A057164(A085171(n))`
-/

namespace A086431.P10811070700952369598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085171 n).toNat

end

end A086431.P10811070700952369598

/-! ## A086431.P16636319557493817838

`A057163(A086428(n))`
-/

namespace A086431.P16636319557493817838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A086428 n).toNat

end

end A086431.P16636319557493817838

/-! ## A086431.P14405590070464555956

`A125982(A086426(n))`
-/

namespace A086431.P14405590070464555956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A086426 n).toNat

end

end A086431.P14405590070464555956

/-! ## A086431.P14592932085073978980

`A085172(A085172(A085161(n)))`
-/

namespace A086431.P14592932085073978980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085172 (A085161 n).toNat).toNat

end

end A086431.P14592932085073978980

/-! ## A086431.P5431691510264487716

`A085172(A085172(A085163(A057508(n))))`
-/

namespace A086431.P5431691510264487716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085172 (A085163 (A057508 n).toNat).toNat).toNat

end

end A086431.P5431691510264487716

/-! ## A086431.P4268882943858582012

`A085172(A085172(A057508(A085164(n))))`
-/

namespace A086431.P4268882943858582012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085172 (A057508 (A085164 n).toNat).toNat).toNat

end

end A086431.P4268882943858582012

/-! ## A086431.P10774728536611022988

`A125982(A057163(A057506(A125981(n))))`
-/

namespace A086431.P10774728536611022988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057163 (A057506 (A125981 n).toNat).toNat).toNat

end

end A086431.P10774728536611022988

/-! ## A086431.P15989211087957653255

`A057163(A057506(A057163(A085162(A057506(n)))))`
-/

namespace A086431.P15989211087957653255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057506 (A057163 (A085162 (A057506 n).toNat).toNat).toNat).toNat

end

end A086431.P15989211087957653255

/-! ## A086431.P5275207162956199837

`A057164(A130921(A086426(A130921(A130922(n)))))`
-/

namespace A086431.P5275207162956199837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130921 (A086426 (A130921 (A130922 n).toNat).toNat).toNat).toNat

end

end A086431.P5275207162956199837

/-!
# A086433: Contraction-permutation of A085169: a(n) = A082853(A085169(A081291(n))).

The programs for A086433, there is no canonical definition to state claims against.
-/

/-! ## A086433.P13882426063310209040

`A082853(A085169(A081291(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086433.P13882426063310209040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A085169 (A081291 n).toNat).toNat

end

end A086433.P13882426063310209040

/-! ## A086433.P3805577660394674902

`A082853(A085169(A082855(n+1)+n))`
-/

namespace A086433.P3805577660394674902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A085169 (A082855 (n + 1) + (n : ℤ)).toNat).toNat

end

end A086433.P3805577660394674902

/-!
# A086434: Contraction-permutation of A085170: a(n) = A082853(A085170(A081291(n))).

The programs for A086434, there is no canonical definition to state claims against.
-/

/-! ## A086434.P5935663240546290253

`A082853(A085170(A081291(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086434.P5935663240546290253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A085170 (A081291 n).toNat).toNat

end

end A086434.P5935663240546290253

/-! ## A086434.P3872369431818582091

`A082853(A085170(A082855(n+1)+n))`
-/

namespace A086434.P3872369431818582091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A085170 (A082855 (n + 1) + (n : ℤ)).toNat).toNat

end

end A086434.P3872369431818582091

/-! ## A086434.P14087393134299203601

`A082853(A085170(A082852(2*n)+n))`
-/

namespace A086434.P14087393134299203601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A085170 (A082852 (2 * n) + (n : ℤ)).toNat).toNat

end

end A086434.P14087393134299203601

/-! ## A086434.P15279623839640081045

`A085170(A082855(n)+n)-A082855(n)`
-/

namespace A086434.P15279623839640081045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A082855 n + (n : ℤ)).toNat - A082855 n

end

end A086434.P15279623839640081045

/-!
# A086435: Maximum number of parts possible in a factorization of n into a product of distinct numbers > 1.

The programs for A086435, there is no canonical definition to state claims against.
-/

/-! ## A086435.P13550222292198291035

`A001222(∏{p}[A297160(A000005(n+1)), #])`
-/

namespace A086435.P13550222292198291035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297160 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086435.P13550222292198291035

/-! ## A086435.P10656593026693046742

`A186188(A000005(n+1))%A000193(A153080(n))`
-/

namespace A086435.P10656593026693046742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186188 (A000005 (n + 1)).toNat) (A000193 (A153080 n).toNat)

end

end A086435.P10656593026693046742

/-! ## A086435.P4454172807130365996

`floor(log(A072567(∏{e}[n+1, #+1])))`
-/

namespace A086435.P4454172807130365996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A072567 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ)⌋

end

end A086435.P4454172807130365996

/-! ## A086435.P15092063946772502706

`A262303(3*A000005(n+1))`
-/

namespace A086435.P15092063946772502706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262303 (3 * A000005 (n + 1)).toNat

end

end A086435.P15092063946772502706

/-! ## A086435.P18208283141511329411

`A225541(∑{d}[(n+1)², A001222(#)])`
-/

namespace A086435.P18208283141511329411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (∑ d ∈ Nat.divisors (f1 n), A001222 d).toNat

end

end A086435.P18208283141511329411

/-! ## A086435.P12761523144504058638

`A004218(A005934(Δ[A006218(n)]))`
-/

namespace A086435.P12761523144504058638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A005934 (f1 (n + 1) - f1 n).toNat).toNat

end

end A086435.P12761523144504058638

/-! ## A086435.P16851118931951978597

`A004216(2*A007425(n+1)²)`
-/

namespace A086435.P16851118931951978597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (2 * A007425 (n + 1) ^ 2).toNat

end

end A086435.P16851118931951978597

/-! ## A086435.P17252678440711145332

`A004216(3*A000005(n+1)^3)`
-/

namespace A086435.P17252678440711145332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (3 * A000005 (n + 1) ^ 3).toNat

end

end A086435.P17252678440711145332

/-! ## A086435.P14954712976590511118

`A001221(A000041(A000041(∑{e}[n+1, #+2])))`
-/

namespace A086435.P14954712976590511118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000041 (A000041 (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 2))).toNat).toNat

end

end A086435.P14954712976590511118

/-! ## A086435.P11422189240257077731

`A000194(A000005(n+1)-A232927(n+3)%2)`
-/

namespace A086435.P11422189240257077731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000005 (n + 1) - Int.tmod (A232927 (n + 3)) 2).toNat

end

end A086435.P11422189240257077731

/-! ## A086435.P16022317423212644787

`A349909(A000005(A163109((n+1)²)))`
-/

namespace A086435.P16022317423212644787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349909 (A000005 (A163109 ((n + 1) ^ 2)).toNat).toNat

end

end A086435.P16022317423212644787

/-!
# A086436: Maximum number of parts possible in a factorization of n; a(1) = 1, and for n > 1, a(n) = A001222(n) = bigomega(n).

The programs for A086436, the canonical program `A086436.P11265761020980018024` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086436 has offset 1).

The definition of A086436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086436.P11265761020980018024

`∑{e}[abs(1-n)+2, #]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086436

/-- `∑{e}[abs(1-n)+2, #]` -/
def P11265761020980018024.Spec : Prop :=
  ∀ n, (P11265761020980018024.a n : ℤ) = A086436 (n + 1)

theorem P11265761020980018024.correct : P11265761020980018024.Spec := by
  intro n
  simp only [A086436, Nat.add_sub_cancel]

end A086436

/-! ## A086436.P3520990951227909238

`∏{e}[2^∑{e}[n+1, #], #]`
-/

namespace A086436.P3520990951227909238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A086436.P3520990951227909238

namespace A086436

/-- `∏{e}[2^∑{e}[n+1, #], #]` -/
def P3520990951227909238.Spec : Prop :=
  ∀ n, (P3520990951227909238.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P5901246262186877833

`∏{e}[∏{e}[n+1, 2^#], #]`
-/

namespace A086436.P5901246262186877833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A086436.P5901246262186877833

namespace A086436

/-- `∏{e}[∏{e}[n+1, 2^#], #]` -/
def P5901246262186877833.Spec : Prop :=
  ∀ n, (P5901246262186877833.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P18179926779224364356

`∑{e}[n+1, #]+floor(acot(n))`
-/

namespace A086436.P18179926779224364356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A086436.P18179926779224364356

namespace A086436

/-- `∑{e}[n+1, #]+floor(acot(n))` -/
def P18179926779224364356.Spec : Prop :=
  ∀ n, P18179926779224364356.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P377146425369686535

`∑{e}[n+1, #]+C(2, n+2)`
-/

namespace A086436.P377146425369686535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + Nat.choose 2 (n + 2)

end

end A086436.P377146425369686535

namespace A086436

/-- `∑{e}[n+1, #]+C(2, n+2)` -/
def P377146425369686535.Spec : Prop :=
  ∀ n, (P377146425369686535.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P10515743990281069290

`floor(∑{e}[n+1, #]+1/(n+1))`
-/

namespace A086436.P10515743990281069290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) + 1 / (n + 1 : ℚ)⌋

end

end A086436.P10515743990281069290

namespace A086436

/-- `floor(∑{e}[n+1, #]+1/(n+1))` -/
def P10515743990281069290.Spec : Prop :=
  ∀ n, P10515743990281069290.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P16040569201091325878

`round(∑{e}[n+1, #]+1/(n+2))`
-/

namespace A086436.P16040569201091325878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) + 1 / (n + 2 : ℚ))

end

end A086436.P16040569201091325878

namespace A086436

/-- `round(∑{e}[n+1, #]+1/(n+2))` -/
def P16040569201091325878.Spec : Prop :=
  ∀ n, P16040569201091325878.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P1962824287762770241

`∑{e}[n+1, #]^(n²%(n+1))`
-/

namespace A086436.P1962824287762770241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (n ^ 2 % (n + 1))

end

end A086436.P1962824287762770241

namespace A086436

/-- `∑{e}[n+1, #]^(n²%(n+1))` -/
def P1962824287762770241.Spec : Prop :=
  ∀ n, (P1962824287762770241.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P16288485964318882159

`ceil(∑{e}[n+1, #]^(n/(n+1)))`
-/

namespace A086436.P16288485964318882159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) ^ ((n : ℚ) / (n + 1 : ℚ) : ℝ)⌉

end

end A086436.P16288485964318882159

namespace A086436

/-- `ceil(∑{e}[n+1, #]^(n/(n+1)))` -/
def P16288485964318882159.Spec : Prop :=
  ∀ n, P16288485964318882159.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P13070366892033771659

`ceil(∑{e}[n+1, #]-(n-1)/(n+1))`
-/

namespace A086436.P13070366892033771659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) - ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A086436.P13070366892033771659

namespace A086436

/-- `ceil(∑{e}[n+1, #]-(n-1)/(n+1))` -/
def P13070366892033771659.Spec : Prop :=
  ∀ n, P13070366892033771659.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P16138927051491006513

`A252736(n+1)+1`
-/

namespace A086436.P16138927051491006513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) + 1

end

end A086436.P16138927051491006513

namespace A086436

/-- `A252736(n+1)+1` -/
def P16138927051491006513.Spec : Prop :=
  ∀ n, P16138927051491006513.a n = A086436 (n + 1)

theorem P16138927051491006513.correct : P16138927051491006513.Spec := by
  intro n
  simp only [A086436, Nat.add_sub_cancel, A086436.P16138927051491006513.a, A086436.P11265761020980018024.f1, A086436.P11265761020980018024.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086436

/-! ## A086436.P7860034216614084184

`A028310(∑{e}[n+1, #])`
-/

namespace A086436.P7860034216614084184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A086436.P7860034216614084184

namespace A086436

/-- `A028310(∑{e}[n+1, #])` -/
def P7860034216614084184.Spec : Prop :=
  ∀ n, P7860034216614084184.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P16222072002026237083

`∏{e}[A061142(n+1), #]`
-/

namespace A086436.P16222072002026237083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086436.P16222072002026237083

namespace A086436

/-- `∏{e}[A061142(n+1), #]` -/
def P16222072002026237083.Spec : Prop :=
  ∀ n, (P16222072002026237083.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P6609812478972081936

`∏{e}[A068794(n+1), #]`
-/

namespace A086436.P6609812478972081936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086436.P6609812478972081936

namespace A086436

/-- `∏{e}[A068794(n+1), #]` -/
def P6609812478972081936.Spec : Prop :=
  ∀ n, (P6609812478972081936.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P7256540251782626943

`∏{e}[A079881(n+1), #]`
-/

namespace A086436.P7256540251782626943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086436.P7256540251782626943

namespace A086436

/-- `∏{e}[A079881(n+1), #]` -/
def P7256540251782626943.Spec : Prop :=
  ∀ n, (P7256540251782626943.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P12199361643729971767

`A001222(ceil(acot(n)+n))`
-/

namespace A086436.P12199361643729971767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A086436.P12199361643729971767

namespace A086436

/-- `A001222(ceil(acot(n)+n))` -/
def P12199361643729971767.Spec : Prop :=
  ∀ n, P12199361643729971767.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P9024748432823660796

`A001222(abs(1-n)+2)`
-/

namespace A086436.P9024748432823660796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 2).toNat

end

end A086436.P9024748432823660796

namespace A086436

/-- `A001222(abs(1-n)+2)` -/
def P9024748432823660796.Spec : Prop :=
  ∀ n, P9024748432823660796.a n = A086436 (n + 1)

end A086436

/-! ## A086436.P11656371674366133830

`val(A331188(n+1), 2)+1`
-/

namespace A086436.P11656371674366133830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A331188 (n + 1)).toNat 2 + 1

end

end A086436.P11656371674366133830

namespace A086436

/-- `val(A331188(n+1), 2)+1` -/
def P11656371674366133830.Spec : Prop :=
  ∀ n, (P11656371674366133830.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P7069187250365943929

`gcd(C(2, n), A001222(n+1))`
-/

namespace A086436.P7069187250365943929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A001222 (n + 1))

end

end A086436.P7069187250365943929

namespace A086436

/-- `gcd(C(2, n), A001222(n+1))` -/
def P7069187250365943929.Spec : Prop :=
  ∀ n, (P7069187250365943929.a n : ℤ) = A086436 (n + 1)

end A086436

/-! ## A086436.P15676409775339476655

`∑{e}[A032742(n+1), #]+1`
-/

namespace A086436.P15676409775339476655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A086436.P15676409775339476655

namespace A086436

/-- `∑{e}[A032742(n+1), #]+1` -/
def P15676409775339476655.Spec : Prop :=
  ∀ n, (P15676409775339476655.a n : ℤ) = A086436 (n + 1)

end A086436

/-!
# A086437: Triangle of number C(3; m,k) of arrangements of k objects of one type and m of another such that no 3-run occurs.

The programs for A086437, there is no canonical definition to state claims against.
-/

/-! ## A086437.P9451569012401010045

`A027907(A246337(n+1))%8`
-/

namespace A086437.P9451569012401010045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 (A246337 (n + 1)).toNat) 8

end

end A086437.P9451569012401010045

/-! ## A086437.P1657650429563201200

`C(A027907(n+1), A273712(A052326(n)))`
-/

namespace A086437.P1657650429563201200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027907 (n + 1)).toNat (A273712 (A052326 n).toNat).toNat

end

end A086437.P1657650429563201200

/-! ## A086437.P10798620748594914873

`A027907(n+1)-A220659(A015070(n+1))`
-/

namespace A086437.P10798620748594914873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (n + 1) - A220659 (A015070 (n + 1)).toNat

end

end A086437.P10798620748594914873

/-! ## A086437.P512897330074781345

`A027907(n+1)-A141702(A228900(n+1))`
-/

namespace A086437.P512897330074781345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (n + 1) - A141702 (A228900 (n + 1)).toNat

end

end A086437.P512897330074781345

/-! ## A086437.P6649605255667151351

`A027907(n+1)%A027905(A027936(n+1))`
-/

namespace A086437.P6649605255667151351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 (n + 1)) (A027905 (A027936 (n + 1)).toNat)

end

end A086437.P6649605255667151351

/-!
# A086441: Number of inequivalent ways a semi-infinite curve can cross a straight line n times.

The programs for A086441, there is no canonical definition to state claims against.
-/

/-! ## A086441.P8598857245462621128

`A077055(n)+A223093(n+1)/2`
-/

namespace A086441.P8598857245462621128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077055 n : ℚ) + (A223093 (n + 1) : ℚ) / 2

end

end A086441.P8598857245462621128

/-! ## A086441.P4099720932956776643

`A077055(n)+A004526(A223093(n+1))`
-/

namespace A086441.P4099720932956776643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077055 n + A004526 (A223093 (n + 1)).toNat

end

end A086441.P4099720932956776643

/-! ## A086441.P3662670391907103786

`A137620(A007748(n+1))+A223093(n+1)/2`
-/

namespace A086441.P3662670391907103786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137620 (A007748 (n + 1)).toNat : ℚ) + (A223093 (n + 1) : ℚ) / 2

end

end A086441.P3662670391907103786

/-! ## A086441.P15458699625298698980

`A137620(A007748(n+1))+A004526(A223093(n+1))`
-/

namespace A086441.P15458699625298698980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A007748 (n + 1)).toNat + A004526 (A223093 (n + 1)).toNat

end

end A086441.P15458699625298698980

/-!
# A086442: a(n) = A086323(n)/n.

The programs for A086442, there is no canonical definition to state claims against.
-/

/-! ## A086442.P12099546111642634932

`A086323(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086442.P12099546111642634932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086323 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A086442.P12099546111642634932

/-! ## A086442.P14767206205273933979

`(2^(n+1)-A086328(n+1))/(n+1)`
-/

namespace A086442.P14767206205273933979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A086328 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A086442.P14767206205273933979

/-! ## A086442.P1543457330064332846

`and(-A086328(n+1), A095121(n))/(n+1)`
-/

namespace A086442.P1543457330064332846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A086328 (n + 1)) (A095121 n) : ℚ) / (n + 1 : ℚ)

end

end A086442.P1543457330064332846

/-! ## A086442.P12754273727282873334

`and(-A086328(n+1), A126646(n))/(n+1)`
-/

namespace A086442.P12754273727282873334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A086328 (n + 1)) (A126646 n) : ℚ) / (n + 1 : ℚ)

end

end A086442.P12754273727282873334

/-! ## A086442.P8851329357647621549

`(A048578(n)-(A086328(n+1)+1))/(n+1)`
-/

namespace A086442.P8851329357647621549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048578 n - (A086328 (n + 1) + 1) : ℚ) / (n + 1 : ℚ)

end

end A086442.P8851329357647621549

/-!
# A086443: Expansion of x^2/((1-4*x)*(1-3*x)^2).

The programs for A086443, the canonical program `A086443.P3540801945329744907` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086443 has offset 0).

The definition of A086443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-10x+33x^2-36x^3))` (program `A086443.P3540801945329744907`, by `A086443.P3540801945329744907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086443.P4360058459084765156

`4^n-3^(n-1)*(n+3)`
-/

namespace A086443.P4360058459084765156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 3 : ℚ)

end

end A086443.P4360058459084765156

namespace A086443

/-- `4^n-3^(n-1)*(n+3)` -/
def P4360058459084765156.Spec : Prop :=
  ∀ n, P4360058459084765156.a n = (A086443 n : ℚ)

end A086443

/-! ## A086443.P3540801945329744907

`ogf(x^2/(1-10x+33x^2-36x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086443

/-- `ogf(x^2/(1-10x+33x^2-36x^3))` -/
def P3540801945329744907.Spec : Prop :=
  ∀ n, P3540801945329744907.a n = A086443 n

theorem P3540801945329744907.correct : P3540801945329744907.Spec := by
  intro n
  simp only [A086443]

end A086443

/-! ## A086443.P2031960852349102888

`abs(4^n-A006234(n+3))`
-/

namespace A086443.P2031960852349102888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A006234 (n + 3)|

end

end A086443.P2031960852349102888

namespace A086443

/-- `abs(4^n-A006234(n+3))` -/
def P2031960852349102888.Spec : Prop :=
  ∀ n, P2031960852349102888.a n = A086443 n

end A086443

/-! ## A086443.P11913347843261480237

`abs(A027471(n+1)-A005061(n))`
-/

namespace A086443.P11913347843261480237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027471 (n + 1) - A005061 n|

end

end A086443.P11913347843261480237

namespace A086443

/-- `abs(A027471(n+1)-A005061(n))` -/
def P11913347843261480237.Spec : Prop :=
  ∀ n, P11913347843261480237.a n = A086443 n

end A086443

/-! ## A086443.P12253058292560547347

`abs(A006234(n+3)-A000302(n))`
-/

namespace A086443.P12253058292560547347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006234 (n + 3) - A000302 n|

end

end A086443.P12253058292560547347

namespace A086443

/-- `abs(A006234(n+3)-A000302(n))` -/
def P12253058292560547347.Spec : Prop :=
  ∀ n, P12253058292560547347.a n = A086443 n

end A086443

/-! ## A086443.P17503324222440665540

`and(-A006234(n+3), A000225(2*n))`
-/

namespace A086443.P17503324222440665540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A006234 (n + 3)) (A000225 (2 * n))

end

end A086443.P17503324222440665540

namespace A086443

/-- `and(-A006234(n+3), A000225(2*n))` -/
def P17503324222440665540.Spec : Prop :=
  ∀ n, P17503324222440665540.a n = A086443 n

end A086443

/-! ## A086443.P12862390454358448530

`Δ[A083586(n)-A002450(n)]`
-/

namespace A086443.P12862390454358448530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083586 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086443.P12862390454358448530

namespace A086443

/-- `Δ[A083586(n)-A002450(n)]` -/
def P12862390454358448530.Spec : Prop :=
  ∀ n, P12862390454358448530.a n = A086443 n

end A086443

/-! ## A086443.P6608690805010700017

`A125586(n+1)%A000302(n)`
-/

namespace A086443.P6608690805010700017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125586 (n + 1)) (A000302 n)

end

end A086443.P6608690805010700017

namespace A086443

/-- `A125586(n+1)%A000302(n)` -/
def P6608690805010700017.Spec : Prop :=
  ∀ n, P6608690805010700017.a n = A086443 n

end A086443

/-! ## A086443.P3461099522144475

`and(A024036(n), A125586(n+1))`
-/

namespace A086443.P3461099522144475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A125586 (n + 1))

end

end A086443.P3461099522144475

namespace A086443

/-- `and(A024036(n), A125586(n+1))` -/
def P3461099522144475.Spec : Prop :=
  ∀ n, P3461099522144475.a n = A086443 n

end A086443

/-! ## A086443.P3450834671014079125

`and(A125586(n+1), A198693(n))`
-/

namespace A086443.P3450834671014079125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125586 (n + 1)) (A198693 n)

end

end A086443.P3450834671014079125

namespace A086443

/-- `and(A125586(n+1), A198693(n))` -/
def P3450834671014079125.Spec : Prop :=
  ∀ n, P3450834671014079125.a n = A086443 n

end A086443

/-! ## A086443.P8885294439110512151

`and(A125586(n+1), A283651(2*n+1))`
-/

namespace A086443.P8885294439110512151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125586 (n + 1)) (A283651 (2 * n + 1))

end

end A086443.P8885294439110512151

namespace A086443

/-- `and(A125586(n+1), A283651(2*n+1))` -/
def P8885294439110512151.Spec : Prop :=
  ∀ n, P8885294439110512151.a n = A086443 n

end A086443

/-! ## A086443.P744775724726628301

`and(A114569(n), A125586(n+1))`
-/

namespace A086443.P744775724726628301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114569 n) (A125586 (n + 1))

end

end A086443.P744775724726628301

namespace A086443

/-- `and(A114569(n), A125586(n+1))` -/
def P744775724726628301.Spec : Prop :=
  ∀ n, P744775724726628301.a n = A086443 n

end A086443

/-! ## A086443.P7735858775229076745

`and(A125586(n+1), A156760(n))`
-/

namespace A086443.P7735858775229076745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125586 (n + 1)) (A156760 n)

end

end A086443.P7735858775229076745

namespace A086443

/-- `and(A125586(n+1), A156760(n))` -/
def P7735858775229076745.Spec : Prop :=
  ∀ n, P7735858775229076745.a n = A086443 n

end A086443

/-! ## A086443.P8958266085617409111

`and(A125586(n+1), A198694(n))`
-/

namespace A086443.P8958266085617409111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125586 (n + 1)) (A198694 n)

end

end A086443.P8958266085617409111

namespace A086443

/-- `and(A125586(n+1), A198694(n))` -/
def P8958266085617409111.Spec : Prop :=
  ∀ n, P8958266085617409111.a n = A086443 n

end A086443

/-! ## A086443.P13055990203409585919

`and(A125586(n+1), A198695(n))`
-/

namespace A086443.P13055990203409585919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125586 (n + 1)) (A198695 n)

end

end A086443.P13055990203409585919

namespace A086443

/-- `and(A125586(n+1), A198695(n))` -/
def P13055990203409585919.Spec : Prop :=
  ∀ n, P13055990203409585919.a n = A086443 n

end A086443

/-!
# A086444: Sequence associated with palindromic structures.

The programs for A086444, the canonical program `A086444.P17858833535278574511` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086444 has offset 0).

The definition of A086444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086444.P17858833535278574511

`2^n/3+3^n/2+5^n/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086444

/-- `2^n/3+3^n/2+5^n/6` -/
def P17858833535278574511.Spec : Prop :=
  ∀ n, P17858833535278574511.a n = (A086444 n : ℚ)

end A086444

/-! ## A086444.P12723021710379022595

`Δ[A056272(n+1)]`
-/

namespace A086444.P12723021710379022595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086444.P12723021710379022595

namespace A086444

/-- `Δ[A056272(n+1)]` -/
def P12723021710379022595.Spec : Prop :=
  ∀ n, P12723021710379022595.a n = A086444 n

end A086444

/-! ## A086444.P3810147118448486871

`Δ[A056470(Δ[n²])]`
-/

namespace A086444.P3810147118448486871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086444.P3810147118448486871

namespace A086444

/-- `Δ[A056470(Δ[n²])]` -/
def P3810147118448486871.Spec : Prop :=
  ∀ n, P3810147118448486871.a n = A086444 n

end A086444

/-! ## A086444.P9724241762569139907

`Δ[A056506(Δ[n²])]`
-/

namespace A086444.P9724241762569139907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086444.P9724241762569139907

namespace A086444

/-- `Δ[A056506(Δ[n²])]` -/
def P9724241762569139907.Spec : Prop :=
  ∀ n, P9724241762569139907.a n = A086444 n

end A086444

/-! ## A086444.P14635493363502986813

`record[Δ[A056470(n+2)]]`
-/

namespace A086444.P14635493363502986813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086444.P14635493363502986813

namespace A086444

/-- `record[Δ[A056470(n+2)]]` -/
def P14635493363502986813.Spec : Prop :=
  ∀ n, P14635493363502986813.a n = A086444 n

end A086444

/-! ## A086444.P2562471208960341960

`Δ[∑{d}[2*n+1, A056516(#)]]`
-/

namespace A086444.P2562471208960341960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A056516 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086444.P2562471208960341960

namespace A086444

/-- `Δ[∑{d}[2*n+1, A056516(#)]]` -/
def P2562471208960341960.Spec : Prop :=
  ∀ n, P2562471208960341960.a n = A086444 n

end A086444

/-!
# A086445: Partial sums of A005578.

The programs for A086445, the canonical program `A086445.P11619309759868928111` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086445 has offset 0).

The definition of A086445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086445.P11619309759868928111

`A000975(n)+A008619(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086445

/-- `A000975(n)+A008619(n)` -/
def P11619309759868928111.Spec : Prop :=
  ∀ n, P11619309759868928111.a n = A086445 n

theorem P11619309759868928111.correct : P11619309759868928111.Spec := by
  intro n
  simp only [A086445]

end A086445

/-! ## A086445.P15009973287468219086

`2*2^n/3+(-1)^n/12+n/2+1/4`
-/

namespace A086445.P15009973287468219086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 2 ^ n : ℚ) / 3 + ((-1) ^ n : ℚ) / 12 + (n : ℚ) / 2 + (1 : ℚ) / 4

end

end A086445.P15009973287468219086

namespace A086445

/-- `2*2^n/3+(-1)^n/12+n/2+1/4` -/
def P15009973287468219086.Spec : Prop :=
  ∀ n, P15009973287468219086.a n = (A086445 n : ℚ)

end A086445

/-! ## A086445.P2814571440488819197

`∑[∑[ogf((-1+x+x^2)/(-1+x+2x^2))]]`
-/

namespace A086445.P2814571440488819197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086445.P2814571440488819197

namespace A086445

/-- `∑[∑[ogf((-1+x+x^2)/(-1+x+2x^2))]]` -/
def P2814571440488819197.Spec : Prop :=
  ∀ n, P2814571440488819197.a n = A086445 n

end A086445

/-! ## A086445.P11078734561036574436

`ogf((1-x-x^2)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A086445.P11078734561036574436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 1, 3, -2] n

end

end A086445.P11078734561036574436

namespace A086445

/-- `ogf((1-x-x^2)/(1-3x+x^2+3x^3-2x^4))` -/
def P11078734561036574436.Spec : Prop :=
  ∀ n, P11078734561036574436.a n = A086445 n

end A086445

/-! ## A086445.P8432224395030180174

`floor(2*a(n-1)+1-n/2)` with `a(0)=1`
-/

namespace A086445.P8432224395030180174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) + (1 - (n : ℚ) / 2)⌋

end

end A086445.P8432224395030180174

namespace A086445

/-- `floor(2*a(n-1)+1-n/2)` -/
def P8432224395030180174.Spec : Prop :=
  ∀ n, P8432224395030180174.a n = A086445 n

end A086445

/-! ## A086445.P15241178369027495272

`floor(a(n-1)+a(n-1)+1-n/2)` with `a(0)=1`
-/

namespace A086445.P15241178369027495272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (1 - (n : ℚ) / 2))⌋

end

end A086445.P15241178369027495272

namespace A086445

/-- `floor(a(n-1)+a(n-1)+1-n/2)` -/
def P15241178369027495272.Spec : Prop :=
  ∀ n, P15241178369027495272.a n = A086445 n

end A086445

/-! ## A086445.P14370302731375018039

`∑[A005578(n)]`
-/

namespace A086445.P14370302731375018039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086445.P14370302731375018039

namespace A086445

/-- `∑[A005578(n)]` -/
def P14370302731375018039.Spec : Prop :=
  ∀ n, P14370302731375018039.a n = A086445 n

end A086445

/-! ## A086445.P4961289927919557238

`∑[A052953(n)/2]`
-/

namespace A086445.P4961289927919557238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052953 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086445.P4961289927919557238

namespace A086445

/-- `∑[A052953(n)/2]` -/
def P4961289927919557238.Spec : Prop :=
  ∀ n, P4961289927919557238.a n = (A086445 n : ℚ)

end A086445

/-! ## A086445.P14924182752108513307

`∑[∑[A328284(n+2)]]`
-/

namespace A086445.P14924182752108513307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086445.P14924182752108513307

namespace A086445

/-- `∑[∑[A328284(n+2)]]` -/
def P14924182752108513307.Spec : Prop :=
  ∀ n, P14924182752108513307.a n = A086445 n

end A086445

/-! ## A086445.P924050227475014760

`record[∑[A077886(2*n)]]`
-/

namespace A086445.P924050227475014760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086445.P924050227475014760

namespace A086445

/-- `record[∑[A077886(2*n)]]` -/
def P924050227475014760.Spec : Prop :=
  ∀ n, P924050227475014760.a n = A086445 n

end A086445

/-! ## A086445.P5820177473513434361

`∑[A023105(n+1)-1]`
-/

namespace A086445.P5820177473513434361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086445.P5820177473513434361

namespace A086445

/-- `∑[A023105(n+1)-1]` -/
def P5820177473513434361.Spec : Prop :=
  ∀ n, P5820177473513434361.a n = A086445 n

end A086445

/-! ## A086445.P6029622850288746615

`∑[A128209(n+1)/2]`
-/

namespace A086445.P6029622850288746615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128209 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086445.P6029622850288746615

namespace A086445

/-- `∑[A128209(n+1)/2]` -/
def P6029622850288746615.Spec : Prop :=
  ∀ n, P6029622850288746615.a n = (A086445 n : ℚ)

end A086445

/-! ## A086445.P708860740179383655

`(A134522(n+1)+n)/3`
-/

namespace A086445.P708860740179383655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134522 (n + 1) + (n : ℤ) : ℚ) / 3

end

end A086445.P708860740179383655

namespace A086445

/-- `(A134522(n+1)+n)/3` -/
def P708860740179383655.Spec : Prop :=
  ∀ n, P708860740179383655.a n = (A086445 n : ℚ)

end A086445

/-! ## A086445.P6188182558826407582

`(A000975(n+1)+n+1)/2`
-/

namespace A086445.P6188182558826407582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A086445.P6188182558826407582

namespace A086445

/-- `(A000975(n+1)+n+1)/2` -/
def P6188182558826407582.Spec : Prop :=
  ∀ n, P6188182558826407582.a n = (A086445 n : ℚ)

end A086445

/-! ## A086445.P9368074373187530112

`xor(A126646(n), A178420(n+1))`
-/

namespace A086445.P9368074373187530112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A178420 (n + 1))

end

end A086445.P9368074373187530112

namespace A086445

/-- `xor(A126646(n), A178420(n+1))` -/
def P9368074373187530112.Spec : Prop :=
  ∀ n, P9368074373187530112.a n = A086445 n

end A086445

/-! ## A086445.P13621542628067790106

`A127983(n+1)%A281500(n)`
-/

namespace A086445.P13621542628067790106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127983 (n + 1)) (A281500 n)

end

end A086445.P13621542628067790106

namespace A086445

/-- `A127983(n+1)%A281500(n)` -/
def P13621542628067790106.Spec : Prop :=
  ∀ n, P13621542628067790106.a n = A086445 n

end A086445

/-!
# A086446: Integers representable as the product of the sum of three positive integers with the sum of their reciprocals: n=(x+y+z)*(1/x+1/y+1/z).

The programs for A086446, there is no canonical definition to state claims against.
-/

/-! ## A086446.P6712102247012490471

`A350988(n+1)+A165824(A333788(n+1))`
-/

namespace A086446.P6712102247012490471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350988 (n + 1) + A165824 (A333788 (n + 1)).toNat

end

end A086446.P6712102247012490471

/-!
# A086449: a(0) = 1, a(2n+1) = a(n), a(2n) = a(n) + a(n-1) + ... + a(n-2^m) + ... where a(n) = 0 for n < 0.

The programs for A086449, there is no canonical definition to state claims against.
-/

/-! ## A086449.P17747235405914242772

`A227186(A022318(n))+A053799(A347696(n))`
-/

namespace A086449.P17747235405914242772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227186 (A022318 n).toNat + A053799 (A347696 n).toNat

end

end A086449.P17747235405914242772

/-! ## A086449.P4664333198494528379

`A053799(A347696(n))^A000034(A023359(n))`
-/

namespace A086449.P4664333198494528379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053799 (A347696 n).toNat : ℚ) ^ (A000034 (A023359 n).toNat : ℤ)

end

end A086449.P4664333198494528379

/-! ## A086449.P2522660327796472920

`A053799(A347696(n))+A000007(A061294(n+1))`
-/

namespace A086449.P2522660327796472920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 (A347696 n).toNat + A000007 (A061294 (n + 1)).toNat

end

end A086449.P2522660327796472920

/-! ## A086449.P6940663105129614469

`and((n+1)/2^val(n+1, 2), A000447(A001405(n)))`
-/

namespace A086449.P6940663105129614469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A000447 (A001405 n).toNat)

end

end A086449.P6940663105129614469

/-! ## A086449.P357614869936008106

`and(A000265(n+1), A065621(A001405(n)))`
-/

namespace A086449.P357614869936008106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (n + 1)) (A065621 (A001405 n).toNat)

end

end A086449.P357614869936008106

/-!
# A086450: a(0) = 1, a(2n+1) = a(n), a(2n) = a(n) + a(n-1) + ... + a(n-m) + ... where a(n

The programs for A086450, the canonical program `A086450.P12606238815758101308` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086450 has offset 0).

The definition of A086450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086450.P12606238815758101308

`A085765(A025480(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A086450

/-- `A085765(A025480(n))` -/
def P12606238815758101308.Spec : Prop :=
  ∀ n, P12606238815758101308.a n = A086450 n

theorem P12606238815758101308.correct : P12606238815758101308.Spec := by
  intro n
  simp only [A086450]

end A086450

/-! ## A086450.P11283094001153093549

`A085765(A153733(n)/2)`
-/

namespace A086450.P11283094001153093549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A086450.P11283094001153093549

namespace A086450

/-- `A085765(A153733(n)/2)` -/
def P11283094001153093549.Spec : Prop :=
  ∀ n, P11283094001153093549.a n = A086450 n

end A086450

/-! ## A086450.P10947496472461731034

`A085765(A003602(n+1)-1)`
-/

namespace A086450.P10947496472461731034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (A003602 (n + 1) - 1).toNat

end

end A086450.P10947496472461731034

namespace A086450

/-- `A085765(A003602(n+1)-1)` -/
def P10947496472461731034.Spec : Prop :=
  ∀ n, P10947496472461731034.a n = A086450 n

end A086450

/-! ## A086450.P963006314683258682

`A085765((A000265(n+1)-1)/2)`
-/

namespace A086450.P963006314683258682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A086450.P963006314683258682

namespace A086450

/-- `A085765((A000265(n+1)-1)/2)` -/
def P963006314683258682.Spec : Prop :=
  ∀ n, P963006314683258682.a n = A086450 n

end A086450

/-! ## A086450.P5649590841247742130

`A085765(A330393(n)-A001511(n+1))`
-/

namespace A086450.P5649590841247742130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (A330393 n - A001511 (n + 1)).toNat

end

end A086450.P5649590841247742130

namespace A086450

/-- `A085765(A330393(n)-A001511(n+1))` -/
def P5649590841247742130.Spec : Prop :=
  ∀ n, P5649590841247742130.a n = A086450 n

end A086450

/-! ## A086450.P9826864008742708712

`A085765(A000265(n+1)%A003602(n+1))`
-/

namespace A086450.P9826864008742708712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (Int.tmod (A000265 (n + 1)) (A003602 (n + 1))).toNat

end

end A086450.P9826864008742708712

namespace A086450

/-- `A085765(A000265(n+1)%A003602(n+1))` -/
def P9826864008742708712.Spec : Prop :=
  ∀ n, P9826864008742708712.a n = A086450 n

end A086450

/-! ## A086450.P12123481366828573933

`A085765(2*n+1)-A085765(2*n)`
-/

namespace A086450.P12123481366828573933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (2 * n + 1) - A085765 (2 * n)

end

end A086450.P12123481366828573933

namespace A086450

/-- `A085765(2*n+1)-A085765(2*n)` -/
def P12123481366828573933.Spec : Prop :=
  ∀ n, P12123481366828573933.a n = A086450 n

end A086450

/-!
# A086452: Number of maximal triangulations (using all 2(n+2) points) of a convex polygon having (n+2) sides and an interior point in the middle of each side.

The programs for A086452, there is no canonical definition to state claims against.
-/

/-! ## A086452.P823378489811248159

`A059346(A132209(n+1))`
-/

namespace A086452.P823378489811248159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A132209 (n + 1)).toNat

end

end A086452.P823378489811248159

/-! ## A086452.P4326348027456374349

`A059346(A142463(n+1))`
-/

namespace A086452.P4326348027456374349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A142463 (n + 1)).toNat

end

end A086452.P4326348027456374349

/-! ## A086452.P10697612596629430836

`A059346(A059993(n)+2)`
-/

namespace A086452.P10697612596629430836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A059993 n + 2).toNat

end

end A086452.P10697612596629430836

/-! ## A086452.P7779027926972941334

`A059346(xor(2, A059993(n)))`
-/

namespace A086452.P7779027926972941334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (Int.xor 2 (A059993 n)).toNat

end

end A086452.P7779027926972941334

/-! ## A086452.P7048725173255423081

`A059346(A055998(2*n+1)-n)`
-/

namespace A086452.P7048725173255423081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A055998 (2 * n + 1) - (n : ℤ)).toNat

end

end A086452.P7048725173255423081

/-! ## A086452.P3515050813134519531

`A059346(A034856(2*n+1)+n+2)`
-/

namespace A086452.P3515050813134519531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A034856 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A086452.P3515050813134519531

/-!
# A086453: Least difference between 5^n and a power of 2.

The programs for A086453, there is no canonical definition to state claims against.
-/

/-! ## A086453.P858899012919300106

`A053646(5^n)`
-/

namespace A086453.P858899012919300106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (5 ^ n)

end

end A086453.P858899012919300106

/-! ## A086453.P13477384902643613436

`A053646(A020729(n))/2`
-/

namespace A086453.P13477384902643613436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053646 (A020729 n).toNat : ℚ) / 2

end

end A086453.P13477384902643613436

/-!
# A086454: Number of divisors of prime powers: tau(p^e).

The programs for A086454, the canonical program `A086454.P16343334458700546911` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086454 has offset 1).

The definition of A086454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025474, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086454.P16343334458700546911

`A025474(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086454

/-- `A025474(n+1)+1` -/
def P16343334458700546911.Spec : Prop :=
  ∀ n, P16343334458700546911.a n = A086454 (n + 1)

theorem P16343334458700546911.correct : P16343334458700546911.Spec := by
  intro n
  simp only [A086454, Nat.add_sub_cancel]

end A086454

/-! ## A086454.P6116550426866500736

`A000005(A000961(n+1))`
-/

namespace A086454.P6116550426866500736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000961 (n + 1)).toNat

end

end A086454.P6116550426866500736

namespace A086454

/-- `A000005(A000961(n+1))` -/
def P6116550426866500736.Spec : Prop :=
  ∀ n, P6116550426866500736.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P17654719227309377131

`∑{e}[A138929(n+1), #]`
-/

namespace A086454.P17654719227309377131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086454.P17654719227309377131

namespace A086454

/-- `∑{e}[A138929(n+1), #]` -/
def P17654719227309377131.Spec : Prop :=
  ∀ n, (P17654719227309377131.a n : ℤ) = A086454 (n + 1)

end A086454

/-! ## A086454.P5894270579682509474

`A348553(A025474(n+1))`
-/

namespace A086454.P5894270579682509474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A025474 (n + 1)).toNat

end

end A086454.P5894270579682509474

namespace A086454

/-- `A348553(A025474(n+1))` -/
def P5894270579682509474.Spec : Prop :=
  ∀ n, P5894270579682509474.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P6505207560477030259

`A025473(n+1)+1-A192133(n+1)`
-/

namespace A086454.P6505207560477030259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) + (1 - A192133 (n + 1))

end

end A086454.P6505207560477030259

namespace A086454

/-- `A025473(n+1)+1-A192133(n+1)` -/
def P6505207560477030259.Spec : Prop :=
  ∀ n, P6505207560477030259.a n = A086454 (n + 1)

theorem P6505207560477030259.correct : P6505207560477030259.Spec := by
  intro n
  simp only [A086454, Nat.add_sub_cancel, A086454.P6505207560477030259.a, A086454.P16343334458700546911.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A192133, A192133.P10741399618334184473.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, A122111, A122111.P18124015185857335041.a, A028815, A028815.P810525423351225743.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086454

/-! ## A086454.P5942279789165741112

`A085729(n+1)/A025473(n+1)+1`
-/

namespace A086454.P5942279789165741112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085729 (n + 1) : ℚ) / (A025473 (n + 1) : ℚ) + 1

end

end A086454.P5942279789165741112

namespace A086454

/-- `A085729(n+1)/A025473(n+1)+1` -/
def P5942279789165741112.Spec : Prop :=
  ∀ n, P5942279789165741112.a n = (A086454 (n + 1) : ℚ)

end A086454

/-! ## A086454.P7659798392947518823

`A000005(sqrt(A056798(n+1)))`
-/

namespace A086454.P7659798392947518823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A086454.P7659798392947518823

namespace A086454

/-- `A000005(sqrt(A056798(n+1)))` -/
def P7659798392947518823.Spec : Prop :=
  ∀ n, P7659798392947518823.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P16335660686992201818

`A000005(A181062(n+1)+1)`
-/

namespace A086454.P16335660686992201818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181062 (n + 1) + 1).toNat

end

end A086454.P16335660686992201818

namespace A086454

/-- `A000005(A181062(n+1)+1)` -/
def P16335660686992201818.Spec : Prop :=
  ∀ n, P16335660686992201818.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P1755181302780867098

`A001222(sqrt(A056798(n+1)))+1`
-/

namespace A086454.P1755181302780867098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat + 1

end

end A086454.P1755181302780867098

namespace A086454

/-- `A001222(sqrt(A056798(n+1)))+1` -/
def P1755181302780867098.Spec : Prop :=
  ∀ n, P1755181302780867098.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P3863444855317637719

`A000005(record[n/a(A001221(n))])` with `a(0)=1`
-/

namespace A086454.P3863444855317637719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086454.P3863444855317637719

namespace A086454

/-- `A000005(record[n/a(A001221(n))])` -/
def P3863444855317637719.Spec : Prop :=
  ∀ n, P3863444855317637719.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P5481180061019896178

`A001222(A138929(n+1)/2)+1`
-/

namespace A086454.P5481180061019896178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat + 1

end

end A086454.P5481180061019896178

namespace A086454

/-- `A001222(A138929(n+1)/2)+1` -/
def P5481180061019896178.Spec : Prop :=
  ∀ n, P5481180061019896178.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P4750570415010813478

`∑{d}[A000961(n+1), A001221(#)]+1`
-/

namespace A086454.P4750570415010813478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d + 1

end

end A086454.P4750570415010813478

namespace A086454

/-- `∑{d}[A000961(n+1), A001221(#)]+1` -/
def P4750570415010813478.Spec : Prop :=
  ∀ n, P4750570415010813478.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P13643245201526199597

`A000005(record[A020639(n+1)^A001222(n+1)])`
-/

namespace A086454.P13643245201526199597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086454.P13643245201526199597

namespace A086454

/-- `A000005(record[A020639(n+1)^A001222(n+1)])` -/
def P13643245201526199597.Spec : Prop :=
  ∀ n, P13643245201526199597.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P2527864015922521663

`A000005(record[(n+1)/A006530(n+1)*A020639(n+1)])`
-/

namespace A086454.P2527864015922521663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086454.P2527864015922521663

namespace A086454

/-- `A000005(record[(n+1)/A006530(n+1)*A020639(n+1)])` -/
def P2527864015922521663.Spec : Prop :=
  ∀ n, P2527864015922521663.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P8268615793467023682

`A000005(record[A034699(n+1)])`
-/

namespace A086454.P8268615793467023682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086454.P8268615793467023682

namespace A086454

/-- `A000005(record[A034699(n+1)])` -/
def P8268615793467023682.Spec : Prop :=
  ∀ n, P8268615793467023682.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P2616365768458306688

`A001222(record[A034699(n+1)])+1`
-/

namespace A086454.P2616365768458306688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A086454.P2616365768458306688

namespace A086454

/-- `A001222(record[A034699(n+1)])+1` -/
def P2616365768458306688.Spec : Prop :=
  ∀ n, P2616365768458306688.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P2872971217024546992

`A001222(A138929(n+1))`
-/

namespace A086454.P2872971217024546992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138929 (n + 1)).toNat

end

end A086454.P2872971217024546992

namespace A086454

/-- `A001222(A138929(n+1))` -/
def P2872971217024546992.Spec : Prop :=
  ∀ n, P2872971217024546992.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P7386176119109755550

`A001222(2*A000961(n+1))`
-/

namespace A086454.P7386176119109755550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A000961 (n + 1)).toNat

end

end A086454.P7386176119109755550

namespace A086454

/-- `A001222(2*A000961(n+1))` -/
def P7386176119109755550.Spec : Prop :=
  ∀ n, P7386176119109755550.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P10600911756976910615

`A328026(2*A000961(n+1))`
-/

namespace A086454.P10600911756976910615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328026 (2 * A000961 (n + 1)).toNat

end

end A086454.P10600911756976910615

namespace A086454

/-- `A328026(2*A000961(n+1))` -/
def P10600911756976910615.Spec : Prop :=
  ∀ n, P10600911756976910615.a n = A086454 (n + 1)

end A086454

/-! ## A086454.P6068559610749070063

`A001222(A000961(n+1)+A000961(n+1))`
-/

namespace A086454.P6068559610749070063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 1) + A000961 (n + 1)).toNat

end

end A086454.P6068559610749070063

namespace A086454

/-- `A001222(A000961(n+1)+A000961(n+1))` -/
def P6068559610749070063.Spec : Prop :=
  ∀ n, P6068559610749070063.a n = A086454 (n + 1)

end A086454

/-!
# A086455: Sum of divisors of prime powers: sigma(p^e).

The programs for A086455, the canonical program `A086455.P13465488460408274082` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086455 has offset 1).

The definition of A086455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086455.P13465488460408274082

`A000203(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086455

/-- `A000203(A000961(n+1))` -/
def P13465488460408274082.Spec : Prop :=
  ∀ n, P13465488460408274082.a n = A086455 (n + 1)

theorem P13465488460408274082.correct : P13465488460408274082.Spec := by
  intro n
  simp only [A086455, Nat.add_sub_cancel]

end A086455

/-! ## A086455.P12782039870650010384

`∑{d}[A181062(n+1)+1, #]`
-/

namespace A086455.P12782039870650010384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086455.P12782039870650010384

namespace A086455

/-- `∑{d}[A181062(n+1)+1, #]` -/
def P12782039870650010384.Spec : Prop :=
  ∀ n, (P12782039870650010384.a n : ℤ) = A086455 (n + 1)

end A086455

/-! ## A086455.P2437550552771095175

`∑{d}[A138929(n+1)/2, #]`
-/

namespace A086455.P2437550552771095175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086455.P2437550552771095175

namespace A086455

/-- `∑{d}[A138929(n+1)/2, #]` -/
def P2437550552771095175.Spec : Prop :=
  ∀ n, (P2437550552771095175.a n : ℤ) = A086455 (n + 1)

end A086455

/-! ## A086455.P4994094265475367037

`A000203(sqrt(A056798(n+1)))`
-/

namespace A086455.P4994094265475367037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A086455.P4994094265475367037

namespace A086455

/-- `A000203(sqrt(A056798(n+1)))` -/
def P4994094265475367037.Spec : Prop :=
  ∀ n, P4994094265475367037.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P13809050398401850562

`A000203(A181062(n+1)+1)`
-/

namespace A086455.P13809050398401850562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A181062 (n + 1) + 1).toNat

end

end A086455.P13809050398401850562

namespace A086455

/-- `A000203(A181062(n+1)+1)` -/
def P13809050398401850562.Spec : Prop :=
  ∀ n, P13809050398401850562.a n = A086455 (n + 1)

theorem P13809050398401850562.correct : P13809050398401850562.Spec := by
  intro n
  simp only [A086455, Nat.add_sub_cancel, A086455.P13809050398401850562.a, A086455.P13465488460408274082.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086455

/-! ## A086455.P14014028783039336268

`A000203(A138929(n+1)/2)`
-/

namespace A086455.P14014028783039336268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A086455.P14014028783039336268

namespace A086455

/-- `A000203(A138929(n+1)/2)` -/
def P14014028783039336268.Spec : Prop :=
  ∀ n, P14014028783039336268.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P2489536298465490913

`A000203(∑[A275120(n+1)]-A057820(n+1))`
-/

namespace A086455.P2489536298465490913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j - A057820 (n + 1)).toNat

end

end A086455.P2489536298465490913

namespace A086455

/-- `A000203(∑[A275120(n+1)]-A057820(n+1))` -/
def P2489536298465490913.Spec : Prop :=
  ∀ n, P2489536298465490913.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P179706956750970699

`A000203(record[A020639(n+1)^A001222(n+1)])`
-/

namespace A086455.P179706956750970699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086455.P179706956750970699

namespace A086455

/-- `A000203(record[A020639(n+1)^A001222(n+1)])` -/
def P179706956750970699.Spec : Prop :=
  ∀ n, P179706956750970699.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P1775067434781197623

`A000203(record[(n+1)/A006530(n+1)*A020639(n+1)])`
-/

namespace A086455.P1775067434781197623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086455.P1775067434781197623

namespace A086455

/-- `A000203(record[(n+1)/A006530(n+1)*A020639(n+1)])` -/
def P1775067434781197623.Spec : Prop :=
  ∀ n, P1775067434781197623.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P7317905422956178173

`A000203(record[A034699(n+1)])`
-/

namespace A086455.P7317905422956178173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P7317905422956178173

namespace A086455

/-- `A000203(record[A034699(n+1)])` -/
def P7317905422956178173.Spec : Prop :=
  ∀ n, P7317905422956178173.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P14174952711588451065

`A000203(record[A330691(n+1)])`
-/

namespace A086455.P14174952711588451065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P14174952711588451065

namespace A086455

/-- `A000203(record[A330691(n+1)])` -/
def P14174952711588451065.Spec : Prop :=
  ∀ n, P14174952711588451065.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P2497363054934409656

`A000203(record[A330741(n+1)])`
-/

namespace A086455.P2497363054934409656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P2497363054934409656

namespace A086455

/-- `A000203(record[A330741(n+1)])` -/
def P2497363054934409656.Spec : Prop :=
  ∀ n, P2497363054934409656.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P7944634964476585279

`A000203(lt[A001221(n+1), 2]+1)`
-/

namespace A086455.P7944634964476585279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086455.P7944634964476585279

namespace A086455

/-- `A000203(lt[A001221(n+1), 2]+1)` -/
def P7944634964476585279.Spec : Prop :=
  ∀ n, P7944634964476585279.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P14105673417039949175

`A000203(record[A324388(n+1)])`
-/

namespace A086455.P14105673417039949175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P14105673417039949175

namespace A086455

/-- `A000203(record[A324388(n+1)])` -/
def P14105673417039949175.Spec : Prop :=
  ∀ n, P14105673417039949175.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P7669446510495015953

`A000203(record[A354933(n+1)])`
-/

namespace A086455.P7669446510495015953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P7669446510495015953

namespace A086455

/-- `A000203(record[A354933(n+1)])` -/
def P7669446510495015953.Spec : Prop :=
  ∀ n, P7669446510495015953.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P6739499606344289365

`A000203(record[A222416(n+1)])`
-/

namespace A086455.P6739499606344289365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P6739499606344289365

namespace A086455

/-- `A000203(record[A222416(n+1)])` -/
def P6739499606344289365.Spec : Prop :=
  ∀ n, P6739499606344289365.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P4542408353596956999

`A332994(A000961(2*n+1-n))`
-/

namespace A086455.P4542408353596956999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (A000961 (2 * n + 1 - n)).toNat

end

end A086455.P4542408353596956999

namespace A086455

/-- `A332994(A000961(2*n+1-n))` -/
def P4542408353596956999.Spec : Prop :=
  ∀ n, P4542408353596956999.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P8839286257625221321

`A000203(record[A028233(n+1)])`
-/

namespace A086455.P8839286257625221321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P8839286257625221321

namespace A086455

/-- `A000203(record[A028233(n+1)])` -/
def P8839286257625221321.Spec : Prop :=
  ∀ n, P8839286257625221321.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P6753639288430807194

`A000203(record[A034684(n+1)])`
-/

namespace A086455.P6753639288430807194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086455.P6753639288430807194

namespace A086455

/-- `A000203(record[A034684(n+1)])` -/
def P6753639288430807194.Spec : Prop :=
  ∀ n, P6753639288430807194.a n = A086455 (n + 1)

end A086455

/-! ## A086455.P2369109939861075230

`A006022(A138929(n+1))`
-/

namespace A086455.P2369109939861075230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (A138929 (n + 1)).toNat

end

end A086455.P2369109939861075230

namespace A086455

/-- `A006022(A138929(n+1))` -/
def P2369109939861075230.Spec : Prop :=
  ∀ n, P2369109939861075230.a n = A086455 (n + 1)

end A086455

/-!
# A086456: Expansion of (1 + x + sqrt(1 - 6*x + x^2))/2 in powers of x.

The programs for A086456, the canonical program `A086456.P993740706458250984` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086456 has offset 0).

The definition of A086456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086456.P85976617989606161

`A085403(n)+char[1]`
-/

namespace A086456.P85976617989606161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086456.P85976617989606161

namespace A086456

/-- `A085403(n)+char[1]` -/
def P85976617989606161.Spec : Prop :=
  ∀ n, P85976617989606161.a n = A086456 n

end A086456

/-! ## A086456.P15682902751351216495

`A000038(n)-A155069(n)`
-/

namespace A086456.P15682902751351216495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A155069 n

end

end A086456.P15682902751351216495

namespace A086456

/-- `A000038(n)-A155069(n)` -/
def P15682902751351216495.Spec : Prop :=
  ∀ n, P15682902751351216495.a n = A086456 n

end A086456

/-! ## A086456.P4196273180922867542

`A103137(n)*A165326(n)`
-/

namespace A086456.P4196273180922867542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 n * A165326 n

end

end A086456.P4196273180922867542

namespace A086456

/-- `A103137(n)*A165326(n)` -/
def P4196273180922867542.Spec : Prop :=
  ∀ n, P4196273180922867542.a n = A086456 n

end A086456

/-! ## A086456.P1446204674207601884

`A085403(n)/A373565(n)`
-/

namespace A086456.P1446204674207601884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085403 n : ℚ) / (A373565 n : ℚ)

end

end A086456.P1446204674207601884

namespace A086456

/-- `A085403(n)/A373565(n)` -/
def P1446204674207601884.Spec : Prop :=
  ∀ n, P1446204674207601884.a n = (A086456 n : ℚ)

end A086456

/-! ## A086456.P993740706458250984

`xor(A063524(n), A085403(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086456

/-- `xor(A063524(n), A085403(n))` -/
def P993740706458250984.Spec : Prop :=
  ∀ n, P993740706458250984.a n = A086456 n

theorem P993740706458250984.correct : P993740706458250984.Spec := by
  intro n
  simp only [A086456]

end A086456

/-! ## A086456.P9022960554970731683

`A000038(n)-abs(A103137(n))`
-/

namespace A086456.P9022960554970731683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - |A103137 n|

end

end A086456.P9022960554970731683

namespace A086456

/-- `A000038(n)-abs(A103137(n))` -/
def P9022960554970731683.Spec : Prop :=
  ∀ n, P9022960554970731683.a n = A086456 n

end A086456

/-! ## A086456.P17503605460373665061

`or(char[A016926(n)], A085403(n))`
-/

namespace A086456.P17503605460373665061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016926 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085403 n)

end

end A086456.P17503605460373665061

namespace A086456

/-- `or(char[A016926(n)], A085403(n))` -/
def P17503605460373665061.Spec : Prop :=
  ∀ n, P17503605460373665061.a n = A086456 n

end A086456

/-! ## A086456.P9532267642586498978

`A153881(n+1)*A155069(n)`
-/

namespace A086456.P9532267642586498978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A155069 n

end

end A086456.P9532267642586498978

namespace A086456

/-- `A153881(n+1)*A155069(n)` -/
def P9532267642586498978.Spec : Prop :=
  ∀ n, P9532267642586498978.a n = A086456 n

end A086456

/-! ## A086456.P2907516313963372429

`2*A000007(n)-A155069(n)`
-/

namespace A086456.P2907516313963372429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A155069 n

end

end A086456.P2907516313963372429

namespace A086456

/-- `2*A000007(n)-A155069(n)` -/
def P2907516313963372429.Spec : Prop :=
  ∀ n, P2907516313963372429.a n = A086456 n

end A086456

/-! ## A086456.P484613773312576366

`(abs(A023443(n))-n)*A155069(n)`
-/

namespace A086456.P484613773312576366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|A023443 n| - (n : ℤ)) * A155069 n

end

end A086456.P484613773312576366

namespace A086456

/-- `(abs(A023443(n))-n)*A155069(n)` -/
def P484613773312576366.Spec : Prop :=
  ∀ n, P484613773312576366.a n = A086456 n

end A086456

/-! ## A086456.P7503107818155253235

`A085403(n)/gcd(2, A004280(n+1))`
-/

namespace A086456.P7503107818155253235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085403 n : ℚ) / (Int.gcd 2 (A004280 (n + 1)) : ℚ)

end

end A086456.P7503107818155253235

namespace A086456

/-- `A085403(n)/gcd(2, A004280(n+1))` -/
def P7503107818155253235.Spec : Prop :=
  ∀ n, P7503107818155253235.a n = (A086456 n : ℚ)

end A086456

/-! ## A086456.P14974281721421420781

`(-A155069(n))^A014963(4*n+2)`
-/

namespace A086456.P14974281721421420781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A155069 n : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A086456.P14974281721421420781

namespace A086456

/-- `(-A155069(n))^A014963(4*n+2)` -/
def P14974281721421420781.Spec : Prop :=
  ∀ n, P14974281721421420781.a n = (A086456 n : ℚ)

end A086456

/-! ## A086456.P13832695058621698716

`or(char[2-(A017077(n)-n)], A085403(n))`
-/

namespace A086456.P13832695058621698716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A017077 n - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085403 n)

end

end A086456.P13832695058621698716

namespace A086456

/-- `or(char[2-(A017077(n)-n)], A085403(n))` -/
def P13832695058621698716.Spec : Prop :=
  ∀ n, P13832695058621698716.a n = A086456 n

end A086456

/-! ## A086456.P3045360210828830384

`A112477(A316966(n))`
-/

namespace A086456.P3045360210828830384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112477 (A316966 n).toNat

end

end A086456.P3045360210828830384

namespace A086456

/-- `A112477(A316966(n))` -/
def P3045360210828830384.Spec : Prop :=
  ∀ n, P3045360210828830384.a n = A086456 n

end A086456

/-! ## A086456.P15621229735819227853

`A000007(n)+A006319(n)-A006318(n)`
-/

namespace A086456.P15621229735819227853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A006319 n - A006318 n)

end

end A086456.P15621229735819227853

namespace A086456

/-- `A000007(n)+A006319(n)-A006318(n)` -/
def P15621229735819227853.Spec : Prop :=
  ∀ n, P15621229735819227853.a n = A086456 n

end A086456

/-! ## A086456.P331060721390759850

`A050146(n)/(A000007(n)-n)`
-/

namespace A086456.P331060721390759850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050146 n : ℚ) / (A000007 n - (n : ℤ) : ℚ)

end

end A086456.P331060721390759850

namespace A086456

/-- `A050146(n)/(A000007(n)-n)` -/
def P331060721390759850.Spec : Prop :=
  ∀ n, P331060721390759850.a n = (A086456 n : ℚ)

end A086456

/-!
# A086457: Both n and n^2 have the same initial digit and also n and n^2 have the same final digit when expressed in base 10.

The programs for A086457, the canonical program `A086457.P6458068845989887651` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086457 has offset 1).

The definition of A086457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086457.P6458068845989887651

`∩[A008851(n+1), A089951(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086457

/-- `∩[A008851(n+1), A089951(n+1)]` -/
def P6458068845989887651.Spec : Prop :=
  ∀ n, (P6458068845989887651.a n : ℤ) = A086457 (n + 1)

theorem P6458068845989887651.correct : P6458068845989887651.Spec := by
  intro n
  simp only [A086457, Nat.add_sub_cancel]

end A086457

/-! ## A086457.P17152531308251281509

`A046851(n+1)-A184955(A213356(n+1))`
-/

namespace A086457.P17152531308251281509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046851 (n + 1) - A184955 (A213356 (n + 1)).toNat

end

end A086457.P17152531308251281509

namespace A086457

/-- `A046851(n+1)-A184955(A213356(n+1))` -/
def P17152531308251281509.Spec : Prop :=
  ∀ n, P17152531308251281509.a n = A086457 (n + 1)

end A086457

/-!
# A086458: Both n and n^3 have the same initial digit and also n and n^3 have the same final digit when expressed in base 10.

The programs for A086458, there is no canonical definition to state claims against.
-/

/-! ## A086458.P15166988851072713947

`∩[2*round(n/3)+n, A144582(n+1)]`
-/

namespace A086458.P15166988851072713947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086458.P15166988851072713947

/-! ## A086458.P3415121622223064594

`∩[A144582(n+1), A008854(n+1)]`
-/

namespace A086458.P3415121622223064594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086458.P3415121622223064594

/-!
# A086459: Determinant of the circulant matrix whose rows are formed by successively rotating the vector (1, 2, 4, 8, ..., 2^(n-1)) right.

The programs for A086459, there is no canonical definition to state claims against.
-/

/-! ## A086459.P4177537528655175868

`(-record[or(n, n-1)])^(n-1)`
-/

namespace A086459.P4177537528655175868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A086459.P4177537528655175868

/-! ## A086459.P15014160726441372426

`(-record[xor(n, n-1)])^(n-1)`
-/

namespace A086459.P15014160726441372426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A086459.P15014160726441372426

/-! ## A086459.P13742321760375023105

`A306598(A011782(n))`
-/

namespace A086459.P13742321760375023105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306598 (A011782 n).toNat

end

end A086459.P13742321760375023105

/-! ## A086459.P15257110191756789135

`A306598(A249169(n))`
-/

namespace A086459.P15257110191756789135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306598 (A249169 (n + 15)).toNat

end

end A086459.P15257110191756789135

/-! ## A086459.P8710236395766645098

`A306598(A274863(n))`
-/

namespace A086459.P8710236395766645098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306598 (A274863 n).toNat

end

end A086459.P8710236395766645098

/-!
# A086460: Square array read by antidiagonals: A(n, k) = n*k + 0^k.

The programs for A086460, the canonical program `A086460.P16824943285263387007` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086460 has offset 0).

The definition of A086460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086460.P4963636420398503487

`A004247(n)+char[∑[n]]`
-/

namespace A086460.P4963636420398503487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086460.P4963636420398503487

namespace A086460

/-- `A004247(n)+char[∑[n]]` -/
def P4963636420398503487.Spec : Prop :=
  ∀ n, P4963636420398503487.a n = A086460 n

end A086460

/-! ## A086460.P9979349345861742969

`A077028(n)-char[comp[∑[n]]]`
-/

namespace A086460.P9979349345861742969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086460.P9979349345861742969

namespace A086460

/-- `A077028(n)-char[comp[∑[n]]]` -/
def P9979349345861742969.Spec : Prop :=
  ∀ n, P9979349345861742969.a n = A086460 n

end A086460

/-! ## A086460.P2910460377912356804

`char[∑[n]]+1-A176270(n)`
-/

namespace A086460.P2910460377912356804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (1 - A176270 n)

end

end A086460.P2910460377912356804

namespace A086460

/-- `char[∑[n]]+1-A176270(n)` -/
def P2910460377912356804.Spec : Prop :=
  ∀ n, P2910460377912356804.a n = A086460 n

end A086460

/-! ## A086460.P8432023787919151528

`round(A003991(n+1)-sqrt(2*n))`
-/

namespace A086460.P8432023787919151528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003991 (n + 1) : ℝ) - Real.sqrt (2 * n : ℝ))

end

end A086460.P8432023787919151528

namespace A086460

/-- `round(A003991(n+1)-sqrt(2*n))` -/
def P8432023787919151528.Spec : Prop :=
  ∀ n, P8432023787919151528.a n = A086460 n

end A086460

/-! ## A086460.P9806554554186208963

`A059036(n)+1-round(sqrt(2*n))`
-/

namespace A086460.P9806554554186208963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 1 - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A086460.P9806554554186208963

namespace A086460

/-- `A059036(n)+1-round(sqrt(2*n))` -/
def P9806554554186208963.Spec : Prop :=
  ∀ n, P9806554554186208963.a n = A086460 n

end A086460

/-! ## A086460.P16824943285263387007

`A010054(n)+A004247(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A086460

/-- `A010054(n)+A004247(n)` -/
def P16824943285263387007.Spec : Prop :=
  ∀ n, P16824943285263387007.a n = A086460 n

theorem P16824943285263387007.correct : P16824943285263387007.Spec := by
  intro n
  simp only [A086460]

end A086460

/-! ## A086460.P14265194035039338128

`A035214(n)-A176270(n)`
-/

namespace A086460.P14265194035039338128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - A176270 n

end

end A086460.P14265194035039338128

namespace A086460

/-- `A035214(n)-A176270(n)` -/
def P14265194035039338128.Spec : Prop :=
  ∀ n, P14265194035039338128.a n = A086460 n

theorem P14265194035039338128.correct : P14265194035039338128.Spec := by
  intro n
  simp only [A086460, Nat.add_sub_cancel, A086460.P14265194035039338128.a, A086460.P16824943285263387007.a, A004247, A004247.P14233945955703425283.a, A010054, A010054.P18347828677204923252.a, A035214, A035214.P16301326444238280714.a, A176270, A176270.P12132002411983152534.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, A025581, A025581.P420762180635059694.a, A077028, A077028.P11682596430163569480.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A086460

/-! ## A086460.P8072811967913526711

`A386319(n)-A112367(n)`
-/

namespace A086460.P8072811967913526711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386319 n - A112367 n

end

end A086460.P8072811967913526711

namespace A086460

/-- `A386319(n)-A112367(n)` -/
def P8072811967913526711.Spec : Prop :=
  ∀ n, P8072811967913526711.a n = A086460 n

theorem P8072811967913526711.correct : P8072811967913526711.Spec := by
  intro n
  simp only [A086460, Nat.add_sub_cancel, A086460.P8072811967913526711.a, A086460.P16824943285263387007.a, A004247, A004247.P14233945955703425283.a, A010054, A010054.P18347828677204923252.a, A112367, A112367.P5378126856570841990.a, A386319, A386319.P6966133288420860649.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A086460

/-! ## A086460.P12212777592413874810

`gcd(A004247(n), A106459(n))`
-/

namespace A086460.P12212777592413874810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A106459 n)

end

end A086460.P12212777592413874810

namespace A086460

/-- `gcd(A004247(n), A106459(n))` -/
def P12212777592413874810.Spec : Prop :=
  ∀ n, (P12212777592413874810.a n : ℤ) = A086460 n

end A086460

/-! ## A086460.P6599298273360335860

`A010054(n)+A077028(n)-1`
-/

namespace A086460.P6599298273360335860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A077028 n - 1)

end

end A086460.P6599298273360335860

namespace A086460

/-- `A010054(n)+A077028(n)-1` -/
def P6599298273360335860.Spec : Prop :=
  ∀ n, P6599298273360335860.a n = A086460 n

theorem P6599298273360335860.correct : P6599298273360335860.Spec := by
  intro n
  simp only [A086460, Nat.add_sub_cancel, A086460.P6599298273360335860.a, A086460.P16824943285263387007.a, A004247, A004247.P14233945955703425283.a, A010054, A010054.P18347828677204923252.a, A077028, A077028.P11682596430163569480.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A086460

/-! ## A086460.P16799880198701096664

`A003991(n+1)-A123578(n)`
-/

namespace A086460.P16799880198701096664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A123578 n

end

end A086460.P16799880198701096664

namespace A086460

/-- `A003991(n+1)-A123578(n)` -/
def P16799880198701096664.Spec : Prop :=
  ∀ n, P16799880198701096664.a n = A086460 n

end A086460

/-! ## A086460.P3257636033025899234

`A010054(n)+1-A176270(n)`
-/

namespace A086460.P3257636033025899234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1 - A176270 n

end

end A086460.P3257636033025899234

namespace A086460

/-- `A010054(n)+1-A176270(n)` -/
def P3257636033025899234.Spec : Prop :=
  ∀ n, P3257636033025899234.a n = A086460 n

theorem P3257636033025899234.correct : P3257636033025899234.Spec := by
  intro n
  simp only [A086460, Nat.add_sub_cancel, A086460.P3257636033025899234.a, A086460.P16824943285263387007.a, A004247, A004247.P14233945955703425283.a, A010054, A010054.P18347828677204923252.a, A176270, A176270.P12132002411983152534.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, A025581, A025581.P420762180635059694.a, A077028, A077028.P11682596430163569480.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A086460

/-! ## A086460.P16765265454675625321

`char[∑[n]]+A082043(n)-A082039(n)`
-/

namespace A086460.P16765265454675625321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A082043 n - A082039 n)

end

end A086460.P16765265454675625321

namespace A086460

/-- `char[∑[n]]+A082043(n)-A082039(n)` -/
def P16765265454675625321.Spec : Prop :=
  ∀ n, P16765265454675625321.a n = A086460 n

end A086460

/-! ## A086460.P1371866098517776699

`A144337(n+2)+A010054(n)-A144329(n+2)`
-/

namespace A086460.P1371866098517776699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144337 (n + 2) + (A010054 n - A144329 (n + 2))

end

end A086460.P1371866098517776699

namespace A086460

/-- `A144337(n+2)+A010054(n)-A144329(n+2)` -/
def P1371866098517776699.Spec : Prop :=
  ∀ n, P1371866098517776699.a n = A086460 n

end A086460

/-! ## A086460.P6094926056919088187

`A003991(n+1)-A000194(2*n)`
-/

namespace A086460.P6094926056919088187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A000194 (2 * n)

end

end A086460.P6094926056919088187

namespace A086460

/-- `A003991(n+1)-A000194(2*n)` -/
def P6094926056919088187.Spec : Prop :=
  ∀ n, P6094926056919088187.a n = A086460 n

end A086460

/-! ## A086460.P2184503780379108846

`A145677(A245300(n))+A004247(n)`
-/

namespace A086460.P2184503780379108846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (A245300 n).toNat + A004247 n

end

end A086460.P2184503780379108846

namespace A086460

/-- `A145677(A245300(n))+A004247(n)` -/
def P2184503780379108846.Spec : Prop :=
  ∀ n, P2184503780379108846.a n = A086460 n

end A086460

/-! ## A086460.P12553566895609638511

`A086461(n)%A123966(n)`
-/

namespace A086460.P12553566895609638511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086461 n) (A123966 n)

end

end A086460.P12553566895609638511

namespace A086460

/-- `A086461(n)%A123966(n)` -/
def P12553566895609638511.Spec : Prop :=
  ∀ n, P12553566895609638511.a n = A086460 n

end A086460

/-! ## A086460.P11225418272208076638

`char[∑[n]]+log2(A117401(n))`
-/

namespace A086460.P11225418272208076638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + Real.logb 2 (A117401 n : ℝ)

end

end A086460.P11225418272208076638

namespace A086460

/-- `char[∑[n]]+log2(A117401(n))` -/
def P11225418272208076638.Spec : Prop :=
  ∀ n, P11225418272208076638.a n = (A086460 n : ℝ)

end A086460

/-! ## A086460.P9006739047631437553

`A001511(A059268(n)+1)-A176270(n)`
-/

namespace A086460.P9006739047631437553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A059268 n + 1).toNat - A176270 n

end

end A086460.P9006739047631437553

namespace A086460

/-- `A001511(A059268(n)+1)-A176270(n)` -/
def P9006739047631437553.Spec : Prop :=
  ∀ n, P9006739047631437553.a n = A086460 n

end A086460

/-!
# A086461: Symmetric version of square array A086460, read by antidiagonals.

The programs for A086461, the canonical program `A086461.P11452648535958795597` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086461 has offset 0).

The definition of A086461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086461.P11452648535958795597

`floor(sqrt(A082039(n)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086461

/-- `floor(sqrt(A082039(n)))` -/
def P11452648535958795597.Spec : Prop :=
  ∀ n, P11452648535958795597.a n = A086461 n

theorem P11452648535958795597.correct : P11452648535958795597.Spec := by
  intro n
  simp only [A086461]

end A086461

/-! ## A086461.P15010121433443281508

`ceil(A157528(n)/2)`
-/

namespace A086461.P15010121433443281508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157528 n : ℚ) / 2⌉

end

end A086461.P15010121433443281508

namespace A086461

/-- `ceil(A157528(n)/2)` -/
def P15010121433443281508.Spec : Prop :=
  ∀ n, P15010121433443281508.a n = A086461 n

end A086461

/-! ## A086461.P4537742331613222869

`ceil(abs(A176625(n)/3))`
-/

namespace A086461.P4537742331613222869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A176625 n : ℚ) / 3|⌉

end

end A086461.P4537742331613222869

namespace A086461

/-- `ceil(abs(A176625(n)/3))` -/
def P4537742331613222869.Spec : Prop :=
  ∀ n, P4537742331613222869.a n = A086461 n

end A086461

/-! ## A086461.P12188494548582311936

`floor(sqrt(A004247(n)²+1))`
-/

namespace A086461.P12188494548582311936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004247 n ^ 2 + 1)

end

end A086461.P12188494548582311936

namespace A086461

/-- `floor(sqrt(A004247(n)²+1))` -/
def P12188494548582311936.Spec : Prop :=
  ∀ n, P12188494548582311936.a n = A086461 n

end A086461

/-! ## A086461.P10738927639265273553

`A086460(n*char[comp[∑[n-1]]])`
-/

namespace A086461.P10738927639265273553
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086460 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A086461.P10738927639265273553

namespace A086461

/-- `A086460(n*char[comp[∑[n-1]]])` -/
def P10738927639265273553.Spec : Prop :=
  ∀ n, P10738927639265273553.a n = A086461 n

end A086461

/-! ## A086461.P3147471763319678159

`A028310(A004247(n))`
-/

namespace A086461.P3147471763319678159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004247 n).toNat

end

end A086461.P3147471763319678159

namespace A086461

/-- `A028310(A004247(n))` -/
def P3147471763319678159.Spec : Prop :=
  ∀ n, P3147471763319678159.a n = A086461 n

end A086461

/-! ## A086461.P599732610180815937

`A028310(A086460(n))`
-/

namespace A086461.P599732610180815937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A086460 n).toNat

end

end A086461.P599732610180815937

namespace A086461

/-- `A028310(A086460(n))` -/
def P599732610180815937.Spec : Prop :=
  ∀ n, P599732610180815937.a n = A086461 n

end A086461

/-! ## A086461.P8887756419080814350

`A004525(A157528(n))`
-/

namespace A086461.P8887756419080814350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A157528 n).toNat

end

end A086461.P8887756419080814350

namespace A086461

/-- `A004525(A157528(n))` -/
def P8887756419080814350.Spec : Prop :=
  ∀ n, P8887756419080814350.a n = A086461 n

end A086461

/-! ## A086461.P1034275561359892329

`A101279(A130154(n+1))`
-/

namespace A086461.P1034275561359892329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A130154 (n + 1)).toNat

end

end A086461.P1034275561359892329

namespace A086461

/-- `A101279(A130154(n+1))` -/
def P1034275561359892329.Spec : Prop :=
  ∀ n, P1034275561359892329.a n = A086461 n

end A086461

/-! ## A086461.P565246399021601965

`A103451(n)+A004247(n)`
-/

namespace A086461.P565246399021601965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + A004247 n

end

end A086461.P565246399021601965

namespace A086461

/-- `A103451(n)+A004247(n)` -/
def P565246399021601965.Spec : Prop :=
  ∀ n, P565246399021601965.a n = A086461 n

end A086461

/-! ## A086461.P7189221670783294115

`A157528(n)-A004247(n)`
-/

namespace A086461.P7189221670783294115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157528 n - A004247 n

end

end A086461.P7189221670783294115

namespace A086461

/-- `A157528(n)-A004247(n)` -/
def P7189221670783294115.Spec : Prop :=
  ∀ n, P7189221670783294115.a n = A086461 n

end A086461

/-! ## A086461.P17019216061653155203

`A155864(n)/A007318(n)`
-/

namespace A086461.P17019216061653155203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155864 n : ℚ) / (A007318 n : ℚ)

end

end A086461.P17019216061653155203

namespace A086461

/-- `A155864(n)/A007318(n)` -/
def P17019216061653155203.Spec : Prop :=
  ∀ n, P17019216061653155203.a n = (A086461 n : ℚ)

end A086461

/-! ## A086461.P10070958061289636057

`A157528(n)/A154325(n)`
-/

namespace A086461.P10070958061289636057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157528 n : ℚ) / (A154325 n : ℚ)

end

end A086461.P10070958061289636057

namespace A086461

/-- `A157528(n)/A154325(n)` -/
def P10070958061289636057.Spec : Prop :=
  ∀ n, P10070958061289636057.a n = (A086461 n : ℚ)

end A086461

/-! ## A086461.P14000041054223367846

`A157635(n)/A318274(n)`
-/

namespace A086461.P14000041054223367846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157635 n : ℚ) / (A318274 n : ℚ)

end

end A086461.P14000041054223367846

namespace A086461

/-- `A157635(n)/A318274(n)` -/
def P14000041054223367846.Spec : Prop :=
  ∀ n, P14000041054223367846.a n = (A086461 n : ℚ)

end A086461

/-! ## A086461.P6887350407937991485

`gcd(A086460(n), A103452(n))`
-/

namespace A086461.P6887350407937991485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086460 n) (A103452 n)

end

end A086461.P6887350407937991485

namespace A086461

/-- `gcd(A086460(n), A103452(n))` -/
def P6887350407937991485.Spec : Prop :=
  ∀ n, (P6887350407937991485.a n : ℤ) = A086461 n

end A086461

/-! ## A086461.P262774784098814117

`gcd(A068606(n), A157635(n))`
-/

namespace A086461.P262774784098814117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068606 n) (A157635 n)

end

end A086461.P262774784098814117

namespace A086461

/-- `gcd(A068606(n), A157635(n))` -/
def P262774784098814117.Spec : Prop :=
  ∀ n, (P262774784098814117.a n : ℤ) = A086461 n

end A086461

/-! ## A086461.P4525808929731873060

`gcd(A103516(n), A342385(n))`
-/

namespace A086461.P4525808929731873060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103516 n) (A342385 n)

end

end A086461.P4525808929731873060

namespace A086461

/-- `gcd(A103516(n), A342385(n))` -/
def P4525808929731873060.Spec : Prop :=
  ∀ n, (P4525808929731873060.a n : ℤ) = A086461 n

end A086461

/-! ## A086461.P16500862613957225154

`A134398(n+1)%A177227(n)`
-/

namespace A086461.P16500862613957225154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134398 (n + 1)) (A177227 n)

end

end A086461.P16500862613957225154

namespace A086461

/-- `A134398(n+1)%A177227(n)` -/
def P16500862613957225154.Spec : Prop :=
  ∀ n, P16500862613957225154.a n = A086461 n

end A086461

/-! ## A086461.P9900880104635462071

`log2(lcm(2, A117401(n)))`
-/

namespace A086461.P9900880104635462071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.lcm 2 (A117401 n) : ℝ)

end

end A086461.P9900880104635462071

namespace A086461

/-- `log2(lcm(2, A117401(n)))` -/
def P9900880104635462071.Spec : Prop :=
  ∀ n, P9900880104635462071.a n = (A086461 n : ℝ)

end A086461

/-! ## A086461.P4953672724824574799

`floor(log2(A022166(n)+3))-1`
-/

namespace A086461.P4953672724824574799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A022166 n + 3).toNat : ℤ) - 1

end

end A086461.P4953672724824574799

namespace A086461

/-- `floor(log2(A022166(n)+3))-1` -/
def P4953672724824574799.Spec : Prop :=
  ∀ n, P4953672724824574799.a n = A086461 n

end A086461

/-!
# A086462: Expansion of (1+x)*(1+4*x)/((1-x)*(1-4*x)).

The programs for A086462, the canonical program `A086462.P5706578308697668626` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086462 has offset 0).

The definition of A086462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+4x^2)/(1-5x+4x^2))` (program `A086462.P5706578308697668626`, by `A086462.P5706578308697668626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086462.P5706578308697668626

`ogf((1+5x+4x^2)/(1-5x+4x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086462

/-- `ogf((1+5x+4x^2)/(1-5x+4x^2))` -/
def P5706578308697668626.Spec : Prop :=
  ∀ n, P5706578308697668626.a n = A086462 n

theorem P5706578308697668626.correct : P5706578308697668626.Spec := by
  intro n
  simp only [A086462]

end A086462

/-! ## A086462.P14833408751818079296

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=10, a(2)=50`
-/

namespace A086462.P14833408751818079296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 50] fun n a =>
  5 * a (n - 1) - 4 * a (n - 2)

end

end A086462.P14833408751818079296

namespace A086462

/-- `5*a(n-1)-4*a(n-2)` -/
def P14833408751818079296.Spec : Prop :=
  ∀ n, P14833408751818079296.a n = A086462 n

end A086462

/-! ## A086462.P7315459026288418757

`4*a(n-1)+10` with `a(0)=1, a(1)=10`
-/

namespace A086462.P7315459026288418757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * a (n - 1) + 10

end

end A086462.P7315459026288418757

namespace A086462

/-- `4*a(n-1)+10` -/
def P7315459026288418757.Spec : Prop :=
  ∀ n, (P7315459026288418757.a n : ℤ) = A086462 n

end A086462

/-! ## A086462.P2126329628419317037

`lcm(8, a(n-1))+10` with `a(0)=1, a(1)=10`
-/

namespace A086462.P2126329628419317037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 10

end

end A086462.P2126329628419317037

namespace A086462

/-- `lcm(8, a(n-1))+10` -/
def P2126329628419317037.Spec : Prop :=
  ∀ n, (P2126329628419317037.a n : ℤ) = A086462 n

end A086462

/-! ## A086462.P3951339140782763043

`xor(26, 4*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A086462.P3951339140782763043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.xor 26 (4 * a (n - 1))

end

end A086462.P3951339140782763043

namespace A086462

/-- `xor(26, 4*a(n-1))` -/
def P3951339140782763043.Spec : Prop :=
  ∀ n, (P3951339140782763043.a n : ℤ) = A086462 n

end A086462

/-! ## A086462.P13444375394631391068

`∑[4*a(n-1)]` with `a(0)=1, a(1)=9, a(2)=40`
-/

namespace A086462.P13444375394631391068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 40] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086462.P13444375394631391068

namespace A086462

/-- `∑[4*a(n-1)]` -/
def P13444375394631391068.Spec : Prop :=
  ∀ n, (P13444375394631391068.a n : ℤ) = A086462 n

end A086462

/-! ## A086462.P4942578526386639450

`4*or(5, a(n-1))-10` with `a(0)=1`
-/

namespace A086462.P4942578526386639450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * Int.lor 5 (a (n - 1)) - 10

end

end A086462.P4942578526386639450

namespace A086462

/-- `4*or(5, a(n-1))-10` -/
def P4942578526386639450.Spec : Prop :=
  ∀ n, P4942578526386639450.a n = A086462 n

end A086462

/-! ## A086462.P15294928705105785021

`xor(2, A168648(2*n))-2`
-/

namespace A086462.P15294928705105785021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A168648 (2 * n)) - 2

end

end A086462.P15294928705105785021

namespace A086462

/-- `xor(2, A168648(2*n))-2` -/
def P15294928705105785021.Spec : Prop :=
  ∀ n, P15294928705105785021.a n = A086462 n

end A086462

/-! ## A086462.P413104433125125789

`A321421(n)+A057428(n)`
-/

namespace A086462.P413104433125125789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 n + A057428 n

end

end A086462.P413104433125125789

namespace A086462

/-- `A321421(n)+A057428(n)` -/
def P413104433125125789.Spec : Prop :=
  ∀ n, P413104433125125789.a n = A086462 n

end A086462

/-! ## A086462.P15940657814963653170

`A321421(n)-A057427(n)`
-/

namespace A086462.P15940657814963653170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 n - A057427 n

end

end A086462.P15940657814963653170

namespace A086462

/-- `A321421(n)-A057427(n)` -/
def P15940657814963653170.Spec : Prop :=
  ∀ n, P15940657814963653170.a n = A086462 n

end A086462

/-! ## A086462.P11079274697418130742

`A072197(n)-A157532(n+1)`
-/

namespace A086462.P11079274697418130742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n - A157532 (n + 1)

end

end A086462.P11079274697418130742

namespace A086462

/-- `A072197(n)-A157532(n+1)` -/
def P11079274697418130742.Spec : Prop :=
  ∀ n, P11079274697418130742.a n = A086462 n

end A086462

/-! ## A086462.P15104608915403657724

`A068156(2*n)+A002450(n)`
-/

namespace A086462.P15104608915403657724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (2 * n) + A002450 n

end

end A086462.P15104608915403657724

namespace A086462

/-- `A068156(2*n)+A002450(n)` -/
def P15104608915403657724.Spec : Prop :=
  ∀ n, P15104608915403657724.a n = A086462 n

end A086462

/-! ## A086462.P16611073993328537919

`xor(A040006(n), A080675(n+1))`
-/

namespace A086462.P16611073993328537919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040006 n) (A080675 (n + 1))

end

end A086462.P16611073993328537919

namespace A086462

/-- `xor(A040006(n), A080675(n+1))` -/
def P16611073993328537919.Spec : Prop :=
  ∀ n, P16611073993328537919.a n = A086462 n

end A086462

/-! ## A086462.P9729735665748742403

`A080675(n+1)-A036453(n+1)`
-/

namespace A086462.P9729735665748742403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - A036453 (n + 1)

end

end A086462.P9729735665748742403

namespace A086462

/-- `A080675(n+1)-A036453(n+1)` -/
def P9729735665748742403.Spec : Prop :=
  ∀ n, P9729735665748742403.a n = A086462 n

end A086462

/-! ## A086462.P6448665313726175510

`A115102(2*n)-A036453(n+1)`
-/

namespace A086462.P6448665313726175510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115102 (2 * n) - A036453 (n + 1)

end

end A086462.P6448665313726175510

namespace A086462

/-- `A115102(2*n)-A036453(n+1)` -/
def P6448665313726175510.Spec : Prop :=
  ∀ n, P6448665313726175510.a n = A086462 n

end A086462

/-! ## A086462.P4862566668286691277

`A068156(2*n)+A001045(2*n)`
-/

namespace A086462.P4862566668286691277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (2 * n) + A001045 (2 * n)

end

end A086462.P4862566668286691277

namespace A086462

/-- `A068156(2*n)+A001045(2*n)` -/
def P4862566668286691277.Spec : Prop :=
  ∀ n, P4862566668286691277.a n = A086462 n

end A086462

/-! ## A086462.P6481136832873251286

`A101622(2*n)+A026644(2*n)`
-/

namespace A086462.P6481136832873251286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 (2 * n) + A026644 (2 * n)

end

end A086462.P6481136832873251286

namespace A086462

/-- `A101622(2*n)+A026644(2*n)` -/
def P6481136832873251286.Spec : Prop :=
  ∀ n, P6481136832873251286.a n = A086462 n

end A086462

/-!
# A086465: Decimal expansion of (5 + 4*sqrt(5)*arcsch(2))/25.

The programs for A086465, there is no canonical definition to state claims against.
-/

/-! ## A086465.P16845490071383006805

`9-A307086(n)`
-/

namespace A086465.P16845490071383006805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A307086 n

end

end A086465.P16845490071383006805

/-!
# A086469: Sum of the distinct (smallest) prime signature divisors of n. In case of two or more divisors with the same prime signature the smallest is considered to evaluate the sum. Let this function be defined as psigma(n).

The programs for A086469, there is no canonical definition to state claims against.
-/

/-! ## A086469.P3278437280209017977

`A000203(n+1)-A057108(A078599(n+1))`
-/

namespace A086469.P3278437280209017977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057108 (A078599 (n + 1)).toNat

end

end A086469.P3278437280209017977

/-! ## A086469.P13372295168316866472

`A088580(n+1)-A326065(A290479(n+1))`
-/

namespace A086469.P13372295168316866472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A326065 (A290479 (n + 1)).toNat

end

end A086469.P13372295168316866472

/-! ## A086469.P10271449264816615074

`A300852(A020639(A007955(n+1)))+A023890(n+1)`
-/

namespace A086469.P10271449264816615074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300852 (A020639 (A007955 (n + 1)).toNat).toNat + A023890 (n + 1)

end

end A086469.P10271449264816615074

/-! ## A086469.P17266549612771342635

`A023890(n+1)+A008472(A088379(n+1))`
-/

namespace A086469.P17266549612771342635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A008472 (A088379 (n + 1)).toNat

end

end A086469.P17266549612771342635

/-! ## A086469.P8215081557781233663

`A326136(n+1)+A015161(n)!`
-/

namespace A086469.P8215081557781233663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (n + 1) + (Nat.factorial (A015161 n).toNat : ℤ)

end

end A086469.P8215081557781233663

/-!
# A086470: Numbers k such that psigma(k) = psigma(k+1), where psigma(k) = A086469(k).

The programs for A086470, there is no canonical definition to state claims against.
-/

/-! ## A086470.P15163076271562804119

`eq[A086469(n+1), A086469(n+2)]+1`
-/

namespace A086470.P15163076271562804119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086469 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086470.P15163076271562804119

/-!
# A086471: Product of distinct (smallest) prime signature divisors. In case of two or more divisors with the same prime signature the smallest is considered to evaluate the product.

The programs for A086471, there is no canonical definition to state claims against.
-/

/-! ## A086471.P17926553945766701407

`∏{d}[n+1, #]/A217581(∏{d}[∏{p}[n+1, #], #])`
-/

namespace A086471.P17926553945766701407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A217581 (∏ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A086471.P17926553945766701407

/-! ## A086471.P14081629009384980700

`∏{d}[n+1, #]/∏{p}[n+1, #]*A020639(A061537(n+1))`
-/

namespace A086471.P14081629009384980700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A020639 (A061537 (n + 1)).toNat : ℚ)

end

end A086471.P14081629009384980700

/-! ## A086471.P934785327703872648

`∏{d}[n+1, #]/∏{p}[n+1, #]*A020639(A078599(n+1))`
-/

namespace A086471.P934785327703872648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A020639 (A078599 (n + 1)).toNat : ℚ)

end

end A086471.P934785327703872648

/-! ## A086471.P1754233149394323035

`A020639(A061537(n+1))*A087652(n+1)`
-/

namespace A086471.P1754233149394323035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061537 (n + 1)).toNat * A087652 (n + 1)

end

end A086471.P1754233149394323035

/-! ## A086471.P210639430649571095

`A020639(A078599(n+1))*A087652(n+1)`
-/

namespace A086471.P210639430649571095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078599 (n + 1)).toNat * A087652 (n + 1)

end

end A086471.P210639430649571095

/-!
# A086472: Primes which are sum of two palindromes.

The programs for A086472, there is no canonical definition to state claims against.
-/

/-! ## A086472.P12995548898645966699

`A008864(∑[A240228(2*n+5)])-1`
-/

namespace A086472.P12995548898645966699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A086472.P12995548898645966699

/-! ## A086472.P1530135246724213154

`A000040(lt[A355739(n+1), A192646(2*(n+1))])`
-/

namespace A086472.P1530135246724213154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192646 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086472.P1530135246724213154

/-! ## A086472.P8994781112109915086

`p?[A261906(n+1)]`
-/

namespace A086472.P8994781112109915086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086472.P8994781112109915086

/-! ## A086472.P16707582777478927623

`A340202(A381822(n+1))`
-/

namespace A086472.P16707582777478927623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340202 (A381822 (n + 1)).toNat

end

end A086472.P16707582777478927623

/-!
# A086475: a(1) = 1 and then least squarefree number such that every partial concatenation of 2 or more terms is a prime.

The programs for A086475, there is no canonical definition to state claims against.
-/

/-! ## A086475.P6311386306356928908

`or(A005361(A041677(n)), A074336(n+1))`
-/

namespace A086475.P6311386306356928908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005361 (A041677 n).toNat) (A074336 (n + 1))

end

end A086475.P6311386306356928908

/-! ## A086475.P14699641900492024096

`or(A074336(n+1), A083888(A000110(n)))`
-/

namespace A086475.P14699641900492024096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074336 (n + 1)) (A083888 (A000110 n).toNat)

end

end A086475.P14699641900492024096

/-! ## A086475.P15459310222719338204

`or(A056622(A092073(n)), A074336(n+1))`
-/

namespace A086475.P15459310222719338204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056622 (A092073 n).toNat) (A074336 (n + 1))

end

end A086475.P15459310222719338204

/-! ## A086475.P17682616011566247243

`or(A046080(A149996(n)), A074336(n+1))`
-/

namespace A086475.P17682616011566247243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046080 (A149996 n).toNat) (A074336 (n + 1))

end

end A086475.P17682616011566247243

/-! ## A086475.P6262475844069988690

`or(A074336(n+1), A352516(A133476(n)))`
-/

namespace A086475.P6262475844069988690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074336 (n + 1)) (A352516 (A133476 n).toNat)

end

end A086475.P6262475844069988690

/-!
# A086479: Number of invertible circulant (0,1) matrices over the reals that have even determinant.

The programs for A086479, there is no canonical definition to state claims against.
-/

/-! ## A086479.P14521423683680288436

`A086323(n+1)-A003473(n+1)`
-/

namespace A086479.P14521423683680288436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086323 (n + 1) - A003473 (n + 1)

end

end A086479.P14521423683680288436

/-! ## A086479.P11447352806351013509

`A086324(n+1)-A086328(n+1)`
-/

namespace A086479.P11447352806351013509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086324 (n + 1) - A086328 (n + 1)

end

end A086479.P11447352806351013509

/-! ## A086479.P7962983856815155521

`(n+1)*A086442(n+1)-A003473(n+1)`
-/

namespace A086479.P7962983856815155521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086442 (n + 1) - A003473 (n + 1)

end

end A086479.P7962983856815155521

/-! ## A086479.P2706426543520187936

`A086323(n+1)-(n+1)*A027362(n+1)`
-/

namespace A086479.P2706426543520187936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086323 (n + 1) - (n + 1 : ℤ) * A027362 (n + 1)

end

end A086479.P2706426543520187936

/-! ## A086479.P4239352297767937105

`(n+1)*(A086442(n+1)-A027362(n+1))`
-/

namespace A086479.P4239352297767937105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A086442 (n + 1) - A027362 (n + 1))

end

end A086479.P4239352297767937105

/-!
# A086482: Beginning with 1, the smallest number not included earlier such that the n-th partial product is an n-th power; or the geometric mean of the first n terms is an integer.

The programs for A086482, the canonical program `A086482.P1865469059613182738` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086482 has offset 1).

The definition of A086482 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086482.P1865469059613182738

`2^A002251(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086482

/-- `2^A002251(n)` -/
def P1865469059613182738.Spec : Prop :=
  ∀ n, P1865469059613182738.a n = (A086482 (n + 1) : ℚ)

end A086482

/-! ## A086482.P16979194118788785781

`2^Δ[n*floor(n/ϕ)]`
-/

namespace A086482.P16979194118788785781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A086482.P16979194118788785781

namespace A086482

/-- `2^Δ[n*floor(n/ϕ)]` -/
def P16979194118788785781.Spec : Prop :=
  ∀ n, P16979194118788785781.a n = (A086482 (n + 1) : ℚ)

end A086482

/-! ## A086482.P12939354446882910348

`A000079(Δ[n*floor(n/ϕ)])`
-/

namespace A086482.P12939354446882910348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat

end

end A086482.P12939354446882910348

namespace A086482

/-- `A000079(Δ[n*floor(n/ϕ)])` -/
def P12939354446882910348.Spec : Prop :=
  ∀ n, P12939354446882910348.a n = A086482 (n + 1)

end A086482

/-! ## A086482.P15297118022173776670

`A000225(Δ[n*floor(n/ϕ)])+1`
-/

namespace A086482.P15297118022173776670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (n + 1) - f1 n).toNat + 1

end

end A086482.P15297118022173776670

namespace A086482

/-- `A000225(Δ[n*floor(n/ϕ)])+1` -/
def P15297118022173776670.Spec : Prop :=
  ∀ n, P15297118022173776670.a n = A086482 (n + 1)

end A086482

/-! ## A086482.P2066250100066353536

`A011782(A002251(n)+1)`
-/

namespace A086482.P2066250100066353536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002251 n + 1).toNat

end

end A086482.P2066250100066353536

namespace A086482

/-- `A011782(A002251(n)+1)` -/
def P2066250100066353536.Spec : Prop :=
  ∀ n, P2066250100066353536.a n = A086482 (n + 1)

end A086482

/-! ## A086482.P12897632272136284071

`A011782(A019444(n+1))`
-/

namespace A086482.P12897632272136284071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A019444 (n + 1)).toNat

end

end A086482.P12897632272136284071

namespace A086482

/-- `A011782(A019444(n+1))` -/
def P12897632272136284071.Spec : Prop :=
  ∀ n, P12897632272136284071.a n = A086482 (n + 1)

end A086482

/-! ## A086482.P1175968774730409030

`A131577(A002251(n)+1)`
-/

namespace A086482.P1175968774730409030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A002251 n + 1).toNat

end

end A086482.P1175968774730409030

namespace A086482

/-- `A131577(A002251(n)+1)` -/
def P1175968774730409030.Spec : Prop :=
  ∀ n, P1175968774730409030.a n = A086482 (n + 1)

end A086482

/-! ## A086482.P7514724073711454720

`A000079(Δ[n*ceil(n/ϕ)])/2`
-/

namespace A086482.P7514724073711454720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A086482.P7514724073711454720

namespace A086482

/-- `A000079(Δ[n*ceil(n/ϕ)])/2` -/
def P7514724073711454720.Spec : Prop :=
  ∀ n, P7514724073711454720.a n = (A086482 (n + 1) : ℚ)

end A086482

/-!
# A086483: Bit that is two places to left of least significant 1-bit in the binary expansion of n.

The programs for A086483, the canonical program `A086483.P15878786577644316813` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086483 has offset 0).

The definition of A086483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086483.P15878786577644316813

`and(1, a(∑[n]%n)+C(n, 5))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086483

/-- `and(1, a(∑[n]%n)+C(n, 5))` -/
def P15878786577644316813.Spec : Prop :=
  ∀ n, (P15878786577644316813.a n : ℤ) = A086483 n

theorem P15878786577644316813.correct : P15878786577644316813.Spec := by
  intro n
  simp only [A086483]

end A086483

/-! ## A086483.P13895857500625241665

`char[or(n+1, 2*(xor(n, n+1)+1))]`
-/

namespace A086483.P13895857500625241665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (2 * (Nat.xor n (n + 1) + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A086483.P13895857500625241665

namespace A086483

/-- `char[or(n+1, 2*(xor(n, n+1)+1))]` -/
def P13895857500625241665.Spec : Prop :=
  ∀ n, (P13895857500625241665.a n : ℤ) = A086483 n

end A086483

/-! ## A086483.P2543664905245444277

`char[or(n+1, 5*(or(n, n+1)-n))]`
-/

namespace A086483.P2543664905245444277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (5 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086483.P2543664905245444277

namespace A086483

/-- `char[or(n+1, 5*(or(n, n+1)-n))]` -/
def P2543664905245444277.Spec : Prop :=
  ∀ n, (P2543664905245444277.a n : ℤ) = A086483 n

end A086483

/-! ## A086483.P15868989469950929984

`1-A342892(n)`
-/

namespace A086483.P15868989469950929984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A342892 n

end

end A086483.P15868989469950929984

namespace A086483

/-- `1-A342892(n)` -/
def P15868989469950929984.Spec : Prop :=
  ∀ n, P15868989469950929984.a n = A086483 n

theorem P15868989469950929984.correct : P15868989469950929984.Spec := by
  intro n
  simp only [A086483, Nat.add_sub_cancel, A086483.P15868989469950929984.a, A086483.P15878786577644316813.f1, A086483.P15878786577644316813.a, A342892, A342892.P15545724852766789726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086483

/-! ## A086483.P8136137161089556119

`A038189(A072650(n))`
-/

namespace A086483.P8136137161089556119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A072650 n).toNat

end

end A086483.P8136137161089556119

namespace A086483

/-- `A038189(A072650(n))` -/
def P8136137161089556119.Spec : Prop :=
  ∀ n, P8136137161089556119.a n = A086483 n

end A086483

/-! ## A086483.P2251572886721910627

`A059841((A059841(n)+n)*A342892(n))`
-/

namespace A086483.P2251572886721910627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((A059841 n + (n : ℤ)) * A342892 n).toNat

end

end A086483.P2251572886721910627

namespace A086483

/-- `A059841((A059841(n)+n)*A342892(n))` -/
def P2251572886721910627.Spec : Prop :=
  ∀ n, P2251572886721910627.a n = A086483 n

end A086483

/-! ## A086483.P8178331441889141265

`A004016(A061393(2*n+1)*A342892(n))`
-/

namespace A086483.P8178331441889141265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A061393 (2 * n + 1) * A342892 n).toNat

end

end A086483.P8178331441889141265

namespace A086483

/-- `A004016(A061393(2*n+1)*A342892(n))` -/
def P8178331441889141265.Spec : Prop :=
  ∀ n, P8178331441889141265.a n = A086483 n

end A086483

/-! ## A086483.P5009659336201751876

`A342892(A342892(n)+A061393(2*n+1)²)`
-/

namespace A086483.P5009659336201751876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 (A342892 n + A061393 (2 * n + 1) ^ 2).toNat

end

end A086483.P5009659336201751876

namespace A086483

/-- `A342892(A342892(n)+A061393(2*n+1)²)` -/
def P5009659336201751876.Spec : Prop :=
  ∀ n, P5009659336201751876.a n = A086483 n

end A086483

/-! ## A086483.P5024134183103108259

`(A002265(A166466(abs(1-n)+1)/3+3)-1)%2`
-/

namespace A086483.P5024134183103108259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (SequenceMachineLib.roundAway ((A166466 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 3 + 3)).toNat - 1) 2

end

end A086483.P5024134183103108259

namespace A086483

/-- `(A002265(A166466(abs(1-n)+1)/3+3)-1)%2` -/
def P5024134183103108259.Spec : Prop :=
  ∀ n, P5024134183103108259.a n = A086483 n

end A086483

/-! ## A086483.P5025497788101924693

`A000035(A002265(A030101(A030101(n))))`
-/

namespace A086483.P5025497788101924693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002265 (A030101 (A030101 n).toNat).toNat).toNat

end

end A086483.P5025497788101924693

namespace A086483

/-- `A000035(A002265(A030101(A030101(n))))` -/
def P5025497788101924693.Spec : Prop :=
  ∀ n, P5025497788101924693.a n = A086483 n

end A086483

/-! ## A086483.P5853128911366649622

`xor(1, A342892(2*n))`
-/

namespace A086483.P5853128911366649622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A342892 (2 * n))

end

end A086483.P5853128911366649622

namespace A086483

/-- `xor(1, A342892(2*n))` -/
def P5853128911366649622.Spec : Prop :=
  ∀ n, P5853128911366649622.a n = A086483 n

end A086483

/-! ## A086483.P15287171579384472343

`A038189(A171942(n+1)+n)`
-/

namespace A086483.P15287171579384472343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A171942 (n + 1) + (n : ℤ)).toNat

end

end A086483.P15287171579384472343

namespace A086483

/-- `A038189(A171942(n+1)+n)` -/
def P15287171579384472343.Spec : Prop :=
  ∀ n, P15287171579384472343.a n = A086483 n

end A086483

/-! ## A086483.P14901829340213046194

`A342892(lt[A342892(n), 1]*A342892(n))`
-/

namespace A086483.P14901829340213046194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) * A342892 n).toNat

end

end A086483.P14901829340213046194

namespace A086483

/-- `A342892(lt[A342892(n), 1]*A342892(n))` -/
def P14901829340213046194.Spec : Prop :=
  ∀ n, P14901829340213046194.a n = A086483 n

end A086483

/-! ## A086483.P7987459443070736559

`A059841(A342892(n)+2*n)`
-/

namespace A086483.P7987459443070736559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A342892 n + (2 * n : ℤ)).toNat

end

end A086483.P7987459443070736559

namespace A086483

/-- `A059841(A342892(n)+2*n)` -/
def P7987459443070736559.Spec : Prop :=
  ∀ n, P7987459443070736559.a n = A086483 n

end A086483

/-! ## A086483.P4071081670427216486

`A059841(A342892(n)+n+n)`
-/

namespace A086483.P4071081670427216486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A342892 n + (n : ℤ) + (n : ℤ)).toNat

end

end A086483.P4071081670427216486

namespace A086483

/-- `A059841(A342892(n)+n+n)` -/
def P4071081670427216486.Spec : Prop :=
  ∀ n, P4071081670427216486.a n = A086483 n

end A086483

/-! ## A086483.P14703952324796295501

`A000035(A342892(n)+2*n+1)`
-/

namespace A086483.P14703952324796295501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A342892 n + (2 * n + 1 : ℤ)).toNat

end

end A086483.P14703952324796295501

namespace A086483

/-- `A000035(A342892(n)+2*n+1)` -/
def P14703952324796295501.Spec : Prop :=
  ∀ n, P14703952324796295501.a n = A086483 n

end A086483

/-! ## A086483.P762773601574738765

`and(1, A008574(A008574(n)*A342892(n)))`
-/

namespace A086483.P762773601574738765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008574 (A008574 n * A342892 n).toNat)

end

end A086483.P762773601574738765

namespace A086483

/-- `and(1, A008574(A008574(n)*A342892(n)))` -/
def P762773601574738765.Spec : Prop :=
  ∀ n, P762773601574738765.a n = A086483 n

end A086483

/-! ## A086483.P4082771867150080366

`A342892(A342892(n)+A239374(n+2)²)`
-/

namespace A086483.P4082771867150080366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 (A342892 n + A239374 (n + 2) ^ 2).toNat

end

end A086483.P4082771867150080366

namespace A086483

/-- `A342892(A342892(n)+A239374(n+2)²)` -/
def P4082771867150080366.Spec : Prop :=
  ∀ n, P4082771867150080366.a n = A086483 n

end A086483

/-! ## A086483.P6507322397209839497

`A342892(A370532(n+2))`
-/

namespace A086483.P6507322397209839497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 (A370532 (n + 2)).toNat

end

end A086483.P6507322397209839497

namespace A086483

/-- `A342892(A370532(n+2))` -/
def P6507322397209839497.Spec : Prop :=
  ∀ n, P6507322397209839497.a n = A086483 n

end A086483

/-!
# A086486: Numbers k such that the sum of the distinct prime divisors divides rad(k)=A007947(k).

The programs for A086486, the canonical program `A086486.P12972051268827397954` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086486 has offset 1).

The definition of A086486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086486.P12972051268827397954

`eq[1, A340678(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086486

/-- `eq[1, A340678(n+1)]+1` -/
def P12972051268827397954.Spec : Prop :=
  ∀ n, (P12972051268827397954.a n : ℤ) = A086486 (n + 1)

theorem P12972051268827397954.correct : P12972051268827397954.Spec := by
  intro n
  simp only [A086486, Nat.add_sub_cancel]

end A086486

/-! ## A086486.P2295414136227199909

`record[(n+2)/A340678(n+2)]`
-/

namespace A086486.P2295414136227199909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A340678 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086486.P2295414136227199909

namespace A086486

/-- `record[(n+2)/A340678(n+2)]` -/
def P2295414136227199909.Spec : Prop :=
  ∀ n, P2295414136227199909.a n = (A086486 (n + 1) : ℚ)

end A086486

/-! ## A086486.P10030999647965728236

`eq[2, A238999(a(A340678(n)))]` with `a(0)=10`
-/

namespace A086486.P10030999647965728236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  A238999 (f2 (A340678 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086486.P10030999647965728236

namespace A086486

/-- `eq[2, A238999(a(A340678(n)))]` -/
def P10030999647965728236.Spec : Prop :=
  ∀ n, (P10030999647965728236.a n : ℤ) = A086486 (n + 1)

end A086486

/-! ## A086486.P12633205439396275292

`eq[2, A000040(a(A340678(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A086486.P12633205439396275292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000040 (f2 (A340678 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086486.P12633205439396275292

namespace A086486

/-- `eq[2, A000040(a(A340678(n)))]` -/
def P12633205439396275292.Spec : Prop :=
  ∀ n, (P12633205439396275292.a n : ℤ) = A086486 (n + 1)

end A086486

/-! ## A086486.P2604110393184178894

`eq[2, A226609(a(A340678(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A086486.P2604110393184178894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A226609 (f2 (A340678 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086486.P2604110393184178894

namespace A086486

/-- `eq[2, A226609(a(A340678(n)))]` -/
def P2604110393184178894.Spec : Prop :=
  ∀ n, (P2604110393184178894.a n : ℤ) = A086486 (n + 1)

end A086486

/-! ## A086486.P17920619488373597336

`eq[1, A065265(a(A340678(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A086486.P17920619488373597336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A065265 (f2 (A340678 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086486.P17920619488373597336

namespace A086486

/-- `eq[1, A065265(a(A340678(n)))]` -/
def P17920619488373597336.Spec : Prop :=
  ∀ n, (P17920619488373597336.a n : ℤ) = A086486 (n + 1)

end A086486

/-! ## A086486.P6696116876671058204

`eq[5, A022561(a(A340678(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A086486.P6696116876671058204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A022561 (f2 (A340678 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086486.P6696116876671058204

namespace A086486

/-- `eq[5, A022561(a(A340678(n)))]` -/
def P6696116876671058204.Spec : Prop :=
  ∀ n, (P6696116876671058204.a n : ℤ) = A086486 (n + 1)

end A086486

/-! ## A086486.P6372753920889618941

`eq[2, A132732(a(A340678(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A086486.P6372753920889618941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A132732 (f2 (A340678 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086486.P6372753920889618941

namespace A086486

/-- `eq[2, A132732(a(A340678(n)))]` -/
def P6372753920889618941.Spec : Prop :=
  ∀ n, (P6372753920889618941.a n : ℤ) = A086486 (n + 1)

end A086486

/-!
# A086487: Smallest number with n prime divisors such that the sum of the prime divisors is also a divisor, or 0 if no such number exists.

The programs for A086487, there is no canonical definition to state claims against.
-/

/-! ## A086487.P13240968096202163006

`A064680(C(A341290(n+3), A126663(n+2)))`
-/

namespace A086487.P13240968096202163006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Nat.choose (A341290 (n + 3)).toNat (A126663 (n + 2)).toNat)

end

end A086487.P13240968096202163006

/-!
# A086489: Smallest k such that k and k + n have the same prime signature.

The programs for A086489, there is no canonical definition to state claims against.
-/

/-! ## A086489.P4135268882218930240

`A005245(A255354(n+1)%A048578(n))`
-/

namespace A086489.P4135268882218930240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (Int.tmod (A255354 (n + 1)) (A048578 n)).toNat

end

end A086489.P4135268882218930240

/-! ## A086489.P10991872817278432283

`A005245(A255354(n+1))`
-/

namespace A086489.P10991872817278432283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A255354 (n + 1)).toNat

end

end A086489.P10991872817278432283

/-! ## A086489.P12315349403649164832

`A214750(A255354(n+1)+2)`
-/

namespace A086489.P12315349403649164832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214750 (A255354 (n + 1) + 2).toNat

end

end A086489.P12315349403649164832

/-! ## A086489.P16698493400338685693

`A275727(A255354(n+1)+2)`
-/

namespace A086489.P16698493400338685693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A255354 (n + 1) + 2).toNat

end

end A086489.P16698493400338685693

/-! ## A086489.P13894571763680149718

`A271800(A255354(n+1)+8)`
-/

namespace A086489.P13894571763680149718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (A255354 (n + 1) + 8).toNat

end

end A086489.P13894571763680149718

/-!
# A086491: Group the natural numbers such that the n-th group sum is divisible by prime(n): (1, 2, 3), (4, 5), (6, 7, 8, 9), (10, 11), (12, 13, 14, 15, 16, 17, 18, 19, 20, 21), ... Sequence contains the sum of the terms in the n-th group.

The programs for A086491, there is no canonical definition to state claims against.
-/

/-! ## A086491.P12781041643000376250

`A000040(n+1)*A086492(n+1)`
-/

namespace A086491.P12781041643000376250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A086492 (n + 1)

end

end A086491.P12781041643000376250

/-! ## A086491.P5808908800453222433

`sqrt(A001248(n+1))*A086492(n+1)`
-/

namespace A086491.P5808908800453222433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A086492 (n + 1) : ℝ)

end

end A086491.P5808908800453222433

/-! ## A086491.P13868282848340065963

`(A014692(n+1)+n)*A086492(n+1)`
-/

namespace A086491.P13868282848340065963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A086492 (n + 1)

end

end A086491.P13868282848340065963

/-! ## A086491.P7335384637633042930

`Δ[C(A086493(n+1), 2)]`
-/

namespace A086491.P7335384637633042930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086493 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086491.P7335384637633042930

/-! ## A086491.P920918505223046127

`p?[(n+1)*A001221(n+1)]*A086492(n+1)`
-/

namespace A086491.P920918505223046127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A086492 (n + 1)

end

end A086491.P920918505223046127

/-! ## A086491.P5665990328053098596

`p?[(n+1)*A001222(n+1)]*A086492(n+1)`
-/

namespace A086491.P5665990328053098596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A086492 (n + 1)

end

end A086491.P5665990328053098596

/-! ## A086491.P18007954024479124183

`p?[A053661(n+1)]*A086492(n+1)`
-/

namespace A086491.P18007954024479124183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A086492 (n + 1)

end

end A086491.P18007954024479124183

/-! ## A086491.P10555009116880333308

`Δ[A000217(A086493(n+1)-1)]`
-/

namespace A086491.P10555009116880333308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A086493 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086491.P10555009116880333308

/-! ## A086491.P16840189127133913076

`Δ[A000217(A092917(n+1))]`
-/

namespace A086491.P16840189127133913076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A092917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086491.P16840189127133913076

/-! ## A086491.P16319480482236285615

`A000217(A092917(n+2))-A000217(A092917(n+1))`
-/

namespace A086491.P16319480482236285615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A092917 (n + 2)).toNat - A000217 (A092917 (n + 1)).toNat

end

end A086491.P16319480482236285615

/-!
# A086492: Group the natural numbers such that the n-th group sum is divisible by prime(n): (1, 2, 3), (4, 5), (6, 7, 8, 9), (10, 11), (12, 13, 14, 15, 16, 17, 18, 19, 20, 21), ... Sequence contains (the sum of the terms in the n-th group)/prime(n): a(n) = A086491(n)/prime(n).

The programs for A086492, there is no canonical definition to state claims against.
-/

/-! ## A086492.P3404710762447060272

`A086491(n+1)/A000040(n+1)`
-/

namespace A086492.P3404710762447060272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A086492.P3404710762447060272

/-! ## A086492.P11072106206051720460

`A086491(n+1)/sqrt(A001248(n+1))`
-/

namespace A086492.P11072106206051720460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A086492.P11072106206051720460

/-! ## A086492.P10968687911814282300

`Δ[C(A086493(n+1), 2)]/A000040(n+1)`
-/

namespace A086492.P10968687911814282300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086493 (n + 1)).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A086492.P10968687911814282300

/-! ## A086492.P12468519103070788905

`A086491(n+1)/p?[A047255(n+1)]`
-/

namespace A086492.P12468519103070788905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A086492.P12468519103070788905

/-! ## A086492.P16431562216550938444

`A086491(n+1)/p?[A014681(n)]`
-/

namespace A086492.P16431562216550938444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A086492.P16431562216550938444

/-! ## A086492.P12337139016345820669

`A086491(n+1)/p?[A064429(n)]`
-/

namespace A086492.P12337139016345820669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A086492.P12337139016345820669

/-! ## A086492.P203397627268348331

`A086491(n+1)/p?[A066246(n+1)]`
-/

namespace A086492.P203397627268348331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A086492.P203397627268348331

/-! ## A086492.P13220635641605065404

`A086491(n+1)/p?[A249815(n+1)]`
-/

namespace A086492.P13220635641605065404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A086492.P13220635641605065404

/-! ## A086492.P5921262004926298230

`A086491(n+1)/p?[A006370(n)]`
-/

namespace A086492.P5921262004926298230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A086492.P5921262004926298230

/-! ## A086492.P14137043319899864078

`A086491(n+1)/A002264(A001748(n+1))`
-/

namespace A086492.P14137043319899864078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086491 (n + 1) : ℚ) / (A002264 (A001748 (n + 1)).toNat : ℚ)

end

end A086492.P14137043319899864078

/-!
# A086493: Group the natural numbers such that the n-th group sum is divisible by prime(n): (1, 2, 3), (4, 5), (6, 7, 8, 9), (10, 11), (12, 13, 14, 15, 16, 17, 18, 19, 20, 21), ... Sequence contains the first term of every group.

The programs for A086493, there is no canonical definition to state claims against.
-/

/-! ## A086493.P3767543921379243449

`A092917(n+1)+1`
-/

namespace A086493.P3767543921379243449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092917 (n + 1) + 1

end

end A086493.P3767543921379243449

/-!
# A086494: Group the natural numbers such that the sum of the terms of every group has a distinct prime signature not occurring earlier: (1), (2), (3, 4, 5), (6), (7, 8, 9), (10, 11, 12, 13, 14), (15, 16, 17), (18, 19, 20, 21)... Sequence contains the sum of the terms of groups.

The programs for A086494, there is no canonical definition to state claims against.
-/

/-! ## A086494.P716924592827369730

`Δ[C(A086495(n), 2)]`
-/

namespace A086494.P716924592827369730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086495 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086494.P716924592827369730

/-! ## A086494.P12198355706353028260

`Δ[A145018(A086495(n))]`
-/

namespace A086494.P12198355706353028260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (A086495 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086494.P12198355706353028260

/-! ## A086494.P191525772659913978

`Δ[A000124(A086495(n)-1)]`
-/

namespace A086494.P191525772659913978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A086495 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086494.P191525772659913978

/-! ## A086494.P5739446268448567188

`Δ[A000217(A086495(n)-1)]`
-/

namespace A086494.P5739446268448567188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A086495 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086494.P5739446268448567188

/-! ## A086494.P15523504182163757898

`Δ[A022856(A086495(n)+3)]`
-/

namespace A086494.P15523504182163757898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A086495 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086494.P15523504182163757898

/-!
# A086495: Group the natural numbers such that the sum of the terms of every group has a distinct prime signature not occurring earlier: (1), (2), (3, 4, 5), (6), (7, 8, 9), (10, 11, 12, 13, 14), (15, 16, 17), (18, 19, 20, 21)... Sequence contains the first term of every group.

The programs for A086495, there is no canonical definition to state claims against.
-/

/-! ## A086495.P12179844244843917258

`eq[A200154(A200154(n+1)), A322818(n+1)]`
-/

namespace A086495.P12179844244843917258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A200154 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086495.P12179844244843917258

/-! ## A086495.P10357565086051195376

`eq[A200154(A200154(n+1)), A362611(n+1)]`
-/

namespace A086495.P10357565086051195376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A200154 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086495.P10357565086051195376

/-!
# A086496: Rearrangement of natural numbers such that every 2n-th partial sum is prime. Every (2n+1)-th term is the smallest number not included earlier.

The programs for A086496, there is no canonical definition to state claims against.
-/

/-! ## A086496.P10953086853337305567

`∑{e}[A008776(n), A304741(#)]`
-/

namespace A086496.P10953086853337305567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A304741 (Nat.factorization (f1 n).natAbs p)

end

end A086496.P10953086853337305567

/-!
# A086497: Primes arising in A086496. a(n) = Sum {A086946(k), k = 1 to 2n}= 2n-th partial sum of A086496.

The programs for A086497, there is no canonical definition to state claims against.
-/

/-! ## A086497.P11666222245283995958

`∑[A086496(2*n+1)+A086496(2*(n+1))]`
-/

namespace A086497.P11666222245283995958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086496 (2 * n + 1) + A086496 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086497.P11666222245283995958

/-! ## A086497.P8560066557194574871

`p?[record[A248614(n)-A046899(n)]]`
-/

namespace A086497.P8560066557194574871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 n - A046899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086497.P8560066557194574871

/-! ## A086497.P13605820982014808191

`A005408(A250120(n)+A003192(n+1))`
-/

namespace A086497.P13605820982014808191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A250120 n + A003192 (n + 1)).toNat

end

end A086497.P13605820982014808191

/-! ## A086497.P262459114574294142

`A060264(A250120(n)+A003192(n+1))`
-/

namespace A086497.P262459114574294142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A250120 n + A003192 (n + 1)).toNat

end

end A086497.P262459114574294142

/-! ## A086497.P3468115648011998834

`A073409(A250120(n)+A003192(n+1))`
-/

namespace A086497.P3468115648011998834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073409 (A250120 n + A003192 (n + 1)).toNat

end

end A086497.P3468115648011998834

/-!
# A086498: Rearrangement of primes such that every (2n)-th partial sum is a prime. Every (2n+1)-st term is the smallest prime which has not been included earlier.

The programs for A086498, there is no canonical definition to state claims against.
-/

/-! ## A086498.P1039193210946880591

`p?[A084287(A084287(n+1))]`
-/

namespace A086498.P1039193210946880591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084287 (A084287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086498.P1039193210946880591

/-!
# A086499: Primes arising in A086498: a(n) = (2n)-th partial sum of A086498.

The programs for A086499, there is no canonical definition to state claims against.
-/

/-! ## A086499.P16314609804730292009

`p?[∑[A086498(n+2)]+2]`
-/

namespace A086499.P16314609804730292009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086498 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086499.P16314609804730292009

/-! ## A086499.P13238415388288069837

`p?[A093178(∑[A086498(n+1)])]`
-/

namespace A086499.P13238415388288069837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086498 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086499.P13238415388288069837

/-! ## A086499.P9048779099959785162

`∑[A086498(2*n+1)+A086498(2*(n+1))]`
-/

namespace A086499.P9048779099959785162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086498 (2 * n + 1) + A086498 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086499.P9048779099959785162

/-! ## A086499.P18075296800138000842

`p?[A022998(∑[A086498(n+1)])]`
-/

namespace A086499.P18075296800138000842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086498 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086499.P18075296800138000842

/-! ## A086499.P15808137782585247994

`p?[A195161(∑[A086498(n+1)])]`
-/

namespace A086499.P15808137782585247994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086498 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086499.P15808137782585247994

