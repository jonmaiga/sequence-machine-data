import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A104908: a(n) = floor(sqrt(a(n-1)^2 + a(n-2)^2)), a(1)=100, a(2)=300.

The programs for A104908, the canonical program `A104908.P7531716399826030557` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104908 has offset 1).

The definition of A104908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(a(n-1)²+a(n-2)²))` (program `A104908.P7531716399826030557`, by `A104908.P7531716399826030557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104908.P7531716399826030557

`floor(sqrt(a(n-1)²+a(n-2)²))` with `a(0)=100, a(1)=300`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104908

/-- `floor(sqrt(a(n-1)²+a(n-2)²))` -/
def P7531716399826030557.Spec : Prop :=
  ∀ n, (P7531716399826030557.a n : ℤ) = A104908 (n + 1)

theorem P7531716399826030557.correct : P7531716399826030557.Spec := by
  intro n
  simp only [A104908, Nat.add_sub_cancel]

end A104908

/-! ## A104908.P10138232208513550986

`A104909(n+1)+10*A104863(n+1)`
-/

namespace A104908.P10138232208513550986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104909 (n + 1) + 10 * A104863 (n + 1)

end

end A104908.P10138232208513550986

namespace A104908

/-- `A104909(n+1)+10*A104863(n+1)` -/
def P10138232208513550986.Spec : Prop :=
  ∀ n, P10138232208513550986.a n = A104908 (n + 1)

