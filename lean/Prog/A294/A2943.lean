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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A294300: Sum of the fifth powers of the parts in the partitions of n into two distinct parts.

The programs for A294300, the canonical program `A294300.P14670512732261319189` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294300 has offset 1).

The definition of A294300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294300.P14670512732261319189

`∑{#}[floor((n+1)/2)-(n+2)%2-1, (#+1)^5+(n+1-(#+1))^5]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294300

/-- `∑{#}[floor((n+1)/2)-(n+2)%2-1, (#+1)^5+(n+1-(#+1))^5]` -/
def P14670512732261319189.Spec : Prop :=
  ∀ n, P14670512732261319189.a n = A294300 (n + 1)

theorem P14670512732261319189.correct : P14670512732261319189.Spec := by
  intro n
  simp only [A294300, Nat.add_sub_cancel]

end A294300

/-! ## A294300.P13627915974501025542

`A000539(n)-Δ[A000539(floor(n/2))]`
-/

namespace A294300.P13627915974501025542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - (f1 (n + 1) - f1 n)

end

end A294300.P13627915974501025542

namespace A294300

/-- `A000539(n)-Δ[A000539(floor(n/2))]` -/
def P13627915974501025542.Spec : Prop :=
  ∀ n, P13627915974501025542.a n = A294300 (n + 1)

end A294300

/-! ## A294300.P14615246576863173625

`A000539(n)-A000584(∑[n]%(n+1))`
-/

namespace A294300.P14615246576863173625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - A000584 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A294300.P14615246576863173625

namespace A294300

/-- `A000539(n)-A000584(∑[n]%(n+1))` -/
def P14615246576863173625.Spec : Prop :=
  ∀ n, P14615246576863173625.a n = A294300 (n + 1)

end A294300

/-! ## A294300.P17354623945857937459

`A000539(n)-A000584(∑[A001057(n)])`
-/

namespace A294300.P17354623945857937459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - A000584 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294300.P17354623945857937459

namespace A294300

/-- `A000539(n)-A000584(∑[A001057(n)])` -/
def P17354623945857937459.Spec : Prop :=
  ∀ n, P17354623945857937459.a n = A294300 (n + 1)

end A294300

/-! ## A294300.P891804760637315830

`∑[A000584(n)]-A000584(A142150(n+1))`
-/

namespace A294300.P891804760637315830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000584 (A142150 (n + 1)).toNat

end

end A294300.P891804760637315830

namespace A294300

/-- `∑[A000584(n)]-A000584(A142150(n+1))` -/
def P891804760637315830.Spec : Prop :=
  ∀ n, P891804760637315830.a n = A294300 (n + 1)

end A294300

/-!
# A294301: Sum of the sixth powers of the parts in the partitions of n into two distinct parts.

The programs for A294301, the canonical program `A294301.P10322654210703401876` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294301 has offset 1).

The definition of A294301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294301.P10322654210703401876

`∑{#}[floor(n/2)-1, (#+1)^6+(n+1-(#+1))^6]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294301

/-- `∑{#}[floor(n/2)-1, (#+1)^6+(n+1-(#+1))^6]` -/
def P10322654210703401876.Spec : Prop :=
  ∀ n, P10322654210703401876.a n = A294301 (n + 1)

theorem P10322654210703401876.correct : P10322654210703401876.Spec := by
  intro n
  simp only [A294301, Nat.add_sub_cancel]

end A294301

/-! ## A294301.P12374898961323151880

`A259109(n)-A294273(n+1)`
-/

namespace A294301.P12374898961323151880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n - A294273 (n + 1)

end

end A294301.P12374898961323151880

namespace A294301

/-- `A259109(n)-A294273(n+1)` -/
def P12374898961323151880.Spec : Prop :=
  ∀ n, P12374898961323151880.a n = A294301 (n + 1)

end A294301

/-! ## A294301.P18391963615511516346

`A000540(n)-A001014(∑[n]%(n+1))`
-/

namespace A294301.P18391963615511516346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n - A001014 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A294301.P18391963615511516346

namespace A294301

/-- `A000540(n)-A001014(∑[n]%(n+1))` -/
def P18391963615511516346.Spec : Prop :=
  ∀ n, P18391963615511516346.a n = A294301 (n + 1)

end A294301

/-! ## A294301.P12189913193570354968

`∑[A001014(n)]-A001014(∑[n+1]%(n+1))`
-/

namespace A294301.P12189913193570354968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001014 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

end

end A294301.P12189913193570354968

namespace A294301

/-- `∑[A001014(n)]-A001014(∑[n+1]%(n+1))` -/
def P12189913193570354968.Spec : Prop :=
  ∀ n, P12189913193570354968.a n = A294301 (n + 1)

end A294301

/-! ## A294301.P6623820773788223191

`A000540(n)-A001014(∑[A001057(n)])`
-/

namespace A294301.P6623820773788223191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n - A001014 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294301.P6623820773788223191

namespace A294301

/-- `A000540(n)-A001014(∑[A001057(n)])` -/
def P6623820773788223191.Spec : Prop :=
  ∀ n, P6623820773788223191.a n = A294301 (n + 1)

end A294301

/-! ## A294301.P15685343334157073185

`A000540(n)-Δ[A000540(A004526(n))]`
-/

namespace A294301.P15685343334157073185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n - (f1 (n + 1) - f1 n)

end

end A294301.P15685343334157073185

namespace A294301

/-- `A000540(n)-Δ[A000540(A004526(n))]` -/
def P15685343334157073185.Spec : Prop :=
  ∀ n, P15685343334157073185.a n = A294301 (n + 1)

end A294301

/-!
# A294302: Sum of the seventh powers of the parts in the partitions of n into two distinct parts.

The programs for A294302, the canonical program `A294302.P6165144660212511827` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294302 has offset 1).

The definition of A294302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294302.P6165144660212511827

`∑{#}[floor(n/2)-1, (#+1)^7+(n+1-(#+1))^7]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294302

/-- `∑{#}[floor(n/2)-1, (#+1)^7+(n+1-(#+1))^7]` -/
def P6165144660212511827.Spec : Prop :=
  ∀ n, P6165144660212511827.a n = A294302 (n + 1)

theorem P6165144660212511827.correct : P6165144660212511827.Spec := by
  intro n
  simp only [A294302, Nat.add_sub_cancel]

end A294302

/-! ## A294302.P921645264619134672

`2*A000541(n)-A294274(n+1)`
-/

namespace A294302.P921645264619134672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000541 n - A294274 (n + 1)

end

end A294302.P921645264619134672

namespace A294302

/-- `2*A000541(n)-A294274(n+1)` -/
def P921645264619134672.Spec : Prop :=
  ∀ n, P921645264619134672.a n = A294302 (n + 1)

end A294302

/-! ## A294302.P5387580248099631500

`∑[2*A001015(n)]-A294274(n+1)`
-/

namespace A294302.P5387580248099631500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294274 (n + 1)

end

end A294302.P5387580248099631500

namespace A294302

/-- `∑[2*A001015(n)]-A294274(n+1)` -/
def P5387580248099631500.Spec : Prop :=
  ∀ n, P5387580248099631500.a n = A294302 (n + 1)

end A294302

/-! ## A294302.P13951849393354977934

`A000541(n)-A001015(∑[n]%(n+1))`
-/

namespace A294302.P13951849393354977934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n - A001015 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A294302.P13951849393354977934

namespace A294302

/-- `A000541(n)-A001015(∑[n]%(n+1))` -/
def P13951849393354977934.Spec : Prop :=
  ∀ n, P13951849393354977934.a n = A294302 (n + 1)

end A294302

/-! ## A294302.P2905701737149220528

`A000541(n)-A001015(∑[A001057(n)])`
-/

namespace A294302.P2905701737149220528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n - A001015 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294302.P2905701737149220528

namespace A294302

/-- `A000541(n)-A001015(∑[A001057(n)])` -/
def P2905701737149220528.Spec : Prop :=
  ∀ n, P2905701737149220528.a n = A294302 (n + 1)

end A294302

/-! ## A294302.P11585210066108824033

`A000541(n)+∑[A001015(n)]-A294274(n+1)`
-/

namespace A294302.P11585210066108824033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n + (∑ j ∈ Finset.range (n + 1), f1 j - A294274 (n + 1))

end

end A294302.P11585210066108824033

namespace A294302

/-- `A000541(n)+∑[A001015(n)]-A294274(n+1)` -/
def P11585210066108824033.Spec : Prop :=
  ∀ n, P11585210066108824033.a n = A294302 (n + 1)

end A294302

/-! ## A294302.P13411847531566385181

`A000541(n)-Δ[A000541(A004526(n))]`
-/

namespace A294302.P13411847531566385181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n - (f1 (n + 1) - f1 n)

end

end A294302.P13411847531566385181

namespace A294302

/-- `A000541(n)-Δ[A000541(A004526(n))]` -/
def P13411847531566385181.Spec : Prop :=
  ∀ n, P13411847531566385181.a n = A294302 (n + 1)

end A294302

/-!
# A294303: Sum of the eighth powers of the parts in the partitions of n into two distinct parts.

The programs for A294303, the canonical program `A294303.P17619062874785272742` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294303 has offset 1).

The definition of A294303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294303.P17619062874785272742

`∑{#}[floor(n/2)-1, (#+1)^8+(n+1-(#+1))^8]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294303

/-- `∑{#}[floor(n/2)-1, (#+1)^8+(n+1-(#+1))^8]` -/
def P17619062874785272742.Spec : Prop :=
  ∀ n, P17619062874785272742.a n = A294303 (n + 1)

theorem P17619062874785272742.correct : P17619062874785272742.Spec := by
  intro n
  simp only [A294303, Nat.add_sub_cancel]

end A294303

/-! ## A294303.P18417890988148803670

`2*A000542(n)-A294275(n+1)`
-/

namespace A294303.P18417890988148803670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000542 n - A294275 (n + 1)

end

end A294303.P18417890988148803670

namespace A294303

/-- `2*A000542(n)-A294275(n+1)` -/
def P18417890988148803670.Spec : Prop :=
  ∀ n, P18417890988148803670.a n = A294303 (n + 1)

end A294303

/-! ## A294303.P1900839625376991239

`A000542(n)-A001016(∑[n]%(n+1))`
-/

namespace A294303.P1900839625376991239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n - A001016 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A294303.P1900839625376991239

namespace A294303

/-- `A000542(n)-A001016(∑[n]%(n+1))` -/
def P1900839625376991239.Spec : Prop :=
  ∀ n, P1900839625376991239.a n = A294303 (n + 1)

end A294303

/-! ## A294303.P5371906416276201836

`A000542(n)-Δ[A000542(A004526(n))]`
-/

namespace A294303.P5371906416276201836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n - (f1 (n + 1) - f1 n)

end

end A294303.P5371906416276201836

namespace A294303

/-- `A000542(n)-Δ[A000542(A004526(n))]` -/
def P5371906416276201836.Spec : Prop :=
  ∀ n, P5371906416276201836.a n = A294303 (n + 1)

end A294303

/-!
# A294304: Sum of the ninth powers of the parts of the partitions of n into two distinct parts.

The programs for A294304, the canonical program `A294304.P2327040312494637169` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294304 has offset 1).

The definition of A294304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294304.P2327040312494637169

`∑{#}[floor(n/2)-1, (#+1)^9+(n+1-(#+1))^9]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294304

/-- `∑{#}[floor(n/2)-1, (#+1)^9+(n+1-(#+1))^9]` -/
def P2327040312494637169.Spec : Prop :=
  ∀ n, P2327040312494637169.a n = A294304 (n + 1)

theorem P2327040312494637169.correct : P2327040312494637169.Spec := by
  intro n
  simp only [A294304, Nat.add_sub_cancel]

end A294304

/-! ## A294304.P10188443853695734833

`∑[2*n^9]-A294276(n+1)`
-/

namespace A294304.P10188443853695734833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294276 (n + 1)

end

end A294304.P10188443853695734833

namespace A294304

/-- `∑[2*n^9]-A294276(n+1)` -/
def P10188443853695734833.Spec : Prop :=
  ∀ n, P10188443853695734833.a n = A294304 (n + 1)

end A294304

/-! ## A294304.P16934540812613128214

`A007487(n)-Δ[A007487(A004526(n))]`
-/

namespace A294304.P16934540812613128214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 n - (f1 (n + 1) - f1 n)

end

end A294304.P16934540812613128214

namespace A294304

/-- `A007487(n)-Δ[A007487(A004526(n))]` -/
def P16934540812613128214.Spec : Prop :=
  ∀ n, P16934540812613128214.a n = A294304 (n + 1)

end A294304

/-!
# A294305: Sum of the tenth powers of the parts in the partitions of n into two distinct parts.

The programs for A294305, the canonical program `A294305.P13669275452443966576` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294305 has offset 1).

The definition of A294305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294305.P13669275452443966576

`∑{#}[floor(n/2)-1, (#+1)^10+(n+1-(#+1))^10]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294305

/-- `∑{#}[floor(n/2)-1, (#+1)^10+(n+1-(#+1))^10]` -/
def P13669275452443966576.Spec : Prop :=
  ∀ n, P13669275452443966576.a n = A294305 (n + 1)

theorem P13669275452443966576.correct : P13669275452443966576.Spec := by
  intro n
  simp only [A294305, Nat.add_sub_cancel]

end A294305

/-!
# A294306: Irregular triangle read by rows: T(n, m) = total number of times the different values appear in row n of A280269, where 0 <= m <= A280274(n).

The programs for A294306, there is no canonical definition to state claims against.
-/

/-! ## A294306.P10743550167477326865

`A326786(A146289(n+1)^A008736(n))`
-/

namespace A294306.P10743550167477326865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (SequenceMachineLib.roundAway ((A146289 (n + 1) : ℚ) ^ (A008736 n : ℤ))).toNat

end

end A294306.P10743550167477326865

/-! ## A294306.P764660052118835712

`A001221(C(A207982(n+1), A146289(n+1)))`
-/

namespace A294306.P764660052118835712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A207982 (n + 1)).toNat (A146289 (n + 1)).toNat)

end

end A294306.P764660052118835712

/-! ## A294306.P17238637020535831264

`A256989(xor(A054811(n+1), A159081(n+1)))`
-/

namespace A294306.P17238637020535831264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256989 (Int.xor (A054811 (n + 1)) (A159081 (n + 1))).toNat

end

end A294306.P17238637020535831264

/-! ## A294306.P3979331067910324233

`or(A137893(A078370(2*(n+1))), A146289(n+1))`
-/

namespace A294306.P3979331067910324233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137893 (A078370 (2 * (n + 1))).toNat) (A146289 (n + 1))

end

end A294306.P3979331067910324233

/-! ## A294306.P18085114915746562152

`or(A146289(n+1), A341973(A142515(2*(n+2))))`
-/

namespace A294306.P18085114915746562152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146289 (n + 1)) (A341973 (A142515 (2 * (n + 2))).toNat)

end

end A294306.P18085114915746562152

/-!
# A294307: Positive integers m with m^k - 1 (k = 1,...,13) all practical.

The programs for A294307, there is no canonical definition to state claims against.
-/

/-! ## A294307.P1619679371020073293

`A346129(record[A127400(n+6)])²`
-/

namespace A294307.P1619679371020073293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127400 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A294307.P1619679371020073293

/-!
# A294308: Integers with precisely seven partitions into sums of four squares of nonnegative numbers.

The programs for A294308, there is no canonical definition to state claims against.
-/

/-! ## A294308.P18389377147682309183

`eq[7, A002635(n)]`
-/

namespace A294308.P18389377147682309183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294308.P18389377147682309183

/-! ## A294308.P15539571592786361277

`eq[7, A025428(n)+A000164(n)]`
-/

namespace A294308.P15539571592786361277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294308.P15539571592786361277

/-! ## A294308.P14196403306812929335

`eq[A025429(n)+7, A000174(n)]`
-/

namespace A294308.P14196403306812929335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294308.P14196403306812929335

/-! ## A294308.P7008565366768649905

`eq[6, A233583(A000174(n)-A025429(n))]`
-/

namespace A294308.P7008565366768649905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294308.P7008565366768649905

/-! ## A294308.P6325510161855179054

`A028310(eq[7, A000174(n)-A025429(n)])`
-/

namespace A294308.P6325510161855179054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - A025429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294308.P6325510161855179054

/-! ## A294308.P2467148860096057198

`eq[7, A000161(n)+A025428(n)+A025427(n)]`
-/

namespace A294308.P2467148860096057198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025428 n + A025427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294308.P2467148860096057198

/-! ## A294308.P2956733825342989724

`eq[7, A000177(n)-(A025430(n)+A025429(n))]`
-/

