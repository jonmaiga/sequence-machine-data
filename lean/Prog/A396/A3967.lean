import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
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
# A396701: a(n) = Sum_{d|n} tau_3(d) * sigma(n/d).

The programs for A396701, the canonical program `A396701.P6362032344804532156` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396701 has offset 1).

The definition of A396701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396701.P6362032344804532156

`∑{d}[n+1, A007430(#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A396701

/-- `∑{d}[n+1, A007430(#)]` -/
def P6362032344804532156.Spec : Prop :=
  ∀ n, P6362032344804532156.a n = A396701 (n + 1)

theorem P6362032344804532156.correct : P6362032344804532156.Spec := by
  intro n
  simp only [A396701, Nat.add_sub_cancel]

end A396701

/-! ## A396701.P18307061071786516931

`∑{d}[n+1, A000005(#)*A007429((n+1)/#)]`
-/

namespace A396701.P18307061071786516931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P18307061071786516931

namespace A396701

/-- `∑{d}[n+1, A000005(#)*A007429((n+1)/#)]` -/
def P18307061071786516931.Spec : Prop :=
  ∀ n, P18307061071786516931.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P1203777301444705961

`∑{d}[n+1, #*A007426((n+1)/#)]`
-/

namespace A396701.P1203777301444705961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P1203777301444705961

namespace A396701

/-- `∑{d}[n+1, #*A007426((n+1)/#)]` -/
def P1203777301444705961.Spec : Prop :=
  ∀ n, P1203777301444705961.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P3143063917856497404

`∑{d}[n+1, A000203(#)*A007425((n+1)/#)]`
-/

namespace A396701.P3143063917856497404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P3143063917856497404

namespace A396701

/-- `∑{d}[n+1, A000203(#)*A007425((n+1)/#)]` -/
def P3143063917856497404.Spec : Prop :=
  ∀ n, P3143063917856497404.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P10337068483915151367

`∑{d}[n+1, A000010(#)*A061200((n+1)/#)]`
-/

namespace A396701.P10337068483915151367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P10337068483915151367

namespace A396701

/-- `∑{d}[n+1, A000010(#)*A061200((n+1)/#)]` -/
def P10337068483915151367.Spec : Prop :=
  ∀ n, P10337068483915151367.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P16616524297916855293

`∑{d}[n+1, A046951(#)*A060724((n+1)/#)]`
-/

namespace A396701.P16616524297916855293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P16616524297916855293

namespace A396701

/-- `∑{d}[n+1, A046951(#)*A060724((n+1)/#)]` -/
def P16616524297916855293.Spec : Prop :=
  ∀ n, P16616524297916855293.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P13945375594475390602

`∑{d}[n+1, A035116(#)*A076752((n+1)/#)]`
-/

namespace A396701.P13945375594475390602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P13945375594475390602

namespace A396701

/-- `∑{d}[n+1, A035116(#)*A076752((n+1)/#)]` -/
def P13945375594475390602.Spec : Prop :=
  ∀ n, P13945375594475390602.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P12916458653112834802

`∑{d}[n+1, A007432(#)*A111217((n+1)/#)]`
-/

namespace A396701.P12916458653112834802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P12916458653112834802

namespace A396701

/-- `∑{d}[n+1, A007432(#)*A111217((n+1)/#)]` -/
def P12916458653112834802.Spec : Prop :=
  ∀ n, P12916458653112834802.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P8614143962495178557

`∑{d}[n+1, A034761(#)*A130054((n+1)/#)]`
-/

namespace A396701.P8614143962495178557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P8614143962495178557

namespace A396701

/-- `∑{d}[n+1, A034761(#)*A130054((n+1)/#)]` -/
def P8614143962495178557.Spec : Prop :=
  ∀ n, P8614143962495178557.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P17763937902847510649

`∑{d}[n+1, A060648(#)*A124315((n+1)/#)]`
-/

namespace A396701.P17763937902847510649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P17763937902847510649

namespace A396701

/-- `∑{d}[n+1, A060648(#)*A124315((n+1)/#)]` -/
def P17763937902847510649.Spec : Prop :=
  ∀ n, P17763937902847510649.a n = A396701 (n + 1)

end A396701

/-! ## A396701.P13733745834666154097

`∑{d}[n+1, A062367(#)*A206369((n+1)/#)]`
-/

namespace A396701.P13733745834666154097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396701.P13733745834666154097

namespace A396701

/-- `∑{d}[n+1, A062367(#)*A206369((n+1)/#)]` -/
def P13733745834666154097.Spec : Prop :=
  ∀ n, P13733745834666154097.a n = A396701 (n + 1)

end A396701

/-!
# A396702: a(n) = Sum_{d|n} tau_4(d) * sigma(n/d).

The programs for A396702, the canonical program `A396702.P8488418173161308459` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396702 has offset 1).

The definition of A396702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396702.P8488418173161308459

`∑{d}[n+1, A000005(#)*A007430((n+1)/#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A396702

/-- `∑{d}[n+1, A000005(#)*A007430((n+1)/#)]` -/
def P8488418173161308459.Spec : Prop :=
  ∀ n, P8488418173161308459.a n = A396702 (n + 1)

theorem P8488418173161308459.correct : P8488418173161308459.Spec := by
  intro n
  simp only [A396702, Nat.add_sub_cancel]

end A396702

/-! ## A396702.P172415780581448451

`∑{d}[n+1, A396701(#)]`
-/

namespace A396702.P172415780581448451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A396701 d

end

end A396702.P172415780581448451

namespace A396702

/-- `∑{d}[n+1, A396701(#)]` -/
def P172415780581448451.Spec : Prop :=
  ∀ n, P172415780581448451.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P17670922102456871799

`∑{d}[n+1, #*A061200((n+1)/#)]`
-/

namespace A396702.P17670922102456871799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P17670922102456871799

namespace A396702

/-- `∑{d}[n+1, #*A061200((n+1)/#)]` -/
def P17670922102456871799.Spec : Prop :=
  ∀ n, P17670922102456871799.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P5609831233395142269

`∑{d}[n+1, A000203(#)*A007426((n+1)/#)]`
-/

namespace A396702.P5609831233395142269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P5609831233395142269

namespace A396702

/-- `∑{d}[n+1, A000203(#)*A007426((n+1)/#)]` -/
def P5609831233395142269.Spec : Prop :=
  ∀ n, P5609831233395142269.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P14582934772617827618

`∑{d}[n+1, A007425(#)*A007429((n+1)/#)]`
-/

namespace A396702.P14582934772617827618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P14582934772617827618

namespace A396702

/-- `∑{d}[n+1, A007425(#)*A007429((n+1)/#)]` -/
def P14582934772617827618.Spec : Prop :=
  ∀ n, P14582934772617827618.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P15580150519016252132

`∑{d}[n+1, A000010(#)*A034695((n+1)/#)]`
-/

namespace A396702.P15580150519016252132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P15580150519016252132

namespace A396702

/-- `∑{d}[n+1, A000010(#)*A034695((n+1)/#)]` -/
def P15580150519016252132.Spec : Prop :=
  ∀ n, P15580150519016252132.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P12325517997313727665

`∑{d}[n+1, A046951(#)*A062369((n+1)/#)]`
-/

namespace A396702.P12325517997313727665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A062369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P12325517997313727665

namespace A396702

/-- `∑{d}[n+1, A046951(#)*A062369((n+1)/#)]` -/
def P12325517997313727665.Spec : Prop :=
  ∀ n, P12325517997313727665.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P13368662757196231110

`∑{d}[n+1, A007432(#)*A111218((n+1)/#)]`
-/

namespace A396702.P13368662757196231110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P13368662757196231110

namespace A396702

/-- `∑{d}[n+1, A007432(#)*A111218((n+1)/#)]` -/
def P13368662757196231110.Spec : Prop :=
  ∀ n, P13368662757196231110.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P16211140993338064083

`∑{d}[n+1, A062367(#)*A076752((n+1)/#)]`
-/

namespace A396702.P16211140993338064083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P16211140993338064083

namespace A396702

/-- `∑{d}[n+1, A062367(#)*A076752((n+1)/#)]` -/
def P16211140993338064083.Spec : Prop :=
  ∀ n, P16211140993338064083.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P5922345701679371329

`∑{d}[n+1, A060724(#)*A124315((n+1)/#)]`
-/

namespace A396702.P5922345701679371329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P5922345701679371329

namespace A396702

/-- `∑{d}[n+1, A060724(#)*A124315((n+1)/#)]` -/
def P5922345701679371329.Spec : Prop :=
  ∀ n, P5922345701679371329.a n = A396702 (n + 1)

end A396702

/-! ## A396702.P2243105359308617718

`∑{d}[n+1, A035116(#)*A332844((n+1)/#)]`
-/

namespace A396702.P2243105359308617718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P2243105359308617718

namespace A396702

/-- `∑{d}[n+1, A035116(#)*A332844((n+1)/#)]` -/
def P2243105359308617718.Spec : Prop :=
  ∀ n, P2243105359308617718.a n = A396702 (n + 1)

end A396702

/-!
# A396709: Partial sums of A396280.

The programs for A396709, the canonical program `A396709.P12936188025034876792` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396709 has offset 1).

The definition of A396709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396709.P12936188025034876792

`ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396709

/-- `ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12936188025034876792.Spec : Prop :=
  ∀ n, P12936188025034876792.a n = A396709 (n + 1)

theorem P12936188025034876792.correct : P12936188025034876792.Spec := by
  intro n
  simp only [A396709, Nat.add_sub_cancel]

end A396709

/-! ## A396709.P7468256429344206591

`∑[A396280(n+1)]`
-/

namespace A396709.P7468256429344206591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396709.P7468256429344206591

namespace A396709

/-- `∑[A396280(n+1)]` -/
def P7468256429344206591.Spec : Prop :=
  ∀ n, P7468256429344206591.a n = A396709 (n + 1)

end A396709

/-!
# A396712: Expansion of e.g.f. -W_2(-x)/(1 + W_2(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396712, there is no canonical definition to state claims against.
-/

/-! ## A396712.P4683328045760078135

`A396711(A034856(n+2))`
-/

namespace A396712.P4683328045760078135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396711 (A034856 (n + 2)).toNat

end

end A396712.P4683328045760078135

/-!
# A396713: Expansion of e.g.f. -W_3(-x)/(1 + W_3(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396713, there is no canonical definition to state claims against.
-/

/-! ## A396713.P15893168672430733195

`A396711(A141214(n+1))`
-/

namespace A396713.P15893168672430733195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396711 (A141214 (n + 1)).toNat

end

end A396713.P15893168672430733195

/-!
# A396714: Maximum number of regions that can be formed in the plane by drawing n lollipop (or qoppa) shapes of equal radii.

The programs for A396714, the canonical program `A396714.P3439004166036263330` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396714 has offset 0).

The definition of A396714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396714.P3439004166036263330

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=7, a(3)=7, a(4)=4`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396714

/-- `∑[∑[floor(a(n-3))]]` -/
def P3439004166036263330.Spec : Prop :=
  ∀ n, (P3439004166036263330.a n : ℤ) = A396714 n

theorem P3439004166036263330.correct : P3439004166036263330.Spec := by
  intro n
  simp only [A396714]

end A396714

/-! ## A396714.P3245891815849114161

`A056107(n)-n²%3-n`
-/

namespace A396714.P3245891815849114161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n - ((n ^ 2 % 3 : ℕ) : ℤ) - (n : ℤ)

end

end A396714.P3245891815849114161

namespace A396714

/-- `A056107(n)-n²%3-n` -/
def P3245891815849114161.Spec : Prop :=
  ∀ n, P3245891815849114161.a n = A396714 n

end A396714

/-! ## A396714.P11026806407489288707

`A079978(n)+A049450(n)`
-/

namespace A396714.P11026806407489288707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A049450 n

end

end A396714.P11026806407489288707

namespace A396714

/-- `A079978(n)+A049450(n)` -/
def P11026806407489288707.Spec : Prop :=
  ∀ n, P11026806407489288707.a n = A396714 n

end A396714

/-! ## A396714.P5203682966387497098

`A056106(n)-A011655(n)`
-/

namespace A396714.P5203682966387497098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - A011655 n

end

end A396714.P5203682966387497098

namespace A396714

/-- `A056106(n)-A011655(n)` -/
def P5203682966387497098.Spec : Prop :=
  ∀ n, P5203682966387497098.a n = A396714 n

end A396714

/-! ## A396714.P392592647216040337

`A054552(n)-A109340(n)`
-/

namespace A396714.P392592647216040337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n - A109340 n

end

end A396714.P392592647216040337

namespace A396714

/-- `A054552(n)-A109340(n)` -/
def P392592647216040337.Spec : Prop :=
  ∀ n, P392592647216040337.a n = A396714 n

end A396714

/-! ## A396714.P5871350865989117492

`A147534(n+1)+A000567(n)`
-/

namespace A396714.P5871350865989117492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (n + 1) + A000567 n

end

end A396714.P5871350865989117492

namespace A396714

/-- `A147534(n+1)+A000567(n)` -/
def P5871350865989117492.Spec : Prop :=
  ∀ n, P5871350865989117492.a n = A396714 n

end A396714

/-! ## A396714.P13808624297315331329

`A056108(n)-A047271(n+1)`
-/

namespace A396714.P13808624297315331329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - A047271 (n + 1)

end

end A396714.P13808624297315331329

namespace A396714

/-- `A056108(n)-A047271(n+1)` -/
def P13808624297315331329.Spec : Prop :=
  ∀ n, P13808624297315331329.a n = A396714 n

end A396714

/-! ## A396714.P6907980763041634631

`A079978(n)+A000566(n)+A000217(n)`
-/

namespace A396714.P6907980763041634631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A000566 n + A000217 n

end

end A396714.P6907980763041634631

namespace A396714

/-- `A079978(n)+A000566(n)+A000217(n)` -/
def P6907980763041634631.Spec : Prop :=
  ∀ n, P6907980763041634631.a n = A396714 n

end A396714

/-! ## A396714.P6156393307136767349

`A350667(n²)-n`
-/

namespace A396714.P6156393307136767349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 (n ^ 2) - (n : ℤ)

end

end A396714.P6156393307136767349

namespace A396714

/-- `A350667(n²)-n` -/
def P6156393307136767349.Spec : Prop :=
  ∀ n, P6156393307136767349.a n = A396714 n

end A396714

/-! ## A396714.P6951415693451557990

`A350668(n²)-(n+1)`
-/

namespace A396714.P6951415693451557990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 (n ^ 2) - (n + 1 : ℤ)

end

end A396714.P6951415693451557990

namespace A396714

/-- `A350668(n²)-(n+1)` -/
def P6951415693451557990.Spec : Prop :=
  ∀ n, P6951415693451557990.a n = A396714 n

end A396714

/-!
# A396715: Number of semiprimes m with k <= m <= k^2 such that the largest divisor of k*m that is <= sqrt(k*m) equals k.

The programs for A396715, there is no canonical definition to state claims against.
-/

/-! ## A396715.P4464459752273166250

`A163926(n+2)-A396716(n+2)`
-/

namespace A396715.P4464459752273166250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163926 (n + 2) - A396716 (n + 2)

end

end A396715.P4464459752273166250

/-!
# A396716: Number of composite numbers m, Omega(m) >= 3, with k <= m <= k^2 such that the largest divisor of k*m that is <= sqrt(k*m) equals k.

The programs for A396716, there is no canonical definition to state claims against.
-/

/-! ## A396716.P15803052038068975257

`A163926(n+2)-A396715(n+2)`
-/

namespace A396716.P15803052038068975257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163926 (n + 2) - A396715 (n + 2)

end

end A396716.P15803052038068975257

/-!
# A396719: Volume (in unit cubes) of the level-n additive cube fractal in which a central cube of side 2*Pell(n-1) is surrounded by six copies of the previous level (silver-ratio scaling).

The programs for A396719, the canonical program `A396719.P6841675778921449716` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396719 has offset 1).

The definition of A396719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396719.P6841675778921449716

`ogf((1-3x-66x^2-58x^3+5x^4+x^5)/(1-17x+30x^2+162x^3-59x^4-5x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396719

/-- `ogf((1-3x-66x^2-58x^3+5x^4+x^5)/(1-17x+30x^2+162x^3-59x^4-5x^5))` -/
def P6841675778921449716.Spec : Prop :=
  ∀ n, P6841675778921449716.a n = A396719 (n + 1)

theorem P6841675778921449716.correct : P6841675778921449716.Spec := by
  intro n
  simp only [A396719, Nat.add_sub_cancel]

end A396719

/-!
# A396720: Triangle read by rows: row n gives digits of canonical snowball representation of n.

The programs for A396720, there is no canonical definition to state claims against.
-/

/-! ## A396720.P9896572979635427032

`A325406(A209762(n+1))`
-/

namespace A396720.P9896572979635427032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325406 (A209762 (n + 1)).toNat

end

end A396720.P9896572979635427032

/-! ## A396720.P1016032682789745792

`A124010(n+1)%A185319(A332817(n))`
-/

namespace A396720.P1016032682789745792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124010 (n + 1)) (A185319 (A332817 n).toNat)

end

end A396720.P1016032682789745792

/-! ## A396720.P6577324115061843876

`A053692(A118647(n+1))`
-/

namespace A396720.P6577324115061843876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (A118647 (n + 1)).toNat

end

end A396720.P6577324115061843876

/-! ## A396720.P4936319007242788439

`A022329(and(A014665(n+1)+1, -n)!+1)`
-/

namespace A396720.P4936319007242788439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (Nat.factorial (Int.land (A014665 (n + 1) + 1) (-(n : ℤ))).toNat + 1)

end

end A396720.P4936319007242788439

/-!
# A396721: Number of 3-generated groups of order n: groups that have a generating set of size <= 3.

The programs for A396721, there is no canonical definition to state claims against.
-/

/-! ## A396721.P17545233732654446980

`A031218(A000001(n+1)%A378372(3*(n+1)))`
-/

namespace A396721.P17545233732654446980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (Int.tmod (A000001 (n + 1)) (A378372 (3 * (n + 1)))).toNat

end

end A396721.P17545233732654446980

/-!
# A396722: a(n) = (4^n/2) * p(n, 5/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

The programs for A396722, the canonical program `A396722.P14914588847797964893` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396722 has offset 0).

The definition of A396722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396722.P14914588847797964893

`A081294(n)-A115140(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A396722

/-- `A081294(n)-A115140(n)` -/
def P14914588847797964893.Spec : Prop :=
  ∀ n, P14914588847797964893.a n = A396722 n

theorem P14914588847797964893.correct : P14914588847797964893.Spec := by
  intro n
  simp only [A396722]

end A396722

/-! ## A396722.P4173883376686762501

`xor(A081294(n), A120588(n))`
-/

namespace A396722.P4173883376686762501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081294 n) (A120588 n)

end

end A396722.P4173883376686762501

namespace A396722

/-- `xor(A081294(n), A120588(n))` -/
def P4173883376686762501.Spec : Prop :=
  ∀ n, P4173883376686762501.a n = A396722 n

end A396722

/-!
# A396723: a(n) = (-4^n/2) p(n, -1/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

The programs for A396723, there is no canonical definition to state claims against.
-/

/-! ## A396723.P17250709713566593452

`A026741(A002802(n)-A000302(n))`
-/

namespace A396723.P17250709713566593452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002802 n - A000302 n).toNat

end

end A396723.P17250709713566593452

/-!
# A396726: Greatest frequency depth of a word of length n.

The programs for A396726, there is no canonical definition to state claims against.
-/

/-! ## A396726.P15854316535255496218

`A096365(n+1)+1`
-/

namespace A396726.P15854316535255496218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096365 (n + 1) + 1

end

end A396726.P15854316535255496218

/-! ## A396726.P6888971223825086210

`floor(log2(A173140(n+1)))`
-/

namespace A396726.P6888971223825086210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A173140 (n + 1)).toNat

end

end A396726.P6888971223825086210

/-! ## A396726.P2457748277343837772

`A218461((2*n+1)*(n+2))`
-/

namespace A396726.P2457748277343837772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218461 ((2 * n + 1) * (n + 2))

end

end A396726.P2457748277343837772

/-! ## A396726.P3278369624212245374

`A087233(A036704(n))`
-/

namespace A396726.P3278369624212245374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087233 (A036704 n).toNat

end

end A396726.P3278369624212245374

/-! ## A396726.P1589660692863080676

`A087233(A049713(n))`
-/

namespace A396726.P1589660692863080676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087233 (A049713 n).toNat

end

end A396726.P1589660692863080676

/-!
# A396730: Triangle read by rows: T(n,k) = A058399(n,k) + A066633(n,k), 1 <= k <= n.

The programs for A396730, there is no canonical definition to state claims against.
-/

/-! ## A396730.P15594123695356042975

`A066633(n+1)+A058399(n+1)`
-/

namespace A396730.P15594123695356042975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) + A058399 (n + 1)

end

end A396730.P15594123695356042975

/-!
# A396731: Triangle read by rows: T(n,k) = A181187(n,k) + A138785(n,k), 1 <= k <= n.

The programs for A396731, there is no canonical definition to state claims against.
-/

/-! ## A396731.P11600222081624270754

`A181187(n+1)+A138785(n+1)`
-/

namespace A396731.P11600222081624270754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (n + 1) + A138785 (n + 1)

end

end A396731.P11600222081624270754

/-!
# A396732: Number of equivalence classes of n X n binary matrices with all row sums and column sums equal to 4, under row permutations, column permutations, and transposition.

The programs for A396732, there is no canonical definition to state claims against.
-/

/-! ## A396732.P15149823150791466757

`(A000513(n+1)+A000843(n+1))/2`
-/

namespace A396732.P15149823150791466757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000513 (n + 1) + A000843 (n + 1) : ℚ) / 2

end

end A396732.P15149823150791466757

/-!
# A396745: Expansion of e.g.f. -W_2(-x)/(1 - W_2(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396745, there is no canonical definition to state claims against.
-/

/-! ## A396745.P15342118377948110688

`A396744(A034856(n+2))`
-/

namespace A396745.P15342118377948110688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396744 (A034856 (n + 2)).toNat

end

end A396745.P15342118377948110688

/-!
# A396746: Expansion of e.g.f. -W_3(-x)/(1 - W_3(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396746, there is no canonical definition to state claims against.
-/

/-! ## A396746.P14625007186888401219

`A396744(A141214(n+1))`
-/

namespace A396746.P14625007186888401219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396744 (A141214 (n + 1)).toNat

end

end A396746.P14625007186888401219

/-!
# A396749: Number of 2-ball multiplex prime juggling patterns of period n.

The programs for A396749, there is no canonical definition to state claims against.
-/

/-! ## A396749.P1020181175291257323

`A104103(A150190(n+1))`
-/

namespace A396749.P1020181175291257323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A150190 (n + 1)).toNat

end

end A396749.P1020181175291257323

/-! ## A396749.P12578868612134734690

`A248170(A150191(n+1))`
-/

namespace A396749.P12578868612134734690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A150191 (n + 1)).toNat

end

end A396749.P12578868612134734690

/-! ## A396749.P7090559051289289678

`A121536(A094803(n+2))`
-/

namespace A396749.P7090559051289289678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121536 (A094803 (n + 2)).toNat

end

end A396749.P7090559051289289678

/-!
# A396751: Number of 2-ball prime juggling patterns of period n containing the base state <1, 1>.

The programs for A396751, there is no canonical definition to state claims against.
-/

/-! ## A396751.P4874152341257713828

`A005041(A149401(n))`
-/

namespace A396751.P4874152341257713828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A149401 n).toNat

end

end A396751.P4874152341257713828

/-! ## A396751.P15577277642152783329

`A161205(A149486(n))`
-/

namespace A396751.P15577277642152783329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A149486 n).toNat

end

end A396751.P15577277642152783329

/-! ## A396751.P15393233324934562667

`A393253(A149775(n))`
-/

namespace A396751.P15393233324934562667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 (A149775 n).toNat

end

end A396751.P15393233324934562667

/-! ## A396751.P16165898764787356608

`A172471(A163862(n))-n-A358007(2*n+3)`
-/

namespace A396751.P16165898764787356608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A163862 n).toNat - (n : ℤ) - A358007 (2 * n + 3 + 53)

end

end A396751.P16165898764787356608

/-!
# A396752: a(n) = n * floor(sqrt(n)).

The programs for A396752, the canonical program `A396752.P6457167168212834435` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396752 has offset 0).

The definition of A396752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor(sqrt(n))` (program `A396752.P6457167168212834435`, by `A396752.P6457167168212834435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396752.P6457167168212834435

`n*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396752

/-- `n*floor(sqrt(n))` -/
def P6457167168212834435.Spec : Prop :=
  ∀ n, (P6457167168212834435.a n : ℤ) = A396752 n

theorem P6457167168212834435.correct : P6457167168212834435.Spec := by
  intro n
  simp only [A396752]

end A396752

/-! ## A396752.P3066944831886561794

`lcm(n, n*∑[char[(n+1)²]])`
-/

namespace A396752.P3066944831886561794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A396752.P3066944831886561794

namespace A396752

/-- `lcm(n, n*∑[char[(n+1)²]])` -/
def P3066944831886561794.Spec : Prop :=
  ∀ n, (P3066944831886561794.a n : ℤ) = A396752 n

end A396752

/-! ## A396752.P4724537987787256042

`A397371(n)-n`
-/

namespace A396752.P4724537987787256042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397371 n - (n : ℤ)

end

end A396752.P4724537987787256042

namespace A396752

/-- `A397371(n)-n` -/
def P4724537987787256042.Spec : Prop :=
  ∀ n, P4724537987787256042.a n = A396752 n

theorem P4724537987787256042.correct : P4724537987787256042.Spec := by
  intro n
  simp only [A396752, Nat.add_sub_cancel, A396752.P4724537987787256042.a, A396752.P6457167168212834435.a, A397371, A397371.P7818601092111456214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396752

/-! ## A396752.P12369099440305307046

`A001281(2*n*A000196(n))`
-/

namespace A396752.P12369099440305307046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((2 * n : ℤ) * A000196 n).toNat

end

end A396752.P12369099440305307046

namespace A396752

/-- `A001281(2*n*A000196(n))` -/
def P12369099440305307046.Spec : Prop :=
  ∀ n, P12369099440305307046.a n = A396752 n

end A396752

/-! ## A396752.P12054561952232273662

`A004526(2*n*A000196(n))`
-/

namespace A396752.P12054561952232273662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 * n : ℤ) * A000196 n).toNat

end

end A396752.P12054561952232273662

namespace A396752

/-- `A004526(2*n*A000196(n))` -/
def P12054561952232273662.Spec : Prop :=
  ∀ n, P12054561952232273662.a n = A396752 n

end A396752

/-! ## A396752.P5558075230295704758

`A006370(2*n*A000196(n))`
-/

namespace A396752.P5558075230295704758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((2 * n : ℤ) * A000196 n).toNat

end

end A396752.P5558075230295704758

namespace A396752

/-- `A006370(2*n*A000196(n))` -/
def P5558075230295704758.Spec : Prop :=
  ∀ n, P5558075230295704758.a n = A396752 n

end A396752

/-!
# A396753: 

The programs for A396753, there is no canonical definition to state claims against.
-/

/-! ## A396753.P14600755085526460185

`(A000516(n+1)+A399446(n+1))/2`
-/

namespace A396753.P14600755085526460185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000516 (n + 1) + A399446 (n + 1) : ℚ) / 2

