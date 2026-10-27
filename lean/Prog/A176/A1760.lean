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
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C011
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A176000: Decimal expansion of 1 - A175999.

The programs for A176000, there is no canonical definition to state claims against.
-/

/-! ## A176000.P14341920742107998415

`9-A175999(n)`
-/

namespace A176000.P14341920742107998415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A175999 n

end

end A176000.P14341920742107998415

/-!
# A176002: Numbers n such that 15*prime(n)+{-4,-2,2,4} are all primes.

The programs for A176002, there is no canonical definition to state claims against.
-/

/-! ## A176002.P12796501402662347575

`A000720(A342717(n+1))`
-/

namespace A176002.P12796501402662347575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A342717 (n + 1)).toNat

end

end A176002.P12796501402662347575

/-! ## A176002.P6415361955624499676

`A000720(p?[A112540(n+1)])`
-/

namespace A176002.P6415361955624499676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176002.P6415361955624499676

/-! ## A176002.P3816522083851700962

`A061395(p?[A112540(n+1)])`
-/

namespace A176002.P3816522083851700962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176002.P3816522083851700962

/-! ## A176002.P3641099399437462084

`A061395(or(1, A342717(n+1)))`
-/

namespace A176002.P3641099399437462084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A342717 (n + 1))).toNat

end

end A176002.P3641099399437462084

/-!
# A176003: a(n) = 3*(n-th noncomposite number) - 2.

The programs for A176003, the canonical program `A176003.P16816734743549634336` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176003 has offset 1).

The definition of A176003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176003.P16816734743549634336

`3*A008578(n+1)-2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A176003

/-- `3*A008578(n+1)-2` -/
def P16816734743549634336.Spec : Prop :=
  ∀ n, P16816734743549634336.a n = A176003 (n + 1)

theorem P16816734743549634336.correct : P16816734743549634336.Spec := by
  intro n
  simp only [A176003, Nat.add_sub_cancel]

end A176003

/-! ## A176003.P62437588798659019

`A112773(n+1)-2`
-/

namespace A176003.P62437588798659019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - 2

end

end A176003.P62437588798659019

namespace A176003

/-- `A112773(n+1)-2` -/
def P62437588798659019.Spec : Prop :=
  ∀ n, P62437588798659019.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P5772727263794338869

`3*A028815(n)-5`
-/

namespace A176003.P5772727263794338869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028815 n - 5

end

end A176003.P5772727263794338869

namespace A176003

/-- `3*A028815(n)-5` -/
def P5772727263794338869.Spec : Prop :=
  ∀ n, P5772727263794338869.a n = A176003 (n + 1)

theorem P5772727263794338869.correct : P5772727263794338869.Spec := by
  intro n
  simp only [A176003, Nat.add_sub_cancel, A176003.P5772727263794338869.a, A176003.P16816734743549634336.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176003

/-! ## A176003.P12732919535447733214

`A076274(n+1)+A028815(n)-2`
-/

namespace A176003.P12732919535447733214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) + (A028815 n - 2)

end

end A176003.P12732919535447733214

namespace A176003

/-- `A076274(n+1)+A028815(n)-2` -/
def P12732919535447733214.Spec : Prop :=
  ∀ n, P12732919535447733214.a n = A176003 (n + 1)

theorem P12732919535447733214.correct : P12732919535447733214.Spec := by
  intro n
  simp only [A176003, Nat.add_sub_cancel, A176003.P12732919535447733214.a, A176003.P16816734743549634336.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A076274, A076274.P12157437344970773243.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176003

/-! ## A176003.P7545846279649323740

`A288313(n+1)+A130713(n)-2`
-/

namespace A176003.P7545846279649323740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288313 (n + 1) + (A130713 n - 2)

end

end A176003.P7545846279649323740

namespace A176003

/-- `A288313(n+1)+A130713(n)-2` -/
def P7545846279649323740.Spec : Prop :=
  ∀ n, P7545846279649323740.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P9425414650022546921

`A001747(n+1)+A008578(n+1)-2`
-/

namespace A176003.P9425414650022546921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + (A008578 (n + 1) - 2)

end

end A176003.P9425414650022546921

namespace A176003

/-- `A001747(n+1)+A008578(n+1)-2` -/
def P9425414650022546921.Spec : Prop :=
  ∀ n, P9425414650022546921.a n = A176003 (n + 1)

theorem P9425414650022546921.correct : P9425414650022546921.Spec := by
  intro n
  simp only [A176003, Nat.add_sub_cancel, A176003.P9425414650022546921.a, A176003.P16816734743549634336.a, A001747, A001747.P198467477273308856.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176003

/-! ## A176003.P15609885284621509020

`A280560(A093178(n))+A112773(n+1)`
-/

namespace A176003.P15609885284621509020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A093178 n).toNat + A112773 (n + 1)

end

end A176003.P15609885284621509020

namespace A176003

/-- `A280560(A093178(n))+A112773(n+1)` -/
def P15609885284621509020.Spec : Prop :=
  ∀ n, P15609885284621509020.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P7002560107074672839

`A076274(n+1)+A076274(n+1)-A008578(n+1)`
-/

namespace A176003.P7002560107074672839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) + (A076274 (n + 1) - A008578 (n + 1))

end

end A176003.P7002560107074672839

namespace A176003

/-- `A076274(n+1)+A076274(n+1)-A008578(n+1)` -/
def P7002560107074672839.Spec : Prop :=
  ∀ n, P7002560107074672839.a n = A176003 (n + 1)

theorem P7002560107074672839.correct : P7002560107074672839.Spec := by
  intro n
  simp only [A176003, Nat.add_sub_cancel, A176003.P7002560107074672839.a, A176003.P16816734743549634336.a, A008578, A008578.P3639467937083264764.a, A076274, A076274.P12157437344970773243.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176003

/-! ## A176003.P13355620513548226295

`3*A158611(n+2)-2`
-/

namespace A176003.P13355620513548226295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A158611 (n + 2) - 2

end

end A176003.P13355620513548226295

namespace A176003

/-- `3*A158611(n+2)-2` -/
def P13355620513548226295.Spec : Prop :=
  ∀ n, P13355620513548226295.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P2560741221455531

`record[3*A006530(n+1)-2]`
-/

namespace A176003.P2560741221455531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006530 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176003.P2560741221455531

namespace A176003

/-- `record[3*A006530(n+1)-2]` -/
def P2560741221455531.Spec : Prop :=
  ∀ n, P2560741221455531.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P6427046115586095072

`record[3*A020639(n+1)-2]`
-/

namespace A176003.P6427046115586095072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020639 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176003.P6427046115586095072

namespace A176003

/-- `record[3*A020639(n+1)-2]` -/
def P6427046115586095072.Spec : Prop :=
  ∀ n, P6427046115586095072.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P13403283270948344141

`record[n/a(A001222(n))]-2` with `a(0)=3`
-/

namespace A176003.P13403283270948344141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A176003.P13403283270948344141

namespace A176003

/-- `record[n/a(A001222(n))]-2` -/
def P13403283270948344141.Spec : Prop :=
  ∀ n, P13403283270948344141.a n = (A176003 (n + 1) : ℚ)

end A176003

/-! ## A176003.P10033713439209775371

`record[3*n*A010051(n+1)+1]`
-/

namespace A176003.P10033713439209775371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176003.P10033713439209775371

namespace A176003

/-- `record[3*n*A010051(n+1)+1]` -/
def P10033713439209775371.Spec : Prop :=
  ∀ n, P10033713439209775371.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P14709273379008274583

`3*lt[A001222(n+1), 2]+1`
-/

namespace A176003.P14709273379008274583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176003.P14709273379008274583

namespace A176003

/-- `3*lt[A001222(n+1), 2]+1` -/
def P14709273379008274583.Spec : Prop :=
  ∀ n, (P14709273379008274583.a n : ℤ) = A176003 (n + 1)

end A176003

/-! ## A176003.P12768410521750656290

`3*lt[A000005(n+1), 3]+1`
-/

namespace A176003.P12768410521750656290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176003.P12768410521750656290

namespace A176003

/-- `3*lt[A000005(n+1), 3]+1` -/
def P12768410521750656290.Spec : Prop :=
  ∀ n, (P12768410521750656290.a n : ℤ) = A176003 (n + 1)

end A176003

/-! ## A176003.P17505878619786885069

`3*lt[n-1, A000010(n+1)]+1`
-/

namespace A176003.P17505878619786885069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176003.P17505878619786885069

namespace A176003

/-- `3*lt[n-1, A000010(n+1)]+1` -/
def P17505878619786885069.Spec : Prop :=
  ∀ n, (P17505878619786885069.a n : ℤ) = A176003 (n + 1)

end A176003

/-! ## A176003.P918219525943058685

`3*lt[A000203(n+1), n+3]+1`
-/

namespace A176003.P918219525943058685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176003.P918219525943058685

namespace A176003

/-- `3*lt[A000203(n+1), n+3]+1` -/
def P918219525943058685.Spec : Prop :=
  ∀ n, (P918219525943058685.a n : ℤ) = A176003 (n + 1)

end A176003

/-! ## A176003.P9474073964886438103

`record[A322982(n+1)+n]`
-/

namespace A176003.P9474073964886438103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176003.P9474073964886438103

namespace A176003

/-- `record[A322982(n+1)+n]` -/
def P9474073964886438103.Spec : Prop :=
  ∀ n, P9474073964886438103.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P5944803760996979178

`A016825(A008578(n+1)-1)-A008578(n+1)`
-/

namespace A176003.P5944803760996979178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A008578 (n + 1) - 1).toNat - A008578 (n + 1)

end

end A176003.P5944803760996979178

namespace A176003

/-- `A016825(A008578(n+1)-1)-A008578(n+1)` -/
def P5944803760996979178.Spec : Prop :=
  ∀ n, P5944803760996979178.a n = A176003 (n + 1)

end A176003

/-! ## A176003.P1810559033943918880

`lt[A001222(n+2), gcd(3, 1-n)]`
-/

namespace A176003.P1810559033943918880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A176003.P1810559033943918880

namespace A176003

/-- `lt[A001222(n+2), gcd(3, 1-n)]` -/
def P1810559033943918880.Spec : Prop :=
  ∀ n, (P1810559033943918880.a n : ℤ) = A176003 (n + 1)

end A176003

/-!
# A176004: (n-th prime > 3) minus (n-th semiprime).

The programs for A176004, the canonical program `A176004.P16921650410434813527` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176004 has offset 1).

The definition of A176004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176004.P16921650410434813527

`p?[2*n+5]-A001358(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176004

/-- `p?[2*n+5]-A001358(n+1)` -/
def P16921650410434813527.Spec : Prop :=
  ∀ n, P16921650410434813527.a n = A176004 (n + 1)

theorem P16921650410434813527.correct : P16921650410434813527.Spec := by
  intro n
  simp only [A176004, Nat.add_sub_cancel]

end A176004

/-! ## A176004.P8359387177859780517

`p?[2*n+5]-record[n/a(A001222(n))]` with `a(0)=4, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A176004.P8359387177859780517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4, 2, 1, 3] fun n f2 =>
  (n : ℚ) / f2 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A176004.P8359387177859780517

namespace A176004

/-- `p?[2*n+5]-record[n/a(A001222(n))]` -/
def P8359387177859780517.Spec : Prop :=
  ∀ n, P8359387177859780517.a n = (A176004 (n + 1) : ℚ)

end A176004

/-! ## A176004.P17555817343923392363

`A065870(n+1)+A031131(n+1)`
-/

namespace A176004.P17555817343923392363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065870 (n + 1) + A031131 (n + 1)

end

end A176004.P17555817343923392363

namespace A176004

/-- `A065870(n+1)+A031131(n+1)` -/
def P17555817343923392363.Spec : Prop :=
  ∀ n, P17555817343923392363.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P3492652516650202662

`A215848(n+1)-A001358(n+1)`
-/

namespace A176004.P3492652516650202662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A001358 (n + 1)

end

end A176004.P3492652516650202662

namespace A176004

/-- `A215848(n+1)-A001358(n+1)` -/
def P3492652516650202662.Spec : Prop :=
  ∀ n, P3492652516650202662.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P3311390563753985790

`A045344(n+2)-A001358(n+1)`
-/

namespace A176004.P3311390563753985790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - A001358 (n + 1)

end

end A176004.P3311390563753985790

namespace A176004

/-- `A045344(n+2)-A001358(n+1)` -/
def P3311390563753985790.Spec : Prop :=
  ∀ n, P3311390563753985790.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P13290078450910063550

`A065091(n+2)-A001358(n+1)`
-/

namespace A176004.P13290078450910063550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A001358 (n + 1)

end

end A176004.P13290078450910063550

namespace A176004

/-- `A065091(n+2)-A001358(n+1)` -/
def P13290078450910063550.Spec : Prop :=
  ∀ n, P13290078450910063550.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P3709028652595572749

`A071148(n+2)-(A071148(n+1)+A001358(n+1))`
-/

namespace A176004.P3709028652595572749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 2) - (A071148 (n + 1) + A001358 (n + 1))

end

end A176004.P3709028652595572749

namespace A176004

/-- `A071148(n+2)-(A071148(n+1)+A001358(n+1))` -/
def P3709028652595572749.Spec : Prop :=
  ∀ n, P3709028652595572749.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P8211188692776701305

`A000040(n+3)-A001358(n+1)`
-/

namespace A176004.P8211188692776701305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A001358 (n + 1)

end

end A176004.P8211188692776701305

namespace A176004

/-- `A000040(n+3)-A001358(n+1)` -/
def P8211188692776701305.Spec : Prop :=
  ∀ n, P8211188692776701305.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P2479502545405894079

`A008864(n+3)-A088707(n+1)`
-/

namespace A176004.P2479502545405894079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 3) - A088707 (n + 1)

end

end A176004.P2479502545405894079

namespace A176004

/-- `A008864(n+3)-A088707(n+1)` -/
def P2479502545405894079.Spec : Prop :=
  ∀ n, P2479502545405894079.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P11040038655501841605

`A006093(n+3)-A186621(n+1)`
-/

namespace A176004.P11040038655501841605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) - A186621 (n + 1)

end

end A176004.P11040038655501841605

namespace A176004

/-- `A006093(n+3)-A186621(n+1)` -/
def P11040038655501841605.Spec : Prop :=
  ∀ n, P11040038655501841605.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P4380057259065479726

`A102415(n+3)+A121885(n+3)-A001358(n+1)`
-/

namespace A176004.P4380057259065479726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102415 (n + 3) + (A121885 (n + 3) - A001358 (n + 1))

end

end A176004.P4380057259065479726

namespace A176004

/-- `A102415(n+3)+A121885(n+3)-A001358(n+1)` -/
def P4380057259065479726.Spec : Prop :=
  ∀ n, P4380057259065479726.a n = A176004 (n + 1)

end A176004

/-! ## A176004.P6902997113861215565

`A000040(n+3)-A129767(2*(n+1))`
-/

namespace A176004.P6902997113861215565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A129767 (2 * (n + 1))

end

end A176004.P6902997113861215565

namespace A176004

/-- `A000040(n+3)-A129767(2*(n+1))` -/
def P6902997113861215565.Spec : Prop :=
  ∀ n, P6902997113861215565.a n = A176004 (n + 1)

end A176004

/-!
# A176006: The number of branching configurations of RNA (see Sankoff, 1985) with n or fewer hairpins.

The programs for A176006, the canonical program `A176006.P1011772208691613746` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176006 has offset 0).

The definition of A176006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176006.P5420870071363750410

`∑[A155069(n)]`
-/

namespace A176006.P5420870071363750410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P5420870071363750410

namespace A176006

/-- `∑[A155069(n)]` -/
def P5420870071363750410.Spec : Prop :=
  ∀ n, P5420870071363750410.a n = A176006 n

end A176006

/-! ## A176006.P9824186705039912533

`∑[abs(A086456(n))]`
-/

namespace A176006.P9824186705039912533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P9824186705039912533

namespace A176006

/-- `∑[abs(A086456(n))]` -/
def P9824186705039912533.Spec : Prop :=
  ∀ n, P9824186705039912533.a n = A176006 n

end A176006

/-! ## A176006.P2933015335866041091

`∑[abs(A103137(n))]`
-/

namespace A176006.P2933015335866041091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P2933015335866041091

namespace A176006

/-- `∑[abs(A103137(n))]` -/
def P2933015335866041091.Spec : Prop :=
  ∀ n, P2933015335866041091.a n = A176006 n

end A176006

/-! ## A176006.P2141777432478742689

`∑[A132372(∑[n])]`
-/

namespace A176006.P2141777432478742689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P2141777432478742689

namespace A176006

/-- `∑[A132372(∑[n])]` -/
def P2141777432478742689.Spec : Prop :=
  ∀ n, P2141777432478742689.a n = A176006 n

end A176006

/-! ## A176006.P12307077801543546079

`∑[A080247(C(n, 2))]`
-/

namespace A176006.P12307077801543546079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P12307077801543546079

namespace A176006

/-- `∑[A080247(C(n, 2))]` -/
def P12307077801543546079.Spec : Prop :=
  ∀ n, P12307077801543546079.a n = A176006 n

end A176006

/-! ## A176006.P1283862898523768558

`∑[abs(A112477(∑[n]))]`
-/

namespace A176006.P1283862898523768558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112477 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P1283862898523768558

namespace A176006

/-- `∑[abs(A112477(∑[n]))]` -/
def P1283862898523768558.Spec : Prop :=
  ∀ n, P1283862898523768558.a n = A176006 n

end A176006

/-! ## A176006.P9707940996121740383

`∑[A033878(∑[n]+n)]`
-/

namespace A176006.P9707940996121740383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P9707940996121740383

namespace A176006

/-- `∑[A033878(∑[n]+n)]` -/
def P9707940996121740383.Spec : Prop :=
  ∀ n, P9707940996121740383.a n = A176006 n

end A176006

/-! ## A176006.P13145627621340366914

`∑[A106579(∑[n]+n)]`
-/

namespace A176006.P13145627621340366914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P13145627621340366914

namespace A176006

/-- `∑[A106579(∑[n]+n)]` -/
def P13145627621340366914.Spec : Prop :=
  ∀ n, P13145627621340366914.a n = A176006 n

end A176006

/-! ## A176006.P6154698235162272298

`∑[A080247(∑[n]-n)]`
-/

namespace A176006.P6154698235162272298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P6154698235162272298

namespace A176006

/-- `∑[A080247(∑[n]-n)]` -/
def P6154698235162272298.Spec : Prop :=
  ∀ n, P6154698235162272298.a n = A176006 n

end A176006

/-! ## A176006.P5113911631831828132

`a(n-1)-A085403(n)` with `a(0)=1, a(1)=2`
-/

namespace A176006.P5113911631831828132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A085403 n

end

end A176006.P5113911631831828132

namespace A176006

/-- `a(n-1)-A085403(n)` -/
def P5113911631831828132.Spec : Prop :=
  ∀ n, P5113911631831828132.a n = A176006 n

end A176006

/-! ## A176006.P10176142537952506464

`A006318(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A176006.P10176142537952506464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006318 (n - 1) + a (n - 1)

end

end A176006.P10176142537952506464

namespace A176006

/-- `A006318(n-1)+a(n-1)` -/
def P10176142537952506464.Spec : Prop :=
  ∀ n, P10176142537952506464.a n = A176006 n

end A176006

/-! ## A176006.P12351274890029623045

`∑[A006318(log2(A011782(n)))]`
-/

namespace A176006.P12351274890029623045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P12351274890029623045

namespace A176006

/-- `∑[A006318(log2(A011782(n)))]` -/
def P12351274890029623045.Spec : Prop :=
  ∀ n, P12351274890029623045.a n = A176006 n

end A176006

/-! ## A176006.P1038798506961025267

`∑[gcd(A000038(n), A103137(n))]`
-/

namespace A176006.P1038798506961025267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103137 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P1038798506961025267

namespace A176006

/-- `∑[gcd(A000038(n), A103137(n))]` -/
def P1038798506961025267.Spec : Prop :=
  ∀ n, (P1038798506961025267.a n : ℤ) = A176006 n

end A176006

/-! ## A176006.P11793214830331233838

`∑[A006319(n)-2*A238112(n)]`
-/

namespace A176006.P11793214830331233838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n - 2 * A238112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P11793214830331233838

namespace A176006

/-- `∑[A006319(n)-2*A238112(n)]` -/
def P11793214830331233838.Spec : Prop :=
  ∀ n, P11793214830331233838.a n = A176006 n

end A176006

/-! ## A176006.P2133555022456455807

`∑[gcd(A039974(2*n+1), A086456(n))]`
-/

namespace A176006.P2133555022456455807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039974 (2 * n + 1)) (A086456 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P2133555022456455807

namespace A176006

/-- `∑[gcd(A039974(2*n+1), A086456(n))]` -/
def P2133555022456455807.Spec : Prop :=
  ∀ n, (P2133555022456455807.a n : ℤ) = A176006 n

end A176006

/-! ## A176006.P1011772208691613746

`A086616(n)-A035011(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176006

/-- `A086616(n)-A035011(n)` -/
def P1011772208691613746.Spec : Prop :=
  ∀ n, P1011772208691613746.a n = A176006 n

theorem P1011772208691613746.correct : P1011772208691613746.Spec := by
  intro n
  simp only [A176006]

end A176006

/-! ## A176006.P7696515290147792492

`2*A104858(n)-A006318(n)`
-/

namespace A176006.P7696515290147792492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104858 n - A006318 n

end

end A176006.P7696515290147792492

namespace A176006

/-- `2*A104858(n)-A006318(n)` -/
def P7696515290147792492.Spec : Prop :=
  ∀ n, P7696515290147792492.a n = A176006 n

theorem P7696515290147792492.correct : P7696515290147792492.Spec := by
  intro n
  simp only [A176006, Nat.add_sub_cancel, A176006.P7696515290147792492.a, A176006.P1011772208691613746.a, A006318, A006318.P13323005805950744778.f1, A006318.P13323005805950744778.a, A035011, A035011.P13854642770801063337.a, A086616, A086616.P4854257795119713207.a, A104858, A104858.P16916997968901490082.f1, A104858.P16916997968901490082.a, A080243, A080243.P6426181956936067807.a, A080247, A080247.P7183130527300381836.a, A033877, A033877.P10303511514391474514.a, A038722, A038722.P244822054879230948.a, A176479, A176479.P6065574295959308531.a, A181983, A181983.P3699358180015306672.a, A001003, A001003.P3652309286495105422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A176006

/-! ## A176006.P329298049587695644

`∑[A167656(∑[n])]`
-/

namespace A176006.P329298049587695644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167656 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176006.P329298049587695644

namespace A176006

/-- `∑[A167656(∑[n])]` -/
def P329298049587695644.Spec : Prop :=
  ∀ n, P329298049587695644.a n = A176006 n

end A176006

/-!
# A176007: Numbers k such that 3^(2*k-1)-3^k+1 is prime.

The programs for A176007, there is no canonical definition to state claims against.
-/

/-! ## A176007.P7118343504797373330

`A322585(n+1)+A261359(∑[8*n+1])`
-/

namespace A176007.P7118343504797373330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (n + 1) + A261359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176007.P7118343504797373330

/-!
# A176008: Numbers k such that 3^(2*k-1)+3^k+1 is prime.

The programs for A176008, there is no canonical definition to state claims against.
-/

/-! ## A176008.P450922104007392335

`A199191(n+1)-1`
-/

namespace A176008.P450922104007392335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199191 (n + 1) - 1

end

end A176008.P450922104007392335

/-! ## A176008.P11527791517756690094

`record[A199191(A263131(n))-1]`
-/

namespace A176008.P11527791517756690094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199191 (A263131 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176008.P11527791517756690094

/-! ## A176008.P14448727578383319789

`A341932(floor(1/(n+1)))+A199191(n+1)`
-/

namespace A176008.P14448727578383319789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 ⌊1 / (n + 1 : ℚ)⌋.toNat + A199191 (n + 1)

end

end A176008.P14448727578383319789

/-! ## A176008.P1827047879596198882

`A231345(A070914(n))+A199191(n+1)`
-/

namespace A176008.P1827047879596198882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231345 (A070914 n).toNat + A199191 (n + 1)

end

end A176008.P1827047879596198882

/-! ## A176008.P486135733400548397

`A292561(A008284(n+1))+A199191(n+1)`
-/

namespace A176008.P486135733400548397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292561 (A008284 (n + 1)).toNat + A199191 (n + 1)

end

end A176008.P486135733400548397

/-!
# A176009: Smallest prime p = p(k) containing all decimal digits from "1" up to "k" (k = 1,2, ..., 9, 0).

The programs for A176009, there is no canonical definition to state claims against.
-/

/-! ## A176009.P16269192847835735432

`A068836(n+1)%A068836(A068842(n))`
-/

namespace A176009.P16269192847835735432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068836 (n + 1)) (A068836 (A068842 n).toNat)

end

end A176009.P16269192847835735432

/-! ## A176009.P13818105746848683134

`A068836(A032551(n+2))`
-/

namespace A176009.P13818105746848683134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068836 (A032551 (n + 2)).toNat

end

end A176009.P13818105746848683134

/-!
# A176010: Positive numbers k such that k^2 == 2 (mod 97).

The programs for A176010, the canonical program `A176010.P8991699498595305899` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176010 has offset 1).

The definition of A176010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176010.P2063426328567521696

`(97-41*(-1)^n+194*n)/4`
-/

namespace A176010.P2063426328567521696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (97 - 41 * (-1) ^ n + (194 * n : ℤ) : ℚ) / 4

end

end A176010.P2063426328567521696

namespace A176010

/-- `(97-41*(-1)^n+194*n)/4` -/
def P2063426328567521696.Spec : Prop :=
  ∀ n, P2063426328567521696.a n = (A176010 (n + 1) : ℚ)

theorem P2063426328567521696.correct : P2063426328567521696.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A176010, Nat.add_sub_cancel, A176010.P2063426328567521696.a, A176010.P8991699498595305899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A176010, Nat.add_sub_cancel, A176010.P2063426328567521696.a, A176010.P8991699498595305899.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176010

/-! ## A176010.P8991699498595305899

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=14, a(1)=83, a(2)=111`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176010

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8991699498595305899.Spec : Prop :=
  ∀ n, P8991699498595305899.a n = A176010 (n + 1)

theorem P8991699498595305899.correct : P8991699498595305899.Spec := by
  intro n
  simp only [A176010, Nat.add_sub_cancel]

end A176010

/-! ## A176010.P7097807104575482993

`a(n-2)+97` with `a(0)=14, a(1)=83`
-/

namespace A176010.P7097807104575482993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 83] fun n a =>
  a (n - 2) + 97

end

end A176010.P7097807104575482993

namespace A176010

/-- `a(n-2)+97` -/
def P7097807104575482993.Spec : Prop :=
  ∀ n, (P7097807104575482993.a n : ℤ) = A176010 (n + 1)

end A176010

/-! ## A176010.P11258591185596913481

`97*n-a(n-1)` with `a(0)=14`
-/

namespace A176010.P11258591185596913481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  (97 * n : ℤ) - a (n - 1)

end

end A176010.P11258591185596913481

namespace A176010

/-- `97*n-a(n-1)` -/
def P11258591185596913481.Spec : Prop :=
  ∀ n, P11258591185596913481.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P11639004233048176011

`A167534(n)+A143988(n+1)`
-/

namespace A176010.P11639004233048176011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167534 n + A143988 (n + 1)

end

end A176010.P11639004233048176011

namespace A176010

/-- `A167534(n)+A143988(n+1)` -/
def P11639004233048176011.Spec : Prop :=
  ∀ n, P11639004233048176011.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P17666981955638836757

`A164135(n+1)+A159254(n+1)`
-/

namespace A176010.P17666981955638836757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) + A159254 (n + 1)

end

end A176010.P17666981955638836757

namespace A176010

/-- `A164135(n+1)+A159254(n+1)` -/
def P17666981955638836757.Spec : Prop :=
  ∀ n, P17666981955638836757.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P17584430595595827342

`A156674(n+1)+A164135(n+1)+A152833(n)`
-/

namespace A176010.P17584430595595827342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + (A164135 (n + 1) + A152833 n)

end

end A176010.P17584430595595827342

namespace A176010