namespace A294308.P2956733825342989724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - (A025430 n + A025429 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294308.P2956733825342989724

/-!
# A294309: Integers with precisely eight partitions into sums of four squares of nonnegative numbers.

The programs for A294309, there is no canonical definition to state claims against.
-/

/-! ## A294309.P4542589257344502823

`eq[8, A002635(n)]`
-/

namespace A294309.P4542589257344502823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294309.P4542589257344502823

/-! ## A294309.P15626310168611617237

`eq[8, A025428(n)+A000164(n)]`
-/

namespace A294309.P15626310168611617237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294309.P15626310168611617237

/-! ## A294309.P26541867838809169

`eq[A025429(n)+8, A000174(n)]`
-/

namespace A294309.P26541867838809169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294309.P26541867838809169

/-! ## A294309.P7234364945995284966

`eq[6, A171651(A000174(n)-A025429(n))]`
-/

namespace A294309.P7234364945995284966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171651 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294309.P7234364945995284966

/-! ## A294309.P4003246823530127205

`eq[15, A000203(A000174(n)-A025429(n))]`
-/

namespace A294309.P4003246823530127205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294309.P4003246823530127205

/-!
# A294310: Integers with precisely nine partitions into sums of four squares of nonnegative numbers.

The programs for A294310, there is no canonical definition to state claims against.
-/

/-! ## A294310.P12682019436814743275

`eq[9, A002635(n)]`
-/

namespace A294310.P12682019436814743275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294310.P12682019436814743275

/-! ## A294310.P9840456969260936312

`eq[9, A025428(n)+A000164(n)]`
-/

namespace A294310.P9840456969260936312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294310.P9840456969260936312

/-! ## A294310.P4969399008646208708

`eq[A025429(n)+9, A000174(n)]`
-/

namespace A294310.P4969399008646208708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294310.P4969399008646208708

/-! ## A294310.P5420976646971767858

`eq[7, A005940(A000174(n)-A025429(n))]`
-/

namespace A294310.P5420976646971767858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294310.P5420976646971767858

/-! ## A294310.P6735379403659685818

`eq[7, A054582(A000174(n)-A025429(n))]`
-/

namespace A294310.P6735379403659685818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294310.P6735379403659685818

/-!
# A294311: Integers with precisely ten partitions into sums of four squares of nonnegative numbers.

The programs for A294311, there is no canonical definition to state claims against.
-/

/-! ## A294311.P11229031900129489060

`eq[10, A002635(n)]`
-/

namespace A294311.P11229031900129489060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294311.P11229031900129489060

/-! ## A294311.P9046226258596364569

`eq[10, A025428(n)+A000164(n)]`
-/

namespace A294311.P9046226258596364569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294311.P9046226258596364569

/-! ## A294311.P5696582823819330155

`eq[A025429(n)+10, A000174(n)]`
-/

namespace A294311.P5696582823819330155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294311.P5696582823819330155

/-! ## A294311.P7511669139968686248

`eq[10, A005940(A000174(n)-A025429(n))]`
-/

namespace A294311.P7511669139968686248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294311.P7511669139968686248

/-! ## A294311.P592861003193317836

`A028310(eq[10, A000174(n)-A025429(n)])`
-/

namespace A294311.P592861003193317836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - A025429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294311.P592861003193317836

/-! ## A294311.P17528220547189156903

`eq[10, A000161(n)+A025428(n)+A025427(n)]`
-/

namespace A294311.P17528220547189156903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025428 n + A025427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294311.P17528220547189156903

/-!
# A294312: Expansion of e.g.f. sec(x*exp(x)).

The programs for A294312, there is no canonical definition to state claims against.
-/

/-! ## A294312.P13495189208385195466

`or(4, A212598((a(n-1)+2)*a(n-1)+1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A294312.P13495189208385195466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Int.lor 4 (A212598 ((a (n - 1) + 2) * a (n - 1) + 1).toNat)

end

end A294312.P13495189208385195466

/-! ## A294312.P18289005057745695000

`A268820(A287745(∑[n]))`
-/

namespace A294312.P18289005057745695000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A287745 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294312.P18289005057745695000

/-!
# A294315: a(n) = 3*n^3 + n^2.

The programs for A294315, the canonical program `A294315.P3866111110080714343` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294315 has offset 0).

The definition of A294315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+n²` (program `A294315.P3866111110080714343`, by `A294315.P3866111110080714343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294315.P3866111110080714343

`3*n^3+n²`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294315

/-- `3*n^3+n²` -/
def P3866111110080714343.Spec : Prop :=
  ∀ n, (P3866111110080714343.a n : ℤ) = A294315 n

theorem P3866111110080714343.correct : P3866111110080714343.Spec := by
  intro n
  simp only [A294315]

end A294315

/-! ## A294315.P4624538030451661412

`ogf((4x+12x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A294315.P4624538030451661412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 12, 2] [1, -4, 6, -4, 1] n

end

end A294315.P4624538030451661412

namespace A294315

/-- `ogf((4x+12x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P4624538030451661412.Spec : Prop :=
  ∀ n, P4624538030451661412.a n = A294315 n

end A294315

/-! ## A294315.P16003383351816261424

`A085409(n)/3`
-/

namespace A294315.P16003383351816261424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085409 n : ℚ) / 3

end

end A294315.P16003383351816261424

namespace A294315

/-- `A085409(n)/3` -/
def P16003383351816261424.Spec : Prop :=
  ∀ n, P16003383351816261424.a n = (A294315 n : ℚ)

theorem P16003383351816261424.correct : P16003383351816261424.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P16003383351816261424.a, A294315.P3866111110080714343.a, A085409, A085409.P4278820891763862298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P1472306748832985993

`A087887(n)/6`
-/

namespace A294315.P1472306748832985993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087887 n : ℚ) / 6

end

end A294315.P1472306748832985993

namespace A294315

/-- `A087887(n)/6` -/
def P1472306748832985993.Spec : Prop :=
  ∀ n, P1472306748832985993.a n = (A294315 n : ℚ)

theorem P1472306748832985993.correct : P1472306748832985993.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P1472306748832985993.a, A294315.P3866111110080714343.a, A087887, A087887.P10011487220671445220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P6708165669777106034

`A000290(n)*A016777(n)`
-/

namespace A294315.P6708165669777106034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A016777 n

end

end A294315.P6708165669777106034

namespace A294315

/-- `A000290(n)*A016777(n)` -/
def P6708165669777106034.Spec : Prop :=
  ∀ n, P6708165669777106034.a n = A294315 n

theorem P6708165669777106034.correct : P6708165669777106034.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P6708165669777106034.a, A294315.P3866111110080714343.a, A000290, A000290.P12206242496348924484.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P14242604252246473398

`lcm(3*n+1, n²)`
-/

namespace A294315.P14242604252246473398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 * n + 1) (n ^ 2)

end

end A294315.P14242604252246473398

namespace A294315

/-- `lcm(3*n+1, n²)` -/
def P14242604252246473398.Spec : Prop :=
  ∀ n, (P14242604252246473398.a n : ℤ) = A294315 n

end A294315

/-! ## A294315.P15018570154887823501

`n*∑[a(n-1)+6]` with `a(0)=0, a(1)=4`
-/

namespace A294315.P15018570154887823501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294315.P15018570154887823501

namespace A294315

/-- `n*∑[a(n-1)+6]` -/
def P15018570154887823501.Spec : Prop :=
  ∀ n, (P15018570154887823501.a n : ℤ) = A294315 n

end A294315

/-! ## A294315.P9389979647420707597

`2*C(3*n+1, 2)*2*n/6`
-/

namespace A294315.P9389979647420707597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (3 * n + 1) 2 * (2 * n) : ℚ) / 6

end

end A294315.P9389979647420707597

namespace A294315

/-- `2*C(3*n+1, 2)*2*n/6` -/
def P9389979647420707597.Spec : Prop :=
  ∀ n, P9389979647420707597.a n = (A294315 n : ℚ)

theorem P9389979647420707597.correct : P9389979647420707597.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P9389979647420707597.a, A294315.P3866111110080714343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P14767293373582500721

`n*A049451(n)`
-/

namespace A294315.P14767293373582500721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049451 n

end

end A294315.P14767293373582500721

namespace A294315

/-- `n*A049451(n)` -/
def P14767293373582500721.Spec : Prop :=
  ∀ n, P14767293373582500721.a n = A294315 n

theorem P14767293373582500721.correct : P14767293373582500721.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P14767293373582500721.a, A294315.P3866111110080714343.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P293856267396363165

`n²*A016777(n)`
-/

namespace A294315.P293856267396363165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A016777 n

end

end A294315.P293856267396363165

namespace A294315

/-- `n²*A016777(n)` -/
def P293856267396363165.Spec : Prop :=
  ∀ n, P293856267396363165.a n = A294315 n

theorem P293856267396363165.correct : P293856267396363165.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P293856267396363165.a, A294315.P3866111110080714343.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P17396230535974211155

`2*(A007586(n)+n)`
-/

namespace A294315.P17396230535974211155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007586 n + (n : ℤ))

end

end A294315.P17396230535974211155

namespace A294315

/-- `2*(A007586(n)+n)` -/
def P17396230535974211155.Spec : Prop :=
  ∀ n, P17396230535974211155.a n = A294315 n

end A294315

/-! ## A294315.P17654725294275291780

`n*(A056108(n)-1)`
-/

namespace A294315.P17654725294275291780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056108 n - 1)

end

end A294315.P17654725294275291780

namespace A294315

/-- `n*(A056108(n)-1)` -/
def P17654725294275291780.Spec : Prop :=
  ∀ n, P17654725294275291780.a n = A294315 n

theorem P17654725294275291780.correct : P17654725294275291780.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P17654725294275291780.a, A294315.P3866111110080714343.a, A056108, A056108.P17425937018567532737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P13128549416349939480

`2*n*A005449(n)`
-/

namespace A294315.P13128549416349939480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A005449 n)

end

end A294315.P13128549416349939480

namespace A294315

/-- `2*n*A005449(n)` -/
def P13128549416349939480.Spec : Prop :=
  ∀ n, P13128549416349939480.a n = A294315 n

end A294315

/-! ## A294315.P12814114272574491234

`n*(A295089(n)-3)`
-/

namespace A294315.P12814114272574491234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A295089 n - 3)

end

end A294315.P12814114272574491234

namespace A294315

/-- `n*(A295089(n)-3)` -/
def P12814114272574491234.Spec : Prop :=
  ∀ n, P12814114272574491234.a n = A294315 n

theorem P12814114272574491234.correct : P12814114272574491234.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P12814114272574491234.a, A294315.P3866111110080714343.a, A295089, A295089.P4252073232684347397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P18018039018965596572

`n/2*A033580(n)`
-/

namespace A294315.P18018039018965596572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A033580 n : ℚ)

end

end A294315.P18018039018965596572

namespace A294315

/-- `n/2*A033580(n)` -/
def P18018039018965596572.Spec : Prop :=
  ∀ n, P18018039018965596572.a n = (A294315 n : ℚ)

theorem P18018039018965596572.correct : P18018039018965596572.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P18018039018965596572.a, A294315.P3866111110080714343.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P5885037422954571367

`n/3*A045945(n)`
-/

namespace A294315.P5885037422954571367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A045945 n : ℚ)

end

end A294315.P5885037422954571367

namespace A294315

/-- `n/3*A045945(n)` -/
def P5885037422954571367.Spec : Prop :=
  ∀ n, P5885037422954571367.a n = (A294315 n : ℚ)

theorem P5885037422954571367.correct : P5885037422954571367.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P5885037422954571367.a, A294315.P3866111110080714343.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P15746220606307906192

`n*(A033428(n)+n)`
-/

namespace A294315.P15746220606307906192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033428 n + (n : ℤ))

end

end A294315.P15746220606307906192

namespace A294315

/-- `n*(A033428(n)+n)` -/
def P15746220606307906192.Spec : Prop :=
  ∀ n, P15746220606307906192.a n = A294315 n

theorem P15746220606307906192.correct : P15746220606307906192.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P15746220606307906192.a, A294315.P3866111110080714343.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P17601805236329463210

`n*(A045944(n)-n)`
-/

namespace A294315.P17601805236329463210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A045944 n - (n : ℤ))

end

end A294315.P17601805236329463210

namespace A294315

/-- `n*(A045944(n)-n)` -/
def P17601805236329463210.Spec : Prop :=
  ∀ n, P17601805236329463210.a n = A294315 n

theorem P17601805236329463210.correct : P17601805236329463210.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P17601805236329463210.a, A294315.P3866111110080714343.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-! ## A294315.P13694409725512132984

`A016779(n)%A033591(n)`
-/

namespace A294315.P13694409725512132984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016779 n) (A033591 n)

end

end A294315.P13694409725512132984

namespace A294315

/-- `A016779(n)%A033591(n)` -/
def P13694409725512132984.Spec : Prop :=
  ∀ n, P13694409725512132984.a n = A294315 n

end A294315

/-! ## A294315.P2424195651006803253

`n*Δ[A045991(n)]`
-/

namespace A294315.P2424195651006803253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A294315.P2424195651006803253

namespace A294315

/-- `n*Δ[A045991(n)]` -/
def P2424195651006803253.Spec : Prop :=
  ∀ n, P2424195651006803253.a n = A294315 n

theorem P2424195651006803253.correct : P2424195651006803253.Spec := by
  intro n
  simp only [A294315, Nat.add_sub_cancel, A294315.P2424195651006803253.f1, A294315.P2424195651006803253.a, A294315.P3866111110080714343.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294315

/-!
# A294317: Triangle read by rows: T(n, k) = 2*n-k, k <= n.

The programs for A294317, the canonical program `A294317.P6597418737474744620` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294317 has offset 0).

The definition of A294317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*row(n)-col(n)` (program `A294317.P6597418737474744620`, by `A294317.P6597418737474744620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294317.P6597418737474744620

`2*row(n)-col(n)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294317

/-- `2*row(n)-col(n)` -/
def P6597418737474744620.Spec : Prop :=
  ∀ n, P6597418737474744620.a n = A294317 n

theorem P6597418737474744620.correct : P6597418737474744620.Spec := by
  intro n
  simp only [A294317]

end A294317

/-! ## A294317.P16104315673882142918

`∑[abs(T(n-1,k))]-col(n)` with `a(0)=0, a(1)=2`
-/

namespace A294317.P16104315673882142918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A294317.P16104315673882142918

namespace A294317

/-- `∑[abs(T(n-1,k))]-col(n)` -/
def P16104315673882142918.Spec : Prop :=
  ∀ n, P16104315673882142918.a n = A294317 n

end A294317

/-! ## A294317.P17786372097602920363

`row(n)-col(n)+row(n)`
-/

namespace A294317.P17786372097602920363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ)

end

end A294317.P17786372097602920363

namespace A294317

/-- `row(n)-col(n)+row(n)` -/
def P17786372097602920363.Spec : Prop :=
  ∀ n, P17786372097602920363.a n = A294317 n

theorem P17786372097602920363.correct : P17786372097602920363.Spec := by
  intro n
  simp only [A294317, Nat.add_sub_cancel, A294317.P17786372097602920363.a, A294317.P6597418737474744620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A294317

/-! ## A294317.P11296643344891139877

`(C(∑[char[∑[n]]]+2, 2)+1)%(n+3)-1`
-/

namespace A294317.P11296643344891139877
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 + 1) % (n + 3) : ℕ) : ℤ) - 1

end

end A294317.P11296643344891139877

namespace A294317

/-- `(C(∑[char[∑[n]]]+2, 2)+1)%(n+3)-1` -/
def P11296643344891139877.Spec : Prop :=
  ∀ n, P11296643344891139877.a n = A294317 n

end A294317

/-! ## A294317.P2744769966898458439

`C(∑[char[∑[n]]]+2, 2)-(n+2)-((-1)^n)²`
-/

namespace A294317.P2744769966898458439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℤ) - (n + 2 : ℤ) - ((-1) ^ n) ^ 2

end

end A294317.P2744769966898458439

namespace A294317

/-- `C(∑[char[∑[n]]]+2, 2)-(n+2)-((-1)^n)²` -/
def P2744769966898458439.Spec : Prop :=
  ∀ n, P2744769966898458439.a n = A294317 n

end A294317

/-! ## A294317.P17233938748475632914

`floor(log2(A130329(n)))`
-/

namespace A294317.P17233938748475632914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130329 n).toNat

end

end A294317.P17233938748475632914

namespace A294317

/-- `floor(log2(A130329(n)))` -/
def P17233938748475632914.Spec : Prop :=
  ∀ n, (P17233938748475632914.a n : ℤ) = A294317 n

end A294317

/-! ## A294317.P12504463466195048187

`A128076(n+1)-1`
-/

namespace A294317.P12504463466195048187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) - 1

end

end A294317.P12504463466195048187

namespace A294317

/-- `A128076(n+1)-1` -/
def P12504463466195048187.Spec : Prop :=
  ∀ n, P12504463466195048187.a n = A294317 n

theorem P12504463466195048187.correct : P12504463466195048187.Spec := by
  intro n
  simp only [A294317, Nat.add_sub_cancel, A294317.P12504463466195048187.a, A294317.P6597418737474744620.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294317

/-! ## A294317.P7933815181216910800

`A377809(n+1)-(n+2)`
-/

namespace A294317.P7933815181216910800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - (n + 2 : ℤ)

end

end A294317.P7933815181216910800

namespace A294317

/-- `A377809(n+1)-(n+2)` -/
def P7933815181216910800.Spec : Prop :=
  ∀ n, P7933815181216910800.a n = A294317 n

end A294317

/-! ## A294317.P6462188943797381954

`A025581(n)+∑[char[∑[n+1]]]`
-/

namespace A294317.P6462188943797381954
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A294317.P6462188943797381954

namespace A294317

/-- `A025581(n)+∑[char[∑[n+1]]]` -/
def P6462188943797381954.Spec : Prop :=
  ∀ n, P6462188943797381954.a n = A294317 n

end A294317

/-! ## A294317.P13843394886290431283

`A055998(∑[char[∑[n+1]]])-n`
-/

namespace A294317.P13843394886290431283
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A294317.P13843394886290431283

namespace A294317

/-- `A055998(∑[char[∑[n+1]]])-n` -/
def P13843394886290431283.Spec : Prop :=
  ∀ n, P13843394886290431283.a n = A294317 n

end A294317

/-! ## A294317.P8647193434445280393

`A000096(∑[char[∑[n]]])-(n+2)`
-/

namespace A294317.P8647193434445280393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 2 : ℤ)

end

end A294317.P8647193434445280393

namespace A294317

/-- `A000096(∑[char[∑[n]]])-(n+2)` -/
def P8647193434445280393.Spec : Prop :=
  ∀ n, P8647193434445280393.a n = A294317 n

end A294317

/-! ## A294317.P7076979181010544376

`A217575(n+1)-2*(n+1)`
-/

namespace A294317.P7076979181010544376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - (2 * (n + 1) : ℤ)

end

end A294317.P7076979181010544376

namespace A294317

/-- `A217575(n+1)-2*(n+1)` -/
def P7076979181010544376.Spec : Prop :=
  ∀ n, P7076979181010544376.a n = A294317 n

end A294317

/-! ## A294317.P9660655855423517928

`A063657(n+1)-(2*n+3)`
-/

namespace A294317.P9660655855423517928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - (2 * n + 3 : ℤ)

