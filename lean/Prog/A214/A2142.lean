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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214200: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index <= 4.

The programs for A214200, there is no canonical definition to state claims against.
-/

/-! ## A214200.P15535436078650106459

`A214203(n)-A214205(n)`
-/

namespace A214200.P15535436078650106459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n - A214205 n

end

end A214200.P15535436078650106459

/-! ## A214200.P10245716558336651221

`A214203(n)+A057428(n)*A214205(n)`
-/

namespace A214200.P10245716558336651221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n + A057428 n * A214205 n

end

end A214200.P10245716558336651221

/-! ## A214200.P15392925344548027032

`A214203(n)+A008683(A070268(n+1))*A214205(n)`
-/

namespace A214200.P15392925344548027032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n + A008683 (A070268 (n + 1)).toNat * A214205 n

end

end A214200.P15392925344548027032

/-! ## A214200.P3392265356510427679

`A120588(n)%A149997(n)-A214204(n)`
-/

namespace A214200.P3392265356510427679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 n) (A149997 n) - A214204 n

end

end A214200.P3392265356510427679

/-! ## A214200.P4647337945478359226

`A008482(2*n²)-A214204(n)`
-/

namespace A214200.P4647337945478359226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (2 * n ^ 2) - A214204 n

end

end A214200.P4647337945478359226

/-!
# A214201: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index >= 4.

The programs for A214201, there is no canonical definition to state claims against.
-/

/-! ## A214201.P16986788409594377059

`A214204(n)+A214202(n)`
-/

namespace A214201.P16986788409594377059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214204 n + A214202 n

end

end A214201.P16986788409594377059

/-! ## A214201.P2875553875629176667

`A214198(n)-A214199(n)`
-/

namespace A214201.P2875553875629176667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n - A214199 n

end

end A214201.P2875553875629176667

/-! ## A214201.P11022325389681606616

`A120588(n)-A025271(A028310(n))`
-/

namespace A214201.P11022325389681606616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A025271 (A028310 n).toNat

end

end A214201.P11022325389681606616

/-! ## A214201.P14243788676887581051

`abs(A115140(n))-A025271(A028310(n))`
-/

namespace A214201.P14243788676887581051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n| - A025271 (A028310 n).toNat

end

end A214201.P14243788676887581051

/-! ## A214201.P725865612827089826

`A214198(n)+A057428(n)*A214199(n)`
-/

namespace A214201.P725865612827089826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n + A057428 n * A214199 n

end

end A214201.P725865612827089826

/-!
# A214202: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index = 4.

The programs for A214202, there is no canonical definition to state claims against.
-/

/-! ## A214202.P15254968347221023621

`A214200(A028310(n))-A025271(A028310(n))`
-/

namespace A214202.P15254968347221023621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 (A028310 n).toNat - A025271 (A028310 n).toNat

end

end A214202.P15254968347221023621

/-! ## A214202.P2412205378843447869

`A214201(n)-A214204(n)`
-/

namespace A214202.P2412205378843447869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214201 n - A214204 n

end

end A214202.P2412205378843447869

/-! ## A214202.P17220594147509535768

`A214198(n)-(A214204(n)+A214199(n))`
-/

namespace A214202.P17220594147509535768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n - (A214204 n + A214199 n)

end

end A214202.P17220594147509535768

/-! ## A214202.P12626226689675025206

`(A214201(n)+A214200(n))%A115140(n)`
-/

namespace A214202.P12626226689675025206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214201 n + A214200 n) (A115140 n)

end

end A214202.P12626226689675025206

/-! ## A214202.P1876291132337831406

`A214200(n)+A214201(n)-A008482(A001105(n))`
-/

namespace A214202.P1876291132337831406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 n + (A214201 n - A008482 (A001105 n).toNat)

end

end A214202.P1876291132337831406

/-!
# A214203: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index <= 5.

The programs for A214203, there is no canonical definition to state claims against.
-/

/-! ## A214203.P9775612806867844249

`A214205(n)+A214200(n)`
-/

namespace A214203.P9775612806867844249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214205 n + A214200 n

end

end A214203.P9775612806867844249

/-! ## A214203.P3472282466902783168

`A214200(n)-A057428(n)*A214205(n)`
-/

namespace A214203.P3472282466902783168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214200 n - A057428 n * A214205 n

end

end A214203.P3472282466902783168

/-! ## A214203.P79277198658581

`A214205(n)+A120588(n)%A149997(n)-A214204(n)`
-/

namespace A214203.P79277198658581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214205 n + (Int.tmod (A120588 n) (A149997 n) - A214204 n)

end

end A214203.P79277198658581

/-! ## A214203.P15695856104335020064

`A214205(n)+A008482(2*n²)-A214204(n)`
-/

namespace A214203.P15695856104335020064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214205 n + (A008482 (2 * n ^ 2) - A214204 n)

end

end A214203.P15695856104335020064

/-! ## A214203.P3045104066428998730

`and(n², A028307(3*n+4))+A008482(2*n²)-A214204(n)`
-/

namespace A214203.P3045104066428998730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A028307 (3 * n + 4)) + (A008482 (2 * n ^ 2) - A214204 n)

end

end A214203.P3045104066428998730

/-!
# A214204: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index >= 5.

The programs for A214204, there is no canonical definition to state claims against.
-/

/-! ## A214204.P16789095361081464498

`A214201(n)-A214202(n)`
-/

namespace A214204.P16789095361081464498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214201 n - A214202 n

end

end A214204.P16789095361081464498

/-! ## A214204.P6410110094311398461

`A120588(n)-A214200(A028310(n))`
-/

namespace A214204.P6410110094311398461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A214200 (A028310 n).toNat

end

end A214204.P6410110094311398461

/-! ## A214204.P11648707243647073487

`abs(A115140(n))-A214200(A028310(n))`
-/

namespace A214204.P11648707243647073487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n| - A214200 (A028310 n).toNat

end

end A214204.P11648707243647073487

/-! ## A214204.P4767011893345300919

`A214198(n)-(A214202(n)+A214199(n))`
-/

namespace A214204.P4767011893345300919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n - (A214202 n + A214199 n)

end

end A214204.P4767011893345300919

/-! ## A214204.P15207038432014430406

`A008482(A001105(n))-A214200(n)`
-/

namespace A214204.P15207038432014430406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A001105 n).toNat - A214200 n

end

end A214204.P15207038432014430406

/-!
# A214205: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index = 5.

The programs for A214205, there is no canonical definition to state claims against.
-/

/-! ## A214205.P14052248380591966017

`A214203(n)-A214200(n)`
-/

namespace A214205.P14052248380591966017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n - A214200 n

end

end A214205.P14052248380591966017

/-! ## A214205.P5073804145624282852

`A214203(n)+A057428(n)*A214200(n)`
-/

namespace A214205.P5073804145624282852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n + A057428 n * A214200 n

end

end A214205.P5073804145624282852

/-! ## A214205.P3955882077460259240

`A214203(n)-(A120588(n)%A149997(n)-A214204(n))`
-/

namespace A214205.P3955882077460259240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n - (Int.tmod (A120588 n) (A149997 n) - A214204 n)

end

end A214205.P3955882077460259240

/-! ## A214205.P9363412765353883575

`A214203(n)-(A008482(2*n²)-A214204(n))`
-/

namespace A214205.P9363412765353883575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214203 n - (A008482 (2 * n ^ 2) - A214204 n)

end

end A214205.P9363412765353883575

/-! ## A214205.P5626640211706373143

`and(n², A028307(3*n+4))`
-/

namespace A214205.P5626640211706373143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A028307 (3 * n + 4))

end

end A214205.P5626640211706373143

/-!
# A214206: a(n) = largest m such that m*(m+1)/2 <= 14*n.

The programs for A214206, the canonical program `A214206.P17982102642528008045` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214206 has offset 0).

The definition of A214206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214206.P17982102642528008045

`A003056(14*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214206

/-- `A003056(14*n)` -/
def P17982102642528008045.Spec : Prop :=
  ∀ n, P17982102642528008045.a n = A214206 n

theorem P17982102642528008045.correct : P17982102642528008045.Spec := by
  intro n
  simp only [A214206]

end A214206

/-! ## A214206.P3137499091762844545

`round(sqrt(28*n+1))-1`
-/

namespace A214206.P3137499091762844545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (28 * n + 1 : ℝ)) - 1

end

end A214206.P3137499091762844545

namespace A214206

/-- `round(sqrt(28*n+1))-1` -/
def P3137499091762844545.Spec : Prop :=
  ∀ n, P3137499091762844545.a n = A214206 n

end A214206

/-! ## A214206.P5236524257114484537

`A259361(A135628(n))`
-/

namespace A214206.P5236524257114484537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A135628 n).toNat

end

end A214206.P5236524257114484537

namespace A214206

/-- `A259361(A135628(n))` -/
def P5236524257114484537.Spec : Prop :=
  ∀ n, P5236524257114484537.a n = A214206 n

end A214206

/-! ## A214206.P17581034025715050942

`A259361(A161714(n))`
-/

namespace A214206.P17581034025715050942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A161714 n).toNat

end

end A214206.P17581034025715050942

namespace A214206

/-- `A259361(A161714(n))` -/
def P17581034025715050942.Spec : Prop :=
  ∀ n, P17581034025715050942.a n = A214206 n

end A214206

/-! ## A214206.P7994110614982734906

`A259361(A051868(2*n+1)-A051868(2*n))`
-/

namespace A214206.P7994110614982734906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A051868 (2 * n + 1) - A051868 (2 * n)).toNat

end

end A214206.P7994110614982734906

namespace A214206

/-- `A259361(A051868(2*n+1)-A051868(2*n))` -/
def P7994110614982734906.Spec : Prop :=
  ∀ n, P7994110614982734906.a n = A214206 n

end A214206

/-!
# A214207: Replace the terms of A213975 with their ranks in A007931.

The programs for A214207, there is no canonical definition to state claims against.
-/

/-! ## A214207.P9630004195957973182

`A214208(n)+a(n-1)` with `a(0)=1`
-/

namespace A214207.P9630004195957973182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214208 n + a (n - 1)

end

end A214207.P9630004195957973182

/-! ## A214207.P7857009866032086699

`∑[A214208(A000007(n)+n)]`
-/

namespace A214207.P7857009866032086699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214207.P7857009866032086699

/-! ## A214207.P5548357295410157795

`∑[A214208(n+1)]+1-A214208(n+1)`
-/

namespace A214207.P5548357295410157795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A214208 (n + 1))

end

end A214207.P5548357295410157795

/-! ## A214207.P15769513297613988255

`∑[A214208(A065033(A004273(n)))]`
-/

namespace A214207.P15769513297613988255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214207.P15769513297613988255

/-! ## A214207.P810511533897747566

`∑[A214208(A065033(2*n))]`
-/

namespace A214207.P810511533897747566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214207.P810511533897747566

/-! ## A214207.P18393347608992234033

`∑[A214208(A014473(∑[n]+1)+1)]`
-/

namespace A214207.P18393347608992234033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (A014473 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214207.P18393347608992234033

/-! ## A214207.P5165990637907560201

`∑[A214208(A003056(A000124(n)))]`
-/

namespace A214207.P5165990637907560201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214207.P5165990637907560201

/-! ## A214207.P4107863500509665317

`∑[A214208(A151878(n)+n)]`
-/

namespace A214207.P4107863500509665317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (A151878 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214207.P4107863500509665317

/-!
# A214208: First differences of A214207.

The programs for A214208, there is no canonical definition to state claims against.
-/

/-! ## A214208.P5897323134933236784

`Δ[A214207(n+1)]`
-/

namespace A214208.P5897323134933236784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214208.P5897323134933236784

/-! ## A214208.P9834112177831476392

`A214207(n+2)-A214207(n+1)`
-/

namespace A214208.P9834112177831476392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (n + 2) - A214207 (n + 1)

end

end A214208.P9834112177831476392

/-! ## A214208.P4664512678121908462

`Δ[record[A214207(A324346(n))]]`
-/

namespace A214208.P4664512678121908462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214208.P4664512678121908462

/-! ## A214208.P14922354701965720675

`abs(Δ[A214207(A029579(2*n))])`
-/

namespace A214208.P14922354701965720675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A214208.P14922354701965720675

/-! ## A214208.P11501038191277382299

`Δ[A214207(A029579(2*n))-A033999(2*n)]`
-/

namespace A214208.P11501038191277382299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (A029579 (2 * n)).toNat - A033999 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214208.P11501038191277382299

/-! ## A214208.P7395836299646928924

`A000027(Δ[A214207(1-(n-2*n))])`
-/

namespace A214208.P7395836299646928924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A214208.P7395836299646928924

/-!
# A214209: Numbers appearing in A214208 excluding powers 2^i with i>0.

The programs for A214209, there is no canonical definition to state claims against.
-/

/-! ## A214209.P11506694230046726968

`A214208(∑[n+2])`
-/

namespace A214209.P11506694230046726968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214209.P11506694230046726968

/-! ## A214209.P16253560537957735342

`record[A214208(n+1)]`
-/

namespace A214209.P16253560537957735342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214209.P16253560537957735342

/-! ## A214209.P3223535589980678606

`record[Δ[A214207(n+1)]]`
-/

namespace A214209.P3223535589980678606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214209.P3223535589980678606

/-! ## A214209.P14385358679885578728

`floor(A214318(n+1)/2)+1`
-/

namespace A214209.P14385358679885578728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214318 (n + 1) : ℚ) / 2⌋ + 1

end

end A214209.P14385358679885578728

/-! ## A214209.P917227653188437735

`2*a(n-1)-A014677(n)` with `a(0)=1`
-/

namespace A214209.P917227653188437735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A014677 n

end

end A214209.P917227653188437735

/-!
# A214210: Trebled Thue-Morse sequence: the A010060 sequence replacing 0 with 0,0,0 and 1 with 1,1,1.

The programs for A214210, the canonical program `A214210.P17426598951677150692` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214210 has offset 0).

The definition of A214210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214210.P17426598951677150692

`floor(a(floor(n/2))+n/3)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214210

/-- `floor(a(floor(n/2))+n/3)%2` -/
def P17426598951677150692.Spec : Prop :=
  ∀ n, P17426598951677150692.a n = A214210 n

theorem P17426598951677150692.correct : P17426598951677150692.Spec := by
  intro n
  simp only [A214210]

end A214210

/-! ## A214210.P15335294845504716984

`(floor(n/3)-a(floor(n/2)))%2` with `a(0)=0`
-/

namespace A214210.P15335294845504716984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (⌊(n : ℚ) / 3⌋ - a ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A214210.P15335294845504716984

namespace A214210

/-- `(floor(n/3)-a(floor(n/2)))%2` -/
def P15335294845504716984.Spec : Prop :=
  ∀ n, P15335294845504716984.a n = A214210 n

end A214210

/-! ## A214210.P14339370576829967065

`and(1, floor(a(floor(n/2))+n/3))` with `a(0)=0`
-/

namespace A214210.P14339370576829967065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 ⌊(a ⌊(n : ℚ) / 2⌋.toNat : ℚ) + (n : ℚ) / 3⌋

end

end A214210.P14339370576829967065

namespace A214210

/-- `and(1, floor(a(floor(n/2))+n/3))` -/
def P14339370576829967065.Spec : Prop :=
  ∀ n, P14339370576829967065.a n = A214210 n

end A214210

/-! ## A214210.P10957106674261523617

`∑[val(comp[∑[n%3+1]]+1, 2)]%2`
-/

namespace A214210.P10957106674261523617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A214210.P10957106674261523617

namespace A214210

/-- `∑[val(comp[∑[n%3+1]]+1, 2)]%2` -/
def P10957106674261523617.Spec : Prop :=
  ∀ n, (P10957106674261523617.a n : ℤ) = A214210 n

end A214210

/-! ## A214210.P17972646948589615138

`∑[∑{e}[xor(n*(gcd(3, n)-2), -n), #]]%2`
-/

namespace A214210.P17972646948589615138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * ((Nat.gcd 3 n : ℤ) - 2)) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A214210.P17972646948589615138

namespace A214210

/-- `∑[∑{e}[xor(n*(gcd(3, n)-2), -n), #]]%2` -/
def P17972646948589615138.Spec : Prop :=
  ∀ n, (P17972646948589615138.a n : ℤ) = A214210 n

end A214210

/-! ## A214210.P5133337256291066622

`∑[(1-n²%3)*∑{e}[xor(n, -n), #]]%2`
-/

namespace A214210.P5133337256291066622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n ^ 2 % 3 : ℕ) : ℤ)) * ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A214210.P5133337256291066622

namespace A214210

/-- `∑[(1-n²%3)*∑{e}[xor(n, -n), #]]%2` -/
def P5133337256291066622.Spec : Prop :=
  ∀ n, P5133337256291066622.a n = A214210 n

end A214210

/-! ## A214210.P2201900144712000572

`A082446(2*n)`
-/

namespace A214210.P2201900144712000572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082446 (2 * n)

end

end A214210.P2201900144712000572

namespace A214210

/-- `A082446(2*n)` -/
def P2201900144712000572.Spec : Prop :=
  ∀ n, P2201900144712000572.a n = A214210 n

end A214210

/-! ## A214210.P8191773187605616237

`A073750(n)%2`
-/

namespace A214210.P8191773187605616237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073750 n) 2

end

end A214210.P8191773187605616237

namespace A214210

/-- `A073750(n)%2` -/
def P8191773187605616237.Spec : Prop :=
  ∀ n, P8191773187605616237.a n = A214210 n

end A214210

/-! ## A214210.P9368951156752034222

`A010060(floor(n/3))`
-/

namespace A214210.P9368951156752034222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ⌊(n : ℚ) / 3⌋.toNat

end

end A214210.P9368951156752034222

namespace A214210

/-- `A010060(floor(n/3))` -/
def P9368951156752034222.Spec : Prop :=
  ∀ n, P9368951156752034222.a n = A214210 n

end A214210

/-! ## A214210.P8962326206477849097

`log2(A001285(floor(n/3)))`
-/

namespace A214210.P8962326206477849097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001285 ⌊(n : ℚ) / 3⌋.toNat : ℝ)

end

end A214210.P8962326206477849097

namespace A214210

/-- `log2(A001285(floor(n/3)))` -/
def P8962326206477849097.Spec : Prop :=
  ∀ n, P8962326206477849097.a n = (A214210 n : ℝ)

end A214210

/-! ## A214210.P9682689756660141572

`1-A082446(Δ[n²])`
-/

namespace A214210.P9682689756660141572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A214210.P9682689756660141572

namespace A214210

/-- `1-A082446(Δ[n²])` -/
def P9682689756660141572.Spec : Prop :=
  ∀ n, P9682689756660141572.a n = A214210 n

end A214210

/-! ## A214210.P15427689710139550531

`1-A010059(floor(n/3))`
-/

namespace A214210.P15427689710139550531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 ⌊(n : ℚ) / 3⌋.toNat

end

end A214210.P15427689710139550531

namespace A214210

/-- `1-A010059(floor(n/3))` -/
def P15427689710139550531.Spec : Prop :=
  ∀ n, P15427689710139550531.a n = A214210 n

end A214210

/-! ## A214210.P11713206712469570363

`A255817(4*floor(n/3))`
-/

namespace A214210.P11713206712469570363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255817 (4 * ⌊(n : ℚ) / 3⌋).toNat

end

end A214210.P11713206712469570363

namespace A214210

/-- `A255817(4*floor(n/3))` -/
def P11713206712469570363.Spec : Prop :=
  ∀ n, P11713206712469570363.a n = A214210 n

end A214210

/-! ## A214210.P5999304973328739465

`A000120(floor(n/3))%2`
-/

namespace A214210.P5999304973328739465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 ⌊(n : ℚ) / 3⌋.toNat) 2

end

end A214210.P5999304973328739465

namespace A214210

/-- `A000120(floor(n/3))%2` -/
def P5999304973328739465.Spec : Prop :=
  ∀ n, P5999304973328739465.a n = A214210 n

end A214210

/-! ## A214210.P7842677623466881833

`A005187(floor(n/3))%2`
-/

namespace A214210.P7842677623466881833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 ⌊(n : ℚ) / 3⌋.toNat) 2

end

end A214210.P7842677623466881833

namespace A214210

/-- `A005187(floor(n/3))%2` -/
def P7842677623466881833.Spec : Prop :=
  ∀ n, P7842677623466881833.a n = A214210 n

end A214210

/-! ## A214210.P11157941760247590649

`A006068(floor(n/3))%2`
-/

namespace A214210.P11157941760247590649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006068 ⌊(n : ℚ) / 3⌋.toNat) 2

end

end A214210.P11157941760247590649

namespace A214210

/-- `A006068(floor(n/3))%2` -/
def P11157941760247590649.Spec : Prop :=
  ∀ n, P11157941760247590649.a n = A214210 n

end A214210

/-! ## A214210.P9267040718396194614

`and(1, A004718(floor(n/3)))`
-/

namespace A214210.P9267040718396194614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004718 ⌊(n : ℚ) / 3⌋.toNat)

end

end A214210.P9267040718396194614

namespace A214210

/-- `and(1, A004718(floor(n/3)))` -/
def P9267040718396194614.Spec : Prop :=
  ∀ n, P9267040718396194614.a n = A214210 n

end A214210

/-! ## A214210.P6007645272927274752

`A356447(2*n+1)%2`
-/

namespace A214210.P6007645272927274752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356447 (2 * n + 1)) 2

end

end A214210.P6007645272927274752

namespace A214210

/-- `A356447(2*n+1)%2` -/
def P6007645272927274752.Spec : Prop :=
  ∀ n, P6007645272927274752.a n = A214210 n

end A214210

/-! ## A214210.P13424513324423261852

`A370662(2*n+1)%2`
-/

namespace A214210.P13424513324423261852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370662 (2 * n + 1)) 2

end

end A214210.P13424513324423261852

namespace A214210

/-- `A370662(2*n+1)%2` -/
def P13424513324423261852.Spec : Prop :=
  ∀ n, P13424513324423261852.a n = A214210 n

end A214210

/-! ## A214210.P14106246682074523616

`and(2, A042951(2*n))/2`
-/

namespace A214210.P14106246682074523616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A042951 (2 * n)) : ℚ) / 2

end

end A214210.P14106246682074523616

namespace A214210

/-- `and(2, A042951(2*n))/2` -/
def P14106246682074523616.Spec : Prop :=
  ∀ n, P14106246682074523616.a n = (A214210 n : ℚ)

end A214210

/-!
# A214211: Doubled Fibonacci word: the A003842 sequence replacing 1 with 1,1 and 2 with 2,2.

The programs for A214211, the canonical program `A214211.P5967296195785840647` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214211 has offset 0).

The definition of A214211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214211.P5967296195785840647