end

end A396753.P14600755085526460185

/-!
# A396757: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, n)/gcd(x_1, x_2, x_3, x_4, n).

The programs for A396757, the canonical program `A396757.P17629373591554347018` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396757 has offset 1).

The definition of A396757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396757.P17629373591554347018

`∑{d}[n+1, A002618(#)*A372952((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A396757

/-- `∑{d}[n+1, A002618(#)*A372952((n+1)/#)]` -/
def P17629373591554347018.Spec : Prop :=
  ∀ n, P17629373591554347018.a n = A396757 (n + 1)

theorem P17629373591554347018.correct : P17629373591554347018.Spec := by
  intro n
  simp only [A396757, Nat.add_sub_cancel]

end A396757

/-! ## A396757.P16895131675925414590

`∑{d}[n+1, A189393(#)*A373061((n+1)/#)]`
-/

namespace A396757.P16895131675925414590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A373061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396757.P16895131675925414590

namespace A396757

/-- `∑{d}[n+1, A189393(#)*A373061((n+1)/#)]` -/
def P16895131675925414590.Spec : Prop :=
  ∀ n, P16895131675925414590.a n = A396757 (n + 1)

end A396757

/-! ## A396757.P177267097497612365

`∑{d}[n+1, A328641(#)*A372926((n+1)/#)]`
-/

namespace A396757.P177267097497612365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396757.P177267097497612365

namespace A396757

/-- `∑{d}[n+1, A328641(#)*A372926((n+1)/#)]` -/
def P177267097497612365.Spec : Prop :=
  ∀ n, P177267097497612365.a n = A396757 (n + 1)

end A396757

/-! ## A396757.P7565201760974248041

`∑{d}[n+1, A373059(#)*A379833((n+1)/#)]`
-/

namespace A396757.P7565201760974248041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A373059 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396757.P7565201760974248041

namespace A396757

/-- `∑{d}[n+1, A373059(#)*A379833((n+1)/#)]` -/
def P7565201760974248041.Spec : Prop :=
  ∀ n, P7565201760974248041.a n = A396757 (n + 1)

end A396757

/-!
# A396758: Larger term of pairs of consecutive primes of the form p, p+6 where both primes eventually reach a value of 1 under iteration of the sums of the squares of their digits and the first iteration of both terms are also prime.

The programs for A396758, there is no canonical definition to state claims against.
-/

/-! ## A396758.P457141521912028382

`A396234(n+1)+6`
-/

namespace A396758.P457141521912028382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396234 (n + 1) + 6

end

end A396758.P457141521912028382

/-! ## A396758.P1832469028773626751

`A151800(A396234(n+1))`
-/

namespace A396758.P1832469028773626751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A396234 (n + 1)).toNat

end

end A396758.P1832469028773626751

/-!
# A396762: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection without having centers of all three triangles in a same symmetrical axis.

The programs for A396762, there is no canonical definition to state claims against.
-/

/-! ## A396762.P9936943661177591468

`A396882(n+1)+A071239(n)`
-/

namespace A396762.P9936943661177591468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396882 (n + 1) + A071239 n

end

end A396762.P9936943661177591468

/-!
# A396763: Numbers whose average of aliquot divisors and average of divisors are both integers.

The programs for A396763, there is no canonical definition to state claims against.
-/

/-! ## A396763.P10726504951127184083

`∪[A065091(n+1), A396764(n+1)]`
-/

namespace A396763.P10726504951127184083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396763.P10726504951127184083

/-! ## A396763.P5319820140862088013

`filter[A023884(n+1), A245656(#)]`
-/

namespace A396763.P5319820140862088013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A396763.P5319820140862088013

/-! ## A396763.P1949801793226338851

`∩[A003601(n+1), A023884(n+1)]`
-/

namespace A396763.P1949801793226338851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396763.P1949801793226338851

/-! ## A396763.P6437783793631511963

`∩[A023884(n+1), A378501(n+1)]`
-/

namespace A396763.P6437783793631511963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396763.P6437783793631511963

/-! ## A396763.P14357235069431633517

`filter[A141213(n), A192280(#)]`
-/

namespace A396763.P14357235069431633517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A396763.P14357235069431633517

/-!
# A396764: Nonprimes whose average of aliquot divisors and average of divisors are both integers.

The programs for A396764, there is no canonical definition to state claims against.
-/

/-! ## A396764.P9509928376914526006

`filter[A396763(n+1), A005171(#)]`
-/

namespace A396764.P9509928376914526006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A396764.P9509928376914526006

/-! ## A396764.P16795272979797321397

`filter[A396763(n+1), A066247(#)]`
-/

namespace A396764.P16795272979797321397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A396764.P16795272979797321397

/-! ## A396764.P1949615474543332106

`filter[A396763(n+1), A202238(#)]`
-/

namespace A396764.P1949615474543332106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A396764.P1949615474543332106

/-! ## A396764.P113030902202381471

`∩[A023885(n+1), A396763(n+1)]`
-/

namespace A396764.P113030902202381471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P113030902202381471

/-! ## A396764.P16451670348495523022

`∩[A002808(n+1), A396763(n+1)]`
-/

namespace A396764.P16451670348495523022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P16451670348495523022

/-! ## A396764.P3981394891157484515

`∩[A018252(n+1), A396763(n+1)]`
-/

namespace A396764.P3981394891157484515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P3981394891157484515

/-! ## A396764.P13563605579883935331

`∩[A141468(n+1), A396763(n+1)]`
-/

namespace A396764.P13563605579883935331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P13563605579883935331

/-! ## A396764.P7529371799113238292

`filter[A023885(n+1), A245656(#)]`
-/

namespace A396764.P7529371799113238292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A396764.P7529371799113238292

/-! ## A396764.P11589065135479195738

`∩[A023883(n+1), A023884(n+1)]`
-/

namespace A396764.P11589065135479195738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P11589065135479195738

/-! ## A396764.P16443258805871603310

`∩[A023883(n+1), A023885(n+1)]`
-/

namespace A396764.P16443258805871603310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P16443258805871603310

/-! ## A396764.P4230018137727357604

`∩[A023883(n+1), A396763(n+1)]`
-/

namespace A396764.P4230018137727357604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P4230018137727357604

/-! ## A396764.P7237891995086408074

`∩[A054020(n+1), A396763(n+1)]`
-/

namespace A396764.P7237891995086408074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P7237891995086408074

/-! ## A396764.P12210559094752696077

`∩[A003601(n+1), A023885(n+1)]`
-/

namespace A396764.P12210559094752696077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P12210559094752696077

/-! ## A396764.P12438652502411707346

`∩[A082092(n+1), A396763(n+1)]`
-/

namespace A396764.P12438652502411707346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P12438652502411707346

/-! ## A396764.P614002313974084516

`∩[A138592(n+1), A396763(n+1)]`
-/

namespace A396764.P614002313974084516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P614002313974084516

/-! ## A396764.P433335120899660821

`∩[A343311(n+1), A396763(n+1)]`
-/

namespace A396764.P433335120899660821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P433335120899660821

/-! ## A396764.P5242629224790734070

`∩[A387319(n+1), A396763(n+1)]`
-/

namespace A396764.P5242629224790734070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P5242629224790734070

/-! ## A396764.P1493671522087721882

`∩[A056653(n+1), A396763(n+1)]`
-/

namespace A396764.P1493671522087721882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P1493671522087721882

/-! ## A396764.P14554123895630577073

`∩[A065090(n+1), A396763(n+1)]`
-/

namespace A396764.P14554123895630577073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P14554123895630577073

/-! ## A396764.P8953385715529798990

`∩[A111774(n+1), A396763(n+1)]`
-/

namespace A396764.P8953385715529798990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396764.P8953385715529798990

/-!
# A396765: Number of distinct types of connected cyclic Alexander quandles of order 2n-1.

The programs for A396765, there is no canonical definition to state claims against.
-/

/-! ## A396765.P15265517939193805343

`A073093(or(1, A045883(n)))`
-/

namespace A396765.P15265517939193805343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Int.lor 1 (A045883 n)).toNat