end

end A294317.P9660655855423517928

namespace A294317

/-- `A063657(n+1)-(2*n+3)` -/
def P9660655855423517928.Spec : Prop :=
  ∀ n, P9660655855423517928.a n = A294317 n

end A294317

/-! ## A294317.P8074382438682271738

`A114327(n)+A051162(n)`
-/

namespace A294317.P8074382438682271738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + A051162 n

end

end A294317.P8074382438682271738

namespace A294317

/-- `A114327(n)+A051162(n)` -/
def P8074382438682271738.Spec : Prop :=
  ∀ n, P8074382438682271738.a n = A294317 n

theorem P8074382438682271738.correct : P8074382438682271738.Spec := by
  intro n
  simp only [A294317, Nat.add_sub_cancel, A294317.P8074382438682271738.a, A294317.P6597418737474744620.a, A051162, A051162.P4484969187050632534.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294317

/-! ## A294317.P9425077772487685819

`A279891(n)-A002262(n)`
-/

namespace A294317.P9425077772487685819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n - A002262 n

end

end A294317.P9425077772487685819

namespace A294317

/-- `A279891(n)-A002262(n)` -/
def P9425077772487685819.Spec : Prop :=
  ∀ n, P9425077772487685819.a n = A294317 n

theorem P9425077772487685819.correct : P9425077772487685819.Spec := by
  intro n
  simp only [A294317, Nat.add_sub_cancel, A294317.P9425077772487685819.a, A294317.P6597418737474744620.a, A002262, A002262.P17823619022233514403.a, A279891, A279891.P11915647867805557395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294317

/-! ## A294317.P17058983288857303036

`A003056(n)+log2(A130321(n))`
-/

namespace A294317.P17058983288857303036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℝ) + Real.logb 2 (A130321 n : ℝ)

end

end A294317.P17058983288857303036

namespace A294317

/-- `A003056(n)+log2(A130321(n))` -/
def P17058983288857303036.Spec : Prop :=
  ∀ n, P17058983288857303036.a n = (A294317 n : ℝ)

end A294317

/-! ## A294317.P4158996144076129034

`A094727(A038722(n+1))-1`
-/

namespace A294317.P4158996144076129034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A038722 (n + 1)).toNat - 1

end

end A294317.P4158996144076129034

namespace A294317

/-- `A094727(A038722(n+1))-1` -/
def P4158996144076129034.Spec : Prop :=
  ∀ n, P4158996144076129034.a n = A294317 n

end A294317

/-! ## A294317.P147043254460353837

`A094727(A061579(n)+1)-1`
-/

namespace A294317.P147043254460353837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A061579 n + 1).toNat - 1

end

end A294317.P147043254460353837

namespace A294317

/-- `A094727(A061579(n)+1)-1` -/
def P147043254460353837.Spec : Prop :=
  ∀ n, P147043254460353837.a n = A294317 n

end A294317

/-! ## A294317.P6083252454940642620

`A002262(n)+A099375(n)-1`
-/

namespace A294317.P6083252454940642620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A099375 n - 1)

end

end A294317.P6083252454940642620

namespace A294317

/-- `A002262(n)+A099375(n)-1` -/
def P6083252454940642620.Spec : Prop :=
  ∀ n, P6083252454940642620.a n = A294317 n

end A294317

/-! ## A294317.P1038208043794195323

`A131413(n)-A002024(n+1)`
-/

namespace A294317.P1038208043794195323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A002024 (n + 1)

end

end A294317.P1038208043794195323

namespace A294317

/-- `A131413(n)-A002024(n+1)` -/
def P1038208043794195323.Spec : Prop :=
  ∀ n, P1038208043794195323.a n = A294317 n

end A294317

/-!
# A294318: a(n) = Product_{k=0..n} (3*k + 1)!.

The programs for A294318, there is no canonical definition to state claims against.
-/

/-! ## A294318.P13279943900853068946

`∏[(3*n+1)!]`
-/

namespace A294318.P13279943900853068946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294318.P13279943900853068946

/-! ## A294318.P3835708966118444202

`∏[record[Δ[n*ceil(n/2)]!]]`
-/

namespace A294318.P3835708966118444202
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f3 (n + 1) - f3 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294318.P3835708966118444202

/-! ## A294318.P2124155359643773702

`(3*n+1)!*a(n-1)` with `a(0)=1`
-/

namespace A294318.P2124155359643773702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (3 * n + 1) * a (n - 1)

end

end A294318.P2124155359643773702

/-! ## A294318.P11234953181537170437

`∏[A100089(n)]`
-/

namespace A294318.P11234953181537170437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294318.P11234953181537170437

/-! ## A294318.P10581486521108075420

`∏[A185896(∑[9*n])]`
-/

namespace A294318.P10581486521108075420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185896 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294318.P10581486521108075420

/-!
# A294319: a(n) = Product_{k=0..n} (3*k + 2)!.

The programs for A294319, there is no canonical definition to state claims against.
-/

/-! ## A294319.P8243092394951923431

`∏[(3*n+2)!]`
-/

namespace A294319.P8243092394951923431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294319.P8243092394951923431

/-! ## A294319.P1698480972438661341

`(3*n+2)!*a(n-1)` with `a(0)=2`
-/

namespace A294319.P1698480972438661341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial (3 * n + 2) * a (n - 1)

end

end A294319.P1698480972438661341

/-! ## A294319.P3354542548700118146

`∏[A100043(n+1)]`
-/

namespace A294319.P3354542548700118146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294319.P3354542548700118146

/-! ## A294319.P3126052974743894930

`∏[record[A004483(n)!]]`
-/

namespace A294319.P3126052974743894930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004483 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294319.P3126052974743894930

/-!
# A294320: a(n) = Product_{k=0..n} (4*k + 1)!.

The programs for A294320, there is no canonical definition to state claims against.
-/

/-! ## A294320.P11736898001440093318

`∏[(4*n+1)!]`
-/

namespace A294320.P11736898001440093318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294320.P11736898001440093318

/-! ## A294320.P7741110760023300721

`∏[record[(lcm(2, n+1)-1)!]]`
-/

namespace A294320.P7741110760023300721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.lcm 2 (n + 1) : ℤ) - 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294320.P7741110760023300721

/-!
# A294321: a(n) = Product_{k=0..n} (4*k + 2)!.

The programs for A294321, there is no canonical definition to state claims against.
-/

/-! ## A294321.P15754204241929103355

`∏[(4*n+2)!]`
-/

namespace A294321.P15754204241929103355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294321.P15754204241929103355

/-! ## A294321.P15169355830067528551

`(4*n+2)!*a(n-1)` with `a(0)=2`
-/

namespace A294321.P15169355830067528551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial (4 * n + 2) * a (n - 1)

end

end A294321.P15169355830067528551

/-!
# A294322: a(n) = Product_{k=0..n} (4*k + 3)!.

The programs for A294322, there is no canonical definition to state claims against.
-/

/-! ## A294322.P3296631000071785942

`∏[record[xor(3, n)!]]`
-/

namespace A294322.P3296631000071785942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 3 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294322.P3296631000071785942

/-! ## A294322.P6525625230170889605

`∏[(4*n+3)!]`
-/

namespace A294322.P6525625230170889605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294322.P6525625230170889605

/-! ## A294322.P12790152441785282405

`∏[record[A004444(n)!]]`
-/

namespace A294322.P12790152441785282405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004444 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294322.P12790152441785282405

/-!
# A294323: a(n) = Product_{k=0..n} (5*k + 1)!.

The programs for A294323, there is no canonical definition to state claims against.
-/

/-! ## A294323.P17006908736094883432

`∏[(5*n+1)!]`
-/

namespace A294323.P17006908736094883432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294323.P17006908736094883432

/-!
# A294324: a(n) = Product_{k=0..n} (5*k + 2)!.

The programs for A294324, there is no canonical definition to state claims against.
-/

/-! ## A294324.P10727131370127669777

`∏[(5*n+2)!]`
-/

namespace A294324.P10727131370127669777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294324.P10727131370127669777

/-!
# A294325: a(n) = Product_{k=0..n} (5*k + 3)!.

The programs for A294325, there is no canonical definition to state claims against.
-/

/-! ## A294325.P3050366634633364991

`∏[(5*n+3)!]`
-/

namespace A294325.P3050366634633364991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294325.P3050366634633364991

/-!
# A294326: a(n) = Product_{k=0..n} (5*k + 4)!.

The programs for A294326, there is no canonical definition to state claims against.
-/

/-! ## A294326.P15683235980082125516

`∏[(5*n+4)!]`
-/

namespace A294326.P15683235980082125516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294326.P15683235980082125516

/-!
# A294327: a(n) = ((9*n + 8)*10^n - 8)/9.

The programs for A294327, the canonical program `A294327.P10054156691128495151` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294327 has offset 0).

The definition of A294327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294327.P12457778807700735367

`9*A294328(n)`
-/

namespace A294327.P12457778807700735367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A294328 n

end

end A294327.P12457778807700735367

namespace A294327

/-- `9*A294328(n)` -/
def P12457778807700735367.Spec : Prop :=
  ∀ n, P12457778807700735367.a n = A294327 n

end A294327

/-! ## A294327.P10693576656471250787

`9/8*A294329(n)`
-/

namespace A294327.P10693576656471250787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 8 * (A294329 n : ℚ)

end

end A294327.P10693576656471250787

namespace A294327

/-- `9/8*A294329(n)` -/
def P10693576656471250787.Spec : Prop :=
  ∀ n, P10693576656471250787.a n = (A294327 n : ℚ)

end A294327

/-! ## A294327.P10054156691128495151

`A126431(n)+A002282(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A294327

/-- `A126431(n)+A002282(n)` -/
def P10054156691128495151.Spec : Prop :=
  ∀ n, P10054156691128495151.a n = A294327 n

theorem P10054156691128495151.correct : P10054156691128495151.Spec := by
  intro n
  simp only [A294327]

end A294327

/-! ## A294327.P17409468195154538219

`ogf((18x-90x^2)/(1-21x+120x^2-100x^3))`
-/

namespace A294327.P17409468195154538219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 18, -90] [1, -21, 120, -100] n

end

end A294327.P17409468195154538219

namespace A294327

/-- `ogf((18x-90x^2)/(1-21x+120x^2-100x^3))` -/
def P17409468195154538219.Spec : Prop :=
  ∀ n, P17409468195154538219.a n = A294327 n

end A294327

/-! ## A294327.P4024462152660403607

`((9*n+8)*10^n-8)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294327.P4024462152660403607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * n + 8) * 10 ^ n : ℤ) - 8 : ℚ) / 9

end

end A294327.P4024462152660403607

namespace A294327

/-- `((9*n+8)*10^n-8)/9` -/
def P4024462152660403607.Spec : Prop :=
  ∀ n, P4024462152660403607.a n = (A294327 n : ℚ)

end A294327

/-! ## A294327.P957985439194057734

`21*a(n-1)-120*a(n-2)+100*a(n-3)` with `a(0)=0, a(1)=18, a(2)=288`
-/

namespace A294327.P957985439194057734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18, 288] fun n a =>
  21 * a (n - 1) - 120 * a (n - 2) + 100 * a (n - 3)

end

end A294327.P957985439194057734

namespace A294327

/-- `21*a(n-1)-120*a(n-2)+100*a(n-3)` -/
def P957985439194057734.Spec : Prop :=
  ∀ n, P957985439194057734.a n = A294327 n

end A294327

/-! ## A294327.P4086507375837730747

`or(1, 10^n)+10*a(n-1)+7` with `a(0)=0`
-/

namespace A294327.P4086507375837730747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (10 ^ n) + (10 * a (n - 1) + 7)

end

end A294327.P4086507375837730747

namespace A294327

/-- `or(1, 10^n)+10*a(n-1)+7` -/
def P4086507375837730747.Spec : Prop :=
  ∀ n, (P4086507375837730747.a n : ℤ) = A294327 n

end A294327

/-! ## A294327.P12521425718038074883

`xor(9, 10*a(n-1)+1)+10^n` with `a(0)=0`
-/

namespace A294327.P12521425718038074883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 9 (10 * a (n - 1) + 1) + 10 ^ n

end

end A294327.P12521425718038074883

namespace A294327

/-- `xor(9, 10*a(n-1)+1)+10^n` -/
def P12521425718038074883.Spec : Prop :=
  ∀ n, (P12521425718038074883.a n : ℤ) = A294327 n

end A294327

/-! ## A294327.P3775934215117610215

`record[9*A081541(n+1)]`
-/

namespace A294327.P3775934215117610215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A081541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294327.P3775934215117610215

namespace A294327

/-- `record[9*A081541(n+1)]` -/
def P3775934215117610215.Spec : Prop :=
  ∀ n, P3775934215117610215.a n = A294327 n

end A294327

/-! ## A294327.P6693873689177553014

`A033713(n+1)+10^n-1`
-/

namespace A294327.P6693873689177553014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033713 (n + 1) + ((10 ^ n : ℤ) - 1)

end

end A294327.P6693873689177553014

namespace A294327

/-- `A033713(n+1)+10^n-1` -/
def P6693873689177553014.Spec : Prop :=
  ∀ n, P6693873689177553014.a n = A294327 n

end A294327

/-!
# A294328: a(n) = ((9*n + 8)*10^n - 8)/81.

The programs for A294328, the canonical program `A294328.P762889561776323783` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294328 has offset 0).

The definition of A294328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9*n+8)*10^n-8)/81` (program `A294328.P16164967973850144941`, by `A294328.P16164967973850144941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294328.P3333426697484918182

`ogf((2x-10x^2)/(1-21x+120x^2-100x^3))`
-/

namespace A294328.P3333426697484918182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -10] [1, -21, 120, -100] n

end

end A294328.P3333426697484918182

namespace A294328

/-- `ogf((2x-10x^2)/(1-21x+120x^2-100x^3))` -/
def P3333426697484918182.Spec : Prop :=
  ∀ n, P3333426697484918182.a n = A294328 n

end A294328

/-! ## A294328.P762889561776323783

`21*a(n-1)-120*a(n-2)+100*a(n-3)` with `a(0)=0, a(1)=2, a(2)=32`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294328

/-- `21*a(n-1)-120*a(n-2)+100*a(n-3)` -/
def P762889561776323783.Spec : Prop :=
  ∀ n, P762889561776323783.a n = A294328 n

theorem P762889561776323783.correct : P762889561776323783.Spec := by
  intro n
  simp only [A294328]

end A294328

/-! ## A294328.P14341770340298611085

`1/8*A294329(n)`
-/

namespace A294328.P14341770340298611085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A294329 n : ℚ)

end

end A294328.P14341770340298611085

namespace A294328

/-- `1/8*A294329(n)` -/
def P14341770340298611085.Spec : Prop :=
  ∀ n, P14341770340298611085.a n = (A294328 n : ℚ)

theorem P14341770340298611085.correct : P14341770340298611085.Spec := by
  intro n
  simp only [A294328, Nat.add_sub_cancel, A294328.P14341770340298611085.a, A294328.P762889561776323783.a, A294329, A294329.P3098759154680546285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294328

/-! ## A294328.P14820372547681711777

`1/9*A294327(n)`
-/

namespace A294328.P14820372547681711777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (A294327 n : ℚ)

end

end A294328.P14820372547681711777

namespace A294328

/-- `1/9*A294327(n)` -/
def P14820372547681711777.Spec : Prop :=
  ∀ n, P14820372547681711777.a n = (A294328 n : ℚ)

end A294328

/-! ## A294328.P16164967973850144941

`((9*n+8)*10^n-8)/81`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294328.P16164967973850144941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * n + 8) * 10 ^ n : ℤ) - 8 : ℚ) / 81

end

end A294328.P16164967973850144941

namespace A294328

/-- `((9*n+8)*10^n-8)/81` -/
def P16164967973850144941.Spec : Prop :=
  ∀ n, P16164967973850144941.a n = (A294328 n : ℚ)

theorem P16164967973850144941.correct : P16164967973850144941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A294328, Nat.add_sub_cancel, A294328.P16164967973850144941.a, A294328.P762889561776323783.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A294328, Nat.add_sub_cancel, A294328.P16164967973850144941.a, A294328.P762889561776323783.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A294328

/-! ## A294328.P12932412974331801385

`or(1, 10*a(n-1))+∑[10^n]%(10^n)` with `a(0)=0`
-/

namespace A294328.P12932412974331801385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (10 * a (n - 1)) + (∑ j ∈ Finset.range (n + 1), f1 j) % 10 ^ n

end

end A294328.P12932412974331801385

namespace A294328

/-- `or(1, 10*a(n-1))+∑[10^n]%(10^n)` -/
def P12932412974331801385.Spec : Prop :=
  ∀ n, (P12932412974331801385.a n : ℤ) = A294328 n

end A294328

/-! ## A294328.P9953781147231902599

`A081541(∑[n]+1)`
-/

namespace A294328.P9953781147231902599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A294328.P9953781147231902599

namespace A294328

/-- `A081541(∑[n]+1)` -/
def P9953781147231902599.Spec : Prop :=
  ∀ n, P9953781147231902599.a n = A294328 n

end A294328

/-! ## A294328.P9056437976284667504

`record[A081541(n+1)]`
-/

namespace A294328.P9056437976284667504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294328.P9056437976284667504

namespace A294328

/-- `record[A081541(n+1)]` -/
def P9056437976284667504.Spec : Prop :=
  ∀ n, P9056437976284667504.a n = A294328 n

end A294328

/-!
# A294329: a(n) = 8*((9*n + 8)*10^n - 8)/81.

The programs for A294329, the canonical program `A294329.P3098759154680546285` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294329 has offset 0).

The definition of A294329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294329.P11709338191554799927

`ogf((16x-80x^2)/(1-21x+120x^2-100x^3))`
-/

namespace A294329.P11709338191554799927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16, -80] [1, -21, 120, -100] n

end

end A294329.P11709338191554799927

namespace A294329

/-- `ogf((16x-80x^2)/(1-21x+120x^2-100x^3))` -/
def P11709338191554799927.Spec : Prop :=
  ∀ n, P11709338191554799927.a n = A294329 n

