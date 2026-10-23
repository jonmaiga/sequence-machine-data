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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A120501: Meta-Fibonacci sequence a(n) with parameters s=2.

The programs for A120501, the canonical program `A120501.P9346078378770248660` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120501 has offset 1).

The definition of A120501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120501.P9346078378770248660

`a(n-2-a(n-1))+a(n-3-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120501

/-- `a(n-2-a(n-1))+a(n-3-a(n-2))` -/
def P9346078378770248660.Spec : Prop :=
  ∀ n, (P9346078378770248660.a n : ℤ) = A120501 (n + 1)

theorem P9346078378770248660.correct : P9346078378770248660.Spec := by
  intro n
  simp only [A120501, Nat.add_sub_cancel]

end A120501

/-! ## A120501.P18324711086124552900

`∑[char[a(floor(n/2))+2+n]]` with `a(0)=0`
-/

namespace A120501.P18324711086124552900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120501.P18324711086124552900

namespace A120501

/-- `∑[char[a(floor(n/2))+2+n]]` -/
def P18324711086124552900.Spec : Prop :=
  ∀ n, (P18324711086124552900.a n : ℤ) = A120501 (n + 1)

end A120501

/-! ## A120501.P2207202237179729354

`∑[char[a(ceil(n/2))+n+1]]` with `a(0)=0, a(1)=0`
-/

namespace A120501.P2207202237179729354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 ⌈(n : ℚ) / 2⌉.toNat + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120501.P2207202237179729354

namespace A120501

/-- `∑[char[a(ceil(n/2))+n+1]]` -/
def P2207202237179729354.Spec : Prop :=
  ∀ n, (P2207202237179729354.a n : ℤ) = A120501 (n + 1)

end A120501

/-! ## A120501.P18324568515418294352

`∑[char[2-(n-2*n-a(floor(n/2)))]]` with `a(0)=0`
-/

namespace A120501.P18324568515418294352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - ((n : ℤ) - (2 * n : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120501.P18324568515418294352

namespace A120501

/-- `∑[char[2-(n-2*n-a(floor(n/2)))]]` -/
def P18324568515418294352.Spec : Prop :=
  ∀ n, (P18324568515418294352.a n : ℤ) = A120501 (n + 1)

end A120501

/-! ## A120501.P2875296581766850701

`∑[A120523(n+1)]`
-/

namespace A120501.P2875296581766850701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120501.P2875296581766850701

namespace A120501

/-- `∑[A120523(n+1)]` -/
def P2875296581766850701.Spec : Prop :=
  ∀ n, P2875296581766850701.a n = A120501 (n + 1)

end A120501

/-! ## A120501.P6962894949355218276

`∑[char[A061313(n+1)-2+n]]`
-/

namespace A120501.P6962894949355218276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1) - 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120501.P6962894949355218276

namespace A120501

/-- `∑[char[A061313(n+1)-2+n]]` -/
def P6962894949355218276.Spec : Prop :=
  ∀ n, (P6962894949355218276.a n : ℤ) = A120501 (n + 1)

end A120501

/-! ## A120501.P13934906501476067183

`A006949(n+1-∑[char[∑[2^n+1]]])`
-/

namespace A120501.P13934906501476067183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120501.P13934906501476067183

namespace A120501

/-- `A006949(n+1-∑[char[∑[2^n+1]]])` -/
def P13934906501476067183.Spec : Prop :=
  ∀ n, P13934906501476067183.a n = A120501 (n + 1)

end A120501

/-! ## A120501.P12373032855860956430

`A006949(A247983(n+1))%A000040(n+1)`
-/

namespace A120501.P12373032855860956430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006949 (A247983 (n + 1)).toNat) (A000040 (n + 1))

end

end A120501.P12373032855860956430

namespace A120501

/-- `A006949(A247983(n+1))%A000040(n+1)` -/
def P12373032855860956430.Spec : Prop :=
  ∀ n, P12373032855860956430.a n = A120501 (n + 1)

end A120501

/-!
# A120502: Meta-Fibonacci sequence a(n) with parameters s=3.

The programs for A120502, the canonical program `A120502.P6872841747368752748` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120502 has offset 1).

The definition of A120502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120502.P6872841747368752748

`a(n-3-a(n-1))+a(n-4-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120502

/-- `a(n-3-a(n-1))+a(n-4-a(n-2))` -/
def P6872841747368752748.Spec : Prop :=
  ∀ n, (P6872841747368752748.a n : ℤ) = A120502 (n + 1)

theorem P6872841747368752748.correct : P6872841747368752748.Spec := by
  intro n
  simp only [A120502, Nat.add_sub_cancel]

end A120502

/-! ## A120502.P9246840462082818758

`∑[char[a(floor(n/2))+3+n]]` with `a(0)=0`
-/

namespace A120502.P9246840462082818758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + 3 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120502.P9246840462082818758

namespace A120502

/-- `∑[char[a(floor(n/2))+3+n]]` -/
def P9246840462082818758.Spec : Prop :=
  ∀ n, (P9246840462082818758.a n : ℤ) = A120502 (n + 1)

end A120502

/-! ## A120502.P4343794418969443025

`∑[char[a(round(n/2))+n+2]]` with `a(0)=0, a(1)=0`
-/

namespace A120502.P4343794418969443025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120502.P4343794418969443025

namespace A120502

/-- `∑[char[a(round(n/2))+n+2]]` -/
def P4343794418969443025.Spec : Prop :=
  ∀ n, (P4343794418969443025.a n : ℤ) = A120502 (n + 1)

end A120502

/-! ## A120502.P8472312918777413527

`∑[A120524(n+1)]`
-/

namespace A120502.P8472312918777413527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120502.P8472312918777413527

namespace A120502

/-- `∑[A120524(n+1)]` -/
def P8472312918777413527.Spec : Prop :=
  ∀ n, P8472312918777413527.a n = A120502 (n + 1)

end A120502

/-! ## A120502.P8223624973431093287

`A030451(2*a(n-1)-A120524(n+1))` with `a(0)=1`
-/

namespace A120502.P8223624973431093287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030451 (2 * a (n - 1) - A120524 (n + 1)).toNat

end

end A120502.P8223624973431093287

namespace A120502

/-- `A030451(2*a(n-1)-A120524(n+1))` -/
def P8223624973431093287.Spec : Prop :=
  ∀ n, P8223624973431093287.a n = A120502 (n + 1)

end A120502

/-! ## A120502.P3102803639239182957

`char[A023443(A120513(n+1))]+a(n-1)` with `a(0)=1`
-/

namespace A120502.P3102803639239182957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A120513 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A120502.P3102803639239182957

namespace A120502

/-- `char[A023443(A120513(n+1))]+a(n-1)` -/
def P3102803639239182957.Spec : Prop :=
  ∀ n, (P3102803639239182957.a n : ℤ) = A120502 (n + 1)

end A120502

/-! ## A120502.P1675046633113406843

`a(n-1)+A014963(6*(n+1))*A120524(n+1)` with `a(0)=1`
-/

namespace A120502.P1675046633113406843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (6 * (n + 1)) * A120524 (n + 1)

end

end A120502.P1675046633113406843

namespace A120502

/-- `a(n-1)+A014963(6*(n+1))*A120524(n+1)` -/
def P1675046633113406843.Spec : Prop :=
  ∀ n, P1675046633113406843.a n = A120502 (n + 1)

end A120502

/-!
# A120503: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=3.

The programs for A120503, the canonical program `A120503.P17912308022700772714` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120503 has offset 1).

The definition of A120503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120503.P7701126029979034059

`a(n-a(n-1))+a(n-1-a(n-2))+a(n-2-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A120503.P7701126029979034059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - a (n - 1)) + a ((n : ℤ) - 1 - (a (n - 2) : ℤ)).toNat + a ((n : ℤ) - 2 - (a (n - 3) : ℤ)).toNat

end

end A120503.P7701126029979034059

namespace A120503

/-- `a(n-a(n-1))+a(n-1-a(n-2))+a(n-2-a(n-3))` -/
def P7701126029979034059.Spec : Prop :=
  ∀ n, (P7701126029979034059.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P17912308022700772714

`A007844(n+1)/3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120503

/-- `A007844(n+1)/3` -/
def P17912308022700772714.Spec : Prop :=
  ∀ n, P17912308022700772714.a n = (A120503 (n + 1) : ℚ)

end A120503

/-! ## A120503.P13133673563569355145

`∑[char[a(floor(n/3))+n]]` with `a(0)=0`
-/

namespace A120503.P13133673563569355145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P13133673563569355145

namespace A120503

/-- `∑[char[a(floor(n/3))+n]]` -/
def P13133673563569355145.Spec : Prop :=
  ∀ n, (P13133673563569355145.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P3851753407026083226

`∑[char[∑[val(12*(n+1), 3)]]]+1`
-/

namespace A120503.P3851753407026083226
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (12 * (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120503.P3851753407026083226

namespace A120503

/-- `∑[char[∑[val(12*(n+1), 3)]]]+1` -/
def P3851753407026083226.Spec : Prop :=
  ∀ n, (P3851753407026083226.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P13079227570804680585

`(comp[a(n-1)+val(n, 3)]-n)/3` with `a(0)=0`
-/

namespace A120503.P13079227570804680585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) / 3

end

end A120503.P13079227570804680585

namespace A120503

/-- `(comp[a(n-1)+val(n, 3)]-n)/3` -/
def P13079227570804680585.Spec : Prop :=
  ∀ n, P13079227570804680585.a n = (A120503 (n + 1) : ℚ)

end A120503

/-! ## A120503.P8112601446539114523

`∑[char[A004128(n)]]`
-/

namespace A120503.P8112601446539114523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P8112601446539114523

namespace A120503

/-- `∑[char[A004128(n)]]` -/
def P8112601446539114523.Spec : Prop :=
  ∀ n, (P8112601446539114523.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P4923871187507009144

`∑[A120525(n+1)]`
-/

namespace A120503.P4923871187507009144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P4923871187507009144

namespace A120503

/-- `∑[A120525(n+1)]` -/
def P4923871187507009144.Spec : Prop :=
  ∀ n, P4923871187507009144.a n = A120503 (n + 1)

end A120503

/-! ## A120503.P2498388815317175573

`Δ[A029714(n)/3]`
-/

namespace A120503.P2498388815317175573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029714 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120503.P2498388815317175573

namespace A120503

/-- `Δ[A029714(n)/3]` -/
def P2498388815317175573.Spec : Prop :=
  ∀ n, P2498388815317175573.a n = (A120503 (n + 1) : ℚ)

end A120503

/-! ## A120503.P15663524518086865759

`(A096346(n)-n)/3`
-/

namespace A120503.P15663524518086865759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096346 n - (n : ℤ) : ℚ) / 3

end

end A120503.P15663524518086865759

namespace A120503

/-- `(A096346(n)-n)/3` -/
def P15663524518086865759.Spec : Prop :=
  ∀ n, P15663524518086865759.a n = (A120503 (n + 1) : ℚ)

end A120503

/-! ## A120503.P1169810662567786717

`∑[char[A054861(n)+n]]`
-/

namespace A120503.P1169810662567786717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P1169810662567786717

namespace A120503

/-- `∑[char[A054861(n)+n]]` -/
def P1169810662567786717.Spec : Prop :=
  ∀ n, (P1169810662567786717.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P15797971927013076971

`∑[char[n-A089643(n)]]`
-/

namespace A120503.P15797971927013076971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089643 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P15797971927013076971

namespace A120503

/-- `∑[char[n-A089643(n)]]` -/
def P15797971927013076971.Spec : Prop :=
  ∀ n, (P15797971927013076971.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P6669456388557536562

`(A080579(n+2)-(n+2))/3`
-/

namespace A120503.P6669456388557536562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080579 (n + 2) - (n + 2 : ℤ) : ℚ) / 3

end

end A120503.P6669456388557536562

namespace A120503

/-- `(A080579(n+2)-(n+2))/3` -/
def P6669456388557536562.Spec : Prop :=
  ∀ n, P6669456388557536562.a n = (A120503 (n + 1) : ℚ)

end A120503

/-! ## A120503.P6959272308311422173

`∑[A001221(Δ[A080579(n+1)])]`
-/

namespace A120503.P6959272308311422173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P6959272308311422173

namespace A120503

/-- `∑[A001221(Δ[A080579(n+1)])]` -/
def P6959272308311422173.Spec : Prop :=
  ∀ n, P6959272308311422173.a n = A120503 (n + 1)

end A120503

/-! ## A120503.P8873498407735006845

`∑[char[∑[val(n+1, 3)]]]`
-/

namespace A120503.P8873498407735006845
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P8873498407735006845

namespace A120503

/-- `∑[char[∑[val(n+1, 3)]]]` -/
def P8873498407735006845.Spec : Prop :=
  ∀ n, (P8873498407735006845.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P17523791194823278177

`∑[char[A054861(n)]]`
-/

namespace A120503.P17523791194823278177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120503.P17523791194823278177

namespace A120503

/-- `∑[char[A054861(n)]]` -/
def P17523791194823278177.Spec : Prop :=
  ∀ n, (P17523791194823278177.a n : ℤ) = A120503 (n + 1)

end A120503

/-! ## A120503.P10116318407362274445

`A002264(A007844(n+1))`
-/

namespace A120503.P10116318407362274445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007844 (n + 1)).toNat

end

end A120503.P10116318407362274445

namespace A120503

/-- `A002264(A007844(n+1))` -/
def P10116318407362274445.Spec : Prop :=
  ∀ n, P10116318407362274445.a n = A120503 (n + 1)

end A120503

/-! ## A120503.P3922400252020764594

`A010764(2*A007844(n+1))`
-/

namespace A120503.P3922400252020764594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (2 * A007844 (n + 1)).toNat

end

end A120503.P3922400252020764594

namespace A120503

/-- `A010764(2*A007844(n+1))` -/
def P3922400252020764594.Spec : Prop :=
  ∀ n, P3922400252020764594.a n = A120503 (n + 1)

end A120503

/-!
# A120504: Generalized meta-Fibonacci sequence a(n) with parameters s=1 and k=3.

The programs for A120504, the canonical program `A120504.P2685696681273904309` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120504 has offset 1).

The definition of A120504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120504.P2685696681273904309

`a(n-1-a(n-1))+a(n-2-a(n-2))+a(n-3-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120504

/-- `a(n-1-a(n-1))+a(n-2-a(n-2))+a(n-3-a(n-3))` -/
def P2685696681273904309.Spec : Prop :=
  ∀ n, (P2685696681273904309.a n : ℤ) = A120504 (n + 1)

theorem P2685696681273904309.correct : P2685696681273904309.Spec := by
  intro n
  simp only [A120504, Nat.add_sub_cancel]

end A120504

/-! ## A120504.P18177050085307413360

`∑[char[a(ceil(n/3))+n]]` with `a(0)=0, a(1)=0`
-/

namespace A120504.P18177050085307413360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 ⌈(n : ℚ) / 3⌉.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120504.P18177050085307413360

namespace A120504

/-- `∑[char[a(ceil(n/3))+n]]` -/
def P18177050085307413360.Spec : Prop :=
  ∀ n, (P18177050085307413360.a n : ℤ) = A120504 (n + 1)

end A120504

/-! ## A120504.P10965331587804045376

`∑[char[a(floor(n/3))+1+n]]` with `a(0)=0`
-/

namespace A120504.P10965331587804045376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120504.P10965331587804045376

namespace A120504

/-- `∑[char[a(floor(n/3))+1+n]]` -/
def P10965331587804045376.Spec : Prop :=
  ∀ n, (P10965331587804045376.a n : ℤ) = A120504 (n + 1)

end A120504

/-! ## A120504.P15593580311232793089

`∑[A120526(n+1)]`
-/

namespace A120504.P15593580311232793089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120504.P15593580311232793089

namespace A120504

/-- `∑[A120526(n+1)]` -/
def P15593580311232793089.Spec : Prop :=
  ∀ n, P15593580311232793089.a n = A120504 (n + 1)

end A120504

/-! ## A120504.P10646559371667654934

`A120526(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A120504.P10646559371667654934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120526 (n + 1) + a (A023443 n).toNat

end

end A120504.P10646559371667654934

namespace A120504

/-- `A120526(n+1)+a(A023443(n))` -/
def P10646559371667654934.Spec : Prop :=
  ∀ n, P10646559371667654934.a n = A120504 (n + 1)

end A120504

/-! ## A120504.P7949170500815513743

`∑[char[A080342(n+1)+A004128(n)]]`
-/

namespace A120504.P7949170500815513743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) + A004128 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120504.P7949170500815513743

namespace A120504

/-- `∑[char[A080342(n+1)+A004128(n)]]` -/
def P7949170500815513743.Spec : Prop :=
  ∀ n, (P7949170500815513743.a n : ℤ) = A120504 (n + 1)

end A120504

/-! ## A120504.P640105514451226985

`A000027(∑[A120526(1-(n-2*n))])`
-/

namespace A120504.P640105514451226985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120526 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120504.P640105514451226985

namespace A120504

/-- `A000027(∑[A120526(1-(n-2*n))])` -/
def P640105514451226985.Spec : Prop :=
  ∀ n, P640105514451226985.a n = A120504 (n + 1)

end A120504

/-! ## A120504.P14307015320617810685

`∑[A120525(A274601(n+1))]`
-/

namespace A120504.P14307015320617810685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (A274601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120504.P14307015320617810685

namespace A120504

/-- `∑[A120525(A274601(n+1))]` -/
def P14307015320617810685.Spec : Prop :=
  ∀ n, P14307015320617810685.a n = A120504 (n + 1)

end A120504

/-!
# A120505: Generalized meta-Fibonacci sequence a(n) with parameters s=2 and k=3.

The programs for A120505, the canonical program `A120505.P15657914442966059658` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120505 has offset 1).

The definition of A120505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120505.P15657914442966059658

`a(n-2-a(n-1))+a(n-3-a(n-2))+a(n-4-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120505

/-- `a(n-2-a(n-1))+a(n-3-a(n-2))+a(n-4-a(n-3))` -/
def P15657914442966059658.Spec : Prop :=
  ∀ n, (P15657914442966059658.a n : ℤ) = A120505 (n + 1)

theorem P15657914442966059658.correct : P15657914442966059658.Spec := by
  intro n
  simp only [A120505, Nat.add_sub_cancel]

end A120505

/-! ## A120505.P12576408708672995187

`∑[char[a(floor(n/3))+2+n]]` with `a(0)=0`
-/

namespace A120505.P12576408708672995187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120505.P12576408708672995187

namespace A120505

/-- `∑[char[a(floor(n/3))+2+n]]` -/
def P12576408708672995187.Spec : Prop :=
  ∀ n, (P12576408708672995187.a n : ℤ) = A120505 (n + 1)

end A120505

/-! ## A120505.P15794772759654266148

`∑[char[a(ceil(n/3))+n+1]]` with `a(0)=0, a(1)=0`
-/

namespace A120505.P15794772759654266148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 ⌈(n : ℚ) / 3⌉.toNat + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120505.P15794772759654266148

namespace A120505

/-- `∑[char[a(ceil(n/3))+n+1]]` -/
def P15794772759654266148.Spec : Prop :=
  ∀ n, (P15794772759654266148.a n : ℤ) = A120505 (n + 1)

end A120505

/-! ## A120505.P8221423676205875264

`∑[char[2-(n-a(floor(n/3))-2*n)]]` with `a(0)=0`
-/

namespace A120505.P8221423676205875264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - ((n : ℤ) - f2 ⌊(n : ℚ) / 3⌋.toNat - (2 * n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120505.P8221423676205875264

namespace A120505

/-- `∑[char[2-(n-a(floor(n/3))-2*n)]]` -/
def P8221423676205875264.Spec : Prop :=
  ∀ n, (P8221423676205875264.a n : ℤ) = A120505 (n + 1)

end A120505

/-! ## A120505.P1506515877785088254

`∑[A120527(n+1)]`
-/

namespace A120505.P1506515877785088254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120505.P1506515877785088254

namespace A120505

/-- `∑[A120527(n+1)]` -/
def P1506515877785088254.Spec : Prop :=
  ∀ n, P1506515877785088254.a n = A120505 (n + 1)

end A120505

/-! ## A120505.P8322926685521658970

`A120527(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A120505.P8322926685521658970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120527 (n + 1) + a (A023443 n).toNat

end

end A120505.P8322926685521658970

namespace A120505

/-- `A120527(n+1)+a(A023443(n))` -/
def P8322926685521658970.Spec : Prop :=
  ∀ n, P8322926685521658970.a n = A120505 (n + 1)

end A120505

/-!
# A120506: Generalized meta-Fibonacci sequence a(n) with parameters s=3 and k=3.

The programs for A120506, the canonical program `A120506.P3330528048765810285` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120506 has offset 1).

The definition of A120506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120506.P3330528048765810285

`a(n-3-a(n-1))+a(n-4-a(n-2))+a(n-5-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120506

/-- `a(n-3-a(n-1))+a(n-4-a(n-2))+a(n-5-a(n-3))` -/
def P3330528048765810285.Spec : Prop :=
  ∀ n, (P3330528048765810285.a n : ℤ) = A120506 (n + 1)

theorem P3330528048765810285.correct : P3330528048765810285.Spec := by
  intro n
  simp only [A120506, Nat.add_sub_cancel]

end A120506

/-! ## A120506.P1887001334576722388

`∑[char[a(floor(n/3))+3+n]]` with `a(0)=0`
-/

namespace A120506.P1887001334576722388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat + 3 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120506.P1887001334576722388

namespace A120506

/-- `∑[char[a(floor(n/3))+3+n]]` -/
def P1887001334576722388.Spec : Prop :=
  ∀ n, (P1887001334576722388.a n : ℤ) = A120506 (n + 1)

end A120506

/-! ## A120506.P13084402218630015300

`∑[char[a(round((n-1)/3))+n+3]]` with `a(0)=0`
-/

namespace A120506.P13084402218630015300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120506.P13084402218630015300

namespace A120506

/-- `∑[char[a(round((n-1)/3))+n+3]]` -/
def P13084402218630015300.Spec : Prop :=
  ∀ n, (P13084402218630015300.a n : ℤ) = A120506 (n + 1)

end A120506

/-! ## A120506.P7198670791174785370

`∑[A120528(n+1)]`
-/

namespace A120506.P7198670791174785370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120506.P7198670791174785370

namespace A120506

/-- `∑[A120528(n+1)]` -/
def P7198670791174785370.Spec : Prop :=
  ∀ n, P7198670791174785370.a n = A120506 (n + 1)

end A120506

/-! ## A120506.P10343765740359884071

`∑[char[A120517(n+1)-1]]`
-/

namespace A120506.P10343765740359884071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120517 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120506.P10343765740359884071

namespace A120506

/-- `∑[char[A120517(n+1)-1]]` -/
def P10343765740359884071.Spec : Prop :=
  ∀ n, (P10343765740359884071.a n : ℤ) = A120506 (n + 1)

end A120506

/-! ## A120506.P16962563193023079734

`∑[and(1, A120528(Δ[n²]-n))]`
-/

namespace A120506.P16962563193023079734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A120528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120506.P16962563193023079734

namespace A120506

/-- `∑[and(1, A120528(Δ[n²]-n))]` -/
def P16962563193023079734.Spec : Prop :=
  ∀ n, P16962563193023079734.a n = A120506 (n + 1)

end A120506

/-! ## A120506.P9796136986326059479

`A120528(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A120506.P9796136986326059479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120528 (n + 1) + a (A023443 n).toNat

end

end A120506.P9796136986326059479

namespace A120506

/-- `A120528(n+1)+a(A023443(n))` -/
def P9796136986326059479.Spec : Prop :=
  ∀ n, P9796136986326059479.a n = A120506 (n + 1)

end A120506

/-! ## A120506.P6365301820490766979

`∑[A120528(Δ[n²]-n)]%A109725(n)`
-/

namespace A120506.P6365301820490766979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A109725 n)

end

end A120506.P6365301820490766979

namespace A120506

/-- `∑[A120528(Δ[n²]-n)]%A109725(n)` -/
def P6365301820490766979.Spec : Prop :=
  ∀ n, P6365301820490766979.a n = A120506 (n + 1)

end A120506

/-! ## A120506.P2344094624044928580

`gcd(∑[A120528(Δ[n²]-n)], A000038(n))`
-/

namespace A120506.P2344094624044928580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A120506.P2344094624044928580

namespace A120506

/-- `gcd(∑[A120528(Δ[n²]-n)], A000038(n))` -/
def P2344094624044928580.Spec : Prop :=
  ∀ n, (P2344094624044928580.a n : ℤ) = A120506 (n + 1)

end A120506

/-!
# A120507: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=4.

The programs for A120507, the canonical program `A120507.P3816005906722953228` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120507 has offset 1).

The definition of A120507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120507.P3816005906722953228

`∑[char[a(floor(n/4))+n]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120507

/-- `∑[char[a(floor(n/4))+n]]` -/
def P3816005906722953228.Spec : Prop :=
  ∀ n, (P3816005906722953228.a n : ℤ) = A120507 (n + 1)

theorem P3816005906722953228.correct : P3816005906722953228.Spec := by
  intro n
  simp only [A120507, Nat.add_sub_cancel]

end A120507

/-! ## A120507.P17447103864776742733

`∑[char[val(n, 4)-a(n-1)]]` with `a(0)=0`
-/

namespace A120507.P17447103864776742733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120507.P17447103864776742733

namespace A120507

/-- `∑[char[val(n, 4)-a(n-1)]]` -/
def P17447103864776742733.Spec : Prop :=
  ∀ n, (P17447103864776742733.a n : ℤ) = A120507 (n + 1)

end A120507

/-! ## A120507.P7355695407862997909

`∑[char[∑[val(n+1, 4)+1]]]+1`
-/

namespace A120507.P7355695407862997909
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120507.P7355695407862997909

namespace A120507

/-- `∑[char[∑[val(n+1, 4)+1]]]+1` -/
def P7355695407862997909.Spec : Prop :=
  ∀ n, (P7355695407862997909.a n : ℤ) = A120507 (n + 1)

end A120507

/-! ## A120507.P16652846778462455400

`∑[char[A087069(n)]]`
-/

namespace A120507.P16652846778462455400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120507.P16652846778462455400

namespace A120507

/-- `∑[char[A087069(n)]]` -/
def P16652846778462455400.Spec : Prop :=
  ∀ n, (P16652846778462455400.a n : ℤ) = A120507 (n + 1)

end A120507

/-! ## A120507.P7949409436461330092

`∑[A120529(n+1)]`
-/

namespace A120507.P7949409436461330092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120507.P7949409436461330092

namespace A120507

/-- `∑[A120529(n+1)]` -/
def P7949409436461330092.Spec : Prop :=
  ∀ n, P7949409436461330092.a n = A120507 (n + 1)

end A120507

/-! ## A120507.P14330733946833842179

`∑[char[A054893(n)]]`
-/

namespace A120507.P14330733946833842179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120507.P14330733946833842179

namespace A120507

/-- `∑[char[A054893(n)]]` -/
def P14330733946833842179.Spec : Prop :=
  ∀ n, (P14330733946833842179.a n : ℤ) = A120507 (n + 1)

end A120507

/-! ## A120507.P2414291925258465060

`∑[1-A093957(n+1)]`
-/

namespace A120507.P2414291925258465060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A093957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120507.P2414291925258465060

namespace A120507

/-- `∑[1-A093957(n+1)]` -/
def P2414291925258465060.Spec : Prop :=
  ∀ n, P2414291925258465060.a n = A120507 (n + 1)

end A120507

/-!
# A120508: Generalized meta-Fibonacci sequence a(n) with parameters s=1 and k=4.

The programs for A120508, the canonical program `A120508.P11218443486421481509` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120508 has offset 1).

The definition of A120508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120508.P11218443486421481509

`∑[char[a(ceil(n/4))+n]]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120508

/-- `∑[char[a(ceil(n/4))+n]]` -/
def P11218443486421481509.Spec : Prop :=
  ∀ n, (P11218443486421481509.a n : ℤ) = A120508 (n + 1)

theorem P11218443486421481509.correct : P11218443486421481509.Spec := by
  intro n
  simp only [A120508, Nat.add_sub_cancel]

end A120508

/-! ## A120508.P1901338439431166664

`∑[char[a(floor(n/4))+1+n]]` with `a(0)=0`
-/

namespace A120508.P1901338439431166664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120508.P1901338439431166664

namespace A120508

/-- `∑[char[a(floor(n/4))+1+n]]` -/
def P1901338439431166664.Spec : Prop :=
  ∀ n, (P1901338439431166664.a n : ℤ) = A120508 (n + 1)

end A120508

/-! ## A120508.P15834718157640612458

`∑[A120530(n+1)]`
-/

namespace A120508.P15834718157640612458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120508.P15834718157640612458

namespace A120508

/-- `∑[A120530(n+1)]` -/
def P15834718157640612458.Spec : Prop :=
  ∀ n, P15834718157640612458.a n = A120508 (n + 1)

end A120508

/-! ## A120508.P7889085248596294050

`∑[char[A120519(n+1)-1]]`
-/

namespace A120508.P7889085248596294050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120519 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120508.P7889085248596294050

namespace A120508

/-- `∑[char[A120519(n+1)-1]]` -/
def P7889085248596294050.Spec : Prop :=
  ∀ n, (P7889085248596294050.a n : ℤ) = A120508 (n + 1)

end A120508

/-! ## A120508.P12115405994904114179

`∑[char[∑[A263845(A154437(n))]-1]]`
-/

namespace A120508.P12115405994904114179
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (A154437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120508.P12115405994904114179

namespace A120508

/-- `∑[char[∑[A263845(A154437(n))]-1]]` -/
def P12115405994904114179.Spec : Prop :=
  ∀ n, (P12115405994904114179.a n : ℤ) = A120508 (n + 1)

end A120508

/-!
# A120509: Generalized meta-Fibonacci sequence a(n) with parameters s=2 and k=4.

The programs for A120509, the canonical program `A120509.P6210909815249943157` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120509 has offset 1).

The definition of A120509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120509.P6210909815249943157

`∑[char[a(floor(n/4))+2+n]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120509

/-- `∑[char[a(floor(n/4))+2+n]]` -/
def P6210909815249943157.Spec : Prop :=
  ∀ n, (P6210909815249943157.a n : ℤ) = A120509 (n + 1)

theorem P6210909815249943157.correct : P6210909815249943157.Spec := by
  intro n
  simp only [A120509, Nat.add_sub_cancel]

end A120509

/-! ## A120509.P18212508579908526245

`∑[char[a(ceil((n-3)/4))+n+2]]` with `a(0)=0`
-/

namespace A120509.P18212508579908526245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat + (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120509.P18212508579908526245

namespace A120509

/-- `∑[char[a(ceil((n-3)/4))+n+2]]` -/
def P18212508579908526245.Spec : Prop :=
  ∀ n, (P18212508579908526245.a n : ℤ) = A120509 (n + 1)

end A120509

/-! ## A120509.P2060538049641308899

`∑[char[2-(n-a(floor(n/4))-2*n)]]` with `a(0)=0`
-/

namespace A120509.P2060538049641308899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - ((n : ℤ) - f2 ⌊(n : ℚ) / 4⌋.toNat - (2 * n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120509.P2060538049641308899

namespace A120509

/-- `∑[char[2-(n-a(floor(n/4))-2*n)]]` -/
def P2060538049641308899.Spec : Prop :=
  ∀ n, (P2060538049641308899.a n : ℤ) = A120509 (n + 1)

end A120509

/-! ## A120509.P4018532363333275277

`∑[A120531(n+1)]`
-/

namespace A120509.P4018532363333275277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120509.P4018532363333275277

namespace A120509

/-- `∑[A120531(n+1)]` -/
def P4018532363333275277.Spec : Prop :=
  ∀ n, P4018532363333275277.a n = A120509 (n + 1)

end A120509

/-! ## A120509.P5130053363950370588

`∑[and(1, A120531(-xor(n, -1)))]`
-/

namespace A120509.P5130053363950370588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A120531 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120509.P5130053363950370588

namespace A120509

/-- `∑[and(1, A120531(-xor(n, -1)))]` -/
def P5130053363950370588.Spec : Prop :=
  ∀ n, P5130053363950370588.a n = A120509 (n + 1)

end A120509

/-! ## A120509.P5061679332961241878

`∑[char[a(A002265(n))+2+n]]%(n+3)` with `a(0)=0`
-/

namespace A120509.P5061679332961241878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A002265 n).toNat + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3)

end

end A120509.P5061679332961241878

namespace A120509

/-- `∑[char[a(A002265(n))+2+n]]%(n+3)` -/
def P5061679332961241878.Spec : Prop :=
  ∀ n, (P5061679332961241878.a n : ℤ) = A120509 (n + 1)

end A120509

/-!
# A120510: Generalized meta-Fibonacci sequence a(n) with parameters s=3 and k=4.

The programs for A120510, the canonical program `A120510.P5361286741163923458` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120510 has offset 1).

The definition of A120510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120510.P5361286741163923458

`∑[char[a(floor(n/4))+3+n]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120510

/-- `∑[char[a(floor(n/4))+3+n]]` -/
def P5361286741163923458.Spec : Prop :=
  ∀ n, (P5361286741163923458.a n : ℤ) = A120510 (n + 1)

theorem P5361286741163923458.correct : P5361286741163923458.Spec := by
  intro n
  simp only [A120510, Nat.add_sub_cancel]

end A120510

/-! ## A120510.P654939679840548646

`∑[char[a(and(n, -4)/4)+n+3]]` with `a(0)=0`
-/

namespace A120510.P654939679840548646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-4) : ℚ) / 4)).toNat + (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120510.P654939679840548646

namespace A120510

/-- `∑[char[a(and(n, -4)/4)+n+3]]` -/
def P654939679840548646.Spec : Prop :=
  ∀ n, (P654939679840548646.a n : ℤ) = A120510 (n + 1)

end A120510

/-! ## A120510.P8747778285441515678

`∑[char[4*n-(3*(n-1)-a(floor(n/4)))]]` with `a(0)=0`
-/

namespace A120510.P8747778285441515678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (4 * n : ℤ) - (3 * ((n : ℤ) - 1) - f2 ⌊(n : ℚ) / 4⌋.toNat)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120510.P8747778285441515678

namespace A120510

/-- `∑[char[4*n-(3*(n-1)-a(floor(n/4)))]]` -/
def P8747778285441515678.Spec : Prop :=
  ∀ n, (P8747778285441515678.a n : ℤ) = A120510 (n + 1)

end A120510

/-! ## A120510.P12588030294405654667

`∑[A120532(n+1)]`
-/

namespace A120510.P12588030294405654667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120510.P12588030294405654667

namespace A120510

/-- `∑[A120532(n+1)]` -/
def P12588030294405654667.Spec : Prop :=
  ∀ n, P12588030294405654667.a n = A120510 (n + 1)

end A120510

/-! ## A120510.P3722262368440150585

`A065033(or(2*a(n-1), A120532(n+1)))` with `a(0)=1`
-/

namespace A120510.P3722262368440150585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (Int.lor (2 * a (n - 1)) (A120532 (n + 1))).toNat

end

end A120510.P3722262368440150585

namespace A120510

/-- `A065033(or(2*a(n-1), A120532(n+1)))` -/
def P3722262368440150585.Spec : Prop :=
  ∀ n, P3722262368440150585.a n = A120510 (n + 1)

end A120510

/-!
# A120511: a(n) = min{j>0 : A006949(j) = n}.

The programs for A120511, the canonical program `A120511.P18305541968849620912` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120511 has offset 1).

