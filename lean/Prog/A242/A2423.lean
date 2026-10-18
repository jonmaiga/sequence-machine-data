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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A242300: a(n) = Sum_{0<=i

The programs for A242300, the canonical program `A242300.P18198570952785436576` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242300 has offset 0).

The definition of A242300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242300.P18198570952785436576

`A242496(n)+A027941(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A242300

/-- `A242496(n)+A027941(n)` -/
def P18198570952785436576.Spec : Prop :=
  ∀ n, P18198570952785436576.a n = A242300 n

theorem P18198570952785436576.correct : P18198570952785436576.Spec := by
  intro n
  simp only [A242300]

end A242300

/-! ## A242300.P9891085288753641898

`A215580(n)-∑[A000032(n)]`
-/

namespace A242300.P9891085288753641898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P9891085288753641898

namespace A242300

/-- `A215580(n)-∑[A000032(n)]` -/
def P9891085288753641898.Spec : Prop :=
  ∀ n, P9891085288753641898.a n = A242300 n

end A242300

/-! ## A242300.P17247556972115413461

`∑[A215602(n)-A000032(n)]`
-/

namespace A242300.P17247556972115413461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n - A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P17247556972115413461

namespace A242300

/-- `∑[A215602(n)-A000032(n)]` -/
def P17247556972115413461.Spec : Prop :=
  ∀ n, P17247556972115413461.a n = A242300 n

end A242300

/-! ## A242300.P1397413916006901005

`∑[A000032(n)*A001610(n)]`
-/

namespace A242300.P1397413916006901005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P1397413916006901005

namespace A242300

/-- `∑[A000032(n)*A001610(n)]` -/
def P1397413916006901005.Spec : Prop :=
  ∀ n, P1397413916006901005.a n = A242300 n

end A242300

/-! ## A242300.P17643045148149582184

`∑[(A001612(n)-1)*A001610(n)]`
-/

namespace A242300.P17643045148149582184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1) * A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P17643045148149582184

namespace A242300

/-- `∑[(A001612(n)-1)*A001610(n)]` -/
def P17643045148149582184.Spec : Prop :=
  ∀ n, P17643045148149582184.a n = A242300 n

end A242300

/-! ## A242300.P8186234326206699485

`∑[(A000211(n)-2)*A001610(n)]`
-/

namespace A242300.P8186234326206699485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - 2) * A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P8186234326206699485

namespace A242300

/-- `∑[(A000211(n)-2)*A001610(n)]` -/
def P8186234326206699485.Spec : Prop :=
  ∀ n, P8186234326206699485.a n = A242300 n

end A242300

/-! ## A242300.P4066977162180694146

`A005592(n+1)-A014217(n+2)`
-/

namespace A242300.P4066977162180694146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (n + 1) - A014217 (n + 2)

end

end A242300.P4066977162180694146

namespace A242300

/-- `A005592(n+1)-A014217(n+2)` -/
def P4066977162180694146.Spec : Prop :=
  ∀ n, P4066977162180694146.a n = A242300 n

end A242300

/-! ## A242300.P17681334928438558

`A005248(n+1)-A169986(n+2)`
-/

namespace A242300.P17681334928438558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A169986 (n + 2)

end

end A242300.P17681334928438558

namespace A242300

/-- `A005248(n+1)-A169986(n+2)` -/
def P17681334928438558.Spec : Prop :=
  ∀ n, P17681334928438558.a n = A242300 n

end A242300

/-! ## A242300.P7157625559793851596

`∑[Δ[A000204(n+1)]*A001610(n)]`
-/

namespace A242300.P7157625559793851596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P7157625559793851596

namespace A242300

/-- `∑[Δ[A000204(n+1)]*A001610(n)]` -/
def P7157625559793851596.Spec : Prop :=
  ∀ n, P7157625559793851596.a n = A242300 n

end A242300

/-! ## A242300.P5338531920421197836

`∑[Δ[A000211(n+1)]*A001610(n)]`
-/

namespace A242300.P5338531920421197836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P5338531920421197836

namespace A242300

/-- `∑[Δ[A000211(n+1)]*A001610(n)]` -/
def P5338531920421197836.Spec : Prop :=
  ∀ n, P5338531920421197836.a n = A242300 n

end A242300

/-! ## A242300.P17070503832989362680

`∑[(A000032(n+1)-1)*A000032(n)]`
-/

namespace A242300.P17070503832989362680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - 1) * A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P17070503832989362680

namespace A242300

/-- `∑[(A000032(n+1)-1)*A000032(n)]` -/
def P17070503832989362680.Spec : Prop :=
  ∀ n, P17070503832989362680.a n = A242300 n

end A242300

/-! ## A242300.P1410186754623168581

`A301653(2*n+1)-A301653(n+1)`
-/

namespace A242300.P1410186754623168581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 (2 * n + 1) - A301653 (n + 1)

end

end A242300.P1410186754623168581

namespace A242300

/-- `A301653(2*n+1)-A301653(n+1)` -/
def P1410186754623168581.Spec : Prop :=
  ∀ n, P1410186754623168581.a n = A242300 n

end A242300

/-! ## A242300.P15344776417765358676

`A001610(2*n+1)-A014217(n+2)`
-/

namespace A242300.P15344776417765358676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) - A014217 (n + 2)

end

end A242300.P15344776417765358676

namespace A242300

/-- `A001610(2*n+1)-A014217(n+2)` -/
def P15344776417765358676.Spec : Prop :=
  ∀ n, P15344776417765358676.a n = A242300 n

end A242300

/-! ## A242300.P11534520264992759291

`A014217(2*(n+1))-A014217(n+2)`
-/

namespace A242300.P11534520264992759291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * (n + 1)) - A014217 (n + 2)

end

end A242300.P11534520264992759291

namespace A242300

/-- `A014217(2*(n+1))-A014217(n+2)` -/
def P11534520264992759291.Spec : Prop :=
  ∀ n, P11534520264992759291.a n = A242300 n

end A242300

/-! ## A242300.P8691238554929926108

`A000204(2*(n+1))-A062724(n+2)`
-/

namespace A242300.P8691238554929926108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) - A062724 (n + 2)

end

end A242300.P8691238554929926108

namespace A242300

/-- `A000204(2*(n+1))-A062724(n+2)` -/
def P8691238554929926108.Spec : Prop :=
  ∀ n, P8691238554929926108.a n = A242300 n

end A242300

/-! ## A242300.P15711272117611140998

`A020878(2*(n+1))-A062724(n+2)`
-/

namespace A242300.P15711272117611140998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 (2 * (n + 1)) - A062724 (n + 2)

end

end A242300.P15711272117611140998

namespace A242300

/-- `A020878(2*(n+1))-A062724(n+2)` -/
def P15711272117611140998.Spec : Prop :=
  ∀ n, P15711272117611140998.a n = A242300 n

end A242300

/-! ## A242300.P3079912940724063467

`A062724(2*(n+1))-A062724(n+2)`
-/

namespace A242300.P3079912940724063467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 (2 * (n + 1)) - A062724 (n + 2)

end

end A242300.P3079912940724063467

namespace A242300

/-- `A062724(2*(n+1))-A062724(n+2)` -/
def P3079912940724063467.Spec : Prop :=
  ∀ n, P3079912940724063467.a n = A242300 n

end A242300

/-! ## A242300.P1226119275526385567

`A000204(2*(n+1))-A169986(n+2)`
-/

namespace A242300.P1226119275526385567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) - A169986 (n + 2)

end

end A242300.P1226119275526385567

namespace A242300

/-- `A000204(2*(n+1))-A169986(n+2)` -/
def P1226119275526385567.Spec : Prop :=
  ∀ n, P1226119275526385567.a n = A242300 n

end A242300

/-! ## A242300.P7801784773178434302

`floor((A000032(n+2)/ϕ)²-A000032(n+2))`
-/

namespace A242300.P7801784773178434302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (n + 2) : ℝ) / Real.goldenRatio) ^ 2 - (A000032 (n + 2) : ℝ)⌋

end

end A242300.P7801784773178434302

namespace A242300

/-- `floor((A000032(n+2)/ϕ)²-A000032(n+2))` -/
def P7801784773178434302.Spec : Prop :=
  ∀ n, P7801784773178434302.a n = A242300 n

end A242300

/-! ## A242300.P5885447675123140711

`∑[(A118658(n)+A000045(n))*A001610(n)]`
-/

namespace A242300.P5885447675123140711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118658 n + A000045 n) * A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242300.P5885447675123140711

namespace A242300

/-- `∑[(A118658(n)+A000045(n))*A001610(n)]` -/
def P5885447675123140711.Spec : Prop :=
  ∀ n, P5885447675123140711.a n = A242300 n

end A242300

/-!
# A242305: Squares-greedy residue of n.

The programs for A242305, there is no canonical definition to state claims against.
-/

/-! ## A242305.P175327912057949471

`(a(n-1)+1)*A010059(A126420(n+1))` with `a(0)=1`
-/

namespace A242305.P175327912057949471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * A010059 (A126420 (n + 1)).toNat

end

end A242305.P175327912057949471

/-!
# A242307: Squares-greedy summable numbers.

The programs for A242307, there is no canonical definition to state claims against.
-/

/-! ## A242307.P18137346752620692968

`eq[0, A242305(n+3)]+3`
-/

namespace A242307.P18137346752620692968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A242307.P18137346752620692968

/-! ## A242307.P1158419793498804137

`lt[A242305(n+2), 1]+2`
-/

namespace A242307.P1158419793498804137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A242307.P1158419793498804137

/-! ## A242307.P13456718282291482745

`A243427(eq[0, A242305(n+2)])`
-/

namespace A242307.P13456718282291482745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242307.P13456718282291482745

/-! ## A242307.P6068732851684452565

`A243427(lt[A242305(n+2), 1])`
-/

namespace A242307.P6068732851684452565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242307.P6068732851684452565

/-! ## A242307.P9537115822599392028

`eq[0, A242305(A233583(n+1))]`
-/

namespace A242307.P9537115822599392028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242307.P9537115822599392028

/-!
# A242308: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

The programs for A242308, there is no canonical definition to state claims against.
-/

/-! ## A242308.P16549907499025723308

`A335458(A002473(3*n+1)%A035985(n))`
-/

namespace A242308.P16549907499025723308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (Int.tmod (A002473 (3 * n + 1)) (A035985 n)).toNat

end

end A242308.P16549907499025723308

/-! ## A242308.P16046829075871296863

`A031346(A241626(n+4)+A000326(3*(n+1)))`
-/

namespace A242308.P16046829075871296863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A241626 (n + 4) + A000326 (3 * (n + 1))).toNat

end

end A242308.P16046829075871296863

/-! ## A242308.P15499817549074810498

`A006530(Δ[A275199(n+2)]!)`
-/

namespace A242308.P15499817549074810498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A242308.P15499817549074810498

/-! ## A242308.P460845634259408670

`A000120(2*A034869(2*n)²)`
-/

namespace A242308.P460845634259408670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A034869 (2 * n) ^ 2).toNat

end

end A242308.P460845634259408670

/-!
# A242309: a(n) = A211384(2n)/A211384(n).

The programs for A242309, there is no canonical definition to state claims against.
-/

/-! ## A242309.P1059987332285391245

`A211384(2*(n+1))/A211384(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242309.P1059987332285391245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211384 (2 * (n + 1)) : ℚ) / (A211384 (n + 1) : ℚ)

end

end A242309.P1059987332285391245

/-!
# A242312: Digital roots in Pascal's triangle, triangle read by rows, 0 <= k <= n.

The programs for A242312, the canonical program `A242312.P5495476097644624386` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242312 has offset 0).

The definition of A242312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242312.P5495476097644624386