end A294329

/-! ## A294329.P3098759154680546285

`8*A294328(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A294329

/-- `8*A294328(n)` -/
def P3098759154680546285.Spec : Prop :=
  ∀ n, P3098759154680546285.a n = A294329 n

theorem P3098759154680546285.correct : P3098759154680546285.Spec := by
  intro n
  simp only [A294329]

end A294329

/-! ## A294329.P8916200652491018735

`8/9*A294327(n)`
-/

namespace A294329.P8916200652491018735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 9 * (A294327 n : ℚ)

end

end A294329.P8916200652491018735

namespace A294329

/-- `8/9*A294327(n)` -/
def P8916200652491018735.Spec : Prop :=
  ∀ n, P8916200652491018735.a n = (A294329 n : ℚ)

end A294329

/-! ## A294329.P16347002942754419355

`21*a(n-1)-120*a(n-2)+100*a(n-3)` with `a(0)=0, a(1)=16, a(2)=256`
-/

namespace A294329.P16347002942754419355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 256] fun n a =>
  21 * a (n - 1) - 120 * a (n - 2) + 100 * a (n - 3)

end

end A294329.P16347002942754419355

namespace A294329

/-- `21*a(n-1)-120*a(n-2)+100*a(n-3)` -/
def P16347002942754419355.Spec : Prop :=
  ∀ n, P16347002942754419355.a n = A294329 n

end A294329

/-! ## A294329.P10012392311759906179

`8*((9*n+8)*10^n-8)/81`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294329.P10012392311759906179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * (((9 * n + 8) * 10 ^ n : ℤ) - 8) : ℚ) / 81

end

end A294329.P10012392311759906179

namespace A294329

/-- `8*((9*n+8)*10^n-8)/81` -/
def P10012392311759906179.Spec : Prop :=
  ∀ n, P10012392311759906179.a n = (A294329 n : ℚ)

end A294329

/-! ## A294329.P17570601600144355597

`∑[floor(8*10^(n-1))]+10*a(n-1)+8` with `a(0)=0`
-/

namespace A294329.P17570601600144355597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (10 * a (n - 1) + 8)

end

end A294329.P17570601600144355597

namespace A294329

/-- `∑[floor(8*10^(n-1))]+10*a(n-1)+8` -/
def P17570601600144355597.Spec : Prop :=
  ∀ n, P17570601600144355597.a n = A294329 n

end A294329

/-! ## A294329.P15743759016098255919

`record[8*A081541(n+1)]`
-/

namespace A294329.P15743759016098255919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A081541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294329.P15743759016098255919

namespace A294329

/-- `record[8*A081541(n+1)]` -/
def P15743759016098255919.Spec : Prop :=
  ∀ n, P15743759016098255919.a n = A294329 n

end A294329

/-! ## A294329.P8679229324672910865

`∑[(n+1)*A346178(n)]-1`
-/

namespace A294329.P8679229324672910865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A346178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294329.P8679229324672910865

namespace A294329

/-- `∑[(n+1)*A346178(n)]-1` -/
def P8679229324672910865.Spec : Prop :=
  ∀ n, P8679229324672910865.a n = A294329 n

end A294329

/-! ## A294329.P16222931772675045374

`A002282(n)+or(8, 10*a(n-1))` with `a(0)=0`
-/

namespace A294329.P16222931772675045374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002282 n + Int.lor 8 (10 * a (n - 1))

end

end A294329.P16222931772675045374

namespace A294329

/-- `A002282(n)+or(8, 10*a(n-1))` -/
def P16222931772675045374.Spec : Prop :=
  ∀ n, P16222931772675045374.a n = A294329 n

end A294329

/-! ## A294329.P8969452053271615098

`A059482(n)+xor(7, 10*a(n-1))` with `a(0)=0`
-/

namespace A294329.P8969452053271615098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059482 n + Int.xor 7 (10 * a (n - 1))

end

end A294329.P8969452053271615098

namespace A294329

/-- `A059482(n)+xor(7, 10*a(n-1))` -/
def P8969452053271615098.Spec : Prop :=
  ∀ n, P8969452053271615098.a n = A294329 n

end A294329

/-!
# A294330: E.g.f. A(x) satisfies: Product_{n>=1} (1 - (-A(x))^n) = exp(x).

The programs for A294330, there is no canonical definition to state claims against.
-/

/-! ## A294330.P6720308669879815489

`abs(A180563(n+1))`
-/

namespace A294330.P6720308669879815489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A180563 (n + 1)|

end

end A294330.P6720308669879815489

/-! ## A294330.P11101112925135569684

`A033999(n)*A180563(n+1)`
-/

namespace A294330.P11101112925135569684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A180563 (n + 1)

end

end A294330.P11101112925135569684

/-! ## A294330.P10221386083036253062

`gcd(A108036(∑[n]), A180563(n+1))`
-/

namespace A294330.P10221386083036253062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108036 (∑ j ∈ Finset.range (n + 1), f1 j)) (A180563 (n + 1))

end

end A294330.P10221386083036253062

/-! ## A294330.P4301701966516266845

`A010815(A000326(n))*A180563(n+1)`
-/

namespace A294330.P4301701966516266845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A180563 (n + 1)

end

end A294330.P4301701966516266845

/-! ## A294330.P6313563787239918541

`lcm(A001065(A020483(n)), A180563(n+1))`
-/

namespace A294330.P6313563787239918541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001065 (A020483 n).toNat) (A180563 (n + 1))

end

end A294330.P6313563787239918541

/-! ## A294330.P1401222015486040879

`A180563(n+1)/A010815(A000326(n)+n)`
-/

namespace A294330.P1401222015486040879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180563 (n + 1) : ℚ) / (A010815 (A000326 n + (n : ℤ)).toNat : ℚ)

end

end A294330.P1401222015486040879

/-!
# A294331: G.f.: exp( Sum_{n>=1} A294330(n) * x^n / n ).

The programs for A294331, there is no canonical definition to state claims against.
-/

/-! ## A294331.P1866878434519323877

`A138934(A052980(n))`
-/

namespace A294331.P1866878434519323877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138934 (A052980 n).toNat

end

end A294331.P1866878434519323877

/-! ## A294331.P10260758298595145838

`A035250(A271619(∑[n]))`
-/

namespace A294331.P10260758298595145838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A271619 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294331.P10260758298595145838

/-!
# A294332: G.f.: exp( Sum_{n>=1} A180563(n) * x^n / n ).

The programs for A294332, there is no canonical definition to state claims against.
-/

/-! ## A294332.P9940089195472672178

`A002596(n)*A318323(A007696(n))`
-/

namespace A294332.P9940089195472672178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n * A318323 (A007696 n).toNat

end

end A294332.P9940089195472672178

/-!
# A294333: Number of partitions of n into cubes dividing n.

The programs for A294333, there is no canonical definition to state claims against.
-/

/-! ## A294333.P12239146393813728021

`A125269(A294335(n))`
-/

namespace A294333.P12239146393813728021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A294335 n).toNat

end

end A294333.P12239146393813728021

/-! ## A294333.P7433937677213846321

`A294358(A294335(n))%A294337(3*(n+1))`
-/

namespace A294333.P7433937677213846321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294358 (A294335 n).toNat) (A294337 (3 * (n + 1)))

end

end A294333.P7433937677213846321

/-! ## A294333.P8771877071585588781

`∏{e}[A103314(n), A001055(#)]`
-/

namespace A294333.P8771877071585588781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 (Nat.factorization (f1 n).natAbs p)

end

end A294333.P8771877071585588781

/-! ## A294333.P10474573173881145469

`∏{e}[A103314(n), A299201(#)]`
-/

namespace A294333.P10474573173881145469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A299201 (Nat.factorization (f1 n).natAbs p)

end

end A294333.P10474573173881145469

/-! ## A294333.P4237733560309421115

`A294335(n)%A291158(n+1)`
-/

namespace A294333.P4237733560309421115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294335 n) (A291158 (n + 1))

end

end A294333.P4237733560309421115

/-!
# A294334: Number of partitions of n into triangular numbers dividing n.

The programs for A294334, there is no canonical definition to state claims against.
-/

/-! ## A294334.P2655150944958936265

`gcd(A270339((n+1)²/∏{p}[n+1, #]), A270890(2*(n+1)))`
-/

namespace A294334.P2655150944958936265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270339 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A270890 (2 * (n + 1)))

end

end A294334.P2655150944958936265

/-! ## A294334.P9503987747048736365

`A087117(A281996(n+2))^A325334(n)`
-/

namespace A294334.P9503987747048736365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087117 (A281996 (n + 2)).toNat : ℚ) ^ (A325334 n : ℤ)

end

end A294334.P9503987747048736365

/-! ## A294334.P15828798198632895301

`gcd(A014260(n), A325254(A014261(n+4)))`
-/

namespace A294334.P15828798198632895301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014260 n) (A325254 (A014261 (n + 4)).toNat)

end

end A294334.P15828798198632895301

/-! ## A294334.P3572568470745352367

`A051119(A057358(n)+A051119(A143131(n+1)))`
-/

namespace A294334.P3572568470745352367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A057358 n + A051119 (A143131 (n + 1)).toNat).toNat

end

end A294334.P3572568470745352367

/-! ## A294334.P16899550790748255281

`A166240(A015761(n+2))`
-/

namespace A294334.P16899550790748255281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (A015761 (n + 2)).toNat

end

end A294334.P16899550790748255281

/-!
# A294336: Number of ways to write n as a finite power-tower a^(b^(c^...)) of positive integers greater than one.

The programs for A294336, the canonical program `A294336.P16842523112371343693` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294336 has offset 1).

The definition of A294336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294336.P17362780919742376278

`∑{d}[n+1, A008683(#)*A294337((n+1)/#)]`
-/

namespace A294336.P17362780919742376278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A294337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294336.P17362780919742376278

namespace A294336

/-- `∑{d}[n+1, A008683(#)*A294337((n+1)/#)]` -/
def P17362780919742376278.Spec : Prop :=
  ∀ n, P17362780919742376278.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P17647386917591405609

`A169594(A158378(n+1)+A000007(n))`
-/

namespace A294336.P17647386917591405609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (A158378 (n + 1) + A000007 n).toNat

end

end A294336.P17647386917591405609

namespace A294336

/-- `A169594(A158378(n+1)+A000007(n))` -/
def P17647386917591405609.Spec : Prop :=
  ∀ n, P17647386917591405609.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P16842523112371343693

`A169594(gcd(A005361(n+1), A052409(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A294336

/-- `A169594(gcd(A005361(n+1), A052409(n+1)))` -/
def P16842523112371343693.Spec : Prop :=
  ∀ n, P16842523112371343693.a n = A294336 (n + 1)

theorem P16842523112371343693.correct : P16842523112371343693.Spec := by
  intro n
  simp only [A294336, Nat.add_sub_cancel]

end A294336

/-! ## A294336.P9654332343722737685

`A206925(A294338(n+1)+A185015(3*n))`
-/

namespace A294336.P9654332343722737685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A294338 (n + 1) + A185015 (3 * n)).toNat

end

end A294336.P9654332343722737685

namespace A294336

/-- `A206925(A294338(n+1)+A185015(3*n))` -/
def P9654332343722737685.Spec : Prop :=
  ∀ n, P9654332343722737685.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P14707437596904846581

`A206925(A294338(n+1)%A107778(3*n+1))`
-/

namespace A294336.P14707437596904846581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (Int.tmod (A294338 (n + 1)) (A107778 (3 * n + 1))).toNat

end

end A294336.P14707437596904846581

namespace A294336

/-- `A206925(A294338(n+1)%A107778(3*n+1))` -/
def P14707437596904846581.Spec : Prop :=
  ∀ n, P14707437596904846581.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P17354779640822822807

`A206925(A294338(n+1))%A105637(3*n+2)`
-/

namespace A294336.P17354779640822822807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206925 (A294338 (n + 1)).toNat) (A105637 (3 * n + 2))

end

end A294336.P17354779640822822807

namespace A294336

/-- `A206925(A294338(n+1))%A105637(3*n+2)` -/
def P17354779640822822807.Spec : Prop :=
  ∀ n, P17354779640822822807.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P1939972388761859344

`gcd(A100592(3*n), A124315(A316782(n+1)))`
-/

namespace A294336.P1939972388761859344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100592 (3 * n)) (A124315 (A316782 (n + 1)).toNat)

end

end A294336.P1939972388761859344

namespace A294336

/-- `gcd(A100592(3*n), A124315(A316782(n+1)))` -/
def P1939972388761859344.Spec : Prop :=
  ∀ n, (P1939972388761859344.a n : ℤ) = A294336 (n + 1)

end A294336

/-! ## A294336.P2237488622850602015

`A055155(A052409(n+1)-A052409(n²+1)+1)`
-/

namespace A294336.P2237488622850602015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (A052409 (n + 1) - A052409 (n ^ 2 + 1) + 1).toNat

end

end A294336.P2237488622850602015

namespace A294336

/-- `A055155(A052409(n+1)-A052409(n²+1)+1)` -/
def P2237488622850602015.Spec : Prop :=
  ∀ n, P2237488622850602015.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P15183711468032535024

`A206925(A294338(n+1)%A215246(n+1))`
-/

namespace A294336.P15183711468032535024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (Int.tmod (A294338 (n + 1)) (A215246 (n + 1))).toNat

end

end A294336.P15183711468032535024

namespace A294336

/-- `A206925(A294338(n+1)%A215246(n+1))` -/
def P15183711468032535024.Spec : Prop :=
  ∀ n, P15183711468032535024.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P9490777562122963945

`A305254(2*A316789(n+1))`
-/

namespace A294336.P9490777562122963945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (2 * A316789 (n + 1)).toNat

end

end A294336.P9490777562122963945

namespace A294336

/-- `A305254(2*A316789(n+1))` -/
def P9490777562122963945.Spec : Prop :=
  ∀ n, P9490777562122963945.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P12941507903404605430

`2^A001222(A001222(2^A316789(n+1)))`
-/

namespace A294336.P12941507903404605430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316789 (n + 1) : ℤ))).toNat).toNat : ℤ)

end

end A294336.P12941507903404605430

namespace A294336

/-- `2^A001222(A001222(2^A316789(n+1)))` -/
def P12941507903404605430.Spec : Prop :=
  ∀ n, P12941507903404605430.a n = (A294336 (n + 1) : ℚ)

end A294336

/-! ## A294336.P11404470939043702469

`∑{e}[A000045(A316789(n+1)+6), A000045(#)]`
-/

namespace A294336.P11404470939043702469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A316789 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A294336.P11404470939043702469

namespace A294336

/-- `∑{e}[A000045(A316789(n+1)+6), A000045(#)]` -/
def P11404470939043702469.Spec : Prop :=
  ∀ n, P11404470939043702469.a n = A294336 (n + 1)

end A294336

/-! ## A294336.P11051563930568626990

`and(A290671(n), A316782(n+1))`
-/

namespace A294336.P11051563930568626990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290671 n) (A316782 (n + 1))

end

end A294336.P11051563930568626990

namespace A294336

/-- `and(A290671(n), A316782(n+1))` -/
def P11051563930568626990.Spec : Prop :=
  ∀ n, P11051563930568626990.a n = A294336 (n + 1)

end A294336

/-!
# A294337: Number of ways to write 2^n as a finite power-tower a^(b^(c^...)) of positive integers greater than one.

The programs for A294337, the canonical program `A294337.P10631223806116842665` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294337 has offset 1).

The definition of A294337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294337.P10631223806116842665

`∑{d}[n+1, A294336(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A294337

/-- `∑{d}[n+1, A294336(#)]` -/
def P10631223806116842665.Spec : Prop :=
  ∀ n, P10631223806116842665.a n = A294337 (n + 1)

theorem P10631223806116842665.correct : P10631223806116842665.Spec := by
  intro n
  simp only [A294337, Nat.add_sub_cancel]

end A294337

/-! ## A294337.P9175725966357798562

`A294336(2^(n+1))`
-/

namespace A294337.P9175725966357798562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (2 ^ (n + 1))

end

end A294337.P9175725966357798562

namespace A294337

/-- `A294336(2^(n+1))` -/
def P9175725966357798562.Spec : Prop :=
  ∀ n, P9175725966357798562.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P17085485039175981422

`A090677(A000188(n+1))+A334739(A087560(n+1))+1`
-/

namespace A294337.P17085485039175981422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (A000188 (n + 1)).toNat + (A334739 (A087560 (n + 1)).toNat + 1)

end

end A294337.P17085485039175981422

namespace A294337

/-- `A090677(A000188(n+1))+A334739(A087560(n+1))+1` -/
def P17085485039175981422.Spec : Prop :=
  ∀ n, P17085485039175981422.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P11599289039055052255

`A347102(A293524(n+1))+1`
-/

namespace A294337.P11599289039055052255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347102 (A293524 (n + 1)).toNat + 1

end

end A294337.P11599289039055052255

namespace A294337

/-- `A347102(A293524(n+1))+1` -/
def P11599289039055052255.Spec : Prop :=
  ∀ n, P11599289039055052255.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P12864946763862853309

`A056239(A293514(n+1))+A043289(n+1)`
-/

namespace A294337.P12864946763862853309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + A043289 (n + 1)

end

end A294337.P12864946763862853309

namespace A294337

/-- `A056239(A293514(n+1))+A043289(n+1)` -/
def P12864946763862853309.Spec : Prop :=
  ∀ n, P12864946763862853309.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P13108809057003212695

`A056239(A293514(n+1))+A000188(A000188(n+1))`
-/

namespace A294337.P13108809057003212695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + A000188 (A000188 (n + 1)).toNat

end

end A294337.P13108809057003212695

namespace A294337

/-- `A056239(A293514(n+1))+A000188(A000188(n+1))` -/
def P13108809057003212695.Spec : Prop :=
  ∀ n, P13108809057003212695.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P16342629482610255694

`A056239(A293514(n+1))+A014963(A008835(n+1))`
-/

namespace A294337.P16342629482610255694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + A014963 (A008835 (n + 1)).toNat

end

end A294337.P16342629482610255694

namespace A294337

/-- `A056239(A293514(n+1))+A014963(A008835(n+1))` -/
def P16342629482610255694.Spec : Prop :=
  ∀ n, P16342629482610255694.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P9095540417730193942

`A056239(A293514(n+1))+A000196(A072411(n+1))`
-/

namespace A294337.P9095540417730193942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + A000196 (A072411 (n + 1)).toNat

end

end A294337.P9095540417730193942

namespace A294337

/-- `A056239(A293514(n+1))+A000196(A072411(n+1))` -/
def P9095540417730193942.Spec : Prop :=
  ∀ n, P9095540417730193942.a n = A294337 (n + 1)

end A294337

/-! ## A294337.P1713745993955304321

`∑{d}[A181351(n+1), A316782(#)]`
-/

namespace A294337.P1713745993955304321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A316782 d

end

end A294337.P1713745993955304321

namespace A294337

/-- `∑{d}[A181351(n+1), A316782(#)]` -/
def P1713745993955304321.Spec : Prop :=
  ∀ n, P1713745993955304321.a n = A294337 (n + 1)

end A294337

/-!
# A294338: Number of ways to write n as a finite power-tower of positive integers greater than one, allowing both left and right nesting of parentheses.

The programs for A294338, there is no canonical definition to state claims against.
-/

/-! ## A294338.P13355525939209167270

`A294339(A253641(n+1))`
-/

namespace A294338.P13355525939209167270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294339 (A253641 (n + 1)).toNat

end

end A294338.P13355525939209167270

/-! ## A294338.P14117320941158826702

`A124568(A316789(n+1)+1)%10`
-/

namespace A294338.P14117320941158826702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124568 (A316789 (n + 1) + 1).toNat) 10

end

end A294338.P14117320941158826702

/-! ## A294338.P16181928710330945322

`∑{d}[A316789(n+1), A114116(A005686(#))+1]`
-/

namespace A294338.P16181928710330945322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A114116 (A005686 d).toNat + 1)