end

end A396765.P15265517939193805343

/-! ## A396765.P18316450629878656767

`A073093(A045883(n)+floor(1/(n+1)))`
-/

namespace A396765.P18316450629878656767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A045883 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A396765.P18316450629878656767

/-!
# A396768: a(n) is the number of primes p < q = prime(n) for which there exists an integer k such that (p, q, k) is a Heronian triangle.

The programs for A396768, there is no canonical definition to state claims against.
-/

/-! ## A396768.P8028222026098907579

`A166348(A067988(n+1))`
-/

namespace A396768.P8028222026098907579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166348 (A067988 (n + 1)).toNat

end

end A396768.P8028222026098907579

/-! ## A396768.P11669702790581748989

`A085976(A256579(n+2))`
-/

namespace A396768.P11669702790581748989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085976 (A256579 (n + 2)).toNat

end

end A396768.P11669702790581748989

/-! ## A396768.P14694458666634227563

`A371107(A349052(n))%A001918(n+2)`
-/

namespace A396768.P14694458666634227563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371107 (A349052 n).toNat) (A001918 (n + 2))

end

end A396768.P14694458666634227563

/-! ## A396768.P2444387252361806466

`A316864(lcm(A055112(n), A196050(n+1)))`
-/

namespace A396768.P2444387252361806466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (Int.lcm (A055112 n) (A196050 (n + 1)))