/-- `A156674(n+1)+A164135(n+1)+A152833(n)` -/
def P17584430595595827342.Spec : Prop :=
  ∀ n, P17584430595595827342.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P18366272066356090801

`A164135(n+1)+A171141(n+1)+A168416(n+1)`
-/

namespace A176010.P18366272066356090801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) + (A171141 (n + 1) + A168416 (n + 1))

end

end A176010.P18366272066356090801

namespace A176010

/-- `A164135(n+1)+A171141(n+1)+A168416(n+1)` -/
def P18366272066356090801.Spec : Prop :=
  ∀ n, P18366272066356090801.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P16484869076864771637

`A084967(n+1)+A322489(n+1)+A164135(n+1)`
-/

namespace A176010.P16484869076864771637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1) + (A322489 (n + 1) + A164135 (n + 1))

end

end A176010.P16484869076864771637

namespace A176010

/-- `A084967(n+1)+A322489(n+1)+A164135(n+1)` -/
def P16484869076864771637.Spec : Prop :=
  ∀ n, P16484869076864771637.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P10182815348349502250

`A017317(A047522(n+1)+n)-A032766(n)`
-/

namespace A176010.P10182815348349502250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 (A047522 (n + 1) + (n : ℤ)).toNat - A032766 n

end

end A176010.P10182815348349502250

namespace A176010

/-- `A017317(A047522(n+1)+n)-A032766(n)` -/
def P10182815348349502250.Spec : Prop :=
  ∀ n, P10182815348349502250.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P5465524501873646250

`A175886(n+1)+A113801(A090771(n+1)+n+1)`
-/

namespace A176010.P5465524501873646250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1) + A113801 (A090771 (n + 1) + (n : ℤ) + 1).toNat

end

end A176010.P5465524501873646250

namespace A176010

/-- `A175886(n+1)+A113801(A090771(n+1)+n+1)` -/
def P5465524501873646250.Spec : Prop :=
  ∀ n, P5465524501873646250.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P10991715573724026265

`A113802(A113802(n+1))+2-A110654(n)`
-/

namespace A176010.P10991715573724026265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113802 (A113802 (n + 1)).toNat + (2 - A110654 n)

end

end A176010.P10991715573724026265

namespace A176010

/-- `A113802(A113802(n+1))+2-A110654(n)` -/
def P10991715573724026265.Spec : Prop :=
  ∀ n, P10991715573724026265.a n = A176010 (n + 1)

end A176010

/-! ## A176010.P1388341380915206923

`A306771(A306771(n+1)-n)-A164135(n+1)`
-/

namespace A176010.P1388341380915206923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (A306771 (n + 1) - (n : ℤ)).toNat - A164135 (n + 1)

end

end A176010.P1388341380915206923

namespace A176010

/-- `A306771(A306771(n+1)-n)-A164135(n+1)` -/
def P1388341380915206923.Spec : Prop :=
  ∀ n, P1388341380915206923.a n = A176010 (n + 1)

end A176010

/-!
# A176011: Primes in the chain of repeated application of x->2*x+3, starting at x=97.

The programs for A176011, there is no canonical definition to state claims against.
-/

/-! ## A176011.P502551425424651123

`p?[10*10*2^n-3]`
-/

namespace A176011.P502551425424651123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (10 * 2 ^ n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176011.P502551425424651123

/-! ## A176011.P7251258441566462313

`p?[A158128(A000079(n))-4]*A065648(n)`
-/

namespace A176011.P7251258441566462313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A000079 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A065648 n

end

end A176011.P7251258441566462313

/-! ## A176011.P274368234931363160

`record[A072972(A000079(n+2))]`
-/

namespace A176011.P274368234931363160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072972 (A000079 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176011.P274368234931363160

/-!
# A176013: Triangle, read by rows, T(n, k) = (-1)^n * n!/(k*k!) * binomial(n-1, k-1) * binomial(n, k-1).

The programs for A176013, the canonical program `A176013.P13187406637236969248` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176013 has offset 1).

The definition of A176013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176013.P463574233005080196

`A008297(n+1)/A009766(n)*A088617(n)`
-/

namespace A176013.P463574233005080196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008297 (n + 1) : ℚ) / (A009766 n : ℚ) * (A088617 n : ℚ)

end

end A176013.P463574233005080196

namespace A176013

/-- `A008297(n+1)/A009766(n)*A088617(n)` -/
def P463574233005080196.Spec : Prop :=
  ∀ n, P463574233005080196.a n = (A176013 (n + 1) : ℚ)

end A176013

/-! ## A176013.P13187406637236969248

`A001263(n+1)/A007318(n)*A008297(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176013

/-- `A001263(n+1)/A007318(n)*A008297(n+1)` -/
def P13187406637236969248.Spec : Prop :=
  ∀ n, P13187406637236969248.a n = (A176013 (n + 1) : ℚ)

end A176013

/-! ## A176013.P10862290225172715930

`A169656(n+1)/A004736(n+1)!`
-/

namespace A176013.P10862290225172715930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169656 (n + 1) : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A176013.P10862290225172715930

namespace A176013

/-- `A169656(n+1)/A004736(n+1)!` -/
def P10862290225172715930.Spec : Prop :=
  ∀ n, P10862290225172715930.a n = (A176013 (n + 1) : ℚ)

end A176013

/-! ## A176013.P17659507110843368862

`A169656(n+1)/A166350(A278818(n))`
-/

namespace A176013.P17659507110843368862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169656 (n + 1) : ℚ) / (A166350 (A278818 n).toNat : ℚ)

end

end A176013.P17659507110843368862

namespace A176013

/-- `A169656(n+1)/A166350(A278818(n))` -/
def P17659507110843368862.Spec : Prop :=
  ∀ n, P17659507110843368862.a n = (A176013 (n + 1) : ℚ)

end A176013

/-! ## A176013.P15616699082687238746

`A169656(n+1)/A166350(A038722(n+1))`
-/

namespace A176013.P15616699082687238746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169656 (n + 1) : ℚ) / (A166350 (A038722 (n + 1)).toNat : ℚ)

end

end A176013.P15616699082687238746

namespace A176013

/-- `A169656(n+1)/A166350(A038722(n+1))` -/
def P15616699082687238746.Spec : Prop :=
  ∀ n, P15616699082687238746.a n = (A176013 (n + 1) : ℚ)

end A176013

/-! ## A176013.P17923769330367368098

`A001263(n+1)/A105278(n+1)*A169656(n+1)`
-/

namespace A176013.P17923769330367368098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A105278 (n + 1) : ℚ) * (A169656 (n + 1) : ℚ)

end

end A176013.P17923769330367368098

namespace A176013

/-- `A001263(n+1)/A105278(n+1)*A169656(n+1)` -/
def P17923769330367368098.Spec : Prop :=
  ∀ n, P17923769330367368098.a n = (A176013 (n + 1) : ℚ)

end A176013

/-! ## A176013.P2366379057734978998

`A089231(n+1)/A156992(n+1)*A169656(n+1)`
-/

namespace A176013.P2366379057734978998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089231 (n + 1) : ℚ) / (A156992 (n + 1) : ℚ) * (A169656 (n + 1) : ℚ)

end

end A176013.P2366379057734978998

namespace A176013

/-- `A089231(n+1)/A156992(n+1)*A169656(n+1)` -/
def P2366379057734978998.Spec : Prop :=
  ∀ n, P2366379057734978998.a n = (A176013 (n + 1) : ℚ)

end A176013

/-!
# A176018: a(n) = binomial(A000460(n), 3).

The programs for A176018, the canonical program `A176018.P12622215518759670678` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176018 has offset 4).

The definition of A176018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176018.P12622215518759670678

`C(A000460(n+4), 3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176018

/-- `C(A000460(n+4), 3)` -/
def P12622215518759670678.Spec : Prop :=
  ∀ n, (P12622215518759670678.a n : ℤ) = A176018 (n + 4)

theorem P12622215518759670678.correct : P12622215518759670678.Spec := by
  intro n
  simp only [A176018, Nat.add_sub_cancel]

end A176018

/-! ## A176018.P1140078089611222801

`C(A008292(∑[n+3]+6), 3)`
-/

namespace A176018.P1140078089611222801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008292 (∑ j ∈ Finset.range (n + 1), f1 j + 6)).toNat 3

end

end A176018.P1140078089611222801

namespace A176018

/-- `C(A008292(∑[n+3]+6), 3)` -/
def P1140078089611222801.Spec : Prop :=
  ∀ n, (P1140078089611222801.a n : ℤ) = A176018 (n + 4)

end A176018

/-! ## A176018.P12063197121771968756

`C(A014449(∑[n+2]+1-n), 3)`
-/

namespace A176018.P12063197121771968756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014449 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ))).toNat).toNat 3

end

end A176018.P12063197121771968756

namespace A176018

/-- `C(A014449(∑[n+2]+1-n), 3)` -/
def P12063197121771968756.Spec : Prop :=
  ∀ n, (P12063197121771968756.a n : ℤ) = A176018 (n + 4)

end A176018

/-! ## A176018.P14556541962517895113

`C(A173018(A046691(n+3)), 3)`
-/

namespace A176018.P14556541962517895113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173018 (A046691 (n + 3)).toNat).toNat 3

end

end A176018.P14556541962517895113

namespace A176018

/-- `C(A173018(A046691(n+3)), 3)` -/
def P14556541962517895113.Spec : Prop :=
  ∀ n, (P14556541962517895113.a n : ℤ) = A176018 (n + 4)

end A176018

/-!
# A176020: Decimal expansion of (3+sqrt(15))/3.

The programs for A176020, there is no canonical definition to state claims against.
-/

/-! ## A176020.P2478203520237257442

`A020817(A000007(n)+n)`
-/

namespace A176020.P2478203520237257442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A000007 n + (n : ℤ)).toNat

end

end A176020.P2478203520237257442

/-! ## A176020.P12103589222185606721

`A020817(gcd(n, A008486(n)))`
-/

namespace A176020.P12103589222185606721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (Int.gcd (n : ℤ) (A008486 n))

end

end A176020.P12103589222185606721

/-! ## A176020.P12686494590980584270

`A020817(floor(sqrt(A002522(n))))`
-/

namespace A176020.P12686494590980584270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (Int.sqrt (A002522 n)).toNat

end

end A176020.P12686494590980584270

/-! ## A176020.P14248755048423916725

`A020817(round(sqrt(A002522(n))))`
-/

namespace A176020.P14248755048423916725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (SequenceMachineLib.roundAway (Real.sqrt (A002522 n : ℝ))).toNat

end

end A176020.P14248755048423916725

/-! ## A176020.P13696275254900499510

`A020817(A008486(n)-2*n)`
-/

namespace A176020.P13696275254900499510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A008486 n - (2 * n : ℤ)).toNat

end

end A176020.P13696275254900499510

/-! ## A176020.P1260012203175834824

`A020817(A008574(n)-3*n)`
-/

namespace A176020.P1260012203175834824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A008574 n - (3 * n : ℤ)).toNat

end

end A176020.P1260012203175834824

/-! ## A176020.P16395872957993125880

`A020817(A008706(n)-4*n)`
-/

namespace A176020.P16395872957993125880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A008706 n - (4 * n : ℤ)).toNat

end

end A176020.P16395872957993125880

/-! ## A176020.P10184887475377824030

`A020817(A008486(n)-n-n)`
-/

namespace A176020.P10184887475377824030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A176020.P10184887475377824030

/-! ## A176020.P17378017942103830275

`floor(A020817(n)+1/A002522(n))`
-/

namespace A176020.P17378017942103830275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020817 n : ℚ) + 1 / (A002522 n : ℚ)⌋

end

end A176020.P17378017942103830275

/-! ## A176020.P1926268671550693324

`A020817(A008683(A008574(n))+n)`
-/

namespace A176020.P1926268671550693324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A008683 (A008574 n).toNat + (n : ℤ)).toNat

end

end A176020.P1926268671550693324

/-! ## A176020.P16639934903415589966

`A020817(gcd(A005843(n), A008706(n)))`
-/

namespace A176020.P16639934903415589966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (Int.gcd (A005843 n) (A008706 n))

end

end A176020.P16639934903415589966

/-! ## A176020.P1014309680681479961

`A020817(A008706(n)-A005843(n)-A005843(n))`
-/

namespace A176020.P1014309680681479961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (A008706 n - A005843 n - A005843 n).toNat

end

end A176020.P1014309680681479961

/-! ## A176020.P4731690518883988438

`A020817(A008486(n²)/A008486(n))`
-/

namespace A176020.P4731690518883988438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (SequenceMachineLib.roundAway ((A008486 (n ^ 2) : ℚ) / (A008486 n : ℚ))).toNat

end

end A176020.P4731690518883988438

/-! ## A176020.P6580006954265340368

`A020817(A008706(n²)/A008706(n))`
-/

namespace A176020.P6580006954265340368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (SequenceMachineLib.roundAway ((A008706 (n ^ 2) : ℚ) / (A008706 n : ℚ))).toNat

end

end A176020.P6580006954265340368

/-! ## A176020.P4475258978860050048

`A020817(A008574(n²)/A008574(n))`
-/

namespace A176020.P4475258978860050048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020817 (SequenceMachineLib.roundAway ((A008574 (n ^ 2) : ℚ) / (A008574 n : ℚ))).toNat

end

end A176020.P4475258978860050048

/-!
# A176021: Triangle T(n, k) = 1 - (-1)^n*(n! + 1) + A176013(n, k) + A176013(n, n-k+1) read by rows.

The programs for A176021, there is no canonical definition to state claims against.
-/

/-! ## A176021.P1386744763808475162

`A169654(n+1)+A176022(n+1)-A169653(n+1)`
-/

namespace A176021.P1386744763808475162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169654 (n + 1) + (A176022 (n + 1) - A169653 (n + 1))

end

end A176021.P1386744763808475162

/-! ## A176021.P2949916829019573218

`A061020(A228912(n)+A022174(n))`
-/

namespace A176021.P2949916829019573218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A228912 n + A022174 n).toNat

end

end A176021.P2949916829019573218

/-! ## A176021.P2570004087436486876

`A117000(A228912(n)+A022174(n))`
-/

namespace A176021.P2570004087436486876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (A228912 n + A022174 n).toNat

end

end A176021.P2570004087436486876

/-! ## A176021.P12404654620646943121

`A323407(A228912(n)+A022174(n))`
-/

namespace A176021.P12404654620646943121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (A228912 n + A022174 n).toNat

end

end A176021.P12404654620646943121

/-! ## A176021.P14187264356765175612

`A061020(A022174(n)%A323395(n))`
-/

namespace A176021.P14187264356765175612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (Int.tmod (A022174 n) (A323395 n)).toNat

end

end A176021.P14187264356765175612

/-!
# A176022: Triangle T(n, k) = A176013(n, k) + A176013(n, n-k+1), read by rows.

The programs for A176022, the canonical program `A176022.P13989985666709970606` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176022 has offset 1).

The definition of A176022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176022.P14183635637087416783

`A169653(n+1)/A009766(n)*A088617(n)`
-/

namespace A176022.P14183635637087416783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169653 (n + 1) : ℚ) / (A009766 n : ℚ) * (A088617 n : ℚ)

end

end A176022.P14183635637087416783

namespace A176022

/-- `A169653(n+1)/A009766(n)*A088617(n)` -/
def P14183635637087416783.Spec : Prop :=
  ∀ n, P14183635637087416783.a n = (A176022 (n + 1) : ℚ)

end A176022

/-! ## A176022.P13989985666709970606

`A001263(n+1)/A007318(n)*A169653(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176022

/-- `A001263(n+1)/A007318(n)*A169653(n+1)` -/
def P13989985666709970606.Spec : Prop :=
  ∀ n, P13989985666709970606.a n = (A176022 (n + 1) : ℚ)

end A176022

/-! ## A176022.P16772790941962338709

`A169653(n+1)/A004736(n+1)*A135278(n)`
-/

namespace A176022.P16772790941962338709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169653 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A135278 n : ℚ)

end

end A176022.P16772790941962338709

namespace A176022

/-- `A169653(n+1)/A004736(n+1)*A135278(n)` -/
def P16772790941962338709.Spec : Prop :=
  ∀ n, P16772790941962338709.a n = (A176022 (n + 1) : ℚ)

end A176022

/-! ## A176022.P3952770227154568388

`A176013(A038722(n+1))+A176013(n+1)`
-/

namespace A176022.P3952770227154568388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176013 (A038722 (n + 1)).toNat + A176013 (n + 1)

end

end A176022.P3952770227154568388

namespace A176022

/-- `A176013(A038722(n+1))+A176013(n+1)` -/
def P3952770227154568388.Spec : Prop :=
  ∀ n, P3952770227154568388.a n = A176022 (n + 1)

end A176022

/-! ## A176022.P6079648105403570548

`A176013(A093995(n+1)-n)+A176013(n+1)`
-/

namespace A176022.P6079648105403570548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176013 (A093995 (n + 1) - (n : ℤ)).toNat + A176013 (n + 1)

end

end A176022.P6079648105403570548

namespace A176022

/-- `A176013(A093995(n+1)-n)+A176013(n+1)` -/
def P6079648105403570548.Spec : Prop :=
  ∀ n, P6079648105403570548.a n = A176022 (n + 1)

end A176022

/-! ## A176022.P9686427326905266161

`A176013(n+1)+A176013(A185869(n+1)-A016777(n))`
-/

namespace A176022.P9686427326905266161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176013 (n + 1) + A176013 (A185869 (n + 1) - A016777 n).toNat

end

end A176022.P9686427326905266161

namespace A176022

/-- `A176013(n+1)+A176013(A185869(n+1)-A016777(n))` -/
def P9686427326905266161.Spec : Prop :=
  ∀ n, P9686427326905266161.a n = A176022 (n + 1)

end A176022

/-!
# A176025: Series reversion of eta(-x) - 1.

The programs for A176025, there is no canonical definition to state claims against.
-/

/-! ## A176025.P822513640233816615

`round(round(A069059(A000984(n))/3)/3)`
-/

namespace A176025.P822513640233816615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A069059 (A000984 n).toNat : ℚ) / 3) : ℚ) / 3)

end

end A176025.P822513640233816615

/-! ## A176025.P3532973189879201587

`A046080(A002868(n))+A003430(n)`
-/

namespace A176025.P3532973189879201587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A002868 n).toNat + A003430 n

end

end A176025.P3532973189879201587

/-! ## A176025.P14052925911964583362

`A056558(A090338(n))+A003430(n)`
-/

namespace A176025.P14052925911964583362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A090338 n).toNat + A003430 n

end

end A176025.P14052925911964583362

/-! ## A176025.P1537203662183905901

`A008615(A179744(n)+A000984(n))`
-/

namespace A176025.P1537203662183905901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A179744 n + A000984 n).toNat

end

end A176025.P1537203662183905901

/-!
# A176026: Bisection of A046125.

The programs for A176026, there is no canonical definition to state claims against.
-/

/-! ## A176026.P8784658054688039638

`A046125(2*(n+1))`
-/

namespace A176026.P8784658054688039638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046125 (2 * (n + 1))

end

end A176026.P8784658054688039638

/-! ## A176026.P16674994178918372981

`root(A046125(n+2+n), 2)²`
-/

namespace A176026.P16674994178918372981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A046125 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A176026.P16674994178918372981

/-! ## A176026.P2094861374813474640

`A000027(A046125(n+2+n))`
-/

namespace A176026.P2094861374813474640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A046125 (n + 2 + n)).toNat

end

end A176026.P2094861374813474640

/-! ## A176026.P15822959997619806426

`A046125(n+2+n)/A007318(∑[n])`
-/

namespace A176026.P15822959997619806426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046125 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A176026.P15822959997619806426

/-! ## A176026.P7453781959641180600

`A046125(n+2+n)/A135225(∑[n])`
-/

namespace A176026.P7453781959641180600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046125 (n + 2 + n) : ℚ) / (A135225 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A176026.P7453781959641180600

/-! ## A176026.P4399678610598497806

`A046125(n+2+n)%A000108(n+7)`
-/

namespace A176026.P4399678610598497806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046125 (n + 2 + n)) (A000108 (n + 7))

end

end A176026.P4399678610598497806

/-!
# A176027: Binomial transform of A005563.

The programs for A176027, the canonical program `A176027.P5107042245820206540` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176027 has offset 0).

The definition of A176027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176027.P6525418124317497287

`2^(n-2)*n*(5+n)`
-/

namespace A176027.P6525418124317497287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (5 + n : ℚ)

end

end A176027.P6525418124317497287

namespace A176027

/-- `2^(n-2)*n*(5+n)` -/
def P6525418124317497287.Spec : Prop :=
  ∀ n, P6525418124317497287.a n = (A176027 n : ℚ)

end A176027

/-! ## A176027.P5107042245820206540

`A001793(n+1)-2^n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176027

/-- `A001793(n+1)-2^n` -/
def P5107042245820206540.Spec : Prop :=
  ∀ n, P5107042245820206540.a n = A176027 n

theorem P5107042245820206540.correct : P5107042245820206540.Spec := by
  intro n
  simp only [A176027]

end A176027

/-! ## A176027.P4612106982334563612

`2*a(n-1)+A001792(n)` with `a(0)=0`
-/

namespace A176027.P4612106982334563612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A001792 n

end

end A176027.P4612106982334563612

namespace A176027

/-- `2*a(n-1)+A001792(n)` -/
def P4612106982334563612.Spec : Prop :=
  ∀ n, P4612106982334563612.a n = A176027 n

end A176027

/-! ## A176027.P13063507225386395260

`A127276(n)-A127276(n+1)`
-/

namespace A176027.P13063507225386395260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127276 n - A127276 (n + 1)

end

end A176027.P13063507225386395260

namespace A176027

/-- `A127276(n)-A127276(n+1)` -/
def P13063507225386395260.Spec : Prop :=
  ∀ n, P13063507225386395260.a n = A176027 n

end A176027

/-! ## A176027.P1898199976212749552

`∑[A084266(n)]-1`
-/

namespace A176027.P1898199976212749552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A176027.P1898199976212749552

namespace A176027

/-- `∑[A084266(n)]-1` -/
def P1898199976212749552.Spec : Prop :=
  ∀ n, P1898199976212749552.a n = A176027 n

end A176027

/-! ## A176027.P12318810857525509638

`abs(n*A081037(n+1))`
-/

namespace A176027.P12318810857525509638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A081037 (n + 1)|

end

end A176027.P12318810857525509638

namespace A176027

/-- `abs(n*A081037(n+1))` -/
def P12318810857525509638.Spec : Prop :=
  ∀ n, P12318810857525509638.a n = A176027 n

end A176027

/-! ## A176027.P3850961776201276043

`A084264(n+1)-2^(n+1)`
-/

namespace A176027.P3850961776201276043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A176027.P3850961776201276043

namespace A176027

/-- `A084264(n+1)-2^(n+1)` -/
def P3850961776201276043.Spec : Prop :=
  ∀ n, P3850961776201276043.a n = A176027 n

end A176027

/-! ## A176027.P4609333297426811771

`A036289(n)+A001788(n)`
-/

namespace A176027.P4609333297426811771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A001788 n

end

end A176027.P4609333297426811771

namespace A176027

/-- `A036289(n)+A001788(n)` -/
def P4609333297426811771.Spec : Prop :=
  ∀ n, P4609333297426811771.a n = A176027 n

end A176027

/-! ## A176027.P17321701817720349199

`∑[A084851(n)]-A000079(n)`
-/

namespace A176027.P17321701817720349199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000079 n

end

end A176027.P17321701817720349199

namespace A176027

/-- `∑[A084851(n)]-A000079(n)` -/
def P17321701817720349199.Spec : Prop :=
  ∀ n, P17321701817720349199.a n = A176027 n

end A176027

/-! ## A176027.P16118903333460786566

`A178987(n)+A058922(n+1)`
-/

namespace A176027.P16118903333460786566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A058922 (n + 1)

end

end A176027.P16118903333460786566

namespace A176027

/-- `A178987(n)+A058922(n+1)` -/
def P16118903333460786566.Spec : Prop :=
  ∀ n, P16118903333460786566.a n = A176027 n

end A176027

/-! ## A176027.P15613198784386680017

`A070050(n+1)-A153894(n)`
-/

namespace A176027.P15613198784386680017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070050 (n + 1) - A153894 n

end

end A176027.P15613198784386680017

namespace A176027

/-- `A070050(n+1)-A153894(n)` -/
def P15613198784386680017.Spec : Prop :=
  ∀ n, P15613198784386680017.a n = A176027 n

end A176027

/-! ## A176027.P2610410249485031421

`A104270(n+1)-A159964(n)`
-/

namespace A176027.P2610410249485031421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) - A159964 n

end

end A176027.P2610410249485031421

namespace A176027

/-- `A104270(n+1)-A159964(n)` -/
def P2610410249485031421.Spec : Prop :=
  ∀ n, P2610410249485031421.a n = A176027 n

end A176027

/-! ## A176027.P8331264150691437211

`A178987(n)-A159964(n+1)`
-/

namespace A176027.P8331264150691437211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n - A159964 (n + 1)

end

end A176027.P8331264150691437211

namespace A176027

/-- `A178987(n)-A159964(n+1)` -/
def P8331264150691437211.Spec : Prop :=
  ∀ n, P8331264150691437211.a n = A176027 n

end A176027

/-! ## A176027.P11981682474672759817

`A002064(n)+A048506(n)-2`
-/

namespace A176027.P11981682474672759817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n + (A048506 n - 2)

end

end A176027.P11981682474672759817

namespace A176027

/-- `A002064(n)+A048506(n)-2` -/
def P11981682474672759817.Spec : Prop :=
  ∀ n, P11981682474672759817.a n = A176027 n

end A176027

/-! ## A176027.P18302335246587617188

`A001788(n)+2*A001787(n)`
-/

namespace A176027.P18302335246587617188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + 2 * A001787 n

end

end A176027.P18302335246587617188

namespace A176027

/-- `A001788(n)+2*A001787(n)` -/
def P18302335246587617188.Spec : Prop :=
  ∀ n, P18302335246587617188.a n = A176027 n

end A176027

/-! ## A176027.P17258635114821394415

`A178987(n)+2*A036289(n)`
-/

namespace A176027.P17258635114821394415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + 2 * A036289 n

end

end A176027.P17258635114821394415

namespace A176027

/-- `A178987(n)+2*A036289(n)` -/
def P17258635114821394415.Spec : Prop :=
  ∀ n, P17258635114821394415.a n = A176027 n

end A176027

/-! ## A176027.P1725709695362952108

`A001788(n)+n*A000079(n)`
-/

namespace A176027.P1725709695362952108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (n : ℤ) * A000079 n

end

end A176027.P1725709695362952108

namespace A176027

/-- `A001788(n)+n*A000079(n)` -/
def P1725709695362952108.Spec : Prop :=
  ∀ n, P1725709695362952108.a n = A176027 n

end A176027

/-! ## A176027.P9709783198602816278

`A001815(n)+n*A003945(n)`
-/

namespace A176027.P9709783198602816278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (n : ℤ) * A003945 n

end

end A176027.P9709783198602816278

namespace A176027

/-- `A001815(n)+n*A003945(n)` -/
def P9709783198602816278.Spec : Prop :=
  ∀ n, P9709783198602816278.a n = A176027 n

end A176027

/-! ## A176027.P2055149206918803

`A001787(n)+n*A045623(n)`
-/

namespace A176027.P2055149206918803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (n : ℤ) * A045623 n

end

end A176027.P2055149206918803

namespace A176027

/-- `A001787(n)+n*A045623(n)` -/
def P2055149206918803.Spec : Prop :=
  ∀ n, P2055149206918803.a n = A176027 n

end A176027

/-! ## A176027.P16758482219535645126

`A057711(n)+n*A131352(n)`
-/

namespace A176027.P16758482219535645126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + (n : ℤ) * A131352 n

end

end A176027.P16758482219535645126

namespace A176027

/-- `A057711(n)+n*A131352(n)` -/
def P16758482219535645126.Spec : Prop :=
  ∀ n, P16758482219535645126.a n = A176027 n

end A176027

/-!
# A176028: The digit leading in the digits-of-Pi race after n decimal digits.

The programs for A176028, there is no canonical definition to state claims against.
-/

/-! ## A176028.P17783972458930985607

