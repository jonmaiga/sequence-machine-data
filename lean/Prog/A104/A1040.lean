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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104001: Triangle T(n,k) read by rows: number of permutations in S_n avoiding all k-length patterns starting with fixed m, 2

The programs for A104001, the canonical program `A104001.P9549142774925648266` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104001 has offset 3).

The definition of A104001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104001.P9549142774925648266

`A137268(A014132(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A104001

/-- `A137268(A014132(n+1))` -/
def P9549142774925648266.Spec : Prop :=
  ∀ n, P9549142774925648266.a n = A104001 (n + 3)

theorem P9549142774925648266.correct : P9549142774925648266.Spec := by
  intro n
  simp only [A104001, Nat.add_sub_cancel]

end A104001

/-! ## A104001.P5712719903207739942

`A137268(A007401(n+2))`
-/

namespace A104001.P5712719903207739942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137268 (A007401 (n + 2)).toNat

end

end A104001.P5712719903207739942

namespace A104001

/-- `A137268(A007401(n+2))` -/
def P5712719903207739942.Spec : Prop :=
  ∀ n, P5712719903207739942.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P3204263192820563446

`A299504(eq[0, A103451(n)])`
-/

namespace A104001.P3204263192820563446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104001.P3204263192820563446

namespace A104001

/-- `A299504(eq[0, A103451(n)])` -/
def P3204263192820563446.Spec : Prop :=
  ∀ n, P3204263192820563446.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P15754769159022731529

`A299504(eq[0, A103452(n)])`
-/

namespace A104001.P15754769159022731529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104001.P15754769159022731529

namespace A104001

/-- `A299504(eq[0, A103452(n)])` -/
def P15754769159022731529.Spec : Prop :=
  ∀ n, P15754769159022731529.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P10505302847410130358

`A299504(2*A014132(n+1)-n)`
-/

namespace A104001.P10505302847410130358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A104001.P10505302847410130358

namespace A104001

/-- `A299504(2*A014132(n+1)-n)` -/
def P10505302847410130358.Spec : Prop :=
  ∀ n, P10505302847410130358.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P13792876306953603466

`A299504(A002024(n+1)+A007401(n+1)+2)`
-/

namespace A104001.P13792876306953603466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (A002024 (n + 1) + (A007401 (n + 1) + 2)).toNat

end

end A104001.P13792876306953603466

namespace A104001

/-- `A299504(A002024(n+1)+A007401(n+1)+2)` -/
def P13792876306953603466.Spec : Prop :=
  ∀ n, P13792876306953603466.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P3082213487197362490

`A299504(A002024(n+1)+A181133(n+1)+2)`
-/

namespace A104001.P3082213487197362490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (A002024 (n + 1) + (A181133 (n + 1) + 2)).toNat

end

end A104001.P3082213487197362490

namespace A104001

/-- `A299504(A002024(n+1)+A181133(n+1)+2)` -/
def P3082213487197362490.Spec : Prop :=
  ∀ n, P3082213487197362490.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P10634732621828432306

`A299504(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A104001.P10634732621828432306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A104001.P10634732621828432306

namespace A104001

/-- `A299504(A014132(n+1)+A014132(n+1)-n)` -/
def P10634732621828432306.Spec : Prop :=
  ∀ n, P10634732621828432306.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P2504771803912128852

`A344902(A099627(n))`
-/

namespace A104001.P2504771803912128852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344902 (A099627 n).toNat

end

end A104001.P2504771803912128852

namespace A104001

/-- `A344902(A099627(n))` -/
def P2504771803912128852.Spec : Prop :=
  ∀ n, P2504771803912128852.a n = A104001 (n + 3)

end A104001

/-! ## A104001.P13106588449790534140

`A344902(A373289(n+1))`
-/

namespace A104001.P13106588449790534140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344902 (A373289 (n + 1)).toNat

end

end A104001.P13106588449790534140

namespace A104001

/-- `A344902(A373289(n+1))` -/
def P13106588449790534140.Spec : Prop :=
  ∀ n, P13106588449790534140.a n = A104001 (n + 3)

end A104001

/-!
# A104002: Triangle T(n,k) read by rows: number of permutations in S_n avoiding all k-length patterns that start with 1 except one fixed pattern and containing it exactly once.

The programs for A104002, the canonical program `A104002.P1106834138281463142` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104002 has offset 2).

The definition of A104002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104002.P1106834138281463142

`A004736(n+1)*A002260(n+1)^(A004736(n+1)-1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104002

/-- `A004736(n+1)*A002260(n+1)^(A004736(n+1)-1)` -/
def P1106834138281463142.Spec : Prop :=
  ∀ n, P1106834138281463142.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P9827412459058935376

`A004736(n+1)*A009998(n)`
-/

namespace A104002.P9827412459058935376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A009998 n

end

end A104002.P9827412459058935376

namespace A104002

/-- `A004736(n+1)*A009998(n)` -/
def P9827412459058935376.Spec : Prop :=
  ∀ n, P9827412459058935376.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P5248683360599441237

`(A025581(n)+1)*A009998(n)`
-/

namespace A104002.P5248683360599441237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A009998 n

end

end A104002.P5248683360599441237

namespace A104002

/-- `(A025581(n)+1)*A009998(n)` -/
def P5248683360599441237.Spec : Prop :=
  ∀ n, P5248683360599441237.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P15949292422166892904

`(log2(A130321(n))+1)*A009998(n)`
-/

namespace A104002.P15949292422166892904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n : ℝ) + 1) * (A009998 n : ℝ)

end

end A104002.P15949292422166892904

namespace A104002

/-- `(log2(A130321(n))+1)*A009998(n)` -/
def P15949292422166892904.Spec : Prop :=
  ∀ n, P15949292422166892904.a n = (A104002 (n + 2) : ℝ)

end A104002

/-! ## A104002.P6971620411644033487

`ceil(A099375(n)/2)*A009998(n)`
-/

namespace A104002.P6971620411644033487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A009998 n

end

end A104002.P6971620411644033487

namespace A104002

/-- `ceil(A099375(n)/2)*A009998(n)` -/
def P6971620411644033487.Spec : Prop :=
  ∀ n, P6971620411644033487.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P1786041132296477866

`A004736(n+1)*A009999(A061579(n))`
-/

namespace A104002.P1786041132296477866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A009999 (A061579 n).toNat

end

end A104002.P1786041132296477866

namespace A104002

/-- `A004736(n+1)*A009999(A061579(n))` -/
def P1786041132296477866.Spec : Prop :=
  ∀ n, P1786041132296477866.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P15800239640382891332

`A004248(A014132(n+1))*A004736(n+1)`
-/

namespace A104002.P15800239640382891332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A014132 (n + 1)).toNat * A004736 (n + 1)

end

end A104002.P15800239640382891332

namespace A104002

/-- `A004248(A014132(n+1))*A004736(n+1)` -/
def P15800239640382891332.Spec : Prop :=
  ∀ n, P15800239640382891332.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P2397238600588646598

`A051128(n+1)/A009999(n)*A009998(n)`
-/

namespace A104002.P2397238600588646598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) / (A009999 n : ℚ) * (A009998 n : ℚ)

end

end A104002.P2397238600588646598

namespace A104002

/-- `A051128(n+1)/A009999(n)*A009998(n)` -/
def P2397238600588646598.Spec : Prop :=
  ∀ n, P2397238600588646598.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P9107657414247238045

`A004736(n+1)/A002260(n+1)*A051129(n+1)`
-/

namespace A104002.P9107657414247238045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A051129 (n + 1) : ℚ)

end

end A104002.P9107657414247238045

namespace A104002

/-- `A004736(n+1)/A002260(n+1)*A051129(n+1)` -/
def P9107657414247238045.Spec : Prop :=
  ∀ n, P9107657414247238045.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P4657856402176565738

`A051129(n+1)/A002260(n+1)*A002260(A278818(n))`
-/

namespace A104002.P4657856402176565738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A002260 (A278818 n).toNat : ℚ)

end

end A104002.P4657856402176565738

namespace A104002

/-- `A051129(n+1)/A002260(n+1)*A002260(A278818(n))` -/
def P4657856402176565738.Spec : Prop :=
  ∀ n, P4657856402176565738.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P4086564303023958750

`A002260(A038722(n+1))/A002260(n+1)*A051129(n+1)`
-/

namespace A104002.P4086564303023958750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (A038722 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A051129 (n + 1) : ℚ)

end

end A104002.P4086564303023958750

namespace A104002

/-- `A002260(A038722(n+1))/A002260(n+1)*A051129(n+1)` -/
def P4086564303023958750.Spec : Prop :=
  ∀ n, P4086564303023958750.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P17008404976294297205

`A134574(n+1)/A002260(n+1)`
-/

namespace A104002.P17008404976294297205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134574 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A104002.P17008404976294297205

namespace A104002

/-- `A134574(n+1)/A002260(n+1)` -/
def P17008404976294297205.Spec : Prop :=
  ∀ n, P17008404976294297205.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P5808512356339176535

`A199673(n+1)/A181511(n+1)`
-/

namespace A104002.P5808512356339176535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A181511 (n + 1) : ℚ)

end

end A104002.P5808512356339176535

namespace A104002

/-- `A199673(n+1)/A181511(n+1)` -/
def P5808512356339176535.Spec : Prop :=
  ∀ n, P5808512356339176535.a n = (A104002 (n + 2) : ℚ)

end A104002

/-! ## A104002.P1042909773972439114

`A000005(A130321(n))*A009998(n)`
-/

namespace A104002.P1042909773972439114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A009998 n

end

end A104002.P1042909773972439114

namespace A104002

/-- `A000005(A130321(n))*A009998(n)` -/
def P1042909773972439114.Spec : Prop :=
  ∀ n, P1042909773972439114.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P17212580659197918390

`A000005(A130321(n))*A009999(A061579(n))`
-/

namespace A104002.P17212580659197918390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A009999 (A061579 n).toNat

end

end A104002.P17212580659197918390

namespace A104002

/-- `A000005(A130321(n))*A009999(A061579(n))` -/
def P17212580659197918390.Spec : Prop :=
  ∀ n, P17212580659197918390.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P4367740840095447859

`A000005(A130321(n))*A004248(A014132(n+1))`
-/

namespace A104002.P4367740840095447859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A004248 (A014132 (n + 1)).toNat

end

end A104002.P4367740840095447859

namespace A104002

/-- `A000005(A130321(n))*A004248(A014132(n+1))` -/
def P4367740840095447859.Spec : Prop :=
  ∀ n, P4367740840095447859.a n = A104002 (n + 2)

end A104002

/-! ## A104002.P12644742723811718352

`A000005(A130321(n))*A051129(A122797(n+1))`
-/

namespace A104002.P12644742723811718352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A051129 (A122797 (n + 1)).toNat

end

end A104002.P12644742723811718352

namespace A104002

/-- `A000005(A130321(n))*A051129(A122797(n+1))` -/
def P12644742723811718352.Spec : Prop :=
  ∀ n, P12644742723811718352.a n = A104002 (n + 2)

end A104002

/-!
# A104003: (3/4)*(27*n^2-137*n+180)*n^(n-6)*(2*n-6)!/(n-3)!.

The programs for A104003, the canonical program `A104003.P8364942722572305908` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104003 has offset 4).

The definition of A104003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104003.P8364942722572305908

`3/(4*(n+1)!)*(27*(n+4)²-137*(n+4)+180)*(n+4)^(n-2)*(2*(n+4)-6)!`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104003

/-- `3/(4*(n+1)!)*(27*(n+4)²-137*(n+4)+180)*(n+4)^(n-2)*(2*(n+4)-6)!` -/
def P8364942722572305908.Spec : Prop :=
  ∀ n, P8364942722572305908.a n = (A104003 (n + 4) : ℚ)

end A104003

/-! ## A104003.P15990369637510594871

`3/4*(27*(n+4)²-137*(n+4)+180)*(n+4)^(n-2)*(2*(n+4)-6)!/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104003.P15990369637510594871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * ((27 * (n + 4) ^ 2 : ℤ) - (137 * (n + 4) : ℤ) + 180 : ℚ) * (n + 4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.factorial ((2 * (n + 4) : ℤ) - 6).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A104003.P15990369637510594871

namespace A104003

/-- `3/4*(27*(n+4)²-137*(n+4)+180)*(n+4)^(n-2)*(2*(n+4)-6)!/(n+1)!` -/
def P15990369637510594871.Spec : Prop :=
  ∀ n, P15990369637510594871.a n = (A104003 (n + 4) : ℚ)

end A104003

/-!
# A104004: Expansion of (1-x) * (1+x) / ((1-2*x)*(1-x-x^2)).

The programs for A104004, the canonical program `A104004.P7340394545924989123` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104004 has offset 0).

The definition of A104004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-3x+x^2+2x^3))` (program `A104004.P7340394545924989123`, by `A104004.P7340394545924989123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104004.P7340394545924989123

`ogf((1-x^2)/(1-3x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104004

/-- `ogf((1-x^2)/(1-3x+x^2+2x^3))` -/
def P7340394545924989123.Spec : Prop :=
  ∀ n, P7340394545924989123.a n = A104004 n

theorem P7340394545924989123.correct : P7340394545924989123.Spec := by
  intro n
  simp only [A104004]

end A104004

/-! ## A104004.P194881169287195683

`A221719(n)+1`
-/

namespace A104004.P194881169287195683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221719 n + 1

end

end A104004.P194881169287195683

namespace A104004

/-- `A221719(n)+1` -/
def P194881169287195683.Spec : Prop :=
  ∀ n, P194881169287195683.a n = A104004 n

end A104004

/-! ## A104004.P15042827206847586067

`abs(Δ[Δ[A100321(n)]])`
-/

namespace A104004.P15042827206847586067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A104004.P15042827206847586067

namespace A104004

/-- `abs(Δ[Δ[A100321(n)]])` -/
def P15042827206847586067.Spec : Prop :=
  ∀ n, P15042827206847586067.a n = A104004 n

end A104004

/-! ## A104004.P16888641191765334553

`A008466(n+1)+2^n`
-/

namespace A104004.P16888641191765334553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 1) + (2 ^ n : ℤ)

end

end A104004.P16888641191765334553

namespace A104004

/-- `A008466(n+1)+2^n` -/
def P16888641191765334553.Spec : Prop :=
  ∀ n, P16888641191765334553.a n = A104004 n

end A104004

/-! ## A104004.P13541793608168753389

`A027934(n+2)-2^n`
-/

namespace A104004.P13541793608168753389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 2) - (2 ^ n : ℤ)

end

end A104004.P13541793608168753389

namespace A104004

/-- `A027934(n+2)-2^n` -/
def P13541793608168753389.Spec : Prop :=
  ∀ n, P13541793608168753389.a n = A104004 n

end A104004

/-! ## A104004.P6045000146736239705

`3*2^n-A000045(n+3)`
-/

namespace A104004.P6045000146736239705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - A000045 (n + 3)

end

end A104004.P6045000146736239705

namespace A104004

/-- `3*2^n-A000045(n+3)` -/
def P6045000146736239705.Spec : Prop :=
  ∀ n, P6045000146736239705.a n = A104004 n

end A104004

/-! ## A104004.P16868664574009921445

`A000045(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A104004.P16868664574009921445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 n + 2 * a (n - 1)

end

end A104004.P16868664574009921445

namespace A104004

/-- `A000045(n)+2*a(n-1)` -/
def P16868664574009921445.Spec : Prop :=
  ∀ n, P16868664574009921445.a n = A104004 n

end A104004

/-! ## A104004.P13663404004779908342

`A000032(n)+4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A104004.P13663404004779908342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000032 n + 4 * a (n - 2)

end

end A104004.P13663404004779908342

namespace A104004

/-- `A000032(n)+4*a(n-2)` -/
def P13663404004779908342.Spec : Prop :=
  ∀ n, P13663404004779908342.a n = A104004 n

end A104004

/-! ## A104004.P43426671191714180

`a(n-1)+Δ[A000045(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A104004.P43426671191714180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n + a (n - 1))

end

end A104004.P43426671191714180

namespace A104004

/-- `a(n-1)+Δ[A000045(n+1)]+a(n-1)` -/
def P43426671191714180.Spec : Prop :=
  ∀ n, P43426671191714180.a n = A104004 n

end A104004

/-! ## A104004.P10218949828103199183

`A232580(n)+A126646(n)`
-/

namespace A104004.P10218949828103199183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A126646 n

end

end A104004.P10218949828103199183

namespace A104004

/-- `A232580(n)+A126646(n)` -/
def P10218949828103199183.Spec : Prop :=
  ∀ n, P10218949828103199183.a n = A104004 n

end A104004

/-! ## A104004.P9117589159254640142

`A227200(n)+A175660(n)`
-/

namespace A104004.P9117589159254640142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227200 n + A175660 n

end

end A104004.P9117589159254640142

namespace A104004

/-- `A227200(n)+A175660(n)` -/
def P9117589159254640142.Spec : Prop :=
  ∀ n, P9117589159254640142.a n = A104004 n

end A104004

/-! ## A104004.P11828287658197254259

`A007283(n)-A020695(n)`
-/

namespace A104004.P11828287658197254259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A020695 n

end

end A104004.P11828287658197254259

namespace A104004

/-- `A007283(n)-A020695(n)` -/
def P11828287658197254259.Spec : Prop :=
  ∀ n, P11828287658197254259.a n = A104004 n

end A104004

/-! ## A104004.P6434546737834696679

`A033484(n)-A001911(n)`
-/

namespace A104004.P6434546737834696679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A001911 n

end

end A104004.P6434546737834696679

namespace A104004

/-- `A033484(n)-A001911(n)` -/
def P6434546737834696679.Spec : Prop :=
  ∀ n, P6434546737834696679.a n = A104004 n

end A104004

/-! ## A104004.P10835478635064982277

`A027973(n)-A027934(n)`
-/

namespace A104004.P10835478635064982277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n - A027934 n

end

end A104004.P10835478635064982277

namespace A104004

/-- `A027973(n)-A027934(n)` -/
def P10835478635064982277.Spec : Prop :=
  ∀ n, P10835478635064982277.a n = A104004 n

end A104004

/-! ## A104004.P5873317697725892920

`A164094(n)-A018910(n)`
-/

namespace A104004.P5873317697725892920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n - A018910 n

end

end A104004.P5873317697725892920

namespace A104004

/-- `A164094(n)-A018910(n)` -/
def P5873317697725892920.Spec : Prop :=
  ∀ n, P5873317697725892920.a n = A104004 n

end A104004

/-! ## A104004.P11028684062412562774

`A181565(n)-A048577(n)`
-/

namespace A104004.P11028684062412562774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n - A048577 n

end

end A104004.P11028684062412562774

namespace A104004

/-- `A181565(n)-A048577(n)` -/
def P11028684062412562774.Spec : Prop :=
  ∀ n, P11028684062412562774.a n = A104004 n

end A104004

/-! ## A104004.P17953981632964690917

`∑[A027934(n)+A011782(n)]`
-/

namespace A104004.P17953981632964690917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104004.P17953981632964690917

namespace A104004

/-- `∑[A027934(n)+A011782(n)]` -/
def P17953981632964690917.Spec : Prop :=
  ∀ n, P17953981632964690917.a n = A104004 n

end A104004

/-! ## A104004.P8534271204884446678

`A099036(n+1)+A008466(n)`
-/

namespace A104004.P8534271204884446678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 1) + A008466 n

end

end A104004.P8534271204884446678

namespace A104004

/-- `A099036(n+1)+A008466(n)` -/
def P8534271204884446678.Spec : Prop :=
  ∀ n, P8534271204884446678.a n = A104004 n

end A104004

/-! ## A104004.P8349453209669840722

`A232580(n)+A000225(n+1)`
-/

namespace A104004.P8349453209669840722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A000225 (n + 1)

end

end A104004.P8349453209669840722

namespace A104004

/-- `A232580(n)+A000225(n+1)` -/
def P8349453209669840722.Spec : Prop :=
  ∀ n, P8349453209669840722.a n = A104004 n

end A104004

/-! ## A104004.P8671461299046520888

`A131577(n)+A116712(n+1)`
-/

namespace A104004.P8671461299046520888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A116712 (n + 1)

end

end A104004.P8671461299046520888

namespace A104004

/-- `A131577(n)+A116712(n+1)` -/
def P8671461299046520888.Spec : Prop :=
  ∀ n, P8671461299046520888.a n = A104004 n

end A104004

/-!
# A104005: a(n+3) = a(n+2) + 3a(n+1) - 2a(n); a(0) = 1, a(1) = -1, a(2)= 3.

The programs for A104005, the canonical program `A104005.P11895213451388241575` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104005 has offset 0).