`2-Δ[n-a(a(n-2))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214211

/-- `2-Δ[n-a(a(n-2))]` -/
def P5967296195785840647.Spec : Prop :=
  ∀ n, P5967296195785840647.a n = A214211 n

theorem P5967296195785840647.correct : P5967296195785840647.Spec := by
  intro n
  simp only [A214211]

end A214211

/-! ## A214211.P13456609625063036400

`A267860(or(1, n))`
-/

namespace A214211.P13456609625063036400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267860 (Nat.lor 1 n)

end

end A214211.P13456609625063036400

namespace A214211

/-- `A267860(or(1, n))` -/
def P13456609625063036400.Spec : Prop :=
  ∀ n, P13456609625063036400.a n = A214211 n

end A214211

/-! ## A214211.P1413078430999380802

`abs(Δ[A267860(n)])`
-/

namespace A214211.P1413078430999380802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A214211.P1413078430999380802

namespace A214211

/-- `abs(Δ[A267860(n)])` -/
def P1413078430999380802.Spec : Prop :=
  ∀ n, P1413078430999380802.a n = A214211 n

end A214211

/-! ## A214211.P3865564331643039904

`A003842(floor(n/2))`
-/

namespace A214211.P3865564331643039904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 ⌊(n : ℚ) / 2⌋.toNat

end

end A214211.P3865564331643039904

namespace A214211

/-- `A003842(floor(n/2))` -/
def P3865564331643039904.Spec : Prop :=
  ∀ n, P3865564331643039904.a n = A214211 n

end A214211

/-! ## A214211.P10295235415090072269

`2-Δ[A163801(n)]`
-/

namespace A214211.P10295235415090072269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A214211.P10295235415090072269

namespace A214211

/-- `2-Δ[A163801(n)]` -/
def P10295235415090072269.Spec : Prop :=
  ∀ n, P10295235415090072269.a n = A214211 n

end A214211

/-! ## A214211.P2268168891728545567

`A317203(or(1, n)+1)`
-/

namespace A214211.P2268168891728545567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317203 (Nat.lor 1 n + 1)

end

end A214211.P2268168891728545567

namespace A214211

/-- `A317203(or(1, n)+1)` -/
def P2268168891728545567.Spec : Prop :=
  ∀ n, P2268168891728545567.a n = A214211 n

end A214211

/-! ## A214211.P9807283268729655305

`A317203(gcd(2, n)+n)`
-/

namespace A214211.P9807283268729655305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317203 (Nat.gcd 2 n + n)

end

end A214211.P9807283268729655305

namespace A214211

/-- `A317203(gcd(2, n)+n)` -/
def P9807283268729655305.Spec : Prop :=
  ∀ n, P9807283268729655305.a n = A214211 n

end A214211

/-! ## A214211.P13451836429767090333

`A003849(floor(n/2))+1`
-/

namespace A214211.P13451836429767090333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A214211.P13451836429767090333

namespace A214211

/-- `A003849(floor(n/2))+1` -/
def P13451836429767090333.Spec : Prop :=
  ∀ n, P13451836429767090333.a n = A214211 n

end A214211

/-! ## A214211.P8306840847896779583

`2-A005614(floor(n/2))`
-/

namespace A214211.P8306840847896779583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005614 ⌊(n : ℚ) / 2⌋.toNat

end

end A214211.P8306840847896779583

namespace A214211

/-- `2-A005614(floor(n/2))` -/
def P8306840847896779583.Spec : Prop :=
  ∀ n, P8306840847896779583.a n = A214211 n

end A214211

/-! ## A214211.P4795878487339078086

`2-A114986(floor(n/2)+1)`
-/

namespace A214211.P4795878487339078086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A114986 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A214211.P4795878487339078086

namespace A214211

/-- `2-A114986(floor(n/2)+1)` -/
def P4795878487339078086.Spec : Prop :=
  ∀ n, P4795878487339078086.a n = A214211 n

end A214211

/-! ## A214211.P5219560333449216366

`3-A001468(floor(n/2)+1)`
-/

namespace A214211.P5219560333449216366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001468 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A214211.P5219560333449216366

namespace A214211

/-- `3-A001468(floor(n/2)+1)` -/
def P5219560333449216366.Spec : Prop :=
  ∀ n, P5219560333449216366.a n = A214211 n

end A214211

/-! ## A214211.P8881046338974395142

`A000032(Δ[n-a(a(n-2))])` with `a(0)=0, a(1)=1`
-/

namespace A214211.P8881046338974395142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A214211.P8881046338974395142

namespace A214211

/-- `A000032(Δ[n-a(a(n-2))])` -/
def P8881046338974395142.Spec : Prop :=
  ∀ n, P8881046338974395142.a n = A214211 n

end A214211

/-! ## A214211.P2608149526634826833

`ceil(A003849(n-∑[n%2])/2)+1`
-/

namespace A214211.P2608149526634826833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003849 (n - ∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉ + 1

end

end A214211.P2608149526634826833

namespace A214211

/-- `ceil(A003849(n-∑[n%2])/2)+1` -/
def P2608149526634826833.Spec : Prop :=
  ∀ n, P2608149526634826833.a n = A214211 n

end A214211

/-! ## A214211.P12345120769642639031

`A267860(A109613(n))`
-/

namespace A214211.P12345120769642639031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267860 (A109613 n).toNat

end

end A214211.P12345120769642639031

namespace A214211

/-- `A267860(A109613(n))` -/
def P12345120769642639031.Spec : Prop :=
  ∀ n, P12345120769642639031.a n = A214211 n

end A214211

/-! ## A214211.P15132161191600019993

`3-A014675(A004526(n))`
-/

namespace A214211.P15132161191600019993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A014675 (A004526 n).toNat

end

end A214211.P15132161191600019993

namespace A214211

/-- `3-A014675(A004526(n))` -/
def P15132161191600019993.Spec : Prop :=
  ∀ n, P15132161191600019993.a n = A214211 n

end A214211

/-! ## A214211.P1051841643067261289

`A001468(Δ[A163801(n)]+1)`
-/

namespace A214211.P1051841643067261289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (f1 (n + 1) - f1 n + 1).toNat

end

end A214211.P1051841643067261289

namespace A214211

/-- `A001468(Δ[A163801(n)]+1)` -/
def P1051841643067261289.Spec : Prop :=
  ∀ n, P1051841643067261289.a n = A214211 n

end A214211

/-! ## A214211.P11826353285575199357

`2/A001468(Δ[A163801(n)])`
-/

namespace A214211.P11826353285575199357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001468 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A214211.P11826353285575199357

namespace A214211

/-- `2/A001468(Δ[A163801(n)])` -/
def P11826353285575199357.Spec : Prop :=
  ∀ n, P11826353285575199357.a n = (A214211 n : ℚ)

end A214211

/-! ## A214211.P16940223164186840120

`2/A001468(A110654(n+1))`
-/

namespace A214211.P16940223164186840120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001468 (A110654 (n + 1)).toNat : ℚ)

end

end A214211.P16940223164186840120

namespace A214211

/-- `2/A001468(A110654(n+1))` -/
def P16940223164186840120.Spec : Prop :=
  ∀ n, P16940223164186840120.a n = (A214211 n : ℚ)

end A214211

/-!
# A214212: Number of right special factors of length n in the Thue-Morse sequence A010060.

The programs for A214212, the canonical program `A214212.P17819041144520818268` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214212 has offset 0).

The definition of A214212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214212.P4409223712778980638

`A005942(n+1)-A005942(n)`
-/

namespace A214212.P4409223712778980638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) - A005942 n

end

end A214212.P4409223712778980638

namespace A214212

/-- `A005942(n+1)-A005942(n)` -/
def P4409223712778980638.Spec : Prop :=
  ∀ n, P4409223712778980638.a n = A214212 n

end A214212

/-! ## A214212.P17819041144520818268

`a(∑[n%2])` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214212

/-- `a(∑[n%2])` -/
def P17819041144520818268.Spec : Prop :=
  ∀ n, (P17819041144520818268.a n : ℤ) = A214212 n

theorem P17819041144520818268.correct : P17819041144520818268.Spec := by
  intro n
  simp only [A214212]

end A214212

/-! ## A214212.P9524711705257078316

`a(∑[and(1, n)])` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A214212.P9524711705257078316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214212.P9524711705257078316

namespace A214212

/-- `a(∑[and(1, n)])` -/
def P9524711705257078316.Spec : Prop :=
  ∀ n, (P9524711705257078316.a n : ℤ) = A214212 n

theorem P9524711705257078316.correct : P9524711705257078316.Spec := by
  intro n
  simp only [A214212, Nat.add_sub_cancel, A214212.P9524711705257078316.f1, A214212.P9524711705257078316.a, A214212.P17819041144520818268.f1, A214212.P17819041144520818268.a, SequenceMachineLib.memo_apply]
  try simp

end A214212

/-! ## A214212.P3831768063579623986

`a(floor(∑[n]/n))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A214212.P3831768063579623986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)⌋.toNat

end

end A214212.P3831768063579623986

namespace A214212

/-- `a(floor(∑[n]/n))` -/
def P3831768063579623986.Spec : Prop :=
  ∀ n, (P3831768063579623986.a n : ℤ) = A214212 n

end A214212

/-! ## A214212.P8496367813960467966

`floor(a(floor((n+1)/2)))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A214212.P8496367813960467966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A214212.P8496367813960467966

namespace A214212

/-- `floor(a(floor((n+1)/2)))` -/
def P8496367813960467966.Spec : Prop :=
  ∀ n, (P8496367813960467966.a n : ℤ) = A214212 n

end A214212

/-! ## A214212.P5781004180643837579

`Δ[A005942(n)]`
-/

namespace A214212.P5781004180643837579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214212.P5781004180643837579

namespace A214212

/-- `Δ[A005942(n)]` -/
def P5781004180643837579.Spec : Prop :=
  ∀ n, P5781004180643837579.a n = A214212 n

end A214212

/-! ## A214212.P11142872799357959901

`gcd(2^ceil(log2(n+1)), A005942(2*n))`
-/

namespace A214212.P11142872799357959901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) (A005942 (2 * n))

end

end A214212.P11142872799357959901

namespace A214212

/-- `gcd(2^ceil(log2(n+1)), A005942(2*n))` -/
def P11142872799357959901.Spec : Prop :=
  ∀ n, (P11142872799357959901.a n : ℤ) = A214212 n

end A214212

/-! ## A214212.P17345085311630248260

`1-(A005942(2*n)-A214214(2*n))`
-/

namespace A214212.P17345085311630248260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A005942 (2 * n) - A214214 (2 * n))

end

end A214212.P17345085311630248260

namespace A214212

/-- `1-(A005942(2*n)-A214214(2*n))` -/
def P17345085311630248260.Spec : Prop :=
  ∀ n, P17345085311630248260.a n = A214212 n

end A214212

/-! ## A214212.P8341938890330960933

`A159782(n*A159782(2*n))`
-/

namespace A214212.P8341938890330960933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 ((n : ℤ) * A159782 (2 * n)).toNat

end

end A214212.P8341938890330960933

namespace A214212

/-- `A159782(n*A159782(2*n))` -/
def P8341938890330960933.Spec : Prop :=
  ∀ n, P8341938890330960933.a n = A214212 n

end A214212

/-! ## A214212.P10981827600053243123

`gcd(4, A208889(2*n+1))`
-/

namespace A214212.P10981827600053243123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A208889 (2 * n + 1))

end

end A214212.P10981827600053243123

namespace A214212

/-- `gcd(4, A208889(2*n+1))` -/
def P10981827600053243123.Spec : Prop :=
  ∀ n, (P10981827600053243123.a n : ℤ) = A214212 n

end A214212

/-!
# A214214: Partial sums of A214212.

The programs for A214214, the canonical program `A214214.P5537366204146456546` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214214 has offset 0).

The definition of A214214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214214.P5537366204146456546

`∑[abs(a(floor(∑[n]/n)))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214214

/-- `∑[abs(a(floor(∑[n]/n)))]` -/
def P5537366204146456546.Spec : Prop :=
  ∀ n, (P5537366204146456546.a n : ℤ) = A214214 n

theorem P5537366204146456546.correct : P5537366204146456546.Spec := by
  intro n
  simp only [A214214]

end A214214

/-! ## A214214.P13650743262819898619

`∑[dr(a(floor(∑[n]/n)))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A214214.P13650743262819898619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n : ℚ)⌋.toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214214.P13650743262819898619

namespace A214214

/-- `∑[dr(a(floor(∑[n]/n)))]` -/
def P13650743262819898619.Spec : Prop :=
  ∀ n, (P13650743262819898619.a n : ℤ) = A214214 n

end A214214

/-! ## A214214.P14771650590326239122

`∑[floor(a(floor(∑[n]/n)))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A214214.P14771650590326239122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n f1 =>
  f1 ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214214.P14771650590326239122

namespace A214214

/-- `∑[floor(a(floor(∑[n]/n)))]` -/
def P14771650590326239122.Spec : Prop :=
  ∀ n, (P14771650590326239122.a n : ℤ) = A214214 n

theorem P14771650590326239122.correct : P14771650590326239122.Spec := by
  intro n
  simp only [A214214, Nat.add_sub_cancel, A214214.P14771650590326239122.f2, A214214.P14771650590326239122.f1, A214214.P14771650590326239122.a, A214214.P5537366204146456546.f2, A214214.P5537366204146456546.f1, A214214.P5537366204146456546.a, SequenceMachineLib.memo_apply]

end A214214

/-! ## A214214.P3824808597310681347

`∑[A214212(n)]`
-/

namespace A214214.P3824808597310681347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214214.P3824808597310681347

namespace A214214

/-- `∑[A214212(n)]` -/
def P3824808597310681347.Spec : Prop :=
  ∀ n, P3824808597310681347.a n = A214214 n

end A214214

/-! ## A214214.P10854079559809554093

`A005942(n)+A214212(n)-1`
-/

namespace A214214.P10854079559809554093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n + (A214212 n - 1)

end

end A214214.P10854079559809554093

namespace A214214

/-- `A005942(n)+A214212(n)-1` -/
def P10854079559809554093.Spec : Prop :=
  ∀ n, P10854079559809554093.a n = A214214 n

end A214214

/-! ## A214214.P10582888359247341857

`∑[abs(Δ[A005942(n)])]`
-/

namespace A214214.P10582888359247341857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214214.P10582888359247341857

namespace A214214

/-- `∑[abs(Δ[A005942(n)])]` -/
def P10582888359247341857.Spec : Prop :=
  ∀ n, P10582888359247341857.a n = A214214 n

end A214214

/-! ## A214214.P12022173389429262026

`A005942(n+1)-1`
-/

namespace A214214.P12022173389429262026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) - 1

end

end A214214.P12022173389429262026

namespace A214214

/-- `A005942(n+1)-1` -/
def P12022173389429262026.Spec : Prop :=
  ∀ n, P12022173389429262026.a n = A214214 n

end A214214

/-! ## A214214.P8179787533850217163

`∑[A005940(Δ[A005942(n)])]`
-/

namespace A214214.P8179787533850217163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214214.P8179787533850217163

namespace A214214

/-- `∑[A005940(Δ[A005942(n)])]` -/
def P8179787533850217163.Spec : Prop :=
  ∀ n, P8179787533850217163.a n = A214214 n

end A214214

/-! ## A214214.P147233734879059692

`∑[A005941(Δ[A005942(n)])]`
-/

namespace A214214.P147233734879059692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214214.P147233734879059692

namespace A214214

/-- `∑[A005941(Δ[A005942(n)])]` -/
def P147233734879059692.Spec : Prop :=
  ∀ n, P147233734879059692.a n = A214214 n

end A214214

/-! ## A214214.P9820594863251881488

`A111967(A020639(2*(n+1))²)+A005942(n+1)`
-/

namespace A214214.P9820594863251881488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 (A020639 (2 * (n + 1)) ^ 2).toNat + A005942 (n + 1)

end

end A214214.P9820594863251881488

namespace A214214

/-- `A111967(A020639(2*(n+1))²)+A005942(n+1)` -/
def P9820594863251881488.Spec : Prop :=
  ∀ n, P9820594863251881488.a n = A214214 n

end A214214

/-! ## A214214.P7303542243359782917

`or(1, abs(A294456(Δ[n²])-1))`
-/

namespace A214214.P7303542243359782917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |A294456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1|

end

end A214214.P7303542243359782917

namespace A214214

/-- `or(1, abs(A294456(Δ[n²])-1))` -/
def P7303542243359782917.Spec : Prop :=
  ∀ n, P7303542243359782917.a n = A214214 n

end A214214

/-! ## A214214.P10553839798742329076

`A014681(A005942(n+1))`
-/

namespace A214214.P10553839798742329076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A005942 (n + 1)).toNat

end

end A214214.P10553839798742329076

namespace A214214

/-- `A014681(A005942(n+1))` -/
def P10553839798742329076.Spec : Prop :=
  ∀ n, P10553839798742329076.a n = A214214 n

end A214214

/-!
# A214215: List of subwords (or factors) of the Thue-Morse "1,2"-word A001285.

The programs for A214215, there is no canonical definition to state claims against.
-/

/-! ## A214215.P10259708166296321071

`A376677(n+1)+A079979(A157150(n))`
-/

namespace A214215.P10259708166296321071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1) + A079979 (A157150 n).toNat

end

end A214215.P10259708166296321071

/-!
# A214218: List of words over {1,2} with equal numbers of 1's and 2's.

The programs for A214218, there is no canonical definition to state claims against.
-/

/-! ## A214218.P10414666664494309813

`A214488(n+1)-A368804(n+1)`
-/

namespace A214218.P10414666664494309813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) - A368804 (n + 1)

end

end A214218.P10414666664494309813

/-! ## A214218.P3468159660294152879

`(3*A214524(n+1))%A214531(n+1)`
-/

namespace A214218.P3468159660294152879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A214524 (n + 1)) (A214531 (n + 1))

end

end A214218.P3468159660294152879

/-! ## A214218.P8832036416426131435

`A214488(n+1)+A214488(n+1)-A214521(n+1)`
-/

namespace A214218.P8832036416426131435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214488 (n + 1) - A214521 (n + 1))

end

end A214218.P8832036416426131435

/-! ## A214218.P9365265794197513654

`A214488(n+1)+A214522(n+1)-A214524(n+1)`
-/

namespace A214218.P9365265794197513654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214522 (n + 1) - A214524 (n + 1))

end

end A214218.P9365265794197513654

/-! ## A214218.P1729261074474176944

`A214488(n+1)+A214524(n+1)-A214530(n+1)`
-/

namespace A214218.P1729261074474176944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214524 (n + 1) - A214530 (n + 1))

end

end A214218.P1729261074474176944

/-! ## A214218.P16419741527419948049

`A214488(n+1)+A214530(n+1)-A214531(n+1)`
-/

namespace A214218.P16419741527419948049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214530 (n + 1) - A214531 (n + 1))

end

end A214218.P16419741527419948049

/-! ## A214218.P15252298887781736629

`A214488(n+1)+A214531(n+1)-A214532(n+1)`
-/

namespace A214218.P15252298887781736629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214531 (n + 1) - A214532 (n + 1))

end

end A214218.P15252298887781736629

/-! ## A214218.P14983921185951186284

`A214521(n+1)+A214521(n+1)-A214524(n+1)`
-/

namespace A214218.P14983921185951186284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214521 (n + 1) - A214524 (n + 1))

end

end A214218.P14983921185951186284

/-! ## A214218.P11659867463345122403

`A214521(n+1)+A214522(n+1)-A214530(n+1)`
-/

namespace A214218.P11659867463345122403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214522 (n + 1) - A214530 (n + 1))

end

end A214218.P11659867463345122403

/-! ## A214218.P17266145056791023696

`A214521(n+1)+A214530(n+1)-A214532(n+1)`
-/

namespace A214218.P17266145056791023696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214530 (n + 1) - A214532 (n + 1))

end

end A214218.P17266145056791023696

/-! ## A214218.P11830090026229145775

`A214522(n+1)+A214522(n+1)-A214531(n+1)`
-/

namespace A214218.P11830090026229145775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214522 (n + 1) - A214531 (n + 1))

end

end A214218.P11830090026229145775

/-! ## A214218.P13099136728703765744

`A007931(A258410(n+1))`
-/

namespace A214218.P13099136728703765744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A258410 (n + 1)).toNat

end

end A214218.P13099136728703765744

/-! ## A214218.P8507818052314303776

`A007931(A031448(n+2)-1)`
-/

namespace A214218.P8507818052314303776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A031448 (n + 2) - 1).toNat

end

end A214218.P8507818052314303776

/-! ## A214218.P2249115193552758897

`A007931(eq[A153152(n), A298847(n+1)])`
-/

namespace A214218.P2249115193552758897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A214218.P2249115193552758897

/-! ## A214218.P15181625101216820675

`A072961(A258410(n+1))-A214488(n+1)`
-/

namespace A214218.P15181625101216820675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (A258410 (n + 1)).toNat - A214488 (n + 1)

end

end A214218.P15181625101216820675

/-!
# A214219: The least prime p such that sum(k=0...m, p^(k)) is divisible by m+1 for all m < n; where p^(k) denotes the k-th next larger prime: p^(0)=p, p^(1)=nextprime(p), etc.

The programs for A214219, there is no canonical definition to state claims against.
-/

/-! ## A214219.P12976960790355407580

`A081706(2^round(ϕ^n/sqrt(5))²)`
-/

namespace A214219.P12976960790355407580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2 : ℤ))).toNat

end

end A214219.P12976960790355407580

/-!
# A214221: (n^3)-th Lucas number (beginning at 2).

The programs for A214221, the canonical program `A214221.P7223737203354158173` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214221 has offset 0).

The definition of A214221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214221.P7223737203354158173

`A000032(A000578(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214221

/-- `A000032(A000578(n))` -/
def P7223737203354158173.Spec : Prop :=
  ∀ n, P7223737203354158173.a n = A214221 n

theorem P7223737203354158173.correct : P7223737203354158173.Spec := by
  intro n
  simp only [A214221]

end A214221

/-! ## A214221.P4387083504295083972

`A000032(n^3)`
-/

namespace A214221.P4387083504295083972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n ^ 3)

end

end A214221.P4387083504295083972

namespace A214221

/-- `A000032(n^3)` -/
def P4387083504295083972.Spec : Prop :=
  ∀ n, P4387083504295083972.a n = A214221 n

end A214221

/-! ## A214221.P8639868110612644178

`A303427(2*n^3)`
-/

namespace A214221.P8639868110612644178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n ^ 3)

end

end A214221.P8639868110612644178

namespace A214221

/-- `A303427(2*n^3)` -/
def P8639868110612644178.Spec : Prop :=
  ∀ n, P8639868110612644178.a n = A214221 n

end A214221

/-! ## A214221.P17921436972397442080

`∑{digits}[n, A000032(n*#²)]`
-/

namespace A214221.P17921436972397442080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000032 (n * x ^ 2)).sum

end

end A214221.P17921436972397442080

namespace A214221

/-- `∑{digits}[n, A000032(n*#²)]` -/
def P17921436972397442080.Spec : Prop :=
  ∀ n, P17921436972397442080.a n = A214221 n

end A214221

/-!
# A214222: E.g.f. satisfies: A(x) = x/(1 - sin(A(x))).

The programs for A214222, there is no canonical definition to state claims against.
-/

/-! ## A214222.P375657804755864881

`(n+1)*A201627(n)`
-/

namespace A214222.P375657804755864881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201627 n

end

end A214222.P375657804755864881

/-! ## A214222.P15764084514835455154

`A201627(n)*A208324(∑[n])`
-/

namespace A214222.P15764084514835455154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 n * A208324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214222.P15764084514835455154

/-! ## A214222.P3223992664278278979

`A201627(n)*A201634(A000124(n))`
-/

namespace A214222.P3223992664278278979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 n * A201634 (A000124 n).toNat

end

end A214222.P3223992664278278979

/-! ## A214222.P6074229002682682161

`A201627(n)*A234575(A001844(n))`
-/

namespace A214222.P6074229002682682161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 n * A234575 (A001844 n).toNat

end

end A214222.P6074229002682682161

/-! ## A214222.P13091822136108562970

`A201627(n)*A325134(A000079(n))`
-/

namespace A214222.P13091822136108562970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201627 n * A325134 (A000079 n).toNat

end

end A214222.P13091822136108562970

/-!
# A214223: E.g.f. satisfies: A(x) = x/(1 - sinh(A(x))).

The programs for A214223, there is no canonical definition to state claims against.
-/

/-! ## A214223.P11619231168477002636

`(n+1)*A201628(n)`
-/

namespace A214223.P11619231168477002636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201628 n

end

end A214223.P11619231168477002636

/-! ## A214223.P7508292514958510957

`A201628(n)*A208324(∑[n])`
-/

namespace A214223.P7508292514958510957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201628 n * A208324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214223.P7508292514958510957

/-! ## A214223.P11936080636973705130

`A201628(n)*A201634(A000124(n))`
-/

namespace A214223.P11936080636973705130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201628 n * A201634 (A000124 n).toNat

end

end A214223.P11936080636973705130

/-! ## A214223.P11364343714037838068

`A201628(n)*A234575(A001844(n))`
-/

namespace A214223.P11364343714037838068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201628 n * A234575 (A001844 n).toNat

end

end A214223.P11364343714037838068

/-! ## A214223.P7943494615701256024

`A201628(n)*A326674(A000079(n))`
-/

namespace A214223.P7943494615701256024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201628 n * A326674 (A000079 n).toNat

end

end A214223.P7943494615701256024

/-!
# A214224: E.g.f. satisfies: A(x) = x/(1 - tan(A(x))).

The programs for A214224, there is no canonical definition to state claims against.
-/

/-! ## A214224.P12394636896377352767

`(n+1)*A201594(n)`
-/

namespace A214224.P12394636896377352767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201594 n

end

end A214224.P12394636896377352767

/-! ## A214224.P12503329437209011086

`A201594(n)*A201634(A000124(n))`
-/

namespace A214224.P12503329437209011086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201594 n * A201634 (A000124 n).toNat

end

end A214224.P12503329437209011086

/-! ## A214224.P5303654077114138579

`A201594(n)*A208324(A000217(n))`
-/

namespace A214224.P5303654077114138579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201594 n * A208324 (A000217 n).toNat

end

end A214224.P5303654077114138579

/-! ## A214224.P8676912032557192204

`A201594(n)*A234575(A001844(n))`
-/

namespace A214224.P8676912032557192204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201594 n * A234575 (A001844 n).toNat

end

end A214224.P8676912032557192204

/-!
# A214225: E.g.f. satisfies: A(x) = x/(1 - tanh(A(x))).

The programs for A214225, there is no canonical definition to state claims against.
-/

/-! ## A214225.P15123035027997394631

`A038049(n+1)/2`
-/

namespace A214225.P15123035027997394631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038049 (n + 1) : ℚ) / 2

end

end A214225.P15123035027997394631

/-! ## A214225.P17273167941573462267

`(n+1)*A201595(n)`
-/

namespace A214225.P17273167941573462267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201595 n

end

end A214225.P17273167941573462267

/-! ## A214225.P7593375119011667616

`A078751(∑[n])/2`
-/

namespace A214225.P7593375119011667616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078751 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A214225.P7593375119011667616

/-! ## A214225.P8418933688944034961

`ceil(A216857(n+1)/2)`
-/

namespace A214225.P8418933688944034961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216857 (n + 1) : ℚ) / 2⌉

end

end A214225.P8418933688944034961

/-! ## A214225.P3720691483162326656

`2^n*A088789(n+1)`
-/

namespace A214225.P3720691483162326656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088789 (n + 1)

end

end A214225.P3720691483162326656

/-! ## A214225.P16053380106719418062

`A011782(n)*A100526(n+1)`
-/

namespace A214225.P16053380106719418062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A100526 (n + 1)

end

end A214225.P16053380106719418062

/-! ## A214225.P6052758844481688629

`(A074932(n+1)+A072034(n))/2`
-/

namespace A214225.P6052758844481688629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074932 (n + 1) + A072034 n : ℚ) / 2

end

end A214225.P6052758844481688629

/-! ## A214225.P14104508244384300885

`(A216857(n+1)+A000007(n))/2`
-/

namespace A214225.P14104508244384300885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) + A000007 n : ℚ) / 2

end

end A214225.P14104508244384300885

/-! ## A214225.P14903438580227845096

`A216857(n+1)/A174354(2*n)`
-/

namespace A214225.P14903438580227845096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) : ℚ) / (A174354 (2 * n) : ℚ)

end

end A214225.P14903438580227845096

/-! ## A214225.P9405063535367759386

`A216857(n+1)/A006530(A001316(n))`
-/

namespace A214225.P9405063535367759386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A214225.P9405063535367759386

/-!
# A214228: a(n) = gcd(r,2*n+1) where r is 1 + (A143608(i-1) mod (2*n+1)) and A143608(i) is the first zero mod 2*n+1 other than i=0.

The programs for A214228, there is no canonical definition to state claims against.
-/

/-! ## A214228.P1162510329061640811