`A096567(∑[A260323(n+1)%2])`
-/

namespace A176028.P17783972458930985607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260323 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096567 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176028.P17783972458930985607

/-! ## A176028.P5164161692866123616

`A340236(∑[char[∑[n]]]²)%6`
-/

namespace A176028.P5164161692866123616
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340236 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)) 6

end

end A176028.P5164161692866123616

/-! ## A176028.P7569631260575409181

`A023511(2^A108037(n))`
-/

namespace A176028.P7569631260575409181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A108037 n : ℤ))).toNat

end

end A176028.P7569631260575409181

/-! ## A176028.P795288158763969846

`A046933(A046956(∑[char[∑[n]]]))`
-/

namespace A176028.P795288158763969846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A046956 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A176028.P795288158763969846

/-! ## A176028.P14879754666964300812

`A035210(A000032(comp[∑[n]]-n)²)`
-/

namespace A176028.P14879754666964300812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035210 (A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) ^ 2).toNat

end

end A176028.P14879754666964300812

/-!
# A176029: a(n)= n^Omega(n).

The programs for A176029, the canonical program `A176029.P14526504274877300695` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176029 has offset 1).

The definition of A176029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176029.P14526504274877300695

`(n+1)^A001222(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176029

/-- `(n+1)^A001222(n+1)` -/
def P14526504274877300695.Spec : Prop :=
  ∀ n, P14526504274877300695.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P5268301335131809614

`(n+1)^∑{e}[n+1, #]`
-/

namespace A176029.P5268301335131809614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A176029.P5268301335131809614

namespace A176029

/-- `(n+1)^∑{e}[n+1, #]` -/
def P5268301335131809614.Spec : Prop :=
  ∀ n, (P5268301335131809614.a n : ℤ) = A176029 (n + 1)

end A176029

/-! ## A176029.P14841128530800346992

`∏{e}[n+1, (n+1)^#]`
-/

namespace A176029.P14841128530800346992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ Nat.factorization (f1 n) p

end

end A176029.P14841128530800346992

namespace A176029

/-- `∏{e}[n+1, (n+1)^#]` -/
def P14841128530800346992.Spec : Prop :=
  ∀ n, (P14841128530800346992.a n : ℤ) = A176029 (n + 1)

end A176029

/-! ## A176029.P12014266164880048911

`∏{e}[n+1, root(n+1, 2/#)]²`
-/

namespace A176029.P12014266164880048911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℝ) ^ (1 / (2 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) ^ 2

end

end A176029.P12014266164880048911

namespace A176029

/-- `∏{e}[n+1, root(n+1, 2/#)]²` -/
def P12014266164880048911.Spec : Prop :=
  ∀ n, P12014266164880048911.a n = (A176029 (n + 1) : ℝ)

end A176029

/-! ## A176029.P10398447555386950504

`(n+1)^∑{p}[n+1, val(n+1, #)]`
-/

namespace A176029.P10398447555386950504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A176029.P10398447555386950504

namespace A176029

/-- `(n+1)^∑{p}[n+1, val(n+1, #)]` -/
def P10398447555386950504.Spec : Prop :=
  ∀ n, (P10398447555386950504.a n : ℤ) = A176029 (n + 1)

end A176029

/-! ## A176029.P5481015064580701969

`∏{p}[n+1, (n+1)^val(n+1, #)]`
-/

namespace A176029.P5481015064580701969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ SequenceMachineLib.valuation (n + 1) p

end

end A176029.P5481015064580701969

namespace A176029

/-- `∏{p}[n+1, (n+1)^val(n+1, #)]` -/
def P5481015064580701969.Spec : Prop :=
  ∀ n, (P5481015064580701969.a n : ℤ) = A176029 (n + 1)

end A176029

/-! ## A176029.P14925879402024427579

`(n+1)^Δ[A022559(n)]`
-/

namespace A176029.P14925879402024427579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A176029.P14925879402024427579

namespace A176029

/-- `(n+1)^Δ[A022559(n)]` -/
def P14925879402024427579.Spec : Prop :=
  ∀ n, P14925879402024427579.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P893248885686488476

`(n+1)*A072195(n+1)`
-/

namespace A176029.P893248885686488476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072195 (n + 1)

end

end A176029.P893248885686488476

namespace A176029

/-- `(n+1)*A072195(n+1)` -/
def P893248885686488476.Spec : Prop :=
  ∀ n, P893248885686488476.a n = A176029 (n + 1)

end A176029

/-! ## A176029.P7656073670178120297

`(n+1)^A086436(n+1)`
-/

namespace A176029.P7656073670178120297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A176029.P7656073670178120297

namespace A176029

/-- `(n+1)^A086436(n+1)` -/
def P7656073670178120297.Spec : Prop :=
  ∀ n, P7656073670178120297.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P15515090850097138588

`sqrt(n+1)^A255201(n+1)`
-/

namespace A176029.P15515090850097138588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A255201 (n + 1) : ℤ)

end

end A176029.P15515090850097138588

namespace A176029

/-- `sqrt(n+1)^A255201(n+1)` -/
def P15515090850097138588.Spec : Prop :=
  ∀ n, P15515090850097138588.a n = (A176029 (n + 1) : ℝ)

end A176029

/-! ## A176029.P17326782502125606942

`(n+1)^(A252736(n+1)+1)`
-/

namespace A176029.P17326782502125606942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A252736 (n + 1) + 1 : ℤ)

end

end A176029.P17326782502125606942

namespace A176029

/-- `(n+1)^(A252736(n+1)+1)` -/
def P17326782502125606942.Spec : Prop :=
  ∀ n, P17326782502125606942.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P3949739269706282682

`(n+1)^(A073093(n+1)-1)`
-/

namespace A176029.P3949739269706282682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A073093 (n + 1) - 1 : ℤ)

end

end A176029.P3949739269706282682

namespace A176029

/-- `(n+1)^(A073093(n+1)-1)` -/
def P3949739269706282682.Spec : Prop :=
  ∀ n, P3949739269706282682.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P7898058234834059234

`(n+1)^val(A165825(n+1), 4)`
-/

namespace A176029.P7898058234834059234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A176029.P7898058234834059234

namespace A176029

/-- `(n+1)^val(A165825(n+1), 4)` -/
def P7898058234834059234.Spec : Prop :=
  ∀ n, (P7898058234834059234.a n : ℤ) = A176029 (n + 1)

end A176029

/-! ## A176029.P15842245057572295397

`(n+1)^(n-A075795(n+1))`
-/

namespace A176029.P15842245057572295397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - A075795 (n + 1) : ℤ)

end

end A176029.P15842245057572295397

namespace A176029

/-- `(n+1)^(n-A075795(n+1))` -/
def P15842245057572295397.Spec : Prop :=
  ∀ n, P15842245057572295397.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P4315256785465563055

`(n+1)^(A222312(n+1)-n)`
-/

namespace A176029.P4315256785465563055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A222312 (n + 1) - (n : ℤ) : ℤ)

end

end A176029.P4315256785465563055

namespace A176029

/-- `(n+1)^(A222312(n+1)-n)` -/
def P4315256785465563055.Spec : Prop :=
  ∀ n, P4315256785465563055.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P12989163358804477182

`(n+1)^(A064800(n+1)-(n+1))`
-/

namespace A176029.P12989163358804477182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A064800 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A176029.P12989163358804477182

namespace A176029

/-- `(n+1)^(A064800(n+1)-(n+1))` -/
def P12989163358804477182.Spec : Prop :=
  ∀ n, P12989163358804477182.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P14684505583593681648

`(n+1)^(n+1-A069345(n+1))`
-/

namespace A176029.P14684505583593681648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 1 : ℤ) - A069345 (n + 1) : ℤ)

end

end A176029.P14684505583593681648

namespace A176029

/-- `(n+1)^(n+1-A069345(n+1))` -/
def P14684505583593681648.Spec : Prop :=
  ∀ n, P14684505583593681648.a n = (A176029 (n + 1) : ℚ)

end A176029

/-! ## A176029.P14992759955057521913

`(n+1)^(A066959(n+1)/(n+1))`
-/

namespace A176029.P14992759955057521913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A066959 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A176029.P14992759955057521913

namespace A176029

/-- `(n+1)^(A066959(n+1)/(n+1))` -/
def P14992759955057521913.Spec : Prop :=
  ∀ n, P14992759955057521913.a n = (A176029 (n + 1) : ℝ)

end A176029

/-! ## A176029.P2502458548799165995

`A007947(n+1)*A363923(n+1)`
-/

namespace A176029.P2502458548799165995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A363923 (n + 1)

end

end A176029.P2502458548799165995

namespace A176029

/-- `A007947(n+1)*A363923(n+1)` -/
def P2502458548799165995.Spec : Prop :=
  ∀ n, P2502458548799165995.a n = A176029 (n + 1)

end A176029

/-! ## A176029.P4286956352049328623

`A062509(n+1)*A363919(n+1)`
-/

namespace A176029.P4286956352049328623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1) * A363919 (n + 1)

end

end A176029.P4286956352049328623

namespace A176029

/-- `A062509(n+1)*A363919(n+1)` -/
def P4286956352049328623.Spec : Prop :=
  ∀ n, P4286956352049328623.a n = A176029 (n + 1)

end A176029

/-!
# A176030: 

The programs for A176030, there is no canonical definition to state claims against.
-/

/-! ## A176030.P18209354136507052125

`(n+1)^∑{d}[n+1, #²]`
-/

namespace A176030.P18209354136507052125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A176030.P18209354136507052125

/-! ## A176030.P2001655491191358434

`∏{d}[n+1, (n+1)^#²]`
-/

namespace A176030.P2001655491191358434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (n + 1) ^ d ^ 2

end

end A176030.P2001655491191358434

/-! ## A176030.P5278952787810915344

`root(n+1, 1/∑{d}[n+1, #²])`
-/

namespace A176030.P5278952787810915344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (1 / ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) : ℝ))

end

end A176030.P5278952787810915344

/-! ## A176030.P11149469057690049143

`(n+1)^A001157(n+1)`
-/

namespace A176030.P11149469057690049143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001157 (n + 1) : ℤ)

end

end A176030.P11149469057690049143

/-! ## A176030.P9679188195744726496

`(n+1)^(A328259(n+1)/(n+1))`
-/

namespace A176030.P9679188195744726496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A328259 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A176030.P9679188195744726496

/-!
# A176031: a(n) = n^rad(n).

The programs for A176031, the canonical program `A176031.P11873302326825557356` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176031 has offset 1).

The definition of A176031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176031.P11873302326825557356

`(n+1)^A007947(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176031

/-- `(n+1)^A007947(n+1)` -/
def P11873302326825557356.Spec : Prop :=
  ∀ n, P11873302326825557356.a n = (A176031 (n + 1) : ℚ)

end A176031

/-! ## A176031.P4822338722905276130

`(n+1)^∏{p}[n+1, #]`
-/

namespace A176031.P4822338722905276130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A176031.P4822338722905276130

namespace A176031

/-- `(n+1)^∏{p}[n+1, #]` -/
def P4822338722905276130.Spec : Prop :=
  ∀ n, (P4822338722905276130.a n : ℤ) = A176031 (n + 1)

end A176031

/-! ## A176031.P8487620384741528772

`root(n+1, 1/∏{p}[n+1, #])`
-/

namespace A176031.P8487620384741528772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (1 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))

end

end A176031.P8487620384741528772

namespace A176031

/-- `root(n+1, 1/∏{p}[n+1, #])` -/
def P8487620384741528772.Spec : Prop :=
  ∀ n, P8487620384741528772.a n = (A176031 (n + 1) : ℝ)

end A176031

/-! ## A176031.P6618617740905583222

`(n+1)^exp(∑{p}[n+1, log(#)])`
-/

namespace A176031.P6618617740905583222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))

end

end A176031.P6618617740905583222

namespace A176031

/-- `(n+1)^exp(∑{p}[n+1, log(#)])` -/
def P6618617740905583222.Spec : Prop :=
  ∀ n, P6618617740905583222.a n = (A176031 (n + 1) : ℝ)

end A176031

/-! ## A176031.P15673596106240948627

`(n+1)^2^∑{p}[n+1, log2(#)]`
-/

namespace A176031.P15673596106240948627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))

end

end A176031.P15673596106240948627

namespace A176031

/-- `(n+1)^2^∑{p}[n+1, log2(#)]` -/
def P15673596106240948627.Spec : Prop :=
  ∀ n, P15673596106240948627.a n = (A176031 (n + 1) : ℝ)

end A176031

/-! ## A176031.P10833061690753794436

`(n+1)^A015052(n+1)`
-/

namespace A176031.P10833061690753794436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A015052 (n + 1) : ℤ)

end

end A176031.P10833061690753794436

namespace A176031

/-- `(n+1)^A015052(n+1)` -/
def P10833061690753794436.Spec : Prop :=
  ∀ n, P10833061690753794436.a n = (A176031 (n + 1) : ℚ)

end A176031

/-! ## A176031.P13626168160953226274

`(n+1)^A015053(n+1)`
-/

namespace A176031.P13626168160953226274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A015053 (n + 1) : ℤ)

end

end A176031.P13626168160953226274

namespace A176031

/-- `(n+1)^A015053(n+1)` -/
def P13626168160953226274.Spec : Prop :=
  ∀ n, P13626168160953226274.a n = (A176031 (n + 1) : ℚ)

end A176031

/-! ## A176031.P11721713723540898020

`(n+1)^abs(A347230(n+1))`
-/

namespace A176031.P11721713723540898020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (|A347230 (n + 1)| : ℤ)

end

end A176031.P11721713723540898020

namespace A176031

/-- `(n+1)^abs(A347230(n+1))` -/
def P11721713723540898020.Spec : Prop :=
  ∀ n, P11721713723540898020.a n = (A176031 (n + 1) : ℚ)

end A176031

/-! ## A176031.P12806936532296063976

`(n+1)^A071773((n+1)²)`
-/

namespace A176031.P12806936532296063976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A071773 ((n + 1) ^ 2) : ℤ)

end

end A176031.P12806936532296063976

namespace A176031

/-- `(n+1)^A071773((n+1)²)` -/
def P12806936532296063976.Spec : Prop :=
  ∀ n, P12806936532296063976.a n = (A176031 (n + 1) : ℚ)

end A176031

/-! ## A176031.P16806702016676220859

`(n+1)^A089384((n+1)²)`
-/

namespace A176031.P16806702016676220859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A089384 ((n + 1) ^ 2) : ℤ)

end

end A176031.P16806702016676220859

namespace A176031

/-- `(n+1)^A089384((n+1)²)` -/
def P16806702016676220859.Spec : Prop :=
  ∀ n, P16806702016676220859.a n = (A176031 (n + 1) : ℚ)

end A176031

/-!
# A176032: Absolute values of A106044-A056892.

The programs for A176032, there is no canonical definition to state claims against.
-/

/-! ## A176032.P9831969073954210804

`A088226(A001749(n+1))`
-/

namespace A176032.P9831969073954210804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A001749 (n + 1)).toNat

end

end A176032.P9831969073954210804

/-! ## A176032.P5462038897266265007

`A088226(A062876(n+1))`
-/

namespace A176032.P5462038897266265007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A062876 (n + 1)).toNat

end

end A176032.P5462038897266265007

/-! ## A176032.P3554857451241852263

`A347026(A000040(n+1))`
-/

namespace A176032.P3554857451241852263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A000040 (n + 1)).toNat

end

end A176032.P3554857451241852263

/-! ## A176032.P16280032521680426994

`A347026(A006005(n+1))`
-/

namespace A176032.P16280032521680426994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A006005 (n + 1)).toNat

end

end A176032.P16280032521680426994

/-! ## A176032.P7391064403410145252

`A157454(A229067(n+1))`
-/

namespace A176032.P7391064403410145252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (A229067 (n + 1)).toNat

end

end A176032.P7391064403410145252

/-! ## A176032.P10277489734581444714

`A347026(A008578(n+2))`
-/

namespace A176032.P10277489734581444714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A008578 (n + 2)).toNat

end

end A176032.P10277489734581444714

/-! ## A176032.P3929139491679295260

`A347026(A075643(n+2))`
-/

namespace A176032.P3929139491679295260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A075643 (n + 2)).toNat

end

end A176032.P3929139491679295260

/-! ## A176032.P17728986358256791812

`A347026(A171525(n+2))`
-/

namespace A176032.P17728986358256791812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A171525 (n + 2)).toNat

end

end A176032.P17728986358256791812

/-! ## A176032.P12009794947198938779

`A347026(A182986(n+2))`
-/

namespace A176032.P12009794947198938779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A182986 (n + 2)).toNat

end

end A176032.P12009794947198938779

/-!
# A176033: Numbers k such that 2^(2k-1) == 2 (mod 2k) and such that 2^(k-1) != 1 (mod k).

The programs for A176033, there is no canonical definition to state claims against.
-/

/-! ## A176033.P6687113070918656806

`A005408(eq[4, A266697(n)])`
-/

namespace A176033.P6687113070918656806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176033.P6687113070918656806

/-! ## A176033.P447445751458668685

`A144396(eq[4, A266697(n)])`
-/

namespace A176033.P447445751458668685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176033.P447445751458668685

/-! ## A176033.P12690921979040574375

`A160144(eq[4, A266697(n)])`
-/

namespace A176033.P12690921979040574375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176033.P12690921979040574375

/-! ## A176033.P17836408435624786072

`A237292(eq[4, A266697(n)])`
-/

namespace A176033.P17836408435624786072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176033.P17836408435624786072

/-! ## A176033.P18422664643523126040

`A267872(eq[4, A266697(n)])`
-/

namespace A176033.P18422664643523126040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176033.P18422664643523126040

/-!
# A176034: Difference between product of two distinct primes and next perfect square.

The programs for A176034, there is no canonical definition to state claims against.
-/

/-! ## A176034.P2572071485852337855

`A068527(A006881(n+1))`
-/

namespace A176034.P2572071485852337855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A006881 (n + 1)).toNat

end

end A176034.P2572071485852337855

/-! ## A176034.P14825842370112328302

`A068527(eq[2, A066882(n)])`
-/

namespace A176034.P14825842370112328302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176034.P14825842370112328302

/-! ## A176034.P18309670859146603431

`A080883(eq[2, A066882(n)])`
-/

namespace A176034.P18309670859146603431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176034.P18309670859146603431

/-! ## A176034.P9192660700852944859

`A068527(eq[2, A286852(n)])`
-/

namespace A176034.P9192660700852944859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176034.P9192660700852944859

/-! ## A176034.P4333436902500362579

`A068527(eq[2, A293813(n)])`
-/

namespace A176034.P4333436902500362579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176034.P4333436902500362579

/-! ## A176034.P17122595850216912944

`A068527(eq[A008683(n+1)+1, A001222(n+1)]+1)`
-/

namespace A176034.P17122595850216912944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A176034.P17122595850216912944

/-! ## A176034.P8606687216793570407

`A080883(eq[A008683(n+1)+1, A001222(n+1)]+1)`
-/

namespace A176034.P8606687216793570407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A176034.P8606687216793570407

/-! ## A176034.P14112359824928861199

`A068527(eq[A001222(n+1)+2, A000005(n+1)]+1)`
-/

namespace A176034.P14112359824928861199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A176034.P14112359824928861199

/-! ## A176034.P3127985338923379876

`A080883(eq[A001222(n+1)+2, A000005(n+1)]+1)`
-/

namespace A176034.P3127985338923379876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A176034.P3127985338923379876

/-! ## A176034.P5572438995311084982

`A080883(eq[A001221(n+1)/2, A008683(n+1)]+1)`
-/

namespace A176034.P5572438995311084982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1)

end

end A176034.P5572438995311084982

/-!
# A176035: Difference between product of two distinct primes and previous perfect square.

The programs for A176035, the canonical program `A176035.P8435292185708419900` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176035 has offset 1).

The definition of A176035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176035.P8435292185708419900

`A053186(A006881(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176035

/-- `A053186(A006881(n+1))` -/
def P8435292185708419900.Spec : Prop :=
  ∀ n, P8435292185708419900.a n = A176035 (n + 1)

theorem P8435292185708419900.correct : P8435292185708419900.Spec := by
  intro n
  simp only [A176035, Nat.add_sub_cancel]

end A176035

/-! ## A176035.P1957469199651312202

`A053186(eq[2, A066882(n)])`
-/

namespace A176035.P1957469199651312202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176035.P1957469199651312202

namespace A176035

/-- `A053186(eq[2, A066882(n)])` -/
def P1957469199651312202.Spec : Prop :=
  ∀ n, P1957469199651312202.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P5309851562026999482

`A071797(eq[2, A066882(n)])`
-/

namespace A176035.P5309851562026999482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176035.P5309851562026999482

namespace A176035

/-- `A071797(eq[2, A066882(n)])` -/
def P5309851562026999482.Spec : Prop :=
  ∀ n, P5309851562026999482.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P8608350282888493006

`A071797(eq[2, A293813(n)])`
-/

namespace A176035.P8608350282888493006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176035.P8608350282888493006

namespace A176035

/-- `A071797(eq[2, A293813(n)])` -/
def P8608350282888493006.Spec : Prop :=
  ∀ n, P8608350282888493006.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P16919657810667013665

`A053186(eq[3, A074206(n)])`
-/

namespace A176035.P16919657810667013665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176035.P16919657810667013665

namespace A176035

/-- `A053186(eq[3, A074206(n)])` -/
def P16919657810667013665.Spec : Prop :=
  ∀ n, P16919657810667013665.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P15602656099787395351

`A071797(eq[3, A211110(n)])`
-/

namespace A176035.P15602656099787395351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176035.P15602656099787395351

namespace A176035

/-- `A071797(eq[3, A211110(n)])` -/
def P15602656099787395351.Spec : Prop :=
  ∀ n, P15602656099787395351.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P11632112153394746436

`A053186(eq[A008683(n+1)+1, A001222(n+1)]+1)`
-/

namespace A176035.P11632112153394746436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A176035.P11632112153394746436

namespace A176035

/-- `A053186(eq[A008683(n+1)+1, A001222(n+1)]+1)` -/
def P11632112153394746436.Spec : Prop :=
  ∀ n, P11632112153394746436.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P83646236811360113

`A071797(eq[A008683(n+1)+1, A001222(n+1)]+1)`
-/

namespace A176035.P83646236811360113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A176035.P83646236811360113

namespace A176035

/-- `A071797(eq[A008683(n+1)+1, A001222(n+1)]+1)` -/
def P83646236811360113.Spec : Prop :=
  ∀ n, P83646236811360113.a n = A176035 (n + 1)

end A176035

/-! ## A176035.P11386782704542841346

`A071797(eq[2, A286852(n)])`
-/

namespace A176035.P11386782704542841346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176035.P11386782704542841346

namespace A176035

/-- `A071797(eq[2, A286852(n)])` -/
def P11386782704542841346.Spec : Prop :=
  ∀ n, P11386782704542841346.a n = A176035 (n + 1)

end A176035

/-!
# A176036: Absolute values of A176035(n)-A176034(n).

The programs for A176036, there is no canonical definition to state claims against.
-/

/-! ## A176036.P13642377386955680875

`A347026(A006881(n+1))`
-/

namespace A176036.P13642377386955680875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A006881 (n + 1)).toNat

end

end A176036.P13642377386955680875

/-! ## A176036.P16114043631534888646

`A088226(4*A006881(n+1))`
-/

namespace A176036.P16114043631534888646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * A006881 (n + 1)).toNat

end

end A176036.P16114043631534888646

/-! ## A176036.P10675440903217188276

`A088226(4*eq[4, A077462(n)])`
-/

namespace A176036.P10675440903217188276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176036.P10675440903217188276

/-! ## A176036.P17866454750056603771

`A088226(4*sqrt(A085986(n+1)))`
-/

namespace A176036.P17866454750056603771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.roundAway (4 * Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A176036.P17866454750056603771

/-! ## A176036.P17080586131973091975

`or(1, A253580(eq[5, A051707(n+1)]))`
-/

namespace A176036.P17080586131973091975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A176036.P17080586131973091975

/-! ## A176036.P17392428699475657845

`A088226(4*(eq[2, A051709(n+1)]+1))`
-/

namespace A176036.P17392428699475657845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A176036.P17392428699475657845

/-! ## A176036.P836872289640451451

`A088226(4*A070647(n+1)*A096916(n+1))`
-/

namespace A176036.P836872289640451451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * (A070647 (n + 1) * A096916 (n + 1))).toNat

end

end A176036.P836872289640451451

/-! ## A176036.P3294747903261166210

`A088226(4*(eq[A008683(n+1)+1, A001222(n+1)]+1))`
-/

namespace A176036.P3294747903261166210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1))

end

end A176036.P3294747903261166210

/-! ## A176036.P2674045923426600296

`A088226(4*(eq[A001222(n+1)+2, A000005(n+1)]+1))`
-/

namespace A176036.P2674045923426600296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (4 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1))

end

end A176036.P2674045923426600296

/-! ## A176036.P1823796876867614311

`abs(A176034(n+1)-A176035(n+1))`
-/

namespace A176036.P1823796876867614311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176034 (n + 1) - A176035 (n + 1)|

end

end A176036.P1823796876867614311

/-!
# A176037: a(n) = n!*(n+1)!*(n+2)!.

The programs for A176037, the canonical program `A176037.P3084850495619571773` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176037 has offset 0).

The definition of A176037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+1)!*(n+2)!` (program `A176037.P3084850495619571773`, by `A176037.P3084850495619571773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176037.P3084850495619571773

`n!*(n+1)!*(n+2)!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176037

/-- `n!*(n+1)!*(n+2)!` -/
def P3084850495619571773.Spec : Prop :=
  ∀ n, (P3084850495619571773.a n : ℤ) = A176037 n

theorem P3084850495619571773.correct : P3084850495619571773.Spec := by
  intro n
  simp only [A176037]

end A176037

/-! ## A176037.P14601422480329213845

`2*A090443(n)`
-/

namespace A176037.P14601422480329213845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090443 n

end

end A176037.P14601422480329213845

namespace A176037

/-- `2*A090443(n)` -/
def P14601422480329213845.Spec : Prop :=
  ∀ n, P14601422480329213845.a n = A176037 n

end A176037

/-! ## A176037.P13666126449910995335

`A010790(n)*A000142(n+2)`
-/

namespace A176037.P13666126449910995335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010790 n * A000142 (n + 2)

end

end A176037.P13666126449910995335

namespace A176037

/-- `A010790(n)*A000142(n+2)` -/
def P13666126449910995335.Spec : Prop :=
  ∀ n, P13666126449910995335.a n = A176037 n

theorem P13666126449910995335.correct : P13666126449910995335.Spec := by
  intro n
  simp only [A176037, Nat.add_sub_cancel, A176037.P13666126449910995335.a, A176037.P3084850495619571773.a, A000142, A000142.P3272619076580183195.a, A010790, A010790.P4807764122295510045.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176037

/-! ## A176037.P8603987001025917522

`A000142(n)*A000142(n+1)*A000142(n+2)`
-/

namespace A176037.P8603987001025917522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000142 (n + 1) * A000142 (n + 2)

end

end A176037.P8603987001025917522

namespace A176037

/-- `A000142(n)*A000142(n+1)*A000142(n+2)` -/
def P8603987001025917522.Spec : Prop :=
  ∀ n, P8603987001025917522.a n = A176037 n

theorem P8603987001025917522.correct : P8603987001025917522.Spec := by
  intro n
  simp only [A176037, Nat.add_sub_cancel, A176037.P8603987001025917522.a, A176037.P3084850495619571773.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176037

/-! ## A176037.P17318281948262116881

`n!*∏[∑[2*(n+1)]]`
-/

namespace A176037.P17318281948262116881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A176037.P17318281948262116881

namespace A176037

/-- `n!*∏[∑[2*(n+1)]]` -/
def P17318281948262116881.Spec : Prop :=
  ∀ n, (P17318281948262116881.a n : ℤ) = A176037 n

end A176037

/-!
# A176038: Primes of the form k!*(k+1)! - 1 or k!*(k+1)! + 1.

The programs for A176038, there is no canonical definition to state claims against.
-/

/-! ## A176038.P2156237085277698700

`A115073(A001004(n))+n+1`
-/

namespace A176038.P2156237085277698700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115073 (A001004 n).toNat + (n + 1 : ℤ)

end

end A176038.P2156237085277698700

/-!
# A176039: Primitive elements of A071562.

The programs for A176039, there is no canonical definition to state claims against.
-/

/-! ## A176039.P8711727618303461835

`eq[A155998(n), A213714(A123162(n))]`
-/

namespace A176039.P8711727618303461835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A123162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176039.P8711727618303461835

/-! ## A176039.P4118528383349938549

`eq[A008550(n), A054055(A201384(n+1))]`
-/

namespace A176039.P4118528383349938549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A201384 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176039.P4118528383349938549

/-! ## A176039.P6315254733490498202

`eq[A134452(A008277(n+1)), A155998(n)]`
-/

namespace A176039.P6315254733490498202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A008277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176039.P6315254733490498202

/-! ## A176039.P7926570996650761537

`eq[A073575(A156353(n+1)), A193592(n)]`
-/

namespace A176039.P7926570996650761537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A156353 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176039.P7926570996650761537

/-! ## A176039.P18224028681448709498

`eq[A099390(n+1), A209229(A334548(n))]`
-/

namespace A176039.P18224028681448709498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A334548 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176039.P18224028681448709498

/-!
# A176040: Periodic sequence: repeat (3,1).

The programs for A176040, the canonical program `A176040.P15364412585203840205` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176040 has offset 0).

The definition of A176040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176040.P15364412585203840205

`a(n-2)` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176040

/-- `a(n-2)` -/
def P15364412585203840205.Spec : Prop :=
  ∀ n, (P15364412585203840205.a n : ℤ) = A176040 n

theorem P15364412585203840205.correct : P15364412585203840205.Spec := by
  intro n
  simp only [A176040]

end A176040

/-!
# A176041: Triangle read by rows: R(n, k) = 2^(2n - 2) mod prime(2k), 1<=k<=n.

The programs for A176041, the canonical program `A176041.P6578880447867263917` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176041 has offset 1).

The definition of A176041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*(row(n)+1)-2))%A000040(2*(col(n)+1))` (program `A176041.P6578880447867263917`, by `A176041.P6578880447867263917.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176041.P6578880447867263917

