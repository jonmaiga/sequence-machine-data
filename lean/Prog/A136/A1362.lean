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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
# A136201: a(0)=a(1)=a(2)=0, a(3)=1, and a(n) = 2*a(n-1) + 4*a(n-2) - 6*a(n-3) - 3*a(n-4) for n > 3.

The programs for A136201, the canonical program `A136201.P4625389251603505558` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136201 has offset 0).

The definition of A136201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-6*a(n-3)-3*a(n-4)` (program `A136201.P4625389251603505558`, by `A136201.P4625389251603505558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136201.P4625389251603505558

`2*a(n-1)+4*a(n-2)-6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136201

/-- `2*a(n-1)+4*a(n-2)-6*a(n-3)-3*a(n-4)` -/
def P4625389251603505558.Spec : Prop :=
  ∀ n, P4625389251603505558.a n = A136201 n

theorem P4625389251603505558.correct : P4625389251603505558.Spec := by
  intro n
  simp only [A136201]

end A136201

/-! ## A136201.P16607009764520287305

`A137255(n+1)-2*A137255(n)`
-/

namespace A136201.P16607009764520287305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137255 (n + 1) - 2 * A137255 n

end

end A136201.P16607009764520287305

namespace A136201

/-- `A137255(n+1)-2*A137255(n)` -/
def P16607009764520287305.Spec : Prop :=
  ∀ n, P16607009764520287305.a n = A136201 n

end A136201

/-! ## A136201.P13908223401397970532

`(A001333(n)-A108411(n))/4`
-/

namespace A136201.P13908223401397970532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n - A108411 n : ℚ) / 4

end

end A136201.P13908223401397970532

namespace A136201

/-- `(A001333(n)-A108411(n))/4` -/
def P13908223401397970532.Spec : Prop :=
  ∀ n, P13908223401397970532.a n = (A136201 n : ℚ)

end A136201

/-! ## A136201.P18097130112938703138

`Δ[A137255(n)]-A137255(n)`
-/

namespace A136201.P18097130112938703138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137255 n

end

end A136201.P18097130112938703138

namespace A136201

/-- `Δ[A137255(n)]-A137255(n)` -/
def P18097130112938703138.Spec : Prop :=
  ∀ n, P18097130112938703138.a n = A136201 n

end A136201

/-! ## A136201.P3389978277601568499

`A137255(n+1)%A137255(n)`
-/

namespace A136201.P3389978277601568499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137255 (n + 1)) (A137255 n)

end

end A136201.P3389978277601568499

namespace A136201

/-- `A137255(n+1)%A137255(n)` -/
def P3389978277601568499.Spec : Prop :=
  ∀ n, P3389978277601568499.a n = A136201 n

end A136201

/-! ## A136201.P12118249304222402373

`Δ[A137255(n)]%(A137255(n)%A007226(n))`
-/

namespace A136201.P12118249304222402373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (Int.tmod (A137255 n) (A007226 n))

end

end A136201.P12118249304222402373

namespace A136201

/-- `Δ[A137255(n)]%(A137255(n)%A007226(n))` -/
def P12118249304222402373.Spec : Prop :=
  ∀ n, P12118249304222402373.a n = A136201 n

end A136201

/-!
# A136204: Primes p such that 3p-2 and 3p+2 are primes (see A125272) and its decimal representation ends in 7.

The programs for A136204, the canonical program `A136204.P7520579038168361829` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136204 has offset 1).

The definition of A136204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136204.P7520579038168361829

`p?[ceil(A074822(n+1)/3)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A136204

/-- `p?[ceil(A074822(n+1)/3)]` -/
def P7520579038168361829.Spec : Prop :=
  ∀ n, P7520579038168361829.a n = A136204 (n + 1)

theorem P7520579038168361829.correct : P7520579038168361829.Spec := by
  intro n
  simp only [A136204, Nat.add_sub_cancel]

end A136204

/-! ## A136204.P16402831281957660477

`∩[A030432(n+1), A125272(n+1)]`
-/

namespace A136204.P16402831281957660477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P16402831281957660477

namespace A136204

/-- `∩[A030432(n+1), A125272(n+1)]` -/
def P16402831281957660477.Spec : Prop :=
  ∀ n, (P16402831281957660477.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P3395980107736618657

`∩[A045380(n+1), A125272(n+1)]`
-/

namespace A136204.P3395980107736618657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P3395980107736618657

namespace A136204

/-- `∩[A045380(n+1), A125272(n+1)]` -/
def P3395980107736618657.Spec : Prop :=
  ∀ n, (P3395980107736618657.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P14308112364678065347

`∩[A030432(n+1), A157834(n+1)]`
-/

namespace A136204.P14308112364678065347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P14308112364678065347

namespace A136204

/-- `∩[A030432(n+1), A157834(n+1)]` -/
def P14308112364678065347.Spec : Prop :=
  ∀ n, (P14308112364678065347.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P7072446631709004107

`∩[A045380(n+1), A157834(n+1)]`
-/

namespace A136204.P7072446631709004107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P7072446631709004107

namespace A136204

/-- `∩[A045380(n+1), A157834(n+1)]` -/
def P7072446631709004107.Spec : Prop :=
  ∀ n, (P7072446631709004107.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P17248669881052803872

`∩[A090652(n+1), A125272(n+1)]`
-/

namespace A136204.P17248669881052803872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P17248669881052803872

namespace A136204

/-- `∩[A090652(n+1), A125272(n+1)]` -/
def P17248669881052803872.Spec : Prop :=
  ∀ n, (P17248669881052803872.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P1095586214492647044

`∩[A045372(n+1), A125272(n+1)]`
-/

namespace A136204.P1095586214492647044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P1095586214492647044

namespace A136204

/-- `∩[A045372(n+1), A125272(n+1)]` -/
def P1095586214492647044.Spec : Prop :=
  ∀ n, (P1095586214492647044.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P15501093147489165490

`∩[A045378(n+1), A125272(n+1)]`
-/

namespace A136204.P15501093147489165490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P15501093147489165490

namespace A136204

/-- `∩[A045378(n+1), A125272(n+1)]` -/
def P15501093147489165490.Spec : Prop :=
  ∀ n, (P15501093147489165490.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P7697938121181790698

`∩[A045372(n+1), A157834(n+1)]`
-/

namespace A136204.P7697938121181790698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P7697938121181790698

namespace A136204

/-- `∩[A045372(n+1), A157834(n+1)]` -/
def P7697938121181790698.Spec : Prop :=
  ∀ n, (P7697938121181790698.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P9948554175034786785

`∩[A045378(n+1), A157834(n+1)]`
-/

namespace A136204.P9948554175034786785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P9948554175034786785

namespace A136204

/-- `∩[A045378(n+1), A157834(n+1)]` -/
def P9948554175034786785.Spec : Prop :=
  ∀ n, (P9948554175034786785.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P12136093121141812587

`∩[A045371(n+1), A125272(n+1)]`
-/

namespace A136204.P12136093121141812587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P12136093121141812587

namespace A136204

/-- `∩[A045371(n+1), A125272(n+1)]` -/
def P12136093121141812587.Spec : Prop :=
  ∀ n, (P12136093121141812587.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P8291482486927965961

`∩[A045371(n+1), A157834(n+1)]`
-/

namespace A136204.P8291482486927965961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P8291482486927965961

namespace A136204

/-- `∩[A045371(n+1), A157834(n+1)]` -/
def P8291482486927965961.Spec : Prop :=
  ∀ n, (P8291482486927965961.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P1534133331488060863

`∩[A004616(n+1), A125272(n+1)]`
-/

namespace A136204.P1534133331488060863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P1534133331488060863

namespace A136204

/-- `∩[A004616(n+1), A125272(n+1)]` -/
def P1534133331488060863.Spec : Prop :=
  ∀ n, (P1534133331488060863.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P5529486041177790336

`∩[A125272(n+1), A017353(n)]`
-/

namespace A136204.P5529486041177790336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P5529486041177790336

namespace A136204

/-- `∩[A125272(n+1), A017353(n)]` -/
def P5529486041177790336.Spec : Prop :=
  ∀ n, (P5529486041177790336.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P251489682106300661

`∩[A125272(n+1), A160912(n+1)]`
-/

namespace A136204.P251489682106300661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P251489682106300661

namespace A136204

/-- `∩[A125272(n+1), A160912(n+1)]` -/
def P251489682106300661.Spec : Prop :=
  ∀ n, (P251489682106300661.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P17078998329670172959

`∩[A125272(n+1), A277594(n+1)]`
-/

namespace A136204.P17078998329670172959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P17078998329670172959

namespace A136204

/-- `∩[A125272(n+1), A277594(n+1)]` -/
def P17078998329670172959.Spec : Prop :=
  ∀ n, (P17078998329670172959.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P12012283107976019419

`filter[A125272(n+1), A185708(#)]`
-/

namespace A136204.P12012283107976019419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A136204.P12012283107976019419

namespace A136204

/-- `filter[A125272(n+1), A185708(#)]` -/
def P12012283107976019419.Spec : Prop :=
  ∀ n, P12012283107976019419.a n = A136204 (n + 1)

end A136204

/-! ## A136204.P7317759436944348634

`filter[A157834(n+1), A185708(#)]`
-/

namespace A136204.P7317759436944348634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A136204.P7317759436944348634

namespace A136204

/-- `filter[A157834(n+1), A185708(#)]` -/
def P7317759436944348634.Spec : Prop :=
  ∀ n, P7317759436944348634.a n = A136204 (n + 1)

end A136204

/-! ## A136204.P899303794124356710

`∩[A125272(n+1), A016873(n)]`
-/

namespace A136204.P899303794124356710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P899303794124356710

namespace A136204

/-- `∩[A125272(n+1), A016873(n)]` -/
def P899303794124356710.Spec : Prop :=
  ∀ n, (P899303794124356710.a n : ℤ) = A136204 (n + 1)

end A136204

/-! ## A136204.P6761235882491875549

`∩[A125272(n+1), A297469(n)]`
-/

namespace A136204.P6761235882491875549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136204.P6761235882491875549

namespace A136204

/-- `∩[A125272(n+1), A297469(n)]` -/
def P6761235882491875549.Spec : Prop :=
  ∀ n, (P6761235882491875549.a n : ℤ) = A136204 (n + 1)

end A136204

/-!
# A136207: Primes p such that p-6 or p+6 is prime.

The programs for A136207, the canonical program `A136207.P3473183565243102023` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136207 has offset 1).

The definition of A136207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136207.P3473183565243102023

`∪[A023201(n+1), A046117(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A136207

/-- `∪[A023201(n+1), A046117(n+1)]` -/
def P3473183565243102023.Spec : Prop :=
  ∀ n, (P3473183565243102023.a n : ℤ) = A136207 (n + 1)

theorem P3473183565243102023.correct : P3473183565243102023.Spec := by
  intro n
  simp only [A136207, Nat.add_sub_cancel]

end A136207

/-! ## A136207.P11966809479886777468

`∪[A023201(n+1), A067831(n+1)]`
-/

namespace A136207.P11966809479886777468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P11966809479886777468

namespace A136207

/-- `∪[A023201(n+1), A067831(n+1)]` -/
def P11966809479886777468.Spec : Prop :=
  ∀ n, (P11966809479886777468.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P12459719825457823436

`∪[A023201(n+1), A172988(n+1)]`
-/

namespace A136207.P12459719825457823436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P12459719825457823436

namespace A136207

/-- `∪[A023201(n+1), A172988(n+1)]` -/
def P12459719825457823436.Spec : Prop :=
  ∀ n, (P12459719825457823436.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P13138591884604461052

`p?[∪[A015914(n+1), A046117(n+1)]]`
-/

namespace A136207.P13138591884604461052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136207.P13138591884604461052

namespace A136207

/-- `p?[∪[A015914(n+1), A046117(n+1)]]` -/
def P13138591884604461052.Spec : Prop :=
  ∀ n, (P13138591884604461052.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P13280230578663498167

`∪[A046117(n+1), p?[A262084(n+1)]]`
-/

namespace A136207.P13280230578663498167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P13280230578663498167

namespace A136207

/-- `∪[A046117(n+1), p?[A262084(n+1)]]` -/
def P13280230578663498167.Spec : Prop :=
  ∀ n, (P13280230578663498167.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P8567137899667141846

`∪[p?[A015914(n+1)], A087695(n+1)+3]`
-/

namespace A136207.P8567137899667141846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136207.P8567137899667141846

namespace A136207

/-- `∪[p?[A015914(n+1)], A087695(n+1)+3]` -/
def P8567137899667141846.Spec : Prop :=
  ∀ n, (P8567137899667141846.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P6258484960974835103

`∪[p?[A015914(n+1)], A023201(n+1)+6]`
-/

namespace A136207.P6258484960974835103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136207.P6258484960974835103

namespace A136207

/-- `∪[p?[A015914(n+1)], A023201(n+1)+6]` -/
def P6258484960974835103.Spec : Prop :=
  ∀ n, (P6258484960974835103.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P4643061515362831771

`∪[A023201(n+1), p?[A262084(n+1)+6]]`
-/

namespace A136207.P4643061515362831771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P4643061515362831771

namespace A136207

/-- `∪[A023201(n+1), p?[A262084(n+1)+6]]` -/
def P4643061515362831771.Spec : Prop :=
  ∀ n, (P4643061515362831771.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P12192619858932655828

`∪[p?[A262084(n+1)+6], 2*A088763(n+1)-3]`
-/

namespace A136207.P12192619858932655828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136207.P12192619858932655828

namespace A136207

/-- `∪[p?[A262084(n+1)+6], 2*A088763(n+1)-3]` -/
def P12192619858932655828.Spec : Prop :=
  ∀ n, (P12192619858932655828.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P6246225298102741819

`∪[A046117(n+1), p?[A086304(n+1)]]`
-/

namespace A136207.P6246225298102741819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P6246225298102741819

namespace A136207

/-- `∪[A046117(n+1), p?[A086304(n+1)]]` -/
def P6246225298102741819.Spec : Prop :=
  ∀ n, (P6246225298102741819.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P3734473069314466537

`∪[A046117(n+1), p?[A118538(n+1)]]`
-/

namespace A136207.P3734473069314466537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P3734473069314466537

namespace A136207

/-- `∪[A046117(n+1), p?[A118538(n+1)]]` -/
def P3734473069314466537.Spec : Prop :=
  ∀ n, (P3734473069314466537.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P15406937052164327151

`∪[p?[A006093(n+1)+7], A023201(n+1)]`
-/

namespace A136207.P15406937052164327151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136207.P15406937052164327151

namespace A136207

/-- `∪[p?[A006093(n+1)+7], A023201(n+1)]` -/
def P15406937052164327151.Spec : Prop :=
  ∀ n, (P15406937052164327151.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P192033244086447288

`∪[p?[A000040(n+1)-6], A046117(n+1)]`
-/

namespace A136207.P192033244086447288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136207.P192033244086447288

namespace A136207

/-- `∪[p?[A000040(n+1)-6], A046117(n+1)]` -/
def P192033244086447288.Spec : Prop :=
  ∀ n, (P192033244086447288.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P8348566291791379943

`∪[A023201(n+1)+6, p?[A172367(n+1)-2]]`
-/

namespace A136207.P8348566291791379943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P8348566291791379943

namespace A136207

/-- `∪[A023201(n+1)+6, p?[A172367(n+1)-2]]` -/
def P8348566291791379943.Spec : Prop :=
  ∀ n, (P8348566291791379943.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P14722578258278761267

`∪[p?[A000040(n+1)+6], A087695(n+1)-3]`
-/

namespace A136207.P14722578258278761267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136207.P14722578258278761267

namespace A136207

/-- `∪[p?[A000040(n+1)+6], A087695(n+1)-3]` -/
def P14722578258278761267.Spec : Prop :=
  ∀ n, (P14722578258278761267.a n : ℤ) = A136207 (n + 1)

end A136207

/-! ## A136207.P13263805047406791272

`∪[A046117(n+1), p?[A282391(n+1)]]`
-/

namespace A136207.P13263805047406791272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P13263805047406791272

namespace A136207

/-- `∪[A046117(n+1), p?[A282391(n+1)]]` -/
def P13263805047406791272.Spec : Prop :=
  ∀ n, (P13263805047406791272.a n : ℤ) = A136207 (n + 1)

end A136207

/-!
# A136208: Primes p such that p-8 or p+8 is prime.

The programs for A136208, the canonical program `A136208.P8175068401792268664` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136208 has offset 1).

The definition of A136208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136208.P4501243916463541395

`∪[A023202(n+1), A092402(n+1)]`
-/

namespace A136208.P4501243916463541395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P4501243916463541395

namespace A136208

/-- `∪[A023202(n+1), A092402(n+1)]` -/
def P4501243916463541395.Spec : Prop :=
  ∀ n, (P4501243916463541395.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P15539044545973585545

`∪[A023202(n+1), record[A156320(n+1)]]`
-/

namespace A136208.P15539044545973585545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P15539044545973585545

namespace A136208

/-- `∪[A023202(n+1), record[A156320(n+1)]]` -/
def P15539044545973585545.Spec : Prop :=
  ∀ n, (P15539044545973585545.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P8175068401792268664

`p?[∪[A015915(n+1), A092402(n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136208

/-- `p?[∪[A015915(n+1), A092402(n+1)]]` -/
def P8175068401792268664.Spec : Prop :=
  ∀ n, (P8175068401792268664.a n : ℤ) = A136208 (n + 1)

theorem P8175068401792268664.correct : P8175068401792268664.Spec := by
  intro n
  simp only [A136208, Nat.add_sub_cancel]

end A136208

/-! ## A136208.P13643874900819276437

`∪[A023202(n+1), p?[A175224(n+1)]]`
-/

namespace A136208.P13643874900819276437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P13643874900819276437

namespace A136208

/-- `∪[A023202(n+1), p?[A175224(n+1)]]` -/
def P13643874900819276437.Spec : Prop :=
  ∀ n, (P13643874900819276437.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P15930702437113665097

`∪[A092402(n+1), p?[A262085(n+1)]]`
-/

namespace A136208.P15930702437113665097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P15930702437113665097

namespace A136208

/-- `∪[A092402(n+1), p?[A262085(n+1)]]` -/
def P15930702437113665097.Spec : Prop :=
  ∀ n, (P15930702437113665097.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P2352128178080463542

`∪[A023202(n+1), p?[A139049(n+1)+2]]`
-/

namespace A136208.P2352128178080463542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P2352128178080463542

namespace A136208

/-- `∪[A023202(n+1), p?[A139049(n+1)+2]]` -/
def P2352128178080463542.Spec : Prop :=
  ∀ n, (P2352128178080463542.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P2690781141136263192

`∪[A087680(n+1)-4, record[A156320(n+1)]]`
-/

namespace A136208.P2690781141136263192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1) - 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P2690781141136263192

namespace A136208

/-- `∪[A087680(n+1)-4, record[A156320(n+1)]]` -/
def P2690781141136263192.Spec : Prop :=
  ∀ n, (P2690781141136263192.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P18236114641956649951

`∪[p?[A000040(n+1)+8], A023202(n+1)]`
-/

namespace A136208.P18236114641956649951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136208.P18236114641956649951

namespace A136208

/-- `∪[p?[A000040(n+1)+8], A023202(n+1)]` -/
def P18236114641956649951.Spec : Prop :=
  ∀ n, (P18236114641956649951.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P9145458496701218644

`∪[p?[A000040(n+1)-8], A092402(n+1)]`
-/

namespace A136208.P9145458496701218644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136208.P9145458496701218644

namespace A136208

/-- `∪[p?[A000040(n+1)-8], A092402(n+1)]` -/
def P9145458496701218644.Spec : Prop :=
  ∀ n, (P9145458496701218644.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P14413404588834008224

`∪[A156320(2*n+1), A156320(2*(n+1))]`
-/

namespace A136208.P14413404588834008224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156320 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156320 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136208.P14413404588834008224

namespace A136208

/-- `∪[A156320(2*n+1), A156320(2*(n+1))]` -/
def P14413404588834008224.Spec : Prop :=
  ∀ n, (P14413404588834008224.a n : ℤ) = A136208 (n + 1)

end A136208

/-! ## A136208.P9433405891520902089

`eq[1, char[A156320(n+1)]]`
-/

namespace A136208.P9433405891520902089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156320 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136208.P9433405891520902089

namespace A136208

/-- `eq[1, char[A156320(n+1)]]` -/
def P9433405891520902089.Spec : Prop :=
  ∀ n, (P9433405891520902089.a n : ℤ) = A136208 (n + 1)

end A136208

/-!
# A136209: Differentiation of A137286: Triangle of coefficients of differentiation recursive orthogonal Hermite polynomials given in Hochstadt's book : P(x, n) = x*P(x, n - 1) - n*P(x, n - 2).

The programs for A136209, there is no canonical definition to state claims against.
-/

/-! ## A136209.P7214639291317560050

`A002260(n+1)*A137286(A014132(n+1))`
-/

namespace A136209.P7214639291317560050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A137286 (A014132 (n + 1)).toNat

end

end A136209.P7214639291317560050

/-! ## A136209.P4563232591882658217

`(A002262(n)+1)*A137286(A014132(n+1))`
-/

namespace A136209.P4563232591882658217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A137286 (A014132 (n + 1)).toNat

end

end A136209.P4563232591882658217

/-! ## A136209.P12392040315263587264

`A000005(A059268(n))*A137286(A014132(n+1))`
-/

namespace A136209.P12392040315263587264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A137286 (A014132 (n + 1)).toNat

end

end A136209.P12392040315263587264

/-! ## A136209.P11126278948481455529

`A000120(A099627(n))*A137286(A014132(n+1))`
-/

namespace A136209.P11126278948481455529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099627 n).toNat * A137286 (A014132 (n + 1)).toNat

end

end A136209.P11126278948481455529

/-! ## A136209.P1245292314349475899

`A125585(A000124(n))*A137286(A014132(n+1))`
-/

namespace A136209.P1245292314349475899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (A000124 n).toNat * A137286 (A014132 (n + 1)).toNat

end

end A136209.P1245292314349475899

/-! ## A136209.P14832984478520848821

`A004736(A038722(n+1))*A137286(A014132(n+1))`
-/

namespace A136209.P14832984478520848821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A137286 (A014132 (n + 1)).toNat

end

end A136209.P14832984478520848821

/-!
# A136210: Numerators in continued fraction [0; 1, 3, 1, 3, 1, 3, ...].

The programs for A136210, the canonical program `A136210.P11682946104361597979` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136210 has offset 1).

The definition of A136210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136210.P11682946104361597979

`a(n-2)+lcm(3, a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136210

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P11682946104361597979.Spec : Prop :=
  ∀ n, (P11682946104361597979.a n : ℤ) = A136210 (n + 1)

theorem P11682946104361597979.correct : P11682946104361597979.Spec := by
  intro n
  simp only [A136210, Nat.add_sub_cancel]

end A136210

/-! ## A136210.P10689886304768880448

`a(n-2)+a(n-1)*a(n%2)` with `a(0)=1, a(1)=3`
-/

namespace A136210.P10689886304768880448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * a (n % 2)

end

end A136210.P10689886304768880448

namespace A136210

/-- `a(n-2)+a(n-1)*a(n%2)` -/
def P10689886304768880448.Spec : Prop :=
  ∀ n, (P10689886304768880448.a n : ℤ) = A136210 (n + 1)

end A136210

/-! ## A136210.P2325162908938603927

`a(n-2)+(2-(-1)^n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A136210.P2325162908938603927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (2 - (-1) ^ n) * a (n - 1)

end

end A136210.P2325162908938603927

namespace A136210

/-- `a(n-2)+(2-(-1)^n)*a(n-1)` -/
def P2325162908938603927.Spec : Prop :=
  ∀ n, P2325162908938603927.a n = A136210 (n + 1)

end A136210

/-! ## A136210.P7405102394235342472

`5*a(n-2)-(4*a(n-2))%a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A136210.P7405102394235342472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * a (n - 2) - Int.tmod (4 * a (n - 2)) (a (n - 1))

end

end A136210.P7405102394235342472

namespace A136210

/-- `5*a(n-2)-(4*a(n-2))%a(n-1)` -/
def P7405102394235342472.Spec : Prop :=
  ∀ n, P7405102394235342472.a n = A136210 (n + 1)

end A136210

/-! ## A136210.P13699416733066125165

`A010684(n)*A136211(A028310(n))`
-/

namespace A136210.P13699416733066125165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A136211 (A028310 n).toNat

end

end A136210.P13699416733066125165

namespace A136210

/-- `A010684(n)*A136211(A028310(n))` -/
def P13699416733066125165.Spec : Prop :=
  ∀ n, P13699416733066125165.a n = A136210 (n + 1)

end A136210

/-! ## A136210.P11775524961703572654

`a(n-2)+gcd(3*a(n-1), a(n-1)*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A136210.P11775524961703572654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.gcd (3 * a (n - 1)) (a (n - 1) * a (n - 2))

end

end A136210.P11775524961703572654

namespace A136210

/-- `a(n-2)+gcd(3*a(n-1), a(n-1)*a(n-2))` -/
def P11775524961703572654.Spec : Prop :=
  ∀ n, (P11775524961703572654.a n : ℤ) = A136210 (n + 1)

end A136210

/-!
# A136211: Denominators in continued fraction [0; 1, 3, 1, 3, 1, 3, ...].

The programs for A136211, the canonical program `A136211.P1057566759153905027` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136211 has offset 1).

The definition of A136211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136211.P1057566759153905027

`5*a(n-2)-(4*a(n-2))%a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136211

/-- `5*a(n-2)-(4*a(n-2))%a(n-1)` -/
def P1057566759153905027.Spec : Prop :=
  ∀ n, P1057566759153905027.a n = A136211 (n + 1)

theorem P1057566759153905027.correct : P1057566759153905027.Spec := by
  intro n
  simp only [A136211, Nat.add_sub_cancel]

end A136211

/-! ## A136211.P7846963217484085951

`A136210(n+2)/A010684(n+1)`
-/

namespace A136211.P7846963217484085951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136210 (n + 2) : ℚ) / (A010684 (n + 1) : ℚ)

end

end A136211.P7846963217484085951

namespace A136211

/-- `A136210(n+2)/A010684(n+1)` -/
def P7846963217484085951.Spec : Prop :=
  ∀ n, P7846963217484085951.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P12755830841343955155

`∪[A004253(n+1), ∑[A004253(n+1)]]`
-/

namespace A136211.P12755830841343955155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136211.P12755830841343955155

namespace A136211

/-- `∪[A004253(n+1), ∑[A004253(n+1)]]` -/
def P12755830841343955155.Spec : Prop :=
  ∀ n, (P12755830841343955155.a n : ℤ) = A136211 (n + 1)

end A136211

/-! ## A136211.P10025364889239120576

`A237255(n+3)%A237254(n+3)`
-/

namespace A136211.P10025364889239120576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237255 (n + 3)) (A237254 (n + 3))

end

end A136211.P10025364889239120576

namespace A136211

/-- `A237255(n+3)%A237254(n+3)` -/
def P10025364889239120576.Spec : Prop :=
  ∀ n, P10025364889239120576.a n = A136211 (n + 1)

end A136211

/-! ## A136211.P17539795340648077361

`A189003(n+1)/A000045(n+2)`
-/

namespace A136211.P17539795340648077361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189003 (n + 1) : ℚ) / (A000045 (n + 2) : ℚ)

end

end A136211.P17539795340648077361

namespace A136211

/-- `A189003(n+1)/A000045(n+2)` -/
def P17539795340648077361.Spec : Prop :=
  ∀ n, P17539795340648077361.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P15634436477583309096

`A125145(n)/3^floor(n/2)`
-/

namespace A136211.P15634436477583309096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125145 n : ℚ) / (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A136211.P15634436477583309096

namespace A136211

/-- `A125145(n)/3^floor(n/2)` -/
def P15634436477583309096.Spec : Prop :=
  ∀ n, P15634436477583309096.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P18324445451010335840

`1/A108411(n)*A125145(n)`
-/

namespace A136211.P18324445451010335840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A108411 n : ℚ) * (A125145 n : ℚ)

end

end A136211.P18324445451010335840

namespace A136211

/-- `1/A108411(n)*A125145(n)` -/
def P18324445451010335840.Spec : Prop :=
  ∀ n, P18324445451010335840.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P3988951329418443409

`A099025(n)/a(n-1)` with `a(0)=1`
-/

namespace A136211.P3988951329418443409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A099025 n : ℚ) / a (n - 1)

end

end A136211.P3988951329418443409

namespace A136211

/-- `A099025(n)/a(n-1)` -/
def P3988951329418443409.Spec : Prop :=
  ∀ n, P3988951329418443409.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P4445919424280302565

`gcd(Δ[A099025(n)], A099025(n))`
-/

namespace A136211.P4445919424280302565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A099025 n)

end

end A136211.P4445919424280302565

namespace A136211

/-- `gcd(Δ[A099025(n)], A099025(n))` -/
def P4445919424280302565.Spec : Prop :=
  ∀ n, (P4445919424280302565.a n : ℤ) = A136211 (n + 1)

end A136211

/-! ## A136211.P1755982886304591720

`A005386(n+2)/A136210(n+2)`
-/

namespace A136211.P1755982886304591720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005386 (n + 2) : ℚ) / (A136210 (n + 2) : ℚ)

end

end A136211.P1755982886304591720

namespace A136211

/-- `A005386(n+2)/A136210(n+2)` -/
def P1755982886304591720.Spec : Prop :=
  ∀ n, P1755982886304591720.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P13517094132438447180

`(A099025(n+1)-A099025(n))/A136210(n+2)`
-/

namespace A136211.P13517094132438447180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099025 (n + 1) - A099025 n : ℚ) / (A136210 (n + 2) : ℚ)

end

end A136211.P13517094132438447180

namespace A136211

/-- `(A099025(n+1)-A099025(n))/A136210(n+2)` -/
def P13517094132438447180.Spec : Prop :=
  ∀ n, P13517094132438447180.a n = (A136211 (n + 1) : ℚ)

end A136211

/-! ## A136211.P12277240830656466400

`A136210(n+2)/gcd(A136210(2*(n+1)), A136210(n+2))`
-/

namespace A136211.P12277240830656466400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136210 (n + 2) : ℚ) / (Int.gcd (A136210 (2 * (n + 1))) (A136210 (n + 2)) : ℚ)

end

end A136211.P12277240830656466400

namespace A136211

/-- `A136210(n+2)/gcd(A136210(2*(n+1)), A136210(n+2))` -/
def P12277240830656466400.Spec : Prop :=
  ∀ n, P12277240830656466400.a n = (A136211 (n + 1) : ℚ)

end A136211

/-!
# A136212: Triple factorial array, read by antidiagonals, where row n+1 is generated from row n by first removing terms in row n at positions {[m*(m+5)/6], m >= 0} and then taking partial sums, starting with all 1's in row 0.

The programs for A136212, there is no canonical definition to state claims against.
-/

/-! ## A136212.P17673262635317716118

`filter[A371077(n+1), A022932(#)]`
-/

namespace A136212.P17673262635317716118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A136212.P17673262635317716118

/-! ## A136212.P9794235123234075135

`A136215(n)-A056626(A000105(n))`
-/

namespace A136212.P9794235123234075135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136215 n - A056626 (A000105 n).toNat

end

end A136212.P9794235123234075135

/-!
# A136214: Triangle U, read by rows, where U(n,k) = Product_{j=k..n-1} (3*j+1) for n > k with U(n,n) = 1.

The programs for A136214, there is no canonical definition to state claims against.
-/

/-! ## A136214.P8884931812944814085

`A091541(A002024(n+1))/A091541(A002260(n+1))`
-/

namespace A136214.P8884931812944814085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091541 (A002024 (n + 1)).toNat : ℚ) / (A091541 (A002260 (n + 1)).toNat : ℚ)

end

end A136214.P8884931812944814085

/-! ## A136214.P12888539135534972238

`A331331(n)/A007318(n)`
-/

namespace A136214.P12888539135534972238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331331 n : ℚ) / (A007318 n : ℚ)

end

end A136214.P12888539135534972238

/-! ## A136214.P13919878190600899663

`abs(A331331(n)/A108086(n))`
-/

namespace A136214.P13919878190600899663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A331331 n : ℚ) / (A108086 n : ℚ)|

end

end A136214.P13919878190600899663

/-! ## A136214.P17495236008280669367

`abs(A331331(n)/A117440(n))`
-/

namespace A136214.P17495236008280669367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A331331 n : ℚ) / (A117440 n : ℚ)|

end

end A136214.P17495236008280669367

/-! ## A136214.P17079172491973389307

`abs(A331331(n)/A130595(n))`
-/

namespace A136214.P17079172491973389307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A331331 n : ℚ) / (A130595 n : ℚ)|

end

end A136214.P17079172491973389307

/-!
# A136215: Triangle T, read by rows, where T(n,k) = A007559(n-k)*C(n,k) where A007559 equals the triple factorials in column 0.

The programs for A136215, there is no canonical definition to state claims against.
-/

/-! ## A136215.P14815366459904445381

`A007318(n)*A007559(A025581(n))`
-/

namespace A136215.P14815366459904445381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007559 (A025581 n).toNat

end

end A136215.P14815366459904445381

/-! ## A136215.P11288339093124944241

`A136212(n)+A056626(A000105(n))`
-/

namespace A136215.P11288339093124944241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136212 n + A056626 (A000105 n).toNat

end

end A136215.P11288339093124944241

/-! ## A136215.P10214270461125611352

`A136212(n)+A112765(A006784(n+1))`
-/

namespace A136215.P10214270461125611352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136212 n + A112765 (A006784 (n + 1)).toNat

end

end A136215.P10214270461125611352

/-!
# A136216: Triangle T, read by rows, where T(n,k) = A008544(n-k)*C(n,k) where A008544 equals the triple factorials in column 0.

The programs for A136216, the canonical program `A136216.P9104417109461140886` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136216 has offset 0).

The definition of A136216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136216.P9104417109461140886

`A007318(n)*A008544(A025581(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A136216

/-- `A007318(n)*A008544(A025581(n))` -/
def P9104417109461140886.Spec : Prop :=
  ∀ n, P9104417109461140886.a n = A136216 n

theorem P9104417109461140886.correct : P9104417109461140886.Spec := by
  intro n
  simp only [A136216]

end A136216

/-! ## A136216.P16728288194742492408

`A130595(n)*A133480(A025581(n))`
-/

namespace A136216.P16728288194742492408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A133480 (A025581 n).toNat

end

end A136216.P16728288194742492408

namespace A136216

/-- `A130595(n)*A133480(A025581(n))` -/
def P16728288194742492408.Spec : Prop :=
  ∀ n, P16728288194742492408.a n = A136216 n

end A136216

/-! ## A136216.P1193117156415169186

`sqrt(A008459(n))*A008544(A025581(n))`
-/

namespace A136216.P1193117156415169186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A008544 (A025581 n).toNat : ℝ)

end

end A136216.P1193117156415169186

namespace A136216

/-- `sqrt(A008459(n))*A008544(A025581(n))` -/
def P1193117156415169186.Spec : Prop :=
  ∀ n, P1193117156415169186.a n = (A136216 n : ℝ)

end A136216

/-!
# A136217: Square array, read by antidiagonals, where row n+1 is generated from row n by first removing terms in row n at positions {floor(m*(m+7)/6), m>=0} and then taking partial sums, starting with all 1's in row 0.

The programs for A136217, there is no canonical definition to state claims against.
-/

/-! ## A136217.P10530988679892512882

`A011776(29*A135876(n))`
-/

namespace A136217.P10530988679892512882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (29 * A135876 n).toNat

end

end A136217.P10530988679892512882

/-! ## A136217.P6367242925674941959

`A011776(lcm(29, A135876(n)))`
-/

namespace A136217.P6367242925674941959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (Int.lcm 29 (A135876 n))

end

end A136217.P6367242925674941959

/-!
# A136219: Number of terms in rows of irregular triangle A136218.

The programs for A136219, the canonical program `A136219.P10322740714565196239` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136219 has offset 0).

The definition of A136219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136219.P10322740714565196239

`round(a(n-1)+sqrt(6*a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136219

/-- `round(a(n-1)+sqrt(6*a(n-1)))` -/
def P10322740714565196239.Spec : Prop :=
  ∀ n, P10322740714565196239.a n = A136219 n

theorem P10322740714565196239.correct : P10322740714565196239.Spec := by
  intro n
  simp only [A136219]

end A136219

/-! ## A136219.P12993912500117904038

`A186354(a(n-1))+1` with `a(0)=1`
-/

namespace A136219.P12993912500117904038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186354 (a (n - 1)).toNat + 1

end

end A136219.P12993912500117904038

namespace A136219

/-- `A186354(a(n-1))+1` -/
def P12993912500117904038.Spec : Prop :=
  ∀ n, P12993912500117904038.a n = A136219 n

end A136219

/-! ## A136219.P4120206486173994277

`A080353(a(n-1))-2` with `a(0)=1`
-/

namespace A136219.P4120206486173994277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080353 (a (n - 1)).toNat - 2

end

end A136219.P4120206486173994277

namespace A136219

/-- `A080353(a(n-1))-2` -/
def P4120206486173994277.Spec : Prop :=
  ∀ n, P4120206486173994277.a n = A136219 n

end A136219

/-! ## A136219.P2040315991566926542

`A216256(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A136219.P2040315991566926542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216256 (2 * a (n - 1)).toNat + a (n - 1)

end

end A136219.P2040315991566926542

namespace A136219

/-- `A216256(2*a(n-1))+a(n-1)` -/
def P2040315991566926542.Spec : Prop :=
  ∀ n, P2040315991566926542.a n = A136219 n

end A136219

/-! ## A136219.P13175866238684748673

`∑[∑[A163377(A367287(n+1))]]`
-/

namespace A136219.P13175866238684748673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163377 (A367287 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136219.P13175866238684748673

namespace A136219

/-- `∑[∑[A163377(A367287(n+1))]]` -/
def P13175866238684748673.Spec : Prop :=
  ∀ n, P13175866238684748673.a n = A136219 n

end A136219

/-!
# A136220: Triangle P, read by rows, where column k of P^3 equals column 0 of P^(3k+3) such that column 0 of P^3 equals column 0 of P shift one row up, with P(0,0)=1.

The programs for A136220, there is no canonical definition to state claims against.
-/

/-! ## A136220.P14988358224876975343

`A368188(A091351(n))+A136217(n)`
-/

namespace A136220.P14988358224876975343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368188 (A091351 n).toNat + A136217 n

end

end A136220.P14988358224876975343

/-! ## A136220.P3731530209890378292

`or(A001221(A052924(n)), A136217(n))`
-/

namespace A136220.P3731530209890378292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A052924 n).toNat) (A136217 n)

end

end A136220.P3731530209890378292

/-! ## A136220.P16412980033625370589

`or(A136217(n), A353859(A000045(n)))`
-/

namespace A136220.P16412980033625370589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136217 n) (A353859 (A000045 n).toNat)

end

end A136220.P16412980033625370589

/-! ## A136220.P2767457005448172615

`or(A122204(A244137(n)), A136217(n))`
-/

namespace A136220.P2767457005448172615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122204 (A244137 n).toNat) (A136217 n)

end

end A136220.P2767457005448172615

/-! ## A136220.P9366881382247287406

`A136217(n)+A081120(A222047(2*(n+2)))`
-/

namespace A136220.P9366881382247287406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136217 n + A081120 (A222047 (2 * (n + 2))).toNat

end

end A136220.P9366881382247287406

/-!
# A136221: Column 0 of triangles A136220 and A136228; also equals column 0 of tables A136217 and A136218.

The programs for A136221, there is no canonical definition to state claims against.
-/

/-! ## A136221.P11850868818670605820

`A136231(C(n, 2))`
-/

namespace A136221.P11850868818670605820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136231 (Nat.choose n 2)

end

end A136221.P11850868818670605820

/-! ## A136221.P14571165701450893976

`A136231(∑[n]-n)`
-/

namespace A136221.P14571165701450893976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136231 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A136221.P14571165701450893976

/-! ## A136221.P13335717772806837984

`and(-1, A136231(A161680(n)))`
-/

namespace A136221.P13335717772806837984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136231 (A161680 n).toNat)

end

end A136221.P13335717772806837984

/-! ## A136221.P6636283014765285778

`A136231(A161680(n))+A011738(n)`
-/

namespace A136221.P6636283014765285778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136231 (A161680 n).toNat + A011738 n

end

end A136221.P6636283014765285778

/-! ## A136221.P11022907361028743928

`A136231(A161680(n))+A085861(n)`
-/

namespace A136221.P11022907361028743928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136231 (A161680 n).toNat + A085861 n

end

end A136221.P11022907361028743928

/-!
# A136222: Column 1 of triangle A136220; also equals column 0 of U^2 = A136233 where U = A136228.

The programs for A136222, there is no canonical definition to state claims against.
-/

/-! ## A136222.P17774292503699427473

`A136233(∑[n])`
-/

namespace A136222.P17774292503699427473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136222.P17774292503699427473

/-! ## A136222.P12508393011251214560

`record[A136220(comp[∑[n]])]`
-/

namespace A136222.P12508393011251214560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136220 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136222.P12508393011251214560

/-! ## A136222.P14727271915882039819

`A136220(∑[n+1]+1)`
-/

namespace A136222.P14727271915882039819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136220 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A136222.P14727271915882039819

/-! ## A136222.P521344830779051650

`record[floor(sqrt(8*n+1))%2*A136220(n+1)]`
-/

namespace A136222.P521344830779051650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ) * A136220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136222.P521344830779051650

/-! ## A136222.P11688751458899670454

`record[A136233(A049780(n))]`
-/

namespace A136222.P11688751458899670454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136233 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136222.P11688751458899670454

/-!
# A136223: Column 2 of triangle A136220; also equals column 0 of U^3 = A136236 where U = A136228.

The programs for A136223, there is no canonical definition to state claims against.
-/

/-! ## A136223.P2104908077614714043

`A136236(∑[n])`
-/

namespace A136223.P2104908077614714043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136223.P2104908077614714043

/-! ## A136223.P3975450405160834951

`record[A136236(A049780(n))]`
-/

namespace A136223.P3975450405160834951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136236 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136223.P3975450405160834951

/-! ## A136223.P11403724015657665985

`record[A136236(A091018(n))]`
-/

namespace A136223.P11403724015657665985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136236 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136223.P11403724015657665985

/-! ## A136223.P2090689236798174416

`record[A136236(record[A056943(n)])]`
-/

namespace A136223.P2090689236798174416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136236 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136223.P2090689236798174416

/-! ## A136223.P6020491183564957387

`and(-1, A136236(A000217(n)))`
-/

namespace A136223.P6020491183564957387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136236 (A000217 n).toNat)

end

end A136223.P6020491183564957387

/-!
# A136224: Column 3 of triangle A136220; also equals column 0 of U^4 where U = A136228.

The programs for A136224, there is no canonical definition to state claims against.
-/

/-! ## A136224.P8512505967660962905

`A136220(∑[n+3]+6)`
-/

namespace A136224.P8512505967660962905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136220 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A136224.P8512505967660962905

/-! ## A136224.P9207469380285711948

`A136220(A167614(n+2))+A026816(n)`
-/

namespace A136224.P9207469380285711948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136220 (A167614 (n + 2)).toNat + A026816 n

end

end A136224.P9207469380285711948

/-! ## A136224.P17146875688994660992

`lcm(A136220(A167614(n+2)), A297622(n))`
-/

namespace A136224.P17146875688994660992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136220 (A167614 (n + 2)).toNat) (A297622 n)

end

end A136224.P17146875688994660992

/-!
# A136226: Column 0 of P^2 where triangle P = A136220; also equals column 1 of square array A136217.

The programs for A136226, there is no canonical definition to state claims against.
-/

/-! ## A136226.P3151311551913519513

`A136225(∑[n])`
-/

namespace A136226.P3151311551913519513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136226.P3151311551913519513

/-! ## A136226.P5784355566276771877

`A136230(∑[n])`
-/

namespace A136226.P5784355566276771877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136226.P5784355566276771877

/-! ## A136226.P2316870869831281602

`record[A136225(n)]`
-/

namespace A136226.P2316870869831281602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136226.P2316870869831281602

/-! ## A136226.P2226552831140498369

`record[A136230(n)]`
-/

namespace A136226.P2226552831140498369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136226.P2226552831140498369

/-! ## A136226.P8857015081721807747

`and(-1, A136225(A000217(n)))`
-/

namespace A136226.P8857015081721807747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136225 (A000217 n).toNat)

end

end A136226.P8857015081721807747

/-!
# A136227: Column 1 of triangle A136225; also equals column 0 of triangle A136230.

The programs for A136227, there is no canonical definition to state claims against.
-/

/-! ## A136227.P1580937729696143146

`A136234(∑[n])`
-/

namespace A136227.P1580937729696143146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136227.P1580937729696143146

/-! ## A136227.P8114863437817932113

`record[A136234(n)]`
-/

namespace A136227.P8114863437817932113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136227.P8114863437817932113

/-! ## A136227.P1613445596851737764

`record[A136225(comp[∑[n]])]`
-/

namespace A136227.P1613445596851737764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136225 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136227.P1613445596851737764

/-! ## A136227.P2558562015049216140

`A136225(∑[n+1]+1)`
-/

namespace A136227.P2558562015049216140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A136227.P2558562015049216140

/-! ## A136227.P10586993995469831675

`and(-1, A136234(A000217(n)))`
-/

namespace A136227.P10586993995469831675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136234 (A000217 n).toNat)

end

end A136227.P10586993995469831675

/-!
# A136228: Triangle U, read by rows, where column k of U^(j+1) = column j of P^(3k+1) for j>=0, k>=0 and P=A136220.

The programs for A136228, there is no canonical definition to state claims against.
-/

/-! ## A136228.P10229816388357727337

`A230875(A267751(n+1))+A136217(n)`
-/

namespace A136228.P10229816388357727337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230875 (A267751 (n + 1)).toNat + A136217 n

end

end A136228.P10229816388357727337

/-!
# A136229: Column 1 of triangle A136228; also equals column 3 of square array A136217.

The programs for A136229, there is no canonical definition to state claims against.
-/

/-! ## A136229.P18368550172322212917

`A136232(∑[n])`
-/

namespace A136229.P18368550172322212917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136232 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136229.P18368550172322212917

/-! ## A136229.P16099856942403609682

`record[A136232(n)]`
-/

namespace A136229.P16099856942403609682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136229.P16099856942403609682

/-! ## A136229.P7469598344162320175

`record[A136228(comp[∑[n]])]`
-/

namespace A136229.P7469598344162320175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136228 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136229.P7469598344162320175

/-! ## A136229.P11580660066875411376

`A136228(∑[n+1]+1)`
-/

namespace A136229.P11580660066875411376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A136229.P11580660066875411376

/-! ## A136229.P6660323069521021423

`record[(-1)^n*record[A136228(n)]]`
-/

namespace A136229.P6660323069521021423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136229.P6660323069521021423

/-!
# A136231: Triangle W, read by rows, where column k of W = column 0 of W^(k+1) for k>=0 such that W equals the matrix cube of P = A136220 with column 0 of W = column 0 of P shift up one row.

The programs for A136231, there is no canonical definition to state claims against.
-/

/-! ## A136231.P17532970139443795127

`A089463(A004912(n+1))`
-/

namespace A136231.P17532970139443795127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089463 (A004912 (n + 1)).toNat

end

end A136231.P17532970139443795127

/-! ## A136231.P7487119835884902492

`A089463(A228050(n+1))`
-/

namespace A136231.P7487119835884902492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089463 (A228050 (n + 1)).toNat

end

end A136231.P7487119835884902492

/-! ## A136231.P14039715223139685845

`A089463(A308070(n+1))`
-/

namespace A136231.P14039715223139685845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089463 (A308070 (n + 1)).toNat

end

end A136231.P14039715223139685845

/-!
# A136232: Triangle, read by rows, equal to the matrix 4th power of triangle A136220.

The programs for A136232, there is no canonical definition to state claims against.
-/

/-! ## A136232.P11861407342635547999

`A254501(A075204(n+1))+A128417(n)`
-/

namespace A136232.P11861407342635547999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254501 (A075204 (n + 1)).toNat + A128417 n

end

end A136232.P11861407342635547999

/-! ## A136232.P12834698323535263619

`A373984(C(A253563(2*n), A087606(n+1)))`
-/

namespace A136232.P12834698323535263619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373984 (Nat.choose (A253563 (2 * n)).toNat (A087606 (n + 1)).toNat)

end

end A136232.P12834698323535263619

/-! ## A136232.P17568625816073200721

`A096781(A222057(n+2))+A105615(n)-A105623(n)`
-/

namespace A136232.P17568625816073200721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096781 (A222057 (n + 2)).toNat + (A105615 n - A105623 n)

end

end A136232.P17568625816073200721

/-!
# A136234: Matrix square of triangle V = A136230, read by rows.

The programs for A136234, there is no canonical definition to state claims against.
-/

/-! ## A136234.P17752738528391067268

`A007580(A110813(n)%A166222(n))`
-/

namespace A136234.P17752738528391067268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007580 (Int.tmod (A110813 n) (A166222 n)).toNat

end

end A136234.P17752738528391067268

/-! ## A136234.P11059369130257445605

`A000085(A185782(n+1)^A078920(n))`
-/

namespace A136234.P11059369130257445605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (SequenceMachineLib.roundAway ((A185782 (n + 1) : ℚ) ^ (A078920 n : ℤ))).toNat

end

end A136234.P11059369130257445605

/-! ## A136234.P18065474498288397420

`A000085(A185782(n+1)^A106619(n))`
-/

namespace A136234.P18065474498288397420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (SequenceMachineLib.roundAway ((A185782 (n + 1) : ℚ) ^ (A106619 n : ℤ))).toNat

end

end A136234.P18065474498288397420

/-!
# A136236: Matrix cube of triangle U = A136228, read by rows.

The programs for A136236, there is no canonical definition to state claims against.
-/

/-! ## A136236.P11196230438799443346

`A027750(A008300(2*n+1)+A000302(n))`
-/

namespace A136236.P11196230438799443346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A008300 (2 * n + 1) + A000302 n).toNat

end

end A136236.P11196230438799443346

/-!
# A136240: Numbers n among A006093 such that n^2 + n + 1 is prime.

The programs for A136240, there is no canonical definition to state claims against.
-/

/-! ## A136240.P9546037994625089696

`A065508(n+1)-1`
-/

namespace A136240.P9546037994625089696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1) - 1

end

end A136240.P9546037994625089696

/-! ## A136240.P15830654517514754184

`floor(sqrt(A074268(n+1)))`
-/

namespace A136240.P15830654517514754184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A074268 (n + 1))

end

end A136240.P15830654517514754184

/-! ## A136240.P1873847917213450191

`round(sqrt(A074268(n+1)-A074293(n)))`
-/

namespace A136240.P1873847917213450191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A074268 (n + 1) - A074293 n : ℝ))

end

end A136240.P1873847917213450191

/-! ## A136240.P9127349887948463241

`A190275(n+1)/A074268(n+1)-1`
-/

namespace A136240.P9127349887948463241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190275 (n + 1) : ℚ) / (A074268 (n + 1) : ℚ) - 1

end

end A136240.P9127349887948463241

/-! ## A136240.P12518378463318042465

`p?[A259145(n+1)]-1`
-/

namespace A136240.P12518378463318042465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A136240.P12518378463318042465

/-! ## A136240.P9090155412808949476

`p?[ceil(sqrt(A258435(n+1)))]-1`
-/

namespace A136240.P9090155412808949476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258435 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A136240.P9090155412808949476

/-! ## A136240.P12495527657104174943

`∩[A045331(n+1), A259145(n+1)]-1`
-/

namespace A136240.P12495527657104174943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P12495527657104174943

/-! ## A136240.P7933458878995580928

`∩[A040116(n+1), A259145(n+1)]-1`
-/

namespace A136240.P7933458878995580928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P7933458878995580928

/-! ## A136240.P8021592220452682251

`∩[A045320(n+1), A259145(n+1)]-1`
-/

namespace A136240.P8021592220452682251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P8021592220452682251

/-! ## A136240.P6787537454737259201

`∩[A106118(n+1), A259145(n+1)]-1`
-/

namespace A136240.P6787537454737259201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P6787537454737259201

/-! ## A136240.P15327380985908184364

`∩[A045319(n+1), A259145(n+1)]-1`
-/

namespace A136240.P15327380985908184364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P15327380985908184364

/-! ## A136240.P4553216411240996082

`∩[A000040(n+1), A259145(n+1)]-1`
-/

namespace A136240.P4553216411240996082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P4553216411240996082

/-! ## A136240.P6082689094774240030

`∩[A008578(n+1), A259145(n+1)]-1`
-/

namespace A136240.P6082689094774240030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P6082689094774240030

/-! ## A136240.P6146643347758567011

`∩[A033946(n+1), A259145(n+1)]-1`
-/

namespace A136240.P6146643347758567011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P6146643347758567011

/-! ## A136240.P11922444286674827197

`∩[A046022(n+1), A259145(n+1)]-1`
-/

namespace A136240.P11922444286674827197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P11922444286674827197

/-! ## A136240.P14695388730820651028

`∩[A051948(n+1), A259145(n+1)]-1`
-/

namespace A136240.P14695388730820651028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P14695388730820651028

/-! ## A136240.P15981760483188500096

`∩[A053813(n+1), A259145(n+1)]-1`
-/

namespace A136240.P15981760483188500096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P15981760483188500096

/-! ## A136240.P11639309118589381797

`∩[A062972(n+1), A259145(n+1)]-1`
-/

namespace A136240.P11639309118589381797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P11639309118589381797

/-! ## A136240.P17110191915731861556

`∩[A066050(n+1), A259145(n+1)]-1`
-/

namespace A136240.P17110191915731861556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P17110191915731861556

/-! ## A136240.P12224057876627529605

`∩[A067126(n+1), A259145(n+1)]-1`
-/

namespace A136240.P12224057876627529605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136240.P12224057876627529605

/-!
# A136241: Numbers n among A006093 such that n^2 + n - 1 is prime.

The programs for A136241, there is no canonical definition to state claims against.
-/

/-! ## A136241.P14978999857116940023

`A091567(n+1)-1`
-/

namespace A136241.P14978999857116940023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091567 (n + 1) - 1

end

end A136241.P14978999857116940023

/-! ## A136241.P3419367550130318871

`floor(sqrt(A091568(n+1)))`
-/

namespace A136241.P3419367550130318871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A091568 (n + 1))

end

end A136241.P3419367550130318871

/-! ## A136241.P15776073286181943810

`p?[A002328(n+1)]-1`
-/

namespace A136241.P15776073286181943810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A136241.P15776073286181943810

/-! ## A136241.P3367394491699994047

`p?[A125236(n+1)]-1`
-/

namespace A136241.P3367394491699994047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A136241.P3367394491699994047

/-! ## A136241.P6274498469540101452

`A000010(A091567(n+1))`
-/

namespace A136241.P6274498469540101452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091567 (n + 1)).toNat

end

end A136241.P6274498469540101452

/-! ## A136241.P16569041127769298412

`A000010(p?[A002328(n+1)])`
-/

namespace A136241.P16569041127769298412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136241.P16569041127769298412

/-! ## A136241.P10790960737043620838

`A091568(n+1)%A091567(n+1)`
-/

namespace A136241.P10790960737043620838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091568 (n + 1)) (A091567 (n + 1))

end

end A136241.P10790960737043620838

/-! ## A136241.P7467485990639698810

`∩[A000040(n+1), A125236(n+1)]-1`
-/

namespace A136241.P7467485990639698810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P7467485990639698810

/-! ## A136241.P18084929259654181804

`∩[A006005(n+1), A125236(n+1)]-1`
-/

namespace A136241.P18084929259654181804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P18084929259654181804

/-! ## A136241.P11454233008044158945

`∩[A008578(n+1), A125236(n+1)]-1`
-/

namespace A136241.P11454233008044158945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P11454233008044158945

/-! ## A136241.P926529567329338943

`∩[A046022(n+1), A125236(n+1)]-1`
-/

namespace A136241.P926529567329338943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P926529567329338943

/-! ## A136241.P6008723571200992140

`∩[A065091(n+1), A125236(n+1)]-1`
-/

namespace A136241.P6008723571200992140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P6008723571200992140

/-! ## A136241.P13387648972855207949

`∩[A066542(n+1), A125236(n+1)]-1`
-/

namespace A136241.P13387648972855207949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P13387648972855207949

/-! ## A136241.P3955943648879062993

`∩[A125236(n+1), A158611(n+1)]-1`
-/

namespace A136241.P3955943648879062993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P3955943648879062993

/-! ## A136241.P7639726273710536673

`∩[A125236(n+1), A174090(n+1)]-1`
-/

namespace A136241.P7639726273710536673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P7639726273710536673

/-! ## A136241.P8524105229401307551

`∩[A125236(n+1), A175787(n+1)]-1`
-/

namespace A136241.P8524105229401307551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P8524105229401307551

/-! ## A136241.P2212478749067888012

`∩[A125236(n+1), A182986(n+1)]-1`
-/

namespace A136241.P2212478749067888012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P2212478749067888012

/-! ## A136241.P7130030915760384720

`∩[A125236(n+1), A227231(n+1)]-1`
-/

namespace A136241.P7130030915760384720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P7130030915760384720

/-! ## A136241.P9411445802756221051

`∩[A125236(n+1), A284696(n+1)]-1`
-/

namespace A136241.P9411445802756221051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136241.P9411445802756221051

/-! ## A136241.P11742482485021762195

`(A091568(n+1)+1)/p?[A002328(n+1)]`
-/

namespace A136241.P11742482485021762195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091568 (n + 1) + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A136241.P11742482485021762195

/-!
# A136242: Numbers k among A008864 such that k^2 - k + 1 is prime.

The programs for A136242, there is no canonical definition to state claims against.
-/

/-! ## A136242.P11452434084609790065

`A053182(n+1)+1`
-/

namespace A136242.P11452434084609790065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1) + 1

end

end A136242.P11452434084609790065

/-! ## A136242.P14346131825668407099

`ceil(sqrt(A053183(n+1)))`
-/

namespace A136242.P14346131825668407099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A053183 (n + 1) : ℝ)⌉

end

end A136242.P14346131825668407099

/-! ## A136242.P5022338679140591812

`record[A330833(n+1)+1]`
-/

namespace A136242.P5022338679140591812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330833 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136242.P5022338679140591812

/-! ## A136242.P2585375982110765703

`p?[A055638(n+1)]+1`
-/

namespace A136242.P2585375982110765703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136242.P2585375982110765703

/-! ## A136242.P8920910568014733005

`p?[A342690(n+1)]+1`
-/

namespace A136242.P8920910568014733005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136242.P8920910568014733005

/-! ## A136242.P11870990338845773074

`∩[A045309(n+1), A055638(n+1)]+1`
-/

namespace A136242.P11870990338845773074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P11870990338845773074

/-! ## A136242.P3358631134827829304

`∩[A045309(n+1), A342690(n+1)]+1`
-/

namespace A136242.P3358631134827829304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P3358631134827829304

/-! ## A136242.P130707098686609343

`∩[A015919(n+1), A342690(n+1)]+1`
-/

namespace A136242.P130707098686609343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P130707098686609343

/-! ## A136242.P9752079630138299930

`∩[A073485(n+1), A342690(n+1)]+1`
-/

namespace A136242.P9752079630138299930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P9752079630138299930

/-! ## A136242.P13157066320791110537

`∩[A049596(n+1), A055638(n+1)]+1`
-/

namespace A136242.P13157066320791110537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P13157066320791110537

/-! ## A136242.P13959517688644340623

`∩[A049596(n+1), A342690(n+1)]+1`
-/

namespace A136242.P13959517688644340623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P13959517688644340623

/-! ## A136242.P3736070788228100534

`∩[A342690(n+1), A380468(n+1)]+1`
-/

namespace A136242.P3736070788228100534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P3736070788228100534

/-! ## A136242.P4921862270565989248

`∩[A040028(n+1), A055638(n+1)]+1`
-/

namespace A136242.P4921862270565989248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P4921862270565989248

/-! ## A136242.P857902726985521137

`∩[A040036(n+1), A055638(n+1)]+1`
-/

namespace A136242.P857902726985521137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P857902726985521137

/-! ## A136242.P11897123039319164887

`∩[A040044(n+1), A055638(n+1)]+1`
-/

namespace A136242.P11897123039319164887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P11897123039319164887

/-! ## A136242.P12960517296269602645

`∩[A000040(n+1), A342690(n+1)]+1`
-/

namespace A136242.P12960517296269602645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136242.P12960517296269602645

/-! ## A136242.P16998622739812974306

`A000203(A053182(n+1))`
-/

namespace A136242.P16998622739812974306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053182 (n + 1)).toNat

end

end A136242.P16998622739812974306

/-! ## A136242.P2395361453498823105

`A000203(record[A330833(n+1)])`
-/

namespace A136242.P2395361453498823105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136242.P2395361453498823105

/-! ## A136242.P1756579530103568537

`A000203(floor(sqrt(A053183(n+1))))`
-/

namespace A136242.P1756579530103568537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.sqrt (A053183 (n + 1))).toNat

end

end A136242.P1756579530103568537

/-!
# A136243: Numbers k in A008864 such that k^2 - k - 1 is prime.

The programs for A136243, there is no canonical definition to state claims against.
-/

/-! ## A136243.P6422341217684001485

`A053184(n+1)+1`
-/

namespace A136243.P6422341217684001485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + 1

end

end A136243.P6422341217684001485

/-! ## A136243.P9840820219209307641

`ceil(sqrt(A053185(n+1)))`
-/

namespace A136243.P9840820219209307641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A053185 (n + 1) : ℝ)⌉

end

end A136243.P9840820219209307641

/-! ## A136243.P13908749144663744895

`p?[A275059(n+1)]+1`
-/

namespace A136243.P13908749144663744895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136243.P13908749144663744895

/-! ## A136243.P12421277550914780427

`∩[A000040(n+1), A275059(n+1)]+1`
-/

namespace A136243.P12421277550914780427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P12421277550914780427

/-! ## A136243.P11803004884888560122

`∩[A051948(n+1), A275059(n+1)]+1`
-/

namespace A136243.P11803004884888560122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P11803004884888560122

/-! ## A136243.P12090292497443464893

`∩[A053813(n+1), A275059(n+1)]+1`
-/

namespace A136243.P12090292497443464893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P12090292497443464893

/-! ## A136243.P1715903948341841611

`∩[A000430(n+1), A275059(n+1)]+1`
-/

namespace A136243.P1715903948341841611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P1715903948341841611

/-! ## A136243.P2190319938606578856

`∩[A053577(n+1), A275059(n+1)]+1`
-/

namespace A136243.P2190319938606578856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P2190319938606578856

/-! ## A136243.P2711058524066913575

`∩[A009087(n+1), A275059(n+1)]+1`
-/

namespace A136243.P2711058524066913575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P2711058524066913575

/-! ## A136243.P4796839771193517037

`∩[A050376(n+1), A275059(n+1)]+1`
-/

namespace A136243.P4796839771193517037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P4796839771193517037

/-! ## A136243.P7873504080117181477

`∩[A115919(n+1), A275059(n+1)]+1`
-/

namespace A136243.P7873504080117181477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P7873504080117181477

/-! ## A136243.P14225949217228443754

`∩[A128603(n+1), A275059(n+1)]+1`
-/

namespace A136243.P14225949217228443754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P14225949217228443754

/-! ## A136243.P14273665566890291539

`∩[A066191(n+1), A275059(n+1)]+1`
-/

namespace A136243.P14273665566890291539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P14273665566890291539

/-! ## A136243.P12365637081919063921

`∩[A079603(n+1), A275059(n+1)]+1`
-/

namespace A136243.P12365637081919063921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P12365637081919063921

/-! ## A136243.P16661937067691506947

`A000203(A053184(n+1))`
-/

namespace A136243.P16661937067691506947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053184 (n + 1)).toNat

end

end A136243.P16661937067691506947

/-! ## A136243.P16327849837930011129

`A000203(floor(sqrt(A053185(n+1))))`
-/

namespace A136243.P16327849837930011129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.sqrt (A053185 (n + 1))).toNat

end

end A136243.P16327849837930011129

/-! ## A136243.P1529647644801886828

`A000010(floor(sqrt(A053185(n+1))))+2`
-/

namespace A136243.P1529647644801886828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.sqrt (A053185 (n + 1))).toNat + 2

end

end A136243.P1529647644801886828

/-! ## A136243.P15000012319077889232

`∩[A085233(n+1), A275059(n+1)]+1`
-/

namespace A136243.P15000012319077889232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P15000012319077889232

/-! ## A136243.P12833028112476009582

`∩[A001751(n+1), A275059(n+1)]+1`
-/

namespace A136243.P12833028112476009582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P12833028112476009582

/-! ## A136243.P1605179621243404096

`∩[A058363(n+1), A275059(n+1)]+1`
-/

namespace A136243.P1605179621243404096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136243.P1605179621243404096

/-!
# A136244: Least positive integer k such that 2k can be expressed as the sum of two primes in exactly n ways.

The programs for A136244, there is no canonical definition to state claims against.
-/

/-! ## A136244.P14290300940503305872

`A023036(n)/2`
-/

namespace A136244.P14290300940503305872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023036 n : ℚ) / 2

end

end A136244.P14290300940503305872

/-! ## A136244.P914268118246758198

`lcm(2, A352296(n))/2`
-/

namespace A136244.P914268118246758198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A352296 n) : ℚ) / 2

end

end A136244.P914268118246758198

/-! ## A136244.P17134492161038734477

`A258713(n)+A154955(n+1)`
-/

namespace A136244.P17134492161038734477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258713 n + A154955 (n + 1)

end

end A136244.P17134492161038734477

/-! ## A136244.P14384978757937707287

`(A352296(n)+A000007(n))/2`
-/

namespace A136244.P14384978757937707287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352296 n + A000007 n : ℚ) / 2

end

end A136244.P14384978757937707287

/-! ## A136244.P5069612738640627090

`A054977(n)/2*A352296(n)`
-/

namespace A136244.P5069612738640627090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 n : ℚ) / 2 * (A352296 n : ℚ)

end

end A136244.P5069612738640627090

/-! ## A136244.P9923744668049104971

`xor(A019590(n+1), A258713(n))`
-/

namespace A136244.P9923744668049104971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A258713 n)

end

end A136244.P9923744668049104971

/-! ## A136244.P14156054651794143021

`xor(val(A002374(n+3), 3), A258713(n))`
-/

namespace A136244.P14156054651794143021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (A002374 (n + 3)).toNat 3 : ℤ) (A258713 n)

end

end A136244.P14156054651794143021

/-! ## A136244.P4409118607978217700

`A103391(A023036(n)+2)-2`
-/

namespace A136244.P4409118607978217700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A023036 n + 2).toNat - 2

end

end A136244.P4409118607978217700

/-! ## A136244.P6752358693541472083

`A000217(A023036(n))%A023036(n%(n+1))`
-/

namespace A136244.P6752358693541472083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A023036 n).toNat) (A023036 (n % (n + 1)))

end

end A136244.P6752358693541472083

/-! ## A136244.P3361853849038920438

`A117358(4*A023036(n))`
-/

namespace A136244.P3361853849038920438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A023036 n).toNat

end

end A136244.P3361853849038920438

/-! ## A136244.P8042200047988184752

`A001281(A023036(n))`
-/

namespace A136244.P8042200047988184752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A023036 n).toNat

end

end A136244.P8042200047988184752

/-! ## A136244.P2423634847742958824

`A004525(A352296(n))`
-/

namespace A136244.P2423634847742958824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A352296 n).toNat

end

end A136244.P2423634847742958824

/-! ## A136244.P7548501712315056659

`A008619(A023036(n)-1)`
-/

namespace A136244.P7548501712315056659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A023036 n - 1).toNat

end

end A136244.P7548501712315056659

/-! ## A136244.P12239796419175247943

`A032742(A023036(n)+2)-1`
-/

namespace A136244.P12239796419175247943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A023036 n + 2).toNat - 1

end

end A136244.P12239796419175247943

/-!
# A136245: a(n) = (1/n!)*Sum_{k=0..n} Stirling1(n,k)*A062208(k).

The programs for A136245, there is no canonical definition to state claims against.
-/

/-! ## A136245.P10334773620199919571

`A331277(A167614(n+2))`
-/

namespace A136245.P10334773620199919571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (A167614 (n + 2)).toNat

end

end A136245.P10334773620199919571

/-! ## A136245.P17274138727832545286

`A331277(A052905(n)+8)`
-/

namespace A136245.P17274138727832545286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (A052905 n + 8).toNat

end

end A136245.P17274138727832545286

/-! ## A136245.P12095856126034172221

`A331277(eq[3, A002262(n)])`
-/

namespace A136245.P12095856126034172221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136245.P12095856126034172221

/-! ## A136245.P7264625776045030389

`A331277(eq[8, A059268(n)])`
-/

namespace A136245.P7264625776045030389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136245.P7264625776045030389

/-! ## A136245.P630752276806293157

`A331277(A000096(n+2)+4)`
-/

namespace A136245.P630752276806293157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (A000096 (n + 2) + 4).toNat

end

end A136245.P630752276806293157

/-!
# A136246: a(n) = (1/n!)*Sum_{k=0..n} (-1)^(n-k)*Stirling1(n,k)*A062208(k).

The programs for A136246, there is no canonical definition to state claims against.
-/

/-! ## A136246.P6773894808901013998

`A330942(A167614(n+2))`
-/

namespace A136246.P6773894808901013998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A167614 (n + 2)).toNat

end

end A136246.P6773894808901013998

/-! ## A136246.P18177212321291805940

`A330942(A141214(n)+6)`
-/

namespace A136246.P18177212321291805940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A141214 n + 6).toNat

end

end A136246.P18177212321291805940

/-! ## A136246.P17412348936824571577

`A330942(A052905(n)+8)`
-/

namespace A136246.P17412348936824571577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A052905 n + 8).toNat

end

end A136246.P17412348936824571577

/-! ## A136246.P9750315475243503852

`A330942(A055999(n)+9)`
-/

namespace A136246.P9750315475243503852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A055999 n + 9).toNat

end

end A136246.P9750315475243503852

/-! ## A136246.P15411193117191504060

`A330942(eq[3, A002262(n)])`
-/

namespace A136246.P15411193117191504060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136246.P15411193117191504060

/-!
# A136249: a(n) = -a(n-1) + 4*a(n-2) + 4*a(n-3), starting with 4, -2, 1.

The programs for A136249, the canonical program `A136249.P5571012530395162867` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136249 has offset 0).

The definition of A136249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136249.P5571012530395162867

`(2^n-5*(-2)^n)/4+5*(-1)^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136249

/-- `(2^n-5*(-2)^n)/4+5*(-1)^n` -/
def P5571012530395162867.Spec : Prop :=
  ∀ n, P5571012530395162867.a n = (A136249 n : ℚ)

end A136249

/-! ## A136249.P14719978576958219113

`(5-A084221(n))*A033999(n)`
-/

namespace A136249.P14719978576958219113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A084221 n) * A033999 n

end

end A136249.P14719978576958219113

namespace A136249

/-- `(5-A084221(n))*A033999(n)` -/
def P14719978576958219113.Spec : Prop :=
  ∀ n, P14719978576958219113.a n = A136249 n

end A136249

/-! ## A136249.P4443501079598042695

`Δ[A167193(A004442(n))+A010685(n)]`
-/

namespace A136249.P4443501079598042695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 (A004442 n).toNat + A010685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136249.P4443501079598042695

namespace A136249

/-- `Δ[A167193(A004442(n))+A010685(n)]` -/
def P4443501079598042695.Spec : Prop :=
  ∀ n, P4443501079598042695.a n = A136249 n

end A136249

/-!
# A136250: Numbers n such that optimal normal basis exists for GF(2^n) over GF(2).

The programs for A136250, there is no canonical definition to state claims against.
-/

/-! ## A136250.P16511615161184940923

`∪[A054639(n+1), A071642(n+2)]`
-/

namespace A136250.P16511615161184940923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P16511615161184940923

/-! ## A136250.P16301721195153474641

`record[lcm(A007735(n+1), A118106(n+1))]`
-/

namespace A136250.P16301721195153474641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007735 (n + 1)) (A118106 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136250.P16301721195153474641

/-! ## A136250.P10002143051107155451

`∪[A054639(n+1), record[A014664(n+2)]]`
-/

namespace A136250.P10002143051107155451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P10002143051107155451

/-! ## A136250.P7603010782704139653

`∪[A071642(n+2), record[A082654(n+2)]]`
-/

namespace A136250.P7603010782704139653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P7603010782704139653

/-! ## A136250.P13145006110457051502

`∪[A001122(n+1)-1, A054639(n+1)]`
-/

namespace A136250.P13145006110457051502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P13145006110457051502

/-! ## A136250.P12249539586671433553

`∪[A054639(n+1), A050229(n+2)-1]`
-/

namespace A136250.P12249539586671433553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P12249539586671433553

/-! ## A136250.P10715094938342106844

`∪[A001122(n+1), A137606(n+2)]-1`
-/

namespace A136250.P10715094938342106844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136250.P10715094938342106844

/-! ## A136250.P8155740818121170939

`∪[2*A163782(n+1), A054639(n+1)]`
-/

namespace A136250.P8155740818121170939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P8155740818121170939

/-! ## A136250.P17508283039485560285

`record[A026741(A054703(n+1))-A000035(n)]`
-/

namespace A136250.P17508283039485560285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A054703 (n + 1)).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136250.P17508283039485560285

/-! ## A136250.P8419288816569087190

`record[A026741(A000034(n)*A007733(n+1))]`
-/

namespace A136250.P8419288816569087190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000034 n * A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136250.P8419288816569087190

/-! ## A136250.P12423470961386600015

`∪[A000010(A001122(n+1)), A054639(n+1)]`
-/

namespace A136250.P12423470961386600015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001122 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136250.P12423470961386600015

/-! ## A136250.P7477372841377373787

`record[A026741(A054703(n+1))-A007814(n+1)]`
-/

namespace A136250.P7477372841377373787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A054703 (n + 1)).toNat - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136250.P7477372841377373787

/-! ## A136250.P1483332656684942698

`record[A026741(A054703(n+1))-A129308(n+1)]`
-/

namespace A136250.P1483332656684942698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A054703 (n + 1)).toNat - A129308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136250.P1483332656684942698

/-! ## A136250.P10982035866894523530

`record[A026741(A054703(n+1))-A244415(n+1)]`
-/

namespace A136250.P10982035866894523530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A054703 (n + 1)).toNat - A244415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136250.P10982035866894523530

/-!
# A136251: a(n) = n-th prime reduced modulo the sum of its digits.

The programs for A136251, the canonical program `A136251.P10436030816178867746` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136251 has offset 1).

The definition of A136251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136251.P10436030816178867746

`A000040(n+1)%A007605(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136251

/-- `A000040(n+1)%A007605(n+1)` -/
def P10436030816178867746.Spec : Prop :=
  ∀ n, P10436030816178867746.a n = A136251 (n + 1)

theorem P10436030816178867746.correct : P10436030816178867746.Spec := by
  intro n
  simp only [A136251, Nat.add_sub_cancel]

end A136251

/-! ## A136251.P2957624089063482484

`A065073(n+1)%A007605(n+1)`
-/

namespace A136251.P2957624089063482484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065073 (n + 1)) (A007605 (n + 1))

end

end A136251.P2957624089063482484

namespace A136251

/-- `A065073(n+1)%A007605(n+1)` -/
def P2957624089063482484.Spec : Prop :=
  ∀ n, P2957624089063482484.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P5853476806759826532

`A068395(n+1)%A007605(n+1)`
-/

namespace A136251.P5853476806759826532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068395 (n + 1)) (A007605 (n + 1))

end

end A136251.P5853476806759826532

namespace A136251

/-- `A068395(n+1)%A007605(n+1)` -/
def P5853476806759826532.Spec : Prop :=
  ∀ n, P5853476806759826532.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P17057816813159394990

`p?[-xor(1, -n)]%∑{digits}[A014692(n+1)+n, #]`
-/

namespace A136251.P17057816813159394990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A136251.P17057816813159394990

namespace A136251

/-- `p?[-xor(1, -n)]%∑{digits}[A014692(n+1)+n, #]` -/
def P17057816813159394990.Spec : Prop :=
  ∀ n, P17057816813159394990.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P9441743781619752248

`A070635(p?[xor(1, n)])`
-/

namespace A136251.P9441743781619752248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136251.P9441743781619752248

namespace A136251

/-- `A070635(p?[xor(1, n)])` -/
def P9441743781619752248.Spec : Prop :=
  ∀ n, P9441743781619752248.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P6106377387651556748

`A070635(p?[round(sqrt(n)+n)])`
-/

namespace A136251.P6106377387651556748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136251.P6106377387651556748

namespace A136251

/-- `A070635(p?[round(sqrt(n)+n)])` -/
def P6106377387651556748.Spec : Prop :=
  ∀ n, P6106377387651556748.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P16522047563143414278

`p?[n%3+n]%A007953(p?[xor(1, n)+1])`
-/

namespace A136251.P16522047563143414278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A007953 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)))

end

end A136251.P16522047563143414278

namespace A136251

/-- `p?[n%3+n]%A007953(p?[xor(1, n)+1])` -/
def P16522047563143414278.Spec : Prop :=
  ∀ n, P16522047563143414278.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P3239909763076617524

`A070635(Δ[A007504(n)])`
-/

namespace A136251.P3239909763076617524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f1 (n + 1) - f1 n).toNat

end

end A136251.P3239909763076617524

namespace A136251

/-- `A070635(Δ[A007504(n)])` -/
def P3239909763076617524.Spec : Prop :=
  ∀ n, P3239909763076617524.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P2724709432083116831

`A070635(A000040(n+1))`
-/

namespace A136251.P2724709432083116831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A000040 (n + 1)).toNat

end

end A136251.P2724709432083116831

namespace A136251

/-- `A070635(A000040(n+1))` -/
def P2724709432083116831.Spec : Prop :=
  ∀ n, P2724709432083116831.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P16491222069953588514

`A070635(A006005(n+1))`
-/

namespace A136251.P16491222069953588514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A006005 (n + 1)).toNat

end

end A136251.P16491222069953588514

namespace A136251

/-- `A070635(A006005(n+1))` -/
def P16491222069953588514.Spec : Prop :=
  ∀ n, P16491222069953588514.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P1490298530214669314

`A070635(A161847(n+1))`
-/

namespace A136251.P1490298530214669314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A161847 (n + 1)).toNat

end

end A136251.P1490298530214669314

namespace A136251

/-- `A070635(A161847(n+1))` -/
def P1490298530214669314.Spec : Prop :=
  ∀ n, P1490298530214669314.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P11671740093147390438

`A070635(A008578(n+2))`
-/

namespace A136251.P11671740093147390438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A008578 (n + 2)).toNat

end

end A136251.P11671740093147390438

namespace A136251

/-- `A070635(A008578(n+2))` -/
def P11671740093147390438.Spec : Prop :=
  ∀ n, P11671740093147390438.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P8401266251024867540

`A070635(A075643(n+2))`
-/

namespace A136251.P8401266251024867540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A075643 (n + 2)).toNat

end

end A136251.P8401266251024867540

namespace A136251

/-- `A070635(A075643(n+2))` -/
def P8401266251024867540.Spec : Prop :=
  ∀ n, P8401266251024867540.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P17692473471595153948

`A070635(A116974(n+2))`
-/

namespace A136251.P17692473471595153948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A116974 (n + 2)).toNat

end

end A136251.P17692473471595153948

namespace A136251

/-- `A070635(A116974(n+2))` -/
def P17692473471595153948.Spec : Prop :=
  ∀ n, P17692473471595153948.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P4058958824582157067

`A070635(A161428(n+2))`
-/

namespace A136251.P4058958824582157067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A161428 (n + 2)).toNat

end

end A136251.P4058958824582157067

namespace A136251

/-- `A070635(A161428(n+2))` -/
def P4058958824582157067.Spec : Prop :=
  ∀ n, P4058958824582157067.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P165902615090411941

`A070635(A162786(n+2))`
-/

namespace A136251.P165902615090411941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A162786 (n + 2)).toNat

end

end A136251.P165902615090411941

namespace A136251

/-- `A070635(A162786(n+2))` -/
def P165902615090411941.Spec : Prop :=
  ∀ n, P165902615090411941.a n = A136251 (n + 1)

end A136251

/-! ## A136251.P13161631000502548139

`A070635(record[A000010(n+1)+1])`
-/

namespace A136251.P13161631000502548139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136251.P13161631000502548139

namespace A136251

/-- `A070635(record[A000010(n+1)+1])` -/
def P13161631000502548139.Spec : Prop :=
  ∀ n, P13161631000502548139.a n = A136251 (n + 1)

end A136251

/-!
# A136252: a(n) = a(n-1) + 2*a(n-2) - 2*a(n-3).

The programs for A136252, the canonical program `A136252.P6985121219445844768` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136252 has offset 0).

The definition of A136252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136252.P6985121219445844768

`2*a(n-2)+3` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136252

/-- `2*a(n-2)+3` -/
def P6985121219445844768.Spec : Prop :=
  ∀ n, (P6985121219445844768.a n : ℤ) = A136252 n

theorem P6985121219445844768.correct : P6985121219445844768.Spec := by
  intro n
  simp only [A136252]

end A136252

/-! ## A136252.P11705993350497279863

`A027383(n+1)-1`
-/

namespace A136252.P11705993350497279863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) - 1

end

end A136252.P11705993350497279863

namespace A136252

/-- `A027383(n+1)-1` -/
def P11705993350497279863.Spec : Prop :=
  ∀ n, P11705993350497279863.a n = A136252 n

end A136252

/-! ## A136252.P17386928600592998223

`∑[2^ceil(n/2)]`
-/

namespace A136252.P17386928600592998223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136252.P17386928600592998223

namespace A136252

/-- `∑[2^ceil(n/2)]` -/
def P17386928600592998223.Spec : Prop :=
  ∀ n, P17386928600592998223.a n = (A136252 n : ℚ)

end A136252

/-! ## A136252.P2529869835096217094

`or(1, ∑[∏[gcd(2, n+1)]])`
-/

namespace A136252.P2529869835096217094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136252.P2529869835096217094

namespace A136252

/-- `or(1, ∑[∏[gcd(2, n+1)]])` -/
def P2529869835096217094.Spec : Prop :=
  ∀ n, (P2529869835096217094.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P5817796512844740246

`lcm(2, a(n-2))+3` with `a(0)=1, a(1)=3`
-/

namespace A136252.P5817796512844740246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 2 (a (n - 2)) + 3

end

end A136252.P5817796512844740246

namespace A136252

/-- `lcm(2, a(n-2))+3` -/
def P5817796512844740246.Spec : Prop :=
  ∀ n, (P5817796512844740246.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P17648728970450819572

`abs(∑[2*a(n-2)])` with `a(0)=1, a(1)=2`
-/

namespace A136252.P17648728970450819572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136252.P17648728970450819572

namespace A136252

/-- `abs(∑[2*a(n-2)])` -/
def P17648728970450819572.Spec : Prop :=
  ∀ n, (P17648728970450819572.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P4856572210613717355

`floor(∑[2*a(n-2)])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A136252.P4856572210613717355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136252.P4856572210613717355

namespace A136252

/-- `floor(∑[2*a(n-2)])` -/
def P4856572210613717355.Spec : Prop :=
  ∀ n, (P4856572210613717355.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P898663324101551886

`ceil(∑[2*a(n-2)])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A136252.P898663324101551886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136252.P898663324101551886

namespace A136252

/-- `ceil(∑[2*a(n-2)])` -/
def P898663324101551886.Spec : Prop :=
  ∀ n, (P898663324101551886.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P16099263471552516036

`round(∑[2*a(n-2)])` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A136252.P16099263471552516036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136252.P16099263471552516036

namespace A136252

/-- `round(∑[2*a(n-2)])` -/
def P16099263471552516036.Spec : Prop :=
  ∀ n, (P16099263471552516036.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P12332519002571132858

`or(1, ∑[2*a(n-2)])` with `a(0)=1, a(1)=2`
-/

namespace A136252.P12332519002571132858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136252.P12332519002571132858

namespace A136252

/-- `or(1, ∑[2*a(n-2)])` -/
def P12332519002571132858.Spec : Prop :=
  ∀ n, (P12332519002571132858.a n : ℤ) = A136252 n

end A136252

/-! ## A136252.P13114098511502148378

`5-2*(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A136252.P13114098511502148378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 - 2 * (1 - a (n - 2))

end

end A136252.P13114098511502148378

namespace A136252

/-- `5-2*(1-a(n-2))` -/
def P13114098511502148378.Spec : Prop :=
  ∀ n, P13114098511502148378.a n = A136252 n

end A136252

/-! ## A136252.P1369253477924587822

`floor(∑[2^∑[1-a(n-1)]])` with `a(0)=0`
-/

namespace A136252.P1369253477924587822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A136252.P1369253477924587822

namespace A136252

/-- `floor(∑[2^∑[1-a(n-1)]])` -/
def P1369253477924587822.Spec : Prop :=
  ∀ n, P1369253477924587822.a n = A136252 n

end A136252

/-! ## A136252.P13227496276377224447

`a(n-2)+a(n-2)+3` with `a(0)=1, a(1)=3`
-/

namespace A136252.P13227496276377224447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A136252.P13227496276377224447

namespace A136252

/-- `a(n-2)+a(n-2)+3` -/
def P13227496276377224447.Spec : Prop :=
  ∀ n, (P13227496276377224447.a n : ℤ) = A136252 n

theorem P13227496276377224447.correct : P13227496276377224447.Spec := by
  intro n
  simp only [A136252, Nat.add_sub_cancel, A136252.P13227496276377224447.a, A136252.P6985121219445844768.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A136252

/-! ## A136252.P17477789770941334269

`3-a(n-2)/(1/2-1)` with `a(0)=1, a(1)=3`
-/

namespace A136252.P17477789770941334269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A136252.P17477789770941334269

namespace A136252

/-- `3-a(n-2)/(1/2-1)` -/
def P17477789770941334269.Spec : Prop :=
  ∀ n, P17477789770941334269.a n = (A136252 n : ℚ)

end A136252

/-! ## A136252.P4389145164302915250

`4-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A136252.P4389145164302915250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (1 - a (n - 2) - a (n - 2))

end

end A136252.P4389145164302915250

namespace A136252

/-- `4-floor(1-a(n-2)-a(n-2))` -/
def P4389145164302915250.Spec : Prop :=
  ∀ n, P4389145164302915250.a n = A136252 n

end A136252

/-! ## A136252.P11479541619465535578

`4-((1-a(n-2))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A136252.P11479541619465535578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (Int.tmod (1 - a (n - 2)) (a (n - 1)) - a (n - 2))

end

end A136252.P11479541619465535578

namespace A136252

/-- `4-((1-a(n-2))%a(n-1)-a(n-2))` -/
def P11479541619465535578.Spec : Prop :=
  ∀ n, P11479541619465535578.a n = A136252 n

end A136252

/-! ## A136252.P13544158264417488470

`a(n-2)-(gcd(4, a(n-2))-4-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A136252.P13544158264417488470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - ((Int.gcd 4 (a (n - 2)) : ℤ) - 4 - a (n - 2))

end

end A136252.P13544158264417488470

namespace A136252

/-- `a(n-2)-(gcd(4, a(n-2))-4-a(n-2))` -/
def P13544158264417488470.Spec : Prop :=
  ∀ n, P13544158264417488470.a n = A136252 n

end A136252

/-! ## A136252.P13892211224541395315

`A354788(n+1)`
-/

namespace A136252.P13892211224541395315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (n + 1)

end

end A136252.P13892211224541395315

namespace A136252

/-- `A354788(n+1)` -/
def P13892211224541395315.Spec : Prop :=
  ∀ n, P13892211224541395315.a n = A136252 n

end A136252

/-! ## A136252.P14105526510409186519

`A347789(n+1)+1`
-/

namespace A136252.P14105526510409186519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 1) + 1

end

end A136252.P14105526510409186519

namespace A136252

/-- `A347789(n+1)+1` -/
def P14105526510409186519.Spec : Prop :=
  ∀ n, P14105526510409186519.a n = A136252 n

end A136252

/-!
# A136253: Highly composite numbers which are divisible by all smaller highly composite numbers.

The programs for A136253, there is no canonical definition to state claims against.
-/

/-! ## A136253.P1069118864543859801

`lcm(2^ceil(log2(n+1)), comp[8*n-3]!)`
-/

namespace A136253.P1069118864543859801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A136253.P1069118864543859801

/-! ## A136253.P10581704894712610313

`∏[gcd(∑[2*n], A319670(n))]`
-/

namespace A136253.P10581704894712610313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A319670 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136253.P10581704894712610313

/-! ## A136253.P10181866174666422146

`A048148(comp[a(n-2)+7])` with `a(0)=0, a(1)=6`
-/

namespace A136253.P10181866174666422146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048148 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A136253.P10181866174666422146

/-!
# A136254: Generator for the finite sequence A053016.

The programs for A136254, the canonical program `A136254.P4335201137025888143` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136254 has offset 0).

The definition of A136254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136254.P4335201137025888143

`n^3/3-n²+8*n/3+4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136254

/-- `n^3/3-n²+8*n/3+4` -/
def P4335201137025888143.Spec : Prop :=
  ∀ n, P4335201137025888143.a n = (A136254 n : ℚ)

end A136254

/-! ## A136254.P13184520050773651935

`2*(C(n, 3)+n+2)`
-/

namespace A136254.P13184520050773651935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose n 3 + (n + 2))

end

end A136254.P13184520050773651935

namespace A136254

/-- `2*(C(n, 3)+n+2)` -/
def P13184520050773651935.Spec : Prop :=
  ∀ n, (P13184520050773651935.a n : ℤ) = A136254 n

end A136254

/-! ## A136254.P2192620076579574299

`∑[∑[a(n-1)+2]]` with `a(0)=4, a(1)=-2`
-/

namespace A136254.P2192620076579574299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, -2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P2192620076579574299

namespace A136254

/-- `∑[∑[a(n-1)+2]]` -/
def P2192620076579574299.Spec : Prop :=
  ∀ n, P2192620076579574299.a n = A136254 n

end A136254

/-! ## A136254.P1028903214668702315

`∑[8-∑[a(n-1)-2]]` with `a(0)=4`
-/

namespace A136254.P1028903214668702315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P1028903214668702315

namespace A136254

/-- `∑[8-∑[a(n-1)-2]]` -/
def P1028903214668702315.Spec : Prop :=
  ∀ n, P1028903214668702315.a n = A136254 n

end A136254

/-! ## A136254.P12324295665671080634

`-∑[n-1-or(2, (1-n)²)]`
-/

namespace A136254.P12324295665671080634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.lor 2 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136254.P12324295665671080634

namespace A136254

/-- `-∑[n-1-or(2, (1-n)²)]` -/
def P12324295665671080634.Spec : Prop :=
  ∀ n, P12324295665671080634.a n = A136254 n

end A136254

/-! ## A136254.P1725646136365663510

`-∑[n-1-xor(2, (1-n)²)]`
-/

namespace A136254.P1725646136365663510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.xor 2 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136254.P1725646136365663510

namespace A136254

/-- `-∑[n-1-xor(2, (1-n)²)]` -/
def P1725646136365663510.Spec : Prop :=
  ∀ n, P1725646136365663510.a n = A136254 n

end A136254

/-! ## A136254.P5259796268223495743

`∑[A022958(n)²+n]`
-/

namespace A136254.P5259796268223495743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P5259796268223495743

namespace A136254

/-- `∑[A022958(n)²+n]` -/
def P5259796268223495743.Spec : Prop :=
  ∀ n, P5259796268223495743.a n = A136254 n

end A136254

/-! ## A136254.P14234071241906631177

`∑[A023444(n)²+n]`
-/

namespace A136254.P14234071241906631177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P14234071241906631177

namespace A136254

/-- `∑[A023444(n)²+n]` -/
def P14234071241906631177.Spec : Prop :=
  ∀ n, P14234071241906631177.a n = A136254 n

end A136254

/-! ## A136254.P6999600190811573645

`∑[A236257(n+1)-n²]`
-/

namespace A136254.P6999600190811573645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236257 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P6999600190811573645

namespace A136254

/-- `∑[A236257(n+1)-n²]` -/
def P6999600190811573645.Spec : Prop :=
  ∀ n, P6999600190811573645.a n = A136254 n

end A136254

/-! ## A136254.P3955648301968630680

`∑[A022959(n+1)²+n]`
-/

namespace A136254.P3955648301968630680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022959 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P3955648301968630680

namespace A136254

/-- `∑[A022959(n+1)²+n]` -/
def P3955648301968630680.Spec : Prop :=
  ∀ n, P3955648301968630680.a n = A136254 n

end A136254

/-! ## A136254.P4004057335648484815

`∑[A023445(n+1)²+n]`
-/

namespace A136254.P4004057335648484815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P4004057335648484815

namespace A136254

/-- `∑[A023445(n+1)²+n]` -/
def P4004057335648484815.Spec : Prop :=
  ∀ n, P4004057335648484815.a n = A136254 n

end A136254

/-! ## A136254.P12360744951927092041

`∑[A248157(n+1)²+n]`
-/

namespace A136254.P12360744951927092041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248157 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136254.P12360744951927092041

namespace A136254

/-- `∑[A248157(n+1)²+n]` -/
def P12360744951927092041.Spec : Prop :=
  ∀ n, P12360744951927092041.a n = A136254 n

end A136254

/-! ## A136254.P17577011630949431545

`2*(A050407(n+1)+n+1)`
-/

namespace A136254.P17577011630949431545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A050407 (n + 1) + (n + 1 : ℤ))

end

end A136254.P17577011630949431545

namespace A136254

/-- `2*(A050407(n+1)+n+1)` -/
def P17577011630949431545.Spec : Prop :=
  ∀ n, P17577011630949431545.a n = A136254 n

end A136254

/-!
# A136255: Triangle T(n,k) read by rows: T(n,k) = (k+1) * A137276(n,k+1).

The programs for A136255, the canonical program `A136255.P17077608537681163223` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136255 has offset 1).

The definition of A136255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136255.P486989464793427673

`(n+1-∑[2*n]%comp[∑[n]])*A049310(n)`
-/

namespace A136255.P486989464793427673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ)) * A049310 n

end

end A136255.P486989464793427673

namespace A136255

/-- `(n+1-∑[2*n]%comp[∑[n]])*A049310(n)` -/
def P486989464793427673.Spec : Prop :=
  ∀ n, P486989464793427673.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P17077608537681163223

`A049310(n)*A127948(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A136255

/-- `A049310(n)*A127948(n)` -/
def P17077608537681163223.Spec : Prop :=
  ∀ n, P17077608537681163223.a n = A136255 (n + 1)

theorem P17077608537681163223.correct : P17077608537681163223.Spec := by
  intro n
  simp only [A136255, Nat.add_sub_cancel]

end A136255

/-! ## A136255.P18343423667768010427

`(1-A114327(n))*A049310(n)`
-/

namespace A136255.P18343423667768010427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A114327 n) * A049310 n

end

end A136255.P18343423667768010427

namespace A136255

/-- `(1-A114327(n))*A049310(n)` -/
def P18343423667768010427.Spec : Prop :=
  ∀ n, P18343423667768010427.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P7145587407931886797

`Δ[A144216(n+1)]*A049310(n)`
-/

namespace A136255.P7145587407931886797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049310 n

end

end A136255.P7145587407931886797

namespace A136255

/-- `Δ[A144216(n+1)]*A049310(n)` -/
def P7145587407931886797.Spec : Prop :=
  ∀ n, P7145587407931886797.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P6663734306710820176

`(1-A061579(n)+n)*A049310(n)`
-/

namespace A136255.P6663734306710820176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A061579 n + (n : ℤ)) * A049310 n

end

end A136255.P6663734306710820176

namespace A136255

/-- `(1-A061579(n)+n)*A049310(n)` -/
def P6663734306710820176.Spec : Prop :=
  ∀ n, P6663734306710820176.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P9229735582602129302

`(n+2-A038722(n+1))*A049310(n)`
-/

namespace A136255.P9229735582602129302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A038722 (n + 1)) * A049310 n

end

end A136255.P9229735582602129302

namespace A136255

/-- `(n+2-A038722(n+1))*A049310(n)` -/
def P9229735582602129302.Spec : Prop :=
  ∀ n, P9229735582602129302.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P12172673828111254196

`(n+2-(A093995(n+1)-n))*A049310(n)`
-/

namespace A136255.P12172673828111254196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (A093995 (n + 1) - (n : ℤ))) * A049310 n

end

end A136255.P12172673828111254196

namespace A136255

/-- `(n+2-(A093995(n+1)-n))*A049310(n)` -/
def P12172673828111254196.Spec : Prop :=
  ∀ n, P12172673828111254196.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P9133114422728387588

`Δ[A144216(n+1)]*A053119(A061579(n))`
-/

namespace A136255.P9133114422728387588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053119 (A061579 n).toNat

end

end A136255.P9133114422728387588

namespace A136255

/-- `Δ[A144216(n+1)]*A053119(A061579(n))` -/
def P9133114422728387588.Spec : Prop :=
  ∀ n, P9133114422728387588.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P17792831727662130654

`A137276(comp[∑[n]])*A211161(n+1)`
-/

namespace A136255.P17792831727662130654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A211161 (n + 1)

end

end A136255.P17792831727662130654

namespace A136255

/-- `A137276(comp[∑[n]])*A211161(n+1)` -/
def P17792831727662130654.Spec : Prop :=
  ∀ n, P17792831727662130654.a n = A136255 (n + 1)

end A136255

/-! ## A136255.P16642691647475451752

`-A049310(n)*A114327(A014132(n+1))`
-/

namespace A136255.P16642691647475451752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A049310 n * A114327 (A014132 (n + 1)).toNat)

end

end A136255.P16642691647475451752

namespace A136255

/-- `-A049310(n)*A114327(A014132(n+1))` -/
def P16642691647475451752.Spec : Prop :=
  ∀ n, P16642691647475451752.a n = A136255 (n + 1)

end A136255

/-!
# A136256: Triangle of the coefficients [x^k] of the linear form (x*B_{n-1}(x)-(d/dx) B_n(x)) of the polynomials defined in A137276, 0<=k<=n.

The programs for A136256, there is no canonical definition to state claims against.
-/

/-! ## A136256.P1706088532936267044

`A104041(n)-A010054(A191827(n))`
-/

namespace A136256.P1706088532936267044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104041 n - A010054 (A191827 n).toNat

end

end A136256.P1706088532936267044

/-! ## A136256.P10612756223855250591

`A176484(n)%A277203(A116608(n+1))`
-/

namespace A136256.P10612756223855250591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176484 n) (A277203 (A116608 (n + 1)).toNat)