The definition of A120511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120511.P18305541968849620912

`a(ceil((n+1)/2)-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120511

/-- `a(ceil((n+1)/2)-1)+n+1` -/
def P18305541968849620912.Spec : Prop :=
  ∀ n, (P18305541968849620912.a n : ℤ) = A120511 (n + 1)

theorem P18305541968849620912.correct : P18305541968849620912.Spec := by
  intro n
  simp only [A120511, Nat.add_sub_cancel]

end A120511

/-! ## A120511.P17585134659641085027

`A233273(n)-1`
-/

namespace A120511.P17585134659641085027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n - 1

end

end A120511.P17585134659641085027

namespace A120511

/-- `A233273(n)-1` -/
def P17585134659641085027.Spec : Prop :=
  ∀ n, P17585134659641085027.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P857731465609539144

`A005408(n)+A080791(n)`
-/

namespace A120511.P857731465609539144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A080791 n

end

end A120511.P857731465609539144

namespace A120511

/-- `A005408(n)+A080791(n)` -/
def P857731465609539144.Spec : Prop :=
  ∀ n, P857731465609539144.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P2278485627348527135

`2*(n+1)+A080791(n+1)-A007814(n+1)-A036987(n)`
-/

namespace A120511.P2278485627348527135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A080791 (n + 1) - A007814 (n + 1) - A036987 n

end

end A120511.P2278485627348527135

namespace A120511

/-- `2*(n+1)+A080791(n+1)-A007814(n+1)-A036987(n)` -/
def P2278485627348527135.Spec : Prop :=
  ∀ n, P2278485627348527135.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P13047586925630737317

`2*(n+1)-1+A023416(2*(n+1)-1)`
-/

namespace A120511.P13047586925630737317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 + A023416 (2 * (n + 1) - 1)

end

end A120511.P13047586925630737317

namespace A120511

/-- `2*(n+1)-1+A023416(2*(n+1)-1)` -/
def P13047586925630737317.Spec : Prop :=
  ∀ n, P13047586925630737317.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P5498345518988817992

`a(floor(n/2))+1+n` with `a(0)=1`
-/

namespace A120511.P5498345518988817992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + 1 + n

end

end A120511.P5498345518988817992

namespace A120511

/-- `a(floor(n/2))+1+n` -/
def P5498345518988817992.Spec : Prop :=
  ∀ n, (P5498345518988817992.a n : ℤ) = A120511 (n + 1)

end A120511

/-! ## A120511.P1568247288486305979

`2-floor(1-a(floor(n/2))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A120511.P1568247288486305979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (1 - a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))

end

end A120511.P1568247288486305979

namespace A120511

/-- `2-floor(1-a(floor(n/2))-n)` -/
def P1568247288486305979.Spec : Prop :=
  ∀ n, P1568247288486305979.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P9151374526316084875

`∑[val(2*lt[2*n, xor(n, 2*n)], 2)]`
-/

namespace A120511.P9151374526316084875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120511.P9151374526316084875

namespace A120511

/-- `∑[val(2*lt[2*n, xor(n, 2*n)], 2)]` -/
def P9151374526316084875.Spec : Prop :=
  ∀ n, (P9151374526316084875.a n : ℤ) = A120511 (n + 1)

end A120511

/-! ## A120511.P3537901574625109403

`A233272(n)+n`
-/

namespace A120511.P3537901574625109403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n + (n : ℤ)

end

end A120511.P3537901574625109403

namespace A120511

/-- `A233272(n)+n` -/
def P3537901574625109403.Spec : Prop :=
  ∀ n, P3537901574625109403.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P4148845413039595392

`∑[A089263(n)+2]-1`
-/

namespace A120511.P4148845413039595392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A120511.P4148845413039595392

namespace A120511

/-- `∑[A089263(n)+2]-1` -/
def P4148845413039595392.Spec : Prop :=
  ∀ n, P4148845413039595392.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P16090656210817740431

`∑[A089263(2*n)+1]`
-/

namespace A120511.P16090656210817740431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120511.P16090656210817740431

namespace A120511

/-- `∑[A089263(2*n)+1]` -/
def P16090656210817740431.Spec : Prop :=
  ∀ n, P16090656210817740431.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P794299049241848789

`A008687(n+1)+2*n`
-/

namespace A120511.P794299049241848789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) + (2 * n : ℤ)

end

end A120511.P794299049241848789

namespace A120511

/-- `A008687(n+1)+2*n` -/
def P794299049241848789.Spec : Prop :=
  ∀ n, P794299049241848789.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P2778930200994920126

`A135560(n)+a(n-1)` with `a(0)=1`
-/

namespace A120511.P2778930200994920126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135560 n + a (n - 1)

end

end A120511.P2778930200994920126

namespace A120511

/-- `A135560(n)+a(n-1)` -/
def P2778930200994920126.Spec : Prop :=
  ∀ n, P2778930200994920126.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P3963993346725715441

`A241235(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A120511.P3963993346725715441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A241235 n + a (n - 1)

end

end A120511.P3963993346725715441

namespace A120511

/-- `A241235(n)+a(n-1)` -/
def P3963993346725715441.Spec : Prop :=
  ∀ n, P3963993346725715441.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P1156094179400087106

`A290251(2*n+1)+2*n`
-/

namespace A120511.P1156094179400087106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (2 * n + 1) + (2 * n : ℤ)

end

end A120511.P1156094179400087106

namespace A120511

/-- `A290251(2*n+1)+2*n` -/
def P1156094179400087106.Spec : Prop :=
  ∀ n, P1156094179400087106.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P13666819070433909091

`∑[A135560(abs(1-n)+1)]-2`
-/

namespace A120511.P13666819070433909091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A120511.P13666819070433909091

namespace A120511

/-- `∑[A135560(abs(1-n)+1)]-2` -/
def P13666819070433909091.Spec : Prop :=
  ∀ n, P13666819070433909091.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P1303097466875845278

`comp[2*n]-(n-a(A004526(n)))` with `a(0)=1`
-/

namespace A120511.P1303097466875845278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - a (A004526 n).toNat)

end

end A120511.P1303097466875845278

namespace A120511

/-- `comp[2*n]-(n-a(A004526(n)))` -/
def P1303097466875845278.Spec : Prop :=
  ∀ n, P1303097466875845278.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P9187343993083436296

`A070941(n)+A005187(n)`
-/

namespace A120511.P9187343993083436296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n + A005187 n

end

end A120511.P9187343993083436296

namespace A120511

/-- `A070941(n)+A005187(n)` -/
def P9187343993083436296.Spec : Prop :=
  ∀ n, P9187343993083436296.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P2561251445670100001

`A270200(A266977(n))+n`
-/

namespace A120511.P2561251445670100001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270200 (A266977 n).toNat + (n : ℤ)

end

end A120511.P2561251445670100001

namespace A120511

/-- `A270200(A266977(n))+n` -/
def P2561251445670100001.Spec : Prop :=
  ∀ n, P2561251445670100001.a n = A120511 (n + 1)

end A120511

/-! ## A120511.P15414536215274871145

`A101925(n)+A029837(n+1)`
-/

namespace A120511.P15414536215274871145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + A029837 (n + 1)

end

end A120511.P15414536215274871145

namespace A120511

/-- `A101925(n)+A029837(n+1)` -/
def P15414536215274871145.Spec : Prop :=
  ∀ n, P15414536215274871145.a n = A120511 (n + 1)

end A120511

/-!
# A120512: a(n) = min{j : A120501(j) = n}.

The programs for A120512, the canonical program `A120512.P6578331239280746143` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120512 has offset 1).

The definition of A120512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120512.P6578331239280746143

`a(floor(n/2))+2+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120512

/-- `a(floor(n/2))+2+n` -/
def P6578331239280746143.Spec : Prop :=
  ∀ n, (P6578331239280746143.a n : ℤ) = A120512 (n + 1)

theorem P6578331239280746143.correct : P6578331239280746143.Spec := by
  intro n
  simp only [A120512, Nat.add_sub_cancel]

end A120512

/-! ## A120512.P12806146712866998485

`a(ceil((n-1)/2))+n+2` with `a(0)=1`
-/

namespace A120512.P12806146712866998485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + (n + 2)

end

end A120512.P12806146712866998485

namespace A120512

/-- `a(ceil((n-1)/2))+n+2` -/
def P12806146712866998485.Spec : Prop :=
  ∀ n, (P12806146712866998485.a n : ℤ) = A120512 (n + 1)

end A120512

/-! ## A120512.P11745099712026185066

`∑[a(∑[n]%n)+1]+1` with `a(0)=0, a(1)=3`
-/

namespace A120512.P11745099712026185066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120512.P11745099712026185066

namespace A120512

/-- `∑[a(∑[n]%n)+1]+1` -/
def P11745099712026185066.Spec : Prop :=
  ∀ n, (P11745099712026185066.a n : ℤ) = A120512 (n + 1)

end A120512

/-! ## A120512.P2307032264297295680

`abs(a(round((n-1)/2))+n)+2` with `a(0)=1`
-/

namespace A120512.P2307032264297295680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2)).toNat + n + 2

end

end A120512.P2307032264297295680

namespace A120512

/-- `abs(a(round((n-1)/2))+n)+2` -/
def P2307032264297295680.Spec : Prop :=
  ∀ n, (P2307032264297295680.a n : ℤ) = A120512 (n + 1)

end A120512

/-! ## A120512.P15471086964952421368

`1-(xor(n, -1)-a(floor(n/2)))` with `a(0)=1`
-/

namespace A120512.P15471086964952421368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Int.xor (n : ℤ) (-1) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A120512.P15471086964952421368

namespace A120512

/-- `1-(xor(n, -1)-a(floor(n/2)))` -/
def P15471086964952421368.Spec : Prop :=
  ∀ n, P15471086964952421368.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P10533478903533461461

`3-ceil(1-n-a(floor(n/2)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A120512.P10533478903533461461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (1 - (n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A120512.P10533478903533461461

namespace A120512

/-- `3-ceil(1-n-a(floor(n/2)))` -/
def P10533478903533461461.Spec : Prop :=
  ∀ n, P10533478903533461461.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P16872786479048634462

`2*n-(n-2-a(floor(n/2)))` with `a(0)=1`
-/

namespace A120512.P16872786479048634462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 2 - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A120512.P16872786479048634462

namespace A120512

/-- `2*n-(n-2-a(floor(n/2)))` -/
def P16872786479048634462.Spec : Prop :=
  ∀ n, P16872786479048634462.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P15877996863671107072

`A119477(n+1)+2*n`
-/

namespace A120512.P15877996863671107072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1) + (2 * n : ℤ)

end

end A120512.P15877996863671107072

namespace A120512

/-- `A119477(n+1)+2*n` -/
def P15877996863671107072.Spec : Prop :=
  ∀ n, P15877996863671107072.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P16610018397830164699

`A061313(n+1)+Δ[n²]`
-/

namespace A120512.P16610018397830164699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A120512.P16610018397830164699

namespace A120512

/-- `A061313(n+1)+Δ[n²]` -/
def P16610018397830164699.Spec : Prop :=
  ∀ n, P16610018397830164699.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P8466491256099467141

`A120511(n+1)+A029837(n+1)`
-/

namespace A120512.P8466491256099467141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 1) + A029837 (n + 1)

end

end A120512.P8466491256099467141

namespace A120512

/-- `A120511(n+1)+A029837(n+1)` -/
def P8466491256099467141.Spec : Prop :=
  ∀ n, P8466491256099467141.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P3821350219999407257

`A120513(n+1)-A029837(n+1)`
-/

namespace A120512.P3821350219999407257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120513 (n + 1) - A029837 (n + 1)

end

end A120512.P3821350219999407257

namespace A120512

/-- `A120513(n+1)-A029837(n+1)` -/
def P3821350219999407257.Spec : Prop :=
  ∀ n, P3821350219999407257.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P11751428276464221234

`A080791(n)+A233272(n)+A092391(n)`
-/

namespace A120512.P11751428276464221234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + (A233272 n + A092391 n)

end

end A120512.P11751428276464221234

namespace A120512

/-- `A080791(n)+A233272(n)+A092391(n)` -/
def P11751428276464221234.Spec : Prop :=
  ∀ n, P11751428276464221234.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P821978229141747677

`A080804(A120511(n+1))`
-/

namespace A120512.P821978229141747677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (A120511 (n + 1)).toNat

end

end A120512.P821978229141747677

namespace A120512

/-- `A080804(A120511(n+1))` -/
def P821978229141747677.Spec : Prop :=
  ∀ n, P821978229141747677.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P15324769669336145141

`A080804(A008687(n+1)+2*n)`
-/

namespace A120512.P15324769669336145141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (A008687 (n + 1) + (2 * n : ℤ)).toNat

end

end A120512.P15324769669336145141

namespace A120512

/-- `A080804(A008687(n+1)+2*n)` -/
def P15324769669336145141.Spec : Prop :=
  ∀ n, P15324769669336145141.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P17204574765179824234

`A080804(A023416(2*n)+2*n)`
-/

namespace A120512.P17204574765179824234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (A023416 (2 * n) + (2 * n : ℤ)).toNat

end

end A120512.P17204574765179824234

namespace A120512

/-- `A080804(A023416(2*n)+2*n)` -/
def P17204574765179824234.Spec : Prop :=
  ∀ n, P17204574765179824234.a n = A120512 (n + 1)

end A120512

/-! ## A120512.P15910086413633383299

`filter[n+1, A120523(#)]`
-/

namespace A120512.P15910086413633383299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120523 (f1 j) = 1) n)

end

end A120512.P15910086413633383299

namespace A120512

/-- `filter[n+1, A120523(#)]` -/
def P15910086413633383299.Spec : Prop :=
  ∀ n, (P15910086413633383299.a n : ℤ) = A120512 (n + 1)

end A120512

/-! ## A120512.P2731031667347817450

`A070939(A084471(2*n+1))+2*n`
-/

namespace A120512.P2731031667347817450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A084471 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A120512.P2731031667347817450

namespace A120512

/-- `A070939(A084471(2*n+1))+2*n` -/
def P2731031667347817450.Spec : Prop :=
  ∀ n, P2731031667347817450.a n = A120512 (n + 1)

end A120512

/-!
# A120513: a(n) = min{j : A120502(j) = n}.

The programs for A120513, the canonical program `A120513.P547330239157929976` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120513 has offset 1).

The definition of A120513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120513.P547330239157929976

`a(floor(n/2))+3+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120513

/-- `a(floor(n/2))+3+n` -/
def P547330239157929976.Spec : Prop :=
  ∀ n, (P547330239157929976.a n : ℤ) = A120513 (n + 1)

theorem P547330239157929976.correct : P547330239157929976.Spec := by
  intro n
  simp only [A120513, Nat.add_sub_cancel]

end A120513

/-! ## A120513.P12225701030459859038

`a(ceil((n-1)/2))+n+3` with `a(0)=1`
-/

namespace A120513.P12225701030459859038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + (n + 3)

end

end A120513.P12225701030459859038

namespace A120513

/-- `a(ceil((n-1)/2))+n+3` -/
def P12225701030459859038.Spec : Prop :=
  ∀ n, (P12225701030459859038.a n : ℤ) = A120513 (n + 1)

end A120513

/-! ## A120513.P2179691479939867058

`∑[a(∑[n]%n)+1]+1` with `a(0)=0, a(1)=4`
-/

namespace A120513.P2179691479939867058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120513.P2179691479939867058

namespace A120513

/-- `∑[a(∑[n]%n)+1]+1` -/
def P2179691479939867058.Spec : Prop :=
  ∀ n, (P2179691479939867058.a n : ℤ) = A120513 (n + 1)

end A120513

/-! ## A120513.P2095873849270740658

`abs(a(round((n-1)/2))+n+3)` with `a(0)=1`
-/

namespace A120513.P2095873849270740658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2)).toNat + (n + 3)

end

end A120513.P2095873849270740658

namespace A120513

/-- `abs(a(round((n-1)/2))+n+3)` -/
def P2095873849270740658.Spec : Prop :=
  ∀ n, (P2095873849270740658.a n : ℤ) = A120513 (n + 1)

end A120513

/-! ## A120513.P9321306178063862647

`abs(2-(xor(n, -1)-a(floor(n/2))))` with `a(0)=1`
-/

namespace A120513.P9321306178063862647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 - (Int.xor (n : ℤ) (-1) - a ⌊(n : ℚ) / 2⌋.toNat)|

end

end A120513.P9321306178063862647

namespace A120513

/-- `abs(2-(xor(n, -1)-a(floor(n/2))))` -/
def P9321306178063862647.Spec : Prop :=
  ∀ n, P9321306178063862647.a n = A120513 (n + 1)

end A120513

/-! ## A120513.P4103980993332587435

`floor(a(floor(n/2)))-(xor(n, -1)-2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A120513.P4103980993332587435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (Int.xor (n : ℤ) (-1) - 2)

end

end A120513.P4103980993332587435

namespace A120513

/-- `floor(a(floor(n/2)))-(xor(n, -1)-2)` -/
def P4103980993332587435.Spec : Prop :=
  ∀ n, P4103980993332587435.a n = A120513 (n + 1)

end A120513

/-! ## A120513.P12993056708476531398

`round(a(∑[char[2*(n+1)]])+n)+3` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A120513.P12993056708476531398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) + n + 3

end

end A120513.P12993056708476531398

namespace A120513

/-- `round(a(∑[char[2*(n+1)]])+n)+3` -/
def P12993056708476531398.Spec : Prop :=
  ∀ n, (P12993056708476531398.a n : ℤ) = A120513 (n + 1)

end A120513

/-! ## A120513.P7696546722909897027