`A010888(A096145(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242312

/-- `A010888(A096145(n))` -/
def P5495476097644624386.Spec : Prop :=
  ∀ n, P5495476097644624386.a n = A242312 n

theorem P5495476097644624386.correct : P5495476097644624386.Spec := by
  intro n
  simp only [A242312]

end A242312

/-! ## A242312.P2168213329165264697

`dr(A007318(n))`
-/

namespace A242312.P2168213329165264697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007318 n)

end

end A242312.P2168213329165264697

namespace A242312

/-- `dr(A007318(n))` -/
def P2168213329165264697.Spec : Prop :=
  ∀ n, (P2168213329165264697.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P1190024673347691018

`dr(A093645(n))`
-/

namespace A242312.P1190024673347691018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A093645 n)

end

end A242312.P1190024673347691018

namespace A242312

/-- `dr(A093645(n))` -/
def P1190024673347691018.Spec : Prop :=
  ∀ n, (P1190024673347691018.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P6430862868027209801

`dr(A108086(n))`
-/

namespace A242312.P6430862868027209801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A108086 n)

end

end A242312.P6430862868027209801

namespace A242312

/-- `dr(A108086(n))` -/
def P6430862868027209801.Spec : Prop :=
  ∀ n, (P6430862868027209801.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P4539881864542446802

`dr(A117440(n))`
-/

namespace A242312.P4539881864542446802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A117440 n)

end

end A242312.P4539881864542446802

namespace A242312

/-- `dr(A117440(n))` -/
def P4539881864542446802.Spec : Prop :=
  ∀ n, (P4539881864542446802.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P12261369343211461149

`dr(A130595(n))`
-/

namespace A242312.P12261369343211461149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130595 n)

end

end A242312.P12261369343211461149

namespace A242312

/-- `dr(A130595(n))` -/
def P12261369343211461149.Spec : Prop :=
  ∀ n, (P12261369343211461149.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P6439908239471973090

`dr(A143685(n))`
-/

namespace A242312.P6439908239471973090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A143685 n)

end

end A242312.P6439908239471973090

namespace A242312

/-- `dr(A143685(n))` -/
def P6439908239471973090.Spec : Prop :=
  ∀ n, (P6439908239471973090.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P11844027140097004362

`dr(sqrt(A008459(n)))`
-/

namespace A242312.P11844027140097004362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ)))

end

end A242312.P11844027140097004362

namespace A242312

/-- `dr(sqrt(A008459(n)))` -/
def P11844027140097004362.Spec : Prop :=
  ∀ n, (P11844027140097004362.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P9525274874334179777

`dr(Δ[A102363(n)])`
-/

namespace A242312.P9525274874334179777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A242312.P9525274874334179777

namespace A242312

/-- `dr(Δ[A102363(n)])` -/
def P9525274874334179777.Spec : Prop :=
  ∀ n, (P9525274874334179777.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P11360312865192149120

`dr(A014473(n)+1)`
-/

namespace A242312.P11360312865192149120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014473 n + 1)

end

end A242312.P11360312865192149120

namespace A242312

/-- `dr(A014473(n)+1)` -/
def P11360312865192149120.Spec : Prop :=
  ∀ n, (P11360312865192149120.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P8077401879073851294

`dr(A172171(n+1))`
-/

namespace A242312.P8077401879073851294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A172171 (n + 1))

end

end A242312.P8077401879073851294

namespace A242312

/-- `dr(A172171(n+1))` -/
def P8077401879073851294.Spec : Prop :=
  ∀ n, (P8077401879073851294.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P11269919738869226014

`dr(A172179(n+1))`
-/

namespace A242312.P11269919738869226014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A172179 (n + 1))

end

end A242312.P11269919738869226014

namespace A242312

/-- `dr(A172179(n+1))` -/
def P11269919738869226014.Spec : Prop :=
  ∀ n, (P11269919738869226014.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P11593888803657550822

`dr(A028326(n)/2)`
-/

namespace A242312.P11593888803657550822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2))

end

end A242312.P11593888803657550822

namespace A242312

/-- `dr(A028326(n)/2)` -/
def P11593888803657550822.Spec : Prop :=
  ∀ n, (P11593888803657550822.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P8749628161224992819

`dr(C(A003056(n), A002262(n)))`
-/

namespace A242312.P8749628161224992819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ)

end

end A242312.P8749628161224992819

namespace A242312

/-- `dr(C(A003056(n), A002262(n)))` -/
def P8749628161224992819.Spec : Prop :=
  ∀ n, (P8749628161224992819.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P10597654575164210922

`dr(C(A003056(n), A025581(n)))`
-/

namespace A242312.P10597654575164210922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ)

end

end A242312.P10597654575164210922

namespace A242312

/-- `dr(C(A003056(n), A025581(n)))` -/
def P10597654575164210922.Spec : Prop :=
  ∀ n, (P10597654575164210922.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P16186320678189986037

`A010878(A096145(n)-1)+1`
-/

namespace A242312.P16186320678189986037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A096145 n - 1).toNat + 1

end

end A242312.P16186320678189986037

namespace A242312

/-- `A010878(A096145(n)-1)+1` -/
def P16186320678189986037.Spec : Prop :=
  ∀ n, P16186320678189986037.a n = A242312 n

end A242312

/-! ## A242312.P13146559479852251078

`dr(A102363(n+1)-A102363(n))`
-/

namespace A242312.P13146559479852251078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A102363 (n + 1) - A102363 n)

end

end A242312.P13146559479852251078

namespace A242312

/-- `dr(A102363(n+1)-A102363(n))` -/
def P13146559479852251078.Spec : Prop :=
  ∀ n, (P13146559479852251078.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P5931555281981577175

`dr(C(A003056(n), A002260(n+1)-1))`
-/

namespace A242312.P5931555281981577175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ)

end

end A242312.P5931555281981577175

namespace A242312

/-- `dr(C(A003056(n), A002260(n+1)-1))` -/
def P5931555281981577175.Spec : Prop :=
  ∀ n, (P5931555281981577175.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P14175010747369483552

`dr(A071919(A002024(n+1)+n))`
-/

namespace A242312.P14175010747369483552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A071919 (A002024 (n + 1) + (n : ℤ)).toNat)

end

end A242312.P14175010747369483552

namespace A242312

/-- `dr(A071919(A002024(n+1)+n))` -/
def P14175010747369483552.Spec : Prop :=
  ∀ n, (P14175010747369483552.a n : ℤ) = A242312 n

end A242312

/-! ## A242312.P7660539211735301466

`dr(A139459(n))`
-/

namespace A242312.P7660539211735301466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139459 n)

end

end A242312.P7660539211735301466

namespace A242312

/-- `dr(A139459(n))` -/
def P7660539211735301466.Spec : Prop :=
  ∀ n, (P7660539211735301466.a n : ℤ) = A242312 n

end A242312

/-!
# A242313: Numbers belonging to a geometric sequence whose ratio is 2 and whose first term ends in 1.

The programs for A242313, there is no canonical definition to state claims against.
-/

/-! ## A242313.P4870534318157890154

`lt[lcm(5, and(n, n-1)), n]`
-/

namespace A242313.P4870534318157890154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (Int.land (n : ℤ) ((n : ℤ) - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242313.P4870534318157890154

/-! ## A242313.P7984329290322416040

`eq[0, and(n, n+1)%5]+1`
-/

namespace A242313.P7984329290322416040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242313.P7984329290322416040

/-! ## A242313.P10051168498422075457

`lt[1, gcd(5, and(n, n+1))]+1`
-/

namespace A242313.P10051168498422075457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A242313.P10051168498422075457

/-! ## A242313.P6306659124935710004

`lt[floor(n/2^val(n+1, 2))%5, 1]+1`
-/

namespace A242313.P6306659124935710004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A242313.P6306659124935710004

/-! ## A242313.P18098028415213690693

`lt[floor(n/(xor(n, n+1)+1))%5, 1]+1`
-/

namespace A242313.P18098028415213690693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A242313.P18098028415213690693

/-! ## A242313.P2389119120544002734

`eq[1, ((n+1)/2^val(n+1, 2))%10]+1`
-/

namespace A242313.P2389119120544002734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242313.P2389119120544002734

/-! ## A242313.P1345227286659412683

`eq[1, (floor(n/(xor(n, n+1)+1))+1)%5]+1`
-/

namespace A242313.P1345227286659412683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242313.P1345227286659412683

/-! ## A242313.P2768142722678791654

`eq[1, A327539(n)%5]`
-/

namespace A242313.P2768142722678791654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327539 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242313.P2768142722678791654

/-! ## A242313.P7901411728860158225

`eq[1, A099546(n+1)]+1`
-/

namespace A242313.P7901411728860158225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242313.P7901411728860158225

/-! ## A242313.P12856034325256424140

`eq[1, A099551(n+1)]+1`
-/

namespace A242313.P12856034325256424140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242313.P12856034325256424140

/-!
# A242315: Indices of primes in the tribonacci-like sequence A214826.

The programs for A242315, there is no canonical definition to state claims against.
-/

/-! ## A242315.P7467444572287204748

`A191377(A084611(n))+1-∑{p}[n+1, C(#, n)]+n`
-/

namespace A242315.P7467444572287204748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191377 (A084611 n).toNat + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))

end

end A242315.P7467444572287204748

/-!
# A242317: Number of length n+2+2 0..2 arrays with every value 0..2 appearing at least once in every consecutive 2+3 elements, and new values 0..2 introduced in order.

The programs for A242317, there is no canonical definition to state claims against.
-/

/-! ## A242317.P4225662476196948291

`A248960(n+5)/6`
-/

namespace A242317.P4225662476196948291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248960 (n + 5) : ℚ) / 6

end

end A242317.P4225662476196948291

/-! ## A242317.P8680678041403480792

`A242322(∑[n+2])`
-/

namespace A242317.P8680678041403480792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242317.P8680678041403480792

/-! ## A242317.P932650817566882718

`or(1, A242322(A000096(n+1)))`
-/

namespace A242317.P932650817566882718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A242322 (A000096 (n + 1)).toNat)

end

end A242317.P932650817566882718

/-! ## A242317.P16890898244856812600

`record[A242322(Δ[A003453(n+5)])]`
-/

namespace A242317.P16890898244856812600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242317.P16890898244856812600

/-! ## A242317.P2147444046072695083

`A242322(A000096(n+1))%A000108(n+6)`
-/

namespace A242317.P2147444046072695083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242322 (A000096 (n + 1)).toNat) (A000108 (n + 6))

end

end A242317.P2147444046072695083

/-!
# A242318: Number of length n+3+2 0..3 arrays with every value 0..3 appearing at least once in every consecutive 3+3 elements, and new values 0..3 introduced in order.

The programs for A242318, there is no canonical definition to state claims against.
-/

/-! ## A242318.P4689728103523197132

`A242322(∑[n+3]+1)`
-/

namespace A242318.P4689728103523197132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242318.P4689728103523197132

/-! ## A242318.P16634056610919862570

`or(char[1], A242322(A034856(n+2)))`
-/

namespace A242318.P16634056610919862570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A242322 (A034856 (n + 2)).toNat)

end

end A242318.P16634056610919862570

/-! ## A242318.P12533614968074063135

`or(char[1], A242322(A000096(n+2)-1))`
-/

namespace A242318.P12533614968074063135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A242322 (A000096 (n + 2) - 1).toNat)

end

end A242318.P12533614968074063135

/-! ## A242318.P8512935832742700655

`A242322(A034856(n+2))%A002485(n+4)`
-/

namespace A242318.P8512935832742700655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242322 (A034856 (n + 2)).toNat) (A002485 (n + 4))

end

end A242318.P8512935832742700655

/-! ## A242318.P3007884674914517295

`A007318(C(n, 2))*A242322(A000096(n+2)-1)`
-/

namespace A242318.P3007884674914517295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A242322 (A000096 (n + 2) - 1).toNat

end

end A242318.P3007884674914517295

/-!
# A242319: Number of length n+4+2 0..4 arrays with every value 0..4 appearing at least once in every consecutive 4+3 elements, and new values 0..4 introduced in order.

The programs for A242319, there is no canonical definition to state claims against.
-/

/-! ## A242319.P2906124944489932318

`A242322(∑[n+4]+3)`
-/

namespace A242319.P2906124944489932318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A242319.P2906124944489932318

/-! ## A242319.P8103234142312399587

`lcm(2, A242322(A141214(n+1)))`
-/

namespace A242319.P8103234142312399587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A242322 (A141214 (n + 1)).toNat)

end

end A242319.P8103234142312399587

/-! ## A242319.P3634143522919418297

`A057427(n+1)*A242322(A141214(n+1))`
-/

namespace A242319.P3634143522919418297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A242322 (A141214 (n + 1)).toNat

end

end A242319.P3634143522919418297

/-! ## A242319.P1254956134672578896

`A242322(A141214(n+1))+A000035(2*n)`
-/

namespace A242319.P1254956134672578896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (A141214 (n + 1)).toNat + A000035 (2 * n)

end

end A242319.P1254956134672578896

/-! ## A242319.P8080130741812089921

`A242322(A141214(n+1))%A242320(n+1)`
-/

namespace A242319.P8080130741812089921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242322 (A141214 (n + 1)).toNat) (A242320 (n + 1))

end

end A242319.P8080130741812089921

/-!
# A242320: Number of length n+5+2 0..5 arrays with every value 0..5 appearing at least once in every consecutive 5+3 elements, and new values 0..5 introduced in order.

The programs for A242320, there is no canonical definition to state claims against.
-/

/-! ## A242320.P4670745095175171396

`A242322(∑[n+5]+6)`
-/

namespace A242320.P4670745095175171396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A242320.P4670745095175171396

/-! ## A242320.P16140811720295543593

`A242322(A000096(n+4)-3)+char[42]`
-/

namespace A242320.P16140811720295543593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (A000096 (n + 4) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A242320.P16140811720295543593

/-! ## A242320.P5429731060435616617

`A007318(C(n, 2))*A242322(A000096(n+4)-3)`
-/

namespace A242320.P5429731060435616617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A242322 (A000096 (n + 4) - 3).toNat

end

end A242320.P5429731060435616617

/-! ## A242320.P5249343663221363007

`A242322(A000096(n+4)-3)%Δ[A000108(n+6)]`
-/

namespace A242320.P5249343663221363007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242322 (A000096 (n + 4) - 3).toNat) (f1 (n + 1) - f1 n)

end

end A242320.P5249343663221363007

/-! ## A242320.P9779035323786022523

`lcm(A014963(4*n+2), A242322(A000096(n+4)-3))`
-/

namespace A242320.P9779035323786022523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (4 * n + 2)) (A242322 (A000096 (n + 4) - 3).toNat)

end

end A242320.P9779035323786022523

/-!
# A242321: Number of length n+6+2 0..6 arrays with every value 0..6 appearing at least once in every consecutive 6+3 elements, and new values 0..6 introduced in order.

The programs for A242321, there is no canonical definition to state claims against.
-/

/-! ## A242321.P11437576603817139742

`A242322(A052905(n+3))`
-/

namespace A242321.P11437576603817139742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (A052905 (n + 3)).toNat

end

end A242321.P11437576603817139742

/-! ## A242321.P11730698194781779148

`A242322(eq[5, A193592(n)])`
-/

namespace A242321.P11730698194781779148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242321.P11730698194781779148

/-! ## A242321.P3638859864302044905

`A242322(A046691(n+4)-1)`
-/

namespace A242321.P3638859864302044905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (A046691 (n + 4) - 1).toNat

end

end A242321.P3638859864302044905

/-! ## A242321.P5185175271660065626

`A242322(A000096(n+5)-4)`
-/

namespace A242321.P5185175271660065626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (A000096 (n + 5) - 4).toNat

end

end A242321.P5185175271660065626

/-! ## A242321.P11171696289494734321

`A242322(A253145(n+5)-5)`
-/

namespace A242321.P11171696289494734321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242322 (A253145 (n + 5) - 5).toNat

end

end A242321.P11171696289494734321

/-!
# A242324: Indices of primes in the tribonacci-like sequence A214827.

The programs for A242324, there is no canonical definition to state claims against.
-/

/-! ## A242324.P6328489787542807006

`lt[A100852(A336876(n+1)), A001844(n)]`
-/