theorem P10138232208513550986.correct : P10138232208513550986.Spec := by
  intro n
  simp only [A104908, Nat.add_sub_cancel, A104908.P10138232208513550986.a, A104908.P7531716399826030557.a, A104863, A104863.P9501639845086121093.a, A104909, A104909.P10359222536385174752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104908

/-! ## A104908.P12232461965291903457

`10*A104863(n+1)+A104910(n+1)-10*(A104863(n+1)-10*A104803(n+1))`
-/

namespace A104908.P12232461965291903457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A104863 (n + 1) + (A104910 (n + 1) - 10 * (A104863 (n + 1) - 10 * A104803 (n + 1)))

end

end A104908.P12232461965291903457

namespace A104908

/-- `10*A104863(n+1)+A104910(n+1)-10*(A104863(n+1)-10*A104803(n+1))` -/
def P12232461965291903457.Spec : Prop :=
  ∀ n, P12232461965291903457.a n = A104908 (n + 1)

theorem P12232461965291903457.correct : P12232461965291903457.Spec := by
  intro n
  simp only [A104908, Nat.add_sub_cancel, A104908.P12232461965291903457.a, A104908.P7531716399826030557.a, A104803, A104803.P1617163421035207857.a, A104863, A104863.P9501639845086121093.a, A104910, A104910.P12981987413792342465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104908

/-! ## A104908.P3566403964010247266

`A104909(n+1)+10*(A104864(n)+10*A104803(n+1))`
-/

namespace A104908.P3566403964010247266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104909 (n + 1) + 10 * (A104864 n + 10 * A104803 (n + 1))

end

end A104908.P3566403964010247266

namespace A104908

/-- `A104909(n+1)+10*(A104864(n)+10*A104803(n+1))` -/
def P3566403964010247266.Spec : Prop :=
  ∀ n, P3566403964010247266.a n = A104908 (n + 1)

theorem P3566403964010247266.correct : P3566403964010247266.Spec := by
  intro n
  simp only [A104908, Nat.add_sub_cancel, A104908.P3566403964010247266.a, A104908.P7531716399826030557.a, A104803, A104803.P1617163421035207857.a, A104864, A104864.P15771101001242915047.a, A104909, A104909.P10359222536385174752.a, A104863, A104863.P9501639845086121093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104908

/-! ## A104908.P14587582807001077394

`10*A104863(n+1)+A104910(n+1)-10*A104864(n)`
-/

namespace A104908.P14587582807001077394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A104863 (n + 1) + (A104910 (n + 1) - 10 * A104864 n)

end

end A104908.P14587582807001077394

namespace A104908

/-- `10*A104863(n+1)+A104910(n+1)-10*A104864(n)` -/
def P14587582807001077394.Spec : Prop :=
  ∀ n, P14587582807001077394.a n = A104908 (n + 1)

theorem P14587582807001077394.correct : P14587582807001077394.Spec := by
  intro n
  simp only [A104908, Nat.add_sub_cancel, A104908.P14587582807001077394.a, A104908.P7531716399826030557.a, A104863, A104863.P9501639845086121093.a, A104864, A104864.P15771101001242915047.a, A104910, A104910.P12981987413792342465.a, A104803, A104803.P1617163421035207857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104908

/-!
# A104909: a(n) = A104908(n) - 10*A104863(n).

The programs for A104909, the canonical program `A104909.P10359222536385174752` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104909 has offset 1).

The definition of A104909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A104908(n+1)-10*A104863(n+1)` (program `A104909.P10359222536385174752`, by `A104909.P10359222536385174752.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104909.P10359222536385174752

`A104908(n+1)-10*A104863(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104909

/-- `A104908(n+1)-10*A104863(n+1)` -/
def P10359222536385174752.Spec : Prop :=
  ∀ n, P10359222536385174752.a n = A104909 (n + 1)

theorem P10359222536385174752.correct : P10359222536385174752.Spec := by
  intro n
  simp only [A104909, Nat.add_sub_cancel]

end A104909

/-! ## A104909.P7446058465877452522

`A104910(n+1)-10*(A104863(n+1)-10*A104803(n+1))`
-/

namespace A104909.P7446058465877452522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104910 (n + 1) - 10 * (A104863 (n + 1) - 10 * A104803 (n + 1))

end

end A104909.P7446058465877452522

namespace A104909

/-- `A104910(n+1)-10*(A104863(n+1)-10*A104803(n+1))` -/
def P7446058465877452522.Spec : Prop :=
  ∀ n, P7446058465877452522.a n = A104909 (n + 1)

theorem P7446058465877452522.correct : P7446058465877452522.Spec := by
  intro n
  simp only [A104909, Nat.add_sub_cancel, A104909.P7446058465877452522.a, A104909.P10359222536385174752.a, A104803, A104803.P1617163421035207857.a, A104863, A104863.P9501639845086121093.a, A104908, A104908.P7531716399826030557.a, A104910, A104910.P12981987413792342465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104909

/-! ## A104909.P9343110010539510550

`A104908(n+1)%A104863(n+1)`
-/

namespace A104909.P9343110010539510550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104908 (n + 1)) (A104863 (n + 1))

end

end A104909.P9343110010539510550

namespace A104909

/-- `A104908(n+1)%A104863(n+1)` -/
def P9343110010539510550.Spec : Prop :=
  ∀ n, P9343110010539510550.a n = A104909 (n + 1)

end A104909

/-! ## A104909.P18004031701907807966

`A104910(n+1)-10*A104864(n)`
-/

namespace A104909.P18004031701907807966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104910 (n + 1) - 10 * A104864 n

end

end A104909.P18004031701907807966

namespace A104909

/-- `A104910(n+1)-10*A104864(n)` -/
def P18004031701907807966.Spec : Prop :=
  ∀ n, P18004031701907807966.a n = A104909 (n + 1)

theorem P18004031701907807966.correct : P18004031701907807966.Spec := by
  intro n
  simp only [A104909, Nat.add_sub_cancel, A104909.P18004031701907807966.a, A104909.P10359222536385174752.a, A104863, A104863.P9501639845086121093.a, A104864, A104864.P15771101001242915047.a, A104908, A104908.P7531716399826030557.a, A104910, A104910.P12981987413792342465.a, A104803, A104803.P1617163421035207857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104909

/-! ## A104909.P5730611991483446136

`A104910(n+1)-A008592(A104864(n))`
-/

namespace A104909.P5730611991483446136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104910 (n + 1) - A008592 (A104864 n).toNat

end

end A104909.P5730611991483446136

namespace A104909

/-- `A104910(n+1)-A008592(A104864(n))` -/
def P5730611991483446136.Spec : Prop :=
  ∀ n, P5730611991483446136.a n = A104909 (n + 1)

end A104909

/-!
# A104910: a(n) = A104908(n) - 100*A104803(n).

The programs for A104910, the canonical program `A104910.P12981987413792342465` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104910 has offset 1).

The definition of A104910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A104908(n+1)-100*A104803(n+1)` (program `A104910.P12981987413792342465`, by `A104910.P12981987413792342465.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104910.P12981987413792342465

`A104908(n+1)-100*A104803(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104910

/-- `A104908(n+1)-100*A104803(n+1)` -/
def P12981987413792342465.Spec : Prop :=
  ∀ n, P12981987413792342465.a n = A104910 (n + 1)

theorem P12981987413792342465.correct : P12981987413792342465.Spec := by
  intro n
  simp only [A104910, Nat.add_sub_cancel]

end A104910

/-! ## A104910.P2657988535901073990

`A104909(n+1)+10*(A104863(n+1)-10*A104803(n+1))`
-/

namespace A104910.P2657988535901073990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104909 (n + 1) + 10 * (A104863 (n + 1) - 10 * A104803 (n + 1))

end

end A104910.P2657988535901073990

namespace A104910

/-- `A104909(n+1)+10*(A104863(n+1)-10*A104803(n+1))` -/
def P2657988535901073990.Spec : Prop :=
  ∀ n, P2657988535901073990.a n = A104910 (n + 1)

theorem P2657988535901073990.correct : P2657988535901073990.Spec := by
  intro n
  simp only [A104910, Nat.add_sub_cancel, A104910.P2657988535901073990.a, A104910.P12981987413792342465.a, A104803, A104803.P1617163421035207857.a, A104863, A104863.P9501639845086121093.a, A104908, A104908.P7531716399826030557.a, A104909, A104909.P10359222536385174752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104910

/-! ## A104910.P12622749316231447757

`A104909(n+1)+10*A104864(n)`
-/

namespace A104910.P12622749316231447757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104909 (n + 1) + 10 * A104864 n

end

end A104910.P12622749316231447757

namespace A104910

/-- `A104909(n+1)+10*A104864(n)` -/
def P12622749316231447757.Spec : Prop :=
  ∀ n, P12622749316231447757.a n = A104910 (n + 1)

theorem P12622749316231447757.correct : P12622749316231447757.Spec := by
  intro n
  simp only [A104910, Nat.add_sub_cancel, A104910.P12622749316231447757.a, A104910.P12981987413792342465.a, A104803, A104803.P1617163421035207857.a, A104864, A104864.P15771101001242915047.a, A104908, A104908.P7531716399826030557.a, A104909, A104909.P10359222536385174752.a, A104863, A104863.P9501639845086121093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104910

/-! ## A104910.P14164213677923936333

`A104909(n+1)+A008592(A104864(n))`
-/

namespace A104910.P14164213677923936333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104909 (n + 1) + A008592 (A104864 n).toNat

end

end A104910.P14164213677923936333

namespace A104910

/-- `A104909(n+1)+A008592(A104864(n))` -/
def P14164213677923936333.Spec : Prop :=
  ∀ n, P14164213677923936333.a n = A104910 (n + 1)

end A104910

/-! ## A104910.P4426119865825136038

`A104908(n+1)%A104863(n+1)+10*A104864(n)`
-/

namespace A104910.P4426119865825136038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104908 (n + 1)) (A104863 (n + 1)) + 10 * A104864 n

end

end A104910.P4426119865825136038

namespace A104910

/-- `A104908(n+1)%A104863(n+1)+10*A104864(n)` -/
def P4426119865825136038.Spec : Prop :=
  ∀ n, P4426119865825136038.a n = A104910 (n + 1)

end A104910

/-!
# A104911: Numbers n such that n+prime(n) is the square of a prime.

The programs for A104911, there is no canonical definition to state claims against.
-/

/-! ## A104911.P17653193503773425300

`∩[A064371(n+1), A115912(n+1)]`
-/

namespace A104911.P17653193503773425300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104911.P17653193503773425300

/-! ## A104911.P7200669615854240240

`∩[A109314(n+1), A115912(n+1)]`
-/

namespace A104911.P7200669615854240240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104911.P7200669615854240240

/-! ## A104911.P17374431525204130974

`∩[A107605(n+1), A115912(n+1)]`
-/

namespace A104911.P17374431525204130974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104911.P17374431525204130974

/-!
# A104913: Primes p such that the string 9876543210p is prime, or primes in A104912.

The programs for A104913, there is no canonical definition to state claims against.
-/

/-! ## A104913.P17748386163288749295

`p?[A104912(n+1)]`
-/

namespace A104913.P17748386163288749295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104913.P17748386163288749295

/-! ## A104913.P18095353682373931934

`∩[A104912(n+1), A378441(n+1)]`
-/

namespace A104913.P18095353682373931934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P18095353682373931934

/-! ## A104913.P4317367850935193343

`∩[A104912(n+1), A380468(n+1)]`
-/

namespace A104913.P4317367850935193343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P4317367850935193343

/-! ## A104913.P10302756437089647067

`∩[A078138(n+1), A104912(n+1)]`
-/

namespace A104913.P10302756437089647067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P10302756437089647067

/-! ## A104913.P18210266255530614835

`∩[A071621(n+1), A104912(n+1)]`
-/

namespace A104913.P18210266255530614835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P18210266255530614835

/-! ## A104913.P3248372694855116624

`∩[A004139(n+1), A104912(n+1)]`
-/

namespace A104913.P3248372694855116624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P3248372694855116624

/-! ## A104913.P2283034631286448570

`∩[A104912(n+1), A106118(n+1)]`
-/

namespace A104913.P2283034631286448570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P2283034631286448570

/-! ## A104913.P3490351647337634834

`∩[A000040(n+1), A104912(n+1)]`
-/

namespace A104913.P3490351647337634834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P3490351647337634834

/-! ## A104913.P17427310857776119704

`∩[A006005(n+1), A104912(n+1)]`
-/

namespace A104913.P17427310857776119704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P17427310857776119704

/-! ## A104913.P7178052147357225015

`∩[A008578(n+1), A104912(n+1)]`
-/

namespace A104913.P7178052147357225015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P7178052147357225015

/-! ## A104913.P5276742087476872891

`∩[A033946(n+1), A104912(n+1)]`
-/

namespace A104913.P5276742087476872891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P5276742087476872891

/-! ## A104913.P11471627325802516466

`∩[A045319(n+1), A104912(n+1)]`
-/

namespace A104913.P11471627325802516466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P11471627325802516466

/-! ## A104913.P1607645746115378827

`∩[A045344(n+1), A104912(n+1)]`
-/

namespace A104913.P1607645746115378827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P1607645746115378827

/-! ## A104913.P14948283037934604169

`∩[A046022(n+1), A104912(n+1)]`
-/

namespace A104913.P14948283037934604169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P14948283037934604169

/-! ## A104913.P3100056265111837324

`∩[A051948(n+1), A104912(n+1)]`
-/

namespace A104913.P3100056265111837324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P3100056265111837324

/-! ## A104913.P15554816752482721628

`∩[A053813(n+1), A104912(n+1)]`
-/

namespace A104913.P15554816752482721628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P15554816752482721628

/-! ## A104913.P14436461746049340672

`∩[A065091(n+1), A104912(n+1)]`
-/

namespace A104913.P14436461746049340672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P14436461746049340672

/-! ## A104913.P12280934140744753640

`∩[A066050(n+1), A104912(n+1)]`
-/

namespace A104913.P12280934140744753640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P12280934140744753640

/-! ## A104913.P8712648537873178062

`∩[A067126(n+1), A104912(n+1)]`
-/

namespace A104913.P8712648537873178062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P8712648537873178062

/-! ## A104913.P8778866280738032821

`∩[A083249(n+1), A104912(n+1)]`
-/

namespace A104913.P8778866280738032821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104913.P8778866280738032821

/-!
# A104915: Primes p such that the string 987654321p is prime, or primes in A104914.

The programs for A104915, there is no canonical definition to state claims against.
-/

/-! ## A104915.P12473484679676270428

`p?[A104914(n+1)]`
-/

namespace A104915.P12473484679676270428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104915.P12473484679676270428

/-! ## A104915.P6116994130744720745

`∩[A104914(n+1), A348283(n+1)]`
-/

namespace A104915.P6116994130744720745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P6116994130744720745

/-! ## A104915.P17435196891537258253

`p?[record[A104914(A117910(n))]]`
-/

namespace A104915.P17435196891537258253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104915.P17435196891537258253

/-! ## A104915.P17984599011710882473

`∩[A000040(n+1), A104914(n+1)]`
-/

namespace A104915.P17984599011710882473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P17984599011710882473

/-! ## A104915.P9627052289948217876

`∩[A004139(n+1), A104914(n+1)]`
-/

namespace A104915.P9627052289948217876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P9627052289948217876

/-! ## A104915.P10177377454010223319

`∩[A045319(n+1), A104914(n+1)]`
-/

namespace A104915.P10177377454010223319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P10177377454010223319

/-! ## A104915.P3336038319144201301

`∩[A045344(n+1), A104914(n+1)]`
-/

namespace A104915.P3336038319144201301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P3336038319144201301

/-! ## A104915.P9652701472300210208

`∩[A051948(n+1), A104914(n+1)]`
-/

namespace A104915.P9652701472300210208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P9652701472300210208

/-! ## A104915.P8398082323693198113

`∩[A053813(n+1), A104914(n+1)]`
-/

namespace A104915.P8398082323693198113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P8398082323693198113

/-! ## A104915.P7362232801849103430

`∩[A064728(n+1), A104914(n+1)]`
-/

namespace A104915.P7362232801849103430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P7362232801849103430

/-! ## A104915.P14256403064771501070

`∩[A065091(n+1), A104914(n+1)]`
-/

namespace A104915.P14256403064771501070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P14256403064771501070

/-! ## A104915.P13240418580572792059

`∩[A083249(n+1), A104914(n+1)]`
-/

namespace A104915.P13240418580572792059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P13240418580572792059

/-! ## A104915.P5021455578924413640

`∩[A093515(n+1), A104914(n+1)]`
-/

namespace A104915.P5021455578924413640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P5021455578924413640

/-! ## A104915.P14639209271482276203

`∩[A104914(n+1), A106118(n+1)]`
-/

namespace A104915.P14639209271482276203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P14639209271482276203

/-! ## A104915.P347621316749092157

`∩[A104914(n+1), A108719(n+1)]`
-/

namespace A104915.P347621316749092157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P347621316749092157

/-! ## A104915.P18017324885480138931

`∩[A104914(n+1), A116974(n+1)]`
-/

namespace A104915.P18017324885480138931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P18017324885480138931

/-! ## A104915.P6280437519230548831

`∩[A104914(n+1), A140826(n+1)]`
-/

namespace A104915.P6280437519230548831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P6280437519230548831

/-! ## A104915.P10665564940413034336

`∩[A104914(n+1), A161346(n+1)]`
-/

namespace A104915.P10665564940413034336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P10665564940413034336

/-! ## A104915.P4322829852737448814

`∩[A104914(n+1), A161428(n+1)]`
-/

namespace A104915.P4322829852737448814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P4322829852737448814

/-! ## A104915.P11335556050715682650

`∩[A104914(n+1), A161839(n+1)]`
-/

namespace A104915.P11335556050715682650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104915.P11335556050715682650

/-!
# A104934: Expansion of (1-x)/(1 - 3*x - 2*x^2).

The programs for A104934, the canonical program `A104934.P17881540940133053384` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104934 has offset 0).

The definition of A104934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-2x^2))` (program `A104934.P17881540940133053384`, by `A104934.P17881540940133053384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104934.P17881540940133053384

`ogf((1-x)/(1-3x-2x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104934

/-- `ogf((1-x)/(1-3x-2x^2))` -/
def P17881540940133053384.Spec : Prop :=
  ∀ n, P17881540940133053384.a n = A104934 n

theorem P17881540940133053384.correct : P17881540940133053384.Spec := by
  intro n
  simp only [A104934]

end A104934

/-! ## A104934.P1227194440048967564

`3*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A104934.P1227194440048967564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2)

end

end A104934.P1227194440048967564

namespace A104934

/-- `3*a(n-1)+2*a(n-2)` -/
def P1227194440048967564.Spec : Prop :=
  ∀ n, (P1227194440048967564.a n : ℤ) = A104934 n

end A104934

/-! ## A104934.P2405222795656648350

`(17+sqrt(17))/34*((3+sqrt(17))/2)^n+(17-sqrt(17))/34*((3-sqrt(17))/2)^n`
-/

namespace A104934.P2405222795656648350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (17 + Real.sqrt (17 : ℝ)) / 34 * ((3 + Real.sqrt (17 : ℝ)) / 2) ^ n + (17 - Real.sqrt (17 : ℝ)) / 34 * ((3 - Real.sqrt (17 : ℝ)) / 2) ^ n

end

end A104934.P2405222795656648350

namespace A104934

/-- `(17+sqrt(17))/34*((3+sqrt(17))/2)^n+(17-sqrt(17))/34*((3-sqrt(17))/2)^n` -/
def P2405222795656648350.Spec : Prop :=
  ∀ n, P2405222795656648350.a n = (A104934 n : ℝ)

end A104934

/-! ## A104934.P2527044643941065220

`A322940(n+1)/2`
-/

namespace A104934.P2527044643941065220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322940 (n + 1) : ℚ) / 2

end

end A104934.P2527044643941065220

namespace A104934

/-- `A322940(n+1)/2` -/
def P2527044643941065220.Spec : Prop :=
  ∀ n, P2527044643941065220.a n = (A104934 n : ℚ)

end A104934

/-! ## A104934.P12429411851709062581

`Δ[A106434(n+1)/2]`
-/

namespace A104934.P12429411851709062581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106434 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104934.P12429411851709062581

namespace A104934

/-- `Δ[A106434(n+1)/2]` -/
def P12429411851709062581.Spec : Prop :=
  ∀ n, P12429411851709062581.a n = (A104934 n : ℚ)

end A104934

/-! ## A104934.P15243242796773436908

`Δ[Δ[A230269(n+1)/2]]`
-/

namespace A104934.P15243242796773436908
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230269 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104934.P15243242796773436908

namespace A104934

/-- `Δ[Δ[A230269(n+1)/2]]` -/
def P15243242796773436908.Spec : Prop :=
  ∀ n, P15243242796773436908.a n = (A104934 n : ℚ)

end A104934

/-! ## A104934.P1031780459415379333

`Δ[A193653(n)-A230269(n+1)]`
-/

namespace A104934.P1031780459415379333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193653 n - A230269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104934.P1031780459415379333

namespace A104934

/-- `Δ[A193653(n)-A230269(n+1)]` -/
def P1031780459415379333.Spec : Prop :=
  ∀ n, P1031780459415379333.a n = A104934 n

end A104934

/-! ## A104934.P10520421036677968326

`(A007483(n+1)-A206776(n+1))/2`
-/

namespace A104934.P10520421036677968326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 (n + 1) - A206776 (n + 1) : ℚ) / 2

