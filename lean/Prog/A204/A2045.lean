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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
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
# A204500: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204500, there is no canonical definition to state claims against.
-/

/-! ## A204500.P1507940952805997849

`A204501(A374008(n+1))`
-/

namespace A204500.P1507940952805997849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A374008 (n + 1)).toNat

end

end A204500.P1507940952805997849

/-! ## A204500.P17582480651063245798

`A204501(eq[8, A131818(n+1)])`
-/

namespace A204500.P17582480651063245798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204500.P17582480651063245798

/-! ## A204500.P1445504622214700000

`A204501(A055999(n+4))`
-/

namespace A204500.P1445504622214700000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A055999 (n + 4)).toNat

end

end A204500.P1445504622214700000

/-! ## A204500.P9284765335723131941

`A204501(eq[4, A219347(n)])`
-/

namespace A204500.P9284765335723131941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204500.P9284765335723131941

/-! ## A204500.P3388140657328477438

`A204501(eq[6, A193592(n)])`
-/

namespace A204500.P3388140657328477438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204500.P3388140657328477438

/-!
# A204502: Numbers k such that floor(k^2 / 9) is a square.

The programs for A204502, the canonical program `A204502.P15221116734715154605` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204502 has offset 1).

The definition of A204502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204502.P15221116734715154605

`ogf((x+x^5+x^6)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204502

/-- `ogf((x+x^5+x^6)/(1-2x+x^2))` -/
def P15221116734715154605.Spec : Prop :=
  ∀ n, P15221116734715154605.a n = A204502 (n + 1)

theorem P15221116734715154605.correct : P15221116734715154605.Spec := by
  intro n
  simp only [A204502, Nat.add_sub_cancel]

end A204502

/-!
# A204503: Squares n^2 such that floor(n^2/9) is again a square.

The programs for A204503, the canonical program `A204503.P9073994523406149665` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204503 has offset 1).

The definition of A204503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204503.P9073994523406149665

`A204502(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204503

/-- `A204502(n+1)²` -/
def P9073994523406149665.Spec : Prop :=
  ∀ n, P9073994523406149665.a n = A204503 (n + 1)

theorem P9073994523406149665.correct : P9073994523406149665.Spec := by
  intro n
  simp only [A204503, Nat.add_sub_cancel]

end A204503

/-! ## A204503.P9259713607147877547

`lt[n*n%3, 5]²`
-/

namespace A204503.P9259713607147877547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A204503.P9259713607147877547

namespace A204503

/-- `lt[n*n%3, 5]²` -/
def P9259713607147877547.Spec : Prop :=
  ∀ n, (P9259713607147877547.a n : ℤ) = A204503 (n + 1)

end A204503

/-! ## A204503.P10016644590869828144

`lt[lcm(3, n), n+9]²`
-/

namespace A204503.P10016644590869828144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A204503.P10016644590869828144

namespace A204503

/-- `lt[lcm(3, n), n+9]²` -/
def P10016644590869828144.Spec : Prop :=
  ∀ n, (P10016644590869828144.a n : ℤ) = A204503 (n + 1)

end A204503

/-! ## A204503.P15915800954333734624

`comp[ceil(n/2)+n+5]²`
-/

namespace A204503.P15915800954333734624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (n + 5 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A204503.P15915800954333734624

namespace A204503

/-- `comp[ceil(n/2)+n+5]²` -/
def P15915800954333734624.Spec : Prop :=
  ∀ n, (P15915800954333734624.a n : ℤ) = A204503 (n + 1)

end A204503

/-! ## A204503.P14348084221833523461

`record[(8*floor(n/5)-n)²]`
-/

namespace A204503.P14348084221833523461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * ⌊(n : ℚ) / 5⌋ - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204503.P14348084221833523461

namespace A204503

/-- `record[(8*floor(n/5)-n)²]` -/
def P14348084221833523461.Spec : Prop :=
  ∀ n, P14348084221833523461.a n = A204503 (n + 1)

end A204503

/-! ## A204503.P4726209507396823637

`comp[a(n-2)+3]^2` with `a(0)=5, a(1)=7`
-/

namespace A204503.P4726209507396823637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  f1 (n - 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A204503.P4726209507396823637

namespace A204503

/-- `comp[a(n-2)+3]^2` -/
def P4726209507396823637.Spec : Prop :=
  ∀ n, (P4726209507396823637.a n : ℤ) = A204503 (n + 1)

end A204503

/-! ## A204503.P16784036449528989329

`ogf((x+x^2+11x^5+12x^6-7x^7)/(1-3x+3x^2-x^3))`
-/

namespace A204503.P16784036449528989329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 0, 11, 12, -7] [1, -3, 3, -1] n

end

end A204503.P16784036449528989329

namespace A204503

/-- `ogf((x+x^2+11x^5+12x^6-7x^7)/(1-3x+3x^2-x^3))` -/
def P16784036449528989329.Spec : Prop :=
  ∀ n, P16784036449528989329.a n = A204503 (n + 1)

end A204503

/-! ## A204503.P8185151452423056574

`∪[A016766(n), A046952(n+1)]`
-/

namespace A204503.P8185151452423056574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204503.P8185151452423056574

namespace A204503

/-- `∪[A016766(n), A046952(n+1)]` -/
def P8185151452423056574.Spec : Prop :=
  ∀ n, (P8185151452423056574.a n : ℤ) = A204503 (n + 1)

end A204503

/-! ## A204503.P15970975641061958069

`∪[A016766(n), A136404(n+1)]`
-/

namespace A204503.P15970975641061958069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204503.P15970975641061958069

namespace A204503

/-- `∪[A016766(n), A136404(n+1)]` -/
def P15970975641061958069.Spec : Prop :=
  ∀ n, (P15970975641061958069.a n : ℤ) = A204503 (n + 1)

end A204503

/-! ## A204503.P17818958276741264000

`∪[A016766(n), A318278(n+1)]`
-/

namespace A204503.P17818958276741264000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204503.P17818958276741264000

namespace A204503

/-- `∪[A016766(n), A318278(n+1)]` -/
def P17818958276741264000.Spec : Prop :=
  ∀ n, (P17818958276741264000.a n : ℤ) = A204503 (n + 1)

end A204503

/-!
# A204504: A204512(n)^2 = floor[A055872(n)/8]: Squares such that appending some digit in base 8 yields another square.

The programs for A204504, the canonical program `A204504.P4243147778352618886` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204504 has offset 1).

The definition of A204504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204504.P15156967016910484600

`ogf((x^3+4x^4+x^5+4x^6)/(1-35x^2+35x^4-x^6))`
-/

namespace A204504.P15156967016910484600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 4, 1, 4] [1, 0, -35, 0, 35, 0, -1] n

end

end A204504.P15156967016910484600

namespace A204504

/-- `ogf((x^3+4x^4+x^5+4x^6)/(1-35x^2+35x^4-x^6))` -/
def P15156967016910484600.Spec : Prop :=
  ∀ n, P15156967016910484600.a n = A204504 (n + 1)

end A204504

/-! ## A204504.P4243147778352618886

`A204512(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204504

/-- `A204512(n+1)²` -/
def P4243147778352618886.Spec : Prop :=
  ∀ n, P4243147778352618886.a n = A204504 (n + 1)

theorem P4243147778352618886.correct : P4243147778352618886.Spec := by
  intro n
  simp only [A204504, Nat.add_sub_cancel]

end A204504

/-! ## A204504.P4898064287887749020

`floor(A055872(n+1)/8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204504.P4898064287887749020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055872 (n + 1) : ℚ) / 8⌋

end

end A204504.P4898064287887749020

namespace A204504

/-- `floor(A055872(n+1)/8)` -/
def P4898064287887749020.Spec : Prop :=
  ∀ n, P4898064287887749020.a n = A204504 (n + 1)

end A204504

/-! ## A204504.P14347293159047452565

`A204512(n+1)^A020639(A005893(n))`
-/

namespace A204504.P14347293159047452565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204512 (n + 1) : ℚ) ^ (A020639 (A005893 n).toNat : ℤ)

end

end A204504.P14347293159047452565

namespace A204504

/-- `A204512(n+1)^A020639(A005893(n))` -/
def P14347293159047452565.Spec : Prop :=
  ∀ n, P14347293159047452565.a n = (A204504 (n + 1) : ℚ)

end A204504

/-! ## A204504.P3115513748730402443

`A204512(n+1)^A020639(A053799(n))`
-/

namespace A204504.P3115513748730402443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204512 (n + 1) : ℚ) ^ (A020639 (A053799 n).toNat : ℤ)

end

end A204504.P3115513748730402443

namespace A204504

/-- `A204512(n+1)^A020639(A053799(n))` -/
def P3115513748730402443.Spec : Prop :=
  ∀ n, P3115513748730402443.a n = (A204504 (n + 1) : ℚ)

end A204504

/-! ## A204504.P9843727083615138400

`A204512(n+1)^A000005(A126715(n))`
-/

namespace A204504.P9843727083615138400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204512 (n + 1) : ℚ) ^ (A000005 (A126715 n).toNat : ℤ)

end

end A204504.P9843727083615138400

namespace A204504

/-- `A204512(n+1)^A000005(A126715(n))` -/
def P9843727083615138400.Spec : Prop :=
  ∀ n, P9843727083615138400.a n = (A204504 (n + 1) : ℚ)

end A204504

/-! ## A204504.P9843284057604030678

`A204512(n+1)*A204512(A054977(n)+n)`
-/

namespace A204504.P9843284057604030678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 1) * A204512 (A054977 n + (n : ℤ)).toNat

end

end A204504.P9843284057604030678

namespace A204504

/-- `A204512(n+1)*A204512(A054977(n)+n)` -/
def P9843284057604030678.Spec : Prop :=
  ∀ n, P9843284057604030678.a n = A204504 (n + 1)

end A204504

/-! ## A204504.P8633926340171480778

`A204512(n+1)^A000005(A257244(2*n+1))`
-/

namespace A204504.P8633926340171480778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204512 (n + 1) : ℚ) ^ (A000005 (A257244 (2 * n + 1)).toNat : ℤ)

end

end A204504.P8633926340171480778

namespace A204504

/-- `A204512(n+1)^A000005(A257244(2*n+1))` -/
def P8633926340171480778.Spec : Prop :=
  ∀ n, P8633926340171480778.a n = (A204504 (n + 1) : ℚ)

end A204504

/-! ## A204504.P10811170566363224085

`A204512(n+1)^A001316(A006519(∑[n+1]+1))`
-/

namespace A204504.P10811170566363224085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204512 (n + 1) : ℚ) ^ (A001316 (A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℤ)

end

end A204504.P10811170566363224085

namespace A204504

/-- `A204512(n+1)^A001316(A006519(∑[n+1]+1))` -/
def P10811170566363224085.Spec : Prop :=
  ∀ n, P10811170566363224085.a n = (A204504 (n + 1) : ℚ)

end A204504

/-!
# A204505: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..2 introduced in row major order.

The programs for A204505, there is no canonical definition to state claims against.
-/

/-! ## A204505.P5823260517834560283

`A204511(∑[4*n]+1)`
-/

namespace A204505.P5823260517834560283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204505.P5823260517834560283

/-!
# A204506: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..2 introduced in row major order.

The programs for A204506, there is no canonical definition to state claims against.
-/

/-! ## A204506.P6255711249961665196

`A204511(∑[n]+1)`
-/

namespace A204506.P6255711249961665196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204506.P6255711249961665196

/-! ## A204506.P6711619603199004157

`record[A204511(A114091(n+1))]`
-/

namespace A204506.P6711619603199004157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204506.P6711619603199004157

/-! ## A204506.P3918176035606912458

`record[A204511(A246276(n+1))]`
-/

namespace A204506.P3918176035606912458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204506.P3918176035606912458

/-! ## A204506.P12871545158333758800

`A204511(A000124(n))+char[10]`
-/

namespace A204506.P12871545158333758800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204506.P12871545158333758800

/-! ## A204506.P11774533999403278916

`record[A010054(n)*A204511(n+1)]`
-/

namespace A204506.P11774533999403278916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204506.P11774533999403278916

/-!
# A204507: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..2 introduced in row major order.

The programs for A204507, there is no canonical definition to state claims against.
-/

/-! ## A204507.P13312835324449978750

`A204511(∑[n+1]+2)`
-/

namespace A204507.P13312835324449978750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204507.P13312835324449978750

/-! ## A204507.P16000194145931261844

`record[A204511(A114091(n+1)+1)]`
-/

namespace A204507.P16000194145931261844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204507.P16000194145931261844

/-!
# A204508: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..2 introduced in row major order.

The programs for A204508, there is no canonical definition to state claims against.
-/

/-! ## A204508.P6039685554017064068

`A204511(A167614(n+1))`
-/

namespace A204508.P6039685554017064068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A167614 (n + 1)).toNat

end

end A204508.P6039685554017064068

/-! ## A204508.P884990424702639217

`record[A109466(n)*A204511(n+4)]`
-/

namespace A204508.P884990424702639217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A204511 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204508.P884990424702639217

/-! ## A204508.P364085634252503734

`A204511(∑[n+3]+1)`
-/

namespace A204508.P364085634252503734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204508.P364085634252503734

/-!
# A204509: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..2 introduced in row major order.

The programs for A204509, there is no canonical definition to state claims against.
-/

/-! ## A204509.P5372174994956546653

`A204511(A052905(n)+9)`
-/

namespace A204509.P5372174994956546653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A052905 n + 9).toNat

end

end A204509.P5372174994956546653

/-! ## A204509.P13709663886199005066

`A204511(A167614(n+2)+1)`
-/

namespace A204509.P13709663886199005066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (A167614 (n + 2) + 1).toNat

end

end A204509.P13709663886199005066

/-!
# A204510: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..2 introduced in row major order.

The programs for A204510, there is no canonical definition to state claims against.
-/

/-! ## A204510.P2214646838363172728

`A204511(Δ[A264443(n)])`
-/

namespace A204510.P2214646838363172728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204511 (f1 (n + 1) - f1 n).toNat

end

end A204510.P2214646838363172728

/-!
# A204512: Square roots of [A055872/8]: Their square written in base 8, with some digit appended, is again a square.

The programs for A204512, the canonical program `A204512.P17278535945258633689` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204512 has offset 1).

The definition of A204512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204512.P17278535945258633689

`ogf((x^3+2x^4)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204512

/-- `ogf((x^3+2x^4)/(1-6x^2+x^4))` -/
def P17278535945258633689.Spec : Prop :=
  ∀ n, P17278535945258633689.a n = A204512 (n + 1)

theorem P17278535945258633689.correct : P17278535945258633689.Spec := by
  intro n
  simp only [A204512, Nat.add_sub_cancel]

end A204512

/-! ## A204512.P3837171113825512134

`6*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A204512.P3837171113825512134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A204512.P3837171113825512134

namespace A204512

/-- `6*a(n-2)-a(n-4)` -/
def P3837171113825512134.Spec : Prop :=
  ∀ n, P3837171113825512134.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P3302197327016801475

`A001333(n)%A152118(A014681(n))`
-/

namespace A204512.P3302197327016801475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001333 n) (A152118 (A014681 n).toNat)

end

end A204512.P3302197327016801475

namespace A204512

/-- `A001333(n)%A152118(A014681(n))` -/
def P3302197327016801475.Spec : Prop :=
  ∀ n, P3302197327016801475.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P9051475309714470724

`A089499(n)%A006452(n)`
-/

namespace A204512.P9051475309714470724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089499 n) (A006452 n)

end

end A204512.P9051475309714470724

namespace A204512

/-- `A089499(n)%A006452(n)` -/
def P9051475309714470724.Spec : Prop :=
  ∀ n, P9051475309714470724.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P6103696493570525557

`A001109(A028242(n))%A006452(n)`
-/

namespace A204512.P6103696493570525557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001109 (A028242 n).toNat) (A006452 n)

end

end A204512.P6103696493570525557

namespace A204512

/-- `A001109(A028242(n))%A006452(n)` -/
def P6103696493570525557.Spec : Prop :=
  ∀ n, P6103696493570525557.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P17068726839646827928

`A041011(A004442(n))%A006452(n)`
-/

namespace A204512.P17068726839646827928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041011 (A004442 n).toNat) (A006452 n)

end

end A204512.P17068726839646827928

namespace A204512

/-- `A041011(A004442(n))%A006452(n)` -/
def P17068726839646827928.Spec : Prop :=
  ∀ n, P17068726839646827928.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P3333060954300773467

`A276601(n+1)%∑[A126354(n+1)]`
-/

namespace A204512.P3333060954300773467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276601 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204512.P3333060954300773467

namespace A204512

/-- `A276601(n+1)%∑[A126354(n+1)]` -/
def P3333060954300773467.Spec : Prop :=
  ∀ n, P3333060954300773467.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P18223884974454721244

`A163607(A109613(n))%A041011(n)`
-/

namespace A204512.P18223884974454721244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163607 (A109613 n).toNat) (A041011 n)

end

end A204512.P18223884974454721244

namespace A204512

/-- `A163607(A109613(n))%A041011(n)` -/
def P18223884974454721244.Spec : Prop :=
  ∀ n, P18223884974454721244.a n = A204512 (n + 1)

end A204512

/-! ## A204512.P9450502589349316279

`sqrt(A204504(n+1))`
-/

namespace A204512.P9450502589349316279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204504 (n + 1) : ℝ)

end

end A204512.P9450502589349316279

namespace A204512

/-- `sqrt(A204504(n+1))` -/
def P9450502589349316279.Spec : Prop :=
  ∀ n, P9450502589349316279.a n = (A204512 (n + 1) : ℝ)

end A204512

/-! ## A204512.P11037096072348194311

`Δ[A041010(3*n)]%A041011(n)`
-/

namespace A204512.P11037096072348194311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A041011 n)

end

end A204512.P11037096072348194311

namespace A204512

/-- `Δ[A041010(3*n)]%A041011(n)` -/
def P11037096072348194311.Spec : Prop :=
  ∀ n, P11037096072348194311.a n = A204512 (n + 1)

end A204512

/-!
# A204513: A204517(n)^2 = floor[A055859(n)/7]: Squares which written in base 7, with some digit appended, yield another square.

The programs for A204513, the canonical program `A204513.P7037313044687247832` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204513 has offset 1).

The definition of A204513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204513.P7037313044687247832

`A204517(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204513

/-- `A204517(n+1)²` -/
def P7037313044687247832.Spec : Prop :=
  ∀ n, P7037313044687247832.a n = A204513 (n + 1)

theorem P7037313044687247832.correct : P7037313044687247832.Spec := by
  intro n
  simp only [A204513, Nat.add_sub_cancel]

end A204513

/-! ## A204513.P3624300855356072656

`floor(A055859(n+1)/7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204513.P3624300855356072656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055859 (n + 1) : ℚ) / 7⌋

end

end A204513.P3624300855356072656

namespace A204513

/-- `floor(A055859(n+1)/7)` -/
def P3624300855356072656.Spec : Prop :=
  ∀ n, P3624300855356072656.a n = A204513 (n + 1)

end A204513

/-! ## A204513.P8922195331721851894

`A204517(A000027(n+1))^2`
-/

namespace A204513.P8922195331721851894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (A000027 (n + 1)).toNat ^ 2

end

end A204513.P8922195331721851894

namespace A204513

/-- `A204517(A000027(n+1))^2` -/
def P8922195331721851894.Spec : Prop :=
  ∀ n, P8922195331721851894.a n = A204513 (n + 1)

end A204513

/-! ## A204513.P14363122865245943032

`A204517(n+1)^A000005(A126715(n))`
-/

namespace A204513.P14363122865245943032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204517 (n + 1) : ℚ) ^ (A000005 (A126715 n).toNat : ℤ)

end

end A204513.P14363122865245943032

namespace A204513

/-- `A204517(n+1)^A000005(A126715(n))` -/
def P14363122865245943032.Spec : Prop :=
  ∀ n, P14363122865245943032.a n = (A204513 (n + 1) : ℚ)

end A204513

/-! ## A204513.P8383419166853902836

`A204517(n+1)^A000005(A257244(n+1))`
-/

namespace A204513.P8383419166853902836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204517 (n + 1) : ℚ) ^ (A000005 (A257244 (n + 1)).toNat : ℤ)

end

end A204513.P8383419166853902836

namespace A204513

/-- `A204517(n+1)^A000005(A257244(n+1))` -/
def P8383419166853902836.Spec : Prop :=
  ∀ n, P8383419166853902836.a n = (A204513 (n + 1) : ℚ)

end A204513

/-! ## A204513.P12277034718182883982

`A204517(n+1)^A001316(A006519(∑[n+1]+1))`
-/

namespace A204513.P12277034718182883982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204517 (n + 1) : ℚ) ^ (A001316 (A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℤ)

end

end A204513.P12277034718182883982

namespace A204513

/-- `A204517(n+1)^A001316(A006519(∑[n+1]+1))` -/
def P12277034718182883982.Spec : Prop :=
  ∀ n, P12277034718182883982.a n = (A204513 (n + 1) : ℚ)

end A204513

/-! ## A204513.P5453180725650822956

`floor(A204516(n+1)²/7)`
-/

namespace A204513.P5453180725650822956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204516 (n + 1) ^ 2 : ℚ) / 7⌋

end

end A204513.P5453180725650822956

namespace A204513

/-- `floor(A204516(n+1)²/7)` -/
def P5453180725650822956.Spec : Prop :=
  ∀ n, P5453180725650822956.a n = A204513 (n + 1)

end A204513

/-!
# A204514: Numbers such that floor(a(n)^2 / 8) is again a square.

The programs for A204514, the canonical program `A204514.P14950219136531246543` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204514 has offset 1).

The definition of A204514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204514.P14950219136531246543

`ogf((x+2x^2-3x^3-6x^4)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204514

/-- `ogf((x+2x^2-3x^3-6x^4)/(1-6x^2+x^4))` -/
def P14950219136531246543.Spec : Prop :=
  ∀ n, P14950219136531246543.a n = A204514 (n + 1)

theorem P14950219136531246543.correct : P14950219136531246543.Spec := by
  intro n
  simp only [A204514, Nat.add_sub_cancel]

end A204514

/-! ## A204514.P2571503897463925256

`sqrt(A055872(n+1))`
-/

namespace A204514.P2571503897463925256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055872 (n + 1) : ℝ)

end

end A204514.P2571503897463925256

namespace A204514

/-- `sqrt(A055872(n+1))` -/
def P2571503897463925256.Spec : Prop :=
  ∀ n, P2571503897463925256.a n = (A204514 (n + 1) : ℝ)

end A204514

/-! ## A204514.P14013686161274687450

`6*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A204514.P14013686161274687450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 6] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A204514.P14013686161274687450

namespace A204514

/-- `6*a(n-2)-a(n-4)` -/
def P14013686161274687450.Spec : Prop :=
  ∀ n, P14013686161274687450.a n = A204514 (n + 1)

end A204514

/-! ## A204514.P13898834984914301148

`A001333(n-A134451(n))*A134451(n)`
-/

namespace A204514.P13898834984914301148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 ((n : ℤ) - A134451 n).toNat * A134451 n

end

end A204514.P13898834984914301148

namespace A204514

/-- `A001333(n-A134451(n))*A134451(n)` -/
def P13898834984914301148.Spec : Prop :=
  ∀ n, P13898834984914301148.a n = A204514 (n + 1)

end A204514

/-! ## A204514.P17306403513542217544

`A221172(or(1, n))%A078343(n)`
-/

namespace A204514.P17306403513542217544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221172 (Nat.lor 1 n)) (A078343 n)