namespace A242324.P6328489787542807006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 (A336876 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242324.P6328489787542807006

/-! ## A242324.P3398056201547290533

`lt[A100852(A336876(n+1)), A253088(n)]`
-/

namespace A242324.P3398056201547290533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 (A336876 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242324.P3398056201547290533

/-!
# A242325: Prime terms in the tribonacci-like sequence A214827.

The programs for A242325, there is no canonical definition to state claims against.
-/

/-! ## A242325.P11100399670484799232

`A214827(A242324(n+1))`
-/

namespace A242325.P11100399670484799232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 (A242324 (n + 1)).toNat

end

end A242325.P11100399670484799232

/-! ## A242325.P7539453781529615941

`p?[a(n-gcd(2, n))+a(n-3)]` with `a(0)=-1, a(1)=4, a(2)=1`
-/

namespace A242325.P7539453781529615941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 4, 1] fun n f1 =>
  f1 (n - Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242325.P7539453781529615941

/-! ## A242325.P7914757852320668344

`p?[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A242325.P7914757852320668344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242325.P7914757852320668344

/-! ## A242325.P2675839038319829989

`p?[A214827(n)]`
-/

namespace A242325.P2675839038319829989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242325.P2675839038319829989

/-! ## A242325.P3746957461706016283

`p?[Δ[Δ[A276658(n+2)]]]`
-/

namespace A242325.P3746957461706016283
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242325.P3746957461706016283

/-!
# A242326: Primes p for which p + 2, p^3 + 2 and p^5 + 2 are prime.

The programs for A242326, there is no canonical definition to state claims against.
-/

/-! ## A242326.P11518617230354180816

`∩[A240110(n+1), A261536(n+1)]`
-/

namespace A242326.P11518617230354180816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242326.P11518617230354180816

/-!
# A242328: a(n) = 5^n + 2.

The programs for A242328, the canonical program `A242328.P4220867818708811592` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242328 has offset 0).

The definition of A242328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+2` (program `A242328.P4220867818708811592`, by `A242328.P4220867818708811592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242328.P4220867818708811592

`5^n+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A242328

/-- `5^n+2` -/
def P4220867818708811592.Spec : Prop :=
  ∀ n, (P4220867818708811592.a n : ℤ) = A242328 n

theorem P4220867818708811592.correct : P4220867818708811592.Spec := by
  intro n
  simp only [A242328]

end A242328

/-!
# A242329: a(n) = 5^n + 4.

The programs for A242329, the canonical program `A242329.P16916798702912977067` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242329 has offset 0).

The definition of A242329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+4` (program `A242329.P16916798702912977067`, by `A242329.P16916798702912977067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242329.P16916798702912977067

`5^n+4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A242329

/-- `5^n+4` -/
def P16916798702912977067.Spec : Prop :=
  ∀ n, (P16916798702912977067.a n : ℤ) = A242329 n

theorem P16916798702912977067.correct : P16916798702912977067.Spec := by
  intro n
  simp only [A242329]

end A242329

/-!
# A242330: Numbers k such that k^2 + 2 is a semiprime.

The programs for A242330, there is no canonical definition to state claims against.
-/

/-! ## A242330.P15721318965061136526

`floor(sqrt(A360739(n+1)))`
-/

namespace A242330.P15721318965061136526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A360739 (n + 1))

end

end A242330.P15721318965061136526

/-! ## A242330.P15309036352183271615

`eq[2, ∑{e}[n²+2, #]]`
-/

namespace A242330.P15309036352183271615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242330.P15309036352183271615

/-! ## A242330.P5626772490475520188

`eq[2, A001222(n²+2)]`
-/

namespace A242330.P5626772490475520188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242330.P5626772490475520188

/-! ## A242330.P8731442693182060733

`eq[2, A033273(n²+2)]`
-/

namespace A242330.P8731442693182060733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242330.P8731442693182060733

/-! ## A242330.P2599713576397146203

`eq[4, A077462(n²+2)]`
-/

namespace A242330.P2599713576397146203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242330.P2599713576397146203

/-! ## A242330.P5313335711118065805

`eq[4, A001222(or(2, n²))²]`
-/

namespace A242330.P5313335711118065805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 2 (n ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242330.P5313335711118065805

/-! ## A242330.P3893295865684459466

`eq[4, A001222(xor(2, n²))²]`
-/

namespace A242330.P3893295865684459466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor 2 (n ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242330.P3893295865684459466

/-! ## A242330.P4195750978689315155

`eq[2, A001222(ceil(n/acot(n))+1)!]`
-/

namespace A242330.P4195750978689315155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242330.P4195750978689315155

/-! ## A242330.P13925750572230922382

`eq[2, A001222(n*(n+2)+3)]+1`
-/

namespace A242330.P13925750572230922382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n + 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242330.P13925750572230922382

/-! ## A242330.P10388881162688963727

`eq[0, 2-A001222(∑[2*n]-(n-2))]`
-/

namespace A242330.P10388881162688963727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242330.P10388881162688963727

/-!
# A242331: Numbers k such that k^2 + 3 is a semiprime.

The programs for A242331, there is no canonical definition to state claims against.
-/

/-! ## A242331.P4491385900940146108

`sqrt(A360740(n+1)-3)`
-/

namespace A242331.P4491385900940146108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360740 (n + 1) - 3 : ℝ)

end

end A242331.P4491385900940146108

/-! ## A242331.P9999075837650350127

`eq[2, ∑{e}[n²+3, #]]`
-/

namespace A242331.P9999075837650350127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242331.P9999075837650350127

/-! ## A242331.P2528368107125166040

`lt[abs(∑{e}[n²+3, #]²-3), 2]`
-/

namespace A242331.P2528368107125166040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2 : ℕ) : ℤ) - 3|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A242331.P2528368107125166040

/-! ## A242331.P3526912983144206708

`eq[2, A001222(n²+3)]`
-/

namespace A242331.P3526912983144206708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242331.P3526912983144206708

/-! ## A242331.P17056453223654109237

`eq[2, round(A000005(n²+3)/2)]`
-/

namespace A242331.P17056453223654109237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (n ^ 2 + 3) : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242331.P17056453223654109237

/-! ## A242331.P694785191900794030

`eq[2, A001222(n*(n+2)+4)]+1`
-/

namespace A242331.P694785191900794030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n + 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242331.P694785191900794030

/-! ## A242331.P7823208007805608785

`eq[4, A001222(A117950(n))²]`
-/

namespace A242331.P7823208007805608785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117950 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242331.P7823208007805608785

/-! ## A242331.P2648149146468536058

`eq[2, A352792(A000005(n²+3))]`
-/

namespace A242331.P2648149146468536058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A000005 (n ^ 2 + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242331.P2648149146468536058

/-! ## A242331.P11367393436263053213

`eq[1, A000045(A000005(n²+3)-2)]`
-/

namespace A242331.P11367393436263053213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000005 (n ^ 2 + 3) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242331.P11367393436263053213

/-! ## A242331.P16159179783658831799

`eq[A001222(A117950(n)), A133265(n)]`
-/

namespace A242331.P16159179783658831799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242331.P16159179783658831799

/-!
# A242332: Numbers k such that k^2 + 4 is a semiprime.

The programs for A242332, there is no canonical definition to state claims against.
-/

/-! ## A242332.P11985666330016494874

`sqrt(A360741(n+1)-4)`
-/

namespace A242332.P11985666330016494874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360741 (n + 1) - 4 : ℝ)

end

end A242332.P11985666330016494874

/-! ## A242332.P9875879798439379190

`eq[2, ∑{e}[n²+4, #]]`
-/

namespace A242332.P9875879798439379190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242332.P9875879798439379190

/-! ## A242332.P4176373884990228847

`eq[2, A001222(n²+4)]`
-/

namespace A242332.P4176373884990228847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242332.P4176373884990228847

/-! ## A242332.P3555144488912043997

`eq[4, A001222(A087475(n))²]`
-/

namespace A242332.P3555144488912043997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087475 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242332.P3555144488912043997

/-! ## A242332.P11578194653862091847

`lt[A277890(A001222(n²+4)+1), 1]`
-/

namespace A242332.P11578194653862091847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277890 (A001222 (n ^ 2 + 4) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A242332.P11578194653862091847

/-! ## A242332.P16400983757968319798

`eq[2, A002377(A001222((n+1)*(n-1)+5))]`
-/

namespace A242332.P16400983757968319798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A001222 ((n + 1 : ℤ) * ((n : ℤ) - 1) + 5).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242332.P16400983757968319798

/-! ## A242332.P244061470087649445

`eq[2, A049559(A001222((n+1)*(n-1)+5)+1)]`
-/

namespace A242332.P244061470087649445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A001222 ((n + 1 : ℤ) * ((n : ℤ) - 1) + 5).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242332.P244061470087649445

/-! ## A242332.P9136522936914979976

`eq[A001222(A261327(n)), A010673(n)]`
-/

namespace A242332.P9136522936914979976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A261327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242332.P9136522936914979976

/-! ## A242332.P8186059605424455900

`eq[A001222(A010000(n)+2), A036453(n+1)]`
-/

namespace A242332.P8186059605424455900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A010000 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242332.P8186059605424455900

/-!
# A242333: Numbers k such that k^2 + 5 is a semiprime.

The programs for A242333, there is no canonical definition to state claims against.
-/

/-! ## A242333.P8946522477759018027

`sqrt(A361696(n+1)-5)`
-/

namespace A242333.P8946522477759018027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361696 (n + 1) - 5 : ℝ)

end

end A242333.P8946522477759018027

/-! ## A242333.P6862853356856457521

`eq[2, ∑{e}[n²+5, #]]`
-/

namespace A242333.P6862853356856457521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242333.P6862853356856457521

/-! ## A242333.P12694861624448957511

`eq[2, A001222(n²+5)]`
-/

namespace A242333.P12694861624448957511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242333.P12694861624448957511

/-! ## A242333.P16652085598944910159

`eq[2, A033273(n²+5)]`
-/

namespace A242333.P16652085598944910159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n ^ 2 + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242333.P16652085598944910159

/-! ## A242333.P2559554805964027968

`eq[2, A001222(n*(n+2)+6)]+1`
-/

namespace A242333.P2559554805964027968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n + 2) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242333.P2559554805964027968

/-! ## A242333.P10293458421669061658

`eq[3, A001222(abs(n-lcm(n, n+1))+5)+1]`
-/

namespace A242333.P10293458421669061658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|(n : ℤ) - (Nat.lcm n (n + 1) : ℤ)| + 5).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242333.P10293458421669061658

/-! ## A242333.P15098063345414181024

`eq[3, A329385(A117951(n))]`
-/

namespace A242333.P15098063345414181024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329385 (A117951 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242333.P15098063345414181024

/-! ## A242333.P7690153133150511364

`eq[2, A177025(A000005(n²+5)²)]`
-/

namespace A242333.P7690153133150511364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (A000005 (n ^ 2 + 5) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242333.P7690153133150511364

/-! ## A242333.P2586444629569016835

`eq[1, A000045(A000005(n²+5)-2)]`
-/

namespace A242333.P2586444629569016835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000005 (n ^ 2 + 5) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242333.P2586444629569016835

/-! ## A242333.P11957876284539266665

`eq[A001222(A117951(n)), A020639(2*(n+1))]`
-/

namespace A242333.P11957876284539266665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242333.P11957876284539266665

/-!
# A242334: Primes with property that when their binary representation is reversed we obtain a Fibonacci number.

The programs for A242334, there is no canonical definition to state claims against.
-/

/-! ## A242334.P1451817412156666402

`p?[A060865(n+1)*A143250(n+1)]`
-/

namespace A242334.P1451817412156666402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 1) * A143250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242334.P1451817412156666402

/-! ## A242334.P767378358118710190

`p?[lcm(A081320(n+1), A143250(n+1))]`
-/

namespace A242334.P767378358118710190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081320 (n + 1)) (A143250 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242334.P767378358118710190

/-! ## A242334.P9501189961139311872

`p?[A056539(A000045(n))]`
-/

namespace A242334.P9501189961139311872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242334.P9501189961139311872

/-! ## A242334.P6860474179779058962

`p?[A056539(A079977(n))]`
-/

namespace A242334.P6860474179779058962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A079977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242334.P6860474179779058962

/-!
# A242337: Numbers k such that k*6^k - 1 is semiprime.

The programs for A242337, there is no canonical definition to state claims against.
-/

/-! ## A242337.P18222537177693023362

`lt[A248975(A328625(n)), A159819(n+4)]`
-/

namespace A242337.P18222537177693023362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248975 (A328625 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159819 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242337.P18222537177693023362

/-!
# A242340: Numbers k such that k*9^k-1 is semiprime.

The programs for A242340, there is no canonical definition to state claims against.
-/

/-! ## A242340.P3503219664605129648

`eq[A284317(n)+A284314(n+1), A280454(n)]`
-/

namespace A242340.P3503219664605129648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284317 n + A284314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242340.P3503219664605129648

/-!
# A242342: a(n) = binomial(n, smallest non-divisor of n).

The programs for A242342, there is no canonical definition to state claims against.
-/

/-! ## A242342.P11843115018681293563

`C(n+1, A007978(n+1))`
-/

namespace A242342.P11843115018681293563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A007978 (n + 1)).toNat

end

end A242342.P11843115018681293563

/-! ## A242342.P855815593435928500

`C(n+1, A055874(n+1)+1)`
-/

namespace A242342.P855815593435928500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A055874 (n + 1) + 1).toNat

end

end A242342.P855815593435928500

/-! ## A242342.P6858389838763265714

`C(n+1, A346563(n+1)-(n+1))`
-/

namespace A242342.P6858389838763265714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A346563 (n + 1) - (n + 1 : ℤ)).toNat

end

end A242342.P6858389838763265714

/-! ## A242342.P17786368420591120269

`C(n+1, (n+1)/A350509(n+1)+1)`
-/

namespace A242342.P17786368420591120269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350509 (n + 1) : ℚ) + 1)).toNat

end

end A242342.P17786368420591120269

/-! ## A242342.P1031526835536409163

`C(n+1, A071222(n)+1-A061853(n+1))`
-/

namespace A242342.P1031526835536409163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A071222 n + (1 - A061853 (n + 1))).toNat

end

end A242342.P1031526835536409163

/-! ## A242342.P12509250146872924328

`C(n+1, A337686((n+1)²/∏{p}[n+1, #]))`
-/

namespace A242342.P12509250146872924328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A337686 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A242342.P12509250146872924328

/-! ## A242342.P7738660578660565278

`A199011(A007978(n+1)+A000096(n))`
-/

namespace A242342.P7738660578660565278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (A007978 (n + 1) + A000096 n).toNat

end

end A242342.P7738660578660565278

/-! ## A242342.P11582617554753985156

`A210381(∑[n+2]-A055874(n+1))`
-/

namespace A242342.P11582617554753985156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210381 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A055874 (n + 1)).toNat

end

end A242342.P11582617554753985156

/-! ## A242342.P16823475148238968401

`A097805(A346563(n+1)+∑[n+1]+2)`
-/

namespace A242342.P16823475148238968401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A346563 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A242342.P16823475148238968401

/-! ## A242342.P5729780761934623979

`A097805(Δ[A008778(n)]-A055874(n+1))`
-/

namespace A242342.P5729780761934623979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (f1 (n + 1) - f1 n - A055874 (n + 1)).toNat

end

end A242342.P5729780761934623979

/-!
# A242343: Triangular numbers T such that (T+2) is semiprime.

The programs for A242343, the canonical program `A242343.P2225175868314659616` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242343 has offset 1).

The definition of A242343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242343.P7894126564246081743

`C(eq[2, A001222(C(n, 2)+2)], 2)`
-/

namespace A242343.P7894126564246081743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose n 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A242343.P7894126564246081743

namespace A242343

/-- `C(eq[2, A001222(C(n, 2)+2)], 2)` -/
def P7894126564246081743.Spec : Prop :=
  ∀ n, (P7894126564246081743.a n : ℤ) = A242343 (n + 1)

end A242343

/-! ## A242343.P10384225305214078510

`C(eq[2, A033273(C(n, 2)+2)], 2)`
-/