end

end A104934.P10520421036677968326

namespace A104934

/-- `(A007483(n+1)-A206776(n+1))/2` -/
def P10520421036677968326.Spec : Prop :=
  ∀ n, P10520421036677968326.a n = (A104934 n : ℚ)

end A104934

/-! ## A104934.P8094399424990112108

`Δ[Δ[A007482(n)]-A007484(n)]`
-/

namespace A104934.P8094399424990112108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A007484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104934.P8094399424990112108

namespace A104934

/-- `Δ[Δ[A007482(n)]-A007484(n)]` -/
def P8094399424990112108.Spec : Prop :=
  ∀ n, P8094399424990112108.a n = A104934 n

end A104934

/-! ## A104934.P11470160552153848773

`Δ[Δ[A007481(2*n)]-A007481(2*n+1)]`
-/

namespace A104934.P11470160552153848773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A007481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104934.P11470160552153848773

namespace A104934

/-- `Δ[Δ[A007481(2*n)]-A007481(2*n+1)]` -/
def P11470160552153848773.Spec : Prop :=
  ∀ n, P11470160552153848773.a n = A104934 n

end A104934

/-!
# A104935: Primes squared of the form k + prime(k).

The programs for A104935, there is no canonical definition to state claims against.
-/

/-! ## A104935.P14075427487204408227

`∩[A033476(n), A107606(n+1)]`
-/

namespace A104935.P14075427487204408227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P14075427487204408227

/-! ## A104935.P4848685765223822834

`∩[A001248(n+1), A107606(n+1)]`
-/

namespace A104935.P4848685765223822834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P4848685765223822834

/-! ## A104935.P8883865984313371902

`∩[A057602(n+1), A107606(n+1)]`
-/

namespace A104935.P8883865984313371902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P8883865984313371902

/-! ## A104935.P1333583883674226983

`∩[A064599(n+1), A107606(n+1)]`
-/

namespace A104935.P1333583883674226983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P1333583883674226983

/-! ## A104935.P16972434619440063865

`∩[A068999(n+1), A107606(n+1)]`
-/

namespace A104935.P16972434619440063865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P16972434619440063865

/-! ## A104935.P17156358395484578156

`∩[A070160(n+1), A107606(n+1)]`
-/

namespace A104935.P17156358395484578156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P17156358395484578156

/-! ## A104935.P8616205787766920473

`∩[A076794(n+1), A107606(n+1)]`
-/

namespace A104935.P8616205787766920473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P8616205787766920473

/-! ## A104935.P6428507699709845192

`∩[A079143(n+1), A107606(n+1)]`
-/

namespace A104935.P6428507699709845192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P6428507699709845192

/-! ## A104935.P8817375596394421958

`∩[A107606(n+1), A179707(n+1)]`
-/

namespace A104935.P8817375596394421958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P8817375596394421958

/-! ## A104935.P5550645426355989432

`∩[A107606(n+1), A190300(n+1)]`
-/

namespace A104935.P5550645426355989432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P5550645426355989432

/-! ## A104935.P15315065452015912040

`∩[A107606(n+1), A227279(n+1)]`
-/

namespace A104935.P15315065452015912040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P15315065452015912040

/-! ## A104935.P18389903370288644527

`∩[A107606(n+1), A247078(n+1)]`
-/

namespace A104935.P18389903370288644527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P18389903370288644527

/-! ## A104935.P9795724704080079954

`∩[A107606(n+1), A280076(n+1)]`
-/

namespace A104935.P9795724704080079954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P9795724704080079954

/-! ## A104935.P18209553627459962474

`∩[A107606(n+1), A319745(n+1)]`
-/

namespace A104935.P18209553627459962474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P18209553627459962474

/-! ## A104935.P10938046204522363079

`∩[A107606(n+1), A326708(n+1)]`
-/

namespace A104935.P10938046204522363079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P10938046204522363079

/-! ## A104935.P18287298114289399364

`∩[A107606(n+1), A329879(n+1)]`
-/

namespace A104935.P18287298114289399364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P18287298114289399364

/-! ## A104935.P5401877066029798246

`∩[A107606(n+1), A390252(n+1)]`
-/

namespace A104935.P5401877066029798246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P5401877066029798246

/-! ## A104935.P7235567159712450924

`∩[A000040(n+1)², A107606(n+1)]`
-/

namespace A104935.P7235567159712450924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104935.P7235567159712450924

/-!
# A104936: Primes from merging of 2 successive digits in decimal expansion of the Euler-Mascheroni Constant.

The programs for A104936, there is no canonical definition to state claims against.
-/

/-! ## A104936.P1048999023381937308

`A198776(lt[7, A198776(n+1)]+1)`
-/

namespace A104936.P1048999023381937308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A104936.P1048999023381937308

/-! ## A104936.P12968981987673642012

`A198776(record[A162341(n)])`
-/

namespace A104936.P12968981987673642012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198776 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104936.P12968981987673642012

/-!
# A104937: Primes from merging of 3 successive digits in decimal expansion of the Euler-Mascheroni constant.

The programs for A104937, there is no canonical definition to state claims against.
-/

/-! ## A104937.P14494815360953715321

`A198777(∑[A010893(n)!])`
-/

namespace A104937.P14494815360953715321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010893 (n + 13)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104937.P14494815360953715321

/-!
# A104938: Primes from merging of 4 successive digits in decimal expansion of the Euler-Mascheroni constant A001620.

The programs for A104938, there is no canonical definition to state claims against.
-/

/-! ## A104938.P17889724610864581808

`A198778(A077168(n+2))`
-/

namespace A104938.P17889724610864581808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (A077168 (n + 2)).toNat

end

end A104938.P17889724610864581808

/-! ## A104938.P4563543933163180241

`A198778(A004917(n+1)+3)`
-/

namespace A104938.P4563543933163180241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (A004917 (n + 1) + 3).toNat

end

end A104938.P4563543933163180241

/-! ## A104938.P12444414011662855752

`A198778(n+3)%A251480(n+1)`
-/