end

end A204514.P17306403513542217544

namespace A204514

/-- `A221172(or(1, n))%A078343(n)` -/
def P17306403513542217544.Spec : Prop :=
  ∀ n, P17306403513542217544.a n = A204514 (n + 1)

end A204514

/-! ## A204514.P15976193421506527931

`A221172(A109613(n))%A078343(n)`
-/

namespace A204514.P15976193421506527931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221172 (A109613 n).toNat) (A078343 n)

end

end A204514.P15976193421506527931

namespace A204514

/-- `A221172(A109613(n))%A078343(n)` -/
def P15976193421506527931.Spec : Prop :=
  ∀ n, P15976193421506527931.a n = A204514 (n + 1)

end A204514

/-! ## A204514.P15549599496334903034

`A001541(A028242(n))%A266505(2*n)`
-/

namespace A204514.P15549599496334903034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001541 (A028242 n).toNat) (A266505 (2 * n))

end

end A204514.P15549599496334903034

namespace A204514

/-- `A001541(A028242(n))%A266505(2*n)` -/
def P15549599496334903034.Spec : Prop :=
  ∀ n, P15549599496334903034.a n = A204514 (n + 1)

end A204514

/-!
# A204515: a(n) = (2*n)! * (2*n+1)! / ((n+1)^2 * n!^3).

The programs for A204515, the canonical program `A204515.P9565474544406933220` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204515 has offset 0).

The definition of A204515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204515.P8667323928572820521

`A248045(n+1)/(n+1)`
-/

namespace A204515.P8667323928572820521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248045 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204515.P8667323928572820521

namespace A204515

/-- `A248045(n+1)/(n+1)` -/
def P8667323928572820521.Spec : Prop :=
  ∀ n, P8667323928572820521.a n = (A204515 n : ℚ)

end A204515

/-! ## A204515.P9565474544406933220

`(2*n)!*(2*n+1)!/((n+1)²*n!^3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204515

/-- `(2*n)!*(2*n+1)!/((n+1)²*n!^3)` -/
def P9565474544406933220.Spec : Prop :=
  ∀ n, P9565474544406933220.a n = (A204515 n : ℚ)

end A204515

/-! ## A204515.P6686676786926745392

`n!*A000891(n)`
-/

namespace A204515.P6686676786926745392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000891 n

end

end A204515.P6686676786926745392

namespace A204515

/-- `n!*A000891(n)` -/
def P6686676786926745392.Spec : Prop :=
  ∀ n, P6686676786926745392.a n = A204515 n

end A204515

/-! ## A204515.P3168570996871917932

`n!*A005558(2*n)`
-/

namespace A204515.P3168570996871917932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005558 (2 * n)

end

end A204515.P3168570996871917932

namespace A204515

/-- `n!*A005558(2*n)` -/
def P3168570996871917932.Spec : Prop :=
  ∀ n, P3168570996871917932.a n = A204515 n

end A204515

/-! ## A204515.P13821169460925571437

`n!*Δ[n²]*A000108(n)²`
-/

namespace A204515.P13821169460925571437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n ^ 2

end

end A204515.P13821169460925571437

namespace A204515

/-- `n!*Δ[n²]*A000108(n)²` -/
def P13821169460925571437.Spec : Prop :=
  ∀ n, P13821169460925571437.a n = A204515 n

end A204515

/-!
# A204516: Numbers such that floor(a(n)^2 / 7) is a square.

The programs for A204516, the canonical program `A204516.P10811709224923125716` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204516 has offset 1).

The definition of A204516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204516.P10811709224923125716

`ogf((x+2x^2+3x^3-8x^4-16x^5-3x^6)/(1-16x^3+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204516

/-- `ogf((x+2x^2+3x^3-8x^4-16x^5-3x^6)/(1-16x^3+x^6))` -/
def P10811709224923125716.Spec : Prop :=
  ∀ n, P10811709224923125716.a n = A204516 (n + 1)

theorem P10811709224923125716.correct : P10811709224923125716.Spec := by
  intro n
  simp only [A204516, Nat.add_sub_cancel]

end A204516

/-! ## A204516.P5016598436535390720

`sqrt(A055859(n+1))`
-/

namespace A204516.P5016598436535390720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055859 (n + 1) : ℝ)

end

end A204516.P5016598436535390720

namespace A204516

/-- `sqrt(A055859(n+1))` -/
def P5016598436535390720.Spec : Prop :=
  ∀ n, P5016598436535390720.a n = (A204516 (n + 1) : ℝ)

end A204516

/-! ## A204516.P4477764190594170128

`round(sqrt(A055859(-xor(n, -1))))`
-/

namespace A204516.P4477764190594170128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A055859 (-Int.xor (n : ℤ) (-1)).toNat : ℝ))

end

end A204516.P4477764190594170128

namespace A204516

/-- `round(sqrt(A055859(-xor(n, -1))))` -/
def P4477764190594170128.Spec : Prop :=
  ∀ n, P4477764190594170128.a n = A204516 (n + 1)

end A204516

/-! ## A204516.P6613947078787494480

`A055859(n+1)^(A059841(2*(n+2))/2)`
-/

namespace A204516.P6613947078787494480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055859 (n + 1) : ℝ) ^ ((A059841 (2 * (n + 2)) : ℚ) / 2 : ℝ)

end

end A204516.P6613947078787494480

namespace A204516

/-- `A055859(n+1)^(A059841(2*(n+2))/2)` -/
def P6613947078787494480.Spec : Prop :=
  ∀ n, P6613947078787494480.a n = (A204516 (n + 1) : ℝ)

end A204516

/-! ## A204516.P6956769309740102674

`A055859(n+1)^(A293899(3*n+5)/2)`
-/

namespace A204516.P6956769309740102674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055859 (n + 1) : ℝ) ^ ((A293899 (3 * n + 5) : ℚ) / 2 : ℝ)

end

end A204516.P6956769309740102674

namespace A204516

/-- `A055859(n+1)^(A293899(3*n+5)/2)` -/
def P6956769309740102674.Spec : Prop :=
  ∀ n, P6956769309740102674.a n = (A204516 (n + 1) : ℝ)

end A204516

/-!
# A204517: Square root of floor[A055859(n)/7].

The programs for A204517, the canonical program `A204517.P17280734330705372164` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204517 has offset 1).

The definition of A204517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204517.P17280734330705372164

`ogf((x^3+3x^4+6x^5+x^6)/(1-16x^3+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204517

/-- `ogf((x^3+3x^4+6x^5+x^6)/(1-16x^3+x^6))` -/
def P17280734330705372164.Spec : Prop :=
  ∀ n, P17280734330705372164.a n = A204517 (n + 1)

theorem P17280734330705372164.correct : P17280734330705372164.Spec := by
  intro n
  simp only [A204517, Nat.add_sub_cancel]

end A204517

/-! ## A204517.P16034635812182817897

`sqrt(floor(A204516(n+1)²/7))`
-/

namespace A204517.P16034635812182817897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (⌊(A204516 (n + 1) ^ 2 : ℚ) / 7⌋ : ℝ)

end

end A204517.P16034635812182817897

namespace A204517

/-- `sqrt(floor(A204516(n+1)²/7))` -/
def P16034635812182817897.Spec : Prop :=
  ∀ n, P16034635812182817897.a n = (A204517 (n + 1) : ℝ)

end A204517

/-! ## A204517.P17057302857904178504

`floor(A204516(n+1)/sqrt(7))`
-/

namespace A204517.P17057302857904178504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204516 (n + 1) : ℝ) / Real.sqrt (7 : ℝ)⌋

end

end A204517.P17057302857904178504

namespace A204517

/-- `floor(A204516(n+1)/sqrt(7))` -/
def P17057302857904178504.Spec : Prop :=
  ∀ n, P17057302857904178504.a n = A204517 (n + 1)

end A204517

/-! ## A204517.P10141776440175904340

`sqrt(A204513(n+1))`
-/

namespace A204517.P10141776440175904340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204513 (n + 1) : ℝ)

end

end A204517.P10141776440175904340

namespace A204517

/-- `sqrt(A204513(n+1))` -/
def P10141776440175904340.Spec : Prop :=
  ∀ n, P10141776440175904340.a n = (A204517 (n + 1) : ℝ)

end A204517

/-! ## A204517.P15184244964640367829

`A204513(n+1)^(A005408(n)/A016825(n))`
-/

namespace A204517.P15184244964640367829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204513 (n + 1) : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A204517.P15184244964640367829

namespace A204517

/-- `A204513(n+1)^(A005408(n)/A016825(n))` -/
def P15184244964640367829.Spec : Prop :=
  ∀ n, P15184244964640367829.a n = (A204517 (n + 1) : ℝ)

end A204517

/-! ## A204517.P313590647644070810

`A204513(n+1)^(A069241(n)/A003274(n))`
-/

namespace A204517.P313590647644070810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204513 (n + 1) : ℝ) ^ ((A069241 n : ℚ) / (A003274 n : ℚ) : ℝ)

end

end A204517.P313590647644070810

namespace A204517

/-- `A204513(n+1)^(A069241(n)/A003274(n))` -/
def P313590647644070810.Spec : Prop :=
  ∀ n, P313590647644070810.a n = (A204517 (n + 1) : ℝ)

end A204517

/-!
# A204518: Numbers such that floor(a(n)^2 / 6) is a square.

The programs for A204518, the canonical program `A204518.P9686896175947858475` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204518 has offset 1).

The definition of A204518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204518.P9686896175947858475

`10*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=10, a(6)=27`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204518

/-- `10*a(n-3)-a(n-6)` -/
def P9686896175947858475.Spec : Prop :=
  ∀ n, P9686896175947858475.a n = A204518 (n + 1)

theorem P9686896175947858475.correct : P9686896175947858475.Spec := by
  intro n
  simp only [A204518, Nat.add_sub_cancel]

end A204518

/-! ## A204518.P9674050985172021497

`ogf((x+2x^2+3x^3-5x^4-10x^5-3x^6)/(1-10x^3+x^6))`
-/

namespace A204518.P9674050985172021497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, -5, -10, -3] [1, 0, 0, -10, 0, 0, 1] n

end

end A204518.P9674050985172021497

namespace A204518

/-- `ogf((x+2x^2+3x^3-5x^4-10x^5-3x^6)/(1-10x^3+x^6))` -/
def P9674050985172021497.Spec : Prop :=
  ∀ n, P9674050985172021497.a n = A204518 (n + 1)

end A204518

/-! ## A204518.P13874003523421239925

`sqrt(A055851(n+1))`
-/

namespace A204518.P13874003523421239925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055851 (n + 1) : ℝ)

end

end A204518.P13874003523421239925

namespace A204518

/-- `sqrt(A055851(n+1))` -/
def P13874003523421239925.Spec : Prop :=
  ∀ n, P13874003523421239925.a n = (A204518 (n + 1) : ℝ)

end A204518

/-! ## A204518.P1805298860970729697

`record[sqrt(A055851(ceil(C(or(1, n), n)/2)))]`
-/

namespace A204518.P1805298860970729697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055851 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204518.P1805298860970729697

namespace A204518

/-- `record[sqrt(A055851(ceil(C(or(1, n), n)/2)))]` -/
def P1805298860970729697.Spec : Prop :=
  ∀ n, P1805298860970729697.a n = (A204518 (n + 1) : ℝ)

end A204518

/-! ## A204518.P16768257607973769538

`A055851(n+1)^(A020639(2*(n+1))/4)`
-/

namespace A204518.P16768257607973769538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055851 (n + 1) : ℝ) ^ ((A020639 (2 * (n + 1)) : ℚ) / 4 : ℝ)

end

end A204518.P16768257607973769538

namespace A204518

/-- `A055851(n+1)^(A020639(2*(n+1))/4)` -/
def P16768257607973769538.Spec : Prop :=
  ∀ n, P16768257607973769538.a n = (A204518 (n + 1) : ℝ)

end A204518

/-! ## A204518.P3273841593045374900

`record[sqrt(A055851(Δ[ceil(sqrt(n^3))]))]`
-/

namespace A204518.P3273841593045374900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055851 (f2 (n + 1) - f2 n).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204518.P3273841593045374900

namespace A204518

/-- `record[sqrt(A055851(Δ[ceil(sqrt(n^3))]))]` -/
def P3273841593045374900.Spec : Prop :=
  ∀ n, P3273841593045374900.a n = (A204518 (n + 1) : ℝ)

end A204518

/-! ## A204518.P12814425794725577690

`sqrt(record[A055851(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A204518.P12814425794725577690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055851 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A204518.P12814425794725577690

namespace A204518

/-- `sqrt(record[A055851(C(comp[∑[n]]-n, 2)-n)])` -/
def P12814425794725577690.Spec : Prop :=
  ∀ n, P12814425794725577690.a n = (A204518 (n + 1) : ℝ)

end A204518

/-!
# A204519: Square root of floor(A055851(n)/6).

The programs for A204519, the canonical program `A204519.P4349383431821657763` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204519 has offset 1).

The definition of A204519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204519.P4349383431821657763

`10*a(n-3)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4, a(6)=11`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204519

/-- `10*a(n-3)-a(n-6)` -/
def P4349383431821657763.Spec : Prop :=
  ∀ n, P4349383431821657763.a n = A204519 (n + 1)

theorem P4349383431821657763.correct : P4349383431821657763.Spec := by
  intro n
  simp only [A204519, Nat.add_sub_cancel]

end A204519

/-! ## A204519.P14684291691059286625

`ogf((x^3+2x^4+4x^5+x^6)/(1-10x^3+x^6))`
-/

namespace A204519.P14684291691059286625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 2, 4, 1] [1, 0, 0, -10, 0, 0, 1] n

end

end A204519.P14684291691059286625

namespace A204519

/-- `ogf((x^3+2x^4+4x^5+x^6)/(1-10x^3+x^6))` -/
def P14684291691059286625.Spec : Prop :=
  ∀ n, P14684291691059286625.a n = A204519 (n + 1)

end A204519

/-! ## A204519.P15651422371992093343

`sqrt(A204573(n+1))`
-/

namespace A204519.P15651422371992093343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204573 (n + 1) : ℝ)

end

end A204519.P15651422371992093343

namespace A204519

/-- `sqrt(A204573(n+1))` -/
def P15651422371992093343.Spec : Prop :=
  ∀ n, P15651422371992093343.a n = (A204519 (n + 1) : ℝ)

end A204519

/-! ## A204519.P12717693284512603245

`A204573(n+1)^abs(A065357(n)/2)`
-/

namespace A204519.P12717693284512603245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204573 (n + 1) : ℝ) ^ (|(A065357 n : ℚ) / 2| : ℝ)

end

end A204519.P12717693284512603245

namespace A204519

/-- `A204573(n+1)^abs(A065357(n)/2)` -/
def P12717693284512603245.Spec : Prop :=
  ∀ n, P12717693284512603245.a n = (A204519 (n + 1) : ℝ)

end A204519

/-! ## A204519.P3875056818747178129

`A204573(n+1)^(A011782(n)/A000079(n))`
-/

namespace A204519.P3875056818747178129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204573 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A204519.P3875056818747178129

namespace A204519

/-- `A204573(n+1)^(A011782(n)/A000079(n))` -/
def P3875056818747178129.Spec : Prop :=
  ∀ n, P3875056818747178129.a n = (A204519 (n + 1) : ℝ)

end A204519

/-! ## A204519.P17394738795221263659

`A204573(n+1)^(A000124(n)/A014206(n))`
-/

namespace A204519.P17394738795221263659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204573 (n + 1) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ)

end

end A204519.P17394738795221263659

namespace A204519

/-- `A204573(n+1)^(A000124(n)/A014206(n))` -/
def P17394738795221263659.Spec : Prop :=
  ∀ n, P17394738795221263659.a n = (A204519 (n + 1) : ℝ)

end A204519

/-! ## A204519.P10461824515046127636

`A204573(n+1)^(A304042(n)/2)`
-/

namespace A204519.P10461824515046127636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204573 (n + 1) : ℝ) ^ ((A304042 n : ℚ) / 2 : ℝ)

end

end A204519.P10461824515046127636

namespace A204519

/-- `A204573(n+1)^(A304042(n)/2)` -/
def P10461824515046127636.Spec : Prop :=
  ∀ n, P10461824515046127636.a n = (A204519 (n + 1) : ℝ)

end A204519

/-!
# A204520: Numbers such that floor(a(n)^2 / 5) is a square.

The programs for A204520, there is no canonical definition to state claims against.
-/

/-! ## A204520.P15178454891127305395

`sqrt(A055812(n+1))`
-/

namespace A204520.P15178454891127305395
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055812 (n + 1) : ℝ)

end

end A204520.P15178454891127305395

/-! ## A204520.P2293785471451797970

`ogf((x+2x^2+3x^3+7x^4-9x^5-18x^6-7x^7-3x^8)/(1-18x^4+x^8))`
-/

namespace A204520.P2293785471451797970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 7, -9, -18, -7, -3] [1, 0, 0, 0, -18, 0, 0, 0, 1] n

end

end A204520.P2293785471451797970

/-! ## A204520.P17077265332058501993

`record[sqrt(A055812(Δ[ceil(sqrt(n^3))]))]`
-/

namespace A204520.P17077265332058501993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055812 (f2 (n + 1) - f2 n).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204520.P17077265332058501993

/-! ## A204520.P7082247772963784476

`ceil(sqrt(A055812(ϕ²-(ϕ-n))))`
-/

namespace A204520.P7082247772963784476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A055812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)⌉

end

end A204520.P7082247772963784476

/-! ## A204520.P9169553238906902379

`A055812(n+1)^(2/A040002(n))`
-/

namespace A204520.P9169553238906902379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055812 (n + 1) : ℝ) ^ (2 / (A040002 n : ℚ) : ℝ)

end

end A204520.P9169553238906902379

/-!
# A204521: Square root of floor(A055812(n) / 5).

The programs for A204521, there is no canonical definition to state claims against.
-/

/-! ## A204521.P1023443243641104418

`ogf((x^3+3x^4+4x^5+8x^6+3x^7+x^8)/(1-18x^4+x^8))`
-/

namespace A204521.P1023443243641104418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 3, 4, 8, 3, 1] [1, 0, 0, 0, -18, 0, 0, 0, 1] n

end

end A204521.P1023443243641104418

/-! ## A204521.P17543735846360227971

`sqrt(A203719(n+1))`
-/

namespace A204521.P17543735846360227971
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203719 (n + 1) : ℝ)

end

end A204521.P17543735846360227971

/-! ## A204521.P5088324716582384686

`floor(sqrt(A055812(n+1)/5))`
-/

namespace A204521.P5088324716582384686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A055812 (n + 1) : ℚ) / 5 : ℝ)⌋

end

end A204521.P5088324716582384686

/-! ## A204521.P857923511486388460

`floor(A204520(n+1)/sqrt(5))`
-/

namespace A204521.P857923511486388460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204520 (n + 1) : ℝ) / Real.sqrt (5 : ℝ)⌋

end

end A204521.P857923511486388460

/-! ## A204521.P4328682291930882855

`round(sqrt(A203719(ϕ²-(ϕ-n))))`
-/

namespace A204521.P4328682291930882855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A203719 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ))

end

end A204521.P4328682291930882855

/-!
# A204522: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..3 introduced in row major order.

The programs for A204522, there is no canonical definition to state claims against.
-/

/-! ## A204522.P8634675659546904127

`A204525(∑[n]+1)`
-/

namespace A204522.P8634675659546904127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204525 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204522.P8634675659546904127

/-! ## A204522.P13081238551290664130

`record[A204525(A056536(n+1))]`
-/

namespace A204522.P13081238551290664130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204525 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204522.P13081238551290664130

/-! ## A204522.P2048105632710391099

`record[A204525(A267104(n+1))]`
-/

namespace A204522.P2048105632710391099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204525 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204522.P2048105632710391099

/-!
# A204523: Number of (n+2) X 4 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..3 introduced in row major order.

The programs for A204523, there is no canonical definition to state claims against.
-/

/-! ## A204523.P18222335877357447041

`A204525(∑[n+1]+2)`
-/

namespace A204523.P18222335877357447041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204525 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204523.P18222335877357447041

/-! ## A204523.P10189439579744963468

`record[A204525(A056536(n+1)+1)]`
-/

namespace A204523.P10189439579744963468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204525 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204523.P10189439579744963468

/-!
# A204524: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..3 introduced in row major order.

The programs for A204524, there is no canonical definition to state claims against.
-/

/-! ## A204524.P8237136146977797003

`A204525(Δ[A299259(n)])`
-/

namespace A204524.P8237136146977797003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204525 (f1 (n + 1) - f1 n).toNat

end

end A204524.P8237136146977797003

/-!
# A204526: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A204526, there is no canonical definition to state claims against.
-/

/-! ## A204526.P1704087349929490227

`A204530(∑[n]+1)`
-/

namespace A204526.P1704087349929490227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204526.P1704087349929490227

/-! ## A204526.P16483134434358475881

`record[A010054(n)*A204530(n+1)]`
-/

namespace A204526.P16483134434358475881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204526.P16483134434358475881

/-! ## A204526.P17836551673947777580

`record[A204530(n+1)/A102400(n)]`
-/