`A028234(2*n+3)%A373948(3*n+2)`
-/

namespace A214228.P1162510329061640811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (2 * n + 3)) (A373948 (3 * n + 2))

end

end A214228.P1162510329061640811

/-! ## A214228.P10925724322778351617

`A028234(2*n+3)%A008717(A245492(n))`
-/

namespace A214228.P10925724322778351617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (2 * n + 3)) (A008717 (A245492 n).toNat)

end

end A214228.P10925724322778351617

/-! ## A214228.P12238665410356563076

`gcd(A055641(A004696(n)), A119288(2*n+3))`
-/

namespace A214228.P12238665410356563076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 (A004696 n).toNat) (A119288 (2 * n + 3))

end

end A214228.P12238665410356563076

/-! ## A214228.P10480354368411921849

`gcd(A028234(2*n+3), A092020(A074909(n)))`
-/

namespace A214228.P10480354368411921849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028234 (2 * n + 3)) (A092020 (A074909 n).toNat)

end

end A214228.P10480354368411921849

/-! ## A214228.P11531886126935565805

`A007913(A028234(2*n+3)^A000188(n+1))`
-/

namespace A214228.P11531886126935565805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A028234 (2 * n + 3) : ℚ) ^ (A000188 (n + 1) : ℤ))).toNat

end

end A214228.P11531886126935565805

/-!
# A214229: a(n) equals gcd(r,2*n+1) where r is 1 + (A143608(i+1) mod (2*n+1)) where A143608(i) is the first zero mod 2n+1 other than 0.

The programs for A214229, there is no canonical definition to state claims against.
-/

/-! ## A214229.P10003194526050794546

`gcd(A005408(A187829(n+1)), A022066(3*n+2))`
-/

namespace A214229.P10003194526050794546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 (A187829 (n + 1)).toNat) (A022066 (3 * n + 2))

end

end A214229.P10003194526050794546

/-! ## A214229.P507463380505356472

`gcd(A027480(A027480(2*n+1)), A319655(2*n+3))`
-/

namespace A214229.P507463380505356472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027480 (A027480 (2 * n + 1)).toNat) (A319655 (2 * n + 3))

end

end A214229.P507463380505356472

/-!
# A214232: Number of 0..7 colorings of an n X 3 array circular in the 3 direction with new values 0..7 introduced in row major order.

The programs for A214232, there is no canonical definition to state claims against.
-/

/-! ## A214232.P7206791178709408186

`A214238(∑[n+2])`
-/

namespace A214232.P7206791178709408186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214232.P7206791178709408186

/-! ## A214232.P4759328419724190281

`record[A214238(A198455(n+1))]`
-/

namespace A214232.P4759328419724190281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214232.P4759328419724190281

/-! ## A214232.P9544461653069873114

`record[gcd(A008290(n), A214238(n+1))]`
-/

namespace A214232.P9544461653069873114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A214238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214232.P9544461653069873114

/-! ## A214232.P14649645065235444746

`record[gcd(A105422(n+2), A214238(n+3))]`
-/

namespace A214232.P14649645065235444746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 (n + 2)) (A214238 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214232.P14649645065235444746

/-!
# A214233: Number of 0..7 colorings of an nX4 array circular in the 4 direction with new values 0..7 introduced in row major order.

The programs for A214233, there is no canonical definition to state claims against.
-/

/-! ## A214233.P873981152895838486

`A214238(∑[n+3]+1)`
-/

namespace A214233.P873981152895838486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214233.P873981152895838486

/-!
# A214234: Number of 0..7 colorings of an nX5 array circular in the 5 direction with new values 0..7 introduced in row major order.

The programs for A214234, there is no canonical definition to state claims against.
-/

/-! ## A214234.P18259257063087089561

`A214238(∑[n+4]+3)`
-/

namespace A214234.P18259257063087089561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A214234.P18259257063087089561

/-!
# A214236: 

The programs for A214236, there is no canonical definition to state claims against.
-/

/-! ## A214236.P829970991149940675

`A214238(A027379(n+4)-2)`
-/

namespace A214236.P829970991149940675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A027379 (n + 4) - 2).toNat

end

end A214236.P829970991149940675

/-!
# A214238: T(n,k) = Number of 0..7 colorings of an nx(k+1) array circular in the k+1 direction with new values 0..7 introduced in row major order.

The programs for A214238, there is no canonical definition to state claims against.
-/

/-! ## A214238.P9425339171923339981

`A214187(n+1)+A004198(A000245(n))`
-/

namespace A214238.P9425339171923339981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (n + 1) + A004198 (A000245 n).toNat

end

end A214238.P9425339171923339981

/-! ## A214238.P16704980182228586282

`A327302(A052403(n+1))+A214187(n+1)`
-/

namespace A214238.P16704980182228586282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327302 (A052403 (n + 1)).toNat + A214187 (n + 1)

end

end A214238.P16704980182228586282

/-! ## A214238.P3239460971557923892

`A214187(n+1)+A025466(n!)`
-/

namespace A214238.P3239460971557923892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (n + 1) + A025466 (Nat.factorial n)

end

end A214238.P3239460971557923892

/-! ## A214238.P15044975106668043352

`A214187(n+1)+A003415(A014384(n))`
-/

namespace A214238.P15044975106668043352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (n + 1) + A003415 (A014384 n).toNat

end

end A214238.P15044975106668043352

/-!
# A214239: Number of 0..7 colorings of a 1 X (n+1) array circular in the n+1 direction with new values 0..7 introduced in row major order.

The programs for A214239, there is no canonical definition to state claims against.
-/

/-! ## A214239.P15640727114690245347

`A099262(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214239.P15640727114690245347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099262 (n + 1) - a (n - 1)

end

end A214239.P15640727114690245347

/-! ## A214239.P6838358485677052538

`A203647(A052905(n+3))-a(n-1)` with `a(0)=1`
-/

namespace A214239.P6838358485677052538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203647 (A052905 (n + 3)).toNat - a (n - 1)

end

end A214239.P6838358485677052538

/-! ## A214239.P12869309580220069521

`A203647(A000217(n+6)-5)-a(n-1)` with `a(0)=1`
-/

namespace A214239.P12869309580220069521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203647 (A000217 (n + 6) - 5).toNat - a (n - 1)

end

end A214239.P12869309580220069521

/-! ## A214239.P14354694379001205327

`A203647(A000124(n+6)-6)-a(n-1)` with `a(0)=1`
-/

namespace A214239.P14354694379001205327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203647 (A000124 (n + 6) - 6).toNat - a (n - 1)

end

end A214239.P14354694379001205327

/-! ## A214239.P1374669208288747688

`A203647(A000096(n+4)+n+2)-a(n-1)` with `a(0)=1`
-/

namespace A214239.P1374669208288747688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203647 (A000096 (n + 4) + (n + 2 : ℤ)).toNat - a (n - 1)

end

end A214239.P1374669208288747688

/-!
# A214240: Number of 0..7 colorings of a 2X(n+1) array circular in the n+1 direction with new values 0..7 introduced in row major order.

The programs for A214240, there is no canonical definition to state claims against.
-/

/-! ## A214240.P10123654874083652118

`A214238(∑[n+1]+2)`
-/

namespace A214240.P10123654874083652118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A214240.P10123654874083652118

/-! ## A214240.P10823648922565945005

`record[gcd(A025581(n), A214238(n+3))]`
-/

namespace A214240.P10823648922565945005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A214238 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214240.P10823648922565945005

/-! ## A214240.P3903119375177776671

`record[A010054(n+1)*A214238(n+3)]`
-/

namespace A214240.P3903119375177776671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A214238 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214240.P3903119375177776671

/-!
# A214241: Number of 0..7 colorings of a 3X(n+1) array circular in the n+1 direction with new values 0..7 introduced in row major order.

The programs for A214241, there is no canonical definition to state claims against.
-/

/-! ## A214241.P3914683889190974979

`A214238(∑[n+2]+4)`
-/

namespace A214241.P3914683889190974979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214241.P3914683889190974979

/-! ## A214241.P17203431442491478280

`A214238(A167614(n+1))+A025466(n)`
-/

namespace A214241.P17203431442491478280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A167614 (n + 1)).toNat + A025466 n

end

end A214241.P17203431442491478280

/-! ## A214241.P13442022177182056038

`A214238(A167614(n+1))+A025469(n)`
-/

namespace A214241.P13442022177182056038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A167614 (n + 1)).toNat + A025469 n

end

end A214241.P13442022177182056038

/-! ## A214241.P152885634912352648

`A214238(A167614(n+1))+A185284(n)`
-/

namespace A214241.P152885634912352648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A167614 (n + 1)).toNat + A185284 n

end

end A214241.P152885634912352648

/-! ## A214241.P3381063875774275878

`A218530(n)+A214238(A167614(n+1))`
-/

namespace A214241.P3381063875774275878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 n + A214238 (A167614 (n + 1)).toNat

end

end A214241.P3381063875774275878

/-!
# A214242: Number of 0..7 colorings of a 4X(n+1) array circular in the n+1 direction with new values 0..7 introduced in row major order.

The programs for A214242, there is no canonical definition to state claims against.
-/

/-! ## A214242.P3323417273017461288

`A214238(A055999(n)+10)`
-/

namespace A214242.P3323417273017461288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A055999 n + 10).toNat

end

end A214242.P3323417273017461288

/-! ## A214242.P13689307256673911756

`A214238(A167614(n+2)+1)`
-/

namespace A214242.P13689307256673911756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A167614 (n + 2) + 1).toNat

end

end A214242.P13689307256673911756

/-!
# A214246: Number A(n,k) of compositions of n where differences between neighboring parts are in {-k,0,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214246, there is no canonical definition to state claims against.
-/

/-! ## A214246.P3650277451201078999

`gcd(A181114(n+1), A214257(n))`
-/

namespace A214246.P3650277451201078999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181114 (n + 1)) (A214257 n)

end

end A214246.P3650277451201078999

/-! ## A214246.P1956442362536405026

`gcd(A005101(A005894(n)), A214257(n))`
-/

namespace A214246.P1956442362536405026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005101 (A005894 n).toNat) (A214257 n)

end

end A214246.P1956442362536405026

/-! ## A214246.P9771755966449707426

`A009194(A019546(n+4)*A214248(n))`
-/

namespace A214246.P9771755966449707426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A019546 (n + 4) * A214248 n).toNat

end

end A214246.P9771755966449707426

/-! ## A214246.P16720495396538178274

`gcd(A190414(A243729(n+1)), A214248(n))`
-/

namespace A214246.P16720495396538178274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190414 (A243729 (n + 1)).toNat) (A214248 n)

end

end A214246.P16720495396538178274

/-! ## A214246.P11593973774076442430

`A055874(A214257(n)!)/A214257(A215086(n))`
-/

namespace A214246.P11593973774076442430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055874 (Nat.factorial (A214257 n).toNat) : ℚ) / (A214257 (A215086 n).toNat : ℚ)

end

end A214246.P11593973774076442430

/-!
# A214247: Number A(n,k) of compositions of n where differences between neighboring parts are in {-k,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214247, there is no canonical definition to state claims against.
-/

/-! ## A214247.P5960174725586173623

`A007895(gcd(A082348(n), A285019(n)))`
-/

namespace A214247.P5960174725586173623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.gcd (A082348 n) (A285019 n))

end

end A214247.P5960174725586173623

/-! ## A214247.P3034066181537542116

`A139351(A082318(n)^A236109(n+1))`
-/

namespace A214247.P3034066181537542116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A082318 n : ℚ) ^ (A236109 (n + 1) : ℤ))).toNat

end

end A214247.P3034066181537542116

/-! ## A214247.P17168868120330508192

`A329320(A082318(n)^A236109(n+1))`
-/

namespace A214247.P17168868120330508192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (SequenceMachineLib.roundAway ((A082318 n : ℚ) ^ (A236109 (n + 1) : ℤ))).toNat

end

end A214247.P17168868120330508192

/-! ## A214247.P1073143107265175667

`A001918(∏{e}[A122950(n), A008574(n)-#])`
-/

namespace A214247.P1073143107265175667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A008574 n - (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A214247.P1073143107265175667

/-! ## A214247.P13441126164228374859

`A043565(A135879(n+2)*A194498(n+1))`
-/

namespace A214247.P13441126164228374859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 (A135879 (n + 2) * A194498 (n + 1)).toNat

end

end A214247.P13441126164228374859

/-!
# A214248: Number A(n,k) of compositions of n where differences between neighboring parts are in {-k,...,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214248, there is no canonical definition to state claims against.
-/

/-! ## A214248.P7971004987256629996

`A222246(A214257(n))%A139811(n+1)`
-/

namespace A214248.P7971004987256629996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222246 (A214257 n).toNat) (A139811 (n + 1))

end

end A214248.P7971004987256629996

/-! ## A214248.P15490026336687612648

`A222246(gcd(A137660(n+1), A214257(n)))`
-/

namespace A214248.P15490026336687612648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (Int.gcd (A137660 (n + 1)) (A214257 n))

end

end A214248.P15490026336687612648

/-! ## A214248.P2814651804776354137

`A222246(A214257(n))%A085136(n)`
-/

namespace A214248.P2814651804776354137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222246 (A214257 n).toNat) (A085136 n)

end

end A214248.P2814651804776354137

/-! ## A214248.P683282594920721443

`A222246(A214257(n))^A204116(A204116(n+1))!`
-/

namespace A214248.P683282594920721443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A214257 n).toNat ^ Nat.factorial (A204116 (A204116 (n + 1)).toNat).toNat

end

end A214248.P683282594920721443

/-! ## A214248.P11531813658073065342

`A180726(2^A214257(n))`
-/

namespace A214248.P11531813658073065342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A214257 n : ℤ))).toNat

end

end A214248.P11531813658073065342

/-!
# A214249: Number A(n,k) of compositions of n where differences between neighboring parts are in {-k,...,k} \ {0}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214249, there is no canonical definition to state claims against.
-/

/-! ## A214249.P7776624315603424467

`A214268(n%A064230(n))`
-/

namespace A214249.P7776624315603424467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214268 (Int.tmod (n : ℤ) (A064230 n)).toNat

end

end A214249.P7776624315603424467

/-! ## A214249.P15230847995391216862

`gcd(A036493(n), A214268(n))`
-/

namespace A214249.P15230847995391216862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036493 n) (A214268 n)

end

end A214249.P15230847995391216862

/-! ## A214249.P15737451230744259670

`and(A025587(n), A214268(n))`
-/

namespace A214249.P15737451230744259670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025587 n) (A214268 n)

end

end A214249.P15737451230744259670

/-! ## A214249.P2780782233731875229

`A214268(n)%A036971(n+1)`
-/

namespace A214249.P2780782233731875229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214268 n) (A036971 (n + 1))

end

end A214249.P2780782233731875229

/-! ## A214249.P6756241118473710802

`A214268(A062860(n)%5+n)`
-/

namespace A214249.P6756241118473710802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214268 (Int.tmod (A062860 n) 5 + (n : ℤ)).toNat

end

end A214249.P6756241118473710802

/-!
# A214253: Number of compositions of n where differences between neighboring parts are in {-2,0,2}.

The programs for A214253, there is no canonical definition to state claims against.
-/

/-! ## A214253.P692103775347560039

`A214246(∑[n+3])`
-/

namespace A214253.P692103775347560039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214246 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214253.P692103775347560039

/-! ## A214253.P8167895331204915080

`A214246(A027379(n+1))^gcd(n, n+1)`
-/

namespace A214253.P8167895331204915080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214246 (A027379 (n + 1)).toNat ^ Nat.gcd n (n + 1)

end

end A214253.P8167895331204915080

/-! ## A214253.P17738321989451806306

`or(A000007(n), A214246(A055998(n+1)))`
-/

namespace A214253.P17738321989451806306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A214246 (A055998 (n + 1)).toNat)

end

end A214253.P17738321989451806306

/-! ## A214253.P8201558999836079035

`A214246(A027379(n+1))+A000007(n+1)`
-/

namespace A214253.P8201558999836079035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214246 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A214253.P8201558999836079035

/-! ## A214253.P5299715588958404035

`A057427(n+1)*A214246(A055998(n+1))`
-/

namespace A214253.P5299715588958404035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A214246 (A055998 (n + 1)).toNat

end

end A214253.P5299715588958404035

/-! ## A214253.P6759430631539198842

`A214246(A027379(n+1))+A008683(n+1)²!-1`
-/

namespace A214253.P6759430631539198842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214246 (A027379 (n + 1)).toNat + ((Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) - 1)

end

end A214253.P6759430631539198842

/-! ## A214253.P16579679937688566021

`A345676(gcd((n+2)², n²))+A214246(A055998(n+1))`
-/

namespace A214253.P16579679937688566021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345676 (Nat.gcd ((n + 2) ^ 2) (n ^ 2)) + A214246 (A055998 (n + 1)).toNat

end

end A214253.P16579679937688566021

/-! ## A214253.P16701119677816084736

`A214246(A055998(n+1))^A002262(A000124(n))`
-/

namespace A214253.P16701119677816084736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214246 (A055998 (n + 1)).toNat : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A214253.P16701119677816084736

/-! ## A214253.P14482853354709018003

`A214246(A055998(n+1))^A001221(A008578(n+1))`
-/

namespace A214253.P14482853354709018003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214246 (A055998 (n + 1)).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A214253.P14482853354709018003

/-! ## A214253.P16125030103167121343

`A001221(A051642(n))*A214246(A055998(n+1))`
-/

namespace A214253.P16125030103167121343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051642 n).toNat * A214246 (A055998 (n + 1)).toNat

end

end A214253.P16125030103167121343

/-!
# A214254: Number of compositions of n where differences between neighboring parts are in {-2,2}.

The programs for A214254, there is no canonical definition to state claims against.
-/

/-! ## A214254.P4720827790389065231

`A214247(∑[n+3])`
-/

namespace A214254.P4720827790389065231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214254.P4720827790389065231

/-! ## A214254.P3206444803177064373

`and(-1, A214247(A055998(n+1)))`
-/

namespace A214254.P3206444803177064373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A214247 (A055998 (n + 1)).toNat)

end

end A214254.P3206444803177064373

/-! ## A214254.P349478211209693269

`A214247(A055998(n+1))%A017489(n)`
-/

namespace A214254.P349478211209693269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214247 (A055998 (n + 1)).toNat) (A017489 n)

end

end A214254.P349478211209693269

/-! ## A214254.P17861090753492612566

`gcd(A000038(n), A214247(A055998(n+1)))`
-/

namespace A214254.P17861090753492612566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214247 (A055998 (n + 1)).toNat)

end

end A214254.P17861090753492612566

/-! ## A214254.P10531232236027225100

`A020985(n)²*A214247(A055998(n+1))`
-/

namespace A214254.P10531232236027225100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A214247 (A055998 (n + 1)).toNat

end

end A214254.P10531232236027225100

/-! ## A214254.P11989154584431099353

`char[A001057(n)]*A214247(A055998(n+1))`
-/

namespace A214254.P11989154584431099353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214247 (A055998 (n + 1)).toNat

end

end A214254.P11989154584431099353

/-! ## A214254.P16254132410932383997

`char[A004475(n)]*A214247(A055998(n+1))`
-/

namespace A214254.P16254132410932383997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004475 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214247 (A055998 (n + 1)).toNat

end

end A214254.P16254132410932383997

/-! ## A214254.P9608212327092166467

`char[A057979(n)]*A214247(A055998(n+1))`
-/

namespace A214254.P9608212327092166467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214247 (A055998 (n + 1)).toNat

end

end A214254.P9608212327092166467

/-! ## A214254.P8810080177235239120

`A214247(A055998(n+1))+A000007(n+1)`
-/

namespace A214254.P8810080177235239120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A214254.P8810080177235239120

/-! ## A214254.P859618325187220760

`A000034(2*n)*A214247(A055998(n+1))`
-/

namespace A214254.P859618325187220760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A214247 (A055998 (n + 1)).toNat

end

end A214254.P859618325187220760

/-! ## A214254.P14673989061713764995

`A007318(C(2, n))*A214247(A055998(n+1))`
-/

namespace A214254.P14673989061713764995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A214247 (A055998 (n + 1)).toNat

end

end A214254.P14673989061713764995

/-! ## A214254.P880227491444426854

`A214247(A055998(n+1))^A000041(C(2, n))`
-/

namespace A214254.P880227491444426854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214247 (A055998 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A214254.P880227491444426854

/-! ## A214254.P14720399986289574380

`A214247(A055998(n+1))+A008683(12*(n+1))`
-/

namespace A214254.P14720399986289574380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A055998 (n + 1)).toNat + A008683 (12 * (n + 1))

end

end A214254.P14720399986289574380

/-! ## A214254.P14175014370547929617

`A214247(A055998(n+1))^A014963(4*n+2)`
-/

namespace A214254.P14175014370547929617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214247 (A055998 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A214254.P14175014370547929617

/-! ## A214254.P11790564727498526673

`A214247(A055998(n+1))+A001222(gcd(n, n+1))`
-/

namespace A214254.P11790564727498526673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A055998 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A214254.P11790564727498526673

/-! ## A214254.P17385160370505032976

`A214247(A055998(n+1))/A051903(A004139(n+1))`
-/

namespace A214254.P17385160370505032976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214247 (A055998 (n + 1)).toNat : ℚ) / (A051903 (A004139 (n + 1)).toNat : ℚ)

end

end A214254.P17385160370505032976

/-!
# A214255: Number of compositions of n where differences between neighboring parts are in {-2,...,2}.

The programs for A214255, there is no canonical definition to state claims against.
-/

/-! ## A214255.P3488050875938489054

`A214248(∑[n+3])`
-/

namespace A214255.P3488050875938489054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214248 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214255.P3488050875938489054

/-! ## A214255.P13768285343440612135

`or(char[1], A214248(A027379(n+1)))`
-/

namespace A214255.P13768285343440612135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A214248 (A027379 (n + 1)).toNat)

end

end A214255.P13768285343440612135

/-! ## A214255.P14596182622530507540

`A214248(A027379(n+1))%A259593(n)`
-/

namespace A214255.P14596182622530507540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214248 (A027379 (n + 1)).toNat) (A259593 n)

end

end A214255.P14596182622530507540

/-! ## A214255.P12296514195956428728

`(A020639(2*(n+1))-1)*A214248(A027379(n+1))`
-/

namespace A214255.P12296514195956428728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) - 1) * A214248 (A027379 (n + 1)).toNat

end

end A214255.P12296514195956428728

/-! ## A214255.P10979977506488899203

`A007318(A000217(n))*A214248(A027379(n+1))`
-/

namespace A214255.P10979977506488899203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A214248 (A027379 (n + 1)).toNat

end

end A214255.P10979977506488899203

/-! ## A214255.P3866410337694237692

`A081729(A008587(n))²*A214248(A027379(n+1))`
-/

namespace A214255.P3866410337694237692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A008587 n).toNat ^ 2 * A214248 (A027379 (n + 1)).toNat

end

end A214255.P3866410337694237692

/-! ## A214255.P15311398137819533449

`A214248(A000217(2*n))*A214248(A027379(n+1))`
-/

namespace A214255.P15311398137819533449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214248 (A000217 (2 * n)).toNat * A214248 (A027379 (n + 1)).toNat

end

end A214255.P15311398137819533449

/-!
# A214256: Number of compositions of n where differences between neighboring parts are in {-2,-1,1,2}.

The programs for A214256, there is no canonical definition to state claims against.
-/

/-! ## A214256.P9207044821223850851

`A214249(∑[n+3])`
-/

namespace A214256.P9207044821223850851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214256.P9207044821223850851

/-! ## A214256.P6280550335192156942

`A214249(A027379(n+1))+C(n%2, 5)`
-/

namespace A214256.P6280550335192156942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 (A027379 (n + 1)).toNat + (Nat.choose (n % 2) 5 : ℤ)

end

end A214256.P6280550335192156942

/-! ## A214256.P3752984767728981764

`gcd(A000038(n), A214249(A027379(n+1)))`
-/

namespace A214256.P3752984767728981764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214249 (A027379 (n + 1)).toNat)

end

end A214256.P3752984767728981764

/-! ## A214256.P1866339301091258149

`and(A214249(A027379(n+1)), A260196(n))`
-/

namespace A214256.P1866339301091258149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214249 (A027379 (n + 1)).toNat) (A260196 n)

end

end A214256.P1866339301091258149

/-! ## A214256.P10462016303015682805

`A057427(2*n+1)*A214249(A055998(n+1))`
-/

namespace A214256.P10462016303015682805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 1) * A214249 (A055998 (n + 1)).toNat

end

end A214256.P10462016303015682805

/-! ## A214256.P12286431652393184412

`A000035(2*n+3)*A214249(A027379(n+1))`
-/

namespace A214256.P12286431652393184412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3) * A214249 (A027379 (n + 1)).toNat

end

end A214256.P12286431652393184412

/-! ## A214256.P7324474806892438455

`A214249(A027379(n+1))+A000038(3*n+4)`
-/

namespace A214256.P7324474806892438455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 (A027379 (n + 1)).toNat + A000038 (3 * n + 4)

end

end A214256.P7324474806892438455

/-!
# A214257: Number A(n,k) of compositions of n where the difference between largest and smallest parts is <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214257, there is no canonical definition to state claims against.
-/

/-! ## A214257.P13848000943099128026

`A222246(A214248(n))%A139811(n+1)`
-/

namespace A214257.P13848000943099128026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222246 (A214248 n).toNat) (A139811 (n + 1))

end

end A214257.P13848000943099128026

/-! ## A214257.P8239273256127533717

`A222246(gcd(A137660(n+1), A214248(n)))`
-/

namespace A214257.P8239273256127533717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (Int.gcd (A137660 (n + 1)) (A214248 n))

end

end A214257.P8239273256127533717

/-! ## A214257.P9038988022786379669

`A222246(A214248(n))+A137660(A000265(n+1))`
-/