namespace A104938.P12444414011662855752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198778 (n + 3)) (A251480 (n + 1))

end

end A104938.P12444414011662855752

/-! ## A104938.P9231029881465108822

`A260445(A070933(n))+A198778(n+3)`
-/

namespace A104938.P9231029881465108822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (A070933 n).toNat + A198778 (n + 3)

end

end A104938.P9231029881465108822

/-! ## A104938.P16630066081335573395

`A198778(n+3)+A184983(A184983(n))`
-/

namespace A104938.P16630066081335573395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (n + 3) + A184983 (A184983 n).toNat

end

end A104938.P16630066081335573395

/-!
# A104939: Primes from merging of 5 successive digits in decimal expansion of the Euler-Mascheroni Constant.

The programs for A104939, there is no canonical definition to state claims against.
-/

/-! ## A104939.P2197598171447224245

`A198779(A270428(n+1)%A179387(n+1))`
-/

namespace A104939.P2197598171447224245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198779 (Int.tmod (A270428 (n + 1)) (A179387 (n + 1))).toNat

end

end A104939.P2197598171447224245

/-! ## A104939.P16019784238855622590

`A198779(∑[A061704(A100157(n+1))])`
-/

namespace A104939.P16019784238855622590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A100157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198779 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104939.P16019784238855622590

/-! ## A104939.P18332559566235088498

`A198779(A004709(n+1)%A348603(2*n+3))`
-/

namespace A104939.P18332559566235088498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198779 (Int.tmod (A004709 (n + 1)) (A348603 (2 * n + 3))).toNat

end

end A104939.P18332559566235088498

/-! ## A104939.P8491380931954869699

`A198779(A342521(n+1)%A010452(2*(n+2)))`
-/

namespace A104939.P8491380931954869699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198779 (Int.tmod (A342521 (n + 1)) (A010452 (2 * (n + 2)))).toNat

end

end A104939.P8491380931954869699

/-! ## A104939.P15705187251389161323

`A198779(A344742(n+1)%A139441(2*(n+2)))`
-/

namespace A104939.P15705187251389161323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198779 (Int.tmod (A344742 (n + 1)) (A139441 (2 * (n + 2)))).toNat

end

end A104939.P15705187251389161323

/-!
# A104940: Primes from merging of 6 successive digits in decimal expansion of the Euler-Mascheroni Constant.

The programs for A104940, there is no canonical definition to state claims against.
-/

/-! ## A104940.P5416939636799895534

`A198780(lt[A117957(2*n+1), A243503(n+1)])`
-/

namespace A104940.P5416939636799895534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198780 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104940.P5416939636799895534

/-! ## A104940.P17762496686008078869

`p?[(A342721(n+1)+1)*A198780(n+1)]`
-/

namespace A104940.P17762496686008078869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A342721 (n + 1) + 1) * A198780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104940.P17762496686008078869

/-! ## A104940.P7679050326344135858

`p?[A077168(A342721(n+1))*A198780(n+1)]`
-/

namespace A104940.P7679050326344135858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A342721 (n + 1)).toNat * A198780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104940.P7679050326344135858

/-! ## A104940.P1805421995159823773

`A198780(lt[A218970(n+3), Δ[n²]])`
-/

namespace A104940.P1805421995159823773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198780 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104940.P1805421995159823773

/-! ## A104940.P1399842969337689561

`A198780(lt[A026007(n), A089473(n)])`
-/

namespace A104940.P1399842969337689561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198780 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104940.P1399842969337689561

/-!
# A104942: Primes from merging of 8 successive digits in decimal expansion of the Euler-Mascheroni Constant.

The programs for A104942, there is no canonical definition to state claims against.
-/

/-! ## A104942.P15623903104135497818

`A198782(A342721(n+1)+A187829(n+1))`
-/

namespace A104942.P15623903104135497818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198782 (A342721 (n + 1) + A187829 (n + 1)).toNat

end

end A104942.P15623903104135497818

/-!
# A104943: Primes from merging of 9 successive digits in decimal expansion of the Euler-Mascheroni Constant.

The programs for A104943, there is no canonical definition to state claims against.
-/

/-! ## A104943.P18428788283827562413

`A198783(lt[A341452(n+5), A226314(2*(n+2))])`
-/

namespace A104943.P18428788283827562413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341452 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104943.P18428788283827562413

/-! ## A104943.P3872555786267260042

`A198783(lt[A014382(n), A280398(2*n+3)])`
-/

namespace A104943.P3872555786267260042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104943.P3872555786267260042

/-! ## A104943.P7451808066339729536

`A198783(lt[A334053(n), A056842(n+1)])`
-/

namespace A104943.P7451808066339729536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104943.P7451808066339729536

/-! ## A104943.P15531259834375246975

`A198783(lt[A000225(n), A187162(2*n+3)])`
-/

namespace A104943.P15531259834375246975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104943.P15531259834375246975

/-!
# A104944: Primes from merging of 10 successive digits in decimal expansion of the Euler-Mascheroni constant.

The programs for A104944, there is no canonical definition to state claims against.
-/

/-! ## A104944.P3618366281872270475

`A198784(A187829(n+1)+A162781(n+1))`
-/

namespace A104944.P3618366281872270475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198784 (A187829 (n + 1) + A162781 (n + 1)).toNat

end

end A104944.P3618366281872270475

/-! ## A104944.P16099119060001652374

`A198784(A162781(n+1)+A077168(n))`
-/

namespace A104944.P16099119060001652374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198784 (A162781 (n + 1) + A077168 n).toNat

end

end A104944.P16099119060001652374

/-! ## A104944.P1215521298380388694

`A198784(A342721(n+2)+A077168(n))`
-/

namespace A104944.P1215521298380388694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198784 (A342721 (n + 2) + A077168 n).toNat

end

end A104944.P1215521298380388694

/-! ## A104944.P12756515887781688837

`A198784(or(A077168(n), A127788(n+1)))`
-/

namespace A104944.P12756515887781688837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198784 (Int.lor (A077168 n) (A127788 (n + 1))).toNat

end

end A104944.P12756515887781688837

/-! ## A104944.P15454165499231736553

`A198784(or(A077168(n), A161266(n+1)))`
-/

namespace A104944.P15454165499231736553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198784 (Int.lor (A077168 n) (A161266 (n + 1))).toNat

end

end A104944.P15454165499231736553

/-!
# A104945: Primes from merging of 2 successive digits in decimal expansion of the Champernowne Constant.

The programs for A104945, there is no canonical definition to state claims against.
-/

/-! ## A104945.P9917730066998474158

`p?[A073729(p?[A136414(n+1)])]`
-/

namespace A104945.P9917730066998474158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104945.P9917730066998474158

/-! ## A104945.P18324507052861881225

`p?[A334676(p?[A136414(n+1)])]`
-/

namespace A104945.P18324507052861881225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104945.P18324507052861881225

/-! ## A104945.P6038491982872051256

`p?[A136414(comp[A031287(n+1)])]`
-/

namespace A104945.P6038491982872051256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031287 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104945.P6038491982872051256

/-! ## A104945.P16648374620952990841

`p?[A136414(comp[A065650(10*n)])]`
-/

namespace A104945.P16648374620952990841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104945.P16648374620952990841

/-! ## A104945.P17791369325548016125

`p?[or(A136414(n+1), A185264(n))]`
-/

namespace A104945.P17791369325548016125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136414 (n + 1)) (A185264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104945.P17791369325548016125

/-!
# A104946: Primes from merging of 3 successive digits in decimal expansion of the Champernowne Constant.

The programs for A104946, there is no canonical definition to state claims against.
-/

/-! ## A104946.P2361667031216143325

`p?[A193431(comp[A031287(n+1)])]`
-/

namespace A104946.P2361667031216143325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031287 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193431 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104946.P2361667031216143325

/-!
# A104947: Primes from merging of 4 successive digits in decimal expansion of the Champernowne Constant.

The programs for A104947, there is no canonical definition to state claims against.
-/

/-! ## A104947.P15384709313538783745

`p?[A193492(n+1)-A016389(n)]`
-/

namespace A104947.P15384709313538783745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193492 (n + 1) - A016389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104947.P15384709313538783745

/-! ## A104947.P17194643551716140755

`p?[A193492(record[A239088(n+1)])]`
-/

namespace A104947.P17194643551716140755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193492 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104947.P17194643551716140755

/-!
# A104948: Primes from merging of 5 successive digits in decimal expansion of the Champernowne Constant.

The programs for A104948, there is no canonical definition to state claims against.
-/

/-! ## A104948.P14432488714487061631

`p?[A193493(n+1)]%A084482(n+1)`
-/

namespace A104948.P14432488714487061631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A084482 (n + 1))

end

end A104948.P14432488714487061631

/-! ## A104948.P14410017570820126440

`p?[A193493(n+1)]%A046455(A020710(n))`
-/

namespace A104948.P14410017570820126440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A046455 (A020710 n).toNat)

end

end A104948.P14410017570820126440

/-! ## A104948.P16751928328407331884

`p?[A193493(n+1)]*A072491(A000043(n+1))`
-/

namespace A104948.P16751928328407331884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A072491 (A000043 (n + 1)).toNat

end

end A104948.P16751928328407331884

/-! ## A104948.P8722020974169164885

`A008683(A189990(n+1))+p?[A193493(n+1)]`
-/

namespace A104948.P8722020974169164885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A189990 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104948.P8722020974169164885

/-!
# A104967: Matrix inverse of triangle A104219, read by rows, where A104219(n,k) equals the number of Schroeder paths of length 2n having k peaks at height 1.

The programs for A104967, the canonical program `A104967.P4683815472343647144` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104967 has offset 0).

The definition of A104967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104967.P4683815472343647144