`(2^(2*(row(n)+1)-2))%A000040(2*(col(n)+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176041

/-- `(2^(2*(row(n)+1)-2))%A000040(2*(col(n)+1))` -/
def P6578880447867263917.Spec : Prop :=
  ∀ n, P6578880447867263917.a n = A176041 (n + 1)

theorem P6578880447867263917.correct : P6578880447867263917.Spec := by
  intro n
  simp only [A176041, Nat.add_sub_cancel]

end A176041

/-! ## A176041.P2329313834927815976

`A137688(n)²%A000040(2*A002260(n+1))`
-/

namespace A176041.P2329313834927815976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n ^ 2) (A000040 (2 * A002260 (n + 1)).toNat)

end

end A176041.P2329313834927815976

namespace A176041

/-- `A137688(n)²%A000040(2*A002260(n+1))` -/
def P2329313834927815976.Spec : Prop :=
  ∀ n, P2329313834927815976.a n = A176041 (n + 1)

end A176041

/-! ## A176041.P1492435816086998181

`A061142(A025635(n+1))%A031215(A002260(n+1))`
-/

namespace A176041.P1492435816086998181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061142 (A025635 (n + 1)).toNat) (A031215 (A002260 (n + 1)).toNat)

end

end A176041.P1492435816086998181

namespace A176041

/-- `A061142(A025635(n+1))%A031215(A002260(n+1))` -/
def P1492435816086998181.Spec : Prop :=
  ∀ n, P1492435816086998181.a n = A176041 (n + 1)

end A176041

/-!
# A176042: For odd n, this is the number of partitions of n*(n-1)/2 with all part sizes between 3 and n, inclusive. For even n, this is the number of partitions of n*(n-2)/2 with all part sizes between 3 and n, inclusive.

The programs for A176042, there is no canonical definition to state claims against.
-/

/-! ## A176042.P11985115863884735813

`A057893(A057864(n+1))+A000108(n)`
-/

namespace A176042.P11985115863884735813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057893 (A057864 (n + 1)).toNat + A000108 n

end

end A176042.P11985115863884735813

/-! ## A176042.P15268778439780219426

`A272371(n+1)+A171611(A153391(n))`
-/

namespace A176042.P15268778439780219426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272371 (n + 1) + A171611 (A153391 n).toNat

end

end A176042.P15268778439780219426

/-! ## A176042.P6333948266972364916

`A171611(n+1)+A171611(A153391(n))+1`
-/

namespace A176042.P6333948266972364916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (n + 1) + (A171611 (A153391 n).toNat + 1)

end

end A176042.P6333948266972364916

/-!
# A176043: a(n) = (2*n-1)*(n-1)^(n-1).

The programs for A176043, the canonical program `A176043.P1208078873004180845` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176043 has offset 0).

The definition of A176043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176043.P1208078873004180845

`(2*n-1)*(n-1)^(n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176043

/-- `(2*n-1)*(n-1)^(n-1)` -/
def P1208078873004180845.Spec : Prop :=
  ∀ n, P1208078873004180845.a n = (A176043 n : ℚ)

end A176043

/-! ## A176043.P13446627725736563955

`lcm(n-1+n, (n-1)^(n-1))`
-/

namespace A176043.P13446627725736563955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A176043.P13446627725736563955

namespace A176043

/-- `lcm(n-1+n, (n-1)^(n-1))` -/
def P13446627725736563955.Spec : Prop :=
  ∀ n, (P13446627725736563955.a n : ℤ) = A176043 n

end A176043

/-! ## A176043.P15676871394044008482

`A065440(n)+A055134(A000124(n))`
-/

namespace A176043.P15676871394044008482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 n + A055134 (A000124 n).toNat

end

end A176043.P15676871394044008482

namespace A176043

/-- `A065440(n)+A055134(A000124(n))` -/
def P15676871394044008482.Spec : Prop :=
  ∀ n, P15676871394044008482.a n = A176043 n

end A176043

/-! ## A176043.P15425850178154225244

`A055134(A000124(n))+A055134(A000217(n))`
-/

namespace A176043.P15425850178154225244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 (A000124 n).toNat + A055134 (A000217 n).toNat

end

end A176043.P15425850178154225244

namespace A176043

/-- `A055134(A000124(n))+A055134(A000217(n))` -/
def P15425850178154225244.Spec : Prop :=
  ∀ n, P15425850178154225244.a n = A176043 n

end A176043

/-! ## A176043.P1020328659200577756

`abs(A055136(A008586(∑[n])))`
-/

namespace A176043.P1020328659200577756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055136 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A176043.P1020328659200577756

namespace A176043

/-- `abs(A055136(A008586(∑[n])))` -/
def P1020328659200577756.Spec : Prop :=
  ∀ n, P1020328659200577756.a n = A176043 n

end A176043

/-!
# A176044: n-th-prime without last digit.

The programs for A176044, the canonical program `A176044.P4140518782580765565` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176044 has offset 1).

The definition of A176044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176044.P6952362687911700854

`A185322(n+1)-1`
-/

namespace A176044.P6952362687911700854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (n + 1) - 1

end

end A176044.P6952362687911700854

namespace A176044

/-- `A185322(n+1)-1` -/
def P6952362687911700854.Spec : Prop :=
  ∀ n, P6952362687911700854.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P1657318247566096369

`floor(Δ[A007504(n)/10])`
-/

namespace A176044.P1657318247566096369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A176044.P1657318247566096369

namespace A176044

/-- `floor(Δ[A007504(n)/10])` -/
def P1657318247566096369.Spec : Prop :=
  ∀ n, P1657318247566096369.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P4140518782580765565

`floor(A116572(n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176044

/-- `floor(A116572(n+1)/2)` -/
def P4140518782580765565.Spec : Prop :=
  ∀ n, P4140518782580765565.a n = A176044 (n + 1)

theorem P4140518782580765565.correct : P4140518782580765565.Spec := by
  intro n
  simp only [A176044, Nat.add_sub_cancel]

end A176044

/-! ## A176044.P5010182324920038202

`floor(A102781(n+1)/5)`
-/

namespace A176044.P5010182324920038202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102781 (n + 1) : ℚ) / 5⌋

end

end A176044.P5010182324920038202

namespace A176044

/-- `floor(A102781(n+1)/5)` -/
def P5010182324920038202.Spec : Prop :=
  ∀ n, P5010182324920038202.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P9076987320453294086

`floor(A130290(n+1)/5)`
-/

namespace A176044.P9076987320453294086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130290 (n + 1) : ℚ) / 5⌋

end

end A176044.P9076987320453294086

namespace A176044

/-- `floor(A130290(n+1)/5)` -/
def P9076987320453294086.Spec : Prop :=
  ∀ n, P9076987320453294086.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P329591746952101538

`floor(A000040(n+1)/10)`
-/

namespace A176044.P329591746952101538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 10⌋

end

end A176044.P329591746952101538

namespace A176044

/-- `floor(A000040(n+1)/10)` -/
def P329591746952101538.Spec : Prop :=
  ∀ n, P329591746952101538.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P3389006736612008361

`floor(A006005(n+1)/10)`
-/

namespace A176044.P3389006736612008361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / 10⌋

end

end A176044.P3389006736612008361

namespace A176044

/-- `floor(A006005(n+1)/10)` -/
def P3389006736612008361.Spec : Prop :=
  ∀ n, P3389006736612008361.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P9776126781773480810

`floor(A006093(n+1)/10)`
-/

namespace A176044.P9776126781773480810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / 10⌋

end

end A176044.P9776126781773480810

namespace A176044

/-- `floor(A006093(n+1)/10)` -/
def P9776126781773480810.Spec : Prop :=
  ∀ n, P9776126781773480810.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P13770560579478033701

`floor(record[A000010(n+1)/10])`
-/

namespace A176044.P13770560579478033701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A176044.P13770560579478033701

namespace A176044

/-- `floor(record[A000010(n+1)/10])` -/
def P13770560579478033701.Spec : Prop :=
  ∀ n, P13770560579478033701.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P15396859344234193902

`floor(record[A006530(n+2)/10])`
-/

namespace A176044.P15396859344234193902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A176044.P15396859344234193902

namespace A176044

/-- `floor(record[A006530(n+2)/10])` -/
def P15396859344234193902.Spec : Prop :=
  ∀ n, P15396859344234193902.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P15685248037342209196

`floor(record[A014963(n+2)/10])`
-/

namespace A176044.P15685248037342209196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A176044.P15685248037342209196

namespace A176044

/-- `floor(record[A014963(n+2)/10])` -/
def P15685248037342209196.Spec : Prop :=
  ∀ n, P15685248037342209196.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P17990570558295301397

`floor(record[A020639(n+2)/10])`
-/

namespace A176044.P17990570558295301397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A176044.P17990570558295301397

namespace A176044

/-- `floor(record[A020639(n+2)/10])` -/
def P17990570558295301397.Spec : Prop :=
  ∀ n, P17990570558295301397.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P10425934449382501579

`floor((A040976(n+1)+2)/10)`
-/

namespace A176044.P10425934449382501579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040976 (n + 1) + 2 : ℚ) / 10⌋

end

end A176044.P10425934449382501579

namespace A176044

/-- `floor((A040976(n+1)+2)/10)` -/
def P10425934449382501579.Spec : Prop :=
  ∀ n, P10425934449382501579.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P7396678083849715423

`A059995(p?[A004442(n)])`
-/

namespace A176044.P7396678083849715423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176044.P7396678083849715423

namespace A176044

/-- `A059995(p?[A004442(n)])` -/
def P7396678083849715423.Spec : Prop :=
  ∀ n, P7396678083849715423.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P17364786353165015899

`A059995(A000040(n+1))`
-/

namespace A176044.P17364786353165015899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A000040 (n + 1)).toNat

end

end A176044.P17364786353165015899

namespace A176044

/-- `A059995(A000040(n+1))` -/
def P17364786353165015899.Spec : Prop :=
  ∀ n, P17364786353165015899.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P2351514486456075329

`A059995(A006005(n+1))`
-/

namespace A176044.P2351514486456075329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A006005 (n + 1)).toNat

end

end A176044.P2351514486456075329

namespace A176044

/-- `A059995(A006005(n+1))` -/
def P2351514486456075329.Spec : Prop :=
  ∀ n, P2351514486456075329.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P13596322030202802223

`A059995(A006093(n+1))`
-/

namespace A176044.P13596322030202802223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A006093 (n + 1)).toNat

end

end A176044.P13596322030202802223

namespace A176044

/-- `A059995(A006093(n+1))` -/
def P13596322030202802223.Spec : Prop :=
  ∀ n, P13596322030202802223.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P250680907452991372

`A059995(A039915(n+1))`
-/

namespace A176044.P250680907452991372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A039915 (n + 1)).toNat

end

end A176044.P250680907452991372

namespace A176044

/-- `A059995(A039915(n+1))` -/
def P250680907452991372.Spec : Prop :=
  ∀ n, P250680907452991372.a n = A176044 (n + 1)

end A176044

/-! ## A176044.P2537980349634142181

`A002266(A102781(n+1))`
-/

namespace A176044.P2537980349634142181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A102781 (n + 1)).toNat

end

end A176044.P2537980349634142181

namespace A176044

/-- `A002266(A102781(n+1))` -/
def P2537980349634142181.Spec : Prop :=
  ∀ n, P2537980349634142181.a n = A176044 (n + 1)

end A176044

/-!
# A176045: Numbers n such that n-1 and 2*n-1 are both prime.

The programs for A176045, the canonical program `A176045.P10228396740254184789` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176045 has offset 1).

The definition of A176045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176045.P10228396740254184789

`A005384(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176045

/-- `A005384(n+1)+1` -/
def P10228396740254184789.Spec : Prop :=
  ∀ n, P10228396740254184789.a n = A176045 (n + 1)

theorem P10228396740254184789.correct : P10228396740254184789.Spec := by
  intro n
  simp only [A176045, Nat.add_sub_cancel]

end A176045

/-! ## A176045.P4971947054860098138

`ceil(A005385(n+1)/2)`
-/

namespace A176045.P4971947054860098138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005385 (n + 1) : ℚ) / 2⌉

end

end A176045.P4971947054860098138

namespace A176045

/-- `ceil(A005385(n+1)/2)` -/
def P4971947054860098138.Spec : Prop :=
  ∀ n, P4971947054860098138.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P13457765448872615903

`ceil(A175666(n+1)/3)`
-/

namespace A176045.P13457765448872615903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175666 (n + 1) : ℚ) / 3⌉

end

end A176045.P13457765448872615903

namespace A176045

/-- `ceil(A175666(n+1)/3)` -/
def P13457765448872615903.Spec : Prop :=
  ∀ n, P13457765448872615903.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P5666660905352671208

`A077065(n+1)/2+1`
-/

namespace A176045.P5666660905352671208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077065 (n + 1) : ℚ) / 2 + 1

end

end A176045.P5666660905352671208

namespace A176045

/-- `A077065(n+1)/2+1` -/
def P5666660905352671208.Spec : Prop :=
  ∀ n, P5666660905352671208.a n = (A176045 (n + 1) : ℚ)

theorem P5666660905352671208.correct : P5666660905352671208.Spec := by
  intro n
  simp only [A176045, Nat.add_sub_cancel, A176045.P5666660905352671208.a, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176045

/-! ## A176045.P567004872714581681

`A074259(n)+a(n-1)` with `a(0)=3`
-/

namespace A176045.P567004872714581681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A074259 n + a (n - 1)

end

end A176045.P567004872714581681

namespace A176045

/-- `A074259(n)+a(n-1)` -/
def P567004872714581681.Spec : Prop :=
  ∀ n, P567004872714581681.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P13693270906807402121

`A175666(n+1)-A077065(n+1)`
-/

namespace A176045.P13693270906807402121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A077065 (n + 1)

end

end A176045.P13693270906807402121

namespace A176045

/-- `A175666(n+1)-A077065(n+1)` -/
def P13693270906807402121.Spec : Prop :=
  ∀ n, P13693270906807402121.a n = A176045 (n + 1)

theorem P13693270906807402121.correct : P13693270906807402121.Spec := by
  intro n
  simp only [A176045, Nat.add_sub_cancel, A176045.P13693270906807402121.a, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A175666, A175666.P11802829545752177848.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176045

/-! ## A176045.P1770868181545667781

`A005385(n+1)+A005385(n+1)-A175666(n+1)`
-/

namespace A176045.P1770868181545667781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) + (A005385 (n + 1) - A175666 (n + 1))

end

end A176045.P1770868181545667781

namespace A176045

/-- `A005385(n+1)+A005385(n+1)-A175666(n+1)` -/
def P1770868181545667781.Spec : Prop :=
  ∀ n, P1770868181545667781.a n = A176045 (n + 1)

theorem P1770868181545667781.correct : P1770868181545667781.Spec := by
  intro n
  simp only [A176045, Nat.add_sub_cancel, A176045.P1770868181545667781.a, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176045

/-! ## A176045.P7059199885684605746

`(A156592(n+1)+A005385(n+1))/A005385(n+1)`
-/

namespace A176045.P7059199885684605746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156592 (n + 1) + A005385 (n + 1) : ℚ) / (A005385 (n + 1) : ℚ)

end

end A176045.P7059199885684605746

namespace A176045

/-- `(A156592(n+1)+A005385(n+1))/A005385(n+1)` -/
def P7059199885684605746.Spec : Prop :=
  ∀ n, P7059199885684605746.a n = (A176045 (n + 1) : ℚ)

end A176045

/-! ## A176045.P6723500673935909184

`p?[A348511(n+1)]+1`
-/

namespace A176045.P6723500673935909184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A176045.P6723500673935909184

namespace A176045

/-- `p?[A348511(n+1)]+1` -/
def P6723500673935909184.Spec : Prop :=
  ∀ n, P6723500673935909184.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P2139692439221253383

`p?[A364926(n+1)]+1`
-/

namespace A176045.P2139692439221253383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A176045.P2139692439221253383

namespace A176045

/-- `p?[A364926(n+1)]+1` -/
def P2139692439221253383.Spec : Prop :=
  ∀ n, P2139692439221253383.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P6831114256831315806

`record[A112037(n+2)+1]`
-/

namespace A176045.P6831114256831315806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112037 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176045.P6831114256831315806

namespace A176045

/-- `record[A112037(n+2)+1]` -/
def P6831114256831315806.Spec : Prop :=
  ∀ n, P6831114256831315806.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P211642114729472867

`p?[A259973(n+1)]+1`
-/

namespace A176045.P211642114729472867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A176045.P211642114729472867

namespace A176045

/-- `p?[A259973(n+1)]+1` -/
def P211642114729472867.Spec : Prop :=
  ∀ n, P211642114729472867.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P17581829983230265590

`∩[A009087(n+1), A259973(n+1)]+1`
-/

namespace A176045.P17581829983230265590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A176045.P17581829983230265590

namespace A176045

/-- `∩[A009087(n+1), A259973(n+1)]+1` -/
def P17581829983230265590.Spec : Prop :=
  ∀ n, (P17581829983230265590.a n : ℤ) = A176045 (n + 1)

end A176045

/-! ## A176045.P6482138117634879432

`p?[A078762(n+1)]+1`
-/

namespace A176045.P6482138117634879432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A176045.P6482138117634879432

namespace A176045

/-- `p?[A078762(n+1)]+1` -/
def P6482138117634879432.Spec : Prop :=
  ∀ n, P6482138117634879432.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P13073076470063638946

`record[(A023590(n+1)+1)/2]`
-/

namespace A176045.P13073076470063638946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023590 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176045.P13073076470063638946

namespace A176045

/-- `record[(A023590(n+1)+1)/2]` -/
def P13073076470063638946.Spec : Prop :=
  ∀ n, P13073076470063638946.a n = (A176045 (n + 1) : ℚ)

end A176045

/-! ## A176045.P5855518877816324454

`record[(A023592(n+1)+1)/2]`
-/

namespace A176045.P5855518877816324454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023592 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176045.P5855518877816324454

namespace A176045

/-- `record[(A023592(n+1)+1)/2]` -/
def P5855518877816324454.Spec : Prop :=
  ∀ n, P5855518877816324454.a n = (A176045 (n + 1) : ℚ)

end A176045

/-! ## A176045.P12509393355637929752

`record[(A023594(n+1)+1)/2]`
-/

namespace A176045.P12509393355637929752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023594 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176045.P12509393355637929752

namespace A176045

/-- `record[(A023594(n+1)+1)/2]` -/
def P12509393355637929752.Spec : Prop :=
  ∀ n, P12509393355637929752.a n = (A176045 (n + 1) : ℚ)

end A176045

/-! ## A176045.P3180917947805507664

`(p?[A072055(n+1)]+1)/2`
-/

namespace A176045.P3180917947805507664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A176045.P3180917947805507664

namespace A176045

/-- `(p?[A072055(n+1)]+1)/2` -/
def P3180917947805507664.Spec : Prop :=
  ∀ n, P3180917947805507664.a n = (A176045 (n + 1) : ℚ)

end A176045

/-! ## A176045.P2625381042028668524

`A008864(A072192(n+1))`
-/

namespace A176045.P2625381042028668524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A072192 (n + 1)).toNat

end

end A176045.P2625381042028668524

namespace A176045

/-- `A008864(A072192(n+1))` -/
def P2625381042028668524.Spec : Prop :=
  ∀ n, P2625381042028668524.a n = A176045 (n + 1)

end A176045

/-! ## A176045.P14501657333933015751

`∩[A331635(n+1), A348511(n+1)]+1`
-/

namespace A176045.P14501657333933015751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A176045.P14501657333933015751

namespace A176045

/-- `∩[A331635(n+1), A348511(n+1)]+1` -/
def P14501657333933015751.Spec : Prop :=
  ∀ n, (P14501657333933015751.a n : ℤ) = A176045 (n + 1)

end A176045

/-!
# A176046: Triangle T(n,m) = 1 + F(m) + F(n-m) - F(n), read by rows, where F = A000045 is the Fibonacci sequence.

The programs for A176046, the canonical program `A176046.P9063051536750768794` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176046 has offset 0).

The definition of A176046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000045(col(n))+A000045(row(n)-col(n))-A000045(row(n))` (program `A176046.P9063051536750768794`, by `A176046.P9063051536750768794.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176046.P9063051536750768794

