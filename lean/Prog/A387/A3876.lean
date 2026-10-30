import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B006.C000
import Seq.B008.C000
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
# A387600: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+2,2*k+1).

The programs for A387600, the canonical program `A387600.P15552032445827693754` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387600 has offset 0).

The definition of A387600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387600.P859776611741871446

`ogf(1/(1-2x+x^2-4x^3-4x^4+4x^6))`
-/

namespace A387600.P859776611741871446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -4, -4, 0, 4] n

end

end A387600.P859776611741871446

namespace A387600

/-- `ogf(1/(1-2x+x^2-4x^3-4x^4+4x^6))` -/
def P859776611741871446.Spec : Prop :=
  ∀ n, P859776611741871446.a n = A387600 n

end A387600

/-! ## A387600.P7196420963790053082

`1/2*∑{#}[floor(n/3), 2^#*C(2*n-4*#+2, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387600.P7196420963790053082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, 2 ^ k * Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 2).toNat (2 * k + 1) : ℕ) : ℚ)

end

end A387600.P7196420963790053082

namespace A387600

/-- `1/2*∑{#}[floor(n/3), 2^#*C(2*n-4*#+2, 2*#+1)]` -/
def P7196420963790053082.Spec : Prop :=
  ∀ n, P7196420963790053082.a n = (A387600 n : ℚ)

end A387600

/-! ## A387600.P15552032445827693754

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8, a(4)=25, a(5)=62`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387600

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P15552032445827693754.Spec : Prop :=
  ∀ n, P15552032445827693754.a n = A387600 n

theorem P15552032445827693754.correct : P15552032445827693754.Spec := by
  intro n
  simp only [A387600]

end A387600

/-! ## A387600.P8846498314115737336

`∑{#}[n, A387507(#)*A387507(n-#)]`
-/

namespace A387600.P8846498314115737336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A387507 k * A387507 (n - k)

end

end A387600.P8846498314115737336

namespace A387600

/-- `∑{#}[n, A387507(#)*A387507(n-#)]` -/
def P8846498314115737336.Spec : Prop :=
  ∀ n, P8846498314115737336.a n = A387600 n

end A387600

/-! ## A387600.P15860082503861276077

`A032742(A387628(n)+A387625(n))`
-/

namespace A387600.P15860082503861276077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A387628 n + A387625 n).toNat

end

end A387600.P15860082503861276077

namespace A387600

/-- `A032742(A387628(n)+A387625(n))` -/
def P15860082503861276077.Spec : Prop :=
  ∀ n, P15860082503861276077.a n = A387600 n

end A387600

/-!
# A387601: a(n) = (1/2) * Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+2,2*k+1).

The programs for A387601, the canonical program `A387601.P7322538152632254719` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387601 has offset 0).

The definition of A387601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387601.P535579053095095979

`ogf(1/(1-2x+x^2-4x^4-4x^5+4x^8))`
-/

namespace A387601.P535579053095095979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, -4, -4, 0, 0, 4] n

end

end A387601.P535579053095095979

namespace A387601

/-- `ogf(1/(1-2x+x^2-4x^4-4x^5+4x^8))` -/
def P535579053095095979.Spec : Prop :=
  ∀ n, P535579053095095979.a n = A387601 n

end A387601

/-! ## A387601.P7322538152632254719

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=9, a(5)=26, a(6)=63, a(7)=128`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387601

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P7322538152632254719.Spec : Prop :=
  ∀ n, P7322538152632254719.a n = A387601 n

theorem P7322538152632254719.correct : P7322538152632254719.Spec := by
  intro n
  simp only [A387601]

end A387601

/-! ## A387601.P11298828345785631791

`1/2*∑{#}[floor(n/4), 2^#*C(2*n-6*#+2, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387601.P11298828345785631791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, 2 ^ k * Nat.choose ((2 * n : ℤ) - (6 * k : ℤ) + 2).toNat (2 * k + 1) : ℕ) : ℚ)

end

end A387601.P11298828345785631791

namespace A387601

/-- `1/2*∑{#}[floor(n/4), 2^#*C(2*n-6*#+2, 2*#+1)]` -/
def P11298828345785631791.Spec : Prop :=
  ∀ n, P11298828345785631791.a n = (A387601 n : ℚ)

end A387601

/-! ## A387601.P5734209528278380374

`∑{#}[n, A387508(#)*A387508(n-#)]`
-/

namespace A387601.P5734209528278380374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A387508 k * A387508 (n - k)

end

end A387601.P5734209528278380374

namespace A387601

/-- `∑{#}[n, A387508(#)*A387508(n-#)]` -/
def P5734209528278380374.Spec : Prop :=
  ∀ n, P5734209528278380374.a n = A387601 n

end A387601

/-! ## A387601.P4016783665913638504

`A032742(A387629(n)+A387626(n))`
-/

namespace A387601.P4016783665913638504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A387629 n + A387626 n).toNat

end

end A387601.P4016783665913638504

namespace A387601

/-- `A032742(A387629(n)+A387626(n))` -/
def P4016783665913638504.Spec : Prop :=
  ∀ n, P4016783665913638504.a n = A387601 n

end A387601

/-!
# A387602: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^(n-2*k) * binomial(2*n-4*k+2,2*k+1).

The programs for A387602, the canonical program `A387602.P9605008216425242075` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387602 has offset 0).

The definition of A387602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387602.P9605008216425242075

`ogf(1/(1-4x+4x^2-4x^3-8x^4+4x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387602

/-- `ogf(1/(1-4x+4x^2-4x^3-8x^4+4x^6))` -/
def P9605008216425242075.Spec : Prop :=
  ∀ n, P9605008216425242075.a n = A387602 n

theorem P9605008216425242075.correct : P9605008216425242075.Spec := by
  intro n
  simp only [A387602]

end A387602

/-! ## A387602.P8202725201375197695

`1/2*∑{#}[floor(n/3), 2^(n-2*#)*C(2*n-4*#+2, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387602.P8202725201375197695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 2).toNat (2 * k + 1) : ℚ))

end

end A387602.P8202725201375197695

namespace A387602

/-- `1/2*∑{#}[floor(n/3), 2^(n-2*#)*C(2*n-4*#+2, 2*#+1)]` -/
def P8202725201375197695.Spec : Prop :=
  ∀ n, P8202725201375197695.a n = (A387602 n : ℚ)

end A387602

/-! ## A387602.P9457052340310872553

`∑{#}[n, A387510(#)*A387510(n-#)]`
-/

namespace A387602.P9457052340310872553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A387510 k * A387510 (n - k)

end

end A387602.P9457052340310872553

namespace A387602

/-- `∑{#}[n, A387510(#)*A387510(n-#)]` -/
def P9457052340310872553.Spec : Prop :=
  ∀ n, P9457052340310872553.a n = A387602 n

end A387602

/-!
# A387603: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^(n-k) * binomial(2*n-4*k+2,2*k+1).

The programs for A387603, the canonical program `A387603.P2277279029099764929` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387603 has offset 0).

The definition of A387603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387603.P2277279029099764929

`ogf(1/(1-4x+4x^2-8x^3-16x^4+16x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387603

/-- `ogf(1/(1-4x+4x^2-8x^3-16x^4+16x^6))` -/
def P2277279029099764929.Spec : Prop :=
  ∀ n, P2277279029099764929.a n = A387603 n

theorem P2277279029099764929.correct : P2277279029099764929.Spec := by
  intro n
  simp only [A387603]

end A387603

/-! ## A387603.P2045113425269703075

`1/2*∑{#}[floor(n/3), 2^(n-#)*C(2*n-4*#+2, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387603.P2045113425269703075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 2).toNat (2 * k + 1) : ℚ))

end

end A387603.P2045113425269703075

namespace A387603

/-- `1/2*∑{#}[floor(n/3), 2^(n-#)*C(2*n-4*#+2, 2*#+1)]` -/
def P2045113425269703075.Spec : Prop :=
  ∀ n, P2045113425269703075.a n = (A387603 n : ℚ)

end A387603

/-! ## A387603.P16484968214206735419

`∑{#}[n, A387509(#)*A387509(n-#)]`
-/

namespace A387603.P16484968214206735419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A387509 k * A387509 (n - k)

end

end A387603.P16484968214206735419

namespace A387603

/-- `∑{#}[n, A387509(#)*A387509(n-#)]` -/
def P16484968214206735419.Spec : Prop :=
  ∀ n, P16484968214206735419.a n = A387603 n

end A387603

/-!
# A387604: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 3^(n-2*k) * binomial(2*n-4*k+2,2*k+1).

The programs for A387604, the canonical program `A387604.P8462767362276057586` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387604 has offset 0).

The definition of A387604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387604.P8462767362276057586

`ogf(1/(1-6x+9x^2-6x^3-18x^4+9x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387604

/-- `ogf(1/(1-6x+9x^2-6x^3-18x^4+9x^6))` -/
def P8462767362276057586.Spec : Prop :=
  ∀ n, P8462767362276057586.a n = A387604 n

theorem P8462767362276057586.correct : P8462767362276057586.Spec := by
  intro n
  simp only [A387604]

end A387604

/-! ## A387604.P7581750034665091607

`1/2*∑{#}[floor(n/3), 3^(n-2*#)*C(2*n-4*#+2, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387604.P7581750034665091607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, (3 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 2).toNat (2 * k + 1) : ℚ))

end

end A387604.P7581750034665091607

namespace A387604

/-- `1/2*∑{#}[floor(n/3), 3^(n-2*#)*C(2*n-4*#+2, 2*#+1)]` -/
def P7581750034665091607.Spec : Prop :=
  ∀ n, P7581750034665091607.a n = (A387604 n : ℚ)

end A387604

/-! ## A387604.P2907262434760318566

`∑{#}[n, A387513(#)*A387513(n-#)]`
-/

namespace A387604.P2907262434760318566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A387513 k * A387513 (n - k)

end

end A387604.P2907262434760318566

namespace A387604

/-- `∑{#}[n, A387513(#)*A387513(n-#)]` -/
def P2907262434760318566.Spec : Prop :=
  ∀ n, P2907262434760318566.a n = A387604 n

end A387604

/-!
# A387611: a(n) = numerator(Integral_{(x,y,z) in R^3 : 0 <= x^2 + y^2 + z^2 <= n^2} (x^2 + y^2) dx dy dz)/Pi.

The programs for A387611, the canonical program `A387611.P17399779197116354603` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387611 has offset 0).

The definition of A387611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387611.P17399779197116354603

`8*n^5/gcd(n, 15)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387611

/-- `8*n^5/gcd(n, 15)` -/
def P17399779197116354603.Spec : Prop :=
  ∀ n, P17399779197116354603.a n = (A387611 n : ℚ)

end A387611

/-! ## A387611.P12283115813458115237

`A008590(n^A064289(3*n+1))`
-/

namespace A387611.P12283115813458115237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A064289 (3 * n + 1) : ℤ))).toNat

end

end A387611.P12283115813458115237

namespace A387611

/-- `A008590(n^A064289(3*n+1))` -/
def P12283115813458115237.Spec : Prop :=
  ∀ n, P12283115813458115237.a n = A387611 n

end A387611

/-!
# A387612: a(n) = denominator(Integral_{(x,y,z) in R^3 : 0 <= x^2 + y^2 + z^2 <= n^2}(x^2 + y^2) dx dy dz).

The programs for A387612, the canonical program `A387612.P380487615845563895` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387612 has offset 0).

The definition of A387612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387612.P380487615845563895

`15/gcd(15, n)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387612

/-- `15/gcd(15, n)` -/
def P380487615845563895.Spec : Prop :=
  ∀ n, P380487615845563895.a n = (A387612 n : ℚ)

end A387612

/-!
# A387614: The Pythagoras number of the maximal order of the field Q(sqrt(D)), where D = A005117(n) is the n-th squarefree number.

The programs for A387614, the canonical program `A387614.P8023775704916743095` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387614 has offset 1).

The definition of A387614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387614.P8023775704916743095

`5-ceil(C(5, n)/(n+3))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387614

/-- `5-ceil(C(5, n)/(n+3))` -/
def P8023775704916743095.Spec : Prop :=
  ∀ n, P8023775704916743095.a n = A387614 (n + 1)

theorem P8023775704916743095.correct : P8023775704916743095.Spec := by
  intro n
  simp only [A387614, Nat.add_sub_cancel]

end A387614

/-!
# A387615: Table of T(b,n) read by ascending antidiagonals, where T(b,n) is the smallest positive integer k for which every nonzero digit in base b appears in the k first multiples of n for b>=2, n>=1.

The programs for A387615, there is no canonical definition to state claims against.
-/

/-! ## A387615.P18358150919747356566

`A294733(n+1)+A081163(A370703(n))`
-/

namespace A387615.P18358150919747356566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (n + 1) + A081163 (A370703 n).toNat

end

end A387615.P18358150919747356566

/-! ## A387615.P17980862839799164062

`A294733(A065640(n+1))`
-/

namespace A387615.P17980862839799164062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (A065640 (n + 1)).toNat

end

end A387615.P17980862839799164062

/-! ## A387615.P6706921089903011607

`A294733(A193551(n+1))`
-/

namespace A387615.P6706921089903011607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (A193551 (n + 1)).toNat

end

end A387615.P6706921089903011607

/-! ## A387615.P14873717417711320216

`A294733(A284099(n+1)+n)`
-/

namespace A387615.P14873717417711320216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (A284099 (n + 1) + (n : ℤ)).toNat

end

end A387615.P14873717417711320216

/-! ## A387615.P9441929689725464861

`(row(n)+1-col(n))*A030599(A001519(n))`
-/

namespace A387615.P9441929689725464861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * A030599 (A001519 n).toNat

end

end A387615.P9441929689725464861

/-!
# A387618: Smallest positive integer k such that there exists an algebraic integer in Q(sqrt(D)) of norm -k, where D = A005117(n) is the n-th squarefree number.

The programs for A387618, there is no canonical definition to state claims against.
-/

/-! ## A387618.P8779650560824553738

`A356096(A379302(n+4))+A003849(n+3)`
-/

namespace A387618.P8779650560824553738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356096 (A379302 (n + 4)).toNat + A003849 (n + 3)

end

end A387618.P8779650560824553738

/-!
# A387619: Number of ways to tile a 2 X n strip with squares, dominoes, and (straight and bent) trominoes.

The programs for A387619, the canonical program `A387619.P3506314729585621025` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387619 has offset 0).

The definition of A387619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387619.P3506314729585621025

`ogf((1-x-x^2-x^3)/(1-3x-6x^2-7x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387619

/-- `ogf((1-x-x^2-x^3)/(1-3x-6x^2-7x^3-2x^4+x^6))` -/
def P3506314729585621025.Spec : Prop :=
  ∀ n, P3506314729585621025.a n = A387619 n

theorem P3506314729585621025.correct : P3506314729585621025.Spec := by
  intro n
  simp only [A387619]

end A387619

/-!
# A387620: Perfect powers that are neither prime powers nor products of primorials.

The programs for A387620, there is no canonical definition to state claims against.
-/

/-! ## A387620.P8116769972054598558

`∪[A380452(n+1), A380456(n+1)]`
-/

namespace A387620.P8116769972054598558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P8116769972054598558

/-! ## A387620.P13777530670867959735

`∩[A001597(n+1), A369636(n+1)]`
-/

namespace A387620.P13777530670867959735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P13777530670867959735

/-! ## A387620.P7492693924387231836

`∩[A131605(n+1), A369636(n+1)]`
-/

namespace A387620.P7492693924387231836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P7492693924387231836

/-! ## A387620.P477735986994534549

`∩[A369636(n+1), A377702(n+1)]`
-/

namespace A387620.P477735986994534549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P477735986994534549

/-! ## A387620.P17647625761166057069

`∩[A369636(n+1), A396856(n+1)]`
-/

namespace A387620.P17647625761166057069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P17647625761166057069

/-! ## A387620.P13760003944693657232

`∩[A001597(n+1), A367268(n+1)]`
-/

namespace A387620.P13760003944693657232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P13760003944693657232

/-! ## A387620.P7564211435708755472

`∩[A002760(n+1), A367268(n+1)]`
-/

namespace A387620.P7564211435708755472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P7564211435708755472

/-! ## A387620.P2793891565573021409

`∩[A131605(n+1), A367268(n+1)]`
-/

namespace A387620.P2793891565573021409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P2793891565573021409

/-! ## A387620.P7310764207039367682

`filter[A367268(n+1), A075802(#)]`
-/

namespace A387620.P7310764207039367682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A387620.P7310764207039367682

/-! ## A387620.P8819139886575500125

`filter[A369636(n+1), A075802(#)]`
-/

namespace A387620.P8819139886575500125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A387620.P8819139886575500125

/-!
# A387622: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k,2*k).

The programs for A387622, the canonical program `A387622.P13832258387223301261` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387622 has offset 0).

The definition of A387622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), 2^#*C(2*n-4*#, 2*#)]` (program `A387622.P13832258387223301261`, by `A387622.P13832258387223301261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387622.P1988959020378741824