end

end A396768.P2444387252361806466

/-! ## A396768.P16335856105917412869

`A085979(A085787(3*n+4)+A007053(n))`
-/

namespace A396768.P16335856105917412869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085979 (A085787 (3 * n + 4) + A007053 n).toNat

end

end A396768.P16335856105917412869

/-!
# A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

The programs for A396769, the canonical program `A396769.P5317963927150121089` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396769 has offset 1).

The definition of A396769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A396769

/-- `A003071(n+1)+n` -/
def P5317963927150121089.Spec : Prop :=
  ∀ n, P5317963927150121089.a n = A396769 (n + 1)

theorem P5317963927150121089.correct : P5317963927150121089.Spec := by
  intro n
  simp only [A396769, Nat.add_sub_cancel]

end A396769

/-! ## A396769.P7938086074289242935

`∑[A061338(n)]+n`
-/

namespace A396769.P7938086074289242935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A396769.P7938086074289242935

namespace A396769

/-- `∑[A061338(n)]+n` -/
def P7938086074289242935.Spec : Prop :=
  ∀ n, P7938086074289242935.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P9780809328465612159

`A298011(n)+A187059(n)+n`
-/

namespace A396769.P9780809328465612159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298011 n + A187059 n + (n : ℤ)

end

end A396769.P9780809328465612159