`T(n-1,k)+T(n-1,k-1)-2*T(n-2,k-1)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104967

/-- `T(n-1,k)+T(n-1,k-1)-2*T(n-2,k-1)` -/
def P4683815472343647144.Spec : Prop :=
  ∀ n, P4683815472343647144.a n = A104967 n

theorem P4683815472343647144.correct : P4683815472343647144.Spec := by
  intro n
  simp only [A104967]

end A104967

/-! ## A104967.P8618212406244995530

`A326728(n+1)^A256893(n+1)`
-/

namespace A104967.P8618212406244995530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326728 (n + 1) : ℚ) ^ (A256893 (n + 1) : ℤ)

end

end A104967.P8618212406244995530

namespace A104967

/-- `A326728(n+1)^A256893(n+1)` -/
def P8618212406244995530.Spec : Prop :=
  ∀ n, P8618212406244995530.a n = (A104967 n : ℚ)

end A104967

/-! ## A104967.P10107598214829953465

`A109466(n)-A059841(A114153(n))`
-/

namespace A104967.P10107598214829953465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n - A059841 (A114153 n).toNat

end

end A104967.P10107598214829953465

namespace A104967

/-- `A109466(n)-A059841(A114153(n))` -/
def P10107598214829953465.Spec : Prop :=
  ∀ n, P10107598214829953465.a n = A104967 n

end A104967

/-! ## A104967.P10585184105884584525

`A135814(A055645(n))-A163351(n+1)`
-/

namespace A104967.P10585184105884584525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135814 (A055645 n).toNat - A163351 (n + 1)

end

end A104967.P10585184105884584525

namespace A104967

/-- `A135814(A055645(n))-A163351(n+1)` -/
def P10585184105884584525.Spec : Prop :=
  ∀ n, P10585184105884584525.a n = A104967 n

end A104967

/-! ## A104967.P5266951606746742692

`2*A135814(A055645(n))-A007318(n)`
-/

namespace A104967.P5266951606746742692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135814 (A055645 n).toNat - A007318 n

end

end A104967.P5266951606746742692

namespace A104967

/-- `2*A135814(A055645(n))-A007318(n)` -/
def P5266951606746742692.Spec : Prop :=
  ∀ n, P5266951606746742692.a n = A104967 n

end A104967

/-!
# A104968: Absolute row sums of triangle A104967.

The programs for A104968, there is no canonical definition to state claims against.
-/

/-! ## A104968.P11095074293180872678

`∑[A146103(A303832(n+1))]`
-/

namespace A104968.P11095074293180872678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146103 (A303832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104968.P11095074293180872678

/-!
# A104969: Sum of squares of terms in rows of triangle A104967.

The programs for A104969, the canonical program `A104969.P1333012050977968884` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104969 has offset 0).

The definition of A104969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104969.P5048309551564926579

`2*a(n-1)-(1-n)*A182122(n)` with `a(0)=1`
-/

namespace A104969.P5048309551564926579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ)) * A182122 n

end

end A104969.P5048309551564926579

namespace A104969

/-- `2*a(n-1)-(1-n)*A182122(n)` -/
def P5048309551564926579.Spec : Prop :=
  ∀ n, P5048309551564926579.a n = A104969 n

end A104969

/-! ## A104969.P1333012050977968884

`A000034(n)*A104970(A004526(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104969

/-- `A000034(n)*A104970(A004526(n))` -/
def P1333012050977968884.Spec : Prop :=
  ∀ n, P1333012050977968884.a n = A104969 n

theorem P1333012050977968884.correct : P1333012050977968884.Spec := by
  intro n
  simp only [A104969]

end A104969

/-! ## A104969.P13774729806206244200

`lcm(A001316(n), A104970(A004526(n)))`
-/

namespace A104969.P13774729806206244200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A104970 (A004526 n).toNat)

end

end A104969.P13774729806206244200

namespace A104969

/-- `lcm(A001316(n), A104970(A004526(n)))` -/
def P13774729806206244200.Spec : Prop :=
  ∀ n, (P13774729806206244200.a n : ℤ) = A104969 n

end A104969

/-! ## A104969.P2102844092847030857

`A001316(1-(-1)^n)*A104970(A004526(n))`
-/

namespace A104969.P2102844092847030857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (1 - (-1) ^ n).toNat * A104970 (A004526 n).toNat

end

end A104969.P2102844092847030857

namespace A104969

/-- `A001316(1-(-1)^n)*A104970(A004526(n))` -/
def P2102844092847030857.Spec : Prop :=
  ∀ n, P2102844092847030857.a n = A104969 n

end A104969

/-! ## A104969.P17873383313859744969

`A006530(or(n, n+1)-n)*A104970(A004526(n))`
-/

namespace A104969.P17873383313859744969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor n (n + 1) - n) * A104970 (A004526 n).toNat

end

end A104969.P17873383313859744969

namespace A104969

/-- `A006530(or(n, n+1)-n)*A104970(A004526(n))` -/
def P17873383313859744969.Spec : Prop :=
  ∀ n, P17873383313859744969.a n = A104969 n

end A104969

/-!
# A104970: Sum of squares of terms in even-indexed rows of triangle A104967.

The programs for A104970, the canonical program `A104970.P3543221888348874227` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104970 has offset 0).

The definition of A104970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104970.P13118968113675612679

`A104969(2*n)`
-/

namespace A104970.P13118968113675612679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104969 (2 * n)

end

end A104970.P13118968113675612679

namespace A104970

/-- `A104969(2*n)` -/
def P13118968113675612679.Spec : Prop :=
  ∀ n, P13118968113675612679.a n = A104970 n

end A104970

/-! ## A104970.P10136463483376559913

`A104969(Δ[n²])/2`
-/

namespace A104970.P10136463483376559913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A104970.P10136463483376559913

namespace A104970

/-- `A104969(Δ[n²])/2` -/
def P10136463483376559913.Spec : Prop :=
  ∀ n, P10136463483376559913.a n = (A104970 n : ℚ)

end A104970

/-! ## A104970.P453620371274402432

`record[A104969(and(n, n+1))]`
-/

namespace A104970.P453620371274402432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104969 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104970.P453620371274402432

namespace A104970

/-- `record[A104969(and(n, n+1))]` -/
def P453620371274402432.Spec : Prop :=
  ∀ n, P453620371274402432.a n = A104970 n

end A104970

/-! ## A104970.P5386014449141128290

`record[A104969(n)/(-1)^n]`
-/

namespace A104970.P5386014449141128290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104969 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104970.P5386014449141128290

namespace A104970

/-- `record[A104969(n)/(-1)^n]` -/
def P5386014449141128290.Spec : Prop :=
  ∀ n, P5386014449141128290.a n = (A104970 n : ℚ)

end A104970

/-! ## A104970.P10117151527799277592

`record[A104969(A014681(n))]`
-/

namespace A104970.P10117151527799277592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104969 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104970.P10117151527799277592

namespace A104970

/-- `record[A104969(A014681(n))]` -/
def P10117151527799277592.Spec : Prop :=
  ∀ n, P10117151527799277592.a n = A104970 n

end A104970

/-! ## A104970.P3543221888348874227

`A004171(n)-A091520(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104970

/-- `A004171(n)-A091520(n)` -/
def P3543221888348874227.Spec : Prop :=
  ∀ n, P3543221888348874227.a n = A104970 n

theorem P3543221888348874227.correct : P3543221888348874227.Spec := by
  intro n
  simp only [A104970]

end A104970

/-! ## A104970.P6165229998792897273

`2*A000079(n)²-A091520(n)`
-/

namespace A104970.P6165229998792897273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A091520 n

end

end A104970.P6165229998792897273

namespace A104970

/-- `2*A000079(n)²-A091520(n)` -/
def P6165229998792897273.Spec : Prop :=
  ∀ n, P6165229998792897273.a n = A104970 n

theorem P6165229998792897273.correct : P6165229998792897273.Spec := by
  intro n
  simp only [A104970, Nat.add_sub_cancel, A104970.P6165229998792897273.a, A104970.P3543221888348874227.a, A000079, A000079.P10855139691139572931.a, A004171, A004171.P4825528214568774058.a, A091520, A091520.P11447213063072365444.a, A003148, A003148.P18149042010576653881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104970

/-! ## A104970.P928926466587721766

`A000079(2*n+1)-A091520(n)`
-/

namespace A104970.P928926466587721766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A091520 n

end

end A104970.P928926466587721766

namespace A104970

/-- `A000079(2*n+1)-A091520(n)` -/
def P928926466587721766.Spec : Prop :=
  ∀ n, P928926466587721766.a n = A104970 n

end A104970

/-! ## A104970.P18091864899793637507

`A104969(n+1+n)-A104969(n+n)`
-/

namespace A104970.P18091864899793637507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104969 (n + 1 + n) - A104969 (n + n)

end

end A104970.P18091864899793637507

namespace A104970

/-- `A104969(n+1+n)-A104969(n+n)` -/
def P18091864899793637507.Spec : Prop :=
  ∀ n, P18091864899793637507.a n = A104970 n

end A104970

/-!
# A104972: Numbers with 5 distinct digits {1,2,3,4,5} such that all adjacent digits (as well as first and last digits) are coprime.

The programs for A104972, there is no canonical definition to state claims against.
-/

/-! ## A104972.P8188373676482846789

`A178475(A178473(n+2)+comp[or(2, n)+n])`
-/

namespace A104972.P8188373676482846789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178475 (A178473 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A104972.P8188373676482846789

/-!
# A104974: A Fredholm-Rueppel triangle.

The programs for A104974, the canonical program `A104974.P16311674773487083019` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104974 has offset 0).

The definition of A104974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104974.P16311674773487083019

`A000108(row(n)+1-col(n))%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104974