`floor(a(floor(n/2)))-(n-3-2*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A120513.P7696546722909897027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - ((n : ℤ) - 3 - (2 * n : ℤ))

end

end A120513.P7696546722909897027

namespace A120513

/-- `floor(a(floor(n/2)))-(n-3-2*n)` -/
def P7696546722909897027.Spec : Prop :=
  ∀ n, P7696546722909897027.a n = A120513 (n + 1)

end A120513

/-! ## A120513.P9550317798411636554

`n+3+a(A004526(n))` with `a(0)=1`
-/

namespace A120513.P9550317798411636554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 3 + a (A004526 n).toNat

end

end A120513.P9550317798411636554

namespace A120513

/-- `n+3+a(A004526(n))` -/
def P9550317798411636554.Spec : Prop :=
  ∀ n, (P9550317798411636554.a n : ℤ) = A120513 (n + 1)

end A120513

/-! ## A120513.P12518290239074851239

`A120512(n+1)+A029837(n+1)`
-/

namespace A120513.P12518290239074851239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120512 (n + 1) + A029837 (n + 1)

end

end A120513.P12518290239074851239

namespace A120513

/-- `A120512(n+1)+A029837(n+1)` -/
def P12518290239074851239.Spec : Prop :=
  ∀ n, P12518290239074851239.a n = A120513 (n + 1)

end A120513

/-! ## A120513.P13665607276557373126

`filter[n+1, A120524(#)]`
-/

namespace A120513.P13665607276557373126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120524 (f1 j) = 1) n)

end

end A120513.P13665607276557373126

namespace A120513

/-- `filter[n+1, A120524(#)]` -/
def P13665607276557373126.Spec : Prop :=
  ∀ n, (P13665607276557373126.a n : ℤ) = A120513 (n + 1)

end A120513

/-!
# A120514: a(n) = min{j : A120503(j) = n}.

The programs for A120514, the canonical program `A120514.P6942200439860998094` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120514 has offset 1).

The definition of A120514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120514.P6942200439860998094

`n+a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120514

/-- `n+a(floor(n/3))` -/
def P6942200439860998094.Spec : Prop :=
  ∀ n, (P6942200439860998094.a n : ℤ) = A120514 (n + 1)

theorem P6942200439860998094.correct : P6942200439860998094.Spec := by
  intro n
  simp only [A120514, Nat.add_sub_cancel]

end A120514

/-! ## A120514.P3562264635224400023

`∑[val(floor(2/acot(n)), 3)+1]`
-/

namespace A120514.P3562264635224400023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120514.P3562264635224400023

namespace A120514

/-- `∑[val(floor(2/acot(n)), 3)+1]` -/
def P3562264635224400023.Spec : Prop :=
  ∀ n, (P3562264635224400023.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P16564093887045560550

`∑[val(round(1/acot(n)), 3)+1]`
-/

namespace A120514.P16564093887045560550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))).toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120514.P16564093887045560550

namespace A120514

/-- `∑[val(round(1/acot(n)), 3)+1]` -/
def P16564093887045560550.Spec : Prop :=
  ∀ n, (P16564093887045560550.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P10695282386639258228

`∑[val(3*floor(2/acot(n)), 3)]`
-/

namespace A120514.P10695282386639258228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120514.P10695282386639258228

namespace A120514

/-- `∑[val(3*floor(2/acot(n)), 3)]` -/
def P10695282386639258228.Spec : Prop :=
  ∀ n, (P10695282386639258228.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P16557833392584928657

`∑[val(round(acot(n)+n), 3)+1]`
-/

namespace A120514.P16557833392584928657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120514.P16557833392584928657

namespace A120514

/-- `∑[val(round(acot(n)+n), 3)+1]` -/
def P16557833392584928657.Spec : Prop :=
  ∀ n, (P16557833392584928657.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P2932151984090242857

`∑[val(3*n^floor(atan(n)), 3)]`
-/

namespace A120514.P2932151984090242857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (3 * (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120514.P2932151984090242857

namespace A120514

/-- `∑[val(3*n^floor(atan(n)), 3)]` -/
def P2932151984090242857.Spec : Prop :=
  ∀ n, (P2932151984090242857.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P14139447598124022678

`a(n-1)+val(n, 3)+1` with `a(0)=1`
-/

namespace A120514.P14139447598124022678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 3 + 1

end

end A120514.P14139447598124022678

namespace A120514

/-- `a(n-1)+val(n, 3)+1` -/
def P14139447598124022678.Spec : Prop :=
  ∀ n, (P14139447598124022678.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P4676246972350787083

`∑[val(abs(1-n)+1, 3)+1]`
-/

namespace A120514.P4676246972350787083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120514.P4676246972350787083

namespace A120514

/-- `∑[val(abs(1-n)+1, 3)+1]` -/
def P4676246972350787083.Spec : Prop :=
  ∀ n, (P4676246972350787083.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P15721917010187745028

`A004128(n)+1`
-/

namespace A120514.P15721917010187745028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n + 1

end

end A120514.P15721917010187745028

namespace A120514

/-- `A004128(n)+1` -/
def P15721917010187745028.Spec : Prop :=
  ∀ n, P15721917010187745028.a n = A120514 (n + 1)

end A120514

/-! ## A120514.P6309422663698157974

`A346502(n)/2+1`
-/

namespace A120514.P6309422663698157974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346502 n : ℚ) / 2 + 1

end

end A120514.P6309422663698157974

namespace A120514

/-- `A346502(n)/2+1` -/
def P6309422663698157974.Spec : Prop :=
  ∀ n, P6309422663698157974.a n = (A120514 (n + 1) : ℚ)

end A120514

/-! ## A120514.P13719096366970920079

`A054861(n)+1+n`
-/

namespace A120514.P13719096366970920079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + 1 + (n : ℤ)

end

end A120514.P13719096366970920079

namespace A120514

/-- `A054861(n)+1+n` -/
def P13719096366970920079.Spec : Prop :=
  ∀ n, P13719096366970920079.a n = A120514 (n + 1)

end A120514

/-! ## A120514.P15822594720186851247

`Δ[n²]-A089792(n)`
-/

namespace A120514.P15822594720186851247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A089792 n

end

end A120514.P15822594720186851247

namespace A120514

/-- `Δ[n²]-A089792(n)` -/
def P15822594720186851247.Spec : Prop :=
  ∀ n, P15822594720186851247.a n = A120514 (n + 1)

end A120514

/-! ## A120514.P12406779096593268457

`A344853(n)/2+n+1`
-/

namespace A120514.P12406779096593268457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A120514.P12406779096593268457

namespace A120514

/-- `A344853(n)/2+n+1` -/
def P12406779096593268457.Spec : Prop :=
  ∀ n, P12406779096593268457.a n = (A120514 (n + 1) : ℚ)

end A120514

/-! ## A120514.P6539314518680511932

`filter[n+1, A120525(#)]`
-/

namespace A120514.P6539314518680511932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120525 (f1 j) = 1) n)

end

end A120514.P6539314518680511932

namespace A120514

/-- `filter[n+1, A120525(#)]` -/
def P6539314518680511932.Spec : Prop :=
  ∀ n, (P6539314518680511932.a n : ℤ) = A120514 (n + 1)

end A120514

/-! ## A120514.P14900276882801948021

`A008619(A346502(n))`
-/

namespace A120514.P14900276882801948021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A346502 n).toNat

end

end A120514.P14900276882801948021

namespace A120514

/-- `A008619(A346502(n))` -/
def P14900276882801948021.Spec : Prop :=
  ∀ n, P14900276882801948021.a n = A120514 (n + 1)

end A120514

/-! ## A120514.P9591005391821230058

`A171181(A344853(n))+n+1`
-/

namespace A120514.P9591005391821230058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A344853 n).toNat + (n + 1 : ℤ)

end

end A120514.P9591005391821230058

namespace A120514

/-- `A171181(A344853(n))+n+1` -/
def P9591005391821230058.Spec : Prop :=
  ∀ n, P9591005391821230058.a n = A120514 (n + 1)

end A120514

/-!
# A120515: a(n) = min{j : A120504(j) = n}.

The programs for A120515, the canonical program `A120515.P4063395277355831413` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120515 has offset 1).

The definition of A120515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120515.P4063395277355831413

`a(floor(n/3))+1+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120515

/-- `a(floor(n/3))+1+n` -/
def P4063395277355831413.Spec : Prop :=
  ∀ n, (P4063395277355831413.a n : ℤ) = A120515 (n + 1)

theorem P4063395277355831413.correct : P4063395277355831413.Spec := by
  intro n
  simp only [A120515, Nat.add_sub_cancel]

end A120515

/-! ## A120515.P6511989853812201243

`a(floor(n/3))-xor(n, -1)` with `a(0)=1`
-/

namespace A120515.P6511989853812201243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat - Int.xor (n : ℤ) (-1)

end

end A120515.P6511989853812201243

namespace A120515

/-- `a(floor(n/3))-xor(n, -1)` -/
def P6511989853812201243.Spec : Prop :=
  ∀ n, P6511989853812201243.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P4914418329647194024

`a(round((n-1)/3))+n+1` with `a(0)=1`
-/

namespace A120515.P4914418329647194024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 1)

end

end A120515.P4914418329647194024

namespace A120515

/-- `a(round((n-1)/3))+n+1` -/
def P4914418329647194024.Spec : Prop :=
  ∀ n, (P4914418329647194024.a n : ℤ) = A120515 (n + 1)

end A120515

/-! ## A120515.P11928246136718996183

`Δ[n²]-(n-a(floor(n/3)))` with `a(0)=1`
-/

namespace A120515.P11928246136718996183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat)

end

end A120515.P11928246136718996183

namespace A120515

/-- `Δ[n²]-(n-a(floor(n/3)))` -/
def P11928246136718996183.Spec : Prop :=
  ∀ n, P11928246136718996183.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P11985991745910481042

`∑[a(∑[∑[n]]%n)+1]+1` with `a(0)=0, a(1)=2`
-/

namespace A120515.P11985991745910481042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120515.P11985991745910481042

namespace A120515

/-- `∑[a(∑[∑[n]]%n)+1]+1` -/
def P11985991745910481042.Spec : Prop :=
  ∀ n, (P11985991745910481042.a n : ℤ) = A120515 (n + 1)

end A120515

/-! ## A120515.P17581510099151667999

`n+1+a(A002264(n))` with `a(0)=1`
-/

namespace A120515.P17581510099151667999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A002264 n).toNat

end

end A120515.P17581510099151667999

namespace A120515

/-- `n+1+a(A002264(n))` -/
def P17581510099151667999.Spec : Prop :=
  ∀ n, (P17581510099151667999.a n : ℤ) = A120515 (n + 1)

end A120515

/-! ## A120515.P953022779552864252

`A020725(a(floor(n/3)))+n` with `a(0)=1`
-/

namespace A120515.P953022779552864252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020725 (a ⌊(n : ℚ) / 3⌋.toNat).toNat + (n : ℤ)

end

end A120515.P953022779552864252

namespace A120515

/-- `A020725(a(floor(n/3)))+n` -/
def P953022779552864252.Spec : Prop :=
  ∀ n, P953022779552864252.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P8049778418771958234

`1-(A001489(a(floor(n/3)))-n)` with `a(0)=1`
-/

namespace A120515.P8049778418771958234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A001489 (a ⌊(n : ℚ) / 3⌋.toNat).toNat - (n : ℤ))

end

end A120515.P8049778418771958234

namespace A120515

/-- `1-(A001489(a(floor(n/3)))-n)` -/
def P8049778418771958234.Spec : Prop :=
  ∀ n, P8049778418771958234.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P6452990211667546241

`A120514(n+1)+A080342(n+1)`
-/

namespace A120515.P6452990211667546241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120514 (n + 1) + A080342 (n + 1)

end

end A120515.P6452990211667546241

namespace A120515

/-- `A120514(n+1)+A080342(n+1)` -/
def P6452990211667546241.Spec : Prop :=
  ∀ n, P6452990211667546241.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P8717319112754189634

`A120516(n+1)-A080342(n+1)`
-/

namespace A120515.P8717319112754189634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120516 (n + 1) - A080342 (n + 1)

end

end A120515.P8717319112754189634

namespace A120515

/-- `A120516(n+1)-A080342(n+1)` -/
def P8717319112754189634.Spec : Prop :=
  ∀ n, P8717319112754189634.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P17557095952243450220

`A120516(n+1)+A120516(n+1)-A120517(n+1)`
-/

namespace A120515.P17557095952243450220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120516 (n + 1) + (A120516 (n + 1) - A120517 (n + 1))

end

end A120515.P17557095952243450220

namespace A120515

/-- `A120516(n+1)+A120516(n+1)-A120517(n+1)` -/
def P17557095952243450220.Spec : Prop :=
  ∀ n, P17557095952243450220.a n = A120515 (n + 1)

end A120515

/-! ## A120515.P12334463625974756434

`filter[n+1, A120526(#)]`
-/

namespace A120515.P12334463625974756434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120526 (f1 j) = 1) n)

end

end A120515.P12334463625974756434

namespace A120515

/-- `filter[n+1, A120526(#)]` -/
def P12334463625974756434.Spec : Prop :=
  ∀ n, (P12334463625974756434.a n : ℤ) = A120515 (n + 1)

end A120515

/-!
# A120516: a(n) = min{j : A120505(j) = n}.

The programs for A120516, the canonical program `A120516.P696492643765850180` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120516 has offset 1).

The definition of A120516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120516.P696492643765850180

`a(floor(n/3))+2+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120516

/-- `a(floor(n/3))+2+n` -/
def P696492643765850180.Spec : Prop :=
  ∀ n, (P696492643765850180.a n : ℤ) = A120516 (n + 1)

theorem P696492643765850180.correct : P696492643765850180.Spec := by
  intro n
  simp only [A120516, Nat.add_sub_cancel]

end A120516

/-! ## A120516.P2784416952144990421

`a(round((n-1)/3))+n+2` with `a(0)=1`
-/

namespace A120516.P2784416952144990421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 2)

end

end A120516.P2784416952144990421

namespace A120516

/-- `a(round((n-1)/3))+n+2` -/
def P2784416952144990421.Spec : Prop :=
  ∀ n, (P2784416952144990421.a n : ℤ) = A120516 (n + 1)

end A120516

/-! ## A120516.P17469135967892807585

`∑[a(∑[∑[n]]%n)+1]+1` with `a(0)=0, a(1)=3`
-/

namespace A120516.P17469135967892807585
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120516.P17469135967892807585

namespace A120516

/-- `∑[a(∑[∑[n]]%n)+1]+1` -/
def P17469135967892807585.Spec : Prop :=
  ∀ n, (P17469135967892807585.a n : ℤ) = A120516 (n + 1)

end A120516

/-! ## A120516.P8984626720016521327

`2-(n-a(floor(n/3))-2*n)` with `a(0)=1`
-/

namespace A120516.P8984626720016521327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat - (2 * n : ℤ))

end

end A120516.P8984626720016521327

namespace A120516

/-- `2-(n-a(floor(n/3))-2*n)` -/
def P8984626720016521327.Spec : Prop :=
  ∀ n, P8984626720016521327.a n = A120516 (n + 1)

end A120516

/-! ## A120516.P2929519316769388332

`floor(a(∑[char[3*n]]-1)+2+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A120516.P2929519316769388332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 2 + n

end

end A120516.P2929519316769388332

namespace A120516

/-- `floor(a(∑[char[3*n]]-1)+2+n)` -/
def P2929519316769388332.Spec : Prop :=
  ∀ n, (P2929519316769388332.a n : ℤ) = A120516 (n + 1)

end A120516

/-! ## A120516.P16795620894203630861

`abs(a(A002264(n))+n+2)` with `a(0)=1`
-/

namespace A120516.P16795620894203630861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat + (n + 2)

end

end A120516.P16795620894203630861

namespace A120516

/-- `abs(a(A002264(n))+n+2)` -/
def P16795620894203630861.Spec : Prop :=
  ∀ n, (P16795620894203630861.a n : ℤ) = A120516 (n + 1)

end A120516

/-! ## A120516.P7382810445241248504

`A120515(n+1)+∑[char[3^n]]`
-/

namespace A120516.P7382810445241248504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120515 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A120516.P7382810445241248504

namespace A120516

/-- `A120515(n+1)+∑[char[3^n]]` -/
def P7382810445241248504.Spec : Prop :=
  ∀ n, P7382810445241248504.a n = A120516 (n + 1)

end A120516

/-! ## A120516.P10169884376318976644

`A120517(n+1)-∑[char[3^n]]`
-/

namespace A120516.P10169884376318976644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120517 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A120516.P10169884376318976644

namespace A120516

/-- `A120517(n+1)-∑[char[3^n]]` -/
def P10169884376318976644.Spec : Prop :=
  ∀ n, P10169884376318976644.a n = A120516 (n + 1)

end A120516

/-! ## A120516.P4868513463495200484

`A000027(a(A002264(n))+n+2)` with `a(0)=1`
-/

namespace A120516.P4868513463495200484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (A002264 n).toNat + (n + 2 : ℤ)).toNat

end

end A120516.P4868513463495200484

namespace A120516

/-- `A000027(a(A002264(n))+n+2)` -/
def P4868513463495200484.Spec : Prop :=
  ∀ n, P4868513463495200484.a n = A120516 (n + 1)

end A120516

/-! ## A120516.P1519962664685677031

`filter[n+1, A120527(#)]`
-/

namespace A120516.P1519962664685677031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120527 (f1 j) = 1) n)

end

end A120516.P1519962664685677031

namespace A120516

/-- `filter[n+1, A120527(#)]` -/
def P1519962664685677031.Spec : Prop :=
  ∀ n, (P1519962664685677031.a n : ℤ) = A120516 (n + 1)

end A120516

/-!
# A120517: a(n) = min{j : A120506(j) = n}.

The programs for A120517, the canonical program `A120517.P13953993711144845343` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120517 has offset 1).

The definition of A120517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120517.P13953993711144845343

`a(floor(n/3))+3+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120517

/-- `a(floor(n/3))+3+n` -/
def P13953993711144845343.Spec : Prop :=
  ∀ n, (P13953993711144845343.a n : ℤ) = A120517 (n + 1)

theorem P13953993711144845343.correct : P13953993711144845343.Spec := by
  intro n
  simp only [A120517, Nat.add_sub_cancel]

end A120517

/-! ## A120517.P11481538584675745070

`a(round((n-1)/3))+n+3` with `a(0)=1`
-/

namespace A120517.P11481538584675745070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 3)

end

end A120517.P11481538584675745070

namespace A120517

/-- `a(round((n-1)/3))+n+3` -/
def P11481538584675745070.Spec : Prop :=
  ∀ n, (P11481538584675745070.a n : ℤ) = A120517 (n + 1)

end A120517

/-! ## A120517.P5450344573613638249

`∑[a(∑[∑[n]]%n)+1]+1` with `a(0)=0, a(1)=4`
-/

namespace A120517.P5450344573613638249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120517.P5450344573613638249

namespace A120517

/-- `∑[a(∑[∑[n]]%n)+1]+1` -/
def P5450344573613638249.Spec : Prop :=
  ∀ n, (P5450344573613638249.a n : ℤ) = A120517 (n + 1)

end A120517

/-! ## A120517.P18151592431625752809

`abs(2-(xor(n, -1)-a(floor(n/3))))` with `a(0)=1`
-/

namespace A120517.P18151592431625752809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 - (Int.xor (n : ℤ) (-1) - a ⌊(n : ℚ) / 3⌋.toNat)|

end

end A120517.P18151592431625752809

namespace A120517

/-- `abs(2-(xor(n, -1)-a(floor(n/3))))` -/
def P18151592431625752809.Spec : Prop :=
  ∀ n, P18151592431625752809.a n = A120517 (n + 1)

end A120517

/-! ## A120517.P9466889480628249025

`abs(a(A002264(n))+n+3)` with `a(0)=1`
-/

namespace A120517.P9466889480628249025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat + (n + 3)

end

end A120517.P9466889480628249025

namespace A120517

/-- `abs(a(A002264(n))+n+3)` -/
def P9466889480628249025.Spec : Prop :=
  ∀ n, (P9466889480628249025.a n : ℤ) = A120517 (n + 1)

end A120517

/-! ## A120517.P4295874389119717770

`A120516(n+1)+A080342(n+1)`
-/

namespace A120517.P4295874389119717770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120516 (n + 1) + A080342 (n + 1)

end

end A120517.P4295874389119717770

namespace A120517

/-- `A120516(n+1)+A080342(n+1)` -/
def P4295874389119717770.Spec : Prop :=
  ∀ n, P4295874389119717770.a n = A120517 (n + 1)

end A120517

/-! ## A120517.P5178260086913856556

`A000027(a(A002264(n))+n+3)` with `a(0)=1`
-/

namespace A120517.P5178260086913856556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (A002264 n).toNat + (n + 3 : ℤ)).toNat

end

end A120517.P5178260086913856556

namespace A120517

/-- `A000027(a(A002264(n))+n+3)` -/
def P5178260086913856556.Spec : Prop :=
  ∀ n, P5178260086913856556.a n = A120517 (n + 1)

end A120517

/-! ## A120517.P8597118514717885173

`A120515(n+1)+2*A080342(n+1)`
-/

namespace A120517.P8597118514717885173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120515 (n + 1) + 2 * A080342 (n + 1)

end

end A120517.P8597118514717885173

namespace A120517

/-- `A120515(n+1)+2*A080342(n+1)` -/
def P8597118514717885173.Spec : Prop :=
  ∀ n, P8597118514717885173.a n = A120517 (n + 1)

end A120517

/-! ## A120517.P14785284117534293291

`filter[n+1, A120528(#)]`
-/

namespace A120517.P14785284117534293291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120528 (f1 j) = 1) n)

end

end A120517.P14785284117534293291

namespace A120517

/-- `filter[n+1, A120528(#)]` -/
def P14785284117534293291.Spec : Prop :=
  ∀ n, (P14785284117534293291.a n : ℤ) = A120517 (n + 1)

end A120517

/-!
# A120518: a(n) = min{j : A120507(j) = n}.

The programs for A120518, the canonical program `A120518.P12428338265892311142` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120518 has offset 1).

The definition of A120518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120518.P12428338265892311142

`n+a(floor(n/4))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120518

/-- `n+a(floor(n/4))` -/
def P12428338265892311142.Spec : Prop :=
  ∀ n, (P12428338265892311142.a n : ℤ) = A120518 (n + 1)

theorem P12428338265892311142.correct : P12428338265892311142.Spec := by
  intro n
  simp only [A120518, Nat.add_sub_cancel]

end A120518

/-! ## A120518.P10612464786225169356

`record[val(n, 4)-a(n-1)]` with `a(0)=1`
-/

namespace A120518.P10612464786225169356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120518.P10612464786225169356

namespace A120518

/-- `record[val(n, 4)-a(n-1)]` -/
def P10612464786225169356.Spec : Prop :=
  ∀ n, P10612464786225169356.a n = A120518 (n + 1)

end A120518

/-! ## A120518.P9364739354825165825

`∑[val(4*floor(3/acot(n)), 4)]`
-/

namespace A120518.P9364739354825165825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120518.P9364739354825165825

namespace A120518

/-- `∑[val(4*floor(3/acot(n)), 4)]` -/
def P9364739354825165825.Spec : Prop :=
  ∀ n, (P9364739354825165825.a n : ℤ) = A120518 (n + 1)

end A120518

/-! ## A120518.P10347090977606450631

`∑[val(4*round(acot(n)+n), 4)]`
-/

namespace A120518.P10347090977606450631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120518.P10347090977606450631

namespace A120518

/-- `∑[val(4*round(acot(n)+n), 4)]` -/
def P10347090977606450631.Spec : Prop :=
  ∀ n, (P10347090977606450631.a n : ℤ) = A120518 (n + 1)

end A120518

/-! ## A120518.P16617054618516711572

`a(n-1)+val(n, 4)+1` with `a(0)=1`
-/

namespace A120518.P16617054618516711572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 4 + 1

end

end A120518.P16617054618516711572

namespace A120518

/-- `a(n-1)+val(n, 4)+1` -/
def P16617054618516711572.Spec : Prop :=
  ∀ n, (P16617054618516711572.a n : ℤ) = A120518 (n + 1)

end A120518

/-! ## A120518.P2323435285614566143

`A087069(n)+1`
-/

namespace A120518.P2323435285614566143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + 1

end

end A120518.P2323435285614566143

namespace A120518

/-- `A087069(n)+1` -/
def P2323435285614566143.Spec : Prop :=
  ∀ n, P2323435285614566143.a n = A120518 (n + 1)

end A120518

/-! ## A120518.P3222588972034391654

`A054893(n)+1+n`
-/

namespace A120518.P3222588972034391654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n + 1 + (n : ℤ)

end

end A120518.P3222588972034391654

namespace A120518

/-- `A054893(n)+1+n` -/
def P3222588972034391654.Spec : Prop :=
  ∀ n, P3222588972034391654.a n = A120518 (n + 1)

end A120518

/-! ## A120518.P10641511262282866702

`∑[A115362(abs(1-n))]`
-/

namespace A120518.P10641511262282866702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120518.P10641511262282866702

namespace A120518

/-- `∑[A115362(abs(1-n))]` -/
def P10641511262282866702.Spec : Prop :=
  ∀ n, P10641511262282866702.a n = A120518 (n + 1)

end A120518

/-! ## A120518.P5693931755264470301

`filter[n+1, A120529(#)]`
-/

namespace A120518.P5693931755264470301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120529 (f1 j) = 1) n)

end

end A120518.P5693931755264470301

namespace A120518

/-- `filter[n+1, A120529(#)]` -/
def P5693931755264470301.Spec : Prop :=
  ∀ n, (P5693931755264470301.a n : ℤ) = A120518 (n + 1)

end A120518

/-! ## A120518.P4205856181564843228

`∑[val(2^n+n, 4)+1]`
-/

namespace A120518.P4205856181564843228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ n + n) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120518.P4205856181564843228

namespace A120518

/-- `∑[val(2^n+n, 4)+1]` -/
def P4205856181564843228.Spec : Prop :=
  ∀ n, (P4205856181564843228.a n : ℤ) = A120518 (n + 1)

end A120518

/-! ## A120518.P8478672701860481863

`A201472(n+1)-4`
-/

namespace A120518.P8478672701860481863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201472 (n + 1) - 4

end

end A120518.P8478672701860481863

namespace A120518

/-- `A201472(n+1)-4` -/
def P8478672701860481863.Spec : Prop :=
  ∀ n, P8478672701860481863.a n = A120518 (n + 1)

end A120518

/-! ## A120518.P7038815796779199098

`A023446(A201472(n+1))`
-/

namespace A120518.P7038815796779199098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A201472 (n + 1)).toNat

end

end A120518.P7038815796779199098

namespace A120518

/-- `A023446(A201472(n+1))` -/
def P7038815796779199098.Spec : Prop :=
  ∀ n, P7038815796779199098.a n = A120518 (n + 1)

end A120518

/-!
# A120519: a(n) = min{j : A120508(j) = n}.

The programs for A120519, the canonical program `A120519.P3183606088872422095` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120519 has offset 1).

The definition of A120519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120519.P3183606088872422095