The definition of A104005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104005.P7434025919295921521

`ogf((1-2x+x^2)/(1-x-3x^2+2x^3))`
-/

namespace A104005.P7434025919295921521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -1, -3, 2] n

end

end A104005.P7434025919295921521

namespace A104005

/-- `ogf((1-2x+x^2)/(1-x-3x^2+2x^3))` -/
def P7434025919295921521.Spec : Prop :=
  ∀ n, P7434025919295921521.a n = A104005 n

end A104005

/-! ## A104005.P11895213451388241575

`Δ[A052964(abs(1-n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104005

/-- `Δ[A052964(abs(1-n))]` -/
def P11895213451388241575.Spec : Prop :=
  ∀ n, P11895213451388241575.a n = A104005 n

theorem P11895213451388241575.correct : P11895213451388241575.Spec := by
  intro n
  simp only [A104005]

end A104005

/-! ## A104005.P9775277657302670375

`Δ[A054877(n+1)/2]`
-/

namespace A104005.P9775277657302670375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054877 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104005.P9775277657302670375

namespace A104005

/-- `Δ[A054877(n+1)/2]` -/
def P9775277657302670375.Spec : Prop :=
  ∀ n, P9775277657302670375.a n = (A104005 n : ℚ)

end A104005

/-! ## A104005.P16352404923718724646

`2^n-A052964(n+1)`
-/

namespace A104005.P16352404923718724646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A052964 (n + 1)

end

end A104005.P16352404923718724646

namespace A104005

/-- `2^n-A052964(n+1)` -/
def P16352404923718724646.Spec : Prop :=
  ∀ n, P16352404923718724646.a n = A104005 n

end A104005

/-! ## A104005.P464194853199817482

`A052964(n)+Δ[A054877(n)-A052964(n)]`
-/

namespace A104005.P464194853199817482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n - A052964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 n + (f1 (n + 1) - f1 n)

end

end A104005.P464194853199817482

namespace A104005

/-- `A052964(n)+Δ[A054877(n)-A052964(n)]` -/
def P464194853199817482.Spec : Prop :=
  ∀ n, P464194853199817482.a n = A104005 n

end A104005

/-! ## A104005.P13109042520105693139

`A001045(n+1)+A001045(n)-A052964(n+1)`
-/

namespace A104005.P13109042520105693139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A052964 (n + 1))

end

end A104005.P13109042520105693139

namespace A104005

/-- `A001045(n+1)+A001045(n)-A052964(n+1)` -/
def P13109042520105693139.Spec : Prop :=
  ∀ n, P13109042520105693139.a n = A104005 n

end A104005

/-! ## A104005.P2352520218497246794

`Δ[abs(A084178(n))]`
-/

namespace A104005.P2352520218497246794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084178 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104005.P2352520218497246794

namespace A104005

/-- `Δ[abs(A084178(n))]` -/
def P2352520218497246794.Spec : Prop :=
  ∀ n, P2352520218497246794.a n = A104005 n

end A104005

/-! ## A104005.P11450657499124211046

`Δ[Δ[A052964(n)-A054877(n)]]`
-/

namespace A104005.P11450657499124211046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 n - A054877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104005.P11450657499124211046

namespace A104005

/-- `Δ[Δ[A052964(n)-A054877(n)]]` -/
def P11450657499124211046.Spec : Prop :=
  ∀ n, P11450657499124211046.a n = A104005 n

end A104005

/-! ## A104005.P14174582201303416193

`A000051(n+1)-(A052964(n+1)+A000051(n))`
-/

namespace A104005.P14174582201303416193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A052964 (n + 1) + A000051 n)

end

end A104005.P14174582201303416193

namespace A104005

/-- `A000051(n+1)-(A052964(n+1)+A000051(n))` -/
def P14174582201303416193.Spec : Prop :=
  ∀ n, P14174582201303416193.a n = A104005 n

end A104005

/-!
# A104006: Primes of the form 2pq + 1, where p and q are (not necessarily distinct) odd primes.

The programs for A104006, the canonical program `A104006.P8220596644913064482` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104006 has offset 1).

The definition of A104006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104006.P12743353153863393850

`p?[A110188(n+1)+1]`
-/

namespace A104006.P12743353153863393850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104006.P12743353153863393850

namespace A104006

/-- `p?[A110188(n+1)+1]` -/
def P12743353153863393850.Spec : Prop :=
  ∀ n, P12743353153863393850.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P8220596644913064482

`p?[2*A046315(n+1)+1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A104006

/-- `p?[2*A046315(n+1)+1]` -/
def P8220596644913064482.Spec : Prop :=
  ∀ n, P8220596644913064482.a n = A104006 (n + 1)

theorem P8220596644913064482.correct : P8220596644913064482.Spec := by
  intro n
  simp only [A104006, Nat.add_sub_cancel]

end A104006

/-! ## A104006.P10089978535968911117

`filter[A063640(n+1), A347871(#)]`
-/

namespace A104006.P10089978535968911117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A104006.P10089978535968911117

namespace A104006

/-- `filter[A063640(n+1), A347871(#)]` -/
def P10089978535968911117.Spec : Prop :=
  ∀ n, P10089978535968911117.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P6525967019600600620

`filter[A063640(n+1), A354028(#)]`
-/

namespace A104006.P6525967019600600620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A104006.P6525967019600600620

namespace A104006

/-- `filter[A063640(n+1), A354028(#)]` -/
def P6525967019600600620.Spec : Prop :=
  ∀ n, P6525967019600600620.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P13623832739904283985

`filter[A063640(n+1), A354029(#)]`
-/

namespace A104006.P13623832739904283985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A104006.P13623832739904283985

namespace A104006

/-- `filter[A063640(n+1), A354029(#)]` -/
def P13623832739904283985.Spec : Prop :=
  ∀ n, P13623832739904283985.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P1658982431691141714

`filter[A063640(n+1), A354033(#)]`
-/

namespace A104006.P1658982431691141714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A104006.P1658982431691141714

namespace A104006

/-- `filter[A063640(n+1), A354033(#)]` -/
def P1658982431691141714.Spec : Prop :=
  ∀ n, P1658982431691141714.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P12171884549835893776

`filter[A063640(n+1), A354036(#)]`
-/

namespace A104006.P12171884549835893776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A104006.P12171884549835893776

namespace A104006

/-- `filter[A063640(n+1), A354036(#)]` -/
def P12171884549835893776.Spec : Prop :=
  ∀ n, P12171884549835893776.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P12106867601581130553

`filter[A063640(n+1), A359152(#)]`
-/

namespace A104006.P12106867601581130553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A104006.P12106867601581130553

namespace A104006

/-- `filter[A063640(n+1), A359152(#)]` -/
def P12106867601581130553.Spec : Prop :=
  ∀ n, P12106867601581130553.a n = A104006 (n + 1)

end A104006

/-! ## A104006.P18342837032551454357

`∩[A002145(n+1), A063640(n+1)]`
-/

namespace A104006.P18342837032551454357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P18342837032551454357

namespace A104006

/-- `∩[A002145(n+1), A063640(n+1)]` -/
def P18342837032551454357.Spec : Prop :=
  ∀ n, (P18342837032551454357.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P11769536464031604929

`∩[A004614(n+1), A063640(n+1)]`
-/

namespace A104006.P11769536464031604929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P11769536464031604929

namespace A104006

/-- `∩[A004614(n+1), A063640(n+1)]` -/
def P11769536464031604929.Spec : Prop :=
  ∀ n, (P11769536464031604929.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P4901695535915761551

`∩[A045323(n+1), A063640(n+1)]`
-/

namespace A104006.P4901695535915761551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P4901695535915761551

namespace A104006

/-- `∩[A045323(n+1), A063640(n+1)]` -/
def P4901695535915761551.Spec : Prop :=
  ∀ n, (P4901695535915761551.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P12365900411813620437

`∩[A045326(n+1), A063640(n+1)]`
-/

namespace A104006.P12365900411813620437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P12365900411813620437

namespace A104006

/-- `∩[A045326(n+1), A063640(n+1)]` -/
def P12365900411813620437.Spec : Prop :=
  ∀ n, (P12365900411813620437.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P17853127310939513870

`∩[A045419(n+1), A063640(n+1)]`
-/

namespace A104006.P17853127310939513870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P17853127310939513870

namespace A104006

/-- `∩[A045419(n+1), A063640(n+1)]` -/
def P17853127310939513870.Spec : Prop :=
  ∀ n, (P17853127310939513870.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P7344573498253417905

`∩[A058501(n+1), A063640(n+1)]`
-/

namespace A104006.P7344573498253417905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P7344573498253417905

namespace A104006

/-- `∩[A058501(n+1), A063640(n+1)]` -/
def P7344573498253417905.Spec : Prop :=
  ∀ n, (P7344573498253417905.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P12740301675344310161

`∩[A063640(n+1), A066499(n+1)]`
-/

namespace A104006.P12740301675344310161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P12740301675344310161

namespace A104006

/-- `∩[A063640(n+1), A066499(n+1)]` -/
def P12740301675344310161.Spec : Prop :=
  ∀ n, (P12740301675344310161.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P9529950178125418786

`∩[A063640(n+1), A085760(n+1)]`
-/

namespace A104006.P9529950178125418786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P9529950178125418786

namespace A104006

/-- `∩[A063640(n+1), A085760(n+1)]` -/
def P9529950178125418786.Spec : Prop :=
  ∀ n, (P9529950178125418786.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P5390522139206266547

`∩[A063640(n+1), A094179(n+1)]`
-/

namespace A104006.P5390522139206266547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P5390522139206266547

namespace A104006

/-- `∩[A063640(n+1), A094179(n+1)]` -/
def P5390522139206266547.Spec : Prop :=
  ∀ n, (P5390522139206266547.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P185554886887328123

`∩[A063640(n+1), A097987(n+1)]`
-/

namespace A104006.P185554886887328123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P185554886887328123

namespace A104006

/-- `∩[A063640(n+1), A097987(n+1)]` -/
def P185554886887328123.Spec : Prop :=
  ∀ n, (P185554886887328123.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P12472529914159745175

`∩[A063640(n+1), A120127(n+1)]`
-/

namespace A104006.P12472529914159745175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P12472529914159745175

namespace A104006

/-- `∩[A063640(n+1), A120127(n+1)]` -/
def P12472529914159745175.Spec : Prop :=
  ∀ n, (P12472529914159745175.a n : ℤ) = A104006 (n + 1)

end A104006

/-! ## A104006.P17469551451816058818

`∩[A063640(n+1), A167181(n+1)]`
-/

namespace A104006.P17469551451816058818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104006.P17469551451816058818

namespace A104006

/-- `∩[A063640(n+1), A167181(n+1)]` -/
def P17469551451816058818.Spec : Prop :=
  ∀ n, (P17469551451816058818.a n : ℤ) = A104006 (n + 1)

end A104006

/-!
# A104008: Area of (m,m+1,m+1)-integer triangle for m in A103975.

The programs for A104008, there is no canonical definition to state claims against.
-/

/-! ## A104008.P6715343889935728582

`A102341(2*(n+1))`
-/

namespace A104008.P6715343889935728582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102341 (2 * (n + 1))

end

end A104008.P6715343889935728582

/-! ## A104008.P5468151314610221136

`Δ[C(A001353(n+1)², 2)]`
-/

namespace A104008.P5468151314610221136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001353 (n + 1) ^ 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104008.P5468151314610221136

/-! ## A104008.P17251100771629108083

`Δ[C(∑[A001353(2*n+1)], 2)]`
-/

namespace A104008.P17251100771629108083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104008.P17251100771629108083

/-! ## A104008.P8281919114693438881

`Δ[C(∑[A249578(6*n+3)], 2)]`
-/

namespace A104008.P8281919114693438881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (6 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104008.P8281919114693438881

/-! ## A104008.P1632737617514757114

`Δ[A123480(n+1)*A217855(n)]`
-/

namespace A104008.P1632737617514757114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123480 (n + 1) * A217855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104008.P1632737617514757114

/-!
# A104009: Area of (a,a,a+1)-integer triangle. Corresponding a's are in A103974.

The programs for A104009, there is no canonical definition to state claims against.
-/

/-! ## A104009.P617226597186837777

`(A046175(n)+1)*A122770(n)`
-/

namespace A104009.P617226597186837777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046175 n + 1) * A122770 n

end

end A104009.P617226597186837777

/-! ## A104009.P10703652117258280232

`A001353(2*n)*A011922(n)`
-/

namespace A104009.P10703652117258280232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (2 * n) * A011922 n

end

end A104009.P10703652117258280232

/-! ## A104009.P9757813609623144182

`A101879(2*n)*A122770(n)`
-/

namespace A104009.P9757813609623144182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (2 * n) * A122770 n

end

end A104009.P9757813609623144182

/-! ## A104009.P974047856118853868

`(Δ[A046174(n)]+1)*A046174(n)`
-/

namespace A104009.P974047856118853868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A046174 n

end

end A104009.P974047856118853868

/-! ## A104009.P6532838810982986704

`(A122769(n+1)+1)*A046174(n)`
-/

namespace A104009.P6532838810982986704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122769 (n + 1) + 1) * A046174 n

end

end A104009.P6532838810982986704

/-!
# A104010: Sum of two successive sexy primes.

The programs for A104010, the canonical program `A104010.P5743034670165287868` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104010 has offset 1).

The definition of A104010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104010.P5743034670165287868

`2*A087695(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104010

/-- `2*A087695(n+1)` -/
def P5743034670165287868.Spec : Prop :=
  ∀ n, P5743034670165287868.a n = A104010 (n + 1)

theorem P5743034670165287868.correct : P5743034670165287868.Spec := by
  intro n
  simp only [A104010, Nat.add_sub_cancel]

end A104010

/-! ## A104010.P6215016439514939386

`4*A088763(n+1)`
-/

namespace A104010.P6215016439514939386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088763 (n + 1)

end

end A104010.P6215016439514939386

namespace A104010

/-- `4*A088763(n+1)` -/
def P6215016439514939386.Spec : Prop :=
  ∀ n, P6215016439514939386.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P1879938600910026232

`2*A023201(n+1)+6`
-/

namespace A104010.P1879938600910026232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023201 (n + 1) + 6

end

end A104010.P1879938600910026232

namespace A104010

/-- `2*A023201(n+1)+6` -/
def P1879938600910026232.Spec : Prop :=
  ∀ n, P1879938600910026232.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P8446512979732251633

`A023201(n+1)+A046117(n+1)`
-/

namespace A104010.P8446512979732251633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + A046117 (n + 1)

end

end A104010.P8446512979732251633

namespace A104010

/-- `A023201(n+1)+A046117(n+1)` -/
def P8446512979732251633.Spec : Prop :=
  ∀ n, P8446512979732251633.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P18386315452017479555

`2*(A046117(n+1)-3)`
-/

namespace A104010.P18386315452017479555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046117 (n + 1) - 3)

end

end A104010.P18386315452017479555

namespace A104010

/-- `2*(A046117(n+1)-3)` -/
def P18386315452017479555.Spec : Prop :=
  ∀ n, P18386315452017479555.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P7008578729105645071

`2*ceil(sqrt(A111192(n+1)))`
-/

namespace A104010.P7008578729105645071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A111192 (n + 1) : ℝ)⌉

end

end A104010.P7008578729105645071

namespace A104010

/-- `2*ceil(sqrt(A111192(n+1)))` -/
def P7008578729105645071.Spec : Prop :=
  ∀ n, P7008578729105645071.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P14461260312626054396

`A087695(n+1)²/A088763(n+1)`
-/

namespace A104010.P14461260312626054396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087695 (n + 1) ^ 2 : ℚ) / (A088763 (n + 1) : ℚ)

end

end A104010.P14461260312626054396

namespace A104010

/-- `A087695(n+1)²/A088763(n+1)` -/
def P14461260312626054396.Spec : Prop :=
  ∀ n, P14461260312626054396.a n = (A104010 (n + 1) : ℚ)

end A104010

/-! ## A104010.P6614208229604926831

`A087695(A000027(n+1))+A087695(n+1)`
-/

namespace A104010.P6614208229604926831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (A000027 (n + 1)).toNat + A087695 (n + 1)

end

end A104010.P6614208229604926831

namespace A104010

/-- `A087695(A000027(n+1))+A087695(n+1)` -/
def P6614208229604926831.Spec : Prop :=
  ∀ n, P6614208229604926831.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P8904388754737997428

`A023201(n+1)+A111192(n+1)/A023201(n+1)`
-/

namespace A104010.P8904388754737997428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023201 (n + 1) : ℚ) + (A111192 (n + 1) : ℚ) / (A023201 (n + 1) : ℚ)

end

end A104010.P8904388754737997428

namespace A104010

/-- `A023201(n+1)+A111192(n+1)/A023201(n+1)` -/
def P8904388754737997428.Spec : Prop :=
  ∀ n, P8904388754737997428.a n = (A104010 (n + 1) : ℚ)

end A104010

/-! ## A104010.P345575746211784581

`A046117(n+1)+A111192(n+1)/A046117(n+1)`
-/

namespace A104010.P345575746211784581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046117 (n + 1) : ℚ) + (A111192 (n + 1) : ℚ) / (A046117 (n + 1) : ℚ)

end

end A104010.P345575746211784581

namespace A104010

/-- `A046117(n+1)+A111192(n+1)/A046117(n+1)` -/
def P345575746211784581.Spec : Prop :=
  ∀ n, P345575746211784581.a n = (A104010 (n + 1) : ℚ)

end A104010

/-! ## A104010.P5492478294489132432

`A067831(n+2)+A023201(n+1)`
-/

namespace A104010.P5492478294489132432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 2) + A023201 (n + 1)

end

end A104010.P5492478294489132432

namespace A104010

/-- `A067831(n+2)+A023201(n+1)` -/
def P5492478294489132432.Spec : Prop :=
  ∀ n, P5492478294489132432.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P4329216824300674594

`A087695(n+1)+A087695(n+2)-A227346(n+1)`
-/

namespace A104010.P4329216824300674594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + (A087695 (n + 2) - A227346 (n + 1))

end

end A104010.P4329216824300674594

namespace A104010

/-- `A087695(n+1)+A087695(n+2)-A227346(n+1)` -/
def P4329216824300674594.Spec : Prop :=
  ∀ n, P4329216824300674594.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P8564275551349047231

`A046117(n+1)+p?[A015914(n+1)]`
-/

namespace A104010.P8564275551349047231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104010.P8564275551349047231

namespace A104010

/-- `A046117(n+1)+p?[A015914(n+1)]` -/
def P8564275551349047231.Spec : Prop :=
  ∀ n, P8564275551349047231.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P929947308279444442

`A046117(n+1)+p?[A262084(n+1)]`
-/

namespace A104010.P929947308279444442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104010.P929947308279444442

namespace A104010

/-- `A046117(n+1)+p?[A262084(n+1)]` -/
def P929947308279444442.Spec : Prop :=
  ∀ n, P929947308279444442.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P13948106091471978593

`A087695(n+1)+record[A087695(A117358(n+1))]`
-/

namespace A104010.P13948106091471978593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (A117358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104010.P13948106091471978593

namespace A104010

/-- `A087695(n+1)+record[A087695(A117358(n+1))]` -/
def P13948106091471978593.Spec : Prop :=
  ∀ n, P13948106091471978593.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P15159640901025764880

`A156274(2*n+1)+A046117(n+1)`
-/

namespace A104010.P15159640901025764880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1) + A046117 (n + 1)

end

end A104010.P15159640901025764880

namespace A104010

/-- `A156274(2*n+1)+A046117(n+1)` -/
def P15159640901025764880.Spec : Prop :=
  ∀ n, P15159640901025764880.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P1844857800525210436

`A156274(2*n+1)+A067831(n+2)`
-/

namespace A104010.P1844857800525210436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1) + A067831 (n + 2)

end

end A104010.P1844857800525210436

namespace A104010

/-- `A156274(2*n+1)+A067831(n+2)` -/
def P1844857800525210436.Spec : Prop :=
  ∀ n, P1844857800525210436.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P18189810699872215480

`A172988(n+2)+A156274(2*n+1)`
-/

namespace A104010.P18189810699872215480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 2) + A156274 (2 * n + 1)

end

end A104010.P18189810699872215480

namespace A104010

/-- `A172988(n+2)+A156274(2*n+1)` -/
def P18189810699872215480.Spec : Prop :=
  ∀ n, P18189810699872215480.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P5972664593584414311

`A156274(2*n+1)+A156274(2*(n+1))`
-/

namespace A104010.P5972664593584414311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1) + A156274 (2 * (n + 1))

end

end A104010.P5972664593584414311

namespace A104010

/-- `A156274(2*n+1)+A156274(2*(n+1))` -/
def P5972664593584414311.Spec : Prop :=
  ∀ n, P5972664593584414311.a n = A104010 (n + 1)

end A104010

/-! ## A104010.P13403474094328785620

`2*(p?[A000040(n+1)+6]-3)`
-/

namespace A104010.P13403474094328785620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3)

end

end A104010.P13403474094328785620

namespace A104010

/-- `2*(p?[A000040(n+1)+6]-3)` -/
def P13403474094328785620.Spec : Prop :=
  ∀ n, P13403474094328785620.a n = A104010 (n + 1)

end A104010

/-!
# A104011: Number of prime factors (with multiplicity) of centered dodecahedral numbers (A005904).

The programs for A104011, the canonical program `A104011.P16482228630287059942` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104011 has offset 0).

The definition of A104011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104011.P16482228630287059942

`A001222(A005904(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104011

/-- `A001222(A005904(n))` -/
def P16482228630287059942.Spec : Prop :=
  ∀ n, P16482228630287059942.a n = A104011 n

theorem P16482228630287059942.correct : P16482228630287059942.Spec := by
  intro n
  simp only [A104011]

end A104011

/-! ## A104011.P3937902507331767642

`A001222(2*n+1)+A001222(∑[2*n]+(2*n+1)²)`
-/

namespace A104011.P3937902507331767642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) + A001222 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) ^ 2)

end

end A104011.P3937902507331767642

namespace A104011

/-- `A001222(2*n+1)+A001222(∑[2*n]+(2*n+1)²)` -/
def P3937902507331767642.Spec : Prop :=
  ∀ n, P3937902507331767642.a n = A104011 n

end A104011

/-! ## A104011.P17802555558827275960

`A091304(n+1)+A001222(A062786(n+1))`
-/

namespace A104011.P17802555558827275960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) + A001222 (A062786 (n + 1)).toNat

end

end A104011.P17802555558827275960

namespace A104011

/-- `A091304(n+1)+A001222(A062786(n+1))` -/
def P17802555558827275960.Spec : Prop :=
  ∀ n, P17802555558827275960.a n = A104011 n

end A104011

/-! ## A104011.P9007146055142299747

`A317531(Δ[n²])+A001222(A062786(n+1))`
-/

namespace A104011.P9007146055142299747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A001222 (A062786 (n + 1)).toNat

end

end A104011.P9007146055142299747

namespace A104011

/-- `A317531(Δ[n²])+A001222(A062786(n+1))` -/
def P9007146055142299747.Spec : Prop :=
  ∀ n, P9007146055142299747.a n = A104011 n

end A104011

/-! ## A104011.P6806895630144555746

`A010888(A001222(2*n+1))+A001222(A062786(n+1))`
-/

namespace A104011.P6806895630144555746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A001222 (2 * n + 1)).toNat + A001222 (A062786 (n + 1)).toNat

end

end A104011.P6806895630144555746

namespace A104011

/-- `A010888(A001222(2*n+1))+A001222(A062786(n+1))` -/
def P6806895630144555746.Spec : Prop :=
  ∀ n, P6806895630144555746.a n = A104011 n

end A104011

/-! ## A104011.P14680209046882268295

`A091304(n+1)+A091304(A005891(n))`
-/

namespace A104011.P14680209046882268295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) + A091304 (A005891 n).toNat

end

end A104011.P14680209046882268295

namespace A104011

/-- `A091304(n+1)+A091304(A005891(n))` -/
def P14680209046882268295.Spec : Prop :=
  ∀ n, P14680209046882268295.a n = A104011 n

end A104011

/-! ## A104011.P13389442440608761971

`A091304(n+1)+A091304(∑[A008706(n)])`
-/

namespace A104011.P13389442440608761971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) + A091304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104011.P13389442440608761971

namespace A104011

/-- `A091304(n+1)+A091304(∑[A008706(n)])` -/
def P13389442440608761971.Spec : Prop :=
  ∀ n, P13389442440608761971.a n = A104011 n

end A104011

/-!
# A104012: Indices of centered dodecahedral numbers (A005904) which are semiprimes (A001358).

The programs for A104012, there is no canonical definition to state claims against.
-/

/-! ## A104012.P10519572054343457

`floor(A182583(n+1)/2)`
-/

namespace A104012.P10519572054343457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182583 (n + 1) : ℚ) / 2⌋

end

end A104012.P10519572054343457

/-! ## A104012.P16816796662044943709

`A014682(A182583(n+1)-1)`
-/

namespace A104012.P16816796662044943709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A182583 (n + 1) - 1).toNat

end

end A104012.P16816796662044943709

/-! ## A104012.P3163215619278756192

`A014682(xor(1, A182583(n+1)))`
-/

namespace A104012.P3163215619278756192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A182583 (n + 1))).toNat