namespace A214257.P9038988022786379669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A214248 n).toNat + A137660 (A000265 (n + 1)).toNat

end

end A214257.P9038988022786379669

/-! ## A214257.P5893292272881033491

`A222246(A214248(n))+A000038(A305674(n+1))`
-/

namespace A214257.P5893292272881033491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A214248 n).toNat + A000038 (A305674 (n + 1)).toNat

end

end A214257.P5893292272881033491

/-!
# A214259: Number of compositions of n where the difference between largest and smallest parts equals one.

The programs for A214259, there is no canonical definition to state claims against.
-/

/-! ## A214259.P11505633763345003021

`A072951(n+1)-A000005(n+1)`
-/

namespace A214259.P11505633763345003021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072951 (n + 1) - A000005 (n + 1)

end

end A214259.P11505633763345003021

/-! ## A214259.P8719355337497101013

`A227635(n+1)-A114003(n+1)`
-/

namespace A214259.P8719355337497101013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227635 (n + 1) - A114003 (n + 1)

end

end A214259.P8719355337497101013

/-! ## A214259.P13745326747462906550

`A072951(n+1)+A024000(A000005(n+1)+1)`
-/

namespace A214259.P13745326747462906550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072951 (n + 1) + A024000 (A000005 (n + 1) + 1).toNat

end

end A214259.P13745326747462906550

/-! ## A214259.P8149720530288659247

`A214258(ceil(A000124(n)+acot(n)))`
-/

namespace A214259.P8149720530288659247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 ⌈(A000124 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A214259.P8149720530288659247

/-! ## A214259.P5776035222080421709

`A072951(n+1)-A214258(∑[n]+1)`
-/

namespace A214259.P5776035222080421709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072951 (n + 1) - A214258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214259.P5776035222080421709

/-! ## A214259.P13007320760593145797

`A214258(A133263(n))%A001792(n)`
-/

namespace A214259.P13007320760593145797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214258 (A133263 n).toNat) (A001792 n)

end

end A214259.P13007320760593145797

/-! ## A214259.P5380101066597562833

`A214258(A000124(n)+A057428(n)+2)`
-/

namespace A214259.P5380101066597562833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A000124 n + (A057428 n + 2)).toNat

end

end A214259.P5380101066597562833

/-! ## A214259.P1969934690035205649

`A214258(A153881(n+1)+A133263(n)+1)`
-/

namespace A214259.P1969934690035205649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A153881 (n + 1) + (A133263 n + 1)).toNat

end

end A214259.P1969934690035205649

/-! ## A214259.P4972457284315413835

`A072951(n+1)-A214246(∑[n+2])`
-/

namespace A214259.P4972457284315413835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072951 (n + 1) - A214246 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214259.P4972457284315413835

/-!
# A214260: First differences of A052980.

The programs for A214260, the canonical program `A214260.P4849006558465402343` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214260 has offset 0).

The definition of A214260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214260.P4849006558465402343

`A052980(n+1)-A052980(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214260

/-- `A052980(n+1)-A052980(n)` -/
def P4849006558465402343.Spec : Prop :=
  ∀ n, P4849006558465402343.a n = A214260 n

theorem P4849006558465402343.correct : P4849006558465402343.Spec := by
  intro n
  simp only [A214260]

end A214260

/-! ## A214260.P16310962686224752871

`a(n-3)+2*a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A214260.P16310962686224752871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 2 * a (n - 1)

end

end A214260.P16310962686224752871

namespace A214260

/-- `a(n-3)+2*a(n-1)` -/
def P16310962686224752871.Spec : Prop :=
  ∀ n, (P16310962686224752871.a n : ℤ) = A214260 n

end A214260

/-! ## A214260.P17372421985363041381

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A214260.P17372421985363041381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A214260.P17372421985363041381

namespace A214260

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P17372421985363041381.Spec : Prop :=
  ∀ n, (P17372421985363041381.a n : ℤ) = A214260 n

end A214260

/-! ## A214260.P13320715642204133945

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A214260.P13320715642204133945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A214260.P13320715642204133945

namespace A214260

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P13320715642204133945.Spec : Prop :=
  ∀ n, P13320715642204133945.a n = A214260 n

end A214260

/-! ## A214260.P721440831561804260

`Δ[A052980(n)]`
-/

namespace A214260.P721440831561804260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214260.P721440831561804260

namespace A214260

/-- `Δ[A052980(n)]` -/
def P721440831561804260.Spec : Prop :=
  ∀ n, P721440831561804260.a n = A214260 n

theorem P721440831561804260.correct : P721440831561804260.Spec := by
  intro n
  simp only [A214260, Nat.add_sub_cancel, A214260.P721440831561804260.f1, A214260.P721440831561804260.a, A214260.P4849006558465402343.a, SequenceMachineLib.memo_apply]

end A214260

/-! ## A214260.P5988589992572679923

`Δ[abs(A110513(n))]`
-/

namespace A214260.P5988589992572679923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214260.P5988589992572679923

namespace A214260

/-- `Δ[abs(A110513(n))]` -/
def P5988589992572679923.Spec : Prop :=
  ∀ n, P5988589992572679923.a n = A214260 n

end A214260

/-! ## A214260.P7145981053142947454

`A190512(n)-A052980(n)`
-/

namespace A214260.P7145981053142947454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 n - A052980 n

end

end A214260.P7145981053142947454

namespace A214260

/-- `A190512(n)-A052980(n)` -/
def P7145981053142947454.Spec : Prop :=
  ∀ n, P7145981053142947454.a n = A214260 n

end A214260

/-! ## A214260.P17187588018024848470

`Δ[A239905(A004277(2*n))]`
-/

namespace A214260.P17187588018024848470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (A004277 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214260.P17187588018024848470

namespace A214260

/-- `Δ[A239905(A004277(2*n))]` -/
def P17187588018024848470.Spec : Prop :=
  ∀ n, P17187588018024848470.a n = A214260 n

end A214260

/-! ## A214260.P10756711005282780912

`A190512(n)-abs(A110513(n))`
-/

namespace A214260.P10756711005282780912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 n - |A110513 n|

end

end A214260.P10756711005282780912

namespace A214260

/-- `A190512(n)-abs(A110513(n))` -/
def P10756711005282780912.Spec : Prop :=
  ∀ n, P10756711005282780912.a n = A214260 n

end A214260

/-! ## A214260.P3460505679065464076

`Δ[lcm(A110513(n), A110515(n))]`
-/

namespace A214260.P3460505679065464076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110513 n) (A110515 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214260.P3460505679065464076

namespace A214260

/-- `Δ[lcm(A110513(n), A110515(n))]` -/
def P3460505679065464076.Spec : Prop :=
  ∀ n, P3460505679065464076.a n = A214260 n

end A214260

/-! ## A214260.P13328623975953106825

`abs(A110513(n+1)+A110513(n))`
-/

namespace A214260.P13328623975953106825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 (n + 1) + A110513 n|

end

end A214260.P13328623975953106825

namespace A214260

/-- `abs(A110513(n+1)+A110513(n))` -/
def P13328623975953106825.Spec : Prop :=
  ∀ n, P13328623975953106825.a n = A214260 n

end A214260

/-! ## A214260.P5907885981672464964

`A190512(n)-A190512(A289207(n+1))`
-/

namespace A214260.P5907885981672464964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 n - A190512 (A289207 (n + 1)).toNat

end

end A214260.P5907885981672464964

namespace A214260

/-- `A190512(n)-A190512(A289207(n+1))` -/
def P5907885981672464964.Spec : Prop :=
  ∀ n, P5907885981672464964.a n = A214260 n

end A214260

/-! ## A214260.P14762688244902445745

`A008998(n)+A335274(n)-A190512(n)`
-/

namespace A214260.P14762688244902445745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n + (A335274 n - A190512 n)

end

end A214260.P14762688244902445745

namespace A214260

/-- `A008998(n)+A335274(n)-A190512(n)` -/
def P14762688244902445745.Spec : Prop :=
  ∀ n, P14762688244902445745.a n = A214260 n

end A214260

/-! ## A214260.P2139453963411880647

`A193641(n+1)-A008998(n)`
-/

namespace A214260.P2139453963411880647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) - A008998 n

end

end A214260.P2139453963411880647

namespace A214260

/-- `A193641(n+1)-A008998(n)` -/
def P2139453963411880647.Spec : Prop :=
  ∀ n, P2139453963411880647.a n = A214260 n

end A214260

/-! ## A214260.P5089562127262239159

`A335274(n+1)-A285184(n)`
-/

namespace A214260.P5089562127262239159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) - A285184 n

end

end A214260.P5089562127262239159

namespace A214260

/-- `A335274(n+1)-A285184(n)` -/
def P5089562127262239159.Spec : Prop :=
  ∀ n, P5089562127262239159.a n = A214260 n

end A214260

/-! ## A214260.P10880538377919264362

`A008998(n+1)-A335242(n+2)`
-/

namespace A214260.P10880538377919264362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) - A335242 (n + 2)

end

end A214260.P10880538377919264362

namespace A214260

/-- `A008998(n+1)-A335242(n+2)` -/
def P10880538377919264362.Spec : Prop :=
  ∀ n, P10880538377919264362.a n = A214260 n

end A214260

/-! ## A214260.P18051421195125158512

`A190512(n+1)-2*A008998(n)`
-/

namespace A214260.P18051421195125158512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) - 2 * A008998 n

end

end A214260.P18051421195125158512

namespace A214260

/-- `A190512(n+1)-2*A008998(n)` -/
def P18051421195125158512.Spec : Prop :=
  ∀ n, P18051421195125158512.a n = A214260 n

end A214260

/-! ## A214260.P2999483738938008709

`A193641(n+1)+A332491(n+1)-A332647(n+1)`
-/

namespace A214260.P2999483738938008709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A332491 (n + 1) - A332647 (n + 1))

end

end A214260.P2999483738938008709

namespace A214260

/-- `A193641(n+1)+A332491(n+1)-A332647(n+1)` -/
def P2999483738938008709.Spec : Prop :=
  ∀ n, P2999483738938008709.a n = A214260 n

end A214260

/-! ## A214260.P6577411393510459853

`A020708(n)-A335274(n+2)`
-/

namespace A214260.P6577411393510459853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n - A335274 (n + 2)

end

end A214260.P6577411393510459853

namespace A214260

/-- `A020708(n)-A335274(n+2)` -/
def P6577411393510459853.Spec : Prop :=
  ∀ n, P6577411393510459853.a n = A214260 n

end A214260

/-!
# A214261: List of derangements of 1, 2, 3, ..., n for n = 2, 3, 4, ..., in lexicographic order.

The programs for A214261, there is no canonical definition to state claims against.
-/

/-! ## A214261.P15673506821851700410

`A167967(A028437(n+2)+1)`
-/

namespace A214261.P15673506821851700410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167967 (A028437 (n + 2) + 1).toNat

end

end A214261.P15673506821851700410

/-! ## A214261.P7266046337965628107

`A154402(A334773(n+2)+A003849(n))`
-/

namespace A214261.P7266046337965628107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A334773 (n + 2) + A003849 n).toNat

end

end A214261.P7266046337965628107

/-! ## A214261.P12300496037842022519

`A228351(A253013(n+1)+∑[A169821(3*n+4)])`
-/

namespace A214261.P12300496037842022519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169821 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A253013 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214261.P12300496037842022519

/-! ## A214261.P1775244702794981643

`A359508(A227026(n+2))`
-/

namespace A214261.P1775244702794981643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359508 (A227026 (n + 2)).toNat

end

end A214261.P1775244702794981643

/-!
# A214262: Expansion of eta(q)^5 * eta(q^3) * eta(q^6)^4 / eta(q^2)^4 in powers of q.

The programs for A214262, the canonical program `A214262.P18387822921673765359` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214262 has offset 1).

The definition of A214262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214262.P7069776316121903996

`A033999(n)*A288143(n+1)`
-/

namespace A214262.P7069776316121903996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A288143 (n + 1)

end

end A214262.P7069776316121903996

namespace A214262

/-- `A033999(n)*A288143(n+1)` -/
def P7069776316121903996.Spec : Prop :=
  ∀ n, P7069776316121903996.a n = A214262 (n + 1)

end A214262

/-! ## A214262.P3996796958186598648

`(1-A010673(n))*A288143(n+1)`
-/

namespace A214262.P3996796958186598648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A288143 (n + 1)

end

end A214262.P3996796958186598648

namespace A214262

/-- `(1-A010673(n))*A288143(n+1)` -/
def P3996796958186598648.Spec : Prop :=
  ∀ n, P3996796958186598648.a n = A214262 (n + 1)

end A214262

/-! ## A214262.P456261677165263946

`∑{d}[n+1, A002324(#)*A338547((n+1)/#)]`
-/

namespace A214262.P456261677165263946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A338547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214262.P456261677165263946

namespace A214262

/-- `∑{d}[n+1, A002324(#)*A338547((n+1)/#)]` -/
def P456261677165263946.Spec : Prop :=
  ∀ n, P456261677165263946.a n = A214262 (n + 1)

end A214262

/-! ## A214262.P18387822921673765359

`∑{d}[n+1, A049347(#-1)*A162395((n+1)/#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214262

/-- `∑{d}[n+1, A049347(#-1)*A162395((n+1)/#)]` -/
def P18387822921673765359.Spec : Prop :=
  ∀ n, P18387822921673765359.a n = A214262 (n + 1)

theorem P18387822921673765359.correct : P18387822921673765359.Spec := by
  intro n
  simp only [A214262, Nat.add_sub_cancel]

end A214262

/-! ## A214262.P8587735261121089172

`A288143(n+1)/A113261(n)*A132000(n)`
-/

namespace A214262.P8587735261121089172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288143 (n + 1) : ℚ) / (A113261 n : ℚ) * (A132000 n : ℚ)

end

end A214262.P8587735261121089172

namespace A214262

/-- `A288143(n+1)/A113261(n)*A132000(n)` -/
def P8587735261121089172.Spec : Prop :=
  ∀ n, P8587735261121089172.a n = (A214262 (n + 1) : ℚ)

end A214262

/-! ## A214262.P14653826893907434087

`A288143(n+1)/A033999(n+2)`
-/

namespace A214262.P14653826893907434087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288143 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A214262.P14653826893907434087

namespace A214262

/-- `A288143(n+1)/A033999(n+2)` -/
def P14653826893907434087.Spec : Prop :=
  ∀ n, P14653826893907434087.a n = (A214262 (n + 1) : ℚ)

end A214262

/-! ## A214262.P2221811432066503413

`(2-Δ[A042963(n+1)])*A288143(n+1)`
-/

namespace A214262.P2221811432066503413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A288143 (n + 1)

end

end A214262.P2221811432066503413

namespace A214262

/-- `(2-Δ[A042963(n+1)])*A288143(n+1)` -/
def P2221811432066503413.Spec : Prop :=
  ∀ n, P2221811432066503413.a n = A214262 (n + 1)

end A214262

/-! ## A214262.P15549538766143615500

`A174340(Δ[A042963(n+1)])*A288143(n+1)`
-/

namespace A214262.P15549538766143615500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (f1 (n + 1) - f1 n).toNat * A288143 (n + 1)

end

end A214262.P15549538766143615500

namespace A214262

/-- `A174340(Δ[A042963(n+1)])*A288143(n+1)` -/
def P15549538766143615500.Spec : Prop :=
  ∀ n, P15549538766143615500.a n = A214262 (n + 1)

end A214262

/-! ## A214262.P6877161356660109606

`A113261(n+1)/A132001(n+1)*A288143(n+1)`
-/

namespace A214262.P6877161356660109606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113261 (n + 1) : ℚ) / (A132001 (n + 1) : ℚ) * (A288143 (n + 1) : ℚ)

end

end A214262.P6877161356660109606

namespace A214262

/-- `A113261(n+1)/A132001(n+1)*A288143(n+1)` -/
def P6877161356660109606.Spec : Prop :=
  ∀ n, P6877161356660109606.a n = (A214262 (n + 1) : ℚ)

end A214262

/-! ## A214262.P373466663572345191

`A288143(2*(n+1))-A122373(2*(n+1))`
-/

namespace A214262.P373466663572345191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288143 (2 * (n + 1)) - A122373 (2 * (n + 1))

end

end A214262.P373466663572345191

namespace A214262

/-- `A288143(2*(n+1))-A122373(2*(n+1))` -/
def P373466663572345191.Spec : Prop :=
  ∀ n, P373466663572345191.a n = A214262 (n + 1)

end A214262

/-!
# A214263: Expansion of f(x^1, x^7) in powers of x where f() is Ramanujan's general theta function.

The programs for A214263, the canonical program `A214263.P14358253122449274088` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214263 has offset 0).

The definition of A214263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214263.P10448046029124037878

`A115359(2*n)`
-/

namespace A214263.P10448046029124037878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (2 * n)

end

end A214263.P10448046029124037878

namespace A214263

/-- `A115359(2*n)` -/
def P10448046029124037878.Spec : Prop :=
  ∀ n, P10448046029124037878.a n = A214263 n

end A214263

/-! ## A214263.P14358253122449274088

`A010054(2*n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214263

/-- `A010054(2*n+1)` -/
def P14358253122449274088.Spec : Prop :=
  ∀ n, P14358253122449274088.a n = A214263 n

theorem P14358253122449274088.correct : P14358253122449274088.Spec := by
  intro n
  simp only [A214263]

end A214263

/-! ## A214263.P2515187451570825311

`char[∑[n*gcd(3, n%2)]]`
-/

namespace A214263.P2515187451570825311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A214263.P2515187451570825311

namespace A214263

/-- `char[∑[n*gcd(3, n%2)]]` -/
def P2515187451570825311.Spec : Prop :=
  ∀ n, (P2515187451570825311.a n : ℤ) = A214263 n

end A214263

/-! ## A214263.P766902774002683938

`char[∑[n*((-1)^n+2)]]`
-/

namespace A214263.P766902774002683938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A214263.P766902774002683938

namespace A214263

/-- `char[∑[n*((-1)^n+2)]]` -/
def P766902774002683938.Spec : Prop :=
  ∀ n, (P766902774002683938.a n : ℤ) = A214263 n

end A214263

/-! ## A214263.P9962234005962860096

`abs(A244525(n))`
-/

namespace A214263.P9962234005962860096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244525 n|

end

end A214263.P9962234005962860096

namespace A214263

/-- `abs(A244525(n))` -/
def P9962234005962860096.Spec : Prop :=
  ∀ n, P9962234005962860096.a n = A214263 n

end A214263

/-! ## A214263.P14920557873074932087

`A023531(2*n)`
-/

namespace A214263.P14920557873074932087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (2 * n)

end

end A214263.P14920557873074932087

namespace A214263

/-- `A023531(2*n)` -/
def P14920557873074932087.Spec : Prop :=
  ∀ n, P14920557873074932087.a n = A214263 n

end A214263

/-! ## A214263.P12650400092588203561

`A115356(2*n)`
-/

namespace A214263.P12650400092588203561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (2 * n)

end

end A214263.P12650400092588203561

namespace A214263

/-- `A115356(2*n)` -/
def P12650400092588203561.Spec : Prop :=
  ∀ n, P12650400092588203561.a n = A214263 n

end A214263

/-! ## A214263.P9156129807870814343

`A246863(n)%2`
-/

namespace A214263.P9156129807870814343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246863 n) 2

end

end A214263.P9156129807870814343

namespace A214263

/-- `A246863(n)%2` -/
def P9156129807870814343.Spec : Prop :=
  ∀ n, P9156129807870814343.a n = A214263 n

end A214263

/-! ## A214263.P3386799088662181651

`and(1, A230205(n))`
-/

namespace A214263.P3386799088662181651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A230205 n)

end

end A214263.P3386799088662181651

namespace A214263

/-- `and(1, A230205(n))` -/
def P3386799088662181651.Spec : Prop :=
  ∀ n, P3386799088662181651.a n = A214263 n

end A214263

/-! ## A214263.P5939279033633103367

`A073423(Δ[n²])`
-/

namespace A214263.P5939279033633103367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A214263.P5939279033633103367

namespace A214263

/-- `A073423(Δ[n²])` -/
def P5939279033633103367.Spec : Prop :=
  ∀ n, P5939279033633103367.a n = A214263 n

end A214263

/-! ## A214263.P16126986782144814309

`A036561(2*n)%2`
-/

namespace A214263.P16126986782144814309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036561 (2 * n)) 2

end

end A214263.P16126986782144814309

namespace A214263

/-- `A036561(2*n)%2` -/
def P16126986782144814309.Spec : Prop :=
  ∀ n, P16126986782144814309.a n = A214263 n

end A214263

/-! ## A214263.P5576014998952529660

`2-A238303(Δ[n²])`
-/

namespace A214263.P5576014998952529660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238303 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A214263.P5576014998952529660

namespace A214263

/-- `2-A238303(Δ[n²])` -/
def P5576014998952529660.Spec : Prop :=
  ∀ n, P5576014998952529660.a n = A214263 n

end A214263

/-! ## A214263.P16388744654972655255

`A000035(A246863(n))`
-/

namespace A214263.P16388744654972655255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A246863 n).toNat

end

end A214263.P16388744654972655255

namespace A214263

/-- `A000035(A246863(n))` -/
def P16388744654972655255.Spec : Prop :=
  ∀ n, P16388744654972655255.a n = A214263 n

end A214263

/-! ## A214263.P3995660575775921569

`A033999(n)*A244525(n)`
-/

namespace A214263.P3995660575775921569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A244525 n

end

end A214263.P3995660575775921569

namespace A214263

/-- `A033999(n)*A244525(n)` -/
def P3995660575775921569.Spec : Prop :=
  ∀ n, P3995660575775921569.a n = A214263 n

end A214263

/-! ## A214263.P1335890150179288335

`gcd(A000038(n), A244525(n))`
-/

namespace A214263.P1335890150179288335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244525 n)

end

end A214263.P1335890150179288335

namespace A214263

/-- `gcd(A000038(n), A244525(n))` -/
def P1335890150179288335.Spec : Prop :=
  ∀ n, (P1335890150179288335.a n : ℤ) = A214263 n

end A214263

/-! ## A214263.P9424218500538998967

`and(A016760(n), A246863(n))`
-/

namespace A214263.P9424218500538998967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A246863 n)

end

end A214263.P9424218500538998967

namespace A214263

/-- `and(A016760(n), A246863(n))` -/
def P9424218500538998967.Spec : Prop :=
  ∀ n, P9424218500538998967.a n = A214263 n

end A214263

/-! ## A214263.P890735117787856647

`A186352(n+1)-A186350(n+1)`
-/

namespace A214263.P890735117787856647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186352 (n + 1) - A186350 (n + 1)

end

end A214263.P890735117787856647

namespace A214263

/-- `A186352(n+1)-A186350(n+1)` -/
def P890735117787856647.Spec : Prop :=
  ∀ n, P890735117787856647.a n = A214263 n

end A214263

/-! ## A214263.P12359292705383491944

`A003982(8*n+4)`
-/

namespace A214263.P12359292705383491944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (8 * n + 4)

end

end A214263.P12359292705383491944

namespace A214263

/-- `A003982(8*n+4)` -/
def P12359292705383491944.Spec : Prop :=
  ∀ n, P12359292705383491944.a n = A214263 n

end A214263

/-! ## A214263.P8463875371365456409

`A214505(8*n+4)`
-/

namespace A214263.P8463875371365456409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 (8 * n + 4)

end

end A214263.P8463875371365456409

namespace A214263

/-- `A214505(8*n+4)` -/
def P8463875371365456409.Spec : Prop :=
  ∀ n, P8463875371365456409.a n = A214263 n

end A214263

/-! ## A214263.P7692907318989349052

`A132212(n)%2`
-/

namespace A214263.P7692907318989349052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132212 n) 2

end

end A214263.P7692907318989349052

namespace A214263

/-- `A132212(n)%2` -/
def P7692907318989349052.Spec : Prop :=
  ∀ n, P7692907318989349052.a n = A214263 n

end A214263

/-!
# A214264: Expansion of f(x^3, x^5) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A214264, the canonical program `A214264.P7340386951159269035` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214264 has offset 0).

The definition of A214264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214264.P7340386951159269035

`A010054(2*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214264

/-- `A010054(2*n)` -/
def P7340386951159269035.Spec : Prop :=
  ∀ n, P7340386951159269035.a n = A214264 n

theorem P7340386951159269035.correct : P7340386951159269035.Spec := by
  intro n
  simp only [A214264]

end A214264

/-! ## A214264.P4398459029729381583

`char[∑[2*lcm(2, n)-n]]`
-/

namespace A214264.P4398459029729381583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A214264.P4398459029729381583

namespace A214264

/-- `char[∑[2*lcm(2, n)-n]]` -/
def P4398459029729381583.Spec : Prop :=
  ∀ n, (P4398459029729381583.a n : ℤ) = A214264 n

end A214264

/-! ## A214264.P10312402546368905712

`char[∑[n*3^and(1, n)]]`
-/

namespace A214264.P10312402546368905712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A214264.P10312402546368905712

namespace A214264

/-- `char[∑[n*3^and(1, n)]]` -/
def P10312402546368905712.Spec : Prop :=
  ∀ n, (P10312402546368905712.a n : ℤ) = A214264 n

end A214264

/-! ## A214264.P648972650212759106

`char[ceil(n/2)*Δ[n²]]`
-/

namespace A214264.P648972650212759106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A214264.P648972650212759106

namespace A214264

/-- `char[ceil(n/2)*Δ[n²]]` -/
def P648972650212759106.Spec : Prop :=
  ∀ n, (P648972650212759106.a n : ℤ) = A214264 n

end A214264

/-! ## A214264.P18165081532064887698

`abs(A244465(n))`
-/

namespace A214264.P18165081532064887698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244465 n|

end

end A214264.P18165081532064887698

namespace A214264

/-- `abs(A244465(n))` -/
def P18165081532064887698.Spec : Prop :=
  ∀ n, P18165081532064887698.a n = A214264 n

end A214264

/-! ## A214264.P12525669429702708242

`A246862(n)%2`
-/

namespace A214264.P12525669429702708242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246862 n) 2