`1+A000045(col(n))+A000045(row(n)-col(n))-A000045(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176046

/-- `1+A000045(col(n))+A000045(row(n)-col(n))-A000045(row(n))` -/
def P9063051536750768794.Spec : Prop :=
  ∀ n, P9063051536750768794.a n = A176046 n

theorem P9063051536750768794.correct : P9063051536750768794.Spec := by
  intro n
  simp only [A176046]

end A176046

/-! ## A176046.P15211126728486411991

`A094570(n)+1-A108037(n)`
-/

namespace A176046.P15211126728486411991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + (1 - A108037 n)

end

end A176046.P15211126728486411991

namespace A176046

/-- `A094570(n)+1-A108037(n)` -/
def P15211126728486411991.Spec : Prop :=
  ∀ n, P15211126728486411991.a n = A176046 n

end A176046

/-! ## A176046.P1046427645420810317

`A094570(n)+1-A094570(A057944(n))`
-/

namespace A176046.P1046427645420810317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + (1 - A094570 (A057944 n).toNat)

end

end A176046.P1046427645420810317

namespace A176046

/-- `A094570(n)+1-A094570(A057944(n))` -/
def P1046427645420810317.Spec : Prop :=
  ∀ n, P1046427645420810317.a n = A176046 n

end A176046

/-! ## A176046.P6154777819621778761

`A094570(n)+2-A001611(A003056(n))`
-/

namespace A176046.P6154777819621778761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + (2 - A001611 (A003056 n).toNat)

end

end A176046.P6154777819621778761

namespace A176046

/-- `A094570(n)+2-A001611(A003056(n))` -/
def P6154777819621778761.Spec : Prop :=
  ∀ n, P6154777819621778761.a n = A176046 n

end A176046

/-! ## A176046.P3748655677685385805

`A094570(n)+A024000(A108037(n))`
-/

namespace A176046.P3748655677685385805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + A024000 (A108037 n).toNat

end

end A176046.P3748655677685385805

namespace A176046

/-- `A094570(n)+A024000(A108037(n))` -/
def P3748655677685385805.Spec : Prop :=
  ∀ n, P3748655677685385805.a n = A176046 n

end A176046

/-! ## A176046.P4079053347582863005

`2-A156070(n)`
-/

namespace A176046.P4079053347582863005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156070 n

end

end A176046.P4079053347582863005

namespace A176046

/-- `2-A156070(n)` -/
def P4079053347582863005.Spec : Prop :=
  ∀ n, P4079053347582863005.a n = A176046 n

theorem P4079053347582863005.correct : P4079053347582863005.Spec := by
  intro n
  simp only [A176046, Nat.add_sub_cancel, A176046.P4079053347582863005.a, A176046.P9063051536750768794.a, A000045, A000045.P11838749114346432762.a, A156070, A156070.P13531166401362378609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176046

/-! ## A176046.P13782618437408573193

`A022958(A156070(n))`
-/

namespace A176046.P13782618437408573193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A156070 n).toNat

end

end A176046.P13782618437408573193

namespace A176046

/-- `A022958(A156070(n))` -/
def P13782618437408573193.Spec : Prop :=
  ∀ n, P13782618437408573193.a n = A176046 n

end A176046

/-! ## A176046.P3792336559477882893

`A049347(3*n+4)*A156070(n)+2`
-/

namespace A176046.P3792336559477882893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 4) * A156070 n + 2

end

end A176046.P3792336559477882893

namespace A176046

/-- `A049347(3*n+4)*A156070(n)+2` -/
def P3792336559477882893.Spec : Prop :=
  ∀ n, P3792336559477882893.a n = A176046 n

end A176046

/-! ## A176046.P3341578170542235395

`A024000(A156070(n))+A007318(C(2, n))`
-/

namespace A176046.P3341578170542235395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A156070 n).toNat + A007318 (Nat.choose 2 n)

end

end A176046.P3341578170542235395

namespace A176046

/-- `A024000(A156070(n))+A007318(C(2, n))` -/
def P3341578170542235395.Spec : Prop :=
  ∀ n, P3341578170542235395.a n = A176046 n

end A176046

/-! ## A176046.P5719199971253869540

`A024000(A156070(n))+A014963(6*(n+1))`
-/

namespace A176046.P5719199971253869540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A156070 n).toNat + A014963 (6 * (n + 1))

end

end A176046.P5719199971253869540

namespace A176046

/-- `A024000(A156070(n))+A014963(6*(n+1))` -/
def P5719199971253869540.Spec : Prop :=
  ∀ n, P5719199971253869540.a n = A176046 n

end A176046

/-!
# A176047: Triangle t(n,m) = A004001(m+1)+A004001(n-m+1)-A004001(n+1) read by rows, 0<=m<=n.

The programs for A176047, the canonical program `A176047.P13783129734406426996` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176047 has offset 0).

The definition of A176047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(col(n)+1)+A004001(row(n)-col(n)+1)-A004001(row(n)+1)` (program `A176047.P13783129734406426996`, by `A176047.P13783129734406426996.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176047.P13783129734406426996

`A004001(col(n)+1)+A004001(row(n)-col(n)+1)-A004001(row(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176047

/-- `A004001(col(n)+1)+A004001(row(n)-col(n)+1)-A004001(row(n)+1)` -/
def P13783129734406426996.Spec : Prop :=
  ∀ n, P13783129734406426996.a n = A176047 n

theorem P13783129734406426996.correct : P13783129734406426996.Spec := by
  intro n
  simp only [A176047]

end A176047

/-! ## A176047.P10314538096516733040

`A000164(∑{p}[A013621(n), #])`
-/

namespace A176047.P10314538096516733040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A176047.P10314538096516733040

namespace A176047

/-- `A000164(∑{p}[A013621(n), #])` -/
def P10314538096516733040.Spec : Prop :=
  ∀ n, P10314538096516733040.a n = A176047 n

end A176047

/-! ## A176047.P674785251275764668

`A170958(A143261(n)+2)`
-/

namespace A176047.P674785251275764668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 (A143261 n + 2).toNat

end

end A176047.P674785251275764668

namespace A176047

/-- `A170958(A143261(n)+2)` -/
def P674785251275764668.Spec : Prop :=
  ∀ n, P674785251275764668.a n = A176047 n

end A176047

/-! ## A176047.P18391875877629084476

`A190248(∏{p}[A111636(n), #])`
-/

namespace A176047.P18391875877629084476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A176047.P18391875877629084476

namespace A176047

/-- `A190248(∏{p}[A111636(n), #])` -/
def P18391875877629084476.Spec : Prop :=
  ∀ n, P18391875877629084476.a n = A176047 n

end A176047

/-! ## A176047.P5678826028670252712

`A106253(A304551(n+1))-1`
-/

namespace A176047.P5678826028670252712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106253 (A304551 (n + 1)).toNat - 1

end

end A176047.P5678826028670252712

namespace A176047

/-- `A106253(A304551(n+1))-1` -/
def P5678826028670252712.Spec : Prop :=
  ∀ n, P5678826028670252712.a n = A176047 n

end A176047

/-!
# A176048: Triangle t(n,m) = A005185(m+1)+A005185(n-m+1)-A005185(n+1), read by rows 0<=m<=n.

The programs for A176048, the canonical program `A176048.P433446402239203425` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176048 has offset 0).

The definition of A176048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005185(col(n)+1)+A005185(row(n)-col(n)+1)-A005185(row(n)+1)` (program `A176048.P433446402239203425`, by `A176048.P433446402239203425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176048.P433446402239203425

`A005185(col(n)+1)+A005185(row(n)-col(n)+1)-A005185(row(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176048

/-- `A005185(col(n)+1)+A005185(row(n)-col(n)+1)-A005185(row(n)+1)` -/
def P433446402239203425.Spec : Prop :=
  ∀ n, P433446402239203425.a n = A176048 n

theorem P433446402239203425.correct : P433446402239203425.Spec := by
  intro n
  simp only [A176048]

end A176048

/-! ## A176048.P16844070611351407509

`A266434(A289270(A197061(n+1)))`
-/

namespace A176048.P16844070611351407509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A289270 (A197061 (n + 1)).toNat).toNat

end

end A176048.P16844070611351407509

namespace A176048

/-- `A266434(A289270(A197061(n+1)))` -/
def P16844070611351407509.Spec : Prop :=
  ∀ n, P16844070611351407509.a n = A176048 n

end A176048

/-! ## A176048.P10442870226346097085

`A108882(gcd(A000079(n), A173882(n)))`
-/

namespace A176048.P10442870226346097085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108882 (Int.gcd (A000079 n) (A173882 n))

end

end A176048.P10442870226346097085

namespace A176048

/-- `A108882(gcd(A000079(n), A173882(n)))` -/
def P10442870226346097085.Spec : Prop :=
  ∀ n, P10442870226346097085.a n = A176048 n

end A176048

/-! ## A176048.P5908053780526168179

`A000035(abs(A176264(n)))`
-/

namespace A176048.P5908053780526168179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A176264 n|.toNat

end

end A176048.P5908053780526168179

namespace A176048

/-- `A000035(abs(A176264(n)))` -/
def P5908053780526168179.Spec : Prop :=
  ∀ n, P5908053780526168179.a n = A176048 n

end A176048

/-! ## A176048.P10407713475530745539

`A104106(abs(A176264(n)))`
-/

namespace A176048.P10407713475530745539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104106 |A176264 n|.toNat

end

end A176048.P10407713475530745539

namespace A176048

/-- `A104106(abs(A176264(n)))` -/
def P10407713475530745539.Spec : Prop :=
  ∀ n, P10407713475530745539.a n = A176048 n

end A176048

/-!
# A176050: Det(M) where M is an n X n antisymmetric matrix with M(i,j) = n for i < j.

The programs for A176050, there is no canonical definition to state claims against.
-/

/-! ## A176050.P13223632077585281279

`(n+1)^(n+1)*n%2`
-/

namespace A176050.P13223632077585281279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1) * (n % 2)

end

end A176050.P13223632077585281279

/-! ## A176050.P7427875592544622313

`((n+1)*and(1, n))^(n+1)`
-/

namespace A176050.P7427875592544622313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.land 1 n) ^ (n + 1)

end

end A176050.P7427875592544622313

/-! ## A176050.P16614159945265617671

`lcm(n+1, and(1, n))^(n+1)`
-/

namespace A176050.P16614159945265617671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.land 1 n) ^ (n + 1)

end

end A176050.P16614159945265617671

/-! ## A176050.P4974863598574733033

`Δ[(or(1, n)/2)²]^(n+1)`
-/

namespace A176050.P4974863598574733033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A176050.P4974863598574733033

/-! ## A176050.P3999122363264361204

`∑[2-Δ[lcm(2, n)]]^(n+1)`
-/

namespace A176050.P3999122363264361204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A176050.P3999122363264361204

/-!
# A176051: Decimal expansion of (2+sqrt(6))/2.

The programs for A176051, there is no canonical definition to state claims against.
-/

/-! ## A176051.P7117562982549715142

`A115754(A000007(n)+n)`
-/

namespace A176051.P7117562982549715142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A176051.P7117562982549715142

/-! ## A176051.P13976180358175761160

`A115754(A000038(n)+n)`
-/

namespace A176051.P13976180358175761160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A176051.P13976180358175761160

/-! ## A176051.P17723099184903530048

`A115754(gcd(n, A008458(n)))`
-/

namespace A176051.P17723099184903530048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 (Int.gcd (n : ℤ) (A008458 n) + 1)

end

end A176051.P17723099184903530048

/-! ## A176051.P1997301036849228608

`A115754(or(n, A000007(n)))`
-/

namespace A176051.P1997301036849228608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A176051.P1997301036849228608

/-! ## A176051.P3052617434542966819

`A115754(or(n, A000038(n)))`
-/

namespace A176051.P3052617434542966819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A176051.P3052617434542966819

/-! ## A176051.P5803240070062793404

`A115754(xor(n, A000007(n)))`
-/

namespace A176051.P5803240070062793404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A176051.P5803240070062793404

/-! ## A176051.P8621631039148199754

`A115754(xor(n, A000038(n)))`
-/

namespace A176051.P8621631039148199754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A176051.P8621631039148199754

/-! ## A176051.P6838780836533615710

`A115754(A008486(n)-2*n)`
-/

namespace A176051.P6838780836533615710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((A008486 n - (2 * n : ℤ)).toNat + 1)

end

end A176051.P6838780836533615710

/-! ## A176051.P16801348966839191843

`A115754(A008574(n)-3*n)`
-/

namespace A176051.P16801348966839191843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((A008574 n - (3 * n : ℤ)).toNat + 1)

end

end A176051.P16801348966839191843

/-! ## A176051.P9042669943407536886

`A115754(A008458(n)-5*n)`
-/

namespace A176051.P9042669943407536886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((A008458 n - (5 * n : ℤ)).toNat + 1)

end

end A176051.P9042669943407536886

/-! ## A176051.P49091135529057158

`A115754(n+2-A040001(2*n))`
-/

namespace A176051.P49091135529057158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 (((n + 2 : ℤ) - A040001 (2 * n)).toNat + 1)

end

end A176051.P49091135529057158

/-! ## A176051.P13091974089397537481

`A115754(A008574(n)/A151798(n))`
-/

namespace A176051.P13091974089397537481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((SequenceMachineLib.roundAway ((A008574 n : ℚ) / (A151798 n : ℚ))).toNat + 1)

end

end A176051.P13091974089397537481

/-! ## A176051.P17930424170717668085

`A105397(n)/A040003(n)*A115754(n)`
-/

namespace A176051.P17930424170717668085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105397 n : ℚ) / (A040003 n : ℚ) * (A115754 (n + 1) : ℚ)

end

end A176051.P17930424170717668085

/-! ## A176051.P3750466296534575120

`A040003(n+1)+A115754(n)-A382713(n)`
-/

namespace A176051.P3750466296534575120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 (n + 1) + (A115754 (n + 1) - A382713 n)

end

end A176051.P3750466296534575120

/-! ## A176051.P1436786106165039401

`A105397(n+1)+A115754(n)-A382713(n)`
-/

namespace A176051.P1436786106165039401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 (n + 1) + (A115754 (n + 1) - A382713 n)

end

end A176051.P1436786106165039401

/-! ## A176051.P12382356538165371168

`A382713(n+1)/A040003(n)*A115754(n)`
-/

namespace A176051.P12382356538165371168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382713 (n + 1) : ℚ) / (A040003 n : ℚ) * (A115754 (n + 1) : ℚ)

end

end A176051.P12382356538165371168

/-! ## A176051.P16403827668939667607

`A115754(n+2-A106469(2*n))`
-/

namespace A176051.P16403827668939667607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 (((n + 2 : ℤ) - A106469 (2 * n)).toNat + 1)

end

end A176051.P16403827668939667607

/-! ## A176051.P7752149669661577728

`A115754(n+2-A382713(2*n))`
-/

namespace A176051.P7752149669661577728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 (((n + 2 : ℤ) - A382713 (2 * n)).toNat + 1)

end

end A176051.P7752149669661577728

/-! ## A176051.P8738964306466596688

`A115754(A000035(A008458(n))+n)`
-/

namespace A176051.P8738964306466596688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((A000035 (A008458 n).toNat + (n : ℤ)).toNat + 1)

end

end A176051.P8738964306466596688

/-! ## A176051.P16534430428560433537

`A115754(n^A178334(n))`
-/

namespace A176051.P16534430428560433537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115754 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + 1)

end

end A176051.P16534430428560433537

/-!
# A176053: Decimal expansion of (3+2*sqrt(3))/3.

The programs for A176053, there is no canonical definition to state claims against.
-/

/-! ## A176053.P2079285043388343680

`A020832(n)+A000007(n)`
-/

namespace A176053.P2079285043388343680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020832 n + A000007 n

end

end A176053.P2079285043388343680

/-! ## A176053.P6369904169253504652

`A020832(n)*A054977(n)`
-/

namespace A176053.P6369904169253504652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020832 n * A054977 n

end

end A176053.P6369904169253504652

/-! ## A176053.P13765080363232216002

`A020832(n)+A000038(n)/2`
-/

namespace A176053.P13765080363232216002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020832 n : ℚ) + (A000038 n : ℚ) / 2

end

end A176053.P13765080363232216002

/-! ## A176053.P5243857884851349323

`A010153(n)%3*A020832(n)`
-/

namespace A176053.P5243857884851349323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010153 n) 3 * A020832 n

end

end A176053.P5243857884851349323

/-! ## A176053.P2878649937662788605

`A020832(n*A030599(a(n-2)+1))` with `a(0)=2, a(1)=1`
-/

namespace A176053.P2878649937662788605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A020832 ((n : ℤ) * A030599 (a (n - 2) + 1).toNat).toNat

end

end A176053.P2878649937662788605

/-! ## A176053.P6432912701003951348

`A020832(n)*A118931(A254204(a(n-2)+1))` with `a(0)=2, a(1)=1`
-/

namespace A176053.P6432912701003951348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A020832 n * A118931 (A254204 (a (n - 2) + 1).toNat).toNat

end

end A176053.P6432912701003951348

/-!
# A176055: Decimal expansion of (2+sqrt(5))/2.

The programs for A176055, there is no canonical definition to state claims against.
-/

/-! ## A176055.P38026328713307094

`A104457(char[1]+n)`
-/

namespace A176055.P38026328713307094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A176055.P38026328713307094

/-! ## A176055.P17744748816864822925

`gcd(round(acot(n)), A104457(n))`
-/

namespace A176055.P17744748816864822925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ))) (A104457 (n + 1))

end

end A176055.P17744748816864822925

/-! ## A176055.P6762709442521202628

`A020837(n)+A000007(n)`
-/

namespace A176055.P6762709442521202628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + A000007 n

end

end A176055.P6762709442521202628

/-! ## A176055.P5486423135973785566

`A036987(2*n)+A020837(n)`
-/

namespace A176055.P5486423135973785566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A020837 n

end

end A176055.P5486423135973785566

/-! ## A176055.P14568904813491267132

`A020837(n)+A255295(n)%2`
-/

namespace A176055.P14568904813491267132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + Int.tmod (A255295 n) 2

end

end A176055.P14568904813491267132

/-! ## A176055.P7193881110511485636

`gcd(2, A030101(n))*A020837(n)`
-/

namespace A176055.P7193881110511485636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A030101 n) : ℤ) * A020837 n

end

end A176055.P7193881110511485636

/-! ## A176055.P17215800843302763623

`A020837(n)+A010051(2*(n+1))`
-/

namespace A176055.P17215800843302763623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + A010051 (2 * (n + 1))

end

end A176055.P17215800843302763623

/-! ## A176055.P17762447200282064704

`A000045(a(n%2))*A001622(n)` with `a(0)=2, a(1)=1`
-/

namespace A176055.P17762447200282064704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000045 (a (n % 2)).toNat * A001622 (n + 1)

end

end A176055.P17762447200282064704

/-! ## A176055.P6131242511578906099

`A020837(n)+A010054(A001316(n))`
-/

namespace A176055.P6131242511578906099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + A010054 (A001316 n).toNat

end

end A176055.P6131242511578906099

/-! ## A176055.P8674981024828046600

`A020837(n)+A008683(A008574(n))`
-/

namespace A176055.P8674981024828046600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + A008683 (A008574 n).toNat

end

end A176055.P8674981024828046600

/-! ## A176055.P8083533091702271893

`A020837(n)+A014063(A090079(n))`
-/

namespace A176055.P8083533091702271893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + A014063 (A090079 n).toNat

end

end A176055.P8083533091702271893

/-! ## A176055.P5733344381692760855

`A020837(n)-A008683(2*A008574(n))`
-/

namespace A176055.P5733344381692760855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n - A008683 (2 * A008574 n).toNat

end

end A176055.P5733344381692760855

/-! ## A176055.P11993168044761847417

`A020837(n)+A010054(A010054(n)+n)`
-/

namespace A176055.P11993168044761847417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + A010054 (A010054 n + (n : ℤ)).toNat

end

end A176055.P11993168044761847417

/-! ## A176055.P5439411457494458347

`A020837(n)+A296184(n)-A104457(n)`
-/

namespace A176055.P5439411457494458347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n + (A296184 (n + 1) - A104457 (n + 1))

end

end A176055.P5439411457494458347

/-! ## A176055.P4392550759416670189

`A205769(n+1)+A001622(n)-A377697(n)`
-/

namespace A176055.P4392550759416670189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205769 (n + 1) + (A001622 (n + 1) - A377697 (n + 1))

end

end A176055.P4392550759416670189

/-! ## A176055.P7191632583040984174

`A014963(A016825(n))*A020837(n)`
-/

namespace A176055.P7191632583040984174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A020837 n

end

end A176055.P7191632583040984174

/-! ## A176055.P10120283193599618679

`A001622(A233583(n+1))+A000007(n)`
-/

namespace A176055.P10120283193599618679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A233583 (n + 1)).toNat + 1) + A000007 n

end

end A176055.P10120283193599618679

/-! ## A176055.P8675993335602517860

`A001622(A233583(n+1))+A000038(n)/2`
-/

namespace A176055.P8675993335602517860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001622 ((A233583 (n + 1)).toNat + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A176055.P8675993335602517860

/-! ## A176055.P1965486794084497343

`A014963(2*A000040(n+1))*A020837(n)`
-/

namespace A176055.P1965486794084497343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000040 (n + 1)).toNat * A020837 n

end

end A176055.P1965486794084497343

/-! ## A176055.P14730257298891991188

`A014963(A001749(n+1))*A020837(n)`
-/

namespace A176055.P14730257298891991188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001749 (n + 1)).toNat * A020837 n

end

end A176055.P14730257298891991188

/-!
# A176057: Decimal expansion of (5+sqrt(30))/5.

The programs for A176057, there is no canonical definition to state claims against.
-/

/-! ## A176057.P8440228242649331348

`A068409(C(n, n²))*A245294(n)`
-/

namespace A176057.P8440228242649331348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068409 (Nat.choose n (n ^ 2)) * A245294 (n + 1)

end

end A176057.P8440228242649331348

/-! ## A176057.P5826655709027397701

`A105083(C(n, n²))*A245294(n)`
-/

namespace A176057.P5826655709027397701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (Nat.choose n (n ^ 2)) * A245294 (n + 1)

end

end A176057.P5826655709027397701

/-! ## A176057.P18036721190402551656

`(A321091(n)-A321090(n))*A245294(n)`
-/

namespace A176057.P18036721190402551656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321091 n - A321090 n) * A245294 (n + 1)

end

end A176057.P18036721190402551656

/-! ## A176057.P8510540209534394422

`A000041(A057366(A057366(a(n-1))))*A245294(n)` with `a(0)=2`
-/

namespace A176057.P8510540209534394422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000041 (A057366 (A057366 (a (n - 1)).toNat).toNat).toNat * A245294 (n + 1)

end

end A176057.P8510540209534394422

/-! ## A176057.P439959704663770999

`A014963(∑[A010700(n)])*A245294(n)`
-/

namespace A176057.P439959704663770999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A245294 (n + 1)

end

end A176057.P439959704663770999

/-! ## A176057.P9209292734731850776

`A271102(n²+1)+A245294(n)`
-/

namespace A176057.P9209292734731850776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (n ^ 2 + 1) + A245294 (n + 1)

end

end A176057.P9209292734731850776

/-!
# A176059: Periodic sequence: Repeat 3, 2.

The programs for A176059, the canonical program `A176059.P3242393250982034900` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176059 has offset 0).

The definition of A176059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176059.P3242393250982034900

`3-n%2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176059

/-- `3-n%2` -/
def P3242393250982034900.Spec : Prop :=
  ∀ n, P3242393250982034900.a n = A176059 n

theorem P3242393250982034900.correct : P3242393250982034900.Spec := by
  intro n
  simp only [A176059]

end A176059

/-!
# A176060: a(n) = n*(n+1)*(3*n^2+5*n+4)/12.

The programs for A176060, the canonical program `A176060.P11118257401432994787` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176060 has offset 0).

The definition of A176060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n²+5*n+4)/12` (program `A176060.P11431456123137752001`, by `A176060.P11431456123137752001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176060.P11431456123137752001

`n*(n+1)*(3*n²+5*n+4)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176060.P11431456123137752001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (3 * n ^ 2 + 5 * n + 4) : ℚ) / 12

end

end A176060.P11431456123137752001

namespace A176060

/-- `n*(n+1)*(3*n²+5*n+4)/12` -/
def P11431456123137752001.Spec : Prop :=
  ∀ n, P11431456123137752001.a n = (A176060 n : ℚ)

theorem P11431456123137752001.correct : P11431456123137752001.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A176060, Nat.add_sub_cancel, A176060.P11431456123137752001.a, A176060.P11118257401432994787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A176060, Nat.add_sub_cancel, A176060.P11431456123137752001.a, A176060.P11118257401432994787.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176060

/-! ## A176060.P11118257401432994787

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=13, a(3)=46, a(4)=120`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176060

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11118257401432994787.Spec : Prop :=
  ∀ n, P11118257401432994787.a n = A176060 n

theorem P11118257401432994787.correct : P11118257401432994787.Spec := by
  intro n
  simp only [A176060]

end A176060

/-! ## A176060.P5057141488645977985

`C(n+2, 3)+∑[n]²`
-/

namespace A176060.P5057141488645977985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A176060.P5057141488645977985

namespace A176060

/-- `C(n+2, 3)+∑[n]²` -/
def P5057141488645977985.Spec : Prop :=
  ∀ n, (P5057141488645977985.a n : ℤ) = A176060 n

end A176060

/-! ## A176060.P6159521997912165774

`∑[lcm(n, n+1)/2]+∑[n]²`
-/

namespace A176060.P6159521997912165774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)

end

end A176060.P6159521997912165774

namespace A176060

/-- `∑[lcm(n, n+1)/2]+∑[n]²` -/
def P6159521997912165774.Spec : Prop :=
  ∀ n, P6159521997912165774.a n = (A176060 n : ℚ)

end A176060

/-! ## A176060.P14987185608272301321

`∑[a(n-1)+n]+∑[n]²` with `a(0)=0`
-/

namespace A176060.P14987185608272301321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A176060.P14987185608272301321

namespace A176060

/-- `∑[a(n-1)+n]+∑[n]²` -/
def P14987185608272301321.Spec : Prop :=
  ∀ n, (P14987185608272301321.a n : ℤ) = A176060 n

end A176060

/-! ## A176060.P14398804092159103459

`∑[n]²-∑[a(n-1)-n]` with `a(0)=0`
-/

namespace A176060.P14398804092159103459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A176060.P14398804092159103459

namespace A176060

/-- `∑[n]²-∑[a(n-1)-n]` -/
def P14398804092159103459.Spec : Prop :=
  ∀ n, P14398804092159103459.a n = A176060 n

end A176060

/-! ## A176060.P8647223776788914511

`∑[n*record[abs(1-n)/2]]+∑[n]²`
-/

namespace A176060.P8647223776788914511
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℚ)

end

end A176060.P8647223776788914511

namespace A176060

/-- `∑[n*record[abs(1-n)/2]]+∑[n]²` -/
def P8647223776788914511.Spec : Prop :=
  ∀ n, P8647223776788914511.a n = (A176060 n : ℚ)

end A176060

/-! ## A176060.P7997807840569141723

`∑[∑[n]]+(floor((n+1)/acot(n))/2)²`
-/

namespace A176060.P7997807840569141723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / 2) ^ 2

end

end A176060.P7997807840569141723

namespace A176060

/-- `∑[∑[n]]+(floor((n+1)/acot(n))/2)²` -/
def P7997807840569141723.Spec : Prop :=
  ∀ n, P7997807840569141723.a n = (A176060 n : ℚ)

end A176060

/-! ## A176060.P2152577496568509251

`floor(record[xor(1, n)²]/8)+a(n-1)+n^3` with `a(0)=0`
-/

namespace A176060.P2152577496568509251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8⌋ + (a (n - 1) + (n ^ 3 : ℤ))

end

end A176060.P2152577496568509251

namespace A176060

/-- `floor(record[xor(1, n)²]/8)+a(n-1)+n^3` -/
def P2152577496568509251.Spec : Prop :=
  ∀ n, P2152577496568509251.a n = A176060 n

end A176060

/-! ## A176060.P6952227083432248251

`round(record[xor(1, n)²]/8)+a(n-1)+n^3` with `a(0)=0`
-/

namespace A176060.P6952227083432248251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8) + (a (n - 1) + (n ^ 3 : ℤ))

end

end A176060.P6952227083432248251

namespace A176060

/-- `round(record[xor(1, n)²]/8)+a(n-1)+n^3` -/
def P6952227083432248251.Spec : Prop :=
  ∀ n, P6952227083432248251.a n = A176060 n

end A176060

/-! ## A176060.P15836228874422147371

`n*4*(n+1)/8+a(n-1)+n^3` with `a(0)=0`
-/

namespace A176060.P15836228874422147371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n * (4 * (n + 1)) : ℚ) / 8 + (a (n - 1) + (n ^ 3 : ℚ))

end

end A176060.P15836228874422147371

namespace A176060

/-- `n*4*(n+1)/8+a(n-1)+n^3` -/
def P15836228874422147371.Spec : Prop :=
  ∀ n, P15836228874422147371.a n = (A176060 n : ℚ)

end A176060

/-! ## A176060.P8656290507179432308

`∑[A081423(n)-1]`
-/

namespace A176060.P8656290507179432308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081423 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176060.P8656290507179432308

namespace A176060

/-- `∑[A081423(n)-1]` -/
def P8656290507179432308.Spec : Prop :=
  ∀ n, P8656290507179432308.a n = A176060 n

end A176060

/-! ## A176060.P12140046102129863613

`A000292(n)+∑[n]²`
-/

namespace A176060.P12140046102129863613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A176060.P12140046102129863613

namespace A176060

/-- `A000292(n)+∑[n]²` -/
def P12140046102129863613.Spec : Prop :=
  ∀ n, P12140046102129863613.a n = A176060 n

end A176060

/-! ## A176060.P7035376710817981173

`∑[A059270(n)-n²]`
-/

namespace A176060.P7035376710817981173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176060.P7035376710817981173

namespace A176060

/-- `∑[A059270(n)-n²]` -/
def P7035376710817981173.Spec : Prop :=
  ∀ n, P7035376710817981173.a n = A176060 n

end A176060

/-! ## A176060.P13234735823353849474

`A000537(n)+∑[∑[n]]`
-/

namespace A176060.P13234735823353849474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176060.P13234735823353849474

namespace A176060

/-- `A000537(n)+∑[∑[n]]` -/
def P13234735823353849474.Spec : Prop :=
  ∀ n, P13234735823353849474.a n = A176060 n

end A176060

/-! ## A176060.P982205246640479382

`A152457(n)-∑[∑[n]]`
-/

namespace A176060.P982205246640479382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176060.P982205246640479382

namespace A176060

/-- `A152457(n)-∑[∑[n]]` -/
def P982205246640479382.Spec : Prop :=
  ∀ n, P982205246640479382.a n = A176060 n

end A176060

/-! ## A176060.P1326718218934726730

`∑[∑[n]]+A000217(n)²`
-/

namespace A176060.P1326718218934726730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000217 n ^ 2

end

end A176060.P1326718218934726730

namespace A176060

/-- `∑[∑[n]]+A000217(n)²` -/
def P1326718218934726730.Spec : Prop :=
  ∀ n, P1326718218934726730.a n = A176060 n

end A176060

/-! ## A176060.P1500395533572467679

`A006011(n+1)-∑[n²]`
-/

namespace A176060.P1500395533572467679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176060.P1500395533572467679

namespace A176060

/-- `A006011(n+1)-∑[n²]` -/
def P1500395533572467679.Spec : Prop :=
  ∀ n, P1500395533572467679.a n = A176060 n

end A176060

/-! ## A176060.P6430124665561982486

`A002419(n+1)-(n+1)^3`
-/

namespace A176060.P6430124665561982486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A176060.P6430124665561982486

namespace A176060

/-- `A002419(n+1)-(n+1)^3` -/
def P6430124665561982486.Spec : Prop :=
  ∀ n, P6430124665561982486.a n = A176060 n

end A176060

/-! ## A176060.P8844012196711374519

`A039623(n+1)-∑[(n+1)²]`
-/

namespace A176060.P8844012196711374519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176060.P8844012196711374519

namespace A176060

/-- `A039623(n+1)-∑[(n+1)²]` -/
def P8844012196711374519.Spec : Prop :=
  ∀ n, P8844012196711374519.a n = A176060 n

end A176060

/-!
# A176061: Numbers n such that 41#*2^n-1 is prime, where # denotes the primorial, A002110.

The programs for A176061, there is no canonical definition to state claims against.
-/

/-! ## A176061.P4266231368670599967

`record[and(A035930(n), A241745(n))]`
-/