`ogf((1-x-2x^3)/(1-2x+x^2-4x^3-4x^4+4x^6))`
-/

namespace A387622.P1988959020378741824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -2, 1, -4, -4, 0, 4] n

end

end A387622.P1988959020378741824

namespace A387622

/-- `ogf((1-x-2x^3)/(1-2x+x^2-4x^3-4x^4+4x^6))` -/
def P1988959020378741824.Spec : Prop :=
  ∀ n, P1988959020378741824.a n = A387622 n

end A387622

/-! ## A387622.P13832258387223301261

`∑{#}[floor(n/3), 2^#*C(2*n-4*#, 2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387622

/-- `∑{#}[floor(n/3), 2^#*C(2*n-4*#, 2*#)]` -/
def P13832258387223301261.Spec : Prop :=
  ∀ n, (P13832258387223301261.a n : ℤ) = A387622 n

theorem P13832258387223301261.correct : P13832258387223301261.Spec := by
  intro n
  simp only [A387622]

end A387622

/-! ## A387622.P17213284431742214818

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=13, a(5)=31`
-/

namespace A387622.P17213284431742214818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 13, 31] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387622.P17213284431742214818

namespace A387622

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P17213284431742214818.Spec : Prop :=
  ∀ n, P17213284431742214818.a n = A387622 n

end A387622

/-!
# A387623: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k,2*k).

The programs for A387623, the canonical program `A387623.P14870225882730452946` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387623 has offset 0).

The definition of A387623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), 2^#*C(2*n-6*#, 2*#)]` (program `A387623.P14870225882730452946`, by `A387623.P14870225882730452946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387623.P9636861957102177366

`ogf((1-x-2x^4)/(1-2x+x^2-4x^4-4x^5+4x^8))`
-/

namespace A387623.P9636861957102177366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, -2] [1, -2, 1, 0, -4, -4, 0, 0, 4] n

end

end A387623.P9636861957102177366

namespace A387623

/-- `ogf((1-x-2x^4)/(1-2x+x^2-4x^4-4x^5+4x^8))` -/
def P9636861957102177366.Spec : Prop :=
  ∀ n, P9636861957102177366.a n = A387623 n

end A387623

/-! ## A387623.P14870225882730452946

`∑{#}[floor(n/4), 2^#*C(2*n-6*#, 2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387623

/-- `∑{#}[floor(n/4), 2^#*C(2*n-6*#, 2*#)]` -/
def P14870225882730452946.Spec : Prop :=
  ∀ n, (P14870225882730452946.a n : ℤ) = A387623 n

theorem P14870225882730452946.correct : P14870225882730452946.Spec := by
  intro n
  simp only [A387623]

end A387623

/-! ## A387623.P16544980671046502623

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=13, a(6)=31, a(7)=57`
-/

namespace A387623.P16544980671046502623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3, 13, 31, 57] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387623.P16544980671046502623

namespace A387623

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P16544980671046502623.Spec : Prop :=
  ∀ n, P16544980671046502623.a n = A387623 n

end A387623

/-!
# A387624: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*n-2*k+1,2*k).

The programs for A387624, the canonical program `A387624.P17206554956776550098` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387624 has offset 0).

The definition of A387624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), 2^#*C(2*n-2*#+1, 2*#)]` (program `A387624.P17206554956776550098`, by `A387624.P17206554956776550098.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387624.P16573114230241565250

`ogf((1-x+2x^2)/(1-2x-3x^2-4x^3+4x^4))`
-/

namespace A387624.P16573114230241565250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -2, -3, -4, 4] n

end

end A387624.P16573114230241565250

namespace A387624

/-- `ogf((1-x+2x^2)/(1-2x-3x^2-4x^3+4x^4))` -/
def P16573114230241565250.Spec : Prop :=
  ∀ n, P16573114230241565250.a n = A387624 n

end A387624

/-! ## A387624.P17206554956776550098

`∑{#}[floor(n/2), 2^#*C(2*n-2*#+1, 2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387624

/-- `∑{#}[floor(n/2), 2^#*C(2*n-2*#+1, 2*#)]` -/
def P17206554956776550098.Spec : Prop :=
  ∀ n, (P17206554956776550098.a n : ℤ) = A387624 n

theorem P17206554956776550098.correct : P17206554956776550098.Spec := by
  intro n
  simp only [A387624]

end A387624

/-! ## A387624.P18351110829179417898

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=21`
-/

namespace A387624.P18351110829179417898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 21] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3) - 4 * a (n - 4)

end

end A387624.P18351110829179417898

namespace A387624

/-- `2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P18351110829179417898.Spec : Prop :=
  ∀ n, P18351110829179417898.a n = A387624 n

end A387624

/-! ## A387624.P17449092096729948492

`A098575(Δ[n²])`
-/

namespace A387624.P17449092096729948492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387624.P17449092096729948492

namespace A387624

/-- `A098575(Δ[n²])` -/
def P17449092096729948492.Spec : Prop :=
  ∀ n, P17449092096729948492.a n = A387624 n

end A387624

/-! ## A387624.P2887896284610033338

`or(1, A098575(2*n+1))`
-/

namespace A387624.P2887896284610033338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098575 (2 * n + 1))

end

end A387624.P2887896284610033338

namespace A387624

/-- `or(1, A098575(2*n+1))` -/
def P2887896284610033338.Spec : Prop :=
  ∀ n, P2887896284610033338.a n = A387624 n

end A387624

/-! ## A387624.P4960875048660742011

`Δ[A387627(n)]-A108480(n+1)`
-/

namespace A387624.P4960875048660742011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A108480 (n + 1)

end

end A387624.P4960875048660742011

namespace A387624

/-- `Δ[A387627(n)]-A108480(n+1)` -/
def P4960875048660742011.Spec : Prop :=
  ∀ n, P4960875048660742011.a n = A387624 n

end A387624

/-!
# A387625: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+1,2*k).

The programs for A387625, the canonical program `A387625.P17959632883365324159` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387625 has offset 0).

The definition of A387625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), 2^#*C(2*n-4*#+1, 2*#)]` (program `A387625.P17959632883365324159`, by `A387625.P17959632883365324159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387625.P13668402721089094102

`ogf((1-x+2x^3)/(1-2x+x^2-4x^3-4x^4+4x^6))`
-/

namespace A387625.P13668402721089094102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 2] [1, -2, 1, -4, -4, 0, 4] n

end

end A387625.P13668402721089094102

namespace A387625

/-- `ogf((1-x+2x^3)/(1-2x+x^2-4x^3-4x^4+4x^6))` -/
def P13668402721089094102.Spec : Prop :=
  ∀ n, P13668402721089094102.a n = A387625 n

end A387625

/-! ## A387625.P17959632883365324159

`∑{#}[floor(n/3), 2^#*C(2*n-4*#+1, 2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387625

/-- `∑{#}[floor(n/3), 2^#*C(2*n-4*#+1, 2*#)]` -/
def P17959632883365324159.Spec : Prop :=
  ∀ n, (P17959632883365324159.a n : ℤ) = A387625 n

theorem P17959632883365324159.correct : P17959632883365324159.Spec := by
  intro n
  simp only [A387625]

end A387625

/-! ## A387625.P4687865049303587296

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=21, a(5)=43`
-/

namespace A387625.P4687865049303587296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 7, 21, 43] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387625.P4687865049303587296

namespace A387625

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P4687865049303587296.Spec : Prop :=
  ∀ n, P4687865049303587296.a n = A387625 n

end A387625

/-!
# A387626: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+1,2*k).

The programs for A387626, the canonical program `A387626.P15503742493073514610` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387626 has offset 0).

The definition of A387626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), 2^#*C(2*n-6*#+1, 2*#)]` (program `A387626.P15503742493073514610`, by `A387626.P15503742493073514610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387626.P15503742493073514610

`∑{#}[floor(n/4), 2^#*C(2*n-6*#+1, 2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387626

/-- `∑{#}[floor(n/4), 2^#*C(2*n-6*#+1, 2*#)]` -/
def P15503742493073514610.Spec : Prop :=
  ∀ n, (P15503742493073514610.a n : ℤ) = A387626 n

theorem P15503742493073514610.correct : P15503742493073514610.Spec := by
  intro n
  simp only [A387626]

end A387626

/-! ## A387626.P12143061957277458242

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=7, a(5)=21, a(6)=43, a(7)=73`
-/

namespace A387626.P12143061957277458242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 7, 21, 43, 73] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387626.P12143061957277458242

namespace A387626

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P12143061957277458242.Spec : Prop :=
  ∀ n, P12143061957277458242.a n = A387626 n

end A387626

/-! ## A387626.P11694382888214048982

`ogf((1-x+2x^4)/(1-2x+x^2-4x^4-4x^5+4x^8))`
-/

namespace A387626.P11694382888214048982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, 2] [1, -2, 1, 0, -4, -4, 0, 0, 4] n

end

end A387626.P11694382888214048982

namespace A387626

/-- `ogf((1-x+2x^4)/(1-2x+x^2-4x^4-4x^5+4x^8))` -/
def P11694382888214048982.Spec : Prop :=
  ∀ n, P11694382888214048982.a n = A387626 n

end A387626

/-! ## A387626.P484407123567729160

`A387629(n+1)-(A387629(n)+A387623(n+1))`
-/

namespace A387626.P484407123567729160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387629 (n + 1) - (A387629 n + A387623 (n + 1))

end

end A387626.P484407123567729160

namespace A387626

/-- `A387629(n+1)-(A387629(n)+A387623(n+1))` -/
def P484407123567729160.Spec : Prop :=
  ∀ n, P484407123567729160.a n = A387626 n

end A387626

/-! ## A387626.P14280560485003113725

`A349174(A098576(n))`
-/

namespace A387626.P14280560485003113725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349174 (A098576 n).toNat

end

end A387626.P14280560485003113725

namespace A387626

/-- `A349174(A098576(n))` -/
def P14280560485003113725.Spec : Prop :=
  ∀ n, P14280560485003113725.a n = A387626 n

end A387626

/-!
# A387627: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*n-2*k+1,2*k+1).

The programs for A387627, the canonical program `A387627.P11975795013309342997` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387627 has offset 0).

The definition of A387627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), 2^#*C(2*n-2*#+1, 2*#+1)]` (program `A387627.P11975795013309342997`, by `A387627.P11975795013309342997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387627.P6633561598921103439

`ogf((1+x-2x^2)/(1-2x-3x^2-4x^3+4x^4))`
-/

namespace A387627.P6633561598921103439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -2, -3, -4, 4] n

end

end A387627.P6633561598921103439

namespace A387627

/-- `ogf((1+x-2x^2)/(1-2x-3x^2-4x^3+4x^4))` -/
def P6633561598921103439.Spec : Prop :=
  ∀ n, P6633561598921103439.a n = A387627 n

end A387627

/-! ## A387627.P11975795013309342997

`∑{#}[floor(n/2), 2^#*C(2*n-2*#+1, 2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387627

/-- `∑{#}[floor(n/2), 2^#*C(2*n-2*#+1, 2*#+1)]` -/
def P11975795013309342997.Spec : Prop :=
  ∀ n, (P11975795013309342997.a n : ℤ) = A387627 n

theorem P11975795013309342997.correct : P11975795013309342997.Spec := by
  intro n
  simp only [A387627]

end A387627

/-! ## A387627.P553432912788702254

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=27`
-/

namespace A387627.P553432912788702254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 27] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3) - 4 * a (n - 4)

end

end A387627.P553432912788702254

namespace A387627

/-- `2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P553432912788702254.Spec : Prop :=
  ∀ n, P553432912788702254.a n = A387627 n

end A387627

/-! ## A387627.P17881840125427841351

`record[(-1)^n*∑[A098575(n)]]`
-/

namespace A387627.P17881840125427841351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387627.P17881840125427841351

namespace A387627

/-- `record[(-1)^n*∑[A098575(n)]]` -/
def P17881840125427841351.Spec : Prop :=
  ∀ n, P17881840125427841351.a n = A387627 n

end A387627

/-! ## A387627.P13886912823874960315

`Δ[A375273(n)-A108480(n)]`
-/

namespace A387627.P13886912823874960315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375273 n - A108480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387627.P13886912823874960315

namespace A387627

/-- `Δ[A375273(n)-A108480(n)]` -/
def P13886912823874960315.Spec : Prop :=
  ∀ n, P13886912823874960315.a n = A387627 n

end A387627

/-!
# A387628: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+1,2*k+1).

The programs for A387628, the canonical program `A387628.P7468183345636792001` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387628 has offset 0).

The definition of A387628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), 2^#*C(2*n-4*#+1, 2*#+1)]` (program `A387628.P7468183345636792001`, by `A387628.P7468183345636792001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387628.P2761473666422320467

`ogf((1+x-2x^3)/(1-2x+x^2-4x^3-4x^4+4x^6))`
-/

namespace A387628.P2761473666422320467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -2] [1, -2, 1, -4, -4, 0, 4] n

end

end A387628.P2761473666422320467

namespace A387628

/-- `ogf((1+x-2x^3)/(1-2x+x^2-4x^3-4x^4+4x^6))` -/
def P2761473666422320467.Spec : Prop :=
  ∀ n, P2761473666422320467.a n = A387628 n

end A387628

/-! ## A387628.P7468183345636792001

`∑{#}[floor(n/3), 2^#*C(2*n-4*#+1, 2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387628

/-- `∑{#}[floor(n/3), 2^#*C(2*n-4*#+1, 2*#+1)]` -/
def P7468183345636792001.Spec : Prop :=
  ∀ n, (P7468183345636792001.a n : ℤ) = A387628 n

theorem P7468183345636792001.correct : P7468183345636792001.Spec := by
  intro n
  simp only [A387628]

end A387628

/-! ## A387628.P12659639395902407937

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9, a(4)=29, a(5)=81`
-/

namespace A387628.P12659639395902407937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 9, 29, 81] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387628.P12659639395902407937

namespace A387628

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P12659639395902407937.Spec : Prop :=
  ∀ n, P12659639395902407937.a n = A387628 n

end A387628

/-!
# A387629: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+1,2*k+1).

The programs for A387629, the canonical program `A387629.P18266912500978036435` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387629 has offset 0).

The definition of A387629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), 2^#*C(2*n-6*#+1, 2*#+1)]` (program `A387629.P18266912500978036435`, by `A387629.P18266912500978036435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387629.P18266912500978036435

`∑{#}[floor(n/4), 2^#*C(2*n-6*#+1, 2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387629

/-- `∑{#}[floor(n/4), 2^#*C(2*n-6*#+1, 2*#+1)]` -/
def P18266912500978036435.Spec : Prop :=
  ∀ n, (P18266912500978036435.a n : ℤ) = A387629 n

theorem P18266912500978036435.correct : P18266912500978036435.Spec := by
  intro n
  simp only [A387629]

end A387629

/-! ## A387629.P9691728918316883031

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11, a(5)=31, a(6)=83, a(7)=183`
-/

namespace A387629.P9691728918316883031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 11, 31, 83, 183] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387629.P9691728918316883031

namespace A387629

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P9691728918316883031.Spec : Prop :=
  ∀ n, P9691728918316883031.a n = A387629 n

end A387629

/-! ## A387629.P17815889918692477934

`ogf((1+x-2x^4)/(1-2x+x^2-4x^4-4x^5+4x^8))`
-/

namespace A387629.P17815889918692477934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 0, -2] [1, -2, 1, 0, -4, -4, 0, 0, 4] n

end

end A387629.P17815889918692477934

namespace A387629

/-- `ogf((1+x-2x^4)/(1-2x+x^2-4x^4-4x^5+4x^8))` -/
def P17815889918692477934.Spec : Prop :=
  ∀ n, P17815889918692477934.a n = A387629 n

end A387629

/-!
# A387630: A005117(k) - 1 such that A389412(k) is a record value.

The programs for A387630, there is no canonical definition to state claims against.
-/

/-! ## A387630.P5168361997256273565

`A064915(A008061(n))`
-/

namespace A387630.P5168361997256273565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064915 (A008061 n).toNat

end

end A387630.P5168361997256273565

/-!
# A387631: Sombor energy of the n-triangular honeycomb queen graph divided by sqrt(2).

The programs for A387631, there is no canonical definition to state claims against.
-/

/-! ## A387631.P12574171843564121150

`n*A278063(A167750(n+1))`
-/

namespace A387631.P12574171843564121150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278063 (A167750 (n + 1)).toNat

end

end A387631.P12574171843564121150

/-! ## A387631.P5742687805334586014

`∑[A014499(A387013(n))]*n`
-/

namespace A387631.P5742687805334586014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A387013 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ)

end

end A387631.P5742687805334586014

/-!
# A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

The programs for A387633, the canonical program `A387633.P569874418725638644` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387633 has offset 1).

The definition of A387633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387633.P9602951934277716072

`A000005(n+1)+n*A034444(n+1)`
-/

namespace A387633.P9602951934277716072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A034444 (n + 1)

end

end A387633.P9602951934277716072

namespace A387633

/-- `A000005(n+1)+n*A034444(n+1)` -/
def P9602951934277716072.Spec : Prop :=
  ∀ n, P9602951934277716072.a n = A387633 (n + 1)

end A387633

/-! ## A387633.P569874418725638644

`A000005(n+1)+n*A000005(A007947(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A387633

/-- `A000005(n+1)+n*A000005(A007947(n+1))` -/
def P569874418725638644.Spec : Prop :=
  ∀ n, P569874418725638644.a n = A387633 (n + 1)

theorem P569874418725638644.correct : P569874418725638644.Spec := by
  intro n
  simp only [A387633, Nat.add_sub_cancel]

end A387633

/-! ## A387633.P696851532878600419

`∑{d}[n+1, (n+1)^A008683((n+1)/#)²]`
-/

namespace A387633.P696851532878600419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2 : ℤ)

end

end A387633.P696851532878600419

namespace A387633

/-- `∑{d}[n+1, (n+1)^A008683((n+1)/#)²]` -/
def P696851532878600419.Spec : Prop :=
  ∀ n, P696851532878600419.a n = (A387633 (n + 1) : ℚ)

end A387633

/-! ## A387633.P13911343099443037647

`A345276(n+1)+A001615(n+1)`
-/

namespace A387633.P13911343099443037647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345276 (n + 1) + A001615 (n + 1)

end

end A387633.P13911343099443037647

namespace A387633

/-- `A345276(n+1)+A001615(n+1)` -/
def P13911343099443037647.Spec : Prop :=
  ∀ n, P13911343099443037647.a n = A387633 (n + 1)

end A387633

/-! ## A387633.P11114619457823242342

`A000005(n+1)+A034444(n+1)*n`
-/

namespace A387633.P11114619457823242342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A034444 (n + 1) * (n : ℤ)

end

end A387633.P11114619457823242342

namespace A387633

/-- `A000005(n+1)+A034444(n+1)*n` -/
def P11114619457823242342.Spec : Prop :=
  ∀ n, P11114619457823242342.a n = A387633 (n + 1)

end A387633

/-!
# A387634: Indices k such that s(k) is a prime p, s(k-1) = 2*p, and s(k+1) = 3*p, where s = A386482.

The programs for A387634, there is no canonical definition to state claims against.
-/

/-! ## A387634.P427027059842795812

`A387072(A387524(n+1))`
-/

namespace A387634.P427027059842795812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387524 (n + 1)).toNat

end

end A387634.P427027059842795812

/-! ## A387634.P12454669102847711426

`A386483(A000720(A387524(A387544(A387544(n+1)))))`
-/

namespace A387634.P12454669102847711426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386483 (A000720 (A387524 (A387544 (A387544 (n + 1)).toNat).toNat).toNat).toNat

end

end A387634.P12454669102847711426

/-! ## A387634.P5304890903527821806

`A386483(A000720(A387524(A387640(A387640(n+1)))))`
-/

namespace A387634.P5304890903527821806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386483 (A000720 (A387524 (A387640 (A387640 (n + 1)).toNat).toNat).toNat).toNat

end

end A387634.P5304890903527821806

/-!
# A387635: a(n) = Sum_{k=0..n-1} binomial(2*n, k)^2.

The programs for A387635, the canonical program `A387635.P13910064210852296211` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387635 has offset 0).

The definition of A387635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(2*n, #)²]` (program `A387635.P13910064210852296211`, by `A387635.P13910064210852296211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387635.P13910064210852296211

`∑{#}[n-1, C(2*n, #)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387635

/-- `∑{#}[n-1, C(2*n, #)²]` -/
def P13910064210852296211.Spec : Prop :=
  ∀ n, (P13910064210852296211.a n : ℤ) = A387635 n

theorem P13910064210852296211.correct : P13910064210852296211.Spec := by
  intro n
  simp only [A387635]

end A387635

/-! ## A387635.P2020936264565243468

`A036910(n)-A002894(n)`
-/

namespace A387635.P2020936264565243468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036910 n - A002894 n

end

end A387635.P2020936264565243468

namespace A387635

/-- `A036910(n)-A002894(n)` -/
def P2020936264565243468.Spec : Prop :=
  ∀ n, P2020936264565243468.a n = A387635 n

end A387635

/-! ## A387635.P14737453894151433710

`(C(4*n, 2*n)-C(2*n, n)²)/2`
-/

namespace A387635.P14737453894151433710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (4 * n) (2 * n) : ℤ) - (Nat.choose (2 * n) n ^ 2 : ℤ) : ℚ) / 2

end

end A387635.P14737453894151433710

namespace A387635

/-- `(C(4*n, 2*n)-C(2*n, n)²)/2` -/
def P14737453894151433710.Spec : Prop :=
  ∀ n, P14737453894151433710.a n = (A387635 n : ℚ)

end A387635

/-! ## A387635.P10152595660940462366

`∑{#}[n-1, C(2*n, #)^2]`
-/

namespace A387635.P10152595660940462366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * n) k ^ 2

end

end A387635.P10152595660940462366

namespace A387635

/-- `∑{#}[n-1, C(2*n, #)^2]` -/
def P10152595660940462366.Spec : Prop :=
  ∀ n, (P10152595660940462366.a n : ℤ) = A387635 n

theorem P10152595660940462366.correct : P10152595660940462366.Spec := by
  intro n
  simp only [A387635, Nat.add_sub_cancel, A387635.P10152595660940462366.f1, A387635.P10152595660940462366.a, A387635.P13910064210852296211.f1, A387635.P13910064210852296211.a, SequenceMachineLib.memo_apply]

end A387635

/-! ## A387635.P3624327208837501082

`∑{#}[n-1, C(2*n, #)*C(2*n, #)]`
-/

namespace A387635.P3624327208837501082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * n) k * Nat.choose (2 * n) k

end

end A387635.P3624327208837501082

namespace A387635

/-- `∑{#}[n-1, C(2*n, #)*C(2*n, #)]` -/
def P3624327208837501082.Spec : Prop :=
  ∀ n, (P3624327208837501082.a n : ℤ) = A387635 n

theorem P3624327208837501082.correct : P3624327208837501082.Spec := by
  intro n
  simp only [A387635, Nat.add_sub_cancel, A387635.P3624327208837501082.f1, A387635.P3624327208837501082.a, A387635.P13910064210852296211.f1, A387635.P13910064210852296211.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A387635

/-! ## A387635.P17575766255192401887

`A058621(2*n)`
-/

namespace A387635.P17575766255192401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058621 (2 * n)

end

end A387635.P17575766255192401887

namespace A387635

/-- `A058621(2*n)` -/
def P17575766255192401887.Spec : Prop :=
  ∀ n, P17575766255192401887.a n = A387635 n

end A387635

/-! ## A387635.P14043213170894852362

`A071801(2*n)/2`
-/

namespace A387635.P14043213170894852362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071801 (2 * n) : ℚ) / 2

end

end A387635.P14043213170894852362

namespace A387635

/-- `A071801(2*n)/2` -/
def P14043213170894852362.Spec : Prop :=
  ∀ n, P14043213170894852362.a n = (A387635 n : ℚ)

end A387635

/-! ## A387635.P14102925674542874586

`A001448(n)-A036910(n)`
-/

namespace A387635.P14102925674542874586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - A036910 n

end

end A387635.P14102925674542874586

namespace A387635

/-- `A001448(n)-A036910(n)` -/
def P14102925674542874586.Spec : Prop :=
  ∀ n, P14102925674542874586.a n = A387635 n

end A387635

/-! ## A387635.P16989290108488052433

`A000984(2*n)-A036910(n)`
-/

namespace A387635.P16989290108488052433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) - A036910 n

end

end A387635.P16989290108488052433

namespace A387635

/-- `A000984(2*n)-A036910(n)` -/
def P16989290108488052433.Spec : Prop :=
  ∀ n, P16989290108488052433.a n = A387635 n

end A387635

/-! ## A387635.P13723506395204390301

`A001448(n)-A277247(2*n)`
-/

namespace A387635.P13723506395204390301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - A277247 (2 * n)

end

end A387635.P13723506395204390301

namespace A387635

/-- `A001448(n)-A277247(2*n)` -/
def P13723506395204390301.Spec : Prop :=
  ∀ n, P13723506395204390301.a n = A387635 n

end A387635

/-!
# A387637: Number of compositions of n such that within in each maximal run of k's, up to k parts within that run can be marked.

The programs for A387637, there is no canonical definition to state claims against.
-/

/-! ## A387637.P5586235434551738278

`A038568(n*A357402(n))`
-/

namespace A387637.P5586235434551738278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 ((n : ℤ) * A357402 n).toNat

end

end A387637.P5586235434551738278

/-! ## A387637.P2542913954142611355

`A001462(A239103(n)+A005059(n))`
-/

namespace A387637.P2542913954142611355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A239103 n + A005059 n).toNat

end

end A387637.P2542913954142611355

/-! ## A387637.P9254338503119938107

`A001462(A250259(n)+A005059(n))`
-/

namespace A387637.P9254338503119938107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A250259 n + A005059 n).toNat

