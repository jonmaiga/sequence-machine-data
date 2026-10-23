import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
# A034000: One half of triple factorial numbers.

The programs for A034000, the canonical program `A034000.P10195957492808334534` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034000 has offset 1).

The definition of A034000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034000.P10195957492808334534

`(3*(n+1)-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034000

/-- `(3*(n+1)-1)*a(n-1)` -/
def P10195957492808334534.Spec : Prop :=
  ∀ n, P10195957492808334534.a n = A034000 (n + 1)

theorem P10195957492808334534.correct : P10195957492808334534.Spec := by
  intro n
  simp only [A034000, Nat.add_sub_cancel]

end A034000

/-! ## A034000.P13570879236093953182

`A008544(n+1)/2`
-/

namespace A034000.P13570879236093953182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008544 (n + 1) : ℚ) / 2

end

end A034000.P13570879236093953182

namespace A034000

/-- `A008544(n+1)/2` -/
def P13570879236093953182.Spec : Prop :=
  ∀ n, P13570879236093953182.a n = (A034000 (n + 1) : ℚ)

end A034000

/-! ## A034000.P16042508014352312608

`A007661(3*(n+1)-1)/2`
-/

namespace A034000.P16042508014352312608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007661 (3 * (n + 1) - 1) : ℚ) / 2

end

end A034000.P16042508014352312608

namespace A034000

/-- `A007661(3*(n+1)-1)/2` -/
def P16042508014352312608.Spec : Prop :=
  ∀ n, P16042508014352312608.a n = (A034000 (n + 1) : ℚ)

end A034000

/-! ## A034000.P431147351077260733

`(3*(n+1)-1)!/(2*3^n*n!*A007559(n+1))`
-/

namespace A034000.P431147351077260733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((3 * (n + 1) : ℤ) - 1).toNat : ℚ) / ((2 * 3 ^ n * Nat.factorial n : ℤ) * A007559 (n + 1) : ℚ)

end

end A034000.P431147351077260733

namespace A034000

/-- `(3*(n+1)-1)!/(2*3^n*n!*A007559(n+1))` -/
def P431147351077260733.Spec : Prop :=
  ∀ n, P431147351077260733.a n = (A034000 (n + 1) : ℚ)

end A034000

/-! ## A034000.P2864039004724307205

`∏[3*n+2]/2`
-/

namespace A034000.P2864039004724307205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A034000.P2864039004724307205

namespace A034000

/-- `∏[3*n+2]/2` -/
def P2864039004724307205.Spec : Prop :=
  ∀ n, P2864039004724307205.a n = (A034000 (n + 1) : ℚ)

end A034000

/-! ## A034000.P6043531434942517577

`∏[a(n-1)+3]` with `a(0)=1, a(1)=5`
-/

namespace A034000.P6043531434942517577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034000.P6043531434942517577

namespace A034000

/-- `∏[a(n-1)+3]` -/
def P6043531434942517577.Spec : Prop :=
  ∀ n, (P6043531434942517577.a n : ℤ) = A034000 (n + 1)

end A034000

/-! ## A034000.P14645695078889372050

`∏[ceil(cosh(sin(n)))+3*n]`
-/

namespace A034000.P14645695078889372050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034000.P14645695078889372050

namespace A034000

/-- `∏[ceil(cosh(sin(n)))+3*n]` -/
def P14645695078889372050.Spec : Prop :=
  ∀ n, P14645695078889372050.a n = A034000 (n + 1)

end A034000

/-! ## A034000.P6201586122802590753

`∏[record[2-xor(1, -n)]+n]`
-/

namespace A034000.P6201586122802590753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034000.P6201586122802590753

namespace A034000

/-- `∏[record[2-xor(1, -n)]+n]` -/
def P6201586122802590753.Spec : Prop :=
  ∀ n, P6201586122802590753.a n = A034000 (n + 1)

end A034000

/-! ## A034000.P10422153829719397794

`∏[3*n+2-floor(acot(n))]`
-/

namespace A034000.P10422153829719397794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034000.P10422153829719397794

namespace A034000

/-- `∏[3*n+2-floor(acot(n))]` -/
def P10422153829719397794.Spec : Prop :=
  ∀ n, P10422153829719397794.a n = A034000 (n + 1)

end A034000

/-! ## A034000.P5076586390128413797

`record[n*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A034000.P5076586390128413797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  n * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034000.P5076586390128413797

namespace A034000

/-- `record[n*a(n-3)]` -/
def P5076586390128413797.Spec : Prop :=
  ∀ n, (P5076586390128413797.a n : ℤ) = A034000 (n + 1)

end A034000

/-!
# A034001: One third of triple factorial numbers.

The programs for A034001, the canonical program `A034001.P7206700946659577587` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034001 has offset 1).

The definition of A034001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034001.P7206700946659577587

`3^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034001

/-- `3^n*(n+1)!` -/
def P7206700946659577587.Spec : Prop :=
  ∀ n, (P7206700946659577587.a n : ℤ) = A034001 (n + 1)

theorem P7206700946659577587.correct : P7206700946659577587.Spec := by
  intro n
  simp only [A034001, Nat.add_sub_cancel]

end A034001

/-! ## A034001.P16797433456506885021

`3*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034001.P16797433456506885021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (n + 1) * a (n - 1)

end

end A034001.P16797433456506885021

namespace A034001

/-- `3*(n+1)*a(n-1)` -/
def P16797433456506885021.Spec : Prop :=
  ∀ n, (P16797433456506885021.a n : ℤ) = A034001 (n + 1)

end A034001

/-! ## A034001.P11359535763899743283

`∏[3*(n+1)]/3`
-/

namespace A034001.P11359535763899743283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A034001.P11359535763899743283

namespace A034001

/-- `∏[3*(n+1)]/3` -/
def P11359535763899743283.Spec : Prop :=
  ∀ n, P11359535763899743283.a n = (A034001 (n + 1) : ℚ)

end A034001

/-! ## A034001.P6272405208547062245

`∏[a(n-1)+3]` with `a(0)=1, a(1)=6`
-/

namespace A034001.P6272405208547062245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034001.P6272405208547062245

namespace A034001

/-- `∏[a(n-1)+3]` -/
def P6272405208547062245.Spec : Prop :=
  ∀ n, (P6272405208547062245.a n : ℤ) = A034001 (n + 1)

end A034001

/-! ## A034001.P14159495967080635558

`or(1, 3^n)*∏[n+1]`
-/

namespace A034001.P14159495967080635558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 ^ n) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034001.P14159495967080635558

namespace A034001

/-- `or(1, 3^n)*∏[n+1]` -/
def P14159495967080635558.Spec : Prop :=
  ∀ n, (P14159495967080635558.a n : ℤ) = A034001 (n + 1)

end A034001

/-! ## A034001.P17875845482728451063

`round((n+1)!/3^-n)`
-/

namespace A034001.P17875845482728451063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A034001.P17875845482728451063

namespace A034001

/-- `round((n+1)!/3^-n)` -/
def P17875845482728451063.Spec : Prop :=
  ∀ n, P17875845482728451063.a n = A034001 (n + 1)

end A034001

/-! ## A034001.P6401278567303519250

`3^n*∏[C(n+1, n)]`
-/

namespace A034001.P6401278567303519250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034001.P6401278567303519250

namespace A034001

/-- `3^n*∏[C(n+1, n)]` -/
def P6401278567303519250.Spec : Prop :=
  ∀ n, (P6401278567303519250.a n : ℤ) = A034001 (n + 1)

theorem P6401278567303519250.correct : P6401278567303519250.Spec := by
  intro n
  simp only [A034001, Nat.add_sub_cancel, A034001.P6401278567303519250.f1, A034001.P6401278567303519250.a, A034001.P7206700946659577587.a, SequenceMachineLib.memo_apply]
  try simp

end A034001

/-! ## A034001.P9621952339695372233

`record[n*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A034001.P9621952339695372233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  n * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034001.P9621952339695372233

namespace A034001

/-- `record[n*a(n-3)]` -/
def P9621952339695372233.Spec : Prop :=
  ∀ n, (P9621952339695372233.a n : ℤ) = A034001 (n + 1)

end A034001

/-! ## A034001.P15716247593405644411

`∏[(n+1)*3%(n+2)!]`
-/

namespace A034001.P15716247593405644411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 % Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034001.P15716247593405644411

namespace A034001

/-- `∏[(n+1)*3%(n+2)!]` -/
def P15716247593405644411.Spec : Prop :=
  ∀ n, (P15716247593405644411.a n : ℤ) = A034001 (n + 1)

end A034001

/-! ## A034001.P14495050951069572627

`∏[(n+1)*gcd(3, (n+2)!)]`
-/

namespace A034001.P14495050951069572627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 3 (Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034001.P14495050951069572627

namespace A034001

/-- `∏[(n+1)*gcd(3, (n+2)!)]` -/
def P14495050951069572627.Spec : Prop :=
  ∀ n, (P14495050951069572627.a n : ℤ) = A034001 (n + 1)

end A034001

/-!
# A034002: A005150 expanded into single digits.

The programs for A034002, there is no canonical definition to state claims against.
-/

/-! ## A034002.P8035130476695978856

`A110869(and(A039621(n+1), A071044(n)))`
-/

namespace A034002.P8035130476695978856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110869 (Int.land (A039621 (n + 1)) (A071044 n)).toNat

end

end A034002.P8035130476695978856

/-! ## A034002.P17108403806975523433

`A154958(A000120(A018885(n+1)))`
-/

namespace A034002.P17108403806975523433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A000120 (A018885 (n + 1)).toNat).toNat

end

end A034002.P17108403806975523433

/-! ## A034002.P4073524009354010231

`A324826(A324827(or(32, A000043(n+1))))`
-/

namespace A034002.P4073524009354010231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (A324827 (Int.lor 32 (A000043 (n + 1))).toNat).toNat

end

end A034002.P4073524009354010231

/-! ## A034002.P11898028427126930348

`A328855(A257565(n)+A026238(n+2))`
-/

namespace A034002.P11898028427126930348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A257565 n + A026238 (n + 2)).toNat

end

end A034002.P11898028427126930348

/-! ## A034002.P486486170115778326

`gcd(A003967(A000011(n)), A333749(n+3))`
-/

namespace A034002.P486486170115778326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003967 (A000011 n).toNat) (A333749 (n + 3))

end

end A034002.P486486170115778326

/-!
# A034003: A007890 expanded into single digits.

The programs for A034003, there is no canonical definition to state claims against.
-/

/-! ## A034003.P15417043368965436137

`gcd(A326702(n), A352103(A089259(n)))`
-/

namespace A034003.P15417043368965436137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326702 n) (A352103 (A089259 n).toNat)

end

end A034003.P15417043368965436137

/-!
# A034005: Successive digits of Catalan numbers.

The programs for A034005, there is no canonical definition to state claims against.
-/

/-! ## A034005.P2998963093516820326

`A133501(xor(9, A081703(n+1)))`
-/

namespace A034005.P2998963093516820326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 (Int.xor 9 (A081703 (n + 1))).toNat

end

end A034005.P2998963093516820326

/-!
# A034006: Number of n-step self-avoiding walks on the 4-dimensional hypercubic lattice with no non-contiguous adjacencies.

The programs for A034006, there is no canonical definition to state claims against.
-/

/-! ## A034006.P10559636541801056940

`A004396(2*A246938(n))`
-/

namespace A034006.P10559636541801056940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A246938 n).toNat

end

end A034006.P10559636541801056940

/-!
# A034007: First differences of A045891.

The programs for A034007, the canonical program `A034007.P2121894641248559257` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034007 has offset 0).

The definition of A034007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034007.P5421001101609535541

`ogf((1-4x+6x^2-4x^3+x^4)/(1-4x+4x^2))`
-/

namespace A034007.P5421001101609535541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -4, 4] n

end

end A034007.P5421001101609535541

namespace A034007

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-4x+4x^2))` -/
def P5421001101609535541.Spec : Prop :=
  ∀ n, P5421001101609535541.a n = A034007 n

end A034007

/-! ## A034007.P2121894641248559257

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034007

/-- `4*(a(n-1)-a(n-2))` -/
def P2121894641248559257.Spec : Prop :=
  ∀ n, P2121894641248559257.a n = A034007 n

theorem P2121894641248559257.correct : P2121894641248559257.Spec := by
  intro n
  simp only [A034007]

end A034007

/-! ## A034007.P18441630018083572014

`Δ[A290114(n)]-A008936(n)`
-/

namespace A034007.P18441630018083572014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008936 n

end

end A034007.P18441630018083572014

namespace A034007

/-- `Δ[A290114(n)]-A008936(n)` -/
def P18441630018083572014.Spec : Prop :=
  ∀ n, P18441630018083572014.a n = A034007 n

end A034007

/-! ## A034007.P16077388559422744565

`A045891(n)-round(A045623(n)/4)`
-/

namespace A034007.P16077388559422744565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n - SequenceMachineLib.roundAway ((A045623 n : ℚ) / 4)

end

end A034007.P16077388559422744565

namespace A034007

/-- `A045891(n)-round(A045623(n)/4)` -/
def P16077388559422744565.Spec : Prop :=
  ∀ n, P16077388559422744565.a n = A034007 n

end A034007

/-! ## A034007.P11401016631186372

`Δ[round(A045623(n)/4)]`
-/

namespace A034007.P11401016631186372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045623 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034007.P11401016631186372

namespace A034007

/-- `Δ[round(A045623(n)/4)]` -/
def P11401016631186372.Spec : Prop :=
  ∀ n, P11401016631186372.a n = A034007 n

end A034007

/-! ## A034007.P404956167614521165

`2*A362179(n)-A158920(n+1)`
-/

namespace A034007.P404956167614521165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362179 n - A158920 (n + 1)

end

end A034007.P404956167614521165

namespace A034007

/-- `2*A362179(n)-A158920(n+1)` -/
def P404956167614521165.Spec : Prop :=
  ∀ n, P404956167614521165.a n = A034007 n

end A034007

/-! ## A034007.P15415059214688338755

`A062110(A133263(n))+A034008(n)`
-/

namespace A034007.P15415059214688338755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A133263 n).toNat + A034008 n

end

end A034007.P15415059214688338755

namespace A034007

/-- `A062110(A133263(n))+A034008(n)` -/
def P15415059214688338755.Spec : Prop :=
  ∀ n, P15415059214688338755.a n = A034007 n

end A034007

/-! ## A034007.P5930556028167406950

`A058394(A004273(n²))`
-/

namespace A034007.P5930556028167406950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058394 (A004273 (n ^ 2)).toNat

end

end A034007.P5930556028167406950

namespace A034007

/-- `A058394(A004273(n²))` -/
def P5930556028167406950.Spec : Prop :=
  ∀ n, P5930556028167406950.a n = A034007 n

end A034007

/-! ## A034007.P16885095784943784744

`A091613(∑[4*n]+1)`
-/

namespace A034007.P16885095784943784744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034007.P16885095784943784744

namespace A034007

/-- `A091613(∑[4*n]+1)` -/
def P16885095784943784744.Spec : Prop :=
  ∀ n, P16885095784943784744.a n = A034007 n

end A034007

/-!
# A034008: a(n) = floor(2^|n-1|/2). Or: 1, 0, followed by powers of 2.

The programs for A034008, the canonical program `A034008.P7593150546580332811` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034008 has offset 0).

The definition of A034008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034008.P3865077651518371232

`ogf((1-2x+x^2)/(1-2x))`
-/

namespace A034008.P3865077651518371232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -2] n

end

end A034008.P3865077651518371232

namespace A034008

/-- `ogf((1-2x+x^2)/(1-2x))` -/
def P3865077651518371232.Spec : Prop :=
  ∀ n, P3865077651518371232.a n = A034008 n

end A034008

/-! ## A034008.P7593150546580332811

`abs(ceil((-2)^(n-2)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034008

/-- `abs(ceil((-2)^(n-2)))` -/
def P7593150546580332811.Spec : Prop :=
  ∀ n, P7593150546580332811.a n = A034008 n

theorem P7593150546580332811.correct : P7593150546580332811.Spec := by
  intro n
  simp only [A034008]

end A034008

/-! ## A034008.P1152132570085587066

`2*a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A034008.P1152132570085587066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  2 * a (n - 1)

end

end A034008.P1152132570085587066

namespace A034008

/-- `2*a(n-1)` -/
def P1152132570085587066.Spec : Prop :=
  ∀ n, (P1152132570085587066.a n : ℤ) = A034008 n

end A034008

/-! ## A034008.P5571980476733033839

`(2-C(2, n))^abs(2-n)`
-/

namespace A034008.P5571980476733033839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 n : ℤ) : ℚ) ^ (|2 - (n : ℤ)| : ℤ)

end

end A034008.P5571980476733033839

namespace A034008

/-- `(2-C(2, n))^abs(2-n)` -/
def P5571980476733033839.Spec : Prop :=
  ∀ n, P5571980476733033839.a n = (A034008 n : ℚ)

end A034008

/-! ## A034008.P2694023278232394168

`floor(2^((n-2)%(n+1)))`
-/

namespace A034008.P2694023278232394168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ) : ℤ)⌋

end

end A034008.P2694023278232394168

namespace A034008

/-- `floor(2^((n-2)%(n+1)))` -/
def P2694023278232394168.Spec : Prop :=
  ∀ n, P2694023278232394168.a n = A034008 n

end A034008

/-! ## A034008.P10313770429402708247

`and(1-n, ceil(2^(n-2)))`
-/

namespace A034008.P10313770429402708247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A034008.P10313770429402708247

namespace A034008

/-- `and(1-n, ceil(2^(n-2)))` -/
def P10313770429402708247.Spec : Prop :=
  ∀ n, P10313770429402708247.a n = A034008 n

end A034008

/-! ## A034008.P3113250924946986413

`floor(ceil(atan(n+1))^(n-2))`
-/

namespace A034008.P3113250924946986413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.arctan (n + 1 : ℝ)⌉ : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A034008.P3113250924946986413

namespace A034008

/-- `floor(ceil(atan(n+1))^(n-2))` -/
def P3113250924946986413.Spec : Prop :=
  ∀ n, P3113250924946986413.a n = A034008 n

end A034008

/-! ## A034008.P15694517888196956517

`floor(acot(n+1)+2^(n-2))`
-/

namespace A034008.P15694517888196956517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n + 1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌋

end

end A034008.P15694517888196956517

namespace A034008

/-- `floor(acot(n+1)+2^(n-2))` -/
def P15694517888196956517.Spec : Prop :=
  ∀ n, P15694517888196956517.a n = A034008 n

end A034008

/-! ## A034008.P3738723305243414873

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A034008.P3738723305243414873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + a (n - 1)

end

end A034008.P3738723305243414873

namespace A034008

/-- `a(n-1)+a(n-1)` -/
def P3738723305243414873.Spec : Prop :=
  ∀ n, (P3738723305243414873.a n : ℤ) = A034008 n

end A034008

/-! ## A034008.P12398362236576744170

`floor(C(2, n+2)+2^(n-2))`
-/

namespace A034008.P12398362236576744170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 2 (n + 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A034008.P12398362236576744170

namespace A034008

/-- `floor(C(2, n+2)+2^(n-2))` -/
def P12398362236576744170.Spec : Prop :=
  ∀ n, P12398362236576744170.a n = A034008 n

end A034008

/-! ## A034008.P9151924199230898789

`ceil((2-C(4, n+2))^(n-2))`
-/

namespace A034008.P9151924199230898789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 - (Nat.choose 4 (n + 2) : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A034008.P9151924199230898789

namespace A034008

/-- `ceil((2-C(4, n+2))^(n-2))` -/
def P9151924199230898789.Spec : Prop :=
  ∀ n, P9151924199230898789.a n = A034008 n

end A034008

/-! ## A034008.P17982892583843249442

`round((2-C(4, 2*n))^(n-2))`
-/

namespace A034008.P17982892583843249442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 - (Nat.choose 4 (2 * n) : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A034008.P17982892583843249442

namespace A034008

/-- `round((2-C(4, 2*n))^(n-2))` -/
def P17982892583843249442.Spec : Prop :=
  ∀ n, P17982892583843249442.a n = A034008 n

end A034008

/-! ## A034008.P3347199079175910568

`floor((2-C(n, 2*n))^(n-2))`
-/

namespace A034008.P3347199079175910568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - (Nat.choose n (2 * n) : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A034008.P3347199079175910568

namespace A034008

/-- `floor((2-C(n, 2*n))^(n-2))` -/
def P3347199079175910568.Spec : Prop :=
  ∀ n, P3347199079175910568.a n = A034008 n

end A034008

/-! ## A034008.P378517793361143784

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A034008.P378517793361143784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A034008.P378517793361143784

namespace A034008

/-- `a(n-1)/(1-1/2)` -/
def P378517793361143784.Spec : Prop :=
  ∀ n, P378517793361143784.a n = (A034008 n : ℚ)

end A034008

/-! ## A034008.P7084228140266389924

`lcm(2^(n-2), a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A034008.P7084228140266389924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1) : ℤ)

end

end A034008.P7084228140266389924

namespace A034008

/-- `lcm(2^(n-2), a(n-1))` -/
def P7084228140266389924.Spec : Prop :=
  ∀ n, (P7084228140266389924.a n : ℤ) = A034008 n

end A034008

/-! ## A034008.P15153442271776822429

`ceil(atan(n-1))^((2*n)%(n+2))`
-/

namespace A034008.P15153442271776822429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((n : ℤ) - 1 : ℝ)⌉ ^ (2 * n % (n + 2))

end

end A034008.P15153442271776822429

namespace A034008

/-- `ceil(atan(n-1))^((2*n)%(n+2))` -/
def P15153442271776822429.Spec : Prop :=
  ∀ n, P15153442271776822429.a n = A034008 n

end A034008

/-! ## A034008.P12693191943485196022

`or(n-2, ceil(2^(n-2)))-(n-2)`
-/

namespace A034008.P12693191943485196022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ - ((n : ℤ) - 2)

end

end A034008.P12693191943485196022

namespace A034008

/-- `or(n-2, ceil(2^(n-2)))-(n-2)` -/
def P12693191943485196022.Spec : Prop :=
  ∀ n, P12693191943485196022.a n = A034008 n

end A034008

/-! ## A034008.P7499785009211630984

`1-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A034008.P7499785009211630984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1))

end

end A034008.P7499785009211630984

namespace A034008

/-- `1-floor(1-a(n-1)-a(n-1))` -/
def P7499785009211630984.Spec : Prop :=
  ∀ n, P7499785009211630984.a n = A034008 n

end A034008

/-! ## A034008.P13181083220339217249

`2-(2%n-a(n-1)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A034008.P13181083220339217249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  2 - (((2 % n : ℕ) : ℤ) - a (n - 1) - a (n - 1))

end

end A034008.P13181083220339217249

namespace A034008

/-- `2-(2%n-a(n-1)-a(n-1))` -/
def P13181083220339217249.Spec : Prop :=
  ∀ n, P13181083220339217249.a n = A034008 n

end A034008

/-! ## A034008.P9092633602968578606

`A131577(abs(1-n))`
-/

namespace A034008.P9092633602968578606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 |1 - (n : ℤ)|.toNat

end

end A034008.P9092633602968578606

namespace A034008

/-- `A131577(abs(1-n))` -/
def P9092633602968578606.Spec : Prop :=
  ∀ n, P9092633602968578606.a n = A034008 n

end A034008

/-!
# A034009: Convolution of A000295(n+2) (n>=0) with itself.

The programs for A034009, the canonical program `A034009.P12884996658387192340` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034009 has offset 0).

The definition of A034009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034009.P12884996658387192340

`2^(n+4)*(n-3)+(n+7)*(n*(n+11)+42)/6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034009

/-- `2^(n+4)*(n-3)+(n+7)*(n*(n+11)+42)/6` -/
def P12884996658387192340.Spec : Prop :=
  ∀ n, P12884996658387192340.a n = (A034009 n : ℚ)

end A034009

/-! ## A034009.P11328135039337286522

`∑[∑[∑[∑[ogf(1/(1-4x+4x^2))]]]]`
-/

namespace A034009.P11328135039337286522
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 4] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034009.P11328135039337286522

namespace A034009

/-- `∑[∑[∑[∑[ogf(1/(1-4x+4x^2))]]]]` -/
def P11328135039337286522.Spec : Prop :=
  ∀ n, P11328135039337286522.a n = A034009 n

end A034009

/-! ## A034009.P3627693143258525969

`∑[A045889(n)]`
-/

namespace A034009.P3627693143258525969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034009.P3627693143258525969

namespace A034009

/-- `∑[A045889(n)]` -/
def P3627693143258525969.Spec : Prop :=
  ∀ n, P3627693143258525969.a n = A034009 n

end A034009

/-! ## A034009.P13042953432182936878

`∑[∑[A045618(n)]]`
-/

namespace A034009.P13042953432182936878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045618 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034009.P13042953432182936878

namespace A034009

/-- `∑[∑[A045618(n)]]` -/
def P13042953432182936878.Spec : Prop :=
  ∀ n, P13042953432182936878.a n = A034009 n

end A034009

/-! ## A034009.P4037929778364727493

`∑[∑[∑[A036799(n+1)]]]/2`
-/

namespace A034009.P4037929778364727493
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A034009.P4037929778364727493

namespace A034009

/-- `∑[∑[∑[A036799(n+1)]]]/2` -/
def P4037929778364727493.Spec : Prop :=
  ∀ n, P4037929778364727493.a n = (A034009 n : ℚ)

end A034009

/-! ## A034009.P7597231147810733964

`A055249(eq[5, A002262(n)])`
-/

namespace A034009.P7597231147810733964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034009.P7597231147810733964

namespace A034009

/-- `A055249(eq[5, A002262(n)])` -/
def P7597231147810733964.Spec : Prop :=
  ∀ n, P7597231147810733964.a n = A034009 n

end A034009

/-! ## A034009.P6696938329673278772

`A055249(A046691(n+3)+9)`
-/

namespace A034009.P6696938329673278772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A046691 (n + 3) + 9).toNat