namespace A176061.P4266231368670599967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035930 n) (A241745 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176061.P4266231368670599967

/-! ## A176061.P11424450118474468254

`∑[A010155(A026779(2*n+1))]-1`
-/

namespace A176061.P11424450118474468254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 (A026779 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A176061.P11424450118474468254

/-!
# A176062: Numbers n such that 41#*2^n-1 and 41#*2^n+1 are twin primes, where # denotes the primorial, A002110.

The programs for A176062, there is no canonical definition to state claims against.
-/

/-! ## A176062.P12098713548359979285

`A338635(n)+A015935(n+5)`
-/

namespace A176062.P12098713548359979285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338635 n + A015935 (n + 5)

end

end A176062.P12098713548359979285

/-!
# A176063: Triangle read by rows: T(n,k) = (-1)^k * binomial(n,k) * pochhammer(-n,k) + (-1)^(n-k) * binomial(n,n-k) * pochhammer(-n,n-k) - n!.

The programs for A176063, the canonical program `A176063.P13273263877411822681` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176063 has offset 0).

The definition of A176063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176063.P13273263877411822681

`A177974(n)+A014473(n)*A155162(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176063

/-- `A177974(n)+A014473(n)*A155162(n)` -/
def P13273263877411822681.Spec : Prop :=
  ∀ n, P13273263877411822681.a n = A176063 n

theorem P13273263877411822681.correct : P13273263877411822681.Spec := by
  intro n
  simp only [A176063]

end A176063

/-! ## A176063.P4134369118139101338

`A000926(A176560(n))`
-/

namespace A176063.P4134369118139101338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A176560 n).toNat

end

end A176063.P4134369118139101338

namespace A176063

/-- `A000926(A176560(n))` -/
def P4134369118139101338.Spec : Prop :=
  ∀ n, P4134369118139101338.a n = A176063 n

end A176063

/-! ## A176063.P15646636878291572967

`A045831(A176639(n))`
-/

namespace A176063.P15646636878291572967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045831 (A176639 n).toNat

end

end A176063.P15646636878291572967

namespace A176063

/-- `A045831(A176639(n))` -/
def P15646636878291572967.Spec : Prop :=
  ∀ n, P15646636878291572967.a n = A176063 n

end A176063

/-! ## A176063.P15765760420439109786

`A136272(A168552(n))`
-/

namespace A176063.P15765760420439109786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136272 (A168552 n).toNat

end

end A176063.P15765760420439109786

namespace A176063

/-- `A136272(A168552(n))` -/
def P15765760420439109786.Spec : Prop :=
  ∀ n, P15765760420439109786.a n = A176063 n

end A176063

/-! ## A176063.P16166901449007531840

`A178864(A154985(n))`
-/

namespace A176063.P16166901449007531840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (A154985 n).toNat

end

end A176063.P16166901449007531840

namespace A176063

/-- `A178864(A154985(n))` -/
def P16166901449007531840.Spec : Prop :=
  ∀ n, P16166901449007531840.a n = A176063 n

end A176063

/-!
# A176064: A symmetrical triangle of polynomial coefficients based on the Hermite polynomials with leading coefficient adjusted to one: p(x,n)=HermiteH[n,x]-HermiteH[0,x]+x^n*(HermiteH[n,1/x]-HermiteH[0,1/x]).

The programs for A176064, there is no canonical definition to state claims against.
-/

/-! ## A176064.P723000840929987795

`A176411(n)%A220595(n+1)+1`
-/

namespace A176064.P723000840929987795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176411 n) (A220595 (n + 1)) + 1

end

end A176064.P723000840929987795

/-! ## A176064.P6418073046112672424

`A176411(n)+A057427(A004197(n))`
-/

namespace A176064.P6418073046112672424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A057427 (A004197 n).toNat

end

end A176064.P6418073046112672424

/-! ## A176064.P2707889470963520410

`A176411(n)+A001221(A103444(n))`
-/

namespace A176064.P2707889470963520410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A001221 (A103444 n).toNat

end

end A176064.P2707889470963520410

/-! ## A176064.P6460974349794758679

`A176411(n)+A001221(A152714(n))`
-/

namespace A176064.P6460974349794758679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A001221 (A152714 n).toNat

end

end A176064.P6460974349794758679

/-! ## A176064.P5677728721761924905

`A176411(n)+A157928(A007318(n))`
-/

namespace A176064.P5677728721761924905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A157928 (A007318 n).toNat

end

end A176064.P5677728721761924905

/-! ## A176064.P8637956311648650613

`A176411(n)+A057427(A109042(n))`
-/

namespace A176064.P8637956311648650613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A057427 (A109042 n).toNat

end

end A176064.P8637956311648650613

/-! ## A176064.P12132871810884423716

`A178489(A004247(n))+A176411(n)`
-/

namespace A176064.P12132871810884423716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A004247 n).toNat + A176411 n

end

end A176064.P12132871810884423716

/-! ## A176064.P16352819266399849947

`A176411(n)+A001221(A003983(n+1))`
-/

namespace A176064.P16352819266399849947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A001221 (A003983 (n + 1)).toNat

end

end A176064.P16352819266399849947

/-! ## A176064.P15922623730113998967

`A176411(n)+A001221(A057728(n+1))`
-/

namespace A176064.P15922623730113998967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A001221 (A057728 (n + 1)).toNat

end

end A176064.P15922623730113998967

/-! ## A176064.P13739170816765847737

`A176411(n)+A001221(A106314(n+1))`
-/

namespace A176064.P13739170816765847737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176411 n + A001221 (A106314 (n + 1)).toNat

end

end A176064.P13739170816765847737

/-!
# A176065: Numbers n such that n-th semiprime-2 is prime.

The programs for A176065, there is no canonical definition to state claims against.
-/

/-! ## A176065.P4206791153771741722

`A058933(A062721(n+1))`
-/

namespace A176065.P4206791153771741722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A062721 (n + 1)).toNat

end

end A176065.P4206791153771741722

/-! ## A176065.P5109804559405170179

`record[A058933(A158337(n+1))]`
-/

namespace A176065.P5109804559405170179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A158337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176065.P5109804559405170179

/-! ## A176065.P15666906419070082603

`record[A174956(A052147(n+1))]`
-/

namespace A176065.P15666906419070082603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A052147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176065.P15666906419070082603

/-! ## A176065.P4713799204778866876

`record[A174956(A139690(n+1))]`
-/

namespace A176065.P4713799204778866876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A139690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176065.P4713799204778866876

/-! ## A176065.P9206864106458798957

`A058933(A063637(n+1)+2)`
-/

namespace A176065.P9206864106458798957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A063637 (n + 1) + 2).toNat

end

end A176065.P9206864106458798957

/-! ## A176065.P10180440665067612218

`A072000(A063637(n+1)+2)`
-/

namespace A176065.P10180440665067612218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A063637 (n + 1) + 2).toNat

end

end A176065.P10180440665067612218

/-! ## A176065.P6397028762164255786

`record[A174956(A008864(n+1)+1)]`
-/

namespace A176065.P6397028762164255786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A008864 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176065.P6397028762164255786

/-! ## A176065.P9931702646608159425

`record[A174956(A000040(n+1)+2)]`
-/

namespace A176065.P9931702646608159425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176065.P9931702646608159425

/-! ## A176065.P7219726006120613485

`eq[1, A001222(A186621(n+1)-1)]+1`
-/

namespace A176065.P7219726006120613485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A186621 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176065.P7219726006120613485

/-! ## A176065.P2019560425774843874

`eq[1, A001222(A001358(n+1)-2)]+1`
-/

namespace A176065.P2019560425774843874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176065.P2019560425774843874

/-!
# A176066: Triangle read by rows: R(n,k)=semiprime(n+1) mod (semiprime(k)+1), 1<=k<=n.

The programs for A176066, the canonical program `A176066.P6739167091512652905` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176066 has offset 1).

The definition of A176066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176066.P6739167091512652905

`A001358(row(n)+2)%(1+A001358(col(n)+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176066

/-- `A001358(row(n)+2)%(1+A001358(col(n)+1))` -/
def P6739167091512652905.Spec : Prop :=
  ∀ n, P6739167091512652905.a n = A176066 (n + 1)

theorem P6739167091512652905.correct : P6739167091512652905.Spec := by
  intro n
  simp only [A176066, Nat.add_sub_cancel]

end A176066

/-!
# A176067: Binary analog of A098755 and A098756: Binary representation of least available nonnegative integer with bit values alternating for entire sequence.

The programs for A176067, there is no canonical definition to state claims against.
-/

/-! ## A176067.P15477686351323835399

`101*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A176067.P15477686351323835399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 10] fun n a =>
  101 * a (n - 1) - 100 * a (n - 2)

end

end A176067.P15477686351323835399

/-! ## A176067.P5258663679789812131

`10*(10*a(n-1)+1)` with `a(0)=1, a(1)=0`
-/

namespace A176067.P5258663679789812131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  10 * (10 * a (n - 1) + 1)

end

end A176067.P5258663679789812131

/-! ## A176067.P8591747126213970567

`A056830(xor(1, A004273(n)))`
-/

namespace A176067.P8591747126213970567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (Int.xor 1 (A004273 n)).toNat

end

end A176067.P8591747126213970567

/-! ## A176067.P13438641468887575699

`A056830(abs(2-A274922(2*n)))`
-/

namespace A176067.P13438641468887575699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 |2 - A274922 (2 * n)|.toNat

end

end A176067.P13438641468887575699

/-! ## A176067.P14773033263875244119

`A282797(A004273(n))`
-/

namespace A176067.P14773033263875244119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (A004273 n).toNat

end

end A176067.P14773033263875244119

/-! ## A176067.P5444156968550952786

`A282797(A004277(n)-1)`
-/

namespace A176067.P5444156968550952786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (A004277 n - 1).toNat

end

end A176067.P5444156968550952786

/-! ## A176067.P13765747764434723269

`A282797(eq[0, A142150(n)])`
-/

namespace A176067.P13765747764434723269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176067.P13765747764434723269

/-! ## A176067.P8293426815967116401

`A282797(floor(log2(A129637(n))))`
-/

namespace A176067.P8293426815967116401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (Nat.log 2 (A129637 n).toNat)

end

end A176067.P8293426815967116401

/-! ## A176067.P5576093265541160674

`A282797(eq[n+1, A015906(n)])`
-/

namespace A176067.P5576093265541160674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176067.P5576093265541160674

/-! ## A176067.P15273908153070092751

`A282797(eq[1, A015906(n)-n])`
-/

namespace A176067.P15273908153070092751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176067.P15273908153070092751

/-!
# A176068: Number of inequivalent indecomposable Hermitian self-dual codes over GF(4) of length 2n with minimum weight 4.

The programs for A176068, there is no canonical definition to state claims against.
-/

/-! ## A176068.P6463441240974739210

`A234363(a(n-1))-1+n` with `a(0)=1`
-/

namespace A176068.P6463441240974739210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A234363 (a (n - 1)).toNat - 1 + (n : ℤ)

end

end A176068.P6463441240974739210

/-! ## A176068.P13617354006035397835

`A398379(A080135(n))`
-/

namespace A176068.P13617354006035397835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398379 (A080135 n).toNat

end

end A176068.P13617354006035397835

/-! ## A176068.P13877928210442092640

`A398379(A108469(n))`
-/

namespace A176068.P13877928210442092640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398379 (A108469 n).toNat

end

end A176068.P13877928210442092640

/-!
# A176069: Numbers of the form k^2+k+1 that are the product of two distinct primes.

The programs for A176069, there is no canonical definition to state claims against.
-/

/-! ## A176069.P2426744531380458214

`2*C(A180748(n+1), 2)+1`
-/

namespace A176069.P2426744531380458214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A180748 (n + 1)).toNat 2 + 1

end

end A176069.P2426744531380458214

/-! ## A176069.P17546345707958055591

`A002061(A180748(n+1))`
-/

namespace A176069.P17546345707958055591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A180748 (n + 1)).toNat

end

end A176069.P17546345707958055591

/-! ## A176069.P8394251191452301965

`A002061(eq[6, A278251(n)])`
-/

namespace A176069.P8394251191452301965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176069.P8394251191452301965

/-! ## A176069.P12080827589215347917

`A002061(A085746(n+1)+1)`
-/

namespace A176069.P12080827589215347917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A085746 (n + 1) + 1).toNat

end

end A176069.P12080827589215347917

/-! ## A176069.P4909516261599743596

`eq[6, A278260(2*n+1)]+eq[6, A278260(2*n+1)]²+1`
-/

namespace A176069.P4909516261599743596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n ^ 2 + 1)

end

end A176069.P4909516261599743596

/-! ## A176069.P2316020579181384586

`∩[A107890(n+1), A008811(n)]`
-/

namespace A176069.P2316020579181384586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P2316020579181384586

/-! ## A176069.P15020662752795564458

`∩[A034111(n+1), A107890(n+1)]`
-/

namespace A176069.P15020662752795564458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P15020662752795564458

/-! ## A176069.P7174725386895758890

`∩[A107890(n+1), A130404(n+1)]`
-/

namespace A176069.P7174725386895758890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P7174725386895758890

/-! ## A176069.P10526857915726103643

`∩[A107890(n+1), A174969(n+1)]`
-/

namespace A176069.P10526857915726103643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P10526857915726103643

/-! ## A176069.P15006631221684511697

`∩[A107890(n+1), A353887(n+1)]`
-/

namespace A176069.P15006631221684511697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P15006631221684511697

/-! ## A176069.P15424941907543208641

`∩[A034111(n+1), A230834(n+1)]`
-/

namespace A176069.P15424941907543208641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P15424941907543208641

/-! ## A176069.P16128842401260817158

`∩[A130404(n+1), A230834(n+1)]`
-/

namespace A176069.P16128842401260817158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P16128842401260817158

/-! ## A176069.P5180219685211578588

`∩[A174969(n+1), A230834(n+1)]`
-/

namespace A176069.P5180219685211578588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P5180219685211578588

/-! ## A176069.P3234491078348942204

`∩[A230834(n+1), A353887(n+1)]`
-/

namespace A176069.P3234491078348942204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P3234491078348942204

/-! ## A176069.P587242142233408824

`filter[A174969(n+1), A359828(#)]`
-/

namespace A176069.P587242142233408824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A176069.P587242142233408824

/-! ## A176069.P10740466242243745090

`filter[A174969(n+1), A374128(#)]`
-/

namespace A176069.P10740466242243745090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A176069.P10740466242243745090

/-! ## A176069.P7963793921721419455

`A002061(eq[2, A001222((1-n)²+n)])`
-/

namespace A176069.P7963793921721419455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176069.P7963793921721419455

/-! ## A176069.P2589398436450163746

`A002061(eq[4, A001222(n²-(n-1))²])`
-/

namespace A176069.P2589398436450163746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176069.P2589398436450163746

/-! ## A176069.P16823852131376179303

`A051890(eq[2, A001222((1-n)²+n)])/2`
-/

namespace A176069.P16823852131376179303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A176069.P16823852131376179303

/-! ## A176069.P12179223519745346019

`∩[A001358(n+1), A034111(n+1)]`
-/

namespace A176069.P12179223519745346019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176069.P12179223519745346019

/-!
# A176070: Numbers of the form k^3+k^2+k+1 that are the product of two distinct primes.

The programs for A176070, the canonical program `A176070.P10273054342056655056` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176070 has offset 1).

The definition of A176070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070689, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176070.P10273054342056655056

`(A070689(n+2)+1)*(A070689(n+2)²+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176070

/-- `(A070689(n+2)+1)*(A070689(n+2)²+1)` -/
def P10273054342056655056.Spec : Prop :=
  ∀ n, P10273054342056655056.a n = A176070 (n + 1)

theorem P10273054342056655056.correct : P10273054342056655056.Spec := by
  intro n
  simp only [A176070, Nat.add_sub_cancel]

end A176070

/-! ## A176070.P5373639555989372356

`A237627(n+2)`
-/

namespace A176070.P5373639555989372356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237627 (n + 2)

end

end A176070.P5373639555989372356

namespace A176070

/-- `A237627(n+2)` -/
def P5373639555989372356.Spec : Prop :=
  ∀ n, P5373639555989372356.a n = A176070 (n + 1)

end A176070

/-! ## A176070.P4564480216548507441

`∩[A091286(n+1), ceil(acot(n)^-3)+n²]`
-/

namespace A176070.P4564480216548507441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌉ + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176070.P4564480216548507441

namespace A176070

/-- `∩[A091286(n+1), ceil(acot(n)^-3)+n²]` -/
def P4564480216548507441.Spec : Prop :=
  ∀ n, (P4564480216548507441.a n : ℤ) = A176070 (n + 1)

end A176070

/-! ## A176070.P10942251656524300874

`A053698(A070689(n+2))`
-/

namespace A176070.P10942251656524300874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A070689 (n + 2)).toNat

end

end A176070.P10942251656524300874

namespace A176070

/-- `A053698(A070689(n+2))` -/
def P10942251656524300874.Spec : Prop :=
  ∀ n, P10942251656524300874.a n = A176070 (n + 1)

end A176070

/-! ## A176070.P4665361763515939086

`A053698(A127435(n+2)-1)`
-/

namespace A176070.P4665361763515939086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A127435 (n + 2) - 1).toNat

end

end A176070.P4665361763515939086

namespace A176070

/-- `A053698(A127435(n+2)-1)` -/
def P4665361763515939086.Spec : Prop :=
  ∀ n, P4665361763515939086.a n = A176070 (n + 1)

end A176070

/-!
# A176071: Numbers of the form 2^k + k + 1 that are the product of two distinct primes.

The programs for A176071, there is no canonical definition to state claims against.
-/

/-! ## A176071.P7458903130739192015

`filter[A005126(n), A354927(#)]`
-/

namespace A176071.P7458903130739192015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A176071.P7458903130739192015

/-!
# A176074: Partial sums of A006343.

The programs for A176074, there is no canonical definition to state claims against.
-/

/-! ## A176074.P6244787207578797854

`∑[A006343(n)]`
-/

namespace A176074.P6244787207578797854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176074.P6244787207578797854

/-! ## A176074.P13367153376779372847

`A006343(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A176074.P13367153376779372847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006343 n + a (A023443 n).toNat

end

end A176074.P13367153376779372847

/-! ## A176074.P953633321642727487

`a(n-1)+A006343(n)+A000007(n)` with `a(0)=1`
-/

namespace A176074.P953633321642727487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006343 n + A000007 n)

end

end A176074.P953633321642727487

/-! ## A176074.P5287957638375807682

`A006343(n)+a(n-A057427(n+1))` with `a(0)=1`
-/

namespace A176074.P5287957638375807682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006343 n + a ((n : ℤ) - A057427 (n + 1)).toNat

end

end A176074.P5287957638375807682

/-! ## A176074.P15261220665966311764

`A006343(n)+a(n-and(1, A127229(n+5)))` with `a(0)=1`
-/

namespace A176074.P15261220665966311764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006343 n + a ((n : ℤ) - Int.land 1 (A127229 (n + 5))).toNat

end

end A176074.P15261220665966311764

/-!
# A176075: Conway variant a(n) = 1+a(n-1-(n mod a(n-1))), with a(1)=1.

The programs for A176075, the canonical program `A176075.P8350172437635886839` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176075 has offset 1).

The definition of A176075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1-(n+1)%a(n-1))` (program `A176075.P8350172437635886839`, by `A176075.P8350172437635886839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176075.P8350172437635886839

`1+a(n-1-(n+1)%a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176075

/-- `1+a(n-1-(n+1)%a(n-1))` -/
def P8350172437635886839.Spec : Prop :=
  ∀ n, (P8350172437635886839.a n : ℤ) = A176075 (n + 1)

theorem P8350172437635886839.correct : P8350172437635886839.Spec := by
  intro n
  simp only [A176075, Nat.add_sub_cancel]

end A176075

/-! ## A176075.P12545736324664482931

`A125173(A000978(n+1)-A224811(n))`
-/

namespace A176075.P12545736324664482931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A000978 (n + 1) - A224811 n).toNat

end

end A176075.P12545736324664482931

namespace A176075

/-- `A125173(A000978(n+1)-A224811(n))` -/
def P12545736324664482931.Spec : Prop :=
  ∀ n, P12545736324664482931.a n = A176075 (n + 1)

end A176075

/-! ## A176075.P8347411766443983307

`A374758(A079667(n+1)+A044824(n+1))`
-/

namespace A176075.P8347411766443983307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A079667 (n + 1) + A044824 (n + 1)).toNat

end

end A176075.P8347411766443983307

namespace A176075

/-- `A374758(A079667(n+1)+A044824(n+1))` -/
def P8347411766443983307.Spec : Prop :=
  ∀ n, P8347411766443983307.a n = A176075 (n + 1)

end A176075

/-!
# A176078: Triangle, read by rows, T(n, k) = (2*n)!/((n-k)! * k!)^2 - (2*n)!/(n!)^2 + 1.

The programs for A176078, the canonical program `A176078.P3268826946321230098` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176078 has offset 0).

The definition of A176078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176078.P3268826946321230098

`C(2*row(n), row(n))*(C(row(n), col(n))²-1)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176078

/-- `C(2*row(n), row(n))*(C(row(n), col(n))²-1)+1` -/
def P3268826946321230098.Spec : Prop :=
  ∀ n, P3268826946321230098.a n = A176078 n

theorem P3268826946321230098.correct : P3268826946321230098.Spec := by
  intro n
  simp only [A176078]

end A176078

/-! ## A176078.P5203684858473338276

`(2*row(n))!/((row(n)-col(n))!*col(n)!)²-(2*row(n))!/row(n)!²+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176078.P5203684858473338276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * SequenceMachineLib.triRow n) : ℚ) / ((Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat * Nat.factorial (SequenceMachineLib.triCol n)) ^ 2 : ℚ) - (Nat.factorial (2 * SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triRow n) ^ 2 : ℚ) + 1

end

end A176078.P5203684858473338276

namespace A176078

/-- `(2*row(n))!/((row(n)-col(n))!*col(n)!)²-(2*row(n))!/row(n)!²+1` -/
def P5203684858473338276.Spec : Prop :=
  ∀ n, P5203684858473338276.a n = (A176078 n : ℚ)

end A176078

/-! ## A176078.P9229431143612033149

`A090035(A036412(n+1)*A090034(n))`
-/

namespace A176078.P9229431143612033149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090035 (A036412 (n + 1) * A090034 n).toNat

end

end A176078.P9229431143612033149

namespace A176078

/-- `A090035(A036412(n+1)*A090034(n))` -/
def P9229431143612033149.Spec : Prop :=
  ∀ n, P9229431143612033149.a n = A176078 n

end A176078

/-! ## A176078.P7546765718484312032

`A317256(A057820(n+1)^A000720(n+1))`
-/

namespace A176078.P7546765718484312032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317256 (SequenceMachineLib.roundAway ((A057820 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A176078.P7546765718484312032

namespace A176078

/-- `A317256(A057820(n+1)^A000720(n+1))` -/
def P7546765718484312032.Spec : Prop :=
  ∀ n, P7546765718484312032.a n = A176078 n

end A176078

/-! ## A176078.P3324089507696913684

`and(A258159(A258160(n+2)), A258190(n+1))`
-/

namespace A176078.P3324089507696913684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258159 (A258160 (n + 2)).toNat) (A258190 (n + 1))

end

end A176078.P3324089507696913684

namespace A176078

/-- `and(A258159(A258160(n+2)), A258190(n+1))` -/
def P3324089507696913684.Spec : Prop :=
  ∀ n, P3324089507696913684.a n = A176078 n

end A176078

/-!
# A176079: Triangle T(n,k) read by rows: If k divides n then k-1, otherwise -1.

The programs for A176079, the canonical program `A176079.P15611810976206123960` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176079 has offset 1).

The definition of A176079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176079.P4844635103474567246

`row(n)%(col(n)+1)-(row(n)+1)%(col(n)+1)`
-/

namespace A176079.P4844635103474567246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n % (SequenceMachineLib.triCol n + 1) : ℕ) : ℤ) - (((SequenceMachineLib.triRow n + 1) % (SequenceMachineLib.triCol n + 1) : ℕ) : ℤ)

end

end A176079.P4844635103474567246

namespace A176079

/-- `row(n)%(col(n)+1)-(row(n)+1)%(col(n)+1)` -/
def P4844635103474567246.Spec : Prop :=
  ∀ n, P4844635103474567246.a n = A176079 (n + 1)

theorem P4844635103474567246.correct : P4844635103474567246.Spec := by
  intro n
  simp only [A176079, Nat.add_sub_cancel, A176079.P4844635103474567246.a, A176079.P15611810976206123960.a, A127093, A127093.P1089623250187861217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176079

/-! ## A176079.P15611810976206123960

`A127093(n+1)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176079

/-- `A127093(n+1)-1` -/
def P15611810976206123960.Spec : Prop :=
  ∀ n, P15611810976206123960.a n = A176079 (n + 1)

theorem P15611810976206123960.correct : P15611810976206123960.Spec := by
  intro n
  simp only [A176079, Nat.add_sub_cancel]

end A176079

/-! ## A176079.P11560900076496190381

`sqrt(A134575(n+1))-1`
-/

namespace A176079.P11560900076496190381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134575 (n + 1) : ℝ) - 1

end

end A176079.P11560900076496190381

namespace A176079

/-- `sqrt(A134575(n+1))-1` -/
def P11560900076496190381.Spec : Prop :=
  ∀ n, P11560900076496190381.a n = (A176079 (n + 1) : ℝ)

end A176079

/-! ## A176079.P98856595530202710

`ceil(A134560(n+1)/2)-1`
-/

namespace A176079.P98856595530202710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134560 (n + 1) : ℚ) / 2⌉ - 1

end

end A176079.P98856595530202710

namespace A176079

/-- `ceil(A134560(n+1)/2)-1` -/
def P98856595530202710.Spec : Prop :=
  ∀ n, P98856595530202710.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P7586608456141727920

`ceil(A127651(n+1)/(comp[∑[n]]-n))-1`
-/

namespace A176079.P7586608456141727920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127651 (n + 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌉ - 1

end

end A176079.P7586608456141727920

namespace A176079

/-- `ceil(A127651(n+1)/(comp[∑[n]]-n))-1` -/
def P7586608456141727920.Spec : Prop :=
  ∀ n, P7586608456141727920.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P9066770821760325310

`A023443(A127093(n+1))`
-/

namespace A176079.P9066770821760325310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A127093 (n + 1)).toNat

end

end A176079.P9066770821760325310

namespace A176079

/-- `A023443(A127093(n+1))` -/
def P9066770821760325310.Spec : Prop :=
  ∀ n, P9066770821760325310.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P158513237628342912

`A001057(A134560(n+1))-1`
-/

namespace A176079.P158513237628342912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A134560 (n + 1)).toNat - 1

end

end A176079.P158513237628342912

namespace A176079

/-- `A001057(A134560(n+1))-1` -/
def P158513237628342912.Spec : Prop :=
  ∀ n, P158513237628342912.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P17437583820229081782

`A230980(A127639(n+1))-1`
-/

namespace A176079.P17437583820229081782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A127639 (n + 1)).toNat - 1

end

end A176079.P17437583820229081782

namespace A176079

/-- `A230980(A127639(n+1))-1` -/
def P17437583820229081782.Spec : Prop :=
  ∀ n, P17437583820229081782.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P9679434120211036456

`A002262(n)-A173541(n+1)`
-/

namespace A176079.P9679434120211036456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A173541 (n + 1)

end

end A176079.P9679434120211036456

namespace A176079

/-- `A002262(n)-A173541(n+1)` -/
def P9679434120211036456.Spec : Prop :=
  ∀ n, P9679434120211036456.a n = A176079 (n + 1)

theorem P9679434120211036456.correct : P9679434120211036456.Spec := by
  intro n
  simp only [A176079, Nat.add_sub_cancel, A176079.P9679434120211036456.a, A176079.P15611810976206123960.a, A002262, A002262.P17823619022233514403.a, A127093, A127093.P1089623250187861217.a, A173541, A173541.P8603278970651018191.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176079

/-! ## A176079.P15379732543832945887

`A191910(n+1)-A023531(n)`
-/

namespace A176079.P15379732543832945887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191910 (n + 1) - A023531 n

end

end A176079.P15379732543832945887

namespace A176079

/-- `A191910(n+1)-A023531(n)` -/
def P15379732543832945887.Spec : Prop :=
  ∀ n, P15379732543832945887.a n = A176079 (n + 1)

theorem P15379732543832945887.correct : P15379732543832945887.Spec := by
  intro n
  simp only [A176079, Nat.add_sub_cancel, A176079.P15379732543832945887.a, A176079.P15611810976206123960.a, A023531, A023531.P13036811505051547859.a, A127093, A127093.P1089623250187861217.a, A191910, A191910.P11685670682958930902.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A176079

/-! ## A176079.P9680918820454529759

`A191910(n+1)+A023532(n)-1`
-/

namespace A176079.P9680918820454529759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191910 (n + 1) + (A023532 n - 1)

end

end A176079.P9680918820454529759

namespace A176079

/-- `A191910(n+1)+A023532(n)-1` -/
def P9680918820454529759.Spec : Prop :=
  ∀ n, P9680918820454529759.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P11625028135082652980

`gcd(A103516(n), A176891(n+1))-1`
-/

namespace A176079.P11625028135082652980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A103516 n) (A176891 (n + 1)) : ℤ) - 1

end

end A176079.P11625028135082652980

namespace A176079

/-- `gcd(A103516(n), A176891(n+1))-1` -/
def P11625028135082652980.Spec : Prop :=
  ∀ n, P11625028135082652980.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P11242133500789919640

`and(A130888(n+1), A134199(n))-1`
-/

namespace A176079.P11242133500789919640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A134199 n) - 1

end

end A176079.P11242133500789919640

namespace A176079

/-- `and(A130888(n+1), A134199(n))-1` -/
def P11242133500789919640.Spec : Prop :=
  ∀ n, P11242133500789919640.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P14846149812741912536

`A002260(n+1)-(A173541(n+1)+1)`
-/

namespace A176079.P14846149812741912536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - (A173541 (n + 1) + 1)

end

end A176079.P14846149812741912536

namespace A176079

/-- `A002260(n+1)-(A173541(n+1)+1)` -/
def P14846149812741912536.Spec : Prop :=
  ∀ n, P14846149812741912536.a n = A176079 (n + 1)

theorem P14846149812741912536.correct : P14846149812741912536.Spec := by
  intro n
  simp only [A176079, Nat.add_sub_cancel, A176079.P14846149812741912536.a, A176079.P15611810976206123960.a, A002260, A002260.P9170571874073898642.a, A127093, A127093.P1089623250187861217.a, A173541, A173541.P8603278970651018191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176079

/-! ## A176079.P2139304533241892822

`A054522(n+1)+A141846(n+1)-1`
-/

namespace A176079.P2139304533241892822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) + (A141846 (n + 1) - 1)

end

end A176079.P2139304533241892822

namespace A176079

/-- `A054522(n+1)+A141846(n+1)-1` -/
def P2139304533241892822.Spec : Prop :=
  ∀ n, P2139304533241892822.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P18336956184524337521

`A002260(n+1)*A051731(n+1)-1`
-/

namespace A176079.P18336956184524337521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051731 (n + 1) - 1

end

end A176079.P18336956184524337521

namespace A176079

/-- `A002260(n+1)*A051731(n+1)-1` -/
def P18336956184524337521.Spec : Prop :=
  ∀ n, P18336956184524337521.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P15046346664263328276

`A050873(n+1)*A051731(n+1)-1`
-/

namespace A176079.P15046346664263328276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A051731 (n + 1) - 1

end

end A176079.P15046346664263328276

namespace A176079

/-- `A050873(n+1)*A051731(n+1)-1` -/
def P15046346664263328276.Spec : Prop :=
  ∀ n, P15046346664263328276.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P8923371590633588060

`A051731(n+1)*A123275(n+1)-1`
-/

namespace A176079.P8923371590633588060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A123275 (n + 1) - 1

end

end A176079.P8923371590633588060

namespace A176079

/-- `A051731(n+1)*A123275(n+1)-1` -/
def P8923371590633588060.Spec : Prop :=
  ∀ n, P8923371590633588060.a n = A176079 (n + 1)

end A176079

/-! ## A176079.P9065932837228247626

`A127651(n+1)/A002024(n+1)-1`
-/

namespace A176079.P9065932837228247626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127651 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) - 1

end

end A176079.P9065932837228247626

namespace A176079

/-- `A127651(n+1)/A002024(n+1)-1` -/
def P9065932837228247626.Spec : Prop :=
  ∀ n, P9065932837228247626.a n = (A176079 (n + 1) : ℚ)

end A176079

/-! ## A176079.P4831442677115323248

`A191907(n+1)+A191910(n+1)-A177121(n+1)`
-/

namespace A176079.P4831442677115323248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + (A191910 (n + 1) - A177121 (n + 1))

end

end A176079.P4831442677115323248

namespace A176079

/-- `A191907(n+1)+A191910(n+1)-A177121(n+1)` -/
def P4831442677115323248.Spec : Prop :=
  ∀ n, P4831442677115323248.a n = A176079 (n + 1)

end A176079

/-!
# A176080: Triangle, read by rows, T(n, k) = Sum_{j=0..k} (n+k)!/((n-j)!*(k-j)!*j!).

The programs for A176080, there is no canonical definition to state claims against.
-/

/-! ## A176080.P11492230571081576314

`A046899(n)*A176120(n)`
-/

namespace A176080.P11492230571081576314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A176120 n

end

end A176080.P11492230571081576314

/-! ## A176080.P9740766682815184805

`A092392(A061579(n))*A176120(n)`
-/

namespace A176080.P9740766682815184805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A061579 n).toNat * A176120 n

end

end A176080.P9740766682815184805

/-! ## A176080.P13440851074672411593

`A007318(A245300(n))*A176120(n)`
-/

namespace A176080.P13440851074672411593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n).toNat * A176120 n

end

end A176080.P13440851074672411593

/-! ## A176080.P3257217342543306513

`A059481(A007401(n+1))*A176120(n)`
-/

namespace A176080.P3257217342543306513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A007401 (n + 1)).toNat * A176120 n

end

end A176080.P3257217342543306513

/-! ## A176080.P18419448185895153531

`A046899(n)*A293985(A007401(n+1))`
-/

namespace A176080.P18419448185895153531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A293985 (A007401 (n + 1)).toNat

end

end A176080.P18419448185895153531

/-! ## A176080.P935804676777212175

`A046899(n)/A178300(n+1)*A176121(n)`
-/

namespace A176080.P935804676777212175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046899 n : ℚ) / (A178300 (n + 1) : ℚ) * (A176121 n : ℚ)

end

end A176080.P935804676777212175

/-! ## A176080.P3807125616170191343

`A046899(n)/A046899(A007401(n+1))*A176121(n)`
-/

namespace A176080.P3807125616170191343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046899 n : ℚ) / (A046899 (A007401 (n + 1)).toNat : ℚ) * (A176121 n : ℚ)

end

end A176080.P3807125616170191343

/-! ## A176080.P16852651816593402988

`A143084(n)/A143216(n)*A176120(n)`
-/

namespace A176080.P16852651816593402988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143084 n : ℚ) / (A143216 n : ℚ) * (A176120 n : ℚ)

end

end A176080.P16852651816593402988

/-! ## A176080.P3955417750861683436

`A046899(n)*A088699(A245300(n))`
-/

namespace A176080.P3955417750861683436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A088699 (A245300 n).toNat

end

end A176080.P3955417750861683436

/-!
# A176081: Triangle, read by rows, T(n, k) = Sum_{j=0..k} (n+k)!/((n-j)!*(k-j)!*j!) + Sum_{j=0..n-k} (2*n-k)!/((n-j)!*(n-k-j)!*j!).

The programs for A176081, there is no canonical definition to state claims against.
-/

/-! ## A176081.P16384484336768310434

`A176080(A061579(n))+A176080(n)`
-/

namespace A176081.P16384484336768310434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 (A061579 n).toNat + A176080 n

end

end A176081.P16384484336768310434

/-! ## A176081.P15861674568323187944

`A176080(A114327(n)+n)+A176080(n)`
-/

namespace A176081.P15861674568323187944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 (A114327 n + (n : ℤ)).toNat + A176080 n

end

end A176081.P15861674568323187944

/-! ## A176081.P2757410063113104073

`A176080(A038722(n+1)-1)+A176080(n)`
-/

namespace A176081.P2757410063113104073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 (A038722 (n + 1) - 1).toNat + A176080 n

end

end A176081.P2757410063113104073

/-! ## A176081.P17236743473085070634

`A176080(n)+A176080(A286098(n)+A099026(n))`
-/

namespace A176081.P17236743473085070634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 n + A176080 (A286098 n + A099026 n).toNat

end

end A176081.P17236743473085070634

/-! ## A176081.P2606933022276282793

`A176080(A002378(n)%A014132(n+1))+A176080(n)`
-/

namespace A176081.P2606933022276282793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat + A176080 n

end

end A176081.P2606933022276282793

/-! ## A176081.P5293341220692238585

`A176080(A038722(n+2))+A176080(n)`
-/

namespace A176081.P5293341220692238585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 (A038722 (n + 2)).toNat + A176080 n

end

end A176081.P5293341220692238585

/-!
# A176082: Triangle, read by rows, T(n,k) = f(n,k) - f(n,0) + 1, where f(n,k) = Sum_{j=0..k} (n+k)!/((n-j)!*(k-j)!*j!) + Sum_{j=0..n-k} (2*n-k)!/((n-j)!*(n - k-j)!*j!).

The programs for A176082, there is no canonical definition to state claims against.
-/

/-! ## A176082.P4941313132314299253

`A176081(n)-A176080(A025581(n)+n)`
-/

namespace A176082.P4941313132314299253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176081 n - A176080 (A025581 n + (n : ℤ)).toNat

end

end A176082.P4941313132314299253

/-! ## A176082.P16573179293154548053

`A216057(A216031(n+1)^A158611(n+1))`
-/

namespace A176082.P16573179293154548053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216057 (SequenceMachineLib.roundAway ((A216031 (n + 1) : ℚ) ^ (A158611 (n + 1) : ℤ))).toNat

end

end A176082.P16573179293154548053

/-! ## A176082.P14717592913805270542

`A216057(A216031(n+1)^A330123(n+1))`
-/

namespace A176082.P14717592913805270542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216057 (SequenceMachineLib.roundAway ((A216031 (n + 1) : ℚ) ^ (A330123 (n + 1) : ℤ))).toNat

end

end A176082.P14717592913805270542

/-!
# A176083: a(n) = 2^(2n-2) mod prime(2n).

The programs for A176083, the canonical program `A176083.P11022268759162544894` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176083 has offset 1).

The definition of A176083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*(n+1)-2))%A000040(2*(n+1))` (program `A176083.P11022268759162544894`, by `A176083.P11022268759162544894.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176083.P11022268759162544894

`(2^(2*(n+1)-2))%A000040(2*(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176083

/-- `(2^(2*(n+1)-2))%A000040(2*(n+1))` -/
def P11022268759162544894.Spec : Prop :=
  ∀ n, P11022268759162544894.a n = A176083 (n + 1)

theorem P11022268759162544894.correct : P11022268759162544894.Spec := by
  intro n
  simp only [A176083, Nat.add_sub_cancel]

end A176083

/-! ## A176083.P7766865806667448248

`(4^n)%A109853(n+2)`
-/

namespace A176083.P7766865806667448248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 ^ n : ℤ) (A109853 (n + 2))

end

end A176083.P7766865806667448248

namespace A176083

/-- `(4^n)%A109853(n+2)` -/
def P7766865806667448248.Spec : Prop :=
  ∀ n, P7766865806667448248.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P14870797624367828055

`(2^n)²%A065091(2*n+1)`
-/

namespace A176083.P14870797624367828055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n) ^ 2 : ℤ) (A065091 (2 * n + 1))

end

end A176083.P14870797624367828055

namespace A176083

/-- `(2^n)²%A065091(2*n+1)` -/
def P14870797624367828055.Spec : Prop :=
  ∀ n, P14870797624367828055.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P3970819634507240679

`A000302(n)%A031215(n+1)`
-/

namespace A176083.P3970819634507240679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n) (A031215 (n + 1))

end

end A176083.P3970819634507240679

namespace A176083

/-- `A000302(n)%A031215(n+1)` -/
def P3970819634507240679.Spec : Prop :=
  ∀ n, P3970819634507240679.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P10420165112828336912

`A000079(n)²%A031215(n+1)`
-/

namespace A176083.P10420165112828336912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n ^ 2) (A031215 (n + 1))

end

end A176083.P10420165112828336912

namespace A176083

/-- `A000079(n)²%A031215(n+1)` -/
def P10420165112828336912.Spec : Prop :=
  ∀ n, P10420165112828336912.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P1015534776983239779

`∑[A002001(n)]%A031215(n+1)`
-/

namespace A176083.P1015534776983239779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A031215 (n + 1))