end

end A214264.P12525669429702708242

namespace A214264

/-- `A246862(n)%2` -/
def P12525669429702708242.Spec : Prop :=
  ∀ n, P12525669429702708242.a n = A214264 n

end A214264

/-! ## A214264.P3460104539145430225

`and(1, A230204(n))`
-/

namespace A214264.P3460104539145430225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A230204 n)

end

end A214264.P3460104539145430225

namespace A214264

/-- `and(1, A230204(n))` -/
def P3460104539145430225.Spec : Prop :=
  ∀ n, P3460104539145430225.a n = A214264 n

end A214264

/-! ## A214264.P15893894176145349594

`2-A238303(2*n)`
-/

namespace A214264.P15893894176145349594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238303 (2 * n)

end

end A214264.P15893894176145349594

namespace A214264

/-- `2-A238303(2*n)` -/
def P15893894176145349594.Spec : Prop :=
  ∀ n, P15893894176145349594.a n = A214264 n

end A214264

/-! ## A214264.P12136154495536248851

`A023531(A004273(n))`
-/

namespace A214264.P12136154495536248851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A004273 n).toNat

end

end A214264.P12136154495536248851

namespace A214264

/-- `A023531(A004273(n))` -/
def P12136154495536248851.Spec : Prop :=
  ∀ n, P12136154495536248851.a n = A214264 n

end A214264

/-! ## A214264.P17610824926738326898

`A000035(A246862(n))`
-/

namespace A214264.P17610824926738326898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A246862 n).toNat

end

end A214264.P17610824926738326898

namespace A214264

/-- `A000035(A246862(n))` -/
def P17610824926738326898.Spec : Prop :=
  ∀ n, P17610824926738326898.a n = A214264 n

end A214264

/-! ## A214264.P15550301990049562104

`A033999(n)*A244465(n)`
-/

namespace A214264.P15550301990049562104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A244465 n

end

end A214264.P15550301990049562104

namespace A214264

/-- `A033999(n)*A244465(n)` -/
def P15550301990049562104.Spec : Prop :=
  ∀ n, P15550301990049562104.a n = A214264 n

end A214264

/-! ## A214264.P17122891397603896449

`A057079(n)*A244465(n)`
-/

namespace A214264.P17122891397603896449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A244465 n

end

end A214264.P17122891397603896449

namespace A214264

/-- `A057079(n)*A244465(n)` -/
def P17122891397603896449.Spec : Prop :=
  ∀ n, P17122891397603896449.a n = A214264 n

end A214264

/-! ## A214264.P10570834634926595699

`A081729(n)*A244465(n)`
-/

namespace A214264.P10570834634926595699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n * A244465 n

end

end A214264.P10570834634926595699

namespace A214264

/-- `A081729(n)*A244465(n)` -/
def P10570834634926595699.Spec : Prop :=
  ∀ n, P10570834634926595699.a n = A214264 n

end A214264

/-! ## A214264.P12503988960788102651

`A130151(n)*A244465(n)`
-/

namespace A214264.P12503988960788102651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n * A244465 n

end

end A214264.P12503988960788102651

namespace A214264

/-- `A130151(n)*A244465(n)` -/
def P12503988960788102651.Spec : Prop :=
  ∀ n, P12503988960788102651.a n = A214264 n

end A214264

/-! ## A214264.P13015462364532207633

`A131556(n)*A244465(n)`
-/

namespace A214264.P13015462364532207633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 n * A244465 n

end

end A214264.P13015462364532207633

namespace A214264

/-- `A131556(n)*A244465(n)` -/
def P13015462364532207633.Spec : Prop :=
  ∀ n, P13015462364532207633.a n = A214264 n

end A214264

/-! ## A214264.P15075934355385204384

`A132951(n)*A244465(n)`
-/

namespace A214264.P15075934355385204384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132951 n * A244465 n

end

end A214264.P15075934355385204384

namespace A214264

/-- `A132951(n)*A244465(n)` -/
def P15075934355385204384.Spec : Prop :=
  ∀ n, P15075934355385204384.a n = A214264 n

end A214264

/-! ## A214264.P3004015862135558556

`gcd(A000038(n), A244465(n))`
-/

namespace A214264.P3004015862135558556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244465 n)

end

end A214264.P3004015862135558556

namespace A214264

/-- `gcd(A000038(n), A244465(n))` -/
def P3004015862135558556.Spec : Prop :=
  ∀ n, (P3004015862135558556.a n : ℤ) = A214264 n

end A214264

/-! ## A214264.P5012560194391967626

`lcm(A005131(n), A244465(n))`
-/

namespace A214264.P5012560194391967626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005131 n) (A244465 n)

end

end A214264.P5012560194391967626

namespace A214264

/-- `lcm(A005131(n), A244465(n))` -/
def P5012560194391967626.Spec : Prop :=
  ∀ n, (P5012560194391967626.a n : ℤ) = A214264 n

end A214264

/-! ## A214264.P1103125173837986224

`and(A016760(n), A246862(n))`
-/

namespace A214264.P1103125173837986224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A246862 n)

end

end A214264.P1103125173837986224

namespace A214264

/-- `and(A016760(n), A246862(n))` -/
def P1103125173837986224.Spec : Prop :=
  ∀ n, P1103125173837986224.a n = A214264 n

end A214264

/-! ## A214264.P152770475288556094

`and(A016820(n), A246862(n))`
-/

namespace A214264.P152770475288556094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A246862 n)

end

end A214264.P152770475288556094

namespace A214264

/-- `and(A016820(n), A246862(n))` -/
def P152770475288556094.Spec : Prop :=
  ∀ n, P152770475288556094.a n = A214264 n

end A214264

/-!
# A214269: Number T(n,k) of compositions of n where the difference between largest and smallest parts equals k and adjacent parts are unequal; triangle T(n,k), n>=1, 0<=k

The programs for A214269, there is no canonical definition to state claims against.
-/

/-! ## A214269.P635809375147052319

`A001221(A020992(A029618(n)))`
-/

namespace A214269.P635809375147052319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020992 (A029618 n).toNat).toNat

end

end A214269.P635809375147052319

/-! ## A214269.P15558176540362012484

`A333766(A289481(n)*A336320(n))`
-/

namespace A214269.P15558176540362012484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A289481 n * A336320 n).toNat

end

end A214269.P15558176540362012484

/-! ## A214269.P15668001739235845356

`∑{e}[A020992(A029618(n)), A007318(#)]`
-/

namespace A214269.P15668001739235845356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A214269.P15668001739235845356

/-! ## A214269.P15705688725295785362

`∑{e}[A020992(A029618(n)), A008683(#)]`
-/

namespace A214269.P15705688725295785362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (Nat.factorization (f1 n).natAbs p)

end

end A214269.P15705688725295785362

/-! ## A214269.P13589576240124036646

`A001876(A163940(n)*A309593(2*(n+2)))`
-/

namespace A214269.P13589576240124036646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A163940 n * A309593 (2 * (n + 2))).toNat

end

end A214269.P13589576240124036646

/-!
# A214270: Number of compositions of n where the difference between largest and smallest parts equals 1 and adjacent parts are unequal.

The programs for A214270, there is no canonical definition to state claims against.
-/

/-! ## A214270.P11075514502038960361

`A066272(n+1)+Δ[A248517(n)]`
-/

namespace A214270.P11075514502038960361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + (f1 (n + 1) - f1 n)

end

end A214270.P11075514502038960361

/-! ## A214270.P6238826854637637852

`A069283(n+1)+A066272(n+1)`
-/

namespace A214270.P6238826854637637852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + A066272 (n + 1)

end

end A214270.P6238826854637637852

/-! ## A214270.P13029793879857706779

`A001227(n+1)+A066272(n+1)-1`
-/

namespace A214270.P13029793879857706779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A066272 (n + 1) - 1)

end

end A214270.P13029793879857706779

/-! ## A214270.P3662461691974369707

`A001227(n+1)+A066241(n+1)-2`
-/

namespace A214270.P3662461691974369707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A066241 (n + 1) - 2)

end

end A214270.P3662461691974369707

/-! ## A214270.P7198362916437044612

`A023443(A066272(n+1)+A001227(n+1))`
-/

namespace A214270.P7198362916437044612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066272 (n + 1) + A001227 (n + 1)).toNat

end

end A214270.P7198362916437044612

/-! ## A214270.P5502657518976272203

`A066272(n+1)+A032741(A000265(n+1))`
-/

namespace A214270.P5502657518976272203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + A032741 (A000265 (n + 1)).toNat

end

end A214270.P5502657518976272203

/-! ## A214270.P18041727119499975528

`A033619(A066272(n+1)+A001227(n+1))`
-/

namespace A214270.P18041727119499975528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A066272 (n + 1) + A001227 (n + 1)).toNat

end

end A214270.P18041727119499975528

/-! ## A214270.P1313439138701648298

`A000005(A000265(n+1))+A066241(n+1)-2`
-/

namespace A214270.P1313439138701648298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat + (A066241 (n + 1) - 2)

end

end A214270.P1313439138701648298

/-! ## A214270.P882000995795393524

`A066272(n+1)+A001222(A293514(A064989(n+1)))`
-/

namespace A214270.P882000995795393524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + A001222 (A293514 (A064989 (n + 1)).toNat).toNat

end

end A214270.P882000995795393524

/-! ## A214270.P9571371258438432818

`A214269(∑[n]+2)%(n+1)`
-/

namespace A214270.P9571371258438432818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214269 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (n + 1 : ℤ)

end

end A214270.P9571371258438432818

/-! ## A214270.P16967002383308039293

`A214268(A034856(n+2))-1`
-/

namespace A214270.P16967002383308039293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214268 (A034856 (n + 2)).toNat - 1

end

end A214270.P16967002383308039293

/-!
# A214271: Number of compositions of n where the difference between largest and smallest parts equals 2 and adjacent parts are unequal.

The programs for A214271, there is no canonical definition to state claims against.
-/

/-! ## A214271.P5537166759655419348

`A214269(∑[n+2]+4)`
-/

namespace A214271.P5537166759655419348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214271.P5537166759655419348

/-! ## A214271.P17594283601084238545

`or(char[8], A214269(A167614(n+1)))`
-/

namespace A214271.P17594283601084238545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A214269 (A167614 (n + 1)).toNat)

end

end A214271.P17594283601084238545

/-! ## A214271.P9871403393380473036

`A214269(A167614(n+1))%A166536(n)`
-/

namespace A214271.P9871403393380473036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214269 (A167614 (n + 1)).toNat) (A166536 n)

end

end A214271.P9871403393380473036

/-! ## A214271.P17853684950236197475

`A057427(n)*A214269(A167499(n)+n)`
-/

namespace A214271.P17853684950236197475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A214269 (A167499 n + (n : ℤ)).toNat

end

end A214271.P17853684950236197475

/-! ## A214271.P12438604970395267332

`lcm(A057077(n), A214269(A167499(n)+n))`
-/

namespace A214271.P12438604970395267332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A214269 (A167499 n + (n : ℤ)).toNat)

end

end A214271.P12438604970395267332

/-! ## A214271.P12306912502115064070

`char[A006068(n)]*A214269(A167614(n+1))`
-/

namespace A214271.P12306912502115064070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214269 (A167614 (n + 1)).toNat

end

end A214271.P12306912502115064070

/-! ## A214271.P3590274103696599992

`char[A035043(n)]*A214269(A167614(n+1))`
-/

namespace A214271.P3590274103696599992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214269 (A167614 (n + 1)).toNat

end

end A214271.P3590274103696599992

/-! ## A214271.P1010470088559040215

`A214269(A167614(n+1))+A000007(n+1)`
-/

namespace A214271.P1010470088559040215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A214271.P1010470088559040215

/-! ## A214271.P6939265015244307313

`lcm(A034947(n+1), A214269(A167614(n+1)))`
-/

namespace A214271.P6939265015244307313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A214269 (A167614 (n + 1)).toNat)

end

end A214271.P6939265015244307313

/-! ## A214271.P13771143275687482856

`A002061(n)%2*A214269(A167614(n+1))`
-/

namespace A214271.P13771143275687482856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) 2 * A214269 (A167614 (n + 1)).toNat

end

end A214271.P13771143275687482856

/-! ## A214271.P7049915762800027793

`A000188(A056552(n+1))*A214269(A167614(n+1))`
-/

namespace A214271.P7049915762800027793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A056552 (n + 1)).toNat * A214269 (A167614 (n + 1)).toNat

end

end A214271.P7049915762800027793

/-! ## A214271.P4897850179828489147

`A000188(A083346(n+1))*A214269(A167614(n+1))`
-/

namespace A214271.P4897850179828489147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A083346 (n + 1)).toNat * A214269 (A167614 (n + 1)).toNat

end

end A214271.P4897850179828489147

/-! ## A214271.P2835552086921136342

`A003557(A020639(n+2))*A214269(A167614(n+1))`
-/

namespace A214271.P2835552086921136342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A020639 (n + 2)).toNat * A214269 (A167614 (n + 1)).toNat

end

end A214271.P2835552086921136342

/-!
# A214272: Number of compositions of n where the difference between largest and smallest parts equals 3 and adjacent parts are unequal.

The programs for A214272, there is no canonical definition to state claims against.
-/

/-! ## A214272.P5230879831833469498

`A214269(∑[n+3]+7)`
-/

namespace A214272.P5230879831833469498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A214272.P5230879831833469498

/-! ## A214272.P13765841138174844930

`gcd(n, n+1)*A214269(A167499(n+2)-1)`
-/

namespace A214272.P13765841138174844930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A214269 (A167499 (n + 2) - 1).toNat

end

end A214272.P13765841138174844930

/-! ## A214272.P5542369893598524627

`A057427(n)*A214269(A055999(n)+10)`
-/

namespace A214272.P5542369893598524627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A214269 (A055999 n + 10).toNat

end

end A214272.P5542369893598524627

/-! ## A214272.P1250004353287220831

`A214269(A055999(n)+10)%A079583(n)`
-/

namespace A214272.P1250004353287220831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214269 (A055999 n + 10).toNat) (A079583 n)

end

end A214272.P1250004353287220831

/-! ## A214272.P12817859582630126041

`A057427(n)*A214269(Δ[A005286(n)]+5)`
-/

namespace A214272.P12817859582630126041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A214269 (f1 (n + 1) - f1 n + 5).toNat

end

end A214272.P12817859582630126041

/-! ## A214272.P17397414626433024684

`A214269(A055999(n)+10)+A000007(n+1)`
-/

namespace A214272.P17397414626433024684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 n + 10).toNat + A000007 (n + 1)

end

end A214272.P17397414626433024684

/-! ## A214272.P13887066912751048854

`A214269(A055999(n)+10)*A298426(A133263(n))`
-/

namespace A214272.P13887066912751048854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 n + 10).toNat * A298426 (A133263 n).toNat

end

end A214272.P13887066912751048854

/-! ## A214272.P14039482766761732644

`A006257(A001316(n))*A214269(A167499(n+2)-1)`
-/

namespace A214272.P14039482766761732644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A001316 n).toNat * A214269 (A167499 (n + 2) - 1).toNat

end

end A214272.P14039482766761732644

/-! ## A214272.P8372270385979451534

`A214269(A055999(n)+10)+A000122(A000040(n+2))`
-/

namespace A214272.P8372270385979451534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 n + 10).toNat + A000122 (A000040 (n + 2)).toNat

end

end A214272.P8372270385979451534

/-! ## A214272.P7217417319680184614

`A214269(A055999(n)+10)+A010815(n²+41+n)`
-/

namespace A214272.P7217417319680184614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 n + 10).toNat + A010815 (n ^ 2 + 41 + n)

end

end A214272.P7217417319680184614

/-!
# A214273: Number of compositions of n where the difference between largest and smallest parts equals 4 and adjacent parts are unequal.

The programs for A214273, there is no canonical definition to state claims against.
-/

/-! ## A214273.P9301691096747246405

`A214269(A167499(n+3))`
-/

namespace A214273.P9301691096747246405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167499 (n + 3)).toNat

end

end A214273.P9301691096747246405

/-! ## A214273.P11504222061913797896

`A214269(A167614(n+3)+2)`
-/

namespace A214273.P11504222061913797896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 3) + 2).toNat

end

end A214273.P11504222061913797896

/-! ## A214273.P8265478580577344193

`A214269(A000124(n+4)+4)`
-/

namespace A214273.P8265478580577344193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 4) + 4).toNat

end

end A214273.P8265478580577344193

/-! ## A214273.P194101083293932632

`A214269(A000217(n+4)+5)`
-/

namespace A214273.P194101083293932632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 4) + 5).toNat

end

end A214273.P194101083293932632

/-! ## A214273.P16558656110819205551

`A214269(A055999(n+3)-A005843(n))`
-/

namespace A214273.P16558656110819205551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 (n + 3) - A005843 n).toNat

end

end A214273.P16558656110819205551

/-!
# A214274: Number of compositions of n where the difference between largest and smallest parts equals 5 and adjacent parts are unequal.

The programs for A214274, there is no canonical definition to state claims against.
-/

/-! ## A214274.P671333830689974762

`A214269(A167499(n+4)+1)`
-/

namespace A214274.P671333830689974762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167499 (n + 4) + 1).toNat

end

end A214274.P671333830689974762

/-! ## A214274.P4721379432932754279

`A214269(A167614(n+4)+3)`
-/

namespace A214274.P4721379432932754279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 4) + 3).toNat

end

end A214274.P4721379432932754279

/-! ## A214274.P13147945448980038994

`A214269(A000124(n+5)+5)`
-/

namespace A214274.P13147945448980038994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 5) + 5).toNat

end

end A214274.P13147945448980038994

/-! ## A214274.P1645237148940109494

`A214269(A000096(n+4)+7)`
-/

namespace A214274.P1645237148940109494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000096 (n + 4) + 7).toNat

end

end A214274.P1645237148940109494

/-! ## A214274.P8396287821088321554

`A214269(A000217(n+5)+6)`
-/

namespace A214274.P8396287821088321554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 5) + 6).toNat

end

end A214274.P8396287821088321554

/-! ## A214274.P8754000852490283441

`A214269(A161680(n+6)+6)`
-/

namespace A214274.P8754000852490283441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A161680 (n + 6) + 6).toNat

end

end A214274.P8754000852490283441

/-! ## A214274.P18337289296856849948

`A214269(A046691(n+3)+10)`
-/

namespace A214274.P18337289296856849948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A046691 (n + 3) + 10).toNat

end

end A214274.P18337289296856849948

/-!
# A214275: Number of compositions of n where the difference between largest and smallest parts equals 6 and adjacent parts are unequal.

The programs for A214275, there is no canonical definition to state claims against.
-/

/-! ## A214275.P928185597299365728

`A214269(A167614(n+5)+4)`
-/

namespace A214275.P928185597299365728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 5) + 4).toNat

end

end A214275.P928185597299365728

/-! ## A214275.P6743617957778374830

`A214269(A000217(n+6)+7)`
-/

namespace A214275.P6743617957778374830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 6) + 7).toNat

end

end A214275.P6743617957778374830

/-! ## A214275.P10354829172128266702

`A214269(A000124(n+7)-(n+1))`
-/

namespace A214275.P10354829172128266702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A214275.P10354829172128266702

/-! ## A214275.P14621831760929854570

`A214269(A027379(n+6)-4-Δ[n²])`
-/

namespace A214275.P14621831760929854570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A027379 (n + 6) - 4 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A214275.P14621831760929854570

/-! ## A214275.P9706810971699714742

`A214269(A055999(n+5)-A005843(n+1))`
-/

namespace A214275.P9706810971699714742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 (n + 5) - A005843 (n + 1)).toNat

end

end A214275.P9706810971699714742

/-! ## A214275.P9689915119608051111

`A214269(A001489(n+1)+A000124(n+7))`
-/

namespace A214275.P9689915119608051111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A001489 (n + 1) + A000124 (n + 7)).toNat

end

end A214275.P9689915119608051111

/-!
# A214276: Number of compositions of n where the difference between largest and smallest parts equals 7 and adjacent parts are unequal.

The programs for A214276, there is no canonical definition to state claims against.
-/

/-! ## A214276.P13515126264447744950

`A214269(A167614(n+6)+5)`
-/

namespace A214276.P13515126264447744950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 6) + 5).toNat

end

end A214276.P13515126264447744950

/-! ## A214276.P5196145168506232177

`A214269(A000217(n+7)+8)`
-/

namespace A214276.P5196145168506232177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 7) + 8).toNat

end

end A214276.P5196145168506232177

/-! ## A214276.P5437474318789834732

`A214269(Δ[A101853(n+4)]-2*n)`
-/

namespace A214276.P5437474318789834732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A214276.P5437474318789834732

/-! ## A214276.P9543641984437726477

`A214269(A000124(n+9)-9-Δ[n²])`
-/

namespace A214276.P9543641984437726477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 9) - 9 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A214276.P9543641984437726477

/-! ## A214276.P5359702511440934373

`A214269(A001489(n+1)+A000124(n+8))`
-/

namespace A214276.P5359702511440934373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A001489 (n + 1) + A000124 (n + 8)).toNat

end

end A214276.P5359702511440934373

/-! ## A214276.P8168600809524088420

`A214269(eq[7, A002262(n)]+1)`
-/

namespace A214276.P8168600809524088420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A214276.P8168600809524088420

/-!
# A214277: Number of compositions of n where the difference between largest and smallest parts equals 8 and adjacent parts are unequal.

The programs for A214277, there is no canonical definition to state claims against.
-/

/-! ## A214277.P12978612261825408006

`A214269(A000124(n+8)+8)`
-/

namespace A214277.P12978612261825408006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 8) + 8).toNat

end

end A214277.P12978612261825408006

/-! ## A214277.P10563891874440938946

`A214269(A000217(n+8)+9)`
-/

namespace A214277.P10563891874440938946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 8) + 9).toNat

end

end A214277.P10563891874440938946

/-! ## A214277.P13300143406315287266

`A214269(A161680(n+9)+9)`
-/

namespace A214277.P13300143406315287266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A161680 (n + 9) + 9).toNat

end

end A214277.P13300143406315287266

/-! ## A214277.P13421001806395291053

`A214269(A167614(n+8)-(n+3))`
-/

namespace A214277.P13421001806395291053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 8) - (n + 3 : ℤ)).toNat

end

end A214277.P13421001806395291053

/-! ## A214277.P5722921636833342539

`A214269(A055999(n+7)-A005843(n+2))`
-/

namespace A214277.P5722921636833342539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A055999 (n + 7) - A005843 (n + 2)).toNat

end

end A214277.P5722921636833342539

/-!
# A214278: Number of compositions of n where the difference between largest and smallest parts equals 9 and adjacent parts are unequal.

The programs for A214278, there is no canonical definition to state claims against.
-/

/-! ## A214278.P17458157011425081835

`A214269(A167499(n+8)+5)`
-/

namespace A214278.P17458157011425081835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167499 (n + 8) + 5).toNat

end

end A214278.P17458157011425081835

/-! ## A214278.P6757961882174793455

`A214269(A000124(n+9)+9)`
-/

namespace A214278.P6757961882174793455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 9) + 9).toNat

end

end A214278.P6757961882174793455

/-! ## A214278.P6619000448077582891

`A214269(A000217(n+9)+10)`
-/

namespace A214278.P6619000448077582891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 9) + 10).toNat

end

end A214278.P6619000448077582891

/-! ## A214278.P14552968092628321075

`A214269(A167614(n+9)-(n+3))`
-/

namespace A214278.P14552968092628321075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 9) - (n + 3 : ℤ)).toNat

end

end A214278.P14552968092628321075

/-! ## A214278.P11426318431558648079

`A214269(eq[11, A131818(n+1)])`
-/

namespace A214278.P11426318431558648079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214278.P11426318431558648079

/-!
# A214279: Number of compositions of n where the difference between largest and smallest parts equals 10 and adjacent parts are unequal.

The programs for A214279, there is no canonical definition to state claims against.
-/

/-! ## A214279.P12406228262787648291

`A214269(A167614(n+9)+8)`
-/

namespace A214279.P12406228262787648291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A167614 (n + 9) + 8).toNat

end

end A214279.P12406228262787648291

/-! ## A214279.P10093047879419454870

`A214269(A134869(n+10)+10)`
-/

namespace A214279.P10093047879419454870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A134869 (n + 10) + 10).toNat

end

end A214279.P10093047879419454870

/-! ## A214279.P2484666602677812611

`A214269(A000217(n+10)+11)`
-/

namespace A214279.P2484666602677812611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000217 (n + 10) + 11).toNat

end

end A214279.P2484666602677812611

/-! ## A214279.P10950381802411503925

`A214269(A000124(n+11)-(n+1))`
-/

namespace A214279.P10950381802411503925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (A000124 (n + 11) - (n + 1 : ℤ)).toNat

end

end A214279.P10950381802411503925

/-! ## A214279.P16894809266630434383

`A214269(eq[19, A066657(n)])`
-/

namespace A214279.P16894809266630434383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214279.P16894809266630434383

/-! ## A214279.P5028315773758989541

`A214269(eq[12, A131818(n+1)])`
-/

namespace A214279.P5028315773758989541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214279.P5028315773758989541

/-!
# A214280: Total number of primes which can be reached via Cunningham chains, starting with prime(n), not counting this starting prime.

The programs for A214280, there is no canonical definition to state claims against.
-/

/-! ## A214280.P5003800129479421059

`A263879(n+1)+A001588(C(2, n²))-2`
-/

namespace A214280.P5003800129479421059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A001588 (Nat.choose 2 (n ^ 2)) - 2

end

end A214280.P5003800129479421059

/-! ## A214280.P13799012056180401511

`A263879(n+1)+A134824(A028310(n))`
-/

namespace A214280.P13799012056180401511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A134824 (A028310 n).toNat