end

end A104012.P3163215619278756192

/-! ## A104012.P10994699644597741110

`filter[A090563(n+1), A101264(#)]`
-/

namespace A104012.P10994699644597741110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A104012.P10994699644597741110

/-! ## A104012.P10830497723722659738

`∩[A005097(n+1), A090563(n+1)]`
-/

namespace A104012.P10830497723722659738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104012.P10830497723722659738

/-! ## A104012.P5643889517136259167

`∩[A090563(n+1), A102781(n+1)]`
-/

namespace A104012.P5643889517136259167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104012.P5643889517136259167

/-! ## A104012.P17469077822229676238

`eq[2, A104011(n)]`
-/

namespace A104012.P17469077822229676238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104012.P17469077822229676238

/-! ## A104012.P15187033838203847294

`A002616(A182583(n+1))`
-/

namespace A104012.P15187033838203847294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A182583 (n + 1)).toNat

end

end A104012.P15187033838203847294

/-! ## A104012.P10156940984609457313

`A004526(A182583(n+1)-1)`
-/

namespace A104012.P10156940984609457313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182583 (n + 1) - 1).toNat

end

end A104012.P10156940984609457313

/-! ## A104012.P1283878176413601593

`A029578(A182583(n+1)-1)`
-/

namespace A104012.P1283878176413601593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A182583 (n + 1) - 1).toNat

end

end A104012.P1283878176413601593

/-! ## A104012.P1766062205381153769

`A110654(A182583(n+1)-1)`
-/

namespace A104012.P1766062205381153769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A182583 (n + 1) - 1).toNat

end

end A104012.P1766062205381153769

/-! ## A104012.P3095383037373327035

`A142150(A182583(n+1)-1)`
-/

namespace A104012.P3095383037373327035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A182583 (n + 1) - 1).toNat

end

end A104012.P3095383037373327035

/-! ## A104012.P5647078012480530301

`A001057(A182583(n+1)-2)`
-/

namespace A104012.P5647078012480530301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A182583 (n + 1) - 2).toNat

end

end A104012.P5647078012480530301

/-! ## A104012.P18239472302672034044

`A110654(xor(1, A182583(n+1)))`
-/

namespace A104012.P18239472302672034044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 1 (A182583 (n + 1))).toNat

end

end A104012.P18239472302672034044

/-! ## A104012.P156942958954817722

`A029578(∑{p}[A182583(n+1), #])/2`
-/

namespace A104012.P156942958954817722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182583 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ) / 2

end

end A104012.P156942958954817722

/-! ## A104012.P13399914832503233373

`A029578(∑{p}[A182583(n+1), A029578(#)])`
-/

namespace A104012.P13399914832503233373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A029578 p).toNat

end

end A104012.P13399914832503233373

/-! ## A104012.P2919484893696127484

`A182583(n+1)+A001057(A182583(n+1)+1)`
-/

namespace A104012.P2919484893696127484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182583 (n + 1) + A001057 (A182583 (n + 1) + 1).toNat

end

end A104012.P2919484893696127484

/-!
# A104013: First digit-cycle of binary expansion of 1/n. Any initial 0's are to be placed at end of cycle.

The programs for A104013, there is no canonical definition to state claims against.
-/

/-! ## A104013.P10042070504633966833

`A007088(A104014(n+1))`
-/

namespace A104013.P10042070504633966833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A104014 (n + 1)).toNat

end

end A104013.P10042070504633966833

/-! ## A104013.P13756599831168478373

`A185544(2*A104014(n+1))`
-/

namespace A104013.P13756599831168478373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A104014 (n + 1)).toNat

end

end A104013.P13756599831168478373

/-!
# A104014: A104013 in decimal.

The programs for A104014, there is no canonical definition to state claims against.
-/

/-! ## A104014.P13118018377969335458

`A036044(n)*A238350(A032555(n+1))`
-/

namespace A104014.P13118018377969335458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n * A238350 (A032555 (n + 1)).toNat

end

end A104014.P13118018377969335458

/-! ## A104014.P9046140478414008541

`A004524(A123487(n+1)^A332901(n+1))`
-/

namespace A104014.P9046140478414008541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway ((A123487 (n + 1) : ℚ) ^ (A332901 (n + 1) : ℤ))).toNat

end

end A104014.P9046140478414008541

/-! ## A104014.P6173399708705712250

`lcm(A067742(A007340(n+1)), A274716(n+1))`
-/

namespace A104014.P6173399708705712250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067742 (A007340 (n + 1)).toNat) (A274716 (n + 1))

end

end A104014.P6173399708705712250

/-! ## A104014.P12493310199188171491

`A233411(A118106(2*(n+1))%A161807(3*n))`
-/

namespace A104014.P12493310199188171491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 (Int.tmod (A118106 (2 * (n + 1))) (A161807 (3 * n))).toNat

end

end A104014.P12493310199188171491

/-!
# A104015: Binary expansion of Euler's constant (or Euler-Mascheroni constant) gamma (A001620).

The programs for A104015, the canonical program `A104015.P16873203914429241289` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104015 has offset 0).

The definition of A104015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104015.P16873203914429241289