namespace A396769

/-- `A298011(n)+A187059(n)+n` -/
def P9780809328465612159.Spec : Prop :=
  ∀ n, P9780809328465612159.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P8642527205306824304

`A136013(n)+∑[A000120(n)]+n`
-/

namespace A396769.P8642527205306824304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 n + ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A396769.P8642527205306824304

namespace A396769

/-- `A136013(n)+∑[A000120(n)]+n` -/
def P8642527205306824304.Spec : Prop :=
  ∀ n, P8642527205306824304.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P14021268854889327969

`a(n-1)+A006519(n)+A000120(n)` with `a(0)=0`
-/

namespace A396769.P14021268854889327969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A006519 n + A000120 n

end

end A396769.P14021268854889327969

namespace A396769

/-- `a(n-1)+A006519(n)+A000120(n)` -/
def P14021268854889327969.Spec : Prop :=
  ∀ n, P14021268854889327969.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P16736902070272670078

`A000788(2*n)-A083741(n)`
-/

namespace A396769.P16736902070272670078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 * n) - A083741 n

end

end A396769.P16736902070272670078

namespace A396769

/-- `A000788(2*n)-A083741(n)` -/
def P16736902070272670078.Spec : Prop :=
  ∀ n, P16736902070272670078.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P10674412613202673029