namespace A204526.P17836551673947777580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204530 (n + 1) : ℚ) / (A102400 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204526.P17836551673947777580

/-! ## A204526.P12860163692290094294

`record[root(A204530(n+1), A060556(n))]`
-/

namespace A204526.P12860163692290094294
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204530 (n + 1) : ℝ) ^ (1 / (A060556 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204526.P12860163692290094294

/-! ## A204526.P17957004805825283242

`record[root(A204530(n+1), A085478(n))]`
-/

namespace A204526.P17957004805825283242
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204530 (n + 1) : ℝ) ^ (1 / (A085478 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204526.P17957004805825283242

/-!
# A204527: Number of (n+2)X4 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A204527, there is no canonical definition to state claims against.
-/

/-! ## A204527.P1282313298343396892

`record[A010054(n)*A204530(n+2)]`
-/

namespace A204527.P1282313298343396892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204527.P1282313298343396892

/-! ## A204527.P15821806160094341035

`record[root(A204530(n+2), A060556(n))]`
-/

namespace A204527.P15821806160094341035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204530 (n + 2) : ℝ) ^ (1 / (A060556 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204527.P15821806160094341035

/-! ## A204527.P13824347444649451730

`A204530(∑[n+2])`
-/

namespace A204527.P13824347444649451730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204527.P13824347444649451730

/-!
# A204528: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A204528, there is no canonical definition to state claims against.
-/

/-! ## A204528.P12666526157243095637

`A204530(A167614(n+1))`
-/

namespace A204528.P12666526157243095637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204530 (A167614 (n + 1)).toNat

end

end A204528.P12666526157243095637

/-! ## A204528.P8564515250271857509

`A204530(A141214(n)+1)`
-/

namespace A204528.P8564515250271857509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204530 (A141214 n + 1).toNat

end

end A204528.P8564515250271857509

/-!
# A204529: Number of (n+2)X6 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A204529, there is no canonical definition to state claims against.
-/

/-! ## A204529.P15423778616337081180

`A204530(A141214(n+1))`
-/

namespace A204529.P15423778616337081180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204530 (A141214 (n + 1)).toNat

end

end A204529.P15423778616337081180

/-!
# A204531: Expansion of phi(q) * phi(-q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A204531, there is no canonical definition to state claims against.
-/

/-! ## A204531.P16499037716851795003

`(-1)^n*A246950(n)`
-/

namespace A204531.P16499037716851795003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A246950 n

end

end A204531.P16499037716851795003

/-! ## A204531.P14189586452877421680

`A246950(n)/(-1)^n`
-/

namespace A204531.P14189586452877421680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246950 n : ℚ) / ((-1) ^ n : ℚ)

end

end A204531.P14189586452877421680

/-! ## A204531.P10746132776758597100

`A246950(n)*A309873(n+1)`
-/

namespace A204531.P10746132776758597100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246950 n * A309873 (n + 1)

end

end A204531.P10746132776758597100

/-! ## A204531.P1728356529272728394

`-(A071935(3*n+2)*A246950(n))`
-/

namespace A204531.P1728356529272728394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A071935 (3 * n + 2) * A246950 n)

end

end A204531.P1728356529272728394

/-! ## A204531.P7680696716629026784

`(A010815(A000326(n))*A246950(n))%18`
-/

namespace A204531.P7680696716629026784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010815 (A000326 n).toNat * A246950 n) 18

end

end A204531.P7680696716629026784

/-!
# A204533: Triangle T(n,k), read by rows, given by (0, 1, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A204533, the canonical program `A204533.P17303445619758246329` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204533 has offset 0).

The definition of A204533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204533.P17303445619758246329

`3*T(n-1,k)+T(n-1,k-1)+T(row(n)-3, col(n)-1)-T(n-2,k)-2*T(n-2,k-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204533

/-- `3*T(n-1,k)+T(n-1,k-1)+T(row(n)-3, col(n)-1)-T(n-2,k)-2*T(n-2,k-1)` -/
def P17303445619758246329.Spec : Prop :=
  ∀ n, P17303445619758246329.a n = A204533 n

theorem P17303445619758246329.correct : P17303445619758246329.Spec := by
  intro n
  simp only [A204533]

end A204533

/-! ## A204533.P331442839049978376

`A048766(A007318(n)*A114151(n))`
-/

namespace A204533.P331442839049978376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A007318 n * A114151 n).toNat

end

end A204533.P331442839049978376

namespace A204533

/-- `A048766(A007318(n)*A114151(n))` -/
def P331442839049978376.Spec : Prop :=
  ∀ n, P331442839049978376.a n = A204533 n

end A204533

/-! ## A204533.P8572417303971981560

`A048766(A027465(n)*A131182(n))`
-/

namespace A204533.P8572417303971981560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A027465 n * A131182 n).toNat

end

end A204533.P8572417303971981560

namespace A204533

/-- `A048766(A027465(n)*A131182(n))` -/
def P8572417303971981560.Spec : Prop :=
  ∀ n, P8572417303971981560.a n = A204533 n

end A204533

/-! ## A204533.P6973091347314925972

`A048766(A027465(n)*A254883(n))`
-/

namespace A204533.P6973091347314925972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A027465 n * A254883 n).toNat

end

end A204533.P6973091347314925972

namespace A204533

/-- `A048766(A027465(n)*A254883(n))` -/
def P6973091347314925972.Spec : Prop :=
  ∀ n, P6973091347314925972.a n = A204533 n

end A204533

/-! ## A204533.P621602195931664513

`A106451(A111106(n))`
-/

namespace A204533.P621602195931664513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106451 (A111106 n).toNat

end

end A204533.P621602195931664513

namespace A204533

/-- `A106451(A111106(n))` -/
def P621602195931664513.Spec : Prop :=
  ∀ n, P621602195931664513.a n = A204533 n

end A204533

/-!
# A204534: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..3 introduced in row major order.

The programs for A204534, there is no canonical definition to state claims against.
-/

/-! ## A204534.P16127449088004540341

`A204538(1+∑[n])`
-/

namespace A204534.P16127449088004540341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204534.P16127449088004540341

/-! ## A204534.P11808381126529111120

`record[A204538(A056534(n+1))]`
-/

namespace A204534.P11808381126529111120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204534.P11808381126529111120

/-! ## A204534.P5395463493485718808

`record[A204538(A114091(n+1))]`
-/

namespace A204534.P5395463493485718808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204534.P5395463493485718808

/-! ## A204534.P16628339738679153625

`record[A204538(A286235(n+1))]`
-/

namespace A204534.P16628339738679153625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204534.P16628339738679153625

/-! ## A204534.P13569888650179153715

`record[A010054(n)*A204538(n+1)]`
-/

namespace A204534.P13569888650179153715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204534.P13569888650179153715

/-!
# A204535: Number of (n+2)X4 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..3 introduced in row major order.

The programs for A204535, there is no canonical definition to state claims against.
-/

/-! ## A204535.P13502553887599230292

`A204538(∑[n+1]+2)`
-/

namespace A204535.P13502553887599230292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204535.P13502553887599230292

/-! ## A204535.P5565980172418959457

`record[A204538(A114091(n+1)+1)]`
-/

namespace A204535.P5565980172418959457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204535.P5565980172418959457

/-! ## A204535.P14299136783510953760

`record[A204538(A286235(n+1)+1)]`
-/

namespace A204535.P14299136783510953760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204535.P14299136783510953760

/-! ## A204535.P18199350185324930957

`record[A204538(A038722(n+1)+2)]`
-/

namespace A204535.P18199350185324930957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A038722 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204535.P18199350185324930957

/-!
# A204536: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..3 introduced in row major order.

The programs for A204536, there is no canonical definition to state claims against.
-/

/-! ## A204536.P7754914804201070623

`A204538(∑[n+2]+4)`
-/

namespace A204536.P7754914804201070623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204536.P7754914804201070623

/-! ## A204536.P15622129523716549256

`record[A204538(A127773(n+1)+3)]`
-/

namespace A204536.P15622129523716549256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A127773 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204536.P15622129523716549256

/-! ## A204536.P8053674361331520007

`(C(n, 9)+1)*A204538(A167614(n+1))`
-/

namespace A204536.P8053674361331520007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 9 + 1 : ℤ) * A204538 (A167614 (n + 1)).toNat

end

end A204536.P8053674361331520007

/-!
# A204537: Number of (n+2) X 6 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..3 introduced in row major order.

The programs for A204537, there is no canonical definition to state claims against.
-/

/-! ## A204537.P10434949070289403888

`A204538(A020752(n+1))`
-/

namespace A204537.P10434949070289403888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A020752 (n + 1)).toNat

end

end A204537.P10434949070289403888

/-! ## A204537.P16179692746345712726

`A204538(A167614(n+2)+1)`
-/

namespace A204537.P16179692746345712726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204538 (A167614 (n + 2) + 1).toNat

end

end A204537.P16179692746345712726

/-!
# A204539: a(n) is the number of integers N=4k whose "basin" sequence (cf. comment) ends in n^2.

The programs for A204539, there is no canonical definition to state claims against.
-/

/-! ## A204539.P9024467970352954041

`ceil(A028913(n)/2)`
-/

namespace A204539.P9024467970352954041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028913 n : ℚ) / 2⌉

end

end A204539.P9024467970352954041

/-! ## A204539.P10337696902044194942

`A028914(A028310(n))`
-/

namespace A204539.P10337696902044194942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028914 (A028310 n).toNat

end

end A204539.P10337696902044194942

/-! ## A204539.P16588089015664315979

`A028914(A000007(n)+n)`
-/

namespace A204539.P16588089015664315979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028914 (A000007 n + (n : ℤ)).toNat

end

end A204539.P16588089015664315979

/-! ## A204539.P9000454810780408929

`A028913(n)/A040000(n)`
-/

namespace A204539.P9000454810780408929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 n : ℚ) / (A040000 n : ℚ)

end

end A204539.P9000454810780408929

/-! ## A204539.P4546021782133508897

`A028913(A289207(n)+2)/2`
-/

namespace A204539.P4546021782133508897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 (A289207 n + 2).toNat : ℚ) / 2

end

end A204539.P4546021782133508897

/-! ## A204539.P11725752370678969860

`A028913(n)/(A057427(n)+1)`
-/

namespace A204539.P11725752370678969860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A204539.P11725752370678969860

/-! ## A204539.P9898869235397368902

`A028913(n)/A028913(n-A289207(n))`
-/

namespace A204539.P9898869235397368902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 n : ℚ) / (A028913 ((n : ℤ) - A289207 n).toNat : ℚ)

end

end A204539.P9898869235397368902

/-! ## A204539.P2271321202247786406

`floor((Δ[A002491(n+1)]+and(1, n+1))/2)`
-/

namespace A204539.P2271321202247786406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n + (Nat.land 1 (n + 1) : ℤ) : ℚ) / 2⌋

end

end A204539.P2271321202247786406

/-! ## A204539.P3034894850590879262

`A028913(n)/A043529(2*n)`
-/

namespace A204539.P3034894850590879262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 n : ℚ) / (A043529 (2 * n) : ℚ)

end

end A204539.P3034894850590879262

/-! ## A204539.P5840096794814009409

`A004525(A028913(n))`
-/

namespace A204539.P5840096794814009409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028913 n).toNat

end

end A204539.P5840096794814009409

/-! ## A204539.P4731084398022008589

`A026741(Δ[A007952(n)])`
-/

namespace A204539.P4731084398022008589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A204539.P4731084398022008589

/-! ## A204539.P8595065193064439759

`A004526(A028913(n)+1)`
-/

namespace A204539.P8595065193064439759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028913 n + 1).toNat

end

end A204539.P8595065193064439759

/-! ## A204539.P16203208855274422011

`A004525(Δ[A002491(n+1)])`
-/

namespace A204539.P16203208855274422011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A204539.P16203208855274422011

/-! ## A204539.P17113655200564210691

`A004526(Δ[n-(1-A002491(n+1))])`
-/

namespace A204539.P17113655200564210691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A002491 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A204539.P17113655200564210691

/-! ## A204539.P940535563724803329

`A004525(A007952(n+1)-A007952(n))`
-/

namespace A204539.P940535563724803329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007952 (n + 1) - A007952 n).toNat

end

end A204539.P940535563724803329

/-! ## A204539.P7309196935605262026

`A004526(1-(A002491(n+1)-A002491(n+2)))`
-/

namespace A204539.P7309196935605262026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 - (A002491 (n + 1) - A002491 (n + 2))).toNat

end

end A204539.P7309196935605262026

/-! ## A204539.P4627480047256802133

`A130747(xor(1, A007952(n+1)-A002491(n+1))+1)`
-/

namespace A204539.P4627480047256802133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (Int.xor 1 (A007952 (n + 1) - A002491 (n + 1)) + 1).toNat

end

end A204539.P4627480047256802133

/-! ## A204539.P7592561162790273612

`A028913(n)/A036453(A028913(2*n))`
-/

namespace A204539.P7592561162790273612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 n : ℚ) / (A036453 (A028913 (2 * n)).toNat : ℚ)

end

end A204539.P7592561162790273612

/-! ## A204539.P8443344593605176815

`A028914(A233583(n+1))`
-/

namespace A204539.P8443344593605176815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028914 (A233583 (n + 1)).toNat

end

end A204539.P8443344593605176815

/-! ## A204539.P4193640429509280168

`runs[A073047(2*n+1)]`
-/

namespace A204539.P4193640429509280168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073047 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A204539.P4193640429509280168

/-!
# A204540: Numbers k whose basins (as defined in A204539) equal 1.

The programs for A204540, there is no canonical definition to state claims against.
-/

/-! ## A204540.P4373648399291724353

`A320387(A231619(n))+A141396(n)`
-/

namespace A204540.P4373648399291724353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320387 (A231619 n).toNat + A141396 n

end

end A204540.P4373648399291724353

/-! ## A204540.P15214327944534263515

`A350844(A357830(n))+A036451(n)`
-/

namespace A204540.P15214327944534263515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 (A357830 n).toNat + A036451 n

end

end A204540.P15214327944534263515

/-!
# A204542: Numbers that are congruent to {1, 4, 11, 14} mod 15.

The programs for A204542, the canonical program `A204542.P11306374575866041083` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204542 has offset 1).

The definition of A204542 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A204542.anchor (n : ℕ) (hn : 1 ≤ n) : A204542 n = (Nat.nth (fun k => k % 15 ∈ ({1, 4, 11, 14} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A204.A204542`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204542.P11306374575866041083

`15+a(n-4)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=14`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204542

/-- `15+a(n-4)` -/
def P11306374575866041083.Spec : Prop :=
  ∀ n, (P11306374575866041083.a n : ℤ) = A204542 (n + 1)

theorem P11306374575866041083.correct : P11306374575866041083.Spec := by
  intro n
  simp only [A204542, Nat.add_sub_cancel]

end A204542

/-! ## A204542.P8733210949394138234

`ogf((1+3x+7x^2+3x^3+x^4)/(1-x-x^4+x^5))`
-/

namespace A204542.P8733210949394138234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, -1, 0, 0, -1, 1] n

end

end A204542.P8733210949394138234

namespace A204542

/-- `ogf((1+3x+7x^2+3x^3+x^4)/(1-x-x^4+x^5))` -/
def P8733210949394138234.Spec : Prop :=
  ∀ n, P8733210949394138234.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P946159808144891848

`floor(15*(n+1)/4)-(n+2)%4`
-/

namespace A204542.P946159808144891848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(15 * (n + 1) : ℚ) / 4⌋ - (((n + 2) % 4 : ℕ) : ℤ)

end

end A204542.P946159808144891848

namespace A204542

/-- `floor(15*(n+1)/4)-(n+2)%4` -/
def P946159808144891848.Spec : Prop :=
  ∀ n, P946159808144891848.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P14198783807152577222

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=7, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A204542.P14198783807152577222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204542.P14198783807152577222

namespace A204542

/-- `∑[floor(a(n-4))]` -/
def P14198783807152577222.Spec : Prop :=
  ∀ n, (P14198783807152577222.a n : ℤ) = A204542 (n + 1)

end A204542

/-! ## A204542.P13610636364391380772

`∑[a(n-4)%8]` with `a(0)=1, a(1)=3, a(2)=7, a(3)=3, a(4)=2`
-/

namespace A204542.P13610636364391380772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 3, 2] fun n f1 =>
  f1 (n - 4) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204542.P13610636364391380772

namespace A204542

/-- `∑[a(n-4)%8]` -/
def P13610636364391380772.Spec : Prop :=
  ∀ n, (P13610636364391380772.a n : ℤ) = A204542 (n + 1)

end A204542

/-! ## A204542.P18360745260734734936

`A072065(n+1)+A066530(n)`
-/

namespace A204542.P18360745260734734936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1) + A066530 n

end

end A204542.P18360745260734734936

namespace A204542

/-- `A072065(n+1)+A066530(n)` -/
def P18360745260734734936.Spec : Prop :=
  ∀ n, P18360745260734734936.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P4031985510603705118

`2*A045572(n+1)-A047201(n+1)`
-/

namespace A204542.P4031985510603705118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045572 (n + 1) - A047201 (n + 1)

end

end A204542.P4031985510603705118

namespace A204542

/-- `2*A045572(n+1)-A047201(n+1)` -/
def P4031985510603705118.Spec : Prop :=
  ∀ n, P4031985510603705118.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P13894007783932503814

`A112652(n+1)+A265428(n+1)-2`
-/

namespace A204542.P13894007783932503814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (n + 1) + (A265428 (n + 1) - 2)

end

end A204542.P13894007783932503814

namespace A204542

/-- `A112652(n+1)+A265428(n+1)-2` -/
def P13894007783932503814.Spec : Prop :=
  ∀ n, P13894007783932503814.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P18153069185242488760

`A047201(n+1)+A005843(A045572(n+1)-A047201(n+1))`
-/

namespace A204542.P18153069185242488760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1) + A005843 (A045572 (n + 1) - A047201 (n + 1)).toNat

end

end A204542.P18153069185242488760

namespace A204542

/-- `A047201(n+1)+A005843(A045572(n+1)-A047201(n+1))` -/
def P18153069185242488760.Spec : Prop :=
  ∀ n, P18153069185242488760.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P16094520260833827825

`A016969(n)-(A166517(A007494(n))+2)`
-/

namespace A204542.P16094520260833827825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - (A166517 (A007494 n).toNat + 2)

end

end A204542.P16094520260833827825

namespace A204542

/-- `A016969(n)-(A166517(A007494(n))+2)` -/
def P16094520260833827825.Spec : Prop :=
  ∀ n, P16094520260833827825.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P5995029862081574509

`A047260(n+1)+A007494(A047260(n+1))+1`
-/

namespace A204542.P5995029862081574509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (n + 1) + (A007494 (A047260 (n + 1)).toNat + 1)

end

end A204542.P5995029862081574509

namespace A204542

/-- `A047260(n+1)+A007494(A047260(n+1))+1` -/
def P5995029862081574509.Spec : Prop :=
  ∀ n, P5995029862081574509.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P14204738176469084017

`A047209(A047269(n+2))`
-/

namespace A204542.P14204738176469084017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A047269 (n + 2)).toNat

end

end A204542.P14204738176469084017

namespace A204542

/-- `A047209(A047269(n+2))` -/
def P14204738176469084017.Spec : Prop :=
  ∀ n, P14204738176469084017.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P5976554380081977895

`A090772(A047260(n+1)+1)/2`
-/

namespace A204542.P5976554380081977895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090772 (A047260 (n + 1) + 1).toNat : ℚ) / 2

end

end A204542.P5976554380081977895

namespace A204542

/-- `A090772(A047260(n+1)+1)/2` -/
def P5976554380081977895.Spec : Prop :=
  ∀ n, P5976554380081977895.a n = (A204542 (n + 1) : ℚ)

end A204542

/-! ## A204542.P3771523467996437207

`A229829(A047401(n+2))`
-/

namespace A204542.P3771523467996437207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (A047401 (n + 2)).toNat

end

end A204542.P3771523467996437207

namespace A204542

/-- `A229829(A047401(n+2))` -/
def P3771523467996437207.Spec : Prop :=
  ∀ n, P3771523467996437207.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P13904506163922907998

`A229829(A047481(n+1)+1)`
-/

namespace A204542.P13904506163922907998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (A047481 (n + 1) + 1).toNat

end

end A204542.P13904506163922907998

namespace A204542

/-- `A229829(A047481(n+1)+1)` -/
def P13904506163922907998.Spec : Prop :=
  ∀ n, P13904506163922907998.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P10429488620699354694

`∩[A047209(n+1), A229829(n+1)]`
-/

namespace A204542.P10429488620699354694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204542.P10429488620699354694

namespace A204542

/-- `∩[A047209(n+1), A229829(n+1)]` -/
def P10429488620699354694.Spec : Prop :=
  ∀ n, (P10429488620699354694.a n : ℤ) = A204542 (n + 1)

end A204542

/-! ## A204542.P9089870806718271663

`∩[A008854(n+1), A229829(n+1)]`
-/

namespace A204542.P9089870806718271663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204542.P9089870806718271663

namespace A204542

/-- `∩[A008854(n+1), A229829(n+1)]` -/
def P9089870806718271663.Spec : Prop :=
  ∀ n, (P9089870806718271663.a n : ℤ) = A204542 (n + 1)

end A204542

/-! ## A204542.P3681697108929781370

`A166517(A047219(n+1))`
-/

namespace A204542.P3681697108929781370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A047219 (n + 1)).toNat

end

end A204542.P3681697108929781370

namespace A204542

/-- `A166517(A047219(n+1))` -/
def P3681697108929781370.Spec : Prop :=
  ∀ n, P3681697108929781370.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P13144579879128821502

`A166517(A213398(n)-n²)`
-/

namespace A204542.P13144579879128821502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A213398 n - (n ^ 2 : ℤ)).toNat

end

end A204542.P13144579879128821502

namespace A204542

/-- `A166517(A213398(n)-n²)` -/
def P13144579879128821502.Spec : Prop :=
  ∀ n, P13144579879128821502.a n = A204542 (n + 1)

end A204542

/-! ## A204542.P11686544827301504884

`A166517(A001651(n+1)+n)`
-/

namespace A204542.P11686544827301504884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A001651 (n + 1) + (n : ℤ)).toNat

end

end A204542.P11686544827301504884

namespace A204542

/-- `A166517(A001651(n+1)+n)` -/
def P11686544827301504884.Spec : Prop :=
  ∀ n, P11686544827301504884.a n = A204542 (n + 1)

end A204542

/-!
# A204543: Number of (n+1)X2 0..1 arrays with permanents of 2X2 subblocks differing from neighboring permanents.

The programs for A204543, the canonical program `A204543.P14140899915282573669` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204543 has offset 1).

The definition of A204543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204543.P14140899915282573669

`a(n-2)+2*a(n-4)` with `a(0)=16, a(1)=26, a(2)=41, a(3)=56, a(4)=80, a(5)=112`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204543

/-- `a(n-2)+2*a(n-4)` -/
def P14140899915282573669.Spec : Prop :=
  ∀ n, (P14140899915282573669.a n : ℤ) = A204543 (n + 1)

theorem P14140899915282573669.correct : P14140899915282573669.Spec := by
  intro n
  simp only [A204543, Nat.add_sub_cancel]

end A204543

/-! ## A204543.P9782763570474355748

`A284883(n+5)+A210023(A000566(n+1))`
-/

namespace A204543.P9782763570474355748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284883 (n + 5) + A210023 (A000566 (n + 1)).toNat

end

end A204543.P9782763570474355748

namespace A204543

/-- `A284883(n+5)+A210023(A000566(n+1))` -/
def P9782763570474355748.Spec : Prop :=
  ∀ n, P9782763570474355748.a n = A204543 (n + 1)

end A204543

/-!
# A204544: Fractional part of (3/2)^n without the decimal point.

The programs for A204544, the canonical program `A204544.P4329731522923238201` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204544 has offset 0).

The definition of A204544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204544.P4329731522923238201