end

end A214280.P13799012056180401511

/-! ## A214280.P11528603623280788970

`A263879(n+1)+A033999(A151800(n))`
-/

namespace A214280.P11528603623280788970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A033999 (A151800 n).toNat

end

end A214280.P11528603623280788970

/-! ## A214280.P5519869376291270384

`A263879(n+1)+A134824(A063733(n))`
-/

namespace A214280.P5519869376291270384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A134824 (A063733 n).toNat

end

end A214280.P5519869376291270384

/-! ## A214280.P2227306951717509568

`A263879(n+1)+A103452(A161680(n))`
-/

namespace A214280.P2227306951717509568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A103452 (A161680 n).toNat

end

end A214280.P2227306951717509568

/-! ## A214280.P6844481817663038742

`A263879(n+1)-A033999(A060632(n))`
-/

namespace A214280.P6844481817663038742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) - A033999 (A060632 n).toNat

end

end A214280.P6844481817663038742

/-! ## A214280.P5012044757364580384

`A263879(n+1)-A158388(A056847(n))`
-/

namespace A214280.P5012044757364580384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) - A158388 (A056847 n).toNat

end

end A214280.P5012044757364580384

/-! ## A214280.P5087950443853846830

`A263879(n+1)+A008683(A136548(n+1))`
-/

namespace A214280.P5087950443853846830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A008683 (A136548 (n + 1)).toNat

end

end A214280.P5087950443853846830

/-! ## A214280.P14935285899808950262

`A263879(n+1)+A008683(A284374(n+1))`
-/

namespace A214280.P14935285899808950262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) + A008683 (A284374 (n + 1)).toNat

end

end A214280.P14935285899808950262

/-! ## A214280.P14123583765464837824

`A263879(n+1)-A033999(A000010(n+1))`
-/

namespace A214280.P14123583765464837824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263879 (n + 1) - A033999 (A000010 (n + 1)).toNat

end

end A214280.P14123583765464837824

/-!
# A214281: Triangle by rows, row n contains the ConvOffs transform of the first n terms of 1, 1, 3, 2, 5, 3, 7, ... (A026741 without leading zero).

The programs for A214281, there is no canonical definition to state claims against.
-/

/-! ## A214281.P9895078473674166067

`A130595(n)/A122750(n)`
-/

namespace A214281.P9895078473674166067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 n : ℚ) / (A122750 n : ℚ)

end

end A214281.P9895078473674166067

/-! ## A214281.P8746861895133179950

`lcm(A107711(n), A161642(n))`
-/

namespace A214281.P8746861895133179950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107711 n) (A161642 n)

end

end A214281.P8746861895133179950

/-! ## A214281.P7556601444711976771

`lcm(A178395(n), A246465(n))`
-/

namespace A214281.P7556601444711976771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178395 n) (A246465 n)

end

end A214281.P7556601444711976771

/-! ## A214281.P1785579948745147057

`A007318(n)/(2-A106465(n))`
-/

namespace A214281.P1785579948745147057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (2 - A106465 n : ℚ)

end

end A214281.P1785579948745147057

/-! ## A214281.P6183090717290819343

`gcd(A007318(n), A124932(n+1))`
-/

namespace A214281.P6183090717290819343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A124932 (n + 1))

end

end A214281.P6183090717290819343

/-! ## A214281.P15525771319726179592

`A007318(n)/gcd(2, A077028(n))`
-/

namespace A214281.P15525771319726179592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd 2 (A077028 n) : ℚ)

end

end A214281.P15525771319726179592

/-! ## A214281.P8776793136719415977

`A007318(n)/gcd(6, floor(3/2*A008288(n)))`
-/

namespace A214281.P8776793136719415977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd 6 ⌊(3 : ℚ) / 2 * (A008288 n : ℚ)⌋ : ℚ)

end

end A214281.P8776793136719415977

/-! ## A214281.P9135205609010969319

`A007318(n)/A000034(A004198(n))`
-/

namespace A214281.P9135205609010969319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A000034 (A004198 n).toNat : ℚ)

end

end A214281.P9135205609010969319

/-! ## A214281.P16007711850337859014

`A007318(n)/A000034(A004247(n))`
-/

namespace A214281.P16007711850337859014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A000034 (A004247 n).toNat : ℚ)

end

end A214281.P16007711850337859014

/-! ## A214281.P12929813698151755582

`A004525(gcd(A124927(n), A244135(n)))`
-/

namespace A214281.P12929813698151755582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.gcd (A124927 n) (A244135 n))

end

end A214281.P12929813698151755582

/-!
# A214282: Largest Euler characteristic of a downset on an n-dimensional cube.

The programs for A214282, the canonical program `A214282.P2833437964249261638` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214282 has offset 1).

The definition of A214282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214282.P2833437964249261638

`A214283(n+1)+A001405(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214282

/-- `A214283(n+1)+A001405(n+1)` -/
def P2833437964249261638.Spec : Prop :=
  ∀ n, P2833437964249261638.a n = A214282 (n + 1)

theorem P2833437964249261638.correct : P2833437964249261638.Spec := by
  intro n
  simp only [A214282, Nat.add_sub_cancel]

end A214282

/-! ## A214282.P13779370120413733986

`A090192(n+1)-A214283(n+1)`
-/

namespace A214282.P13779370120413733986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1) - A214283 (n + 1)

end

end A214282.P13779370120413733986

namespace A214282

/-- `A090192(n+1)-A214283(n+1)` -/
def P13779370120413733986.Spec : Prop :=
  ∀ n, P13779370120413733986.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P16569207800241017915

`A037952(n)+A051920(n)-A006481(n+1)`
-/

namespace A214282.P16569207800241017915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + (A051920 n - A006481 (n + 1))

end

end A214282.P16569207800241017915

namespace A214282

/-- `A037952(n)+A051920(n)-A006481(n+1)` -/
def P16569207800241017915.Spec : Prop :=
  ∀ n, P16569207800241017915.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P14998478683590942614

`A056594(n)*A126120(n)-A214283(n+1)`
-/

namespace A214282.P14998478683590942614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A126120 n - A214283 (n + 1)

end

end A214282.P14998478683590942614

namespace A214282

/-- `A056594(n)*A126120(n)-A214283(n+1)` -/
def P14998478683590942614.Spec : Prop :=
  ∀ n, P14998478683590942614.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P6959401439072911255

`A051920(n+1)-A006481(n+1)`
-/

namespace A214282.P6959401439072911255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (n + 1) - A006481 (n + 1)

end

end A214282.P6959401439072911255

namespace A214282

/-- `A051920(n+1)-A006481(n+1)` -/
def P6959401439072911255.Spec : Prop :=
  ∀ n, P6959401439072911255.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P1650054643353465990

`(A090192(n+1)+A001405(n+1))/2`
-/

namespace A214282.P1650054643353465990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090192 (n + 1) + A001405 (n + 1) : ℚ) / 2

end

end A214282.P1650054643353465990

namespace A214282

/-- `(A090192(n+1)+A001405(n+1))/2` -/
def P1650054643353465990.Spec : Prop :=
  ∀ n, P1650054643353465990.a n = (A214282 (n + 1) : ℚ)

end A214282

/-! ## A214282.P7244564321471606600

`(A001405(n+1)-A105523(n+1))/2`
-/

namespace A214282.P7244564321471606600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) - A105523 (n + 1) : ℚ) / 2

end

end A214282.P7244564321471606600

namespace A214282

/-- `(A001405(n+1)-A105523(n+1))/2` -/
def P7244564321471606600.Spec : Prop :=
  ∀ n, P7244564321471606600.a n = (A214282 (n + 1) : ℚ)

end A214282

/-! ## A214282.P7489154663413910055

`A214283(n+1)+A332754(n+1)+A332754(n+2)`
-/

namespace A214282.P7489154663413910055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214283 (n + 1) + (A332754 (n + 1) + A332754 (n + 2))

end

end A214282.P7489154663413910055

namespace A214282

/-- `A214283(n+1)+A332754(n+1)+A332754(n+2)` -/
def P7489154663413910055.Spec : Prop :=
  ∀ n, P7489154663413910055.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P10611496487517340953

`C(n, ∑[∑[n]%2])`
-/

namespace A214282.P10611496487517340953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214282.P10611496487517340953

namespace A214282

/-- `C(n, ∑[∑[n]%2])` -/
def P10611496487517340953.Spec : Prop :=
  ∀ n, (P10611496487517340953.a n : ℤ) = A214282 (n + 1)

end A214282

/-! ## A214282.P10248829349247834417

`C(n, ∑[and(1, ∑[n])])`
-/

namespace A214282.P10248829349247834417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214282.P10248829349247834417

namespace A214282

/-- `C(n, ∑[and(1, ∑[n])])` -/
def P10248829349247834417.Spec : Prop :=
  ∀ n, (P10248829349247834417.a n : ℤ) = A214282 (n + 1)

end A214282

/-! ## A214282.P13036342850018716335

`C(n, 2*round(n/4))`
-/

namespace A214282.P13036342850018716335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat

end

end A214282.P13036342850018716335

namespace A214282

/-- `C(n, 2*round(n/4))` -/
def P13036342850018716335.Spec : Prop :=
  ∀ n, (P13036342850018716335.a n : ℤ) = A214282 (n + 1)

end A214282

/-! ## A214282.P15896721851536639744

`A007123(n+2)-A071688(n+1)`
-/

namespace A214282.P15896721851536639744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) - A071688 (n + 1)

end

end A214282.P15896721851536639744

namespace A214282

/-- `A007123(n+2)-A071688(n+1)` -/
def P15896721851536639744.Spec : Prop :=
  ∀ n, P15896721851536639744.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P8051803872611519025

`A074909(A104563(n))`
-/

namespace A214282.P8051803872611519025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A104563 n).toNat

end

end A214282.P8051803872611519025

namespace A214282

/-- `A074909(A104563(n))` -/
def P8051803872611519025.Spec : Prop :=
  ∀ n, P8051803872611519025.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P2610240376273968235

`A007318(∑[and(1, ∑[n])+n])`
-/

namespace A214282.P2610240376273968235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214282.P2610240376273968235

namespace A214282

/-- `A007318(∑[and(1, ∑[n])+n])` -/
def P2610240376273968235.Spec : Prop :=
  ∀ n, P2610240376273968235.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P18345194354600349731

`A007318(∑[2*n-(a(n-2)+1)])` with `a(0)=0, a(1)=2`
-/

namespace A214282.P18345194354600349731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (2 * n : ℤ) - (f1 (n - 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214282.P18345194354600349731

namespace A214282

/-- `A007318(∑[2*n-(a(n-2)+1)])` -/
def P18345194354600349731.Spec : Prop :=
  ∀ n, P18345194354600349731.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P16041835757339284675

`A007318(∑[2*n-1-a(n-2)])` with `a(0)=0, a(1)=2`
-/

namespace A214282.P16041835757339284675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (2 * n : ℤ) - 1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214282.P16041835757339284675

namespace A214282

/-- `A007318(∑[2*n-1-a(n-2)])` -/
def P16041835757339284675.Spec : Prop :=
  ∀ n, P16041835757339284675.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P8395685880212966482

`A007318(∑[n-1-a(n-2)+n])` with `a(0)=0, a(1)=2`
-/

namespace A214282.P8395685880212966482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214282.P8395685880212966482

namespace A214282

/-- `A007318(∑[n-1-a(n-2)+n])` -/
def P8395685880212966482.Spec : Prop :=
  ∀ n, P8395685880212966482.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P2623389540584343552

`A007318(∑[gcd(2*n, (n+1)*(n+2))+n-2])`
-/

namespace A214282.P2623389540584343552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) ((n + 1) * (n + 2)) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214282.P2623389540584343552

namespace A214282

/-- `A007318(∑[gcd(2*n, (n+1)*(n+2))+n-2])` -/
def P2623389540584343552.Spec : Prop :=
  ∀ n, P2623389540584343552.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P9518919610630056017

`A007318(A104563(n)+n)`
-/

namespace A214282.P9518919610630056017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A104563 n + (n : ℤ)).toNat

end

end A214282.P9518919610630056017

namespace A214282

/-- `A007318(A104563(n)+n)` -/
def P9518919610630056017.Spec : Prop :=
  ∀ n, P9518919610630056017.a n = A214282 (n + 1)

end A214282

/-! ## A214282.P3041465943618838444

`A061554(A116996(n))`
-/

namespace A214282.P3041465943618838444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A116996 n).toNat

end

end A214282.P3041465943618838444

namespace A214282

/-- `A061554(A116996(n))` -/
def P3041465943618838444.Spec : Prop :=
  ∀ n, P3041465943618838444.a n = A214282 (n + 1)

end A214282

/-!
# A214283: Smallest Euler characteristic of a downset on an n-dimensional cube.

The programs for A214283, the canonical program `A214283.P6795879513502021104` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214283 has offset 1).

The definition of A214283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214283.P2298224059268905153

`A214282(n+1)-A001405(n+1)`
-/

namespace A214283.P2298224059268905153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (n + 1) - A001405 (n + 1)

end

end A214283.P2298224059268905153

namespace A214283

/-- `A214282(n+1)-A001405(n+1)` -/
def P2298224059268905153.Spec : Prop :=
  ∀ n, P2298224059268905153.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P6795879513502021104

`1-A006481(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214283

/-- `1-A006481(n+1)` -/
def P6795879513502021104.Spec : Prop :=
  ∀ n, P6795879513502021104.a n = A214283 (n + 1)

theorem P6795879513502021104.correct : P6795879513502021104.Spec := by
  intro n
  simp only [A214283, Nat.add_sub_cancel]

end A214283

/-! ## A214283.P18066421327207416425

`A090192(n+1)-A214282(n+1)`
-/

namespace A214283.P18066421327207416425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1) - A214282 (n + 1)

end

end A214283.P18066421327207416425

namespace A214283

/-- `A090192(n+1)-A214282(n+1)` -/
def P18066421327207416425.Spec : Prop :=
  ∀ n, P18066421327207416425.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P10247563869477434180

`(A090192(n+1)-A001405(n+1))/2`
-/

namespace A214283.P10247563869477434180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090192 (n + 1) - A001405 (n + 1) : ℚ) / 2

end

end A214283.P10247563869477434180

namespace A214283

/-- `(A090192(n+1)-A001405(n+1))/2` -/
def P10247563869477434180.Spec : Prop :=
  ∀ n, P10247563869477434180.a n = (A214283 (n + 1) : ℚ)

end A214283

/-! ## A214283.P18308572751101937681

`A214282(n+1)+A036256(n)-A036256(n+1)`
-/

namespace A214283.P18308572751101937681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (n + 1) + (A036256 n - A036256 (n + 1))

end

end A214283.P18308572751101937681

namespace A214283

/-- `A214282(n+1)+A036256(n)-A036256(n+1)` -/
def P18308572751101937681.Spec : Prop :=
  ∀ n, P18308572751101937681.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P10842935313912604742

`-C(n, A106249(n))`
-/

namespace A214283.P10842935313912604742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n (A106249 n).toNat : ℤ)

end

end A214283.P10842935313912604742

namespace A214283

/-- `-C(n, A106249(n))` -/
def P10842935313912604742.Spec : Prop :=
  ∀ n, P10842935313912604742.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P17322568943302418127

`-C(n, A004525(n+1))`
-/

namespace A214283.P17322568943302418127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n (A004525 (n + 1)).toNat : ℤ)

end

end A214283.P17322568943302418127

namespace A214283

/-- `-C(n, A004525(n+1))` -/
def P17322568943302418127.Spec : Prop :=
  ∀ n, P17322568943302418127.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P4693835576425128316

`-C(n, A004524(n)+1)`
-/

namespace A214283.P4693835576425128316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n (A004524 n + 1).toNat : ℤ)

end

end A214283.P4693835576425128316

namespace A214283

/-- `-C(n, A004524(n)+1)` -/
def P4693835576425128316.Spec : Prop :=
  ∀ n, P4693835576425128316.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P5922730371160529725

`char[A074242(n+1)]-C(n, A106249(n))`
-/

namespace A214283.P5922730371160529725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074242 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (Nat.choose n (A106249 n).toNat : ℤ)

end

end A214283.P5922730371160529725

namespace A214283

/-- `char[A074242(n+1)]-C(n, A106249(n))` -/
def P5922730371160529725.Spec : Prop :=
  ∀ n, P5922730371160529725.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P12891114249355183976

`char[A074256(n+3)]-C(n, A106249(n))`
-/

namespace A214283.P12891114249355183976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074256 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (Nat.choose n (A106249 n).toNat : ℤ)

end

end A214283.P12891114249355183976

namespace A214283

/-- `char[A074256(n+3)]-C(n, A106249(n))` -/
def P12891114249355183976.Spec : Prop :=
  ∀ n, P12891114249355183976.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P4556163830215788690

`A209229(A074267(n+1))-C(n, A106249(n))`
-/

namespace A214283.P4556163830215788690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A074267 (n + 1)).toNat - (Nat.choose n (A106249 n).toNat : ℤ)

end

end A214283.P4556163830215788690

namespace A214283

/-- `A209229(A074267(n+1))-C(n, A106249(n))` -/
def P4556163830215788690.Spec : Prop :=
  ∀ n, P4556163830215788690.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P15697459105839174843

`A209229(A074276(n+1))-C(n, A106249(n))`
-/

namespace A214283.P15697459105839174843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A074276 (n + 1)).toNat - (Nat.choose n (A106249 n).toNat : ℤ)

end

end A214283.P15697459105839174843

namespace A214283

/-- `A209229(A074276(n+1))-C(n, A106249(n))` -/
def P15697459105839174843.Spec : Prop :=
  ∀ n, P15697459105839174843.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P12107603058399853837

`A071684(n+1)-A007123(n+2)`
-/

namespace A214283.P12107603058399853837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071684 (n + 1) - A007123 (n + 2)

end

end A214283.P12107603058399853837

namespace A214283

/-- `A071684(n+1)-A007123(n+2)` -/
def P12107603058399853837.Spec : Prop :=
  ∀ n, P12107603058399853837.a n = A214283 (n + 1)

end A214283

/-! ## A214283.P1150944243233055517

`A079204(A008480(n+1))-C(n, A106249(n))`
-/

namespace A214283.P1150944243233055517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079204 (A008480 (n + 1)).toNat - (Nat.choose n (A106249 n).toNat : ℤ)

end

end A214283.P1150944243233055517

namespace A214283

/-- `A079204(A008480(n+1))-C(n, A106249(n))` -/
def P1150944243233055517.Spec : Prop :=
  ∀ n, P1150944243233055517.a n = A214283 (n + 1)

end A214283

/-!
# A214284: Characteristic function of squares or five times squares.

The programs for A214284, the canonical program `A214284.P5212717974546388228` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214284 has offset 0).

The definition of A214284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214284.P9868523958184606920

`and(1, A119428(n))`
-/

namespace A214284.P9868523958184606920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A119428 n)

end

end A214284.P9868523958184606920

namespace A214284

/-- `and(1, A119428(n))` -/
def P9868523958184606920.Spec : Prop :=
  ∀ n, P9868523958184606920.a n = A214284 n

end A214284

/-! ## A214284.P1008094197889930408

`and(1, A227216(n))`
-/

namespace A214284.P1008094197889930408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A227216 n)

end

end A214284.P1008094197889930408

namespace A214284

/-- `and(1, A227216(n))` -/
def P1008094197889930408.Spec : Prop :=
  ∀ n, P1008094197889930408.a n = A214284 n

end A214284

/-! ## A214284.P10553213444177618208

`char[floor(n/4)²*A089911(3*n+2)]`
-/

namespace A214284.P10553213444177618208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ ^ 2 * A089911 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A214284.P10553213444177618208

namespace A214284

/-- `char[floor(n/4)²*A089911(3*n+2)]` -/
def P10553213444177618208.Spec : Prop :=
  ∀ n, (P10553213444177618208.a n : ℤ) = A214284 n

end A214284

/-! ## A214284.P5177692412835757922

`A166486(A320151(n))`
-/

namespace A214284.P5177692412835757922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A320151 n).toNat

end

end A214284.P5177692412835757922

namespace A214284

/-- `A166486(A320151(n))` -/
def P5177692412835757922.Spec : Prop :=
  ∀ n, P5177692412835757922.a n = A214284 n

end A214284

/-! ## A214284.P11395008180161062776

`A000035(A227216(n)²)`
-/

namespace A214284.P11395008180161062776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A227216 n ^ 2).toNat

end

end A214284.P11395008180161062776

namespace A214284

/-- `A000035(A227216(n)²)` -/
def P11395008180161062776.Spec : Prop :=
  ∀ n, P11395008180161062776.a n = A214284 n

end A214284

/-! ## A214284.P1283271130609559428

`A166486(A227216(n)²)`
-/

namespace A214284.P1283271130609559428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A227216 n ^ 2).toNat

end

end A214284.P1283271130609559428

namespace A214284

/-- `A166486(A227216(n)²)` -/
def P1283271130609559428.Spec : Prop :=
  ∀ n, P1283271130609559428.a n = A214284 n

end A214284

/-! ## A214284.P7781721372527894509

`A000217(A033718(n))%2`
-/

namespace A214284.P7781721372527894509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A033718 n).toNat) 2

end

end A214284.P7781721372527894509

namespace A214284

/-- `A000217(A033718(n))%2` -/
def P7781721372527894509.Spec : Prop :=
  ∀ n, P7781721372527894509.a n = A214284 n

end A214284

/-! ## A214284.P5212717974546388228