`A000788(2*n)-A298043(n)+n`
-/

namespace A396769.P10674412613202673029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 * n) - A298043 n + (n : ℤ)

end

end A396769.P10674412613202673029

namespace A396769

/-- `A000788(2*n)-A298043(n)+n` -/
def P10674412613202673029.Spec : Prop :=
  ∀ n, P10674412613202673029.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P9443039639777327220

`n-A001489(∑[A061338(n)])`
-/

namespace A396769.P9443039639777327220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A396769.P9443039639777327220

namespace A396769

/-- `n-A001489(∑[A061338(n)])` -/
def P9443039639777327220.Spec : Prop :=
  ∀ n, P9443039639777327220.a n = A396769 (n + 1)

end A396769

/-!
# A396770: Number of unlabeled connected nonnegative partially ordered sets ("posets") of size n and Dynkin type A.

The programs for A396770, there is no canonical definition to state claims against.
-/

/-! ## A396770.P9300331819736286727

`A067086(A027071(n+1))`
-/

namespace A396770.P9300331819736286727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A027071 (n + 1)).toNat

end

end A396770.P9300331819736286727

/-! ## A396770.P17912190509634580278

`A006992(n+1)-A000002(A000244(n))`
-/

namespace A396770.P17912190509634580278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (n + 1) - A000002 (A000244 n).toNat

end

end A396770.P17912190509634580278

/-! ## A396770.P17642242054712583260

`A392943(n+4)+A324700(A060945(n))`
-/

namespace A396770.P17642242054712583260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392943 (n + 4) + A324700 (A060945 n).toNat

end

end A396770.P17642242054712583260

/-!
# A396771: Second least non-divisor of n.

The programs for A396771, there is no canonical definition to state claims against.
-/

/-! ## A396771.P5103874770199827966

`A398062(∑[n+2])`
-/

namespace A396771.P5103874770199827966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396771.P5103874770199827966

/-!
# A396772: Expansion of x*(-1 + 4*x - 3*x^2 + x^3)/((1 - x)^2 * (1 - x + x^2)).