`A293354(n)-A293352(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104015

/-- `A293354(n)-A293352(n)` -/
def P16873203914429241289.Spec : Prop :=
  ∀ n, P16873203914429241289.a n = A104015 n

theorem P16873203914429241289.correct : P16873203914429241289.Spec := by
  intro n
  simp only [A104015]

end A104015

/-! ## A104015.P15709955553863522291

`C(A293354(n), A293353(n))`
-/

namespace A104015.P15709955553863522291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293354 n).toNat (A293353 n).toNat

end

end A104015.P15709955553863522291

namespace A104015

/-- `C(A293354(n), A293353(n))` -/
def P15709955553863522291.Spec : Prop :=
  ∀ n, (P15709955553863522291.a n : ℤ) = A104015 n

end A104015

/-! ## A104015.P9474227913757317396

`A293352(n+1)%2`
-/

namespace A104015.P9474227913757317396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293352 (n + 1)) 2

end

end A104015.P9474227913757317396

namespace A104015

/-- `A293352(n+1)%2` -/
def P9474227913757317396.Spec : Prop :=
  ∀ n, P9474227913757317396.a n = A104015 n

end A104015

/-! ## A104015.P10993379501093221678

`(A293353(n+1)+1)%2`
-/

namespace A104015.P10993379501093221678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293353 (n + 1) + 1) 2

end

end A104015.P10993379501093221678

namespace A104015

/-- `(A293353(n+1)+1)%2` -/
def P10993379501093221678.Spec : Prop :=
  ∀ n, P10993379501093221678.a n = A104015 n

end A104015

/-! ## A104015.P2763547546024383285

`Δ[A293353(n)]-A293352(n)`
-/

namespace A104015.P2763547546024383285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A293352 n

end

end A104015.P2763547546024383285

namespace A104015

/-- `Δ[A293353(n)]-A293352(n)` -/
def P2763547546024383285.Spec : Prop :=
  ∀ n, P2763547546024383285.a n = A104015 n

end A104015

/-! ## A104015.P3355932767143800736

`A293352(n+1)-2*A293352(n)`
-/

namespace A104015.P3355932767143800736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 (n + 1) - 2 * A293352 n

end

end A104015.P3355932767143800736

namespace A104015

/-- `A293352(n+1)-2*A293352(n)` -/
def P3355932767143800736.Spec : Prop :=
  ∀ n, P3355932767143800736.a n = A104015 n

end A104015

/-! ## A104015.P17844348790625926650

`A293352(Δ[A293352(n)]-A293352(n))`
-/

namespace A104015.P17844348790625926650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 (f1 (n + 1) - f1 n - A293352 n).toNat

end

end A104015.P17844348790625926650

namespace A104015

/-- `A293352(Δ[A293352(n)]-A293352(n))` -/
def P17844348790625926650.Spec : Prop :=
  ∀ n, P17844348790625926650.a n = A104015 n

end A104015

/-! ## A104015.P2847210729810729219

`A293353(n+1)-(A293353(n)+A293352(n))`
-/

namespace A104015.P2847210729810729219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293353 (n + 1) - (A293353 n + A293352 n)

end

end A104015.P2847210729810729219

namespace A104015

/-- `A293353(n+1)-(A293353(n)+A293352(n))` -/
def P2847210729810729219.Spec : Prop :=
  ∀ n, P2847210729810729219.a n = A104015 n

end A104015

/-! ## A104015.P36079343544792703

`A293352(val(A293352(n+1)²+1, 2))`
-/

namespace A104015.P36079343544792703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 (SequenceMachineLib.valuation (A293352 (n + 1) ^ 2 + 1).toNat 2)

end

end A104015.P36079343544792703

namespace A104015

/-- `A293352(val(A293352(n+1)²+1, 2))` -/
def P36079343544792703.Spec : Prop :=
  ∀ n, P36079343544792703.a n = A104015 n

end A104015

/-!
# A104016: Devaraj numbers: squarefree r-prime-factor (r>1) integers N=p1*...*pr such that phi(N)=(p1-1)*...*(pr-1) divides gcd(p1-1,...,pr-1)^2*(N-1)^(r-2).

The programs for A104016, there is no canonical definition to state claims against.
-/

/-! ## A104016.P16129596246051692558

`∪[A002997(n+1), A104017(n+1)]`
-/

namespace A104016.P16129596246051692558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104016.P16129596246051692558

/-! ## A104016.P7873762987112807825

`∪[A081703(n+1)*A141710(n+1), A104017(n+1)]`
-/

namespace A104016.P7873762987112807825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104016.P7873762987112807825

/-! ## A104016.P5619955359816446213

`A055231(∪[A087788(n+1), A104017(n+1)])`
-/

namespace A104016.P5619955359816446213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104017 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A104016.P5619955359816446213

/-! ## A104016.P13038649206503839430

`A055231(∪[A104017(n+1), A355039(n+1)])`
-/

namespace A104016.P13038649206503839430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A104016.P13038649206503839430

/-! ## A104016.P4502650881043759648

`A002997(n+1)-A004526(A061135(n+1))`
-/

namespace A104016.P4502650881043759648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1) - A004526 (A061135 (n + 1)).toNat

end

end A104016.P4502650881043759648

/-!
# A104018: E.g.f. (arcsinh(1/sinh(arcsinh(1) - sqrt(2)*x)) - arcsinh(1))/sqrt(2).

The programs for A104018, there is no canonical definition to state claims against.
-/

/-! ## A104018.P11227792158629089667

`floor(sqrt(A362285(2^n)))`
-/

namespace A104018.P11227792158629089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A362285 (2 ^ n))

end

end A104018.P11227792158629089667

/-! ## A104018.P17211122497423844317

`n*A335433(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A104018.P17211122497423844317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * A335433 (a (n - 1)).toNat

end

end A104018.P17211122497423844317

/-!
# A104020: Numbers that can be represented as k^2*j, 0 < j <= k.

The programs for A104020, there is no canonical definition to state claims against.
-/

/-! ## A104020.P11978538192643167560

`∪[A104021(n+1), A104026(n+1)]`
-/

namespace A104020.P11978538192643167560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104020.P11978538192643167560

/-! ## A104020.P11824993149807378748

`∪[A104026(n+1), A102646(n+2)]`
-/

namespace A104020.P11824993149807378748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104020.P11824993149807378748

/-! ## A104020.P4116532537017309153

`lt[A007913(n+1), A000188(n+1)]+1`
-/

namespace A104020.P4116532537017309153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104020.P4116532537017309153

/-! ## A104020.P12651586710525942007

`lt[A019554(n+1), A008833(n+1)]+1`
-/

namespace A104020.P12651586710525942007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104020.P12651586710525942007

/-! ## A104020.P4801946591624986124

`lt[A056135(n+1), A000188(n+1)]+1`
-/

namespace A104020.P4801946591624986124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104020.P4801946591624986124

/-! ## A104020.P6148205860411786394

`lt[A088434(n+1), A088432(n+1)]+1`
-/

namespace A104020.P6148205860411786394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104020.P6148205860411786394

/-! ## A104020.P109383708730263282

`lt[A007913(n+1)², A008833(n+1)]+1`
-/

namespace A104020.P109383708730263282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104020.P109383708730263282

/-! ## A104020.P5222554335541408894

`lt[A019554(n+1), A000188(n+1)²]+1`
-/

namespace A104020.P5222554335541408894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104020.P5222554335541408894

/-! ## A104020.P15325177618651032577

`lt[A010057(n), A102354(A233583(n+1))]`
-/

namespace A104020.P15325177618651032577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104020.P15325177618651032577

/-! ## A104020.P13933020615114813404

`A020725(lt[A007913(n+1), A000188(n+1)])`
-/

namespace A104020.P13933020615114813404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104020.P13933020615114813404

/-!
# A104021: Numbers that can be represented as k^2*j with 0 < j <= k and gcd(k, j) = 1.

The programs for A104021, there is no canonical definition to state claims against.
-/

/-! ## A104021.P17344684816326082325

`A102646(n+2)`
-/

namespace A104021.P17344684816326082325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (n + 2)

end

end A104021.P17344684816326082325

/-! ## A104021.P8572734736766988425

`record[A102646(A133310(-xor(n, -1)))]`
-/

namespace A104021.P8572734736766988425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A133310 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P8572734736766988425

/-! ## A104021.P12849408358445445448

`A020725(lt[1, n*A102448(n+1)])`
-/

namespace A104021.P12849408358445445448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104021.P12849408358445445448

/-! ## A104021.P13199154508152911886

`record[A102646(A144968(2-or(1, -(3*n))))]`
-/

namespace A104021.P13199154508152911886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A144968 (2 - Int.lor 1 (-(3 * n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P13199154508152911886

/-! ## A104021.P14259308835184094887

`record[A102646(A080513(A008611(n)))]`
-/

namespace A104021.P14259308835184094887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P14259308835184094887

/-! ## A104021.P6413342491826822771

`record[A102646(A080513(A028242(n)))]`
-/

namespace A104021.P6413342491826822771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P6413342491826822771

/-! ## A104021.P9149989724829957242

`record[A102646(A108872(A008619(n)))]`
-/

namespace A104021.P9149989724829957242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A108872 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P9149989724829957242

/-! ## A104021.P4166694506834924988

`record[A102646(A008619(A133265(n)))]`
-/

namespace A104021.P4166694506834924988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P4166694506834924988

/-! ## A104021.P6289594683651722474

`record[A102646(A133310(A008620(n)))]`
-/

namespace A104021.P6289594683651722474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A133310 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P6289594683651722474

/-! ## A104021.P3503197792673441984

`record[A102646(A108872(A133310(n)))]`
-/

namespace A104021.P3503197792673441984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (A108872 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104021.P3503197792673441984

/-!
# A104022: Numbers that have more than one way of being written as k^2*j, 0 < j <= k.

The programs for A104022, there is no canonical definition to state claims against.
-/

/-! ## A104022.P14834077675317682404

`A020725(lt[1, A102354(n+1)])`
-/

namespace A104022.P14834077675317682404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104022.P14834077675317682404

/-! ## A104022.P12661650226433443196

`lt[1, A102354(A138153(n+1))]`
-/

namespace A104022.P12661650226433443196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104022.P12661650226433443196

/-! ## A104022.P6588258997737680672

`lt[1, A102354(A233583(n+1))]`
-/

namespace A104022.P6588258997737680672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104022.P6588258997737680672

/-! ## A104022.P17370626585110989109

`A326666(A326621(n+1)^A250261(n))`
-/

namespace A104022.P17370626585110989109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (SequenceMachineLib.roundAway ((A326621 (n + 1) : ℚ) ^ (A250261 n : ℤ))).toNat

end

end A104022.P17370626585110989109

/-! ## A104022.P17191940546088202440

`A326666(A250261(n)²*A326621(n+1))`
-/

namespace A104022.P17191940546088202440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (A250261 n ^ 2 * A326621 (n + 1)).toNat

end

end A104022.P17191940546088202440

/-!
# A104023: Numbers that have more than one way of being written as k^2*j with 0 < j <= k and gcd(k, j) = 1.

The programs for A104023, there is no canonical definition to state claims against.
-/

/-! ## A104023.P12526645160402016983

`A020725(lt[1, A102448(n+1)])`
-/

namespace A104023.P12526645160402016983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104023.P12526645160402016983

/-! ## A104023.P4805852451493617194

`(A100716(C(A100753(n+1), n))+6)²`
-/

namespace A104023.P4805852451493617194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100716 (Nat.choose (A100753 (n + 1)).toNat n) + 6) ^ 2

end

end A104023.P4805852451493617194

/-! ## A104023.P14062315707267433388

`A298748(record[A107460(3*(n+4))])²`
-/

namespace A104023.P14062315707267433388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107460 (3 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A104023.P14062315707267433388

/-!
# A104025: Least number k that can be written as k^2 * j with 0 < j <= k and gcd(k, j) = 1 in n ways.

The programs for A104025, there is no canonical definition to state claims against.
-/

/-! ## A104025.P5789129254044537667

`A253909(A007947((n+3)*n*a(n-1)))` with `a(0)=2, a(1)=1`
-/

namespace A104025.P5789129254044537667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A253909 (A007947 ((n + 3 : ℤ) * ((n : ℤ) * a (n - 1))).toNat).toNat

end

end A104025.P5789129254044537667

/-!
# A104026: Numbers that can be represented as k^2*j, 0 < j <= k but not if gcd(k, j) = 1.

The programs for A104026, there is no canonical definition to state claims against.
-/

/-! ## A104026.P11638389545725337151

`∩[A104020(n+1), A377844(n+1)]`
-/

namespace A104026.P11638389545725337151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104026.P11638389545725337151

/-! ## A104026.P16210843614992309395

`∩[A104020(n+1), A295661(n+2)]`
-/

namespace A104026.P16210843614992309395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104026.P16210843614992309395

/-! ## A104026.P6678107524153012456

`A216427(∑[A190161(n)!])`
-/

namespace A104026.P6678107524153012456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A190161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104026.P6678107524153012456

/-!
# A104027: Triangle, read by rows, equal to the matrix inverse of A056241, which is formed from the even-indexed trinomial coefficients.

The programs for A104027, there is no canonical definition to state claims against.
-/

/-! ## A104027.P10213845901027769391

`A348040(A112840(n))+A103364(n+1)`
-/

namespace A104027.P10213845901027769391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348040 (A112840 n).toNat + A103364 (n + 1)

end

end A104027.P10213845901027769391

/-! ## A104027.P16772029096990057603

`A326637(A029967(n+1))+A103364(n+1)`
-/

namespace A104027.P16772029096990057603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326637 (A029967 (n + 1)).toNat + A103364 (n + 1)

end

end A104027.P16772029096990057603

/-!
# A104028: Column 1 of triangle A104027, which is the matrix inverse of the triangle A056241 of even-indexed trinomial coefficients.

The programs for A104028, there is no canonical definition to state claims against.
-/

/-! ## A104028.P1443743074556513845

`A104027(∑[n+1]+1)`
-/

namespace A104028.P1443743074556513845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104028.P1443743074556513845

/-!
# A104029: Triangle, read by rows, of pairwise sums of trinomial coefficients (A027907).

The programs for A104029, there is no canonical definition to state claims against.
-/

/-! ## A104029.P13859761391629199373

`A330381(∑[char[∑[n]]]²-n-1)`
-/

namespace A104029.P13859761391629199373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330381 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A104029.P13859761391629199373

/-! ## A104029.P12365211647651740853

`A169623(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A104029.P12365211647651740853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A104029.P12365211647651740853

/-! ## A104029.P8803839726367430279

`A123149(eq[0, A051159(n)])`
-/

namespace A104029.P8803839726367430279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104029.P8803839726367430279

/-! ## A104029.P10973444379842487177

`A123149(eq[0, A051160(n)])`
-/

namespace A104029.P10973444379842487177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104029.P10973444379842487177

/-! ## A104029.P7646968361724342868

`A123149(eq[0, A158020(n)])`
-/

namespace A104029.P7646968361724342868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104029.P7646968361724342868

/-! ## A104029.P12438585470919641147

`A123149(eq[0, A187596(n)])`
-/

namespace A104029.P12438585470919641147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104029.P12438585470919641147

/-! ## A104029.P16295971786739205598

`A123149(lt[A051159(n), 1])`
-/

namespace A104029.P16295971786739205598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104029.P16295971786739205598

/-! ## A104029.P7313542125945890805

`A123149(lt[A187596(n), 1])`
-/

namespace A104029.P7313542125945890805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104029.P7313542125945890805

/-! ## A104029.P4132406843789604115

`A330510(n)-A330381(n)`
-/

namespace A104029.P4132406843789604115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330510 n - A330381 n

end

end A104029.P4132406843789604115

/-!
# A104031: Column 1 of triangle A104030, which is the matrix inverse of the triangle of pairwise sums of trinomial coefficients.

The programs for A104031, there is no canonical definition to state claims against.
-/

/-! ## A104031.P5483870771553271097

`A104030(∑[n+1]+1)`
-/

namespace A104031.P5483870771553271097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104030 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104031.P5483870771553271097

/-!
# A104032: Unsigned row sums of triangle A104030, which is the matrix inverse of the triangle of pairwise sums of trinomial coefficients.

The programs for A104032, there is no canonical definition to state claims against.
-/

/-! ## A104032.P3639205441200677636

`A065033(∏{p}[n+1, #²]+n^3*n!)`
-/

namespace A104032.P3639205441200677636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 + n ^ 3 * Nat.factorial n)

end

end A104032.P3639205441200677636

/-!
# A104033: Triangle, read by rows, equal to the matrix inverse of triangle A103327, where A103327(n,k) = binomial(2*n+1,2*k+1).

The programs for A104033, there is no canonical definition to state claims against.
-/

/-! ## A104033.P898521804391255813

`A119879(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A104033.P898521804391255813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A104033.P898521804391255813

/-! ## A104033.P2608013867621590090

`A028296(A025581(n))*A103327(n)`
-/

namespace A104033.P2608013867621590090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028296 (A025581 n).toNat * A103327 n

end

end A104033.P2608013867621590090

/-! ## A104033.P11548649337586307577

`A153641(A093995(n+1)+A025581(n))`
-/

namespace A104033.P11548649337586307577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 (A093995 (n + 1) + A025581 n).toNat

end

end A104033.P11548649337586307577

/-! ## A104033.P5620227707088335684

`A153641(A127739(n+1)+A061579(n))`
-/

namespace A104033.P5620227707088335684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 (A127739 (n + 1) + A061579 n).toNat

end

end A104033.P5620227707088335684

/-! ## A104033.P2868886270128290913

`A119879(A185869(n+1))%A021001(n)`
-/

namespace A104033.P2868886270128290913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119879 (A185869 (n + 1)).toNat) (A021001 n)

end

end A104033.P2868886270128290913

/-!
# A104034: Years between occurrences of Easter on the 25th of the month in the Gregorian calendar.

The programs for A104034, there is no canonical definition to state claims against.
-/

/-! ## A104034.P5593650079536911588

`Δ[A104019(n+1)]`
-/

namespace A104034.P5593650079536911588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104034.P5593650079536911588

/-! ## A104034.P6090544585038115329

`abs(Δ[A104019(Δ[n²]-n)])`
-/

namespace A104034.P6090544585038115329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104019 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A104034.P6090544585038115329

/-! ## A104034.P13541039646781487650

`Δ[record[A104019(A106466(n))]]`
-/

namespace A104034.P13541039646781487650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104019 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104034.P13541039646781487650

/-! ## A104034.P5038684258491048996

`Δ[record[A104019(A117910(n))]]`
-/

namespace A104034.P5038684258491048996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104019 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104034.P5038684258491048996

/-! ## A104034.P5552888439524726720

`Δ[record[A104019(A133310(n))]]`
-/

namespace A104034.P5552888439524726720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104019 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104034.P5552888439524726720

/-!
# A104035: Triangle T(n,k), 0 <= k <= n, read by rows, defined by T(0,0) = 1; T(0,k) = 0 if k>0 or if k

The programs for A104035, there is no canonical definition to state claims against.
-/

/-! ## A104035.P2549430631285801074

`abs(A060081(n)*A233543(n))`
-/

namespace A104035.P2549430631285801074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060081 n * A233543 n|

end

end A104035.P2549430631285801074

/-! ## A104035.P4800957601511010201

`abs(A002262(n)!*A060081(n))`
-/

namespace A104035.P4800957601511010201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (A002262 n).toNat : ℤ) * A060081 n|

end

end A104035.P4800957601511010201

/-! ## A104035.P13783670098716716764

`abs(A144328(n+1)!*A060081(n))`
-/

namespace A104035.P13783670098716716764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A060081 n|

end

end A104035.P13783670098716716764

/-! ## A104035.P3728960178903058143

`abs(A060081(n)*A119502(A061579(n)))`
-/

namespace A104035.P3728960178903058143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060081 n * A119502 (A061579 n).toNat|

end

end A104035.P3728960178903058143

/-! ## A104035.P10889106704127500666

`gcd(A000038(n), A060081(n))*A233543(n)`
-/

namespace A104035.P10889106704127500666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A060081 n) : ℤ) * A233543 n

end

end A104035.P10889106704127500666

/-! ## A104035.P11945496663455253138

`lcm(A002262(n)!*A060081(n), A233543(n))`
-/

namespace A104035.P11945496663455253138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.factorial (A002262 n).toNat : ℤ) * A060081 n) (A233543 n)

end

end A104035.P11945496663455253138

/-! ## A104035.P5940402401862227868

`gcd(A060081(n)*A233543(n), A008683(4*(n+1)))`
-/

namespace A104035.P5940402401862227868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060081 n * A233543 n) (A008683 (4 * (n + 1)))

end

end A104035.P5940402401862227868

/-!
# A104036: a(n) = number m such that the golden mean phi's m-th convergent F(m+1)/F(m) matches its actual value to n decimal places (here F(m) is the m-th Fibonacci number A000045(m)).

The programs for A104036, there is no canonical definition to state claims against.
-/

/-! ## A104036.P13295734309109876764

`A002808(n+1)+A000523(A196724(n))`
-/

namespace A104036.P13295734309109876764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A000523 (A196724 n).toNat

end

end A104036.P13295734309109876764

/-! ## A104036.P17887131978948856769

`A002808(n+1)+A000523(A145112(n))`
-/

namespace A104036.P17887131978948856769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A000523 (A145112 n).toNat

end

end A104036.P17887131978948856769

/-! ## A104036.P11230122714175928896

`A159619(n+1)+A080791(A238462(n+1))`
-/

namespace A104036.P11230122714175928896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159619 (n + 1) + A080791 (A238462 (n + 1)).toNat

end

end A104036.P11230122714175928896

/-! ## A104036.P3744346855449444292

`A080036(2*n+1)+A014045(A232580(n))`
-/

namespace A104036.P3744346855449444292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (2 * n + 1) + A014045 (A232580 n).toNat

end

end A104036.P3744346855449444292

/-! ## A104036.P5189822017582748196

`A181133(2*n+3)-A285076(A285113(n))`
-/

namespace A104036.P5189822017582748196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (2 * n + 3) - A285076 (A285113 n).toNat

end

end A104036.P5189822017582748196

/-!
# A104037: Numbers of primes between two sexy primes.

The programs for A104037, the canonical program `A104037.P1539951715812000058` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104037 has offset 1).

The definition of A104037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104037.P1539951715812000058

`A168141(A087695(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104037

/-- `A168141(A087695(n+1))` -/
def P1539951715812000058.Spec : Prop :=
  ∀ n, P1539951715812000058.a n = A104037 (n + 1)

theorem P1539951715812000058.correct : P1539951715812000058.Spec := by
  intro n
  simp only [A104037, Nat.add_sub_cancel]

end A104037

/-! ## A104037.P16424495722885972034

`A060267(A088763(n+1))%3`
-/

namespace A104037.P16424495722885972034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060267 (A088763 (n + 1)).toNat) 3

end

end A104037.P16424495722885972034

namespace A104037

/-- `A060267(A088763(n+1))%3` -/
def P16424495722885972034.Spec : Prop :=
  ∀ n, P16424495722885972034.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P6435086048252622714

`A090406(A023201(n+1)+1)`
-/

namespace A104037.P6435086048252622714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A023201 (n + 1) + 1).toNat

end

end A104037.P6435086048252622714

namespace A104037

/-- `A090406(A023201(n+1)+1)` -/
def P6435086048252622714.Spec : Prop :=
  ∀ n, P6435086048252622714.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P13576364908347808422

`A090406(A046117(n+1)-5)`
-/

namespace A104037.P13576364908347808422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A046117 (n + 1) - 5).toNat

end

end A104037.P13576364908347808422

namespace A104037

/-- `A090406(A046117(n+1)-5)` -/
def P13576364908347808422.Spec : Prop :=
  ∀ n, P13576364908347808422.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P6915163780542718967

`A259776(A051700(A087695(n+1))²)`
-/

namespace A104037.P6915163780542718967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A051700 (A087695 (n + 1)).toNat ^ 2).toNat

end

end A104037.P6915163780542718967

namespace A104037

/-- `A259776(A051700(A087695(n+1))²)` -/
def P6915163780542718967.Spec : Prop :=
  ∀ n, P6915163780542718967.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P17298370341324163398

`A295895(A051700(A087695(n+1))²)`
-/

namespace A104037.P17298370341324163398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295895 (A051700 (A087695 (n + 1)).toNat ^ 2).toNat

end

end A104037.P17298370341324163398

namespace A104037

/-- `A295895(A051700(A087695(n+1))²)` -/
def P17298370341324163398.Spec : Prop :=
  ∀ n, P17298370341324163398.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P2058462906102679613

`A058344(7-A341512(A023201(n+1)))`
-/

namespace A104037.P2058462906102679613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (7 - A341512 (A023201 (n + 1)).toNat).toNat

end

end A104037.P2058462906102679613

namespace A104037

/-- `A058344(7-A341512(A023201(n+1)))` -/
def P2058462906102679613.Spec : Prop :=
  ∀ n, P2058462906102679613.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P13188157721147403393

`A028956(A194591(A087695(n+1))²)`
-/

namespace A104037.P13188157721147403393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (A194591 (A087695 (n + 1)).toNat ^ 2).toNat

end

end A104037.P13188157721147403393

namespace A104037

/-- `A028956(A194591(A087695(n+1))²)` -/
def P13188157721147403393.Spec : Prop :=
  ∀ n, P13188157721147403393.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P13952032242455366859

`A098424(A023201(n+1))-A098424(A023201(n+1)-1)`
-/

namespace A104037.P13952032242455366859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098424 (A023201 (n + 1)).toNat - A098424 (A023201 (n + 1) - 1).toNat

end

end A104037.P13952032242455366859

namespace A104037

/-- `A098424(A023201(n+1))-A098424(A023201(n+1)-1)` -/
def P13952032242455366859.Spec : Prop :=
  ∀ n, P13952032242455366859.a n = A104037 (n + 1)

end A104037

/-! ## A104037.P4491427472537237344

`Δ[A098424(A023201(n+1)-1)]`
-/

namespace A104037.P4491427472537237344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098424 (A023201 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104037.P4491427472537237344

namespace A104037

/-- `Δ[A098424(A023201(n+1)-1)]` -/
def P4491427472537237344.Spec : Prop :=
  ∀ n, P4491427472537237344.a n = A104037 (n + 1)

end A104037

/-!
# A104039: Number of primitive roots modulo prime(n)^2, where prime(n) is n-th prime.

The programs for A104039, the canonical program `A104039.P17593394278328231830` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104039 has offset 1).

The definition of A104039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A008330, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104039.P17593394278328231830

`A006093(n+1)*A008330(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104039

/-- `A006093(n+1)*A008330(n+1)` -/
def P17593394278328231830.Spec : Prop :=
  ∀ n, P17593394278328231830.a n = A104039 (n + 1)

theorem P17593394278328231830.correct : P17593394278328231830.Spec := by
  intro n
  simp only [A104039, Nat.add_sub_cancel]

end A104039

/-! ## A104039.P12765683370428158077

`(A000040(n+1)-1)*A008330(n+1)`
-/

namespace A104039.P12765683370428158077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A008330 (n + 1)

end

end A104039.P12765683370428158077

namespace A104039

/-- `(A000040(n+1)-1)*A008330(n+1)` -/
def P12765683370428158077.Spec : Prop :=
  ∀ n, P12765683370428158077.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P15680591955361162978

`A173557(A130290(n+1))*A356093(n+1)*A006093(n+1)`
-/

namespace A104039.P15680591955361162978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A130290 (n + 1)).toNat * A356093 (n + 1) * A006093 (n + 1)

end

end A104039.P15680591955361162978

namespace A104039

/-- `A173557(A130290(n+1))*A356093(n+1)*A006093(n+1)` -/
def P15680591955361162978.Spec : Prop :=
  ∀ n, P15680591955361162978.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P446004378234002194

`record[A000010(n+1)]*A008330(n+1)`
-/

namespace A104039.P446004378234002194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A008330 (n + 1)

end

end A104039.P446004378234002194

namespace A104039

/-- `record[A000010(n+1)]*A008330(n+1)` -/
def P446004378234002194.Spec : Prop :=
  ∀ n, P446004378234002194.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P1359720473156354521

`A000010(A000040(n+1))*A008330(n+1)`
-/

namespace A104039.P1359720473156354521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat * A008330 (n + 1)

end

end A104039.P1359720473156354521

namespace A104039

/-- `A000010(A000040(n+1))*A008330(n+1)` -/
def P1359720473156354521.Spec : Prop :=
  ∀ n, P1359720473156354521.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P11505692478253712113

`(A000040(n+1)-1)*A000010(A156037(n+1))`
-/

namespace A104039.P11505692478253712113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A000010 (A156037 (n + 1)).toNat

end

end A104039.P11505692478253712113

namespace A104039

/-- `(A000040(n+1)-1)*A000010(A156037(n+1))` -/
def P11505692478253712113.Spec : Prop :=
  ∀ n, P11505692478253712113.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P15711487312101344195

`A000010(record[A000010(n+1)])*record[A000010(n+1)]`
-/

namespace A104039.P15711487312101344195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A104039.P15711487312101344195

namespace A104039

/-- `A000010(record[A000010(n+1)])*record[A000010(n+1)]` -/
def P15711487312101344195.Spec : Prop :=
  ∀ n, P15711487312101344195.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P6192385118437213159

`(A000040(n+1)-1)*A000010(sqrt(A005722(n+1)))`
-/

namespace A104039.P6192385118437213159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A000010 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

end

end A104039.P6192385118437213159

namespace A104039

/-- `(A000040(n+1)-1)*A000010(sqrt(A005722(n+1)))` -/
def P6192385118437213159.Spec : Prop :=
  ∀ n, P6192385118437213159.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P2777444279739947775

`(A000040(n+1)-1)*A000010(Δ[A007504(n)]-1)`
-/

namespace A104039.P2777444279739947775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A000010 (f1 (n + 1) - f1 n - 1).toNat

end

end A104039.P2777444279739947775

namespace A104039

/-- `(A000040(n+1)-1)*A000010(Δ[A007504(n)]-1)` -/
def P2777444279739947775.Spec : Prop :=
  ∀ n, P2777444279739947775.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P12888451366825614422

`(A052147(n+1)-3)*A000010(Δ[A007504(n)]-1)`
-/

namespace A104039.P12888451366825614422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 3) * A000010 (f1 (n + 1) - f1 n - 1).toNat

end

end A104039.P12888451366825614422

namespace A104039

/-- `(A052147(n+1)-3)*A000010(Δ[A007504(n)]-1)` -/
def P12888451366825614422.Spec : Prop :=
  ∀ n, P12888451366825614422.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P3787147189356145890

`(A000040(n+1)-1)*A000010(A000040(n+1)-1)`
-/

namespace A104039.P3787147189356145890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A000010 (A000040 (n + 1) - 1).toNat

end

end A104039.P3787147189356145890

namespace A104039

/-- `(A000040(n+1)-1)*A000010(A000040(n+1)-1)` -/
def P3787147189356145890.Spec : Prop :=
  ∀ n, P3787147189356145890.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P6315432223500999589

`A002618(A006093(n+1))`
-/

namespace A104039.P6315432223500999589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A006093 (n + 1)).toNat

end

end A104039.P6315432223500999589

namespace A104039

/-- `A002618(A006093(n+1))` -/
def P6315432223500999589.Spec : Prop :=
  ∀ n, P6315432223500999589.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P9971897973887482232

`A002618(record[A000010(n+1)])`
-/

namespace A104039.P9971897973887482232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104039.P9971897973887482232

namespace A104039

/-- `A002618(record[A000010(n+1)])` -/
def P9971897973887482232.Spec : Prop :=
  ∀ n, P9971897973887482232.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P17765735451694744632

`A002618(record[A002322(n+1)])`
-/

namespace A104039.P17765735451694744632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104039.P17765735451694744632

namespace A104039

/-- `A002618(record[A002322(n+1)])` -/
def P17765735451694744632.Spec : Prop :=
  ∀ n, P17765735451694744632.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P347813585393995262

`A083542(record[A000010(n+1)])`
-/

namespace A104039.P347813585393995262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083542 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104039.P347813585393995262

namespace A104039

/-- `A083542(record[A000010(n+1)])` -/
def P347813585393995262.Spec : Prop :=
  ∀ n, P347813585393995262.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P934832546696091317

`A002618(A040976(n+1)+1)`
-/

namespace A104039.P934832546696091317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A040976 (n + 1) + 1).toNat

end

end A104039.P934832546696091317

namespace A104039

/-- `A002618(A040976(n+1)+1)` -/
def P934832546696091317.Spec : Prop :=
  ∀ n, P934832546696091317.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P10246889018230896797

`A002618(A000040(n+1)-1)`
-/

namespace A104039.P10246889018230896797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A000040 (n + 1) - 1).toNat

end

end A104039.P10246889018230896797

namespace A104039

/-- `A002618(A000040(n+1)-1)` -/
def P10246889018230896797.Spec : Prop :=
  ∀ n, P10246889018230896797.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P1963263140469120203

`A083542(A000040(n+1)-1)`
-/

namespace A104039.P1963263140469120203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083542 (A000040 (n + 1) - 1).toNat

end

end A104039.P1963263140469120203

namespace A104039

/-- `A083542(A000040(n+1)-1)` -/
def P1963263140469120203.Spec : Prop :=
  ∀ n, P1963263140469120203.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P9725363295135132116

`A002618(A008578(n+2)-1)`
-/

namespace A104039.P9725363295135132116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A008578 (n + 2) - 1).toNat

end

end A104039.P9725363295135132116

namespace A104039

/-- `A002618(A008578(n+2)-1)` -/
def P9725363295135132116.Spec : Prop :=
  ∀ n, P9725363295135132116.a n = A104039 (n + 1)

end A104039

/-! ## A104039.P6520661893588545186

`A002618(A008864(n+1)-2)`
-/

namespace A104039.P6520661893588545186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A008864 (n + 1) - 2).toNat

end

end A104039.P6520661893588545186

namespace A104039

/-- `A002618(A008864(n+1)-2)` -/
def P6520661893588545186.Spec : Prop :=
  ∀ n, P6520661893588545186.a n = A104039 (n + 1)

end A104039

/-!
# A104040: Triangular matrix T, read by rows, such that row n equals the absolute values of column (n+1) in the matrix inverse T^-1 (with extrapolated zeros): T(n,k) = -Sum_{j=1..[n+1/2]} (-1)^j*T(n-j+1,n-2*j+1)*T(n-j,k) with T(n,n)=1 (n>=0) and T(n,n-1)=n (n>=1).

The programs for A104040, there is no canonical definition to state claims against.
-/

/-! ## A104040.P13071132552461522269

`gcd(A053118(n)-A228565(n), A081265(n))`
-/

namespace A104040.P13071132552461522269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053118 n - A228565 n) (A081265 n)

end

end A104040.P13071132552461522269

/-! ## A104040.P16891247002924708686

`abs(A123956(A061579(n)))`
-/

namespace A104040.P16891247002924708686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123956 (A061579 n).toNat|

end

end A104040.P16891247002924708686

/-! ## A104040.P15799826438132134533

`lcm(A033999(n), A123956(A061579(n)))`
-/

namespace A104040.P15799826438132134533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A123956 (A061579 n).toNat)

end

end A104040.P15799826438132134533

/-! ## A104040.P16705976998691823146

`abs(A053118(n+1)-Δ[A180870(n)])`
-/

namespace A104040.P16705976998691823146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053118 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A104040.P16705976998691823146

/-! ## A104040.P7148967204558167929

`gcd(A000038(n), A123956(A038722(n+2)))`
-/

namespace A104040.P7148967204558167929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123956 (A038722 (n + 2)).toNat)

end

end A104040.P7148967204558167929

/-! ## A104040.P4723200706634161131

`∑{d}[A123956(A038722(n+2)), A000010(#)]`
-/

namespace A104040.P4723200706634161131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123956 (A038722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104040.P4723200706634161131

/-! ## A104040.P4687843081286719153

`∏{d}[A123956(A038722(n+2)), A014963(#)]`
-/

namespace A104040.P4687843081286719153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123956 (A038722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A104040.P4687843081286719153

/-!
# A104041: Triangular matrix T, read by rows, such that column k is equal (in absolute value) to row (k-1) in the matrix inverse T^-1 (with extrapolated zeros) for k>0, with T(n,n)=1 (n>=0) and T(n,n-1)=-n (n>=1).

The programs for A104041, there is no canonical definition to state claims against.
-/

/-! ## A104041.P7209809628789255009

`and(A027641(A046716(n+1)), A285864(n))`
-/

namespace A104041.P7209809628789255009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027641 (A046716 (n + 1)).toNat) (A285864 n)

end

end A104041.P7209809628789255009

/-! ## A104041.P8709763363718632111

`A285864(n)%A166045(A110112(n))`
-/

namespace A104041.P8709763363718632111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285864 n) (A166045 (A110112 n).toNat)

end

end A104041.P8709763363718632111

/-! ## A104041.P17350500358145601561

`A285865(n)^A157811(n+4)*A285864(n)`
-/

namespace A104041.P17350500358145601561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285865 n : ℚ) ^ (A157811 (n + 4) : ℤ) * (A285864 n : ℚ)

end

end A104041.P17350500358145601561

/-! ## A104041.P2457201557930966021

`A023532(A228151(n))*A285864(n)`
-/

namespace A104041.P2457201557930966021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A228151 n).toNat * A285864 n

end

end A104041.P2457201557930966021

/-! ## A104041.P2463233541992245853

`A281442(n)-A134402(A187829(n+1))`
-/

namespace A104041.P2463233541992245853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281442 n - A134402 (A187829 (n + 1)).toNat

end

end A104041.P2463233541992245853

/-!
# A104043: Primes p equal to the sum of two successive sexy primes + 1 such that p + 6 is also prime.

The programs for A104043, there is no canonical definition to state claims against.
-/

/-! ## A104043.P11219466355068434946

`p?[A169980(A046117(n+1))]`
-/

namespace A104043.P11219466355068434946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169980 (A046117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104043.P11219466355068434946

/-! ## A104043.P6790833387460839038

`p?[A169980(p?[A139049(n+1)])]`
-/

namespace A104043.P6790833387460839038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169980 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104043.P6790833387460839038

/-! ## A104043.P5034088210263063200

`p?[A169980(A087695(n+1)+3)]`
-/

namespace A104043.P5034088210263063200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169980 (A087695 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104043.P5034088210263063200

/-! ## A104043.P3680832713175903461

`p?[A169980(A023201(n+1)+6)]`
-/

namespace A104043.P3680832713175903461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169980 (A023201 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104043.P3680832713175903461

/-! ## A104043.P11277341142346877202

`∩[A015914(n+1), A104010(n+1)+1]`
-/

namespace A104043.P11277341142346877202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104043.P11277341142346877202

/-!
# A104044: Numbers k such that 10*k + 7 is prime and k is a multiple of ten.

The programs for A104044, the canonical program `A104044.P9215107508309263018` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104044 has offset 1).

The definition of A104044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104044.P9215107508309263018

`floor(A166547(n+1)/10)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104044

/-- `floor(A166547(n+1)/10)` -/
def P9215107508309263018.Spec : Prop :=
  ∀ n, P9215107508309263018.a n = A104044 (n + 1)

theorem P9215107508309263018.correct : P9215107508309263018.Spec := by
  intro n
  simp only [A104044, Nat.add_sub_cancel]

end A104044

/-! ## A104044.P14013462921615124366

`ceil(A166547(n+1)/10-ceil(1/A007318(n)))`
-/

namespace A104044.P14013462921615124366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166547 (n + 1) : ℚ) / 10 - (⌈1 / (A007318 n : ℚ)⌉ : ℚ)⌉

end

end A104044.P14013462921615124366

namespace A104044

/-- `ceil(A166547(n+1)/10-ceil(1/A007318(n)))` -/
def P14013462921615124366.Spec : Prop :=
  ∀ n, P14013462921615124366.a n = A104044 (n + 1)

end A104044

/-! ## A104044.P12933011181952316754

`ceil(A033999(2*n+1)+A166547(n+1)/10)`
-/

namespace A104044.P12933011181952316754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℚ) + (A166547 (n + 1) : ℚ) / 10⌉

end

end A104044.P12933011181952316754

namespace A104044

/-- `ceil(A033999(2*n+1)+A166547(n+1)/10)` -/
def P12933011181952316754.Spec : Prop :=
  ∀ n, P12933011181952316754.a n = A104044 (n + 1)

end A104044

/-! ## A104044.P6239775992866963292

`ceil(A166547(n+1)/10-A001511(2*n+1))`
-/

namespace A104044.P6239775992866963292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166547 (n + 1) : ℚ) / 10 - (A001511 (2 * n + 1) : ℚ)⌉

end

end A104044.P6239775992866963292

namespace A104044

/-- `ceil(A166547(n+1)/10-A001511(2*n+1))` -/
def P6239775992866963292.Spec : Prop :=
  ∀ n, P6239775992866963292.a n = A104044 (n + 1)

end A104044

/-! ## A104044.P4959716080580468298

`ceil(A008683(A005382(n+1))+A166547(n+1)/10)`
-/

namespace A104044.P4959716080580468298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A005382 (n + 1)).toNat : ℚ) + (A166547 (n + 1) : ℚ) / 10⌉

end

end A104044.P4959716080580468298

namespace A104044

/-- `ceil(A008683(A005382(n+1))+A166547(n+1)/10)` -/
def P4959716080580468298.Spec : Prop :=
  ∀ n, P4959716080580468298.a n = A104044 (n + 1)

end A104044

/-! ## A104044.P252622758568013073

`∩[A102342(n+1), A008592(n)]`
-/

namespace A104044.P252622758568013073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104044.P252622758568013073

namespace A104044

/-- `∩[A102342(n+1), A008592(n)]` -/
def P252622758568013073.Spec : Prop :=
  ∀ n, (P252622758568013073.a n : ℤ) = A104044 (n + 1)

end A104044

/-! ## A104044.P4735063215159351543

`floor(p?[A017353(10*n)]/10)`
-/

namespace A104044.P4735063215159351543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋

end

end A104044.P4735063215159351543

namespace A104044

/-- `floor(p?[A017353(10*n)]/10)` -/
def P4735063215159351543.Spec : Prop :=
  ∀ n, P4735063215159351543.a n = A104044 (n + 1)

end A104044

/-!
# A104045: Numbers k such that k9 is prime and k is a multiple of ten.

The programs for A104045, there is no canonical definition to state claims against.
-/

/-! ## A104045.P5888696126161478113

`floor(A166560(n+1)/10)`
-/

namespace A104045.P5888696126161478113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166560 (n + 1) : ℚ) / 10⌋

end

end A104045.P5888696126161478113

/-! ## A104045.P5382166685173460602

`ceil(A166560(n+1)/10-A057427(A084523(n)))`
-/

namespace A104045.P5382166685173460602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166560 (n + 1) : ℚ) / 10 - (A057427 (A084523 n).toNat : ℚ)⌉

end

end A104045.P5382166685173460602

/-! ## A104045.P5375429068356102818

`ceil(A166560(n+1)/10-A000120(A006519(n+1)))`
-/

namespace A104045.P5375429068356102818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166560 (n + 1) : ℚ) / 10 - (A000120 (A006519 (n + 1)).toNat : ℚ)⌉

end

end A104045.P5375429068356102818

/-! ## A104045.P17716439705067275294

`ceil(A166560(n+1)/10-A054977(n+11))`
-/

namespace A104045.P17716439705067275294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166560 (n + 1) : ℚ) / 10 - (A054977 (n + 11) : ℚ)⌉

end

end A104045.P17716439705067275294

/-! ## A104045.P13569840517337633846

`round(A166560(n+1)/10-A057427(A035485(n)))`
-/

namespace A104045.P13569840517337633846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166560 (n + 1) : ℚ) / 10 - (A057427 (A035485 n).toNat : ℚ))

end

end A104045.P13569840517337633846

/-! ## A104045.P7520660634159005447

`floor(p?[A159551(n)-(n+1)]/10)`
-/

namespace A104045.P7520660634159005447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋

end

end A104045.P7520660634159005447

/-! ## A104045.P9685658427844036996

`∩[A102700(n+1), A008592(n)]`
-/

namespace A104045.P9685658427844036996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104045.P9685658427844036996

/-! ## A104045.P10259804186210706702

`∩[A102700(n+1), A396948(n+1)]`
-/

namespace A104045.P10259804186210706702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104045.P10259804186210706702

/-! ## A104045.P7161829797226974734

`A029578(ceil(A166560(n+1)/10))`
-/

namespace A104045.P7161829797226974734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ⌈(A166560 (n + 1) : ℚ) / 10⌉.toNat

end

end A104045.P7161829797226974734

/-!
# A104047: Primes p equal to the sum of two successive sexy primes - 1 such that p - 6 is also prime.

The programs for A104047, there is no canonical definition to state claims against.
-/

/-! ## A104047.P1745023423026496629

`∩[A046117(n+1), A104227(n+1)]`
-/

namespace A104047.P1745023423026496629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104047.P1745023423026496629

/-! ## A104047.P3478350073388591091

`∩[A067831(n+1), A104227(n+1)]`
-/

namespace A104047.P3478350073388591091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104047.P3478350073388591091

/-! ## A104047.P9261057761469937552

`∩[A104227(n+1), A172071(n+1)]`
-/

namespace A104047.P9261057761469937552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104047.P9261057761469937552

/-! ## A104047.P715830108810707366

`∩[A104227(n+1), A172988(n+1)]`
-/

namespace A104047.P715830108810707366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104047.P715830108810707366

/-! ## A104047.P18443582427162777595

`∩[A046117(n+1), A104010(n+1)-1]`
-/

namespace A104047.P18443582427162777595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104047.P18443582427162777595

/-!
# A104048: Numbers k such that k11 is prime and k is a multiple of ten.

The programs for A104048, the canonical program `A104048.P4278246881923550054` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104048 has offset 1).

The definition of A104048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104048.P4278246881923550054

`∩[A101471(n+1), A008592(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104048

/-- `∩[A101471(n+1), A008592(n)]` -/
def P4278246881923550054.Spec : Prop :=
  ∀ n, (P4278246881923550054.a n : ℤ) = A104048 (n + 1)

theorem P4278246881923550054.correct : P4278246881923550054.Spec := by
  intro n
  simp only [A104048, Nat.add_sub_cancel]

end A104048

/-! ## A104048.P4512393822549270208

`eq[A068695(A017281(n)), A135447(n)]`
-/

namespace A104048.P4512393822549270208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104048.P4512393822549270208

namespace A104048

/-- `eq[A068695(A017281(n)), A135447(n)]` -/
def P4512393822549270208.Spec : Prop :=
  ∀ n, (P4512393822549270208.a n : ℤ) = A104048 (n + 1)

end A104048

/-! ## A104048.P16975461911490929953

`eq[A068695(A017281(n)), A230579(n)]`
-/

namespace A104048.P16975461911490929953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104048.P16975461911490929953

namespace A104048

/-- `eq[A068695(A017281(n)), A230579(n)]` -/
def P16975461911490929953.Spec : Prop :=
  ∀ n, (P16975461911490929953.a n : ℤ) = A104048 (n + 1)

end A104048

/-! ## A104048.P9417272338153324827

`eq[A068695(A017281(n)), A296420(n)]`
-/

namespace A104048.P9417272338153324827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104048.P9417272338153324827

namespace A104048

/-- `eq[A068695(A017281(n)), A296420(n)]` -/
def P9417272338153324827.Spec : Prop :=
  ∀ n, (P9417272338153324827.a n : ℤ) = A104048 (n + 1)

end A104048

/-! ## A104048.P10237819632666420629

`eq[A068695(A017281(n)), A072970(n+1)]`
-/

namespace A104048.P10237819632666420629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104048.P10237819632666420629

namespace A104048

/-- `eq[A068695(A017281(n)), A072970(n+1)]` -/
def P10237819632666420629.Spec : Prop :=
  ∀ n, (P10237819632666420629.a n : ℤ) = A104048 (n + 1)

end A104048

/-!
# A104054: Numbers which are the sum of three positive cubes and divisible by 31.

The programs for A104054, there is no canonical definition to state claims against.
-/

/-! ## A104054.P5082908534866319943

`∩[A003072(n+1), A135631(n)]`
-/

namespace A104054.P5082908534866319943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104054.P5082908534866319943

/-!
# A104055: Number of numbers 0 <= i <= n such that i is a square or a cube (or both).

The programs for A104055, the canonical program `A104055.P17259740333437840021` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104055 has offset 0).

The definition of A104055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104055.P17259740333437840021

`1+floor(n^(1/2))+floor(n^(1/3))-floor(n^(1/6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104055

/-- `1+floor(n^(1/2))+floor(n^(1/3))-floor(n^(1/6))` -/
def P17259740333437840021.Spec : Prop :=
  ∀ n, P17259740333437840021.a n = A104055 n

theorem P17259740333437840021.correct : P17259740333437840021.Spec := by
  intro n
  simp only [A104055]

end A104055

/-! ## A104055.P643480776393519298

`∑[char[∪[n^3, n²]]]`
-/

namespace A104055.P643480776393519298
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104055.P643480776393519298

namespace A104055

/-- `∑[char[∪[n^3, n²]]]` -/
def P643480776393519298.Spec : Prop :=
  ∀ n, (P643480776393519298.a n : ℤ) = A104055 n

end A104055

/-! ## A104055.P3554763591974253919

`∑[or(char[n^3], char[n²])]`
-/

namespace A104055.P3554763591974253919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f2 j = n then 1 else 0) (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104055.P3554763591974253919

namespace A104055

/-- `∑[or(char[n^3], char[n²])]` -/
def P3554763591974253919.Spec : Prop :=
  ∀ n, (P3554763591974253919.a n : ℤ) = A104055 n

end A104055

/-! ## A104055.P14863082596131991149

`A000027(∑[char[A002760(n+1)]])`
-/

namespace A104055.P14863082596131991149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104055.P14863082596131991149

namespace A104055

/-- `A000027(∑[char[A002760(n+1)]])` -/
def P14863082596131991149.Spec : Prop :=
  ∀ n, P14863082596131991149.a n = A104055 n

end A104055

/-! ## A104055.P8250332973895032139

`A028310(∑[char[A002760(n+1)]])`
-/

namespace A104055.P8250332973895032139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104055.P8250332973895032139

namespace A104055

/-- `A028310(∑[char[A002760(n+1)]])` -/
def P8250332973895032139.Spec : Prop :=
  ∀ n, P8250332973895032139.a n = A104055 n

end A104055

/-! ## A104055.P8953177281820581202

`A085501(A377468(n+1))`
-/

namespace A104055.P8953177281820581202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A377468 (n + 1)).toNat

end

end A104055.P8953177281820581202

namespace A104055

/-- `A085501(A377468(n+1))` -/
def P8953177281820581202.Spec : Prop :=
  ∀ n, P8953177281820581202.a n = A104055 n

end A104055

/-!
# A104065: Primes of the form 7^k + 4.

The programs for A104065, there is no canonical definition to state claims against.
-/

/-! ## A104065.P11743697642514687541

`7^A096305(n+1)+4`
-/

namespace A104065.P11743697642514687541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A096305 (n + 1) : ℤ) + 4

end

end A104065.P11743697642514687541

/-! ## A104065.P13098421522427775711

`A034491(A096305(n+1))+3`
-/

namespace A104065.P13098421522427775711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 (A096305 (n + 1)).toNat + 3

end

end A104065.P13098421522427775711

/-! ## A104065.P10886076006525379882

`A253210(eq[A013601(n), A141248(n+1)])-2`
-/

namespace A104065.P10886076006525379882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253210 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 2

end

end A104065.P10886076006525379882

/-!
# A104066: Primes of the form 2^k + 7.

The programs for A104066, there is no canonical definition to state claims against.
-/

/-! ## A104066.P1083062703690147065

`2^A057195(n+1)+7`
-/

namespace A104066.P1083062703690147065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057195 (n + 1) : ℤ) + 7

end

end A104066.P1083062703690147065

/-! ## A104066.P14758458074251098053

`A168415(A057195(n+1))`
-/

namespace A104066.P14758458074251098053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 (A057195 (n + 1)).toNat

end

end A104066.P14758458074251098053

/-! ## A104066.P15602994486485107941

`A195463(A217349(n+1)-1)`
-/

namespace A104066.P15602994486485107941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195463 (A217349 (n + 1) - 1).toNat

end

end A104066.P15602994486485107941

/-! ## A104066.P3311184982850344243

`A168415(2*A217349(n+1))`
-/

namespace A104066.P3311184982850344243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 (2 * A217349 (n + 1)).toNat

end

end A104066.P3311184982850344243

/-! ## A104066.P7994267914248095187

`A195463(A057195(n+1)/2-1)`
-/

namespace A104066.P7994267914248095187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195463 (SequenceMachineLib.roundAway ((A057195 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A104066.P7994267914248095187

/-!
# A104067: Primes of the form 2^k + 13.

The programs for A104067, there is no canonical definition to state claims against.
-/

/-! ## A104067.P9054769719292915119

`2^A102634(n+1)+13`
-/

namespace A104067.P9054769719292915119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102634 (n + 1) : ℤ) + 13

end

end A104067.P9054769719292915119

/-!
# A104070: Primes of the form 2^k + 9.

The programs for A104070, there is no canonical definition to state claims against.
-/

/-! ## A104070.P7053200126452385050

`2^A057196(n+1)+9`
-/

namespace A104070.P7053200126452385050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057196 (n + 1) : ℤ) + 9

end

end A104070.P7053200126452385050

/-! ## A104070.P3867440815581632325

`A188165(A057196(n+1))`
-/

namespace A104070.P3867440815581632325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188165 (A057196 (n + 1)).toNat

end

end A104070.P3867440815581632325

/-! ## A104070.P17394946803422296045

`A267615(A057196(n+1))-A278222(A029930(n))`
-/

namespace A104070.P17394946803422296045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (A057196 (n + 1)).toNat - A278222 (A029930 n).toNat

end

end A104070.P17394946803422296045

/-! ## A104070.P17491811377786626595

`A267615(A057196(n+1))-A278222(A060547(n+1))`
-/

namespace A104070.P17491811377786626595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (A057196 (n + 1)).toNat - A278222 (A060547 (n + 1)).toNat

end

end A104070.P17491811377786626595

/-! ## A104070.P9304172568233418068

`A267615(A057196(n+1))-A278222(A224783(n))`
-/

namespace A104070.P9304172568233418068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (A057196 (n + 1)).toNat - A278222 (A224783 n).toNat

end

end A104070.P9304172568233418068

/-!
# A104071: Primes of the form 2^k + 27.

The programs for A104071, there is no canonical definition to state claims against.
-/

/-! ## A104071.P12499770630731561456

`2^A157007(n+1)+27`
-/

namespace A104071.P12499770630731561456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A157007 (n + 1) : ℤ) + 27

end

end A104071.P12499770630731561456

/-! ## A104071.P18214493460417987598

`A255047(A157007(n+1))+28`
-/

namespace A104071.P18214493460417987598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (A157007 (n + 1)).toNat + 28

end

end A104071.P18214493460417987598

/-! ## A104071.P17239377949800731831

`p?[2^n+27]`
-/

namespace A104071.P17239377949800731831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104071.P17239377949800731831

/-! ## A104071.P10482676825660785672

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=28, a(1)=1`
-/

namespace A104071.P10482676825660785672
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [28, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A104071.P10482676825660785672

/-!
# A104072: Primes of the form 2^n + 5^2.

The programs for A104072, there is no canonical definition to state claims against.
-/

/-! ## A104072.P16574084462554672224

`A000302(A204388(n+1))+25`
-/

namespace A104072.P16574084462554672224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A204388 (n + 1)).toNat + 25

end

end A104072.P16574084462554672224

/-! ## A104072.P17100288248038892732

`A000225(A157006(n+1))+26`
-/

namespace A104072.P17100288248038892732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A157006 (n + 1)).toNat + 26

end

end A104072.P17100288248038892732

/-! ## A104072.P10415515758139397551

`A000302(A157006(n+1)/2)+25`
-/

namespace A104072.P10415515758139397551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (SequenceMachineLib.roundAway ((A157006 (n + 1) : ℚ) / 2)).toNat + 25

end

end A104072.P10415515758139397551

/-! ## A104072.P9594840332737847438

`A000225(2*A204388(n+1))+26`
-/

namespace A104072.P9594840332737847438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * A204388 (n + 1)).toNat + 26

end

end A104072.P9594840332737847438

/-! ## A104072.P12681235053877930499

`A000225(A204388(n+1)+A204388(n+1))+26`
-/

namespace A104072.P12681235053877930499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A204388 (n + 1) + A204388 (n + 1)).toNat + 26

end

end A104072.P12681235053877930499

/-!
# A104074: a(1)=1. a(n) = a(n-1) + (number of terms, from among terms a(1) through a(n-1), which divide Sum_{k=1..n-1} a(k)).

The programs for A104074, there is no canonical definition to state claims against.
-/

/-! ## A104074.P17609835073077794778

`eq[A221171(A002328(n+1)), A257685(2*n)]`
-/

namespace A104074.P17609835073077794778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A002328 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104074.P17609835073077794778

/-!
# A104075: Repdigits, the squares of which are palindromes.

The programs for A104075, there is no canonical definition to state claims against.
-/

/-! ## A104075.P11854140136946419229

`∩[A002778(n+1), A010785(n)]`
-/

namespace A104075.P11854140136946419229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104075.P11854140136946419229

/-! ## A104075.P15853633023263956792

`∩[A002778(n+1), A048307(n)]`
-/

namespace A104075.P15853633023263956792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104075.P15853633023263956792

/-! ## A104075.P16491127507078805153

`∩[A002778(n+1), A064222(n)]`
-/

namespace A104075.P16491127507078805153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104075.P16491127507078805153

/-! ## A104075.P15242656338223807841

`∩[A057135(n+1), A010785(n)]`
-/

namespace A104075.P15242656338223807841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104075.P15242656338223807841

/-! ## A104075.P16377333712743046368

`∩[A057135(n+1), A048307(n)]`
-/

namespace A104075.P16377333712743046368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104075.P16377333712743046368

/-!
# A104076: If k(m) is the m-th divisor (when the divisors are ordered by size) of n, then a(n) = gcd(k(1)+k(2), k(2)+k(3), k(3)+k(4), ..., k(j-1)+k(j)), where j is the number of divisors of n.

The programs for A104076, there is no canonical definition to state claims against.
-/

/-! ## A104076.P9883376818666554135

`gcd(A007947(n+2)+1, A332019(A003386(n+1)))`
-/

namespace A104076.P9883376818666554135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 2) + 1) (A332019 (A003386 (n + 1)).toNat)

end

end A104076.P9883376818666554135

/-! ## A104076.P12072016069246700536

`A020985(A089849(n))+A020639(n+2)`
-/

namespace A104076.P12072016069246700536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A089849 n).toNat + A020639 (n + 2)

end

end A104076.P12072016069246700536

/-! ## A104076.P10067606482386478503

`A020985(A126869(n))+A020639(n+2)`
-/

namespace A104076.P10067606482386478503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A126869 n).toNat + A020639 (n + 2)

