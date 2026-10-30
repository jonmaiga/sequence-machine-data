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
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A022800: a(n) = F(n+2) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or is a non-Fibonacci number.

The programs for A022800, the canonical program `A022800.P2504383713306654643` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022800 has offset 1).

The definition of A022800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022800.P2504383713306654643

`A020695(n)+A020695(n)-A014242(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022800

/-- `A020695(n)+A020695(n)-A014242(n+1)` -/
def P2504383713306654643.Spec : Prop :=
  ∀ n, P2504383713306654643.a n = A022800 (n + 1)

theorem P2504383713306654643.correct : P2504383713306654643.Spec := by
  intro n
  simp only [A022800, Nat.add_sub_cancel]

end A022800

/-! ## A022800.P13693664237122565323

`A023488(n)-Δ[A001911(n)]`
-/

namespace A022800.P13693664237122565323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n - (f1 (n + 1) - f1 n)

end

end A022800.P13693664237122565323

namespace A022800

/-- `A023488(n)-Δ[A001911(n)]` -/
def P13693664237122565323.Spec : Prop :=
  ∀ n, P13693664237122565323.a n = A022800 (n + 1)

end A022800

/-! ## A022800.P12120685338575362170

`A023488(n)-Δ[A018910(n)]`
-/

namespace A022800.P12120685338575362170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n - (f1 (n + 1) - f1 n)

end

end A022800.P12120685338575362170

namespace A022800

/-- `A023488(n)-Δ[A018910(n)]` -/
def P12120685338575362170.Spec : Prop :=
  ∀ n, P12120685338575362170.a n = A022800 (n + 1)

end A022800

/-! ## A022800.P3642516027791674866

`A023488(n)-Δ[A020695(n)]`
-/

namespace A022800.P3642516027791674866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n - (f1 (n + 1) - f1 n)

end

end A022800.P3642516027791674866

namespace A022800

/-- `A023488(n)-Δ[A020695(n)]` -/
def P3642516027791674866.Spec : Prop :=
  ∀ n, P3642516027791674866.a n = A022800 (n + 1)

end A022800

/-! ## A022800.P9485795694896183129

`A023488(n)-Δ[A048577(n)]`
-/

namespace A022800.P9485795694896183129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n - (f1 (n + 1) - f1 n)

end

end A022800.P9485795694896183129

namespace A022800

/-- `A023488(n)-Δ[A048577(n)]` -/
def P9485795694896183129.Spec : Prop :=
  ∀ n, P9485795694896183129.a n = A022800 (n + 1)

end A022800

/-! ## A022800.P935016934818921252

`A023488(n)-A000045(n+2)`
-/

namespace A022800.P935016934818921252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n - A000045 (n + 2)

end

end A022800.P935016934818921252

namespace A022800

/-- `A023488(n)-A000045(n+2)` -/
def P935016934818921252.Spec : Prop :=
  ∀ n, P935016934818921252.a n = A022800 (n + 1)

theorem P935016934818921252.correct : P935016934818921252.Spec := by
  intro n
  simp only [A022800, Nat.add_sub_cancel, A022800.P935016934818921252.a, A022800.P2504383713306654643.a, A000045, A000045.P11838749114346432762.a, A014242, A014242.P916885412522519883.f1, A014242.P916885412522519883.a, A020695, A020695.P5292720263086745780.a, A023488, A023488.P475559876391436152.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022800

/-! ## A022800.P2281865603011827887

`A078642(n+1)-A014242(n+1)`
-/

namespace A022800.P2281865603011827887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - A014242 (n + 1)

end

end A022800.P2281865603011827887

namespace A022800

/-- `A078642(n+1)-A014242(n+1)` -/
def P2281865603011827887.Spec : Prop :=
  ∀ n, P2281865603011827887.a n = A022800 (n + 1)

end A022800

/-! ## A022800.P1105048856401715567

`2*A020695(n)-A014242(n+1)`
-/

namespace A022800.P1105048856401715567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020695 n - A014242 (n + 1)

end

end A022800.P1105048856401715567

namespace A022800

/-- `2*A020695(n)-A014242(n+1)` -/
def P1105048856401715567.Spec : Prop :=
  ∀ n, P1105048856401715567.a n = A022800 (n + 1)

theorem P1105048856401715567.correct : P1105048856401715567.Spec := by
  intro n
  simp only [A022800, Nat.add_sub_cancel, A022800.P1105048856401715567.a, A022800.P2504383713306654643.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022800

/-! ## A022800.P8005912999879157330

`A023489(n+1)-2*Δ[A001911(n)]`
-/

namespace A022800.P8005912999879157330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023489 (n + 1) - 2 * (f1 (n + 1) - f1 n)

end

end A022800.P8005912999879157330

namespace A022800

/-- `A023489(n+1)-2*Δ[A001911(n)]` -/
def P8005912999879157330.Spec : Prop :=
  ∀ n, P8005912999879157330.a n = A022800 (n + 1)

end A022800

/-! ## A022800.P12863506717513049080

`Δ[A204644(n+1)/2]-A014242(n+1)`
-/

namespace A022800.P12863506717513049080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204644 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A014242 (n + 1) : ℚ)

end

end A022800.P12863506717513049080

namespace A022800

/-- `Δ[A204644(n+1)/2]-A014242(n+1)` -/
def P12863506717513049080.Spec : Prop :=
  ∀ n, P12863506717513049080.a n = (A022800 (n + 1) : ℚ)

end A022800

/-!
# A022801: n-th Lucas number (A000204(n)) + n-th non-Lucas number (A090946(n+1)).

The programs for A022801, the canonical program `A022801.P16114518474310369460` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022801 has offset 1).

The definition of A022801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022801.P16114518474310369460

`A000204(n+1)+A090946(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022801

/-- `A000204(n+1)+A090946(n+2)` -/
def P16114518474310369460.Spec : Prop :=
  ∀ n, P16114518474310369460.a n = A022801 (n + 1)

theorem P16114518474310369460.correct : P16114518474310369460.Spec := by
  intro n
  simp only [A022801, Nat.add_sub_cancel]

end A022801

/-! ## A022801.P1082526675683444677

`A023490(n)+A000045(n)`
-/

namespace A022801.P1082526675683444677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A000045 n

end

end A022801.P1082526675683444677

namespace A022801

/-- `A023490(n)+A000045(n)` -/
def P1082526675683444677.Spec : Prop :=
  ∀ n, P1082526675683444677.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P16729443800299735697

`A023491(n)-A212804(n)`
-/

namespace A022801.P16729443800299735697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - A212804 n

end

end A022801.P16729443800299735697

namespace A022801

/-- `A023491(n)-A212804(n)` -/
def P16729443800299735697.Spec : Prop :=
  ∀ n, P16729443800299735697.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P12514853089874407876

`A023491(n)-Δ[A000045(n)]`
-/

namespace A022801.P12514853089874407876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - (f1 (n + 1) - f1 n)

end

end A022801.P12514853089874407876

namespace A022801

/-- `A023491(n)-Δ[A000045(n)]` -/
def P12514853089874407876.Spec : Prop :=
  ∀ n, P12514853089874407876.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P4319964635253824129

`A212804(n+1)+A023490(n)`
-/

namespace A022801.P4319964635253824129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A023490 n

end

end A022801.P4319964635253824129

namespace A022801

/-- `A212804(n+1)+A023490(n)` -/
def P4319964635253824129.Spec : Prop :=
  ∀ n, P4319964635253824129.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P16086404454144938242

`A001611(n)+A023490(n)-1`
-/

namespace A022801.P16086404454144938242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A023490 n - 1)

end

end A022801.P16086404454144938242

namespace A022801

/-- `A001611(n)+A023490(n)-1` -/
def P16086404454144938242.Spec : Prop :=
  ∀ n, P16086404454144938242.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P14907236661802045629

`A002062(n)+A023490(n)-n`
-/

namespace A022801.P14907236661802045629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (A023490 n - (n : ℤ))

end

end A022801.P14907236661802045629

namespace A022801

/-- `A002062(n)+A023490(n)-n` -/
def P14907236661802045629.Spec : Prop :=
  ∀ n, P14907236661802045629.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P3559582914744169439

`A023490(n)+Δ[A000071(n+1)]`
-/

namespace A022801.P3559582914744169439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (f1 (n + 1) - f1 n)

end

end A022801.P3559582914744169439

namespace A022801

/-- `A023490(n)+Δ[A000071(n+1)]` -/
def P3559582914744169439.Spec : Prop :=
  ∀ n, P3559582914744169439.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P6878518291050817214

`A001612(n+1)+comp[A001610(n)]`
-/

namespace A022801.P6878518291050817214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022801.P6878518291050817214

namespace A022801

/-- `A001612(n+1)+comp[A001610(n)]` -/
def P6878518291050817214.Spec : Prop :=
  ∀ n, P6878518291050817214.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P14536244125277329879

`A090946(n+2)+A000032(n+1)`
-/

namespace A022801.P14536244125277329879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A000032 (n + 1)

end

end A022801.P14536244125277329879

namespace A022801

/-- `A090946(n+2)+A000032(n+1)` -/
def P14536244125277329879.Spec : Prop :=
  ∀ n, P14536244125277329879.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P13673373064382942972

`A090946(n+2)+A090244(2*n)`
-/

namespace A022801.P13673373064382942972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A090244 (2 * n)

end

end A022801.P13673373064382942972

namespace A022801

/-- `A090946(n+2)+A090244(2*n)` -/
def P13673373064382942972.Spec : Prop :=
  ∀ n, P13673373064382942972.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P858474248003227998

`A023491(n)-Δ[Δ[A000071(n+1)]]`
-/

namespace A022801.P858474248003227998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - (f1 (n + 1) - f1 n)

end

end A022801.P858474248003227998

namespace A022801

/-- `A023491(n)-Δ[Δ[A000071(n+1)]]` -/
def P858474248003227998.Spec : Prop :=
  ∀ n, P858474248003227998.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P9729192638871708636

`A000032(n+1)+comp[A001610(n)]+1`
-/

namespace A022801.P9729192638871708636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A022801.P9729192638871708636

namespace A022801

/-- `A000032(n+1)+comp[A001610(n)]+1` -/
def P9729192638871708636.Spec : Prop :=
  ∀ n, P9729192638871708636.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P572008691030865233

`A115339(2*(n+1))+A090946(n+2)`
-/

namespace A022801.P572008691030865233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * (n + 1)) + A090946 (n + 2)

end

end A022801.P572008691030865233

namespace A022801

/-- `A115339(2*(n+1))+A090946(n+2)` -/
def P572008691030865233.Spec : Prop :=
  ∀ n, P572008691030865233.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P4689957450584148336

`A023490(n)+lcm(A167808(n), A167816(n))`
-/

namespace A022801.P4689957450584148336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (Int.lcm (A167808 n) (A167816 n) : ℤ)

end

end A022801.P4689957450584148336

namespace A022801

/-- `A023490(n)+lcm(A167808(n), A167816(n))` -/
def P4689957450584148336.Spec : Prop :=
  ∀ n, P4689957450584148336.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P5360209439810628061

`A000045(n+1)+A023491(n)-A000032(n)`
-/

namespace A022801.P5360209439810628061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A023491 n - A000032 n)

end

end A022801.P5360209439810628061

namespace A022801

/-- `A000045(n+1)+A023491(n)-A000032(n)` -/
def P5360209439810628061.Spec : Prop :=
  ∀ n, P5360209439810628061.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P1705332186472626858

`A000045(n)+A023491(n)-A000045(n+1)`
-/

namespace A022801.P1705332186472626858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A023491 n - A000045 (n + 1))

end

end A022801.P1705332186472626858

namespace A022801

/-- `A000045(n)+A023491(n)-A000045(n+1)` -/
def P1705332186472626858.Spec : Prop :=
  ∀ n, P1705332186472626858.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P3005275612992572013

`A001611(n+2)+A000045(n)+comp[A001610(n)]`
-/

namespace A022801.P3005275612992572013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (A000045 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A022801.P3005275612992572013

namespace A022801

/-- `A001611(n+2)+A000045(n)+comp[A001610(n)]` -/
def P3005275612992572013.Spec : Prop :=
  ∀ n, P3005275612992572013.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P15921556601914586186

`A000045(n+2)+A000045(n)+comp[A001610(n)]+1`
-/

namespace A022801.P15921556601914586186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000045 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A022801.P15921556601914586186

namespace A022801

/-- `A000045(n+2)+A000045(n)+comp[A001610(n)]+1` -/
def P15921556601914586186.Spec : Prop :=
  ∀ n, P15921556601914586186.a n = A022801 (n + 1)

end A022801

/-! ## A022801.P588110430509311297

`A053602(2*n+1)+A090946(n+2)+A053602(2*n)`
-/

namespace A022801.P588110430509311297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + (A090946 (n + 2) + A053602 (2 * n))

end

end A022801.P588110430509311297

namespace A022801

/-- `A053602(2*n+1)+A090946(n+2)+A053602(2*n)` -/
def P588110430509311297.Spec : Prop :=
  ∀ n, P588110430509311297.a n = A022801 (n + 1)

end A022801

/-!
# A022802: a(n) = L(n+1) + c(n) where L(k) = k-th Lucas number and c(n) is n-th number that is 1 or not a Lucas number.

The programs for A022802, the canonical program `A022802.P5209542318991673861` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022802 has offset 1).

The definition of A022802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022802.P3293211304335261374

`A023496(n)-A000045(n)`
-/

namespace A022802.P3293211304335261374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n - A000045 n

end

end A022802.P3293211304335261374

namespace A022802

/-- `A023496(n)-A000045(n)` -/
def P3293211304335261374.Spec : Prop :=
  ∀ n, P3293211304335261374.a n = A022802 (n + 1)

theorem P3293211304335261374.correct : P3293211304335261374.Spec := by
  intro n
  simp only [A022802, Nat.add_sub_cancel, A022802.P3293211304335261374.a, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, A001610, A001610.P768124038299274592.a, A023496, A023496.P2103762783943479263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022802

/-! ## A022802.P1270730971049069744

`A023496(n)+1-A001611(n)`
-/

namespace A022802.P1270730971049069744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + (1 - A001611 n)

end

end A022802.P1270730971049069744

namespace A022802

/-- `A023496(n)+1-A001611(n)` -/
def P1270730971049069744.Spec : Prop :=
  ∀ n, P1270730971049069744.a n = A022802 (n + 1)

theorem P1270730971049069744.correct : P1270730971049069744.Spec := by
  intro n
  simp only [A022802, Nat.add_sub_cancel, A022802.P1270730971049069744.a, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A000032, A000032.P8352177345629330861.a, A001610, A001610.P768124038299274592.a, A001611, A001611.P16593652898942925329.a, A023496, A023496.P2103762783943479263.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022802

/-! ## A022802.P3913988616799589368

`A023496(n)-A212804(n+1)`
-/

namespace A022802.P3913988616799589368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n - A212804 (n + 1)

end

end A022802.P3913988616799589368

namespace A022802

/-- `A023496(n)-A212804(n+1)` -/
def P3913988616799589368.Spec : Prop :=
  ∀ n, P3913988616799589368.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P17498083258904052369

`A023496(n)+n-A002062(n)`
-/

namespace A022802.P17498083258904052369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + ((n : ℤ) - A002062 n)

end

end A022802.P17498083258904052369

namespace A022802

/-- `A023496(n)+n-A002062(n)` -/
def P17498083258904052369.Spec : Prop :=
  ∀ n, P17498083258904052369.a n = A022802 (n + 1)

theorem P17498083258904052369.correct : P17498083258904052369.Spec := by
  intro n
  simp only [A022802, Nat.add_sub_cancel, A022802.P17498083258904052369.a, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A000032, A000032.P8352177345629330861.a, A001610, A001610.P768124038299274592.a, A002062, A002062.P4072436808255348786.a, A023496, A023496.P2103762783943479263.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022802

/-! ## A022802.P5209542318991673861

`∑[A000032(n)]+comp[A001610(n+1)]+2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022802

/-- `∑[A000032(n)]+comp[A001610(n+1)]+2` -/
def P5209542318991673861.Spec : Prop :=
  ∀ n, P5209542318991673861.a n = A022802 (n + 1)

theorem P5209542318991673861.correct : P5209542318991673861.Spec := by
  intro n
  simp only [A022802, Nat.add_sub_cancel]

end A022802

/-! ## A022802.P9974985283164461399

`A022801(A028310(n))+abs(A075193(n))`
-/

namespace A022802.P9974985283164461399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (A028310 n).toNat + |A075193 n|

end

end A022802.P9974985283164461399

namespace A022802

/-- `A022801(A028310(n))+abs(A075193(n))` -/
def P9974985283164461399.Spec : Prop :=
  ∀ n, P9974985283164461399.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P2303501348945858345

`A022801(A028310(n))+A000032(n+1)`
-/

namespace A022802.P2303501348945858345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (A028310 n).toNat + A000032 (n + 1)

end

end A022802.P2303501348945858345

namespace A022802

/-- `A022801(A028310(n))+A000032(n+1)` -/
def P2303501348945858345.Spec : Prop :=
  ∀ n, P2303501348945858345.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P13816314803977475955

`A022801(A028310(n))+A000204(n+1)`
-/

namespace A022802.P13816314803977475955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (A028310 n).toNat + A000204 (n + 1)

end

end A022802.P13816314803977475955

namespace A022802

/-- `A022801(A028310(n))+A000204(n+1)` -/
def P13816314803977475955.Spec : Prop :=
  ∀ n, P13816314803977475955.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P9836888854294841933

`A023496(n)-lcm(A167808(n), A167816(n))`
-/

namespace A022802.P9836888854294841933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n - (Int.lcm (A167808 n) (A167816 n) : ℤ)

end

end A022802.P9836888854294841933

namespace A022802

/-- `A023496(n)-lcm(A167808(n), A167816(n))` -/
def P9836888854294841933.Spec : Prop :=
  ∀ n, P9836888854294841933.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P1357533595963980544

`A023496(n)-Δ[A000032(n)-A212804(n)]`
-/

namespace A022802.P1357533595963980544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n - (f1 (n + 1) - f1 n)

end

end A022802.P1357533595963980544

namespace A022802

/-- `A023496(n)-Δ[A000032(n)-A212804(n)]` -/
def P1357533595963980544.Spec : Prop :=
  ∀ n, P1357533595963980544.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P12487917619816498873

`A023490(n)+A023496(n)-A022801(n+1)`
-/

namespace A022802.P12487917619816498873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (A023496 n - A022801 (n + 1))

end

end A022802.P12487917619816498873

namespace A022802

/-- `A023490(n)+A023496(n)-A022801(n+1)` -/
def P12487917619816498873.Spec : Prop :=
  ∀ n, P12487917619816498873.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P17273290486917837548

`A090946(n+1)+A000032(n)+record[A000032(n)]`
-/

namespace A022802.P17273290486917837548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 1) + (A000032 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A022802.P17273290486917837548

namespace A022802

/-- `A090946(n+1)+A000032(n)+record[A000032(n)]` -/
def P17273290486917837548.Spec : Prop :=
  ∀ n, P17273290486917837548.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P6396673839735367045

`A022801(n+2)+A023496(n)-A023491(n+1)`
-/

namespace A022802.P6396673839735367045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 2) + (A023496 n - A023491 (n + 1))

end

end A022802.P6396673839735367045

namespace A022802

/-- `A022801(n+2)+A023496(n)-A023491(n+1)` -/
def P6396673839735367045.Spec : Prop :=
  ∀ n, P6396673839735367045.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P11551020992518757173

`A023497(n)-A000032(n+1)`
-/

namespace A022802.P11551020992518757173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023497 n - A000032 (n + 1)

end

end A022802.P11551020992518757173

namespace A022802

/-- `A023497(n)-A000032(n+1)` -/
def P11551020992518757173.Spec : Prop :=
  ∀ n, P11551020992518757173.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P13583036906672519573

`A023497(n)-A000204(n+1)`
-/

namespace A022802.P13583036906672519573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023497 n - A000204 (n + 1)

end

end A022802.P13583036906672519573

namespace A022802

/-- `A023497(n)-A000204(n+1)` -/
def P13583036906672519573.Spec : Prop :=
  ∀ n, P13583036906672519573.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P8931671858124292451

`A022112(n+1)-A014244(n+1)`
-/

namespace A022802.P8931671858124292451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (n + 1) - A014244 (n + 1)

end

end A022802.P8931671858124292451

namespace A022802

/-- `A022112(n+1)-A014244(n+1)` -/
def P8931671858124292451.Spec : Prop :=
  ∀ n, P8931671858124292451.a n = A022802 (n + 1)

end A022802

/-! ## A022802.P8909728486801672090

`A090946(n+2)+A023497(n)-A022801(n+1)`
-/

namespace A022802.P8909728486801672090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + (A023497 n - A022801 (n + 1))

end

end A022802.P8909728486801672090

namespace A022802

/-- `A090946(n+2)+A023497(n)-A022801(n+1)` -/
def P8909728486801672090.Spec : Prop :=
  ∀ n, P8909728486801672090.a n = A022802 (n + 1)

end A022802

/-!
# A022803: Numbers that reach ...,7,8,4,2,1 under the mapping: if n is even divide by 2 else add 1.

The programs for A022803, the canonical program `A022803.P8656828766279880858` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022803 has offset 1).

The definition of A022803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022803.P8656828766279880858

`A004758(n+2)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022803

/-- `A004758(n+2)+1` -/
def P8656828766279880858.Spec : Prop :=
  ∀ n, P8656828766279880858.a n = A022803 (n + 1)

theorem P8656828766279880858.correct : P8656828766279880858.Spec := by
  intro n
  simp only [A022803, Nat.add_sub_cancel]

end A022803

/-! ## A022803.P4847568914203274834

`A076877(n+2)+A004756(n+2)`
-/

namespace A022803.P4847568914203274834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (n + 2) + A004756 (n + 2)

end

end A022803.P4847568914203274834

namespace A022803

/-- `A076877(n+2)+A004756(n+2)` -/
def P4847568914203274834.Spec : Prop :=
  ∀ n, P4847568914203274834.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P9692569593918504033

`A054429(n+2)+A171763(n+2)+1`
-/

namespace A022803.P9692569593918504033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 2) + (A171763 (n + 2) + 1)

end

end A022803.P9692569593918504033

namespace A022803

/-- `A054429(n+2)+A171763(n+2)+1` -/
def P9692569593918504033.Spec : Prop :=
  ∀ n, P9692569593918504033.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P3600541121717617621

`A079946(n+2)+1-A053645(n+2)`
-/

namespace A022803.P3600541121717617621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079946 (n + 2) + (1 - A053645 (n + 2))

end

end A022803.P3600541121717617621

namespace A022803

/-- `A079946(n+2)+1-A053645(n+2)` -/
def P3600541121717617621.Spec : Prop :=
  ∀ n, P3600541121717617621.a n = A022803 (n + 1)

theorem P3600541121717617621.correct : P3600541121717617621.Spec := by
  intro n
  simp only [A022803, Nat.add_sub_cancel, A022803.P3600541121717617621.a, A022803.P8656828766279880858.a, A004758, A004758.P18199958472809387180.a, A053645, A053645.P13234994043849603743.a, A079946, A079946.P6641926404484281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022803

/-! ## A022803.P8661266406422150519

`A092754(n+2)+2*A076877(n+2)`
-/

namespace A022803.P8661266406422150519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 2) + 2 * A076877 (n + 2)

end

end A022803.P8661266406422150519

namespace A022803

/-- `A092754(n+2)+2*A076877(n+2)` -/
def P8661266406422150519.Spec : Prop :=
  ∀ n, P8661266406422150519.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P9894079321180343019

`2*A004756(n+2)-A092754(n+2)`
-/

namespace A022803.P9894079321180343019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004756 (n + 2) - A092754 (n + 2)

end

end A022803.P9894079321180343019

namespace A022803

/-- `2*A004756(n+2)-A092754(n+2)` -/
def P9894079321180343019.Spec : Prop :=
  ∀ n, P9894079321180343019.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P12282486198244678

`A006257(A004759(n+2))-A053645(n+2)`
-/

namespace A022803.P12282486198244678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004759 (n + 2)).toNat - A053645 (n + 2)

end

end A022803.P12282486198244678

namespace A022803

/-- `A006257(A004759(n+2))-A053645(n+2)` -/
def P12282486198244678.Spec : Prop :=
  ∀ n, P12282486198244678.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P2827128953404709062

`A318934(n+3)+1`
-/

namespace A022803.P2827128953404709062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 3) + 1

end

end A022803.P2827128953404709062

namespace A022803

/-- `A318934(n+3)+1` -/
def P2827128953404709062.Spec : Prop :=
  ∀ n, P2827128953404709062.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P11940864302609144711

`lt[43, 82*a(floor(n/2))]+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=22`
-/

namespace A022803.P11940864302609144711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 22] fun n f2 =>
  82 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022803.P11940864302609144711

namespace A022803

/-- `lt[43, 82*a(floor(n/2))]+1` -/
def P11940864302609144711.Spec : Prop :=
  ∀ n, (P11940864302609144711.a n : ℤ) = A022803 (n + 1)

end A022803

/-! ## A022803.P1337416655970559782

`lt[a(floor(n/2))%2, 1]+1` with `a(0)=4, a(1)=1, a(2)=7, a(3)=14, a(4)=7, a(5)=1, a(6)=12, a(7)=1`
-/

namespace A022803.P1337416655970559782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 7, 14, 7, 1, 12, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022803.P1337416655970559782

namespace A022803

/-- `lt[a(floor(n/2))%2, 1]+1` -/
def P1337416655970559782.Spec : Prop :=
  ∀ n, (P1337416655970559782.a n : ℤ) = A022803 (n + 1)

end A022803

/-! ## A022803.P18389448030063128501

`A004755(A004754(n+2)+1)`
-/

namespace A022803.P18389448030063128501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004754 (n + 2) + 1).toNat

end

end A022803.P18389448030063128501

namespace A022803

/-- `A004755(A004754(n+2)+1)` -/
def P18389448030063128501.Spec : Prop :=
  ∀ n, P18389448030063128501.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P6944122405028547409

`A063946(A004756(n+2)+1)`
-/

namespace A022803.P6944122405028547409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004756 (n + 2) + 1).toNat

end

end A022803.P6944122405028547409

namespace A022803

/-- `A063946(A004756(n+2)+1)` -/
def P6944122405028547409.Spec : Prop :=
  ∀ n, P6944122405028547409.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P11107731251585903167

`A004755(A092754(n+2)+2)`
-/

namespace A022803.P11107731251585903167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A092754 (n + 2) + 2).toNat

end

end A022803.P11107731251585903167

namespace A022803

/-- `A004755(A092754(n+2)+2)` -/
def P11107731251585903167.Spec : Prop :=
  ∀ n, P11107731251585903167.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P9293994364973797222

`A004755(A004761(n+4))+1`
-/

namespace A022803.P9293994364973797222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004761 (n + 4)).toNat + 1

end

end A022803.P9293994364973797222

namespace A022803

/-- `A004755(A004761(n+4))+1` -/
def P9293994364973797222.Spec : Prop :=
  ∀ n, P9293994364973797222.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P788959764781674464

`A004755(A053644(n+2)+n+3)`
-/

namespace A022803.P788959764781674464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A053644 (n + 2) + (n + 3 : ℤ)).toNat

end

end A022803.P788959764781674464

namespace A022803

/-- `A004755(A053644(n+2)+n+3)` -/
def P788959764781674464.Spec : Prop :=
  ∀ n, P788959764781674464.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P1436208574712849133

`A004754(n+2)+A004754(A076877(n+2))`
-/

namespace A022803.P1436208574712849133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 2) + A004754 (A076877 (n + 2)).toNat

end

end A022803.P1436208574712849133

namespace A022803

/-- `A004754(n+2)+A004754(A076877(n+2))` -/
def P1436208574712849133.Spec : Prop :=
  ∀ n, P1436208574712849133.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P13068825077307301345

`A038572(A171763(n+2))+1`
-/

namespace A022803.P13068825077307301345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A171763 (n + 2)).toNat + 1

end

end A022803.P13068825077307301345

namespace A022803

/-- `A038572(A171763(n+2))+1` -/
def P13068825077307301345.Spec : Prop :=
  ∀ n, P13068825077307301345.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P2868135993901143939

`A206332(A004754(n+2)+2)`
-/

namespace A022803.P2868135993901143939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (A004754 (n + 2) + 2).toNat

end

end A022803.P2868135993901143939

namespace A022803

/-- `A206332(A004754(n+2)+2)` -/
def P2868135993901143939.Spec : Prop :=
  ∀ n, P2868135993901143939.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P2392045583497938924

`A004760(A004754(n+2)+3)`
-/

namespace A022803.P2392045583497938924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A004754 (n + 2) + 3).toNat

end

end A022803.P2392045583497938924

namespace A022803

/-- `A004760(A004754(n+2)+3)` -/
def P2392045583497938924.Spec : Prop :=
  ∀ n, P2392045583497938924.a n = A022803 (n + 1)

end A022803

/-! ## A022803.P14120974229300475512

`A004760(A004761(n+4)+3)`
-/

namespace A022803.P14120974229300475512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A004761 (n + 4) + 3).toNat

end

end A022803.P14120974229300475512

namespace A022803

/-- `A004760(A004761(n+4)+3)` -/
def P14120974229300475512.Spec : Prop :=
  ∀ n, P14120974229300475512.a n = A022803 (n + 1)

end A022803

/-!
# A022804: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*sqrt(2) ] and c is the complement of B.

The programs for A022804, the canonical program `A022804.P17679794649677306097` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022804 has offset 1).

The definition of A022804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022804.P17679794649677306097

`2*(n+1+floor((n+1)*sqrt(2)))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022804

/-- `2*(n+1+floor((n+1)*sqrt(2)))` -/
def P17679794649677306097.Spec : Prop :=
  ∀ n, P17679794649677306097.a n = A022804 (n + 1)

theorem P17679794649677306097.correct : P17679794649677306097.Spec := by
  intro n
  simp only [A022804, Nat.add_sub_cancel]

end A022804

/-! ## A022804.P9954288349862580689

`A140868(n+1)-n`
-/

namespace A022804.P9954288349862580689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) - (n : ℤ)

end

end A022804.P9954288349862580689

namespace A022804

/-- `A140868(n+1)-n` -/
def P9954288349862580689.Spec : Prop :=
  ∀ n, P9954288349862580689.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P2248465121792786025

`2*A286666(n+1)+2`
-/

namespace A022804.P2248465121792786025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286666 (n + 1) + 2

end

end A022804.P2248465121792786025

namespace A022804

/-- `2*A286666(n+1)+2` -/
def P2248465121792786025.Spec : Prop :=
  ∀ n, P2248465121792786025.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P11865023301727900821

`2*A080754(n+1)-2`
-/

namespace A022804.P11865023301727900821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080754 (n + 1) - 2

end

end A022804.P11865023301727900821

namespace A022804

/-- `2*A080754(n+1)-2` -/
def P11865023301727900821.Spec : Prop :=
  ∀ n, P11865023301727900821.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P12023138400203459630

`A189380(n+1)+1+n`
-/

namespace A022804.P12023138400203459630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189380 (n + 1) + 1 + (n : ℤ)

end

end A022804.P12023138400203459630

namespace A022804

/-- `A189380(n+1)+1+n` -/
def P12023138400203459630.Spec : Prop :=
  ∀ n, P12023138400203459630.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P1790049928398709937

`A098021(n+1)-(n+1)`
-/

namespace A022804.P1790049928398709937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) - (n + 1 : ℤ)

end

end A022804.P1790049928398709937

namespace A022804

/-- `A098021(n+1)-(n+1)` -/
def P1790049928398709937.Spec : Prop :=
  ∀ n, P1790049928398709937.a n = A022804 (n + 1)

theorem P1790049928398709937.correct : P1790049928398709937.Spec := by
  intro n
  simp only [A022804, Nat.add_sub_cancel, A022804.P1790049928398709937.a, A022804.P17679794649677306097.a, A098021, A098021.P1655931677534323428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022804

/-! ## A022804.P12415750647237377085

`floor(sqrt(2)*A001952(n+1))`
-/

namespace A022804.P12415750647237377085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A001952 (n + 1) : ℝ)⌋

end

end A022804.P12415750647237377085

namespace A022804

/-- `floor(sqrt(2)*A001952(n+1))` -/
def P12415750647237377085.Spec : Prop :=
  ∀ n, P12415750647237377085.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P9517466157018113026

`floor(A286927(n+1)/sqrt(2))`
-/

namespace A022804.P9517466157018113026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286927 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A022804.P9517466157018113026

namespace A022804

/-- `floor(A286927(n+1)/sqrt(2))` -/
def P9517466157018113026.Spec : Prop :=
  ∀ n, P9517466157018113026.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P7876172759417144371

`A286690(n+1)-Δ[n²]`
-/

namespace A022804.P7876172759417144371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022804.P7876172759417144371

namespace A022804

/-- `A286690(n+1)-Δ[n²]` -/
def P7876172759417144371.Spec : Prop :=
  ∀ n, P7876172759417144371.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P12554752306685488630

`∑[2*(A276864(n+1)-1)]`
-/

namespace A022804.P12554752306685488630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A276864 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022804.P12554752306685488630

namespace A022804

/-- `∑[2*(A276864(n+1)-1)]` -/
def P12554752306685488630.Spec : Prop :=
  ∀ n, P12554752306685488630.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P16277582184095098597

`A286909(n+1)+2*(n+1)`
-/

namespace A022804.P16277582184095098597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + (2 * (n + 1) : ℤ)

end

end A022804.P16277582184095098597

namespace A022804

/-- `A286909(n+1)+2*(n+1)` -/
def P16277582184095098597.Spec : Prop :=
  ∀ n, P16277582184095098597.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P10001833660425956869

`A286905(n+1)+3*(n+1)`
-/

namespace A022804.P10001833660425956869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1) + (3 * (n + 1) : ℤ)

end

end A022804.P10001833660425956869

namespace A022804

/-- `A286905(n+1)+3*(n+1)` -/
def P10001833660425956869.Spec : Prop :=
  ∀ n, P10001833660425956869.a n = A022804 (n + 1)

theorem P10001833660425956869.correct : P10001833660425956869.Spec := by
  intro n
  simp only [A022804, Nat.add_sub_cancel, A022804.P10001833660425956869.a, A022804.P17679794649677306097.a, A286905, A286905.P4724979801914294857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022804

/-! ## A022804.P12260752333154609708

`∑[A018252(Δ[A001951(n)]+1)]`
-/

namespace A022804.P12260752333154609708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022804.P12260752333154609708

namespace A022804

/-- `∑[A018252(Δ[A001951(n)]+1)]` -/
def P12260752333154609708.Spec : Prop :=
  ∀ n, P12260752333154609708.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P2709070694520261702

`∑[2*A000040(Δ[A001951(n)])]`
-/

namespace A022804.P2709070694520261702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022804.P2709070694520261702

namespace A022804

/-- `∑[2*A000040(Δ[A001951(n)])]` -/
def P2709070694520261702.Spec : Prop :=
  ∀ n, P2709070694520261702.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P8490188553836440437

`A001952(n+1)+A001951(n+1)`
-/

namespace A022804.P8490188553836440437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + A001951 (n + 1)

end

end A022804.P8490188553836440437

namespace A022804

/-- `A001952(n+1)+A001951(n+1)` -/
def P8490188553836440437.Spec : Prop :=
  ∀ n, P8490188553836440437.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P3365808595489039315

`A003151(n+1)+A003151(n+1)`
-/

namespace A022804.P3365808595489039315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + A003151 (n + 1)

end

end A022804.P3365808595489039315

namespace A022804

/-- `A003151(n+1)+A003151(n+1)` -/
def P3365808595489039315.Spec : Prop :=
  ∀ n, P3365808595489039315.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P3359949049362269281

`A189458(n+1)+A049473(n+1)`
-/

namespace A022804.P3359949049362269281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189458 (n + 1) + A049473 (n + 1)

end

end A022804.P3359949049362269281

namespace A022804

/-- `A189458(n+1)+A049473(n+1)` -/
def P3359949049362269281.Spec : Prop :=
  ∀ n, P3359949049362269281.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P18411544654911198746

`A190329(n+1)+A081477(n+1)`
-/

namespace A022804.P18411544654911198746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190329 (n + 1) + A081477 (n + 1)

end

end A022804.P18411544654911198746

namespace A022804

/-- `A190329(n+1)+A081477(n+1)` -/
def P18411544654911198746.Spec : Prop :=
  ∀ n, P18411544654911198746.a n = A022804 (n + 1)

end A022804

/-! ## A022804.P9896163399908651867

`A184922(n+1)+A087057(n+1)`
-/

namespace A022804.P9896163399908651867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + A087057 (n + 1)

end

end A022804.P9896163399908651867

namespace A022804

/-- `A184922(n+1)+A087057(n+1)` -/
def P9896163399908651867.Spec : Prop :=
  ∀ n, P9896163399908651867.a n = A022804 (n + 1)

end A022804

/-!
# A022805: a(n) = B(n) + C(n) where B(n) is Beatty sequence [ n*sqrt(3) ] and C is complement of B.

The programs for A022805, the canonical program `A022805.P11016993281980640326` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022805 has offset 1).

The definition of A022805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022805.P11016993281980640326

`A022838(n+1)+A054406(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022805

/-- `A022838(n+1)+A054406(n+1)` -/
def P11016993281980640326.Spec : Prop :=
  ∀ n, P11016993281980640326.a n = A022805 (n + 1)

theorem P11016993281980640326.correct : P11016993281980640326.Spec := by
  intro n
  simp only [A022805, Nat.add_sub_cancel]

end A022805

/-! ## A022805.P515180694226714004

`floor((sqrt(3)+1)*(n+1))+floor((n+1)/(sqrt(3)-1))`
-/

namespace A022805.P515180694226714004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (n + 1 : ℝ)⌋ + ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋

end

end A022805.P515180694226714004

namespace A022805

/-- `floor((sqrt(3)+1)*(n+1))+floor((n+1)/(sqrt(3)-1))` -/
def P515180694226714004.Spec : Prop :=
  ∀ n, P515180694226714004.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P10021144656844573485

`floor(∑[3*A007538(n+1)/2])`
-/

namespace A022805.P10021144656844573485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A007538 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A022805.P10021144656844573485

namespace A022805

/-- `floor(∑[3*A007538(n+1)/2])` -/
def P10021144656844573485.Spec : Prop :=
  ∀ n, P10021144656844573485.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P6888917376423122444

`A000027(A189406(n+1)-2*(n+1))`
-/

namespace A022805.P6888917376423122444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A189406 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A022805.P6888917376423122444

namespace A022805

/-- `A000027(A189406(n+1)-2*(n+1))` -/
def P6888917376423122444.Spec : Prop :=
  ∀ n, P6888917376423122444.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P18208194864816125171

`record[A026255(n+1)+1+n]`
-/

namespace A022805.P18208194864816125171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022805.P18208194864816125171

namespace A022805

/-- `record[A026255(n+1)+1+n]` -/
def P18208194864816125171.Spec : Prop :=
  ∀ n, P18208194864816125171.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P11085680316487518321

`A032766(A054088(n+1))`
-/

namespace A022805.P11085680316487518321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A054088 (n + 1)).toNat

end

end A022805.P11085680316487518321

namespace A022805

/-- `A032766(A054088(n+1))` -/
def P11085680316487518321.Spec : Prop :=
  ∀ n, P11085680316487518321.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P3788865918344193173

`A032766(A022838(n+1)+n+1)`
-/

namespace A022805.P3788865918344193173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A022838 (n + 1) + (n + 1 : ℤ)).toNat

end

end A022805.P3788865918344193173

namespace A022805

/-- `A032766(A022838(n+1)+n+1)` -/
def P3788865918344193173.Spec : Prop :=
  ∀ n, P3788865918344193173.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P2581397644365105343

`A004526(3*floor((n+1)*(1+sqrt(3))))`
-/

namespace A022805.P2581397644365105343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * ⌊(n + 1 : ℝ) * (1 + Real.sqrt (3 : ℝ))⌋).toNat

end

end A022805.P2581397644365105343

namespace A022805

/-- `A004526(3*floor((n+1)*(1+sqrt(3))))` -/
def P2581397644365105343.Spec : Prop :=
  ∀ n, P2581397644365105343.a n = A022805 (n + 1)

end A022805

/-! ## A022805.P8268958385204988744

`A002265(6*A054088(n+1))`
-/

namespace A022805.P8268958385204988744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A054088 (n + 1)).toNat

end

end A022805.P8268958385204988744

namespace A022805

/-- `A002265(6*A054088(n+1))` -/
def P8268958385204988744.Spec : Prop :=
  ∀ n, P8268958385204988744.a n = A022805 (n + 1)

end A022805

/-!
# A022806: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*e ] and c is the complement of B.

The programs for A022806, the canonical program `A022806.P955735887301753164` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022806 has offset 1).

The definition of A022806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022806.P955735887301753164

`A022843(n+1)+A054385(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022806

/-- `A022843(n+1)+A054385(n+1)` -/
def P955735887301753164.Spec : Prop :=
  ∀ n, P955735887301753164.a n = A022806 (n + 1)

theorem P955735887301753164.correct : P955735887301753164.Spec := by
  intro n
  simp only [A022806, Nat.add_sub_cancel]

end A022806

/-! ## A022806.P10743988118149870156

`A022843(n+1)+comp[A022843(n)]`
-/

namespace A022806.P10743988118149870156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022806.P10743988118149870156

namespace A022806

/-- `A022843(n+1)+comp[A022843(n)]` -/
def P10743988118149870156.Spec : Prop :=
  ∀ n, P10743988118149870156.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P15210627235112707749

`A054385(n+1)+∑[A276859(n+1)]`
-/

namespace A022806.P15210627235112707749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022806.P15210627235112707749

namespace A022806

/-- `A054385(n+1)+∑[A276859(n+1)]` -/
def P15210627235112707749.Spec : Prop :=
  ∀ n, P15210627235112707749.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P18309547255966272948

`A014246(n+1)+2*A054385(n+1)`
-/

namespace A022806.P18309547255966272948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014246 (n + 1) + 2 * A054385 (n + 1)

end

end A022806.P18309547255966272948

namespace A022806

/-- `A014246(n+1)+2*A054385(n+1)` -/
def P18309547255966272948.Spec : Prop :=
  ∀ n, P18309547255966272948.a n = A022806 (n + 1)

theorem P18309547255966272948.correct : P18309547255966272948.Spec := by
  intro n
  simp only [A022806, Nat.add_sub_cancel, A022806.P18309547255966272948.a, A022806.P955735887301753164.a, A014246, A014246.P5171102780274933907.a, A022843, A022843.P5357273111751487291.a, A054385, A054385.P13327735877817480647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022806

/-! ## A022806.P7846344821777100116

`A184589(n+1)+comp[A184589(n+1)]+2`
-/

namespace A022806.P7846344821777100116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A022806.P7846344821777100116

namespace A022806

/-- `A184589(n+1)+comp[A184589(n+1)]+2` -/
def P7846344821777100116.Spec : Prop :=
  ∀ n, P7846344821777100116.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P3322258996173193507

`A022843(n+1)+A022843(n+1)-A014246(n+1)`
-/

namespace A022806.P3322258996173193507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + (A022843 (n + 1) - A014246 (n + 1))

end

end A022806.P3322258996173193507

namespace A022806

/-- `A022843(n+1)+A022843(n+1)-A014246(n+1)` -/
def P3322258996173193507.Spec : Prop :=
  ∀ n, P3322258996173193507.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P4955687041774059196

`A054385(n+1)+A121384(n+1)-1`
-/

namespace A022806.P4955687041774059196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + (A121384 (n + 1) - 1)

end

end A022806.P4955687041774059196

namespace A022806

/-- `A054385(n+1)+A121384(n+1)-1` -/
def P4955687041774059196.Spec : Prop :=
  ∀ n, P4955687041774059196.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P9543013903850598080

`A054385(n+1)+A276853(n+1)-A022852(n+1)`
-/

namespace A022806.P9543013903850598080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + (A276853 (n + 1) - A022852 (n + 1))

end

end A022806.P9543013903850598080

namespace A022806

/-- `A054385(n+1)+A276853(n+1)-A022852(n+1)` -/
def P9543013903850598080.Spec : Prop :=
  ∀ n, P9543013903850598080.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P6917608810995557894

`record[A108599(n+1)+1+n]`
-/

namespace A022806.P6917608810995557894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022806.P6917608810995557894

namespace A022806

/-- `record[A108599(n+1)+1+n]` -/
def P6917608810995557894.Spec : Prop :=
  ∀ n, P6917608810995557894.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P6204894051503455149

`A292664(n+1)+A000210(n+1)`
-/

namespace A022806.P6204894051503455149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) + A000210 (n + 1)

end

end A022806.P6204894051503455149

namespace A022806

/-- `A292664(n+1)+A000210(n+1)` -/
def P6204894051503455149.Spec : Prop :=
  ∀ n, P6204894051503455149.a n = A022806 (n + 1)

end A022806

/-! ## A022806.P6232713398841969966

`A054385(A000210(n+1))+A054385(n+1)+1`
-/

namespace A022806.P6232713398841969966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A000210 (n + 1)).toNat + (A054385 (n + 1) + 1)

end

end A022806.P6232713398841969966

namespace A022806

/-- `A054385(A000210(n+1))+A054385(n+1)+1` -/
def P6232713398841969966.Spec : Prop :=
  ∀ n, P6232713398841969966.a n = A022806 (n + 1)

end A022806

/-!
# A022807: a(n) = S(n) + c(n) where S(n) = [ n*sqrt(2) ] + [ n*sqrt(3) ] and c is the complement of S.

The programs for A022807, the canonical program `A022807.P13278345666095501261` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022807 has offset 1).

The definition of A022807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022807.P13278345666095501261

`A329791(n+1)+comp[A329791(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022807

/-- `A329791(n+1)+comp[A329791(n)]` -/
def P13278345666095501261.Spec : Prop :=
  ∀ n, P13278345666095501261.a n = A022807 (n + 1)

theorem P13278345666095501261.correct : P13278345666095501261.Spec := by
  intro n
  simp only [A022807, Nat.add_sub_cancel]

end A022807

/-! ## A022807.P7774126256954904848

`A172476(A189386(n+1))+A001952(A187829(n+1))`
-/

namespace A022807.P7774126256954904848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A189386 (n + 1)).toNat + A001952 (A187829 (n + 1)).toNat

end

end A022807.P7774126256954904848

namespace A022807

/-- `A172476(A189386(n+1))+A001952(A187829(n+1))` -/
def P7774126256954904848.Spec : Prop :=
  ∀ n, P7774126256954904848.a n = A022807 (n + 1)

end A022807

/-! ## A022807.P6248327827769318822

`A193910(n+1)+A001221(A219828(3*n+1))`
-/

namespace A022807.P6248327827769318822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1) + A001221 (A219828 (3 * n + 1)).toNat

end

end A022807.P6248327827769318822

namespace A022807

/-- `A193910(n+1)+A001221(A219828(3*n+1))` -/
def P6248327827769318822.Spec : Prop :=
  ∀ n, P6248327827769318822.a n = A022807 (n + 1)

end A022807

/-! ## A022807.P12201815685056369536

`A133254(3*n+1)-A010815(A133221(n))`
-/

namespace A022807.P12201815685056369536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133254 (3 * n + 1) - A010815 (A133221 n).toNat

end

end A022807.P12201815685056369536

namespace A022807

/-- `A133254(3*n+1)-A010815(A133221(n))` -/
def P12201815685056369536.Spec : Prop :=
  ∀ n, P12201815685056369536.a n = A022807 (n + 1)

end A022807

/-! ## A022807.P18034676375198175626

`A333805(A122367(n))+A032766(3*n+2)`
-/

namespace A022807.P18034676375198175626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A122367 n).toNat + A032766 (3 * n + 2)

end

end A022807.P18034676375198175626

namespace A022807

/-- `A333805(A122367(n))+A032766(3*n+2)` -/
def P18034676375198175626.Spec : Prop :=
  ∀ n, P18034676375198175626.a n = A022807 (n + 1)

end A022807

/-!
# A022808: a(n) = S(n) + c(n) where S(n) = [ (3/2)^n ] and c is the complement of S.

The programs for A022808, there is no canonical definition to state claims against.
-/

/-! ## A022808.P16168425367768440575

`A002379(n+1)+A002379(n+1)-A014250(n+1)`
-/

namespace A022808.P16168425367768440575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (A002379 (n + 1) - A014250 (n + 1))

end

end A022808.P16168425367768440575

/-! ## A022808.P1713919993462013385

`A014215(2*(n+1))+A014215(2*(n+1))-A014250(n+1)`
-/

namespace A022808.P1713919993462013385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (2 * (n + 1)) + (A014215 (2 * (n + 1)) - A014250 (n + 1))

end

end A022808.P1713919993462013385

/-! ## A022808.P8152155770878289645

`2*A002379(n+1)-A014250(n+1)`
-/

namespace A022808.P8152155770878289645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002379 (n + 1) - A014250 (n + 1)

end

end A022808.P8152155770878289645

/-! ## A022808.P18162121476791095576

`2*A014215(2*(n+1))-A014250(n+1)`
-/

namespace A022808.P18162121476791095576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014215 (2 * (n + 1)) - A014250 (n + 1)

end

end A022808.P18162121476791095576

/-!
# A022809: a(n) = F(n+3) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or 2 or is not a Fibonacci number.

The programs for A022809, the canonical program `A022809.P14696953660419613344` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022809 has offset 1).

The definition of A022809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022809.P236338968220725302

`A020706(n)+comp[A020706(n)-2]`
-/

namespace A022809.P236338968220725302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022809.P236338968220725302

namespace A022809

/-- `A020706(n)+comp[A020706(n)-2]` -/
def P236338968220725302.Spec : Prop :=
  ∀ n, P236338968220725302.a n = A022809 (n + 1)

end A022809

/-! ## A022809.P14696953660419613344

`A020701(n)+A020701(n)-A014251(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022809

/-- `A020701(n)+A020701(n)-A014251(n+1)` -/
def P14696953660419613344.Spec : Prop :=
  ∀ n, P14696953660419613344.a n = A022809 (n + 1)

theorem P14696953660419613344.correct : P14696953660419613344.Spec := by
  intro n
  simp only [A022809, Nat.add_sub_cancel]

end A022809

/-! ## A022809.P16026831355266015506

`A023498(n)-Δ[A001911(n)]`
-/

namespace A022809.P16026831355266015506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023498 n - (f1 (n + 1) - f1 n)

end

end A022809.P16026831355266015506

namespace A022809

/-- `A023498(n)-Δ[A001911(n)]` -/
def P16026831355266015506.Spec : Prop :=
  ∀ n, P16026831355266015506.a n = A022809 (n + 1)

theorem P16026831355266015506.correct : P16026831355266015506.Spec := by
  intro n
  simp only [A022809, Nat.add_sub_cancel, A022809.P16026831355266015506.f1, A022809.P16026831355266015506.a, A022809.P14696953660419613344.a, A001911, A001911.P2299546665043418976.a, A014251, A014251.P12711182458160669696.f1, A014251.P12711182458160669696.a, A020701, A020701.P3023773977330208485.a, A023498, A023498.P15877121129977384704.f1, A023498.P15877121129977384704.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022809

/-! ## A022809.P11058709552688282517

`A023498(n)-Δ[A020695(n)]`
-/

namespace A022809.P11058709552688282517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023498 n - (f1 (n + 1) - f1 n)

end

end A022809.P11058709552688282517

namespace A022809

/-- `A023498(n)-Δ[A020695(n)]` -/
def P11058709552688282517.Spec : Prop :=
  ∀ n, P11058709552688282517.a n = A022809 (n + 1)

end A022809

/-! ## A022809.P10094370950355437966

`A023498(n)-A000045(n+2)`
-/

namespace A022809.P10094370950355437966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023498 n - A000045 (n + 2)

end

end A022809.P10094370950355437966

namespace A022809

/-- `A023498(n)-A000045(n+2)` -/
def P10094370950355437966.Spec : Prop :=
  ∀ n, P10094370950355437966.a n = A022809 (n + 1)

end A022809

/-! ## A022809.P402446666030982759

`A090991(n+1)-A014251(n+1)`
-/

namespace A022809.P402446666030982759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - A014251 (n + 1)

end

end A022809.P402446666030982759

namespace A022809

/-- `A090991(n+1)-A014251(n+1)` -/
def P402446666030982759.Spec : Prop :=
  ∀ n, P402446666030982759.a n = A022809 (n + 1)

end A022809

/-! ## A022809.P2054116567658191347

`2*A020701(n)-A014251(n+1)`
-/

namespace A022809.P2054116567658191347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n - A014251 (n + 1)

end

end A022809.P2054116567658191347

namespace A022809

/-- `2*A020701(n)-A014251(n+1)` -/
def P2054116567658191347.Spec : Prop :=
  ∀ n, P2054116567658191347.a n = A022809 (n + 1)

theorem P2054116567658191347.correct : P2054116567658191347.Spec := by
  intro n
  simp only [A022809, Nat.add_sub_cancel, A022809.P2054116567658191347.a, A022809.P14696953660419613344.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022809

/-! ## A022809.P11431788753977887090

`A090991(n+3)%(A090991(n+2)+A014251(n+1))`
-/

namespace A022809.P11431788753977887090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090991 (n + 3)) (A090991 (n + 2) + A014251 (n + 1))

end

end A022809.P11431788753977887090

namespace A022809

/-- `A090991(n+3)%(A090991(n+2)+A014251(n+1))` -/
def P11431788753977887090.Spec : Prop :=
  ∀ n, P11431788753977887090.a n = A022809 (n + 1)

end A022809

/-!
# A022810: a(n) = L(n+2) + c(n) where L(k) is the k-th Lucas number and c(n) is the n-th number that is 1 or 3 or is not a Lucas number.

The programs for A022810, the canonical program `A022810.P14713839583043034836` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022810 has offset 1).

The definition of A022810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022810.P14713839583043034836

`A023499(n)+A020701(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022810

/-- `A023499(n)+A020701(n)` -/
def P14713839583043034836.Spec : Prop :=
  ∀ n, P14713839583043034836.a n = A022810 (n + 1)

theorem P14713839583043034836.correct : P14713839583043034836.Spec := by
  intro n
  simp only [A022810, Nat.add_sub_cancel]

end A022810

/-! ## A022810.P5167919800659615980

`A023500(n)+record[A118658(n)]`
-/

namespace A022810.P5167919800659615980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022810.P5167919800659615980

namespace A022810

/-- `A023500(n)+record[A118658(n)]` -/
def P5167919800659615980.Spec : Prop :=
  ∀ n, P5167919800659615980.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P18075236800328140047

`A023501(n)+A000204(n+1)`
-/

namespace A022810.P18075236800328140047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023501 n + A000204 (n + 1)

end

end A022810.P18075236800328140047

namespace A022810

/-- `A023501(n)+A000204(n+1)` -/
def P18075236800328140047.Spec : Prop :=
  ∀ n, P18075236800328140047.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P6097038350699486491

`A023499(n)+A020695(n+1)`
-/

namespace A022810.P6097038350699486491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + A020695 (n + 1)

end

end A022810.P6097038350699486491

namespace A022810

/-- `A023499(n)+A020695(n+1)` -/
def P6097038350699486491.Spec : Prop :=
  ∀ n, P6097038350699486491.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P15246751774292739109

`A023502(n)+A000045(n+2)`
-/

namespace A022810.P15246751774292739109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n + A000045 (n + 2)

end

end A022810.P15246751774292739109

namespace A022810

/-- `A023502(n)+A000045(n+2)` -/
def P15246751774292739109.Spec : Prop :=
  ∀ n, P15246751774292739109.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P8887249704015975251

`A023499(n)+A000045(n+4)`
-/

namespace A022810.P8887249704015975251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + A000045 (n + 4)

end

end A022810.P8887249704015975251

namespace A022810

/-- `A023499(n)+A000045(n+4)` -/
def P8887249704015975251.Spec : Prop :=
  ∀ n, P8887249704015975251.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P13040006182815723001

`A023500(n)+2*Δ[A001911(n)]`
-/

namespace A022810.P13040006182815723001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n + 2 * (f1 (n + 1) - f1 n)

end

end A022810.P13040006182815723001

namespace A022810

/-- `A023500(n)+2*Δ[A001911(n)]` -/
def P13040006182815723001.Spec : Prop :=
  ∀ n, P13040006182815723001.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P15198009223966519848

`A000032(n)+A023502(n)+Δ[A212804(n)]`
-/

namespace A022810.P15198009223966519848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A023502 n + (f1 (n + 1) - f1 n))

end

end A022810.P15198009223966519848

namespace A022810

/-- `A000032(n)+A023502(n)+Δ[A212804(n)]` -/
def P15198009223966519848.Spec : Prop :=
  ∀ n, P15198009223966519848.a n = A022810 (n + 1)

end A022810

/-! ## A022810.P11289372810013790819

`A023499(n)+Δ[A020712(n)]`
-/

namespace A022810.P11289372810013790819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + (f1 (n + 1) - f1 n)

end

end A022810.P11289372810013790819

namespace A022810

/-- `A023499(n)+Δ[A020712(n)]` -/
def P11289372810013790819.Spec : Prop :=
  ∀ n, P11289372810013790819.a n = A022810 (n + 1)

end A022810

/-!
# A022811: Number of terms in n-th derivative of a function composed with itself 3 times.

The programs for A022811, there is no canonical definition to state claims against.
-/

/-! ## A022811.P15609306485281184687

`A039805(C(n, 2)+1)`
-/

namespace A022811.P15609306485281184687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039805 (Nat.choose n 2 + 1)

end

end A022811.P15609306485281184687

/-! ## A022811.P14861381969896020505

`A039805(∑[abs(1-n)])`
-/

namespace A022811.P14861381969896020505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022811.P14861381969896020505

/-! ## A022811.P17822910721556380565

`A022818(∑[n+2]-1)`
-/

namespace A022811.P17822910721556380565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022811.P17822910721556380565

/-! ## A022811.P6249540661459000366

`gcd(C(2, n²), A022818(A034856(n+1)))`
-/

namespace A022811.P6249540661459000366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (A022818 (A034856 (n + 1)).toNat)

end

end A022811.P6249540661459000366

/-! ## A022811.P18027343499459408794

`A022818(∑[n+1]+n)%A224015(n+1)`
-/

namespace A022811.P18027343499459408794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022818 (∑ j ∈ Finset.range (n + 1), f1 j + n)) (A224015 (n + 1))

end

end A022811.P18027343499459408794

/-! ## A022811.P13058319400096168773

`A022818(A034856(n+1))*A054977(A336549(n+1))`
-/

namespace A022811.P13058319400096168773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A034856 (n + 1)).toNat * A054977 (A336549 (n + 1)).toNat

end

end A022811.P13058319400096168773

/-! ## A022811.P17054306890146388216

`and(A001348(n+1), A022818(A034856(n+1)))`
-/

namespace A022811.P17054306890146388216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001348 (n + 1)) (A022818 (A034856 (n + 1)).toNat)

end

end A022811.P17054306890146388216

/-!
# A022812: Number of terms in n-th derivative of a function composed with itself 4 times.

The programs for A022812, there is no canonical definition to state claims against.
-/

/-! ## A022812.P1227820567268550326

`A039806(C(n, 2))`
-/

namespace A022812.P1227820567268550326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039806 (Nat.choose n 2)

end

end A022812.P1227820567268550326

/-! ## A022812.P1271257291363167449

`A039806(∑[n]-n)`
-/

namespace A022812.P1271257291363167449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039806 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A022812.P1271257291363167449

/-! ## A022812.P4993944448785566542

`A022818(∑[n+3])`
-/

namespace A022812.P4993944448785566542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022812.P4993944448785566542

/-! ## A022812.P11812176602647714600

`A022818(A027379(n+1))%A022814(n+2)`
-/

namespace A022812.P11812176602647714600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022818 (A027379 (n + 1)).toNat) (A022814 (n + 2))

end

end A022812.P11812176602647714600

/-! ## A022812.P3479516472068775006

`A022818(A055998(n+1))%A022814(n+2)`
-/

namespace A022812.P3479516472068775006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022818 (A055998 (n + 1)).toNat) (A022814 (n + 2))

end

end A022812.P3479516472068775006

/-! ## A022812.P4395140014250626260

`A035444(2*n+1)+A022818(A027379(n+1))`
-/

namespace A022812.P4395140014250626260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) + A022818 (A027379 (n + 1)).toNat

end

end A022812.P4395140014250626260

/-! ## A022812.P17288236214451877947

`A035444(2*n+1)+A022818(A055998(n+1))`
-/

namespace A022812.P17288236214451877947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) + A022818 (A055998 (n + 1)).toNat

end

end A022812.P17288236214451877947

/-! ## A022812.P4001712577960678756

`A081718(A135855(A000217(n+2)))`
-/

namespace A022812.P4001712577960678756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081718 (A135855 (A000217 (n + 2)).toNat).toNat

end

end A022812.P4001712577960678756

/-!
# A022813: Number of terms in n-th derivative of a function composed with itself 5 times.

The programs for A022813, there is no canonical definition to state claims against.
-/

/-! ## A022813.P2568737818743670678

`A039807(C(n, 2))`
-/

namespace A022813.P2568737818743670678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039807 (Nat.choose n 2)

end

end A022813.P2568737818743670678

/-! ## A022813.P4357200011295406103

`A039807(∑[n]-n)`
-/

namespace A022813.P4357200011295406103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039807 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A022813.P4357200011295406103

/-! ## A022813.P18308954423094220994

`A039807(A161680(n))%A321483(n)`
-/

namespace A022813.P18308954423094220994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039807 (A161680 n).toNat) (A321483 n)

end

end A022813.P18308954423094220994

/-! ## A022813.P12537759318419590237

`floor(A039807(A161680(n))+n/A207436(n+1))`
-/

namespace A022813.P12537759318419590237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039807 (A161680 n).toNat : ℚ) + (n : ℚ) / (A207436 (n + 1) : ℚ)⌋

end

end A022813.P12537759318419590237

/-! ## A022813.P17080136909701683631

`A039807(A161680(n))^gcd(n+1, A208449(n+1))`
-/

namespace A022813.P17080136909701683631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039807 (A161680 n).toNat ^ Int.gcd (n + 1 : ℤ) (A208449 (n + 1))

end

end A022813.P17080136909701683631

/-! ## A022813.P14834208737560337916

`A053186(A053186(n)²)+A039807(A161680(n))`
-/

namespace A022813.P14834208737560337916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n ^ 2).toNat + A039807 (A161680 n).toNat

end

end A022813.P14834208737560337916

/-! ## A022813.P15579522092118675464

`A022818(∑[n+3]+n+3)`
-/

namespace A022813.P15579522092118675464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A022813.P15579522092118675464

/-! ## A022813.P11042559009369033809

`A053186(n²)+A039807(A161680(n))`
-/

namespace A022813.P11042559009369033809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n ^ 2) + A039807 (A161680 n).toNat

end

end A022813.P11042559009369033809

/-!
# A022814: Number of terms in n-th derivative of a function composed with itself 6 times.

The programs for A022814, there is no canonical definition to state claims against.
-/

/-! ## A022814.P4879224744543893749

`A050300(∑[abs(1-n)])`
-/

namespace A022814.P4879224744543893749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022814.P4879224744543893749

/-! ## A022814.P12792042890817005313

`A022818(∑[n+5]+5)`
-/

namespace A022814.P12792042890817005313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A022814.P12792042890817005313

/-! ## A022814.P16198366591417747075

`gcd(n+1, n+2)*A022818(A052905(n+2))`
-/

namespace A022814.P16198366591417747075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n + 2) : ℤ) * A022818 (A052905 (n + 2)).toNat

end

end A022814.P16198366591417747075

/-! ## A022814.P4673820514110153635

`gcd(A000038(n), A022818(A052905(n+2)))`
-/

namespace A022814.P4673820514110153635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A022818 (A052905 (n + 2)).toNat)

end

end A022814.P4673820514110153635

/-! ## A022814.P8409446206846114030

`or(A000007(n), A022818(A052905(n+2)))`
-/

namespace A022814.P8409446206846114030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A022818 (A052905 (n + 2)).toNat)

end

end A022814.P8409446206846114030

/-!
# A022815: Number of terms in 5th derivative of a function composed with itself n times.

The programs for A022815, the canonical program `A022815.P8897978214143747185` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022815 has offset 1).

The definition of A022815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022815.P331160745446021146

`ogf((1+2x-2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A022815.P331160745446021146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -5, 10, -10, 5, -1] n

end

end A022815.P331160745446021146

namespace A022815

/-- `ogf((1+2x-2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P331160745446021146.Spec : Prop :=
  ∀ n, P331160745446021146.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P8897978214143747185

`(n+1)*(n+2)*((n+1)²+13*(n+1)-2)/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022815

/-- `(n+1)*(n+2)*((n+1)²+13*(n+1)-2)/24` -/
def P8897978214143747185.Spec : Prop :=
  ∀ n, P8897978214143747185.a n = (A022815 (n + 1) : ℚ)

end A022815

/-! ## A022815.P9310082203457772865

`∑[∑[∑[a(n-1)+1]]]` with `a(0)=1, a(1)=4`
-/

namespace A022815.P9310082203457772865
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022815.P9310082203457772865

namespace A022815

/-- `∑[∑[∑[a(n-1)+1]]]` -/
def P9310082203457772865.Spec : Prop :=
  ∀ n, (P9310082203457772865.a n : ℤ) = A022815 (n + 1)

end A022815

/-! ## A022815.P7003655260843489712

`∑[∑[C(n+3, 2)-2+n]]`
-/

namespace A022815.P7003655260843489712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022815.P7003655260843489712

namespace A022815

/-- `∑[∑[C(n+3, 2)-2+n]]` -/
def P7003655260843489712.Spec : Prop :=
  ∀ n, P7003655260843489712.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P5308981691939710326

`∑[∑[2*n]]+C(n+4, 4)`
-/

namespace A022815.P5308981691939710326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 4) 4

end

end A022815.P5308981691939710326

namespace A022815

/-- `∑[∑[2*n]]+C(n+4, 4)` -/
def P5308981691939710326.Spec : Prop :=
  ∀ n, (P5308981691939710326.a n : ℤ) = A022815 (n + 1)

end A022815

/-! ## A022815.P5467058490304554346

`∑[∑[A052905(n)]]`
-/

namespace A022815.P5467058490304554346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022815.P5467058490304554346

namespace A022815

/-- `∑[∑[A052905(n)]]` -/
def P5467058490304554346.Spec : Prop :=
  ∀ n, P5467058490304554346.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P18302487719138639913

`∑[A134465(n+1)]`
-/

namespace A022815.P18302487719138639913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022815.P18302487719138639913

namespace A022815

/-- `∑[A134465(n+1)]` -/
def P18302487719138639913.Spec : Prop :=
  ∀ n, P18302487719138639913.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P187566624377382956

`∑[A341209(n)+n²]`
-/

namespace A022815.P187566624377382956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022815.P187566624377382956

namespace A022815

/-- `∑[A341209(n)+n²]` -/
def P187566624377382956.Spec : Prop :=
  ∀ n, P187566624377382956.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P3734685370101208723

`∑[A143058(n)-n²]`
-/

namespace A022815.P3734685370101208723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022815.P3734685370101208723

namespace A022815

/-- `∑[A143058(n)-n²]` -/
def P3734685370101208723.Spec : Prop :=
  ∀ n, P3734685370101208723.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P8517946820707194674

`A290312(n)-∑[∑[n²]]`
-/

namespace A022815.P8517946820707194674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022815.P8517946820707194674

namespace A022815

/-- `A290312(n)-∑[∑[n²]]` -/
def P8517946820707194674.Spec : Prop :=
  ∀ n, P8517946820707194674.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P10630595733831260825

`∑[A008778(n)]+∑[∑[n]]`
-/

namespace A022815.P10630595733831260825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A022815.P10630595733831260825

namespace A022815

/-- `∑[A008778(n)]+∑[∑[n]]` -/
def P10630595733831260825.Spec : Prop :=
  ∀ n, P10630595733831260825.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P8101045005682419943

`A005582(n)+∑[(n+1)²]`
-/

namespace A022815.P8101045005682419943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022815.P8101045005682419943

namespace A022815

/-- `A005582(n)+∑[(n+1)²]` -/
def P8101045005682419943.Spec : Prop :=
  ∀ n, P8101045005682419943.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P604940224038223848

`A005712(n+2)+∑[∑[n]]`
-/

namespace A022815.P604940224038223848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022815.P604940224038223848

namespace A022815

/-- `A005712(n+2)+∑[∑[n]]` -/
def P604940224038223848.Spec : Prop :=
  ∀ n, P604940224038223848.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P166851388723722052

`∑[∑[2*n]]+sqrt(A288876(n))`
-/

namespace A022815.P166851388723722052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (A288876 n : ℝ)

end

end A022815.P166851388723722052

namespace A022815

/-- `∑[∑[2*n]]+sqrt(A288876(n))` -/
def P166851388723722052.Spec : Prop :=
  ∀ n, P166851388723722052.a n = (A022815 (n + 1) : ℝ)

end A022815

/-! ## A022815.P4310918721886032708

`A095661(n)-(n+1)*(n+2)`
-/

namespace A022815.P4310918721886032708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n - ((n + 1) * (n + 2) : ℤ)

end

end A022815.P4310918721886032708

namespace A022815

/-- `A095661(n)-(n+1)*(n+2)` -/
def P4310918721886032708.Spec : Prop :=
  ∀ n, P4310918721886032708.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P7395732570890252093

`A069778(n)+A014626(n)`
-/

namespace A022815.P7395732570890252093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + A014626 n

end

end A022815.P7395732570890252093

namespace A022815

/-- `A069778(n)+A014626(n)` -/
def P7395732570890252093.Spec : Prop :=
  ∀ n, P7395732570890252093.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P950869831638963862

`A162148(n)+A055417(n)`
-/

namespace A022815.P950869831638963862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A055417 n

end

end A022815.P950869831638963862

namespace A022815

/-- `A162148(n)+A055417(n)` -/
def P950869831638963862.Spec : Prop :=
  ∀ n, P950869831638963862.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P11412912481371057998

`A261893(n)+A000332(n)`
-/

namespace A022815.P11412912481371057998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n + A000332 n

end

end A022815.P11412912481371057998

namespace A022815

/-- `A261893(n)+A000332(n)` -/
def P11412912481371057998.Spec : Prop :=
  ∀ n, P11412912481371057998.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P15720601869615171068

`A387204(n)+A080956(n)`
-/

namespace A022815.P15720601869615171068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n + A080956 n

end

end A022815.P15720601869615171068

namespace A022815

/-- `A387204(n)+A080956(n)` -/
def P15720601869615171068.Spec : Prop :=
  ∀ n, P15720601869615171068.a n = A022815 (n + 1)

end A022815

/-! ## A022815.P16893255030599051397

`A363256(n)+A145069(n)`
-/

namespace A022815.P16893255030599051397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n + A145069 n

end

end A022815.P16893255030599051397

namespace A022815

/-- `A363256(n)+A145069(n)` -/
def P16893255030599051397.Spec : Prop :=
  ∀ n, P16893255030599051397.a n = A022815 (n + 1)

end A022815

/-!
# A022816: Number of terms in 6th derivative of a function composed with itself n times.

The programs for A022816, the canonical program `A022816.P3067772476029755589` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022816 has offset 1).

The definition of A022816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022816.P2935762536579594168

`ogf((1+5x-7x^2+2x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A022816.P2935762536579594168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -7, 2] [1, -6, 15, -20, 15, -6, 1] n

end

end A022816.P2935762536579594168

namespace A022816

/-- `ogf((1+5x-7x^2+2x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P2935762536579594168.Spec : Prop :=
  ∀ n, P2935762536579594168.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P3067772476029755589

`(n+1)*(n+2)*((n+1)^3+24*(n+1)²+81*(n+1)-46)/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022816

/-- `(n+1)*(n+2)*((n+1)^3+24*(n+1)²+81*(n+1)-46)/120` -/
def P3067772476029755589.Spec : Prop :=
  ∀ n, P3067772476029755589.a n = (A022816 (n + 1) : ℚ)

end A022816

/-! ## A022816.P17238284366470325543

`∑[A008779(n)]+∑[∑[3*n]]`
-/

namespace A022816.P17238284366470325543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A022816.P17238284366470325543

namespace A022816

/-- `∑[A008779(n)]+∑[∑[3*n]]` -/
def P17238284366470325543.Spec : Prop :=
  ∀ n, P17238284366470325543.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P9888678763459121524

`A101855(n+1)-A024191(n+1)`
-/

namespace A022816.P9888678763459121524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101855 (n + 1) - A024191 (n + 1)

end

end A022816.P9888678763459121524

namespace A022816

/-- `A101855(n+1)-A024191(n+1)` -/
def P9888678763459121524.Spec : Prop :=
  ∀ n, P9888678763459121524.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P9910679975868981760

`∑[A101854(n+1)]-A024191(n+1)`
-/

namespace A022816.P9910679975868981760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024191 (n + 1)

end

end A022816.P9910679975868981760

namespace A022816

/-- `∑[A101854(n+1)]-A024191(n+1)` -/
def P9910679975868981760.Spec : Prop :=
  ∀ n, P9910679975868981760.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P15794159168581960806

`A095668(n)-A006503(n+1)`
-/

namespace A022816.P15794159168581960806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095668 n - A006503 (n + 1)

end

end A022816.P15794159168581960806

namespace A022816

/-- `A095668(n)-A006503(n+1)` -/
def P15794159168581960806.Spec : Prop :=
  ∀ n, P15794159168581960806.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P9448526933827088424

`A056078(n+3)-A000292(n+1)`
-/

namespace A022816.P9448526933827088424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 3) - A000292 (n + 1)

end

end A022816.P9448526933827088424

namespace A022816

/-- `A056078(n+3)-A000292(n+1)` -/
def P9448526933827088424.Spec : Prop :=
  ∀ n, P9448526933827088424.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P1763191072609576784

`∑[A000332(n+4)]+∑[n*∑[n+2]]`
-/

namespace A022816.P1763191072609576784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A022816.P1763191072609576784

namespace A022816

/-- `∑[A000332(n+4)]+∑[n*∑[n+2]]` -/
def P1763191072609576784.Spec : Prop :=
  ∀ n, P1763191072609576784.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P5303478128253650286

`A022818(A000217(n+5)+6)`
-/

namespace A022816.P5303478128253650286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 5) + 6).toNat

end

end A022816.P5303478128253650286

namespace A022816

/-- `A022818(A000217(n+5)+6)` -/
def P5303478128253650286.Spec : Prop :=
  ∀ n, P5303478128253650286.a n = A022816 (n + 1)

end A022816

/-! ## A022816.P15094445204505212188

`A022818(A167499(n)+A004767(n+3))`
-/

namespace A022816.P15094445204505212188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A167499 n + A004767 (n + 3)).toNat

end

end A022816.P15094445204505212188

namespace A022816

/-- `A022818(A167499(n)+A004767(n+3))` -/
def P15094445204505212188.Spec : Prop :=
  ∀ n, P15094445204505212188.a n = A022816 (n + 1)

end A022816

/-!
# A022817: Number of terms in 7th derivative of a function composed with itself n times.

The programs for A022817, the canonical program `A022817.P15564343047622524491` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022817 has offset 1).

The definition of A022817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022817.P2226787753547198950

`ogf((1+8x-10x^2-x^3+4x^4-x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A022817.P2226787753547198950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -10, -1, 4, -1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A022817.P2226787753547198950

namespace A022817

/-- `ogf((1+8x-10x^2-x^3+4x^4-x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P2226787753547198950.Spec : Prop :=
  ∀ n, P2226787753547198950.a n = A022817 (n + 1)

end A022817

/-! ## A022817.P15564343047622524491

`(n+1)/720*((n+1)^5+39*(n+1)^4+355*(n+1)^3+645*(n+1)²-356*(n+1)+36)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022817

/-- `(n+1)/720*((n+1)^5+39*(n+1)^4+355*(n+1)^3+645*(n+1)²-356*(n+1)+36)` -/
def P15564343047622524491.Spec : Prop :=
  ∀ n, P15564343047622524491.a n = (A022817 (n + 1) : ℚ)

end A022817

/-! ## A022817.P14405785821987287115

`∑[A055833(n+6)+1]-A055833(n+6)`
-/

namespace A022817.P14405785821987287115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055833 (n + 6) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055833 (n + 6)

end

end A022817.P14405785821987287115

namespace A022817

/-- `∑[A055833(n+6)+1]-A055833(n+6)` -/
def P14405785821987287115.Spec : Prop :=
  ∀ n, P14405785821987287115.a n = A022817 (n + 1)

end A022817

/-! ## A022817.P11157964240805682475

`A022818(A133263(n+6)+5)`
-/

namespace A022817.P11157964240805682475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A133263 (n + 6) + 5).toNat

end

end A022817.P11157964240805682475

namespace A022817

/-- `A022818(A133263(n+6)+5)` -/
def P11157964240805682475.Spec : Prop :=
  ∀ n, P11157964240805682475.a n = A022817 (n + 1)

end A022817

/-! ## A022817.P1431355084198337673

`A022818(A000217(n+6)+7)`
-/

namespace A022817.P1431355084198337673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 6) + 7).toNat

end

end A022817.P1431355084198337673

namespace A022817

/-- `A022818(A000217(n+6)+7)` -/
def P1431355084198337673.Spec : Prop :=
  ∀ n, P1431355084198337673.a n = A022817 (n + 1)

end A022817

/-! ## A022817.P3897506378124911283

`A022818(8-A080956(n+7))`
-/

namespace A022817.P3897506378124911283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (8 - A080956 (n + 7)).toNat

end

end A022817.P3897506378124911283

namespace A022817

/-- `A022818(8-A080956(n+7))` -/
def P3897506378124911283.Spec : Prop :=
  ∀ n, P3897506378124911283.a n = A022817 (n + 1)

end A022817

/-! ## A022817.P13805168274193498619

`A022818(A155212(n+4)-A005843(n))`
-/

namespace A022817.P13805168274193498619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A155212 (n + 4) - A005843 n).toNat

end

end A022817.P13805168274193498619

namespace A022817

/-- `A022818(A155212(n+4)-A005843(n))` -/
def P13805168274193498619.Spec : Prop :=
  ∀ n, P13805168274193498619.a n = A022817 (n + 1)

end A022817

/-! ## A022817.P13508284735073100501

`A022818(A005408(n+8)+A000124(n+4))`
-/

namespace A022817.P13508284735073100501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A022817.P13508284735073100501

namespace A022817

/-- `A022818(A005408(n+8)+A000124(n+4))` -/
def P13508284735073100501.Spec : Prop :=
  ∀ n, P13508284735073100501.a n = A022817 (n + 1)

end A022817

/-!
# A022818: Square array read by antidiagonals: A(n,k) = number of terms in the n-th derivative of a function composed with itself k times (n, k >= 1).

The programs for A022818, there is no canonical definition to state claims against.
-/

/-! ## A022818.P16623868871191014919

`A081718(comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A022818.P16623868871191014919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081718 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A022818.P16623868871191014919

/-! ## A022818.P7483348466217538290

`A096751(comp[∑[n]]%A096746(n))`
-/

namespace A022818.P7483348466217538290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A096746 n)).toNat

end

end A022818.P7483348466217538290

/-! ## A022818.P4671668494282750517

`A293551(comp[∑[char[1]+n]])%A272387(2*(n+1))`
-/

namespace A022818.P4671668494282750517
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293551 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A272387 (2 * (n + 1)))

end

end A022818.P4671668494282750517

/-! ## A022818.P5006164316102812072

`A096751(A007401(n+2)^A143842(n))`
-/

namespace A022818.P5006164316102812072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (SequenceMachineLib.roundAway ((A007401 (n + 2) : ℚ) ^ (A143842 n : ℤ))).toNat

end

end A022818.P5006164316102812072

/-! ## A022818.P10448728404291831738

`A293551(A014132(n+1)%A096746(n))`
-/

namespace A022818.P10448728404291831738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (Int.tmod (A014132 (n + 1)) (A096746 n)).toNat

end

end A022818.P10448728404291831738

/-!
# A022819: a(n) = floor(1/(n-1) + 2/(n-2) + 3/(n-3) + ... + (n-1)/1).

The programs for A022819, the canonical program `A022819.P904472946109126390` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022819 has offset 0).

The definition of A022819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022819.P186607757511818707

`floor(∑{#}[n-2, n/(#+2)])`
-/

namespace A022819.P186607757511818707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ k ∈ Finset.range (f1 n + 1).toNat, (n : ℚ) / (k + 2 : ℚ)⌋

end

end A022819.P186607757511818707

namespace A022819

/-- `floor(∑{#}[n-2, n/(#+2)])` -/
def P186607757511818707.Spec : Prop :=
  ∀ n, P186607757511818707.a n = A022819 n

end A022819

/-! ## A022819.P904472946109126390

`floor(A006675(n)/A000142(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022819

/-- `floor(A006675(n)/A000142(n))` -/
def P904472946109126390.Spec : Prop :=
  ∀ n, P904472946109126390.a n = A022819 n

theorem P904472946109126390.correct : P904472946109126390.Spec := by
  intro n
  simp only [A022819]

end A022819

/-! ## A022819.P1953276941006263281

`floor(∑[a(n-1)+1/(n-1)])` with `a(0)=0, a(1)=0`
-/

namespace A022819.P1953276941006263281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + 1 / ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A022819.P1953276941006263281

namespace A022819

/-- `floor(∑[a(n-1)+1/(n-1)])` -/
def P1953276941006263281.Spec : Prop :=
  ∀ n, P1953276941006263281.a n = A022819 n

end A022819

/-! ## A022819.P452326069694611569

`floor(∑[∑[n/A103505(n)]]-n)`
-/

namespace A022819.P452326069694611569
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A103505 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)⌋

end

end A022819.P452326069694611569

namespace A022819

/-- `floor(∑[∑[n/A103505(n)]]-n)` -/
def P452326069694611569.Spec : Prop :=
  ∀ n, P452326069694611569.a n = A022819 n

end A022819

/-! ## A022819.P11563635508316091015

`A060293(n)-A326178(n)`
-/

namespace A022819.P11563635508316091015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060293 n - A326178 n

end

end A022819.P11563635508316091015

namespace A022819

/-- `A060293(n)-A326178(n)` -/
def P11563635508316091015.Spec : Prop :=
  ∀ n, P11563635508316091015.a n = A022819 n

end A022819

/-! ## A022819.P6727847532850612957

`A052488(A028310(n))-A028310(n)`
-/

namespace A022819.P6727847532850612957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (A028310 n).toNat - A028310 n

end

end A022819.P6727847532850612957

namespace A022819

/-- `A052488(A028310(n))-A028310(n)` -/
def P6727847532850612957.Spec : Prop :=
  ∀ n, P6727847532850612957.a n = A022819 n

end A022819

/-! ## A022819.P11831028436964647798

`A052488(A123108(2*n))-A123108(2*n)`
-/

namespace A022819.P11831028436964647798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (A123108 (2 * n)).toNat - A123108 (2 * n)

end

end A022819.P11831028436964647798

namespace A022819

/-- `A052488(A123108(2*n))-A123108(2*n)` -/
def P11831028436964647798.Spec : Prop :=
  ∀ n, P11831028436964647798.a n = A022819 n

end A022819

/-! ## A022819.P12394924008872447171

`A052488(A000007(n)+n)-(A000007(n)+n)`
-/

namespace A022819.P12394924008872447171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (A000007 n + (n : ℤ)).toNat - (A000007 n + (n : ℤ))

end

end A022819.P12394924008872447171

namespace A022819

/-- `A052488(A000007(n)+n)-(A000007(n)+n)` -/
def P12394924008872447171.Spec : Prop :=
  ∀ n, P12394924008872447171.a n = A022819 n

end A022819

/-!
# A022820: [ n/1 ] - [ (n-1)/2 ] + [ (n-2)/3 ] - ... + ((-1)^n)[ 2/(n-1) ].

The programs for A022820, the canonical program `A022820.P10907069291744158179` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022820 has offset 2).

The definition of A022820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022820.P10907069291744158179

`∑[A325937(n+3)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A022820

/-- `∑[A325937(n+3)]+1` -/
def P10907069291744158179.Spec : Prop :=
  ∀ n, P10907069291744158179.a n = A022820 (n + 2)

theorem P10907069291744158179.correct : P10907069291744158179.Spec := by
  intro n
  simp only [A022820, Nat.add_sub_cancel]

end A022820

/-! ## A022820.P13033371334830377149

`A325937(n+3)+A275495(n+2)`
-/

namespace A022820.P13033371334830377149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3) + A275495 (n + 2)

end

end A022820.P13033371334830377149

namespace A022820

/-- `A325937(n+3)+A275495(n+2)` -/
def P13033371334830377149.Spec : Prop :=
  ∀ n, P13033371334830377149.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P13022775040383657681

`A275495(n+3)`
-/

namespace A022820.P13022775040383657681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (n + 3)

end

end A022820.P13022775040383657681

namespace A022820

/-- `A275495(n+3)` -/
def P13022775040383657681.Spec : Prop :=
  ∀ n, P13022775040383657681.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P7176200983317028902

`n+2+∑[A335021(n+3)]`
-/

namespace A022820.P7176200983317028902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022820.P7176200983317028902

namespace A022820

/-- `n+2+∑[A335021(n+3)]` -/
def P7176200983317028902.Spec : Prop :=
  ∀ n, P7176200983317028902.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P4609226209137655929

`A059851(n+3)-char[2*n]`
-/

namespace A022820.P4609226209137655929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A022820.P4609226209137655929

namespace A022820

/-- `A059851(n+3)-char[2*n]` -/
def P4609226209137655929.Spec : Prop :=
  ∀ n, P4609226209137655929.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P14476567601554843342

`∑[A048272(n+3)]+n%2`
-/

namespace A022820.P14476567601554843342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 : ℕ) : ℤ)

end

end A022820.P14476567601554843342

namespace A022820

/-- `∑[A048272(n+3)]+n%2` -/
def P14476567601554843342.Spec : Prop :=
  ∀ n, P14476567601554843342.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P17855214879930420542

`A000035(n)+∑[A048272(n+3)]`
-/

namespace A022820.P17855214879930420542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022820.P17855214879930420542

namespace A022820

/-- `A000035(n)+∑[A048272(n+3)]` -/
def P17855214879930420542.Spec : Prop :=
  ∀ n, P17855214879930420542.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P4728078293151235897

`A335021(n+3)+A332682(n+3)`
-/

namespace A022820.P4728078293151235897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 3) + A332682 (n + 3)

end

end A022820.P4728078293151235897

namespace A022820

/-- `A335021(n+3)+A332682(n+3)` -/
def P4728078293151235897.Spec : Prop :=
  ∀ n, P4728078293151235897.a n = A022820 (n + 2)

end A022820

/-! ## A022820.P14510810207511230500

`A308167(n+3)+A110654(n)+1`
-/

namespace A022820.P14510810207511230500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308167 (n + 3) + (A110654 n + 1)

end

end A022820.P14510810207511230500

namespace A022820

/-- `A308167(n+3)+A110654(n)+1` -/
def P14510810207511230500.Spec : Prop :=
  ∀ n, P14510810207511230500.a n = A022820 (n + 2)

end A022820

/-!
# A022821: [ (n+1)/(n-1) ] + [ (n+2)/(n-2) ] + ... + [ (2n-1)/1 ].

The programs for A022821, the canonical program `A022821.P4749726610708956292` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022821 has offset 2).

The definition of A022821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022821.P847963825810078065

`A036789(n)+1+n`
-/

namespace A022821.P847963825810078065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036789 n + 1 + (n : ℤ)

end

end A022821.P847963825810078065

namespace A022821

/-- `A036789(n)+1+n` -/
def P847963825810078065.Spec : Prop :=
  ∀ n, P847963825810078065.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P10480829902565486699

`∑[Δ[A062550(n+1)]-2]`
-/

namespace A022821.P10480829902565486699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P10480829902565486699

namespace A022821

/-- `∑[Δ[A062550(n+1)]-2]` -/
def P10480829902565486699.Spec : Prop :=
  ∀ n, P10480829902565486699.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P4749726610708956292

`∑[A092405(2*n+3)-2]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022821

/-- `∑[A092405(2*n+3)-2]` -/
def P4749726610708956292.Spec : Prop :=
  ∀ n, P4749726610708956292.a n = A022821 (n + 2)

theorem P4749726610708956292.correct : P4749726610708956292.Spec := by
  intro n
  simp only [A022821, Nat.add_sub_cancel]

end A022821

/-! ## A022821.P15665291900163312995

`A062550(n+2)-(2*n+5)`
-/

namespace A022821.P15665291900163312995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 2) - (2 * n + 5 : ℤ)

end

end A022821.P15665291900163312995

namespace A022821

/-- `A062550(n+2)-(2*n+5)` -/
def P15665291900163312995.Spec : Prop :=
  ∀ n, P15665291900163312995.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P6061927847891481172

`∑[Δ[A006218(2*(n+1))]-2]`
-/

namespace A022821.P6061927847891481172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P6061927847891481172

namespace A022821

/-- `∑[Δ[A006218(2*(n+1))]-2]` -/
def P6061927847891481172.Spec : Prop :=
  ∀ n, P6061927847891481172.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P15072146891512222712

`A339217(n+2)-1`
-/

namespace A022821.P15072146891512222712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339217 (n + 2) - 1

end

end A022821.P15072146891512222712

namespace A022821

/-- `A339217(n+2)-1` -/
def P15072146891512222712.Spec : Prop :=
  ∀ n, P15072146891512222712.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P16189231209930505874

`A099055(n+2)-2*(n+3)`
-/

namespace A022821.P16189231209930505874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 (n + 2) - (2 * (n + 3) : ℤ)

end

end A022821.P16189231209930505874

namespace A022821

/-- `A099055(n+2)-2*(n+3)` -/
def P16189231209930505874.Spec : Prop :=
  ∀ n, P16189231209930505874.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P15030005714676840180

`A006218(A020705(2*n))-(2*n+5)`
-/

namespace A022821.P15030005714676840180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A020705 (2 * n)).toNat - (2 * n + 5 : ℤ)

end

end A022821.P15030005714676840180

namespace A022821

/-- `A006218(A020705(2*n))-(2*n+5)` -/
def P15030005714676840180.Spec : Prop :=
  ∀ n, P15030005714676840180.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P10751660305324548562

`∑[A274010(2*(n+2))]`
-/

namespace A022821.P10751660305324548562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P10751660305324548562

namespace A022821

/-- `∑[A274010(2*(n+2))]` -/
def P10751660305324548562.Spec : Prop :=
  ∀ n, P10751660305324548562.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P9267284730502540339

`A002541(2*(n+2))-1`
-/

namespace A022821.P9267284730502540339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (2 * (n + 2)) - 1

end

end A022821.P9267284730502540339

namespace A022821

/-- `A002541(2*(n+2))-1` -/
def P9267284730502540339.Spec : Prop :=
  ∀ n, P9267284730502540339.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P9814030234444563048

`∑[A092338(2*(n+2))-1]`
-/

namespace A022821.P9814030234444563048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (2 * (n + 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P9814030234444563048

namespace A022821

/-- `∑[A092338(2*(n+2))-1]` -/
def P9814030234444563048.Spec : Prop :=
  ∀ n, P9814030234444563048.a n = A022821 (n + 2)

end A022821

/-! ## A022821.P6094703958659901992

`∑[A086327(n+1)+A000005(2*n+3)]`
-/

namespace A022821.P6094703958659901992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086327 (n + 1) + A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P6094703958659901992

namespace A022821

/-- `∑[A086327(n+1)+A000005(2*n+3)]` -/
def P6094703958659901992.Spec : Prop :=
  ∀ n, P6094703958659901992.a n = A022821 (n + 2)

end A022821

/-!
# A022822: a(n) = [ (n+2)/(n-1) ] + [ (n+4)/(n-2) ] + ... + [ (3n-2)/1 ].

The programs for A022822, the canonical program `A022822.P3004158161790702490` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022822 has offset 2).

The definition of A022822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022822.P12428744528872301845

`A022823(n+2)-(n+1)`
-/

namespace A022822.P12428744528872301845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022823 (n + 2) - (n + 1 : ℤ)

end

end A022822.P12428744528872301845

namespace A022822

/-- `A022823(n+2)-(n+1)` -/
def P12428744528872301845.Spec : Prop :=
  ∀ n, P12428744528872301845.a n = A022822 (n + 2)

theorem P12428744528872301845.correct : P12428744528872301845.Spec := by
  intro n
  simp only [A022822, Nat.add_sub_cancel, A022822.P12428744528872301845.a, A022822.P3004158161790702490.f2, A022822.P3004158161790702490.f1, A022822.P3004158161790702490.a, A022823, A022823.P13984185268701905408.a, A339918, A339918.P17540668078201323779.f1, A339918.P17540668078201323779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022822

/-! ## A022822.P3004158161790702490

`∑[Δ[A339918(1+n)]-2]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022822

/-- `∑[Δ[A339918(1+n)]-2]` -/
def P3004158161790702490.Spec : Prop :=
  ∀ n, P3004158161790702490.a n = A022822 (n + 2)

theorem P3004158161790702490.correct : P3004158161790702490.Spec := by
  intro n
  simp only [A022822, Nat.add_sub_cancel]

end A022822

/-! ## A022822.P11974839678312114661

`A339918(n+2)-(2*n+5)`
-/

namespace A022822.P11974839678312114661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 (n + 2) - (2 * n + 5 : ℤ)

end

end A022822.P11974839678312114661

namespace A022822

/-- `A339918(n+2)-(2*n+5)` -/
def P11974839678312114661.Spec : Prop :=
  ∀ n, P11974839678312114661.a n = A022822 (n + 2)

end A022822

/-! ## A022822.P3679479648737991623

`A325459(3*(n+2))+∑[n%2+2]-(n+1)`
-/

namespace A022822.P3679479648737991623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (3 * (n + 2)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A022822.P3679479648737991623

namespace A022822

/-- `A325459(3*(n+2))+∑[n%2+2]-(n+1)` -/
def P3679479648737991623.Spec : Prop :=
  ∀ n, P3679479648737991623.a n = A022822 (n + 2)

end A022822

/-! ## A022822.P14245508671447849889

`A325459(3*(n+2))+∑[A000034(n)]`
-/

namespace A022822.P14245508671447849889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (3 * (n + 2)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022822.P14245508671447849889

namespace A022822

/-- `A325459(3*(n+2))+∑[A000034(n)]` -/
def P14245508671447849889.Spec : Prop :=
  ∀ n, P14245508671447849889.a n = A022822 (n + 2)

end A022822

/-! ## A022822.P14898181292695718853

`A325459(3*(n+2))+A032766(n+1)`
-/

namespace A022822.P14898181292695718853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (3 * (n + 2)) + A032766 (n + 1)

end

end A022822.P14898181292695718853

namespace A022822

/-- `A325459(3*(n+2))+A032766(n+1)` -/
def P14898181292695718853.Spec : Prop :=
  ∀ n, P14898181292695718853.a n = A022822 (n + 2)

end A022822

/-! ## A022822.P9315737941352592240

`A002541(3*(n+2))-A065033(3*n+7)`
-/

namespace A022822.P9315737941352592240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (3 * (n + 2)) - A065033 (3 * n + 7)

end

end A022822.P9315737941352592240

namespace A022822

/-- `A002541(3*(n+2))-A065033(3*n+7)` -/
def P9315737941352592240.Spec : Prop :=
  ∀ n, P9315737941352592240.a n = A022822 (n + 2)

end A022822

/-! ## A022822.P9242232817444729230

`A060000(A022823(n+2))-n`
-/

namespace A022822.P9242232817444729230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A022823 (n + 2)).toNat - (n : ℤ)

end

end A022822.P9242232817444729230

namespace A022822

/-- `A060000(A022823(n+2))-n` -/
def P9242232817444729230.Spec : Prop :=
  ∀ n, P9242232817444729230.a n = A022822 (n + 2)

end A022822

/-!
# A022823: a(n) = [ (2n+1)/(n-1) ] + [ (2n+2)/(n-2) ] + ... + [ (3n-1)/1 ].

The programs for A022823, the canonical program `A022823.P13984185268701905408` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022823 has offset 2).

The definition of A022823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022823.P13984185268701905408

`A022822(n+2)+1+n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022823

/-- `A022822(n+2)+1+n` -/
def P13984185268701905408.Spec : Prop :=
  ∀ n, P13984185268701905408.a n = A022823 (n + 2)

theorem P13984185268701905408.correct : P13984185268701905408.Spec := by
  intro n
  simp only [A022823, Nat.add_sub_cancel]

end A022823

/-! ## A022823.P3245083571520860885

`A339918(n+2)-(n+4)`
-/

namespace A022823.P3245083571520860885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 (n + 2) - (n + 4 : ℤ)

end

end A022823.P3245083571520860885

namespace A022823

/-- `A339918(n+2)-(n+4)` -/
def P3245083571520860885.Spec : Prop :=
  ∀ n, P3245083571520860885.a n = A022823 (n + 2)

end A022823

/-! ## A022823.P3713435385083226953

`∑[A023443(Δ[A339918(n+1)])]`
-/

namespace A022823.P3713435385083226953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022823.P3713435385083226953

namespace A022823

/-- `∑[A023443(Δ[A339918(n+1)])]` -/
def P3713435385083226953.Spec : Prop :=
  ∀ n, P3713435385083226953.a n = A022823 (n + 2)

end A022823

/-! ## A022823.P3946652494811173776

`∑[A233583(Δ[A339918(n+1)])]`
-/

namespace A022823.P3946652494811173776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022823.P3946652494811173776

namespace A022823

/-- `∑[A233583(Δ[A339918(n+1)])]` -/
def P3946652494811173776.Spec : Prop :=
  ∀ n, P3946652494811173776.a n = A022823 (n + 2)

end A022823

/-! ## A022823.P13066508555482375914

`A325459(3*(n+2))+∑[n%2+2]`
-/

namespace A022823.P13066508555482375914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (3 * (n + 2)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022823.P13066508555482375914

namespace A022823

/-- `A325459(3*(n+2))+∑[n%2+2]` -/
def P13066508555482375914.Spec : Prop :=
  ∀ n, P13066508555482375914.a n = A022823 (n + 2)

end A022823

/-! ## A022823.P4610352808189951006

`A002541(A008486(n+2))-(A008619(n)+2)`
-/

namespace A022823.P4610352808189951006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A008486 (n + 2)).toNat - (A008619 n + 2)

end

end A022823.P4610352808189951006

namespace A022823

/-- `A002541(A008486(n+2))-(A008619(n)+2)` -/
def P4610352808189951006.Spec : Prop :=
  ∀ n, P4610352808189951006.a n = A022823 (n + 2)

end A022823

/-!
# A022824: a(n) = [ (2n+2)/(n-1) ] + [ (2n+4)/(n-2) ] + ... + [ (4n-2)/1 ].

The programs for A022824, there is no canonical definition to state claims against.
-/

/-! ## A022824.P1344355875036646906

`A338973(A004768(n)-A243196(n+1))`
-/

namespace A022824.P1344355875036646906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338973 (A004768 n - A243196 (n + 1)).toNat

end

end A022824.P1344355875036646906

/-! ## A022824.P13424044635779653607

`A006218(3*n+4)-A333257(A108917(2*(n+1)))`
-/

namespace A022824.P13424044635779653607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n + 4) - A333257 (A108917 (2 * (n + 1))).toNat

end

end A022824.P13424044635779653607

/-!
# A022825: a(n) = a([ n/2 ]) + a([ n/3 ]) + . . . + a([ n/n ]) for n > 1, a(1) = 1.

The programs for A022825, there is no canonical definition to state claims against.
-/

/-! ## A022825.P15886506344751792904

`∑[A345182(1+n)]`
-/

namespace A022825.P15886506344751792904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022825.P15886506344751792904

/-! ## A022825.P5470806420174443182

`A345182(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A022825.P5470806420174443182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345182 (n + 1) + a (n - 1)

end

end A022825.P5470806420174443182

/-! ## A022825.P4978430027047963386

`A173382(n+1)-A173382(∑[n%2])`
-/

namespace A022825.P4978430027047963386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 (n + 1) - A173382 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022825.P4978430027047963386

/-! ## A022825.P4175401738844845992

`A173382(n+1)-A173382(∑[and(1, n)])`
-/

namespace A022825.P4175401738844845992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 (n + 1) - A173382 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022825.P4175401738844845992

/-! ## A022825.P7476619945905690127

`∑[A002033(n)-A074206(∑[n]%(n+1))]`
-/

namespace A022825.P7476619945905690127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A074206 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022825.P7476619945905690127

/-! ## A022825.P15825965014575558515

`A173382(n+1)-A173382(floor((n+1)/2))`
-/

namespace A022825.P15825965014575558515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 (n + 1) - A173382 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A022825.P15825965014575558515

/-! ## A022825.P17394711635503482135

`∑[∑{d}[n+1, A067824(#)*A092673((n+1)/#)]]`
-/

namespace A022825.P17394711635503482135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A067824 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022825.P17394711635503482135

/-!
# A022826: a(n) = a([ (n+1)/2 ]) + a([ (n+1)/3 ]) + . . . + a([ (n+1)/n ]).

The programs for A022826, there is no canonical definition to state claims against.
-/

/-! ## A022826.P16675558319157873048

`A022829(n)-A248805(A129021(n))`
-/

namespace A022826.P16675558319157873048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022829 n - A248805 (A129021 n).toNat

end

end A022826.P16675558319157873048

/-! ## A022826.P9262919770197752565

`A124765(A122748(n))+∑[∑{e}[n, #]]`
-/

namespace A022826.P9262919770197752565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A122748 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022826.P9262919770197752565

/-! ## A022826.P8412049905276279308

`A365877(A043318(n+1))+A347646(n)-A347647(n)`
-/

namespace A022826.P8412049905276279308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A043318 (n + 1)).toNat + A347646 n - A347647 n

end

end A022826.P8412049905276279308

/-!
# A022827: a(n) = absolute value of ( a([ n/2 ]) - a([ n/3 ]) + ... + ((-1)^n)a([ n/n ]) ).

The programs for A022827, there is no canonical definition to state claims against.
-/

/-! ## A022827.P3161322169941556294

`and(abs(A309288(n+1)), A057618(n+2))`
-/

namespace A022827.P3161322169941556294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |A309288 (n + 1)| (A057618 (n + 2))

end

end A022827.P3161322169941556294

/-! ## A022827.P9497032556128195960

`A343914(A314990(n))`
-/

namespace A022827.P9497032556128195960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343914 (A314990 n).toNat

end

end A022827.P9497032556128195960

/-! ## A022827.P3739580439857389836

`A156542(A022369(n)+21)`
-/

namespace A022827.P3739580439857389836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (A022369 n + 21).toNat

end

end A022827.P3739580439857389836

/-! ## A022827.P5252292990472811402

`A358005(C(A258642(n+3), A030111(n+1)))`
-/

namespace A022827.P5252292990472811402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358005 (Nat.choose (A258642 (n + 3)).toNat (A030111 (n + 1)).toNat + 19)

end

end A022827.P5252292990472811402

/-! ## A022827.P14922425769830246416

`A035222(A383377(n))`
-/

namespace A022827.P14922425769830246416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 (A383377 n).toNat

end

end A022827.P14922425769830246416

/-!
# A022828: a(n) = absolute value of ( a([ (n+1)/2 ]) - a([ (n+1)/3 ])+...+((-1)^n)a([ (n+1)/n ]) ).

The programs for A022828, there is no canonical definition to state claims against.
-/

/-! ## A022828.P13558671845670065941

`A369433(A345168(n+1))%3`
-/

namespace A022828.P13558671845670065941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369433 (A345168 (n + 1)).toNat) 3

end

end A022828.P13558671845670065941

/-! ## A022828.P4245125428339642904

`A105700(A049916(n+1)+1-n)`
-/

namespace A022828.P4245125428339642904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A049916 (n + 1) + (1 - (n : ℤ))).toNat

end

end A022828.P4245125428339642904

/-! ## A022828.P17263443467858613960

`A327310(A327313(n+1)+(n+1)*Δ[n^3])`
-/

namespace A022828.P17263443467858613960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 (A327313 (n + 1) + (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A022828.P17263443467858613960

/-! ## A022828.P5324343053812213826

`A039981(A282956(n))`
-/

namespace A022828.P5324343053812213826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039981 (A282956 n).toNat

end

end A022828.P5324343053812213826

/-! ## A022828.P13772694418159218737

`val(A160664(A391680(n+1)), 2)`
-/

namespace A022828.P13772694418159218737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160664 (A391680 (n + 1)).toNat).toNat 2

end

end A022828.P13772694418159218737

/-!
# A022829: a(n) = a([ .5 + n/2 ]) + a([ .5 + n/3 ]) + ... + a([ .5 + n/n ]).

The programs for A022829, there is no canonical definition to state claims against.
-/

/-! ## A022829.P9663819879686825175

`∑[A008624(n)]-A037911(A290344(n))`
-/

namespace A022829.P9663819879686825175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037911 (A290344 n).toNat

end

end A022829.P9663819879686825175

/-! ## A022829.P370887759922118998

`A374054(A210345(n+1))`
-/

namespace A022829.P370887759922118998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374054 (A210345 (n + 1)).toNat

end

end A022829.P370887759922118998

/-! ## A022829.P17079839357343442299

`A322418(A081651(n))+∑[∑{e}[n, #]]`
-/

namespace A022829.P17079839357343442299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322418 (A081651 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022829.P17079839357343442299

/-! ## A022829.P9841244053997202897

`∑[and(A008624(n), A112230(3*n+2))]`
-/

namespace A022829.P9841244053997202897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008624 n) (A112230 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022829.P9841244053997202897

/-! ## A022829.P13396516157711491073

`A043562(A173392(n+1))+∑[∑{e}[n, #]]`
-/

namespace A022829.P13396516157711491073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A173392 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022829.P13396516157711491073

/-!
# A022830: a(n) = -[ n/2 ] + a([ n/2 ]) + a([ n/3 ]) + . . . + a([ n/n ]).

The programs for A022830, there is no canonical definition to state claims against.
-/

/-! ## A022830.P1124621969999969345

`A266174(A011782(n))+A017828(n)`
-/

namespace A022830.P1124621969999969345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 (A011782 n).toNat + A017828 n

end

end A022830.P1124621969999969345

/-! ## A022830.P6381000663219425573

`xor(A059169(n+1), A062892(A202170(n+1)))`
-/

namespace A022830.P6381000663219425573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059169 (n + 1)) (A062892 (A202170 (n + 1)).toNat)

end

end A022830.P6381000663219425573

/-! ## A022830.P5998224660961834988

`A033922(2^n)-val(n+1, 2)`
-/

namespace A022830.P5998224660961834988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (2 ^ n) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A022830.P5998224660961834988

/-! ## A022830.P2409928764559474850

`A285936(A298351(n+1))`
-/

namespace A022830.P2409928764559474850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285936 ((A298351 (n + 1)).toNat + 10)

end

end A022830.P2409928764559474850

/-! ## A022830.P2421783266689638781

`A124765(A189911(n))-and(1, n)`
-/

namespace A022830.P2421783266689638781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A189911 n).toNat - (Nat.land 1 n : ℤ)

end

end A022830.P2421783266689638781

/-!
# A022833: a(0)=2; thereafter a(n) = a(n-1) + prime(n) if a(n-1) < prime(n), otherwise a(n) = a(n-1) - prime(n). Cf. A008348.

The programs for A022833, there is no canonical definition to state claims against.
-/

/-! ## A022833.P18267675969897513343

`((a(n-1)+A006093(n)+1)%A001747(n+1))%A324787(n)` with `a(0)=2`
-/

namespace A022833.P18267675969897513343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (Int.tmod (a (n - 1) + (A006093 n + 1)) (A001747 (n + 1))) (A324787 n)

end

end A022833.P18267675969897513343

/-! ## A022833.P4806451428362635627

`((a(n-1)+A014689(n)+n)%A001747(n+1))%A324787(n)` with `a(0)=2`
-/

namespace A022833.P4806451428362635627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (Int.tmod (a (n - 1) + (A014689 n + (n : ℤ))) (A001747 (n + 1))) (A324787 n)

end

end A022833.P4806451428362635627

/-!
# A022834: a(n) = c(1)p(3) + ... + c(n)p(n+2), where c(i) = 1 if a(i-1) <= p(i+2) and c(i) = -1 if a(i-1) > p(i+2) (p(i) = primes).

The programs for A022834, there is no canonical definition to state claims against.
-/

/-! ## A022834.P4770321948845274914

`1/tan(acot(A309222(n+3)-1))`
-/

namespace A022834.P4770321948845274914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.tan (SequenceMachineLib.acot (A309222 (n + 3) - 1 : ℝ))

end

end A022834.P4770321948845274914

/-! ## A022834.P8019559811337414821

`A146075(n)!*A022835(n)`
-/

namespace A022834.P8019559811337414821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A146075 n).toNat : ℤ) * A022835 n

end

end A022834.P8019559811337414821

/-! ## A022834.P12445158383564206409

`A022837(A032555(n+1)+2)`
-/

namespace A022834.P12445158383564206409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 (A032555 (n + 1) + 2).toNat

end

end A022834.P12445158383564206409

/-! ## A022834.P183016315803817828

`A022837(A032559(n+1)+2)`
-/

namespace A022834.P183016315803817828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 (A032559 (n + 1) + 2).toNat

end

end A022834.P183016315803817828

/-! ## A022834.P5182460966618690147

`A022837(A078213(n+1)+2)`
-/

namespace A022834.P5182460966618690147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 (A078213 (n + 1) + 2).toNat

end

end A022834.P5182460966618690147

/-!
# A022835: a(n) = c(1)p(3) + ... + c(n)p(n+2), where c(i) = 1 if a(i-1) < p(i+2) and c(i) = -1 if a(i-1) >= p(i+2) (p(i) = primes).

The programs for A022835, there is no canonical definition to state claims against.
-/

/-! ## A022835.P3841389410762757409

`A022837(n+3)`
-/

namespace A022835.P3841389410762757409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 (n + 3)

end

end A022835.P3841389410762757409

/-! ## A022835.P9032183159826944478

`A309222(n+3)-1`
-/

namespace A022835.P9032183159826944478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 (n + 3) - 1

end

end A022835.P9032183159826944478

/-! ## A022835.P14044533064467098242

`A057428(n+1)+A309222(n+3)`
-/

namespace A022835.P14044533064467098242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A309222 (n + 3)

end

end A022835.P14044533064467098242

/-! ## A022835.P13423570516030291605

`A023443(A309222(n+3))`
-/

namespace A022835.P13423570516030291605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A309222 (n + 3)).toNat

end

end A022835.P13423570516030291605

/-! ## A022835.P17990829223238285310

`A289207(A309222(n+3)+1)`
-/

namespace A022835.P17990829223238285310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A309222 (n + 3) + 1).toNat

end

end A022835.P17990829223238285310

/-!
# A022836: a(n) = c(1)*p(0) + ... + c(n)*p(n-1), where c(i) = 1 if a(i-1) <= p(i-1) and c(i) = -1 if a(i-1) > p(i-1) (with p(0) = 1 and p(i) a prime for i >= 1).

The programs for A022836, there is no canonical definition to state claims against.
-/

/-! ## A022836.P17590005047498437959

`A008348(n)+1`
-/

namespace A022836.P17590005047498437959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n + 1

end

end A022836.P17590005047498437959

/-! ## A022836.P17923619316711853438

`n-(A023443(n)-A008348(n))`
-/

namespace A022836.P17923619316711853438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A008348 n)

end

end A022836.P17923619316711853438

/-! ## A022836.P13299927841699437989

`1-(A000007(A007918(n))-A008348(n))`
-/

namespace A022836.P13299927841699437989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 (A007918 n).toNat - A008348 n)

end

end A022836.P13299927841699437989

/-! ## A022836.P1035551388471126930

`1-(A000007(A313705(n))-A008348(n))`
-/

namespace A022836.P1035551388471126930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 (A313705 n).toNat - A008348 n)

end

end A022836.P1035551388471126930

/-! ## A022836.P16846043872714096112

`A028310(A008348(n)-A057428(n))`
-/

namespace A022836.P16846043872714096112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008348 n - A057428 n).toNat

end

end A022836.P16846043872714096112

/-! ## A022836.P17314231526720255908

`A008619(2*A008348(n))`
-/

namespace A022836.P17314231526720255908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A008348 n).toNat

end

end A022836.P17314231526720255908

/-! ## A022836.P16205987081059205136

`A028242(2*A008348(n))`
-/

namespace A022836.P16205987081059205136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A008348 n).toNat

end

end A022836.P16205987081059205136

/-! ## A022836.P6243697947961055579

`A110514(2*A008348(n))`
-/

namespace A022836.P6243697947961055579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * A008348 n).toNat

end

end A022836.P6243697947961055579

/-! ## A022836.P13500623438806053562

`A008620(3*A008348(n))`
-/

namespace A022836.P13500623438806053562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A008348 n).toNat

end

end A022836.P13500623438806053562

/-!
# A022837: a(n) = c(0)*p(0) + ... + c(n)*p(n), where c(i) = 1 if a(i-1) < p(i) and c(i) = -1 if a(i-1) >= p(i) (p(0) = 1, p(i) = prime(i)).

The programs for A022837, there is no canonical definition to state claims against.
-/

/-! ## A022837.P11152973573799763350

`(A309222(n)-1)%A062123(n)`
-/

namespace A022837.P11152973573799763350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309222 n - 1) (A062123 n)

end

end A022837.P11152973573799763350

/-! ## A022837.P11902181176348054775

`(A309222(n)-2)*A057427(n)+1`
-/

namespace A022837.P11902181176348054775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309222 n - 2) * A057427 n + 1

end

end A022837.P11902181176348054775

/-! ## A022837.P4566169129744327231

`A309222(n)%A275217(n+1)-1`
-/

namespace A022837.P4566169129744327231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309222 n) (A275217 (n + 1)) - 1

end

end A022837.P4566169129744327231

/-! ## A022837.P2467433227809479833

`∏{e}[A020639(n+1), A309222(n)-#]`
-/

namespace A022837.P2467433227809479833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A309222 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A022837.P2467433227809479833

/-! ## A022837.P9066129409809972661

`A309222(n)-A140750(A058306(n))`
-/

namespace A022837.P9066129409809972661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A140750 (A058306 n).toNat

end

end A022837.P9066129409809972661

/-! ## A022837.P9105520195197629715

`A309222(n)-A286254(A000040(n+1))`
-/

namespace A022837.P9105520195197629715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (A000040 (n + 1)).toNat

end

end A022837.P9105520195197629715

/-! ## A022837.P17212828806685380847

`A309222(n)-A286254(record[A006530(n+2)])`
-/

namespace A022837.P17212828806685380847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022837.P17212828806685380847

/-! ## A022837.P61365070358019692

`A309222(n)-A286254(record[A020639(n+2)])`
-/

namespace A022837.P61365070358019692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022837.P61365070358019692

/-! ## A022837.P13503822621703014099

`A309222(n)-A286254(A040976(n+1)+2)`
-/

namespace A022837.P13503822621703014099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (A040976 (n + 1) + 2).toNat

end

end A022837.P13503822621703014099

/-! ## A022837.P18174893083447662984

`A309222(n)-A286254(eq[1, A001222(n+1)]+1)`
-/

namespace A022837.P18174893083447662984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A022837.P18174893083447662984

/-! ## A022837.P15658428130422918365

`A309222(n)-A286254(comp[A018252(n+1)-1]+1)`
-/

namespace A022837.P15658428130422918365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A022837.P15658428130422918365

/-! ## A022837.P9513321287320123297

`A309222(n)-A014963(A274535(n+1))`
-/

namespace A022837.P9513321287320123297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A014963 (A274535 (n + 1)).toNat

end

end A022837.P9513321287320123297

/-! ## A022837.P5054153583027415065

`A309222(n)-gcd(5, A168253(n+1))`
-/

namespace A022837.P5054153583027415065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - (Int.gcd 5 (A168253 (n + 1)) : ℤ)

end

end A022837.P5054153583027415065

/-! ## A022837.P18348725870177615720

`A309222(n)-A286254(A006530(n²+2))`
-/

namespace A022837.P18348725870177615720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n - A286254 (A006530 (n ^ 2 + 2)).toNat

end

end A022837.P18348725870177615720

/-!
# A022838: Beatty sequence for sqrt(3); complement of A054406.

The programs for A022838, the canonical program `A022838.P2955185450675945792` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022838 has offset 1).

The definition of A022838 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022838.anchor (n : ℕ) (hn : 1 ≤ n) : A022838 n = ⌊(n : ℝ) * Real.sqrt 3⌋` in `Proof.A022.A022838`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022838.P2955185450675945792

`floor((n+1)*sqrt(3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022838

/-- `floor((n+1)*sqrt(3))` -/
def P2955185450675945792.Spec : Prop :=
  ∀ n, P2955185450675945792.a n = A022838 (n + 1)

theorem P2955185450675945792.correct : P2955185450675945792.Spec := by
  intro n
  simp only [A022838, Nat.add_sub_cancel]

end A022838

/-! ## A022838.P9856336692489785485

`A000196(3*(n+1)²)`
-/

namespace A022838.P9856336692489785485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * (n + 1) ^ 2)

end

end A022838.P9856336692489785485

namespace A022838

/-- `A000196(3*(n+1)²)` -/
def P9856336692489785485.Spec : Prop :=
  ∀ n, P9856336692489785485.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P2369564043122448853

`∑[Δ[floor(n*sqrt(3))]!]`
-/

namespace A022838.P2369564043122448853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P2369564043122448853

namespace A022838

/-- `∑[Δ[floor(n*sqrt(3))]!]` -/
def P2369564043122448853.Spec : Prop :=
  ∀ n, (P2369564043122448853.a n : ℤ) = A022838 (n + 1)

end A022838

/-! ## A022838.P18399402067824361195

`∑[dr(Δ[floor(n*sqrt(3))])]`
-/

namespace A022838.P18399402067824361195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P18399402067824361195

namespace A022838

/-- `∑[dr(Δ[floor(n*sqrt(3))])]` -/
def P18399402067824361195.Spec : Prop :=
  ∀ n, (P18399402067824361195.a n : ℤ) = A022838 (n + 1)

end A022838

/-! ## A022838.P13070150172364678787

`record[floor(abs(1-n)*sqrt(3))]`
-/

namespace A022838.P13070150172364678787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022838.P13070150172364678787

namespace A022838

/-- `record[floor(abs(1-n)*sqrt(3))]` -/
def P13070150172364678787.Spec : Prop :=
  ∀ n, P13070150172364678787.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P13799812387574506578

`∑[Δ[floor(n*sqrt(3))]%3]`
-/

namespace A022838.P13799812387574506578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P13799812387574506578

namespace A022838

/-- `∑[Δ[floor(n*sqrt(3))]%3]` -/
def P13799812387574506578.Spec : Prop :=
  ∀ n, P13799812387574506578.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P9873693711165291660

`∑[A080757(n)]`
-/

namespace A022838.P9873693711165291660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P9873693711165291660

namespace A022838

/-- `∑[A080757(n)]` -/
def P9873693711165291660.Spec : Prop :=
  ∀ n, P9873693711165291660.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P4831732622656280636

`A198081(n+1)-1`
-/

namespace A022838.P4831732622656280636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) - 1

end

end A022838.P4831732622656280636

namespace A022838

/-- `A198081(n+1)-1` -/
def P4831732622656280636.Spec : Prop :=
  ∀ n, P4831732622656280636.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P17796282703054303193

`A180122(n+1)-n`
-/

namespace A022838.P17796282703054303193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) - (n : ℤ)

end

end A022838.P17796282703054303193

namespace A022838

/-- `A180122(n+1)-n` -/
def P17796282703054303193.Spec : Prop :=
  ∀ n, P17796282703054303193.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P18273327018784001443

`∑[2-Δ[A195120(n)]]`
-/

namespace A022838.P18273327018784001443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P18273327018784001443

namespace A022838

/-- `∑[2-Δ[A195120(n)]]` -/
def P18273327018784001443.Spec : Prop :=
  ∀ n, P18273327018784001443.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P5607802831579051448

`∑[A188068(n+1)+1]`
-/

namespace A022838.P5607802831579051448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P5607802831579051448

namespace A022838

/-- `∑[A188068(n+1)+1]` -/
def P5607802831579051448.Spec : Prop :=
  ∀ n, P5607802831579051448.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P11571568553977095833

`∑[A007538(n+1)-1]`
-/

namespace A022838.P11571568553977095833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P11571568553977095833

namespace A022838

/-- `∑[A007538(n+1)-1]` -/
def P11571568553977095833.Spec : Prop :=
  ∀ n, P11571568553977095833.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P994338560012305030

`∑[A276865(n+1)-2]`
-/

namespace A022838.P994338560012305030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P994338560012305030

namespace A022838

/-- `∑[A276865(n+1)-2]` -/
def P994338560012305030.Spec : Prop :=
  ∀ n, P994338560012305030.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P4911507333988548832

`A054088(n+1)-(n+1)`
-/

namespace A022838.P4911507333988548832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) - (n + 1 : ℤ)

end

end A022838.P4911507333988548832

namespace A022838

/-- `A054088(n+1)-(n+1)` -/
def P4911507333988548832.Spec : Prop :=
  ∀ n, P4911507333988548832.a n = A022838 (n + 1)

theorem P4911507333988548832.correct : P4911507333988548832.Spec := by
  intro n
  simp only [A022838, Nat.add_sub_cancel, A022838.P4911507333988548832.a, A022838.P2955185450675945792.a, A054088, A054088.P12267112223667201366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022838

/-! ## A022838.P7578058513450430958

`ceil(sqrt(A080663(n+1)))-1`
-/

namespace A022838.P7578058513450430958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A080663 (n + 1) : ℝ)⌉ - 1

end

end A022838.P7578058513450430958

namespace A022838

/-- `ceil(sqrt(A080663(n+1)))-1` -/
def P7578058513450430958.Spec : Prop :=
  ∀ n, P7578058513450430958.a n = A022838 (n + 1)

end A022838

/-! ## A022838.P4960975674450115014

`∑[char[A003511(n+1)]+1]`
-/

namespace A022838.P4960975674450115014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022838.P4960975674450115014

namespace A022838

/-- `∑[char[A003511(n+1)]+1]` -/
def P4960975674450115014.Spec : Prop :=
  ∀ n, (P4960975674450115014.a n : ℤ) = A022838 (n + 1)

end A022838

/-! ## A022838.P10609911056702802941

`A180123(n+1)-Δ[n²]`
-/

namespace A022838.P10609911056702802941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022838.P10609911056702802941

namespace A022838

/-- `A180123(n+1)-Δ[n²]` -/
def P10609911056702802941.Spec : Prop :=
  ∀ n, P10609911056702802941.a n = A022838 (n + 1)

end A022838

/-!
# A022839: Beatty sequence for sqrt(5).

The programs for A022839, the canonical program `A022839.P1029373569643495419` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022839 has offset 1).

The definition of A022839 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A022839.anchor (n : ℕ) (hn : 1 ≤ n) : A022839 n = ⌊(n : ℝ) * Real.sqrt 5⌋` in `Proof.A022.A022839`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022839.P1029373569643495419

`floor((n+1)*sqrt(5))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022839

/-- `floor((n+1)*sqrt(5))` -/
def P1029373569643495419.Spec : Prop :=
  ∀ n, P1029373569643495419.a n = A022839 (n + 1)

theorem P1029373569643495419.correct : P1029373569643495419.Spec := by
  intro n
  simp only [A022839, Nat.add_sub_cancel]

end A022839

/-! ## A022839.P4972306320373197180

`A000196(5*(n+1)²)`
-/

namespace A022839.P4972306320373197180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (5 * (n + 1) ^ 2)

end

end A022839.P4972306320373197180

namespace A022839

/-- `A000196(5*(n+1)²)` -/
def P4972306320373197180.Spec : Prop :=
  ∀ n, P4972306320373197180.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P14251107213266212005

`∑[dr(Δ[floor(n*sqrt(5))])]`
-/

namespace A022839.P14251107213266212005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P14251107213266212005

namespace A022839

/-- `∑[dr(Δ[floor(n*sqrt(5))])]` -/
def P14251107213266212005.Spec : Prop :=
  ∀ n, (P14251107213266212005.a n : ℤ) = A022839 (n + 1)

end A022839

/-! ## A022839.P15727121523447196753

`∑[runs[ceil((n+1)/sqrt(5))]]`
-/

namespace A022839.P15727121523447196753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (5 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P15727121523447196753

namespace A022839

/-- `∑[runs[ceil((n+1)/sqrt(5))]]` -/
def P15727121523447196753.Spec : Prop :=
  ∀ n, (P15727121523447196753.a n : ℤ) = A022839 (n + 1)

end A022839

/-! ## A022839.P14282278206397519579

`∑[Δ[floor(lcm(2, 2*n)/ϕ)]+1]`
-/

namespace A022839.P14282278206397519579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P14282278206397519579

namespace A022839

/-- `∑[Δ[floor(lcm(2, 2*n)/ϕ)]+1]` -/
def P14282278206397519579.Spec : Prop :=
  ∀ n, P14282278206397519579.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P16794868078305648509

`n+1+floor((n+1)/cos(π/5))`
-/

namespace A022839.P16794868078305648509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n + 1 : ℝ) / Real.cos (Real.pi / 5)⌋

end

end A022839.P16794868078305648509

namespace A022839

/-- `n+1+floor((n+1)/cos(π/5))` -/
def P16794868078305648509.Spec : Prop :=
  ∀ n, P16794868078305648509.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P2851273242505264623

`floor(Δ[ϕ*lcm(n, n+1)])-(n+1)`
-/

namespace A022839.P2851273242505264623
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (Nat.lcm n (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ - (n + 1 : ℤ)

end

end A022839.P2851273242505264623

namespace A022839

/-- `floor(Δ[ϕ*lcm(n, n+1)])-(n+1)` -/
def P2851273242505264623.Spec : Prop :=
  ∀ n, P2851273242505264623.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P12660740770296457555

`∑[A081147(n)]`
-/

namespace A022839.P12660740770296457555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P12660740770296457555

namespace A022839

/-- `∑[A081147(n)]` -/
def P12660740770296457555.Spec : Prop :=
  ∀ n, P12660740770296457555.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P8836419450063320579

`A190511(n+1)+1`
-/

namespace A022839.P8836419450063320579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (n + 1) + 1

end

end A022839.P8836419450063320579

namespace A022839

/-- `A190511(n+1)+1` -/
def P8836419450063320579.Spec : Prop :=
  ∀ n, P8836419450063320579.a n = A022839 (n + 1)

theorem P8836419450063320579.correct : P8836419450063320579.Spec := by
  intro n
  simp only [A022839, Nat.add_sub_cancel, A022839.P8836419450063320579.a, A022839.P1029373569643495419.a, A190511, A190511.P10122857199414912232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022839

/-! ## A022839.P9955102892594981827

`A198082(n+1)-1`
-/

namespace A022839.P9955102892594981827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (n + 1) - 1

end

end A022839.P9955102892594981827

namespace A022839

/-- `A198082(n+1)-1` -/
def P9955102892594981827.Spec : Prop :=
  ∀ n, P9955102892594981827.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P7896350372643594535

`∑[A188187(n+1)+2]`
-/

namespace A022839.P7896350372643594535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P7896350372643594535

namespace A022839

/-- `∑[A188187(n+1)+2]` -/
def P7896350372643594535.Spec : Prop :=
  ∀ n, P7896350372643594535.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P16582959851511229086

`∑[A276863(n+1)-1]`
-/

namespace A022839.P16582959851511229086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P16582959851511229086

namespace A022839

/-- `∑[A276863(n+1)-1]` -/
def P16582959851511229086.Spec : Prop :=
  ∀ n, P16582959851511229086.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P12731321140406588397

`∑[A276866(n+1)-2]`
-/

namespace A022839.P12731321140406588397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P12731321140406588397

namespace A022839

/-- `∑[A276866(n+1)-2]` -/
def P12731321140406588397.Spec : Prop :=
  ∀ n, P12731321140406588397.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P3951423320546342539

`A001961(n+1)+1+n`
-/

namespace A022839.P3951423320546342539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1) + 1 + (n : ℤ)

end

end A022839.P3951423320546342539

namespace A022839

/-- `A001961(n+1)+1+n` -/
def P3951423320546342539.Spec : Prop :=
  ∀ n, P3951423320546342539.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P8335073765388264251

`A276854(n+1)-(n+1)`
-/

namespace A022839.P8335073765388264251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) - (n + 1 : ℤ)

end

end A022839.P8335073765388264251

namespace A022839

/-- `A276854(n+1)-(n+1)` -/
def P8335073765388264251.Spec : Prop :=
  ∀ n, P8335073765388264251.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P16039353523930519658

`A319433(2*n)+n+2`
-/

namespace A022839.P16039353523930519658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (2 * n) + (n + 2 : ℤ)

end

end A022839.P16039353523930519658

namespace A022839

/-- `A319433(2*n)+n+2` -/
def P16039353523930519658.Spec : Prop :=
  ∀ n, P16039353523930519658.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P11409233224984483979

`A005206(Δ[n²])+n+1`
-/

namespace A022839.P11409233224984483979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A022839.P11409233224984483979

namespace A022839

/-- `A005206(Δ[n²])+n+1` -/
def P11409233224984483979.Spec : Prop :=
  ∀ n, P11409233224984483979.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P5717442576117400567

`∑[A000041(Δ[floor(n*sqrt(5))])]`
-/

namespace A022839.P5717442576117400567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P5717442576117400567

namespace A022839

/-- `∑[A000041(Δ[floor(n*sqrt(5))])]` -/
def P5717442576117400567.Spec : Prop :=
  ∀ n, P5717442576117400567.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P108275923415107762

`∑[A005117(Δ[floor(n*sqrt(5))])]`
-/

namespace A022839.P108275923415107762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P108275923415107762

namespace A022839

/-- `∑[A005117(Δ[floor(n*sqrt(5))])]` -/
def P108275923415107762.Spec : Prop :=
  ∀ n, P108275923415107762.a n = A022839 (n + 1)

end A022839

/-! ## A022839.P13891993016089363082

`∑[A006530(Δ[floor(n*sqrt(5))])]`
-/

namespace A022839.P13891993016089363082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P13891993016089363082

namespace A022839

/-- `∑[A006530(Δ[floor(n*sqrt(5))])]` -/
def P13891993016089363082.Spec : Prop :=
  ∀ n, P13891993016089363082.a n = A022839 (n + 1)

end A022839

/-!
# A022840: Beatty sequence for sqrt(6).

The programs for A022840, the canonical program `A022840.P11758101207044855511` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022840 has offset 1).

The definition of A022840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022840.P11758101207044855511

`floor((n+1)*sqrt(6))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022840

/-- `floor((n+1)*sqrt(6))` -/
def P11758101207044855511.Spec : Prop :=
  ∀ n, P11758101207044855511.a n = A022840 (n + 1)

theorem P11758101207044855511.correct : P11758101207044855511.Spec := by
  intro n
  simp only [A022840, Nat.add_sub_cancel]

end A022840

/-! ## A022840.P10391339098977784051

`A000196(6*(n+1)²)`
-/

namespace A022840.P10391339098977784051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (6 * (n + 1) ^ 2)

end

end A022840.P10391339098977784051

namespace A022840

/-- `A000196(6*(n+1)²)` -/
def P10391339098977784051.Spec : Prop :=
  ∀ n, P10391339098977784051.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P16866954603311980757

`∑[dr(Δ[floor(n*sqrt(6))])]`
-/

namespace A022840.P16866954603311980757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P16866954603311980757

namespace A022840

/-- `∑[dr(Δ[floor(n*sqrt(6))])]` -/
def P16866954603311980757.Spec : Prop :=
  ∀ n, (P16866954603311980757.a n : ℤ) = A022840 (n + 1)

end A022840

/-! ## A022840.P14422595073669161418

`∑[runs[ceil((n+1)/sqrt(6))]]`
-/

namespace A022840.P14422595073669161418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (6 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P14422595073669161418

namespace A022840

/-- `∑[runs[ceil((n+1)/sqrt(6))]]` -/
def P14422595073669161418.Spec : Prop :=
  ∀ n, (P14422595073669161418.a n : ℤ) = A022840 (n + 1)

end A022840

/-! ## A022840.P7118685519864185036

`∑[A276856(n+1)]`
-/

namespace A022840.P7118685519864185036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P7118685519864185036

namespace A022840

/-- `∑[A276856(n+1)]` -/
def P7118685519864185036.Spec : Prop :=
  ∀ n, P7118685519864185036.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P11866359338228627327

`A198083(n+1)-1`
-/

namespace A022840.P11866359338228627327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1) - 1

end

end A022840.P11866359338228627327

namespace A022840

/-- `A198083(n+1)-1` -/
def P11866359338228627327.Spec : Prop :=
  ∀ n, P11866359338228627327.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P16917252025883713866

`Δ[∑[A198083(n)]-n]`
-/

namespace A022840.P16917252025883713866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022840.P16917252025883713866

namespace A022840

/-- `Δ[∑[A198083(n)]-n]` -/
def P16917252025883713866.Spec : Prop :=
  ∀ n, P16917252025883713866.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P3954659557214230598

`A194145(n+1)+1+n`
-/

namespace A022840.P3954659557214230598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1) + 1 + (n : ℤ)

end

end A022840.P3954659557214230598

namespace A022840

/-- `A194145(n+1)+1+n` -/
def P3954659557214230598.Spec : Prop :=
  ∀ n, P3954659557214230598.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P4671994484749448899

`∑[A000041(Δ[floor(n*sqrt(6))])]`
-/

namespace A022840.P4671994484749448899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P4671994484749448899

namespace A022840

/-- `∑[A000041(Δ[floor(n*sqrt(6))])]` -/
def P4671994484749448899.Spec : Prop :=
  ∀ n, P4671994484749448899.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P3315283318108300194

`∑[A005117(Δ[floor(n*sqrt(6))])]`
-/

namespace A022840.P3315283318108300194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P3315283318108300194

namespace A022840

/-- `∑[A005117(Δ[floor(n*sqrt(6))])]` -/
def P3315283318108300194.Spec : Prop :=
  ∀ n, P3315283318108300194.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P16641992706989898026

`∑[A006530(Δ[floor(n*sqrt(6))])]`
-/

namespace A022840.P16641992706989898026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P16641992706989898026

namespace A022840

/-- `∑[A006530(Δ[floor(n*sqrt(6))])]` -/
def P16641992706989898026.Spec : Prop :=
  ∀ n, P16641992706989898026.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P2539582745055629392

`∑[A014963(Δ[floor(n*sqrt(6))])]`
-/

namespace A022840.P2539582745055629392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P2539582745055629392

namespace A022840

/-- `∑[A014963(Δ[floor(n*sqrt(6))])]` -/
def P2539582745055629392.Spec : Prop :=
  ∀ n, P2539582745055629392.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P9508971448638818703

`∑[A020639(Δ[floor(n*sqrt(6))])]`
-/

namespace A022840.P9508971448638818703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022840.P9508971448638818703

namespace A022840

/-- `∑[A020639(Δ[floor(n*sqrt(6))])]` -/
def P9508971448638818703.Spec : Prop :=
  ∀ n, P9508971448638818703.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P10095816327906161208

`A277645(n+1)-3*(n+1)`
-/

namespace A022840.P10095816327906161208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277645 (n + 1) - (3 * (n + 1) : ℤ)

end

end A022840.P10095816327906161208

namespace A022840

/-- `A277645(n+1)-3*(n+1)` -/
def P10095816327906161208.Spec : Prop :=
  ∀ n, P10095816327906161208.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P16556954383537039158

`ceil(sqrt((n+1)*(A016969(n)+1)))-1`
-/

namespace A022840.P16556954383537039158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℤ) * (A016969 n + 1) : ℝ)⌉ - 1

end

end A022840.P16556954383537039158

namespace A022840

/-- `ceil(sqrt((n+1)*(A016969(n)+1)))-1` -/
def P16556954383537039158.Spec : Prop :=
  ∀ n, P16556954383537039158.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P7580206138020666192

`A189396(n+1)-A003151(n+1)`
-/

namespace A022840.P7580206138020666192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189396 (n + 1) - A003151 (n + 1)

end

end A022840.P7580206138020666192

namespace A022840

/-- `A189396(n+1)-A003151(n+1)` -/
def P7580206138020666192.Spec : Prop :=
  ∀ n, P7580206138020666192.a n = A022840 (n + 1)

theorem P7580206138020666192.correct : P7580206138020666192.Spec := by
  intro n
  simp only [A022840, Nat.add_sub_cancel, A022840.P7580206138020666192.a, A022840.P11758101207044855511.a, A003151, A003151.P5230567170801236160.a, A189396, A189396.P16387411178270564425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022840

/-! ## A022840.P16667541357906583507

`A189388(n+1)-A054088(n+1)`
-/

namespace A022840.P16667541357906583507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189388 (n + 1) - A054088 (n + 1)

end

end A022840.P16667541357906583507

namespace A022840

/-- `A189388(n+1)-A054088(n+1)` -/
def P16667541357906583507.Spec : Prop :=
  ∀ n, P16667541357906583507.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P9291553240329365332

`∩[A138235(n+1)+1, comp[A138235(n+1)]]`
-/

namespace A022840.P9291553240329365332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138235 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138235 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A022840.P9291553240329365332

namespace A022840

/-- `∩[A138235(n+1)+1, comp[A138235(n+1)]]` -/
def P9291553240329365332.Spec : Prop :=
  ∀ n, (P9291553240329365332.a n : ℤ) = A022840 (n + 1)

end A022840

/-! ## A022840.P10357723016532400225

`record[A138236(n+1)]`
-/

namespace A022840.P10357723016532400225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022840.P10357723016532400225

namespace A022840

/-- `record[A138236(n+1)]` -/
def P10357723016532400225.Spec : Prop :=
  ∀ n, P10357723016532400225.a n = A022840 (n + 1)

end A022840

/-! ## A022840.P4376154124159605508

`A138236(A138235(n+1))`
-/

namespace A022840.P4376154124159605508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (A138235 (n + 1)).toNat

end

end A022840.P4376154124159605508

namespace A022840

/-- `A138236(A138235(n+1))` -/
def P4376154124159605508.Spec : Prop :=
  ∀ n, P4376154124159605508.a n = A022840 (n + 1)

end A022840

/-!
# A022841: Beatty sequence for sqrt(7).

The programs for A022841, the canonical program `A022841.P8250153921630201829` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022841 has offset 1).

The definition of A022841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022841.P8250153921630201829

`floor((n+1)*sqrt(7))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022841

/-- `floor((n+1)*sqrt(7))` -/
def P8250153921630201829.Spec : Prop :=
  ∀ n, P8250153921630201829.a n = A022841 (n + 1)

theorem P8250153921630201829.correct : P8250153921630201829.Spec := by
  intro n
  simp only [A022841, Nat.add_sub_cancel]

end A022841

/-! ## A022841.P5838868588716508385

`A000196(7*(n+1)²)`
-/

namespace A022841.P5838868588716508385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (7 * (n + 1) ^ 2)

end

end A022841.P5838868588716508385

namespace A022841

/-- `A000196(7*(n+1)²)` -/
def P5838868588716508385.Spec : Prop :=
  ∀ n, P5838868588716508385.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P8099133525345587116

`∑[dr(Δ[floor(n*sqrt(7))])]`
-/

namespace A022841.P8099133525345587116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P8099133525345587116

namespace A022841

/-- `∑[dr(Δ[floor(n*sqrt(7))])]` -/
def P8099133525345587116.Spec : Prop :=
  ∀ n, (P8099133525345587116.a n : ℤ) = A022841 (n + 1)

end A022841

/-! ## A022841.P11900129991551816455

`∑[Δ[floor(n*sqrt(7))]%4]`
-/

namespace A022841.P11900129991551816455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P11900129991551816455

namespace A022841

/-- `∑[Δ[floor(n*sqrt(7))]%4]` -/
def P11900129991551816455.Spec : Prop :=
  ∀ n, P11900129991551816455.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P260347257330181700

`∑[runs[floor((1+n)/sqrt(7))]]`
-/

namespace A022841.P260347257330181700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 + n : ℝ) / Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P260347257330181700

namespace A022841

/-- `∑[runs[floor((1+n)/sqrt(7))]]` -/
def P260347257330181700.Spec : Prop :=
  ∀ n, (P260347257330181700.a n : ℤ) = A022841 (n + 1)

end A022841

/-! ## A022841.P10063167041046412469

`∑[A276857(n+1)]`
-/

namespace A022841.P10063167041046412469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P10063167041046412469

namespace A022841

/-- `∑[A276857(n+1)]` -/
def P10063167041046412469.Spec : Prop :=
  ∀ n, P10063167041046412469.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P12259375154009973728

`A198084(n+1)-1`
-/

namespace A022841.P12259375154009973728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 (n + 1) - 1

end

end A022841.P12259375154009973728

namespace A022841

/-- `A198084(n+1)-1` -/
def P12259375154009973728.Spec : Prop :=
  ∀ n, P12259375154009973728.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P10270527655594392367

`ceil(sqrt(A247541(n+1)))-1`
-/

namespace A022841.P10270527655594392367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A247541 (n + 1) : ℝ)⌉ - 1

end

end A022841.P10270527655594392367

namespace A022841

/-- `ceil(sqrt(A247541(n+1)))-1` -/
def P10270527655594392367.Spec : Prop :=
  ∀ n, P10270527655594392367.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P17046254001734504155

`∑[A000041(Δ[floor(n*sqrt(7))])]`
-/

namespace A022841.P17046254001734504155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P17046254001734504155

namespace A022841

/-- `∑[A000041(Δ[floor(n*sqrt(7))])]` -/
def P17046254001734504155.Spec : Prop :=
  ∀ n, P17046254001734504155.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P3498773112942695869

`∑[A005117(Δ[floor(n*sqrt(7))])]`
-/

namespace A022841.P3498773112942695869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P3498773112942695869

namespace A022841

/-- `∑[A005117(Δ[floor(n*sqrt(7))])]` -/
def P3498773112942695869.Spec : Prop :=
  ∀ n, P3498773112942695869.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P28389300871731157

`∑[A006530(Δ[floor(n*sqrt(7))])]`
-/

namespace A022841.P28389300871731157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P28389300871731157

namespace A022841

/-- `∑[A006530(Δ[floor(n*sqrt(7))])]` -/
def P28389300871731157.Spec : Prop :=
  ∀ n, P28389300871731157.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P2525989360771164229

`∑[A014963(Δ[floor(n*sqrt(7))])]`
-/

namespace A022841.P2525989360771164229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P2525989360771164229

namespace A022841

/-- `∑[A014963(Δ[floor(n*sqrt(7))])]` -/
def P2525989360771164229.Spec : Prop :=
  ∀ n, P2525989360771164229.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P13139815828159378040

`∑[A020639(Δ[floor(n*sqrt(7))])]`
-/

namespace A022841.P13139815828159378040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022841.P13139815828159378040

namespace A022841

/-- `∑[A020639(Δ[floor(n*sqrt(7))])]` -/
def P13139815828159378040.Spec : Prop :=
  ∀ n, P13139815828159378040.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P7410450888108422335

`A194111(n+2)-(A276857(n+2)+A194111(n+1))`
-/

namespace A022841.P7410450888108422335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194111 (n + 2) - (A276857 (n + 2) + A194111 (n + 1))

end

end A022841.P7410450888108422335

namespace A022841

/-- `A194111(n+2)-(A276857(n+2)+A194111(n+1))` -/
def P7410450888108422335.Spec : Prop :=
  ∀ n, P7410450888108422335.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P14616205786279345918

`filter[A116966(n), A286654(#)]`
-/

namespace A022841.P14616205786279345918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286654 (f1 j).toNat = 1) n)

end

end A022841.P14616205786279345918

namespace A022841

/-- `filter[A116966(n), A286654(#)]` -/
def P14616205786279345918.Spec : Prop :=
  ∀ n, P14616205786279345918.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P7018892872986106162

`filter[A344180(n), A286654(#)]`
-/

namespace A022841.P7018892872986106162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286654 (f1 j).toNat = 1) n)

end

end A022841.P7018892872986106162

namespace A022841

/-- `filter[A344180(n), A286654(#)]` -/
def P7018892872986106162.Spec : Prop :=
  ∀ n, P7018892872986106162.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P3856449474809006502

`filter[A014681(n+1), A286654(#)]`
-/

namespace A022841.P3856449474809006502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286654 (f1 j).toNat = 1) n)

end

end A022841.P3856449474809006502

namespace A022841

/-- `filter[A014681(n+1), A286654(#)]` -/
def P3856449474809006502.Spec : Prop :=
  ∀ n, P3856449474809006502.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P10171869089888477477

`A023443(A198084(n+1))`
-/

namespace A022841.P10171869089888477477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198084 (n + 1)).toNat

end

end A022841.P10171869089888477477

namespace A022841

/-- `A023443(A198084(n+1))` -/
def P10171869089888477477.Spec : Prop :=
  ∀ n, P10171869089888477477.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P7598384030899880672

`filter[A064429(n+1), A286654(#)]`
-/

namespace A022841.P7598384030899880672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286654 (f1 j).toNat = 1) n)

end

end A022841.P7598384030899880672

namespace A022841

/-- `filter[A064429(n+1), A286654(#)]` -/
def P7598384030899880672.Spec : Prop :=
  ∀ n, P7598384030899880672.a n = A022841 (n + 1)

end A022841

/-! ## A022841.P9279018203459677656

`filter[A065190(n+1), A286654(#)]`
-/

namespace A022841.P9279018203459677656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286654 (f1 j).toNat = 1) n)

end

end A022841.P9279018203459677656

namespace A022841

/-- `filter[A065190(n+1), A286654(#)]` -/
def P9279018203459677656.Spec : Prop :=
  ∀ n, P9279018203459677656.a n = A022841 (n + 1)

end A022841

/-!
# A022842: Beatty sequence for sqrt(8).

The programs for A022842, the canonical program `A022842.P237865862575158338` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022842 has offset 1).

The definition of A022842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022842.P237865862575158338

`floor((n+1)*sqrt(8))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022842

/-- `floor((n+1)*sqrt(8))` -/
def P237865862575158338.Spec : Prop :=
  ∀ n, P237865862575158338.a n = A022842 (n + 1)

theorem P237865862575158338.correct : P237865862575158338.Spec := by
  intro n
  simp only [A022842, Nat.add_sub_cancel]

end A022842

/-! ## A022842.P13899730957296838921

`∑[dr(Δ[floor(n*sqrt(8))])]`
-/

namespace A022842.P13899730957296838921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P13899730957296838921

namespace A022842

/-- `∑[dr(Δ[floor(n*sqrt(8))])]` -/
def P13899730957296838921.Spec : Prop :=
  ∀ n, (P13899730957296838921.a n : ℤ) = A022842 (n + 1)

end A022842

/-! ## A022842.P6746209310264580789

`∑[Δ[floor(n*sqrt(8))]%4]`
-/

namespace A022842.P6746209310264580789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P6746209310264580789

namespace A022842

/-- `∑[Δ[floor(n*sqrt(8))]%4]` -/
def P6746209310264580789.Spec : Prop :=
  ∀ n, P6746209310264580789.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P10766529797110619868

`∑[runs[ceil((n+1)/sqrt(8))]]`
-/

namespace A022842.P10766529797110619868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (8 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P10766529797110619868

namespace A022842

/-- `∑[runs[ceil((n+1)/sqrt(8))]]` -/
def P10766529797110619868.Spec : Prop :=
  ∀ n, (P10766529797110619868.a n : ℤ) = A022842 (n + 1)

end A022842

/-! ## A022842.P14535296654670706230

`record[floor(abs(2*(1-n))*sqrt(2))]`
-/

namespace A022842.P14535296654670706230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|2 * (1 - (n : ℤ))| : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022842.P14535296654670706230

namespace A022842

/-- `record[floor(abs(2*(1-n))*sqrt(2))]` -/
def P14535296654670706230.Spec : Prop :=
  ∀ n, P14535296654670706230.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P15847328339194493992

`∑[A276858(n+1)]`
-/

namespace A022842.P15847328339194493992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P15847328339194493992

namespace A022842

/-- `∑[A276858(n+1)]` -/
def P15847328339194493992.Spec : Prop :=
  ∀ n, P15847328339194493992.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P8988266208372551649

`A198263(n+1)-1`
-/

namespace A022842.P8988266208372551649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (n + 1) - 1

end

end A022842.P8988266208372551649

namespace A022842

/-- `A198263(n+1)-1` -/
def P8988266208372551649.Spec : Prop :=
  ∀ n, P8988266208372551649.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P2080978483247570780

`∑[A018245(n+1)-2]`
-/

namespace A022842.P2080978483247570780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P2080978483247570780

namespace A022842

/-- `∑[A018245(n+1)-2]` -/
def P2080978483247570780.Spec : Prop :=
  ∀ n, P2080978483247570780.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P6861049937349325053

`A184921(n+1)-Δ[n²]`
-/

namespace A022842.P6861049937349325053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184921 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022842.P6861049937349325053

namespace A022842

/-- `A184921(n+1)-Δ[n²]` -/
def P6861049937349325053.Spec : Prop :=
  ∀ n, P6861049937349325053.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P13781048383645850839

`∑[A000041(Δ[floor(n*sqrt(8))])]`
-/

namespace A022842.P13781048383645850839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P13781048383645850839

namespace A022842

/-- `∑[A000041(Δ[floor(n*sqrt(8))])]` -/
def P13781048383645850839.Spec : Prop :=
  ∀ n, P13781048383645850839.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P8199694360471656581

`∑[A005117(Δ[floor(n*sqrt(8))])]`
-/

namespace A022842.P8199694360471656581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P8199694360471656581

namespace A022842

/-- `∑[A005117(Δ[floor(n*sqrt(8))])]` -/
def P8199694360471656581.Spec : Prop :=
  ∀ n, P8199694360471656581.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P18134880827590839483

`∑[A006530(Δ[floor(n*sqrt(8))])]`
-/

namespace A022842.P18134880827590839483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P18134880827590839483

namespace A022842

/-- `∑[A006530(Δ[floor(n*sqrt(8))])]` -/
def P18134880827590839483.Spec : Prop :=
  ∀ n, P18134880827590839483.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P15032314242325233651

`∑[A014963(Δ[floor(n*sqrt(8))])]`
-/

namespace A022842.P15032314242325233651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P15032314242325233651

namespace A022842

/-- `∑[A014963(Δ[floor(n*sqrt(8))])]` -/
def P15032314242325233651.Spec : Prop :=
  ∀ n, P15032314242325233651.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P551536471805631441

`∑[A020639(Δ[floor(n*sqrt(8))])]`
-/

namespace A022842.P551536471805631441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022842.P551536471805631441

namespace A022842

/-- `∑[A020639(Δ[floor(n*sqrt(8))])]` -/
def P551536471805631441.Spec : Prop :=
  ∀ n, P551536471805631441.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P11888592199742409448

`A197878(n+1)-2*(n+1)`
-/

namespace A022842.P11888592199742409448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197878 (n + 1) - (2 * (n + 1) : ℤ)

end

end A022842.P11888592199742409448

namespace A022842

/-- `A197878(n+1)-2*(n+1)` -/
def P11888592199742409448.Spec : Prop :=
  ∀ n, P11888592199742409448.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P785748169232863926

`A190337(n+1)-3*(n+1)`
-/

namespace A022842.P785748169232863926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1) - (3 * (n + 1) : ℤ)

end

end A022842.P785748169232863926

namespace A022842

/-- `A190337(n+1)-3*(n+1)` -/
def P785748169232863926.Spec : Prop :=
  ∀ n, P785748169232863926.a n = A022842 (n + 1)

theorem P785748169232863926.correct : P785748169232863926.Spec := by
  intro n
  simp only [A022842, Nat.add_sub_cancel, A022842.P785748169232863926.a, A022842.P237865862575158338.a, A190337, A190337.P11309189997549184098.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022842

/-! ## A022842.P4574654124386043648

`3*(n+1)-A195177(n+1)`
-/

namespace A022842.P4574654124386043648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A195177 (n + 1)

end

end A022842.P4574654124386043648

namespace A022842

/-- `3*(n+1)-A195177(n+1)` -/
def P4574654124386043648.Spec : Prop :=
  ∀ n, P4574654124386043648.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P7934234421636008401

`A187393(n+1)-4*(n+1)`
-/

namespace A022842.P7934234421636008401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187393 (n + 1) - (4 * (n + 1) : ℤ)

end

end A022842.P7934234421636008401

namespace A022842

/-- `A187393(n+1)-4*(n+1)` -/
def P7934234421636008401.Spec : Prop :=
  ∀ n, P7934234421636008401.a n = A022842 (n + 1)

end A022842

/-! ## A022842.P6193629028810380941

`A327205(n)+A191406(n)`
-/

namespace A022842.P6193629028810380941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n + A191406 n

end

end A022842.P6193629028810380941

namespace A022842

/-- `A327205(n)+A191406(n)` -/
def P6193629028810380941.Spec : Prop :=
  ∀ n, P6193629028810380941.a n = A022842 (n + 1)

theorem P6193629028810380941.correct : P6193629028810380941.Spec := by
  intro n
  simp only [A022842, Nat.add_sub_cancel, A022842.P6193629028810380941.a, A022842.P237865862575158338.a, A191406, A191406.P11617354727610031530.a, A327205, A327205.P854694592881596088.a, A001951, A001951.P3206377842744091648.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022842

/-! ## A022842.P10054965266873149404

`A004767(n)-A187394(n+1)`
-/

namespace A022842.P10054965266873149404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A187394 (n + 1)

end

end A022842.P10054965266873149404

namespace A022842

/-- `A004767(n)-A187394(n+1)` -/
def P10054965266873149404.Spec : Prop :=
  ∀ n, P10054965266873149404.a n = A022842 (n + 1)

end A022842

/-!
# A022843: Beatty sequence for e: a(n) = floor(n*e).

The programs for A022843, the canonical program `A022843.P5357273111751487291` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022843 has offset 0).

The definition of A022843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*e)` (program `A022843.P5357273111751487291`, by `A022843.P5357273111751487291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022843.P5357273111751487291

`floor(n*e)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022843

/-- `floor(n*e)` -/
def P5357273111751487291.Spec : Prop :=
  ∀ n, P5357273111751487291.a n = A022843 n

theorem P5357273111751487291.correct : P5357273111751487291.Spec := by
  intro n
  simp only [A022843]

end A022843

/-! ## A022843.P13578864085250174836

`ceil((A276853(n)-1)/2)`
-/

namespace A022843.P13578864085250174836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276853 n - 1 : ℚ) / 2⌉

end

end A022843.P13578864085250174836

namespace A022843

/-- `ceil((A276853(n)-1)/2)` -/
def P13578864085250174836.Spec : Prop :=
  ∀ n, P13578864085250174836.a n = A022843 n

end A022843

/-! ## A022843.P18373467692315171429

`A121384(n)+A057428(n)`
-/

namespace A022843.P18373467692315171429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n + A057428 n

end

end A022843.P18373467692315171429

namespace A022843

/-- `A121384(n)+A057428(n)` -/
def P18373467692315171429.Spec : Prop :=
  ∀ n, P18373467692315171429.a n = A022843 n

end A022843

/-! ## A022843.P12545202489893874644

`A121384(n)-A057427(n)`
-/

namespace A022843.P12545202489893874644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n - A057427 n

end

end A022843.P12545202489893874644

namespace A022843

/-- `A121384(n)-A057427(n)` -/
def P12545202489893874644.Spec : Prop :=
  ∀ n, P12545202489893874644.a n = A022843 n

end A022843

/-! ## A022843.P18148594822942290150

`A276853(n)-A022852(n)`
-/

namespace A022843.P18148594822942290150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n - A022852 n

end

end A022843.P18148594822942290150

namespace A022843

/-- `A276853(n)-A022852(n)` -/
def P18148594822942290150.Spec : Prop :=
  ∀ n, P18148594822942290150.a n = A022843 n

end A022843

/-! ## A022843.P18328112511859623615

`∑[A276859(n+1)]-A276859(n+1)`
-/

namespace A022843.P18328112511859623615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276859 (n + 1)

end

end A022843.P18328112511859623615

namespace A022843

/-- `∑[A276859(n+1)]-A276859(n+1)` -/
def P18328112511859623615.Spec : Prop :=
  ∀ n, P18328112511859623615.a n = A022843 n

end A022843

/-! ## A022843.P3350631673835377667

`A184589(n+1)+1-A276859(n+1)`
-/

namespace A022843.P3350631673835377667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + (1 - A276859 (n + 1))

end

end A022843.P3350631673835377667

namespace A022843

/-- `A184589(n+1)+1-A276859(n+1)` -/
def P3350631673835377667.Spec : Prop :=
  ∀ n, P3350631673835377667.a n = A022843 n

end A022843

/-! ## A022843.P10850384784487595995

`record[A108599(n+1)]-A276859(n+1)`
-/

namespace A022843.P10850384784487595995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A276859 (n + 1)

end

end A022843.P10850384784487595995

namespace A022843

/-- `record[A108599(n+1)]-A276859(n+1)` -/
def P10850384784487595995.Spec : Prop :=
  ∀ n, P10850384784487595995.a n = A022843 n

end A022843

/-! ## A022843.P17765249365253612981

`A108599(A054385(n+1))-A276859(n+1)`
-/

namespace A022843.P17765249365253612981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A054385 (n + 1)).toNat - A276859 (n + 1)

end

end A022843.P17765249365253612981

namespace A022843

/-- `A108599(A054385(n+1))-A276859(n+1)` -/
def P17765249365253612981.Spec : Prop :=
  ∀ n, P17765249365253612981.a n = A022843 n

end A022843

/-! ## A022843.P4050266065058007255

`comp[A054385(n+1)]`
-/

namespace A022843.P4050266065058007255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022843.P4050266065058007255

namespace A022843

/-- `comp[A054385(n+1)]` -/
def P4050266065058007255.Spec : Prop :=
  ∀ n, (P4050266065058007255.a n : ℤ) = A022843 n

end A022843

/-! ## A022843.P6796324067484346506

`record[and(1, n)*A279607(n+1)]`
-/

namespace A022843.P6796324067484346506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A279607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022843.P6796324067484346506

namespace A022843

/-- `record[and(1, n)*A279607(n+1)]` -/
def P6796324067484346506.Spec : Prop :=
  ∀ n, P6796324067484346506.a n = A022843 n

end A022843

/-! ## A022843.P6164793950145619629

`comp[A006594(n+1)]-n`
-/

namespace A022843.P6164793950145619629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A022843.P6164793950145619629

namespace A022843

/-- `comp[A006594(n+1)]-n` -/
def P6164793950145619629.Spec : Prop :=
  ∀ n, P6164793950145619629.a n = A022843 n

end A022843

/-! ## A022843.P1329573276934323091

`record[n*(A032634(n+1)-A032634(n))]`
-/

namespace A022843.P1329573276934323091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A032634 (n + 1) - A032634 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022843.P1329573276934323091

namespace A022843

/-- `record[n*(A032634(n+1)-A032634(n))]` -/
def P1329573276934323091.Spec : Prop :=
  ∀ n, P1329573276934323091.a n = A022843 n

end A022843

/-! ## A022843.P8942108779399345525

`A004526(A276853(n))`
-/

namespace A022843.P8942108779399345525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276853 n).toNat

end

end A022843.P8942108779399345525

namespace A022843

/-- `A004526(A276853(n))` -/
def P8942108779399345525.Spec : Prop :=
  ∀ n, P8942108779399345525.a n = A022843 n

end A022843

/-! ## A022843.P16257568314980754187

`A140106(A276853(n)+2)`
-/

namespace A022843.P16257568314980754187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A276853 n + 2).toNat

end

end A022843.P16257568314980754187

namespace A022843

/-- `A140106(A276853(n)+2)` -/
def P16257568314980754187.Spec : Prop :=
  ∀ n, P16257568314980754187.a n = A022843 n

end A022843

/-! ## A022843.P6130589136810974758

`A110654(A276853(n)+1)-1`
-/

namespace A022843.P6130589136810974758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A276853 n + 1).toNat - 1

end

end A022843.P6130589136810974758

namespace A022843

/-- `A110654(A276853(n)+1)-1` -/
def P6130589136810974758.Spec : Prop :=
  ∀ n, P6130589136810974758.a n = A022843 n

end A022843

/-! ## A022843.P3963387860935351679

`A121384(n)+2-p?[A086965(n+1)]`
-/

namespace A022843.P3963387860935351679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n + (2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022843.P3963387860935351679

namespace A022843

/-- `A121384(n)+2-p?[A086965(n+1)]` -/
def P3963387860935351679.Spec : Prop :=
  ∀ n, P3963387860935351679.a n = A022843 n

end A022843

/-! ## A022843.P1478048351735223489

`A121384(n)-A372544(A062409(n+1))`
-/

namespace A022843.P1478048351735223489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n - A372544 (A062409 (n + 1)).toNat

end

end A022843.P1478048351735223489

namespace A022843

/-- `A121384(n)-A372544(A062409(n+1))` -/
def P1478048351735223489.Spec : Prop :=
  ∀ n, P1478048351735223489.a n = A022843 n

end A022843

/-! ## A022843.P13859940409096812732

`A002265(A276853(2*n))`
-/

namespace A022843.P13859940409096812732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A276853 (2 * n)).toNat

end

end A022843.P13859940409096812732

namespace A022843

/-- `A002265(A276853(2*n))` -/
def P13859940409096812732.Spec : Prop :=
  ∀ n, P13859940409096812732.a n = A022843 n

end A022843

/-! ## A022843.P3862882168563545605

`A121856(n²)`
-/

namespace A022843.P3862882168563545605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (n ^ 2)

end

end A022843.P3862882168563545605

namespace A022843

/-- `A121856(n²)` -/
def P3862882168563545605.Spec : Prop :=
  ∀ n, P3862882168563545605.a n = A022843 n

end A022843

/-!
# A022844: a(n) = floor(n*Pi).

The programs for A022844, the canonical program `A022844.P11976428228251050705` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022844 has offset 0).

The definition of A022844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π)` (program `A022844.P11976428228251050705`, by `A022844.P11976428228251050705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022844.P11976428228251050705

`floor(n*π)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022844

/-- `floor(n*π)` -/
def P11976428228251050705.Spec : Prop :=
  ∀ n, P11976428228251050705.a n = A022844 n

theorem P11976428228251050705.correct : P11976428228251050705.Spec := by
  intro n
  simp only [A022844]

end A022844

/-! ## A022844.P3595477824975632209

`∑[runs[ceil(n/π)]]-1`
-/

namespace A022844.P3595477824975632209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.pi⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A022844.P3595477824975632209

namespace A022844

/-- `∑[runs[ceil(n/π)]]-1` -/
def P3595477824975632209.Spec : Prop :=
  ∀ n, P3595477824975632209.a n = A022844 n

end A022844

/-! ## A022844.P3726333524208023583

`ceil(2*n*atan(2*n))`
-/

namespace A022844.P3726333524208023583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℝ) * Real.arctan (2 * n : ℝ))⌉

end

end A022844.P3726333524208023583

namespace A022844

/-- `ceil(2*n*atan(2*n))` -/
def P3726333524208023583.Spec : Prop :=
  ∀ n, P3726333524208023583.a n = A022844 n

end A022844

/-! ## A022844.P17515432054466878623

`round(2*n*atan(4*n))`
-/

namespace A022844.P17515432054466878623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) * Real.arctan (4 * n : ℝ))

end

end A022844.P17515432054466878623

namespace A022844

/-- `round(2*n*atan(4*n))` -/
def P17515432054466878623.Spec : Prop :=
  ∀ n, P17515432054466878623.a n = A022844 n

end A022844

/-! ## A022844.P5391029078357115584

`comp[ceil(sin(2*n)+n-1)]`
-/

namespace A022844.P5391029078357115584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (2 * n : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022844.P5391029078357115584

namespace A022844

/-- `comp[ceil(sin(2*n)+n-1)]` -/
def P5391029078357115584.Spec : Prop :=
  ∀ n, (P5391029078357115584.a n : ℤ) = A022844 n

end A022844

/-! ## A022844.P12759513824294142880

`ceil(2*n*acot(acot(2*n)))`
-/

namespace A022844.P12759513824294142880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (2 * n : ℝ))⌉

end

end A022844.P12759513824294142880

namespace A022844

/-- `ceil(2*n*acot(acot(2*n)))` -/
def P12759513824294142880.Spec : Prop :=
  ∀ n, P12759513824294142880.a n = A022844 n

end A022844

/-! ## A022844.P4362674493648716316

`A063459(n)+n`
-/

namespace A022844.P4362674493648716316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n + (n : ℤ)

end

end A022844.P4362674493648716316

namespace A022844

/-- `A063459(n)+n` -/
def P4362674493648716316.Spec : Prop :=
  ∀ n, P4362674493648716316.a n = A022844 n

theorem P4362674493648716316.correct : P4362674493648716316.Spec := by
  intro n
  simp only [A022844, Nat.add_sub_cancel, A022844.P4362674493648716316.a, A022844.P11976428228251050705.a, A063459, A063459.P17423234819915296512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022844

/-! ## A022844.P8375439717116842686

`A004084(n+1)-1`
-/

namespace A022844.P8375439717116842686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - 1

end

end A022844.P8375439717116842686

namespace A022844

/-- `A004084(n+1)-1` -/
def P8375439717116842686.Spec : Prop :=
  ∀ n, P8375439717116842686.a n = A022844 n

end A022844

/-! ## A022844.P16036360208116161480

`A187320(n)+2*n`
-/

namespace A022844.P16036360208116161480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 n + (2 * n : ℤ)

end

end A022844.P16036360208116161480

namespace A022844

/-- `A187320(n)+2*n` -/
def P16036360208116161480.Spec : Prop :=
  ∀ n, P16036360208116161480.a n = A022844 n

end A022844

/-! ## A022844.P7325333745971048482

`5*n-A195125(n)`
-/

namespace A022844.P7325333745971048482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A195125 n

end

end A022844.P7325333745971048482

namespace A022844

/-- `5*n-A195125(n)` -/
def P7325333745971048482.Spec : Prop :=
  ∀ n, P7325333745971048482.a n = A022844 n

end A022844

/-! ## A022844.P6040958579820314952

`A121381(n)+A057428(n)`
-/

namespace A022844.P6040958579820314952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n + A057428 n

end

end A022844.P6040958579820314952

namespace A022844

/-- `A121381(n)+A057428(n)` -/
def P6040958579820314952.Spec : Prop :=
  ∀ n, P6040958579820314952.a n = A022844 n

end A022844

/-! ## A022844.P14832587866770803353

`A038130(n)-A022853(n)`
-/

namespace A022844.P14832587866770803353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 n - A022853 n

end

end A022844.P14832587866770803353

namespace A022844

/-- `A038130(n)-A022853(n)` -/
def P14832587866770803353.Spec : Prop :=
  ∀ n, P14832587866770803353.a n = A022844 n

end A022844

/-! ## A022844.P11832682169996790594

`A121381(n)-A057427(n)`
-/

namespace A022844.P11832682169996790594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n - A057427 n

end

end A022844.P11832682169996790594

namespace A022844

/-- `A121381(n)-A057427(n)` -/
def P11832682169996790594.Spec : Prop :=
  ∀ n, P11832682169996790594.a n = A022844 n

end A022844

/-! ## A022844.P2607130859314789734

`∪[A038130(n), A246388(n)]`
-/

namespace A022844.P2607130859314789734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022844.P2607130859314789734

namespace A022844

/-- `∪[A038130(n), A246388(n)]` -/
def P2607130859314789734.Spec : Prop :=
  ∀ n, (P2607130859314789734.a n : ℤ) = A022844 n

end A022844

/-! ## A022844.P4924090336524294955

`A000007(n)+A121381(n)-1`
-/

namespace A022844.P4924090336524294955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A121381 n - 1)

end

end A022844.P4924090336524294955

namespace A022844

/-- `A000007(n)+A121381(n)-1` -/
def P4924090336524294955.Spec : Prop :=
  ∀ n, P4924090336524294955.a n = A022844 n

end A022844

/-! ## A022844.P5826105098027863628

`A121381(n)-A019426(2*n)`
-/

namespace A022844.P5826105098027863628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n - A019426 (2 * n)

end

end A022844.P5826105098027863628

namespace A022844

/-- `A121381(n)-A019426(2*n)` -/
def P5826105098027863628.Spec : Prop :=
  ∀ n, P5826105098027863628.a n = A022844 n

end A022844

/-! ## A022844.P4533693986745738682

`A008585(n)+A187320(n)-n`
-/

namespace A022844.P4533693986745738682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A187320 n - (n : ℤ))

end

end A022844.P4533693986745738682

namespace A022844

/-- `A008585(n)+A187320(n)-n` -/
def P4533693986745738682.Spec : Prop :=
  ∀ n, P4533693986745738682.a n = A022844 n

end A022844

/-! ## A022844.P7576394272864998293

`A008586(n)+n-A195125(n)`
-/

namespace A022844.P7576394272864998293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + ((n : ℤ) - A195125 n)

end

end A022844.P7576394272864998293

namespace A022844

/-- `A008586(n)+n-A195125(n)` -/
def P7576394272864998293.Spec : Prop :=
  ∀ n, P7576394272864998293.a n = A022844 n

end A022844

/-! ## A022844.P1627297803517308485

`A004082(n+1)-(A022853(n)+1)`
-/

namespace A022844.P1627297803517308485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 1) - (A022853 n + 1)

end

end A022844.P1627297803517308485

namespace A022844

/-- `A004082(n+1)-(A022853(n)+1)` -/
def P1627297803517308485.Spec : Prop :=
  ∀ n, P1627297803517308485.a n = A022844 n

end A022844

/-! ## A022844.P16832733169220246145

`A001478(n+1)+A004084(n+1)+n`
-/

namespace A022844.P16832733169220246145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A004084 (n + 1) + (n : ℤ))

end

end A022844.P16832733169220246145

namespace A022844

/-- `A001478(n+1)+A004084(n+1)+n` -/
def P16832733169220246145.Spec : Prop :=
  ∀ n, P16832733169220246145.a n = A022844 n

end A022844

/-!
# A022845: Expansion of 1/((1-x)*(1-5*x)*(1-9*x)*(1-10*x)).

The programs for A022845, there is no canonical definition to state claims against.
-/

/-! ## A022845.P9034959054151346813

`∑[A020494(n)]`
-/

namespace A022845.P9034959054151346813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022845.P9034959054151346813

/-! ## A022845.P6683785530076733738

`2*A016261(n)-A016234(n)`
-/

namespace A022845.P6683785530076733738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016261 n - A016234 n

end

end A022845.P6683785530076733738

/-! ## A022845.P7093833330868193832

`A016237(n+1)-A016234(n+1)`
-/

namespace A022845.P7093833330868193832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016237 (n + 1) - A016234 (n + 1)

end

end A022845.P7093833330868193832

/-! ## A022845.P12805626340623048394

`A016237(n)+A020494(n)-A016234(n)`
-/

namespace A022845.P12805626340623048394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016237 n + (A020494 n - A016234 n)

end

end A022845.P12805626340623048394

/-! ## A022845.P7232982229124930460

`A021774(n)+A021954(n)-A021772(n)`
-/

namespace A022845.P7232982229124930460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021774 n + (A021954 n - A021772 n)

end

end A022845.P7232982229124930460

/-!
# A022846: Nearest integer to n*sqrt(2).

The programs for A022846, the canonical program `A022846.P4153130235843517023` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022846 has offset 0).

The definition of A022846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022846.P4153130235843517023

`round(n*sqrt(2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022846

/-- `round(n*sqrt(2))` -/
def P4153130235843517023.Spec : Prop :=
  ∀ n, P4153130235843517023.a n = A022846 n

theorem P4153130235843517023.correct : P4153130235843517023.Spec := by
  intro n
  simp only [A022846]

end A022846

/-! ## A022846.P14358206534262946830

`record[round(n/sqrt(2))/(-1)^n]`
-/

namespace A022846.P14358206534262946830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022846.P14358206534262946830

namespace A022846

/-- `record[round(n/sqrt(2))/(-1)^n]` -/
def P14358206534262946830.Spec : Prop :=
  ∀ n, P14358206534262946830.a n = (A022846 n : ℚ)

end A022846

/-! ## A022846.P12702881154346667245

`row(a(n-1)+n²+1)` with `a(0)=0`
-/

namespace A022846.P12702881154346667245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triRow (a (n - 1) + n ^ 2 + 1)

end

end A022846.P12702881154346667245

namespace A022846

/-- `row(a(n-1)+n²+1)` -/
def P12702881154346667245.Spec : Prop :=
  ∀ n, (P12702881154346667245.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P5213533678945868208

`row(n*(n+2)-(2*n-floor(n*sqrt(2))))`
-/

namespace A022846.P5213533678945868208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ((n * (n + 2) : ℤ) - ((2 * n : ℤ) - ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋)).toNat

end

end A022846.P5213533678945868208

namespace A022846

/-- `row(n*(n+2)-(2*n-floor(n*sqrt(2))))` -/
def P5213533678945868208.Spec : Prop :=
  ∀ n, (P5213533678945868208.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P14634598294487683191

`floor(A198263(n)/2)`
-/

namespace A022846.P14634598294487683191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198263 n : ℚ) / 2⌋

end

end A022846.P14634598294487683191

namespace A022846

/-- `floor(A198263(n)/2)` -/
def P14634598294487683191.Spec : Prop :=
  ∀ n, P14634598294487683191.a n = A022846 n

end A022846

/-! ## A022846.P15263795427560399567

`comp[A063957(n+1)]`
-/

namespace A022846.P15263795427560399567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022846.P15263795427560399567

namespace A022846

/-- `comp[A063957(n+1)]` -/
def P15263795427560399567.Spec : Prop :=
  ∀ n, (P15263795427560399567.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P1440883701625537690

`floor(n*sqrt(8)-A001951(n))`
-/

namespace A022846.P1440883701625537690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ) - (A001951 n : ℝ)⌋

end

end A022846.P1440883701625537690

namespace A022846

/-- `floor(n*sqrt(8)-A001951(n))` -/
def P1440883701625537690.Spec : Prop :=
  ∀ n, P1440883701625537690.a n = A022846 n

end A022846

/-! ## A022846.P3192844197342119673

`comp[A189573(2*(n+1))-1]`
-/

namespace A022846.P3192844197342119673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022846.P3192844197342119673

namespace A022846

/-- `comp[A189573(2*(n+1))-1]` -/
def P3192844197342119673.Spec : Prop :=
  ∀ n, (P3192844197342119673.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P15727907098475567314

`comp[ceil(A001952(2*n+1)/2)]`
-/

namespace A022846.P15727907098475567314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001952 (2 * n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022846.P15727907098475567314

namespace A022846

/-- `comp[ceil(A001952(2*n+1)/2)]` -/
def P15727907098475567314.Spec : Prop :=
  ∀ n, (P15727907098475567314.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P5318727032606202792

`floor((A057427(n)+floor(2*n*sqrt(2)))/2)`
-/

namespace A022846.P5318727032606202792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n + ⌊(2 * n : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℚ) / 2⌋

end

end A022846.P5318727032606202792

namespace A022846

/-- `floor((A057427(n)+floor(2*n*sqrt(2)))/2)` -/
def P5318727032606202792.Spec : Prop :=
  ∀ n, P5318727032606202792.a n = A022846 n

end A022846

/-! ## A022846.P7473521659883792661

`floor((floor(n*sqrt(8))+1-A000007(n))/2)`
-/

namespace A022846.P7473521659883792661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ + 1 - A000007 n : ℚ) / 2⌋

end

end A022846.P7473521659883792661

namespace A022846

/-- `floor((floor(n*sqrt(8))+1-A000007(n))/2)` -/
def P7473521659883792661.Spec : Prop :=
  ∀ n, P7473521659883792661.a n = A022846 n

end A022846

/-! ## A022846.P18133359870280874681

`A195176(n)-A195177(n)`
-/

namespace A022846.P18133359870280874681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n - A195177 n

end

end A022846.P18133359870280874681

namespace A022846

/-- `A195176(n)-A195177(n)` -/
def P18133359870280874681.Spec : Prop :=
  ∀ n, P18133359870280874681.a n = A022846 n

end A022846

/-! ## A022846.P4908608104069099053

`∑[A214848(n)]-A214848(n)`
-/

namespace A022846.P4908608104069099053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214848 n

end

end A022846.P4908608104069099053

namespace A022846

/-- `∑[A214848(n)]-A214848(n)` -/
def P4908608104069099053.Spec : Prop :=
  ∀ n, P4908608104069099053.a n = A022846 n

end A022846

/-! ## A022846.P14386670707232358991

`A214857(n+1)-A378301(n)`
-/

namespace A022846.P14386670707232358991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 1) - A378301 n

end

end A022846.P14386670707232358991

namespace A022846

/-- `A214857(n+1)-A378301(n)` -/
def P14386670707232358991.Spec : Prop :=
  ∀ n, P14386670707232358991.a n = A022846 n

theorem P14386670707232358991.correct : P14386670707232358991.Spec := by
  intro n
  simp only [A022846, Nat.add_sub_cancel, A022846.P14386670707232358991.a, A022846.P4153130235843517023.a, A214857, A214857.P13673621577136797249.a, A378301, A378301.P16396740927603512981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A022846

/-! ## A022846.P3005136349934658303

`comp[A001952(2*n+1)-A001954(n)]`
-/

namespace A022846.P3005136349934658303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * n + 1) - A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022846.P3005136349934658303

namespace A022846

/-- `comp[A001952(2*n+1)-A001954(n)]` -/
def P3005136349934658303.Spec : Prop :=
  ∀ n, (P3005136349934658303.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P1030051132402526300

`A022842(n+1)-(A276858(n+1)+A001951(n))`
-/

namespace A022846.P1030051132402526300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) - (A276858 (n + 1) + A001951 n)

end

end A022846.P1030051132402526300

namespace A022846

/-- `A022842(n+1)-(A276858(n+1)+A001951(n))` -/
def P1030051132402526300.Spec : Prop :=
  ∀ n, P1030051132402526300.a n = A022846 n

end A022846

/-! ## A022846.P8683626521060434747

`lt[A036714(n), A036716(n)]`
-/

namespace A022846.P8683626521060434747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022846.P8683626521060434747

namespace A022846

/-- `lt[A036714(n), A036716(n)]` -/
def P8683626521060434747.Spec : Prop :=
  ∀ n, (P8683626521060434747.a n : ℤ) = A022846 n

end A022846

/-! ## A022846.P9480070637928409895

`A049473(2*n)`
-/

namespace A022846.P9480070637928409895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n)

end

end A022846.P9480070637928409895

namespace A022846

/-- `A049473(2*n)` -/
def P9480070637928409895.Spec : Prop :=
  ∀ n, P9480070637928409895.a n = A022846 n

end A022846

/-! ## A022846.P17633785440522234630

`ceil(sqrt(A361795(2*n)))`
-/

namespace A022846.P17633785440522234630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A361795 (2 * n) : ℝ)⌉

end

end A022846.P17633785440522234630

namespace A022846

/-- `ceil(sqrt(A361795(2*n)))` -/
def P17633785440522234630.Spec : Prop :=
  ∀ n, P17633785440522234630.a n = A022846 n

end A022846

/-! ## A022846.P10394400542821672636

`ceil(A001951(2*n)/2)`
-/

namespace A022846.P10394400542821672636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001951 (2 * n) : ℚ) / 2⌉

end

end A022846.P10394400542821672636

namespace A022846

/-- `ceil(A001951(2*n)/2)` -/
def P10394400542821672636.Spec : Prop :=
  ∀ n, P10394400542821672636.a n = A022846 n

end A022846

/-!
# A022847: Integer nearest n*sqrt(3).

The programs for A022847, the canonical program `A022847.P11285214133989731691` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022847 has offset 0).

The definition of A022847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022847.P11285214133989731691

`round(n*sqrt(3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022847

/-- `round(n*sqrt(3))` -/
def P11285214133989731691.Spec : Prop :=
  ∀ n, P11285214133989731691.a n = A022847 n

theorem P11285214133989731691.correct : P11285214133989731691.Spec := by
  intro n
  simp only [A022847]

end A022847

/-! ## A022847.P473539317175762789

`floor(A198269(n)/2)`
-/

namespace A022847.P473539317175762789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198269 n : ℚ) / 2⌋

end

end A022847.P473539317175762789

namespace A022847

/-- `floor(A198269(n)/2)` -/
def P473539317175762789.Spec : Prop :=
  ∀ n, P473539317175762789.a n = A022847 n

end A022847

/-! ## A022847.P10068031602579065935

`floor((sqrt(A135453(n))+1)/2)`
-/

namespace A022847.P10068031602579065935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A135453 n : ℝ) + 1) / 2⌋

end

end A022847.P10068031602579065935

namespace A022847

/-- `floor((sqrt(A135453(n))+1)/2)` -/
def P10068031602579065935.Spec : Prop :=
  ∀ n, P10068031602579065935.a n = A022847 n

end A022847

/-! ## A022847.P84095023467733681

`A198269(n)-A198081(n)`
-/

namespace A022847.P84095023467733681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 n - A198081 n

end

end A022847.P84095023467733681

namespace A022847

/-- `A198269(n)-A198081(n)` -/
def P84095023467733681.Spec : Prop :=
  ∀ n, P84095023467733681.a n = A022847 n

end A022847

/-! ## A022847.P1066179256743334535

`∑[A214860(n+1)]-A214860(n+1)`
-/

namespace A022847.P1066179256743334535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214860 (n + 1)

end

end A022847.P1066179256743334535

namespace A022847

/-- `∑[A214860(n+1)]-A214860(n+1)` -/
def P1066179256743334535.Spec : Prop :=
  ∀ n, P1066179256743334535.a n = A022847 n

end A022847

/-! ## A022847.P10611747472259121823

`floor(A198081(2*n)/2)`
-/

namespace A022847.P10611747472259121823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198081 (2 * n) : ℚ) / 2⌋

end

end A022847.P10611747472259121823

namespace A022847

/-- `floor(A198081(2*n)/2)` -/
def P10611747472259121823.Spec : Prop :=
  ∀ n, P10611747472259121823.a n = A022847 n

end A022847

/-! ## A022847.P16764680662261796870

`A198081(2*n)-A198081(n)`
-/

namespace A022847.P16764680662261796870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (2 * n) - A198081 n

end

end A022847.P16764680662261796870

namespace A022847

/-- `A198081(2*n)-A198081(n)` -/
def P16764680662261796870.Spec : Prop :=
  ∀ n, P16764680662261796870.a n = A022847 n

end A022847

/-! ## A022847.P3312663350569972566

`A005843(n)+A195120(n)-A195120(A005843(n))`
-/

namespace A022847.P3312663350569972566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A195120 n - A195120 (A005843 n).toNat)

end

end A022847.P3312663350569972566

namespace A022847

/-- `A005843(n)+A195120(n)-A195120(A005843(n))` -/
def P3312663350569972566.Spec : Prop :=
  ∀ n, P3312663350569972566.a n = A022847 n

end A022847

/-! ## A022847.P17835282762600684973

`A004526(A198269(n))`
-/

namespace A022847.P17835282762600684973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198269 n).toNat

end

end A022847.P17835282762600684973

namespace A022847

/-- `A004526(A198269(n))` -/
def P17835282762600684973.Spec : Prop :=
  ∀ n, P17835282762600684973.a n = A022847 n

end A022847

/-! ## A022847.P986687156436445218

`A140106(A198269(n)+2)`
-/

namespace A022847.P986687156436445218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A198269 n + 2).toNat

end

end A022847.P986687156436445218

namespace A022847

/-- `A140106(A198269(n)+2)` -/
def P986687156436445218.Spec : Prop :=
  ∀ n, P986687156436445218.a n = A022847 n

end A022847

/-! ## A022847.P12325843442164451088

`A004526(A198081(2*n))`
-/

namespace A022847.P12325843442164451088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198081 (2 * n)).toNat

end

end A022847.P12325843442164451088

namespace A022847

/-- `A004526(A198081(2*n))` -/
def P12325843442164451088.Spec : Prop :=
  ∀ n, P12325843442164451088.a n = A022847 n

end A022847

/-! ## A022847.P5283661735933746708

`A065033(A198269(n)+1)-1`
-/

namespace A022847.P5283661735933746708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A198269 n + 1).toNat - 1

end

end A022847.P5283661735933746708

namespace A022847

/-- `A065033(A198269(n)+1)-1` -/
def P5283661735933746708.Spec : Prop :=
  ∀ n, P5283661735933746708.a n = A022847 n

end A022847

/-! ## A022847.P13252892742218718803

`A110654(A198269(n)+1)-1`
-/

namespace A022847.P13252892742218718803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A198269 n + 1).toNat - 1

end

end A022847.P13252892742218718803

namespace A022847

/-- `A110654(A198269(n)+1)-1` -/
def P13252892742218718803.Spec : Prop :=
  ∀ n, P13252892742218718803.a n = A022847 n

end A022847

/-! ## A022847.P14507077136050023844

`A004526(4*n+1-A195120(2*n))`
-/

namespace A022847.P14507077136050023844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((4 * n + 1 : ℤ) - A195120 (2 * n)).toNat

end

end A022847.P14507077136050023844

namespace A022847

/-- `A004526(4*n+1-A195120(2*n))` -/
def P14507077136050023844.Spec : Prop :=
  ∀ n, P14507077136050023844.a n = A022847 n

end A022847

/-! ## A022847.P1667764731752550456

`A004526(A172475(4*n)+1)`
-/

namespace A022847.P1667764731752550456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172475 (4 * n) + 1).toNat

end

end A022847.P1667764731752550456

namespace A022847

/-- `A004526(A172475(4*n)+1)` -/
def P1667764731752550456.Spec : Prop :=
  ∀ n, P1667764731752550456.a n = A022847 n

end A022847

/-! ## A022847.P12085632615349251422

`A172475(4*n)-A172475(2*n)`
-/

namespace A022847.P12085632615349251422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (4 * n) - A172475 (2 * n)

end

end A022847.P12085632615349251422

namespace A022847

/-- `A172475(4*n)-A172475(2*n)` -/
def P12085632615349251422.Spec : Prop :=
  ∀ n, P12085632615349251422.a n = A022847 n

end A022847

/-! ## A022847.P11800837182039509592

`A002264(A198081(2*n)+A198081(n))`
-/

namespace A022847.P11800837182039509592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A198081 (2 * n) + A198081 n).toNat

end

end A022847.P11800837182039509592

namespace A022847

/-- `A002264(A198081(2*n)+A198081(n))` -/
def P11800837182039509592.Spec : Prop :=
  ∀ n, P11800837182039509592.a n = A022847 n

end A022847

/-! ## A022847.P16292242005302905692

`A002265(2*A198081(2*n))`
-/

namespace A022847.P16292242005302905692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A198081 (2 * n)).toNat

end

end A022847.P16292242005302905692

namespace A022847

/-- `A002265(2*A198081(2*n))` -/
def P16292242005302905692.Spec : Prop :=
  ∀ n, P16292242005302905692.a n = A022847 n

end A022847

/-!
# A022848: Integer nearest nx, where x = sqrt(5).

The programs for A022848, the canonical program `A022848.P15493033915175451795` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022848 has offset 0).

The definition of A022848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022848.P15493033915175451795

`round(n*sqrt(5))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022848

/-- `round(n*sqrt(5))` -/
def P15493033915175451795.Spec : Prop :=
  ∀ n, P15493033915175451795.a n = A022848 n

theorem P15493033915175451795.correct : P15493033915175451795.Spec := by
  intro n
  simp only [A022848]

end A022848

/-! ## A022848.P9633944724272497139

`round(lcm(2, 2*n)/ϕ)+n`
-/

namespace A022848.P9633944724272497139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio) + (n : ℤ)

end

end A022848.P9633944724272497139

namespace A022848

/-- `round(lcm(2, 2*n)/ϕ)+n` -/
def P9633944724272497139.Spec : Prop :=
  ∀ n, P9633944724272497139.a n = A022848 n

end A022848

/-! ## A022848.P9685828290025639653

`round(xor(1, 2*n+1)/ϕ)+n`
-/

namespace A022848.P9685828290025639653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n + 1) : ℝ) / Real.goldenRatio) + (n : ℤ)

end

end A022848.P9685828290025639653

namespace A022848

/-- `round(xor(1, 2*n+1)/ϕ)+n` -/
def P9685828290025639653.Spec : Prop :=
  ∀ n, P9685828290025639653.a n = A022848 n

end A022848

/-! ## A022848.P15388325810099716952

`round(ϕ*xor(1, 2*n+1))-n`
-/

namespace A022848.P15388325810099716952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.xor 1 (2 * n + 1) : ℝ)) - (n : ℤ)

end

end A022848.P15388325810099716952

namespace A022848

/-- `round(ϕ*xor(1, 2*n+1))-n` -/
def P15388325810099716952.Spec : Prop :=
  ∀ n, P15388325810099716952.a n = A022848 n

end A022848

/-! ## A022848.P5808272039762747857

`round(2*n/ϕ)+gcd(n, 2*n)`
-/

namespace A022848.P5808272039762747857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / Real.goldenRatio) + (Nat.gcd n (2 * n) : ℤ)

end

end A022848.P5808272039762747857

namespace A022848

/-- `round(2*n/ϕ)+gcd(n, 2*n)` -/
def P5808272039762747857.Spec : Prop :=
  ∀ n, P5808272039762747857.a n = A022848 n

end A022848

/-! ## A022848.P8764656550046026176

`round(and(2*n+1, 2*n)/ϕ)+n`
-/

namespace A022848.P8764656550046026176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio) + (n : ℤ)

end

end A022848.P8764656550046026176

namespace A022848

/-- `round(and(2*n+1, 2*n)/ϕ)+n` -/
def P8764656550046026176.Spec : Prop :=
  ∀ n, P8764656550046026176.a n = A022848 n

end A022848

/-! ## A022848.P6444939500107401528

`round(ϕ*and(2*n+1, 2*n))-n`
-/

namespace A022848.P6444939500107401528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.land (2 * n + 1) (2 * n) : ℝ)) - (n : ℤ)

end

end A022848.P6444939500107401528

namespace A022848

/-- `round(ϕ*and(2*n+1, 2*n))-n` -/
def P6444939500107401528.Spec : Prop :=
  ∀ n, P6444939500107401528.a n = A022848 n

end A022848

/-! ## A022848.P5291646862587624052

`record[round((n+1)/ϕ+n)-round(xor(1, n)/2)]`
-/

namespace A022848.P5291646862587624052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022848.P5291646862587624052

namespace A022848

/-- `record[round((n+1)/ϕ+n)-round(xor(1, n)/2)]` -/
def P5291646862587624052.Spec : Prop :=
  ∀ n, P5291646862587624052.a n = A022848 n

end A022848

/-! ## A022848.P12535888115722171454

`A004938(n)-2*n`
-/

namespace A022848.P12535888115722171454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n - (2 * n : ℤ)

end

end A022848.P12535888115722171454

namespace A022848

/-- `A004938(n)-2*n` -/
def P12535888115722171454.Spec : Prop :=
  ∀ n, P12535888115722171454.a n = A022848 n

end A022848

/-! ## A022848.P12240494536523481695

`comp[A184739(n+1)]+n`
-/

namespace A022848.P12240494536523481695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A022848.P12240494536523481695

namespace A022848

/-- `comp[A184739(n+1)]+n` -/
def P12240494536523481695.Spec : Prop :=
  ∀ n, (P12240494536523481695.a n : ℤ) = A022848 n

end A022848

/-! ## A022848.P17428826797898270734

`∑[A214861(n+1)]-A214861(n+1)`
-/

namespace A022848.P17428826797898270734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214861 (n + 1)

end

end A022848.P17428826797898270734

namespace A022848

/-- `∑[A214861(n+1)]-A214861(n+1)` -/
def P17428826797898270734.Spec : Prop :=
  ∀ n, P17428826797898270734.a n = A022848 n

end A022848

/-! ## A022848.P12171227853385223016

`comp[A007067(A007067(2*n+1))]+n`
-/

namespace A022848.P12171227853385223016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007067 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A022848.P12171227853385223016

namespace A022848

/-- `comp[A007067(A007067(2*n+1))]+n` -/
def P12171227853385223016.Spec : Prop :=
  ∀ n, (P12171227853385223016.a n : ℤ) = A022848 n

end A022848

/-! ## A022848.P5168563693632159069

`record[round(sqrt(A232397(n)))]`
-/

namespace A022848.P5168563693632159069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A232397 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022848.P5168563693632159069

namespace A022848

/-- `record[round(sqrt(A232397(n)))]` -/
def P5168563693632159069.Spec : Prop :=
  ∀ n, P5168563693632159069.a n = A022848 n

end A022848

/-! ## A022848.P1940833261403740875

`A007067(2*n)-n`
-/

namespace A022848.P1940833261403740875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (2 * n) - (n : ℤ)

end

end A022848.P1940833261403740875

namespace A022848

/-- `A007067(2*n)-n` -/
def P1940833261403740875.Spec : Prop :=
  ∀ n, P1940833261403740875.a n = A022848 n

end A022848

/-! ## A022848.P16129927552083899409

`floor(A198082(2*n)/2)`
-/

namespace A022848.P16129927552083899409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198082 (2 * n) : ℚ) / 2⌋

end

end A022848.P16129927552083899409

namespace A022848

/-- `floor(A198082(2*n)/2)` -/
def P16129927552083899409.Spec : Prop :=
  ∀ n, P16129927552083899409.a n = A022848 n

end A022848

/-! ## A022848.P10170227794235855789

`A004937(2*n)-3*n`
-/

namespace A022848.P10170227794235855789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (2 * n) - (3 * n : ℤ)

end

end A022848.P10170227794235855789

namespace A022848

/-- `A004937(2*n)-3*n` -/
def P10170227794235855789.Spec : Prop :=
  ∀ n, P10170227794235855789.a n = A022848 n

end A022848

/-! ## A022848.P1657026982842328933

`A276854(2*n)-A004976(n)`
-/

namespace A022848.P1657026982842328933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (2 * n) - A004976 n

end

end A022848.P1657026982842328933

namespace A022848

/-- `A276854(2*n)-A004976(n)` -/
def P1657026982842328933.Spec : Prop :=
  ∀ n, P1657026982842328933.a n = A022848 n

end A022848

/-! ## A022848.P7848373794817899880

`A198082(2*n)-A198082(n)`
-/

namespace A022848.P7848373794817899880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (2 * n) - A198082 n

end

end A022848.P7848373794817899880

namespace A022848

/-- `A198082(2*n)-A198082(n)` -/
def P7848373794817899880.Spec : Prop :=
  ∀ n, P7848373794817899880.a n = A022848 n

end A022848

/-! ## A022848.P14619000416730387687

`record[round(ϕ*n)-∑[2*n]%(2*n+1)*gcd(2, n+1)]`
-/

namespace A022848.P14619000416730387687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ)) - (((∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 1) * Nat.gcd 2 (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022848.P14619000416730387687

namespace A022848

/-- `record[round(ϕ*n)-∑[2*n]%(2*n+1)*gcd(2, n+1)]` -/
def P14619000416730387687.Spec : Prop :=
  ∀ n, P14619000416730387687.a n = A022848 n

end A022848

/-! ## A022848.P7799332367603233354

`A101803(2*n)+n`
-/

namespace A022848.P7799332367603233354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (2 * n) + (n : ℤ)

end

end A022848.P7799332367603233354

namespace A022848

/-- `A101803(2*n)+n` -/
def P7799332367603233354.Spec : Prop :=
  ∀ n, P7799332367603233354.a n = A022848 n

end A022848

/-!
# A022849: Integer nearest nx, where x = sqrt(6).

The programs for A022849, the canonical program `A022849.P678832229338653592` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022849 has offset 0).

The definition of A022849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022849.P678832229338653592

`round(n*sqrt(6))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022849

/-- `round(n*sqrt(6))` -/
def P678832229338653592.Spec : Prop :=
  ∀ n, P678832229338653592.a n = A022849 n

theorem P678832229338653592.correct : P678832229338653592.Spec := by
  intro n
  simp only [A022849]

end A022849

/-! ## A022849.P2368524777954967639

`floor(sqrt(n*(A008458(n)+sqrt(6))))`
-/

namespace A022849.P2368524777954967639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℝ) * ((A008458 n : ℝ) + Real.sqrt (6 : ℝ)))⌋

end

end A022849.P2368524777954967639

namespace A022849

/-- `floor(sqrt(n*(A008458(n)+sqrt(6))))` -/
def P2368524777954967639.Spec : Prop :=
  ∀ n, P2368524777954967639.a n = A022849 n

end A022849

/-! ## A022849.P5573252335472238654

`floor(sqrt(A005897(n)+a(n-1)))` with `a(0)=0`
-/

namespace A022849.P5573252335472238654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.sqrt (A005897 n + a (n - 1))

end

end A022849.P5573252335472238654

namespace A022849

/-- `floor(sqrt(A005897(n)+a(n-1)))` -/
def P5573252335472238654.Spec : Prop :=
  ∀ n, P5573252335472238654.a n = A022849 n

end A022849

/-! ## A022849.P8699792226804746659

`A379801(2*n)-n`
-/

namespace A022849.P8699792226804746659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379801 (2 * n) - (n : ℤ)

end

end A022849.P8699792226804746659

namespace A022849

/-- `A379801(2*n)-n` -/
def P8699792226804746659.Spec : Prop :=
  ∀ n, P8699792226804746659.a n = A022849 n

end A022849

/-! ## A022849.P17889616290125435486

`floor(A198083(2*n)/2)`
-/

namespace A022849.P17889616290125435486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198083 (2 * n) : ℚ) / 2⌋

end

end A022849.P17889616290125435486

namespace A022849

/-- `floor(A198083(2*n)/2)` -/
def P17889616290125435486.Spec : Prop :=
  ∀ n, P17889616290125435486.a n = A022849 n

end A022849

/-! ## A022849.P4748061086280623359

`A198083(2*n)-A198083(n)`
-/

namespace A022849.P4748061086280623359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (2 * n) - A198083 n

end

end A022849.P4748061086280623359

namespace A022849

/-- `A198083(2*n)-A198083(n)` -/
def P4748061086280623359.Spec : Prop :=
  ∀ n, P4748061086280623359.a n = A022849 n

end A022849

/-! ## A022849.P2871156847156804741

`A277644(A004275(2*n+1))-A277644(A004275(n+1))`
-/

namespace A022849.P2871156847156804741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (A004275 (2 * n + 1)).toNat - A277644 (A004275 (n + 1)).toNat

end

end A022849.P2871156847156804741

namespace A022849

/-- `A277644(A004275(2*n+1))-A277644(A004275(n+1))` -/
def P2871156847156804741.Spec : Prop :=
  ∀ n, P2871156847156804741.a n = A022849 n

end A022849

/-! ## A022849.P6353147596010152630

`A004526(A198083(2*n))`
-/

namespace A022849.P6353147596010152630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198083 (2 * n)).toNat

end

end A022849.P6353147596010152630

namespace A022849

/-- `A004526(A198083(2*n))` -/
def P6353147596010152630.Spec : Prop :=
  ∀ n, P6353147596010152630.a n = A022849 n

end A022849

/-! ## A022849.P16694676881176543856

`A073188(A073188((n+1)²)+n²)-1`
-/

namespace A022849.P16694676881176543856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A073188 ((n + 1) ^ 2) + (n ^ 2 : ℤ)).toNat - 1

end

end A022849.P16694676881176543856

namespace A022849

/-- `A073188(A073188((n+1)²)+n²)-1` -/
def P16694676881176543856.Spec : Prop :=
  ∀ n, P16694676881176543856.a n = A022849 n

end A022849

/-! ## A022849.P17972154861130208717

`A004526(A036496(2*n²))`
-/

namespace A022849.P17972154861130208717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036496 (2 * n ^ 2)).toNat

end

end A022849.P17972154861130208717

namespace A022849

/-- `A004526(A036496(2*n²))` -/
def P17972154861130208717.Spec : Prop :=
  ∀ n, P17972154861130208717.a n = A022849 n

end A022849

/-!
# A022850: Integer nearest n*x, where x = sqrt(7).

The programs for A022850, the canonical program `A022850.P6150190637847981062` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022850 has offset 0).

The definition of A022850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022850.P6150190637847981062

`round(n*sqrt(7))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022850

/-- `round(n*sqrt(7))` -/
def P6150190637847981062.Spec : Prop :=
  ∀ n, P6150190637847981062.a n = A022850 n

theorem P6150190637847981062.correct : P6150190637847981062.Spec := by
  intro n
  simp only [A022850]

end A022850

/-! ## A022850.P18040035482780308440

`floor(A198084(2*n)/2)`
-/

namespace A022850.P18040035482780308440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198084 (2 * n) : ℚ) / 2⌋

end

end A022850.P18040035482780308440

namespace A022850

/-- `floor(A198084(2*n)/2)` -/
def P18040035482780308440.Spec : Prop :=
  ∀ n, P18040035482780308440.a n = A022850 n

end A022850

/-! ## A022850.P11502258195071601296

`A198084(2*n)-A198084(n)`
-/

namespace A022850.P11502258195071601296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 (2 * n) - A198084 n

end

end A022850.P11502258195071601296

namespace A022850

/-- `A198084(2*n)-A198084(n)` -/
def P11502258195071601296.Spec : Prop :=
  ∀ n, P11502258195071601296.a n = A022850 n

end A022850

/-! ## A022850.P15199899677633883309

`A004526(A198084(2*n))`
-/

namespace A022850.P15199899677633883309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198084 (2 * n)).toNat

end

end A022850.P15199899677633883309

namespace A022850

/-- `A004526(A198084(2*n))` -/
def P15199899677633883309.Spec : Prop :=
  ∀ n, P15199899677633883309.a n = A022850 n

end A022850

/-! ## A022850.P3109878645988592807

`A004526(ceil(sqrt(A158556(n))))`
-/

namespace A022850.P3109878645988592807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈Real.sqrt (A158556 n : ℝ)⌉.toNat

end

end A022850.P3109878645988592807

namespace A022850

/-- `A004526(ceil(sqrt(A158556(n))))` -/
def P3109878645988592807.Spec : Prop :=
  ∀ n, P3109878645988592807.a n = A022850 n

end A022850

/-! ## A022850.P9650606719053320221

`A003056(A118277(2*n)+A001221(n+1))`
-/

namespace A022850.P9650606719053320221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A118277 (2 * n) + A001221 (n + 1)).toNat

end

end A022850.P9650606719053320221

namespace A022850

/-- `A003056(A118277(2*n)+A001221(n+1))` -/
def P9650606719053320221.Spec : Prop :=
  ∀ n, P9650606719053320221.a n = A022850 n

end A022850

/-! ## A022850.P11136562665111332723

`A003056(A069099(n+2))-3`
-/

namespace A022850.P11136562665111332723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A069099 (n + 2)).toNat - 3

end

end A022850.P11136562665111332723

namespace A022850

/-- `A003056(A069099(n+2))-3` -/
def P11136562665111332723.Spec : Prop :=
  ∀ n, P11136562665111332723.a n = A022850 n

end A022850

/-!
# A022851: a(n) = integer nearest n*x, where x = sqrt(8).

The programs for A022851, the canonical program `A022851.P2368145316521066211` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022851 has offset 0).

The definition of A022851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022851.P2368145316521066211

`round(n*sqrt(8))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022851

/-- `round(n*sqrt(8))` -/
def P2368145316521066211.Spec : Prop :=
  ∀ n, P2368145316521066211.a n = A022851 n

theorem P2368145316521066211.correct : P2368145316521066211.Spec := by
  intro n
  simp only [A022851]

end A022851

/-! ## A022851.P16624043416068216713

`ceil(floor((A004767(n)-3)*sqrt(2))/2)`
-/

namespace A022851.P16624043416068216713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A004767 n - 3 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℚ) / 2⌉

end

end A022851.P16624043416068216713

namespace A022851

/-- `ceil(floor((A004767(n)-3)*sqrt(2))/2)` -/
def P16624043416068216713.Spec : Prop :=
  ∀ n, P16624043416068216713.a n = A022851 n

end A022851

/-! ## A022851.P4394876276311726351

`A022846(2*n)`
-/

namespace A022851.P4394876276311726351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (2 * n)

end

end A022851.P4394876276311726351

namespace A022851

/-- `A022846(2*n)` -/
def P4394876276311726351.Spec : Prop :=
  ∀ n, P4394876276311726351.a n = A022851 n

end A022851

/-! ## A022851.P17035306612300864208

`floor(A198263(2*n)/2)`
-/

namespace A022851.P17035306612300864208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198263 (2 * n) : ℚ) / 2⌋

end

end A022851.P17035306612300864208

namespace A022851

/-- `floor(A198263(2*n)/2)` -/
def P17035306612300864208.Spec : Prop :=
  ∀ n, P17035306612300864208.a n = A022851 n

end A022851

/-! ## A022851.P1439282007822320606

`A198263(2*n)-A198263(n)`
-/

namespace A022851.P1439282007822320606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (2 * n) - A198263 n

end

end A022851.P1439282007822320606

namespace A022851

/-- `A198263(2*n)-A198263(n)` -/
def P1439282007822320606.Spec : Prop :=
  ∀ n, P1439282007822320606.a n = A022851 n

end A022851

/-! ## A022851.P17731281807648295708

`A195176(2*n)-A195177(2*n)`
-/

namespace A022851.P17731281807648295708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (2 * n) - A195177 (2 * n)

end

end A022851.P17731281807648295708

namespace A022851

/-- `A195176(2*n)-A195177(2*n)` -/
def P17731281807648295708.Spec : Prop :=
  ∀ n, P17731281807648295708.a n = A022851 n

end A022851

/-! ## A022851.P5902660620514726829

`A022846(n+n)%A057849(n+1)`
-/

namespace A022851.P5902660620514726829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022846 (n + n)) (A057849 (n + 1))

end

end A022851.P5902660620514726829

namespace A022851

/-- `A022846(n+n)%A057849(n+1)` -/
def P5902660620514726829.Spec : Prop :=
  ∀ n, P5902660620514726829.a n = A022851 n

end A022851

/-! ## A022851.P7730923108223623304

`A214857(2*n+1)-A378301(2*n)`
-/

namespace A022851.P7730923108223623304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (2 * n + 1) - A378301 (2 * n)

end

end A022851.P7730923108223623304

namespace A022851

/-- `A214857(2*n+1)-A378301(2*n)` -/
def P7730923108223623304.Spec : Prop :=
  ∀ n, P7730923108223623304.a n = A022851 n

end A022851

/-! ## A022851.P12781542344480200333

`A049473(4*n)`
-/

namespace A022851.P12781542344480200333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (4 * n)

end

end A022851.P12781542344480200333

namespace A022851

/-- `A049473(4*n)` -/
def P12781542344480200333.Spec : Prop :=
  ∀ n, P12781542344480200333.a n = A022851 n

end A022851

/-! ## A022851.P15105359338066800534

`A001951(4*n)-A001951(2*n)`
-/

namespace A022851.P15105359338066800534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (4 * n) - A001951 (2 * n)

end

end A022851.P15105359338066800534

namespace A022851

/-- `A001951(4*n)-A001951(2*n)` -/
def P15105359338066800534.Spec : Prop :=
  ∀ n, P15105359338066800534.a n = A022851 n

end A022851

/-! ## A022851.P2778332179917647065

`A087057(A004275(2*n+1))-A087057(A004275(n+1))`
-/

namespace A022851.P2778332179917647065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (A004275 (2 * n + 1)).toNat - A087057 (A004275 (n + 1)).toNat

end

end A022851.P2778332179917647065

namespace A022851

/-- `A087057(A004275(2*n+1))-A087057(A004275(n+1))` -/
def P2778332179917647065.Spec : Prop :=
  ∀ n, P2778332179917647065.a n = A022851 n

end A022851

/-! ## A022851.P8378131693302761175

`A004526(A198263(2*n))`
-/

namespace A022851.P8378131693302761175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198263 (2 * n)).toNat

end

end A022851.P8378131693302761175

namespace A022851

/-- `A004526(A198263(2*n))` -/
def P8378131693302761175.Spec : Prop :=
  ∀ n, P8378131693302761175.a n = A022851 n

end A022851

/-! ## A022851.P10096133027926396563

`A110654(A001951(4*n))`
-/

namespace A022851.P10096133027926396563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001951 (4 * n)).toNat

end

end A022851.P10096133027926396563

namespace A022851

/-- `A110654(A001951(4*n))` -/
def P10096133027926396563.Spec : Prop :=
  ∀ n, P10096133027926396563.a n = A022851 n

end A022851

/-! ## A022851.P15716819122410312491

`A097508(A189573(2*n+2*n+1))`
-/

namespace A022851.P15716819122410312491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A189573 (2 * n + (2 * n + 1))).toNat

end

end A022851.P15716819122410312491

namespace A022851

/-- `A097508(A189573(2*n+2*n+1))` -/
def P15716819122410312491.Spec : Prop :=
  ∀ n, P15716819122410312491.a n = A022851 n

end A022851

/-! ## A022851.P16097357243814793818

`A002264(A091087(4*n)+2)`
-/

namespace A022851.P16097357243814793818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A091087 (4 * n) + 2).toNat

end

end A022851.P16097357243814793818

namespace A022851

/-- `A002264(A091087(4*n)+2)` -/
def P16097357243814793818.Spec : Prop :=
  ∀ n, P16097357243814793818.a n = A022851 n

end A022851

/-! ## A022851.P2691853829746991434

`A183138(A285075(4*n+1))`
-/

namespace A022851.P2691853829746991434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A285075 (4 * n + 1)).toNat

end

end A022851.P2691853829746991434

namespace A022851

/-- `A183138(A285075(4*n+1))` -/
def P2691853829746991434.Spec : Prop :=
  ∀ n, P2691853829746991434.a n = A022851 n

end A022851

/-! ## A022851.P2207831521419875881

`A183138(A285078(4*n+1))`
-/

namespace A022851.P2207831521419875881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A285078 (4 * n + 1)).toNat

end

end A022851.P2207831521419875881

namespace A022851

/-- `A183138(A285078(4*n+1))` -/
def P2207831521419875881.Spec : Prop :=
  ∀ n, P2207831521419875881.a n = A022851 n

end A022851

/-!
# A022852: Integer nearest n * e, where e is the natural log base.

The programs for A022852, the canonical program `A022852.P4440263258004053212` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022852 has offset 0).

The definition of A022852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022852.P4440263258004053212

`round(n*e)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022852

/-- `round(n*e)` -/
def P4440263258004053212.Spec : Prop :=
  ∀ n, P4440263258004053212.a n = A022852 n

theorem P4440263258004053212.correct : P4440263258004053212.Spec := by
  intro n
  simp only [A022852]

end A022852

/-! ## A022852.P10273299998311782236

`ceil(A276853(n)/2)`
-/

namespace A022852.P10273299998311782236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276853 n : ℚ) / 2⌉

end

end A022852.P10273299998311782236

namespace A022852

/-- `ceil(A276853(n)/2)` -/
def P10273299998311782236.Spec : Prop :=
  ∀ n, P10273299998311782236.a n = A022852 n

end A022852

/-! ## A022852.P13175314452758281315

`A276853(n)-A022843(n)`
-/

namespace A022852.P13175314452758281315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n - A022843 n

end

end A022852.P13175314452758281315

namespace A022852

/-- `A276853(n)-A022843(n)` -/
def P13175314452758281315.Spec : Prop :=
  ∀ n, P13175314452758281315.a n = A022852 n

end A022852

/-! ## A022852.P10367635010724199220

`ceil(A022843(2*n)/2)`
-/

namespace A022852.P10367635010724199220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022843 (2 * n) : ℚ) / 2⌉

end

end A022852.P10367635010724199220

namespace A022852

/-- `ceil(A022843(2*n)/2)` -/
def P10367635010724199220.Spec : Prop :=
  ∀ n, P10367635010724199220.a n = A022852 n

end A022852

/-! ## A022852.P7872661009623621083

`A022843(2*n)-A022843(n)`
-/

namespace A022852.P7872661009623621083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n) - A022843 n

end

end A022852.P7872661009623621083

namespace A022852

/-- `A022843(2*n)-A022843(n)` -/
def P7872661009623621083.Spec : Prop :=
  ∀ n, P7872661009623621083.a n = A022852 n

end A022852

/-! ## A022852.P9422413304910285396

`floor(A121384(2*n)/2)`
-/

namespace A022852.P9422413304910285396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121384 (2 * n) : ℚ) / 2⌋

end

end A022852.P9422413304910285396

namespace A022852

/-- `floor(A121384(2*n)/2)` -/
def P9422413304910285396.Spec : Prop :=
  ∀ n, P9422413304910285396.a n = A022852 n

end A022852

/-! ## A022852.P12689305490190401391

`A121384(2*n)-A121384(n)`
-/

namespace A022852.P12689305490190401391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (2 * n) - A121384 n

end

end A022852.P12689305490190401391

namespace A022852

/-- `A121384(2*n)-A121384(n)` -/
def P12689305490190401391.Spec : Prop :=
  ∀ n, P12689305490190401391.a n = A022852 n

end A022852

/-! ## A022852.P7148830818562299970

`A110654(A276853(n))`
-/

namespace A022852.P7148830818562299970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A276853 n).toNat

end

end A022852.P7148830818562299970

namespace A022852

/-- `A110654(A276853(n))` -/
def P7148830818562299970.Spec : Prop :=
  ∀ n, P7148830818562299970.a n = A022852 n

end A022852

/-! ## A022852.P5940316538948327802

`A004526(A276853(n)+1)`
-/

namespace A022852.P5940316538948327802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276853 n + 1).toNat

end

end A022852.P5940316538948327802

namespace A022852

/-- `A004526(A276853(n)+1)` -/
def P5940316538948327802.Spec : Prop :=
  ∀ n, P5940316538948327802.a n = A022852 n

end A022852

/-! ## A022852.P15449066416804387543

`A004526(A121384(2*n))`
-/

namespace A022852.P15449066416804387543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A121384 (2 * n)).toNat

end

end A022852.P15449066416804387543

namespace A022852

/-- `A004526(A121384(2*n))` -/
def P15449066416804387543.Spec : Prop :=
  ∀ n, P15449066416804387543.a n = A022852 n

end A022852

/-! ## A022852.P8756450738495128656

`A110654(A022843(2*n))`
-/

namespace A022852.P8756450738495128656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022843 (2 * n)).toNat

end

end A022852.P8756450738495128656

namespace A022852

/-- `A110654(A022843(2*n))` -/
def P8756450738495128656.Spec : Prop :=
  ∀ n, P8756450738495128656.a n = A022852 n

end A022852

/-! ## A022852.P6837649442779647571

`A008619(A276853(n)+1)-1`
-/

namespace A022852.P6837649442779647571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A276853 n + 1).toNat - 1

end

end A022852.P6837649442779647571

namespace A022852

/-- `A008619(A276853(n)+1)-1` -/
def P6837649442779647571.Spec : Prop :=
  ∀ n, P6837649442779647571.a n = A022852 n

end A022852

/-! ## A022852.P17893026278940779497

`A004526(A022843(2*n)+1)`
-/

namespace A022852.P17893026278940779497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022843 (2 * n) + 1).toNat

end

end A022852.P17893026278940779497

namespace A022852

/-- `A004526(A022843(2*n)+1)` -/
def P17893026278940779497.Spec : Prop :=
  ∀ n, P17893026278940779497.a n = A022852 n

end A022852

/-! ## A022852.P16514428338857375099

`A123108(A022843(2*n)+1)`
-/

namespace A022852.P16514428338857375099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022843 (2 * n) + 1).toNat

end

end A022852.P16514428338857375099

namespace A022852

/-- `A123108(A022843(2*n)+1)` -/
def P16514428338857375099.Spec : Prop :=
  ∀ n, P16514428338857375099.a n = A022852 n

end A022852

/-! ## A022852.P1327196952492685146

`A276853(n)-A140106(A276853(n)+2)`
-/

namespace A022852.P1327196952492685146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n - A140106 (A276853 n + 2).toNat

end

end A022852.P1327196952492685146

namespace A022852

/-- `A276853(n)-A140106(A276853(n)+2)` -/
def P1327196952492685146.Spec : Prop :=
  ∀ n, P1327196952492685146.a n = A022852 n

end A022852

/-! ## A022852.P13077891661326205921

`A002264(A121384(2*n)+A121384(n))`
-/

namespace A022852.P13077891661326205921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A121384 (2 * n) + A121384 n).toNat

end

end A022852.P13077891661326205921

namespace A022852

/-- `A002264(A121384(2*n)+A121384(n))` -/
def P13077891661326205921.Spec : Prop :=
  ∀ n, P13077891661326205921.a n = A022852 n

end A022852

/-! ## A022852.P7679967424154344943

`A002265(2*(A276853(n)+1))`
-/

namespace A022852.P7679967424154344943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A276853 n + 1)).toNat

end

end A022852.P7679967424154344943

namespace A022852

/-- `A002265(2*(A276853(n)+1))` -/
def P7679967424154344943.Spec : Prop :=
  ∀ n, P7679967424154344943.a n = A022852 n

end A022852

/-! ## A022852.P9265628817435483422

`A002265(A022843(4*n)+2)`
-/

namespace A022852.P9265628817435483422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022843 (4 * n) + 2).toNat

end

end A022852.P9265628817435483422

namespace A022852

/-- `A002265(A022843(4*n)+2)` -/
def P9265628817435483422.Spec : Prop :=
  ∀ n, P9265628817435483422.a n = A022852 n

end A022852

/-! ## A022852.P5712158946179970475

`A002265(A276853(n)+A276853(n)+2)`
-/

namespace A022852.P5712158946179970475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A276853 n + (A276853 n + 2)).toNat

end

end A022852.P5712158946179970475

namespace A022852

/-- `A002265(A276853(n)+A276853(n)+2)` -/
def P5712158946179970475.Spec : Prop :=
  ∀ n, P5712158946179970475.a n = A022852 n

end A022852

/-! ## A022852.P5714887101524553479

`A276853(n)-A002265(A276853(2*n))`
-/

namespace A022852.P5714887101524553479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n - A002265 (A276853 (2 * n)).toNat

end

end A022852.P5714887101524553479

namespace A022852

/-- `A276853(n)-A002265(A276853(2*n))` -/
def P5714887101524553479.Spec : Prop :=
  ∀ n, P5714887101524553479.a n = A022852 n

end A022852

/-!
# A022853: a(n) = integer nearest n*Pi.

The programs for A022853, the canonical program `A022853.P734346419560010823` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022853 has offset 0).

The definition of A022853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022853.P734346419560010823

`round(n*π)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022853

/-- `round(n*π)` -/
def P734346419560010823.Spec : Prop :=
  ∀ n, P734346419560010823.a n = A022853 n

theorem P734346419560010823.correct : P734346419560010823.Spec := by
  intro n
  simp only [A022853]

end A022853

/-! ## A022853.P16161314650728884241

`lt[abs(tan(n)), sin(γ)]`
-/

namespace A022853.P16161314650728884241
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.tan (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022853.P16161314650728884241

namespace A022853

/-- `lt[abs(tan(n)), sin(γ)]` -/
def P16161314650728884241.Spec : Prop :=
  ∀ n, (P16161314650728884241.a n : ℤ) = A022853 n

end A022853

/-! ## A022853.P2388828940961402156

`lt[cos(1), cos(2*n)]`
-/

namespace A022853.P2388828940961402156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022853.P2388828940961402156

namespace A022853

/-- `lt[cos(1), cos(2*n)]` -/
def P2388828940961402156.Spec : Prop :=
  ∀ n, (P2388828940961402156.a n : ℤ) = A022853 n

end A022853

/-! ## A022853.P13209720685898808362

`comp[ceil(sin(2*n+1))+n]`
-/

namespace A022853.P13209720685898808362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (2 * n + 1 : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022853.P13209720685898808362

namespace A022853

/-- `comp[ceil(sin(2*n+1))+n]` -/
def P13209720685898808362.Spec : Prop :=
  ∀ n, (P13209720685898808362.a n : ℤ) = A022853 n

end A022853

/-! ## A022853.P1509207412136158698

`comp[floor(sin(2*n-1))+n]`
-/

namespace A022853.P1509207412136158698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin ((2 * n : ℤ) - 1 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022853.P1509207412136158698

namespace A022853

/-- `comp[floor(sin(2*n-1))+n]` -/
def P1509207412136158698.Spec : Prop :=
  ∀ n, (P1509207412136158698.a n : ℤ) = A022853 n

end A022853

/-! ## A022853.P10789682212517386839

`ceil(A038130(n)/2)`
-/

namespace A022853.P10789682212517386839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038130 n : ℚ) / 2⌉

end

end A022853.P10789682212517386839

namespace A022853

/-- `ceil(A038130(n)/2)` -/
def P10789682212517386839.Spec : Prop :=
  ∀ n, P10789682212517386839.a n = A022853 n

end A022853

/-! ## A022853.P16824818512528642314

`floor(A004082(n+1)/2)`
-/

namespace A022853.P16824818512528642314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004082 (n + 1) : ℚ) / 2⌋

end

end A022853.P16824818512528642314

namespace A022853

/-- `floor(A004082(n+1)/2)` -/
def P16824818512528642314.Spec : Prop :=
  ∀ n, P16824818512528642314.a n = A022853 n

end A022853

/-! ## A022853.P9541019471781443092

`A038130(n)-A022844(n)`
-/

namespace A022853.P9541019471781443092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 n - A022844 n

end

end A022853.P9541019471781443092

namespace A022853

/-- `A038130(n)-A022844(n)` -/
def P9541019471781443092.Spec : Prop :=
  ∀ n, P9541019471781443092.a n = A022853 n

end A022853

/-! ## A022853.P12162212490916889567

`A004082(n+1)-A004084(n+1)`
-/

namespace A022853.P12162212490916889567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 1) - A004084 (n + 1)

end

end A022853.P12162212490916889567

namespace A022853

/-- `A004082(n+1)-A004084(n+1)` -/
def P12162212490916889567.Spec : Prop :=
  ∀ n, P12162212490916889567.a n = A022853 n

end A022853

/-! ## A022853.P4164459613788550438

`ceil(A022844(2*n)/2)`
-/

namespace A022853.P4164459613788550438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022844 (2 * n) : ℚ) / 2⌉

end

end A022853.P4164459613788550438

namespace A022853

/-- `ceil(A022844(2*n)/2)` -/
def P4164459613788550438.Spec : Prop :=
  ∀ n, P4164459613788550438.a n = A022853 n

end A022853

/-! ## A022853.P16358944875547972615

`A022844(2*n)-A022844(n)`
-/

namespace A022853.P16358944875547972615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (2 * n) - A022844 n

end

end A022853.P16358944875547972615

namespace A022853

/-- `A022844(2*n)-A022844(n)` -/
def P16358944875547972615.Spec : Prop :=
  ∀ n, P16358944875547972615.a n = A022853 n

end A022853

/-! ## A022853.P7188444582384886848

`A038130(n)-A140758(2*n)`
-/

namespace A022853.P7188444582384886848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 n - A140758 (2 * n)

end

end A022853.P7188444582384886848

namespace A022853

/-- `A038130(n)-A140758(2*n)` -/
def P7188444582384886848.Spec : Prop :=
  ∀ n, P7188444582384886848.a n = A022853 n

end A022853

/-! ## A022853.P8315451542598022217

`floor(A121381(2*n)/2)`
-/

namespace A022853.P8315451542598022217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121381 (2 * n) : ℚ) / 2⌋

end

end A022853.P8315451542598022217

namespace A022853

/-- `floor(A121381(2*n)/2)` -/
def P8315451542598022217.Spec : Prop :=
  ∀ n, P8315451542598022217.a n = A022853 n

end A022853

/-! ## A022853.P17982389026254000746

`floor(A004084(2*n+1)/2)`
-/

namespace A022853.P17982389026254000746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004084 (2 * n + 1) : ℚ) / 2⌋

end

end A022853.P17982389026254000746

namespace A022853

/-- `floor(A004084(2*n+1)/2)` -/
def P17982389026254000746.Spec : Prop :=
  ∀ n, P17982389026254000746.a n = A022853 n

end A022853

/-! ## A022853.P12308916823693599587

`A121381(2*n)-A121381(n)`
-/

namespace A022853.P12308916823693599587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (2 * n) - A121381 n

end

end A022853.P12308916823693599587

namespace A022853

/-- `A121381(2*n)-A121381(n)` -/
def P12308916823693599587.Spec : Prop :=
  ∀ n, P12308916823693599587.a n = A022853 n

end A022853

/-! ## A022853.P5231326341797140381

`A004084(2*n+1)-A004084(n+1)`
-/

namespace A022853.P5231326341797140381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (2 * n + 1) - A004084 (n + 1)

end

end A022853.P5231326341797140381

namespace A022853

/-- `A004084(2*n+1)-A004084(n+1)` -/
def P5231326341797140381.Spec : Prop :=
  ∀ n, P5231326341797140381.a n = A022853 n

end A022853

/-! ## A022853.P5635416991465061651

`A327136(2*(n+1))-A327136(n+2)`
-/

namespace A022853.P5635416991465061651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327136 (2 * (n + 1)) - A327136 (n + 2)

end

end A022853.P5635416991465061651

namespace A022853

/-- `A327136(2*(n+1))-A327136(n+2)` -/
def P5635416991465061651.Spec : Prop :=
  ∀ n, P5635416991465061651.a n = A022853 n

end A022853

/-! ## A022853.P5546581100067169915

`A062389(2*(n+2))-A062389(n+4)`
-/

namespace A022853.P5546581100067169915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * (n + 2)) - A062389 (n + 4)

end

end A022853.P5546581100067169915

namespace A022853

/-- `A062389(2*(n+2))-A062389(n+4)` -/
def P5546581100067169915.Spec : Prop :=
  ∀ n, P5546581100067169915.a n = A022853 n

end A022853

/-! ## A022853.P1046045262519395858

`A257984(2*(n+2))-A257984(n+4)`
-/

namespace A022853.P1046045262519395858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (2 * (n + 2)) - A257984 (n + 4)

end

end A022853.P1046045262519395858

namespace A022853

/-- `A257984(2*(n+2))-A257984(n+4)` -/
def P1046045262519395858.Spec : Prop :=
  ∀ n, P1046045262519395858.a n = A022853 n

end A022853

/-! ## A022853.P13365146545092722098

`A110654(A038130(n))`
-/

namespace A022853.P13365146545092722098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A038130 n).toNat

end

end A022853.P13365146545092722098

namespace A022853

/-- `A110654(A038130(n))` -/
def P13365146545092722098.Spec : Prop :=
  ∀ n, P13365146545092722098.a n = A022853 n

end A022853

/-!
# A022854: a(n) = [ a(n-1)/a(1) + a(n-1)/a(2) + ... + a(n-1)/a(n-1) ] for n >= 3, with initial terms 1,1.

The programs for A022854, there is no canonical definition to state claims against.
-/

/-! ## A022854.P14249157157480269060

`A364090(A173404(n+1))`
-/

namespace A022854.P14249157157480269060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364090 (A173404 (n + 1)).toNat

end

end A022854.P14249157157480269060

/-! ## A022854.P10413248927259186713

`A364090(A325473(n+1))`
-/

namespace A022854.P10413248927259186713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364090 (A325473 (n + 1)).toNat

end

end A022854.P10413248927259186713

/-! ## A022854.P6920966084510444785

`A325926(n)+A318229(n+1)`
-/

namespace A022854.P6920966084510444785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325926 n + A318229 (n + 1)

end

end A022854.P6920966084510444785

/-! ## A022854.P17997648593612789678

`A186085(2*n)+A184955(2*n+1)`
-/

namespace A022854.P17997648593612789678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186085 (2 * n) + A184955 (2 * n + 1)

end

end A022854.P17997648593612789678

/-!
# A022855: a(n) = [ a(n-1)/a(1) ] + [ a(n-1)/a(2) ] + ... + [ a(n-1)/a(n-1) ] for n >= 3, with initial terms 1,1.

The programs for A022855, there is no canonical definition to state claims against.
-/

/-! ## A022855.P11054663721591898521

`A008615(A151865(n)+A101168(n))`
-/

namespace A022855.P11054663721591898521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A151865 n + A101168 n).toNat

end

end A022855.P11054663721591898521

/-! ## A022855.P13363955782268370289

`A194509(or(A018041(n), A242464(n)))`
-/

namespace A022855.P13363955782268370289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (Int.lor (A018041 n) (A242464 n)).toNat

end

end A022855.P13363955782268370289

/-! ## A022855.P16978955669935092937

`A194509(or(A008615(n+1), A018041(n)))`
-/

namespace A022855.P16978955669935092937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (Int.lor (A008615 (n + 1)) (A018041 n)).toNat

end

end A022855.P16978955669935092937

/-! ## A022855.P1317394343423837518

`A008615(A101168(n)+A266529(2*(n+1))+A151704(n))`
-/

namespace A022855.P1317394343423837518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A101168 n + (A266529 (2 * (n + 1)) + A151704 n)).toNat

end

end A022855.P1317394343423837518

/-!
# A022856: a(n) = n-2 + Sum_{i = 1..n-2} (a(i+1) mod a(i)) for n >= 3 with a(1) = a(2) = 1.

The programs for A022856, the canonical program `A022856.P16262898334384934073` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022856 has offset 1).

The definition of A022856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022856.P633208521674114414

`ogf((1-2x+x^2+x^3-x^4+x^5)/(1-3x+3x^2-x^3))`
-/

namespace A022856.P633208521674114414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1, -1, 1] [1, -3, 3, -1] n

end

end A022856.P633208521674114414

namespace A022856

/-- `ogf((1-2x+x^2+x^3-x^4+x^5)/(1-3x+3x^2-x^3))` -/
def P633208521674114414.Spec : Prop :=
  ∀ n, P633208521674114414.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P16262898334384934073

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022856

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16262898334384934073.Spec : Prop :=
  ∀ n, P16262898334384934073.a n = A022856 (n + 1)

theorem P16262898334384934073.correct : P16262898334384934073.Spec := by
  intro n
  simp only [A022856, Nat.add_sub_cancel]

end A022856

/-! ## A022856.P2233133314996476397

`∑[floor((1-n)²/(n+1))]`
-/

namespace A022856.P2233133314996476397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022856.P2233133314996476397

namespace A022856

/-- `∑[floor((1-n)²/(n+1))]` -/
def P2233133314996476397.Spec : Prop :=
  ∀ n, P2233133314996476397.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P15223525441199938333

`a(n-1)-3+n` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A022856.P15223525441199938333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - 3 + (n : ℤ)

end

end A022856.P15223525441199938333

namespace A022856

/-- `a(n-1)-3+n` -/
def P15223525441199938333.Spec : Prop :=
  ∀ n, P15223525441199938333.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P4245699562346944321

`a(n-1)-(3-n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A022856.P4245699562346944321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - (3 - (n : ℤ))

end

end A022856.P4245699562346944321

namespace A022856

/-- `a(n-1)-(3-n)` -/
def P4245699562346944321.Spec : Prop :=
  ∀ n, P4245699562346944321.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P13584045257029808531

`A089071(floor(sqrt((1-n)²+1)))`
-/

namespace A022856.P13584045257029808531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (Int.sqrt ((1 - (n : ℤ)) ^ 2 + 1)).toNat

end

end A022856.P13584045257029808531

namespace A022856

/-- `A089071(floor(sqrt((1-n)²+1)))` -/
def P13584045257029808531.Spec : Prop :=
  ∀ n, P13584045257029808531.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P15188428442516701714

`∑[C(A000005(n+1), n)+n-2]-(n-2)`
-/

namespace A022856.P15188428442516701714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000005 (n + 1)).toNat n : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 2)

end

end A022856.P15188428442516701714

namespace A022856

/-- `∑[C(A000005(n+1), n)+n-2]-(n-2)` -/
def P15188428442516701714.Spec : Prop :=
  ∀ n, P15188428442516701714.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P14857916489046462785

`A212342(n)-A296515(n)`
-/

namespace A022856.P14857916489046462785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n - A296515 n

end

end A022856.P14857916489046462785

namespace A022856

/-- `A212342(n)-A296515(n)` -/
def P14857916489046462785.Spec : Prop :=
  ∀ n, P14857916489046462785.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P14693934125599987338

`A089071(n+1)-A004274(n)`
-/

namespace A022856.P14693934125599987338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) - A004274 n

end

end A022856.P14693934125599987338

namespace A022856

/-- `A089071(n+1)-A004274(n)` -/
def P14693934125599987338.Spec : Prop :=
  ∀ n, P14693934125599987338.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P8618464545373588029

`A133263(n)-(A004274(n)+n)`
-/

namespace A022856.P8618464545373588029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - (A004274 n + (n : ℤ))

end

end A022856.P8618464545373588029

namespace A022856

/-- `A133263(n)-(A004274(n)+n)` -/
def P8618464545373588029.Spec : Prop :=
  ∀ n, P8618464545373588029.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P10748447017381754976

`∑[A004281(n)-n]-A130130(n)`
-/

namespace A022856.P10748447017381754976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130130 n

end

end A022856.P10748447017381754976

namespace A022856

/-- `∑[A004281(n)-n]-A130130(n)` -/
def P10748447017381754976.Spec : Prop :=
  ∀ n, P10748447017381754976.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P1590557550635319486

`A089071(n+1)-comp[A004277(n+2)]`
-/

namespace A022856.P1590557550635319486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022856.P1590557550635319486

namespace A022856

/-- `A089071(n+1)-comp[A004277(n+2)]` -/
def P1590557550635319486.Spec : Prop :=
  ∀ n, P1590557550635319486.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P3174567007020367692

`A238531(A289207(n)+1)-A289207(n)`
-/

namespace A022856.P3174567007020367692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (A289207 n + 1).toNat - A289207 n

end

end A022856.P3174567007020367692

namespace A022856

/-- `A238531(A289207(n)+1)-A289207(n)` -/
def P3174567007020367692.Spec : Prop :=
  ∀ n, P3174567007020367692.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P6686417954325047027

`2-(A004274(A028310(n))-A161680(n))`
-/

namespace A022856.P6686417954325047027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A004274 (A028310 n).toNat - A161680 n)

end

end A022856.P6686417954325047027

namespace A022856

/-- `2-(A004274(A028310(n))-A161680(n))` -/
def P6686417954325047027.Spec : Prop :=
  ∀ n, P6686417954325047027.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P10490838704074938415

`A238531(A289207(n+1))-A289207(n)`
-/

namespace A022856.P10490838704074938415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (A289207 (n + 1)).toNat - A289207 n

end

end A022856.P10490838704074938415

namespace A022856

/-- `A238531(A289207(n+1))-A289207(n)` -/
def P10490838704074938415.Spec : Prop :=
  ∀ n, P10490838704074938415.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P10226501870181931175

`A016028(A016028(n+2)-A016028(n+1)+1)-1`
-/

namespace A022856.P10226501870181931175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A016028 (n + 2) - A016028 (n + 1) + 1).toNat - 1

end

end A022856.P10226501870181931175

namespace A022856

/-- `A016028(A016028(n+2)-A016028(n+1)+1)-1` -/
def P10226501870181931175.Spec : Prop :=
  ∀ n, P10226501870181931175.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P10007029857508903205

`2-(A028310(A004274(n))-A161680(n))`
-/

namespace A022856.P10007029857508903205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A028310 (A004274 n).toNat - A161680 n)

end

end A022856.P10007029857508903205

namespace A022856

/-- `2-(A028310(A004274(n))-A161680(n))` -/
def P10007029857508903205.Spec : Prop :=
  ∀ n, P10007029857508903205.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P15071136788353283497

`A077169(n+1)-(A028310(2*n)+n)`
-/

namespace A022856.P15071136788353283497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (n + 1) - (A028310 (2 * n) + (n : ℤ))

end

end A022856.P15071136788353283497

namespace A022856

/-- `A077169(n+1)-(A028310(2*n)+n)` -/
def P15071136788353283497.Spec : Prop :=
  ∀ n, P15071136788353283497.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P7831160301472667859

`A077169(n+1)-A028310(3*n)`
-/

namespace A022856.P7831160301472667859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (n + 1) - A028310 (3 * n)

end

end A022856.P7831160301472667859

namespace A022856

/-- `A077169(n+1)-A028310(3*n)` -/
def P7831160301472667859.Spec : Prop :=
  ∀ n, P7831160301472667859.a n = A022856 (n + 1)

end A022856

/-! ## A022856.P15857999455366608048

`A016028(A233583(n+1))-1`
-/

namespace A022856.P15857999455366608048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A233583 (n + 1)).toNat - 1

end

end A022856.P15857999455366608048

namespace A022856

/-- `A016028(A233583(n+1))-1` -/
def P15857999455366608048.Spec : Prop :=
  ∀ n, P15857999455366608048.a n = A022856 (n + 1)

end A022856

/-!
# A022857: a(n) = [ a(n-1)/a(1) + a(n-2)/a(2) + ... + a(1)/a(n-1) ], for n >= 3.

The programs for A022857, there is no canonical definition to state claims against.
-/

/-! ## A022857.P9543828915527649632

`A054404(A313721(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A022857.P9543828915527649632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A054404 (A313721 (a (n - 1)).toNat).toNat

end

end A022857.P9543828915527649632

/-! ## A022857.P17926596778357088748

`A001462(A295704(n))-A217657(n)`
-/

namespace A022857.P17926596778357088748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A295704 n).toNat - A217657 n

end

end A022857.P17926596778357088748

/-! ## A022857.P6587978057342762106

`floor(root(A113202(2*(n+3)), 6))`
-/

namespace A022857.P6587978057342762106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113202 (2 * (n + 3)) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A022857.P6587978057342762106

/-! ## A022857.P2946234485056356784

`A257639(A047086(n))`
-/

namespace A022857.P2946234485056356784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A047086 n).toNat

end

end A022857.P2946234485056356784

/-! ## A022857.P40427733847184126

`A257639(3*A287275(n))`
-/

namespace A022857.P40427733847184126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (3 * A287275 n).toNat

end

end A022857.P40427733847184126

/-!
# A022858: a(n) = [ a(n-1)/a(1) ] + [ a(n-2)/a(2) ] + ... + [ a(1)/a(n-1) ], for n >= 3.

The programs for A022858, there is no canonical definition to state claims against.
-/

/-! ## A022858.P17402928966705914724

`A316355(A127600(n+1))`
-/

namespace A022858.P17402928966705914724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A127600 (n + 1)).toNat

end

end A022858.P17402928966705914724

/-! ## A022858.P17381667950557920808

`A262689(A193296(n)+floor(3^(n-1))+1)`
-/

namespace A022858.P17381667950557920808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A193296 n + (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)).toNat

end

end A022858.P17381667950557920808

/-! ## A022858.P18047281795950566038

`A257639(A108626(n)+A000213(n))`
-/

namespace A022858.P18047281795950566038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A108626 n + A000213 n).toNat

end

end A022858.P18047281795950566038

/-! ## A022858.P15408409462925643962

`A257639(A108626(n)+A026691(n))`
-/

namespace A022858.P15408409462925643962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A108626 n + A026691 n).toNat

end

end A022858.P15408409462925643962

/-! ## A022858.P8502380809365557516

`A257639(A108626(n)+A037952(n))`
-/

namespace A022858.P8502380809365557516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A108626 n + A037952 n).toNat

end

end A022858.P8502380809365557516

/-!
# A022859: a(n) = [ a(n-1)/a(1) + a(n-3)/a(3) + a(n-5)/a(5) + ... ], for n >= 3.

The programs for A022859, there is no canonical definition to state claims against.
-/

/-! ## A022859.P7280957720947463568

`A054404(ceil(sqrt(A243722(n+1))))`
-/

namespace A022859.P7280957720947463568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌈Real.sqrt (A243722 (n + 1) : ℝ)⌉.toNat

end

end A022859.P7280957720947463568

/-! ## A022859.P5589944619833214820

`A163563(A050253(n+1))`
-/

namespace A022859.P5589944619833214820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A050253 (n + 1)).toNat

end

end A022859.P5589944619833214820

/-! ## A022859.P5097986260330876087

`A001462(floor(sqrt(A056783(n+1))))`
-/

namespace A022859.P5097986260330876087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.sqrt (A056783 (n + 1))).toNat

end

end A022859.P5097986260330876087

/-! ## A022859.P3851160522406709016

`A001462(ceil(A141199(n)/(n+1)))`
-/

namespace A022859.P3851160522406709016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌈(A141199 n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A022859.P3851160522406709016

/-! ## A022859.P17032595471783263559

`A022860(n+1)+A002100(A037271(2*(n+1)))`
-/

namespace A022859.P17032595471783263559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022860 (n + 1) + A002100 (A037271 (2 * (n + 1))).toNat

end

end A022859.P17032595471783263559

/-!
# A022860: a(n) = [ a(n-1)/a(1) ] + [ a(n-3)/a(3) ] + [ a(n-5)/a(5) ] + ..., for n >= 3.

The programs for A022860, there is no canonical definition to state claims against.
-/

/-! ## A022860.P17783268146845930691

`A001462(floor(sqrt(A105864(n))))`
-/

namespace A022860.P17783268146845930691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.sqrt (A105864 n)).toNat

end

end A022860.P17783268146845930691

/-! ## A022860.P13350977802651622692

`A073941(n+1)-A001221(A072493(A072493(n+1)))`
-/

namespace A022860.P13350977802651622692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1) - A001221 (A072493 (A072493 (n + 1)).toNat).toNat

end

end A022860.P13350977802651622692

/-! ## A022860.P1552679789369628188

`round(root(A339296(2*n+1), 6))`
-/

namespace A022860.P1552679789369628188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A339296 (2 * n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A022860.P1552679789369628188

/-! ## A022860.P8519132357021783462

`A000267(round(A213411(n)/5))`
-/

namespace A022860.P8519132357021783462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (SequenceMachineLib.roundAway ((A213411 n : ℚ) / 5)).toNat

end

end A022860.P8519132357021783462

/-!
# A022861: a(n) = [ a(n-1)/a(1) + a(n-1)/a(2) + ... + a(n-1)/a(n-1) ] for n >= 3, with initial terms 1,2.

The programs for A022861, there is no canonical definition to state claims against.
-/

/-! ## A022861.P15199893198340703599

`A022867(n+2)-A000007(n)`
-/

namespace A022861.P15199893198340703599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022867 (n + 2) - A000007 n

end

end A022861.P15199893198340703599

/-! ## A022861.P6143881290611062108

`A022867(n+2)/A054977(n)`
-/

namespace A022861.P6143881290611062108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022867 (n + 2) : ℚ) / (A054977 n : ℚ)

end

end A022861.P6143881290611062108

/-! ## A022861.P4427025086620453754

`A022867(n+2)/A000038(n)!`
-/

namespace A022861.P4427025086620453754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022867 (n + 2) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A022861.P4427025086620453754

/-! ## A022861.P8204529438987327757

`A022867(n+2)+n-A028310(n)`
-/

namespace A022861.P8204529438987327757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022867 (n + 2) + ((n : ℤ) - A028310 n)

end

end A022861.P8204529438987327757

/-! ## A022861.P6317242432228723024

`A022867(n+2)+1-A054977(2*n)`
-/

namespace A022861.P6317242432228723024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022867 (n + 2) + (1 - A054977 (2 * n))

end

end A022861.P6317242432228723024

/-! ## A022861.P1460295211097125657

`A022867(n+2)/(A000007(2*n)+1)`
-/

namespace A022861.P1460295211097125657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022867 (n + 2) : ℚ) / (A000007 (2 * n) + 1 : ℚ)

end

end A022861.P1460295211097125657

/-! ## A022861.P848578109781058630

`A022867(n+2)-A000038(2*n)/2`
-/

namespace A022861.P848578109781058630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022867 (n + 2) : ℚ) - (A000038 (2 * n) : ℚ) / 2

end

end A022861.P848578109781058630

/-! ## A022861.P18097586711600504147

`A022867(n+2)-A073424(p?[2*n+1])`
-/

namespace A022861.P18097586711600504147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022867 (n + 2) - A073424 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A022861.P18097586711600504147

/-! ## A022861.P4053184929122205137

`A063196(2*n+1)+A022867(n+2)-(2*n+1)`
-/

namespace A022861.P4053184929122205137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * n + 1) + (A022867 (n + 2) - (2 * n + 1 : ℤ))

end

end A022861.P4053184929122205137

/-! ## A022861.P4669582011690293975

`A022867(n+2)^A046902(∑[n])`
-/

namespace A022861.P4669582011690293975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022867 (n + 2) : ℚ) ^ (A046902 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A022861.P4669582011690293975

/-! ## A022861.P15581207245478822047

`A022867(n+2)-A016378(A093411(n))`
-/

namespace A022861.P15581207245478822047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022867 (n + 2) - A016378 (A093411 n).toNat

end

end A022861.P15581207245478822047

/-! ## A022861.P10394784377299806204

`A022867(n+2)-A016378(A063196(n+1))`
-/

namespace A022861.P10394784377299806204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022867 (n + 2) - A016378 (A063196 (n + 1)).toNat

end

end A022861.P10394784377299806204

/-!
# A022862: a(n) = [ a(n-1)/a(1) ] + [ a(n-1)/a(2) ] + ... + [ a(n-1)/a(n-1) ] for n >= 3, with initial terms 1,2.

The programs for A022862, there is no canonical definition to state claims against.
-/

/-! ## A022862.P13303169626592291174

`A081832(A286062(n))`
-/

namespace A022862.P13303169626592291174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (A286062 n).toNat

end

end A022862.P13303169626592291174

/-! ## A022862.P10897501472947589118

`A331904(11*a(n-1)+1)-2` with `a(0)=1, a(1)=2`
-/

namespace A022862.P10897501472947589118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A331904 (11 * a (n - 1) + 1).toNat - 2

end

end A022862.P10897501472947589118

/-! ## A022862.P1867541283526025502

`A094192(a(n-1)²-n+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A022862.P1867541283526025502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A094192 (a (n - 1) ^ 2 - (n : ℤ) + 1).toNat - 1

end

end A022862.P1867541283526025502

/-! ## A022862.P3709166041410106430

`A005041(A135588(n)+n)`
-/

namespace A022862.P3709166041410106430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A135588 n + (n : ℤ)).toNat

end

end A022862.P3709166041410106430

/-! ## A022862.P2111872205238607793

`A001462(A025227(n)+A000108(n))`
-/

namespace A022862.P2111872205238607793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A025227 n + A000108 n).toNat

end

end A022862.P2111872205238607793

/-!
# A022863: a(n) = [ a(n-1)/a(1) + a(n-2)/a(2) + ... + a(1)/a(n-1) ], for n >= 3.

The programs for A022863, there is no canonical definition to state claims against.
-/

/-! ## A022863.P13418690996617532776

`A274162(or(A010057(n), A187829(n+1)))`
-/

namespace A022863.P13418690996617532776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (Int.lor (A010057 n) (A187829 (n + 1))).toNat

end

end A022863.P13418690996617532776

/-! ## A022863.P5569002920444178566

`A274162(or(A094497(n), A187829(n+1)))`
-/

namespace A022863.P5569002920444178566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (Int.lor (A094497 n) (A187829 (n + 1))).toNat

end

end A022863.P5569002920444178566

/-! ## A022863.P12029725103722732517

`A274162(or(A187829(n+1), A209229(n)))`
-/

namespace A022863.P12029725103722732517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (Int.lor (A187829 (n + 1)) (A209229 n)).toNat

end

end A022863.P12029725103722732517

/-! ## A022863.P7072405476194951326

`A274162(or(A187829(n+1), A258021(n)))`
-/

namespace A022863.P7072405476194951326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (Int.lor (A187829 (n + 1)) (A258021 n)).toNat

end

end A022863.P7072405476194951326

/-! ## A022863.P6162968735946942786

`A274162(A187829(n+1)+A019590(n+1))`
-/

namespace A022863.P6162968735946942786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (A187829 (n + 1) + A019590 (n + 1)).toNat

end

end A022863.P6162968735946942786

/-!
# A022864: a(n) = [ a(n-1)/a(1) ] + [ a(n-2)/a(2) ] + ... + [ a(1)/a(n-1) ], for n >= 3.

The programs for A022864, there is no canonical definition to state claims against.
-/

/-! ## A022864.P18147511658248315244

`A213257(A001611(n))`
-/

namespace A022864.P18147511658248315244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A001611 n).toNat

end

end A022864.P18147511658248315244

/-! ## A022864.P11176123466179273395

`A168255(A270724(n))`
-/

namespace A022864.P11176123466179273395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A270724 n).toNat

end

end A022864.P11176123466179273395

/-! ## A022864.P7317579377292551022

`A213257(A000045(n)+1)`
-/

namespace A022864.P7317579377292551022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A000045 n + 1).toNat

end

end A022864.P7317579377292551022

/-! ## A022864.P8442374369086497964

`A213257(A107358(n)+1)`
-/

namespace A022864.P8442374369086497964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A107358 n + 1).toNat

end

end A022864.P8442374369086497964

/-! ## A022864.P16802978841914187772

`A213257(A157725(n)-1)`
-/

namespace A022864.P16802978841914187772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A157725 n - 1).toNat

end

end A022864.P16802978841914187772

/-!
# A022865: a(n) = [ a(n-1)/a(1) + a(n-3)/a(3) + a(n-5)/a(5) + ... ], for n >= 3.

The programs for A022865, there is no canonical definition to state claims against.
-/

/-! ## A022865.P14413972440598690128

`A225687(A135432(n)+1)`
-/

namespace A022865.P14413972440598690128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A135432 n + 1).toNat

end

end A022865.P14413972440598690128

/-! ## A022865.P18410604061093051284

`A002024(A054230(char[1]+n))`
-/

namespace A022865.P18410604061093051284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A054230 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A022865.P18410604061093051284

/-! ## A022865.P11734973504530866436

`A257639(A128695(n+1)+3)`
-/

namespace A022865.P11734973504530866436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A128695 (n + 1) + 3).toNat

end

end A022865.P11734973504530866436

/-! ## A022865.P4237364767492566692

`A002024(∑[A059259(floor(n²/2))])`
-/

namespace A022865.P4237364767492566692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022865.P4237364767492566692

/-! ## A022865.P18029842959487395066

`A002024(A176485(n+1)+A056556(n))`
-/

namespace A022865.P18029842959487395066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A176485 (n + 1) + A056556 n).toNat

end

end A022865.P18029842959487395066

/-!
# A022866: a(n) = [ a(n-1)/a(1) ] + [ a(n-3)/a(3) ] + [ a(n-5)/a(5) ] + ..., for n >= 3.

The programs for A022866, there is no canonical definition to state claims against.
-/

/-! ## A022866.P16457934800706357965

`floor(A020884(A020741(n))/A020739(n))`
-/

namespace A022866.P16457934800706357965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020884 (A020741 n).toNat : ℚ) / (A020739 n : ℚ)⌋

end

end A022866.P16457934800706357965

/-! ## A022866.P3257601090218781353

`A003056(A173278(n)+A147380(n+1))`
-/

namespace A022866.P3257601090218781353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A173278 n + A147380 (n + 1)).toNat

end

end A022866.P3257601090218781353

/-! ## A022866.P6725205499722184353

`A003059(round(sqrt(A081293(n))))`
-/

namespace A022866.P6725205499722184353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (SequenceMachineLib.roundAway (Real.sqrt (A081293 n : ℝ))).toNat

end

end A022866.P6725205499722184353

/-! ## A022866.P1441467305363913860

`A000196(A095067(n+3))+1`
-/

namespace A022866.P1441467305363913860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A095067 (n + 3)).toNat + 1

end

end A022866.P1441467305363913860

/-! ## A022866.P14694979421443721461

`A003059(A224808(2*n)+n)`
-/

namespace A022866.P14694979421443721461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A224808 (2 * n) + (n : ℤ)).toNat

end

end A022866.P14694979421443721461

/-!
# A022867: a(n) = [ a(n-1)/a(1) + a(n-1)/a(2) + ... + a(n-1)/a(n-1) ] for n >= 3, with initial terms 2,2.

The programs for A022867, there is no canonical definition to state claims against.
-/

/-! ## A022867.P11840045891259197629

`A022861(round(acot(n)+n))`
-/

namespace A022867.P11840045891259197629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022861 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A022867.P11840045891259197629

/-! ## A022867.P2923460838042820146

`A022861(A233583(n+1))`
-/

namespace A022867.P2923460838042820146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022861 (A233583 (n + 1)).toNat

end

end A022867.P2923460838042820146

/-! ## A022867.P3350294571892069931

`A022861(A289207(n)+2)`
-/

namespace A022867.P3350294571892069931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022861 (A289207 n + 2).toNat

end

end A022867.P3350294571892069931

/-! ## A022867.P2116400704133070386

`A022861(floor(sqrt(A087475(n))))`
-/

namespace A022867.P2116400704133070386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022861 (Int.sqrt (A087475 n)).toNat

end

end A022867.P2116400704133070386

/-! ## A022867.P16345079508263069087

`A022861(A254667(A028310(n)))`
-/

namespace A022867.P16345079508263069087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022861 (A254667 (A028310 n).toNat).toNat

end

end A022867.P16345079508263069087

/-! ## A022867.P544610497920939304

`A022861(A065033(2*n)*A141044(n))`
-/

namespace A022867.P544610497920939304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022861 (A065033 (2 * n) * A141044 n).toNat

end

end A022867.P544610497920939304

/-!
# A022868: a(n) = [ a(n-1)/a(1) ] + [ a(n-1)/a(2) ] + ... + [ a(n-1)/a(n-1) ] for n >= 3, with initial terms 2,2.

The programs for A022868, there is no canonical definition to state claims against.
-/

/-! ## A022868.P826751409399587707

`A005041(A332930(n))+A000207(A029081(n))`
-/

namespace A022868.P826751409399587707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A332930 n).toNat + A000207 (A029081 n).toNat

end

end A022868.P826751409399587707

/-! ## A022868.P2352887555596140217

`A005041(A332930(n))+A004127(A295260(n+1))`
-/

namespace A022868.P2352887555596140217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A332930 n).toNat + A004127 (A295260 (n + 1)).toNat

end

end A022868.P2352887555596140217

/-! ## A022868.P17015187995286127777

`A265370(A148303(n)+3)+A108723(A000040(n+1))`
-/

namespace A022868.P17015187995286127777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A148303 n + 3).toNat + A108723 (A000040 (n + 1)).toNat

end

end A022868.P17015187995286127777

/-! ## A022868.P17714504907923540322

`A333943(A068012(n))+1`
-/

namespace A022868.P17714504907923540322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333943 (A068012 n).toNat + 1

end

end A022868.P17714504907923540322

/-! ## A022868.P9978043971533758127

`A003056(A062272(n)+2)`
-/

namespace A022868.P9978043971533758127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A062272 n + 2).toNat

end

end A022868.P9978043971533758127

/-!
# A022869: a(n) = [ a(n-1)/a(1) + a(n-2)/a(2) + ... + a(1)/a(n-1) ], for n >= 3.

The programs for A022869, there is no canonical definition to state claims against.
-/

/-! ## A022869.P3573005756929449535

`A001462(A137402(n)+1)`
-/

namespace A022869.P3573005756929449535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A137402 n + 1).toNat

end

end A022869.P3573005756929449535

/-! ## A022869.P13577629202141231256

`A027434(floor(sqrt(A123020(n))))`
-/

namespace A022869.P13577629202141231256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (Int.sqrt (A123020 n)).toNat

end

end A022869.P13577629202141231256

/-! ## A022869.P16753477238982115786

`A172471(A000050(floor(acot(n)+n)))`
-/

namespace A022869.P16753477238982115786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000050 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A022869.P16753477238982115786

/-! ## A022869.P14232232550721078274

`A172471(A000050(round(acot(n)+n)))`
-/

namespace A022869.P14232232550721078274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000050 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A022869.P14232232550721078274

/-! ## A022869.P11181448863385688331

`A172471(ceil(acot(n))*A000050(n))`
-/

namespace A022869.P11181448863385688331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A000050 n).toNat

end

end A022869.P11181448863385688331

/-!
# A022871: a(n) = [ a(n-1)/a(1) + a(n-3)/a(3) + a(n-5)/a(5) + ... ], for n >= 3.

The programs for A022871, there is no canonical definition to state claims against.
-/

/-! ## A022871.P4070887521872760006

`A105224(A000219(n))+char[A242447(n)]`
-/

namespace A022871.P4070887521872760006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A000219 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022871.P4070887521872760006

/-! ## A022871.P15661837186521429843

`A105224(A000219(n))+A000194(A081753(n))`
-/

namespace A022871.P15661837186521429843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A000219 n).toNat + A000194 (A081753 n).toNat

end

end A022871.P15661837186521429843

/-!
# A022872: a(n) = [ a(n-1)/a(1) ] + [ a(n-3)/a(3) ] + [ a(n-5)/a(5) ] + ..., for n >= 3.

The programs for A022872, there is no canonical definition to state claims against.
-/

/-! ## A022872.P9138370037237465739

`A121373(A063834(n))+A015750(n)`
-/

namespace A022872.P9138370037237465739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A063834 n).toNat + A015750 n

end

end A022872.P9138370037237465739

/-! ## A022872.P3864896468321228802

`A121373(A037283(n+1))+A120194(2*(n+1))`
-/

namespace A022872.P3864896468321228802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A037283 (n + 1)).toNat + A120194 (2 * (n + 1))

end

end A022872.P3864896468321228802

/-!
# A022873: a(n) = [ a(n-1)/a(1) + a(n-1)/a(2) + ... + a(n-1)/a(n-1) ] for n >= 3, with initial terms 2,1.

The programs for A022873, there is no canonical definition to state claims against.
-/

/-! ## A022873.P15125149709525222418

`A246142(3*n+2)+A138747(n+1)`
-/

namespace A022873.P15125149709525222418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (3 * n + 2) + A138747 (n + 1)

end

end A022873.P15125149709525222418

/-! ## A022873.P6864888557240549915

`A138747(n+1)+A010873(A138734(n))`
-/

namespace A022873.P6864888557240549915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138747 (n + 1) + A010873 (A138734 n).toNat

end

end A022873.P6864888557240549915

/-! ## A022873.P7383797255373891201

`A138747(n+1)+A121373(A063782(n))`
-/

namespace A022873.P7383797255373891201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138747 (n + 1) + A121373 (A063782 n).toNat

end

end A022873.P7383797255373891201

/-! ## A022873.P17067894950608594762

`A138747(n+1)+A010052(A148473(n+1))`
-/

namespace A022873.P17067894950608594762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138747 (n + 1) + A010052 (A148473 (n + 1)).toNat

end

end A022873.P17067894950608594762

/-!
# A022874: a(n) = [ a(n-1)/a(1) ] + [ a(n-1)/a(2) ] + ... + [ a(n-1)/a(n-1) ] for n >= 3, with initial terms 2,1.

The programs for A022874, there is no canonical definition to state claims against.
-/

/-! ## A022874.P11209776177576815982

`round(ceil((2^n+1)²/2)/A234285(2*n+1))`
-/

namespace A022874.P11209776177576815982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈((2 ^ n + 1) ^ 2 : ℚ) / 2⌉ : ℚ) / (A234285 (2 * n + 1) : ℚ))

end

end A022874.P11209776177576815982

/-! ## A022874.P7571056817040927466

`A247908(A336989(n))+1-n`
-/

namespace A022874.P7571056817040927466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A336989 n).toNat + (1 - (n : ℤ))

end

end A022874.P7571056817040927466

/-! ## A022874.P15286861295829951356

`A319434(A326275(n))-A319951(n)`
-/

namespace A022874.P15286861295829951356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319434 (A326275 n).toNat - A319951 n

end

end A022874.P15286861295829951356

/-! ## A022874.P14673904212132450703

`A087836(A066453(n+1)+2)+A025913(n)`
-/

namespace A022874.P14673904212132450703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A066453 (n + 1) + 2).toNat + A025913 n

end

end A022874.P14673904212132450703

/-!
# A022875: a(n) = [ a(n-1)/a(1) + a(n-2)/a(2) + ... + a(1)/a(n-1) ], for n >= 3.

The programs for A022875, there is no canonical definition to state claims against.
-/

/-! ## A022875.P8504783482735600535

`A001462(A101836(n)+A049705(n+1))`
-/

namespace A022875.P8504783482735600535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A101836 n + A049705 (n + 1)).toNat

end

end A022875.P8504783482735600535

/-! ## A022875.P4651835773896727395

`A001462(A101836(n)+A060508(n+2))`
-/

namespace A022875.P4651835773896727395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A101836 n + A060508 (n + 2)).toNat

end

end A022875.P4651835773896727395

/-! ## A022875.P1582238540683076689

`A214041(A077168(n))+A000007(n)`
-/

namespace A022875.P1582238540683076689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214041 (A077168 n).toNat + A000007 n

end

end A022875.P1582238540683076689

/-! ## A022875.P17724230927026956996

`A214041(A077168(n))+A010893(n)`
-/

namespace A022875.P17724230927026956996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214041 (A077168 n).toNat + A010893 (n + 13)

end

end A022875.P17724230927026956996

/-! ## A022875.P12680367692318976179

`A214041(A077168(n))+A151810(n)`
-/

namespace A022875.P12680367692318976179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214041 (A077168 n).toNat + A151810 n

end

end A022875.P12680367692318976179

/-!
# A022876: a(n) = [ a(n-1)/a(1) ] + [ a(n-2)/a(2) ] + ... + [ a(1)/a(n-1) ], for n >= 3.

The programs for A022876, there is no canonical definition to state claims against.
-/

/-! ## A022876.P758239371523839931

`Δ[A000194(A203853(n+1))]+1`
-/

namespace A022876.P758239371523839931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A203853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A022876.P758239371523839931

/-! ## A022876.P2123287505920977274

`Δ[A003059(A208723(n+1))]+1`
-/

namespace A022876.P2123287505920977274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A208723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A022876.P2123287505920977274

/-! ## A022876.P4573305435607388707

`A105224(A167614(n+1)+A002203(n))`
-/

namespace A022876.P4573305435607388707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A167614 (n + 1) + A002203 n).toNat

end

end A022876.P4573305435607388707

/-! ## A022876.P11790045933973909938

`A025049(n)-A008683(A304513(n+1))`
-/

namespace A022876.P11790045933973909938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n - A008683 (A304513 (n + 1)).toNat

end

end A022876.P11790045933973909938

/-! ## A022876.P15497046078726076635

`A322435(A221035(n+1))+A073941(n+1)`
-/

namespace A022876.P15497046078726076635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322435 (A221035 (n + 1)).toNat + A073941 (n + 1)

end

end A022876.P15497046078726076635

/-!
# A022877: a(n) = floor( a(n-1)/a(1) + a(n-3)/a(3) + a(n-5)/a(5) + ... ), for n >= 3 with a(1) = 1 and a(2) = 3.

The programs for A022877, there is no canonical definition to state claims against.
-/

/-! ## A022877.P194794781598312342

`A130855(A347493(n+1))+1`
-/

namespace A022877.P194794781598312342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A347493 (n + 1)).toNat + 1

end

end A022877.P194794781598312342

/-! ## A022877.P18309796101333653123

`A002024(A347493(n+1)+A022878(n+1))`
-/

namespace A022877.P18309796101333653123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A347493 (n + 1) + A022878 (n + 1)).toNat

end

end A022877.P18309796101333653123

/-! ## A022877.P2914715877259396284

`A052954(n+3)-A008683(A000079(n))`
-/

namespace A022877.P2914715877259396284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 3) - A008683 (A000079 n).toNat

end

end A022877.P2914715877259396284

/-! ## A022877.P11772006682766786063

`∑[A000931(n+1)]+A020639(A029744(2*n+1))`
-/

namespace A022877.P11772006682766786063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A020639 (A029744 (2 * n + 1)).toNat

end

end A022877.P11772006682766786063

/-! ## A022877.P15881037291316687884

`A228361(n+1)+A006519(A271827(n))`
-/

namespace A022877.P15881037291316687884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 1) + A006519 (A271827 n).toNat

end

end A022877.P15881037291316687884

/-!
# A022879: The number of numbers [ [ ix ]jx ] that equal n, where i >= 1, j >= 1 and x=(1+sqrt(5))/2. a(n)=0 iff n is in Beatty sequence A001950.

The programs for A022879, the canonical program `A022879.P16818398562923498573` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022879 has offset 1).

The definition of A022879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022879.P16818398562923498573

`A005614(n)*A159876(∑[A005614(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022879

/-- `A005614(n)*A159876(∑[A005614(n)])` -/
def P16818398562923498573.Spec : Prop :=
  ∀ n, P16818398562923498573.a n = A022879 (n + 1)

theorem P16818398562923498573.correct : P16818398562923498573.Spec := by
  intro n
  simp only [A022879, Nat.add_sub_cancel]

end A022879

/-! ## A022879.P9039442653380710438

`A005614(n)*A159876(A005206(n+1))`
-/

namespace A022879.P9039442653380710438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A159876 (A005206 (n + 1)).toNat

end

end A022879.P9039442653380710438

namespace A022879

/-- `A005614(n)*A159876(A005206(n+1))` -/
def P9039442653380710438.Spec : Prop :=
  ∀ n, P9039442653380710438.a n = A022879 (n + 1)

end A022879

/-! ## A022879.P7830416772658159093

`A005614(n)*A159876(A019446(n+1))`
-/

namespace A022879.P7830416772658159093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A159876 (A019446 (n + 1)).toNat

end

end A022879.P7830416772658159093

namespace A022879

/-- `A005614(n)*A159876(A019446(n+1))` -/
def P7830416772658159093.Spec : Prop :=
  ∀ n, P7830416772658159093.a n = A022879 (n + 1)

end A022879

/-! ## A022879.P7351521201187528688

`∑{d}[A005206(n+1), A006336(n+1)%A001468(#)]`
-/

namespace A022879.P7351521201187528688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A006336 (n + 1)) (A001468 d)

end

end A022879.P7351521201187528688

namespace A022879

/-- `∑{d}[A005206(n+1), A006336(n+1)%A001468(#)]` -/
def P7351521201187528688.Spec : Prop :=
  ∀ n, P7351521201187528688.a n = A022879 (n + 1)

end A022879

/-! ## A022879.P11551904426873957956

`∑{d}[A019446(n+1), A006336(#)%A001468(n+1)]`
-/

namespace A022879.P11551904426873957956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A006336 d) (A001468 (n + 1))

end

end A022879.P11551904426873957956

namespace A022879

/-- `∑{d}[A019446(n+1), A006336(#)%A001468(n+1)]` -/
def P11551904426873957956.Spec : Prop :=
  ∀ n, P11551904426873957956.a n = A022879 (n + 1)

end A022879

/-! ## A022879.P10332876916385092523

`∑{d}[A064786(n+1), A003849(A054084(#))]`
-/

namespace A022879.P10332876916385092523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003849 (A054084 d).toNat

end

end A022879.P10332876916385092523

namespace A022879

/-- `∑{d}[A064786(n+1), A003849(A054084(#))]` -/
def P10332876916385092523.Spec : Prop :=
  ∀ n, P10332876916385092523.a n = A022879 (n + 1)

end A022879

/-!
# A022880: The number of numbers [ [ ix ]jx ] that equal n, where i >= 1, j >= 1 and x=sqrt(2).

The programs for A022880, there is no canonical definition to state claims against.
-/

/-! ## A022880.P14056004965509705682

`A000377(or(9, A283081(n)))`
-/

namespace A022880.P14056004965509705682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (Int.lor 9 (A283081 n)).toNat

end

end A022880.P14056004965509705682

/-! ## A022880.P1800589947084182176

`A220659(A299290(n)+A139093(n))`
-/

namespace A022880.P1800589947084182176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220659 (A299290 n + A139093 n).toNat

end

end A022880.P1800589947084182176

/-! ## A022880.P16021932305835369687

`A001222(A004431(n+1)^A136868(n))`
-/

namespace A022880.P16021932305835369687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A004431 (n + 1) : ℚ) ^ (A136868 n : ℤ))).toNat

end

end A022880.P16021932305835369687

/-! ## A022880.P7015489175143713407

`A001222(A004431(n+1)^A277239(n))`
-/

namespace A022880.P7015489175143713407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A004431 (n + 1) : ℚ) ^ (A277239 n : ℤ))).toNat

end

end A022880.P7015489175143713407

/-! ## A022880.P4137435209855621701

`A050493(A050532(n))%A050499(n+3)`
-/

namespace A022880.P4137435209855621701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050493 (A050532 n).toNat) (A050499 (n + 3))

end

end A022880.P4137435209855621701

/-!
# A022881: The number of numbers [ [ ix ]jx ] that equal n, where i >= 1, j >= 1 and x=sqrt(3).

The programs for A022881, there is no canonical definition to state claims against.
-/

/-! ## A022881.P17202722162525610771

`A335808(A277031(n)*A335879(n+1))`
-/

namespace A022881.P17202722162525610771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335808 (A277031 n * A335879 (n + 1)).toNat

end

end A022881.P17202722162525610771

/-! ## A022881.P10741640724845757779

`A124769(lcm(A093609(n+1), A243978(n)))`
-/

namespace A022881.P10741640724845757779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (Int.lcm (A093609 (n + 1)) (A243978 n))

end

end A022881.P10741640724845757779

/-! ## A022881.P11660167577434153804

`A290253(lcm(A003963(3*n+2), A245687(n)))`
-/

namespace A022881.P11660167577434153804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290253 (Int.lcm (A003963 (3 * n + 2)) (A245687 n))

end

end A022881.P11660167577434153804

/-! ## A022881.P6173388534963129869

`A175226(A175212(n+1))%A175214(n+2)`
-/

namespace A022881.P6173388534963129869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175226 (A175212 (n + 1)).toNat) (A175214 (n + 2))

end

end A022881.P6173388534963129869

/-! ## A022881.P2990924080423519340

`A073846(A100977(n+1))%A040267(n)`
-/

namespace A022881.P2990924080423519340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073846 (A100977 (n + 1)).toNat) (A040267 n)

end

end A022881.P2990924080423519340

/-!
# A022882: The number of numbers [ [ ix ]jx ] that equal n, where i >= 1, j >= 1 and x=sqrt(5).

The programs for A022882, there is no canonical definition to state claims against.
-/

/-! ## A022882.P14184631436698496614

`A007814(A167269(∑[A007318(n)]))`
-/

namespace A022882.P14184631436698496614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A167269 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A022882.P14184631436698496614

/-! ## A022882.P187145954005228798

`A319330(A319272(n+1)+66)`
-/

namespace A022882.P187145954005228798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319330 (A319272 (n + 1) + 66).toNat

end

end A022882.P187145954005228798

/-! ## A022882.P10804646625704451371

`A226460(A067147(n)^A226460(n))`
-/

namespace A022882.P10804646625704451371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 (SequenceMachineLib.roundAway ((A067147 n : ℚ) ^ (A226460 n : ℤ))).toNat

end

end A022882.P10804646625704451371

/-! ## A022882.P8046554342832291180

`and(A059614(A059594(n)), A168561(n))`
-/

namespace A022882.P8046554342832291180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059614 (A059594 n).toNat) (A168561 n)

end

end A022882.P8046554342832291180

/-! ## A022882.P6111957107222749129

`A226460(A226460(n)²*A067147(n))`
-/

namespace A022882.P6111957107222749129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 (A226460 n ^ 2 * A067147 n).toNat

end

end A022882.P6111957107222749129

/-!
# A022883: The number of numbers [ [ ix ]jx ] that equal n, where i >= 1, j >= 1 and x=e.

The programs for A022883, there is no canonical definition to state claims against.
-/

/-! ## A022883.P10586996825420288606

`A269166(A255483(n)-A115199(n))`
-/

namespace A022883.P10586996825420288606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A255483 n - A115199 n).toNat

end

end A022883.P10586996825420288606

/-! ## A022883.P5568638406471131755

`A269166(xor(A115199(n), A255483(n)))`
-/

namespace A022883.P5568638406471131755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (Int.xor (A115199 n) (A255483 n)).toNat

end

end A022883.P5568638406471131755

/-! ## A022883.P5908154095132764744

`A269166(A255483(n)-A157657(n+1))`
-/

namespace A022883.P5908154095132764744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A255483 n - A157657 (n + 1)).toNat

end

end A022883.P5908154095132764744

/-! ## A022883.P4160393244391549263

`A269166(A255483(n)+Δ[A157657(n+1)])`
-/

namespace A022883.P4160393244391549263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A255483 n + (f1 (n + 1) - f1 n)).toNat

end

end A022883.P4160393244391549263

/-! ## A022883.P18392847643004323562

`A101606(A222188(n+5)-A053632(3*n+1))`
-/

namespace A022883.P18392847643004323562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (A222188 (n + 5) - A053632 (3 * n + 1)).toNat

end

end A022883.P18392847643004323562

/-!
# A022884: Numbers k such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

The programs for A022884, the canonical program `A022884.P12664025452067953784` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022884 has offset 1).

The definition of A022884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022884.P3349858823763302406

`A000720(A022885(n+1))`
-/

namespace A022884.P3349858823763302406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022885 (n + 1)).toNat

end

end A022884.P3349858823763302406

namespace A022884

/-- `A000720(A022885(n+1))` -/
def P3349858823763302406.Spec : Prop :=
  ∀ n, P3349858823763302406.a n = A022884 (n + 1)

end A022884

/-! ## A022884.P12664025452067953784

`eq[A001223(n+1), A001223(n+3)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022884

/-- `eq[A001223(n+1), A001223(n+3)]+1` -/
def P12664025452067953784.Spec : Prop :=
  ∀ n, (P12664025452067953784.a n : ℤ) = A022884 (n + 1)

theorem P12664025452067953784.correct : P12664025452067953784.Spec := by
  intro n
  simp only [A022884, Nat.add_sub_cancel]

end A022884

/-! ## A022884.P8016685175742059754

`eq[0, Δ[A159461(n+1)]]`
-/

namespace A022884.P8016685175742059754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022884.P8016685175742059754

namespace A022884

/-- `eq[0, Δ[A159461(n+1)]]` -/
def P8016685175742059754.Spec : Prop :=
  ∀ n, (P8016685175742059754.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P17271983783362283628

`lt[A261470(n+1)², 1]+1`
-/

namespace A022884.P17271983783362283628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022884.P17271983783362283628

namespace A022884

/-- `lt[A261470(n+1)², 1]+1` -/
def P17271983783362283628.Spec : Prop :=
  ∀ n, (P17271983783362283628.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P789441799410344422

`eq[A031131(n+1), A075527(n)]`
-/

namespace A022884.P789441799410344422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P789441799410344422

namespace A022884

/-- `eq[A031131(n+1), A075527(n)]` -/
def P789441799410344422.Spec : Prop :=
  ∀ n, (P789441799410344422.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P12005352630758085910

`eq[A075527(n+1), A075527(n)]`
-/

namespace A022884.P12005352630758085910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P12005352630758085910

namespace A022884

/-- `eq[A075527(n+1), A075527(n)]` -/
def P12005352630758085910.Spec : Prop :=
  ∀ n, (P12005352630758085910.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P9989220145843506566

`eq[A048852(n), A205955(n+1)]`
-/

namespace A022884.P9989220145843506566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P9989220145843506566

namespace A022884

/-- `eq[A048852(n), A205955(n+1)]` -/
def P9989220145843506566.Spec : Prop :=
  ∀ n, (P9989220145843506566.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P5724543953783799616

`eq[A008578(n+1), A096379(n+1)]`
-/

namespace A022884.P5724543953783799616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P5724543953783799616

namespace A022884

/-- `eq[A008578(n+1), A096379(n+1)]` -/
def P5724543953783799616.Spec : Prop :=
  ∀ n, (P5724543953783799616.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P9397560759642674985

`eq[A096379(n+1), A175787(n+1)]`
-/

namespace A022884.P9397560759642674985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P9397560759642674985

namespace A022884

/-- `eq[A096379(n+1), A175787(n+1)]` -/
def P9397560759642674985.Spec : Prop :=
  ∀ n, (P9397560759642674985.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P18072761921489122623

`eq[A001223(n+1), A375087(n+1)]`
-/

namespace A022884.P18072761921489122623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P18072761921489122623

namespace A022884

/-- `eq[A001223(n+1), A375087(n+1)]` -/
def P18072761921489122623.Spec : Prop :=
  ∀ n, (P18072761921489122623.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P11446943690717870598

`eq[A001223(n+2), A125266(n+1)]`
-/

namespace A022884.P11446943690717870598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P11446943690717870598

namespace A022884

/-- `eq[A001223(n+2), A125266(n+1)]` -/
def P11446943690717870598.Spec : Prop :=
  ∀ n, (P11446943690717870598.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P6270955482459297095

`eq[A046930(n+2), A159461(n+1)]`
-/

namespace A022884.P6270955482459297095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P6270955482459297095

namespace A022884

/-- `eq[A046930(n+2), A159461(n+1)]` -/
def P6270955482459297095.Spec : Prop :=
  ∀ n, (P6270955482459297095.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P666175893902357128

`eq[A159461(n+1), A159461(n+2)]`
-/

namespace A022884.P666175893902357128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P666175893902357128

namespace A022884

/-- `eq[A159461(n+1), A159461(n+2)]` -/
def P666175893902357128.Spec : Prop :=
  ∀ n, (P666175893902357128.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P16861358246870179258

`eq[A076368(n+1), A076368(n+3)]`
-/

namespace A022884.P16861358246870179258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P16861358246870179258

namespace A022884

/-- `eq[A076368(n+1), A076368(n+3)]` -/
def P16861358246870179258.Spec : Prop :=
  ∀ n, (P16861358246870179258.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P4307585201800066619

`eq[Δ[A008578(n+1)], A001223(n+2)]`
-/

namespace A022884.P4307585201800066619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A022884.P4307585201800066619

namespace A022884

/-- `eq[Δ[A008578(n+1)], A001223(n+2)]` -/
def P4307585201800066619.Spec : Prop :=
  ∀ n, (P4307585201800066619.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P3110756690629650146

`eq[A135732(n+1)+1, A054541(n+1)]`
-/

namespace A022884.P3110756690629650146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P3110756690629650146

namespace A022884

/-- `eq[A135732(n+1)+1, A054541(n+1)]` -/
def P3110756690629650146.Spec : Prop :=
  ∀ n, (P3110756690629650146.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P14823372944470733897

`eq[A031131(n+2), A031131(n+1)]+1`
-/

namespace A022884.P14823372944470733897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A022884.P14823372944470733897

namespace A022884

/-- `eq[A031131(n+2), A031131(n+1)]+1` -/
def P14823372944470733897.Spec : Prop :=
  ∀ n, (P14823372944470733897.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P13418883346393414782

`eq[A083550(n+2), A083550(n+1)]+1`
-/

namespace A022884.P13418883346393414782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083550 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A022884.P13418883346393414782

namespace A022884

/-- `eq[A083550(n+2), A083550(n+1)]+1` -/
def P13418883346393414782.Spec : Prop :=
  ∀ n, (P13418883346393414782.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P15472671727081834501

`eq[A001223(n+2), A001223(A028310(n))]`
-/

namespace A022884.P15472671727081834501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P15472671727081834501

namespace A022884

/-- `eq[A001223(n+2), A001223(A028310(n))]` -/
def P15472671727081834501.Spec : Prop :=
  ∀ n, (P15472671727081834501.a n : ℤ) = A022884 (n + 1)

end A022884

/-! ## A022884.P7077878998988657645

`eq[A054541(n+1), A054541(A326178(n+2))]`
-/

namespace A022884.P7077878998988657645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A326178 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022884.P7077878998988657645

namespace A022884

/-- `eq[A054541(n+1), A054541(A326178(n+2))]` -/
def P7077878998988657645.Spec : Prop :=
  ∀ n, (P7077878998988657645.a n : ℤ) = A022884 (n + 1)

end A022884

/-!
# A022885: Primes p=prime(k) such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

The programs for A022885, the canonical program `A022885.P9407388956969530620` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022885 has offset 1).

The definition of A022885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022884, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022885.P9407388956969530620

`A000040(A022884(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022885

/-- `A000040(A022884(n+1))` -/
def P9407388956969530620.Spec : Prop :=
  ∀ n, P9407388956969530620.a n = A022885 (n + 1)

theorem P9407388956969530620.correct : P9407388956969530620.Spec := by
  intro n
  simp only [A022885, Nat.add_sub_cancel]

end A022885

/-! ## A022885.P4348636723322318591

`A008578(A022884(n+1)+1)`
-/

namespace A022885.P4348636723322318591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022884 (n + 1) + 1).toNat

end

end A022885.P4348636723322318591

namespace A022885

/-- `A008578(A022884(n+1)+1)` -/
def P4348636723322318591.Spec : Prop :=
  ∀ n, P4348636723322318591.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P13012530452229988734

`A065091(A022884(n+1)-1)`
-/

namespace A022885.P13012530452229988734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A022884 (n + 1) - 1).toNat

end

end A022885.P13012530452229988734

namespace A022885

/-- `A065091(A022884(n+1)-1)` -/
def P13012530452229988734.Spec : Prop :=
  ∀ n, P13012530452229988734.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P14852749156139212577

`A045344(lt[A261470(n+1)², 1])`
-/

namespace A022885.P14852749156139212577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A022885.P14852749156139212577

namespace A022885

/-- `A045344(lt[A261470(n+1)², 1])` -/
def P14852749156139212577.Spec : Prop :=
  ∀ n, P14852749156139212577.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P14137337206519429898

`A065091(lt[A261470(n+1)², 1])`
-/

namespace A022885.P14137337206519429898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A022885.P14137337206519429898

namespace A022885

/-- `A065091(lt[A261470(n+1)², 1])` -/
def P14137337206519429898.Spec : Prop :=
  ∀ n, P14137337206519429898.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P16500523030931132012

`A065091(eq[1, A261470(n+1)+1])`
-/

namespace A022885.P16500523030931132012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022885.P16500523030931132012

namespace A022885

/-- `A065091(eq[1, A261470(n+1)+1])` -/
def P16500523030931132012.Spec : Prop :=
  ∀ n, P16500523030931132012.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P11790270987275036225

`A000040(eq[A008578(n+1), A096379(n+1)])`
-/

namespace A022885.P11790270987275036225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022885.P11790270987275036225

namespace A022885

/-- `A000040(eq[A008578(n+1), A096379(n+1)])` -/
def P11790270987275036225.Spec : Prop :=
  ∀ n, P11790270987275036225.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P7122638975129463133

`A000040(eq[A159461(n+1), A159461(n+2)])`
-/

namespace A022885.P7122638975129463133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022885.P7122638975129463133

namespace A022885

/-- `A000040(eq[A159461(n+1), A159461(n+2)])` -/
def P7122638975129463133.Spec : Prop :=
  ∀ n, P7122638975129463133.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P16737893258993086753

`A065091(eq[A001223(n+1), A001223(n+3)])`
-/

namespace A022885.P16737893258993086753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022885.P16737893258993086753

namespace A022885

/-- `A065091(eq[A001223(n+1), A001223(n+3)])` -/
def P16737893258993086753.Spec : Prop :=
  ∀ n, P16737893258993086753.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P12213180154946100208

`A000040(eq[A076368(n+1), A076368(n+3)])`
-/

namespace A022885.P12213180154946100208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022885.P12213180154946100208

namespace A022885

/-- `A000040(eq[A076368(n+1), A076368(n+3)])` -/
def P12213180154946100208.Spec : Prop :=
  ∀ n, P12213180154946100208.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P9474831054029759400

`A008578(eq[A008578(n+1), A096379(n+1)]+1)`
-/

namespace A022885.P9474831054029759400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022885.P9474831054029759400

namespace A022885

/-- `A008578(eq[A008578(n+1), A096379(n+1)]+1)` -/
def P9474831054029759400.Spec : Prop :=
  ∀ n, P9474831054029759400.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P5633821237349716784

`A096379(eq[A096379(n+1), A175787(n+1)]+1)`
-/

namespace A022885.P5633821237349716784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022885.P5633821237349716784

namespace A022885

/-- `A096379(eq[A096379(n+1), A175787(n+1)]+1)` -/
def P5633821237349716784.Spec : Prop :=
  ∀ n, P5633821237349716784.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P5436091893183105685

`A000040(eq[A031131(n+2), A031131(n+1)]+1)`
-/

namespace A022885.P5436091893183105685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022885.P5436091893183105685

namespace A022885

/-- `A000040(eq[A031131(n+2), A031131(n+1)]+1)` -/
def P5436091893183105685.Spec : Prop :=
  ∀ n, P5436091893183105685.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P6766115992019764119

`A000040(eq[A001223(n+3), A001223(n+1)]+1)`
-/

namespace A022885.P6766115992019764119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022885.P6766115992019764119

namespace A022885

/-- `A000040(eq[A001223(n+3), A001223(n+1)]+1)` -/
def P6766115992019764119.Spec : Prop :=
  ∀ n, P6766115992019764119.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P1703897379243986215

`A151799(A373299(n+1))`
-/

namespace A022885.P1703897379243986215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A373299 (n + 1)).toNat

end

end A022885.P1703897379243986215

namespace A022885

/-- `A151799(A373299(n+1))` -/
def P1703897379243986215.Spec : Prop :=
  ∀ n, P1703897379243986215.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P9133442899844993048

`p?[(A261470(n+1)+1)*A000040(n+1)]`
-/

namespace A022885.P9133442899844993048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A261470 (n + 1) + 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022885.P9133442899844993048

namespace A022885

/-- `p?[(A261470(n+1)+1)*A000040(n+1)]` -/
def P9133442899844993048.Spec : Prop :=
  ∀ n, P9133442899844993048.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P17945988976824649937

`A033302(A263674(n+1))`
-/

namespace A022885.P17945988976824649937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A263674 (n + 1)).toNat

end

end A022885.P17945988976824649937

namespace A022885

/-- `A033302(A263674(n+1))` -/
def P17945988976824649937.Spec : Prop :=
  ∀ n, P17945988976824649937.a n = A022885 (n + 1)

end A022885

/-! ## A022885.P6685756827398195254

`A064989(A373299(n+1))`
-/

namespace A022885.P6685756827398195254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A373299 (n + 1)).toNat

end

end A022885.P6685756827398195254

namespace A022885

/-- `A064989(A373299(n+1))` -/
def P6685756827398195254.Spec : Prop :=
  ∀ n, P6685756827398195254.a n = A022885 (n + 1)

end A022885

/-!
# A022886: n-th index k such that p(k) + p(k+4) = p(k+1) + p(k+3).

The programs for A022886, the canonical program `A022886.P11950636231150900985` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022886 has offset 1).

The definition of A022886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022886.P7023162454384082679

`eq[A075527(n), A136612(n+1)]`
-/

namespace A022886.P7023162454384082679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022886.P7023162454384082679

namespace A022886

/-- `eq[A075527(n), A136612(n+1)]` -/
def P7023162454384082679.Spec : Prop :=
  ∀ n, (P7023162454384082679.a n : ℤ) = A022886 (n + 1)

end A022886

/-! ## A022886.P17780254120219894764

`eq[Δ[A028815(n)], A054541(n+4)]`
-/

namespace A022886.P17780254120219894764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A022886.P17780254120219894764

namespace A022886

/-- `eq[Δ[A028815(n)], A054541(n+4)]` -/
def P17780254120219894764.Spec : Prop :=
  ∀ n, (P17780254120219894764.a n : ℤ) = A022886 (n + 1)

end A022886

/-! ## A022886.P11950636231150900985

`eq[A076368(n+1), A076368(n+4)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A022886

/-- `eq[A076368(n+1), A076368(n+4)]` -/
def P11950636231150900985.Spec : Prop :=
  ∀ n, (P11950636231150900985.a n : ℤ) = A022886 (n + 1)

theorem P11950636231150900985.correct : P11950636231150900985.Spec := by
  intro n
  simp only [A022886, Nat.add_sub_cancel]

end A022886

/-! ## A022886.P16370488553987650795

`eq[Δ[A008578(n+1)], A054541(n+4)]`
-/

namespace A022886.P16370488553987650795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A022886.P16370488553987650795

namespace A022886

/-- `eq[Δ[A008578(n+1)], A054541(n+4)]` -/
def P16370488553987650795.Spec : Prop :=
  ∀ n, (P16370488553987650795.a n : ℤ) = A022886 (n + 1)

end A022886

/-! ## A022886.P18196333388281401080

`eq[A093667(n+2), A181428(A028310(n))]`
-/

namespace A022886.P18196333388281401080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022886.P18196333388281401080

namespace A022886

/-- `eq[A093667(n+2), A181428(A028310(n))]` -/
def P18196333388281401080.Spec : Prop :=
  ∀ n, (P18196333388281401080.a n : ℤ) = A022886 (n + 1)

end A022886

/-! ## A022886.P412236287914646134

`A000720(A022887(n+1))`
-/

namespace A022886.P412236287914646134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022887 (n + 1)).toNat

end

end A022886.P412236287914646134

namespace A022886

/-- `A000720(A022887(n+1))` -/
def P412236287914646134.Spec : Prop :=
  ∀ n, P412236287914646134.a n = A022886 (n + 1)

end A022886

/-! ## A022886.P7367833146623265273

`A061395(A227064(n+1))-2`
-/

namespace A022886.P7367833146623265273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A227064 (n + 1)).toNat - 2

end

end A022886.P7367833146623265273

namespace A022886

/-- `A061395(A227064(n+1))-2` -/
def P7367833146623265273.Spec : Prop :=
  ∀ n, P7367833146623265273.a n = A022886 (n + 1)

end A022886

/-! ## A022886.P7442715110947706357

`A061395(2*A022887(n+1))`
-/

namespace A022886.P7442715110947706357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A022887 (n + 1)).toNat

end

end A022886.P7442715110947706357

namespace A022886

/-- `A061395(2*A022887(n+1))` -/
def P7442715110947706357.Spec : Prop :=
  ∀ n, P7442715110947706357.a n = A022886 (n + 1)

end A022886

/-! ## A022886.P8226665467227754145

`A061395(A022887(n+1)+A022887(n+1))`
-/

namespace A022886.P8226665467227754145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A022887 (n + 1) + A022887 (n + 1)).toNat

end

end A022886.P8226665467227754145

namespace A022886

/-- `A061395(A022887(n+1)+A022887(n+1))` -/
def P8226665467227754145.Spec : Prop :=
  ∀ n, P8226665467227754145.a n = A022886 (n + 1)

end A022886

/-! ## A022886.P6044309762241670000

`A082513(A227064(n+1))`
-/

namespace A022886.P6044309762241670000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A227064 (n + 1)).toNat

end

end A022886.P6044309762241670000

namespace A022886

/-- `A082513(A227064(n+1))` -/
def P6044309762241670000.Spec : Prop :=
  ∀ n, P6044309762241670000.a n = A022886 (n + 1)

end A022886

/-!
# A022887: n-th prime p(k) such that p(k) + p(k+4) = p(k+1) + p(k+3).

The programs for A022887, the canonical program `A022887.P6127104275096827440` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022887 has offset 1).

The definition of A022887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022886, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022887.P6127104275096827440

`A000040(A022886(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A022887

/-- `A000040(A022886(n+1))` -/
def P6127104275096827440.Spec : Prop :=
  ∀ n, P6127104275096827440.a n = A022887 (n + 1)

theorem P6127104275096827440.correct : P6127104275096827440.Spec := by
  intro n
  simp only [A022887, Nat.add_sub_cancel]

end A022887

/-! ## A022887.P5854528550500135822

`A008578(A022886(n+1)+1)`
-/

namespace A022887.P5854528550500135822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022886 (n + 1) + 1).toNat

end

end A022887.P5854528550500135822

namespace A022887

/-- `A008578(A022886(n+1)+1)` -/
def P5854528550500135822.Spec : Prop :=
  ∀ n, P5854528550500135822.a n = A022887 (n + 1)

end A022887

/-! ## A022887.P8736607649014146589

`A065091(A022886(n+1)-1)`
-/

namespace A022887.P8736607649014146589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A022886 (n + 1) - 1).toNat

end

end A022887.P8736607649014146589

namespace A022887

/-- `A065091(A022886(n+1)-1)` -/
def P8736607649014146589.Spec : Prop :=
  ∀ n, P8736607649014146589.a n = A022887 (n + 1)

end A022887

/-! ## A022887.P12313583743636382478

`A065091(eq[A001223(n+1), A001223(n+4)])`
-/

namespace A022887.P12313583743636382478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022887.P12313583743636382478

namespace A022887

/-- `A065091(eq[A001223(n+1), A001223(n+4)])` -/
def P12313583743636382478.Spec : Prop :=
  ∀ n, P12313583743636382478.a n = A022887 (n + 1)

end A022887

/-! ## A022887.P7273279302737030591

`A000040(eq[A076368(n+1), A076368(n+4)])`
-/

namespace A022887.P7273279302737030591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022887.P7273279302737030591

namespace A022887

/-- `A000040(eq[A076368(n+1), A076368(n+4)])` -/
def P7273279302737030591.Spec : Prop :=
  ∀ n, P7273279302737030591.a n = A022887 (n + 1)

end A022887

/-! ## A022887.P11791268090346472885

`A006093(A022886(n+1)+A000007(n+2))+1`
-/

namespace A022887.P11791268090346472885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A022886 (n + 1) + A000007 (n + 2)).toNat + 1

end

end A022887.P11791268090346472885

namespace A022887

/-- `A006093(A022886(n+1)+A000007(n+2))+1` -/
def P11791268090346472885.Spec : Prop :=
  ∀ n, P11791268090346472885.a n = A022887 (n + 1)

theorem P11791268090346472885.correct : P11791268090346472885.Spec := by
  intro n
  simp only [A022887, Nat.add_sub_cancel, A022887.P11791268090346472885.a, A022887.P6127104275096827440.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A022886, A022886.P11950636231150900985.f1, A022886.P11950636231150900985.f2, A022886.P11950636231150900985.a, A076368, A076368.P2146344704707354385.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022887

/-! ## A022887.P18047467277355209055

`A000040(eq[A001223(n+4), A001223(n+1)]+1)`
-/

namespace A022887.P18047467277355209055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022887.P18047467277355209055

namespace A022887

/-- `A000040(eq[A001223(n+4), A001223(n+1)]+1)` -/
def P18047467277355209055.Spec : Prop :=
  ∀ n, P18047467277355209055.a n = A022887 (n + 1)

end A022887

/-! ## A022887.P12313189026223968410

`A000040(eq[A046933(n+4), A046933(n+1)]+1)`
-/

namespace A022887.P12313189026223968410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022887.P12313189026223968410

namespace A022887

/-- `A000040(eq[A046933(n+4), A046933(n+1)]+1)` -/
def P12313189026223968410.Spec : Prop :=
  ∀ n, P12313189026223968410.a n = A022887 (n + 1)

end A022887

/-! ## A022887.P9255491463103497263

`A033302(A227064(n+1))`
-/

namespace A022887.P9255491463103497263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A227064 (n + 1)).toNat

end

end A022887.P9255491463103497263

namespace A022887

/-- `A033302(A227064(n+1))` -/
def P9255491463103497263.Spec : Prop :=
  ∀ n, P9255491463103497263.a n = A022887 (n + 1)

end A022887

/-!
# A022888: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

The programs for A022888, the canonical program `A022888.P5027841816580517114` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022888 has offset 1).

The definition of A022888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022888.P5027841816580517114

`eq[A054541(n+1), A054541(n+5)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022888

/-- `eq[A054541(n+1), A054541(n+5)]` -/
def P5027841816580517114.Spec : Prop :=
  ∀ n, (P5027841816580517114.a n : ℤ) = A022888 (n + 1)

theorem P5027841816580517114.correct : P5027841816580517114.Spec := by
  intro n
  simp only [A022888, Nat.add_sub_cancel]

end A022888

/-! ## A022888.P2879265006035982950

`eq[A076368(n+1), A076368(n+5)]`
-/

namespace A022888.P2879265006035982950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022888.P2879265006035982950

namespace A022888

/-- `eq[A076368(n+1), A076368(n+5)]` -/
def P2879265006035982950.Spec : Prop :=
  ∀ n, (P2879265006035982950.a n : ℤ) = A022888 (n + 1)

end A022888

/-! ## A022888.P12752536790151076786

`eq[A031166(n+2), A031166(n+1)]+1`
-/

namespace A022888.P12752536790151076786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A022888.P12752536790151076786

namespace A022888

/-- `eq[A031166(n+2), A031166(n+1)]+1` -/
def P12752536790151076786.Spec : Prop :=
  ∀ n, (P12752536790151076786.a n : ℤ) = A022888 (n + 1)

end A022888

/-! ## A022888.P9191024124359826526

`A000720(A022889(n+1))`
-/

namespace A022888.P9191024124359826526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022889 (n + 1)).toNat

end

end A022888.P9191024124359826526

namespace A022888

/-- `A000720(A022889(n+1))` -/
def P9191024124359826526.Spec : Prop :=
  ∀ n, P9191024124359826526.a n = A022888 (n + 1)

end A022888

/-! ## A022888.P3373778922063719650

`A061395(2*A022889(n+1))`
-/

namespace A022888.P3373778922063719650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A022889 (n + 1)).toNat

end

end A022888.P3373778922063719650

namespace A022888

/-- `A061395(2*A022889(n+1))` -/
def P3373778922063719650.Spec : Prop :=
  ∀ n, P3373778922063719650.a n = A022888 (n + 1)

end A022888

/-! ## A022888.P3892055088143290532

`A026238(A022889(n+1)%A022889(n+1)²)`
-/

namespace A022888.P3892055088143290532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (Int.tmod (A022889 (n + 1)) (A022889 (n + 1) ^ 2)).toNat

end

end A022888.P3892055088143290532

namespace A022888

/-- `A026238(A022889(n+1)%A022889(n+1)²)` -/
def P3892055088143290532.Spec : Prop :=
  ∀ n, P3892055088143290532.a n = A022888 (n + 1)

end A022888

/-! ## A022888.P1524715449593878738

`A026238(A022889(n+1))%A000040(A241265(n+1))`
-/

namespace A022888.P1524715449593878738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026238 (A022889 (n + 1)).toNat) (A000040 (A241265 (n + 1)).toNat)

end

end A022888.P1524715449593878738

namespace A022888

/-- `A026238(A022889(n+1))%A000040(A241265(n+1))` -/
def P1524715449593878738.Spec : Prop :=
  ∀ n, P1524715449593878738.a n = A022888 (n + 1)

end A022888

/-!
# A022889: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

The programs for A022889, the canonical program `A022889.P12192786364687872859` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022889 has offset 1).

The definition of A022889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022889.P12192786364687872859

`A000040(A022888(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A022889

/-- `A000040(A022888(n+1))` -/
def P12192786364687872859.Spec : Prop :=
  ∀ n, P12192786364687872859.a n = A022889 (n + 1)

theorem P12192786364687872859.correct : P12192786364687872859.Spec := by
  intro n
  simp only [A022889, Nat.add_sub_cancel]

end A022889

/-! ## A022889.P8034294250156313384

`A065091(A022888(n+1)-1)`
-/

namespace A022889.P8034294250156313384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A022888 (n + 1) - 1).toNat

end

end A022889.P8034294250156313384

namespace A022889

/-- `A065091(A022888(n+1)-1)` -/
def P8034294250156313384.Spec : Prop :=
  ∀ n, P8034294250156313384.a n = A022889 (n + 1)

end A022889

/-! ## A022889.P13857149076742960216

`A333122(n+1)-A157996(A022888(n+1))`
-/

namespace A022889.P13857149076742960216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333122 (n + 1) - A157996 (A022888 (n + 1)).toNat

end

end A022889.P13857149076742960216

namespace A022889

/-- `A333122(n+1)-A157996(A022888(n+1))` -/
def P13857149076742960216.Spec : Prop :=
  ∀ n, P13857149076742960216.a n = A022889 (n + 1)

theorem P13857149076742960216.correct : P13857149076742960216.Spec := by
  intro n
  simp only [A022889, Nat.add_sub_cancel, A022889.P13857149076742960216.a, A022889.P12192786364687872859.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A022888, A022888.P5027841816580517114.f1, A022888.P5027841816580517114.f2, A022888.P5027841816580517114.a, A157996, A157996.P15374079906564399415.f1, A157996.P15374079906564399415.f2, A157996.P15374079906564399415.a, A333122, A333122.P5461417936121362507.a, A049593, A049593.P11643952065115088752.f1, A049593.P11643952065115088752.a, A054541, A054541.P347795157194570387.a, A067833, A067833.P2986960847933786226.f1, A067833.P2986960847933786226.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, A071904, A071904.P6554188440157640390.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022889

/-! ## A022889.P8311118728473612017

`A000040(eq[A054541(n+1), A054541(n+5)])`
-/

namespace A022889.P8311118728473612017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022889.P8311118728473612017

namespace A022889

/-- `A000040(eq[A054541(n+1), A054541(n+5)])` -/
def P8311118728473612017.Spec : Prop :=
  ∀ n, P8311118728473612017.a n = A022889 (n + 1)

end A022889

/-! ## A022889.P7067711902040120577

`A000040(eq[A076368(n+1), A076368(n+5)])`
-/

namespace A022889.P7067711902040120577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022889.P7067711902040120577

namespace A022889

/-- `A000040(eq[A076368(n+1), A076368(n+5)])` -/
def P7067711902040120577.Spec : Prop :=
  ∀ n, P7067711902040120577.a n = A022889 (n + 1)

end A022889

/-! ## A022889.P6647970910010261349

`A000040(eq[A031166(n+2), A031166(n+1)]+1)`
-/

namespace A022889.P6647970910010261349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022889.P6647970910010261349

namespace A022889

/-- `A000040(eq[A031166(n+2), A031166(n+1)]+1)` -/
def P6647970910010261349.Spec : Prop :=
  ∀ n, P6647970910010261349.a n = A022889 (n + 1)

end A022889

/-! ## A022889.P4679766254563532490

`A000040(eq[A001223(n+5), A001223(n+1)]+1)`
-/

namespace A022889.P4679766254563532490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022889.P4679766254563532490

namespace A022889

/-- `A000040(eq[A001223(n+5), A001223(n+1)]+1)` -/
def P4679766254563532490.Spec : Prop :=
  ∀ n, P4679766254563532490.a n = A022889 (n + 1)

end A022889

/-! ## A022889.P8907573113878068478

`A073846(2*A022888(n+1))`
-/

namespace A022889.P8907573113878068478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A022888 (n + 1)).toNat

end

end A022889.P8907573113878068478

namespace A022889

/-- `A073846(2*A022888(n+1))` -/
def P8907573113878068478.Spec : Prop :=
  ∀ n, P8907573113878068478.a n = A022889 (n + 1)

end A022889

/-! ## A022889.P12333483323782115258

`A134735(eq[A134735(n+1), A134735(n+9)])`
-/

namespace A022889.P12333483323782115258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022889.P12333483323782115258

namespace A022889

/-- `A134735(eq[A134735(n+1), A134735(n+9)])` -/
def P12333483323782115258.Spec : Prop :=
  ∀ n, P12333483323782115258.a n = A022889 (n + 1)

end A022889

/-!
# A022890: n-th index k such that p(k) + p(k+6) = p(k+2) + p(k+4).

The programs for A022890, the canonical program `A022890.P17059555627055075678` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022890 has offset 1).

The definition of A022890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022890.P17059555627055075678

`eq[A046930(n+1), A046930(n+5)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022890

/-- `eq[A046930(n+1), A046930(n+5)]` -/
def P17059555627055075678.Spec : Prop :=
  ∀ n, (P17059555627055075678.a n : ℤ) = A022890 (n + 1)

theorem P17059555627055075678.correct : P17059555627055075678.Spec := by
  intro n
  simp only [A022890, Nat.add_sub_cancel]

end A022890

/-! ## A022890.P11884083248613236081

`eq[A115061(n+5), A162345(n+1)]`
-/

namespace A022890.P11884083248613236081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022890.P11884083248613236081

namespace A022890

/-- `eq[A115061(n+5), A162345(n+1)]` -/
def P11884083248613236081.Spec : Prop :=
  ∀ n, (P11884083248613236081.a n : ℤ) = A022890 (n + 1)

end A022890

/-! ## A022890.P13778886485160840713

`eq[A159461(n+1), A159461(n+5)]`
-/

namespace A022890.P13778886485160840713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022890.P13778886485160840713

namespace A022890

/-- `eq[A159461(n+1), A159461(n+5)]` -/
def P13778886485160840713.Spec : Prop :=
  ∀ n, (P13778886485160840713.a n : ℤ) = A022890 (n + 1)

end A022890

/-! ## A022890.P5229684298213986612

`eq[A162345(n+5), A162345(n+1)]`
-/

namespace A022890.P5229684298213986612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022890.P5229684298213986612

namespace A022890

/-- `eq[A162345(n+5), A162345(n+1)]` -/
def P5229684298213986612.Spec : Prop :=
  ∀ n, (P5229684298213986612.a n : ℤ) = A022890 (n + 1)

end A022890

/-! ## A022890.P5221681124346488362

`A000720(A022891(n+1))`
-/

namespace A022890.P5221681124346488362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022891 (n + 1)).toNat

end

end A022890.P5221681124346488362

namespace A022890

/-- `A000720(A022891(n+1))` -/
def P5221681124346488362.Spec : Prop :=
  ∀ n, P5221681124346488362.a n = A022890 (n + 1)

end A022890

/-! ## A022890.P12656757608695137296

`A061395(2*A022891(n+1))`
-/

namespace A022890.P12656757608695137296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A022891 (n + 1)).toNat

end

end A022890.P12656757608695137296

namespace A022890

/-- `A061395(2*A022891(n+1))` -/
def P12656757608695137296.Spec : Prop :=
  ∀ n, P12656757608695137296.a n = A022890 (n + 1)

end A022890

/-! ## A022890.P8893627876391779659

`A316431(2*A022891(n+1))`
-/

namespace A022890.P8893627876391779659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A022891 (n + 1)).toNat

end

end A022890.P8893627876391779659

namespace A022890

/-- `A316431(2*A022891(n+1))` -/
def P8893627876391779659.Spec : Prop :=
  ∀ n, P8893627876391779659.a n = A022890 (n + 1)

end A022890

/-!
# A022891: n-th prime p(k) such that p(k) + p(k+6) = p(k+2) + p(k+4).

The programs for A022891, the canonical program `A022891.P5018532674174448617` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022891 has offset 1).

The definition of A022891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022890, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022891.P5018532674174448617

`A000040(A022890(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022891

/-- `A000040(A022890(n+1))` -/
def P5018532674174448617.Spec : Prop :=
  ∀ n, P5018532674174448617.a n = A022891 (n + 1)

theorem P5018532674174448617.correct : P5018532674174448617.Spec := by
  intro n
  simp only [A022891, Nat.add_sub_cancel]

end A022891

/-! ## A022891.P1319604792756138381

`A008578(A022890(n+1)+1)`
-/

namespace A022891.P1319604792756138381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022890 (n + 1) + 1).toNat

end

end A022891.P1319604792756138381

namespace A022891

/-- `A008578(A022890(n+1)+1)` -/
def P1319604792756138381.Spec : Prop :=
  ∀ n, P1319604792756138381.a n = A022891 (n + 1)

end A022891

/-! ## A022891.P15394304099144444689

`A045344(A022890(1+n)-1)`
-/

namespace A022891.P15394304099144444689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A022890 (1 + n) - 1).toNat

end

end A022891.P15394304099144444689

namespace A022891

/-- `A045344(A022890(1+n)-1)` -/
def P15394304099144444689.Spec : Prop :=
  ∀ n, P15394304099144444689.a n = A022891 (n + 1)

end A022891

/-! ## A022891.P10267342900899796652

`A000040(eq[A046930(n+1), A046930(n+5)])`
-/

namespace A022891.P10267342900899796652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022891.P10267342900899796652

namespace A022891

/-- `A000040(eq[A046930(n+1), A046930(n+5)])` -/
def P10267342900899796652.Spec : Prop :=
  ∀ n, P10267342900899796652.a n = A022891 (n + 1)

end A022891

/-! ## A022891.P10937799461032311123

`A000040(eq[A031131(n+5), A031131(n+1)]+1)`
-/

namespace A022891.P10937799461032311123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022891.P10937799461032311123

namespace A022891

/-- `A000040(eq[A031131(n+5), A031131(n+1)]+1)` -/
def P10937799461032311123.Spec : Prop :=
  ∀ n, P10937799461032311123.a n = A022891 (n + 1)

end A022891

/-! ## A022891.P9249453854617695475

`A008578(eq[A115061(n+5), A162345(n+1)]+1)`
-/

namespace A022891.P9249453854617695475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022891.P9249453854617695475

namespace A022891

/-- `A008578(eq[A115061(n+5), A162345(n+1)]+1)` -/
def P9249453854617695475.Spec : Prop :=
  ∀ n, P9249453854617695475.a n = A022891 (n + 1)

end A022891

/-! ## A022891.P8477243841304545680

`A008578(eq[A162345(n+5), A162345(n+1)]+1)`
-/

namespace A022891.P8477243841304545680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A022891.P8477243841304545680

namespace A022891

/-- `A008578(eq[A162345(n+5), A162345(n+1)]+1)` -/
def P8477243841304545680.Spec : Prop :=
  ∀ n, P8477243841304545680.a n = A022891 (n + 1)

end A022891

/-!
# A022892: n-th index k such that p(k) + p(k+9) = p(k+3) + p(k+6).

The programs for A022892, there is no canonical definition to state claims against.
-/

/-! ## A022892.P2750080999363790152

`A000720(A022893(n+1))`
-/

namespace A022892.P2750080999363790152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022893 (n + 1)).toNat

end

end A022892.P2750080999363790152

/-! ## A022892.P13288175918590740904

`∑{d}[A022893(n+1), A061395(#)]`
-/

namespace A022892.P13288175918590740904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A022892.P13288175918590740904

/-! ## A022892.P17854293478127032625

`A061395(lcm(2, A022893(n+1))/2)`
-/

namespace A022892.P17854293478127032625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((Int.lcm 2 (A022893 (n + 1)) : ℚ) / 2)).toNat

end

end A022892.P17854293478127032625

/-! ## A022892.P15412835417364311966

`A061395(2*A022893(n+1))`
-/

namespace A022892.P15412835417364311966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A022893 (n + 1)).toNat

end

end A022892.P15412835417364311966

/-! ## A022892.P2179116884640941713

`A061395(lcm(2, A022893(n+1)))`
-/

namespace A022892.P2179116884640941713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A022893 (n + 1)))

end

end A022892.P2179116884640941713

/-! ## A022892.P9450389160806334400

`∑{d}[A022893(n+1), A055396(#)]`
-/

namespace A022892.P9450389160806334400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A022892.P9450389160806334400

/-!
# A022893: n-th prime p(k) such that p(k) + p(k+9) = p(k+3) + p(k+6).

The programs for A022893, there is no canonical definition to state claims against.
-/

/-! ## A022893.P12117670101938567817

`A000040(A022892(n+1))`
-/

namespace A022893.P12117670101938567817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022892 (n + 1)).toNat

end

end A022893.P12117670101938567817

/-! ## A022893.P6240509958711202381

`A065091(A022892(n+1)-1)`
-/

namespace A022893.P6240509958711202381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A022892 (n + 1) - 1).toNat

end

end A022893.P6240509958711202381

/-! ## A022893.P833634722623111940

`A004139(A022892(n+1)-2)`
-/

namespace A022893.P833634722623111940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A022892 (n + 1) - 2).toNat

end

end A022893.P833634722623111940

/-! ## A022893.P5744996665237948794

`A008578(A022892(n+1)+1)`
-/

namespace A022893.P5744996665237948794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022892 (n + 1) + 1).toNat

end

end A022893.P5744996665237948794

/-! ## A022893.P13673739225628699410

`A082500(2*A022892(n+1))`
-/

namespace A022893.P13673739225628699410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A022892 (n + 1)).toNat

end

end A022893.P13673739225628699410

/-!
# A022894: Number of solutions to c(1)*prime(1) +...+ c(2n+1)*prime(2n+1) = 0, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A022894, there is no canonical definition to state claims against.
-/

/-! ## A022894.P15760761219836029296

`A306443(Δ[n²])`
-/

namespace A022894.P15760761219836029296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A022894.P15760761219836029296

/-! ## A022894.P1534464699534802094

`A350404(Δ[n²])/2`
-/

namespace A022894.P1534464699534802094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A022894.P1534464699534802094

/-! ## A022894.P16305504544093108093

`floor(A350404(2*n+1)/2)`
-/

namespace A022894.P16305504544093108093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350404 (2 * n + 1) : ℚ) / 2⌋

end

end A022894.P16305504544093108093

/-! ## A022894.P1588745696185754561

`xor(1, xor(1, A306443(2*n+1)))`
-/

namespace A022894.P1588745696185754561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A306443 (2 * n + 1)))

end

end A022894.P1588745696185754561

/-! ## A022894.P12056558160197704430

`A306443(2*n+1)+A000007(n+2)`
-/

namespace A022894.P12056558160197704430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * n + 1) + A000007 (n + 2)

end

end A022894.P12056558160197704430

/-! ## A022894.P8831163814228107734

`A306443(2*n+1)+A022904(2*(n+1))`
-/

namespace A022894.P8831163814228107734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * n + 1) + A022904 (2 * (n + 1))

end

end A022894.P8831163814228107734

/-! ## A022894.P11253389705564392139

`A306443(2*n+1)+A022920(2*n+1)`
-/

namespace A022894.P11253389705564392139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * n + 1) + A022920 (2 * n + 1)

end

end A022894.P11253389705564392139

/-! ## A022894.P1864371751735052004

`A350404(2*n+1)-A306443(2*n+1)`
-/

namespace A022894.P1864371751735052004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350404 (2 * n + 1) - A306443 (2 * n + 1)

end

end A022894.P1864371751735052004

/-! ## A022894.P2474409255507400145

`A306443(2*n+1)+A215036(2*n+3)`
-/

namespace A022894.P2474409255507400145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * n + 1) + A215036 (2 * n + 3)

end

end A022894.P2474409255507400145

/-! ## A022894.P1009246205485667486

`A306443(n+1+n)/A038548(A000040(n+1))`
-/

namespace A022894.P1009246205485667486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306443 (n + 1 + n) : ℚ) / (A038548 (A000040 (n + 1)).toNat : ℚ)

end

end A022894.P1009246205485667486

/-! ## A022894.P14522674616141660987

`gcd(A008611(n+1)*A306443(2*n+1), A306443(2*n+1))`
-/

namespace A022894.P14522674616141660987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 (n + 1) * A306443 (2 * n + 1)) (A306443 (2 * n + 1))

end

end A022894.P14522674616141660987

/-! ## A022894.P10886864145667949710

`A008619(2*n+1)*A306443(2*n+1)/(n+1)`
-/

namespace A022894.P10886864145667949710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n + 1) * A306443 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A022894.P10886864145667949710

/-! ## A022894.P12773707266254998021

`A306443(A005408(n))%A280853(n+1)`
-/

namespace A022894.P12773707266254998021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306443 (A005408 n).toNat) (A280853 (n + 1))

end

end A022894.P12773707266254998021

/-!
# A022895: Number of solutions to c(1)*prime(1) + ... + c(n)*prime(n) = 1, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A022895, there is no canonical definition to state claims against.
-/

/-! ## A022895.P16583288092960193246

`Δ[A255120(A208355(n+1))]`
-/

namespace A022895.P16583288092960193246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255120 (A208355 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022895.P16583288092960193246

/-! ## A022895.P12399662679672598065

`A012265(Δ[A000108(floor(n/2))])`
-/

namespace A022895.P12399662679672598065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (f1 (n + 1) - f1 n).toNat

end

end A022895.P12399662679672598065

/-! ## A022895.P12382435967205665546

`A068599(n+1)%A023890(n+1)`
-/

namespace A022895.P12382435967205665546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068599 (n + 1)) (A023890 (n + 1))

end

end A022895.P12382435967205665546

/-! ## A022895.P10095161021556203178

`C(A066520(A052542(n)), A040649(n))`
-/

namespace A022895.P10095161021556203178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066520 (A052542 n).toNat).toNat (A040649 n).toNat

end

end A022895.P10095161021556203178

/-! ## A022895.P14169049506374010815

`and(A233867(A005316(n)), A281521(n))`
-/

namespace A022895.P14169049506374010815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233867 (A005316 n).toNat) (A281521 n)

end

end A022895.P14169049506374010815

/-!
# A022896: Number of solutions to c(1)*prime(1) + ... + c(n)*prime(n) = 2, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A022896, there is no canonical definition to state claims against.
-/

/-! ## A022896.P5702035823285144797

`A005843(A022897(or(n, a(n-1))))` with `a(0)=1`
-/

namespace A022896.P5702035823285144797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A022897 (Int.lor (n : ℤ) (a (n - 1))).toNat).toNat

end

end A022896.P5702035823285144797

/-!
# A022897: Number of solutions to c(1)*prime(2) +...+ c(n)*prime(n+1) = 0, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A022897, there is no canonical definition to state claims against.
-/

/-! ## A022897.P16669926895521600879

`A083309(gcd(n+1, ∑[n%2]))`
-/

namespace A022897.P16669926895521600879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A022897.P16669926895521600879

/-! ## A022897.P12324622884784712695

`A083309(A152271(n))`
-/

namespace A022897.P12324622884784712695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (A152271 n).toNat

end

end A022897.P12324622884784712695

/-! ## A022897.P6305670540160957620

`A083309(A133265(n)/2)`
-/

namespace A022897.P6305670540160957620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A022897.P6305670540160957620

/-! ## A022897.P12951637632491950137

`A083309(gcd(n+1, A008619(n)))`
-/

namespace A022897.P12951637632491950137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A022897.P12951637632491950137

/-! ## A022897.P2635001886842316681

`A083309(gcd(A065033(n), A153152(n)))`
-/

namespace A022897.P2635001886842316681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (Int.gcd (A065033 n) (A153152 n))

end

end A022897.P2635001886842316681

/-! ## A022897.P2616459309535198633

`A083309(gcd(A008619(n)², A000217(n)))`
-/

namespace A022897.P2616459309535198633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A022897.P2616459309535198633

/-! ## A022897.P3371570952754301051

`A083309(gcd(A065033(2*n+1), A065033(n+1)))`
-/

namespace A022897.P3371570952754301051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (Int.gcd (A065033 (2 * n + 1)) (A065033 (n + 1)))

end

end A022897.P3371570952754301051

/-! ## A022897.P8388174507116248584

`A022896(n+2)/2`
-/

namespace A022897.P8388174507116248584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022896 (n + 2) : ℚ) / 2

end

end A022897.P8388174507116248584

/-! ## A022897.P9358251241945047639

`∑{d}[n+1, A083309(#)*A084928((n+1)/#)]`
-/

namespace A022897.P9358251241945047639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083309 d * A084928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A022897.P9358251241945047639

/-! ## A022897.P11039300486987878137

`∑{d}[n+1, A063524(#-1)*A083309((n+1)/#)]`
-/

namespace A022897.P11039300486987878137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A083309 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A022897.P11039300486987878137

/-! ## A022897.P15221352796694116039

`∑{d}[n+1, A083309(#)*A178333((n+1)/#-1)]`
-/

namespace A022897.P15221352796694116039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083309 d * A178333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A022897.P15221352796694116039

/-!
# A022899: Number of solutions to c(1)*prime(2) + ... + c(n)*prime(n+1) = 2, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A022899, there is no canonical definition to state claims against.
-/

/-! ## A022899.P6463403022059090612

`A022894(A152271(n))-A261059(A152271(n))`
-/

namespace A022899.P6463403022059090612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022894 (A152271 n).toNat - A261059 (A152271 n).toNat

end

end A022899.P6463403022059090612