end

end A387637.P9254338503119938107

/-!
# A387639: Expansion of g/(1 + x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A387639, there is no canonical definition to state claims against.
-/

/-! ## A387639.P5227973334946755841

`A339858(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A387639.P5227973334946755841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A339858 (a (n - 1)).toNat

end

end A387639.P5227973334946755841

/-!
# A387640: A387523(n) is the a(n)-th prime number.

The programs for A387640, there is no canonical definition to state claims against.
-/

/-! ## A387640.P1266869897018874559

`A000720(A387523(n+1))`
-/

namespace A387640.P1266869897018874559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A387523 (n + 1)).toNat

end

end A387640.P1266869897018874559

/-! ## A387640.P15348620194184557043

`A003963(2*A387523(n+1))`
-/

namespace A387640.P15348620194184557043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A387523 (n + 1)).toNat

end

end A387640.P15348620194184557043

/-! ## A387640.P6899437318358614584

`A061395(2*A387523(n+1))`
-/

namespace A387640.P6899437318358614584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A387523 (n + 1)).toNat

end

end A387640.P6899437318358614584

/-! ## A387640.P2146960017942649853

`A344616(4*A387523(n+1))`
-/

namespace A387640.P2146960017942649853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (4 * A387523 (n + 1)).toNat

end

end A387640.P2146960017942649853

/-! ## A387640.P638600321079354416

`∏{p}[A387523(n+1), A061395(#)]`
-/

namespace A387640.P638600321079354416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p

end

end A387640.P638600321079354416

/-! ## A387640.P8848634966047348747

`A003963(A387523(n+1))%A016789(n)`
-/

namespace A387640.P8848634966047348747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A387523 (n + 1)).toNat) (A016789 n)

end

end A387640.P8848634966047348747

/-! ## A387640.P17039919629118047939

`A003963(A387523(n+1)%A002476(n+1))`
-/

namespace A387640.P17039919629118047939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A387523 (n + 1)) (A002476 (n + 1))).toNat

end

end A387640.P17039919629118047939

/-! ## A387640.P391017365069497804

`A056239(A387523(n+1))%A000040(n+1)`
-/

namespace A387640.P391017365069497804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A387523 (n + 1)).toNat) (A000040 (n + 1))

end

end A387640.P391017365069497804

/-!
# A387641: Sum of larger and smaller term of n-th psi-amicable pair, sorted by the smaller members from A323329.

The programs for A387641, there is no canonical definition to state claims against.
-/

/-! ## A387641.P8515253221639230400