namespace A242343.P10384225305214078510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (Nat.choose n 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A242343.P10384225305214078510

namespace A242343

/-- `C(eq[2, A033273(C(n, 2)+2)], 2)` -/
def P10384225305214078510.Spec : Prop :=
  ∀ n, (P10384225305214078510.a n : ℤ) = A242343 (n + 1)

end A242343

/-! ## A242343.P12835131289976299270

`C(eq[2, A001222(A238531(n))], 2)`
-/

namespace A242343.P12835131289976299270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238531 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A242343.P12835131289976299270

namespace A242343

/-- `C(eq[2, A001222(A238531(n))], 2)` -/
def P12835131289976299270.Spec : Prop :=
  ∀ n, (P12835131289976299270.a n : ℤ) = A242343 (n + 1)

end A242343

/-! ## A242343.P450659686256035434

`C(eq[2, A001222(A133263(n))]+1, 2)`
-/

namespace A242343.P450659686256035434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A242343.P450659686256035434

namespace A242343

/-- `C(eq[2, A001222(A133263(n))]+1, 2)` -/
def P450659686256035434.Spec : Prop :=
  ∀ n, (P450659686256035434.a n : ℤ) = A242343 (n + 1)

end A242343

/-! ## A242343.P18258033335211773603

`A161680(eq[2, A001222(C(n, 2)+2)])`
-/

namespace A242343.P18258033335211773603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose n 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P18258033335211773603

namespace A242343

/-- `A161680(eq[2, A001222(C(n, 2)+2)])` -/
def P18258033335211773603.Spec : Prop :=
  ∀ n, P18258033335211773603.a n = A242343 (n + 1)

end A242343

/-! ## A242343.P2220258802661197444

`A000217(eq[2, A001222(A133263(n))])`
-/

namespace A242343.P2220258802661197444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P2220258802661197444

namespace A242343

/-- `A000217(eq[2, A001222(A133263(n))])` -/
def P2220258802661197444.Spec : Prop :=
  ∀ n, P2220258802661197444.a n = A242343 (n + 1)

end A242343

/-! ## A242343.P16300818951345375168

`C(eq[2, A319685(C(n, 2)+2)], 2)`
-/

namespace A242343.P16300818951345375168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319685 (Nat.choose n 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A242343.P16300818951345375168

namespace A242343

/-- `C(eq[2, A319685(C(n, 2)+2)], 2)` -/
def P16300818951345375168.Spec : Prop :=
  ∀ n, (P16300818951345375168.a n : ℤ) = A242343 (n + 1)

end A242343

/-! ## A242343.P5131791437766927476

`A000217(eq[2, A051709(A133263(n))])`
-/

namespace A242343.P5131791437766927476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P5131791437766927476

namespace A242343

/-- `A000217(eq[2, A051709(A133263(n))])` -/
def P5131791437766927476.Spec : Prop :=
  ∀ n, P5131791437766927476.a n = A242343 (n + 1)

end A242343

/-! ## A242343.P2225175868314659616

`A000217(eq[2, A300252(A133263(n))])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A242343

/-- `A000217(eq[2, A300252(A133263(n))])` -/
def P2225175868314659616.Spec : Prop :=
  ∀ n, P2225175868314659616.a n = A242343 (n + 1)

theorem P2225175868314659616.correct : P2225175868314659616.Spec := by
  intro n
  simp only [A242343, Nat.add_sub_cancel]

end A242343

/-! ## A242343.P12362412836432227430

`A000217(eq[2, A305796(A133263(n))])`
-/

namespace A242343.P12362412836432227430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305796 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P12362412836432227430

namespace A242343

/-- `A000217(eq[2, A305796(A133263(n))])` -/
def P12362412836432227430.Spec : Prop :=
  ∀ n, P12362412836432227430.a n = A242343 (n + 1)

end A242343

/-!
# A242344: Triangular numbers T such that T-2 is semiprime.

The programs for A242344, the canonical program `A242344.P15652734479812600202` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242344 has offset 1).

The definition of A242344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242344.P15652734479812600202

`C(eq[2, ∑{e}[∑[n-2]+1, #]]-1, 2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A242344

/-- `C(eq[2, ∑{e}[∑[n-2]+1, #]]-1, 2)` -/
def P15652734479812600202.Spec : Prop :=
  ∀ n, (P15652734479812600202.a n : ℤ) = A242344 (n + 1)

theorem P15652734479812600202.correct : P15652734479812600202.Spec := by
  intro n
  simp only [A242344, Nat.add_sub_cancel]

end A242344

/-! ## A242344.P13196644440003732987

`C(eq[2, A001222(A027379(n)+1)]+3, 2)`
-/

namespace A242344.P13196644440003732987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027379 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3) 2

end

end A242344.P13196644440003732987

namespace A242344

/-- `C(eq[2, A001222(A027379(n)+1)]+3, 2)` -/
def P13196644440003732987.Spec : Prop :=
  ∀ n, (P13196644440003732987.a n : ℤ) = A242344 (n + 1)

end A242344

/-! ## A242344.P4847896191183982499

`record[A127773(A001358(n+1)+2)]`
-/

namespace A242344.P4847896191183982499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127773 (A001358 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242344.P4847896191183982499

namespace A242344

/-- `record[A127773(A001358(n+1)+2)]` -/
def P4847896191183982499.Spec : Prop :=
  ∀ n, P4847896191183982499.a n = A242344 (n + 1)

end A242344

/-! ## A242344.P15525769420105895409

`eq[A029600(n), A105700(A289207(n))]`
-/

namespace A242344.P15525769420105895409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242344.P15525769420105895409

namespace A242344

/-- `eq[A029600(n), A105700(A289207(n))]` -/
def P15525769420105895409.Spec : Prop :=
  ∀ n, (P15525769420105895409.a n : ℤ) = A242344 (n + 1)

end A242344

/-! ## A242344.P5151344220311491124

`eq[A037126(n+1), A105700(A289207(n))]`
-/

namespace A242344.P5151344220311491124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242344.P5151344220311491124

namespace A242344

/-- `eq[A037126(n+1), A105700(A289207(n))]` -/
def P5151344220311491124.Spec : Prop :=
  ∀ n, (P5151344220311491124.a n : ℤ) = A242344 (n + 1)

end A242344

/-! ## A242344.P1185340160731886009

`eq[A105700(A289207(n)), A210042(n+1)]`
-/

namespace A242344.P1185340160731886009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A289207 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242344.P1185340160731886009

namespace A242344

/-- `eq[A105700(A289207(n)), A210042(n+1)]` -/
def P1185340160731886009.Spec : Prop :=
  ∀ n, (P1185340160731886009.a n : ℤ) = A242344 (n + 1)

end A242344

/-!
# A242347: Number of decimal digits of A008559.

The programs for A242347, there is no canonical definition to state claims against.
-/

/-! ## A242347.P5510860788254764125

`A138194(A270890(n+4)+A080924(2*n))`
-/

namespace A242347.P5510860788254764125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A270890 (n + 4) + A080924 (2 * n)).toNat

end

end A242347.P5510860788254764125

/-!
# A242348: a(n) = A242251(n)/n.

The programs for A242348, there is no canonical definition to state claims against.
-/

/-! ## A242348.P9628078448472220236

`A242251(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242348.P9628078448472220236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242251 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A242348.P9628078448472220236

/-! ## A242348.P14990753243512708525

`(3*A242251(n+1))%A016789(n)`
-/

namespace A242348.P14990753243512708525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A242251 (n + 1)) (A016789 n)

end

end A242348.P14990753243512708525

/-! ## A242348.P5500592901570943277

`A008486(A242251(n+1))%A016789(n)`
-/

namespace A242348.P5500592901570943277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A242251 (n + 1)).toNat) (A016789 n)

end

end A242348.P5500592901570943277

/-! ## A242348.P15958968029146339731

`A022144(A242251(n+1))%A004771(n)`
-/

namespace A242348.P15958968029146339731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A242251 (n + 1)).toNat) (A004771 n)

end

end A242348.P15958968029146339731

/-!
# A242349: Largest power of 2 <= n^2.

The programs for A242349, there is no canonical definition to state claims against.
-/

/-! ## A242349.P14349941154427385831

`2^floor(log2((n+1)²))`
-/

namespace A242349.P14349941154427385831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 ((n + 1) ^ 2)

end

end A242349.P14349941154427385831

/-! ## A242349.P9180241768548862341

`and(-a(n-1), (n+1)²)` with `a(0)=1`
-/

namespace A242349.P9180241768548862341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-a (n - 1)) ((n + 1) ^ 2 : ℤ)

end

end A242349.P9180241768548862341

/-! ## A242349.P15851553877093955164

`ceil(2^-ceil(log2(acot((n+1)²))))`
-/

namespace A242349.P15851553877093955164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (-⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))⌉ : ℤ)⌉

end

end A242349.P15851553877093955164

/-! ## A242349.P6746949893612126418

`and(7*a(n-1), (n+1)²)` with `a(0)=1`
-/

namespace A242349.P6746949893612126418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (7 * a (n - 1)) ((n + 1) ^ 2)

end

end A242349.P6746949893612126418

/-! ## A242349.P16503413170545444836

`and((n+1)², lcm(6, a(n-1)))` with `a(0)=1`
-/

namespace A242349.P16503413170545444836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land ((n + 1) ^ 2) (Nat.lcm 6 (a (n - 1)))

end

end A242349.P16503413170545444836

/-! ## A242349.P6299856944158327561

`ceil(2^round(log2(((n+1)*sin(1))²)))`
-/

namespace A242349.P6299856944158327561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.logb 2 (((n + 1 : ℝ) * Real.sin (1 : ℝ)) ^ 2)) : ℤ)⌉

end

end A242349.P6299856944158327561

/-! ## A242349.P14139825463531887701

`and(2-a(n-1), (n+1)²)` with `a(0)=1, a(1)=4`
-/

namespace A242349.P14139825463531887701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.land (2 - a (n - 1)) ((n + 1) ^ 2 : ℤ)

end

end A242349.P14139825463531887701

/-! ## A242349.P15966958796868094734

`(n+1)²-(n+1)²%a(n-1)` with `a(0)=1`
-/

namespace A242349.P15966958796868094734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) - Int.tmod ((n + 1) ^ 2 : ℤ) (a (n - 1))

end

end A242349.P15966958796868094734

/-! ## A242349.P11064313711688610716

`floor((n+1)²/a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A242349.P11064313711688610716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋ * a (n - 1)

end

end A242349.P11064313711688610716

/-! ## A242349.P5749439512286707194

`floor((n+1)*(n+1)/a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A242349.P5749439512286707194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) / (a (n - 1) : ℚ))⌋ * a (n - 1)

end

end A242349.P5749439512286707194

/-!
# A242350: Multiply a(n-1) by 2 and drop all 0's.

The programs for A242350, there is no canonical definition to state claims against.
-/

/-! ## A242350.P11288707832686092161

`A004719(2*a(n-1))` with `a(0)=1`
-/

namespace A242350.P11288707832686092161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004719 (2 * a (n - 1)).toNat

end

end A242350.P11288707832686092161

/-!
# A242351: Number T(n,k) of isoscent sequences of length n with exactly k ascents; triangle T(n,k), n>=0, 0<=k<=n+3-ceiling(2*sqrt(n+2)), read by rows.

The programs for A242351, there is no canonical definition to state claims against.
-/

/-! ## A242351.P19980393880799025

`A124324(n)-A025888(A236628(n+1))`
-/

namespace A242351.P19980393880799025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 n - A025888 (A236628 (n + 1)).toNat

end

end A242351.P19980393880799025

/-! ## A242351.P17803735822628624255

`A380817(A124324(n))%A093047(n+1)`
-/

namespace A242351.P17803735822628624255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380817 (A124324 n).toNat) (A093047 (n + 1))

end

end A242351.P17803735822628624255

/-! ## A242351.P10038463835641422386

`A112493(A091018(n))-A025888(A236628(n+1))`
-/

namespace A242351.P10038463835641422386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A091018 n).toNat - A025888 (A236628 (n + 1)).toNat

end

end A242351.P10038463835641422386

/-!
# A242353: Number T(n,k) of two-colored rooted trees of order n and structure k; triangle T(n,k), n>=1, 1<=k<=A000081(n), read by rows.

The programs for A242353, there is no canonical definition to state claims against.
-/

/-! ## A242353.P15340167668272771783

`A120680(A322619(n+1)+1)`
-/

namespace A242353.P15340167668272771783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120680 (A322619 (n + 1) + 1).toNat

end

end A242353.P15340167668272771783

/-! ## A242353.P2379573709769167346

`A372787(A001519(n)*A005117(n+1))`
-/

namespace A242353.P2379573709769167346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A001519 n * A005117 (n + 1)).toNat

end

end A242353.P2379573709769167346

/-! ## A242353.P10014219602613973181

`A000005(lcm(A032005(n+2), A063834(n)))`
-/

namespace A242353.P10014219602613973181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A032005 (n + 2)) (A063834 n))

end

end A242353.P10014219602613973181

/-! ## A242353.P12035548373134481642

`A000005(A010215(2*n)+A000079(n)²)`
-/

namespace A242353.P12035548373134481642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A010215 (2 * n) + A000079 n ^ 2).toNat

end

end A242353.P12035548373134481642

/-! ## A242353.P17788433187944008147

`A000005(or(A000079(n)², A010215(2*n)))`
-/

namespace A242353.P17788433187944008147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A000079 n ^ 2) (A010215 (2 * n))).toNat

end

end A242353.P17788433187944008147

/-!
# A242354: Number T(n,k) of four-colored rooted trees of order n and structure k; triangle T(n,k), n>=1, 1<=k<=A000081(n), read by rows.

The programs for A242354, there is no canonical definition to state claims against.
-/

/-! ## A242354.P13632769720203946324

`A007426(A085601(n)+A001222(n+1))`
-/

namespace A242354.P13632769720203946324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A085601 n + A001222 (n + 1)).toNat

end

end A242354.P13632769720203946324

/-! ## A242354.P3953069621653425919

`A007426(A007187(n+2)*A049001(n+1))`
-/

namespace A242354.P3953069621653425919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A007187 (n + 2) * A049001 (n + 1)).toNat

end

end A242354.P3953069621653425919

/-! ## A242354.P7295223045743945888

`A076577(A242353(n+1)%A223905(n+4))`
-/

namespace A242354.P7295223045743945888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (Int.tmod (A242353 (n + 1)) (A223905 (n + 4))).toNat

end

end A242354.P7295223045743945888

/-!
# A242355: Sum of squared end-to-end distances of all n-step self-avoiding walks on the 4-d cubic lattice.

The programs for A242355, there is no canonical definition to state claims against.
-/

/-! ## A242355.P18273576112018157768

`8*A323856(n+1)`
-/

namespace A242355.P18273576112018157768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A323856 (n + 1)

end

end A242355.P18273576112018157768

/-! ## A242355.P6437190418759624367

`record[8*A323856(A263274(n))]`
-/

namespace A242355.P6437190418759624367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A323856 (A263274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242355.P6437190418759624367

/-!
# A242356: Triangular numbers T such that both (T+2) and (T-2) are semiprimes.

The programs for A242356, the canonical program `A242356.P3750787784098302169` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242356 has offset 1).

The definition of A242356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242356.P3750787784098302169

`∩[A242343(n+1), A242344(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A242356

/-- `∩[A242343(n+1), A242344(n+1)]` -/
def P3750787784098302169.Spec : Prop :=
  ∀ n, (P3750787784098302169.a n : ℤ) = A242356 (n + 1)

theorem P3750787784098302169.correct : P3750787784098302169.Spec := by
  intro n
  simp only [A242356, Nat.add_sub_cancel]

end A242356

/-! ## A242356.P15773573710067061670

`∩[A105571(n+1), ∑[n]]`
-/

namespace A242356.P15773573710067061670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A242356.P15773573710067061670

namespace A242356

/-- `∩[A105571(n+1), ∑[n]]` -/
def P15773573710067061670.Spec : Prop :=
  ∀ n, (P15773573710067061670.a n : ℤ) = A242356 (n + 1)

end A242356

/-! ## A242356.P11729960076519589347

`∩[∑[n+1], A175648(n+1)+2]`
-/

namespace A242356.P11729960076519589347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A242356.P11729960076519589347

namespace A242356

/-- `∩[∑[n+1], A175648(n+1)+2]` -/
def P11729960076519589347.Spec : Prop :=
  ∀ n, (P11729960076519589347.a n : ℤ) = A242356 (n + 1)

end A242356

/-! ## A242356.P4146383640507070908

`∩[A000217(n), A105571(n+1)]`
-/

namespace A242356.P4146383640507070908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242356.P4146383640507070908

namespace A242356

/-- `∩[A000217(n), A105571(n+1)]` -/
def P4146383640507070908.Spec : Prop :=
  ∀ n, (P4146383640507070908.a n : ℤ) = A242356 (n + 1)

end A242356

/-! ## A242356.P14955506688625584441

`∩[A034856(n+1)+2, A105571(n+1)]`
-/

namespace A242356.P14955506688625584441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242356.P14955506688625584441

namespace A242356

/-- `∩[A034856(n+1)+2, A105571(n+1)]` -/
def P14955506688625584441.Spec : Prop :=
  ∀ n, (P14955506688625584441.a n : ℤ) = A242356 (n + 1)

end A242356

/-! ## A242356.P9506932464125359503

`∩[A242343(n+1), A260256(n+1)]`
-/

namespace A242356.P9506932464125359503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242356.P9506932464125359503

namespace A242356

/-- `∩[A242343(n+1), A260256(n+1)]` -/
def P9506932464125359503.Spec : Prop :=
  ∀ n, (P9506932464125359503.a n : ℤ) = A242356 (n + 1)

end A242356

/-!
# A242357: Crescendo trapezoidal.

The programs for A242357, the canonical program `A242357.P2496803421774203751` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242357 has offset 1).

The definition of A242357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242357.P13676150595988045816

`A307011(lt[0, A307011(n)])`
-/

namespace A242357.P13676150595988045816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A242357.P13676150595988045816

namespace A242357

/-- `A307011(lt[0, A307011(n)])` -/
def P13676150595988045816.Spec : Prop :=
  ∀ n, P13676150595988045816.a n = A242357 (n + 1)

end A242357

/-! ## A242357.P14517912072953257152

`1-A307013(lt[A307013(n), 1])`
-/

namespace A242357.P14517912072953257152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307013 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242357.P14517912072953257152

namespace A242357

/-- `1-A307013(lt[A307013(n), 1])` -/
def P14517912072953257152.Spec : Prop :=
  ∀ n, P14517912072953257152.a n = A242357 (n + 1)

end A242357

/-! ## A242357.P2496803421774203751

`abs(A246575(A193832(n+1)+n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242357

/-- `abs(A246575(A193832(n+1)+n+1))` -/
def P2496803421774203751.Spec : Prop :=
  ∀ n, P2496803421774203751.a n = A242357 (n + 1)

theorem P2496803421774203751.correct : P2496803421774203751.Spec := by
  intro n
  simp only [A242357, Nat.add_sub_cancel]

end A242357

/-! ## A242357.P555213346448258649

`A307011(record[(n+1)%(A307011(n+1)+n+1)])`
-/

namespace A242357.P555213346448258649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A307011 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242357.P555213346448258649

namespace A242357

/-- `A307011(record[(n+1)%(A307011(n+1)+n+1)])` -/
def P555213346448258649.Spec : Prop :=
  ∀ n, P555213346448258649.a n = A242357 (n + 1)

end A242357

/-! ## A242357.P14782144273774700959

`lcm(A033999(n), A246575(A193832(n+1)+n+1))`
-/

namespace A242357.P14782144273774700959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A246575 (A193832 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A242357.P14782144273774700959

namespace A242357

/-- `lcm(A033999(n), A246575(A193832(n+1)+n+1))` -/
def P14782144273774700959.Spec : Prop :=
  ∀ n, (P14782144273774700959.a n : ℤ) = A242357 (n + 1)

end A242357

/-! ## A242357.P7047949846847237761

`A003056(A109439(n+1))+A000007(A140486(n+1))`
-/

namespace A242357.P7047949846847237761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A109439 (n + 1)).toNat + A000007 (A140486 (n + 1)).toNat

end

end A242357.P7047949846847237761

namespace A242357

/-- `A003056(A109439(n+1))+A000007(A140486(n+1))` -/
def P7047949846847237761.Spec : Prop :=
  ∀ n, P7047949846847237761.a n = A242357 (n + 1)

end A242357

/-! ## A242357.P9719588888859674070

`A003056(A109439(n+1))*A014963(A350845(n+1))`
-/

namespace A242357.P9719588888859674070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A109439 (n + 1)).toNat * A014963 (A350845 (n + 1)).toNat

end

end A242357.P9719588888859674070

namespace A242357

/-- `A003056(A109439(n+1))*A014963(A350845(n+1))` -/
def P9719588888859674070.Spec : Prop :=
  ∀ n, P9719588888859674070.a n = A242357 (n + 1)

end A242357

/-!
# A242358: Number of inequivalent (mod D_4) ways five checkers can be placed on an n X n board.

The programs for A242358, there is no canonical definition to state claims against.
-/

/-! ## A242358.P10927173165138886898

`A054252(∑[(n+3)²]+n+3)`
-/

namespace A242358.P10927173165138886898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A242358.P10927173165138886898

/-!
# A242359: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A242359, there is no canonical definition to state claims against.
-/

/-! ## A242359.P604015165745953514

`A036234(A194029(n+1))*A102419(A139582(n))`
-/

namespace A242359.P604015165745953514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A194029 (n + 1)).toNat * A102419 (A139582 n).toNat

end

end A242359.P604015165745953514

/-! ## A242359.P4873304716846244080

`A144193(A277906(n+1))+A036234(A194029(n+1))`
-/

namespace A242359.P4873304716846244080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144193 (A277906 (n + 1)).toNat + A036234 (A194029 (n + 1)).toNat

end

end A242359.P4873304716846244080

/-! ## A242359.P10400117797527188317

`A036234(A194029(n+1))%A066167(3*n+1)`
-/

namespace A242359.P10400117797527188317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (A194029 (n + 1)).toNat) (A066167 (3 * n + 1))

end

end A242359.P10400117797527188317

/-! ## A242359.P18042324401862449305

`A095691(3^A194029(n+1))`
-/

namespace A242359.P18042324401862449305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A194029 (n + 1) : ℤ))).toNat

end

end A242359.P18042324401862449305

/-! ## A242359.P865362667435139536

`A097944(3^A194029(n+1))`
-/

namespace A242359.P865362667435139536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A194029 (n + 1) : ℤ))).toNat

end

end A242359.P865362667435139536

/-!
# A242360: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

The programs for A242360, there is no canonical definition to state claims against.
-/

/-! ## A242360.P14900275757352519480

`and(A050267(A256429(n)), A186971(n+1))`
-/

namespace A242360.P14900275757352519480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050267 (A256429 n).toNat) (A186971 (n + 1))

end

end A242360.P14900275757352519480

/-!
# A242361: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A242361, there is no canonical definition to state claims against.
-/

/-! ## A242361.P15046861181654080137

`A333224(gcd(A057089(n+1), A100650(n)))`
-/

namespace A242361.P15046861181654080137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.gcd (A057089 (n + 1)) (A100650 n))

end

end A242361.P15046861181654080137

/-!
# A242362: Plane partitions into odd parts.

The programs for A242362, there is no canonical definition to state claims against.
-/

/-! ## A242362.P2376254778520382562

`A135662(A107231(n)+A000288(n))`
-/

namespace A242362.P2376254778520382562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A107231 n + A000288 n).toNat

end

end A242362.P2376254778520382562

/-! ## A242362.P12701086086671982446

`A000196(A008619(n)*A052534(n))`
-/

namespace A242362.P12701086086671982446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008619 n * A052534 n).toNat

end

end A242362.P12701086086671982446

/-! ## A242362.P18359891878580801593

`A000196(A052534(n)*A075355(n+1))`
-/

namespace A242362.P18359891878580801593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A052534 n * A075355 (n + 1)).toNat

end

end A242362.P18359891878580801593

/-! ## A242362.P1979981888221065152

`A089657(A018063(n))`
-/

namespace A242362.P1979981888221065152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A018063 n).toNat

end

end A242362.P1979981888221065152

/-! ## A242362.P17738869009046041364

`A099257(A147622(n))`
-/

namespace A242362.P17738869009046041364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099257 (A147622 n).toNat

end

end A242362.P17738869009046041364

/-!
# A242363: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

The programs for A242363, there is no canonical definition to state claims against.
-/

/-! ## A242363.P16113788690490626612

`A242308(A000045(A072649(n+1))+n+1)`
-/

namespace A242363.P16113788690490626612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242308 (A000045 (A072649 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A242363.P16113788690490626612

/-! ## A242363.P15593248740667322765

`A242308(A183544(n+1)+1)`
-/

namespace A242363.P15593248740667322765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242308 (A183544 (n + 1) + 1).toNat

end

end A242363.P15593248740667322765

/-! ## A242363.P3566984111970049751

`A242308(A183544(n+2))`
-/

namespace A242363.P3566984111970049751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242308 (A183544 (n + 2)).toNat

end

end A242363.P3566984111970049751

/-! ## A242363.P14467740358328429713

`A237271(A007530(n+1)-A053632(2*n))`
-/

namespace A242363.P14467740358328429713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A007530 (n + 1) - A053632 (2 * n)).toNat

end

end A242363.P14467740358328429713

/-!
# A242365: Irregular triangular array of the positive integers ordered as in Comments.

The programs for A242365, there is no canonical definition to state claims against.
-/

/-! ## A242365.P502430788523895299

`gcd(A028982(n+1), A230884(n))`
-/

namespace A242365.P502430788523895299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028982 (n + 1)) (A230884 n)

end

end A242365.P502430788523895299

/-! ## A242365.P6421917219193235590

`gcd(∪[2*(n+1)², (n+1)²], A180577(A007283(n+3)))`
-/

namespace A242365.P6421917219193235590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) (A180577 (A007283 (n + 3)).toNat)

end

end A242365.P6421917219193235590

/-! ## A242365.P974491591193386178

`A227351(n)+A083093(A108308(n))`
-/

namespace A242365.P974491591193386178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227351 n + A083093 (A108308 n).toNat

end

end A242365.P974491591193386178

/-! ## A242365.P13882949094361690711

`A227351(n)+A168046(A026898(n))`
-/

namespace A242365.P13882949094361690711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227351 n + A168046 (A026898 n).toNat

end

end A242365.P13882949094361690711

/-! ## A242365.P13172531291784655267

`A227351(n)+A000035(A230951(n))`
-/

namespace A242365.P13172531291784655267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227351 n + A000035 (A230951 n).toNat

end

end A242365.P13172531291784655267

/-!
# A242366: Primes p such that p1 = ceiling(p/2) + p is prime and p2 = floor(p1/2) + p is prime.

The programs for A242366, there is no canonical definition to state claims against.
-/

/-! ## A242366.P10309905251893337692

`or(2, A329296(A312733(n)))`
-/

namespace A242366.P10309905251893337692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A329296 (A312733 n).toNat)

end

end A242366.P10309905251893337692

/-! ## A242366.P1251527741741812125

`∩[A023709(n+1), A030482(n+1)]`
-/

namespace A242366.P1251527741741812125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242366.P1251527741741812125

/-!
# A242367: Numbers whose parity matches only their least significant decimal digit.

The programs for A242367, there is no canonical definition to state claims against.
-/

/-! ## A242367.P4717385039237027794

`record[A065190(A059717(A065190(n+1)))]`
-/

namespace A242367.P4717385039237027794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A059717 (A065190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242367.P4717385039237027794

/-! ## A242367.P6227014022203087294

`eq[1, A110305(n+1)]+1`
-/

namespace A242367.P6227014022203087294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242367.P6227014022203087294

/-! ## A242367.P16384748178609383275

`A118759(A030141(n+2))`
-/

namespace A242367.P16384748178609383275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A030141 (n + 2)).toNat

end

end A242367.P16384748178609383275

/-! ## A242367.P4546756832407399358

`A137564(A030147(n+2))`
-/

namespace A242367.P4546756832407399358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A030147 (n + 2)).toNat

end

end A242367.P4546756832407399358

/-! ## A242367.P2841023156535590736

`eq[A033930(n), A371383(n)]`
-/

namespace A242367.P2841023156535590736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242367.P2841023156535590736

/-! ## A242367.P14912123934345380897

`lt[A007953(n), 2*A257295(n)]`
-/

namespace A242367.P14912123934345380897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242367.P14912123934345380897

/-!
# A242368: Primes p such that p + digitsum(p) = q^k for some prime q and k > 1 where digitsum(n) = A007953(n).

The programs for A242368, there is no canonical definition to state claims against.
-/

/-! ## A242368.P14014915652740917031

`∪[A307315(n+1), p?[A342773(n+1)]]`
-/

namespace A242368.P14014915652740917031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307315 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242368.P14014915652740917031

/-! ## A242368.P15799127848380796447

`p?[A342773(n+1)]`
-/

namespace A242368.P15799127848380796447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242368.P15799127848380796447

/-! ## A242368.P5124523983833741520

`p?[record[A342773(A052938(n))]]`
-/

namespace A242368.P5124523983833741520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342773 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242368.P5124523983833741520

/-! ## A242368.P7556410820412334318

`p?[record[A342773(A133310(n))]]`
-/

namespace A242368.P7556410820412334318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342773 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242368.P7556410820412334318

/-! ## A242368.P7663627819922812708

`p?[record[A342773(A286547(n))]]`
-/

namespace A242368.P7663627819922812708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342773 (A286547 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242368.P7663627819922812708

/-!
# A242369: a(n) = P(n, 1, -2*n-1, 1-2*n)/(n+1), P the Jacobi polynomial.

The programs for A242369, there is no canonical definition to state claims against.
-/

/-! ## A242369.P17631747684321369505

`A243631(∑[4*n])`
-/

namespace A242369.P17631747684321369505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242369.P17631747684321369505

/-! ## A242369.P5727539027723785248

`A204057(A028310(2*n²))`
-/

namespace A242369.P5727539027723785248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A028310 (2 * n ^ 2)).toNat

end

end A242369.P5727539027723785248

/-! ## A242369.P579051227782782719

`A204057(n²+A028310(n²))`
-/

namespace A242369.P579051227782782719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A242369.P579051227782782719

/-! ## A242369.P2838462604455935588

`A204057(record[2*A000463(n+1)])`
-/

namespace A242369.P2838462604455935588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242369.P2838462604455935588

/-! ## A242369.P4314647283683739564

`A204057(record[A000463(n+1)]+n²)`
-/

namespace A242369.P4314647283683739564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)).toNat

end

end A242369.P4314647283683739564

/-!
# A242371: Modified eccentric connectivity index of the cycle graph with n vertices, C[n].

The programs for A242371, the canonical program `A242371.P3678626598398996588` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242371 has offset 3).

The definition of A242371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242371.P3678626598398996588

`(xor(1, n+5)+n)*(n+3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A242371

/-- `(xor(1, n+5)+n)*(n+3)` -/
def P3678626598398996588.Spec : Prop :=
  ∀ n, (P3678626598398996588.a n : ℤ) = A242371 (n + 3)

theorem P3678626598398996588.correct : P3678626598398996588.Spec := by
  intro n
  simp only [A242371, Nat.add_sub_cancel]

end A242371

/-! ## A242371.P2625278261136315846

`(n+3)*Δ[or(1, (n+2)²)]`
-/

namespace A242371.P2625278261136315846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A242371.P2625278261136315846

namespace A242371

/-- `(n+3)*Δ[or(1, (n+2)²)]` -/
def P2625278261136315846.Spec : Prop :=
  ∀ n, P2625278261136315846.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P4682589499772284951

`2*(n+3)*and(n+3, -2)`
-/

namespace A242371.P4682589499772284951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * Int.land (n + 3 : ℤ) (-2))

end

end A242371.P4682589499772284951

namespace A242371

/-- `2*(n+3)*and(n+3, -2)` -/
def P4682589499772284951.Spec : Prop :=
  ∀ n, P4682589499772284951.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P9761985459798845747

`2*(n+3)*(3-or(1, -n))`
-/

namespace A242371.P9761985459798845747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * (3 - Int.lor 1 (-(n : ℤ))))

end

end A242371.P9761985459798845747

namespace A242371

/-- `2*(n+3)*(3-or(1, -n))` -/
def P9761985459798845747.Spec : Prop :=
  ∀ n, P9761985459798845747.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P3428415039653110494

`4*(ceil(n/2)+1)*(n+3)`
-/

namespace A242371.P3428415039653110494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((⌈(n : ℚ) / 2⌉ + 1) * (n + 3 : ℤ))

end

end A242371.P3428415039653110494

namespace A242371

/-- `4*(ceil(n/2)+1)*(n+3)` -/
def P3428415039653110494.Spec : Prop :=
  ∀ n, P3428415039653110494.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P17579871865329774395

`floor(∑[4-a(n-1)]²/2)` with `a(0)=5, a(1)=3`
-/

namespace A242371.P17579871865329774395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2⌋

end

end A242371.P17579871865329774395

namespace A242371

/-- `floor(∑[4-a(n-1)]²/2)` -/
def P17579871865329774395.Spec : Prop :=
  ∀ n, P17579871865329774395.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P1997879302125103261

`2*(n+3)*or(1, n+1)+2*(n+3)`
-/

namespace A242371.P1997879302125103261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3) * Nat.lor 1 (n + 1) + 2 * (n + 3)

end

end A242371.P1997879302125103261

namespace A242371

/-- `2*(n+3)*or(1, n+1)+2*(n+3)` -/
def P1997879302125103261.Spec : Prop :=
  ∀ n, (P1997879302125103261.a n : ℤ) = A242371 (n + 3)

end A242371

/-! ## A242371.P13892512784848430616

`A182455(n+1)+A182455(n+1)+A159469(n+3)`
-/

namespace A242371.P13892512784848430616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 (n + 1) + (A182455 (n + 1) + A159469 (n + 3))

end

end A242371.P13892512784848430616

namespace A242371

/-- `A182455(n+1)+A182455(n+1)+A159469(n+3)` -/
def P13892512784848430616.Spec : Prop :=
  ∀ n, P13892512784848430616.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P16089509795457621778

`Δ[4*A049779(n+2)]`
-/

namespace A242371.P16089509795457621778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049779 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242371.P16089509795457621778

namespace A242371

/-- `Δ[4*A049779(n+2)]` -/
def P16089509795457621778.Spec : Prop :=
  ∀ n, P16089509795457621778.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P5681474015243401775

`A159469(n+4)+2*A093005(n+2)`
-/

namespace A242371.P5681474015243401775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159469 (n + 4) + 2 * A093005 (n + 2)

end

end A242371.P5681474015243401775

namespace A242371

/-- `A159469(n+4)+2*A093005(n+2)` -/
def P5681474015243401775.Spec : Prop :=
  ∀ n, P5681474015243401775.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P17204717994814303770

`A276914(n+3)-(n+3)`
-/

namespace A242371.P17204717994814303770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276914 (n + 3) - (n + 3 : ℤ)

end

end A242371.P17204717994814303770

namespace A242371

/-- `A276914(n+3)-(n+3)` -/
def P17204717994814303770.Spec : Prop :=
  ∀ n, P17204717994814303770.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P11087541845399411239

`A238411(n+3)+A238411(n+3)`
-/

namespace A242371.P11087541845399411239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 3) + A238411 (n + 3)

end

end A242371.P11087541845399411239

namespace A242371

/-- `A238411(n+3)+A238411(n+3)` -/
def P11087541845399411239.Spec : Prop :=
  ∀ n, P11087541845399411239.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P9666944792281575942

`A033691(A154708(n+2))`
-/

namespace A242371.P9666944792281575942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033691 (A154708 (n + 2)).toNat

end

end A242371.P9666944792281575942

namespace A242371

/-- `A033691(A154708(n+2))` -/
def P9666944792281575942.Spec : Prop :=
  ∀ n, P9666944792281575942.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P11865233492441984786

`A194274(A042964(n+2)+1)`
-/

namespace A242371.P11865233492441984786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A042964 (n + 2) + 1).toNat

end

end A242371.P11865233492441984786

namespace A242371

/-- `A194274(A042964(n+2)+1)` -/
def P11865233492441984786.Spec : Prop :=
  ∀ n, P11865233492441984786.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P5030301203323971598

`A194274(A098181(2*n+3))`
-/

namespace A242371.P5030301203323971598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A098181 (2 * n + 3)).toNat

end

end A242371.P5030301203323971598

namespace A242371

/-- `A194274(A098181(2*n+3))` -/
def P5030301203323971598.Spec : Prop :=
  ∀ n, P5030301203323971598.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P424265774678159563

`A033691(A047235(n+2)-n)`
-/

namespace A242371.P424265774678159563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033691 (A047235 (n + 2) - (n : ℤ)).toNat

end

end A242371.P424265774678159563

namespace A242371

/-- `A033691(A047235(n+2)-n)` -/
def P424265774678159563.Spec : Prop :=
  ∀ n, P424265774678159563.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P6651095800279545934

`A000096(A014601(n+2))-(n+2)`
-/

namespace A242371.P6651095800279545934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A014601 (n + 2)).toNat - (n + 2 : ℤ)

