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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
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
# A396700: Numbers k >= 2 such that sqrt(k*b + c) = sqrt(b) + c for some integers b >= 1 and 0 <= c < k.

The programs for A396700, there is no canonical definition to state claims against.
-/

/-! ## A396700.P2474757981563762278

`lt[A359194(A364192(3*(n+1))), A278354(n+1)]`
-/

namespace A396700.P2474757981563762278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359194 (A364192 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396700.P2474757981563762278

/-!
# A396701: a(n) = Sum_{d|n} tau_3(d) * sigma(n/d).

The programs for A396701, the canonical program `A396701.P6362032344804532156` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396701 has offset 1).

The definition of A396701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396701.P6362032344804532156

`∑{d}[n+1, A007430(#)]`

The canonical program, it is in `Seq.B005.C002`.
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

The programs for A396702, the canonical program `A396702.P8488418173161308459` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396702 has offset 1).

The definition of A396702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396702.P8488418173161308459

`∑{d}[n+1, A000005(#)*A007430((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
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
# A396703: Number of n X n binary matrices with trivial stabilizer under independent permutations of rows and columns, up to such permutations.

The programs for A396703, there is no canonical definition to state claims against.
-/

/-! ## A396703.P8158891002215100323

`A111127(A000142(n))+1`
-/

namespace A396703.P8158891002215100323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111127 (A000142 n).toNat + 1

end

end A396703.P8158891002215100323

/-!
# A396709: Partial sums of A396280.

The programs for A396709, the canonical program `A396709.P12936188025034876792` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396709 has offset 1).

The definition of A396709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396709.P12936188025034876792

`ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396709

/-- `ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12936188025034876792.Spec : Prop :=
  ∀ n, P12936188025034876792.a n = A396709 (n + 1)

theorem P12936188025034876792.correct : P12936188025034876792.Spec := by
  intro n
  simp only [A396709, Nat.add_sub_cancel]

end A396709

/-! ## A396709.P9460427100067899232

`∑[A396280(1+n)]`
-/

namespace A396709.P9460427100067899232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396280 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396709.P9460427100067899232

namespace A396709

/-- `∑[A396280(1+n)]` -/
def P9460427100067899232.Spec : Prop :=
  ∀ n, P9460427100067899232.a n = A396709 (n + 1)

end A396709

/-! ## A396709.P18268313844132471143

`A396280(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A396709.P18268313844132471143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A396280 (n + 1) + a (n - 1)

end

end A396709.P18268313844132471143

namespace A396709

/-- `A396280(n+1)+a(n-1)` -/
def P18268313844132471143.Spec : Prop :=
  ∀ n, P18268313844132471143.a n = A396709 (n + 1)

end A396709

/-!
# A396710: Number of unordered factorizations of n into exactly k squarefree factors, where k is the maximum exponent in the prime factorization of n.

The programs for A396710, the canonical program `A396710.P10226979819799223403` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396710 has offset 1).

The definition of A396710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396710.P10226979819799223403

`A259936(A066636(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A396710

/-- `A259936(A066636(n+1))` -/
def P10226979819799223403.Spec : Prop :=
  ∀ n, P10226979819799223403.a n = A396710 (n + 1)

theorem P10226979819799223403.correct : P10226979819799223403.Spec := by
  intro n
  simp only [A396710, Nat.add_sub_cancel]

end A396710

/-! ## A396710.P101748550496861042

`A045778(A320655((n+1)²))`
-/

namespace A396710.P101748550496861042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A320655 ((n + 1) ^ 2)).toNat

end

end A396710.P101748550496861042

namespace A396710

/-- `A045778(A320655((n+1)²))` -/
def P101748550496861042.Spec : Prop :=
  ∀ n, P101748550496861042.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P13838473723478805280

`(A213217(A303838(n+1))+1)%2+1`
-/

namespace A396710.P13838473723478805280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213217 (A303838 (n + 1)).toNat + 1) 2 + 1

end

end A396710.P13838473723478805280

namespace A396710

/-- `(A213217(A303838(n+1))+1)%2+1` -/
def P13838473723478805280.Spec : Prop :=
  ∀ n, P13838473723478805280.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P18084147287302681804

`A333381(A050320(n+1)²)`
-/

namespace A396710.P18084147287302681804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A050320 (n + 1) ^ 2).toNat

end

end A396710.P18084147287302681804

namespace A396710

/-- `A333381(A050320(n+1)²)` -/
def P18084147287302681804.Spec : Prop :=
  ∀ n, P18084147287302681804.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P14424498464024421066

`A112624(A096825(n+1)*A136207(n+1))`
-/

namespace A396710.P14424498464024421066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A096825 (n + 1) * A136207 (n + 1)).toNat

end

end A396710.P14424498464024421066

namespace A396710

/-- `A112624(A096825(n+1)*A136207(n+1))` -/
def P14424498464024421066.Spec : Prop :=
  ∀ n, P14424498464024421066.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P3961400309916755278

`A050320(A050320(n+1)%A186509(2*(n+1)))`
-/

namespace A396710.P3961400309916755278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (Int.tmod (A050320 (n + 1)) (A186509 (2 * (n + 1)))).toNat

end

end A396710.P3961400309916755278

namespace A396710

/-- `A050320(A050320(n+1)%A186509(2*(n+1)))` -/
def P3961400309916755278.Spec : Prop :=
  ∀ n, P3961400309916755278.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P11646893559246613381

`ceil(A033715((A050320(n+1)-1)!+1)/4)`
-/

namespace A396710.P11646893559246613381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033715 (Nat.factorial (A050320 (n + 1) - 1).toNat + 1) : ℚ) / 4⌉

end

end A396710.P11646893559246613381

namespace A396710

/-- `ceil(A033715((A050320(n+1)-1)!+1)/4)` -/
def P11646893559246613381.Spec : Prop :=
  ∀ n, P11646893559246613381.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P16540883168677351788

`A112624(A000040(2*n+3)*A096825(n+1))`
-/

namespace A396710.P16540883168677351788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A000040 (2 * n + 3) * A096825 (n + 1)).toNat

end

end A396710.P16540883168677351788

namespace A396710

/-- `A112624(A000040(2*n+3)*A096825(n+1))` -/
def P16540883168677351788.Spec : Prop :=
  ∀ n, P16540883168677351788.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P6224159056377918710

`A112624(A023201(n+1)*A096825(n+1))`
-/

namespace A396710.P6224159056377918710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A023201 (n + 1) * A096825 (n + 1)).toNat

end

end A396710.P6224159056377918710

namespace A396710

/-- `A112624(A023201(n+1)*A096825(n+1))` -/
def P6224159056377918710.Spec : Prop :=
  ∀ n, P6224159056377918710.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P344874009220272946

`A050320(A050320(n+1)%A399539(n+1))`
-/

namespace A396710.P344874009220272946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (Int.tmod (A050320 (n + 1)) (A399539 (n + 1))).toNat

end

end A396710.P344874009220272946

namespace A396710

/-- `A050320(A050320(n+1)%A399539(n+1))` -/
def P344874009220272946.Spec : Prop :=
  ∀ n, P344874009220272946.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P16150926436945523434

`A000110(A323022(n+1)^A057521(2*n+1))`
-/

namespace A396710.P16150926436945523434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway ((A323022 (n + 1) : ℚ) ^ (A057521 (2 * n + 1) : ℤ))).toNat

end

end A396710.P16150926436945523434

namespace A396710

/-- `A000110(A323022(n+1)^A057521(2*n+1))` -/
def P16150926436945523434.Spec : Prop :=
  ∀ n, P16150926436945523434.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P10511427212475542709

`A306023(A323022(n+1)^A057521(2*n+1))`
-/

namespace A396710.P10511427212475542709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306023 (SequenceMachineLib.roundAway ((A323022 (n + 1) : ℚ) ^ (A057521 (2 * n + 1) : ℤ))).toNat

end

end A396710.P10511427212475542709

namespace A396710

/-- `A306023(A323022(n+1)^A057521(2*n+1))` -/
def P10511427212475542709.Spec : Prop :=
  ∀ n, P10511427212475542709.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P4295490296118129341

`A323022(n+1)^A323022(A400955(n+1))`
-/

namespace A396710.P4295490296118129341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323022 (n + 1) : ℚ) ^ (A323022 (A400955 (n + 1)).toNat : ℤ)

end

end A396710.P4295490296118129341

namespace A396710

/-- `A323022(n+1)^A323022(A400955(n+1))` -/
def P4295490296118129341.Spec : Prop :=
  ∀ n, P4295490296118129341.a n = (A396710 (n + 1) : ℚ)

end A396710

/-! ## A396710.P12385175455269785099

`A323022(n+1)^A000001(A000001(n))`
-/

namespace A396710.P12385175455269785099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323022 (n + 1) : ℚ) ^ (A000001 (A000001 n).toNat : ℤ)

end

end A396710.P12385175455269785099

namespace A396710

/-- `A323022(n+1)^A000001(A000001(n))` -/
def P12385175455269785099.Spec : Prop :=
  ∀ n, P12385175455269785099.a n = (A396710 (n + 1) : ℚ)

end A396710

/-! ## A396710.P5289252561983446047

`A000021(A323022(n+1)^A126168(3*n+2))`
-/

namespace A396710.P5289252561983446047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000021 (SequenceMachineLib.roundAway ((A323022 (n + 1) : ℚ) ^ (A126168 (3 * n + 2) : ℤ))).toNat

end

end A396710.P5289252561983446047

namespace A396710

/-- `A000021(A323022(n+1)^A126168(3*n+2))` -/
def P5289252561983446047.Spec : Prop :=
  ∀ n, P5289252561983446047.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P7289429468247873881

`A359744((A386756(n+1)+A052928(n))%A096825(n+1))`
-/

namespace A396710.P7289429468247873881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359744 (Int.tmod (A386756 (n + 1) + A052928 n) (A096825 (n + 1))).toNat

end

end A396710.P7289429468247873881

namespace A396710

/-- `A359744((A386756(n+1)+A052928(n))%A096825(n+1))` -/
def P7289429468247873881.Spec : Prop :=
  ∀ n, P7289429468247873881.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P8680679444336825532

`A384000(C(∏{e}[n+1, #+1]-∏{e}[n+1, #], 10))`
-/

namespace A396710.P8680679444336825532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384000 (Nat.choose (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)).toNat 10)

end

end A396710.P8680679444336825532

namespace A396710

/-- `A384000(C(∏{e}[n+1, #+1]-∏{e}[n+1, #], 10))` -/
def P8680679444336825532.Spec : Prop :=
  ∀ n, P8680679444336825532.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P10018289780658374051

`A071178(A247516(n+1)+1)`
-/

namespace A396710.P10018289780658374051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A247516 (n + 1) + 1).toNat

end

end A396710.P10018289780658374051

namespace A396710

/-- `A071178(A247516(n+1)+1)` -/
def P10018289780658374051.Spec : Prop :=
  ∀ n, P10018289780658374051.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P2717410959534495265

`A385873(5^A341596(n+1))`
-/

namespace A396710.P2717410959534495265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385873 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A341596 (n + 1) : ℤ))).toNat