The programs for A396772, the canonical program `A396772.P17158471524454405549` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396772 has offset 0).

The definition of A396772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))` (program `A396772.P17158471524454405549`, by `A396772.P17158471524454405549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396772.P17158471524454405549

`ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396772

/-- `ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))` -/
def P17158471524454405549.Spec : Prop :=
  ∀ n, P17158471524454405549.a n = A396772 n

theorem P17158471524454405549.correct : P17158471524454405549.Spec := by
  intro n
  simp only [A396772]

end A396772

/-! ## A396772.P9227977840855366882

`3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=4, a(4)=6`
-/

namespace A396772.P9227977840855366882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 4, 6] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A396772.P9227977840855366882

namespace A396772

/-- `3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` -/
def P9227977840855366882.Spec : Prop :=
  ∀ n, P9227977840855366882.a n = A396772 n

end A396772

/-! ## A396772.P18202670759132810657

`1-A131290(n)+n`
-/

namespace A396772.P18202670759132810657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131290 n + (n : ℤ)

end

end A396772.P18202670759132810657

namespace A396772

/-- `1-A131290(n)+n` -/
def P18202670759132810657.Spec : Prop :=
  ∀ n, P18202670759132810657.a n = A396772 n

end A396772

/-! ## A396772.P14215299421683688736

`A028310(n)-A057079(n)`
-/

namespace A396772.P14215299421683688736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A057079 n

end

end A396772.P14215299421683688736

namespace A396772

/-- `A028310(n)-A057079(n)` -/
def P14215299421683688736.Spec : Prop :=
  ∀ n, P14215299421683688736.a n = A396772 n

end A396772

/-! ## A396772.P10901362905383363807

`A057079(n+3)+A028310(n)`
-/

namespace A396772.P10901362905383363807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 3) + A028310 n

end

end A396772.P10901362905383363807

namespace A396772

/-- `A057079(n+3)+A028310(n)` -/
def P10901362905383363807.Spec : Prop :=
  ∀ n, P10901362905383363807.a n = A396772 n

end A396772

/-! ## A396772.P15678093009129917302

`log2(A011782(n))+1-A057079(n)`
-/

namespace A396772.P15678093009129917302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A011782 n : ℝ) + 1 - (A057079 n : ℝ)

end

end A396772.P15678093009129917302

namespace A396772

/-- `log2(A011782(n))+1-A057079(n)` -/
def P15678093009129917302.Spec : Prop :=
  ∀ n, P15678093009129917302.a n = (A396772 n : ℝ)

end A396772

/-! ## A396772.P9733820508148446407

`A132736(n)-A143100(n+1)`
-/

namespace A396772.P9733820508148446407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n - A143100 (n + 1)

end

end A396772.P9733820508148446407

namespace A396772

/-- `A132736(n)-A143100(n+1)` -/
def P9733820508148446407.Spec : Prop :=
  ∀ n, P9733820508148446407.a n = A396772 n

end A396772

/-! ## A396772.P11014282444367741794

`A007318(A152947(n+2))-A057079(n)`
-/

namespace A396772.P11014282444367741794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A152947 (n + 2)).toNat - A057079 n

end

end A396772.P11014282444367741794

namespace A396772

/-- `A007318(A152947(n+2))-A057079(n)` -/
def P11014282444367741794.Spec : Prop :=
  ∀ n, P11014282444367741794.a n = A396772 n

end A396772

/-!
# A396776: Square array read by upwards antidiagonals: T(p,q) is the number cells required to completely surround a single cell of the regular tiling with Schläfli symbol {p,q}.

The programs for A396776, the canonical program `A396776.P18268578886540690482` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396776 has offset 3).

The definition of A396776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396776.P5577163010495876450

`T(n-1,k-1)+row(n)+3-col(n)` with `a(0)=3`
-/

namespace A396776.P5577163010495876450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ) + 3 - (SequenceMachineLib.triCol n : ℤ)

end

end A396776.P5577163010495876450

namespace A396776

/-- `T(n-1,k-1)+row(n)+3-col(n)` -/
def P5577163010495876450.Spec : Prop :=
  ∀ n, P5577163010495876450.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P1899494426994487834

`(col(n)+1)*(row(n)-col(n)+3)`
-/

namespace A396776.P1899494426994487834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 3)

end

end A396776.P1899494426994487834

namespace A396776

/-- `(col(n)+1)*(row(n)-col(n)+3)` -/
def P1899494426994487834.Spec : Prop :=
  ∀ n, P1899494426994487834.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P18268578886540690482

`2*n+3-A073254(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396776

/-- `2*n+3-A073254(n)` -/
def P18268578886540690482.Spec : Prop :=
  ∀ n, P18268578886540690482.a n = A396776 (n + 3)

theorem P18268578886540690482.correct : P18268578886540690482.Spec := by
  intro n
  simp only [A396776, Nat.add_sub_cancel]

end A396776

/-! ## A396776.P11161401721479025294

`A128139(n)+A108872(n+1)`
-/

namespace A396776.P11161401721479025294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A108872 (n + 1)

end

end A396776.P11161401721479025294

namespace A396776

/-- `A128139(n)+A108872(n+1)` -/
def P11161401721479025294.Spec : Prop :=
  ∀ n, P11161401721479025294.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P18321170835904496284

`A173395(n+1)+A002262(n)-A004736(n+1)`
-/

namespace A396776.P18321170835904496284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) + (A002262 n - A004736 (n + 1))

end

end A396776.P18321170835904496284

namespace A396776

/-- `A173395(n+1)+A002262(n)-A004736(n+1)` -/
def P18321170835904496284.Spec : Prop :=
  ∀ n, P18321170835904496284.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P8950106704430768055

`A002260(n+1)+A003991(n+1)+A002260(n+1)`
-/

namespace A396776.P8950106704430768055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A003991 (n + 1) + A002260 (n + 1))

end

end A396776.P8950106704430768055

namespace A396776

/-- `A002260(n+1)+A003991(n+1)+A002260(n+1)` -/
def P8950106704430768055.Spec : Prop :=
  ∀ n, P8950106704430768055.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P3173771950448466247

`A003991(A111650(n+1)+n+2)`
-/

namespace A396776.P3173771950448466247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A111650 (n + 1) + (n + 2 : ℤ)).toNat

end

end A396776.P3173771950448466247

namespace A396776

/-- `A003991(A111650(n+1)+n+2)` -/
def P3173771950448466247.Spec : Prop :=
  ∀ n, P3173771950448466247.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P17207740821714610536

`A074294(2*(n+1))+A003991(n+1)`
-/

namespace A396776.P17207740821714610536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (2 * (n + 1)) + A003991 (n + 1)

end

end A396776.P17207740821714610536

namespace A396776

/-- `A074294(2*(n+1))+A003991(n+1)` -/
def P17207740821714610536.Spec : Prop :=
  ∀ n, P17207740821714610536.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P4904417286923044873

`A158894(n+1)+A059036(n)`
-/

namespace A396776.P4904417286923044873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158894 (n + 1) + A059036 n

end