end

end A242371.P6651095800279545934

namespace A242371

/-- `A000096(A014601(n+2))-(n+2)` -/
def P6651095800279545934.Spec : Prop :=
  ∀ n, P6651095800279545934.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P7512047594167284696

`A007590(A100832(n+2))`
-/

namespace A242371.P7512047594167284696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A100832 (n + 2)).toNat

end

end A242371.P7512047594167284696

namespace A242371

/-- `A007590(A100832(n+2))` -/
def P7512047594167284696.Spec : Prop :=
  ∀ n, P7512047594167284696.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P7619270690083435130

`A007590(A014601(n)+5)`
-/

namespace A242371.P7619270690083435130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A014601 n + 5).toNat

end

end A242371.P7619270690083435130

namespace A242371

/-- `A007590(A014601(n)+5)` -/
def P7619270690083435130.Spec : Prop :=
  ∀ n, P7619270690083435130.a n = A242371 (n + 3)

end A242371

/-! ## A242371.P5396404967513634694

`A007590(Δ[A035608(n+2)])`
-/

namespace A242371.P5396404967513634694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (f1 (n + 1) - f1 n).toNat

end

end A242371.P5396404967513634694

namespace A242371

/-- `A007590(Δ[A035608(n+2)])` -/
def P5396404967513634694.Spec : Prop :=
  ∀ n, P5396404967513634694.a n = A242371 (n + 3)