`5^n*A002380(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204544

/-- `5^n*A002380(n)` -/
def P4329731522923238201.Spec : Prop :=
  ∀ n, P4329731522923238201.a n = A204544 n

theorem P4329731522923238201.correct : P4329731522923238201.Spec := by
  intro n
  simp only [A204544]

end A204544

/-! ## A204544.P18309111531862224944

`A002380(n)*A056451(2*n)`
-/

namespace A204544.P18309111531862224944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A056451 (2 * n)

end

end A204544.P18309111531862224944

namespace A204544

/-- `A002380(n)*A056451(2*n)` -/
def P18309111531862224944.Spec : Prop :=
  ∀ n, P18309111531862224944.a n = A204544 n

end A204544

/-! ## A204544.P16515455154698375414

`and(3^n, Δ[A000295(n)])*A000351(n)`
-/

namespace A204544.P16515455154698375414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (f1 (n + 1) - f1 n) * A000351 n

end

end A204544.P16515455154698375414

namespace A204544

/-- `and(3^n, Δ[A000295(n)])*A000351(n)` -/
def P16515455154698375414.Spec : Prop :=
  ∀ n, P16515455154698375414.a n = A204544 n

end A204544

/-! ## A204544.P1596945783311464334

`and(A052944(n)-n, 3^n)*A000351(n)`
-/

namespace A204544.P1596945783311464334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052944 n - (n : ℤ)) (3 ^ n : ℤ) * A000351 n

end

end A204544.P1596945783311464334

namespace A204544

/-- `and(A052944(n)-n, 3^n)*A000351(n)` -/
def P1596945783311464334.Spec : Prop :=
  ∀ n, P1596945783311464334.a n = A204544 n

end A204544

/-! ## A204544.P8436988774390845927

`A056577(n)%A000079(n)*A000351(n)`
-/

namespace A204544.P8436988774390845927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056577 n) (A000079 n) * A000351 n

end

end A204544.P8436988774390845927

namespace A204544

/-- `A056577(n)%A000079(n)*A000351(n)` -/
def P8436988774390845927.Spec : Prop :=
  ∀ n, P8436988774390845927.a n = A204544 n

end A204544

/-! ## A204544.P10991479167799934516

`and(A000225(n), A001047(n))*A000351(n)`
-/

namespace A204544.P10991479167799934516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A001047 n) * A000351 n

end

end A204544.P10991479167799934516

namespace A204544

/-- `and(A000225(n), A001047(n))*A000351(n)` -/
def P10991479167799934516.Spec : Prop :=
  ∀ n, P10991479167799934516.a n = A204544 n

end A204544

/-! ## A204544.P12398716952248788982

`and(A000225(n), A007689(n))*A000351(n)`
-/

namespace A204544.P12398716952248788982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A007689 n) * A000351 n

end

end A204544.P12398716952248788982

namespace A204544

/-- `and(A000225(n), A007689(n))*A000351(n)` -/
def P12398716952248788982.Spec : Prop :=
  ∀ n, P12398716952248788982.a n = A204544 n

end A204544

/-! ## A204544.P5497598507180620987

`and(A000225(n), A056577(n))*A000351(n)`
-/

namespace A204544.P5497598507180620987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056577 n) * A000351 n

end

end A204544.P5497598507180620987

namespace A204544

/-- `and(A000225(n), A056577(n))*A000351(n)` -/
def P5497598507180620987.Spec : Prop :=
  ∀ n, P5497598507180620987.a n = A204544 n

end A204544

/-! ## A204544.P7461584951954061763

`and(A000225(n), A087451(n))*A000351(n)`
-/

namespace A204544.P7461584951954061763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A087451 n) * A000351 n

end

end A204544.P7461584951954061763

namespace A204544

/-- `and(A000225(n), A087451(n))*A000351(n)` -/
def P7461584951954061763.Spec : Prop :=
  ∀ n, P7461584951954061763.a n = A204544 n

end A204544

/-! ## A204544.P5774656459009320771

`and(A056577(n), A168616(n))*A000351(n)`
-/

namespace A204544.P5774656459009320771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 n) (A168616 n) * A000351 n

end

end A204544.P5774656459009320771

namespace A204544

/-- `and(A056577(n), A168616(n))*A000351(n)` -/
def P5774656459009320771.Spec : Prop :=
  ∀ n, P5774656459009320771.a n = A204544 n

end A204544

/-!
# A204545: Symmetric matrix: f(i,j)=floor[(i+j+3)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

The programs for A204545, the canonical program `A204545.P11394262719737038937` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204545 has offset 1).

The definition of A204545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204545.P6177566510199364781

`col(and(2, ∑[abs(T(n-1,k))]))` with `a(0)=-1`
-/

namespace A204545.P6177566510199364781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  |SequenceMachineLib.triUp f1 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204545.P6177566510199364781

namespace A204545

/-- `col(and(2, ∑[abs(T(n-1,k))]))` -/
def P6177566510199364781.Spec : Prop :=
  ∀ n, (P6177566510199364781.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P3429767157867177045

`row(and(2, ∑[abs(T(n-1,k))]))` with `a(0)=-1`
-/

namespace A204545.P3429767157867177045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  |SequenceMachineLib.triUp f1 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204545.P3429767157867177045

namespace A204545

/-- `row(and(2, ∑[abs(T(n-1,k))]))` -/
def P3429767157867177045.Spec : Prop :=
  ∀ n, (P3429767157867177045.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P12993017886587080151

`and(2, row(n)-1)/2`
-/

namespace A204545.P12993017886587080151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 ((SequenceMachineLib.triRow n : ℤ) - 1) : ℚ) / 2

end

end A204545.P12993017886587080151

namespace A204545

/-- `and(2, row(n)-1)/2` -/
def P12993017886587080151.Spec : Prop :=
  ∀ n, P12993017886587080151.a n = (A204545 (n + 1) : ℚ)

end A204545

/-! ## A204545.P2899892551496025386

`C(row(n)+3, 2)%2`
-/

namespace A204545.P2899892551496025386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 3) 2 % 2

end

end A204545.P2899892551496025386

namespace A204545

/-- `C(row(n)+3, 2)%2` -/
def P2899892551496025386.Spec : Prop :=
  ∀ n, (P2899892551496025386.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P6856930060087744722

`and(1, C(row(n)+3, 2))`
-/

namespace A204545.P6856930060087744722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (SequenceMachineLib.triRow n + 3) 2)

end

end A204545.P6856930060087744722

namespace A204545

/-- `and(1, C(row(n)+3, 2))` -/
def P6856930060087744722.Spec : Prop :=
  ∀ n, (P6856930060087744722.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P6535350271864020901

`(1+col(n)+n)%2`
-/

namespace A204545.P6535350271864020901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + (SequenceMachineLib.triCol n + n)) % 2

end

end A204545.P6535350271864020901

namespace A204545

/-- `(1+col(n)+n)%2` -/
def P6535350271864020901.Spec : Prop :=
  ∀ n, (P6535350271864020901.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P4670826519744777905

`and(1, col(n)+n+1)`
-/

namespace A204545.P4670826519744777905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.triCol n + (n + 1))

end

end A204545.P4670826519744777905

namespace A204545

/-- `and(1, col(n)+n+1)` -/
def P4670826519744777905.Spec : Prop :=
  ∀ n, (P4670826519744777905.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P15606750490443927494

`∑[char[C(2*n, 2)]]%2`
-/

namespace A204545.P15606750490443927494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A204545.P15606750490443927494

namespace A204545

/-- `∑[char[C(2*n, 2)]]%2` -/
def P15606750490443927494.Spec : Prop :=
  ∀ n, (P15606750490443927494.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P10505645269211936824

`and(1, ∑[char[C(2*n, 2)]])`
-/

namespace A204545.P10505645269211936824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204545.P10505645269211936824

namespace A204545

/-- `and(1, ∑[char[C(2*n, 2)]])` -/
def P10505645269211936824.Spec : Prop :=
  ∀ n, (P10505645269211936824.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P10704051405856060029

`(comp[2*n²]-n)%2`
-/

namespace A204545.P10704051405856060029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 2

end

end A204545.P10704051405856060029

namespace A204545

/-- `(comp[2*n²]-n)%2` -/
def P10704051405856060029.Spec : Prop :=
  ∀ n, P10704051405856060029.a n = A204545 (n + 1)

end A204545

/-! ## A204545.P9847095929152489025

`and(1, comp[2*n²]-n)`
-/

namespace A204545.P9847095929152489025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A204545.P9847095929152489025

namespace A204545

/-- `and(1, comp[2*n²]-n)` -/
def P9847095929152489025.Spec : Prop :=
  ∀ n, P9847095929152489025.a n = A204545 (n + 1)

end A204545

/-! ## A204545.P16732773179329601854

`1-and(2, ∑[char[∑[n]]])/2`
-/

namespace A204545.P16732773179329601854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A204545.P16732773179329601854

namespace A204545

/-- `1-and(2, ∑[char[∑[n]]])/2` -/
def P16732773179329601854.Spec : Prop :=
  ∀ n, P16732773179329601854.a n = (A204545 (n + 1) : ℚ)

end A204545

/-! ## A204545.P8258339508103834134

`1-C(∑[char[∑[n]]], 2)%2`
-/

namespace A204545.P8258339508103834134
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 2 : ℕ) : ℤ)

end

end A204545.P8258339508103834134

namespace A204545

/-- `1-C(∑[char[∑[n]]], 2)%2` -/
def P8258339508103834134.Spec : Prop :=
  ∀ n, P8258339508103834134.a n = A204545 (n + 1)

end A204545

/-! ## A204545.P9827920198920871065

`xor(1, and(2, ∑[char[∑[n]]])/2)`
-/

namespace A204545.P9827920198920871065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2))

end

end A204545.P9827920198920871065

namespace A204545

/-- `xor(1, and(2, ∑[char[∑[n]]])/2)` -/
def P9827920198920871065.Spec : Prop :=
  ∀ n, P9827920198920871065.a n = A204545 (n + 1)

end A204545

/-! ## A204545.P3183123912060963381

`T(T(row(n)-2, T(n-1,k+1)), T(1-row(n), T(n-1,k+1)))` with `a(0)=1`
-/

namespace A204545.P3183123912060963381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triAt a (1 - (SequenceMachineLib.triRow n : ℤ)) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) : ℕ) : ℤ)

end

end A204545.P3183123912060963381

namespace A204545

/-- `T(T(row(n)-2, T(n-1,k+1)), T(1-row(n), T(n-1,k+1)))` -/
def P3183123912060963381.Spec : Prop :=
  ∀ n, (P3183123912060963381.a n : ℤ) = A204545 (n + 1)

end A204545

/-! ## A204545.P4435823792484269321

`1-A204549(n+1)`
-/

namespace A204545.P4435823792484269321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204549 (n + 1)

end

end A204545.P4435823792484269321

namespace A204545

/-- `1-A204549(n+1)` -/
def P4435823792484269321.Spec : Prop :=
  ∀ n, P4435823792484269321.a n = A204545 (n + 1)

end A204545

/-! ## A204545.P11394262719737038937

`gcd(2, A057944(n))-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204545

/-- `gcd(2, A057944(n))-1` -/
def P11394262719737038937.Spec : Prop :=
  ∀ n, P11394262719737038937.a n = A204545 (n + 1)

theorem P11394262719737038937.correct : P11394262719737038937.Spec := by
  intro n
  simp only [A204545, Nat.add_sub_cancel]

end A204545

/-! ## A204545.P16717703321821266600

`and(2, A133196(n+1))/2`
-/

namespace A204545.P16717703321821266600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A133196 (n + 1)) : ℚ) / 2

end

end A204545.P16717703321821266600

namespace A204545

/-- `and(2, A133196(n+1))/2` -/
def P16717703321821266600.Spec : Prop :=
  ∀ n, P16717703321821266600.a n = (A204545 (n + 1) : ℚ)

end A204545

/-! ## A204545.P14772068841507087783

`and(2, A204255(n+1))/2`
-/

namespace A204545.P14772068841507087783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A204255 (n + 1)) : ℚ) / 2

end

end A204545.P14772068841507087783

namespace A204545

/-- `and(2, A204255(n+1))/2` -/
def P14772068841507087783.Spec : Prop :=
  ∀ n, P14772068841507087783.a n = (A204545 (n + 1) : ℚ)

end A204545

/-! ## A204545.P14231614065801851736

`A133872(round(sqrt(2*n+1)))`
-/

namespace A204545.P14231614065801851736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A204545.P14231614065801851736

namespace A204545

/-- `A133872(round(sqrt(2*n+1)))` -/
def P14231614065801851736.Spec : Prop :=
  ∀ n, P14231614065801851736.a n = A204545 (n + 1)

end A204545

/-!
# A204547: Symmetric matrix: f(i,j)=floor[(i+j+4)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

The programs for A204547, the canonical program `A204547.P3252054047008293211` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204547 has offset 1).

The definition of A204547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204547.P8990479952782162136

`col(and(2, row(n)))`
-/

namespace A204547.P8990479952782162136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.land 2 (SequenceMachineLib.triRow n))

end

end A204547.P8990479952782162136

namespace A204547

/-- `col(and(2, row(n)))` -/
def P8990479952782162136.Spec : Prop :=
  ∀ n, (P8990479952782162136.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P11367039573349699195

`row(and(2, row(n)))`
-/

namespace A204547.P11367039573349699195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.land 2 (SequenceMachineLib.triRow n))

end

end A204547.P11367039573349699195

namespace A204547

/-- `row(and(2, row(n)))` -/
def P11367039573349699195.Spec : Prop :=
  ∀ n, (P11367039573349699195.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P12671007096864225095

`C(row(n), 2)%2`
-/

namespace A204547.P12671007096864225095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) 2 % 2

end

end A204547.P12671007096864225095

namespace A204547

/-- `C(row(n), 2)%2` -/
def P12671007096864225095.Spec : Prop :=
  ∀ n, (P12671007096864225095.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P6374142632759641025

`1-∑[-T(n-2,k)]` with `a(0)=1`
-/

namespace A204547.P6374142632759641025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -SequenceMachineLib.triUp2 f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204547.P6374142632759641025

namespace A204547

/-- `1-∑[-T(n-2,k)]` -/
def P6374142632759641025.Spec : Prop :=
  ∀ n, P6374142632759641025.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P160376636031052868

`C(2, ∑[-T(n-2,k)])` with `a(0)=5`
-/

namespace A204547.P160376636031052868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -SequenceMachineLib.triUp2 f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204547.P160376636031052868

namespace A204547

/-- `C(2, ∑[-T(n-2,k)])` -/
def P160376636031052868.Spec : Prop :=
  ∀ n, (P160376636031052868.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P4188918937078013012

`2-gcd(2, C(row(n), 2))`
-/

namespace A204547.P4188918937078013012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (Nat.choose (SequenceMachineLib.triRow n) 2) : ℤ)

end

end A204547.P4188918937078013012

namespace A204547

/-- `2-gcd(2, C(row(n), 2))` -/
def P4188918937078013012.Spec : Prop :=
  ∀ n, P4188918937078013012.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P3859046342026154336

`floor((row(n)%4+1)/3)`
-/

namespace A204547.P3859046342026154336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.triRow n % 4 + 1 : ℕ) : ℚ) / 3⌋

end

end A204547.P3859046342026154336

namespace A204547

/-- `floor((row(n)%4+1)/3)` -/
def P3859046342026154336.Spec : Prop :=
  ∀ n, P3859046342026154336.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P8391511818562951344

`(row(n)-col(n)+n)%2`
-/

namespace A204547.P8391511818562951344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (n : ℤ)) 2

end

end A204547.P8391511818562951344

namespace A204547

/-- `(row(n)-col(n)+n)%2` -/
def P8391511818562951344.Spec : Prop :=
  ∀ n, P8391511818562951344.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P4791057439702169175

`(row(n)-(col(n)-n))%2`
-/

namespace A204547.P4791057439702169175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triCol n : ℤ) - (n : ℤ))) 2

end

end A204547.P4791057439702169175

namespace A204547

/-- `(row(n)-(col(n)-n))%2` -/
def P4791057439702169175.Spec : Prop :=
  ∀ n, P4791057439702169175.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P9148684367321920965

`and(2, ∑[char[∑[n+1]]])/2`
-/

namespace A204547.P9148684367321920965
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A204547.P9148684367321920965

namespace A204547

/-- `and(2, ∑[char[∑[n+1]]])/2` -/
def P9148684367321920965.Spec : Prop :=
  ∀ n, P9148684367321920965.a n = (A204547 (n + 1) : ℚ)

end A204547

/-! ## A204547.P10622281515532988314

`C(∑[char[∑[n+1]]], 2)%2`
-/

namespace A204547.P10622281515532988314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 2

end

end A204547.P10622281515532988314

namespace A204547

/-- `C(∑[char[∑[n+1]]], 2)%2` -/
def P10622281515532988314.Spec : Prop :=
  ∀ n, (P10622281515532988314.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P4492254345014979979

`((2^∑[char[∑[n]]])%5)%2`
-/

namespace A204547.P4492254345014979979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) % 5 % 2

end

end A204547.P4492254345014979979

namespace A204547

/-- `((2^∑[char[∑[n]]])%5)%2` -/
def P4492254345014979979.Spec : Prop :=
  ∀ n, (P4492254345014979979.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P1398359162141497950

`((row(n)²-row(n))/2)%2`
-/

namespace A204547.P1398359162141497950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((SequenceMachineLib.triRow n ^ 2 : ℤ) - (SequenceMachineLib.triRow n : ℤ) : ℚ) / 2)) 2

end

end A204547.P1398359162141497950

namespace A204547

/-- `((row(n)²-row(n))/2)%2` -/
def P1398359162141497950.Spec : Prop :=
  ∀ n, P1398359162141497950.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P7016907440924230324

`and(1, comp[∑[4*n]]+n+1)`
-/

namespace A204547.P7016907440924230324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A204547.P7016907440924230324

namespace A204547

/-- `and(1, comp[∑[4*n]]+n+1)` -/
def P7016907440924230324.Spec : Prop :=
  ∀ n, (P7016907440924230324.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P11444186227583587477

`1-and(2, comp[∑[n]]-n)/2`
-/

namespace A204547.P11444186227583587477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Int.land 2 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) : ℚ) / 2

end

end A204547.P11444186227583587477

namespace A204547

/-- `1-and(2, comp[∑[n]]-n)/2` -/
def P11444186227583587477.Spec : Prop :=
  ∀ n, P11444186227583587477.a n = (A204547 (n + 1) : ℚ)

end A204547

/-! ## A204547.P682552818299480696

`(C(comp[∑[n]]-n, 2)+1)%2`
-/

namespace A204547.P682552818299480696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1) % 2

end

end A204547.P682552818299480696

namespace A204547

/-- `(C(comp[∑[n]]-n, 2)+1)%2` -/
def P682552818299480696.Spec : Prop :=
  ∀ n, (P682552818299480696.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P4530949668829970645

`xor(comp[∑[4*n]]%2, char[2*n])`
-/

namespace A204547.P4530949668829970645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) (if ∃ j, f3 j = n then 1 else 0)

end

end A204547.P4530949668829970645

namespace A204547

/-- `xor(comp[∑[4*n]]%2, char[2*n])` -/
def P4530949668829970645.Spec : Prop :=
  ∀ n, (P4530949668829970645.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P16964441312513073333

`xor(a(n-1), char[C(2*n+1, 2)])` with `a(0)=0`
-/

namespace A204547.P16964441312513073333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A204547.P16964441312513073333

namespace A204547

/-- `xor(a(n-1), char[C(2*n+1, 2)])` -/
def P16964441312513073333.Spec : Prop :=
  ∀ n, (P16964441312513073333.a n : ℤ) = A204547 (n + 1)

end A204547

/-! ## A204547.P4922965781917847904

`A286109(n)%2`
-/

namespace A204547.P4922965781917847904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286109 n) 2

end

end A204547.P4922965781917847904

namespace A204547

/-- `A286109(n)%2` -/
def P4922965781917847904.Spec : Prop :=
  ∀ n, P4922965781917847904.a n = A204547 (n + 1)

end A204547

/-! ## A204547.P3252054047008293211

`1-A204269(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204547

/-- `1-A204269(n+1)` -/
def P3252054047008293211.Spec : Prop :=
  ∀ n, P3252054047008293211.a n = A204547 (n + 1)

theorem P3252054047008293211.correct : P3252054047008293211.Spec := by
  intro n
  simp only [A204547, Nat.add_sub_cancel]

end A204547

/-!
# A204548: Permanent of the n-th principal submatrix of A204547.

The programs for A204548, there is no canonical definition to state claims against.
-/

/-! ## A204548.P9535460879063373857

`A204546(n+1)+A204550(n+1)-A204422(n+1)`
-/

namespace A204548.P9535460879063373857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204546 (n + 1) + (A204550 (n + 1) - A204422 (n + 1))

end

end A204548.P9535460879063373857

/-! ## A204548.P14922415761474163919

`A375204(A041457(n))`
-/

namespace A204548.P14922415761474163919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375204 (A041457 n).toNat

end

end A204548.P14922415761474163919

/-! ## A204548.P9297016429976952556

`A070678(∏[dr(A178089(n))])`
-/

namespace A204548.P9297016429976952556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A178089 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A204548.P9297016429976952556

/-! ## A204548.P9391762213083597580

`A260644(A060550(∑[n+1]))`
-/

namespace A204548.P9391762213083597580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A060550 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204548.P9391762213083597580

/-!
# A204549: Symmetric matrix: f(i,j)=floor[(i+j+5)/4]-floor[(i+j+3)/4], by (constant) antidiagonals.

The programs for A204549, the canonical program `A204549.P1941969792183270277` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204549 has offset 1).

The definition of A204549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204549.P14472622948968830746

`∑[-T(n-2,k)]` with `a(0)=0, a(1)=1`
-/

namespace A204549.P14472622948968830746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -SequenceMachineLib.triUp2 f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204549.P14472622948968830746

namespace A204549

/-- `∑[-T(n-2,k)]` -/
def P14472622948968830746.Spec : Prop :=
  ∀ n, P14472622948968830746.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P4490406205777519000

`(n+col(n))%2`
-/

namespace A204549.P4490406205777519000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + SequenceMachineLib.triCol n) % 2

end

end A204549.P4490406205777519000

namespace A204549

/-- `(n+col(n))%2` -/
def P4490406205777519000.Spec : Prop :=
  ∀ n, (P4490406205777519000.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P11642557673622631134

`and(1, n+col(n))`
-/

namespace A204549.P11642557673622631134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + SequenceMachineLib.triCol n)

end

end A204549.P11642557673622631134

namespace A204549

/-- `and(1, n+col(n))` -/
def P11642557673622631134.Spec : Prop :=
  ∀ n, (P11642557673622631134.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P17505966075067523669

`and(1, col(n)-n)`
-/

namespace A204549.P17505966075067523669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.triCol n : ℤ) - (n : ℤ))

end

end A204549.P17505966075067523669

namespace A204549

/-- `and(1, col(n)-n)` -/
def P17505966075067523669.Spec : Prop :=
  ∀ n, P17505966075067523669.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P3665653006054290407

`ceil(row(n)/2)%2`
-/

namespace A204549.P3665653006054290407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(SequenceMachineLib.triRow n : ℚ) / 2⌉ 2

end

end A204549.P3665653006054290407

namespace A204549

/-- `ceil(row(n)/2)%2` -/
def P3665653006054290407.Spec : Prop :=
  ∀ n, P3665653006054290407.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P2777647530416548299

`round(row(n)/2)%2`
-/

namespace A204549.P2777647530416548299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n : ℚ) / 2)) 2

end

end A204549.P2777647530416548299

namespace A204549

/-- `round(row(n)/2)%2` -/
def P2777647530416548299.Spec : Prop :=
  ∀ n, P2777647530416548299.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P10693466305808923962

`abs(col(n)-n)%2`
-/

namespace A204549.P10693466305808923962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |(SequenceMachineLib.triCol n : ℤ) - (n : ℤ)| 2

end

end A204549.P10693466305808923962

namespace A204549

/-- `abs(col(n)-n)%2` -/
def P10693466305808923962.Spec : Prop :=
  ∀ n, P10693466305808923962.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P14115258755509392050

`((n-col(n))%2)²`
-/

namespace A204549.P14115258755509392050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) 2 ^ 2

end

end A204549.P14115258755509392050

namespace A204549

/-- `((n-col(n))%2)²` -/
def P14115258755509392050.Spec : Prop :=
  ∀ n, P14115258755509392050.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P13878919540420626292

`col(and(2, ∑[abs(T(n-1,k))]))` with `a(0)=5`
-/

namespace A204549.P13878919540420626292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204549.P13878919540420626292

namespace A204549

/-- `col(and(2, ∑[abs(T(n-1,k))]))` -/
def P13878919540420626292.Spec : Prop :=
  ∀ n, (P13878919540420626292.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P990742421363949819

`and(2, ∑[char[∑[n]]])/2`
-/

namespace A204549.P990742421363949819
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A204549.P990742421363949819

namespace A204549

/-- `and(2, ∑[char[∑[n]]])/2` -/
def P990742421363949819.Spec : Prop :=
  ∀ n, P990742421363949819.a n = (A204549 (n + 1) : ℚ)

end A204549

/-! ## A204549.P13823536196153136523

`C(∑[char[∑[n]]], 2)%2`
-/

namespace A204549.P13823536196153136523
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 2

end

end A204549.P13823536196153136523

namespace A204549

/-- `C(∑[char[∑[n]]], 2)%2` -/
def P13823536196153136523.Spec : Prop :=
  ∀ n, (P13823536196153136523.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P14118445051824385328

`and(1, C(∑[char[∑[n]]], 2))`
-/

namespace A204549.P14118445051824385328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A204549.P14118445051824385328

namespace A204549

/-- `and(1, C(∑[char[∑[n]]], 2))` -/
def P14118445051824385328.Spec : Prop :=
  ∀ n, (P14118445051824385328.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P16168203267534942304

`∑[∪[2*n, n²]]%2`
-/

namespace A204549.P16168203267534942304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A204549.P16168203267534942304

namespace A204549

/-- `∑[∪[2*n, n²]]%2` -/
def P16168203267534942304.Spec : Prop :=
  ∀ n, (P16168203267534942304.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P3987876754293681422

`and(2, ∑[char[∑[n]]])!-1`
-/

namespace A204549.P3987876754293681422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A204549.P3987876754293681422

namespace A204549

/-- `and(2, ∑[char[∑[n]]])!-1` -/
def P3987876754293681422.Spec : Prop :=
  ∀ n, P3987876754293681422.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P16748062669570551720

`and(2, ∑[char[∑[n]]])²%3`
-/

namespace A204549.P16748062669570551720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 3

end

end A204549.P16748062669570551720

namespace A204549

/-- `and(2, ∑[char[∑[n]]])²%3` -/
def P16748062669570551720.Spec : Prop :=
  ∀ n, (P16748062669570551720.a n : ℤ) = A204549 (n + 1)

end A204549

/-! ## A204549.P17256590244194949432

`((row(n)+row(n)²)/2)%2`
-/

namespace A204549.P17256590244194949432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n + SequenceMachineLib.triRow n ^ 2 : ℚ) / 2)) 2

end

end A204549.P17256590244194949432

namespace A204549

/-- `((row(n)+row(n)²)/2)%2` -/
def P17256590244194949432.Spec : Prop :=
  ∀ n, P17256590244194949432.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P14064940117736086846

`((C(row(n), 2)-row(n))%2)²`
-/

namespace A204549.P14064940117736086846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (SequenceMachineLib.triRow n) 2 : ℤ) - (SequenceMachineLib.triRow n : ℤ)) 2 ^ 2

end

end A204549.P14064940117736086846

namespace A204549

/-- `((C(row(n), 2)-row(n))%2)²` -/
def P14064940117736086846.Spec : Prop :=
  ∀ n, P14064940117736086846.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P1941969792183270277

`A057944(n)%2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204549