end

end A104076.P10067606482386478503

/-! ## A104076.P15532856109517310954

`gcd(A020639(n+2)+1, A048735(2*A126869(n)))`
-/

namespace A104076.P15532856109517310954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (n + 2) + 1) (A048735 (2 * A126869 n).toNat)

end

end A104076.P15532856109517310954

/-! ## A104076.P18388925003761278724

`A238161(A053650(n+2))`
-/

namespace A104076.P18388925003761278724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238161 (A053650 (n + 2)).toNat

end

end A104076.P18388925003761278724

/-!
# A104078: Numbers which are the sum of three nonzero squares and are also divisible by 31.

The programs for A104078, there is no canonical definition to state claims against.
-/

/-! ## A104078.P14538288499870394066

`31*A028962(n+2)`
-/

namespace A104078.P14538288499870394066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A028962 (n + 2)

end

end A104078.P14538288499870394066

/-! ## A104078.P2780802318627575851

`A135631(A028962(n+2))`
-/

namespace A104078.P2780802318627575851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (A028962 (n + 2)).toNat

end

end A104078.P2780802318627575851

/-! ## A104078.P823412452538214260

`∩[A004432(n+1), A135631(n)]`
-/

namespace A104078.P823412452538214260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104078.P823412452538214260

/-! ## A104078.P7762550849918214804