end

end A136256.P10612756223855250591

/-! ## A136256.P16112756398166486584

`A345417(n+2)%A003963(A124506(2*n+3))`
-/

namespace A136256.P16112756398166486584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345417 (n + 2)) (A003963 (A124506 (2 * n + 3)).toNat)

end

end A136256.P16112756398166486584

/-!
# A136258: a(n) = 2*a(n-1) - 2*a(n-2), with a(0)=1, a(1)=5.

The programs for A136258, the canonical program `A136258.P16248532626864034061` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136258 has offset 0).

The definition of A136258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-2)` (program `A136258.P16248532626864034061`, by `A136258.P16248532626864034061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136258.P16248532626864034061

`2*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136258

/-- `2*a(n-1)-2*a(n-2)` -/
def P16248532626864034061.Spec : Prop :=
  ∀ n, P16248532626864034061.a n = A136258 n

theorem P16248532626864034061.correct : P16248532626864034061.Spec := by
  intro n
  simp only [A136258]

end A136258

/-! ## A136258.P11129637617691171065

`3*A009545(n)+A009545(n+1)`
-/

namespace A136258.P11129637617691171065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A009545 n + A009545 (n + 1)

end

end A136258.P11129637617691171065

namespace A136258

/-- `3*A009545(n)+A009545(n+1)` -/
def P11129637617691171065.Spec : Prop :=
  ∀ n, P11129637617691171065.a n = A136258 n

end A136258

/-! ## A136258.P1469616397571453359

`∏[2-2/a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A136258.P1469616397571453359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 - 2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136258.P1469616397571453359

namespace A136258

/-- `∏[2-2/a(n-1)]` -/
def P1469616397571453359.Spec : Prop :=
  ∀ n, P1469616397571453359.a n = (A136258 n : ℚ)

end A136258

/-! ## A136258.P362935462595036475

`2*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A136258.P362935462595036475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A136258.P362935462595036475

namespace A136258

/-- `2*(a(n-1)-a(n-2))` -/
def P362935462595036475.Spec : Prop :=
  ∀ n, P362935462595036475.a n = A136258 n

theorem P362935462595036475.correct : P362935462595036475.Spec := by
  intro n
  simp only [A136258, Nat.add_sub_cancel, A136258.P362935462595036475.a, A136258.P16248532626864034061.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A136258

/-! ## A136258.P15946222300938127631

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=1, a(1)=5`
-/

namespace A136258.P15946222300938127631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A136258.P15946222300938127631

namespace A136258

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P15946222300938127631.Spec : Prop :=
  ∀ n, P15946222300938127631.a n = (A136258 n : ℚ)

end A136258

/-! ## A136258.P11285238349305038016

`a(n-1)-(a(n-3)+a(n-3))` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A136258.P11285238349305038016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  a (n - 1) - (a (n - 3) + a (n - 3))

end

end A136258.P11285238349305038016

namespace A136258

/-- `a(n-1)-(a(n-3)+a(n-3))` -/
def P11285238349305038016.Spec : Prop :=
  ∀ n, P11285238349305038016.a n = A136258 n

end A136258

/-! ## A136258.P1044922655531520154

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A136258.P1044922655531520154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A136258.P1044922655531520154

namespace A136258

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P1044922655531520154.Spec : Prop :=
  ∀ n, P1044922655531520154.a n = A136258 n

end A136258

/-! ## A136258.P9317976496389439759

`A137444(n)+A009545(n)`
-/

namespace A136258.P9317976496389439759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137444 n + A009545 n

end

end A136258.P9317976496389439759

namespace A136258

/-- `A137444(n)+A009545(n)` -/
def P9317976496389439759.Spec : Prop :=
  ∀ n, P9317976496389439759.a n = A136258 n

end A136258

/-! ## A136258.P17635866289629931368

`A090131(n)-A146559(n+2)`
-/

namespace A136258.P17635866289629931368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 n - A146559 (n + 2)

end

end A136258.P17635866289629931368

namespace A136258

/-- `A090131(n)-A146559(n+2)` -/
def P17635866289629931368.Spec : Prop :=
  ∀ n, P17635866289629931368.a n = A136258 n

end A136258

/-! ## A136258.P8017015084643688095

`A090131(n)+2*A009545(n)`
-/

namespace A136258.P8017015084643688095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 n + 2 * A009545 n

end

end A136258.P8017015084643688095

namespace A136258

/-- `A090131(n)+2*A009545(n)` -/
def P8017015084643688095.Spec : Prop :=
  ∀ n, P8017015084643688095.a n = A136258 n

end A136258

/-! ## A136258.P15174555716856400590

`A146559(n)-A099087(n+3)`
-/

namespace A136258.P15174555716856400590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n - A099087 (n + 3)

end

end A136258.P15174555716856400590

namespace A136258

/-- `A146559(n)-A099087(n+3)` -/
def P15174555716856400590.Spec : Prop :=
  ∀ n, P15174555716856400590.a n = A136258 n

end A136258

/-! ## A136258.P15337090573879675719

`2*A137444(n)-A090131(n)`
-/

namespace A136258.P15337090573879675719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137444 n - A090131 n

end

end A136258.P15337090573879675719

namespace A136258

/-- `2*A137444(n)-A090131(n)` -/
def P15337090573879675719.Spec : Prop :=
  ∀ n, P15337090573879675719.a n = A136258 n

end A136258

/-! ## A136258.P4426460217538346359

`2*A090131(n)-A146559(n)`
-/

namespace A136258.P4426460217538346359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090131 n - A146559 n

end

end A136258.P4426460217538346359

namespace A136258

/-- `2*A090131(n)-A146559(n)` -/
def P4426460217538346359.Spec : Prop :=
  ∀ n, P4426460217538346359.a n = A136258 n

end A136258

/-! ## A136258.P16245819763438008964

`A106664(n+1)+A090131(n)-A000035(n+1)`
-/

namespace A136258.P16245819763438008964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106664 (n + 1) + (A090131 n - A000035 (n + 1))

end

end A136258.P16245819763438008964

namespace A136258

/-- `A106664(n+1)+A090131(n)-A000035(n+1)` -/
def P16245819763438008964.Spec : Prop :=
  ∀ n, P16245819763438008964.a n = A136258 n

end A136258

/-! ## A136258.P14164932604315535563

`A138231(2*n+1)-A099087(n+3)`
-/

namespace A136258.P14164932604315535563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1) - A099087 (n + 3)