end A242371

/-!
# A242374: Number of digits in the decimal expansion of n^8.

The programs for A242374, the canonical program `A242374.P11448369374376941394` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242374 has offset 0).

The definition of A242374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242374.P11448369374376941394

`∑{digits}[n^8, (#%2)!]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A242374

/-- `∑{digits}[n^8, (#%2)!]` -/
def P11448369374376941394.Spec : Prop :=
  ∀ n, (P11448369374376941394.a n : ℤ) = A242374 n

theorem P11448369374376941394.correct : P11448369374376941394.Spec := by
  intro n
  simp only [A242374]

end A242374

/-! ## A242374.P15202289205577366323

`∑{digits}[n^8, and(1, #)!]`
-/

namespace A242374.P15202289205577366323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A242374.P15202289205577366323

namespace A242374

/-- `∑{digits}[n^8, and(1, #)!]` -/
def P15202289205577366323.Spec : Prop :=
  ∀ n, (P15202289205577366323.a n : ℤ) = A242374 n

theorem P15202289205577366323.correct : P15202289205577366323.Spec := by
  intro n
  simp only [A242374, Nat.add_sub_cancel, A242374.P15202289205577366323.f1, A242374.P15202289205577366323.a, A242374.P11448369374376941394.f1, A242374.P11448369374376941394.a, SequenceMachineLib.memo_apply]
  try simp

end A242374

/-! ## A242374.P5292724477008197306

`∑{digits}[n^8, dr(10^#)]`
-/

namespace A242374.P5292724477008197306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A242374.P5292724477008197306

namespace A242374

/-- `∑{digits}[n^8, dr(10^#)]` -/
def P5292724477008197306.Spec : Prop :=
  ∀ n, (P5292724477008197306.a n : ℤ) = A242374 n

end A242374

/-! ## A242374.P13561842939740062224

`∑{digits}[n²²², gcd(#, #+1)]`
-/

namespace A242374.P13561842939740062224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (x + 1)).sum

end

end A242374.P13561842939740062224

namespace A242374

/-- `∑{digits}[n²²², gcd(#, #+1)]` -/
def P13561842939740062224.Spec : Prop :=
  ∀ n, (P13561842939740062224.a n : ℤ) = A242374 n

end A242374

/-! ## A242374.P6824744810954109282

`∑{digits}[n^8, A036370(#)]`
-/

namespace A242374.P6824744810954109282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A242374.P6824744810954109282

namespace A242374

/-- `∑{digits}[n^8, A036370(#)]` -/
def P6824744810954109282.Spec : Prop :=
  ∀ n, P6824744810954109282.a n = A242374 n

end A242374

/-! ## A242374.P15946939391016643725

`∑{digits}[n^8, A061901(#)]`
-/

namespace A242374.P15946939391016643725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061901 x).sum

end

end A242374.P15946939391016643725

namespace A242374

/-- `∑{digits}[n^8, A061901(#)]` -/
def P15946939391016643725.Spec : Prop :=
  ∀ n, P15946939391016643725.a n = A242374 n

end A242374

/-! ## A242374.P11599377115366590179

`∑{digits}[n^8, A061906(#)]`
-/

namespace A242374.P11599377115366590179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061906 x).sum

end

end A242374.P11599377115366590179

namespace A242374

/-- `∑{digits}[n^8, A061906(#)]` -/
def P11599377115366590179.Spec : Prop :=
  ∀ n, P11599377115366590179.a n = A242374 n

end A242374

/-! ## A242374.P17163454413859451608

`∑{digits}[n^8, A269626(#)]`
-/

namespace A242374.P17163454413859451608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A269626 x).sum

end

end A242374.P17163454413859451608

namespace A242374

/-- `∑{digits}[n^8, A269626(#)]` -/
def P17163454413859451608.Spec : Prop :=
  ∀ n, P17163454413859451608.a n = A242374 n

end A242374

/-! ## A242374.P15117259508963480897

`∑{digits}[n^8, A001222(or(3, #))]`
-/

namespace A242374.P15117259508963480897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001222 (Nat.lor 3 x)).sum

end

end A242374.P15117259508963480897

namespace A242374

/-- `∑{digits}[n^8, A001222(or(3, #))]` -/
def P15117259508963480897.Spec : Prop :=
  ∀ n, P15117259508963480897.a n = A242374 n

end A242374

/-! ## A242374.P2166785984089683894

`∑{digits}[n²²², A001221(or(3, #))]`
-/

namespace A242374.P2166785984089683894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001221 (Nat.lor 3 x)).sum

end

end A242374.P2166785984089683894

namespace A242374

/-- `∑{digits}[n²²², A001221(or(3, #))]` -/
def P2166785984089683894.Spec : Prop :=
  ∀ n, P2166785984089683894.a n = A242374 n

end A242374

/-! ## A242374.P18434167645180736403

`A239684(n²)`
-/

namespace A242374.P18434167645180736403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239684 (n ^ 2)

end

end A242374.P18434167645180736403

namespace A242374

/-- `A239684(n²)` -/
def P18434167645180736403.Spec : Prop :=
  ∀ n, P18434167645180736403.a n = A242374 n

end A242374

/-! ## A242374.P523566958748099446

`A298847(A298847(A239684(n*n)))`
-/

namespace A242374.P523566958748099446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A298847 (A239684 (n * n)).toNat).toNat

end

end A242374.P523566958748099446

namespace A242374

/-- `A298847(A298847(A239684(n*n)))` -/
def P523566958748099446.Spec : Prop :=
  ∀ n, P523566958748099446.a n = A242374 n

end A242374

/-!
# A242375: Number of rooted trees with n n-colored non-root nodes.

The programs for A242375, there is no canonical definition to state claims against.
-/

/-! ## A242375.P113560637911072719

`A242249(2*(n+1)²)`
-/

namespace A242375.P113560637911072719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (2 * (n + 1) ^ 2)

end

end A242375.P113560637911072719

/-!
# A242376: Numerators of b(n) = b(n-1)/2 + 1/(2*n), b(0)=0.

The programs for A242376, there is no canonical definition to state claims against.
-/

/-! ## A242376.P17317147610490654728

`lcm(2, A046878(n))/2`
-/

namespace A242376.P17317147610490654728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A046878 n) : ℚ) / 2

end

end A242376.P17317147610490654728

/-! ## A242376.P15016008974533441208

`A046878(n)/gcd(A046878(n), A305063(n))`
-/

namespace A242376.P15016008974533441208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046878 n : ℚ) / (Int.gcd (A046878 n) (A305063 n) : ℚ)

end

end A242376.P15016008974533441208

/-! ## A242376.P8925806609521858033

`A126674(n)/gcd(A000165(n), A126674(n))`
-/

namespace A242376.P8925806609521858033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126674 n : ℚ) / (Int.gcd (A000165 n) (A126674 n) : ℚ)

end

end A242376.P8925806609521858033

/-! ## A242376.P3909197016426257269

`A014682(lcm(2, A046878(n)))`
-/

namespace A242376.P3909197016426257269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A046878 n))

end

end A242376.P3909197016426257269

/-! ## A242376.P2360521917688889834

`A026741(A046878(n))`
-/

namespace A242376.P2360521917688889834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A046878 n).toNat

end

end A242376.P2360521917688889834

/-!
# A242378: Square array read by antidiagonals: to obtain A(i,j), replace each prime factor prime(k) in prime factorization of j with prime(k+i).

The programs for A242378, there is no canonical definition to state claims against.
-/

/-! ## A242378.P6140639484637604516

`A242379(∑[2*n]%comp[∑[n]])`
-/

namespace A242378.P6140639484637604516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A242378.P6140639484637604516

/-! ## A242378.P11539953435228270674

`A242379(∑[char[∑[n]]]²-(n+1))`
-/

namespace A242378.P11539953435228270674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A242378.P11539953435228270674

/-! ## A242378.P5170729969056519405

`gcd(n, n+1)*A242379(A061579(n))`
-/

namespace A242378.P5170729969056519405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A242379 (A061579 n).toNat

end

end A242378.P5170729969056519405

/-! ## A242378.P12368721763654760683

`A057427(n)*A242379(A061579(n))`
-/

namespace A242378.P12368721763654760683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A242379 (A061579 n).toNat

end

end A242378.P12368721763654760683

/-! ## A242378.P6932965358109836750

`A178334(n)*A242379(A061579(n))`
-/

namespace A242378.P6932965358109836750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A242379 (A061579 n).toNat

end

end A242378.P6932965358109836750

/-! ## A242378.P3107411571220728773

`A242379(A061579(n))%A002622(n)`
-/

namespace A242378.P3107411571220728773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242379 (A061579 n).toNat) (A002622 n)

end

end A242378.P3107411571220728773

/-! ## A242378.P1479586949747151070

`lcm(A033999(n), A242379(A061579(n)))`
-/

namespace A242378.P1479586949747151070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A242379 (A061579 n).toNat)

end

end A242378.P1479586949747151070

/-! ## A242378.P8893216273386574029

`∑{d}[A242379(A061579(n)), A000010(#)]`
-/

namespace A242378.P8893216273386574029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A242378.P8893216273386574029

/-! ## A242378.P5392713355120587779

`∑{d}[A242379(A114327(n)+n), A000010(#)]`
-/

namespace A242378.P5392713355120587779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 (A114327 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A242378.P5392713355120587779

/-! ## A242378.P4010653935055865178

`log2(A000032(C(2, n+2)))*A242379(A061579(n))`
-/

namespace A242378.P4010653935055865178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000032 (Nat.choose 2 (n + 2)) : ℝ) * (A242379 (A061579 n).toNat : ℝ)

end

end A242378.P4010653935055865178

/-!
# A242379: Transpose of array A242378.

The programs for A242379, there is no canonical definition to state claims against.
-/

/-! ## A242379.P13436142856045001230

`A242378(∑[2*n]%comp[∑[n]])`
-/

namespace A242379.P13436142856045001230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A242379.P13436142856045001230

/-! ## A242379.P8147808590754170362

`A242378(∑[char[∑[n]]]²-(n+1))`
-/

namespace A242379.P8147808590754170362
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A242379.P8147808590754170362

/-! ## A242379.P7130952196728554583

`A002262(C(A048993(n), A001222(2*n+3)+2)+n)`
-/

namespace A242379.P7130952196728554583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose (A048993 n).toNat (A001222 (2 * n + 3) + 2).toNat + n)

end

end A242379.P7130952196728554583

/-! ## A242379.P3084548621391829037

`A382397(A103438(n)²)`
-/

namespace A242379.P3084548621391829037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A103438 n ^ 2).toNat

end

end A242379.P3084548621391829037

/-! ## A242379.P440245662348187500

`A303399(3^A103438(n))`
-/

namespace A242379.P440245662348187500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303399 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A103438 n : ℤ))).toNat

end

end A242379.P440245662348187500

/-!
# A242380: Lesser of consecutive primes whose average is a perfect power.

The programs for A242380, there is no canonical definition to state claims against.
-/

/-! ## A242380.P6550580220077393857

`p?[∪[A225195(n+1), A242382(n+1)]]`
-/

namespace A242380.P6550580220077393857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242382 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242380.P6550580220077393857

/-! ## A242380.P13102735940393290155

`A020639(∪[A225195(n+1), A242382(n+1)])`
-/

namespace A242380.P13102735940393290155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A242380.P13102735940393290155

/-!
# A242382: Lesser of consecutive primes whose average is a perfect cube.

The programs for A242382, there is no canonical definition to state claims against.
-/

/-! ## A242382.P809595689732826983

`A077037(A075191(n+1))`
-/

namespace A242382.P809595689732826983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077037 (A075191 (n + 1)).toNat

end

end A242382.P809595689732826983

/-! ## A242382.P10766756318348535418

`A055670(A076693(n+1))-1`
-/

namespace A242382.P10766756318348535418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A076693 (n + 1)).toNat - 1

end

end A242382.P10766756318348535418

/-!
# A242383: Lesser of consecutive primes whose average is an oblong number.

The programs for A242383, there is no canonical definition to state claims against.
-/

/-! ## A242383.P2280287848844967934

`A161550(floor(sqrt(A263676(n+1))))`
-/

namespace A242383.P2280287848844967934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (Int.sqrt (A263676 (n + 1))).toNat

end

end A242383.P2280287848844967934

/-! ## A242383.P14450123995860293984

`A161550(round(sqrt(A263676(n+1))))`
-/

namespace A242383.P14450123995860293984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (SequenceMachineLib.roundAway (Real.sqrt (A263676 (n + 1) : ℝ))).toNat

end

end A242383.P14450123995860293984

/-! ## A242383.P4132747347965928896

`A008578(A000720(A263676(n+1))+1)`
-/

namespace A242383.P4132747347965928896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A263676 (n + 1)).toNat + 1).toNat

end

end A242383.P4132747347965928896

/-! ## A242383.P15934434535185670205

`A000040(A000720(A263676(n+1)-1))`
-/

namespace A242383.P15934434535185670205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A263676 (n + 1) - 1).toNat).toNat

end

end A242383.P15934434535185670205

/-! ## A242383.P2921973188682156962

`∑{d}[A000720(A263676(n+1)), A007444(#)]`
-/

namespace A242383.P2921973188682156962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A263676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A242383.P2921973188682156962

/-! ## A242383.P6261370974209030678