`∩[A001974(n+1), A135631(n)]`
-/

namespace A104078.P7762550849918214804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104078.P7762550849918214804

/-! ## A104078.P9767003859438729156

`∩[A000408(n+1), A135631(n)]`
-/

namespace A104078.P9767003859438729156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104078.P9767003859438729156

/-! ## A104078.P8450724766987199167

`∩[A018822(n+1), A135631(n)]`
-/

namespace A104078.P8450724766987199167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104078.P8450724766987199167

/-! ## A104078.P7467640721747724621

`∩[A302359(n+1), A135631(n)]`
-/

namespace A104078.P7467640721747724621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104078.P7467640721747724621

/-! ## A104078.P5185184249950814207

`filter[A135631(n+1), A071374(#)]`
-/

namespace A104078.P5185184249950814207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A104078.P5185184249950814207

/-! ## A104078.P13614741501991422541

`31*A028777(n+1)`
-/

namespace A104078.P13614741501991422541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A028777 (n + 1)

end

end A104078.P13614741501991422541

/-! ## A104078.P3120630888735672006

`A135631(A028777(n+1))`
-/

namespace A104078.P3120630888735672006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (A028777 (n + 1)).toNat

end

end A104078.P3120630888735672006

/-!
# A104079: Numbers of the form prime(n) + n! such that Gamma(n) + prime(n) is prime.

The programs for A104079, there is no canonical definition to state claims against.
-/

/-! ## A104079.P11590738587653022139

`A000027(A121926(∑[2^(∑[n]%(n+1))]))`
-/

namespace A104079.P11590738587653022139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A121926 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104079.P11590738587653022139

/-!
# A104080: Smallest prime >= 2^n.

The programs for A104080, the canonical program `A104080.P2628032959439395287` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104080 has offset 0).

The definition of A104080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104080.P2628032959439395287