end

end A294338.P16181928710330945322

/-! ## A294338.P2130454766306028604

`A261508(A000040(∑{d}[A316789(n+1), #]))+1`
-/

namespace A294338.P2130454766306028604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261508 ((A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)).toNat + 1) + 1

end

end A294338.P2130454766306028604

/-! ## A294338.P3113717380350619177

`∑{e}[A066186(A316789(n+1))+2, A066186(#)]`
-/

namespace A294338.P3113717380350619177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A316789 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066186 (Nat.factorization (f1 n).natAbs p)

end

end A294338.P3113717380350619177

/-! ## A294338.P1177493478430173800

`A316782(n+1)+A001221(A316782(A316782(n+1)!+1))`
-/

namespace A294338.P1177493478430173800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (n + 1) + A001221 (A316782 (Nat.factorial (A316782 (n + 1)).toNat + 1)).toNat

end

end A294338.P1177493478430173800

/-! ## A294338.P9655317599279921331

`A089723(n+1)+A138929(∑[n+1])%A089723(n+1)`
-/

namespace A294338.P9655317599279921331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) + Int.tmod (A138929 (∑ j ∈ Finset.range (n + 1), f1 j)) (A089723 (n + 1))

end

end A294338.P9655317599279921331

/-! ## A294338.P377736134401921792

`A006530(∏{p}[∏{e}[(n+1)², 2-#], #]!)`
-/

namespace A294338.P377736134401921792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p))

end

end A294338.P377736134401921792

/-! ## A294338.P11493092625730087237

`A317994(A295920(n+1)²)`
-/

namespace A294338.P11493092625730087237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317994 (A295920 (n + 1) ^ 2).toNat

end

end A294338.P11493092625730087237

/-! ## A294338.P9059697692878670833

`A006530(A316789(n+1)!)`
-/

namespace A294338.P9059697692878670833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A316789 (n + 1)).toNat)

end

end A294338.P9059697692878670833

/-!
# A294339: Number of ways to write 2^n as a finite power-tower of positive integers greater than one, allowing both left and right nesting of parentheses.

The programs for A294339, there is no canonical definition to state claims against.
-/

/-! ## A294339.P9977612486844592968

`A294338(2^(n+1))`
-/

namespace A294339.P9977612486844592968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294338 (2 ^ (n + 1))

end

end A294339.P9977612486844592968

/-! ## A294339.P787118773481001978

`A257990(A319352(n+1))+A050338(n+1)`
-/

namespace A294339.P787118773481001978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A319352 (n + 1)).toNat + A050338 (n + 1)

end

end A294339.P787118773481001978

/-! ## A294339.P15285451580635899871

`A069784(or(A046523(n+1), A069780(n+1)))`
-/

namespace A294339.P15285451580635899871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069784 (Int.lor (A046523 (n + 1)) (A069780 (n + 1))).toNat

end

end A294339.P15285451580635899871

/-! ## A294339.P11724644824145228686

`A123580(A050340(n+1))+A001222(A328706(n+1))`
-/

namespace A294339.P11724644824145228686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A050340 (n + 1)).toNat + A001222 (A328706 (n + 1)).toNat

end

end A294339.P11724644824145228686

/-! ## A294339.P6480986110702276595

`A132284(A301598(n+1))+A001222(A328706(n+1))`
-/

namespace A294339.P6480986110702276595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A301598 (n + 1)).toNat + A001222 (A328706 (n + 1)).toNat

end

end A294339.P6480986110702276595

/-!
# A294340: E.g.f.: exp(Sum_{n>=1} A081362(n)*x^n/n).

The programs for A294340, there is no canonical definition to state claims against.
-/

/-! ## A294340.P15174695040391964767

`(-1)^n*A111701(A000266(n))`
-/

namespace A294340.P15174695040391964767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111701 (A000266 n).toNat

end

end A294340.P15174695040391964767

/-! ## A294340.P779399986730215256

`A000266(n)*A033999(A001353(n))`
-/

namespace A294340.P779399986730215256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000266 n * A033999 (A001353 n).toNat

end

end A294340.P779399986730215256

/-! ## A294340.P10455778659235283248

`A004151(A000266(n))*A033999(n)`
-/

namespace A294340.P10455778659235283248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A000266 n).toNat * A033999 n

end

end A294340.P10455778659235283248

/-! ## A294340.P519020073748802245

`A000266(n)*A165326(A254627(n+1))`
-/

namespace A294340.P519020073748802245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000266 n * A165326 (A254627 (n + 1)).toNat

end

end A294340.P519020073748802245

/-!
# A294342: Numbers k at which the ratio (number of squares in the multiplicative group modulo k)/k reaches a new minimum.

The programs for A294342, there is no canonical definition to state claims against.
-/

/-! ## A294342.P11423014059986295815

`A056960(∩[A073491(n+1), A127107(n+1)])`
-/

namespace A294342.P11423014059986295815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127107 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A294342.P11423014059986295815

/-! ## A294342.P5953688902786277804

`lt[A079526(n+1), 1]+1`
-/

namespace A294342.P5953688902786277804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A294342.P5953688902786277804

/-! ## A294342.P3764204476035872910

`A123586(A102516(n+1))`
-/

namespace A294342.P3764204476035872910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123586 (A102516 (n + 1)).toNat

end

end A294342.P3764204476035872910

/-! ## A294342.P6871898692159597877

`A018350(∑[A264569(n+1)])`
-/

namespace A294342.P6871898692159597877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294342.P6871898692159597877

/-! ## A294342.P12822299027376170917

`A018350(∑[A265601(n+1)])`
-/

namespace A294342.P12822299027376170917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294342.P12822299027376170917

/-!
# A294343: E.g.f.: exp( Sum_{n>=1} ( Product_{k=1..n} sigma(k) ) * x^n/n! ).

The programs for A294343, there is no canonical definition to state claims against.
-/

/-! ## A294343.P14630964032750624467

`A312088(A092649(n+1)-C(n, ceil(n/2)+2))`
-/

namespace A294343.P14630964032750624467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312088 (A092649 (n + 1) - (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat : ℤ)).toNat

end

end A294343.P14630964032750624467

/-! ## A294343.P4564090071439981538

`A326336(n)+A060143(A002294(n))`
-/

namespace A294343.P4564090071439981538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326336 n + A060143 (A002294 n).toNat

end

end A294343.P4564090071439981538

/-!
# A294344: a(n) = ((-9*n + 82)*10^n - 1)/81.

The programs for A294344, the canonical program `A294344.P12682413768358668094` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294344 has offset 0).

The definition of A294344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((-9*n+82)*10^n-1)/81` (program `A294344.P16892883548742732099`, by `A294344.P16892883548742732099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294344.P10892850793823282025

`ogf((1-12x+10x^2)/(1-21x+120x^2-100x^3))`
-/

namespace A294344.P10892850793823282025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12, 10] [1, -21, 120, -100] n

end

end A294344.P10892850793823282025

namespace A294344

/-- `ogf((1-12x+10x^2)/(1-21x+120x^2-100x^3))` -/
def P10892850793823282025.Spec : Prop :=
  ∀ n, P10892850793823282025.a n = A294344 n

end A294344

/-! ## A294344.P12682413768358668094

`21*a(n-1)-120*a(n-2)+100*a(n-3)` with `a(0)=1, a(1)=9, a(2)=79`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294344

/-- `21*a(n-1)-120*a(n-2)+100*a(n-3)` -/
def P12682413768358668094.Spec : Prop :=
  ∀ n, P12682413768358668094.a n = A294344 n

theorem P12682413768358668094.correct : P12682413768358668094.Spec := by
  intro n
  simp only [A294344]

end A294344

/-! ## A294344.P16892883548742732099

`((-9*n+82)*10^n-1)/81`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294344.P16892883548742732099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((-9) * (n : ℤ) + 82) * (10 ^ n : ℤ) - 1 : ℚ) / 81

end

end A294344.P16892883548742732099

namespace A294344

/-- `((-9*n+82)*10^n-1)/81` -/
def P16892883548742732099.Spec : Prop :=
  ∀ n, P16892883548742732099.a n = (A294344 n : ℚ)

theorem P16892883548742732099.correct : P16892883548742732099.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A294344, Nat.add_sub_cancel, A294344.P16892883548742732099.a, A294344.P12682413768358668094.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A294344, Nat.add_sub_cancel, A294344.P16892883548742732099.a, A294344.P12682413768358668094.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A294344

/-! ## A294344.P14838759609438362989

`10*a(n-1)-floor(10^n/9)` with `a(0)=1`
-/

namespace A294344.P14838759609438362989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - ⌊(10 ^ n : ℚ) / 9⌋

end

end A294344.P14838759609438362989

namespace A294344

/-- `10*a(n-1)-floor(10^n/9)` -/
def P14838759609438362989.Spec : Prop :=
  ∀ n, P14838759609438362989.a n = A294344 n

end A294344

/-! ## A294344.P3019791400476136897

`or(2, 10*a(n-1))-(ceil(10^n/9)-1)` with `a(0)=1`
-/

namespace A294344.P3019791400476136897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (10 * a (n - 1)) - (⌈(10 ^ n : ℚ) / 9⌉ - 1)

end

end A294344.P3019791400476136897

namespace A294344

/-- `or(2, 10*a(n-1))-(ceil(10^n/9)-1)` -/
def P3019791400476136897.Spec : Prop :=
  ∀ n, P3019791400476136897.a n = A294344 n

end A294344

/-! ## A294344.P3066109650550389533

`10*a(n-1)+1-A047855(n)` with `a(0)=1`
-/

namespace A294344.P3066109650550389533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 1 - A047855 n

end

end A294344.P3066109650550389533

namespace A294344

/-- `10*a(n-1)+1-A047855(n)` -/
def P3066109650550389533.Spec : Prop :=
  ∀ n, P3066109650550389533.a n = A294344 n

end A294344

/-! ## A294344.P13162326232166743674

`round(A064616(n+1)/10)`
-/

namespace A294344.P13162326232166743674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064616 (n + 1) : ℚ) / 10)

end

end A294344.P13162326232166743674

namespace A294344

/-- `round(A064616(n+1)/10)` -/
def P13162326232166743674.Spec : Prop :=
  ∀ n, P13162326232166743674.a n = A294344 n

end A294344

/-! ## A294344.P16398083498104905886

`∑[A011557(n)]-A294328(n)`
-/

namespace A294344.P16398083498104905886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294328 n

end

end A294344.P16398083498104905886

namespace A294344

/-- `∑[A011557(n)]-A294328(n)` -/
def P16398083498104905886.Spec : Prop :=
  ∀ n, P16398083498104905886.a n = A294344 n

end A294344

/-! ## A294344.P16096868343681333976

`Δ[A014824(n)]-A294328(n)`
-/

namespace A294344.P16096868343681333976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294328 n

end

end A294344.P16096868343681333976

namespace A294344

/-- `Δ[A014824(n)]-A294328(n)` -/
def P16096868343681333976.Spec : Prop :=
  ∀ n, P16096868343681333976.a n = A294344 n

end A294344

/-! ## A294344.P7924542158151337553

`A002275(n+1)-A294328(n)`
-/

namespace A294344.P7924542158151337553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A294328 n

end

end A294344.P7924542158151337553

namespace A294344

/-- `A002275(n+1)-A294328(n)` -/
def P7924542158151337553.Spec : Prop :=
  ∀ n, P7924542158151337553.a n = A294344 n

end A294344

/-!
# A294345: Sum of the products of the smaller and larger parts of the Goldbach partitions of n into two distinct parts.

The programs for A294345, there is no canonical definition to state claims against.
-/

/-! ## A294345.P12096585057636159940

`A334768(n+1)-A243485(n+1)`
-/

namespace A294345.P12096585057636159940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 1) - A243485 (n + 1)

end

end A294345.P12096585057636159940

/-! ## A294345.P371582856334352492

`A200677(n+1)%A200654(∑[∑[16*n+4]-1])`
-/

namespace A294345.P371582856334352492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200677 (n + 1)) (A200654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A294345.P371582856334352492

/-! ## A294345.P12356229508302802811

`A005171(A293331(n))*A200677(n+1)`
-/

namespace A294345.P12356229508302802811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A293331 n).toNat * A200677 (n + 1)

end

end A294345.P12356229508302802811

/-! ## A294345.P10021799381506312791

`A200677(n+1)%A008619(A041009(n))`
-/

namespace A294345.P10021799381506312791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200677 (n + 1)) (A008619 (A041009 n).toNat)

end

end A294345.P10021799381506312791

/-! ## A294345.P18150692967306175118

`A200677(A187829(n+1))%A008619(n)²`
-/

namespace A294345.P18150692967306175118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200677 (A187829 (n + 1)).toNat) (A008619 n ^ 2)

end

end A294345.P18150692967306175118

/-!
# A294349: Product of first n terms of the binomial transform of the Lucas numbers (A000032).

The programs for A294349, there is no canonical definition to state claims against.
-/

/-! ## A294349.P5096596194499315970

`∏[floor((ϕ^n)²)+1]`
-/

namespace A294349.P5096596194499315970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294349.P5096596194499315970

/-! ## A294349.P16944243127940762137

`ceil((ϕ^n)²)*a(n-1)` with `a(0)=2`
-/

namespace A294349.P16944243127940762137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉ * a (n - 1)

end

end A294349.P16944243127940762137

/-! ## A294349.P2230170797815037327

`A056569(Δ[n²])`
-/

namespace A294349.P2230170797815037327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A294349.P2230170797815037327

/-! ## A294349.P6819870333476873397

`lcm(2, ∏[A005248(n)])`
-/

namespace A294349.P6819870333476873397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A294349.P6819870333476873397

/-! ## A294349.P14510307902179726193

`floor(∏[sqrt(A081069(n))])`
-/

namespace A294349.P14510307902179726193
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081069 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A294349.P14510307902179726193

/-!
# A294350: Product of first n terms of the binomial transform of the partition function (A000041).

The programs for A294350, there is no canonical definition to state claims against.
-/

/-! ## A294350.P5932829675342356266

`∏[A218481(n)]`
-/

namespace A294350.P5932829675342356266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294350.P5932829675342356266

/-! ## A294350.P2957904517132177448

`∏[∑[A218482(n)]]`
-/

namespace A294350.P2957904517132177448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294350.P2957904517132177448

/-! ## A294350.P6233558810525817701

`∏[A398990(∑[n])]`
-/

namespace A294350.P6233558810525817701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398990 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294350.P6233558810525817701

/-! ## A294350.P11867960127405393257

`∏[record[A398990(n)]]`
-/

namespace A294350.P11867960127405393257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294350.P11867960127405393257

/-! ## A294350.P16470164241491123779

`∏[∑[A103446(n)]+1]`
-/

namespace A294350.P16470164241491123779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294350.P16470164241491123779

/-!
# A294351: Product of first n terms of the binomial transform of the number of partitions into distinct parts (A000009).

The programs for A294351, there is no canonical definition to state claims against.
-/

/-! ## A294351.P4943058326093832000

`∏[A266232(n)]`
-/

namespace A294351.P4943058326093832000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294351.P4943058326093832000

/-! ## A294351.P10661739110281856923

`∏[∑[A129519(n)]]`
-/

namespace A294351.P10661739110281856923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294351.P10661739110281856923

/-! ## A294351.P12899466869218333119

`A266232(n)*a(A096605(3*n+5)-2)` with `a(0)=1`
-/

namespace A294351.P12899466869218333119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266232 n * a (A096605 (3 * n + 5) - 2).toNat

end

end A294351.P12899466869218333119

/-! ## A294351.P7283539858687840486

`a(n-1)*∑[A129519(n)%A057621(n+1)]` with `a(0)=1`
-/