/-- `A057944(n)%2` -/
def P1941969792183270277.Spec : Prop :=
  ∀ n, P1941969792183270277.a n = A204549 (n + 1)

theorem P1941969792183270277.correct : P1941969792183270277.Spec := by
  intro n
  simp only [A204549, Nat.add_sub_cancel]

end A204549

/-! ## A204549.P9550507436919570494

`A286108(n)%2`
-/

namespace A204549.P9550507436919570494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286108 n) 2

end

end A204549.P9550507436919570494

namespace A204549

/-- `A286108(n)%2` -/
def P9550507436919570494.Spec : Prop :=
  ∀ n, P9550507436919570494.a n = A204549 (n + 1)

end A204549

/-! ## A204549.P15533542356111068404

`A351846(n)%2`
-/

namespace A204549.P15533542356111068404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351846 n) 2

end

end A204549.P15533542356111068404

namespace A204549

/-- `A351846(n)%2` -/
def P15533542356111068404.Spec : Prop :=
  ∀ n, P15533542356111068404.a n = A204549 (n + 1)

end A204549

/-!
# A204550: Permanent of the n-th principal submatrix of A204549.

The programs for A204550, there is no canonical definition to state claims against.
-/

/-! ## A204550.P6568084060146288400

`A204422(n+1)+A204548(n+1)-A204546(n+1)`
-/

namespace A204550.P6568084060146288400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204422 (n + 1) + (A204548 (n + 1) - A204546 (n + 1))

end

end A204550.P6568084060146288400

/-! ## A204550.P4641699465392199380

`Δ[A180783(∏[A005041(n)])]`
-/

namespace A204550.P4641699465392199380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204550.P4641699465392199380

/-! ## A204550.P3711823073885421855

`Δ[A180783(∏[A326492(n)])]`
-/

namespace A204550.P3711823073885421855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204550.P3711823073885421855

/-! ## A204550.P2394504344667432608

`Δ[A180783(∏[A000006(n+1)])]`
-/

namespace A204550.P2394504344667432608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204550.P2394504344667432608

/-!
# A204551: Symmetric matrix: f(i,j)=floor[(2i+2j+1)/4]-floor[(i+j)/4], by (constant) antidiagonals.

The programs for A204551, the canonical program `A204551.P10284403586376407793` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204551 has offset 1).

The definition of A204551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204551.P9545343818229850962

`ceil(∑[char[∑[n]]]/4)`
-/

namespace A204551.P9545343818229850962
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌉

end

end A204551.P9545343818229850962

namespace A204551

/-- `ceil(∑[char[∑[n]]]/4)` -/
def P9545343818229850962.Spec : Prop :=
  ∀ n, P9545343818229850962.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P3238248262023020030

`floor(row(n)/4)+1`
-/

namespace A204551.P3238248262023020030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n : ℚ) / 4⌋ + 1

end

end A204551.P3238248262023020030

namespace A204551

/-- `floor(row(n)/4)+1` -/
def P3238248262023020030.Spec : Prop :=
  ∀ n, P3238248262023020030.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P12568534601209374407

`round((row(n)+2)/4)`
-/

namespace A204551.P12568534601209374407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n + 2 : ℚ) / 4)

end

end A204551.P12568534601209374407

namespace A204551

/-- `round((row(n)+2)/4)` -/
def P12568534601209374407.Spec : Prop :=
  ∀ n, P12568534601209374407.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P9336656110449866960

`∑[char[C(4*n+1, 2)]]`
-/

namespace A204551.P9336656110449866960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 1) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P9336656110449866960

namespace A204551

/-- `∑[char[C(4*n+1, 2)]]` -/
def P9336656110449866960.Spec : Prop :=
  ∀ n, (P9336656110449866960.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P13687143586697188403

`floor((2+∑[floor(T(n-2,k))])/4)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A204551.P13687143586697188403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.triUp2 f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 + ∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A204551.P13687143586697188403

namespace A204551

/-- `floor((2+∑[floor(T(n-2,k))])/4)` -/
def P13687143586697188403.Spec : Prop :=
  ∀ n, P13687143586697188403.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P2359031097163025019

`∑[char[16*n+a(n-1)-6]]` with `a(0)=0`
-/

namespace A204551.P2359031097163025019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (16 * n : ℤ) + (f2 (n - 1) - 6)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P2359031097163025019

namespace A204551

/-- `∑[char[16*n+a(n-1)-6]]` -/
def P2359031097163025019.Spec : Prop :=
  ∀ n, (P2359031097163025019.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P2079881020181462079

`round((∑[char[∑[n]]]+1)%(n+5)/4)`
-/

namespace A204551.P2079881020181462079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j + 1) % (n + 5) : ℕ) : ℚ) / 4)

end

end A204551.P2079881020181462079

namespace A204551

/-- `round((∑[char[∑[n]]]+1)%(n+5)/4)` -/
def P2079881020181462079.Spec : Prop :=
  ∀ n, P2079881020181462079.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P9177816445285995628

`∑[char[A033585(n)]]`
-/

namespace A204551.P9177816445285995628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P9177816445285995628

namespace A204551

/-- `∑[char[A033585(n)]]` -/
def P9177816445285995628.Spec : Prop :=
  ∀ n, (P9177816445285995628.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P17584893787484230045

`comp[A139276(n)]-n`
-/

namespace A204551.P17584893787484230045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A204551.P17584893787484230045

namespace A204551

/-- `comp[A139276(n)]-n` -/
def P17584893787484230045.Spec : Prop :=
  ∀ n, P17584893787484230045.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P1699602802859230577

`∑[char[2*A007742(n)]]`
-/

namespace A204551.P1699602802859230577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007742 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P1699602802859230577

namespace A204551

/-- `∑[char[2*A007742(n)]]` -/
def P1699602802859230577.Spec : Prop :=
  ∀ n, (P1699602802859230577.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P8376916784647053712

`∑[char[A014105(2*n)]]`
-/

namespace A204551.P8376916784647053712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P8376916784647053712

namespace A204551

/-- `∑[char[A014105(2*n)]]` -/
def P8376916784647053712.Spec : Prop :=
  ∀ n, (P8376916784647053712.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P8787555150221562707

`∑[char[A014494(2*n)]]`
-/

namespace A204551.P8787555150221562707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P8787555150221562707

namespace A204551

/-- `∑[char[A014494(2*n)]]` -/
def P8787555150221562707.Spec : Prop :=
  ∀ n, (P8787555150221562707.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P4002608801396584305

`∑[char[A139592(2*n)]]`
-/

namespace A204551.P4002608801396584305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P4002608801396584305

namespace A204551

/-- `∑[char[A139592(2*n)]]` -/
def P4002608801396584305.Spec : Prop :=
  ∀ n, (P4002608801396584305.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P4441071964950686595

`∑[char[A000217(4*n)]]`
-/

namespace A204551.P4441071964950686595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P4441071964950686595

namespace A204551

/-- `∑[char[A000217(4*n)]]` -/
def P4441071964950686595.Spec : Prop :=
  ∀ n, (P4441071964950686595.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P15414330791575865911

`∑[char[abs(2*n-A046092(2*n))]]`
-/

namespace A204551.P15414330791575865911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A046092 (2 * n)|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204551.P15414330791575865911

namespace A204551

/-- `∑[char[abs(2*n-A046092(2*n))]]` -/
def P15414330791575865911.Spec : Prop :=
  ∀ n, (P15414330791575865911.a n : ℤ) = A204551 (n + 1)

end A204551

/-! ## A204551.P10284403586376407793

`A008621(A003056(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204551

/-- `A008621(A003056(n))` -/
def P10284403586376407793.Spec : Prop :=
  ∀ n, P10284403586376407793.a n = A204551 (n + 1)

theorem P10284403586376407793.correct : P10284403586376407793.Spec := by
  intro n
  simp only [A204551, Nat.add_sub_cancel]

end A204551

/-! ## A204551.P2585308372648822430

`A115268(A057944(n))`
-/

namespace A204551.P2585308372648822430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115268 (A057944 n).toNat

end

end A204551.P2585308372648822430

namespace A204551

/-- `A115268(A057944(n))` -/
def P2585308372648822430.Spec : Prop :=
  ∀ n, P2585308372648822430.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P5894325372595305697

`A110656(A131507(n))`
-/

namespace A204551.P5894325372595305697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A131507 n).toNat

end

end A204551.P5894325372595305697

namespace A204551

/-- `A110656(A131507(n))` -/
def P5894325372595305697.Spec : Prop :=
  ∀ n, P5894325372595305697.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P3410295420035302921

`A110655(∑[A010054(n)])`
-/

namespace A204551.P3410295420035302921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204551.P3410295420035302921

namespace A204551

/-- `A110655(∑[A010054(n)])` -/
def P3410295420035302921.Spec : Prop :=
  ∀ n, P3410295420035302921.a n = A204551 (n + 1)

end A204551

/-! ## A204551.P13176813821838754028

`A110655(A002024(n+1))`
-/

namespace A204551.P13176813821838754028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A002024 (n + 1)).toNat

end

end A204551.P13176813821838754028

namespace A204551

/-- `A110655(A002024(n+1))` -/
def P13176813821838754028.Spec : Prop :=
  ∀ n, P13176813821838754028.a n = A204551 (n + 1)

end A204551

/-!
# A204552: Permanent of the n-th principal submatrix of A204551.

The programs for A204552, there is no canonical definition to state claims against.
-/

/-! ## A204552.P15096888686133261416

`A305983((2*n)^n)`
-/

namespace A204552.P15096888686133261416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305983 ((2 * n) ^ n)

end

end A204552.P15096888686133261416

/-!
# A204553: Symmetric matrix: f(i,j)=floor[(2i+2j+2)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

The programs for A204553, the canonical program `A204553.P16200001914618220885` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204553 has offset 1).

The definition of A204553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204553.P13226181984398991454

`∑[char[C(4*n, 2)]]`
-/

namespace A204553.P13226181984398991454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204553.P13226181984398991454

namespace A204553

/-- `∑[char[C(4*n, 2)]]` -/
def P13226181984398991454.Spec : Prop :=
  ∀ n, (P13226181984398991454.a n : ℤ) = A204553 (n + 1)

end A204553

/-! ## A204553.P4031327078134253617

`floor((row(n)+5)/4)`
-/

namespace A204553.P4031327078134253617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 5 : ℚ) / 4⌋

end

end A204553.P4031327078134253617

namespace A204553

/-- `floor((row(n)+5)/4)` -/
def P4031327078134253617.Spec : Prop :=
  ∀ n, P4031327078134253617.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P6093738179932603421

`ceil((comp[∑[n]]-n)/4)`
-/

namespace A204553.P6093738179932603421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) / 4⌉

end

end A204553.P6093738179932603421

namespace A204553

/-- `ceil((comp[∑[n]]-n)/4)` -/
def P6093738179932603421.Spec : Prop :=
  ∀ n, P6093738179932603421.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P5978924788965616976

`round((row(n)-1)/4)+1`
-/

namespace A204553.P5978924788965616976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.triRow n : ℤ) - 1 : ℚ) / 4) + 1

end

end A204553.P5978924788965616976

namespace A204553

/-- `round((row(n)-1)/4)+1` -/
def P5978924788965616976.Spec : Prop :=
  ∀ n, P5978924788965616976.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P5923394501925863172

`∑[runs[T(n-1,k-1)-T(n-1,k)]]-n` with `a(0)=1, a(1)=-1, a(2)=-3`
-/

namespace A204553.P5923394501925863172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -3] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n - SequenceMachineLib.triUp f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A204553.P5923394501925863172

namespace A204553

/-- `∑[runs[T(n-1,k-1)-T(n-1,k)]]-n` -/
def P5923394501925863172.Spec : Prop :=
  ∀ n, P5923394501925863172.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P17361941537824997749

`∑[char[A014635(n)]]`
-/

namespace A204553.P17361941537824997749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204553.P17361941537824997749

namespace A204553

/-- `∑[char[A014635(n)]]` -/
def P17361941537824997749.Spec : Prop :=
  ∀ n, (P17361941537824997749.a n : ℤ) = A204553 (n + 1)

end A204553

/-! ## A204553.P281426230992074588

`comp[A139274(n)]-n`
-/

namespace A204553.P281426230992074588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A204553.P281426230992074588

namespace A204553

/-- `comp[A139274(n)]-n` -/
def P281426230992074588.Spec : Prop :=
  ∀ n, P281426230992074588.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P11436654608215489839

`A008621(∑[char[∑[n]]])`
-/

namespace A204553.P11436654608215489839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204553.P11436654608215489839

namespace A204553

/-- `A008621(∑[char[∑[n]]])` -/
def P11436654608215489839.Spec : Prop :=
  ∀ n, P11436654608215489839.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P1701626955771163614

`∑[char[A000384(2*n)]]`
-/

namespace A204553.P1701626955771163614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204553.P1701626955771163614

namespace A204553

/-- `∑[char[A000384(2*n)]]` -/
def P1701626955771163614.Spec : Prop :=
  ∀ n, (P1701626955771163614.a n : ℤ) = A204553 (n + 1)

end A204553

/-! ## A204553.P3207095774597094228

`A002265(∑[char[∑[n]]]+4)`
-/

namespace A204553.P3207095774597094228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204553.P3207095774597094228

namespace A204553

/-- `A002265(∑[char[∑[n]]]+4)` -/
def P3207095774597094228.Spec : Prop :=
  ∀ n, P3207095774597094228.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P15341736386050119363

`comp[n*A133655(n)]-n`
-/

namespace A204553.P15341736386050119363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133655 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A204553.P15341736386050119363

namespace A204553

/-- `comp[n*A133655(n)]-n` -/
def P15341736386050119363.Spec : Prop :=
  ∀ n, P15341736386050119363.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P16200001914618220885

`round((A002024(n+1)+2)/4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204553

/-- `round((A002024(n+1)+2)/4)` -/
def P16200001914618220885.Spec : Prop :=
  ∀ n, P16200001914618220885.a n = A204553 (n + 1)

theorem P16200001914618220885.correct : P16200001914618220885.Spec := by
  intro n
  simp only [A204553, Nat.add_sub_cancel]

end A204553

/-! ## A204553.P10404771003928890210

`round(abs(n-1-comp[A000217(n)])/4)`
-/

namespace A204553.P10404771003928890210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|(n : ℤ) - 1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)| : ℚ) / 4)

end

end A204553.P10404771003928890210

namespace A204553

/-- `round(abs(n-1-comp[A000217(n)])/4)` -/
def P10404771003928890210.Spec : Prop :=
  ∀ n, P10404771003928890210.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P11128008702094991432

`A000027(∑[char[(7*n+6+n)*(n+1)]]+1)`
-/

namespace A204553.P11128008702094991432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 + n) * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204553.P11128008702094991432

namespace A204553

/-- `A000027(∑[char[(7*n+6+n)*(n+1)]]+1)` -/
def P11128008702094991432.Spec : Prop :=
  ∀ n, P11128008702094991432.a n = A204553 (n + 1)

end A204553

/-! ## A204553.P5053596501532012317

`A204562(n+1)-A204549(n+1)`
-/

namespace A204553.P5053596501532012317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (n + 1) - A204549 (n + 1)

end

end A204553.P5053596501532012317

namespace A204553

/-- `A204562(n+1)-A204549(n+1)` -/
def P5053596501532012317.Spec : Prop :=
  ∀ n, P5053596501532012317.a n = A204553 (n + 1)

end A204553

/-!
# A204554: Permanent of the n-th principal submatrix of A204553.

The programs for A204554, there is no canonical definition to state claims against.
-/

/-! ## A204554.P7928157321668936404

`A003961(∑[A235132(n)])-n`
-/

namespace A204554.P7928157321668936404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A204554.P7928157321668936404

/-!
# A204555: The number of subsets of the numbers {1,2,3...,n} consisting of at most 3 elements and at most two of those are even.

The programs for A204555, the canonical program `A204555.P15019088052598676702` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204555 has offset 0).

The definition of A204555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204555.P15019088052598676702

`ogf((1+x-x^2+x^3+4x^4+2x^5-x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204555

/-- `ogf((1+x-x^2+x^3+4x^4+2x^5-x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P15019088052598676702.Spec : Prop :=
  ∀ n, P15019088052598676702.a n = A204555 n

theorem P15019088052598676702.correct : P15019088052598676702.Spec := by
  intro n
  simp only [A204555]

end A204555

/-! ## A204555.P11126028987313475902

`A000125(n)-C(A004526(n), 3)`
-/

namespace A204555.P11126028987313475902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - (Nat.choose (A004526 n).toNat 3 : ℤ)

end

end A204555.P11126028987313475902

namespace A204555

/-- `A000125(n)-C(A004526(n), 3)` -/
def P11126028987313475902.Spec : Prop :=
  ∀ n, P11126028987313475902.a n = A204555 n

end A204555

/-! ## A204555.P15295913206819066411

`A000124(n)+Δ[A111385(n)]`
-/

namespace A204555.P15295913206819066411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (f1 (n + 1) - f1 n)

end

end A204555.P15295913206819066411

namespace A204555

/-- `A000124(n)+Δ[A111385(n)]` -/
def P15295913206819066411.Spec : Prop :=
  ∀ n, P15295913206819066411.a n = A204555 n

end A204555

/-! ## A204555.P10480565221248437003

`Δ[A111385(n)+A000125(n)]`
-/

namespace A204555.P10480565221248437003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 n + A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204555.P10480565221248437003

namespace A204555

/-- `Δ[A111385(n)+A000125(n)]` -/
def P10480565221248437003.Spec : Prop :=
  ∀ n, P10480565221248437003.a n = A204555 n

end A204555

/-! ## A204555.P12335928125661469817

`Δ[A111385(n)+A004006(n)]`
-/

namespace A204555.P12335928125661469817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 n + A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204555.P12335928125661469817

namespace A204555

/-- `Δ[A111385(n)+A004006(n)]` -/
def P12335928125661469817.Spec : Prop :=
  ∀ n, P12335928125661469817.a n = A204555 n

end A204555

/-! ## A204555.P6319546288314439984

`Δ[A111385(n)]+∑[A028310(n)]`
-/

namespace A204555.P6319546288314439984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A204555.P6319546288314439984

namespace A204555

/-- `Δ[A111385(n)]+∑[A028310(n)]` -/
def P6319546288314439984.Spec : Prop :=
  ∀ n, P6319546288314439984.a n = A204555 n

end A204555

/-! ## A204555.P12476494783542483283

`A000217(n)+Δ[A111385(n)]+1`
-/

namespace A204555.P12476494783542483283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (f1 (n + 1) - f1 n + 1)

end

end A204555.P12476494783542483283

namespace A204555

/-- `A000217(n)+Δ[A111385(n)]+1` -/
def P12476494783542483283.Spec : Prop :=
  ∀ n, P12476494783542483283.a n = A204555 n

end A204555

/-!
# A204556: Left edge of the triangle A045975.

The programs for A204556, the canonical program `A204556.P4855747009617410404` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204556 has offset 1).

The definition of A204556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204556.P14188182162953943027

`ogf((1+x+4x^2+12x^3+3x^4+3x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A204556.P14188182162953943027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4, 12, 3, 3] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A204556.P14188182162953943027

namespace A204556

/-- `ogf((1+x+4x^2+12x^3+3x^4+3x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P14188182162953943027.Spec : Prop :=
  ∀ n, P14188182162953943027.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P1199132047006916891

`(n+1)*(2*(n+1)²-3*(n+1)+(-1)^(n+1)*(n-2)+3)/4`
-/

namespace A204556.P1199132047006916891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + (-1) ^ (n + 1) * ((n : ℤ) - 2) + 3) : ℚ) / 4

end

end A204556.P1199132047006916891

namespace A204556

/-- `(n+1)*(2*(n+1)²-3*(n+1)+(-1)^(n+1)*(n-2)+3)/4` -/
def P1199132047006916891.Spec : Prop :=
  ∀ n, P1199132047006916891.a n = (A204556 (n + 1) : ℚ)

end A204556

/-! ## A204556.P4855747009617410404

`A204557(n+1)-A045895(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204556

/-- `A204557(n+1)-A045895(n+1)` -/
def P4855747009617410404.Spec : Prop :=
  ∀ n, P4855747009617410404.a n = A204556 (n + 1)

theorem P4855747009617410404.correct : P4855747009617410404.Spec := by
  intro n
  simp only [A204556, Nat.add_sub_cancel]

end A204556

/-! ## A204556.P11156266528139168108

`A045975(C(n+1, 2)+1)`
-/

namespace A204556.P11156266528139168108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045975 (Nat.choose (n + 1) 2 + 1)

end

end A204556.P11156266528139168108

namespace A204556

/-- `A045975(C(n+1, 2)+1)` -/
def P11156266528139168108.Spec : Prop :=
  ∀ n, P11156266528139168108.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P15348717199681403491

`(ceil(n²/2)+abs(∑[n]%(n+1)-1))*(n+1)`
-/

namespace A204556.P15348717199681403491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n ^ 2 : ℚ) / 2⌉ + |(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1|) * (n + 1 : ℤ)

end

end A204556.P15348717199681403491

namespace A204556

/-- `(ceil(n²/2)+abs(∑[n]%(n+1)-1))*(n+1)` -/
def P15348717199681403491.Spec : Prop :=
  ∀ n, P15348717199681403491.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P8772559769361809246

`or(1, n+1)*A007590(n)+n+1`
-/

namespace A204556.P8772559769361809246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) * A007590 n + (n + 1 : ℤ)

end

end A204556.P8772559769361809246

namespace A204556

/-- `or(1, n+1)*A007590(n)+n+1` -/
def P8772559769361809246.Spec : Prop :=
  ∀ n, P8772559769361809246.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P12137181771637781939

`∑[(2*n-1)^and(1, n)]*A109613(n)`
-/

namespace A204556.P12137181771637781939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A109613 n

end

end A204556.P12137181771637781939

namespace A204556

/-- `∑[(2*n-1)^and(1, n)]*A109613(n)` -/
def P12137181771637781939.Spec : Prop :=
  ∀ n, P12137181771637781939.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P3538809090025414752

`∑[A266072(n)]*A109613(n)`
-/

namespace A204556.P3538809090025414752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A109613 n

end

end A204556.P3538809090025414752

namespace A204556

/-- `∑[A266072(n)]*A109613(n)` -/
def P3538809090025414752.Spec : Prop :=
  ∀ n, P3538809090025414752.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P11865411722176233240

`A059841(n)+n*A053439(n)`
-/

namespace A204556.P11865411722176233240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (n : ℤ) * A053439 n

end

end A204556.P11865411722176233240

namespace A204556

/-- `A059841(n)+n*A053439(n)` -/
def P11865411722176233240.Spec : Prop :=
  ∀ n, P11865411722176233240.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P11626481588319416078

`A093178(n+1)*A247375(n+1)*A093178(n)`
-/

namespace A204556.P11626481588319416078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) * A247375 (n + 1) * A093178 n

end

end A204556.P11626481588319416078

namespace A204556

/-- `A093178(n+1)*A247375(n+1)*A093178(n)` -/
def P11626481588319416078.Spec : Prop :=
  ∀ n, P11626481588319416078.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P18361427637626499795

`(n+1)*(A109094(n+2)-n)`
-/

namespace A204556.P18361427637626499795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A109094 (n + 2) - (n : ℤ))