`A000040(A000720(A263676(n+1))%A263676(n+1))`
-/

namespace A242383.P6261370974209030678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A000720 (A263676 (n + 1)).toNat) (A263676 (n + 1))).toNat

end

end A242383.P6261370974209030678

/-! ## A242383.P13132790378987424653

`A000265(p?[A078587(A263676(n+1))])`
-/

namespace A242383.P13132790378987424653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A263676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A242383.P13132790378987424653

/-! ## A242383.P16754134544172564589

`A078587(2*A263676(n+1)-A263676(n+1))`
-/

namespace A242383.P16754134544172564589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (2 * A263676 (n + 1) - A263676 (n + 1)).toNat

end

end A242383.P16754134544172564589

/-!
# A242384: Lesser of consecutive primes whose sum is of the form k*(k+2), for some integer k.

The programs for A242384, there is no canonical definition to state claims against.
-/

/-! ## A242384.P7261976498102671229

`p?[eq[A013632(n), A114327(n)]]`
-/

namespace A242384.P7261976498102671229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242384.P7261976498102671229

/-! ## A242384.P18182650325794026397

`p?[eq[n, A061579(A151800(n))]]`
-/

namespace A242384.P18182650325794026397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A151800 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242384.P18182650325794026397

/-! ## A242384.P5012702865841620632

`p?[eq[A114327(n), A166597(n)]]`
-/

namespace A242384.P5012702865841620632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242384.P5012702865841620632

/-! ## A242384.P16992093076780968367

`p?[eq[A061579(n), A322863(n)]]`
-/

namespace A242384.P16992093076780968367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242384.P16992093076780968367

/-! ## A242384.P2894799684995166793

`p?[eq[A007918(n+1), A061579(n)]]`
-/

namespace A242384.P2894799684995166793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242384.P2894799684995166793

/-!
# A242385: Lesser of consecutive primes whose average is of the form k*(k+2), for some integer k.

The programs for A242385, there is no canonical definition to state claims against.
-/

/-! ## A242385.P14733568128749258756

`p?[A053001(n+2)*A056929(n+2)]`
-/

namespace A242385.P14733568128749258756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) * A056929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242385.P14733568128749258756

/-! ## A242385.P7631938068894919202

`p?[((n+2)²-A056928(n+2))*A053001(n+2)]`
-/

namespace A242385.P7631938068894919202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - A056928 (n + 2)) * A053001 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242385.P7631938068894919202

/-! ## A242385.P6378891394874821098

`p?[A000040(A038107(n+2))*A056929(n+2)]`
-/

namespace A242385.P6378891394874821098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 2)).toNat * A056929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242385.P6378891394874821098

/-! ## A242385.P3384909700511957837

`p?[A000040(A000720((n+2)²))*A056929(n+2)]`
-/

namespace A242385.P3384909700511957837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ((n + 2) ^ 2)).toNat * A056929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242385.P3384909700511957837

/-!
# A242386: Lesser of consecutive primes whose sum is a palindromic number.

The programs for A242386, there is no canonical definition to state claims against.
-/

/-! ## A242386.P17265445540790933161

`A055377(A162571(n+1))`
-/

namespace A242386.P17265445540790933161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A162571 (n + 1)).toNat

end

end A242386.P17265445540790933161

/-! ## A242386.P11843790577541663938

`A076272(A162571(n+1)-2)`
-/

namespace A242386.P11843790577541663938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A162571 (n + 1) - 2).toNat

end

end A242386.P11843790577541663938

/-! ## A242386.P906415690555702410

`eq[A032741(n), A136522(A013634(n))]`
-/

namespace A242386.P906415690555702410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242386.P906415690555702410

/-! ## A242386.P6263729177267423377

`A055377(∩[A001043(n+1), A002113(n+1)])`
-/

namespace A242386.P6263729177267423377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242386.P6263729177267423377

/-!
# A242387: Lesser of consecutive primes whose average is a palindromic number.

The programs for A242387, there is no canonical definition to state claims against.
-/

/-! ## A242387.P10966815354316921481

`A055377(2*eq[A020485(n), A210882(n+1)])`
-/

namespace A242387.P10966815354316921481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242387.P10966815354316921481

/-! ## A242387.P11344998828524483170

`A055377(∩[2*A002113(n+1), A001043(n+1)])`
-/

namespace A242387.P11344998828524483170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242387.P11344998828524483170

/-!
# A242388: Triangle read by rows: T(n,k) = n*2^(k-1) + 1, 1 <= k <= n.

The programs for A242388, the canonical program `A242388.P9019270962361867903` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242388 has offset 1).

The definition of A242388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242388.P13353886853821967280

`∑[char[∑[n]]]*A059268(n)+1`
-/

namespace A242388.P13353886853821967280
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059268 n + 1

end

end A242388.P13353886853821967280

namespace A242388

/-- `∑[char[∑[n]]]*A059268(n)+1` -/
def P13353886853821967280.Spec : Prop :=
  ∀ n, P13353886853821967280.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P9051936960690922723

`2^A002262(n)*∑[char[∑[n]]]+1`
-/

namespace A242388.P9051936960690922723
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 1

end

end A242388.P9051936960690922723

namespace A242388

/-- `2^A002262(n)*∑[char[∑[n]]]+1` -/
def P9051936960690922723.Spec : Prop :=
  ∀ n, P9051936960690922723.a n = (A242388 (n + 1) : ℚ)

end A242388

/-! ## A242388.P9019270962361867903

`A000079(A002262(n))*A002024(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242388

/-- `A000079(A002262(n))*A002024(n+1)+1` -/
def P9019270962361867903.Spec : Prop :=
  ∀ n, P9019270962361867903.a n = A242388 (n + 1)

theorem P9019270962361867903.correct : P9019270962361867903.Spec := by
  intro n
  simp only [A242388, Nat.add_sub_cancel]

end A242388

/-! ## A242388.P12252044459471863079

`A059268(n)*A075362(A057944(n)+1)+1`
-/

namespace A242388.P12252044459471863079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A075362 (A057944 n + 1).toNat + 1

end

end A242388.P12252044459471863079

namespace A242388

/-- `A059268(n)*A075362(A057944(n)+1)+1` -/
def P12252044459471863079.Spec : Prop :=
  ∀ n, P12252044459471863079.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P1447579771380027525

`A002024(n+1)*A011782(A002260(n+1))+1`
-/

namespace A242388.P1447579771380027525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A011782 (A002260 (n + 1)).toNat + 1

end

end A242388.P1447579771380027525

namespace A242388

/-- `A002024(n+1)*A011782(A002260(n+1))+1` -/
def P1447579771380027525.Spec : Prop :=
  ∀ n, P1447579771380027525.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P15168545684643573053

`A061451(A245300(n)+1)`
-/

namespace A242388.P15168545684643573053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061451 (A245300 n + 1).toNat

end

end A242388.P15168545684643573053

namespace A242388

/-- `A061451(A245300(n)+1)` -/
def P15168545684643573053.Spec : Prop :=
  ∀ n, P15168545684643573053.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P6140068610954796944

`A130128(A245300(n)+1)+1`
-/

namespace A242388.P6140068610954796944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (A245300 n + 1).toNat + 1

end

end A242388.P6140068610954796944

namespace A242388

/-- `A130128(A245300(n)+1)+1` -/
def P6140068610954796944.Spec : Prop :=
  ∀ n, P6140068610954796944.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P16030159651967126414

`A059268(n)*A268726(A137688(n))+1`
-/

namespace A242388.P16030159651967126414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A268726 (A137688 n).toNat + 1

end

end A242388.P16030159651967126414

namespace A242388

/-- `A059268(n)*A268726(A137688(n))+1` -/
def P16030159651967126414.Spec : Prop :=
  ∀ n, P16030159651967126414.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P13446024262430622416

`A205542(A245300(n))`
-/

namespace A242388.P13446024262430622416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (A245300 n).toNat

end

end A242388.P13446024262430622416

namespace A242388

/-- `A205542(A245300(n))` -/
def P13446024262430622416.Spec : Prop :=
  ∀ n, P13446024262430622416.a n = A242388 (n + 1)

end A242388

/-! ## A242388.P15876909512962055017

`A080513((A131507(n)+1)*A059268(n))`
-/

namespace A242388.P15876909512962055017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((A131507 n + 1) * A059268 n).toNat

end

end A242388.P15876909512962055017

namespace A242388

/-- `A080513((A131507(n)+1)*A059268(n))` -/
def P15876909512962055017.Spec : Prop :=
  ∀ n, P15876909512962055017.a n = A242388 (n + 1)

end A242388

/-!
# A242389: 2^n minus the sum of the proper divisors of n.

The programs for A242389, the canonical program `A242389.P11990972106804115361` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242389 has offset 1).

The definition of A242389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242389.P11990972106804115361

`A000079(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A242389

/-- `A000079(n+1)-A001065(n+1)` -/
def P11990972106804115361.Spec : Prop :=
  ∀ n, P11990972106804115361.a n = A242389 (n + 1)

theorem P11990972106804115361.correct : P11990972106804115361.Spec := by
  intro n
  simp only [A242389, Nat.add_sub_cancel]

end A242389

/-! ## A242389.P1357976855591690264

`∑[2^n]-∑{d}[n+1, #]+n+2`
-/

namespace A242389.P1357976855591690264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ) + 2

end

end A242389.P1357976855591690264

namespace A242389

/-- `∑[2^n]-∑{d}[n+1, #]+n+2` -/
def P1357976855591690264.Spec : Prop :=
  ∀ n, P1357976855591690264.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P7881362264813119601

`2^(n+1)-∑{d}[n+1, #]+n+1`
-/

namespace A242389.P7881362264813119601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n + 1 : ℤ)

end

end A242389.P7881362264813119601

namespace A242389

/-- `2^(n+1)-∑{d}[n+1, #]+n+1` -/
def P7881362264813119601.Spec : Prop :=
  ∀ n, P7881362264813119601.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P13692281533219036302

`∑[2^n+1]+1-A000203(n+1)`
-/

namespace A242389.P13692281533219036302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A000203 (n + 1))

end

end A242389.P13692281533219036302

namespace A242389

/-- `∑[2^n+1]+1-A000203(n+1)` -/
def P13692281533219036302.Spec : Prop :=
  ∀ n, P13692281533219036302.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P14550975624558149464

`2^(n+1)-∑{d}[n+1, #-A000010(#)]`
-/

namespace A242389.P14550975624558149464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000010 d)

end

end A242389.P14550975624558149464

namespace A242389

/-- `2^(n+1)-∑{d}[n+1, #-A000010(#)]` -/
def P14550975624558149464.Spec : Prop :=
  ∀ n, P14550975624558149464.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P9400100707251550003

`A353190(n+1)+A183155(n)`
-/

namespace A242389.P9400100707251550003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) + A183155 n

end

end A242389.P9400100707251550003

namespace A242389

/-- `A353190(n+1)+A183155(n)` -/
def P9400100707251550003.Spec : Prop :=
  ∀ n, P9400100707251550003.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P16866474132764490156

`A198633(n)-A173455(n+1)`
-/

namespace A242389.P16866474132764490156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - A173455 (n + 1)

end

end A242389.P16866474132764490156

namespace A242389

/-- `A198633(n)-A173455(n+1)` -/
def P16866474132764490156.Spec : Prop :=
  ∀ n, P16866474132764490156.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P10107451939244607499

`A006127(n+1)-A000203(n+1)`
-/

namespace A242389.P10107451939244607499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (n + 1) - A000203 (n + 1)

end

end A242389.P10107451939244607499

namespace A242389

/-- `A006127(n+1)-A000203(n+1)` -/
def P10107451939244607499.Spec : Prop :=
  ∀ n, P10107451939244607499.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P13732446868606999315

`A086653(n+1)-A224880(n+1)`
-/

namespace A242389.P13732446868606999315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086653 (n + 1) - A224880 (n + 1)

end

end A242389.P13732446868606999315

namespace A242389

/-- `A086653(n+1)-A224880(n+1)` -/
def P13732446868606999315.Spec : Prop :=
  ∀ n, P13732446868606999315.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P16862490105983918280

`A048578(n)-A000203(n+1)+n`
-/

namespace A242389.P16862490105983918280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A000203 (n + 1) + (n : ℤ)

end

end A242389.P16862490105983918280

namespace A242389

/-- `A048578(n)-A000203(n+1)+n` -/
def P16862490105983918280.Spec : Prop :=
  ∀ n, P16862490105983918280.a n = A242389 (n + 1)

end A242389

/-! ## A242389.P16459811310550622313

`A000051(n)+A000225(n)-A001065(n+1)`
-/

namespace A242389.P16459811310550622313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A001065 (n + 1))

end

end A242389.P16459811310550622313

namespace A242389

/-- `A000051(n)+A000225(n)-A001065(n+1)` -/
def P16459811310550622313.Spec : Prop :=
  ∀ n, P16459811310550622313.a n = A242389 (n + 1)

end A242389

/-!
# A242390: Lexicographically earliest nonnegative integer sequence such that for every positive integer d, the sequence a(n+d)-a(n), n>=0 is injective.

The programs for A242390, there is no canonical definition to state claims against.
-/

/-! ## A242390.P9971379090947433572

`A285491(n+1)-1`
-/

namespace A242390.P9971379090947433572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285491 (n + 1) - 1

end

end A242390.P9971379090947433572

/-! ## A242390.P14382274067545683908

`A321804(A000377(n))+A285491(n+1)`
-/

namespace A242390.P14382274067545683908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000377 n).toNat + A285491 (n + 1)

end

end A242390.P14382274067545683908

/-! ## A242390.P5646312875514586528

`abs(A285491(n+1)+A057428(A008620(n)))`
-/

namespace A242390.P5646312875514586528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285491 (n + 1) + A057428 (A008620 n).toNat|

end

end A242390.P5646312875514586528

/-! ## A242390.P14162895893659459776

`abs(A285491(n+1)+A057428(A314873(n)))`
-/

namespace A242390.P14162895893659459776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285491 (n + 1) + A057428 (A314873 n).toNat|

end

end A242390.P14162895893659459776

/-! ## A242390.P14810772620197023570

`abs(A285491(n+1)+A057428(A001511(n+1)))`
-/

namespace A242390.P14810772620197023570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285491 (n + 1) + A057428 (A001511 (n + 1)).toNat|

end

end A242390.P14810772620197023570

/-! ## A242390.P8134181065424597100

`abs(A285491(n+1)+A057428(A229037(n+1)))`
-/

namespace A242390.P8134181065424597100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285491 (n + 1) + A057428 (A229037 (n + 1)).toNat|

end

end A242390.P8134181065424597100

/-! ## A242390.P17604897835423736570

`A346248(A020639(4*(n+2)))+A285491(n+1)`
-/

namespace A242390.P17604897835423736570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (A020639 (4 * (n + 2))).toNat + A285491 (n + 1)

end

end A242390.P17604897835423736570

/-! ## A242390.P8169259507852398114

`abs(A285491(n+1)+A057428(A313241(n)))`
-/

namespace A242390.P8169259507852398114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285491 (n + 1) + A057428 (A313241 n).toNat|

end

end A242390.P8169259507852398114

/-! ## A242390.P5696761849850419809

`abs(A285491(n+1)+A057428(A228629(n+1)))`
-/

namespace A242390.P5696761849850419809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285491 (n + 1) + A057428 (A228629 (n + 1)).toNat|

end

end A242390.P5696761849850419809

/-! ## A242390.P16180322463192285265

`A023443(A285491(n+1))`
-/

namespace A242390.P16180322463192285265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285491 (n + 1)).toNat

end

end A242390.P16180322463192285265

/-! ## A242390.P17782216057526749733

`A023444(A285491(n+1)+1)`
-/

namespace A242390.P17782216057526749733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A285491 (n + 1) + 1).toNat

end

end A242390.P17782216057526749733

/-! ## A242390.P17879567876106859562

`(A285491(n+1)+A034474(n))%A242328(n)`
-/

namespace A242390.P17879567876106859562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285491 (n + 1) + A034474 n) (A242328 n)

end

end A242390.P17879567876106859562