`A323329(n+1)+A323330(n+1)`
-/

namespace A387641.P8515253221639230400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323329 (n + 1) + A323330 (n + 1)

end

end A387641.P8515253221639230400

/-! ## A387641.P16668324797748427543

`A323329(n+1)+A387885(n+1)/A323329(n+1)`
-/

namespace A387641.P16668324797748427543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323329 (n + 1) : ℚ) + (A387885 (n + 1) : ℚ) / (A323329 (n + 1) : ℚ)

end

end A387641.P16668324797748427543

/-! ## A387641.P771015495868746445

`A323330(n+1)+A387885(n+1)/A323330(n+1)`
-/

namespace A387641.P771015495868746445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323330 (n + 1) : ℚ) + (A387885 (n + 1) : ℚ) / (A323330 (n + 1) : ℚ)

end

end A387641.P771015495868746445

/-! ## A387641.P12780447827711773692

`A323329(n+1)+A387643(n+1)+A323329(n+1)`
-/

namespace A387641.P12780447827711773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323329 (n + 1) + (A387643 (n + 1) + A323329 (n + 1))

end

end A387641.P12780447827711773692

/-! ## A387641.P10004763851145127631

`A323330(n+1)+A323330(n+1)-A387643(n+1)`
-/

namespace A387641.P10004763851145127631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) + (A323330 (n + 1) - A387643 (n + 1))

end

end A387641.P10004763851145127631

/-!
# A387643: Difference between larger and smaller term of n-th psi-amicable pair, sorted by the smaller members from A323329.

The programs for A387643, there is no canonical definition to state claims against.
-/

/-! ## A387643.P14961616876851720531

`A323330(n+1)-A323329(n+1)`
-/

namespace A387643.P14961616876851720531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) - A323329 (n + 1)

end

end A387643.P14961616876851720531

/-! ## A387643.P3322483699579261748

`A387641(n+1)%A323329(n+1)`
-/

namespace A387643.P3322483699579261748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387641 (n + 1)) (A323329 (n + 1))

end

end A387643.P3322483699579261748

/-! ## A387643.P387287761310094385

`A323330(n+1)+A323330(n+1)-A387641(n+1)`
-/

namespace A387643.P387287761310094385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) + (A323330 (n + 1) - A387641 (n + 1))

end

end A387643.P387287761310094385

/-! ## A387643.P15846025093723496958

`A387885(n+1)/A323329(n+1)-A323329(n+1)`
-/

namespace A387643.P15846025093723496958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387885 (n + 1) : ℚ) / (A323329 (n + 1) : ℚ) - (A323329 (n + 1) : ℚ)

end

end A387643.P15846025093723496958

/-! ## A387643.P14510013421431235002

`A323330(n+1)-A387885(n+1)/A323330(n+1)`
-/

namespace A387643.P14510013421431235002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323330 (n + 1) : ℚ) - (A387885 (n + 1) : ℚ) / (A323330 (n + 1) : ℚ)

end

end A387643.P14510013421431235002

/-!
# A387644: Complement of A045944.

The programs for A387644, the canonical program `A387644.P12775165900026762` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387644 has offset 1).

The definition of A387644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387644.P1592594494167948362

`comp[∑[6*n]-n]`
-/

namespace A387644.P1592594494167948362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387644.P1592594494167948362

namespace A387644