end

end A396710.P2717410959534495265

namespace A396710

/-- `A385873(5^A341596(n+1))` -/
def P2717410959534495265.Spec : Prop :=
  ∀ n, P2717410959534495265.a n = A396710 (n + 1)

end A396710

/-! ## A396710.P14207937444076480270

`A330098(∑{d}[A048691(n+1), #])`
-/

namespace A396710.P14207937444076480270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A396710.P14207937444076480270

namespace A396710

/-- `A330098(∑{d}[A048691(n+1), #])` -/
def P14207937444076480270.Spec : Prop :=
  ∀ n, P14207937444076480270.a n = A396710 (n + 1)

end A396710

/-!
# A396712: Expansion of e.g.f. -W_2(-x)/(1 + W_2(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396712, there is no canonical definition to state claims against.
-/

/-! ## A396712.P8653432199156915313

`A396711(∑[n+3]+1)`
-/

namespace A396712.P8653432199156915313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396711 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A396712.P8653432199156915313

/-! ## A396712.P6415273426217044965

`record[A396711(n+1)/A396676(n+4)]`
-/

namespace A396712.P6415273426217044965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396711 (n + 1) : ℚ) / (A396676 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396712.P6415273426217044965

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

/-! ## A396713.P8266161150305661596

`A396711(A027379(n+2))`
-/

namespace A396713.P8266161150305661596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396711 (A027379 (n + 2)).toNat

end

end A396713.P8266161150305661596

/-! ## A396713.P10982884941127775679

`A396711(A034856(n+3)-1)`
-/

namespace A396713.P10982884941127775679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396711 (A034856 (n + 3) - 1).toNat

end

end A396713.P10982884941127775679

/-!
# A396714: Maximum number of regions that can be formed in the plane by drawing n lollipop (or qoppa) shapes of equal radii.

The programs for A396714, the canonical program `A396714.P3439004166036263330` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396714 has offset 0).

The definition of A396714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396714.P14951305333072992244

`char[3*n]+3*n²-n`
-/

namespace A396714.P14951305333072992244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 3 * n ^ 2 : ℕ) : ℤ) - (n : ℤ)

end

end A396714.P14951305333072992244

namespace A396714

/-- `char[3*n]+3*n²-n` -/
def P14951305333072992244.Spec : Prop :=
  ∀ n, P14951305333072992244.a n = A396714 n

end A396714

/-! ## A396714.P3439004166036263330

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=7, a(3)=7, a(4)=4`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396714

/-- `∑[∑[floor(a(n-3))]]` -/
def P3439004166036263330.Spec : Prop :=
  ∀ n, (P3439004166036263330.a n : ℤ) = A396714 n

theorem P3439004166036263330.correct : P3439004166036263330.Spec := by
  intro n
  simp only [A396714]

end A396714

/-! ## A396714.P9595470971115525277

`Δ[ceil((A270205(n)+n)/3)]`
-/

namespace A396714.P9595470971115525277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A270205 n + (n : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396714.P9595470971115525277

namespace A396714

/-- `Δ[ceil((A270205(n)+n)/3)]` -/
def P9595470971115525277.Spec : Prop :=
  ∀ n, P9595470971115525277.a n = A396714 n

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

The programs for A396719, the canonical program `A396719.P6841675778921449716` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396719 has offset 1).

The definition of A396719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396719.P6841675778921449716

`ogf((1-3x-66x^2-58x^3+5x^4+x^5)/(1-17x+30x^2+162x^3-59x^4-5x^5))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A396720.P11962578281647314975