`A007918(2^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104080

/-- `A007918(2^n)` -/
def P2628032959439395287.Spec : Prop :=
  ∀ n, P2628032959439395287.a n = A104080 n

theorem P2628032959439395287.correct : P2628032959439395287.Spec := by
  intro n
  simp only [A104080]

end A104080

/-! ## A104080.P17680325304689122289

`A014210(n-char[1])`
-/

namespace A104080.P17680325304689122289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A104080.P17680325304689122289

namespace A104080

/-- `A014210(n-char[1])` -/
def P17680325304689122289.Spec : Prop :=
  ∀ n, P17680325304689122289.a n = A104080 n

end A104080

/-! ## A104080.P5177375860612176066

`A203074(1-char[1]+n)`
-/

namespace A104080.P5177375860612176066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A104080.P5177375860612176066

namespace A104080

/-- `A203074(1-char[1]+n)` -/
def P5177375860612176066.Spec : Prop :=
  ∀ n, P5177375860612176066.a n = A104080 n

end A104080

/-! ## A104080.P828030734705150662

`A013597(n)+2^n-char[1]`
-/

namespace A104080.P828030734705150662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n + (2 ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A104080.P828030734705150662

namespace A104080

/-- `A013597(n)+2^n-char[1]` -/
def P828030734705150662.Spec : Prop :=
  ∀ n, P828030734705150662.a n = A104080 n

end A104080

/-! ## A104080.P10869286546028694730

`A014210(n)-val(n+5, n+2)`
-/

namespace A104080.P10869286546028694730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - (SequenceMachineLib.valuation (n + 5) (n + 2) : ℤ)

end

end A104080.P10869286546028694730

namespace A104080

/-- `A014210(n)-val(n+5, n+2)` -/
def P10869286546028694730.Spec : Prop :=
  ∀ n, P10869286546028694730.a n = A104080 n

end A104080

/-! ## A104080.P8841609164534502079

`A159075(n)+A014210(n)`
-/

namespace A104080.P8841609164534502079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A014210 n

end

end A104080.P8841609164534502079

namespace A104080

/-- `A159075(n)+A014210(n)` -/
def P8841609164534502079.Spec : Prop :=
  ∀ n, P8841609164534502079.a n = A104080 n

end A104080

/-! ## A104080.P5881246557218983993

`A014210(n)-A063524(n)`
-/

namespace A104080.P5881246557218983993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A063524 n

end

end A104080.P5881246557218983993

namespace A104080

/-- `A014210(n)-A063524(n)` -/
def P5881246557218983993.Spec : Prop :=
  ∀ n, P5881246557218983993.a n = A104080 n

end A104080

/-! ## A104080.P15783394761512684185

`A000079(n)+A013597(n)-char[1]`
-/

namespace A104080.P15783394761512684185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A013597 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A104080.P15783394761512684185

namespace A104080

/-- `A000079(n)+A013597(n)-char[1]` -/
def P15783394761512684185.Spec : Prop :=
  ∀ n, P15783394761512684185.a n = A104080 n

end A104080

/-! ## A104080.P11797116613181476189

`A199969(n+1)+A014210(n)-n`
-/

namespace A104080.P11797116613181476189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + (A014210 n - (n : ℤ))

end

end A104080.P11797116613181476189

namespace A104080

/-- `A199969(n+1)+A014210(n)-n` -/
def P11797116613181476189.Spec : Prop :=
  ∀ n, P11797116613181476189.a n = A104080 n

end A104080

/-! ## A104080.P16822129589918340554

`A014210(n)-A010051(A000040(n+1)-1)`
-/

namespace A104080.P16822129589918340554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A010051 (A000040 (n + 1) - 1).toNat

end

end A104080.P16822129589918340554

namespace A104080

/-- `A014210(n)-A010051(A000040(n+1)-1)` -/
def P16822129589918340554.Spec : Prop :=
  ∀ n, P16822129589918340554.a n = A104080 n

end A104080

/-! ## A104080.P5346190937137923984

`A014210(n)-A010051(A013632(n+1)+n)`
-/

namespace A104080.P5346190937137923984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A010051 (A013632 (n + 1) + (n : ℤ)).toNat

end

end A104080.P5346190937137923984

namespace A104080

/-- `A014210(n)-A010051(A013632(n+1)+n)` -/
def P5346190937137923984.Spec : Prop :=
  ∀ n, P5346190937137923984.a n = A104080 n

end A104080

/-! ## A104080.P13977966556784726858

`A014210(n)-A010051(A010051(n+1)+n+1)`
-/

namespace A104080.P13977966556784726858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A010051 (A010051 (n + 1) + (n + 1 : ℤ)).toNat

end

end A104080.P13977966556784726858

namespace A104080

/-- `A014210(n)-A010051(A010051(n+1)+n+1)` -/
def P13977966556784726858.Spec : Prop :=
  ∀ n, P13977966556784726858.a n = A104080 n

end A104080

/-! ## A104080.P561326532924480980

`A007918(2*n)+A203074(n+1)-A007918(2*n+1)`
-/

namespace A104080.P561326532924480980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * n) + (A203074 (n + 1) - A007918 (2 * n + 1))

end

end A104080.P561326532924480980

namespace A104080

/-- `A007918(2*n)+A203074(n+1)-A007918(2*n+1)` -/
def P561326532924480980.Spec : Prop :=
  ∀ n, P561326532924480980.a n = A104080 n

end A104080

/-! ## A104080.P18424316431924508420

`A203074(n+1)+char[1]*A016339(n)`
-/

namespace A104080.P18424316431924508420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016339 n

end

end A104080.P18424316431924508420

namespace A104080

/-- `A203074(n+1)+char[1]*A016339(n)` -/
def P18424316431924508420.Spec : Prop :=
  ∀ n, P18424316431924508420.a n = A104080 n

end A104080

/-!
# A104081: Smallest prime >= 3^n.

The programs for A104081, the canonical program `A104081.P13360857715571968060` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104081 has offset 0).

The definition of A104081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104081.P13360857715571968060

`A007918(A000244(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104081

/-- `A007918(A000244(n))` -/
def P13360857715571968060.Spec : Prop :=
  ∀ n, P13360857715571968060.a n = A104081 n

theorem P13360857715571968060.correct : P13360857715571968060.Spec := by
  intro n
  simp only [A104081]

end A104081

/-! ## A104081.P14941654831725605048

`A014211(n)-2*char[1]`
-/

namespace A104081.P14941654831725605048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A104081.P14941654831725605048

namespace A104081

/-- `A014211(n)-2*char[1]` -/
def P14941654831725605048.Spec : Prop :=
  ∀ n, P14941654831725605048.a n = A104081 n

end A104081

/-! ## A104081.P4217167351967753045

`A014211(n%a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A104081.P4217167351967753045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A014211 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A104081.P4217167351967753045

namespace A104081

/-- `A014211(n%a(n-1))` -/
def P4217167351967753045.Spec : Prop :=
  ∀ n, P4217167351967753045.a n = A104081 n

end A104081

/-! ## A104081.P3904929602105110369

`A186949(n)+A037127(n)`
-/

namespace A104081.P3904929602105110369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 n + A037127 n

end

end A104081.P3904929602105110369

namespace A104081

/-- `A186949(n)+A037127(n)` -/
def P3904929602105110369.Spec : Prop :=
  ∀ n, P3904929602105110369.a n = A104081 n

end A104081

/-! ## A104081.P8674876176490947045

`A186949(n)+A014211(n)-2^n`
-/

namespace A104081.P8674876176490947045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 n + (A014211 n - (2 ^ n : ℤ))

end

end A104081.P8674876176490947045

namespace A104081

/-- `A186949(n)+A014211(n)-2^n` -/
def P8674876176490947045.Spec : Prop :=
  ∀ n, P8674876176490947045.a n = A104081 n

end A104081

/-! ## A104081.P3437978164322778649

`or(A014211(A199969(n+1)), A168182(n))`
-/

namespace A104081.P3437978164322778649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014211 (A199969 (n + 1)).toNat) (A168182 n)

end

end A104081.P3437978164322778649

namespace A104081

/-- `or(A014211(A199969(n+1)), A168182(n))` -/
def P3437978164322778649.Spec : Prop :=
  ∀ n, P3437978164322778649.a n = A104081 n

end A104081

/-! ## A104081.P14606246418892340359

`or(A010051(n+1), A014211(A199969(n+1)))`
-/

namespace A104081.P14606246418892340359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A014211 (A199969 (n + 1)).toNat)

end

end A104081.P14606246418892340359

namespace A104081

/-- `or(A010051(n+1), A014211(A199969(n+1)))` -/
def P14606246418892340359.Spec : Prop :=
  ∀ n, P14606246418892340359.a n = A104081 n

end A104081

/-! ## A104081.P5227613565131802972

`A340959(∑[n+3]+1)`
-/

namespace A104081.P5227613565131802972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104081.P5227613565131802972

namespace A104081

/-- `A340959(∑[n+3]+1)` -/
def P5227613565131802972.Spec : Prop :=
  ∀ n, P5227613565131802972.a n = A104081 n

end A104081

/-!
# A104082: Smallest prime >= 4^n.

The programs for A104082, the canonical program `A104082.P7641445042095551914` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104082 has offset 0).

The definition of A104082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104082.P7641445042095551914

`A104080(2*n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104082

/-- `A104080(2*n)` -/
def P7641445042095551914.Spec : Prop :=
  ∀ n, P7641445042095551914.a n = A104082 n

theorem P7641445042095551914.correct : P7641445042095551914.Spec := by
  intro n
  simp only [A104082]

end A104082

/-! ## A104082.P1740513896203322154

`A014210(2*n)`
-/

namespace A104082.P1740513896203322154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n)

end

end A104082.P1740513896203322154

namespace A104082

/-- `A014210(2*n)` -/
def P1740513896203322154.Spec : Prop :=
  ∀ n, P1740513896203322154.a n = A104082 n

end A104082

/-! ## A104082.P11659650423069835646

`A203074(Δ[n²])`
-/

namespace A104082.P11659650423069835646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A104082.P11659650423069835646

namespace A104082

/-- `A203074(Δ[n²])` -/
def P11659650423069835646.Spec : Prop :=
  ∀ n, P11659650423069835646.a n = A104082 n

end A104082

/-! ## A104082.P17091471137640386794

`or(char[1], A203074(2*n+1))`
-/

namespace A104082.P17091471137640386794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A203074 (2 * n + 1))

end

end A104082.P17091471137640386794

namespace A104082

/-- `or(char[1], A203074(2*n+1))` -/
def P17091471137640386794.Spec : Prop :=
  ∀ n, P17091471137640386794.a n = A104082 n

end A104082

/-! ## A104082.P13866605276048300402

`record[A014210((n+1)/2^val(n+1, 2)-1)]`
-/

namespace A104082.P13866605276048300402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104082.P13866605276048300402

namespace A104082

/-- `record[A014210((n+1)/2^val(n+1, 2)-1)]` -/
def P13866605276048300402.Spec : Prop :=
  ∀ n, P13866605276048300402.a n = A104082 n

end A104082

/-! ## A104082.P1761430616435609110

`record[A014210(A014681(n))]`
-/

namespace A104082.P1761430616435609110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104082.P1761430616435609110

namespace A104082

/-- `record[A014210(A014681(n))]` -/
def P1761430616435609110.Spec : Prop :=
  ∀ n, P1761430616435609110.a n = A104082 n

end A104082

/-! ## A104082.P6963277330726662959

`A013602(n)+A000302(n)`
-/

namespace A104082.P6963277330726662959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013602 n + A000302 n

end

end A104082.P6963277330726662959

namespace A104082

/-- `A013602(n)+A000302(n)` -/
def P6963277330726662959.Spec : Prop :=
  ∀ n, P6963277330726662959.a n = A104082 n

end A104082

/-! ## A104082.P6769374256662998928

`A037130(n)+A014210(n)`
-/

namespace A104082.P6769374256662998928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037130 n + A014210 n

end

end A104082.P6769374256662998928

namespace A104082

/-- `A037130(n)+A014210(n)` -/
def P6769374256662998928.Spec : Prop :=
  ∀ n, P6769374256662998928.a n = A104082 n

end A104082

/-! ## A104082.P10225114174752025381

`A013602(n)+A000079(n)²`
-/

namespace A104082.P10225114174752025381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013602 n + A000079 n ^ 2

end

end A104082.P10225114174752025381

namespace A104082

/-- `A013602(n)+A000079(n)²` -/
def P10225114174752025381.Spec : Prop :=
  ∀ n, P10225114174752025381.a n = A104082 n

end A104082

/-! ## A104082.P15812385122507202951

`A013602(n)+A000079(2*n)`
-/

namespace A104082.P15812385122507202951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013602 n + A000079 (2 * n)

end

end A104082.P15812385122507202951

namespace A104082

/-- `A013602(n)+A000079(2*n)` -/
def P15812385122507202951.Spec : Prop :=
  ∀ n, P15812385122507202951.a n = A104082 n

end A104082

/-! ## A104082.P10337171936118610342

`A013597(2*n)+A000302(n)`
-/

namespace A104082.P10337171936118610342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 * n) + A000302 n

end

end A104082.P10337171936118610342

namespace A104082

/-- `A013597(2*n)+A000302(n)` -/
def P10337171936118610342.Spec : Prop :=
  ∀ n, P10337171936118610342.a n = A104082 n

end A104082

/-! ## A104082.P6964454463864752612

`A013597(2*n)+A000079(n)²`
-/

namespace A104082.P6964454463864752612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 * n) + A000079 n ^ 2

end

end A104082.P6964454463864752612

namespace A104082

/-- `A013597(2*n)+A000079(n)²` -/
def P6964454463864752612.Spec : Prop :=
  ∀ n, P6964454463864752612.a n = A104082 n

end A104082

/-! ## A104082.P8067509551153981051

`A013597(2*n)+A000079(2*n)`
-/

namespace A104082.P8067509551153981051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 * n) + A000079 (2 * n)

end

end A104082.P8067509551153981051

namespace A104082

/-- `A013597(2*n)+A000079(2*n)` -/
def P8067509551153981051.Spec : Prop :=
  ∀ n, P8067509551153981051.a n = A104082 n

end A104082

/-! ## A104082.P1801521086558949676

`A037035(2*n)+A000051(2*n)`
-/

namespace A104082.P1801521086558949676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 (2 * n) + A000051 (2 * n)

end

end A104082.P1801521086558949676

namespace A104082

/-- `A037035(2*n)+A000051(2*n)` -/
def P1801521086558949676.Spec : Prop :=
  ∀ n, P1801521086558949676.a n = A104082 n

end A104082

/-! ## A104082.P13180858578586373724

`xor(A013597(2*n), A171559(2*n))`
-/

namespace A104082.P13180858578586373724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A013597 (2 * n)) (A171559 (2 * n))

end

end A104082.P13180858578586373724

namespace A104082

/-- `xor(A013597(2*n), A171559(2*n))` -/
def P13180858578586373724.Spec : Prop :=
  ∀ n, P13180858578586373724.a n = A104082 n

end A104082

/-! ## A104082.P17117957339761147988

`A000225(2*n)+A013597(2*n)+1`
-/

namespace A104082.P17117957339761147988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n) + (A013597 (2 * n) + 1)

end

end A104082.P17117957339761147988

namespace A104082

/-- `A000225(2*n)+A013597(2*n)+1` -/
def P17117957339761147988.Spec : Prop :=
  ∀ n, P17117957339761147988.a n = A104082 n

end A104082

/-! ## A104082.P813441451204953994

`A000051(2*n)+A013597(2*n)-1`
-/

namespace A104082.P813441451204953994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n) + (A013597 (2 * n) - 1)

end

end A104082.P813441451204953994

namespace A104082

/-- `A000051(2*n)+A013597(2*n)-1` -/
def P813441451204953994.Spec : Prop :=
  ∀ n, P813441451204953994.a n = A104082 n

end A104082

/-! ## A104082.P12869457247549794383

`A104080(A004277(n))+n%A086436(A093074(n+1))`
-/

namespace A104082.P12869457247549794383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (A004277 n).toNat + Int.tmod (n : ℤ) (A086436 (A093074 (n + 1)).toNat)

end

end A104082.P12869457247549794383

namespace A104082

/-- `A104080(A004277(n))+n%A086436(A093074(n+1))` -/
def P12869457247549794383.Spec : Prop :=
  ∀ n, P12869457247549794383.a n = A104082 n

end A104082

/-! ## A104082.P4794125840868339590

`A104080(A004277(n))/(A319410(n-A000120(n))+1)%2`
-/

namespace A104082.P4794125840868339590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104080 (A004277 n).toNat : ℚ) / (Int.tmod (A319410 ((n : ℤ) - A000120 n).toNat + 1) 2 : ℚ)

end

end A104082.P4794125840868339590

namespace A104082

/-- `A104080(A004277(n))/(A319410(n-A000120(n))+1)%2` -/
def P4794125840868339590.Spec : Prop :=
  ∀ n, P4794125840868339590.a n = (A104082 n : ℚ)

end A104082

/-! ## A104082.P11251292936527355069

`2*A203074(2*n+1)/A020639(2*(n+1))`
-/

namespace A104082.P11251292936527355069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A203074 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A104082.P11251292936527355069

namespace A104082

/-- `2*A203074(2*n+1)/A020639(2*(n+1))` -/
def P11251292936527355069.Spec : Prop :=
  ∀ n, P11251292936527355069.a n = (A104082 n : ℚ)

end A104082

/-!
# A104083: Smallest prime >= 5^n.

The programs for A104083, there is no canonical definition to state claims against.
-/

/-! ## A104083.P4959776949773655693

`A054321(n)-2*char[1]`
-/

namespace A104083.P4959776949773655693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054321 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A104083.P4959776949773655693

/-! ## A104083.P3466978135905676103

`or(1, A054321(n))-A130706(n)`
-/

namespace A104083.P3466978135905676103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054321 n) - A130706 n

end

end A104083.P3466978135905676103

/-! ## A104083.P11512101934310419427

`A104081(n)+A054321(n)-A014211(n)`
-/

namespace A104083.P11512101934310419427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n + (A054321 n - A014211 n)

end

end A104083.P11512101934310419427

/-! ## A104083.P4038425794550664092

`A340959(eq[4, A193592(n)])`
-/

namespace A104083.P4038425794550664092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104083.P4038425794550664092

/-! ## A104083.P14572995427361273789

`A340959(A000096(n+4)-3)`
-/

namespace A104083.P14572995427361273789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A000096 (n + 4) - 3).toNat

end

end A104083.P14572995427361273789

/-! ## A104083.P15438462416536149193

`xor(A000038(A084475(n)), A054321(n))`
-/

namespace A104083.P15438462416536149193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A084475 n).toNat) (A054321 n)

end

end A104083.P15438462416536149193

/-!
# A104084: Smallest prime >= 7^n.

The programs for A104084, there is no canonical definition to state claims against.
-/

/-! ## A104084.P10069055483485842130

`A340959(A055999(n+4))`
-/

namespace A104084.P10069055483485842130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A055999 (n + 4)).toNat

end

end A104084.P10069055483485842130

/-! ## A104084.P1525372005053207444

`A340959(eq[4, A219347(n)])`
-/

namespace A104084.P1525372005053207444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104084.P1525372005053207444

/-! ## A104084.P12423985589609554422

`A063767(n)-A055672(3*n)`
-/

namespace A104084.P12423985589609554422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063767 n - A055672 (3 * n)

end

end A104084.P12423985589609554422

/-! ## A104084.P10446169597456000492

`A340959(A000217(n+6)+n+1)`
-/

namespace A104084.P10446169597456000492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A104084.P10446169597456000492

/-! ## A104084.P13609593611995225183

`A063767(n)-C(A013601(n), A104081(n))`
-/

namespace A104084.P13609593611995225183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063767 n - (Nat.choose (A013601 n).toNat (A104081 n).toNat : ℤ)

end

end A104084.P13609593611995225183

/-!
# A104085: Coefficient list length of Poincaré-like polynomials made from A047845, indices of odd nonprimes (group dimension equivalent plus one).

The programs for A104085, there is no canonical definition to state claims against.
-/

/-! ## A104085.P15511570456840593020

`∑[comp[∪[2*(n+1), p?[2*n+1]]]]+1`
-/

namespace A104085.P15511570456840593020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104085.P15511570456840593020

/-! ## A104085.P8758633517077347660

`∑[abs(record[A128060(n)])]`
-/

namespace A104085.P8758633517077347660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104085.P8758633517077347660

/-! ## A104085.P9620430306166417764

`∑[lt[A107279(n), 1]]+1`
-/

namespace A104085.P9620430306166417764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104085.P9620430306166417764

/-! ## A104085.P3713880634753822755

`∑[A014076(ceil(abs(γ-n)))]`
-/

namespace A104085.P3713880634753822755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104085.P3713880634753822755

/-! ## A104085.P3742090371936225368

`∑[A067800(floor(acot(n)+n))]`
-/

namespace A104085.P3742090371936225368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104085.P3742090371936225368

/-!
# A104086: Smallest prime > 9^n.

The programs for A104086, there is no canonical definition to state claims against.
-/

/-! ## A104086.P10069197368089754725

`A014211(2*n)`
-/

namespace A104086.P10069197368089754725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 (2 * n)

end

end A104086.P10069197368089754725

/-! ## A104086.P8388454848713251120

`A104081(2*n)`
-/

namespace A104086.P8388454848713251120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (2 * n)

end

end A104086.P8388454848713251120

/-! ## A104086.P17361577101121741879

`record[A104081(n)/(-1)^n]`
-/

namespace A104086.P17361577101121741879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104081 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104086.P17361577101121741879

/-! ## A104086.P2638608377890748171

`A340959(A091823(n+1))`
-/

namespace A104086.P2638608377890748171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A091823 (n + 1)).toNat

end

end A104086.P2638608377890748171

/-! ## A104086.P6780116204221308665

`A127796(n)+A001019(n)`
-/

namespace A104086.P6780116204221308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127796 n + A001019 n

end

end A104086.P6780116204221308665

/-!
# A104087: Smallest prime >= 11^n.

The programs for A104087, there is no canonical definition to state claims against.
-/

/-! ## A104087.P17385751300069911726

`A340959(eq[10, A193592(n)])`
-/

namespace A104087.P17385751300069911726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104087.P17385751300069911726

/-! ## A104087.P4134914879880550149

`A340959(eq[10, A219347(n)])`
-/

namespace A104087.P4134914879880550149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104087.P4134914879880550149

/-! ## A104087.P12008802015553562123

`A340959(A000217(n+10)+n+1)`
-/

namespace A104087.P12008802015553562123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A104087.P12008802015553562123

/-! ## A104087.P15154573290090710942

`A340959(A348553(n)+A000217(n+10))`
-/

namespace A104087.P15154573290090710942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A348553 n + A000217 (n + 10)).toNat

end

end A104087.P15154573290090710942

/-!
# A104088: Largest prime <= 3^n.

The programs for A104088, there is no canonical definition to state claims against.
-/

/-! ## A104088.P8308145474568572995

`A104081(n+1)-A338155(n+1)`
-/

namespace A104088.P8308145474568572995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (n + 1) - A338155 (n + 1)

end

end A104088.P8308145474568572995

/-! ## A104088.P3507641284625842653

`A104081(n+1)+-A338155(n+1)%A000420(n)`
-/

namespace A104088.P3507641284625842653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (n + 1) + Int.tmod (-A338155 (n + 1)) (A000420 n)

end

end A104088.P3507641284625842653

/-! ## A104088.P6175660802177480333

`A133387(A007051(n))`
-/

namespace A104088.P6175660802177480333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (A007051 n).toNat

end

end A104088.P6175660802177480333

/-! ## A104088.P3388934958004351476

`A133387(A135233(∑[n]))`
-/

namespace A104088.P3388934958004351476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (A135233 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104088.P3388934958004351476

/-!
# A104089: Largest prime <= 4^n.

The programs for A104089, the canonical program `A104089.P11213303609795102587` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104089 has offset 1).

The definition of A104089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104089.P11213303609795102587