end A396776.P4904417286923044873

namespace A396776

/-- `A158894(n+1)+A059036(n)` -/
def P4904417286923044873.Spec : Prop :=
  ∀ n, P4904417286923044873.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P11351330316897026293

`A287896(A136318(n+1))`
-/

namespace A396776.P11351330316897026293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A136318 (n + 1)).toNat

end

end A396776.P11351330316897026293

namespace A396776

/-- `A287896(A136318(n+1))` -/
def P11351330316897026293.Spec : Prop :=
  ∀ n, P11351330316897026293.a n = A396776 (n + 3)

end A396776

/-!
# A396778: Perfect powers not representable as sums of two squares.

The programs for A396778, there is no canonical definition to state claims against.
-/

/-! ## A396778.P11010927400920624192

`filter[A111307(n), A038189(#)]`
-/

namespace A396778.P11010927400920624192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A396778.P11010927400920624192

/-! ## A396778.P648254138459000295

`filter[A111307(n), A089013(#)]`
-/

namespace A396778.P648254138459000295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A396778.P648254138459000295

/-! ## A396778.P11356436331081721044

`filter[A001597(n+1), A038189(#)]`
-/

namespace A396778.P11356436331081721044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A396778.P11356436331081721044

/-! ## A396778.P17842196415917213021

`filter[A001597(n+1), A089013(#)]`
-/

namespace A396778.P17842196415917213021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A396778.P17842196415917213021

/-! ## A396778.P8506079277146949289

`filter[A070265(n+1), A038189(#)]`
-/

namespace A396778.P8506079277146949289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A396778.P8506079277146949289

/-!
# A396779: Numbers k such that there are no pairs (x,y) whose product is k with x + y or |x - y| a square.

The programs for A396779, there is no canonical definition to state claims against.
-/

/-! ## A396779.P17804268288760457021

`comp[A394904(n+1)]`
-/

namespace A396779.P17804268288760457021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396779.P17804268288760457021

/-! ## A396779.P1558988313601785991

`A254764(A014957(n+2))`
-/

namespace A396779.P1558988313601785991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (A014957 (n + 2)).toNat

end

end A396779.P1558988313601785991

/-! ## A396779.P6519932485472002737

`lt[A143574(A111516(n)), A000035(n)]`
-/

namespace A396779.P6519932485472002737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 (A111516 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396779.P6519932485472002737

/-! ## A396779.P16585147126540831033

`or(A114889(2*(n+2)), A187596(A079425(n+1)))`
-/

namespace A396779.P16585147126540831033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114889 (2 * (n + 2))) (A187596 (A079425 (n + 1)).toNat)

end

end A396779.P16585147126540831033

/-!
# A396781: a(n) is the largest integer of the form r^k (with 0 < r < n and k > 0) whose base-n digital root is r, and whose number of digits in base-n is k.

The programs for A396781, there is no canonical definition to state claims against.
-/

/-! ## A396781.P17426751557107182487

`(n+1)^A031435(n+1)`
-/

namespace A396781.P17426751557107182487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A031435 (n + 1) : ℤ)

end

end A396781.P17426751557107182487

/-! ## A396781.P13023680802958070393

`A003320(A377206(n+2)+n)`
-/

namespace A396781.P13023680802958070393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (A377206 (n + 2) + (n : ℤ)).toNat

end

end A396781.P13023680802958070393

/-! ## A396781.P12364767513103651861

`A003320(A031435(n+1)+n+1)`
-/

namespace A396781.P12364767513103651861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (A031435 (n + 1) + (n + 1 : ℤ)).toNat

end

end A396781.P12364767513103651861

/-! ## A396781.P10744358450336813333

`A002473(n+1)^A056239(A001700(n))`
-/

namespace A396781.P10744358450336813333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) ^ (A056239 (A001700 n).toNat : ℤ)

end

end A396781.P10744358450336813333

/-!
# A396782: Index of 2^n - 1 in A007665.

The programs for A396782, there is no canonical definition to state claims against.
-/

/-! ## A396782.P11027290548631797535

`∑[A290251(n!)]`
-/

namespace A396782.P11027290548631797535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396782.P11027290548631797535

/-! ## A396782.P13819087576717541160

`A050330(A110286(n))`
-/

namespace A396782.P13819087576717541160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A110286 n).toNat

end

end A396782.P13819087576717541160

/-! ## A396782.P3232767067761060539

`A050330(A175805(n))`
-/

namespace A396782.P3232767067761060539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A175805 n).toNat

end

end A396782.P3232767067761060539

/-! ## A396782.P3497701479704653588

`A106744(A167385(n))`
-/

namespace A396782.P3497701479704653588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A167385 n).toNat

end

end A396782.P3497701479704653588

/-! ## A396782.P10918819964915462365

`A106744(A265061(n))`
-/

namespace A396782.P10918819964915462365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A265061 n).toNat

end

end A396782.P10918819964915462365

/-!
# A396783: Index of 2^n + 1 in A182058.

The programs for A396783, there is no canonical definition to state claims against.
-/

/-! ## A396783.P5639487749038382019

`A341936(A104892(n+1))`
-/

namespace A396783.P5639487749038382019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A104892 (n + 1)).toNat

end

end A396783.P5639487749038382019

/-! ## A396783.P5251796566864795385

`A376138(A319733(n+1))`
-/

namespace A396783.P5251796566864795385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376138 (A319733 (n + 1)).toNat

end

end A396783.P5251796566864795385

/-! ## A396783.P15057541970508251953

`A341936(A378570(n+2))`
-/

namespace A396783.P15057541970508251953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A378570 (n + 2)).toNat

end

end A396783.P15057541970508251953

/-!
# A396788: (10^n)-th brilliant number.

The programs for A396788, there is no canonical definition to state claims against.
-/

/-! ## A396788.P8603284926278576519

`A078972(10^n)`
-/

namespace A396788.P8603284926278576519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (10 ^ n)

end

end A396788.P8603284926278576519

/-!
# A396797: G.f. satisfies A(x) = x + A^3(x)*A^4(x).

The programs for A396797, there is no canonical definition to state claims against.
-/

/-! ## A396797.P3451259435286212859

`A241718(A059859(n))`
-/

namespace A396797.P3451259435286212859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241718 (A059859 n).toNat

end

end A396797.P3451259435286212859

/-!
# A396798: G.f. satisfies A(x) = x + A^4(x)*A^5(x).

The programs for A396798, there is no canonical definition to state claims against.
-/

/-! ## A396798.P13391280030043513269

`A113232(A274571(n)-A048105(n+1))`
-/

namespace A396798.P13391280030043513269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A274571 n - A048105 (n + 1)).toNat

end

end A396798.P13391280030043513269

/-!
# A396799: E.g.f. satisfies A(x) = exp(-x) * A(A(x)).

The programs for A396799, there is no canonical definition to state claims against.
-/

/-! ## A396799.P4020372486654454281

`(n+1)*A087961(n)`
-/

namespace A396799.P4020372486654454281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087961 n

end

end A396799.P4020372486654454281