`A035187(A028310(n))%2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214284

/-- `A035187(A028310(n))%2` -/
def P5212717974546388228.Spec : Prop :=
  ∀ n, P5212717974546388228.a n = A214284 n

theorem P5212717974546388228.correct : P5212717974546388228.Spec := by
  intro n
  simp only [A214284]

end A214284

/-! ## A214284.P2610098243104820561

`A000007(val(A320151(n), 4))`
-/

namespace A214284.P2610098243104820561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A320151 n).toNat 4)

end

end A214284.P2610098243104820561

namespace A214284

/-- `A000007(val(A320151(n), 4))` -/
def P2610098243104820561.Spec : Prop :=
  ∀ n, P2610098243104820561.a n = A214284 n

end A214284

/-! ## A214284.P8298780390238843422

`A000045(and(3, A138527(n)))`
-/

namespace A214284.P8298780390238843422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (A138527 n)).toNat

end

end A214284.P8298780390238843422

namespace A214284

/-- `A000045(and(3, A138527(n)))` -/
def P8298780390238843422.Spec : Prop :=
  ∀ n, P8298780390238843422.a n = A214284 n

end A214284

/-! ## A214284.P11832123165263613118

`A138495(and(3, A138527(n)))`
-/

namespace A214284.P11832123165263613118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (Int.land 3 (A138527 n)).toNat

end

end A214284.P11832123165263613118

namespace A214284

/-- `A138495(and(3, A138527(n)))` -/
def P11832123165263613118.Spec : Prop :=
  ∀ n, P11832123165263613118.a n = A214284 n

end A214284

/-! ## A214284.P18272589973979687457

`A000045(and(3, A285348(n)))`
-/

namespace A214284.P18272589973979687457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (A285348 n)).toNat

end

end A214284.P18272589973979687457

namespace A214284

/-- `A000045(and(3, A285348(n)))` -/
def P18272589973979687457.Spec : Prop :=
  ∀ n, P18272589973979687457.a n = A214284 n

end A214284

/-! ## A214284.P1167154774782171919

`A000045(and(3, A285349(n)))`
-/

namespace A214284.P1167154774782171919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (A285349 n)).toNat

end

end A214284.P1167154774782171919

namespace A214284

/-- `A000045(and(3, A285349(n)))` -/
def P1167154774782171919.Spec : Prop :=
  ∀ n, P1167154774782171919.a n = A214284 n

end A214284

/-! ## A214284.P3002291022922160090

`A143574(and(3, A285348(n)))`
-/

namespace A214284.P3002291022922160090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 (Int.land 3 (A285348 n)).toNat

end

end A214284.P3002291022922160090

namespace A214284

/-- `A143574(and(3, A285348(n)))` -/
def P3002291022922160090.Spec : Prop :=
  ∀ n, P3002291022922160090.a n = A214284 n

end A214284

/-! ## A214284.P8721838871434283159

`and(A094023(n), A229062(n))`
-/

namespace A214284.P8721838871434283159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094023 n) (A229062 n)

end

end A214284.P8721838871434283159

namespace A214284

/-- `and(A094023(n), A229062(n))` -/
def P8721838871434283159.Spec : Prop :=
  ∀ n, P8721838871434283159.a n = A214284 n

end A214284

/-! ## A214284.P4005716031707765326

`char[n*A030104(A030104(n))]`
-/

namespace A214284.P4005716031707765326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030104 (A030104 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A214284.P4005716031707765326

namespace A214284

/-- `char[n*A030104(A030104(n))]` -/
def P4005716031707765326.Spec : Prop :=
  ∀ n, (P4005716031707765326.a n : ℤ) = A214284 n

end A214284

/-! ## A214284.P8378551038691083994

`and(1, A004526(A033718(n)+1))`
-/

namespace A214284.P8378551038691083994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004526 (A033718 n + 1).toNat)

end

end A214284.P8378551038691083994

namespace A214284

/-- `and(1, A004526(A033718(n)+1))` -/
def P8378551038691083994.Spec : Prop :=
  ∀ n, P8378551038691083994.a n = A214284 n

end A214284

/-! ## A214284.P9901874539684619413

`A033718(and(2, A033718(n)-1))`
-/

namespace A214284.P9901874539684619413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (Int.land 2 (A033718 n - 1)).toNat

end

end A214284.P9901874539684619413

namespace A214284

/-- `A033718(and(2, A033718(n)-1))` -/
def P9901874539684619413.Spec : Prop :=
  ∀ n, P9901874539684619413.a n = A214284 n

end A214284

/-! ## A214284.P9584710357867378520

`A138527(and(2, A138527(n)-1))`
-/

namespace A214284.P9584710357867378520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138527 (Int.land 2 (A138527 n - 1)).toNat

end

end A214284.P9584710357867378520

namespace A214284

/-- `A138527(and(2, A138527(n)-1))` -/
def P9584710357867378520.Spec : Prop :=
  ∀ n, P9584710357867378520.a n = A214284 n

end A214284

/-! ## A214284.P14038781370718960067

`A285348(and(2, A285348(n)-1))`
-/

namespace A214284.P14038781370718960067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285348 (Int.land 2 (A285348 n - 1)).toNat

end

end A214284.P14038781370718960067

namespace A214284

/-- `A285348(and(2, A285348(n)-1))` -/
def P14038781370718960067.Spec : Prop :=
  ∀ n, P14038781370718960067.a n = A214284 n

end A214284

/-!
# A214286: a(n) = floor(Fibonacci(n)/7).

The programs for A214286, the canonical program `A214286.P8849492895179717303` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214286 has offset 0).

The definition of A214286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105870, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214286.P8849492895179717303

`(A000045(n)-A105870(n))/7`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214286

/-- `(A000045(n)-A105870(n))/7` -/
def P8849492895179717303.Spec : Prop :=
  ∀ n, P8849492895179717303.a n = (A214286 n : ℚ)

end A214286

/-! ## A214286.P13114395133453482115

`floor(A000045(n)/7)`
-/

namespace A214286.P13114395133453482115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 7⌋

end

end A214286.P13114395133453482115

namespace A214286

/-- `floor(A000045(n)/7)` -/
def P13114395133453482115.Spec : Prop :=
  ∀ n, P13114395133453482115.a n = A214286 n

end A214286

/-! ## A214286.P2346977713719715550

`floor(A212804(n+1)/7)`
-/

namespace A214286.P2346977713719715550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 7⌋

end

end A214286.P2346977713719715550

namespace A214286

/-- `floor(A212804(n+1)/7)` -/
def P2346977713719715550.Spec : Prop :=
  ∀ n, P2346977713719715550.a n = A214286 n

end A214286

/-! ## A214286.P7104454482847468382

`floor((A001611(n)-1)/7)`
-/

namespace A214286.P7104454482847468382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 7⌋

end

end A214286.P7104454482847468382

namespace A214286

/-- `floor((A001611(n)-1)/7)` -/
def P7104454482847468382.Spec : Prop :=
  ∀ n, P7104454482847468382.a n = A214286 n

end A214286

/-! ## A214286.P12881138283602112136

`floor((A160536(n)-n²)/7)`
-/

namespace A214286.P12881138283602112136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160536 n - (n ^ 2 : ℤ) : ℚ) / 7⌋

end

end A214286.P12881138283602112136

namespace A214286

/-- `floor((A160536(n)-n²)/7)` -/
def P12881138283602112136.Spec : Prop :=
  ∀ n, P12881138283602112136.a n = A214286 n

end A214286

/-! ## A214286.P8275814083884736772

`floor(∑[A212804(abs(1-n))]/7)`
-/

namespace A214286.P8275814083884736772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7⌋

end

end A214286.P8275814083884736772

namespace A214286

/-- `floor(∑[A212804(abs(1-n))]/7)` -/
def P8275814083884736772.Spec : Prop :=
  ∀ n, P8275814083884736772.a n = A214286 n

end A214286

/-! ## A214286.P14795945850051401959

`floor(lcm(A167808(n), A167816(n))/7)`
-/

namespace A214286.P14795945850051401959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (A167808 n) (A167816 n) : ℚ) / 7⌋

end

end A214286.P14795945850051401959

namespace A214286

/-- `floor(lcm(A167808(n), A167816(n))/7)` -/
def P14795945850051401959.Spec : Prop :=
  ∀ n, P14795945850051401959.a n = A214286 n

end A214286

/-! ## A214286.P7954150439621011364

`floor((A057427(n)+A000071(A028310(n)))/7)`
-/

namespace A214286.P7954150439621011364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n + A000071 (A028310 n).toNat : ℚ) / 7⌋

end

end A214286.P7954150439621011364

namespace A214286

/-- `floor((A057427(n)+A000071(A028310(n)))/7)` -/
def P7954150439621011364.Spec : Prop :=
  ∀ n, P7954150439621011364.a n = A214286 n

end A214286

/-! ## A214286.P817957122255150821

`floor((A280193(A109613(n))+A001611(n))/7)`
-/

namespace A214286.P817957122255150821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280193 (A109613 n).toNat + A001611 n : ℚ) / 7⌋

end

end A214286.P817957122255150821

namespace A214286

/-- `floor((A280193(A109613(n))+A001611(n))/7)` -/
def P817957122255150821.Spec : Prop :=
  ∀ n, P817957122255150821.a n = A214286 n

end A214286

/-! ## A214286.P2457321919496682407

`floor(A055389(n)/14)`
-/

namespace A214286.P2457321919496682407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055389 n : ℚ) / 14⌋

end

end A214286.P2457321919496682407

namespace A214286

/-- `floor(A055389(n)/14)` -/
def P2457321919496682407.Spec : Prop :=
  ∀ n, P2457321919496682407.a n = A214286 n

end A214286

/-! ## A214286.P11728110206460998052

`floor(floor(A001588(n)/2)/7)`
-/

namespace A214286.P11728110206460998052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A001588 n : ℚ) / 2⌋ : ℚ) / 7⌋

end

end A214286.P11728110206460998052

namespace A214286

/-- `floor(floor(A001588(n)/2)/7)` -/
def P11728110206460998052.Spec : Prop :=
  ∀ n, P11728110206460998052.a n = A214286 n

end A214286

/-! ## A214286.P14998522569718501985

`floor(Δ[A000071(n+1)]/7)`
-/

namespace A214286.P14998522569718501985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 7⌋

end

end A214286.P14998522569718501985

namespace A214286

/-- `floor(Δ[A000071(n+1)]/7)` -/
def P14998522569718501985.Spec : Prop :=
  ∀ n, P14998522569718501985.a n = A214286 n

end A214286

/-! ## A214286.P14006019912528036454

`floor(gcd(A001654(2*n), A001654(n))/7)`
-/

namespace A214286.P14006019912528036454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A001654 (2 * n)) (A001654 n) : ℚ) / 7⌋

end

end A214286.P14006019912528036454

namespace A214286

/-- `floor(gcd(A001654(2*n), A001654(n))/7)` -/
def P14006019912528036454.Spec : Prop :=
  ∀ n, P14006019912528036454.a n = A214286 n

end A214286

/-!
# A214287: Primes of the form phi(n)-1 sorted by increasing n, where phi is the Euler totient function.

The programs for A214287, the canonical program `A214287.P11295175971518832110` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214287 has offset 1).

The definition of A214287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214287.P11295175971518832110

`p?[A000010(n+1)-1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A214287

/-- `p?[A000010(n+1)-1]` -/
def P11295175971518832110.Spec : Prop :=
  ∀ n, P11295175971518832110.a n = A214287 (n + 1)

theorem P11295175971518832110.correct : P11295175971518832110.Spec := by
  intro n
  simp only [A214287, Nat.add_sub_cancel]

end A214287

/-! ## A214287.P8622179514984809490

`A078773(A078892(n+1))`
-/

namespace A214287.P8622179514984809490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078773 (A078892 (n + 1)).toNat

end

end A214287.P8622179514984809490

namespace A214287

/-- `A078773(A078892(n+1))` -/
def P8622179514984809490.Spec : Prop :=
  ∀ n, P8622179514984809490.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P8596492911422249101

`p?[A023443(A000010(n+1))]`
-/

namespace A214287.P8596492911422249101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P8596492911422249101

namespace A214287

/-- `p?[A023443(A000010(n+1))]` -/
def P8596492911422249101.Spec : Prop :=
  ∀ n, P8596492911422249101.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P10764818801187382710

`p?[A057637(A000010(n+2))]`
-/

namespace A214287.P10764818801187382710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P10764818801187382710

namespace A214287

/-- `p?[A057637(A000010(n+2))]` -/
def P10764818801187382710.Spec : Prop :=
  ∀ n, P10764818801187382710.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P9017380723828444426

`p?[A014681(A000010(n+3))]`
-/

namespace A214287.P9017380723828444426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A000010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P9017380723828444426

namespace A214287

/-- `p?[A014681(A000010(n+3))]` -/
def P9017380723828444426.Spec : Prop :=
  ∀ n, P9017380723828444426.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P10723156733210416810

`p?[2*A055684(n+3)+1]`
-/

namespace A214287.P10723156733210416810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055684 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P10723156733210416810

namespace A214287

/-- `p?[2*A055684(n+3)+1]` -/
def P10723156733210416810.Spec : Prop :=
  ∀ n, P10723156733210416810.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P14431345617349815445

`p?[∑[A057000(n+1)]]`
-/

namespace A214287.P14431345617349815445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P14431345617349815445

namespace A214287

/-- `p?[∑[A057000(n+1)]]` -/
def P14431345617349815445.Spec : Prop :=
  ∀ n, P14431345617349815445.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P10083327867005276522

`p?[2*A023022(n+2)-1]`
-/

namespace A214287.P10083327867005276522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023022 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P10083327867005276522

namespace A214287

/-- `p?[2*A023022(n+2)-1]` -/
def P10083327867005276522.Spec : Prop :=
  ∀ n, P10083327867005276522.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P8307182940794536557

`p?[A109606(n+1)]`
-/

namespace A214287.P8307182940794536557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P8307182940794536557

namespace A214287

/-- `p?[A109606(n+1)]` -/
def P8307182940794536557.Spec : Prop :=
  ∀ n, P8307182940794536557.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P15017195530280530037

`p?[n-A062830(n)]`
-/

namespace A214287.P15017195530280530037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A062830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P15017195530280530037

namespace A214287

/-- `p?[n-A062830(n)]` -/
def P15017195530280530037.Spec : Prop :=
  ∀ n, P15017195530280530037.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P16872784263726699839

`p?[Δ[A015613(n+1)]]`
-/

namespace A214287.P16872784263726699839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P16872784263726699839

namespace A214287

/-- `p?[Δ[A015613(n+1)]]` -/
def P16872784263726699839.Spec : Prop :=
  ∀ n, P16872784263726699839.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P15739343880885245123

`p?[A039649(n+1)-2]`
-/

namespace A214287.P15739343880885245123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P15739343880885245123

namespace A214287

/-- `p?[A039649(n+1)-2]` -/
def P15739343880885245123.Spec : Prop :=
  ∀ n, P15739343880885245123.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P14702047297358136610

`p?[n-A051953(n+1)]`
-/

namespace A214287.P14702047297358136610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P14702047297358136610

namespace A214287

/-- `p?[n-A051953(n+1)]` -/
def P14702047297358136610.Spec : Prop :=
  ∀ n, P14702047297358136610.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P18279345945154757775

`p?[n-A016035(n+2)]`
-/

namespace A214287.P18279345945154757775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016035 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P18279345945154757775

namespace A214287

/-- `p?[n-A016035(n+2)]` -/
def P18279345945154757775.Spec : Prop :=
  ∀ n, P18279345945154757775.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P18304959128546994437

`p?[n-A219428(n+2)]`
-/

namespace A214287.P18304959128546994437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P18304959128546994437

namespace A214287

/-- `p?[n-A219428(n+2)]` -/
def P18304959128546994437.Spec : Prop :=
  ∀ n, P18304959128546994437.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P11419392546862045951

`p?[n-Δ[A185670(n+1)]]`
-/

namespace A214287.P11419392546862045951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P11419392546862045951

namespace A214287

/-- `p?[n-Δ[A185670(n+1)]]` -/
def P11419392546862045951.Spec : Prop :=
  ∀ n, P11419392546862045951.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P1771955069014981098

`p?[A349137(2*n+1)-1]`
-/

namespace A214287.P1771955069014981098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P1771955069014981098

namespace A214287

/-- `p?[A349137(2*n+1)-1]` -/
def P1771955069014981098.Spec : Prop :=
  ∀ n, P1771955069014981098.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P17032359376462471943

`p?[A121048(n+1)-(n+2)]`
-/

namespace A214287.P17032359376462471943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P17032359376462471943

namespace A214287

/-- `p?[A121048(n+1)-(n+2)]` -/
def P17032359376462471943.Spec : Prop :=
  ∀ n, P17032359376462471943.a n = A214287 (n + 1)

end A214287

/-! ## A214287.P13810605162655374019

`filter[A109606(n+3), A010051(#)]`
-/

namespace A214287.P13810605162655374019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A214287.P13810605162655374019

namespace A214287

/-- `filter[A109606(n+3), A010051(#)]` -/
def P13810605162655374019.Spec : Prop :=
  ∀ n, P13810605162655374019.a n = A214287 (n + 1)

end A214287

/-!
# A214288: Primes of the form phi(n)+1 sorted by increasing n, where phi is the Euler totient function.

The programs for A214288, the canonical program `A214288.P3436294397742324961` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214288 has offset 1).

The definition of A214288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214288.P3436294397742324961