/-- `comp[∑[6*n]-n]` -/
def P1592594494167948362.Spec : Prop :=
  ∀ n, (P1592594494167948362.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P14984708523584209322

`comp[A270710(n)]+1`
-/

namespace A387644.P14984708523584209322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387644.P14984708523584209322

namespace A387644

/-- `comp[A270710(n)]+1` -/
def P14984708523584209322.Spec : Prop :=
  ∀ n, (P14984708523584209322.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P14364777377865504262

`comp[A045944(n)-1]+1`
-/

namespace A387644.P14364777377865504262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387644.P14364777377865504262

namespace A387644

/-- `comp[A045944(n)-1]+1` -/
def P14364777377865504262.Spec : Prop :=
  ∀ n, (P14364777377865504262.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P4734081532598180243

`comp[A056109(n)-2]+1`
-/

namespace A387644.P4734081532598180243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387644.P4734081532598180243

namespace A387644

/-- `comp[A056109(n)-2]+1` -/
def P4734081532598180243.Spec : Prop :=
  ∀ n, (P4734081532598180243.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P3200649018716266232

`comp[∑[A016921(n)-2]]+1`
-/

namespace A387644.P3200649018716266232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387644.P3200649018716266232

namespace A387644

/-- `comp[∑[A016921(n)-2]]+1` -/
def P3200649018716266232.Spec : Prop :=
  ∀ n, (P3200649018716266232.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P15973778245299777391

`comp[A049451(n+1)+n]+1`
-/

namespace A387644.P15973778245299777391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387644.P15973778245299777391

namespace A387644

/-- `comp[A049451(n+1)+n]+1` -/
def P15973778245299777391.Spec : Prop :=
  ∀ n, (P15973778245299777391.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P8384477128094286486

`∑[char[∑[A016777(2*n+1)]]+1]`
-/

namespace A387644.P8384477128094286486
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387644.P8384477128094286486

namespace A387644

/-- `∑[char[∑[A016777(2*n+1)]]+1]` -/
def P8384477128094286486.Spec : Prop :=
  ∀ n, (P8384477128094286486.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P13602162335003093607

`∑[char[∑[A005843(3*n+2)]]+1]`
-/

namespace A387644.P13602162335003093607
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387644.P13602162335003093607

namespace A387644

/-- `∑[char[∑[A005843(3*n+2)]]+1]` -/
def P13602162335003093607.Spec : Prop :=
  ∀ n, (P13602162335003093607.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P3683652318780400114

`∪[A184010(n+1), A007980(n)]`
-/

namespace A387644.P3683652318780400114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387644.P3683652318780400114

namespace A387644

/-- `∪[A184010(n+1), A007980(n)]` -/
def P3683652318780400114.Spec : Prop :=
  ∀ n, (P3683652318780400114.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P16335365428918644786

`∪[A184010(n+1), A238377(n)]`
-/

namespace A387644.P16335365428918644786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387644.P16335365428918644786

namespace A387644

/-- `∪[A184010(n+1), A238377(n)]` -/
def P16335365428918644786.Spec : Prop :=
  ∀ n, (P16335365428918644786.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P12775165900026762

`A002264(A092200(A216256(n+1)))+n`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387644

/-- `A002264(A092200(A216256(n+1)))+n` -/
def P12775165900026762.Spec : Prop :=
  ∀ n, P12775165900026762.a n = A387644 (n + 1)

theorem P12775165900026762.correct : P12775165900026762.Spec := by
  intro n
  simp only [A387644, Nat.add_sub_cancel]

end A387644

/-! ## A387644.P17324193923604549116

`lt[A114855(n), 1]`
-/

namespace A387644.P17324193923604549116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114855 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387644.P17324193923604549116

namespace A387644

/-- `lt[A114855(n), 1]` -/
def P17324193923604549116.Spec : Prop :=
  ∀ n, (P17324193923604549116.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P12089103069042187791

`eq[A089802(n), A290739(n)]`
-/

namespace A387644.P12089103069042187791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387644.P12089103069042187791

namespace A387644

/-- `eq[A089802(n), A290739(n)]` -/
def P12089103069042187791.Spec : Prop :=
  ∀ n, (P12089103069042187791.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P15393321063640261413

`eq[2, A000034(A293895(3*n+1))]`
-/

namespace A387644.P15393321063640261413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A293895 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A387644.P15393321063640261413

namespace A387644

/-- `eq[2, A000034(A293895(3*n+1))]` -/
def P15393321063640261413.Spec : Prop :=
  ∀ n, (P15393321063640261413.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P17317888365212503725

`comp[A045944(n)]%A028393(n)`
-/

namespace A387644.P17317888365212503725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028393 n)

end

end A387644.P17317888365212503725

namespace A387644

/-- `comp[A045944(n)]%A028393(n)` -/
def P17317888365212503725.Spec : Prop :=
  ∀ n, P17317888365212503725.a n = A387644 (n + 1)

end A387644

/-! ## A387644.P9447177822676134949

`floor(A000037(3*n+2)/3)`
-/

namespace A387644.P9447177822676134949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000037 (3 * n + 2) : ℚ) / 3⌋

end

end A387644.P9447177822676134949

namespace A387644

/-- `floor(A000037(3*n+2)/3)` -/
def P9447177822676134949.Spec : Prop :=
  ∀ n, P9447177822676134949.a n = A387644 (n + 1)

end A387644

/-! ## A387644.P9354484057505735762

`floor(A259361(3*n+2)/3)+n+1`
-/

namespace A387644.P9354484057505735762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259361 (3 * n + 2) : ℚ) / 3⌋ + (n + 1 : ℤ)

end

end A387644.P9354484057505735762

namespace A387644

/-- `floor(A259361(3*n+2)/3)+n+1` -/
def P9354484057505735762.Spec : Prop :=
  ∀ n, P9354484057505735762.a n = A387644 (n + 1)

end A387644

/-!
# A387645: a(n) = m*(m-1)^2/2, where m = ceiling(n^2/2).

The programs for A387645, the canonical program `A387645.P11208717823661659370` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387645 has offset 1).

The definition of A387645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387645.P17771386816593053072

`ogf((x+38x^2+112x^3+394x^4+350x^5+394x^6+112x^7+38x^8+x^9)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`
-/

namespace A387645.P17771386816593053072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 38, 112, 394, 350, 394, 112, 38, 1] [1, -2, -4, 10, 5, -20, 0, 20, -5, -10, 4, 2, -1] n

end

end A387645.P17771386816593053072

namespace A387645

/-- `ogf((x+38x^2+112x^3+394x^4+350x^5+394x^6+112x^7+38x^8+x^9)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P17771386816593053072.Spec : Prop :=
  ∀ n, P17771386816593053072.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P11208717823661659370

`(2*(n+1)²-3-(-1)^(n+1))²*(2*(n+1)²+1-(-1)^(n+1))/128`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387645

/-- `(2*(n+1)²-3-(-1)^(n+1))²*(2*(n+1)²+1-(-1)^(n+1))/128` -/
def P11208717823661659370.Spec : Prop :=
  ∀ n, P11208717823661659370.a n = (A387645 (n + 1) : ℚ)

end A387645

/-! ## A387645.P1073610776290966673

`A002411(∑[or(1, n)-1]+n)`
-/

namespace A387645.P1073610776290966673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A387645.P1073610776290966673

namespace A387645

/-- `A002411(∑[or(1, n)-1]+n)` -/
def P1073610776290966673.Spec : Prop :=
  ∀ n, P1073610776290966673.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P18152145154603220054

`A002411(and(-2, n²)/2+n)`
-/

namespace A387645.P18152145154603220054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (SequenceMachineLib.roundAway ((Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 2 + (n : ℚ))).toNat

end

end A387645.P18152145154603220054

namespace A387645

/-- `A002411(and(-2, n²)/2+n)` -/
def P18152145154603220054.Spec : Prop :=
  ∀ n, P18152145154603220054.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P663900572635875682

`A002411(ceil((n²-1)/2)+n)`
-/

namespace A387645.P663900572635875682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (⌈((n ^ 2 : ℤ) - 1 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A387645.P663900572635875682

namespace A387645

/-- `A002411(ceil((n²-1)/2)+n)` -/
def P663900572635875682.Spec : Prop :=
  ∀ n, P663900572635875682.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P2008480526636809913

`A028724(A137928(n+1))`
-/

namespace A387645.P2008480526636809913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A137928 (n + 1)).toNat

end

end A387645.P2008480526636809913

namespace A387645

/-- `A028724(A137928(n+1))` -/
def P2008480526636809913.Spec : Prop :=
  ∀ n, P2008480526636809913.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P9765704085263548235

`A188067(A120413(n+1))`
-/

namespace A387645.P9765704085263548235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A120413 (n + 1)).toNat

end

end A387645.P9765704085263548235

namespace A387645

/-- `A188067(A120413(n+1))` -/
def P9765704085263548235.Spec : Prop :=
  ∀ n, P9765704085263548235.a n = A387645 (n + 1)

end A387645

/-!
# A387646: Characteristic function of A000537.

The programs for A387646, the canonical program `A387646.P8127621791678997301` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387646 has offset 0).

The definition of A387646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387646.P8127621791678997301

`char[∑[n]²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387646

/-- `char[∑[n]²]` -/
def P8127621791678997301.Spec : Prop :=
  ∀ n, (P8127621791678997301.a n : ℤ) = A387646 n

theorem P8127621791678997301.correct : P8127621791678997301.Spec := by
  intro n
  simp only [A387646]

end A387646

/-! ## A387646.P7013412381394144499

`and(1, char[∑[n^3]])`
-/

namespace A387646.P7013412381394144499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A387646.P7013412381394144499

namespace A387646

/-- `and(1, char[∑[n^3]])` -/
def P7013412381394144499.Spec : Prop :=
  ∀ n, (P7013412381394144499.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P18179853300858272519

`ceil(char[C(n, 2)²]/6)`
-/

namespace A387646.P18179853300858272519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 6⌉

end

end A387646.P18179853300858272519

namespace A387646

/-- `ceil(char[C(n, 2)²]/6)` -/
def P18179853300858272519.Spec : Prop :=
  ∀ n, P18179853300858272519.a n = A387646 n

end A387646

/-! ## A387646.P2076340614466454426

`C(3+char[C(n, 2)²], 4)`
-/

namespace A387646.P2076340614466454426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 + (if ∃ j, f1 j = n then 1 else 0)) 4

end

end A387646.P2076340614466454426

namespace A387646

/-- `C(3+char[C(n, 2)²], 4)` -/
def P2076340614466454426.Spec : Prop :=
  ∀ n, (P2076340614466454426.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P11425173594984105708

`C(char[∑[n^3]]+1, 2)`
-/

namespace A387646.P11425173594984105708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) 2

end

end A387646.P11425173594984105708

namespace A387646

/-- `C(char[∑[n^3]]+1, 2)` -/
def P11425173594984105708.Spec : Prop :=
  ∀ n, (P11425173594984105708.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P14011830504593436305

`1-xor(1, char[∑[n^3]])`
-/

namespace A387646.P14011830504593436305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A387646.P14011830504593436305

namespace A387646

/-- `1-xor(1, char[∑[n^3]])` -/
def P14011830504593436305.Spec : Prop :=
  ∀ n, P14011830504593436305.a n = A387646 n

end A387646

/-! ## A387646.P16555399878486304528

`log2(char[A000537(n)]+1)`
-/

namespace A387646.P16555399878486304528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℝ)

end

end A387646.P16555399878486304528

namespace A387646

/-- `log2(char[A000537(n)]+1)` -/
def P16555399878486304528.Spec : Prop :=
  ∀ n, P16555399878486304528.a n = (A387646 n : ℝ)

end A387646

/-! ## A387646.P17149166310472980514

`lcm(A014438(n), A291147(n))`
-/

namespace A387646.P17149166310472980514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014438 n) (A291147 n)

end

end A387646.P17149166310472980514

namespace A387646

/-- `lcm(A014438(n), A291147(n))` -/
def P17149166310472980514.Spec : Prop :=
  ∀ n, (P17149166310472980514.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P15726261059110088780

`A025446(A076449(n))`
-/

namespace A387646.P15726261059110088780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (A076449 n).toNat

end

end A387646.P15726261059110088780

namespace A387646

/-- `A025446(A076449(n))` -/
def P15726261059110088780.Spec : Prop :=
  ∀ n, P15726261059110088780.a n = A387646 n

end A387646

/-!
# A387647: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k,2*n-4*k).

The programs for A387647, the canonical program `A387647.P18070227687903299509` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387647 has offset 0).

The definition of A387647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387647.P14775761251742210071

`ogf((1-x^2-2x^3)/(1-2x^2-4x^3+x^4-4x^5+4x^6))`
-/

namespace A387647.P14775761251742210071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, 0, -2, -4, 1, -4, 4] n

end

end A387647.P14775761251742210071

namespace A387647

/-- `ogf((1-x^2-2x^3)/(1-2x^2-4x^3+x^4-4x^5+4x^6))` -/
def P14775761251742210071.Spec : Prop :=
  ∀ n, P14775761251742210071.a n = A387647 n

end A387647

/-! ## A387647.P18070227687903299509

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=1, a(5)=12`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387647

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P18070227687903299509.Spec : Prop :=
  ∀ n, P18070227687903299509.a n = A387647 n

theorem P18070227687903299509.correct : P18070227687903299509.Spec := by
  intro n
  simp only [A387647]

end A387647

/-! ## A387647.P12497766316028486041

`∑{#}[floor(n/2), 2^(n-2*#)*C(2*#, 2*n-4*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387647.P12497766316028486041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (2 * k) ((2 * n : ℤ) - (4 * k : ℤ)).toNat : ℚ)

end

end A387647.P12497766316028486041

namespace A387647

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(2*#, 2*n-4*#)]` -/
def P12497766316028486041.Spec : Prop :=
  ∀ n, P12497766316028486041.a n = (A387647 n : ℚ)

end A387647

/-!
# A387648: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k,2*n-6*k).

The programs for A387648, the canonical program `A387648.P14380713438877395612` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387648 has offset 0).

The definition of A387648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387648.P14380713438877395612

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=0, a(6)=1, a(7)=12`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387648

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P14380713438877395612.Spec : Prop :=
  ∀ n, P14380713438877395612.a n = A387648 n

theorem P14380713438877395612.correct : P14380713438877395612.Spec := by
  intro n
  simp only [A387648]

end A387648

/-! ## A387648.P9980917353021054660

`ogf((1-x^3-2x^4)/(1-2x^3-4x^4+x^6-4x^7+4x^8))`
-/

namespace A387648.P9980917353021054660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1, -2] [1, 0, 0, -2, -4, 0, 1, -4, 4] n

end

end A387648.P9980917353021054660

namespace A387648

/-- `ogf((1-x^3-2x^4)/(1-2x^3-4x^4+x^6-4x^7+4x^8))` -/
def P9980917353021054660.Spec : Prop :=
  ∀ n, P9980917353021054660.a n = A387648 n

end A387648

/-! ## A387648.P6330519567778460163

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*#, 2*n-6*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387648.P6330519567778460163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose (2 * k) ((2 * n : ℤ) - (6 * k : ℤ)).toNat : ℚ)

end

end A387648.P6330519567778460163

namespace A387648

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(2*#, 2*n-6*#)]` -/
def P6330519567778460163.Spec : Prop :=
  ∀ n, P6330519567778460163.a n = (A387648 n : ℚ)

end A387648

/-!
# A387649: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+1,2*n-4*k).

The programs for A387649, the canonical program `A387649.P14837382352768733732` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387649 has offset 0).

The definition of A387649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387649.P7607269957596433269

`ogf((1-x^2+2x^3)/(1-2x^2-4x^3+x^4-4x^5+4x^6))`
-/

namespace A387649.P7607269957596433269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, 0, -2, -4, 1, -4, 4] n

end

end A387649.P7607269957596433269

namespace A387649

/-- `ogf((1-x^2+2x^3)/(1-2x^2-4x^3+x^4-4x^5+4x^6))` -/
def P7607269957596433269.Spec : Prop :=
  ∀ n, P7607269957596433269.a n = A387649 n

end A387649

/-! ## A387649.P14837382352768733732

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6, a(4)=1, a(5)=20`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387649

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P14837382352768733732.Spec : Prop :=
  ∀ n, P14837382352768733732.a n = A387649 n

theorem P14837382352768733732.correct : P14837382352768733732.Spec := by
  intro n
  simp only [A387649]

end A387649

/-! ## A387649.P1075706011990482210

`∑{#}[floor(n/2), 2^(n-2*#)*C(2*#+1, 2*n-4*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387649.P1075706011990482210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (4 * k : ℤ)).toNat : ℚ)

end

end A387649.P1075706011990482210

namespace A387649

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(2*#+1, 2*n-4*#)]` -/
def P1075706011990482210.Spec : Prop :=
  ∀ n, P1075706011990482210.a n = (A387649 n : ℚ)

end A387649

/-!
# A387650: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+1,2*n-6*k).

The programs for A387650, the canonical program `A387650.P16435050881725697743` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387650 has offset 0).

The definition of A387650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387650.P16435050881725697743

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=6, a(5)=0, a(6)=1, a(7)=20`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387650

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P16435050881725697743.Spec : Prop :=
  ∀ n, P16435050881725697743.a n = A387650 n

theorem P16435050881725697743.correct : P16435050881725697743.Spec := by
  intro n
  simp only [A387650]

end A387650

/-! ## A387650.P2190858501693734684

`ogf((1-x^3+2x^4)/(1-2x^3-4x^4+x^6-4x^7+4x^8))`
-/

namespace A387650.P2190858501693734684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1, 2] [1, 0, 0, -2, -4, 0, 1, -4, 4] n

end

end A387650.P2190858501693734684

namespace A387650

/-- `ogf((1-x^3+2x^4)/(1-2x^3-4x^4+x^6-4x^7+4x^8))` -/
def P2190858501693734684.Spec : Prop :=
  ∀ n, P2190858501693734684.a n = A387650 n

end A387650

/-! ## A387650.P15681175952059571062

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*#+1, 2*n-6*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387650.P15681175952059571062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (6 * k : ℤ)).toNat : ℚ)

end

end A387650.P15681175952059571062

namespace A387650

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(2*#+1, 2*n-6*#)]` -/
def P15681175952059571062.Spec : Prop :=
  ∀ n, P15681175952059571062.a n = (A387650 n : ℚ)

end A387650

/-!
# A387651: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+1,2*n-4*k+1).

The programs for A387651, the canonical program `A387651.P1240963754905520773` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387651 has offset 0).

The definition of A387651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387651.P246216595131843976

`ogf((1+x^2-2x^3)/(1-2x^2-4x^3+x^4-4x^5+4x^6))`
-/

namespace A387651.P246216595131843976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -2] [1, 0, -2, -4, 1, -4, 4] n

end

end A387651.P246216595131843976

namespace A387651

/-- `ogf((1+x^2-2x^3)/(1-2x^2-4x^3+x^4-4x^5+4x^6))` -/
def P246216595131843976.Spec : Prop :=
  ∀ n, P246216595131843976.a n = A387651 n

end A387651

/-! ## A387651.P1240963754905520773

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=5, a(5)=20`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387651

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P1240963754905520773.Spec : Prop :=
  ∀ n, P1240963754905520773.a n = A387651 n

theorem P1240963754905520773.correct : P1240963754905520773.Spec := by
  intro n
  simp only [A387651]

end A387651

/-! ## A387651.P15641942693853711845

`∑{#}[floor(n/2), 2^(n-2*#)*C(2*#+1, 2*n-4*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387651.P15641942693853711845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (4 * k : ℤ) + 1).toNat : ℚ)

end

end A387651.P15641942693853711845

namespace A387651

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(2*#+1, 2*n-4*#+1)]` -/
def P15641942693853711845.Spec : Prop :=
  ∀ n, P15641942693853711845.a n = (A387651 n : ℚ)

end A387651

/-!
# A387652: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+1,2*n-6*k+1).

The programs for A387652, the canonical program `A387652.P42630545566347521` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387652 has offset 0).

The definition of A387652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387652.P12841884583891248734

`ogf((1+x^3-2x^4)/(1-2x^3-4x^4+x^6-4x^7+4x^8))`
-/

namespace A387652.P12841884583891248734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1, -2] [1, 0, 0, -2, -4, 0, 1, -4, 4] n

end

end A387652.P12841884583891248734

namespace A387652

/-- `ogf((1+x^3-2x^4)/(1-2x^3-4x^4+x^6-4x^7+4x^8))` -/
def P12841884583891248734.Spec : Prop :=
  ∀ n, P12841884583891248734.a n = A387652 n

end A387652

/-! ## A387652.P42630545566347521

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=2, a(5)=0, a(6)=5, a(7)=20`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387652

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P42630545566347521.Spec : Prop :=
  ∀ n, P42630545566347521.a n = A387652 n

theorem P42630545566347521.correct : P42630545566347521.Spec := by
  intro n
  simp only [A387652]

end A387652

/-! ## A387652.P8487401973048201334

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*#+1, 2*n-6*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387652.P8487401973048201334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (6 * k : ℤ) + 1).toNat : ℚ)

end

end A387652.P8487401973048201334

namespace A387652

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(2*#+1, 2*n-6*#+1)]` -/
def P8487401973048201334.Spec : Prop :=
  ∀ n, P8487401973048201334.a n = (A387652 n : ℚ)

end A387652

/-!
# A387654: Numbers k such that each of k and k+1 is either a practical number (A005153) or an almost practical number (A174533).

The programs for A387654, there is no canonical definition to state claims against.
-/

/-! ## A387654.P906130487176336204

`filter[A103289(n+1), A070950(#)]`
-/

namespace A387654.P906130487176336204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070950 (f1 j).toNat = 1) n)

end

end A387654.P906130487176336204

/-!
# A387655: a(n) = numerator(n^3/3).

The programs for A387655, the canonical program `A387655.P13149921640000158564` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387655 has offset 0).

The definition of A387655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387655.P13149921640000158564

`ogf((x+8x^2+9x^3+60x^4+93x^5+36x^6+93x^7+60x^8+9x^9+8x^10+x^11)/(1-4x^3+6x^6-4x^9+x^12))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387655

/-- `ogf((x+8x^2+9x^3+60x^4+93x^5+36x^6+93x^7+60x^8+9x^9+8x^10+x^11)/(1-4x^3+6x^6-4x^9+x^12))` -/
def P13149921640000158564.Spec : Prop :=
  ∀ n, P13149921640000158564.a n = A387655 n

theorem P13149921640000158564.correct : P13149921640000158564.Spec := by
  intro n
  simp only [A387655]

end A387655

/-! ## A387655.P13867197604084018798

`lcm(3, n^3)/3`
-/

namespace A387655.P13867197604084018798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n ^ 3) : ℚ) / 3

end

end A387655.P13867197604084018798

namespace A387655

/-- `lcm(3, n^3)/3` -/
def P13867197604084018798.Spec : Prop :=
  ∀ n, P13867197604084018798.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P3979776200335204405

`n^3/gcd(3, n)`
-/

namespace A387655.P3979776200335204405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A387655.P3979776200335204405

namespace A387655

/-- `n^3/gcd(3, n)` -/
def P3979776200335204405.Spec : Prop :=
  ∀ n, P3979776200335204405.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P14371514713078264538

`lcm(n, n+3)/(n+3)*n²`
-/

namespace A387655.P14371514713078264538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 3) : ℚ) / (n + 3 : ℚ) * (n ^ 2 : ℚ)

end

end A387655.P14371514713078264538

namespace A387655

/-- `lcm(n, n+3)/(n+3)*n²` -/
def P14371514713078264538.Spec : Prop :=
  ∀ n, P14371514713078264538.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P7937086130713726409

`n²*gcd(2*n, C(2*n+1, 3))`
-/

namespace A387655.P7937086130713726409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.gcd (2 * n) (Nat.choose (2 * n + 1) 3)

end

end A387655.P7937086130713726409

namespace A387655

/-- `n²*gcd(2*n, C(2*n+1, 3))` -/
def P7937086130713726409.Spec : Prop :=
  ∀ n, (P7937086130713726409.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P3016150134408394335

`n*A046162(n+1)`
-/

namespace A387655.P3016150134408394335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046162 (n + 1)

end

end A387655.P3016150134408394335

namespace A387655

/-- `n*A046162(n+1)` -/
def P3016150134408394335.Spec : Prop :=
  ∀ n, P3016150134408394335.a n = A387655 n

end A387655

/-! ## A387655.P11791865096922952203

`n/4*A147560(n)`
-/

namespace A387655.P11791865096922952203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A147560 n : ℚ)

end

end A387655.P11791865096922952203

namespace A387655

/-- `n/4*A147560(n)` -/
def P11791865096922952203.Spec : Prop :=
  ∀ n, P11791865096922952203.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P8413693262037030594

`n^3/A109007(n)`
-/

namespace A387655.P8413693262037030594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / (A109007 n : ℚ)

end

end A387655.P8413693262037030594

namespace A387655

/-- `n^3/A109007(n)` -/
def P8413693262037030594.Spec : Prop :=
  ∀ n, P8413693262037030594.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P17195049908026777800

`n*n*A051176(n)`
-/

namespace A387655.P17195049908026777800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A051176 n)

end

end A387655.P17195049908026777800

namespace A387655

/-- `n*n*A051176(n)` -/
def P17195049908026777800.Spec : Prop :=
  ∀ n, P17195049908026777800.a n = A387655 n

end A387655

/-! ## A387655.P5562699030533354449

`A000290(n)*A051176(n)`
-/

namespace A387655.P5562699030533354449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A051176 n

end

end A387655.P5562699030533354449

namespace A387655

/-- `A000290(n)*A051176(n)` -/
def P5562699030533354449.Spec : Prop :=
  ∀ n, P5562699030533354449.a n = A387655 n

end A387655

/-! ## A387655.P13197854409013463261

`A051176(n)*A253909(n)`
-/

namespace A387655.P13197854409013463261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n * A253909 n

end

end A387655.P13197854409013463261

namespace A387655

/-- `A051176(n)*A253909(n)` -/
def P13197854409013463261.Spec : Prop :=
  ∀ n, P13197854409013463261.a n = A387655 n

end A387655

/-! ## A387655.P15088120305972020008

`A119771(n)/A234041(n)`
-/

namespace A387655.P15088120305972020008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119771 n : ℚ) / (A234041 n : ℚ)

end

end A387655.P15088120305972020008

namespace A387655

/-- `A119771(n)/A234041(n)` -/
def P15088120305972020008.Spec : Prop :=
  ∀ n, P15088120305972020008.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P5165900773871847994

`A272125(n)%A184537(n)`
-/

namespace A387655.P5165900773871847994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272125 n) (A184537 n)

end

end A387655.P5165900773871847994

namespace A387655

/-- `A272125(n)%A184537(n)` -/
def P5165900773871847994.Spec : Prop :=
  ∀ n, P5165900773871847994.a n = A387655 n

end A387655

/-! ## A387655.P9727458727766032063

`gcd(A000578(n), A119771(n))`
-/

namespace A387655.P9727458727766032063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 n) (A119771 n)

end

end A387655.P9727458727766032063

namespace A387655

/-- `gcd(A000578(n), A119771(n))` -/
def P9727458727766032063.Spec : Prop :=
  ∀ n, (P9727458727766032063.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P9146508650709222865

`gcd(A000583(n), A272125(n))`
-/

namespace A387655.P9146508650709222865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000583 n) (A272125 n)

end

end A387655.P9146508650709222865

namespace A387655

/-- `gcd(A000583(n), A272125(n))` -/
def P9146508650709222865.Spec : Prop :=
  ∀ n, (P9146508650709222865.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P11211718217777725546

`gcd(A000584(n), A282612(n))`
-/

namespace A387655.P11211718217777725546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000584 n) (A282612 n)

end

end A387655.P11211718217777725546

namespace A387655

/-- `gcd(A000584(n), A282612(n))` -/
def P11211718217777725546.Spec : Prop :=
  ∀ n, (P11211718217777725546.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P18132695872089246453

`n*A051176(n²)`
-/

namespace A387655.P18132695872089246453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051176 (n ^ 2)

end

end A387655.P18132695872089246453

namespace A387655

/-- `n*A051176(n²)` -/
def P18132695872089246453.Spec : Prop :=
  ∀ n, P18132695872089246453.a n = A387655 n

end A387655

/-!
# A387656: Array read by ascending antidiagonals: A(n, k) = numerator(k^n/n), with k >= 0.

The programs for A387656, there is no canonical definition to state claims against.
-/

/-! ## A387656.P6492895522861972651

`A007953(A002262(n)^A188919(n))`
-/

namespace A387656.P6492895522861972651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A188919 n : ℤ))).toNat

end

end A387656.P6492895522861972651

/-! ## A387656.P8592514126163971104

`A025682(n+1)^A322306(A127218(n))`
-/

namespace A387656.P8592514126163971104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025682 (n + 1) : ℚ) ^ (A322306 (A127218 n).toNat : ℤ)

end

end A387656.P8592514126163971104

/-! ## A387656.P320028472267794504

`col(n)^A338428(A272909(n+1))`
-/

namespace A387656.P320028472267794504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) ^ (A338428 (A272909 (n + 1)).toNat : ℤ)

end

end A387656.P320028472267794504

/-! ## A387656.P18144625360358536655

`A002262(n)^A100808(A005246(n))`
-/

namespace A387656.P18144625360358536655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A100808 (A005246 n).toNat : ℤ)

end

end A387656.P18144625360358536655

/-! ## A387656.P457566588264389940

`A002262(n)^A184720(A154986(n))`
-/

namespace A387656.P457566588264389940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A184720 (A154986 n).toNat : ℤ)

end

end A387656.P457566588264389940

/-!
# A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

The programs for A387657, the canonical program `A387657.P982859840005591800` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387657 has offset 1).

The definition of A387657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387657.P982859840005591800

`A123275(A056943(n)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A387657

/-- `A123275(A056943(n)+1)` -/
def P982859840005591800.Spec : Prop :=
  ∀ n, P982859840005591800.a n = A387657 (n + 1)

theorem P982859840005591800.correct : P982859840005591800.Spec := by
  intro n
  simp only [A387657, Nat.add_sub_cancel]

end A387657

/-! ## A387657.P3946448195722316514

`(row(n)-col(n)+1)/gcd(col(n)^(row(n)-col(n)+1), row(n)-col(n)+1)`
-/

namespace A387657.P3946448195722316514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ))) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ)