end

end A204556.P18361427637626499795

namespace A204556

/-- `(n+1)*(A109094(n+2)-n)` -/
def P18361427637626499795.Spec : Prop :=
  ∀ n, P18361427637626499795.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P17058009005480371360

`(n+1)*∑[n-Δ[A057979(n)]]`
-/

namespace A204556.P17058009005480371360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204556.P17058009005480371360

namespace A204556

/-- `(n+1)*∑[n-Δ[A057979(n)]]` -/
def P17058009005480371360.Spec : Prop :=
  ∀ n, P17058009005480371360.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P8000049786780218632

`A000982(n+1)+A007590(n)*A131055(n+1)`
-/

namespace A204556.P8000049786780218632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + A007590 n * A131055 (n + 1)

end

end A204556.P8000049786780218632

namespace A204556

/-- `A000982(n+1)+A007590(n)*A131055(n+1)` -/
def P8000049786780218632.Spec : Prop :=
  ∀ n, P8000049786780218632.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P8014395719986369565

`(A124625(n+1)+A124625(n))*A247375(n+1)`
-/

namespace A204556.P8014395719986369565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124625 (n + 1) + A124625 n) * A247375 (n + 1)

end

end A204556.P8014395719986369565

namespace A204556

/-- `(A124625(n+1)+A124625(n))*A247375(n+1)` -/
def P8014395719986369565.Spec : Prop :=
  ∀ n, P8014395719986369565.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P5229250149579309387

`∑[A109613(A019425(n))]*A109613(n)`
-/

namespace A204556.P5229250149579309387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A019425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A109613 n

end

end A204556.P5229250149579309387

namespace A204556

/-- `∑[A109613(A019425(n))]*A109613(n)` -/
def P5229250149579309387.Spec : Prop :=
  ∀ n, P5229250149579309387.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P13761560359748721497

`(xor(1, n+1)*A002265(2*n)+1)*(n+1)`
-/

namespace A204556.P13761560359748721497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (n + 1) : ℤ) * A002265 (2 * n) + 1) * (n + 1 : ℤ)

end

end A204556.P13761560359748721497

namespace A204556

/-- `(xor(1, n+1)*A002265(2*n)+1)*(n+1)` -/
def P13761560359748721497.Spec : Prop :=
  ∀ n, P13761560359748721497.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P7993012990166758003

`A247375(n+1)*A285869(2*n+1)`
-/

namespace A204556.P7993012990166758003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 (n + 1) * A285869 (2 * n + 1)

end

end A204556.P7993012990166758003

namespace A204556

/-- `A247375(n+1)*A285869(2*n+1)` -/
def P7993012990166758003.Spec : Prop :=
  ∀ n, P7993012990166758003.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P17516220148785510087

`(A031878(n+2)-A029578(n+1))*A285869(2*n+1)`
-/

namespace A204556.P17516220148785510087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031878 (n + 2) - A029578 (n + 1)) * A285869 (2 * n + 1)

end

end A204556.P17516220148785510087

namespace A204556

/-- `(A031878(n+2)-A029578(n+1))*A285869(2*n+1)` -/
def P17516220148785510087.Spec : Prop :=
  ∀ n, P17516220148785510087.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P16775632232320063764

`A045975(∑[n]+1)`
-/

namespace A204556.P16775632232320063764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204556.P16775632232320063764

namespace A204556

/-- `A045975(∑[n]+1)` -/
def P16775632232320063764.Spec : Prop :=
  ∀ n, P16775632232320063764.a n = A204556 (n + 1)

end A204556

/-! ## A204556.P7381373446106045198

`(n+1)*A385406(A128918(n))`
-/

namespace A204556.P7381373446106045198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A385406 (A128918 n).toNat

end

end A204556.P7381373446106045198

namespace A204556

/-- `(n+1)*A385406(A128918(n))` -/
def P7381373446106045198.Spec : Prop :=
  ∀ n, P7381373446106045198.a n = A204556 (n + 1)

end A204556

/-!
# A204557: Right edge of the triangle A045975.

The programs for A204557, the canonical program `A204557.P11992829830807351571` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204557 has offset 1).

The definition of A204557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204557.P16226496027578212537

`ogf((1+3x+14x^2+6x^3+x^4-x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A204557.P16226496027578212537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 14, 6, 1, -1] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A204557.P16226496027578212537

namespace A204557

/-- `ogf((1+3x+14x^2+6x^3+x^4-x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P16226496027578212537.Spec : Prop :=
  ∀ n, P16226496027578212537.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P13335697530452811756

`(n+1)*(2*(n+1)²+(3-(-1)^(n+1))*(n+1)-(-1)^(n+1)-3)/4`
-/

namespace A204557.P13335697530452811756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) + (3 - (-1) ^ (n + 1)) * (n + 1 : ℤ) - (-1) ^ (n + 1) - 3) : ℚ) / 4

end

end A204557.P13335697530452811756

namespace A204557

/-- `(n+1)*(2*(n+1)²+(3-(-1)^(n+1))*(n+1)-(-1)^(n+1)-3)/4` -/
def P13335697530452811756.Spec : Prop :=
  ∀ n, P13335697530452811756.a n = (A204557 (n + 1) : ℚ)

end A204557

/-! ## A204557.P11992829830807351571

`A079326(n+2)*(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204557

/-- `A079326(n+2)*(n+1)` -/
def P11992829830807351571.Spec : Prop :=
  ∀ n, P11992829830807351571.a n = A204557 (n + 1)

theorem P11992829830807351571.correct : P11992829830807351571.Spec := by
  intro n
  simp only [A204557, Nat.add_sub_cancel]

end A204557

/-! ## A204557.P11085446517151074550

`A204556(n+1)+A045895(n+1)`
-/

namespace A204557.P11085446517151074550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204556 (n + 1) + A045895 (n + 1)

end

end A204557.P11085446517151074550

namespace A204557

/-- `A204556(n+1)+A045895(n+1)` -/
def P11085446517151074550.Spec : Prop :=
  ∀ n, P11085446517151074550.a n = A204557 (n + 1)

theorem P11085446517151074550.correct : P11085446517151074550.Spec := by
  intro n
  simp only [A204557, Nat.add_sub_cancel, A204557.P11085446517151074550.a, A204557.P11992829830807351571.a, A045895, A045895.P14491049351265134008.a, A079326, A079326.P12661646355097627820.a, A204556, A204556.P4855747009617410404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204557

/-! ## A204557.P7919261125195099653

`A045975(C(n+1, 2)+n+1)`
-/

namespace A204557.P7919261125195099653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045975 (Nat.choose (n + 1) 2 + (n + 1))

end

end A204557.P7919261125195099653

namespace A204557

/-- `A045975(C(n+1, 2)+n+1)` -/
def P7919261125195099653.Spec : Prop :=
  ∀ n, P7919261125195099653.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P8630677880201801638

`∑[lcm(2, (n+1)²)-1]`
-/

namespace A204557.P8630677880201801638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204557.P8630677880201801638

namespace A204557

/-- `∑[lcm(2, (n+1)²)-1]` -/
def P8630677880201801638.Spec : Prop :=
  ∀ n, P8630677880201801638.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P5753026147041917992

`or(1, n)*∑[or(1, n+1)]`
-/

namespace A204557.P5753026147041917992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204557.P5753026147041917992

namespace A204557

/-- `or(1, n)*∑[or(1, n+1)]` -/
def P5753026147041917992.Spec : Prop :=
  ∀ n, (P5753026147041917992.a n : ℤ) = A204557 (n + 1)

end A204557

/-! ## A204557.P6617333187731236193

`∑[(n+1)²*gcd(2, n)-1]`
-/

namespace A204557.P6617333187731236193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * Nat.gcd 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204557.P6617333187731236193

namespace A204557

/-- `∑[(n+1)²*gcd(2, n)-1]` -/
def P6617333187731236193.Spec : Prop :=
  ∀ n, P6617333187731236193.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P12787257182092244882

`∑[lcm(2*(n+1), ∑[2*n+1])]-(n+1)`
-/

namespace A204557.P12787257182092244882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A204557.P12787257182092244882

namespace A204557

/-- `∑[lcm(2*(n+1), ∑[2*n+1])]-(n+1)` -/
def P12787257182092244882.Spec : Prop :=
  ∀ n, P12787257182092244882.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P7605560302030608576

`∑[2-a(n-1)]*∑[n+1]-(n+1)` with `a(0)=2`
-/

namespace A204557.P7605560302030608576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A204557.P7605560302030608576

namespace A204557

/-- `∑[2-a(n-1)]*∑[n+1]-(n+1)` -/
def P7605560302030608576.Spec : Prop :=
  ∀ n, P7605560302030608576.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P1585707051999332142

`(n+1)*(∑[n+2]-gcd(n+2, ∑[n+1]))`
-/

namespace A204557.P1585707051999332142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

end

end A204557.P1585707051999332142

namespace A204557

/-- `(n+1)*(∑[n+2]-gcd(n+2, ∑[n+1]))` -/
def P1585707051999332142.Spec : Prop :=
  ∀ n, P1585707051999332142.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P13098861050821983332

`((n+1)%2+n+1)*∑[n+1]-(n+1)`
-/

namespace A204557.P13098861050821983332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) % 2 + (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A204557.P13098861050821983332

namespace A204557

/-- `((n+1)%2+n+1)*∑[n+1]-(n+1)` -/
def P13098861050821983332.Spec : Prop :=
  ∀ n, P13098861050821983332.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P5358738826826059444

`∑[A137933(n+1)-1]`
-/

namespace A204557.P5358738826826059444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137933 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204557.P5358738826826059444

namespace A204557

/-- `∑[A137933(n+1)-1]` -/
def P5358738826826059444.Spec : Prop :=
  ∀ n, P5358738826826059444.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P3166798271134174289

`(n+1)*A079326(n+2)`
-/

namespace A204557.P3166798271134174289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079326 (n + 2)

end

end A204557.P3166798271134174289

namespace A204557

/-- `(n+1)*A079326(n+2)` -/
def P3166798271134174289.Spec : Prop :=
  ∀ n, P3166798271134174289.a n = A204557 (n + 1)

theorem P3166798271134174289.correct : P3166798271134174289.Spec := by
  intro n
  simp only [A204557, Nat.add_sub_cancel, A204557.P3166798271134174289.a, A204557.P11992829830807351571.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204557

/-! ## A204557.P10693226470533619860

`2*A212760(n)-(n+1)`
-/

namespace A204557.P10693226470533619860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212760 n - (n + 1 : ℤ)

end

end A204557.P10693226470533619860

namespace A204557

/-- `2*A212760(n)-(n+1)` -/
def P10693226470533619860.Spec : Prop :=
  ∀ n, P10693226470533619860.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P3019631248311179431

`(n+2)*A105638(n+3)+1`
-/

namespace A204557.P3019631248311179431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A105638 (n + 3) + 1

end

end A204557.P3019631248311179431

namespace A204557

/-- `(n+2)*A105638(n+3)+1` -/
def P3019631248311179431.Spec : Prop :=
  ∀ n, P3019631248311179431.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P11549404661502953414

`(n+2)*A093005(n+1)-(n+1)`
-/

namespace A204557.P11549404661502953414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A093005 (n + 1) - (n + 1 : ℤ)

end

end A204557.P11549404661502953414

namespace A204557

/-- `(n+2)*A093005(n+1)-(n+1)` -/
def P11549404661502953414.Spec : Prop :=
  ∀ n, P11549404661502953414.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P5349785310392529722

`A074148(n+1)*A109613(n)`
-/

namespace A204557.P5349785310392529722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) * A109613 n

end

end A204557.P5349785310392529722

namespace A204557

/-- `A074148(n+1)*A109613(n)` -/
def P5349785310392529722.Spec : Prop :=
  ∀ n, P5349785310392529722.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P1890432104926447042

`A000217(n)+A000217(n+1)*A109613(n)`
-/

namespace A204557.P1890432104926447042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000217 (n + 1) * A109613 n

end

end A204557.P1890432104926447042

namespace A204557

/-- `A000217(n)+A000217(n+1)*A109613(n)` -/
def P1890432104926447042.Spec : Prop :=
  ∀ n, P1890432104926447042.a n = A204557 (n + 1)

end A204557

/-! ## A204557.P1824630494401525223

`(A179207(n+2)-A109613(n))*A109613(n)`
-/

namespace A204557.P1824630494401525223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179207 (n + 2) - A109613 n) * A109613 n

end

end A204557.P1824630494401525223

namespace A204557

/-- `(A179207(n+2)-A109613(n))*A109613(n)` -/
def P1824630494401525223.Spec : Prop :=
  ∀ n, P1824630494401525223.a n = A204557 (n + 1)

end A204557

/-!
# A204558: Row sums of the triangle A045975.

The programs for A204558, the canonical program `A204558.P4912420277144461039` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204558 has offset 1).

The definition of A204558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204558.P4912420277144461039

`C(∑[2*or(1, n)], 2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204558

/-- `C(∑[2*or(1, n)], 2)` -/
def P4912420277144461039.Spec : Prop :=
  ∀ n, (P4912420277144461039.a n : ℤ) = A204558 (n + 1)

theorem P4912420277144461039.correct : P4912420277144461039.Spec := by
  intro n
  simp only [A204558, Nat.add_sub_cancel]

end A204558

/-! ## A204558.P6933598176954211514

`C(∑[lcm(2, or(1, n))], 2)`
-/

namespace A204558.P6933598176954211514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A204558.P6933598176954211514

namespace A204558

/-- `C(∑[lcm(2, or(1, n))], 2)` -/
def P6933598176954211514.Spec : Prop :=
  ∀ n, (P6933598176954211514.a n : ℤ) = A204558 (n + 1)

end A204558

/-! ## A204558.P4200396695265723974

`C(∑[or(2, n+n)], 2)`
-/

namespace A204558.P4200396695265723974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A204558.P4200396695265723974

namespace A204558

/-- `C(∑[or(2, n+n)], 2)` -/
def P4200396695265723974.Spec : Prop :=
  ∀ n, (P4200396695265723974.a n : ℤ) = A204558 (n + 1)

end A204558

/-! ## A204558.P13837898107870747473

`C(∑[xor(1, n)+1+n], 2)`
-/

namespace A204558.P13837898107870747473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A204558.P13837898107870747473

namespace A204558

/-- `C(∑[xor(1, n)+1+n], 2)` -/
def P13837898107870747473.Spec : Prop :=
  ∀ n, (P13837898107870747473.a n : ℤ) = A204558 (n + 1)

end A204558

/-! ## A204558.P7810501869360360729

`C(or(1, n*(n+2))+1, 2)`
-/

namespace A204558.P7810501869360360729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n * (n + 2)) + 1) 2

end

end A204558.P7810501869360360729

namespace A204558

/-- `C(or(1, n*(n+2))+1, 2)` -/
def P7810501869360360729.Spec : Prop :=
  ∀ n, (P7810501869360360729.a n : ℤ) = A204558 (n + 1)

end A204558

/-! ## A204558.P4780837832865333691

`C(2*ceil((n+1)²/2), 2)`
-/

namespace A204558.P4780837832865333691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * ⌈((n + 1) ^ 2 : ℚ) / 2⌉).toNat 2

end

end A204558.P4780837832865333691

namespace A204558

/-- `C(2*ceil((n+1)²/2), 2)` -/
def P4780837832865333691.Spec : Prop :=
  ∀ n, (P4780837832865333691.a n : ℤ) = A204558 (n + 1)

end A204558

/-! ## A204558.P18244385413087779870

`∑[(∑[4*n]+1)*or(1, n)]`
-/

namespace A204558.P18244385413087779870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P18244385413087779870

namespace A204558

/-- `∑[(∑[4*n]+1)*or(1, n)]` -/
def P18244385413087779870.Spec : Prop :=
  ∀ n, (P18244385413087779870.a n : ℤ) = A204558 (n + 1)

end A204558

/-! ## A204558.P13773774174067465424

`((-1)^n+(n+1)²)/2*(n+1)²`
-/

namespace A204558.P13773774174067465424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + ((n + 1) ^ 2 : ℤ) : ℚ) / 2 * ((n + 1) ^ 2 : ℚ)

end

end A204558.P13773774174067465424

namespace A204558

/-- `((-1)^n+(n+1)²)/2*(n+1)²` -/
def P13773774174067465424.Spec : Prop :=
  ∀ n, P13773774174067465424.a n = (A204558 (n + 1) : ℚ)

end A204558

/-! ## A204558.P4770319448499041589

`ogf((1+4x+31x^2+24x^3+31x^4+4x^5+x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A204558.P4770319448499041589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 31, 24, 31, 4, 1] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A204558.P4770319448499041589

namespace A204558

/-- `ogf((1+4x+31x^2+24x^3+31x^4+4x^5+x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P4770319448499041589.Spec : Prop :=
  ∀ n, P4770319448499041589.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P2092355471852001253

`(A162395(n+1)+(n+1)²²)/2`
-/

namespace A204558.P2092355471852001253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162395 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ) : ℚ) / 2

end

end A204558.P2092355471852001253

namespace A204558

/-- `(A162395(n+1)+(n+1)²²)/2` -/
def P2092355471852001253.Spec : Prop :=
  ∀ n, P2092355471852001253.a n = (A204558 (n + 1) : ℚ)

end A204558

/-! ## A204558.P13722416425337012095

`2*A212893(n)-sqrt(A212893(n))`
-/

namespace A204558.P13722416425337012095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A212893 n : ℝ) - Real.sqrt (A212893 n : ℝ)

end

end A204558.P13722416425337012095

namespace A204558

/-- `2*A212893(n)-sqrt(A212893(n))` -/
def P13722416425337012095.Spec : Prop :=
  ∀ n, P13722416425337012095.a n = (A204558 (n + 1) : ℝ)

end A204558

/-! ## A204558.P8816507488010972781

`∑[(A052928(n)+1)*A001844(n)]`
-/

namespace A204558.P8816507488010972781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052928 n + 1) * A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P8816507488010972781

namespace A204558

/-- `∑[(A052928(n)+1)*A001844(n)]` -/
def P8816507488010972781.Spec : Prop :=
  ∀ n, P8816507488010972781.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P5194658740571606839

`∑[(A046092(n)+1)*A109613(n)]`
-/

namespace A204558.P5194658740571606839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 n + 1) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P5194658740571606839

namespace A204558

/-- `∑[(A046092(n)+1)*A109613(n)]` -/
def P5194658740571606839.Spec : Prop :=
  ∀ n, P5194658740571606839.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P4426237915040999498

`∑[(A042963(n+1)-n)*A001844(n)]`
-/

namespace A204558.P4426237915040999498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042963 (n + 1) - (n : ℤ)) * A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P4426237915040999498

namespace A204558

/-- `∑[(A042963(n+1)-n)*A001844(n)]` -/
def P4426237915040999498.Spec : Prop :=
  ∀ n, P4426237915040999498.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P4374838015068604131

`(A137928(n+1)²-A137928(n+1))/2`
-/

namespace A204558.P4374838015068604131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137928 (n + 1) ^ 2 - A137928 (n + 1) : ℚ) / 2

end

end A204558.P4374838015068604131

namespace A204558

/-- `(A137928(n+1)²-A137928(n+1))/2` -/
def P4374838015068604131.Spec : Prop :=
  ∀ n, P4374838015068604131.a n = (A204558 (n + 1) : ℚ)

end A204558

/-! ## A204558.P11262841410018370876

`A212893(n)+A212893(n)-A000982(n+1)`
-/

namespace A204558.P11262841410018370876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n + (A212893 n - A000982 (n + 1))

end

end A204558.P11262841410018370876

namespace A204558

/-- `A212893(n)+A212893(n)-A000982(n+1)` -/
def P11262841410018370876.Spec : Prop :=
  ∀ n, P11262841410018370876.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P10251173128441526125

`A000982(n+1)*A137928(n+1)-A000982(n+1)`
-/

namespace A204558.P10251173128441526125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) * A137928 (n + 1) - A000982 (n + 1)

end

end A204558.P10251173128441526125

namespace A204558

/-- `A000982(n+1)*A137928(n+1)-A000982(n+1)` -/
def P10251173128441526125.Spec : Prop :=
  ∀ n, P10251173128441526125.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P8159495568923697657

`∑[A000982(2*n+1)*A109613(n)]`
-/

namespace A204558.P8159495568923697657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n + 1) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P8159495568923697657

namespace A204558

/-- `∑[A000982(2*n+1)*A109613(n)]` -/
def P8159495568923697657.Spec : Prop :=
  ∀ n, P8159495568923697657.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P11358559601559379239

`∑[∑[A004277(2*n)]*A106249(2*n)]`
-/

namespace A204558.P11358559601559379239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A106249 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P11358559601559379239

namespace A204558

/-- `∑[∑[A004277(2*n)]*A106249(2*n)]` -/
def P11358559601559379239.Spec : Prop :=
  ∀ n, P11358559601559379239.a n = A204558 (n + 1)

end A204558

/-! ## A204558.P1534727913221387749

`∑[∑[A004277(2*n)]*A004525(2*n+1)]`
-/

namespace A204558.P1534727913221387749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A004525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204558.P1534727913221387749