`a(floor(n/4))+1+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120519

/-- `a(floor(n/4))+1+n` -/
def P3183606088872422095.Spec : Prop :=
  ∀ n, (P3183606088872422095.a n : ℤ) = A120519 (n + 1)

theorem P3183606088872422095.correct : P3183606088872422095.Spec := by
  intro n
  simp only [A120519, Nat.add_sub_cancel]

end A120519

/-! ## A120519.P177201139950040245

`a(floor(n/4))-xor(n, -1)` with `a(0)=1`
-/

namespace A120519.P177201139950040245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat - Int.xor (n : ℤ) (-1)

end

end A120519.P177201139950040245

namespace A120519

/-- `a(floor(n/4))-xor(n, -1)` -/
def P177201139950040245.Spec : Prop :=
  ∀ n, P177201139950040245.a n = A120519 (n + 1)

end A120519

/-! ## A120519.P17350805796290693767

`a(ceil((n-3)/4))+n+1` with `a(0)=1`
-/

namespace A120519.P17350805796290693767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat + (n + 1)

end

end A120519.P17350805796290693767

namespace A120519

/-- `a(ceil((n-3)/4))+n+1` -/
def P17350805796290693767.Spec : Prop :=
  ∀ n, (P17350805796290693767.a n : ℤ) = A120519 (n + 1)

end A120519

/-! ## A120519.P15740607083256376239

`Δ[n²]-(n-a(floor(n/4)))` with `a(0)=1`
-/

namespace A120519.P15740607083256376239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat)

end

end A120519.P15740607083256376239

namespace A120519

/-- `Δ[n²]-(n-a(floor(n/4)))` -/
def P15740607083256376239.Spec : Prop :=
  ∀ n, P15740607083256376239.a n = A120519 (n + 1)

end A120519

/-! ## A120519.P17871940254350802134

`ceil(a(and(n, -4)/4))+n+1` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A120519.P17871940254350802134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-4) : ℚ) / 4)).toNat + (n + 1)

end

end A120519.P17871940254350802134

namespace A120519

/-- `ceil(a(and(n, -4)/4))+n+1` -/
def P17871940254350802134.Spec : Prop :=
  ∀ n, (P17871940254350802134.a n : ℤ) = A120519 (n + 1)

end A120519

/-! ## A120519.P14376153258028993097

`ceil(a(∑[char[4*n]]-1)+n+1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A120519.P14376153258028993097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n + 1)

end

end A120519.P14376153258028993097

namespace A120519

/-- `ceil(a(∑[char[4*n]]-1)+n+1)` -/
def P14376153258028993097.Spec : Prop :=
  ∀ n, (P14376153258028993097.a n : ℤ) = A120519 (n + 1)

end A120519

/-! ## A120519.P14287092259050239555

`n+1+a(A002265(n))` with `a(0)=1`
-/

namespace A120519.P14287092259050239555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A002265 n).toNat

end

end A120519.P14287092259050239555

namespace A120519

/-- `n+1+a(A002265(n))` -/
def P14287092259050239555.Spec : Prop :=
  ∀ n, (P14287092259050239555.a n : ℤ) = A120519 (n + 1)

end A120519

/-! ## A120519.P14671808857985010765

`A020725(a(floor(n/4))+n)` with `a(0)=1`
-/

namespace A120519.P14671808857985010765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020725 (a ⌊(n : ℚ) / 4⌋.toNat + (n : ℤ)).toNat

end

end A120519.P14671808857985010765

namespace A120519

/-- `A020725(a(floor(n/4))+n)` -/
def P14671808857985010765.Spec : Prop :=
  ∀ n, P14671808857985010765.a n = A120519 (n + 1)

end A120519

/-! ## A120519.P14435536940507009121

`filter[n+1, A120530(#)]`
-/

namespace A120519.P14435536940507009121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120530 (f1 j) = 1) n)

end

end A120519.P14435536940507009121

namespace A120519

/-- `filter[n+1, A120530(#)]` -/
def P14435536940507009121.Spec : Prop :=
  ∀ n, (P14435536940507009121.a n : ℤ) = A120519 (n + 1)

end A120519

/-! ## A120519.P1255222573338052187

`eq[1, A120530(n+1)]+1`
-/

namespace A120519.P1255222573338052187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120519.P1255222573338052187

namespace A120519

/-- `eq[1, A120530(n+1)]+1` -/
def P1255222573338052187.Spec : Prop :=
  ∀ n, (P1255222573338052187.a n : ℤ) = A120519 (n + 1)

end A120519

/-!
# A120520: a(n) = min{j : A120509(j) = n}.

The programs for A120520, the canonical program `A120520.P13926894737319664209` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120520 has offset 1).

The definition of A120520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120520.P13926894737319664209

`a(floor(n/4))+2+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120520

/-- `a(floor(n/4))+2+n` -/
def P13926894737319664209.Spec : Prop :=
  ∀ n, (P13926894737319664209.a n : ℤ) = A120520 (n + 1)

theorem P13926894737319664209.correct : P13926894737319664209.Spec := by
  intro n
  simp only [A120520, Nat.add_sub_cancel]

end A120520

/-! ## A120520.P54317442651060921

`a(ceil((n-3)/4))+n+2` with `a(0)=1`
-/

namespace A120520.P54317442651060921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat + (n + 2)

end

end A120520.P54317442651060921

namespace A120520

/-- `a(ceil((n-3)/4))+n+2` -/
def P54317442651060921.Spec : Prop :=
  ∀ n, (P54317442651060921.a n : ℤ) = A120520 (n + 1)

end A120520

/-! ## A120520.P1238742392190296727

`1-(xor(n, -1)-a(floor(n/4)))` with `a(0)=1`
-/

namespace A120520.P1238742392190296727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Int.xor (n : ℤ) (-1) - a ⌊(n : ℚ) / 4⌋.toNat)

end

end A120520.P1238742392190296727

namespace A120520

/-- `1-(xor(n, -1)-a(floor(n/4)))` -/
def P1238742392190296727.Spec : Prop :=
  ∀ n, P1238742392190296727.a n = A120520 (n + 1)

end A120520

/-! ## A120520.P8212570132448514065

`2-(n-a(floor(n/4))-2*n)` with `a(0)=1`
-/

namespace A120520.P8212570132448514065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat - (2 * n : ℤ))

end

end A120520.P8212570132448514065

namespace A120520

/-- `2-(n-a(floor(n/4))-2*n)` -/
def P8212570132448514065.Spec : Prop :=
  ∀ n, P8212570132448514065.a n = A120520 (n + 1)

end A120520

/-! ## A120520.P8242318995475056757

`ceil(a(∑[char[4*n]]-1)+n+1)+1` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A120520.P8242318995475056757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n + 1) + 1

end

end A120520.P8242318995475056757

namespace A120520

/-- `ceil(a(∑[char[4*n]]-1)+n+1)+1` -/
def P8242318995475056757.Spec : Prop :=
  ∀ n, (P8242318995475056757.a n : ℤ) = A120520 (n + 1)

end A120520

/-! ## A120520.P16060273202417270172

`n+2+a(A002265(n))` with `a(0)=1`
-/

namespace A120520.P16060273202417270172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 2 + a (A002265 n).toNat

end

end A120520.P16060273202417270172

namespace A120520

/-- `n+2+a(A002265(n))` -/
def P16060273202417270172.Spec : Prop :=
  ∀ n, (P16060273202417270172.a n : ℤ) = A120520 (n + 1)

end A120520

/-! ## A120520.P13520524801818879544

`filter[n+1, A120531(#)]`
-/

namespace A120520.P13520524801818879544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120531 (f1 j) = 1) n)

end

end A120520.P13520524801818879544

namespace A120520

/-- `filter[n+1, A120531(#)]` -/
def P13520524801818879544.Spec : Prop :=
  ∀ n, (P13520524801818879544.a n : ℤ) = A120520 (n + 1)

end A120520

/-! ## A120520.P4940386160928860779

`lt[0, A120531(n+1)]+1`
-/

namespace A120520.P4940386160928860779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120520.P4940386160928860779

namespace A120520

/-- `lt[0, A120531(n+1)]+1` -/
def P4940386160928860779.Spec : Prop :=
  ∀ n, (P4940386160928860779.a n : ℤ) = A120520 (n + 1)

end A120520

/-!
# A120521: a(n) = min{j : A120510(j) = n}.

The programs for A120521, the canonical program `A120521.P13204583264515583301` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120521 has offset 1).

The definition of A120521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120521.P13204583264515583301

`a(floor(n/4))+3+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120521

/-- `a(floor(n/4))+3+n` -/
def P13204583264515583301.Spec : Prop :=
  ∀ n, (P13204583264515583301.a n : ℤ) = A120521 (n + 1)

theorem P13204583264515583301.correct : P13204583264515583301.Spec := by
  intro n
  simp only [A120521, Nat.add_sub_cancel]

end A120521

/-! ## A120521.P16969741331618599158

`a(ceil((n-3)/4))+n+3` with `a(0)=1`
-/

namespace A120521.P16969741331618599158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat + (n + 3)

end

end A120521.P16969741331618599158

namespace A120521

/-- `a(ceil((n-3)/4))+n+3` -/
def P16969741331618599158.Spec : Prop :=
  ∀ n, (P16969741331618599158.a n : ℤ) = A120521 (n + 1)

end A120521

/-! ## A120521.P7560007158392268346

`4*n-(3*(n-1)-a(floor(n/4)))` with `a(0)=1`
-/

namespace A120521.P7560007158392268346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - (3 * ((n : ℤ) - 1) - a ⌊(n : ℚ) / 4⌋.toNat)

end

end A120521.P7560007158392268346

namespace A120521

/-- `4*n-(3*(n-1)-a(floor(n/4)))` -/
def P7560007158392268346.Spec : Prop :=
  ∀ n, P7560007158392268346.a n = A120521 (n + 1)

end A120521

/-! ## A120521.P16494394292981449077

`ceil(a(∑[char[4*n]]-1)+n+1)+2` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A120521.P16494394292981449077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n + 1) + 2

end

end A120521.P16494394292981449077

namespace A120521

/-- `ceil(a(∑[char[4*n]]-1)+n+1)+2` -/
def P16494394292981449077.Spec : Prop :=
  ∀ n, (P16494394292981449077.a n : ℤ) = A120521 (n + 1)

end A120521

/-! ## A120521.P2607437780560582593

`abs(a(A002265(n))+n)+3` with `a(0)=1`
-/

namespace A120521.P2607437780560582593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A002265 n).toNat + n + 3

end

end A120521.P2607437780560582593

namespace A120521

/-- `abs(a(A002265(n))+n)+3` -/
def P2607437780560582593.Spec : Prop :=
  ∀ n, (P2607437780560582593.a n : ℤ) = A120521 (n + 1)

end A120521

/-! ## A120521.P1619158733301878848

`A020710(a(floor(n/4))-(2-n))` with `a(0)=1`
-/

namespace A120521.P1619158733301878848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020710 (a ⌊(n : ℚ) / 4⌋.toNat - (2 - (n : ℤ))).toNat

end

end A120521.P1619158733301878848

namespace A120521

/-- `A020710(a(floor(n/4))-(2-n))` -/
def P1619158733301878848.Spec : Prop :=
  ∀ n, P1619158733301878848.a n = A120521 (n + 1)

end A120521

/-! ## A120521.P5083268096883914862

`filter[n+1, A120532(#)]`
-/

namespace A120521.P5083268096883914862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120532 (f1 j) = 1) n)

end

end A120521.P5083268096883914862

namespace A120521

/-- `filter[n+1, A120532(#)]` -/
def P5083268096883914862.Spec : Prop :=
  ∀ n, (P5083268096883914862.a n : ℤ) = A120521 (n + 1)

end A120521

/-! ## A120521.P16357972890244368945

`eq[1, A120532(n+1)]+1`
-/

namespace A120521.P16357972890244368945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120521.P16357972890244368945

namespace A120521

/-- `eq[1, A120532(n+1)]+1` -/
def P16357972890244368945.Spec : Prop :=
  ∀ n, (P16357972890244368945.a n : ℤ) = A120521 (n + 1)

end A120521

/-! ## A120521.P7014251910030238280

`A009005(a(floor(n/4))+n)` with `a(0)=1`
-/

namespace A120521.P7014251910030238280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009005 (a ⌊(n : ℚ) / 4⌋.toNat + (n : ℤ)).toNat

end

end A120521.P7014251910030238280

namespace A120521

/-- `A009005(a(floor(n/4))+n)` -/
def P7014251910030238280.Spec : Prop :=
  ∀ n, P7014251910030238280.a n = A120521 (n + 1)

end A120521

/-! ## A120521.P3597602806788540666

`eq[1, A120532(A000038(n)+n)]`
-/

namespace A120521.P3597602806788540666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120532 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120521.P3597602806788540666

namespace A120521

/-- `eq[1, A120532(A000038(n)+n)]` -/
def P3597602806788540666.Spec : Prop :=
  ∀ n, (P3597602806788540666.a n : ℤ) = A120521 (n + 1)

end A120521

/-!
# A120522: First differences of successive meta-Fibonacci numbers A006949.

The programs for A120522, the canonical program `A120522.P16891830647218488241` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120522 has offset 1).

The definition of A120522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120522.P11301039463488848166

`char[a(ceil(n/2))+n]` with `a(0)=0, a(1)=0`
-/

namespace A120522.P11301039463488848166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120522.P11301039463488848166

namespace A120522