end

end A387657.P3946448195722316514

namespace A387657

/-- `(row(n)-col(n)+1)/gcd(col(n)^(row(n)-col(n)+1), row(n)-col(n)+1)` -/
def P3946448195722316514.Spec : Prop :=
  ∀ n, P3946448195722316514.a n = (A387657 (n + 1) : ℚ)

end A387657

/-! ## A387657.P7312350826322046491

`gcd(A134224(n), A142589(n))`
-/

namespace A387657.P7312350826322046491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134224 n) (A142589 n)

end

end A387657.P7312350826322046491

namespace A387657

/-- `gcd(A134224(n), A142589(n))` -/
def P7312350826322046491.Spec : Prop :=
  ∀ n, (P7312350826322046491.a n : ℤ) = A387657 (n + 1)

end A387657

/-! ## A387657.P5929931241724864793

`gcd(A117297(n+1), A140822(n))`
-/

namespace A387657.P5929931241724864793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117297 (n + 1)) (A140822 n)

end

end A387657.P5929931241724864793

namespace A387657

/-- `gcd(A117297(n+1), A140822(n))` -/
def P5929931241724864793.Spec : Prop :=
  ∀ n, (P5929931241724864793.a n : ℤ) = A387657 (n + 1)

end A387657

/-! ## A387657.P2123100380260979125

`gcd(A009766(n), A153678(A007318(n)))`
-/

namespace A387657.P2123100380260979125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009766 n) (A153678 (A007318 n).toNat)

end

end A387657.P2123100380260979125

namespace A387657

/-- `gcd(A009766(n), A153678(A007318(n)))` -/
def P2123100380260979125.Spec : Prop :=
  ∀ n, (P2123100380260979125.a n : ℤ) = A387657 (n + 1)

end A387657

/-!
# A387658: Number of points on a cubic lattice that have a minimum distance sqrt(n) from either of two adjacent lattice points.

The programs for A387658, there is no canonical definition to state claims against.
-/

/-! ## A387658.P5444406776792980207

`2*∑{#}[floor(sqrt(n)), A004018(n-#²)]`
-/

namespace A387658.P5444406776792980207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), A004018 (n - k ^ 2))

end

end A387658.P5444406776792980207

/-! ## A387658.P17607589336140920374

`A004018(n)+A005875(n)`
-/

namespace A387658.P17607589336140920374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A005875 n

end

end A387658.P17607589336140920374

/-! ## A387658.P4626526512420634092

`A004018(n)+(-1)^n*A213384(n)`
-/

namespace A387658.P4626526512420634092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + (-1) ^ n * A213384 n

end

end A387658.P4626526512420634092

/-! ## A387658.P5514109956913042761

`A004018(n)+∑{d}[A213384(n), A000010(#)]`
-/

namespace A387658.P5514109956913042761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A387658.P5514109956913042761

/-! ## A387658.P7065919445249694982

`A004018(n)+A000152(n)*A213384(n)/A319307(n)`
-/

namespace A387658.P7065919445249694982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) + (A000152 n * A213384 n : ℚ) / (A319307 n : ℚ)

end

end A387658.P7065919445249694982

/-! ## A387658.P5922409830184656348

`A014455(2*n)+A004018(n)`
-/

namespace A387658.P5922409830184656348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n) + A004018 n

end

end A387658.P5922409830184656348

/-! ## A387658.P4138622098942764541

`A004018(n)+A004015(2*n)`
-/

namespace A387658.P4138622098942764541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A004015 (2 * n)

end

end A387658.P4138622098942764541

/-! ## A387658.P14030582951165287802

`A004018(n)+3/A132429(n)*A319078(n)`
-/

namespace A387658.P14030582951165287802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) + 3 / (A132429 n : ℚ) * (A319078 n : ℚ)

end

end A387658.P14030582951165287802

/-! ## A387658.P17725586257545761110

`A004018(n)+A004013(4*n)`
-/

namespace A387658.P17725586257545761110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A004013 (4 * n)

end

end A387658.P17725586257545761110

/-! ## A387658.P3868797964505651338

`A004018(n)+A213384(4*n)`
-/

namespace A387658.P3868797964505651338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A213384 (4 * n)

end

end A387658.P3868797964505651338

/-! ## A387658.P8170783303621663091

`A169783(4*n)+A004018(n)`
-/

namespace A387658.P8170783303621663091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n) + A004018 n

end

end A387658.P8170783303621663091

/-!
# A387659: a(n) = 13*n^2 + 10*n + 3.

The programs for A387659, the canonical program `A387659.P11348158259407236017` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387659 has offset 0).

The definition of A387659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²+10*n+3` (program `A387659.P11348158259407236017`, by `A387659.P11348158259407236017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387659.P14577289321150875966

`ogf((3+17x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A387659.P14577289321150875966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 17, 6] [1, -3, 3, -1] n

end

end A387659.P14577289321150875966

namespace A387659

/-- `ogf((3+17x+6x^2)/(1-3x+3x^2-x^3))` -/
def P14577289321150875966.Spec : Prop :=
  ∀ n, P14577289321150875966.a n = A387659 n

end A387659

/-! ## A387659.P11348158259407236017

`13*n²+10*n+3`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387659

/-- `13*n²+10*n+3` -/
def P11348158259407236017.Spec : Prop :=
  ∀ n, (P11348158259407236017.a n : ℤ) = A387659 n

theorem P11348158259407236017.correct : P11348158259407236017.Spec := by
  intro n
  simp only [A387659]

end A387659

/-! ## A387659.P8830367459516147935

`∑[a(n-1)+26]` with `a(0)=3, a(1)=23`
-/

namespace A387659.P8830367459516147935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 23] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387659.P8830367459516147935

namespace A387659

/-- `∑[a(n-1)+26]` -/
def P8830367459516147935.Spec : Prop :=
  ∀ n, (P8830367459516147935.a n : ℤ) = A387659 n

end A387659

/-! ## A387659.P14383615289849705597

`or(2, A161587(n))`
-/

namespace A387659.P14383615289849705597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A161587 n)

end

end A387659.P14383615289849705597

namespace A387659

/-- `or(2, A161587(n))` -/
def P14383615289849705597.Spec : Prop :=
  ∀ n, P14383615289849705597.a n = A387659 n

end A387659

/-! ## A387659.P15361564239197626745

`record[A161587(n-2*floor(n/4))+2]`
-/

namespace A387659.P15361564239197626745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161587 ((n : ℤ) - 2 * ⌊(n : ℚ) / 4⌋).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387659.P15361564239197626745

namespace A387659

/-- `record[A161587(n-2*floor(n/4))+2]` -/
def P15361564239197626745.Spec : Prop :=
  ∀ n, P15361564239197626745.a n = A387659 n

end A387659

/-! ## A387659.P11087686682526045144

`xor(A038041(A229708(n+1)), A161587(n))`
-/

namespace A387659.P11087686682526045144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038041 (A229708 (n + 1)).toNat) (A161587 n)

end

end A387659.P11087686682526045144

namespace A387659

/-- `xor(A038041(A229708(n+1)), A161587(n))` -/
def P11087686682526045144.Spec : Prop :=
  ∀ n, P11087686682526045144.a n = A387659 n

end A387659

/-! ## A387659.P4653231793091503870

`∑[A179805(3*n+1)-n]`
-/

namespace A387659.P4653231793091503870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (3 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387659.P4653231793091503870

namespace A387659

/-- `∑[A179805(3*n+1)-n]` -/
def P4653231793091503870.Spec : Prop :=
  ∀ n, P4653231793091503870.a n = A387659 n

end A387659

/-! ## A387659.P9229449371024638790

`xor(A000002(A074276(n+1)), A161587(n))`
-/

namespace A387659.P9229449371024638790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000002 (A074276 (n + 1)).toNat) (A161587 n)

end

end A387659.P9229449371024638790

namespace A387659

/-- `xor(A000002(A074276(n+1)), A161587(n))` -/
def P9229449371024638790.Spec : Prop :=
  ∀ n, P9229449371024638790.a n = A387659 n

end A387659

/-!
# A387660: a(0) = 0; thereafter a(n) = a(n-1) - n if a(n-1) > 2*n and not already in the sequence, otherwise a(n) = a(n-1) + n.

The programs for A387660, there is no canonical definition to state claims against.
-/

/-! ## A387660.P6650203119722369223

`∑[A299406(A364641(2*n))*n]`
-/

namespace A387660.P6650203119722369223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299406 (A364641 (2 * n)).toNat * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387660.P6650203119722369223

/-!
# A387665: Smallest nonnegative integer coprime to 5 with a constant congruence speed >= n (see A373387 for the definition of "constant congruence speed").

The programs for A387665, there is no canonical definition to state claims against.
-/

/-! ## A387665.P3175809360257761779

`A034939(n)+A000007(A049652(n))`
-/

namespace A387665.P3175809360257761779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A000007 (A049652 n).toNat

end

end A387665.P3175809360257761779

/-! ## A387665.P1181699243443668137

`A034939(n)+A010054(A055099(n))`
-/

namespace A387665.P1181699243443668137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A010054 (A055099 n).toNat

end

end A387665.P1181699243443668137

/-! ## A387665.P10153361152049075846

`A034939(n)+A010056(A171498(n))`
-/

namespace A387665.P10153361152049075846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A010056 (A171498 n).toNat

end

end A387665.P10153361152049075846

/-! ## A387665.P12507972113168268372

`A034939(n)+A010056(A289780(n))`
-/

namespace A387665.P12507972113168268372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A010056 (A289780 n).toNat

end

end A387665.P12507972113168268372

/-!
# A387666: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^3) / (1 + x)^2 ).

The programs for A387666, the canonical program `A387666.P5185375171598376077` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387666 has offset 0).

The definition of A387666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387666.P5185375171598376077

`1/(n+1)*∑{#}[n, C(n+#, #)*C(2*n+3*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387666

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(2*n+3*#+2, n-#)]` -/
def P5185375171598376077.Spec : Prop :=
  ∀ n, P5185375171598376077.a n = (A387666 n : ℚ)

end A387666

/-!
# A387667: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)) / (1 + x)^2 ).

The programs for A387667, the canonical program `A387667.P14671216610710110309` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387667 has offset 0).

The definition of A387667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387667.P14671216610710110309

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387667

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+#+2, n-2*#)]` -/
def P14671216610710110309.Spec : Prop :=
  ∀ n, P14671216610710110309.a n = (A387667 n : ℚ)

end A387667

/-! ## A387667.P9260518290314404750

`A214701(A193038(n+1))`
-/

namespace A387667.P9260518290314404750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A193038 (n + 1)).toNat

end

end A387667.P9260518290314404750

namespace A387667

/-- `A214701(A193038(n+1))` -/
def P9260518290314404750.Spec : Prop :=
  ∀ n, P9260518290314404750.a n = A387667 n

end A387667

/-!
# A387668: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)^3) / (1 + x)^2 ).

The programs for A387668, the canonical program `A387668.P9331778805434156186` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387668 has offset 0).

The definition of A387668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387668.P9331778805434156186

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+3*#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387668

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+3*#+2, n-2*#)]` -/
def P9331778805434156186.Spec : Prop :=
  ∀ n, P9331778805434156186.a n = (A387668 n : ℚ)

end A387668

/-! ## A387668.P5934217227226381571

`A302478(A350798(n+1)-A144116(n+1))`
-/

namespace A387668.P5934217227226381571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A350798 (n + 1) - A144116 (n + 1)).toNat

end

end A387668.P5934217227226381571

namespace A387668

/-- `A302478(A350798(n+1)-A144116(n+1))` -/
def P5934217227226381571.Spec : Prop :=
  ∀ n, P5934217227226381571.a n = A387668 n