namespace A204558

/-- `∑[∑[A004277(2*n)]*A004525(2*n+1)]` -/
def P1534727913221387749.Spec : Prop :=
  ∀ n, P1534727913221387749.a n = A204558 (n + 1)

end A204558

/-!
# A204559: Four times the area of the smallest of n-tuples of Heronian triangles with equal perimeter and equal area.

The programs for A204559, there is no canonical definition to state claims against.
-/

/-! ## A204559.P16540910486135626175

`4*A334285(n+1)`
-/

namespace A204559.P16540910486135626175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A334285 (n + 1)

end

end A204559.P16540910486135626175

/-!
# A204560: Symmetric matrix: f(i,j)=floor[(2i+2j+4)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

The programs for A204560, the canonical program `A204560.P13805510480467334471` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204560 has offset 1).

The definition of A204560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204560.P11597109681155807586

`round(row(n)/4)+1`
-/

namespace A204560.P11597109681155807586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n : ℚ) / 4) + 1

end

end A204560.P11597109681155807586

namespace A204560

/-- `round(row(n)/4)+1` -/
def P11597109681155807586.Spec : Prop :=
  ∀ n, P11597109681155807586.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P4011590146477177232

`ceil((∑[char[∑[n]]]+2)/4)`
-/

namespace A204560.P4011590146477177232
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 4⌉

end

end A204560.P4011590146477177232

namespace A204560

/-- `ceil((∑[char[∑[n]]]+2)/4)` -/
def P4011590146477177232.Spec : Prop :=
  ∀ n, P4011590146477177232.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P13030360117459056726

`floor((floor(row(n)/2)+3)/2)`
-/

namespace A204560.P13030360117459056726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(SequenceMachineLib.triRow n : ℚ) / 2⌋ + 3 : ℚ) / 2⌋

end

end A204560.P13030360117459056726

namespace A204560

/-- `floor((floor(row(n)/2)+3)/2)` -/
def P13030360117459056726.Spec : Prop :=
  ∀ n, P13030360117459056726.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P14940072869519121276

`round(abs(2-(n-comp[C(n, 2)]))/4)`
-/

namespace A204560.P14940072869519121276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|2 - ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))| : ℚ) / 4)

end

end A204560.P14940072869519121276

namespace A204560

/-- `round(abs(2-(n-comp[C(n, 2)]))/4)` -/
def P14940072869519121276.Spec : Prop :=
  ∀ n, P14940072869519121276.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P4143996849719743441

`round((comp[∑[n]]+7)%(n+5)/4)`
-/

namespace A204560.P4143996849719743441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 7) % (n + 5) : ℕ) : ℚ) / 4)

end

end A204560.P4143996849719743441

namespace A204560

/-- `round((comp[∑[n]]+7)%(n+5)/4)` -/
def P4143996849719743441.Spec : Prop :=
  ∀ n, P4143996849719743441.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P8484983415862464443

`∑[char[n%2*C(2*n+1, 2)]]`
-/

namespace A204560.P8484983415862464443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * Nat.choose (2 * n + 1) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204560.P8484983415862464443

namespace A204560

/-- `∑[char[n%2*C(2*n+1, 2)]]` -/
def P8484983415862464443.Spec : Prop :=
  ∀ n, (P8484983415862464443.a n : ℤ) = A204560 (n + 1)

end A204560

/-! ## A204560.P9550263708778317092

`∑[char[(2*n+1)*n*and(1, n)]]`
-/

namespace A204560.P9550263708778317092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n * Nat.land 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204560.P9550263708778317092

namespace A204560

/-- `∑[char[(2*n+1)*n*and(1, n)]]` -/
def P9550263708778317092.Spec : Prop :=
  ∀ n, (P9550263708778317092.a n : ℤ) = A204560 (n + 1)

end A204560

/-! ## A204560.P13805510480467334471

`round(∑[A073423(n)²]/4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204560

/-- `round(∑[A073423(n)²]/4)` -/
def P13805510480467334471.Spec : Prop :=
  ∀ n, P13805510480467334471.a n = A204560 (n + 1)

theorem P13805510480467334471.correct : P13805510480467334471.Spec := by
  intro n
  simp only [A204560, Nat.add_sub_cancel]

end A204560

/-! ## A204560.P15323059792429113431

`A008621(∑[char[∑[n]]]+1)`
-/

namespace A204560.P15323059792429113431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204560.P15323059792429113431

namespace A204560

/-- `A008621(∑[char[∑[n]]]+1)` -/
def P15323059792429113431.Spec : Prop :=
  ∀ n, P15323059792429113431.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P16889589890445242013

`A110655(comp[∑[n]]+1-n)`
-/

namespace A204560.P16889589890445242013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 - n)

end

end A204560.P16889589890445242013

namespace A204560

/-- `A110655(comp[∑[n]]+1-n)` -/
def P16889589890445242013.Spec : Prop :=
  ∀ n, P16889589890445242013.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P1590395190616176380

`A002265(comp[∑[n]]-n+4)`
-/

namespace A204560.P1590395190616176380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 4).toNat

end

end A204560.P1590395190616176380

namespace A204560

/-- `A002265(comp[∑[n]]-n+4)` -/
def P1590395190616176380.Spec : Prop :=
  ∀ n, P1590395190616176380.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P14456621385331365197

`floor(A003057(n+2)/4)+1`
-/

namespace A204560.P14456621385331365197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003057 (n + 2) : ℚ) / 4⌋ + 1

end

end A204560.P14456621385331365197

namespace A204560

/-- `floor(A003057(n+2)/4)+1` -/
def P14456621385331365197.Spec : Prop :=
  ∀ n, P14456621385331365197.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P4545716898573262667

`floor((A002024(n+1)+5)/4)`
-/

namespace A204560.P4545716898573262667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) + 5 : ℚ) / 4⌋

end

end A204560.P4545716898573262667

namespace A204560

/-- `floor((A002024(n+1)+5)/4)` -/
def P4545716898573262667.Spec : Prop :=
  ∀ n, P4545716898573262667.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P1882074242226591468

`∑[char[n%2*A000217(2*n)]]`
-/

namespace A204560.P1882074242226591468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000217 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204560.P1882074242226591468

namespace A204560

/-- `∑[char[n%2*A000217(2*n)]]` -/
def P1882074242226591468.Spec : Prop :=
  ∀ n, (P1882074242226591468.a n : ℤ) = A204560 (n + 1)

end A204560

/-! ## A204560.P3620100908142612152

`∑[char[A000217(abs(1-4*n)-1)]]`
-/

namespace A204560.P3620100908142612152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (|1 - (4 * n : ℤ)| - 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204560.P3620100908142612152

namespace A204560

/-- `∑[char[A000217(abs(1-4*n)-1)]]` -/
def P3620100908142612152.Spec : Prop :=
  ∀ n, (P3620100908142612152.a n : ℤ) = A204560 (n + 1)

end A204560

/-! ## A204560.P11869073505251288110

`round(abs(n-2-comp[A000217(n)])/4)`
-/

namespace A204560.P11869073505251288110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|(n : ℤ) - 2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)| : ℚ) / 4)

end

end A204560.P11869073505251288110

namespace A204560

/-- `round(abs(n-2-comp[A000217(n)])/4)` -/
def P11869073505251288110.Spec : Prop :=
  ∀ n, P11869073505251288110.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P6805979391295562206

`∑[char[C((n+1)^(A249547(n)%2), 2)]]`
-/

namespace A204560.P6805979391295562206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (Int.tmod (A249547 n) 2 : ℤ))).toNat 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204560.P6805979391295562206

namespace A204560

/-- `∑[char[C((n+1)^(A249547(n)%2), 2)]]` -/
def P6805979391295562206.Spec : Prop :=
  ∀ n, (P6805979391295562206.a n : ℤ) = A204560 (n + 1)

end A204560

/-! ## A204560.P18249769871879060587

`A008619(A204164(n+1))`
-/

namespace A204560.P18249769871879060587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A204164 (n + 1)).toNat

end

end A204560.P18249769871879060587

namespace A204560

/-- `A008619(A204164(n+1))` -/
def P18249769871879060587.Spec : Prop :=
  ∀ n, P18249769871879060587.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P4007001713605163151

`A204551(n+1)+A204547(n+1)`
-/

namespace A204560.P4007001713605163151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (n + 1) + A204547 (n + 1)

end

end A204560.P4007001713605163151

namespace A204560

/-- `A204551(n+1)+A204547(n+1)` -/
def P4007001713605163151.Spec : Prop :=
  ∀ n, P4007001713605163151.a n = A204560 (n + 1)

end A204560

/-! ## A204560.P18022528269478704543

`floor((log2(A224701(n+1))+2)/4)`
-/

namespace A204560.P18022528269478704543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.logb 2 (A224701 (n + 1) : ℝ) + 2) / 4⌋

end

end A204560.P18022528269478704543

namespace A204560

/-- `floor((log2(A224701(n+1))+2)/4)` -/
def P18022528269478704543.Spec : Prop :=
  ∀ n, P18022528269478704543.a n = A204560 (n + 1)

end A204560

/-!
# A204562: Symmetric matrix: f(i,j) = floor((2i+2j+6)/4)-floor((i+j+3)/4), by (constant) antidiagonals.

The programs for A204562, the canonical program `A204562.P5690255054464803021` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204562 has offset 1).

The definition of A204562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204562.P2468785435027419116

`ceil(row(n)/4)+1`
-/

namespace A204562.P2468785435027419116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.triRow n : ℚ) / 4⌉ + 1

end

end A204562.P2468785435027419116

namespace A204562

/-- `ceil(row(n)/4)+1` -/
def P2468785435027419116.Spec : Prop :=
  ∀ n, P2468785435027419116.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P10177950105043071610

`round(∑[char[∑[n]]]/4)+1`
-/

namespace A204562.P10177950105043071610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4) + 1

end

end A204562.P10177950105043071610

namespace A204562

/-- `round(∑[char[∑[n]]]/4)+1` -/
def P10177950105043071610.Spec : Prop :=
  ∀ n, P10177950105043071610.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P13830764310369997430

`ceil(abs(2-(n-comp[C(n, 2)]))/4)`
-/

namespace A204562.P13830764310369997430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|2 - ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))| : ℚ) / 4⌉

end

end A204562.P13830764310369997430

namespace A204562

/-- `ceil(abs(2-(n-comp[C(n, 2)]))/4)` -/
def P13830764310369997430.Spec : Prop :=
  ∀ n, P13830764310369997430.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P15800272688401227746

`ceil((comp[∑[n]]+7)%(n+5)/4)`
-/

namespace A204562.P15800272688401227746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 7) % (n + 5) : ℕ) : ℚ) / 4⌉

end

end A204562.P15800272688401227746

namespace A204562

/-- `ceil((comp[∑[n]]+7)%(n+5)/4)` -/
def P15800272688401227746.Spec : Prop :=
  ∀ n, P15800272688401227746.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P2993554081867055860

`∑[char[(2*n-1)*n*n%2]]`
-/

namespace A204562.P2993554081867055860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * ((n * (n % 2) : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204562.P2993554081867055860

namespace A204562

/-- `∑[char[(2*n-1)*n*n%2]]` -/
def P2993554081867055860.Spec : Prop :=
  ∀ n, (P2993554081867055860.a n : ℤ) = A204562 (n + 1)

end A204562

/-! ## A204562.P8839865260118347460

`A008621(row(n)+3)`
-/

namespace A204562.P8839865260118347460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.triRow n + 3)

end

end A204562.P8839865260118347460

namespace A204562

/-- `A008621(row(n)+3)` -/
def P8839865260118347460.Spec : Prop :=
  ∀ n, P8839865260118347460.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P12859632063877290944

`ceil(A350361(n+1)/4)`
-/

namespace A204562.P12859632063877290944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350361 (n + 1) : ℚ) / 4⌉

end

end A204562.P12859632063877290944

namespace A204562

/-- `ceil(A350361(n+1)/4)` -/
def P12859632063877290944.Spec : Prop :=
  ∀ n, P12859632063877290944.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P5690255054464803021

`ceil(∑[(A073423(n)/2)²])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204562

/-- `ceil(∑[(A073423(n)/2)²])` -/
def P5690255054464803021.Spec : Prop :=
  ∀ n, P5690255054464803021.a n = A204562 (n + 1)

theorem P5690255054464803021.correct : P5690255054464803021.Spec := by
  intro n
  simp only [A204562, Nat.add_sub_cancel]

end A204562

/-! ## A204562.P13266866479170922423

`A002265(∑[char[∑[n]]]+6)`
-/

namespace A204562.P13266866479170922423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A204562.P13266866479170922423

namespace A204562

/-- `A002265(∑[char[∑[n]]]+6)` -/
def P13266866479170922423.Spec : Prop :=
  ∀ n, P13266866479170922423.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P9618734403680708312

`A008619(∑[char[C(2*n, 2)]])`
-/

namespace A204562.P9618734403680708312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204562.P9618734403680708312

namespace A204562

/-- `A008619(∑[char[C(2*n, 2)]])` -/
def P9618734403680708312.Spec : Prop :=
  ∀ n, P9618734403680708312.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P10470594790284083430

`floor((A002024(n+1)+6)/4)`
-/

namespace A204562.P10470594790284083430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) + 6 : ℚ) / 4⌋

end

end A204562.P10470594790284083430

namespace A204562

/-- `floor((A002024(n+1)+6)/4)` -/
def P10470594790284083430.Spec : Prop :=
  ∀ n, P10470594790284083430.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P11808792961441677148

`∑[char[A000384(comp[2*(n+1)])]]`
-/

namespace A204562.P11808792961441677148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204562.P11808792961441677148

namespace A204562

/-- `∑[char[A000384(comp[2*(n+1)])]]` -/
def P11808792961441677148.Spec : Prop :=
  ∀ n, (P11808792961441677148.a n : ℤ) = A204562 (n + 1)

end A204562

/-! ## A204562.P6501471642216119218

`A008621(round(sqrt(2*(n+1)))+2)`
-/

namespace A204562.P6501471642216119218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 2).toNat

end

end A204562.P6501471642216119218

namespace A204562

/-- `A008621(round(sqrt(2*(n+1)))+2)` -/
def P6501471642216119218.Spec : Prop :=
  ∀ n, P6501471642216119218.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P9745449630664890932

`A004526(comp[2*n²]-(n-2))`
-/

namespace A204562.P9745449630664890932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 2)).toNat

end

end A204562.P9745449630664890932

namespace A204562

/-- `A004526(comp[2*n²]-(n-2))` -/
def P9745449630664890932.Spec : Prop :=
  ∀ n, P9745449630664890932.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P11766024046150624625

`A110655(A350361(n+1))`
-/

namespace A204562.P11766024046150624625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A350361 (n + 1)).toNat

end

end A204562.P11766024046150624625

namespace A204562

/-- `A110655(A350361(n+1))` -/
def P11766024046150624625.Spec : Prop :=
  ∀ n, P11766024046150624625.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P9992225926245226474

`A008619(A008619(round(sqrt(2*n+1))))`
-/

namespace A204562.P9992225926245226474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat).toNat

end

end A204562.P9992225926245226474

namespace A204562

/-- `A008619(A008619(round(sqrt(2*n+1))))` -/
def P9992225926245226474.Spec : Prop :=
  ∀ n, P9992225926245226474.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P15159720251614484064

`∑[char[A000217(A078112(2*(n+1)))]]`
-/

namespace A204562.P15159720251614484064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A078112 (2 * (n + 1))).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204562.P15159720251614484064

namespace A204562

/-- `∑[char[A000217(A078112(2*(n+1)))]]` -/
def P15159720251614484064.Spec : Prop :=
  ∀ n, (P15159720251614484064.a n : ℤ) = A204562 (n + 1)

end A204562

/-! ## A204562.P7963282289649727142

`A204560(A014132(n+1))`
-/

namespace A204562.P7963282289649727142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A014132 (n + 1)).toNat

end

end A204562.P7963282289649727142

namespace A204562

/-- `A204560(A014132(n+1))` -/
def P7963282289649727142.Spec : Prop :=
  ∀ n, P7963282289649727142.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P4749126896348724526

`A204560(A007401(n+2))`
-/

namespace A204562.P4749126896348724526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A007401 (n + 2)).toNat

end

end A204562.P4749126896348724526

namespace A204562

/-- `A204560(A007401(n+2))` -/
def P4749126896348724526.Spec : Prop :=
  ∀ n, P4749126896348724526.a n = A204562 (n + 1)

end A204562

/-! ## A204562.P6082525040470011185

`A204560(A080036(n+1))`
-/

namespace A204562.P6082525040470011185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A080036 (n + 1)).toNat

end

end A204562.P6082525040470011185

namespace A204562

/-- `A204560(A080036(n+1))` -/
def P6082525040470011185.Spec : Prop :=
  ∀ n, P6082525040470011185.a n = A204562 (n + 1)

end A204562

/-!
# A204564: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204564, there is no canonical definition to state claims against.
-/

/-! ## A204564.P4346604228830989984

`A204572((n+1)²+n²)`
-/

namespace A204564.P4346604228830989984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 ((n + 1) ^ 2 + n ^ 2)

end

end A204564.P4346604228830989984

/-!
# A204565: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204565, the canonical program `A204565.P5754130875241451338` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204565 has offset 1).

The definition of A204565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204565.P2906948506317466998

`ogf((8-46x+42x^2)/(1-11x+31x^2-21x^3))`
-/

namespace A204565.P2906948506317466998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -46, 42] [1, -11, 31, -21] n

end

end A204565.P2906948506317466998

namespace A204565

/-- `ogf((8-46x+42x^2)/(1-11x+31x^2-21x^3))` -/
def P2906948506317466998.Spec : Prop :=
  ∀ n, P2906948506317466998.a n = A204565 (n + 1)

end A204565

/-! ## A204565.P14419458179694700516

`A083076(n+1)+A000244(n+1)`
-/

namespace A204565.P14419458179694700516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 (n + 1) + A000244 (n + 1)

end

end A204565.P14419458179694700516

namespace A204565

/-- `A083076(n+1)+A000244(n+1)` -/
def P14419458179694700516.Spec : Prop :=
  ∀ n, P14419458179694700516.a n = A204565 (n + 1)

end A204565

/-! ## A204565.P17348145278768402529

`2*(A125725(n+2)+A007051(n+1))`
-/

namespace A204565.P17348145278768402529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125725 (n + 2) + A007051 (n + 1))

end

end A204565.P17348145278768402529

namespace A204565

/-- `2*(A125725(n+2)+A007051(n+1))` -/
def P17348145278768402529.Spec : Prop :=
  ∀ n, P17348145278768402529.a n = A204565 (n + 1)

end A204565

/-! ## A204565.P5754130875241451338