`A007917(A000302(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104089

/-- `A007917(A000302(n+1))` -/
def P11213303609795102587.Spec : Prop :=
  ∀ n, P11213303609795102587.a n = A104089 (n + 1)

theorem P11213303609795102587.correct : P11213303609795102587.Spec := by
  intro n
  simp only [A104089, Nat.add_sub_cancel]

end A104089

/-! ## A104089.P490195185922079268

`A014234(2*(n+1))`
-/

namespace A104089.P490195185922079268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (2 * (n + 1))

end

end A104089.P490195185922079268

namespace A104089

/-- `A014234(2*(n+1))` -/
def P490195185922079268.Spec : Prop :=
  ∀ n, P490195185922079268.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P13370458752680184323

`A133225(4*n+3)`
-/

namespace A104089.P13370458752680184323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133225 (4 * n + 3)

end

end A104089.P13370458752680184323

namespace A104089

/-- `A133225(4*n+3)` -/
def P13370458752680184323.Spec : Prop :=
  ∀ n, P13370458752680184323.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P14201659709863353260

`4^(n+1)-A013606(n+1)`
-/

namespace A104089.P14201659709863353260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A013606 (n + 1)

end

end A104089.P14201659709863353260

namespace A104089

/-- `4^(n+1)-A013606(n+1)` -/
def P14201659709863353260.Spec : Prop :=
  ∀ n, P14201659709863353260.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P12002647810000591589

`or(1, A014234(A103517(n)))`
-/

namespace A104089.P12002647810000591589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014234 (A103517 n).toNat)

end

end A104089.P12002647810000591589

namespace A104089

/-- `or(1, A014234(A103517(n)))` -/
def P12002647810000591589.Spec : Prop :=
  ∀ n, P12002647810000591589.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P10929735910790510407

`record[A014234(A004442(n)+1)]`
-/

namespace A104089.P10929735910790510407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104089.P10929735910790510407

namespace A104089

/-- `record[A014234(A004442(n)+1)]` -/
def P10929735910790510407.Spec : Prop :=
  ∀ n, P10929735910790510407.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P3802672820997868064

`or(1, A014234(lt[2, A020639(n+1)]))`
-/

namespace A104089.P3802672820997868064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A104089.P3802672820997868064

namespace A104089

/-- `or(1, A014234(lt[2, A020639(n+1)]))` -/
def P3802672820997868064.Spec : Prop :=
  ∀ n, P3802672820997868064.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P4736159160561134598

`A000302(n+1)-A013603(2*(n+1))`
-/

namespace A104089.P4736159160561134598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - A013603 (2 * (n + 1))

end

end A104089.P4736159160561134598

namespace A104089

/-- `A000302(n+1)-A013603(2*(n+1))` -/
def P4736159160561134598.Spec : Prop :=
  ∀ n, P4736159160561134598.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P12972540498642510059

`A000079(n+1)²-A013603(2*(n+1))`
-/

namespace A104089.P12972540498642510059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A013603 (2 * (n + 1))

end

end A104089.P12972540498642510059

namespace A104089

/-- `A000079(n+1)²-A013603(2*(n+1))` -/
def P12972540498642510059.Spec : Prop :=
  ∀ n, P12972540498642510059.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P4364678652850438490

`A171559(n+1)²-A013603(2*(n+1))`
-/

namespace A104089.P4364678652850438490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (n + 1) ^ 2 - A013603 (2 * (n + 1))

end

end A104089.P4364678652850438490

namespace A104089

/-- `A171559(n+1)²-A013603(2*(n+1))` -/
def P4364678652850438490.Spec : Prop :=
  ∀ n, P4364678652850438490.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P10923408818636149653

`A000079(2*(n+1))-A013603(2*(n+1))`
-/

namespace A104089.P10923408818636149653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1)) - A013603 (2 * (n + 1))

end

end A104089.P10923408818636149653

namespace A104089

/-- `A000079(2*(n+1))-A013603(2*(n+1))` -/
def P10923408818636149653.Spec : Prop :=
  ∀ n, P10923408818636149653.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P16117089429965629292

`A014210(2*(n+1))-A058249(2*(n+1))`
-/

namespace A104089.P16117089429965629292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * (n + 1)) - A058249 (2 * (n + 1))

end

end A104089.P16117089429965629292

namespace A104089

/-- `A014210(2*(n+1))-A058249(2*(n+1))` -/
def P16117089429965629292.Spec : Prop :=
  ∀ n, P16117089429965629292.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P9879175596399726659

`A198633(2*n+1)-A013603(2*(n+1))`
-/

namespace A104089.P9879175596399726659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (2 * n + 1) - A013603 (2 * (n + 1))

end

end A104089.P9879175596399726659

namespace A104089

/-- `A198633(2*n+1)-A013603(2*(n+1))` -/
def P9879175596399726659.Spec : Prop :=
  ∀ n, P9879175596399726659.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P3578808517380100291

`A126646(2*n+1)+1-A013603(2*(n+1))`
-/

namespace A104089.P3578808517380100291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 * n + 1) + (1 - A013603 (2 * (n + 1)))

end

end A104089.P3578808517380100291

namespace A104089

/-- `A126646(2*n+1)+1-A013603(2*(n+1))` -/
def P3578808517380100291.Spec : Prop :=
  ∀ n, P3578808517380100291.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P12813718386619136671

`2*A171559(2*n+1)-A013603(2*(n+1))`
-/

namespace A104089.P12813718386619136671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171559 (2 * n + 1) - A013603 (2 * (n + 1))

end

end A104089.P12813718386619136671

namespace A104089

/-- `2*A171559(2*n+1)-A013603(2*(n+1))` -/
def P12813718386619136671.Spec : Prop :=
  ∀ n, P12813718386619136671.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P844797772758425652

`A092507(2*(n+1))-A014210(2*(n+1))`
-/

namespace A104089.P844797772758425652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092507 (2 * (n + 1)) - A014210 (2 * (n + 1))

end

end A104089.P844797772758425652

namespace A104089

/-- `A092507(2*(n+1))-A014210(2*(n+1))` -/
def P844797772758425652.Spec : Prop :=
  ∀ n, P844797772758425652.a n = A104089 (n + 1)

end A104089

/-! ## A104089.P16978648947791412122

`record[A014234(A158405(n+1)+1)]`
-/

namespace A104089.P16978648947791412122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (A158405 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104089.P16978648947791412122

namespace A104089

/-- `record[A014234(A158405(n+1)+1)]` -/
def P16978648947791412122.Spec : Prop :=
  ∀ n, P16978648947791412122.a n = A104089 (n + 1)

end A104089

/-!
# A104090: Largest prime <= 5^n.

The programs for A104090, the canonical program `A104090.P14849277082735369052` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104090 has offset 1).

The definition of A104090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104090.P14849277082735369052

`A007917(A000351(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104090

/-- `A007917(A000351(n+1))` -/
def P14849277082735369052.Spec : Prop :=
  ∀ n, P14849277082735369052.a n = A104090 (n + 1)

theorem P14849277082735369052.correct : P14849277082735369052.Spec := by
  intro n
  simp only [A104090, Nat.add_sub_cancel]

end A104090

/-! ## A104090.P16438650489658830498

`A104083(n+1)-A338419(n+1)`
-/

namespace A104090.P16438650489658830498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104083 (n + 1) - A338419 (n + 1)

end

end A104090.P16438650489658830498

namespace A104090

/-- `A104083(n+1)-A338419(n+1)` -/
def P16438650489658830498.Spec : Prop :=
  ∀ n, P16438650489658830498.a n = A104090 (n + 1)

end A104090

/-!
# A104091: Largest prime <= 6^n.

The programs for A104091, there is no canonical definition to state claims against.
-/

/-! ## A104091.P4624820631268468477

`6^(n+1)-A013607(n+1)`
-/

namespace A104091.P4624820631268468477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) - A013607 (n + 1)

end

end A104091.P4624820631268468477

/-! ## A104091.P1373574059311491084

`A063766(n+1)-A338376(n+1)`
-/

namespace A104091.P1373574059311491084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063766 (n + 1) - A338376 (n + 1)

end

end A104091.P1373574059311491084

/-! ## A104091.P1125136451967933131

`A169604(n)+A169604(n)-A013607(n+1)`
-/

namespace A104091.P1125136451967933131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 n + (A169604 n - A013607 (n + 1))

end

end A104091.P1125136451967933131

/-! ## A104091.P6100599677263704249

`A063766(n+1)-(A013607(n+1)+A013600(n+1))`
-/

namespace A104091.P6100599677263704249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063766 (n + 1) - (A013607 (n + 1) + A013600 (n + 1))

end

end A104091.P6100599677263704249

/-! ## A104091.P1889723499932087095

`A000400(n+1)-(A338376(n+1)-A013600(n+1))`
-/

namespace A104091.P1889723499932087095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n + 1) - (A338376 (n + 1) - A013600 (n + 1))

end

end A104091.P1889723499932087095

/-! ## A104091.P4899641344713521265

`A000400(A000027(n+1))-A000027(A013607(n+1))`
-/

namespace A104091.P4899641344713521265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A000027 (n + 1)).toNat - A000027 (A013607 (n + 1)).toNat

end

end A104091.P4899641344713521265

/-!
# A104093: Largest prime <= 8^n.

The programs for A104093, the canonical program `A104093.P9972697725533396511` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104093 has offset 1).

The definition of A104093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104093.P9972697725533396511

`A014234(3*(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104093

/-- `A014234(3*(n+1))` -/
def P9972697725533396511.Spec : Prop :=
  ∀ n, P9972697725533396511.a n = A104093 (n + 1)

theorem P9972697725533396511.correct : P9972697725533396511.Spec := by
  intro n
  simp only [A104093, Nat.add_sub_cancel]

end A104093

/-! ## A104093.P5330879991053912420

`A133225(6*n+5)`
-/

namespace A104093.P5330879991053912420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133225 (6 * n + 5)

end

end A104093.P5330879991053912420

namespace A104093

/-- `A133225(6*n+5)` -/
def P5330879991053912420.Spec : Prop :=
  ∀ n, P5330879991053912420.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P14375645124321129390

`record[A014234(A006368(n+2))]`
-/

namespace A104093.P14375645124321129390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (A006368 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104093.P14375645124321129390

namespace A104093

/-- `record[A014234(A006368(n+2))]` -/
def P14375645124321129390.Spec : Prop :=
  ∀ n, P14375645124321129390.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P10740692194889783726

`record[A014234(A071045(n+2))]`
-/

namespace A104093.P10740692194889783726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (A071045 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104093.P10740692194889783726

namespace A104093

/-- `record[A014234(A071045(n+2))]` -/
def P10740692194889783726.Spec : Prop :=
  ∀ n, P10740692194889783726.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P12376086496919632245

`A120274(3*n+2)+A000038(n)`
-/

namespace A104093.P12376086496919632245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120274 (3 * n + 2) + A000038 n

end

end A104093.P12376086496919632245

namespace A104093

/-- `A120274(3*n+2)+A000038(n)` -/
def P12376086496919632245.Spec : Prop :=
  ∀ n, P12376086496919632245.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P5151395947971604807

`or(A000051(n+1), A120274(3*n+2))`
-/

namespace A104093.P5151395947971604807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (n + 1)) (A120274 (3 * n + 2))

end

end A104093.P5151395947971604807

namespace A104093

/-- `or(A000051(n+1), A120274(3*n+2))` -/
def P5151395947971604807.Spec : Prop :=
  ∀ n, P5151395947971604807.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P17386033556843103605

`or(2*A000079(n)², A120274(3*n+2))`
-/

namespace A104093.P17386033556843103605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A000079 n ^ 2) (A120274 (3 * n + 2))

end

end A104093.P17386033556843103605

namespace A104093

/-- `or(2*A000079(n)², A120274(3*n+2))` -/
def P17386033556843103605.Spec : Prop :=
  ∀ n, P17386033556843103605.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P8011216340746486074

`or(A000079(2*n+1), A120274(3*n+2))`
-/

namespace A104093.P8011216340746486074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (2 * n + 1)) (A120274 (3 * n + 2))

end

end A104093.P8011216340746486074

namespace A104093

/-- `or(A000079(2*n+1), A120274(3*n+2))` -/
def P8011216340746486074.Spec : Prop :=
  ∀ n, P8011216340746486074.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P10436071747033777457

`or(A000034(A008864(n+1)), A120274(3*n+2))`
-/

namespace A104093.P10436071747033777457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (A008864 (n + 1)).toNat) (A120274 (3 * n + 2))

end

end A104093.P10436071747033777457

namespace A104093

/-- `or(A000034(A008864(n+1)), A120274(3*n+2))` -/
def P10436071747033777457.Spec : Prop :=
  ∀ n, P10436071747033777457.a n = A104093 (n + 1)

end A104093

/-! ## A104093.P1252376471473435171

`A120274(3*n+2)+A120588(n)+A115140(n)`
-/

namespace A104093.P1252376471473435171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120274 (3 * n + 2) + (A120588 n + A115140 n)

end

end A104093.P1252376471473435171

namespace A104093

/-- `A120274(3*n+2)+A120588(n)+A115140(n)` -/
def P1252376471473435171.Spec : Prop :=
  ∀ n, P1252376471473435171.a n = A104093 (n + 1)

end A104093

/-!
# A104094: Largest prime <= 9^n.

The programs for A104094, there is no canonical definition to state claims against.
-/

/-! ## A104094.P2486513328240009200

`9^(n+1)-A013604(2*(n+1))`
-/

namespace A104094.P2486513328240009200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ (n + 1) : ℤ) - A013604 (2 * (n + 1))

end

end A104094.P2486513328240009200

/-! ## A104094.P2192326039533889857

`A104088(2*(n+1))`
-/

namespace A104094.P2192326039533889857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104088 (2 * (n + 1))

end

end A104094.P2192326039533889857

/-! ## A104094.P13195832454562922106

`record[A104088(A014681(n+1))]`
-/

namespace A104094.P13195832454562922106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104088 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104094.P13195832454562922106

/-! ## A104094.P4753307850583611737

`record[A104088(A004277(abs(1-n)))]`
-/

namespace A104094.P4753307850583611737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104088 (A004277 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104094.P4753307850583611737

/-!
# A104095: Let v[0]={0,1,1,2}, v[n]=M.v[n-1], where M={{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 10, 19, 1}}; then a(n) =v[n][[1]] (the first term).

The programs for A104095, the canonical program `A104095.P7579794507152351288` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104095 has offset 0).

The definition of A104095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104095.P7579794507152351288

`a(n-1)+19*a(n-2)+10*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104095

/-- `a(n-1)+19*a(n-2)+10*a(n-3)+a(n-4)` -/
def P7579794507152351288.Spec : Prop :=
  ∀ n, (P7579794507152351288.a n : ℤ) = A104095 n

theorem P7579794507152351288.correct : P7579794507152351288.Spec := by
  intro n
  simp only [A104095]

end A104095

/-!
# A104097: Denominators of coefficients in expansion of x^-2*(1-exp(-2*x))^2.

The programs for A104097, there is no canonical definition to state claims against.
-/

/-! ## A104097.P2004095337033785294

`gcd(∏[A005408(n)], A002679(n+2))`
-/

namespace A104097.P2004095337033785294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A002679 (n + 2))

end

end A104097.P2004095337033785294

/-! ## A104097.P14141315899653488963

`gcd(A002679(n+2), A231327(n))`
-/

namespace A104097.P14141315899653488963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002679 (n + 2)) (A231327 n)

end

end A104097.P14141315899653488963

/-! ## A104097.P6445807264968607793

`A000265(A002679(n+2)/A059268(n))`
-/

namespace A104097.P6445807264968607793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A002679 (n + 2) : ℚ) / (A059268 n : ℚ))).toNat

end

end A104097.P6445807264968607793

/-! ## A104097.P17880355537106624792

`A000265(ceil(A002679(n+2)/4))`
-/

namespace A104097.P17880355537106624792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ⌈(A002679 (n + 2) : ℚ) / 4⌉.toNat

end

end A104097.P17880355537106624792

/-! ## A104097.P14546798254537492052

`A000265(A002679(n+2)/A274624(n))`
-/

namespace A104097.P14546798254537492052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A002679 (n + 2) : ℚ) / (A274624 n : ℚ))).toNat

end

end A104097.P14546798254537492052

/-!
# A104098: a(n) = Sum_{k=1..n} binomial(n-1, k-1)*A008292(n, k) for n >= 1.

The programs for A104098, there is no canonical definition to state claims against.
-/

/-! ## A104098.P455967429395131168

`A165891(∑[2*n])`
-/

namespace A104098.P455967429395131168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104098.P455967429395131168

/-! ## A104098.P1233260642438446272

`record[A165891(∑[A008619(n)])]`
-/

namespace A104098.P1233260642438446272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165891 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104098.P1233260642438446272

/-! ## A104098.P13756126559927781243

`record[A165891(∑[A110654(n)])]`
-/

namespace A104098.P13756126559927781243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165891 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104098.P13756126559927781243

/-! ## A104098.P16672084856068501623

`record[A165891(A075362(n+1))]`
-/

namespace A104098.P16672084856068501623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165891 (A075362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104098.P16672084856068501623

/-! ## A104098.P7865033823592661210

`record[A165891(n*A118174(n))]`
-/

namespace A104098.P7865033823592661210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165891 ((n : ℤ) * A118174 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104098.P7865033823592661210

/-! ## A104098.P1191753954583011060

`record[A165891(n)/A100861(n)]`
-/

namespace A104098.P1191753954583011060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165891 n : ℚ) / (A100861 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104098.P1191753954583011060

/-!
# A104099: a(n) = n * (10*n^2 - 6n + 1) = n * A087348(n).

The programs for A104099, the canonical program `A104099.P6390214552487031188` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104099 has offset 0).

The definition of A104099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(10*n²-6*n+1)` (program `A104099.P6390214552487031188`, by `A104099.P6390214552487031188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104099.P6390214552487031188

`n*(10*n²-6*n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104099

/-- `n*(10*n²-6*n+1)` -/
def P6390214552487031188.Spec : Prop :=
  ∀ n, P6390214552487031188.a n = A104099 n

theorem P6390214552487031188.correct : P6390214552487031188.Spec := by
  intro n
  simp only [A104099]

end A104099

/-! ## A104099.P11697630107090388192

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=58, a(3)=219`
-/

namespace A104099.P11697630107090388192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 58, 219] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A104099.P11697630107090388192

namespace A104099

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11697630107090388192.Spec : Prop :=
  ∀ n, P11697630107090388192.a n = A104099 n

theorem P11697630107090388192.correct : P11697630107090388192.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A104099, Nat.add_sub_cancel, A104099.P11697630107090388192.a, A104099.P6390214552487031188.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A104099, Nat.add_sub_cancel, A104099.P11697630107090388192.a, A104099.P6390214552487031188.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A104099

/-! ## A104099.P1478384345019420118

`A006592(n)+n`
-/

namespace A104099.P1478384345019420118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006592 n + (n : ℤ)

end

end A104099.P1478384345019420118

namespace A104099

/-- `A006592(n)+n` -/
def P1478384345019420118.Spec : Prop :=
  ∀ n, P1478384345019420118.a n = A104099 n

end A104099

/-! ## A104099.P17766094818821105530

`4*A006597(n)+n`
-/

namespace A104099.P17766094818821105530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006597 n + (n : ℤ)

end

end A104099.P17766094818821105530

namespace A104099

/-- `4*A006597(n)+n` -/
def P17766094818821105530.Spec : Prop :=
  ∀ n, P17766094818821105530.a n = A104099 n

end A104099

/-! ## A104099.P14326116308105367733

`n*A153784(n)+n`
-/

namespace A104099.P14326116308105367733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153784 n + (n : ℤ)

end

end A104099.P14326116308105367733

namespace A104099

/-- `n*A153784(n)+n` -/
def P14326116308105367733.Spec : Prop :=
  ∀ n, P14326116308105367733.a n = A104099 n

end A104099

/-! ## A104099.P14934458343465729737

`A244729(n)-A049452(n)`
-/

namespace A104099.P14934458343465729737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n - A049452 n

end

end A104099.P14934458343465729737

namespace A104099

/-- `A244729(n)-A049452(n)` -/
def P14934458343465729737.Spec : Prop :=
  ∀ n, P14934458343465729737.a n = A104099 n

end A104099

/-! ## A104099.P2938771803713927937

`A299965(n)-A064761(n)`
-/

namespace A104099.P2938771803713927937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299965 n - A064761 n

end

end A104099.P2938771803713927937

namespace A104099

/-- `A299965(n)-A064761(n)` -/
def P2938771803713927937.Spec : Prop :=
  ∀ n, P2938771803713927937.a n = A104099 n

end A104099