/-- `char[a(ceil(n/2))+n]` -/
def P11301039463488848166.Spec : Prop :=
  ∀ n, (P11301039463488848166.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P16569896775169143468

`char[a(floor(n/2))+1+n]` with `a(0)=0`
-/

namespace A120522.P16569896775169143468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120522.P16569896775169143468

namespace A120522

/-- `char[a(floor(n/2))+1+n]` -/
def P16569896775169143468.Spec : Prop :=
  ∀ n, (P16569896775169143468.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P3370511912571450374

`char[∑[a(∑[n]%n)+1]]` with `a(0)=0, a(1)=2`
-/

namespace A120522.P3370511912571450374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120522.P3370511912571450374

namespace A120522

/-- `char[∑[a(∑[n]%n)+1]]` -/
def P3370511912571450374.Spec : Prop :=
  ∀ n, (P3370511912571450374.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P12961839997278975150

`char[2-floor(1-a(floor(n/2))-n)]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A120522.P12961839997278975150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - (1 - f1 ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P12961839997278975150

namespace A120522

/-- `char[2-floor(1-a(floor(n/2))-n)]` -/
def P12961839997278975150.Spec : Prop :=
  ∀ n, (P12961839997278975150.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P12053937919203151975

`char[A233272(n)-2]`
-/

namespace A120522.P12053937919203151975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P12053937919203151975

namespace A120522

/-- `char[A233272(n)-2]` -/
def P12053937919203151975.Spec : Prop :=
  ∀ n, (P12053937919203151975.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P15864810248269233390

`char[A233273(n)-2]`
-/

namespace A120522.P15864810248269233390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P15864810248269233390

namespace A120522

/-- `char[A233273(n)-2]` -/
def P15864810248269233390.Spec : Prop :=
  ∀ n, (P15864810248269233390.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P3497857553508178501

`char[A270200(n)-2]`
-/

namespace A120522.P3497857553508178501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270200 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P3497857553508178501

namespace A120522

/-- `char[A270200(n)-2]` -/
def P3497857553508178501.Spec : Prop :=
  ∀ n, (P3497857553508178501.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P16891830647218488241

`Δ[A006949(n)]^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120522

/-- `Δ[A006949(n)]^n` -/
def P16891830647218488241.Spec : Prop :=
  ∀ n, P16891830647218488241.a n = A120522 (n + 1)

theorem P16891830647218488241.correct : P16891830647218488241.Spec := by
  intro n
  simp only [A120522, Nat.add_sub_cancel]

end A120522

/-! ## A120522.P8352271903202260686

`char[A023416(n+1)+n]`
-/

namespace A120522.P8352271903202260686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P8352271903202260686

namespace A120522

/-- `char[A023416(n+1)+n]` -/
def P8352271903202260686.Spec : Prop :=
  ∀ n, (P8352271903202260686.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P14742932765439643970

`char[A080791(n+1)+n]`
-/

namespace A120522.P14742932765439643970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P14742932765439643970

namespace A120522

/-- `char[A080791(n+1)+n]` -/
def P14742932765439643970.Spec : Prop :=
  ∀ n, (P14742932765439643970.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P16842345880628803830

`char[n-(1-A023416(n))]`
-/

namespace A120522.P16842345880628803830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A023416 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P16842345880628803830

namespace A120522

/-- `char[n-(1-A023416(n))]` -/
def P16842345880628803830.Spec : Prop :=
  ∀ n, (P16842345880628803830.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P3199766518112430032

`char[∑[A135560(n+1)-1]-1]`
-/

namespace A120522.P3199766518112430032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P3199766518112430032

namespace A120522

/-- `char[∑[A135560(n+1)-1]-1]` -/
def P3199766518112430032.Spec : Prop :=
  ∀ n, (P3199766518112430032.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P6854498393529424459

`char[∑[val(A054429(n+1)+1, 2)]-1]`
-/

namespace A120522.P6854498393529424459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054429 (n + 1) + 1).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P6854498393529424459

namespace A120522

/-- `char[∑[val(A054429(n+1)+1, 2)]-1]` -/
def P6854498393529424459.Spec : Prop :=
  ∀ n, (P6854498393529424459.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P18397454481999965759

`char[∑[val((n+1)*A006530(n+1), 2)]]`
-/

namespace A120522.P18397454481999965759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A006530 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120522.P18397454481999965759

namespace A120522

/-- `char[∑[val((n+1)*A006530(n+1), 2)]]` -/
def P18397454481999965759.Spec : Prop :=
  ∀ n, (P18397454481999965759.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P14382894729207325283

`char[A023443(A023416(n)+n)]`
-/

namespace A120522.P14382894729207325283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A023416 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120522.P14382894729207325283

namespace A120522

/-- `char[A023443(A023416(n)+n)]` -/
def P14382894729207325283.Spec : Prop :=
  ∀ n, (P14382894729207325283.a n : ℤ) = A120522 (n + 1)

end A120522

/-! ## A120522.P10595336162195931839

`A120523(A080804(n+1))`
-/

namespace A120522.P10595336162195931839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120523 (A080804 (n + 1)).toNat

end

end A120522.P10595336162195931839

namespace A120522

/-- `A120523(A080804(n+1))` -/
def P10595336162195931839.Spec : Prop :=
  ∀ n, P10595336162195931839.a n = A120522 (n + 1)

end A120522

/-! ## A120522.P6163707118926946191

`A120523(A081690(n+1))`
-/

namespace A120522.P6163707118926946191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120523 (A081690 (n + 1)).toNat

end

end A120522.P6163707118926946191

namespace A120522

/-- `A120523(A081690(n+1))` -/
def P6163707118926946191.Spec : Prop :=
  ∀ n, P6163707118926946191.a n = A120522 (n + 1)

end A120522

/-! ## A120522.P17699988056577625409

`A306869(n+1)%2`
-/

namespace A120522.P17699988056577625409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306869 (n + 1)) 2

end

end A120522.P17699988056577625409

namespace A120522

/-- `A306869(n+1)%2` -/
def P17699988056577625409.Spec : Prop :=
  ∀ n, P17699988056577625409.a n = A120522 (n + 1)

end A120522

/-! ## A120522.P5895804764838732885

`A000035(A306869(n+1))`
-/

namespace A120522.P5895804764838732885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A306869 (n + 1)).toNat

end

end A120522.P5895804764838732885

namespace A120522

/-- `A000035(A306869(n+1))` -/
def P5895804764838732885.Spec : Prop :=
  ∀ n, P5895804764838732885.a n = A120522 (n + 1)

end A120522

/-! ## A120522.P12686723583541503309

`and(A060576(n), A306869(n+1))`
-/

namespace A120522.P12686723583541503309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A306869 (n + 1))

end

end A120522.P12686723583541503309

namespace A120522

/-- `and(A060576(n), A306869(n+1))` -/
def P12686723583541503309.Spec : Prop :=
  ∀ n, P12686723583541503309.a n = A120522 (n + 1)

end A120522

/-!
# A120523: First differences of successive meta-Fibonacci numbers A120501.

The programs for A120523, the canonical program `A120523.P16356982835389025616` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120523 has offset 1).

The definition of A120523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120523.P16356982835389025616

`char[a(floor(n/2))+2+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120523

/-- `char[a(floor(n/2))+2+n]` -/
def P16356982835389025616.Spec : Prop :=
  ∀ n, (P16356982835389025616.a n : ℤ) = A120523 (n + 1)

theorem P16356982835389025616.correct : P16356982835389025616.Spec := by
  intro n
  simp only [A120523, Nat.add_sub_cancel]

end A120523

/-! ## A120523.P16632332446508727705

`char[∑[a(∑[n]%n)+1]]` with `a(0)=0, a(1)=3`
-/

namespace A120523.P16632332446508727705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120523.P16632332446508727705

namespace A120523

/-- `char[∑[a(∑[n]%n)+1]]` -/
def P16632332446508727705.Spec : Prop :=
  ∀ n, (P16632332446508727705.a n : ℤ) = A120523 (n + 1)

end A120523

/-! ## A120523.P7063194367546225640

`char[a(ceil(n/2))+n+1]` with `a(0)=0, a(1)=0`
-/

namespace A120523.P7063194367546225640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120523.P7063194367546225640

namespace A120523

/-- `char[a(ceil(n/2))+n+1]` -/
def P7063194367546225640.Spec : Prop :=
  ∀ n, (P7063194367546225640.a n : ℤ) = A120523 (n + 1)

end A120523

/-! ## A120523.P7585797387773267312

`char[A120512(n+1)-1]`
-/

namespace A120523.P7585797387773267312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120512 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120523.P7585797387773267312

namespace A120523

/-- `char[A120512(n+1)-1]` -/
def P7585797387773267312.Spec : Prop :=
  ∀ n, (P7585797387773267312.a n : ℤ) = A120523 (n + 1)

end A120523

/-! ## A120523.P583874972586990735

`char[A061313(n+1)-2+n]`
-/

namespace A120523.P583874972586990735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120523.P583874972586990735

namespace A120523

/-- `char[A061313(n+1)-2+n]` -/
def P583874972586990735.Spec : Prop :=
  ∀ n, (P583874972586990735.a n : ℤ) = A120523 (n + 1)

end A120523

/-! ## A120523.P18121081259705385497

`char[A119477(n+1)+n-3]`
-/

namespace A120523.P18121081259705385497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1) + ((n : ℤ) - 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120523.P18121081259705385497

namespace A120523

/-- `char[A119477(n+1)+n-3]` -/
def P18121081259705385497.Spec : Prop :=
  ∀ n, (P18121081259705385497.a n : ℤ) = A120523 (n + 1)

end A120523

/-! ## A120523.P723219443086532190

`char[∑[val((n+1)*A014963(n+1)², 2)]]`
-/

namespace A120523.P723219443086532190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A014963 (n + 1) ^ 2).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120523.P723219443086532190

namespace A120523

/-- `char[∑[val((n+1)*A014963(n+1)², 2)]]` -/
def P723219443086532190.Spec : Prop :=
  ∀ n, (P723219443086532190.a n : ℤ) = A120523 (n + 1)

end A120523

/-! ## A120523.P16638162694905034024

`A120522(Δ[A006697(n)])`
-/

namespace A120523.P16638162694905034024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120522 (f1 (n + 1) - f1 n).toNat

end

end A120523.P16638162694905034024

namespace A120523

/-- `A120522(Δ[A006697(n)])` -/
def P16638162694905034024.Spec : Prop :=
  ∀ n, P16638162694905034024.a n = A120523 (n + 1)

end A120523

/-! ## A120523.P12170752259584377505

`A120522(A103354(n+2))`
-/

namespace A120523.P12170752259584377505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120522 (A103354 (n + 2)).toNat

end

end A120523.P12170752259584377505

namespace A120523

/-- `A120522(A103354(n+2))` -/
def P12170752259584377505.Spec : Prop :=
  ∀ n, P12170752259584377505.a n = A120523 (n + 1)

end A120523

/-!
# A120524: First differences of successive meta-Fibonacci numbers A120502.

The programs for A120524, the canonical program `A120524.P15674330516858305625` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120524 has offset 1).

The definition of A120524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120524.P15674330516858305625

`char[a(floor(n/2))+3+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120524

/-- `char[a(floor(n/2))+3+n]` -/
def P15674330516858305625.Spec : Prop :=
  ∀ n, (P15674330516858305625.a n : ℤ) = A120524 (n + 1)

theorem P15674330516858305625.correct : P15674330516858305625.Spec := by
  intro n
  simp only [A120524, Nat.add_sub_cancel]

end A120524

/-! ## A120524.P16286680421804407044

`char[∑[a(∑[n]%n)+1]]` with `a(0)=0, a(1)=4`
-/

namespace A120524.P16286680421804407044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120524.P16286680421804407044

namespace A120524

/-- `char[∑[a(∑[n]%n)+1]]` -/
def P16286680421804407044.Spec : Prop :=
  ∀ n, (P16286680421804407044.a n : ℤ) = A120524 (n + 1)

end A120524

/-! ## A120524.P2717978092092316564

`char[a(round(n/2))+n+2]` with `a(0)=0, a(1)=0`
-/

namespace A120524.P2717978092092316564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120524.P2717978092092316564

namespace A120524

/-- `char[a(round(n/2))+n+2]` -/
def P2717978092092316564.Spec : Prop :=
  ∀ n, (P2717978092092316564.a n : ℤ) = A120524 (n + 1)

end A120524

/-! ## A120524.P999581097620002183

`char[floor(a(floor(n/2)))-(n-3-2*n)]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A120524.P999581097620002183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - ((n : ℤ) - 3 - (2 * n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120524.P999581097620002183

namespace A120524

/-- `char[floor(a(floor(n/2)))-(n-3-2*n)]` -/
def P999581097620002183.Spec : Prop :=
  ∀ n, (P999581097620002183.a n : ℤ) = A120524 (n + 1)

end A120524

/-! ## A120524.P7921742009995036081

`char[A120513(n+1)-1]`
-/

namespace A120524.P7921742009995036081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120513 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120524.P7921742009995036081

namespace A120524

/-- `char[A120513(n+1)-1]` -/
def P7921742009995036081.Spec : Prop :=
  ∀ n, (P7921742009995036081.a n : ℤ) = A120524 (n + 1)

end A120524

/-! ## A120524.P12350514215113971936

`char[A120512(n+1)+ceil(log2(n+1))-1]`
-/

namespace A120524.P12350514215113971936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120512 (n + 1) + ⌈Real.logb 2 (n + 1 : ℝ)⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120524.P12350514215113971936

namespace A120524

/-- `char[A120512(n+1)+ceil(log2(n+1))-1]` -/
def P12350514215113971936.Spec : Prop :=
  ∀ n, (P12350514215113971936.a n : ℤ) = A120524 (n + 1)

end A120524

/-! ## A120524.P6685775564032470200

`char[A023443(A120513(n+1))]`
-/

namespace A120524.P6685775564032470200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A120513 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120524.P6685775564032470200

namespace A120524

/-- `char[A023443(A120513(n+1))]` -/
def P6685775564032470200.Spec : Prop :=
  ∀ n, (P6685775564032470200.a n : ℤ) = A120524 (n + 1)

end A120524

/-! ## A120524.P17239375031135541290

`char[Δ[A120513(A152271(n))]]`
-/

namespace A120524.P17239375031135541290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120513 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120524.P17239375031135541290

namespace A120524

/-- `char[Δ[A120513(A152271(n))]]` -/
def P17239375031135541290.Spec : Prop :=
  ∀ n, (P17239375031135541290.a n : ℤ) = A120524 (n + 1)

end A120524

/-!
# A120525: First differences of successive generalized meta-Fibonacci numbers A120503.

The programs for A120525, the canonical program `A120525.P10593861233340877986` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120525 has offset 1).

The definition of A120525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120525.P10593861233340877986

`char[a(floor(n/3))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120525

/-- `char[a(floor(n/3))+n]` -/
def P10593861233340877986.Spec : Prop :=
  ∀ n, (P10593861233340877986.a n : ℤ) = A120525 (n + 1)

theorem P10593861233340877986.correct : P10593861233340877986.Spec := by
  intro n
  simp only [A120525, Nat.add_sub_cancel]

end A120525

/-! ## A120525.P7131868393065288634

`char[abs(a(n-1)+val(n, 3))]` with `a(0)=0`
-/

namespace A120525.P7131868393065288634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P7131868393065288634

namespace A120525

/-- `char[abs(a(n-1)+val(n, 3))]` -/
def P7131868393065288634.Spec : Prop :=
  ∀ n, (P7131868393065288634.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P4216949585478851939

`char[floor(a(n-1)+val(n, 3))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A120525.P4216949585478851939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P4216949585478851939

namespace A120525

/-- `char[floor(a(n-1)+val(n, 3))]` -/
def P4216949585478851939.Spec : Prop :=
  ∀ n, (P4216949585478851939.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P5222651029514500697

`char[ceil(a(n-1)+val(n, 3))]` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A120525.P5222651029514500697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P5222651029514500697

namespace A120525

/-- `char[ceil(a(n-1)+val(n, 3))]` -/
def P5222651029514500697.Spec : Prop :=
  ∀ n, (P5222651029514500697.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P7975378036956191720

`char[round(a(n-1)+val(n, 3))]` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A120525.P7975378036956191720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P7975378036956191720

namespace A120525

/-- `char[round(a(n-1)+val(n, 3))]` -/
def P7975378036956191720.Spec : Prop :=
  ∀ n, (P7975378036956191720.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P17993026371156509710

`char[∑[val(abs(1-n)+1, 3)]+n]`
-/

namespace A120525.P17993026371156509710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P17993026371156509710

namespace A120525

/-- `char[∑[val(abs(1-n)+1, 3)]+n]` -/
def P17993026371156509710.Spec : Prop :=
  ∀ n, (P17993026371156509710.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P1160239996230278367

`char[A004128(n)]`
-/

namespace A120525.P1160239996230278367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120525.P1160239996230278367

namespace A120525

/-- `char[A004128(n)]` -/
def P1160239996230278367.Spec : Prop :=
  ∀ n, (P1160239996230278367.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P5291292845407686068

`char[comp[A096346(n)]]`
-/

namespace A120525.P5291292845407686068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P5291292845407686068

namespace A120525

/-- `char[comp[A096346(n)]]` -/
def P5291292845407686068.Spec : Prop :=
  ∀ n, (P5291292845407686068.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P4028474791400561523

`char[A054861(n)+n]`
-/

namespace A120525.P4028474791400561523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120525.P4028474791400561523

namespace A120525

/-- `char[A054861(n)+n]` -/
def P4028474791400561523.Spec : Prop :=
  ∀ n, (P4028474791400561523.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P1174414969057590915

`char[n-A089643(n)]`
-/

namespace A120525.P1174414969057590915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120525.P1174414969057590915

namespace A120525

/-- `char[n-A089643(n)]` -/
def P1174414969057590915.Spec : Prop :=
  ∀ n, (P1174414969057590915.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P3956479059788857011

`log2(Δ[A080579(n+1)])/2`
-/

namespace A120525.P3956479059788857011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) / 2

end

end A120525.P3956479059788857011

namespace A120525

/-- `log2(Δ[A080579(n+1)])/2` -/
def P3956479059788857011.Spec : Prop :=
  ∀ n, P3956479059788857011.a n = (A120525 (n + 1) : ℝ)

end A120525

/-! ## A120525.P6385828288581384561

`A001221(Δ[A007844(n)]+1)`
-/

namespace A120525.P6385828288581384561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 1).toNat

end

end A120525.P6385828288581384561

namespace A120525

/-- `A001221(Δ[A007844(n)]+1)` -/
def P6385828288581384561.Spec : Prop :=
  ∀ n, P6385828288581384561.a n = A120525 (n + 1)

end A120525

/-! ## A120525.P13685605800851041441

`A001221(Δ[A080579(n+1)])`
-/

namespace A120525.P13685605800851041441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A120525.P13685605800851041441

namespace A120525

/-- `A001221(Δ[A080579(n+1)])` -/
def P13685605800851041441.Spec : Prop :=
  ∀ n, P13685605800851041441.a n = A120525 (n + 1)

end A120525

/-! ## A120525.P10219025206868357713

`A000045(log2(Δ[A080579(n+1)]))`
-/

namespace A120525.P10219025206868357713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A120525.P10219025206868357713

namespace A120525

/-- `A000045(log2(Δ[A080579(n+1)]))` -/
def P10219025206868357713.Spec : Prop :=
  ∀ n, P10219025206868357713.a n = A120525 (n + 1)

end A120525

/-! ## A120525.P15895950964414527399

`A120526(A274601(n+1))`
-/

namespace A120525.P15895950964414527399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120526 (A274601 (n + 1)).toNat

end

end A120525.P15895950964414527399

namespace A120525

/-- `A120526(A274601(n+1))` -/
def P15895950964414527399.Spec : Prop :=
  ∀ n, P15895950964414527399.a n = A120525 (n + 1)

end A120525

/-! ## A120525.P6207981448427096975

`char[∑[A168570(n+1)]]`
-/

namespace A120525.P6207981448427096975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120525.P6207981448427096975

namespace A120525

/-- `char[∑[A168570(n+1)]]` -/
def P6207981448427096975.Spec : Prop :=
  ∀ n, (P6207981448427096975.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P15569737649616654157

`char[∑[val(n+1, 3)]]`
-/

namespace A120525.P15569737649616654157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120525.P15569737649616654157

namespace A120525

/-- `char[∑[val(n+1, 3)]]` -/
def P15569737649616654157.Spec : Prop :=
  ∀ n, (P15569737649616654157.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P8223611826933866004

`char[A054861(n)]`
-/

namespace A120525.P8223611826933866004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120525.P8223611826933866004

namespace A120525

/-- `char[A054861(n)]` -/
def P8223611826933866004.Spec : Prop :=
  ∀ n, (P8223611826933866004.a n : ℤ) = A120525 (n + 1)

end A120525

/-! ## A120525.P3026248138786445298

`char[∑[A007949(n+1)]]`
-/

namespace A120525.P3026248138786445298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120525.P3026248138786445298

namespace A120525

/-- `char[∑[A007949(n+1)]]` -/
def P3026248138786445298.Spec : Prop :=
  ∀ n, (P3026248138786445298.a n : ℤ) = A120525 (n + 1)

end A120525

/-!
# A120526: First differences of successive generalized meta-Fibonacci numbers A120504.

The programs for A120526, the canonical program `A120526.P7857094356314118774` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120526 has offset 1).

The definition of A120526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120526.P7857094356314118774

`char[a(ceil(n/3))+n]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120526

/-- `char[a(ceil(n/3))+n]` -/
def P7857094356314118774.Spec : Prop :=
  ∀ n, (P7857094356314118774.a n : ℤ) = A120526 (n + 1)

theorem P7857094356314118774.correct : P7857094356314118774.Spec := by
  intro n
  simp only [A120526, Nat.add_sub_cancel]

end A120526

/-! ## A120526.P15564799239412697522

`char[a(floor(n/3))+1+n]` with `a(0)=0`
-/

namespace A120526.P15564799239412697522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120526.P15564799239412697522

namespace A120526

/-- `char[a(floor(n/3))+1+n]` -/
def P15564799239412697522.Spec : Prop :=
  ∀ n, (P15564799239412697522.a n : ℤ) = A120526 (n + 1)

end A120526

/-! ## A120526.P12981462345295008202

`char[∑[a(C(n, 3)%n)+1]]` with `a(0)=0, a(1)=2`
-/

namespace A120526.P12981462345295008202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (Nat.choose n 3 % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120526.P12981462345295008202

namespace A120526

/-- `char[∑[a(C(n, 3)%n)+1]]` -/
def P12981462345295008202.Spec : Prop :=
  ∀ n, (P12981462345295008202.a n : ℤ) = A120526 (n + 1)

end A120526

/-! ## A120526.P16031807595926250584

`char[Δ[n²]-(n-a(floor(n/3)))]` with `a(0)=0`
-/

namespace A120526.P16031807595926250584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((n : ℤ) - f1 ⌊(n : ℚ) / 3⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120526.P16031807595926250584

namespace A120526

/-- `char[Δ[n²]-(n-a(floor(n/3)))]` -/
def P16031807595926250584.Spec : Prop :=
  ∀ n, (P16031807595926250584.a n : ℤ) = A120526 (n + 1)

end A120526

/-! ## A120526.P8430624761536153939

`char[A080342(n+1)+A004128(n)]`
-/

namespace A120526.P8430624761536153939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) + A004128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120526.P8430624761536153939

namespace A120526

/-- `char[A080342(n+1)+A004128(n)]` -/
def P8430624761536153939.Spec : Prop :=
  ∀ n, (P8430624761536153939.a n : ℤ) = A120526 (n + 1)

end A120526

/-! ## A120526.P2950919365821146175

`A120525(A274601(n+1))`
-/

namespace A120526.P2950919365821146175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (A274601 (n + 1)).toNat

end

end A120526.P2950919365821146175

namespace A120526

/-- `A120525(A274601(n+1))` -/
def P2950919365821146175.Spec : Prop :=
  ∀ n, P2950919365821146175.a n = A120526 (n + 1)

end A120526

/-!
# A120527: First differences of successive generalized meta-Fibonacci numbers A120505.

The programs for A120527, the canonical program `A120527.P13081592750933442981` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120527 has offset 1).

The definition of A120527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120527.P13081592750933442981

`char[a(floor(n/3))+2+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120527

/-- `char[a(floor(n/3))+2+n]` -/
def P13081592750933442981.Spec : Prop :=
  ∀ n, (P13081592750933442981.a n : ℤ) = A120527 (n + 1)

theorem P13081592750933442981.correct : P13081592750933442981.Spec := by
  intro n
  simp only [A120527, Nat.add_sub_cancel]

end A120527

/-! ## A120527.P1010309261219277002

`char[a(ceil(n/3))+n+1]` with `a(0)=0, a(1)=0`
-/

namespace A120527.P1010309261219277002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 3⌉.toNat + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120527.P1010309261219277002

namespace A120527

/-- `char[a(ceil(n/3))+n+1]` -/
def P1010309261219277002.Spec : Prop :=
  ∀ n, (P1010309261219277002.a n : ℤ) = A120527 (n + 1)

end A120527

/-! ## A120527.P9203916716202477630

`char[∑[a(C(n, 3)%n)+1]]` with `a(0)=0, a(1)=3`
-/

namespace A120527.P9203916716202477630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (Nat.choose n 3 % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120527.P9203916716202477630

namespace A120527

/-- `char[∑[a(C(n, 3)%n)+1]]` -/
def P9203916716202477630.Spec : Prop :=
  ∀ n, (P9203916716202477630.a n : ℤ) = A120527 (n + 1)

end A120527

/-! ## A120527.P13062010972404035779

`char[abs(a(round((n-1)/3))+n+2)]` with `a(0)=0`
-/

namespace A120527.P13062010972404035779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120527.P13062010972404035779

namespace A120527

/-- `char[abs(a(round((n-1)/3))+n+2)]` -/
def P13062010972404035779.Spec : Prop :=
  ∀ n, (P13062010972404035779.a n : ℤ) = A120527 (n + 1)

end A120527

/-! ## A120527.P14634419176289104076

`char[round(a(round((n-1)/3))+n+2)]` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A120527.P14634419176289104076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120527.P14634419176289104076

namespace A120527

/-- `char[round(a(round((n-1)/3))+n+2)]` -/
def P14634419176289104076.Spec : Prop :=
  ∀ n, (P14634419176289104076.a n : ℤ) = A120527 (n + 1)

end A120527

/-! ## A120527.P3739669906131849590

`char[2-(n-a(floor(n/3))-2*n)]` with `a(0)=0`
-/

namespace A120527.P3739669906131849590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - ((n : ℤ) - f1 ⌊(n : ℚ) / 3⌋.toNat - (2 * n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120527.P3739669906131849590

namespace A120527

/-- `char[2-(n-a(floor(n/3))-2*n)]` -/
def P3739669906131849590.Spec : Prop :=
  ∀ n, (P3739669906131849590.a n : ℤ) = A120527 (n + 1)

end A120527

/-! ## A120527.P5304969231526068389

`char[A120516(n+1)-1]`
-/

namespace A120527.P5304969231526068389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120516 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120527.P5304969231526068389

namespace A120527

/-- `char[A120516(n+1)-1]` -/
def P5304969231526068389.Spec : Prop :=
  ∀ n, (P5304969231526068389.a n : ℤ) = A120527 (n + 1)

end A120527

/-! ## A120527.P8457570247380958441

`char[abs(a(A002264(n))+n+3)-1]` with `a(0)=0`
-/

namespace A120527.P8457570247380958441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |f1 (A002264 n).toNat + (n + 3 : ℤ)| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120527.P8457570247380958441

namespace A120527

/-- `char[abs(a(A002264(n))+n+3)-1]` -/
def P8457570247380958441.Spec : Prop :=
  ∀ n, (P8457570247380958441.a n : ℤ) = A120527 (n + 1)

end A120527

/-!
# A120528: First differences of successive generalized meta-Fibonacci numbers A120506.

The programs for A120528, the canonical program `A120528.P15774939439416066664` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120528 has offset 1).

The definition of A120528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120528.P15774939439416066664

`char[a(floor(n/3))+3+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120528

/-- `char[a(floor(n/3))+3+n]` -/
def P15774939439416066664.Spec : Prop :=
  ∀ n, (P15774939439416066664.a n : ℤ) = A120528 (n + 1)

theorem P15774939439416066664.correct : P15774939439416066664.Spec := by
  intro n
  simp only [A120528, Nat.add_sub_cancel]

end A120528

/-! ## A120528.P6754325443763083957

`char[∑[a(C(n, 3)%n)+1]]` with `a(0)=0, a(1)=4`
-/

namespace A120528.P6754325443763083957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (Nat.choose n 3 % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120528.P6754325443763083957

namespace A120528

/-- `char[∑[a(C(n, 3)%n)+1]]` -/
def P6754325443763083957.Spec : Prop :=
  ∀ n, (P6754325443763083957.a n : ℤ) = A120528 (n + 1)

end A120528

/-! ## A120528.P2506794618091304874

`char[a(round((n-1)/3))+n+3]` with `a(0)=0`
-/

namespace A120528.P2506794618091304874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120528.P2506794618091304874

namespace A120528

/-- `char[a(round((n-1)/3))+n+3]` -/
def P2506794618091304874.Spec : Prop :=
  ∀ n, (P2506794618091304874.a n : ℤ) = A120528 (n + 1)

end A120528

/-! ## A120528.P2156672434699385297

`char[A120517(n+1)-1]`
-/

namespace A120528.P2156672434699385297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120517 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120528.P2156672434699385297

namespace A120528

/-- `char[A120517(n+1)-1]` -/
def P2156672434699385297.Spec : Prop :=
  ∀ n, (P2156672434699385297.a n : ℤ) = A120528 (n + 1)

end A120528

/-! ## A120528.P5121089409610592561

`char[abs(a(A002264(n))+n+3)]` with `a(0)=0`
-/

namespace A120528.P5121089409610592561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A002264 n).toNat + (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120528.P5121089409610592561

namespace A120528

/-- `char[abs(a(A002264(n))+n+3)]` -/
def P5121089409610592561.Spec : Prop :=
  ∀ n, (P5121089409610592561.a n : ℤ) = A120528 (n + 1)

end A120528

/-! ## A120528.P14367584705460267770

`char[A260196(n+2)+A120517(n+1)]`
-/

namespace A120528.P14367584705460267770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A120517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120528.P14367584705460267770

namespace A120528

/-- `char[A260196(n+2)+A120517(n+1)]` -/
def P14367584705460267770.Spec : Prop :=
  ∀ n, (P14367584705460267770.a n : ℤ) = A120528 (n + 1)

end A120528

/-!
# A120529: First differences of successive generalized meta-Fibonacci numbers A120507.

The programs for A120529, the canonical program `A120529.P2832868892712792412` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120529 has offset 1).

The definition of A120529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120529.P2832868892712792412

`char[a(floor(n/4))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120529

/-- `char[a(floor(n/4))+n]` -/
def P2832868892712792412.Spec : Prop :=
  ∀ n, (P2832868892712792412.a n : ℤ) = A120529 (n + 1)

theorem P2832868892712792412.correct : P2832868892712792412.Spec := by
  intro n
  simp only [A120529, Nat.add_sub_cancel]

end A120529

/-! ## A120529.P4754643572796293201

`char[abs(a(n-1)+val(n, 4))]` with `a(0)=0`
-/

namespace A120529.P4754643572796293201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120529.P4754643572796293201

namespace A120529

/-- `char[abs(a(n-1)+val(n, 4))]` -/
def P4754643572796293201.Spec : Prop :=
  ∀ n, (P4754643572796293201.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P14844083272317900654

`char[-(a(n-1)+val(n, 4))]` with `a(0)=0`
-/

namespace A120529.P14844083272317900654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 (n - 1) + (SequenceMachineLib.valuation n 4 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120529.P14844083272317900654

namespace A120529

/-- `char[-(a(n-1)+val(n, 4))]` -/
def P14844083272317900654.Spec : Prop :=
  ∀ n, (P14844083272317900654.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P3624258016787495726

`char[floor(a(n-1)+val(n, 4))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A120529.P3624258016787495726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120529.P3624258016787495726

namespace A120529

/-- `char[floor(a(n-1)+val(n, 4))]` -/
def P3624258016787495726.Spec : Prop :=
  ∀ n, (P3624258016787495726.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P11139989958730698368

`char[ceil(a(n-1)+val(n, 4))]` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A120529.P11139989958730698368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120529.P11139989958730698368

namespace A120529

/-- `char[ceil(a(n-1)+val(n, 4))]` -/
def P11139989958730698368.Spec : Prop :=
  ∀ n, (P11139989958730698368.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P2954169189901313675

`char[round(a(n-1)+val(n, 4))]` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A120529.P2954169189901313675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120529.P2954169189901313675

namespace A120529

/-- `char[round(a(n-1)+val(n, 4))]` -/
def P2954169189901313675.Spec : Prop :=
  ∀ n, (P2954169189901313675.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P10529580926255513146

`char[A087069(n)]`
-/

namespace A120529.P10529580926255513146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120529.P10529580926255513146

namespace A120529

/-- `char[A087069(n)]` -/
def P10529580926255513146.Spec : Prop :=
  ∀ n, (P10529580926255513146.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P9623221847716127865

`char[∑[A244415(n+1)]]`
-/

namespace A120529.P9623221847716127865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120529.P9623221847716127865

namespace A120529

/-- `char[∑[A244415(n+1)]]` -/
def P9623221847716127865.Spec : Prop :=
  ∀ n, (P9623221847716127865.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P14706575594695685492

`char[A054893(n)]`
-/

namespace A120529.P14706575594695685492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120529.P14706575594695685492

namespace A120529

/-- `char[A054893(n)]` -/
def P14706575594695685492.Spec : Prop :=
  ∀ n, (P14706575594695685492.a n : ℤ) = A120529 (n + 1)

end A120529

/-! ## A120529.P13509789727590798516

`A003461(n)%A091799(n+1)`
-/

namespace A120529.P13509789727590798516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003461 n) (A091799 (n + 1))

end

end A120529.P13509789727590798516

namespace A120529

/-- `A003461(n)%A091799(n+1)` -/
def P13509789727590798516.Spec : Prop :=
  ∀ n, P13509789727590798516.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P4178302313663609866

`A182461(n)%A091799(n+1)`
-/

namespace A120529.P4178302313663609866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182461 n) (A091799 (n + 1))

end

end A120529.P4178302313663609866

namespace A120529

/-- `A182461(n)%A091799(n+1)` -/
def P4178302313663609866.Spec : Prop :=
  ∀ n, P4178302313663609866.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P13675403005856341950

`and(A091799(n+1), A305154(n))`
-/

namespace A120529.P13675403005856341950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091799 (n + 1)) (A305154 n)

end

end A120529.P13675403005856341950

namespace A120529

/-- `and(A091799(n+1), A305154(n))` -/
def P13675403005856341950.Spec : Prop :=
  ∀ n, P13675403005856341950.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P15463898513748365589

`and(A091799(n+1), A305155(n))`
-/

namespace A120529.P15463898513748365589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091799 (n + 1)) (A305155 n)

end

end A120529.P15463898513748365589

namespace A120529

/-- `and(A091799(n+1), A305155(n))` -/
def P15463898513748365589.Spec : Prop :=
  ∀ n, P15463898513748365589.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P1567667591312321609

`A305064(n)%A091799(n+1)`
-/

namespace A120529.P1567667591312321609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305064 n) (A091799 (n + 1))

end

end A120529.P1567667591312321609

namespace A120529

/-- `A305064(n)%A091799(n+1)` -/
def P1567667591312321609.Spec : Prop :=
  ∀ n, P1567667591312321609.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P3913750120901967119

`and(A091799(n+1), A305262(n))`
-/

namespace A120529.P3913750120901967119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091799 (n + 1)) (A305262 n)

end

end A120529.P3913750120901967119

namespace A120529

/-- `and(A091799(n+1), A305262(n))` -/
def P3913750120901967119.Spec : Prop :=
  ∀ n, P3913750120901967119.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P7913271886997998765

`and(A091799(n+1), A305269(n))`
-/

namespace A120529.P7913271886997998765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091799 (n + 1)) (A305269 n)

end

end A120529.P7913271886997998765

namespace A120529

/-- `and(A091799(n+1), A305269(n))` -/
def P7913271886997998765.Spec : Prop :=
  ∀ n, P7913271886997998765.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P96499677118252806

`A304519(n+1)%A091799(n+1)`
-/

namespace A120529.P96499677118252806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304519 (n + 1)) (A091799 (n + 1))

end

end A120529.P96499677118252806

namespace A120529

/-- `A304519(n+1)%A091799(n+1)` -/
def P96499677118252806.Spec : Prop :=
  ∀ n, P96499677118252806.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P7912722725864230208

`A304606(n+1)%A091799(n+1)`
-/

namespace A120529.P7912722725864230208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304606 (n + 1)) (A091799 (n + 1))

end

end A120529.P7912722725864230208

namespace A120529

/-- `A304606(n+1)%A091799(n+1)` -/
def P7912722725864230208.Spec : Prop :=
  ∀ n, P7912722725864230208.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P4825548904204325826

`and(A091799(n+1), A250655(n+1))`
-/

namespace A120529.P4825548904204325826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091799 (n + 1)) (A250655 (n + 1))

end

end A120529.P4825548904204325826

namespace A120529

/-- `and(A091799(n+1), A250655(n+1))` -/
def P4825548904204325826.Spec : Prop :=
  ∀ n, P4825548904204325826.a n = A120529 (n + 1)

end A120529

/-! ## A120529.P7836213437758158402

`A304388(n+1)%A091799(n+1)`
-/

namespace A120529.P7836213437758158402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304388 (n + 1)) (A091799 (n + 1))

end

end A120529.P7836213437758158402

namespace A120529

/-- `A304388(n+1)%A091799(n+1)` -/
def P7836213437758158402.Spec : Prop :=
  ∀ n, P7836213437758158402.a n = A120529 (n + 1)

end A120529

/-!
# A120530: First differences of successive generalized meta-Fibonacci numbers A120508.

The programs for A120530, the canonical program `A120530.P7873409400076462526` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120530 has offset 1).

The definition of A120530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120530.P4808358166950953431

`char[a(ceil(n/4))+n]` with `a(0)=0, a(1)=0`
-/

namespace A120530.P4808358166950953431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 4⌉.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120530.P4808358166950953431

namespace A120530

/-- `char[a(ceil(n/4))+n]` -/
def P4808358166950953431.Spec : Prop :=
  ∀ n, (P4808358166950953431.a n : ℤ) = A120530 (n + 1)

end A120530

/-! ## A120530.P5437173415926535858

`char[a(floor(n/4))+1+n]` with `a(0)=0`
-/

namespace A120530.P5437173415926535858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120530.P5437173415926535858

namespace A120530

/-- `char[a(floor(n/4))+1+n]` -/
def P5437173415926535858.Spec : Prop :=
  ∀ n, (P5437173415926535858.a n : ℤ) = A120530 (n + 1)

end A120530

/-! ## A120530.P5355043620801184092

`char[n-xor(-1, a(floor(n/4)))]` with `a(0)=0`
-/

namespace A120530.P5355043620801184092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - Int.xor (-1) (f1 ⌊(n : ℚ) / 4⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120530.P5355043620801184092

namespace A120530

/-- `char[n-xor(-1, a(floor(n/4)))]` -/
def P5355043620801184092.Spec : Prop :=
  ∀ n, (P5355043620801184092.a n : ℤ) = A120530 (n + 1)

end A120530

/-! ## A120530.P4210010790108762190

`char[Δ[n²]-(n-a(floor(n/4)))]` with `a(0)=0`
-/

namespace A120530.P4210010790108762190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((n : ℤ) - f1 ⌊(n : ℚ) / 4⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120530.P4210010790108762190

namespace A120530

/-- `char[Δ[n²]-(n-a(floor(n/4)))]` -/
def P4210010790108762190.Spec : Prop :=
  ∀ n, (P4210010790108762190.a n : ℤ) = A120530 (n + 1)

end A120530

/-! ## A120530.P8281142536552245189

`char[A020725(a(floor(n/4))+n)]` with `a(0)=0`
-/

namespace A120530.P8281142536552245189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A020725 (f1 ⌊(n : ℚ) / 4⌋.toNat + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120530.P8281142536552245189

namespace A120530

/-- `char[A020725(a(floor(n/4))+n)]` -/
def P8281142536552245189.Spec : Prop :=
  ∀ n, (P8281142536552245189.a n : ℤ) = A120530 (n + 1)

end A120530

/-! ## A120530.P7873409400076462526

`Δ[A120508(A028310(n))]^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120530

/-- `Δ[A120508(A028310(n))]^n` -/
def P7873409400076462526.Spec : Prop :=
  ∀ n, P7873409400076462526.a n = A120530 (n + 1)

theorem P7873409400076462526.correct : P7873409400076462526.Spec := by
  intro n
  simp only [A120530, Nat.add_sub_cancel]

end A120530

/-! ## A120530.P2159502726613625893

`char[∑[A263845(A154437(n))]-1]`
-/

namespace A120530.P2159502726613625893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (A154437 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120530.P2159502726613625893

namespace A120530

/-- `char[∑[A263845(A154437(n))]-1]` -/
def P2159502726613625893.Spec : Prop :=
  ∀ n, (P2159502726613625893.a n : ℤ) = A120530 (n + 1)

end A120530

/-! ## A120530.P11844010668039247303

`Δ[A120508(A000007(n)+n)]^n`
-/

namespace A120530.P11844010668039247303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120508 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A120530.P11844010668039247303

namespace A120530

/-- `Δ[A120508(A000007(n)+n)]^n` -/
def P11844010668039247303.Spec : Prop :=
  ∀ n, P11844010668039247303.a n = A120530 (n + 1)

end A120530

/-!
# A120531: First differences of successive generalized meta-Fibonacci numbers A120509.

The programs for A120531, the canonical program `A120531.P12890944402114686950` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120531 has offset 1).

The definition of A120531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120531.P12890944402114686950

`char[a(floor(n/4))+2+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120531

/-- `char[a(floor(n/4))+2+n]` -/
def P12890944402114686950.Spec : Prop :=
  ∀ n, (P12890944402114686950.a n : ℤ) = A120531 (n + 1)

theorem P12890944402114686950.correct : P12890944402114686950.Spec := by
  intro n
  simp only [A120531, Nat.add_sub_cancel]

end A120531

/-! ## A120531.P13815478821009495596

`char[a(ceil((n-3)/4))+n+2]` with `a(0)=0`
-/

namespace A120531.P13815478821009495596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat + (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120531.P13815478821009495596

namespace A120531

/-- `char[a(ceil((n-3)/4))+n+2]` -/
def P13815478821009495596.Spec : Prop :=
  ∀ n, (P13815478821009495596.a n : ℤ) = A120531 (n + 1)

end A120531

/-! ## A120531.P17728618911546217271

`char[1-(xor(n, -1)-a(floor(n/4)))]` with `a(0)=0`
-/

namespace A120531.P17728618911546217271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (Int.xor (n : ℤ) (-1) - f1 ⌊(n : ℚ) / 4⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120531.P17728618911546217271

namespace A120531

/-- `char[1-(xor(n, -1)-a(floor(n/4)))]` -/
def P17728618911546217271.Spec : Prop :=
  ∀ n, (P17728618911546217271.a n : ℤ) = A120531 (n + 1)

end A120531

/-! ## A120531.P16238455312153523345

`char[2-(n-a(floor(n/4))-2*n)]` with `a(0)=0`
-/

namespace A120531.P16238455312153523345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - ((n : ℤ) - f1 ⌊(n : ℚ) / 4⌋.toNat - (2 * n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120531.P16238455312153523345

namespace A120531

/-- `char[2-(n-a(floor(n/4))-2*n)]` -/
def P16238455312153523345.Spec : Prop :=
  ∀ n, (P16238455312153523345.a n : ℤ) = A120531 (n + 1)

end A120531

/-! ## A120531.P10181497703145568880

`C(char[a(A002265(n))+2+n]+1, 2)` with `a(0)=0`
-/

namespace A120531.P10181497703145568880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A002265 n).toNat + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) 2

end

end A120531.P10181497703145568880

namespace A120531

/-- `C(char[a(A002265(n))+2+n]+1, 2)` -/
def P10181497703145568880.Spec : Prop :=
  ∀ n, (P10181497703145568880.a n : ℤ) = A120531 (n + 1)

end A120531

/-!
# A120532: First differences of successive generalized meta-Fibonacci numbers A120510.

The programs for A120532, the canonical program `A120532.P3697898486774633613` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120532 has offset 1).

The definition of A120532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120532.P3697898486774633613

`char[a(floor(n/4))+3+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120532

/-- `char[a(floor(n/4))+3+n]` -/
def P3697898486774633613.Spec : Prop :=
  ∀ n, (P3697898486774633613.a n : ℤ) = A120532 (n + 1)

theorem P3697898486774633613.correct : P3697898486774633613.Spec := by
  intro n
  simp only [A120532, Nat.add_sub_cancel]

end A120532

/-! ## A120532.P15957035001186092207

`char[a(ceil((n-3)/4))+n+3]` with `a(0)=0`
-/

namespace A120532.P15957035001186092207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat + (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A120532.P15957035001186092207

namespace A120532

/-- `char[a(ceil((n-3)/4))+n+3]` -/
def P15957035001186092207.Spec : Prop :=
  ∀ n, (P15957035001186092207.a n : ℤ) = A120532 (n + 1)

end A120532

/-! ## A120532.P6811229651300982149

`char[4*n-(3*(n-1)-a(floor(n/4)))]` with `a(0)=0`
-/

namespace A120532.P6811229651300982149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 * n : ℤ) - (3 * ((n : ℤ) - 1) - f1 ⌊(n : ℚ) / 4⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120532.P6811229651300982149

namespace A120532

/-- `char[4*n-(3*(n-1)-a(floor(n/4)))]` -/
def P6811229651300982149.Spec : Prop :=
  ∀ n, (P6811229651300982149.a n : ℤ) = A120532 (n + 1)

end A120532

/-! ## A120532.P4987884969724504518

`char[A020710(a(floor(n/4))-(2-n))]` with `a(0)=0, a(1)=4`
-/

namespace A120532.P4987884969724504518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  A020710 (f1 ⌊(n : ℚ) / 4⌋.toNat - (2 - (n : ℤ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A120532.P4987884969724504518

namespace A120532

/-- `char[A020710(a(floor(n/4))-(2-n))]` -/
def P4987884969724504518.Spec : Prop :=
  ∀ n, (P4987884969724504518.a n : ℤ) = A120532 (n + 1)

end A120532

/-! ## A120532.P17616126305468361474

`A000007(n+1)+char[a(and(n, -4)/4)+n+3]` with `a(0)=0`
-/

namespace A120532.P17616126305468361474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-4) : ℚ) / 4)).toNat + (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120532.P17616126305468361474

namespace A120532

/-- `A000007(n+1)+char[a(and(n, -4)/4)+n+3]` -/
def P17616126305468361474.Spec : Prop :=
  ∀ n, P17616126305468361474.a n = A120532 (n + 1)

end A120532

/-!
# A120533: Primes having a prime number of digits.

The programs for A120533, the canonical program `A120533.P10358607324598335575` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120533 has offset 1).

The definition of A120533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120533.P3875189465772677049

`p?[n^gcd(2, n)+8]`
-/

namespace A120533.P3875189465772677049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120533.P3875189465772677049

namespace A120533

/-- `p?[n^gcd(2, n)+8]` -/
def P3875189465772677049.Spec : Prop :=
  ∀ n, (P3875189465772677049.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P8715921072262273232

`p?[(n+9)^C(2, n%4)]`
-/

namespace A120533.P8715921072262273232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 9) ^ Nat.choose 2 (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120533.P8715921072262273232

namespace A120533

/-- `p?[(n+9)^C(2, n%4)]` -/
def P8715921072262273232.Spec : Prop :=
  ∀ n, (P8715921072262273232.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P10358607324598335575

`p?[A065530(n+8)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120533

/-- `p?[A065530(n+8)]` -/
def P10358607324598335575.Spec : Prop :=
  ∀ n, P10358607324598335575.a n = A120533 (n + 1)

theorem P10358607324598335575.correct : P10358607324598335575.Spec := by
  intro n
  simp only [A120533, Nat.add_sub_cancel]

end A120533

/-! ## A120533.P14963198164103918341

`p?[A065679(n+8)]`
-/

namespace A120533.P14963198164103918341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120533.P14963198164103918341

namespace A120533

/-- `p?[A065679(n+8)]` -/
def P14963198164103918341.Spec : Prop :=
  ∀ n, P14963198164103918341.a n = A120533 (n + 1)

end A120533

/-! ## A120533.P334345927379011720

`∑{p}[A001248(n+5), #]`
-/

namespace A120533.P334345927379011720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120533.P334345927379011720

namespace A120533

/-- `∑{p}[A001248(n+5), #]` -/
def P334345927379011720.Spec : Prop :=
  ∀ n, (P334345927379011720.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P3131580641445401208

`p?[A139636(n+2)+3]`
-/

namespace A120533.P3131580641445401208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139636 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120533.P3131580641445401208

namespace A120533

/-- `p?[A139636(n+2)+3]` -/
def P3131580641445401208.Spec : Prop :=
  ∀ n, P3131580641445401208.a n = A120533 (n + 1)

end A120533

/-! ## A120533.P18238095521420242587

`p?[A190716(n+1)+7]`
-/

namespace A120533.P18238095521420242587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190716 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120533.P18238095521420242587

namespace A120533

/-- `p?[A190716(n+1)+7]` -/
def P18238095521420242587.Spec : Prop :=
  ∀ n, P18238095521420242587.a n = A120533 (n + 1)

end A120533

/-! ## A120533.P9537199111088377980

`p?[lt[1, A229964(n+1)]]`
-/

namespace A120533.P9537199111088377980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120533.P9537199111088377980

namespace A120533

/-- `p?[lt[1, A229964(n+1)]]` -/
def P9537199111088377980.Spec : Prop :=
  ∀ n, (P9537199111088377980.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P11916071618703936127

`lt[(A332003(n)+2)², n]`
-/

namespace A120533.P11916071618703936127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332003 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A120533.P11916071618703936127

namespace A120533

/-- `lt[(A332003(n)+2)², n]` -/
def P11916071618703936127.Spec : Prop :=
  ∀ n, (P11916071618703936127.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P16124887368193113456

`∑{p}[A000040(n+5)², #]`
-/

namespace A120533.P16124887368193113456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120533.P16124887368193113456

namespace A120533

/-- `∑{p}[A000040(n+5)², #]` -/
def P16124887368193113456.Spec : Prop :=
  ∀ n, (P16124887368193113456.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P5233683373929486429

`p?[record[A364788(2*n+1)]]`
-/

namespace A120533.P5233683373929486429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364788 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120533.P5233683373929486429

namespace A120533

/-- `p?[record[A364788(2*n+1)]]` -/
def P5233683373929486429.Spec : Prop :=
  ∀ n, P5233683373929486429.a n = A120533 (n + 1)

end A120533

/-! ## A120533.P9770660701568001834

`∏{p}[record[A006530(n+11)²], #]`
-/

namespace A120533.P9770660701568001834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 11) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120533.P9770660701568001834

namespace A120533

/-- `∏{p}[record[A006530(n+11)²], #]` -/
def P9770660701568001834.Spec : Prop :=
  ∀ n, (P9770660701568001834.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P12112326761173240465

`A000040(val(4^(n+3), 2)-(n+1))`
-/

namespace A120533.P12112326761173240465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (4 ^ (n + 3)) 2 - (n + 1))

end

end A120533.P12112326761173240465

namespace A120533

/-- `A000040(val(4^(n+3), 2)-(n+1))` -/
def P12112326761173240465.Spec : Prop :=
  ∀ n, P12112326761173240465.a n = A120533 (n + 1)

end A120533

/-! ## A120533.P12633967374749158797

`eq[A016112(n), A077958(n)]`
-/

namespace A120533.P12633967374749158797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120533.P12633967374749158797

namespace A120533

/-- `eq[A016112(n), A077958(n)]` -/
def P12633967374749158797.Spec : Prop :=
  ∀ n, (P12633967374749158797.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P8017664767449124072

`eq[A016112(n), A077959(n)]`
-/

namespace A120533.P8017664767449124072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120533.P8017664767449124072

namespace A120533

/-- `eq[A016112(n), A077959(n)]` -/
def P8017664767449124072.Spec : Prop :=
  ∀ n, (P8017664767449124072.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P13719454427874769609

`eq[A016112(n), A047753(n+1)]`
-/

namespace A120533.P13719454427874769609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120533.P13719454427874769609

namespace A120533

/-- `eq[A016112(n), A047753(n+1)]` -/
def P13719454427874769609.Spec : Prop :=
  ∀ n, (P13719454427874769609.a n : ℤ) = A120533 (n + 1)

end A120533

/-! ## A120533.P16235744560494266273

`eq[A174541(n+1), A182256(n)]`
-/

namespace A120533.P16235744560494266273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120533.P16235744560494266273

namespace A120533

/-- `eq[A174541(n+1), A182256(n)]` -/
def P16235744560494266273.Spec : Prop :=
  ∀ n, (P16235744560494266273.a n : ℤ) = A120533 (n + 1)

end A120533

/-!
# A120534: Untouchable 3-almost primes.

The programs for A120534, there is no canonical definition to state claims against.
-/

/-! ## A120534.P1425234005447198079

`∩[2*A001358(n+1), A005114(n+1)]`
-/

namespace A120534.P1425234005447198079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120534.P1425234005447198079

/-! ## A120534.P1352142620007074329

`∩[A005114(n+1), A075818(n+1)]`
-/

namespace A120534.P1352142620007074329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120534.P1352142620007074329

/-! ## A120534.P3571637226531107396

`∩[A005114(n+1), A014612(n+1)]`
-/

namespace A120534.P3571637226531107396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120534.P3571637226531107396

/-! ## A120534.P16201670385986110478

`∩[A005114(n+1), A217856(n+1)]`
-/

namespace A120534.P16201670385986110478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120534.P16201670385986110478

/-! ## A120534.P3151322814981739968

`∩[A005843(A001358(n+1)), A005114(n+1)]`
-/

namespace A120534.P3151322814981739968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120534.P3151322814981739968

/-! ## A120534.P17077870426979235487

`filter[A005114(n+1), A101605(#)]`
-/

namespace A120534.P17077870426979235487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A120534.P17077870426979235487

/-!
# A120535: Semiprimes that are not the sum of 3 pentagonal numbers.

The programs for A120535, there is no canonical definition to state claims against.
-/

/-! ## A120535.P6079392330384099950

`filter[A003679(n+1), A064911(#)]`
-/

namespace A120535.P6079392330384099950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A120535.P6079392330384099950

/-! ## A120535.P15895067079242147493

`∩[A001358(n+1), A003679(n+1)]`
-/

namespace A120535.P15895067079242147493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120535.P15895067079242147493

/-! ## A120535.P17217810218912440281

`∩[A003679(n+1), A176540(n+1)]`
-/

namespace A120535.P17217810218912440281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120535.P17217810218912440281

/-! ## A120535.P8448958514640781624

`∩[A003679(n+1), A339424(n+1)]`
-/

namespace A120535.P8448958514640781624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120535.P8448958514640781624

/-!
# A120536: Semiprimes which are the sum of two pentagonal numbers (A000326) in exactly two different ways.

The programs for A120536, there is no canonical definition to state claims against.
-/

/-! ## A120536.P14767867461369554592

`∩[A001358(n+1), A064826(n+1)]`
-/

namespace A120536.P14767867461369554592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120536.P14767867461369554592

/-! ## A120536.P8711472943552164096

`filter[A064826(n+1), A064911(#)]`
-/

namespace A120536.P8711472943552164096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A120536.P8711472943552164096

/-! ## A120536.P11736130390333863651

`filter[A064826(n+1), A280710(#)]`
-/

namespace A120536.P11736130390333863651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A120536.P11736130390333863651

/-! ## A120536.P1927424063160682407

`filter[A333012(n+1), A064911(#)]`
-/

namespace A120536.P1927424063160682407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A120536.P1927424063160682407

/-! ## A120536.P1290137460050879167

`filter[A333012(n+1), A280710(#)]`
-/

namespace A120536.P1290137460050879167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A120536.P1290137460050879167

/-!
# A120537: Sum of all matrix elements of n X n matrix M[i,j] = Lucas[i+j-1], (i,j = 1..n), where Lucas[n] = A000032[n] = Fibonacci[n-1] + Fibonacci[n+1].

The programs for A120537, the canonical program `A120537.P98384261132252796` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120537 has offset 1).

The definition of A120537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120537.P8389034412197926264

`floor(ϕ*∑[ϕ^n]²)`
-/

namespace A120537.P8389034412197926264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A120537.P8389034412197926264

namespace A120537

/-- `floor(ϕ*∑[ϕ^n]²)` -/
def P8389034412197926264.Spec : Prop :=
  ∀ n, P8389034412197926264.a n = A120537 (n + 1)

end A120537

/-! ## A120537.P6293663785070823420

`A097039(n)+A023861(2*n+1)`
-/

namespace A120537.P6293663785070823420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097039 n + A023861 (2 * n + 1)

end

end A120537.P6293663785070823420

namespace A120537

/-- `A097039(n)+A023861(2*n+1)` -/
def P6293663785070823420.Spec : Prop :=
  ∀ n, P6293663785070823420.a n = A120537 (n + 1)

end A120537

/-! ## A120537.P98384261132252796

`∑[A005248(n+2)-A022112(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120537

/-- `∑[A005248(n+2)-A022112(n+1)]` -/
def P98384261132252796.Spec : Prop :=
  ∀ n, P98384261132252796.a n = A120537 (n + 1)

theorem P98384261132252796.correct : P98384261132252796.Spec := by
  intro n
  simp only [A120537, Nat.add_sub_cancel]

end A120537

/-! ## A120537.P1102883234792748478

`A027181(2*n+1)-2*A027181(n)`
-/

namespace A120537.P1102883234792748478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (2 * n + 1) - 2 * A027181 n

end

end A120537.P1102883234792748478

namespace A120537

/-- `A027181(2*n+1)-2*A027181(n)` -/
def P1102883234792748478.Spec : Prop :=
  ∀ n, P1102883234792748478.a n = A120537 (n + 1)

end A120537

/-! ## A120537.P12234960281811040314

`∑[A014217(2*(n+2))-A022319(n+1)]`
-/

namespace A120537.P12234960281811040314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * (n + 2)) - A022319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120537.P12234960281811040314

namespace A120537

/-- `∑[A014217(2*(n+2))-A022319(n+1)]` -/
def P12234960281811040314.Spec : Prop :=
  ∀ n, P12234960281811040314.a n = A120537 (n + 1)

end A120537

/-! ## A120537.P13281028470415336638

`A023548(2*(n+1))-2*A023548(n+1)`
-/

namespace A120537.P13281028470415336638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (2 * (n + 1)) - 2 * A023548 (n + 1)

end

end A120537.P13281028470415336638

namespace A120537

/-- `A023548(2*(n+1))-2*A023548(n+1)` -/
def P13281028470415336638.Spec : Prop :=
  ∀ n, P13281028470415336638.a n = A120537 (n + 1)

end A120537

/-!
# A120538: Sequence that except for initial 1 is the complement of its inverse Euler transform.

The programs for A120538, there is no canonical definition to state claims against.
-/

/-! ## A120538.P1801172065420165173

`A000006(A287275(n+2)+A117078(3*n+1))`
-/

namespace A120538.P1801172065420165173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A287275 (n + 2) + A117078 (3 * n + 1)).toNat

end

end A120538.P1801172065420165173

/-! ## A120538.P3476316678677961427

`A105356(A243082(n+1))`
-/

namespace A120538.P3476316678677961427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A243082 (n + 1)).toNat

end

end A120538.P3476316678677961427

/-! ## A120538.P8390994616245604659

`A105356(A300520(n+1))`
-/

namespace A120538.P8390994616245604659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A300520 (n + 1)).toNat

end

end A120538.P8390994616245604659

/-!
# A120539: Sequence that except for initial 1 is the complement of its inverse binomial transform.

The programs for A120539, there is no canonical definition to state claims against.
-/

/-! ## A120539.P16571062149396008774

`∑[∑[A243283(A087131(n))]]`
-/

namespace A120539.P16571062149396008774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A087131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120539.P16571062149396008774

/-! ## A120539.P14186874931126016948

`A047859(n)-A001222(A025547(n+1))`
-/

namespace A120539.P14186874931126016948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n - A001222 (A025547 (n + 1)).toNat

end

end A120539.P14186874931126016948

/-! ## A120539.P10910676198953179677

`A325835(A325856(n))+A241828(3*n)`
-/

namespace A120539.P10910676198953179677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325835 (A325856 n).toNat + A241828 (3 * n)

end

end A120539.P10910676198953179677

/-!
# A120543: Bond series for second parallel moment of hexagonal net.

The programs for A120543, there is no canonical definition to state claims against.
-/

/-! ## A120543.P4873308261835302128

`2^ceil(n/2)*A000005(10^n)`
-/

namespace A120543.P4873308261835302128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A000005 (10 ^ n) : ℚ)

end

end A120543.P4873308261835302128

/-! ## A120543.P5558482666146078816

`A359680(A173063(n+1)+n)`
-/

namespace A120543.P5558482666146078816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359680 (A173063 (n + 1) + (n : ℤ)).toNat

end

end A120543.P5558482666146078816

/-!
# A120545: Bond percolation series for Kagome lattice.

The programs for A120545, there is no canonical definition to state claims against.
-/

/-! ## A120545.P3127099123674659995

`A172471(3^n)+∑[A116601(n)]`
-/

namespace A120545.P3127099123674659995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (3 ^ n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120545.P3127099123674659995

/-! ## A120545.P12978986051314325673

`A005041(A077814(n)+A011769(n))`
-/

namespace A120545.P12978986051314325673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A077814 n + A011769 n).toNat

end

end A120545.P12978986051314325673

/-! ## A120545.P6900002850254605133

`A005041(A116601(n)+A011769(n))`
-/

namespace A120545.P6900002850254605133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A116601 n + A011769 n).toNat

end

end A120545.P6900002850254605133

/-! ## A120545.P11810380429455083226

`A208354(n)+A003056(A293005(n))`
-/

namespace A120545.P11810380429455083226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + A003056 (A293005 n).toNat

end

end A120545.P11810380429455083226

/-! ## A120545.P11624364792561491223

`A005041(or(A003056(n), A011769(n)))`
-/

namespace A120545.P11624364792561491223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.lor (A003056 n) (A011769 n)).toNat

end

end A120545.P11624364792561491223

/-!
# A120546: Bond series for first parallel moment of Kagome lattice.

The programs for A120546, there is no canonical definition to state claims against.
-/

/-! ## A120546.P9773476084893442683

`∑[A351005(A017377(n))]`
-/

namespace A120546.P9773476084893442683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120546.P9773476084893442683

/-! ## A120546.P16127090225131530728

`∑[A351005(comp[A007095(n)])]`
-/

namespace A120546.P16127090225131530728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120546.P16127090225131530728

/-!
# A120548: Bond series for second perpendicular moment of Kagome lattice.

The programs for A120548, there is no canonical definition to state claims against.
-/

/-! ## A120548.P9780395963230428

`2*A112671(A342096(3*n+5))`
-/

namespace A120548.P9780395963230428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112671 (A342096 (3 * n + 5)).toNat

end

end A120548.P9780395963230428

/-!
# A120549: Site percolation series for Kagome lattice.

The programs for A120549, there is no canonical definition to state claims against.
-/

/-! ## A120549.P14965403515399067650

`A014589(n)+A003056(A182780(n))`
-/

namespace A120549.P14965403515399067650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n + A003056 (A182780 n).toNat

end

end A120549.P14965403515399067650

/-! ## A120549.P7172912821442378260

`A130137(n+1)-A324328(A007022(n+1))`
-/

namespace A120549.P7172912821442378260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 (n + 1) - A324328 (A007022 (n + 1)).toNat

end

end A120549.P7172912821442378260

/-! ## A120549.P6402648476668257672

`∑[A238884(A239329(n+1)+1)]`
-/

namespace A120549.P6402648476668257672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238884 (A239329 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120549.P6402648476668257672

/-! ## A120549.P2650341723337980144

`A105367(A002387(n))+A028445(n)`
-/

namespace A120549.P2650341723337980144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105367 (A002387 n).toNat + A028445 n

end

end A120549.P2650341723337980144

/-! ## A120549.P3677567860415985301

`A105367(A093156(n+1))+A028445(n)`
-/

namespace A120549.P3677567860415985301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105367 (A093156 (n + 1)).toNat + A028445 n

end

end A120549.P3677567860415985301

/-!
# A120550: Site series for first parallel moment of Kagome lattice.

The programs for A120550, there is no canonical definition to state claims against.
-/

/-! ## A120550.P13292814452866023035

`A178702(A370756(n+2))`
-/

namespace A120550.P13292814452866023035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178702 (A370756 (n + 2)).toNat

end

end A120550.P13292814452866023035

/-! ## A120550.P4651486859270546406

`A328596(A020712(n))-6`
-/

namespace A120550.P4651486859270546406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A020712 n).toNat - 6

end

end A120550.P4651486859270546406

/-!
# A120552: Site series for second perpendicular moment of Kagome lattice.

The programs for A120552, there is no canonical definition to state claims against.
-/

/-! ## A120552.P2255369635883316849

`A080606(A084068(n+2)*A321721(2*n))`
-/

namespace A120552.P2255369635883316849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (A084068 (n + 2) * A321721 (2 * n)).toNat

end

end A120552.P2255369635883316849

/-!
# A120561: Numbers n such that Lucas(prime(n)) is prime, where Lucas = A000032.

The programs for A120561, there is no canonical definition to state claims against.
-/

/-! ## A120561.P12737929455065364096

`A000720(A168033(n+1))`
-/

namespace A120561.P12737929455065364096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168033 (n + 1)).toNat

end

end A120561.P12737929455065364096

/-! ## A120561.P12371805304980363631

`record[A061395(A059791(n+1))]`
-/

namespace A120561.P12371805304980363631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A059791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120561.P12371805304980363631

/-! ## A120561.P16629581930143075861

`A000720(p?[A001606(n+1)])`
-/

namespace A120561.P16629581930143075861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120561.P16629581930143075861

/-! ## A120561.P13931885482564478226

`A000720(p?[A059791(n+1)])`
-/

namespace A120561.P13931885482564478226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120561.P13931885482564478226

/-! ## A120561.P13925647103582009967

`A061395(p?[A001606(n+1)])`
-/

namespace A120561.P13925647103582009967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120561.P13925647103582009967

/-!
# A120562: Sum of binomial coefficients binomial(i+j, i) modulo 2 over all pairs (i,j) of positive integers satisfying 3i+j=n.

The programs for A120562, there is no canonical definition to state claims against.
-/

/-! ## A120562.P9005174961700448319

`A214126(n+1)-A082498(n)`
-/

namespace A120562.P9005174961700448319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214126 (n + 1) - A082498 n

end

end A120562.P9005174961700448319

/-! ## A120562.P9736094567779553914

`A214127(n+1)-A214126(n+1)`
-/

namespace A120562.P9736094567779553914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214127 (n + 1) - A214126 (n + 1)

end

end A120562.P9736094567779553914

/-! ## A120562.P12269009302191884395

`A082498(A004762(n+2))`
-/

namespace A120562.P12269009302191884395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004762 (n + 2)).toNat

end

end A120562.P12269009302191884395

/-! ## A120562.P548618653515464799

`A082498(A092754(n+1))`
-/

namespace A120562.P548618653515464799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A092754 (n + 1)).toNat

end

end A120562.P548618653515464799

/-! ## A120562.P15810834441874019483

`A082498(A004761(n+2))`
-/

namespace A120562.P15810834441874019483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004761 (n + 2)).toNat

end

end A120562.P15810834441874019483

/-! ## A120562.P645830853519719093

`A082498(A171757(n+1)/2)`
-/

namespace A120562.P645830853519719093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (SequenceMachineLib.roundAway ((A171757 (n + 1) : ℚ) / 2)).toNat

end

end A120562.P645830853519719093

/-! ## A120562.P1319682555720760545

`A082498((A206332(n+1)+n)/2)`
-/

namespace A120562.P1319682555720760545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (SequenceMachineLib.roundAway ((A206332 (n + 1) + (n : ℤ) : ℚ) / 2)).toNat

end

end A120562.P1319682555720760545

/-! ## A120562.P17834155399037751770

`A082498(A171757(n+1))`
-/

namespace A120562.P17834155399037751770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A171757 (n + 1)).toNat

end

end A120562.P17834155399037751770

/-! ## A120562.P4542358641010584487

`A082498(A206332(n+1)+n)`
-/

namespace A120562.P4542358641010584487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A206332 (n + 1) + (n : ℤ)).toNat

end

end A120562.P4542358641010584487

/-! ## A120562.P3482107890100550523

`A082498(A004760(n+2)+n)`
-/

namespace A120562.P3482107890100550523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004760 (n + 2) + (n : ℤ)).toNat

end

end A120562.P3482107890100550523

/-! ## A120562.P14338330411047203751

`A082498(A004757(n+1)-1)-A082498(n)`
-/

namespace A120562.P14338330411047203751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004757 (n + 1) - 1).toNat - A082498 n

end

end A120562.P14338330411047203751

/-! ## A120562.P15044502841117631880

`A082498(record[A153142(n+1)]+n)`
-/

namespace A120562.P15044502841117631880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A120562.P15044502841117631880

/-!
# A120565: Maximum over all planar partitions of n of the number of ways the partition can be shrunk by removing a single element.

The programs for A120565, there is no canonical definition to state claims against.
-/

/-! ## A120565.P14500257204730039010

`∑[char[∑[C(comp[∑[n]]-n, 2)-n]]]`
-/

namespace A120565.P14500257204730039010
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P14500257204730039010

/-! ## A120565.P7323084391176252031

`∑[char[∑[∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2))]]]`
-/

namespace A120565.P7323084391176252031
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P7323084391176252031

/-! ## A120565.P15555204421574972613

`∑[char[∑[eq[0, floor(sqrt(4*n+1))%2]-2*n]]]`
-/

namespace A120565.P15555204421574972613
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f4 j = f5 j) n : ℤ) - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P15555204421574972613

/-! ## A120565.P17250952648370341014

`∑[char[∑[ceil((n²+1+n)%(comp[C(n, 2)]+1)/2)]]]`
-/

namespace A120565.P17250952648370341014
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + 1) : ℕ) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P17250952648370341014

/-! ## A120565.P3555180601498399432

`∑[char[∑[(n-comp[∑[n]])²-eq[1, floor(2*sqrt(n))%2]]]]`
-/

namespace A120565.P3555180601498399432
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun j => (f6 j : ℤ) = f7 j) n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P3555180601498399432

/-! ## A120565.P11830400192740797990

`∑[char[A212013(n+1)]]`
-/

namespace A120565.P11830400192740797990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P11830400192740797990

/-! ## A120565.P3464070140313861674

`∑[char[A121924(n+2)]]`
-/

namespace A120565.P3464070140313861674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121924 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P3464070140313861674

/-! ## A120565.P15428253646989839730

`∑[char[∑[A004736(n+1)]]]`
-/

namespace A120565.P15428253646989839730
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P15428253646989839730

/-! ## A120565.P16846555620312365955

`∑[char[∑[A025581(n+1)]]]`
-/

namespace A120565.P16846555620312365955
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P16846555620312365955

/-! ## A120565.P2400285578023303178

`∑[char[∑[A167289(n+1)]]]`
-/

namespace A120565.P2400285578023303178
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120565.P2400285578023303178

/-!
# A120566: G.f. satisfies: A(x) = A(A(x)) - x*A(A(A(x))), with A(0) = 0.

The programs for A120566, there is no canonical definition to state claims against.
-/

/-! ## A120566.P9326428030874283945

`A358528(2*a(n-2))-4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A120566.P9326428030874283945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A358528 (2 * a (n - 2)).toNat - 4

end

end A120566.P9326428030874283945

/-! ## A120566.P4240400465290512699

`A319899(∏[n-a(n-1)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A120566.P4240400465290512699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120566.P4240400465290512699

/-! ## A120566.P18080508305632240696

`A160512(A003162(n))`
-/

namespace A120566.P18080508305632240696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160512 (A003162 n).toNat

end

end A120566.P18080508305632240696

/-!
# A120567: G.f. A(x) satisfies: A(x) = x + x*A(x) + x^2*A(A(x)) + x^3*A(A(A(x))) +...

The programs for A120567, there is no canonical definition to state claims against.
-/

/-! ## A120567.P2141910505957737826

`A120568(∑[n+1]+2)`
-/

namespace A120567.P2141910505957737826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120568 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A120567.P2141910505957737826

/-! ## A120567.P5340510408055419829

`abs(record[Δ[A120568(n+1)]])`
-/

namespace A120567.P5340510408055419829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120568 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A120567.P5340510408055419829

/-! ## A120567.P9241281530261523237

`A007318(∑[n])*A120568(A167499(n)-3)`
-/

namespace A120567.P9241281530261523237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A120568 (A167499 n - 3).toNat

end

end A120567.P9241281530261523237

/-! ## A120567.P16080659169490431938

`A120568(A167499(n)-3)/A007318(C(n, 2))`
-/

namespace A120567.P16080659169490431938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120568 (A167499 n - 3).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A120567.P16080659169490431938

/-! ## A120567.P16423549080471481863

`A007318(C(2, n))²*A120568(A167499(n)-3)`
-/

namespace A120567.P16423549080471481863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A120568 (A167499 n - 3).toNat

end

end A120567.P16423549080471481863

/-!
# A120568: Triangle, read by rows, where the k-th column equals the k-th self-composition of column 1 (A120567) for k>=0, such that row sums equal column 1.

The programs for A120568, there is no canonical definition to state claims against.
-/

/-! ## A120568.P12597814758870636469

`A120401(A067347(n))-char[17]`
-/

namespace A120568.P12597814758870636469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A067347 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120568.P12597814758870636469

/-! ## A120568.P5237926753276983450

`A189233(n)-A056620(A318191(n))`
-/

namespace A120568.P5237926753276983450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n - A056620 (A318191 n).toNat

end

end A120568.P5237926753276983450

/-! ## A120568.P2545848590768062098

`A321960(n)-A056620(A318191(n))`
-/

namespace A120568.P2545848590768062098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321960 n - A056620 (A318191 n).toNat

end

end A120568.P2545848590768062098

/-! ## A120568.P574334317578841461

`A111660(2*A189233(n))`
-/

namespace A120568.P574334317578841461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A189233 n).toNat

end

end A120568.P574334317578841461

/-! ## A120568.P3667304129920891286

`A111660(2*A321960(n))`
-/

namespace A120568.P3667304129920891286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A321960 n).toNat

end

end A120568.P3667304129920891286

/-!
# A120569: Number of isosceles triangles with integer sides and inradius n.

The programs for A120569, there is no canonical definition to state claims against.
-/

/-! ## A120569.P12923282716286821557

`A290090(A290090(2*(n+2))^A152492(n+1))`
-/

namespace A120569.P12923282716286821557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290090 (SequenceMachineLib.roundAway ((A290090 (2 * (n + 2)) : ℚ) ^ (A152492 (n + 1) : ℤ))).toNat

end

end A120569.P12923282716286821557

/-! ## A120569.P13884238224503970698

`A347653(A347663(3*n+1))%A347627(n+1)`
-/

namespace A120569.P13884238224503970698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347653 (A347663 (3 * n + 1)).toNat) (A347627 (n + 1))

end

end A120569.P13884238224503970698

/-! ## A120569.P16622568885381332227

`A175725(4*n)%A348001(n+1)`
-/

namespace A120569.P16622568885381332227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175725 (4 * n)) (A348001 (n + 1))

end

end A120569.P16622568885381332227

/-! ## A120569.P8178746456818712861

`A002487(A243046(n+1)^A212363(n))`
-/

namespace A120569.P8178746456818712861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A243046 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A120569.P8178746456818712861

/-! ## A120569.P386830984393224820

`A004396(A243046(n+1)^A212363(n))`
-/

namespace A120569.P386830984393224820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A243046 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A120569.P386830984393224820

/-!
# A120570: Smallest perimeter of triangles with integer sides and inradius n.

The programs for A120570, there is no canonical definition to state claims against.
-/

/-! ## A120570.P10052776161677143909

`2/(n+1)*A120572(n+1)`
-/

namespace A120570.P10052776161677143909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A120572 (n + 1) : ℚ)

end

end A120570.P10052776161677143909

/-! ## A120570.P10084254225511517679

`(A120572(n+1)+A120572(n+1))/A000027(n+1)`
-/

namespace A120570.P10084254225511517679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120572 (n + 1) + A120572 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A120570.P10084254225511517679

/-! ## A120570.P11385937540441640963

`A004277(A120572(n+1)/(n+1))`
-/

namespace A120570.P11385937540441640963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A120572 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A120570.P11385937540441640963

/-! ## A120570.P12017477107303239821

`A005843(A120572(n+1)/(n+1))`
-/

namespace A120570.P12017477107303239821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A120572 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A120570.P12017477107303239821

/-! ## A120570.P10413389574845262436

`A163300(A120572(n+1)/(n+1))`
-/

namespace A120570.P10413389574845262436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (SequenceMachineLib.roundAway ((A120572 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A120570.P10413389574845262436

/-!
# A120571: 2n^4+6n^2+4 = 2(n^2+1)(n^2+2).

The programs for A120571, the canonical program `A120571.P11642398327244731010` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120571 has offset 1).

The definition of A120571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*((n+1)²+1)*((n+1)²+2)` (program `A120571.P11642398327244731010`, by `A120571.P11642398327244731010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120571.P11642398327244731010

`2*((n+1)²+1)*((n+1)²+2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120571

/-- `2*((n+1)²+1)*((n+1)²+2)` -/
def P11642398327244731010.Spec : Prop :=
  ∀ n, (P11642398327244731010.a n : ℤ) = A120571 (n + 1)

theorem P11642398327244731010.correct : P11642398327244731010.Spec := by
  intro n
  simp only [A120571, Nat.add_sub_cancel]

end A120571

/-! ## A120571.P2884867163349731669

`2*(n+1)^4+6*(n+1)²+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120571.P2884867163349731669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 4 + 6 * (n + 1) ^ 2 + 4

end

end A120571.P2884867163349731669

namespace A120571

/-- `2*(n+1)^4+6*(n+1)²+4` -/
def P2884867163349731669.Spec : Prop :=
  ∀ n, (P2884867163349731669.a n : ℤ) = A120571 (n + 1)

theorem P2884867163349731669.correct : P2884867163349731669.Spec := by
  intro n
  simp only [A120571, Nat.add_sub_cancel, A120571.P2884867163349731669.a, A120571.P11642398327244731010.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120571

/-! ## A120571.P14167726681900940615

`lcm(4, C((n+1)²+2, 2))`
-/

namespace A120571.P14167726681900940615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.choose ((n + 1) ^ 2 + 2) 2)

end

end A120571.P14167726681900940615

namespace A120571

/-- `lcm(4, C((n+1)²+2, 2))` -/
def P14167726681900940615.Spec : Prop :=
  ∀ n, (P14167726681900940615.a n : ℤ) = A120571 (n + 1)

end A120571

/-! ## A120571.P408110188348078282

`lcm(4, A045896((n+1)²))`
-/

namespace A120571.P408110188348078282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A045896 ((n + 1) ^ 2))

end

end A120571.P408110188348078282

namespace A120571

/-- `lcm(4, A045896((n+1)²))` -/
def P408110188348078282.Spec : Prop :=
  ∀ n, (P408110188348078282.a n : ℤ) = A120571 (n + 1)

end A120571

/-! ## A120571.P16829749611329171752

`A046092((n+1)²+1)`
-/

namespace A120571.P16829749611329171752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 ((n + 1) ^ 2 + 1)

end

end A120571.P16829749611329171752

namespace A120571

/-- `A046092((n+1)²+1)` -/
def P16829749611329171752.Spec : Prop :=
  ∀ n, P16829749611329171752.a n = A120571 (n + 1)

end A120571

/-! ## A120571.P5901548445022614404

`A061726((n+1)²+1)`
-/

namespace A120571.P5901548445022614404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061726 ((n + 1) ^ 2 + 1)

end

end A120571.P5901548445022614404

namespace A120571

/-- `A061726((n+1)²+1)` -/
def P5901548445022614404.Spec : Prop :=
  ∀ n, P5901548445022614404.a n = A120571 (n + 1)

end A120571

/-! ## A120571.P6598717214529202994

`A106232((n+1)²+2)`
-/

namespace A120571.P6598717214529202994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 ((n + 1) ^ 2 + 2)

end

end A120571.P6598717214529202994

namespace A120571

/-- `A106232((n+1)²+2)` -/
def P6598717214529202994.Spec : Prop :=
  ∀ n, P6598717214529202994.a n = A120571 (n + 1)

end A120571

/-! ## A120571.P16668096506188092850

`A182455(2*(n+1)²)`
-/

namespace A120571.P16668096506188092850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 (2 * (n + 1) ^ 2)

end

end A120571.P16668096506188092850

namespace A120571

/-- `A182455(2*(n+1)²)` -/
def P16668096506188092850.Spec : Prop :=
  ∀ n, P16668096506188092850.a n = A120571 (n + 1)

end A120571

/-! ## A120571.P2750942952384300790

`A033691(A005893(n+1))`
-/

namespace A120571.P2750942952384300790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033691 (A005893 (n + 1)).toNat

end

end A120571.P2750942952384300790

namespace A120571

/-- `A033691(A005893(n+1))` -/
def P2750942952384300790.Spec : Prop :=
  ∀ n, P2750942952384300790.a n = A120571 (n + 1)

end A120571

/-! ## A120571.P6766764462950411316

`A007590(A093328(n+1))`
-/

namespace A120571.P6766764462950411316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A093328 (n + 1)).toNat

end

end A120571.P6766764462950411316

namespace A120571

/-- `A007590(A093328(n+1))` -/
def P6766764462950411316.Spec : Prop :=
  ∀ n, P6766764462950411316.a n = A120571 (n + 1)

end A120571

/-!
# A120572: Smallest area of any triangle with integer sides a <= b <= c and inradius n.

The programs for A120572, there is no canonical definition to state claims against.
-/

/-! ## A120572.P11489173011240678327

`(n+1)/2*A120570(n+1)`
-/

namespace A120572.P11489173011240678327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A120570 (n + 1) : ℚ)

end

end A120572.P11489173011240678327

/-! ## A120572.P9634300639261797991

`(n+1)*A004525(A120570(n+1))`
-/

namespace A120572.P9634300639261797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004525 (A120570 (n + 1)).toNat

end

end A120572.P9634300639261797991

/-! ## A120572.P16312505016223511750

`A000027(n+1)*A025480(A120570(n+1))`
-/

namespace A120572.P16312505016223511750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A025480 (A120570 (n + 1)).toNat

end

end A120572.P16312505016223511750

/-! ## A120572.P10817581056886464600

`A004526(A120570(n+1))*A008619(2*n)`
-/

namespace A120572.P10817581056886464600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A120570 (n + 1)).toNat * A008619 (2 * n)

end

end A120572.P10817581056886464600

/-! ## A120572.P12036332819709379937

`A008619(A005408(n))*A025480(A120570(n+1))`
-/

namespace A120572.P12036332819709379937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 n).toNat * A025480 (A120570 (n + 1)).toNat

end

end A120572.P12036332819709379937

/-!
# A120573: a(n) = n^5 + 3*n^3 + 2*n = n*(n^2 + 1)*(n^2 + 2).

The programs for A120573, the canonical program `A120573.P7916255503859127282` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120573 has offset 1).

The definition of A120573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+1)²+1)*((n+1)²+2)` (program `A120573.P7916255503859127282`, by `A120573.P7916255503859127282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120573.P7916255503859127282

`(n+1)*((n+1)²+1)*((n+1)²+2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120573

/-- `(n+1)*((n+1)²+1)*((n+1)²+2)` -/
def P7916255503859127282.Spec : Prop :=
  ∀ n, (P7916255503859127282.a n : ℤ) = A120573 (n + 1)

theorem P7916255503859127282.correct : P7916255503859127282.Spec := by
  intro n
  simp only [A120573, Nat.add_sub_cancel]

end A120573

/-! ## A120573.P18216299197686892735

`(n+1)^5+3*(n+1)^3+2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120573.P18216299197686892735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 + 3 * (n + 1) ^ 3 + 2 * (n + 1)

end

end A120573.P18216299197686892735

namespace A120573

/-- `(n+1)^5+3*(n+1)^3+2*(n+1)` -/
def P18216299197686892735.Spec : Prop :=
  ∀ n, (P18216299197686892735.a n : ℤ) = A120573 (n + 1)

theorem P18216299197686892735.correct : P18216299197686892735.Spec := by
  intro n
  simp only [A120573, Nat.add_sub_cancel, A120573.P18216299197686892735.a, A120573.P7916255503859127282.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120573

/-! ## A120573.P17411281484430680119

`lcm(sqrt(A325173(n+1)), A002522(n+1))`
-/

namespace A120573.P17411281484430680119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.sqrt (A325173 (n + 1) : ℝ))) (A002522 (n + 1))

end

end A120573.P17411281484430680119

namespace A120573

/-- `lcm(sqrt(A325173(n+1)), A002522(n+1))` -/
def P17411281484430680119.Spec : Prop :=
  ∀ n, (P17411281484430680119.a n : ℤ) = A120573 (n + 1)

end A120573

/-!
# A120574: G.f. satisfies: A(x) = x + x*A(x) + x*A(A(x)).

The programs for A120574, there is no canonical definition to state claims against.
-/

/-! ## A120574.P18240838703871330294

`A000463(A113712(n))`
-/

namespace A120574.P18240838703871330294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A113712 n).toNat

end

end A120574.P18240838703871330294

/-! ## A120574.P5691192789432293677

`A000463(∑[A055882(n)])`
-/

namespace A120574.P5691192789432293677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120574.P5691192789432293677

/-!
# A120575: G.f. satisfies: A(x) = x + 2*x*A(x) + x*A(A(x)).

The programs for A120575, there is no canonical definition to state claims against.
-/

/-! ## A120575.P11338715123424376144

`3*A277121(a(n-1))` with `a(0)=1`
-/

namespace A120575.P11338715123424376144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A277121 (a (n - 1)).toNat

end

end A120575.P11338715123424376144

/-!
# A120580: Hankel transform of Sum_{k=0..n} C(2k,k).

The programs for A120580, the canonical program `A120580.P13996279121683827108` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120580 has offset 0).

The definition of A120580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120580.P5348608356772679119

`ogf((1-2x)/(1-2x+4x^2))`
-/

namespace A120580.P5348608356772679119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -2, 4] n

end

end A120580.P5348608356772679119

namespace A120580

/-- `ogf((1-2x)/(1-2x+4x^2))` -/
def P5348608356772679119.Spec : Prop :=
  ∀ n, P5348608356772679119.a n = A120580 n

end A120580

/-! ## A120580.P13996279121683827108

`(1-n%3)*(-2)^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120580

/-- `(1-n%3)*(-2)^n` -/
def P13996279121683827108.Spec : Prop :=
  ∀ n, P13996279121683827108.a n = A120580 n

theorem P13996279121683827108.correct : P13996279121683827108.Spec := by
  intro n
  simp only [A120580]

end A120580

/-! ## A120580.P5459644624828840089

`(-n%3+1)*(-2)^n`
-/

namespace A120580.P5459644624828840089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (-(n : ℤ)) 3 + 1) * (-2) ^ n

end

end A120580.P5459644624828840089

namespace A120580

/-- `(-n%3+1)*(-2)^n` -/
def P5459644624828840089.Spec : Prop :=
  ∀ n, P5459644624828840089.a n = A120580 n

end A120580

/-! ## A120580.P15348665246981187197

`2*(a(n-1)-2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A120580.P15348665246981187197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (a (n - 1) - 2 * a (n - 2))

end

end A120580.P15348665246981187197

namespace A120580

/-- `2*(a(n-1)-2*a(n-2))` -/
def P15348665246981187197.Spec : Prop :=
  ∀ n, P15348665246981187197.a n = A120580 n

end A120580

/-! ## A120580.P17136032876919346331

`2^n*A010892(n+1)`
-/

namespace A120580.P17136032876919346331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010892 (n + 1)

end

end A120580.P17136032876919346331

namespace A120580

/-- `2^n*A010892(n+1)` -/
def P17136032876919346331.Spec : Prop :=
  ∀ n, P17136032876919346331.a n = A120580 n

end A120580

/-! ## A120580.P2548515713556881961

`2^n*A128834(n+2)`
-/

namespace A120580.P2548515713556881961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128834 (n + 2)

end

end A120580.P2548515713556881961

namespace A120580

/-- `2^n*A128834(n+2)` -/
def P2548515713556881961.Spec : Prop :=
  ∀ n, P2548515713556881961.a n = A120580 n

end A120580

/-! ## A120580.P13256233124448001277

`2^n*A163806(n+2)`
-/

namespace A120580.P13256233124448001277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A163806 (n + 2)

end

end A120580.P13256233124448001277

namespace A120580

/-- `2^n*A163806(n+2)` -/
def P13256233124448001277.Spec : Prop :=
  ∀ n, P13256233124448001277.a n = A120580 n

end A120580

/-! ## A120580.P2305180494561844311

`2^(n-1)*A130772(n+1)`
-/

namespace A120580.P2305180494561844311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A130772 (n + 1) : ℚ)

end

end A120580.P2305180494561844311

namespace A120580

/-- `2^(n-1)*A130772(n+1)` -/
def P2305180494561844311.Spec : Prop :=
  ∀ n, P2305180494561844311.a n = (A120580 n : ℚ)

end A120580

/-! ## A120580.P17250654691276296539

`2^(n-1)*A184334(n+2)`
-/

namespace A120580.P17250654691276296539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A184334 (n + 2) : ℚ)

end

end A120580.P17250654691276296539

namespace A120580

/-- `2^(n-1)*A184334(n+2)` -/
def P17250654691276296539.Spec : Prop :=
  ∀ n, P17250654691276296539.a n = (A120580 n : ℚ)

end A120580

/-! ## A120580.P16829270530004956655

`2*(a(n-1)-A088138(n))` with `a(0)=1`
-/

namespace A120580.P16829270530004956655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A088138 n)

end

end A120580.P16829270530004956655

namespace A120580

/-- `2*(a(n-1)-A088138(n))` -/
def P16829270530004956655.Spec : Prop :=
  ∀ n, P16829270530004956655.a n = A120580 n

end A120580

/-! ## A120580.P1152676077972942504

`A078030(A350666(n))`
-/

namespace A120580.P1152676077972942504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 (A350666 n).toNat

end

end A120580.P1152676077972942504

namespace A120580

/-- `A078030(A350666(n))` -/
def P1152676077972942504.Spec : Prop :=
  ∀ n, P1152676077972942504.a n = A120580 n

end A120580

/-! ## A120580.P4871136266177457389

`A138230(n)-A088138(n)`
-/

namespace A120580.P4871136266177457389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138230 n - A088138 n

end

end A120580.P4871136266177457389

namespace A120580

/-- `A138230(n)-A088138(n)` -/
def P4871136266177457389.Spec : Prop :=
  ∀ n, P4871136266177457389.a n = A120580 n

end A120580

/-! ## A120580.P10383849203804156048

`A011782(n)*A109265(n)`
-/

namespace A120580.P10383849203804156048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A109265 n

end

end A120580.P10383849203804156048

namespace A120580

/-- `A011782(n)*A109265(n)` -/
def P10383849203804156048.Spec : Prop :=
  ∀ n, P10383849203804156048.a n = A120580 n

end A120580

/-! ## A120580.P1491544261657600428

`A033999(n)*A104538(n)`
-/

namespace A120580.P1491544261657600428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104538 n

end

end A120580.P1491544261657600428

namespace A120580

/-- `A033999(n)*A104538(n)` -/
def P1491544261657600428.Spec : Prop :=
  ∀ n, P1491544261657600428.a n = A120580 n

end A120580

/-! ## A120580.P11739059308142416096

`A057079(n)*A104538(n)`
-/

namespace A120580.P11739059308142416096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A104538 n

end

end A120580.P11739059308142416096

namespace A120580

/-- `A057079(n)*A104538(n)` -/
def P11739059308142416096.Spec : Prop :=
  ∀ n, P11739059308142416096.a n = A120580 n

end A120580

/-! ## A120580.P15435533591530863197

`A057078(n)*A122803(n)`
-/

namespace A120580.P15435533591530863197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A122803 n

end

end A120580.P15435533591530863197

namespace A120580

/-- `A057078(n)*A122803(n)` -/
def P15435533591530863197.Spec : Prop :=
  ∀ n, P15435533591530863197.a n = A120580 n

end A120580

/-! ## A120580.P2980883984872734554

`A104538(n)*A130151(n)`
-/

namespace A120580.P2980883984872734554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104538 n * A130151 n

end

end A120580.P2980883984872734554

namespace A120580

/-- `A104538(n)*A130151(n)` -/
def P2980883984872734554.Spec : Prop :=
  ∀ n, P2980883984872734554.a n = A120580 n

end A120580

/-! ## A120580.P225101937275061675

`A104538(n)*A131556(n)`
-/

namespace A120580.P225101937275061675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104538 n * A131556 n

end

end A120580.P225101937275061675

namespace A120580

/-- `A104538(n)*A131556(n)` -/
def P225101937275061675.Spec : Prop :=
  ∀ n, P225101937275061675.a n = A120580 n

end A120580

/-! ## A120580.P11872335135650122170

`A104538(n)*A132951(n)`
-/

namespace A120580.P11872335135650122170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104538 n * A132951 n

end

end A120580.P11872335135650122170

namespace A120580

/-- `A104538(n)*A132951(n)` -/
def P11872335135650122170.Spec : Prop :=
  ∀ n, P11872335135650122170.a n = A120580 n

end A120580

/-! ## A120580.P7780762395617435216

`∑[A163810(n)]*A000079(n)`
-/

namespace A120580.P7780762395617435216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A120580.P7780762395617435216

namespace A120580

/-- `∑[A163810(n)]*A000079(n)` -/
def P7780762395617435216.Spec : Prop :=
  ∀ n, P7780762395617435216.a n = A120580 n

end A120580

/-!
# A120581: Hankel transform of sum{k=0..n, C(2k,k)*2^k}.

The programs for A120581, the canonical program `A120581.P14531339546796847337` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120581 has offset 0).

The definition of A120581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120581.P14531339546796847337

`4^n*4^C(n, 2)*(-1)^n*A087168(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120581

/-- `4^n*4^C(n, 2)*(-1)^n*A087168(n)` -/
def P14531339546796847337.Spec : Prop :=
  ∀ n, P14531339546796847337.a n = A120581 n

theorem P14531339546796847337.correct : P14531339546796847337.Spec := by
  intro n
  simp only [A120581]

end A120581

/-! ## A120581.P9570721977990134845

`2^n*A167435(n)`
-/

namespace A120581.P9570721977990134845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A167435 n

end

end A120581.P9570721977990134845

namespace A120581

/-- `2^n*A167435(n)` -/
def P9570721977990134845.Spec : Prop :=
  ∀ n, P9570721977990134845.a n = A120581 n

end A120581

/-! ## A120581.P3277605417416022921

`2^(n²+n)*A247560(n)`
-/

namespace A120581.P3277605417416022921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n ^ 2 + n) : ℤ) * A247560 n

end

end A120581.P3277605417416022921

namespace A120581

/-- `2^(n²+n)*A247560(n)` -/
def P3277605417416022921.Spec : Prop :=
  ∀ n, P3277605417416022921.a n = A120581 n

end A120581

/-! ## A120581.P6282265370325073962

`2^n²*A247560(n)*A000079(n)`
-/

namespace A120581.P6282265370325073962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A247560 n * A000079 n

end

end A120581.P6282265370325073962

namespace A120581

/-- `2^n²*A247560(n)*A000079(n)` -/
def P6282265370325073962.Spec : Prop :=
  ∀ n, P6282265370325073962.a n = A120581 n

end A120581

/-! ## A120581.P2699644582163507771

`2^n²*A247560(n)*∑[A011782(n)]`
-/

namespace A120581.P2699644582163507771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A247560 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120581.P2699644582163507771

namespace A120581

/-- `2^n²*A247560(n)*∑[A011782(n)]` -/
def P2699644582163507771.Spec : Prop :=
  ∀ n, P2699644582163507771.a n = A120581 n

end A120581

/-!
# A120582: Hankel transform of Sum_{k=0..floor(n/2)} binomial(2*k, k).

The programs for A120582, the canonical program `A120582.P131286747964255095` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120582 has offset 0).

The definition of A120582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120582.P131286747964255095

`2^n*A309970(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120582

/-- `2^n*A309970(n)` -/
def P131286747964255095.Spec : Prop :=
  ∀ n, P131286747964255095.a n = A120582 n

theorem P131286747964255095.correct : P131286747964255095.Spec := by
  intro n
  simp only [A120582]

end A120582

/-! ## A120582.P11415512885541816897

`2^n*A166446(n+2)`
-/

namespace A120582.P11415512885541816897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A166446 (n + 2)

end

end A120582.P11415512885541816897

namespace A120582

/-- `2^n*A166446(n+2)` -/
def P11415512885541816897.Spec : Prop :=
  ∀ n, P11415512885541816897.a n = A120582 n

end A120582

/-! ## A120582.P275366342890576256

`2^n*A010892(round((n+1)/2))`
-/

namespace A120582.P275366342890576256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010892 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat

end

end A120582.P275366342890576256

namespace A120582

/-- `2^n*A010892(round((n+1)/2))` -/
def P275366342890576256.Spec : Prop :=
  ∀ n, P275366342890576256.a n = A120582 n

end A120582

/-! ## A120582.P2678564633352075984

`A000079(n)*A110161(or(1, n))`
-/

namespace A120582.P2678564633352075984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A110161 (Nat.lor 1 n)

end

end A120582.P2678564633352075984

namespace A120582

/-- `A000079(n)*A110161(or(1, n))` -/
def P2678564633352075984.Spec : Prop :=
  ∀ n, P2678564633352075984.a n = A120582 n

end A120582

/-! ## A120582.P15479354787422919160

`(A110161(n+1)+A110161(n))*A131577(n+1)`
-/

namespace A120582.P15479354787422919160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110161 (n + 1) + A110161 n) * A131577 (n + 1)

end

end A120582.P15479354787422919160

namespace A120582

/-- `(A110161(n+1)+A110161(n))*A131577(n+1)` -/
def P15479354787422919160.Spec : Prop :=
  ∀ n, P15479354787422919160.a n = A120582 n

end A120582

/-! ## A120582.P15843881137755610524

`A120617(n)*A134668(n)`
-/

namespace A120582.P15843881137755610524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n * A134668 n

end

end A120582.P15843881137755610524

namespace A120582

/-- `A120617(n)*A134668(n)` -/
def P15843881137755610524.Spec : Prop :=
  ∀ n, P15843881137755610524.a n = A120582 n

end A120582

/-!
# A120583: Series expansion for radius of gyration on triangular lattice.

The programs for A120583, there is no canonical definition to state claims against.
-/

/-! ## A120583.P16864117026529216860

`6*A003056(A052729(n))`
-/

namespace A120583.P16864117026529216860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003056 (A052729 n).toNat

end

end A120583.P16864117026529216860

/-! ## A120583.P2433360028972974119

`Δ[A110655(A083380(n+1)²)]`
-/

namespace A120583.P2433360028972974119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A083380 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120583.P2433360028972974119

/-!
# A120585: Smallest highly composite number(A002182) with n digits.

The programs for A120585, there is no canonical definition to state claims against.
-/

/-! ## A120585.P12375823836065272472

`A002182(A112781(n+1)+1-A112780(n+1))`
-/

namespace A120585.P12375823836065272472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A112781 (n + 1) + (1 - A112780 (n + 1))).toNat

end

end A120585.P12375823836065272472

/-! ## A120585.P2443335047437564756

`A061799(A120586(n+1))`
-/

namespace A120585.P2443335047437564756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A120586 (n + 1)).toNat

end

end A120585.P2443335047437564756

/-! ## A120585.P11484415272773638092

`A081512(A179023(n+1))`
-/

namespace A120585.P11484415272773638092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081512 (A179023 (n + 1)).toNat

end

end A120585.P11484415272773638092

/-!
# A120586: Numbers of divisors associated with the entries of A120585.

The programs for A120586, there is no canonical definition to state claims against.
-/

/-! ## A120586.P6463477425058441667

`A002183(A112781(n+1)+1-A112780(n+1))`
-/

namespace A120586.P6463477425058441667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A112781 (n + 1) + (1 - A112780 (n + 1))).toNat

end

end A120586.P6463477425058441667

/-! ## A120586.P15163173416860089382

`A002183(∑[A112780(n+1)]-A112780(n+1)+1)`
-/

namespace A120586.P15163173416860089382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (∑ j ∈ Finset.range (n + 1), f1 j - A112780 (n + 1) + 1).toNat

end

end A120586.P15163173416860089382

/-! ## A120586.P8042709690342420527

`A064527(A134918(n+1))`
-/

namespace A120586.P8042709690342420527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A134918 (n + 1)).toNat

end

end A120586.P8042709690342420527

/-! ## A120586.P4038406156203623546

`A000005(A101553(n))*A299253(n)`
-/

namespace A120586.P4038406156203623546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101553 n).toNat * A299253 n

end

end A120586.P4038406156203623546

/-!
# A120588: G.f. is 1 + x*c(x), where c(x) is the g.f. of the Catalan numbers (A000108).

The programs for A120588, the canonical program `A120588.P13914353350146187734` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120588 has offset 0).

The definition of A120588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120588.P3861900559757757852

`(4-6/n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A120588.P3861900559757757852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A120588.P3861900559757757852

namespace A120588

/-- `(4-6/n)*a(n-1)` -/
def P3861900559757757852.Spec : Prop :=
  ∀ n, P3861900559757757852.a n = (A120588 n : ℚ)

end A120588

/-! ## A120588.P13914353350146187734

`abs(A115140(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120588

/-- `abs(A115140(n))` -/
def P13914353350146187734.Spec : Prop :=
  ∀ n, P13914353350146187734.a n = A120588 n

theorem P13914353350146187734.correct : P13914353350146187734.Spec := by
  intro n
  simp only [A120588]

end A120588

/-! ## A120588.P12797684382018811691

`A000108(abs(1-n))`
-/

namespace A120588.P12797684382018811691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat

end

end A120588.P12797684382018811691

namespace A120588

/-- `A000108(abs(1-n))` -/
def P12797684382018811691.Spec : Prop :=
  ∀ n, P12797684382018811691.a n = A120588 n

end A120588

/-! ## A120588.P12629963949021451331

`abs(A168491(abs(1-n)))`
-/

namespace A120588.P12629963949021451331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A168491 |1 - (n : ℤ)|.toNat)|

end

end A120588.P12629963949021451331

namespace A120588

/-- `abs(A168491(abs(1-n)))` -/
def P12629963949021451331.Spec : Prop :=
  ∀ n, P12629963949021451331.a n = A120588 n

end A120588

/-! ## A120588.P1155427316955461110

`A028304(abs(2*(1-n)))`
-/

namespace A120588.P1155427316955461110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 |2 * (1 - (n : ℤ))|.toNat

end

end A120588.P1155427316955461110

namespace A120588

/-- `A028304(abs(2*(1-n)))` -/
def P1155427316955461110.Spec : Prop :=
  ∀ n, P1155427316955461110.a n = A120588 n

end A120588

/-! ## A120588.P6347253717707449160

`A126120(abs(2*(1-n)))`
-/

namespace A120588.P6347253717707449160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 |2 * (1 - (n : ℤ))|.toNat

end

end A120588.P6347253717707449160

namespace A120588

/-- `A126120(abs(2*(1-n)))` -/
def P6347253717707449160.Spec : Prop :=
  ∀ n, P6347253717707449160.a n = A120588 n

end A120588

/-! ## A120588.P9395785613019897297

`a(n-1)-A115142(n)` with `a(0)=1, a(1)=1`
-/

namespace A120588.P9395785613019897297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A115142 n

end

end A120588.P9395785613019897297

namespace A120588

/-- `a(n-1)-A115142(n)` -/
def P9395785613019897297.Spec : Prop :=
  ∀ n, P9395785613019897297.a n = A120588 n

end A120588

/-! ## A120588.P10848743343482853508

`A000108(n-1)/a(floor(atan(n)))` with `a(0)=1`
-/

namespace A120588.P10848743343482853508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000108 (n - 1) : ℚ) / a ⌊Real.arctan (n : ℝ)⌋.toNat

end

end A120588.P10848743343482853508

namespace A120588

/-- `A000108(n-1)/a(floor(atan(n)))` -/
def P10848743343482853508.Spec : Prop :=
  ∀ n, P10848743343482853508.a n = (A120588 n : ℚ)

end A120588

/-! ## A120588.P10522377995914675467

`A089408(A004273(n))`
-/

namespace A120588.P10522377995914675467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A004273 n).toNat

end

end A120588.P10522377995914675467

namespace A120588

/-- `A089408(A004273(n))` -/
def P10522377995914675467.Spec : Prop :=
  ∀ n, P10522377995914675467.a n = A120588 n

end A120588

/-! ## A120588.P17641297991622251821

`A094876(A092899(n))`
-/

namespace A120588.P17641297991622251821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094876 (A092899 n).toNat

end

end A120588.P17641297991622251821

namespace A120588

/-- `A094876(A092899(n))` -/
def P17641297991622251821.Spec : Prop :=
  ∀ n, P17641297991622251821.a n = A120588 n

end A120588

/-! ## A120588.P4972922621737630518

`A208355(A004274(n))`
-/

namespace A120588.P4972922621737630518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (A004274 n).toNat

end

end A120588.P4972922621737630518

namespace A120588

/-- `A208355(A004274(n))` -/
def P4972922621737630518.Spec : Prop :=
  ∀ n, P4972922621737630518.a n = A120588 n

end A120588

/-! ## A120588.P18138838328808773139

`A097331(lt[0, A097331(n)])`
-/

namespace A120588.P18138838328808773139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120588.P18138838328808773139

namespace A120588

/-- `A097331(lt[0, A097331(n)])` -/
def P18138838328808773139.Spec : Prop :=
  ∀ n, P18138838328808773139.a n = A120588 n

end A120588

/-! ## A120588.P12910344518400624127

`A000038(n)-A115140(n)`
-/

namespace A120588.P12910344518400624127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A115140 n

end

end A120588.P12910344518400624127

namespace A120588

/-- `A000038(n)-A115140(n)` -/
def P12910344518400624127.Spec : Prop :=
  ∀ n, P12910344518400624127.a n = A120588 n

end A120588

/-! ## A120588.P15101308394471105835

`A246432(n)/A260196(n)`
-/

namespace A120588.P15101308394471105835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246432 n : ℚ) / (A260196 n : ℚ)

end

end A120588.P15101308394471105835

namespace A120588

/-- `A246432(n)/A260196(n)` -/
def P15101308394471105835.Spec : Prop :=
  ∀ n, P15101308394471105835.a n = (A120588 n : ℚ)

end A120588

/-! ## A120588.P16678318288285687596

`gcd(A115141(n), A130779(n))`
-/

namespace A120588.P16678318288285687596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115141 n) (A130779 n)

end

end A120588.P16678318288285687596

namespace A120588

/-- `gcd(A115141(n), A130779(n))` -/
def P16678318288285687596.Spec : Prop :=
  ∀ n, (P16678318288285687596.a n : ℤ) = A120588 n

end A120588

/-! ## A120588.P8315765897022025465

`gcd(A130706(n), A246432(n))`
-/

namespace A120588.P8315765897022025465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A246432 n)

end

end A120588.P8315765897022025465

namespace A120588

/-- `gcd(A130706(n), A246432(n))` -/
def P8315765897022025465.Spec : Prop :=
  ∀ n, (P8315765897022025465.a n : ℤ) = A120588 n

end A120588

/-! ## A120588.P12902061436925605540

`lcm(A002596(n), A115140(n))`
-/

namespace A120588.P12902061436925605540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002596 n) (A115140 n)

end

end A120588.P12902061436925605540

namespace A120588

/-- `lcm(A002596(n), A115140(n))` -/
def P12902061436925605540.Spec : Prop :=
  ∀ n, (P12902061436925605540.a n : ℤ) = A120588 n

end A120588

/-! ## A120588.P11681343542076651280

`A115140(n)*A153881(n+1)`
-/

namespace A120588.P11681343542076651280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n * A153881 (n + 1)

end

end A120588.P11681343542076651280

namespace A120588

/-- `A115140(n)*A153881(n+1)` -/
def P11681343542076651280.Spec : Prop :=
  ∀ n, P11681343542076651280.a n = A120588 n

end A120588

/-! ## A120588.P13891650620917536118

`∏{e}[A020639(n+1), A000108(n-#)]`
-/

namespace A120588.P13891650620917536118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (n - Nat.factorization (f1 n).natAbs p)

end

end A120588.P13891650620917536118

namespace A120588

/-- `∏{e}[A020639(n+1), A000108(n-#)]` -/
def P13891650620917536118.Spec : Prop :=
  ∀ n, P13891650620917536118.a n = A120588 n

end A120588

/-! ## A120588.P15463516878733218906

`A000041(C(n%2, a(n-1)))*A000108(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A120588.P15463516878733218906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000041 (Nat.choose (n % 2) (a (n - 1)).toNat) * A000108 (n - 1)

end

end A120588.P15463516878733218906

namespace A120588

/-- `A000041(C(n%2, a(n-1)))*A000108(n-1)` -/
def P15463516878733218906.Spec : Prop :=
  ∀ n, P15463516878733218906.a n = A120588 n

end A120588

/-!
# A120589: Self-convolution of A120588, such that a(n) = 3*A120588(n) for n >= 2.

The programs for A120589, the canonical program `A120589.P7693857463884301680` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120589 has offset 0).

The definition of A120589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120589.P8720248058507202590

`(4-6/n)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A120589.P8720248058507202590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A120589.P8720248058507202590

namespace A120589

/-- `(4-6/n)*a(n-1)` -/
def P8720248058507202590.Spec : Prop :=
  ∀ n, P8720248058507202590.a n = (A120589 n : ℚ)

end A120589

/-! ## A120589.P12171817347330040762

`(n+1)/2*A091712(n+1)`
-/

namespace A120589.P12171817347330040762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A091712 (n + 1) : ℚ)

end

end A120589.P12171817347330040762

namespace A120589

/-- `(n+1)/2*A091712(n+1)` -/
def P12171817347330040762.Spec : Prop :=
  ∀ n, P12171817347330040762.a n = (A120589 n : ℚ)

end A120589

/-! ## A120589.P7693857463884301680

`3*A000108(n-a(C(2, n)))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120589

/-- `3*A000108(n-a(C(2, n)))` -/
def P7693857463884301680.Spec : Prop :=
  ∀ n, P7693857463884301680.a n = A120589 n

theorem P7693857463884301680.correct : P7693857463884301680.Spec := by
  intro n
  simp only [A120589]

end A120589

/-! ## A120589.P12414162143032034468

`record[(3-a(n-1))*A097331(n)]` with `a(0)=1`
-/

namespace A120589.P12414162143032034468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 - f1 (n - 1)) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120589.P12414162143032034468

namespace A120589

/-- `record[(3-a(n-1))*A097331(n)]` -/
def P12414162143032034468.Spec : Prop :=
  ∀ n, P12414162143032034468.a n = A120589 n

end A120589

/-! ## A120589.P3866473562856771383

`3*A000108((n-1)%a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A120589.P3866473562856771383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A000108 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A120589.P3866473562856771383

namespace A120589

/-- `3*A000108((n-1)%a(n-1))` -/
def P3866473562856771383.Spec : Prop :=
  ∀ n, P3866473562856771383.a n = A120589 n

end A120589

/-! ## A120589.P17628042354927546097

`gcd(3, a(n-1))*A000108(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A120589.P17628042354927546097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (Int.gcd 3 (a (n - 1)) : ℤ) * A000108 (n - 1)

end

end A120589.P17628042354927546097

namespace A120589

/-- `gcd(3, a(n-1))*A000108(n-1)` -/
def P17628042354927546097.Spec : Prop :=
  ∀ n, P17628042354927546097.a n = A120589 n

end A120589

/-! ## A120589.P6138972966738957223

`A120588(n)*A158799(n)`
-/

namespace A120589.P6138972966738957223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A158799 n

end

end A120589.P6138972966738957223

namespace A120589

/-- `A120588(n)*A158799(n)` -/
def P6138972966738957223.Spec : Prop :=
  ∀ n, P6138972966738957223.a n = A120589 n

end A120589

/-! ## A120589.P8886296952777658846

`A126324(A004273(n))-char[1]`
-/

namespace A120589.P8886296952777658846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (A004273 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120589.P8886296952777658846

namespace A120589

/-- `A126324(A004273(n))-char[1]` -/
def P8886296952777658846.Spec : Prop :=
  ∀ n, P8886296952777658846.a n = A120589 n

end A120589

/-! ## A120589.P7230243729157960281

`A000108(abs(1-n))*A158799(n)`
-/

namespace A120589.P7230243729157960281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat * A158799 n

end

end A120589.P7230243729157960281

namespace A120589

/-- `A000108(abs(1-n))*A158799(n)` -/
def P7230243729157960281.Spec : Prop :=
  ∀ n, P7230243729157960281.a n = A120589 n

end A120589

/-! ## A120589.P3655662367918107762

`A144706(n)/A113127(n)`
-/

namespace A120589.P3655662367918107762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144706 n : ℚ) / (A113127 n : ℚ)

end

end A120589.P3655662367918107762

namespace A120589

/-- `A144706(n)/A113127(n)` -/
def P3655662367918107762.Spec : Prop :=
  ∀ n, P3655662367918107762.a n = (A120589 n : ℚ)

end A120589

/-!
# A120590: G.f. A(x) satisfies 4*A(x) = 3 + x + A(x)^3, starting with [1,1,3].

The programs for A120590, there is no canonical definition to state claims against.
-/

/-! ## A120590.P14814427513936527254

`ceil(A120591(n)/4)`
-/

namespace A120590.P14814427513936527254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120591 n : ℚ) / 4⌉

end

end A120590.P14814427513936527254

/-! ## A120590.P4668155446678474203

`A120591(n)/A113311(n)`
-/

namespace A120590.P4668155446678474203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120591 n : ℚ) / (A113311 n : ℚ)

end

end A120590.P4668155446678474203

/-! ## A120590.P11561075760450419123

`round(A120591(n)/4)/a(A000038(n))` with `a(0)=1`
-/

namespace A120590.P11561075760450419123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.roundAway ((A120591 n : ℚ) / 4) : ℚ) / a (A000038 n).toNat

end

end A120590.P11561075760450419123

/-! ## A120590.P10489212862973516195

`round((A120591(n)/4)^and(1, A000040(n+1)))`
-/

namespace A120590.P10489212862973516195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A120591 n : ℚ) / 4) ^ (Int.land 1 (A000040 (n + 1)) : ℤ))

end

end A120590.P10489212862973516195

/-! ## A120590.P12591009852480513224

`round(A008683(A022144(n))+A120591(n)/4)`
-/

namespace A120590.P12591009852480513224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (A022144 n).toNat : ℚ) + (A120591 n : ℚ) / 4)

end

end A120590.P12591009852480513224

/-!
# A120591: Self-convolution cube of A120590, such that a(n) = 4*A120590(n) for n>=2.

The programs for A120591, there is no canonical definition to state claims against.
-/

/-! ## A120591.P6375752929048099804

`A113311(n)*A120590(n)`
-/

namespace A120591.P6375752929048099804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n * A120590 n

end

end A120591.P6375752929048099804

/-!
# A120592: G.f. satisfies: 5*A(x) = 4 + 4*x + A(x)^3, starting with [1,2,6].

The programs for A120592, there is no canonical definition to state claims against.
-/

/-! ## A120592.P8461660153693176958

`(2-A000007(n))*A276315(A028310(n))`
-/

namespace A120592.P8461660153693176958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A276315 (A028310 n).toNat

end

end A120592.P8461660153693176958

/-! ## A120592.P10349368119386279860

`(2-A000007(n))*A276315(A065033(2*n))`
-/

namespace A120592.P10349368119386279860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A276315 (A065033 (2 * n)).toNat

end

end A120592.P10349368119386279860

/-! ## A120592.P1483552986616896985

`A266722(2*n)*A276315(A065033(2*n))`
-/

namespace A120592.P1483552986616896985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (2 * n) * A276315 (A065033 (2 * n)).toNat

end

end A120592.P1483552986616896985

/-! ## A120592.P878446281886336787

`A001227(A106984(n+1))*A276315(A065033(2*n))`
-/

namespace A120592.P878446281886336787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A106984 (n + 1)).toNat * A276315 (A065033 (2 * n)).toNat

end

end A120592.P878446281886336787

/-! ## A120592.P13143455803069493857

`A029635(A151934(n))*A276315(A065033(2*n))`
-/

namespace A120592.P13143455803069493857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A151934 n).toNat * A276315 (A065033 (2 * n)).toNat

end

end A120592.P13143455803069493857

/-!
# A120593: G.f. satisfies: 5*A(x) = 4 + x + A(x)^4, starting with [1,1,6].

The programs for A120593, there is no canonical definition to state claims against.
-/

/-! ## A120593.P10615386379210371591

`A189128(A155926(n))`
-/

namespace A120593.P10615386379210371591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189128 (A155926 n).toNat

end

end A120593.P10615386379210371591

/-!
# A120594: G.f. satisfies: 8*A(x) = 7 + 8*x + A(x)^4, starting with [1,2,6].

The programs for A120594, there is no canonical definition to state claims against.
-/

/-! ## A120594.P674587143881142416

`A172104(n^(n+1)+1)`
-/

namespace A120594.P674587143881142416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172104 (n ^ (n + 1) + 1)

end

end A120594.P674587143881142416

/-!
# A120595: G.f. satisfies: 13*A(x) = 12 + 27*x + A(x)^4, starting with [1,3,6].

The programs for A120595, there is no canonical definition to state claims against.
-/

/-! ## A120595.P7027800441718762813

`A243168(a(n-1)+2^(n-1))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A120595.P7027800441718762813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A243168 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A120595.P7027800441718762813

/-!
# A120596: G.f. satisfies: 6*A(x) = 5 + x + A(x)^5, starting with [1,1,10].

The programs for A120596, there is no canonical definition to state claims against.
-/

/-! ## A120596.P10653531109772887324

`A003339(2*a(n-1)-a(n-2)-4)` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A120596.P10653531109772887324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 10] fun n a =>
  A003339 (2 * a (n - 1) - a (n - 2) - 4).toNat

end

end A120596.P10653531109772887324

/-!
# A120597: G.f. satisfies: 9*A(x) = 8 + 8*x + A(x)^5, starting with [1,2,10].

The programs for A120597, there is no canonical definition to state claims against.
-/

/-! ## A120597.P16427951820620047087

`A304975(3*n)+A231009(floor(14^(n/3)))`
-/

namespace A120597.P16427951820620047087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (3 * n) + A231009 ⌊(14 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat

end

end A120597.P16427951820620047087

/-!
# A120598: G.f. satisfies: 30*A(x) = 29 + 125*x + A(x)^5, starting with [1,5,10].

The programs for A120598, there is no canonical definition to state claims against.
-/

/-! ## A120598.P9253160714793134441

`record[gcd(A341383(n+1), A343506(2*(n+1)))]`
-/

namespace A120598.P9253160714793134441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341383 (n + 1)) (A343506 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120598.P9253160714793134441

/-!
# A120599: G.f. satisfies: 13*A(x) = 12 + 32*x + A(x)^5, starting with [1,4,20].

The programs for A120599, there is no canonical definition to state claims against.
-/

/-! ## A120599.P9993724897714784861

`A008574(xor(A255523(n), A353118(n)))`
-/

namespace A120599.P9993724897714784861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.xor (A255523 n) (A353118 n)).toNat

end

end A120599.P9993724897714784861