`and(A053838(A036969(n+5)), A361120(3*n+5))`
-/

namespace A396720.P11962578281647314975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053838 (A036969 (n + 5)).toNat) (A361120 (3 * n + 5))

end

end A396720.P11962578281647314975

/-! ## A396720.P9896572979635427032

`A325406(A209762(n+1))`
-/

namespace A396720.P9896572979635427032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325406 (A209762 (n + 1)).toNat

end

end A396720.P9896572979635427032

/-! ## A396720.P5846431327419398768

`A179628(A360121(n+1))%3`
-/

namespace A396720.P5846431327419398768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179628 (A360121 (n + 1)).toNat) 3

end

end A396720.P5846431327419398768

/-! ## A396720.P1016032682789745792

`A124010(n+1)%A185319(A332817(n))`
-/

namespace A396720.P1016032682789745792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124010 (n + 1)) (A185319 (A332817 n).toNat)

end

end A396720.P1016032682789745792

/-! ## A396720.P17867071533058482014

`A112705(A016813(n))%A378123(n+2)`
-/

namespace A396720.P17867071533058482014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112705 (A016813 n).toNat) (A378123 (n + 2))

end

end A396720.P17867071533058482014

/-!
# A396721: Number of 3-generated groups of order n: groups that have a generating set of size <= 3.

The programs for A396721, there is no canonical definition to state claims against.
-/

/-! ## A396721.P12678335257744699118

`A000001(n+1)-A010051(A067553(n))`
-/

namespace A396721.P12678335257744699118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A010051 (A067553 n).toNat

end

end A396721.P12678335257744699118

/-! ## A396721.P13549399458307761749

`gcd(A307569(A001222(n+1)), A353822(n+2))`
-/

namespace A396721.P13549399458307761749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307569 (A001222 (n + 1)).toNat) (A353822 (n + 2))

end

end A396721.P13549399458307761749

/-! ## A396721.P17545233732654446980

`A031218(A000001(n+1)%A378372(3*(n+1)))`
-/

namespace A396721.P17545233732654446980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (Int.tmod (A000001 (n + 1)) (A378372 (3 * (n + 1)))).toNat

end

end A396721.P17545233732654446980

/-! ## A396721.P7577914380508139926

`A281493(A000001(n+1))%A381432(3*(n+1))`
-/

namespace A396721.P7577914380508139926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281493 (A000001 (n + 1)).toNat) (A381432 (3 * (n + 1)))

end

end A396721.P7577914380508139926

/-! ## A396721.P14664497994130881940

`A233280(A000001(n+1))%A100562(3*n+4)`
-/

namespace A396721.P14664497994130881940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233280 (A000001 (n + 1)).toNat) (A100562 (3 * n + 4))

end

end A396721.P14664497994130881940

/-!
# A396722: a(n) = (4^n/2) * p(n, 5/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

The programs for A396722, the canonical program `A396722.P14914588847797964893` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396722 has offset 0).

The definition of A396722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396722.P18111973404526122393

`(4^n-A002420(n))/2`
-/

namespace A396722.P18111973404526122393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - A002420 n : ℚ) / 2

end

end A396722.P18111973404526122393

namespace A396722

/-- `(4^n-A002420(n))/2` -/
def P18111973404526122393.Spec : Prop :=
  ∀ n, P18111973404526122393.a n = (A396722 n : ℚ)

end A396722

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

/-! ## A396722.P17701987149840900667

`record[A097331(n)-A122803(n)]`
-/

namespace A396722.P17701987149840900667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n - A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396722.P17701987149840900667

namespace A396722

/-- `record[A097331(n)-A122803(n)]` -/
def P17701987149840900667.Spec : Prop :=
  ∀ n, P17701987149840900667.a n = A396722 n

end A396722

/-! ## A396722.P18078620921144402302

`A000079(A004273(n))-A115140(n)`
-/

namespace A396722.P18078620921144402302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004273 n).toNat - A115140 n

end

end A396722.P18078620921144402302

namespace A396722

/-- `A000079(A004273(n))-A115140(n)` -/
def P18078620921144402302.Spec : Prop :=
  ∀ n, P18078620921144402302.a n = A396722 n

end A396722

/-! ## A396722.P17435674561946324416

`xor(A000079(A004273(n)), A120588(n))`
-/

namespace A396722.P17435674561946324416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (A004273 n).toNat) (A120588 n)

end

end A396722.P17435674561946324416

namespace A396722

/-- `xor(A000079(A004273(n)), A120588(n))` -/
def P17435674561946324416.Spec : Prop :=
  ∀ n, P17435674561946324416.a n = A396722 n

end A396722

/-! ## A396722.P8338351597517969508

`xor(A000079(A004273(n)), A051168(2*n²))`
-/

namespace A396722.P8338351597517969508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (A004273 n).toNat) (A051168 (2 * n ^ 2))

end

end A396722.P8338351597517969508

namespace A396722

/-- `xor(A000079(A004273(n)), A051168(2*n²))` -/
def P8338351597517969508.Spec : Prop :=
  ∀ n, P8338351597517969508.a n = A396722 n

end A396722

/-! ## A396722.P10961940382979221370

`(A120588(n)+A011782(2*n))%A120604(n)`
-/

namespace A396722.P10961940382979221370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 n + A011782 (2 * n)) (A120604 n)

end

end A396722.P10961940382979221370

namespace A396722

/-- `(A120588(n)+A011782(2*n))%A120604(n)` -/
def P10961940382979221370.Spec : Prop :=
  ∀ n, P10961940382979221370.a n = A396722 n

end A396722

/-!
# A396723: a(n) = (-4^n/2) p(n, -1/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

The programs for A396723, there is no canonical definition to state claims against.
-/

/-! ## A396723.P12078952894180739389

`(A002802(n)-A000302(n))/2`
-/

namespace A396723.P12078952894180739389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002802 n - A000302 n : ℚ) / 2

end

end A396723.P12078952894180739389

/-!
# A396724: a(n) = (-4^n/2) p(n, -3/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

The programs for A396724, there is no canonical definition to state claims against.
-/

/-! ## A396724.P5550608434225256216

`(A020918(n)-A000302(n))/2`
-/

namespace A396724.P5550608434225256216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 n - A000302 n : ℚ) / 2

end

end A396724.P5550608434225256216

/-!
# A396726: Greatest frequency depth of a word of length n.

The programs for A396726, there is no canonical definition to state claims against.
-/

/-! ## A396726.P1338499608800850160

`floor(Δ[n*log2(n+1)]*sqrt(3))`
-/

namespace A396726.P1338499608800850160
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) * Real.sqrt (3 : ℝ)⌋

end

end A396726.P1338499608800850160

/-! ## A396726.P4025148689968913611

`fp[A117791(n)]+1`
-/

namespace A396726.P4025148689968913611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A396726.P4025148689968913611

/-! ## A396726.P15854316535255496218

`A096365(n+1)+1`
-/