end A387668

/-!
# A387669: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)) / (1 + x)^2 ).

The programs for A387669, the canonical program `A387669.P10863288205658342808` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387669 has offset 0).

The definition of A387669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387669.P10863288205658342808

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+#+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387669

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+#+2, n-3*#)]` -/
def P10863288205658342808.Spec : Prop :=
  ∀ n, P10863288205658342808.a n = (A387669 n : ℚ)

end A387669

/-! ## A387669.P5531992978323580658

`A082583(A148115(n+1))`
-/

namespace A387669.P5531992978323580658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082583 (A148115 (n + 1)).toNat

end

end A387669.P5531992978323580658

namespace A387669

/-- `A082583(A148115(n+1))` -/
def P5531992978323580658.Spec : Prop :=
  ∀ n, P5531992978323580658.a n = A387669 n

end A387669

/-! ## A387669.P6544034186979036969

`A387734(n)+A184974(A000045(n))`
-/

namespace A387669.P6544034186979036969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387734 n + A184974 (A000045 n).toNat

end

end A387669.P6544034186979036969

namespace A387669

/-- `A387734(n)+A184974(A000045(n))` -/
def P6544034186979036969.Spec : Prop :=
  ∀ n, P6544034186979036969.a n = A387669 n

end A387669

/-!
# A387671: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) / (1 + x)^2 ).

The programs for A387671, the canonical program `A387671.P16232175064210671372` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387671 has offset 0).

The definition of A387671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387671.P16232175064210671372

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+3*#+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387671

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+3*#+2, n-3*#)]` -/
def P16232175064210671372.Spec : Prop :=
  ∀ n, P16232175064210671372.a n = (A387671 n : ℚ)

end A387671

/-! ## A387671.P13197885503384359177

`A387777(n)+A184974(A000045(n))`
-/

namespace A387671.P13197885503384359177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387777 n + A184974 (A000045 n).toNat

end

end A387671.P13197885503384359177

namespace A387671

/-- `A387777(n)+A184974(A000045(n))` -/
def P13197885503384359177.Spec : Prop :=
  ∀ n, P13197885503384359177.a n = A387671 n

end A387671

/-! ## A387671.P3140968004255892762

`A387777(n)+A079978(A200731(n))`
-/

namespace A387671.P3140968004255892762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387777 n + A079978 (A200731 n).toNat

end

end A387671.P3140968004255892762

namespace A387671

/-- `A387777(n)+A079978(A200731(n))` -/
def P3140968004255892762.Spec : Prop :=
  ∀ n, P3140968004255892762.a n = A387671 n

end A387671

/-!
# A387674: Expansion of g.f. (Sum_{i>=0} (i! - 1)*x^i)/(Sum_{i>=0} i!*x^i).

The programs for A387674, there is no canonical definition to state claims against.
-/

/-! ## A387674.P1187948683083361997

`1-(A104985(n)+n)`
-/

namespace A387674.P1187948683083361997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A104985 n + (n : ℤ))

end

end A387674.P1187948683083361997

/-! ## A387674.P1934112351741439418

`∑[A003319(n)%n!]`
-/

namespace A387674.P1934112351741439418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003319 n) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P1934112351741439418

/-! ## A387674.P5155865709727261941

`∑[abs(A158882(n))%n!]`
-/

namespace A387674.P5155865709727261941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A158882 n| (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P5155865709727261941

/-! ## A387674.P13973726656863688016

`∑[abs(A167894(n))%n!]`
-/

namespace A387674.P13973726656863688016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A167894 n| (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P13973726656863688016

/-! ## A387674.P5858868635654251901

`∑[A200659(C(n, 2))%n!]`
-/

namespace A387674.P5858868635654251901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200659 (Nat.choose n 2)) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P5858868635654251901

/-! ## A387674.P2842124958997038172

`∑[A059438(∑[abs(1-n)])%n!]`
-/

namespace A387674.P2842124958997038172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059438 (∑ j ∈ Finset.range (n + 1), f2 j).toNat) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P2842124958997038172

/-! ## A387674.P2591673547929646303

`∑[A233824(log2(A011782(n)))]`
-/

namespace A387674.P2591673547929646303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233824 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P2591673547929646303

/-! ## A387674.P15326116804675388373

`∑[A003319(n)]-A040000(n)`
-/

namespace A387674.P15326116804675388373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040000 n

end

end A387674.P15326116804675388373

/-! ## A387674.P12000281065822420805

`A000007(n)-∑[A167894(n)]`
-/

namespace A387674.P12000281065822420805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P12000281065822420805

/-! ## A387674.P11824792362719113777

`∑[A233824(n)]-A233824(n)`
-/

namespace A387674.P11824792362719113777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A233824 n

end

end A387674.P11824792362719113777

/-!
# A387675: Expansion of g/(1 + x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387675, there is no canonical definition to state claims against.
-/

/-! ## A387675.P14330965879911124074

`A001462(A086922(n))-n`
-/

namespace A387675.P14330965879911124074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A086922 n).toNat - (n : ℤ)

end

end A387675.P14330965879911124074

/-! ## A387675.P10497527990097941891

`A358378(A065161(n+1))-n`
-/

namespace A387675.P10497527990097941891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (A065161 (n + 1)).toNat - (n : ℤ)

end

end A387675.P10497527990097941891

/-!
# A387676: Expansion of g/(1 + x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387676, there is no canonical definition to state claims against.
-/

/-! ## A387676.P5687885684805390371

`A171727(A150934(n))`
-/

namespace A387676.P5687885684805390371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A150934 n).toNat

end

end A387676.P5687885684805390371

/-! ## A387676.P11776434647888172331

`A122651(∏[A095316(n+1)-1])`
-/

namespace A387676.P11776434647888172331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A387676.P11776434647888172331

/-!
# A387677: Expansion of g/(1 + x^2*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387677, there is no canonical definition to state claims against.
-/

/-! ## A387677.P5828207540600679484

`A045917(A326092(n)+3)`
-/

namespace A387677.P5828207540600679484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A326092 n + 3).toNat

end

end A387677.P5828207540600679484

/-! ## A387677.P199470679020408517

`row(A250120(Δ[A372171(n)]))`
-/

namespace A387677.P199470679020408517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A250120 (f1 (n + 1) - f1 n).toNat).toNat

end

end A387677.P199470679020408517

/-!
# A387678: Expansion of g/(1 + x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387678, there is no canonical definition to state claims against.
-/

/-! ## A387678.P12091780341963743554

`A233762(A067687(n))`
-/

namespace A387678.P12091780341963743554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233762 (A067687 n).toNat

end

end A387678.P12091780341963743554

/-! ## A387678.P3715683066090485559

`or(n, A066839(A002110(n)))`
-/

namespace A387678.P3715683066090485559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A066839 (A002110 n).toNat)

end

end A387678.P3715683066090485559

/-!
# A387679: Expansion of g/(1 + x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387679, there is no canonical definition to state claims against.
-/

/-! ## A387679.P13168923203688927355

`A050437(A099036(n))`
-/

namespace A387679.P13168923203688927355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050437 (A099036 n).toNat

end

end A387679.P13168923203688927355

/-! ## A387679.P4771749039375730305

`A318953(A000108(n))`
-/

namespace A387679.P4771749039375730305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318953 (A000108 n).toNat

end

end A387679.P4771749039375730305

/-!
# A387680: Number of length n words on the alphabet {a,b,c,d,e} that do not contain exactly one a and exactly one b.

The programs for A387680, the canonical program `A387680.P10945382852570778628` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387680 has offset 0).

The definition of A387680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387680.P10945382852570778628

`5^n-n*(n-1)*3^(n-2)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387680

/-- `5^n-n*(n-1)*3^(n-2)` -/
def P10945382852570778628.Spec : Prop :=
  ∀ n, P10945382852570778628.a n = (A387680 n : ℚ)

end A387680

/-!
# A387684: a(n) = (8*n + 1)^2*(4*n + 1).

The programs for A387684, the canonical program `A387684.P6032393437507945414` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387684 has offset 0).

The definition of A387684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)²*(4*n+1)` (program `A387684.P6032393437507945414`, by `A387684.P6032393437507945414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387684.P17965107182359902742

`ogf((1+401x+987x^2+147x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A387684.P17965107182359902742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 401, 987, 147] [1, -4, 6, -4, 1] n

end

end A387684.P17965107182359902742

namespace A387684

/-- `ogf((1+401x+987x^2+147x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17965107182359902742.Spec : Prop :=
  ∀ n, P17965107182359902742.a n = A387684 n

end A387684

/-! ## A387684.P6032393437507945414

`(8*n+1)²*(4*n+1)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387684

/-- `(8*n+1)²*(4*n+1)` -/
def P6032393437507945414.Spec : Prop :=
  ∀ n, (P6032393437507945414.a n : ℤ) = A387684 n

theorem P6032393437507945414.correct : P6032393437507945414.Spec := by
  intro n
  simp only [A387684]

end A387684

/-! ## A387684.P6092437574724195339

`lcm(A016813(n), A017078(n))`
-/

namespace A387684.P6092437574724195339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016813 n) (A017078 n)

end

end A387684.P6092437574724195339

namespace A387684

/-- `lcm(A016813(n), A017078(n))` -/
def P6092437574724195339.Spec : Prop :=
  ∀ n, (P6092437574724195339.a n : ℤ) = A387684 n

end A387684

/-! ## A387684.P12468278632566391958

`A015223(2*n)`
-/

namespace A387684.P12468278632566391958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015223 (2 * n)

end

end A387684.P12468278632566391958

namespace A387684

/-- `A015223(2*n)` -/
def P12468278632566391958.Spec : Prop :=
  ∀ n, P12468278632566391958.a n = A387684 n

theorem P12468278632566391958.correct : P12468278632566391958.Spec := by
  intro n
  simp only [A387684, Nat.add_sub_cancel, A387684.P12468278632566391958.a, A387684.P6032393437507945414.a, A015223, A015223.P4177858037070881700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387684

/-! ## A387684.P5487005616724667007

`sqrt(A014799(2*n))`
-/

namespace A387684.P5487005616724667007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014799 (2 * n) : ℝ)

end

end A387684.P5487005616724667007

namespace A387684

/-- `sqrt(A014799(2*n))` -/
def P5487005616724667007.Spec : Prop :=
  ∀ n, P5487005616724667007.a n = (A387684 n : ℝ)

end A387684

/-! ## A387684.P4714339219523158709

`A139757(4*n)`
-/

namespace A387684.P4714339219523158709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 (4 * n)

end

end A387684.P4714339219523158709

namespace A387684

/-- `A139757(4*n)` -/
def P4714339219523158709.Spec : Prop :=
  ∀ n, P4714339219523158709.a n = A387684 n

theorem P4714339219523158709.correct : P4714339219523158709.Spec := by
  intro n
  simp only [A387684, Nat.add_sub_cancel, A387684.P4714339219523158709.a, A387684.P6032393437507945414.a, A139757, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387684

/-! ## A387684.P1607852208195994277

`filter[n*∑[n], and(3, #)]`
-/

namespace A387684.P1607852208195994277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.land 3 (f1 j) = 1) n)

end

end A387684.P1607852208195994277

namespace A387684

/-- `filter[n*∑[n], and(3, #)]` -/
def P1607852208195994277.Spec : Prop :=
  ∀ n, (P1607852208195994277.a n : ℤ) = A387684 n

end A387684

/-! ## A387684.P8065699055527609049

`A002411(8*n+1)`
-/

namespace A387684.P8065699055527609049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (8 * n + 1)

end

end A387684.P8065699055527609049

namespace A387684

/-- `A002411(8*n+1)` -/
def P8065699055527609049.Spec : Prop :=
  ∀ n, P8065699055527609049.a n = A387684 n

end A387684

/-! ## A387684.P6574000571212296279

`A086500(A109613(8*n))`
-/

namespace A387684.P6574000571212296279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086500 (A109613 (8 * n)).toNat

end

end A387684.P6574000571212296279

namespace A387684

/-- `A086500(A109613(8*n))` -/
def P6574000571212296279.Spec : Prop :=
  ∀ n, P6574000571212296279.a n = A387684 n

end A387684

/-! ## A387684.P6545430238141980487

`A190798(A017545(n))`
-/

namespace A387684.P6545430238141980487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190798 (A017545 n).toNat

end

end A387684.P6545430238141980487

namespace A387684

/-- `A190798(A017545(n))` -/
def P6545430238141980487.Spec : Prop :=
  ∀ n, P6545430238141980487.a n = A387684 n

end A387684

/-! ## A387684.P12165307462077637297

`A028724(A119413(n+1))`
-/

namespace A387684.P12165307462077637297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A119413 (n + 1)).toNat

end

end A387684.P12165307462077637297

namespace A387684

/-- `A028724(A119413(n+1))` -/
def P12165307462077637297.Spec : Prop :=
  ∀ n, P12165307462077637297.a n = A387684 n

end A387684

/-! ## A387684.P3937784605341148363

`A188067(A063116(n+1))`
-/

namespace A387684.P3937784605341148363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A063116 (n + 1)).toNat

end

end A387684.P3937784605341148363

namespace A387684

/-- `A188067(A063116(n+1))` -/
def P3937784605341148363.Spec : Prop :=
  ∀ n, P3937784605341148363.a n = A387684 n

end A387684

/-! ## A387684.P13326513457131755342

`A144677(A008606(n))`
-/

namespace A387684.P13326513457131755342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A008606 n).toNat

end

end A387684.P13326513457131755342

namespace A387684

/-- `A144677(A008606(n))` -/
def P13326513457131755342.Spec : Prop :=
  ∀ n, P13326513457131755342.a n = A387684 n

end A387684

/-!
# A387685: a(n) is the number of geometric progressions of three or more positive integers, strictly increasing with sum n.

The programs for A387685, there is no canonical definition to state claims against.
-/

/-! ## A387685.P6438811203556487459

`A364485(n+1)%A385603(n+1)`
-/

namespace A387685.P6438811203556487459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364485 (n + 1)) (A385603 (n + 1))

end

end A387685.P6438811203556487459

/-!
# A387689: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*n-2*k,2*k).

The programs for A387689, the canonical program `A387689.P9455251819028227511` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387689 has offset 0).

The definition of A387689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387689.P3195290616620576071

`ogf((1-2x-x^2)/(1-4x+2x^2-4x^3+x^4))`
-/

namespace A387689.P3195290616620576071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, 2, -4, 1] n

end

end A387689.P3195290616620576071

namespace A387689