/-- `A000108(row(n)+1-col(n))%2` -/
def P16311674773487083019.Spec : Prop :=
  ∀ n, P16311674773487083019.a n = A104974 n

theorem P16311674773487083019.correct : P16311674773487083019.Spec := by
  intro n
  simp only [A104974]

end A104974

/-! ## A104974.P11292266691916034024

`A209229(row(n)-col(n)+2)`
-/

namespace A104974.P11292266691916034024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat

end

end A104974.P11292266691916034024

namespace A104974

/-- `A209229(row(n)-col(n)+2)` -/
def P11292266691916034024.Spec : Prop :=
  ∀ n, P11292266691916034024.a n = A104974 n

end A104974

/-! ## A104974.P13096710900972578896

`A036987(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104974.P13096710900972578896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104974.P13096710900972578896

namespace A104974

/-- `A036987(C(comp[∑[n]]-n, 2)-n)` -/
def P13096710900972578896.Spec : Prop :=
  ∀ n, P13096710900972578896.a n = A104974 n

end A104974

/-! ## A104974.P2768328786190468953

`A209229(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A104974.P2768328786190468953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A104974.P2768328786190468953

namespace A104974

/-- `A209229(C(comp[∑[n]]-n, 2)-n+1)` -/
def P2768328786190468953.Spec : Prop :=
  ∀ n, P2768328786190468953.a n = A104974 n

end A104974

/-! ## A104974.P2693728345461741700

`1-A043545(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104974.P2693728345461741700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A043545 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104974.P2693728345461741700

namespace A104974

/-- `1-A043545(C(comp[∑[n]]-n, 2)-n)` -/
def P2693728345461741700.Spec : Prop :=
  ∀ n, P2693728345461741700.a n = A104974 n

end A104974

/-! ## A104974.P5616904286512280231

`2-A043529(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104974.P5616904286512280231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A043529 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104974.P5616904286512280231

namespace A104974

/-- `2-A043529(C(comp[∑[n]]-n, 2)-n)` -/
def P5616904286512280231.Spec : Prop :=
  ∀ n, P5616904286512280231.a n = A104974 n

end A104974

/-! ## A104974.P12648324454578911187

`A000108(C(comp[∑[n]]-n, 2)-n)%2`
-/

namespace A104974.P12648324454578911187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 2

end

end A104974.P12648324454578911187

namespace A104974

/-- `A000108(C(comp[∑[n]]-n, 2)-n)%2` -/
def P12648324454578911187.Spec : Prop :=
  ∀ n, P12648324454578911187.a n = A104974 n

end A104974

/-! ## A104974.P13785018080477383518

`A001405(C(comp[∑[n]]-n, 2)-n)%2`
-/

namespace A104974.P13785018080477383518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 2

end

end A104974.P13785018080477383518

namespace A104974

/-- `A001405(C(comp[∑[n]]-n, 2)-n)%2` -/
def P13785018080477383518.Spec : Prop :=
  ∀ n, P13785018080477383518.a n = A104974 n

end A104974

/-! ## A104974.P13330824111080831571

`A007464(C(comp[∑[n]]-n, 2)-n)%2`
-/

namespace A104974.P13330824111080831571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007464 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 2

end

end A104974.P13330824111080831571

namespace A104974

/-- `A007464(C(comp[∑[n]]-n, 2)-n)%2` -/
def P13330824111080831571.Spec : Prop :=
  ∀ n, P13330824111080831571.a n = A104974 n

end A104974

/-! ## A104974.P2143466804975864824

`A048896(C(comp[∑[n]]-n, 2)-n)%2`
-/

namespace A104974.P2143466804975864824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048896 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 2

end

end A104974.P2143466804975864824

namespace A104974

/-- `A048896(C(comp[∑[n]]-n, 2)-n)%2` -/
def P2143466804975864824.Spec : Prop :=
  ∀ n, P2143466804975864824.a n = A104974 n

end A104974

/-! ## A104974.P3628089807672094183

`A195441(C(comp[∑[n]]-n, 2)-n)%2`
-/

namespace A104974.P3628089807672094183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195441 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 2

end

end A104974.P3628089807672094183

namespace A104974

/-- `A195441(C(comp[∑[n]]-n, 2)-n)%2` -/
def P3628089807672094183.Spec : Prop :=
  ∀ n, P3628089807672094183.a n = A104974 n

end A104974

/-! ## A104974.P9943254275376020576

`A036987(A134224(n))`
-/

namespace A104974.P9943254275376020576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A134224 n).toNat

end

end A104974.P9943254275376020576

namespace A104974

/-- `A036987(A134224(n))` -/
def P9943254275376020576.Spec : Prop :=
  ∀ n, P9943254275376020576.a n = A104974 n

end A104974

/-! ## A104974.P15649431718787846236

`A036987(A004736(n+1))`
-/

namespace A104974.P15649431718787846236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A004736 (n + 1)).toNat

end

end A104974.P15649431718787846236

namespace A104974

/-- `A036987(A004736(n+1))` -/
def P15649431718787846236.Spec : Prop :=
  ∀ n, P15649431718787846236.a n = A104974 n

end A104974

/-! ## A104974.P75683483863447021

`A036987(A025581(n)+1)`
-/

namespace A104974.P75683483863447021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A025581 n + 1).toNat

end

end A104974.P75683483863447021

namespace A104974

/-- `A036987(A025581(n)+1)` -/
def P75683483863447021.Spec : Prop :=
  ∀ n, P75683483863447021.a n = A104974 n

end A104974

/-! ## A104974.P16662387746003745854

`A209229(A025581(n)+2)`
-/

namespace A104974.P16662387746003745854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A025581 n + 2).toNat

end

end A104974.P16662387746003745854

namespace A104974

/-- `A209229(A025581(n)+2)` -/
def P16662387746003745854.Spec : Prop :=
  ∀ n, P16662387746003745854.a n = A104974 n

end A104974

/-! ## A104974.P8125307893946193682

`A297109(2*(A025581(n)+2))`
-/

namespace A104974.P8125307893946193682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (2 * (A025581 n + 2)).toNat

end

end A104974.P8125307893946193682

namespace A104974

/-- `A297109(2*(A025581(n)+2))` -/
def P8125307893946193682.Spec : Prop :=
  ∀ n, P8125307893946193682.a n = A104974 n

end A104974

/-! ## A104974.P16089168670390073649

`and(1, A000108(A025581(n)+1))`
-/

namespace A104974.P16089168670390073649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000108 (A025581 n + 1).toNat)

end

end A104974.P16089168670390073649

namespace A104974

/-- `and(1, A000108(A025581(n)+1))` -/
def P16089168670390073649.Spec : Prop :=
  ∀ n, P16089168670390073649.a n = A104974 n

end A104974

/-! ## A104974.P16827712688457235054

`and(1, A243764(A025581(n)+2))`
-/

namespace A104974.P16827712688457235054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A243764 (A025581 n + 2).toNat)

end

end A104974.P16827712688457235054

namespace A104974

/-- `and(1, A243764(A025581(n)+2))` -/
def P16827712688457235054.Spec : Prop :=
  ∀ n, P16827712688457235054.a n = A104974 n

end A104974

/-! ## A104974.P17221730114907228377

`abs(A182492(A025581(n)+1))%2`
-/

namespace A104974.P17221730114907228377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182492 (A025581 n + 1).toNat| 2

end

end A104974.P17221730114907228377

namespace A104974

/-- `abs(A182492(A025581(n)+1))%2` -/
def P17221730114907228377.Spec : Prop :=
  ∀ n, P17221730114907228377.a n = A104974 n

end A104974

/-! ## A104974.P6496879085597969247

`A010055(2*(A004736(n+1)+1))`
-/

namespace A104974.P6496879085597969247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (2 * (A004736 (n + 1) + 1)).toNat

end

end A104974.P6496879085597969247

namespace A104974

/-- `A010055(2*(A004736(n+1)+1))` -/
def P6496879085597969247.Spec : Prop :=
  ∀ n, P6496879085597969247.a n = A104974 n

end A104974

/-!
# A104975: Inverse of a Fredholm-Rueppel triangle.

The programs for A104975, there is no canonical definition to state claims against.
-/

/-! ## A104975.P5542884538547044231

`round(acot(A119879(n))*A214407(n))`
-/

namespace A104975.P5542884538547044231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A119879 n : ℝ) * (A214407 n : ℝ))

end

end A104975.P5542884538547044231

/-! ## A104975.P5552616934069793723

`A366627(A369731(n))*A369736(n)`
-/

namespace A104975.P5552616934069793723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366627 (A369731 n).toNat * A369736 n

end

end A104975.P5552616934069793723

/-! ## A104975.P1182935222075910542

`A194285(A094954(2*(n+1)))*A369736(n)`
-/

namespace A104975.P1182935222075910542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A094954 (2 * (n + 1))).toNat * A369736 n

end

end A104975.P1182935222075910542

/-! ## A104975.P16990642421726652424

`A103414(A183402(n+1))*A369736(n)`
-/

namespace A104975.P16990642421726652424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103414 (A183402 (n + 1)).toNat * A369736 n

end

end A104975.P16990642421726652424

/-! ## A104975.P7416614655450817496