namespace A396726.P15854316535255496218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096365 (n + 1) + 1

end

end A396726.P15854316535255496218

/-! ## A396726.P10519211952618827101

`A081288(∑[∑[n]])+1`
-/

namespace A396726.P10519211952618827101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081288 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A396726.P10519211952618827101

/-! ## A396726.P3114574954952624162

`fp[sqrt(A007135(n+1))]`
-/

namespace A396726.P3114574954952624162
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007135 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A396726.P3114574954952624162

/-!
# A396729: Irregular triangle read by rows in which row n lists the first A000041(n) positive integers, n >= 0.

The programs for A396729, there is no canonical definition to state claims against.
-/

/-! ## A396729.P17999392304504499962

`filter[A194029(n+1), A250120(A324088(#))]`
-/

namespace A396729.P17999392304504499962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A250120 (A324088 (f1 j).toNat).toNat = 1) n)

end

end A396729.P17999392304504499962

/-! ## A396729.P10837254157932841904

`A250470(A334437(n)%A256377(n+1))`
-/

namespace A396729.P10837254157932841904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.tmod (A334437 n) (A256377 (n + 1))).toNat

end

end A396729.P10837254157932841904

/-! ## A396729.P9063254760407402767

`A104778(A151722(n))+A003313(A104778(n))`
-/

namespace A396729.P9063254760407402767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104778 (A151722 n).toNat + A003313 (A104778 n).toNat

end

end A396729.P9063254760407402767

/-!
# A396730: Triangle read by rows: T(n,k) = A058399(n,k) + A066633(n,k), 1 <= k <= n.

The programs for A396730, there is no canonical definition to state claims against.
-/

/-! ## A396730.P9420672289424610337

`A058399(C(row(n)+1, 2)+col(n)+1)+A066633(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396730.P9420672289424610337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) + A066633 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A396730.P9420672289424610337

/-! ## A396730.P15594123695356042975

`A066633(n+1)+A058399(n+1)`
-/

namespace A396730.P15594123695356042975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) + A058399 (n + 1)

end

end A396730.P15594123695356042975

/-! ## A396730.P16984228866421137767

`A058399(n+1)+A138785(n+1)²/A299768(n+1)`
-/

namespace A396730.P16984228866421137767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058399 (n + 1) : ℚ) + (A138785 (n + 1) ^ 2 : ℚ) / (A299768 (n + 1) : ℚ)

end

end A396730.P16984228866421137767

/-! ## A396730.P11211473996618921878

`A058399(n+1)+A181187(n+1)-A181187(n+2)%A181187(n+1)`
-/

namespace A396730.P11211473996618921878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1) + (A181187 (n + 1) - Int.tmod (A181187 (n + 2)) (A181187 (n + 1)))

end

end A396730.P11211473996618921878

/-! ## A396730.P16861944227780118096

`A161224(comp[∑[n]])+A058399(n+1)`
-/

namespace A396730.P16861944227780118096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A058399 (n + 1)

end

end A396730.P16861944227780118096

/-! ## A396730.P12273780584114114713

`A210950(A038722(n+1))+A066633(n+1)`
-/

namespace A396730.P12273780584114114713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210950 (A038722 (n + 1)).toNat + A066633 (n + 1)

end

end A396730.P12273780584114114713

/-!
# A396731: Triangle read by rows: T(n,k) = A181187(n,k) + A138785(n,k), 1 <= k <= n.

The programs for A396731, there is no canonical definition to state claims against.
-/

/-! ## A396731.P12522359807435885285

`A181187(C(row(n)+1, 2)+col(n)+1)+A138785(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396731.P12522359807435885285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) + A138785 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A396731.P12522359807435885285

/-! ## A396731.P8463646829806808886

`A181187(1+n)+A138785(n+1)`
-/

namespace A396731.P8463646829806808886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (1 + n) + A138785 (n + 1)

end

end A396731.P8463646829806808886

/-! ## A396731.P3799564999968119083

`A181187(n+1)+A299768(n+1)/A002260(n+1)`
-/

namespace A396731.P3799564999968119083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181187 (n + 1) : ℚ) + (A299768 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A396731.P3799564999968119083

/-! ## A396731.P14101308120860483980

`A181187(n+1)+A004736(A038722(n+1))*A066633(n+1)`
-/

namespace A396731.P14101308120860483980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (n + 1) + A004736 (A038722 (n + 1)).toNat * A066633 (n + 1)

end

end A396731.P14101308120860483980

/-! ## A396731.P16413953806787250396

`A181187(n+1)+A066633(n+1)/A008284(n+1)*A172467(n+1)`
-/

namespace A396731.P16413953806787250396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181187 (n + 1) : ℚ) + (A066633 (n + 1) : ℚ) / (A008284 (n + 1) : ℚ) * (A172467 (n + 1) : ℚ)

end

end A396731.P16413953806787250396

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

/-! ## A396745.P1931020598425649304

`A396744(∑[n+3]+1)`
-/

namespace A396745.P1931020598425649304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396744 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A396745.P1931020598425649304

/-! ## A396745.P3770808357611803973

`record[A396744(n+1)/A396676(n+4)]`
-/

namespace A396745.P3770808357611803973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396744 (n + 1) : ℚ) / (A396676 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396745.P3770808357611803973

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

/-! ## A396746.P12691093655590259205

`A396744(A000217(n+4)-3)`
-/

namespace A396746.P12691093655590259205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396744 (A000217 (n + 4) - 3).toNat

end

end A396746.P12691093655590259205

/-! ## A396746.P11551046814967304309

`A396744(lt[A250336(n+3), A153480(n)])`
-/

namespace A396746.P11551046814967304309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396744 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396746.P11551046814967304309

/-!
# A396748: G.f. A(x) satisfies A(x) = 1 + x * A(x^2/(1 - x)^2) / (1 - x)^3.

The programs for A396748, there is no canonical definition to state claims against.
-/

/-! ## A396748.P3074895272380365515

`A023193(A046717(n))+A002620(n)`
-/

namespace A396748.P3074895272380365515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A046717 n).toNat + A002620 n

end

end A396748.P3074895272380365515

/-! ## A396748.P10514662649700254164

`A389245(n)+A000194(A092184(n))`
-/

namespace A396748.P10514662649700254164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389245 n + A000194 (A092184 n).toNat

end

end A396748.P10514662649700254164

/-! ## A396748.P5415680090305161552

`A132778(A234933(n)+A116539(n))`
-/

namespace A396748.P5415680090305161552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132778 (A234933 n + A116539 n).toNat

end

end A396748.P5415680090305161552

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

/-! ## A396751.P3076590579943484705

`ceil(sqrt(A319962(n+4)))+1`
-/

namespace A396751.P3076590579943484705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A319962 (n + 4) : ℝ)⌉ + 1

end

end A396751.P3076590579943484705

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

/-!
# A396752: a(n) = n * floor(sqrt(n)).

The programs for A396752, the canonical program `A396752.P6457167168212834435` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396752 has offset 0).

The definition of A396752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor(sqrt(n))` (program `A396752.P6457167168212834435`, by `A396752.P6457167168212834435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396752.P6457167168212834435