namespace A294351.P7283539858687840486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129519 n) (A057621 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294351.P7283539858687840486

/-! ## A294351.P15809460519668272558

`∏[a(n-1)+A129519(n)+A003893(60*(n+1))]` with `a(0)=1`
-/

namespace A294351.P15809460519668272558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A129519 n + A003893 (60 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294351.P15809460519668272558

/-!
# A294352: Product of first n terms of the binomial transform of the factorial.

The programs for A294352, there is no canonical definition to state claims against.
-/

/-! ## A294352.P1757660749880614685

`∏[∑{#}[n, n!/#!]]`
-/

namespace A294352.P1757660749880614685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), (Nat.factorial n : ℚ) / (Nat.factorial k : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294352.P1757660749880614685

/-! ## A294352.P2412806519630282436

`∏[n!*∑[1/n!]]`
-/

namespace A294352.P2412806519630282436
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294352.P2412806519630282436

/-! ## A294352.P16343415880153586509

`∏[∑{#}[n, C(n, #)*#!]]`
-/

namespace A294352.P16343415880153586509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k * Nat.factorial k

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294352.P16343415880153586509

/-! ## A294352.P12138227417439117398

`∏[1+n*a(n-1)]` with `a(0)=1`
-/

namespace A294352.P12138227417439117398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  1 + n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294352.P12138227417439117398

/-! ## A294352.P5914204348882773085

`exp(∑[log(n!*∑[1/n!])])`
-/

namespace A294352.P5914204348882773085
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294352.P5914204348882773085

/-!
# A294353: Product of first n terms of the binomial transform of n^n (A086331).

The programs for A294353, there is no canonical definition to state claims against.
-/

/-! ## A294353.P8835628595335324782

`∏[A086331(n)]`
-/

namespace A294353.P8835628595335324782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294353.P8835628595335324782

/-! ## A294353.P1248683524646376903

`∏[∑[A355494(n)]]`
-/

namespace A294353.P1248683524646376903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294353.P1248683524646376903

/-! ## A294353.P11133712305246232970

`∏[A398988(∑[n])]`
-/

namespace A294353.P11133712305246232970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398988 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294353.P11133712305246232970

/-! ## A294353.P9174912897731050319

`∏[Δ[A360193(n)]]`
-/

namespace A294353.P9174912897731050319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294353.P9174912897731050319

/-! ## A294353.P5175795617295080213

`∏[record[A398988(n)]]`
-/

namespace A294353.P5175795617295080213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294353.P5175795617295080213

/-!
# A294354: a(1) = a(3) = a(4) = 2, a(2) = 4; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 4.

The programs for A294354, the canonical program `A294354.P15776141741150967985` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294354 has offset 1).

The definition of A294354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A294354.P15776141741150967985`, by `A294354.P15776141741150967985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294354.P15776141741150967985

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=2, a(1)=4, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294354

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P15776141741150967985.Spec : Prop :=
  ∀ n, (P15776141741150967985.a n : ℤ) = A294354 (n + 1)

theorem P15776141741150967985.correct : P15776141741150967985.Spec := by
  intro n
  simp only [A294354, Nat.add_sub_cancel]

end A294354

/-!
# A294355: E.g.f.: exp( Sum_{n>=1} phi(n) * sigma(n^n) * x^n/n ).

The programs for A294355, there is no canonical definition to state claims against.
-/

/-! ## A294355.P12342802618387276620

`A333489(A213111(n)+A000142(n))`
-/

namespace A294355.P12342802618387276620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A213111 n + A000142 n).toNat

end

end A294355.P12342802618387276620

/-!
# A294356: E.g.f.: Product_{k>0} (1+x^k)^(-1/k).

The programs for A294356, there is no canonical definition to state claims against.
-/

/-! ## A294356.P9268739081226584506

`(n!-A306346(A001372(n)))/(-1)^n`
-/

namespace A294356.P9268739081226584506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A306346 (A001372 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A294356.P9268739081226584506

/-! ## A294356.P5024759218090039693

`A145707(comp[2*(n+1)]*A062937(n+1))`
-/

namespace A294356.P5024759218090039693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145707 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A062937 (n + 1)).toNat

end

end A294356.P5024759218090039693

/-!
# A294357: Smallest odd number that can be expressed in more ways by sums of 3 odd primes p+q+r with p <= q <= r than any smaller odd number.

The programs for A294357, there is no canonical definition to state claims against.
-/

/-! ## A294357.P16843834523662781984

`lt[A349171(A349158(n+1)), A349143(n+3)]`
-/

namespace A294357.P16843834523662781984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (A349158 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349143 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294357.P16843834523662781984

/-! ## A294357.P334158837842170705

`lt[A304182(A194102(2*(n+2))), A281118(n+3)]`
-/

namespace A294357.P334158837842170705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (A194102 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294357.P334158837842170705

/-! ## A294357.P17601974128473852222

`lt[A098778(3*n+3), A086568(A086568(n+3))]`
-/

namespace A294357.P17601974128473852222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098778 (3 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (A086568 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294357.P17601974128473852222

/-! ## A294357.P15131289213063166784

`lt[A194601(n+1), n*A023891(n+3)]`
-/

namespace A294357.P15131289213063166784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023891 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294357.P15131289213063166784

/-! ## A294357.P9060694121315105402

`lt[A157439(A003967(n+1)), A038548(n+3)]`
-/

namespace A294357.P9060694121315105402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157439 (A003967 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294357.P9060694121315105402

/-!
# A294358: Number of ways to write A294357(n) as a sum of 3 odd primes p+q+r, with p>=q>=r.

The programs for A294358, there is no canonical definition to state claims against.
-/

/-! ## A294358.P12655185635729788320

`A007963((A294357(n+1)-1)/2)`
-/

namespace A294358.P12655185635729788320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 (SequenceMachineLib.roundAway ((A294357 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A294358.P12655185635729788320

/-! ## A294358.P15586218998877376734

`record[A190353(n+6)]`
-/

namespace A294358.P15586218998877376734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294358.P15586218998877376734

/-! ## A294358.P5755069278564198793

`A190353(A294357(n+1))`
-/

namespace A294358.P5755069278564198793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A294357 (n + 1)).toNat

end

end A294358.P5755069278564198793

/-! ## A294358.P3414264597532038247

`record[A007963(n)+A000007(n)]`
-/

namespace A294358.P3414264597532038247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294358.P3414264597532038247

/-! ## A294358.P2858838553340759203

`record[A010051(2*(n+1))+A007963(n)]`
-/

namespace A294358.P2858838553340759203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A007963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294358.P2858838553340759203

/-! ## A294358.P15058495850631010182

`record[A028310(A007963(n))]`
-/

namespace A294358.P15058495850631010182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007963 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294358.P15058495850631010182

/-!
# A294360: G.f. A(x) satisfies: [x^(n-1)] A(x)^(n^2) = (n^2)^(n-1) for n>=1.

The programs for A294360, there is no canonical definition to state claims against.
-/

/-! ## A294360.P8188039920246551522

`A188441(n)%A116625(A188407(n))`
-/

namespace A294360.P8188039920246551522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188441 n) (A116625 (A188407 n).toNat)

end

end A294360.P8188039920246551522

/-!
# A294361: E.g.f.: exp(Sum_{n>=1} sigma(n) * x^n).

The programs for A294361, there is no canonical definition to state claims against.
-/

/-! ## A294361.P13085848694893351057

`A294296(∑[n+2]-1)`
-/

namespace A294361.P13085848694893351057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294361.P13085848694893351057

/-! ## A294361.P15103005542152986253

`or(1, A294296(A034856(n+1)))`
-/

namespace A294361.P15103005542152986253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294296 (A034856 (n + 1)).toNat)

end

end A294361.P15103005542152986253

/-! ## A294361.P17940900154860211773

`A294296(A034856(n+1))+A000035(2*n)`
-/

namespace A294361.P17940900154860211773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (A034856 (n + 1)).toNat + A000035 (2 * n)

end

end A294361.P17940900154860211773

/-! ## A294361.P6546642256559265244

`A294296(A034856(n+1))+A008683(5*5*(n+1))`
-/

namespace A294361.P6546642256559265244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (A034856 (n + 1)).toNat + A008683 (5 * (5 * (n + 1)))

end

end A294361.P6546642256559265244

/-! ## A294361.P3248904701508448012

`A007318(A020639(2*(n+7)))*A294296(A034856(n+1))`
-/

namespace A294361.P3248904701508448012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 7))).toNat * A294296 (A034856 (n + 1)).toNat

end

end A294361.P3248904701508448012

/-!
# A294362: E.g.f.: exp(Sum_{n>=1} sigma_2(n) * x^n).

The programs for A294362, there is no canonical definition to state claims against.
-/

/-! ## A294362.P10935048571598629281

`A294296(∑[n+3])`
-/

namespace A294362.P10935048571598629281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294362.P10935048571598629281

/-! ## A294362.P12415273965544624507

`A107688(A107635(n))*A294296(A141214(n))`
-/

namespace A294362.P12415273965544624507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107688 (A107635 n).toNat * A294296 (A141214 n).toNat

end

end A294362.P12415273965544624507

/-! ## A294362.P6172156969791228697

`A294296(A141214(n))%A194785(n+1)`
-/

namespace A294362.P6172156969791228697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294296 (A141214 n).toNat) (A194785 (n + 1))

end

end A294362.P6172156969791228697

/-! ## A294362.P8372149758155926977

`A294296(A141214(n))^A213217(n)`
-/

namespace A294362.P8372149758155926977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294296 (A141214 n).toNat : ℚ) ^ (A213217 n : ℤ)

end

end A294362.P8372149758155926977

/-! ## A294362.P4335128274266294051

`A294296(A141214(n))/A213217(A213217(n)²)`
-/

namespace A294362.P4335128274266294051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294296 (A141214 n).toNat : ℚ) / (A213217 (A213217 n ^ 2).toNat : ℚ)

end

end A294362.P4335128274266294051

/-!
# A294363: E.g.f.: exp(Sum_{n>=1} d(n) * x^n), where d(n) is the number of divisors of n.

The programs for A294363, there is no canonical definition to state claims against.
-/

/-! ## A294363.P7218875581521175138

`A294296(∑[n]+n)`
-/

namespace A294363.P7218875581521175138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A294363.P7218875581521175138

/-! ## A294363.P6622899152852462353

`or(1, A294296(A000096(n)))`
-/

namespace A294363.P6622899152852462353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294296 (A000096 n).toNat)

end

end A294363.P6622899152852462353

/-! ## A294363.P10004095886819770907

`A294296(A000096(n))+A000007(n+1)`
-/

namespace A294363.P10004095886819770907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (A000096 n).toNat + A000007 (n + 1)

end

end A294363.P10004095886819770907

/-! ## A294363.P15588594310773601861

`A294296(A000096(n))+A000035(8*n+6)`
-/

namespace A294363.P15588594310773601861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (A000096 n).toNat + A000035 (8 * n + 6)

end

end A294363.P15588594310773601861

/-! ## A294363.P2124417621981203694

`A007318(A000217(n+4))*A294296(A000096(n))`
-/

namespace A294363.P2124417621981203694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 4)).toNat * A294296 (A000096 n).toNat

end

end A294363.P2124417621981203694

/-!
# A294364: Linear recurrence with signature (1,1,-1,1,1), where the first terms are powers of 2 (1,2,4,8,16).

The programs for A294364, the canonical program `A294364.P12838292874662758606` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294364 has offset 0).

The definition of A294364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294364.P12838292874662758606