end

end A136258.P14164932604315535563

namespace A136258

/-- `A138231(2*n+1)-A099087(n+3)` -/
def P14164932604315535563.Spec : Prop :=
  ∀ n, P14164932604315535563.a n = A136258 n

end A136258

/-! ## A136258.P14023680412833029185

`A138232(2*n+1)+A137444(n)`
-/

namespace A136258.P14023680412833029185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (2 * n + 1) + A137444 n

end

end A136258.P14023680412833029185

namespace A136258

/-- `A138232(2*n+1)+A137444(n)` -/
def P14023680412833029185.Spec : Prop :=
  ∀ n, P14023680412833029185.a n = A136258 n

end A136258

/-! ## A136258.P3642045073516908284

`A138231(2*n)-A138614(2*(n+1))`
-/

namespace A136258.P3642045073516908284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n) - A138614 (2 * (n + 1))

end

end A136258.P3642045073516908284

namespace A136258

/-- `A138231(2*n)-A138614(2*(n+1))` -/
def P3642045073516908284.Spec : Prop :=
  ∀ n, P3642045073516908284.a n = A136258 n

end A136258

/-! ## A136258.P6890478619104454759

`A138232(2*n+1)-A138614(2*(n+1))`
-/

namespace A136258.P6890478619104454759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (2 * n + 1) - A138614 (2 * (n + 1))