`n*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396752

/-- `n*floor(sqrt(n))` -/
def P6457167168212834435.Spec : Prop :=
  ∀ n, (P6457167168212834435.a n : ℤ) = A396752 n

theorem P6457167168212834435.correct : P6457167168212834435.Spec := by
  intro n
  simp only [A396752]

end A396752

/-! ## A396752.P12811931574239959149

`n*fp[n²]-n`
-/

namespace A396752.P12811931574239959149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * SequenceMachineLib.nth (fun j => n < f1 j) 0 : ℤ) - (n : ℤ)

end

end A396752.P12811931574239959149

namespace A396752

/-- `n*fp[n²]-n` -/
def P12811931574239959149.Spec : Prop :=
  ∀ n, P12811931574239959149.a n = A396752 n

end A396752

/-! ## A396752.P8918124511170428491

`lcm(n, n*fp[(n+1)²])`
-/

namespace A396752.P8918124511170428491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * SequenceMachineLib.nth (fun j => n < f1 j) 0)

end

end A396752.P8918124511170428491

namespace A396752

/-- `lcm(n, n*fp[(n+1)²])` -/
def P8918124511170428491.Spec : Prop :=
  ∀ n, (P8918124511170428491.a n : ℤ) = A396752 n

end A396752

/-! ## A396752.P8087097315226642501

`n*∑[char[col(n)²]]-n`
-/

namespace A396752.P8087097315226642501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A396752.P8087097315226642501

namespace A396752

/-- `n*∑[char[col(n)²]]-n` -/
def P8087097315226642501.Spec : Prop :=
  ∀ n, P8087097315226642501.a n = A396752 n

end A396752

/-! ## A396752.P15807286736609972336

`n*∑[char[or(n, n)²]]-n`
-/

namespace A396752.P15807286736609972336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A396752.P15807286736609972336

namespace A396752

/-- `n*∑[char[or(n, n)²]]-n` -/
def P15807286736609972336.Spec : Prop :=
  ∀ n, P15807286736609972336.a n = A396752 n

end A396752

/-! ## A396752.P8409649393424319429

`∑[2*n]*fp[(n+1)²]/(n+1)`
-/

namespace A396752.P8409649393424319429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun j => n < f2 j) 0 : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A396752.P8409649393424319429

namespace A396752

/-- `∑[2*n]*fp[(n+1)²]/(n+1)` -/
def P8409649393424319429.Spec : Prop :=
  ∀ n, P8409649393424319429.a n = (A396752 n : ℚ)

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

/-! ## A396752.P1283618656908088141

`sqrt(n²*A048760(n))`
-/

namespace A396752.P1283618656908088141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A048760 n : ℝ)

end

end A396752.P1283618656908088141

namespace A396752

/-- `sqrt(n²*A048760(n))` -/
def P1283618656908088141.Spec : Prop :=
  ∀ n, P1283618656908088141.a n = (A396752 n : ℝ)

end A396752

/-! ## A396752.P3887269727905156096

`root(n*A000196(n), 2)²`
-/

namespace A396752.P3887269727905156096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * A000196 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A396752.P3887269727905156096

namespace A396752

/-- `root(n*A000196(n), 2)²` -/
def P3887269727905156096.Spec : Prop :=
  ∀ n, P3887269727905156096.a n = (A396752 n : ℝ)

end A396752

/-! ## A396752.P10975615503276272639

`n*∑[A010052(n)]-n`
-/

namespace A396752.P10975615503276272639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A396752.P10975615503276272639

namespace A396752

/-- `n*∑[A010052(n)]-n` -/
def P10975615503276272639.Spec : Prop :=
  ∀ n, P10975615503276272639.a n = A396752 n

end A396752

/-! ## A396752.P7588006356925349887

`A003059(n+1)*n-n`
-/

namespace A396752.P7588006356925349887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) * (n : ℤ) - (n : ℤ)

end

end A396752.P7588006356925349887

namespace A396752

/-- `A003059(n+1)*n-n` -/
def P7588006356925349887.Spec : Prop :=
  ∀ n, P7588006356925349887.a n = A396752 n

end A396752

/-! ## A396752.P664665445736984112

`(∑[A000122(n)]-1)*n/2`
-/

namespace A396752.P664665445736984112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j - 1) * (n : ℤ) : ℤ) : ℚ) / 2

end

end A396752.P664665445736984112

namespace A396752

/-- `(∑[A000122(n)]-1)*n/2` -/
def P664665445736984112.Spec : Prop :=
  ∀ n, P664665445736984112.a n = (A396752 n : ℚ)

end A396752

/-! ## A396752.P10368640201430799673

`fp[fp[n*fp[(n+1)²]]]`
-/

namespace A396752.P10368640201430799673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => n < f3 j) 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A396752.P10368640201430799673

namespace A396752

/-- `fp[fp[n*fp[(n+1)²]]]` -/
def P10368640201430799673.Spec : Prop :=
  ∀ n, (P10368640201430799673.a n : ℤ) = A396752 n

end A396752

/-! ## A396752.P7771956356900814313

`fp[(n+1)/fp[(n+1)*∑[2*n]]]`
-/

namespace A396752.P7771956356900814313
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.nth (fun j => n < f2 j) 0 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A396752.P7771956356900814313

namespace A396752

/-- `fp[(n+1)/fp[(n+1)*∑[2*n]]]` -/
def P7771956356900814313.Spec : Prop :=
  ∀ n, (P7771956356900814313.a n : ℤ) = A396752 n

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
# A396753: Number of equivalence classes of n X n binary matrices with all row sums and column sums equal to 5, under row permutations, column permutations, and transposition.

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

The programs for A396757, the canonical program `A396757.P17629373591554347018` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396757 has offset 1).

The definition of A396757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396757.P17629373591554347018

`∑{d}[n+1, A002618(#)*A372952((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
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
# A396761: a(n) is the number of distinct triples of triangles chosen from the n^2 unit triangles of the triangular grid up to rotation and reflection.

The programs for A396761, there is no canonical definition to state claims against.
-/

/-! ## A396761.P11938563314447681226

`(A025459(A355326(n))²+n²)²+n²`
-/

namespace A396761.P11938563314447681226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025459 (A355326 n).toNat ^ 2 + (n ^ 2 : ℤ)) ^ 2 + (n ^ 2 : ℤ)

end

end A396761.P11938563314447681226

/-!
# A396762: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection without having centers of all three triangles in a same symmetrical axis.

The programs for A396762, the canonical program `A396762.P9936943661177591468` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396762 has offset 1).

The definition of A396762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396762.P9936943661177591468