`ogf((1+x+x^2+3x^3+5x^4)/(1-x-x^2+x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294364

/-- `ogf((1+x+x^2+3x^3+5x^4)/(1-x-x^2+x^3-x^4-x^5))` -/
def P12838292874662758606.Spec : Prop :=
  ∀ n, P12838292874662758606.a n = A294364 n

theorem P12838292874662758606.correct : P12838292874662758606.Spec := by
  intro n
  simp only [A294364]

end A294364

/-! ## A294364.P10284434815774838734

`A033999(n)+3*A286311(n)`
-/

namespace A294364.P10284434815774838734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3 * A286311 n

end

end A294364.P10284434815774838734

namespace A294364

/-- `A033999(n)+3*A286311(n)` -/
def P10284434815774838734.Spec : Prop :=
  ∀ n, P10284434815774838734.a n = A294364 n

end A294364

/-! ## A294364.P12717999679632555331

`A209615(2*n+1)+3*A286311(n)`
-/

namespace A294364.P12717999679632555331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) + 3 * A286311 n

end

end A294364.P12717999679632555331

namespace A294364

/-- `A209615(2*n+1)+3*A286311(n)` -/
def P12717999679632555331.Spec : Prop :=
  ∀ n, P12717999679632555331.a n = A294364 n

end A294364

/-! ## A294364.P16021093680984213335

`A056594(A005843(n))+3*A286311(n)`
-/

namespace A294364.P16021093680984213335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005843 n).toNat + 3 * A286311 n

end

end A294364.P16021093680984213335

namespace A294364

/-- `A056594(A005843(n))+3*A286311(n)` -/
def P16021093680984213335.Spec : Prop :=
  ∀ n, P16021093680984213335.a n = A294364 n

end A294364

/-! ## A294364.P14215185128455574956

`3*A286311(n)-A087960(A005408(n))`
-/

namespace A294364.P14215185128455574956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A286311 n - A087960 (A005408 n).toNat

end

end A294364.P14215185128455574956

namespace A294364

/-- `3*A286311(n)-A087960(A005408(n))` -/
def P14215185128455574956.Spec : Prop :=
  ∀ n, P14215185128455574956.a n = A294364 n

end A294364

/-! ## A294364.P10532324324003760352

`A056594(A359194(2*(n+2))+1)+3*A286311(n)`
-/

namespace A294364.P10532324324003760352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A359194 (2 * (n + 2)) + 1).toNat + 3 * A286311 n

end

end A294364.P10532324324003760352

namespace A294364

/-- `A056594(A359194(2*(n+2))+1)+3*A286311(n)` -/
def P10532324324003760352.Spec : Prop :=
  ∀ n, P10532324324003760352.a n = A294364 n

end A294364

/-!
# A294365: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294365, there is no canonical definition to state claims against.
-/

/-! ## A294365.P17317219522515685914

`A294549(n)+A024000(A212804(n))`
-/

namespace A294365.P17317219522515685914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294549 n + A024000 (A212804 n).toNat

end

end A294365.P17317219522515685914

/-! ## A294365.P15924361529787513237

`A295957(n)+∑[A023443(A212804(n))]`
-/

namespace A294365.P15924361529787513237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295957 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294365.P15924361529787513237

/-! ## A294365.P11672586098907926388

`A065220(n)+A295957(n)+A023443(A212804(n))`
-/

namespace A294365.P11672586098907926388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A295957 n + A023443 (A212804 n).toNat)

end

end A294365.P11672586098907926388

/-! ## A294365.P13092355112959996652

`A293357(n)+A004526(A006355(n))`
-/

namespace A294365.P13092355112959996652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293357 n + A004526 (A006355 n).toNat

end

end A294365.P13092355112959996652

/-! ## A294365.P18129506529648702578

`A304901(∑[n+1])+A294549(n)-A000045(n+1)+1`
-/

namespace A294365.P18129506529648702578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (∑ j ∈ Finset.range (n + 1), f1 j) + A294549 n - A000045 (n + 1) + 1

end

end A294365.P18129506529648702578

/-!
# A294366: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 2n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294366, there is no canonical definition to state claims against.
-/

/-! ## A294366.P3491988775851408924

`A000027(A296776(n)-A000071(n+1))`
-/

namespace A294366.P3491988775851408924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A296776 n - A000071 (n + 1)).toNat

end

end A294366.P3491988775851408924

/-! ## A294366.P17189322337311359909

`A014707(A059328(n))+A296776(n)-A000071(n+1)`
-/

namespace A294366.P17189322337311359909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A059328 n).toNat + (A296776 n - A000071 (n + 1))

end

end A294366.P17189322337311359909

/-! ## A294366.P16633561452299808405

`A007318(A146888(n))*A296776(n)-A000071(n+1)`
-/

namespace A294366.P16633561452299808405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A146888 n).toNat * A296776 n - A000071 (n + 1)

end

end A294366.P16633561452299808405

/-! ## A294366.P14960303290789683139

`A001221(A002587(n))*A296776(n)-A000071(n+1)`
-/

namespace A294366.P14960303290789683139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002587 n).toNat * A296776 n - A000071 (n + 1)

end

end A294366.P14960303290789683139

/-!
# A294367: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + n - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294367, there is no canonical definition to state claims against.
-/

/-! ## A294367.P4892932270515973844

`A305516(A000124(n))+A295953(n)-n`
-/

namespace A294367.P4892932270515973844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A000124 n).toNat + (A295953 n - (n : ℤ))

end

end A294367.P4892932270515973844

/-! ## A294367.P4761717977798707766

`A298888(A179865(n+1))+A293349(n)`
-/

namespace A294367.P4761717977798707766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A179865 (n + 1)).toNat + A293349 n

end

end A294367.P4761717977798707766

/-! ## A294367.P4357388084745317476

`A065220(n)+A000027(A295953(n))`
-/

namespace A294367.P4357388084745317476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A000027 (A295953 n).toNat

end

end A294367.P4357388084745317476

/-! ## A294367.P16152825935497618741

`A294546(n)+A024000(A212804(n))`
-/

namespace A294367.P16152825935497618741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294546 n + A024000 (A212804 n).toNat

end

end A294367.P16152825935497618741

/-! ## A294367.P14622553078509090249

`A065220(n)+A295950(n)+A023443(A212804(n))`
-/

namespace A294367.P14622553078509090249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A295950 n + A023443 (A212804 n).toNat)

end

end A294367.P14622553078509090249

/-!
# A294368: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + n + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294368, there is no canonical definition to state claims against.
-/

/-! ## A294368.P18105947025938453604

`A001489(A000071(n+1))+A294538(n)+n`
-/

namespace A294368.P18105947025938453604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A000071 (n + 1)).toNat + (A294538 n + (n : ℤ))

end

end A294368.P18105947025938453604

/-! ## A294368.P1757610388526778614

`A296556(n)-Δ[A307598(A100135(n))]`
-/

namespace A294368.P1757610388526778614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A100135 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296556 n - (f1 (n + 1) - f1 n)

end

end A294368.P1757610388526778614

/-! ## A294368.P14456819250917502963

`A296556(n)-A060862(A027518(n+1))`
-/

namespace A294368.P14456819250917502963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296556 n - A060862 (A027518 (n + 1)).toNat

end

end A294368.P14456819250917502963

/-! ## A294368.P17865414216042988452

`A294538(A087051(n))-A065220(n+1)`
-/

namespace A294368.P17865414216042988452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294538 (A087051 n).toNat - A065220 (n + 1)

end

end A294368.P17865414216042988452

/-!
# A294370: Lexicographically earliest sequence of distinct positive numbers such that, for any n > 0, a(2*n) = 3*a(n).

The programs for A294370, there is no canonical definition to state claims against.
-/

/-! ## A294370.P2104565209118502627

`A141396(A075303(n))`
-/

namespace A294370.P2104565209118502627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 (A075303 n).toNat

end

end A294370.P2104565209118502627

/-! ## A294370.P11553354636489548277

`A000244(val(n+1, 2))*A006368(A000265(n+1))`
-/

namespace A294370.P11553354636489548277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (n + 1) 2) * A006368 (A000265 (n + 1)).toNat

end

end A294370.P11553354636489548277

/-! ## A294370.P8071564664134614896

`A000244(A007814(n+1))*A006368(A000265(n+1))`
-/

namespace A294370.P8071564664134614896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A007814 (n + 1)).toNat * A006368 (A000265 (n + 1)).toNat

end

end A294370.P8071564664134614896

/-! ## A294370.P2563312125246412770

`A006368(A000265(n+1))*A319987(A006519(n+1))`
-/

namespace A294370.P2563312125246412770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A000265 (n + 1)).toNat * A319987 (A006519 (n + 1)).toNat

end

end A294370.P2563312125246412770

/-! ## A294370.P7021715106319293663

`A191449(A075301(n)+1)`
-/

namespace A294370.P7021715106319293663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191449 (A075301 n + 1).toNat

end

end A294370.P7021715106319293663

/-!
# A294372: Expansion of (1-x)^4/(x^2 + 4*x + 1).

The programs for A294372, the canonical program `A294372.P14491113079916990850` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294372 has offset 0).

The definition of A294372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-4x^3+x^4)/(1+4x+x^2))` (program `A294372.P14491113079916990850`, by `A294372.P14491113079916990850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294372.P14491113079916990850

`ogf((1-4x+6x^2-4x^3+x^4)/(1+4x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294372

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1+4x+x^2))` -/
def P14491113079916990850.Spec : Prop :=
  ∀ n, P14491113079916990850.a n = A294372 n

theorem P14491113079916990850.correct : P14491113079916990850.Spec := by
  intro n
  simp only [A294372]

end A294372

/-!
# A294373: Product of first n Bell numbers.

The programs for A294373, there is no canonical definition to state claims against.
-/

/-! ## A294373.P15202074472132515804

`∏[1+floor(exp(-1)*∑{#}[2*n-1, (#+1)^n/(#+1)!])]`
-/

namespace A294373.P15202074472132515804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊Real.exp (-1 : ℝ) * ((∑ k ∈ Finset.range (f2 n + 1).toNat, ((k + 1) ^ n : ℚ) / (Nat.factorial (k + 1) : ℚ) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294373.P15202074472132515804

/-! ## A294373.P10892630351053014252

`∏[A000110(n)]`
-/

namespace A294373.P10892630351053014252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294373.P10892630351053014252

/-! ## A294373.P1966868578370199426

`∏[abs(A292935(n))]`
-/

namespace A294373.P1966868578370199426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294373.P1966868578370199426

/-! ## A294373.P5073382578307779437

`∏[sqrt(A001247(n))]`
-/

namespace A294373.P5073382578307779437
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001247 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294373.P5073382578307779437

/-! ## A294373.P1340052467348222759

`∏[A011971(∑[n])]`
-/

namespace A294373.P1340052467348222759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294373.P1340052467348222759

/-!
# A294380: Numbers k such that 8*10^k - 67 is prime.

The programs for A294380, there is no canonical definition to state claims against.
-/

/-! ## A294380.P1069744320090795583

`record[A054425(A096361(n+1))]`
-/

namespace A294380.P1069744320090795583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (A096361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294380.P1069744320090795583

/-! ## A294380.P2189837202170517088

`A066601(A076035(n))+A000108(n)`
-/

namespace A294380.P2189837202170517088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (A076035 n).toNat + A000108 n

end

end A294380.P2189837202170517088

/-!
# A294381: Solution of the complementary equation a(n) = a(n-1)*b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294381, there is no canonical definition to state claims against.
-/

/-! ## A294381.P1378896635778254816

`a(n-1)*record[A329314(n)+A082375(n)]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A294381.P1378896635778254816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 n + A082375 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294381.P1378896635778254816

/-! ## A294381.P489316450346399092

`A121373(A006508(2*(n+1)))+∏[A080907(n+1)]`
-/

namespace A294381.P489316450346399092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A006508 (2 * (n + 1))).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294381.P489316450346399092

/-! ## A294381.P9399156152574048700

`(A098018(n+1)^a(n-1)+n+1)*a(n-1)` with `a(0)=1`
-/

namespace A294381.P9399156152574048700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((A098018 (n + 1) : ℝ) ^ (a (n - 1)) + (n + 1 : ℝ)) * a (n - 1)

end

end A294381.P9399156152574048700

/-! ## A294381.P9881494922993349835

`A024923(n+1)+A010051(A037992(n))`
-/

namespace A294381.P9881494922993349835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024923 (n + 1) + A010051 (A037992 n).toNat

end

end A294381.P9881494922993349835

/-!
# A294382: Solution of the complementary equation a(n) = a(n-1)*b(n-2) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294382, there is no canonical definition to state claims against.
-/

/-! ## A294382.P12734964959027251051

`A102363(n)+A051176(A189801(n))`
-/

namespace A294382.P12734964959027251051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n + A051176 (A189801 n).toNat

end

end A294382.P12734964959027251051

/-! ## A294382.P10356659893085382217

`A165482(n)+A105511(A192131(n))`
-/

namespace A294382.P10356659893085382217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 n + A105511 (A192131 n).toNat

end

end A294382.P10356659893085382217

/-!
# A294383: Solution of the complementary equation a(n) = a(n-1)*b(n-2) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294383, there is no canonical definition to state claims against.
-/

/-! ## A294383.P5939525669329442971

`A000027(a(n-1)*A004128(n)+1)` with `a(0)=1, a(1)=3`
-/

namespace A294383.P5939525669329442971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000027 (a (n - 1) * A004128 n + 1).toNat

end

end A294383.P5939525669329442971

/-! ## A294383.P3419063538955359311

`A125746(a(n-1)*A004128(n)+1)` with `a(0)=1, a(1)=3`
-/

namespace A294383.P3419063538955359311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A125746 (a (n - 1) * A004128 n + 1).toNat

end

end A294383.P3419063538955359311

/-! ## A294383.P16990888797924762147

`A065475((comp[∑[n-1]]-2)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A294383.P16990888797924762147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A065475 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2) * a (n - 1)).toNat

end

end A294383.P16990888797924762147

/-!
# A294384: Solution of the complementary equation a(n) = a(n-1)*b(n-2) - n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294384, there is no canonical definition to state claims against.
-/

/-! ## A294384.P1883666145964884703

`A188588(n)+A057427((9*n)²)`
-/

namespace A294384.P1883666145964884703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188588 n + A057427 ((9 * n) ^ 2)

end

end A294384.P1883666145964884703

/-! ## A294384.P11805958082682459744

`A235046(A048578(n))+A188588(n)`
-/

namespace A294384.P11805958082682459744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 (A048578 n).toNat + A188588 n

end

end A294384.P11805958082682459744

/-! ## A294384.P4480152761944493537

`A007814(A033484(n))+A001710(n+1)`
-/

namespace A294384.P4480152761944493537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A033484 n).toNat + A001710 (n + 1)

end

end A294384.P4480152761944493537

/-! ## A294384.P2590041569961492196

`A188588(n)+A071170(A067697(n+1))`
-/

namespace A294384.P2590041569961492196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188588 n + A071170 (A067697 (n + 1)).toNat

end

end A294384.P2590041569961492196

/-! ## A294384.P13421285973317943124

`A001221(3^n)+∏[(n+1)/(char[2]+1)]`
-/

namespace A294384.P13421285973317943124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (3 ^ n) : ℚ) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A294384.P13421285973317943124

/-!
# A294385: Solution of the complementary equation a(n) = a(n-1)*b(n-2) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294385, there is no canonical definition to state claims against.
-/

/-! ## A294385.P6773166893581440112

`A079313((n+1)!)`
-/

namespace A294385.P6773166893581440112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079313 (Nat.factorial (n + 1))

end

end A294385.P6773166893581440112

/-! ## A294385.P15655007698979532926

`A360392(∏[n+1]+1)-4`
-/

namespace A294385.P15655007698979532926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∏ j ∈ Finset.range (n + 1), f1 j + 1) - 4

end

end A294385.P15655007698979532926

/-! ## A294385.P7491943501677156191

`round(sqrt(1+A299257((n+1)!)))-1`
-/

namespace A294385.P7491943501677156191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (1 + A299257 (Nat.factorial (n + 1)) : ℝ)) - 1

end

end A294385.P7491943501677156191

/-!
# A294386: a(n) is the smallest number whose deficiency or abundance is equal to 2*n, or a(n) = 0 if such a number does not exist.

The programs for A294386, there is no canonical definition to state claims against.
-/

/-! ## A294386.P6045186401306846911

`A294393(n)+Δ[n²]`
-/

namespace A294386.P6045186401306846911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294393 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A294386.P6045186401306846911

/-! ## A294386.P8277150735364711762

`2*n+A294393(2*n-n)+1`
-/

namespace A294386.P8277150735364711762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A294393 (2 * n - n) + 1)

end

end A294386.P8277150735364711762

/-! ## A294386.P6385268282382269980

`A294393(round(acot(3*(n+1))+n))+2*n+1`
-/

namespace A294386.P6385268282382269980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294393 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (3 * (n + 1) : ℝ) + (n : ℝ))).toNat + (2 * n : ℤ) + 1

end

end A294386.P6385268282382269980

/-! ## A294386.P14059260317870577078

`abs(A294393(n)+A005408(n))`
-/

namespace A294386.P14059260317870577078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294393 n + A005408 n|

end

end A294386.P14059260317870577078

/-! ## A294386.P10936386530635389215

`A294393(n)+A005843(n)+1`
-/

namespace A294386.P10936386530635389215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294393 n + A005843 n + 1

end

end A294386.P10936386530635389215

/-! ## A294386.P3679932102290072712

`A317107(n+1)+A294393(n)`
-/

namespace A294386.P3679932102290072712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317107 (n + 1) + A294393 n

end

end A294386.P3679932102290072712

/-! ## A294386.P1856384610101675638

`A317439(n+1)+A294393(n)`
-/

namespace A294386.P1856384610101675638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1) + A294393 n

end

end A294386.P1856384610101675638

/-! ## A294386.P10469979203130289421

`A065475(A294393(n)+2*n)`
-/

namespace A294386.P10469979203130289421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A294393 n + (2 * n : ℤ)).toNat

end

end A294386.P10469979203130289421

/-! ## A294386.P8089268012573615675

`A065475(A294393(n)+n+n)`
-/

namespace A294386.P8089268012573615675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A294393 n + (n : ℤ) + (n : ℤ)).toNat

end

end A294386.P8089268012573615675

/-!
# A294387: Expansion of chi(q^3) / chi^3(q) in powers of q where chi() is a Ramanujan theta function.

The programs for A294387, there is no canonical definition to state claims against.
-/

/-! ## A294387.P3209117088596513503

`(-1)^n*A128128(n)`
-/

namespace A294387.P3209117088596513503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128128 n

end

end A294387.P3209117088596513503

/-! ## A294387.P10020381085827286682

`A128128(n)/A033999(n)`
-/

namespace A294387.P10020381085827286682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128128 n : ℚ) / (A033999 n : ℚ)

end

end A294387.P10020381085827286682

/-! ## A294387.P1982750579880206193

`A261988(n)+floor(A261988(n)/2)`
-/

namespace A294387.P1982750579880206193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261988 n + ⌊(A261988 n : ℚ) / 2⌋

end

end A294387.P1982750579880206193

/-! ## A294387.P10432043726265575912

`A033999(n)*A141094(2*n)`
-/

namespace A294387.P10432043726265575912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A141094 (2 * n)

end

end A294387.P10432043726265575912

/-! ## A294387.P6801398632226891427

`(2-A010684(n))*A132180(2*n)`
-/

namespace A294387.P6801398632226891427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A132180 (2 * n)

end

end A294387.P6801398632226891427

/-! ## A294387.P6158735689587215771

`(2-A010684(n))*A141094(2*n)`
-/

namespace A294387.P6158735689587215771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A141094 (2 * n)

end

end A294387.P6158735689587215771

/-! ## A294387.P13035032516001060911

`(2-A153284(n+2))*A132180(2*n)`
-/

namespace A294387.P13035032516001060911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153284 (n + 2)) * A132180 (2 * n)

end

end A294387.P13035032516001060911

/-! ## A294387.P3243803994247404793

`A033999(n)*A132972(2*n)`
-/

namespace A294387.P3243803994247404793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132972 (2 * n)

end

end A294387.P3243803994247404793

/-! ## A294387.P3699444504744691913

`(2-A010684(n))*A132972(2*n)`
-/

namespace A294387.P3699444504744691913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A132972 (2 * n)

end

end A294387.P3699444504744691913

/-! ## A294387.P12579905830597156436

`A020985(2*n+1)*A020985(n)*A141094(2*n)`
-/

namespace A294387.P12579905830597156436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A141094 (2 * n)

end

end A294387.P12579905830597156436

/-!
# A294388: a(n) = n! * [x^n] exp(Sum_{k=1..n} sigma_n(k) * x^k).

The programs for A294388, there is no canonical definition to state claims against.
-/

/-! ## A294388.P13993721009961068661

`A294296(∑[4*n])`
-/

namespace A294388.P13993721009961068661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294388.P13993721009961068661

/-! ## A294388.P17049591793796849129

`or(1, A294296(A046092(n)))`
-/

namespace A294388.P17049591793796849129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294296 (A046092 n).toNat)

end

end A294388.P17049591793796849129

/-! ## A294388.P6703981653421044353

`A294296(A046092(n))+A025469(n)`
-/

namespace A294388.P6703981653421044353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294296 (A046092 n).toNat + A025469 n

end

end A294388.P6703981653421044353

/-! ## A294388.P2133909315465591569

`gcd(A000038(n), A294296(A046092(n)))`
-/

namespace A294388.P2133909315465591569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294296 (A046092 n).toNat)

end

end A294388.P2133909315465591569

/-! ## A294388.P11064067452073317396

`lcm(A033999(n), A294296(A046092(n)))`
-/

namespace A294388.P11064067452073317396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A294296 (A046092 n).toNat)

end

end A294388.P11064067452073317396

/-!
# A294389: a(n) = 2^(n-3) mod n, for n >= 3.

The programs for A294389, the canonical program `A294389.P16442988502026631211` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294389 has offset 3).

The definition of A294389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%(n+3)` (program `A294389.P16442988502026631211`, by `A294389.P16442988502026631211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294389.P16442988502026631211

`(2^n)%(n+3)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294389

/-- `(2^n)%(n+3)` -/
def P16442988502026631211.Spec : Prop :=
  ∀ n, (P16442988502026631211.a n : ℤ) = A294389 (n + 3)

theorem P16442988502026631211.correct : P16442988502026631211.Spec := by
  intro n
  simp only [A294389, Nat.add_sub_cancel]

end A294389

/-! ## A294389.P4097765934142913953

`abs(A077959(3*n)%(n+3))`
-/

namespace A294389.P4097765934142913953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A077959 (3 * n)) (n + 3 : ℤ)|

end

end A294389.P4097765934142913953

namespace A294389

/-- `abs(A077959(3*n)%(n+3))` -/
def P4097765934142913953.Spec : Prop :=
  ∀ n, P4097765934142913953.a n = A294389 (n + 3)

end A294389

/-! ## A294389.P8196486439288014320

`abs(A122803(n)%A225553(2*n+5))`
-/

namespace A294389.P8196486439288014320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 n) (A225553 (2 * n + 5))|

end

end A294389.P8196486439288014320

namespace A294389

/-- `abs(A122803(n)%A225553(2*n+5))` -/
def P8196486439288014320.Spec : Prop :=
  ∀ n, P8196486439288014320.a n = A294389 (n + 3)

end A294389

/-! ## A294389.P3351479174124524478

`A079978(3*n+2)+A000079(n)%(n+3)`
-/

namespace A294389.P3351479174124524478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (3 * n + 2) + Int.tmod (A000079 n) (n + 3 : ℤ)

end

end A294389.P3351479174124524478

namespace A294389

/-- `A079978(3*n+2)+A000079(n)%(n+3)` -/
def P3351479174124524478.Spec : Prop :=
  ∀ n, P3351479174124524478.a n = A294389 (n + 3)

end A294389

/-! ## A294389.P5144297920336826461

`A177207(A167614(n+1))`
-/

namespace A294389.P5144297920336826461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177207 (A167614 (n + 1)).toNat

end

end A294389.P5144297920336826461

namespace A294389

/-- `A177207(A167614(n+1))` -/
def P5144297920336826461.Spec : Prop :=
  ∀ n, P5144297920336826461.a n = A294389 (n + 3)

end A294389

/-! ## A294389.P10824825025209248079

`A118759(A000079(n)%(n+3))`
-/

namespace A294389.P10824825025209248079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A000079 n) (n + 3 : ℤ)).toNat

end

end A294389.P10824825025209248079

namespace A294389

/-- `A118759(A000079(n)%(n+3))` -/
def P10824825025209248079.Spec : Prop :=
  ∀ n, P10824825025209248079.a n = A294389 (n + 3)

end A294389

/-! ## A294389.P7407566400966800927

`A202149(A347553(n+4))`
-/

namespace A294389.P7407566400966800927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202149 (A347553 (n + 4)).toNat

end

end A294389.P7407566400966800927

namespace A294389

/-- `A202149(A347553(n+4))` -/
def P7407566400966800927.Spec : Prop :=
  ∀ n, P7407566400966800927.a n = A294389 (n + 3)

end A294389

/-!
# A294390: a(n) = 2^(n-4) mod n, for n >= 4.

The programs for A294390, the canonical program `A294390.P18173516052431740010` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294390 has offset 4).

The definition of A294390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%(n+4)` (program `A294390.P18173516052431740010`, by `A294390.P18173516052431740010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294390.P18173516052431740010

`(2^n)%(n+4)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A294390

/-- `(2^n)%(n+4)` -/
def P18173516052431740010.Spec : Prop :=
  ∀ n, (P18173516052431740010.a n : ℤ) = A294390 (n + 4)

theorem P18173516052431740010.correct : P18173516052431740010.Spec := by
  intro n
  simp only [A294390, Nat.add_sub_cancel]

end A294390

/-! ## A294390.P822494874101393573

`abs(A122803(n)%(n+4))`
-/

namespace A294390.P822494874101393573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 n) (n + 4 : ℤ)|