end

end A176083.P1015534776983239779

namespace A176083

/-- `∑[A002001(n)]%A031215(n+1)` -/
def P1015534776983239779.Spec : Prop :=
  ∀ n, P1015534776983239779.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P2612151585584173010

`A000079(2*n)%A031215(n+1)`
-/

namespace A176083.P2612151585584173010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (2 * n)) (A031215 (n + 1))

end

end A176083.P2612151585584173010

namespace A176083

/-- `A000079(2*n)%A031215(n+1)` -/
def P2612151585584173010.Spec : Prop :=
  ∀ n, P2612151585584173010.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P15212847669117633823

`Δ[A000225(n)]²%A031215(n+1)`
-/

namespace A176083.P15212847669117633823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A031215 (n + 1))

end

end A176083.P15212847669117633823

namespace A176083

/-- `Δ[A000225(n)]²%A031215(n+1)` -/
def P15212847669117633823.Spec : Prop :=
  ∀ n, P15212847669117633823.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P16538887089340163192

`A131577(n+1)²%A031215(n+1)`
-/

namespace A176083.P16538887089340163192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (n + 1) ^ 2) (A031215 (n + 1))

end

end A176083.P16538887089340163192

namespace A176083

/-- `A131577(n+1)²%A031215(n+1)` -/
def P16538887089340163192.Spec : Prop :=
  ∀ n, P16538887089340163192.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P18133926718616488822

`A131577(2*n+1)%A031215(n+1)`
-/

namespace A176083.P18133926718616488822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (2 * n + 1)) (A031215 (n + 1))

end

end A176083.P18133926718616488822

namespace A176083

/-- `A131577(2*n+1)%A031215(n+1)` -/
def P18133926718616488822.Spec : Prop :=
  ∀ n, P18133926718616488822.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P16410894987407083041

`A011782(n+1)²%A006005(2*(n+1))`
-/

namespace A176083.P16410894987407083041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1) ^ 2) (A006005 (2 * (n + 1)))

end

end A176083.P16410894987407083041

namespace A176083

/-- `A011782(n+1)²%A006005(2*(n+1))` -/
def P16410894987407083041.Spec : Prop :=
  ∀ n, P16410894987407083041.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P2154213527327487341

`A011782(2*n+1)%A006005(2*(n+1))`
-/

namespace A176083.P2154213527327487341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (2 * n + 1)) (A006005 (2 * (n + 1)))

end

end A176083.P2154213527327487341

namespace A176083

/-- `A011782(2*n+1)%A006005(2*(n+1))` -/
def P2154213527327487341.Spec : Prop :=
  ∀ n, P2154213527327487341.a n = A176083 (n + 1)

end A176083

/-! ## A176083.P13094501934059465363

`A038233(A000217(n))%A332806(A080148(n+1))`
-/

namespace A176083.P13094501934059465363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038233 (A000217 n).toNat) (A332806 (A080148 (n + 1)).toNat)

end

end A176083.P13094501934059465363

namespace A176083

/-- `A038233(A000217(n))%A332806(A080148(n+1))` -/
def P13094501934059465363.Spec : Prop :=
  ∀ n, P13094501934059465363.a n = A176083 (n + 1)

end A176083

/-!
# A176084: Row sums of A175105.

The programs for A176084, there is no canonical definition to state claims against.
-/

/-! ## A176084.P17702148959423753133

`∑[A081753(∑[A005056(n)])]`
-/

namespace A176084.P17702148959423753133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176084.P17702148959423753133

/-! ## A176084.P4514703321769028407

`A026834(A126360(n))`
-/

namespace A176084.P4514703321769028407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A126360 n).toNat

end

end A176084.P4514703321769028407

/-! ## A176084.P9470251141725650779

`A004788(A149824(n+1))`
-/

namespace A176084.P9470251141725650779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A149824 (n + 1)).toNat

end

end A176084.P9470251141725650779

/-!
# A176085: a(n) = A136431(n,n).

The programs for A176085, the canonical program `A176085.P18095810620596158957` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176085 has offset 0).

The definition of A176085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176085.P10391033073516767945

`A000045(3*n)-A054441(n)`
-/

namespace A176085.P10391033073516767945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) - A054441 n

end

end A176085.P10391033073516767945

namespace A176085

/-- `A000045(3*n)-A054441(n)` -/
def P10391033073516767945.Spec : Prop :=
  ∀ n, P10391033073516767945.a n = A176085 n

end A176085

/-! ## A176085.P18095810620596158957

`4*a(n-1)+a(n-2)-C(2*n-4, n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176085

/-- `4*a(n-1)+a(n-2)-C(2*n-4, n-2)` -/
def P18095810620596158957.Spec : Prop :=
  ∀ n, P18095810620596158957.a n = A176085 n

theorem P18095810620596158957.correct : P18095810620596158957.Spec := by
  intro n
  simp only [A176085]

end A176085

/-! ## A176085.P6367450199897303351

`A010756(A008486(n)-1)`
-/

namespace A176085.P6367450199897303351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A008486 n - 1).toNat

end

end A176085.P6367450199897303351

namespace A176085

/-- `A010756(A008486(n)-1)` -/
def P6367450199897303351.Spec : Prop :=
  ∀ n, P6367450199897303351.a n = A176085 n

end A176085

/-! ## A176085.P4232823861025940422

`A010756(A004273(n)+n)`
-/

namespace A176085.P4232823861025940422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A004273 n + (n : ℤ)).toNat

end

end A176085.P4232823861025940422

namespace A176085

/-- `A010756(A004273(n)+n)` -/
def P4232823861025940422.Spec : Prop :=
  ∀ n, P4232823861025940422.a n = A176085 n

end A176085

/-! ## A176085.P8916278533208986040

`A000984(n)-A081696(n)`
-/

namespace A176085.P8916278533208986040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A081696 n

end

end A176085.P8916278533208986040

namespace A176085

/-- `A000984(n)-A081696(n)` -/
def P8916278533208986040.Spec : Prop :=
  ∀ n, P8916278533208986040.a n = A176085 n

theorem P8916278533208986040.correct : P8916278533208986040.Spec := by
  intro n
  simp only [A176085, Nat.add_sub_cancel, A176085.P8916278533208986040.a, A176085.P18095810620596158957.a, A000984, A000984.P7946844122574426130.a, A081696, A081696.P144682512311677634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176085

/-! ## A176085.P10965663073892556544

`record[A126869(n)]-A081696(n)`
-/

namespace A176085.P10965663073892556544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081696 n

end

end A176085.P10965663073892556544

namespace A176085

/-- `record[A126869(n)]-A081696(n)` -/
def P10965663073892556544.Spec : Prop :=
  ∀ n, P10965663073892556544.a n = A176085 n

end A176085

/-! ## A176085.P13912177312976379409

`record[A126930(n)]-A081696(n)`
-/

namespace A176085.P13912177312976379409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081696 n

end

end A176085.P13912177312976379409

namespace A176085

/-- `record[A126930(n)]-A081696(n)` -/
def P13912177312976379409.Spec : Prop :=
  ∀ n, P13912177312976379409.a n = A176085 n

end A176085

/-! ## A176085.P1887935675628815855

`A010756(A008574(n)-(n+1))`
-/

namespace A176085.P1887935675628815855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A008574 n - (n + 1 : ℤ)).toNat

end

end A176085.P1887935675628815855

namespace A176085

/-- `A010756(A008574(n)-(n+1))` -/
def P1887935675628815855.Spec : Prop :=
  ∀ n, P1887935675628815855.a n = A176085 n

end A176085

/-! ## A176085.P9232580462819312343

`A010756(A008574(n)-1-n)`
-/

namespace A176085.P9232580462819312343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A008574 n - 1 - (n : ℤ)).toNat

end

end A176085.P9232580462819312343

namespace A176085

/-- `A010756(A008574(n)-1-n)` -/
def P9232580462819312343.Spec : Prop :=
  ∀ n, P9232580462819312343.a n = A176085 n

end A176085

/-! ## A176085.P2499063337977024270

`A001405(2*n)-A081696(n)`
-/

namespace A176085.P2499063337977024270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A081696 n

end

end A176085.P2499063337977024270

namespace A176085

/-- `A001405(2*n)-A081696(n)` -/
def P2499063337977024270.Spec : Prop :=
  ∀ n, P2499063337977024270.a n = A176085 n

end A176085

/-! ## A176085.P8536640650582024509

`A081668(2*n)-A081696(n)`
-/

namespace A176085.P8536640650582024509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A081696 n

end

end A176085.P8536640650582024509

namespace A176085

/-- `A081668(2*n)-A081696(n)` -/
def P8536640650582024509.Spec : Prop :=
  ∀ n, P8536640650582024509.a n = A176085 n

end A176085

/-! ## A176085.P5033556359198975390

`A126869(2*n)-A081696(n)`
-/

namespace A176085.P5033556359198975390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A081696 n

end

end A176085.P5033556359198975390

namespace A176085

/-- `A126869(2*n)-A081696(n)` -/
def P5033556359198975390.Spec : Prop :=
  ∀ n, P5033556359198975390.a n = A176085 n

end A176085

/-! ## A176085.P1608590065564639871

`A126930(2*n)-A081696(n)`
-/

namespace A176085.P1608590065564639871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A081696 n

end

end A176085.P1608590065564639871

namespace A176085

/-- `A126930(2*n)-A081696(n)` -/
def P1608590065564639871.Spec : Prop :=
  ∀ n, P1608590065564639871.a n = A176085 n

end A176085

/-! ## A176085.P11038685676080686675

`A010756(A052938(A008458(n))-2)`
-/

namespace A176085.P11038685676080686675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A052938 (A008458 n).toNat - 2).toNat

end

end A176085.P11038685676080686675

namespace A176085

/-- `A010756(A052938(A008458(n))-2)` -/
def P11038685676080686675.Spec : Prop :=
  ∀ n, P11038685676080686675.a n = A176085 n

end A176085

/-! ## A176085.P13578772649388195008

`A010756(A008706(n)-A005408(n))`
-/

namespace A176085.P13578772649388195008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A008706 n - A005408 n).toNat

end

end A176085.P13578772649388195008

namespace A176085

/-- `A010756(A008706(n)-A005408(n))` -/
def P13578772649388195008.Spec : Prop :=
  ∀ n, P13578772649388195008.a n = A176085 n

end A176085

/-! ## A176085.P12413850849880446119

`A010756(A008585(n)-A057427(n))`
-/

namespace A176085.P12413850849880446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A008585 n - A057427 n).toNat

end

end A176085.P12413850849880446119

namespace A176085

/-- `A010756(A008585(n)-A057427(n))` -/
def P12413850849880446119.Spec : Prop :=
  ∀ n, P12413850849880446119.a n = A176085 n

end A176085

/-! ## A176085.P2356819054008091546

`A277287(n)-A108081(n)`
-/

namespace A176085.P2356819054008091546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A108081 n

end

end A176085.P2356819054008091546

namespace A176085

/-- `A277287(n)-A108081(n)` -/
def P2356819054008091546.Spec : Prop :=
  ∀ n, P2356819054008091546.a n = A176085 n

theorem P2356819054008091546.correct : P2356819054008091546.Spec := by
  intro n
  simp only [A176085, Nat.add_sub_cancel, A176085.P2356819054008091546.a, A176085.P18095810620596158957.a, A108081, A108081.P10199581490510874834.a, A277287, A277287.P3519925831238150495.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, A257838, A257838.P9432177341719237820.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A081696, A081696.P144682512311677634.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176085

/-! ## A176085.P9309010898939858632

`A108081(n)-A371870(n)`
-/

namespace A176085.P9309010898939858632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 n - A371870 n

end

end A176085.P9309010898939858632

namespace A176085

/-- `A108081(n)-A371870(n)` -/
def P9309010898939858632.Spec : Prop :=
  ∀ n, P9309010898939858632.a n = A176085 n

theorem P9309010898939858632.correct : P9309010898939858632.Spec := by
  intro n
  simp only [A176085, Nat.add_sub_cancel, A176085.P9309010898939858632.a, A176085.P18095810620596158957.a, A108081, A108081.P10199581490510874834.a, A371870, A371870.P16935794293074856516.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, A109262, A109262.P3635105755243385556.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A081696, A081696.P144682512311677634.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176085

/-! ## A176085.P3258526473611795281

`A010756(3*n+1)-A010756(3*n)`
-/

namespace A176085.P3258526473611795281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (3 * n + 1) - A010756 (3 * n)

end

end A176085.P3258526473611795281

namespace A176085

/-- `A010756(3*n+1)-A010756(3*n)` -/
def P3258526473611795281.Spec : Prop :=
  ∀ n, P3258526473611795281.a n = A176085 n

end A176085

/-! ## A176085.P11759147025223415306

`A000984(n)+A257838(n)-A108081(n)`
-/

namespace A176085.P11759147025223415306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A257838 n - A108081 n)

end

end A176085.P11759147025223415306

namespace A176085

/-- `A000984(n)+A257838(n)-A108081(n)` -/
def P11759147025223415306.Spec : Prop :=
  ∀ n, P11759147025223415306.a n = A176085 n

theorem P11759147025223415306.correct : P11759147025223415306.Spec := by
  intro n
  simp only [A176085, Nat.add_sub_cancel, A176085.P11759147025223415306.a, A176085.P18095810620596158957.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A257838, A257838.P9432177341719237820.a, A028329, A028329.P2723209719397665586.a, A081696, A081696.P144682512311677634.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176085

/-!
# A176086: Partial sums of A001394.

The programs for A176086, there is no canonical definition to state claims against.
-/

/-! ## A176086.P16669871912463058138

`∑[A001394(n)]`
-/

namespace A176086.P16669871912463058138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176086.P16669871912463058138

/-! ## A176086.P13922302126112679799

`A001394(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A176086.P13922302126112679799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001394 n + a (A023443 n).toNat

end

end A176086.P13922302126112679799

/-! ## A176086.P9839923231820524802

`A001394(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A176086.P9839923231820524802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001394 (A004526 (2 * n)).toNat + a (n - 1)

end

end A176086.P9839923231820524802

/-! ## A176086.P2579761901627263610

`A001394(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A176086.P2579761901627263610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001394 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A176086.P2579761901627263610

/-! ## A176086.P1847914983244148347

`A001394(n)+a((A036090(n)-2)%n)` with `a(0)=1`
-/

namespace A176086.P1847914983244148347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001394 n + a (Int.tmod (A036090 n - 2) (n : ℤ)).toNat

end

end A176086.P1847914983244148347

/-!
# A176088: Table T(n,k) = ceiling(10^n/(10^k-1)), n >= 0, k >= 1, read by antidiagonals.

The programs for A176088, the canonical program `A176088.P5274506219349147848` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176088 has offset 0).

The definition of A176088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10^(row(n)-col(n))/(10^(col(n)+1)-1))` (program `A176088.P5274506219349147848`, by `A176088.P5274506219349147848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176088.P5274506219349147848