`A396882(n+1)+A071239(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A396762

/-- `A396882(n+1)+A071239(n)` -/
def P9936943661177591468.Spec : Prop :=
  ∀ n, P9936943661177591468.a n = A396762 (n + 1)

theorem P9936943661177591468.correct : P9936943661177591468.Spec := by
  intro n
  simp only [A396762, Nat.add_sub_cancel]

end A396762

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

/-! ## A396763.P15735643393388399424

`∪[A006093(2+n)+1, A396764(n+1)]`
-/

namespace A396763.P15735643393388399424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (2 + n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396763.P15735643393388399424

/-! ## A396763.P14568823188938615213

`filter[A023884(1+n), A245656(#)]`
-/

namespace A396763.P14568823188938615213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A396763.P14568823188938615213

/-! ## A396763.P7098642787271158880

`∩[A003601(1+n), A023884(n+1)]`
-/

namespace A396763.P7098642787271158880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396763.P7098642787271158880

/-! ## A396763.P7250142446253974338

`∩[comp[A049642(n+1)-1]+1, A023884(n+1)]`
-/

namespace A396763.P7250142446253974338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A396763.P7250142446253974338

/-! ## A396763.P5162371846314882875

`∩[comp[A049642(n+1)], A023884(n+1)]`
-/

namespace A396763.P5162371846314882875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A396763.P5162371846314882875

/-! ## A396763.P14482893620212860225

`∩[eq[1, A057021(1+n)]+1, A023884(n+1)]`
-/

namespace A396763.P14482893620212860225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A396763.P14482893620212860225

/-!
# A396764: Nonprimes whose average of aliquot divisors and average of divisors are both integers.

The programs for A396764, there is no canonical definition to state claims against.
-/

/-! ## A396764.P5102887840953318765

`filter[A396763(1+n), A005171(#)]`
-/

namespace A396764.P5102887840953318765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A396764.P5102887840953318765

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

/-! ## A396764.P1507670565229339827

`filter[A396763(1+n), A202238(#)]`
-/

namespace A396764.P1507670565229339827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396763 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A396764.P1507670565229339827

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

/-! ## A396764.P14291686318277210674

`filter[A023885(n+1), A176801(#)]`
-/

namespace A396764.P14291686318277210674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176801 (f1 j).toNat = 1) n)

end

end A396764.P14291686318277210674

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

/-! ## A396765.P2589390991736904547

`A000120(A181306(n)%A028491(n+1))`
-/

namespace A396765.P2589390991736904547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A181306 n) (A028491 (n + 1))).toNat

end

end A396765.P2589390991736904547

/-!
# A396766: Numbers whose number of distinct prime factors equals their digital root.

The programs for A396766, the canonical program `A396766.P11043693022748925597` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396766 has offset 1).

The definition of A396766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396766.P11043693022748925597

`eq[dr(n+1), A001221(n+1)]+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396766

/-- `eq[dr(n+1), A001221(n+1)]+1` -/
def P11043693022748925597.Spec : Prop :=
  ∀ n, (P11043693022748925597.a n : ℤ) = A396766 (n + 1)

theorem P11043693022748925597.correct : P11043693022748925597.Spec := by
  intro n
  simp only [A396766, Nat.add_sub_cancel]

end A396766

/-! ## A396766.P1656696245604007056

`eq[A001221(n+1), A010888(n+1)]+1`
-/

namespace A396766.P1656696245604007056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396766.P1656696245604007056

namespace A396766

/-- `eq[A001221(n+1), A010888(n+1)]+1` -/
def P1656696245604007056.Spec : Prop :=
  ∀ n, (P1656696245604007056.a n : ℤ) = A396766 (n + 1)

end A396766

/-! ## A396766.P10068890137008491207

`eq[A010888(n+2), A083399(n+1)]+1`
-/

namespace A396766.P10068890137008491207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396766.P10068890137008491207

namespace A396766

/-- `eq[A010888(n+2), A083399(n+1)]+1` -/
def P10068890137008491207.Spec : Prop :=
  ∀ n, (P10068890137008491207.a n : ℤ) = A396766 (n + 1)

end A396766

/-!
# A396768: a(n) is the number of primes p < q = prime(n) for which there exists an integer k such that (p, q, k) is a Heronian triangle.

The programs for A396768, there is no canonical definition to state claims against.
-/

/-! ## A396768.P12318127330560490839

`and(A070681(n), A270650(A000930(n)))`
-/

namespace A396768.P12318127330560490839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070681 n) (A270650 (A000930 n).toNat)

end

end A396768.P12318127330560490839

/-! ## A396768.P4194237287873268134

`A060572(A327860(3*(n+1)))*A283760(n+1)`
-/

namespace A396768.P4194237287873268134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A327860 (3 * (n + 1))).toNat * A283760 (n + 1)

end

end A396768.P4194237287873268134

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

/-! ## A396768.P10274788331125766933

`A363127(A265059(2*n)+A000217(n))`
-/

namespace A396768.P10274788331125766933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363127 (A265059 (2 * n) + A000217 n).toNat

end

end A396768.P10274788331125766933

/-!
# A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

The programs for A396769, the canonical program `A396769.P5317963927150121089` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396769 has offset 1).

The definition of A396769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`

The canonical program, it is in `Seq.B004.C004`.
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

/-! ## A396769.P13031376422417386797

`∑[and(n, -n)+A000120(n)]`
-/

namespace A396769.P13031376422417386797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396769.P13031376422417386797

namespace A396769

/-- `∑[and(n, -n)+A000120(n)]` -/
def P13031376422417386797.Spec : Prop :=
  ∀ n, P13031376422417386797.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P9953759101240014643

`A000788(n)+∑[-or(n, -n)]`
-/

namespace A396769.P9953759101240014643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396769.P9953759101240014643

namespace A396769

/-- `A000788(n)+∑[-or(n, -n)]` -/
def P9953759101240014643.Spec : Prop :=
  ∀ n, P9953759101240014643.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P8584375943924578720

`∑[n-A011371(and(n, n-1))]+n`
-/

namespace A396769.P8584375943924578720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A396769.P8584375943924578720

namespace A396769

/-- `∑[n-A011371(and(n, n-1))]+n` -/
def P8584375943924578720.Spec : Prop :=
  ∀ n, P8584375943924578720.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P14497361313639256795

`∑[n+1-A113474(and(n, n-1)+1)]+n`
-/

namespace A396769.P14497361313639256795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A113474 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A396769.P14497361313639256795

namespace A396769

/-- `∑[n+1-A113474(and(n, n-1)+1)]+n` -/
def P14497361313639256795.Spec : Prop :=
  ∀ n, P14497361313639256795.a n = A396769 (n + 1)

end A396769

/-! ## A396769.P12039579665127730219

`∑[A285326(n)-A011371(n)]`
-/

namespace A396769.P12039579665127730219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 n - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396769.P12039579665127730219

namespace A396769

/-- `∑[A285326(n)-A011371(n)]` -/
def P12039579665127730219.Spec : Prop :=
  ∀ n, P12039579665127730219.a n = A396769 (n + 1)

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

/-! ## A396770.P397784657658598870

`A000267(A216318(n)-n%2)-A074084(A257639(n+5))`
-/

namespace A396770.P397784657658598870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A216318 n - ((n % 2 : ℕ) : ℤ)).toNat - A074084 (A257639 (n + 5)).toNat

end

end A396770.P397784657658598870

/-!
# A396771: Second least non-divisor of n.

The programs for A396771, there is no canonical definition to state claims against.
-/

/-! ## A396771.P2111318183483534762

`A398062(∑[2+n])`
-/

namespace A396771.P2111318183483534762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396771.P2111318183483534762

/-! ## A396771.P15430813712553208832

`A199968(A106856(n+1)*A208570(n+1))`
-/

namespace A396771.P15430813712553208832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A106856 (n + 1) * A208570 (n + 1)).toNat