end

end A294390.P822494874101393573

namespace A294390

/-- `abs(A122803(n)%(n+4))` -/
def P822494874101393573.Spec : Prop :=
  ∀ n, P822494874101393573.a n = A294390 (n + 4)

end A294390

/-! ## A294390.P14018431464226320539

`A000051(n)%(n+4)-1`
-/

namespace A294390.P14018431464226320539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (n + 4 : ℤ) - 1

end

end A294390.P14018431464226320539

namespace A294390

/-- `A000051(n)%(n+4)-1` -/
def P14018431464226320539.Spec : Prop :=
  ∀ n, P14018431464226320539.a n = A294390 (n + 4)

end A294390

/-! ## A294390.P9148490553310905019

`A008836(n+1)²*A077957(2*n)%(n+4)`
-/

namespace A294390.P9148490553310905019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * Int.tmod (A077957 (2 * n)) (n + 4 : ℤ)

end

end A294390.P9148490553310905019

namespace A294390

/-- `A008836(n+1)²*A077957(2*n)%(n+4)` -/
def P9148490553310905019.Spec : Prop :=
  ∀ n, P9148490553310905019.a n = A294390 (n + 4)

end A294390

/-! ## A294390.P4545907731853453727

`abs(Δ[A000225(n)]%(n+4))`
-/

namespace A294390.P4545907731853453727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 4 : ℤ)|

end

end A294390.P4545907731853453727

namespace A294390

/-- `abs(Δ[A000225(n)]%(n+4))` -/
def P4545907731853453727.Spec : Prop :=
  ∀ n, P4545907731853453727.a n = A294390 (n + 4)

end A294390

/-! ## A294390.P13095811369176917935

`abs(Δ[A000918(n)]%(n+4))`
-/

namespace A294390.P13095811369176917935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 4 : ℤ)|

end

end A294390.P13095811369176917935

namespace A294390

/-- `abs(Δ[A000918(n)]%(n+4))` -/
def P13095811369176917935.Spec : Prop :=
  ∀ n, P13095811369176917935.a n = A294390 (n + 4)

end A294390

/-! ## A294390.P1838136716164747507

`A202149(∑[n+3]+1)`
-/

namespace A294390.P1838136716164747507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A294390.P1838136716164747507

namespace A294390

/-- `A202149(∑[n+3]+1)` -/
def P1838136716164747507.Spec : Prop :=
  ∀ n, P1838136716164747507.a n = A294390 (n + 4)

end A294390

/-!
# A294391: Numbers k such that (68*10^k - 419)/9 is prime.

The programs for A294391, there is no canonical definition to state claims against.
-/

/-! ## A294391.P4381426098567918633

`A343378(A022567(n))+comp[2*(n+1)]`
-/

namespace A294391.P4381426098567918633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A022567 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A294391.P4381426098567918633

/-! ## A294391.P9232322972283394226

`∑[A293429(A293398(n+2)²)]`
-/

namespace A294391.P9232322972283394226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 (A293398 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294391.P9232322972283394226

/-! ## A294391.P2404235127588036897

`eq[A086956(n+1), A126712(n+1)]`
-/

namespace A294391.P2404235127588036897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294391.P2404235127588036897

/-! ## A294391.P11344911719046157143

`eq[1, A175192(A158444(abs(1-2*n)))]+1`
-/

namespace A294391.P11344911719046157143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (A158444 |1 - (2 * n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A294391.P11344911719046157143

/-! ## A294391.P3948562686812173175

`A005728(n+1)-A178408(A178381(n))`
-/

namespace A294391.P3948562686812173175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - A178408 (A178381 n).toNat

end

end A294391.P3948562686812173175

/-!
# A294392: E.g.f.: exp(Sum_{n>=1} A001227(n) * x^n).

The programs for A294392, there is no canonical definition to state claims against.
-/

/-! ## A294392.P9664072351209594596

`A353420(∑{d}[n+1, #²]^floor(n/2))`
-/

namespace A294392.P9664072351209594596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A294392.P9664072351209594596

/-! ## A294392.P6628526952387209612

`A079714(5*A307678(n))`
-/

namespace A294392.P6628526952387209612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079714 (5 * A307678 n).toNat

end

end A294392.P6628526952387209612

/-!
# A294393: a(n) is the smallest number whose deficiency or abundance is equal to 2*n (or 0 if such a number does not exist), minus the n-th odd number.

The programs for A294393, there is no canonical definition to state claims against.
-/

/-! ## A294393.P10721866107982900489

`A294386(n)-A005408(n)`
-/

namespace A294393.P10721866107982900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n - A005408 n

end

end A294393.P10721866107982900489

/-! ## A294393.P222712377022888647

`A294386(n)-Δ[n²]`
-/

namespace A294393.P222712377022888647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A294393.P222712377022888647

/-! ## A294393.P10359945358253163004

`A294386(n)-1-A005843(n)`
-/

namespace A294393.P10359945358253163004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n - 1 - A005843 n

end

end A294393.P10359945358253163004

/-! ## A294393.P7329575995259684434

`A294386(n)-A016777(n)+n`
-/

namespace A294393.P7329575995259684434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n - A016777 n + (n : ℤ)

end

end A294393.P7329575995259684434

/-! ## A294393.P8661806664734184935

`A023443(A294386(n)-n)-n`
-/

namespace A294393.P8661806664734184935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A294386 n - (n : ℤ)).toNat - (n : ℤ)

end

end A294393.P8661806664734184935

/-! ## A294393.P3294937959382685971

`A294386(n)+1-Δ[A002378(n)]`
-/

namespace A294393.P3294937959382685971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n + 1 - (f1 (n + 1) - f1 n)

end

end A294393.P3294937959382685971

/-! ## A294393.P9337937361180629024

`A294386(n)+1-record[A244478(n)]`
-/

namespace A294393.P9337937361180629024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n + 1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294393.P9337937361180629024

/-!
# A294394: E.g.f.: exp(Sum_{n>=1} A000593(n) * x^n).

The programs for A294394, there is no canonical definition to state claims against.
-/

/-! ## A294394.P677959747044210952

`A098734(n!)+1`
-/

namespace A294394.P677959747044210952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098734 (Nat.factorial n) + 1

end

end A294394.P677959747044210952

/-!
# A294395: E.g.f.: exp(Sum_{n>=1} A050999(n) * x^n).

The programs for A294395, there is no canonical definition to state claims against.
-/

/-! ## A294395.P10694701513800003064

`A243496(C(∑[n], 2))`
-/

namespace A294395.P10694701513800003064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243496 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A294395.P10694701513800003064

/-!
# A294397: Solution of the complementary equation a(n) = a(n-1) + b(n-2) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294397, there is no canonical definition to state claims against.
-/

/-! ## A294397.P15777746712463666753

`A005228(n+1)-floor(acot(acot(n)))`
-/

namespace A294397.P15777746712463666753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

end

end A294397.P15777746712463666753

/-! ## A294397.P17711337437580826628

`A030124(n)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A294397.P17711337437580826628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A030124 n + a (n - 1)

end

end A294397.P17711337437580826628

/-! ## A294397.P13416331871870680688

`A061578(n)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A294397.P13416331871870680688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A061578 n + a (n - 1)

end

end A294397.P13416331871870680688

/-! ## A294397.P6964580790885939213

`or(A081689(n), A169585(n))`
-/

namespace A294397.P6964580790885939213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081689 n) (A169585 n)

end

end A294397.P6964580790885939213

/-! ## A294397.P10910810379360110532

`A081689(n)+A019590(n+1)`
-/

namespace A294397.P10910810379360110532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n + A019590 (n + 1)

end

end A294397.P10910810379360110532

/-! ## A294397.P13168852126019070581

`A061577(n+1)-A060576(n)`
-/

namespace A294397.P13168852126019070581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1) - A060576 n

end

end A294397.P13168852126019070581

/-! ## A294397.P8281514112308669937

`A005228(n+1)-A157928(n)`
-/

namespace A294397.P8281514112308669937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A157928 n

end

end A294397.P8281514112308669937

/-! ## A294397.P10683292871596321938

`A005228(n+1)-A328672(∑{e}[n, #])`
-/

namespace A294397.P10683292871596321938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A328672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A294397.P10683292871596321938

/-! ## A294397.P1027302163968341839

`A005228(n+1)-A057427(and(n, -2))`
-/

namespace A294397.P1027302163968341839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A057427 (Int.land (n : ℤ) (-2)).toNat

end

end A294397.P1027302163968341839

/-! ## A294397.P1909302605103392800

`A057428(round(n/3))+A005228(n+1)`
-/

namespace A294397.P1909302605103392800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + A005228 (n + 1)

end

end A294397.P1909302605103392800

/-! ## A294397.P8394126178627953330

`A005228(n+1)-A184985(n+1)+n`
-/

namespace A294397.P8394126178627953330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A184985 (n + 1) + (n : ℤ)

end

end A294397.P8394126178627953330

/-! ## A294397.P8149562169946703931

`A005228(n+1)-A057427(n-n²%3)`
-/

namespace A294397.P8149562169946703931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A057427 (n - n ^ 2 % 3)

end

end A294397.P8149562169946703931

/-! ## A294397.P10680942776095099086

`A005228(n+1)-A049046(A000010(n+1))`
-/

namespace A294397.P10680942776095099086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A049046 (A000010 (n + 1)).toNat

end

end A294397.P10680942776095099086

/-! ## A294397.P16080166525219076172

`A081689(n)+2-A020639(A000010(n+1))`
-/

namespace A294397.P16080166525219076172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n + (2 - A020639 (A000010 (n + 1)).toNat)

end

end A294397.P16080166525219076172

/-! ## A294397.P12354561997708653910

`A005228(n+1)-A057427(n-A057427(n))`
-/

namespace A294397.P12354561997708653910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A057427 ((n : ℤ) - A057427 n).toNat

end

end A294397.P12354561997708653910

/-! ## A294397.P12388893607356993649

`A005228(n+1)-A121559(A008578(n+1)+1)`
-/

namespace A294397.P12388893607356993649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A121559 (A008578 (n + 1) + 1).toNat

end

end A294397.P12388893607356993649

/-! ## A294397.P17361248842438915622

`A005228(n+1)-A005171(∑[n+2])`
-/

namespace A294397.P17361248842438915622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A005171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294397.P17361248842438915622

/-! ## A294397.P4967394634811204987

`A081689(n)+val(n+2, A000051(n))`
-/

namespace A294397.P4967394634811204987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n + (SequenceMachineLib.valuation (n + 2) (A000051 n).toNat : ℤ)

end

end A294397.P4967394634811204987

/-! ## A294397.P4925596276707753947

`xor(A000038(a(n-2)), A081689(n))` with `a(0)=1, a(1)=3`
-/

namespace A294397.P4925596276707753947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (A000038 (a (n - 2)).toNat) (A081689 n)

end

end A294397.P4925596276707753947

/-! ## A294397.P7967554283795272299

`A060000(A005228(n+1))`
-/

namespace A294397.P7967554283795272299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A005228 (n + 1)).toNat

end

end A294397.P7967554283795272299

/-!
# A294398: Solution of the complementary equation a(n) = a(n-1) + b(n-2) + 2, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294398, there is no canonical definition to state claims against.
-/

/-! ## A294398.P10879498777057537443

`∑[comp[A022940(n+1)]]+1`
-/

namespace A294398.P10879498777057537443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294398.P10879498777057537443

/-! ## A294398.P5419577255974977324

`∑[A143344(n+1)-char[1]]`
-/

namespace A294398.P5419577255974977324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143344 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294398.P5419577255974977324

/-! ## A294398.P1657937787904418960

`record[A143344(n)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A294398.P1657937787904418960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A143344 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294398.P1657937787904418960

/-! ## A294398.P15650030789298357646

`A022443(n+1)-A130130(n)`
-/

namespace A294398.P15650030789298357646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022443 (n + 1) - A130130 n

end

end A294398.P15650030789298357646

/-! ## A294398.P12123301923237959660

`∑[A143344(n+1)]-A057427(n)`
-/

namespace A294398.P12123301923237959660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A294398.P12123301923237959660

/-! ## A294398.P1813698229516991890

`A022940(n+2)-2`
-/

namespace A294398.P1813698229516991890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 2) - 2

end

end A294398.P1813698229516991890

/-! ## A294398.P5326499569542948322

`record[abs(2-A022941(n+1))]`
-/

namespace A294398.P5326499569542948322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A022941 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294398.P5326499569542948322

/-! ## A294398.P3513525575536486893

`A022941(n+2)-A040000(n)`
-/

namespace A294398.P3513525575536486893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - A040000 n

end

end A294398.P3513525575536486893

/-! ## A294398.P17844539623474661894

`A022941(n+2)+A000007(n)-2`
-/

namespace A294398.P17844539623474661894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) + (A000007 n - 2)

end

end A294398.P17844539623474661894

/-! ## A294398.P8285238157294206002

`A063524(n+1)+A022941(n+2)-2`
-/

namespace A294398.P8285238157294206002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A022941 (n + 2) - 2)

end

end A294398.P8285238157294206002

/-! ## A294398.P8817906217545625689

`A022941(n+2)-(A159075(n+1)+2)`
-/

namespace A294398.P8817906217545625689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - (A159075 (n + 1) + 2)

end

end A294398.P8817906217545625689

/-! ## A294398.P16921222220649482874

`record[A156031(n+3)-2]`
-/

namespace A294398.P16921222220649482874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294398.P16921222220649482874

/-! ## A294398.P3663610544257498401

`A156031(A004277(n)+2)-2`
-/

namespace A294398.P3663610544257498401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A004277 n + 2).toNat - 2

end

end A294398.P3663610544257498401

/-! ## A294398.P6706617868345888687

`A156031(2*(n+1))-A266664(2*n+1)`
-/

namespace A294398.P6706617868345888687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) - A266664 (2 * n + 1)

end

end A294398.P6706617868345888687

/-! ## A294398.P9406135702574811588

`A156031(2*(n+1))+A004273(2*n)-(4*n+1)`
-/

namespace A294398.P9406135702574811588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) + (A004273 (2 * n) - (4 * n + 1 : ℤ))

end

end A294398.P9406135702574811588

/-! ## A294398.P17140239072237078881

`A156031(2*(n+1))-A004275(2*n+1)/A004275(n+1)`
-/

namespace A294398.P17140239072237078881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156031 (2 * (n + 1)) : ℚ) - (A004275 (2 * n + 1) : ℚ) / (A004275 (n + 1) : ℚ)

end

end A294398.P17140239072237078881

/-! ## A294398.P10962739670362355432

`A156031(2*(n+1))+A004275(2*n)-A004275(2*n+1)`
-/

namespace A294398.P10962739670362355432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) + (A004275 (2 * n) - A004275 (2 * n + 1))

end

end A294398.P10962739670362355432

/-! ## A294398.P12785352008818510925

`A023444(A022940(n+2))`
-/

namespace A294398.P12785352008818510925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A022940 (n + 2)).toNat

end

end A294398.P12785352008818510925

/-! ## A294398.P309712004020385751

`A171950(A022941(n+2))`
-/

namespace A294398.P309712004020385751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A022941 (n + 2)).toNat

end

end A294398.P309712004020385751

/-!
# A294399: Solution of the complementary equation a(n) = a(n-1) + b(n-2) + 3, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294399, there is no canonical definition to state claims against.
-/

/-! ## A294399.P16314112857942544218

`A022935(n+2)-3`
-/

namespace A294399.P16314112857942544218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022935 (n + 2) - 3

end

end A294399.P16314112857942544218

/-! ## A294399.P2495727190334406252

`∑[abs(Δ[A022935(n+1)])]`
-/

namespace A294399.P2495727190334406252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022935 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294399.P2495727190334406252

/-! ## A294399.P2998959442709019092

`∑[A000027(Δ[A022935(n+1)])]`
-/

namespace A294399.P2998959442709019092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022935 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294399.P2998959442709019092

/-! ## A294399.P13180955606698949165

`∑[A022935(n+2)%A022935(n+1)]`
-/

namespace A294399.P13180955606698949165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022935 (n + 2)) (A022935 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294399.P13180955606698949165

/-! ## A294399.P7079299113610455043

`A078070(A038573(n+1))+A022935(n+2)`
-/

namespace A294399.P7079299113610455043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078070 (A038573 (n + 1)).toNat + A022935 (n + 2)

end

end A294399.P7079299113610455043

/-! ## A294399.P9372336103613762223

`∑[A028310(Δ[A022935(n+1)])]`
-/

namespace A294399.P9372336103613762223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022935 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294399.P9372336103613762223

/-! ## A294399.P18251227040952882083

`A023445(A022935(n+2))`
-/

namespace A294399.P18251227040952882083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A022935 (n + 2)).toNat

end

end A294399.P18251227040952882083