`p?[A000010(n+1)+1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A214288

/-- `p?[A000010(n+1)+1]` -/
def P3436294397742324961.Spec : Prop :=
  ∀ n, P3436294397742324961.a n = A214288 (n + 1)

theorem P3436294397742324961.correct : P3436294397742324961.Spec := by
  intro n
  simp only [A214288, Nat.add_sub_cancel]

end A214288

/-! ## A214288.P6255257889170037567

`A000010(A039698(n+1))+1`
-/

namespace A214288.P6255257889170037567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039698 (n + 1)).toNat + 1

end

end A214288.P6255257889170037567

namespace A214288

/-- `A000010(A039698(n+1))+1` -/
def P6255257889170037567.Spec : Prop :=
  ∀ n, P6255257889170037567.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P54605186005529871

`A000010(eq[2, A000005(A000010(n+1)+1)]+1)+1`
-/

namespace A214288.P54605186005529871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A214288.P54605186005529871

namespace A214288

/-- `A000010(eq[2, A000005(A000010(n+1)+1)]+1)+1` -/
def P54605186005529871.Spec : Prop :=
  ∀ n, P54605186005529871.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P953859287275132942

`p?[A141310(A000010(n+1))]`
-/

namespace A214288.P953859287275132942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P953859287275132942

namespace A214288

/-- `p?[A141310(A000010(n+1))]` -/
def P953859287275132942.Spec : Prop :=
  ∀ n, P953859287275132942.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P5637678340146396536

`p?[A039649(n+1)]`
-/

namespace A214288.P5637678340146396536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P5637678340146396536

namespace A214288

/-- `p?[A039649(n+1)]` -/
def P5637678340146396536.Spec : Prop :=
  ∀ n, P5637678340146396536.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P2709282995513756257

`p?[A109606(n+1)+2]`
-/

namespace A214288.P2709282995513756257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P2709282995513756257

namespace A214288

/-- `p?[A109606(n+1)+2]` -/
def P2709282995513756257.Spec : Prop :=
  ∀ n, P2709282995513756257.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P5468173162513900197

`p?[A121048(n+1)-n]`
-/

namespace A214288.P5468173162513900197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P5468173162513900197

namespace A214288

/-- `p?[A121048(n+1)-n]` -/
def P5468173162513900197.Spec : Prop :=
  ∀ n, P5468173162513900197.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P17704758702056071952

`p?[A349137(2*n+1)+1]`
-/

namespace A214288.P17704758702056071952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P17704758702056071952

namespace A214288

/-- `p?[A349137(2*n+1)+1]` -/
def P17704758702056071952.Spec : Prop :=
  ∀ n, P17704758702056071952.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P9568243064759322324

`p?[1-A219428(n+1)+n]`
-/

namespace A214288.P9568243064759322324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219428 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P9568243064759322324

namespace A214288

/-- `p?[1-A219428(n+1)+n]` -/
def P9568243064759322324.Spec : Prop :=
  ∀ n, P9568243064759322324.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P12696517278406592199

`p?[2-A051953(n+1)+n]`
-/

namespace A214288.P12696517278406592199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A051953 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P12696517278406592199

namespace A214288

/-- `p?[2-A051953(n+1)+n]` -/
def P12696517278406592199.Spec : Prop :=
  ∀ n, P12696517278406592199.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P12109418601179224479

`A039649(A039698(n+1))`
-/

namespace A214288.P12109418601179224479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039698 (n + 1)).toNat

end

end A214288.P12109418601179224479

namespace A214288

/-- `A039649(A039698(n+1))` -/
def P12109418601179224479.Spec : Prop :=
  ∀ n, P12109418601179224479.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P13733434769655475029

`filter[A039649(n+1), A010051(#)]`
-/

namespace A214288.P13733434769655475029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A214288.P13733434769655475029

namespace A214288

/-- `filter[A039649(n+1), A010051(#)]` -/
def P13733434769655475029.Spec : Prop :=
  ∀ n, P13733434769655475029.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P7074474894450032591

`filter[A039649(n+1), A080339(#)]`
-/

namespace A214288.P7074474894450032591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A214288.P7074474894450032591

namespace A214288

/-- `filter[A039649(n+1), A080339(#)]` -/
def P7074474894450032591.Spec : Prop :=
  ∀ n, P7074474894450032591.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P6839796241589853010

`filter[A039649(n+1), A323152(#)]`
-/

namespace A214288.P6839796241589853010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A214288.P6839796241589853010

namespace A214288

/-- `filter[A039649(n+1), A323152(#)]` -/
def P6839796241589853010.Spec : Prop :=
  ∀ n, P6839796241589853010.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P14095378706395759456

`filter[A039649(n+1), A323153(#)]`
-/

namespace A214288.P14095378706395759456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A214288.P14095378706395759456

namespace A214288

/-- `filter[A039649(n+1), A323153(#)]` -/
def P14095378706395759456.Spec : Prop :=
  ∀ n, P14095378706395759456.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P15762899536484909555

`filter[A039649(n+1), A340371(#)]`
-/

namespace A214288.P15762899536484909555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A214288.P15762899536484909555

namespace A214288

/-- `filter[A039649(n+1), A340371(#)]` -/
def P15762899536484909555.Spec : Prop :=
  ∀ n, P15762899536484909555.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P5880488857679865750

`A039650(A039698(2*n+1-n))`
-/

namespace A214288.P5880488857679865750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (A039698 (2 * n + 1 - n)).toNat

end

end A214288.P5880488857679865750

namespace A214288

/-- `A039650(A039698(2*n+1-n))` -/
def P5880488857679865750.Spec : Prop :=
  ∀ n, P5880488857679865750.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P17394123140754290226

`p?[A046073(n+1)*A060594(n+1)+1]`
-/

namespace A214288.P17394123140754290226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P17394123140754290226

namespace A214288

/-- `p?[A046073(n+1)*A060594(n+1)+1]` -/
def P17394123140754290226.Spec : Prop :=
  ∀ n, P17394123140754290226.a n = A214288 (n + 1)

end A214288

/-! ## A214288.P17270861545388499537

`p?[A067541(2*n+1)+1]`
-/

namespace A214288.P17270861545388499537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P17270861545388499537

namespace A214288

/-- `p?[A067541(2*n+1)+1]` -/
def P17270861545388499537.Spec : Prop :=
  ∀ n, P17270861545388499537.a n = A214288 (n + 1)

end A214288

/-!
# A214289: Numbers k such that 2*k^3 - 1 is prime.

The programs for A214289, there is no canonical definition to state claims against.
-/

/-! ## A214289.P3974345194740786979

`eq[2, A238848(n+1)]+1`
-/

namespace A214289.P3974345194740786979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214289.P3974345194740786979

/-! ## A214289.P16641124638287154664

`eq[2, A238848(A028310(n))]`
-/

namespace A214289.P16641124638287154664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238848 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214289.P16641124638287154664

/-! ## A214289.P3692395045856654227

`A020725(eq[2, A238848(n+1)])`
-/

namespace A214289.P3692395045856654227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214289.P3692395045856654227

/-! ## A214289.P3782989190813498973

`A092200(eq[2, A238848(n+1)])`
-/

namespace A214289.P3782989190813498973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214289.P3782989190813498973

/-! ## A214289.P2603462635883418610

`eq[2, A238848(A233583(n+1))]`
-/

namespace A214289.P2603462635883418610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238848 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214289.P2603462635883418610

/-!
# A214290: Primes of the form XYYX, where Y is a single digit.

The programs for A214290, there is no canonical definition to state claims against.
-/

/-! ## A214290.P12120538807749936707

`∩[A187114(n+1), A297994(n+1)]`
-/

namespace A214290.P12120538807749936707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214290.P12120538807749936707

/-!
# A214291: Primes of the form XYYYYYX, where Y is a single digit.

The programs for A214291, there is no canonical definition to state claims against.
-/

/-! ## A214291.P8165836422360634440

`A056728(A171644(n)+25)`
-/

namespace A214291.P8165836422360634440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (A171644 n + 25).toNat

end

end A214291.P8165836422360634440

/-! ## A214291.P13097543282190641026

`A056728(A083826(n+1)+13)`
-/

namespace A214291.P13097543282190641026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (A083826 (n + 1) + 13).toNat

end

end A214291.P13097543282190641026

/-! ## A214291.P14367545339127314169

`A056728(A343888(n+1)+13)`
-/

namespace A214291.P14367545339127314169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (A343888 (n + 1) + 13).toNat

end

end A214291.P14367545339127314169

/-! ## A214291.P1153244240035203930

`A056728(A047842(n+2)+13)`
-/

namespace A214291.P1153244240035203930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (A047842 (n + 2) + 13).toNat

end

end A214291.P1153244240035203930

/-!
# A214292: Triangle read by rows: T(n,k) = T(n-1,k-1) + T(n-1,k), 0 < k < n with T(n,0) = n and T(n,n) = -n.

The programs for A214292, the canonical program `A214292.P4475227448882697213` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214292 has offset 0).

The definition of A214292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214292.P4475227448882697213

`Δ[A074909(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214292

/-- `Δ[A074909(n)]` -/
def P4475227448882697213.Spec : Prop :=
  ∀ n, P4475227448882697213.a n = A214292 n

theorem P4475227448882697213.correct : P4475227448882697213.Spec := by
  intro n
  simp only [A214292]

end A214292

/-! ## A214292.P14949321432399669434

`A131768(n)-A014430(n)`
-/

namespace A214292.P14949321432399669434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131768 n - A014430 n

end

end A214292.P14949321432399669434

namespace A214292

/-- `A131768(n)-A014430(n)` -/
def P14949321432399669434.Spec : Prop :=
  ∀ n, P14949321432399669434.a n = A214292 n

end A214292

/-! ## A214292.P17117641387069784783

`A110813(n)-A051597(n)`
-/

namespace A214292.P17117641387069784783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A051597 n

end

end A214292.P17117641387069784783

namespace A214292

/-- `A110813(n)-A051597(n)` -/
def P17117641387069784783.Spec : Prop :=
  ∀ n, P17117641387069784783.a n = A214292 n

end A214292

/-! ## A214292.P555378662046800494

`A135278(n)-A074909(n)`
-/

namespace A214292.P555378662046800494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A074909 n

end

end A214292.P555378662046800494

namespace A214292

/-- `A135278(n)-A074909(n)` -/
def P555378662046800494.Spec : Prop :=
  ∀ n, P555378662046800494.a n = A214292 n

end A214292

/-! ## A214292.P4980485673809793064

`A080233(n)-A156644(n)`
-/

namespace A214292.P4980485673809793064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n - A156644 n

end

end A214292.P4980485673809793064

namespace A214292

/-- `A080233(n)-A156644(n)` -/
def P4980485673809793064.Spec : Prop :=
  ∀ n, P4980485673809793064.a n = A214292 n

end A214292

/-! ## A214292.P7968623236398901295

`A199011(n)-A198321(n)`
-/

namespace A214292.P7968623236398901295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 n - A198321 n

end

end A214292.P7968623236398901295

namespace A214292

/-- `A199011(n)-A198321(n)` -/
def P7968623236398901295.Spec : Prop :=
  ∀ n, P7968623236398901295.a n = A214292 n

end A214292

/-! ## A214292.P14392445335929694457

`A051597(n)-A029637(n+1)`
-/

namespace A214292.P14392445335929694457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - A029637 (n + 1)

end

end A214292.P14392445335929694457

namespace A214292

/-- `A051597(n)-A029637(n+1)` -/
def P14392445335929694457.Spec : Prop :=
  ∀ n, P14392445335929694457.a n = A214292 n

end A214292

/-! ## A214292.P12678617261546081161

`A074909(n+1)-A074909(n)`
-/

namespace A214292.P12678617261546081161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A074909 n

end

end A214292.P12678617261546081161

namespace A214292

/-- `A074909(n+1)-A074909(n)` -/
def P12678617261546081161.Spec : Prop :=
  ∀ n, P12678617261546081161.a n = A214292 n

theorem P12678617261546081161.correct : P12678617261546081161.Spec := by
  intro n
  simp only [A214292, Nat.add_sub_cancel, A214292.P12678617261546081161.a, A214292.P4475227448882697213.f1, A214292.P4475227448882697213.a, SequenceMachineLib.memo_apply]

end A214292

/-! ## A214292.P2294365721122002235

`A007318(n+1)-A210381(n)`
-/

namespace A214292.P2294365721122002235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - A210381 n

end

end A214292.P2294365721122002235

namespace A214292

/-- `A007318(n+1)-A210381(n)` -/
def P2294365721122002235.Spec : Prop :=
  ∀ n, P2294365721122002235.a n = A214292 n

end A214292

/-! ## A214292.P12546236633166810891

`A051632(n)+2*A080233(n)`
-/

namespace A214292.P12546236633166810891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 n + 2 * A080233 n

end

end A214292.P12546236633166810891

namespace A214292

/-- `A051632(n)+2*A080233(n)` -/
def P12546236633166810891.Spec : Prop :=
  ∀ n, P12546236633166810891.a n = A214292 n

end A214292

/-! ## A214292.P10615336020604439140

`2*A135278(n)-A014410(n+2)`
-/

namespace A214292.P10615336020604439140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A014410 (n + 2)

end

end A214292.P10615336020604439140

namespace A214292

/-- `2*A135278(n)-A014410(n+2)` -/
def P10615336020604439140.Spec : Prop :=
  ∀ n, P10615336020604439140.a n = A214292 n

end A214292

/-! ## A214292.P11880320449538763390

`A198321(A061579(n))-A198321(n)`
-/

namespace A214292.P11880320449538763390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A061579 n).toNat - A198321 n

end

end A214292.P11880320449538763390

namespace A214292

/-- `A198321(A061579(n))-A198321(n)` -/
def P11880320449538763390.Spec : Prop :=
  ∀ n, P11880320449538763390.a n = A214292 n

end A214292

/-! ## A214292.P9530148015878521231

`A007318(lt[1, A074909(n)])-A074909(n)`
-/

namespace A214292.P9530148015878521231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A074909 n

end

end A214292.P9530148015878521231

namespace A214292

/-- `A007318(lt[1, A074909(n)])-A074909(n)` -/
def P9530148015878521231.Spec : Prop :=
  ∀ n, P9530148015878521231.a n = A214292 n

end A214292

/-! ## A214292.P15962535847275102968

`A135278(n)-A135278(A004273(n)-n)`
-/

namespace A214292.P15962535847275102968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A135278 (A004273 n - (n : ℤ)).toNat

end

end A214292.P15962535847275102968

namespace A214292

/-- `A135278(n)-A135278(A004273(n)-n)` -/
def P15962535847275102968.Spec : Prop :=
  ∀ n, P15962535847275102968.a n = A214292 n

end A214292

/-! ## A214292.P14557563988587908329

`(A103371(n)-A132813(n))/A007318(n)`
-/

namespace A214292.P14557563988587908329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n - A132813 n : ℚ) / (A007318 n : ℚ)

end

end A214292.P14557563988587908329

namespace A214292

/-- `(A103371(n)-A132813(n))/A007318(n)` -/
def P14557563988587908329.Spec : Prop :=
  ∀ n, P14557563988587908329.a n = (A214292 n : ℚ)

end A214292

/-! ## A214292.P6346706355862655639

`A029656(A038722(n+1))-A029656(n+1)`
-/

namespace A214292.P6346706355862655639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A038722 (n + 1)).toNat - A029656 (n + 1)

end

end A214292.P6346706355862655639

namespace A214292

/-- `A029656(A038722(n+1))-A029656(n+1)` -/
def P6346706355862655639.Spec : Prop :=
  ∀ n, P6346706355862655639.a n = A214292 n

end A214292

/-! ## A214292.P15530211109327769924

`A135278(n)-A132812(n+1)/A135278(n)`
-/

namespace A214292.P15530211109327769924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n : ℚ) - (A132812 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A214292.P15530211109327769924

namespace A214292

/-- `A135278(n)-A132812(n+1)/A135278(n)` -/
def P15530211109327769924.Spec : Prop :=
  ∀ n, P15530211109327769924.a n = (A214292 n : ℚ)

end A214292

/-! ## A214292.P7904126122619982693

`Δ[A007318(comp[∑[n+1]])]`
-/

namespace A214292.P7904126122619982693
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214292.P7904126122619982693

namespace A214292

/-- `Δ[A007318(comp[∑[n+1]])]` -/
def P7904126122619982693.Spec : Prop :=
  ∀ n, P7904126122619982693.a n = A214292 n

end A214292

/-! ## A214292.P2044880432728569951

`Δ[C(A002024(n+1), A002262(n))]`
-/

namespace A214292.P2044880432728569951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214292.P2044880432728569951

namespace A214292

/-- `Δ[C(A002024(n+1), A002262(n))]` -/
def P2044880432728569951.Spec : Prop :=
  ∀ n, P2044880432728569951.a n = A214292 n

end A214292

/-!
# A214293: a(n) = 1 if n is a square, -1 if n is five times a square.

The programs for A214293, the canonical program `A214293.P9450923103603162024` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214293 has offset 1).

The definition of A214293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214293.P4722985655827845434

`A245485(A072026(n+1))`
-/

namespace A214293.P4722985655827845434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A072026 (n + 1)).toNat

end

end A214293.P4722985655827845434

namespace A214293

/-- `A245485(A072026(n+1))` -/
def P4722985655827845434.Spec : Prop :=
  ∀ n, P4722985655827845434.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P9152738661152684210

`A245485(A072028(n+1))`
-/

namespace A214293.P9152738661152684210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A072028 (n + 1)).toNat

end

end A214293.P9152738661152684210

namespace A214293

/-- `A245485(A072028(n+1))` -/
def P9152738661152684210.Spec : Prop :=
  ∀ n, P9152738661152684210.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P11786032806568723441

`A245485(A235199(n+1))`
-/

namespace A214293.P11786032806568723441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A235199 (n + 1)).toNat

end

end A214293.P11786032806568723441

namespace A214293

/-- `A245485(A235199(n+1))` -/
def P11786032806568723441.Spec : Prop :=
  ∀ n, P11786032806568723441.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P8504665795443050397

`A245485(A332213(n+1))`
-/

namespace A214293.P8504665795443050397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A332213 (n + 1)).toNat

end

end A214293.P8504665795443050397

namespace A214293

/-- `A245485(A332213(n+1))` -/
def P8504665795443050397.Spec : Prop :=
  ∀ n, P8504665795443050397.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P14748872165968092561

`A167407(C(5, A037449(n+1)))`
-/

namespace A214293.P14748872165968092561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 (Nat.choose 5 (A037449 (n + 1)).toNat)

end

end A214293.P14748872165968092561

namespace A214293

/-- `A167407(C(5, A037449(n+1)))` -/
def P14748872165968092561.Spec : Prop :=
  ∀ n, P14748872165968092561.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P13578939535032827041

`A106406(n+1)%A014710(n)`
-/

namespace A214293.P13578939535032827041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106406 (n + 1)) (A014710 n)

end

end A214293.P13578939535032827041

namespace A214293

/-- `A106406(n+1)%A014710(n)` -/
def P13578939535032827041.Spec : Prop :=
  ∀ n, P13578939535032827041.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P17918470317110571033

`A140727(n+1)%A014710(n)`
-/

namespace A214293.P17918470317110571033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140727 (n + 1)) (A014710 n)

end

end A214293.P17918470317110571033

namespace A214293

/-- `A140727(n+1)%A014710(n)` -/
def P17918470317110571033.Spec : Prop :=
  ∀ n, P17918470317110571033.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P8707914905593085234

`∏{p}[A007913(n+1), A014034(#)]`
-/

namespace A214293.P8707914905593085234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014034 p

end

end A214293.P8707914905593085234

namespace A214293

/-- `∏{p}[A007913(n+1), A014034(#)]` -/
def P8707914905593085234.Spec : Prop :=
  ∀ n, P8707914905593085234.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P9378242279825515358

`∑{d}[n+1, A035207(#)*A158522((n+1)/#)]`
-/

namespace A214293.P9378242279825515358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035207 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214293.P9378242279825515358

namespace A214293

/-- `∑{d}[n+1, A035207(#)*A158522((n+1)/#)]` -/
def P9378242279825515358.Spec : Prop :=
  ∀ n, P9378242279825515358.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P5884948595414424289

`∑{d}[n+1, A226333(#)*A328640((n+1)/#)]`
-/

namespace A214293.P5884948595414424289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226333 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214293.P5884948595414424289

namespace A214293

/-- `∑{d}[n+1, A226333(#)*A328640((n+1)/#)]` -/
def P5884948595414424289.Spec : Prop :=
  ∀ n, P5884948595414424289.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P17566902857909839165

`∑{d}[n+1, A285896(#)*A323363((n+1)/#)]`
-/

namespace A214293.P17566902857909839165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285896 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214293.P17566902857909839165

namespace A214293

/-- `∑{d}[n+1, A285896(#)*A323363((n+1)/#)]` -/
def P17566902857909839165.Spec : Prop :=
  ∀ n, P17566902857909839165.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P9450923103603162024

`A169695(A008706(n+1))-A169695(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214293

/-- `A169695(A008706(n+1))-A169695(n+1)` -/
def P9450923103603162024.Spec : Prop :=
  ∀ n, P9450923103603162024.a n = A214293 (n + 1)

theorem P9450923103603162024.correct : P9450923103603162024.Spec := by
  intro n
  simp only [A214293, Nat.add_sub_cancel]

end A214293

/-! ## A214293.P4186648427828240571

`A000122(n+1)-A214284(n+1)`
-/

namespace A214293.P4186648427828240571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1) - A214284 (n + 1)

end

end A214293.P4186648427828240571

namespace A214293

/-- `A000122(n+1)-A214284(n+1)` -/
def P4186648427828240571.Spec : Prop :=
  ∀ n, P4186648427828240571.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P11733826713286751656

`A011621(n+1)*A214284(n+1)`
-/

namespace A214293.P11733826713286751656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011621 (n + 1) * A214284 (n + 1)

end

end A214293.P11733826713286751656

namespace A214293

/-- `A011621(n+1)*A214284(n+1)` -/
def P11733826713286751656.Spec : Prop :=
  ∀ n, P11733826713286751656.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P7786867361205876850

`A245485(A290641(n+1))`
-/

namespace A214293.P7786867361205876850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A290641 (n + 1)).toNat

end

end A214293.P7786867361205876850

namespace A214293

/-- `A245485(A290641(n+1))` -/
def P7786867361205876850.Spec : Prop :=
  ∀ n, P7786867361205876850.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P15639528895358768166

`A245485(A003961(n+1))`
-/

namespace A214293.P15639528895358768166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A003961 (n + 1)).toNat

end

end A214293.P15639528895358768166

namespace A214293

/-- `A245485(A003961(n+1))` -/
def P15639528895358768166.Spec : Prop :=
  ∀ n, P15639528895358768166.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P8579819625591522692

`A245485(A061898(n+1))`
-/

namespace A214293.P8579819625591522692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A061898 (n + 1)).toNat

end

end A214293.P8579819625591522692

namespace A214293

/-- `A245485(A061898(n+1))` -/
def P8579819625591522692.Spec : Prop :=
  ∀ n, P8579819625591522692.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P15650153400308808115

`A245485(A072027(n+1))`
-/

namespace A214293.P15650153400308808115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A072027 (n + 1)).toNat

end

end A214293.P15650153400308808115

namespace A214293

/-- `A245485(A072027(n+1))` -/
def P15650153400308808115.Spec : Prop :=
  ∀ n, P15650153400308808115.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P17032414435738045884

`A245485(A332818(n+1))`
-/

namespace A214293.P17032414435738045884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A332818 (n + 1)).toNat

end

end A214293.P17032414435738045884

namespace A214293

/-- `A245485(A332818(n+1))` -/
def P17032414435738045884.Spec : Prop :=
  ∀ n, P17032414435738045884.a n = A214293 (n + 1)

end A214293

/-! ## A214293.P14919759635285485091

`Δ[A000196(n)]-A010052(5*(n+1))`
-/

namespace A214293.P14919759635285485091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010052 (5 * (n + 1))

end

end A214293.P14919759635285485091

namespace A214293

/-- `Δ[A000196(n)]-A010052(5*(n+1))` -/
def P14919759635285485091.Spec : Prop :=
  ∀ n, P14919759635285485091.a n = A214293 (n + 1)

end A214293

/-!
# A214294: The maximum number of V-pentominoes covering the cells of square n X n.

The programs for A214294, there is no canonical definition to state claims against.
-/

/-! ## A214294.P17531109594113801682

`floor((A022330(n)-A000119(n))/4)`
-/

namespace A214294.P17531109594113801682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022330 n - A000119 n : ℚ) / 4⌋

end

end A214294.P17531109594113801682

/-! ## A214294.P14315676204133192082

`floor((A022330(n)-A286552(n))/4)`
-/

namespace A214294.P14315676204133192082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022330 n - A286552 n : ℚ) / 4⌋

end

end A214294.P14315676204133192082

/-! ## A214294.P17169715798641856997

`A057354(A220413(n+1)+∑[n])`
-/

namespace A214294.P17169715798641856997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A220413 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A214294.P17169715798641856997

/-! ## A214294.P3613304119455733013

`A057354(A057359(n)+A000982(n))`
-/

namespace A214294.P3613304119455733013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057359 n + A000982 n).toNat

end

end A214294.P3613304119455733013

/-! ## A214294.P13985988388831021236

`A057354(A082643(n)+A057357(n))`
-/

namespace A214294.P13985988388831021236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A082643 n + A057357 n).toNat

end

end A214294.P13985988388831021236

/-!
# A214295: a(n) = 1 if n is a square, -1 if n is three times a square, 0 otherwise.

The programs for A214295, the canonical program `A214295.P5465842352113574582` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214295 has offset 1).

The definition of A214295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214295.P1719419312775767370

`A154271(A007913(n+1))`
-/

namespace A214295.P1719419312775767370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A007913 (n + 1)).toNat

end

end A214295.P1719419312775767370

namespace A214295

/-- `A154271(A007913(n+1))` -/
def P1719419312775767370.Spec : Prop :=
  ∀ n, P1719419312775767370.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P5465842352113574582

`A244611(n+1)%A036584(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A214295

/-- `A244611(n+1)%A036584(n)` -/
def P5465842352113574582.Spec : Prop :=
  ∀ n, P5465842352113574582.a n = A214295 (n + 1)

theorem P5465842352113574582.correct : P5465842352113574582.Spec := by
  intro n
  simp only [A214295, Nat.add_sub_cancel]

end A214295

/-! ## A214295.P9077041784601357043

`A000122(n+1)-A145377(n+1)`
-/

namespace A214295.P9077041784601357043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1) - A145377 (n + 1)

end

end A214295.P9077041784601357043

namespace A214295

/-- `A000122(n+1)-A145377(n+1)` -/
def P9077041784601357043.Spec : Prop :=
  ∀ n, P9077041784601357043.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P13261310633454661454

`A008836(n+1)*A145377(n+1)`
-/

namespace A214295.P13261310633454661454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A145377 (n + 1)

end

end A214295.P13261310633454661454

namespace A214295

/-- `A008836(n+1)*A145377(n+1)` -/
def P13261310633454661454.Spec : Prop :=
  ∀ n, P13261310633454661454.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P5683579007167523629

`A034947(n+1)*A145377(n+1)`
-/

namespace A214295.P5683579007167523629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A145377 (n + 1)

end

end A214295.P5683579007167523629

namespace A214295

/-- `A034947(n+1)*A145377(n+1)` -/
def P5683579007167523629.Spec : Prop :=
  ∀ n, P5683579007167523629.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P4847044663397331640

`A035263(n+1)*A244611(n+1)`
-/

namespace A214295.P4847044663397331640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A244611 (n + 1)

end

end A214295.P4847044663397331640

namespace A214295

/-- `A035263(n+1)*A244611(n+1)` -/
def P4847044663397331640.Spec : Prop :=
  ∀ n, P4847044663397331640.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P1893803776517888673

`A145377(n+1)*A209615(n+1)`
-/

namespace A214295.P1893803776517888673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 1) * A209615 (n + 1)

end

end A214295.P1893803776517888673

namespace A214295

/-- `A145377(n+1)*A209615(n+1)` -/
def P1893803776517888673.Spec : Prop :=
  ∀ n, P1893803776517888673.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P12285087886017025620

`A137893(n+1)*A244611(n+1)`
-/

namespace A214295.P12285087886017025620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1) * A244611 (n + 1)

end

end A214295.P12285087886017025620

namespace A214295

/-- `A137893(n+1)*A244611(n+1)` -/
def P12285087886017025620.Spec : Prop :=
  ∀ n, P12285087886017025620.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P6032576502502123491

`A145377(n+1)*A244611(n+1)`
-/

namespace A214295.P6032576502502123491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 1) * A244611 (n + 1)

end

end A214295.P6032576502502123491

namespace A214295

/-- `A145377(n+1)*A244611(n+1)` -/
def P6032576502502123491.Spec : Prop :=
  ∀ n, P6032576502502123491.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P6713935962588677874

`A145377(n+1)*A321753(n+1)`
-/

namespace A214295.P6713935962588677874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 1) * A321753 (n + 1)

end

end A214295.P6713935962588677874

namespace A214295

/-- `A145377(n+1)*A321753(n+1)` -/
def P6713935962588677874.Spec : Prop :=
  ∀ n, P6713935962588677874.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P55994777333403638

`A244611(n+1)*A246260(n+1)`
-/

namespace A214295.P55994777333403638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A246260 (n + 1)

end

end A214295.P55994777333403638

namespace A214295

/-- `A244611(n+1)*A246260(n+1)` -/
def P55994777333403638.Spec : Prop :=
  ∀ n, P55994777333403638.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P2437988637675619248

`A145377(n+1)*A359154(n+1)`
-/

namespace A214295.P2437988637675619248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 1) * A359154 (n + 1)

end

end A214295.P2437988637675619248

namespace A214295

/-- `A145377(n+1)*A359154(n+1)` -/
def P2437988637675619248.Spec : Prop :=
  ∀ n, P2437988637675619248.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P10339687728360906002

`A145377(n+1)*A359581(n+1)`
-/

namespace A214295.P10339687728360906002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 1) * A359581 (n + 1)

end

end A214295.P10339687728360906002

namespace A214295

/-- `A145377(n+1)*A359581(n+1)` -/
def P10339687728360906002.Spec : Prop :=
  ∀ n, P10339687728360906002.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P9499980643719231951

`A244611(n+1)*A341347(n+1)`
-/

namespace A214295.P9499980643719231951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A341347 (n + 1)

end

end A214295.P9499980643719231951

namespace A214295

/-- `A244611(n+1)*A341347(n+1)` -/
def P9499980643719231951.Spec : Prop :=
  ∀ n, P9499980643719231951.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P3083505147260192818

`A244611(n+1)*A373585(n+1)`
-/

namespace A214295.P3083505147260192818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A373585 (n + 1)

end

end A214295.P3083505147260192818

namespace A214295

/-- `A244611(n+1)*A373585(n+1)` -/
def P3083505147260192818.Spec : Prop :=
  ∀ n, P3083505147260192818.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P12807421981147011388

`A244611(n+1)*A374107(n+1)`
-/

namespace A214295.P12807421981147011388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A374107 (n + 1)

end

end A214295.P12807421981147011388

namespace A214295

/-- `A244611(n+1)*A374107(n+1)` -/
def P12807421981147011388.Spec : Prop :=
  ∀ n, P12807421981147011388.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P2212742046803801630

`A244611(n+1)*A374113(n+1)`
-/

namespace A214295.P2212742046803801630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A374113 (n + 1)

end

end A214295.P2212742046803801630

namespace A214295

/-- `A244611(n+1)*A374113(n+1)` -/
def P2212742046803801630.Spec : Prop :=
  ∀ n, P2212742046803801630.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P5115303701055577708

`A029883(n+1)²*A244611(n+1)`
-/

namespace A214295.P5115303701055577708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) ^ 2 * A244611 (n + 1)

end

end A214295.P5115303701055577708

namespace A214295

/-- `A029883(n+1)²*A244611(n+1)` -/
def P5115303701055577708.Spec : Prop :=
  ∀ n, P5115303701055577708.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P5585201178681981223

`∑{d}[n+1, A033684(#)*A154271((n+1)/#)]`
-/

namespace A214295.P5585201178681981223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033684 d * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214295.P5585201178681981223

namespace A214295

/-- `∑{d}[n+1, A033684(#)*A154271((n+1)/#)]` -/
def P5585201178681981223.Spec : Prop :=
  ∀ n, P5585201178681981223.a n = A214295 (n + 1)

end A214295

/-! ## A214295.P7322980742055110026

`∑{d}[n+1, A035191(#)*A158522((n+1)/#)]`
-/

namespace A214295.P7322980742055110026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035191 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214295.P7322980742055110026

namespace A214295

/-- `∑{d}[n+1, A035191(#)*A158522((n+1)/#)]` -/
def P7322980742055110026.Spec : Prop :=
  ∀ n, P7322980742055110026.a n = A214295 (n + 1)

end A214295

/-!
# A214296: Primes that are the sum of distinct primes with prime subscripts.

The programs for A214296, there is no canonical definition to state claims against.
-/

/-! ## A214296.P7633531457990046878

`p?[comp[A213356(n+1)]]`
-/

namespace A214296.P7633531457990046878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214296.P7633531457990046878

/-! ## A214296.P3130215279775195413

`p?[A185723(n+1)]`
-/

namespace A214296.P3130215279775195413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214296.P3130215279775195413

/-! ## A214296.P8010201753859629849

`filter[A185723(n+1), A010051(#)]`
-/

namespace A214296.P8010201753859629849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A214296.P8010201753859629849

/-! ## A214296.P5314977819464308681

`filter[A185723(n+1), A080339(#)]`
-/

namespace A214296.P5314977819464308681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A214296.P5314977819464308681

/-! ## A214296.P10703172133176980534

`filter[A185723(n+1), A080545(#)]`
-/

namespace A214296.P10703172133176980534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A214296.P10703172133176980534

/-!
# A214297: a(0)=-1, a(1)=0, a(2)=-3; thereafter a(n+2) - 2*a(n+1) + a(n) has period 4: repeat -4, 8, -4, 2.

The programs for A214297, the canonical program `A214297.P12694538854654179653` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214297 has offset 0).

The definition of A214297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214297.P12694538854654179653

`∑[a(n-4)+2]` with `a(0)=-1, a(1)=1, a(2)=-3, a(3)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214297

/-- `∑[a(n-4)+2]` -/
def P12694538854654179653.Spec : Prop :=
  ∀ n, P12694538854654179653.a n = A214297 n

theorem P12694538854654179653.correct : P12694538854654179653.Spec := by
  intro n
  simp only [A214297]

end A214297

/-! ## A214297.P12558025445536389061

`n²-(6*round(n²/8)+1)`
-/

namespace A214297.P12558025445536389061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (6 * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + 1)

end

end A214297.P12558025445536389061

namespace A214297

/-- `n²-(6*round(n²/8)+1)` -/
def P12558025445536389061.Spec : Prop :=
  ∀ n, P12558025445536389061.a n = A214297 n

end A214297

/-! ## A214297.P12732857189968196982

`(n-A215415(n+1))*A215415(n+1)`
-/

namespace A214297.P12732857189968196982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A215415 (n + 1)) * A215415 (n + 1)

end

end A214297.P12732857189968196982

namespace A214297

/-- `(n-A215415(n+1))*A215415(n+1)` -/
def P12732857189968196982.Spec : Prop :=
  ∀ n, P12732857189968196982.a n = A214297 n

end A214297

/-! ## A214297.P337263276637749500

`(n-A226279(n+1))*A226279(n+1)`
-/

namespace A214297.P337263276637749500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A226279 (n + 1)) * A226279 (n + 1)

end

end A214297.P337263276637749500

namespace A214297

/-- `(n-A226279(n+1))*A226279(n+1)` -/
def P337263276637749500.Spec : Prop :=
  ∀ n, P337263276637749500.a n = A214297 n

end A214297

/-! ## A214297.P8623031684932337884

`A215175(2*n)`
-/

namespace A214297.P8623031684932337884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215175 (2 * n)

end

end A214297.P8623031684932337884

namespace A214297

/-- `A215175(2*n)` -/
def P8623031684932337884.Spec : Prop :=
  ∀ n, P8623031684932337884.a n = A214297 n

end A214297

/-! ## A214297.P10101799501559720371

`A225948(2*A225975(2*n))`
-/

namespace A214297.P10101799501559720371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (2 * A225975 (2 * n)).toNat

end

end A214297.P10101799501559720371

namespace A214297

/-- `A225948(2*A225975(2*n))` -/
def P10101799501559720371.Spec : Prop :=
  ∀ n, P10101799501559720371.a n = A214297 n

end A214297

/-!
# A214298: Number of n-th order connected Feynman diagrams.

The programs for A214298, there is no canonical definition to state claims against.
-/

/-! ## A214298.P14314429031435636353

`n!*2^n*A000698(n+1)`
-/

namespace A214298.P14314429031435636353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * 2 ^ n : ℤ) * A000698 (n + 1)

end

end A214298.P14314429031435636353

/-! ## A214298.P12756445632669691232

`A000165(n)*A000698(n+1)`
-/

namespace A214298.P12756445632669691232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A000698 (n + 1)

end

end A214298.P12756445632669691232

/-! ## A214298.P417025678016849685

`A000142(n)*A000079(n)*A000698(n+1)`
-/

namespace A214298.P417025678016849685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000079 n * A000698 (n + 1)

end

end A214298.P417025678016849685

/-! ## A214298.P8868952997907287316

`A214299(∑[n]+n)`
-/

namespace A214298.P8868952997907287316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214299 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A214298.P8868952997907287316

/-! ## A214298.P10279889403924288643

`A000165(n)*A286781(∑[n])`
-/

namespace A214298.P10279889403924288643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A286781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214298.P10279889403924288643

/-!
# A214299: Triangle d_k(n) read by rows: number of n-th order Feynman diagrams with k interactions, 0<=k<=n.

The programs for A214299, there is no canonical definition to state claims against.
-/

/-! ## A214299.P12063237557420411329

`A004277(lcm(n, ∏[A116697(n)]))`
-/

namespace A214299.P12063237557420411329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A214299.P12063237557420411329

/-! ## A214299.P2687760884837346286

`lcm(A274206(A052689(n)), A334866(n))`
-/

namespace A214299.P2687760884837346286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A274206 (A052689 n).toNat) (A334866 n)

end

end A214299.P2687760884837346286

/-! ## A214299.P10784596373959560148

`A351456(A007224(n+4)-A005843(n))`
-/

namespace A214299.P10784596373959560148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (A007224 (n + 4) - A005843 n).toNat

end

end A214299.P10784596373959560148