`1/3+3^(n+1)+2*7^(n+1)/3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204565

/-- `1/3+3^(n+1)+2*7^(n+1)/3` -/
def P5754130875241451338.Spec : Prop :=
  ∀ n, P5754130875241451338.a n = (A204565 (n + 1) : ℚ)

end A204565

/-! ## A204565.P17648143820809040797

`A204572(∑[n]+1)`
-/

namespace A204565.P17648143820809040797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204565.P17648143820809040797

namespace A204565

/-- `A204572(∑[n]+1)` -/
def P17648143820809040797.Spec : Prop :=
  ∀ n, P17648143820809040797.a n = A204565 (n + 1)

end A204565

/-!
# A204566: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204566, there is no canonical definition to state claims against.
-/

/-! ## A204566.P11853349341401175227

`A204572(∑[n+1]+2)`
-/

namespace A204566.P11853349341401175227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204566.P11853349341401175227

/-! ## A204566.P14860198645412245097

`record[gcd(A002262(n), A204572(n+2))]`
-/

namespace A204566.P14860198645412245097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204572 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204566.P14860198645412245097

/-! ## A204566.P16481586629321272104

`record[A204572(Δ[A003453(n+5)])]`
-/

namespace A204566.P16481586629321272104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204566.P16481586629321272104

/-! ## A204566.P7508387657035953135

`A297045(n+1)+A204572(A000096(n+1))`
-/

namespace A204566.P7508387657035953135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (n + 1) + A204572 (A000096 (n + 1)).toNat

end

end A204566.P7508387657035953135

/-! ## A204566.P8615210629520916139

`record[A204572(A198453(n+1))]`
-/

namespace A204566.P8615210629520916139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204566.P8615210629520916139

/-!
# A204567: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204567, there is no canonical definition to state claims against.
-/

/-! ## A204567.P2077182605836945800

`A204572(∑[n+2]+4)`
-/

namespace A204567.P2077182605836945800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204567.P2077182605836945800

/-! ## A204567.P756298622891469026

`A204572(A167614(n+1))+A025469(n)`
-/

namespace A204567.P756298622891469026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A167614 (n + 1)).toNat + A025469 n

end

end A204567.P756298622891469026

/-! ## A204567.P1770014517339750284

`A326461(n)+A204572(A167614(n+1))`
-/

namespace A204567.P1770014517339750284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A204572 (A167614 (n + 1)).toNat

end

end A204567.P1770014517339750284

/-! ## A204567.P15096782791199233600

`A204572(A167614(n+1))*A291168(n)`
-/

namespace A204567.P15096782791199233600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A167614 (n + 1)).toNat * A291168 n

end

end A204567.P15096782791199233600

/-! ## A204567.P8068558641165822129

`lcm(A020985(n), A204572(A167614(n+1)))`
-/

namespace A204567.P8068558641165822129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A204572 (A167614 (n + 1)).toNat)

end

end A204567.P8068558641165822129

/-!
# A204568: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204568, there is no canonical definition to state claims against.
-/

/-! ## A204568.P12781117101083218354

`A204572(A374004(n+1))`
-/

namespace A204568.P12781117101083218354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A374004 (n + 1)).toNat

end

end A204568.P12781117101083218354

/-! ## A204568.P16814490344768869487

`A204572(A052905(n)+9)`
-/

namespace A204568.P16814490344768869487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A052905 n + 9).toNat

end

end A204568.P16814490344768869487

/-! ## A204568.P8831821976101389797

`A204572(A055999(n)+10)`
-/

namespace A204568.P8831821976101389797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A055999 n + 10).toNat

end

end A204568.P8831821976101389797

/-! ## A204568.P4459752484276426817

`A204572(A167614(n+2)+1)`
-/

namespace A204568.P4459752484276426817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A167614 (n + 2) + 1).toNat

end

end A204568.P4459752484276426817

/-! ## A204568.P4652411231728528066

`A204572(eq[5, A131818(n+1)])`
-/

namespace A204568.P4652411231728528066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204568.P4652411231728528066

/-!
# A204569: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204569, there is no canonical definition to state claims against.
-/

/-! ## A204569.P11753477935364189480

`A204572(A374005(n+1))`
-/

namespace A204569.P11753477935364189480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A374005 (n + 1)).toNat

end

end A204569.P11753477935364189480

/-! ## A204569.P18160656575215815978

`A204572(Δ[A023545(n+1)])`
-/

namespace A204569.P18160656575215815978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (f1 (n + 1) - f1 n).toNat

end

end A204569.P18160656575215815978

/-!
# A204570: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204570, there is no canonical definition to state claims against.
-/

/-! ## A204570.P2409542699215494231

`A204572(A374007(n+1))`
-/

namespace A204570.P2409542699215494231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (A374007 (n + 1)).toNat

end

end A204570.P2409542699215494231

/-! ## A204570.P780463477983223874

`A204572(eq[7, A131818(n+1)])`
-/

namespace A204570.P780463477983223874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204570.P780463477983223874

/-! ## A204570.P11426706120036879936

`A204572(Δ[A023545(n+1)]+10)`
-/

namespace A204570.P11426706120036879936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204572 (f1 (n + 1) - f1 n + 10).toNat

end

end A204570.P11426706120036879936

/-!
# A204573: A204519(n)^2 = floor(A055851(n)/6): Squares which written in base 6, with some digit appended, yield another square.

The programs for A204573, the canonical program `A204573.P913580374745478678` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204573 has offset 1).

The definition of A204573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204573.P17963091272525877067

`A204519(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204573.P17963091272525877067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (n + 1) ^ 2

end

end A204573.P17963091272525877067

namespace A204573

/-- `A204519(n+1)²` -/
def P17963091272525877067.Spec : Prop :=
  ∀ n, P17963091272525877067.a n = A204573 (n + 1)

end A204573

/-! ## A204573.P913580374745478678

`floor(A055851(n+1)/6)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204573

/-- `floor(A055851(n+1)/6)` -/
def P913580374745478678.Spec : Prop :=
  ∀ n, P913580374745478678.a n = A204573 (n + 1)

theorem P913580374745478678.correct : P913580374745478678.Spec := by
  intro n
  simp only [A204573, Nat.add_sub_cancel]

end A204573

/-! ## A204573.P6486679829669829149

`A204519(A000027(n+1))^2`
-/

namespace A204573.P6486679829669829149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A000027 (n + 1)).toNat ^ 2

end

end A204573.P6486679829669829149

namespace A204573

/-- `A204519(A000027(n+1))^2` -/
def P6486679829669829149.Spec : Prop :=
  ∀ n, P6486679829669829149.a n = A204573 (n + 1)

end A204573

/-! ## A204573.P16349701116325718285

`A204519(A348776(n+1))^2`
-/

namespace A204573.P16349701116325718285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A348776 (n + 1)).toNat ^ 2

end

end A204573.P16349701116325718285

namespace A204573

/-- `A204519(A348776(n+1))^2` -/
def P16349701116325718285.Spec : Prop :=
  ∀ n, P16349701116325718285.a n = A204573 (n + 1)

end A204573

/-! ## A204573.P15617996900944996152

`A204519(n+1)^(A000007(n)+2)`
-/

namespace A204573.P15617996900944996152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204519 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A204573.P15617996900944996152

namespace A204573

/-- `A204519(n+1)^(A000007(n)+2)` -/
def P15617996900944996152.Spec : Prop :=
  ∀ n, P15617996900944996152.a n = (A204573 (n + 1) : ℚ)

end A204573

/-! ## A204573.P5384713314308934438

`A204519(n+1)^A020639(2*(n+1))`
-/

namespace A204573.P5384713314308934438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204519 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A204573.P5384713314308934438

namespace A204573

/-- `A204519(n+1)^A020639(2*(n+1))` -/
def P5384713314308934438.Spec : Prop :=
  ∀ n, P5384713314308934438.a n = (A204573 (n + 1) : ℚ)

end A204573

/-! ## A204573.P12768049684658438692

`A204519(n+1)^A000005(A126715(n))`
-/

namespace A204573.P12768049684658438692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204519 (n + 1) : ℚ) ^ (A000005 (A126715 n).toNat : ℤ)

end

end A204573.P12768049684658438692

namespace A204573

/-- `A204519(n+1)^A000005(A126715(n))` -/
def P12768049684658438692.Spec : Prop :=
  ∀ n, P12768049684658438692.a n = (A204573 (n + 1) : ℚ)

end A204573

/-! ## A204573.P14147062480844319820

`A204519(A000027(n+1))*A204519(n+1)`
-/

namespace A204573.P14147062480844319820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A000027 (n + 1)).toNat * A204519 (n + 1)

end

end A204573.P14147062480844319820

namespace A204573

/-- `A204519(A000027(n+1))*A204519(n+1)` -/
def P14147062480844319820.Spec : Prop :=
  ∀ n, P14147062480844319820.a n = A204573 (n + 1)

end A204573

/-! ## A204573.P17829854729685656435

`A204519(n+1)^A000005(A257244(2*n+1))`
-/

namespace A204573.P17829854729685656435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204519 (n + 1) : ℚ) ^ (A000005 (A257244 (2 * n + 1)).toNat : ℤ)

end

end A204573.P17829854729685656435

namespace A204573

/-- `A204519(n+1)^A000005(A257244(2*n+1))` -/
def P17829854729685656435.Spec : Prop :=
  ∀ n, P17829854729685656435.a n = (A204573 (n + 1) : ℚ)

end A204573

/-! ## A204573.P3577507219858217979

`(A204519(n+1)+A055672(A055672(n)))*A204519(n+1)`
-/

namespace A204573.P3577507219858217979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204519 (n + 1) + A055672 (A055672 n).toNat) * A204519 (n + 1)

end

end A204573.P3577507219858217979

namespace A204573

/-- `(A204519(n+1)+A055672(A055672(n)))*A204519(n+1)` -/
def P3577507219858217979.Spec : Prop :=
  ∀ n, P3577507219858217979.a n = A204573 (n + 1)

end A204573

/-! ## A204573.P17276768368566976844

`ogf((x^3+4x^4+16x^5+22x^6+4x^7+16x^8+x^9)/(1-99x^3+99x^6-x^9))`
-/

namespace A204573.P17276768368566976844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 4, 16, 22, 4, 16, 1] [1, 0, 0, -99, 0, 0, 99, 0, 0, -1] n

end

end A204573.P17276768368566976844

namespace A204573

/-- `ogf((x^3+4x^4+16x^5+22x^6+4x^7+16x^8+x^9)/(1-99x^3+99x^6-x^9))` -/
def P17276768368566976844.Spec : Prop :=
  ∀ n, P17276768368566976844.a n = A204573 (n + 1)

end A204573

/-! ## A204573.P10635495411982896951

`A204519(n+1)^A001316(A006519(∑[n+1]+1))`
-/

namespace A204573.P10635495411982896951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204519 (n + 1) : ℚ) ^ (A001316 (A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℤ)

end

end A204573.P10635495411982896951

namespace A204573

/-- `A204519(n+1)^A001316(A006519(∑[n+1]+1))` -/
def P10635495411982896951.Spec : Prop :=
  ∀ n, P10635495411982896951.a n = (A204573 (n + 1) : ℚ)

end A204573

/-!
# A204574: Numbers such that floor[a(n)^2/2] is a square (A001541), written in binary.

The programs for A204574, there is no canonical definition to state claims against.
-/

/-! ## A204574.P11982165699240484949

`A007088(sqrt(A055792(n)))`
-/

namespace A204574.P11982165699240484949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (Real.sqrt (A055792 n : ℝ))).toNat

end

end A204574.P11982165699240484949

/-! ## A204574.P11507565732016839821

`A007088(floor(sqrt(A098706(n))))`
-/

namespace A204574.P11507565732016839821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.sqrt (A098706 n)).toNat

end

end A204574.P11507565732016839821

/-! ## A204574.P15090959140364975189

`A007088(round(sqrt(A098706(n))))`
-/

namespace A204574.P15090959140364975189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (Real.sqrt (A098706 n : ℝ))).toNat

end

end A204574.P15090959140364975189

/-! ## A204574.P808268239755464614

`A007088(A204514(2*n+1)/2)`
-/

namespace A204574.P808268239755464614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A204514 (2 * n + 1) : ℚ) / 2)).toNat

end

end A204574.P808268239755464614

/-!
# A204575: Squares such that [a(n)/2] is again a square (A055792), written in binary.

The programs for A204575, there is no canonical definition to state claims against.
-/

/-! ## A204575.P14558983027219330173

`A007088(A055792(n))`
-/

namespace A204575.P14558983027219330173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A055792 n).toNat

end

end A204575.P14558983027219330173

/-!
# A204576: Floor[A055792(n-1)/2]=A084703(n-2) (truncated squares), written in binary.

The programs for A204576, there is no canonical definition to state claims against.
-/

/-! ## A204576.P12807328516788820898

`floor(A204575(n+1)/10)`
-/

namespace A204576.P12807328516788820898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204575 (n + 1) : ℚ) / 10⌋

end

end A204576.P12807328516788820898

/-!
# A204577: Sqrt(floor[A204575(n)/2]), written in binary.

The programs for A204577, there is no canonical definition to state claims against.
-/

/-! ## A204577.P74559677315068726

`A007088(A204512(Δ[n²]))`
-/

namespace A204577.P74559677315068726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A204512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A204577.P74559677315068726

/-! ## A204577.P3765542569347556840

`A007088(A135153(record[n*gcd(2, n)]))`
-/

namespace A204577.P3765542569347556840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A135153 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A204577.P3765542569347556840

/-! ## A204577.P5545798376556686492

`A007088(lcm(A000120(n), A215936(2*n)))`
-/

namespace A204577.P5545798376556686492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A000120 n) (A215936 (2 * n)))

end

end A204577.P5545798376556686492

/-! ## A204577.P15009683846528636147

`A007088(A215928(2*(n+2))%Δ[A001109(n)])`
-/

namespace A204577.P15009683846528636147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A215928 (2 * (n + 2))) (f1 (n + 1) - f1 n)).toNat

end

end A204577.P15009683846528636147

/-!
# A204578: Primes of the form 5^k-2.

The programs for A204578, there is no canonical definition to state claims against.
-/

/-! ## A204578.P13855989457251541746

`A000351(A109080(n+1))-2`
-/

namespace A204578.P13855989457251541746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A109080 (n + 1)).toNat - 2

end

end A204578.P13855989457251541746

/-!
# A204579: Triangle read by rows: matrix inverse of the central factorial numbers T(2*n, 2*k) (A036969).

The programs for A204579, the canonical program `A204579.P1862279654042700872` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204579 has offset 1).

The definition of A204579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204579.P1862279654042700872

`T(n-1,k-1)-row(n)²*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204579

/-- `T(n-1,k-1)-row(n)²*T(n-1,k)` -/
def P1862279654042700872.Spec : Prop :=
  ∀ n, P1862279654042700872.a n = A204579 (n + 1)

theorem P1862279654042700872.correct : P1862279654042700872.Spec := by
  intro n
  simp only [A204579, Nat.add_sub_cancel]

end A204579

/-! ## A204579.P12550629134565625852

`(-1)^(row(n)-col(n))*A008955(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A204579.P12550629134565625852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A008955 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat : ℚ)

end

end A204579.P12550629134565625852

namespace A204579

/-- `(-1)^(row(n)-col(n))*A008955(C(row(n)+1, 2)+row(n)-col(n))` -/
def P12550629134565625852.Spec : Prop :=
  ∀ n, P12550629134565625852.a n = (A204579 (n + 1) : ℚ)

end A204579

/-! ## A204579.P5758087948642746137

`T(n-1,k-1)-row(n)*row(n)*T(n-1,k)` with `a(0)=1`
-/

namespace A204579.P5758087948642746137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triRow n * SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUp a n

end

end A204579.P5758087948642746137

namespace A204579

/-- `T(n-1,k-1)-row(n)*row(n)*T(n-1,k)` -/
def P5758087948642746137.Spec : Prop :=
  ∀ n, P5758087948642746137.a n = A204579 (n + 1)

theorem P5758087948642746137.correct : P5758087948642746137.Spec := by
  intro n
  simp only [A204579, Nat.add_sub_cancel, A204579.P5758087948642746137.a, A204579.P1862279654042700872.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204579

/-! ## A204579.P12737717529964579847

`A008955(A061579(n))*A097807(n)`
-/

namespace A204579.P12737717529964579847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A061579 n).toNat * A097807 n

end

end A204579.P12737717529964579847

namespace A204579

/-- `A008955(A061579(n))*A097807(n)` -/
def P12737717529964579847.Spec : Prop :=
  ∀ n, P12737717529964579847.a n = A204579 (n + 1)

end A204579

/-! ## A204579.P1856847541243529315

`A097807(n)*A269944(A014132(n+1))`
-/

namespace A204579.P1856847541243529315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A269944 (A014132 (n + 1)).toNat

end

end A204579.P1856847541243529315

namespace A204579

/-- `A097807(n)*A269944(A014132(n+1))` -/
def P1856847541243529315.Spec : Prop :=
  ∀ n, P1856847541243529315.a n = A204579 (n + 1)

end A204579

/-! ## A204579.P15329172682405447028

`A008955(A061579(n))*A033999(A025581(n))`
-/

namespace A204579.P15329172682405447028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A061579 n).toNat * A033999 (A025581 n).toNat

end

end A204579.P15329172682405447028

namespace A204579

/-- `A008955(A061579(n))*A033999(A025581(n))` -/
def P15329172682405447028.Spec : Prop :=
  ∀ n, P15329172682405447028.a n = A204579 (n + 1)

end A204579

/-! ## A204579.P7801142637497492584

`A008955(A061579(n))*A062157(A004736(n+1))`
-/

namespace A204579.P7801142637497492584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A061579 n).toNat * A062157 (A004736 (n + 1)).toNat

end

end A204579.P7801142637497492584

namespace A204579

/-- `A008955(A061579(n))*A062157(A004736(n+1))` -/
def P7801142637497492584.Spec : Prop :=
  ∀ n, P7801142637497492584.a n = A204579 (n + 1)

end A204579

/-! ## A204579.P3495742254144825583

`A057428(n)^A025581(n)*A008955(A061579(n))`
-/

namespace A204579.P3495742254144825583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A025581 n : ℤ) * (A008955 (A061579 n).toNat : ℚ)

end

end A204579.P3495742254144825583

namespace A204579

/-- `A057428(n)^A025581(n)*A008955(A061579(n))` -/
def P3495742254144825583.Spec : Prop :=
  ∀ n, P3495742254144825583.a n = (A204579 (n + 1) : ℚ)

end A204579

/-!
# A204581: Nearest integer to 100*1.01^n.

The programs for A204581, there is no canonical definition to state claims against.
-/

/-! ## A204581.P11220039923738963322

`lt[A317396(A052330(n)), A056142(n)]`
-/

namespace A204581.P11220039923738963322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317396 (A052330 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204581.P11220039923738963322

/-! ## A204581.P2870497736805088925

`lt[A230099(n)-n, A059995(A131361(n))]`
-/

namespace A204581.P2870497736805088925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A131361 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204581.P2870497736805088925

/-! ## A204581.P5687644355038814429

`A325361(n+1)+A002283(A363001(2*(n+1)))`
-/

namespace A204581.P5687644355038814429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1) + A002283 (A363001 (2 * (n + 1))).toNat

end

end A204581.P5687644355038814429

/-! ## A204581.P15542845272676732660

`A261906(A261906(n+2)+88)`
-/

namespace A204581.P15542845272676732660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (A261906 (n + 2) + 88).toNat

end

end A204581.P15542845272676732660

/-! ## A204581.P16672603376791118386

`A301516(n+1)+A185284(Δ[n²])`
-/

namespace A204581.P16672603376791118386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (n + 1) + A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A204581.P16672603376791118386

/-!
# A204582: Nearest integer to 100*1.02^n.

The programs for A204582, there is no canonical definition to state claims against.
-/

/-! ## A204582.P16853254962126147701

`A204581(2*n)%A164689(2*n+3)`
-/

namespace A204582.P16853254962126147701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204581 (2 * n)) (A164689 (2 * n + 3))

end

end A204582.P16853254962126147701

/-! ## A204582.P6749712172816147984

`A204581(∑{e}[2*A007138(n+1), n^#])`
-/

namespace A204582.P6749712172816147984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204581 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, n ^ Nat.factorization (f1 n).natAbs p)

end

end A204582.P6749712172816147984

/-! ## A204582.P15983789501793010081

`A204581(2*n)+A010893(A016813(n))`
-/

namespace A204582.P15983789501793010081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204581 (2 * n) + A010893 ((A016813 n).toNat + 13)

end

end A204582.P15983789501793010081

/-! ## A204582.P16001438384340677284

`A204581(2*n)+A010054(A007488(n+1))`
-/

namespace A204582.P16001438384340677284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204581 (2 * n) + A010054 (A007488 (n + 1)).toNat

end

end A204582.P16001438384340677284

/-! ## A204582.P8797652562601949029

`A204581(2*n)%A014363(A261516(n))`
-/

namespace A204582.P8797652562601949029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204581 (2 * n)) (A014363 (A261516 n).toNat)

end

end A204582.P8797652562601949029

/-!
# A204583: Nearest integer to 100*1.03^n.

The programs for A204583, there is no canonical definition to state claims against.
-/

/-! ## A204583.P2246244566919170141

`A204581(3*n)-A372258(A052458(n+2))`
-/

namespace A204583.P2246244566919170141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204581 (3 * n) - A372258 (A052458 (n + 2)).toNat

end

end A204583.P2246244566919170141

/-! ## A204583.P15133362522240697009

`A301516(3*n+1)+A261488(A108639(n+1))`
-/

namespace A204583.P15133362522240697009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (3 * n + 1) + A261488 (A108639 (n + 1)).toNat

end

end A204583.P15133362522240697009

/-! ## A204583.P15669184975624523568

`A204581(3*n)-A334956(A245501(2*n+1))`
-/

namespace A204583.P15669184975624523568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204581 (3 * n) - A334956 (A245501 (2 * n + 1)).toNat

end

end A204583.P15669184975624523568

/-!
# A204584: Nearest integer to 100*1.04^n.

The programs for A204584, there is no canonical definition to state claims against.
-/

/-! ## A204584.P16611703598284159984

`A313718(n+4)+A172305(A255426(n+1))`
-/

namespace A204584.P16611703598284159984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313718 (n + 4) + A172305 (A255426 (n + 1)).toNat

end

end A204584.P16611703598284159984

/-! ## A204584.P7644499296135647234

`A135600(3*n+1)+A000523(A277203(n+1))`
-/

namespace A204584.P7644499296135647234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135600 (3 * n + 1) + A000523 (A277203 (n + 1)).toNat

end

end A204584.P7644499296135647234

/-!
# A204586: Nearest integer to 100*1.06^n.

The programs for A204586, there is no canonical definition to state claims against.
-/

/-! ## A204586.P14697879367612493701

`A204582(3*n)-A124010(A144301(n))`
-/

namespace A204586.P14697879367612493701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204582 (3 * n) - A124010 (A144301 n).toNat

end

end A204586.P14697879367612493701

/-!
# A204587: Nearest integer to 100*1.07^n.

The programs for A204587, there is no canonical definition to state claims against.
-/

/-! ## A204587.P9036452050942488195

`A320840(A182112(2*(n+2)))+89`
-/

namespace A204587.P9036452050942488195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320840 (A182112 (2 * (n + 2))).toNat + 89

end

end A204587.P9036452050942488195

/-!
# A204588: Nearest integer to 100*1.08^n.

The programs for A204588, there is no canonical definition to state claims against.
-/

/-! ## A204588.P6156238109983745251

`∑[A054725(A204367(n+1))]+90`
-/

namespace A204588.P6156238109983745251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A204367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 90

end

end A204588.P6156238109983745251

/-! ## A204588.P13270167339730448889

`A204584(2*n)-A225770(A346754(n))`
-/

namespace A204588.P13270167339730448889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204584 (2 * n) - A225770 (A346754 n).toNat

end

end A204588.P13270167339730448889

/-!
# A204589: Nearest integer to 100*1.09^n.

The programs for A204589, there is no canonical definition to state claims against.
-/

/-! ## A204589.P5969669166554694839

`A204585(2*n)-A334956(A334958(n+2))+1-A055721(n+1)`
-/

namespace A204589.P5969669166554694839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204585 (2 * n) - A334956 (A334958 (n + 2)).toNat + 1 - A055721 (n + 1)

end

end A204589.P5969669166554694839

/-! ## A204589.P9753832951590570318

`A352440(n+1)+A352420(A218271(n))`
-/

namespace A204589.P9753832951590570318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352440 (n + 1) + A352420 (A218271 n).toNat

end

end A204589.P9753832951590570318

/-!
# A204590: Nearest integer to 100*1.1^n.

The programs for A204590, there is no canonical definition to state claims against.
-/

/-! ## A204590.P14271059955087907693

`A204585(2*n)-A334956(A334958(n+2))`
-/

namespace A204590.P14271059955087907693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204585 (2 * n) - A334956 (A334958 (n + 2)).toNat

end

end A204590.P14271059955087907693

/-!
# A204591: Nearest integer to 1.1^n.

The programs for A204591, there is no canonical definition to state claims against.
-/

/-! ## A204591.P11364709305996055782

`A105209(A240840(n))`
-/

namespace A204591.P11364709305996055782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A240840 n).toNat

end

end A204591.P11364709305996055782

/-! ## A204591.P9382202714769357356

`A048766(A240840(n)+A167932(n))`
-/

namespace A204591.P9382202714769357356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A240840 n + A167932 n).toNat

end

end A204591.P9382202714769357356

/-! ## A204591.P6466184560367850398

`A048766(A240840(n)+A000009(n+1))`
-/

namespace A204591.P6466184560367850398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A240840 n + A000009 (n + 1)).toNat

end

end A204591.P6466184560367850398

/-! ## A204591.P2135931695947019312

`A048766(A093327(n)+A064628(n))`
-/

namespace A204591.P2135931695947019312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A093327 n + A064628 n).toNat

end

end A204591.P2135931695947019312

/-! ## A204591.P11775994429991747423

`floor(∑[A284644(A029744(n+1))]^(1/4))`
-/

namespace A204591.P11775994429991747423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284644 (A029744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)⌋

end

end A204591.P11775994429991747423

/-!
# A204592: Primes p such that (p+1)/2, (p+2)/3, (p+3)/4 and (p+4)/5 are also prime.

The programs for A204592, there is no canonical definition to state claims against.
-/

/-! ## A204592.P11835680490106304576

`∩[A163573(n+1), A350699(n+1)]`
-/

namespace A204592.P11835680490106304576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204592.P11835680490106304576

/-! ## A204592.P4341859765043703422

`∩[A071367(n+1), A163573(n+1)]`
-/

namespace A204592.P4341859765043703422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204592.P4341859765043703422

/-! ## A204592.P11955829485984509687

`∩[A071367(n+1), A278585(n+1)+1]`
-/

namespace A204592.P11955829485984509687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278585 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204592.P11955829485984509687

/-! ## A204592.P16584817330090513558

`∩[A350675(A350690(n+1)), A350699(n+3)]`
-/

namespace A204592.P16584817330090513558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (A350690 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350699 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204592.P16584817330090513558

/-!
# A204599: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204599, there is no canonical definition to state claims against.
-/

/-! ## A204599.P4765050318143759615

`A204607((n+1)²+n²)`
-/

namespace A204599.P4765050318143759615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 ((n + 1) ^ 2 + n ^ 2)

end

end A204599.P4765050318143759615

/-! ## A204599.P8207548331167787335

`lcm(2, A204607(A001844(n)))`
-/

namespace A204599.P8207548331167787335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204607 (A001844 n).toNat)

end

end A204599.P8207548331167787335

/-! ## A204599.P10051733003856370152

`record[A003982(n)*A204607(n+1)]`
-/

namespace A204599.P10051733003856370152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204599.P10051733003856370152

/-! ## A204599.P1430155071737876642

`record[gcd(A037012(n), A204607(n+1))]`
-/

namespace A204599.P1430155071737876642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A204607 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204599.P1430155071737876642

/-! ## A204599.P7297741790342547310

`A204607(A001844(n))+A185284(n)`
-/

namespace A204599.P7297741790342547310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A001844 n).toNat + A185284 n

end

end A204599.P7297741790342547310