end

end A136258.P6890478619104454759

namespace A136258

/-- `A138232(2*n+1)-A138614(2*(n+1))` -/
def P6890478619104454759.Spec : Prop :=
  ∀ n, P6890478619104454759.a n = A136258 n

end A136258

/-! ## A136258.P8157939931637869310

`A100215(n)-A038504(n+3)`
-/

namespace A136258.P8157939931637869310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100215 n - A038504 (n + 3)

end

end A136258.P8157939931637869310

namespace A136258

/-- `A100215(n)-A038504(n+3)` -/
def P8157939931637869310.Spec : Prop :=
  ∀ n, P8157939931637869310.a n = A136258 n

end A136258

/-!
# A136259: Stone skipping numbers.

The programs for A136259, there is no canonical definition to state claims against.
-/

/-! ## A136259.P6355926087194846560

`∪[A238091(n+1), A238092(n+1)]`
-/

namespace A136259.P6355926087194846560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136259.P6355926087194846560

/-! ## A136259.P8020000167418316921

`A373982(eq[A267483(n), A373957(n+1)])`
-/

namespace A136259.P8020000167418316921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373982 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136259.P8020000167418316921

/-! ## A136259.P10424493171060651453

`lt[A033097(n+1), A275198(n)]+1`
-/

namespace A136259.P10424493171060651453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A136259.P10424493171060651453