/-!
# A242393: Records in A187202 by index.

The programs for A242393, there is no canonical definition to state claims against.
-/

/-! ## A242393.P16883785459732249345

`A255961(A309864(n))+A249425(n+1)`
-/

namespace A242393.P16883785459732249345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A309864 n).toNat + A249425 (n + 1)

end

end A242393.P16883785459732249345

/-! ## A242393.P4920760090379910267

`xor(A006005(n+1), A230044(A309864(n)))`
-/

namespace A242393.P4920760090379910267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006005 (n + 1)) (A230044 (A309864 n).toNat)

end

end A242393.P4920760090379910267

/-! ## A242393.P9121044364916494726

`A058305(A077740(n+1))+A006005(n+1)`
-/

namespace A242393.P9121044364916494726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A077740 (n + 1)).toNat + A006005 (n + 1)

end

end A242393.P9121044364916494726

/-!
# A242394: Number of equilateral triangles (sides length = 1) that intersect the circumference of a circle of radius n centered at (0,0).

The programs for A242394, there is no canonical definition to state claims against.
-/

/-! ## A242394.P11236097610323351907

`∑[A004016(A105693(n+2))]`
-/

namespace A242394.P11236097610323351907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A105693 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242394.P11236097610323351907

/-!
# A242395: Number of equilateral triangles (sides length = 1) that intersect the circumference of a circle of radius n centered at (1/2,0).

The programs for A242395, there is no canonical definition to state claims against.
-/

/-! ## A242395.P17294374780093131965

`A091999(A242396(2*(n+1))/2)`
-/

namespace A242395.P17294374780093131965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (SequenceMachineLib.roundAway ((A242396 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A242395.P17294374780093131965

/-! ## A242395.P179999910699771164

`A091999(A077168(n+1)+A004396(2*n+1))`
-/

namespace A242395.P179999910699771164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (A077168 (n + 1) + A004396 (2 * n + 1)).toNat

end

end A242395.P179999910699771164

/-! ## A242395.P6869538963876106173

`or(2, A024351(n+1)+9)`
-/

namespace A242395.P6869538963876106173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A024351 (n + 1) + 9)

end

end A242395.P6869538963876106173

/-! ## A242395.P13831331320502569462

`A091999(A020660(2*n+3)%A163500(n+1))`
-/

namespace A242395.P13831331320502569462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (Int.tmod (A020660 (2 * n + 3)) (A163500 (n + 1))).toNat

end

end A242395.P13831331320502569462

/-! ## A242395.P7201852595992978573

`A033677(A320056(3*n+4)*A360006(2*n+5))`
-/

namespace A242395.P7201852595992978573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A320056 (3 * n + 4) * A360006 (2 * n + 5)).toNat

end

end A242395.P7201852595992978573

/-!
# A242396: Number of rows of equilateral triangles (sides length = 1) that intersect the circumference of a circle of radius n centered at (0,0) or (1/2,0).

The programs for A242396, there is no canonical definition to state claims against.
-/

/-! ## A242396.P5264801456541268258

`2*ceil(2*γ*(n+1))`
-/

namespace A242396.P5264801456541268258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈2 * (Real.eulerMascheroniConstant * (n + 1 : ℝ))⌉

end

end A242396.P5264801456541268258

/-! ## A242396.P4061481829298122853

`and(floor(4*(n+1)/sqrt(3))+2, -2)`
-/

namespace A242396.P4061481829298122853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌊(4 * (n + 1) : ℝ) / Real.sqrt (3 : ℝ)⌋ + 2) (-2)

end

end A242396.P4061481829298122853

/-! ## A242396.P183647305178490430

`2*floor((record[xor(3, n)]+1)/sqrt(12))+2`
-/

namespace A242396.P183647305178490430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℝ) / Real.sqrt (12 : ℝ)⌋ + 2

end

end A242396.P183647305178490430

/-! ## A242396.P16855517510873190597

`or(1, A187339(n+1))+1`
-/

namespace A242396.P16855517510873190597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187339 (n + 1)) + 1

end

end A242396.P16855517510873190597

/-! ## A242396.P11210906280848268642

`2*A097337(2*(n+1))+2`
-/

namespace A242396.P11210906280848268642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097337 (2 * (n + 1)) + 2

end

end A242396.P11210906280848268642

/-! ## A242396.P16272769949885440490

`4*A194979(2*(n+1))/2`
-/

namespace A242396.P16272769949885440490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A194979 (2 * (n + 1)) : ℚ) / 2

end

end A242396.P16272769949885440490

/-! ## A242396.P11121292852970847979

`A188085(2*(n+1))-2*n`
-/

namespace A242396.P11121292852970847979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (2 * (n + 1)) - (2 * n : ℤ)

end

end A242396.P11121292852970847979

/-! ## A242396.P14543134861545618948

`A188073(2*(n+1))-2*(n+1)`
-/

namespace A242396.P14543134861545618948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A242396.P14543134861545618948

/-!
# A242397: a(n) is the number of different bases b such that the Brazilian numbers A125134(n) remain a repdigit number.

The programs for A242397, there is no canonical definition to state claims against.
-/

/-! ## A242397.P12457315153161364285

`A220136(lt[A059711(n)+1, n])`
-/

namespace A242397.P12457315153161364285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242397.P12457315153161364285

/-! ## A242397.P4055625948859855189

`A220136(lt[1, n-A059711(n)])`
-/

namespace A242397.P4055625948859855189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A242397.P4055625948859855189

/-! ## A242397.P4353029633205891135

`A220136(lt[2*A059711(n), n])`
-/

namespace A242397.P4353029633205891135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059711 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242397.P4353029633205891135

/-! ## A242397.P4904477344423291819

`A220136(lt[2, n/A059711(n)])`
-/

namespace A242397.P4904477344423291819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A059711 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A242397.P4904477344423291819

/-! ## A242397.P10256861325080482596

`A220136(lt[0, A220136(n+1)]+1)`
-/

namespace A242397.P10256861325080482596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A242397.P10256861325080482596

/-! ## A242397.P10215587861552438354

`A220136(lt[A059711(n), A005378(n)])`
-/

namespace A242397.P10215587861552438354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242397.P10215587861552438354

/-! ## A242397.P13909354289736001942

`A220136(lt[A059711(n), A008619(n)])`
-/

namespace A242397.P13909354289736001942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242397.P13909354289736001942

/-! ## A242397.P5751765170429954095

`A220136(lt[A059711(n), A023443(n)])`
-/

namespace A242397.P5751765170429954095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242397.P5751765170429954095

/-! ## A242397.P8471935142123524918

`A220136(lt[A059711(n), A123108(n)])`
-/

namespace A242397.P8471935142123524918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242397.P8471935142123524918

/-!
# A242398: Partial sums of the number of primes separating successive pairs of twin primes.

The programs for A242398, the canonical program `A242398.P7293458686205379350` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242398 has offset 1).

The definition of A242398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242398.P7293458686205379350

`∑[A048614(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242398

/-- `∑[A048614(n+1)]` -/
def P7293458686205379350.Spec : Prop :=
  ∀ n, P7293458686205379350.a n = A242398 (n + 1)

theorem P7293458686205379350.correct : P7293458686205379350.Spec := by
  intro n
  simp only [A242398, Nat.add_sub_cancel]

end A242398

/-! ## A242398.P4664023584696193519

`∑[A027833(n+1)-2]+1`
-/

namespace A242398.P4664023584696193519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242398.P4664023584696193519

namespace A242398

/-- `∑[A027833(n+1)-2]+1` -/
def P4664023584696193519.Spec : Prop :=
  ∀ n, P4664023584696193519.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P13122617442554769798

`A029707(n+2)-(2*n+3)`
-/

namespace A242398.P13122617442554769798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - (2 * n + 3 : ℤ)

end

end A242398.P13122617442554769798

namespace A242398

/-- `A029707(n+2)-(2*n+3)` -/
def P13122617442554769798.Spec : Prop :=
  ∀ n, P13122617442554769798.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P10345190476409532545

`∑[Δ[A029707(n+1)]-2]+1`
-/

namespace A242398.P10345190476409532545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242398.P10345190476409532545

namespace A242398

/-- `∑[Δ[A029707(n+1)]-2]+1` -/
def P10345190476409532545.Spec : Prop :=
  ∀ n, P10345190476409532545.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P1724406712836589366

`∑[A289207(A027833(n+1))]`
-/

namespace A242398.P1724406712836589366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A027833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242398.P1724406712836589366

namespace A242398

/-- `∑[A289207(A027833(n+1))]` -/
def P1724406712836589366.Spec : Prop :=
  ∀ n, P1724406712836589366.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P17438437598089993358

`∑[A204099(n+1)-A204136(n+1)]`
-/

namespace A242398.P17438437598089993358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) - A204136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242398.P17438437598089993358

namespace A242398

/-- `∑[A204099(n+1)-A204136(n+1)]` -/
def P17438437598089993358.Spec : Prop :=
  ∀ n, P17438437598089993358.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P920257598513278910

`A029707(n+2)-A008486(n+1)+n`
-/

namespace A242398.P920257598513278910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - A008486 (n + 1) + (n : ℤ)

end

end A242398.P920257598513278910

namespace A242398

/-- `A029707(n+2)-A008486(n+1)+n` -/
def P920257598513278910.Spec : Prop :=
  ∀ n, P920257598513278910.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P10971717217035142428

`∑[A242767(n+3)-2]+1`
-/

namespace A242398.P10971717217035142428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242398.P10971717217035142428

namespace A242398

/-- `∑[A242767(n+3)-2]+1` -/
def P10971717217035142428.Spec : Prop :=
  ∀ n, P10971717217035142428.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P749946110065031233

`A155752(n+2)-2*(n+1)`
-/

namespace A242398.P749946110065031233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 2) - (2 * (n + 1) : ℤ)

end

end A242398.P749946110065031233

namespace A242398

/-- `A155752(n+2)-2*(n+1)` -/
def P749946110065031233.Spec : Prop :=
  ∀ n, P749946110065031233.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P18167208217631233907

`A107770(n+2)-2*(n+2)`
-/

namespace A242398.P18167208217631233907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 2) - (2 * (n + 2) : ℤ)

end

end A242398.P18167208217631233907

namespace A242398

/-- `A107770(n+2)-2*(n+2)` -/
def P18167208217631233907.Spec : Prop :=
  ∀ n, P18167208217631233907.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P14468685590649960251

`eq[2, A001223(n+3)]-n-n`
-/

namespace A242398.P14468685590649960251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ) - (n : ℤ)

end

end A242398.P14468685590649960251

namespace A242398

/-- `eq[2, A001223(n+3)]-n-n` -/
def P14468685590649960251.Spec : Prop :=
  ∀ n, P14468685590649960251.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P592106111405616221

`A334142(2*(n+1))-(2*n+3)`
-/

namespace A242398.P592106111405616221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - (2 * n + 3 : ℤ)

end

end A242398.P592106111405616221

namespace A242398

/-- `A334142(2*(n+1))-(2*n+3)` -/
def P592106111405616221.Spec : Prop :=
  ∀ n, P592106111405616221.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P3510951057477582971

`eq[1, A162153(n+2)]-2*n`
-/

namespace A242398.P3510951057477582971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A242398.P3510951057477582971

namespace A242398

/-- `eq[1, A162153(n+2)]-2*n` -/
def P3510951057477582971.Spec : Prop :=
  ∀ n, P3510951057477582971.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P12675110884968344427

`eq[2, Δ[A000040(n+3)]]-2*n`
-/

namespace A242398.P12675110884968344427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A242398.P12675110884968344427

namespace A242398

/-- `eq[2, Δ[A000040(n+3)]]-2*n` -/
def P12675110884968344427.Spec : Prop :=
  ∀ n, P12675110884968344427.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P14623424140056503253

`eq[1, A001222(A000040(n+3)+2)]-2*n`
-/

namespace A242398.P14623424140056503253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A242398.P14623424140056503253

namespace A242398

/-- `eq[1, A001222(A000040(n+3)+2)]-2*n` -/
def P14623424140056503253.Spec : Prop :=
  ∀ n, P14623424140056503253.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P6156077503912699016

`eq[2, A000005(A000040(n+3)+2)]-2*n`
-/

namespace A242398.P6156077503912699016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A242398.P6156077503912699016

namespace A242398

/-- `eq[2, A000005(A000040(n+3)+2)]-2*n` -/
def P6156077503912699016.Spec : Prop :=
  ∀ n, P6156077503912699016.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P6651473478398843142

`A000720(A014574(n+2))-A005408(n+1)`
-/

namespace A242398.P6651473478398843142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014574 (n + 2)).toNat - A005408 (n + 1)

end

end A242398.P6651473478398843142

namespace A242398

/-- `A000720(A014574(n+2))-A005408(n+1)` -/
def P6651473478398843142.Spec : Prop :=
  ∀ n, P6651473478398843142.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P9093257955301919428

`A308754(A116958(n+1))-2*n`
-/

namespace A242398.P9093257955301919428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A116958 (n + 1)).toNat - (2 * n : ℤ)

end

end A242398.P9093257955301919428

namespace A242398

/-- `A308754(A116958(n+1))-2*n` -/
def P9093257955301919428.Spec : Prop :=
  ∀ n, P9093257955301919428.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P7444632925217167097

`A062602(A006512(n+2))-(2*n+1)`
-/

namespace A242398.P7444632925217167097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A006512 (n + 2)).toNat - (2 * n + 1 : ℤ)

end

end A242398.P7444632925217167097

namespace A242398

/-- `A062602(A006512(n+2))-(2*n+1)` -/
def P7444632925217167097.Spec : Prop :=
  ∀ n, P7444632925217167097.a n = A242398 (n + 1)

end A242398

/-! ## A242398.P18432806905050096162

`A082513(A001359(n+2))-(2*n+1)`
-/

namespace A242398.P18432806905050096162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A001359 (n + 2)).toNat - (2 * n + 1 : ℤ)

end

end A242398.P18432806905050096162

namespace A242398

/-- `A082513(A001359(n+2))-(2*n+1)` -/
def P18432806905050096162.Spec : Prop :=
  ∀ n, P18432806905050096162.a n = A242398 (n + 1)

end A242398

/-!
# A242399: Write n and 3n in ternary representation and add all trits modulo 3.

The programs for A242399, there is no canonical definition to state claims against.
-/

/-! ## A242399.P1641869012342726936

`A008586(n)-A242400(n)`
-/

namespace A242399.P1641869012342726936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n - A242400 n

end

end A242399.P1641869012342726936

/-! ## A242399.P14091030803071934200

`A008585(n)+n-A242400(n)`
-/

namespace A242399.P14091030803071934200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + ((n : ℤ) - A242400 n)

end

end A242399.P14091030803071934200

/-! ## A242399.P8258757931327466705

`A008586(n)+A008683(A008578(n+1))*A242400(n)`
-/

namespace A242399.P8258757931327466705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A008683 (A008578 (n + 1)).toNat * A242400 n

end

end A242399.P8258757931327466705

/-! ## A242399.P9995289824754542208

`A071770(3*n)`
-/

namespace A242399.P9995289824754542208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (3 * n)

end

end A242399.P9995289824754542208

/-! ## A242399.P15984283115701062845

`A047409(2*n+1)-A242400(n)`
-/

namespace A242399.P15984283115701062845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047409 (2 * n + 1) - A242400 n

end

end A242399.P15984283115701062845

/-! ## A242399.P12193317632344250001

`A060587(A004488(3*n))`
-/

namespace A242399.P12193317632344250001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 (A004488 (3 * n)).toNat

end

end A242399.P12193317632344250001

/-! ## A242399.P9466415103448104695

`A325820(∑[n+5]+5)`
-/

namespace A242399.P9466415103448104695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A242399.P9466415103448104695

/-! ## A242399.P16357709699333564985

`A325820(A034856(n+3)+6)%(5*n+1)`
-/

namespace A242399.P16357709699333564985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325820 (A034856 (n + 3) + 6).toNat) (5 * n + 1 : ℤ)

end

end A242399.P16357709699333564985