end

end A396771.P15430813712553208832

/-! ## A396771.P3030210564037273581

`A199968(A030144(n+5)*A208570(n+1))`
-/

namespace A396771.P3030210564037273581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A030144 (n + 5) * A208570 (n + 1)).toNat

end

end A396771.P3030210564037273581

/-! ## A396771.P7632712888721386730

`A007978(A007978(n+1)*A081437(n))`
-/

namespace A396771.P7632712888721386730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A007978 (n + 1) * A081437 n).toNat

end

end A396771.P7632712888721386730

/-! ## A396771.P8774779234188767457

`A007978(A007978(n+1)*A033014(n+1))`
-/

namespace A396771.P8774779234188767457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A007978 (n + 1) * A033014 (n + 1)).toNat

end

end A396771.P8774779234188767457

/-!
# A396772: Expansion of x*(-1 + 4*x - 3*x^2 + x^3)/((1 - x)^2 * (1 - x + x^2)).

The programs for A396772, the canonical program `A396772.P17158471524454405549` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396772 has offset 0).

The definition of A396772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))` (program `A396772.P17158471524454405549`, by `A396772.P17158471524454405549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396772.P17158471524454405549

`ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A396772.P50591426436112063

`a(n-1)+n-1-a(n-2)` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A396772.P50591426436112063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1 - a (n - 2))

end

end A396772.P50591426436112063

namespace A396772

/-- `a(n-1)+n-1-a(n-2)` -/
def P50591426436112063.Spec : Prop :=
  ∀ n, P50591426436112063.a n = A396772 n

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

/-! ## A396772.P14548595834464557142

`n-∑[A100051(n)]%Δ[n²]`
-/

namespace A396772.P14548595834464557142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A396772.P14548595834464557142

namespace A396772

/-- `n-∑[A100051(n)]%Δ[n²]` -/
def P14548595834464557142.Spec : Prop :=
  ∀ n, P14548595834464557142.a n = A396772 n

end A396772

/-! ## A396772.P2955482914214369865

`n-1-a(n-2)+a(A023443(n))` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A396772.P2955482914214369865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n a =>
  (n : ℤ) - 1 - a (n - 2) + a (A023443 n).toNat

end

end A396772.P2955482914214369865

namespace A396772

/-- `n-1-a(n-2)+a(A023443(n))` -/
def P2955482914214369865.Spec : Prop :=
  ∀ n, P2955482914214369865.a n = A396772 n

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

/-! ## A396772.P7158583723977963215

`A028310(n)-∑[A100051(n)]`
-/

namespace A396772.P7158583723977963215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396772.P7158583723977963215

namespace A396772

/-- `A028310(n)-∑[A100051(n)]` -/
def P7158583723977963215.Spec : Prop :=
  ∀ n, P7158583723977963215.a n = A396772 n

end A396772

/-! ## A396772.P14331121462273023624

`round(sqrt(n²+1))-A122876(n+1)`
-/

namespace A396772.P14331121462273023624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - A122876 (n + 1)

end

end A396772.P14331121462273023624

namespace A396772

/-- `round(sqrt(n²+1))-A122876(n+1)` -/
def P14331121462273023624.Spec : Prop :=
  ∀ n, P14331121462273023624.a n = A396772 n

end A396772

/-! ## A396772.P12671770339753393530

`abs(A057079(n+1)-a(n-1))+1` with `a(0)=0, a(1)=-1`
-/

namespace A396772.P12671770339753393530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  |A057079 (n + 1) - a (n - 1)| + 1

end

end A396772.P12671770339753393530

namespace A396772

/-- `abs(A057079(n+1)-a(n-1))+1` -/
def P12671770339753393530.Spec : Prop :=
  ∀ n, P12671770339753393530.a n = A396772 n

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
# A396773: Number of connected directed 3-regular graphs on n nodes without directed 2-cycles.

The programs for A396773, there is no canonical definition to state claims against.
-/

/-! ## A396773.P10626512285906141505

`A219895(n+7)-C(A173018(n), 2)`
-/

namespace A396773.P10626512285906141505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219895 (n + 7) - (Nat.choose (A173018 n).toNat 2 : ℤ)

end

end A396773.P10626512285906141505

/-! ## A396773.P4457249189893871470

`A219895(n+7)-6*A332281(n+3)`
-/

namespace A396773.P4457249189893871470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219895 (n + 7) - 6 * A332281 (n + 3)

end

end A396773.P4457249189893871470

/-! ## A396773.P16301889621900139926

`A219895(n+7)-A062707(A063007(n))`
-/

namespace A396773.P16301889621900139926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219895 (n + 7) - A062707 (A063007 n).toNat

end

end A396773.P16301889621900139926

/-! ## A396773.P10571096199720121778

`A219895(n+7)-A092491(A135278(n))`
-/

namespace A396773.P10571096199720121778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219895 (n + 7) - A092491 (A135278 n).toNat

end

end A396773.P10571096199720121778

/-!
# A396776: Square array read by upwards antidiagonals: T(p,q) is the number cells required to completely surround a single cell of the regular tiling with Schläfli symbol {p,q}.

The programs for A396776, the canonical program `A396776.P18268578886540690482` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396776 has offset 3).

The definition of A396776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396776.P2188828674443689496

`3+row(n)-col(n)+T(n-1,k-1)` with `a(0)=3`
-/

namespace A396776.P2188828674443689496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + SequenceMachineLib.triUpLeft a n

end

end A396776.P2188828674443689496

namespace A396776

/-- `3+row(n)-col(n)+T(n-1,k-1)` -/
def P2188828674443689496.Spec : Prop :=
  ∀ n, P2188828674443689496.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P13848701677031582331

`(3+row(n)-col(n))*(col(n)+1)`
-/

namespace A396776.P13848701677031582331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A396776.P13848701677031582331

namespace A396776

/-- `(3+row(n)-col(n))*(col(n)+1)` -/
def P13848701677031582331.Spec : Prop :=
  ∀ n, P13848701677031582331.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P5046689352942878415

`3+A025581(n)+T(n-1,k-1)` with `a(0)=3`
-/

namespace A396776.P5046689352942878415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 + A025581 n + SequenceMachineLib.triUpLeft a n

end

end A396776.P5046689352942878415

namespace A396776

/-- `3+A025581(n)+T(n-1,k-1)` -/
def P5046689352942878415.Spec : Prop :=
  ∀ n, P5046689352942878415.a n = A396776 (n + 3)

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

/-! ## A396776.P7860964864655159709

`A003991(n+1)+2*(col(n)+1)`
-/

namespace A396776.P7860964864655159709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (2 * (SequenceMachineLib.triCol n + 1) : ℤ)

end

end A396776.P7860964864655159709

namespace A396776

/-- `A003991(n+1)+2*(col(n)+1)` -/
def P7860964864655159709.Spec : Prop :=
  ∀ n, P7860964864655159709.a n = A396776 (n + 3)

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

/-! ## A396776.P12504415772853953691

`A003991(lt[1, 1+T(n-2,k-1)])` with `a(0)=1`
-/

namespace A396776.P12504415772853953691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  1 + SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396776.P12504415772853953691

namespace A396776

/-- `A003991(lt[1, 1+T(n-2,k-1)])` -/
def P12504415772853953691.Spec : Prop :=
  ∀ n, P12504415772853953691.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P4702933632808513160

`A003991(lt[1, T(n-1,k)+T(n-1,k-1)])` with `a(0)=1`
-/

namespace A396776.P4702933632808513160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.triUp f2 n + SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396776.P4702933632808513160

namespace A396776

/-- `A003991(lt[1, T(n-1,k)+T(n-1,k-1)])` -/
def P4702933632808513160.Spec : Prop :=
  ∀ n, P4702933632808513160.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P9308966445341799643

`A003991(lt[1, (col(n)+1)%(row(n)+1)])`
-/

namespace A396776.P9308966445341799643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) % (SequenceMachineLib.triRow n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396776.P9308966445341799643

namespace A396776

/-- `A003991(lt[1, (col(n)+1)%(row(n)+1)])` -/
def P9308966445341799643.Spec : Prop :=
  ∀ n, P9308966445341799643.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P7633004640255223941

`A003991(lt[1, A007318(n)])`
-/

namespace A396776.P7633004640255223941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A396776.P7633004640255223941

namespace A396776

/-- `A003991(lt[1, A007318(n)])` -/
def P7633004640255223941.Spec : Prop :=
  ∀ n, P7633004640255223941.a n = A396776 (n + 3)

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

/-! ## A396776.P9535647375186951429

`A003991(lt[1, A157528(n)])`
-/

namespace A396776.P9535647375186951429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A396776.P9535647375186951429

namespace A396776

/-- `A003991(lt[1, A157528(n)])` -/
def P9535647375186951429.Spec : Prop :=
  ∀ n, P9535647375186951429.a n = A396776 (n + 3)

end A396776

/-! ## A396776.P9979848954086997425

`A003991(lt[1, A001263(n+1)])`
-/

namespace A396776.P9979848954086997425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A396776.P9979848954086997425

namespace A396776

/-- `A003991(lt[1, A001263(n+1)])` -/
def P9979848954086997425.Spec : Prop :=
  ∀ n, P9979848954086997425.a n = A396776 (n + 3)

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

/-! ## A396779.P9038476867918998986

`comp[A394904(1+n)]`
-/

namespace A396779.P9038476867918998986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394904 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396779.P9038476867918998986

/-! ## A396779.P11274564295083578424

`comp[∪[A218381(n+1), A395626(n+1)]]`
-/

namespace A396779.P11274564295083578424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218381 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395626 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A396779.P11274564295083578424

/-! ## A396779.P7484685368299159370

`eq[char[A394904(n+1)], A000038(n)]`
-/

namespace A396779.P7484685368299159370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394904 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A396779.P7484685368299159370

/-! ## A396779.P3001460544190142690

`comp[record[A394904(A263275(n))]]`
-/

namespace A396779.P3001460544190142690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394904 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396779.P3001460544190142690

/-! ## A396779.P1558988313601785991

`A254764(A014957(n+2))`
-/

namespace A396779.P1558988313601785991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (A014957 (n + 2)).toNat

end

end A396779.P1558988313601785991

/-!
# A396780: Numbers k such that (27^k + 5^k)/32 is prime.

The programs for A396780, there is no canonical definition to state claims against.
-/

/-! ## A396780.P13772741539497663730

`A085498(∑[A350754(n)]+n)`
-/

namespace A396780.P13772741539497663730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A396780.P13772741539497663730

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

/-! ## A396781.P4636004544318554470

`A003320(A031435(n+1)+1+n)`
-/

namespace A396781.P4636004544318554470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (A031435 (n + 1) + (1 + n : ℤ)).toNat

end

end A396781.P4636004544318554470

/-! ## A396781.P7111359070192577887

`(n+1)^(A377206(2+n)+A057428(n))`
-/

namespace A396781.P7111359070192577887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A377206 (2 + n) + A057428 n : ℤ)

end

end A396781.P7111359070192577887

/-!
# A396782: Index of 2^n - 1 in A007665.

The programs for A396782, there is no canonical definition to state claims against.
-/

/-! ## A396782.P3937992451882331444

`A362852(A394395(n+1))+A305082(n)`
-/

namespace A396782.P3937992451882331444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362852 (A394395 (n + 1)).toNat + A305082 n

end

end A396782.P3937992451882331444

/-! ## A396782.P16245571446983978853

`A305082(n)+gcd(A001222(n+1), A303090(n+1))`
-/

namespace A396782.P16245571446983978853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n + (Int.gcd (A001222 (n + 1)) (A303090 (n + 1)) : ℤ)

end

end A396782.P16245571446983978853

/-! ## A396782.P10130758951671050721

`A127288(A305082(n)+A043278(n+1))`
-/

namespace A396782.P10130758951671050721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A305082 n + A043278 (n + 1)).toNat

end

end A396782.P10130758951671050721

/-! ## A396782.P15997268963901191807

`A000041(n+2)-A000161(A000111(n))`
-/

namespace A396782.P15997268963901191807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - A000161 (A000111 n).toNat

end

end A396782.P15997268963901191807

/-! ## A396782.P15211454193600017173

`A305082(n)+A298735(A294011(n+9))`
-/

namespace A396782.P15211454193600017173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n + A298735 (A294011 (n + 9)).toNat

end

end A396782.P15211454193600017173

/-!
# A396783: Index of 2^n + 1 in A182058.

The programs for A396783, there is no canonical definition to state claims against.
-/

/-! ## A396783.P11342273972311436659

`A074279(A000108(n))+A000009(2*n+1)`
-/

namespace A396783.P11342273972311436659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A000108 n).toNat + A000009 (2 * n + 1)

end

end A396783.P11342273972311436659

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

/-! ## A396783.P5681788296130214685

`A123068(A098151(n)+2)`
-/

namespace A396783.P5681788296130214685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A098151 n + 2).toNat

end

end A396783.P5681788296130214685

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

/-! ## A396797.P4647994979849930048

`A000265(or(A154960(n+2), A381601(n)))`
-/

namespace A396797.P4647994979849930048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A154960 (n + 2)) (A381601 n)).toNat

end

end A396797.P4647994979849930048

/-! ## A396797.P14327512264131872164

`or(A289283(A008279(2*n+1)), A381601(n))`
-/

namespace A396797.P14327512264131872164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289283 (A008279 (2 * n + 1)).toNat) (A381601 n)

end

end A396797.P14327512264131872164

/-!
# A396798: G.f. satisfies A(x) = x + A^4(x)*A^5(x).

The programs for A396798, there is no canonical definition to state claims against.
-/

/-! ## A396798.P5520896363601167279

`A000265(A398884(n)+A398866(n))`
-/

namespace A396798.P5520896363601167279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A398884 n + A398866 n).toNat

end

end A396798.P5520896363601167279

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

/-! ## A396799.P11038524623235223986

`A087961(n)*A263275(A263257(n))`
-/

namespace A396799.P11038524623235223986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087961 n * A263275 (A263257 n).toNat

end

end A396799.P11038524623235223986

/-! ## A396799.P6949453745534057996

`(n+1)*A396860(∑[n+1]+n)`
-/

namespace A396799.P6949453745534057996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A396860 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A396799.P6949453745534057996