/-!
# A136260: Primes which contain the digit 2 or the digit 3.

The programs for A136260, there is no canonical definition to state claims against.
-/

/-! ## A136260.P12977642166640841731

`p?[lt[A211396(n), 4]]`
-/

namespace A136260.P12977642166640841731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136260.P12977642166640841731

/-! ## A136260.P14910299646984570796

`p?[lt[A102673(n), A102669(n)]]`
-/

namespace A136260.P14910299646984570796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136260.P14910299646984570796

/-! ## A136260.P13122922692858662640

`p?[∪[A092451(n), A092452(n)]]`
-/

namespace A136260.P13122922692858662640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092452 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136260.P13122922692858662640

/-! ## A136260.P16086128800960378251

`p?[n*A002264(A211396(n)+1)]`
-/

namespace A136260.P16086128800960378251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002264 (A211396 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136260.P16086128800960378251

/-! ## A136260.P4108475462114227973

`p?[n*A103627(A211396(n)+1)]`
-/

namespace A136260.P4108475462114227973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103627 (A211396 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136260.P4108475462114227973

/-! ## A136260.P15399331040874661365

`∪[A208272(n+1), A212525(n+1)]`
-/

namespace A136260.P15399331040874661365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136260.P15399331040874661365

/-! ## A136260.P17700170233978964151

`p?[lcm(n+1, A002264(A211396(n+1)+1))]`
-/

namespace A136260.P17700170233978964151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A002264 (A211396 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136260.P17700170233978964151

/-! ## A136260.P9791949015851959651

`p?[n*A004526(A211396(A091703(n)))]`
-/

namespace A136260.P9791949015851959651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 (A211396 (A091703 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136260.P9791949015851959651

/-! ## A136260.P2403792016953071189

`p?[A008621(A211396(n))*A091703(n)]`
-/

namespace A136260.P2403792016953071189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A211396 n).toNat * A091703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136260.P2403792016953071189

/-! ## A136260.P7418514178689786896

`eq[2, A008624(A211396(n)*A319410(n))]`
-/

namespace A136260.P7418514178689786896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A211396 n * A319410 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136260.P7418514178689786896

/-!
# A136261: Triangle T(n,k) = k*A122188(n,k), read by rows.

The programs for A136261, there is no canonical definition to state claims against.
-/

/-! ## A136261.P10872533930073541270

`-(-1)^∑[char[∑[n+2]]]*A002260(n+1)`
-/

namespace A136261.P10872533930073541270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1))

end

end A136261.P10872533930073541270

/-! ## A136261.P14069179414766258963

`-(A002262(n)+1)*(-1)^∑[char[∑[n+2]]]`
-/

namespace A136261.P14069179414766258963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A002262 n + 1) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A136261.P14069179414766258963

/-! ## A136261.P10130748126161809224

`-(1-A057944(n)+n)*(-1)^∑[char[∑[n+2]]]`
-/

namespace A136261.P10130748126161809224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - A057944 n + (n : ℤ)) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A136261.P10130748126161809224

/-! ## A136261.P9514539481239232012

`-(A132118(n+1)-n)*(-1)^∑[char[∑[n+2]]]`
-/

namespace A136261.P9514539481239232012
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A132118 (n + 1) - (n : ℤ)) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A136261.P9514539481239232012

/-! ## A136261.P17561414757266453228

`-(2*n+1-A061885(n))*(-1)^∑[char[∑[n+2]]]`
-/

namespace A136261.P17561414757266453228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((2 * n + 1 : ℤ) - A061885 n) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A136261.P17561414757266453228

/-! ## A136261.P1623299374105424330

`-(2*(n+1)-A004201(n+1))*(-1)^∑[char[∑[n+2]]]`
-/

namespace A136261.P1623299374105424330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((2 * (n + 1) : ℤ) - A004201 (n + 1)) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A136261.P1623299374105424330

/-! ## A136261.P292806253337989700

`-A002260(n+1)*A122188(n+1)`
-/

namespace A136261.P292806253337989700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002260 (n + 1) * A122188 (n + 1))

end

end A136261.P292806253337989700

/-! ## A136261.P2411529931796936961

`Δ[A010751(n+1)]*A002260(n+1)`
-/

namespace A136261.P2411529931796936961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002260 (n + 1)

end

end A136261.P2411529931796936961

/-! ## A136261.P9376158932077423943

`(A002262(n)+1)*Δ[A010751(n+1)]`
-/

namespace A136261.P9376158932077423943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (f1 (n + 1) - f1 n)

end

end A136261.P9376158932077423943

/-! ## A136261.P432655671073783752

`A000005(A059268(n))/Δ[A010751(n+1)]`
-/

namespace A136261.P432655671073783752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A059268 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A136261.P432655671073783752

/-!
# A136263: Integral form based on A122188: Coefficients of recursive polynomial from: p(x,n)=x*IP(x,n)=-(1+x)*B(x,n)-B'(x,n).

The programs for A136263, there is no canonical definition to state claims against.
-/

/-! ## A136263.P782619822181526496

`A106400((3*n-2)*∑[∑[n]])*A111505(n)`
-/

namespace A136263.P782619822181526496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (((3 * n : ℤ) - 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat * A111505 n

end

end A136263.P782619822181526496

/-! ## A136263.P5856411247009181083

`A162514(n)-A177995(A177984(n))`
-/

namespace A136263.P5856411247009181083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n - A177995 (A177984 n).toNat

end

end A136263.P5856411247009181083

/-! ## A136263.P4620971811287458366

`A016409(A008598(n))*A111505(n)`
-/

namespace A136263.P4620971811287458366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016409 (A008598 n).toNat * A111505 n

end

end A136263.P4620971811287458366

/-! ## A136263.P13806644004976549489

`A016409(A008598(n))*A193924(n)`
-/

namespace A136263.P13806644004976549489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016409 (A008598 n).toNat * A193924 n

end

end A136263.P13806644004976549489

/-! ## A136263.P16573647982140079505

`A062138(n)%A095213(A059328(n))`
-/

namespace A136263.P16573647982140079505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062138 n) (A095213 (A059328 n).toNat)

end

end A136263.P16573647982140079505

/-!
# A136264: Expansion of g.f. (1+x)^2*(x^2-6*x+1)/(x-1)^4.

The programs for A136264, the canonical program `A136264.P11438712697809354839` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136264 has offset 0).

The definition of A136264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136264.P11438712697809354839