`A357630(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A104975.P7416614655450817496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357630 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A104975.P7416614655450817496

/-!
# A104976: Row sums of A104975.

The programs for A104976, there is no canonical definition to state claims against.
-/

/-! ## A104976.P3461865245096957928

`∑[A104975(A131179(n))]`
-/

namespace A104976.P3461865245096957928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 (A131179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104976.P3461865245096957928

/-! ## A104976.P16708592547689424190

`∑[A104975(∑[A267354(n)])]`
-/

namespace A104976.P16708592547689424190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104976.P16708592547689424190

/-! ## A104976.P12078488999205832400

`∑[A104975(∑[n])]`
-/

namespace A104976.P12078488999205832400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104976.P12078488999205832400

/-!
# A104977: Defining sequence for an inverse Fredholm-Rueppel triangle.

The programs for A104977, there is no canonical definition to state claims against.
-/

/-! ## A104977.P14317405127528253636

`A104975(C(Δ[n²], 2))`
-/

namespace A104977.P14317405127528253636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A104977.P14317405127528253636

/-! ## A104977.P14642065826792920392

`A104975(n*Δ[n²])`
-/

namespace A104977.P14642065826792920392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A104977.P14642065826792920392

/-! ## A104977.P16987754051675121824

`log2(4/2)*A104975(A000217(2*n))`
-/

namespace A104977.P16987754051675121824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * (A104975 (A000217 (2 * n)).toNat : ℝ)

end

end A104977.P16987754051675121824

/-! ## A104977.P16892465071648798608

`or(A000007(n), A104975(A014105(n)))`
-/

namespace A104977.P16892465071648798608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A104975 (A014105 n).toNat)

end

end A104977.P16892465071648798608

/-! ## A104977.P3615742328933196407

`or(A104975(A014105(n)), A112316(n))`
-/

namespace A104977.P3615742328933196407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104975 (A014105 n).toNat) (A112316 n)

end

end A104977.P3615742328933196407

/-!
# A104978: Triangle read by rows, where the g.f. satisfies A(x, y) = 1 + x*A(x, y)^2 + x*y*A(x, y)^3.

The programs for A104978, there is no canonical definition to state claims against.
-/

/-! ## A104978.P6995222341935386398

`A073187(A082152(n+1))`
-/

namespace A104978.P6995222341935386398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073187 (A082152 (n + 1)).toNat

end

end A104978.P6995222341935386398

/-! ## A104978.P5082387345775895728

`A330798(n)/A002024(n+1)`
-/

namespace A104978.P5082387345775895728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330798 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A104978.P5082387345775895728

/-! ## A104978.P3484115098798028411

`A108426(A061579(n))`
-/

namespace A104978.P3484115098798028411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (A061579 n).toNat

end

end A104978.P3484115098798028411

/-! ## A104978.P18252681410101787103

`A108426(A114327(n)+n)`
-/

namespace A104978.P18252681410101787103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (A114327 n + (n : ℤ)).toNat

end

end A104978.P18252681410101787103

/-! ## A104978.P10579547828238084751

`A108426(∑[A198954(n)-1])`
-/

namespace A104978.P10579547828238084751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104978.P10579547828238084751

/-! ## A104978.P17069624798722115446

`A108426(A038722(n+1)-1)`
-/

namespace A104978.P17069624798722115446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (A038722 (n + 1) - 1).toNat

end

end A104978.P17069624798722115446

/-! ## A104978.P17268516191862142414

`A108426(∑[A023443(A198954(n))])`
-/

namespace A104978.P17268516191862142414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104978.P17268516191862142414

/-! ## A104978.P4919989579588372596

`A108426(A023443(A038722(n+1)))`
-/

namespace A104978.P4919989579588372596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A104978.P4919989579588372596

/-! ## A104978.P15399150559736332671

`A108426(A002378(n)%A014132(n+1))`
-/

namespace A104978.P15399150559736332671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A104978.P15399150559736332671

/-! ## A104978.P14408956379691539598

`A108426(A259361(A038722(n+1)²))`
-/

namespace A104978.P14408956379691539598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 (A259361 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A104978.P14408956379691539598

/-!
# A104979: Semidiagonal sums of triangle A104978: a(n) = Sum_{k=0..[n/2]} A104978(n-k,n-2*k).

The programs for A104979, there is no canonical definition to state claims against.
-/

/-! ## A104979.P141562409330855862

`A083382(or(10, A188332(n+1)))`
-/

namespace A104979.P141562409330855862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (Int.lor 10 (A188332 (n + 1))).toNat

end

end A104979.P141562409330855862

/-! ## A104979.P14772996459038444713

`A002265(A007136(2*(n+2)))+1`
-/

namespace A104979.P14772996459038444713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007136 (2 * (n + 2))).toNat + 1

end

end A104979.P14772996459038444713

/-!
# A104980: Triangular matrix T, read by rows, that satisfies: SHIFT_LEFT(column 0 of T^p) = p*(column p+1 of T), or [T^p](m,0) = p*T(p+m,p+1) for all m>=1 and p>=-1.

The programs for A104980, there is no canonical definition to state claims against.
-/

/-! ## A104980.P12214055486904523291

`or(A005713(A060498(n)), A156628(n))`
-/

namespace A104980.P12214055486904523291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005713 (A060498 n).toNat) (A156628 n)

end

end A104980.P12214055486904523291

/-! ## A104980.P6660308934112651649

`or(A058276(A050447(n)), A156628(n))`
-/

namespace A104980.P6660308934112651649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058276 (A050447 n).toNat) (A156628 n)

end

end A104980.P6660308934112651649

/-! ## A104980.P12223304899604914117

`or(A011738(A112032(n)), A156628(n))`
-/

namespace A104980.P12223304899604914117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 (A112032 n).toNat) (A156628 n)

end

end A104980.P12223304899604914117

/-! ## A104980.P11945169893499368303

`or(A011675(A167040(n)), A156628(n))`
-/

namespace A104980.P11945169893499368303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011675 (A167040 n).toNat) (A156628 n)

end

end A104980.P11945169893499368303

/-! ## A104980.P12669187855960902916

`or(A156628(n), A196272(A107293(n)))`
-/

namespace A104980.P12669187855960902916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156628 n) (A196272 (A107293 n).toNat)

end

end A104980.P12669187855960902916

/-!
# A104981: Column 1 of triangle A104980; also equals column 0 of triangle A104986, which equals the matrix logarithm of A104980.

The programs for A104981, there is no canonical definition to state claims against.
-/

/-! ## A104981.P8245172852495560099

`A104986(∑[n])`
-/

namespace A104981.P8245172852495560099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104981.P8245172852495560099

/-! ## A104981.P16167405238327002566

`record[A104986(n)]`
-/

namespace A104981.P16167405238327002566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104981.P16167405238327002566

/-! ## A104981.P7411517862988060217

`A104986(A000217(n))^(char[1]+1)`
-/

namespace A104981.P7411517862988060217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104986 (A000217 n).toNat ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A104981.P7411517862988060217

/-! ## A104981.P59055951386903032

`A104980(A000124(n))%A104989(n)`
-/

namespace A104981.P59055951386903032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104980 (A000124 n).toNat) (A104989 n)

end

end A104981.P59055951386903032

/-! ## A104981.P8582382183630998200

`A104986(A000217(n))%A104982(n)`
-/

namespace A104981.P8582382183630998200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104986 (A000217 n).toNat) (A104982 n)

end

end A104981.P8582382183630998200

/-! ## A104981.P13846440319395000865

`or(A078588(n), A104986(A000217(n)))`
-/

namespace A104981.P13846440319395000865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078588 n) (A104986 (A000217 n).toNat)

end

end A104981.P13846440319395000865

/-! ## A104981.P17367105533053678195

`or(A102679(n), A104986(A000217(n)))`
-/

namespace A104981.P17367105533053678195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102679 n) (A104986 (A000217 n).toNat)

end

end A104981.P17367105533053678195

/-! ## A104981.P9764094846840914334

`or(A104986(A000217(n)), A107846(n))`
-/

namespace A104981.P9764094846840914334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104986 (A000217 n).toNat) (A107846 n)

end

end A104981.P9764094846840914334

/-! ## A104981.P4973106200311513374

`or(A104986(A000217(n)), A323162(n+1))`
-/

namespace A104981.P4973106200311513374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104986 (A000217 n).toNat) (A323162 (n + 1))

end

end A104981.P4973106200311513374

/-!
# A104982: Column 3 of triangle A104980, omitting leading zeros.

The programs for A104982, there is no canonical definition to state claims against.
-/

/-! ## A104982.P9143116671255727740

`A104988(∑[n+1])/2`
-/

namespace A104982.P9143116671255727740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104988 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A104982.P9143116671255727740

/-! ## A104982.P4943116311255354173

`record[A104988(n+1)/2]`
-/

namespace A104982.P4943116311255354173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104988 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104982.P4943116311255354173

/-! ## A104982.P16872437190084888143

`A104980(A167614(n+2))`
-/

namespace A104982.P16872437190084888143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 (A167614 (n + 2)).toNat

end

end A104982.P16872437190084888143

/-! ## A104982.P3212100836812361695

`A104980(eq[3, A002262(n)])`
-/

namespace A104982.P3212100836812361695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104982.P3212100836812361695

/-!
# A104983: Row sums of triangular matrix T = A104980 which satisfies: SHIFT_LEFT(column 0 of T^p) = p*(column p+1 of T).

The programs for A104983, there is no canonical definition to state claims against.
-/

/-! ## A104983.P2925134198184156409

`A325354(A336484(n+1))`
-/

namespace A104983.P2925134198184156409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325354 (A336484 (n + 1)).toNat

end

end A104983.P2925134198184156409

/-! ## A104983.P3135373255944972951

`A361058(A099398(n))+∏[n+1]`
-/

namespace A104983.P3135373255944972951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (A099398 n).toNat + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104983.P3135373255944972951

/-!
# A104985: Row sums of triangle A104984.

The programs for A104985, there is no canonical definition to state claims against.
-/

/-! ## A104985.P9118849338117981298

`1-(A387674(n)+n)`
-/

namespace A104985.P9118849338117981298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A387674 n + (n : ℤ))

end

end A104985.P9118849338117981298

/-! ## A104985.P4598742653235691651

`∑[A167894(n)-A157928(n)]`
-/

namespace A104985.P4598742653235691651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104985.P4598742653235691651

/-! ## A104985.P2460760506829241136

`A057427(n)+∑[A167894(n)]-n`
-/

namespace A104985.P2460760506829241136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A104985.P2460760506829241136

/-! ## A104985.P16005403702063758011

`∑[A167894(n)]-A002262(A055998(n))`
-/

namespace A104985.P16005403702063758011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002262 (A055998 n).toNat

end

end A104985.P16005403702063758011

/-! ## A104985.P15813395548148617297

`∑[A167894(n)-A057427(A161680(n))]`
-/

namespace A104985.P15813395548148617297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n - A057427 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104985.P15813395548148617297

/-! ## A104985.P1231650452756203199

`∑[A104984(∑[n])-A157928(n)]`
-/

namespace A104985.P1231650452756203199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104984 (∑ j ∈ Finset.range (n + 1), f2 j) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104985.P1231650452756203199

/-!
# A104986: Matrix logarithm of triangle A104980.

The programs for A104986, there is no canonical definition to state claims against.
-/

/-! ## A104986.P10730545076621159459

`A084545(A052955(2*n+3))%A125170(n)`
-/

namespace A104986.P10730545076621159459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084545 (A052955 (2 * n + 3)).toNat) (A125170 n)

end

end A104986.P10730545076621159459

/-! ## A104986.P2410391442399435441

`A345570(A262307(2*n+3))%A124733(n+1)`
-/

namespace A104986.P2410391442399435441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345570 (A262307 (2 * n + 3)).toNat) (A124733 (n + 1))

end

end A104986.P2410391442399435441

/-! ## A104986.P9797176999880226834

`A000110(A346426(n))%A306202(A349934(n+1))`
-/

namespace A104986.P9797176999880226834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 (A346426 n).toNat) (A306202 (A349934 (n + 1)).toNat)

end

end A104986.P9797176999880226834

/-! ## A104986.P12950943270441524171

`A000110(A133611(n+1))%A306202(A349934(n+1))`
-/

namespace A104986.P12950943270441524171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 (A133611 (n + 1)).toNat) (A306202 (A349934 (n + 1)).toNat)

end

end A104986.P12950943270441524171

/-!
# A104987: Row sums of triangle A104986, which equals the matrix logarithm of triangle A104980.

The programs for A104987, there is no canonical definition to state claims against.
-/

/-! ## A104987.P177914983940318295

`A071841(A078009(n))+A002627(n)`
-/

namespace A104987.P177914983940318295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A078009 n).toNat + A002627 n

end

end A104987.P177914983940318295

/-! ## A104987.P2668984415355191694

`A034973(A365182(n)+A002003(n))`
-/

namespace A104987.P2668984415355191694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A365182 n + A002003 n).toNat

end

end A104987.P2668984415355191694

/-!
# A104989: Row sums of triangle A104988, which equals the matrix square of triangle A104980.

The programs for A104989, there is no canonical definition to state claims against.
-/

/-! ## A104989.P2155821674584649404

`A005408(Δ[A013999(n)])`
-/

namespace A104989.P2155821674584649404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (n + 1) - f1 n).toNat

end

end A104989.P2155821674584649404

/-! ## A104989.P8090097128951147429

`A005408(A184185(n+2))`
-/

namespace A104989.P8090097128951147429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A184185 (n + 2)).toNat

end

end A104989.P8090097128951147429

/-!
# A104991: Row sums of triangle A104990, which equals the matrix cube of triangle A104980.

The programs for A104991, there is no canonical definition to state claims against.
-/

/-! ## A104991.P9138806013945695079

`Δ[A106466(Δ[(n+1)*(a(n-1)-2)])]` with `a(0)=4`
-/

namespace A104991.P9138806013945695079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  (n + 1 : ℤ) * (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104991.P9138806013945695079

/-!
# A104992: Squares of the form n+prime(n).

The programs for A104992, there is no canonical definition to state claims against.
-/

/-! ## A104992.P10454227184370847031

`∩[A107606(n+1), n²]`
-/

namespace A104992.P10454227184370847031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A104992.P10454227184370847031

/-! ## A104992.P2914945818477702405

`∩[A000290(n), A107606(n+1)]`
-/

namespace A104992.P2914945818477702405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P2914945818477702405

/-! ## A104992.P1464353379179976358

`A104269(n+1)+A064371(n+2)`
-/

namespace A104992.P1464353379179976358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104269 (n + 1) + A064371 (n + 2)

end

end A104992.P1464353379179976358

/-! ## A104992.P16186058148065515124

`∩[A034793(n+1), A107606(n+1)]`
-/

namespace A104992.P16186058148065515124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P16186058148065515124

/-! ## A104992.P3195785626197265061

`∩[A046871(n+1), A107606(n+1)]`
-/

namespace A104992.P3195785626197265061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P3195785626197265061

/-! ## A104992.P10273420558675596302

`∩[A072595(n+1), A107606(n+1)]`
-/

namespace A104992.P10273420558675596302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P10273420558675596302

/-! ## A104992.P8885578810772468807

`∩[A085960(n+1), A107606(n+1)]`
-/

namespace A104992.P8885578810772468807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P8885578810772468807

/-! ## A104992.P9526381781742732199

`∩[A087811(n+1), A107606(n+1)]`
-/

namespace A104992.P9526381781742732199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P9526381781742732199

/-! ## A104992.P8366340228467669627

`∩[A181385(2*n), A107606(n+2)]`
-/

namespace A104992.P8366340228467669627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P8366340228467669627

/-! ## A104992.P14759992824663115426

`∩[A046870(n+1), A107606(n+1)]`
-/

namespace A104992.P14759992824663115426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P14759992824663115426

/-! ## A104992.P12123729221813575621

`∩[A005214(n+1), A107606(n+1)]`
-/

namespace A104992.P12123729221813575621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P12123729221813575621

/-! ## A104992.P4752967819879432815

`∩[A020487(n+1), A107606(n+1)]`
-/

namespace A104992.P4752967819879432815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104992.P4752967819879432815

/-!
# A104993: Molien series for a certain 16-dimensional group of order 20160.

The programs for A104993, there is no canonical definition to state claims against.
-/

/-! ## A104993.P11160047224373127950

`A034338(n)+a(n-1)` with `a(0)=1`
-/

namespace A104993.P11160047224373127950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034338 n + a (n - 1)

end

end A104993.P11160047224373127950

/-! ## A104993.P15102803727234911155

`∑[A034338(round(sqrt(n²+1)))]`
-/

namespace A104993.P15102803727234911155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104993.P15102803727234911155

/-! ## A104993.P17844491666434105609

`∑[A034338(abs(1-n)+1)]-1`
-/

namespace A104993.P17844491666434105609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104993.P17844491666434105609

/-! ## A104993.P5898429944221069138

`∑[A034338(n+1)]+1-A034338(n+1)`
-/

namespace A104993.P5898429944221069138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A034338 (n + 1)

end

end A104993.P5898429944221069138

/-! ## A104993.P1366384290090121375

`∑[∏{e}[2^n, A034338(#)]]`
-/

namespace A104993.P1366384290090121375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A034338 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104993.P1366384290090121375

/-!
# A104994: Least k(n)>1 such that n*k(n)^2+n*k(n)+1 is a prime > (n-1)*k(n-1)^2+(n-1)*k(n-1)+1 or 0 if n=4 as no prime possible.

The programs for A104994, there is no canonical definition to state claims against.
-/

/-! ## A104994.P6736143305328367657

`floor(sqrt(A104995(n+1)/(n+1)))`
-/

namespace A104994.P6736143305328367657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A104995 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A104994.P6736143305328367657

/-!
# A104995: Smallest prime such that n*k(n)^2+n*k(n)+1 is a prime > (n-1)*k(n-1)^2+(n-1)*k(n-1)+1 with k(n)>1 or 0 if n=4 as no prime possible.

The programs for A104995, there is no canonical definition to state claims against.
-/

/-! ## A104995.P9767258325123441048

`A070846(3*(n+1))%A020652(∑[87*2^(n+1)]-14)`
-/

namespace A104995.P9767258325123441048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  87 * 2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070846 (3 * (n + 1))) (A020652 (∑ j ∈ Finset.range (n + 1), f1 j - 14))

end

end A104995.P9767258325123441048

/-! ## A104995.P14736790399038990442

`A070850(n+1)%A046291(A288603(n))`
-/

namespace A104995.P14736790399038990442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070850 (n + 1)) (A046291 (A288603 n).toNat)

end

end A104995.P14736790399038990442

/-! ## A104995.P13588032709115441368

`A070850(n+1)*A273712(A061601(n+1))`
-/

namespace A104995.P13588032709115441368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070850 (n + 1) * A273712 (A061601 (n + 1)).toNat

end

end A104995.P13588032709115441368

/-! ## A104995.P10849501754668458768

`A070850(n+1)*A285467(A189850(n+1))`
-/

namespace A104995.P10849501754668458768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070850 (n + 1) * A285467 (A189850 (n + 1)).toNat

end

end A104995.P10849501754668458768

/-! ## A104995.P14474829657804309042

`A070850(n+1)*A264442(A272382(n+1))`
-/

namespace A104995.P14474829657804309042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070850 (n + 1) * A264442 (A272382 (n + 1)).toNat

end

end A104995.P14474829657804309042

/-!
# A104997: Denominators of coefficients in a series solution to a certain differential equation.

The programs for A104997, there is no canonical definition to state claims against.
-/

/-! ## A104997.P12930892167561768805

`A001018(n)*A348717(A363426(n))`
-/

namespace A104997.P12930892167561768805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n * A348717 (A363426 n).toNat

end

end A104997.P12930892167561768805