end

end A034009.P6696938329673278772

namespace A034009

/-- `A055249(A046691(n+3)+9)` -/
def P6696938329673278772.Spec : Prop :=
  ∀ n, P6696938329673278772.a n = A034009 n

end A034009

/-! ## A034009.P2993764230600604195

`A055249(eq[6, A002260(n+1)])`
-/

namespace A034009.P2993764230600604195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034009.P2993764230600604195

namespace A034009

/-- `A055249(eq[6, A002260(n+1)])` -/
def P2993764230600604195.Spec : Prop :=
  ∀ n, P2993764230600604195.a n = A034009 n

end A034009

/-! ## A034009.P17697402283460174481

`A055249(A000217(n+6)-(n+1))`
-/

namespace A034009.P17697402283460174481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A034009.P17697402283460174481

namespace A034009

/-- `A055249(A000217(n+6)-(n+1))` -/
def P17697402283460174481.Spec : Prop :=
  ∀ n, P17697402283460174481.a n = A034009 n

end A034009

/-! ## A034009.P1254040395536548413

`A210489(A268581(n+1))`
-/

namespace A034009.P1254040395536548413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A268581 (n + 1)).toNat

end

end A034009.P1254040395536548413

namespace A034009

/-- `A210489(A268581(n+1))` -/
def P1254040395536548413.Spec : Prop :=
  ∀ n, P1254040395536548413.a n = A034009 n

end A034009

/-!
# A034010: Number of 2n-step self avoiding closed walks on square grid, restricted to a quadrant and passing through origin.

The programs for A034010, there is no canonical definition to state claims against.
-/

/-! ## A034010.P8433409297581888350

`round(A001969(A279569(n+1))/Δ[n²])`
-/

namespace A034010.P8433409297581888350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001969 (A279569 (n + 1)).toNat : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A034010.P8433409297581888350

/-! ## A034010.P3508981928518051518

`A255408(A245734(n)+1)-1`
-/

namespace A034010.P3508981928518051518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A245734 n + 1).toNat - 1

end

end A034010.P3508981928518051518

/-! ## A034010.P1782621244738822601

`A280124(A003724(n))+round((2^n+3^n)/6)`
-/

namespace A034010.P1782621244738822601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A003724 n).toNat + SequenceMachineLib.roundAway ((2 ^ n + 3 ^ n : ℚ) / 6)

end

end A034010.P1782621244738822601

/-!
# A034015: Small 3-Schroeder numbers: a(n) = Sum_{k=0..n} 2^k*binomial(n, k)*binomial(2*n+2, k)/(k + 1).

The programs for A034015, there is no canonical definition to state claims against.
-/

/-! ## A034015.P8252491751533740990

`A027307(n+1)/2`
-/

namespace A034015.P8252491751533740990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027307 (n + 1) : ℚ) / 2

end

end A034015.P8252491751533740990

/-! ## A034015.P5655474481316938922

`record[A108440(n)]`
-/

namespace A034015.P5655474481316938922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034015.P5655474481316938922

/-! ## A034015.P3480708273141760493

`A084075(2*n)`
-/

namespace A034015.P3480708273141760493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084075 (2 * n)

end

end A034015.P3480708273141760493

/-! ## A034015.P17224959241454052056

`A108440(∑[n+1])`
-/

namespace A034015.P17224959241454052056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108440 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034015.P17224959241454052056

/-! ## A034015.P9307323468215169033

`A084078(Δ[n²])/2`
-/

namespace A034015.P9307323468215169033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A034015.P9307323468215169033

/-! ## A034015.P7734898130100403295

`A110682(∑[n+1])/2`
-/

namespace A034015.P7734898130100403295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110682 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A034015.P7734898130100403295

/-! ## A034015.P7335721014689987207

`record[A110682(n+1)/2]`
-/

namespace A034015.P7335721014689987207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110682 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034015.P7335721014689987207

/-! ## A034015.P17635496531775517970

`A137842(2*(n+1))/2`
-/

namespace A034015.P17635496531775517970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137842 (2 * (n + 1)) : ℚ) / 2

end

end A034015.P17635496531775517970

/-! ## A034015.P13450292695627138589

`A071949(A000096(n+1))/2`
-/

namespace A034015.P13450292695627138589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071949 (A000096 (n + 1)).toNat : ℚ) / 2

end

end A034015.P13450292695627138589

/-! ## A034015.P2593314502249222916

`A071949(A101881(2*n+1))/2`
-/

namespace A034015.P2593314502249222916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071949 (A101881 (2 * n + 1)).toNat : ℚ) / 2

end

end A034015.P2593314502249222916

/-!
# A034017: Numbers that are primitively represented by x^2 + xy + y^2.

The programs for A034017, the canonical program `A034017.P9523659926337494725` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034017 has offset 1).

The definition of A034017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034017.P9523659926337494725