`a(n-1)-16*C(n, 2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136264

/-- `a(n-1)-16*C(n, 2)` -/
def P11438712697809354839.Spec : Prop :=
  ∀ n, P11438712697809354839.a n = A136264 n

theorem P11438712697809354839.correct : P11438712697809354839.Spec := by
  intro n
  simp only [A136264]

end A136264

/-! ## A136264.P2859373273234615664

`floor(1/(n+1))-∑[16*C(n, 2)]`
-/

namespace A136264.P2859373273234615664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A136264.P2859373273234615664

namespace A136264

/-- `floor(1/(n+1))-∑[16*C(n, 2)]` -/
def P2859373273234615664.Spec : Prop :=
  ∀ n, P2859373273234615664.a n = A136264 n

end A136264

/-! ## A136264.P6341536145259825224

`a(n-1)-(n-1)*8*n` with `a(0)=1, a(1)=0`
-/

namespace A136264.P6341536145259825224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - ((n : ℤ) - 1) * (8 * n : ℤ)

end

end A136264.P6341536145259825224

namespace A136264

/-- `a(n-1)-(n-1)*8*n` -/
def P6341536145259825224.Spec : Prop :=
  ∀ n, P6341536145259825224.a n = A136264 n

end A136264

/-! ## A136264.P10853818644110879565

`A000007(n)-∑[(n-1)*8*n]`
-/

namespace A136264.P10853818644110879565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136264.P10853818644110879565

namespace A136264

/-- `A000007(n)-∑[(n-1)*8*n]` -/
def P10853818644110879565.Spec : Prop :=
  ∀ n, P10853818644110879565.a n = A136264 n

end A136264

/-! ## A136264.P12211265521107200783

`A004275(n+1)-2*C(Δ[n²], 3)`
-/

namespace A136264.P12211265521107200783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) - (2 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ)

end

end A136264.P12211265521107200783

namespace A136264

/-- `A004275(n+1)-2*C(Δ[n²], 3)` -/
def P12211265521107200783.Spec : Prop :=
  ∀ n, P12211265521107200783.a n = A136264 n

end A136264

/-! ## A136264.P18323687122083943400

`A035471(n)-A016743(n)`
-/

namespace A136264.P18323687122083943400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n - A016743 n

end

end A136264.P18323687122083943400

namespace A136264

/-- `A035471(n)-A016743(n)` -/
def P18323687122083943400.Spec : Prop :=
  ∀ n, P18323687122083943400.a n = A136264 n

end A136264

/-! ## A136264.P12868235001751103332

`A028310(n)-A063523(n)`
-/

namespace A136264.P12868235001751103332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A063523 n

end

end A136264.P12868235001751103332

namespace A136264

/-- `A028310(n)-A063523(n)` -/
def P12868235001751103332.Spec : Prop :=
  ∀ n, P12868235001751103332.a n = A136264 n

end A136264

/-! ## A136264.P6343445241756902671

`A008486(n)-A143166(n)`
-/

namespace A136264.P6343445241756902671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A143166 n

end

end A136264.P6343445241756902671

namespace A136264

/-- `A008486(n)-A143166(n)` -/
def P6343445241756902671.Spec : Prop :=
  ∀ n, P6343445241756902671.a n = A136264 n

end A136264

/-! ## A136264.P3286009194915635191

`A004277(n)-A259110(n)`
-/

namespace A136264.P3286009194915635191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A259110 n

end

end A136264.P3286009194915635191

namespace A136264

/-- `A004277(n)-A259110(n)` -/
def P3286009194915635191.Spec : Prop :=
  ∀ n, P3286009194915635191.a n = A136264 n

end A136264

/-! ## A136264.P17663802699502610282

`A004275(n+1)-A259110(n)`
-/

namespace A136264.P17663802699502610282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) - A259110 n

end

end A136264.P17663802699502610282

namespace A136264

/-- `A004275(n+1)-A259110(n)` -/
def P17663802699502610282.Spec : Prop :=
  ∀ n, P17663802699502610282.a n = A136264 n

end A136264

/-! ## A136264.P16694314822007153416

`A179865(n+1)-A172078(n)`
-/

namespace A136264.P16694314822007153416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A172078 n

end

end A136264.P16694314822007153416

namespace A136264

/-- `A179865(n+1)-A172078(n)` -/
def P16694314822007153416.Spec : Prop :=
  ∀ n, P16694314822007153416.a n = A136264 n

end A136264

/-! ## A136264.P2451221521034872356

`2*A008574(n)-A008412(n)`
-/

namespace A136264.P2451221521034872356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A008412 n

end

end A136264.P2451221521034872356

namespace A136264

/-- `2*A008574(n)-A008412(n)` -/
def P2451221521034872356.Spec : Prop :=
  ∀ n, P2451221521034872356.a n = A136264 n

end A136264

/-! ## A136264.P27701412707294839

`A008574(n)-2*A035597(n)`
-/

namespace A136264.P27701412707294839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - 2 * A035597 n

end

end A136264.P27701412707294839

namespace A136264

/-- `A008574(n)-2*A035597(n)` -/
def P27701412707294839.Spec : Prop :=
  ∀ n, P27701412707294839.a n = A136264 n

end A136264

/-! ## A136264.P4079326167361545712

`A022144(n)-2*A217873(n)`
-/

namespace A136264.P4079326167361545712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A217873 n

end

end A136264.P4079326167361545712

namespace A136264

/-- `A022144(n)-2*A217873(n)` -/
def P4079326167361545712.Spec : Prop :=
  ∀ n, P4079326167361545712.a n = A136264 n

end A136264

/-! ## A136264.P6972088835313243043

`A008574(n)-(A143166(n)+n)`
-/

namespace A136264.P6972088835313243043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - (A143166 n + (n : ℤ))

end

end A136264.P6972088835313243043

namespace A136264

/-- `A008574(n)-(A143166(n)+n)` -/
def P6972088835313243043.Spec : Prop :=
  ∀ n, P6972088835313243043.a n = A136264 n

end A136264

/-! ## A136264.P13097987225097556908

`A035471(n)+n-A118465(n)`
-/

namespace A136264.P13097987225097556908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n + ((n : ℤ) - A118465 n)

end

end A136264.P13097987225097556908

namespace A136264

/-- `A035471(n)+n-A118465(n)` -/
def P13097987225097556908.Spec : Prop :=
  ∀ n, P13097987225097556908.a n = A136264 n

end A136264

/-! ## A136264.P3269162926542316031

`A004275(n+1)-2*A000447(n)`
-/

namespace A136264.P3269162926542316031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) - 2 * A000447 n

end

end A136264.P3269162926542316031

namespace A136264

/-- `A004275(n+1)-2*A000447(n)` -/
def P3269162926542316031.Spec : Prop :=
  ∀ n, P3269162926542316031.a n = A136264 n

end A136264

/-! ## A136264.P8585938001165324829

`A004277(n)-∑[2*A004273(n)²]`
-/

namespace A136264.P8585938001165324829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004273 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136264.P8585938001165324829

namespace A136264

/-- `A004277(n)-∑[2*A004273(n)²]` -/
def P8585938001165324829.Spec : Prop :=
  ∀ n, P8585938001165324829.a n = A136264 n

end A136264

/-! ## A136264.P4512059539499521142

`1-A084990(A004273(n))`
-/

namespace A136264.P4512059539499521142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084990 (A004273 n).toNat

end

end A136264.P4512059539499521142

namespace A136264

/-- `1-A084990(A004273(n))` -/
def P4512059539499521142.Spec : Prop :=
  ∀ n, P4512059539499521142.a n = A136264 n

end A136264

/-! ## A136264.P16552288322796008800

`A004277(n)-A007290(2*n+1)`
-/

namespace A136264.P16552288322796008800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A007290 (2 * n + 1)

end

end A136264.P16552288322796008800

namespace A136264

/-- `A004277(n)-A007290(2*n+1)` -/
def P16552288322796008800.Spec : Prop :=
  ∀ n, P16552288322796008800.a n = A136264 n

end A136264

/-!
# A136266: Expansion of B(x, n) = x*B(x, A004001(n - 1)) + B(x, n - A004001(n - 1)), irregular table read by rows.

The programs for A136266, there is no canonical definition to state claims against.
-/

/-! ## A136266.P14714598205660395084

`A060016(lt[A103297(n), A180063(n+1)])`
-/

namespace A136266.P14714598205660395084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136266.P14714598205660395084

/-! ## A136266.P5282071525715502328

`A185646(2*(n+1))%A006519(A223172(n+2))`
-/

namespace A136266.P5282071525715502328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185646 (2 * (n + 1))) (A006519 (A223172 (n + 2)).toNat)

end

end A136266.P5282071525715502328

/-! ## A136266.P13884172064392539855

`A354527(A354544(3*n+7)+A000005(n+5))`
-/

namespace A136266.P13884172064392539855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354527 (A354544 (3 * n + 7) + A000005 (n + 5)).toNat

end

end A136266.P13884172064392539855

/-! ## A136266.P3699025346439449594

`A238093(A119440(n+1))`
-/

namespace A136266.P3699025346439449594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238093 (A119440 (n + 1)).toNat

end

end A136266.P3699025346439449594

/-!
# A136268: Cyclic p-roots of prime lengths p(n).

The programs for A136268, there is no canonical definition to state claims against.
-/

/-! ## A136268.P5918803998063962542

`A000984(record[∏{p}[n+1, #-1]])`
-/

namespace A136268.P5918803998063962542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136268.P5918803998063962542

/-! ## A136268.P9560546320700175065

`A000984(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A136268.P9560546320700175065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136268.P9560546320700175065

/-! ## A136268.P2407422460004081713

`A000984(eq[n, ∏{p}[n+1, #-1]])`
-/

namespace A136268.P2407422460004081713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136268.P2407422460004081713

/-! ## A136268.P5909021242745895400

`A000984(A006093(n+1))`
-/

namespace A136268.P5909021242745895400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A006093 (n + 1)).toNat

end

end A136268.P5909021242745895400

/-! ## A136268.P2702146452898008620

`A001405(A037168(n+1))`
-/

namespace A136268.P2702146452898008620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A037168 (n + 1)).toNat

end

end A136268.P2702146452898008620

/-!
# A136270: a(n) = 20*a(n-1) - 3*a(n-2).

The programs for A136270, the canonical program `A136270.P2797011700676310265` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136270 has offset 1).

The definition of A136270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-3*a(n-2)` (program `A136270.P2797011700676310265`, by `A136270.P2797011700676310265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136270.P2797011700676310265

`20*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136270

/-- `20*a(n-1)-3*a(n-2)` -/
def P2797011700676310265.Spec : Prop :=
  ∀ n, P2797011700676310265.a n = A136270 (n + 1)

theorem P2797011700676310265.correct : P2797011700676310265.Spec := by
  intro n
  simp only [A136270, Nat.add_sub_cancel]

end A136270

/-!
# A136272: Waterbird take-off sequence. Complement of A166021.

The programs for A136272, there is no canonical definition to state claims against.
-/

/-! ## A136272.P8117978008996162885

`record[n*ceil(2*sqrt(n))%2]+1`
-/

namespace A136272.P8117978008996162885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈2 * Real.sqrt (n : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A136272.P8117978008996162885

/-! ## A136272.P9907817412960219070

`C(round(sqrt(2*n))+1, 2)+1+n`
-/

namespace A136272.P9907817412960219070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat 2 + 1 + n

end

end A136272.P9907817412960219070

/-! ## A136272.P17979705861776144602

`eq[1, 1-a(n-floor(sqrt(n)))]+1` with `a(0)=1`
-/

namespace A136272.P17979705861776144602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - Nat.sqrt n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136272.P17979705861776144602

/-! ## A136272.P16411319021506513988

`lt[round(sqrt(n))², abs(1-n)+1]+1`
-/

namespace A136272.P16411319021506513988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A136272.P16411319021506513988

/-! ## A136272.P9660558192711622251

`C(comp[∑[n]+1]-n, 2)+n+1`
-/

namespace A136272.P9660558192711622251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + (n + 1)

end

end A136272.P9660558192711622251

/-! ## A136272.P17631526344811171817

`comp[(n+2)*floor(sqrt(4*n+1))%2]`
-/

namespace A136272.P17631526344811171817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (Nat.sqrt (4 * n + 1) % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A136272.P17631526344811171817

/-! ## A136272.P5349429720905627987

`comp[A004201(n+1)]+1`
-/

namespace A136272.P5349429720905627987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136272.P5349429720905627987

/-! ## A136272.P5482068258448682761

`comp[A061885(n)+1]+1`
-/

namespace A136272.P5482068258448682761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136272.P5482068258448682761

/-! ## A136272.P7857682966895801958

`record[2-A109983(n)+n]`
-/

namespace A136272.P7857682966895801958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A109983 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136272.P7857682966895801958

/-! ## A136272.P14592078418966580816

`comp[(n+2)*A118175(n)]`
-/

namespace A136272.P14592078418966580816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A118175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136272.P14592078418966580816

/-!
# A136273: a(0) = 0; for n>0, a(n) = period length of the decimal expansion of the number Sum_{i>=1} 2^(-n*i). Also period length of the fractions 1/b(n), where b(n) = 2*b(n-1) + 1, with b(1)=1.

The programs for A136273, there is no canonical definition to state claims against.
-/

/-! ## A136273.P10910474835008416832

`A051626(A109395(∑[2^n]))`
-/

namespace A136273.P10910474835008416832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A109395 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A136273.P10910474835008416832

/-! ## A136273.P11103015754590956630

`A007732(A213243(n+1))%(3^n)`
-/

namespace A136273.P11103015754590956630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007732 (A213243 (n + 1)).toNat) (3 ^ n : ℤ)

end

end A136273.P11103015754590956630

/-! ## A136273.P4708800399039271988

`char[A007318(n)]*A007732(A213243(n+1))`
-/

namespace A136273.P4708800399039271988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007732 (A213243 (n + 1)).toNat

end

end A136273.P4708800399039271988

/-! ## A136273.P11154555836337198361

`lcm(A001221(n+1), A007732(A213243(n+1)))`
-/

namespace A136273.P11154555836337198361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A007732 (A213243 (n + 1)).toNat)

end

end A136273.P11154555836337198361

/-! ## A136273.P2457361648992026165

`A000040(n+1)%2*A007732(A213243(n+1))`
-/

namespace A136273.P2457361648992026165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A007732 (A213243 (n + 1)).toNat

end

end A136273.P2457361648992026165

/-!
# A136274: Decimal expansion of 1/998999.

The programs for A136274, there is no canonical definition to state claims against.
-/

/-! ## A136274.P7826387034405025871

`Δ[A000045(A350823(∑[n+1]))]`
-/

namespace A136274.P7826387034405025871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A350823 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136274.P7826387034405025871

/-! ## A136274.P3122608609469283632

`Δ[A247049(n+4)%A331801(3*n+5)]`
-/

namespace A136274.P3122608609469283632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247049 (n + 4)) (A331801 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136274.P3122608609469283632

/-! ## A136274.P14857844174468723169

`Δ[A000045(floor(n/3)+1)]%A107945(n+1)`
-/

namespace A136274.P14857844174468723169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(n : ℚ) / 3⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A107945 (n + 1))

end

end A136274.P14857844174468723169

/-! ## A136274.P16973015106736286283

`A059841(A329723(n))*A327035(n)`
-/

namespace A136274.P16973015106736286283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A329723 n).toNat * A327035 n

end

end A136274.P16973015106736286283

/-!
# A136275: Similar to A137284, but considering Sum{ k = 1,2,3,... } 5^(-nk).

The programs for A136275, the canonical program `A136275.P7559480081781841529` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136275 has offset 0).

The definition of A136275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136275.P7559480081781841529

`ceil(a(n-1)+a(n-1)/log2(5))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136275

/-- `ceil(a(n-1)+a(n-1)/log2(5))` -/
def P7559480081781841529.Spec : Prop :=
  ∀ n, P7559480081781841529.a n = A136275 n

theorem P7559480081781841529.correct : P7559480081781841529.Spec := by
  intro n
  simp only [A136275]

end A136275

/-! ## A136275.P6471514288261821629

`A226721(a(n-1))` with `a(0)=1`
-/

namespace A136275.P6471514288261821629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226721 (a (n - 1)).toNat

end

end A136275.P6471514288261821629

namespace A136275

/-- `A226721(a(n-1))` -/
def P6471514288261821629.Spec : Prop :=
  ∀ n, P6471514288261821629.a n = A136275 n

end A136275

/-! ## A136275.P15570555179362578060

`A066344(a(n-1))+1` with `a(0)=1`
-/

namespace A136275.P15570555179362578060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066344 (a (n - 1)).toNat + 1

end

end A136275.P15570555179362578060

namespace A136275

/-- `A066344(a(n-1))+1` -/
def P15570555179362578060.Spec : Prop :=
  ∀ n, P15570555179362578060.a n = A136275 n

end A136275

/-! ## A136275.P11758073272829240025

`abs(A274922(n))-(n-1-A066344(a(n-1)))` with `a(0)=1`
-/

namespace A136275.P11758073272829240025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A274922 n| - ((n : ℤ) - 1 - A066344 (a (n - 1)).toNat)

end

end A136275.P11758073272829240025

namespace A136275

/-- `abs(A274922(n))-(n-1-A066344(a(n-1)))` -/
def P11758073272829240025.Spec : Prop :=
  ∀ n, P11758073272829240025.a n = A136275 n

end A136275

/-!
# A136277: From the binary representation of n: binomial(number of ones, number of blocks of contiguous ones).

The programs for A136277, the canonical program `A136277.P14697179378172432189` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136277 has offset 0).

The definition of A136277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A181591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136277.P14697179378172432189

`A181591(A005940(1+n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A136277

/-- `A181591(A005940(1+n))` -/
def P14697179378172432189.Spec : Prop :=
  ∀ n, P14697179378172432189.a n = A136277 n

theorem P14697179378172432189.correct : P14697179378172432189.Spec := by
  intro n
  simp only [A136277]

end A136277

/-! ## A136277.P17312563076960678363

`C(A000120(n), A014081(n))`
-/

namespace A136277.P17312563076960678363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A014081 n).toNat

end

end A136277.P17312563076960678363

namespace A136277

/-- `C(A000120(n), A014081(n))` -/
def P17312563076960678363.Spec : Prop :=
  ∀ n, (P17312563076960678363.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P8666335175623531622

`C(A000120(n), A069010(n))`
-/

namespace A136277.P8666335175623531622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A069010 n).toNat

end

end A136277.P8666335175623531622

namespace A136277

/-- `C(A000120(n), A069010(n))` -/
def P8666335175623531622.Spec : Prop :=
  ∀ n, (P8666335175623531622.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P16278067148546122074

`C(A000120(n), A000120(and(n, 2*n)))`
-/

namespace A136277.P16278067148546122074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A000120 (Nat.land n (2 * n))).toNat

end

end A136277.P16278067148546122074

namespace A136277

/-- `C(A000120(n), A000120(and(n, 2*n)))` -/
def P16278067148546122074.Spec : Prop :=
  ∀ n, (P16278067148546122074.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P15676109406602484665

`C(A000120(n), A000120(A048735(n)))`
-/

namespace A136277.P15676109406602484665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A000120 (A048735 n).toNat).toNat

end

end A136277.P15676109406602484665

namespace A136277

/-- `C(A000120(n), A000120(A048735(n)))` -/
def P15676109406602484665.Spec : Prop :=
  ∀ n, (P15676109406602484665.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P2487532179994957979

`C(A000120(n), A000120(A213370(n)))`
-/

namespace A136277.P2487532179994957979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A000120 (A213370 n).toNat).toNat

end

end A136277.P2487532179994957979

namespace A136277

/-- `C(A000120(n), A000120(A213370(n)))` -/
def P2487532179994957979.Spec : Prop :=
  ∀ n, (P2487532179994957979.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P17611280093425931949

`C(A000120(n), A000120(A318921(n)))`
-/

namespace A136277.P17611280093425931949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A000120 (A318921 n).toNat).toNat

end

end A136277.P17611280093425931949

namespace A136277

/-- `C(A000120(n), A000120(A318921(n)))` -/
def P17611280093425931949.Spec : Prop :=
  ∀ n, (P17611280093425931949.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P3770893163851564595

`A178244(A385889(n))`
-/

namespace A136277.P3770893163851564595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A385889 n).toNat

end

end A136277.P3770893163851564595

namespace A136277

/-- `A178244(A385889(n))` -/
def P3770893163851564595.Spec : Prop :=
  ∀ n, P3770893163851564595.a n = A136277 n

end A136277

/-! ## A136277.P2187732202653689510

`C(A000120(n), A001221(A278222(n)))`
-/

namespace A136277.P2187732202653689510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A001221 (A278222 n).toNat).toNat

end

end A136277.P2187732202653689510

namespace A136277

/-- `C(A000120(n), A001221(A278222(n)))` -/
def P2187732202653689510.Spec : Prop :=
  ∀ n, (P2187732202653689510.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P14973629122845059181

`C(A324467(n)/3, A001221(A278222(n)))`
-/

namespace A136277.P14973629122845059181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)).toNat (A001221 (A278222 n).toNat).toNat

end

end A136277.P14973629122845059181

namespace A136277

/-- `C(A324467(n)/3, A001221(A278222(n)))` -/
def P14973629122845059181.Spec : Prop :=
  ∀ n, (P14973629122845059181.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P2110689929315627318

`A107345(A010078(n+1))`
-/

namespace A136277.P2110689929315627318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 (A010078 (n + 1)).toNat

end

end A136277.P2110689929315627318

namespace A136277

/-- `A107345(A010078(n+1))` -/
def P2110689929315627318.Spec : Prop :=
  ∀ n, P2110689929315627318.a n = A136277 n

end A136277

/-! ## A136277.P8093929728318791104

`A181591(A278222(n))`
-/

namespace A136277.P8093929728318791104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A278222 n).toNat

end

end A136277.P8093929728318791104

namespace A136277

/-- `A181591(A278222(n))` -/
def P8093929728318791104.Spec : Prop :=
  ∀ n, P8093929728318791104.a n = A136277 n

end A136277

/-! ## A136277.P4272058950085786378

`A181591(A286588(n))`
-/

namespace A136277.P4272058950085786378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A286588 n).toNat

end

end A136277.P4272058950085786378

namespace A136277

/-- `A181591(A286588(n))` -/
def P4272058950085786378.Spec : Prop :=
  ∀ n, P4272058950085786378.a n = A136277 n

end A136277

/-! ## A136277.P12175429528230506375

`C(A000120(n), A001221(A005940(n+1)))`
-/

namespace A136277.P12175429528230506375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A001221 (A005940 (n + 1)).toNat).toNat

end

end A136277.P12175429528230506375

namespace A136277

/-- `C(A000120(n), A001221(A005940(n+1)))` -/
def P12175429528230506375.Spec : Prop :=
  ∀ n, (P12175429528230506375.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P13632034350421837758

`C(A324467(n)/3, A001221(A005940(n+1)))`
-/

namespace A136277.P13632034350421837758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)).toNat (A001221 (A005940 (n + 1)).toNat).toNat

end

end A136277.P13632034350421837758

namespace A136277

/-- `C(A324467(n)/3, A001221(A005940(n+1)))` -/
def P13632034350421837758.Spec : Prop :=
  ∀ n, (P13632034350421837758.a n : ℤ) = A136277 n

end A136277

/-! ## A136277.P5303317135709619804

`A181591(A332815(n))`
-/

namespace A136277.P5303317135709619804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A332815 n).toNat

end

end A136277.P5303317135709619804

namespace A136277

/-- `A181591(A332815(n))` -/
def P5303317135709619804.Spec : Prop :=
  ∀ n, P5303317135709619804.a n = A136277 n

end A136277

/-!
# A136278: Number of n X n Life configurations that are "still Life"s (unchanged in one step).

The programs for A136278, there is no canonical definition to state claims against.
-/

/-! ## A136278.P6395985267284689341

`A187185(∑[A289402(n)]²)`
-/

namespace A136278.P6395985267284689341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A136278.P6395985267284689341

/-!
# A136279: Number of n X n Life configurations that are "flip-flops" (Life cycles of period 2).

The programs for A136279, there is no canonical definition to state claims against.
-/

/-! ## A136279.P7955326752624564688

`A136280(n+1)/2`
-/

namespace A136279.P7955326752624564688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136280 (n + 1) : ℚ) / 2

end

end A136279.P7955326752624564688

/-! ## A136279.P7792212506452878373

`floor(A136280(record[A025861(n)])/2)`
-/

namespace A136279.P7792212506452878373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136280 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋

end

end A136279.P7792212506452878373

/-! ## A136279.P246515013941055313

`A014682(A136280(n+1))`
-/

namespace A136279.P246515013941055313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A136280 (n + 1)).toNat

end

end A136279.P246515013941055313

/-!
# A136280: Twice A136279.

The programs for A136280, there is no canonical definition to state claims against.
-/

/-! ## A136280.P16333733145907760864

`2*A136279(n+1)`
-/

namespace A136280.P16333733145907760864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136279 (n + 1)

end

end A136280.P16333733145907760864

/-! ## A136280.P1639214414601543511

`A136279(n+1)+A136279(A005496(n))`
-/

namespace A136280.P1639214414601543511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136279 (n + 1) + A136279 (A005496 n).toNat

end

end A136280.P1639214414601543511

/-! ## A136280.P12384052935452612216

`A136279(n+1)+A136279(A008727(n))`
-/

namespace A136280.P12384052935452612216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136279 (n + 1) + A136279 (A008727 n).toNat

end

end A136280.P12384052935452612216

/-! ## A136280.P12922571456652689752

`A136279(n+1)+A136279(A077168(n))`
-/

namespace A136280.P12922571456652689752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136279 (n + 1) + A136279 (A077168 n).toNat

end

end A136280.P12922571456652689752

/-! ## A136280.P11224715977290180814

`A136279(n+1)+A136279(A178787(n))`
-/

namespace A136280.P11224715977290180814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136279 (n + 1) + A136279 (A178787 n).toNat

end

end A136280.P11224715977290180814

/-!
# A136281: Number of graphs on n labeled nodes with degree at most 2.

The programs for A136281, there is no canonical definition to state claims against.
-/

/-! ## A136281.P12363036482469147670

`A157253(2*n)`
-/

namespace A136281.P12363036482469147670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157253 (2 * n)

end

end A136281.P12363036482469147670

/-! ## A136281.P6651500278875041266

`A136284(A028310(n))+A000085(n)`
-/

namespace A136281.P6651500278875041266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136284 (A028310 n).toNat + A000085 n

end

end A136281.P6651500278875041266

/-! ## A136281.P16479147234892953081

`A136284(A028310(n))+A099020(∑[n])`
-/

namespace A136281.P16479147234892953081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136284 (A028310 n).toNat + A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136281.P16479147234892953081

/-! ## A136281.P10866899950332852426

`A136284(A233583(n+1))+A000085(n)`
-/

namespace A136281.P10866899950332852426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136284 (A233583 (n + 1)).toNat + A000085 n

end

end A136281.P10866899950332852426

/-! ## A136281.P18322303190909098031

`A136284(A289207(n)+2)+A000085(n)`
-/

namespace A136281.P18322303190909098031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136284 (A289207 n + 2).toNat + A000085 n

end

end A136281.P18322303190909098031

/-! ## A136281.P15058993308203734682

`A136284(A233583(n+1))+A099020(∑[n])`
-/

namespace A136281.P15058993308203734682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136284 (A233583 (n + 1)).toNat + A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136281.P15058993308203734682

/-! ## A136281.P14267191971870953793

`A138177(A179865(n+1))+A136284(A028310(n))`
-/

namespace A136281.P14267191971870953793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (A179865 (n + 1)).toNat + A136284 (A028310 n).toNat

end

end A136281.P14267191971870953793

/-! ## A136281.P3433653144092293784

`A138177(A179865(n+1))+A136284(A233583(n+1))`
-/

namespace A136281.P3433653144092293784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138177 (A179865 (n + 1)).toNat + A136284 (A233583 (n + 1)).toNat

end

end A136281.P3433653144092293784

/-! ## A136281.P13807069932727992337

`A182222(∑[n])+A136284(A028310(n))`
-/

namespace A136281.P13807069932727992337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (∑ j ∈ Finset.range (n + 1), f1 j) + A136284 (A028310 n).toNat

end

end A136281.P13807069932727992337

/-! ## A136281.P4447779342459070988

`A182222(∑[n])+A136284(A233583(n+1))`
-/

namespace A136281.P4447779342459070988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (∑ j ∈ Finset.range (n + 1), f1 j) + A136284 (A233583 (n + 1)).toNat

end

end A136281.P4447779342459070988

/-!
# A136282: Number of graphs on n labeled nodes with degree at most 3.

The programs for A136282, there is no canonical definition to state claims against.
-/

/-! ## A136282.P16916295707533930520

`A136285(n+1)+A136281(n+1)`
-/

namespace A136282.P16916295707533930520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136285 (n + 1) + A136281 (n + 1)

end

end A136282.P16916295707533930520

/-! ## A136282.P17058542034141436382

`A000085(n+1)+A136285(n+1)+A136284(n+1)`
-/

namespace A136282.P17058542034141436382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) + (A136285 (n + 1) + A136284 (n + 1))

end

end A136282.P17058542034141436382

/-! ## A136282.P12665511187727880654

`A136283(n+1)-A136286(n+1)`
-/

namespace A136282.P12665511187727880654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136283 (n + 1) - A136286 (n + 1)

end

end A136282.P12665511187727880654

/-!
# A136283: Number of graphs on n labeled nodes with degree at most 4.

The programs for A136283, there is no canonical definition to state claims against.
-/

/-! ## A136283.P5868493656668259599

`A136286(n+1)+A136282(n+1)`
-/

namespace A136283.P5868493656668259599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136286 (n + 1) + A136282 (n + 1)

end

end A136283.P5868493656668259599

/-! ## A136283.P1314845903560712579

`A136281(n+1)+A136286(n+1)+A136285(n+1)`
-/

namespace A136283.P1314845903560712579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 (n + 1) + (A136286 (n + 1) + A136285 (n + 1))

end

end A136283.P1314845903560712579

/-! ## A136283.P15835854669900882546

`A136286(n+1)+A000085(n+1)+A136285(n+1)+A136284(n+1)`
-/

namespace A136283.P15835854669900882546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136286 (n + 1) + (A000085 (n + 1) + (A136285 (n + 1) + A136284 (n + 1)))

end

end A136283.P15835854669900882546

/-!
# A136284: Number of graphs on n labeled nodes with maximal degree exactly 2.

The programs for A136284, there is no canonical definition to state claims against.
-/

/-! ## A136284.P11689984772110490546

`A136281(n+1)-Δ[A245176(n)]`
-/

namespace A136284.P11689984772110490546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 (n + 1) - (f1 (n + 1) - f1 n)

end

end A136284.P11689984772110490546

/-! ## A136284.P2923635532006665798

`A136281(n+1)-A000085(n+1)`
-/

namespace A136284.P2923635532006665798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 (n + 1) - A000085 (n + 1)

end

end A136284.P2923635532006665798

/-! ## A136284.P549882056962370041

`A136281(n+1)-A099020(A179865(n+2))`
-/

namespace A136284.P549882056962370041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 (n + 1) - A099020 (A179865 (n + 2)).toNat

end

end A136284.P549882056962370041

/-! ## A136284.P9734349557151112371

`A136281(n+1)-(A245176(n)+A067897(n+1))`
-/

namespace A136284.P9734349557151112371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 (n + 1) - (A245176 n + A067897 (n + 1))

end

end A136284.P9734349557151112371

/-! ## A136284.P13310610614922251214

`A136281(n+1)+A245176(n)-A245176(n+1)`
-/

namespace A136284.P13310610614922251214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 (n + 1) + (A245176 n - A245176 (n + 1))

end

end A136284.P13310610614922251214

/-! ## A136284.P9577892195324034336

`A136282(n+1)-(A136285(n+1)+A000085(n+1))`
-/

namespace A136284.P9577892195324034336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136282 (n + 1) - (A136285 (n + 1) + A000085 (n + 1))

end

end A136284.P9577892195324034336

/-!
# A136285: Number of graphs on n labeled nodes with maximal degree exactly 3.

The programs for A136285, there is no canonical definition to state claims against.
-/

/-! ## A136285.P5703956566554558876

`A136282(n+1)-A136281(n+1)`
-/

namespace A136285.P5703956566554558876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136282 (n + 1) - A136281 (n + 1)

end

end A136285.P5703956566554558876

/-! ## A136285.P16631204606121918851

`A136282(n+1)+Δ[-∑[A136281(n)]]`
-/

namespace A136285.P16631204606121918851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136282 (n + 1) + (f1 (n + 1) - f1 n)

end

end A136285.P16631204606121918851

/-! ## A136285.P3125504717988885553

`A136282(n+1)-(A136284(n+1)+A000085(n+1))`
-/

namespace A136285.P3125504717988885553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136282 (n + 1) - (A136284 (n + 1) + A000085 (n + 1))

end

end A136285.P3125504717988885553

/-! ## A136285.P9530980198103241890

`A136283(n+1)-(A136286(n+1)+A136281(n+1))`
-/

namespace A136285.P9530980198103241890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136283 (n + 1) - (A136286 (n + 1) + A136281 (n + 1))

end

end A136285.P9530980198103241890

/-!
# A136286: Number of graphs on n labeled nodes with maximal degree exactly 4.

The programs for A136286, there is no canonical definition to state claims against.
-/

/-! ## A136286.P12375629451482202457

`A136283(n+1)-A136282(n+1)`
-/

namespace A136286.P12375629451482202457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136283 (n + 1) - A136282 (n + 1)

end

end A136286.P12375629451482202457

/-! ## A136286.P9069992300901557832

`A136283(n+1)-(A136285(n+1)+A136281(n+1))`
-/

namespace A136286.P9069992300901557832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136283 (n + 1) - (A136285 (n + 1) + A136281 (n + 1))

end

end A136286.P9069992300901557832

/-! ## A136286.P4488800576898165770

`A136283(n+1)-(A000085(n+1)+A136285(n+1)+A136284(n+1))`
-/

namespace A136286.P4488800576898165770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136283 (n + 1) - (A000085 (n + 1) + (A136285 (n + 1) + A136284 (n + 1)))

end

end A136286.P4488800576898165770

/-!
# A136288: Primes which are the absolute value of the alternating sum and difference of the first n primes.

The programs for A136288, the canonical program `A136288.P6117601976786394949` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136288 has offset 1).

The definition of A136288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136288.P6117601976786394949

`p?[A008347(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136288

/-- `p?[A008347(n)]` -/
def P6117601976786394949.Spec : Prop :=
  ∀ n, P6117601976786394949.a n = A136288 (n + 1)

theorem P6117601976786394949.correct : P6117601976786394949.Spec := by
  intro n
  simp only [A136288, Nat.add_sub_cancel]

end A136288

/-! ## A136288.P14086958401986408588

`A008347(A131694(n+1))`
-/

namespace A136288.P14086958401986408588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (A131694 (n + 1)).toNat

end

end A136288.P14086958401986408588

namespace A136288

/-- `A008347(A131694(n+1))` -/
def P14086958401986408588.Spec : Prop :=
  ∀ n, P14086958401986408588.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P14769464067966718155

`p?[A010051(2*(n+1))+∑[A001223(2*n+1)]]`
-/

namespace A136288.P14769464067966718155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P14769464067966718155

namespace A136288

/-- `p?[A010051(2*(n+1))+∑[A001223(2*n+1)]]` -/
def P14769464067966718155.Spec : Prop :=
  ∀ n, P14769464067966718155.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P15811707290296985321

`record[A006530(A008347(n+1))]`
-/

namespace A136288.P15811707290296985321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136288.P15811707290296985321

namespace A136288

/-- `record[A006530(A008347(n+1))]` -/
def P15811707290296985321.Spec : Prop :=
  ∀ n, P15811707290296985321.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P7161652619604331832

`record[A020639(A008347(n+3))]`
-/

namespace A136288.P7161652619604331832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008347 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136288.P7161652619604331832

namespace A136288

/-- `record[A020639(A008347(n+3))]` -/
def P7161652619604331832.Spec : Prop :=
  ∀ n, P7161652619604331832.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P102515202627263165

`p?[Δ[A355726(n)]]`
-/

namespace A136288.P102515202627263165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P102515202627263165

namespace A136288

/-- `p?[Δ[A355726(n)]]` -/
def P102515202627263165.Spec : Prop :=
  ∀ n, P102515202627263165.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P955700081787184727

`p?[A036467(n)-1]`
-/

namespace A136288.P955700081787184727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P955700081787184727

namespace A136288

/-- `p?[A036467(n)-1]` -/
def P955700081787184727.Spec : Prop :=
  ∀ n, P955700081787184727.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P9582969039206544536

`p?[A008578(n)-a(n-1)]` with `a(0)=1`
-/

namespace A136288.P9582969039206544536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008578 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P9582969039206544536

namespace A136288

/-- `p?[A008578(n)-a(n-1)]` -/
def P9582969039206544536.Spec : Prop :=
  ∀ n, P9582969039206544536.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P13462361298051453743

`p?[A040976(n+1)-a(n-1)]` with `a(0)=0`
-/

namespace A136288.P13462361298051453743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A040976 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P13462361298051453743

namespace A136288

/-- `p?[A040976(n+1)-a(n-1)]` -/
def P13462361298051453743.Spec : Prop :=
  ∀ n, P13462361298051453743.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P1937462092258694977

`p?[A000040(n+1)-a(n-1)]` with `a(0)=2`
-/

namespace A136288.P1937462092258694977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000040 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P1937462092258694977

namespace A136288

/-- `p?[A000040(n+1)-a(n-1)]` -/
def P1937462092258694977.Spec : Prop :=
  ∀ n, P1937462092258694977.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P6936278652080265273

`filter[A008347(n+1), A010051(#)]`
-/

namespace A136288.P6936278652080265273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A136288.P6936278652080265273

namespace A136288

/-- `filter[A008347(n+1), A010051(#)]` -/
def P6936278652080265273.Spec : Prop :=
  ∀ n, P6936278652080265273.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P12715310269913701313

`filter[A008347(n+1), A323153(#)]`
-/

namespace A136288.P12715310269913701313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A136288.P12715310269913701313

namespace A136288

/-- `filter[A008347(n+1), A323153(#)]` -/
def P12715310269913701313.Spec : Prop :=
  ∀ n, P12715310269913701313.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P13514564064924976899

`p?[A080339(2*(n+1))+∑[A001223(2*n+1)]]`
-/

namespace A136288.P13514564064924976899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P13514564064924976899

namespace A136288

/-- `p?[A080339(2*(n+1))+∑[A001223(2*n+1)]]` -/
def P13514564064924976899.Spec : Prop :=
  ∀ n, P13514564064924976899.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P17249885663643988528

`p?[record[A020639(n+2)]-a(n-1)]` with `a(0)=2`
-/

namespace A136288.P17249885663643988528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P17249885663643988528

namespace A136288

/-- `p?[record[A020639(n+2)]-a(n-1)]` -/
def P17249885663643988528.Spec : Prop :=
  ∀ n, P17249885663643988528.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P7746880512845232818

`record[A093074(∑[A054541(2*(n+1))])]`
-/

namespace A136288.P7746880512845232818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136288.P7746880512845232818

namespace A136288

/-- `record[A093074(∑[A054541(2*(n+1))])]` -/
def P7746880512845232818.Spec : Prop :=
  ∀ n, P7746880512845232818.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P11582856443787323253

`p?[A131808(p?[2*n+1])]`
-/

namespace A136288.P11582856443787323253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P11582856443787323253

namespace A136288

/-- `p?[A131808(p?[2*n+1])]` -/
def P11582856443787323253.Spec : Prop :=
  ∀ n, P11582856443787323253.a n = A136288 (n + 1)

end A136288

/-! ## A136288.P986581139318169037

`p?[A131808(A000040(n+1))]`
-/

namespace A136288.P986581139318169037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P986581139318169037

namespace A136288

/-- `p?[A131808(A000040(n+1))]` -/
def P986581139318169037.Spec : Prop :=
  ∀ n, P986581139318169037.a n = A136288 (n + 1)

end A136288

/-!
# A136289: Start with three pennies touching each other on a tabletop. In each generation, add pennies subject to the rule that a penny can be placed only when (at least) two pennies are already in position to determine its position; sequence gives number of pennies added at generation n.

The programs for A136289, the canonical program `A136289.P5685548749294884616` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136289 has offset 0).

The definition of A136289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136289.P5685548749294884616

`∑[C(gcd(3, ∑[n]), 2)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136289

/-- `∑[C(gcd(3, ∑[n]), 2)]` -/
def P5685548749294884616.Spec : Prop :=
  ∀ n, (P5685548749294884616.a n : ℤ) = A136289 n

theorem P5685548749294884616.correct : P5685548749294884616.Spec := by
  intro n
  simp only [A136289]

end A136289

/-! ## A136289.P1267805998925308780

`∑[lcm(3, 1-n%3)]`
-/

namespace A136289.P1267805998925308780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - ((n % 3 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P1267805998925308780

namespace A136289

/-- `∑[lcm(3, 1-n%3)]` -/
def P1267805998925308780.Spec : Prop :=
  ∀ n, (P1267805998925308780.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P6538801157659189340

`3*ceil(Δ[n²]/3)`
-/

namespace A136289.P6538801157659189340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌉

end

end A136289.P6538801157659189340

namespace A136289

/-- `3*ceil(Δ[n²]/3)` -/
def P6538801157659189340.Spec : Prop :=
  ∀ n, P6538801157659189340.a n = A136289 n

end A136289

/-! ## A136289.P3486469156483420713

`∑[log2(gcd(8, ∑[n]%3))]`
-/

namespace A136289.P3486469156483420713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 8 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P3486469156483420713

namespace A136289

/-- `∑[log2(gcd(8, ∑[n]%3))]` -/
def P3486469156483420713.Spec : Prop :=
  ∀ n, P3486469156483420713.a n = (A136289 n : ℝ)

end A136289

/-! ## A136289.P16763516461742119924

`∑[C(3, dr(Δ[n^3]))]`
-/

namespace A136289.P16763516461742119924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P16763516461742119924

namespace A136289

/-- `∑[C(3, dr(Δ[n^3]))]` -/
def P16763516461742119924.Spec : Prop :=
  ∀ n, (P16763516461742119924.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P15188209666604293060

`a(n-3)+6` with `a(0)=3, a(1)=3, a(2)=6`
-/

namespace A136289.P15188209666604293060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 6] fun n a =>
  a (n - 3) + 6

end

end A136289.P15188209666604293060

namespace A136289

/-- `a(n-3)+6` -/
def P15188209666604293060.Spec : Prop :=
  ∀ n, (P15188209666604293060.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P9054432609654108732

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A136289.P9054432609654108732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P9054432609654108732

namespace A136289

/-- `∑[abs(a(n-3))]` -/
def P9054432609654108732.Spec : Prop :=
  ∀ n, (P9054432609654108732.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P2971654611100558882

`∑[dr(a(n-3))]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A136289.P2971654611100558882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P2971654611100558882

namespace A136289

/-- `∑[dr(a(n-3))]` -/
def P2971654611100558882.Spec : Prop :=
  ∀ n, (P2971654611100558882.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P5307762785642326603

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=0, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A136289.P5307762785642326603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P5307762785642326603

namespace A136289

/-- `∑[floor(a(n-3))]` -/
def P5307762785642326603.Spec : Prop :=
  ∀ n, (P5307762785642326603.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P8734815144569625183

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=0, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A136289.P8734815144569625183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P8734815144569625183

namespace A136289

/-- `∑[ceil(a(n-3))]` -/
def P8734815144569625183.Spec : Prop :=
  ∀ n, (P8734815144569625183.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P5248652670388381166

`∑[round(a(n-3))]` with `a(0)=3, a(1)=0, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A136289.P5248652670388381166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P5248652670388381166

namespace A136289

/-- `∑[round(a(n-3))]` -/
def P5248652670388381166.Spec : Prop :=
  ∀ n, (P5248652670388381166.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P9759880243222277231

`∑[3*(1-n)²%3]`
-/

namespace A136289.P9759880243222277231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P9759880243222277231

namespace A136289

/-- `∑[3*(1-n)²%3]` -/
def P9759880243222277231.Spec : Prop :=
  ∀ n, P9759880243222277231.a n = A136289 n

end A136289

/-! ## A136289.P16078492316636730666

`∑[(3*(n+2)²)%9]`
-/

namespace A136289.P16078492316636730666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2) ^ 2 % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P16078492316636730666

namespace A136289

/-- `∑[(3*(n+2)²)%9]` -/
def P16078492316636730666.Spec : Prop :=
  ∀ n, (P16078492316636730666.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P495670303768409844

`∑[xor(2, ((n+1)%3)!)]`
-/

namespace A136289.P495670303768409844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.factorial ((n + 1) % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P495670303768409844

namespace A136289

/-- `∑[xor(2, ((n+1)%3)!)]` -/
def P495670303768409844.Spec : Prop :=
  ∀ n, (P495670303768409844.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P15559911175655819028

`Δ[n²]+(n+2)%3`
-/

namespace A136289.P15559911175655819028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((n + 2) % 3 : ℕ) : ℤ)

end

end A136289.P15559911175655819028

namespace A136289

/-- `Δ[n²]+(n+2)%3` -/
def P15559911175655819028.Spec : Prop :=
  ∀ n, P15559911175655819028.a n = A136289 n

end A136289

/-! ## A136289.P14916420068370520337

`∑[C(a(n-3), 2)]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A136289.P14916420068370520337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  Nat.choose (f1 (n - 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P14916420068370520337

namespace A136289

/-- `∑[C(a(n-3), 2)]` -/
def P14916420068370520337.Spec : Prop :=
  ∀ n, (P14916420068370520337.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P13392687898149508824

`∑[and(3, a(n-3))]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A136289.P13392687898149508824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136289.P13392687898149508824

namespace A136289

/-- `∑[and(3, a(n-3))]` -/
def P13392687898149508824.Spec : Prop :=
  ∀ n, (P13392687898149508824.a n : ℤ) = A136289 n

end A136289

/-! ## A136289.P5593344506858333713

`record[xor(3, 3*n)]-2*n`
-/

namespace A136289.P5593344506858333713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 * n : ℤ)

end

end A136289.P5593344506858333713

namespace A136289

/-- `record[xor(3, 3*n)]-2*n` -/
def P5593344506858333713.Spec : Prop :=
  ∀ n, P5593344506858333713.a n = A136289 n

end A136289

/-!
# A136290: a(0)=1, a(1)=3, a(2)=9, a(3)=12, a(4)=15; thereafter a(n) = a(n-1) + a(n-3) - a(n-4).

The programs for A136290, the canonical program `A136290.P8767531650031746160` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136290 has offset 0).

The definition of A136290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)-a(n-4)` (program `A136290.P8767531650031746160`, by `A136290.P8767531650031746160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136290.P8767531650031746160

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12, a(4)=15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136290

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P8767531650031746160.Spec : Prop :=
  ∀ n, P8767531650031746160.a n = A136290 n

theorem P8767531650031746160.correct : P8767531650031746160.Spec := by
  intro n
  simp only [A136290]

end A136290

/-! ## A136290.P9596090512444665014

`a(n-3)+12` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12`
-/

namespace A136290.P9596090512444665014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 12] fun n a =>
  a (n - 3) + 12

end

end A136290.P9596090512444665014

namespace A136290

/-- `a(n-3)+12` -/
def P9596090512444665014.Spec : Prop :=
  ∀ n, (P9596090512444665014.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P9562493031189815250

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A136290.P9562493031189815250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136290.P9562493031189815250

namespace A136290

/-- `∑[floor(a(n-3))]` -/
def P9562493031189815250.Spec : Prop :=
  ∀ n, (P9562493031189815250.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P7764232202005240567

`∑[gcd(6, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=3, a(4)=3`
-/

namespace A136290.P7764232202005240567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 3, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136290.P7764232202005240567

namespace A136290

/-- `∑[gcd(6, a(n-3))]` -/
def P7764232202005240567.Spec : Prop :=
  ∀ n, (P7764232202005240567.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P1583674059781154041

`∑[a(n-3)%7]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=3, a(4)=3`
-/

namespace A136290.P1583674059781154041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 3, 3] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136290.P1583674059781154041

namespace A136290

/-- `∑[a(n-3)%7]` -/
def P1583674059781154041.Spec : Prop :=
  ∀ n, (P1583674059781154041.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P1493177210290753862

`∑[gcd(6, A099838(n))]`
-/

namespace A136290.P1493177210290753862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A099838 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136290.P1493177210290753862

namespace A136290

/-- `∑[gcd(6, A099838(n))]` -/
def P1493177210290753862.Spec : Prop :=
  ∀ n, (P1493177210290753862.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P15819272965841097498

`A163804(n)+4*n`
-/

namespace A136290.P15819272965841097498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 n + (4 * n : ℤ)

end

end A136290.P15819272965841097498

namespace A136290

/-- `A163804(n)+4*n` -/
def P15819272965841097498.Spec : Prop :=
  ∀ n, P15819272965841097498.a n = A136290 n

end A136290

/-! ## A136290.P2785287456148777634

`∑[dr(A101096(n+1))]`
-/

namespace A136290.P2785287456148777634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A101096 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136290.P2785287456148777634

namespace A136290

/-- `∑[dr(A101096(n+1))]` -/
def P2785287456148777634.Spec : Prop :=
  ∀ n, (P2785287456148777634.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P3637683888121656113

`∑[dr(∑[A101095(n+1)])]`
-/

namespace A136290.P3637683888121656113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136290.P3637683888121656113

namespace A136290

/-- `∑[dr(∑[A101095(n+1)])]` -/
def P3637683888121656113.Spec : Prop :=
  ∀ n, (P3637683888121656113.a n : ℤ) = A136290 n

end A136290

/-! ## A136290.P2192719535398999646

`A008574(n)+1-(n+1)%3`
-/

namespace A136290.P2192719535398999646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (1 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A136290.P2192719535398999646

namespace A136290

/-- `A008574(n)+1-(n+1)%3` -/
def P2192719535398999646.Spec : Prop :=
  ∀ n, P2192719535398999646.a n = A136290 n

end A136290

/-! ## A136290.P7215728993603622536

`A008706(n)-A064429(n)`
-/

namespace A136290.P7215728993603622536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A064429 n

end

end A136290.P7215728993603622536

namespace A136290

/-- `A008706(n)-A064429(n)` -/
def P7215728993603622536.Spec : Prop :=
  ∀ n, P7215728993603622536.a n = A136290 n

end A136290

/-! ## A136290.P4413401966675540421

`A008574(n)-A102283(n)`
-/

namespace A136290.P4413401966675540421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A102283 n

end

end A136290.P4413401966675540421

namespace A136290

/-- `A008574(n)-A102283(n)` -/
def P4413401966675540421.Spec : Prop :=
  ∀ n, P4413401966675540421.a n = A136290 n

end A136290

/-! ## A136290.P12603256141624649974

`A298024(n)-A004396(n)`
-/

namespace A136290.P12603256141624649974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A004396 n

end

end A136290.P12603256141624649974

namespace A136290

/-- `A298024(n)-A004396(n)` -/
def P12603256141624649974.Spec : Prop :=
  ∀ n, P12603256141624649974.a n = A136290 n

end A136290

/-! ## A136290.P14800196646765821410

`A047266(n+1)+A004277(n)`
-/

namespace A136290.P14800196646765821410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1) + A004277 n

end

end A136290.P14800196646765821410

namespace A136290

/-- `A047266(n+1)+A004277(n)` -/
def P14800196646765821410.Spec : Prop :=
  ∀ n, P14800196646765821410.a n = A136290 n

end A136290

/-! ## A136290.P11961224064281898124

`2*A004277(n)-A106510(n)`
-/

namespace A136290.P11961224064281898124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004277 n - A106510 n

end

end A136290.P11961224064281898124

namespace A136290

/-- `2*A004277(n)-A106510(n)` -/
def P11961224064281898124.Spec : Prop :=
  ∀ n, P11961224064281898124.a n = A136290 n

end A136290

/-! ## A136290.P5888733400365073634

`A219529(n)-2*A004396(n)`
-/

namespace A136290.P5888733400365073634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - 2 * A004396 n

end

end A136290.P5888733400365073634

namespace A136290

/-- `A219529(n)-2*A004396(n)` -/
def P5888733400365073634.Spec : Prop :=
  ∀ n, P5888733400365073634.a n = A136290 n

end A136290

/-! ## A136290.P15214302039850129638

`2*A298024(n)-A219529(n)`
-/

namespace A136290.P15214302039850129638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298024 n - A219529 n

end

end A136290.P15214302039850129638

namespace A136290

/-- `2*A298024(n)-A219529(n)` -/
def P15214302039850129638.Spec : Prop :=
  ∀ n, P15214302039850129638.a n = A136290 n

end A136290

/-! ## A136290.P10087088538704014088

`A008458(n)-(A064429(n)+n)`
-/

namespace A136290.P10087088538704014088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A064429 n + (n : ℤ))

end

end A136290.P10087088538704014088

namespace A136290

/-- `A008458(n)-(A064429(n)+n)` -/
def P10087088538704014088.Spec : Prop :=
  ∀ n, P10087088538704014088.a n = A136290 n

end A136290

/-! ## A136290.P2353922092295161174

`A008486(n)+n-A102283(n)`
-/

namespace A136290.P2353922092295161174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ((n : ℤ) - A102283 n)

end

end A136290.P2353922092295161174

namespace A136290

/-- `A008486(n)+n-A102283(n)` -/
def P2353922092295161174.Spec : Prop :=
  ∀ n, P2353922092295161174.a n = A136290 n

end A136290

/-!
# A136292: Primes of the form a^a + b^b + c^c + d^d + e^e.

The programs for A136292, there is no canonical definition to state claims against.
-/

/-! ## A136292.P721923044503762767

`p?[A329961(A129767(n+1))]`
-/

namespace A136292.P721923044503762767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329961 (A129767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136292.P721923044503762767

/-! ## A136292.P2549411021267883321

`∩[A141639(n+1), A189934(n+1)]`
-/

namespace A136292.P2549411021267883321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136292.P2549411021267883321

/-! ## A136292.P12935017116890624860

`∩[A163422(n+1), A329961(n+1)]`
-/

namespace A136292.P12935017116890624860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136292.P12935017116890624860

/-! ## A136292.P18279030332813082012

`p?[A316767(n+1)*A329961(n+1)]`
-/

namespace A136292.P18279030332813082012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316767 (n + 1) * A329961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136292.P18279030332813082012

/-!
# A136293: Linear bound on the genera of Heegaard splittings of closed, orientable 3-manifolds that admit a generalized triangulation with n generalized tetrahedra.

The programs for A136293, the canonical program `A136293.P9085425086307939767` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136293 has offset 0).

The definition of A136293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136293.P9085425086307939767

`76*n+26`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136293

/-- `76*n+26` -/
def P9085425086307939767.Spec : Prop :=
  ∀ n, (P9085425086307939767.a n : ℤ) = A136293 n

theorem P9085425086307939767.correct : P9085425086307939767.Spec := by
  intro n
  simp only [A136293]

end A136293

/-!
# A136294: Primes of the form a^a + b^b + c^c + d^d + e^e + f^f.

The programs for A136294, there is no canonical definition to state claims against.
-/

/-! ## A136294.P8061477979502108806

`p?[A206813(2*n+5)-7]`
-/

namespace A136294.P8061477979502108806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206813 (2 * n + 5) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136294.P8061477979502108806

/-!
# A136295: Multiples of 100 which begin a span of 100 composite numbers.

The programs for A136295, there is no canonical definition to state claims against.
-/

/-! ## A136295.P5069864386539951384

`10*10*A181098(n+1)`
-/

namespace A136295.P5069864386539951384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * A181098 (n + 1))

end

end A136295.P5069864386539951384

/-!
# A136296: "Special augmented primes": primes p such that the decimal number 1p1 is divisible by p.

The programs for A136296, there is no canonical definition to state claims against.
-/

/-! ## A136296.P1805332884561758329

`record[A001271(A367583(3*n+2))]`
-/

namespace A136296.P1805332884561758329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001271 (A367583 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136296.P1805332884561758329

/-! ## A136296.P16921949820607370249

`∩[A116436(n+1), A181086(n+1)]`
-/

namespace A136296.P16921949820607370249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136296.P16921949820607370249

/-!
# A136297: a(n) = 3*a(n-1) - 3*a(n-2) + 3*a(n-3), with a(0)=1, a(1)=3, a(2)=1.

The programs for A136297, the canonical program `A136297.P4402827435123461567` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136297 has offset 0).

The definition of A136297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+3*a(n-3)` (program `A136297.P4402827435123461567`, by `A136297.P4402827435123461567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136297.P4402827435123461567

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136297

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P4402827435123461567.Spec : Prop :=
  ∀ n, P4402827435123461567.a n = A136297 n

theorem P4402827435123461567.correct : P4402827435123461567.Spec := by
  intro n
  simp only [A136297]

end A136297

/-! ## A136297.P9251272310056694024

`3*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A136297.P9251272310056694024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  3 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A136297.P9251272310056694024

namespace A136297

/-- `3*(a(n-1)+a(n-3)-a(n-2))` -/
def P9251272310056694024.Spec : Prop :=
  ∀ n, P9251272310056694024.a n = A136297 n

end A136297

/-! ## A136297.P7454782879139077278

`A140498(n)-6*A052103(n)`
-/

namespace A136297.P7454782879139077278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - 6 * A052103 n

end

end A136297.P7454782879139077278

namespace A136297

/-- `A140498(n)-6*A052103(n)` -/
def P7454782879139077278.Spec : Prop :=
  ∀ n, P7454782879139077278.a n = A136297 n

end A136297

/-! ## A136297.P410143370870214958

`A140498(n)-6*Δ[A137247(n)]`
-/

namespace A136297.P410143370870214958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - 6 * (f1 (n + 1) - f1 n)

end

end A136297.P410143370870214958

namespace A136297

/-- `A140498(n)-6*Δ[A137247(n)]` -/
def P410143370870214958.Spec : Prop :=
  ∀ n, P410143370870214958.a n = A136297 n

end A136297

/-! ## A136297.P18178416243460453407

`A140498(n)-6*Δ[A052101(n)/2]`
-/

namespace A136297.P18178416243460453407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052101 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140498 n : ℚ) - 6 * (f1 (n + 1) - f1 n)

end

end A136297.P18178416243460453407

namespace A136297

/-- `A140498(n)-6*Δ[A052101(n)/2]` -/
def P18178416243460453407.Spec : Prop :=
  ∀ n, P18178416243460453407.a n = (A136297 n : ℚ)

end A136297

/-! ## A136297.P14492829050016680261

`A140498(n)-6*(∑[A052102(n)]-A052102(n))`
-/

namespace A136297.P14492829050016680261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - 6 * (∑ j ∈ Finset.range (n + 1), f1 j - A052102 n)

end

end A136297.P14492829050016680261

namespace A136297

/-- `A140498(n)-6*(∑[A052102(n)]-A052102(n))` -/
def P14492829050016680261.Spec : Prop :=
  ∀ n, P14492829050016680261.a n = A136297 n

end A136297

/-! ## A136297.P9818140909675636103

`A140498(n)-6*(A137256(n)-A052102(n+1))`
-/

namespace A136297.P9818140909675636103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - 6 * (A137256 n - A052102 (n + 1))

end

end A136297.P9818140909675636103

namespace A136297

/-- `A140498(n)-6*(A137256(n)-A052102(n+1))` -/
def P9818140909675636103.Spec : Prop :=
  ∀ n, P9818140909675636103.a n = A136297 n

end A136297

/-! ## A136297.P6101411640211122431

`A140498(n)-6*(A137247(n+1)-A137247(n))`
-/

namespace A136297.P6101411640211122431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - 6 * (A137247 (n + 1) - A137247 n)

end

end A136297.P6101411640211122431

namespace A136297

/-- `A140498(n)-6*(A137247(n+1)-A137247(n))` -/
def P6101411640211122431.Spec : Prop :=
  ∀ n, P6101411640211122431.a n = A136297 n

end A136297

/-! ## A136297.P16716492911452299825

`A140498(n)-6*(Δ[A137256(n)]-A137256(n))`
-/

namespace A136297.P16716492911452299825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - 6 * (f1 (n + 1) - f1 n - A137256 n)

end

end A136297.P16716492911452299825

namespace A136297

/-- `A140498(n)-6*(Δ[A137256(n)]-A137256(n))` -/
def P16716492911452299825.Spec : Prop :=
  ∀ n, P16716492911452299825.a n = A136297 n

end A136297

/-!
# A136298: a(n) = 3*a(n-1) - 4*a(n-3), with a(0)=1, a(1)=2, a(2)=4, a(3)=9.

The programs for A136298, the canonical program `A136298.P9408471787013603673` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136298 has offset 0).

The definition of A136298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-3)` (program `A136298.P9408471787013603673`, by `A136298.P9408471787013603673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136298.P9408471787013603673

`3*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136298

/-- `3*a(n-1)-4*a(n-3)` -/
def P9408471787013603673.Spec : Prop :=
  ∀ n, P9408471787013603673.a n = A136298 n

theorem P9408471787013603673.correct : P9408471787013603673.Spec := by
  intro n
  simp only [A136298]

end A136298

/-! ## A136298.P16633431335495071599

`2^(n+1)-A136299(n)`
-/

namespace A136298.P16633431335495071599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A136299 n

end

end A136298.P16633431335495071599

namespace A136298

/-- `2^(n+1)-A136299(n)` -/
def P16633431335495071599.Spec : Prop :=
  ∀ n, P16633431335495071599.a n = A136298 n

end A136298

/-! ## A136298.P12793613120431613152

`A000051(n)+A000225(n)-A136299(n)`
-/

namespace A136298.P12793613120431613152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A136299 n)

end

end A136298.P12793613120431613152

namespace A136298

/-- `A000051(n)+A000225(n)-A136299(n)` -/
def P12793613120431613152.Spec : Prop :=
  ∀ n, P12793613120431613152.a n = A136298 n

end A136298

/-! ## A136298.P16717283003968163078

`A159694(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A136298.P16717283003968163078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A159694 (n - 2) - a (n - 1)

end

end A136298.P16717283003968163078

namespace A136298

/-- `A159694(n-2)-a(n-1)` -/
def P16717283003968163078.Spec : Prop :=
  ∀ n, P16717283003968163078.a n = A136298 n

end A136298

/-! ## A136298.P9653729900819821619

`(A175656(n)+A011782(n))/2`
-/

namespace A136298.P9653729900819821619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175656 n + A011782 n : ℚ) / 2

end

end A136298.P9653729900819821619

namespace A136298

/-- `(A175656(n)+A011782(n))/2` -/
def P9653729900819821619.Spec : Prop :=
  ∀ n, P9653729900819821619.a n = (A136298 n : ℚ)

end A136298

/-! ## A136298.P3374021870278378112

`A172481(n)+A139790(n)-A136299(n)`
-/

namespace A136298.P3374021870278378112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + (A139790 n - A136299 n)

end

end A136298.P3374021870278378112

namespace A136298

/-- `A172481(n)+A139790(n)-A136299(n)` -/
def P3374021870278378112.Spec : Prop :=
  ∀ n, P3374021870278378112.a n = A136298 n

end A136298

/-! ## A136298.P12453555766621226226

`Δ[A111297(n)]-a(n-1)` with `a(0)=1`
-/

namespace A136298.P12453555766621226226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A136298.P12453555766621226226

namespace A136298

/-- `Δ[A111297(n)]-a(n-1)` -/
def P12453555766621226226.Spec : Prop :=
  ∀ n, P12453555766621226226.a n = A136298 n

end A136298

/-! ## A136298.P6442304530094424273

`A139790(n)+A139756(n)`
-/

namespace A136298.P6442304530094424273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139790 n + A139756 n

end

end A136298.P6442304530094424273

namespace A136298

/-- `A139790(n)+A139756(n)` -/
def P6442304530094424273.Spec : Prop :=
  ∀ n, P6442304530094424273.a n = A136298 n

end A136298

/-! ## A136298.P12639603637386251447

`A034007(n+2)-A172481(n)`
-/

namespace A136298.P12639603637386251447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 2) - A172481 n

end

end A136298.P12639603637386251447

namespace A136298

/-- `A034007(n+2)-A172481(n)` -/
def P12639603637386251447.Spec : Prop :=
  ∀ n, P12639603637386251447.a n = A136298 n

end A136298

/-! ## A136298.P16135918108717608482

`A045623(n)-A140960(n)/2`
-/

namespace A136298.P16135918108717608482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045623 n : ℚ) - (A140960 n : ℚ) / 2

end

end A136298.P16135918108717608482

namespace A136298

/-- `A045623(n)-A140960(n)/2` -/
def P16135918108717608482.Spec : Prop :=
  ∀ n, P16135918108717608482.a n = (A136298 n : ℚ)

end A136298

/-! ## A136298.P3974693831480144197

`A172481(n+1)-A045891(n+1)`
-/

namespace A136298.P3974693831480144197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (n + 1) - A045891 (n + 1)

end

end A136298.P3974693831480144197

namespace A136298

/-- `A172481(n+1)-A045891(n+1)` -/
def P3974693831480144197.Spec : Prop :=
  ∀ n, P3974693831480144197.a n = A136298 n

end A136298

/-! ## A136298.P9931632162656483065

`A084858(n)-A113861(n+1)`
-/

namespace A136298.P9931632162656483065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n - A113861 (n + 1)

end

end A136298.P9931632162656483065

namespace A136298

/-- `A084858(n)-A113861(n+1)` -/
def P9931632162656483065.Spec : Prop :=
  ∀ n, P9931632162656483065.a n = A136298 n

end A136298

/-! ## A136298.P6251980645409764356

`A098156(n+1)-A045883(n+1)`
-/

namespace A136298.P6251980645409764356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 (n + 1) - A045883 (n + 1)

end

end A136298.P6251980645409764356

namespace A136298

/-- `A098156(n+1)-A045883(n+1)` -/
def P6251980645409764356.Spec : Prop :=
  ∀ n, P6251980645409764356.a n = A136298 n

end A136298

/-! ## A136298.P13053306036359890857

`A127984(n+1)+A045623(n)-A001792(n)`
-/

namespace A136298.P13053306036359890857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1) + (A045623 n - A001792 n)

end

end A136298.P13053306036359890857

namespace A136298

/-- `A127984(n+1)+A045623(n)-A001792(n)` -/
def P13053306036359890857.Spec : Prop :=
  ∀ n, P13053306036359890857.a n = A136298 n

end A136298

/-! ## A136298.P2420771956482305967

`A172481(n+1)+A045623(n)-A045623(n+1)`
-/

namespace A136298.P2420771956482305967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (n + 1) + (A045623 n - A045623 (n + 1))

end

end A136298.P2420771956482305967

namespace A136298

/-- `A172481(n+1)+A045623(n)-A045623(n+1)` -/
def P2420771956482305967.Spec : Prop :=
  ∀ n, P2420771956482305967.a n = A136298 n

end A136298

/-! ## A136298.P11138370788890356011

`A001792(n+1)-(A136299(n)+A001787(n+1))`
-/

namespace A136298.P11138370788890356011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - (A136299 n + A001787 (n + 1))

end

end A136298.P11138370788890356011

namespace A136298

/-- `A001792(n+1)-(A136299(n)+A001787(n+1))` -/
def P11138370788890356011.Spec : Prop :=
  ∀ n, P11138370788890356011.a n = A136298 n

end A136298

/-!
# A136299: a(n) = 3*a(n-1) - 4*a(n-3), with a(0)=1, a(1)=2, a(2)=4, a(3)=7.

The programs for A136299, the canonical program `A136299.P10708239343404160645` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136299 has offset 0).

The definition of A136299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-3)` (program `A136299.P10708239343404160645`, by `A136299.P10708239343404160645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136299.P10708239343404160645

`3*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A136299

/-- `3*a(n-1)-4*a(n-3)` -/
def P10708239343404160645.Spec : Prop :=
  ∀ n, P10708239343404160645.a n = A136299 n

theorem P10708239343404160645.correct : P10708239343404160645.Spec := by
  intro n
  simp only [A136299]

end A136299

/-! ## A136299.P15932809942911189561

`2^(n+1)-A136298(n)`
-/

namespace A136299.P15932809942911189561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A136298 n

end

end A136299.P15932809942911189561

namespace A136299

/-- `2^(n+1)-A136298(n)` -/
def P15932809942911189561.Spec : Prop :=
  ∀ n, P15932809942911189561.a n = A136299 n

end A136299

/-! ## A136299.P3667510838233926355

`A000051(n)+A000225(n)-A136298(n)`
-/

namespace A136299.P3667510838233926355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A136298 n)

end

end A136299.P3667510838233926355

namespace A136299

/-- `A000051(n)+A000225(n)-A136298(n)` -/
def P3667510838233926355.Spec : Prop :=
  ∀ n, P3667510838233926355.a n = A136299 n

end A136299

/-! ## A136299.P11759234528682714390

`A139790(n)+A172481(n)-A136298(n)`
-/

namespace A136299.P11759234528682714390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139790 n + (A172481 n - A136298 n)

end

end A136299.P11759234528682714390

namespace A136299

/-- `A139790(n)+A172481(n)-A136298(n)` -/
def P11759234528682714390.Spec : Prop :=
  ∀ n, P11759234528682714390.a n = A136299 n

end A136299

/-! ## A136299.P6388896646289357529

`A172481(n)-A139756(n)`
-/

namespace A136299.P6388896646289357529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A139756 n

end

end A136299.P6388896646289357529

namespace A136299

/-- `A172481(n)-A139756(n)` -/
def P6388896646289357529.Spec : Prop :=
  ∀ n, P6388896646289357529.a n = A136299 n

end A136299

/-! ## A136299.P11253175239672982412

`A172481(n)-∑[A049610(n)]`
-/

namespace A136299.P11253175239672982412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136299.P11253175239672982412

namespace A136299

/-- `A172481(n)-∑[A049610(n)]` -/
def P11253175239672982412.Spec : Prop :=
  ∀ n, P11253175239672982412.a n = A136299 n

end A136299

/-! ## A136299.P15403049462944162078

`A045891(n+1)-A045883(n)`
-/

namespace A136299.P15403049462944162078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) - A045883 n

end

end A136299.P15403049462944162078

namespace A136299

/-- `A045891(n+1)-A045883(n)` -/
def P15403049462944162078.Spec : Prop :=
  ∀ n, P15403049462944162078.a n = A136299 n

end A136299

/-! ## A136299.P3227693231571041585

`A136298(n+1)-A045623(n)`
-/

namespace A136299.P3227693231571041585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 1) - A045623 n

end

end A136299.P3227693231571041585

namespace A136299

/-- `A136298(n+1)-A045623(n)` -/
def P3227693231571041585.Spec : Prop :=
  ∀ n, P3227693231571041585.a n = A136299 n

end A136299

/-! ## A136299.P17378330912862498622

`A172481(A000007(n)+n)-A097067(n)`
-/

namespace A136299.P17378330912862498622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (A000007 n + (n : ℤ)).toNat - A097067 n

end

end A136299.P17378330912862498622

namespace A136299

/-- `A172481(A000007(n)+n)-A097067(n)` -/
def P17378330912862498622.Spec : Prop :=
  ∀ n, P17378330912862498622.a n = A136299 n

end A136299

/-! ## A136299.P2344500834260618791

`A172481(xor(n, A000007(n)))-A097067(n)`
-/

namespace A136299.P2344500834260618791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (Int.xor (n : ℤ) (A000007 n)).toNat - A097067 n

end

end A136299.P2344500834260618791

namespace A136299

/-- `A172481(xor(n, A000007(n)))-A097067(n)` -/
def P2344500834260618791.Spec : Prop :=
  ∀ n, P2344500834260618791.a n = A136299 n

end A136299

/-! ## A136299.P6572301036562889803

`A127984(n+2)-(A045623(n)+A001792(n))`
-/

namespace A136299.P6572301036562889803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 2) - (A045623 n + A001792 n)

end

end A136299.P6572301036562889803

namespace A136299

/-- `A127984(n+2)-(A045623(n)+A001792(n))` -/
def P6572301036562889803.Spec : Prop :=
  ∀ n, P6572301036562889803.a n = A136299 n

end A136299

/-! ## A136299.P3549291089215463412

`A001787(n+1)+A045891(n+1)-A113861(n+2)`
-/

namespace A136299.P3549291089215463412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A045891 (n + 1) - A113861 (n + 2))

end

end A136299.P3549291089215463412

namespace A136299

/-- `A001787(n+1)+A045891(n+1)-A113861(n+2)` -/
def P3549291089215463412.Spec : Prop :=
  ∀ n, P3549291089215463412.a n = A136299 n

end A136299