/-- `ogf((1-2x-x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P3195290616620576071.Spec : Prop :=
  ∀ n, P3195290616620576071.a n = A387689 n

end A387689

/-! ## A387689.P8839665092952985848

`∑{#}[floor(n/2), 2^(n-2*#)*C(2*n-2*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387689.P8839665092952985848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (2 * k : ℤ)).toNat (2 * k) : ℚ)

end

end A387689.P8839665092952985848

namespace A387689

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(2*n-2*#, 2*#)]` -/
def P8839665092952985848.Spec : Prop :=
  ∀ n, P8839665092952985848.a n = (A387689 n : ℚ)

end A387689

/-! ## A387689.P9455251819028227511

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=20`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387689

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9455251819028227511.Spec : Prop :=
  ∀ n, P9455251819028227511.a n = A387689 n

theorem P9455251819028227511.correct : P9455251819028227511.Spec := by
  intro n
  simp only [A387689]

end A387689

/-! ## A387689.P7667343209565633713

`A133872(n)+A061278(n)`
-/

namespace A387689.P7667343209565633713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A061278 n

end

end A387689.P7667343209565633713

namespace A387689

/-- `A133872(n)+A061278(n)` -/
def P7667343209565633713.Spec : Prop :=
  ∀ n, P7667343209565633713.a n = A387689 n

end A387689

/-! ## A387689.P14398664209925422736

`A101265(n+1)-A021913(n)`
-/

namespace A387689.P14398664209925422736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1) - A021913 n

end

end A387689.P14398664209925422736

namespace A387689

/-- `A101265(n+1)-A021913(n)` -/
def P14398664209925422736.Spec : Prop :=
  ∀ n, P14398664209925422736.a n = A387689 n

end A387689

/-! ## A387689.P17670542302929272607

`A101265(n+1)-(1-A133872(n))`
-/

namespace A387689.P17670542302929272607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1) - (1 - A133872 n)

end

end A387689.P17670542302929272607

namespace A387689

/-- `A101265(n+1)-(1-A133872(n))` -/
def P17670542302929272607.Spec : Prop :=
  ∀ n, P17670542302929272607.a n = A387689 n

end A387689

/-! ## A387689.P5851563297972290589

`A387694(n)-A290908(n)`
-/

namespace A387689.P5851563297972290589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387694 n - A290908 n

end

end A387689.P5851563297972290589

namespace A387689

/-- `A387694(n)-A290908(n)` -/
def P5851563297972290589.Spec : Prop :=
  ∀ n, P5851563297972290589.a n = A387689 n

end A387689

/-! ## A387689.P12763990282853105796

`A387694(n+1)-A001834(n+1)`
-/

namespace A387689.P12763990282853105796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387694 (n + 1) - A001834 (n + 1)

end

end A387689.P12763990282853105796

namespace A387689

/-- `A387694(n+1)-A001834(n+1)` -/
def P12763990282853105796.Spec : Prop :=
  ∀ n, P12763990282853105796.a n = A387689 n

end A387689

/-!
# A387690: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k,2*k).

The programs for A387690, the canonical program `A387690.P18366013979878445201` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387690 has offset 0).

The definition of A387690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387690.P3318515276462731356

`ogf((1-2x-x^3)/(1-4x+4x^2-2x^3-4x^4+x^6))`
-/

namespace A387690.P3318515276462731356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, -1] [1, -4, 4, -2, -4, 0, 1] n

end

end A387690.P3318515276462731356

namespace A387690

/-- `ogf((1-2x-x^3)/(1-4x+4x^2-2x^3-4x^4+x^6))` -/
def P3318515276462731356.Spec : Prop :=
  ∀ n, P3318515276462731356.a n = A387690 n

end A387690

/-! ## A387690.P11911650351634842613

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*n-4*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387690.P11911650351634842613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ)).toNat (2 * k) : ℚ)

end

end A387690.P11911650351634842613

namespace A387690

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(2*n-4*#, 2*#)]` -/
def P11911650351634842613.Spec : Prop :=
  ∀ n, P11911650351634842613.a n = (A387690 n : ℚ)

end A387690

/-! ## A387690.P18366013979878445201

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=28, a(5)=92`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387690

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P18366013979878445201.Spec : Prop :=
  ∀ n, P18366013979878445201.a n = A387690 n

theorem P18366013979878445201.correct : P18366013979878445201.Spec := by
  intro n
  simp only [A387690]

end A387690

/-!
# A387691: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k,2*k).

The programs for A387691, the canonical program `A387691.P13392601389255870572` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387691 has offset 0).

The definition of A387691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387691.P15168829688389072684

`ogf((1-2x-x^4)/(1-4x+4x^2-2x^4-4x^5+x^8))`
-/

namespace A387691.P15168829688389072684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 0, -1] [1, -4, 4, 0, -2, -4, 0, 0, 1] n

end

end A387691.P15168829688389072684

namespace A387691

/-- `ogf((1-2x-x^4)/(1-4x+4x^2-2x^4-4x^5+x^8))` -/
def P15168829688389072684.Spec : Prop :=
  ∀ n, P15168829688389072684.a n = A387691 n

end A387691

/-! ## A387691.P7670236206777295259

`∑{#}[floor(n/4), 2^(n-4*#)*C(2*n-6*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387691.P7670236206777295259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (4 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (6 * k : ℤ)).toNat (2 * k) : ℚ)

end

end A387691.P7670236206777295259

namespace A387691

/-- `∑{#}[floor(n/4), 2^(n-4*#)*C(2*n-6*#, 2*#)]` -/
def P7670236206777295259.Spec : Prop :=
  ∀ n, P7670236206777295259.a n = (A387691 n : ℚ)

end A387691

/-! ## A387691.P13392601389255870572

`4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=17, a(5)=44, a(6)=124, a(7)=352`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387691

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` -/
def P13392601389255870572.Spec : Prop :=
  ∀ n, P13392601389255870572.a n = A387691 n

theorem P13392601389255870572.correct : P13392601389255870572.Spec := by
  intro n
  simp only [A387691]

end A387691

/-!
# A387692: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k+1,2*k).

The programs for A387692, the canonical program `A387692.P427402047839379410` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387692 has offset 0).

The definition of A387692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387692.P17140781418153283055

`ogf((1-2x+x^3)/(1-4x+4x^2-2x^3-4x^4+x^6))`
-/

namespace A387692.P17140781418153283055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 1] [1, -4, 4, -2, -4, 0, 1] n

end

end A387692.P17140781418153283055

namespace A387692

/-- `ogf((1-2x+x^3)/(1-4x+4x^2-2x^3-4x^4+x^6))` -/
def P17140781418153283055.Spec : Prop :=
  ∀ n, P17140781418153283055.a n = A387692 n

end A387692

/-! ## A387692.P7833295513925341616

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*n-4*#+1, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387692.P7833295513925341616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 1).toNat (2 * k) : ℚ)

end

end A387692.P7833295513925341616

namespace A387692

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(2*n-4*#+1, 2*#)]` -/
def P7833295513925341616.Spec : Prop :=
  ∀ n, P7833295513925341616.a n = (A387692 n : ℚ)

end A387692

/-! ## A387692.P427402047839379410

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=36, a(5)=116`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387692

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P427402047839379410.Spec : Prop :=
  ∀ n, P427402047839379410.a n = A387692 n

theorem P427402047839379410.correct : P427402047839379410.Spec := by
  intro n
  simp only [A387692]

end A387692

/-!
# A387693: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k+1,2*k).

The programs for A387693, the canonical program `A387693.P15185850816940270829` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387693 has offset 0).

The definition of A387693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387693.P14363933203264141174

`ogf((1-2x+x^4)/(1-4x+4x^2-2x^4-4x^5+x^8))`
-/

namespace A387693.P14363933203264141174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 0, 1] [1, -4, 4, 0, -2, -4, 0, 0, 1] n

end

end A387693.P14363933203264141174

namespace A387693

/-- `ogf((1-2x+x^4)/(1-4x+4x^2-2x^4-4x^5+x^8))` -/
def P14363933203264141174.Spec : Prop :=
  ∀ n, P14363933203264141174.a n = A387693 n

end A387693

/-! ## A387693.P5789760263090905080

`∑{#}[floor(n/4), 2^(n-4*#)*C(2*n-6*#+1, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387693.P5789760263090905080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (4 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (6 * k : ℤ) + 1).toNat (2 * k) : ℚ)

end

end A387693.P5789760263090905080

namespace A387693

/-- `∑{#}[floor(n/4), 2^(n-4*#)*C(2*n-6*#+1, 2*#)]` -/
def P5789760263090905080.Spec : Prop :=
  ∀ n, P5789760263090905080.a n = (A387693 n : ℚ)

end A387693

/-! ## A387693.P15185850816940270829

`4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=19, a(5)=52, a(6)=148, a(7)=416`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387693

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` -/
def P15185850816940270829.Spec : Prop :=
  ∀ n, P15185850816940270829.a n = A387693 n

theorem P15185850816940270829.correct : P15185850816940270829.Spec := by
  intro n
  simp only [A387693]

end A387693

/-!
# A387694: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*n-2*k+1,2*k+1).

The programs for A387694, the canonical program `A387694.P9471301431738774999` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387694 has offset 0).

The definition of A387694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387694.P3838829334793098195

`ogf((1+2x-x^2)/(1-4x+2x^2-4x^3+x^4))`
-/

namespace A387694.P3838829334793098195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -4, 2, -4, 1] n

end

end A387694.P3838829334793098195

namespace A387694

/-- `ogf((1+2x-x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P3838829334793098195.Spec : Prop :=
  ∀ n, P3838829334793098195.a n = A387694 n

end A387694

/-! ## A387694.P949573170531510482

`∑{#}[floor(n/2), 2^(n-2*#)*C(2*n-2*#+1, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387694.P949573170531510482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat (2 * k + 1) : ℚ)

end

end A387694.P949573170531510482

namespace A387694

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(2*n-2*#+1, 2*#+1)]` -/
def P949573170531510482.Spec : Prop :=
  ∀ n, P949573170531510482.a n = (A387694 n : ℚ)

end A387694

/-! ## A387694.P9471301431738774999

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=21, a(3)=76`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387694

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9471301431738774999.Spec : Prop :=
  ∀ n, P9471301431738774999.a n = A387694 n

theorem P9471301431738774999.correct : P9471301431738774999.Spec := by
  intro n
  simp only [A387694]

end A387694

/-! ## A387694.P17606746150378270129

`A387689(n)+A290908(n)`
-/

namespace A387694.P17606746150378270129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387689 n + A290908 n

end

end A387694.P17606746150378270129

namespace A387694

/-- `A387689(n)+A290908(n)` -/
def P17606746150378270129.Spec : Prop :=
  ∀ n, P17606746150378270129.a n = A387694 n

end A387694

/-! ## A387694.P3896405571914738166

`A387689(n+1)-A057077(n+1)`
-/

namespace A387694.P3896405571914738166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387689 (n + 1) - A057077 (n + 1)

end

end A387694.P3896405571914738166

namespace A387694

/-- `A387689(n+1)-A057077(n+1)` -/
def P3896405571914738166.Spec : Prop :=
  ∀ n, P3896405571914738166.a n = A387694 n

end A387694

/-! ## A387694.P12501016607541703413

`A101265(n+2)-A133872(n+1)`
-/

namespace A387694.P12501016607541703413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 2) - A133872 (n + 1)

end

end A387694.P12501016607541703413

namespace A387694

/-- `A101265(n+2)-A133872(n+1)` -/
def P12501016607541703413.Spec : Prop :=
  ∀ n, P12501016607541703413.a n = A387694 n

end A387694

/-! ## A387694.P7182142445820555870

`A099488(n+1)-(A099488(n)+A056594(n+1))`
-/

namespace A387694.P7182142445820555870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099488 (n + 1) - (A099488 n + A056594 (n + 1))

end

end A387694.P7182142445820555870

namespace A387694

/-- `A099488(n+1)-(A099488(n)+A056594(n+1))` -/
def P7182142445820555870.Spec : Prop :=
  ∀ n, P7182142445820555870.a n = A387694 n

end A387694

/-! ## A387694.P10013171735294225347

`A099486(n+1)+A099486(n+1)-A099488(n)`
-/

namespace A387694.P10013171735294225347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099486 (n + 1) + (A099486 (n + 1) - A099488 n)

end

end A387694.P10013171735294225347

namespace A387694

/-- `A099486(n+1)+A099486(n+1)-A099488(n)` -/
def P10013171735294225347.Spec : Prop :=
  ∀ n, P10013171735294225347.a n = A387694 n

end A387694

/-! ## A387694.P3762400093775915530

`A099489(n+1)-(A099488(n)+A099487(n+1))`
-/

namespace A387694.P3762400093775915530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099489 (n + 1) - (A099488 n + A099487 (n + 1))

end

end A387694.P3762400093775915530

namespace A387694

/-- `A099489(n+1)-(A099488(n)+A099487(n+1))` -/
def P3762400093775915530.Spec : Prop :=
  ∀ n, P3762400093775915530.a n = A387694 n

end A387694

/-!
# A387695: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k+1,2*k+1).

The programs for A387695, the canonical program `A387695.P12302221396290479493` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387695 has offset 0).

The definition of A387695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387695.P5656092132400599011

`ogf((1+2x-x^3)/(1-4x+4x^2-2x^3-4x^4+x^6))`
-/

namespace A387695.P5656092132400599011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, -4, 4, -2, -4, 0, 1] n

end

end A387695.P5656092132400599011

namespace A387695

/-- `ogf((1+2x-x^3)/(1-4x+4x^2-2x^3-4x^4+x^6))` -/
def P5656092132400599011.Spec : Prop :=
  ∀ n, P5656092132400599011.a n = A387695 n

end A387695

/-! ## A387695.P7605436233734963592

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*n-4*#+1, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387695.P7605436233734963592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 1).toNat (2 * k + 1) : ℚ)

end

end A387695.P7605436233734963592

namespace A387695

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(2*n-4*#+1, 2*#+1)]` -/
def P7605436233734963592.Spec : Prop :=
  ∀ n, P7605436233734963592.a n = (A387695 n : ℚ)

end A387695

/-! ## A387695.P12302221396290479493

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=57, a(4)=164, a(5)=492`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387695

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P12302221396290479493.Spec : Prop :=
  ∀ n, P12302221396290479493.a n = A387695 n

theorem P12302221396290479493.correct : P12302221396290479493.Spec := by
  intro n
  simp only [A387695]

end A387695

/-!
# A387696: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k+1,2*k+1).

The programs for A387696, the canonical program `A387696.P5319228612014759619` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387696 has offset 0).

The definition of A387696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387696.P5319228612014759619

`ogf((1+2x-x^4)/(1-4x+4x^2-2x^4-4x^5+x^8))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387696

/-- `ogf((1+2x-x^4)/(1-4x+4x^2-2x^4-4x^5+x^8))` -/
def P5319228612014759619.Spec : Prop :=
  ∀ n, P5319228612014759619.a n = A387696 n

theorem P5319228612014759619.correct : P5319228612014759619.Spec := by
  intro n
  simp only [A387696]

end A387696

/-! ## A387696.P5654964861941045939

`∑{#}[floor(n/4), 2^(n-4*#)*C(2*n-6*#+1, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387696.P5654964861941045939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (4 * k : ℤ) : ℤ) * (Nat.choose ((2 * n : ℤ) - (6 * k : ℤ) + 1).toNat (2 * k + 1) : ℚ)

end

end A387696.P5654964861941045939

namespace A387696

/-- `∑{#}[floor(n/4), 2^(n-4*#)*C(2*n-6*#+1, 2*#+1)]` -/
def P5654964861941045939.Spec : Prop :=
  ∀ n, P5654964861941045939.a n = (A387696 n : ℚ)

end A387696