`∪[A034021(n+1), A045897(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A034017

/-- `∪[A034021(n+1), A045897(n+1)]` -/
def P9523659926337494725.Spec : Prop :=
  ∀ n, (P9523659926337494725.a n : ℤ) = A034017 (n + 1)

theorem P9523659926337494725.correct : P9523659926337494725.Spec := by
  intro n
  simp only [A034017, Nat.add_sub_cancel]

end A034017

/-! ## A034017.P17236256333468217278

`comp[A226946(n+1)]`
-/

namespace A034017.P17236256333468217278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034017.P17236256333468217278

namespace A034017

/-- `comp[A226946(n+1)]` -/
def P17236256333468217278.Spec : Prop :=
  ∀ n, (P17236256333468217278.a n : ℤ) = A034017 (n + 1)

end A034017

/-! ## A034017.P16305740393176428652

`lt[0, A000086(A028310(n))]`
-/

namespace A034017.P16305740393176428652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034017.P16305740393176428652

namespace A034017

/-- `lt[0, A000086(A028310(n))]` -/
def P16305740393176428652.Spec : Prop :=
  ∀ n, (P16305740393176428652.a n : ℤ) = A034017 (n + 1)

end A034017

/-! ## A034017.P13477660794948059694

`eq[A000005(A008574(n)), A113062(n)]`
-/

namespace A034017.P13477660794948059694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034017.P13477660794948059694

namespace A034017

/-- `eq[A000005(A008574(n)), A113062(n)]` -/
def P13477660794948059694.Spec : Prop :=
  ∀ n, (P13477660794948059694.a n : ℤ) = A034017 (n + 1)

end A034017

/-! ## A034017.P16807510155179331815

`lt[A008458(A032741(n)), 2*A004016(n)]`
-/

namespace A034017.P16807510155179331815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034017.P16807510155179331815

namespace A034017

/-- `lt[A008458(A032741(n)), 2*A004016(n)]` -/
def P16807510155179331815.Spec : Prop :=
  ∀ n, (P16807510155179331815.a n : ℤ) = A034017 (n + 1)

end A034017

/-! ## A034017.P5761392769334211887

`eq[0, A005074(A066393(lcm(3, n)/3))]`
-/

namespace A034017.P5761392769334211887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005074 (A066393 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034017.P5761392769334211887

namespace A034017

/-- `eq[0, A005074(A066393(lcm(3, n)/3))]` -/
def P5761392769334211887.Spec : Prop :=
  ∀ n, (P5761392769334211887.a n : ℤ) = A034017 (n + 1)

end A034017

/-! ## A034017.P17622706364784196607

`eq[A260958(n), A326395(A008574(n))]`
-/

namespace A034017.P17622706364784196607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326395 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034017.P17622706364784196607

namespace A034017

/-- `eq[A260958(n), A326395(A008574(n))]` -/
def P17622706364784196607.Spec : Prop :=
  ∀ n, (P17622706364784196607.a n : ℤ) = A034017 (n + 1)

end A034017

/-! ## A034017.P11853452516165520024

`lt[A032741(A008458(n)), A004016(n)]`
-/

namespace A034017.P11853452516165520024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034017.P11853452516165520024

namespace A034017

/-- `lt[A032741(A008458(n)), A004016(n)]` -/
def P11853452516165520024.Spec : Prop :=
  ∀ n, (P11853452516165520024.a n : ℤ) = A034017 (n + 1)

end A034017

/-!
# A034018: Numbers that are represented by x^2+xy+y^2 but not primitively.

The programs for A034018, there is no canonical definition to state claims against.
-/

/-! ## A034018.P3073262121278262248

`filter[A034022(n+3), A087049(#)]`
-/

namespace A034018.P3073262121278262248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034018.P3073262121278262248

/-! ## A034018.P13231012268147885979

`∩[A013929(n+1), A034022(n+1)]`
-/

namespace A034018.P13231012268147885979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034018.P13231012268147885979

/-! ## A034018.P17868029095025870552

`∩[A034019(n+1), A034022(n+1)]`
-/

namespace A034018.P17868029095025870552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034018.P17868029095025870552

/-! ## A034018.P1226801846338942590

`∩[A034022(n+1), A389462(n+1)]`
-/

namespace A034018.P1226801846338942590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034018.P1226801846338942590

/-! ## A034018.P15761465921752212048

`filter[A226946(n+1), A353816(#)]`
-/

namespace A034018.P15761465921752212048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034018.P15761465921752212048

/-! ## A034018.P847304670650637425

`∩[A003136(n+1), A226946(n+1)]`
-/

namespace A034018.P847304670650637425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034018.P847304670650637425

/-! ## A034018.P7968537970406068793

`∩[A034019(n+1), A226946(n+1)]`
-/

namespace A034018.P7968537970406068793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034018.P7968537970406068793

/-! ## A034018.P3120236878162662352

`∩[A034022(n+1), A226946(n+1)]`
-/

namespace A034018.P3120236878162662352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034018.P3120236878162662352

/-! ## A034018.P1100678681556569942

`filter[A034022(n+2), A107078(#)]`
-/

namespace A034018.P1100678681556569942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A034018.P1100678681556569942

/-! ## A034018.P394913163941778014

`lt[A000086(A028310(n)), A353816(n)]`
-/

namespace A034018.P394913163941778014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034018.P394913163941778014

/-! ## A034018.P1032963178557309146

`lt[A000086(A000086(n+1)+n), A353816(n)]`
-/

namespace A034018.P1032963178557309146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A000086 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034018.P1032963178557309146

/-!
# A034019: Numbers that are imprimitively (and possibly also primitively) represented by x^2+xy+y^2.

The programs for A034019, there is no canonical definition to state claims against.
-/

/-! ## A034019.P14557041338785825082

`∪[A034018(n+1), A045897(n+1)]`
-/

namespace A034019.P14557041338785825082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034019.P14557041338785825082

/-! ## A034019.P764473496136350803

`record[A105570(A003136(n+4))]`
-/

namespace A034019.P764473496136350803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A003136 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034019.P764473496136350803

/-! ## A034019.P3086752601780308686

`filter[A003136(n+3), A087049(#)]`
-/

namespace A034019.P3086752601780308686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034019.P3086752601780308686

/-! ## A034019.P6645470979247990225

`∩[A003136(n+1), A013929(n+1)]`
-/

namespace A034019.P6645470979247990225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034019.P6645470979247990225

/-! ## A034019.P502598824467370145

`filter[A013929(n+1), A353816(#)]`
-/

namespace A034019.P502598824467370145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P502598824467370145

/-! ## A034019.P5332195861363419248

`filter[A162966(n+2), A353816(#)]`
-/

namespace A034019.P5332195861363419248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P5332195861363419248

/-! ## A034019.P16144353242297756714

`filter[A354360(n+2), A353816(#)]`
-/

namespace A034019.P16144353242297756714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P16144353242297756714

/-! ## A034019.P5539351961292292085

`filter[A389462(n+1), A353816(#)]`
-/

namespace A034019.P5539351961292292085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P5539351961292292085

/-! ## A034019.P18399442150278858398

`∩[A003136(n+1), A389462(n+1)]`
-/

namespace A034019.P18399442150278858398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034019.P18399442150278858398

/-! ## A034019.P12096510981234865184

`filter[A088610(2*(n+1)), A353816(#)]`
-/

namespace A034019.P12096510981234865184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P12096510981234865184

/-! ## A034019.P4907154788328712888

`lt[1, A004016(A105570(n))]`
-/

namespace A034019.P4907154788328712888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034019.P4907154788328712888

/-! ## A034019.P4302123439162101585

`filter[A003136(n+2), A107078(#)]`
-/

namespace A034019.P4302123439162101585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A034019.P4302123439162101585

/-! ## A034019.P3181323557627385958

`eq[1, A019428(A074206(n*A353816(n)))]`
-/

namespace A034019.P3181323557627385958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A074206 ((n : ℤ) * A353816 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034019.P3181323557627385958

/-! ## A034019.P16104997584512599249

`eq[A019428(A074206(n)), A353816(n)]`
-/

namespace A034019.P16104997584512599249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A074206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034019.P16104997584512599249

/-!
# A034020: Not of the form x^2 + x*y + y^2.

The programs for A034020, the canonical program `A034020.P14532094965484365911` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034020 has offset 1).

The definition of A034020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034020.P9960301939790517428

`eq[0, A033716(n)]`
-/

namespace A034020.P9960301939790517428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P9960301939790517428

namespace A034020

/-- `eq[0, A033716(n)]` -/
def P9960301939790517428.Spec : Prop :=
  ∀ n, (P9960301939790517428.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P18343668285369292924

`eq[0, A119395(n)]`
-/

namespace A034020.P18343668285369292924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P18343668285369292924

namespace A034020

/-- `eq[0, A119395(n)]` -/
def P18343668285369292924.Spec : Prop :=
  ∀ n, (P18343668285369292924.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P76250057494853268

`eq[0, A180318(n)]`
-/

namespace A034020.P76250057494853268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P76250057494853268

namespace A034020

/-- `eq[0, A180318(n)]` -/
def P76250057494853268.Spec : Prop :=
  ∀ n, (P76250057494853268.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P16949871375631577238

`eq[0, A217220(n)]`
-/

namespace A034020.P16949871375631577238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P16949871375631577238

namespace A034020

/-- `eq[0, A217220(n)]` -/
def P16949871375631577238.Spec : Prop :=
  ∀ n, (P16949871375631577238.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P15501574283860249219

`eq[0, A353816(n)]`
-/

namespace A034020.P15501574283860249219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P15501574283860249219

namespace A034020

/-- `eq[0, A353816(n)]` -/
def P15501574283860249219.Spec : Prop :=
  ∀ n, (P15501574283860249219.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P4451295794493345595

`comp[A003136(n+1)]`
-/

namespace A034020.P4451295794493345595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034020.P4451295794493345595

namespace A034020

/-- `comp[A003136(n+1)]` -/
def P4451295794493345595.Spec : Prop :=
  ∀ n, (P4451295794493345595.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P1071749472859958956

`lt[A096936(n+1), 1]+1`
-/

namespace A034020.P1071749472859958956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A034020.P1071749472859958956

namespace A034020

/-- `lt[A096936(n+1), 1]+1` -/
def P1071749472859958956.Spec : Prop :=
  ∀ n, (P1071749472859958956.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P3855378469029834204

`comp[A132111(n)]`
-/

namespace A034020.P3855378469029834204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034020.P3855378469029834204

namespace A034020

/-- `comp[A132111(n)]` -/
def P3855378469029834204.Spec : Prop :=
  ∀ n, (P3855378469029834204.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P10208752929364651569

`eq[0, A004016(n)]`
-/

namespace A034020.P10208752929364651569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P10208752929364651569

namespace A034020

/-- `eq[0, A004016(n)]` -/
def P10208752929364651569.Spec : Prop :=
  ∀ n, (P10208752929364651569.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P17103696701668737046

`eq[0, A005928(n)]`
-/

namespace A034020.P17103696701668737046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P17103696701668737046

namespace A034020

/-- `eq[0, A005928(n)]` -/
def P17103696701668737046.Spec : Prop :=
  ∀ n, (P17103696701668737046.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P14190594118444190968

`eq[0, A088534(n)]`
-/

namespace A034020.P14190594118444190968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P14190594118444190968

namespace A034020

/-- `eq[0, A088534(n)]` -/
def P14190594118444190968.Spec : Prop :=
  ∀ n, (P14190594118444190968.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P7027886326497388017

`eq[0, A097109(n)]`
-/

namespace A034020.P7027886326497388017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P7027886326497388017

namespace A034020

/-- `eq[0, A097109(n)]` -/
def P7027886326497388017.Spec : Prop :=
  ∀ n, (P7027886326497388017.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P7928357372538392891

`eq[0, A113062(n)]`
-/

namespace A034020.P7928357372538392891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P7928357372538392891

namespace A034020

/-- `eq[0, A113062(n)]` -/
def P7928357372538392891.Spec : Prop :=
  ∀ n, (P7928357372538392891.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P15225513454609659267

`eq[0, A115978(n)]`
-/

namespace A034020.P15225513454609659267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P15225513454609659267

namespace A034020

/-- `eq[0, A115978(n)]` -/
def P15225513454609659267.Spec : Prop :=
  ∀ n, (P15225513454609659267.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P3691488192687606069

`eq[0, A164272(n)]`
-/

namespace A034020.P3691488192687606069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P3691488192687606069

namespace A034020

/-- `eq[0, A164272(n)]` -/
def P3691488192687606069.Spec : Prop :=
  ∀ n, (P3691488192687606069.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P11431525648535990096

`eq[0, A164273(n)]`
-/

namespace A034020.P11431525648535990096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P11431525648535990096

namespace A034020

/-- `eq[0, A164273(n)]` -/
def P11431525648535990096.Spec : Prop :=
  ∀ n, (P11431525648535990096.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P14540109696559020718

`eq[0, A226535(n)]`
-/

namespace A034020.P14540109696559020718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034020.P14540109696559020718

namespace A034020

/-- `eq[0, A226535(n)]` -/
def P14540109696559020718.Spec : Prop :=
  ∀ n, (P14540109696559020718.a n : ℤ) = A034020 (n + 1)

end A034020

/-! ## A034020.P14532094965484365911

`comp[A073254(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034020

/-- `comp[A073254(n)]` -/
def P14532094965484365911.Spec : Prop :=
  ∀ n, (P14532094965484365911.a n : ℤ) = A034020 (n + 1)

theorem P14532094965484365911.correct : P14532094965484365911.Spec := by
  intro n
  simp only [A034020, Nat.add_sub_cancel]

end A034020

/-! ## A034020.P11250477479379380021

`comp[A144216(n+1)+n]+1`
-/

namespace A034020.P11250477479379380021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A034020.P11250477479379380021

namespace A034020

/-- `comp[A144216(n+1)+n]+1` -/
def P11250477479379380021.Spec : Prop :=
  ∀ n, (P11250477479379380021.a n : ℤ) = A034020 (n + 1)

end A034020

/-!
# A034021: Numbers that are primitively but not imprimitively represented by x^2+xy+y^2.

The programs for A034021, the canonical program `A034021.P3191518075360289644` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034021 has offset 1).

The definition of A034021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034021.P8718054632716463326

`eq[A000007(A033716(n)), A105570(n)]`
-/

namespace A034021.P8718054632716463326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034021.P8718054632716463326

namespace A034021

/-- `eq[A000007(A033716(n)), A105570(n)]` -/
def P8718054632716463326.Spec : Prop :=
  ∀ n, (P8718054632716463326.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P1225553508518403228

`∩[A034017(n+1), A034022(n+1)]`
-/

namespace A034021.P1225553508518403228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034021.P1225553508518403228

namespace A034021

/-- `∩[A034017(n+1), A034022(n+1)]` -/
def P1225553508518403228.Spec : Prop :=
  ∀ n, (P1225553508518403228.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P3191518075360289644

`A003136(eq[1, ∏{e}[A003136(n+1), #]]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A034021

/-- `A003136(eq[1, ∏{e}[A003136(n+1), #]]+1)` -/
def P3191518075360289644.Spec : Prop :=
  ∀ n, P3191518075360289644.a n = A034021 (n + 1)

theorem P3191518075360289644.correct : P3191518075360289644.Spec := by
  intro n
  simp only [A034021, Nat.add_sub_cancel]

end A034021

/-! ## A034021.P13904842874520481986

`eq[A284345(n), A353816(n)]`
-/

namespace A034021.P13904842874520481986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034021.P13904842874520481986

namespace A034021

/-- `eq[A284345(n), A353816(n)]` -/
def P13904842874520481986.Spec : Prop :=
  ∀ n, (P13904842874520481986.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P10961356365116230916

`lt[A105570(n)², A004016(n)]`
-/

namespace A034021.P10961356365116230916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034021.P10961356365116230916

namespace A034021

/-- `lt[A105570(n)², A004016(n)]` -/
def P10961356365116230916.Spec : Prop :=
  ∀ n, (P10961356365116230916.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P14580445786176331409

`lt[A105570(2*n), A004016(n)]`
-/

namespace A034021.P14580445786176331409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034021.P14580445786176331409

namespace A034021

/-- `lt[A105570(2*n), A004016(n)]` -/
def P14580445786176331409.Spec : Prop :=
  ∀ n, (P14580445786176331409.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P7319793315958621733

`record[gcd(A001822(n+1), A019530(n+1))]`
-/

namespace A034021.P7319793315958621733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001822 (n + 1)) (A019530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034021.P7319793315958621733

namespace A034021

/-- `record[gcd(A001822(n+1), A019530(n+1))]` -/
def P7319793315958621733.Spec : Prop :=
  ∀ n, (P7319793315958621733.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P10353103488972295820

`eq[A000007(A004016(n)²), A105570(n)]`
-/

namespace A034021.P10353103488972295820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004016 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034021.P10353103488972295820

namespace A034021

/-- `eq[A000007(A004016(n)²), A105570(n)]` -/
def P10353103488972295820.Spec : Prop :=
  ∀ n, (P10353103488972295820.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P5169582762188595028

`eq[A000007(2*A004016(n)), A105570(n)]`
-/

namespace A034021.P5169582762188595028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034021.P5169582762188595028

namespace A034021

/-- `eq[A000007(2*A004016(n)), A105570(n)]` -/
def P5169582762188595028.Spec : Prop :=
  ∀ n, (P5169582762188595028.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P3732925572273278517

`eq[A005090(A008486(n)), A105570(n)]`
-/

namespace A034021.P3732925572273278517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034021.P3732925572273278517

namespace A034021

/-- `eq[A005090(A008486(n)), A105570(n)]` -/
def P3732925572273278517.Spec : Prop :=
  ∀ n, (P3732925572273278517.a n : ℤ) = A034021 (n + 1)

end A034021

/-! ## A034021.P6043718522575573273

`eq[A294105(n), A353816(n)]`
-/

namespace A034021.P6043718522575573273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034021.P6043718522575573273

namespace A034021

/-- `eq[A294105(n), A353816(n)]` -/
def P6043718522575573273.Spec : Prop :=
  ∀ n, (P6043718522575573273.a n : ℤ) = A034021 (n + 1)

end A034021

/-!
# A034022: Numbers that are primitively or imprimitively represented by x^2+xy+y^2, but not both.

The programs for A034022, there is no canonical definition to state claims against.
-/

/-! ## A034022.P1588305139635618420

`∪[A034018(n+1), A034021(n+1)]`
-/

namespace A034022.P1588305139635618420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034022.P1588305139635618420

/-! ## A034022.P11869680550886651721

`A329963(A028310(n))%A178663(n+1)²`
-/

namespace A034022.P11869680550886651721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329963 (A028310 n).toNat) (A178663 (n + 1) ^ 2)

end

end A034022.P11869680550886651721

/-! ## A034022.P3924151225203488005

`lt[A214210(n), A381577(A004016(n))]`
-/

namespace A034022.P3924151225203488005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381577 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034022.P3924151225203488005

/-! ## A034022.P11339041410832159339

`A329963(A028310(n))%A350943(n+1)`
-/

namespace A034022.P11339041410832159339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329963 (A028310 n).toNat) (A350943 (n + 1))

end

end A034022.P11339041410832159339

/-! ## A034022.P1614998699798080549

`comp[A087943(n+1)]%A080056(n+1)`
-/

namespace A034022.P1614998699798080549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A080056 (n + 1))

end

end A034022.P1614998699798080549

/-!
# A034023: Imprimitively represented by x^2+y^2.

The programs for A034023, the canonical program `A034023.P16116273836108491271` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034023 has offset 0).

The definition of A034023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034023.P16116273836108491271

`∪[A034024(n), A034025(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A034023

/-- `∪[A034024(n), A034025(n)]` -/
def P16116273836108491271.Spec : Prop :=
  ∀ n, (P16116273836108491271.a n : ℤ) = A034023 n

theorem P16116273836108491271.correct : P16116273836108491271.Spec := by
  intro n
  simp only [A034023]

end A034023

/-! ## A034023.P6365898114673496510

`filter[A001481(n+3), A087049(#)]`
-/

namespace A034023.P6365898114673496510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034023.P6365898114673496510

namespace A034023

/-- `filter[A001481(n+3), A087049(#)]` -/
def P6365898114673496510.Spec : Prop :=
  ∀ n, P6365898114673496510.a n = A034023 n

end A034023

/-! ## A034023.P13434591145531550070

`∩[A001481(n+1), A013929(n+1)]`
-/

namespace A034023.P13434591145531550070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034023.P13434591145531550070

namespace A034023

/-- `∩[A001481(n+1), A013929(n+1)]` -/
def P13434591145531550070.Spec : Prop :=
  ∀ n, (P13434591145531550070.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P9618217429375710160

`filter[A034043(n+2), A229062(#)]`
-/

namespace A034023.P9618217429375710160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P9618217429375710160

namespace A034023

/-- `filter[A034043(n+2), A229062(#)]` -/
def P9618217429375710160.Spec : Prop :=
  ∀ n, P9618217429375710160.a n = A034023 n

end A034023

/-! ## A034023.P16543554800286053898

`filter[A013929(n+1), A229062(#)]`
-/

namespace A034023.P16543554800286053898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P16543554800286053898

namespace A034023

/-- `filter[A013929(n+1), A229062(#)]` -/
def P16543554800286053898.Spec : Prop :=
  ∀ n, P16543554800286053898.a n = A034023 n

end A034023

/-! ## A034023.P2196149504321769415

`filter[A162966(n+2), A229062(#)]`
-/

namespace A034023.P2196149504321769415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P2196149504321769415

namespace A034023

/-- `filter[A162966(n+2), A229062(#)]` -/
def P2196149504321769415.Spec : Prop :=
  ∀ n, P2196149504321769415.a n = A034023 n

end A034023

/-! ## A034023.P9157492587869835982

`filter[A354360(n+3), A229062(#)]`
-/

namespace A034023.P9157492587869835982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P9157492587869835982

namespace A034023

/-- `filter[A354360(n+3), A229062(#)]` -/
def P9157492587869835982.Spec : Prop :=
  ∀ n, P9157492587869835982.a n = A034023 n

end A034023

/-! ## A034023.P12392367333107776366

`filter[A366288(n+1), A229062(#)]`
-/

namespace A034023.P12392367333107776366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P12392367333107776366

namespace A034023

/-- `filter[A366288(n+1), A229062(#)]` -/
def P12392367333107776366.Spec : Prop :=
  ∀ n, P12392367333107776366.a n = A034023 n

end A034023

/-! ## A034023.P3768814688171374796

`∩[A001481(n+1), A366288(n+1)]`
-/

namespace A034023.P3768814688171374796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034023.P3768814688171374796

namespace A034023

/-- `∩[A001481(n+1), A366288(n+1)]` -/
def P3768814688171374796.Spec : Prop :=
  ∀ n, (P3768814688171374796.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P10216617192452721010

`filter[A088610(2*(n+1)), A229062(#)]`
-/

namespace A034023.P10216617192452721010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P10216617192452721010

namespace A034023

/-- `filter[A088610(2*(n+1)), A229062(#)]` -/
def P10216617192452721010.Spec : Prop :=
  ∀ n, P10216617192452721010.a n = A034023 n

end A034023

/-! ## A034023.P2603095999186797001

`eq[cos(A070176(n)), A249442(n)]`
-/

namespace A034023.P2603095999186797001
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A070176 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A034023.P2603095999186797001

namespace A034023

/-- `eq[cos(A070176(n)), A249442(n)]` -/
def P2603095999186797001.Spec : Prop :=
  ∀ n, (P2603095999186797001.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P7183119249668049401

`filter[A001481(n+2), A107078(#)]`
-/

namespace A034023.P7183119249668049401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A034023.P7183119249668049401

namespace A034023

/-- `filter[A001481(n+2), A107078(#)]` -/
def P7183119249668049401.Spec : Prop :=
  ∀ n, P7183119249668049401.a n = A034023 n

end A034023

/-! ## A034023.P1940052272261219879

`lt[A008966(A028310(n)), A229062(n)]`
-/

namespace A034023.P1940052272261219879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034023.P1940052272261219879

namespace A034023

/-- `lt[A008966(A028310(n)), A229062(n)]` -/
def P1940052272261219879.Spec : Prop :=
  ∀ n, (P1940052272261219879.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P375707616849311677

`eq[A008683(n+1), A000096(A070176(n+1))]+1`
-/

namespace A034023.P375707616849311677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A070176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A034023.P375707616849311677

namespace A034023

/-- `eq[A008683(n+1), A000096(A070176(n+1))]+1` -/
def P375707616849311677.Spec : Prop :=
  ∀ n, (P375707616849311677.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P1596954773148779780

`eq[A016399(A285718(n+1)), A070176(n)]`
-/

namespace A034023.P1596954773148779780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016399 (A285718 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034023.P1596954773148779780

namespace A034023

/-- `eq[A016399(A285718(n+1)), A070176(n)]` -/
def P1596954773148779780.Spec : Prop :=
  ∀ n, (P1596954773148779780.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P3476813217259230258

`eq[A055615(A008486(n)), A070176(n)]`
-/

namespace A034023.P3476813217259230258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034023.P3476813217259230258

namespace A034023

/-- `eq[A055615(A008486(n)), A070176(n)]` -/
def P3476813217259230258.Spec : Prop :=
  ∀ n, (P3476813217259230258.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P5663702644884332161

`filter[A225353(n+1), A229062(#)]`
-/

namespace A034023.P5663702644884332161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034023.P5663702644884332161

namespace A034023

/-- `filter[A225353(n+1), A229062(#)]` -/
def P5663702644884332161.Spec : Prop :=
  ∀ n, P5663702644884332161.a n = A034023 n

end A034023

/-! ## A034023.P4404360241467285823

`∩[A001481(n+1), A225353(n+1)]`
-/

namespace A034023.P4404360241467285823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034023.P4404360241467285823

namespace A034023

/-- `∩[A001481(n+1), A225353(n+1)]` -/
def P4404360241467285823.Spec : Prop :=
  ∀ n, (P4404360241467285823.a n : ℤ) = A034023 n

end A034023

/-! ## A034023.P5317631976907577457

`eq[A055615(A233583(n+1)), A070176(n)]`
-/

namespace A034023.P5317631976907577457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034023.P5317631976907577457

namespace A034023

/-- `eq[A055615(A233583(n+1)), A070176(n)]` -/
def P5317631976907577457.Spec : Prop :=
  ∀ n, (P5317631976907577457.a n : ℤ) = A034023 n

end A034023

/-!
# A034024: Imprimitively but not primitively represented by x^2+y^2.

The programs for A034024, the canonical program `A034024.P8684423954840180702` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034024 has offset 0).

The definition of A034024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034024.P8321468158371599775

`filter[A034026(n+2), A087049(#)]`
-/

namespace A034024.P8321468158371599775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034024.P8321468158371599775

namespace A034024

/-- `filter[A034026(n+2), A087049(#)]` -/
def P8321468158371599775.Spec : Prop :=
  ∀ n, P8321468158371599775.a n = A034024 n

end A034024

/-! ## A034024.P7127981114973556871

`∩[A034026(n+1), A034023(n)]`
-/

namespace A034024.P7127981114973556871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P7127981114973556871

namespace A034024

/-- `∩[A034026(n+1), A034023(n)]` -/
def P7127981114973556871.Spec : Prop :=
  ∀ n, (P7127981114973556871.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P10556045219501043313

`∩[A013929(n+1), A034026(n+1)]`
-/

namespace A034024.P10556045219501043313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P10556045219501043313

namespace A034024

/-- `∩[A013929(n+1), A034026(n+1)]` -/
def P10556045219501043313.Spec : Prop :=
  ∀ n, (P10556045219501043313.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P650010672102188501

`∩[A034026(n+1), A034043(n+1)]`
-/

namespace A034024.P650010672102188501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P650010672102188501

namespace A034024

/-- `∩[A034026(n+1), A034043(n+1)]` -/
def P650010672102188501.Spec : Prop :=
  ∀ n, (P650010672102188501.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P8684423954840180702

`filter[A053443(n+1), A229062(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A034024

/-- `filter[A053443(n+1), A229062(#)]` -/
def P8684423954840180702.Spec : Prop :=
  ∀ n, P8684423954840180702.a n = A034024 n

theorem P8684423954840180702.correct : P8684423954840180702.Spec := by
  intro n
  simp only [A034024]

end A034024

/-! ## A034024.P1029126575951379158

`∩[A053443(n+1), A034023(n)]`
-/

namespace A034024.P1029126575951379158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P1029126575951379158

namespace A034024

/-- `∩[A053443(n+1), A034023(n)]` -/
def P1029126575951379158.Spec : Prop :=
  ∀ n, (P1029126575951379158.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P12702146335886380678

`∩[A001481(n+1), A053443(n+1)]`
-/

namespace A034024.P12702146335886380678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P12702146335886380678

namespace A034024

/-- `∩[A001481(n+1), A053443(n+1)]` -/
def P12702146335886380678.Spec : Prop :=
  ∀ n, (P12702146335886380678.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P16802587670695942703

`∩[A034026(n+1), A053443(n+1)]`
-/

namespace A034024.P16802587670695942703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P16802587670695942703

namespace A034024

/-- `∩[A034026(n+1), A053443(n+1)]` -/
def P16802587670695942703.Spec : Prop :=
  ∀ n, (P16802587670695942703.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P18241470162780634361

`∩[A034026(n+1), A366288(n+1)]`
-/

namespace A034024.P18241470162780634361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P18241470162780634361

namespace A034024

/-- `∩[A034026(n+1), A366288(n+1)]` -/
def P18241470162780634361.Spec : Prop :=
  ∀ n, (P18241470162780634361.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P13321688750789827314

`filter[A192450(n+1), A229062(#)]`
-/

namespace A034024.P13321688750789827314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034024.P13321688750789827314

namespace A034024

/-- `filter[A192450(n+1), A229062(#)]` -/
def P13321688750789827314.Spec : Prop :=
  ∀ n, P13321688750789827314.a n = A034024 n

end A034024

/-! ## A034024.P9528577169078881051

`∩[A192450(n+1), A034023(n)]`
-/

namespace A034024.P9528577169078881051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P9528577169078881051

namespace A034024

/-- `∩[A192450(n+1), A034023(n)]` -/
def P9528577169078881051.Spec : Prop :=
  ∀ n, (P9528577169078881051.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P17564013307301123092

`∩[A001481(n+1), A192450(n+1)]`
-/

namespace A034024.P17564013307301123092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P17564013307301123092

namespace A034024

/-- `∩[A001481(n+1), A192450(n+1)]` -/
def P17564013307301123092.Spec : Prop :=
  ∀ n, (P17564013307301123092.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P10923688801350579267

`∩[A034026(n+1), A192450(n+1)]`
-/

namespace A034024.P10923688801350579267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P10923688801350579267

namespace A034024

/-- `∩[A034026(n+1), A192450(n+1)]` -/
def P10923688801350579267.Spec : Prop :=
  ∀ n, (P10923688801350579267.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P13569835401570307235

`filter[A034026(n+1), A107078(#)]`
-/

namespace A034024.P13569835401570307235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A034024.P13569835401570307235

namespace A034024

/-- `filter[A034026(n+1), A107078(#)]` -/
def P13569835401570307235.Spec : Prop :=
  ∀ n, P13569835401570307235.a n = A034024 n

end A034024

/-! ## A034024.P13106015002119078633

`A034023(eq[0, A076948(A034023(n))])`
-/

namespace A034024.P13106015002119078633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A034023 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034024.P13106015002119078633

namespace A034024

/-- `A034023(eq[0, A076948(A034023(n))])` -/
def P13106015002119078633.Spec : Prop :=
  ∀ n, P13106015002119078633.a n = A034024 n

end A034024

/-! ## A034024.P15598473524052897910

`eq[A089799(A004018(n)), A295819(n)]`
-/

namespace A034024.P15598473524052897910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 (A004018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034024.P15598473524052897910

namespace A034024

/-- `eq[A089799(A004018(n)), A295819(n)]` -/
def P15598473524052897910.Spec : Prop :=
  ∀ n, (P15598473524052897910.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P5608222413593889460

`∩[A034026(n+1), A225353(n+1)]`
-/

namespace A034024.P5608222413593889460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034024.P5608222413593889460

namespace A034024

/-- `∩[A034026(n+1), A225353(n+1)]` -/
def P5608222413593889460.Spec : Prop :=
  ∀ n, (P5608222413593889460.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P2620587772773655724

`eq[A000007(A143574(n)), A295819(n)]`
-/

namespace A034024.P2620587772773655724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A143574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034024.P2620587772773655724

namespace A034024

/-- `eq[A000007(A143574(n)), A295819(n)]` -/
def P2620587772773655724.Spec : Prop :=
  ∀ n, (P2620587772773655724.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P5038416469089054981

`eq[A000095(A008706(n)), A070176(n)]`
-/

namespace A034024.P5038416469089054981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034024.P5038416469089054981

namespace A034024

/-- `eq[A000095(A008706(n)), A070176(n)]` -/
def P5038416469089054981.Spec : Prop :=
  ∀ n, (P5038416469089054981.a n : ℤ) = A034024 n

end A034024

/-! ## A034024.P999778991150462398

`eq[A000095(A233583(n+1)), A070176(n)]`
-/

namespace A034024.P999778991150462398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034024.P999778991150462398

namespace A034024

/-- `eq[A000095(A233583(n+1)), A070176(n)]` -/
def P999778991150462398.Spec : Prop :=
  ∀ n, (P999778991150462398.a n : ℤ) = A034024 n

end A034024

/-!
# A034025: Both primitively and imprimitively represented by x^2+y^2.

The programs for A034025, the canonical program `A034025.P14022890828150912476` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034025 has offset 0).

The definition of A034025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034025.P2650118543705124767

`∩[A013929(n+1), A174051(n+1)]`
-/

namespace A034025.P2650118543705124767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P2650118543705124767

namespace A034025

/-- `∩[A013929(n+1), A174051(n+1)]` -/
def P2650118543705124767.Spec : Prop :=
  ∀ n, (P2650118543705124767.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P7748079965381092398

`∩[A174051(n+1), A034023(n)]`
-/

namespace A034025.P7748079965381092398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P7748079965381092398

namespace A034025

/-- `∩[A174051(n+1), A034023(n)]` -/
def P7748079965381092398.Spec : Prop :=
  ∀ n, (P7748079965381092398.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P12011899951014609923

`∩[A034046(n+1), A174051(n+1)]`
-/

namespace A034025.P12011899951014609923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P12011899951014609923

namespace A034025

/-- `∩[A034046(n+1), A174051(n+1)]` -/
def P12011899951014609923.Spec : Prop :=
  ∀ n, (P12011899951014609923.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P321013555829223388

`∩[A174051(n+1), A319927(n+1)]`
-/

namespace A034025.P321013555829223388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P321013555829223388

namespace A034025

/-- `∩[A174051(n+1), A319927(n+1)]` -/
def P321013555829223388.Spec : Prop :=
  ∀ n, (P321013555829223388.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P6754067955232832303

`∩[A008784(n+1), A034023(n)]`
-/

namespace A034025.P6754067955232832303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P6754067955232832303

namespace A034025

/-- `∩[A008784(n+1), A034023(n)]` -/
def P6754067955232832303.Spec : Prop :=
  ∀ n, (P6754067955232832303.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P7074775934889981065

`∩[A008784(n+1), A013929(n+1)]`
-/

namespace A034025.P7074775934889981065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P7074775934889981065

namespace A034025

/-- `∩[A008784(n+1), A013929(n+1)]` -/
def P7074775934889981065.Spec : Prop :=
  ∀ n, (P7074775934889981065.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P14022890828150912476

`∩[A008784(n+1), A034046(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034025

/-- `∩[A008784(n+1), A034046(n+1)]` -/
def P14022890828150912476.Spec : Prop :=
  ∀ n, (P14022890828150912476.a n : ℤ) = A034025 n

theorem P14022890828150912476.correct : P14022890828150912476.Spec := by
  intro n
  simp only [A034025]

end A034025

/-! ## A034025.P423287167204075714

`∩[A008784(n+1), A319927(n+1)]`
-/

namespace A034025.P423287167204075714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P423287167204075714

namespace A034025

/-- `∩[A008784(n+1), A319927(n+1)]` -/
def P423287167204075714.Spec : Prop :=
  ∀ n, (P423287167204075714.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P1654449343440744707

`filter[A174051(n+1), A087049(#)]`
-/

namespace A034025.P1654449343440744707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034025.P1654449343440744707

namespace A034025

/-- `filter[A174051(n+1), A087049(#)]` -/
def P1654449343440744707.Spec : Prop :=
  ∀ n, P1654449343440744707.a n = A034025 n

end A034025

/-! ## A034025.P2575932045797198457

`filter[A174051(n+1), A353626(#)]`
-/

namespace A034025.P2575932045797198457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A034025.P2575932045797198457

namespace A034025

/-- `filter[A174051(n+1), A353626(#)]` -/
def P2575932045797198457.Spec : Prop :=
  ∀ n, P2575932045797198457.a n = A034025 n

end A034025

/-! ## A034025.P4897101344713644054

`∩[A008784(n+1), A307579(n+1)]`
-/

namespace A034025.P4897101344713644054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P4897101344713644054

namespace A034025

/-- `∩[A008784(n+1), A307579(n+1)]` -/
def P4897101344713644054.Spec : Prop :=
  ∀ n, (P4897101344713644054.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P817361900638366428

`∩[A174051(n+1), A307579(n+1)]`
-/

namespace A034025.P817361900638366428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P817361900638366428

namespace A034025

/-- `∩[A174051(n+1), A307579(n+1)]` -/
def P817361900638366428.Spec : Prop :=
  ∀ n, (P817361900638366428.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P15234997687786088059

`∩[A008784(n+1), A038838(n+1)]`
-/

namespace A034025.P15234997687786088059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P15234997687786088059

namespace A034025

/-- `∩[A008784(n+1), A038838(n+1)]` -/
def P15234997687786088059.Spec : Prop :=
  ∀ n, (P15234997687786088059.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P10252513385722609873

`∩[A038838(n+1), A174051(n+1)]`
-/

namespace A034025.P10252513385722609873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P10252513385722609873

namespace A034025

/-- `∩[A038838(n+1), A174051(n+1)]` -/
def P10252513385722609873.Spec : Prop :=
  ∀ n, (P10252513385722609873.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P12405462730152468576

`∩[A034046(n+1), A057129(n+1)]`
-/

namespace A034025.P12405462730152468576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P12405462730152468576

namespace A034025

/-- `∩[A034046(n+1), A057129(n+1)]` -/
def P12405462730152468576.Spec : Prop :=
  ∀ n, (P12405462730152468576.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P12452280918709786961

`∩[A057129(n+1), A319927(n+1)]`
-/

namespace A034025.P12452280918709786961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P12452280918709786961

namespace A034025

/-- `∩[A057129(n+1), A319927(n+1)]` -/
def P12452280918709786961.Spec : Prop :=
  ∀ n, (P12452280918709786961.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P7469488497648840577

`∩[A034046(n+1), A072437(n+1)]`
-/

namespace A034025.P7469488497648840577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P7469488497648840577

namespace A034025

/-- `∩[A034046(n+1), A072437(n+1)]` -/
def P7469488497648840577.Spec : Prop :=
  ∀ n, (P7469488497648840577.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P15607058904042433487

`∩[A072437(n+1), A319927(n+1)]`
-/

namespace A034025.P15607058904042433487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P15607058904042433487

namespace A034025

/-- `∩[A072437(n+1), A319927(n+1)]` -/
def P15607058904042433487.Spec : Prop :=
  ∀ n, (P15607058904042433487.a n : ℤ) = A034025 n

end A034025

/-! ## A034025.P9866991536321387288

`∩[A008784(n+1), A335437(n+1)]`
-/

namespace A034025.P9866991536321387288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P9866991536321387288

namespace A034025

/-- `∩[A008784(n+1), A335437(n+1)]` -/
def P9866991536321387288.Spec : Prop :=
  ∀ n, (P9866991536321387288.a n : ℤ) = A034025 n

end A034025

/-!
# A034026: Numbers that are primitively or imprimitively represented by x^2+y^2, but not both.

The programs for A034026, the canonical program `A034026.P6875606058485551729` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034026 has offset 1).

The definition of A034026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034026.P6875606058485551729

`∪[A020893(n+1), A034024(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A034026

/-- `∪[A020893(n+1), A034024(n)]` -/
def P6875606058485551729.Spec : Prop :=
  ∀ n, (P6875606058485551729.a n : ℤ) = A034026 (n + 1)

theorem P6875606058485551729.correct : P6875606058485551729.Spec := by
  intro n
  simp only [A034026, Nat.add_sub_cancel]

end A034026

/-! ## A034026.P18035886220986257186

`A001481(lt[A126659(n+2), A000695(n)])`
-/

namespace A034026.P18035886220986257186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126659 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034026.P18035886220986257186

namespace A034026

/-- `A001481(lt[A126659(n+2), A000695(n)])` -/
def P18035886220986257186.Spec : Prop :=
  ∀ n, P18035886220986257186.a n = A034026 (n + 1)

end A034026

/-! ## A034026.P10565372766869532700

`A001481(lt[A126659(n+2), A319423(n+1)])`
-/

namespace A034026.P10565372766869532700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126659 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034026.P10565372766869532700

namespace A034026

/-- `A001481(lt[A126659(n+2), A319423(n+1)])` -/
def P10565372766869532700.Spec : Prop :=
  ∀ n, P10565372766869532700.a n = A034026 (n + 1)

end A034026

/-! ## A034026.P16074009737936341278

`A001481(lt[A126659(n+2), A001481(3*n+1)])`
-/

namespace A034026.P16074009737936341278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126659 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034026.P16074009737936341278

namespace A034026

/-- `A001481(lt[A126659(n+2), A001481(3*n+1)])` -/
def P16074009737936341278.Spec : Prop :=
  ∀ n, P16074009737936341278.a n = A034026 (n + 1)

end A034026

/-! ## A034026.P9151869263095706104

`eq[A000161(n), A324198(A002383(n+1))]`
-/

namespace A034026.P9151869263095706104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A002383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034026.P9151869263095706104

namespace A034026

/-- `eq[A000161(n), A324198(A002383(n+1))]` -/
def P9151869263095706104.Spec : Prop :=
  ∀ n, (P9151869263095706104.a n : ℤ) = A034026 (n + 1)

end A034026

/-!
# A034027: Numbers of the form x^2+2y^2 with x >= y >= 0.

The programs for A034027, the canonical program `A034027.P12646886906343554827` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034027 has offset 1).

The definition of A034027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034027.P15704890096163293863

`comp[A034028(n+1)]`
-/

namespace A034027.P15704890096163293863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034027.P15704890096163293863

namespace A034027

/-- `comp[A034028(n+1)]` -/
def P15704890096163293863.Spec : Prop :=
  ∀ n, (P15704890096163293863.a n : ℤ) = A034027 (n + 1)

end A034027

/-! ## A034027.P16796869999013020364

`lt[char[A034028(ceil(n/9)+1)], 1]`
-/

namespace A034027.P16796869999013020364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034028 (⌈(n : ℚ) / 9⌉ + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A034027.P16796869999013020364

namespace A034027

/-- `lt[char[A034028(ceil(n/9)+1)], 1]` -/
def P16796869999013020364.Spec : Prop :=
  ∀ n, (P16796869999013020364.a n : ℤ) = A034027 (n + 1)

end A034027

/-! ## A034027.P12646886906343554827

`eq[1, char[A069011(n)+A002262(n)²]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034027

/-- `eq[1, char[A069011(n)+A002262(n)²]]` -/
def P12646886906343554827.Spec : Prop :=
  ∀ n, (P12646886906343554827.a n : ℤ) = A034027 (n + 1)

theorem P12646886906343554827.correct : P12646886906343554827.Spec := by
  intro n
  simp only [A034027, Nat.add_sub_cancel]

end A034027

/-! ## A034027.P16046079964175232446

`lt[char[A034028(n+1)]*A002939(n), 2]`
-/

namespace A034027.P16046079964175232446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034028 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002939 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A034027.P16046079964175232446

namespace A034027

/-- `lt[char[A034028(n+1)]*A002939(n), 2]` -/
def P16046079964175232446.Spec : Prop :=
  ∀ n, (P16046079964175232446.a n : ℤ) = A034027 (n + 1)

end A034027

/-! ## A034027.P15417507324464526221

`lt[n*char[A034028(abs(1-n)+1)], 1]`
-/

namespace A034027.P15417507324464526221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034028 (|1 - (n : ℤ)| + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A034027.P15417507324464526221

namespace A034027

/-- `lt[n*char[A034028(abs(1-n)+1)], 1]` -/
def P15417507324464526221.Spec : Prop :=
  ∀ n, (P15417507324464526221.a n : ℤ) = A034027 (n + 1)

end A034027

/-!
# A034028: Numbers n not of form (x^2+2y^2 with x >= y >= 0).

The programs for A034028, the canonical program `A034028.P14737218398777476874` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034028 has offset 1).

The definition of A034028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034028.P14737218398777476874

`comp[A034027(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A034028

/-- `comp[A034027(n+1)]` -/
def P14737218398777476874.Spec : Prop :=
  ∀ n, (P14737218398777476874.a n : ℤ) = A034028 (n + 1)

theorem P14737218398777476874.correct : P14737218398777476874.Spec := by
  intro n
  simp only [A034028, Nat.add_sub_cancel]

end A034028

/-! ## A034028.P15281419587205219485

`comp[A132111(n)-A004247(n)]`
-/

namespace A034028.P15281419587205219485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - A004247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034028.P15281419587205219485

namespace A034028

/-- `comp[A132111(n)-A004247(n)]` -/
def P15281419587205219485.Spec : Prop :=
  ∀ n, (P15281419587205219485.a n : ℤ) = A034028 (n + 1)

end A034028

/-! ## A034028.P16591636166699545999

`eq[char[A034027(n+1)], A000038(n)]`
-/

namespace A034028.P16591636166699545999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034028.P16591636166699545999

namespace A034028

/-- `eq[char[A034027(n+1)], A000038(n)]` -/
def P16591636166699545999.Spec : Prop :=
  ∀ n, (P16591636166699545999.a n : ℤ) = A034028 (n + 1)

end A034028

/-! ## A034028.P15856854574169783078

`eq[char[A034027(n+1)], A002483(n)]`
-/

namespace A034028.P15856854574169783078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034028.P15856854574169783078

namespace A034028

/-- `eq[char[A034027(n+1)], A002483(n)]` -/
def P15856854574169783078.Spec : Prop :=
  ∀ n, (P15856854574169783078.a n : ℤ) = A034028 (n + 1)

end A034028

/-! ## A034028.P18003819272126043879

`eq[0, char[A069011(n)+A002262(n)²]]`
-/

namespace A034028.P18003819272126043879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A002262 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034028.P18003819272126043879

namespace A034028

/-- `eq[0, char[A069011(n)+A002262(n)²]]` -/
def P18003819272126043879.Spec : Prop :=
  ∀ n, (P18003819272126043879.a n : ℤ) = A034028 (n + 1)

end A034028

/-! ## A034028.P12126569820498926105

`eq[2*n-A005843(n), char[A034027(n+1)]]`
-/

namespace A034028.P12126569820498926105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005843 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A034028.P12126569820498926105

namespace A034028

/-- `eq[2*n-A005843(n), char[A034027(n+1)]]` -/
def P12126569820498926105.Spec : Prop :=
  ∀ n, (P12126569820498926105.a n : ℤ) = A034028 (n + 1)

end A034028

/-!
# A034029: Numbers that are primitively represented by (x^2+2y^2 with x >= y >= 0).

The programs for A034029, there is no canonical definition to state claims against.
-/

/-! ## A034029.P3827994938510138801

`∑[dr(A000119(A041028(n)))]`
-/

namespace A034029.P3827994938510138801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000119 (A041028 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034029.P3827994938510138801

/-!
# A034030: Imprimitively represented by x^2+2y^2.

The programs for A034030, there is no canonical definition to state claims against.
-/

/-! ## A034030.P7946142146795755180

`∪[A034032(n+1), A034033(n+1)]`
-/

namespace A034030.P7946142146795755180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034030.P7946142146795755180

/-! ## A034030.P3589081501256023712

`record[A105570(A002479(n+1))]`
-/

namespace A034030.P3589081501256023712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A002479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034030.P3589081501256023712

/-! ## A034030.P16872557226831685806

`∩[A002479(n+1), A034043(n+1)]`
-/

namespace A034030.P16872557226831685806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034030.P16872557226831685806

/-! ## A034030.P8781977997060833026

`filter[A034043(n+1), A391183(#)]`
-/

namespace A034030.P8781977997060833026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A034030.P8781977997060833026

/-! ## A034030.P14202714028142495280

`record[A105570(lt[0, A245572(n)²])]`
-/

namespace A034030.P14202714028142495280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034030.P14202714028142495280

/-! ## A034030.P15917377374725369598

`record[A105570(lt[0, A245572(2*n)]/2)]`
-/

namespace A034030.P15917377374725369598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034030.P15917377374725369598

/-!
# A034031: Numbers that are primitively but not imprimitively represented by x^2+2y^2.

The programs for A034031, the canonical program `A034031.P5489871832689968742` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034031 has offset 1).

The definition of A034031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034031.P11917332781804552761

`filter[A057127(n+1), A008966(#)]`
-/

namespace A034031.P11917332781804552761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A034031.P11917332781804552761

namespace A034031

/-- `filter[A057127(n+1), A008966(#)]` -/
def P11917332781804552761.Spec : Prop :=
  ∀ n, P11917332781804552761.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P7680927710851867220

`filter[A057127(n+1), A323154(#)]`
-/

namespace A034031.P7680927710851867220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A034031.P7680927710851867220

namespace A034031

/-- `filter[A057127(n+1), A323154(#)]` -/
def P7680927710851867220.Spec : Prop :=
  ∀ n, P7680927710851867220.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P9030161919912041247

`filter[A057127(n+1), A353559(#)]`
-/

namespace A034031.P9030161919912041247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A034031.P9030161919912041247

namespace A034031

/-- `filter[A057127(n+1), A353559(#)]` -/
def P9030161919912041247.Spec : Prop :=
  ∀ n, P9030161919912041247.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P9766530257266577465

`filter[A057127(n+1), A353627(#)]`
-/

namespace A034031.P9766530257266577465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A034031.P9766530257266577465

namespace A034031

/-- `filter[A057127(n+1), A353627(#)]` -/
def P9766530257266577465.Spec : Prop :=
  ∀ n, P9766530257266577465.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P8409078322457113610

`filter[A057127(n+1), A359834(#)]`
-/

namespace A034031.P8409078322457113610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A034031.P8409078322457113610

namespace A034031

/-- `filter[A057127(n+1), A359834(#)]` -/
def P8409078322457113610.Spec : Prop :=
  ∀ n, P8409078322457113610.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P8172902268811429900

`∩[A005117(n+1), A057127(n+1)]`
-/

namespace A034031.P8172902268811429900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P8172902268811429900

namespace A034031

/-- `∩[A005117(n+1), A057127(n+1)]` -/
def P8172902268811429900.Spec : Prop :=
  ∀ n, (P8172902268811429900.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P9360349344661042579

`record[∏{p}[A034034(n+1), #]]`
-/

namespace A034031.P9360349344661042579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034031.P9360349344661042579

namespace A034031

/-- `record[∏{p}[A034034(n+1), #]]` -/
def P9360349344661042579.Spec : Prop :=
  ∀ n, (P9360349344661042579.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P14341728684382245127

`filter[A034034(n+2), A008966(#)]`
-/

namespace A034031.P14341728684382245127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A034031.P14341728684382245127

namespace A034031

/-- `filter[A034034(n+2), A008966(#)]` -/
def P14341728684382245127.Spec : Prop :=
  ∀ n, P14341728684382245127.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P16509795145206073277

`∩[A005117(n+1), A034034(n+1)]`
-/

namespace A034031.P16509795145206073277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P16509795145206073277

namespace A034031

/-- `∩[A005117(n+1), A034034(n+1)]` -/
def P16509795145206073277.Spec : Prop :=
  ∀ n, (P16509795145206073277.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P8013676205320823852

`∩[A034034(n+1), A057127(n+1)]`
-/

namespace A034031.P8013676205320823852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P8013676205320823852

namespace A034031

/-- `∩[A034034(n+1), A057127(n+1)]` -/
def P8013676205320823852.Spec : Prop :=
  ∀ n, (P8013676205320823852.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P5489871832689968742

`record[∏{p}[A002479(n+1), #]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A034031

/-- `record[∏{p}[A002479(n+1), #]]` -/
def P5489871832689968742.Spec : Prop :=
  ∀ n, (P5489871832689968742.a n : ℤ) = A034031 (n + 1)

theorem P5489871832689968742.correct : P5489871832689968742.Spec := by
  intro n
  simp only [A034031, Nat.add_sub_cancel]

end A034031

/-! ## A034031.P16379615918703495919

`filter[A002479(n+2), A008966(#)]`
-/

namespace A034031.P16379615918703495919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A034031.P16379615918703495919

namespace A034031

/-- `filter[A002479(n+2), A008966(#)]` -/
def P16379615918703495919.Spec : Prop :=
  ∀ n, P16379615918703495919.a n = A034031 (n + 1)

end A034031

/-! ## A034031.P6662689782827822099

`∩[A002479(n+1), A005117(n+1)]`
-/

namespace A034031.P6662689782827822099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P6662689782827822099

namespace A034031

/-- `∩[A002479(n+1), A005117(n+1)]` -/
def P6662689782827822099.Spec : Prop :=
  ∀ n, (P6662689782827822099.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P1350301174978712656

`∩[A002479(n+1), A366641(n+1)]`
-/

namespace A034031.P1350301174978712656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P1350301174978712656

namespace A034031

/-- `∩[A002479(n+1), A366641(n+1)]` -/
def P1350301174978712656.Spec : Prop :=
  ∀ n, (P1350301174978712656.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P5972622429626545160

`∩[A034034(n+1), A366641(n+1)]`
-/

namespace A034031.P5972622429626545160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P5972622429626545160

namespace A034031

/-- `∩[A034034(n+1), A366641(n+1)]` -/
def P5972622429626545160.Spec : Prop :=
  ∀ n, (P5972622429626545160.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P10018693433935441396

`∩[A002479(n+1), A034044(n+1)]`
-/

namespace A034031.P10018693433935441396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P10018693433935441396

namespace A034031

/-- `∩[A002479(n+1), A034044(n+1)]` -/
def P10018693433935441396.Spec : Prop :=
  ∀ n, (P10018693433935441396.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P3375688884371667369

`∩[A034034(n+1), A034044(n+1)]`
-/

namespace A034031.P3375688884371667369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P3375688884371667369

namespace A034031

/-- `∩[A034034(n+1), A034044(n+1)]` -/
def P3375688884371667369.Spec : Prop :=
  ∀ n, (P3375688884371667369.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P14495587288222071313

`∩[A034044(n+1), A057127(n+1)]`
-/

namespace A034031.P14495587288222071313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P14495587288222071313

namespace A034031

/-- `∩[A034044(n+1), A057127(n+1)]` -/
def P14495587288222071313.Spec : Prop :=
  ∀ n, (P14495587288222071313.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P14324633413039956460

`∩[A002479(n+1), A274546(n+1)]`
-/

namespace A034031.P14324633413039956460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P14324633413039956460

namespace A034031

/-- `∩[A002479(n+1), A274546(n+1)]` -/
def P14324633413039956460.Spec : Prop :=
  ∀ n, (P14324633413039956460.a n : ℤ) = A034031 (n + 1)

end A034031

/-! ## A034031.P7636021835477928334

`∩[A034034(n+1), A274546(n+1)]`
-/

namespace A034031.P7636021835477928334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034031.P7636021835477928334

namespace A034031

/-- `∩[A034034(n+1), A274546(n+1)]` -/
def P7636021835477928334.Spec : Prop :=
  ∀ n, (P7636021835477928334.a n : ℤ) = A034031 (n + 1)

end A034031

/-!
# A034032: Imprimitively but not primitively represented by x^2+2y^2.

The programs for A034032, there is no canonical definition to state claims against.
-/

/-! ## A034032.P5751247028853587679

`record[A105570(A034034(n+1))]`
-/

namespace A034032.P5751247028853587679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A034034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034032.P5751247028853587679

/-! ## A034032.P14948340774718334093

`∩[A034030(n+1), A034034(n+1)]`
-/

namespace A034032.P14948340774718334093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034032.P14948340774718334093

/-! ## A034032.P7493116804279015991

`∩[A034034(n+1), A034043(n+1)]`
-/

namespace A034032.P7493116804279015991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034032.P7493116804279015991

/-! ## A034032.P13746501512673606730

`∩[comp[A034031(n+1)], A034034(n+1)]`
-/

namespace A034032.P13746501512673606730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A034032.P13746501512673606730

/-! ## A034032.P11970953494258334890

`∩[A034030(n+1), comp[A034033(n+1)]]`
-/

namespace A034032.P11970953494258334890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034033 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034032.P11970953494258334890

/-!
# A034033: Both primitively and imprimitively represented by x^2+2y^2.

The programs for A034033, there is no canonical definition to state claims against.
-/

/-! ## A034033.P16600582407064751315

`filter[A057127(n+1), A353626(#)]`
-/

namespace A034033.P16600582407064751315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A034033.P16600582407064751315

/-! ## A034033.P6795926685454275953

`filter[A057127(n+2), A087049(#)]`
-/

namespace A034033.P6795926685454275953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034033.P6795926685454275953

/-! ## A034033.P5194671738658724725

`∩[A013929(n+1), A057127(n+1)]`
-/

namespace A034033.P5194671738658724725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P5194671738658724725

/-! ## A034033.P17325024449122124958

`∩[A034030(n+1), A057127(n+1)]`
-/

namespace A034033.P17325024449122124958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P17325024449122124958

/-! ## A034033.P8205001075280807281

`∩[A034046(n+1), A057127(n+1)]`
-/

namespace A034033.P8205001075280807281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P8205001075280807281

/-! ## A034033.P3314286981330206010

`∩[A057127(n+1), A307579(n+1)]`
-/

namespace A034033.P3314286981330206010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P3314286981330206010

/-! ## A034033.P15552970073309330176

`∩[A057127(n+1), A319927(n+1)]`
-/

namespace A034033.P15552970073309330176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P15552970073309330176

/-! ## A034033.P6634949083630765406

`∩[A038838(n+1), A057127(n+1)]`
-/

namespace A034033.P6634949083630765406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P6634949083630765406

/-! ## A034033.P11957371801184413060

`∩[A057127(n+1), A335437(n+1)]`
-/

namespace A034033.P11957371801184413060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P11957371801184413060

/-! ## A034033.P5893425311863572745

`∩[A057127(n+1), A274188(n+1)]`
-/

namespace A034033.P5893425311863572745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P5893425311863572745

/-! ## A034033.P4347794316585081717

`∩[A046790(n+1), A057127(n+1)]`
-/

namespace A034033.P4347794316585081717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P4347794316585081717

/-! ## A034033.P3529087863141291985

`∩[A057127(n+1), A072903(n+1)]`
-/

namespace A034033.P3529087863141291985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P3529087863141291985

/-! ## A034033.P11698931935250237649

`∩[A034043(n+1), A057127(n+1)]`
-/

namespace A034033.P11698931935250237649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P11698931935250237649

/-! ## A034033.P11320064684774055809

`∩[A057127(n+1), A359468(n+1)]`
-/

namespace A034033.P11320064684774055809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P11320064684774055809

/-! ## A034033.P9144310775921389182

`∩[A057127(n+1), A143720(n+1)]`
-/

namespace A034033.P9144310775921389182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P9144310775921389182

/-! ## A034033.P5584018764892002522

`∩[A057127(n+1), A080756(n+1)]`
-/

namespace A034033.P5584018764892002522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034033.P5584018764892002522

/-! ## A034033.P18149300693324507149

`filter[A057127(n+1), A107078(#)]`
-/

namespace A034033.P18149300693324507149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A034033.P18149300693324507149

/-!
# A034034: Numbers that are primitively or imprimitively represented by x^2+2y^2, but not both.

The programs for A034034, there is no canonical definition to state claims against.
-/

/-! ## A034034.P17479389444309332096

`∪[A034031(n+1), A034032(n+1)]`
-/

namespace A034034.P17479389444309332096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034034.P17479389444309332096

/-! ## A034034.P14157687739237947540

`∩[A002479(n+1), comp[A034033(n+1)]]`
-/

namespace A034034.P14157687739237947540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034033 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034034.P14157687739237947540

/-! ## A034034.P635413860290371970

`A002479(lt[A251046(n+2), A061915(3*n+1)])`
-/

namespace A034034.P635413860290371970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251046 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061915 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034034.P635413860290371970

/-! ## A034034.P3249748801744742917

`eq[A087061(A033715(n)), A291168(n)]`
-/

namespace A034034.P3249748801744742917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A033715 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034034.P3249748801744742917

/-! ## A034034.P17713324181266957351

`eq[A134451(A002102(n)), A291168(n)]`
-/

namespace A034034.P17713324181266957351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A002102 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034034.P17713324181266957351

/-!
# A034035: Not of form (x^2+xy+2y^2 with x >= 0, y >= 0).

The programs for A034035, the canonical program `A034035.P4222596731264387004` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034035 has offset 1).

The definition of A034035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034035.P18382407596652523122

`comp[A034036(n+1)]`
-/

namespace A034035.P18382407596652523122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034035.P18382407596652523122

namespace A034035

/-- `comp[A034036(n+1)]` -/
def P18382407596652523122.Spec : Prop :=
  ∀ n, (P18382407596652523122.a n : ℤ) = A034035 (n + 1)

end A034035

/-! ## A034035.P6822956148478059125

`eq[char[A034036(n+1)], A000038(n)]`
-/

namespace A034035.P6822956148478059125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034035.P6822956148478059125

namespace A034035

/-- `eq[char[A034036(n+1)], A000038(n)]` -/
def P6822956148478059125.Spec : Prop :=
  ∀ n, (P6822956148478059125.a n : ℤ) = A034035 (n + 1)

end A034035

/-! ## A034035.P3318149496483099016

`eq[char[A034036(n+2)], A000007(n)]`
-/

namespace A034035.P3318149496483099016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034035.P3318149496483099016

namespace A034035

/-- `eq[char[A034036(n+2)], A000007(n)]` -/
def P3318149496483099016.Spec : Prop :=
  ∀ n, (P3318149496483099016.a n : ℤ) = A034035 (n + 1)

end A034035

/-! ## A034035.P3700407952885232183

`eq[char[A034036(n+2)], A130706(n)]`
-/

namespace A034035.P3700407952885232183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034035.P3700407952885232183

namespace A034035

/-- `eq[char[A034036(n+2)], A130706(n)]` -/
def P3700407952885232183.Spec : Prop :=
  ∀ n, (P3700407952885232183.a n : ℤ) = A034035 (n + 1)

end A034035

/-! ## A034035.P4222596731264387004

`comp[A069011(n)-A004247(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034035

/-- `comp[A069011(n)-A004247(n)]` -/
def P4222596731264387004.Spec : Prop :=
  ∀ n, (P4222596731264387004.a n : ℤ) = A034035 (n + 1)

theorem P4222596731264387004.correct : P4222596731264387004.Spec := by
  intro n
  simp only [A034035, Nat.add_sub_cancel]

end A034035

/-! ## A034035.P6000316935136093103

`comp[A188112(n+1)]`
-/

namespace A034035.P6000316935136093103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034035.P6000316935136093103

namespace A034035

/-- `comp[A188112(n+1)]` -/
def P6000316935136093103.Spec : Prop :=
  ∀ n, (P6000316935136093103.a n : ℤ) = A034035 (n + 1)

end A034035

/-!
# A034036: Numbers of the form (x^2+xy+2y^2 with x>=0, y>=0).

The programs for A034036, the canonical program `A034036.P767606872198546965` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034036 has offset 1).

The definition of A034036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034036.P767606872198546965

`comp[A034035(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A034036

/-- `comp[A034035(n+1)]` -/
def P767606872198546965.Spec : Prop :=
  ∀ n, (P767606872198546965.a n : ℤ) = A034036 (n + 1)

theorem P767606872198546965.correct : P767606872198546965.Spec := by
  intro n
  simp only [A034036, Nat.add_sub_cancel]

end A034036

/-! ## A034036.P871685740826740694

`eq[1, char[A188112(n+1)]]`
-/

namespace A034036.P871685740826740694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034036.P871685740826740694

namespace A034036

/-- `eq[1, char[A188112(n+1)]]` -/
def P871685740826740694.Spec : Prop :=
  ∀ n, (P871685740826740694.a n : ℤ) = A034036 (n + 1)

end A034036

/-! ## A034036.P3567012306823253331

`record[A188112(A065648(n))]`
-/

namespace A034036.P3567012306823253331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P3567012306823253331

namespace A034036

/-- `record[A188112(A065648(n))]` -/
def P3567012306823253331.Spec : Prop :=
  ∀ n, P3567012306823253331.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P14356477114569833173

`record[A188112(A109785(n))]`
-/

namespace A034036.P14356477114569833173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P14356477114569833173

namespace A034036

/-- `record[A188112(A109785(n))]` -/
def P14356477114569833173.Spec : Prop :=
  ∀ n, P14356477114569833173.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P1300223194083486518

`record[A188112(A003602(n+1))]`
-/

namespace A034036.P1300223194083486518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P1300223194083486518

namespace A034036

/-- `record[A188112(A003602(n+1))]` -/
def P1300223194083486518.Spec : Prop :=
  ∀ n, P1300223194083486518.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P268062962788475918

`record[A188112(A003963(n+1))]`
-/

namespace A034036.P268062962788475918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P268062962788475918

namespace A034036

/-- `record[A188112(A003963(n+1))]` -/
def P268062962788475918.Spec : Prop :=
  ∀ n, P268062962788475918.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P18002846138647866971

`record[A188112(A032742(n+1))]`
-/

namespace A034036.P18002846138647866971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P18002846138647866971

namespace A034036

/-- `record[A188112(A032742(n+1))]` -/
def P18002846138647866971.Spec : Prop :=
  ∀ n, P18002846138647866971.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P6007941731442244797

`record[A188112(A103391(n+1))]`
-/

namespace A034036.P6007941731442244797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A103391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P6007941731442244797

namespace A034036

/-- `record[A188112(A103391(n+1))]` -/
def P6007941731442244797.Spec : Prop :=
  ∀ n, P6007941731442244797.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P10425116563540329553

`record[A188112(A008611(n+2))]`
-/

namespace A034036.P10425116563540329553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P10425116563540329553

namespace A034036

/-- `record[A188112(A008611(n+2))]` -/
def P10425116563540329553.Spec : Prop :=
  ∀ n, P10425116563540329553.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P11756127563910355126

`record[A188112(A055396(n+2))]`
-/

namespace A034036.P11756127563910355126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A055396 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P11756127563910355126

namespace A034036

/-- `record[A188112(A055396(n+2))]` -/
def P11756127563910355126.Spec : Prop :=
  ∀ n, P11756127563910355126.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P2919474819518085585

`record[A188112(A056239(n+2))]`
-/

namespace A034036.P2919474819518085585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A056239 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P2919474819518085585

namespace A034036

/-- `record[A188112(A056239(n+2))]` -/
def P2919474819518085585.Spec : Prop :=
  ∀ n, P2919474819518085585.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P6448544703926410655

`record[A188112(A000463(n^(n%2)))]`
-/

namespace A034036.P6448544703926410655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A000463 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P6448544703926410655

namespace A034036

/-- `record[A188112(A000463(n^(n%2)))]` -/
def P6448544703926410655.Spec : Prop :=
  ∀ n, P6448544703926410655.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P9676723438362289080

`record[A188112(A000463(n^and(1, n)))]`
-/

namespace A034036.P9676723438362289080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (A000463 (n ^ Nat.land 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P9676723438362289080

namespace A034036

/-- `record[A188112(A000463(n^and(1, n)))]` -/
def P9676723438362289080.Spec : Prop :=
  ∀ n, P9676723438362289080.a n = A034036 (n + 1)

end A034036

/-! ## A034036.P7745086157820767597

`record[A188112(n+1)%A003586(n+1)]`
-/

namespace A034036.P7745086157820767597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188112 (n + 1)) (A003586 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034036.P7745086157820767597

namespace A034036

/-- `record[A188112(n+1)%A003586(n+1)]` -/
def P7745086157820767597.Spec : Prop :=
  ∀ n, P7745086157820767597.a n = A034036 (n + 1)

end A034036

/-!
# A034037: Numbers that are primitively represented by (x^2+xy+2y^2 with x >= 0, y >= 0).

The programs for A034037, there is no canonical definition to state claims against.
-/

/-! ## A034037.P206498336334452624

`∪[A034039(n+1), A034041(n)]`
-/

namespace A034037.P206498336334452624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034037.P206498336334452624

/-! ## A034037.P9710200660161140622

`∩[A034036(n+2), comp[A034040(n)]]`
-/

namespace A034037.P9710200660161140622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034040 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034037.P9710200660161140622

/-! ## A034037.P13337804102678210056

`A244779(lt[A318846(n+2), A061037(n+2)])`
-/

namespace A034037.P13337804102678210056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318846 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034037.P13337804102678210056

/-! ## A034037.P6690580461893234198

`record[gcd(A186101(n+1), A306418(2*n))]`
-/

namespace A034037.P6690580461893234198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186101 (n + 1)) (A306418 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034037.P6690580461893234198

/-!
# A034038: Imprimitively represented by (x^2+xy+2y^2, x>=0, y>=0).

The programs for A034038, there is no canonical definition to state claims against.
-/

/-! ## A034038.P7804853914862296386

`∪[A034040(n), A034041(n)]`
-/

namespace A034038.P7804853914862296386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034038.P7804853914862296386

/-! ## A034038.P2157787063159036591

`∩[comp[A034039(n+1)], A034036(n+2)]`
-/

namespace A034038.P2157787063159036591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A034038.P2157787063159036591

/-! ## A034038.P3282648987643382944

`A348739(n+1)-A327853(A007163(n+1))`
-/

namespace A034038.P3282648987643382944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348739 (n + 1) - A327853 (A007163 (n + 1)).toNat

end

end A034038.P3282648987643382944

/-! ## A034038.P307015027486358187

`A336359(n+1)-A151755(A188211(2*n+3))`
-/

namespace A034038.P307015027486358187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336359 (n + 1) - A151755 (A188211 (2 * n + 3)).toNat

end

end A034038.P307015027486358187

/-!
# A034039: Numbers that are primitively but not imprimitively represented by (x^2+xy+2y^2, x>=0, y>=0).

The programs for A034039, there is no canonical definition to state claims against.
-/

/-! ## A034039.P16983924121989724166

`∩[A034037(n+1), A034042(n+1)]`
-/

namespace A034039.P16983924121989724166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034039.P16983924121989724166

/-! ## A034039.P16875571416524212639

`∩[A034037(n+1), comp[A034038(n)]]`
-/

namespace A034039.P16875571416524212639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034037 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034039.P16875571416524212639

/-! ## A034039.P13713676200280857117

`∩[A034042(n+1), comp[A034038(n)]]`
-/

namespace A034039.P13713676200280857117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034039.P13713676200280857117

/-! ## A034039.P10310236724988188313

`∩[A034042(n+1), comp[A034040(n)]]`
-/

namespace A034039.P10310236724988188313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034040 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034039.P10310236724988188313

/-! ## A034039.P9822897565493062648

`∩[A034037(n+1), comp[A034041(n)]]`
-/

namespace A034039.P9822897565493062648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034037 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034041 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034039.P9822897565493062648

/-!
# A034040: Imprimitively but not primitively represented by (x^2+xy+2y^2, x>=0, y>=0).

The programs for A034040, there is no canonical definition to state claims against.
-/

/-! ## A034040.P10231409469938805182

`∩[A034042(n+1), A034038(n)]`
-/

namespace A034040.P10231409469938805182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034040.P10231409469938805182

/-! ## A034040.P5388784549595174965

`A028982(A061603(n)*A249031(n+4))`
-/

namespace A034040.P5388784549595174965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A061603 n * A249031 (n + 4)).toNat

end

end A034040.P5388784549595174965

/-! ## A034040.P5747978839024046350

`A028982(A249031(n+4)^A061603(n))`
-/

namespace A034040.P5747978839024046350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (SequenceMachineLib.roundAway ((A249031 (n + 4) : ℚ) ^ (A061603 n : ℤ))).toNat

end

end A034040.P5747978839024046350

/-! ## A034040.P6459638953199288601

`A028982(A249031(n+4)%A257758(2*n+3))`
-/

namespace A034040.P6459638953199288601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (Int.tmod (A249031 (n + 4)) (A257758 (2 * n + 3))).toNat

end

end A034040.P6459638953199288601

/-! ## A034040.P15149195167162713305

`eq[A108371(n+3), A165560(A033715(n))]`
-/

namespace A034040.P15149195167162713305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108371 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034040.P15149195167162713305

/-!
# A034041: Both primitively and imprimitively represented by (x^2+xy+2y^2, x>=0, y>=0).

The programs for A034041, there is no canonical definition to state claims against.
-/

/-! ## A034041.P6913551751161026416

`∩[A034037(n+1), A034038(n)]`
-/

namespace A034041.P6913551751161026416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034041.P6913551751161026416

/-!
# A034042: Numbers that are primitively or imprimitively represented by (x^2+xy+2y^2, x>=0, y>=0), but not both.

The programs for A034042, there is no canonical definition to state claims against.
-/

/-! ## A034042.P2071083384280619605

`∪[A034039(n+1), A034040(n)]`
-/

namespace A034042.P2071083384280619605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034042.P2071083384280619605

/-! ## A034042.P12045226422001971650

`∩[A034036(n+2), comp[A034041(n)]]`
-/

namespace A034042.P12045226422001971650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034041 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A034042.P12045226422001971650

/-!
# A034043: Numbers that are imprimitively represented by x^2+y^2+z^2.

The programs for A034043, there is no canonical definition to state claims against.
-/

/-! ## A034043.P97325685318742286

`∪[A034045(n+1), A034046(n+1)]`
-/

namespace A034043.P97325685318742286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034043.P97325685318742286

/-! ## A034043.P15636730613641933324

`record[A105570(A000378(n+1))]`
-/

namespace A034043.P15636730613641933324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034043.P15636730613641933324

/-! ## A034043.P15413027126832606675

`eq[n, A105570(n)+A064873(n)]`
-/

namespace A034043.P15413027126832606675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A064873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034043.P15413027126832606675

/-! ## A034043.P5164442134199222550

`eq[n, A105570(A072401(n)+n)]`
-/

namespace A034043.P5164442134199222550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A072401 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034043.P5164442134199222550

/-! ## A034043.P14140659425514380291

`eq[n, A105570(n-A072401(n))]`
-/

namespace A034043.P14140659425514380291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 ((n : ℤ) - A072401 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034043.P14140659425514380291

/-! ## A034043.P11139538923246005008

`lt[A074590(n), A005875(A028310(n))]`
-/

namespace A034043.P11139538923246005008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034043.P11139538923246005008

/-! ## A034043.P7541487358344075939

`eq[n, A105570(n*A071374(n))]`
-/

namespace A034043.P7541487358344075939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 ((n : ℤ) * A071374 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034043.P7541487358344075939

/-! ## A034043.P4416910142218410584

`eq[A002483(A285718(n+1)), A072401(n)]`
-/

namespace A034043.P4416910142218410584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (A285718 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034043.P4416910142218410584

/-! ## A034043.P10164664737105691549

`lt[A072401(n)+char[A336965(n+1)], 1]`
-/

namespace A034043.P10164664737105691549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A034043.P10164664737105691549

/-! ## A034043.P678502467939672662

`eq[A010673(A074206(n)), A072401(n)]`
-/

namespace A034043.P678502467939672662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A074206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034043.P678502467939672662

/-! ## A034043.P8844546172433309518

`lt[A074590(n), A005875(A008574(n))]`
-/

namespace A034043.P8844546172433309518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034043.P8844546172433309518

/-!
# A034044: Numbers that are primitively but not imprimitively represented by x^2+y^2+z^2.

The programs for A034044, the canonical program `A034044.P6265599758687673652` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034044 has offset 1).

The definition of A034044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034044.P5143848059534806150

`record[A007913(A047449(n+1))]`
-/

namespace A034044.P5143848059534806150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A047449 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034044.P5143848059534806150

namespace A034044

/-- `record[A007913(A047449(n+1))]` -/
def P5143848059534806150.Spec : Prop :=
  ∀ n, P5143848059534806150.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P7725052984917017346

`filter[A047449(n+1), A008966(#)]`
-/

namespace A034044.P7725052984917017346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A034044.P7725052984917017346

namespace A034044

/-- `filter[A047449(n+1), A008966(#)]` -/
def P7725052984917017346.Spec : Prop :=
  ∀ n, P7725052984917017346.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P4306130999824392517

`filter[A047449(n+1), A323154(#)]`
-/

namespace A034044.P4306130999824392517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A034044.P4306130999824392517

namespace A034044

/-- `filter[A047449(n+1), A323154(#)]` -/
def P4306130999824392517.Spec : Prop :=
  ∀ n, P4306130999824392517.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P5266785285759690544

`filter[A047449(n+1), A353559(#)]`
-/

namespace A034044.P5266785285759690544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A034044.P5266785285759690544

namespace A034044

/-- `filter[A047449(n+1), A353559(#)]` -/
def P5266785285759690544.Spec : Prop :=
  ∀ n, P5266785285759690544.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P6265599758687673652

`filter[A047449(n+1), A353627(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A034044

/-- `filter[A047449(n+1), A353627(#)]` -/
def P6265599758687673652.Spec : Prop :=
  ∀ n, P6265599758687673652.a n = A034044 (n + 1)

theorem P6265599758687673652.correct : P6265599758687673652.Spec := by
  intro n
  simp only [A034044, Nat.add_sub_cancel]

end A034044

/-! ## A034044.P11612070610140766465

`filter[A047449(n+1), A359834(#)]`
-/

namespace A034044.P11612070610140766465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A034044.P11612070610140766465

namespace A034044

/-- `filter[A047449(n+1), A359834(#)]` -/
def P11612070610140766465.Spec : Prop :=
  ∀ n, P11612070610140766465.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P12662132144746723346

`∩[A005117(n+1), A047449(n+1)]`
-/

namespace A034044.P12662132144746723346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P12662132144746723346

namespace A034044

/-- `∩[A005117(n+1), A047449(n+1)]` -/
def P12662132144746723346.Spec : Prop :=
  ∀ n, (P12662132144746723346.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P12722545844206930549

`∩[A047449(n+1), A064594(n+1)]`
-/

namespace A034044.P12722545844206930549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P12722545844206930549

namespace A034044

/-- `∩[A047449(n+1), A064594(n+1)]` -/
def P12722545844206930549.Spec : Prop :=
  ∀ n, (P12722545844206930549.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P3793732101149716928

`∩[A348499(n+1), A047449(n+1)]`
-/

namespace A034044.P3793732101149716928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P3793732101149716928

namespace A034044

/-- `∩[A348499(n+1), A047449(n+1)]` -/
def P3793732101149716928.Spec : Prop :=
  ∀ n, (P3793732101149716928.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P660146838924244060

`∩[A047449(n+1), A078779(n+1)]`
-/

namespace A034044.P660146838924244060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P660146838924244060

namespace A034044

/-- `∩[A047449(n+1), A078779(n+1)]` -/
def P660146838924244060.Spec : Prop :=
  ∀ n, (P660146838924244060.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P2113850386751918381

`filter[A034047(n+1), A166486(#)]`
-/

namespace A034044.P2113850386751918381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A034044.P2113850386751918381

namespace A034044

/-- `filter[A034047(n+1), A166486(#)]` -/
def P2113850386751918381.Spec : Prop :=
  ∀ n, P2113850386751918381.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P687321164070755267

`filter[A034047(n+1), A359550(#)]`
-/

namespace A034044.P687321164070755267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A034044.P687321164070755267

namespace A034044

/-- `filter[A034047(n+1), A359550(#)]` -/
def P687321164070755267.Spec : Prop :=
  ∀ n, P687321164070755267.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P14558079713994249407

`filter[A034047(n+2), A008966(#)]`
-/

namespace A034044.P14558079713994249407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A034044.P14558079713994249407

namespace A034044

/-- `filter[A034047(n+2), A008966(#)]` -/
def P14558079713994249407.Spec : Prop :=
  ∀ n, P14558079713994249407.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P7110116492248460255

`filter[A034047(n+2), A371087(#)]`
-/

namespace A034044.P7110116492248460255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A034044.P7110116492248460255

namespace A034044

/-- `filter[A034047(n+2), A371087(#)]` -/
def P7110116492248460255.Spec : Prop :=
  ∀ n, P7110116492248460255.a n = A034044 (n + 1)

end A034044

/-! ## A034044.P17511767278967493770

`∩[A005117(n+1), A034047(n+1)]`
-/

namespace A034044.P17511767278967493770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P17511767278967493770

namespace A034044

/-- `∩[A005117(n+1), A034047(n+1)]` -/
def P17511767278967493770.Spec : Prop :=
  ∀ n, (P17511767278967493770.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P8455373732377260456

`∩[A034047(n+1), A047449(n+1)]`
-/

namespace A034044.P8455373732377260456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P8455373732377260456

namespace A034044

/-- `∩[A034047(n+1), A047449(n+1)]` -/
def P8455373732377260456.Spec : Prop :=
  ∀ n, (P8455373732377260456.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P6292091599336099682

`∩[A034047(n+1), A193303(n+1)]`
-/

namespace A034044.P6292091599336099682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P6292091599336099682

namespace A034044

/-- `∩[A034047(n+1), A193303(n+1)]` -/
def P6292091599336099682.Spec : Prop :=
  ∀ n, (P6292091599336099682.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P2778743790693985165

`∩[A034047(n+1), A193304(n+1)]`
-/

namespace A034044.P2778743790693985165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P2778743790693985165

namespace A034044

/-- `∩[A034047(n+1), A193304(n+1)]` -/
def P2778743790693985165.Spec : Prop :=
  ∀ n, (P2778743790693985165.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P12757883207337745531

`∩[A034047(n+1), A240370(n+1)]`
-/

namespace A034044.P12757883207337745531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P12757883207337745531

namespace A034044

/-- `∩[A034047(n+1), A240370(n+1)]` -/
def P12757883207337745531.Spec : Prop :=
  ∀ n, (P12757883207337745531.a n : ℤ) = A034044 (n + 1)

end A034044

/-! ## A034044.P11761414537167006231

`∩[A034047(n+1), A371088(n+1)]`
-/

namespace A034044.P11761414537167006231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034044.P11761414537167006231

namespace A034044

/-- `∩[A034047(n+1), A371088(n+1)]` -/
def P11761414537167006231.Spec : Prop :=
  ∀ n, (P11761414537167006231.a n : ℤ) = A034044 (n + 1)

end A034044

/-!
# A034045: Numbers that are imprimitively but not primitively represented by x^2+y^2+z^2.

The programs for A034045, there is no canonical definition to state claims against.
-/

/-! ## A034045.P9523174923472111477

`4*A000378(n+1)`
-/

namespace A034045.P9523174923472111477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000378 (n + 1)

end

end A034045.P9523174923472111477

/-! ## A034045.P9988305770036971264

`4*lt[A002828(n), 4]`
-/

namespace A034045.P9988305770036971264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034045.P9988305770036971264

/-! ## A034045.P1635587577033543229

`4*comp[A004215(n+1)]`
-/

namespace A034045.P1635587577033543229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034045.P1635587577033543229

/-! ## A034045.P7213042098480415787

`A000378(n+1)/4^A008683(A007304(n+1))`
-/

namespace A034045.P7213042098480415787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000378 (n + 1) : ℚ) / (4 : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ)

end

end A034045.P7213042098480415787

/-! ## A034045.P12480730897077379929

`4*eq[0, A072401(n)]`
-/

namespace A034045.P12480730897077379929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034045.P12480730897077379929

/-! ## A034045.P2503522708289657675

`record[2*n*A000122(A000164(n)²)]`
-/

namespace A034045.P2503522708289657675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000122 (A000164 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034045.P2503522708289657675

/-! ## A034045.P553324372976995490

`A008586(A000378(n+1))`
-/

namespace A034045.P553324372976995490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A000378 (n + 1)).toNat

end

end A034045.P553324372976995490

/-! ## A034045.P11363794426880324517

`filter[A034043(n+1), A121262(#)]`
-/

namespace A034045.P11363794426880324517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A034045.P11363794426880324517

/-! ## A034045.P6307450301444544436

`∩[A034043(n+1), A008586(n)]`
-/

namespace A034045.P6307450301444544436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P6307450301444544436

/-! ## A034045.P13432293840730202327

`∩[2*n, A004014(n)]`
-/

namespace A034045.P13432293840730202327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P13432293840730202327

/-! ## A034045.P7345829486852962667

`∩[A004014(n), A008586(n)]`
-/

namespace A034045.P7345829486852962667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P7345829486852962667

/-! ## A034045.P16378202886474535587

`filter[A004014(n), A121262(#)]`
-/

namespace A034045.P16378202886474535587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A034045.P16378202886474535587

/-! ## A034045.P11619263438729634547

`filter[A004014(n), A354034(#)]`
-/

namespace A034045.P11619263438729634547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A034045.P11619263438729634547

/-! ## A034045.P15980491356581659359

`∩[A004014(n), A047407(n+1)]`
-/

namespace A034045.P15980491356581659359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P15980491356581659359

/-! ## A034045.P12407712149689823775

`∩[A004014(n), A047462(n+1)]`
-/

namespace A034045.P12407712149689823775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P12407712149689823775

/-! ## A034045.P8617683794062322239

`∩[A004014(n), A047464(n+1)]`
-/

namespace A034045.P8617683794062322239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P8617683794062322239

/-! ## A034045.P8843678895471474647

`∩[A004014(n), A005843(n)]`
-/

namespace A034045.P8843678895471474647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P8843678895471474647

/-! ## A034045.P5158191449140345997

`∩[A004014(n), A042948(n)]`
-/

namespace A034045.P5158191449140345997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034045.P5158191449140345997

/-! ## A034045.P6943103180366137978

`A005843(A000378(n+1)+A000378(n+1))`
-/

namespace A034045.P6943103180366137978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000378 (n + 1) + A000378 (n + 1)).toNat

end

end A034045.P6943103180366137978

/-!
# A034046: Numbers that are both primitively and imprimitively represented by x^2+y^2+z^2.

The programs for A034046, the canonical program `A034046.P11465442410285165208` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034046 has offset 1).

The definition of A034046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034046.P3639221713967676934

`filter[A034043(n+1), A166486(#)]`
-/

namespace A034046.P3639221713967676934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A034046.P3639221713967676934

namespace A034046

/-- `filter[A034043(n+1), A166486(#)]` -/
def P3639221713967676934.Spec : Prop :=
  ∀ n, P3639221713967676934.a n = A034046 (n + 1)

end A034046

/-! ## A034046.P11465442410285165208

`record[A105570(A047518(n+1)+7)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034046

/-- `record[A105570(A047518(n+1)+7)]` -/
def P11465442410285165208.Spec : Prop :=
  ∀ n, P11465442410285165208.a n = A034046 (n + 1)

theorem P11465442410285165208.correct : P11465442410285165208.Spec := by
  intro n
  simp only [A034046, Nat.add_sub_cancel]

end A034046

/-! ## A034046.P14020141686415680092

`filter[A047449(n+1), A353626(#)]`
-/

namespace A034046.P14020141686415680092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A034046.P14020141686415680092

namespace A034046

/-- `filter[A047449(n+1), A353626(#)]` -/
def P14020141686415680092.Spec : Prop :=
  ∀ n, P14020141686415680092.a n = A034046 (n + 1)

end A034046

/-! ## A034046.P2194451063009231453

`filter[A047449(n+2), A087049(#)]`
-/

namespace A034046.P2194451063009231453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A034046.P2194451063009231453

namespace A034046

/-- `filter[A047449(n+2), A087049(#)]` -/
def P2194451063009231453.Spec : Prop :=
  ∀ n, P2194451063009231453.a n = A034046 (n + 1)

end A034046

/-! ## A034046.P15762222015922434598

`∩[A013929(n+1), A047449(n+1)]`
-/

namespace A034046.P15762222015922434598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P15762222015922434598

namespace A034046

/-- `∩[A013929(n+1), A047449(n+1)]` -/
def P15762222015922434598.Spec : Prop :=
  ∀ n, (P15762222015922434598.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P2185991262295163359

`∩[A034043(n+1), A047449(n+1)]`
-/

namespace A034046.P2185991262295163359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P2185991262295163359

namespace A034046

/-- `∩[A034043(n+1), A047449(n+1)]` -/
def P2185991262295163359.Spec : Prop :=
  ∀ n, (P2185991262295163359.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P8984902261378121256

`∩[A038838(n+1), A047449(n+1)]`
-/

namespace A034046.P8984902261378121256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P8984902261378121256

namespace A034046

/-- `∩[A038838(n+1), A047449(n+1)]` -/
def P8984902261378121256.Spec : Prop :=
  ∀ n, (P8984902261378121256.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P13371595381213880915

`∩[A046790(n+1), A047449(n+1)]`
-/

namespace A034046.P13371595381213880915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P13371595381213880915

namespace A034046

/-- `∩[A046790(n+1), A047449(n+1)]` -/
def P13371595381213880915.Spec : Prop :=
  ∀ n, (P13371595381213880915.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P7493135929886263835

`∩[A047449(n+1), A072903(n+1)]`
-/

namespace A034046.P7493135929886263835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P7493135929886263835

namespace A034046

/-- `∩[A047449(n+1), A072903(n+1)]` -/
def P7493135929886263835.Spec : Prop :=
  ∀ n, (P7493135929886263835.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P5417054761160147797

`∩[A047449(n+1), A080756(n+1)]`
-/

namespace A034046.P5417054761160147797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P5417054761160147797

namespace A034046

/-- `∩[A047449(n+1), A080756(n+1)]` -/
def P5417054761160147797.Spec : Prop :=
  ∀ n, (P5417054761160147797.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P17771159002315748405

`∩[A047449(n+1), A143720(n+1)]`
-/

namespace A034046.P17771159002315748405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P17771159002315748405

namespace A034046

/-- `∩[A047449(n+1), A143720(n+1)]` -/
def P17771159002315748405.Spec : Prop :=
  ∀ n, (P17771159002315748405.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P9969349178180870796

`∩[A047449(n+1), A307579(n+1)]`
-/

namespace A034046.P9969349178180870796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P9969349178180870796

namespace A034046

/-- `∩[A047449(n+1), A307579(n+1)]` -/
def P9969349178180870796.Spec : Prop :=
  ∀ n, (P9969349178180870796.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P17639793332619169451

`∩[A047449(n+1), A319927(n+1)]`
-/

namespace A034046.P17639793332619169451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P17639793332619169451

namespace A034046

/-- `∩[A047449(n+1), A319927(n+1)]` -/
def P17639793332619169451.Spec : Prop :=
  ∀ n, (P17639793332619169451.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P15805620854318560044

`∩[A047449(n+1), A335437(n+1)]`
-/

namespace A034046.P15805620854318560044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P15805620854318560044

namespace A034046

/-- `∩[A047449(n+1), A335437(n+1)]` -/
def P15805620854318560044.Spec : Prop :=
  ∀ n, (P15805620854318560044.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P16738426031260063779

`∩[A047449(n+1), A359468(n+1)]`
-/

namespace A034046.P16738426031260063779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P16738426031260063779

namespace A034046

/-- `∩[A047449(n+1), A359468(n+1)]` -/
def P16738426031260063779.Spec : Prop :=
  ∀ n, (P16738426031260063779.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P10999945468609744440

`∩[A034043(n+1), A042968(n+1)]`
-/

namespace A034046.P10999945468609744440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P10999945468609744440

namespace A034046

/-- `∩[A034043(n+1), A042968(n+1)]` -/
def P10999945468609744440.Spec : Prop :=
  ∀ n, (P10999945468609744440.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P14965879794580232375

`∩[A047422(n+1), A319927(n+1)]`
-/

namespace A034046.P14965879794580232375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034046.P14965879794580232375

namespace A034046

/-- `∩[A047422(n+1), A319927(n+1)]` -/
def P14965879794580232375.Spec : Prop :=
  ∀ n, (P14965879794580232375.a n : ℤ) = A034046 (n + 1)

end A034046

/-! ## A034046.P11538866871000620300

`filter[A047449(n+1), A107078(#)]`
-/

namespace A034046.P11538866871000620300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A034046.P11538866871000620300

namespace A034046

/-- `filter[A047449(n+1), A107078(#)]` -/
def P11538866871000620300.Spec : Prop :=
  ∀ n, P11538866871000620300.a n = A034046 (n + 1)

end A034046

/-! ## A034046.P951961886901115378

`lt[A074590(n)², A005875(n)*A074590(n)]`
-/

namespace A034046.P951961886901115378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074590 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A074590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034046.P951961886901115378

namespace A034046

/-- `lt[A074590(n)², A005875(n)*A074590(n)]` -/
def P951961886901115378.Spec : Prop :=
  ∀ n, (P951961886901115378.a n : ℤ) = A034046 (n + 1)

end A034046

/-!
# A034047: Numbers that are primitively or imprimitively represented by x^2+y^2+z^2, but not both.

The programs for A034047, there is no canonical definition to state claims against.
-/

/-! ## A034047.P10820393803642583317

`∪[A034044(n+1), A034045(n+1)]`
-/

namespace A034047.P10820393803642583317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034047.P10820393803642583317

/-! ## A034047.P13760567810832919562

`comp[∪[A004215(n+1), A034046(n+1)]]`
-/

namespace A034047.P13760567810832919562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A034047.P13760567810832919562

/-! ## A034047.P5006866896388410123

`∪[4*A000378(n+1), A034044(n+1)]`
-/

namespace A034047.P5006866896388410123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034047.P5006866896388410123

/-! ## A034047.P11658555550624181524

`eq[char[A034046(n+1)], A072401(n)]`
-/

namespace A034047.P11658555550624181524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034047.P11658555550624181524

/-! ## A034047.P11970755062662352164

`eq[A003816(A105570(n)), A064873(n)]`
-/

namespace A034047.P11970755062662352164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A105570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034047.P11970755062662352164

/-! ## A034047.P827674033994026280

`eq[A009001(A105570(n)), A071374(n)]`
-/

namespace A034047.P827674033994026280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A105570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034047.P827674033994026280

/-! ## A034047.P8593783277074099884

`eq[A050606(A105570(n)), A072401(n)]`
-/

namespace A034047.P8593783277074099884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 (A105570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034047.P8593783277074099884

/-!
# A034048: Numbers with multiplicative digital root value 0.

The programs for A034048, there is no canonical definition to state claims against.
-/

/-! ## A034048.P8367636859333879218

`eq[0, A031347(n)]`
-/

namespace A034048.P8367636859333879218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034048.P8367636859333879218

/-! ## A034048.P7738784430691846759

`lt[A031347(n), A040001(n)]`
-/

namespace A034048.P7738784430691846759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034048.P7738784430691846759

/-! ## A034048.P14063856164090724471

`lt[A031347(n-A070565(n)), 1]`
-/

namespace A034048.P14063856164090724471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 ((n : ℤ) - A070565 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034048.P14063856164090724471

/-! ## A034048.P13024396295864372191

`lt[A031347(A230099(n)-n), 1]`
-/

namespace A034048.P13024396295864372191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A230099 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034048.P13024396295864372191

/-! ## A034048.P11280799449409058193

`lt[A000217(n)*A031347(n), 1]`
-/

namespace A034048.P11280799449409058193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A031347 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034048.P11280799449409058193

/-! ## A034048.P11848710382469432510

`record[n*(1-A031347(A007954(n)))]`
-/

namespace A034048.P11848710382469432510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A031347 (A007954 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P11848710382469432510

/-! ## A034048.P6951407359073488069

`record[n-A004185(n)*A031347(n)]`
-/

namespace A034048.P6951407359073488069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004185 n * A031347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P6951407359073488069

/-! ## A034048.P8802972512615516317

`record[n-A007953(n)*A031347(n)]`
-/

namespace A034048.P8802972512615516317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 n * A031347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P8802972512615516317

/-! ## A034048.P7209830107220086412

`record[n-A031347(n)*A268347(n)]`
-/

namespace A034048.P7209830107220086412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031347 n * A268347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P7209830107220086412

/-! ## A034048.P12887156563057058572

`record[n-A006530(n+1)*A031347(n)]`
-/

namespace A034048.P12887156563057058572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006530 (n + 1) * A031347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P12887156563057058572

/-! ## A034048.P3999830805717308846

`record[n-A000040(n+1)*A031347(n)]`
-/

namespace A034048.P3999830805717308846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A031347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P3999830805717308846

/-! ## A034048.P13576543188694181713

`record[n-A031347(n)*A288469(n+1)]`
-/

namespace A034048.P13576543188694181713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031347 n * A288469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034048.P13576543188694181713

/-! ## A034048.P17596018420622151308

`lt[A031347(n)*A262923(n), 1]`
-/

namespace A034048.P17596018420622151308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n * A262923 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034048.P17596018420622151308

/-!
# A034049: Numbers with multiplicative digital root value 2.

The programs for A034049, there is no canonical definition to state claims against.
-/

/-! ## A034049.P16163134583890286707

`∪[A199980(n+1), A199981(n+1)]`
-/

namespace A034049.P16163134583890286707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034049.P16163134583890286707

/-! ## A034049.P5824765074426610602

`∩[A028843(n+1), A028889(n+1)]`
-/

namespace A034049.P5824765074426610602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034049.P5824765074426610602

/-! ## A034049.P18145495473959745069

`∩[A051804(n+1), A028891(n)]`
-/

namespace A034049.P18145495473959745069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034049.P18145495473959745069

/-! ## A034049.P13458402702357173514

`∩[A028843(n+1), A051804(n+1)]`
-/

namespace A034049.P13458402702357173514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034049.P13458402702357173514

/-! ## A034049.P5976080258422168537

`∩[A028889(n+1), A051804(n+1)]`
-/

namespace A034049.P5976080258422168537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034049.P5976080258422168537

/-! ## A034049.P15670665141772520814

`eq[2, A031347(n)]`
-/

namespace A034049.P15670665141772520814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034049.P15670665141772520814

/-! ## A034049.P15268089570170657053

`record[gcd(n, n+2-A031347(A007954(n)))]`
-/

namespace A034049.P15268089570170657053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((n + 2 : ℤ) - A031347 (A007954 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034049.P15268089570170657053

/-! ## A034049.P12547436709795162767

`A028891(eq[2, A051802(A028891(n))])`
-/

namespace A034049.P12547436709795162767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A028891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034049.P12547436709795162767

/-!
# A034050: Numbers with multiplicative digital root value 3.

The programs for A034050, the canonical program `A034050.P15289769784533318971` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034050 has offset 1).

The definition of A034050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034050.P15289769784533318971

`2*A199986(n+1)-A131664(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A034050

/-- `2*A199986(n+1)-A131664(n+1)` -/
def P15289769784533318971.Spec : Prop :=
  ∀ n, P15289769784533318971.a n = A034050 (n + 1)

theorem P15289769784533318971.correct : P15289769784533318971.Spec := by
  intro n
  simp only [A034050, Nat.add_sub_cancel]

end A034050

/-! ## A034050.P8885736897268425867

`(A199985(n+1)+A131664(n+1))/2`
-/

namespace A034050.P8885736897268425867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199985 (n + 1) + A131664 (n + 1) : ℚ) / 2

end

end A034050.P8885736897268425867

namespace A034050

/-- `(A199985(n+1)+A131664(n+1))/2` -/
def P8885736897268425867.Spec : Prop :=
  ∀ n, P8885736897268425867.a n = (A034050 (n + 1) : ℚ)

end A034050

/-! ## A034050.P17512157500889258887

`A199986(n+1)+A011557(A002262(n))`
-/

namespace A034050.P17512157500889258887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199986 (n + 1) + A011557 (A002262 n).toNat

end

end A034050.P17512157500889258887

namespace A034050

/-- `A199986(n+1)+A011557(A002262(n))` -/
def P17512157500889258887.Spec : Prop :=
  ∀ n, P17512157500889258887.a n = A034050 (n + 1)

end A034050

/-! ## A034050.P264504114286505238

`A131664(n+1)+2*A011557(A002262(n))`
-/

namespace A034050.P264504114286505238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (n + 1) + 2 * A011557 (A002262 n).toNat

end

end A034050.P264504114286505238

namespace A034050

/-- `A131664(n+1)+2*A011557(A002262(n))` -/
def P264504114286505238.Spec : Prop :=
  ∀ n, P264504114286505238.a n = A034050 (n + 1)

end A034050

/-! ## A034050.P6056184245454230427

`A199985(n+1)+A199985(n+1)-A034054(n+1)`
-/

namespace A034050.P6056184245454230427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (n + 1) + (A199985 (n + 1) - A034054 (n + 1))

end

end A034050.P6056184245454230427

namespace A034050

/-- `A199985(n+1)+A199985(n+1)-A034054(n+1)` -/
def P6056184245454230427.Spec : Prop :=
  ∀ n, P6056184245454230427.a n = A034050 (n + 1)

end A034050

/-! ## A034050.P17654368582199932546

`2*A199985(n+1)-A034054(n+1)`
-/

namespace A034050.P17654368582199932546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199985 (n + 1) - A034054 (n + 1)

end

end A034050.P17654368582199932546

namespace A034050

/-- `2*A199985(n+1)-A034054(n+1)` -/
def P17654368582199932546.Spec : Prop :=
  ∀ n, P17654368582199932546.a n = A034050 (n + 1)

end A034050

/-! ## A034050.P3147717561154755891

`∪[A107689(n+1), A199982(n+1)]`
-/

namespace A034050.P3147717561154755891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034050.P3147717561154755891

namespace A034050

/-- `∪[A107689(n+1), A199982(n+1)]` -/
def P3147717561154755891.Spec : Prop :=
  ∀ n, (P3147717561154755891.a n : ℤ) = A034050 (n + 1)

end A034050

/-! ## A034050.P5054808825912566313

`A199986(n+1)+A007088(A059268(n))`
-/

namespace A034050.P5054808825912566313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199986 (n + 1) + A007088 (A059268 n).toNat

end

end A034050.P5054808825912566313

namespace A034050

/-- `A199986(n+1)+A007088(A059268(n))` -/
def P5054808825912566313.Spec : Prop :=
  ∀ n, P5054808825912566313.a n = A034050 (n + 1)

end A034050

/-! ## A034050.P6669292006990965204

`A032917(A099628(n+1))`
-/

namespace A034050.P6669292006990965204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A099628 (n + 1)).toNat

end

end A034050.P6669292006990965204

namespace A034050

/-- `A032917(A099628(n+1))` -/
def P6669292006990965204.Spec : Prop :=
  ∀ n, P6669292006990965204.a n = A034050 (n + 1)

end A034050

/-! ## A034050.P2520183188852942070

`A032917(A018900(n+1)-1)`
-/

namespace A034050.P2520183188852942070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A018900 (n + 1) - 1).toNat

end

end A034050.P2520183188852942070

namespace A034050

/-- `A032917(A018900(n+1)-1)` -/
def P2520183188852942070.Spec : Prop :=
  ∀ n, P2520183188852942070.a n = A034050 (n + 1)

end A034050

/-!
# A034051: Numbers with multiplicative digital root value 4.

The programs for A034051, there is no canonical definition to state claims against.
-/

/-! ## A034051.P6020964448864895669

`∪[A199983(n+1), A199984(n+1)]`
-/

namespace A034051.P6020964448864895669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034051.P6020964448864895669

/-! ## A034051.P2032328366558755854

`∩[A028845(n+1), A051806(n+1)]`
-/

namespace A034051.P2032328366558755854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034051.P2032328366558755854

/-! ## A034051.P2454860325690119983

`∩[A028889(n+1), A051806(n+1)]`
-/

namespace A034051.P2454860325690119983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034051.P2454860325690119983

/-! ## A034051.P3127082139581217822

`∩[A051806(n+1), A261189(n+1)]`
-/

namespace A034051.P3127082139581217822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034051.P3127082139581217822

/-! ## A034051.P7262919712395979500

`eq[4, A031347(n)]`
-/

namespace A034051.P7262919712395979500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034051.P7262919712395979500

/-! ## A034051.P8980025928287690483

`record[gcd(n, (2*(n+1))²-A031347(A007954(n)))]`
-/

namespace A034051.P8980025928287690483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (((2 * (n + 1)) ^ 2 : ℤ) - A031347 (A007954 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034051.P8980025928287690483

/-!
# A034052: Numbers with multiplicative digital root value 5.

The programs for A034052, there is no canonical definition to state claims against.
-/

/-! ## A034052.P13804312590002615676

`∪[A201017(n+1), A201018(n+1)]`
-/

namespace A034052.P13804312590002615676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P13804312590002615676

/-! ## A034052.P13804190352789260256

`∩[A028843(n+1), A051807(n+1)]`
-/

namespace A034052.P13804190352789260256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P13804190352789260256

/-! ## A034052.P1341486166800237211

`∩[A051807(n+1), A028891(n)]`
-/

namespace A034052.P1341486166800237211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P1341486166800237211

/-! ## A034052.P16085230809274634293

`∩[A028891(n), A092454(n)]`
-/

namespace A034052.P16085230809274634293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P16085230809274634293

/-! ## A034052.P2213065208737401774

`∩[A011535(n+1), A028891(n)]`
-/

namespace A034052.P2213065208737401774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P2213065208737401774

/-! ## A034052.P10234397332911074552

`∩[A028843(n+1), A092454(n)]`
-/

namespace A034052.P10234397332911074552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P10234397332911074552

/-! ## A034052.P8580075577077839648

`∩[A011535(n+1), A028843(n+1)]`
-/

namespace A034052.P8580075577077839648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034052.P8580075577077839648

/-! ## A034052.P13910343617510373667

`eq[5, A031347(n)]`
-/

namespace A034052.P13910343617510373667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034052.P13910343617510373667

/-!
# A034053: Numbers with multiplicative digital root value 6.

The programs for A034053, there is no canonical definition to state claims against.
-/

/-! ## A034053.P17647927183685962294

`∪[A201019(n+1), A201020(n+1)]`
-/

namespace A034053.P17647927183685962294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034053.P17647927183685962294

/-! ## A034053.P509654298261006149

`eq[6, A031347(n)]`
-/

namespace A034053.P509654298261006149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034053.P509654298261006149

/-! ## A034053.P7649116904462861730

`eq[0, a(A171765(n))%n]` with `a(0)=6, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A034053.P7649116904462861730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 2, 1] fun n f2 =>
  f2 (A171765 n).toNat % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034053.P7649116904462861730

/-! ## A034053.P10037721584850335265

`eq[0, A285093(a(A007954(n)%n))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=0, a(7)=1`
-/

namespace A034053.P10037721584850335265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 1, 1, 2, 0, 1] fun n f2 =>
  A285093 (f2 (Int.tmod (A007954 n) (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034053.P10037721584850335265

/-! ## A034053.P9846257314369563232

`eq[6, A087471(n^A178334(n))]`
-/

namespace A034053.P9846257314369563232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034053.P9846257314369563232

/-!
# A034054: Numbers with multiplicative digital root value 7.

The programs for A034054, the canonical program `A034054.P15306153571953073182` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034054 has offset 1).

The definition of A034054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034054.P15306153571953073182

`A199985(n+1)+A199985(n+1)-A034050(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034054

/-- `A199985(n+1)+A199985(n+1)-A034050(n+1)` -/
def P15306153571953073182.Spec : Prop :=
  ∀ n, P15306153571953073182.a n = A034054 (n + 1)

theorem P15306153571953073182.correct : P15306153571953073182.Spec := by
  intro n
  simp only [A034054, Nat.add_sub_cancel]

end A034054

/-! ## A034054.P1639324631856661423

`2*A199985(n+1)-A034050(n+1)`
-/

namespace A034054.P1639324631856661423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199985 (n + 1) - A034050 (n + 1)

end

end A034054.P1639324631856661423

namespace A034054

/-- `2*A199985(n+1)-A034050(n+1)` -/
def P1639324631856661423.Spec : Prop :=
  ∀ n, P1639324631856661423.a n = A034054 (n + 1)

theorem P1639324631856661423.correct : P1639324631856661423.Spec := by
  intro n
  simp only [A034054, Nat.add_sub_cancel, A034054.P1639324631856661423.a, A034054.P15306153571953073182.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A034054

/-! ## A034054.P15862497843562812285

`A276039(A099628(n+1))`
-/

namespace A034054.P15862497843562812285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (A099628 (n + 1)).toNat

end

end A034054.P15862497843562812285

namespace A034054

/-- `A276039(A099628(n+1))` -/
def P15862497843562812285.Spec : Prop :=
  ∀ n, P15862497843562812285.a n = A034054 (n + 1)

end A034054

/-! ## A034054.P17016963360215663767

`A276039(A018900(n+1)-1)`
-/

namespace A034054.P17016963360215663767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (A018900 (n + 1) - 1).toNat

end

end A034054.P17016963360215663767

namespace A034054

/-- `A276039(A018900(n+1)-1)` -/
def P17016963360215663767.Spec : Prop :=
  ∀ n, P17016963360215663767.a n = A034054 (n + 1)

end A034054

/-! ## A034054.P17340379809563059331

`A276039(eq[2, A000120(n+1)])`
-/

namespace A034054.P17340379809563059331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034054.P17340379809563059331

namespace A034054

/-- `A276039(eq[2, A000120(n+1)])` -/
def P17340379809563059331.Spec : Prop :=
  ∀ n, P17340379809563059331.a n = A034054 (n + 1)

end A034054

/-! ## A034054.P3538147684053615520

`A276039(eq[2, A000120(n)]-1)`
-/

namespace A034054.P3538147684053615520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A034054.P3538147684053615520

namespace A034054

/-- `A276039(eq[2, A000120(n)]-1)` -/
def P3538147684053615520.Spec : Prop :=
  ∀ n, P3538147684053615520.a n = A034054 (n + 1)

end A034054

/-!
# A034055: Numbers with multiplicative digital root value 8.

The programs for A034055, there is no canonical definition to state claims against.
-/

/-! ## A034055.P2955949373672979209

`∪[A201022(n+1), A201023(n+1)]`
-/

namespace A034055.P2955949373672979209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034055.P2955949373672979209

/-! ## A034055.P15363250720900290644

`∩[A051810(n+1), A028891(n)]`
-/

namespace A034055.P15363250720900290644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034055.P15363250720900290644

/-! ## A034055.P15383765816604477539

`∩[A028889(n+1), A051810(n+1)]`
-/

namespace A034055.P15383765816604477539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034055.P15383765816604477539

/-! ## A034055.P11047931990190285701

`eq[8, A031347(n)]`
-/

namespace A034055.P11047931990190285701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034055.P11047931990190285701

/-! ## A034055.P3715328678265638004

`lt[8, A341635(A031347(n)+n²%(n+1)+1)]`
-/

namespace A034055.P3715328678265638004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341635 (A031347 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034055.P3715328678265638004

/-! ## A034055.P17914442923971934923

`A028891(eq[8, A051802(A028891(n))])`
-/

namespace A034055.P17914442923971934923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A028891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034055.P17914442923971934923

/-!
# A034056: Numbers with multiplicative digital root value 9.

The programs for A034056, the canonical program `A034056.P9846014939436274111` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034056 has offset 1).

The definition of A034056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034056.P9846014939436274111

`∩[A174813(n+1), A245383(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034056

/-- `∩[A174813(n+1), A245383(n+1)]` -/
def P9846014939436274111.Spec : Prop :=
  ∀ n, (P9846014939436274111.a n : ℤ) = A034056 (n + 1)

theorem P9846014939436274111.correct : P9846014939436274111.Spec := by
  intro n
  simp only [A034056, Nat.add_sub_cancel]

end A034056

/-! ## A034056.P11938361193153650629

`∪[A107695(n+1), A201024(n+1)]`
-/

namespace A034056.P11938361193153650629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P11938361193153650629

namespace A034056

/-- `∪[A107695(n+1), A201024(n+1)]` -/
def P11938361193153650629.Spec : Prop :=
  ∀ n, (P11938361193153650629.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P14012017357026284799

`∩[A028845(n+1), A051811(n+1)]`
-/

namespace A034056.P14012017357026284799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P14012017357026284799

namespace A034056

/-- `∩[A028845(n+1), A051811(n+1)]` -/
def P14012017357026284799.Spec : Prop :=
  ∀ n, (P14012017357026284799.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P11571464864494754205

`∩[A050627(n+1), A051811(n+1)]`
-/

namespace A034056.P11571464864494754205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P11571464864494754205

namespace A034056

/-- `∩[A050627(n+1), A051811(n+1)]` -/
def P11571464864494754205.Spec : Prop :=
  ∀ n, (P11571464864494754205.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P7719894728351220663

`∩[A051811(n+1), A065520(n+1)]`
-/

namespace A034056.P7719894728351220663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P7719894728351220663

namespace A034056

/-- `∩[A051811(n+1), A065520(n+1)]` -/
def P7719894728351220663.Spec : Prop :=
  ∀ n, (P7719894728351220663.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P1855085286290167931

`∩[A051811(n+1), A090274(n+1)]`
-/

namespace A034056.P1855085286290167931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P1855085286290167931

namespace A034056

/-- `∩[A051811(n+1), A090274(n+1)]` -/
def P1855085286290167931.Spec : Prop :=
  ∀ n, (P1855085286290167931.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P4022415212602507513

`∩[A051811(n+1), A136333(n+1)]`
-/

namespace A034056.P4022415212602507513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P4022415212602507513

namespace A034056

/-- `∩[A051811(n+1), A136333(n+1)]` -/
def P4022415212602507513.Spec : Prop :=
  ∀ n, (P4022415212602507513.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P10130798576525817498

`∩[A051811(n+1), A174813(n+1)]`
-/

namespace A034056.P10130798576525817498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P10130798576525817498

namespace A034056

/-- `∩[A051811(n+1), A174813(n+1)]` -/
def P10130798576525817498.Spec : Prop :=
  ∀ n, (P10130798576525817498.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P12464215269856140692

`∩[A051811(n+1), A245383(n+1)]`
-/

namespace A034056.P12464215269856140692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P12464215269856140692

namespace A034056

/-- `∩[A051811(n+1), A245383(n+1)]` -/
def P12464215269856140692.Spec : Prop :=
  ∀ n, (P12464215269856140692.a n : ℤ) = A034056 (n + 1)

end A034056

/-! ## A034056.P8499565668585195406

`∩[A051811(n+1), A385324(n+1)]`
-/

namespace A034056.P8499565668585195406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P8499565668585195406

namespace A034056

/-- `∩[A051811(n+1), A385324(n+1)]` -/
def P8499565668585195406.Spec : Prop :=
  ∀ n, (P8499565668585195406.a n : ℤ) = A034056 (n + 1)

end A034056

/-!
# A034063: Decimal part of a(n)^(1/8) starts with n (8th powers excluded).

The programs for A034063, there is no canonical definition to state claims against.
-/

/-! ## A034063.P5673220894884414906

`A034073(A089840(∑[n]))`
-/

namespace A034063.P5673220894884414906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034073 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A034063.P5673220894884414906

/-! ## A034063.P5047325773085212389

`A034073(A122285(∑[n]))`
-/

namespace A034063.P5047325773085212389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034073 (A122285 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A034063.P5047325773085212389

/-! ## A034063.P7436580994761673614

`A034073(A122286(∑[n]))`
-/

namespace A034063.P7436580994761673614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034073 (A122286 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A034063.P7436580994761673614

/-! ## A034063.P7174462546338491193

`record[A034073(A348192(n))]`
-/

namespace A034063.P7174462546338491193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034073 (A348192 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034063.P7174462546338491193

/-! ## A034063.P3677704939349132578

`A034073(A077168(n)-1)`
-/

namespace A034063.P3677704939349132578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034073 (A077168 n - 1).toNat

end

end A034063.P3677704939349132578

/-!
# A034064: Decimal part of a(n)^(1/9) starts with n (9th powers excluded).

The programs for A034064, there is no canonical definition to state claims against.
-/

/-! ## A034064.P10522048678568347511

`A034074(A004906(n+1))`
-/

namespace A034064.P10522048678568347511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 (A004906 (n + 1)).toNat

end

end A034064.P10522048678568347511

/-! ## A034064.P10830128832745494787

`A034074(A004917(n+1))`
-/

namespace A034064.P10830128832745494787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 (A004917 (n + 1)).toNat

end

end A034064.P10830128832745494787

/-! ## A034064.P18191140889738206059

`A034074(n^A251072(n))`
-/

namespace A034064.P18191140889738206059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A034064.P18191140889738206059

/-! ## A034064.P5774082076298234348

`A034074(n)%A097694(n)`
-/

namespace A034064.P5774082076298234348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034074 n) (A097694 (n + 15))

end

end A034064.P5774082076298234348

/-! ## A034064.P6865346974199326714

`A034074(n*A251072(n)²)`
-/

namespace A034064.P6865346974199326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 ((n : ℤ) * A251072 n ^ 2).toNat

end

end A034064.P6865346974199326714

/-!
# A034065: Decimal part of a(n)^(1/10) starts with n (10th powers excluded).

The programs for A034065, there is no canonical definition to state claims against.
-/

/-! ## A034065.P7098173324866060869

`A034075(gcd(n, record[A351870(n)]))`
-/

namespace A034065.P7098173324866060869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034075 (Int.gcd (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A034065.P7098173324866060869

/-! ## A034065.P7130542266047608022

`A034075(gcd(A004905(n+1), A091684(n)))`
-/

namespace A034065.P7130542266047608022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034075 (Int.gcd (A004905 (n + 1)) (A091684 n))

end

end A034065.P7130542266047608022

/-! ## A034065.P871414012415649421

`A034075(A062399(n))`
-/

namespace A034065.P871414012415649421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034075 (A062399 n).toNat

end

end A034065.P871414012415649421

/-! ## A034065.P4358930214632974474

`A034075(A120126(n))`
-/

namespace A034065.P4358930214632974474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034075 (A120126 n).toNat

end

end A034065.P4358930214632974474

/-! ## A034065.P11783373862769807076

`A034075(A351870(n))`
-/

namespace A034065.P11783373862769807076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034075 (A351870 n).toNat

end

end A034065.P11783373862769807076

/-!
# A034066: Decimal part of a(n)^(1/11) starts with n (11th powers excluded).

The programs for A034066, there is no canonical definition to state claims against.
-/

/-! ## A034066.P10389835060415339319

`A034076(A061816(n))`
-/

namespace A034066.P10389835060415339319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034076 (A061816 n).toNat

end

end A034066.P10389835060415339319

/-! ## A034066.P781016603955963777

`A034076(A004086(n)%A018521(n+1))`
-/

namespace A034066.P781016603955963777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034076 (Int.tmod (A004086 n) (A018521 (n + 1))).toNat

end

end A034066.P781016603955963777

/-! ## A034066.P9178221722563081970

`A034076(A002998(n))`
-/

namespace A034066.P9178221722563081970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034076 (A002998 n).toNat

end

end A034066.P9178221722563081970

/-! ## A034066.P7799767788646626305

`A034076(A039723(n))`
-/

namespace A034066.P7799767788646626305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034076 (A039723 n).toNat

end

end A034066.P7799767788646626305

/-! ## A034066.P17098378250082735873

`A034076(A046469(n))`
-/

namespace A034066.P17098378250082735873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034076 (A046469 n).toNat

end

end A034066.P17098378250082735873

/-!
# A034076: a(0)=2; a(n) is the smallest k > a(n-1) such that the fractional part of k^(1/11) starts with n.

The programs for A034076, there is no canonical definition to state claims against.
-/

/-! ## A034076.P11936447886404641841

`A034066(10*n)%record[A034086(n+2)]`
-/

namespace A034076.P11936447886404641841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034086 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034066 (10 * n)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A034076.P11936447886404641841

/-! ## A034076.P13429885705755065344

`A034066(A008592(n))%A034086(n+5)`
-/

namespace A034076.P13429885705755065344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034066 (A008592 n).toNat) (A034086 (n + 5))

end

end A034076.P13429885705755065344

/-! ## A034076.P12282311066552493008

`A007913(A017438(n))*A034066(A008592(n))`
-/

namespace A034076.P12282311066552493008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A017438 n).toNat * A034066 (A008592 n).toNat

end

end A034076.P12282311066552493008

/-! ## A034076.P4446419146425700096

`A034066(A008592(n))%A255729(A008574(n))`
-/

namespace A034076.P4446419146425700096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034066 (A008592 n).toNat) (A255729 (A008574 n).toNat)

end

end A034076.P4446419146425700096

/-! ## A034076.P17435276440878201328

`3-(A294015(A000043(n+1))-A034066(A008592(n)))`
-/

namespace A034076.P17435276440878201328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A294015 (A000043 (n + 1)).toNat - A034066 (A008592 n).toNat)

end

end A034076.P17435276440878201328

/-!
# A034077: Decimal part of n-th root of a(n) starts with digit 0.

The programs for A034077, there is no canonical definition to state claims against.
-/

/-! ## A034077.P12790297053480795305

`A265527(a(n-1))` with `a(0)=26, a(1)=9`
-/

namespace A034077.P12790297053480795305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26, 9] fun n a =>
  A265527 (a (n - 1)).toNat

end

end A034077.P12790297053480795305

/-!
# A034081: Decimal part of n-th root of a(n) starts with digit 4.

The programs for A034081, there is no canonical definition to state claims against.
-/

/-! ## A034081.P3828882803797818881

`ceil((7/5)^(n+2))`
-/

namespace A034081.P3828882803797818881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((7 : ℚ) / 5) ^ (n + 2)⌉

end

end A034081.P3828882803797818881

/-! ## A034081.P11701565293836664154

`A094984(n+2)+1`
-/

namespace A034081.P11701565293836664154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094984 (n + 2) + 1

end

end A034081.P11701565293836664154

/-! ## A034081.P7771262234408109349

`floor((7/5)^(n+2)+A020985(n)²)`
-/

namespace A034081.P7771262234408109349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5) ^ (n + 2) + (A020985 n ^ 2 : ℚ)⌋

end

end A034081.P7771262234408109349

/-! ## A034081.P14855071336761383324

`floor((7/5)^(n+2)-A008683(A139859(n+1)))`
-/

namespace A034081.P14855071336761383324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5) ^ (n + 2) - (A008683 (A139859 (n + 1)).toNat : ℚ)⌋

end

end A034081.P14855071336761383324

/-! ## A034081.P12336860072635627360

`floor((7/5)^(n+2)-A008683(A240710(n+2)))`
-/

namespace A034081.P12336860072635627360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5) ^ (n + 2) - (A008683 (A240710 (n + 2)).toNat : ℚ)⌋

end

end A034081.P12336860072635627360

/-!
# A034082: a(n) = least integer m such that the part after the decimal point of the n-th root of m starts with the digit 5.

The programs for A034082, there is no canonical definition to state claims against.
-/

/-! ## A034082.P3612726575163402006

`A282288(A111332(n))+A002379(n+2)`
-/

namespace A034082.P3612726575163402006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282288 (A111332 n).toNat + A002379 (n + 2)

end

end A034082.P3612726575163402006

/-!
# A034084: Decimal part of n-th root of a(n) starts with digit 7.

The programs for A034084, there is no canonical definition to state claims against.
-/

/-! ## A034084.P13691730637530627667

`ceil((17/10)^(n+2))`
-/

namespace A034084.P13691730637530627667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((17 : ℚ) / 10) ^ (n + 2)⌉

end

end A034084.P13691730637530627667

/-! ## A034084.P8063301090059331266

`floor((17/10)^(n+2))+gcd(n, n+1)`
-/

namespace A034084.P8063301090059331266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((17 : ℚ) / 10) ^ (n + 2)⌋ + (Nat.gcd n (n + 1) : ℤ)

end

end A034084.P8063301090059331266

/-! ## A034084.P17781851124522087698

`floor(A007318(C(2, 2*n))+(17/10)^(n+2))`
-/

namespace A034084.P17781851124522087698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 (2 * n)) : ℚ) + ((17 : ℚ) / 10) ^ (n + 2)⌋

end

end A034084.P17781851124522087698

/-! ## A034084.P567863989999105564

`floor((17/10)^(n+2)-A008683(A007918(n)))`
-/

namespace A034084.P567863989999105564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((17 : ℚ) / 10) ^ (n + 2) - (A008683 (A007918 n).toNat : ℚ)⌋

end

end A034084.P567863989999105564

/-!
# A034087: Numbers divisible by the sum of the squares of their digits.

The programs for A034087, there is no canonical definition to state claims against.
-/

/-! ## A034087.P6887824311726690468

`A117562(n+2)`
-/

namespace A034087.P6887824311726690468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (n + 2)

end

end A034087.P6887824311726690468

/-! ## A034087.P4430905849939086600

`record[A117562(A001281(A004277(n)))]`
-/

namespace A034087.P4430905849939086600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034087.P4430905849939086600

/-! ## A034087.P5089447524036177328

`record[A117562(A000267(A004442(n)))]`
-/

namespace A034087.P5089447524036177328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034087.P5089447524036177328

/-! ## A034087.P7649960875950978351

`eq[lcm(n, A003132(n)), A028310(n)]`
-/

namespace A034087.P7649960875950978351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A003132 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034087.P7649960875950978351

/-! ## A034087.P5448069215284304001

`record[A117562(A004736(A051890(n)))]`
-/

namespace A034087.P5448069215284304001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (A004736 (A051890 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034087.P5448069215284304001

/-!
# A034088: Numbers divisible by the sum of the cubes of their digits.

The programs for A034088, there is no canonical definition to state claims against.
-/

/-! ## A034088.P9476659615090112826

`A169662(n+1)%A002266(A291644(n+1))`
-/

namespace A034088.P9476659615090112826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169662 (n + 1)) (A002266 (A291644 (n + 1)).toNat)

end

end A034088.P9476659615090112826

/-!
# A034090: Numbers k whose sum of proper divisors (A001065(k)) exceeds that of all smaller numbers.

The programs for A034090, there is no canonical definition to state claims against.
-/

/-! ## A034090.P5389688974543179754

`A070015(A034091(n+1))`
-/

namespace A034090.P5389688974543179754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A034091 (n + 1)).toNat

end

end A034090.P5389688974543179754

/-! ## A034090.P16893281154163852329

`A359132(record[A001065(n+1)])`
-/

namespace A034090.P16893281154163852329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034090.P16893281154163852329

/-! ## A034090.P13073337589219272471

`A359132(record[A237588(n+1)+n])`
-/

namespace A034090.P13073337589219272471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034090.P13073337589219272471

/-! ## A034090.P5684383309892169992

`A359132(record[A000203(n+1)-(n+1)])`
-/

namespace A034090.P5684383309892169992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034090.P5684383309892169992

/-! ## A034090.P12618993347243970416

`A359132(record[A318518(n+1)+A318505(n+1)])`
-/

namespace A034090.P12618993347243970416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (n + 1) + A318505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034090.P12618993347243970416

/-!
# A034091: Records for sum of proper divisors function A001065.

The programs for A034091, there is no canonical definition to state claims against.
-/

/-! ## A034091.P12193619510923551966

`record[A034885(n+1)-A002093(n+1)]`
-/

namespace A034091.P12193619510923551966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034885 (n + 1) - A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P12193619510923551966

/-! ## A034091.P4270108263845736176

`∑{d}[A034090(n+1), #]-A034090(n+1)`
-/

namespace A034091.P4270108263845736176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A034090 (n + 1)

end

end A034091.P4270108263845736176

/-! ## A034091.P2220328655975261742

`record[A000203(n+1)-(n+1)]`
-/

namespace A034091.P2220328655975261742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P2220328655975261742

/-! ## A034091.P591931827645171267

`∑{d}[A034090(n+1), #-A000010(#)]`
-/

namespace A034091.P591931827645171267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A034091.P591931827645171267

/-! ## A034091.P15365008837563155519

`record[A318518(n+1)+A318505(n+1)]`
-/

namespace A034091.P15365008837563155519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (n + 1) + A318505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P15365008837563155519

/-! ## A034091.P15638925143778944501

`record[∑{d}[2*n, #]-2*n]`
-/

namespace A034091.P15638925143778944501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P15638925143778944501

/-! ## A034091.P3998204915844886541

`record[∑{d}[2*n, #%(2*n)]]`
-/

namespace A034091.P3998204915844886541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P3998204915844886541

/-! ## A034091.P16044038303270204008

`record[A001065(n+1)]`
-/

namespace A034091.P16044038303270204008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P16044038303270204008

/-! ## A034091.P14709172830195713707

`record[Δ[A244048(n+1)]]`
-/

namespace A034091.P14709172830195713707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P14709172830195713707

/-! ## A034091.P6440144892617884737

`record[A237588(n+1)+n]`
-/

namespace A034091.P6440144892617884737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034091.P6440144892617884737

/-!
# A034092: Number of partitions of n into 3 distinct parts from [ 1,39 ].

The programs for A034092, there is no canonical definition to state claims against.
-/

/-! ## A034092.P15853444138315202303

`(A001399(n)-n)%A099897(n)`
-/

namespace A034092.P15853444138315202303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 n - (n : ℤ)) (A099897 n)

end

end A034092.P15853444138315202303

/-!
# A034093: Number of near-repunit primes that can be formed from (10^k - 1)/9 by changing just one digit from 1 to 0.

The programs for A034093, there is no canonical definition to state claims against.
-/

/-! ## A034093.P9730898811694690560

`A343577(∏{p}[n+1, #])%A124840(n+1)`
-/

namespace A034093.P9730898811694690560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343577 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A124840 (n + 1))

end

end A034093.P9730898811694690560

/-! ## A034093.P8470552806199180981

`A350673(lcm(A020914(n), A289978(n)))`
-/

namespace A034093.P8470552806199180981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350673 (Int.lcm (A020914 n) (A289978 n))

end

end A034093.P8470552806199180981

/-! ## A034093.P17542171255831777241

`and(A014132(A014743(n)), A064879(n))`
-/

namespace A034093.P17542171255831777241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014132 (A014743 n).toNat) (A064879 n)

end

end A034093.P17542171255831777241

/-! ## A034093.P17719415269678096616

`and(A000045(A103495(n)), A059118(n+1))`
-/

namespace A034093.P17719415269678096616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A103495 n).toNat) (A059118 (n + 1))

end

end A034093.P17719415269678096616

/-! ## A034093.P11352844296924632087

`and(A001399(A334515(n+1)), A096801(n))`
-/

namespace A034093.P11352844296924632087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001399 (A334515 (n + 1)).toNat) (A096801 n)

end

end A034093.P11352844296924632087

/-!
# A034094: (-1)sigma perfect numbers: (-1)sigma(a) = m*a for some integer m, where if a = Product p(i)^r(i) then (-1)sigma(a) = Product_{i} (-1 + Sum_{s=1..r(i)} p(i)^s).

The programs for A034094, there is no canonical definition to state claims against.
-/

/-! ## A034094.P17436651929441192292

`A309243(lt[A309243(n+3), A337940(n+1)])`
-/

namespace A034094.P17436651929441192292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309243 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309243 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034094.P17436651929441192292

/-!
# A034096: Fractional part of square root of n starts with digit 0 (squares excluded).

The programs for A034096, the canonical program `A034096.P8391659666020544807` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034096 has offset 1).

The definition of A034096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034096.P8391659666020544807

`lt[9, A091453(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034096

/-- `lt[9, A091453(n)]` -/
def P8391659666020544807.Spec : Prop :=
  ∀ n, (P8391659666020544807.a n : ℤ) = A034096 (n + 1)

theorem P8391659666020544807.correct : P8391659666020544807.Spec := by
  intro n
  simp only [A034096, Nat.add_sub_cancel]

end A034096

/-! ## A034096.P2786431309729673884

`A000037(A034101(n+1))`
-/

namespace A034096.P2786431309729673884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034101 (n + 1)).toNat

end

end A034096.P2786431309729673884

namespace A034096

/-- `A000037(A034101(n+1))` -/
def P2786431309729673884.Spec : Prop :=
  ∀ n, P2786431309729673884.a n = A034096 (n + 1)

end A034096

/-! ## A034096.P710510906607254229

`A028392(A034101(n+1)+1)`
-/

namespace A034096.P710510906607254229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034101 (n + 1) + 1).toNat

end

end A034096.P710510906607254229

namespace A034096

/-- `A028392(A034101(n+1)+1)` -/
def P710510906607254229.Spec : Prop :=
  ∀ n, P710510906607254229.a n = A034096 (n + 1)

end A034096

/-! ## A034096.P9286412839461333481

`A078358(A034101(n+1)+1)`
-/

namespace A034096.P9286412839461333481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034101 (n + 1) + 1).toNat

end

end A034096.P9286412839461333481

namespace A034096

/-- `A078358(A034101(n+1)+1)` -/
def P9286412839461333481.Spec : Prop :=
  ∀ n, P9286412839461333481.a n = A034096 (n + 1)

end A034096

/-! ## A034096.P2234690637024034349

`A135668(or(char[3], A034101(n+1)))`
-/

namespace A034096.P2234690637024034349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A034101 (n + 1))).toNat

end

end A034096.P2234690637024034349

namespace A034096

/-- `A135668(or(char[3], A034101(n+1)))` -/
def P2234690637024034349.Spec : Prop :=
  ∀ n, P2234690637024034349.a n = A034096 (n + 1)

end A034096

/-! ## A034096.P14777808549896590906

`A034101(n+1)+A000194(A034101(n+1)+1)`
-/

namespace A034096.P14777808549896590906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034101 (n + 1) + A000194 (A034101 (n + 1) + 1).toNat

end

end A034096.P14777808549896590906

namespace A034096

/-- `A034101(n+1)+A000194(A034101(n+1)+1)` -/
def P14777808549896590906.Spec : Prop :=
  ∀ n, P14777808549896590906.a n = A034096 (n + 1)

end A034096

/-! ## A034096.P15875278384045629991

`A034101(A000027(n+1))+A000194(A034101(n+1))`
-/

namespace A034096.P15875278384045629991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034101 (A000027 (n + 1)).toNat + A000194 (A034101 (n + 1)).toNat

end

end A034096.P15875278384045629991

namespace A034096

/-- `A034101(A000027(n+1))+A000194(A034101(n+1))` -/
def P15875278384045629991.Spec : Prop :=
  ∀ n, P15875278384045629991.a n = A034096 (n + 1)

end A034096

/-! ## A034096.P2535179269395749835

`eq[9, A023961(A020703(n+1))]`
-/

namespace A034096.P2535179269395749835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A020703 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034096.P2535179269395749835

namespace A034096

/-- `eq[9, A023961(A020703(n+1))]` -/
def P2535179269395749835.Spec : Prop :=
  ∀ n, (P2535179269395749835.a n : ℤ) = A034096 (n + 1)

end A034096

/-! ## A034096.P4839993328792001958

`A135668(A034101(n+1)%A186599(n+1))`
-/

namespace A034096.P4839993328792001958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (Int.tmod (A034101 (n + 1)) (A186599 (n + 1))).toNat

end

end A034096.P4839993328792001958

namespace A034096

/-- `A135668(A034101(n+1)%A186599(n+1))` -/
def P4839993328792001958.Spec : Prop :=
  ∀ n, P4839993328792001958.a n = A034096 (n + 1)

end A034096

/-!
# A034097: Fractional part of square root of a(n) starts with digit 1.

The programs for A034097, the canonical program `A034097.P4458000576878132596` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034097 has offset 1).

The definition of A034097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034097.P3556046131230200233

`A000037(A034102(n+1))`
-/

namespace A034097.P3556046131230200233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034102 (n + 1)).toNat

end

end A034097.P3556046131230200233

namespace A034097

/-- `A000037(A034102(n+1))` -/
def P3556046131230200233.Spec : Prop :=
  ∀ n, P3556046131230200233.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P5465063710551559979

`A028392(A034102(n+1)+1)`
-/

namespace A034097.P5465063710551559979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034102 (n + 1) + 1).toNat

end

end A034097.P5465063710551559979

namespace A034097

/-- `A028392(A034102(n+1)+1)` -/
def P5465063710551559979.Spec : Prop :=
  ∀ n, P5465063710551559979.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P1644673498260371969

`A078358(A034102(n+1)+1)`
-/

namespace A034097.P1644673498260371969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034102 (n + 1) + 1).toNat

end

end A034097.P1644673498260371969

namespace A034097

/-- `A078358(A034102(n+1)+1)` -/
def P1644673498260371969.Spec : Prop :=
  ∀ n, P1644673498260371969.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P10889223162932369274

`A000037(eq[6, A023961(n+1)]+1)`
-/

namespace A034097.P10889223162932369274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A034097.P10889223162932369274

namespace A034097

/-- `A000037(eq[6, A023961(n+1)]+1)` -/
def P10889223162932369274.Spec : Prop :=
  ∀ n, P10889223162932369274.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P4458000576878132596

`eq[1, A023961(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034097

/-- `eq[1, A023961(n+1)]+1` -/
def P4458000576878132596.Spec : Prop :=
  ∀ n, (P4458000576878132596.a n : ℤ) = A034097 (n + 1)

theorem P4458000576878132596.correct : P4458000576878132596.Spec := by
  intro n
  simp only [A034097, Nat.add_sub_cancel]

end A034097

/-! ## A034097.P322877161697869734

`eq[1, A023961(A028310(n))]`
-/

namespace A034097.P322877161697869734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034097.P322877161697869734

namespace A034097

/-- `eq[1, A023961(A028310(n))]` -/
def P322877161697869734.Spec : Prop :=
  ∀ n, (P322877161697869734.a n : ℤ) = A034097 (n + 1)

end A034097

/-! ## A034097.P15073846259410868570

`A020725(eq[1, A023961(n+1)])`
-/

namespace A034097.P15073846259410868570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034097.P15073846259410868570

namespace A034097

/-- `A020725(eq[1, A023961(n+1)])` -/
def P15073846259410868570.Spec : Prop :=
  ∀ n, P15073846259410868570.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P4240853755208848370

`A065475(eq[1, A023961(n+1)])`
-/

namespace A034097.P4240853755208848370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034097.P4240853755208848370

namespace A034097

/-- `A065475(eq[1, A023961(n+1)])` -/
def P4240853755208848370.Spec : Prop :=
  ∀ n, P4240853755208848370.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P13273526811609075985

`A153152(eq[1, A023961(n+1)])`
-/

namespace A034097.P13273526811609075985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034097.P13273526811609075985

namespace A034097

/-- `A153152(eq[1, A023961(n+1)])` -/
def P13273526811609075985.Spec : Prop :=
  ∀ n, P13273526811609075985.a n = A034097 (n + 1)

end A034097

/-! ## A034097.P5854474583158556520

`eq[1, A023961(A000007(n)+n)]`
-/

namespace A034097.P5854474583158556520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034097.P5854474583158556520

namespace A034097

/-- `eq[1, A023961(A000007(n)+n)]` -/
def P5854474583158556520.Spec : Prop :=
  ∀ n, (P5854474583158556520.a n : ℤ) = A034097 (n + 1)

end A034097

/-! ## A034097.P11674395381934533187

`eq[1, A023961(A138153(n+1))]`
-/

namespace A034097.P11674395381934533187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034097.P11674395381934533187

namespace A034097

/-- `eq[1, A023961(A138153(n+1))]` -/
def P11674395381934533187.Spec : Prop :=
  ∀ n, (P11674395381934533187.a n : ℤ) = A034097 (n + 1)

end A034097

/-! ## A034097.P12177270072849689440

`eq[1, A023961(A065033(2*n))]`
-/

namespace A034097.P12177270072849689440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034097.P12177270072849689440

namespace A034097

/-- `eq[1, A023961(A065033(2*n))]` -/
def P12177270072849689440.Spec : Prop :=
  ∀ n, (P12177270072849689440.a n : ℤ) = A034097 (n + 1)

end A034097

/-! ## A034097.P5538035933389061795

`eq[1, A023961(A123108(2*n))]`
-/

namespace A034097.P5538035933389061795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034097.P5538035933389061795

namespace A034097

/-- `eq[1, A023961(A123108(2*n))]` -/
def P5538035933389061795.Spec : Prop :=
  ∀ n, (P5538035933389061795.a n : ℤ) = A034097 (n + 1)

end A034097

/-!
# A034098: Fractional part of square root of a(n) starts with digit 2.

The programs for A034098, the canonical program `A034098.P11444615271163327952` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034098 has offset 1).

The definition of A034098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034098.P7108658558460233205

`A000037(A034103(n+1))`
-/

namespace A034098.P7108658558460233205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034103 (n + 1)).toNat

end

end A034098.P7108658558460233205

namespace A034098

/-- `A000037(A034103(n+1))` -/
def P7108658558460233205.Spec : Prop :=
  ∀ n, P7108658558460233205.a n = A034098 (n + 1)

end A034098

/-! ## A034098.P11444615271163327952

`A078358(A034103(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034098

/-- `A078358(A034103(n+1)+1)` -/
def P11444615271163327952.Spec : Prop :=
  ∀ n, P11444615271163327952.a n = A034098 (n + 1)

theorem P11444615271163327952.correct : P11444615271163327952.Spec := by
  intro n
  simp only [A034098, Nat.add_sub_cancel]

end A034098

/-! ## A034098.P9330515418264532612

`A034103(n+1)+A000194(A034103(n+1)+1)`
-/

namespace A034098.P9330515418264532612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034103 (n + 1) + A000194 (A034103 (n + 1) + 1).toNat

end

end A034098.P9330515418264532612

namespace A034098

/-- `A034103(n+1)+A000194(A034103(n+1)+1)` -/
def P9330515418264532612.Spec : Prop :=
  ∀ n, P9330515418264532612.a n = A034098 (n + 1)

end A034098

/-! ## A034098.P7977831047958161818

`eq[2, A023961(n+1)]+1`
-/

namespace A034098.P7977831047958161818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034098.P7977831047958161818

namespace A034098

/-- `eq[2, A023961(n+1)]+1` -/
def P7977831047958161818.Spec : Prop :=
  ∀ n, (P7977831047958161818.a n : ℤ) = A034098 (n + 1)

end A034098

/-! ## A034098.P13352744582259534892

`eq[2, A023961(A028310(n))]`
-/

namespace A034098.P13352744582259534892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034098.P13352744582259534892

namespace A034098

/-- `eq[2, A023961(A028310(n))]` -/
def P13352744582259534892.Spec : Prop :=
  ∀ n, (P13352744582259534892.a n : ℤ) = A034098 (n + 1)

end A034098

/-! ## A034098.P2193437780145559889

`A020725(eq[2, A023961(n+1)])`
-/

namespace A034098.P2193437780145559889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034098.P2193437780145559889

namespace A034098

/-- `A020725(eq[2, A023961(n+1)])` -/
def P2193437780145559889.Spec : Prop :=
  ∀ n, P2193437780145559889.a n = A034098 (n + 1)

end A034098

/-! ## A034098.P7186096400549759106

`A065475(eq[2, A023961(n+1)])`
-/

namespace A034098.P7186096400549759106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034098.P7186096400549759106

namespace A034098

/-- `A065475(eq[2, A023961(n+1)])` -/
def P7186096400549759106.Spec : Prop :=
  ∀ n, P7186096400549759106.a n = A034098 (n + 1)

end A034098

/-! ## A034098.P18092900680341691578

`eq[2, A023961(A000007(n)+n)]`
-/

namespace A034098.P18092900680341691578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034098.P18092900680341691578

namespace A034098

/-- `eq[2, A023961(A000007(n)+n)]` -/
def P18092900680341691578.Spec : Prop :=
  ∀ n, (P18092900680341691578.a n : ℤ) = A034098 (n + 1)

end A034098

/-! ## A034098.P5159899666272200104

`eq[2, A023961(A065033(2*n))]`
-/

namespace A034098.P5159899666272200104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034098.P5159899666272200104

namespace A034098

/-- `eq[2, A023961(A065033(2*n))]` -/
def P5159899666272200104.Spec : Prop :=
  ∀ n, (P5159899666272200104.a n : ℤ) = A034098 (n + 1)

end A034098

/-! ## A034098.P7550567718931292270

`eq[2, A023961(A123108(2*n))]`
-/

namespace A034098.P7550567718931292270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034098.P7550567718931292270

namespace A034098

/-- `eq[2, A023961(A123108(2*n))]` -/
def P7550567718931292270.Spec : Prop :=
  ∀ n, (P7550567718931292270.a n : ℤ) = A034098 (n + 1)

end A034098

/-!
# A034099: Fractional part of square root of a(n) starts with digit 3.

The programs for A034099, the canonical program `A034099.P16522247859076894767` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034099 has offset 1).

The definition of A034099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034099.P16522247859076894767

`A034097(n+1)+∑[A133100(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034099

/-- `A034097(n+1)+∑[A133100(n)]` -/
def P16522247859076894767.Spec : Prop :=
  ∀ n, P16522247859076894767.a n = A034099 (n + 1)

theorem P16522247859076894767.correct : P16522247859076894767.Spec := by
  intro n
  simp only [A034099, Nat.add_sub_cancel]

end A034099

/-! ## A034099.P10434500320559579134

`floor(A034104(n+1)+sqrt(A034097(n+1)))`
-/

namespace A034099.P10434500320559579134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034104 (n + 1) : ℝ) + Real.sqrt (A034097 (n + 1) : ℝ)⌋

end

end A034099.P10434500320559579134

namespace A034099

/-- `floor(A034104(n+1)+sqrt(A034097(n+1)))` -/
def P10434500320559579134.Spec : Prop :=
  ∀ n, P10434500320559579134.a n = A034099 (n + 1)

end A034099

/-! ## A034099.P7874034133612552612

`A000037(A034104(n+1))`
-/

namespace A034099.P7874034133612552612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034104 (n + 1)).toNat

end

end A034099.P7874034133612552612

namespace A034099

/-- `A000037(A034104(n+1))` -/
def P7874034133612552612.Spec : Prop :=
  ∀ n, P7874034133612552612.a n = A034099 (n + 1)

end A034099

/-! ## A034099.P4205574200045973090

`A078358(A034104(n+1)+1)`
-/

namespace A034099.P4205574200045973090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034104 (n + 1) + 1).toNat

end

end A034099.P4205574200045973090

namespace A034099

/-- `A078358(A034104(n+1)+1)` -/
def P4205574200045973090.Spec : Prop :=
  ∀ n, P4205574200045973090.a n = A034099 (n + 1)

end A034099

/-! ## A034099.P15676352074684086539

`eq[3, A023961(n+1)]+1`
-/

namespace A034099.P15676352074684086539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034099.P15676352074684086539

namespace A034099

/-- `eq[3, A023961(n+1)]+1` -/
def P15676352074684086539.Spec : Prop :=
  ∀ n, (P15676352074684086539.a n : ℤ) = A034099 (n + 1)

end A034099

/-! ## A034099.P9941591829863049675

`eq[1, A023961(A028310(n))-2]`
-/

namespace A034099.P9941591829863049675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034099.P9941591829863049675

namespace A034099

/-- `eq[1, A023961(A028310(n))-2]` -/
def P9941591829863049675.Spec : Prop :=
  ∀ n, (P9941591829863049675.a n : ℤ) = A034099 (n + 1)

end A034099

/-! ## A034099.P11056155443303885532

`eq[3, A023961(A060000(n+1))]`
-/

namespace A034099.P11056155443303885532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034099.P11056155443303885532

namespace A034099

/-- `eq[3, A023961(A060000(n+1))]` -/
def P11056155443303885532.Spec : Prop :=
  ∀ n, (P11056155443303885532.a n : ℤ) = A034099 (n + 1)

end A034099

/-! ## A034099.P4122726786451546900

`eq[3, A023961(A233583(n+1))]`
-/

namespace A034099.P4122726786451546900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034099.P4122726786451546900

namespace A034099

/-- `eq[3, A023961(A233583(n+1))]` -/
def P4122726786451546900.Spec : Prop :=
  ∀ n, (P4122726786451546900.a n : ℤ) = A034099 (n + 1)

end A034099