`ceil(10^(row(n)-col(n))/(10^(col(n)+1)-1))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176088

/-- `ceil(10^(row(n)-col(n))/(10^(col(n)+1)-1))` -/
def P5274506219349147848.Spec : Prop :=
  ∀ n, P5274506219349147848.a n = A176088 n

theorem P5274506219349147848.correct : P5274506219349147848.Spec := by
  intro n
  simp only [A176088]

end A176088

/-! ## A176088.P5559648177385807785

`A004185(ceil(ratio[A213057(n)]))`
-/

namespace A176088.P5559648177385807785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A176088.P5559648177385807785

namespace A176088

/-- `A004185(ceil(ratio[A213057(n)]))` -/
def P5559648177385807785.Spec : Prop :=
  ∀ n, P5559648177385807785.a n = A176088 n

end A176088

/-! ## A176088.P2166447129779380420

`gcd(ceil(sqrt(8*(n+1)))%2, A350293(n+1))`
-/

namespace A176088.P2166447129779380420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2) (A350293 (n + 1))

end

end A176088.P2166447129779380420

namespace A176088

/-- `gcd(ceil(sqrt(8*(n+1)))%2, A350293(n+1))` -/
def P2166447129779380420.Spec : Prop :=
  ∀ n, (P2166447129779380420.a n : ℤ) = A176088 n

end A176088

/-!
# A176093: Triangle, T(n, k) = Sum_{j=0..k} (-1)^j*(n+k)!/((n-j)!*(k -j)!*j!) + Sum_{j=0..n-k} (-1)^j*(2*n-k)!/((n-j)!*(n-k-j)!*j!), read by rows.

The programs for A176093, there is no canonical definition to state claims against.
-/

/-! ## A176093.P10158323942196458792

`A176092(A061579(n))+A176092(n)`
-/

namespace A176093.P10158323942196458792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176092 (A061579 n).toNat + A176092 n

end

end A176093.P10158323942196458792

/-! ## A176093.P9604182216444440135

`A176092(A114327(n)+n)+A176092(n)`
-/

namespace A176093.P9604182216444440135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176092 (A114327 n + (n : ℤ)).toNat + A176092 n

end

end A176093.P9604182216444440135

/-! ## A176093.P17974370399607334238

`A176092(A038722(n+1)-1)+A176092(n)`
-/

namespace A176093.P17974370399607334238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176092 (A038722 (n + 1) - 1).toNat + A176092 n

end

end A176093.P17974370399607334238

/-! ## A176093.P15470262473789052041

`A176092(A002378(n)%A014132(n+1))+A176092(n)`
-/

namespace A176093.P15470262473789052041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176092 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat + A176092 n

end

end A176093.P15470262473789052041

/-! ## A176093.P14161210370783039075

`A176092(A038722(n+2))+A176092(n)`
-/

namespace A176093.P14161210370783039075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176092 (A038722 (n + 2)).toNat + A176092 n

end

end A176093.P14161210370783039075

/-!
# A176094: Triangle, read by rows, T(n,k) = f(n,k) - f(n,0) + 1, where f(n, k) = Sum_{j=0..k} (-1)^j*(n+k)!/((n-j)!*(k-j)!*j!) + Sum_{j=0..n-k} (-1)^j*(2*n - k)!/((n-j)!*(n-k-j)!*j!).

The programs for A176094, there is no canonical definition to state claims against.
-/

/-! ## A176094.P14344225318702949046

`A176093(n)-A176092(A025581(n)+n)`
-/

namespace A176094.P14344225318702949046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176093 n - A176092 (A025581 n + (n : ℤ)).toNat

end

end A176094.P14344225318702949046

/-! ## A176094.P7231792489500628308

`A229044((2*n+3)%A250263(n))`
-/

namespace A176094.P7231792489500628308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229044 (Int.tmod (2 * n + 3 : ℤ) (A250263 n)).toNat

end

end A176094.P7231792489500628308

/-! ## A176094.P11479678844901320096

`A229044(A000108(∏{e}[A185072(n), #]))`
-/

namespace A176094.P11479678844901320096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229044 (A000108 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)).toNat

end

end A176094.P11479678844901320096

/-! ## A176094.P3962860393740066048

`A279010(and(A350623(n+1), A350632(n)))`
-/

namespace A176094.P3962860393740066048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279010 (Int.land (A350623 (n + 1)) (A350632 n)).toNat

end

end A176094.P3962860393740066048

/-!
# A176095: a(n) = n - phi(2*n), where phi() is the Euler totient A000010().

The programs for A176095, the canonical program `A176095.P2915123819155161039` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176095 has offset 1).

The definition of A176095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176095.P1351371339764705264

`n+1-A062570(n+1)`
-/

namespace A176095.P1351371339764705264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062570 (n + 1)

end

end A176095.P1351371339764705264

namespace A176095

/-- `n+1-A062570(n+1)` -/
def P1351371339764705264.Spec : Prop :=
  ∀ n, P1351371339764705264.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P2915123819155161039

`n+1-A000010(2*(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A176095

/-- `n+1-A000010(2*(n+1))` -/
def P2915123819155161039.Spec : Prop :=
  ∀ n, P2915123819155161039.a n = A176095 (n + 1)

theorem P2915123819155161039.correct : P2915123819155161039.Spec := by
  intro n
  simp only [A176095, Nat.add_sub_cancel]

end A176095

/-! ## A176095.P6605831437132057144

`1-Δ[A049690(n)]+n`
-/

namespace A176095.P6605831437132057144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A176095.P6605831437132057144

namespace A176095

/-- `1-Δ[A049690(n)]+n` -/
def P6605831437132057144.Spec : Prop :=
  ∀ n, P6605831437132057144.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P14953570010789526048

`A053196(n+1)-(n+1)`
-/

namespace A176095.P14953570010789526048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (n + 1) - (n + 1 : ℤ)

end

end A176095.P14953570010789526048

namespace A176095

/-- `A053196(n+1)-(n+1)` -/
def P14953570010789526048.Spec : Prop :=
  ∀ n, P14953570010789526048.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P15886254613354820992

`A053158(2*(n+1))%(n+1)`
-/

namespace A176095.P15886254613354820992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053158 (2 * (n + 1))) (n + 1 : ℤ)

end

end A176095.P15886254613354820992

namespace A176095

/-- `A053158(2*(n+1))%(n+1)` -/
def P15886254613354820992.Spec : Prop :=
  ∀ n, P15886254613354820992.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P5715779376583972445

`A345091(2*(n+1))%(n+1)`
-/

namespace A176095.P5715779376583972445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345091 (2 * (n + 1))) (n + 1 : ℤ)

end

end A176095.P5715779376583972445

namespace A176095

/-- `A345091(2*(n+1))%(n+1)` -/
def P5715779376583972445.Spec : Prop :=
  ∀ n, P5715779376583972445.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P5564647410706209626

`Δ[a(n-1)-(A000010(2*n)-n)]` with `a(0)=0`
-/

namespace A176095.P5564647410706209626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (A000010 (2 * n) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176095.P5564647410706209626

namespace A176095

/-- `Δ[a(n-1)-(A000010(2*n)-n)]` -/
def P5564647410706209626.Spec : Prop :=
  ∀ n, P5564647410706209626.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P18079830788225145455

`Δ[A000290(n)-A049690(n)]-n`
-/

namespace A176095.P18079830788225145455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A176095.P18079830788225145455

namespace A176095

/-- `Δ[A000290(n)-A049690(n)]-n` -/
def P18079830788225145455.Spec : Prop :=
  ∀ n, P18079830788225145455.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P12963164553087592346

`Δ[n-A049690(n)-A080956(n)]`
-/

namespace A176095.P12963164553087592346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049690 n - A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176095.P12963164553087592346

namespace A176095

/-- `Δ[n-A049690(n)-A080956(n)]` -/
def P12963164553087592346.Spec : Prop :=
  ∀ n, P12963164553087592346.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P1653982902338604157

`Δ[A087475(n)-A049690(n)]-n`
-/

namespace A176095.P1653982902338604157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n - A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A176095.P1653982902338604157

namespace A176095

/-- `Δ[A087475(n)-A049690(n)]-n` -/
def P1653982902338604157.Spec : Prop :=
  ∀ n, P1653982902338604157.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P6734443780737258696

`Δ[A114962(n)-A049690(n)]-n`
-/

namespace A176095.P6734443780737258696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n - A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A176095.P6734443780737258696

namespace A176095

/-- `Δ[A114962(n)-A049690(n)]-n` -/
def P6734443780737258696.Spec : Prop :=
  ∀ n, P6734443780737258696.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P12043667129900395731

`A024000(A000010(2*(n+1)))+n`
-/

namespace A176095.P12043667129900395731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A000010 (2 * (n + 1))).toNat + (n : ℤ)

end

end A176095.P12043667129900395731

namespace A176095

/-- `A024000(A000010(2*(n+1)))+n` -/
def P12043667129900395731.Spec : Prop :=
  ∀ n, P12043667129900395731.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P16244191316970344807

`A053196(n+1)%A000027(n+1)`
-/

namespace A176095.P16244191316970344807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053196 (n + 1)) (A000027 (n + 1))

end

end A176095.P16244191316970344807

namespace A176095

/-- `A053196(n+1)%A000027(n+1)` -/
def P16244191316970344807.Spec : Prop :=
  ∀ n, P16244191316970344807.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P9017029363362569397

`A106832(n+1)%A121048(n+1)`
-/

namespace A176095.P9017029363362569397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106832 (n + 1)) (A121048 (n + 1))

end

end A176095.P9017029363362569397

namespace A176095

/-- `A106832(n+1)%A121048(n+1)` -/
def P9017029363362569397.Spec : Prop :=
  ∀ n, P9017029363362569397.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P12538216695630262635

`A318841(n+1)-A319341(2*(n+1))`
-/

namespace A176095.P12538216695630262635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (n + 1) - A319341 (2 * (n + 1))

end

end A176095.P12538216695630262635

namespace A176095

/-- `A318841(n+1)-A319341(2*(n+1))` -/
def P12538216695630262635.Spec : Prop :=
  ∀ n, P12538216695630262635.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P10502746248429197519

`A378986(n+1)/2-A378986(n+1)`
-/

namespace A176095.P10502746248429197519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378986 (n + 1) : ℚ) / 2 - (A378986 (n + 1) : ℚ)

end

end A176095.P10502746248429197519

namespace A176095

/-- `A378986(n+1)/2-A378986(n+1)` -/
def P10502746248429197519.Spec : Prop :=
  ∀ n, P10502746248429197519.a n = (A176095 (n + 1) : ℚ)

end A176095

/-! ## A176095.P3669914683094438963

`A300239(2*(n+1))-A300721(2*(n+1))`
-/

namespace A176095.P3669914683094438963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (2 * (n + 1)) - A300721 (2 * (n + 1))

end

end A176095.P3669914683094438963

namespace A176095

/-- `A300239(2*(n+1))-A300721(2*(n+1))` -/
def P3669914683094438963.Spec : Prop :=
  ∀ n, P3669914683094438963.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P1035657944719380412

`A300722(2*(n+1))-A300236(2*(n+1))`
-/

namespace A176095.P1035657944719380412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300722 (2 * (n + 1)) - A300236 (2 * (n + 1))

end

end A176095.P1035657944719380412

namespace A176095

/-- `A300722(2*(n+1))-A300236(2*(n+1))` -/
def P1035657944719380412.Spec : Prop :=
  ∀ n, P1035657944719380412.a n = A176095 (n + 1)

end A176095

/-! ## A176095.P2968625232367682881

`(A204455(n+1)-A173557(n+1))*A357689(n+1)`
-/

namespace A176095.P2968625232367682881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204455 (n + 1) - A173557 (n + 1)) * A357689 (n + 1)

end

end A176095.P2968625232367682881

namespace A176095

/-- `(A204455(n+1)-A173557(n+1))*A357689(n+1)` -/
def P2968625232367682881.Spec : Prop :=
  ∀ n, P2968625232367682881.a n = A176095 (n + 1)

end A176095

/-!
# A176097: Degree of the hyperdeterminant of the cubic format (k+1) X (k+1) X (k+1).

The programs for A176097, there is no canonical definition to state claims against.
-/

/-! ## A176097.P15385390288423818044

`(n+1)²*(8*A000172(n)-A000172(n+1))/6`
-/

namespace A176097.P15385390288423818044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (8 * A000172 n - A000172 (n + 1)) : ℚ) / 6

end

end A176097.P15385390288423818044

/-! ## A176097.P589982395182560300

`(n+1)²*A381676(n)`
-/

namespace A176097.P589982395182560300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A381676 n

end

end A176097.P589982395182560300

/-!
# A176098: a(n) = prime(n) times the n-th nonnegative noncomposite.

The programs for A176098, the canonical program `A176098.P6245199818631758483` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176098 has offset 1).

The definition of A176098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176098.P6245199818631758483

`A000040(n+1)*A158611(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176098

/-- `A000040(n+1)*A158611(n+1)` -/
def P6245199818631758483.Spec : Prop :=
  ∀ n, P6245199818631758483.a n = A176098 (n + 1)

theorem P6245199818631758483.correct : P6245199818631758483.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel]

end A176098

/-! ## A176098.P14793473083105401991

`Δ[A007504(n)]*record[A259153(n)]`
-/

namespace A176098.P14793473083105401991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A176098.P14793473083105401991

namespace A176098

/-- `Δ[A007504(n)]*record[A259153(n)]` -/
def P14793473083105401991.Spec : Prop :=
  ∀ n, P14793473083105401991.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P10078007056864602812

`Δ[A007504(n)]*A158611(n+1)`
-/

namespace A176098.P10078007056864602812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A158611 (n + 1)

end

end A176098.P10078007056864602812

namespace A176098

/-- `Δ[A007504(n)]*A158611(n+1)` -/
def P10078007056864602812.Spec : Prop :=
  ∀ n, P10078007056864602812.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P8485616417012155156

`record[A259153(n)]*A000040(n+1)`
-/

namespace A176098.P8485616417012155156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000040 (n + 1)

end

end A176098.P8485616417012155156

namespace A176098

/-- `record[A259153(n)]*A000040(n+1)` -/
def P8485616417012155156.Spec : Prop :=
  ∀ n, P8485616417012155156.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P4302486840720896393

`record[A259153(n)]*A006005(n+1)`
-/

namespace A176098.P4302486840720896393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006005 (n + 1)

end

end A176098.P4302486840720896393

namespace A176098

/-- `record[A259153(n)]*A006005(n+1)` -/
def P4302486840720896393.Spec : Prop :=
  ∀ n, P4302486840720896393.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P122456570071821606

`A006005(n+1)*A158611(n+1)`
-/

namespace A176098.P122456570071821606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A158611 (n + 1)

end

end A176098.P122456570071821606

namespace A176098

/-- `A006005(n+1)*A158611(n+1)` -/
def P122456570071821606.Spec : Prop :=
  ∀ n, P122456570071821606.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P2238722865945379892

`∑[A054541(n+1)]*record[A259153(n)]`
-/

namespace A176098.P2238722865945379892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A176098.P2238722865945379892

namespace A176098

/-- `∑[A054541(n+1)]*record[A259153(n)]` -/
def P2238722865945379892.Spec : Prop :=
  ∀ n, P2238722865945379892.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P13437573342806471813

`record[A259153(n+2)]*record[A259153(n)]`
-/

namespace A176098.P13437573342806471813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A176098.P13437573342806471813

namespace A176098

/-- `record[A259153(n+2)]*record[A259153(n)]` -/
def P13437573342806471813.Spec : Prop :=
  ∀ n, P13437573342806471813.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P4079924559637935075

`(A006093(n+1)+1)*A158611(n+1)`
-/

namespace A176098.P4079924559637935075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A158611 (n + 1)

end

end A176098.P4079924559637935075

namespace A176098

/-- `(A006093(n+1)+1)*A158611(n+1)` -/
def P4079924559637935075.Spec : Prop :=
  ∀ n, P4079924559637935075.a n = A176098 (n + 1)

theorem P4079924559637935075.correct : P4079924559637935075.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel, A176098.P4079924559637935075.a, A176098.P6245199818631758483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176098

/-! ## A176098.P14341703760214880760

`(A008864(n+1)-1)*A158611(n+1)`
-/

namespace A176098.P14341703760214880760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A158611 (n + 1)

end

end A176098.P14341703760214880760

namespace A176098

/-- `(A008864(n+1)-1)*A158611(n+1)` -/
def P14341703760214880760.Spec : Prop :=
  ∀ n, P14341703760214880760.a n = A176098 (n + 1)

theorem P14341703760214880760.correct : P14341703760214880760.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel, A176098.P14341703760214880760.a, A176098.P6245199818631758483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176098

/-! ## A176098.P8155337233217583122

`(A040976(n+1)+2)*A158611(n+1)`
-/

namespace A176098.P8155337233217583122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A158611 (n + 1)

end

end A176098.P8155337233217583122

namespace A176098

/-- `(A040976(n+1)+2)*A158611(n+1)` -/
def P8155337233217583122.Spec : Prop :=
  ∀ n, P8155337233217583122.a n = A176098 (n + 1)

theorem P8155337233217583122.correct : P8155337233217583122.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel, A176098.P8155337233217583122.a, A176098.P6245199818631758483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176098

/-! ## A176098.P16914585233054273587

`(A095116(n+1)-n)*A158611(n+1)`
-/

namespace A176098.P16914585233054273587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) - (n : ℤ)) * A158611 (n + 1)

end

end A176098.P16914585233054273587

namespace A176098

/-- `(A095116(n+1)-n)*A158611(n+1)` -/
def P16914585233054273587.Spec : Prop :=
  ∀ n, P16914585233054273587.a n = A176098 (n + 1)

theorem P16914585233054273587.correct : P16914585233054273587.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel, A176098.P16914585233054273587.a, A176098.P6245199818631758483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176098

/-! ## A176098.P14345763096463561348

`A000040(n+1)*∪[A000040(n+1), A162840(n)]`
-/

namespace A176098.P14345763096463561348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162840 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A176098.P14345763096463561348

namespace A176098

/-- `A000040(n+1)*∪[A000040(n+1), A162840(n)]` -/
def P14345763096463561348.Spec : Prop :=
  ∀ n, P14345763096463561348.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P15930439456276219400

`(A164653(n+1)-A008578(n+1))*A000040(n+1)`
-/

namespace A176098.P15930439456276219400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164653 (n + 1) - A008578 (n + 1)) * A000040 (n + 1)

end

end A176098.P15930439456276219400

namespace A176098

/-- `(A164653(n+1)-A008578(n+1))*A000040(n+1)` -/
def P15930439456276219400.Spec : Prop :=
  ∀ n, P15930439456276219400.a n = A176098 (n + 1)

theorem P15930439456276219400.correct : P15930439456276219400.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel, A176098.P15930439456276219400.a, A176098.P6245199818631758483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A164653, A164653.P11870517180537955334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176098

/-! ## A176098.P14883673667399086118

`(A176099(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A176098.P14883673667399086118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176099 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A176098.P14883673667399086118

namespace A176098

/-- `(A176099(n+1)-A000040(n+1))*A000040(n+1)` -/
def P14883673667399086118.Spec : Prop :=
  ∀ n, P14883673667399086118.a n = A176098 (n + 1)

theorem P14883673667399086118.correct : P14883673667399086118.Spec := by
  intro n
  simp only [A176098, Nat.add_sub_cancel, A176098.P14883673667399086118.a, A176098.P6245199818631758483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A158611, A158611.P9275629407611603775.a, A176099, A176099.P4142844014744046612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176098

/-! ## A176098.P17958577203466825873

`record[A259153(n)]*A008578(n+2)`
-/

namespace A176098.P17958577203466825873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A008578 (n + 2)

end

end A176098.P17958577203466825873

namespace A176098

/-- `record[A259153(n)]*A008578(n+2)` -/
def P17958577203466825873.Spec : Prop :=
  ∀ n, P17958577203466825873.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P8831904995225351930

`A008578(n+2)*A158611(n+1)`
-/

namespace A176098.P8831904995225351930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A158611 (n + 1)

end

end A176098.P8831904995225351930

namespace A176098

/-- `A008578(n+2)*A158611(n+1)` -/
def P8831904995225351930.Spec : Prop :=
  ∀ n, P8831904995225351930.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P10158543730963923197

`A158611(n+1)*A182986(n+2)`
-/

namespace A176098.P10158543730963923197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) * A182986 (n + 2)

end

end A176098.P10158543730963923197

namespace A176098

/-- `A158611(n+1)*A182986(n+2)` -/
def P10158543730963923197.Spec : Prop :=
  ∀ n, P10158543730963923197.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P14011280331689994770

`(A164653(n+1)-A008578(n+1))*A008578(n+2)`
-/

namespace A176098.P14011280331689994770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164653 (n + 1) - A008578 (n + 1)) * A008578 (n + 2)

end

end A176098.P14011280331689994770

namespace A176098

/-- `(A164653(n+1)-A008578(n+1))*A008578(n+2)` -/
def P14011280331689994770.Spec : Prop :=
  ∀ n, P14011280331689994770.a n = A176098 (n + 1)

end A176098

/-! ## A176098.P2183463794434540121

`(A176099(n+1)-A008578(n+2))*A008578(n+2)`
-/

namespace A176098.P2183463794434540121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176099 (n + 1) - A008578 (n + 2)) * A008578 (n + 2)

end

end A176098.P2183463794434540121

namespace A176098

/-- `(A176099(n+1)-A008578(n+2))*A008578(n+2)` -/
def P2183463794434540121.Spec : Prop :=
  ∀ n, P2183463794434540121.a n = A176098 (n + 1)

end A176098

/-!
# A176099: Prime(n) + A158611(n).

The programs for A176099, the canonical program `A176099.P4142844014744046612` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176099 has offset 1).

The definition of A176099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176099.P4142844014744046612

`A000040(n+1)+A158611(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176099

/-- `A000040(n+1)+A158611(n+1)` -/
def P4142844014744046612.Spec : Prop :=
  ∀ n, P4142844014744046612.a n = A176099 (n + 1)

theorem P4142844014744046612.correct : P4142844014744046612.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel]

end A176099

/-! ## A176099.P10291595406347352437

`A048448(n)+char[1]`
-/

namespace A176099.P10291595406347352437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176099.P10291595406347352437

namespace A176099

/-- `A048448(n)+char[1]` -/
def P10291595406347352437.Spec : Prop :=
  ∀ n, P10291595406347352437.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P8091074274359557689

`A063524(n)+A048448(n)`
-/

namespace A176099.P8091074274359557689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A048448 n

end

end A176099.P8091074274359557689

namespace A176099

/-- `A063524(n)+A048448(n)` -/
def P8091074274359557689.Spec : Prop :=
  ∀ n, P8091074274359557689.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P16701965462272217923

`A076368(n+1)+A076273(n)`
-/

namespace A176099.P16701965462272217923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + A076273 n

end

end A176099.P16701965462272217923

namespace A176099

/-- `A076368(n+1)+A076273(n)` -/
def P16701965462272217923.Spec : Prop :=
  ∀ n, P16701965462272217923.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P14434250430133725125

`A164653(n+1)+A075526(n)`
-/

namespace A176099.P14434250430133725125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) + A075526 n

end

end A176099.P14434250430133725125

namespace A176099

/-- `A164653(n+1)+A075526(n)` -/
def P14434250430133725125.Spec : Prop :=
  ∀ n, P14434250430133725125.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P9332083637091600550

`record[A259153(n)]+Δ[A007504(n)]`
-/

namespace A176099.P9332083637091600550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A176099.P9332083637091600550

namespace A176099

/-- `record[A259153(n)]+Δ[A007504(n)]` -/
def P9332083637091600550.Spec : Prop :=
  ∀ n, P9332083637091600550.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P12458149115952268092

`A158611(n+1)+Δ[A007504(n)]`
-/

namespace A176099.P12458149115952268092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + (f1 (n + 1) - f1 n)

end

end A176099.P12458149115952268092

namespace A176099

/-- `A158611(n+1)+Δ[A007504(n)]` -/
def P12458149115952268092.Spec : Prop :=
  ∀ n, P12458149115952268092.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P16412876466975919690

`A000040(n+1)+record[A259153(n)]`
-/

namespace A176099.P16412876466975919690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176099.P16412876466975919690

namespace A176099

/-- `A000040(n+1)+record[A259153(n)]` -/
def P16412876466975919690.Spec : Prop :=
  ∀ n, P16412876466975919690.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P1366932165800345608

`A173137(n+1)+A014689(n+1)`
-/

namespace A176099.P1366932165800345608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (n + 1) + A014689 (n + 1)

end

end A176099.P1366932165800345608

namespace A176099

/-- `A173137(n+1)+A014689(n+1)` -/
def P1366932165800345608.Spec : Prop :=
  ∀ n, P1366932165800345608.a n = A176099 (n + 1)

theorem P1366932165800345608.correct : P1366932165800345608.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel, A176099.P1366932165800345608.a, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, A158611, A158611.P9275629407611603775.a, A173137, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176099

/-! ## A176099.P8483199662599960838

`record[A259153(n)]+∑[A054541(n+1)]`
-/

namespace A176099.P8483199662599960838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A176099.P8483199662599960838

namespace A176099

/-- `record[A259153(n)]+∑[A054541(n+1)]` -/
def P8483199662599960838.Spec : Prop :=
  ∀ n, P8483199662599960838.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P17426407923514199021

`A006093(n+1)+A158611(n+1)+1`
-/

namespace A176099.P17426407923514199021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A158611 (n + 1) + 1)

end

end A176099.P17426407923514199021

namespace A176099

/-- `A006093(n+1)+A158611(n+1)+1` -/
def P17426407923514199021.Spec : Prop :=
  ∀ n, P17426407923514199021.a n = A176099 (n + 1)

theorem P17426407923514199021.correct : P17426407923514199021.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel, A176099.P17426407923514199021.a, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176099

/-! ## A176099.P6817697861506855099

`A008864(n+1)+A158611(n+1)-1`
-/

namespace A176099.P6817697861506855099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A158611 (n + 1) - 1)

end

end A176099.P6817697861506855099

namespace A176099

/-- `A008864(n+1)+A158611(n+1)-1` -/
def P6817697861506855099.Spec : Prop :=
  ∀ n, P6817697861506855099.a n = A176099 (n + 1)

theorem P6817697861506855099.correct : P6817697861506855099.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel, A176099.P6817697861506855099.a, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176099

/-! ## A176099.P17248629834649029863

`A040976(n+1)+A158611(n+1)+2`
-/

namespace A176099.P17248629834649029863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A158611 (n + 1) + 2)

end

end A176099.P17248629834649029863

namespace A176099

/-- `A040976(n+1)+A158611(n+1)+2` -/
def P17248629834649029863.Spec : Prop :=
  ∀ n, P17248629834649029863.a n = A176099 (n + 1)

theorem P17248629834649029863.correct : P17248629834649029863.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel, A176099.P17248629834649029863.a, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176099

/-! ## A176099.P11983928808203658362

`A095116(n+1)+A158611(n+1)-n`
-/

namespace A176099.P11983928808203658362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + (A158611 (n + 1) - (n : ℤ))

end

end A176099.P11983928808203658362

namespace A176099

/-- `A095116(n+1)+A158611(n+1)-n` -/
def P11983928808203658362.Spec : Prop :=
  ∀ n, P11983928808203658362.a n = A176099 (n + 1)

theorem P11983928808203658362.correct : P11983928808203658362.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel, A176099.P11983928808203658362.a, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176099

/-! ## A176099.P16503757831772506852

`A008578(A028310(n))+A006005(n+1)`
-/

namespace A176099.P16503757831772506852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A028310 n).toNat + A006005 (n + 1)

end

end A176099.P16503757831772506852

namespace A176099

/-- `A008578(A028310(n))+A006005(n+1)` -/
def P16503757831772506852.Spec : Prop :=
  ∀ n, P16503757831772506852.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P18031464459976073344

`∪[A000040(n+1), A162840(n)]+A000040(n+1)`
-/

namespace A176099.P18031464459976073344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162840 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) + A000040 (n + 1)

end

end A176099.P18031464459976073344

namespace A176099

/-- `∪[A000040(n+1), A162840(n)]+A000040(n+1)` -/
def P18031464459976073344.Spec : Prop :=
  ∀ n, P18031464459976073344.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P1859566263526125020

`A000040(n+1)+A164653(n+1)-A008578(n+1)`
-/

namespace A176099.P1859566263526125020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A164653 (n + 1) - A008578 (n + 1))

end

end A176099.P1859566263526125020

namespace A176099

/-- `A000040(n+1)+A164653(n+1)-A008578(n+1)` -/
def P1859566263526125020.Spec : Prop :=
  ∀ n, P1859566263526125020.a n = A176099 (n + 1)

theorem P1859566263526125020.correct : P1859566263526125020.Spec := by
  intro n
  simp only [A176099, Nat.add_sub_cancel, A176099.P1859566263526125020.a, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A164653, A164653.P11870517180537955334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176099

/-! ## A176099.P13142073093607236284

`A000040(n+1)+A176098(n+1)/A000040(n+1)`
-/

namespace A176099.P13142073093607236284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A176098 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A176099.P13142073093607236284

namespace A176099

/-- `A000040(n+1)+A176098(n+1)/A000040(n+1)` -/
def P13142073093607236284.Spec : Prop :=
  ∀ n, P13142073093607236284.a n = (A176099 (n + 1) : ℚ)

end A176099

/-! ## A176099.P8805979478662433132

`A158611(n+1)+A008578(n+2)`
-/

namespace A176099.P8805979478662433132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A008578 (n + 2)

end

end A176099.P8805979478662433132

namespace A176099

/-- `A158611(n+1)+A008578(n+2)` -/
def P8805979478662433132.Spec : Prop :=
  ∀ n, P8805979478662433132.a n = A176099 (n + 1)

end A176099

/-! ## A176099.P49432876300644218

`A182986(n+2)+A158611(n+1)`
-/

namespace A176099.P49432876300644218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A158611 (n + 1)

end

end A176099.P49432876300644218

namespace A176099

/-- `A182986(n+2)+A158611(n+1)` -/
def P49432876300644218.Spec : Prop :=
  ∀ n, P49432876300644218.a n = A176099 (n + 1)

end A176099

